// ---atomic_reductions ---fake_divergence -g 48,78,2 -l 6,13,2
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


// Seed: 98

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_3;
    int32_t g_4[10];
    int32_t g_5;
    int32_t * volatile g_6;
    volatile int32_t g_13;
    int32_t g_14;
    uint16_t g_40;
    int32_t * volatile g_73;
    int32_t g_75;
    uint8_t g_100;
    int64_t g_101[8];
    uint16_t *g_107;
    uint16_t *g_109;
    int32_t *g_112;
    int32_t ** volatile g_111;
    int32_t **g_117;
    volatile int8_t g_163[9];
    int32_t g_166;
    int32_t * volatile g_176[2][6];
    int32_t * volatile g_177;
    uint32_t g_197;
    int16_t g_205;
    int32_t g_209[4];
    uint32_t g_212;
    int64_t *g_235;
    int64_t **g_234;
    int64_t *** volatile g_233;
    int32_t * volatile g_275;
    int32_t g_279;
    uint64_t g_281;
    uint64_t g_292[7];
    int8_t g_297;
    int32_t g_312;
    int32_t g_313;
    uint8_t g_342[10];
    volatile uint8_t g_358;
    volatile uint8_t * volatile g_357[10][2];
    volatile uint8_t * volatile * volatile g_356;
    volatile uint8_t * volatile * volatile * volatile g_359[8][2];
    int32_t *g_399;
    int32_t ** volatile g_398[8];
    int8_t g_427;
    int32_t g_477[8][8];
    int32_t g_522;
    int32_t **g_545;
    int32_t ***g_544;
    int32_t ****g_543;
    volatile int32_t g_672;
    volatile int32_t g_689;
    int16_t *g_787;
    uint32_t g_847;
    int8_t *g_932;
    uint32_t g_1016;
    uint32_t g_1073;
    uint32_t v_collective;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
int64_t  func_1(struct S0 * p_1092);
int32_t  func_9(uint64_t  p_10, struct S0 * p_1092);
int32_t * func_15(uint32_t  p_16, struct S0 * p_1092);
int32_t  func_17(uint16_t  p_18, int32_t * p_19, int32_t  p_20, uint64_t  p_21, struct S0 * p_1092);
int32_t * func_23(uint16_t  p_24, int32_t * p_25, uint32_t  p_26, int32_t * p_27, int32_t * p_28, struct S0 * p_1092);
int32_t  func_29(int32_t * p_30, int64_t  p_31, struct S0 * p_1092);
int16_t  func_42(int32_t * p_43, uint16_t * p_44, struct S0 * p_1092);
int8_t  func_54(uint8_t  p_55, int32_t * p_56, struct S0 * p_1092);
uint8_t  func_57(uint32_t  p_58, int64_t  p_59, uint16_t * p_60, int32_t * p_61, struct S0 * p_1092);
int32_t * func_65(int32_t  p_66, int64_t  p_67, struct S0 * p_1092);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1092->g_4 p_1092->g_5 p_1092->g_6 p_1092->g_14 p_1092->g_112 p_1092->g_543 p_1092->g_544 p_1092->g_545 p_1092->g_399
 * writes: p_1092->g_4 p_1092->g_5 p_1092->g_14 p_1092->g_279
 */
