#ifndef _CONTROL_H
#define _CONTROL_H


#define P_MIN  3.0f
#define P_MAX  200.0f

#define D_MIN  0.01f
#define D_MAX  0.98f

#define D_STEP_SWAP 0.1f
#define D_STEP_SOFT 0.1f
#define D_STEP_MPPT 0.01f
#define D_STEP_LIMIT 0.02f

#define CLK_SWAP 1
#define CLK_SOFT 1
#define CLK_MPPT 10
#define CLK_LIMIT 3

double mppt(double Vpv,double Ipv);
void mppt_machine(void);

void mppt_initializing(void);
void mppt_running(void);
void mppt_soft(void);
void mppt_limit(void);


void swap(void);
void peo(void);
void limit_p(void);

void set_mppt_initializing(void);
void set_mppt_running(void);
void set_mppt_soft(float target);
void set_mppt_limit(void);


volatile unsigned char MPPT_STATE ;
enum{INIT,RUNNING,SOFT,LIMIT};

//void set_MPPT_init(void);
//void set_MPPT_running(void);
//void set_MPPT_soft(void);
//void set_MPPT_limit(void);


#endif
