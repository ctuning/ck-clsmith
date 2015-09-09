// --atomics 51 ---fake_divergence -g 12,82,10 -l 12,1,2
#define int64_t long
#define uint64_t ulong
#define int_least64_t long
#define uint_least64_t ulong
#define int_fast64_t long
#define uint_fast64_t ulong
#define intmax_t long
#define uintmax_t ulong
#define int32_t int
#define uint32_t uint
#define int16_t short
#define uint16_t ushort
#define int8_t char
#define uint8_t uchar

#define INT64_MIN LONG_MIN
#define INT64_MAX LONG_MAX
#define INT32_MIN INT_MIN
#define INT32_MAX INT_MAX
#define INT16_MIN SHRT_MIN
#define INT16_MAX SHRT_MAX
#define INT8_MIN CHAR_MIN
#define INT8_MAX CHAR_MAX
#define UINT64_MIN ULONG_MIN
#define UINT64_MAX ULONG_MAX
#define UINT32_MIN UINT_MIN
#define UINT32_MAX UINT_MAX
#define UINT16_MIN USHRT_MIN
#define UINT16_MAX USHRT_MAX
#define UINT8_MIN UCHAR_MIN
#define UINT8_MAX UCHAR_MAX

#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, Y, Z)

#define VECTOR(X , Y) VECTOR_(X, Y)
#define VECTOR_(X, Y) X##Y

#ifndef NO_GROUP_DIVERGENCE
#define GROUP_DIVERGE(x, y) get_group_id(x)
#else
#define GROUP_DIVERGE(x, y) (y)
#endif

#ifndef NO_FAKE_DIVERGENCE
#define FAKE_DIVERGE(x, y, z) (x - y)
#else
#define FAKE_DIVERGE(x, y, z) (z)
#endif


// Seed: 74

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint64_t  f0;
   int8_t * f1;
   uint32_t  f2;
   uint64_t  f3;
};

union U1 {
   uint32_t  f0;
   int64_t  f1;
   int32_t  f2;
   int8_t * f3;
};

union U2 {
   volatile int64_t  f0;
   int64_t  f1;
   int16_t  f2;
   uint16_t  f3;
   uint16_t  f4;
};

struct S3 {
    uint32_t g_6;
    int8_t g_11;
    int32_t g_28;
    union U2 g_30;
    uint64_t g_49;
    union U1 g_53[5];
    int32_t g_55[7];
    uint16_t g_65;
    union U2 *g_68;
    union U2 ** volatile g_67;
    uint16_t *g_76;
    volatile union U2 g_106;
    int8_t g_117;
    union U2 g_120[1];
    int32_t g_124;
    uint32_t g_127;
    union U0 g_155;
    volatile int64_t g_172;
    volatile int64_t *g_171;
    union U2 ** volatile g_181;
    uint8_t g_199;
    uint8_t g_200;
    volatile union U2 g_201;
    int32_t *g_205[8];
    int32_t ** volatile g_204;
    union U0 *g_212;
    union U0 ** volatile g_211;
    int32_t ** volatile g_215;
    volatile union U2 g_239;
    uint16_t **g_264;
    uint16_t *** volatile g_263;
    int8_t *g_271[2][3];
    int64_t **g_310;
    int64_t ***g_309;
    uint8_t g_328;
    int32_t ** volatile g_330;
    int64_t g_360;
    int32_t ** volatile g_361;
    volatile uint32_t g_473[9];
    union U0 ** volatile g_474;
    union U2 ** volatile g_476;
    int32_t ** volatile g_499;
    int32_t **g_502;
    int32_t *** volatile g_501;
    int64_t g_530[10][10];
    uint16_t g_532;
    int16_t g_560;
    int32_t * volatile g_592;
    int32_t * volatile g_909;
    int32_t * volatile g_910;
    union U2 g_959;
    union U2 g_960[8];
    union U2 g_961;
    volatile uint64_t g_974;
    volatile uint64_t *g_973;
    volatile uint64_t ** volatile g_972[5];
    union U2 g_1018;
    union U2 g_1019;
    union U2 g_1029;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
int16_t  func_1(struct S3 * p_1035);
int32_t * func_7(int8_t  p_8, uint16_t  p_9, struct S3 * p_1035);
uint64_t  func_12(int32_t * p_13, struct S3 * p_1035);
int32_t * func_14(int32_t  p_15, struct S3 * p_1035);
union U1  func_18(int8_t  p_19, uint64_t * p_20, struct S3 * p_1035);
int32_t  func_23(int32_t * p_24, uint8_t  p_25, union U2 * p_26, struct S3 * p_1035);
int32_t * func_31(union U2 * p_32, union U2 * p_33, uint64_t * p_34, struct S3 * p_1035);
uint64_t  func_35(union U2 * p_36, int32_t  p_37, uint64_t  p_38, int64_t  p_39, uint64_t  p_40, struct S3 * p_1035);
union U2 * func_41(union U2 * p_42, uint64_t * p_43, union U2 * p_44, int64_t  p_45, uint32_t  p_46, struct S3 * p_1035);
int16_t  func_69(int32_t  p_70, int32_t  p_71, union U2 * p_72, struct S3 * p_1035);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1035->g_6 p_1035->g_28 p_1035->g_65 p_1035->g_11 p_1035->g_67 p_1035->g_476 p_1035->g_68 p_1035->g_502 p_1035->g_205 p_1035->g_530 p_1035->g_172 p_1035->g_76 p_1035->g_560 p_1035->g_117 p_1035->g_55 p_1035->g_499 p_1035->g_328 p_1035->g_309 p_1035->g_310 p_1035->g_171 p_1035->g_200 p_1035->g_106.f0 p_1035->g_264 p_1035->g_910 p_1035->g_330 p_1035->g_127 p_1035->g_199 p_1035->g_532 p_1035->g_473
 * writes: p_1035->g_6 p_1035->g_11 p_1035->g_30.f3 p_1035->g_28 p_1035->g_65 p_1035->g_55 p_1035->g_68 p_1035->g_120.f2 p_1035->g_117 p_1035->g_205 p_1035->g_532 p_1035->g_328 p_1035->g_200 p_1035->g_30.f1 p_1035->g_127 p_1035->g_560 p_1035->g_1018.f1
 */
int16_t  func_1(struct S3 * p_1035)
{ /* block id: 4 */
    uint32_t l_4[2];
    uint64_t *l_5 = (void*)0;
    int8_t *l_10 = &p_1035->g_11;
    int32_t *l_1031[8] = {&p_1035->g_55[6],&p_1035->g_55[6],&p_1035->g_55[6],&p_1035->g_55[6],&p_1035->g_55[6],&p_1035->g_55[6],&p_1035->g_55[6],&p_1035->g_55[6]};
    union U0 *l_1032 = &p_1035->g_155;
    union U0 **l_1033[1][4] = {{(void*)0,(void*)0,(void*)0,(void*)0}};
    union U0 *l_1034 = (void*)0;
    int i, j;
    for (i = 0; i < 2; i++)
        l_4[i] = 4294967295UL;
    (*p_1035->g_502) = ((p_1035->g_6 = (safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1035->local_1_offset, get_local_id(1), 10), l_4[1]))) , func_7(((*l_10) = l_4[0]), p_1035->g_6, p_1035));
    (*p_1035->g_502) = l_1031[1];
    l_1034 = l_1032;
    return p_1035->g_473[4];
}


/* ------------------------------------------ */
/* 
 * reads : p_1035->g_6 p_1035->g_28 p_1035->g_65 p_1035->g_11 p_1035->g_67 p_1035->g_476 p_1035->g_68 p_1035->g_502 p_1035->g_205 p_1035->g_530 p_1035->g_172 p_1035->g_76 p_1035->g_560 p_1035->g_117 p_1035->g_55 p_1035->g_499 p_1035->g_328 p_1035->g_309 p_1035->g_310 p_1035->g_171 p_1035->g_200 p_1035->g_106.f0 p_1035->g_264 p_1035->g_910 p_1035->g_330 p_1035->g_127 p_1035->g_199 p_1035->g_532
 * writes: p_1035->g_6 p_1035->g_11 p_1035->g_30.f3 p_1035->g_28 p_1035->g_65 p_1035->g_55 p_1035->g_68 p_1035->g_120.f2 p_1035->g_117 p_1035->g_205 p_1035->g_532 p_1035->g_328 p_1035->g_200 p_1035->g_30.f1 p_1035->g_127 p_1035->g_560 p_1035->g_1018.f1
 */
