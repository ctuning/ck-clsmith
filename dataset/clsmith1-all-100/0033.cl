// --atomics 14 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 81,6,10 -l 1,3,5
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

__constant uint32_t permutations[10][15] = {
{6,3,8,14,13,9,11,10,12,0,2,1,4,7,5}, // permutation 0
{8,5,7,12,0,3,4,1,13,2,6,10,11,14,9}, // permutation 1
{7,10,2,9,13,11,4,5,12,14,3,6,8,1,0}, // permutation 2
{14,2,4,11,0,6,5,7,10,9,1,8,13,12,3}, // permutation 3
{13,11,3,2,7,9,12,5,10,6,0,14,1,4,8}, // permutation 4
{14,9,1,4,3,0,6,10,5,7,12,11,8,2,13}, // permutation 5
{1,9,5,11,2,13,14,4,0,8,7,10,3,6,12}, // permutation 6
{8,7,14,4,13,11,6,2,1,3,10,9,5,12,0}, // permutation 7
{10,5,4,1,3,0,6,14,13,9,11,8,7,12,2}, // permutation 8
{4,2,13,6,3,14,8,0,10,9,1,12,11,5,7} // permutation 9
};

// Seed: 33

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint32_t  f0;
   uint16_t  f1;
   int32_t  f2;
   int64_t  f3;
   uint64_t  f4;
   uint32_t  f5;
   volatile uint8_t  f6;
   uint64_t  f7;
   int64_t  f8;
   int64_t  f9;
};

struct S1 {
   int32_t  f0;
   volatile uint32_t  f1;
   int32_t  f2;
   uint8_t  f3;
   uint64_t  f4;
   uint32_t  f5;
   uint64_t  f6;
   volatile int8_t  f7;
};

