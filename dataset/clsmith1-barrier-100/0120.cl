// ---fake_divergence ---inter_thread_comm -g 43,21,3 -l 43,1,1
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

__constant uint32_t permutations[10][43] = {
{25,42,13,9,3,24,30,41,36,34,12,40,17,10,29,26,27,19,7,4,5,14,18,11,0,2,21,38,35,1,20,39,32,28,22,6,8,16,15,23,31,37,33}, // permutation 0
{20,34,17,36,41,1,13,23,11,27,12,28,8,16,37,26,15,39,31,22,18,14,40,7,6,33,19,24,2,30,21,5,10,25,35,4,38,42,29,9,32,0,3}, // permutation 1
{5,2,18,11,21,12,39,26,25,1,10,27,37,32,9,41,16,30,36,31,6,38,7,22,19,17,35,34,15,24,8,14,0,33,20,13,42,3,4,28,29,40,23}, // permutation 2
{17,37,38,10,23,28,33,7,2,11,6,42,25,32,30,21,16,40,4,12,24,13,36,3,31,34,22,27,41,15,39,26,8,29,0,20,5,9,19,18,35,1,14}, // permutation 3
{40,18,31,24,28,27,17,37,1,38,13,12,0,19,29,39,22,36,32,35,30,21,8,2,33,10,5,14,15,9,4,7,6,25,23,20,3,26,41,42,16,11,34}, // permutation 4
{27,30,23,42,34,40,33,29,21,7,28,17,5,38,26,19,14,8,6,22,25,3,41,12,15,32,37,36,20,35,39,11,13,2,31,9,10,18,1,24,16,4,0}, // permutation 5
{38,13,35,26,1,16,6,39,19,32,9,11,18,25,29,7,34,14,37,31,17,36,23,24,0,42,41,28,3,21,4,20,5,22,2,10,33,30,12,8,15,40,27}, // permutation 6
{1,14,22,30,31,15,13,26,37,35,18,29,11,25,28,27,24,9,34,38,19,3,7,33,32,39,21,4,16,0,5,12,42,17,2,40,41,8,10,23,6,36,20}, // permutation 7
{24,26,6,22,20,30,8,2,3,29,34,5,19,14,21,36,11,0,35,7,25,18,16,39,9,40,38,41,32,12,10,23,13,28,42,37,31,1,15,17,4,27,33}, // permutation 8
{41,11,19,3,2,28,17,4,32,10,42,0,24,9,40,8,13,18,39,37,29,16,31,23,1,26,15,6,22,34,33,20,12,7,30,35,14,25,21,5,27,38,36} // permutation 9
};

// Seed: 120

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    int32_t g_3[6][7];
    volatile int32_t g_6;
    int32_t g_7;
    int32_t g_11;
    uint16_t g_12;
    int64_t g_54;
    uint8_t g_58;
    uint8_t g_66[3];
    uint8_t *g_65;
    volatile int32_t *g_70;
    volatile int32_t **g_69;
    uint8_t g_72[10][2];
    int16_t g_87;
    volatile int32_t * volatile * volatile g_101;
    int8_t g_115;
    uint32_t g_117[8];
    int8_t g_140;
    uint8_t g_143;
    int32_t *g_154[2];
    uint32_t g_173;
    uint64_t g_235;
    volatile int8_t g_239;
    volatile int8_t *g_238;
    volatile int8_t * volatile * volatile g_237;
    int64_t g_244;
    volatile uint8_t g_251;
    uint32_t g_279;
    uint8_t **g_319[3][2][8];
    uint8_t ***g_318;
    uint8_t ****g_317;
    int8_t g_324;
    int64_t *g_346;
    int64_t * volatile * volatile g_345;
    int32_t **g_382;
    int32_t ** volatile g_385;
    int32_t g_387;
    int32_t g_460;
    uint16_t g_486;
    int32_t *g_531[2];
    int32_t ** volatile g_530;
    int16_t g_552;
    int32_t g_618;
    int32_t * volatile g_617;
    int32_t ** volatile g_627;
    int32_t * volatile g_647;
    int8_t *** volatile g_653;
    int32_t ***g_800;
    int32_t ****g_799;
    uint64_t *g_814;
    uint64_t **g_813;
    uint32_t g_847;
    uint32_t *g_846;
    uint32_t * volatile *g_845[6];
    int8_t g_1031;
    int64_t g_1086[5][1][3];
    uint32_t g_1105;
    int64_t g_1145;
    uint32_t g_1184;
    volatile uint8_t g_1206;
    uint32_t **g_1233[1];
    int32_t *g_1264[9];
    int32_t **g_1263;
    uint16_t g_1322[6][8];
    int32_t ** volatile g_1357;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_1358);
int32_t * func_16(int32_t  p_17, int32_t * p_18, struct S0 * p_1358);
int32_t  func_19(uint8_t  p_20, int32_t * p_21, int64_t  p_22, int32_t * p_23, struct S0 * p_1358);
uint8_t  func_24(int32_t * p_25, int8_t  p_26, int32_t * p_27, uint32_t  p_28, struct S0 * p_1358);
int32_t * func_29(int32_t * p_30, int32_t * p_31, int32_t * p_32, int32_t * p_33, struct S0 * p_1358);
int32_t * func_34(int8_t  p_35, struct S0 * p_1358);
int32_t  func_36(uint32_t  p_37, struct S0 * p_1358);
int32_t * func_41(uint32_t  p_42, int32_t * p_43, int32_t * p_44, int32_t  p_45, int32_t * p_46, struct S0 * p_1358);
int32_t * func_48(int32_t ** p_49, uint8_t  p_50, struct S0 * p_1358);
uint32_t  func_51(int16_t  p_52, uint8_t  p_53, struct S0 * p_1358);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1358->g_3 p_1358->g_7 p_1358->g_12 p_1358->g_2 p_1358->g_486 p_1358->g_1263 p_1358->g_1264 p_1358->g_387
 * writes: p_1358->g_3 p_1358->g_7 p_1358->g_12 p_1358->g_486
 */
int32_t  func_1(struct S0 * p_1358)
{ /* block id: 4 */
    int32_t *l_651 = &p_1358->g_3[2][3];
    int32_t *l_1075[9] = {&p_1358->g_3[5][1],&p_1358->g_3[5][1],&p_1358->g_3[5][1],&p_1358->g_3[5][1],&p_1358->g_3[5][1],&p_1358->g_3[5][1],&p_1358->g_3[5][1],&p_1358->g_3[5][1],&p_1358->g_3[5][1]};
    int32_t *l_1115 = &p_1358->g_3[1][6];
    uint32_t l_1130 = 0UL;
    int64_t l_1142 = 9L;
    uint8_t l_1183 = 0x1FL;
    int8_t l_1191 = 0x1EL;
    int32_t l_1249 = 0L;
    int32_t *****l_1300 = (void*)0;
    uint8_t **l_1320[9] = {&p_1358->g_65,(void*)0,&p_1358->g_65,&p_1358->g_65,(void*)0,&p_1358->g_65,&p_1358->g_65,(void*)0,&p_1358->g_65};
    int i;
    for (p_1358->g_3[2][3] = (-20); (p_1358->g_3[2][3] != (-2)); p_1358->g_3[2][3]++)
    { /* block id: 7 */
        int16_t l_15[4] = {0x441AL,0x441AL,0x441AL,0x441AL};
        int32_t *l_1052 = &p_1358->g_7;
        int i;
        for (p_1358->g_7 = 0; (p_1358->g_7 <= (-21)); --p_1358->g_7)
        { /* block id: 10 */
            int32_t *l_10 = &p_1358->g_11;
            p_1358->g_12++;
        }
        p_1358->g_7 |= p_1358->g_2;
        for (p_1358->g_7 = 0; (p_1358->g_7 <= 3); p_1358->g_7 += 1)
        { /* block id: 16 */
            int32_t *l_649 = &p_1358->g_3[2][3];
            int32_t **l_648 = &l_649;
            int32_t *l_650 = &p_1358->g_3[5][5];
            int i;
            (1 + 1);
        }
    }
    for (p_1358->g_486 = 0; (p_1358->g_486 == 2); p_1358->g_486 = safe_add_func_uint32_t_u_u(p_1358->g_486, 3))
    { /* block id: 507 */
        int8_t *l_1110 = &p_1358->g_115;
        int32_t *l_1113 = &p_1358->g_11;
        int32_t *l_1114 = &p_1358->g_7;
        int16_t l_1120 = (-10L);
        int32_t l_1239 = 0x56DEBC80L;
        int32_t l_1240 = (-8L);
        int32_t l_1241[6][9][4] = {{{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)}},{{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)}},{{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)}},{{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)}},{{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)}},{{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)},{1L,0L,1L,(-4L)}}};
        uint32_t l_1256 = 1UL;
        int32_t *****l_1299 = &p_1358->g_799;
        uint16_t *l_1305 = &p_1358->g_12;
        uint8_t *l_1334 = &p_1358->g_72[8][1];
        uint32_t l_1342 = 0xFDD0E244L;
        int i, j, k;
        (1 + 1);
    }
    return (**p_1358->g_1263);
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_385 p_1358->g_154 p_1358->g_1105 p_1358->g_72 p_1358->g_627
 * writes: p_1358->g_54 p_1358->g_279 p_1358->g_1105 p_1358->g_618
 */
int32_t * func_16(int32_t  p_17, int32_t * p_18, struct S0 * p_1358)
{ /* block id: 485 */
    int64_t *l_1076 = (void*)0;
    int8_t l_1077 = 0x2CL;
    int64_t *l_1078 = &p_1358->g_54;
    int32_t *l_1081 = &p_1358->g_618;
    int32_t *l_1082 = &p_1358->g_460;
    int32_t *l_1083 = (void*)0;
    int32_t *l_1084 = &p_1358->g_618;
    int32_t *l_1085[2];
    uint8_t l_1087 = 0x28L;
    uint8_t l_1092 = 0xE4L;
    int32_t **l_1099 = &l_1083;
    uint32_t *l_1102 = &p_1358->g_279;
    uint32_t *l_1103 = (void*)0;
    uint32_t *l_1104 = &p_1358->g_1105;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1085[i] = (void*)0;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_1358->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 43)), permutations[(safe_mod_func_uint32_t_u_u((l_1076 == ((((*l_1078) = l_1077) == (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), 0x3EL))) , l_1078)), 10))][(safe_mod_func_uint32_t_u_u(p_1358->tid, 43))]));
    ++l_1087;
    (*l_1084) = (safe_add_func_uint64_t_u_u((l_1092 <= (safe_mul_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(((safe_mod_func_uint32_t_u_u(((((*l_1099) = func_29(l_1085[0], (*p_1358->g_385), ((*l_1099) = (l_1082 = (p_18 = &p_17))), l_1085[0], p_1358)) == &p_17) < (safe_mod_func_uint32_t_u_u(((*l_1102) = GROUP_DIVERGE(1, 1)), ((*l_1104)++)))), (((&l_1092 == &l_1087) || 0x00L) , p_17))) , 0x5259L), p_1358->g_72[4][0])) ^ 4L), GROUP_DIVERGE(2, 1)))), 18446744073709551615UL));
    return (*p_1358->g_627);
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_235 p_1358->g_317 p_1358->g_318 p_1358->g_460 p_1358->g_66 p_1358->g_647
 * writes: p_1358->g_235 p_1358->g_54
 */