int32_t * func_7(int8_t  p_8, uint16_t  p_9, struct S3 * p_1035)
{ /* block id: 7 */
    int32_t l_16 = 0x28405CEFL;
    uint64_t *l_1016 = &p_1035->g_49;
    union U2 *l_1017[8][6] = {{&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018,&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018},{&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018,&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018},{&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018,&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018},{&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018,&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018},{&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018,&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018},{&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018,&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018},{&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018,&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018},{&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018,&p_1035->g_1018,&p_1035->g_1019,&p_1035->g_1018}};
    int32_t *l_1023[2][3][10] = {{{&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28},{&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28},{&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28}},{{&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28},{&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28},{&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28}}};
    int64_t *l_1024 = &p_1035->g_1018.f1;
    int8_t *l_1025 = &p_1035->g_117;
    int8_t *l_1026[4][3];
    union U2 **l_1027 = &p_1035->g_68;
    union U2 *l_1028 = &p_1035->g_1029;
    union U2 **l_1030 = &l_1017[5][2];
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
            l_1026[i][j] = &p_1035->g_11;
    }
    (*l_1030) = ((*l_1027) = (func_12(func_14(l_16, p_1035), p_1035) , func_41(func_41(((*l_1027) = func_41((*p_1035->g_476), l_1016, l_1017[5][2], ((p_8 = ((*l_1025) = (((*l_1024) = (safe_div_func_int32_t_s_s(p_8, (safe_unary_minus_func_int64_t_s(((void*)0 == l_1023[0][0][8])))))) == 0x12439F670283D751L))) == FAKE_DIVERGE(p_1035->group_1_offset, get_group_id(1), 10)), p_1035->g_199, p_1035)), l_1016, l_1017[5][2], p_1035->g_560, p_9, p_1035), l_1016, l_1028, p_9, p_1035->g_532, p_1035)));
    return l_1023[0][0][8];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_12(int32_t * p_13, struct S3 * p_1035)
{ /* block id: 723 */
    uint8_t l_1015[2][10] = {{253UL,253UL,253UL,253UL,253UL,253UL,253UL,253UL,253UL,253UL},{253UL,253UL,253UL,253UL,253UL,253UL,253UL,253UL,253UL,253UL}};
    int i, j;
    return l_1015[0][7];
}


/* ------------------------------------------ */
/* 
 * reads : p_1035->g_6 p_1035->g_28 p_1035->g_65 p_1035->g_11 p_1035->g_67 p_1035->g_476 p_1035->g_68 p_1035->g_502 p_1035->g_205 p_1035->g_530 p_1035->g_172 p_1035->g_76 p_1035->g_560 p_1035->g_117 p_1035->g_55 p_1035->g_499 p_1035->g_328 p_1035->g_309 p_1035->g_310 p_1035->g_171 p_1035->g_200 p_1035->g_106.f0 p_1035->g_264 p_1035->g_910 p_1035->g_330 p_1035->g_127
 * writes: p_1035->g_6 p_1035->g_11 p_1035->g_30.f3 p_1035->g_28 p_1035->g_65 p_1035->g_55 p_1035->g_68 p_1035->g_120.f2 p_1035->g_117 p_1035->g_205 p_1035->g_532 p_1035->g_328 p_1035->g_200 p_1035->g_30.f1 p_1035->g_127 p_1035->g_560
 */
int32_t * func_14(int32_t  p_15, struct S3 * p_1035)
{ /* block id: 8 */
    int32_t l_17[9][9][2] = {{{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)}},{{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)}},{{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)}},{{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)}},{{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)}},{{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)}},{{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)}},{{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)}},{{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)},{0x4A59E478L,(-6L)}}};
    union U2 *l_958[7][10] = {{&p_1035->g_959,&p_1035->g_959,&p_1035->g_961,(void*)0,(void*)0,(void*)0,&p_1035->g_961,&p_1035->g_959,&p_1035->g_959,&p_1035->g_961},{&p_1035->g_959,&p_1035->g_959,&p_1035->g_961,(void*)0,(void*)0,(void*)0,&p_1035->g_961,&p_1035->g_959,&p_1035->g_959,&p_1035->g_961},{&p_1035->g_959,&p_1035->g_959,&p_1035->g_961,(void*)0,(void*)0,(void*)0,&p_1035->g_961,&p_1035->g_959,&p_1035->g_959,&p_1035->g_961},{&p_1035->g_959,&p_1035->g_959,&p_1035->g_961,(void*)0,(void*)0,(void*)0,&p_1035->g_961,&p_1035->g_959,&p_1035->g_959,&p_1035->g_961},{&p_1035->g_959,&p_1035->g_959,&p_1035->g_961,(void*)0,(void*)0,(void*)0,&p_1035->g_961,&p_1035->g_959,&p_1035->g_959,&p_1035->g_961},{&p_1035->g_959,&p_1035->g_959,&p_1035->g_961,(void*)0,(void*)0,(void*)0,&p_1035->g_961,&p_1035->g_959,&p_1035->g_959,&p_1035->g_961},{&p_1035->g_959,&p_1035->g_959,&p_1035->g_961,(void*)0,(void*)0,(void*)0,&p_1035->g_961,&p_1035->g_959,&p_1035->g_959,&p_1035->g_961}};
    union U1 l_964 = {0x30F69972L};
    uint64_t *l_968 = (void*)0;
    uint64_t **l_967 = &l_968;
    int32_t l_994 = (-1L);
    int32_t *l_1014 = &p_1035->g_55[2];
    int i, j, k;
    for (p_1035->g_6 = 0; (p_1035->g_6 <= 1); p_1035->g_6 += 1)
    { /* block id: 11 */
        int32_t *l_27[8] = {&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28};
        union U2 *l_29 = &p_1035->g_30;
        uint64_t l_873 = 0x03D8F39527860C3AL;
        uint64_t l_995[3];
        int i;
        for (i = 0; i < 3; i++)
            l_995[i] = 1UL;
        for (p_1035->g_11 = 0; (p_1035->g_11 <= 1); p_1035->g_11 += 1)
        { /* block id: 14 */
            uint8_t *l_874 = &p_1035->g_328;
            int32_t *l_920 = &p_1035->g_55[1];
            int64_t *l_957 = &p_1035->g_530[7][2];
            uint64_t *l_962 = &p_1035->g_49;
            l_920 = (func_18(((((*l_874) &= ((safe_sub_func_int32_t_s_s(func_23(l_27[3], p_1035->g_28, l_29, p_1035), (safe_sub_func_int8_t_s_s(((((((2L != 0x9AL) ^ 0x69032ABDABA153EEL) || 0UL) , 0x2BE1L) >= 0xDF4EL) | p_15), 2L)))) & l_873)) >= p_15) && 0UL), &l_873, p_1035) , (*p_1035->g_330));
            (*p_1035->g_502) = &p_15;
        }
        l_995[0]++;
        for (p_1035->g_127 = 0; (p_1035->g_127 <= 1); p_1035->g_127 += 1)
        { /* block id: 715 */
            int8_t *l_1008 = &p_1035->g_117;
            int32_t l_1011 = (-1L);
            l_994 &= ((safe_rshift_func_uint8_t_u_s((+FAKE_DIVERGE(p_1035->local_0_offset, get_local_id(0), 10)), l_17[6][5][0])) >= (safe_mod_func_int8_t_s_s(((void*)0 != &l_964), (safe_sub_func_int16_t_s_s(p_1035->g_6, (((*l_1008) = (FAKE_DIVERGE(p_1035->group_2_offset, get_group_id(2), 10) > (safe_lshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(l_17[0][1][0], 0)), 12)))) && (p_1035->g_530[6][9] == (safe_div_func_int32_t_s_s((l_1011 , (safe_rshift_func_int16_t_s_u(p_15, l_17[8][5][1]))), FAKE_DIVERGE(p_1035->group_1_offset, get_group_id(1), 10))))))))));
            return l_27[3];
        }
    }
    (*p_1035->g_502) = (void*)0;
    return l_1014;
}


/* ------------------------------------------ */
/* 
 * reads : p_1035->g_530 p_1035->g_309 p_1035->g_310 p_1035->g_171 p_1035->g_172 p_1035->g_28 p_1035->g_200 p_1035->g_55 p_1035->g_30.f1 p_1035->g_127 p_1035->g_106.f0 p_1035->g_76 p_1035->g_65 p_1035->g_117 p_1035->g_264 p_1035->g_560 p_1035->g_910 p_1035->g_30.f3 p_1035->g_502
 * writes: p_1035->g_200 p_1035->g_55 p_1035->g_30.f1 p_1035->g_127 p_1035->g_560 p_1035->g_28 p_1035->g_30.f3 p_1035->g_205
 */
