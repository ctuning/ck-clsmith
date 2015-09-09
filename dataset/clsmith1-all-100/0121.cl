// --atomics 47 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 13,74,4 -l 1,37,2
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

__constant uint32_t permutations[10][74] = {
{19,67,55,22,9,28,18,2,26,68,61,17,25,6,3,44,39,20,7,43,65,59,48,53,16,8,30,54,32,52,41,14,0,5,50,4,57,1,71,72,47,15,60,56,27,45,42,46,36,31,69,49,33,62,35,11,24,10,66,21,64,13,51,29,58,34,37,63,70,23,38,73,40,12}, // permutation 0
{62,51,38,6,21,18,28,14,25,19,69,1,37,60,10,27,39,71,35,46,11,42,29,41,64,30,70,22,8,3,57,15,26,31,44,9,67,72,2,47,63,16,56,68,65,45,54,20,0,55,32,7,12,17,34,40,59,73,24,48,52,33,49,66,43,5,23,61,4,13,53,58,50,36}, // permutation 1
{44,0,9,63,26,55,17,29,46,37,31,36,45,72,39,1,53,32,47,35,14,61,28,66,19,11,23,15,30,27,64,25,54,73,67,7,50,62,21,56,70,60,52,3,42,68,65,2,34,71,51,57,6,40,8,13,48,5,10,38,20,4,69,24,33,22,43,41,18,58,49,59,12,16}, // permutation 2
{68,26,22,58,30,20,12,15,46,42,14,8,39,72,60,27,45,59,9,32,5,25,35,64,17,10,37,24,57,6,50,66,36,3,29,61,28,34,31,19,63,47,21,67,43,55,73,52,40,33,4,70,62,54,49,7,1,23,53,48,71,56,38,11,16,0,65,18,69,2,44,51,41,13}, // permutation 3
{57,0,48,24,55,67,37,41,56,65,7,16,44,17,15,31,72,52,34,50,35,49,63,5,66,43,13,42,68,46,21,9,36,54,69,47,4,8,18,32,60,30,38,3,6,58,62,64,27,53,14,20,51,73,19,29,40,25,45,71,59,23,22,61,1,33,39,28,26,12,70,11,10,2}, // permutation 4
{25,3,61,6,7,41,65,17,21,31,20,15,23,55,58,0,51,63,67,43,26,19,56,8,42,71,57,16,60,13,28,14,66,18,4,27,62,72,22,33,50,64,5,53,1,30,2,44,54,59,35,52,9,10,29,46,36,47,12,49,48,24,37,38,32,70,45,69,11,68,73,40,39,34}, // permutation 5
{51,31,12,73,24,47,38,17,48,56,3,72,71,13,70,1,40,57,67,0,45,61,26,52,54,34,66,23,41,35,65,59,4,14,2,42,64,29,44,10,9,19,5,60,39,58,62,46,8,33,43,21,68,63,69,20,25,37,11,18,53,36,55,28,30,27,7,50,15,6,16,32,49,22}, // permutation 6
{73,23,5,56,25,21,26,13,55,18,68,39,41,22,60,6,49,71,14,29,57,20,51,50,43,70,69,30,58,66,1,11,40,2,27,45,63,65,48,33,9,15,47,37,0,59,16,61,32,52,46,31,42,35,19,67,53,72,62,17,7,3,28,8,24,64,38,34,54,36,10,44,4,12}, // permutation 7
{22,35,16,52,73,5,68,15,53,45,34,46,42,66,62,63,21,72,40,24,65,7,50,17,25,55,6,54,36,13,59,70,1,41,23,2,43,58,47,0,14,69,8,31,30,18,26,38,4,39,37,67,60,33,71,44,48,49,19,11,51,56,20,29,27,57,10,28,32,64,61,3,9,12}, // permutation 8
{27,57,56,63,41,43,5,73,7,44,19,31,68,18,14,40,61,36,53,28,42,70,65,48,47,4,24,1,46,33,15,9,58,39,35,34,22,21,69,38,23,37,54,59,8,26,16,25,10,30,6,3,60,62,51,32,64,17,20,55,45,2,29,50,49,13,0,66,12,11,67,52,72,71} // permutation 9
};

// Seed: 121

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint64_t g_17;
    volatile VECTOR(int8_t, 8) g_18;
    int32_t g_26;
    uint8_t g_40;
    int32_t g_56;
    int32_t *g_55;
    int64_t *g_69[5][3];
    int16_t g_75;
    int8_t g_89;
    uint32_t g_94;
    uint8_t g_97;
    int32_t g_98;
    uint16_t g_100;
    uint64_t g_103;
    uint64_t g_106;
    VECTOR(uint16_t, 16) g_130;
    VECTOR(uint8_t, 2) g_133;
    VECTOR(uint8_t, 2) g_134;
    VECTOR(uint64_t, 2) g_166;
    VECTOR(int32_t, 2) g_176;
    uint32_t g_179;
    int16_t g_331;
    VECTOR(uint8_t, 4) g_333;
    int16_t g_338;
    VECTOR(uint8_t, 16) g_352;
    uint32_t g_362;
    volatile uint16_t g_406;
    volatile uint16_t *g_405;
    int8_t *g_414;
    int8_t **g_413[6][3];
    uint32_t g_424;
    VECTOR(int64_t, 2) g_432;
    VECTOR(uint16_t, 2) g_434;
    VECTOR(int16_t, 16) g_468;
    uint64_t *g_511;
    uint16_t g_523;
    VECTOR(uint8_t, 2) g_552;
    VECTOR(int32_t, 4) g_561;
    int32_t g_579[4][9];
    VECTOR(uint8_t, 2) g_592;
    int32_t g_598;
    VECTOR(uint16_t, 4) g_600;
    VECTOR(uint64_t, 2) g_646;
    uint8_t *g_681[10][10];
    VECTOR(int32_t, 2) g_685;
    VECTOR(int32_t, 4) g_700;
    VECTOR(int32_t, 16) g_702;
    VECTOR(int16_t, 8) g_714;
    VECTOR(uint32_t, 4) g_719;
    int32_t g_735;
    VECTOR(int32_t, 2) g_748;
    VECTOR(int32_t, 8) g_752;
    VECTOR(uint32_t, 8) g_763;
    VECTOR(uint32_t, 2) g_764;
    VECTOR(int16_t, 4) g_893;
    VECTOR(int16_t, 8) g_894;
    uint8_t g_917[6];
    VECTOR(uint32_t, 2) g_928;
    int32_t *g_971;
    volatile uint64_t g_1001[5];
    volatile VECTOR(int32_t, 8) g_1010;
    VECTOR(uint8_t, 4) g_1013;
    VECTOR(int8_t, 8) g_1023;
    volatile VECTOR(int16_t, 2) g_1026;
    VECTOR(int16_t, 8) g_1032;
    int32_t * volatile g_1051[7][9][4];
    int32_t * volatile g_1052;
    int32_t ** volatile g_1056;
    int16_t g_1062;
    VECTOR(uint64_t, 16) g_1071;
    int32_t ** volatile g_1074;
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
    uint32_t tid;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint16_t  func_1(struct S0 * p_1075);
int16_t  func_2(int32_t  p_3, struct S0 * p_1075);
int32_t * func_5(int32_t * p_6, int64_t  p_7, int32_t * p_8, int32_t * p_9, uint32_t  p_10, struct S0 * p_1075);
int32_t * func_11(int64_t  p_12, int8_t  p_13, int32_t * p_14, int16_t  p_15, struct S0 * p_1075);
uint64_t  func_19(int32_t  p_20, int32_t * p_21, int32_t * p_22, int32_t * p_23, struct S0 * p_1075);
int32_t * func_27(int16_t  p_28, uint64_t  p_29, struct S0 * p_1075);
int16_t  func_30(uint64_t  p_31, int64_t  p_32, int32_t * p_33, int32_t * p_34, uint32_t  p_35, struct S0 * p_1075);
int8_t  func_59(int32_t  p_60, uint16_t  p_61, struct S0 * p_1075);
int32_t  func_62(uint64_t  p_63, int8_t  p_64, struct S0 * p_1075);
int32_t * func_66(int64_t * p_67, uint32_t  p_68, struct S0 * p_1075);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1075->l_comm_values p_1075->g_18 p_1075->g_40 p_1075->g_55 p_1075->g_56 p_1075->g_69 p_1075->g_comm_values p_1075->g_75 p_1075->g_89 p_1075->g_98 p_1075->g_103 p_1075->g_97 p_1075->g_26 p_1075->g_106 p_1075->g_166 p_1075->g_134 p_1075->g_176 p_1075->g_179 p_1075->g_362 p_1075->g_735 p_1075->g_592 p_1075->g_714 p_1075->g_414 p_1075->g_94 p_1075->g_468 p_1075->g_561 p_1075->g_893 p_1075->g_894 p_1075->g_432 p_1075->g_338 p_1075->g_917 p_1075->g_413 p_1075->g_928 p_1075->g_130 p_1075->g_971 p_1075->g_1001 p_1075->g_685 p_1075->g_1010 p_1075->g_1013 p_1075->g_1023 p_1075->g_1026 p_1075->g_1032 p_1075->g_1056 p_1075->g_331 p_1075->g_1071 p_1075->g_523 p_1075->g_133 p_1075->g_1074
 * writes: p_1075->g_17 p_1075->g_comm_values p_1075->g_26 p_1075->g_94 p_1075->g_40 p_1075->g_97 p_1075->g_98 p_1075->g_103 p_1075->g_106 p_1075->g_56 p_1075->g_55 p_1075->g_176 p_1075->g_89 p_1075->g_362 p_1075->g_179 p_1075->g_763 p_1075->g_338 p_1075->g_917 p_1075->g_130 p_1075->g_735 p_1075->g_646 p_1075->g_1001 p_1075->g_100 p_1075->g_75 p_1075->g_971 p_1075->g_331
 */
uint16_t  func_1(struct S0 * p_1075)
{ /* block id: 4 */
    uint8_t l_4 = 0x6DL;
    int8_t ***l_1057 = &p_1075->g_413[3][2];
    int16_t *l_1060 = &p_1075->g_331;
    int16_t *l_1061[10][9][2] = {{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}},{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}},{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}},{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}},{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}},{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}},{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}},{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}},{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}},{{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0},{&p_1075->g_1062,(void*)0}}};
    int32_t l_1063 = 0x099C5EE2L;
    VECTOR(uint64_t, 2) l_1070 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xE3ECAC3BD22C11D5L);
    int i, j, k;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_1075->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 74)), permutations[(safe_mod_func_uint32_t_u_u((func_2(l_4, p_1075) > (l_1057 != ((((l_4 & (((safe_mod_func_int16_t_s_s(((*l_1060) ^= (((-1L) ^ l_4) != l_4)), (l_1063 = (-2L)))) & (safe_lshift_func_uint8_t_u_s((safe_mod_func_uint64_t_u_u(((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0UL, 3UL)), 18446744073709551611UL, 0UL)), ((VECTOR(uint64_t, 2))(0x8B48D4225E61C779L, 0UL)), 18446744073709551607UL, ((VECTOR(uint64_t, 2))(l_1070.yy)), ((VECTOR(uint64_t, 4))(p_1075->g_1071.s0930)), l_1070.x, 18446744073709551615UL, 0x1342A73AD91A5856L)).s3, p_1075->g_523)) , l_1070.y), 0x2C62F156E6116DABL)), l_1070.x))) & p_1075->g_133.y)) , p_1075->g_166.x) ^ p_1075->g_166.y) , l_1057))), 10))][(safe_mod_func_uint32_t_u_u(p_1075->tid, 74))]));
    if ((atomic_inc(&p_1075->l_atomic_input[7]) == 2))
    { /* block id: 438 */
        int32_t l_1073 = (-6L);
        int32_t *l_1072 = &l_1073;
        l_1072 = (void*)0;
        unsigned int result = 0;
        result += l_1073;
        atomic_add(&p_1075->l_special_values[7], result);
    }
    else
    { /* block id: 440 */
        (1 + 1);
    }
    (*p_1075->g_1074) = (*p_1075->g_1056);
    return l_1070.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1075->l_comm_values p_1075->g_18 p_1075->g_40 p_1075->g_55 p_1075->g_56 p_1075->g_69 p_1075->g_comm_values p_1075->g_75 p_1075->g_89 p_1075->g_98 p_1075->g_103 p_1075->g_97 p_1075->g_26 p_1075->g_106 p_1075->g_166 p_1075->g_134 p_1075->g_176 p_1075->g_179 p_1075->g_362 p_1075->g_735 p_1075->g_592 p_1075->g_714 p_1075->g_414 p_1075->g_94 p_1075->g_468 p_1075->g_561 p_1075->g_893 p_1075->g_894 p_1075->g_432 p_1075->g_338 p_1075->g_917 p_1075->g_413 p_1075->g_928 p_1075->g_130 p_1075->g_971 p_1075->g_1001 p_1075->g_685 p_1075->g_1010 p_1075->g_1013 p_1075->g_1023 p_1075->g_1026 p_1075->g_1032 p_1075->g_1056
 * writes: p_1075->g_17 p_1075->g_comm_values p_1075->g_26 p_1075->g_94 p_1075->g_40 p_1075->g_97 p_1075->g_98 p_1075->g_103 p_1075->g_106 p_1075->g_56 p_1075->g_55 p_1075->g_176 p_1075->g_89 p_1075->g_362 p_1075->g_179 p_1075->g_763 p_1075->g_338 p_1075->g_917 p_1075->g_130 p_1075->g_735 p_1075->g_646 p_1075->g_1001 p_1075->g_100 p_1075->g_75 p_1075->g_971
 */
int16_t  func_2(int32_t  p_3, struct S0 * p_1075)
{ /* block id: 5 */
    int8_t l_16 = 0L;
    uint32_t l_24 = 1UL;
    int32_t *l_25 = &p_1075->g_26;
    int64_t *l_43 = (void*)0;
    int64_t *l_44 = (void*)0;
    int64_t *l_45 = (void*)0;
    int64_t *l_46 = (void*)0;
    int64_t *l_47 = (void*)0;
    int64_t *l_48 = (void*)0;
    int64_t *l_49 = (void*)0;
    int64_t *l_50 = (void*)0;
    int64_t *l_51 = (void*)0;
    int64_t *l_52 = (void*)0;
    int64_t *l_53 = (void*)0;
    uint32_t l_54 = 4294967295UL;
    uint64_t *l_970[7] = {&p_1075->g_106,&p_1075->g_106,&p_1075->g_106,&p_1075->g_106,&p_1075->g_106,&p_1075->g_106,&p_1075->g_106};
    uint32_t l_972[4] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    int i;
    (*p_1075->g_1056) = func_5(func_11(p_1075->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1075->tid, 74))], (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))((p_1075->g_17 = (l_16 >= GROUP_DIVERGE(2, 1))), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1075->g_18.s53)), (-1L), 0x3DL)).y, 1L, (-7L), (-4L), (-1L), 0x6EL, 0x08L)).odd)).z > (((((p_1075->g_646.y = func_19(l_24, l_25, func_27(func_30(p_3, (l_54 &= ((*l_25) = (p_1075->g_comm_values[p_1075->tid] = (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_s((p_1075->g_40 , ((safe_mod_func_int32_t_s_s(0x5E04A276L, (-1L))) <= p_3)), 10)), 5))))), p_1075->g_55, &p_1075->g_56, p_1075->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1075->tid, 74))], p_1075), p_3, p_1075), &p_1075->g_735, p_1075)) || 8UL) , p_3) <= 1UL) <= p_3)), p_1075->g_971, l_972[2], p_1075), p_3, p_1075->g_971, p_1075->g_971, p_1075->g_561.x, p_1075);
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1075->g_98 p_1075->g_414 p_1075->g_89 p_1075->g_685 p_1075->g_1010 p_1075->g_1013 p_1075->g_166 p_1075->g_55 p_1075->g_26 p_1075->g_56 p_1075->g_1023 p_1075->g_1026 p_1075->g_1032 p_1075->g_75
 * writes: p_1075->g_17 p_1075->g_98 p_1075->g_26 p_1075->g_56 p_1075->g_100 p_1075->g_40 p_1075->g_75
 */