int32_t  func_19(uint8_t  p_20, int32_t * p_21, int64_t  p_22, int32_t * p_23, struct S0 * p_1358)
{ /* block id: 476 */
    uint8_t ***l_1063 = (void*)0;
    int32_t l_1064 = 0x1F508EC1L;
    int32_t l_1067 = 0x519F2E67L;
    int32_t *l_1068 = (void*)0;
    int32_t *l_1069 = &p_1358->g_11;
    int32_t *l_1070[3][8];
    int16_t l_1071[8] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
    uint16_t l_1072 = 0xC0A3L;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
            l_1070[i][j] = (void*)0;
    }
    for (p_1358->g_235 = (-5); (p_1358->g_235 >= 6); p_1358->g_235 = safe_add_func_uint64_t_u_u(p_1358->g_235, 8))
    { /* block id: 479 */
        int64_t *l_1065 = &p_1358->g_54;
        int32_t l_1066 = 0x449C84CFL;
        l_1067 |= (safe_lshift_func_uint8_t_u_u((FAKE_DIVERGE(p_1358->group_0_offset, get_group_id(0), 10) == (safe_div_func_uint32_t_u_u(((safe_mod_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_u(1UL, 3)) , (*p_1358->g_317)) == l_1063), p_1358->g_460)) >= ((((((*l_1065) = l_1064) & 1UL) > (l_1066 > (l_1066 , l_1066))) , p_1358->g_66[1]) , 1L)), 4294967295UL))), 4));
    }
    --l_1072;
    return (*p_1358->g_647);
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_54 p_1358->g_617 p_1358->g_618 p_1358->g_3 p_1358->g_66 p_1358->g_317 p_1358->g_318 p_1358->g_385 p_1358->g_154 p_1358->g_87 p_1358->g_117 p_1358->g_2 p_1358->g_65 p_1358->g_6 p_1358->g_140 p_1358->g_115 p_1358->g_387 p_1358->g_comm_values p_1358->l_comm_values p_1358->g_58 p_1358->g_530 p_1358->g_531 p_1358->g_324 p_1358->g_238 p_1358->g_239 p_1358->g_143 p_1358->g_486 p_1358->g_12 p_1358->g_813 p_1358->g_11 p_1358->g_237 p_1358->g_235 p_1358->g_814 p_1358->g_845 p_1358->g_244 p_1358->g_552 p_1358->g_72 p_1358->g_173 p_1358->g_69 p_1358->g_279 p_1358->g_847 p_1358->g_647 p_1358->g_627 p_1358->g_1031 p_1358->g_460
 * writes: p_1358->g_54 p_1358->g_618 p_1358->g_154 p_1358->g_387 p_1358->g_318 p_1358->g_comm_values p_1358->g_58 p_1358->g_66 p_1358->g_87 p_1358->g_279 p_1358->g_799 p_1358->g_11 p_1358->g_324 p_1358->g_173 p_1358->g_12 p_1358->g_460 p_1358->g_70 p_1358->g_800 p_1358->g_115 p_1358->g_140 p_1358->g_846 p_1358->g_552 p_1358->g_65
 */