union U1  func_18(int8_t  p_19, uint64_t * p_20, struct S3 * p_1035)
{ /* block id: 616 */
    int16_t l_885 = 0x2709L;
    int32_t l_886[1];
    uint8_t *l_887[4] = {&p_1035->g_199,&p_1035->g_199,&p_1035->g_199,&p_1035->g_199};
    uint32_t *l_888 = (void*)0;
    int32_t *l_889 = &p_1035->g_55[2];
    int32_t *l_914 = &p_1035->g_124;
    union U1 l_919 = {0x85644CBAL};
    int i;
    for (i = 0; i < 1; i++)
        l_886[i] = 8L;
    (*l_889) ^= ((((~((((((p_20 == &p_1035->g_530[1][0]) > (safe_div_func_int8_t_s_s((safe_add_func_uint8_t_u_u((p_1035->g_200 &= ((safe_lshift_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((l_886[0] = (((p_19 & p_1035->g_530[1][0]) == ((0xA9L == 0x28L) | l_885)) & ((((void*)0 != (*p_1035->g_309)) || l_885) != 0x5640L))) <= (*p_1035->g_171)), (-1L))), p_1035->g_28)) != FAKE_DIVERGE(p_1035->group_2_offset, get_group_id(2), 10)), 3)) | 1L)), (-1L))), l_885))) ^ GROUP_DIVERGE(2, 1)) , (void*)0) == l_888) , l_885)) >= p_19) , (*p_20)) ^ l_885);
    for (p_1035->g_30.f1 = 0; (p_1035->g_30.f1 == (-22)); --p_1035->g_30.f1)
    { /* block id: 622 */
        uint16_t l_908[6][7][6] = {{{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL}},{{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL}},{{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL}},{{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL}},{{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL}},{{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL},{1UL,0xDDE5L,1UL,1UL,0xDDE5L,1UL}}};
        int i, j, k;
        for (p_1035->g_127 = 0; (p_1035->g_127 != 34); p_1035->g_127 = safe_add_func_int8_t_s_s(p_1035->g_127, 2))
        { /* block id: 625 */
            uint8_t l_900 = 0x0EL;
            int32_t l_905 = (-6L);
            l_905 = (p_19 , ((((((safe_rshift_func_int8_t_s_u(p_19, (0x2ADAE99C9F46EC33L == ((!(safe_rshift_func_uint8_t_u_s((l_900 |= (p_19 == ((p_19 ^ (safe_div_func_uint64_t_u_u((*l_889), p_1035->g_106.f0))) , p_19))), (safe_div_func_int16_t_s_s((safe_rshift_func_int8_t_s_u(l_905, p_1035->g_530[9][8])), (*p_1035->g_76)))))) <= 0x6ACABDFAEC9B3457L)))) , p_1035->g_117) > 0UL) != (*p_1035->g_76)) && (**p_1035->g_264)) <= 1L));
        }
        if (p_19)
            continue;
        for (p_1035->g_560 = 0; (p_1035->g_560 == 14); p_1035->g_560 = safe_add_func_int16_t_s_s(p_1035->g_560, 7))
        { /* block id: 632 */
            (*p_1035->g_910) = ((*l_889) ^= l_908[4][2][3]);
        }
    }
    for (p_1035->g_30.f3 = 0; (p_1035->g_30.f3 != 7); p_1035->g_30.f3++)
    { /* block id: 639 */
        int32_t *l_913 = &p_1035->g_28;
        (*p_1035->g_502) = l_913;
    }
    if ((!((*l_889) < (l_914 != l_914))))
    { /* block id: 642 */
        union U1 l_915 = {0x8E9AEC7DL};
        return l_915;
    }
    else
    { /* block id: 644 */
        int32_t l_918 = 0x3E0BA0EBL;
        (*l_889) |= (safe_mul_func_int16_t_s_s(l_918, (**p_1035->g_264)));
    }
    return l_919;
}


/* ------------------------------------------ */
/* 
 * reads : p_1035->g_30.f3 p_1035->g_65 p_1035->g_11 p_1035->g_67 p_1035->g_476 p_1035->g_68 p_1035->g_502 p_1035->g_205 p_1035->g_530 p_1035->g_172 p_1035->g_76 p_1035->g_560 p_1035->g_117 p_1035->g_55 p_1035->g_28 p_1035->g_499 p_1035->g_532
 * writes: p_1035->g_30.f3 p_1035->g_28 p_1035->g_65 p_1035->g_55 p_1035->g_68 p_1035->g_120.f2 p_1035->g_117 p_1035->g_205 p_1035->g_532
 */
int32_t  func_23(int32_t * p_24, uint8_t  p_25, union U2 * p_26, struct S3 * p_1035)
{ /* block id: 15 */
    union U2 *l_47 = &p_1035->g_30;
    uint64_t *l_48 = &p_1035->g_49;
    int32_t l_50 = (-1L);
    int32_t l_861 = 0x629F26FFL;
    uint64_t l_870[5][3][1] = {{{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L}},{{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L}},{{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L}},{{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L}},{{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L},{0x2AD1B6547B5F6920L}}};
    int i, j, k;
    (*p_1035->g_502) = func_31((func_35(func_41(l_47, l_48, p_26, p_25, l_50, p_1035), (&l_50 == (*p_1035->g_502)), p_1035->g_530[0][6], p_1035->g_530[6][9], p_25, p_1035) , p_26), l_47, l_48, p_1035);
    for (p_1035->g_532 = 23; (p_1035->g_532 == 59); ++p_1035->g_532)
    { /* block id: 609 */
        if ((*p_24))
            break;
    }
    (*p_24) = (safe_add_func_uint16_t_u_u(((l_50 = p_25) , 0xC700L), ((safe_add_func_uint16_t_u_u(((0x0EL | (0x33L != 1L)) | ((+((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1035->group_2_offset, get_group_id(2), 10), 4)) && 18446744073709551614UL)) ^ l_861)), (safe_mod_func_int32_t_s_s(((((safe_add_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(p_25, (safe_add_func_uint64_t_u_u(((((*p_24) < (-6L)) <= FAKE_DIVERGE(p_1035->group_0_offset, get_group_id(0), 10)) && GROUP_DIVERGE(2, 1)), p_25)))), l_861)) < l_870[2][1][0]) <= p_25) , l_870[2][1][0]), 0xE83F5D1AL)))) == p_25)));
    return (*p_24);
}


/* ------------------------------------------ */
/* 
 * reads : p_1035->g_28 p_1035->g_499 p_1035->g_205
 * writes: p_1035->g_28
 */
int32_t * func_31(union U2 * p_32, union U2 * p_33, uint64_t * p_34, struct S3 * p_1035)
{ /* block id: 603 */
    int32_t *l_852 = &p_1035->g_28;
    (*l_852) &= 0x1248AEEAL;
    return (*p_1035->g_499);
}


/* ------------------------------------------ */
/* 
 * reads : p_1035->g_172 p_1035->g_76 p_1035->g_65 p_1035->g_560 p_1035->g_117 p_1035->g_205 p_1035->g_55
 * writes: p_1035->g_120.f2 p_1035->g_65 p_1035->g_117 p_1035->g_55
 */