int64_t  func_1(struct S0 * p_1092)
{ /* block id: 4 */
    uint64_t l_2[6] = {1UL,1UL,1UL,1UL,1UL,1UL};
    int i;
    for (p_1092->g_4[5] = 5; (p_1092->g_4[5] >= 0); p_1092->g_4[5] -= 1)
    { /* block id: 7 */
        for (p_1092->g_5 = 0; (p_1092->g_5 <= 5); p_1092->g_5 += 1)
        { /* block id: 10 */
            int i;
            if (l_2[p_1092->g_4[5]])
                break;
        }
    }
lbl_1091:
    (*p_1092->g_6) = l_2[1];
    for (p_1092->g_5 = 0; (p_1092->g_5 > 10); p_1092->g_5 = safe_add_func_uint8_t_u_u(p_1092->g_5, 7))
    { /* block id: 17 */
        int32_t *l_11 = &p_1092->g_5;
        (****p_1092->g_543) = func_9((l_11 != ((*l_11) , l_11)), p_1092);
    }
    if (p_1092->g_5)
        goto lbl_1091;
    return p_1092->g_4[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_1092->g_14 p_1092->g_112
 * writes: p_1092->g_14
 */
int32_t  func_9(uint64_t  p_10, struct S0 * p_1092)
{ /* block id: 18 */
    int32_t *l_12[2][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t *l_1048 = &p_1092->g_14;
    uint32_t l_1066 = 0x6E81C9E4L;
    int64_t l_1070 = 0x2C6E6075364EF55EL;
    uint16_t l_1087 = 0x871DL;
    int i, j;
    atomic_or(&p_1092->l_atomic_reduction[0], (l_12[1][1] != &p_1092->g_3) + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1092->v_collective += p_1092->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    for (p_10 = 0; (p_10 <= 1); p_10 += 1)
    { /* block id: 22 */
        int32_t *l_1049 = (void*)0;
        int32_t l_1069[6] = {0x4F4B57EBL,8L,0x4F4B57EBL,0x4F4B57EBL,8L,0x4F4B57EBL};
        uint16_t **l_1076[10][9] = {{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107},{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107},{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107},{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107},{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107},{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107},{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107},{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107},{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107},{&p_1092->g_107,&p_1092->g_107,(void*)0,&p_1092->g_107,&p_1092->g_109,&p_1092->g_109,&p_1092->g_107,(void*)0,&p_1092->g_107}};
        int16_t l_1078 = 0x51FBL;
        int i, j;
        for (p_1092->g_14 = 0; (p_1092->g_14 <= 1); p_1092->g_14 += 1)
        { /* block id: 25 */
            uint32_t *l_1071 = &p_1092->g_197;
            uint32_t *l_1072[8][8] = {{&p_1092->g_1073,&p_1092->g_1073,(void*)0,(void*)0,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073},{&p_1092->g_1073,&p_1092->g_1073,(void*)0,(void*)0,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073},{&p_1092->g_1073,&p_1092->g_1073,(void*)0,(void*)0,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073},{&p_1092->g_1073,&p_1092->g_1073,(void*)0,(void*)0,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073},{&p_1092->g_1073,&p_1092->g_1073,(void*)0,(void*)0,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073},{&p_1092->g_1073,&p_1092->g_1073,(void*)0,(void*)0,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073},{&p_1092->g_1073,&p_1092->g_1073,(void*)0,(void*)0,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073},{&p_1092->g_1073,&p_1092->g_1073,(void*)0,(void*)0,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073,&p_1092->g_1073}};
            int64_t *l_1074 = &l_1070;
            int32_t l_1082 = 1L;
            int32_t l_1083 = 0x69404361L;
            int32_t l_1084 = 0x441E3493L;
            int32_t l_1085[9][7] = {{8L,0x10602EC4L,8L,8L,0x10602EC4L,8L,8L},{8L,0x10602EC4L,8L,8L,0x10602EC4L,8L,8L},{8L,0x10602EC4L,8L,8L,0x10602EC4L,8L,8L},{8L,0x10602EC4L,8L,8L,0x10602EC4L,8L,8L},{8L,0x10602EC4L,8L,8L,0x10602EC4L,8L,8L},{8L,0x10602EC4L,8L,8L,0x10602EC4L,8L,8L},{8L,0x10602EC4L,8L,8L,0x10602EC4L,8L,8L},{8L,0x10602EC4L,8L,8L,0x10602EC4L,8L,8L},{8L,0x10602EC4L,8L,8L,0x10602EC4L,8L,8L}};
            int32_t *l_1090 = (void*)0;
            int i, j;
            (1 + 1);
        }
    }
    return (*p_1092->g_112);
}


/* ------------------------------------------ */
/* 
 * reads : p_1092->g_544 p_1092->g_545 p_1092->g_399
 * writes:
 */
int32_t * func_15(uint32_t  p_16, struct S0 * p_1092)
{ /* block id: 26 */
    int64_t l_38 = 0x6C7E7C0CE695EF2BL;
    int32_t l_41 = 0x6270BB1DL;
    int32_t *l_402 = &p_1092->g_5;
    int32_t *l_1021 = (void*)0;
    for (p_16 = 2; (p_16 <= 9); p_16 += 1)
    { /* block id: 29 */
        int32_t *l_22 = &p_1092->g_14;
        uint16_t *l_39[7];
        uint16_t **l_45 = &l_39[0];
        int32_t **l_1019 = &p_1092->g_399;
        int32_t **l_1020[10][3][8] = {{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}},{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}},{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}},{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}},{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}},{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}},{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}},{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}},{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}},{{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22},{&l_402,&p_1092->g_112,&l_402,&p_1092->g_399,(void*)0,&l_402,(void*)0,&l_22}}};
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_39[i] = &p_1092->g_40;
        (1 + 1);
    }
    return (**p_1092->g_544);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_17(uint16_t  p_18, int32_t * p_19, int32_t  p_20, uint64_t  p_21, struct S0 * p_1092)
{ /* block id: 461 */
    int16_t l_1022 = 0x02D8L;
    int32_t *l_1023 = &p_1092->g_4[3];
    int32_t *l_1024 = &p_1092->g_209[0];
    int32_t *l_1025 = &p_1092->g_279;
    int32_t l_1026 = (-1L);
    int32_t *l_1027 = (void*)0;
    int32_t l_1028 = 0L;
    int32_t *l_1029 = (void*)0;
    int32_t *l_1030 = (void*)0;
    int32_t *l_1031 = &l_1028;
    int32_t *l_1032 = &p_1092->g_522;
    int32_t *l_1033 = &l_1026;
    int32_t *l_1034 = &p_1092->g_4[5];
    int32_t *l_1035 = &p_1092->g_209[0];
    int32_t *l_1036 = &p_1092->g_522;
    int32_t *l_1037[3][2];
    uint32_t l_1038 = 4294967287UL;
    uint8_t l_1041[7][7][5] = {{{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL}},{{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL}},{{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL}},{{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL}},{{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL}},{{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL}},{{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL},{250UL,250UL,250UL,250UL,250UL}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
            l_1037[i][j] = &p_1092->g_477[6][2];
    }
    --l_1038;
    return l_1041[2][0][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1092->g_209 p_1092->g_297 p_1092->g_399 p_1092->g_75 p_1092->g_5 p_1092->g_235 p_1092->g_101 p_1092->g_292 p_1092->g_100 p_1092->g_312 p_1092->g_177 p_1092->g_109 p_1092->g_40 p_1092->g_6 p_1092->g_205 p_1092->g_197 p_1092->g_279 p_1092->g_117 p_1092->g_281 p_1092->g_163 p_1092->g_522 p_1092->g_4 p_1092->g_342 p_1092->g_275 p_1092->g_212 p_1092->g_545 p_1092->g_544 p_1092->g_358 p_1092->g_689 p_1092->g_313 p_1092->g_543 p_1092->g_477 p_1092->g_427 p_1092->g_787 p_1092->g_13 p_1092->g_672 p_1092->g_932 p_1092->g_847 p_1092->g_1016
 * writes: p_1092->g_279 p_1092->g_109 p_1092->g_212 p_1092->g_477 p_1092->g_100 p_1092->g_312 p_1092->g_427 p_1092->g_40 p_1092->g_112 p_1092->g_281 p_1092->g_522 p_1092->g_117 p_1092->g_543 p_1092->g_342 p_1092->g_297 p_1092->g_205 p_1092->g_399 p_1092->g_101 p_1092->g_292 p_1092->g_847 p_1092->g_932 p_1092->g_4 p_1092->g_1016
 */
int32_t * func_23(uint16_t  p_24, int32_t * p_25, uint32_t  p_26, int32_t * p_27, int32_t * p_28, struct S0 * p_1092)
{ /* block id: 221 */
    int32_t *l_409 = (void*)0;
    int32_t l_414 = 0x39393C2DL;
    int32_t l_415 = (-1L);
    int8_t *l_424 = &p_1092->g_297;
    int8_t *l_425 = (void*)0;
    int8_t *l_426[3][5];
    int32_t **l_428[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_429 = 255UL;
    uint8_t *l_451 = &p_1092->g_100;
    uint8_t **l_450[8][2][6] = {{{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451},{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451}},{{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451},{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451}},{{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451},{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451}},{{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451},{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451}},{{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451},{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451}},{{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451},{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451}},{{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451},{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451}},{{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451},{(void*)0,&l_451,(void*)0,&l_451,&l_451,&l_451}}};
    int64_t **l_530 = &p_1092->g_235;
    int16_t *l_600 = &p_1092->g_205;
    int32_t l_628 = 0L;
    uint32_t l_668 = 0xEEBEE58FL;
    int64_t l_758 = (-10L);
    uint64_t l_792 = 0xCFB5E5A144A0A09CL;
    uint16_t l_850 = 65528UL;
    int32_t ****l_894 = &p_1092->g_544;
    int32_t l_952 = 0L;
    int8_t l_955 = 0x0CL;
    int64_t l_966 = 1L;
    uint16_t **l_1003 = (void*)0;
    int64_t l_1014 = (-6L);
    int32_t *l_1017 = &l_414;
    int32_t *l_1018 = &p_1092->g_75;
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
            l_426[i][j] = &p_1092->g_427;
    }
    if ((((safe_lshift_func_uint8_t_u_s((safe_rshift_func_uint16_t_u_u(1UL, (((p_28 = (p_27 = &l_415)) != (void*)0) , p_24))), 4)) , p_1092->g_209[0]) , 0x05DBD966L))
    { /* block id: 227 */
        int64_t l_442[7][2] = {{0x053F6E468AC50558L,9L},{0x053F6E468AC50558L,9L},{0x053F6E468AC50558L,9L},{0x053F6E468AC50558L,9L},{0x053F6E468AC50558L,9L},{0x053F6E468AC50558L,9L},{0x053F6E468AC50558L,9L}};
        uint16_t l_449 = 65533UL;
        uint8_t **l_452 = &l_451;
        int64_t **l_454[5][8][6] = {{{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0}},{{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0}},{{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0}},{{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0}},{{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0},{&p_1092->g_235,&p_1092->g_235,&p_1092->g_235,(void*)0,&p_1092->g_235,(void*)0}}};
        uint16_t *l_459[5] = {&p_1092->g_40,&p_1092->g_40,&p_1092->g_40,&p_1092->g_40,&p_1092->g_40};
        int32_t l_462 = 0x3FED35E9L;
        int32_t *l_512 = (void*)0;
        int8_t *l_513 = &p_1092->g_297;
        int32_t ***l_542 = &l_428[3];
        int32_t ****l_541 = &l_542;
        uint64_t *l_572 = &p_1092->g_292[6];
        int32_t l_602 = 0x3D4958A0L;
        int32_t *l_629 = (void*)0;
        int32_t **l_645 = &l_409;
        int32_t l_671 = 0x6C927003L;
        int32_t l_673 = (-1L);
        int32_t l_676 = 0x0F20FDC6L;
        int32_t l_677 = 0x7C6A4F7DL;
        int32_t l_679 = 1L;
        int32_t l_680 = 3L;
        int32_t l_684[9] = {0x7DB722B0L,0x7DB722B0L,0x7DB722B0L,0x7DB722B0L,0x7DB722B0L,0x7DB722B0L,0x7DB722B0L,0x7DB722B0L,0x7DB722B0L};
        uint64_t l_691 = 0x7FD3A2EBC5B40AE2L;
        uint32_t *l_862 = (void*)0;
        int32_t *l_869[9];
        int32_t l_872 = 0L;
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_869[i] = &p_1092->g_312;
        if ((l_429 , (safe_rshift_func_uint8_t_u_s(((((safe_add_func_int8_t_s_s(0L, (safe_rshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_u((((((safe_sub_func_uint32_t_u_u(1UL, (safe_lshift_func_int16_t_s_s(((!0x00L) , ((~((((((l_428[3] == l_428[1]) & GROUP_DIVERGE(0, 1)) != l_442[1][0]) , (safe_mod_func_uint16_t_u_u(((FAKE_DIVERGE(p_1092->global_2_offset, get_global_id(2), 10) && (((safe_sub_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s(l_449, 0)), 0x467A9C4DL)) && FAKE_DIVERGE(p_1092->group_2_offset, get_group_id(2), 10)) & FAKE_DIVERGE(p_1092->local_1_offset, get_local_id(1), 10))) == (-9L)), p_24))) , l_450[0][0][4]) != l_452)) , p_1092->g_297)), p_26)))) && 5L) & l_442[1][0]) , (void*)0) == (void*)0), 5)) , p_26), 11)))) , &p_28) != l_428[2]) , 1UL), l_449))))
        { /* block id: 228 */
            int64_t **l_453 = &p_1092->g_235;
            int64_t ***l_455[1];
            int32_t *l_458 = &p_1092->g_75;
            uint16_t **l_460 = &p_1092->g_109;
            int32_t ***l_478 = (void*)0;
            int32_t l_487 = 8L;
            int32_t l_674 = 1L;
            int32_t l_675 = (-7L);
            int32_t l_678 = (-1L);
            int32_t l_681 = 9L;
            int32_t l_682 = (-1L);
            int32_t l_683 = 0x68C4D219L;
            int32_t l_685 = 0x258609FFL;
            int32_t l_686 = 0L;
            int32_t l_687 = 0L;
            int32_t l_688 = 0x79D9FB16L;
            int32_t l_690 = 1L;
            int i;
            for (i = 0; i < 1; i++)
                l_455[i] = &l_454[1][2][4];
            if (((FAKE_DIVERGE(p_1092->global_0_offset, get_global_id(0), 10) || (((*p_1092->g_399) = (l_453 == (l_454[1][2][4] = l_454[1][2][4]))) >= (((~((*p_27) = (*p_28))) > p_24) != (safe_rshift_func_int8_t_s_s(1L, ((l_458 = p_25) != p_28)))))) >= (l_459[2] != ((*l_460) = &p_1092->g_40))))
            { /* block id: 234 */
                uint32_t *l_476[7][10] = {{&p_1092->g_212,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,&p_1092->g_212,(void*)0},{&p_1092->g_212,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,&p_1092->g_212,(void*)0},{&p_1092->g_212,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,&p_1092->g_212,(void*)0},{&p_1092->g_212,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,&p_1092->g_212,(void*)0},{&p_1092->g_212,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,&p_1092->g_212,(void*)0},{&p_1092->g_212,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,&p_1092->g_212,(void*)0},{&p_1092->g_212,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,(void*)0,&p_1092->g_212,&p_1092->g_212,(void*)0}};
                int32_t l_485[9][8][2] = {{{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL}},{{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL}},{{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL}},{{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL}},{{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL}},{{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL}},{{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL}},{{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL}},{{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL},{0x6D02F62EL,0x45DF3F8FL}}};
                uint16_t **l_494 = &p_1092->g_107;
                int64_t **l_531 = (void*)0;
                int64_t **l_532 = &p_1092->g_235;
                int32_t ****l_539 = &l_478;
                int64_t l_574 = 0L;
                uint64_t l_627 = 0xE8F36E4110CB70B4L;
                int i, j, k;
                (*p_1092->g_399) = (safe_unary_minus_func_uint32_t_u(((((*l_458) < 4294967286UL) >= ((l_462 = l_442[2][1]) & ((((FAKE_DIVERGE(p_1092->global_2_offset, get_global_id(2), 10) && (safe_mod_func_uint64_t_u_u(p_26, (*p_1092->g_235)))) | ((safe_rshift_func_int8_t_s_u((p_1092->g_75 || (safe_div_func_int8_t_s_s(p_1092->g_297, ((**l_452) &= ((safe_add_func_int32_t_s_s(((safe_mod_func_uint32_t_u_u((p_1092->g_477[0][5] = (safe_unary_minus_func_uint32_t_u((p_1092->g_212 = (safe_add_func_uint64_t_u_u(p_26, (*p_1092->g_235))))))), p_1092->g_292[6])) & (*p_25)), p_1092->g_101[7])) , p_24))))), 3)) < 0x05L)) , &p_1092->g_117) == l_478))) && p_26)));
                for (l_449 = 17; (l_449 != 38); l_449++)
                { /* block id: 242 */
                    return p_25;
                }
                for (p_1092->g_312 = (-13); (p_1092->g_312 > 20); p_1092->g_312++)
                { /* block id: 247 */
                    int32_t l_486 = 2L;
                    uint32_t l_488 = 1UL;
                    int32_t l_511 = 0x1D4F0836L;
                    for (p_1092->g_427 = 0; (p_1092->g_427 >= (-10)); p_1092->g_427 = safe_sub_func_uint64_t_u_u(p_1092->g_427, 3))
                    { /* block id: 250 */
                        (*p_27) = (*p_1092->g_177);
                        atomic_min(&p_1092->l_atomic_reduction[0], l_485[4][2][0]);
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1092->v_collective += p_1092->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if ((*p_28))
                            continue;
                        l_488++;
                    }
                    for (p_1092->g_100 = (-24); (p_1092->g_100 <= 18); ++p_1092->g_100)
                    { /* block id: 258 */
                        uint16_t **l_493 = &l_459[2];
                        int32_t l_507 = 1L;
                        int32_t l_510 = 0x3DE4621FL;
                        if ((*p_28))
                            break;
                        (*p_27) = (l_493 != l_494);
                        (*p_27) = ((*p_1092->g_399) |= (safe_add_func_uint8_t_u_u(p_26, (((((l_511 = ((safe_sub_func_uint8_t_u_u(p_24, (((*p_1092->g_109) && (safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((p_26 < (-5L)), ((safe_div_func_uint16_t_u_u((safe_add_func_int64_t_s_s(l_507, l_507)), (safe_add_func_uint8_t_u_u(((l_510 = (((**l_493) = p_26) , ((&p_25 != (void*)0) || (-3L)))) || (*p_1092->g_6)), p_1092->g_205)))) || p_1092->g_197))), 0x9E7D3235L))) , FAKE_DIVERGE(p_1092->group_1_offset, get_group_id(1), 10)))) == 0x5EB9L)) > p_26) == 1UL) == (*p_27)) || 0xD114ECDA945E862BL))));
                        (*p_1092->g_117) = p_27;
                    }
                    l_512 = p_27;
                    for (p_1092->g_281 = 0; (p_1092->g_281 <= 1); p_1092->g_281 += 1)
                    { /* block id: 271 */
                        int16_t *l_521 = &p_1092->g_205;
                        int32_t *l_523[3][7] = {{&l_485[5][6][1],&l_485[5][6][1],(void*)0,&p_1092->g_5,&p_1092->g_279,&p_1092->g_5,(void*)0},{&l_485[5][6][1],&l_485[5][6][1],(void*)0,&p_1092->g_5,&p_1092->g_279,&p_1092->g_5,(void*)0},{&l_485[5][6][1],&l_485[5][6][1],(void*)0,&p_1092->g_5,&p_1092->g_279,&p_1092->g_5,(void*)0}};
                        int i, j;
                        (*p_28) = (((*p_1092->g_109) ^= p_1092->g_292[(p_1092->g_281 + 2)]) == ((((void*)0 != l_513) && l_442[(p_1092->g_281 + 4)][p_1092->g_281]) , (safe_sub_func_uint32_t_u_u(((((*p_1092->g_399) = (((((p_1092->g_522 &= (safe_mod_func_int32_t_s_s((safe_unary_minus_func_int16_t_s((((((0x7E6414F8D1C9859EL < 0x16E90D9EEE9BB013L) < (FAKE_DIVERGE(p_1092->global_1_offset, get_global_id(1), 10) , (l_485[4][2][0] = ((~(l_485[4][2][0] && (safe_lshift_func_int8_t_s_u((*l_512), 7)))) , ((l_521 == l_521) , p_1092->g_163[3]))))) && 0x7A1B26B8L) >= 0x77A1C016L) | p_1092->g_209[0]))), (*p_25)))) <= p_1092->g_4[5]) , (*l_512)) ^ 1L) && 18446744073709551615UL)) & 0x76099B5BL) || (*p_1092->g_6)), (-1L)))));
                        if ((*p_27))
                            break;
                        return p_25;
                    }
                }
                for (p_1092->g_40 = 0; (p_1092->g_40 >= 10); ++p_1092->g_40)
                { /* block id: 283 */
                    int32_t *****l_540 = &l_539;
                    int64_t **l_564 = &p_1092->g_235;
                    uint64_t *l_573 = (void*)0;
                    int32_t l_601 = 1L;
                    int32_t *l_606[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_606[i] = (void*)0;
                    if ((safe_mod_func_uint8_t_u_u((((p_1092->g_117 = &p_1092->g_399) != (void*)0) & ((safe_sub_func_uint16_t_u_u(((l_532 = (l_531 = l_530)) == ((safe_lshift_func_int8_t_s_s(p_1092->g_101[7], (safe_lshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u((((*l_540) = l_539) == (p_1092->g_543 = l_541)), (safe_lshift_func_int8_t_s_u((safe_add_func_int32_t_s_s(((safe_lshift_func_int8_t_s_u((!(p_1092->g_312 < (((((safe_lshift_func_int8_t_s_u(((*l_424) = (safe_div_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((p_1092->g_342[7] ^= ((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_s((p_24 && (&l_428[3] == &p_1092->g_111)), p_1092->g_75)) == p_24), 4)) || 0x89E85817L)), 4)), (*p_1092->g_235)))), p_26)) >= 65535UL) & 0x1AL) , (*p_1092->g_275)) < p_1092->g_312))), FAKE_DIVERGE(p_1092->local_2_offset, get_local_id(2), 10))) || 0x22L), p_1092->g_75)), (*l_458))))), p_1092->g_205)))) , l_564)), 0xC748L)) || FAKE_DIVERGE(p_1092->global_0_offset, get_global_id(0), 10))), p_24)))
                    { /* block id: 291 */
                        uint64_t *l_571[4][5] = {{(void*)0,&p_1092->g_292[6],(void*)0,(void*)0,&p_1092->g_292[6]},{(void*)0,&p_1092->g_292[6],(void*)0,(void*)0,&p_1092->g_292[6]},{(void*)0,&p_1092->g_292[6],(void*)0,(void*)0,&p_1092->g_292[6]},{(void*)0,&p_1092->g_292[6],(void*)0,(void*)0,&p_1092->g_292[6]}};
                        int32_t l_590 = 0x2AB53DF8L;
                        uint32_t l_603 = 0x26C3CB23L;
                        int i, j;
                        (**p_1092->g_545) |= (safe_lshift_func_int8_t_s_u(((safe_rshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s((&p_1092->g_281 != (l_573 = ((l_571[0][4] != &p_1092->g_292[6]) , l_572))), 12)), (p_1092->g_212 >= l_485[4][2][0]))) ^ 1L), l_574));
                        (**p_1092->g_545) ^= (safe_sub_func_int8_t_s_s((((safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(((*l_600) = ((((safe_sub_func_uint8_t_u_u(p_26, ((*l_451) = (p_26 , ((p_1092->g_212 | (safe_div_func_int8_t_s_s((safe_unary_minus_func_uint16_t_u(65526UL)), ((safe_mul_func_int16_t_s_s(p_26, (((safe_add_func_int32_t_s_s((0x13F963E45CA51B2EL > p_26), l_590)) , ((~(safe_rshift_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u((safe_lshift_func_uint8_t_u_u((((safe_rshift_func_int16_t_s_u(((safe_add_func_int32_t_s_s((-9L), p_26)) < p_24), (*p_1092->g_109))) , 0UL) < p_26), p_24)))), 12))) , l_600)) == &p_1092->g_205))) ^ p_1092->g_40)))) && p_26))))) & 0UL) ^ l_601) , p_1092->g_522)), (*p_1092->g_109))), p_24)) || l_602) , l_590), p_1092->g_163[7]));
                        (*p_1092->g_545) = (*p_1092->g_545);
                        if (l_603)
                            break;
                    }
                    else
                    { /* block id: 299 */
                        int32_t **l_604 = (void*)0;
                        int32_t **l_605[9][8] = {{(void*)0,&l_409,(void*)0,&l_409,&l_409,&l_409,(void*)0,&l_409},{(void*)0,&l_409,(void*)0,&l_409,&l_409,&l_409,(void*)0,&l_409},{(void*)0,&l_409,(void*)0,&l_409,&l_409,&l_409,(void*)0,&l_409},{(void*)0,&l_409,(void*)0,&l_409,&l_409,&l_409,(void*)0,&l_409},{(void*)0,&l_409,(void*)0,&l_409,&l_409,&l_409,(void*)0,&l_409},{(void*)0,&l_409,(void*)0,&l_409,&l_409,&l_409,(void*)0,&l_409},{(void*)0,&l_409,(void*)0,&l_409,&l_409,&l_409,(void*)0,&l_409},{(void*)0,&l_409,(void*)0,&l_409,&l_409,&l_409,(void*)0,&l_409},{(void*)0,&l_409,(void*)0,&l_409,&l_409,&l_409,(void*)0,&l_409}};
                        int64_t l_609 = (-3L);
                        int i, j;
                        (***p_1092->g_544) = ((*l_452) == ((p_24 != (GROUP_DIVERGE(0, 1) , ((l_606[0] = l_512) == (void*)0))) , (void*)0));
                        (*p_27) = (safe_lshift_func_int16_t_s_u(l_609, 4));
                        l_629 = (**p_1092->g_544);
                    }
                }
            }
            else
            { /* block id: 308 */
                int8_t l_638 = (-3L);
                int32_t *l_646[7] = {&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312};
                int32_t ****l_661 = &p_1092->g_544;
                int i;
                if (((((((p_1092->g_342[7] , ((safe_mod_func_int64_t_s_s(((GROUP_DIVERGE(2, 1) < (safe_add_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(((safe_mul_func_uint8_t_u_u(l_638, (1L < (safe_lshift_func_int8_t_s_u((((safe_add_func_int32_t_s_s((safe_add_func_int8_t_s_s(((((0x4DF6378DDAEBC930L ^ (-8L)) & ((((l_645 != (void*)0) ^ ((0xEBL | (((0x221CF66FL ^ FAKE_DIVERGE(p_1092->global_2_offset, get_global_id(2), 10)) >= (*p_28)) & 0L)) , p_26)) < p_24) , p_1092->g_342[7])) < 1UL) < p_1092->g_40), 0xC7L)), (*p_25))) >= 0xCD86L) < (*l_458)), p_26))))) > l_638), p_24)), p_26))) > 0L), 1UL)) | l_638)) , &p_1092->g_312) != l_646[5]) , &p_1092->g_40) != &p_1092->g_40) , 0x33DF29CAL))
                { /* block id: 309 */
                    int16_t l_662 = 8L;
                    int32_t l_665 = 0L;
                    int32_t l_666 = (-1L);
                    int32_t l_667[9] = {6L,6L,6L,6L,6L,6L,6L,6L,6L};
                    int32_t l_669 = 0x0A54A9FDL;
                    int i;
                    (**p_1092->g_544) = (void*)0;
                    (*p_27) = ((!((p_1092->g_75 && (((l_666 = (safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1092->global_2_offset, get_global_id(2), 10), ((l_667[8] &= ((((*l_600) |= (safe_lshift_func_int8_t_s_s(((l_665 &= ((0x19AD1B7D556F1096L != (!((((safe_mul_func_int8_t_s_s(((*l_513) = (((*l_451) = 0x30L) & (safe_lshift_func_int16_t_s_u(p_24, 14)))), l_638)) == (safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (((safe_div_func_uint64_t_u_u(((l_662 ^= ((void*)0 != l_661)) < (FAKE_DIVERGE(p_1092->local_2_offset, get_local_id(2), 10) < (safe_sub_func_int32_t_s_s(((*l_530) != (void*)0), (*l_458))))), 0x72F32C32EAFC07FFL)) , (-1L)) == p_24)))) <= 0x33E6L) , l_662))) , (*p_28))) ^ l_666), 0))) , (-1L)) & 1UL)) , l_668)))) < l_669) > 0x0193L)) && p_1092->g_292[6])) || p_26);
                }
                else
                { /* block id: 319 */
                    (**p_1092->g_544) = (void*)0;
                }
                (*p_27) |= (safe_unary_minus_func_uint8_t_u(p_26));
            }
            p_27 = ((*p_1092->g_117) = p_28);
            ++l_691;
        }
        else
        { /* block id: 327 */
            int32_t *l_714[8][9][3] = {{{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680}},{{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680}},{{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680}},{{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680}},{{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680}},{{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680}},{{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680}},{{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680},{&p_1092->g_279,&p_1092->g_522,&l_680}}};
            uint16_t l_753 = 1UL;
            int16_t l_777 = (-1L);
            int64_t l_811 = (-4L);
            uint8_t **l_824 = &l_451;
            int16_t **l_838 = &p_1092->g_787;
            uint32_t *l_845 = &p_1092->g_212;
            uint32_t *l_846 = &p_1092->g_847;
            int i, j, k;
            for (l_462 = 0; (l_462 >= 9); l_462 = safe_add_func_int8_t_s_s(l_462, 3))
            { /* block id: 330 */
                uint8_t **l_708 = (void*)0;
                int32_t l_713 = 0x00291D4AL;
                uint64_t *l_724[10][2] = {{&p_1092->g_292[3],(void*)0},{&p_1092->g_292[3],(void*)0},{&p_1092->g_292[3],(void*)0},{&p_1092->g_292[3],(void*)0},{&p_1092->g_292[3],(void*)0},{&p_1092->g_292[3],(void*)0},{&p_1092->g_292[3],(void*)0},{&p_1092->g_292[3],(void*)0},{&p_1092->g_292[3],(void*)0},{&p_1092->g_292[3],(void*)0}};
                uint64_t **l_725 = &l_572;
                int i, j;
                (1 + 1);
            }
            if ((*p_28))
            { /* block id: 360 */
                uint16_t l_732 = 7UL;
                uint32_t *l_739 = (void*)0;
                uint32_t *l_740[8];
                int32_t l_752[2];
                int16_t *l_786[5] = {&p_1092->g_205,&p_1092->g_205,&p_1092->g_205,&p_1092->g_205,&p_1092->g_205};
                int16_t *l_790[6][4] = {{&p_1092->g_205,(void*)0,&p_1092->g_205,&p_1092->g_205},{&p_1092->g_205,(void*)0,&p_1092->g_205,&p_1092->g_205},{&p_1092->g_205,(void*)0,&p_1092->g_205,&p_1092->g_205},{&p_1092->g_205,(void*)0,&p_1092->g_205,&p_1092->g_205},{&p_1092->g_205,(void*)0,&p_1092->g_205,&p_1092->g_205},{&p_1092->g_205,(void*)0,&p_1092->g_205,&p_1092->g_205}};
                int32_t l_791 = 0L;
                int i, j;
                for (i = 0; i < 8; i++)
                    l_740[i] = &p_1092->g_212;
                for (i = 0; i < 2; i++)
                    l_752[i] = 0x291038A5L;
                (***p_1092->g_544) = (((*p_1092->g_235) = l_732) == (+((p_26 == (l_732 , ((safe_add_func_uint16_t_u_u(((*p_25) , (1UL >= 0xE979L)), l_732)) & (((((*l_424) = ((safe_div_func_int16_t_s_s((p_1092->g_292[6] > ((p_1092->g_212 = (safe_lshift_func_int8_t_s_u(p_24, FAKE_DIVERGE(p_1092->group_2_offset, get_group_id(2), 10)))) ^ (*p_27))), p_1092->g_197)) && GROUP_DIVERGE(0, 1))) > l_732) , p_1092->g_358) , p_24)))) ^ 4UL)));
                for (p_1092->g_312 = 0; (p_1092->g_312 <= 7); p_1092->g_312 += 1)
                { /* block id: 367 */
                    int16_t l_747 = 0x5EDBL;
                    int32_t l_759 = 0L;
                    uint64_t **l_822 = &l_572;
                    (***p_1092->g_544) = (0x5AL & (safe_div_func_uint32_t_u_u(((*p_28) <= (((((0UL != ((~(p_1092->g_101[7] , (((safe_unary_minus_func_uint8_t_u((safe_unary_minus_func_uint8_t_u((l_753 &= (((*p_1092->g_235) = (+(((safe_mul_func_int16_t_s_s(p_24, p_1092->g_689)) >= ((p_1092->g_212 = l_747) > (safe_sub_func_int32_t_s_s((l_752[0] ^= ((((safe_sub_func_uint32_t_u_u((((p_24 && 0x50L) ^ p_1092->g_342[7]) && p_1092->g_342[2]), l_732)) , p_1092->g_5) >= p_1092->g_313) , (****p_1092->g_543))), 5UL)))) > 1UL))) < p_24)))))) && p_1092->g_358) == FAKE_DIVERGE(p_1092->local_2_offset, get_local_id(2), 10)))) , p_24)) || p_24) | p_26) != p_24) == p_24)), p_26)));
                    for (l_747 = 0; (l_747 <= 1); l_747 += 1)
                    { /* block id: 375 */
                        int16_t **l_785[4][5][2] = {{{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600}},{{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600}},{{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600}},{{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600},{&l_600,&l_600}}};
                        int8_t l_793 = 0x2AL;
                        uint64_t **l_823 = &l_572;
                        int i, j, k;
                        p_25 = &l_752[0];
                        (*p_1092->g_117) = &p_1092->g_477[(l_747 + 2)][p_1092->g_312];
                        (*p_28) = ((+(safe_add_func_uint32_t_u_u(1UL, (p_1092->g_212 |= 4294967292UL)))) >= (((p_26 , (safe_unary_minus_func_uint8_t_u(((((safe_div_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_add_func_uint64_t_u_u(0xF00157DC1FF3BEA2L, (((**l_452) ^= p_26) | (((((safe_sub_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((p_1092->g_40--), (safe_sub_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((--(*l_572)), ((2L & l_747) != (((~(safe_mul_func_uint8_t_u_u(l_793, (l_822 == l_823)))) , l_824) == l_824)))), p_24)))), p_26)) < p_1092->g_477[(l_747 + 2)][p_1092->g_312]) ^ l_752[1]) , FAKE_DIVERGE(p_1092->global_1_offset, get_global_id(1), 10)) < p_1092->g_427)))), l_793)), GROUP_DIVERGE(1, 1))), 0x63L)) || (*p_25)) | p_24) || p_24)))) & p_1092->g_281) ^ p_26));
                    }
                    (*p_27) &= 0x20F5AD6DL;
                    for (l_747 = 5; (l_747 >= 2); l_747 -= 1)
                    { /* block id: 396 */
                        return (***p_1092->g_543);
                    }
                }
            }
            else
            { /* block id: 400 */
                (***p_1092->g_544) |= 0x05679C8CL;
                (*p_27) |= (safe_unary_minus_func_int64_t_s(((*p_1092->g_235) = (((safe_sub_func_uint16_t_u_u((p_1092->g_209[1] <= ((*p_25) , (l_600 == (void*)0))), p_1092->g_477[0][5])) , (((((*l_513) = (p_1092->g_427 = 0x57L)) > p_24) , (*p_25)) & 5UL)) ^ p_24))));
            }
            (**p_1092->g_545) ^= (((safe_sub_func_uint32_t_u_u(((*l_846) = ((*l_845) = (safe_sub_func_uint64_t_u_u((safe_sub_func_int16_t_s_s((safe_div_func_int8_t_s_s(((((**l_530) = (safe_mod_func_uint16_t_u_u((l_838 == (void*)0), p_24))) && 1L) | (l_824 == l_824)), 0x78L)), ((*l_600) = ((safe_rshift_func_uint8_t_u_u(p_24, 6)) | (safe_add_func_uint64_t_u_u(((*l_572)++), p_24)))))), 0x7180D55D1FBECFC8L)))), (*p_27))) || (*p_28)) ^ 0x26F131D4L);
            l_850 = ((*p_27) ^= (safe_add_func_int16_t_s_s(((((***p_1092->g_543) = (**p_1092->g_544)) != p_28) == 0x2D567EFCL), (~p_26))));
        }
        (*p_27) |= (safe_lshift_func_int8_t_s_s(((safe_unary_minus_func_int64_t_s((safe_add_func_uint64_t_u_u((++(*l_572)), (safe_div_func_int32_t_s_s((safe_add_func_int8_t_s_s(((p_1092->g_847 = p_24) && (safe_add_func_int16_t_s_s((safe_mul_func_int8_t_s_s((((18446744073709551612UL == ((safe_div_func_int8_t_s_s((((*l_645) = p_28) == l_869[0]), p_1092->g_100)) <= (safe_sub_func_uint32_t_u_u((l_872 <= (((safe_lshift_func_uint16_t_u_u(((-1L) != 5UL), (~p_26))) && 0x3B46L) && p_1092->g_75)), 0x2872A613L)))) <= p_24) == 0x15L), GROUP_DIVERGE(0, 1))), (*p_1092->g_787)))), 0UL)), p_1092->g_358)))))) >= 0xBCCEL), 3));
    }
    else
    { /* block id: 421 */
        uint16_t l_897 = 3UL;
        int8_t l_902 = 0L;
        int8_t l_903[1][4];
        uint8_t *l_904 = &p_1092->g_342[8];
        int16_t *l_929 = &p_1092->g_205;
        uint8_t *l_948 = (void*)0;
        int32_t l_950 = 4L;
        int32_t l_951 = 0x478006A8L;
        int32_t l_953 = 0x414D8924L;
        int32_t l_958 = 0x3B6A0AB9L;
        int32_t l_959[2];
        uint32_t l_967[1][7][8] = {{{4294967295UL,0xB103BE9EL,0xC92F0B24L,0xF40DFD0EL,0x85E0B64EL,0xF40DFD0EL,0xC92F0B24L,0xB103BE9EL},{4294967295UL,0xB103BE9EL,0xC92F0B24L,0xF40DFD0EL,0x85E0B64EL,0xF40DFD0EL,0xC92F0B24L,0xB103BE9EL},{4294967295UL,0xB103BE9EL,0xC92F0B24L,0xF40DFD0EL,0x85E0B64EL,0xF40DFD0EL,0xC92F0B24L,0xB103BE9EL},{4294967295UL,0xB103BE9EL,0xC92F0B24L,0xF40DFD0EL,0x85E0B64EL,0xF40DFD0EL,0xC92F0B24L,0xB103BE9EL},{4294967295UL,0xB103BE9EL,0xC92F0B24L,0xF40DFD0EL,0x85E0B64EL,0xF40DFD0EL,0xC92F0B24L,0xB103BE9EL},{4294967295UL,0xB103BE9EL,0xC92F0B24L,0xF40DFD0EL,0x85E0B64EL,0xF40DFD0EL,0xC92F0B24L,0xB103BE9EL},{4294967295UL,0xB103BE9EL,0xC92F0B24L,0xF40DFD0EL,0x85E0B64EL,0xF40DFD0EL,0xC92F0B24L,0xB103BE9EL}}};
        int32_t ****l_978 = &p_1092->g_544;
        int32_t *****l_979 = &l_894;
        uint64_t *l_980 = &l_792;
        uint32_t *l_1012 = (void*)0;
        uint32_t *l_1013 = &p_1092->g_847;
        uint16_t *l_1015 = &l_850;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 4; j++)
                l_903[i][j] = 0x11L;
        }
        for (i = 0; i < 2; i++)
            l_959[i] = (-1L);
        if ((*p_27))
        { /* block id: 422 */
            uint32_t l_881 = 4294967286UL;
            uint8_t *l_906 = &p_1092->g_342[7];
            if ((*p_1092->g_6))
            { /* block id: 423 */
                int64_t l_895 = 3L;
                int32_t l_896[2][3] = {{0x2C671D5AL,0x1EF7BABFL,0x2C671D5AL},{0x2C671D5AL,0x1EF7BABFL,0x2C671D5AL}};
                int i, j;
                (**p_1092->g_544) = p_27;
                ++l_897;
                (*p_1092->g_399) ^= (safe_div_func_int16_t_s_s((*p_1092->g_787), l_902));
            }
            else
            { /* block id: 429 */
                uint8_t *l_905 = (void*)0;
                uint64_t *l_907 = &l_792;
                (*p_1092->g_399) = (l_903[0][1] , ((p_1092->g_13 , ((-6L) <= (l_904 != (l_906 = l_905)))) , (((*l_907) = (+(FAKE_DIVERGE(p_1092->group_1_offset, get_group_id(1), 10) | p_24))) || ((void*)0 == &p_1092->g_234))));
            }
        }
        else
        { /* block id: 434 */
            uint16_t l_920 = 0x4182L;
            int8_t *l_930 = &l_903[0][1];
            int8_t **l_931[6][10] = {{&l_930,&l_930,&l_426[1][2],(void*)0,&l_930,(void*)0,&l_426[1][2],&l_930,&l_930,&l_930},{&l_930,&l_930,&l_426[1][2],(void*)0,&l_930,(void*)0,&l_426[1][2],&l_930,&l_930,&l_930},{&l_930,&l_930,&l_426[1][2],(void*)0,&l_930,(void*)0,&l_426[1][2],&l_930,&l_930,&l_930},{&l_930,&l_930,&l_426[1][2],(void*)0,&l_930,(void*)0,&l_426[1][2],&l_930,&l_930,&l_930},{&l_930,&l_930,&l_426[1][2],(void*)0,&l_930,(void*)0,&l_426[1][2],&l_930,&l_930,&l_930},{&l_930,&l_930,&l_426[1][2],(void*)0,&l_930,(void*)0,&l_426[1][2],&l_930,&l_930,&l_930}};
            uint32_t *l_947 = &p_1092->g_212;
            uint32_t l_949 = 1UL;
            int32_t l_954 = (-1L);
            int32_t l_956 = 0x0C357F37L;
            int32_t l_957 = 0x252882B9L;
            int32_t l_960 = 0x73C59867L;
            int32_t l_961 = (-6L);
            int32_t l_962 = (-1L);
            int32_t l_963 = (-5L);
            int32_t l_964 = 8L;
            int32_t l_965[1][6][7] = {{{(-1L),0x536798C6L,(-1L),(-1L),0x536798C6L,(-1L),(-1L)},{(-1L),0x536798C6L,(-1L),(-1L),0x536798C6L,(-1L),(-1L)},{(-1L),0x536798C6L,(-1L),(-1L),0x536798C6L,(-1L),(-1L)},{(-1L),0x536798C6L,(-1L),(-1L),0x536798C6L,(-1L),(-1L)},{(-1L),0x536798C6L,(-1L),(-1L),0x536798C6L,(-1L),(-1L)},{(-1L),0x536798C6L,(-1L),(-1L),0x536798C6L,(-1L),(-1L)}}};
            int i, j, k;
            (*p_27) ^= (safe_mod_func_int64_t_s_s(((safe_mod_func_uint8_t_u_u((safe_add_func_int8_t_s_s(((safe_add_func_int8_t_s_s(p_26, (safe_mul_func_int16_t_s_s((((!(safe_rshift_func_uint8_t_u_s(0xEEL, 3))) | l_920) | 0x212107A3CAF640F9L), (((l_897 == ((safe_mul_func_uint8_t_u_u((****l_894), ((((((void*)0 != (*l_894)) , (((!(safe_div_func_int16_t_s_s(l_920, (*p_1092->g_787)))) != l_920) <= p_1092->g_342[0])) <= p_24) == FAKE_DIVERGE(p_1092->group_2_offset, get_group_id(2), 10)) & (-4L)))) , (*p_1092->g_787))) >= p_24) <= p_24))))) , p_1092->g_672), p_24)), 248UL)) , (-3L)), l_920));
            (*p_1092->g_399) &= (((p_1092->g_13 , GROUP_DIVERGE(1, 1)) != (safe_lshift_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s((0x5914L | 0x8A68L), 0)) < (l_929 != l_600)), 7))) < ((p_1092->g_932 = (p_24 , l_930)) == &l_902));
            (***l_894) = p_25;
            ++l_967[0][6][7];
        }
        (*p_1092->g_275) &= (safe_lshift_func_int8_t_s_u((l_950 | (safe_lshift_func_uint8_t_u_u((((*p_1092->g_932) = l_951) & (safe_rshift_func_int16_t_s_s(((*l_600) = 0x1393L), 10))), ((safe_lshift_func_int8_t_s_s(((FAKE_DIVERGE(p_1092->global_0_offset, get_global_id(0), 10) , &p_1092->g_544) != ((*l_979) = l_978)), 4)) < (((((*l_980) = p_24) != (safe_lshift_func_int16_t_s_u(0x488AL, 0))) && (safe_rshift_func_uint8_t_u_s(((((safe_add_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((****l_978), (safe_lshift_func_uint16_t_u_u(((void*)0 == &p_1092->g_292[6]), p_1092->g_209[0])))), 0x15D76F21L)) <= p_26) >= (*p_28)) != p_26), 7))) , p_26))))), p_24));
        (*p_28) = (safe_sub_func_int64_t_s_s((****l_894), ((p_1092->g_1016 &= (((*l_600) |= (!(safe_mod_func_int64_t_s_s(p_24, (safe_div_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u(((safe_add_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(((void*)0 == l_1003), (safe_rshift_func_uint16_t_u_u(((*l_1015) = (safe_div_func_uint64_t_u_u(18446744073709551611UL, (p_1092->g_4[5] , (((safe_div_func_int16_t_s_s((((((p_24 >= (safe_add_func_int32_t_s_s((((((*l_1013) &= p_1092->g_101[0]) >= (l_953 |= (*p_25))) | (****l_978)) > GROUP_DIVERGE(2, 1)), 4294967295UL))) <= 0UL) ^ p_24) && p_26) > l_1014), p_26)) , p_24) , FAKE_DIVERGE(p_1092->local_2_offset, get_local_id(2), 10)))))), 2)))), (****l_978))) || 1L), 2)), (****l_978))))))) >= p_26)) , p_1092->g_212)));
    }
    (**p_1092->g_544) = l_1017;
    return l_1018;
}