uint8_t  func_24(int32_t * p_25, int8_t  p_26, int32_t * p_27, uint32_t  p_28, struct S0 * p_1358)
{ /* block id: 288 */
    uint8_t l_660 = 0x6AL;
    int16_t l_667 = 0x0C0DL;
    int32_t l_679 = 0x55A47584L;
    uint64_t *l_684 = (void*)0;
    int32_t l_767[5][4][1] = {{{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL}},{{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL}},{{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL}},{{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL}},{{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL},{0x3AE74EAAL}}};
    int8_t l_772 = 0x36L;
    int32_t l_773 = (-4L);
    int32_t l_875[2];
    int64_t **l_1002[6][7] = {{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346}};
    uint32_t l_1011 = 0xC4E0788DL;
    uint8_t *l_1023[5][6][6] = {{{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58}},{{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58}},{{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58}},{{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58}},{{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58},{&p_1358->g_72[5][0],&p_1358->g_72[5][0],(void*)0,&p_1358->g_72[7][1],&p_1358->g_66[1],&p_1358->g_58}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_875[i] = 0x094D6B11L;
    for (p_1358->g_54 = (-21); (p_1358->g_54 != 2); p_1358->g_54++)
    { /* block id: 291 */
        int16_t l_658 = 0x122EL;
        int32_t *l_659[6] = {&p_1358->g_460,&p_1358->g_460,&p_1358->g_460,&p_1358->g_460,&p_1358->g_460,&p_1358->g_460};
        uint64_t l_680[2][10] = {{0x8262413ABFC2BA30L,0UL,0UL,0x8262413ABFC2BA30L,0x8262413ABFC2BA30L,0UL,0UL,0x8262413ABFC2BA30L,0x8262413ABFC2BA30L,0UL},{0x8262413ABFC2BA30L,0UL,0UL,0x8262413ABFC2BA30L,0x8262413ABFC2BA30L,0UL,0UL,0x8262413ABFC2BA30L,0x8262413ABFC2BA30L,0UL}};
        uint8_t ***l_690 = (void*)0;
        int32_t *l_758 = &p_1358->g_11;
        uint8_t *****l_859 = &p_1358->g_317;
        int32_t ***l_871[3];
        int i, j;
        for (i = 0; i < 3; i++)
            l_871[i] = &p_1358->g_382;
        l_660 = l_658;
        if (l_660)
        { /* block id: 293 */
            (*p_1358->g_617) |= l_660;
        }
        else
        { /* block id: 295 */
            uint32_t l_661 = 0x7AC3D794L;
            int32_t *l_662[2][7] = {{&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5]},{&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5],&p_1358->g_3[5][5]}};
            uint16_t l_788[2];
            int64_t l_810[9][7] = {{(-1L),(-4L),1L,0x4FA7F3251EBE654FL,(-6L),(-1L),0x4FA7F3251EBE654FL},{(-1L),(-4L),1L,0x4FA7F3251EBE654FL,(-6L),(-1L),0x4FA7F3251EBE654FL},{(-1L),(-4L),1L,0x4FA7F3251EBE654FL,(-6L),(-1L),0x4FA7F3251EBE654FL},{(-1L),(-4L),1L,0x4FA7F3251EBE654FL,(-6L),(-1L),0x4FA7F3251EBE654FL},{(-1L),(-4L),1L,0x4FA7F3251EBE654FL,(-6L),(-1L),0x4FA7F3251EBE654FL},{(-1L),(-4L),1L,0x4FA7F3251EBE654FL,(-6L),(-1L),0x4FA7F3251EBE654FL},{(-1L),(-4L),1L,0x4FA7F3251EBE654FL,(-6L),(-1L),0x4FA7F3251EBE654FL},{(-1L),(-4L),1L,0x4FA7F3251EBE654FL,(-6L),(-1L),0x4FA7F3251EBE654FL},{(-1L),(-4L),1L,0x4FA7F3251EBE654FL,(-6L),(-1L),0x4FA7F3251EBE654FL}};
            int64_t *l_872 = &l_810[2][4];
            int32_t l_873 = 0x49588F43L;
            int64_t l_874 = 4L;
            int8_t *l_902 = (void*)0;
            int8_t **l_901 = &l_902;
            int8_t ***l_900 = &l_901;
            int32_t l_930 = 1L;
            uint32_t l_932 = 0xE4837005L;
            uint16_t l_959 = 6UL;
            uint8_t *l_1024 = &p_1358->g_58;
            int i, j;
            for (i = 0; i < 2; i++)
                l_788[i] = 0UL;
            if (l_661)
            { /* block id: 296 */
                int32_t **l_663 = (void*)0;
                int32_t **l_664 = &p_1358->g_154[1];
                int64_t *l_670 = (void*)0;
                int64_t *l_671 = (void*)0;
                int64_t *l_672 = (void*)0;
                int64_t *l_673 = (void*)0;
                int64_t *l_674 = (void*)0;
                int64_t *l_675 = (void*)0;
                int64_t *l_676 = (void*)0;
                int64_t *l_677 = (void*)0;
                int64_t *l_678[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int8_t l_693 = (-1L);
                uint64_t *l_698 = &p_1358->g_235;
                uint64_t l_748[2][4] = {{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL}};
                int16_t l_756 = 1L;
                int32_t l_759 = 0x50167514L;
                int32_t l_760 = 0L;
                int32_t l_764 = 0x437CDA60L;
                int32_t l_765 = 0x1ACF950EL;
                int32_t l_770 = 1L;
                int i, j;
                if (l_661)
                    break;
                (*l_664) = l_662[0][2];
                for (p_1358->g_387 = 0; (p_1358->g_387 < (-22)); --p_1358->g_387)
                { /* block id: 301 */
                    l_667 = (*p_27);
                    return p_28;
                }
                if ((safe_add_func_int64_t_s_s((l_679 = (0x5915L && p_1358->g_66[0])), l_680[1][3])))
                { /* block id: 306 */
                    int16_t l_685 = (-2L);
                    int32_t l_697 = 0x66D24D4AL;
                    int32_t l_699 = 0x7FE01B98L;
                    int16_t *l_706 = (void*)0;
                    int16_t *l_707 = &l_667;
                    int32_t l_740 = (-1L);
                    uint16_t l_741[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_741[i] = 0x200BL;
                    for (p_1358->g_387 = 0; (p_1358->g_387 < (-27)); p_1358->g_387--)
                    { /* block id: 309 */
                        uint16_t l_683 = 65526UL;
                        int32_t *l_692 = &p_1358->g_387;
                        int32_t **l_691 = &l_692;
                        uint64_t *l_694 = (void*)0;
                        uint64_t *l_695 = (void*)0;
                        uint64_t *l_696 = &l_680[1][0];
                        (*l_664) = p_27;
                        l_683 ^= (*p_27);
                        l_699 |= ((*p_1358->g_617) = ((l_684 == ((p_1358->g_comm_values[p_1358->tid] = (!((((((l_697 = ((l_685 & (safe_mod_func_uint64_t_u_u(18446744073709551615UL, ((*l_696) = (((safe_add_func_uint32_t_u_u(((&p_1358->g_387 == ((*l_691) = (((l_690 == ((*p_1358->g_317) = (*p_1358->g_317))) | p_26) , func_29(l_662[0][2], p_25, p_25, (*p_1358->g_385), p_1358)))) , l_693), p_1358->g_87)) , p_26) & 4294967295UL))))) || 0x1EL)) , p_26) == (-10L)) >= (*p_27)) || 0x5D929341A7B223C9L) >= 0xC999DF5FD9420DF5L))) , l_698)) <= p_28));
                    }
                    l_679 ^= ((safe_lshift_func_int16_t_s_s(((p_28 && ((((*p_1358->g_65) = ((((((((-9L) < (-2L)) && (((safe_mul_func_int16_t_s_s(((*l_707) = (safe_mul_func_uint16_t_u_u(p_1358->g_117[1], p_26))), (((&l_693 != ((safe_add_func_uint64_t_u_u((((safe_div_func_uint32_t_u_u((((!p_1358->g_2) <= ((-3L) & (((*l_664) = l_659[3]) != (void*)0))) <= l_685), l_685)) | p_28) , 18446744073709551612UL), p_1358->g_3[2][3])) , (void*)0)) , (void*)0) == (void*)0))) || p_26) ^ p_26)) & l_685) && p_28) > 0UL) <= 1L) == p_1358->g_87)) , p_1358->g_6) , 0x4BDBL)) && GROUP_DIVERGE(2, 1)), p_1358->g_140)) , (*p_27));
                    l_697 &= (safe_add_func_uint8_t_u_u(((p_28 > (((safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u(((*p_1358->g_65) = (((safe_sub_func_uint16_t_u_u((!(safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((l_699 = p_1358->g_115) & ((safe_mod_func_uint8_t_u_u((safe_div_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_1358->global_0_offset, get_global_id(0), 10), p_1358->g_387)), ((*l_707) |= (safe_add_func_int32_t_s_s(1L, (((!p_26) , 0x304BACFAL) , (safe_sub_func_int8_t_s_s(p_26, (((safe_mod_func_uint32_t_u_u(3UL, 0x30753B39L)) || (*p_27)) || 0x2C44L))))))))), p_28)) > p_1358->g_2)), p_28)), 65531UL))), l_740)) < 0x4257D5903C8E3550L) ^ p_1358->g_comm_values[p_1358->tid])), l_741[4])), 4)), p_1358->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1358->tid, 43))])) , (void*)0) == l_659[2])) , (*p_1358->g_65)), p_26));
                }
                else
                { /* block id: 328 */
                    uint64_t *l_753[6][2][5];
                    int32_t l_754 = (-10L);
                    uint16_t l_755 = 1UL;
                    int32_t *l_757 = &p_1358->g_3[4][0];
                    int32_t l_761 = 0x6BB760A4L;
                    int32_t l_762 = 0x5D0E4553L;
                    int32_t l_763 = 0x4EBC8FFEL;
                    int32_t l_766 = 1L;
                    int32_t l_768 = 0x422AB80BL;
                    int32_t l_769 = 0x5FB5B09CL;
                    int32_t l_771[8];
                    uint32_t l_774 = 0UL;
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 2; j++)
                        {
                            for (k = 0; k < 5; k++)
                                l_753[i][j][k] = (void*)0;
                        }
                    }
                    for (i = 0; i < 8; i++)
                        l_771[i] = 0x6724599FL;
                    (*l_664) = (void*)0;
                    if (l_679)
                        continue;
                    (*l_664) = func_29((*p_1358->g_530), func_29(func_29(((*l_664) = func_29(p_27, (p_25 = p_25), &l_679, (((safe_mod_func_int8_t_s_s(((l_679 = (((0L < (safe_sub_func_uint64_t_u_u(((((safe_div_func_int32_t_s_s(1L, (-9L))) > l_748[1][1]) , (safe_add_func_int16_t_s_s((((safe_mod_func_uint64_t_u_u((+((l_754 = 18446744073709551609UL) , 0x45C0357E8D400A8AL)), p_1358->g_324)) < p_1358->g_54) || (-1L)), l_755))) || l_756), p_26))) , p_27) != l_757)) | (*p_27)), 0x3BL)) < 0x35421889CB33AF90L) , &l_679), p_1358)), p_27, l_662[0][2], p_27, p_1358), &p_1358->g_618, p_27, &p_1358->g_11, p_1358), &p_1358->g_3[0][6], l_758, p_1358);
                    l_774++;
                }
            }
            else
            { /* block id: 338 */
                int8_t *l_797 = &p_1358->g_324;
                int8_t **l_796[5];
                int8_t ***l_795 = &l_796[1];
                int32_t l_818 = 2L;
                uint32_t l_842[5][4][6] = {{{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L}},{{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L}},{{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L}},{{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L}},{{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L},{0x4B8EE0A2L,0x6C11CE62L,4294967287UL,0x4B8EE0A2L,4294967295UL,0x9A7821D6L}}};
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_796[i] = &l_797;
                for (p_28 = 0; (p_28 >= 6); p_28 = safe_add_func_uint32_t_u_u(p_28, 4))
                { /* block id: 341 */
                    uint32_t l_779 = 0x59210858L;
                    uint64_t *l_786[2];
                    uint64_t **l_787 = &l_684;
                    uint32_t *l_790 = &p_1358->g_279;
                    int32_t ****l_803 = &p_1358->g_800;
                    int32_t *l_809 = &l_767[0][2][0];
                    uint64_t ***l_815 = &l_787;
                    int64_t *l_823 = &l_810[3][2];
                    uint32_t l_824 = 4294967295UL;
                    uint32_t *l_843[9] = {&p_1358->g_173,&p_1358->g_173,&p_1358->g_173,&p_1358->g_173,&p_1358->g_173,&p_1358->g_173,&p_1358->g_173,&p_1358->g_173,&p_1358->g_173};
                    uint32_t **l_844 = &l_843[7];
                    uint16_t *l_848 = &p_1358->g_12;
                    int16_t *l_849 = &l_667;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_786[i] = &l_680[1][4];
                    ++l_779;
                    if ((safe_lshift_func_uint8_t_u_s((safe_mod_func_int8_t_s_s((*p_1358->g_238), ((l_786[0] == ((*l_787) = &p_1358->g_235)) | ((l_788[0] , (p_26 >= (p_1358->g_87 = l_779))) > p_1358->g_66[1])))), (safe_unary_minus_func_uint8_t_u((((*p_27) <= ((*l_790) = p_1358->g_143)) , 0xF6L))))))
                    { /* block id: 346 */
                        int32_t *****l_798 = (void*)0;
                        int32_t ****l_802 = &p_1358->g_800;
                        int32_t *****l_801 = &l_802;
                        int16_t *l_808 = &l_658;
                        if ((*p_27))
                            break;
                        (*l_758) = (((((void*)0 == l_795) > (((+(((*p_1358->g_65) &= (((*l_801) = (p_1358->g_799 = (void*)0)) != l_803)) || (safe_sub_func_uint32_t_u_u(((*l_790) = p_1358->g_239), p_28)))) || p_1358->g_486) < p_1358->g_12)) && (safe_rshift_func_int16_t_s_u(((*l_808) = (p_1358->g_87 = p_28)), 3))) < 0L);
                        l_809 = p_25;
                    }
                    else
                    { /* block id: 356 */
                        return l_810[4][5];
                    }
                    l_824 &= (l_679 <= (((safe_rshift_func_int8_t_s_u(((((*l_815) = p_1358->g_813) != (((((safe_lshift_func_uint8_t_u_s((5UL > l_818), 6)) == (-1L)) <= (safe_rshift_func_int8_t_s_u((-1L), (safe_add_func_int8_t_s_s((((*l_758) , ((*l_823) = ((void*)0 == &l_660))) , p_28), (**p_1358->g_237)))))) < l_767[4][3][0]) , &p_1358->g_814)) == l_773), p_28)) , 0x4C2DA85EL) , p_28));
                    (*l_758) |= (((safe_div_func_int16_t_s_s(0x3824L, ((*l_849) = (safe_mul_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(((*l_848) = (((p_1358->g_173 = (safe_mod_func_int32_t_s_s((((*l_797) ^= (*p_1358->g_238)) || (((safe_unary_minus_func_int8_t_s((safe_add_func_uint8_t_u_u(((*p_1358->g_65) = (l_818 != (safe_rshift_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u((((0x71F00126B7113DADL & 0x0823AD3374B5E3D9L) & ((l_660 == (0x0F718AC4L && (safe_mul_func_uint8_t_u_u(((0x780DL & p_26) != 0x43F34DB9L), (*p_1358->g_65))))) && (**p_1358->g_237))) , 0xF0L), p_26)) & p_1358->g_235), p_1358->g_140)))), 0x32L)))) < l_842[1][2][2]) < (**p_1358->g_813))), l_767[0][3][0]))) , l_844) == p_1358->g_845[5])), p_1358->g_244)), p_28))))) <= p_28) , 0x2D799628L);
                }
                for (l_660 = 2; (l_660 > 60); ++l_660)
                { /* block id: 371 */
                    for (p_1358->g_460 = (-18); (p_1358->g_460 != (-25)); p_1358->g_460 = safe_sub_func_int16_t_s_s(p_1358->g_460, 1))
                    { /* block id: 374 */
                        int16_t l_856 = 0x79C8L;
                        uint8_t *****l_860 = &p_1358->g_317;
                        (*p_1358->g_69) = ((p_1358->g_552 == ((safe_rshift_func_int16_t_s_s((p_28 != ((void*)0 != p_25)), 0)) ^ ((0x08F8L != (l_856 |= p_1358->g_72[0][0])) < (p_26 <= (l_859 != (p_1358->g_173 , l_860)))))) , (void*)0);
                    }
                }
            }
            l_875[0] = (((((safe_sub_func_uint8_t_u_u(((l_767[0][3][0] = (safe_lshift_func_int8_t_s_u((*p_1358->g_238), ((safe_sub_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(((((safe_mod_func_uint8_t_u_u(((p_26 || GROUP_DIVERGE(1, 1)) <= ((((*l_872) ^= (l_871[1] != (p_1358->g_800 = (void*)0))) && ((l_772 , FAKE_DIVERGE(p_1358->local_0_offset, get_local_id(0), 10)) , (&l_662[0][2] == (void*)0))) , ((FAKE_DIVERGE(p_1358->group_0_offset, get_group_id(0), 10) , (l_679 = l_660)) , (((*l_758) = p_28) > FAKE_DIVERGE(p_1358->local_2_offset, get_local_id(2), 10))))), 255UL)) | 0x7B7FD8DCC05D92C9L) ^ GROUP_DIVERGE(1, 1)) >= 8UL), (-1L))), l_873)) <= l_874)))) & 8UL), 3UL)) > p_28) | 6UL) >= p_1358->g_72[9][1]) <= 8L);
            for (p_1358->g_115 = 0; (p_1358->g_115 <= 5); p_1358->g_115 += 1)
            { /* block id: 388 */
                uint16_t l_906 = 0x51E2L;
                int32_t l_909 = 0x5E412BAFL;
                int32_t l_910 = 0x1F2F26E7L;
                int32_t l_919 = (-2L);
                int32_t l_921 = (-10L);
                int32_t l_923 = (-1L);
                int32_t l_924 = 0x05E2CC1CL;
                int32_t l_925 = 0x48FF8D55L;
                int32_t l_927 = 0x17B7369BL;
                int32_t l_928 = 4L;
                int32_t l_929[6] = {0x3ED47E10L,9L,0x3ED47E10L,0x3ED47E10L,9L,0x3ED47E10L};
                int32_t ***l_984 = &p_1358->g_382;
                uint64_t l_1032 = 0UL;
                int i, j;
                if (((l_684 != p_1358->g_814) & (safe_mul_func_uint8_t_u_u(l_810[(p_1358->g_115 + 3)][(p_1358->g_115 + 1)], p_28))))
                { /* block id: 389 */
                    int8_t *l_880 = &p_1358->g_324;
                    int8_t *l_881 = &l_772;
                    int32_t l_882 = 0x57EC1252L;
                    int64_t *l_885 = &p_1358->g_244;
                    int64_t l_905 = (-6L);
                    int32_t l_907 = (-5L);
                    int32_t l_908 = 0x5E275A8BL;
                    int32_t l_911 = 1L;
                    int32_t l_914 = 0x0F0B90DBL;
                    int32_t l_915 = 1L;
                    int32_t l_916 = 0x61712530L;
                    int32_t l_917 = 1L;
                    int32_t l_920[10][8] = {{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL},{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL},{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL},{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL},{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL},{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL},{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL},{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL},{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL},{8L,0L,0x2F02312FL,0x407B9BE0L,(-1L),0L,0x2399F07EL,0x2F02312FL}};
                    int64_t l_931 = 0x4FE32775B4F216B8L;
                    int i, j;
                    for (p_1358->g_618 = 0; (p_1358->g_618 <= 1); p_1358->g_618 += 1)
                    { /* block id: 392 */
                        (*p_1358->g_69) = (void*)0;
                    }
                    l_882 = ((l_810[(p_1358->g_115 + 2)][p_1358->g_115] = (safe_add_func_uint8_t_u_u(p_28, ((*l_881) ^= ((*l_880) = (*p_1358->g_238)))))) >= p_26);
                    for (p_1358->g_140 = 0; (p_1358->g_140 <= 2); p_1358->g_140 += 1)
                    { /* block id: 401 */
                        int32_t ****l_894 = &p_1358->g_800;
                        uint32_t **l_899 = &p_1358->g_846;
                        int16_t *l_903 = &p_1358->g_552;
                        int16_t *l_904 = &p_1358->g_87;
                        int32_t l_912 = 1L;
                        int32_t l_913 = 0x7635F1D4L;
                        int32_t l_918 = 0L;
                        int32_t l_922 = 0L;
                        int32_t l_926[1][4][8] = {{{0x55C61976L,0x3D20961AL,0x3D20961AL,0x55C61976L,1L,1L,1L,1L},{0x55C61976L,0x3D20961AL,0x3D20961AL,0x55C61976L,1L,1L,1L,1L},{0x55C61976L,0x3D20961AL,0x3D20961AL,0x55C61976L,1L,1L,1L,1L},{0x55C61976L,0x3D20961AL,0x3D20961AL,0x55C61976L,1L,1L,1L,1L}}};
                        int i, j, k;
                        (*l_758) &= (safe_sub_func_int8_t_s_s(((((void*)0 == l_885) , (safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((((*l_904) = ((*l_903) ^= (safe_lshift_func_uint16_t_u_s(((~((((l_871[p_1358->g_140] = l_871[p_1358->g_140]) != ((*l_894) = (void*)0)) , (((p_26 , ((*p_1358->g_65) = (((~(1L < 18446744073709551615UL)) ^ (safe_rshift_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((((p_25 != ((*l_899) = func_29(func_29((*p_1358->g_530), p_27, p_25, &l_873, p_1358), p_27, p_27, p_27, p_1358))) , p_1358->g_117[1]) , &p_1358->g_237) != l_900), FAKE_DIVERGE(p_1358->group_0_offset, get_group_id(0), 10))), GROUP_DIVERGE(1, 1)))) , FAKE_DIVERGE(p_1358->group_2_offset, get_group_id(2), 10)))) > 0x7AL) > FAKE_DIVERGE(p_1358->group_1_offset, get_group_id(1), 10))) <= p_28)) & p_26), 11)))) <= l_905) & (*p_27)), GROUP_DIVERGE(0, 1))), p_26)), GROUP_DIVERGE(1, 1)))) ^ p_26), l_906));
                        l_932--;
                    }
                    for (p_1358->g_552 = 0; (p_1358->g_552 <= 5); p_1358->g_552 += 1)
                    { /* block id: 413 */
                        uint64_t ***l_939 = &p_1358->g_813;
                        int16_t *l_948 = &l_667;
                        uint8_t ******l_949 = &l_859;
                        int32_t l_954 = 3L;
                        (*l_758) |= (safe_add_func_int8_t_s_s((safe_add_func_uint64_t_u_u((&p_1358->g_813 == l_939), l_924)), (((0xA1L > (p_28 , ((safe_rshift_func_int16_t_s_u((l_915 = ((*l_948) ^= ((((safe_sub_func_int8_t_s_s((&p_1358->g_387 == &p_1358->g_387), (((p_26 <= (safe_add_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(0xED47055EL, l_919)), 0x8E1DL))) && p_1358->g_239) <= p_28))) || 0x35C4FC67L) != (-1L)) , 0x004DL))), p_26)) , p_28))) < p_1358->g_486) || p_1358->g_3[2][3])));
                        l_914 = ((((*l_949) = &p_1358->g_317) == &p_1358->g_317) && (safe_sub_func_int8_t_s_s((l_881 != ((((safe_sub_func_int64_t_s_s(p_1358->g_618, (l_954 != ((((*l_758) ^= ((p_1358->g_comm_values[p_1358->tid] > ((p_1358->g_12 >= (safe_mul_func_uint16_t_u_u((((void*)0 == &p_1358->g_346) , l_909), GROUP_DIVERGE(1, 1)))) == l_954)) , 0x24DE3057L)) & p_26) & 0L)))) == p_1358->g_54) != p_1358->g_279) , (void*)0)), p_26)));
                    }
                }
                else
                { /* block id: 421 */
                    int32_t l_957[7] = {(-1L),0x2A40F057L,(-1L),(-1L),0x2A40F057L,(-1L),(-1L)};
                    int32_t l_958 = 1L;
                    int i;
                    l_959--;
                    if ((*p_27))
                        break;
                    return p_26;
                }
                for (p_1358->g_140 = 0; (p_1358->g_140 <= 5); p_1358->g_140 += 1)
                { /* block id: 428 */
                    int16_t *l_966 = &p_1358->g_87;
                    uint16_t *l_967 = &l_788[0];
                    int32_t l_976 = 0x4E9CC827L;
                    uint32_t *l_977 = &l_932;
                    uint8_t *l_985 = &l_660;
                    uint32_t *l_986 = &p_1358->g_279;
                    l_767[0][3][0] = (((safe_rshift_func_int16_t_s_u((((*l_758) = (p_1358->g_143 >= (p_1358->g_140 , ((*l_966) = (safe_div_func_int64_t_s_s(p_26, (-1L))))))) < ((*l_986) = ((p_26 , ((((+((((*l_967)++) <= (safe_mod_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(p_28, 0)), (((((l_875[1] = (safe_rshift_func_int16_t_s_s((l_976 && (--(*l_977))), 7))) > (safe_mul_func_uint8_t_u_u(((*l_985) = (((safe_rshift_func_uint8_t_u_u((!((*p_1358->g_65) = ((p_1358->g_800 = l_984) == (p_1358->g_239 , l_984)))), 5)) || p_1358->g_847) , GROUP_DIVERGE(2, 1))), (-9L)))) <= GROUP_DIVERGE(0, 1)) , (*p_27)) , p_26)))) , (*p_27))) || l_667) , (*p_1358->g_65)) < p_1358->g_140)) , 0x803C28ABL))), p_1358->g_comm_values[p_1358->tid])) | p_28) & p_1358->g_486);
                }
                for (l_930 = 1; (l_930 >= 0); l_930 -= 1)
                { /* block id: 442 */
                    uint64_t **l_989 = (void*)0;
                    int32_t l_1005 = 0x7B7250A5L;
                    int32_t l_1006 = (-1L);
                    int32_t l_1007[10][7] = {{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL},{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL},{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL},{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL},{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL},{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL},{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL},{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL},{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL},{0L,1L,0x7DAC7CD1L,0x3035C132L,0x175C7C7AL,0x3A8F438CL,0x3A8F438CL}};
                    uint8_t *l_1014 = &p_1358->g_66[1];
                    int i, j;
                    p_1358->g_154[l_930] = p_1358->g_154[l_930];
                    for (l_873 = 0; (l_873 <= 5); l_873 += 1)
                    { /* block id: 446 */
                        uint32_t l_1008[9][10][2] = {{{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL}},{{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL}},{{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL}},{{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL}},{{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL}},{{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL}},{{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL}},{{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL}},{{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL},{0xB9F78A71L,4294967295UL}}};
                        uint32_t **l_1020 = &p_1358->g_846;
                        uint32_t ***l_1019 = &l_1020;
                        uint8_t *l_1021 = &p_1358->g_58;
                        uint8_t **l_1022 = &p_1358->g_65;
                        int16_t *l_1025 = &l_658;
                        uint8_t *****l_1028[7] = {&p_1358->g_317,&p_1358->g_317,&p_1358->g_317,&p_1358->g_317,&p_1358->g_317,&p_1358->g_317,&p_1358->g_317};
                        int32_t *l_1035 = &l_1006;
                        int i, j, k;
                        (*l_758) ^= (l_1005 ^= ((&l_684 != l_989) != (safe_mul_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(((**p_1358->g_813) >= (safe_div_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(p_1358->g_72[5][0], ((**p_1358->g_813) & (((safe_mod_func_int64_t_s_s((l_1002[2][6] != (void*)0), ((p_1358->g_66[1] > (safe_div_func_uint16_t_u_u((0L ^ (*p_1358->g_814)), 0x58AAL))) && p_1358->g_72[2][0]))) > l_875[1]) | p_26)))), 0x2720A50E670D8D85L))), p_1358->g_244)), 7)), 0L))));
                        --l_1008[2][1][1];
                        (*l_758) = (!(l_1011 , ((*p_1358->g_647) = ((safe_div_func_uint8_t_u_u((~((0x52L ^ ((((*l_1025) = ((p_26 & p_1358->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1358->tid, 43))]) , (l_1014 == (l_1024 = (l_1023[4][0][0] = ((*l_1022) = ((((safe_lshift_func_int8_t_s_u(((safe_mul_func_uint8_t_u_u((*p_1358->g_65), (((*l_1019) = &p_1358->g_846) == (((((void*)0 != l_872) | 0x1DL) > p_1358->g_143) , (void*)0)))) , (**p_1358->g_237)), 5)) & 0L) | (*l_758)) , l_1021))))))) <= 0x22EBL) ^ (*p_27))) == p_28)), l_1008[0][6][1])) != l_1008[2][1][1]))));
                        (*p_1358->g_627) = func_29(p_27, func_29((*p_1358->g_627), (((safe_div_func_uint16_t_u_u((l_1028[5] != (void*)0), (safe_mod_func_int32_t_s_s(p_1358->g_1031, l_1032)))) , (p_1358->g_66[1] | (((safe_div_func_uint16_t_u_u(0xC27EL, ((*l_1025) &= ((p_1358->g_117[3] || l_875[0]) ^ p_1358->g_235)))) | p_28) <= 7UL))) , p_25), p_25, l_1035, p_1358), &l_767[0][2][0], p_25, p_1358);
                    }
                    if ((*p_1358->g_647))
                        continue;
                    for (l_910 = 0; (l_910 <= 5); l_910 += 1)
                    { /* block id: 463 */
                        int16_t *l_1044 = &l_658;
                        int16_t **l_1045 = &l_1044;
                        int32_t *l_1049 = (void*)0;
                        int32_t **l_1050 = &l_1049;
                        int32_t l_1051 = (-1L);
                        (*l_758) &= ((safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((((((*l_872) = ((0x5FE7L && (safe_div_func_uint8_t_u_u(((1L >= (((((*p_1358->g_65) |= (((*l_1045) = (GROUP_DIVERGE(2, 1) , l_1044)) != ((((((*l_1050) = ((FAKE_DIVERGE(p_1358->group_0_offset, get_group_id(0), 10) & p_28) , ((safe_unary_minus_func_int32_t_s((p_26 & ((FAKE_DIVERGE(p_1358->local_0_offset, get_local_id(0), 10) , (!0x3FFDL)) || ((safe_sub_func_uint8_t_u_u(p_28, (0x6B56L > 0x3104L))) | p_28))))) , l_1049))) == p_25) > GROUP_DIVERGE(2, 1)) & 18446744073709551615UL) , &p_1358->g_87))) & 0xE6L) , p_25) == (void*)0)) >= l_772), 1UL))) == l_1051)) , p_26) == 0x2827102D35C3D0FEL) <= l_1051), (*p_1358->g_238))), p_28)) || (**p_1358->g_237));
                        if ((*p_1358->g_647))
                            continue;
                    }
                }
            }
        }
    }
    return l_875[0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_29(int32_t * p_30, int32_t * p_31, int32_t * p_32, int32_t * p_33, struct S0 * p_1358)
{ /* block id: 285 */
    int8_t **l_652 = (void*)0;
    int8_t ***l_654 = &l_652;
    int32_t *l_655 = (void*)0;
    (*l_654) = l_652;
    return l_655;
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_6 p_1358->g_12 p_1358->g_58 p_1358->g_65 p_1358->g_69 p_1358->g_70 p_1358->g_66 p_1358->g_72 p_1358->g_3 p_1358->g_87 p_1358->g_11 p_1358->g_101 p_1358->g_comm_values p_1358->g_54 p_1358->g_115 p_1358->g_2 p_1358->g_117 p_1358->l_comm_values p_1358->g_143 p_1358->g_173 p_1358->g_7 p_1358->g_237 p_1358->g_244 p_1358->g_251 p_1358->g_279 p_1358->g_238 p_1358->g_239 p_1358->g_140 p_1358->g_317 p_1358->g_324 p_1358->g_318 p_1358->g_345 p_1358->g_382 p_1358->g_385 p_1358->g_530 p_1358->g_531 p_1358->g_154 p_1358->g_235 p_1358->g_460 p_1358->g_617 p_1358->g_618 p_1358->g_627 p_1358->g_647
 * writes: p_1358->g_54 p_1358->g_58 p_1358->g_72 p_1358->g_66 p_1358->g_87 p_1358->g_6 p_1358->g_11 p_1358->g_115 p_1358->g_117 p_1358->g_140 p_1358->g_143 p_1358->g_154 p_1358->g_173 p_1358->g_comm_values p_1358->g_235 p_1358->g_244 p_1358->g_317 p_1358->g_324 p_1358->g_319 p_1358->g_279 p_1358->g_382 p_1358->g_12 p_1358->g_618 p_1358->g_486 p_1358->g_70 p_1358->g_460 p_1358->g_552
 */
int32_t * func_34(int8_t  p_35, struct S0 * p_1358)
{ /* block id: 17 */
    uint32_t l_38 = 0xD97867A7L;
    int32_t *l_624 = (void*)0;
    uint32_t *l_630 = &p_1358->g_279;
    int16_t *l_635 = &p_1358->g_552;
    uint8_t l_640 = 0xB9L;
    uint64_t *l_645 = &p_1358->g_235;
    uint32_t l_646[5] = {0x251785F2L,0x251785F2L,0x251785F2L,0x251785F2L,0x251785F2L};
    int i;
    if (func_36(l_38, p_1358))
    { /* block id: 266 */
        int32_t *l_623[8] = {(void*)0,&p_1358->g_460,(void*)0,(void*)0,&p_1358->g_460,(void*)0,(void*)0,&p_1358->g_460};
        int32_t **l_625 = &l_623[1];
        int i;
        for (p_1358->g_486 = 0; p_1358->g_486 < 2; p_1358->g_486 += 1)
        {
            p_1358->g_154[p_1358->g_486] = (void*)0;
        }
        (*p_1358->g_69) = (void*)0;
        (*l_625) = l_623[1];
    }
    else
    { /* block id: 270 */
        int32_t *l_626 = &p_1358->g_7;
        (*p_1358->g_627) = l_626;
        for (p_1358->g_460 = 0; (p_1358->g_460 != 27); p_1358->g_460 = safe_add_func_uint16_t_u_u(p_1358->g_460, 9))
        { /* block id: 274 */
            return l_626;
        }
    }
    (*p_1358->g_647) = ((--(*l_630)) | (safe_add_func_int16_t_s_s(((*l_635) = 0x3B96L), (safe_div_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((l_640 ^= (**p_1358->g_237)) > ((((GROUP_DIVERGE(1, 1) < (safe_mul_func_uint8_t_u_u(255UL, l_38))) , ((((safe_rshift_func_uint8_t_u_s(1UL, 5)) != ((*l_645) |= l_38)) == l_646[3]) >= 7UL)) <= 0x2045L) < p_35)), p_35)), p_1358->g_87)))));
    return l_624;
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_6 p_1358->g_12 p_1358->g_58 p_1358->g_65 p_1358->g_69 p_1358->g_70 p_1358->g_66 p_1358->g_72 p_1358->g_3 p_1358->g_87 p_1358->g_11 p_1358->g_101 p_1358->g_comm_values p_1358->g_54 p_1358->g_115 p_1358->g_2 p_1358->g_117 p_1358->l_comm_values p_1358->g_143 p_1358->g_173 p_1358->g_7 p_1358->g_237 p_1358->g_244 p_1358->g_251 p_1358->g_279 p_1358->g_238 p_1358->g_239 p_1358->g_140 p_1358->g_317 p_1358->g_324 p_1358->g_318 p_1358->g_345 p_1358->g_382 p_1358->g_385 p_1358->g_530 p_1358->g_531 p_1358->g_154 p_1358->g_235 p_1358->g_460 p_1358->g_617 p_1358->g_618
 * writes: p_1358->g_54 p_1358->g_58 p_1358->g_72 p_1358->g_66 p_1358->g_87 p_1358->g_6 p_1358->g_11 p_1358->g_115 p_1358->g_117 p_1358->g_140 p_1358->g_143 p_1358->g_154 p_1358->g_173 p_1358->g_comm_values p_1358->g_235 p_1358->g_244 p_1358->g_317 p_1358->g_324 p_1358->g_319 p_1358->g_279 p_1358->g_382 p_1358->g_12 p_1358->g_618
 */
