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

int bisect_solver(double *x, const double *params,
                  double (*fun)(double x, const double *params), double xmin,
                  double xmax, double tol, unsigned int maxiter) {
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
