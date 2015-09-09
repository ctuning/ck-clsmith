// ---fake_divergence -g 90,52,2 -l 18,13,1
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
    int16_t g_147[4][1];
    uint32_t *g_165;
    uint32_t **g_164;
    uint32_t *** volatile g_163;
    int8_t g_179;
    uint16_t *g_181;
    int64_t g_190;
    int64_t *g_189;
    int32_t g_192;
    uint32_t g_194;
    uint64_t g_198;
    uint32_t * volatile g_201;
    uint32_t * volatile *g_200;
    volatile int16_t g_233[9];
    int32_t g_235;
    uint32_t g_239;
    int32_t * volatile g_266;
    uint32_t g_280[6];
    volatile int32_t *g_318;
    volatile int32_t ** volatile g_319;
    int32_t g_337;
    int32_t * volatile g_345;
    volatile uint32_t g_346;
    volatile uint64_t g_349;
    int32_t *g_370;
    int32_t ** volatile g_369;
    int32_t **g_395;
    int32_t *** volatile g_394;
    volatile int32_t ** volatile g_410;
    volatile int32_t **g_423;
    volatile int32_t ***g_422[1][8];
    int32_t *g_429;
    int32_t * volatile *g_428[3];
    int8_t *g_441;
    int8_t **g_440;
    int8_t *** volatile g_439[8];
    int8_t *** volatile g_442;
    int8_t g_463[5];
    volatile int32_t ** volatile g_526;
    int32_t *g_568;
    int32_t g_582;
    int64_t g_589;
    volatile uint16_t g_593;
    volatile uint16_t *g_592;
    uint64_t g_601;
    uint64_t g_613;
    int32_t ** volatile g_626;
    int16_t *g_647;
    volatile uint32_t g_668;
    int32_t g_674[1];
    int32_t **g_716;
    int32_t ** volatile g_720;
    volatile uint32_t g_757;
    volatile int32_t g_829;
    int64_t g_887;
    uint32_t g_960;
    volatile int16_t *g_1070;
    volatile int16_t * volatile *g_1069;
    volatile int16_t * volatile ** volatile g_1068;
    uint16_t g_1078;
    int64_t g_1107;
    int32_t *g_1123;
    volatile int8_t g_1157[10][4][6];
    volatile int8_t *g_1156;
    volatile int8_t * volatile *g_1155[2][5][7];
    volatile int8_t * volatile ** volatile g_1154[5][6];
    volatile int8_t * volatile ** volatile *g_1153;
    int32_t * volatile g_1245;
    int32_t * volatile g_1246;
    int32_t ***g_1311[2][6][6];
    int32_t ****g_1310;
    int32_t **g_1358;
    volatile uint16_t **g_1376;
    volatile uint16_t ** volatile *g_1375;
    int8_t ***g_1388[8][9];
    int8_t ****g_1387;
    int8_t *****g_1386;
    uint32_t *g_1417;
    uint32_t **g_1416;
    uint32_t ***g_1415;
    int32_t * volatile g_1430;
    volatile int8_t g_1431;
    volatile uint64_t g_1496;
    uint32_t *** volatile g_1501;
    uint32_t **g_1503;
    uint32_t *** volatile g_1502[3];
    uint32_t *** volatile g_1504;
    int16_t g_1616;
    volatile uint8_t g_1762;
    volatile uint8_t g_1777[8];
    int16_t g_1798;
    int32_t * volatile **g_1876;
    int32_t * volatile *** volatile g_1875;
    uint8_t g_1911;
    volatile uint16_t g_1945;
    volatile uint32_t g_1971;
    volatile int32_t g_1995[8];
    int64_t g_2054[4];
    int16_t g_2099;
    int8_t g_2153;
    uint64_t g_2184;
    volatile uint8_t **g_2225;
    uint32_t *g_2226;
    uint16_t g_2322;
    int32_t g_2375;
    int16_t g_2376;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
};


/* --- FORWARD DECLARATIONS --- */
int64_t  func_1(struct S0 * p_2384);
int32_t  func_2(int64_t  p_3, struct S0 * p_2384);
uint64_t  func_21(int32_t ** p_22, int32_t  p_23, struct S0 * p_2384);
int32_t ** func_24(int32_t * p_25, int32_t ** p_26, int32_t * p_27, int32_t ** p_28, int32_t ** p_29, struct S0 * p_2384);
int32_t * func_30(uint64_t  p_31, int32_t ** p_32, struct S0 * p_2384);
uint16_t  func_41(uint32_t  p_42, struct S0 * p_2384);
int8_t  func_44(uint8_t  p_45, int32_t  p_46, uint32_t  p_47, uint32_t  p_48, struct S0 * p_2384);
uint16_t * func_50(uint16_t  p_51, uint16_t  p_52, uint16_t  p_53, struct S0 * p_2384);
int32_t * func_63(int32_t  p_64, uint32_t * p_65, int32_t * p_66, struct S0 * p_2384);
uint64_t  func_78(int32_t * p_79, int32_t  p_80, uint32_t * p_81, struct S0 * p_2384);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2384->g_4 p_2384->g_15 p_2384->g_7 p_2384->g_43 p_2384->g_60 p_2384->g_87 p_2384->g_68 p_2384->g_107 p_2384->g_73 p_2384->g_235 p_2384->g_318 p_2384->g_319 p_2384->g_201 p_2384->g_200 p_2384->g_280 p_2384->g_113 p_2384->g_189 p_2384->g_190 p_2384->g_164 p_2384->g_266 p_2384->g_192 p_2384->g_345 p_2384->g_181 p_2384->g_346 p_2384->g_349 p_2384->g_198 p_2384->g_117 p_2384->g_179 p_2384->g_369 p_2384->g_135 p_2384->g_111 p_2384->g_394 p_2384->g_410 p_2384->g_395 p_2384->g_370 p_2384->g_422 p_2384->g_428 p_2384->g_442 p_2384->g_147 p_2384->g_463 p_2384->g_526 p_2384->g_165 p_2384->g_568 p_2384->g_429 p_2384->g_337 p_2384->g_441 p_2384->g_589 p_2384->g_592 p_2384->g_582 p_2384->g_613 p_2384->g_131 p_2384->g_626 p_2384->g_423 p_2384->g_647 p_2384->g_194 p_2384->g_668 p_2384->g_716 p_2384->g_720 p_2384->g_757 p_2384->g_601 p_2384->g_887 p_2384->g_593 p_2384->g_960 p_2384->g_233 p_2384->g_674 p_2384->g_1068 p_2384->g_1078 p_2384->g_1069 p_2384->g_1070 p_2384->g_1107 p_2384->g_239 p_2384->g_1246 p_2384->g_1310 p_2384->g_1358 p_2384->g_1375 p_2384->g_1156 p_2384->g_1157 p_2384->g_1415 p_2384->g_1430 p_2384->g_1431 p_2384->g_1417 p_2384->g_1416 p_2384->g_2184 p_2384->g_1376 p_2384->g_1995 p_2384->g_2225 p_2384->g_2322 p_2384->g_1911 p_2384->g_2375 p_2384->g_2376
 * writes: p_2384->g_15 p_2384->g_7 p_2384->g_4 p_2384->g_43 p_2384->g_60 p_2384->g_87 p_2384->g_107 p_2384->g_111 p_2384->g_266 p_2384->g_235 p_2384->g_192 p_2384->g_318 p_2384->g_113 p_2384->g_165 p_2384->g_68 p_2384->g_337 p_2384->g_117 p_2384->g_198 p_2384->g_147 p_2384->g_73 p_2384->g_370 p_2384->g_395 p_2384->g_135 p_2384->g_440 p_2384->g_164 p_2384->g_190 p_2384->g_582 p_2384->g_179 p_2384->g_181 p_2384->g_601 p_2384->g_613 p_2384->g_589 p_2384->g_568 p_2384->g_887 p_2384->g_960 p_2384->g_1123 p_2384->g_1078 p_2384->g_1310 p_2384->g_280 p_2384->g_1386 p_2384->g_1107 p_2384->g_1415 p_2384->g_1995 p_2384->g_2184 p_2384->g_2226 p_2384->g_2322 p_2384->g_1911 p_2384->g_189
 */
int64_t  func_1(struct S0 * p_2384)
{ /* block id: 4 */
    int32_t *l_18[7][8][4] = {{{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0}},{{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0}},{{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0}},{{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0}},{{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0}},{{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0}},{{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0},{&p_2384->g_7,(void*)0,(void*)0,(void*)0}}};
    uint16_t *l_37 = (void*)0;
    uint16_t *l_38 = &p_2384->g_4;
    int16_t l_49 = 0x4AC1L;
    int32_t l_54 = 0L;
    uint32_t *l_57 = (void*)0;
    uint32_t *l_58 = (void*)0;
    uint32_t *l_59 = &p_2384->g_60;
    uint16_t **l_591 = &p_2384->g_181;
    int32_t l_715 = 0x02BC215FL;
    int32_t **l_2382 = &p_2384->g_568;
    int64_t l_2383[4] = {0x669AFFD46F3716B7L,0x669AFFD46F3716B7L,0x669AFFD46F3716B7L,0x669AFFD46F3716B7L};
    int i, j, k;
    p_2384->g_7 ^= func_2(p_2384->g_4, p_2384);
    p_2384->g_7 |= p_2384->g_15;
    l_2382 = (((safe_rshift_func_int16_t_s_u((1UL >= func_21(func_24(func_30((((safe_add_func_uint32_t_u_u(0x936BB358L, (safe_mod_func_int8_t_s_s((((*l_38)--) < (l_715 = (+func_41(((p_2384->g_43 ^= p_2384->g_7) == (func_44(l_49, func_2((((*l_591) = func_50(l_54, (safe_mul_func_uint8_t_u_u(1UL, 0x96L)), (((*l_59) = p_2384->g_7) , (safe_add_func_uint64_t_u_u((&l_54 == &p_2384->g_7), GROUP_DIVERGE(2, 1)))), p_2384)) == p_2384->g_592), p_2384), p_2384->g_463[3], p_2384->g_463[2], p_2384) , 1UL)), p_2384)))), p_2384->g_463[2])))) >= p_2384->g_463[3]) , p_2384->g_107), p_2384->g_716, p_2384), &l_18[4][0][0], &l_54, &l_18[4][0][0], p_2384->g_716, p_2384), l_54, p_2384)), 2)) && 1UL) , (void*)0);
    (*p_2384->g_1358) = &l_54;
    return l_2383[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_2384->g_15
 * writes: p_2384->g_15
 */
int32_t  func_2(int64_t  p_3, struct S0 * p_2384)
{ /* block id: 5 */
    int16_t l_5 = 1L;
    int32_t *l_6 = &p_2384->g_7;
    int32_t *l_8 = &p_2384->g_7;
    int32_t *l_9 = &p_2384->g_7;
    int32_t l_10 = 0x1B88146CL;
    int32_t l_11 = 0L;
    int32_t l_12 = 3L;
    int32_t *l_13[10][7][3] = {{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}},{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}},{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}},{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}},{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}},{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}},{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}},{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}},{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}},{{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7},{&p_2384->g_7,&l_11,&p_2384->g_7}}};
    int8_t l_14 = (-5L);
    int i, j, k;
    --p_2384->g_15;
    return p_2384->g_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_2384->g_582 p_2384->g_280 p_2384->g_200 p_2384->g_201 p_2384->g_568 p_2384->g_113 p_2384->g_181 p_2384->g_73 p_2384->g_757 p_2384->g_601 p_2384->g_337 p_2384->g_887 p_2384->g_592 p_2384->g_593 p_2384->g_131 p_2384->g_87 p_2384->g_441 p_2384->g_179 p_2384->g_463 p_2384->g_135 p_2384->g_189 p_2384->g_190 p_2384->g_720 p_2384->g_410 p_2384->g_318 p_2384->g_613 p_2384->g_349 p_2384->g_960 p_2384->g_233 p_2384->g_117 p_2384->g_429 p_2384->g_319 p_2384->g_423 p_2384->g_147 p_2384->g_266 p_2384->g_235 p_2384->g_7 p_2384->g_674 p_2384->g_43 p_2384->g_194 p_2384->g_1068 p_2384->g_1078 p_2384->g_345 p_2384->g_1069 p_2384->g_1070 p_2384->g_1107 p_2384->g_192 p_2384->g_626 p_2384->g_68 p_2384->g_370 p_2384->g_164 p_2384->g_165 p_2384->g_239 p_2384->g_4 p_2384->g_1246 p_2384->g_526 p_2384->g_107 p_2384->g_111 p_2384->g_1310 p_2384->g_198 p_2384->g_1358 p_2384->g_369 p_2384->g_1375 p_2384->g_1156 p_2384->g_1157 p_2384->g_1415 p_2384->g_668 p_2384->g_1430 p_2384->g_60 p_2384->g_1431 p_2384->g_1417 p_2384->g_1416 p_2384->g_2184 p_2384->g_1376 p_2384->g_1995 p_2384->g_2225 p_2384->g_2322 p_2384->g_1911 p_2384->g_2375 p_2384->g_2376
 * writes: p_2384->g_181 p_2384->g_87 p_2384->g_135 p_2384->g_73 p_2384->g_601 p_2384->g_887 p_2384->g_179 p_2384->g_60 p_2384->g_4 p_2384->g_568 p_2384->g_198 p_2384->g_318 p_2384->g_370 p_2384->g_613 p_2384->g_960 p_2384->g_43 p_2384->g_192 p_2384->g_113 p_2384->g_111 p_2384->g_190 p_2384->g_1123 p_2384->g_7 p_2384->g_147 p_2384->g_1078 p_2384->g_440 p_2384->g_117 p_2384->g_1310 p_2384->g_280 p_2384->g_1386 p_2384->g_1107 p_2384->g_235 p_2384->g_1415 p_2384->g_1995 p_2384->g_2184 p_2384->g_165 p_2384->g_2226 p_2384->g_2322 p_2384->g_1911 p_2384->g_189
 */