uint64_t  func_35(union U2 * p_36, int32_t  p_37, uint64_t  p_38, int64_t  p_39, uint64_t  p_40, struct S3 * p_1035)
{ /* block id: 412 */
    int16_t l_674 = 0x203AL;
    int64_t ****l_675 = (void*)0;
    int16_t *l_676 = &p_1035->g_120[0].f2;
    int8_t *l_679 = &p_1035->g_117;
    int32_t *l_680 = &p_1035->g_55[1];
    int32_t l_851 = 0L;
    (*l_680) = (safe_rshift_func_int8_t_s_s((FAKE_DIVERGE(p_1035->global_2_offset, get_global_id(2), 10) , (((((safe_sub_func_uint64_t_u_u(((safe_lshift_func_int16_t_s_u((p_38 ^ (((*l_679) |= (safe_rshift_func_int8_t_s_u(((((safe_div_func_int8_t_s_s(0x1BL, ((l_674 && ((*l_676) = ((void*)0 != l_675))) ^ p_1035->g_172))) , (void*)0) == (void*)0) < ((--(*p_1035->g_76)) > (0x349AL | p_1035->g_560))), l_674))) || 0L)), 1)) || p_37), 0xBAF72E805B2509F7L)) > 255UL) ^ l_674) <= l_674) || l_674)), p_38));
    if ((atomic_inc(&p_1035->g_atomic_input[51 * get_linear_group_id() + 2]) == 7))
    { /* block id: 418 */
        int32_t l_681 = 0x318B4A7CL;
        union U1 l_688 = {5UL};
        int32_t l_689 = 1L;
        int32_t l_690 = 0x390CA3E3L;
        uint32_t l_691[3][6][2] = {{{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL}},{{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL}},{{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL},{0x12211EA6L,4294967290UL}}};
        uint32_t l_692 = 4294967295UL;
        int i, j, k;
        for (l_681 = 0; (l_681 > 19); l_681 = safe_add_func_int64_t_s_s(l_681, 9))
        { /* block id: 421 */
            int32_t l_686[2][8] = {{0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L},{0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L,0x03FC0848L}};
            int32_t *l_685 = &l_686[1][5];
            int32_t **l_684 = &l_685;
            int32_t **l_687 = &l_685;
            int i, j;
            l_687 = l_684;
        }
        if (((((l_688 , (l_689 = 1L)) , FAKE_DIVERGE(p_1035->group_0_offset, get_group_id(0), 10)) , (l_691[1][4][1] = l_690)) , l_692))
        { /* block id: 426 */
            int32_t l_693 = 0x4AD15598L;
            uint8_t l_780[8] = {0x06L,0x06L,0x06L,0x06L,0x06L,0x06L,0x06L,0x06L};
            uint8_t *l_779 = &l_780[0];
            uint8_t **l_778[1][1];
            int32_t *l_781 = &l_693;
            int32_t *l_782 = &l_693;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_778[i][j] = &l_779;
            }
            for (l_693 = 0; (l_693 != (-21)); l_693 = safe_sub_func_uint64_t_u_u(l_693, 3))
            { /* block id: 429 */
                uint32_t l_696 = 0xA5322D5EL;
                uint8_t l_729 = 0xF2L;
                if (l_696)
                { /* block id: 430 */
                    int32_t l_697 = 0x51C58974L;
                    int8_t *l_707 = (void*)0;
                    int8_t **l_706 = &l_707;
                    int8_t **l_708 = &l_707;
                    for (l_697 = 1; (l_697 >= 0); l_697 -= 1)
                    { /* block id: 433 */
                        uint32_t l_698 = 0x4EF0240FL;
                        int8_t l_701 = 0x17L;
                        int64_t l_702 = 0x20B87A11AD3BEC42L;
                        uint8_t l_703 = 0xA5L;
                        l_698++;
                        ++l_703;
                    }
                    l_681 |= 1L;
                    l_708 = (l_706 = (void*)0);
                }
                else
                { /* block id: 440 */
                    uint64_t l_709[4][10] = {{0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L},{0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L},{0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L},{0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L,0UL,0x3855686AED786EC9L,0x3855686AED786EC9L}};
                    int32_t l_711 = 1L;
                    int32_t *l_710 = &l_711;
                    int32_t *l_712 = &l_711;
                    int32_t *l_713 = &l_711;
                    int i, j;
                    l_681 ^= (l_690 ^= l_709[2][2]);
                    l_713 = (l_712 = l_710);
                    if ((l_690 = 0x3A9C94D0L))
                    { /* block id: 446 */
                        int32_t l_714[4] = {(-1L),(-1L),(-1L),(-1L)};
                        int8_t l_715 = (-5L);
                        uint32_t l_716[10][2] = {{4294967295UL,0x472E01EFL},{4294967295UL,0x472E01EFL},{4294967295UL,0x472E01EFL},{4294967295UL,0x472E01EFL},{4294967295UL,0x472E01EFL},{4294967295UL,0x472E01EFL},{4294967295UL,0x472E01EFL},{4294967295UL,0x472E01EFL},{4294967295UL,0x472E01EFL},{4294967295UL,0x472E01EFL}};
                        union U0 l_719 = {0x8D1FA0B3311BCC8AL};
                        uint32_t l_720[6][7][6] = {{{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL}},{{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL}},{{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL}},{{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL}},{{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL}},{{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL},{0x538FBDEBL,0x5F6B836AL,4294967295UL,0UL,0x4C2EC2BAL,1UL}}};
                        uint16_t l_721 = 0UL;
                        uint64_t l_722 = 18446744073709551615UL;
                        int i, j, k;
                        ++l_716[5][0];
                        l_721 = ((FAKE_DIVERGE(p_1035->global_0_offset, get_global_id(0), 10) , (l_719 , l_720[2][6][4])) , 4L);
                        (*l_713) = l_722;
                    }
                    else
                    { /* block id: 450 */
                        union U1 l_723 = {0UL};
                        int32_t l_724[5] = {0x5A8971E9L,0x5A8971E9L,0x5A8971E9L,0x5A8971E9L,0x5A8971E9L};
                        int32_t l_725 = 0x6373CF97L;
                        uint8_t l_726 = 0x14L;
                        int i;
                        l_726 = (l_723 , ((*l_713) = (l_724[3] , l_725)));
                    }
                    for (l_711 = 6; (l_711 >= 0); l_711 -= 1)
                    { /* block id: 456 */
                        uint32_t l_727[3][2][3] = {{{2UL,4294967287UL,2UL},{2UL,4294967287UL,2UL}},{{2UL,4294967287UL,2UL},{2UL,4294967287UL,2UL}},{{2UL,4294967287UL,2UL},{2UL,4294967287UL,2UL}}};
                        int32_t l_728[5];
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                            l_728[i] = (-1L);
                        l_713 = (l_712 = (l_710 = p_1035->g_205[l_711]));
                        l_728[3] = (p_1035->g_55[l_711] , l_727[1][0][0]);
                    }
                }
                --l_729;
            }
            for (l_693 = (-19); (l_693 >= 27); l_693 = safe_add_func_uint32_t_u_u(l_693, 5))
            { /* block id: 467 */
                union U0 l_734[1] = {{0xC18D08AA5C4E460AL}};
                int16_t l_735[9][7][4] = {{{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L}},{{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L}},{{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L}},{{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L}},{{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L}},{{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L}},{{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L}},{{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L}},{{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L},{0x2CA0L,0x26C6L,(-7L),1L}}};
                uint32_t l_736 = 0xCA064400L;
                uint64_t l_737[4][10] = {{0xE6A84846E07B412CL,0x5A7D180060AAAA78L,1UL,0x11DD57049A88CBB2L,1UL,0x5A7D180060AAAA78L,0xE6A84846E07B412CL,1UL,0UL,0UL},{0xE6A84846E07B412CL,0x5A7D180060AAAA78L,1UL,0x11DD57049A88CBB2L,1UL,0x5A7D180060AAAA78L,0xE6A84846E07B412CL,1UL,0UL,0UL},{0xE6A84846E07B412CL,0x5A7D180060AAAA78L,1UL,0x11DD57049A88CBB2L,1UL,0x5A7D180060AAAA78L,0xE6A84846E07B412CL,1UL,0UL,0UL},{0xE6A84846E07B412CL,0x5A7D180060AAAA78L,1UL,0x11DD57049A88CBB2L,1UL,0x5A7D180060AAAA78L,0xE6A84846E07B412CL,1UL,0UL,0UL}};
                uint8_t l_777 = 0x9CL;
                int i, j, k;
                l_736 &= (l_734[0] , l_735[8][2][3]);
                if (l_737[2][5])
                { /* block id: 469 */
                    int32_t l_738[9][5][5] = {{{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L}},{{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L}},{{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L}},{{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L}},{{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L}},{{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L}},{{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L}},{{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L}},{{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L},{0x6F3E1431L,(-1L),0L,(-1L),0x6F3E1431L}}};
                    uint64_t l_746 = 0xFD60D408DE1347C5L;
                    int32_t *l_756[2][6][5] = {{{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]}},{{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]},{&l_738[8][3][0],&l_738[2][3][1],(void*)0,&l_738[2][3][1],&l_738[8][3][0]}}};
                    int32_t *l_757 = &l_738[3][4][3];
                    int i, j, k;
                    for (l_738[3][4][3] = (-17); (l_738[3][4][3] <= (-13)); l_738[3][4][3] = safe_add_func_uint16_t_u_u(l_738[3][4][3], 7))
                    { /* block id: 472 */
                        int32_t l_742[6] = {0x4F26C1DFL,0x4F26C1DFL,0x4F26C1DFL,0x4F26C1DFL,0x4F26C1DFL,0x4F26C1DFL};
                        int32_t *l_741[9][3] = {{&l_742[0],&l_742[0],&l_742[0]},{&l_742[0],&l_742[0],&l_742[0]},{&l_742[0],&l_742[0],&l_742[0]},{&l_742[0],&l_742[0],&l_742[0]},{&l_742[0],&l_742[0],&l_742[0]},{&l_742[0],&l_742[0],&l_742[0]},{&l_742[0],&l_742[0],&l_742[0]},{&l_742[0],&l_742[0],&l_742[0]},{&l_742[0],&l_742[0],&l_742[0]}};
                        int32_t *l_743 = (void*)0;
                        int32_t *l_744 = &l_742[0];
                        int16_t l_745[6][3] = {{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L}};
                        int i, j;
                        l_743 = (l_741[1][1] = (void*)0);
                        l_690 = 0x051F012AL;
                        l_744 = (void*)0;
                        l_690 &= (l_745[1][0] , 0x407EF2A0L);
                    }
                    l_681 |= (l_690 = l_746);
                    for (l_738[3][4][3] = 0; (l_738[3][4][3] > (-1)); l_738[3][4][3] = safe_sub_func_uint32_t_u_u(l_738[3][4][3], 5))
                    { /* block id: 483 */
                        int32_t *l_749[6][6];
                        int32_t *l_750 = (void*)0;
                        int32_t l_752 = (-1L);
                        int32_t *l_751 = &l_752;
                        int32_t *l_753 = &l_752;
                        int32_t *l_754[3];
                        int32_t *l_755 = &l_752;
                        int i, j;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 6; j++)
                                l_749[i][j] = (void*)0;
                        }
                        for (i = 0; i < 3; i++)
                            l_754[i] = &l_752;
                        l_750 = l_749[1][1];
                        l_750 = (l_754[1] = (l_753 = l_751));
                        l_754[2] = l_755;
                    }
                    l_757 = l_756[1][2][3];
                }
                else
                { /* block id: 491 */
                    int32_t l_758[7];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_758[i] = (-1L);
                    for (l_758[6] = (-4); (l_758[6] <= (-16)); --l_758[6])
                    { /* block id: 494 */
                        int16_t l_761[1][2];
                        int64_t l_762 = 0x7CF840D1BC8F7335L;
                        int32_t l_763 = 0x1DA9E0F6L;
                        uint16_t l_764[10] = {0x9EDDL,0x9EDDL,0x9EDDL,0x9EDDL,0x9EDDL,0x9EDDL,0x9EDDL,0x9EDDL,0x9EDDL,0x9EDDL};
                        int32_t *l_767 = (void*)0;
                        int32_t *l_768 = &l_763;
                        union U0 l_770[10] = {{18446744073709551611UL},{18446744073709551615UL},{0x27DA26E7717169ADL},{18446744073709551615UL},{18446744073709551611UL},{18446744073709551611UL},{18446744073709551615UL},{0x27DA26E7717169ADL},{18446744073709551615UL},{18446744073709551611UL}};
                        union U0 *l_769[6][7][1] = {{{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]}},{{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]}},{{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]}},{{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]}},{{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]}},{{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]},{&l_770[0]}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_761[i][j] = 0x3C5EL;
                        }
                        --l_764[4];
                        l_681 = 0x160A3563L;
                        l_768 = (l_767 = (void*)0);
                        l_769[3][2][0] = l_769[3][2][0];
                    }
                    for (l_758[6] = 19; (l_758[6] >= (-19)); l_758[6] = safe_sub_func_int8_t_s_s(l_758[6], 1))
                    { /* block id: 503 */
                        int32_t l_774 = (-1L);
                        int32_t *l_773 = &l_774;
                        int32_t *l_775 = &l_774;
                        uint64_t l_776 = 0x49C27FA85D4A2C0FL;
                        l_775 = l_773;
                        l_681 &= l_776;
                    }
                }
                l_681 = (l_690 &= l_777);
            }
            l_778[0][0] = (void*)0;
            l_782 = l_781;
        }
        else
        { /* block id: 513 */
            int32_t l_783 = 8L;
            for (l_783 = 0; (l_783 <= 17); l_783 = safe_add_func_uint8_t_u_u(l_783, 8))
            { /* block id: 516 */
                int32_t l_786 = 1L;
                for (l_786 = 1; (l_786 >= 0); l_786 -= 1)
                { /* block id: 519 */
                    uint32_t l_787 = 0x4037A3F3L;
                    int16_t l_788[2][3] = {{0x46DCL,0x46DCL,0x46DCL},{0x46DCL,0x46DCL,0x46DCL}};
                    int32_t *l_789 = (void*)0;
                    int32_t l_791 = (-1L);
                    int32_t *l_790[4][10] = {{&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791,&l_791}};
                    int32_t *l_792 = &l_791;
                    int32_t *l_793 = &l_791;
                    int32_t *l_799 = (void*)0;
                    int i, j;
                    l_681 = (l_787 , l_788[1][1]);
                    l_793 = (l_792 = (l_790[3][9] = l_789));
                    for (l_791 = 1; (l_791 >= 0); l_791 -= 1)
                    { /* block id: 526 */
                        int32_t l_795 = 0L;
                        int32_t *l_794 = &l_795;
                        uint8_t l_796[9];
                        int i, j, k;
                        for (i = 0; i < 9; i++)
                            l_796[i] = 1UL;
                        l_793 = (l_691[l_791][(l_791 + 1)][l_791] , l_794);
                        ++l_796[2];
                    }
                    l_799 = (void*)0;
                    for (l_787 = 0; (l_787 <= 9); l_787 += 1)
                    { /* block id: 533 */
                        uint64_t l_800 = 18446744073709551615UL;
                        int16_t l_801 = (-6L);
                        int64_t l_802 = 1L;
                        uint32_t l_803 = 0UL;
                        int32_t *l_804 = (void*)0;
                        int i, j, k;
                        l_800 &= l_691[l_786][(l_786 + 2)][l_786];
                        l_802 = l_801;
                        l_799 = (l_803 , l_804);
                    }
                }
            }
        }
        for (l_691[1][4][1] = 14; (l_691[1][4][1] < 42); l_691[1][4][1] = safe_add_func_uint16_t_u_u(l_691[1][4][1], 7))
        { /* block id: 543 */
            int16_t l_807 = 1L;
            int16_t l_808[6][6][7] = {{{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L}},{{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L}},{{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L}},{{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L}},{{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L}},{{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L},{0x1726L,(-2L),5L,0x4B96L,0x4620L,0x17E0L,0x2B19L}}};
            uint16_t l_809 = 1UL;
            int i, j, k;
            l_809++;
            for (l_809 = 0; (l_809 > 27); l_809++)
            { /* block id: 547 */
                int64_t l_814 = 1L;
                int8_t l_822 = 0x1FL;
                if (l_814)
                { /* block id: 548 */
                    int32_t l_815[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                    int i;
                    for (l_815[0] = 25; (l_815[0] <= 14); l_815[0]--)
                    { /* block id: 551 */
                        int32_t l_819 = 0L;
                        int32_t *l_818 = &l_819;
                        int32_t *l_820 = (void*)0;
                        l_820 = l_818;
                        l_681 |= 0x47154BB4L;
                    }
                    l_681 = 1L;
                    for (l_815[0] = 1; (l_815[0] <= 4); l_815[0] += 1)
                    { /* block id: 558 */
                        l_690 = (-7L);
                        l_681 &= 0x7E38BC44L;
                    }
                    l_690 &= 0x3593BF62L;
                }
                else
                { /* block id: 563 */
                    uint64_t l_821 = 0x9B6E25B260BE0434L;
                    l_690 &= 3L;
                    l_681 ^= l_821;
                    l_681 = 0x600FAB65L;
                }
                if (l_822)
                { /* block id: 568 */
                    l_681 = 1L;
                }
                else
                { /* block id: 570 */
                    int32_t l_823 = 0x4C4CBA85L;
                    for (l_823 = 0; (l_823 <= (-14)); l_823 = safe_sub_func_uint32_t_u_u(l_823, 9))
                    { /* block id: 573 */
                        int64_t l_826 = 0x52F649093321B640L;
                        uint32_t l_827[3];
                        uint32_t l_828 = 0x839B8795L;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_827[i] = 4294967295UL;
                        l_826 = 0x064E62CBL;
                        l_828 |= l_827[1];
                        l_681 |= 0x4C6FD6EAL;
                    }
                    for (l_823 = 0; (l_823 >= (-19)); l_823 = safe_sub_func_int32_t_s_s(l_823, 5))
                    { /* block id: 580 */
                        int8_t l_831[5];
                        int32_t l_832 = 0x3205D7C1L;
                        uint64_t l_833 = 0xE4EFD0CFD8328640L;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_831[i] = 3L;
                        l_833++;
                    }
                    for (l_823 = 25; (l_823 >= 29); l_823++)
                    { /* block id: 585 */
                        int32_t l_839 = (-7L);
                        int32_t *l_838[6];
                        int32_t *l_840 = &l_839;
                        int32_t *l_841[9] = {&l_839,(void*)0,&l_839,&l_839,(void*)0,&l_839,&l_839,(void*)0,&l_839};
                        int64_t l_842 = 0x0FB4474FF3A871B0L;
                        uint64_t l_843 = 18446744073709551615UL;
                        int i;
                        for (i = 0; i < 6; i++)
                            l_838[i] = &l_839;
                        l_841[4] = (l_840 = (l_838[5] = (void*)0));
                        l_843--;
                    }
                }
            }
        }
        for (l_691[1][4][1] = 0; (l_691[1][4][1] > 8); l_691[1][4][1] = safe_add_func_int16_t_s_s(l_691[1][4][1], 4))
        { /* block id: 596 */
            uint32_t l_848 = 0xE9C50C30L;
            l_848--;
        }
        unsigned int result = 0;
        result += l_681;
        result += l_688.f0;
        result += l_688.f1;
        result += l_688.f2;
        result += l_688.f3;
        result += l_689;
        result += l_690;
        int l_691_i0, l_691_i1, l_691_i2;
        for (l_691_i0 = 0; l_691_i0 < 3; l_691_i0++) {
            for (l_691_i1 = 0; l_691_i1 < 6; l_691_i1++) {
                for (l_691_i2 = 0; l_691_i2 < 2; l_691_i2++) {
                    result += l_691[l_691_i0][l_691_i1][l_691_i2];
                }
            }
        }
        result += l_692;
        atomic_add(&p_1035->g_special_values[51 * get_linear_group_id() + 2], result);
    }
    else
    { /* block id: 599 */
        (1 + 1);
    }
    return l_851;
}


