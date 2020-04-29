#include "control.h"
#include <stdio.h>
#include <math.h>

static double p, D, D_MaximumPower, p_MaximumPower, D_target;
static unsigned char swap_complete;
double mppt(double Vpv, double Ipv)
{
    p = Vpv * Ipv;
    mppt_machine();

    
    printf("p:%f | D:%fi | p_max:%f | D_max:%f\n", p, D, p_MaximumPower, D_MaximumPower); 
    return D;
}

void set_mppt_initializing(void)
{
    printf("initializing");
    swap_complete = 0;
    D = D_MIN;
    D_MaximumPower = 0;
    MPPT_STATE = INIT;
}

void set_mppt_running(void)
{
    printf("running");
    MPPT_STATE = RUNNING;
}

void set_mppt_soft(float target)
{
    D = D_MIN;
    D_target = target;
    printf("soft");
    MPPT_STATE = SOFT;
}

void set_mppt_limit(void)
{
    printf("limiting");
    MPPT_STATE = LIMIT;
}

void mppt_initializing(void)
{
    printf("initializing");
    search_MaximumPoint();

    if (swap_complete) {
        set_mppt_soft(D_MaximumPower);
    }
}

void mppt_running(void) { printf("running"); }

void mppt_soft(void) {
    static float d_step_soft;

    printf("soft \n%f\n",d_step_soft);
    d_step_soft =D_STEP_SOFT * ((D_target-D)/(fabs(D_target-D)));
    
    if(fabs(D_target-D)>D_STEP_SOFT)  
        D += d_step_soft;
    else
        set_mppt_running();

    
}

void mppt_limit(void) { printf("limiting"); }

void search_MaximumPoint(void)
{
    static float d_step_swap = D_STEP_SWAP;
    printf("swap: -->");
    if (p > p_MaximumPower) {
        p_MaximumPower = p;
        D_MaximumPower = D;
    }
    D += d_step_swap;
    if (D >= D_MAX) {
        D = D_MAX;
        d_step_swap = -d_step_swap;
    }
    if (D <= D_MIN) {
        D = D_MIN;
        swap_complete = 1;
        d_step_swap = D_STEP_SWAP;
    }
}

void mppt_machine()
{
    switch (MPPT_STATE) {
    case INIT:
        mppt_initializing();
        break;
    case RUNNING:
        mppt_running();
        break;

    case SOFT:
        mppt_soft();
        break;

    case LIMIT:
        mppt_limit();
        break;
    default:
        printf("erooooooooo!!!");
    }
}