int32_t * func_5(int32_t * p_6, int64_t  p_7, int32_t * p_8, int32_t * p_9, uint32_t  p_10, struct S0 * p_1075)
{ /* block id: 419 */
    int32_t l_1011 = (-1L);
    VECTOR(uint8_t, 2) l_1012 = (VECTOR(uint8_t, 2))(0xFBL, 0x5FL);
    uint64_t *l_1014 = &p_1075->g_17;
    int64_t **l_1015 = &p_1075->g_69[2][2];
    int64_t *l_1016 = (void*)0;
    int64_t *l_1017[2][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_1018 = 1L;
    VECTOR(int16_t, 8) l_1027 = (VECTOR(int16_t, 8))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0L), 0L), 0L, (-4L), 0L);
    VECTOR(int16_t, 2) l_1028 = (VECTOR(int16_t, 2))(0x58D3L, (-1L));
    VECTOR(int16_t, 8) l_1029 = (VECTOR(int16_t, 8))(0x0243L, (VECTOR(int16_t, 4))(0x0243L, (VECTOR(int16_t, 2))(0x0243L, 1L), 1L), 1L, 0x0243L, 1L);
    VECTOR(int16_t, 8) l_1030 = (VECTOR(int16_t, 8))(0x1C83L, (VECTOR(int16_t, 4))(0x1C83L, (VECTOR(int16_t, 2))(0x1C83L, (-4L)), (-4L)), (-4L), 0x1C83L, (-4L));
    VECTOR(int16_t, 8) l_1031 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0F00L), 0x0F00L), 0x0F00L, 1L, 0x0F00L);
    int32_t **l_1034 = &p_1075->g_971;
    int32_t ***l_1033 = &l_1034;
    uint16_t *l_1035 = (void*)0;
    uint16_t *l_1036 = (void*)0;
    uint16_t *l_1037 = &p_1075->g_100;
    uint8_t *l_1046 = &p_1075->g_40;
    int32_t l_1047 = (-1L);
    int16_t *l_1048 = (void*)0;
    int16_t *l_1049 = &p_1075->g_75;
    int32_t *l_1050 = (void*)0;
    int32_t *l_1053 = (void*)0;
    int32_t *l_1054[7] = {&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018};
    uint16_t l_1055 = 0x7896L;
    int i, j;
    (*p_1075->g_55) = (FAKE_DIVERGE(p_1075->group_2_offset, get_group_id(2), 10) != ((l_1018 = (((0x2F8081190F5F5B6EL == (safe_div_func_uint32_t_u_u((((*p_6) | (((255UL | (*p_1075->g_414)) & (safe_rshift_func_int16_t_s_s(((safe_add_func_uint32_t_u_u(p_1075->g_685.x, ((VECTOR(int32_t, 16))(p_1075->g_1010.s1655423063473217)).s7)) > (l_1011 || (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 16))(l_1012.yxyyyyyyxyyxxyyy)), ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 8))(p_1075->g_1013.yxzyzyxw)).s0413360557552410, ((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(1UL, ((VECTOR(uint8_t, 4))(abs(((VECTOR(int8_t, 2))(9L, 0x45L)).xxxy))), ((((((((*l_1014) = (p_1075->g_166.x | (l_1011 <= 0UL))) == l_1012.x) | l_1011) , l_1012.x) < l_1011) == 0x69L) ^ p_10), 0x3CL, 0xDEL)).s42)).yyyx, ((VECTOR(uint8_t, 4))(7UL))))).yxyyyxzxzxywxzwz, ((VECTOR(uint8_t, 16))(253UL))))).lo, (uint8_t)0x71L))).s57, ((VECTOR(uint8_t, 2))(248UL)), ((VECTOR(uint8_t, 2))(8UL))))), (uint8_t)l_1012.y, (uint8_t)p_7))).yxxyxyxx)).s72)), ((VECTOR(uint8_t, 2))(1UL))))).yxyxxyyyyyxxxyyx))).sa47a)).z != l_1012.x))), 8))) < p_1075->g_1013.w)) != l_1012.x), (*p_1075->g_55)))) , (void*)0) != l_1015)) > 1L));
    l_1055 = (safe_add_func_int32_t_s_s(((*p_1075->g_55) = ((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(p_1075->g_1023.s1005617306034417)).sa6)).hi, ((safe_add_func_int64_t_s_s((((VECTOR(int16_t, 2))(p_1075->g_1026.yx)).odd ^ ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 4))(l_1027.s7724)).yyxzyxyw, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_1028.yyyyxyxyyyyxxyxy)).odd))))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_1029.s3773)).hi)), 0x5644L, 0x53B1L)).wyywxxwz))).s17, ((VECTOR(int16_t, 2))(0x6159L, 5L))))).yxyxyyxx, ((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 4))(l_1030.s2524)).xyxwywzzwwyxyyyx, ((VECTOR(int16_t, 8))(3L, (-3L), ((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 16))(l_1031.s5151766415212160)).s33bd, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x77C3L, (-9L))), 0x202FL, (-8L)))))), 1L, 0x62EFL)).s1162425646330204, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(p_1075->g_1032.s1021)).zywwyywxyzxwyxzy))))).hi))).s0), ((*l_1014) = GROUP_DIVERGE(2, 1)))) , (p_1075->g_98 && ((void*)0 != l_1033))))) == 0x8B39F5F0B8B4E573L)), ((((*l_1037) = 2UL) < (safe_div_func_int32_t_s_s(((((0x5EL | p_10) == (safe_div_func_uint64_t_u_u(0UL, ((safe_mul_func_int16_t_s_s(((*l_1049) ^= (((((safe_div_func_uint8_t_u_u(((*l_1046) = p_10), p_7)) && l_1047) && p_10) , (void*)0) != (void*)0)), 0x6AF1L)) && p_10)))) , p_7) > 1L), p_1075->g_1013.w))) > p_7)));
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1075->g_26 p_1075->g_55 p_1075->g_98 p_1075->g_56 p_1075->g_735 p_1075->g_1001
 * writes: p_1075->g_26 p_1075->g_735 p_1075->g_1001
 */
int32_t * func_11(int64_t  p_12, int8_t  p_13, int32_t * p_14, int16_t  p_15, struct S0 * p_1075)
{ /* block id: 410 */
    int32_t l_979 = 0x1EDAF8DCL;
    int32_t l_984 = (-3L);
    int32_t l_985 = 1L;
    int32_t l_986 = 0L;
    int32_t l_987 = 0x2F90C6A0L;
    int32_t l_988 = (-1L);
    int32_t l_989[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    uint32_t l_990 = 4294967286UL;
    int32_t *l_993 = &p_1075->g_26;
    int32_t *l_994 = &l_988;
    int32_t *l_995 = (void*)0;
    int32_t *l_996 = (void*)0;
    int32_t *l_997 = &l_989[3];
    int32_t *l_998 = (void*)0;
    int32_t *l_999[2];
    VECTOR(int32_t, 4) l_1000 = (VECTOR(int32_t, 4))(0x59D1323EL, (VECTOR(int32_t, 2))(0x59D1323EL, 0x7EC1325AL), 0x7EC1325AL);
    int i;
    for (i = 0; i < 2; i++)
        l_999[i] = (void*)0;
    for (p_1075->g_26 = 0; (p_1075->g_26 != (-6)); --p_1075->g_26)
    { /* block id: 413 */
        int32_t *l_975 = (void*)0;
        int32_t *l_976 = (void*)0;
        int32_t *l_977 = &p_1075->g_56;
        int32_t *l_978 = &p_1075->g_735;
        int32_t l_980 = 0x11EA9C1EL;
        int32_t *l_981 = (void*)0;
        int32_t *l_982 = (void*)0;
        int32_t *l_983[1][9][3] = {{{&p_1075->g_735,(void*)0,(void*)0},{&p_1075->g_735,(void*)0,(void*)0},{&p_1075->g_735,(void*)0,(void*)0},{&p_1075->g_735,(void*)0,(void*)0},{&p_1075->g_735,(void*)0,(void*)0},{&p_1075->g_735,(void*)0,(void*)0},{&p_1075->g_735,(void*)0,(void*)0},{&p_1075->g_735,(void*)0,(void*)0},{&p_1075->g_735,(void*)0,(void*)0}}};
        int i, j, k;
        l_990--;
        (*l_978) &= (*p_1075->g_55);
    }
    p_1075->g_1001[0]++;
    return &p_1075->g_98;
}


/* ------------------------------------------ */
/* 
 * reads : p_1075->g_26 p_1075->g_735 p_1075->g_592 p_1075->g_714 p_1075->g_414 p_1075->g_55 p_1075->g_98 p_1075->g_56 p_1075->g_89 p_1075->g_94 p_1075->g_468 p_1075->g_561 p_1075->g_69 p_1075->g_97 p_1075->l_comm_values p_1075->g_106 p_1075->g_893 p_1075->g_894 p_1075->g_432 p_1075->g_338 p_1075->g_917 p_1075->g_413 p_1075->g_928 p_1075->g_130
 * writes: p_1075->g_98 p_1075->g_89 p_1075->g_94 p_1075->g_179 p_1075->g_763 p_1075->g_103 p_1075->g_97 p_1075->g_26 p_1075->g_56 p_1075->g_55 p_1075->g_338 p_1075->g_917 p_1075->g_130 p_1075->g_735
 */
uint64_t  func_19(int32_t  p_20, int32_t * p_21, int32_t * p_22, int32_t * p_23, struct S0 * p_1075)
{ /* block id: 358 */
    int8_t ***l_797 = &p_1075->g_413[1][2];
    int8_t ***l_798 = (void*)0;
    int32_t l_799 = 0x4E6BF00DL;
    VECTOR(int32_t, 2) l_800 = (VECTOR(int32_t, 2))(0x60699DC8L, 0x30D66CFEL);
    VECTOR(uint16_t, 2) l_815 = (VECTOR(uint16_t, 2))(0xC56FL, 0x05FAL);
    int32_t **l_834 = &p_1075->g_55;
    int32_t ***l_833 = &l_834;
    uint16_t *l_837 = (void*)0;
    uint16_t *l_838[2][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_839 = 8L;
    int64_t l_840 = 0x00B3D5A6C556472CL;
    int32_t l_841 = 0x167BCC25L;
    uint16_t l_842 = 65535UL;
    uint64_t l_863 = 18446744073709551615UL;
    int32_t l_871[6][1];
    int64_t **l_885 = &p_1075->g_69[3][1];
    int16_t l_911 = 0x4662L;
    int8_t **l_944 = &p_1075->g_414;
    VECTOR(uint64_t, 2) l_960 = (VECTOR(uint64_t, 2))(1UL, 0xDAB5029941ABB8E8L);
    int i, j;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
            l_871[i][j] = 0x277BA9EEL;
    }
    if ((safe_mul_func_int16_t_s_s((((VECTOR(uint8_t, 4))(((((*p_22) = (l_797 != l_798)) > (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x18EE8F54L, 6L)), 0x5D04A489L, l_799, ((VECTOR(int32_t, 2))(l_800.yx)), 0x228AF7ACL, 0x2E891C62L)).s6 <= (safe_mod_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((l_800.y == (safe_mod_func_int8_t_s_s(((*p_1075->g_414) = (safe_sub_func_int64_t_s_s(((safe_div_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), FAKE_DIVERGE(p_1075->group_0_offset, get_group_id(0), 10))) >= (!(safe_lshift_func_uint8_t_u_s((((VECTOR(uint16_t, 2))(l_815.xy)).hi != ((~((safe_sub_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(0xAF80L, ((safe_rshift_func_uint16_t_u_u((safe_unary_minus_func_int64_t_s((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((0x62CEAA8900A7DA46L && ((safe_add_func_uint16_t_u_u((!(l_839 = (!(safe_mul_func_int8_t_s_s(((GROUP_DIVERGE(2, 1) , (((*l_833) = &p_21) != (((safe_lshift_func_int16_t_s_u(((*p_21) >= (*p_23)), p_1075->g_592.y)) <= p_20) , (void*)0))) , p_20), p_20))))), l_840)) < p_1075->g_714.s7)), p_1075->g_714.s3)), p_20)), l_840)))), 12)) != p_20))), GROUP_DIVERGE(0, 1))) | l_841)) && 0x55DB84211D58D76DL)), p_20)))), p_20))), 0x1DL))), 0x47AEL)) && l_842), 4)), 0x31FD36EF1EC34BB7L)))) == p_20), 0x9BL, 0x68L, 0x96L)).z | l_815.x), 0xC341L)))
    { /* block id: 363 */
        int64_t *l_843[4];
        uint32_t *l_857 = &p_1075->g_94;
        int32_t l_864 = 5L;
        uint32_t *l_865 = (void*)0;
        uint32_t *l_866 = &p_1075->g_179;
        int32_t l_867 = 0x607F80A9L;
        int32_t *l_868 = (void*)0;
        int32_t *l_869[5] = {&l_864,&l_864,&l_864,&l_864,&l_864};
        int64_t l_870 = (-1L);
        uint16_t l_872 = 1UL;
        uint8_t l_875 = 0x3DL;
        int i;
        for (i = 0; i < 4; i++)
            l_843[i] = &l_840;
        (*l_834) = func_66(l_843[2], (safe_sub_func_int16_t_s_s((((*p_1075->g_414) &= (**l_834)) >= ((((safe_add_func_uint16_t_u_u((18446744073709551608UL && (safe_add_func_uint16_t_u_u(((~(p_1075->g_763.s1 = ((*l_866) = (safe_div_func_int64_t_s_s((((safe_add_func_int8_t_s_s((2UL | GROUP_DIVERGE(1, 1)), (safe_sub_func_int16_t_s_s(((safe_unary_minus_func_uint32_t_u(((*l_857) |= p_20))) && 0x2B9C003089662C00L), ((safe_add_func_int64_t_s_s((&p_1075->g_681[8][5] == ((safe_mul_func_int8_t_s_s(p_20, (safe_unary_minus_func_int32_t_s(((l_864 = (p_20 < l_863)) & 18446744073709551610UL))))) , &p_1075->g_681[4][2])), GROUP_DIVERGE(1, 1))) >= p_1075->g_468.se))))) > 7L) & 0UL), (***l_833)))))) == l_867), (***l_833)))), 0x614AL)) , p_1075->g_561.z) , p_20) | (-5L))), 0x008FL)), p_1075);
        l_872--;
        l_875--;
        (**l_833) = (**l_833);
    }
    else
    { /* block id: 373 */
        int64_t **l_886 = &p_1075->g_69[2][1];
        int32_t l_901 = 0x5F021D94L;
        int16_t *l_902 = (void*)0;
        int32_t l_903 = 0x728C0C77L;
        uint8_t *l_904 = &p_1075->g_97;
        int32_t l_916[3][2][9] = {{{0x7FB3EFEDL,0x3E61BE11L,2L,1L,0x3E61BE11L,1L,2L,0x3E61BE11L,0x7FB3EFEDL},{0x7FB3EFEDL,0x3E61BE11L,2L,1L,0x3E61BE11L,1L,2L,0x3E61BE11L,0x7FB3EFEDL}},{{0x7FB3EFEDL,0x3E61BE11L,2L,1L,0x3E61BE11L,1L,2L,0x3E61BE11L,0x7FB3EFEDL},{0x7FB3EFEDL,0x3E61BE11L,2L,1L,0x3E61BE11L,1L,2L,0x3E61BE11L,0x7FB3EFEDL}},{{0x7FB3EFEDL,0x3E61BE11L,2L,1L,0x3E61BE11L,1L,2L,0x3E61BE11L,0x7FB3EFEDL},{0x7FB3EFEDL,0x3E61BE11L,2L,1L,0x3E61BE11L,1L,2L,0x3E61BE11L,0x7FB3EFEDL}}};
        VECTOR(uint8_t, 8) l_929 = (VECTOR(uint8_t, 8))(0x55L, (VECTOR(uint8_t, 4))(0x55L, (VECTOR(uint8_t, 2))(0x55L, 1UL), 1UL), 1UL, 0x55L, 1UL);
        int8_t **l_943 = &p_1075->g_414;
        VECTOR(int64_t, 8) l_955 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x3C6CB20A0FD89C94L), 0x3C6CB20A0FD89C94L), 0x3C6CB20A0FD89C94L, 0L, 0x3C6CB20A0FD89C94L);
        VECTOR(uint64_t, 2) l_967 = (VECTOR(uint64_t, 2))(18446744073709551614UL, 0UL);
        int i, j, k;
        (*l_834) = func_66(((((*l_904) = ((safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(((safe_unary_minus_func_uint8_t_u((p_20 | 0x87L))) || (l_885 == l_886)), (safe_div_func_uint16_t_u_u((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(0x53167B4D115BF667L, ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 4))(p_20, (l_903 = ((safe_lshift_func_int16_t_s_s((l_901 = ((safe_mul_func_int16_t_s_s(0x3576L, ((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1075->g_893.xx)).xyxx)).wwyzyyxwwyzyzxzy, ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(0x5939L, 0L)).xyyy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 2))(p_1075->g_894.s55)).yxxy, (int16_t)(p_1075->g_432.y , (0L <= ((***l_833) = (safe_lshift_func_int8_t_s_s(((safe_sub_func_uint32_t_u_u((safe_add_func_int64_t_s_s((***l_833), 0x9AF793C4747CD362L)), (*p_1075->g_55))) < l_901), l_901)))))))).yxyzzyzy)).lo)), ((VECTOR(int16_t, 4))(1L))))).yzyzxzwyyzwzzyxy))), ((VECTOR(int16_t, 16))(0x7C10L))))).s9)) >= l_901)), p_1075->g_432.x)) > FAKE_DIVERGE(p_1075->local_1_offset, get_local_id(1), 10))), 2L, 0L)), ((VECTOR(int64_t, 4))((-2L)))))).yxyyxxzxyxxzzwzy)).hi, ((VECTOR(int64_t, 8))((-2L)))))).s4, 9L, 1L)).zxxyyxzx)), ((VECTOR(int64_t, 4))((-1L))), (-1L), 4L, 1L, 0x5BD72459E1C2CE68L)).se , p_20), 0x248DL)))), 4294967295UL)) , FAKE_DIVERGE(p_1075->group_2_offset, get_group_id(2), 10))) < p_20) , (void*)0), p_20, p_1075);
        if ((l_901 | GROUP_DIVERGE(0, 1)))
        { /* block id: 379 */
            int16_t l_909[8] = {1L,(-1L),1L,1L,(-1L),1L,1L,(-1L)};
            int32_t l_910 = 7L;
            int32_t l_912 = 8L;
            int32_t l_913 = 1L;
            int32_t l_914 = 2L;
            int32_t l_915 = 0x4B16E9A0L;
            VECTOR(uint8_t, 2) l_930 = (VECTOR(uint8_t, 2))(248UL, 0UL);
            int i;
            for (p_1075->g_338 = 0; (p_1075->g_338 == (-23)); p_1075->g_338--)
            { /* block id: 382 */
                int32_t *l_907 = &l_841;
                int32_t *l_908[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_908[i] = &p_1075->g_56;
                p_1075->g_917[1]++;
                return p_20;
            }
            (**l_833) = func_66((*l_885), (0UL <= (safe_sub_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((p_20 ^ (*p_1075->g_55)), 14)), ((0x5A1BL <= ((((((***l_797) = p_20) && FAKE_DIVERGE(p_1075->global_2_offset, get_global_id(2), 10)) , (((safe_mul_func_uint8_t_u_u((((safe_div_func_int64_t_s_s(((((~(-6L)) ^ ((VECTOR(uint32_t, 8))(p_1075->g_928.yxxyxyyy)).s2) != (((((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 4))(0xE3L, ((VECTOR(uint8_t, 2))(l_929.s65)), 254UL)).lo, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_930.xyyxyyxx)).s1213333543660205)).s1a))).odd ^ ((4L == (**l_834)) == (***l_833))) != 0L) > p_20)) < p_20), l_913)) < 1UL) && 5L), p_20)) | (*p_21)) && (-2L))) , (void*)0) == (void*)0)) & l_930.y)))), p_1075);
        }
        else
        { /* block id: 388 */
            uint8_t l_949 = 255UL;
            int32_t l_950 = 0x234F31CFL;
            int32_t l_951 = 0L;
            int32_t l_952 = 0x462D65BEL;
            int32_t *l_963 = (void*)0;
            int32_t *l_964 = &l_839;
            int32_t *l_965 = &l_839;
            int32_t *l_966[6][9][4] = {{{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839}},{{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839}},{{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839}},{{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839}},{{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839}},{{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839},{(void*)0,(void*)0,(void*)0,&l_839}}};
            int i, j, k;
            if ((atomic_inc(&p_1075->g_atomic_input[47 * get_linear_group_id() + 37]) == 8))
            { /* block id: 390 */
                uint64_t l_931 = 0x39A7E8E905505F97L;
                int8_t l_932 = 0x39L;
                uint16_t l_933 = 0x89C8L;
                uint32_t l_934 = 0x6F50C10EL;
                uint64_t l_935 = 4UL;
                int16_t l_936 = 0L;
                uint32_t l_937 = 0xDBE2AE57L;
                uint8_t l_938 = 0x51L;
                l_932 = l_931;
                l_934 &= l_933;
                l_936 = (l_935 |= 0x28745468L);
                l_938 |= l_937;
                unsigned int result = 0;
                result += l_931;
                result += l_932;
                result += l_933;
                result += l_934;
                result += l_935;
                result += l_936;
                result += l_937;
                result += l_938;
                atomic_add(&p_1075->g_special_values[47 * get_linear_group_id() + 37], result);
            }
            else
            { /* block id: 396 */
                (1 + 1);
            }
            (*p_23) &= (safe_add_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(((l_943 == l_944) < ((l_950 = (0x239B58B65DBA8F03L && (((safe_sub_func_int8_t_s_s(((l_949 , (-5L)) <= (p_1075->g_130.sb++)), p_20)) <= 0x19L) < ((VECTOR(int64_t, 16))(0x6D53A4B9152D42E0L, ((VECTOR(int64_t, 4))(l_955.s2443)), (-1L), (-7L), ((VECTOR(int64_t, 4))((safe_mul_func_int8_t_s_s(((*p_1075->g_414) = l_929.s4), p_20)), 5L, 0x254471EA812B859CL, 0x275643E15C338F82L)), 1L, (***l_833), p_20, (-5L), 0x334D2F6AD0301B14L)).sb))) != p_1075->g_468.s1)), (-8L))), l_901));
            l_901 |= ((safe_mul_func_int16_t_s_s((&p_1075->g_106 == (((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_960.xx)).xxxyyyxyxxyxxyyy)).s3 != (0x105D1108L & (p_20 == (&p_1075->g_579[0][4] != p_21)))) > (0x2CL != ((l_955.s2 && (l_916[2][1][6] != l_950)) || (**l_834)))) , &l_863)), l_929.s2)) ^ p_20);
            --l_967.y;
        }
    }
    (*p_22) = (p_20 , (~(*p_21)));
    return (**l_834);
}


