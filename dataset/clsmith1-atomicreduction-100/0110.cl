// ---atomic_reductions ---fake_divergence -g 90,52,2 -l 18,13,1
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


// Seed: 110

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint16_t g_4;
    int32_t g_7;
    volatile uint8_t g_15;
    uint8_t g_43;
    uint32_t g_60;
    int32_t g_68[2][1][4];
    uint16_t g_73;
    uint32_t g_87;
    int64_t g_107;
    int16_t g_111;
    int32_t g_113;
    uint8_t g_117;
    volatile uint32_t g_131;
    volatile uint32_t *g_130;
    volatile uint32_t **g_129;
    uint32_t g_135;
    volatile uint16_t g_150;
    volatile uint8_t g_157;
    int32_t g_164;
    uint8_t g_175;
    int16_t *g_190;
    int16_t **g_189;
    int16_t *** volatile g_188;
    uint8_t **g_194;
    uint8_t *** volatile g_193[5][6];
    uint8_t ***g_198;
    int32_t *g_199;
    uint64_t g_203[3][1];
    int32_t * volatile g_204;
    int8_t g_212[3];
    uint32_t g_234;
    uint64_t * volatile * volatile g_244;
    int32_t ** volatile g_333;
    uint32_t g_348[3][9];
    uint64_t g_349[6][2];
    uint32_t g_352;
    int64_t g_354[5];
    int32_t * volatile g_355;
    int32_t g_396;
    int32_t *g_400;
    int32_t ** volatile g_399[3][8][9];
    int32_t ** volatile g_401;
    int32_t ** volatile g_402[4][5];
    int32_t * volatile g_429;
    int32_t * volatile g_434;
    int32_t * volatile * volatile g_435;
    int8_t g_505;
    int8_t *g_542;
    int8_t **g_541;
    uint64_t g_584;
    uint32_t g_603[7][5];
    uint64_t *g_640;
    int32_t g_655;
    int64_t g_658;
    uint64_t *g_673;
    uint64_t **g_672;
    int32_t ** volatile g_695;
    volatile uint16_t *g_783;
    volatile uint16_t * volatile * volatile g_782;
    volatile uint16_t g_914;
    int32_t *g_987;
    int16_t g_1021;
    int32_t * volatile * volatile g_1174;
    int32_t * volatile * volatile g_1178;
    uint32_t *g_1271;
    uint32_t **g_1270;
    volatile int32_t g_1273;
    volatile int8_t g_1291[10][4][6];
    volatile int8_t *g_1290;
    volatile int8_t * volatile *g_1289[2][5][7];
    volatile int8_t * volatile ** volatile g_1288[5][6];
    volatile int8_t * volatile ** volatile *g_1287;
    int16_t g_1303;
    uint32_t ***g_1332;
    int64_t *g_1344;
    int64_t * volatile *g_1343[10][9];
    int32_t *** volatile g_1445;
    int32_t **g_1447[8];
    int32_t *** volatile g_1446;
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
int64_t  func_1(struct S0 * p_1449);
int32_t  func_2(int64_t  p_3, struct S0 * p_1449);
uint64_t  func_21(int32_t ** p_22, int32_t  p_23, struct S0 * p_1449);
int32_t ** func_24(int32_t * p_25, int32_t ** p_26, int32_t * p_27, int32_t ** p_28, int32_t ** p_29, struct S0 * p_1449);
int32_t * func_30(uint64_t  p_31, int32_t ** p_32, struct S0 * p_1449);
uint16_t  func_41(uint32_t  p_42, struct S0 * p_1449);
int8_t  func_44(uint8_t  p_45, int32_t  p_46, uint32_t  p_47, uint32_t  p_48, struct S0 * p_1449);
uint16_t * func_50(uint16_t  p_51, uint16_t  p_52, uint16_t  p_53, struct S0 * p_1449);
int32_t * func_63(int32_t  p_64, uint32_t * p_65, int32_t * p_66, struct S0 * p_1449);
uint64_t  func_78(int32_t * p_79, int32_t  p_80, uint32_t * p_81, struct S0 * p_1449);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1449->g_4 p_1449->g_15 p_1449->g_7 p_1449->g_43 p_1449->g_164 p_1449->g_603 p_1449->g_354 p_1449->g_68 p_1449->g_541 p_1449->g_542 p_1449->g_212 p_1449->g_199 p_1449->g_113 p_1449->g_400 p_1449->g_435 p_1449->g_434 p_1449->g_396 p_1449->g_87 p_1449->g_107 p_1449->g_60 p_1449->g_73 p_1449->g_111 p_1449->g_150 p_1449->g_175 p_1449->g_135 p_1449->g_188 p_1449->g_204 p_1449->g_190 p_1449->g_244 p_1449->g_130 p_1449->g_131 p_1449->g_234 p_1449->g_203 p_1449->g_189 p_1449->g_333 p_1449->g_348 p_1449->g_117 p_1449->g_355 p_1449->g_672 p_1449->g_655 p_1449->g_640 p_1449->g_695 p_1449->g_584 p_1449->g_505 p_1449->g_782 p_1449->g_783 p_1449->g_658 p_1449->g_673 p_1449->g_129 p_1449->g_914 p_1449->g_349 p_1449->g_987 p_1449->g_1344 p_1449->g_1273 p_1449->g_1174 p_1449->g_1290 p_1449->g_1291 p_1449->g_1021 p_1449->g_1303 p_1449->g_1446
 * writes: p_1449->g_15 p_1449->g_7 p_1449->g_4 p_1449->g_43 p_1449->g_60 p_1449->g_164 p_1449->g_68 p_1449->g_212 p_1449->g_113 p_1449->g_396 p_1449->g_87 p_1449->g_107 p_1449->g_111 p_1449->g_135 p_1449->g_73 p_1449->g_175 p_1449->g_189 p_1449->g_198 p_1449->g_199 p_1449->g_203 p_1449->g_117 p_1449->g_234 p_1449->g_244 p_1449->g_349 p_1449->g_352 p_1449->g_354 p_1449->g_348 p_1449->g_584 p_1449->g_400 p_1449->g_505 p_1449->g_655 p_1449->g_541 p_1449->g_190 p_1449->g_658 p_1449->g_987 p_1449->g_1447
 */
int64_t  func_1(struct S0 * p_1449)
{ /* block id: 4 */
    int32_t *l_18[7][8][4] = {{{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0}},{{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0}},{{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0}},{{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0}},{{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0}},{{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0}},{{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0},{&p_1449->g_7,(void*)0,(void*)0,(void*)0}}};
    uint16_t *l_37 = (void*)0;
    uint16_t *l_38 = &p_1449->g_4;
    int16_t l_49 = 0x4AC1L;
    int32_t l_54 = 0L;
    uint32_t *l_57 = (void*)0;
    uint32_t *l_58 = (void*)0;
    uint32_t *l_59 = &p_1449->g_60;
    uint16_t **l_602 = &l_37;
    uint16_t *l_880 = &p_1449->g_73;
    uint16_t l_881[9];
    int32_t **l_988 = &p_1449->g_987;
    int32_t **l_989 = &p_1449->g_987;
    int64_t l_1441 = 0x7427FB0E2A998A89L;
    int32_t **l_1444 = &l_18[4][0][0];
    int32_t *l_1448[10];
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_881[i] = 1UL;
    for (i = 0; i < 10; i++)
        l_1448[i] = &p_1449->g_396;
    p_1449->g_7 ^= func_2(p_1449->g_4, p_1449);
    p_1449->g_7 |= p_1449->g_15;
    (*p_1449->g_1446) = (((safe_rshift_func_int16_t_s_u((1UL >= func_21(func_24(func_30((((safe_add_func_uint32_t_u_u(0x936BB358L, (safe_mod_func_int8_t_s_s((((*l_38)--) < ((*l_880) = (+func_41(((p_1449->g_43 ^= p_1449->g_7) == (func_44(l_49, func_2((((*l_602) = func_50(l_54, (safe_mul_func_uint8_t_u_u(1UL, 0x96L)), (((*l_59) = p_1449->g_7) , (safe_add_func_uint64_t_u_u((&l_54 == &p_1449->g_7), GROUP_DIVERGE(2, 1)))), p_1449)) == (void*)0), p_1449), p_1449->g_164, p_1449->g_603[3][0], p_1449) , 1UL)), p_1449)))), l_881[0])))) >= 0x80A2L) , (*p_1449->g_640)), &l_18[4][0][0], p_1449), &p_1449->g_987, &l_54, l_988, l_989, p_1449), l_1441, p_1449)), p_1449->g_1303)) && 5UL) , l_1444);
    (*l_989) = l_1448[6];
    return (**l_989);
}


/* ------------------------------------------ */
/* 
 * reads : p_1449->g_15
 * writes: p_1449->g_15
 */
int32_t  func_2(int64_t  p_3, struct S0 * p_1449)
{ /* block id: 5 */
    int16_t l_5 = 1L;
    int32_t *l_6 = &p_1449->g_7;
    int32_t *l_8 = &p_1449->g_7;
    int32_t *l_9 = &p_1449->g_7;
    int32_t l_10 = 0x1B88146CL;
    int32_t l_11 = 0L;
    int32_t l_12 = 3L;
    int32_t *l_13[10][7][3] = {{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}},{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}},{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}},{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}},{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}},{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}},{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}},{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}},{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}},{{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7},{&p_1449->g_7,&l_11,&p_1449->g_7}}};
    int8_t l_14 = (-5L);
    int i, j, k;
    --p_1449->g_15;
    return p_1449->g_15;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1449->g_987 p_1449->g_199
 */