uint64_t  func_21(int32_t ** p_22, int32_t  p_23, struct S0 * p_2384)
{ /* block id: 472 */
    uint16_t **l_867 = &p_2384->g_181;
    int32_t **l_870[8][10] = {{&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0,(void*)0,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0},{&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0,(void*)0,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0},{&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0,(void*)0,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0},{&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0,(void*)0,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0},{&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0,(void*)0,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0},{&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0,(void*)0,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0},{&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0,(void*)0,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0},{&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0,(void*)0,&p_2384->g_429,&p_2384->g_429,&p_2384->g_429,(void*)0}};
    int32_t ***l_871 = &l_870[1][9];
    int32_t l_872 = (-2L);
    int32_t l_879 = 0x39A61A69L;
    uint64_t *l_884 = &p_2384->g_601;
    int64_t *l_885 = (void*)0;
    int64_t *l_886 = &p_2384->g_887;
    int8_t *l_906[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t **l_946 = &p_2384->g_568;
    int32_t ***l_958 = (void*)0;
    int32_t ****l_957 = &l_958;
    uint32_t *l_968 = &p_2384->g_87;
    uint32_t **l_967 = &l_968;
    int32_t l_1039 = 0x731727B4L;
    int32_t **l_1063 = (void*)0;
    int64_t **l_1187[1];
    int8_t ***l_1215 = &p_2384->g_440;
    int8_t ****l_1214 = &l_1215;
    int8_t *****l_1213 = &l_1214;
    int16_t l_1273 = 1L;
    int32_t l_1365 = (-1L);
    int32_t l_1474 = (-6L);
    int32_t l_1480 = 0x004BA396L;
    int32_t l_1482 = 0x4CCD8350L;
    int32_t l_1491 = 1L;
    int32_t l_1493 = 0x3BB11E66L;
    int32_t l_1494 = 0x4C98C9C1L;
    int32_t l_1495 = 0x5E003ACDL;
    uint32_t **l_1514[5] = {&p_2384->g_165,&p_2384->g_165,&p_2384->g_165,&p_2384->g_165,&p_2384->g_165};
    int64_t l_1515 = 0x5991679B792A56E0L;
    int16_t l_1547 = 0L;
    int32_t l_1554[9][1] = {{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}};
    int8_t *l_1790[2];
    int32_t l_1912 = 1L;
    int16_t **l_1930 = &p_2384->g_647;
    int16_t ***l_1929[4][6] = {{&l_1930,&l_1930,&l_1930,&l_1930,&l_1930,&l_1930},{&l_1930,&l_1930,&l_1930,&l_1930,&l_1930,&l_1930},{&l_1930,&l_1930,&l_1930,&l_1930,&l_1930,&l_1930},{&l_1930,&l_1930,&l_1930,&l_1930,&l_1930,&l_1930}};
    int32_t l_1933 = 0x711918EEL;
    volatile int32_t *l_1994 = &p_2384->g_1995[2];
    int16_t l_2000 = 1L;
    int32_t l_2006 = 0x18DA5664L;
    int32_t *l_2081 = &l_1554[5][0];
    uint32_t l_2155 = 4294967286UL;
    uint32_t **l_2172 = &p_2384->g_1417;
    uint16_t l_2173 = 0x5F4FL;
    int32_t l_2285 = (-1L);
    uint64_t l_2294 = 0x6B57048E4E0DE4AFL;
    int16_t l_2356[7][4][2] = {{{2L,(-1L)},{2L,(-1L)},{2L,(-1L)},{2L,(-1L)}},{{2L,(-1L)},{2L,(-1L)},{2L,(-1L)},{2L,(-1L)}},{{2L,(-1L)},{2L,(-1L)},{2L,(-1L)},{2L,(-1L)}},{{2L,(-1L)},{2L,(-1L)},{2L,(-1L)},{2L,(-1L)}},{{2L,(-1L)},{2L,(-1L)},{2L,(-1L)},{2L,(-1L)}},{{2L,(-1L)},{2L,(-1L)},{2L,(-1L)},{2L,(-1L)}},{{2L,(-1L)},{2L,(-1L)},{2L,(-1L)},{2L,(-1L)}}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1187[i] = &p_2384->g_189;
    for (i = 0; i < 2; i++)
        l_1790[i] = (void*)0;
    (*p_2384->g_568) = ((safe_mul_func_int16_t_s_s((+(1UL ^ (safe_mod_func_uint32_t_u_u(((**p_2384->g_200) = ((safe_rshift_func_int8_t_s_u((((safe_mod_func_int32_t_s_s(1L, GROUP_DIVERGE(2, 1))) || (p_23 , (safe_sub_func_int8_t_s_s(0x22L, (0xD210L < p_2384->g_582))))) , (((*l_867) = &p_2384->g_73) != &p_2384->g_593)), ((safe_div_func_int16_t_s_s(((((*l_871) = l_870[1][6]) == (void*)0) < p_2384->g_280[0]), p_23)) <= 8L))) , 1UL)), p_23)))), l_872)) < p_23);
    if (((((safe_mod_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((((((*l_886) &= ((((safe_lshift_func_uint16_t_u_u(((((l_872 < p_2384->g_113) , ((*l_871) != &p_2384->g_429)) && (--(*p_2384->g_181))) && (safe_div_func_uint64_t_u_u(p_2384->g_757, (((p_23 , (((*l_884) ^= ((l_879 , ((l_872 >= ((*p_2384->g_568) = l_879)) || p_23)) | (-1L))) , p_23)) , FAKE_DIVERGE(p_2384->global_1_offset, get_global_id(1), 10)) , FAKE_DIVERGE(p_2384->global_0_offset, get_global_id(0), 10))))), p_23)) || p_2384->g_337) <= FAKE_DIVERGE(p_2384->global_1_offset, get_global_id(1), 10)) ^ p_23)) , l_872) < GROUP_DIVERGE(0, 1)) == p_23), p_2384->g_337)), l_872)) , (*p_2384->g_592)) < l_872) ^ l_879))
    { /* block id: 481 */
        int8_t l_901 = 0x6BL;
        int16_t l_907 = 0L;
        int32_t l_908 = 9L;
        int8_t **l_911 = &p_2384->g_441;
        int32_t l_916 = (-1L);
        int32_t l_922[7][3][3] = {{{(-8L),(-8L),0L},{(-8L),(-8L),0L},{(-8L),(-8L),0L}},{{(-8L),(-8L),0L},{(-8L),(-8L),0L},{(-8L),(-8L),0L}},{{(-8L),(-8L),0L},{(-8L),(-8L),0L},{(-8L),(-8L),0L}},{{(-8L),(-8L),0L},{(-8L),(-8L),0L},{(-8L),(-8L),0L}},{{(-8L),(-8L),0L},{(-8L),(-8L),0L},{(-8L),(-8L),0L}},{{(-8L),(-8L),0L},{(-8L),(-8L),0L},{(-8L),(-8L),0L}},{{(-8L),(-8L),0L},{(-8L),(-8L),0L},{(-8L),(-8L),0L}}};
        int32_t *l_947 = (void*)0;
        int16_t **l_956 = &p_2384->g_647;
        int32_t ***l_973 = &p_2384->g_395;
        uint16_t **l_976 = &p_2384->g_181;
        uint32_t l_979 = 0UL;
        uint32_t **l_1002 = &l_968;
        int32_t *l_1129 = &l_1039;
        int32_t **l_1128 = &l_1129;
        uint32_t l_1301 = 4294967295UL;
        uint32_t l_1362 = 6UL;
        uint64_t *l_1377[10][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int16_t l_1378 = (-6L);
        int i, j, k;
lbl_1042:
        l_908 ^= ((safe_rshift_func_uint8_t_u_s(p_23, (safe_sub_func_uint32_t_u_u(4294967295UL, 0x5EAE12F9L)))) , ((*p_2384->g_568) |= (safe_unary_minus_func_int16_t_s((safe_sub_func_uint64_t_u_u((((safe_mod_func_int64_t_s_s(l_872, p_2384->g_131)) || ((((((safe_sub_func_uint64_t_u_u((safe_add_func_uint16_t_u_u((l_901 < (safe_rshift_func_int16_t_s_s(((*p_2384->g_201) ^ (((safe_lshift_func_int8_t_s_s((((*l_886) = (l_906[2] == (void*)0)) , 0x09L), 4)) ^ (*p_2384->g_441)) , 0x28E0046DL)), p_23))), 0x5C35L)), p_2384->g_280[1])) , (*p_2384->g_181)) < 0x5A1BL) < p_23) < l_907) < 0x2ED24FEAED919F0EL)) , p_23), p_2384->g_463[3]))))));
        if ((l_901 , (((p_23 , (*p_2384->g_189)) > (((((l_879 ^= ((*p_2384->g_441) = (((safe_div_func_int64_t_s_s(0x75034C8C3F4BAD66L, p_23)) == l_872) && l_901))) , ((l_911 == l_911) & l_907)) == p_23) , l_879) ^ p_23)) & p_23)))
        { /* block id: 487 */
            uint32_t l_929 = 0x4C24D23CL;
            int32_t *l_932 = (void*)0;
            int32_t *l_933[8][2];
            uint32_t l_934 = 0xEB14F63CL;
            uint16_t *l_969[6][8] = {{&p_2384->g_73,&p_2384->g_73,(void*)0,&p_2384->g_4,&p_2384->g_4,&p_2384->g_4,(void*)0,&p_2384->g_73},{&p_2384->g_73,&p_2384->g_73,(void*)0,&p_2384->g_4,&p_2384->g_4,&p_2384->g_4,(void*)0,&p_2384->g_73},{&p_2384->g_73,&p_2384->g_73,(void*)0,&p_2384->g_4,&p_2384->g_4,&p_2384->g_4,(void*)0,&p_2384->g_73},{&p_2384->g_73,&p_2384->g_73,(void*)0,&p_2384->g_4,&p_2384->g_4,&p_2384->g_4,(void*)0,&p_2384->g_73},{&p_2384->g_73,&p_2384->g_73,(void*)0,&p_2384->g_4,&p_2384->g_4,&p_2384->g_4,(void*)0,&p_2384->g_73},{&p_2384->g_73,&p_2384->g_73,(void*)0,&p_2384->g_4,&p_2384->g_4,&p_2384->g_4,(void*)0,&p_2384->g_73}};
            int32_t *l_970 = (void*)0;
            uint32_t *l_972 = &p_2384->g_280[5];
            int i, j;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 2; j++)
                    l_933[i][j] = &p_2384->g_7;
            }
            (*p_2384->g_568) = (safe_div_func_int64_t_s_s(l_908, 1L));
            for (l_907 = (-16); (l_907 != 13); ++l_907)
            { /* block id: 491 */
                int32_t *l_917 = (void*)0;
                int32_t *l_918 = (void*)0;
                int32_t *l_919 = (void*)0;
                int32_t *l_920 = (void*)0;
                int32_t *l_921 = &l_872;
                int32_t *l_923 = &p_2384->g_7;
                int32_t *l_924 = &l_922[1][1][1];
                int32_t *l_925 = &l_922[3][1][2];
                int32_t *l_926 = &p_2384->g_113;
                int32_t *l_927 = &l_908;
                int32_t *l_928[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                --l_929;
            }
            ++l_934;
            for (p_2384->g_60 = (-9); (p_2384->g_60 == 32); p_2384->g_60 = safe_add_func_int32_t_s_s(p_2384->g_60, 1))
            { /* block id: 497 */
                uint32_t *l_971 = (void*)0;
                int32_t l_977 = 1L;
                int32_t **l_978 = &l_932;
                for (p_2384->g_4 = 0; (p_2384->g_4 <= 50); ++p_2384->g_4)
                { /* block id: 500 */
                    int32_t ***l_942[2];
                    int32_t ****l_941 = &l_942[0];
                    int32_t *****l_943 = &l_941;
                    uint32_t *l_959 = &p_2384->g_960;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_942[i] = (void*)0;
                    l_947 = func_30(((((FAKE_DIVERGE(p_2384->global_1_offset, get_global_id(1), 10) , (void*)0) == ((*l_943) = l_941)) <= p_23) , (safe_lshift_func_int16_t_s_s(p_23, 7))), l_946, p_2384);
                    (*l_946) = ((*p_22) = (void*)0);
                    l_970 = ((((((--p_2384->g_613) && (safe_sub_func_int64_t_s_s(((safe_sub_func_int64_t_s_s((p_2384->g_349 , ((-3L) >= (((((safe_rshift_func_uint16_t_u_s((*p_2384->g_181), 0)) || ((l_956 == (void*)0) >= (&p_2384->g_422[0][7] == l_957))) | (((*l_959)++) , (safe_rshift_func_uint8_t_u_u((p_2384->g_43 = p_2384->g_233[0]), (((safe_mul_func_uint16_t_u_u(((void*)0 == l_967), p_23)) != p_23) <= p_2384->g_117))))) , l_969[4][4]) != &p_2384->g_73))), 0xB960065DA01D4AF0L)) , p_23), (*p_2384->g_189)))) >= (*p_2384->g_189)) && p_23) | p_23) , &l_916);
                    if ((*l_947))
                        continue;
                }
                l_979 |= ((l_972 = l_971) != (((*p_2384->g_429) = 4L) , func_30(((*l_884) |= (&p_2384->g_369 != l_973)), p_22, p_2384)));
                (*p_2384->g_423) = (GROUP_DIVERGE(1, 1) , (*p_2384->g_319));
            }
        }
        else
        { /* block id: 518 */
            int32_t *l_980 = &l_879;
            int32_t l_987 = 0x6E620EBDL;
            uint32_t l_988 = 0xCFE1F75BL;
            uint16_t ***l_993 = &l_976;
            int32_t *l_1009 = &p_2384->g_113;
            int16_t *l_1010 = (void*)0;
            int16_t *l_1011 = &p_2384->g_111;
            int64_t l_1024[3][1][7] = {{{(-10L),4L,0L,4L,(-10L),(-10L),4L}},{{(-10L),4L,0L,4L,(-10L),(-10L),4L}},{{(-10L),4L,0L,4L,(-10L),(-10L),4L}}};
            volatile int16_t * volatile *l_1094[7][2][3] = {{{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070},{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070}},{{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070},{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070}},{{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070},{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070}},{{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070},{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070}},{{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070},{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070}},{{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070},{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070}},{{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070},{&p_2384->g_1070,&p_2384->g_1070,&p_2384->g_1070}}};
            uint8_t l_1097 = 255UL;
            int8_t l_1121[10][9] = {{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L},{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L},{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L},{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L},{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L},{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L},{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L},{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L},{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L},{(-1L),0L,0x5BL,(-1L),0x1EL,1L,(-1L),0x7CL,0x01L}};
            int32_t *l_1127 = &p_2384->g_337;
            int32_t **l_1126 = &l_1127;
            int64_t **l_1193[2];
            int32_t l_1194[9] = {0x2ED24436L,0x2ED24436L,0x2ED24436L,0x2ED24436L,0x2ED24436L,0x2ED24436L,0x2ED24436L,0x2ED24436L,0x2ED24436L};
            int8_t **l_1241 = &p_2384->g_441;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_1193[i] = &p_2384->g_189;
            (*p_2384->g_720) = l_980;
            l_987 ^= ((safe_div_func_uint16_t_u_u(((0x50L & (p_23 && (((*p_2384->g_429) = 0x6748BB08L) , (**p_2384->g_200)))) , 65526UL), FAKE_DIVERGE(p_2384->local_2_offset, get_local_id(2), 10))) > ((safe_div_func_uint8_t_u_u(((p_2384->g_147[1][0] || (((safe_mul_func_int16_t_s_s(((((*l_980) , GROUP_DIVERGE(1, 1)) != (0x65L >= (((!p_2384->g_135) || 0x74ECE1AE0CE109A3L) != p_23))) != (*p_2384->g_441)), (*l_980))) < p_23) >= (*p_2384->g_189))) , p_23), (**l_946))) && p_23));
            l_987 = ((*l_980) = (p_2384->g_280[1] & (l_988 ^ ((**p_2384->g_200) ^ p_23))));
            if ((safe_add_func_int16_t_s_s((safe_sub_func_int16_t_s_s((&p_2384->g_592 == ((*l_993) = (void*)0)), (((safe_lshift_func_uint16_t_u_s(65531UL, 11)) & ((((!(((safe_lshift_func_uint8_t_u_s((0xB59492606D75850FL & ((!(*p_2384->g_181)) && ((safe_mul_func_int16_t_s_s(((*l_1011) = (((safe_lshift_func_int16_t_s_u(((*l_980) < ((((((l_922[3][0][2] &= ((!((l_1002 == ((p_23 , (safe_add_func_int64_t_s_s(((safe_mul_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((*l_1009) = ((*p_2384->g_266) && 8L)), 4294967288UL)), (*p_2384->g_181))) & 0x99L), 5UL))) , l_1002)) | (*p_2384->g_568))) , (*l_1009))) | p_23) >= 0x680BDE99844CBD80L) >= p_23) < p_2384->g_147[1][0]) < (*l_980))), 13)) , (*l_911)) == &p_2384->g_179)), (*p_2384->g_181))) | p_2384->g_674[0]))), (*p_2384->g_441))) , &l_906[0]) != &l_906[2])) , 0xD3L) | GROUP_DIVERGE(1, 1)) , p_23)) & p_23))), p_23)))
            { /* block id: 528 */
                int8_t l_1027[6] = {0x0CL,0x0CL,0x0CL,0x0CL,0x0CL,0x0CL};
                int32_t l_1047 = 7L;
                int32_t l_1060 = 9L;
                int16_t ***l_1071 = &l_956;
                int32_t *****l_1169[5];
                uint32_t **l_1192 = &l_968;
                int16_t l_1212 = 0x2692L;
                int i;
                for (i = 0; i < 5; i++)
                    l_1169[i] = &l_957;
                for (l_916 = 0; (l_916 >= 18); l_916++)
                { /* block id: 531 */
                    uint32_t *l_1035 = &p_2384->g_960;
                    int32_t l_1037 = 0x6DAFC0FBL;
                    int32_t l_1061 = 0x1DD3CA99L;
                    for (p_2384->g_613 = (-29); (p_2384->g_613 == 49); p_2384->g_613++)
                    { /* block id: 534 */
                        uint8_t *l_1034 = &p_2384->g_117;
                        int32_t l_1036 = 0x486E1B52L;
                        uint8_t *l_1038 = &p_2384->g_43;
                        int64_t *l_1040 = &p_2384->g_107;
                        int32_t l_1041 = 0x18AB9227L;
                        (1 + 1);
                    }
                    if (p_2384->g_190)
                        goto lbl_1042;
                    if ((*l_1009))
                    { /* block id: 549 */
                        uint8_t *l_1056 = &p_2384->g_43;
                        uint32_t *l_1057 = &l_979;
                        int32_t l_1062[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1062[i] = (-1L);
                        (*l_1009) = (safe_mod_func_uint32_t_u_u((((((safe_div_func_uint8_t_u_u(p_2384->g_87, ((l_1047 ^ p_2384->g_337) & ((l_1061 = (l_1060 |= ((safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_2384->global_2_offset, get_global_id(2), 10), 5UL)) , (((safe_rshift_func_uint16_t_u_u(0xE964L, 5)) != (((*l_1057) = (safe_mul_func_uint8_t_u_u(((*l_1056) |= (safe_div_func_uint32_t_u_u(4294967295UL, ((*p_2384->g_568) &= 0x4ABC9FC3L)))), ((*p_2384->g_441) = (-1L))))) != (safe_rshift_func_int16_t_s_u(0x6949L, l_1037)))) > (*p_2384->g_189))))) || p_2384->g_960)))) == l_1037) ^ p_2384->g_337) > l_1062[0]) == p_2384->g_349), 1L));
                        (*l_946) = &p_23;
                        (*l_980) = (-6L);
                    }
                    else
                    { /* block id: 559 */
                        return p_2384->g_233[4];
                    }
                    return p_23;
                }
                if ((((**l_946) < p_2384->g_194) & GROUP_DIVERGE(1, 1)))
                { /* block id: 564 */
                    int32_t l_1092 = 5L;
                    uint16_t **l_1098 = &p_2384->g_181;
                    int32_t *l_1111 = &l_922[5][0][0];
                    (*l_946) = &l_987;
                    if (((*l_1009) &= ((((*p_2384->g_189) = ((void*)0 != l_1063)) , (safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((safe_div_func_uint64_t_u_u((p_2384->g_1068 == l_1071), (safe_sub_func_uint8_t_u_u((!((void*)0 == (*l_1002))), (safe_rshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(((void*)0 == (*l_871)), p_2384->g_1078)), 1)))))) == (*p_2384->g_441))))) ^ (*p_2384->g_568))))
                    { /* block id: 568 */
                        uint8_t *l_1083[2][3][4] = {{{&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43},{&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43},{&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43}},{{&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43},{&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43},{&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43}}};
                        int32_t *l_1093 = &l_908;
                        int i, j, k;
                        (*l_1093) |= ((*l_980) = ((*l_1009) = (safe_mod_func_int32_t_s_s((*p_2384->g_345), ((*p_2384->g_568) &= (((safe_rshift_func_uint8_t_u_s((p_2384->g_43 = 2UL), 0)) ^ (!p_23)) & (safe_sub_func_uint64_t_u_u(((~((*p_2384->g_441) = 0x03L)) == ((safe_sub_func_int64_t_s_s(((*p_2384->g_189) = l_1047), ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((~65533UL), 0x36FDL)), l_1092)) < 0x9F9EA948L))) , 0x7CL)), p_23))))))));
                    }
                    else
                    { /* block id: 576 */
                        uint8_t *l_1108 = &p_2384->g_43;
                        l_1094[3][1][2] = (*p_2384->g_1068);
                        (*p_2384->g_568) = (~0x180AB261L);
                        (*p_2384->g_410) = ((safe_lshift_func_uint8_t_u_u(((*l_980) |= (&p_22 != &p_2384->g_410)), (((0x4BL < l_1097) , l_1098) != (((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((*l_1108) = ((-1L) != ((safe_rshift_func_uint8_t_u_u(((((***p_2384->g_1068) && (0x49D1L & (((safe_rshift_func_uint16_t_u_s(((**l_867) = (*p_2384->g_592)), 12)) , l_1092) <= l_1027[1]))) < p_2384->g_1107) ^ 0x186582CB713CFC83L), 2)) > p_23))))) >= p_23) , (void*)0)))) , (*p_2384->g_423));
                        return p_2384->g_192;
                    }
                    for (p_2384->g_135 = 0; (p_2384->g_135 >= 17); ++p_2384->g_135)
                    { /* block id: 587 */
                        l_1111 = &p_23;
                        (*p_2384->g_423) = (*p_2384->g_410);
                        (*l_946) = &p_23;
                    }
                    if (((void*)0 == &p_2384->g_164))
                    { /* block id: 592 */
                        int8_t ***l_1120 = &p_2384->g_440;
                        int32_t l_1122 = 0L;
                        (*p_22) = (*p_2384->g_626);
                        (*p_2384->g_568) = ((safe_div_func_uint16_t_u_u((((l_1027[5] && (safe_div_func_int16_t_s_s((((*l_1111) | (safe_mod_func_int16_t_s_s((**p_2384->g_1069), (((*l_968) = (((*p_2384->g_189) > 0xC19B20C2AECBF666L) , (FAKE_DIVERGE(p_2384->global_0_offset, get_global_id(0), 10) <= (safe_div_func_uint16_t_u_u((((*p_2384->g_181) = (*l_1111)) || (l_1027[1] & ((void*)0 != l_1120))), 0x7756L))))) && l_1121[8][3])))) > p_23), p_23))) && l_1122) , (**l_946)), GROUP_DIVERGE(2, 1))) == 0UL);
                        (*l_946) = &l_1060;
                    }
                    else
                    { /* block id: 598 */
                        int64_t l_1130 = 5L;
                        int32_t l_1141 = 0x4D992C2FL;
                        int32_t l_1163 = 7L;
                        int32_t *l_1164[8][8][4] = {{{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916}},{{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916}},{{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916}},{{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916}},{{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916}},{{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916}},{{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916}},{{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916},{&l_1141,(void*)0,(void*)0,&l_916}}};
                        int32_t **l_1179[4];
                        uint8_t *l_1180 = &l_1097;
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_1179[i] = (void*)0;
                        l_1141 &= ((p_2384->g_1123 = &p_2384->g_68[0][0][2]) != (((l_1047 &= ((*p_2384->g_441) = (((l_1060 = (((**l_867) = (~((**l_946) != 0L))) & (0x0E41L < (((l_1126 == l_1128) > l_1130) , (((((safe_add_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((*p_2384->g_189) ^ (safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(p_2384->g_194, 5)), (*l_1009))), (*l_1111)))), (*l_980))), (*l_980))) | 4L) , l_1130) || (*p_2384->g_345)) , l_1130))))) >= (-1L)) <= (*l_1111)))) && p_23) , (void*)0));
                        (*p_22) = (l_1164[3][0][0] = (*p_2384->g_720));
                        p_2384->g_7 &= ((safe_sub_func_uint16_t_u_u((FAKE_DIVERGE(p_2384->group_0_offset, get_group_id(0), 10) , (*p_2384->g_181)), p_23)) != (p_2384->g_68[1][0][2] == ((*l_1180) |= ((safe_rshift_func_uint8_t_u_u(0xFBL, ((void*)0 != l_1169[1]))) | ((***p_2384->g_1068) != ((((safe_add_func_int64_t_s_s((safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((0x2525L > (safe_unary_minus_func_int64_t_s(((~(p_23 != (*p_2384->g_181))) ^ (*l_1009))))), 0x33L)), (*l_1111))), (-9L))), (*p_2384->g_189))) , (*p_2384->g_370)) , &l_1129) != l_1179[1]))))));
                        (*l_980) = ((safe_lshift_func_int8_t_s_s(0L, 6)) == ((safe_mod_func_uint64_t_u_u((((*p_2384->g_568) = ((*l_1009) ^= (((safe_mod_func_int32_t_s_s((p_2384->g_131 > (((*p_2384->g_189) ^ (((void*)0 == l_1187[0]) > (*p_2384->g_189))) > (safe_mod_func_uint64_t_u_u((3L != ((safe_sub_func_uint16_t_u_u(((void*)0 == l_1192), p_23)) != 0x6FL)), (*p_2384->g_189))))), (**p_22))) , l_1193[0]) != (void*)0))) || (**p_2384->g_200)), 0xD21F54B5D0F3B28DL)) >= FAKE_DIVERGE(p_2384->local_2_offset, get_local_id(2), 10)));
                    }
                }
                else
                { /* block id: 615 */
                    uint64_t l_1195 = 1UL;
                    int8_t l_1226 = 9L;
                    int32_t l_1235 = 1L;
                    int32_t l_1236 = 0L;
                    l_1195++;
                    if (((((***p_2384->g_1068) , 9L) != (&l_1094[2][0][0] == &p_2384->g_1069)) , ((safe_mod_func_uint64_t_u_u((safe_mod_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((FAKE_DIVERGE(p_2384->local_0_offset, get_local_id(0), 10) , ((((**l_1192)++) != ((*l_1009) &= ((safe_rshift_func_int8_t_s_u(((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(((*p_2384->g_181) ^= (((((l_1212 , l_1213) != (void*)0) && (safe_mul_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((((*p_2384->g_164) != &l_988) != p_23), (**p_2384->g_720))), (-8L)))) == p_23) <= p_2384->g_239)), 2)), p_23)) , p_23), 7)) , p_23))) , 0x3411L)), l_1195)), (*l_980))), p_2384->g_582)) && 18446744073709551615UL)))
                    { /* block id: 620 */
                        uint16_t *l_1233 = (void*)0;
                        uint16_t *l_1234 = &p_2384->g_1078;
                        l_1236 = (l_1235 = (safe_add_func_uint16_t_u_u((*p_2384->g_592), (safe_sub_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(0x30E1L, ((*l_1234) |= ((((l_1226 || (p_2384->g_147[1][0] &= ((safe_mul_func_int8_t_s_s(l_1226, (safe_mod_func_uint8_t_u_u(((-4L) == p_23), p_2384->g_887)))) != p_23))) != ((*p_2384->g_441) = (safe_rshift_func_int8_t_s_u((((**l_867) |= p_23) < p_2384->g_4), 7)))) ^ 0x07L) && (*p_2384->g_181))))), p_23)))));
                    }
                    else
                    { /* block id: 627 */
                        (*p_2384->g_423) = (*p_2384->g_423);
                        return p_23;
                    }
                    (*p_2384->g_568) = (safe_add_func_int16_t_s_s(((void*)0 != &p_2384->g_200), (((*l_1011) = 0x66B7L) <= (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), 10)))));
                    l_1241 = ((**l_1214) = (void*)0);
                }
            }
            else
            { /* block id: 636 */
                int32_t *l_1242 = &p_2384->g_235;
                (*l_946) = l_1242;
            }
        }
        for (l_979 = 0; (l_979 <= 7); l_979 += 1)
        { /* block id: 642 */
            int64_t l_1255 = (-1L);
            int32_t l_1269 = 0x2243B4A8L;
            int32_t l_1272 = 8L;
            int32_t l_1288 = 0x28F17297L;
            int32_t l_1289 = 0x3B133BD4L;
            int32_t ***l_1300 = &l_870[0][5];
            uint16_t ***l_1302 = &l_867;
            int32_t **l_1322 = &p_2384->g_568;
            int32_t *****l_1339[7] = {&l_957,&p_2384->g_1310,&l_957,&l_957,&p_2384->g_1310,&l_957,&l_957};
            uint32_t ***l_1344 = (void*)0;
            int i;
            for (p_2384->g_43 = 0; (p_2384->g_43 <= 7); p_2384->g_43 += 1)
            { /* block id: 645 */
                uint32_t l_1243 = 0xB9FDCC6DL;
                int32_t *l_1244 = &p_2384->g_337;
                (*p_2384->g_1246) = ((*p_2384->g_423) == (((l_1243 , (((*l_1128) = l_1244) != &p_2384->g_582)) , 0x71E864ECBA9B7818L) , (*p_2384->g_410)));
                (*p_2384->g_345) = (safe_add_func_uint8_t_u_u(255UL, (0x58374022L & 0x4B9DA60FL)));
                p_23 &= 0x4AD4F6EBL;
            }
            (*p_2384->g_526) = (p_2384->g_192 , (*p_2384->g_423));
            for (p_2384->g_613 = 0; (p_2384->g_613 <= 7); p_2384->g_613 += 1)
            { /* block id: 654 */
                int16_t l_1264 = 0x08DEL;
                int8_t l_1271[2][5][2] = {{{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L}},{{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L},{0x2CL,0x10L}}};
                int32_t *l_1359 = &l_916;
                int i, j, k;
                if (p_23)
                    break;
                for (l_1039 = 0; (l_1039 <= 7); l_1039 += 1)
                { /* block id: 658 */
                    int16_t l_1267 = 0L;
                    uint16_t *l_1268 = &p_2384->g_1078;
                    uint16_t *l_1270 = &p_2384->g_4;
                    int32_t *l_1274 = &l_879;
                    int32_t *l_1275 = &l_879;
                    int32_t *l_1276 = (void*)0;
                    int32_t *l_1277 = &l_879;
                    int32_t *l_1278 = (void*)0;
                    int32_t *l_1279 = &p_2384->g_235;
                    int32_t *l_1280 = &l_922[4][2][0];
                    int32_t *l_1281 = &p_2384->g_113;
                    int32_t *l_1282 = (void*)0;
                    int32_t *l_1283 = &l_872;
                    int32_t *l_1284 = &l_1272;
                    int32_t *l_1285 = &l_872;
                    int32_t *l_1286 = &p_2384->g_113;
                    int32_t *l_1287[5][4] = {{&l_879,&l_879,&p_2384->g_7,&l_1269},{&l_879,&l_879,&p_2384->g_7,&l_1269},{&l_879,&l_879,&p_2384->g_7,&l_1269},{&l_879,&l_879,&p_2384->g_7,&l_1269},{&l_879,&l_879,&p_2384->g_7,&l_1269}};
                    uint64_t l_1290 = 0x88DD5D72A1121350L;
                    uint8_t *l_1299 = &p_2384->g_117;
                    int i, j;
                    l_1272 |= (safe_sub_func_int16_t_s_s((p_23 <= ((*l_1270) = ((*p_2384->g_181) , (safe_lshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u((l_1269 &= ((*l_1268) ^= ((*p_2384->g_1068) != (((l_1255 , ((**l_911) = ((safe_sub_func_uint64_t_u_u(((safe_add_func_uint16_t_u_u((((((safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_s((((l_1264 < (((*p_2384->g_189) = ((!(safe_div_func_int16_t_s_s((l_886 == &p_2384->g_601), ((**l_867) = (*p_2384->g_181))))) != (&p_2384->g_601 == (void*)0))) && l_1267)) , (*p_2384->g_181)) ^ p_23), l_1264)), p_23)) != 0x735B3376L) < p_23) ^ p_2384->g_194) | p_2384->g_7), p_23)) , l_1267), l_1264)) >= (*p_2384->g_441)))) <= p_23) , (void*)0)))), p_23)), p_2384->g_107))))), l_1271[0][0][0]));
                    l_1290--;
                    (*l_1285) |= (((l_1271[1][1][0] || p_23) , &l_867) != ((l_1289 != (safe_mul_func_uint16_t_u_u(((p_23 >= (safe_mul_func_int8_t_s_s((~((*l_1275) < (((*l_1299) = (safe_mod_func_uint8_t_u_u(l_1271[0][0][0], 0x19L))) < (((l_1300 != (void*)0) , 5UL) | l_1301)))), 0x5FL))) <= p_23), 0x77A3L))) , l_1302));
                    for (p_2384->g_73 = 0; (p_2384->g_73 <= 3); p_2384->g_73 += 1)
                    { /* block id: 671 */
                        int32_t *****l_1312 = &l_957;
                        int32_t *****l_1313 = &p_2384->g_1310;
                        uint64_t *l_1320 = &p_2384->g_198;
                        uint64_t *l_1321 = &l_1290;
                        int16_t *l_1356 = (void*)0;
                        int16_t *l_1357 = &l_1264;
                        int i, j;
                        (*p_22) = func_30((safe_unary_minus_func_uint64_t_u(((*l_1321) = (safe_lshift_func_uint8_t_u_u((l_1271[0][0][0] & (p_2384->g_111 , (safe_mod_func_uint64_t_u_u((((((safe_mod_func_int8_t_s_s((((*l_1313) = ((*l_1312) = p_2384->g_1310)) != &l_973), p_23)) && ((*p_2384->g_266) ^ 1UL)) > (((*l_1320) ^= (((((safe_lshift_func_int8_t_s_s(((l_1271[0][0][0] && (safe_mod_func_int64_t_s_s(((((*l_886) = (((((l_1272 < p_23) < GROUP_DIVERGE(2, 1)) <= p_23) <= p_23) != 0x0EE52BF4L)) , (void*)0) == &p_22), 1L))) , (*p_2384->g_441)), 5)) > 3UL) != 0L) <= 1L) > p_2384->g_582)) != 0x3E9CDF6BF639C617L)) ^ p_23) < p_23), p_23)))), p_2384->g_190))))), l_1322, p_2384);
                        (*p_22) = func_30((safe_add_func_uint32_t_u_u((p_2384->g_135 && p_23), (safe_lshift_func_int8_t_s_s(((*p_2384->g_441) &= (safe_div_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(p_23, ((safe_lshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((((safe_mod_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(((((GROUP_DIVERGE(1, 1) && p_23) | (**p_22)) , (void*)0) == l_1339[2]), p_23)), ((safe_lshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s(p_23, 4UL)), 9)) , 0x22L))) , 9L) , l_1344) != &p_2384->g_164), (*p_2384->g_1070))), FAKE_DIVERGE(p_2384->global_2_offset, get_global_id(2), 10))) & 0x42L))), 255UL))), p_23)))), &l_1287[2][3], p_2384);
                        l_1359 = func_30(((((safe_sub_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((*p_2384->g_592), (((*l_1357) = (p_2384->g_117 , ((((safe_sub_func_uint16_t_u_u((*p_2384->g_181), ((l_1271[0][0][0] > (((0xCBCA1E9D0569B7D8L > (*p_2384->g_189)) ^ (safe_lshift_func_uint8_t_u_s((0x560AL || (safe_unary_minus_func_uint32_t_u(0x5E73AA92L))), ((*p_2384->g_441) = ((safe_mul_func_int16_t_s_s(l_1264, (*p_2384->g_181))) > p_23))))) != p_23)) != p_2384->g_960))) == 0x59L) < p_23) || 0x7D62AC96L))) , p_2384->g_280[1]))), p_23)) ^ 0x3CL) < p_2384->g_601) , p_2384->g_111), p_2384->g_1358, p_2384);
                    }
                }
                if ((*p_2384->g_1246))
                    continue;
            }
            (*p_2384->g_369) = &p_23;
        }
        l_1378 = ((safe_sub_func_uint64_t_u_u(p_23, (((void*)0 != &p_2384->g_107) <= (((*p_2384->g_201) <= (l_1362 == (p_2384->g_280[1] &= (safe_lshift_func_int8_t_s_s((l_1365 && (((safe_mul_func_int16_t_s_s((p_23 || (l_872 = (safe_div_func_uint32_t_u_u(p_23, (safe_unary_minus_func_uint64_t_u((safe_rshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u(((void*)0 == p_2384->g_1375), p_23)), 1)))))))), 1UL)) < 0x1753L) >= p_23)), 4))))) , p_23)))) & (-1L));
    }
    else
    { /* block id: 692 */
        uint32_t l_1379 = 0x70B85730L;
        int32_t l_1401 = (-1L);
        int32_t l_1440 = 1L;
        int32_t l_1468[2][6][3] = {{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}}};
        int32_t **l_1585 = (void*)0;
        uint32_t ***l_1705 = &p_2384->g_164;
        int32_t l_1724 = 0x61A248C8L;
        int16_t l_1766 = 1L;
        int8_t l_1768 = 0x46L;
        int32_t ***l_1810 = &l_870[2][8];
        int32_t **l_1825 = &p_2384->g_370;
        uint32_t *l_1829[3][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int16_t ***l_1952 = &l_1930;
        uint8_t l_1960 = 0x63L;
        uint32_t ****l_1980 = &p_2384->g_1415;
        int8_t *****l_2078[3][2][3] = {{{&l_1214,&l_1214,&l_1214},{&l_1214,&l_1214,&l_1214}},{{&l_1214,&l_1214,&l_1214},{&l_1214,&l_1214,&l_1214}},{{&l_1214,&l_1214,&l_1214},{&l_1214,&l_1214,&l_1214}}};
        uint32_t l_2156[3];
        int64_t l_2174 = 0x4E653584D24333FEL;
        int32_t l_2182 = 0x683D4537L;
        int32_t l_2183[8][3] = {{0x159B8BBEL,0L,0L},{0x159B8BBEL,0L,0L},{0x159B8BBEL,0L,0L},{0x159B8BBEL,0L,0L},{0x159B8BBEL,0L,0L},{0x159B8BBEL,0L,0L},{0x159B8BBEL,0L,0L},{0x159B8BBEL,0L,0L}};
        uint16_t l_2201 = 65529UL;
        uint8_t l_2261 = 1UL;
        int32_t l_2306 = (-1L);
        uint64_t l_2358 = 0xD9B6530D8BC5952BL;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_2156[i] = 0UL;
        (*p_2384->g_568) |= l_1379;
        if (((*p_2384->g_568) = (((safe_lshift_func_int8_t_s_s((p_23 < (safe_lshift_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((&l_1214 == (p_2384->g_1386 = &l_1214)), p_23)), (((((safe_mod_func_int8_t_s_s(((*p_2384->g_441) = (*p_2384->g_441)), p_2384->g_601)) , (safe_add_func_int8_t_s_s(((((((9UL == (safe_sub_func_int8_t_s_s(0x4AL, ((safe_div_func_int32_t_s_s((((*p_2384->g_441) &= (safe_div_func_uint16_t_u_u(((*p_2384->g_181) &= p_23), 1UL))) >= 0x2EL), p_23)) > 0L)))) & p_23) < (**p_2384->g_626)) != p_2384->g_582) || p_23) , p_23), l_1379))) , 4294967287UL) == 0x2802653DL) <= p_23)))), 2)) , p_23) , 0x0F08A710L)))
        { /* block id: 699 */
            uint8_t l_1409 = 0x64L;
            int32_t l_1425 = (-6L);
            (*p_2384->g_568) = (l_1401 = p_23);
            for (p_2384->g_87 = 0; (p_2384->g_87 <= 0); p_2384->g_87 += 1)
            { /* block id: 704 */
                uint32_t *l_1407 = &l_1379;
                int32_t l_1408 = 4L;
                int32_t *l_1410 = &p_2384->g_235;
                uint32_t ****l_1420 = (void*)0;
                uint32_t ***l_1422 = (void*)0;
                uint32_t ****l_1421 = &l_1422;
                uint64_t l_1429[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_1429[i] = 8UL;
                for (p_2384->g_1107 = 0; (p_2384->g_1107 >= 0); p_2384->g_1107 -= 1)
                { /* block id: 707 */
                    uint32_t l_1402 = 0x60084511L;
                    if (l_1402)
                        break;
                    for (p_23 = 0; (p_23 >= 0); p_23 -= 1)
                    { /* block id: 711 */
                        return p_2384->g_190;
                    }
                }
                (*l_1410) = ((*p_2384->g_1156) , (p_23 && (l_1409 ^= (((safe_rshift_func_uint16_t_u_s(((((**l_946) , (((**l_946) ^= (((l_1401 = ((safe_add_func_uint8_t_u_u((p_23 && p_2384->g_107), 0L)) , l_1379)) , ((*l_1407) = (4294967295UL > l_1379))) <= l_1408)) | 0x40231D7FL)) & p_2384->g_87) <= (*p_2384->g_441)), 15)) , (**p_2384->g_200)) != p_2384->g_147[0][0]))));
                (*p_2384->g_1430) = ((**l_946) = (safe_mul_func_int16_t_s_s((((safe_rshift_func_uint8_t_u_u((&l_967 == (p_2384->g_1415 = p_2384->g_1415)), p_2384->g_111)) > (safe_lshift_func_uint8_t_u_u((+(((*l_1421) = &p_2384->g_1416) == ((safe_add_func_int8_t_s_s(((((l_1425 = 0x13313F4FL) , (*p_2384->g_429)) , (l_1407 == (void*)0)) == (safe_div_func_uint32_t_u_u((safe_unary_minus_func_uint8_t_u((((*l_1410) &= (*p_2384->g_189)) == p_2384->g_668))), l_1401))), 0x23L)) , (void*)0))), p_2384->g_68[0][0][1]))) != l_1429[0]), p_23)));
                (*p_2384->g_1358) = (*l_946);
                for (l_1408 = 0; (l_1408 <= 0); l_1408 += 1)
                { /* block id: 729 */
                    for (l_1409 = 0; (l_1409 <= 0); l_1409 += 1)
                    { /* block id: 732 */
                        (*p_2384->g_568) = ((void*)0 == p_22);
                    }
                    for (p_2384->g_60 = 0; (p_2384->g_60 <= 0); p_2384->g_60 += 1)
                    { /* block id: 737 */
                        (*p_2384->g_568) = 0x38FF45ABL;
                        return p_2384->g_674[0];
                    }
                    (**l_946) ^= (*p_2384->g_345);
                }
            }
            (*p_22) = &l_1425;
            (**p_22) = p_2384->g_1431;
        }
        else
        { /* block id: 746 */
            return p_23;
        }
        for (p_2384->g_117 = 0; (p_2384->g_117 > 38); p_2384->g_117++)
        { /* block id: 751 */
            int32_t l_1448 = (-1L);
            int32_t l_1467 = 0x095D378EL;
            int32_t l_1469 = 0x755FC3E2L;
            int32_t l_1476 = 0x476E837CL;
            int32_t l_1477[8];
            int32_t l_1483 = 1L;
            int32_t l_1486 = 0x0E9663BAL;
            int32_t l_1487 = 0x25362629L;
            int32_t l_1489 = 0x7CC14E9DL;
            int32_t l_1492 = 0x3515756BL;
            int32_t *l_1507 = &l_1467;
            int32_t **l_1586 = &p_2384->g_1123;
            uint32_t ***l_1693 = &l_1514[0];
            int32_t **l_1736 = &p_2384->g_429;
            int32_t *l_1767 = &l_1486;
            uint64_t *l_1845 = &p_2384->g_613;
            int32_t ****l_1877 = (void*)0;
            int16_t **l_1887[9] = {&p_2384->g_647,&p_2384->g_647,&p_2384->g_647,&p_2384->g_647,&p_2384->g_647,&p_2384->g_647,&p_2384->g_647,&p_2384->g_647,&p_2384->g_647};
            uint32_t ***l_1901 = (void*)0;
            int8_t *l_1944 = (void*)0;
            int8_t *l_1987 = &p_2384->g_179;
            uint16_t l_2013 = 0x65D8L;
            uint64_t l_2034[2][4][5] = {{{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}},{{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}}};
            int i, j, k;
            for (i = 0; i < 8; i++)
                l_1477[i] = 5L;
            (1 + 1);
        }
        if (((safe_unary_minus_func_uint64_t_u(p_2384->g_111)) || l_2155))
        { /* block id: 1082 */
            uint32_t l_2171 = 4294967292UL;
            int32_t *l_2175 = (void*)0;
            int32_t *l_2176 = &l_879;
            int32_t *l_2177 = &l_1933;
            int32_t *l_2178 = &l_1495;
            int32_t *l_2179 = &l_1468[1][5][0];
            int32_t *l_2180 = &l_1468[1][0][0];
            int32_t *l_2181[2];
            int i;
            for (i = 0; i < 2; i++)
                l_2181[i] = (void*)0;
            (*l_1994) = ((l_2156[1] , ((safe_div_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u(p_23, (safe_mul_func_int16_t_s_s((((safe_add_func_uint16_t_u_u((1L || (***p_2384->g_1068)), (p_2384->g_147[1][0] &= (safe_sub_func_int16_t_s_s((safe_add_func_uint32_t_u_u(((-6L) >= ((safe_rshift_func_int16_t_s_u(((p_23 & ((*l_2081) && p_23)) , ((&p_2384->g_428[1] == (void*)0) == 1UL)), (*p_2384->g_181))) , (*p_2384->g_1417))), l_2171)), l_2171))))) , (*p_2384->g_1415)) != l_2172), p_23)))), p_23)) && (*p_2384->g_345))) || l_2173);
            --p_2384->g_2184;
            (*p_2384->g_423) = (*p_2384->g_526);
        }
        else
        { /* block id: 1087 */
            int32_t l_2191 = 0x6F97BCB1L;
            uint8_t *l_2224 = &p_2384->g_117;
            uint8_t **l_2223 = &l_2224;
            int32_t l_2230 = 0x4C933337L;
            int32_t l_2238 = (-7L);
            int32_t l_2260[2][4][6] = {{{0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L},{0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L},{0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L},{0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L}},{{0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L},{0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L},{0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L},{0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L,0x3C7F4BD8L}}};
            int32_t ****l_2293 = &p_2384->g_1311[1][0][1];
            int32_t l_2295 = 0x25FBAE6CL;
            uint8_t l_2307 = 0x00L;
            int32_t *l_2310 = &l_2238;
            int32_t *l_2311 = &l_1494;
            int32_t *l_2312 = &l_1480;
            int32_t *l_2313 = (void*)0;
            int32_t *l_2314 = &l_1724;
            int32_t *l_2315 = &l_2183[7][1];
            int32_t *l_2316 = &l_1495;
            int32_t *l_2317 = (void*)0;
            int32_t *l_2318 = &l_1494;
            int32_t *l_2319 = &l_1494;
            int32_t *l_2320 = &l_2183[2][0];
            int32_t *l_2321[2];
            int32_t **l_2348 = &p_2384->g_1123;
            uint8_t *l_2355 = &p_2384->g_1911;
            int8_t *l_2357 = &p_2384->g_463[3];
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_2321[i] = &l_2183[2][1];
            if ((safe_unary_minus_func_int32_t_s(0x1638BDEAL)))
            { /* block id: 1088 */
                for (p_2384->g_198 = 17; (p_2384->g_198 >= 27); p_2384->g_198++)
                { /* block id: 1091 */
                    int32_t *l_2190 = &p_2384->g_7;
                    (*p_22) = l_2190;
                    if (l_2191)
                        break;
                }
            }
            else
            { /* block id: 1095 */
                int16_t l_2212 = 0x6C3DL;
                int32_t l_2237 = 0x28DB1AE9L;
                int32_t l_2240[7] = {0x7874340CL,1L,0x7874340CL,0x7874340CL,1L,0x7874340CL,0x7874340CL};
                int32_t *l_2276[3];
                int32_t *l_2296 = &l_2183[6][2];
                int32_t *l_2297 = &l_1468[1][5][0];
                int32_t *l_2298 = &l_2260[1][0][0];
                int32_t *l_2299 = &l_1493;
                int32_t *l_2300 = &l_2238;
                int32_t *l_2301 = &l_2183[0][0];
                int32_t *l_2302 = &l_2183[6][2];
                int32_t *l_2303 = &l_879;
                int32_t *l_2304 = &l_1482;
                int32_t *l_2305[6] = {&l_1495,&l_1495,&l_1495,&l_1495,&l_1495,&l_1495};
                int i;
                for (i = 0; i < 3; i++)
                    l_2276[i] = &p_2384->g_674[0];
                for (l_2173 = 26; (l_2173 == 50); ++l_2173)
                { /* block id: 1098 */
                    uint8_t *l_2198 = &p_2384->g_117;
                    int32_t l_2211 = (-4L);
                    uint32_t *l_2227[3][5] = {{(void*)0,&p_2384->g_194,&p_2384->g_239,&p_2384->g_194,(void*)0},{(void*)0,&p_2384->g_194,&p_2384->g_239,&p_2384->g_194,(void*)0},{(void*)0,&p_2384->g_194,&p_2384->g_239,&p_2384->g_194,(void*)0}};
                    uint8_t l_2228 = 1UL;
                    int32_t l_2239 = 7L;
                    int32_t l_2258 = 0x73CB1952L;
                    int32_t l_2259 = 4L;
                    int i, j;
                    if ((((***p_2384->g_1375) || (((safe_rshift_func_uint8_t_u_u(p_23, ((*l_2198) = ((safe_mul_func_uint16_t_u_u(65535UL, 0x54FEL)) == GROUP_DIVERGE(1, 1))))) , (((l_2201 = ((***p_2384->g_1415)--)) < (safe_lshift_func_uint8_t_u_s((safe_add_func_int16_t_s_s(((l_2211 = (((~(((safe_unary_minus_func_int8_t_s(0x69L)) ^ (safe_lshift_func_uint8_t_u_u(((p_2384->g_192 || (7L > (p_23 != (((*p_2384->g_429) = (safe_mul_func_uint16_t_u_u((*p_2384->g_181), p_23))) , (*l_1994))))) ^ l_2191), 7))) >= (*p_2384->g_181))) >= p_23) ^ p_23)) <= (**l_946)), (*p_2384->g_181))), l_2212))) < p_23)) , p_23)) , (*l_2081)))
                    { /* block id: 1104 */
                        int32_t l_2229 = 0x4E3F50E1L;
                        int32_t *l_2231 = &l_1365;
                        int32_t *l_2232 = &l_2211;
                        int32_t *l_2233 = &l_1494;
                        int32_t *l_2234 = (void*)0;
                        int32_t *l_2235 = (void*)0;
                        int32_t *l_2236[6];
                        uint8_t l_2241[4][5] = {{254UL,0x24L,255UL,0x24L,254UL},{254UL,0x24L,255UL,0x24L,254UL},{254UL,0x24L,255UL,0x24L,254UL},{254UL,0x24L,255UL,0x24L,254UL}};
                        int i, j;
                        for (i = 0; i < 6; i++)
                            l_2236[i] = &l_2229;
                        (*l_2081) &= ((*p_2384->g_568) = (p_23 = (safe_div_func_int16_t_s_s((((void*)0 != &p_23) && (~(GROUP_DIVERGE(2, 1) , 0x023498E6L))), ((safe_div_func_int64_t_s_s((((-2L) > (((safe_lshift_func_uint16_t_u_s((safe_mod_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((l_2223 == (p_2384->g_613 , p_2384->g_2225)), ((**p_2384->g_200) != ((p_2384->g_2226 = ((**l_1705) = (**l_1705))) != l_2227[2][1])))), p_23)), p_23)) != 255UL) == l_2228)) > GROUP_DIVERGE(1, 1)), 0x475DFCC9F71D6917L)) , p_23)))));
                        if (p_23)
                            continue;
                        ++l_2241[0][3];
                    }
                    else
                    { /* block id: 1112 */
                        uint64_t l_2255 = 0x9EA34219042FB88BL;
                        int32_t l_2256 = 0x2B08463FL;
                        int32_t *l_2257[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_2257[i] = (void*)0;
                        (**l_946) = (((safe_mod_func_uint32_t_u_u(((*p_2384->g_189) , (safe_add_func_int32_t_s_s((l_2240[5] &= (**p_2384->g_626)), (((safe_unary_minus_func_int16_t_s(l_2239)) & 0UL) >= (*p_2384->g_189))))), ((*p_2384->g_441) , (safe_mod_func_int64_t_s_s((safe_sub_func_uint8_t_u_u(((0x52C88D56L | ((safe_lshift_func_int8_t_s_s((-1L), 7)) == l_2255)) || (*p_2384->g_568)), p_23)), 0x6CC22523F84E0F8CL))))) & 0x3CL) & p_23);
                        (*l_1994) = 0L;
                        --l_2261;
                        return (*l_1994);
                    }
                    if (l_2211)
                        continue;
                    return p_2384->g_757;
                }
                (*l_1994) = (((safe_rshift_func_int16_t_s_u((-8L), 12)) , (safe_rshift_func_int8_t_s_s(((--(*l_2224)) | p_23), (((safe_mul_func_uint16_t_u_u(((***p_2384->g_1068) & (safe_rshift_func_uint16_t_u_s(((((!(safe_mul_func_int8_t_s_s((0xC284D449L | 0x234B592EL), 0xCFL))) && (+((((*l_2081) = ((**l_946) = (l_2191 || (l_2276[2] == ((safe_lshift_func_uint16_t_u_u((((p_2384->g_601 < (-8L)) , &l_2240[3]) == (void*)0), 12)) , (void*)0))))) != 0xBCD69959L) && p_23))) ^ p_23) , p_23), p_23))), 0x44EFL)) == 0x0F1B91DFB358544EL) <= FAKE_DIVERGE(p_2384->local_2_offset, get_local_id(2), 10))))) & 0x1BL);
                for (l_1768 = (-16); (l_1768 != (-16)); l_1768++)
                { /* block id: 1128 */
                    int8_t l_2286[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_2286[i] = 0x0CL;
                    l_1440 = (safe_rshift_func_uint8_t_u_s(((*l_2224) = p_23), (((0x06C8B6B2L & (safe_div_func_int64_t_s_s(((l_2285 | l_2286[0]) , (safe_lshift_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2384->group_1_offset, get_group_id(1), 10), 0)) != (((safe_div_func_int32_t_s_s((((((void*)0 != l_2293) , func_30((9L == (((p_23 & (*p_2384->g_189)) <= l_2237) , l_2294)), p_22, p_2384)) != (*p_2384->g_164)) | 1UL), 8L)) | p_23) < 1UL)), l_2286[0]))), p_23))) > l_2295) , (-8L))));
                }
                ++l_2307;
            }
            ++p_2384->g_2322;
            (*p_22) = ((safe_mod_func_int16_t_s_s((p_2384->g_147[2][0] |= (safe_sub_func_int32_t_s_s((l_2224 == (((safe_rshift_func_int16_t_s_u(((*l_2081) = (FAKE_DIVERGE(p_2384->group_1_offset, get_group_id(1), 10) < ((*l_2310) = ((safe_mod_func_uint32_t_u_u((((**p_2384->g_1069) <= p_2384->g_613) || (safe_unary_minus_func_int8_t_s((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (safe_sub_func_uint16_t_u_u((((*p_2384->g_592) | (safe_mod_func_uint32_t_u_u(((safe_div_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_s(((**l_2223) = 0xD8L), ((*p_2384->g_441) = (safe_rshift_func_int16_t_s_u(((((((safe_lshift_func_uint16_t_u_u((l_2348 == ((safe_div_func_uint16_t_u_u(((*p_2384->g_181) = ((p_2384->g_960--) , ((((((0x13L > ((*l_2355) &= ((safe_lshift_func_uint16_t_u_s((p_23 , p_23), (*l_2081))) < 65535UL))) & (-2L)) , 255UL) | 0x47L) , p_2384->g_190) ^ p_2384->g_1078))), 0xA963L)) , &p_2384->g_1123)), p_23)) & l_2356[0][0][0]) && p_23) & p_23) != p_23) <= 0xF2A66D06L), 10))))), (*l_2316))) > 0xD43A108048B8D8FEL), 1UL))) | FAKE_DIVERGE(p_2384->group_2_offset, get_group_id(2), 10)), 9UL))))))), (**l_946))) > p_23)))), p_2384->g_192)) <= p_23) , l_2357)), 7UL))), (-9L))) , (*l_946));
            if ((((l_2358 > (((*p_2384->g_592) >= p_23) && GROUP_DIVERGE(2, 1))) == (p_23 == ((safe_unary_minus_func_uint16_t_u(((*p_2384->g_181) = ((*l_2320) = (((**l_1825) == (safe_unary_minus_func_uint8_t_u(((*l_2224) = p_2384->g_7)))) , (safe_mul_func_int64_t_s_s((*p_2384->g_189), ((safe_mul_func_int8_t_s_s((*l_2311), (safe_lshift_func_uint16_t_u_u((((safe_mod_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_s((((**l_1825) = ((safe_sub_func_int8_t_s_s((((*p_2384->g_189) && 18446744073709551615UL) == p_23), 7UL)) >= 1L)) , GROUP_DIVERGE(2, 1)), 6)) , (*l_2081)), p_23)), GROUP_DIVERGE(1, 1))) ^ p_23) , (*p_2384->g_181)), 15)))) >= p_2384->g_2375)))))))) , (*p_2384->g_189)))) ^ p_2384->g_2376))
            { /* block id: 1148 */
                (*l_2312) = 3L;
                (*p_2384->g_1358) = ((&p_2384->g_1153 != (void*)0) , (*p_22));
            }
            else
            { /* block id: 1151 */
                uint32_t l_2377 = 0x0860C5FDL;
                (*l_2318) ^= (**p_22);
                l_2377++;
            }
        }
    }
    (*l_2081) = (safe_sub_func_uint64_t_u_u(18446744073709551615UL, (((~p_23) , &p_2384->g_589) == (p_2384->g_189 = &p_2384->g_1107))));
    return p_2384->g_349;
}