/* ------------------------------------------ */
/* 
 * reads : p_1035->g_30.f3 p_1035->g_65 p_1035->g_11 p_1035->g_67 p_1035->g_476 p_1035->g_68
 * writes: p_1035->g_30.f3 p_1035->g_28 p_1035->g_65 p_1035->g_55 p_1035->g_68
 */
union U2 * func_41(union U2 * p_42, uint64_t * p_43, union U2 * p_44, int64_t  p_45, uint32_t  p_46, struct S3 * p_1035)
{ /* block id: 16 */
    int32_t l_58 = 0x23B2FE49L;
    uint32_t l_298 = 1UL;
    int32_t l_335[5][9] = {{0x18F26017L,0x18F26017L,0x4D1BE87EL,0x6900EFB9L,0x7D706192L,0x6900EFB9L,0x4D1BE87EL,0x18F26017L,0x18F26017L},{0x18F26017L,0x18F26017L,0x4D1BE87EL,0x6900EFB9L,0x7D706192L,0x6900EFB9L,0x4D1BE87EL,0x18F26017L,0x18F26017L},{0x18F26017L,0x18F26017L,0x4D1BE87EL,0x6900EFB9L,0x7D706192L,0x6900EFB9L,0x4D1BE87EL,0x18F26017L,0x18F26017L},{0x18F26017L,0x18F26017L,0x4D1BE87EL,0x6900EFB9L,0x7D706192L,0x6900EFB9L,0x4D1BE87EL,0x18F26017L,0x18F26017L},{0x18F26017L,0x18F26017L,0x4D1BE87EL,0x6900EFB9L,0x7D706192L,0x6900EFB9L,0x4D1BE87EL,0x18F26017L,0x18F26017L}};
    uint32_t l_338 = 0x6F1B79A2L;
    int64_t *l_359 = &p_1035->g_360;
    int32_t *l_362 = &l_335[1][6];
    int8_t l_384 = (-1L);
    union U2 *l_517 = &p_1035->g_120[0];
    int8_t **l_518[5][1][2] = {{{&p_1035->g_271[1][2],&p_1035->g_271[1][2]}},{{&p_1035->g_271[1][2],&p_1035->g_271[1][2]}},{{&p_1035->g_271[1][2],&p_1035->g_271[1][2]}},{{&p_1035->g_271[1][2],&p_1035->g_271[1][2]}},{{&p_1035->g_271[1][2],&p_1035->g_271[1][2]}}};
    uint8_t l_661[1];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_661[i] = 0x90L;
    for (p_45 = 0; (p_45 >= 10); p_45 = safe_add_func_uint8_t_u_u(p_45, 9))
    { /* block id: 19 */
        return p_44;
    }
    for (p_1035->g_30.f3 = 0; (p_1035->g_30.f3 <= 4); p_1035->g_30.f3 += 1)
    { /* block id: 24 */
        union U2 *l_66 = &p_1035->g_30;
        int8_t *l_77[3];
        int8_t *l_78 = &p_1035->g_11;
        int32_t l_90 = 0x11537C3EL;
        union U0 l_295 = {0x1B7B4BF7E3C99A5FL};
        int32_t l_336 = 0L;
        int32_t l_337 = (-5L);
        int32_t l_383 = 0x0EF1E55DL;
        int32_t l_385[3];
        int32_t l_386 = 0x7ABA84B9L;
        int32_t l_439[1];
        int64_t *l_455[5][10] = {{&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360},{&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360},{&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360},{&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360},{&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360,&p_1035->g_360}};
        int32_t l_535 = 0x15BB31A8L;
        int16_t *l_559 = &p_1035->g_560;
        int8_t *l_588[10][8] = {{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11},{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11},{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11},{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11},{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11},{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11},{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11},{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11},{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11},{&p_1035->g_11,&p_1035->g_11,(void*)0,&p_1035->g_117,&p_1035->g_11,&p_1035->g_117,(void*)0,&p_1035->g_11}};
        int64_t **l_617 = &l_359;
        int32_t l_660 = 0x75646017L;
        int i, j;
        for (i = 0; i < 3; i++)
            l_77[i] = (void*)0;
        for (i = 0; i < 3; i++)
            l_385[i] = 0x7B496DF1L;
        for (i = 0; i < 1; i++)
            l_439[i] = 5L;
        for (p_1035->g_28 = 4; (p_1035->g_28 >= 0); p_1035->g_28 -= 1)
        { /* block id: 27 */
            uint32_t l_59 = 4294967295UL;
            uint16_t *l_75 = &p_1035->g_30.f3;
            int8_t **l_79[1][6][2] = {{{&l_77[0],&l_78},{&l_77[0],&l_78},{&l_77[0],&l_78},{&l_77[0],&l_78},{&l_77[0],&l_78},{&l_77[0],&l_78}}};
            int64_t l_287[2][1][2] = {{{1L,1L}},{{1L,1L}}};
            int32_t l_325[10][6] = {{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L},{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L},{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L},{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L},{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L},{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L},{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L},{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L},{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L},{0x31CD4FB6L,6L,6L,0x31CD4FB6L,1L,0x3E36F633L}};
            int i, j, k;
            for (p_46 = 1; (p_46 <= 4); p_46 += 1)
            { /* block id: 30 */
                int32_t *l_54 = &p_1035->g_55[2];
                int32_t *l_56 = &p_1035->g_55[2];
                int32_t *l_57[10][7] = {{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]},{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]},{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]},{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]},{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]},{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]},{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]},{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]},{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]},{&p_1035->g_28,&p_1035->g_55[2],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2],&p_1035->g_55[4],&p_1035->g_55[2]}};
                uint16_t *l_64 = &p_1035->g_65;
                int i, j;
                ++l_59;
                (*l_54) = ((safe_rshift_func_uint16_t_u_s(((*l_64) |= 0x33B7L), (p_1035->g_11 > 0x095D34B728601094L))) >= l_58);
                if (l_58)
                    break;
                (*p_1035->g_67) = l_66;
            }
        }
    }
    return (*p_1035->g_476);
}


