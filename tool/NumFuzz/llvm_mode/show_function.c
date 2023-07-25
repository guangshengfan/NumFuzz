#include "../config.h"
#include "../debug.h"
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <math.h>
#include <float.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/shm.h>
#include <unistd.h>
#include <string.h>



const uint64_t DBL_SIGNMASK = 0x8000000000000000uLL;
const uint64_t DBL_EXPOMASK = 0x7FF0000000000000uLL;
const uint64_t DBL_FRACMASK = 0x000FFFFFFFFFFFFFuLL;

const uint64_t DBL_POSINF = 0x7FF0000000000000uLL;
const uint64_t DBL_NEGINF = 0xFFF0000000000000uLL;
const uint64_t DBL_NAN    = 0x7FFFFFFFFFFFFFFFuLL;

const uint32_t FLT_SIGNMASK = 0x80000000;
const uint32_t FLT_EXPOMASK = 0x7F800000;
const uint32_t FLT_FRACMASK = 0x007FFFFF;

const uint32_t FLT_POSINF = 0x7F800000;
const uint32_t FLT_NEGINF = 0xFF800000;
const uint32_t FLT_NAN    = 0x7FFFFFFF;

typedef struct Node
{
    char label[64];
    double errorBits;
    struct Node *next;
}DNode;

typedef struct dataNode
{   
    char label[64];
    double errorBits;
    int id;
}DataNode;


DataNode dist_data[NUM];

double Errorbits[NUM];


int count;
// int countArray[COUNT];


void __attribute__((constructor)) traceBegin(void) {

    // init_data = (DNode *)malloc(sizeof(DNode));
    // init_data->label = "";
	// init_data->errorBits = 65.0;
    // init_data->next = NULL;
    
    count = 0;

    for (int i=0; i<NUM; i++)
    {
        // dist_data[i].label = "";
        strcpy(dist_data[i].label, "");
        dist_data[i].errorBits = 65.0;
        dist_data[i].id = 0;
        Errorbits[i] = 65.0;
    }

    // printf ("Before count value is %d\n", count);
}


void __attribute__((destructor)) traceEnd(void)
{

    // for (int i=0; i<200; i++)
    //     printf("Errorbits[%d] is %lf\n", i, Errorbits[i]);
    // for (int i=0; i<count; i++)
    //     printf("*************\nErrorbits[%d] is %lf\n", countArray[i], Errorbits[countArray[i]]);
    // printf("\n");
    // printf("After count value is %d\n", count);


    

    unsigned char *Err_str = getenv(ERR_ENV_VAR);

    if (Err_str)
    {
        unsigned int shm_Err_id = atoi(Err_str);

        // double *Share_ErrBits;
        DNode *Share_ErrBits;

        Share_ErrBits = shmat(shm_Err_id, NULL, 0);

        if (Share_ErrBits == (void *)-1) _exit(1);

        for (int i=0; i<count; i++) {
            int lable_num = dist_data[i].id;
            char *lable_name = dist_data[i].label;

            if (strcmp(Share_ErrBits[lable_num].label, "") == 0) {  //第一次更新
                // Share_ErrBits[lable_num].label = lable_name;
                strcpy(Share_ErrBits[lable_num].label, lable_name);
                Share_ErrBits[lable_num].errorBits = dist_data[i].errorBits;
            }
            else {
                if (Share_ErrBits[lable_num].next == NULL) {
                    if (strcmp(Share_ErrBits[lable_num].label, lable_name) == 0) {
                        if (Share_ErrBits[lable_num].errorBits > dist_data[i].errorBits) {
                            Share_ErrBits[lable_num].errorBits = dist_data[i].errorBits;
                        }
                    }
                    else {  //  出现新节点
                        int shm_tmp_id;
                        shm_tmp_id = shmget(IPC_PRIVATE, sizeof(DNode), IPC_CREAT | IPC_EXCL | 0600);

                        if (shm_tmp_id < 0) PFATAL("shmget() failed");

                        Share_ErrBits[lable_num].next = shmat(shm_tmp_id, NULL, 0);

                        if (!Share_ErrBits[lable_num].next) PFATAL("shmat() failed");

                        // Share_ErrBits[lable_num].next->label = lable_name;
                        strcpy(Share_ErrBits[lable_num].next->label, lable_name);
                        Share_ErrBits[lable_num].next->errorBits = dist_data[i].errorBits;
                        Share_ErrBits[lable_num].next->next = NULL;
                    }
                }
                else {
                    DNode * iter;
                    int flag = 0;
                    int flag_count = 1;
                    iter = Share_ErrBits[lable_num].next;

                    if (strcmp(Share_ErrBits[lable_num].label, lable_name) == 0) {
                        if (Share_ErrBits[lable_num].errorBits > dist_data[i].errorBits) {
                            Share_ErrBits[lable_num].errorBits = dist_data[i].errorBits;
                        }
                        break;
                    }

                    while (iter != NULL) {
                        flag_count++;
                        iter = iter->next;
                    }

                    iter = Share_ErrBits[lable_num].next;

                    for (int j=0; j<flag_count-1; j++) {
                        if (strcmp(iter->label, lable_name) == 0) {
                            if (iter->errorBits > dist_data[i].errorBits) {
                                iter->errorBits = dist_data[i].errorBits;
                            }
                            flag = 1;
                            break;
                        }
                        if (j < flag_count-2) {
                            iter = iter->next;
                        }
                    }

                    if (flag) break;

                    int shm_tmp_id;
                    shm_tmp_id = shmget(IPC_PRIVATE, sizeof(DNode), IPC_CREAT | IPC_EXCL | 0600);

                    if (shm_tmp_id < 0) PFATAL("shmget() failed");

                    iter->next = shmat(shm_tmp_id, NULL, 0);

                    if (!iter->next) PFATAL("shmat() failed");

                    // iter->next->label = lable_name;
                    strcpy(iter->next->label, lable_name);
                    iter->next->errorBits = dist_data[i].errorBits;
                    iter->next->next = NULL;


                    // while (iter != NULL) {
                    //     if (strcmp(iter->label, lable_name) == 0) {
                    //         if (iter->errorBits > dist_data[i].errorBits) {
                    //             iter->errorBits = dist_data[i].errorBits;
                    //         }
                    //         break;
                    //     }
                    // }
                }
            }

        }   // end for

        // for (int i=0; i<NUM; i++)
        // {
        //     if (Share_ErrBits[i] > Errorbits[i])
        //         Share_ErrBits[i] = Errorbits[i];
        // }

    }

}