/* ------------------------------------------ */
/* 
 * reads : p_2384->g_526 p_2384->g_318 p_2384->g_423
 * writes: p_2384->g_318 p_2384->g_370
 */
int32_t ** func_24(int32_t * p_25, int32_t ** p_26, int32_t * p_27, int32_t ** p_28, int32_t ** p_29, struct S0 * p_2384)
{ /* block id: 464 */
    int8_t l_847 = 0L;
    uint32_t *l_850 = &p_2384->g_194;
    uint32_t *l_855[6][9] = {{(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0},{(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0},{(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0},{(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0},{(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0},{(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0,(void*)0,&p_2384->g_87,(void*)0}};
    int32_t **l_856 = &p_2384->g_370;
    int i, j;
    l_847 = (-4L);
    (*p_2384->g_423) = (*p_2384->g_526);
    (*p_26) = (void*)0;
    return l_856;
}


/* ------------------------------------------ */
/* 
 * reads : p_2384->g_720 p_2384->g_198 p_2384->g_410 p_2384->g_318
 * writes: p_2384->g_568 p_2384->g_198 p_2384->g_318
 */
int32_t * func_30(uint64_t  p_31, int32_t ** p_32, struct S0 * p_2384)
{ /* block id: 410 */
    uint32_t l_717 = 0xC018180DL;
    uint32_t *l_718 = &p_2384->g_135;
    int32_t *l_719 = &p_2384->g_113;
    int8_t ***l_732 = &p_2384->g_440;
    uint8_t l_775 = 0x77L;
    int32_t l_780 = 0x0686723CL;
    int32_t l_785 = (-5L);
    int32_t l_786 = (-4L);
    int32_t l_787 = 0x47546764L;
    int32_t l_788 = 0L;
    int32_t l_789 = 6L;
    int32_t l_790[10][5][5] = {{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}},{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}},{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}},{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}},{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}},{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}},{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}},{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}},{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}},{{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)},{(-3L),4L,1L,(-5L),(-1L)}}};
    uint16_t l_832 = 0UL;
    int32_t *l_846 = &p_2384->g_113;
    int i, j, k;
    (*p_2384->g_720) = l_718;
    for (p_2384->g_198 = (-1); (p_2384->g_198 > 17); ++p_2384->g_198)
    { /* block id: 414 */
        uint32_t l_723 = 1UL;
        int8_t ****l_733 = &l_732;
        int8_t ***l_734[5] = {&p_2384->g_440,&p_2384->g_440,&p_2384->g_440,&p_2384->g_440,&p_2384->g_440};
        int8_t *****l_755 = &l_733;
        uint32_t **l_756 = &l_718;
        int32_t l_758 = 0x66A30227L;
        int32_t *l_759 = &p_2384->g_235;
        int8_t l_772 = 3L;
        uint32_t *l_774 = &p_2384->g_280[1];
        int32_t l_791 = (-9L);
        uint32_t l_792 = 1UL;
        int32_t l_828 = 0x49B860BDL;
        int32_t l_830[4];
        int i;
        for (i = 0; i < 4; i++)
            l_830[i] = 0x10D0526AL;
        (*p_2384->g_410) = (*p_2384->g_410);
        if (l_723)
            break;
    }
    return l_846;
}


