#include "stdlib.h"
#include <stdio.h>

#include "control.h"
#include "fake_painel.h"
#include "main.h"

#define INITIAL_ITERATION 0
#define FINAL_ITERATION 500
#define R_LOAD 1
#define VO_PAINEL_MAX 40

static float p,D;

int main(void)
{
    static int i;
    static int D_fake_adc;
    static double vo_painel, io_painel, pi_mppt, M;

    set_mppt_initializing();
    for (i = INITIAL_ITERATION; i < FINAL_ITERATION; i++) {
        D=mppt(vo_painel,io_painel);

        M = (D / (1.0 - D));
        vo_painel = converter(M, io_painel);

        if (vo_painel > VO_PAINEL_MAX)
            vo_painel = VO_PAINEL_MAX;
        D_fake_adc = vo_painel * 10;
        io_painel = current_painel[D_fake_adc];
        p = vo_painel * io_painel;
        //p = pi_mppt;

    }
}

double converter(double M, double io_painel)
{
    static double io_converter, vo_converter, vo_painel;
    io_converter = io_painel / M;
    vo_converter = io_converter * R_LOAD;
    vo_painel = vo_converter / M;
    if (vo_painel > VO_PAINEL_MAX)
        vo_painel = VO_PAINEL_MAX;
    printf("\nvo_p:%f | io_p:%f | vo_c:%f | io_c %f\n", vo_painel, io_painel, vo_converter, io_converter);

    return vo_painel;
}