int32_t  func_36(uint32_t  p_37, struct S0 * p_1358)
{ /* block id: 18 */
    int32_t *l_39 = (void*)0;
    int32_t l_40 = 0x19FA9EF8L;
    int32_t **l_47 = &l_39;
    uint8_t *l_57 = &p_1358->g_58;
    uint8_t *l_68 = &p_1358->g_66[1];
    uint8_t **l_67 = &l_68;
    int32_t *l_294 = &l_40;
    int8_t *l_583 = &p_1358->g_115;
    int8_t **l_582 = &l_583;
    int32_t l_590[5] = {0x602CD517L,0x602CD517L,0x602CD517L,0x602CD517L,0x602CD517L};
    uint32_t l_592 = 0x8DF5154FL;
    int32_t l_595[5][9][3] = {{{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L}},{{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L}},{{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L}},{{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L}},{{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L},{0x06D7B5DFL,0L,0x513471B7L}}};
    uint16_t *l_609 = (void*)0;
    int64_t *l_616 = &p_1358->g_54;
    int i, j, k;
    l_40 |= 0x626B5CFDL;
    (*l_47) = func_41(((((((*l_47) = (void*)0) == (GROUP_DIVERGE(2, 1) , func_48(l_47, ((*p_1358->g_65) = ((p_1358->g_6 <= (func_51(((((p_1358->g_54 = p_37) | p_37) , p_1358->g_12) ^ ((((safe_add_func_uint8_t_u_u((++(*l_57)), (safe_rshift_func_uint16_t_u_u((!(safe_mul_func_int16_t_s_s(((((p_1358->g_65 == ((*l_67) = l_57)) < ((p_1358->g_69 == &p_1358->g_70) , p_1358->g_12)) , p_1358->g_12) == p_37), 1L))), 15)))) || p_1358->g_58) , (*p_1358->g_69)) != (void*)0)), (*p_1358->g_65), p_1358) , p_1358->g_3[2][3])) ^ 0x2B2FE073L)), p_1358))) < 0xFBC8AC43L) == 5UL) || p_1358->g_66[0]), &l_40, l_294, p_1358->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1358->tid, 43))], &p_1358->g_3[4][5], p_1358);
    for (p_1358->g_140 = 0; (p_1358->g_140 <= (-26)); p_1358->g_140 = safe_sub_func_int8_t_s_s(p_1358->g_140, 8))
    { /* block id: 247 */
        int32_t l_563 = 0x7577B864L;
        int64_t *l_570 = &p_1358->g_54;
        int32_t l_571 = 0x366200C3L;
        int8_t **l_584[6][7];
        int32_t **l_585 = &l_39;
        int32_t l_589 = 0x36DFB0D9L;
        int32_t l_591 = 0x18A176A0L;
        int32_t l_596 = (-1L);
        int32_t l_597 = 0x662CEDA2L;
        int32_t l_598 = 0x2A6B9839L;
        int32_t l_599[4][5] = {{(-1L),(-1L),0x35244467L,0x631ACE6DL,0x6113F799L},{(-1L),(-1L),0x35244467L,0x631ACE6DL,0x6113F799L},{(-1L),(-1L),0x35244467L,0x631ACE6DL,0x6113F799L},{(-1L),(-1L),0x35244467L,0x631ACE6DL,0x6113F799L}};
        uint8_t l_600 = 0xEAL;
        int i, j;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 7; j++)
                l_584[i][j] = &l_583;
        }
        (*l_294) = ((l_563 && p_1358->g_173) >= (safe_lshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((p_37 , p_37), (4294967286UL || l_563))), 10)));
        l_571 |= (((*l_570) = (safe_mod_func_int32_t_s_s(p_37, 0x43680D72L))) & ((**p_1358->g_385) || (~(*l_39))));
        for (p_1358->g_235 = 0; (p_1358->g_235 <= 1); p_1358->g_235 += 1)
        { /* block id: 253 */
            int32_t ***l_586 = &p_1358->g_382;
            int32_t *l_587 = &l_571;
            int32_t *l_588[4][8];
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 8; j++)
                    l_588[i][j] = (void*)0;
            }
            l_571 = 0x4C3844E5L;
            (*l_294) = (safe_add_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((p_1358->g_72[p_1358->g_235][p_1358->g_235] > ((*l_39) <= (safe_rshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s(((((**l_47) == p_1358->g_72[p_1358->g_235][p_1358->g_235]) , p_1358->g_3[5][5]) ^ ((((safe_add_func_uint64_t_u_u((l_582 != l_584[0][4]), (((*l_586) = l_585) != ((p_1358->g_87 != p_1358->g_117[7]) , &p_1358->g_154[1])))) & (**l_585)) >= (*l_39)) == (**l_47))), (*l_39))), p_37)))), 8UL)), p_37));
            l_592++;
            l_600--;
        }
    }
    (*p_1358->g_617) |= (safe_rshift_func_int8_t_s_u((safe_div_func_int16_t_s_s(p_1358->g_comm_values[p_1358->tid], (((((safe_div_func_int64_t_s_s(0x421A2F64F39930DAL, 0x566737CBAB720FC4L)) , &p_1358->g_486) == l_609) || (safe_sub_func_int64_t_s_s(((*l_616) = (0xD7FDL <= (((safe_add_func_uint16_t_u_u((++p_1358->g_12), ((*l_39) ^ (((p_1358->g_460 , (GROUP_DIVERGE(1, 1) , (((*l_294) |= p_37) <= 9UL))) <= p_1358->g_11) , p_37)))) , 0x682095CAE0702F76L) > p_1358->g_66[1]))), 9UL))) , 0x05FCL))), 4));
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_140 p_1358->g_72 p_1358->g_238 p_1358->g_239 p_1358->g_117 p_1358->g_317 p_1358->g_65 p_1358->g_66 p_1358->g_237 p_1358->g_324 p_1358->g_318 p_1358->g_115 p_1358->g_345 p_1358->g_3 p_1358->g_6 p_1358->g_54 p_1358->g_382 p_1358->g_87 p_1358->g_11 p_1358->g_101 p_1358->g_comm_values p_1358->g_2 p_1358->l_comm_values p_1358->g_143 p_1358->g_12 p_1358->g_173 p_1358->g_7 p_1358->g_244 p_1358->g_251 p_1358->g_279 p_1358->g_385 p_1358->g_530 p_1358->g_531 p_1358->g_387
 * writes: p_1358->g_140 p_1358->g_115 p_1358->g_235 p_1358->g_317 p_1358->g_324 p_1358->g_319 p_1358->g_154 p_1358->g_279 p_1358->g_54 p_1358->g_72 p_1358->g_66 p_1358->g_87 p_1358->g_382 p_1358->g_6 p_1358->g_11 p_1358->g_117 p_1358->g_143 p_1358->g_173 p_1358->g_comm_values p_1358->g_244 p_1358->g_387
 */