/* ------------------------------------------ */
/* 
 * reads : p_2384->g_117 p_2384->g_568 p_2384->g_131 p_2384->g_346 p_2384->g_87 p_2384->g_280 p_2384->g_369 p_2384->g_626 p_2384->g_441 p_2384->g_179 p_2384->g_147 p_2384->g_589 p_2384->g_319 p_2384->g_318 p_2384->g_423 p_2384->g_189 p_2384->g_190 p_2384->g_647 p_2384->g_201 p_2384->g_68 p_2384->g_194 p_2384->g_43 p_2384->g_181 p_2384->g_668 p_2384->g_7 p_2384->g_107 p_2384->g_60 p_2384->g_73 p_2384->g_200 p_2384->g_192
 * writes: p_2384->g_117 p_2384->g_7 p_2384->g_589 p_2384->g_87 p_2384->g_113 p_2384->g_198 p_2384->g_370 p_2384->g_568 p_2384->g_235 p_2384->g_190 p_2384->g_147 p_2384->g_440 p_2384->g_179 p_2384->g_43 p_2384->g_73 p_2384->g_107
 */
uint16_t  func_41(uint32_t  p_42, struct S0 * p_2384)
{ /* block id: 341 */
    uint8_t *l_617[10] = {&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43,&p_2384->g_43};
    int32_t l_618 = 0L;
    int32_t l_649[2][3] = {{6L,6L,6L},{6L,6L,6L}};
    uint32_t *l_675 = &p_2384->g_239;
    int32_t *l_677[10][9] = {{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]},{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]},{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]},{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]},{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]},{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]},{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]},{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]},{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]},{&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0],&p_2384->g_235,&p_2384->g_235,&l_649[0][0],(void*)0,&l_649[0][0]}};
    int16_t **l_680[3];
    uint8_t l_682 = 0UL;
    int64_t *l_686[10] = {&p_2384->g_107,&p_2384->g_190,&p_2384->g_107,&p_2384->g_107,&p_2384->g_190,&p_2384->g_107,&p_2384->g_107,&p_2384->g_190,&p_2384->g_107,&p_2384->g_107};
    int i, j;
    for (i = 0; i < 3; i++)
        l_680[i] = &p_2384->g_647;
    (*p_2384->g_568) = (((void*)0 == &p_2384->g_111) >= (--p_2384->g_117));