uint64_t  func_21(int32_t ** p_22, int32_t  p_23, struct S0 * p_1449)
{ /* block id: 739 */
    uint32_t *l_1442 = &p_1449->g_135;
    int32_t *l_1443 = &p_1449->g_7;
    (*p_22) = l_1442;
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1449->g_396 p_1449->g_1344 p_1449->g_658 p_1449->g_542 p_1449->g_212 p_1449->g_673 p_1449->g_782 p_1449->g_783 p_1449->g_150 p_1449->g_987 p_1449->g_7 p_1449->g_1273 p_1449->g_135 p_1449->g_175 p_1449->g_400 p_1449->g_435 p_1449->g_434 p_1449->g_354 p_1449->g_1174 p_1449->g_1290 p_1449->g_1291 p_1449->g_672 p_1449->g_349 p_1449->g_541 p_1449->g_1021
 * writes: p_1449->g_212 p_1449->g_349 p_1449->g_190 p_1449->g_7 p_1449->g_658 p_1449->g_135 p_1449->g_4 p_1449->g_73 p_1449->g_396 p_1449->g_987
 */
int32_t ** func_24(int32_t * p_25, int32_t ** p_26, int32_t * p_27, int32_t ** p_28, int32_t ** p_29, struct S0 * p_1449)
{ /* block id: 542 */
    int64_t l_990 = 0x21809485B9FF09C6L;
    int8_t l_1018 = (-1L);
    int32_t l_1023 = (-1L);
    int32_t *l_1024 = &p_1449->g_396;
    int32_t l_1118 = 0L;
    int32_t l_1122 = 0x607E8FC7L;
    int32_t l_1125 = 0x4D50D529L;
    int32_t l_1128 = (-1L);
    int16_t l_1168 = 0x77C5L;
    int32_t l_1229 = (-5L);
    uint32_t **l_1272 = &p_1449->g_1271;
    uint16_t *l_1314 = &p_1449->g_4;
    uint16_t **l_1313 = &l_1314;
    int16_t l_1356 = 0x2692L;
    int16_t ***l_1357 = (void*)0;
    int8_t ***l_1363[6] = {&p_1449->g_541,&p_1449->g_541,&p_1449->g_541,&p_1449->g_541,&p_1449->g_541,&p_1449->g_541};
    uint8_t ***l_1414 = &p_1449->g_194;
    int i;
    if ((GROUP_DIVERGE(1, 1) > l_990))
    { /* block id: 543 */
        uint8_t l_992 = 0xF5L;
        int8_t *l_1003 = &p_1449->g_212[2];
        int32_t l_1019 = (-9L);
        uint64_t *l_1041[1][5];
        uint32_t *l_1052 = &p_1449->g_87;
        uint16_t *l_1055 = &p_1449->g_73;
        uint8_t l_1112 = 0x4CL;
        int32_t l_1120 = 7L;
        int32_t l_1121 = 0x3A6F420BL;
        int32_t l_1124 = 0x17F333C9L;
        int32_t l_1127[8][1][10] = {{{0x713F7F31L,0x4243AF60L,0x63D3E4BBL,(-1L),0L,0x713F7F31L,(-1L),0x56BC69C2L,(-1L),0x713F7F31L}},{{0x713F7F31L,0x4243AF60L,0x63D3E4BBL,(-1L),0L,0x713F7F31L,(-1L),0x56BC69C2L,(-1L),0x713F7F31L}},{{0x713F7F31L,0x4243AF60L,0x63D3E4BBL,(-1L),0L,0x713F7F31L,(-1L),0x56BC69C2L,(-1L),0x713F7F31L}},{{0x713F7F31L,0x4243AF60L,0x63D3E4BBL,(-1L),0L,0x713F7F31L,(-1L),0x56BC69C2L,(-1L),0x713F7F31L}},{{0x713F7F31L,0x4243AF60L,0x63D3E4BBL,(-1L),0L,0x713F7F31L,(-1L),0x56BC69C2L,(-1L),0x713F7F31L}},{{0x713F7F31L,0x4243AF60L,0x63D3E4BBL,(-1L),0L,0x713F7F31L,(-1L),0x56BC69C2L,(-1L),0x713F7F31L}},{{0x713F7F31L,0x4243AF60L,0x63D3E4BBL,(-1L),0L,0x713F7F31L,(-1L),0x56BC69C2L,(-1L),0x713F7F31L}},{{0x713F7F31L,0x4243AF60L,0x63D3E4BBL,(-1L),0L,0x713F7F31L,(-1L),0x56BC69C2L,(-1L),0x713F7F31L}}};
        uint32_t l_1129 = 4294967295UL;
        uint32_t ***l_1201 = (void*)0;
        int64_t l_1226 = 0x4A1E5AC342E85793L;
        uint64_t ***l_1302 = &p_1449->g_672;
        int8_t ***l_1362[7];
        uint32_t l_1364 = 0xE161503FL;
        uint8_t *l_1365 = &p_1449->g_175;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
                l_1041[i][j] = &p_1449->g_584;
        }
        for (i = 0; i < 7; i++)
            l_1362[i] = &p_1449->g_541;
        (1 + 1);
    }
    else
    { /* block id: 701 */
        uint8_t l_1370 = 246UL;
        int16_t **l_1385 = &p_1449->g_190;
        int8_t l_1386 = 0x6DL;
        int32_t l_1420 = 0x415735B3L;
        (*p_27) &= ((**p_26) ^= (safe_rshift_func_uint8_t_u_s(((safe_mod_func_uint64_t_u_u(18446744073709551612UL, l_1370)) != (safe_mul_func_int8_t_s_s((((~((safe_div_func_uint32_t_u_u(((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (*l_1024))) != 18446744073709551610UL), 0x07E6C5E9L)) & (((*l_1385) = ((*p_1449->g_1344) , func_50(((((((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint8_t_u_u(((((*p_1449->g_673) = ((safe_mod_func_int8_t_s_s(((*p_1449->g_542) &= l_1370), l_1370)) >= 0L)) , l_1370) , 255UL), (*l_1024))), 5)) > l_1370) , 0xD71EF331ECFB48BDL) , (void*)0) != (void*)0) , 65528UL), l_1370, l_1370, p_1449))) == (void*)0))) <= (**p_1449->g_782)) && l_1370), l_1370))), l_1386)));
        if ((((safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_s((*l_1024), 2)), (+l_1386))) && (((*p_25) = (safe_mod_func_uint64_t_u_u(l_1370, ((*p_1449->g_1344) &= (l_1370 != (((safe_add_func_uint8_t_u_u(255UL, (0x58374022L & 0x4B9DA60FL))) , l_1024) != (void*)0)))))) , (*l_1024))) <= p_1449->g_1273))
        { /* block id: 709 */
            int64_t l_1399[7][4][4] = {{{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL}},{{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL}},{{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL}},{{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL}},{{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL}},{{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL}},{{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL},{0x6BBCA134B3EA1EBAL,0x0D50DFA28FB8350CL,0x0D50DFA28FB8350CL,0x6BBCA134B3EA1EBAL}}};
            int32_t l_1426 = 0x2243B4A8L;
            uint8_t l_1429 = 255UL;
            int32_t *l_1431 = &l_1128;
            int32_t l_1440 = 1L;
            int i, j, k;
            for (p_1449->g_135 = 2; (p_1449->g_135 >= 43); p_1449->g_135 = safe_add_func_uint8_t_u_u(p_1449->g_135, 5))
            { /* block id: 712 */
                return &p_1449->g_987;
            }
            for (p_1449->g_658 = 0; (p_1449->g_658 <= (-17)); --p_1449->g_658)
            { /* block id: 717 */
                int32_t * volatile l_1402 = &l_1125;/* VOLATILE GLOBAL l_1402 */
                uint8_t ***l_1427 = &p_1449->g_194;
                int8_t l_1428[2][5][2] = {{{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L}},{{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L}}};
                int i, j, k;
                (**p_28) = (p_1449->g_175 , (*p_1449->g_400));
                (**p_29) |= l_1399[0][2][1];
                for (l_1128 = 0; (l_1128 == (-5)); l_1128 = safe_sub_func_uint32_t_u_u(l_1128, 8))
                { /* block id: 722 */
                    uint32_t *l_1419[9];
                    int32_t l_1425 = (-1L);
                    uint16_t *l_1430 = &p_1449->g_73;
                    int32_t *l_1432[2];
                    int8_t **l_1437 = (void*)0;
                    int i;
                    for (i = 0; i < 9; i++)
                        l_1419[i] = &p_1449->g_348[2][4];
                    for (i = 0; i < 2; i++)
                        l_1432[i] = &l_1122;
                    l_1402 = (*p_1449->g_435);
                    (*p_1449->g_400) = ((safe_unary_minus_func_uint16_t_u(((*l_1430) = ((**l_1313) = ((safe_sub_func_uint64_t_u_u(((safe_add_func_uint16_t_u_u((((((safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_s(((((*l_1402) < 0x408DECF807BFF61FL) , ((!(safe_div_func_int16_t_s_s((l_1414 == (((((safe_add_func_int64_t_s_s(0L, l_1399[0][2][1])) || (safe_add_func_int64_t_s_s((p_1449->g_354[3] < (l_1420 ^= GROUP_DIVERGE(1, 1))), (l_1426 = (((**p_1449->g_1174) && ((safe_sub_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(l_1425, l_1399[0][2][1])), 0xBF94L)) , (*p_25))) > 0x5C380C93L))))) <= l_1399[0][2][1]) && (*p_1449->g_1290)) , l_1427)), l_1428[0][0][0]))) != l_1428[1][4][1])) ^ 8L), 3)), l_1428[0][1][1])) != l_1386) < l_1425) ^ (**p_1449->g_672)) | (*l_1024)), (*l_1024))) , l_1429), 0x19394F3E364AC13CL)) >= (**p_1449->g_541)))))) , 0L);
                    (*p_26) = l_1431;
                    l_1440 = (((0L <= 0UL) | (((void*)0 != l_1432[0]) >= (4L < ((((safe_lshift_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) || (((*l_1431) , ((void*)0 != l_1437)) ^ (safe_mod_func_int16_t_s_s(((+((*l_1431) | (*p_1449->g_783))) != (-1L)), l_1428[1][1][0])))), p_1449->g_1021)), (*l_1024))) , 4294967295UL) , (*l_1024)) == (*l_1024))))) & 0x7D9C45EEB2E63742L);
                }
            }
            (*p_28) = &l_1122;
        }
        else
        { /* block id: 734 */
            return &p_1449->g_199;
        }
    }
    return &p_1449->g_199;
}


/* ------------------------------------------ */
/* 
 * reads : p_1449->g_658 p_1449->g_603 p_1449->g_348 p_1449->g_355 p_1449->g_113 p_1449->g_400 p_1449->g_672 p_1449->g_673 p_1449->g_129 p_1449->g_130 p_1449->g_190 p_1449->g_914 p_1449->g_60 p_1449->g_199 p_1449->g_396 p_1449->g_135 p_1449->g_655 p_1449->g_4 p_1449->g_584 p_1449->g_349 p_1449->g_203 p_1449->g_354 p_1449->g_111 p_1449->g_542 p_1449->g_212 p_1449->g_541 p_1449->g_783 p_1449->g_150 p_1449->g_987
 * writes: p_1449->g_348 p_1449->g_396 p_1449->g_349 p_1449->g_111 p_1449->g_203 p_1449->g_655 p_1449->g_4 p_1449->g_584 p_1449->g_164 p_1449->g_354 p_1449->g_7 p_1449->g_541 p_1449->g_73 p_1449->g_113 p_1449->g_135 p_1449->g_212 p_1449->g_505
 */