void FloatFuz_error(const char* reason, const char* filename, int line)
{
    const char* label = "ERROR";
    // printf ("[!] %s:%d %s: %s\n", filename, line, label, reason);
    SAYF(cRED "[!] " cCYA "%s:%d %s: %s\n", filename, line, label, reason);
}


void _show_Float (float fnum)
{
    float abs1 = fabs(fnum);
    if (abs1 > FLT_MAX)
    {
        // printf("Overflow!\n");
        FloatFuz_error("Overflow!", __FILE__, __LINE__);
        abort();
    }
    if (0 < abs1 &&abs1 < FLT_MIN)
    {
        // printf("Underflow!\n");
        FloatFuz_error("Underflow!", __FILE__, __LINE__);
        abort();
    }
}

void _show_Double (double dnum, const char* filename, int line)
{
    double abs1 = fabs(dnum);
    if (abs1 > DBL_MAX)
    {
        // printf("Overflow!\n");
        FloatFuz_error("Overflow!", filename, line);
        abort();
    }
    if (0 < abs1 &&abs1 < DBL_MIN)
    {
        // printf("Underflow!\n");
        FloatFuz_error("Underflow!", filename, line);
        abort();
    }
}

void _show_FloatDiv (float fnum1, float fnum2)
{
    if (fnum2 == 0)
    {
        if (fnum1 == 0)
            // printf("Invalid!\n");
            FloatFuz_error("Invalid!", __FILE__, __LINE__);
        else
            // printf("DivZero!\n");
            FloatFuz_error("Divzero!", __FILE__, __LINE__);
        abort();
    }
    float abs1 = fabs(fnum1);
    float abs2 = fabs(fnum2);
    if (abs1 > abs2 * FLT_MAX)
    {
        // printf("Overflow!\n");
        FloatFuz_error("Overflow!", __FILE__, __LINE__);
        abort();
    }
    if (0 < abs1 && abs1 < abs2 * FLT_MIN)
    {
        // printf("Underflow!\n");
        FloatFuz_error("Underflow!", __FILE__, __LINE__);
        abort();
    }
}

void _show_DoubleDiv (double fnum1, double fnum2, const char* filename, int line)
{
    if (fnum2 == 0)
    {
        if (fnum1 == 0)
            // printf("Invalid!\n");
            FloatFuz_error("Invalid!", filename, line);
        else
            // printf("DivZero!\n");
            FloatFuz_error("Divzero!", filename, line);
        abort();
    }
    double abs1 = fabs(fnum1);
    double abs2 = fabs(fnum2);
    if (abs1 > abs2 * DBL_MAX)
    {
        // printf("Overflow!\n");
        FloatFuz_error("Overflow!", filename, line);
        abort();
    }
    if (0 < abs1 && abs1 < abs2 * DBL_MIN)
    {
        // printf("Underflow!\n");
        FloatFuz_error("Underflow!", filename, line);
        abort();
    }
}

