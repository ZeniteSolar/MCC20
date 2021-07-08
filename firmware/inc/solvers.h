#ifndef _SOLVERS_H
#define _SOLVERS_H

int bisect_solver(double *x, const double *params[],
                  double (*fun)(double x, const double *params[]), double xmin,
                  double xmax, double tol, unsigned int maxiter);

int regula_falsi_solver(double *x, const double *params[],
                  double (*fun)(double x, const double *params[]), double xmin,
                  double xmax, double tol, unsigned int maxiter);

#endif /* ifndef _SOLVERS_H */