int32_t * func_30(uint64_t  p_31, int32_t ** p_32, struct S0 * p_1449)
{ /* block id: 484 */
    int16_t l_882[1][5][4] = {{{1L,(-1L),0x39EEL,(-1L)},{1L,(-1L),0x39EEL,(-1L)},{1L,(-1L),0x39EEL,(-1L)},{1L,(-1L),0x39EEL,(-1L)},{1L,(-1L),0x39EEL,(-1L)}}};
    int32_t l_884 = 0L;
    int32_t l_885 = (-6L);
    uint16_t *l_890[7];
    uint8_t *l_896 = &p_1449->g_43;
    int8_t l_917[4][2][2] = {{{0x70L,0x41L},{0x70L,0x41L}},{{0x70L,0x41L},{0x70L,0x41L}},{{0x70L,0x41L},{0x70L,0x41L}},{{0x70L,0x41L},{0x70L,0x41L}}};
    int32_t l_918 = 1L;
    int32_t l_919[1];
    int8_t *l_986 = &p_1449->g_505;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_890[i] = &p_1449->g_4;
    for (i = 0; i < 1; i++)
        l_919[i] = 0L;
    if (l_882[0][0][3])
    { /* block id: 485 */
        uint32_t *l_883[10][1][5] = {{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}},{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}},{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}},{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}},{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}},{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}},{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}},{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}},{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}},{{&p_1449->g_348[2][4],&p_1449->g_87,&p_1449->g_87,&p_1449->g_87,&p_1449->g_87}}};
        uint8_t *l_895 = &p_1449->g_43;
        int32_t l_897 = 0x2122399BL;
        uint64_t *l_915 = &p_1449->g_203[2][0];
        int32_t *l_916[6][2][8] = {{{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7},{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7}},{{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7},{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7}},{{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7},{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7}},{{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7},{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7}},{{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7},{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7}},{{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7},{&p_1449->g_7,&p_1449->g_7,&p_1449->g_113,(void*)0,(void*)0,&p_1449->g_113,&p_1449->g_7,&p_1449->g_7}}};
        uint32_t l_920 = 1UL;
        int i, j, k;
        (*p_1449->g_400) = (p_1449->g_658 || ((l_885 = ((p_1449->g_348[2][1] ^= p_1449->g_603[0][0]) || (l_884 = (*p_1449->g_355)))) , ((((safe_add_func_uint8_t_u_u((p_31 ^ (1UL >= (((0xC996095F42510C72L == (safe_mod_func_uint8_t_u_u((l_890[3] != (void*)0), (safe_lshift_func_int16_t_s_s((((FAKE_DIVERGE(p_1449->group_1_offset, get_group_id(1), 10) < GROUP_DIVERGE(0, 1)) < ((safe_mul_func_int16_t_s_s((((l_895 == l_896) <= p_31) && 0x55L), 0x6CD0L)) >= 0L)) , 0x3048L), l_897))))) , l_882[0][1][3]) && l_897))), p_31)) , 1UL) >= GROUP_DIVERGE(0, 1)) >= l_885)));
        p_1449->g_655 |= ((safe_mod_func_uint64_t_u_u(((*l_915) = ((safe_add_func_uint32_t_u_u(((safe_sub_func_uint64_t_u_u((l_885 , ((**p_1449->g_672) = ((void*)0 == &p_1449->g_190))), (safe_div_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((((((!((((safe_mul_func_uint16_t_u_u(p_31, ((*p_1449->g_190) = ((safe_rshift_func_int16_t_s_u(((safe_rshift_func_uint16_t_u_u(((*p_1449->g_129) == l_883[6][0][1]), 6)) > 0x7FL), l_884)) , l_885)))) || l_897) == 2UL) <= p_1449->g_914)) , p_1449->g_60) < l_885) , p_31) <= 18446744073709551611UL), FAKE_DIVERGE(p_1449->global_1_offset, get_global_id(1), 10))), p_31)))) < p_31), (*p_1449->g_199))) || 0x9B32L)), l_897)) | 4294967286UL);
        ++l_920;
    }
    else
    { /* block id: 495 */
        uint16_t l_931 = 0x6806L;
        for (p_1449->g_4 = 0; (p_1449->g_4 <= 0); p_1449->g_4 += 1)
        { /* block id: 498 */
            int i;
            if (l_919[p_1449->g_4])
                break;
            for (p_1449->g_584 = 0; (p_1449->g_584 <= 0); p_1449->g_584 += 1)
            { /* block id: 502 */
                uint64_t ***l_941 = &p_1449->g_672;
                int32_t l_961[1];
                int16_t **l_964 = (void*)0;
                int i;
                for (i = 0; i < 1; i++)
                    l_961[i] = 1L;
                for (p_1449->g_164 = 0; (p_1449->g_164 <= 0); p_1449->g_164 += 1)
                { /* block id: 505 */
                    int32_t *l_923 = &p_1449->g_396;
                    int32_t *l_924 = &l_885;
                    int32_t *l_925 = &l_919[p_1449->g_584];
                    int32_t *l_926 = (void*)0;
                    int32_t *l_927 = &p_1449->g_7;
                    int32_t *l_928 = (void*)0;
                    int32_t *l_929 = &p_1449->g_655;
                    int32_t *l_930[1][4][2];
                    int16_t **l_962 = &p_1449->g_190;
                    int8_t **l_966 = &p_1449->g_542;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 4; j++)
                        {
                            for (k = 0; k < 2; k++)
                                l_930[i][j][k] = &p_1449->g_7;
                        }
                    }
                    l_931--;
                    if (l_917[(p_1449->g_584 + 1)][(p_1449->g_584 + 1)][(p_1449->g_4 + 1)])
                        break;
                    for (l_884 = 0; (l_884 <= 1); l_884 += 1)
                    { /* block id: 510 */
                        uint64_t ****l_938 = (void*)0;
                        uint64_t ***l_940 = (void*)0;
                        uint64_t ****l_939 = &l_940;
                        int32_t l_942 = 0x3EA823BCL;
                        int16_t ***l_963 = &p_1449->g_189;
                        int8_t **l_965 = &p_1449->g_542;
                        int8_t ***l_967 = &p_1449->g_541;
                        (*l_929) &= ((((0xD0L <= ((((safe_mul_func_int16_t_s_s(((*p_1449->g_673) || (((p_1449->g_354[3] = (p_31 <= ((((*l_939) = (void*)0) != l_941) , (FAKE_DIVERGE(p_1449->global_1_offset, get_global_id(1), 10) || ((*l_923) = 0x074AE674L))))) , ((FAKE_DIVERGE(p_1449->group_0_offset, get_group_id(0), 10) < l_942) && (safe_sub_func_uint32_t_u_u(p_1449->g_203[0][0], ((*l_927) = (safe_div_func_uint32_t_u_u(p_1449->g_354[2], 0x9069C8E7L))))))) <= 1L)), 8L)) > p_1449->g_603[3][0]) && (*p_1449->g_190)) , l_942)) ^ 0x4AL) && p_31) , (*p_1449->g_355));
                        (*l_929) &= ((*p_1449->g_673) <= (safe_mul_func_int8_t_s_s(0x06L, 0x2DL)));
                        (*l_929) ^= (safe_div_func_int8_t_s_s(((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (((**p_1449->g_672) &= (((p_31 |= (8UL && (((safe_mod_func_int64_t_s_s((!((((*p_1449->g_400) >= (l_961[0] < ((l_962 = l_962) == l_964))) , l_965) == ((*l_967) = l_966))), l_919[0])) ^ (&p_1449->g_87 == l_930[0][0][0])) | FAKE_DIVERGE(p_1449->local_0_offset, get_local_id(0), 10)))) , 0x0BL) >= 0L)) || 0UL))) || l_931), (*p_1449->g_542)));
                        (*p_32) = (*p_32);
                    }
                }
                for (p_1449->g_73 = 0; (p_1449->g_73 <= 1); p_1449->g_73 += 1)
                { /* block id: 527 */
                    int16_t l_970[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_970[i] = 0x55F1L;
                    (*p_1449->g_199) = (safe_add_func_uint16_t_u_u((0x790C2D2DL < l_961[0]), (l_970[1] || (l_884 &= p_31))));
                    (*p_32) = &l_919[p_1449->g_4];
                }
            }
        }
        (*p_32) = &l_919[0];
    }
    atomic_and(&p_1449->g_atomic_reduction[get_linear_group_id()], (safe_unary_minus_func_int8_t_s(((safe_sub_func_int8_t_s_s((l_919[0] = ((*l_986) = (safe_div_func_uint32_t_u_u(0UL, (((*p_1449->g_190) = ((safe_lshift_func_int16_t_s_s((safe_sub_func_int64_t_s_s((p_31 | ((**p_1449->g_541) = (!(0x72023C3C824EA40AL & (l_918 , (safe_mul_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) > (GROUP_DIVERGE(1, 1) <= l_884)), p_31))))))), (safe_mul_func_int16_t_s_s((((0x3C67B0DB51E4848EL < (((p_31 , (l_896 != l_896)) || 0L) | l_885)) >= 0x6708069037FB72D3L) > p_31), p_31)))), 9)) && p_31)) | (*p_1449->g_783)))))), p_31)) ^ 0xC8L))));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1449->v_collective += p_1449->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return p_1449->g_987;
}


/* ------------------------------------------ */
/* 
 * reads : p_1449->g_60 p_1449->g_212 p_1449->g_87 p_1449->g_400 p_1449->g_541 p_1449->g_542 p_1449->g_655 p_1449->g_505 p_1449->g_782 p_1449->g_783 p_1449->g_150
 * writes: p_1449->g_87 p_1449->g_396 p_1449->g_655 p_1449->g_505
 */
uint16_t  func_41(uint32_t  p_42, struct S0 * p_1449)
{ /* block id: 470 */
    int64_t *l_866[4] = {&p_1449->g_354[3],&p_1449->g_354[3],&p_1449->g_354[3],&p_1449->g_354[3]};
    int32_t l_867 = 0x2790B62BL;
    int32_t l_868 = (-1L);
    int32_t l_873 = 0x1E7C8A1FL;
    uint32_t *l_874 = (void*)0;
    int32_t *l_877 = &p_1449->g_655;
    int i;
    (*l_877) |= ((safe_add_func_uint64_t_u_u(18446744073709551614UL, (p_42 > (FAKE_DIVERGE(p_1449->group_1_offset, get_group_id(1), 10) >= (safe_div_func_uint32_t_u_u((l_868 = ((safe_sub_func_int64_t_s_s((l_867 = p_1449->g_60), p_42)) , (p_1449->g_212[0] , 0UL))), ((((safe_div_func_uint16_t_u_u(p_42, ((safe_rshift_func_uint16_t_u_u(p_42, ((p_1449->g_87--) & ((*p_1449->g_400) = p_42)))) ^ (**p_1449->g_541)))) , 0x5AL) != FAKE_DIVERGE(p_1449->group_1_offset, get_group_id(1), 10)) , p_42))))))) > l_873);
    for (p_1449->g_505 = 0; (p_1449->g_505 < (-26)); p_1449->g_505 = safe_sub_func_uint8_t_u_u(p_1449->g_505, 9))
    { /* block id: 478 */
        if ((*l_877))
            break;
        return p_42;
    }
    return (**p_1449->g_782);
}


