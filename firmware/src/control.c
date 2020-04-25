#include <stdio.h>
#include "control.h"


void set_mppt_initializing(void)
{
    printf("initializing");
    D=MIN_D
    MPPT_STATE = INIT;
}

void set_mppt_running(void)
{
    printf("running");
    MPPT_STATE = RUNNING;
}

void set_mppt_soft(void)
{
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

}

void mppt_running(void)
{
    printf("running");

}

void mppt_soft(void)
{
    printf("soft");

}

void mppt_limit(void)
{
    printf("limiting");

}


void search_MaximumPoint(void)
{
    if(p>p_MaximumPower){
        p_MaximumPower = p;
        D_maximumPower = D;

    }



}

void mppt_machine()
{
    switch(MPPT_STATE)
    {
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