lbl_687:
    for (p_2384->g_589 = 2; (p_2384->g_589 >= 0); p_2384->g_589 -= 1)
    { /* block id: 346 */
        int64_t l_646 = 0x4B656137AF4BC27BL;
        int32_t l_671 = 0x4AE0FBB5L;
        int32_t *l_672 = (void*)0;
        int32_t *l_673 = &p_2384->g_674[0];
        int32_t *l_676 = &p_2384->g_7;
        int16_t **l_679 = &p_2384->g_647;
        int16_t ***l_678[3][9][7] = {{{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679}},{{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679}},{{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679},{&l_679,(void*)0,&l_679,(void*)0,(void*)0,(void*)0,&l_679}}};
        int32_t l_681 = (-4L);
        int i, j, k;
        for (p_2384->g_87 = 0; (p_2384->g_87 <= 0); p_2384->g_87 += 1)
        { /* block id: 349 */
            uint8_t l_624 = 1UL;
            int32_t *l_625 = &l_618;
            uint64_t l_657[10][5][5] = {{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}},{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}},{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}},{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}},{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}},{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}},{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}},{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}},{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}},{{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L},{1UL,1UL,1UL,0UL,0xC13DA29361331928L}}};
            int16_t *l_662 = &p_2384->g_147[3][0];
            int i, j, k;
            (*p_2384->g_568) = 0x4E4F53F8L;
            for (p_2384->g_113 = 2; (p_2384->g_113 >= 0); p_2384->g_113 -= 1)
            { /* block id: 353 */
                int8_t l_623 = 0x5DL;
                l_624 = (safe_sub_func_uint16_t_u_u((250UL >= 1UL), ((p_2384->g_131 , p_2384->g_346) & l_623)));
                for (p_2384->g_198 = 0; (p_2384->g_198 <= 2); p_2384->g_198 += 1)
                { /* block id: 357 */
                    int i;
                    return p_2384->g_280[(p_2384->g_87 + 2)];
                }
                (*p_2384->g_626) = ((*p_2384->g_369) = ((!p_42) , l_625));
            }
            for (p_2384->g_235 = 0; (p_2384->g_235 >= 0); p_2384->g_235 -= 1)
            { /* block id: 365 */
                uint16_t l_637[3][3] = {{6UL,6UL,6UL},{6UL,6UL,6UL},{6UL,6UL,6UL}};
                int32_t *l_648 = (void*)0;
                int32_t **l_650 = &l_625;
                int8_t **l_653 = (void*)0;
                int8_t ***l_654 = &p_2384->g_440;
                int32_t *l_667[6][7][3] = {{{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0}},{{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0}},{{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0}},{{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0}},{{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0}},{{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0},{&p_2384->g_192,(void*)0,(void*)0}}};
                uint64_t l_669 = 0xF833757D9ACB2DA2L;
                int32_t *l_670 = &p_2384->g_113;
                int i, j, k;
                l_649[0][0] ^= ((*p_2384->g_441) == ((safe_rshift_func_int8_t_s_s((0x55L | (((safe_rshift_func_int8_t_s_u(6L, (p_2384->g_147[1][0] , (safe_lshift_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) > (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_2384->group_2_offset, get_group_id(2), 10), (((0x6B2AE8D3L <= (safe_div_func_int16_t_s_s((l_637[0][1] , (safe_add_func_uint64_t_u_u(((p_2384->g_147[1][0] &= (safe_lshift_func_int16_t_s_u((safe_mod_func_int64_t_s_s(((safe_mul_func_uint8_t_u_u(p_2384->g_589, l_646)) , ((*p_2384->g_189) &= (((*p_2384->g_319) != (*p_2384->g_423)) < l_646))), l_646)), 7))) && (*l_625)), 0UL))), p_42))) == l_618) , (*l_625))))), 5))))) , &p_2384->g_147[2][0]) == p_2384->g_647)), 3)) , p_42));
                (*l_650) = l_625;
                l_657[9][2][3] = (p_42 , (p_42 , (((((*p_2384->g_441) = (((l_618 <= (*p_2384->g_201)) <= (safe_rshift_func_uint16_t_u_s((((*l_654) = l_653) == (void*)0), p_42))) & (((safe_add_func_uint8_t_u_u(l_649[1][1], (p_2384->g_68[0][0][2] & p_42))) , p_2384->g_194) > (*p_2384->g_441)))) & 0x86L) >= p_42) >= (**l_650))));
                l_671 &= ((*l_670) = ((**l_650) = ((0L == p_42) , ((((p_42 , ((((*p_2384->g_181) = ((*l_625) & (p_2384->g_43 ^= 248UL))) | ((safe_add_func_int64_t_s_s(((safe_sub_func_int32_t_s_s((&p_2384->g_147[0][0] != l_662), (p_42 && ((((p_2384->g_117 = (safe_rshift_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((((l_667[3][2][2] = &p_2384->g_192) == (void*)0) < p_2384->g_668), (*l_625))), 0))) != l_646) > l_618) >= p_42)))) ^ l_669), 18446744073709551615UL)) || 0x14L)) >= (*l_625))) ^ (*p_2384->g_441)) , 65535UL) & 0x07CBL))));
            }
        }
        l_677[2][2] = l_676;
        l_680[1] = (void*)0;
        l_682--;
        for (p_42 = 0; (p_42 <= 2); p_42 += 1)
        { /* block id: 389 */
            int16_t l_685 = 0x2966L;
            if ((*l_676))
                break;
            if (l_685)
                continue;
        }
    }
    if (((*p_2384->g_568) = ((p_2384->g_107 &= (*p_2384->g_189)) && p_42)))
    { /* block id: 396 */
        int16_t l_690 = 0x4793L;
        uint64_t *l_711 = &p_2384->g_198;
        int32_t l_712 = 0x00F17F3CL;
        int32_t l_713 = 0x3AA5932DL;
        if (p_2384->g_107)
            goto lbl_687;
        (*p_2384->g_568) ^= (((safe_sub_func_int32_t_s_s((l_690 & (safe_sub_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(1UL, (p_2384->g_147[3][0] = (l_713 = ((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((((*p_2384->g_189) > (((l_712 = (safe_add_func_uint32_t_u_u(p_42, (safe_add_func_uint16_t_u_u(((*p_2384->g_181) |= (safe_div_func_uint32_t_u_u(((safe_add_func_uint8_t_u_u((p_42 & p_2384->g_60), p_42)) , (~GROUP_DIVERGE(0, 1))), GROUP_DIVERGE(0, 1)))), (((safe_lshift_func_int8_t_s_u(((*p_2384->g_441) = 0x2DL), 6)) > (((*l_711) = (safe_add_func_int8_t_s_s((!((**p_2384->g_200) , l_690)), p_2384->g_107))) < 0x17123B7EB4220E3CL)) || p_42)))))) <= 0x1A91L) != 0x25L)) >= p_42) & 0xC8C064BCF5F2D523L), l_713)), p_42)) | p_2384->g_192))))) , p_42), l_690))), GROUP_DIVERGE(2, 1))) == p_42) & p_42);
    }
    else
    { /* block id: 405 */
        uint32_t l_714 = 0x6F32396DL;
        return l_714;
    }
    return p_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_2384->g_582 p_2384->g_337 p_2384->g_613 p_2384->g_73 p_2384->g_280 p_2384->g_117 p_2384->g_441 p_2384->g_349
 * writes: p_2384->g_601 p_2384->g_198 p_2384->g_68 p_2384->g_613 p_2384->g_87 p_2384->g_179
 */