/* ------------------------------------------ */
/* 
 * reads : p_1092->g_14 p_1092->g_4 p_1092->g_13 p_1092->g_6 p_1092->g_5 p_1092->g_75 p_1092->g_100 p_1092->g_101 p_1092->g_107 p_1092->g_111 p_1092->g_117 p_1092->g_112 p_1092->g_177 p_1092->g_40 p_1092->g_197 p_1092->g_212 p_1092->g_3 p_1092->g_209 p_1092->g_233 p_1092->g_166 p_1092->g_275 p_1092->g_279 p_1092->g_292 p_1092->g_312 p_1092->g_281 p_1092->g_297 p_1092->g_163 p_1092->g_342 p_1092->g_356
 * writes: p_1092->g_100 p_1092->g_75 p_1092->g_107 p_1092->g_109 p_1092->g_112 p_1092->g_117 p_1092->g_3 p_1092->g_197 p_1092->g_101 p_1092->g_212 p_1092->g_166 p_1092->g_13 p_1092->g_209 p_1092->g_234 p_1092->g_4 p_1092->g_279 p_1092->g_281 p_1092->g_297 p_1092->g_40 p_1092->g_312 p_1092->g_313 p_1092->g_292
 */
int32_t  func_29(int32_t * p_30, int64_t  p_31, struct S0 * p_1092)
{ /* block id: 34 */
    uint16_t *l_64 = &p_1092->g_40;
    int32_t l_70 = 1L;
    int32_t *l_278 = &p_1092->g_279;
    uint64_t *l_280 = &p_1092->g_281;
    uint8_t *l_282 = &p_1092->g_100;
    uint64_t *l_291 = &p_1092->g_292[6];
    uint16_t **l_295 = &p_1092->g_109;
    int8_t *l_296 = &p_1092->g_297;
    int32_t l_298 = 0x768781CAL;
    uint32_t l_309 = 0xF13C25BEL;
    int32_t l_310 = 0x20A2916BL;
    int32_t *l_311[5][9] = {{&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312},{&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312},{&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312},{&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312},{&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312,&p_1092->g_312}};
    uint32_t l_333 = 0xDEAA68DCL;
    int32_t l_364 = (-4L);
    int32_t l_365 = 1L;
    int32_t l_366 = 7L;
    uint16_t l_367 = 0xA477L;
    int32_t *l_401 = &p_1092->g_279;
    int i, j;
    (*l_278) ^= (safe_mod_func_uint64_t_u_u(((safe_div_func_uint32_t_u_u((((safe_div_func_int16_t_s_s(((safe_unary_minus_func_int8_t_s(((((GROUP_DIVERGE(0, 1) , 5UL) ^ func_54(p_1092->g_14, (func_57(p_1092->g_4[5], (safe_rshift_func_int8_t_s_s((-1L), 4)), l_64, func_65((((((safe_add_func_uint32_t_u_u(p_1092->g_13, 0x32CBEB03L)) , l_70) , (*p_1092->g_6)) || (*p_30)) , (*p_30)), p_31, p_1092), p_1092) , (void*)0), p_1092)) , l_70) && p_31))) , 0x12F5L), p_31)) & (*p_30)) > 0L), l_70)) == (-1L)), l_70));
    (*l_278) = ((((*l_282) = (((*l_280) = 0xA56E4B4E97113662L) , 250UL)) != (((safe_sub_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((*l_278), p_31)), ((safe_mod_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u((l_291 != (void*)0), ((l_298 |= (safe_rshift_func_int8_t_s_u(((*l_296) = (l_64 == ((*l_295) = (void*)0))), 0))) || (((l_280 != (void*)0) != (-1L)) < p_1092->g_75)))), p_1092->g_292[6])) < 0x6BF941106FE50BE4L))) < (*l_278)) , FAKE_DIVERGE(p_1092->global_2_offset, get_global_id(2), 10))) < p_31);
    if ((safe_mod_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(((*l_278) = (((*l_64) = p_1092->g_209[2]) , ((safe_lshift_func_int8_t_s_u((*l_278), (*l_278))) <= ((p_1092->g_312 |= (((*l_64)++) >= (((safe_rshift_func_uint16_t_u_u(((void*)0 != l_296), 7)) , (l_309 == l_310)) || (p_31 & (*l_278))))) , FAKE_DIVERGE(p_1092->local_0_offset, get_local_id(0), 10))))), 0x7F56L)), p_1092->g_209[0])))
    { /* block id: 168 */
        p_1092->g_313 = (*l_278);
        (*p_1092->g_117) = &l_298;
    }
    else
    { /* block id: 171 */
        uint64_t l_320 = 0x1C031E0E6C789B59L;
        uint8_t *l_354 = (void*)0;
        int32_t l_361 = 0x29836349L;
        int32_t l_362 = 0x6015A3CEL;
        int32_t l_363[6] = {0x5212FEA3L,0x1F03E3C6L,0x5212FEA3L,0x5212FEA3L,0x1F03E3C6L,0x5212FEA3L};
        uint64_t l_395 = 0UL;
        int i;
        for (p_1092->g_166 = 22; (p_1092->g_166 >= (-23)); --p_1092->g_166)
        { /* block id: 174 */
            int32_t **l_329 = &l_311[1][5];
            int32_t *l_331[3][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
            int32_t **l_330 = &l_331[0][0];
            uint32_t l_332 = 4294967289UL;
            int32_t *l_334[7][6] = {{&l_298,&p_1092->g_4[5],&p_1092->g_14,&p_1092->g_4[5],&l_298,&l_298},{&l_298,&p_1092->g_4[5],&p_1092->g_14,&p_1092->g_4[5],&l_298,&l_298},{&l_298,&p_1092->g_4[5],&p_1092->g_14,&p_1092->g_4[5],&l_298,&l_298},{&l_298,&p_1092->g_4[5],&p_1092->g_14,&p_1092->g_4[5],&l_298,&l_298},{&l_298,&p_1092->g_4[5],&p_1092->g_14,&p_1092->g_4[5],&l_298,&l_298},{&l_298,&p_1092->g_4[5],&p_1092->g_14,&p_1092->g_4[5],&l_298,&l_298},{&l_298,&p_1092->g_4[5],&p_1092->g_14,&p_1092->g_4[5],&l_298,&l_298}};
            volatile uint8_t * volatile * volatile l_360 = &p_1092->g_357[8][0];/* VOLATILE GLOBAL l_360 */
            int i, j;
            l_70 ^= (((((safe_rshift_func_int8_t_s_u(p_1092->g_101[7], (p_1092->g_197 || ((((FAKE_DIVERGE(p_1092->local_1_offset, get_local_id(1), 10) >= l_320) && (*p_1092->g_275)) || p_31) > ((p_1092->g_292[3] = (--(*l_280))) <= ((safe_rshift_func_uint16_t_u_u((l_333 = (safe_sub_func_int32_t_s_s((0x4DL < (+((p_1092->g_197 | ((*l_278) = ((safe_mul_func_uint8_t_u_u((((*l_329) = p_30) != ((*l_330) = l_278)), 248UL)) & p_1092->g_14))) || l_332))), l_332))), p_31)) , p_1092->g_4[9])))))) & 0x013AAD4235F6A586L) & (*p_30)) >= 255UL) < 8L);
            for (p_1092->g_297 = 5; (p_1092->g_297 >= 0); p_1092->g_297 -= 1)
            { /* block id: 184 */
                uint8_t *l_341 = &p_1092->g_342[7];
                uint8_t **l_343 = (void*)0;
                uint8_t **l_344 = &l_341;
                uint8_t ***l_353 = &l_343;
                int32_t l_355 = (-1L);
                int i, j;
                l_355 ^= (((p_1092->g_163[(p_1092->g_297 + 2)] , (safe_div_func_int16_t_s_s((((safe_rshift_func_int16_t_s_s((((*l_282) = 254UL) != ((safe_add_func_uint64_t_u_u(((((((*l_344) = l_341) != ((((safe_lshift_func_int16_t_s_u((safe_sub_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(((((void*)0 != &l_334[p_1092->g_297][p_1092->g_297]) == (p_31 != (((*l_353) = l_344) != (void*)0))) < (p_1092->g_4[4] && p_31)), (*l_278))) && p_1092->g_281), 0x57L)), p_31)) , l_320) | 0xEF4CL) , l_354)) < 0x97B71F31L) | p_1092->g_342[7]) && (*p_30)), (*l_278))) > (*l_278))), p_1092->g_297)) >= (-9L)) > 0x562DL), (*l_278)))) & 0UL) | l_320);
                if ((*p_1092->g_6))
                    break;
            }
            l_360 = p_1092->g_356;
            ++l_367;
        }
        for (l_333 = 21; (l_333 < 38); l_333 = safe_add_func_int8_t_s_s(l_333, 5))
        { /* block id: 196 */
            int8_t l_378 = 1L;
            int32_t l_379 = 0x430A2925L;
            int32_t l_391 = 0x1235C6B1L;
            int32_t l_392 = 7L;
            int32_t l_393 = 1L;
            int32_t l_394 = 0x09BDC293L;
            for (p_1092->g_75 = 0; (p_1092->g_75 < 5); ++p_1092->g_75)
            { /* block id: 199 */
                uint32_t l_380 = 0xEC2CE1F1L;
                for (l_362 = 0; (l_362 <= 11); ++l_362)
                { /* block id: 202 */
                    int32_t *l_376[7][1] = {{&l_70},{&l_70},{&l_70},{&l_70},{&l_70},{&l_70},{&l_70}};
                    int16_t l_377 = 0x5379L;
                    int i, j;
                    l_380++;
                    if ((*p_1092->g_177))
                        continue;
                }
            }
            for (p_1092->g_312 = (-18); (p_1092->g_312 >= (-25)); p_1092->g_312 = safe_sub_func_uint8_t_u_u(p_1092->g_312, 7))
            { /* block id: 209 */
                int32_t *l_385 = (void*)0;
                int32_t *l_386 = (void*)0;
                int32_t *l_387 = &p_1092->g_4[5];
                int32_t *l_388 = &l_365;
                int32_t *l_389 = &l_379;
                int32_t *l_390[5];
                int32_t **l_400 = &l_386;
                int i;
                for (i = 0; i < 5; i++)
                    l_390[i] = (void*)0;
                (*l_278) = (*p_30);
                l_395++;
                (*l_278) = (-10L);
                (*l_400) = ((*p_1092->g_117) = p_30);
            }
        }
        (*p_1092->g_117) = &l_70;
    }
    l_401 = p_30;
    return (*p_1092->g_177);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_42(int32_t * p_43, uint16_t * p_44, struct S0 * p_1092)
{ /* block id: 32 */
    uint64_t l_46 = 0xE961CAE4674E6A83L;
    return l_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_1092->g_100 p_1092->g_5 p_1092->g_177 p_1092->g_6 p_1092->g_40 p_1092->g_75 p_1092->g_197 p_1092->g_4 p_1092->g_212 p_1092->g_3 p_1092->g_209 p_1092->g_233 p_1092->g_117 p_1092->g_166 p_1092->g_275
 * writes: p_1092->g_100 p_1092->g_75 p_1092->g_197 p_1092->g_101 p_1092->g_212 p_1092->g_166 p_1092->g_13 p_1092->g_209 p_1092->g_234 p_1092->g_112 p_1092->g_4
 */
int8_t  func_54(uint8_t  p_55, int32_t * p_56, struct S0 * p_1092)
{ /* block id: 91 */
    int32_t l_184 = 6L;
    int32_t l_185 = (-8L);
    int64_t l_207[10][7][3] = {{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}},{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}},{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}},{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}},{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}},{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}},{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}},{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}},{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}},{{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L},{0L,0x3B3628F2B3A501E5L,0x66EA20A022885775L}}};
    int32_t l_210 = (-1L);
    int32_t l_220 = 2L;
    int32_t l_223 = 1L;
    int32_t l_229 = 0L;
    uint8_t l_245[4];
    uint16_t *l_253 = &p_1092->g_40;
    int64_t l_277 = 0x276346030F7A7959L;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_245[i] = 0x07L;
    for (p_1092->g_100 = 0; (p_1092->g_100 >= 38); p_1092->g_100 = safe_add_func_int16_t_s_s(p_1092->g_100, 9))
    { /* block id: 94 */
        (*p_1092->g_177) = (safe_rshift_func_int16_t_s_s(p_1092->g_5, p_55));
    }
