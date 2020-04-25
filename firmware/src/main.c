#include <stdio.h>
#include "stdlib.h"

#include "control.h"
#include "fake_adc.h"

#define INITIAL_ITERATION 0
#define FINAL_ITERATION 255


int main(void)
{
static int i;
static int D_fake_adc;

    MPPT_STATE = INIT;
    for(i=INITIAL_ITERATION;i<FINAL_ITERATION;i++)
    {
    mppt_machine();

    D_fake_adc = D*160;
    p=power_dt[D_fake_adc];
    printf("p:%f|D:%f\n",p,D);
    }


}