/* ------------------------------------------ */
/* 
 * reads : p_1035->g_106 p_1035->g_28 p_1035->g_11 p_1035->g_30.f3 p_1035->g_55 p_1035->g_117 p_1035->g_120 p_1035->g_124 p_1035->g_127 p_1035->g_155 p_1035->g_49 p_1035->g_65 p_1035->g_171 p_1035->g_76 p_1035->g_181 p_1035->g_155.f0 p_1035->g_201 p_1035->g_106.f0 p_1035->g_204 p_1035->g_211 p_1035->g_205 p_1035->g_239 p_1035->g_212 p_1035->g_30 p_1035->g_263 p_1035->g_199 p_1035->g_172
 * writes: p_1035->g_55 p_1035->g_117 p_1035->g_124 p_1035->g_127 p_1035->g_65 p_1035->g_68 p_1035->g_199 p_1035->g_200 p_1035->g_205 p_1035->g_212 p_1035->g_49 p_1035->g_264 p_1035->g_271
 */
int16_t  func_69(int32_t  p_70, int32_t  p_71, union U2 * p_72, struct S3 * p_1035)
{ /* block id: 40 */
    int32_t *l_91 = &p_1035->g_55[2];
    int32_t *l_92 = &p_1035->g_55[4];
    int32_t *l_93 = &p_1035->g_55[1];
    int32_t *l_94 = &p_1035->g_55[2];
    int32_t l_95[1][10] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
    int32_t *l_96[7] = {&p_1035->g_28,&l_95[0][2],&p_1035->g_28,&p_1035->g_28,&l_95[0][2],&p_1035->g_28,&p_1035->g_28};
    int32_t l_97 = 0x1A98420AL;
    int64_t l_98 = 0L;
    int32_t l_99 = 0x12EA93CCL;
    int16_t l_100 = 0x4155L;
    uint8_t l_101 = 255UL;
    int8_t *l_110 = &p_1035->g_11;
    int8_t **l_109 = &l_110;
    uint64_t l_115 = 18446744073709551606UL;
    int64_t *l_116[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    union U0 l_125 = {0UL};
    uint32_t l_140 = 4294967288UL;
    union U2 *l_180 = &p_1035->g_30;
    union U1 l_182 = {0xEC0BB685L};
    int32_t l_193 = (-9L);
    int8_t l_282 = 0L;
    int32_t l_283 = 0L;
    uint8_t l_284 = 1UL;
    int i, j;
    l_101++;
    p_1035->g_117 |= ((~(0x01B1F86349BB04AFL && ((safe_div_func_int32_t_s_s((p_1035->g_106 , (safe_sub_func_uint64_t_u_u(((0x118C22C6L && p_71) < (((((*l_109) = (void*)0) == &p_1035->g_11) == 0x0544DF11L) > p_70)), (((safe_mod_func_int32_t_s_s((((*l_92) = (~((safe_div_func_uint32_t_u_u(p_1035->g_28, l_115)) | p_71))) & p_1035->g_11), 1L)) && p_1035->g_30.f3) , (*l_92))))), 0x4B2775F8L)) ^ 0x428BBEDE7E56D926L))) , p_70);
    if (p_71)
    { /* block id: 45 */
        int32_t *l_123 = &p_1035->g_124;
        int8_t *l_126[2][4] = {{&p_1035->g_117,&p_1035->g_117,&p_1035->g_117,&p_1035->g_117},{&p_1035->g_117,&p_1035->g_117,&p_1035->g_117,&p_1035->g_117}};
        int32_t l_128 = 4L;
        uint16_t *l_129[2][6][6] = {{{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3}},{{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3},{&p_1035->g_65,&p_1035->g_30.f3,&p_1035->g_30.f3,&p_1035->g_65,&p_1035->g_65,&p_1035->g_30.f3}}};
        int32_t l_133 = 0x5975CF2BL;
        int32_t l_137[6];
        int32_t *l_153 = &p_1035->g_124;
        union U0 *l_245[6][8] = {{(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,(void*)0},{(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,(void*)0},{(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,(void*)0},{(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,(void*)0},{(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,(void*)0},{(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,&p_1035->g_155,(void*)0,(void*)0}};
        uint8_t l_257 = 7UL;
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_137[i] = 0x662A7540L;
        if (((((p_1035->g_65 = (FAKE_DIVERGE(p_1035->local_2_offset, get_local_id(2), 10) & (0x31F1A4D47DAE833BL != (safe_lshift_func_uint8_t_u_s((((p_1035->g_120[0] , (((*l_92) = (-8L)) | (safe_div_func_int8_t_s_s(p_1035->g_117, ((((*l_123) = p_70) , l_125) , (p_1035->g_127 |= ((p_1035->g_124 < 0xF2ECF321D07C0FF9L) , 3L))))))) ^ 0L) & l_128), 1))))) | (-1L)) == p_1035->g_30.f3) ^ GROUP_DIVERGE(1, 1)))
        { /* block id: 50 */
            return l_128;
        }
        else
        { /* block id: 52 */
            int32_t l_130[5];
            int32_t l_131 = 0L;
            int32_t l_132 = 0x30A3500CL;
            int32_t l_134 = 1L;
            int32_t l_135 = (-1L);
            int32_t l_136 = 0x084F1EB2L;
            int32_t l_138 = (-1L);
            int32_t l_139[3][9] = {{0x75C477D8L,(-9L),(-9L),0x75C477D8L,0x75C477D8L,(-9L),(-9L),0x75C477D8L,0x75C477D8L},{0x75C477D8L,(-9L),(-9L),0x75C477D8L,0x75C477D8L,(-9L),(-9L),0x75C477D8L,0x75C477D8L},{0x75C477D8L,(-9L),(-9L),0x75C477D8L,0x75C477D8L,(-9L),(-9L),0x75C477D8L,0x75C477D8L}};
            int32_t l_197[8][3][5] = {{{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L}},{{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L}},{{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L}},{{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L}},{{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L}},{{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L}},{{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L}},{{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L},{0x58972562L,0x41D7FB45L,0x58972562L,0x58972562L,0x41D7FB45L}}};
            int16_t l_220 = (-6L);
            uint32_t l_221[9] = {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL};
            uint32_t *l_238[6] = {&p_1035->g_127,&l_140,&p_1035->g_127,&p_1035->g_127,&l_140,&p_1035->g_127};
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_130[i] = (-10L);
            --l_140;
            if ((safe_rshift_func_int16_t_s_u(p_70, 10)))
            { /* block id: 54 */
                uint32_t l_159 = 0x36F7E945L;
                int64_t *l_170 = (void*)0;
                int32_t l_179 = (-9L);
                uint32_t *l_194 = (void*)0;
                uint32_t *l_195 = (void*)0;
                uint32_t *l_196 = &l_159;
                int64_t l_198[6][3][9] = {{{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)}},{{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)}},{{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)}},{{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)}},{{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)}},{{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)},{0x072FB50480B25860L,0x5DFA3CC0CA2B1C9CL,0x5EC47EE0E8DCDA37L,(-8L),0x362374D4ACA4B364L,0x3EC59F230F8876A3L,0x559A27EF067A4A60L,(-8L),(-8L)}}};
                int i, j, k;
                for (p_1035->g_127 = (-14); (p_1035->g_127 < 44); p_1035->g_127 = safe_add_func_int64_t_s_s(p_1035->g_127, 5))
                { /* block id: 57 */
                    int32_t *l_151 = &p_1035->g_124;
                    int32_t l_154 = 0L;
                    for (l_136 = 0; (l_136 > (-12)); l_136 = safe_sub_func_uint64_t_u_u(l_136, 6))
                    { /* block id: 60 */
                        int32_t **l_152[8][6] = {{&l_151,&l_123,&l_151,&l_151,&l_151,&l_123},{&l_151,&l_123,&l_151,&l_151,&l_151,&l_123},{&l_151,&l_123,&l_151,&l_151,&l_151,&l_123},{&l_151,&l_123,&l_151,&l_151,&l_151,&l_123},{&l_151,&l_123,&l_151,&l_151,&l_151,&l_123},{&l_151,&l_123,&l_151,&l_151,&l_151,&l_123},{&l_151,&l_123,&l_151,&l_151,&l_151,&l_123},{&l_151,&l_123,&l_151,&l_151,&l_151,&l_123}};
                        int32_t l_158 = 0x5BB632E5L;
                        int i, j;
                        (*l_91) = (((((l_154 &= ((p_1035->g_120[0] , p_1035->g_55[2]) == (l_151 != (l_153 = &p_1035->g_124)))) >= ((p_1035->g_155 , (((p_1035->g_117 &= 7L) , (p_1035->g_49 >= (0x0F9B15E0C5CD07EAL < (safe_mod_func_uint8_t_u_u((l_158 < p_71), p_70))))) <= p_70)) <= p_1035->g_65)) > 0L) , p_70) > l_137[1]);
                        l_179 |= (((++l_159) <= ((((*l_94) = (safe_lshift_func_uint16_t_u_u((l_137[3] = 0x2BE2L), (0xCCC3L ^ (safe_rshift_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s(0x1DL, 7)) , (l_128 = (l_170 == p_1035->g_171))), (*p_1035->g_76))))))) <= (safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((p_1035->g_49 > ((safe_div_func_uint32_t_u_u((p_70 <= 0x199020795C423A20L), p_71)) | 0x6C69L)) & 0UL), 7)), 0xC01DL))) , (*l_94))) && p_71);
                    }
                    (*p_1035->g_181) = l_180;
                }
                p_1035->g_200 = (p_70 >= (0x29920BD1L >= (((l_182 , (p_1035->g_199 = (l_179 = (p_1035->g_117 ^= (safe_sub_func_int64_t_s_s((((safe_sub_func_int8_t_s_s((((*l_196) &= (safe_sub_func_uint32_t_u_u((safe_mod_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((p_1035->g_124 ^ p_1035->g_155.f0), ((*l_92) = l_193))), (*p_1035->g_76))), 0x0CB9ACBEL))) , l_197[1][2][0]), l_130[4])) >= l_198[4][0][3]) , p_71), l_134)))))) , 0L) != l_198[4][0][3])));
            }
            else
            { /* block id: 79 */
                (*l_92) = 0x21D0DC95L;
                (*l_93) = (p_1035->g_201 , (p_70 &= p_1035->g_106.f0));
            }
            for (p_1035->g_124 = 0; (p_1035->g_124 < (-4)); p_1035->g_124--)
            { /* block id: 86 */
                uint32_t l_208[7] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                int32_t l_216 = (-1L);
                int32_t l_217 = 0x192E8C8DL;
                int32_t l_218 = (-1L);
                int32_t l_219[6][8][5] = {{{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L}},{{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L}},{{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L}},{{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L}},{{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L}},{{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L},{1L,6L,0L,0x27E5C26EL,6L}}};
                int64_t **l_225 = &l_116[3];
                int64_t ***l_224 = &l_225;
                int i, j, k;
                (*p_1035->g_204) = &p_1035->g_28;
                for (l_97 = 4; (l_97 < 10); ++l_97)
                { /* block id: 90 */
                    ++l_208[3];
                    (*p_1035->g_211) = &p_1035->g_155;
                    for (l_140 = 0; (l_140 != 16); l_140 = safe_add_func_uint32_t_u_u(l_140, 8))
                    { /* block id: 95 */
                        (*p_1035->g_204) = (*p_1035->g_204);
                    }
                }
                l_221[6]--;
                (*l_224) = &l_116[4];
            }
            l_136 = ((safe_lshift_func_int8_t_s_u((safe_mod_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(p_1035->g_124, p_1035->g_11)), 0xAD65L)), (l_182 , ((safe_lshift_func_int16_t_s_s(((((safe_sub_func_int8_t_s_s((((*l_93) = (((void*)0 != &p_1035->g_124) == p_71)) >= (p_1035->g_239 , (&l_110 != &l_126[1][3]))), GROUP_DIVERGE(2, 1))) || p_71) <= p_71) == p_1035->g_155.f0), 13)) , 255UL)))) > p_70);
        }
        for (l_97 = 0; (l_97 == (-24)); l_97 = safe_sub_func_uint64_t_u_u(l_97, 2))
        { /* block id: 107 */
            uint8_t l_255 = 0x55L;
            int32_t l_258 = 8L;
            for (p_1035->g_127 = 1; (p_1035->g_127 <= 6); p_1035->g_127 += 1)
            { /* block id: 110 */
                uint32_t *l_242 = &l_140;
                int i;
                p_1035->g_55[p_1035->g_127] |= (((**p_1035->g_211) , (*p_1035->g_211)) == (((*l_242)--) , l_245[0][2]));
                for (p_1035->g_49 = 0; (p_1035->g_49 <= 6); p_1035->g_49 += 1)
                { /* block id: 115 */
                    uint8_t l_254 = 250UL;
                    int i;
                    p_1035->g_55[p_1035->g_127] = ((p_1035->g_117 = (((void*)0 != &p_70) >= 8L)) >= ((safe_lshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((safe_sub_func_int32_t_s_s(((*l_180) , (safe_add_func_int32_t_s_s(l_254, ((*l_242) = ((void*)0 == &p_1035->g_171))))), l_255)) | 0L), 0xD01C44CFL)), 14)) , l_137[5]));
                }
            }
            l_258 = ((*l_92) = (safe_unary_minus_func_uint16_t_u(l_257)));
            for (l_255 = 0; (l_255 <= 6); l_255 += 1)
            { /* block id: 125 */
                int32_t **l_259 = &l_92;
                int i;
                p_70 ^= p_1035->g_55[l_255];
                (*l_259) = &l_133;
                for (p_71 = 7; (p_71 > 8); p_71++)
                { /* block id: 130 */
                    uint16_t ***l_262 = (void*)0;
                    (*l_91) ^= 0x185CADD1L;
                    (*p_1035->g_263) = &p_1035->g_76;
                }
            }
        }
    }
    else
    { /* block id: 136 */
        int8_t *l_265[5];
        uint8_t *l_266 = &p_1035->g_199;
        uint16_t ***l_274 = &p_1035->g_264;
        uint16_t ***l_276 = &p_1035->g_264;
        uint16_t ****l_275 = &l_276;
        uint16_t ***l_278 = (void*)0;
        uint16_t ****l_277 = &l_278;
        int32_t l_280 = 0x5E106B63L;
        int32_t l_281[8][6] = {{(-1L),(-1L),(-1L),1L,0x5079DABEL,1L},{(-1L),(-1L),(-1L),1L,0x5079DABEL,1L},{(-1L),(-1L),(-1L),1L,0x5079DABEL,1L},{(-1L),(-1L),(-1L),1L,0x5079DABEL,1L},{(-1L),(-1L),(-1L),1L,0x5079DABEL,1L},{(-1L),(-1L),(-1L),1L,0x5079DABEL,1L},{(-1L),(-1L),(-1L),1L,0x5079DABEL,1L},{(-1L),(-1L),(-1L),1L,0x5079DABEL,1L}};
        int i, j;
        for (i = 0; i < 5; i++)
            l_265[i] = &p_1035->g_117;
        l_281[5][1] |= ((((p_1035->g_117 ^= 0x7AL) && ((*l_266) = (*l_93))) , ((((safe_lshift_func_uint8_t_u_s(((*l_266) ^= (0L < 0x71B6A7E92C8F0828L)), (safe_rshift_func_int8_t_s_u(((((((((((*l_109) != (p_1035->g_271[0][2] = (*l_109))) , (safe_rshift_func_int16_t_s_s((l_274 == ((*l_277) = ((*l_275) = (void*)0))), 3))) == (safe_unary_minus_func_uint8_t_u(l_280))) , l_265[1]) == &l_101) , (*l_91)) > l_280) > 0x6CL) ^ p_1035->g_106.f0), p_1035->g_30.f3)))) , (*p_1035->g_171)) >= l_280) != p_1035->g_28)) || p_1035->g_30.f3);
    }
    --l_284;
    return (*l_94);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j;
    __local volatile uint32_t l_atomic_input[51];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 51; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[51];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 51; i++)
            l_special_values[i] = 0;
    struct S3 c_1036;
    struct S3* p_1035 = &c_1036;
    struct S3 c_1037 = {
        8UL, // p_1035->g_6
        0x7CL, // p_1035->g_11
        0L, // p_1035->g_28
        {1L}, // p_1035->g_30
        0xCCF76E5F3778A82FL, // p_1035->g_49
        {{0x298A7B98L},{0x298A7B98L},{0x298A7B98L},{0x298A7B98L},{0x298A7B98L}}, // p_1035->g_53
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_1035->g_55
        1UL, // p_1035->g_65
        (void*)0, // p_1035->g_68
        &p_1035->g_68, // p_1035->g_67
        &p_1035->g_65, // p_1035->g_76
        {0x6B2DE199855EAA69L}, // p_1035->g_106
        0L, // p_1035->g_117
        {{0x3FA6EFE3CF7B5A89L}}, // p_1035->g_120
        (-9L), // p_1035->g_124
        4294967295UL, // p_1035->g_127
        {1UL}, // p_1035->g_155
        9L, // p_1035->g_172
        &p_1035->g_172, // p_1035->g_171
        &p_1035->g_68, // p_1035->g_181
        1UL, // p_1035->g_199
        0x93L, // p_1035->g_200
        {-1L}, // p_1035->g_201
        {&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28,&p_1035->g_28}, // p_1035->g_205
        &p_1035->g_205[1], // p_1035->g_204
        &p_1035->g_155, // p_1035->g_212
        &p_1035->g_212, // p_1035->g_211
        (void*)0, // p_1035->g_215
        {0x39A41F4893DD36EDL}, // p_1035->g_239
        &p_1035->g_76, // p_1035->g_264
        &p_1035->g_264, // p_1035->g_263
        {{(void*)0,&p_1035->g_117,(void*)0},{(void*)0,&p_1035->g_117,(void*)0}}, // p_1035->g_271
        (void*)0, // p_1035->g_310
        &p_1035->g_310, // p_1035->g_309
        4UL, // p_1035->g_328
        &p_1035->g_205[6], // p_1035->g_330
        (-1L), // p_1035->g_360
        &p_1035->g_205[1], // p_1035->g_361
        {4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL}, // p_1035->g_473
        &p_1035->g_212, // p_1035->g_474
        &p_1035->g_68, // p_1035->g_476
        &p_1035->g_205[1], // p_1035->g_499
        &p_1035->g_205[1], // p_1035->g_502
        &p_1035->g_502, // p_1035->g_501
        {{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L},{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L},{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L},{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L},{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L},{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L},{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L},{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L},{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L},{0x59CDE55330FD06CAL,3L,0x625666F4AAEE7734L,0x59CDE55330FD06CAL,(-1L),0x625666F4AAEE7734L,0x625666F4AAEE7734L,(-1L),0x59CDE55330FD06CAL,0x625666F4AAEE7734L}}, // p_1035->g_530
        1UL, // p_1035->g_532
        0L, // p_1035->g_560
        &p_1035->g_28, // p_1035->g_592
        (void*)0, // p_1035->g_909
        &p_1035->g_28, // p_1035->g_910
        {0x78908034D4542564L}, // p_1035->g_959
        {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}}, // p_1035->g_960
        {0x4A15B5FB9961D5A7L}, // p_1035->g_961
        18446744073709551615UL, // p_1035->g_974
        &p_1035->g_974, // p_1035->g_973
        {&p_1035->g_973,&p_1035->g_973,&p_1035->g_973,&p_1035->g_973,&p_1035->g_973}, // p_1035->g_972
        {9L}, // p_1035->g_1018
        {0x294E1206B13476F3L}, // p_1035->g_1019
        {0x75206023CA7A5F69L}, // p_1035->g_1029
        sequence_input[get_global_id(0)], // p_1035->global_0_offset
        sequence_input[get_global_id(1)], // p_1035->global_1_offset
        sequence_input[get_global_id(2)], // p_1035->global_2_offset
        sequence_input[get_local_id(0)], // p_1035->local_0_offset
        sequence_input[get_local_id(1)], // p_1035->local_1_offset
        sequence_input[get_local_id(2)], // p_1035->local_2_offset
        sequence_input[get_group_id(0)], // p_1035->group_0_offset
        sequence_input[get_group_id(1)], // p_1035->group_1_offset
        sequence_input[get_group_id(2)], // p_1035->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1036 = c_1037;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1035);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1035->g_6, "p_1035->g_6", print_hash_value);
    transparent_crc(p_1035->g_11, "p_1035->g_11", print_hash_value);
    transparent_crc(p_1035->g_28, "p_1035->g_28", print_hash_value);
    transparent_crc(p_1035->g_49, "p_1035->g_49", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1035->g_53[i].f0, "p_1035->g_53[i].f0", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1035->g_55[i], "p_1035->g_55[i]", print_hash_value);

    }
    transparent_crc(p_1035->g_65, "p_1035->g_65", print_hash_value);
    transparent_crc(p_1035->g_106.f0, "p_1035->g_106.f0", print_hash_value);
    transparent_crc(p_1035->g_117, "p_1035->g_117", print_hash_value);
    transparent_crc(p_1035->g_124, "p_1035->g_124", print_hash_value);
    transparent_crc(p_1035->g_127, "p_1035->g_127", print_hash_value);
    transparent_crc(p_1035->g_155.f0, "p_1035->g_155.f0", print_hash_value);
    transparent_crc(p_1035->g_172, "p_1035->g_172", print_hash_value);
    transparent_crc(p_1035->g_199, "p_1035->g_199", print_hash_value);
    transparent_crc(p_1035->g_200, "p_1035->g_200", print_hash_value);
    transparent_crc(p_1035->g_201.f0, "p_1035->g_201.f0", print_hash_value);
    transparent_crc(p_1035->g_239.f0, "p_1035->g_239.f0", print_hash_value);
    transparent_crc(p_1035->g_328, "p_1035->g_328", print_hash_value);
    transparent_crc(p_1035->g_360, "p_1035->g_360", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1035->g_473[i], "p_1035->g_473[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1035->g_530[i][j], "p_1035->g_530[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1035->g_532, "p_1035->g_532", print_hash_value);
    transparent_crc(p_1035->g_560, "p_1035->g_560", print_hash_value);
    transparent_crc(p_1035->g_959.f0, "p_1035->g_959.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1035->g_960[i].f0, "p_1035->g_960[i].f0", print_hash_value);

    }
    transparent_crc(p_1035->g_961.f0, "p_1035->g_961.f0", print_hash_value);
    transparent_crc(p_1035->g_974, "p_1035->g_974", print_hash_value);
    transparent_crc(p_1035->g_1018.f1, "p_1035->g_1018.f1", print_hash_value);
    transparent_crc(p_1035->g_1019.f0, "p_1035->g_1019.f0", print_hash_value);
    transparent_crc(p_1035->g_1029.f0, "p_1035->g_1029.f0", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 51; i++)
            transparent_crc(p_1035->g_special_values[i + 51 * get_linear_group_id()], "p_1035->g_special_values[i + 51 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 51; i++)
            transparent_crc(p_1035->l_special_values[i], "p_1035->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
