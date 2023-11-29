/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Xilinx_Project/cassafortefinale/ric_1seq.vhd";



static void work_a_3205709531_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 4697);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t6 = 0;

LAB10:    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3024);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB3:    t2 = (t0 + 2944);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t9 = (t0 + 3024);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB3;

LAB5:    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t1 = t12;
    goto LAB7;

LAB8:    t7 = 0;

LAB11:    if (t7 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t4 = (t2 + t7);
    t8 = (t5 + t7);
    if (*((unsigned char *)t4) != *((unsigned char *)t8))
        goto LAB9;

LAB13:    t7 = (t7 + 1);
    goto LAB11;

}


extern void work_a_3205709531_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3205709531_3212880686_p_0};
	xsi_register_didat("work_a_3205709531_3212880686", "isim/test_cass_finale_isim_beh.exe.sim/work/a_3205709531_3212880686.didat");
	xsi_register_executes(pe);
}