int8_t  func_44(uint8_t  p_45, int32_t  p_46, uint32_t  p_47, uint32_t  p_48, struct S0 * p_2384)
{ /* block id: 331 */
    int16_t l_594 = 0x483BL;
    int8_t **l_599 = &p_2384->g_441;
    uint64_t *l_600 = &p_2384->g_601;
    int32_t *l_608 = (void*)0;
    int32_t *l_609[10][10][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    uint32_t *l_611 = &p_2384->g_87;
    uint32_t **l_610[4][3] = {{&l_611,&l_611,&l_611},{&l_611,&l_611,&l_611},{&l_611,&l_611,&l_611},{&l_611,&l_611,&l_611}};
    uint64_t *l_612 = &p_2384->g_613;
    uint16_t *l_614 = &p_2384->g_73;
    int64_t **l_615 = (void*)0;
    int32_t l_616 = 0x3DC060A6L;
    int i, j, k;
    l_616 = (((l_594 == (safe_mod_func_uint32_t_u_u(((((*l_600) = (safe_sub_func_uint8_t_u_u(p_2384->g_582, ((void*)0 != l_599)))) , ((((*p_2384->g_441) = ((((((p_48 = ((0x3D73L < ((safe_mul_func_int8_t_s_s((((*l_611) = ((safe_add_func_uint8_t_u_u(p_2384->g_337, p_48)) , ((safe_sub_func_int64_t_s_s(((((*l_612) |= ((p_2384->g_198 = l_594) >= ((((p_2384->g_68[0][0][3] = l_594) , l_610[0][1]) != (void*)0) == l_594))) > 18446744073709551615UL) | p_2384->g_73), p_2384->g_280[5])) == FAKE_DIVERGE(p_2384->local_0_offset, get_local_id(0), 10)))) ^ FAKE_DIVERGE(p_2384->local_2_offset, get_local_id(2), 10)), p_2384->g_117)) || 0x75175A2BL)) ^ p_47)) , l_614) == (void*)0) , l_594) , l_615) != &p_2384->g_189)) ^ p_45) , 0x3CFDL)) & p_2384->g_349), l_594))) <= 0x2FDCL) , 0L);
    return l_594;
}


/* ------------------------------------------ */
/* 
 * reads : p_2384->g_60 p_2384->g_7 p_2384->g_87 p_2384->g_68 p_2384->g_107 p_2384->g_73 p_2384->g_235 p_2384->g_318 p_2384->g_319 p_2384->g_201 p_2384->g_200 p_2384->g_280 p_2384->g_113 p_2384->g_189 p_2384->g_190 p_2384->g_164 p_2384->g_266 p_2384->g_192 p_2384->g_15 p_2384->g_345 p_2384->g_181 p_2384->g_346 p_2384->g_349 p_2384->g_198 p_2384->g_117 p_2384->g_179 p_2384->g_369 p_2384->g_135 p_2384->g_111 p_2384->g_394 p_2384->g_410 p_2384->g_395 p_2384->g_370 p_2384->g_422 p_2384->g_428 p_2384->g_442 p_2384->g_147 p_2384->g_463 p_2384->g_526 p_2384->g_165 p_2384->g_568 p_2384->g_429 p_2384->g_337 p_2384->g_441 p_2384->g_589
 * writes: p_2384->g_60 p_2384->g_87 p_2384->g_107 p_2384->g_111 p_2384->g_266 p_2384->g_235 p_2384->g_192 p_2384->g_318 p_2384->g_113 p_2384->g_165 p_2384->g_68 p_2384->g_337 p_2384->g_117 p_2384->g_198 p_2384->g_147 p_2384->g_73 p_2384->g_370 p_2384->g_395 p_2384->g_135 p_2384->g_440 p_2384->g_164 p_2384->g_190 p_2384->g_582 p_2384->g_179
 */
uint16_t * func_50(uint16_t  p_51, uint16_t  p_52, uint16_t  p_53, struct S0 * p_2384)
{ /* block id: 13 */
    uint32_t *l_67 = (void*)0;
    int32_t *l_569[2];
    int32_t **l_570[1];
    int32_t *l_571 = &p_2384->g_113;
    uint64_t l_572 = 0xBCAAB50CA9A1090DL;
    uint64_t l_590 = 0xC677E780621DB0C3L;
    int i;
    for (i = 0; i < 2; i++)
        l_569[i] = &p_2384->g_235;
    for (i = 0; i < 1; i++)
        l_570[i] = (void*)0;
    l_571 = (l_569[1] = func_63(p_2384->g_60, l_67, l_67, p_2384));
    l_572 = (p_53 , ((p_51 & p_52) | (0x132F3E8637718B7AL && ((*p_2384->g_181) == GROUP_DIVERGE(0, 1)))));
    p_2384->g_113 &= (((((safe_add_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_s(p_53, ((0xB2C9L || (((*p_2384->g_441) = ((safe_unary_minus_func_int32_t_s(((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((65535UL >= (((p_2384->g_280[2] > ((p_2384->g_235 <= (((p_2384->g_582 = p_51) || (safe_add_func_uint32_t_u_u((((*p_2384->g_429) , ((p_51 < (safe_div_func_uint32_t_u_u((((safe_mod_func_int64_t_s_s((p_53 , (*p_2384->g_189)), (*p_2384->g_189))) == 0x15AAL) || 65535UL), p_53))) & 0L)) >= p_2384->g_192), 4294967294UL))) , p_2384->g_337)) && 0xCC2F6187CDC1C22AL)) != (-3L)) ^ p_2384->g_107)) > 0x37L))) , p_52))) | (*p_2384->g_201))) < 9L)) <= 0x182915D7A1594CD3L))) <= p_2384->g_463[3]), p_51)), p_2384->g_589)) != l_590) , 0UL) <= 1UL) | 0L);
    return &p_2384->g_73;
}


/* ------------------------------------------ */
/* 
 * reads : p_2384->g_7 p_2384->g_87 p_2384->g_68 p_2384->g_107 p_2384->g_60 p_2384->g_73 p_2384->g_318 p_2384->g_319 p_2384->g_201 p_2384->g_200 p_2384->g_280 p_2384->g_113 p_2384->g_189 p_2384->g_190 p_2384->g_164 p_2384->g_266 p_2384->g_235 p_2384->g_192 p_2384->g_15 p_2384->g_345 p_2384->g_181 p_2384->g_346 p_2384->g_349 p_2384->g_198 p_2384->g_117 p_2384->g_179 p_2384->g_369 p_2384->g_135 p_2384->g_111 p_2384->g_394 p_2384->g_410 p_2384->g_395 p_2384->g_370 p_2384->g_422 p_2384->g_428 p_2384->g_442 p_2384->g_147 p_2384->g_463 p_2384->g_526 p_2384->g_165 p_2384->g_568
 * writes: p_2384->g_60 p_2384->g_87 p_2384->g_107 p_2384->g_111 p_2384->g_266 p_2384->g_235 p_2384->g_192 p_2384->g_318 p_2384->g_113 p_2384->g_165 p_2384->g_68 p_2384->g_337 p_2384->g_117 p_2384->g_198 p_2384->g_147 p_2384->g_73 p_2384->g_370 p_2384->g_395 p_2384->g_135 p_2384->g_440 p_2384->g_164 p_2384->g_190
 */