struct S3 {
    VECTOR(int8_t, 2) g_2;
    volatile int64_t g_20;
    volatile uint32_t g_22;
    volatile VECTOR(int64_t, 4) g_25;
    int32_t g_31[10][2];
    int32_t *g_37;
    int32_t **g_36[8][6];
    struct S1 g_48[10];
    int32_t g_79;
    int32_t g_131[2][5];
    struct S1 g_142;
    struct S1 g_143[7];
    struct S1 g_144;
    struct S1 g_145;
    struct S1 g_156;
    struct S1 g_158;
    struct S1 *g_157[2];
    uint16_t g_172;
    uint16_t g_178;
    int8_t g_180;
    VECTOR(int32_t, 2) g_205;
    struct S0 g_213;
    struct S0 g_215[6];
    struct S0 *g_214;
    int16_t g_237;
    struct S0 g_263;
    VECTOR(uint64_t, 8) g_267;
    struct S1 g_290;
    uint16_t *g_362;
    int8_t g_377;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int16_t  func_1(struct S3 * p_378);
int16_t  func_5(int16_t  p_6, uint16_t  p_7, uint32_t  p_8, int32_t  p_9, struct S3 * p_378);
int32_t  func_10(uint32_t  p_11, uint32_t  p_12, struct S3 * p_378);
struct S1  func_34(int32_t ** p_35, struct S3 * p_378);
int32_t  func_67(int16_t  p_68, uint8_t  p_69, struct S3 * p_378);
int32_t  func_110(int16_t  p_111, struct S3 * p_378);
uint64_t  func_112(int32_t * p_113, uint8_t  p_114, struct S3 * p_378);
int32_t * func_115(int16_t  p_116, uint32_t  p_117, int32_t ** p_118, int32_t  p_119, uint16_t  p_120, struct S3 * p_378);
int16_t  func_121(struct S1 * p_122, int32_t ** p_123, struct S3 * p_378);
struct S1 * func_124(int32_t * p_125, int32_t ** p_126, struct S3 * p_378);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_378->g_2 p_378->g_comm_values p_378->g_22 p_378->g_36 p_378->g_31 p_378->g_48 p_378->g_145.f3 p_378->g_157 p_378->g_158.f5 p_378->g_172 p_378->g_156.f3 p_378->g_178 p_378->g_144.f6 p_378->g_158.f0 p_378->g_158.f3 p_378->g_156.f2 p_378->g_144.f0 p_378->g_205 p_378->g_144.f2 p_378->g_145.f4 p_378->g_142.f2 p_378->g_156.f5 p_378->g_143.f5 p_378->g_213.f3 p_378->g_214 p_378->g_131 p_378->g_156.f6 p_378->g_143.f3 p_378->g_267 p_378->g_213.f7 p_378->g_213.f8 p_378->g_263.f4 p_378->g_290.f6 p_378->g_158.f2 p_378->g_215.f3 p_378->g_290.f4 p_378->g_158.f6 p_378->g_143.f2 p_378->g_290.f2 p_378->g_377 p_378->g_213.f2 p_378->g_213.f5
 * writes: p_378->g_22 p_378->g_37 p_378->g_31 p_378->g_48 p_378->g_79 p_378->g_156.f6 p_378->g_158.f5 p_378->g_172 p_378->g_180 p_378->g_156.f2 p_378->g_178 p_378->g_144.f2 p_378->g_145.f6 p_378->g_214 p_378->g_142.f2 p_378->g_237 p_378->g_213.f3 p_378->g_131 p_378->g_263.f4 p_378->g_290.f6 p_378->g_142.f3 p_378->g_362
 */
int16_t  func_1(struct S3 * p_378)
{ /* block id: 4 */
    int32_t l_13 = 0x382E5809L;
    int32_t l_355[6] = {0x3E99A487L,0x44958400L,0x3E99A487L,0x3E99A487L,0x44958400L,0x3E99A487L};
    int64_t l_356 = (-1L);
    int i;
    if (((((((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))((-1L), ((VECTOR(int8_t, 2))(p_378->g_2.xx)), 0x1DL)).lo)).odd != 0x99L) <= FAKE_DIVERGE(p_378->global_0_offset, get_global_id(0), 10)) < (safe_mul_func_int16_t_s_s((func_5((0x44198D72L != func_10(p_378->g_comm_values[p_378->tid], l_13, p_378)), (((safe_mul_func_uint8_t_u_u(255UL, ((safe_rshift_func_int8_t_s_s((safe_mod_func_int64_t_s_s((1L | (safe_mod_func_int8_t_s_s((l_13 , (safe_lshift_func_int16_t_s_u(((safe_unary_minus_func_int32_t_s(func_67(p_378->g_comm_values[p_378->tid], p_378->g_comm_values[p_378->tid], p_378))) && l_13), 4))), p_378->g_143[4].f2))), GROUP_DIVERGE(1, 1))), 6)) > l_13))) , FAKE_DIVERGE(p_378->global_2_offset, get_global_id(2), 10)) >= l_355[2]), l_356, l_13, p_378) > p_378->g_377), 0x5A4FL))) , p_378->g_156.f2) , p_378->g_213.f2) | l_13))
    { /* block id: 161 */
        return p_378->g_213.f5;
    }
    else
    { /* block id: 163 */
        return l_355[2];
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_378->g_48.f6 p_378->g_290.f2
 * writes: p_378->g_362
 */
int16_t  func_5(int16_t  p_6, uint16_t  p_7, uint32_t  p_8, int32_t  p_9, struct S3 * p_378)
{ /* block id: 155 */
    uint16_t **l_359 = (void*)0;
    uint16_t **l_360 = (void*)0;
    uint16_t **l_361[2][3];
    int32_t l_363 = 0x2A8051BFL;
    int32_t *l_364 = &p_378->g_143[4].f2;
    int32_t *l_365 = &p_378->g_290.f2;
    int32_t *l_366 = &p_378->g_143[4].f2;
    int32_t *l_367[6];
    int64_t l_368 = (-1L);
    uint64_t l_369 = 0UL;
    int32_t l_372 = (-4L);
    int32_t l_373 = 0x5859497FL;
    uint16_t l_374 = 65535UL;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
            l_361[i][j] = (void*)0;
    }
    for (i = 0; i < 6; i++)
        l_367[i] = &p_378->g_143[4].f2;
    l_363 = (safe_mod_func_uint16_t_u_u(p_378->g_48[0].f6, (~((p_378->g_362 = &p_7) != &p_7))));
    l_369++;
    ++l_374;
    return p_378->g_290.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_378->g_22 p_378->g_36 p_378->g_31 p_378->g_48
 * writes: p_378->g_22 p_378->g_37 p_378->g_31 p_378->g_48
 */
int32_t  func_10(uint32_t  p_11, uint32_t  p_12, struct S3 * p_378)
{ /* block id: 5 */
    int64_t l_26 = 0L;
    int32_t *l_30 = &p_378->g_31[0][0];
    int32_t **l_29 = &l_30;
    int32_t *l_51 = &p_378->g_31[4][1];
    int32_t *l_52 = &p_378->g_31[2][1];
    uint32_t l_53 = 0UL;
    for (p_11 = 0; (p_11 < 59); p_11++)
    { /* block id: 8 */
        int64_t l_16 = (-1L);
        int32_t l_17 = 0x62E4ED38L;
        int32_t *l_18 = &l_17;
        int32_t *l_19 = &l_17;
        int32_t *l_21[6] = {&l_17,&l_17,&l_17,&l_17,&l_17,&l_17};
        int i;
        --p_378->g_22;
        if ((*l_18))
            continue;
        (*l_18) = ((0L < ((VECTOR(int64_t, 2))(p_378->g_25.xx)).lo) <= l_26);
        for (l_16 = 0; (l_16 > 17); l_16 = safe_add_func_int16_t_s_s(l_16, 3))
        { /* block id: 14 */
            l_29 = (void*)0;
            for (l_17 = 0; (l_17 != 1); l_17++)
            { /* block id: 18 */
                struct S1 *l_49 = &p_378->g_48[0];
                uint32_t l_50 = 0UL;
                (*l_49) = func_34(p_378->g_36[1][2], p_378);
                return l_50;
            }
            if (p_12)
                continue;
        }
    }
    l_53--;
    return p_12;
}


/* ------------------------------------------ */
/* 
 * reads : p_378->g_31 p_378->g_48
 * writes: p_378->g_37 p_378->g_31
 */
struct S1  func_34(int32_t ** p_35, struct S3 * p_378)
{ /* block id: 19 */
    int32_t *l_38 = &p_378->g_31[0][0];
    int32_t **l_39 = &p_378->g_37;
    int32_t *l_40 = &p_378->g_31[8][1];
    int32_t *l_41 = &p_378->g_31[0][0];
    int32_t *l_42 = &p_378->g_31[0][0];
    int32_t *l_43[10][8][3] = {{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}},{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}},{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}},{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}},{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}},{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}},{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}},{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}},{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}},{{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0},{&p_378->g_31[0][0],&p_378->g_31[0][0],(void*)0}}};
    int32_t l_44 = 0x5D35AB2AL;
    uint8_t l_45 = 0UL;
    int i, j, k;
    (*l_38) |= (((*l_39) = l_38) == (void*)0);
    l_45--;
    return p_378->g_48[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_378->g_2 p_378->g_145.f3 p_378->g_157 p_378->g_158.f5 p_378->g_172 p_378->g_156.f3 p_378->g_178 p_378->g_144.f6 p_378->g_158.f0 p_378->g_158.f3 p_378->g_156.f2 p_378->g_144.f0 p_378->g_205 p_378->g_36 p_378->g_144.f2 p_378->g_145.f4 p_378->g_142.f2 p_378->g_156.f5 p_378->g_comm_values p_378->g_143.f5 p_378->g_213.f3 p_378->g_214 p_378->g_131 p_378->g_156.f6 p_378->g_143.f3 p_378->g_267 p_378->g_213.f7 p_378->g_213.f8 p_378->g_263.f4 p_378->g_290.f6 p_378->g_158.f2 p_378->g_215.f3 p_378->g_290.f4 p_378->g_158.f6
 * writes: p_378->g_79 p_378->g_156.f6 p_378->g_158.f5 p_378->g_172 p_378->g_180 p_378->g_156.f2 p_378->g_178 p_378->g_144.f2 p_378->g_145.f6 p_378->g_214 p_378->g_142.f2 p_378->g_237 p_378->g_213.f3 p_378->g_131 p_378->g_263.f4 p_378->g_290.f6 p_378->g_142.f3
 */
int32_t  func_67(int16_t  p_68, uint8_t  p_69, struct S3 * p_378)
{ /* block id: 32 */
    uint8_t l_72 = 0UL;
    uint32_t l_73 = 0x878E06A8L;
    int32_t l_82 = (-1L);
    int32_t l_83[3];
    int8_t l_85 = 2L;
    uint8_t l_93 = 7UL;
    struct S1 *l_155 = &p_378->g_156;
    int8_t l_322 = 1L;
    int32_t *l_354 = (void*)0;
    int i;
    for (i = 0; i < 3; i++)
        l_83[i] = 1L;
    l_73 = (safe_sub_func_int32_t_s_s(l_72, p_68));
    for (l_73 = (-22); (l_73 != 56); ++l_73)
    { /* block id: 36 */
        int32_t l_81[7][5] = {{0x73C918E1L,(-6L),6L,(-6L),0x73C918E1L},{0x73C918E1L,(-6L),6L,(-6L),0x73C918E1L},{0x73C918E1L,(-6L),6L,(-6L),0x73C918E1L},{0x73C918E1L,(-6L),6L,(-6L),0x73C918E1L},{0x73C918E1L,(-6L),6L,(-6L),0x73C918E1L},{0x73C918E1L,(-6L),6L,(-6L),0x73C918E1L},{0x73C918E1L,(-6L),6L,(-6L),0x73C918E1L}};
        int32_t *l_161 = &p_378->g_144.f2;
        int32_t **l_160 = &l_161;
        int i, j;
        for (p_68 = 9; (p_68 <= 12); ++p_68)
        { /* block id: 39 */
            int32_t *l_78 = &p_378->g_79;
            int32_t *l_80[2][6][1];
            int16_t l_84[4] = {6L,6L,6L,6L};
            uint32_t l_86 = 0UL;
            int i, j, k;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 6; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_80[i][j][k] = &p_378->g_79;
                }
            }
            --l_86;
            for (p_69 = (-21); (p_69 != 5); ++p_69)
            { /* block id: 43 */
                int32_t l_91 = 1L;
                int32_t l_92 = 0x457B1607L;
                ++l_93;
            }
            if (p_69)
                break;
            (*l_78) = p_69;
        }
        for (l_85 = 0; (l_85 <= (-14)); --l_85)
        { /* block id: 51 */
            uint8_t l_107 = 0x43L;
            int32_t *l_128 = &l_82;
            int32_t **l_127[10][8] = {{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128},{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128},{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128},{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128},{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128},{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128},{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128},{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128},{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128},{&l_128,(void*)0,(void*)0,(void*)0,&l_128,&l_128,(void*)0,&l_128}};
            int32_t l_154 = 0x438B2605L;
            int i, j;
            if ((atomic_inc(&p_378->l_atomic_input[2]) == 7))
            { /* block id: 53 */
                uint16_t l_98 = 9UL;
                VECTOR(uint16_t, 4) l_101 = (VECTOR(uint16_t, 4))(0x66F1L, (VECTOR(uint16_t, 2))(0x66F1L, 0UL), 0UL);
                VECTOR(uint32_t, 4) l_102 = (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0x679061F1L), 0x679061F1L);
                int i;
                --l_98;
                l_102.z &= l_101.x;
                unsigned int result = 0;
                result += l_98;
                result += l_101.w;
                result += l_101.z;
                result += l_101.y;
                result += l_101.x;
                result += l_102.w;
                result += l_102.z;
                result += l_102.y;
                result += l_102.x;
                atomic_add(&p_378->l_special_values[2], result);
            }
            else
            { /* block id: 56 */
                (1 + 1);
            }
            l_83[1] = p_68;
            for (p_378->g_79 = 0; (p_378->g_79 == 28); p_378->g_79 = safe_add_func_uint64_t_u_u(p_378->g_79, 3))
            { /* block id: 62 */
                int32_t *l_105 = &l_81[3][3];
                int32_t *l_106[3][9] = {{&l_81[4][0],&l_81[4][0],&p_378->g_79,&l_81[2][1],&l_83[0],&l_81[2][1],&p_378->g_79,&l_81[4][0],&l_81[4][0]},{&l_81[4][0],&l_81[4][0],&p_378->g_79,&l_81[2][1],&l_83[0],&l_81[2][1],&p_378->g_79,&l_81[4][0],&l_81[4][0]},{&l_81[4][0],&l_81[4][0],&p_378->g_79,&l_81[2][1],&l_83[0],&l_81[2][1],&p_378->g_79,&l_81[4][0],&l_81[4][0]}};
                uint64_t *l_159 = &p_378->g_156.f6;
                uint64_t *l_211[9][9] = {{(void*)0,(void*)0,&p_378->g_142.f6,&p_378->g_143[4].f6,&p_378->g_158.f6,&p_378->g_142.f6,&p_378->g_144.f6,(void*)0,&p_378->g_144.f6},{(void*)0,(void*)0,&p_378->g_142.f6,&p_378->g_143[4].f6,&p_378->g_158.f6,&p_378->g_142.f6,&p_378->g_144.f6,(void*)0,&p_378->g_144.f6},{(void*)0,(void*)0,&p_378->g_142.f6,&p_378->g_143[4].f6,&p_378->g_158.f6,&p_378->g_142.f6,&p_378->g_144.f6,(void*)0,&p_378->g_144.f6},{(void*)0,(void*)0,&p_378->g_142.f6,&p_378->g_143[4].f6,&p_378->g_158.f6,&p_378->g_142.f6,&p_378->g_144.f6,(void*)0,&p_378->g_144.f6},{(void*)0,(void*)0,&p_378->g_142.f6,&p_378->g_143[4].f6,&p_378->g_158.f6,&p_378->g_142.f6,&p_378->g_144.f6,(void*)0,&p_378->g_144.f6},{(void*)0,(void*)0,&p_378->g_142.f6,&p_378->g_143[4].f6,&p_378->g_158.f6,&p_378->g_142.f6,&p_378->g_144.f6,(void*)0,&p_378->g_144.f6},{(void*)0,(void*)0,&p_378->g_142.f6,&p_378->g_143[4].f6,&p_378->g_158.f6,&p_378->g_142.f6,&p_378->g_144.f6,(void*)0,&p_378->g_144.f6},{(void*)0,(void*)0,&p_378->g_142.f6,&p_378->g_143[4].f6,&p_378->g_158.f6,&p_378->g_142.f6,&p_378->g_144.f6,(void*)0,&p_378->g_144.f6},{(void*)0,(void*)0,&p_378->g_142.f6,&p_378->g_143[4].f6,&p_378->g_158.f6,&p_378->g_142.f6,&p_378->g_144.f6,(void*)0,&p_378->g_144.f6}};
                int32_t l_315 = 0x0D3F80D9L;
                uint64_t l_353 = 9UL;
                int i, j;
                if (l_83[0])
                    break;
                l_107++;
                if (func_110((~(FAKE_DIVERGE(p_378->global_1_offset, get_global_id(1), 10) && (p_378->g_145.f6 = ((*l_159) = func_112(((*l_160) = func_115(func_121(func_124(&l_81[2][2], l_127[8][4], p_378), &l_105, p_378), (((((*l_159) = (((p_378->g_2.y , (safe_unary_minus_func_int32_t_s((safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_378->group_1_offset, get_group_id(1), 10), (safe_rshift_func_uint16_t_u_s((p_68 >= l_154), (((p_378->g_145.f3 , l_155) == p_378->g_157[1]) < p_69)))))))) , p_378->g_158.f5) > 0x6589L)) == (-8L)) , (void*)0) == l_155), l_160, (*l_105), (*l_128), p_378)), (*l_105), p_378))))), p_378))
                { /* block id: 135 */
                    for (p_378->g_290.f6 = (-25); (p_378->g_290.f6 > 36); p_378->g_290.f6 = safe_add_func_int16_t_s_s(p_378->g_290.f6, 4))
                    { /* block id: 138 */
                        return l_315;
                    }
                }
                else
                { /* block id: 141 */
                    int8_t l_345 = 0x09L;
                    int32_t *l_348 = &p_378->g_131[1][1];
                    int8_t *l_349[4];
                    int16_t *l_350 = &p_378->g_237;
                    uint8_t *l_351 = (void*)0;
                    uint8_t *l_352 = &p_378->g_142.f3;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_349[i] = &l_345;
                    (*l_161) = ((VECTOR(int32_t, 16))(((safe_mul_func_uint16_t_u_u(p_378->g_158.f2, ((safe_mul_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((l_322 < (**l_160)), (safe_lshift_func_uint8_t_u_u(p_68, 6)))), (safe_sub_func_int32_t_s_s(p_68, ((safe_mul_func_uint8_t_u_u(((p_68 > ((safe_lshift_func_uint8_t_u_s(((*l_352) = (safe_mul_func_int16_t_s_s(((*l_350) = ((l_83[1] = (safe_rshift_func_int16_t_s_s((safe_div_func_int32_t_s_s((safe_add_func_uint32_t_u_u((safe_add_func_int8_t_s_s((p_378->g_180 = (safe_rshift_func_uint16_t_u_s(((safe_mod_func_uint64_t_u_u(((l_348 = (((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(uint64_t, 8))(0x14A1D2426275EE18L, 0xB85FA46150AF19D9L, ((((*l_159) = (l_345 >= p_378->g_215[3].f3)) ^ (((safe_sub_func_int16_t_s_s((l_322 >= (*l_161)), l_345)) != 0x329CL) ^ 255UL)) < l_85), ((VECTOR(uint64_t, 2))(18446744073709551610UL)), 1UL, 0xC58548DE643FE7F3L, 0xC5BA8F06A0223C19L)).hi, ((VECTOR(uint64_t, 4))(1UL))))).y , (*l_160))) == (void*)0), (*l_105))) > 0x32E4715CL), p_68))), p_378->g_290.f4)), 0x7900A20FL)), l_345)), 3))) == 0x25L)), p_69))), 7)) <= p_68)) <= p_68), p_378->g_158.f6)) ^ p_378->g_158.f5))))) < l_72))) && (*l_161)), (-1L), ((VECTOR(int32_t, 8))(0x138DC6A6L)), ((VECTOR(int32_t, 2))(0x5A73BA51L)), (*l_348), l_353, 0x549F4819L, 0x5F420BCDL)).s4;
                }
            }
        }
    }
    l_354 = (void*)0;
    return l_73;
}


