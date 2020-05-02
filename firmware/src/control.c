#include "control.h"
#include <stdio.h>
#include <math.h>

static double p, D, D_MaximumPower, p_MaximumPower, D_target;
static unsigned char swap_complete;
double mppt(double Vpv, double Ipv)
{
    p = Vpv * Ipv;
    mppt_machine();

    if(D>D_MAX) D = D_MAX;
    if(D<D_MIN) D = D_MIN;
    return D;
}

void set_mppt_initializing(void)
{
    p_MaximumPower = 0;
    D_MaximumPower = 0;
    swap_complete = 0;
    D = D_MIN;
    D_MaximumPower = 0;
    MPPT_STATE = INIT;
}

void set_mppt_running(void)
{
    MPPT_STATE = RUNNING;
}

void set_mppt_soft(double target)
{
    D_target = target;
    MPPT_STATE = SOFT;
}

void set_mppt_limit(void)
{
    MPPT_STATE = LIMIT;
}
/* ########################################
 * INIT initializing
   ########################################
 */
void mppt_initializing(void)
{
    static unsigned int clk_swap;
    if(++clk_swap>CLK_SWAP){
    clk_swap = 0;
    swap();
    }

    if (swap_complete) {
        set_mppt_soft(D_MaximumPower);
    }
}

void swap(void)
{
    static float d_step_swap = D_STEP_SWAP;
    if (p > p_MaximumPower) {
        p_MaximumPower = p;
        D_MaximumPower = D;
    }
    D += d_step_swap;
    if (D >= D_MAX) {
        D = D_MAX;
        swap_complete = 1;
    }
}

/* ########################################
 * END initializing
   ########################################
 */

/* ########################################
 * INIT soft
   ########################################
 */

void mppt_soft(void) {
    static double d_step_soft;
    static unsigned int clk_soft;

    d_step_soft =D_STEP_SOFT * ((D_target-D)/(fabs(D_target-D)));
    
    if(fabs(D_target-D)>D_STEP_SOFT){  
        if(++clk_soft>CLK_SOFT){
            clk_soft = 0;
            D += d_step_soft;
        }
    }
    else
        set_mppt_running();

    
}
/* ########################################
 * END soft
   ########################################
 */


/* ########################################
  INIT running
   ########################################
 */
void mppt_running(void) {
    static unsigned int peo_clk;
    if(++peo_clk >= CLK_MPPT){
        peo_clk = 0;
        peo();
    }

    if(p<P_MIN){
        set_mppt_initializing();
    }
    if(p>P_MAX){
        set_mppt_limit();
    }


}

void peo(void)
{
    static double p_;
    static double d_step_mppt = D_STEP_MPPT;
    if(p<p_) d_step_mppt = -d_step_mppt;
    D += d_step_mppt;
    p_ = p;
}


/* ########################################
 * END running
   ########################################
 */

void mppt_limit(void) {
    static unsigned int clk_limit;
    if(p<P_MAX){
        set_mppt_running();
    }
    else{
        if(++clk_limit>CLK_LIMIT){
            clk_limit = 0;
            limit_p();
        }
    }
}

void limit_p(void)
{
    static double p_ = 300;
    static double d_step_limit = D_STEP_LIMIT;

    if(p>p_) d_step_limit = -d_step_limit;
        D += d_step_limit;    
    p_=p;
}


void mppt_machine(void)
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