int32_t * func_41(uint32_t  p_42, int32_t * p_43, int32_t * p_44, int32_t  p_45, int32_t * p_46, struct S0 * p_1358)
{ /* block id: 122 */
    uint8_t **l_313[5];
    uint8_t ***l_312 = &l_313[0];
    uint8_t ****l_311[10] = {&l_312,&l_312,&l_312,&l_312,&l_312,&l_312,&l_312,&l_312,&l_312,&l_312};
    int32_t l_322 = (-7L);
    int32_t l_379 = 0x56EBD7AAL;
    uint32_t l_388 = 0x0D64F735L;
    int32_t l_496[4];
    int32_t ***l_554 = &p_1358->g_382;
    int32_t ***l_556 = (void*)0;
    int32_t l_559 = 0x2BCE252DL;
    int i;
    for (i = 0; i < 5; i++)
        l_313[i] = &p_1358->g_65;
    for (i = 0; i < 4; i++)
        l_496[i] = (-9L);
    for (p_45 = 0; (p_45 > (-8)); --p_45)
    { /* block id: 125 */
        int32_t l_325 = 1L;
        int32_t l_326 = (-1L);
        int32_t l_327 = 0x577ED771L;
        int32_t l_336[8][5][4] = {{{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L}},{{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L}},{{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L}},{{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L}},{{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L}},{{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L}},{{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L}},{{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L},{0x65DB3D0EL,0L,(-6L),0x1AE63A26L}}};
        int32_t ***l_383 = (void*)0;
        int32_t ***l_384 = &p_1358->g_382;
        int32_t *l_386[2][3];
        uint8_t *****l_418[5] = {&l_311[4],&l_311[4],&l_311[4],&l_311[4],&l_311[4]};
        int32_t l_422[9] = {0x4E2F47A9L,0x5A0429A4L,0x4E2F47A9L,0x4E2F47A9L,0x5A0429A4L,0x4E2F47A9L,0x4E2F47A9L,0x5A0429A4L,0x4E2F47A9L};
        uint8_t *l_553[1][9];
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 3; j++)
                l_386[i][j] = &p_1358->g_387;
        }
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 9; j++)
                l_553[i][j] = &p_1358->g_72[5][0];
        }
        for (p_1358->g_140 = 1; (p_1358->g_140 >= 0); p_1358->g_140 -= 1)
        { /* block id: 128 */
            uint64_t l_337 = 1UL;
            int32_t l_341 = 0x5E30AFCAL;
            uint16_t *l_372[2][6][4] = {{{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12}},{{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12},{&p_1358->g_12,(void*)0,&p_1358->g_12,&p_1358->g_12}}};
            int32_t **l_374[5][3][6] = {{{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]}},{{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]}},{{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]}},{{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]}},{{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]},{&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[1],&p_1358->g_154[0],&p_1358->g_154[0],&p_1358->g_154[1]}}};
            int32_t ***l_373 = &l_374[1][2][2];
            int32_t **l_376 = &p_1358->g_154[1];
            int32_t ***l_375 = &l_376;
            int16_t *l_377 = (void*)0;
            int16_t *l_378[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t *l_380 = (void*)0;
            int32_t *l_381 = &l_325;
            int i, j, k;
            for (p_1358->g_115 = 0; (p_1358->g_115 <= 1); p_1358->g_115 += 1)
            { /* block id: 131 */
                int32_t l_334 = 0x21F33E96L;
                int32_t l_335 = 0x3CDB702CL;
                int64_t * volatile * volatile l_347[6][9] = {{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346},{&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346,&p_1358->g_346}};
                int i, j;
                if ((safe_div_func_uint8_t_u_u(p_1358->g_72[(p_1358->g_140 + 3)][p_1358->g_140], (*p_1358->g_238))))
                { /* block id: 132 */
                    uint8_t ****l_316 = &l_312;
                    int32_t l_333 = (-5L);
                    for (p_1358->g_235 = 0; (p_1358->g_235 <= 1); p_1358->g_235 += 1)
                    { /* block id: 135 */
                        uint8_t ****l_314 = &l_312;
                        uint8_t *****l_315[2];
                        int8_t *l_323[4];
                        int32_t *l_328 = &p_1358->g_11;
                        int32_t *l_329 = &p_1358->g_11;
                        int32_t *l_330 = &l_327;
                        int32_t *l_331 = (void*)0;
                        int32_t *l_332[1][3];
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_315[i] = &l_314;
                        for (i = 0; i < 4; i++)
                            l_323[i] = &p_1358->g_324;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_332[i][j] = (void*)0;
                        }
                        l_327 |= ((safe_div_func_uint8_t_u_u(3UL, (p_1358->g_324 |= ((((safe_rshift_func_int16_t_s_u((4UL ^ p_1358->g_117[1]), 2)) || (safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), (p_1358->g_72[(p_1358->g_140 + 3)][p_1358->g_140] , ((safe_mul_func_uint8_t_u_u(((l_325 = ((safe_sub_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s(((((l_311[7] = l_311[4]) == (l_316 = l_314)) & p_42) >= (l_322 = ((p_1358->g_317 = p_1358->g_317) != ((((safe_rshift_func_int8_t_s_u(0x7CL, 0)) , 4L) | p_45) , &p_1358->g_318)))), GROUP_DIVERGE(0, 1))) < p_45), (*p_43))) >= 0UL)) <= 0x7DL), (*p_1358->g_65))) > p_1358->g_239))))) == l_326) , (**p_1358->g_237))))) <= GROUP_DIVERGE(0, 1));
                        ++l_337;
                        (*p_1358->g_318) = (*l_312);
                        if ((*p_44))
                            break;
                    }
                    for (l_326 = 1; (l_326 >= 0); l_326 -= 1)
                    { /* block id: 149 */
                        int64_t *l_340[3][8][5] = {{{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54}},{{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54}},{{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54},{(void*)0,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54,&p_1358->g_54}}};
                        int32_t **l_342 = &p_1358->g_154[1];
                        int32_t *l_344 = (void*)0;
                        int32_t **l_343 = &l_344;
                        int i, j, k;
                        l_333 = ((*p_43) = (l_336[(p_1358->g_115 + 6)][(p_1358->g_115 + 2)][(p_1358->g_115 + 2)] < p_1358->g_324));
                        l_341 ^= (l_340[2][7][4] == l_340[2][7][4]);
                        if ((*p_43))
                            break;
                        (*l_343) = ((*l_342) = &p_1358->g_11);
                    }
                    if (l_341)
                        continue;
                    l_347[5][2] = p_1358->g_345;
                }
                else
                { /* block id: 159 */
                    uint32_t *l_348 = (void*)0;
                    uint32_t *l_349[5] = {&p_1358->g_279,&p_1358->g_279,&p_1358->g_279,&p_1358->g_279,&p_1358->g_279};
                    int64_t *l_350 = &p_1358->g_244;
                    uint64_t *l_359 = &p_1358->g_235;
                    int i;
                    (*p_43) &= ((((p_1358->g_279 = 4294967289UL) , (((l_337 , l_350) != (void*)0) , &p_1358->g_87)) == (void*)0) , (safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(p_45, ((((*l_359) = p_1358->g_3[2][3]) > (safe_add_func_int16_t_s_s(((void*)0 == &p_1358->g_317), 0x2D96L))) > l_341))), (*p_1358->g_65))), 15)), 0)));
                    for (p_1358->g_54 = 0; (p_1358->g_54 <= 1); p_1358->g_54 += 1)
                    { /* block id: 165 */
                        return &p_1358->g_3[2][3];
                    }
                }
            }
            (*l_381) &= (((p_1358->g_6 && (safe_sub_func_uint8_t_u_u((+((((safe_sub_func_int64_t_s_s((((safe_lshift_func_uint8_t_u_u((l_379 &= (!(((((*p_43) |= (*p_46)) & (safe_rshift_func_uint8_t_u_u((((l_341 |= (safe_rshift_func_uint8_t_u_s((p_1358->g_72[(p_1358->g_140 + 5)][p_1358->g_140] ^= 0x5DL), 5))) | 0x431BL) & (-5L)), ((***l_312) = p_42)))) > (p_42 > (p_1358->g_87 = ((~(((*l_373) = &p_1358->g_154[0]) != ((*l_375) = &p_1358->g_154[1]))) > p_1358->g_117[1])))) ^ l_322))), p_42)) != GROUP_DIVERGE(0, 1)) != l_322), p_42)) < 2L) , (void*)0) == (void*)0)), (-1L)))) ^ p_1358->g_54) <= l_322);
        }
        (*p_1358->g_385) = func_48(((*l_384) = p_1358->g_382), p_45, p_1358);
        l_388 = ((l_379 = (+(&p_1358->g_279 != &p_1358->g_279))) , l_379);
    }
    return (*p_1358->g_530);
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_87 p_1358->g_65 p_1358->g_66 p_1358->g_11 p_1358->g_101 p_1358->g_comm_values p_1358->g_72 p_1358->g_6 p_1358->g_54 p_1358->g_115 p_1358->g_2 p_1358->g_3 p_1358->g_117 p_1358->l_comm_values p_1358->g_143 p_1358->g_12 p_1358->g_173 p_1358->g_7 p_1358->g_237 p_1358->g_244 p_1358->g_251 p_1358->g_279 p_1358->g_238 p_1358->g_239
 * writes: p_1358->g_87 p_1358->g_6 p_1358->g_11 p_1358->g_54 p_1358->g_115 p_1358->g_117 p_1358->g_140 p_1358->g_143 p_1358->g_154 p_1358->g_173 p_1358->g_comm_values p_1358->g_235 p_1358->g_244
 */