/* ------------------------------------------ */
/* 
 * reads : p_1075->g_362 p_1075->g_26
 * writes: p_1075->g_362 p_1075->g_26
 */
int32_t * func_27(int16_t  p_28, uint64_t  p_29, struct S0 * p_1075)
{ /* block id: 186 */
    int32_t *l_361[7] = {&p_1075->g_26,&p_1075->g_98,&p_1075->g_26,&p_1075->g_26,&p_1075->g_98,&p_1075->g_26,&p_1075->g_26};
    uint32_t *l_408 = &p_1075->g_94;
    uint32_t **l_407 = &l_408;
    VECTOR(int32_t, 8) l_445 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
    int64_t *l_479 = (void*)0;
    uint32_t l_542 = 0UL;
    uint8_t l_558 = 0x10L;
    VECTOR(int32_t, 8) l_559 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x35D4D2C4L), 0x35D4D2C4L), 0x35D4D2C4L, 0L, 0x35D4D2C4L);
    int32_t **l_586 = &p_1075->g_55;
    VECTOR(uint32_t, 16) l_588 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967288UL), 4294967288UL), 4294967288UL, 1UL, 4294967288UL, (VECTOR(uint32_t, 2))(1UL, 4294967288UL), (VECTOR(uint32_t, 2))(1UL, 4294967288UL), 1UL, 4294967288UL, 1UL, 4294967288UL);
    VECTOR(uint8_t, 4) l_594 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 6UL), 6UL);
    uint16_t l_665[3];
    VECTOR(int32_t, 2) l_684 = (VECTOR(int32_t, 2))((-3L), 0x4C51C595L);
    int8_t l_696[6][4][1] = {{{0x2FL},{0x2FL},{0x2FL},{0x2FL}},{{0x2FL},{0x2FL},{0x2FL},{0x2FL}},{{0x2FL},{0x2FL},{0x2FL},{0x2FL}},{{0x2FL},{0x2FL},{0x2FL},{0x2FL}},{{0x2FL},{0x2FL},{0x2FL},{0x2FL}},{{0x2FL},{0x2FL},{0x2FL},{0x2FL}}};
    int16_t l_713 = 2L;
    VECTOR(uint32_t, 16) l_720 = (VECTOR(uint32_t, 16))(0xE9EF673DL, (VECTOR(uint32_t, 4))(0xE9EF673DL, (VECTOR(uint32_t, 2))(0xE9EF673DL, 4294967295UL), 4294967295UL), 4294967295UL, 0xE9EF673DL, 4294967295UL, (VECTOR(uint32_t, 2))(0xE9EF673DL, 4294967295UL), (VECTOR(uint32_t, 2))(0xE9EF673DL, 4294967295UL), 0xE9EF673DL, 4294967295UL, 0xE9EF673DL, 4294967295UL);
    uint8_t l_792 = 1UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_665[i] = 0x75CDL;
    p_1075->g_362++;
    for (p_1075->g_26 = 0; (p_1075->g_26 > 21); p_1075->g_26++)
    { /* block id: 190 */
        VECTOR(uint16_t, 8) l_367 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65528UL), 65528UL), 65528UL, 1UL, 65528UL);
        int32_t l_368 = (-10L);
        int8_t *l_383 = &p_1075->g_89;
        uint64_t *l_419 = (void*)0;
        uint32_t *l_478 = (void*)0;
        int32_t l_539[6][8] = {{1L,0L,0x269DC7DEL,0L,0x22DB22BAL,0x22DB22BAL,0L,0x269DC7DEL},{1L,0L,0x269DC7DEL,0L,0x22DB22BAL,0x22DB22BAL,0L,0x269DC7DEL},{1L,0L,0x269DC7DEL,0L,0x22DB22BAL,0x22DB22BAL,0L,0x269DC7DEL},{1L,0L,0x269DC7DEL,0L,0x22DB22BAL,0x22DB22BAL,0L,0x269DC7DEL},{1L,0L,0x269DC7DEL,0L,0x22DB22BAL,0x22DB22BAL,0L,0x269DC7DEL},{1L,0L,0x269DC7DEL,0L,0x22DB22BAL,0x22DB22BAL,0L,0x269DC7DEL}};
        int16_t *l_557 = &p_1075->g_75;
        VECTOR(int32_t, 8) l_587 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x784389F6L), 0x784389F6L), 0x784389F6L, (-6L), 0x784389F6L);
        int32_t l_709 = (-8L);
        VECTOR(int32_t, 16) l_762 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
        int16_t l_788 = 0x6FA2L;
        int i, j;
        l_368 = ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(0x4E64L, 0x45BDL)).yxxxxxxx, ((VECTOR(uint16_t, 2))(l_367.s21)).xyyxyxyy))).s1;
    }
    l_792--;
    return &p_1075->g_98;
}


/* ------------------------------------------ */
/* 
 * reads : p_1075->g_56 p_1075->g_69 p_1075->g_comm_values p_1075->l_comm_values p_1075->g_75 p_1075->g_89 p_1075->g_98 p_1075->g_55 p_1075->g_103 p_1075->g_97 p_1075->g_26 p_1075->g_106 p_1075->g_166 p_1075->g_134 p_1075->g_40 p_1075->g_176 p_1075->g_179
 * writes: p_1075->g_94 p_1075->g_40 p_1075->g_97 p_1075->g_98 p_1075->g_103 p_1075->g_106 p_1075->g_26 p_1075->g_56 p_1075->g_55 p_1075->g_176 p_1075->g_89
 */