/* ------------------------------------------ */
/* 
 * reads : p_378->g_142.f2 p_378->g_156.f5 p_378->g_comm_values p_378->g_143.f5 p_378->g_213.f3 p_378->g_205 p_378->g_214 p_378->g_131 p_378->g_156.f6 p_378->g_143.f3 p_378->g_267 p_378->g_213.f7 p_378->g_213.f8 p_378->g_157 p_378->g_263.f4 p_378->g_36
 * writes: p_378->g_214 p_378->g_142.f2 p_378->g_237 p_378->g_213.f3 p_378->g_131 p_378->g_156.f6 p_378->g_263.f4
 */
int32_t  func_110(int16_t  p_111, struct S3 * p_378)
{ /* block id: 96 */
    struct S0 *l_212 = &p_378->g_213;
    int32_t l_216 = 4L;
    int32_t *l_217 = &l_216;
    int32_t *l_218 = (void*)0;
    int32_t *l_219 = &p_378->g_142.f2;
    int64_t l_235 = 0x272E40310098D11FL;
    int16_t *l_236 = &p_378->g_237;
    int64_t *l_252 = &p_378->g_213.f3;
    uint32_t l_253[4][10][6] = {{{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL}},{{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL}},{{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL}},{{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL},{4294967295UL,0xFB4DD98AL,4294967291UL,0xFB4DD98AL,4294967295UL,4294967295UL}}};
    int32_t l_258[6][9] = {{0L,0L,(-2L),(-1L),0x408A14A3L,(-1L),(-2L),0L,0L},{0L,0L,(-2L),(-1L),0x408A14A3L,(-1L),(-2L),0L,0L},{0L,0L,(-2L),(-1L),0x408A14A3L,(-1L),(-2L),0L,0L},{0L,0L,(-2L),(-1L),0x408A14A3L,(-1L),(-2L),0L,0L},{0L,0L,(-2L),(-1L),0x408A14A3L,(-1L),(-2L),0L,0L},{0L,0L,(-2L),(-1L),0x408A14A3L,(-1L),(-2L),0L,0L}};
    uint16_t l_259 = 65529UL;
    VECTOR(int8_t, 8) l_284 = (VECTOR(int8_t, 8))(0x0DL, (VECTOR(int8_t, 4))(0x0DL, (VECTOR(int8_t, 2))(0x0DL, 0x75L), 0x75L), 0x75L, 0x0DL, 0x75L);
    struct S1 *l_289 = &p_378->g_290;
    VECTOR(int32_t, 16) l_296 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x2F809E43L), 0x2F809E43L), 0x2F809E43L, 1L, 0x2F809E43L, (VECTOR(int32_t, 2))(1L, 0x2F809E43L), (VECTOR(int32_t, 2))(1L, 0x2F809E43L), 1L, 0x2F809E43L, 1L, 0x2F809E43L);
    int i, j, k;
    p_378->g_214 = l_212;
    (*l_219) &= (+((*l_217) = l_216));
    if ((safe_lshift_func_uint16_t_u_s(0xD076L, (safe_mod_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s((safe_unary_minus_func_uint8_t_u((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_add_func_uint16_t_u_u((*l_217), (p_111 != ((((*l_236) = l_235) || (safe_add_func_int16_t_s_s(((safe_add_func_uint64_t_u_u(p_378->g_156.f5, (safe_div_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), 13)) , (((*l_252) ^= ((safe_rshift_func_int16_t_s_s((((safe_add_func_uint8_t_u_u(6UL, (((*l_217) , (void*)0) == (void*)0))) || (*l_217)) ^ p_378->g_comm_values[p_378->tid]), p_378->g_143[4].f5)) <= p_111)) , (void*)0)) == &p_378->g_237), 65527UL)), p_378->g_143[4].f5)))) && p_111), 1L))) == l_253[1][7][2])))), GROUP_DIVERGE(0, 1))), 0x10D7L)))), p_378->g_205.x)) & p_111), p_111)))))
    { /* block id: 102 */
        int32_t *l_254 = (void*)0;
        int32_t *l_255 = (void*)0;
        int32_t *l_256 = &p_378->g_131[0][1];
        int32_t *l_257[9][4] = {{(void*)0,(void*)0,&p_378->g_79,&l_216},{(void*)0,(void*)0,&p_378->g_79,&l_216},{(void*)0,(void*)0,&p_378->g_79,&l_216},{(void*)0,(void*)0,&p_378->g_79,&l_216},{(void*)0,(void*)0,&p_378->g_79,&l_216},{(void*)0,(void*)0,&p_378->g_79,&l_216},{(void*)0,(void*)0,&p_378->g_79,&l_216},{(void*)0,(void*)0,&p_378->g_79,&l_216},{(void*)0,(void*)0,&p_378->g_79,&l_216}};
        struct S0 *l_262 = &p_378->g_263;
        uint16_t l_287 = 0xC800L;
        VECTOR(int32_t, 2) l_295 = (VECTOR(int32_t, 2))((-1L), 0x0B0271E3L);
        int i, j;
        l_259--;
        if (p_111)
        { /* block id: 104 */
            (*l_256) &= (l_262 != p_378->g_214);
            for (p_378->g_156.f6 = 16; (p_378->g_156.f6 <= 53); p_378->g_156.f6 = safe_add_func_uint16_t_u_u(p_378->g_156.f6, 7))
            { /* block id: 108 */
                int32_t *l_266 = (void*)0;
                l_266 = l_266;
                (*l_219) = (((VECTOR(uint64_t, 4))(p_378->g_143[4].f3, ((VECTOR(uint64_t, 2))(p_378->g_267.s53)), 18446744073709551609UL)).x , (-4L));
            }
        }
        else
        { /* block id: 112 */
            uint32_t l_268 = 0x114D6530L;
            VECTOR(uint64_t, 16) l_277 = (VECTOR(uint64_t, 16))(0x5624AA6655DB0BA4L, (VECTOR(uint64_t, 4))(0x5624AA6655DB0BA4L, (VECTOR(uint64_t, 2))(0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L), 0xA037DA4EEEC51C66L), 0xA037DA4EEEC51C66L, 0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L, (VECTOR(uint64_t, 2))(0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L), (VECTOR(uint64_t, 2))(0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L), 0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L, 0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L);
            int i;
            l_268--;
            (*l_219) = 0x7C052F89L;
            (*l_217) = ((-1L) >= p_111);
            if (((*l_256) = (safe_sub_func_int32_t_s_s(((*l_217) = (safe_sub_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(0xF4B7L, 12)), ((((VECTOR(uint64_t, 16))(l_277.s950d331825ab7781)).sd && ((void*)0 == &l_217)) > (((p_378->g_131[0][1] || ((*l_219) |= ((((safe_rshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u(5UL, l_268)), 5)) , (*l_256)) | (safe_rshift_func_int8_t_s_s(((((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 2))((-1L), 0x62L)).xyxxyyyx, ((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))(l_284.s51)), (int8_t)0x4EL))).xxyxyyyy))).s4 >= (safe_lshift_func_uint16_t_u_u(l_287, 10))) >= 0x1F4CL), 1))) , 65535UL))) != 0x56FEL) , 0x43C6L))))), p_111))))
            { /* block id: 119 */
                (*l_219) = 0x48F8AE80L;
            }
            else
            { /* block id: 121 */
                VECTOR(int32_t, 8) l_288 = (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0L), 0L), 0L, 3L, 0L);
                int i;
                (*l_219) = ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(l_288.s61071413)).hi, ((VECTOR(int32_t, 8))((-1L), (p_111 == ((l_289 != ((safe_add_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((p_378->g_213.f7 || ((((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(l_295.yxxx)).yyxwyyyzwyxzxxxw, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_296.scd2d)).zyxzzwywyzwyzzxy)).even)).hi)).zwyywywyzzwzxyyz))).s7 >= (safe_lshift_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((p_111 , p_111) , ((p_111 || (l_288.s3 <= p_378->g_213.f8)) , (safe_lshift_func_uint8_t_u_s(p_378->g_205.y, 2)))), (*l_217))), 0x4EL)), 9L)), p_111))) , p_111)), l_288.s2)), p_111)) , p_378->g_157[1])) , p_111)), 0x5292A267L, ((VECTOR(int32_t, 4))((-1L))), (-2L))).hi))).x;
            }
        }
    }
    else
    { /* block id: 125 */
        for (p_378->g_263.f4 = 0; (p_378->g_263.f4 > 37); ++p_378->g_263.f4)
        { /* block id: 128 */
            int32_t **l_310 = &l_219;
            int32_t ***l_309 = &l_310;
            int32_t **l_312 = &l_218;
            int32_t ***l_311 = &l_312;
            (*l_311) = ((*l_309) = p_378->g_36[1][2]);
        }
        (*l_219) ^= ((VECTOR(int32_t, 2))(0x051C94A1L, 0x7DFBF561L)).lo;
    }
    return (*l_219);
}