int32_t * func_48(int32_t ** p_49, uint8_t  p_50, struct S0 * p_1358)
{ /* block id: 28 */
    uint32_t l_79 = 0xD3E8228FL;
    int16_t *l_86 = &p_1358->g_87;
    int32_t l_88 = 0x03987EDFL;
    int32_t *l_89[8][3][8] = {{{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0}},{{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0}},{{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0}},{{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0}},{{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0}},{{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0}},{{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0}},{{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0},{&p_1358->g_3[1][3],&p_1358->g_11,(void*)0,&p_1358->g_3[2][0],(void*)0,&p_1358->g_3[2][3],&p_1358->g_3[2][3],(void*)0}}};
    uint32_t l_90[10] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    int16_t l_94 = 0x2CFCL;
    uint32_t l_102 = 0x39A15FBEL;
    uint32_t l_121 = 0xB6A2D9A9L;
    int8_t *l_136 = &p_1358->g_115;
    uint8_t l_146 = 250UL;
    int32_t l_167 = (-10L);
    int16_t l_194 = 0x33B6L;
    uint64_t l_236 = 9UL;
    int i, j, k;
    if ((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(l_79, (safe_add_func_int32_t_s_s((safe_sub_func_uint64_t_u_u(0x0ABB00F61094B98FL, p_50)), (((safe_rshift_func_int16_t_s_s(((*l_86) ^= l_79), 7)) | (l_90[5] |= (l_88 = l_79))) < (safe_unary_minus_func_uint8_t_u((*p_1358->g_65)))))))), (safe_mul_func_int8_t_s_s((((l_94 ^ ((safe_mul_func_int8_t_s_s(p_1358->g_11, (safe_sub_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((p_1358->g_101 != &p_1358->g_70), p_50)), 255UL)))) != p_1358->g_comm_values[p_1358->tid])) >= p_1358->g_72[0][0]) > p_50), FAKE_DIVERGE(p_1358->local_0_offset, get_local_id(0), 10))))))
    { /* block id: 32 */
        p_1358->g_6 &= l_102;
    }
    else
    { /* block id: 34 */
        uint32_t l_116 = 1UL;
        uint8_t **l_133 = &p_1358->g_65;
        int32_t *l_142 = &p_1358->g_3[2][3];
        int32_t **l_151 = &l_142;
        int32_t **l_152 = (void*)0;
        int32_t **l_153 = &l_89[2][1][6];
        int32_t l_155[6][7] = {{0x3B3BD2D3L,0x3B3BD2D3L,0x4AD87FAEL,0x5B30F1BEL,0L,0x5B30F1BEL,0x4AD87FAEL},{0x3B3BD2D3L,0x3B3BD2D3L,0x4AD87FAEL,0x5B30F1BEL,0L,0x5B30F1BEL,0x4AD87FAEL},{0x3B3BD2D3L,0x3B3BD2D3L,0x4AD87FAEL,0x5B30F1BEL,0L,0x5B30F1BEL,0x4AD87FAEL},{0x3B3BD2D3L,0x3B3BD2D3L,0x4AD87FAEL,0x5B30F1BEL,0L,0x5B30F1BEL,0x4AD87FAEL},{0x3B3BD2D3L,0x3B3BD2D3L,0x4AD87FAEL,0x5B30F1BEL,0L,0x5B30F1BEL,0x4AD87FAEL},{0x3B3BD2D3L,0x3B3BD2D3L,0x4AD87FAEL,0x5B30F1BEL,0L,0x5B30F1BEL,0x4AD87FAEL}};
        uint32_t l_156 = 4294967295UL;
        uint32_t *l_172 = &p_1358->g_173;
        int64_t l_193 = 0L;
        int8_t **l_207 = (void*)0;
        int64_t l_242[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
        int i, j;
        for (l_94 = 0; (l_94 > 9); l_94++)
        { /* block id: 37 */
            uint64_t l_135 = 18446744073709551606UL;
            for (p_1358->g_11 = 21; (p_1358->g_11 <= 22); ++p_1358->g_11)
            { /* block id: 40 */
                return &p_1358->g_3[1][6];
            }
            for (p_1358->g_54 = 0; (p_1358->g_54 == (-2)); p_1358->g_54 = safe_sub_func_int32_t_s_s(p_1358->g_54, 5))
            { /* block id: 45 */
                uint32_t l_141[7];
                int32_t l_144 = 1L;
                int32_t l_145 = 0x188898D0L;
                int i;
                for (i = 0; i < 7; i++)
                    l_141[i] = 0xB91B04C5L;
                if ((safe_div_func_uint16_t_u_u((!p_50), ((*l_86) = p_1358->g_comm_values[p_1358->tid]))))
                { /* block id: 47 */
                    int16_t l_113 = 0x1346L;
                    int8_t *l_114[9][7] = {{&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115},{&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115},{&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115},{&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115},{&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115},{&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115},{&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115},{&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115},{&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115,(void*)0,&p_1358->g_115,&p_1358->g_115}};
                    uint16_t l_118 = 65535UL;
                    int32_t l_119 = 0x74A51DBEL;
                    int32_t l_120[10] = {0x37417BD2L,0x37417BD2L,0x37417BD2L,0x37417BD2L,0x37417BD2L,0x37417BD2L,0x37417BD2L,0x37417BD2L,0x37417BD2L,0x37417BD2L};
                    int i, j;
                    l_118 &= ((safe_rshift_func_uint8_t_u_u(l_113, 1)) & (p_1358->g_117[1] = (p_1358->g_115 |= (l_116 = p_50))));
                    --l_121;
                }
                else
                { /* block id: 53 */
                    uint8_t ***l_134 = &l_133;
                    int8_t **l_137 = &l_136;
                    uint64_t *l_138 = (void*)0;
                    uint64_t *l_139[8] = {&l_135,&l_135,&l_135,&l_135,&l_135,&l_135,&l_135,&l_135};
                    int i;
                    p_1358->g_143 |= (((((((safe_div_func_uint16_t_u_u((p_50 | ((*l_86) = (((~(((safe_lshift_func_uint8_t_u_s((((p_1358->g_2 > ((((safe_mul_func_uint8_t_u_u((0UL | p_1358->g_54), ((((safe_add_func_int8_t_s_s((safe_unary_minus_func_int32_t_s(((((*l_134) = l_133) == (void*)0) >= (p_1358->g_140 = ((((p_50 , ((*l_137) = (((((l_135 > (((((p_1358->g_11 & FAKE_DIVERGE(p_1358->local_2_offset, get_local_id(2), 10)) , p_50) , 0x14EFL) ^ p_1358->g_72[5][0]) ^ GROUP_DIVERGE(2, 1))) != 1UL) , 0x59615D0954A6F35BL) < GROUP_DIVERGE(1, 1)) , l_136))) != (void*)0) < p_50) == GROUP_DIVERGE(1, 1)))))), p_50)) == p_1358->g_72[5][0]) < 0x01610A321F159A54L) || 0x0348559906447CF2L))) ^ GROUP_DIVERGE(2, 1)) >= l_141[3]) , p_1358->g_3[2][3])) >= 1L) && p_50), p_1358->g_3[2][3])) >= p_1358->g_117[4]) , p_1358->g_6)) && p_50) >= p_1358->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1358->tid, 43))]))), p_1358->g_3[5][0])) != p_1358->g_72[0][0]) , l_142) == &l_88) <= p_1358->g_66[2]) && 0x72EEF0ED02C9C021L) < FAKE_DIVERGE(p_1358->local_2_offset, get_local_id(2), 10));
                    ++l_146;
                }
                l_144 |= l_135;
                if ((*l_142))
                    break;
            }
        }
        l_88 = (safe_mod_func_int32_t_s_s((((*l_153) = ((*l_151) = l_142)) != (p_1358->g_154[1] = &p_1358->g_11)), l_102));
        l_156--;
        if ((safe_div_func_uint32_t_u_u(((safe_div_func_int8_t_s_s(((void*)0 != &l_146), (((*l_172) ^= (safe_mod_func_uint8_t_u_u((p_1358->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1358->tid, 43))] || p_1358->g_12), ((**l_151) ^ (p_50 & ((safe_sub_func_int8_t_s_s((l_167 , p_50), (GROUP_DIVERGE(0, 1) == (safe_sub_func_int8_t_s_s(((safe_sub_func_uint32_t_u_u((+0xD3FF892FL), 0x783D8B82L)) , 0x4AL), (*p_1358->g_65)))))) ^ p_50)))))) , p_50))) || p_50), p_50)))
        { /* block id: 71 */
            int32_t l_190 = 0x46D56ED2L;
            l_194 ^= ((safe_rshift_func_int16_t_s_u(((p_1358->g_2 > (((((safe_mul_func_int16_t_s_s(((p_50 | ((safe_mul_func_int8_t_s_s((0UL ^ (safe_sub_func_uint16_t_u_u(p_50, (safe_mod_func_uint32_t_u_u(((safe_add_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s(p_1358->g_72[5][0], 7)) < (((((safe_sub_func_int32_t_s_s(l_190, p_1358->g_7)) <= (l_190 ^ (((((safe_div_func_uint8_t_u_u((*p_1358->g_65), 1L)) != p_1358->g_11) <= l_193) || p_50) != p_50))) , p_50) != p_50) | 6UL)), p_50)) <= 1UL), p_1358->g_54))))), GROUP_DIVERGE(0, 1))) && p_50)) == p_1358->g_143), p_1358->g_3[2][3])) , l_190) == GROUP_DIVERGE(0, 1)) & 0UL) ^ l_190)) || p_50), (**l_151))) <= p_50);
        }
        else
        { /* block id: 73 */
            int8_t l_208 = 0x24L;
            int32_t l_209 = 6L;
            int32_t l_210 = (-1L);
            uint32_t l_231 = 0UL;
            int64_t *l_232 = (void*)0;
            int64_t *l_233[1];
            uint64_t *l_234 = &p_1358->g_235;
            int32_t l_240[10] = {0x78AAB923L,5L,0x78AAB923L,0x78AAB923L,5L,0x78AAB923L,0x78AAB923L,5L,0x78AAB923L,0x78AAB923L};
            int8_t l_241 = 0x14L;
            int i;
            for (i = 0; i < 1; i++)
                l_233[i] = (void*)0;
lbl_254:
            (*l_151) = &l_88;
            if (((((safe_lshift_func_uint8_t_u_u((*p_1358->g_65), 6)) && ((safe_mod_func_uint64_t_u_u((safe_mod_func_int64_t_s_s((safe_mul_func_uint16_t_u_u(((l_240[2] &= (safe_mul_func_int16_t_s_s(((*l_86) = (1L <= (l_207 != (((l_209 = (l_208 = (p_50 <= ((*l_142) = 0x2DA4D15DL)))) > (l_210 , (safe_sub_func_uint16_t_u_u((((safe_sub_func_int32_t_s_s(((((*l_234) = (safe_div_func_int64_t_s_s((p_1358->g_comm_values[p_1358->tid] &= (safe_mul_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((*l_136) = p_1358->g_66[1]), (safe_lshift_func_int8_t_s_u((safe_mod_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(p_1358->g_6, p_50)), 1UL)), 0x80A1L)), 2)))), (-10L))) && p_50), l_231))), p_1358->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1358->tid, 43))]))) , 0UL) > p_50), p_1358->g_173)) & 0x00EF30843EA2915EL) != FAKE_DIVERGE(p_1358->group_2_offset, get_group_id(2), 10)), l_236)))) , p_1358->g_237)))), FAKE_DIVERGE(p_1358->local_1_offset, get_local_id(1), 10)))) & l_241), p_50)), p_50)), p_50)) <= l_210)) >= l_242[3]) ^ 2UL))
            { /* block id: 83 */
                int64_t *l_243 = &p_1358->g_244;
                uint8_t ***l_246[9] = {&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133,&l_133};
                uint8_t ****l_245 = &l_246[8];
                int32_t *l_263 = &l_240[2];
                int i;
lbl_264:
                if ((((((((*l_243) |= 0x08C3CE80497F3A2DL) , (*l_133)) == &p_50) <= l_210) < (p_1358->g_12 && (((((*l_245) = (void*)0) == (p_1358->g_173 , &l_133)) < ((safe_div_func_int32_t_s_s((safe_lshift_func_int16_t_s_s(p_1358->g_251, 15)), p_1358->g_comm_values[p_1358->tid])) > 0x5C57L)) , p_1358->g_115))) >= 0x0A167A7BL))
                { /* block id: 86 */
                    for (p_1358->g_244 = (-28); (p_1358->g_244 != 28); p_1358->g_244 = safe_add_func_int16_t_s_s(p_1358->g_244, 7))
                    { /* block id: 89 */
                        int32_t *l_255 = &l_155[5][5];
                        int i, j;
                        (**l_151) &= 0x12C0AD67L;
                        if (l_121)
                            goto lbl_254;
                        (*l_151) = l_255;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1358->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 43)), permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_1358->tid, 43))]));
                    }
                    return &p_1358->g_3[2][3];
                }
                else
                { /* block id: 98 */
                    int8_t *l_259 = &p_1358->g_140;
                    l_240[2] ^= l_208;
                    for (l_146 = 0; (l_146 != 35); l_146 = safe_add_func_uint16_t_u_u(l_146, 2))
                    { /* block id: 102 */
                        uint64_t l_258 = 4UL;
                        l_258 ^= (l_240[3] , (p_50 ^ 1UL));
                        (**l_151) = (5L < ((void*)0 != l_259));
                    }
                    if (l_88)
                        goto lbl_264;
                    for (l_193 = (-26); (l_193 <= 29); l_193 = safe_add_func_uint16_t_u_u(l_193, 4))
                    { /* block id: 108 */
                        int32_t *l_262 = &l_240[0];
                        return &p_1358->g_3[2][3];
                    }
                }
                l_155[1][4] ^= (safe_lshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s((safe_sub_func_int16_t_s_s((safe_mul_func_int16_t_s_s((((safe_add_func_int16_t_s_s(((*l_86) &= ((safe_mul_func_int8_t_s_s(((safe_sub_func_int16_t_s_s((p_1358->g_279 >= ((safe_rshift_func_uint16_t_u_s((5L == p_50), ((safe_add_func_int32_t_s_s((((safe_mod_func_uint16_t_u_u(65531UL, ((0xB098L > (l_136 == &l_208)) | (safe_add_func_uint32_t_u_u((+(p_1358->g_comm_values[p_1358->tid] || (safe_lshift_func_int8_t_s_s((safe_div_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((p_1358->g_279 , 0x9EL), p_50)), 65535UL)), (*l_263))))), p_50))))) >= (*l_263)) >= 0x79DAL), 2L)) , p_1358->g_66[2]))) != 0x67FCE753BC47F2C3L)), p_50)) & 0x4DA7980F06ED0E04L), (**p_1358->g_237))) | 65534UL)), FAKE_DIVERGE(p_1358->global_2_offset, get_global_id(2), 10))) , 0x2C9240290D0EAF78L) ^ (*l_142)), 65535UL)), 0x2CDEL)), 0x6B99CC3478844DFCL)), 3));
                (*l_142) = 1L;
            }
            else
            { /* block id: 116 */
                return &p_1358->g_11;
            }
        }
    }
    return &p_1358->g_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_72 p_1358->g_66
 * writes: p_1358->g_72
 */