lbl_276:
    if (((((safe_add_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_u(p_55, 9)) || ((*p_1092->g_6) | (((0x3078A46EL ^ (l_184 == 0x2EL)) >= (l_185 = (4294967295UL ^ 0x6851F445L))) < p_1092->g_40))), p_55)) != 0x76L) == 0x1EL) && (*p_1092->g_177)))
    { /* block id: 98 */
        uint16_t **l_203 = &p_1092->g_107;
        int32_t l_215 = 0x47E725D2L;
        int32_t l_224 = 0x6194124EL;
        int32_t *l_236 = &l_220;
        int32_t *l_237 = (void*)0;
        int32_t *l_238 = &l_185;
        int32_t *l_239 = &p_1092->g_75;
        int32_t *l_240 = &p_1092->g_4[5];
        int32_t *l_241 = &p_1092->g_75;
        int32_t *l_242 = &l_210;
        int32_t *l_243 = &p_1092->g_209[0];
        int32_t *l_244[4] = {&l_224,&l_224,&l_224,&l_224};
        int i;
        for (l_184 = 0; (l_184 == 8); ++l_184)
        { /* block id: 101 */
            uint32_t *l_196 = &p_1092->g_197;
            int32_t l_200 = 2L;
            int16_t *l_204[6] = {&p_1092->g_205,(void*)0,&p_1092->g_205,&p_1092->g_205,(void*)0,&p_1092->g_205};
            int64_t *l_206 = &p_1092->g_101[5];
            int32_t *l_208[5][1][6] = {{{&p_1092->g_5,&p_1092->g_14,&p_1092->g_4[0],&p_1092->g_4[9],&p_1092->g_4[0],&p_1092->g_14}},{{&p_1092->g_5,&p_1092->g_14,&p_1092->g_4[0],&p_1092->g_4[9],&p_1092->g_4[0],&p_1092->g_14}},{{&p_1092->g_5,&p_1092->g_14,&p_1092->g_4[0],&p_1092->g_4[9],&p_1092->g_4[0],&p_1092->g_14}},{{&p_1092->g_5,&p_1092->g_14,&p_1092->g_4[0],&p_1092->g_4[9],&p_1092->g_4[0],&p_1092->g_14}},{{&p_1092->g_5,&p_1092->g_14,&p_1092->g_4[0],&p_1092->g_4[9],&p_1092->g_4[0],&p_1092->g_14}}};
            uint32_t *l_211 = &p_1092->g_212;
            int i, j, k;
            l_210 ^= ((safe_lshift_func_uint8_t_u_s(((p_55 | ((*p_1092->g_177) = 9L)) != (safe_rshift_func_int8_t_s_u(p_55, 6))), 2)) <= ((&p_1092->g_112 != (((safe_mod_func_uint8_t_u_u(((l_207[1][6][0] = (((*l_196)++) , (l_200 && (((*l_206) = (safe_add_func_uint16_t_u_u(l_200, ((l_185 &= (((&p_1092->g_109 == l_203) , ((0L || 0x6FL) != p_55)) , 0x56ABL)) , p_55)))) <= 0x56FD15697580FF71L)))) || 0x13D5L), p_1092->g_4[4])) && GROUP_DIVERGE(1, 1)) , (void*)0)) < l_184));
            if (((((*l_211)++) < l_215) ^ p_1092->g_3))
            { /* block id: 109 */
                int32_t l_218 = 1L;
                int32_t l_225 = 0L;
                int32_t l_226[8][5] = {{(-7L),4L,0x5F1789FEL,0x6F7BA14FL,0x5F1789FEL},{(-7L),4L,0x5F1789FEL,0x6F7BA14FL,0x5F1789FEL},{(-7L),4L,0x5F1789FEL,0x6F7BA14FL,0x5F1789FEL},{(-7L),4L,0x5F1789FEL,0x6F7BA14FL,0x5F1789FEL},{(-7L),4L,0x5F1789FEL,0x6F7BA14FL,0x5F1789FEL},{(-7L),4L,0x5F1789FEL,0x6F7BA14FL,0x5F1789FEL},{(-7L),4L,0x5F1789FEL,0x6F7BA14FL,0x5F1789FEL},{(-7L),4L,0x5F1789FEL,0x6F7BA14FL,0x5F1789FEL}};
                uint16_t l_230 = 0x09EBL;
                int i, j;
                for (p_1092->g_166 = 0; (p_1092->g_166 <= 24); ++p_1092->g_166)
                { /* block id: 112 */
                    int32_t l_219 = 0x67FB2DB8L;
                    int32_t l_221 = 0L;
                    int32_t l_222 = 0x2414F196L;
                    int32_t l_227 = 0x55F99B6FL;
                    int32_t l_228 = (-1L);
                    for (p_1092->g_13 = 0; p_1092->g_13 < 4; p_1092->g_13 += 1)
                    {
                        p_1092->g_209[p_1092->g_13] = 0x7E83E42AL;
                    }
                    l_230++;
                    for (l_227 = 0; (l_227 <= 3); l_227 += 1)
                    { /* block id: 117 */
                        int i;
                        if (l_219)
                            break;
                        if (l_185)
                            break;
                        p_1092->g_209[l_227] |= (+0L);
                    }
                }
            }
            else
            { /* block id: 123 */
                (*p_1092->g_233) = &l_206;
                if (p_55)
                    break;
            }
            l_224 = l_210;
            if (l_224)
                continue;
        }
        l_245[3]++;
        (*l_241) = (*p_1092->g_6);
        for (p_1092->g_100 = 24; (p_1092->g_100 == 6); p_1092->g_100 = safe_sub_func_int8_t_s_s(p_1092->g_100, 2))
        { /* block id: 134 */
            (*p_1092->g_117) = &l_220;
        }
    }
    else
    { /* block id: 137 */
        uint16_t *l_252[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_255 = &l_220;
        int32_t *l_256 = &p_1092->g_4[5];
        int32_t *l_257[10];
        int8_t l_258 = (-8L);
        int32_t l_259 = 0x3963346AL;
        uint8_t l_260 = 0UL;
        int16_t l_271 = 1L;
        int i;
        for (i = 0; i < 10; i++)
            l_257[i] = &p_1092->g_4[0];
        if ((safe_rshift_func_uint16_t_u_s((FAKE_DIVERGE(p_1092->group_0_offset, get_group_id(0), 10) > (p_55 ^ 0UL)), (&p_1092->g_40 != (l_253 = l_252[3])))))
        { /* block id: 139 */
            return p_55;
        }
        else
        { /* block id: 141 */
            int32_t *l_254 = &p_1092->g_4[5];
            (*l_254) &= p_55;
        }
        l_260++;
        (*l_255) = (*p_1092->g_6);
        (*l_255) = ((((safe_add_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((0x1CL > 255UL), ((((safe_mul_func_uint8_t_u_u((0x74E81C6BL | ((*l_256) |= ((((*l_255) , (((((l_252[3] == l_253) == ((void*)0 != l_257[3])) & (l_185 &= (l_252[0] != &p_1092->g_40))) & 0x10D8L) < p_55)) <= 0x01670B57E433B844L) > 0x29E1FA4D6B5EC55EL))), 249UL)) , (void*)0) == p_56) == p_1092->g_5))), l_271)), p_1092->g_166)) , p_1092->g_209[3]) ^ 0x7A6F84FCL) > l_245[3]);
    }
    for (p_1092->g_212 = 0; (p_1092->g_212 < 47); ++p_1092->g_212)
    { /* block id: 152 */
        uint32_t l_274 = 5UL;
        (*p_1092->g_275) = ((p_55 || 4UL) , l_274);
    }
    if (p_55)
        goto lbl_276;
    return l_277;
}


