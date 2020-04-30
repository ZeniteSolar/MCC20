#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "main.h"
#include "control.h"
#include "solvers.h"
#include "panel_model.h"


static inline double fun_circuit(double x, const double *params)
{
  double Vpv, Ipv, Ro;

  Ro = params[0];
  Ipv = panel_model(x);
  Vpv = x;

  double F = Ipv * Ro - Vpv;

  return F;
}


int main(void)
{
  // Simulation runtime configuration
  const double end_time = 7e-3;
  const double delta_time = 1.0e-5;
  double time = 0;
  int ret = 0;

  // Bisect solver configuration
  double xmin = 0;
  double xmax = 1e3;
  double tol = 1e-6;
  unsigned int maxiter = 100;
  
  // Circuit configuration
  double Ro, Vpv, Ipv ,D ,M;
  double Rl = 5;
  const double *params[] = {&Ro, &Ipv};
  
  set_mppt_initializing();

  printf("|-------------------------------------------------------------------|\n");
  printf("| %-9s| %-7s| %-7s| %-7s| %-7s| %-7s| %-7s| %-4s|\n", 
      "time", "Ro", "Ipv", "Vpv", "Vpv/Ipv", "Ppv","D","MPPT_S");
  printf("`----------------------------------------------------------------------´\n");
  do {
    // CIRCUIT SIMULATION
    ret |= bisect_solver(&Vpv, *params, fun_circuit, xmin, xmax, tol, maxiter);
    Ipv = panel_model(Vpv);

    if (ret != 0) break; // not converged

    // REPORT SIMULATION
    // Note: maybe it needs a clock divider to run in a different frequency
    // other than f=1/delta_time.
    printf("|%- 10.6f|%- 8.3f|%- 8.3f|%- 8.3f|%- 8.3f|%- 8.3f|%- 8.3f|%-4d|\n", 
            time, Ro, Ipv, Vpv, Vpv / Ipv, Vpv * Ipv ,D ,MPPT_STATE);

    // CIRCUIT PERTURBATION
    // Note: maybe it needs a clock divider to run in a different frequency
    // other than f=1/delta_time.
    //Ro += 0.01;  // lOAD PERTURBATION
    D = mppt(Vpv, Ipv); // mppt perturbation
    M = D/(1.0-D);
    Ro = Rl/(M*M);
    if(time >= 0.002){
        Rl = 100;
    }
    time += delta_time;
  } while (time < end_time);
  printf("|------------------------------------------------------------------------|\n");
  printf("| %-9s| %-7s| %-7s| %-7s| %-7s| %-7s| %-7s| %-4s|\n", 
      "time", "Ro", "Ipv", "Vpv", "Vpv/Ipv", "Ppv","D","MPPT_S");
  printf("`------------------------------------------------------------------------´\n");

  return ret;
}
