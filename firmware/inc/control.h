#ifndef _CONTROL_H
#define _CONTROL_H

#define MIN_D  0.01f

#define D_STEP_SWAP 0.01f

volatile float p,D,D_MaximumPower,p_MaximumPower;
volatile unsigned char swap_complete;

void mppt_machine(void);

void mppt_initializing(void);
void mppt_running(void);
void mppt_soft(void);
void mppt_limit(void);


void search_MaximumPoint(void);

void set_mppt_initializing(void);
void set_mppt_running(void);
void set_mppt_soft(void);
void set_mppt_limit(void);


volatile unsigned char MPPT_STATE ;
enum{INIT,RUNNING,SOFT,LIMIT};

//void set_MPPT_init(void);
//void set_MPPT_running(void);
//void set_MPPT_soft(void);
//void set_MPPT_limit(void);


#endif
