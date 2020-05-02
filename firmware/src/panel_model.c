#include "panel_model.h"

double panel_model(double Vpv,const double * params)
{
  double Voc;
  double Isc;
  double G;
  double Ipv;

  Voc = params[4];
  Isc = params[5];
  G = params[6];

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
 
