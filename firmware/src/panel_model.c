#include "panel_model.h"

double panel_model(double Vpv)
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
 