void _show_Sqrt (double dnum, const char* filename, int line) {

    if (dnum < 0) {

        FloatFuz_error("SQRT Invalid!", filename, line);
        abort();
    }

}

void _show_Log (double dnum, const char* filename, int line) {

    if (dnum < 0) {

        FloatFuz_error("LOG Invalid!", filename, line);
        abort();

    }

    if (dnum == 0) {

        FloatFuz_error("LOG Divzero!", filename, line);
        abort();

    }

}

void _show_Exp (double dnum, const char* filename, int line) {

    if (dnum > log(DBL_MAX)) {

        FloatFuz_error("EXP Overflow!", filename, line);
        abort();

    }

    if (dnum < log(DBL_MIN)) {

        FloatFuz_error("EXP Underflow!", filename, line);
        abort();

    }

}

void _show_Pow (double base, double exp, const char* filename, int line) {

    if (base == 0 && exp <= 0) {

        FloatFuz_error("POW Invalid!", filename, line);
        abort();

    }

}

double i64ToDouble(uint64_t i) {
    return *(double*)(&i);
}

uint64_t doubleToI64(double d) {
    return *(uint64_t*)(&d);
}

float i32ToFloat(uint32_t i) {
    return *(float*)(&i);
}

uint32_t floatToI32(float f) {
    return *(uint32_t*)(&f);
}

uint64_t doubleDist(double d1, double d2) {
    uint64_t dist, bits1, bits2;
    bits1 = doubleToI64(d1) & (DBL_EXPOMASK | DBL_FRACMASK);
    bits2 = doubleToI64(d2) & (DBL_EXPOMASK | DBL_FRACMASK);
    if ((d1 > 0 && d2 < 0) || (d1 < 0 && d2 > 0)) {
        dist = bits1 + bits2;
    }
    else {
        if (bits1 > bits2)
            dist = bits1 - bits2;
        else
            dist = bits2 - bits1;
    }
    return dist;
}

uint32_t floatDist(float f1, float f2) {
    uint32_t dist, bits1, bits2;
    bits1 = floatToI32(f1) & (FLT_EXPOMASK | FLT_FRACMASK);
    bits2 = floatToI32(f2) & (FLT_EXPOMASK | FLT_FRACMASK);
    if ((f1 > 0 && f2 < 0) || (f1 < 0 && f2 > 0)) {
        dist = bits1 + bits2;
    }
    else {
        if (bits1 > bits2)
            dist = bits1 - bits2;
        else
            dist = bits2 - bits1;
    }
    return dist;
}


void DoubleErrBits(int id, char * lablename, double value)
{
    uint64_t fpnum;
    double abs, d_fpnum, fpErr;
    // DNode *tmp_data;
    // tmp_data = (DNode *)malloc(sizeof(DNode));

    abs = fabs(value);
    fpnum = doubleDist(abs, DBL_MAX);
    d_fpnum = (double)fpnum;

    fpErr = log(d_fpnum) / log(2.0);

    Errorbits[id] = fpErr;

    // dist_data[count].label = lablename;
    strcpy(dist_data[count].label, lablename);
    dist_data[count].errorBits = fpErr;
    dist_data[count].id = id;
    count++;

    // tmp_data->label = lablename;
    // tmp_data->errorBits = fpErr;
    // tmp_data->next = NULL;
    // dist_data[id] = tmp_data;

    // countArray[count] = id;
    // count++;

    // printf("lablename is %s %d\n", lablename, id);

}

void DoubleDivErrBits(int id, char * lablename, double value)
{
    uint64_t fpnum;
    double zero, abs, d_fpnum, fpErr;
    // DNode *tmp_data;
    // tmp_data = (DNode *)malloc(sizeof(DNode));

    zero = 0;
    abs = fabs(value);
    fpnum = doubleDist(abs, zero);
    d_fpnum = (double)fpnum;

    fpErr = log(d_fpnum) / log(2.0);

    Errorbits[id] = fpErr;

    // dist_data[count].label = lablename;
    strcpy(dist_data[count].label, lablename);
    dist_data[count].errorBits = fpErr;
    dist_data[count].id = id;
    count++;

    // tmp_data->label = lablename;
    // tmp_data->errorBits = fpErr;
    // tmp_data->next = NULL;
    // dist_data[id] = tmp_data;
    
    // countArray[count] = id;
    // count++;


    // printf("div lablename is %s %d\n", lablename, id);

}