uint32_t  func_51(int16_t  p_52, uint8_t  p_53, struct S0 * p_1358)
{ /* block id: 24 */
    int32_t *l_71[10][7] = {{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]},{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]},{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]},{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]},{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]},{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]},{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]},{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]},{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]},{&p_1358->g_3[2][3],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_3[2][3]}};
    int i, j;
    --p_1358->g_72[5][0];
    return p_1358->g_66[1];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[43];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 43; i++)
            l_comm_values[i] = 1;
    struct S0 c_1359;
    struct S0* p_1358 = &c_1359;
    struct S0 c_1360 = {
        0x60F57A7CL, // p_1358->g_2
        {{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L}}, // p_1358->g_3
        (-1L), // p_1358->g_6
        (-1L), // p_1358->g_7
        1L, // p_1358->g_11
        0x78F4L, // p_1358->g_12
        1L, // p_1358->g_54
        246UL, // p_1358->g_58
        {0x60L,0x60L,0x60L}, // p_1358->g_66
        &p_1358->g_66[1], // p_1358->g_65
        (void*)0, // p_1358->g_70
        &p_1358->g_70, // p_1358->g_69
        {{250UL,0UL},{250UL,0UL},{250UL,0UL},{250UL,0UL},{250UL,0UL},{250UL,0UL},{250UL,0UL},{250UL,0UL},{250UL,0UL},{250UL,0UL}}, // p_1358->g_72
        0x25F8L, // p_1358->g_87
        (void*)0, // p_1358->g_101
        0x2BL, // p_1358->g_115
        {0x31B5FDDBL,0x31B5FDDBL,0x31B5FDDBL,0x31B5FDDBL,0x31B5FDDBL,0x31B5FDDBL,0x31B5FDDBL,0x31B5FDDBL}, // p_1358->g_117
        (-1L), // p_1358->g_140
        0x03L, // p_1358->g_143
        {&p_1358->g_11,&p_1358->g_11}, // p_1358->g_154
        0x7FF4ED39L, // p_1358->g_173
        0xC1CF038DEA13161FL, // p_1358->g_235
        0x18L, // p_1358->g_239
        &p_1358->g_239, // p_1358->g_238
        &p_1358->g_238, // p_1358->g_237
        0L, // p_1358->g_244
        255UL, // p_1358->g_251
        0UL, // p_1358->g_279
        {{{&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65},{&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65}},{{&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65},{&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65}},{{&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65},{&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65,&p_1358->g_65}}}, // p_1358->g_319
        &p_1358->g_319[0][0][6], // p_1358->g_318
        &p_1358->g_318, // p_1358->g_317
        1L, // p_1358->g_324
        &p_1358->g_244, // p_1358->g_346
        &p_1358->g_346, // p_1358->g_345
        (void*)0, // p_1358->g_382
        &p_1358->g_154[0], // p_1358->g_385
        0L, // p_1358->g_387
        3L, // p_1358->g_460
        0xA8A1L, // p_1358->g_486
        {&p_1358->g_3[0][6],&p_1358->g_3[0][6]}, // p_1358->g_531
        &p_1358->g_531[0], // p_1358->g_530
        1L, // p_1358->g_552
        2L, // p_1358->g_618
        &p_1358->g_618, // p_1358->g_617
        &p_1358->g_154[1], // p_1358->g_627
        &p_1358->g_460, // p_1358->g_647
        (void*)0, // p_1358->g_653
        &p_1358->g_382, // p_1358->g_800
        &p_1358->g_800, // p_1358->g_799
        &p_1358->g_235, // p_1358->g_814
        &p_1358->g_814, // p_1358->g_813
        4294967295UL, // p_1358->g_847
        &p_1358->g_847, // p_1358->g_846
        {&p_1358->g_846,(void*)0,&p_1358->g_846,&p_1358->g_846,(void*)0,&p_1358->g_846}, // p_1358->g_845
        0x5AL, // p_1358->g_1031
        {{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}}}, // p_1358->g_1086
        0xAFB76BC8L, // p_1358->g_1105
        5L, // p_1358->g_1145
        0x494FC0B3L, // p_1358->g_1184
        0x28L, // p_1358->g_1206
        {(void*)0}, // p_1358->g_1233
        {&p_1358->g_387,&p_1358->g_387,&p_1358->g_387,&p_1358->g_387,&p_1358->g_387,&p_1358->g_387,&p_1358->g_387,&p_1358->g_387,&p_1358->g_387}, // p_1358->g_1264
        &p_1358->g_1264[2], // p_1358->g_1263
        {{0UL,0UL,0x93A3L,1UL,0x93A3L,0UL,0UL,2UL},{0UL,0UL,0x93A3L,1UL,0x93A3L,0UL,0UL,2UL},{0UL,0UL,0x93A3L,1UL,0x93A3L,0UL,0UL,2UL},{0UL,0UL,0x93A3L,1UL,0x93A3L,0UL,0UL,2UL},{0UL,0UL,0x93A3L,1UL,0x93A3L,0UL,0UL,2UL},{0UL,0UL,0x93A3L,1UL,0x93A3L,0UL,0UL,2UL}}, // p_1358->g_1322
        &p_1358->g_531[0], // p_1358->g_1357
        sequence_input[get_global_id(0)], // p_1358->global_0_offset
        sequence_input[get_global_id(1)], // p_1358->global_1_offset
        sequence_input[get_global_id(2)], // p_1358->global_2_offset
        sequence_input[get_local_id(0)], // p_1358->local_0_offset
        sequence_input[get_local_id(1)], // p_1358->local_1_offset
        sequence_input[get_local_id(2)], // p_1358->local_2_offset
        sequence_input[get_group_id(0)], // p_1358->group_0_offset
        sequence_input[get_group_id(1)], // p_1358->group_1_offset
        sequence_input[get_group_id(2)], // p_1358->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 43)), permutations[0][get_linear_local_id()])), // p_1358->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1359 = c_1360;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1358);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1358->g_2, "p_1358->g_2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1358->g_3[i][j], "p_1358->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1358->g_6, "p_1358->g_6", print_hash_value);
    transparent_crc(p_1358->g_7, "p_1358->g_7", print_hash_value);
    transparent_crc(p_1358->g_11, "p_1358->g_11", print_hash_value);
    transparent_crc(p_1358->g_12, "p_1358->g_12", print_hash_value);
    transparent_crc(p_1358->g_54, "p_1358->g_54", print_hash_value);
    transparent_crc(p_1358->g_58, "p_1358->g_58", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1358->g_66[i], "p_1358->g_66[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1358->g_72[i][j], "p_1358->g_72[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1358->g_87, "p_1358->g_87", print_hash_value);
    transparent_crc(p_1358->g_115, "p_1358->g_115", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1358->g_117[i], "p_1358->g_117[i]", print_hash_value);

    }
    transparent_crc(p_1358->g_140, "p_1358->g_140", print_hash_value);
    transparent_crc(p_1358->g_143, "p_1358->g_143", print_hash_value);
    transparent_crc(p_1358->g_173, "p_1358->g_173", print_hash_value);
    transparent_crc(p_1358->g_235, "p_1358->g_235", print_hash_value);
    transparent_crc(p_1358->g_239, "p_1358->g_239", print_hash_value);
    transparent_crc(p_1358->g_244, "p_1358->g_244", print_hash_value);
    transparent_crc(p_1358->g_251, "p_1358->g_251", print_hash_value);
    transparent_crc(p_1358->g_279, "p_1358->g_279", print_hash_value);
    transparent_crc(p_1358->g_324, "p_1358->g_324", print_hash_value);
    transparent_crc(p_1358->g_387, "p_1358->g_387", print_hash_value);
    transparent_crc(p_1358->g_460, "p_1358->g_460", print_hash_value);
    transparent_crc(p_1358->g_486, "p_1358->g_486", print_hash_value);
    transparent_crc(p_1358->g_552, "p_1358->g_552", print_hash_value);
    transparent_crc(p_1358->g_618, "p_1358->g_618", print_hash_value);
    transparent_crc(p_1358->g_847, "p_1358->g_847", print_hash_value);
    transparent_crc(p_1358->g_1031, "p_1358->g_1031", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1358->g_1086[i][j][k], "p_1358->g_1086[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1358->g_1105, "p_1358->g_1105", print_hash_value);
    transparent_crc(p_1358->g_1145, "p_1358->g_1145", print_hash_value);
    transparent_crc(p_1358->g_1184, "p_1358->g_1184", print_hash_value);
    transparent_crc(p_1358->g_1206, "p_1358->g_1206", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1358->g_1322[i][j], "p_1358->g_1322[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1358->l_comm_values[get_linear_local_id()], "p_1358->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1358->g_comm_values[get_linear_group_id() * 43 + get_linear_local_id()], "p_1358->g_comm_values[get_linear_group_id() * 43 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