int32_t * func_63(int32_t  p_64, uint32_t * p_65, int32_t * p_66, struct S0 * p_2384)
{ /* block id: 14 */
    int8_t l_69 = 0x4FL;
    uint16_t *l_72[7];
    uint32_t *l_82 = &p_2384->g_60;
    int32_t l_347 = 1L;
    int32_t l_348[8];
    uint8_t *l_350 = (void*)0;
    uint8_t *l_351 = &p_2384->g_117;
    uint64_t l_352 = 0x66E493B48CEB18DAL;
    uint64_t *l_357 = &p_2384->g_198;
    int16_t *l_360 = &p_2384->g_147[2][0];
    int16_t l_365 = 0x77DBL;
    uint64_t l_366[3];
    uint32_t ***l_393 = &p_2384->g_164;
    int32_t ***l_403 = &p_2384->g_395;
    uint8_t l_418 = 0x4FL;
    int8_t **l_438 = (void*)0;
    int16_t l_493 = 0x6EBCL;
    uint32_t *l_531 = &p_2384->g_280[4];
    uint32_t **l_530 = &l_531;
    uint32_t ***l_529[8] = {&l_530,(void*)0,&l_530,&l_530,(void*)0,&l_530,&l_530,(void*)0};
    uint8_t l_565 = 251UL;
    uint16_t l_566[8][5] = {{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL}};
    int16_t l_567 = 7L;
    int i, j;
    for (i = 0; i < 7; i++)
        l_72[i] = &p_2384->g_73;
    for (i = 0; i < 8; i++)
        l_348[i] = (-6L);
    for (i = 0; i < 3; i++)
        l_366[i] = 1UL;
lbl_443:
    for (p_2384->g_60 = 0; (p_2384->g_60 <= 0); p_2384->g_60 += 1)
    { /* block id: 17 */
        return p_65;
    }
    l_352 = ((((*l_351) = (0x2B23L | ((l_69 >= ((((l_348[6] = (l_347 = (safe_sub_func_uint64_t_u_u(((void*)0 == l_72[1]), (safe_rshift_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u((((func_78(&p_2384->g_7, (p_64 ^ GROUP_DIVERGE(1, 1)), l_82, p_2384) , l_82) != &p_2384->g_7) || 0x5CAD862755C9BD58L), (*p_2384->g_181))) || p_2384->g_346), p_2384->g_7)))))) , 0L) < (-1L)) , p_2384->g_349)) != 0x4E44L))) ^ p_2384->g_73) <= p_64);
    if (((((((**p_2384->g_200) = l_347) == ((+(safe_div_func_int8_t_s_s((((safe_add_func_int16_t_s_s((p_64 < ((*l_357) |= (p_2384->g_60 , 18446744073709551606UL))), ((((p_2384->g_117 , ((p_2384->g_73 <= ((safe_sub_func_int16_t_s_s(0x1413L, (((*l_360) = (-6L)) < (safe_mod_func_uint64_t_u_u(((safe_rshift_func_int8_t_s_s(p_2384->g_73, l_348[1])) , p_2384->g_179), l_347))))) <= 0L)) || p_2384->g_60)) , &p_2384->g_189) == (void*)0) <= l_352))) > l_365) <= l_347), p_2384->g_60))) | p_64)) <= (-1L)) == 5UL) > l_366[0]))
    { /* block id: 217 */
        uint16_t l_371 = 0x944AL;
        for (p_2384->g_73 = 0; (p_2384->g_73 >= 7); p_2384->g_73 = safe_add_func_uint32_t_u_u(p_2384->g_73, 1))
        { /* block id: 220 */
            int32_t *l_372 = &l_348[6];
            if ((*p_2384->g_266))
                break;
            (*p_2384->g_369) = p_65;
            (*l_372) = l_371;
        }
    }
    else
    { /* block id: 225 */
        uint32_t l_392 = 0x4FB13584L;
        int32_t *l_399 = &l_348[3];
        uint16_t *l_405 = &p_2384->g_73;
        int64_t l_409 = 0x5BDCAAD3A0199F96L;
        int32_t ***l_421 = (void*)0;
        int32_t l_474 = 5L;
        int32_t l_477 = 0x2CC5E33DL;
        int32_t l_478 = 7L;
        int32_t l_485 = (-1L);
        int32_t l_486 = 1L;
        int32_t l_487 = 0x0454D551L;
        int32_t l_490[2][4] = {{1L,1L,1L,1L},{1L,1L,1L,1L}};
        uint16_t l_507 = 65535UL;
        uint64_t l_521[1];
        uint32_t **l_524 = &p_2384->g_165;
        uint32_t ***l_532 = &l_530;
        int64_t *l_562 = (void*)0;
        int64_t *l_563 = (void*)0;
        int64_t *l_564 = &p_2384->g_107;
        int i, j;
        for (i = 0; i < 1; i++)
            l_521[i] = 0x906415F41C204FAFL;
        if ((safe_div_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((safe_unary_minus_func_uint8_t_u(GROUP_DIVERGE(0, 1))), 4)), 0xA7A9C8D7L)))
        { /* block id: 226 */
            uint8_t l_388 = 246UL;
            uint16_t *l_391 = (void*)0;
            int32_t l_406 = 0x708D1571L;
            int32_t l_473 = 0x5F2F6570L;
            int32_t l_476 = 7L;
            int32_t l_492 = 0x25CA3995L;
            int32_t l_494 = 0x3DD684CDL;
            int32_t l_495[9][6] = {{1L,0x431AF7C5L,1L,0x3CD0CEE6L,1L,0x431AF7C5L},{1L,0x431AF7C5L,1L,0x3CD0CEE6L,1L,0x431AF7C5L},{1L,0x431AF7C5L,1L,0x3CD0CEE6L,1L,0x431AF7C5L},{1L,0x431AF7C5L,1L,0x3CD0CEE6L,1L,0x431AF7C5L},{1L,0x431AF7C5L,1L,0x3CD0CEE6L,1L,0x431AF7C5L},{1L,0x431AF7C5L,1L,0x3CD0CEE6L,1L,0x431AF7C5L},{1L,0x431AF7C5L,1L,0x3CD0CEE6L,1L,0x431AF7C5L},{1L,0x431AF7C5L,1L,0x3CD0CEE6L,1L,0x431AF7C5L},{1L,0x431AF7C5L,1L,0x3CD0CEE6L,1L,0x431AF7C5L}};
            int32_t **l_525 = &l_399;
            int i, j;
            if ((0x0C550245L < (safe_mul_func_int8_t_s_s(p_2384->g_135, (safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(p_64, (((((GROUP_DIVERGE(2, 1) , (safe_mod_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(l_388, (safe_sub_func_uint64_t_u_u(((*l_357) = ((((l_391 != l_391) , (l_365 ^ l_365)) < (p_2384->g_111 |= l_366[0])) | GROUP_DIVERGE(1, 1))), p_64)))), p_2384->g_68[0][0][1]))) != p_2384->g_192) ^ l_392) , &p_2384->g_129) == l_393))), l_388))))))
            { /* block id: 229 */
                int64_t l_400 = (-1L);
                int32_t ****l_404 = &l_403;
                (*p_2384->g_394) = &p_66;
                (*l_399) |= (safe_add_func_uint16_t_u_u((safe_unary_minus_func_int8_t_s(0x3DL)), ((((void*)0 == l_399) , ((l_400 < (((((safe_lshift_func_uint8_t_u_s((((**p_2384->g_200) = p_64) || 0x970B20D0L), 1)) , &p_2384->g_369) != ((*l_404) = l_403)) | p_64) || (-1L))) , l_405)) != l_405)));
                l_406 &= (l_348[4] ^ (l_393 != (void*)0));
            }
            else
            { /* block id: 235 */
                int32_t l_411 = 0x01B87AFCL;
                int32_t *l_469[8][4] = {{(void*)0,&p_2384->g_7,(void*)0,(void*)0},{(void*)0,&p_2384->g_7,(void*)0,(void*)0},{(void*)0,&p_2384->g_7,(void*)0,(void*)0},{(void*)0,&p_2384->g_7,(void*)0,(void*)0},{(void*)0,&p_2384->g_7,(void*)0,(void*)0},{(void*)0,&p_2384->g_7,(void*)0,(void*)0},{(void*)0,&p_2384->g_7,(void*)0,(void*)0},{(void*)0,&p_2384->g_7,(void*)0,(void*)0}};
                int64_t l_470 = 0x1DB97D27F544D161L;
                uint32_t l_496 = 0UL;
                int i, j;
                for (p_2384->g_198 = 1; (p_2384->g_198 <= 7); p_2384->g_198 += 1)
                { /* block id: 238 */
                    int32_t *l_407 = (void*)0;
                    int32_t *l_408[7] = {(void*)0,&p_2384->g_192,(void*)0,(void*)0,&p_2384->g_192,(void*)0,(void*)0};
                    int i;
                    for (l_388 = 0; (l_388 <= 7); l_388 += 1)
                    { /* block id: 241 */
                        int i;
                        l_407 = &l_348[p_2384->g_198];
                    }
                    (*p_2384->g_410) = ((l_409 = l_348[p_2384->g_198]) , (*p_2384->g_319));
                }
                if ((l_406 , l_411))
                { /* block id: 247 */
                    int32_t *l_414 = (void*)0;
                    for (p_2384->g_135 = (-19); (p_2384->g_135 > 43); ++p_2384->g_135)
                    { /* block id: 250 */
                        uint32_t l_415 = 0x169DE802L;
                        (*p_2384->g_395) = p_66;
                        p_66 = l_414;
                        --l_415;
                    }
                    l_418++;
                    return (*p_2384->g_369);
                }
                else
                { /* block id: 257 */
                    int32_t *l_434[3][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                    int32_t **l_433 = &l_434[2][5][0];
                    int32_t l_435 = 0x340751C1L;
                    int16_t *l_454 = &l_365;
                    int32_t *l_464 = &l_347;
                    int i, j, k;
                    (*l_399) = l_388;
                    if ((((p_64 | p_2384->g_179) , (l_421 != p_2384->g_422[0][7])) != ((*l_351) = (safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_2384->group_0_offset, get_group_id(0), 10), (l_435 &= ((((p_2384->g_428[1] == (((((safe_unary_minus_func_int32_t_s(((*l_399) ^= l_406))) > (((*l_433) = l_82) != (p_64 , &p_2384->g_68[1][0][1]))) | (*p_2384->g_181)) < 4294967295UL) , &p_2384->g_429)) < 0L) && 0L) & GROUP_DIVERGE(2, 1))))))))
                    { /* block id: 263 */
                        (*l_399) = (safe_add_func_uint8_t_u_u(l_435, (l_388 , 0x00L)));
                    }
                    else
                    { /* block id: 265 */
                        (*p_2384->g_442) = l_438;
                        if (p_2384->g_73)
                            goto lbl_443;
                    }
                    (*l_464) |= (safe_lshift_func_uint8_t_u_u((((**p_2384->g_200) = (+((safe_mul_func_uint16_t_u_u(((*l_399) , (safe_lshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u(1UL, ((((*l_454) = ((*l_360) ^= 0x13BDL)) || (safe_mod_func_int32_t_s_s((((void*)0 == p_65) <= ((safe_lshift_func_int16_t_s_u(((*l_360) = (p_64 > p_2384->g_113)), 3)) == (safe_mod_func_int16_t_s_s((p_64 == (safe_add_func_uint64_t_u_u((((p_2384->g_463[3] > p_64) | p_64) && 1UL), 0L))), l_406)))), l_435))) , p_64))), (-9L))), p_64))), l_411)) ^ l_411))) , p_2384->g_235), 0));
                }
                for (p_2384->g_107 = 27; (p_2384->g_107 > 14); p_2384->g_107--)
                { /* block id: 277 */
                    for (p_64 = 11; (p_64 == (-1)); p_64 = safe_sub_func_uint64_t_u_u(p_64, 1))
                    { /* block id: 280 */
                        if (l_392)
                            goto lbl_443;
                        return p_66;
                    }
                    if (l_470)
                        break;
                }
                for (p_2384->g_117 = (-23); (p_2384->g_117 != 25); p_2384->g_117++)
                { /* block id: 288 */
                    int64_t l_475 = (-3L);
                    uint64_t l_479 = 0x5B26937E76F8FF9CL;
                    int32_t l_482 = (-9L);
                    int32_t l_483 = 0L;
                    int32_t l_484[3][4][3] = {{{0L,0x42AD8B43L,0L},{0L,0x42AD8B43L,0L},{0L,0x42AD8B43L,0L},{0L,0x42AD8B43L,0L}},{{0L,0x42AD8B43L,0L},{0L,0x42AD8B43L,0L},{0L,0x42AD8B43L,0L},{0L,0x42AD8B43L,0L}},{{0L,0x42AD8B43L,0L},{0L,0x42AD8B43L,0L},{0L,0x42AD8B43L,0L},{0L,0x42AD8B43L,0L}}};
                    int32_t l_488 = 0x4A4E8236L;
                    int32_t l_489 = 0L;
                    int32_t l_491[5];
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                        l_491[i] = 2L;
                    --l_479;
                    --l_496;
                }
            }
            for (l_492 = 15; (l_492 <= (-11)); --l_492)
            { /* block id: 295 */
                int32_t l_509 = 0x5B13F037L;
                int32_t l_510 = 0x61BB0832L;
                int32_t l_511[1];
                int64_t l_517 = 4L;
                int i;
                for (i = 0; i < 1; i++)
                    l_511[i] = (-6L);
                for (l_418 = 0; (l_418 <= 4); l_418 += 1)
                { /* block id: 298 */
                    int32_t l_512 = 0x09D6454BL;
                    int64_t l_513[4];
                    int32_t l_514 = 1L;
                    int32_t l_515 = 3L;
                    int32_t l_518 = 0L;
                    int32_t l_519 = 0x28AE6E06L;
                    int32_t l_520 = 0L;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_513[i] = 3L;
                    for (p_2384->g_73 = 0; (p_2384->g_73 <= 5); p_2384->g_73 += 1)
                    { /* block id: 301 */
                        int32_t *l_508[10];
                        int32_t l_516 = 8L;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_508[i] = &l_347;
                        (*l_399) ^= ((((0x33D9DED7L >= (p_2384->g_463[l_418] <= ((safe_div_func_int8_t_s_s(0L, ((safe_mul_func_int8_t_s_s(p_2384->g_280[(l_418 + 1)], (safe_sub_func_uint16_t_u_u(l_507, 0x0548L)))) , ((*p_2384->g_189) & p_64)))) <= ((**p_2384->g_200) = (l_391 != l_391))))) != p_2384->g_280[(l_418 + 1)]) || (*p_2384->g_201)) >= 0x2242L);
                        l_521[0]--;
                        (*l_393) = l_524;
                    }
                }
                return p_66;
            }
            (*l_525) = ((**l_403) = (void*)0);
        }
        else
        { /* block id: 312 */
            (*l_399) |= (*p_2384->g_345);
        }
        p_2384->g_235 |= ((~l_366[2]) , ((((p_2384->g_526 == &p_66) >= (safe_mod_func_int16_t_s_s((((((((*p_2384->g_189) = (((*p_2384->g_164) = (((p_64 != ((l_529[5] == l_532) & p_2384->g_113)) && (safe_rshift_func_int8_t_s_u(((safe_add_func_int8_t_s_s((safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(p_64, (safe_div_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(((((0x4DL || p_64) , l_418) , p_64) | 0xCDL), 255UL)), p_64)))), p_2384->g_113)), p_64)) & p_64), 5))) , p_66)) == (void*)0)) <= 1L) && p_64) ^ 9UL) , p_64) || (-1L)), p_64))) , p_64) <= (*p_2384->g_181)));
        l_567 = ((safe_div_func_int64_t_s_s((+(*p_2384->g_189)), (safe_add_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((safe_unary_minus_func_uint16_t_u(0x6C6DL)), 4)), (safe_sub_func_int64_t_s_s(((*p_2384->g_181) >= (p_64 , ((safe_lshift_func_uint8_t_u_u((((*p_2384->g_164) != (*p_2384->g_164)) ^ ((p_64 >= (safe_add_func_uint32_t_u_u(((l_565 = (safe_lshift_func_uint8_t_u_s((((*l_564) = ((*p_2384->g_181) != (safe_mul_func_uint16_t_u_u((p_64 & p_2384->g_135), GROUP_DIVERGE(2, 1))))) != GROUP_DIVERGE(2, 1)), p_64))) || p_64), 0L))) && 249UL)), 2)) , l_566[3][4]))), GROUP_DIVERGE(0, 1))))))) , p_64);
    }
    return p_2384->g_568;
}


/* ------------------------------------------ */
/* 
 * reads : p_2384->g_7 p_2384->g_87 p_2384->g_68 p_2384->g_107 p_2384->g_60 p_2384->g_73 p_2384->g_235 p_2384->g_318 p_2384->g_319 p_2384->g_201 p_2384->g_200 p_2384->g_280 p_2384->g_113 p_2384->g_189 p_2384->g_190 p_2384->g_164 p_2384->g_266 p_2384->g_192 p_2384->g_15 p_2384->g_345
 * writes: p_2384->g_87 p_2384->g_107 p_2384->g_111 p_2384->g_266 p_2384->g_235 p_2384->g_192 p_2384->g_318 p_2384->g_113 p_2384->g_165 p_2384->g_68 p_2384->g_337
 */