int16_t  func_30(uint64_t  p_31, int64_t  p_32, int32_t * p_33, int32_t * p_34, uint32_t  p_35, struct S0 * p_1075)
{ /* block id: 10 */
    VECTOR(uint64_t, 4) l_182 = (VECTOR(uint64_t, 4))(0x77165E9A02EE29DFL, (VECTOR(uint64_t, 2))(0x77165E9A02EE29DFL, 0UL), 0UL);
    VECTOR(int64_t, 8) l_185 = (VECTOR(int64_t, 8))(0x7BE80DE5B8234502L, (VECTOR(int64_t, 4))(0x7BE80DE5B8234502L, (VECTOR(int64_t, 2))(0x7BE80DE5B8234502L, 0L), 0L), 0L, 0x7BE80DE5B8234502L, 0L);
    int8_t *l_186 = (void*)0;
    int8_t *l_187 = (void*)0;
    int8_t *l_188 = &p_1075->g_89;
    int32_t l_201 = 0x2DB24207L;
    VECTOR(uint16_t, 16) l_202 = (VECTOR(uint16_t, 16))(0xAAC9L, (VECTOR(uint16_t, 4))(0xAAC9L, (VECTOR(uint16_t, 2))(0xAAC9L, 4UL), 4UL), 4UL, 0xAAC9L, 4UL, (VECTOR(uint16_t, 2))(0xAAC9L, 4UL), (VECTOR(uint16_t, 2))(0xAAC9L, 4UL), 0xAAC9L, 4UL, 0xAAC9L, 4UL);
    uint8_t l_340[5];
    int32_t **l_355[3][3][4] = {{{(void*)0,&p_1075->g_55,&p_1075->g_55,(void*)0},{(void*)0,&p_1075->g_55,&p_1075->g_55,(void*)0},{(void*)0,&p_1075->g_55,&p_1075->g_55,(void*)0}},{{(void*)0,&p_1075->g_55,&p_1075->g_55,(void*)0},{(void*)0,&p_1075->g_55,&p_1075->g_55,(void*)0},{(void*)0,&p_1075->g_55,&p_1075->g_55,(void*)0}},{{(void*)0,&p_1075->g_55,&p_1075->g_55,(void*)0},{(void*)0,&p_1075->g_55,&p_1075->g_55,(void*)0},{(void*)0,&p_1075->g_55,&p_1075->g_55,(void*)0}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_340[i] = 0UL;
    if ((3UL < ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(0x0C01EF4FC6A3F0BDL, ((safe_lshift_func_int8_t_s_u(func_59((*p_33), p_35, p_1075), 5)) | p_1075->g_179), ((VECTOR(uint64_t, 2))(l_182.wx)), ((l_182.x < (safe_div_func_int64_t_s_s(((VECTOR(int64_t, 16))((-1L), ((VECTOR(int64_t, 8))(l_185.s42503615)), (-2L), ((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 16))(0x2B60F18CD6108190L, 0x0DE277DF494586F0L, (((*l_188) ^= (GROUP_DIVERGE(1, 1) >= (l_186 == l_186))) , p_32), ((VECTOR(int64_t, 8))(0x4690C4E51E7AA7DCL)), p_32, (-4L), 0L, 2L, 0x41CA0347CC1243A7L)).s85, ((VECTOR(int64_t, 2))(0x4ADEBA3FE0BE34E6L))))), 7L, 0x514C4754AE1B3826L, (-3L), 4L)).sa, p_31))) , 0xB735E30AAAE0B6ECL), 7UL, 18446744073709551615UL, 9UL)))).even, ((VECTOR(uint64_t, 4))(6UL))))).hi)).lo))
    { /* block id: 63 */
        uint16_t l_189 = 0UL;
        int16_t *l_196 = &p_1075->g_75;
        uint8_t *l_200 = &p_1075->g_40;
        uint8_t **l_199 = &l_200;
        l_189++;
        (*p_34) |= (safe_sub_func_uint64_t_u_u(((safe_add_func_uint32_t_u_u(p_35, (l_196 != ((((0UL || (safe_sub_func_int8_t_s_s((((*l_199) = &p_1075->g_97) == &p_1075->g_40), (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(0x1E06L, (l_201 |= 0x11EAL), 0xC287L, 65535UL)).xxzxxyzyxyzxyzyw)).s6550)), 65535UL, ((VECTOR(uint16_t, 2))(65535UL, 65532UL)), 65530UL)).s6 <= l_185.s5)))) ^ 5UL) >= ((VECTOR(uint16_t, 4))(l_202.sc283)).y) , &p_1075->g_75)))) , 4UL), l_182.y));
        (*p_1075->g_55) &= 1L;
        return p_31;
    }
    else
    { /* block id: 70 */
        if ((atomic_inc(&p_1075->l_atomic_input[9]) == 8))
        { /* block id: 72 */
            if (((VECTOR(int32_t, 2))(0x0F39675CL, 0x1C1A7F16L)).lo)
            { /* block id: 73 */
                uint32_t l_203 = 4294967295UL;
                uint8_t l_204 = 0x67L;
                int32_t l_205[1][4][10] = {{{7L,(-7L),(-7L),7L,0x6EDB1092L,0x66E0729CL,0x66E0729CL,0x6EDB1092L,7L,(-7L)},{7L,(-7L),(-7L),7L,0x6EDB1092L,0x66E0729CL,0x66E0729CL,0x6EDB1092L,7L,(-7L)},{7L,(-7L),(-7L),7L,0x6EDB1092L,0x66E0729CL,0x66E0729CL,0x6EDB1092L,7L,(-7L)},{7L,(-7L),(-7L),7L,0x6EDB1092L,0x66E0729CL,0x66E0729CL,0x6EDB1092L,7L,(-7L)}}};
                int32_t *l_281 = &l_205[0][0][6];
                int32_t *l_282 = &l_205[0][0][6];
                int32_t *l_283 = (void*)0;
                int i, j, k;
                l_205[0][0][6] ^= (l_204 = l_203);
                for (l_203 = 27; (l_203 != 7); --l_203)
                { /* block id: 78 */
                    uint8_t l_208 = 252UL;
                    if (l_208)
                    { /* block id: 79 */
                        VECTOR(int64_t, 8) l_209 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x5AA28B3A16827867L), 0x5AA28B3A16827867L), 0x5AA28B3A16827867L, (-1L), 0x5AA28B3A16827867L);
                        int8_t l_210 = 0x34L;
                        int64_t l_211 = 0x6342583E332AA214L;
                        int32_t *l_212 = (void*)0;
                        int32_t *l_213 = (void*)0;
                        int i;
                        l_205[0][2][4] ^= l_209.s4;
                        l_205[0][3][1] = l_210;
                        l_213 = (l_211 , l_212);
                    }
                    else
                    { /* block id: 83 */
                        uint32_t l_214 = 0x0A5AFFB3L;
                        int64_t l_215 = (-10L);
                        uint32_t l_216 = 0xBAE6BA0DL;
                        l_216 &= (l_205[0][0][6] &= ((l_214 = GROUP_DIVERGE(1, 1)) , l_215));
                        l_205[0][0][6] = 4L;
                    }
                    for (l_208 = 0; (l_208 > 29); l_208 = safe_add_func_uint64_t_u_u(l_208, 2))
                    { /* block id: 91 */
                        int32_t l_219 = 1L;
                        VECTOR(uint64_t, 4) l_220 = (VECTOR(uint64_t, 4))(0xC6EC92A06D2CD217L, (VECTOR(uint64_t, 2))(0xC6EC92A06D2CD217L, 0x3BEA549995AE5765L), 0x3BEA549995AE5765L);
                        VECTOR(uint64_t, 8) l_221 = (VECTOR(uint64_t, 8))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 0UL), 0UL), 0UL, 2UL, 0UL);
                        VECTOR(uint64_t, 16) l_222 = (VECTOR(uint64_t, 16))(0x0F5AFB2FD5C622FEL, (VECTOR(uint64_t, 4))(0x0F5AFB2FD5C622FEL, (VECTOR(uint64_t, 2))(0x0F5AFB2FD5C622FEL, 1UL), 1UL), 1UL, 0x0F5AFB2FD5C622FEL, 1UL, (VECTOR(uint64_t, 2))(0x0F5AFB2FD5C622FEL, 1UL), (VECTOR(uint64_t, 2))(0x0F5AFB2FD5C622FEL, 1UL), 0x0F5AFB2FD5C622FEL, 1UL, 0x0F5AFB2FD5C622FEL, 1UL);
                        VECTOR(uint64_t, 16) l_223 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x4A5735E2F0389D98L), 0x4A5735E2F0389D98L), 0x4A5735E2F0389D98L, 18446744073709551615UL, 0x4A5735E2F0389D98L, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x4A5735E2F0389D98L), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x4A5735E2F0389D98L), 18446744073709551615UL, 0x4A5735E2F0389D98L, 18446744073709551615UL, 0x4A5735E2F0389D98L);
                        VECTOR(uint64_t, 16) l_224 = (VECTOR(uint64_t, 16))(18446744073709551610UL, (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 0x1898E5B0AA003E9EL), 0x1898E5B0AA003E9EL), 0x1898E5B0AA003E9EL, 18446744073709551610UL, 0x1898E5B0AA003E9EL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 0x1898E5B0AA003E9EL), (VECTOR(uint64_t, 2))(18446744073709551610UL, 0x1898E5B0AA003E9EL), 18446744073709551610UL, 0x1898E5B0AA003E9EL, 18446744073709551610UL, 0x1898E5B0AA003E9EL);
                        uint32_t l_225 = 4294967291UL;
                        VECTOR(uint32_t, 4) l_226 = (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0x4E1CEA77L), 0x4E1CEA77L);
                        VECTOR(uint32_t, 2) l_227 = (VECTOR(uint32_t, 2))(0xC5A3DE78L, 0UL);
                        VECTOR(uint64_t, 2) l_228 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 6UL);
                        int8_t l_229 = 0x09L;
                        VECTOR(uint32_t, 8) l_230 = (VECTOR(uint32_t, 8))(0xC10CD837L, (VECTOR(uint32_t, 4))(0xC10CD837L, (VECTOR(uint32_t, 2))(0xC10CD837L, 0x677E4473L), 0x677E4473L), 0x677E4473L, 0xC10CD837L, 0x677E4473L);
                        VECTOR(uint32_t, 4) l_231 = (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 0x0069F1A1L), 0x0069F1A1L);
                        VECTOR(uint32_t, 2) l_232 = (VECTOR(uint32_t, 2))(0x8542A959L, 0x1BBB0D99L);
                        VECTOR(uint32_t, 2) l_233 = (VECTOR(uint32_t, 2))(0xE0CEF930L, 0UL);
                        VECTOR(int32_t, 16) l_234 = (VECTOR(int32_t, 16))(0x007EA7F4L, (VECTOR(int32_t, 4))(0x007EA7F4L, (VECTOR(int32_t, 2))(0x007EA7F4L, 0L), 0L), 0L, 0x007EA7F4L, 0L, (VECTOR(int32_t, 2))(0x007EA7F4L, 0L), (VECTOR(int32_t, 2))(0x007EA7F4L, 0L), 0x007EA7F4L, 0L, 0x007EA7F4L, 0L);
                        VECTOR(uint32_t, 4) l_235 = (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 0x4994B004L), 0x4994B004L);
                        VECTOR(uint64_t, 16) l_236 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551614UL), 18446744073709551614UL), 18446744073709551614UL, 0UL, 18446744073709551614UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551614UL), (VECTOR(uint64_t, 2))(0UL, 18446744073709551614UL), 0UL, 18446744073709551614UL, 0UL, 18446744073709551614UL);
                        VECTOR(uint64_t, 8) l_237 = (VECTOR(uint64_t, 8))(0xB28D6676D7E888E8L, (VECTOR(uint64_t, 4))(0xB28D6676D7E888E8L, (VECTOR(uint64_t, 2))(0xB28D6676D7E888E8L, 1UL), 1UL), 1UL, 0xB28D6676D7E888E8L, 1UL);
                        uint16_t l_238 = 0x59A0L;
                        int32_t l_239 = 0x0137D2C3L;
                        VECTOR(uint64_t, 4) l_240 = (VECTOR(uint64_t, 4))(0x174530BE24ED17E8L, (VECTOR(uint64_t, 2))(0x174530BE24ED17E8L, 18446744073709551615UL), 18446744073709551615UL);
                        uint8_t l_241 = 0x63L;
                        uint64_t l_242 = 0xD5D3CAC74BC94A9FL;
                        int16_t l_243 = (-8L);
                        int16_t l_244 = (-6L);
                        int8_t l_245 = (-4L);
                        VECTOR(uint64_t, 4) l_246 = (VECTOR(uint64_t, 4))(0x75CEDE9DFE08E61AL, (VECTOR(uint64_t, 2))(0x75CEDE9DFE08E61AL, 0x3819C18BA1A4CF78L), 0x3819C18BA1A4CF78L);
                        uint8_t l_247 = 0x68L;
                        int64_t l_248[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
                        int32_t l_249 = 0x05A6EE20L;
                        int16_t l_250[1];
                        uint32_t l_251 = 0x2643BFFDL;
                        uint64_t l_252 = 1UL;
                        uint64_t l_253 = 0x256835DC99D92286L;
                        int32_t l_254 = (-1L);
                        uint64_t l_255 = 0UL;
                        uint32_t l_256 = 0x26863623L;
                        int16_t l_257 = 0x4CF2L;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_250[i] = 1L;
                        l_257 &= (l_205[0][0][6] = (((l_219 = 0x0D241F43L) , ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_220.wz)).yxyyxxxyyyyyxxxy)).s4) , ((((((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_221.s74)).xxyyxyyx)).lo, ((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 4))(l_222.sdcd1)).lo, ((VECTOR(uint64_t, 16))(l_223.s1c66f5831237ca5b)).s18))).xyyx, ((VECTOR(uint64_t, 16))(0xD4F6F6D356F013EEL, (l_225 = ((VECTOR(uint64_t, 16))(l_224.s2f2d2754f78d936c)).s7), 6UL, ((VECTOR(uint64_t, 4))(0x32DDB291FB98A573L, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))((((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(l_226.xw)))))).xyxyxyxx, ((VECTOR(uint32_t, 8))(l_227.yyxyyyxy))))).s0 , ((VECTOR(uint64_t, 2))(l_228.xy)).hi), GROUP_DIVERGE(2, 1), 0xE6CCCA00BC215807L, 7UL)).odd)).xyyxyxxyyxxxyyyx)))).lo, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(0x41C2129FDFF16795L, (l_222.s4 = l_229), (((VECTOR(uint32_t, 4))(7UL, ((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 4))(l_230.s4431)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(l_231.zyzxwxyx)).s46)).hi, 4294967289UL, 0xCE1DBADAL, 0x3FEC30DDL)), ((VECTOR(uint32_t, 2))(l_232.yy)), 0xF0F0D5E2L, 0xD0AC4E5AL)).lo))).xwxzxxzx)).s70, ((VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_233.yyxy)).wzzyzxxwwzxyxyxx)))).hi, ((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 4))((-1L), 0x4647D599L, 0x13ED6143L, 0x7FD2AC4DL)).odd))).yxxyxyxy, ((VECTOR(uint32_t, 16))(max(((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_234.sbb87969e0e3cd681)))).even)).s36)).yyxxxxxy)).even)).hi))).xyxyxyxyyxyxyxyx, ((VECTOR(uint32_t, 2))(4294967293UL, 0xEDAC9BB0L)).xyxxyxxyyxyxxxyx))).odd)))))).lo)).odd))), ((VECTOR(uint32_t, 4))(l_235.xwxw)).even))), 0x36A6250EL)).x , ((VECTOR(uint64_t, 8))(l_236.s8a8d59f8)).s5), ((VECTOR(uint64_t, 2))(1UL, 0xFA056FA88BA8CF15L)), 0x075CF2C8D41C1FC5L, 18446744073709551606UL, 0xC469C5E9B74890E8L)).s4755172312040412)).even, ((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(l_237.s30633005)).lo)))).zyzwywxy)).s77, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),uint64_t,((VECTOR(uint64_t, 16))((l_239 = l_238), 18446744073709551615UL, ((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 2))(l_240.wz)), ((VECTOR(uint64_t, 4))(2UL, 0x06FBF4255ED36315L, 18446744073709551614UL, 0UL)).lo))), ((VECTOR(uint64_t, 4))(0x0BF1236BC38D9B2EL, 1UL, 0UL, 0xEC96DF6385176C9AL)).z, l_241, 0x0B9372C3EF3CD140L, l_242, 0x5C2DBD2CD2D696FFL, 1UL, 0x816AAFB0FECEFA5DL, 18446744073709551607UL, (l_244 &= (GROUP_DIVERGE(0, 1) , l_243)), 0xA4B804852DBE1E36L, 0UL, 0UL)).s2949, (uint64_t)l_245, (uint64_t)((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(l_246.xzyz)).yyzzxxwxwwyxwywy)).s52d0)), ((VECTOR(uint64_t, 4))(l_247, ((VECTOR(uint64_t, 2))(0x3173BE65349B85D4L)), 0x6B06F44EE2C13680L)), ((VECTOR(uint64_t, 4))(0UL))))), 0UL, l_248[1], ((VECTOR(uint64_t, 8))(0x0B3AA981A23D4C61L)), 0xC1E4EE88E0490F63L, 1UL)).se))))), 1UL, ((VECTOR(uint64_t, 2))(18446744073709551613UL)), 0UL)).s36))), l_249, ((VECTOR(uint64_t, 4))(18446744073709551615UL)), 0x11E99F57404985C1L)).hi)), 0UL, 0x253305DE484FDC5EL, ((VECTOR(uint64_t, 2))(0x42B9B84B15C6B0E9L)), l_250[0], l_251, ((VECTOR(uint64_t, 2))(0xD12F06FB0A4E482CL)), l_252, 18446744073709551606UL, 0UL, 0xAF7623DAB1411F47L)).s92d4))).wzwzzzyx, ((VECTOR(uint64_t, 8))(2UL)), ((VECTOR(uint64_t, 8))(0x4D2650AE14CD8B81L))))))).hi, ((VECTOR(uint64_t, 4))(0xB790A924B26B4A26L))))).wwxxxzyx, ((VECTOR(uint64_t, 8))(0xA8BBA51722BCE109L))))), 6UL, 0UL, GROUP_DIVERGE(2, 1), l_253, 0xDB2BD2A3ABB0B635L, 1UL, 0UL, 7UL)).hi))))).s17)), 5UL)), 1UL, 0xFBBC112215C509B7L, 0xF85B942BDC136031L, ((VECTOR(uint64_t, 2))(0xAFA37F3704DF307DL)), ((VECTOR(uint64_t, 4))(1UL)))).s96f0))).z , l_254) , l_255) , (-7L)) , l_256)));
                    }
                    for (l_208 = 0; (l_208 >= 57); l_208 = safe_add_func_int16_t_s_s(l_208, 9))
                    { /* block id: 102 */
                        VECTOR(int16_t, 16) l_260 = (VECTOR(int16_t, 16))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 1L), 1L), 1L, 6L, 1L, (VECTOR(int16_t, 2))(6L, 1L), (VECTOR(int16_t, 2))(6L, 1L), 6L, 1L, 6L, 1L);
                        uint64_t l_261 = 0x9E4CFCB6A1154A73L;
                        int i;
                        l_205[0][2][3] = l_260.s0;
                        l_261--;
                    }
                    for (l_208 = 22; (l_208 >= 15); --l_208)
                    { /* block id: 108 */
                        VECTOR(int16_t, 16) l_266 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x2B7DL), 0x2B7DL), 0x2B7DL, 0L, 0x2B7DL, (VECTOR(int16_t, 2))(0L, 0x2B7DL), (VECTOR(int16_t, 2))(0L, 0x2B7DL), 0L, 0x2B7DL, 0L, 0x2B7DL);
                        VECTOR(uint16_t, 16) l_267 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xFF7CL), 0xFF7CL), 0xFF7CL, 65535UL, 0xFF7CL, (VECTOR(uint16_t, 2))(65535UL, 0xFF7CL), (VECTOR(uint16_t, 2))(65535UL, 0xFF7CL), 65535UL, 0xFF7CL, 65535UL, 0xFF7CL);
                        uint8_t l_268 = 0xE7L;
                        VECTOR(uint16_t, 2) l_269 = (VECTOR(uint16_t, 2))(0x127DL, 0x0023L);
                        VECTOR(int32_t, 2) l_270 = (VECTOR(int32_t, 2))((-4L), 0x242C8726L);
                        VECTOR(int32_t, 8) l_271 = (VECTOR(int32_t, 8))(0x47EED4EAL, (VECTOR(int32_t, 4))(0x47EED4EAL, (VECTOR(int32_t, 2))(0x47EED4EAL, 0x16783712L), 0x16783712L), 0x16783712L, 0x47EED4EAL, 0x16783712L);
                        int32_t l_272 = 0x27DD0A56L;
                        int32_t l_273 = (-9L);
                        int32_t l_274 = 0x14A89D1CL;
                        uint8_t l_275 = 0xFCL;
                        uint32_t l_278 = 1UL;
                        int i;
                        l_205[0][3][3] = (((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(l_266.s5dae991ab5ba0f18)).s5e36, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(0x5AE4L, ((VECTOR(uint16_t, 4))(l_267.sd0a7)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(l_268, 3UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_269.yx)))), 0xB637L, 0x07E3L, 65535UL, 0xEAB5L)).s76)), 0UL)).s6475363240063656)).s2c52)).odd)).yxyy))).z , ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(l_270.xyyyxyyxxyxxyyxx)).s9d6c, ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(l_271.s24)).yyxy, ((VECTOR(int32_t, 4))(0x340E4FFFL, ((VECTOR(int32_t, 2))((-1L), 0L)), (-4L))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0L, 1L)))).yxxy))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-1L), 4L)).yyyyxxyxxxyxxxyx)).s9da9))).x);
                        l_275++;
                        --l_278;
                    }
                }
                l_283 = (l_282 = l_281);
                for (l_205[0][0][5] = 6; (l_205[0][0][5] != 28); l_205[0][0][5] = safe_add_func_int64_t_s_s(l_205[0][0][5], 6))
                { /* block id: 118 */
                    int64_t l_286 = 0x4D145527F07D8B7EL;
                    int32_t l_301 = 0x42DD9A02L;
                    int16_t l_302 = 0L;
                    int16_t l_303 = 0x3CD9L;
                    uint32_t l_304 = 0x2FAF0409L;
                    int8_t l_305[7][5][3] = {{{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L}},{{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L}},{{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L}},{{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L}},{{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L}},{{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L}},{{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L},{0L,(-4L),1L}}};
                    uint32_t l_306[9];
                    int16_t l_307[2][1];
                    int i, j, k;
                    for (i = 0; i < 9; i++)
                        l_306[i] = 4294967295UL;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_307[i][j] = 0L;
                    }
                    if (l_286)
                    { /* block id: 119 */
                        uint64_t l_289 = 0x60A83E5F9AAEEBD2L;
                        uint64_t *l_288 = &l_289;
                        uint64_t **l_287 = &l_288;
                        uint64_t **l_290 = &l_288;
                        uint64_t **l_291 = &l_288;
                        l_291 = (l_290 = l_287);
                    }
                    else
                    { /* block id: 122 */
                        int32_t l_293[6][5][7] = {{{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L}},{{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L}},{{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L}},{{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L}},{{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L}},{{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L},{0x7BD77C71L,0x7F758B0BL,0x36683586L,0x0C1645BFL,0x3787DE6AL,0x6F3973B3L,0x0C166A06L}}};
                        int32_t *l_292 = &l_293[1][2][1];
                        VECTOR(int32_t, 16) l_294 = (VECTOR(int32_t, 16))(0x61D05D98L, (VECTOR(int32_t, 4))(0x61D05D98L, (VECTOR(int32_t, 2))(0x61D05D98L, 0x7239FB1DL), 0x7239FB1DL), 0x7239FB1DL, 0x61D05D98L, 0x7239FB1DL, (VECTOR(int32_t, 2))(0x61D05D98L, 0x7239FB1DL), (VECTOR(int32_t, 2))(0x61D05D98L, 0x7239FB1DL), 0x61D05D98L, 0x7239FB1DL, 0x61D05D98L, 0x7239FB1DL);
                        VECTOR(int32_t, 8) l_295 = (VECTOR(int32_t, 8))(0x627FDB58L, (VECTOR(int32_t, 4))(0x627FDB58L, (VECTOR(int32_t, 2))(0x627FDB58L, 0x13720E50L), 0x13720E50L), 0x13720E50L, 0x627FDB58L, 0x13720E50L);
                        int32_t l_296 = 0x3F93BFE9L;
                        uint32_t l_297 = 0UL;
                        uint8_t l_298 = 0UL;
                        int32_t *l_299 = (void*)0;
                        int32_t *l_300 = &l_293[1][2][1];
                        int i, j, k;
                        l_292 = l_292;
                        (*l_292) |= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_294.s648d)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x508F860FL, 3L, 0x64F117EDL, 0x638CEF18L, ((VECTOR(int32_t, 2))(l_295.s53)), 6L, (-9L))).s57)), 0x73697CACL)).yzxyxyzz)).hi)).x, 0x786E735EL, 0x4FACC17FL, 0x57FADE42L)).s1;
                        l_298 = (l_297 |= l_296);
                        l_300 = (l_283 = (l_282 = (l_281 = l_299)));
                    }
                    if (((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))(((l_302 ^= l_301) , (l_301 = (l_305[5][3][1] = (l_303 , l_304)))), (-5L), 1L, 0x017942BAL)).xwzzzwxz, ((VECTOR(int32_t, 4))(l_306[5], (-1L), 0x08813479L, 1L)).xyyzzywx))), (int32_t)l_307[0][0]))).s0)
                    { /* block id: 135 */
                        int32_t l_308 = 0L;
                        int32_t l_309 = 0x5C22F33BL;
                        l_309 = (l_301 = l_308);
                    }
                    else
                    { /* block id: 138 */
                        uint32_t l_310 = 4294967295UL;
                        l_310 = 0x71815283L;
                        l_281 = (void*)0;
                    }
                }
            }
            else
            { /* block id: 143 */
                uint64_t l_311 = 0xA1AAE140D48A4CEAL;
                l_311++;
            }
            unsigned int result = 0;
            atomic_add(&p_1075->l_special_values[9], result);
        }
        else
        { /* block id: 146 */
            (1 + 1);
        }
    }
    for (p_1075->g_26 = 0; (p_1075->g_26 <= 2); p_1075->g_26++)
    { /* block id: 152 */
        int32_t **l_316 = &p_1075->g_55;
        VECTOR(uint8_t, 2) l_332 = (VECTOR(uint8_t, 2))(0UL, 0x51L);
        VECTOR(uint16_t, 8) l_334 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x8A94L), 0x8A94L), 0x8A94L, 65535UL, 0x8A94L);
        int64_t **l_345 = (void*)0;
        int i;
        (*l_316) = &p_1075->g_98;
        for (p_1075->g_56 = 0; (p_1075->g_56 != 15); p_1075->g_56 = safe_add_func_int16_t_s_s(p_1075->g_56, 7))
        { /* block id: 156 */
            int32_t l_351 = 0L;
            int32_t l_353 = (-1L);
            int16_t *l_354 = &p_1075->g_338;
            int32_t *l_360 = &p_1075->g_98;
            (1 + 1);
        }
    }
    return p_1075->g_98;
}


