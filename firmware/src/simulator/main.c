#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#define BISECT_VERBOSE 0

static inline double panel_model(double Vpv)
{
  const double Voc = 40;
  const double Isc = 8;
  const double G = 1000;
  double Ipv;

  if (Vpv >= Voc)
    Ipv = 0;
  else {
    Ipv = 0.5 * Isc * (G / 1000.0) *
          (1.0 + ((Vpv - Voc + 1.0) / (Vpv - Voc - 1.0)));
    if (Ipv < 0)
      Ipv = 0;
  }

  return Ipv;
}

static inline double fun_circuit(double x, const double *params)
{
  double Vpv, Ipv, Ro;

  Ro = params[0];
  Ipv = panel_model(x);
  Vpv = x;

  double F = Ipv * Ro - Vpv;

  return F;
}

static inline void _bisect_iteration(double *x, double xmin, double xmax,
                                     unsigned int *itr)
{
  *x = (xmin + xmax) / 2;
  ++(*itr);
  if (BISECT_VERBOSE)
    printf("  Iteration %3d ... x = %7.9f\n", *itr, *x);
}

static int bisect_solver(double *x, const double *params,
                         double (*fun)(double x, const double *params),
                         double xmin, double xmax, double tol,
                         unsigned int maxiter)
{
  unsigned int itr = 0;
  double x1;

  _bisect_iteration(x, xmin, xmax, &itr);
  do {
    if (fun(xmin, params) * fun(*x, params) < 0)
      xmax = *x;
    else
      xmin = *x;

    _bisect_iteration(&x1, xmin, xmax, &itr);

    if (fabs(x1 - *x) < tol) {
      if (BISECT_VERBOSE)
        printf("After %d iterations, root = %6.4f\n", itr, x1);
      return 0;
    }

    *x = x1;
  } while (itr < maxiter);

  if (BISECT_VERBOSE)
    printf("The solution does not converge or iterations are not sufficient");
  return -1;
}

int main(void)
{
  // Simulation runtime configuration
  const double end_time = 1e-3;
  const double delta_time = 1.0e-5;
  double time = 0;
  int ret = 0;

  // Bisect solver configuration
  double xmin = 0;
  double xmax = 1e3;
  double tol = 1e-6;
  unsigned int maxiter = 100;
  
  // Circuit configuration
  double Ro, Vpv, Ipv;
  const double *params[] = {&Ro, &Ipv};
                                         
  printf(".-------------------------------------------------------.\n");
  printf("| %-9s| %-7s| %-7s| %-7s| %-7s| %-7s|\n", 
      "time", "Ro", "Ipv", "Vpv", "Vpv/Ipv", "Ppv");
  printf("|-------------------------------------------------------|\n");
  do {
    // CIRCUIT SIMULATION
    ret |= bisect_solver(&Vpv, *params, fun_circuit, xmin, xmax, tol, maxiter);
    Ipv = panel_model(Vpv);

    if (ret != 0) break; // not converged

    // REPORT SIMULATION
    // Note: maybe it needs a clock divider to run in a different frequency
    // other than f=1/delta_time.
    printf("|%- 10.6f|%- 8.3f|%- 8.3f|%- 8.3f|%- 8.3f|%- 8.3f|\n", 
            time, Ro, Ipv, Vpv, Vpv / Ipv, Vpv * Ipv);

    // CIRCUIT PERTURBATION
    // Note: maybe it needs a clock divider to run in a different frequency
    // other than f=1/delta_time.
    Ro += 1.0;  // Load perturbation
    //Ro *= mppt(Vpv, Ipv); // mppt perturbation

    time += delta_time;
  } while (time < end_time);
  printf("|-------------------------------------------------------|\n");
  printf("| %-9s| %-7s| %-7s| %-7s| %-7s| %-7s|\n", 
      "time", "Ro", "Ipv", "Vpv", "Vpv/Ipv", "Ppv");
  printf("`-------------------------------------------------------´\n");

  return ret;
}