uint64_t  func_78(int32_t * p_79, int32_t  p_80, uint32_t * p_81, struct S0 * p_2384)
{ /* block id: 20 */
    uint8_t l_83 = 4UL;
    uint32_t *l_86 = &p_2384->g_87;
    int32_t *l_104 = &p_2384->g_7;
    int32_t **l_103 = &l_104;
    int64_t *l_105 = (void*)0;
    int64_t *l_106 = &p_2384->g_107;
    uint32_t l_108 = 0xB6AD74ACL;
    int16_t *l_109 = (void*)0;
    int16_t *l_110 = &p_2384->g_111;
    int32_t l_118 = 0x494579C6L;
    uint16_t *l_123 = &p_2384->g_73;
    uint16_t *l_180 = &p_2384->g_73;
    int32_t l_279 = 0x0EBBB277L;
    if (((l_83 | ((FAKE_DIVERGE(p_2384->group_0_offset, get_group_id(0), 10) ^ GROUP_DIVERGE(1, 1)) > (((*p_79) != (--(*l_86))) == (safe_lshift_func_uint8_t_u_s((safe_unary_minus_func_uint8_t_u((safe_mul_func_uint16_t_u_u(0x0AAAL, (safe_sub_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((safe_div_func_int8_t_s_s(((((safe_mul_func_uint8_t_u_u(p_80, ((l_103 == (void*)0) != ((*l_110) = ((((*l_106) = (*l_104)) | l_108) , ((((!((*l_104) , GROUP_DIVERGE(1, 1))) | (**l_103)) , 0UL) < 0xFAL)))))) >= 7L) == p_2384->g_68[0][0][2]) && p_2384->g_107), p_80)) & 0x4E92L), p_2384->g_60)), p_80)))))), p_2384->g_73))))) , 1L))
    { /* block id: 24 */
        int32_t *l_112 = &p_2384->g_113;
        int64_t l_126 = 0L;
        uint16_t *l_146 = &p_2384->g_73;
        uint8_t l_158[2][5][10] = {{{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL}},{{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL}}};
        int32_t l_160 = 7L;
        uint32_t *l_162 = &p_2384->g_60;
        uint32_t **l_161 = &l_162;
        uint32_t l_286 = 0UL;
        int i, j, k;
        l_112 = (void*)0;
        for (l_83 = 0; (l_83 >= 49); l_83 = safe_add_func_int16_t_s_s(l_83, 3))
        { /* block id: 28 */
            uint8_t *l_116[10];
            int32_t l_127 = 0x4279E96FL;
            int16_t *l_186 = &p_2384->g_147[1][0];
            int i;
            for (i = 0; i < 10; i++)
                l_116[i] = &p_2384->g_117;
            (1 + 1);
        }
        for (p_2384->g_107 = 1; (p_2384->g_107 >= 0); p_2384->g_107 -= 1)
        { /* block id: 93 */
            int16_t l_188 = 0x40DFL;
            int32_t *l_191 = &p_2384->g_192;
            int32_t l_193 = (-7L);
            uint32_t *l_269[4];
            int32_t *l_277 = &l_118;
            int32_t *l_278[1][2];
            int i, j;
            for (i = 0; i < 4; i++)
                l_269[i] = &p_2384->g_60;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_278[i][j] = &p_2384->g_113;
            }
            (1 + 1);
        }
        p_2384->g_266 = (*l_103);
    }
    else
    { /* block id: 190 */
        uint32_t *l_329 = &p_2384->g_60;
        int32_t l_332 = 5L;
        int64_t l_333 = (-7L);
        for (p_2384->g_235 = 29; (p_2384->g_235 <= 25); p_2384->g_235 = safe_sub_func_uint8_t_u_u(p_2384->g_235, 1))
        { /* block id: 193 */
            int32_t *l_334 = (void*)0;
            int32_t *l_335 = &p_2384->g_68[0][0][2];
            int32_t *l_336 = &p_2384->g_337;
            int32_t l_344 = 0L;
            for (p_2384->g_192 = 2; (p_2384->g_192 >= 17); p_2384->g_192 = safe_add_func_int32_t_s_s(p_2384->g_192, 2))
            { /* block id: 196 */
                int32_t *l_324[7][10][2] = {{{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279}},{{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279}},{{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279}},{{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279}},{{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279}},{{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279}},{{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279},{&l_279,&l_279}}};
                int i, j, k;
                (*p_2384->g_319) = p_2384->g_318;
                p_2384->g_113 &= (safe_mod_func_int16_t_s_s(0x7B75L, (safe_sub_func_uint32_t_u_u(((**p_2384->g_200) = (*p_2384->g_201)), p_2384->g_280[1]))));
            }
            l_332 = (((safe_add_func_int32_t_s_s((*p_79), (**p_2384->g_200))) , (((~0L) < (((0UL && (*p_2384->g_189)) , l_329) != ((*p_2384->g_164) = (void*)0))) >= ((safe_lshift_func_uint16_t_u_u((((void*)0 != &p_2384->g_73) & l_332), p_80)) != p_80))) , 0x0081E67CL);
            if ((*p_2384->g_266))
                break;
            (*p_2384->g_345) = (~(l_333 || ((((*l_336) = ((*l_335) = (**l_103))) , (safe_lshift_func_uint8_t_u_s(p_80, (p_80 != (safe_sub_func_int16_t_s_s(p_2384->g_192, (((+p_80) , ((safe_add_func_int16_t_s_s(0x1EBEL, l_344)) || (&p_2384->g_129 != &p_2384->g_129))) , p_80))))))) >= p_2384->g_15)));
        }
    }
    return (*l_104);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2385;
    struct S0* p_2384 = &c_2385;
    struct S0 c_2386 = {
        0x1621L, // p_2384->g_4
        0x5A60D005L, // p_2384->g_7
        255UL, // p_2384->g_15
        0x1CL, // p_2384->g_43
        0x4D3E44E8L, // p_2384->g_60
        {{{(-6L),(-6L),(-6L),(-6L)}},{{(-6L),(-6L),(-6L),(-6L)}}}, // p_2384->g_68
        65535UL, // p_2384->g_73
        8UL, // p_2384->g_87
        0x5B25B5FE41CD9499L, // p_2384->g_107
        0L, // p_2384->g_111
        (-9L), // p_2384->g_113
        250UL, // p_2384->g_117
        0x48039CC8L, // p_2384->g_131
        &p_2384->g_131, // p_2384->g_130
        &p_2384->g_130, // p_2384->g_129
        0UL, // p_2384->g_135
        {{0x768EL},{0x768EL},{0x768EL},{0x768EL}}, // p_2384->g_147
        &p_2384->g_60, // p_2384->g_165
        &p_2384->g_165, // p_2384->g_164
        &p_2384->g_164, // p_2384->g_163
        0x69L, // p_2384->g_179
        &p_2384->g_73, // p_2384->g_181
        0x3AC004CCE6538CD0L, // p_2384->g_190
        &p_2384->g_190, // p_2384->g_189
        0L, // p_2384->g_192
        1UL, // p_2384->g_194
        18446744073709551610UL, // p_2384->g_198
        &p_2384->g_87, // p_2384->g_201
        &p_2384->g_201, // p_2384->g_200
        {0x21E2L,(-10L),0x21E2L,0x21E2L,(-10L),0x21E2L,0x21E2L,(-10L),0x21E2L}, // p_2384->g_233
        (-6L), // p_2384->g_235
        4294967288UL, // p_2384->g_239
        &p_2384->g_235, // p_2384->g_266
        {0xCDE4736BL,0xCDE4736BL,0xCDE4736BL,0xCDE4736BL,0xCDE4736BL,0xCDE4736BL}, // p_2384->g_280
        (void*)0, // p_2384->g_318
        &p_2384->g_318, // p_2384->g_319
        0x5669E67CL, // p_2384->g_337
        &p_2384->g_113, // p_2384->g_345
        4294967293UL, // p_2384->g_346
        18446744073709551615UL, // p_2384->g_349
        (void*)0, // p_2384->g_370
        &p_2384->g_370, // p_2384->g_369
        &p_2384->g_370, // p_2384->g_395
        &p_2384->g_395, // p_2384->g_394
        &p_2384->g_318, // p_2384->g_410
        &p_2384->g_318, // p_2384->g_423
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2384->g_422
        &p_2384->g_192, // p_2384->g_429
        {&p_2384->g_429,&p_2384->g_429,&p_2384->g_429}, // p_2384->g_428
        &p_2384->g_179, // p_2384->g_441
        &p_2384->g_441, // p_2384->g_440
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2384->g_439
        &p_2384->g_440, // p_2384->g_442
        {0L,0L,0L,0L,0L}, // p_2384->g_463
        &p_2384->g_318, // p_2384->g_526
        &p_2384->g_7, // p_2384->g_568
        (-1L), // p_2384->g_582
        0x3BAE886F88119AB5L, // p_2384->g_589
        65535UL, // p_2384->g_593
        &p_2384->g_593, // p_2384->g_592
        0xA300CC71BD2AA7C2L, // p_2384->g_601
        0x4F73076E812EF7CEL, // p_2384->g_613
        &p_2384->g_568, // p_2384->g_626
        (void*)0, // p_2384->g_647
        0UL, // p_2384->g_668
        {0x35837C36L}, // p_2384->g_674
        (void*)0, // p_2384->g_716
        &p_2384->g_568, // p_2384->g_720
        1UL, // p_2384->g_757
        0x492C55FDL, // p_2384->g_829
        0x6B0619855BC90C31L, // p_2384->g_887
        3UL, // p_2384->g_960
        &p_2384->g_233[7], // p_2384->g_1070
        &p_2384->g_1070, // p_2384->g_1069
        &p_2384->g_1069, // p_2384->g_1068
        0xFF30L, // p_2384->g_1078
        0x48376156E3CCF62BL, // p_2384->g_1107
        (void*)0, // p_2384->g_1123
        {{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}},{{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L},{8L,(-1L),0x6CL,0x27L,0x2CL,0x55L}}}, // p_2384->g_1157
        &p_2384->g_1157[0][0][0], // p_2384->g_1156
        {{{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156},{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156},{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156},{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156},{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156}},{{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156},{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156},{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156},{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156},{&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156,(void*)0,&p_2384->g_1156,&p_2384->g_1156}}}, // p_2384->g_1155
        {{&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][3][1],&p_2384->g_1155[0][4][0],(void*)0,&p_2384->g_1155[0][4][0]},{&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][3][1],&p_2384->g_1155[0][4][0],(void*)0,&p_2384->g_1155[0][4][0]},{&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][3][1],&p_2384->g_1155[0][4][0],(void*)0,&p_2384->g_1155[0][4][0]},{&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][3][1],&p_2384->g_1155[0][4][0],(void*)0,&p_2384->g_1155[0][4][0]},{&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][4][0],&p_2384->g_1155[0][3][1],&p_2384->g_1155[0][4][0],(void*)0,&p_2384->g_1155[0][4][0]}}, // p_2384->g_1154
        &p_2384->g_1154[3][4], // p_2384->g_1153
        (void*)0, // p_2384->g_1245
        &p_2384->g_113, // p_2384->g_1246
        {{{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0}},{{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0},{&p_2384->g_395,&p_2384->g_716,&p_2384->g_395,(void*)0,(void*)0,(void*)0}}}, // p_2384->g_1311
        &p_2384->g_1311[1][0][1], // p_2384->g_1310
        &p_2384->g_370, // p_2384->g_1358
        &p_2384->g_592, // p_2384->g_1376
        &p_2384->g_1376, // p_2384->g_1375
        {{&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440},{&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440},{&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440},{&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440},{&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440},{&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440},{&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440},{&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440,&p_2384->g_440,(void*)0,&p_2384->g_440}}, // p_2384->g_1388
        &p_2384->g_1388[5][5], // p_2384->g_1387
        &p_2384->g_1387, // p_2384->g_1386
        &p_2384->g_280[3], // p_2384->g_1417
        &p_2384->g_1417, // p_2384->g_1416
        &p_2384->g_1416, // p_2384->g_1415
        &p_2384->g_7, // p_2384->g_1430
        (-5L), // p_2384->g_1431
        0x4A840470A5C927CEL, // p_2384->g_1496
        (void*)0, // p_2384->g_1501
        &p_2384->g_165, // p_2384->g_1503
        {&p_2384->g_1503,&p_2384->g_1503,&p_2384->g_1503}, // p_2384->g_1502
        &p_2384->g_1503, // p_2384->g_1504
        (-1L), // p_2384->g_1616
        255UL, // p_2384->g_1762
        {255UL,0xFFL,255UL,255UL,0xFFL,255UL,255UL,0xFFL}, // p_2384->g_1777
        0x3DA5L, // p_2384->g_1798
        (void*)0, // p_2384->g_1876
        &p_2384->g_1876, // p_2384->g_1875
        1UL, // p_2384->g_1911
        0UL, // p_2384->g_1945
        0UL, // p_2384->g_1971
        {0x3170CB22L,0x3170CB22L,0x3170CB22L,0x3170CB22L,0x3170CB22L,0x3170CB22L,0x3170CB22L,0x3170CB22L}, // p_2384->g_1995
        {0x16F464CA9DD03A14L,0x16F464CA9DD03A14L,0x16F464CA9DD03A14L,0x16F464CA9DD03A14L}, // p_2384->g_2054
        0x73E3L, // p_2384->g_2099
        0x3FL, // p_2384->g_2153
        1UL, // p_2384->g_2184
        (void*)0, // p_2384->g_2225
        (void*)0, // p_2384->g_2226
        0x975BL, // p_2384->g_2322
        (-1L), // p_2384->g_2375
        1L, // p_2384->g_2376
        sequence_input[get_global_id(0)], // p_2384->global_0_offset
        sequence_input[get_global_id(1)], // p_2384->global_1_offset
        sequence_input[get_global_id(2)], // p_2384->global_2_offset
        sequence_input[get_local_id(0)], // p_2384->local_0_offset
        sequence_input[get_local_id(1)], // p_2384->local_1_offset
        sequence_input[get_local_id(2)], // p_2384->local_2_offset
        sequence_input[get_group_id(0)], // p_2384->group_0_offset
        sequence_input[get_group_id(1)], // p_2384->group_1_offset
        sequence_input[get_group_id(2)], // p_2384->group_2_offset
    };
    c_2385 = c_2386;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2384);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2384->g_4, "p_2384->g_4", print_hash_value);
    transparent_crc(p_2384->g_7, "p_2384->g_7", print_hash_value);
    transparent_crc(p_2384->g_15, "p_2384->g_15", print_hash_value);
    transparent_crc(p_2384->g_43, "p_2384->g_43", print_hash_value);
    transparent_crc(p_2384->g_60, "p_2384->g_60", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2384->g_68[i][j][k], "p_2384->g_68[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2384->g_73, "p_2384->g_73", print_hash_value);
    transparent_crc(p_2384->g_87, "p_2384->g_87", print_hash_value);
    transparent_crc(p_2384->g_107, "p_2384->g_107", print_hash_value);
    transparent_crc(p_2384->g_111, "p_2384->g_111", print_hash_value);
    transparent_crc(p_2384->g_113, "p_2384->g_113", print_hash_value);
    transparent_crc(p_2384->g_117, "p_2384->g_117", print_hash_value);
    transparent_crc(p_2384->g_131, "p_2384->g_131", print_hash_value);
    transparent_crc(p_2384->g_135, "p_2384->g_135", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2384->g_147[i][j], "p_2384->g_147[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2384->g_179, "p_2384->g_179", print_hash_value);
    transparent_crc(p_2384->g_190, "p_2384->g_190", print_hash_value);
    transparent_crc(p_2384->g_192, "p_2384->g_192", print_hash_value);
    transparent_crc(p_2384->g_194, "p_2384->g_194", print_hash_value);
    transparent_crc(p_2384->g_198, "p_2384->g_198", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2384->g_233[i], "p_2384->g_233[i]", print_hash_value);

    }
    transparent_crc(p_2384->g_235, "p_2384->g_235", print_hash_value);
    transparent_crc(p_2384->g_239, "p_2384->g_239", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2384->g_280[i], "p_2384->g_280[i]", print_hash_value);

    }
    transparent_crc(p_2384->g_337, "p_2384->g_337", print_hash_value);
    transparent_crc(p_2384->g_346, "p_2384->g_346", print_hash_value);
    transparent_crc(p_2384->g_349, "p_2384->g_349", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2384->g_463[i], "p_2384->g_463[i]", print_hash_value);

    }
    transparent_crc(p_2384->g_582, "p_2384->g_582", print_hash_value);
    transparent_crc(p_2384->g_589, "p_2384->g_589", print_hash_value);
    transparent_crc(p_2384->g_593, "p_2384->g_593", print_hash_value);
    transparent_crc(p_2384->g_601, "p_2384->g_601", print_hash_value);
    transparent_crc(p_2384->g_613, "p_2384->g_613", print_hash_value);
    transparent_crc(p_2384->g_668, "p_2384->g_668", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2384->g_674[i], "p_2384->g_674[i]", print_hash_value);

    }
    transparent_crc(p_2384->g_757, "p_2384->g_757", print_hash_value);
    transparent_crc(p_2384->g_829, "p_2384->g_829", print_hash_value);
    transparent_crc(p_2384->g_887, "p_2384->g_887", print_hash_value);
    transparent_crc(p_2384->g_960, "p_2384->g_960", print_hash_value);
    transparent_crc(p_2384->g_1078, "p_2384->g_1078", print_hash_value);
    transparent_crc(p_2384->g_1107, "p_2384->g_1107", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2384->g_1157[i][j][k], "p_2384->g_1157[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2384->g_1431, "p_2384->g_1431", print_hash_value);
    transparent_crc(p_2384->g_1496, "p_2384->g_1496", print_hash_value);
    transparent_crc(p_2384->g_1616, "p_2384->g_1616", print_hash_value);
    transparent_crc(p_2384->g_1762, "p_2384->g_1762", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2384->g_1777[i], "p_2384->g_1777[i]", print_hash_value);

    }
    transparent_crc(p_2384->g_1798, "p_2384->g_1798", print_hash_value);
    transparent_crc(p_2384->g_1911, "p_2384->g_1911", print_hash_value);
    transparent_crc(p_2384->g_1945, "p_2384->g_1945", print_hash_value);
    transparent_crc(p_2384->g_1971, "p_2384->g_1971", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2384->g_1995[i], "p_2384->g_1995[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2384->g_2054[i], "p_2384->g_2054[i]", print_hash_value);

    }
    transparent_crc(p_2384->g_2099, "p_2384->g_2099", print_hash_value);
    transparent_crc(p_2384->g_2153, "p_2384->g_2153", print_hash_value);
    transparent_crc(p_2384->g_2184, "p_2384->g_2184", print_hash_value);
    transparent_crc(p_2384->g_2322, "p_2384->g_2322", print_hash_value);
    transparent_crc(p_2384->g_2375, "p_2384->g_2375", print_hash_value);
    transparent_crc(p_2384->g_2376, "p_2384->g_2376", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