/* ------------------------------------------ */
/* 
 * reads : p_1075->g_69 p_1075->g_comm_values p_1075->l_comm_values p_1075->g_75 p_1075->g_89 p_1075->g_98 p_1075->g_55 p_1075->g_56 p_1075->g_103 p_1075->g_97 p_1075->g_26 p_1075->g_106 p_1075->g_166 p_1075->g_134 p_1075->g_40 p_1075->g_176 p_1075->g_179
 * writes: p_1075->g_94 p_1075->g_40 p_1075->g_97 p_1075->g_98 p_1075->g_103 p_1075->g_106 p_1075->g_26 p_1075->g_56 p_1075->g_55 p_1075->g_176
 */
int8_t  func_59(int32_t  p_60, uint16_t  p_61, struct S0 * p_1075)
{ /* block id: 11 */
    uint32_t l_65 = 0x5D742CC3L;
    int32_t *l_175 = (void*)0;
    int32_t *l_177 = (void*)0;
    int32_t *l_178[1];
    uint32_t l_180 = 0x609C47C9L;
    int32_t **l_181 = &l_178[0];
    int i;
    for (i = 0; i < 1; i++)
        l_178[i] = (void*)0;
    p_1075->g_176.y ^= func_62(((l_65 ^ (p_60 | 4294967287UL)) ^ (-1L)), l_65, p_1075);
    p_60 ^= ((*p_1075->g_55) ^= 6L);
    (*p_1075->g_55) = p_1075->g_179;
    (*l_181) = func_66(p_1075->g_69[0][0], l_180, p_1075);
    return p_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_1075->g_69 p_1075->g_comm_values p_1075->l_comm_values p_1075->g_75 p_1075->g_89 p_1075->g_98 p_1075->g_55 p_1075->g_56 p_1075->g_103 p_1075->g_97 p_1075->g_26 p_1075->g_106 p_1075->g_166 p_1075->g_134 p_1075->g_40
 * writes: p_1075->g_94 p_1075->g_40 p_1075->g_97 p_1075->g_98 p_1075->g_103 p_1075->g_106 p_1075->g_26 p_1075->g_56 p_1075->g_55
 */
int32_t  func_62(uint64_t  p_63, int8_t  p_64, struct S0 * p_1075)
{ /* block id: 12 */
    uint32_t l_72[9][8] = {{0x73ECB6AEL,8UL,0UL,0UL,4294967286UL,1UL,0x1DE2FC23L,0UL},{0x73ECB6AEL,8UL,0UL,0UL,4294967286UL,1UL,0x1DE2FC23L,0UL},{0x73ECB6AEL,8UL,0UL,0UL,4294967286UL,1UL,0x1DE2FC23L,0UL},{0x73ECB6AEL,8UL,0UL,0UL,4294967286UL,1UL,0x1DE2FC23L,0UL},{0x73ECB6AEL,8UL,0UL,0UL,4294967286UL,1UL,0x1DE2FC23L,0UL},{0x73ECB6AEL,8UL,0UL,0UL,4294967286UL,1UL,0x1DE2FC23L,0UL},{0x73ECB6AEL,8UL,0UL,0UL,4294967286UL,1UL,0x1DE2FC23L,0UL},{0x73ECB6AEL,8UL,0UL,0UL,4294967286UL,1UL,0x1DE2FC23L,0UL},{0x73ECB6AEL,8UL,0UL,0UL,4294967286UL,1UL,0x1DE2FC23L,0UL}};
    VECTOR(int16_t, 2) l_73 = (VECTOR(int16_t, 2))(0L, 0x4439L);
    int16_t *l_74[9][5] = {{&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75},{&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75},{&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75},{&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75},{&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75},{&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75},{&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75},{&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75},{&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75,&p_1075->g_75}};
    int32_t l_76 = 0x6DCE64F8L;
    int8_t *l_87 = (void*)0;
    int8_t *l_88[5][6][1] = {{{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89}},{{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89}},{{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89}},{{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89}},{{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89},{&p_1075->g_89}}};
    int32_t l_90[2][9][9] = {{{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)}},{{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)},{(-2L),0L,(-9L),0x23C5B2E9L,0L,0x23C5B2E9L,(-9L),0L,(-2L)}}};
    uint32_t *l_93 = &p_1075->g_94;
    uint8_t *l_95 = &p_1075->g_40;
    uint8_t *l_96 = &p_1075->g_97;
    uint16_t *l_99[8] = {&p_1075->g_100,&p_1075->g_100,&p_1075->g_100,&p_1075->g_100,&p_1075->g_100,&p_1075->g_100,&p_1075->g_100,&p_1075->g_100};
    int32_t l_101 = 0x67E6262DL;
    uint64_t *l_102 = &p_1075->g_103;
    uint64_t *l_104 = (void*)0;
    uint64_t *l_105 = &p_1075->g_106;
    int32_t *l_174 = &l_76;
    int i, j, k;
    l_174 = func_66(p_1075->g_69[3][1], ((p_64 > ((l_72[3][1] == ((((*l_105) = ((*l_102) = (((l_76 &= (p_1075->g_comm_values[p_1075->tid] , ((VECTOR(int16_t, 4))(0L, ((VECTOR(int16_t, 2))(l_73.yy)), 9L)).y)) > (l_101 &= (safe_rshift_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((p_1075->g_98 &= (safe_sub_func_int64_t_s_s((safe_mod_func_int8_t_s_s((l_90[1][6][7] = p_63), (p_1075->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1075->tid, 74))] & (~(safe_mul_func_uint16_t_u_u((((*l_96) = (p_1075->g_75 , ((*l_95) = (((*l_93) = GROUP_DIVERGE(1, 1)) == ((&p_1075->g_75 == (((VECTOR(uint64_t, 8))((p_64 == p_1075->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1075->tid, 74))]), ((VECTOR(uint64_t, 4))(18446744073709551615UL)), ((VECTOR(uint64_t, 2))(0x9CE68EBBCFA1F81FL)), 18446744073709551614UL)).s1 , l_74[5][0])) > p_1075->g_89))))) , 65531UL), l_73.y)))))), p_63))), 5UL)), p_1075->g_89)), 2)))) <= l_72[4][1]))) , 0x733C4554L) == 0xA48CC921L)) < (*p_1075->g_55))) <= p_63), p_1075);
    return (*p_1075->g_55);
}