/* ------------------------------------------ */
/* 
 * reads : p_378->g_158.f5 p_378->g_172 p_378->g_156.f3 p_378->g_178 p_378->g_144.f6 p_378->g_158.f0 p_378->g_158.f3 p_378->g_156.f2 p_378->g_144.f0 p_378->g_205 p_378->g_36 p_378->g_144.f2 p_378->g_145.f4
 * writes: p_378->g_158.f5 p_378->g_172 p_378->g_180 p_378->g_156.f2 p_378->g_178 p_378->g_144.f2
 */
uint64_t  func_112(int32_t * p_113, uint8_t  p_114, struct S3 * p_378)
{ /* block id: 78 */
    VECTOR(uint32_t, 8) l_166 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x379D1E07L), 0x379D1E07L), 0x379D1E07L, 4294967295UL, 0x379D1E07L);
    uint16_t *l_177 = &p_378->g_178;
    VECTOR(int32_t, 8) l_187 = (VECTOR(int32_t, 8))(0x5D04719DL, (VECTOR(int32_t, 4))(0x5D04719DL, (VECTOR(int32_t, 2))(0x5D04719DL, 0x7DA40333L), 0x7DA40333L), 0x7DA40333L, 0x5D04719DL, 0x7DA40333L);
    int32_t ***l_193 = &p_378->g_36[3][1];
    int32_t *l_206 = &p_378->g_144.f2;
    int32_t *l_207[7];
    uint32_t l_208 = 0x6207D9FBL;
    int i;
    for (i = 0; i < 7; i++)
        l_207[i] = &p_378->g_158.f2;
    for (p_378->g_158.f5 = 0; (p_378->g_158.f5 == 17); p_378->g_158.f5 = safe_add_func_int8_t_s_s(p_378->g_158.f5, 4))
    { /* block id: 81 */
        int32_t *l_165[9][1] = {{&p_378->g_158.f2},{&p_378->g_158.f2},{&p_378->g_158.f2},{&p_378->g_158.f2},{&p_378->g_158.f2},{&p_378->g_158.f2},{&p_378->g_158.f2},{&p_378->g_158.f2},{&p_378->g_158.f2}};
        uint16_t *l_171 = &p_378->g_172;
        int8_t *l_179 = &p_378->g_180;
        int16_t l_194 = 0x213BL;
        int i, j;
        (*p_113) = (((((void*)0 != l_165[1][0]) | ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_166.s25)).xxyx)).y) > (p_114 , ((safe_rshift_func_int8_t_s_u((((safe_mul_func_uint16_t_u_u(((*l_171)++), ((safe_mul_func_int8_t_s_s(((*l_179) = ((p_378->g_158.f5 , l_177) == (void*)0)), (safe_sub_func_uint16_t_u_u(((p_378->g_156.f3 && ((safe_lshift_func_uint16_t_u_s((((VECTOR(int32_t, 16))(l_187.s3147470100740334)).sb > ((safe_mul_func_uint16_t_u_u(4UL, (safe_add_func_int16_t_s_s((safe_unary_minus_func_int32_t_s((((FAKE_DIVERGE(p_378->global_2_offset, get_global_id(2), 10) | ((p_114 , (void*)0) == l_193)) | p_378->g_178) , (-4L)))), 0x7329L)))) ^ 0x9DAF100AE58A2A1EL)), p_378->g_144.f6)) != FAKE_DIVERGE(p_378->local_2_offset, get_local_id(2), 10))) == FAKE_DIVERGE(p_378->group_0_offset, get_group_id(0), 10)), p_114)))) || l_194))) > p_378->g_158.f0) == p_378->g_158.f3), 4)) , p_114))) | (*p_113));
        if (l_187.s3)
            continue;
        l_187.s3 ^= ((safe_sub_func_int32_t_s_s((*p_113), (*p_113))) && (safe_add_func_uint16_t_u_u(((*l_177) = (safe_sub_func_int64_t_s_s((((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((0xD41AL == p_378->g_144.f0), 6)), 11)) != 0x43CAL) >= ((VECTOR(int32_t, 8))(p_378->g_205.yxxxyyxy)).s6), FAKE_DIVERGE(p_378->local_0_offset, get_local_id(0), 10)))), p_378->g_205.x)));
    }
    (*l_206) ^= ((*p_113) = (p_378->g_36[5][1] != (*l_193)));
    l_208--;
    (*l_206) = (*p_113);
    return p_378->g_145.f4;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_115(int16_t  p_116, uint32_t  p_117, int32_t ** p_118, int32_t  p_119, uint16_t  p_120, struct S3 * p_378)
{ /* block id: 75 */
    int32_t *l_162 = &p_378->g_156.f2;
    return l_162;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_121(struct S1 * p_122, int32_t ** p_123, struct S3 * p_378)
{ /* block id: 71 */
    uint64_t l_146 = 0x013AF14BB7842833L;
    l_146--;
    return l_146;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S1 * func_124(int32_t * p_125, int32_t ** p_126, struct S3 * p_378)
{ /* block id: 65 */
    int32_t l_129 = 0x18FA3EEEL;
    int32_t *l_130 = &p_378->g_131[0][1];
    int32_t *l_132 = &p_378->g_131[0][1];
    int32_t *l_133 = &p_378->g_131[1][3];
    int32_t *l_134 = &p_378->g_131[0][2];
    int32_t *l_135 = &p_378->g_131[0][1];
    uint32_t l_136 = 7UL;
    int32_t **l_140 = (void*)0;
    int32_t ***l_139 = &l_140;
    struct S1 *l_141[7][1][6] = {{{&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142}},{{&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142}},{{&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142}},{{&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142}},{{&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142}},{{&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142}},{{&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142,&p_378->g_142}}};
    int i, j, k;
    l_129 = 0x671EF585L;
    --l_136;
    p_126 = ((*l_139) = &l_134);
    return l_141[3][0][1];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local volatile uint32_t l_atomic_input[14];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 14; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[14];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 14; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[15];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 15; i++)
            l_comm_values[i] = 1;
    struct S3 c_379;
    struct S3* p_378 = &c_379;
    struct S3 c_380 = {
        (VECTOR(int8_t, 2))(0x1FL, 0x5AL), // p_378->g_2
        0L, // p_378->g_20
        0xD2AE4566L, // p_378->g_22
        (VECTOR(int64_t, 4))(0x7A9DFEEE83ADEB94L, (VECTOR(int64_t, 2))(0x7A9DFEEE83ADEB94L, (-10L)), (-10L)), // p_378->g_25
        {{(-4L),(-4L)},{(-4L),(-4L)},{(-4L),(-4L)},{(-4L),(-4L)},{(-4L),(-4L)},{(-4L),(-4L)},{(-4L),(-4L)},{(-4L),(-4L)},{(-4L),(-4L)},{(-4L),(-4L)}}, // p_378->g_31
        (void*)0, // p_378->g_37
        {{&p_378->g_37,(void*)0,&p_378->g_37,&p_378->g_37,(void*)0,&p_378->g_37},{&p_378->g_37,(void*)0,&p_378->g_37,&p_378->g_37,(void*)0,&p_378->g_37},{&p_378->g_37,(void*)0,&p_378->g_37,&p_378->g_37,(void*)0,&p_378->g_37},{&p_378->g_37,(void*)0,&p_378->g_37,&p_378->g_37,(void*)0,&p_378->g_37},{&p_378->g_37,(void*)0,&p_378->g_37,&p_378->g_37,(void*)0,&p_378->g_37},{&p_378->g_37,(void*)0,&p_378->g_37,&p_378->g_37,(void*)0,&p_378->g_37},{&p_378->g_37,(void*)0,&p_378->g_37,&p_378->g_37,(void*)0,&p_378->g_37},{&p_378->g_37,(void*)0,&p_378->g_37,&p_378->g_37,(void*)0,&p_378->g_37}}, // p_378->g_36
        {{0x19BF897CL,4294967292UL,0x7514A7B4L,0x85L,4UL,1UL,0x1D6DE73C79434882L,7L},{-1L,4294967295UL,0x0D65803AL,5UL,0x79901E9BB6020BD0L,0x037D67D2L,0x40C0E69535F3DCD5L,-1L},{0x19BF897CL,4294967292UL,0x7514A7B4L,0x85L,4UL,1UL,0x1D6DE73C79434882L,7L},{0x19BF897CL,4294967292UL,0x7514A7B4L,0x85L,4UL,1UL,0x1D6DE73C79434882L,7L},{-1L,4294967295UL,0x0D65803AL,5UL,0x79901E9BB6020BD0L,0x037D67D2L,0x40C0E69535F3DCD5L,-1L},{0x19BF897CL,4294967292UL,0x7514A7B4L,0x85L,4UL,1UL,0x1D6DE73C79434882L,7L},{0x19BF897CL,4294967292UL,0x7514A7B4L,0x85L,4UL,1UL,0x1D6DE73C79434882L,7L},{-1L,4294967295UL,0x0D65803AL,5UL,0x79901E9BB6020BD0L,0x037D67D2L,0x40C0E69535F3DCD5L,-1L},{0x19BF897CL,4294967292UL,0x7514A7B4L,0x85L,4UL,1UL,0x1D6DE73C79434882L,7L},{0x19BF897CL,4294967292UL,0x7514A7B4L,0x85L,4UL,1UL,0x1D6DE73C79434882L,7L}}, // p_378->g_48
        0x0440B9AAL, // p_378->g_79
        {{1L,0x6AF8E6AFL,0x480214DEL,0x6AF8E6AFL,1L},{1L,0x6AF8E6AFL,0x480214DEL,0x6AF8E6AFL,1L}}, // p_378->g_131
        {1L,1UL,0x7A7915ACL,0x20L,1UL,0xBD545F6DL,0x2539353A0DE2FF72L,0x38L}, // p_378->g_142
        {{0x02A2DD4FL,4294967290UL,8L,0x0FL,18446744073709551615UL,0xA06C3FE3L,0xDBE712D4BE4FD566L,1L},{0x02A2DD4FL,4294967290UL,8L,0x0FL,18446744073709551615UL,0xA06C3FE3L,0xDBE712D4BE4FD566L,1L},{0x02A2DD4FL,4294967290UL,8L,0x0FL,18446744073709551615UL,0xA06C3FE3L,0xDBE712D4BE4FD566L,1L},{0x02A2DD4FL,4294967290UL,8L,0x0FL,18446744073709551615UL,0xA06C3FE3L,0xDBE712D4BE4FD566L,1L},{0x02A2DD4FL,4294967290UL,8L,0x0FL,18446744073709551615UL,0xA06C3FE3L,0xDBE712D4BE4FD566L,1L},{0x02A2DD4FL,4294967290UL,8L,0x0FL,18446744073709551615UL,0xA06C3FE3L,0xDBE712D4BE4FD566L,1L},{0x02A2DD4FL,4294967290UL,8L,0x0FL,18446744073709551615UL,0xA06C3FE3L,0xDBE712D4BE4FD566L,1L}}, // p_378->g_143
        {0x5974BC64L,4294967289UL,0x6FB191E2L,255UL,0xF9FE435C927A8550L,0x86D169E2L,0x6D1AF15F833B014EL,0x3FL}, // p_378->g_144
        {0x7A7BD63AL,4294967295UL,0x2788A971L,9UL,0xB219FC28B1F27604L,0UL,0x126096A5C97E8F17L,3L}, // p_378->g_145
        {-1L,4294967288UL,-10L,249UL,0xE14EEBAE75223C14L,0UL,0xD5439D7C7F515F2EL,0x2FL}, // p_378->g_156
        {1L,4294967295UL,1L,1UL,18446744073709551614UL,4294967293UL,4UL,0x56L}, // p_378->g_158
        {&p_378->g_158,&p_378->g_158}, // p_378->g_157
        0x71F7L, // p_378->g_172
        0UL, // p_378->g_178
        0x75L, // p_378->g_180
        (VECTOR(int32_t, 2))((-8L), 0x55B21C62L), // p_378->g_205
        {0xCED819CAL,65529UL,1L,0x4C1AAF0B85757923L,0UL,0x6C910B19L,0xE7L,0UL,0L,0x15FC58894BF49D69L}, // p_378->g_213
        {{0x482C7EC2L,0UL,0x3A3A6B28L,0x5D40EE0FA0BEB37EL,0UL,4294967293UL,3UL,0x2F3F7335CC243417L,0x6FE64FEF9439EC1EL,-1L},{0xE3658661L,0x66F9L,2L,1L,18446744073709551610UL,0x8F161DB0L,0xD1L,0x1AE9DFF291AFECF8L,0x5A9FF2AFA1C450E6L,0x7FCDEE8CAE0675AAL},{0x482C7EC2L,0UL,0x3A3A6B28L,0x5D40EE0FA0BEB37EL,0UL,4294967293UL,3UL,0x2F3F7335CC243417L,0x6FE64FEF9439EC1EL,-1L},{0x482C7EC2L,0UL,0x3A3A6B28L,0x5D40EE0FA0BEB37EL,0UL,4294967293UL,3UL,0x2F3F7335CC243417L,0x6FE64FEF9439EC1EL,-1L},{0xE3658661L,0x66F9L,2L,1L,18446744073709551610UL,0x8F161DB0L,0xD1L,0x1AE9DFF291AFECF8L,0x5A9FF2AFA1C450E6L,0x7FCDEE8CAE0675AAL},{0x482C7EC2L,0UL,0x3A3A6B28L,0x5D40EE0FA0BEB37EL,0UL,4294967293UL,3UL,0x2F3F7335CC243417L,0x6FE64FEF9439EC1EL,-1L}}, // p_378->g_215
        &p_378->g_215[3], // p_378->g_214
        0L, // p_378->g_237
        {4294967295UL,0xFDE4L,0x66BB63A7L,0x63B5AC5323B5B305L,0xF343B5F4A50E1917L,1UL,1UL,18446744073709551615UL,0x74AC6135A41A3910L,1L}, // p_378->g_263
        (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x8A440149D37613B2L), 0x8A440149D37613B2L), 0x8A440149D37613B2L, 18446744073709551615UL, 0x8A440149D37613B2L), // p_378->g_267
        {0L,0xC1B9CDC7L,-10L,1UL,0x948C41C4F35DFCAFL,0x4A0AD735L,0x2C730E8465106F46L,0x4CL}, // p_378->g_290
        &p_378->g_172, // p_378->g_362
        0L, // p_378->g_377
        0, // p_378->v_collective
        sequence_input[get_global_id(0)], // p_378->global_0_offset
        sequence_input[get_global_id(1)], // p_378->global_1_offset
        sequence_input[get_global_id(2)], // p_378->global_2_offset
        sequence_input[get_local_id(0)], // p_378->local_0_offset
        sequence_input[get_local_id(1)], // p_378->local_1_offset
        sequence_input[get_local_id(2)], // p_378->local_2_offset
        sequence_input[get_group_id(0)], // p_378->group_0_offset
        sequence_input[get_group_id(1)], // p_378->group_1_offset
        sequence_input[get_group_id(2)], // p_378->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 15)), permutations[0][get_linear_local_id()])), // p_378->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_379 = c_380;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_378);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_378->g_2.x, "p_378->g_2.x", print_hash_value);
    transparent_crc(p_378->g_2.y, "p_378->g_2.y", print_hash_value);
    transparent_crc(p_378->g_20, "p_378->g_20", print_hash_value);
    transparent_crc(p_378->g_22, "p_378->g_22", print_hash_value);
    transparent_crc(p_378->g_25.x, "p_378->g_25.x", print_hash_value);
    transparent_crc(p_378->g_25.y, "p_378->g_25.y", print_hash_value);
    transparent_crc(p_378->g_25.z, "p_378->g_25.z", print_hash_value);
    transparent_crc(p_378->g_25.w, "p_378->g_25.w", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_378->g_31[i][j], "p_378->g_31[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_378->g_48[i].f0, "p_378->g_48[i].f0", print_hash_value);
        transparent_crc(p_378->g_48[i].f1, "p_378->g_48[i].f1", print_hash_value);
        transparent_crc(p_378->g_48[i].f2, "p_378->g_48[i].f2", print_hash_value);
        transparent_crc(p_378->g_48[i].f3, "p_378->g_48[i].f3", print_hash_value);
        transparent_crc(p_378->g_48[i].f4, "p_378->g_48[i].f4", print_hash_value);
        transparent_crc(p_378->g_48[i].f5, "p_378->g_48[i].f5", print_hash_value);
        transparent_crc(p_378->g_48[i].f6, "p_378->g_48[i].f6", print_hash_value);
        transparent_crc(p_378->g_48[i].f7, "p_378->g_48[i].f7", print_hash_value);

    }
    transparent_crc(p_378->g_79, "p_378->g_79", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_378->g_131[i][j], "p_378->g_131[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_378->g_142.f0, "p_378->g_142.f0", print_hash_value);
    transparent_crc(p_378->g_142.f1, "p_378->g_142.f1", print_hash_value);
    transparent_crc(p_378->g_142.f2, "p_378->g_142.f2", print_hash_value);
    transparent_crc(p_378->g_142.f3, "p_378->g_142.f3", print_hash_value);
    transparent_crc(p_378->g_142.f4, "p_378->g_142.f4", print_hash_value);
    transparent_crc(p_378->g_142.f5, "p_378->g_142.f5", print_hash_value);
    transparent_crc(p_378->g_142.f6, "p_378->g_142.f6", print_hash_value);
    transparent_crc(p_378->g_142.f7, "p_378->g_142.f7", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_378->g_143[i].f0, "p_378->g_143[i].f0", print_hash_value);
        transparent_crc(p_378->g_143[i].f1, "p_378->g_143[i].f1", print_hash_value);
        transparent_crc(p_378->g_143[i].f2, "p_378->g_143[i].f2", print_hash_value);
        transparent_crc(p_378->g_143[i].f3, "p_378->g_143[i].f3", print_hash_value);
        transparent_crc(p_378->g_143[i].f4, "p_378->g_143[i].f4", print_hash_value);
        transparent_crc(p_378->g_143[i].f5, "p_378->g_143[i].f5", print_hash_value);
        transparent_crc(p_378->g_143[i].f6, "p_378->g_143[i].f6", print_hash_value);
        transparent_crc(p_378->g_143[i].f7, "p_378->g_143[i].f7", print_hash_value);

    }
    transparent_crc(p_378->g_144.f0, "p_378->g_144.f0", print_hash_value);
    transparent_crc(p_378->g_144.f1, "p_378->g_144.f1", print_hash_value);
    transparent_crc(p_378->g_144.f2, "p_378->g_144.f2", print_hash_value);
    transparent_crc(p_378->g_144.f3, "p_378->g_144.f3", print_hash_value);
    transparent_crc(p_378->g_144.f4, "p_378->g_144.f4", print_hash_value);
    transparent_crc(p_378->g_144.f5, "p_378->g_144.f5", print_hash_value);
    transparent_crc(p_378->g_144.f6, "p_378->g_144.f6", print_hash_value);
    transparent_crc(p_378->g_144.f7, "p_378->g_144.f7", print_hash_value);
    transparent_crc(p_378->g_145.f0, "p_378->g_145.f0", print_hash_value);
    transparent_crc(p_378->g_145.f1, "p_378->g_145.f1", print_hash_value);
    transparent_crc(p_378->g_145.f2, "p_378->g_145.f2", print_hash_value);
    transparent_crc(p_378->g_145.f3, "p_378->g_145.f3", print_hash_value);
    transparent_crc(p_378->g_145.f4, "p_378->g_145.f4", print_hash_value);
    transparent_crc(p_378->g_145.f5, "p_378->g_145.f5", print_hash_value);
    transparent_crc(p_378->g_145.f6, "p_378->g_145.f6", print_hash_value);
    transparent_crc(p_378->g_145.f7, "p_378->g_145.f7", print_hash_value);
    transparent_crc(p_378->g_156.f0, "p_378->g_156.f0", print_hash_value);
    transparent_crc(p_378->g_156.f1, "p_378->g_156.f1", print_hash_value);
    transparent_crc(p_378->g_156.f2, "p_378->g_156.f2", print_hash_value);
    transparent_crc(p_378->g_156.f3, "p_378->g_156.f3", print_hash_value);
    transparent_crc(p_378->g_156.f4, "p_378->g_156.f4", print_hash_value);
    transparent_crc(p_378->g_156.f5, "p_378->g_156.f5", print_hash_value);
    transparent_crc(p_378->g_156.f6, "p_378->g_156.f6", print_hash_value);
    transparent_crc(p_378->g_156.f7, "p_378->g_156.f7", print_hash_value);
    transparent_crc(p_378->g_158.f0, "p_378->g_158.f0", print_hash_value);
    transparent_crc(p_378->g_158.f1, "p_378->g_158.f1", print_hash_value);
    transparent_crc(p_378->g_158.f2, "p_378->g_158.f2", print_hash_value);
    transparent_crc(p_378->g_158.f3, "p_378->g_158.f3", print_hash_value);
    transparent_crc(p_378->g_158.f4, "p_378->g_158.f4", print_hash_value);
    transparent_crc(p_378->g_158.f5, "p_378->g_158.f5", print_hash_value);
    transparent_crc(p_378->g_158.f6, "p_378->g_158.f6", print_hash_value);
    transparent_crc(p_378->g_158.f7, "p_378->g_158.f7", print_hash_value);
    transparent_crc(p_378->g_172, "p_378->g_172", print_hash_value);
    transparent_crc(p_378->g_178, "p_378->g_178", print_hash_value);
    transparent_crc(p_378->g_180, "p_378->g_180", print_hash_value);
    transparent_crc(p_378->g_205.x, "p_378->g_205.x", print_hash_value);
    transparent_crc(p_378->g_205.y, "p_378->g_205.y", print_hash_value);
    transparent_crc(p_378->g_213.f0, "p_378->g_213.f0", print_hash_value);
    transparent_crc(p_378->g_213.f1, "p_378->g_213.f1", print_hash_value);
    transparent_crc(p_378->g_213.f2, "p_378->g_213.f2", print_hash_value);
    transparent_crc(p_378->g_213.f3, "p_378->g_213.f3", print_hash_value);
    transparent_crc(p_378->g_213.f4, "p_378->g_213.f4", print_hash_value);
    transparent_crc(p_378->g_213.f5, "p_378->g_213.f5", print_hash_value);
    transparent_crc(p_378->g_213.f6, "p_378->g_213.f6", print_hash_value);
    transparent_crc(p_378->g_213.f7, "p_378->g_213.f7", print_hash_value);
    transparent_crc(p_378->g_213.f8, "p_378->g_213.f8", print_hash_value);
    transparent_crc(p_378->g_213.f9, "p_378->g_213.f9", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_378->g_215[i].f0, "p_378->g_215[i].f0", print_hash_value);
        transparent_crc(p_378->g_215[i].f1, "p_378->g_215[i].f1", print_hash_value);
        transparent_crc(p_378->g_215[i].f2, "p_378->g_215[i].f2", print_hash_value);
        transparent_crc(p_378->g_215[i].f3, "p_378->g_215[i].f3", print_hash_value);
        transparent_crc(p_378->g_215[i].f4, "p_378->g_215[i].f4", print_hash_value);
        transparent_crc(p_378->g_215[i].f5, "p_378->g_215[i].f5", print_hash_value);
        transparent_crc(p_378->g_215[i].f6, "p_378->g_215[i].f6", print_hash_value);
        transparent_crc(p_378->g_215[i].f7, "p_378->g_215[i].f7", print_hash_value);
        transparent_crc(p_378->g_215[i].f8, "p_378->g_215[i].f8", print_hash_value);
        transparent_crc(p_378->g_215[i].f9, "p_378->g_215[i].f9", print_hash_value);

    }
    transparent_crc(p_378->g_237, "p_378->g_237", print_hash_value);
    transparent_crc(p_378->g_263.f0, "p_378->g_263.f0", print_hash_value);
    transparent_crc(p_378->g_263.f1, "p_378->g_263.f1", print_hash_value);
    transparent_crc(p_378->g_263.f2, "p_378->g_263.f2", print_hash_value);
    transparent_crc(p_378->g_263.f3, "p_378->g_263.f3", print_hash_value);
    transparent_crc(p_378->g_263.f4, "p_378->g_263.f4", print_hash_value);
    transparent_crc(p_378->g_263.f5, "p_378->g_263.f5", print_hash_value);
    transparent_crc(p_378->g_263.f6, "p_378->g_263.f6", print_hash_value);
    transparent_crc(p_378->g_263.f7, "p_378->g_263.f7", print_hash_value);
    transparent_crc(p_378->g_263.f8, "p_378->g_263.f8", print_hash_value);
    transparent_crc(p_378->g_263.f9, "p_378->g_263.f9", print_hash_value);
    transparent_crc(p_378->g_267.s0, "p_378->g_267.s0", print_hash_value);
    transparent_crc(p_378->g_267.s1, "p_378->g_267.s1", print_hash_value);
    transparent_crc(p_378->g_267.s2, "p_378->g_267.s2", print_hash_value);
    transparent_crc(p_378->g_267.s3, "p_378->g_267.s3", print_hash_value);
    transparent_crc(p_378->g_267.s4, "p_378->g_267.s4", print_hash_value);
    transparent_crc(p_378->g_267.s5, "p_378->g_267.s5", print_hash_value);
    transparent_crc(p_378->g_267.s6, "p_378->g_267.s6", print_hash_value);
    transparent_crc(p_378->g_267.s7, "p_378->g_267.s7", print_hash_value);
    transparent_crc(p_378->g_290.f0, "p_378->g_290.f0", print_hash_value);
    transparent_crc(p_378->g_290.f1, "p_378->g_290.f1", print_hash_value);
    transparent_crc(p_378->g_290.f2, "p_378->g_290.f2", print_hash_value);
    transparent_crc(p_378->g_290.f3, "p_378->g_290.f3", print_hash_value);
    transparent_crc(p_378->g_290.f4, "p_378->g_290.f4", print_hash_value);
    transparent_crc(p_378->g_290.f5, "p_378->g_290.f5", print_hash_value);
    transparent_crc(p_378->g_290.f6, "p_378->g_290.f6", print_hash_value);
    transparent_crc(p_378->g_290.f7, "p_378->g_290.f7", print_hash_value);
    transparent_crc(p_378->g_377, "p_378->g_377", print_hash_value);
    transparent_crc(p_378->v_collective, "p_378->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 14; i++)
            transparent_crc(p_378->l_special_values[i], "p_378->l_special_values[i]", print_hash_value);
    transparent_crc(p_378->l_comm_values[get_linear_local_id()], "p_378->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_378->g_comm_values[get_linear_group_id() * 15 + get_linear_local_id()], "p_378->g_comm_values[get_linear_group_id() * 15 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
