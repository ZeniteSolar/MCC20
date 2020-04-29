#ifndef _CONTROL_H
#define _CONTROL_H

#define D_MIN  0.01f
#define D_MAX  0.98f

#define D_STEP_SWAP 0.01f
#define D_STEP_SOFT 0.05f

double mppt(double Vpv,double Ipv);
void mppt_machine(void);

void mppt_initializing(void);
void mppt_running(void);
void mppt_soft(void);
void mppt_limit(void);


void search_MaximumPoint(void);
void peo(void);

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