/* ------------------------------------------ */
/* 
 * reads : p_1449->g_164 p_1449->g_354 p_1449->g_68 p_1449->g_541 p_1449->g_542 p_1449->g_212 p_1449->g_199 p_1449->g_113 p_1449->g_400 p_1449->g_435 p_1449->g_434 p_1449->g_396 p_1449->g_7 p_1449->g_87 p_1449->g_107 p_1449->g_60 p_1449->g_73 p_1449->g_111 p_1449->g_150 p_1449->g_15 p_1449->g_175 p_1449->g_135 p_1449->g_188 p_1449->g_204 p_1449->g_190 p_1449->g_244 p_1449->g_130 p_1449->g_131 p_1449->g_234 p_1449->g_203 p_1449->g_189 p_1449->g_333 p_1449->g_348 p_1449->g_117 p_1449->g_355 p_1449->g_672 p_1449->g_655 p_1449->g_640 p_1449->g_695 p_1449->g_584 p_1449->g_603
 * writes: p_1449->g_164 p_1449->g_68 p_1449->g_212 p_1449->g_113 p_1449->g_396 p_1449->g_60 p_1449->g_87 p_1449->g_107 p_1449->g_111 p_1449->g_135 p_1449->g_73 p_1449->g_175 p_1449->g_189 p_1449->g_198 p_1449->g_199 p_1449->g_203 p_1449->g_117 p_1449->g_234 p_1449->g_244 p_1449->g_349 p_1449->g_352 p_1449->g_354 p_1449->g_348 p_1449->g_584 p_1449->g_400 p_1449->g_505
 */
int8_t  func_44(uint8_t  p_45, int32_t  p_46, uint32_t  p_47, uint32_t  p_48, struct S0 * p_1449)
{ /* block id: 312 */
    int16_t l_608 = (-8L);
    uint32_t *l_612 = (void*)0;
    uint32_t **l_611 = &l_612;
    uint32_t ***l_610 = &l_611;
    int32_t l_635 = 0L;
    int16_t ***l_636[7][10] = {{(void*)0,&p_1449->g_189,&p_1449->g_189,(void*)0,&p_1449->g_189,(void*)0,(void*)0,&p_1449->g_189,(void*)0,(void*)0},{(void*)0,&p_1449->g_189,&p_1449->g_189,(void*)0,&p_1449->g_189,(void*)0,(void*)0,&p_1449->g_189,(void*)0,(void*)0},{(void*)0,&p_1449->g_189,&p_1449->g_189,(void*)0,&p_1449->g_189,(void*)0,(void*)0,&p_1449->g_189,(void*)0,(void*)0},{(void*)0,&p_1449->g_189,&p_1449->g_189,(void*)0,&p_1449->g_189,(void*)0,(void*)0,&p_1449->g_189,(void*)0,(void*)0},{(void*)0,&p_1449->g_189,&p_1449->g_189,(void*)0,&p_1449->g_189,(void*)0,(void*)0,&p_1449->g_189,(void*)0,(void*)0},{(void*)0,&p_1449->g_189,&p_1449->g_189,(void*)0,&p_1449->g_189,(void*)0,(void*)0,&p_1449->g_189,(void*)0,(void*)0},{(void*)0,&p_1449->g_189,&p_1449->g_189,(void*)0,&p_1449->g_189,(void*)0,(void*)0,&p_1449->g_189,(void*)0,(void*)0}};
    int16_t ***l_637 = &p_1449->g_189;
    uint32_t l_648 = 4294967295UL;
    int8_t **l_653 = &p_1449->g_542;
    int32_t l_656[7] = {1L,0x10DC396FL,1L,1L,0x10DC396FL,1L,1L};
    uint64_t **l_675 = &p_1449->g_673;
    uint64_t l_676 = 0xC677E780621DB0C3L;
    int32_t l_690 = 1L;
    uint8_t l_692[4] = {0xDEL,0xDEL,0xDEL,0xDEL};
    uint64_t l_761 = 18446744073709551606UL;
    int32_t l_836 = 0x2A389971L;
    int i, j;
    for (p_1449->g_164 = 4; (p_1449->g_164 >= 0); p_1449->g_164 -= 1)
    { /* block id: 315 */
        int32_t *l_629 = &p_1449->g_68[1][0][1];
        uint16_t l_630 = 0x8135L;
        int i;
        l_608 = (safe_add_func_uint64_t_u_u(0xEA73BC96BB317847L, ((safe_rshift_func_uint8_t_u_u(0x3BL, 7)) == 65530UL)));
        (*p_1449->g_400) = ((safe_unary_minus_func_int32_t_s(((*p_1449->g_199) ^= ((l_610 != (void*)0) < (safe_add_func_int8_t_s_s((safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(p_1449->g_354[p_1449->g_164], (safe_div_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(((((0x4DL || p_1449->g_354[p_1449->g_164]) , (safe_sub_func_int8_t_s_s(((**p_1449->g_541) |= ((((safe_mul_func_int16_t_s_s((safe_div_func_int64_t_s_s((p_1449->g_354[p_1449->g_164] , (-1L)), p_46)), (((*l_629) ^= p_1449->g_354[p_1449->g_164]) , p_1449->g_354[p_1449->g_164]))) >= p_48) & 1UL) || 1UL)), p_46))) , l_630) | l_630), 1UL)), 4294967295UL)))), p_1449->g_354[p_1449->g_164])), p_46)))))) , p_46);
        return p_47;
    }
    (*p_1449->g_199) ^= (**p_1449->g_435);
    if ((safe_rshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u((l_635 = 0x6C6DL), (l_636[1][6] == (l_637 = l_636[4][0])))), 2)))
    { /* block id: 326 */
        uint32_t *l_638 = &p_1449->g_135;
        int32_t **l_639 = &p_1449->g_199;
        uint64_t *l_649 = &p_1449->g_349[0][0];
        uint64_t *l_650[7] = {&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0]};
        int64_t *l_654 = &p_1449->g_107;
        int64_t *l_657 = &p_1449->g_658;
        int32_t * volatile l_659 = (void*)0;/* VOLATILE GLOBAL l_659 */
        uint8_t ***l_666 = &p_1449->g_194;
        int32_t l_736[4][4][7] = {{{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L}},{{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L}},{{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L}},{{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L}}};
        int i, j, k;
        (*l_639) = func_63(l_635, l_638, &l_635, p_1449);