/* ------------------------------------------ */
/* 
 * reads : p_1092->g_117
 * writes: p_1092->g_112
 */
uint8_t  func_57(uint32_t  p_58, int64_t  p_59, uint16_t * p_60, int32_t * p_61, struct S0 * p_1092)
{ /* block id: 84 */
    uint16_t l_164 = 9UL;
    uint16_t **l_165[3];
    int32_t ***l_170 = (void*)0;
    int32_t ****l_169 = &l_170;
    int32_t *l_171[10] = {(void*)0,&p_1092->g_75,(void*)0,(void*)0,&p_1092->g_75,(void*)0,(void*)0,&p_1092->g_75,(void*)0,(void*)0};
    int i;
    for (i = 0; i < 3; i++)
        l_165[i] = (void*)0;
    (*p_1092->g_117) = l_171[0];
    return p_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_1092->g_4 p_1092->g_75 p_1092->g_6 p_1092->g_5 p_1092->g_100 p_1092->g_101 p_1092->g_107 p_1092->g_111 p_1092->g_117 p_1092->g_112 p_1092->g_14 p_1092->g_13
 * writes: p_1092->g_100 p_1092->g_75 p_1092->g_107 p_1092->g_109 p_1092->g_112 p_1092->g_117 p_1092->g_3
 */
int32_t * func_65(int32_t  p_66, int64_t  p_67, struct S0 * p_1092)
{ /* block id: 35 */
    uint16_t *l_72[8];
    uint16_t **l_71[10][7][3] = {{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}},{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}},{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}},{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}},{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}},{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}},{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}},{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}},{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}},{{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]},{&l_72[4],&l_72[4],&l_72[1]}}};
    int32_t *l_74 = &p_1092->g_75;
    int32_t *l_76 = &p_1092->g_75;
    int32_t *l_77[7] = {&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75};
    uint64_t l_78 = 8UL;
    uint8_t *l_99 = &p_1092->g_100;
    uint64_t l_102 = 7UL;
    uint8_t *l_103[1];
    int32_t ***l_122 = &p_1092->g_117;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_72[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_103[i] = (void*)0;
    p_66 = (l_71[1][2][2] == (void*)0);
    l_78++;
    if ((safe_sub_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(p_1092->g_4[5], (safe_lshift_func_int8_t_s_u(((((*l_74) = ((safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((safe_div_func_int64_t_s_s(((((safe_mul_func_int16_t_s_s((safe_add_func_uint8_t_u_u((((safe_add_func_uint32_t_u_u(0xE064EC4FL, (*l_74))) && ((*p_1092->g_6) | (((*l_99) &= p_67) | 4UL))) != 0x4ECCL), 0x01L)), (p_66 >= (*l_74)))) ^ p_66) != GROUP_DIVERGE(0, 1)) > p_67), 0x0E54FB1927A6A81AL)), p_1092->g_101[7])), p_67)) , l_102)) < p_1092->g_5) <= p_66), p_67)))), p_1092->g_4[5])))
    { /* block id: 40 */
        int32_t *l_104 = &p_1092->g_75;
        int32_t ***l_120 = (void*)0;
        int32_t ****l_121 = &l_120;
        int32_t ***l_123 = (void*)0;
        uint32_t l_140 = 0xB99B8081L;
        l_104 = &p_1092->g_5;
        for (p_1092->g_100 = 0; (p_1092->g_100 > 47); p_1092->g_100 = safe_add_func_uint16_t_u_u(p_1092->g_100, 1))
        { /* block id: 44 */
            uint16_t *l_108 = &p_1092->g_40;
            int32_t *l_110[3][1];
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_110[i][j] = &p_1092->g_75;
            }
            (*l_76) = ((p_1092->g_107 = p_1092->g_107) != (p_66 , (p_1092->g_109 = (l_108 = &p_1092->g_40))));
            (*p_1092->g_111) = l_110[1][0];
        }
        for (l_78 = 0; (l_78 <= 7); l_78 += 1)
        { /* block id: 53 */
            int32_t **l_114 = (void*)0;
            int32_t ***l_113 = &l_114;
            int32_t **l_116 = &l_77[5];
            int32_t ***l_115[9] = {&l_116,(void*)0,&l_116,&l_116,(void*)0,&l_116,&l_116,(void*)0,&l_116};
            int i;
            p_66 = ((0x272B5AE5FB0772E7L | (p_1092->g_101[l_78] < p_1092->g_101[l_78])) , (&p_1092->g_6 != (p_1092->g_117 = ((*l_113) = &p_1092->g_112))));
        }
        (*l_74) = ((*l_74) , (safe_mul_func_int8_t_s_s((((*l_121) = l_120) != (l_123 = l_122)), ((safe_sub_func_int32_t_s_s((~((p_1092->g_5 ^ 0x84173BB164CB8E99L) || (safe_rshift_func_uint8_t_u_s(((((safe_div_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((((safe_div_func_uint8_t_u_u(1UL, 0x6BL)) , ((safe_rshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u((((**p_1092->g_117) < (safe_sub_func_uint8_t_u_u(p_66, p_1092->g_5))) == p_1092->g_75), 0x33D10A89F6E7EE21L)), p_66)) != p_66)) , l_140), 0x9762L)), p_67)) == p_1092->g_4[5]) <= p_66) > p_1092->g_75), p_67)))), (*l_104))) ^ 4294967293UL))));
    }
    else
    { /* block id: 61 */
        uint16_t l_156[8] = {0x2E91L,0x2E91L,0x2E91L,0x2E91L,0x2E91L,0x2E91L,0x2E91L,0x2E91L};
        int i;
        for (l_78 = 2; (l_78 <= 7); l_78 += 1)
        { /* block id: 64 */
            int32_t l_147 = 9L;
            for (p_1092->g_75 = 7; (p_1092->g_75 >= 2); p_1092->g_75 -= 1)
            { /* block id: 67 */
                int i;
                l_147 = ((safe_mod_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((p_67 <= (((p_67 == (safe_mul_func_int8_t_s_s((&p_1092->g_100 != (void*)0), l_147))) | ((((safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(((~(-4L)) ^ ((safe_mod_func_int32_t_s_s((((0x5EDDL == (p_1092->g_13 , (safe_sub_func_uint64_t_u_u((***l_122), p_66)))) == 0x0D107E331B442378L) & p_1092->g_14), l_147)) >= 0UL)), 14)), p_1092->g_75)) >= FAKE_DIVERGE(p_1092->global_0_offset, get_global_id(0), 10)) , l_156[5]) >= p_1092->g_100)) >= l_147)), l_147)), 0x81B7L)) | (-5L));
            }
            for (p_67 = 0; (p_67 <= 7); p_67 += 1)
            { /* block id: 72 */
                (*l_76) &= (*p_1092->g_112);
            }
        }
        for (p_67 = (-28); (p_67 > 2); p_67 = safe_add_func_uint8_t_u_u(p_67, 1))
        { /* block id: 78 */
            if ((**p_1092->g_111))
                break;
        }
        for (p_67 = 0; p_67 < 10; p_67 += 1)
        {
            for (p_1092->g_3 = 0; p_1092->g_3 < 7; p_1092->g_3 += 1)
            {
                for (l_78 = 0; l_78 < 3; l_78 += 1)
                {
                    l_71[p_67][p_1092->g_3][l_78] = &p_1092->g_107;
                }
            }
        }
    }
    return (*p_1092->g_111);
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1093;
    struct S0* p_1092 = &c_1093;
    struct S0 c_1094 = {
        0x7FAB8C3AL, // p_1092->g_3
        {0x277C8748L,0x7A2FAFD1L,0x277C8748L,0x277C8748L,0x7A2FAFD1L,0x277C8748L,0x277C8748L,0x7A2FAFD1L,0x277C8748L,0x277C8748L}, // p_1092->g_4
        0x3E86F8C7L, // p_1092->g_5
        &p_1092->g_5, // p_1092->g_6
        (-7L), // p_1092->g_13
        (-1L), // p_1092->g_14
        0x5B04L, // p_1092->g_40
        (void*)0, // p_1092->g_73
        0x6352544EL, // p_1092->g_75
        0x1DL, // p_1092->g_100
        {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)}, // p_1092->g_101
        (void*)0, // p_1092->g_107
        (void*)0, // p_1092->g_109
        &p_1092->g_14, // p_1092->g_112
        &p_1092->g_112, // p_1092->g_111
        &p_1092->g_112, // p_1092->g_117
        {2L,2L,2L,2L,2L,2L,2L,2L,2L}, // p_1092->g_163
        0L, // p_1092->g_166
        {{&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75},{&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75,&p_1092->g_75}}, // p_1092->g_176
        &p_1092->g_75, // p_1092->g_177
        0UL, // p_1092->g_197
        5L, // p_1092->g_205
        {(-2L),(-2L),(-2L),(-2L)}, // p_1092->g_209
        4294967291UL, // p_1092->g_212
        &p_1092->g_101[7], // p_1092->g_235
        &p_1092->g_235, // p_1092->g_234
        &p_1092->g_234, // p_1092->g_233
        &p_1092->g_4[6], // p_1092->g_275
        0x5929FAF4L, // p_1092->g_279
        18446744073709551613UL, // p_1092->g_281
        {6UL,0UL,6UL,6UL,0UL,6UL,6UL}, // p_1092->g_292
        (-1L), // p_1092->g_297
        (-1L), // p_1092->g_312
        0x2789A4CDL, // p_1092->g_313
        {4UL,0x1FL,4UL,4UL,0x1FL,4UL,4UL,0x1FL,4UL,4UL}, // p_1092->g_342
        1UL, // p_1092->g_358
        {{&p_1092->g_358,&p_1092->g_358},{&p_1092->g_358,&p_1092->g_358},{&p_1092->g_358,&p_1092->g_358},{&p_1092->g_358,&p_1092->g_358},{&p_1092->g_358,&p_1092->g_358},{&p_1092->g_358,&p_1092->g_358},{&p_1092->g_358,&p_1092->g_358},{&p_1092->g_358,&p_1092->g_358},{&p_1092->g_358,&p_1092->g_358},{&p_1092->g_358,&p_1092->g_358}}, // p_1092->g_357
        &p_1092->g_357[8][0], // p_1092->g_356
        {{&p_1092->g_356,&p_1092->g_356},{&p_1092->g_356,&p_1092->g_356},{&p_1092->g_356,&p_1092->g_356},{&p_1092->g_356,&p_1092->g_356},{&p_1092->g_356,&p_1092->g_356},{&p_1092->g_356,&p_1092->g_356},{&p_1092->g_356,&p_1092->g_356},{&p_1092->g_356,&p_1092->g_356}}, // p_1092->g_359
        &p_1092->g_279, // p_1092->g_399
        {&p_1092->g_399,&p_1092->g_399,&p_1092->g_399,&p_1092->g_399,&p_1092->g_399,&p_1092->g_399,&p_1092->g_399,&p_1092->g_399}, // p_1092->g_398
        6L, // p_1092->g_427
        {{0L,0x7DDB6633L,0L,0L,0x7DDB6633L,0L,0L,0x7DDB6633L},{0L,0x7DDB6633L,0L,0L,0x7DDB6633L,0L,0L,0x7DDB6633L},{0L,0x7DDB6633L,0L,0L,0x7DDB6633L,0L,0L,0x7DDB6633L},{0L,0x7DDB6633L,0L,0L,0x7DDB6633L,0L,0L,0x7DDB6633L},{0L,0x7DDB6633L,0L,0L,0x7DDB6633L,0L,0L,0x7DDB6633L},{0L,0x7DDB6633L,0L,0L,0x7DDB6633L,0L,0L,0x7DDB6633L},{0L,0x7DDB6633L,0L,0L,0x7DDB6633L,0L,0L,0x7DDB6633L},{0L,0x7DDB6633L,0L,0L,0x7DDB6633L,0L,0L,0x7DDB6633L}}, // p_1092->g_477
        (-10L), // p_1092->g_522
        &p_1092->g_399, // p_1092->g_545
        &p_1092->g_545, // p_1092->g_544
        &p_1092->g_544, // p_1092->g_543
        0x3A9BAECBL, // p_1092->g_672
        0x5DD68BD0L, // p_1092->g_689
        &p_1092->g_205, // p_1092->g_787
        1UL, // p_1092->g_847
        &p_1092->g_427, // p_1092->g_932
        0xFB9D5866L, // p_1092->g_1016
        4UL, // p_1092->g_1073
        0, // p_1092->v_collective
        sequence_input[get_global_id(0)], // p_1092->global_0_offset
        sequence_input[get_global_id(1)], // p_1092->global_1_offset
        sequence_input[get_global_id(2)], // p_1092->global_2_offset
        sequence_input[get_local_id(0)], // p_1092->local_0_offset
        sequence_input[get_local_id(1)], // p_1092->local_1_offset
        sequence_input[get_local_id(2)], // p_1092->local_2_offset
        sequence_input[get_group_id(0)], // p_1092->group_0_offset
        sequence_input[get_group_id(1)], // p_1092->group_1_offset
        sequence_input[get_group_id(2)], // p_1092->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1093 = c_1094;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1092);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1092->g_3, "p_1092->g_3", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1092->g_4[i], "p_1092->g_4[i]", print_hash_value);

    }
    transparent_crc(p_1092->g_5, "p_1092->g_5", print_hash_value);
    transparent_crc(p_1092->g_13, "p_1092->g_13", print_hash_value);
    transparent_crc(p_1092->g_14, "p_1092->g_14", print_hash_value);
    transparent_crc(p_1092->g_40, "p_1092->g_40", print_hash_value);
    transparent_crc(p_1092->g_75, "p_1092->g_75", print_hash_value);
    transparent_crc(p_1092->g_100, "p_1092->g_100", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1092->g_101[i], "p_1092->g_101[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1092->g_163[i], "p_1092->g_163[i]", print_hash_value);

    }
    transparent_crc(p_1092->g_166, "p_1092->g_166", print_hash_value);
    transparent_crc(p_1092->g_197, "p_1092->g_197", print_hash_value);
    transparent_crc(p_1092->g_205, "p_1092->g_205", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1092->g_209[i], "p_1092->g_209[i]", print_hash_value);

    }
    transparent_crc(p_1092->g_212, "p_1092->g_212", print_hash_value);
    transparent_crc(p_1092->g_279, "p_1092->g_279", print_hash_value);
    transparent_crc(p_1092->g_281, "p_1092->g_281", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1092->g_292[i], "p_1092->g_292[i]", print_hash_value);

    }
    transparent_crc(p_1092->g_297, "p_1092->g_297", print_hash_value);
    transparent_crc(p_1092->g_312, "p_1092->g_312", print_hash_value);
    transparent_crc(p_1092->g_313, "p_1092->g_313", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1092->g_342[i], "p_1092->g_342[i]", print_hash_value);

    }
    transparent_crc(p_1092->g_358, "p_1092->g_358", print_hash_value);
    transparent_crc(p_1092->g_427, "p_1092->g_427", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1092->g_477[i][j], "p_1092->g_477[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1092->g_522, "p_1092->g_522", print_hash_value);
    transparent_crc(p_1092->g_672, "p_1092->g_672", print_hash_value);
    transparent_crc(p_1092->g_689, "p_1092->g_689", print_hash_value);
    transparent_crc(p_1092->g_847, "p_1092->g_847", print_hash_value);
    transparent_crc(p_1092->g_1016, "p_1092->g_1016", print_hash_value);
    transparent_crc(p_1092->g_1073, "p_1092->g_1073", print_hash_value);
    transparent_crc(p_1092->v_collective, "p_1092->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
