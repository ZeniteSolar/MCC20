#include "solvers.h"

#include <math.h>
#include <stdio.h>

#define BISECT_VERBOSE 0

static inline void _bisect_iteration(double *x, double xmin, double xmax,
                                     unsigned int *itr) {
  *x = (xmin + xmax) / 2;
  ++(*itr);
  if (BISECT_VERBOSE) printf("  Iteration %3d ... x = %7.9f\n", *itr, *x);
}

int bisect_solver(double *x, const double *params[],
                  double (*fun)(double x, const double *params[]), double xmin,
                  double xmax, double tol, unsigned int maxiter) {
  unsigned int itr = 0;
  double x1 = 0;

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

int regula_falsi_solver(double *x, const double *params[],
                  double (*fun)(double x, const double *params[]), double xmin,
                  double xmax, double tol, unsigned int maxiter) {
    double fx;
    int side = 0;
    double e = 0;

	/* starting values at endpoints of interval */
	double fmin = fun(xmin, params);
	double fmax = fun(xmax, params);

	int itr = 0;
    do {
		*x = ((fmin * xmax) - (fmax * xmin)) / (fmin - fmax);
		if (fabs(xmax - xmin) < e * fabs(xmin + xmax))
            break;
		fx = fun(*x, params);

		if (fx * fmax > 0) {
			/* fx and fmax have same sign, copy r to t */
			xmax = *x; 
            fmax = fx;
			if (side == -1) fmin /= 2;
			side = -1;
		} else if (fmin * fx > 0) {
			/* fx and fmin have same sign, copy r to s */
			xmin = *x; 
            fmin = fx;
			if (side == +1) fmax /= 2;
			side = +1;
		} else {
			/* fx * f_ very small (looks like zero) */
			break;
		} 
	} while (itr++ < maxiter);
    return 0;
}