lbl_731:
        l_659 = (*p_1449->g_435);
        for (p_1449->g_164 = 0; (p_1449->g_164 <= 6); p_1449->g_164 += 1)
        { /* block id: 339 */
            uint32_t l_661 = 0UL;
            int32_t *l_729 = &l_635;
            int32_t l_735 = 0x4A7EEA0AL;
            int32_t l_737 = (-7L);
            int32_t l_738 = 0x520A7EC6L;
            int32_t l_739[3];
            int i;
            for (i = 0; i < 3; i++)
                l_739[i] = 0x2EE2B75CL;
            for (p_1449->g_111 = 0; (p_1449->g_111 <= 6); p_1449->g_111 += 1)
            { /* block id: 342 */
                int32_t *l_660 = &p_1449->g_396;
                (*l_639) = l_660;
            }
            for (p_1449->g_111 = 4; (p_1449->g_111 >= 2); p_1449->g_111 -= 1)
            { /* block id: 347 */
                l_661 = (**l_639);
            }
            for (p_1449->g_135 = 0; (p_1449->g_135 <= 6); p_1449->g_135 += 1)
            { /* block id: 352 */
                int8_t l_665 = 0x1BL;
                uint8_t *l_669 = &p_1449->g_175;
                uint64_t ***l_674[10][9] = {{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672},{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672},{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672},{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672},{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672},{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672},{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672},{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672},{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672},{&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672,&p_1449->g_672}};
                uint32_t l_689 = 5UL;
                int32_t l_693 = (-9L);
                int32_t *l_694 = &p_1449->g_396;
                uint32_t l_726 = 8UL;
                int i, j;
                (*l_659) = ((0x77D0EF83L <= ((((safe_lshift_func_int16_t_s_u(((*p_1449->g_190) = (((!(safe_unary_minus_func_uint32_t_u((l_665 ^ (((**p_1449->g_541) &= ((**l_639) && (l_666 == &p_1449->g_194))) , (safe_mod_func_int8_t_s_s(0L, ((*l_669) = l_661)))))))) > (((+(safe_mul_func_uint8_t_u_u((p_1449->g_348[2][4] > ((l_675 = p_1449->g_672) != (void*)0)), (*l_659)))) >= p_46) , (*l_659))) & p_46)), 11)) & (**l_639)) > l_676) , 0UL)) >= 1UL);
                (*l_639) = (*p_1449->g_333);
                if (l_635)
                { /* block id: 359 */
                    int32_t l_677 = 0x2A35AB89L;
                    int32_t *l_700[5] = {&p_1449->g_68[0][0][0],&p_1449->g_68[0][0][0],&p_1449->g_68[0][0][0],&p_1449->g_68[0][0][0],&p_1449->g_68[0][0][0]};
                    uint16_t *l_711 = &p_1449->g_73;
                    int8_t *l_724 = &l_665;
                    int8_t *l_725 = &p_1449->g_505;
                    int i;
                    for (p_1449->g_396 = 0; (p_1449->g_396 <= 6); p_1449->g_396 += 1)
                    { /* block id: 362 */
                        int64_t l_684 = 0x2300CC71BD2AA7C2L;
                        uint32_t *l_691[4] = {&p_1449->g_348[1][2],&p_1449->g_348[1][2],&p_1449->g_348[1][2],&p_1449->g_348[1][2]};
                        int i;
                        l_635 = p_45;
                        if (l_661)
                            break;
                        l_693 ^= ((!((!p_1449->g_655) && ((((l_677 = 0x514C5155L) > p_48) <= (safe_mod_func_uint32_t_u_u(((((*p_1449->g_640) = (safe_sub_func_uint8_t_u_u(p_45, ((safe_lshift_func_int8_t_s_u(l_684, ((((**p_1449->g_541) = ((((((p_1449->g_348[1][3] = ((0x3D73L < ((safe_mul_func_int8_t_s_s(((p_1449->g_87 = ((safe_add_func_uint8_t_u_u(l_676, l_689)) , (((l_690 |= (((*l_649) = l_635) >= FAKE_DIVERGE(p_1449->global_0_offset, get_global_id(0), 10))) > 0x3CD4E6855A4FAD8CL) | l_676))) ^ p_1449->g_396), 0x6AL)) || 0x9B1B0B05L)) ^ p_46)) , (void*)0) == (void*)0) , p_1449->g_117) , &p_1449->g_129) != (void*)0)) ^ p_46) , p_48))) || p_47)))) , p_47) & p_45), p_45))) >= l_692[0]))) , (*p_1449->g_400));
                        (*p_1449->g_695) = ((*l_639) = l_694);
                    }
                    if ((((safe_lshift_func_int16_t_s_s((((l_726 = ((((*l_725) = ((*l_724) &= ((((((*p_1449->g_190) = l_661) , (p_46 = (safe_mul_func_int16_t_s_s(p_45, p_1449->g_113)))) , ((safe_sub_func_int8_t_s_s(((safe_mod_func_uint16_t_u_u((safe_add_func_int8_t_s_s((((**p_1449->g_541) = (((safe_lshift_func_uint16_t_u_s(p_1449->g_68[0][0][2], 15)) || (safe_lshift_func_uint16_t_u_s((--(*l_711)), 3))) != (safe_div_func_uint8_t_u_u((safe_div_func_int32_t_s_s((-6L), 1UL)), (((*p_1449->g_640) , (l_690 |= (safe_div_func_int16_t_s_s((p_1449->g_348[2][4] | (safe_div_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u((((*p_1449->g_190) = 0x6D8CL) && l_692[0]), 0x78E59058F3E15F4BL)) != (*l_694)), GROUP_DIVERGE(1, 1)))), 2L)))) & l_656[0]))))) > (*l_694)), p_45)), p_47)) | 0x21C056375EC06F56L), p_46)) , p_47)) < (*l_694)) && p_1449->g_212[0]))) > 255UL) | (-7L))) > (*l_659)) , 0x6561L), 7)) != FAKE_DIVERGE(p_1449->global_1_offset, get_global_id(1), 10)) , (*p_1449->g_204)))
                    { /* block id: 385 */
                        int32_t *l_727 = &p_1449->g_113;
                        (*l_727) |= (**p_1449->g_435);
                    }
                    else
                    { /* block id: 387 */
                        int32_t l_728[2][9] = {{0x7FD16415L,(-10L),0x16E4F1FCL,(-10L),0x7FD16415L,0x7FD16415L,(-10L),0x16E4F1FCL,(-10L)},{0x7FD16415L,(-10L),0x16E4F1FCL,(-10L),0x7FD16415L,0x7FD16415L,(-10L),0x16E4F1FCL,(-10L)}};
                        int i, j;
                        return l_728[1][4];
                    }
                    if (l_677)
                    { /* block id: 390 */
                        l_729 = &l_677;
                    }
                    else
                    { /* block id: 392 */
                        uint64_t l_730 = 0x9ACF7EA55D0D9FF1L;
                        l_730 = l_635;
                        if ((**l_639))
                            continue;
                        if (l_693)
                            goto lbl_731;
                    }
                    (*l_694) = (safe_lshift_func_uint8_t_u_s((&l_659 != &l_659), 1));
                }
                else
                { /* block id: 398 */
                    int32_t *l_734[7][3][4] = {{{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7}},{{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7}},{{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7}},{{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7}},{{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7}},{{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7}},{{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7},{&p_1449->g_7,&l_690,&l_690,&p_1449->g_7}}};
                    int i, j, k;
                    (*l_694) = (p_45 , p_46);
                    (*p_1449->g_400) &= (*p_1449->g_204);
                    l_734[6][1][0] = &l_693;
                    for (l_693 = 0; (l_693 <= 6); l_693 += 1)
                    { /* block id: 404 */
                        uint16_t l_740 = 65529UL;
                        ++l_740;
                        (*p_1449->g_400) |= (!(((*l_611) == (void*)0) <= (+((0x6639630B3F9D9D12L <= (&l_611 != (void*)0)) <= (((p_45 = p_47) || (!(safe_div_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u(p_47, 9)), 7)) && ((&p_1449->g_68[1][0][2] == &p_1449->g_164) & l_740)), p_45)))) , GROUP_DIVERGE(2, 1))))));
                        if ((**p_1449->g_435))
                            continue;
                    }
                }
            }
        }
    }
    else
    { /* block id: 413 */
        int8_t l_757[4];
        uint32_t *l_758 = &p_1449->g_60;
        int i;
        for (i = 0; i < 4; i++)
            l_757[i] = 1L;
        (*p_1449->g_400) &= (safe_add_func_int8_t_s_s((safe_div_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(p_1449->g_117, ((*p_1449->g_190) = ((*p_1449->g_204) >= (l_757[2] , (l_758 == l_758)))))) , ((***p_1449->g_188) , (((p_48 ^ (safe_lshift_func_uint16_t_u_s(((++l_761) || (p_48 & (safe_rshift_func_int16_t_s_u((safe_sub_func_int32_t_s_s((safe_mul_func_int8_t_s_s(((**p_1449->g_541) = (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (2L ^ (**p_1449->g_541))))), p_46)), p_48)), 7)))), 2))) || (**p_1449->g_333)) == p_47))), 10)), p_1449->g_603[3][0])), 0x64L));
    }
    for (p_1449->g_135 = 0; (p_1449->g_135 >= 43); p_1449->g_135 = safe_add_func_uint8_t_u_u(p_1449->g_135, 3))
    { /* block id: 421 */
        uint32_t l_777 = 4294967295UL;
        uint16_t l_788 = 1UL;
        uint32_t *l_822[5];
        int32_t l_833 = 0x1332725AL;
        int32_t l_834 = 0L;
        uint8_t l_837[4][6] = {{9UL,255UL,0x91L,255UL,9UL,9UL},{9UL,255UL,0x91L,255UL,9UL,9UL},{9UL,255UL,0x91L,255UL,9UL,9UL},{9UL,255UL,0x91L,255UL,9UL,9UL}};
        uint32_t ***l_846 = &l_611;
        int32_t *l_857 = (void*)0;
        int i, j;
        for (i = 0; i < 5; i++)
            l_822[i] = &p_1449->g_603[1][1];
        for (p_1449->g_73 = 0; (p_1449->g_73 < 17); p_1449->g_73 = safe_add_func_uint8_t_u_u(p_1449->g_73, 2))
        { /* block id: 424 */
            uint64_t l_776 = 0x2462DB80A9850B5EL;
            uint16_t *l_785 = &p_1449->g_73;
            uint16_t **l_784[3][4];
            uint32_t *l_803 = &p_1449->g_603[0][2];
            int64_t *l_820[8][9][3] = {{{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]}},{{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]}},{{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]}},{{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]}},{{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]}},{{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]}},{{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]}},{{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]},{(void*)0,&p_1449->g_354[3],&p_1449->g_354[3]}}};
            int32_t l_821 = 1L;
            int32_t l_823 = 0x4CEA2BA0L;
            uint8_t *l_855 = (void*)0;
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 4; j++)
                    l_784[i][j] = &l_785;
            }
            (1 + 1);
        }
    }
    return (*p_1449->g_542);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t * func_50(uint16_t  p_51, uint16_t  p_52, uint16_t  p_53, struct S0 * p_1449)
{ /* block id: 13 */
    uint32_t *l_67 = (void*)0;
    int32_t **l_398 = &p_1449->g_199;
    int32_t **l_403 = &p_1449->g_400;
    int8_t *l_408 = (void*)0;
    uint64_t *l_417 = &p_1449->g_203[2][0];
    int32_t *l_421 = &p_1449->g_396;
    int8_t *l_425 = &p_1449->g_212[1];
    int8_t **l_424 = &l_425;
    uint32_t l_426 = 0x98222518L;
    int64_t *l_427 = (void*)0;
    int64_t *l_428 = &p_1449->g_354[3];
    int32_t l_473 = (-1L);
    uint8_t *l_537 = &p_1449->g_117;
    uint8_t **l_536 = &l_537;
    uint64_t **l_568 = &l_417;
    uint64_t *l_585 = &p_1449->g_584;
    return &p_1449->g_73;
}


/* ------------------------------------------ */
/* 
 * reads : p_1449->g_60 p_1449->g_7 p_1449->g_87 p_1449->g_68 p_1449->g_107 p_1449->g_73 p_1449->g_135 p_1449->g_164 p_1449->g_111 p_1449->g_150 p_1449->g_15 p_1449->g_175 p_1449->g_188 p_1449->g_113 p_1449->g_204 p_1449->g_212 p_1449->g_190 p_1449->g_244 p_1449->g_130 p_1449->g_131 p_1449->g_234 p_1449->g_203 p_1449->g_189 p_1449->g_199 p_1449->g_333 p_1449->g_348 p_1449->g_117 p_1449->g_354 p_1449->g_355
 * writes: p_1449->g_60 p_1449->g_87 p_1449->g_107 p_1449->g_111 p_1449->g_135 p_1449->g_113 p_1449->g_164 p_1449->g_73 p_1449->g_175 p_1449->g_189 p_1449->g_198 p_1449->g_199 p_1449->g_203 p_1449->g_117 p_1449->g_212 p_1449->g_234 p_1449->g_244 p_1449->g_349 p_1449->g_352 p_1449->g_354 p_1449->g_396
 */