/* ------------------------------------------ */
/* 
 * reads : p_1075->g_103 p_1075->g_98 p_1075->g_69 p_1075->g_97 p_1075->l_comm_values p_1075->g_55 p_1075->g_26 p_1075->g_56 p_1075->g_106 p_1075->g_166 p_1075->g_134 p_1075->g_40
 * writes: p_1075->g_103 p_1075->g_97 p_1075->g_26 p_1075->g_56 p_1075->g_55 p_1075->g_98
 */
int32_t * func_66(int64_t * p_67, uint32_t  p_68, struct S0 * p_1075)
{ /* block id: 22 */
    uint32_t l_110 = 0x42E135D2L;
    VECTOR(uint8_t, 2) l_131 = (VECTOR(uint8_t, 2))(0x50L, 0UL);
    VECTOR(uint8_t, 16) l_135 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x4FL), 0x4FL), 0x4FL, 1UL, 0x4FL, (VECTOR(uint8_t, 2))(1UL, 0x4FL), (VECTOR(uint8_t, 2))(1UL, 0x4FL), 1UL, 0x4FL, 1UL, 0x4FL);
    VECTOR(int64_t, 16) l_141 = (VECTOR(int64_t, 16))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x005B716F66F7480EL), 0x005B716F66F7480EL), 0x005B716F66F7480EL, 3L, 0x005B716F66F7480EL, (VECTOR(int64_t, 2))(3L, 0x005B716F66F7480EL), (VECTOR(int64_t, 2))(3L, 0x005B716F66F7480EL), 3L, 0x005B716F66F7480EL, 3L, 0x005B716F66F7480EL);
    int32_t *l_160 = &p_1075->g_26;
    VECTOR(uint32_t, 4) l_168 = (VECTOR(uint32_t, 4))(0x896E0AB1L, (VECTOR(uint32_t, 2))(0x896E0AB1L, 0x93BE22E7L), 0x93BE22E7L);
    VECTOR(int32_t, 8) l_171 = (VECTOR(int32_t, 8))(0x03EC63F9L, (VECTOR(int32_t, 4))(0x03EC63F9L, (VECTOR(int32_t, 2))(0x03EC63F9L, 0x47BD3F7DL), 0x47BD3F7DL), 0x47BD3F7DL, 0x03EC63F9L, 0x47BD3F7DL);
    int64_t l_172[8];
    int i;
    for (i = 0; i < 8; i++)
        l_172[i] = 2L;
    for (p_1075->g_103 = 0; (p_1075->g_103 == 59); p_1075->g_103++)
    { /* block id: 25 */
        int64_t **l_109[10][1][7] = {{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}},{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}},{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}},{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}},{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}},{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}},{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}},{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}},{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}},{{&p_1075->g_69[0][2],&p_1075->g_69[0][2],&p_1075->g_69[3][1],&p_1075->g_69[4][1],&p_1075->g_69[0][0],&p_1075->g_69[4][1],&p_1075->g_69[3][1]}}};
        int32_t l_123 = 0x6B8E47B4L;
        VECTOR(uint8_t, 16) l_132 = (VECTOR(uint8_t, 16))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0xA2L), 0xA2L), 0xA2L, 246UL, 0xA2L, (VECTOR(uint8_t, 2))(246UL, 0xA2L), (VECTOR(uint8_t, 2))(246UL, 0xA2L), 246UL, 0xA2L, 246UL, 0xA2L);
        int32_t l_142[10][8] = {{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L},{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L},{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L},{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L},{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L},{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L},{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L},{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L},{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L},{0L,5L,0x5F6FDFC4L,(-1L),(-2L),2L,0x0B5D631BL,0L}};
        VECTOR(uint64_t, 16) l_167 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x3B49003B356D7480L), 0x3B49003B356D7480L), 0x3B49003B356D7480L, 0UL, 0x3B49003B356D7480L, (VECTOR(uint64_t, 2))(0UL, 0x3B49003B356D7480L), (VECTOR(uint64_t, 2))(0UL, 0x3B49003B356D7480L), 0UL, 0x3B49003B356D7480L, 0UL, 0x3B49003B356D7480L);
        int32_t *l_173[3][4][1] = {{{&p_1075->g_98},{&p_1075->g_98},{&p_1075->g_98},{&p_1075->g_98}},{{&p_1075->g_98},{&p_1075->g_98},{&p_1075->g_98},{&p_1075->g_98}},{{&p_1075->g_98},{&p_1075->g_98},{&p_1075->g_98},{&p_1075->g_98}}};
        int i, j, k;
        (*p_1075->g_55) = (0x4C2EL & (p_68 ^ ((p_1075->g_98 != (l_110 = ((p_67 = p_1075->g_69[4][2]) == (void*)0))) , (safe_sub_func_int8_t_s_s((((safe_add_func_uint8_t_u_u((p_1075->g_97--), (safe_mul_func_int16_t_s_s(p_1075->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1075->tid, 74))], 6UL)))) <= (safe_div_func_int64_t_s_s(0x761366E2C43C23CFL, (safe_mod_func_int64_t_s_s(4L, l_110))))) == 1L), l_123)))));
        (*p_1075->g_55) |= l_123;
        if (((safe_mod_func_uint64_t_u_u((((safe_sub_func_uint16_t_u_u((l_123 & (0x6EL || (safe_lshift_func_int16_t_s_u((l_142[0][7] = ((((((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 2))(0xC6A2L, 4UL)).yxyyyxxyxxyxyyxx, ((VECTOR(uint16_t, 2))(p_1075->g_130.s28)).xxxyyyxyyxxyyxxy))).sf | (4294967292UL >= 0x49406517L)) >= (((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 8))(l_131.xxxyxyxx)).s32, ((VECTOR(uint8_t, 4))(l_132.sb578)).lo, ((VECTOR(uint8_t, 2))(p_1075->g_133.yx))))).xxyxyyxx)).s7635324115760754, ((VECTOR(uint8_t, 2))(p_1075->g_134.yy)).yyxyxxyyxxyyxyyy, ((VECTOR(uint8_t, 16))(0xBAL, ((VECTOR(uint8_t, 4))(l_135.s8647)), ((safe_unary_minus_func_int16_t_s(((safe_div_func_int8_t_s_s(p_68, (((VECTOR(int64_t, 8))(l_141.s96666be2)).s7 , p_1075->g_94))) != (((-1L) & l_123) <= (((((void*)0 == &p_1075->g_89) & GROUP_DIVERGE(0, 1)) <= (*p_1075->g_55)) < p_1075->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1075->tid, 74))]))))) >= l_141.s7), GROUP_DIVERGE(1, 1), 0x29L, 0xF8L, ((VECTOR(uint8_t, 4))(255UL)), 0xD6L, 0UL, 254UL))))), ((VECTOR(uint8_t, 16))(250UL))))).s4f, ((VECTOR(uint8_t, 2))(3UL))))).yxyx)), p_1075->g_89, l_132.se, ((VECTOR(uint8_t, 4))(0x73L)), ((VECTOR(uint8_t, 4))(0x01L)), 0x49L, 0x29L)).sef)).xxxxxxxxxxxyxyyx, ((VECTOR(uint8_t, 16))(0x43L))))).sd512)), ((VECTOR(uint8_t, 4))(9UL))))).wyyxzywwzzxwzzwy, ((VECTOR(uint8_t, 16))(247UL))))).s9 , l_135.s8)) == (*p_1075->g_55)) > (-1L))), p_1075->g_106)))), l_123)) , 0L) != 0L), l_131.y)) && p_68))
        { /* block id: 32 */
            if ((atomic_inc(&p_1075->g_atomic_input[47 * get_linear_group_id() + 31]) == 7))
            { /* block id: 34 */
                int32_t l_143[4] = {0x295B6DD3L,0x295B6DD3L,0x295B6DD3L,0x295B6DD3L};
                int64_t l_156 = (-2L);
                int i;
                if (l_143[0])
                { /* block id: 35 */
                    int32_t *l_144[3];
                    int32_t l_146 = 0x285BA64AL;
                    int32_t *l_145[5][2][1] = {{{&l_146},{&l_146}},{{&l_146},{&l_146}},{{&l_146},{&l_146}},{{&l_146},{&l_146}},{{&l_146},{&l_146}}};
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_144[i] = (void*)0;
                    l_145[2][0][0] = l_144[1];
                }
                else
                { /* block id: 37 */
                    int32_t l_148 = (-1L);
                    int32_t *l_147 = &l_148;
                    int32_t *l_149 = &l_148;
                    int32_t l_150 = 0x2808CFBFL;
                    int16_t l_151 = 0x7234L;
                    int8_t l_152 = 6L;
                    uint32_t l_153 = 0x820DCB60L;
                    l_149 = l_147;
                    --l_153;
                }
                l_156 = ((VECTOR(int32_t, 2))(0L, 8L)).hi;
                unsigned int result = 0;
                int l_143_i0;
                for (l_143_i0 = 0; l_143_i0 < 4; l_143_i0++) {
                    result += l_143[l_143_i0];
                }
                result += l_156;
                atomic_add(&p_1075->g_special_values[47 * get_linear_group_id() + 31], result);
            }
            else
            { /* block id: 42 */
                (1 + 1);
            }
        }
        else
        { /* block id: 45 */
            uint32_t l_159 = 4294967290UL;
            int32_t **l_161 = &p_1075->g_55;
            (*p_1075->g_55) = (safe_lshift_func_int16_t_s_s((GROUP_DIVERGE(1, 1) , (l_132.sa | (l_142[0][7] = 1L))), 2));
            (*l_161) = (l_159 , l_160);
        }
        p_1075->g_56 = (safe_rshift_func_uint16_t_u_u((((*l_160) = (p_68 >= (p_68 , (safe_rshift_func_uint16_t_u_u(p_68, 5))))) != (l_132.sa , ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),uint64_t,((VECTOR(uint64_t, 16))(p_1075->g_166.yxyyxyyyxxyxxyxx)), (uint64_t)(~p_1075->g_134.x), (uint64_t)((l_132.s8 & ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(18446744073709551610UL, ((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 2))(l_167.sf3)).xyxy, ((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 16))(l_168.xzywzxxxxzywxxzw)).odd, ((VECTOR(uint32_t, 8))(0x68EAC2ACL, (((p_68 <= (((((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 16))(l_171.s2165110166024555)).s6, ((l_142[0][7] , (((FAKE_DIVERGE(p_1075->group_2_offset, get_group_id(2), 10) ^ 1UL) | 0x27E3E6D3L) >= 1UL)) <= 0x616AL))) , 0x9BL) && p_68) || 5L) || p_1075->g_40)) ^ p_68) && l_142[0][7]), 4294967295UL, GROUP_DIVERGE(1, 1), 0x211C853BL, p_1075->g_134.y, 0UL, 0x92DA7FE7L))))))), ((VECTOR(uint64_t, 8))(0xAF2F34FAB35A4D2AL))))).lo))), ((VECTOR(uint64_t, 2))(0xE7CFBBA9724F8E99L)), 0xC464F727E752563AL)), 0xE0BB03CE56ED2C10L, 5UL, 0x21F102E53A4A4FE8L, GROUP_DIVERGE(0, 1), 1UL, 18446744073709551615UL, 0x791001A1CCD3B4F5L, 18446744073709551615UL)).sb66f)).z) , 0x3152C7461230A905L)))))).sd)), l_172[1]));
    }
    return l_160;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[47];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 47; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[47];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 47; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_comm_values[i] = 1;
    struct S0 c_1076;
    struct S0* p_1075 = &c_1076;
    struct S0 c_1077 = {
        0UL, // p_1075->g_17
        (VECTOR(int8_t, 8))(0x25L, (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, (-1L)), (-1L)), (-1L), 0x25L, (-1L)), // p_1075->g_18
        0x7CCCAEA0L, // p_1075->g_26
        251UL, // p_1075->g_40
        (-5L), // p_1075->g_56
        &p_1075->g_56, // p_1075->g_55
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_1075->g_69
        0x47EEL, // p_1075->g_75
        (-7L), // p_1075->g_89
        0x85F08201L, // p_1075->g_94
        250UL, // p_1075->g_97
        1L, // p_1075->g_98
        65531UL, // p_1075->g_100
        1UL, // p_1075->g_103
        0x8FFC0A99849AA352L, // p_1075->g_106
        (VECTOR(uint16_t, 16))(0x5E6FL, (VECTOR(uint16_t, 4))(0x5E6FL, (VECTOR(uint16_t, 2))(0x5E6FL, 0xBB94L), 0xBB94L), 0xBB94L, 0x5E6FL, 0xBB94L, (VECTOR(uint16_t, 2))(0x5E6FL, 0xBB94L), (VECTOR(uint16_t, 2))(0x5E6FL, 0xBB94L), 0x5E6FL, 0xBB94L, 0x5E6FL, 0xBB94L), // p_1075->g_130
        (VECTOR(uint8_t, 2))(0x41L, 1UL), // p_1075->g_133
        (VECTOR(uint8_t, 2))(255UL, 255UL), // p_1075->g_134
        (VECTOR(uint64_t, 2))(18446744073709551614UL, 18446744073709551615UL), // p_1075->g_166
        (VECTOR(int32_t, 2))(0L, 0x0BF459CBL), // p_1075->g_176
        0x8F6E7954L, // p_1075->g_179
        (-7L), // p_1075->g_331
        (VECTOR(uint8_t, 4))(0xF3L, (VECTOR(uint8_t, 2))(0xF3L, 0x91L), 0x91L), // p_1075->g_333
        0x1445L, // p_1075->g_338
        (VECTOR(uint8_t, 16))(0x59L, (VECTOR(uint8_t, 4))(0x59L, (VECTOR(uint8_t, 2))(0x59L, 0xE5L), 0xE5L), 0xE5L, 0x59L, 0xE5L, (VECTOR(uint8_t, 2))(0x59L, 0xE5L), (VECTOR(uint8_t, 2))(0x59L, 0xE5L), 0x59L, 0xE5L, 0x59L, 0xE5L), // p_1075->g_352
        4294967288UL, // p_1075->g_362
        65526UL, // p_1075->g_406
        &p_1075->g_406, // p_1075->g_405
        &p_1075->g_89, // p_1075->g_414
        {{&p_1075->g_414,&p_1075->g_414,&p_1075->g_414},{&p_1075->g_414,&p_1075->g_414,&p_1075->g_414},{&p_1075->g_414,&p_1075->g_414,&p_1075->g_414},{&p_1075->g_414,&p_1075->g_414,&p_1075->g_414},{&p_1075->g_414,&p_1075->g_414,&p_1075->g_414},{&p_1075->g_414,&p_1075->g_414,&p_1075->g_414}}, // p_1075->g_413
        0x579F48DBL, // p_1075->g_424
        (VECTOR(int64_t, 2))(0x11914888681C7DDDL, 0x21FCDCB08D1FB8C1L), // p_1075->g_432
        (VECTOR(uint16_t, 2))(0x57B1L, 0UL), // p_1075->g_434
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int16_t, 2))(0L, (-1L)), (VECTOR(int16_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L)), // p_1075->g_468
        (void*)0, // p_1075->g_511
        0UL, // p_1075->g_523
        (VECTOR(uint8_t, 2))(0UL, 0x7FL), // p_1075->g_552
        (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x292D214EL), 0x292D214EL), // p_1075->g_561
        {{1L,0x3DA4CF75L,1L,1L,0x3DA4CF75L,1L,1L,0x3DA4CF75L,1L},{1L,0x3DA4CF75L,1L,1L,0x3DA4CF75L,1L,1L,0x3DA4CF75L,1L},{1L,0x3DA4CF75L,1L,1L,0x3DA4CF75L,1L,1L,0x3DA4CF75L,1L},{1L,0x3DA4CF75L,1L,1L,0x3DA4CF75L,1L,1L,0x3DA4CF75L,1L}}, // p_1075->g_579
        (VECTOR(uint8_t, 2))(0x15L, 0xC6L), // p_1075->g_592
        0x6B427F6BL, // p_1075->g_598
        (VECTOR(uint16_t, 4))(0x792FL, (VECTOR(uint16_t, 2))(0x792FL, 7UL), 7UL), // p_1075->g_600
        (VECTOR(uint64_t, 2))(0x3CE986729652126AL, 7UL), // p_1075->g_646
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1075->g_681
        (VECTOR(int32_t, 2))(0x5EBAF0A8L, 0x30D1BA3AL), // p_1075->g_685
        (VECTOR(int32_t, 4))(0x46C565FCL, (VECTOR(int32_t, 2))(0x46C565FCL, (-1L)), (-1L)), // p_1075->g_700
        (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x5CBC7F7FL), 0x5CBC7F7FL), 0x5CBC7F7FL, (-5L), 0x5CBC7F7FL, (VECTOR(int32_t, 2))((-5L), 0x5CBC7F7FL), (VECTOR(int32_t, 2))((-5L), 0x5CBC7F7FL), (-5L), 0x5CBC7F7FL, (-5L), 0x5CBC7F7FL), // p_1075->g_702
        (VECTOR(int16_t, 8))(0x306CL, (VECTOR(int16_t, 4))(0x306CL, (VECTOR(int16_t, 2))(0x306CL, (-8L)), (-8L)), (-8L), 0x306CL, (-8L)), // p_1075->g_714
        (VECTOR(uint32_t, 4))(0xCB0DCB7FL, (VECTOR(uint32_t, 2))(0xCB0DCB7FL, 0x061A4BBDL), 0x061A4BBDL), // p_1075->g_719
        0x4E505001L, // p_1075->g_735
        (VECTOR(int32_t, 2))((-8L), 0x2FF26A04L), // p_1075->g_748
        (VECTOR(int32_t, 8))(0x43167CCFL, (VECTOR(int32_t, 4))(0x43167CCFL, (VECTOR(int32_t, 2))(0x43167CCFL, 0x7DA7AC31L), 0x7DA7AC31L), 0x7DA7AC31L, 0x43167CCFL, 0x7DA7AC31L), // p_1075->g_752
        (VECTOR(uint32_t, 8))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 4294967288UL), 4294967288UL), 4294967288UL, 3UL, 4294967288UL), // p_1075->g_763
        (VECTOR(uint32_t, 2))(0x0A93D51FL, 0x7DA49F8BL), // p_1075->g_764
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), // p_1075->g_893
        (VECTOR(int16_t, 8))(0x4EFDL, (VECTOR(int16_t, 4))(0x4EFDL, (VECTOR(int16_t, 2))(0x4EFDL, 0x7AE2L), 0x7AE2L), 0x7AE2L, 0x4EFDL, 0x7AE2L), // p_1075->g_894
        {0x4FL,0x4FL,0x4FL,0x4FL,0x4FL,0x4FL}, // p_1075->g_917
        (VECTOR(uint32_t, 2))(4294967295UL, 0x8521B6E5L), // p_1075->g_928
        (void*)0, // p_1075->g_971
        {0xC562BCE3AF2B57F1L,0xC562BCE3AF2B57F1L,0xC562BCE3AF2B57F1L,0xC562BCE3AF2B57F1L,0xC562BCE3AF2B57F1L}, // p_1075->g_1001
        (VECTOR(int32_t, 8))(0x0B069883L, (VECTOR(int32_t, 4))(0x0B069883L, (VECTOR(int32_t, 2))(0x0B069883L, 0x25083E9AL), 0x25083E9AL), 0x25083E9AL, 0x0B069883L, 0x25083E9AL), // p_1075->g_1010
        (VECTOR(uint8_t, 4))(0x61L, (VECTOR(uint8_t, 2))(0x61L, 9UL), 9UL), // p_1075->g_1013
        (VECTOR(int8_t, 8))(0x40L, (VECTOR(int8_t, 4))(0x40L, (VECTOR(int8_t, 2))(0x40L, 1L), 1L), 1L, 0x40L, 1L), // p_1075->g_1023
        (VECTOR(int16_t, 2))(9L, 0x1BB9L), // p_1075->g_1026
        (VECTOR(int16_t, 8))(0x68B4L, (VECTOR(int16_t, 4))(0x68B4L, (VECTOR(int16_t, 2))(0x68B4L, 0L), 0L), 0L, 0x68B4L, 0L), // p_1075->g_1032
        {{{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735}},{{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735}},{{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735}},{{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735}},{{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735}},{{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735}},{{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735},{(void*)0,(void*)0,(void*)0,&p_1075->g_735}}}, // p_1075->g_1051
        (void*)0, // p_1075->g_1052
        &p_1075->g_971, // p_1075->g_1056
        1L, // p_1075->g_1062
        (VECTOR(uint64_t, 16))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0x09510EC30F07E21AL), 0x09510EC30F07E21AL), 0x09510EC30F07E21AL, 18446744073709551609UL, 0x09510EC30F07E21AL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0x09510EC30F07E21AL), (VECTOR(uint64_t, 2))(18446744073709551609UL, 0x09510EC30F07E21AL), 18446744073709551609UL, 0x09510EC30F07E21AL, 18446744073709551609UL, 0x09510EC30F07E21AL), // p_1075->g_1071
        &p_1075->g_55, // p_1075->g_1074
        0, // p_1075->v_collective
        sequence_input[get_global_id(0)], // p_1075->global_0_offset
        sequence_input[get_global_id(1)], // p_1075->global_1_offset
        sequence_input[get_global_id(2)], // p_1075->global_2_offset
        sequence_input[get_local_id(0)], // p_1075->local_0_offset
        sequence_input[get_local_id(1)], // p_1075->local_1_offset
        sequence_input[get_local_id(2)], // p_1075->local_2_offset
        sequence_input[get_group_id(0)], // p_1075->group_0_offset
        sequence_input[get_group_id(1)], // p_1075->group_1_offset
        sequence_input[get_group_id(2)], // p_1075->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 74)), permutations[0][get_linear_local_id()])), // p_1075->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1076 = c_1077;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1075);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1075->g_17, "p_1075->g_17", print_hash_value);
    transparent_crc(p_1075->g_18.s0, "p_1075->g_18.s0", print_hash_value);
    transparent_crc(p_1075->g_18.s1, "p_1075->g_18.s1", print_hash_value);
    transparent_crc(p_1075->g_18.s2, "p_1075->g_18.s2", print_hash_value);
    transparent_crc(p_1075->g_18.s3, "p_1075->g_18.s3", print_hash_value);
    transparent_crc(p_1075->g_18.s4, "p_1075->g_18.s4", print_hash_value);
    transparent_crc(p_1075->g_18.s5, "p_1075->g_18.s5", print_hash_value);
    transparent_crc(p_1075->g_18.s6, "p_1075->g_18.s6", print_hash_value);
    transparent_crc(p_1075->g_18.s7, "p_1075->g_18.s7", print_hash_value);
    transparent_crc(p_1075->g_26, "p_1075->g_26", print_hash_value);
    transparent_crc(p_1075->g_40, "p_1075->g_40", print_hash_value);
    transparent_crc(p_1075->g_56, "p_1075->g_56", print_hash_value);
    transparent_crc(p_1075->g_75, "p_1075->g_75", print_hash_value);
    transparent_crc(p_1075->g_89, "p_1075->g_89", print_hash_value);
    transparent_crc(p_1075->g_94, "p_1075->g_94", print_hash_value);
    transparent_crc(p_1075->g_97, "p_1075->g_97", print_hash_value);
    transparent_crc(p_1075->g_98, "p_1075->g_98", print_hash_value);
    transparent_crc(p_1075->g_100, "p_1075->g_100", print_hash_value);
    transparent_crc(p_1075->g_103, "p_1075->g_103", print_hash_value);
    transparent_crc(p_1075->g_106, "p_1075->g_106", print_hash_value);
    transparent_crc(p_1075->g_130.s0, "p_1075->g_130.s0", print_hash_value);
    transparent_crc(p_1075->g_130.s1, "p_1075->g_130.s1", print_hash_value);
    transparent_crc(p_1075->g_130.s2, "p_1075->g_130.s2", print_hash_value);
    transparent_crc(p_1075->g_130.s3, "p_1075->g_130.s3", print_hash_value);
    transparent_crc(p_1075->g_130.s4, "p_1075->g_130.s4", print_hash_value);
    transparent_crc(p_1075->g_130.s5, "p_1075->g_130.s5", print_hash_value);
    transparent_crc(p_1075->g_130.s6, "p_1075->g_130.s6", print_hash_value);
    transparent_crc(p_1075->g_130.s7, "p_1075->g_130.s7", print_hash_value);
    transparent_crc(p_1075->g_130.s8, "p_1075->g_130.s8", print_hash_value);
    transparent_crc(p_1075->g_130.s9, "p_1075->g_130.s9", print_hash_value);
    transparent_crc(p_1075->g_130.sa, "p_1075->g_130.sa", print_hash_value);
    transparent_crc(p_1075->g_130.sb, "p_1075->g_130.sb", print_hash_value);
    transparent_crc(p_1075->g_130.sc, "p_1075->g_130.sc", print_hash_value);
    transparent_crc(p_1075->g_130.sd, "p_1075->g_130.sd", print_hash_value);
    transparent_crc(p_1075->g_130.se, "p_1075->g_130.se", print_hash_value);
    transparent_crc(p_1075->g_130.sf, "p_1075->g_130.sf", print_hash_value);
    transparent_crc(p_1075->g_133.x, "p_1075->g_133.x", print_hash_value);
    transparent_crc(p_1075->g_133.y, "p_1075->g_133.y", print_hash_value);
    transparent_crc(p_1075->g_134.x, "p_1075->g_134.x", print_hash_value);
    transparent_crc(p_1075->g_134.y, "p_1075->g_134.y", print_hash_value);
    transparent_crc(p_1075->g_166.x, "p_1075->g_166.x", print_hash_value);
    transparent_crc(p_1075->g_166.y, "p_1075->g_166.y", print_hash_value);
    transparent_crc(p_1075->g_176.x, "p_1075->g_176.x", print_hash_value);
    transparent_crc(p_1075->g_176.y, "p_1075->g_176.y", print_hash_value);
    transparent_crc(p_1075->g_179, "p_1075->g_179", print_hash_value);
    transparent_crc(p_1075->g_331, "p_1075->g_331", print_hash_value);
    transparent_crc(p_1075->g_333.x, "p_1075->g_333.x", print_hash_value);
    transparent_crc(p_1075->g_333.y, "p_1075->g_333.y", print_hash_value);
    transparent_crc(p_1075->g_333.z, "p_1075->g_333.z", print_hash_value);
    transparent_crc(p_1075->g_333.w, "p_1075->g_333.w", print_hash_value);
    transparent_crc(p_1075->g_338, "p_1075->g_338", print_hash_value);
    transparent_crc(p_1075->g_352.s0, "p_1075->g_352.s0", print_hash_value);
    transparent_crc(p_1075->g_352.s1, "p_1075->g_352.s1", print_hash_value);
    transparent_crc(p_1075->g_352.s2, "p_1075->g_352.s2", print_hash_value);
    transparent_crc(p_1075->g_352.s3, "p_1075->g_352.s3", print_hash_value);
    transparent_crc(p_1075->g_352.s4, "p_1075->g_352.s4", print_hash_value);
    transparent_crc(p_1075->g_352.s5, "p_1075->g_352.s5", print_hash_value);
    transparent_crc(p_1075->g_352.s6, "p_1075->g_352.s6", print_hash_value);
    transparent_crc(p_1075->g_352.s7, "p_1075->g_352.s7", print_hash_value);
    transparent_crc(p_1075->g_352.s8, "p_1075->g_352.s8", print_hash_value);
    transparent_crc(p_1075->g_352.s9, "p_1075->g_352.s9", print_hash_value);
    transparent_crc(p_1075->g_352.sa, "p_1075->g_352.sa", print_hash_value);
    transparent_crc(p_1075->g_352.sb, "p_1075->g_352.sb", print_hash_value);
    transparent_crc(p_1075->g_352.sc, "p_1075->g_352.sc", print_hash_value);
    transparent_crc(p_1075->g_352.sd, "p_1075->g_352.sd", print_hash_value);
    transparent_crc(p_1075->g_352.se, "p_1075->g_352.se", print_hash_value);
    transparent_crc(p_1075->g_352.sf, "p_1075->g_352.sf", print_hash_value);
    transparent_crc(p_1075->g_362, "p_1075->g_362", print_hash_value);
    transparent_crc(p_1075->g_406, "p_1075->g_406", print_hash_value);
    transparent_crc(p_1075->g_424, "p_1075->g_424", print_hash_value);
    transparent_crc(p_1075->g_432.x, "p_1075->g_432.x", print_hash_value);
    transparent_crc(p_1075->g_432.y, "p_1075->g_432.y", print_hash_value);
    transparent_crc(p_1075->g_434.x, "p_1075->g_434.x", print_hash_value);
    transparent_crc(p_1075->g_434.y, "p_1075->g_434.y", print_hash_value);
    transparent_crc(p_1075->g_468.s0, "p_1075->g_468.s0", print_hash_value);
    transparent_crc(p_1075->g_468.s1, "p_1075->g_468.s1", print_hash_value);
    transparent_crc(p_1075->g_468.s2, "p_1075->g_468.s2", print_hash_value);
    transparent_crc(p_1075->g_468.s3, "p_1075->g_468.s3", print_hash_value);
    transparent_crc(p_1075->g_468.s4, "p_1075->g_468.s4", print_hash_value);
    transparent_crc(p_1075->g_468.s5, "p_1075->g_468.s5", print_hash_value);
    transparent_crc(p_1075->g_468.s6, "p_1075->g_468.s6", print_hash_value);
    transparent_crc(p_1075->g_468.s7, "p_1075->g_468.s7", print_hash_value);
    transparent_crc(p_1075->g_468.s8, "p_1075->g_468.s8", print_hash_value);
    transparent_crc(p_1075->g_468.s9, "p_1075->g_468.s9", print_hash_value);
    transparent_crc(p_1075->g_468.sa, "p_1075->g_468.sa", print_hash_value);
    transparent_crc(p_1075->g_468.sb, "p_1075->g_468.sb", print_hash_value);
    transparent_crc(p_1075->g_468.sc, "p_1075->g_468.sc", print_hash_value);
    transparent_crc(p_1075->g_468.sd, "p_1075->g_468.sd", print_hash_value);
    transparent_crc(p_1075->g_468.se, "p_1075->g_468.se", print_hash_value);
    transparent_crc(p_1075->g_468.sf, "p_1075->g_468.sf", print_hash_value);
    transparent_crc(p_1075->g_523, "p_1075->g_523", print_hash_value);
    transparent_crc(p_1075->g_552.x, "p_1075->g_552.x", print_hash_value);
    transparent_crc(p_1075->g_552.y, "p_1075->g_552.y", print_hash_value);
    transparent_crc(p_1075->g_561.x, "p_1075->g_561.x", print_hash_value);
    transparent_crc(p_1075->g_561.y, "p_1075->g_561.y", print_hash_value);
    transparent_crc(p_1075->g_561.z, "p_1075->g_561.z", print_hash_value);
    transparent_crc(p_1075->g_561.w, "p_1075->g_561.w", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1075->g_579[i][j], "p_1075->g_579[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1075->g_592.x, "p_1075->g_592.x", print_hash_value);
    transparent_crc(p_1075->g_592.y, "p_1075->g_592.y", print_hash_value);
    transparent_crc(p_1075->g_598, "p_1075->g_598", print_hash_value);
    transparent_crc(p_1075->g_600.x, "p_1075->g_600.x", print_hash_value);
    transparent_crc(p_1075->g_600.y, "p_1075->g_600.y", print_hash_value);
    transparent_crc(p_1075->g_600.z, "p_1075->g_600.z", print_hash_value);
    transparent_crc(p_1075->g_600.w, "p_1075->g_600.w", print_hash_value);
    transparent_crc(p_1075->g_646.x, "p_1075->g_646.x", print_hash_value);
    transparent_crc(p_1075->g_646.y, "p_1075->g_646.y", print_hash_value);
    transparent_crc(p_1075->g_685.x, "p_1075->g_685.x", print_hash_value);
    transparent_crc(p_1075->g_685.y, "p_1075->g_685.y", print_hash_value);
    transparent_crc(p_1075->g_700.x, "p_1075->g_700.x", print_hash_value);
    transparent_crc(p_1075->g_700.y, "p_1075->g_700.y", print_hash_value);
    transparent_crc(p_1075->g_700.z, "p_1075->g_700.z", print_hash_value);
    transparent_crc(p_1075->g_700.w, "p_1075->g_700.w", print_hash_value);
    transparent_crc(p_1075->g_702.s0, "p_1075->g_702.s0", print_hash_value);
    transparent_crc(p_1075->g_702.s1, "p_1075->g_702.s1", print_hash_value);
    transparent_crc(p_1075->g_702.s2, "p_1075->g_702.s2", print_hash_value);
    transparent_crc(p_1075->g_702.s3, "p_1075->g_702.s3", print_hash_value);
    transparent_crc(p_1075->g_702.s4, "p_1075->g_702.s4", print_hash_value);
    transparent_crc(p_1075->g_702.s5, "p_1075->g_702.s5", print_hash_value);
    transparent_crc(p_1075->g_702.s6, "p_1075->g_702.s6", print_hash_value);
    transparent_crc(p_1075->g_702.s7, "p_1075->g_702.s7", print_hash_value);
    transparent_crc(p_1075->g_702.s8, "p_1075->g_702.s8", print_hash_value);
    transparent_crc(p_1075->g_702.s9, "p_1075->g_702.s9", print_hash_value);
    transparent_crc(p_1075->g_702.sa, "p_1075->g_702.sa", print_hash_value);
    transparent_crc(p_1075->g_702.sb, "p_1075->g_702.sb", print_hash_value);
    transparent_crc(p_1075->g_702.sc, "p_1075->g_702.sc", print_hash_value);
    transparent_crc(p_1075->g_702.sd, "p_1075->g_702.sd", print_hash_value);
    transparent_crc(p_1075->g_702.se, "p_1075->g_702.se", print_hash_value);
    transparent_crc(p_1075->g_702.sf, "p_1075->g_702.sf", print_hash_value);
    transparent_crc(p_1075->g_714.s0, "p_1075->g_714.s0", print_hash_value);
    transparent_crc(p_1075->g_714.s1, "p_1075->g_714.s1", print_hash_value);
    transparent_crc(p_1075->g_714.s2, "p_1075->g_714.s2", print_hash_value);
    transparent_crc(p_1075->g_714.s3, "p_1075->g_714.s3", print_hash_value);
    transparent_crc(p_1075->g_714.s4, "p_1075->g_714.s4", print_hash_value);
    transparent_crc(p_1075->g_714.s5, "p_1075->g_714.s5", print_hash_value);
    transparent_crc(p_1075->g_714.s6, "p_1075->g_714.s6", print_hash_value);
    transparent_crc(p_1075->g_714.s7, "p_1075->g_714.s7", print_hash_value);
    transparent_crc(p_1075->g_719.x, "p_1075->g_719.x", print_hash_value);
    transparent_crc(p_1075->g_719.y, "p_1075->g_719.y", print_hash_value);
    transparent_crc(p_1075->g_719.z, "p_1075->g_719.z", print_hash_value);
    transparent_crc(p_1075->g_719.w, "p_1075->g_719.w", print_hash_value);
    transparent_crc(p_1075->g_735, "p_1075->g_735", print_hash_value);
    transparent_crc(p_1075->g_748.x, "p_1075->g_748.x", print_hash_value);
    transparent_crc(p_1075->g_748.y, "p_1075->g_748.y", print_hash_value);
    transparent_crc(p_1075->g_752.s0, "p_1075->g_752.s0", print_hash_value);
    transparent_crc(p_1075->g_752.s1, "p_1075->g_752.s1", print_hash_value);
    transparent_crc(p_1075->g_752.s2, "p_1075->g_752.s2", print_hash_value);
    transparent_crc(p_1075->g_752.s3, "p_1075->g_752.s3", print_hash_value);
    transparent_crc(p_1075->g_752.s4, "p_1075->g_752.s4", print_hash_value);
    transparent_crc(p_1075->g_752.s5, "p_1075->g_752.s5", print_hash_value);
    transparent_crc(p_1075->g_752.s6, "p_1075->g_752.s6", print_hash_value);
    transparent_crc(p_1075->g_752.s7, "p_1075->g_752.s7", print_hash_value);
    transparent_crc(p_1075->g_763.s0, "p_1075->g_763.s0", print_hash_value);
    transparent_crc(p_1075->g_763.s1, "p_1075->g_763.s1", print_hash_value);
    transparent_crc(p_1075->g_763.s2, "p_1075->g_763.s2", print_hash_value);
    transparent_crc(p_1075->g_763.s3, "p_1075->g_763.s3", print_hash_value);
    transparent_crc(p_1075->g_763.s4, "p_1075->g_763.s4", print_hash_value);
    transparent_crc(p_1075->g_763.s5, "p_1075->g_763.s5", print_hash_value);
    transparent_crc(p_1075->g_763.s6, "p_1075->g_763.s6", print_hash_value);
    transparent_crc(p_1075->g_763.s7, "p_1075->g_763.s7", print_hash_value);
    transparent_crc(p_1075->g_764.x, "p_1075->g_764.x", print_hash_value);
    transparent_crc(p_1075->g_764.y, "p_1075->g_764.y", print_hash_value);
    transparent_crc(p_1075->g_893.x, "p_1075->g_893.x", print_hash_value);
    transparent_crc(p_1075->g_893.y, "p_1075->g_893.y", print_hash_value);
    transparent_crc(p_1075->g_893.z, "p_1075->g_893.z", print_hash_value);
    transparent_crc(p_1075->g_893.w, "p_1075->g_893.w", print_hash_value);
    transparent_crc(p_1075->g_894.s0, "p_1075->g_894.s0", print_hash_value);
    transparent_crc(p_1075->g_894.s1, "p_1075->g_894.s1", print_hash_value);
    transparent_crc(p_1075->g_894.s2, "p_1075->g_894.s2", print_hash_value);
    transparent_crc(p_1075->g_894.s3, "p_1075->g_894.s3", print_hash_value);
    transparent_crc(p_1075->g_894.s4, "p_1075->g_894.s4", print_hash_value);
    transparent_crc(p_1075->g_894.s5, "p_1075->g_894.s5", print_hash_value);
    transparent_crc(p_1075->g_894.s6, "p_1075->g_894.s6", print_hash_value);
    transparent_crc(p_1075->g_894.s7, "p_1075->g_894.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1075->g_917[i], "p_1075->g_917[i]", print_hash_value);

    }
    transparent_crc(p_1075->g_928.x, "p_1075->g_928.x", print_hash_value);
    transparent_crc(p_1075->g_928.y, "p_1075->g_928.y", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1075->g_1001[i], "p_1075->g_1001[i]", print_hash_value);

    }
    transparent_crc(p_1075->g_1010.s0, "p_1075->g_1010.s0", print_hash_value);
    transparent_crc(p_1075->g_1010.s1, "p_1075->g_1010.s1", print_hash_value);
    transparent_crc(p_1075->g_1010.s2, "p_1075->g_1010.s2", print_hash_value);
    transparent_crc(p_1075->g_1010.s3, "p_1075->g_1010.s3", print_hash_value);
    transparent_crc(p_1075->g_1010.s4, "p_1075->g_1010.s4", print_hash_value);
    transparent_crc(p_1075->g_1010.s5, "p_1075->g_1010.s5", print_hash_value);
    transparent_crc(p_1075->g_1010.s6, "p_1075->g_1010.s6", print_hash_value);
    transparent_crc(p_1075->g_1010.s7, "p_1075->g_1010.s7", print_hash_value);
    transparent_crc(p_1075->g_1013.x, "p_1075->g_1013.x", print_hash_value);
    transparent_crc(p_1075->g_1013.y, "p_1075->g_1013.y", print_hash_value);
    transparent_crc(p_1075->g_1013.z, "p_1075->g_1013.z", print_hash_value);
    transparent_crc(p_1075->g_1013.w, "p_1075->g_1013.w", print_hash_value);
    transparent_crc(p_1075->g_1023.s0, "p_1075->g_1023.s0", print_hash_value);
    transparent_crc(p_1075->g_1023.s1, "p_1075->g_1023.s1", print_hash_value);
    transparent_crc(p_1075->g_1023.s2, "p_1075->g_1023.s2", print_hash_value);
    transparent_crc(p_1075->g_1023.s3, "p_1075->g_1023.s3", print_hash_value);
    transparent_crc(p_1075->g_1023.s4, "p_1075->g_1023.s4", print_hash_value);
    transparent_crc(p_1075->g_1023.s5, "p_1075->g_1023.s5", print_hash_value);
    transparent_crc(p_1075->g_1023.s6, "p_1075->g_1023.s6", print_hash_value);
    transparent_crc(p_1075->g_1023.s7, "p_1075->g_1023.s7", print_hash_value);
    transparent_crc(p_1075->g_1026.x, "p_1075->g_1026.x", print_hash_value);
    transparent_crc(p_1075->g_1026.y, "p_1075->g_1026.y", print_hash_value);
    transparent_crc(p_1075->g_1032.s0, "p_1075->g_1032.s0", print_hash_value);
    transparent_crc(p_1075->g_1032.s1, "p_1075->g_1032.s1", print_hash_value);
    transparent_crc(p_1075->g_1032.s2, "p_1075->g_1032.s2", print_hash_value);
    transparent_crc(p_1075->g_1032.s3, "p_1075->g_1032.s3", print_hash_value);
    transparent_crc(p_1075->g_1032.s4, "p_1075->g_1032.s4", print_hash_value);
    transparent_crc(p_1075->g_1032.s5, "p_1075->g_1032.s5", print_hash_value);
    transparent_crc(p_1075->g_1032.s6, "p_1075->g_1032.s6", print_hash_value);
    transparent_crc(p_1075->g_1032.s7, "p_1075->g_1032.s7", print_hash_value);
    transparent_crc(p_1075->g_1062, "p_1075->g_1062", print_hash_value);
    transparent_crc(p_1075->g_1071.s0, "p_1075->g_1071.s0", print_hash_value);
    transparent_crc(p_1075->g_1071.s1, "p_1075->g_1071.s1", print_hash_value);
    transparent_crc(p_1075->g_1071.s2, "p_1075->g_1071.s2", print_hash_value);
    transparent_crc(p_1075->g_1071.s3, "p_1075->g_1071.s3", print_hash_value);
    transparent_crc(p_1075->g_1071.s4, "p_1075->g_1071.s4", print_hash_value);
    transparent_crc(p_1075->g_1071.s5, "p_1075->g_1071.s5", print_hash_value);
    transparent_crc(p_1075->g_1071.s6, "p_1075->g_1071.s6", print_hash_value);
    transparent_crc(p_1075->g_1071.s7, "p_1075->g_1071.s7", print_hash_value);
    transparent_crc(p_1075->g_1071.s8, "p_1075->g_1071.s8", print_hash_value);
    transparent_crc(p_1075->g_1071.s9, "p_1075->g_1071.s9", print_hash_value);
    transparent_crc(p_1075->g_1071.sa, "p_1075->g_1071.sa", print_hash_value);
    transparent_crc(p_1075->g_1071.sb, "p_1075->g_1071.sb", print_hash_value);
    transparent_crc(p_1075->g_1071.sc, "p_1075->g_1071.sc", print_hash_value);
    transparent_crc(p_1075->g_1071.sd, "p_1075->g_1071.sd", print_hash_value);
    transparent_crc(p_1075->g_1071.se, "p_1075->g_1071.se", print_hash_value);
    transparent_crc(p_1075->g_1071.sf, "p_1075->g_1071.sf", print_hash_value);
    transparent_crc(p_1075->v_collective, "p_1075->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 47; i++)
            transparent_crc(p_1075->g_special_values[i + 47 * get_linear_group_id()], "p_1075->g_special_values[i + 47 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 47; i++)
            transparent_crc(p_1075->l_special_values[i], "p_1075->l_special_values[i]", print_hash_value);
    transparent_crc(p_1075->l_comm_values[get_linear_local_id()], "p_1075->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1075->g_comm_values[get_linear_group_id() * 74 + get_linear_local_id()], "p_1075->g_comm_values[get_linear_group_id() * 74 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