int32_t * func_63(int32_t  p_64, uint32_t * p_65, int32_t * p_66, struct S0 * p_1449)
{ /* block id: 14 */
    int8_t l_69 = 0x4FL;
    uint16_t *l_72[7];
    uint32_t *l_82 = &p_1449->g_60;
    int8_t *l_351[7][6][5] = {{{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0}},{{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0}},{{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0}},{{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0}},{{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0}},{{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0}},{{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0},{&p_1449->g_212[0],&p_1449->g_212[0],&p_1449->g_212[0],(void*)0,(void*)0}}};
    uint8_t *l_353 = &p_1449->g_117;
    int32_t *l_368 = &p_1449->g_113;
    uint32_t **l_388[7];
    uint32_t ***l_387[7] = {&l_388[4],&l_388[4],&l_388[4],&l_388[4],&l_388[4],&l_388[4],&l_388[4]};
    uint32_t l_389[4][7][8] = {{{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L}},{{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L}},{{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L}},{{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L},{0x34608F58L,0x22CCE88BL,0x6D25193AL,0x855A24DFL,0x18DE1C76L,4UL,9UL,0x6B94FB13L}}};
    uint64_t *l_390 = &p_1449->g_203[2][0];
    int64_t *l_391 = &p_1449->g_354[3];
    uint8_t l_392[10][7] = {{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L}};
    uint64_t l_393[2][3];
    int32_t *l_394 = (void*)0;
    int32_t *l_395 = &p_1449->g_396;
    int32_t *l_397[9];
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_72[i] = &p_1449->g_73;
    for (i = 0; i < 7; i++)
        l_388[i] = &l_82;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
            l_393[i][j] = 0x8C4B75CEDC32C6F7L;
    }
    for (i = 0; i < 9; i++)
        l_397[i] = &p_1449->g_396;
    for (p_1449->g_60 = 0; (p_1449->g_60 <= 0); p_1449->g_60 += 1)
    { /* block id: 17 */
        return p_65;
    }
    (*p_1449->g_355) = ((((*l_353) = (0x2B23L | ((l_69 >= ((((p_1449->g_352 = (p_1449->g_212[1] = (safe_sub_func_uint64_t_u_u(((void*)0 == l_72[1]), (safe_rshift_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u((((func_78(&p_1449->g_7, (p_64 ^ GROUP_DIVERGE(1, 1)), l_82, p_1449) , (*p_1449->g_333)) != p_66) || l_69), p_64)) || l_69), l_69)))))) , p_64) < l_69) , 0L)) != l_69))) ^ 255UL) <= p_1449->g_354[3]);
    (*l_395) = (safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(0UL, ((safe_rshift_func_uint16_t_u_s((p_64 || (safe_add_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(((~(+(safe_sub_func_uint8_t_u_u(((((*l_368) = l_69) >= (safe_rshift_func_int8_t_s_s((FAKE_DIVERGE(p_1449->group_2_offset, get_group_id(2), 10) ^ ((*l_391) = ((safe_add_func_uint16_t_u_u(p_1449->g_107, (safe_lshift_func_uint8_t_u_s((((*p_1449->g_190) = (safe_mul_func_int8_t_s_s(p_1449->g_117, (safe_mod_func_uint8_t_u_u((p_64 < (((((GROUP_DIVERGE(2, 1) , (safe_mod_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(l_69, 18446744073709551606UL)), (safe_sub_func_uint64_t_u_u(((*l_390) = ((((l_387[5] != &p_1449->g_129) , (*p_1449->g_190)) < l_389[0][0][4]) | p_1449->g_354[3])), p_64))))) != p_64) ^ FAKE_DIVERGE(p_1449->group_1_offset, get_group_id(1), 10)) , l_390) == l_390)), 255UL))))) || p_64), 6)))) && p_1449->g_15))), p_1449->g_7))) >= p_1449->g_73), l_69)))) != l_392[6][0]), 1UL)) , l_393[0][2]), 9L))), 5)) , p_64))), p_1449->g_212[0]));
    return l_397[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1449->g_7 p_1449->g_87 p_1449->g_68 p_1449->g_107 p_1449->g_60 p_1449->g_73 p_1449->g_135 p_1449->g_164 p_1449->g_111 p_1449->g_150 p_1449->g_15 p_1449->g_175 p_1449->g_188 p_1449->g_113 p_1449->g_204 p_1449->g_212 p_1449->g_190 p_1449->g_244 p_1449->g_130 p_1449->g_131 p_1449->g_234 p_1449->g_203 p_1449->g_189 p_1449->g_199 p_1449->g_333 p_1449->g_348 p_1449->g_117
 * writes: p_1449->g_87 p_1449->g_107 p_1449->g_111 p_1449->g_135 p_1449->g_113 p_1449->g_164 p_1449->g_73 p_1449->g_175 p_1449->g_189 p_1449->g_198 p_1449->g_199 p_1449->g_203 p_1449->g_117 p_1449->g_212 p_1449->g_234 p_1449->g_244 p_1449->g_60 p_1449->g_349
 */
uint64_t  func_78(int32_t * p_79, int32_t  p_80, uint32_t * p_81, struct S0 * p_1449)
{ /* block id: 20 */
    uint8_t l_83 = 4UL;
    uint32_t *l_86 = &p_1449->g_87;
    int32_t *l_104 = &p_1449->g_7;
    int32_t **l_103 = &l_104;
    int64_t *l_105 = (void*)0;
    int64_t *l_106 = &p_1449->g_107;
    uint32_t l_108 = 0xB6AD74ACL;
    int16_t *l_109 = (void*)0;
    int16_t *l_110 = &p_1449->g_111;
    int32_t l_118 = 0x494579C6L;
    uint16_t *l_123 = &p_1449->g_73;
    int32_t l_149[2][6][9] = {{{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L}},{{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L},{6L,6L,(-6L),0x59FE8AC1L,1L,0x59FE8AC1L,(-6L),6L,6L}}};
    int32_t *l_160 = (void*)0;
    int32_t *l_350 = &p_1449->g_113;
    int i, j, k;
    if (((l_83 | ((FAKE_DIVERGE(p_1449->group_0_offset, get_group_id(0), 10) ^ GROUP_DIVERGE(1, 1)) > (((*p_79) != (--(*l_86))) == (safe_lshift_func_uint8_t_u_s((safe_unary_minus_func_uint8_t_u((safe_mul_func_uint16_t_u_u(0x0AAAL, (safe_sub_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((safe_div_func_int8_t_s_s(((((safe_mul_func_uint8_t_u_u(p_80, ((l_103 == (void*)0) != ((*l_110) = ((((*l_106) = (*l_104)) | l_108) , ((((!((*l_104) , GROUP_DIVERGE(1, 1))) | (**l_103)) , 0UL) < 0xFAL)))))) >= 7L) == p_1449->g_68[0][0][2]) && p_1449->g_107), p_80)) & 0x4E92L), p_1449->g_60)), p_80)))))), p_1449->g_73))))) , 1L))
    { /* block id: 24 */
        int32_t *l_112 = &p_1449->g_113;
        int64_t l_126 = 0L;
        int32_t l_146[3][5];
        int32_t *l_161 = &l_146[2][3];
        uint8_t *l_192 = &l_83;
        uint8_t **l_191[1][9] = {{&l_192,&l_192,&l_192,&l_192,&l_192,&l_192,&l_192,&l_192,&l_192}};
        int32_t l_243 = 0L;
        int16_t *l_268[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_306 = (void*)0;
        uint64_t *l_307[9][4][7] = {{{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]}},{{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]}},{{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]}},{{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]}},{{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]}},{{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]}},{{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]}},{{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]}},{{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]},{(void*)0,(void*)0,&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[2][0],&p_1449->g_203[1][0],&p_1449->g_203[2][0]}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 5; j++)
                l_146[i][j] = 0x72B4E2EDL;
        }
        l_112 = (void*)0;
        for (l_83 = 0; (l_83 >= 49); l_83 = safe_add_func_int16_t_s_s(l_83, 3))
        { /* block id: 28 */
            uint8_t *l_116[10];
            int32_t l_127 = 0x4279E96FL;
            int i;
            for (i = 0; i < 10; i++)
                l_116[i] = &p_1449->g_117;
            (1 + 1);
        }
        (*l_103) = l_160;
        if ((p_80 , ((*l_161) |= (*p_79))))
        { /* block id: 60 */
            uint64_t l_180 = 4UL;
            int8_t l_181 = 0x6CL;
            int32_t l_182 = 0x2B16FE8FL;
            int16_t l_183 = 1L;
            for (p_1449->g_135 = (-11); (p_1449->g_135 <= 37); ++p_1449->g_135)
            { /* block id: 63 */
                p_1449->g_164 |= (p_1449->g_113 = ((*l_161) || 4UL));
                l_112 = &p_1449->g_7;
            }
            (*l_161) &= ((safe_rshift_func_int8_t_s_u(2L, (safe_mul_func_int16_t_s_s((p_1449->g_107 && p_80), ((((p_1449->g_111 , (((p_80 <= ((*l_123) = 0xF402L)) > 0L) >= (0L != (-1L)))) || 0x4EF15C959C0090DEL) , 0x4AL) , p_1449->g_60))))) > p_1449->g_150);
            (*l_161) |= ((p_80 >= 1UL) && ((safe_add_func_int64_t_s_s(p_1449->g_68[0][0][1], (((p_1449->g_15 , ((&l_83 == (void*)0) ^ (safe_rshift_func_int16_t_s_u((((safe_lshift_func_int8_t_s_s(((p_1449->g_175++) != 1L), (((l_182 = (safe_div_func_uint8_t_u_u(((((((p_1449->g_135 || l_180) || p_80) >= 0x5260L) , 0x4DL) != l_181) || GROUP_DIVERGE(2, 1)), l_180))) , p_80) < l_183))) ^ l_181) < 0x4A5FL), 10)))) <= 0x09L) || 0xBBEFFA24A0073B97L))) && p_1449->g_107));
        }
        else
        { /* block id: 73 */
            uint8_t **l_195 = &l_192;
            int16_t *l_269 = &p_1449->g_111;
            int32_t l_275[1];
            int i;
            for (i = 0; i < 1; i++)
                l_275[i] = 0x778AEA7EL;
            for (p_1449->g_107 = 0; (p_1449->g_107 <= 2); p_1449->g_107 += 1)
            { /* block id: 76 */
                uint8_t ***l_196[7] = {&l_195,&p_1449->g_194,&l_195,&l_195,&p_1449->g_194,&l_195,&l_195};
                uint8_t ***l_197 = &p_1449->g_194;
                int32_t l_230 = 0x47D101BBL;
                uint8_t l_300 = 255UL;
                int i;
                for (p_80 = 0; (p_80 >= 0); p_80 -= 1)
                { /* block id: 79 */
                    int16_t **l_187 = &l_109;
                    int i, j;
                    l_146[p_1449->g_107][(p_1449->g_107 + 2)] = l_146[p_1449->g_107][(p_80 + 4)];
                    for (p_1449->g_135 = 0; (p_1449->g_135 <= 0); p_1449->g_135 += 1)
                    { /* block id: 83 */
                        int64_t **l_184 = (void*)0;
                        int64_t **l_185 = (void*)0;
                        int64_t **l_186 = &l_105;
                        (*l_161) &= (&p_1449->g_107 == ((*l_186) = (void*)0));
                        (*p_1449->g_188) = l_187;
                    }
                    for (p_1449->g_164 = 0; (p_1449->g_164 <= 0); p_1449->g_164 += 1)
                    { /* block id: 90 */
                        (*l_161) = 0x1A416FBCL;
                        l_195 = l_191[0][7];
                        (*l_103) = (((p_1449->g_113 ^= ((*l_161) = ((FAKE_DIVERGE(p_1449->global_1_offset, get_global_id(1), 10) , l_196[6]) != (p_1449->g_198 = l_197)))) >= GROUP_DIVERGE(1, 1)) , &p_1449->g_7);
                        p_1449->g_199 = (void*)0;
                    }
                }
                for (l_118 = 0; (l_118 <= 2); l_118 += 1)
                { /* block id: 102 */
                    uint64_t *l_202 = &p_1449->g_203[2][0];
                    uint64_t *l_233 = (void*)0;
                    int32_t *l_274 = &l_146[2][4];
                    int i, j;
                    (*p_1449->g_204) ^= (l_146[p_1449->g_107][(l_118 + 1)] = (0x09A4D5CBF6C0B2D7L != ((*l_202) = (safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1449->global_2_offset, get_global_id(2), 10), GROUP_DIVERGE(0, 1))))));
                    (*l_161) &= 1L;
                    for (p_1449->g_117 = 0; (p_1449->g_117 < 17); p_1449->g_117 = safe_add_func_int64_t_s_s(p_1449->g_117, 1))
                    { /* block id: 109 */
                        int8_t *l_211 = &p_1449->g_212[0];
                        int32_t l_229[8][10] = {{1L,(-5L),1L,1L,(-5L),1L,1L,(-5L),1L,1L},{1L,(-5L),1L,1L,(-5L),1L,1L,(-5L),1L,1L},{1L,(-5L),1L,1L,(-5L),1L,1L,(-5L),1L,1L},{1L,(-5L),1L,1L,(-5L),1L,1L,(-5L),1L,1L},{1L,(-5L),1L,1L,(-5L),1L,1L,(-5L),1L,1L},{1L,(-5L),1L,1L,(-5L),1L,1L,(-5L),1L,1L},{1L,(-5L),1L,1L,(-5L),1L,1L,(-5L),1L,1L},{1L,(-5L),1L,1L,(-5L),1L,1L,(-5L),1L,1L}};
                        int i, j;
                        (*l_161) &= ((safe_mod_func_int64_t_s_s((GROUP_DIVERGE(1, 1) || (safe_lshift_func_int8_t_s_s(((*l_211) &= 0x3CL), (safe_mul_func_int8_t_s_s((((*p_1449->g_204) < ((((p_1449->g_73 = (p_79 != (void*)0)) <= ((safe_sub_func_int32_t_s_s(((p_1449->g_111 , (((*l_86) = 7UL) ^ (safe_mod_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1449->group_0_offset, get_group_id(0), 10), ((((safe_lshift_func_int16_t_s_u((((((safe_lshift_func_uint16_t_u_u(((((p_80 > (safe_lshift_func_uint16_t_u_u((p_1449->g_111 , ((safe_lshift_func_int8_t_s_u(((p_1449->g_189 = (void*)0) == &l_110), GROUP_DIVERGE(1, 1))) >= 0x46DC24EEL)), 4))) ^ (-6L)) , l_229[4][2]) == (-4L)), p_1449->g_111)) , p_80) && 0xA2L) <= p_80) != p_1449->g_7), GROUP_DIVERGE(0, 1))) & (-1L)) > 0x81L) , 0xA8L))), (*p_1449->g_190))))) <= p_80), (*p_79))) || 251UL)) && p_80) , (*p_79))) == 0x492071BF1117703BL), 0x5AL))))), 0x71AC1D6843842C4BL)) , (*p_1449->g_204));
                    }
                    if (((((l_230 <= ((*l_123) = 3UL)) < l_230) && ((((p_1449->g_234 = (safe_rshift_func_uint16_t_u_s(p_80, 5))) , ((((0x22DDA9A1L && (safe_mul_func_int8_t_s_s((!p_1449->g_212[0]), (((safe_mul_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((p_1449->g_68[1][0][2] , 0UL), ((*l_110) = ((!(safe_lshift_func_int8_t_s_u(p_1449->g_7, l_243))) , (*p_1449->g_190))))), p_1449->g_68[1][0][2])) | 0UL) || p_1449->g_15)))) < (-2L)) != p_1449->g_164) , &p_1449->g_212[1])) != &p_1449->g_212[0]) < l_146[p_1449->g_107][(l_118 + 1)])) == 0UL))
                    { /* block id: 119 */
                        uint64_t * volatile * volatile *l_245 = (void*)0;
                        uint64_t * volatile * volatile *l_246 = &p_1449->g_244;
                        int32_t l_249 = 0L;
                        int8_t *l_264 = (void*)0;
                        int8_t *l_265 = (void*)0;
                        int8_t *l_266 = &p_1449->g_212[0];
                        int32_t *l_267 = &p_1449->g_113;
                        (*l_246) = p_1449->g_244;
                        (*l_267) |= ((*l_161) = ((safe_rshift_func_uint16_t_u_u(l_249, 12)) || (safe_sub_func_uint32_t_u_u(((((*l_266) &= (p_1449->g_87 > (((safe_rshift_func_uint16_t_u_u(((p_80 & (safe_add_func_uint8_t_u_u(((p_80 >= 0xEA20BC5C362547E7L) < p_80), (safe_lshift_func_int16_t_s_s((+l_249), 12))))) && p_1449->g_7), 3)) < (safe_lshift_func_uint16_t_u_s(((safe_lshift_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((((*p_1449->g_130) , (*p_79)) , &p_1449->g_204) == &l_104), p_80)), p_1449->g_175)) , 0UL), 13))) <= p_80))) , &p_79) == &p_79), (*p_79)))));
                        if ((*p_79))
                            break;
                        (*l_161) = (((l_268[7] != l_269) , ((safe_lshift_func_uint8_t_u_u(255UL, (safe_add_func_uint32_t_u_u((((*p_1449->g_190) , ((&p_1449->g_7 != (l_274 = (void*)0)) ^ (p_80 , l_275[0]))) != (p_1449->g_212[0] = ((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u(p_1449->g_111, p_80)), p_80)) && 0x32F378EEL))), p_1449->g_111)))) , p_80)) < 6L);
                    }
                    else
                    { /* block id: 128 */
                        (*p_1449->g_204) |= l_275[0];
                        return p_80;
                    }
                }
                (*l_103) = (*l_103);
                for (p_1449->g_234 = (-15); (p_1449->g_234 > 50); p_1449->g_234 = safe_add_func_int16_t_s_s(p_1449->g_234, 8))
                { /* block id: 136 */
                    uint32_t *l_295 = &p_1449->g_60;
                    uint32_t **l_294 = &l_295;
                    uint32_t **l_297 = &l_295;
                    uint32_t ***l_296 = &l_297;
                    int32_t l_301 = (-2L);
                    int32_t l_302 = 0L;
                    int64_t *l_303 = &l_126;
                    (*l_161) = (safe_mul_func_uint8_t_u_u(((0xF1F2L < 0xC55EL) & ((safe_rshift_func_uint8_t_u_s((safe_add_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_1449->local_2_offset, get_local_id(2), 10), l_275[0])), p_80)), (((*l_303) = (safe_lshift_func_int8_t_s_s((GROUP_DIVERGE(1, 1) == (safe_div_func_int32_t_s_s((&p_81 == ((*l_296) = (l_294 = (void*)0))), 1L))), (0x5A07L < (((l_301 ^= ((safe_add_func_int8_t_s_s((((((p_1449->g_234 , (*p_79)) && p_1449->g_113) && 1L) > p_1449->g_212[1]) , 0x7AL), l_300)) , 0x682B5945L)) ^ (*p_79)) & l_302))))) < p_80))) > p_1449->g_131)), 0x1EL));
                    for (p_1449->g_111 = (-20); (p_1449->g_111 <= 20); ++p_1449->g_111)
                    { /* block id: 144 */
                        (*l_103) = l_306;
                        (*p_1449->g_204) &= ((*l_161) |= (((l_307[5][0][1] == l_303) && (p_1449->g_203[2][0] , (safe_mod_func_int16_t_s_s((p_1449->g_164 | (1L == p_80)), (safe_unary_minus_func_int16_t_s(p_80)))))) < 0L));
                        (*l_103) = p_81;
                    }
                    if ((&p_1449->g_87 != p_79))
                    { /* block id: 150 */
                        return p_80;
                    }
                    else
                    { /* block id: 152 */
                        return p_1449->g_113;
                    }
                }
            }
            for (p_1449->g_60 = (-25); (p_1449->g_60 < 57); p_1449->g_60 = safe_add_func_uint8_t_u_u(p_1449->g_60, 5))
            { /* block id: 159 */
                int16_t l_315 = (-1L);
                if ((*p_1449->g_204))
                    break;
                if (l_315)
                    continue;
            }
        }
    }
    else
    { /* block id: 164 */
        uint64_t l_316 = 0xD4C383BE5139653BL;
        int32_t l_325[6] = {6L,6L,6L,6L,6L,6L};
        uint32_t *l_330 = &l_108;
        int32_t *l_331 = &l_149[1][3][2];
        int32_t *l_332 = &l_325[3];
        int i;
        (*l_332) = (((l_316 = (*p_79)) > ((*l_331) = ((*p_1449->g_199) |= (p_1449->g_7 ^ (((p_1449->g_15 == (p_1449->g_212[0] && (0x03L < ((((*l_330) = ((*l_86) = (safe_mod_func_int32_t_s_s(7L, (safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u(((**p_1449->g_189) = 1L), (l_325[0] == (safe_mod_func_int64_t_s_s((safe_add_func_int8_t_s_s((**l_103), p_80)), 1L))))) < 4294967288UL), 1)), (-1L))))))) , (void*)0) == &p_1449->g_190)))) >= 0x127003CCA9ACF57FL) <= 0x5CL))))) < (*l_104));
        p_79 = ((*l_103) = &p_1449->g_7);
    }
    (*p_1449->g_333) = ((*l_103) = (void*)0);
    for (p_1449->g_111 = 1; (p_1449->g_111 >= 0); p_1449->g_111 -= 1)
    { /* block id: 179 */
        if ((*p_79))
            break;
        for (l_118 = 0; (l_118 >= 0); l_118 -= 1)
        { /* block id: 183 */
            int32_t l_346 = 0L;
            for (p_80 = 0; (p_80 >= 0); p_80 -= 1)
            { /* block id: 186 */
                int8_t *l_347 = &p_1449->g_212[0];
                int i, j, k;
                p_1449->g_349[3][1] = ((p_1449->g_203[(p_80 + 1)][l_118] = p_1449->g_131) ^ (safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(0x46L, ((*l_347) = ((l_149[p_80][(p_1449->g_111 + 2)][(l_118 + 1)] = ((((safe_add_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(0x7E6BF6D6L, (safe_sub_func_int16_t_s_s((((0x3B5EL < (*p_1449->g_190)) , (~((+p_80) , ((safe_add_func_int16_t_s_s(0x1EBEL, l_346)) || (&p_1449->g_7 != &p_1449->g_7))))) || p_80), p_80)))), p_1449->g_7)) < l_346) < 1L) & 0x5CADL)) & p_1449->g_135)))), p_1449->g_348[2][4])));
            }
            l_350 = p_79;
        }
    }
    return p_1449->g_117;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1450;
    struct S0* p_1449 = &c_1450;
    struct S0 c_1451 = {
        0x1621L, // p_1449->g_4
        0x5A60D005L, // p_1449->g_7
        255UL, // p_1449->g_15
        0x1CL, // p_1449->g_43
        0x4D3E44E8L, // p_1449->g_60
        {{{(-6L),(-6L),(-6L),(-6L)}},{{(-6L),(-6L),(-6L),(-6L)}}}, // p_1449->g_68
        65535UL, // p_1449->g_73
        8UL, // p_1449->g_87
        0x5B25B5FE41CD9499L, // p_1449->g_107
        0L, // p_1449->g_111
        (-9L), // p_1449->g_113
        250UL, // p_1449->g_117
        0x48039CC8L, // p_1449->g_131
        &p_1449->g_131, // p_1449->g_130
        &p_1449->g_130, // p_1449->g_129
        0UL, // p_1449->g_135
        0xB5DAL, // p_1449->g_150
        0xA5L, // p_1449->g_157
        1L, // p_1449->g_164
        254UL, // p_1449->g_175
        &p_1449->g_111, // p_1449->g_190
        &p_1449->g_190, // p_1449->g_189
        &p_1449->g_189, // p_1449->g_188
        (void*)0, // p_1449->g_194
        {{(void*)0,(void*)0,&p_1449->g_194,&p_1449->g_194,&p_1449->g_194,(void*)0},{(void*)0,(void*)0,&p_1449->g_194,&p_1449->g_194,&p_1449->g_194,(void*)0},{(void*)0,(void*)0,&p_1449->g_194,&p_1449->g_194,&p_1449->g_194,(void*)0},{(void*)0,(void*)0,&p_1449->g_194,&p_1449->g_194,&p_1449->g_194,(void*)0},{(void*)0,(void*)0,&p_1449->g_194,&p_1449->g_194,&p_1449->g_194,(void*)0}}, // p_1449->g_193
        (void*)0, // p_1449->g_198
        &p_1449->g_113, // p_1449->g_199
        {{0x31255FDFF747F287L},{0x31255FDFF747F287L},{0x31255FDFF747F287L}}, // p_1449->g_203
        &p_1449->g_113, // p_1449->g_204
        {0L,0L,0L}, // p_1449->g_212
        1UL, // p_1449->g_234
        (void*)0, // p_1449->g_244
        &p_1449->g_199, // p_1449->g_333
        {{2UL,4294967295UL,4294967294UL,4294967295UL,2UL,2UL,4294967295UL,4294967294UL,4294967295UL},{2UL,4294967295UL,4294967294UL,4294967295UL,2UL,2UL,4294967295UL,4294967294UL,4294967295UL},{2UL,4294967295UL,4294967294UL,4294967295UL,2UL,2UL,4294967295UL,4294967294UL,4294967295UL}}, // p_1449->g_348
        {{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL}}, // p_1449->g_349
        0xF2B562EAL, // p_1449->g_352
        {0x18FFF755FFD0329CL,0x18FFF755FFD0329CL,0x18FFF755FFD0329CL,0x18FFF755FFD0329CL,0x18FFF755FFD0329CL}, // p_1449->g_354
        &p_1449->g_113, // p_1449->g_355
        (-1L), // p_1449->g_396
        &p_1449->g_396, // p_1449->g_400
        {{{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400}},{{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400}},{{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,(void*)0,&p_1449->g_400,&p_1449->g_400}}}, // p_1449->g_399
        (void*)0, // p_1449->g_401
        {{&p_1449->g_400,&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400},{&p_1449->g_400,&p_1449->g_400,&p_1449->g_400,(void*)0,&p_1449->g_400}}, // p_1449->g_402
        &p_1449->g_113, // p_1449->g_429
        &p_1449->g_396, // p_1449->g_434
        &p_1449->g_434, // p_1449->g_435
        (-9L), // p_1449->g_505
        &p_1449->g_212[2], // p_1449->g_542
        &p_1449->g_542, // p_1449->g_541
        8UL, // p_1449->g_584
        {{0x85E7BF9CL,4294967295UL,7UL,4294967295UL,0x85E7BF9CL},{0x85E7BF9CL,4294967295UL,7UL,4294967295UL,0x85E7BF9CL},{0x85E7BF9CL,4294967295UL,7UL,4294967295UL,0x85E7BF9CL},{0x85E7BF9CL,4294967295UL,7UL,4294967295UL,0x85E7BF9CL},{0x85E7BF9CL,4294967295UL,7UL,4294967295UL,0x85E7BF9CL},{0x85E7BF9CL,4294967295UL,7UL,4294967295UL,0x85E7BF9CL},{0x85E7BF9CL,4294967295UL,7UL,4294967295UL,0x85E7BF9CL}}, // p_1449->g_603
        &p_1449->g_584, // p_1449->g_640
        0x6E798713L, // p_1449->g_655
        0x0EB353DA042791AEL, // p_1449->g_658
        &p_1449->g_349[5][1], // p_1449->g_673
        &p_1449->g_673, // p_1449->g_672
        &p_1449->g_400, // p_1449->g_695
        &p_1449->g_150, // p_1449->g_783
        &p_1449->g_783, // p_1449->g_782
        65535UL, // p_1449->g_914
        &p_1449->g_7, // p_1449->g_987
        (-10L), // p_1449->g_1021
        &p_1449->g_434, // p_1449->g_1174
        &p_1449->g_434, // p_1449->g_1178
        &p_1449->g_60, // p_1449->g_1271
        &p_1449->g_1271, // p_1449->g_1270
        4L, // p_1449->g_1273
        {{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}}}, // p_1449->g_1291
        &p_1449->g_1291[0][0][0], // p_1449->g_1290
        {{{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290},{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290},{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290},{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290},{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290}},{{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290},{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290},{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290},{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290},{&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290,(void*)0,&p_1449->g_1290,&p_1449->g_1290}}}, // p_1449->g_1289
        {{&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][3][1],&p_1449->g_1289[0][4][0],(void*)0,&p_1449->g_1289[0][4][0]},{&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][3][1],&p_1449->g_1289[0][4][0],(void*)0,&p_1449->g_1289[0][4][0]},{&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][3][1],&p_1449->g_1289[0][4][0],(void*)0,&p_1449->g_1289[0][4][0]},{&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][3][1],&p_1449->g_1289[0][4][0],(void*)0,&p_1449->g_1289[0][4][0]},{&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][4][0],&p_1449->g_1289[0][3][1],&p_1449->g_1289[0][4][0],(void*)0,&p_1449->g_1289[0][4][0]}}, // p_1449->g_1288
        &p_1449->g_1288[3][4], // p_1449->g_1287
        (-9L), // p_1449->g_1303
        (void*)0, // p_1449->g_1332
        &p_1449->g_658, // p_1449->g_1344
        {{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344},{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344},{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344},{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344},{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344},{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344},{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344},{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344},{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344},{&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344,&p_1449->g_1344}}, // p_1449->g_1343
        (void*)0, // p_1449->g_1445
        {&p_1449->g_199,&p_1449->g_199,&p_1449->g_199,&p_1449->g_199,&p_1449->g_199,&p_1449->g_199,&p_1449->g_199,&p_1449->g_199}, // p_1449->g_1447
        &p_1449->g_1447[5], // p_1449->g_1446
        0, // p_1449->v_collective
        sequence_input[get_global_id(0)], // p_1449->global_0_offset
        sequence_input[get_global_id(1)], // p_1449->global_1_offset
        sequence_input[get_global_id(2)], // p_1449->global_2_offset
        sequence_input[get_local_id(0)], // p_1449->local_0_offset
        sequence_input[get_local_id(1)], // p_1449->local_1_offset
        sequence_input[get_local_id(2)], // p_1449->local_2_offset
        sequence_input[get_group_id(0)], // p_1449->group_0_offset
        sequence_input[get_group_id(1)], // p_1449->group_1_offset
        sequence_input[get_group_id(2)], // p_1449->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1450 = c_1451;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1449);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1449->g_4, "p_1449->g_4", print_hash_value);
    transparent_crc(p_1449->g_7, "p_1449->g_7", print_hash_value);
    transparent_crc(p_1449->g_15, "p_1449->g_15", print_hash_value);
    transparent_crc(p_1449->g_43, "p_1449->g_43", print_hash_value);
    transparent_crc(p_1449->g_60, "p_1449->g_60", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1449->g_68[i][j][k], "p_1449->g_68[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1449->g_73, "p_1449->g_73", print_hash_value);
    transparent_crc(p_1449->g_87, "p_1449->g_87", print_hash_value);
    transparent_crc(p_1449->g_107, "p_1449->g_107", print_hash_value);
    transparent_crc(p_1449->g_111, "p_1449->g_111", print_hash_value);
    transparent_crc(p_1449->g_113, "p_1449->g_113", print_hash_value);
    transparent_crc(p_1449->g_117, "p_1449->g_117", print_hash_value);
    transparent_crc(p_1449->g_131, "p_1449->g_131", print_hash_value);
    transparent_crc(p_1449->g_135, "p_1449->g_135", print_hash_value);
    transparent_crc(p_1449->g_150, "p_1449->g_150", print_hash_value);
    transparent_crc(p_1449->g_157, "p_1449->g_157", print_hash_value);
    transparent_crc(p_1449->g_164, "p_1449->g_164", print_hash_value);
    transparent_crc(p_1449->g_175, "p_1449->g_175", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1449->g_203[i][j], "p_1449->g_203[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1449->g_212[i], "p_1449->g_212[i]", print_hash_value);

    }
    transparent_crc(p_1449->g_234, "p_1449->g_234", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1449->g_348[i][j], "p_1449->g_348[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1449->g_349[i][j], "p_1449->g_349[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1449->g_352, "p_1449->g_352", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1449->g_354[i], "p_1449->g_354[i]", print_hash_value);

    }
    transparent_crc(p_1449->g_396, "p_1449->g_396", print_hash_value);
    transparent_crc(p_1449->g_505, "p_1449->g_505", print_hash_value);
    transparent_crc(p_1449->g_584, "p_1449->g_584", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1449->g_603[i][j], "p_1449->g_603[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1449->g_655, "p_1449->g_655", print_hash_value);
    transparent_crc(p_1449->g_658, "p_1449->g_658", print_hash_value);
    transparent_crc(p_1449->g_914, "p_1449->g_914", print_hash_value);
    transparent_crc(p_1449->g_1021, "p_1449->g_1021", print_hash_value);
    transparent_crc(p_1449->g_1273, "p_1449->g_1273", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1449->g_1291[i][j][k], "p_1449->g_1291[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1449->g_1303, "p_1449->g_1303", print_hash_value);
    transparent_crc(p_1449->v_collective, "p_1449->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
