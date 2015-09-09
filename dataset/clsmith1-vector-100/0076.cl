// ---fake_divergence -g 53,87,1 -l 53,3,1
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


// Seed: 76

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int32_t g_11;
    VECTOR(int32_t, 16) g_22;
    int32_t *g_21;
    VECTOR(int64_t, 8) g_35;
    int16_t g_37;
    uint32_t g_40;
    uint64_t g_63;
    volatile VECTOR(int8_t, 2) g_81;
    VECTOR(int8_t, 4) g_82;
    uint32_t g_90[3];
    uint64_t g_106;
    VECTOR(uint8_t, 2) g_107;
    uint64_t g_113;
    int16_t g_160;
    uint8_t g_164;
    int32_t g_220;
    volatile uint32_t g_227;
    uint16_t g_256;
    volatile VECTOR(int16_t, 4) g_278;
    VECTOR(int16_t, 16) g_279;
    int16_t g_283[6][4][9];
    int32_t g_285[7];
    volatile uint32_t g_289[5];
    uint16_t g_300[5];
    int16_t *g_320;
    int16_t **g_319;
    volatile VECTOR(int16_t, 8) g_335;
    int32_t *g_347;
    int32_t ** volatile g_346;
    int32_t ** volatile g_354;
    int32_t ** volatile g_357;
    int32_t ** volatile g_358[7][9][4];
    int32_t ** volatile g_359[6][3];
    int32_t ** volatile g_360;
    volatile VECTOR(int32_t, 4) g_372;
    volatile VECTOR(int8_t, 16) g_386;
    volatile VECTOR(int32_t, 16) g_414;
    volatile uint32_t *g_440;
    volatile uint32_t * volatile *g_439;
    VECTOR(int16_t, 2) g_447;
    VECTOR(int16_t, 4) g_448;
    volatile VECTOR(int16_t, 2) g_449;
    VECTOR(int8_t, 4) g_450;
    VECTOR(int32_t, 8) g_455;
    uint32_t g_486;
    uint16_t * volatile g_526;
    uint16_t * volatile * volatile g_525;
    uint16_t * volatile * volatile * volatile g_527;
    uint16_t * volatile * volatile * volatile g_528[9][7];
    int32_t *** volatile g_535;
    int32_t *g_537;
    int32_t **g_536;
    volatile VECTOR(int32_t, 8) g_543;
    int8_t *g_568;
    int32_t ** volatile g_570;
    VECTOR(int32_t, 8) g_596;
    VECTOR(int64_t, 2) g_597;
    VECTOR(int64_t, 8) g_600;
    VECTOR(int8_t, 4) g_603;
    volatile VECTOR(int16_t, 8) g_604;
    volatile VECTOR(int32_t, 2) g_635;
    VECTOR(uint32_t, 4) g_651;
    int32_t ** volatile g_654;
    int32_t g_689;
    int32_t ** volatile g_712;
    uint64_t **g_762;
    volatile uint64_t * volatile * volatile g_765;
    volatile VECTOR(int32_t, 4) g_773;
    uint64_t *g_777;
    uint64_t **g_776;
    int32_t ** volatile g_807;
    int32_t ** volatile g_848;
    int32_t * volatile g_879;
    int32_t ** volatile g_903;
    VECTOR(uint16_t, 2) g_920;
    VECTOR(int64_t, 2) g_924;
    volatile uint16_t *g_928;
    volatile uint16_t * volatile *g_927[10];
    volatile uint16_t * volatile **g_926;
    int32_t * volatile g_937;
    int32_t ** volatile g_938;
    int32_t * volatile g_939[2][4];
    int32_t ** volatile g_950;
    VECTOR(uint16_t, 16) g_956;
    volatile VECTOR(uint16_t, 16) g_961;
    VECTOR(uint16_t, 4) g_963;
    volatile VECTOR(int16_t, 8) g_967;
    int32_t g_979;
    volatile VECTOR(int32_t, 4) g_980;
    VECTOR(int32_t, 16) g_1024;
    int32_t * volatile g_1025;
    int32_t * volatile g_1026;
    int32_t * volatile g_1064;
    VECTOR(uint8_t, 4) g_1085;
    int32_t ** volatile g_1096;
    int32_t ** volatile g_1130;
    int32_t g_1135;
    VECTOR(uint64_t, 8) g_1168;
    volatile VECTOR(uint16_t, 4) g_1183;
    VECTOR(int8_t, 4) g_1189;
    volatile VECTOR(int64_t, 4) g_1210;
    volatile VECTOR(uint16_t, 8) g_1225;
    volatile VECTOR(uint16_t, 16) g_1227;
    int32_t ***g_1246[6];
    int32_t ****g_1245;
    int32_t g_1253;
    volatile VECTOR(int16_t, 16) g_1278;
    VECTOR(int8_t, 16) g_1284;
    VECTOR(uint16_t, 4) g_1294;
    VECTOR(uint64_t, 8) g_1295;
    int64_t g_1310;
    VECTOR(uint64_t, 16) g_1343;
    uint32_t * volatile g_1358;
    uint32_t * volatile *g_1357;
    uint32_t * volatile **g_1356;
    uint32_t * volatile ***g_1355;
    volatile int32_t g_1359;
    volatile VECTOR(uint8_t, 4) g_1363;
    volatile VECTOR(uint32_t, 4) g_1366;
    uint64_t g_1378;
    uint32_t g_1386;
    int32_t * volatile g_1388;
    VECTOR(int32_t, 4) g_1397;
    uint32_t g_1426;
    uint64_t g_1496;
    volatile VECTOR(uint8_t, 2) g_1519;
    int64_t g_1523;
    uint64_t *g_1548;
    int32_t * volatile g_1560;
    VECTOR(int8_t, 4) g_1565;
    VECTOR(uint32_t, 4) g_1576;
    int32_t * volatile g_1604[3];
    int32_t * volatile g_1605;
    volatile VECTOR(int16_t, 8) g_1613;
    VECTOR(uint8_t, 4) g_1651;
    volatile VECTOR(int64_t, 16) g_1678;
    volatile VECTOR(int8_t, 8) g_1683;
    VECTOR(int32_t, 16) g_1703;
    int32_t ** volatile g_1724;
    volatile VECTOR(int32_t, 8) g_1742;
    volatile VECTOR(int16_t, 16) g_1758;
    int8_t **g_1810;
    int32_t *****g_1815[5][2];
    int8_t **g_1819;
    VECTOR(int16_t, 16) g_1905;
    int32_t g_1918;
    VECTOR(uint32_t, 8) g_1926;
    volatile VECTOR(int32_t, 16) g_1990;
    int32_t * volatile g_2012;
    int32_t g_2029;
    int8_t g_2039;
    VECTOR(uint32_t, 4) g_2050;
    volatile VECTOR(int8_t, 16) g_2085;
    volatile VECTOR(int8_t, 16) g_2086;
    VECTOR(int8_t, 16) g_2089;
    VECTOR(uint16_t, 4) g_2092;
    VECTOR(uint16_t, 2) g_2127;
    volatile VECTOR(uint8_t, 4) g_2130;
    volatile VECTOR(uint16_t, 16) g_2131;
    VECTOR(uint16_t, 8) g_2134;
    volatile VECTOR(uint16_t, 2) g_2135;
    int32_t ** volatile g_2145;
    uint64_t ** volatile g_2159;
    VECTOR(uint16_t, 16) g_2185;
    uint32_t ****g_2204;
    VECTOR(int8_t, 16) g_2212;
    int64_t *g_2222;
    VECTOR(uint8_t, 4) g_2223;
    volatile VECTOR(uint16_t, 4) g_2242;
    VECTOR(uint16_t, 2) g_2243;
    int32_t * volatile g_2262[9][9][2];
    int32_t * volatile g_2263;
    volatile VECTOR(uint8_t, 8) g_2286;
    int32_t * volatile g_2326;
    int32_t * volatile g_2327;
    VECTOR(uint32_t, 8) g_2351;
    volatile VECTOR(int16_t, 2) g_2356;
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
int32_t  func_1(struct S0 * p_2366);
int32_t  func_5(int32_t  p_6, int64_t  p_7, uint64_t  p_8, struct S0 * p_2366);
int8_t  func_12(uint32_t  p_13, int64_t  p_14, uint64_t  p_15, struct S0 * p_2366);
uint32_t  func_16(int32_t * p_17, int32_t * p_18, int64_t  p_19, int32_t * p_20, struct S0 * p_2366);
int32_t * func_23(int8_t  p_24, int32_t * p_25, int16_t  p_26, int32_t * p_27, struct S0 * p_2366);
int16_t  func_32(int8_t  p_33, int32_t * p_34, struct S0 * p_2366);
int16_t  func_47(uint64_t  p_48, uint32_t  p_49, uint32_t  p_50, struct S0 * p_2366);
int64_t  func_53(uint32_t  p_54, int16_t  p_55, int32_t  p_56, uint32_t  p_57, struct S0 * p_2366);
int16_t  func_67(int16_t * p_68, uint32_t * p_69, int32_t * p_70, struct S0 * p_2366);
int32_t * func_72(int32_t  p_73, int32_t  p_74, uint64_t  p_75, int16_t  p_76, struct S0 * p_2366);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2366->g_2 p_2366->g_1357 p_2366->g_1358 p_2366->g_40 p_2366->g_2222 p_2366->g_1523 p_2366->g_220 p_2366->g_1918 p_2366->g_2029 p_2366->g_2351 p_2366->g_2356 p_2366->g_950 p_2366->g_347 p_2366->g_2212 p_2366->g_450 p_2366->g_1378 p_2366->g_2050 p_2366->g_979 p_2366->g_777 p_2366->g_63 p_2366->g_81 p_2366->g_37 p_2366->g_107 p_2366->g_82 p_2366->g_21 p_2366->g_319 p_2366->g_160 p_2366->g_1096 p_2366->g_2092
 * writes: p_2366->g_2 p_2366->g_220 p_2366->g_486 p_2366->g_300 p_2366->g_1918 p_2366->g_2029 p_2366->g_2050 p_2366->g_90 p_2366->g_37 p_2366->g_40 p_2366->g_347
 */
int32_t  func_1(struct S0 * p_2366)
{ /* block id: 4 */
    int8_t l_31 = 0L;
    int32_t l_64 = 0x1F73E702L;
    int8_t l_65[6][9] = {{(-6L),0x32L,0x64L,0x20L,0x64L,0x32L,(-6L),0x45L,0x0BL},{(-6L),0x32L,0x64L,0x20L,0x64L,0x32L,(-6L),0x45L,0x0BL},{(-6L),0x32L,0x64L,0x20L,0x64L,0x32L,(-6L),0x45L,0x0BL},{(-6L),0x32L,0x64L,0x20L,0x64L,0x32L,(-6L),0x45L,0x0BL},{(-6L),0x32L,0x64L,0x20L,0x64L,0x32L,(-6L),0x45L,0x0BL},{(-6L),0x32L,0x64L,0x20L,0x64L,0x32L,(-6L),0x45L,0x0BL}};
    int32_t *l_1325 = &p_2366->g_1135;
    int32_t l_1585 = 1L;
    VECTOR(int32_t, 2) l_1606 = (VECTOR(int32_t, 2))((-1L), (-8L));
    int32_t *l_2330 = &p_2366->g_1918;
    int32_t *l_2331 = &p_2366->g_2029;
    int32_t *l_2332 = &p_2366->g_979;
    int32_t *l_2333 = &p_2366->g_220;
    int32_t *l_2334[2];
    int64_t l_2335[2];
    uint8_t l_2336 = 7UL;
    uint32_t *l_2352 = (void*)0;
    uint32_t *l_2353 = &p_2366->g_486;
    uint32_t l_2357 = 0x66E7955DL;
    uint16_t *l_2358 = (void*)0;
    uint16_t *l_2359 = &p_2366->g_300[2];
    uint8_t *l_2360 = (void*)0;
    uint8_t *l_2361 = (void*)0;
    uint8_t *l_2362 = &l_2336;
    uint8_t l_2363 = 246UL;
    uint32_t *l_2364[9];
    int32_t **l_2365[3][1][6] = {{{(void*)0,(void*)0,&l_2334[1],&l_2334[1],&l_2334[1],&l_2334[1]}},{{(void*)0,(void*)0,&l_2334[1],&l_2334[1],&l_2334[1],&l_2334[1]}},{{(void*)0,(void*)0,&l_2334[1],&l_2334[1],&l_2334[1],&l_2334[1]}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_2334[i] = &p_2366->g_979;
    for (i = 0; i < 2; i++)
        l_2335[i] = 5L;
    for (i = 0; i < 9; i++)
        l_2364[i] = (void*)0;
    for (p_2366->g_2 = (-5); (p_2366->g_2 > (-19)); p_2366->g_2--)
    { /* block id: 7 */
        int32_t *l_9 = (void*)0;
        int32_t *l_10 = &p_2366->g_11;
        VECTOR(int32_t, 4) l_30 = (VECTOR(int32_t, 4))(0x576270E7L, (VECTOR(int32_t, 2))(0x576270E7L, 4L), 4L);
        int16_t *l_36[9][2][10] = {{{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37},{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37}},{{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37},{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37}},{{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37},{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37}},{{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37},{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37}},{{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37},{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37}},{{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37},{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37}},{{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37},{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37}},{{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37},{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37}},{{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37},{&p_2366->g_37,(void*)0,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37,&p_2366->g_37}}};
        int32_t l_38 = (-1L);
        uint32_t *l_39 = &p_2366->g_40;
        uint64_t *l_62[7] = {&p_2366->g_63,&p_2366->g_63,&p_2366->g_63,&p_2366->g_63,&p_2366->g_63,&p_2366->g_63,&p_2366->g_63};
        uint32_t l_66 = 9UL;
        uint16_t *l_1132 = (void*)0;
        uint16_t *l_1133 = &p_2366->g_300[2];
        int32_t *l_1134 = &p_2366->g_1135;
        uint64_t *l_1607 = (void*)0;
        int32_t *l_2328 = (void*)0;
        int32_t *l_2329 = &p_2366->g_1253;
        int i, j, k;
        (1 + 1);
    }
    l_2336--;
    (*l_2333) |= ((**p_2366->g_1357) | (FAKE_DIVERGE(p_2366->local_2_offset, get_local_id(2), 10) & (*p_2366->g_2222)));
    (*p_2366->g_1096) = func_72(((p_2366->g_2050.z &= ((*l_2331) = ((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 8))(0x86C6D75FL, 0x9BAFAC5BL, (((~(safe_mod_func_int16_t_s_s(((((safe_lshift_func_uint16_t_u_u((((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 8))(0xE2L, ((*l_2362) |= (safe_lshift_func_uint16_t_u_s(((*l_2330) = ((*l_2359) = (GROUP_DIVERGE(0, 1) < (65535UL < ((((safe_rshift_func_uint16_t_u_s((246UL & (((safe_rshift_func_uint16_t_u_s((*l_2330), ((*l_2331) || (((((((*l_2353) = ((VECTOR(uint32_t, 4))(p_2366->g_2351.s3236)).x) , &l_64) != ((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(p_2366->g_2356.xyxyxyyxxyyyyxyy)).s1, 4)) , (*p_2366->g_950))) >= (l_2357 ^ p_2366->g_2212.s3)) | (*l_2333)) <= p_2366->g_450.z)))) , (*l_2333)) >= (-1L))), (*l_2331))) , &l_65[2][3]) == (void*)0) > 0x0AD4L))))), 10))), ((VECTOR(uint8_t, 4))(0xC3L)), 0x9EL, 0x00L)).lo, ((VECTOR(uint8_t, 4))(250UL))))).x ^ (*l_2333)), GROUP_DIVERGE(0, 1))) , 65533UL) , (*p_2366->g_2222)) != (*l_2331)), l_2363))) && 0L) && p_2366->g_1378), 0xE529AFACL, ((VECTOR(uint32_t, 2))(1UL)), 4294967287UL, 0UL)), ((VECTOR(uint32_t, 8))(3UL)), ((VECTOR(uint32_t, 8))(0xE63ED9EDL))))), ((VECTOR(uint32_t, 8))(9UL))))).s2)) , (*l_2333)), (*l_2332), (*p_2366->g_777), (*l_2333), p_2366);
    return p_2366->g_2092.z;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_5(int32_t  p_6, int64_t  p_7, uint64_t  p_8, struct S0 * p_2366)
{ /* block id: 596 */
    VECTOR(int16_t, 16) l_1608 = (VECTOR(int16_t, 16))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x6A55L), 0x6A55L), 0x6A55L, (-7L), 0x6A55L, (VECTOR(int16_t, 2))((-7L), 0x6A55L), (VECTOR(int16_t, 2))((-7L), 0x6A55L), (-7L), 0x6A55L, (-7L), 0x6A55L);
    VECTOR(int16_t, 2) l_1609 = (VECTOR(int16_t, 2))(0x505EL, 0x3789L);
    VECTOR(int16_t, 4) l_1610 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L);
    VECTOR(int16_t, 16) l_1611 = (VECTOR(int16_t, 16))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0x1C39L), 0x1C39L), 0x1C39L, (-2L), 0x1C39L, (VECTOR(int16_t, 2))((-2L), 0x1C39L), (VECTOR(int16_t, 2))((-2L), 0x1C39L), (-2L), 0x1C39L, (-2L), 0x1C39L);
    VECTOR(int16_t, 8) l_1612 = (VECTOR(int16_t, 8))(0x651CL, (VECTOR(int16_t, 4))(0x651CL, (VECTOR(int16_t, 2))(0x651CL, (-10L)), (-10L)), (-10L), 0x651CL, (-10L));
    int32_t l_1615 = (-6L);
    int32_t l_1629 = 6L;
    VECTOR(int32_t, 8) l_1630 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x013E89A3L), 0x013E89A3L), 0x013E89A3L, (-4L), 0x013E89A3L);
    VECTOR(int8_t, 4) l_1634 = (VECTOR(int8_t, 4))(0x20L, (VECTOR(int8_t, 2))(0x20L, 1L), 1L);
    uint8_t l_1640 = 0x50L;
    int8_t **l_1642 = &p_2366->g_568;
    int32_t l_1656 = 0x7375C686L;
    uint8_t l_1657 = 1UL;
    int16_t *l_1664[7] = {(void*)0,&p_2366->g_283[3][0][4],(void*)0,(void*)0,&p_2366->g_283[3][0][4],(void*)0,(void*)0};
    int16_t ****l_1698 = (void*)0;
    int8_t l_1699[6];
    int32_t ***l_1734 = (void*)0;
    VECTOR(uint16_t, 4) l_1740 = (VECTOR(uint16_t, 4))(0x5174L, (VECTOR(uint16_t, 2))(0x5174L, 65528UL), 65528UL);
    VECTOR(uint16_t, 2) l_1741 = (VECTOR(uint16_t, 2))(65534UL, 0xD0CDL);
    int16_t l_1838 = 0L;
    uint64_t l_1842 = 18446744073709551607UL;
    uint16_t l_1880 = 65526UL;
    VECTOR(int32_t, 4) l_1903 = (VECTOR(int32_t, 4))(0x044FF48DL, (VECTOR(int32_t, 2))(0x044FF48DL, 0x50F4D7AAL), 0x50F4D7AAL);
    VECTOR(int16_t, 16) l_1906 = (VECTOR(int16_t, 16))(0x4347L, (VECTOR(int16_t, 4))(0x4347L, (VECTOR(int16_t, 2))(0x4347L, 0x44F6L), 0x44F6L), 0x44F6L, 0x4347L, 0x44F6L, (VECTOR(int16_t, 2))(0x4347L, 0x44F6L), (VECTOR(int16_t, 2))(0x4347L, 0x44F6L), 0x4347L, 0x44F6L, 0x4347L, 0x44F6L);
    int32_t *l_1921 = &p_2366->g_285[3];
    uint32_t *l_1969 = &p_2366->g_40;
    uint32_t **l_1968[5][10] = {{&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969},{&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969},{&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969},{&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969},{&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969,&l_1969}};
    uint32_t ***l_1967 = &l_1968[2][0];
    VECTOR(int8_t, 4) l_1996 = (VECTOR(int8_t, 4))(0x4EL, (VECTOR(int8_t, 2))(0x4EL, (-2L)), (-2L));
    VECTOR(int32_t, 8) l_2016 = (VECTOR(int32_t, 8))(0x16DACA1AL, (VECTOR(int32_t, 4))(0x16DACA1AL, (VECTOR(int32_t, 2))(0x16DACA1AL, 0x7F26593BL), 0x7F26593BL), 0x7F26593BL, 0x16DACA1AL, 0x7F26593BL);
    uint64_t **l_2035[2][1][9] = {{{(void*)0,&p_2366->g_777,&p_2366->g_777,&p_2366->g_777,(void*)0,(void*)0,&p_2366->g_777,&p_2366->g_777,&p_2366->g_777}},{{(void*)0,&p_2366->g_777,&p_2366->g_777,&p_2366->g_777,(void*)0,(void*)0,&p_2366->g_777,&p_2366->g_777,&p_2366->g_777}}};
    uint32_t l_2095 = 1UL;
    uint16_t l_2103 = 5UL;
    uint16_t *l_2162 = (void*)0;
    uint16_t **l_2161 = &l_2162;
    int32_t *****l_2230[5];
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1699[i] = 0x39L;
    for (i = 0; i < 5; i++)
        l_2230[i] = &p_2366->g_1245;
    return p_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_963 p_2366->g_1605 p_2366->g_1253
 * writes: p_2366->g_1253
 */
int8_t  func_12(uint32_t  p_13, int64_t  p_14, uint64_t  p_15, struct S0 * p_2366)
{ /* block id: 589 */
    uint64_t *l_1590 = (void*)0;
    uint64_t *l_1591 = &p_2366->g_63;
    int32_t l_1592 = 0L;
    int32_t l_1595[6][6] = {{0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL},{0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL},{0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL},{0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL},{0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL},{0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL,0x1AA3623AL}};
    int16_t **l_1596[1];
    int64_t *l_1601[7][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2366->g_1523,(void*)0,&p_2366->g_1523},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2366->g_1523,(void*)0,&p_2366->g_1523},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2366->g_1523,(void*)0,&p_2366->g_1523},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2366->g_1523,(void*)0,&p_2366->g_1523},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2366->g_1523,(void*)0,&p_2366->g_1523},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2366->g_1523,(void*)0,&p_2366->g_1523},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2366->g_1523,(void*)0,&p_2366->g_1523}};
    int32_t l_1602 = 0L;
    int64_t l_1603[8][6] = {{0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L},{0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L},{0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L},{0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L},{0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L},{0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L},{0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L},{0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L,0x74D22C2F79B4BA60L}};
    int i, j;
    for (i = 0; i < 1; i++)
        l_1596[i] = &p_2366->g_320;
    (*p_2366->g_1605) |= (safe_mod_func_uint64_t_u_u((0x4682L > (safe_lshift_func_int8_t_s_u(((l_1592 = ((l_1590 = l_1590) == l_1591)) | (((safe_div_func_int32_t_s_s(l_1595[4][5], 0x173C59E2L)) || (0xF54FL || (((void*)0 != l_1596[0]) > (l_1595[0][5] = ((safe_lshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u(p_2366->g_963.x, l_1595[3][5])), 14)) || 0L))))) >= l_1602)), FAKE_DIVERGE(p_2366->local_1_offset, get_local_id(1), 10)))), l_1603[2][0]));
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_1565 p_2366->g_597 p_2366->g_1135 p_2366->g_1355 p_2366->g_1356 p_2366->g_1357 p_2366->g_1358 p_2366->g_40 p_2366->g_1576
 * writes: p_2366->g_1245 p_2366->g_1135
 */
uint32_t  func_16(int32_t * p_17, int32_t * p_18, int64_t  p_19, int32_t * p_20, struct S0 * p_2366)
{ /* block id: 583 */
    int32_t *l_1562 = (void*)0;
    int32_t ****l_1563 = &p_2366->g_1246[0];
    int32_t *****l_1564 = &p_2366->g_1245;
    VECTOR(uint64_t, 16) l_1579 = (VECTOR(uint64_t, 16))(0x200B170F02063B43L, (VECTOR(uint64_t, 4))(0x200B170F02063B43L, (VECTOR(uint64_t, 2))(0x200B170F02063B43L, 0x4D25CBCD0C85D0E5L), 0x4D25CBCD0C85D0E5L), 0x4D25CBCD0C85D0E5L, 0x200B170F02063B43L, 0x4D25CBCD0C85D0E5L, (VECTOR(uint64_t, 2))(0x200B170F02063B43L, 0x4D25CBCD0C85D0E5L), (VECTOR(uint64_t, 2))(0x200B170F02063B43L, 0x4D25CBCD0C85D0E5L), 0x200B170F02063B43L, 0x4D25CBCD0C85D0E5L, 0x200B170F02063B43L, 0x4D25CBCD0C85D0E5L);
    int16_t **l_1580 = (void*)0;
    uint16_t *l_1582 = (void*)0;
    uint16_t **l_1581[1][5][5] = {{{&l_1582,&l_1582,&l_1582,&l_1582,&l_1582},{&l_1582,&l_1582,&l_1582,&l_1582,&l_1582},{&l_1582,&l_1582,&l_1582,&l_1582,&l_1582},{&l_1582,&l_1582,&l_1582,&l_1582,&l_1582},{&l_1582,&l_1582,&l_1582,&l_1582,&l_1582}}};
    uint8_t l_1583 = 9UL;
    int32_t l_1584 = 0x737DBFC3L;
    int i, j, k;
    l_1562 = p_20;
    l_1584 = (((*l_1562) = (((((*l_1564) = l_1563) == (void*)0) ^ ((((VECTOR(int8_t, 8))(p_2366->g_1565.wxxzyyxx)).s1 >= p_2366->g_597.x) && (((safe_add_func_int32_t_s_s((safe_sub_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s((safe_unary_minus_func_int64_t_s((safe_rshift_func_int8_t_s_u(((((p_19 == (((*l_1562) || (safe_mod_func_uint32_t_u_u((****p_2366->g_1355), ((p_2366->g_1576.y ^ (safe_sub_func_uint32_t_u_u((((((((VECTOR(uint64_t, 16))(l_1579.sb633f20eca159e92)).se , (((void*)0 != l_1580) , 249UL)) ^ p_19) , (-1L)) >= p_19) , (*l_1562)), (*l_1562)))) & FAKE_DIVERGE(p_2366->group_2_offset, get_group_id(2), 10))))) , (-1L))) ^ (*l_1562)) , p_19) < FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10)), p_2366->g_1565.w)))))), FAKE_DIVERGE(p_2366->global_1_offset, get_global_id(1), 10))), p_19)) , (void*)0) != l_1581[0][0][2]))) >= l_1583)) ^ p_19);
    return (*p_2366->g_1358);
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_164 p_2366->g_1343 p_2366->g_1355 p_2366->g_82 p_2366->g_1189 p_2366->g_1359 p_2366->g_1358 p_2366->g_40 p_2366->g_1386 p_2366->g_1388 p_2366->g_526 p_2366->g_300 p_2366->g_1426 p_2366->g_1356 p_2366->g_1357 p_2366->g_1183 p_2366->g_220 p_2366->g_35 p_2366->g_347 p_2366->g_63 p_2366->g_1278 p_2366->g_1135 p_2366->g_525 p_2366->g_568 p_2366->g_937 p_2366->g_285 p_2366->g_2 p_2366->g_1560 p_2366->g_1363 p_2366->g_1366 p_2366->g_107 p_2366->g_1378 p_2366->g_113 p_2366->g_1397 p_2366->g_448 p_2366->g_256 p_2366->g_979 p_2366->g_1496 p_2366->g_1519 p_2366->g_90 p_2366->g_1523 p_2366->g_689
 * writes: p_2366->g_82 p_2366->g_979 p_2366->g_285 p_2366->g_1343 p_2366->g_1085 p_2366->g_40 p_2366->g_450 p_2366->g_220 p_2366->g_347 p_2366->g_256 p_2366->g_1135 p_2366->g_90 p_2366->g_1245 p_2366->g_1548 p_2366->g_319 p_2366->g_107 p_2366->g_1378 p_2366->g_689
 */
int32_t * func_23(int8_t  p_24, int32_t * p_25, int16_t  p_26, int32_t * p_27, struct S0 * p_2366)
{ /* block id: 516 */
    VECTOR(int32_t, 2) l_1326 = (VECTOR(int32_t, 2))(3L, 0x47599C7FL);
    VECTOR(uint8_t, 16) l_1327 = (VECTOR(uint8_t, 16))(0x5BL, (VECTOR(uint8_t, 4))(0x5BL, (VECTOR(uint8_t, 2))(0x5BL, 0x4AL), 0x4AL), 0x4AL, 0x5BL, 0x4AL, (VECTOR(uint8_t, 2))(0x5BL, 0x4AL), (VECTOR(uint8_t, 2))(0x5BL, 0x4AL), 0x5BL, 0x4AL, 0x5BL, 0x4AL);
    VECTOR(int8_t, 4) l_1331 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x4FL), 0x4FL);
    uint64_t **l_1338 = (void*)0;
    VECTOR(uint64_t, 8) l_1344 = (VECTOR(uint64_t, 8))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 18446744073709551609UL, 18446744073709551608UL);
    int8_t *l_1354 = (void*)0;
    int16_t ***l_1383 = &p_2366->g_319;
    uint32_t *l_1394 = &p_2366->g_90[1];
    uint32_t **l_1393[6][8] = {{&l_1394,(void*)0,(void*)0,&l_1394,(void*)0,&l_1394,&l_1394,(void*)0},{&l_1394,(void*)0,(void*)0,&l_1394,(void*)0,&l_1394,&l_1394,(void*)0},{&l_1394,(void*)0,(void*)0,&l_1394,(void*)0,&l_1394,&l_1394,(void*)0},{&l_1394,(void*)0,(void*)0,&l_1394,(void*)0,&l_1394,&l_1394,(void*)0},{&l_1394,(void*)0,(void*)0,&l_1394,(void*)0,&l_1394,&l_1394,(void*)0},{&l_1394,(void*)0,(void*)0,&l_1394,(void*)0,&l_1394,&l_1394,(void*)0}};
    int32_t l_1396 = 0L;
    uint32_t l_1433[6][9][3] = {{{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL}},{{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL}},{{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL}},{{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL}},{{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL}},{{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL},{0xFC04AB4FL,4294967291UL,4294967295UL}}};
    int8_t l_1443 = 7L;
    int32_t *l_1453 = (void*)0;
    uint16_t l_1464 = 0x6166L;
    int64_t l_1516 = 0x59DA9BD0ACBCDDA0L;
    int i, j, k;
    if ((p_2366->g_164 , ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(l_1326.xyxx)).lo))).odd))
    { /* block id: 517 */
        int32_t l_1328 = (-1L);
        int8_t *l_1332 = (void*)0;
        int8_t *l_1333 = (void*)0;
        int32_t l_1341 = (-6L);
        VECTOR(uint64_t, 4) l_1342 = (VECTOR(uint64_t, 4))(0xA0FD1C935398B075L, (VECTOR(uint64_t, 2))(0xA0FD1C935398B075L, 0x29D70D7062231622L), 0x29D70D7062231622L);
        int8_t **l_1353[5][2] = {{&l_1333,&l_1333},{&l_1333,&l_1333},{&l_1333,&l_1333},{&l_1333,&l_1333},{&l_1333,&l_1333}};
        int32_t *l_1360 = &p_2366->g_979;
        int i, j;
        (*l_1360) = ((((VECTOR(uint8_t, 4))(l_1327.sc6ec)).y , ((l_1328 != ((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_2366->local_2_offset, get_local_id(2), 10), 0xB0BC5BB4L)) , (p_2366->g_82.w = ((VECTOR(int8_t, 16))(l_1331.ywxxxzzyxzyzxyyy)).sf))) , (safe_lshift_func_int16_t_s_s((safe_mod_func_int64_t_s_s(((void*)0 != l_1338), ((~(1UL & (((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 8))((safe_mod_func_int8_t_s_s(((l_1341 |= p_26) != ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))((((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 16))(l_1342.zzywxywyxwywzyww)).lo, ((VECTOR(uint64_t, 2))(18446744073709551608UL, 1UL)).xxxyyyyx))), ((VECTOR(uint64_t, 4))(p_2366->g_1343.s0fdc)).yxwxxxyw))))), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_1344.s43)).xxyxxxyxyxxxxxxx)).hi))))))).s5 > (safe_div_func_int16_t_s_s((safe_sub_func_int64_t_s_s((((~((safe_mod_func_uint8_t_u_u(0UL, l_1344.s5)) == (safe_sub_func_int64_t_s_s(((l_1354 = l_1333) == (void*)0), 0L)))) , p_2366->g_1355) != &p_2366->g_1356), p_2366->g_82.y)), l_1326.y))), ((VECTOR(uint8_t, 2))(0xE0L)), 0x18L)).yyzyyxxwyyxwwwxy)).s8), p_2366->g_1189.x)), p_2366->g_1359, ((VECTOR(uint32_t, 2))(4294967292UL)), 0x2802C9C5L, 4294967291UL, 8UL, 4294967295UL)).lo, ((VECTOR(uint32_t, 4))(4294967289UL)), ((VECTOR(uint32_t, 4))(0x87F0B6E3L))))).x , (*p_2366->g_1358)))) , p_24))), 12)))) , l_1344.s7);
    }
    else
    { /* block id: 522 */
        VECTOR(uint8_t, 2) l_1364 = (VECTOR(uint8_t, 2))(0x1EL, 0x74L);
        VECTOR(int8_t, 4) l_1365 = (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0L), 0L);
        VECTOR(uint8_t, 8) l_1367 = (VECTOR(uint8_t, 8))(0xE6L, (VECTOR(uint8_t, 4))(0xE6L, (VECTOR(uint8_t, 2))(0xE6L, 0UL), 0UL), 0UL, 0xE6L, 0UL);
        uint8_t *l_1368 = (void*)0;
        uint8_t *l_1369 = (void*)0;
        uint8_t *l_1370[10][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint16_t *l_1375 = (void*)0;
        uint16_t *l_1376[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_1377 = (-7L);
        int16_t ***l_1385 = &p_2366->g_319;
        int16_t ****l_1384 = &l_1385;
        int32_t *l_1387 = (void*)0;
        uint32_t **l_1395 = (void*)0;
        uint16_t ***l_1402 = (void*)0;
        uint64_t ***l_1403[7] = {&l_1338,&l_1338,&l_1338,&l_1338,&l_1338,&l_1338,&l_1338};
        int32_t *l_1404 = (void*)0;
        int32_t *l_1405 = (void*)0;
        uint32_t l_1413 = 0x85CDFE3AL;
        VECTOR(uint8_t, 8) l_1444 = (VECTOR(uint8_t, 8))(0x00L, (VECTOR(uint8_t, 4))(0x00L, (VECTOR(uint8_t, 2))(0x00L, 0x2DL), 0x2DL), 0x2DL, 0x00L, 0x2DL);
        VECTOR(int32_t, 8) l_1446 = (VECTOR(int32_t, 8))(0x38F3A19DL, (VECTOR(int32_t, 4))(0x38F3A19DL, (VECTOR(int32_t, 2))(0x38F3A19DL, 7L), 7L), 7L, 0x38F3A19DL, 7L);
        int16_t l_1498[2];
        int8_t **l_1558 = (void*)0;
        int i, j;
        for (i = 0; i < 2; i++)
            l_1498[i] = 0x788FL;
lbl_1559:
        (*p_2366->g_1388) = ((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 4))(0x44L, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(GROUP_DIVERGE(0, 1), 251UL, 0UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(0xA0L, 8UL, ((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))(p_2366->g_1363.zwyzzxwzzwwyxzyw)).sb1, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(l_1364.xxyxxxxx)).s26, ((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-8L), 1L)), 0x0EL, 1L)).wywxwxywwwzxzwwy, ((VECTOR(int8_t, 8))(l_1365.zwxywzzw)).s2104746105033244))))).s7d26, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(1UL, 0xDDL)).xxxxxxyxxyxxyyxx)).s6b)).xxxy))).even))).xyxxyxxx)).s45, (uint8_t)(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(p_2366->g_1366.wxxwzywz)).s4637170742712313)).sc | 0x702955C8L)))))).xxxxyxxxyxyyxyxy)).sfa, ((VECTOR(uint8_t, 4))(l_1367.s0735)).lo))), (p_2366->g_1085.w = (p_2366->g_107.x ^= l_1344.s6)), (safe_lshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u((((p_2366->g_1378--) , ((l_1344.s1 , ((void*)0 == (*p_2366->g_1356))) ^ ((safe_div_func_uint32_t_u_u((l_1383 != ((*l_1384) = (void*)0)), (*p_2366->g_937))) , 65535UL))) < FAKE_DIVERGE(p_2366->local_2_offset, get_local_id(2), 10)), p_2366->g_113)), l_1331.x)), 0x16L, 247UL)).odd)), 0UL)).s66)).xxxyxyxy, ((VECTOR(uint8_t, 8))(0x29L))))).s04, ((VECTOR(uint8_t, 2))(0UL))))), 0x98L)).even, (uint8_t)p_24))).even, p_2366->g_1386)) && l_1326.x);
        if ((((*p_2366->g_1388) = (((!p_24) , &l_1338) != (((*p_2366->g_526) <= (0L >= (((safe_lshift_func_uint16_t_u_s(l_1331.w, (((safe_mul_func_int16_t_s_s(l_1326.x, (l_1396 = (l_1393[3][3] == l_1395)))) , (l_1377 ^= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_2366->g_1397.zzxw)), (safe_lshift_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_u(((+p_26) < FAKE_DIVERGE(p_2366->group_1_offset, get_group_id(1), 10)), p_2366->g_448.w)) , (void*)0) == l_1402), 4)), (-7L), ((VECTOR(int32_t, 8))((-1L))), 0x6F738FF0L, 0x73798170L)).odd)).s6)) < p_26))) , p_24) & l_1326.y))) , l_1403[4]))) <= 4UL))
        { /* block id: 531 */
            int32_t *l_1406 = &l_1377;
            int32_t *l_1407 = &p_2366->g_979;
            int32_t *l_1408 = &p_2366->g_220;
            int32_t *l_1409 = &p_2366->g_1253;
            int32_t *l_1410 = (void*)0;
            int32_t *l_1411 = (void*)0;
            int32_t *l_1412[7];
            uint16_t ****l_1427 = &l_1402;
            uint64_t *l_1430 = &p_2366->g_113;
            VECTOR(int32_t, 8) l_1434 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x165D4613L), 0x165D4613L), 0x165D4613L, 6L, 0x165D4613L);
            VECTOR(uint8_t, 2) l_1445 = (VECTOR(uint8_t, 2))(255UL, 0xA1L);
            int8_t *l_1447 = (void*)0;
            int8_t *l_1448 = (void*)0;
            int8_t *l_1449 = (void*)0;
            int8_t *l_1450 = (void*)0;
            int8_t *l_1451[4][10][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_1412[i] = &l_1396;
            l_1413--;
            (*l_1407) = (safe_sub_func_uint64_t_u_u(((++p_2366->g_1343.s5) < ((safe_div_func_int64_t_s_s(((p_2366->g_1426 , 0x773EL) < (((*l_1427) = (void*)0) == ((((safe_lshift_func_uint8_t_u_s(((****p_2366->g_1355) <= p_26), 3)) , (void*)0) != l_1430) , ((((p_2366->g_1183.z & (safe_rshift_func_uint8_t_u_u((p_2366->g_1085.w = p_26), FAKE_DIVERGE(p_2366->local_0_offset, get_local_id(0), 10)))) | (-1L)) >= p_24) , (void*)0)))), 18446744073709551615UL)) == 7UL)), l_1433[1][2][0]));
            if (p_2366->g_1426)
                goto lbl_1452;
lbl_1452:
            (*l_1408) |= ((GROUP_DIVERGE(2, 1) & (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_1434.s0464006271144234)).s0c)).xxxxyxxyyyxxyxyy)).s6 == 4294967295UL)) , ((((((++(**p_2366->g_1357)) < (safe_sub_func_int8_t_s_s((FAKE_DIVERGE(p_2366->group_2_offset, get_group_id(2), 10) , (safe_div_func_int16_t_s_s((p_26 |= 1L), (safe_div_func_int32_t_s_s((((GROUP_DIVERGE(1, 1) >= l_1443) && l_1443) >= (((p_24 , GROUP_DIVERGE(2, 1)) , ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))(l_1444.s20704455)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(l_1445.yyxxxxyx))))))))).hi)).y) && p_24)), ((VECTOR(int32_t, 2))(l_1446.s27)).lo))))), (p_2366->g_450.x = (p_24 < 3L))))) , (-1L)) || p_2366->g_1359) > p_24) & l_1326.y));
            return l_1453;
        }
        else
        { /* block id: 543 */
            int32_t **l_1454 = &p_2366->g_347;
            int32_t l_1494[4][1];
            int8_t l_1497[6][2];
            int32_t ****l_1555 = &p_2366->g_1246[1];
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1494[i][j] = 0x68DD0441L;
            }
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 2; j++)
                    l_1497[i][j] = 0x4AL;
            }
            (*l_1454) = p_27;
            for (p_2366->g_256 = 3; (p_2366->g_256 < 12); ++p_2366->g_256)
            { /* block id: 547 */
                VECTOR(int8_t, 2) l_1461 = (VECTOR(int8_t, 2))(0x22L, 1L);
                VECTOR(uint64_t, 16) l_1483 = (VECTOR(uint64_t, 16))(0x258A842DCFC65CA1L, (VECTOR(uint64_t, 4))(0x258A842DCFC65CA1L, (VECTOR(uint64_t, 2))(0x258A842DCFC65CA1L, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 0x258A842DCFC65CA1L, 18446744073709551606UL, (VECTOR(uint64_t, 2))(0x258A842DCFC65CA1L, 18446744073709551606UL), (VECTOR(uint64_t, 2))(0x258A842DCFC65CA1L, 18446744073709551606UL), 0x258A842DCFC65CA1L, 18446744073709551606UL, 0x258A842DCFC65CA1L, 18446744073709551606UL);
                uint32_t **l_1509[3];
                int32_t l_1524[2];
                int i;
                for (i = 0; i < 3; i++)
                    l_1509[i] = &l_1394;
                for (i = 0; i < 2; i++)
                    l_1524[i] = 0x40C8DADEL;
                for (p_2366->g_979 = (-3); (p_2366->g_979 != 3); p_2366->g_979 = safe_add_func_uint16_t_u_u(p_2366->g_979, 8))
                { /* block id: 550 */
                    int64_t l_1495 = (-2L);
                    uint32_t **l_1507[9] = {&l_1394,&l_1394,&l_1394,&l_1394,&l_1394,&l_1394,&l_1394,&l_1394,&l_1394};
                    int32_t l_1528 = 0x7DE423E5L;
                    uint8_t l_1556 = 0x35L;
                    int i;
                    if ((safe_add_func_int16_t_s_s((((VECTOR(int8_t, 16))(l_1461.xyxxyyyxxyxxyxyx)).sc || (((safe_add_func_uint8_t_u_u(l_1464, ((0x0180L ^ (safe_lshift_func_uint16_t_u_s(65529UL, (+(safe_lshift_func_int16_t_s_s(((((p_26 <= (p_24 < (p_26 , (safe_mod_func_uint64_t_u_u((safe_mod_func_int64_t_s_s((((safe_div_func_int32_t_s_s(((safe_div_func_int32_t_s_s((safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))((p_2366->g_1359 & ((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 16))((((l_1494[3][0] &= ((*p_2366->g_347) = ((safe_lshift_func_uint16_t_u_s((l_1461.x & ((((VECTOR(uint64_t, 8))(l_1483.s9cda2898)).s5 , (safe_mod_func_int64_t_s_s((safe_sub_func_int64_t_s_s(((safe_add_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u(((safe_lshift_func_int8_t_s_u(p_24, FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10))) <= 2L), p_26)), l_1344.s4)) == p_24), p_26)), 0x283B0B538F3EC0E4L))) != (*p_2366->g_347))), l_1461.y)) , 0x143777F5L))) < 0x085E8B51L) >= l_1495), ((VECTOR(uint16_t, 8))(0x2038L)), ((VECTOR(uint16_t, 2))(0xB92DL)), ((VECTOR(uint16_t, 4))(0x0977L)), 0xCEFCL)), (uint16_t)p_2366->g_1496))).s2), 1UL, 0xD8L, ((VECTOR(uint8_t, 4))(1UL)), 1UL)).s2, p_26)), 2)), l_1497[2][1])) , p_24), p_24)) < p_2366->g_35.s4) || p_26), 0x047D6A0BEA5E9137L)), l_1326.x))))) , p_26) | p_26) ^ 1UL), l_1498[1])))))) <= 0x29F09434L))) , 0xC712L) && l_1483.se)), l_1483.sd)))
                    { /* block id: 553 */
                        (*p_2366->g_347) = ((void*)0 == p_25);
                    }
                    else
                    { /* block id: 555 */
                        uint32_t ***l_1508 = &l_1507[1];
                        uint32_t l_1520 = 4294967295UL;
                        int16_t *l_1522 = (void*)0;
                        int64_t *l_1525 = (void*)0;
                        int64_t *l_1526 = (void*)0;
                        int64_t *l_1527 = &l_1495;
                        int32_t ****l_1537 = &p_2366->g_1246[0];
                        int32_t *****l_1538 = &p_2366->g_1245;
                        VECTOR(uint64_t, 2) l_1553 = (VECTOR(uint64_t, 2))(0x58C1997A123C4F3DL, 0xA8DD6904D2CD2BFEL);
                        int8_t *l_1554 = &l_1497[2][1];
                        int32_t *l_1557 = &l_1494[3][0];
                        int i;
                        (*l_1454) = (*l_1454);
                        l_1528 ^= ((safe_lshift_func_int8_t_s_s((l_1331.y | 1L), 7)) & ((*l_1394) = (safe_div_func_uint32_t_u_u(l_1483.s4, ((((safe_lshift_func_uint16_t_u_u(((((safe_mul_func_uint16_t_u_u((((((*l_1527) ^= (((((((*l_1508) = l_1507[8]) != l_1509[2]) <= (safe_add_func_uint16_t_u_u(((l_1524[1] = ((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))((safe_rshift_func_uint16_t_u_u(l_1516, ((p_2366->g_2 != (safe_sub_func_uint16_t_u_u((((VECTOR(uint8_t, 16))(p_2366->g_1519.yxxxxyyxxyyxxxyx)).sd || ((l_1520 ^ (safe_unary_minus_func_int32_t_s(((((void*)0 == l_1522) == p_26) || 0x4AD462B6L)))) , p_24)), p_2366->g_90[2]))) >= p_2366->g_1523))), p_24, 2L, (-7L))).x, 0x922FB45CC36A3885L)) ^ p_26)) && p_26), l_1433[1][6][2]))) == p_2366->g_63) || 0x4A16L) , 0x4AED5A6270B533ACL)) ^ p_26) , p_2366->g_1278.s1) > p_26), (**l_1454))) || GROUP_DIVERGE(0, 1)) ^ (**l_1454)) , (**p_2366->g_525)), 6)) > p_26) <= (-4L)) , l_1461.x)))));
                        if (p_26)
                            break;
                        (*p_2366->g_937) |= (((safe_div_func_int32_t_s_s((l_1327.s5 ^ (safe_lshift_func_uint8_t_u_u(((void*)0 == p_2366->g_568), ((((((*l_1557) = ((((safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((*l_1538) = l_1537) == (((*l_1554) = ((safe_rshift_func_int16_t_s_s((safe_unary_minus_func_int64_t_s((safe_rshift_func_int8_t_s_u((l_1331.w <= ((**l_1454) = p_26)), (safe_div_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((((p_2366->g_1548 = (void*)0) != (void*)0) < ((p_2366->g_1343.s3--) ^ ((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_1553.xxxyxxyy)).s1470115264212034)).s11)).xyxy)))))).odd)).yyxxyxxxxxxxyyxx)).s58))).xyxxyyxx)).s3, l_1524[1])) & l_1331.z))), 0x44C9D09FL)), p_26)))))), 11)) == (-6L))) , l_1555)), 4UL)), 0x45E4L)) , l_1556) == l_1528) & l_1495)) > 0xEC8E7294L) == 1L) & l_1495) | 1L)))), 0x1E2193C2L)) , l_1558) == l_1558);
                    }
                    if (l_1377)
                        goto lbl_1561;
                }
                if (p_2366->g_2)
                    goto lbl_1559;
                return p_27;
            }
            return l_1387;
        }
    }
lbl_1561:
    (*p_2366->g_1560) = l_1331.y;
    p_2366->g_319 = ((!((void*)0 != l_1354)) , &p_2366->g_320);
    l_1326.y = l_1443;
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_1026 p_2366->g_220 p_2366->g_979 p_2366->g_1183 p_2366->g_40 p_2366->g_1189 p_2366->g_285 p_2366->g_1210 p_2366->g_1024 p_2366->g_526 p_2366->g_300 p_2366->g_525 p_2366->g_1225 p_2366->g_1227 p_2366->g_963 p_2366->g_90 p_2366->g_279 p_2366->g_283 p_2366->g_1245 p_2366->g_1278 p_2366->g_1284 p_2366->g_1294 p_2366->g_600 p_2366->g_1295 p_2366->g_1246 p_2366->g_1310 p_2366->g_35 p_2366->g_160 p_2366->g_1253 p_2366->g_113
 * writes: p_2366->g_113 p_2366->g_160 p_2366->g_40 p_2366->g_979 p_2366->g_300 p_2366->g_90 p_2366->g_1024 p_2366->g_285 p_2366->g_1253 p_2366->g_1310 p_2366->g_1189 p_2366->g_164
 */
int16_t  func_32(int8_t  p_33, int32_t * p_34, struct S0 * p_2366)
{ /* block id: 441 */
    uint32_t l_1147 = 0x39866F4DL;
    int32_t *l_1151 = &p_2366->g_220;
    VECTOR(uint64_t, 4) l_1162 = (VECTOR(uint64_t, 4))(7UL, (VECTOR(uint64_t, 2))(7UL, 1UL), 1UL);
    VECTOR(int64_t, 4) l_1166 = (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0x77A74096C2D26E03L), 0x77A74096C2D26E03L);
    VECTOR(int64_t, 4) l_1167 = (VECTOR(int64_t, 4))(0x305054FE9F131D2DL, (VECTOR(int64_t, 2))(0x305054FE9F131D2DL, 1L), 1L);
    int32_t ***l_1175 = &p_2366->g_536;
    VECTOR(int64_t, 2) l_1176 = (VECTOR(int64_t, 2))(0x1EA4A535C57E3246L, 1L);
    VECTOR(uint16_t, 8) l_1182 = (VECTOR(uint16_t, 8))(0x57ABL, (VECTOR(uint16_t, 4))(0x57ABL, (VECTOR(uint16_t, 2))(0x57ABL, 5UL), 5UL), 5UL, 0x57ABL, 5UL);
    int8_t l_1218 = 1L;
    VECTOR(uint16_t, 16) l_1222 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint16_t, 2))(1UL, 0UL), (VECTOR(uint16_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
    uint64_t ***l_1236 = &p_2366->g_762;
    int32_t ****l_1248 = &p_2366->g_1246[2];
    int32_t l_1265 = 0L;
    int32_t l_1266 = (-1L);
    int32_t l_1267 = (-5L);
    VECTOR(int16_t, 2) l_1277 = (VECTOR(int16_t, 2))(0L, 0L);
    VECTOR(int8_t, 4) l_1285 = (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, 0x57L), 0x57L);
    VECTOR(uint16_t, 16) l_1311 = (VECTOR(uint16_t, 16))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 7UL), 7UL), 7UL, 65532UL, 7UL, (VECTOR(uint16_t, 2))(65532UL, 7UL), (VECTOR(uint16_t, 2))(65532UL, 7UL), 65532UL, 7UL, 65532UL, 7UL);
    int32_t l_1312 = (-1L);
    int32_t l_1319 = 0x18979778L;
    int32_t l_1320 = 0x65B8F847L;
    int32_t l_1321 = 0x6770BC62L;
    int i;
lbl_1203:
    for (p_2366->g_113 = 16; (p_2366->g_113 > 13); --p_2366->g_113)
    { /* block id: 444 */
        int32_t l_1146 = 0x79EFB77CL;
        int32_t l_1155[6] = {1L,1L,1L,1L,1L,1L};
        uint16_t *l_1161 = &p_2366->g_300[2];
        uint16_t **l_1160 = &l_1161;
        uint64_t *l_1163 = &p_2366->g_106;
        int32_t l_1169[7] = {(-5L),0x0C106C61L,(-5L),(-5L),0x0C106C61L,(-5L),(-5L)};
        int i;
        for (p_2366->g_160 = 12; (p_2366->g_160 == 21); ++p_2366->g_160)
        { /* block id: 447 */
            int32_t *l_1140 = &p_2366->g_285[3];
            int32_t *l_1141 = &p_2366->g_285[3];
            int32_t *l_1142 = (void*)0;
            int32_t *l_1143 = &p_2366->g_979;
            int32_t *l_1144 = &p_2366->g_220;
            int32_t *l_1145[8][2];
            int32_t **l_1150[8][10] = {{&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142},{&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142},{&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142},{&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142},{&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142},{&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142},{&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142},{&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142,&l_1144,&l_1142,&l_1142}};
            int i, j;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 2; j++)
                    l_1145[i][j] = &p_2366->g_220;
            }
            l_1140 = p_34;
            --l_1147;
            if (p_33)
                continue;
            l_1151 = &l_1146;
        }
        for (p_2366->g_40 = 9; (p_2366->g_40 < 10); p_2366->g_40 = safe_add_func_uint16_t_u_u(p_2366->g_40, 2))
        { /* block id: 455 */
            int32_t *l_1154 = &p_2366->g_979;
            int32_t *l_1156[8][6] = {{&l_1155[5],&l_1155[5],&p_2366->g_220,(void*)0,&l_1146,(void*)0},{&l_1155[5],&l_1155[5],&p_2366->g_220,(void*)0,&l_1146,(void*)0},{&l_1155[5],&l_1155[5],&p_2366->g_220,(void*)0,&l_1146,(void*)0},{&l_1155[5],&l_1155[5],&p_2366->g_220,(void*)0,&l_1146,(void*)0},{&l_1155[5],&l_1155[5],&p_2366->g_220,(void*)0,&l_1146,(void*)0},{&l_1155[5],&l_1155[5],&p_2366->g_220,(void*)0,&l_1146,(void*)0},{&l_1155[5],&l_1155[5],&p_2366->g_220,(void*)0,&l_1146,(void*)0},{&l_1155[5],&l_1155[5],&p_2366->g_220,(void*)0,&l_1146,(void*)0}};
            uint32_t l_1157 = 4294967295UL;
            int i, j;
            if (p_33)
                break;
            if (p_33)
                break;
            ++l_1157;
        }
        l_1169[4] ^= (((+((-2L) && (~(*p_2366->g_1026)))) <= (((void*)0 != l_1160) & (GROUP_DIVERGE(2, 1) || 253UL))) >= (((VECTOR(uint64_t, 16))(0xB4678312440319F6L, 0x4A0FA9B2A5A15DD8L, 18446744073709551615UL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(l_1162.zwwzwwzy)))).hi)), 18446744073709551615UL, (++(*l_1163)), ((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 16))(FAKE_DIVERGE(p_2366->global_2_offset, get_global_id(2), 10), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(l_1166.zz)).yyxxxxyy)).s60, ((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 2))(l_1167.zx)).yyxxxxxyxyyxyxyx, (int64_t)(((VECTOR(uint64_t, 2))(p_2366->g_1168.s60)).odd < (((p_33 > (l_1155[1] = 0x44L)) , 1L) , ((p_2366->g_279.sd < p_33) , 9L))), (int64_t)l_1146))).s1b))), 0xD61A7847F034B7B8L, 0UL)), ((VECTOR(uint64_t, 2))(18446744073709551611UL)), ((VECTOR(uint64_t, 8))(0x53807DD6ADCD0D23L)), 18446744073709551615UL)).s345b, ((VECTOR(uint64_t, 4))(0UL))))), ((VECTOR(uint64_t, 4))(0x882682245798E750L))))).hi, ((VECTOR(uint64_t, 2))(1UL)), ((VECTOR(uint64_t, 2))(0x4755380384F106EFL))))), 0x4B7C56A544A19D9AL, 1UL, 1UL, 4UL, 6UL)).s4 >= 0UL));
    }
    for (p_2366->g_979 = 0; (p_2366->g_979 < (-23)); p_2366->g_979 = safe_sub_func_uint8_t_u_u(p_2366->g_979, 8))
    { /* block id: 466 */
        uint16_t *l_1174 = &p_2366->g_300[2];
        VECTOR(uint16_t, 16) l_1181 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 5UL), 5UL), 5UL, 1UL, 5UL, (VECTOR(uint16_t, 2))(1UL, 5UL), (VECTOR(uint16_t, 2))(1UL, 5UL), 1UL, 5UL, 1UL, 5UL);
        uint32_t *l_1186 = &p_2366->g_40;
        int32_t l_1190 = 0x4D6BAB04L;
        uint64_t *l_1191 = &p_2366->g_106;
        uint64_t **l_1192 = &l_1191;
        uint64_t *l_1193[1][8] = {{&p_2366->g_106,&p_2366->g_113,&p_2366->g_106,&p_2366->g_106,&p_2366->g_113,&p_2366->g_106,&p_2366->g_106,&p_2366->g_113}};
        int64_t *l_1194[5][6];
        int32_t l_1195 = 0L;
        uint32_t *l_1196 = &p_2366->g_90[2];
        int32_t *l_1198 = (void*)0;
        int32_t **l_1197 = &l_1198;
        uint16_t *l_1199[4][3] = {{(void*)0,&p_2366->g_256,(void*)0},{(void*)0,&p_2366->g_256,(void*)0},{(void*)0,&p_2366->g_256,(void*)0},{(void*)0,&p_2366->g_256,(void*)0}};
        VECTOR(int32_t, 16) l_1200 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x73B69601L), 0x73B69601L), 0x73B69601L, 0L, 0x73B69601L, (VECTOR(int32_t, 2))(0L, 0x73B69601L), (VECTOR(int32_t, 2))(0L, 0x73B69601L), 0L, 0x73B69601L, 0L, 0x73B69601L);
        int32_t l_1238 = 0x11AE0056L;
        int32_t *l_1273 = (void*)0;
        int32_t *l_1274 = &p_2366->g_1253;
        VECTOR(int32_t, 8) l_1296 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x46D50BA6L), 0x46D50BA6L), 0x46D50BA6L, 8L, 0x46D50BA6L);
        VECTOR(int32_t, 16) l_1297 = (VECTOR(int32_t, 16))(0x332D8260L, (VECTOR(int32_t, 4))(0x332D8260L, (VECTOR(int32_t, 2))(0x332D8260L, 0x0BBF1C3DL), 0x0BBF1C3DL), 0x0BBF1C3DL, 0x332D8260L, 0x0BBF1C3DL, (VECTOR(int32_t, 2))(0x332D8260L, 0x0BBF1C3DL), (VECTOR(int32_t, 2))(0x332D8260L, 0x0BBF1C3DL), 0x332D8260L, 0x0BBF1C3DL, 0x332D8260L, 0x0BBF1C3DL);
        VECTOR(uint32_t, 4) l_1300 = (VECTOR(uint32_t, 4))(0x5F9F70A3L, (VECTOR(uint32_t, 2))(0x5F9F70A3L, 1UL), 1UL);
        int8_t *l_1305 = (void*)0;
        int8_t *l_1306[1][1][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t ***l_1307 = &p_2366->g_536;
        int64_t *l_1308 = (void*)0;
        int64_t *l_1309 = &p_2366->g_1310;
        int32_t l_1313[8] = {0x2590D9AEL,0x2590D9AEL,0x2590D9AEL,0x2590D9AEL,0x2590D9AEL,0x2590D9AEL,0x2590D9AEL,0x2590D9AEL};
        uint8_t *l_1314 = &p_2366->g_164;
        int32_t **l_1315 = &l_1273;
        int32_t *l_1316 = (void*)0;
        int32_t *l_1317 = (void*)0;
        int32_t *l_1318[8];
        uint32_t l_1322 = 4294967295UL;
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 6; j++)
                l_1194[i][j] = (void*)0;
        }
        for (i = 0; i < 8; i++)
            l_1318[i] = (void*)0;
        if (((safe_sub_func_uint16_t_u_u(((*l_1174) = p_33), (l_1200.s9 = ((l_1175 == (((((((*l_1196) = ((((VECTOR(uint64_t, 2))(0x94B55FDFE084717DL, 5UL)).lo , (((VECTOR(int64_t, 16))(l_1176.xyxyxyxyyxyyyyyy)).se >= (~(l_1195 ^= (((p_33 > ((((safe_div_func_int8_t_s_s(((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 4))(l_1181.s5f6e)).wzzyzxyx, ((VECTOR(uint16_t, 8))(l_1182.s55063257)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(p_2366->g_1183.zzzwzxyy))))))).s7, p_33)) , (safe_mod_func_int32_t_s_s(p_33, (~((++(*l_1186)) || FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10)))))), (l_1190 = (~((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(p_2366->g_1189.wxwzwywzwzzwwzzz)), ((VECTOR(int8_t, 2))(0x08L, 0x01L)).xyxxxxyxxyxyxyxx))).s2)))) | (((*l_1192) = (l_1181.sf , l_1191)) != ((~p_33) , l_1193[0][5]))) | 6L) | l_1181.s9)) , 0x0A2786DBL) == p_2366->g_285[1]))))) || p_33)) <= p_33) , l_1197) == &l_1198) || 0UL) , (void*)0)) , l_1190)))) & l_1181.s9))
        { /* block id: 474 */
            for (p_33 = 15; (p_33 > (-18)); p_33 = safe_sub_func_uint8_t_u_u(p_33, 4))
            { /* block id: 477 */
                if (p_2366->g_979)
                    goto lbl_1203;
            }
        }
        else
        { /* block id: 480 */
            uint16_t l_1204 = 65535UL;
            int32_t l_1208 = 1L;
            VECTOR(uint32_t, 8) l_1209 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xBCFAC6A6L), 0xBCFAC6A6L), 0xBCFAC6A6L, 1UL, 0xBCFAC6A6L);
            int8_t *l_1219 = &l_1218;
            VECTOR(uint16_t, 8) l_1226 = (VECTOR(uint16_t, 8))(0x2529L, (VECTOR(uint16_t, 4))(0x2529L, (VECTOR(uint16_t, 2))(0x2529L, 65535UL), 65535UL), 65535UL, 0x2529L, 65535UL);
            uint64_t ***l_1237[4][9] = {{&l_1192,&l_1192,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&l_1192,&l_1192},{&l_1192,&l_1192,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&l_1192,&l_1192},{&l_1192,&l_1192,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&l_1192,&l_1192},{&l_1192,&l_1192,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&p_2366->g_762,&l_1192,&l_1192}};
            int i, j;
            if (l_1204)
                break;
            for (l_1147 = 0; (l_1147 == 17); l_1147++)
            { /* block id: 484 */
                uint64_t **l_1207[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                VECTOR(int32_t, 8) l_1211 = (VECTOR(int32_t, 8))(0x70F6E8A2L, (VECTOR(int32_t, 4))(0x70F6E8A2L, (VECTOR(int32_t, 2))(0x70F6E8A2L, 1L), 1L), 1L, 0x70F6E8A2L, 1L);
                int32_t *l_1212[2][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j;
                p_2366->g_1024.s8 &= ((((void*)0 != l_1207[3]) , (l_1208 = (-1L))) ^ (((VECTOR(uint32_t, 4))(l_1209.s3607)).x , ((VECTOR(int64_t, 4))(p_2366->g_1210.xxxy)).w));
                l_1208 = ((VECTOR(int32_t, 2))(l_1211.s01)).odd;
                return l_1200.s0;
            }
            for (p_33 = (-25); (p_33 > (-9)); ++p_33)
            { /* block id: 492 */
                int32_t *l_1215 = &l_1190;
                (*l_1215) &= l_1208;
            }
            if ((safe_mul_func_uint8_t_u_u((((*l_1219) = l_1218) > ((safe_mod_func_uint16_t_u_u(l_1195, (l_1200.s7 = ((VECTOR(uint16_t, 2))(65529UL, 0UL)).lo))) && (((((VECTOR(uint8_t, 16))(0x37L, (((((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 2))(65529UL, 0UL)).xyyyyyxy, ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 16))(l_1222.sbd7073dfff7eb983)), (uint16_t)(((((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 2))(0x63FA89D2L, 1UL)).yxxyyyyx, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))((*p_2366->g_526), (--(*l_1174)), (**p_2366->g_525), 65529UL, ((VECTOR(uint16_t, 8))(p_2366->g_1225.s76014662)), ((VECTOR(uint16_t, 2))(l_1226.s61)), 4UL, 6UL)).lo)).s5147711573742073, ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(p_2366->g_1227.sa0cd4cc341177311)).hi)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(0x61L, (p_33 >= (((*l_1196) ^= (p_33 >= ((safe_lshift_func_uint16_t_u_u((((safe_div_func_uint64_t_u_u(0x0D71EDD426EC1840L, ((((safe_mod_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))((&l_1151 == (void*)0), 0x42A4L, l_1209.s3, 0x75ECL, p_33, (-1L), ((VECTOR(int16_t, 4))(0x5C1DL)), 0L, (-7L), ((VECTOR(int16_t, 4))(0L)))).sa, FAKE_DIVERGE(p_2366->group_2_offset, get_group_id(2), 10))), 5UL)) || 0x0764L) == p_33) , p_2366->g_963.y))) , l_1236) != l_1237[0][7]), 8)) <= l_1226.s6))) < 0UL)), p_2366->g_279.s0, ((VECTOR(uint8_t, 8))(0x12L)), p_33, 0xAEL, l_1238, 0xBFL, 0x2DL)).s97)), ((VECTOR(uint8_t, 2))(246UL))))).xyxyxyyx))))).lo, ((VECTOR(uint16_t, 4))(3UL))))).ywzwxywzyzwywzxx))).s0c)).yyxxxxyy))).s2 & l_1195) == 0x665C6E42E2FB4480L) , GROUP_DIVERGE(0, 1))))).even))).s5 && 0x7CB6L) || l_1226.s2) <= 0UL), l_1181.sb, 0x22L, ((VECTOR(uint8_t, 4))(0xDEL)), 0x1EL, ((VECTOR(uint8_t, 4))(251UL)), 248UL, 0x41L, 0x1BL)).s4 >= p_33) , 0x2F056B02C675333CL) && p_2366->g_283[3][0][4]))), 0x7CL)))
            { /* block id: 499 */
                int32_t *****l_1247[2][6];
                int32_t *l_1249 = &p_2366->g_285[3];
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 6; j++)
                        l_1247[i][j] = &p_2366->g_1245;
                }
                (*l_1249) &= ((safe_sub_func_int16_t_s_s(p_33, 0x64B7L)) , (p_33 == (&p_2366->g_535 == (l_1248 = ((safe_rshift_func_int16_t_s_u(0x49B8L, p_33)) , p_2366->g_1245)))));
            }
            else
            { /* block id: 502 */
                int32_t *l_1250 = &p_2366->g_220;
                int32_t *l_1251 = &p_2366->g_285[0];
                int32_t *l_1252 = &l_1195;
                int32_t *l_1254 = (void*)0;
                int32_t *l_1255 = (void*)0;
                int32_t *l_1256 = (void*)0;
                int32_t *l_1257 = &l_1238;
                int32_t *l_1258 = (void*)0;
                int32_t *l_1259 = &l_1208;
                int32_t *l_1260 = &l_1208;
                int32_t *l_1261 = &l_1195;
                int32_t *l_1262 = (void*)0;
                int32_t *l_1263 = &p_2366->g_285[3];
                int32_t *l_1264[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                uint64_t l_1268 = 0x46F7C56069E849AFL;
                int i;
                ++l_1268;
            }
        }
        (*l_1274) = ((safe_lshift_func_int8_t_s_u(l_1200.s6, 7)) , ((l_1181.s3 & p_33) || l_1181.sd));
        (*l_1315) = (((((((*l_1314) = (((p_33 <= 0x66L) != (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_1277.yyyxyyxx)).s2274467657131554)).sbc8f, ((VECTOR(int16_t, 8))(p_2366->g_1278.sea851f39)).lo))).yyyywzww)).hi)))).w > ((((safe_unary_minus_func_uint8_t_u(((((((safe_sub_func_uint16_t_u_u(p_33, (5L < ((safe_mod_func_int8_t_s_s((p_2366->g_1189.w &= ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(p_2366->g_1284.s9a62334b)))).s7265722331101643, ((VECTOR(int8_t, 4))(l_1285.wzxy)).wwwxyxxyyyxxyyyz, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(((safe_mul_func_uint8_t_u_u((safe_add_func_int32_t_s_s((safe_mul_func_int16_t_s_s((((safe_div_func_int32_t_s_s((((+((VECTOR(uint16_t, 8))(p_2366->g_1294.ywyxzzwz)).s7) || ((*l_1174) = ((p_2366->g_600.s5 , ((((65528UL & 0xC48BL) > ((VECTOR(uint64_t, 16))(p_2366->g_1295.s7277336106256644)).s0) > ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_1296.s5111375235032077)).s69, ((VECTOR(int32_t, 2))(l_1297.sfc))))), 1L, ((VECTOR(int32_t, 8))((-1L), ((((safe_div_func_uint64_t_u_u(((GROUP_DIVERGE(1, 1) ^ (((VECTOR(uint32_t, 8))(l_1300.xwwzwxyz)).s2 > (((*l_1309) |= ((*p_2366->g_1245) != ((safe_lshift_func_int8_t_s_u(((*l_1274) = (safe_mod_func_uint8_t_u_u(255UL, p_2366->g_600.s3))), 2)) , l_1307))) , 0x34015D99L))) && l_1311.sa), p_33)) | p_33) >= p_33) , p_33), ((VECTOR(int32_t, 4))((-8L))), 1L, (-9L))), ((VECTOR(int32_t, 2))(0x67D8AF37L)), ((VECTOR(int32_t, 2))(0x2974B56BL)), (-7L))).s8) & 0xD3BBBE39L)) , 8UL))) <= 0x38A88B90B26BDFF3L), p_2366->g_283[3][0][4])) , p_2366->g_283[5][2][0]) || l_1182.s7), p_33)), 0L)), p_2366->g_35.s0)) , p_33), (-1L), l_1312, ((VECTOR(int8_t, 8))(0x1AL)), ((VECTOR(int8_t, 4))(0x51L)), 0x68L)), ((VECTOR(int8_t, 16))((-1L)))))).s7ed6))).xzxxyxzyzwwxzzyx)).even)).s5742026464100572))))).s2), FAKE_DIVERGE(p_2366->global_1_offset, get_global_id(1), 10))) , l_1313[4])))) & p_33) > 1L) ^ p_33) , p_2366->g_160) , p_2366->g_1284.sa))) >= 0x26BDCEAF8AEDFA1DL) & GROUP_DIVERGE(2, 1)) > 1L))) > p_2366->g_1024.s4)) < p_2366->g_40) , (*l_1274)) > 0x6B5A575945985F5EL) == p_33) , (void*)0);
        l_1322--;
    }
    return l_1176.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_979 p_2366->g_980 p_2366->g_455 p_2366->g_285 p_2366->g_937 p_2366->g_963 p_2366->g_107 p_2366->g_486 p_2366->g_924 p_2366->g_651 p_2366->g_1024 p_2366->g_1026 p_2366->g_220 p_2366->g_164 p_2366->g_160 p_2366->g_568 p_2366->g_63 p_2366->g_386 p_2366->g_1085 p_2366->g_777 p_2366->g_81 p_2366->g_37 p_2366->g_82 p_2366->g_21 p_2366->g_319 p_2366->g_1096
 * writes: p_2366->g_285 p_2366->g_35 p_2366->g_486 p_2366->g_220 p_2366->g_164 p_2366->g_160 p_2366->g_63 p_2366->g_90 p_2366->g_37 p_2366->g_40 p_2366->g_347
 */
int16_t  func_47(uint64_t  p_48, uint32_t  p_49, uint32_t  p_50, struct S0 * p_2366)
{ /* block id: 387 */
    uint8_t l_977 = 0x46L;
    VECTOR(int8_t, 16) l_978 = (VECTOR(int8_t, 16))(0x22L, (VECTOR(int8_t, 4))(0x22L, (VECTOR(int8_t, 2))(0x22L, 4L), 4L), 4L, 0x22L, 4L, (VECTOR(int8_t, 2))(0x22L, 4L), (VECTOR(int8_t, 2))(0x22L, 4L), 0x22L, 4L, 0x22L, 4L);
    VECTOR(uint16_t, 4) l_995 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65535UL), 65535UL);
    VECTOR(int8_t, 8) l_1017 = (VECTOR(int8_t, 8))(0x33L, (VECTOR(int8_t, 4))(0x33L, (VECTOR(int8_t, 2))(0x33L, 1L), 1L), 1L, 0x33L, 1L);
    int32_t ***l_1021 = &p_2366->g_536;
    int32_t l_1039[9];
    VECTOR(int64_t, 16) l_1052 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int64_t, 2))(1L, 0L), (VECTOR(int64_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
    uint32_t ***l_1060 = (void*)0;
    uint32_t **l_1063 = (void*)0;
    uint32_t ***l_1062[2];
    VECTOR(int32_t, 8) l_1074 = (VECTOR(int32_t, 8))(0x43A6DAB6L, (VECTOR(int32_t, 4))(0x43A6DAB6L, (VECTOR(int32_t, 2))(0x43A6DAB6L, 0x7925AB68L), 0x7925AB68L), 0x7925AB68L, 0x43A6DAB6L, 0x7925AB68L);
    int8_t l_1110 = 0x08L;
    int i;
    for (i = 0; i < 9; i++)
        l_1039[i] = 0x5EBD0D1FL;
    for (i = 0; i < 2; i++)
        l_1062[i] = &l_1063;
    if (((VECTOR(int32_t, 8))((l_977 & ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_978.s5e)).yyyxxxxx)).s3), 0x5DCA25BDL, p_2366->g_979, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(p_2366->g_980.zwywzzxw)).odd, ((VECTOR(int32_t, 8))(1L, 0x5CD06470L, 0x78E0AA48L, 1L, 0x6E594E5FL, (-5L), (-1L), 0x5AC9D695L)).odd))))), 0x4A7FC035L)).s5)
    { /* block id: 388 */
        int32_t *l_981 = &p_2366->g_285[3];
        uint16_t **l_987 = (void*)0;
        uint16_t ***l_986 = &l_987;
        int64_t *l_992 = (void*)0;
        VECTOR(int64_t, 2) l_1000 = (VECTOR(int64_t, 2))(0x6E129BC5327669EBL, 0x67B967DF3BB0AE01L);
        VECTOR(uint64_t, 8) l_1001 = (VECTOR(uint64_t, 8))(0x2EE914A57962CD22L, (VECTOR(uint64_t, 4))(0x2EE914A57962CD22L, (VECTOR(uint64_t, 2))(0x2EE914A57962CD22L, 1UL), 1UL), 1UL, 0x2EE914A57962CD22L, 1UL);
        int64_t l_1006 = (-9L);
        VECTOR(int32_t, 8) l_1023 = (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x5312A329L), 0x5312A329L), 0x5312A329L, 3L, 0x5312A329L);
        uint8_t l_1042 = 1UL;
        int i;
        (*l_981) = 0x5F82BD6FL;
        if ((0x197851203C2541A8L <= (l_1006 = ((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 16))((safe_rshift_func_int8_t_s_s(((safe_add_func_int32_t_s_s(((~(l_986 != (void*)0)) > (((safe_sub_func_int64_t_s_s(((safe_add_func_int64_t_s_s((p_2366->g_35.s0 = p_2366->g_455.s6), p_50)) == (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(l_995.zzwxxwxxxyxzxwwy)).sa, (safe_div_func_uint32_t_u_u((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 16))(l_1000.yxxxxxyxyyyxxxxy)).s5, (p_48 ^ ((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 4))(l_1001.s2414)).yxywxxxxzwyxxwyw, ((VECTOR(uint64_t, 2))(18446744073709551609UL, 0x2ACE52C785CC055EL)).yyyxxyyxyxyxyxyx))).s4))), (((*l_981) != ((((~((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint64_t_u_u(p_49, (p_50 & (-1L)))) | FAKE_DIVERGE(p_2366->local_1_offset, get_local_id(1), 10)), 0x11L)) | p_50)) < 1UL) && (*p_2366->g_937)) , (*l_981))) ^ p_2366->g_963.z)))))), FAKE_DIVERGE(p_2366->global_2_offset, get_global_id(2), 10))) != p_2366->g_107.y) || p_48)), (-1L))) || 9L), 6)), 18446744073709551607UL, ((VECTOR(uint64_t, 8))(0UL)), 0xBC60AF8667614EA0L, p_49, ((VECTOR(uint64_t, 2))(0xEB56CD2F247B957CL)), 18446744073709551612UL, 0xBB693B5A4873AD6EL)).sb946, (uint64_t)l_978.sc))).yyyzwzyw, ((VECTOR(uint64_t, 8))(3UL))))), ((VECTOR(uint64_t, 8))(0xE67702B76AB731A8L))))).s2)))
        { /* block id: 392 */
            for (p_2366->g_486 = 0; (p_2366->g_486 >= 9); p_2366->g_486 = safe_add_func_uint8_t_u_u(p_2366->g_486, 3))
            { /* block id: 395 */
                return p_2366->g_924.y;
            }
        }
        else
        { /* block id: 398 */
            int64_t l_1013[3];
            int8_t **l_1016 = &p_2366->g_568;
            int32_t ****l_1022 = &l_1021;
            int32_t l_1037 = 4L;
            int32_t l_1038 = (-1L);
            int32_t l_1040[10] = {0x34E7B25CL,0x34E7B25CL,0x34E7B25CL,0x34E7B25CL,0x34E7B25CL,0x34E7B25CL,0x34E7B25CL,0x34E7B25CL,0x34E7B25CL,0x34E7B25CL};
            int32_t l_1041 = (-1L);
            int i;
            for (i = 0; i < 3; i++)
                l_1013[i] = 0x0F6CFED571897960L;
            if ((safe_mod_func_uint8_t_u_u((((safe_div_func_int8_t_s_s((l_1013[2] == (((safe_mod_func_int64_t_s_s(1L, p_2366->g_651.x)) , l_1016) == &p_2366->g_568)), ((VECTOR(int8_t, 2))(l_1017.s63)).lo)) == (safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2366->group_0_offset, get_group_id(0), 10), 3))) , (p_48 <= (safe_unary_minus_func_int8_t_s(((p_50 || (((*l_1022) = l_1021) == (void*)0)) , p_48))))), p_50)))
            { /* block id: 400 */
                return l_1013[2];
            }
            else
            { /* block id: 402 */
                uint8_t *l_1027 = &p_2366->g_164;
                int32_t l_1030 = (-4L);
                int32_t l_1033[8][6][3] = {{{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)}},{{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)}},{{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)}},{{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)}},{{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)}},{{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)}},{{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)}},{{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)},{0x5FA36AD9L,0x34724241L,(-5L)}}};
                int i, j, k;
                (*p_2366->g_1026) &= ((*l_981) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(l_1023.s1143)).zwxyyxzzywzzwwyy, ((VECTOR(int32_t, 2))(p_2366->g_1024.sf7)).xyxyxyyyxyyyxyyx))).s7856)).x);
                (*l_981) = p_50;
                l_1030 &= (((*l_1027)--) <= (*l_981));
                for (p_2366->g_160 = 0; (p_2366->g_160 == 14); p_2366->g_160 = safe_add_func_int64_t_s_s(p_2366->g_160, 1))
                { /* block id: 410 */
                    int32_t *l_1034 = (void*)0;
                    int32_t *l_1035 = &l_1033[2][5][2];
                    int32_t *l_1036[10][1][8] = {{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}},{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}},{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}},{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}},{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}},{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}},{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}},{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}},{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}},{{&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1],&p_2366->g_285[3],&p_2366->g_285[3],&l_1033[5][5][1]}}};
                    int i, j, k;
                    l_1033[5][2][1] = l_977;
                    l_1042--;
                }
            }
        }
    }
    else
    { /* block id: 416 */
        uint32_t l_1051 = 0xD2601334L;
        int32_t *l_1057 = &p_2366->g_285[3];
        int64_t *l_1058 = (void*)0;
        int64_t *l_1059[1];
        uint32_t ****l_1061 = &l_1060;
        int32_t *l_1094 = &p_2366->g_689;
        VECTOR(int32_t, 8) l_1103 = (VECTOR(int32_t, 8))(0x7C57A2CFL, (VECTOR(int32_t, 4))(0x7C57A2CFL, (VECTOR(int32_t, 2))(0x7C57A2CFL, 0x4B3B2912L), 0x4B3B2912L), 0x4B3B2912L, 0x7C57A2CFL, 0x4B3B2912L);
        uint16_t l_1121 = 1UL;
        int32_t l_1126 = (-5L);
        uint8_t l_1127 = 0xEFL;
        int i;
        for (i = 0; i < 1; i++)
            l_1059[i] = (void*)0;
        (*l_1057) &= (l_1039[0] && (safe_sub_func_int64_t_s_s((&p_2366->g_164 == (void*)0), (safe_mod_func_int16_t_s_s((safe_add_func_uint64_t_u_u(l_1051, ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_1052.seb26)).lo)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x09E1ED2A6F11FC6BL, 0L)).yxxxyxxy)).s57))).lo)), (((l_1051 ^ l_1017.s5) ^ (safe_div_func_uint16_t_u_u((!((((((safe_mod_func_uint32_t_u_u((p_2366->g_568 != p_2366->g_568), GROUP_DIVERGE(1, 1))) , (((65529UL < p_2366->g_963.w) , p_50) | p_50)) & p_49) & 0x4E8AL) || l_1051) || p_48)), FAKE_DIVERGE(p_2366->global_1_offset, get_global_id(1), 10)))) , p_48))))));
        l_1039[0] = (~((((*l_1057) = 0x54B1196F26AFB7E3L) || (p_49 & p_2366->g_220)) & (((*l_1061) = l_1060) != l_1062[1])));
        for (p_2366->g_63 = 0; (p_2366->g_63 == 16); p_2366->g_63 = safe_add_func_int32_t_s_s(p_2366->g_63, 6))
        { /* block id: 423 */
            VECTOR(uint8_t, 8) l_1089 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 3UL), 3UL), 3UL, 255UL, 3UL);
            int32_t l_1104 = 1L;
            int32_t l_1105 = 0L;
            int32_t l_1106 = 0x46EBD070L;
            int32_t l_1107 = 5L;
            int32_t l_1108 = (-1L);
            int32_t l_1109 = 0x39E826E8L;
            int32_t l_1111 = 0x786A6749L;
            int32_t l_1112 = (-7L);
            int32_t l_1116 = 0L;
            int32_t l_1117 = 0x30996AE6L;
            int32_t l_1118 = 0x0454F28AL;
            int32_t l_1119 = 7L;
            int32_t l_1120 = 0x733BA27BL;
            int32_t *l_1124 = (void*)0;
            int32_t *l_1125[4][2][10] = {{{(void*)0,&l_1118,&l_1106,(void*)0,&l_1106,&l_1118,(void*)0,&l_1116,&l_1109,&l_1112},{(void*)0,&l_1118,&l_1106,(void*)0,&l_1106,&l_1118,(void*)0,&l_1116,&l_1109,&l_1112}},{{(void*)0,&l_1118,&l_1106,(void*)0,&l_1106,&l_1118,(void*)0,&l_1116,&l_1109,&l_1112},{(void*)0,&l_1118,&l_1106,(void*)0,&l_1106,&l_1118,(void*)0,&l_1116,&l_1109,&l_1112}},{{(void*)0,&l_1118,&l_1106,(void*)0,&l_1106,&l_1118,(void*)0,&l_1116,&l_1109,&l_1112},{(void*)0,&l_1118,&l_1106,(void*)0,&l_1106,&l_1118,(void*)0,&l_1116,&l_1109,&l_1112}},{{(void*)0,&l_1118,&l_1106,(void*)0,&l_1106,&l_1118,(void*)0,&l_1116,&l_1109,&l_1112},{(void*)0,&l_1118,&l_1106,(void*)0,&l_1106,&l_1118,(void*)0,&l_1116,&l_1109,&l_1112}}};
            int32_t **l_1131 = &l_1124;
            int i, j, k;
            for (p_2366->g_486 = 0; (p_2366->g_486 <= 31); p_2366->g_486 = safe_add_func_int16_t_s_s(p_2366->g_486, 3))
            { /* block id: 426 */
                uint8_t *l_1069 = (void*)0;
                uint8_t *l_1070 = (void*)0;
                uint8_t *l_1071 = &p_2366->g_164;
                int32_t *l_1088 = (void*)0;
                int32_t *l_1091 = &p_2366->g_689;
                int32_t **l_1090 = &l_1091;
                int32_t *l_1093 = &p_2366->g_689;
                int32_t **l_1092[7] = {&l_1093,&l_1093,&l_1093,&l_1093,&l_1093,&l_1093,&l_1093};
                int32_t l_1095 = 1L;
                int32_t *l_1097 = &l_1039[0];
                int32_t *l_1098 = &p_2366->g_979;
                int32_t *l_1099 = &p_2366->g_979;
                int32_t *l_1100 = &p_2366->g_285[3];
                int32_t *l_1101 = &l_1095;
                int32_t *l_1102[4][9][3] = {{{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979}},{{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979}},{{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979}},{{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979},{&p_2366->g_285[2],&p_2366->g_220,&p_2366->g_979}}};
                uint64_t l_1113 = 0xE9AAA76F3EAF375FL;
                int i, j, k;
                (*p_2366->g_1096) = func_72((p_2366->g_386.s0 & ((*l_1071)++)), (((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_1074.s45531326)).lo)).even))).lo , (safe_sub_func_uint32_t_u_u(p_48, (safe_div_func_int64_t_s_s(((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_2366->group_0_offset, get_group_id(0), 10), (0x35L & ((VECTOR(uint8_t, 2))(7UL, 255UL)).lo))), (((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(0x03L, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_2366->g_1085.xy)), 9UL, 255UL)), (((safe_mul_func_uint16_t_u_u((18446744073709551615UL && p_48), GROUP_DIVERGE(1, 1))) , l_1057) != l_1088), 251UL, 255UL)).s1421150757611305)).hi, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0UL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_1089.s1147473441223142)).s11)), 0x70L)).xyxwxzyw)))))))).s6, 7)) | (((*l_1090) = l_1088) == (l_1094 = &p_2366->g_689))) & l_1095))) , l_1052.sd), 0x6DF9A1DEFE6D8E8EL))))), (*p_2366->g_777), l_1074.s4, p_2366);
                --l_1113;
                l_1121++;
                return (*l_1057);
            }
            l_1127++;
            (*l_1131) = &l_1117;
        }
    }
    return l_995.z;
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_22 p_2366->g_81 p_2366->g_82 p_2366->g_40 p_2366->g_35 p_2366->g_37 p_2366->g_90 p_2366->g_63 p_2366->g_107 p_2366->g_2 p_2366->g_113 p_2366->g_106 p_2366->g_21 p_2366->g_319 p_2366->g_160 p_2366->g_335 p_2366->g_346 p_2366->g_283 p_2366->g_357 p_2366->g_360 p_2366->g_285 p_2366->g_372 p_2366->g_220 p_2366->g_386 p_2366->g_414 p_2366->g_439 p_2366->g_440 p_2366->g_227 p_2366->g_447 p_2366->g_448 p_2366->g_449 p_2366->g_450 p_2366->g_455 p_2366->g_279 p_2366->g_278 p_2366->g_486 p_2366->g_596 p_2366->g_597 p_2366->g_600 p_2366->g_603 p_2366->g_604 p_2366->g_164 p_2366->g_635 p_2366->g_526 p_2366->g_300 p_2366->g_651 p_2366->g_654 p_2366->g_689 p_2366->g_762 p_2366->g_765 p_2366->g_773 p_2366->g_776 p_2366->g_777 p_2366->g_543 p_2366->g_848 p_2366->g_879 p_2366->g_256 p_2366->g_903 p_2366->g_926 p_2366->g_937 p_2366->g_347 p_2366->g_938 p_2366->g_927 p_2366->g_950 p_2366->g_956 p_2366->g_961 p_2366->g_963 p_2366->g_967
 * writes: p_2366->g_90 p_2366->g_106 p_2366->g_113 p_2366->g_37 p_2366->g_40 p_2366->g_220 p_2366->g_347 p_2366->g_63 p_2366->g_319 p_2366->g_107 p_2366->g_82 p_2366->g_486 p_2366->g_285 p_2366->g_256 p_2366->g_22 p_2366->g_689 p_2366->g_762 p_2366->g_536 p_2366->g_164 p_2366->g_597
 */
int64_t  func_53(uint32_t  p_54, int16_t  p_55, int32_t  p_56, uint32_t  p_57, struct S0 * p_2366)
{ /* block id: 12 */
    int16_t *l_71 = &p_2366->g_37;
    int32_t l_77 = 0x3CA0F963L;
    uint32_t *l_87[2];
    int32_t l_656 = 0L;
    uint32_t l_664 = 0xF526053CL;
    VECTOR(int16_t, 16) l_671 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-4L)), (-4L)), (-4L), 1L, (-4L), (VECTOR(int16_t, 2))(1L, (-4L)), (VECTOR(int16_t, 2))(1L, (-4L)), 1L, (-4L), 1L, (-4L));
    int32_t **l_676[10][2] = {{&p_2366->g_21,&p_2366->g_21},{&p_2366->g_21,&p_2366->g_21},{&p_2366->g_21,&p_2366->g_21},{&p_2366->g_21,&p_2366->g_21},{&p_2366->g_21,&p_2366->g_21},{&p_2366->g_21,&p_2366->g_21},{&p_2366->g_21,&p_2366->g_21},{&p_2366->g_21,&p_2366->g_21},{&p_2366->g_21,&p_2366->g_21},{&p_2366->g_21,&p_2366->g_21}};
    int8_t *l_686 = (void*)0;
    int16_t ***l_723 = &p_2366->g_319;
    VECTOR(int64_t, 4) l_743 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L);
    uint32_t l_747 = 0x1AFE19CBL;
    uint64_t *l_760 = &p_2366->g_106;
    uint64_t **l_759 = &l_760;
    uint64_t *l_764 = &p_2366->g_63;
    uint64_t **l_763 = &l_764;
    int32_t **l_772[3];
    uint32_t l_791 = 0x3B4C22B6L;
    VECTOR(int16_t, 2) l_819 = (VECTOR(int16_t, 2))(0x7274L, 0x2E85L);
    uint16_t *l_854 = &p_2366->g_256;
    uint16_t **l_853 = &l_854;
    uint16_t ***l_852[2];
    uint16_t l_860 = 0x94A2L;
    uint32_t l_878 = 0x29DF8CB5L;
    VECTOR(int64_t, 8) l_886 = (VECTOR(int64_t, 8))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, (-2L)), (-2L)), (-2L), 6L, (-2L));
    VECTOR(uint16_t, 16) l_955 = (VECTOR(uint16_t, 16))(4UL, (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 65531UL), 65531UL), 65531UL, 4UL, 65531UL, (VECTOR(uint16_t, 2))(4UL, 65531UL), (VECTOR(uint16_t, 2))(4UL, 65531UL), 4UL, 65531UL, 4UL, 65531UL);
    VECTOR(uint16_t, 2) l_957 = (VECTOR(uint16_t, 2))(65535UL, 0UL);
    VECTOR(uint16_t, 4) l_958 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xE0A6L), 0xE0A6L);
    VECTOR(uint16_t, 2) l_959 = (VECTOR(uint16_t, 2))(0x145DL, 65528UL);
    VECTOR(uint16_t, 4) l_960 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x049AL), 0x049AL);
    VECTOR(uint16_t, 8) l_962 = (VECTOR(uint16_t, 8))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0x7509L), 0x7509L), 0x7509L, 65534UL, 0x7509L);
    VECTOR(uint8_t, 8) l_964 = (VECTOR(uint8_t, 8))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0x0EL), 0x0EL), 0x0EL, 3UL, 0x0EL);
    int32_t l_974[7][8] = {{1L,1L,1L,0x32228937L,0x19A7DF08L,0x32228937L,1L,1L},{1L,1L,1L,0x32228937L,0x19A7DF08L,0x32228937L,1L,1L},{1L,1L,1L,0x32228937L,0x19A7DF08L,0x32228937L,1L,1L},{1L,1L,1L,0x32228937L,0x19A7DF08L,0x32228937L,1L,1L},{1L,1L,1L,0x32228937L,0x19A7DF08L,0x32228937L,1L,1L},{1L,1L,1L,0x32228937L,0x19A7DF08L,0x32228937L,1L,1L},{1L,1L,1L,0x32228937L,0x19A7DF08L,0x32228937L,1L,1L}};
    int32_t **l_975 = &p_2366->g_347;
    int64_t l_976 = 0x7689EAAE71BD5D92L;
    int i, j;
    for (i = 0; i < 2; i++)
        l_87[i] = &p_2366->g_40;
    for (i = 0; i < 3; i++)
        l_772[i] = &p_2366->g_537;
    for (i = 0; i < 2; i++)
        l_852[i] = &l_853;
    if ((p_2366->g_22.s8 & func_67(l_71, &p_2366->g_40, func_72(l_77, p_56, p_54, ((safe_mul_func_uint8_t_u_u((((safe_unary_minus_func_int8_t_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_2366->g_81.xxxy)).w, ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(p_2366->g_82.zywwxwyzwywwyywz)), ((VECTOR(int8_t, 4))((-1L), 0x45L, 0x0AL, 0x2EL)).zyywyzzxyzywxxxz))).s1b, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((p_2366->g_90[2] &= (safe_div_func_int32_t_s_s((((safe_rshift_func_uint8_t_u_u((l_87[1] != l_87[1]), 3)) | ((safe_mod_func_uint8_t_u_u(p_2366->g_40, p_54)) > p_2366->g_35.s3)) < p_2366->g_37), p_2366->g_82.x))) , l_77), p_2366->g_63, 0x69L, ((VECTOR(int8_t, 4))(0x45L)), 0x5EL)).s41)).xyxxxyxx, ((VECTOR(int8_t, 8))(0x06L))))), ((VECTOR(int8_t, 4))(0L)), ((VECTOR(int8_t, 4))(0L)))), ((VECTOR(int8_t, 16))(0x5DL))))).even)).s42))), 0x7AL)).x)) || p_54) , 0xCAL), 6UL)) , p_2366->g_82.z), p_2366), p_2366)))
    { /* block id: 235 */
        int32_t *l_655 = &p_2366->g_285[6];
        int32_t *l_657 = &p_2366->g_285[3];
        int32_t *l_658 = &p_2366->g_285[3];
        uint64_t l_659[6][10] = {{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}};
        VECTOR(int16_t, 2) l_670 = (VECTOR(int16_t, 2))(0x7C15L, 1L);
        int32_t **l_677 = &p_2366->g_537;
        VECTOR(int8_t, 8) l_678 = (VECTOR(int8_t, 8))(0x45L, (VECTOR(int8_t, 4))(0x45L, (VECTOR(int8_t, 2))(0x45L, 0x31L), 0x31L), 0x31L, 0x45L, 0x31L);
        VECTOR(int8_t, 16) l_680 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x78L), 0x78L), 0x78L, 0L, 0x78L, (VECTOR(int8_t, 2))(0L, 0x78L), (VECTOR(int8_t, 2))(0L, 0x78L), 0L, 0x78L, 0L, 0x78L);
        int8_t *l_683 = (void*)0;
        int8_t *l_685 = (void*)0;
        uint64_t l_696[1][2][4] = {{{18446744073709551612UL,0xD7E4264E25CEC6D1L,18446744073709551612UL,18446744073709551612UL},{18446744073709551612UL,0xD7E4264E25CEC6D1L,18446744073709551612UL,18446744073709551612UL}}};
        uint64_t **l_704 = (void*)0;
        VECTOR(int64_t, 4) l_744 = (VECTOR(int64_t, 4))(0x793B0426004B6DBAL, (VECTOR(int64_t, 2))(0x793B0426004B6DBAL, 2L), 2L);
        uint64_t ***l_761 = &l_704;
        int64_t l_766 = (-5L);
        uint64_t l_816 = 0x9751B94A7F9A2C6DL;
        int32_t l_859[8][6] = {{0x3B187550L,0x3B187550L,0x1A9E5275L,(-8L),0x3BFBBF60L,(-8L)},{0x3B187550L,0x3B187550L,0x1A9E5275L,(-8L),0x3BFBBF60L,(-8L)},{0x3B187550L,0x3B187550L,0x1A9E5275L,(-8L),0x3BFBBF60L,(-8L)},{0x3B187550L,0x3B187550L,0x1A9E5275L,(-8L),0x3BFBBF60L,(-8L)},{0x3B187550L,0x3B187550L,0x1A9E5275L,(-8L),0x3BFBBF60L,(-8L)},{0x3B187550L,0x3B187550L,0x1A9E5275L,(-8L),0x3BFBBF60L,(-8L)},{0x3B187550L,0x3B187550L,0x1A9E5275L,(-8L),0x3BFBBF60L,(-8L)},{0x3B187550L,0x3B187550L,0x1A9E5275L,(-8L),0x3BFBBF60L,(-8L)}};
        int i, j, k;
lbl_740:
        l_659[1][3]++;
        for (p_2366->g_256 = (-2); (p_2366->g_256 > 1); ++p_2366->g_256)
        { /* block id: 239 */
            VECTOR(int64_t, 2) l_669 = (VECTOR(int64_t, 2))((-7L), 0x17082EFFA251B305L);
            VECTOR(int8_t, 8) l_679 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-3L)), (-3L)), (-3L), 0L, (-3L));
            VECTOR(int8_t, 8) l_681 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x31L), 0x31L), 0x31L, (-1L), 0x31L);
            VECTOR(int8_t, 16) l_682 = (VECTOR(int8_t, 16))(0x73L, (VECTOR(int8_t, 4))(0x73L, (VECTOR(int8_t, 2))(0x73L, 1L), 1L), 1L, 0x73L, 1L, (VECTOR(int8_t, 2))(0x73L, 1L), (VECTOR(int8_t, 2))(0x73L, 1L), 0x73L, 1L, 0x73L, 1L);
            int8_t **l_684[6][8] = {{&p_2366->g_568,&l_683,&l_683,&p_2366->g_568,&p_2366->g_568,&l_683,&l_683,&l_683},{&p_2366->g_568,&l_683,&l_683,&p_2366->g_568,&p_2366->g_568,&l_683,&l_683,&l_683},{&p_2366->g_568,&l_683,&l_683,&p_2366->g_568,&p_2366->g_568,&l_683,&l_683,&l_683},{&p_2366->g_568,&l_683,&l_683,&p_2366->g_568,&p_2366->g_568,&l_683,&l_683,&l_683},{&p_2366->g_568,&l_683,&l_683,&p_2366->g_568,&p_2366->g_568,&l_683,&l_683,&l_683},{&p_2366->g_568,&l_683,&l_683,&p_2366->g_568,&p_2366->g_568,&l_683,&l_683,&l_683}};
            int8_t *l_687 = (void*)0;
            int32_t *l_688 = &p_2366->g_689;
            int8_t l_690 = 0x34L;
            uint64_t *l_703 = &l_659[4][7];
            uint64_t **l_702 = &l_703;
            int i, j;
            (*l_658) = (((*p_2366->g_440) != 0x43F0A250L) >= 0x662AL);
            (*l_657) = l_664;
            for (p_2366->g_486 = (-8); (p_2366->g_486 >= 53); p_2366->g_486++)
            { /* block id: 244 */
                if ((*l_657))
                    break;
            }
            if (((*l_658) = (((((VECTOR(int64_t, 16))(l_669.xyxxyxyxxxxxxxxy)).s0 > 0L) , ((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_670.yxyxxxyyyyyyxxxx)).even)).hi, ((VECTOR(int16_t, 2))(l_671.s9e)).yyxx))).z) > ((safe_mul_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((l_676[9][0] != l_677), (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_678.s46132214)).s3522606551775514)).s82, ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(l_679.s1653645014150561)).even, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(l_680.sf7)), ((VECTOR(int8_t, 8))(l_681.s04737265)).s20, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_682.sd63f653aed819638)).s6253)).odd))).yxyyyxxy))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x09L, 0x09L)), (-1L), ((!((*l_688) = (((l_683 = (l_685 = l_683)) == (l_687 = l_686)) && p_2366->g_600.s2))) , ((l_690 < (((p_2366->g_568 = l_686) != (void*)0) , l_671.s0)) , p_54)), l_682.s8, ((VECTOR(int8_t, 8))(1L)), ((VECTOR(int8_t, 2))(0x54L)), 0x7DL)).hi))).s30, ((VECTOR(int8_t, 2))(2L))))), ((VECTOR(int8_t, 2))(0x40L)), (-1L), (-1L), 0L, 8L)).s0 , FAKE_DIVERGE(p_2366->global_2_offset, get_global_id(2), 10)))), p_56)) >= p_56))))
            { /* block id: 253 */
                uint64_t *l_695 = &p_2366->g_106;
                int32_t l_697 = 0x6B7CA6D9L;
                (*l_658) = (((((safe_div_func_uint16_t_u_u((!(safe_div_func_uint16_t_u_u(((l_696[0][1][2] = (((*p_2366->g_439) == &l_664) || ((*l_695) = l_656))) & ((+l_697) ^ (((safe_mul_func_int16_t_s_s(((safe_sub_func_int8_t_s_s((l_702 != l_704), l_669.x)) ^ l_669.y), (0x226BL > l_671.s4))) <= p_55) || 0x52L))), 0x3556L))), p_57)) ^ (*l_655)) == l_682.se) ^ 0x5A9EBA67L) < 8L);
                for (l_697 = (-18); (l_697 < (-21)); l_697 = safe_sub_func_int64_t_s_s(l_697, 1))
                { /* block id: 259 */
                    uint8_t l_707 = 0x76L;
                    int32_t **l_713 = &p_2366->g_347;
                    ++l_707;
                    for (p_2366->g_113 = 29; (p_2366->g_113 > 45); ++p_2366->g_113)
                    { /* block id: 263 */
                        return p_2366->g_386.s4;
                    }
                    (*l_713) = &l_656;
                }
            }
            else
            { /* block id: 268 */
                int16_t ***l_722 = &p_2366->g_319;
                int16_t *l_732 = (void*)0;
                int16_t *l_733 = &p_2366->g_283[3][0][4];
                int32_t l_734 = 7L;
                int32_t l_735 = 0L;
                int32_t *l_736 = (void*)0;
                int32_t l_737 = (-6L);
                l_737 ^= (((safe_rshift_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(1UL, (safe_mul_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(p_57, (p_55 & 18446744073709551606UL))), (((l_722 = &p_2366->g_319) == (((*l_658) = (*l_657)) , l_723)) != (((*l_688) &= ((p_2366->g_22.s0 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((safe_rshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_mod_func_uint16_t_u_u((0L != ((((l_734 = ((*l_733) |= ((*l_71) = (0x21382F73L < 4L)))) , 0x40L) <= p_2366->g_603.w) > l_681.s2)), FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10))), l_77)), 1)), p_2366->g_372.z)) && 0x0C8FL), 0x4F090FFBL, 0x47280DC4L, 0x0A398DC9L)))).even)))).hi) , p_2366->g_651.x)) , 0UL)))))), 8)) , p_54) < l_735);
                return p_55;
            }
        }
        for (p_2366->g_37 = (-9); (p_2366->g_37 > 18); p_2366->g_37 = safe_add_func_uint64_t_u_u(p_2366->g_37, 3))
        { /* block id: 282 */
            VECTOR(int64_t, 8) l_745 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L));
            int64_t *l_746[3];
            VECTOR(int64_t, 4) l_750 = (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), (-3L)), (-3L));
            int i;
            for (i = 0; i < 3; i++)
                l_746[i] = (void*)0;
            if (p_2366->g_486)
                goto lbl_740;
            (*l_658) = (safe_add_func_uint16_t_u_u(((+p_2366->g_486) ^ ((((((p_57 , (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_743.ww)))).xyxyyxyyyyyyxyxx, ((VECTOR(int64_t, 16))(l_744.zwzzywzzwzwzwyyy))))), ((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 8))(l_745.s31373505)), ((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))((-2L), 5L)).yyyyxxxxyyyyxyyy)).s5a6b)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x4A2D8DC4ACC47C30L, 0x1724D2A9A7213BF0L)))).yyxyyyxx)).hi))).odd, (int64_t)(l_747 = 0x6AE8DB227900947BL), (int64_t)(((safe_mul_func_int8_t_s_s(0x4DL, FAKE_DIVERGE(p_2366->local_2_offset, get_local_id(2), 10))) , &p_2366->g_320) != &p_2366->g_320)))).yyyyxxyx))).s0352043262770245, ((VECTOR(int64_t, 8))(l_750.wxzxzzyw)).s0603657744243334))).s2dcc)).x && (safe_add_func_int64_t_s_s((!p_55), 0xDAEFDF8B19D83BD3L)))) > ((safe_add_func_int16_t_s_s(3L, p_55)) , l_745.s6)) == (*l_657)) || (*l_658)) | 0x13BB94DEL) | p_55)), 0x21C9L));
            return (*l_658);
        }
        if (((VECTOR(int32_t, 16))((-10L), ((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(4294967295UL, 0UL)).yyyyyyyy)).s4 , &p_2366->g_21) != ((safe_div_func_uint8_t_u_u(((safe_add_func_int16_t_s_s(p_57, ((p_2366->g_113 & 0x290399E2B3763891L) && FAKE_DIVERGE(p_2366->local_2_offset, get_local_id(2), 10)))) >= ((((((*l_761) = l_759) != (p_2366->g_762 = p_2366->g_762)) , ((((~(*l_658)) , l_763) == p_2366->g_765) , 0x90F64501L)) , GROUP_DIVERGE(1, 1)) > (*l_655))), p_2366->g_107.x)) , (void*)0)), 0x5170F42DL, (-1L), 0x7848D6D6L, ((VECTOR(int32_t, 4))(1L)), ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 2))((-4L))), 7L)).s3)
        { /* block id: 290 */
            int32_t ***l_771 = &p_2366->g_536;
            int32_t l_778 = (-3L);
            VECTOR(uint8_t, 2) l_783 = (VECTOR(uint8_t, 2))(255UL, 0x88L);
            uint16_t l_784 = 65534UL;
            int32_t *l_785 = (void*)0;
            int64_t *l_786 = (void*)0;
            int64_t *l_787 = (void*)0;
            int64_t *l_788 = (void*)0;
            int64_t *l_789 = (void*)0;
            int32_t l_790 = 1L;
            int i;
            (*l_655) &= ((((p_2366->g_164 ^= (l_766 > (safe_add_func_int32_t_s_s(((safe_rshift_func_int8_t_s_u((+p_56), 6)) > (p_55 = (((*l_771) = l_676[9][0]) == l_772[0]))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(p_2366->g_773.xxwywxxwxzzyzwyx)).hi)).s3545527371032266)).se)))) | ((safe_mod_func_uint32_t_u_u((((&l_764 == p_2366->g_776) > (l_778 != (safe_add_func_int32_t_s_s((((VECTOR(int64_t, 8))(0x7D7B40417A1EFCA8L, 0x697C0794FB87F0ACL, (safe_lshift_func_uint8_t_u_u((+((VECTOR(uint8_t, 4))(l_783.yyxy)).x), 7)), 0x2C88FDFC75D027B8L, 7L, (l_790 &= (((l_784 , p_2366->g_21) != l_785) != p_2366->g_82.z)), 1L, 0x05E05AA339C77534L)).s5 || p_56), 0xE50C58C0L)))) || 0x2B69L), 0x56B7F4EFL)) , l_671.s4)) && 0x2858F445L) == l_791);
            (*l_657) |= 0L;
        }
        else
        { /* block id: 297 */
            VECTOR(int32_t, 16) l_797 = (VECTOR(int32_t, 16))(0x4CDD4F02L, (VECTOR(int32_t, 4))(0x4CDD4F02L, (VECTOR(int32_t, 2))(0x4CDD4F02L, 5L), 5L), 5L, 0x4CDD4F02L, 5L, (VECTOR(int32_t, 2))(0x4CDD4F02L, 5L), (VECTOR(int32_t, 2))(0x4CDD4F02L, 5L), 0x4CDD4F02L, 5L, 0x4CDD4F02L, 5L);
            uint16_t l_844 = 0xF4BAL;
            uint32_t l_847[4] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL};
            uint16_t *l_851 = &p_2366->g_300[3];
            uint16_t **l_850[10][1];
            uint16_t ***l_849[4][8] = {{&l_850[3][0],&l_850[3][0],&l_850[1][0],&l_850[3][0],&l_850[3][0],&l_850[3][0],&l_850[3][0],&l_850[1][0]},{&l_850[3][0],&l_850[3][0],&l_850[1][0],&l_850[3][0],&l_850[3][0],&l_850[3][0],&l_850[3][0],&l_850[1][0]},{&l_850[3][0],&l_850[3][0],&l_850[1][0],&l_850[3][0],&l_850[3][0],&l_850[3][0],&l_850[3][0],&l_850[1][0]},{&l_850[3][0],&l_850[3][0],&l_850[1][0],&l_850[3][0],&l_850[3][0],&l_850[3][0],&l_850[3][0],&l_850[1][0]}};
            VECTOR(int8_t, 8) l_874 = (VECTOR(int8_t, 8))(0x32L, (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, (-1L)), (-1L)), (-1L), 0x32L, (-1L));
            int i, j;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 1; j++)
                    l_850[i][j] = &l_851;
            }
            for (p_56 = 0; (p_56 != 22); p_56 = safe_add_func_int32_t_s_s(p_56, 2))
            { /* block id: 300 */
                VECTOR(uint64_t, 2) l_796 = (VECTOR(uint64_t, 2))(2UL, 0xE15C4BAD4CDFA73AL);
                int32_t *l_855 = &l_77;
                int32_t *l_856 = &p_2366->g_285[3];
                int32_t *l_857 = (void*)0;
                int32_t *l_858[4][3] = {{&p_2366->g_2,&p_2366->g_220,&p_2366->g_2},{&p_2366->g_2,&p_2366->g_220,&p_2366->g_2},{&p_2366->g_2,&p_2366->g_220,&p_2366->g_2},{&p_2366->g_2,&p_2366->g_220,&p_2366->g_2}};
                int i, j;
                if ((safe_lshift_func_uint16_t_u_u((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(l_796.yyxx)))).hi)).xxxxyxyx)).s0 & 0x2DBC25A38390ADCAL), 7)))
                { /* block id: 301 */
                    VECTOR(int8_t, 2) l_799 = (VECTOR(int8_t, 2))(0x60L, 0x4FL);
                    int32_t *l_809 = (void*)0;
                    uint8_t l_843 = 0UL;
                    int i;
                    if (((VECTOR(int32_t, 2))(l_797.s84)).lo)
                    { /* block id: 302 */
                        return p_56;
                    }
                    else
                    { /* block id: 304 */
                        VECTOR(int8_t, 2) l_798 = (VECTOR(int8_t, 2))((-3L), 1L);
                        int64_t *l_804 = &l_766;
                        int32_t **l_808 = (void*)0;
                        uint8_t *l_845 = &p_2366->g_164;
                        uint16_t *l_846 = &p_2366->g_256;
                        int i;
                        l_809 = func_72(p_54, p_2366->g_450.x, (0UL | ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_798.xx)).yxyy)).lo, ((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 2))(l_799.xy)).xyyxxyyx, (int8_t)((5UL < (safe_lshift_func_int8_t_s_u(0L, 4))) , (safe_sub_func_uint32_t_u_u(((p_2366->g_777 != p_2366->g_777) , ((((*l_804) = p_2366->g_160) ^ (~(((safe_sub_func_int64_t_s_s((((*l_764) = 1UL) , (-9L)), 3UL)) > FAKE_DIVERGE(p_2366->local_0_offset, get_local_id(0), 10)) || p_55))) , 7UL)), 0x2BD45F84L)))))).s04))))).even), p_56, p_2366);
                        (*l_658) = (safe_mul_func_uint64_t_u_u((--(**l_704)), (4294967295UL > (safe_lshift_func_uint16_t_u_s((l_816 > ((7L < 0x7C111345E0602BBCL) >= (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(l_819.xxyyyyyy)))).s4, 13)))), ((safe_lshift_func_uint16_t_u_s(((*l_846) = ((safe_lshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((safe_add_func_int32_t_s_s((((safe_sub_func_uint32_t_u_u((((*p_2366->g_526) , ((*l_804) = (safe_div_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u(7UL, ((*l_845) = (((VECTOR(uint64_t, 2))(0UL, 0x66636D22A8FCA16CL)).odd >= (((safe_mod_func_uint32_t_u_u((((l_797.sf = (safe_sub_func_uint64_t_u_u((((safe_lshift_func_int16_t_s_s((((safe_unary_minus_func_uint8_t_u(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(abs(((VECTOR(uint8_t, 4))(0x82L, ((!0x39FCDB31L) != (p_55 & (((safe_sub_func_int32_t_s_s(l_843, p_57)) , 0xE8L) == p_54))), 0x14L, 246UL)).xxyyxywyzzwwxwwz))).hi)).s6)) || 0L) , p_56), 0)) > 0x199CL) , p_55), 0x55C971A729B4CE2FL))) ^ p_2366->g_543.s5) ^ l_844), (-2L))) <= p_56) <= l_656))))), 0x3F9EL)))) || l_796.y), p_57)) <= 253UL) ^ l_844), p_2366->g_40)), 1)), p_57)) <= p_56)), p_56)) , p_54))))));
                        if (l_847[0])
                            break;
                        (*p_2366->g_848) = l_809;
                    }
                    if ((*l_657))
                        continue;
                }
                else
                { /* block id: 318 */
                    (*l_658) = ((l_852[1] = l_849[2][2]) == (void*)0);
                }
                l_860--;
                return l_656;
            }
            for (l_656 = 0; (l_656 == 1); ++l_656)
            { /* block id: 327 */
                int16_t l_865 = 1L;
                VECTOR(int32_t, 8) l_866 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-6L)), (-6L)), (-6L), (-1L), (-6L));
                VECTOR(uint32_t, 16) l_867 = (VECTOR(uint32_t, 16))(0x0A910A18L, (VECTOR(uint32_t, 4))(0x0A910A18L, (VECTOR(uint32_t, 2))(0x0A910A18L, 0xF915584CL), 0xF915584CL), 0xF915584CL, 0x0A910A18L, 0xF915584CL, (VECTOR(uint32_t, 2))(0x0A910A18L, 0xF915584CL), (VECTOR(uint32_t, 2))(0x0A910A18L, 0xF915584CL), 0x0A910A18L, 0xF915584CL, 0x0A910A18L, 0xF915584CL);
                int i;
                (*p_2366->g_879) = ((l_865 == p_2366->g_90[2]) >= ((((+((*l_657) = ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(l_866.s47445567)).lo, ((VECTOR(int32_t, 16))(((l_866.s4 & (((VECTOR(uint32_t, 4))(l_867.s8483)).y || (l_867.s8 || ((safe_div_func_int8_t_s_s(p_57, (safe_rshift_func_int8_t_s_s(l_797.s5, 6)))) != (((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 2))(l_874.s05)), (int8_t)(safe_add_func_int64_t_s_s(((safe_unary_minus_func_int64_t_s(p_56)) >= 0xA9E5D09E410044C1L), (l_866.s2 , p_54))), (int8_t)p_55))).odd, 0)) == 0x130A6A75L) && 0x06FB82C16174B360L))))) , l_878), ((VECTOR(int32_t, 2))(0x164385E2L)), (-1L), ((VECTOR(int32_t, 2))(2L)), ((VECTOR(int32_t, 2))((-9L))), ((VECTOR(int32_t, 2))((-1L))), 0x49560A2AL, 4L, p_55, p_56, 0x51160819L, 0x5F9BCA50L)).s8d6b))).w)) && p_55) >= p_54) < l_874.s2));
                for (p_2366->g_256 = 0; (p_2366->g_256 != 13); p_2366->g_256++)
                { /* block id: 332 */
                    return p_55;
                }
                if (p_56)
                    break;
                return p_2366->g_278.x;
            }
            (*l_655) |= ((!l_847[0]) | l_671.s7);
        }
    }
    else
    { /* block id: 340 */
        uint32_t l_895[4][2][9] = {{{0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L,0x592EE839L,0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L},{0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L,0x592EE839L,0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L}},{{0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L,0x592EE839L,0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L},{0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L,0x592EE839L,0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L}},{{0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L,0x592EE839L,0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L},{0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L,0x592EE839L,0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L}},{{0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L,0x592EE839L,0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L},{0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L,0x592EE839L,0x592EE839L,0xA2BC9391L,0x08B1D8EDL,0xA2BC9391L}}};
        uint16_t ***l_925 = &l_853;
        int32_t l_940 = (-5L);
        int i, j, k;
        if (((((safe_mul_func_int16_t_s_s(((*l_71) = (safe_div_func_int8_t_s_s(0x59L, ((((((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(l_886.s51650502)).s70)), ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 8))((-1L), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))((((safe_add_func_uint64_t_u_u(((0L & (-9L)) || (safe_mod_func_uint16_t_u_u(p_55, (safe_add_func_uint64_t_u_u(((**l_759) &= ((safe_add_func_int64_t_s_s(l_895[3][0][5], (safe_mod_func_int8_t_s_s((+(safe_mul_func_uint8_t_u_u((p_56 ^ (l_895[3][0][5] || 0x3FL)), l_895[0][1][8]))), l_895[2][0][3])))) ^ p_2366->g_335.s6)), p_2366->g_597.x))))), p_2366->g_283[3][0][4])) > l_791) | p_57), 0x5C57E07380A43564L, 0x505966FC0C424A72L, 1L)).hi)), ((VECTOR(int64_t, 4))(0x54447A5E072D07CFL)), 0L)), ((VECTOR(int64_t, 8))(7L))))).s44))).even <= p_57) & (-5L)) | p_57) , p_56)))), (-8L))) != 0x0EL) >= p_2366->g_283[5][1][7]) ^ p_55))
        { /* block id: 343 */
            int32_t *l_902 = &p_2366->g_220;
            int32_t **l_904 = &p_2366->g_347;
            for (p_2366->g_256 = 0; (p_2366->g_256 != 27); p_2366->g_256 = safe_add_func_uint16_t_u_u(p_2366->g_256, 9))
            { /* block id: 346 */
                (*p_2366->g_903) = l_902;
            }
            (*l_904) = (void*)0;
        }
        else
        { /* block id: 350 */
            return p_2366->g_2;
        }
        for (p_56 = 0; (p_56 != (-13)); --p_56)
        { /* block id: 355 */
            uint64_t l_911 = 18446744073709551615UL;
            VECTOR(int64_t, 4) l_921 = (VECTOR(int64_t, 4))(0x001C2458F3584BCEL, (VECTOR(int64_t, 2))(0x001C2458F3584BCEL, 1L), 1L);
            VECTOR(int64_t, 4) l_922 = (VECTOR(int64_t, 4))(0x597F9E4C91E3ECECL, (VECTOR(int64_t, 2))(0x597F9E4C91E3ECECL, (-1L)), (-1L));
            VECTOR(int64_t, 8) l_923 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
            int64_t *l_933 = (void*)0;
            int64_t *l_934[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            for (l_656 = 0; (l_656 == (-13)); l_656 = safe_sub_func_int8_t_s_s(l_656, 5))
            { /* block id: 358 */
                int32_t *l_909 = (void*)0;
                int32_t *l_910[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_910[i] = (void*)0;
                l_911 ^= ((VECTOR(int32_t, 2))(3L, 0x5D2A27A9L)).hi;
            }
            if (p_57)
                continue;
            if ((safe_lshift_func_int8_t_s_s((0L || (((safe_add_func_uint64_t_u_u((p_2366->g_335.s7 >= (safe_lshift_func_int16_t_s_u((-3L), 3))), ((((safe_lshift_func_uint8_t_u_u((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(p_2366->g_920.xxyy)).zzxxxzxwwzwwzzyz)).sc > (((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 2))(0x56B237FBD0CDF774L, 0L)).yyyxxxxyxyyxxxxx, ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 2))(l_921.zw)).xxxy, ((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_922.zy)))))).xxyxxxyyxyxyxxxy, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))((-6L), 0L)))).xyxxyyyyyxxxyyyy))).sf331))).wxzxwwyzxxyzxzxz))), ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_923.s1734167220077613)).even)).odd))).wxxwyzyxxzzwxxxy, ((VECTOR(int64_t, 8))(p_2366->g_924.xyxxxxxx)).s7047375112370142))).s3 != (l_925 == p_2366->g_926))), l_743.x)) , l_819.x) <= l_895[3][0][5]) , (safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_2366->group_0_offset, get_group_id(0), 10), (safe_add_func_int64_t_s_s((p_2366->g_597.x = (4L != 0x4D73C752L)), GROUP_DIVERGE(1, 1)))))))) > (-9L)) && p_54)), 6)))
            { /* block id: 363 */
                for (l_747 = (-11); (l_747 > 45); l_747 = safe_add_func_uint64_t_u_u(l_747, 6))
                { /* block id: 366 */
                    uint32_t *l_947 = &l_895[3][0][0];
                    int32_t l_948[7];
                    int32_t **l_949 = &p_2366->g_347;
                    int i;
                    for (i = 0; i < 7; i++)
                        l_948[i] = 0x3CF6BCF7L;
                    (*p_2366->g_937) ^= p_54;
                    (*p_2366->g_938) = (*p_2366->g_903);
                    l_940 &= (!l_895[3][0][5]);
                    (*l_949) = func_72(p_55, (((l_886.s6 < (((*p_2366->g_926) != (void*)0) | ((0UL != (safe_lshift_func_int16_t_s_u((((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(1L, ((VECTOR(int16_t, 4))(8L, (((((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), p_56)) ^ 251UL) && (safe_mod_func_uint32_t_u_u(0xF565B588L, ((p_2366->g_486 = ((((*l_947) = ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(4294967295UL, 4294967295UL, ((VECTOR(uint32_t, 4))(0xD465DD8AL)), 0UL, 4294967295UL, 4294967295UL, ((VECTOR(uint32_t, 4))(0xDBBFDCD6L)), 0x9D83FBE0L, 1UL, 0xE1598091L)).even)).s1) , p_54) | p_56)) , p_56)))) && p_54) && GROUP_DIVERGE(2, 1)), 0x3C30L, 0x2F02L)), 1L, 1L, p_56, l_948[4], 0x3158L, l_895[3][0][5], 0x0226L, ((VECTOR(int16_t, 4))(0x0BA4L)))).sad13)), ((VECTOR(uint16_t, 4))(65535UL))))).x > l_923.s3), 2))) || 9UL))) <= 0x7AF497D04F342591L) && l_948[0]), l_819.x, l_671.s7, p_2366);
                }
            }
            else
            { /* block id: 374 */
                l_940 &= l_671.sb;
            }
            (*p_2366->g_950) = &l_940;
        }
    }
    (*l_975) = func_72(((&p_2366->g_486 != l_87[1]) <= (l_77 = p_56)), l_671.s3, (**p_2366->g_776), ((((((l_656 = (safe_mul_func_uint8_t_u_u((1UL == (p_2366->g_40 = ((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), ((((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_955.sa5)), 0x57C3L, 0xE7C4L)).lo, ((VECTOR(uint16_t, 4))(p_2366->g_956.s1047)).odd, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(3UL, 0x29FBL)).yyyxxyxxyyxxyxyy)).odd, ((VECTOR(uint16_t, 8))(l_957.xyxyyxyy))))))), (uint16_t)GROUP_DIVERGE(0, 1)))).s06, ((VECTOR(uint16_t, 16))(l_958.xwzxxwywzyzyxxxx)).s48))), ((VECTOR(uint16_t, 8))(l_959.yxxxyxxx)), ((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 2))(5UL, 0xC0B5L)), ((VECTOR(uint16_t, 4))(l_960.yxxy)).even))), 0UL, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 16))(p_2366->g_961.scb26cae2070a4538)).s1b, ((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 4))(l_962.s7157)).yxxzxxxyzyyyxyzy, ((VECTOR(uint16_t, 8))(p_2366->g_963.zyxxwyyw)).s6606446232267054))), ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(0xCBL, 1UL)), ((VECTOR(uint8_t, 16))(l_964.s4072303433350602)).sb2))).yxxyxxyyyyyyxxxx))).sf6))), 0x9A4CL)).sb1))).even , (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 8))(4L, (+((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(p_2366->g_967.s60)), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))((safe_div_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(l_955.s6, p_57)), (l_962.s6 | l_819.y))) & l_960.x), 0xE490DD47L)), 0x2658L, ((VECTOR(int16_t, 4))(0x4419L)), (-1L), 0L)).s4773243742376615)).se8))), (int16_t)(-1L)))).yyyyyyxx)).s1), ((VECTOR(int16_t, 4))(7L)), 0x2F5CL, 0L)).s3, l_819.y))) == l_974[3][0]))) >= 0x20L))), 0xF9L))) <= 0x86L) == p_2366->g_450.w) , l_955.s5) , p_55) & 4294967295UL), p_2366);
    (*l_975) = (void*)0;
    (*l_975) = (*p_2366->g_360);
    return l_976;
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_335 p_2366->g_22 p_2366->g_106 p_2366->g_40 p_2366->g_37 p_2366->g_113 p_2366->g_346 p_2366->g_63 p_2366->g_2 p_2366->g_283 p_2366->g_81 p_2366->g_107 p_2366->g_82 p_2366->g_21 p_2366->g_319 p_2366->g_160 p_2366->g_357 p_2366->g_360 p_2366->g_285 p_2366->g_372 p_2366->g_220 p_2366->g_35 p_2366->g_386 p_2366->g_90 p_2366->g_414 p_2366->g_439 p_2366->g_440 p_2366->g_227 p_2366->g_447 p_2366->g_448 p_2366->g_449 p_2366->g_450 p_2366->g_455 p_2366->g_279 p_2366->g_278 p_2366->g_486 p_2366->g_596 p_2366->g_597 p_2366->g_600 p_2366->g_603 p_2366->g_604 p_2366->g_164 p_2366->g_635 p_2366->g_526 p_2366->g_300 p_2366->g_651 p_2366->g_654
 * writes: p_2366->g_347 p_2366->g_63 p_2366->g_90 p_2366->g_37 p_2366->g_40 p_2366->g_220 p_2366->g_113 p_2366->g_319 p_2366->g_106 p_2366->g_107 p_2366->g_82 p_2366->g_486 p_2366->g_285
 */
int16_t  func_67(int16_t * p_68, uint32_t * p_69, int32_t * p_70, struct S0 * p_2366)
{ /* block id: 119 */
    uint8_t l_333 = 249UL;
    VECTOR(int16_t, 2) l_334 = (VECTOR(int16_t, 2))(0x12DEL, 1L);
    int32_t l_336 = 0x6D02DDA5L;
    int8_t *l_342 = (void*)0;
    int8_t *l_343 = (void*)0;
    int32_t l_345 = 6L;
    VECTOR(uint16_t, 16) l_364 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65529UL), 65529UL), 65529UL, 65535UL, 65529UL, (VECTOR(uint16_t, 2))(65535UL, 65529UL), (VECTOR(uint16_t, 2))(65535UL, 65529UL), 65535UL, 65529UL, 65535UL, 65529UL);
    VECTOR(int16_t, 8) l_377 = (VECTOR(int16_t, 8))(0x70C2L, (VECTOR(int16_t, 4))(0x70C2L, (VECTOR(int16_t, 2))(0x70C2L, 0x6D08L), 0x6D08L), 0x6D08L, 0x70C2L, 0x6D08L);
    int64_t l_382 = 0x0EE94C0DCA462831L;
    VECTOR(int8_t, 4) l_387 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L));
    int8_t *l_388[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t ***l_393[1];
    VECTOR(int8_t, 2) l_394 = (VECTOR(int8_t, 2))(0x6AL, 0L);
    VECTOR(int8_t, 8) l_395 = (VECTOR(int8_t, 8))(0x45L, (VECTOR(int8_t, 4))(0x45L, (VECTOR(int8_t, 2))(0x45L, 0L), 0L), 0L, 0x45L, 0L);
    VECTOR(int8_t, 4) l_396 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L);
    uint64_t *l_405 = &p_2366->g_113;
    uint32_t l_406 = 4294967289UL;
    VECTOR(int32_t, 4) l_412 = (VECTOR(int32_t, 4))(0x4E4D2FACL, (VECTOR(int32_t, 2))(0x4E4D2FACL, 0x57E2BCC1L), 0x57E2BCC1L);
    uint32_t l_464 = 0UL;
    int64_t l_474 = 0x266510CD305ED13AL;
    uint8_t l_483 = 0UL;
    int8_t l_494 = 0x2DL;
    int16_t l_519 = 6L;
    int8_t l_520[10] = {0x21L,0x21L,0x21L,0x21L,0x21L,0x21L,0x21L,0x21L,0x21L,0x21L};
    int32_t *l_524 = &p_2366->g_285[3];
    int16_t ***l_582 = (void*)0;
    uint32_t *l_592 = &p_2366->g_90[0];
    uint32_t **l_591 = &l_592;
    int16_t l_595 = 0x7AB2L;
    uint32_t l_632[2];
    uint32_t ***l_650 = (void*)0;
    uint32_t l_652 = 5UL;
    int i;
    for (i = 0; i < 1; i++)
        l_393[i] = &p_2366->g_319;
    for (i = 0; i < 2; i++)
        l_632[i] = 3UL;
    if ((((safe_add_func_int64_t_s_s((-1L), (0x57L & ((((safe_unary_minus_func_uint64_t_u((l_336 = (safe_rshift_func_int16_t_s_u(l_333, (FAKE_DIVERGE(p_2366->group_2_offset, get_group_id(2), 10) > ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x47DBL, 0L)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_334.yy)).yyyx)).yzzywzywyywzzyzy)).odd)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(p_2366->g_335.s0671223151565241)).s83)).yyxy)), (-1L), 0x30D9L)).even)).hi)).z)))))) == p_2366->g_22.sd) || (p_2366->g_106 ^ (+(safe_div_func_int16_t_s_s((((((safe_unary_minus_func_uint32_t_u((safe_div_func_int8_t_s_s((l_336 = l_336), (safe_unary_minus_func_int64_t_s(0x7A299FE74D237FE0L)))))) < (l_345 = l_334.y)) , ((*p_69) <= l_345)) , (void*)0) != (void*)0), (*p_68)))))) <= l_334.x)))) == p_2366->g_113) , l_333))
    { /* block id: 123 */
        uint32_t *l_351 = &p_2366->g_90[2];
        uint32_t **l_350 = &l_351;
        int32_t l_353[6][3] = {{0x6B1B3BD9L,0x6B1B3BD9L,0x18E0B50CL},{0x6B1B3BD9L,0x6B1B3BD9L,0x18E0B50CL},{0x6B1B3BD9L,0x6B1B3BD9L,0x18E0B50CL},{0x6B1B3BD9L,0x6B1B3BD9L,0x18E0B50CL},{0x6B1B3BD9L,0x6B1B3BD9L,0x18E0B50CL},{0x6B1B3BD9L,0x6B1B3BD9L,0x18E0B50CL}};
        int32_t **l_355 = &p_2366->g_347;
        int i, j;
        (*p_2366->g_346) = &l_345;
        for (p_2366->g_63 = 0; (p_2366->g_63 > 53); p_2366->g_63++)
        { /* block id: 127 */
            uint32_t ***l_352 = &l_350;
            (*l_352) = l_350;
        }
        (*l_355) = func_72(l_353[3][1], p_2366->g_2, p_2366->g_283[1][1][2], (*p_68), p_2366);
    }
    else
    { /* block id: 131 */
        int32_t *l_356 = &p_2366->g_285[1];
        VECTOR(int16_t, 8) l_363 = (VECTOR(int16_t, 8))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x1A06L), 0x1A06L), 0x1A06L, (-4L), 0x1A06L);
        VECTOR(int32_t, 8) l_371 = (VECTOR(int32_t, 8))(0x311D7EF1L, (VECTOR(int32_t, 4))(0x311D7EF1L, (VECTOR(int32_t, 2))(0x311D7EF1L, 0x26100C7DL), 0x26100C7DL), 0x26100C7DL, 0x311D7EF1L, 0x26100C7DL);
        uint8_t *l_380[6] = {&l_333,&p_2366->g_164,&l_333,&l_333,&p_2366->g_164,&l_333};
        uint64_t *l_381 = &p_2366->g_113;
        int32_t *l_383 = &p_2366->g_220;
        int i;
        (*p_2366->g_357) = l_356;
        (*p_2366->g_360) = l_356;
        (*l_383) ^= ((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(l_363.s4161332522524006)).s1, ((VECTOR(uint16_t, 2))(l_364.sb7)).lo)) , (((&p_68 != &p_68) ^ (safe_mod_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((1UL & (*l_356)), (((((VECTOR(int32_t, 4))(l_371.s1416)).z && ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(p_2366->g_372.zwwzwyyz)).hi)))).z) && GROUP_DIVERGE(0, 1)) || ((*l_381) = (safe_mul_func_uint8_t_u_u((((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))((*l_356), (l_371.s3 &= (((safe_mod_func_int32_t_s_s((*l_356), l_377.s3)) >= 0xCF95BAF4L) <= (((safe_add_func_int16_t_s_s(0L, l_334.y)) , p_2366->g_2) <= l_334.x))), (*l_356), ((VECTOR(uint8_t, 2))(0x1AL)), 0x11L, 0x31L, 0UL)).s63, ((VECTOR(uint8_t, 2))(0x8CL))))).lo && 0x85L), GROUP_DIVERGE(1, 1))))))) < l_377.s6), (*l_356))), (-4L)))) < l_382));
    }
    if ((p_2366->g_35.s3 & (p_2366->g_35.s2 , (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0UL, 0x2BL)).yyxx)))).zyxzxxzz, ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))(p_2366->g_386.sc2)).xxyy, ((VECTOR(int8_t, 4))(l_387.zzxx))))).hi)), ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))(0x7AL, (l_345 = ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 2))(0x38L, (-6L))).xxxx, ((VECTOR(int8_t, 2))(0x7BL, 0x4EL)).xyxy))))).w), (safe_rshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((GROUP_DIVERGE(0, 1) == ((p_2366->g_319 = &p_2366->g_320) != (l_364.s1 , &p_68))), 7)), 15)), (-5L), ((VECTOR(int8_t, 2))(l_394.yx)), 0x3EL, ((VECTOR(int8_t, 8))(l_395.s76163661)), (-7L))), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(0x2EL, 0x4FL)))).yyyyxxyyxyxxxyyx, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_396.wzzwyzyz)).s5770364532643537))))).s84f4, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(0L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(0x67L, 4L, (l_336 ^= ((safe_rshift_func_int16_t_s_u(((((*l_405) |= (l_387.z && (safe_sub_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s(0x4EECL, (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_2366->group_2_offset, get_group_id(2), 10), (*p_68))))) | l_377.s6), l_387.y)))) || l_406) < GROUP_DIVERGE(1, 1)), p_2366->g_90[2])) ^ (*p_68))), p_2366->g_386.sc, 0x36L, 5L, ((VECTOR(int8_t, 4))(0x1DL)), (-1L), 0x7CL, 0x5EL, 1L, 8L, 0x39L)).s110a)), 0L, 0x6CL, 0x3EL)).s00)), 0x24L, 0x47L)))), ((VECTOR(int8_t, 4))(1L))))).even))).xyxyyxyy))).s6, l_387.y)))))
    { /* block id: 142 */
        VECTOR(int32_t, 8) l_413 = (VECTOR(int32_t, 8))(0x7F5828B3L, (VECTOR(int32_t, 4))(0x7F5828B3L, (VECTOR(int32_t, 2))(0x7F5828B3L, 0L), 0L), 0L, 0x7F5828B3L, 0L);
        VECTOR(uint32_t, 16) l_417 = (VECTOR(uint32_t, 16))(0xBE0661AFL, (VECTOR(uint32_t, 4))(0xBE0661AFL, (VECTOR(uint32_t, 2))(0xBE0661AFL, 0xD9D5CA08L), 0xD9D5CA08L), 0xD9D5CA08L, 0xBE0661AFL, 0xD9D5CA08L, (VECTOR(uint32_t, 2))(0xBE0661AFL, 0xD9D5CA08L), (VECTOR(uint32_t, 2))(0xBE0661AFL, 0xD9D5CA08L), 0xBE0661AFL, 0xD9D5CA08L, 0xBE0661AFL, 0xD9D5CA08L);
        VECTOR(uint8_t, 4) l_420 = (VECTOR(uint8_t, 4))(0x74L, (VECTOR(uint8_t, 2))(0x74L, 0x67L), 0x67L);
        int64_t l_443 = (-1L);
        int32_t *l_487 = &l_336;
        VECTOR(uint16_t, 2) l_490 = (VECTOR(uint16_t, 2))(1UL, 0x3C2AL);
        VECTOR(uint16_t, 4) l_491 = (VECTOR(uint16_t, 4))(0xFE6AL, (VECTOR(uint16_t, 2))(0xFE6AL, 0UL), 0UL);
        uint32_t ***l_515 = (void*)0;
        uint16_t * volatile * volatile l_529 = &p_2366->g_526;/* VOLATILE GLOBAL l_529 */
        int32_t l_578 = 0x5650BE66L;
        int i;
        for (p_2366->g_106 = 0; (p_2366->g_106 == 36); ++p_2366->g_106)
        { /* block id: 145 */
            uint64_t *l_411[1][5] = {{&p_2366->g_113,&p_2366->g_113,&p_2366->g_113,&p_2366->g_113,&p_2366->g_113}};
            VECTOR(int32_t, 8) l_415 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-10L)), (-10L)), (-10L), (-1L), (-10L));
            uint32_t l_416 = 0xAA9C7DCCL;
            uint32_t *l_442[5][7] = {{&l_416,&l_416,&l_416,&l_416,&l_416,&l_416,&l_416},{&l_416,&l_416,&l_416,&l_416,&l_416,&l_416,&l_416},{&l_416,&l_416,&l_416,&l_416,&l_416,&l_416,&l_416},{&l_416,&l_416,&l_416,&l_416,&l_416,&l_416,&l_416},{&l_416,&l_416,&l_416,&l_416,&l_416,&l_416,&l_416}};
            uint32_t **l_441[5] = {&l_442[2][3],&l_442[2][3],&l_442[2][3],&l_442[2][3],&l_442[2][3]};
            int32_t l_444 = 1L;
            int32_t *l_465 = (void*)0;
            int32_t *l_466 = &p_2366->g_220;
            int i, j;
            l_444 &= (safe_add_func_uint32_t_u_u((l_411[0][3] != ((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_412.zyzyzzzywyzwzyzw)).s93, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_413.s5605406503424600)).odd)).s4473406062475023)).s36, ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(p_2366->g_414.s9472ef5b6ffd2daa)).sb8, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 2))(l_415.s35)), (int32_t)l_416, (int32_t)0x0886D9A1L))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(0x4EC49346L, 7L, 0x03AFB107L, 0x356A8688L)).hi)), ((!((((0x1EACD9F3L ^ ((VECTOR(uint32_t, 8))(abs(((VECTOR(uint32_t, 2))(l_417.s56)).xyyyxyxy))).s2) && (((safe_sub_func_uint8_t_u_u(((0UL < ((VECTOR(uint8_t, 8))(l_420.yzzwzxxy)).s6) & (++(*p_69))), (safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((safe_sub_func_uint64_t_u_u(18446744073709551611UL, (l_412.y = (~((*l_405)++))))), 12)), p_2366->g_22.s6)), ((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 0)) == (safe_mul_func_int16_t_s_s(((safe_div_func_uint16_t_u_u((p_2366->g_439 == l_441[4]), l_395.s4)) & l_413.s6), l_420.x))))))) | 1UL) || l_443)) != l_416) && FAKE_DIVERGE(p_2366->group_2_offset, get_group_id(2), 10))) , 0x0D25C6EDL), 6L, 0L, 0L, 0x14E8B6CBL, 1L)).s45, ((VECTOR(int32_t, 2))(0L))))))), ((VECTOR(int32_t, 2))(0x32580720L)))))))), (-2L), 0L)).x || (*p_2366->g_440)) , &p_2366->g_113)), l_334.y));
            (*l_466) ^= (safe_sub_func_uint32_t_u_u((((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(p_2366->g_447.yxxxyxyxyxxxxyyy)))), ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 2))(p_2366->g_448.xz)), ((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 4))(p_2366->g_449.xxyy)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(p_2366->g_450.zyzyxwxyzyxyywxx)).sa13a))).hi, (int8_t)(!(((p_2366->g_107.x ^= (safe_add_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((2UL >= (!0x15FAD88CL)), (((*p_68) ^= (p_2366->g_447.y , 0x5CD3L)) | ((((*p_69) = (**p_2366->g_439)) & ((VECTOR(int32_t, 8))(p_2366->g_455.s35125223)).s7) != (GROUP_DIVERGE(0, 1) < (-1L)))))), ((safe_sub_func_int8_t_s_s(0x7BL, ((safe_add_func_int64_t_s_s(((l_416 <= (+FAKE_DIVERGE(p_2366->group_2_offset, get_group_id(2), 10))) != (safe_lshift_func_int16_t_s_u((safe_add_func_int64_t_s_s((((l_464 = 0x3071L) <= 0xAE43L) ^ l_417.sb), 0x02AC0DE20CBC915CL)), l_417.s7))), l_334.x)) > p_2366->g_279.s7))) >= l_415.s1)))) ^ l_396.w) ^ 8UL))))).xxyx)).hi, ((VECTOR(uint8_t, 2))(0UL))))), 0x5203L, 0x2A67L)).xxyzxzyz)))).hi))).odd))).xxyxxxyxxyxyxxxx, ((VECTOR(int16_t, 16))(9L)))))))).s4 , l_443), l_413.s2));
            for (l_333 = 0; (l_333 <= 36); l_333 = safe_add_func_uint16_t_u_u(l_333, 3))
            { /* block id: 157 */
                int64_t l_469[9] = {0x0D4D82B0AB128351L,0x0D4D82B0AB128351L,0x0D4D82B0AB128351L,0x0D4D82B0AB128351L,0x0D4D82B0AB128351L,0x0D4D82B0AB128351L,0x0D4D82B0AB128351L,0x0D4D82B0AB128351L,0x0D4D82B0AB128351L};
                int i;
                if (l_469[7])
                    break;
            }
        }
        (*l_487) ^= (safe_sub_func_int16_t_s_s((!(safe_mod_func_int16_t_s_s((l_474 , (+(safe_mod_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), l_413.s2)) <= l_412.z), (l_420.y , (safe_sub_func_uint64_t_u_u((((p_2366->g_278.w == p_2366->g_450.w) <= (l_420.z & ((((p_2366->g_82.z = (safe_lshift_func_uint8_t_u_s(l_483, (((safe_sub_func_uint64_t_u_u(((*l_405) = ((l_420.y < l_443) == p_2366->g_63)), 18446744073709551615UL)) & l_417.s8) , p_2366->g_35.s2)))) && l_364.s2) ^ 1L) ^ l_413.s1))) && 0x38L), l_364.sb))))))), 65531UL))), p_2366->g_486));
        (*l_487) = (safe_rshift_func_uint16_t_u_u((FAKE_DIVERGE(p_2366->global_0_offset, get_global_id(0), 10) , ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 16))(l_490.yxyxyxxyxxxyyyxy)).s37, ((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 4))(l_491.zyyz)).xwzxzyzzywyzzzxw))).saa))).hi), l_377.s4));
        for (p_2366->g_486 = 0; (p_2366->g_486 < 38); p_2366->g_486 = safe_add_func_uint32_t_u_u(p_2366->g_486, 3))
        { /* block id: 167 */
            int32_t *l_495 = &l_345;
            int32_t *l_496 = (void*)0;
            int32_t *l_497 = &l_345;
            int32_t *l_498 = &l_336;
            int32_t *l_499 = &l_345;
            int32_t *l_500 = &l_336;
            int32_t *l_501[4] = {&p_2366->g_220,&p_2366->g_220,&p_2366->g_220,&p_2366->g_220};
            uint32_t l_502 = 0xD8D1D13AL;
            uint16_t *l_516 = &p_2366->g_300[2];
            uint32_t *l_559 = &p_2366->g_40;
            uint32_t **l_558 = &l_559;
            uint32_t ***l_557 = &l_558;
            uint32_t l_574[8];
            int32_t l_577 = (-1L);
            uint8_t l_579 = 0x29L;
            int i;
            for (i = 0; i < 8; i++)
                l_574[i] = 4294967289UL;
            l_502++;
        }
    }
    else
    { /* block id: 209 */
        uint32_t l_585 = 0xE6C98025L;
        int32_t *l_586 = &l_345;
        (*l_586) ^= ((*l_524) = (l_585 = ((VECTOR(int32_t, 2))(7L, (-7L))).hi));
    }
    (*l_524) |= (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2366->local_0_offset, get_local_id(0), 10), 11)), ((void*)0 == l_591)));
    if ((safe_lshift_func_uint8_t_u_s(l_595, 7)))
    { /* block id: 215 */
        VECTOR(int64_t, 2) l_598 = (VECTOR(int64_t, 2))((-1L), 0x4BA85E7BBECF8D4CL);
        VECTOR(int64_t, 2) l_599 = (VECTOR(int64_t, 2))(0L, 0x6D3CEA4AC1761EE1L);
        VECTOR(uint32_t, 4) l_615 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xF391CCCAL), 0xF391CCCAL);
        VECTOR(uint8_t, 8) l_620 = (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0x4DL), 0x4DL), 0x4DL, 9UL, 0x4DL);
        uint32_t l_626 = 3UL;
        int32_t l_631 = 4L;
        uint16_t *l_633[6][5] = {{&p_2366->g_300[3],&p_2366->g_300[3],&p_2366->g_300[1],&p_2366->g_300[4],&p_2366->g_300[0]},{&p_2366->g_300[3],&p_2366->g_300[3],&p_2366->g_300[1],&p_2366->g_300[4],&p_2366->g_300[0]},{&p_2366->g_300[3],&p_2366->g_300[3],&p_2366->g_300[1],&p_2366->g_300[4],&p_2366->g_300[0]},{&p_2366->g_300[3],&p_2366->g_300[3],&p_2366->g_300[1],&p_2366->g_300[4],&p_2366->g_300[0]},{&p_2366->g_300[3],&p_2366->g_300[3],&p_2366->g_300[1],&p_2366->g_300[4],&p_2366->g_300[0]},{&p_2366->g_300[3],&p_2366->g_300[3],&p_2366->g_300[1],&p_2366->g_300[4],&p_2366->g_300[0]}};
        int32_t l_634[7][8][4] = {{{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)}},{{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)}},{{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)}},{{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)}},{{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)}},{{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)}},{{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)},{(-1L),0L,(-1L),(-5L)}}};
        int i, j, k;
        (*l_524) |= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_2366->g_596.s40)), 1L, (-1L))).y;
        (*l_524) = (((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 4))(p_2366->g_597.yxxx)).zxxzwyywxzywywzx, ((VECTOR(int64_t, 4))(l_598.xyxx)).xxxwwyzzzwyxzywx, ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_599.yxxyyyxxxxyyyxyx)).even)), ((VECTOR(int64_t, 4))(p_2366->g_600.s6150)).zwwxyyyx))).s4575265461433257))).s1 >= (safe_lshift_func_int16_t_s_s((((((VECTOR(int8_t, 8))(p_2366->g_603.ywwyxwyz)).s4 & p_2366->g_279.s3) <= (((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(p_2366->g_604.s17210713)).s60)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((-9L), 0x6543L)), 0x474DL, (-9L))))).xwyxwwwx)).s65))).hi ^ (safe_add_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(0xFBL, (safe_add_func_uint64_t_u_u((FAKE_DIVERGE(p_2366->local_1_offset, get_local_id(1), 10) < (safe_mod_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((((VECTOR(uint32_t, 2))(l_615.xw)).even || (safe_div_func_uint8_t_u_u(((0L ^ (safe_add_func_int8_t_s_s((l_620.s3 ^= l_599.y), (FAKE_DIVERGE(p_2366->group_0_offset, get_group_id(0), 10) == (safe_unary_minus_func_int16_t_s((safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(l_626, 3)), (-1L))))))))) > ((l_634[2][6][1] ^= ((l_631 = ((safe_rshift_func_uint16_t_u_s(((*l_524) != (((((safe_mul_func_int8_t_s_s(((*l_591) != &p_2366->g_90[2]), (*l_524))) >= p_2366->g_35.s0) | (*p_68)) != (*l_524)) == l_615.x)), 13)) | (*l_524))) , l_632[1])) != p_2366->g_164)), 249UL))), (*p_68))), l_626))), l_599.y)))), (-10L))))) < (-9L)), 8)));
        if (((VECTOR(int32_t, 4))(p_2366->g_635.yxyx)).y)
        { /* block id: 221 */
            VECTOR(uint8_t, 2) l_640 = (VECTOR(uint8_t, 2))(248UL, 0x3EL);
            uint32_t ***l_649[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint32_t ****l_648[2][3][2] = {{{&l_649[0],&l_649[0]},{&l_649[0],&l_649[0]},{&l_649[0],&l_649[0]}},{{&l_649[0],&l_649[0]},{&l_649[0],&l_649[0]},{&l_649[0],&l_649[0]}}};
            int32_t l_653 = 0x3A842D10L;
            int i, j, k;
            (*l_524) = ((safe_lshift_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(l_640.xxyxyxxy)).s7, (l_653 = ((VECTOR(int8_t, 16))(0x3EL, ((VECTOR(int8_t, 4))(((safe_mod_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(((1UL ^ ((safe_add_func_uint16_t_u_u(1UL, (safe_unary_minus_func_int64_t_s(((!(((l_650 = (void*)0) != &p_2366->g_439) < ((l_640.y | ((((*p_2366->g_526) != l_640.y) >= ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0x0F9F4297L, 0x1FA0E247L)), ((VECTOR(uint32_t, 2))(4294967295UL, 0xAF5FFA0EL)), 1UL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(p_2366->g_651.yxzw)).hi)), 0x9F33C9BBL)))).s0) < l_598.x)) < p_2366->g_107.x))) && l_652))))) <= 0UL)) < (-4L)), (*p_68))), p_2366->g_448.x)) & l_640.x), ((VECTOR(int8_t, 2))(0L)), 1L)), (-1L), 5L, (-1L), 0x00L, ((VECTOR(int8_t, 2))(1L)), 1L, ((VECTOR(int8_t, 2))(0x60L)), (-10L), 0x0CL)).s4))) ^ p_2366->g_90[2]), 9)) == (*p_68));
            (*l_524) = l_615.z;
            l_653 |= l_631;
            (*l_524) &= (((GROUP_DIVERGE(0, 1) >= l_640.y) , p_69) != (*p_2366->g_439));
        }
        else
        { /* block id: 228 */
            (*p_2366->g_654) = &l_631;
        }
    }
    else
    { /* block id: 231 */
        return (*p_68);
    }
    return (*l_524);
}


/* ------------------------------------------ */
/* 
 * reads : p_2366->g_81 p_2366->g_82 p_2366->g_107 p_2366->g_35 p_2366->g_2 p_2366->g_37 p_2366->g_113 p_2366->g_106 p_2366->g_63 p_2366->g_90 p_2366->g_21 p_2366->g_40 p_2366->g_319 p_2366->g_160
 * writes: p_2366->g_106 p_2366->g_113 p_2366->g_90 p_2366->g_37 p_2366->g_40 p_2366->g_220
 */
int32_t * func_72(int32_t  p_73, int32_t  p_74, uint64_t  p_75, int16_t  p_76, struct S0 * p_2366)
{ /* block id: 14 */
    uint64_t *l_102 = (void*)0;
    uint64_t **l_101 = &l_102;
    int32_t l_103 = (-8L);
    uint64_t *l_104 = (void*)0;
    uint64_t *l_105 = &p_2366->g_106;
    uint64_t *l_112[4][2] = {{&p_2366->g_113,&p_2366->g_113},{&p_2366->g_113,&p_2366->g_113},{&p_2366->g_113,&p_2366->g_113},{&p_2366->g_113,&p_2366->g_113}};
    VECTOR(uint64_t, 2) l_127 = (VECTOR(uint64_t, 2))(0UL, 0x5BDF585002FA5D71L);
    VECTOR(int8_t, 2) l_138 = (VECTOR(int8_t, 2))(0x0DL, 9L);
    uint16_t l_158 = 65526UL;
    int32_t l_162[5] = {0x7213F659L,0x7213F659L,0x7213F659L,0x7213F659L,0x7213F659L};
    int32_t *l_216 = (void*)0;
    VECTOR(int16_t, 16) l_223 = (VECTOR(int16_t, 16))(0x50ECL, (VECTOR(int16_t, 4))(0x50ECL, (VECTOR(int16_t, 2))(0x50ECL, 4L), 4L), 4L, 0x50ECL, 4L, (VECTOR(int16_t, 2))(0x50ECL, 4L), (VECTOR(int16_t, 2))(0x50ECL, 4L), 0x50ECL, 4L, 0x50ECL, 4L);
    int16_t l_236 = 5L;
    VECTOR(int16_t, 2) l_250 = (VECTOR(int16_t, 2))(0x08FAL, 1L);
    VECTOR(int16_t, 4) l_252 = (VECTOR(int16_t, 4))(0x0FD8L, (VECTOR(int16_t, 2))(0x0FD8L, 0x2184L), 0x2184L);
    int32_t l_281 = 0x63291E4BL;
    int32_t *l_321 = &p_2366->g_220;
    int32_t *l_322[5][1][3] = {{{&p_2366->g_220,&p_2366->g_220,&p_2366->g_220}},{{&p_2366->g_220,&p_2366->g_220,&p_2366->g_220}},{{&p_2366->g_220,&p_2366->g_220,&p_2366->g_220}},{{&p_2366->g_220,&p_2366->g_220,&p_2366->g_220}},{{&p_2366->g_220,&p_2366->g_220,&p_2366->g_220}}};
    int16_t l_323 = 0x0D96L;
    int8_t l_324 = 8L;
    uint64_t l_325 = 0x215E4A774B48B606L;
    int i, j, k;
    if ((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(18446744073709551615UL, 18446744073709551611UL, 1UL, ((safe_add_func_uint64_t_u_u(((safe_add_func_int64_t_s_s(0x78796DE133A9B92FL, 0x0C55CA0DA2B3C28CL)) | (p_2366->g_113 &= (((l_103 = (((safe_mod_func_uint32_t_u_u((safe_div_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(((((*l_101) = &p_75) != &p_2366->g_63) <= (p_2366->g_81.y , l_103)), ((*l_105) = p_2366->g_82.y))), ((VECTOR(uint8_t, 2))(p_2366->g_107.xx)).hi)), (safe_lshift_func_uint8_t_u_s((p_74 || ((safe_mod_func_uint16_t_u_u(0x5F25L, p_2366->g_35.s5)) <= p_2366->g_2)), 0)))) > p_2366->g_2) == p_2366->g_37)) || l_103) == 0x3CB00F8C8FF69710L))), p_2366->g_82.w)) <= 0x6CD28588L), 0x6A48933AC5CED91AL, ((VECTOR(uint64_t, 8))(0UL)), 18446744073709551612UL, 18446744073709551607UL, 0x74EAE5124A76911FL)).s35e5)).wzyyzzwz)).s5 >= (-1L)))
    { /* block id: 19 */
        int64_t l_118 = 0x3CBA28DA27851ED0L;
        VECTOR(int32_t, 4) l_121 = (VECTOR(int32_t, 4))(0x49AA0F80L, (VECTOR(int32_t, 2))(0x49AA0F80L, 0x2A48D7F8L), 0x2A48D7F8L);
        uint32_t *l_122 = &p_2366->g_90[2];
        int16_t *l_134 = &p_2366->g_37;
        int32_t *l_135[3][10][8] = {{{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0}},{{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0}},{{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0},{&l_103,(void*)0,(void*)0,&l_103,(void*)0,&l_103,(void*)0,(void*)0}}};
        uint64_t *l_163 = &p_2366->g_63;
        VECTOR(uint64_t, 4) l_176 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL);
        int32_t l_296 = 0L;
        int i, j, k;
        l_103 = (safe_rshift_func_int8_t_s_u((safe_sub_func_int64_t_s_s((l_118 || (safe_mod_func_int8_t_s_s(((((*l_122) = ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_121.wxyz)).zyzxxwyy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x275E99C3L, (-1L))).yyxy)).xwyxyywx))).even))).hi)))).lo) , (safe_mul_func_int16_t_s_s((+((*l_134) = (((safe_div_func_int32_t_s_s((p_2366->g_81.x , p_76), ((FAKE_DIVERGE(p_2366->local_0_offset, get_local_id(0), 10) , (p_73 , ((((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 16))(18446744073709551615UL, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(0UL, 18446744073709551615UL, 0x506916A65199CEA1L, ((*l_105) |= l_103), 18446744073709551611UL, ((VECTOR(uint64_t, 2))(l_127.yx)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(18446744073709551608UL, ((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 16))(0x49FF5904A8A8F1CDL, 0x219F0035E4DCDAB5L, (safe_lshift_func_int8_t_s_s(((p_76 < (safe_rshift_func_uint8_t_u_u((p_2366->g_2 > ((((safe_lshift_func_int8_t_s_u((p_74 & p_73), p_2366->g_82.y)) != p_75) >= 3UL) > p_73)), l_121.x))) & l_121.w), p_2366->g_35.s3)), l_103, ((VECTOR(int64_t, 4))(6L)), 0L, ((VECTOR(int64_t, 4))(0x138A0512332C83D2L)), ((VECTOR(int64_t, 2))(0x11146B1AA685BE09L)), 0x3385D38864000681L)), ((VECTOR(int64_t, 16))(1L))))).s0d21))), ((VECTOR(uint64_t, 2))(18446744073709551614UL)), 0xC22D3DACF38B7723L)).odd)), p_2366->g_63, p_2366->g_90[2], ((VECTOR(uint64_t, 2))(0x271D16DB7C975BB6L)), 0UL)).even)), ((VECTOR(uint64_t, 4))(0x82EC59D2773D60B3L)), 5UL, 0UL, 0x12AA013F98BF106CL)), ((VECTOR(uint64_t, 16))(18446744073709551614UL))))).lo)).s7 | 0x34120CDDF05FF3C1L) | p_2366->g_37) ^ 8L) && 9UL))) && l_127.y))) >= GROUP_DIVERGE(1, 1)) || p_73))), p_2366->g_107.y))) >= l_121.z), p_2366->g_82.z))), p_73)), 4));
        for (p_74 = (-11); (p_74 != 17); p_74++)
        { /* block id: 26 */
            uint64_t **l_141[9];
            int32_t *l_142 = &l_103;
            int32_t **l_143 = &l_142;
            int16_t *l_159 = &p_2366->g_160;
            int16_t *l_161[1][1];
            int16_t l_175[1];
            int32_t l_183[3][6][2] = {{{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L}},{{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L}},{{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L},{1L,0x0A45CE23L}}};
            VECTOR(uint32_t, 2) l_186 = (VECTOR(uint32_t, 2))(1UL, 0x4B6C8C4DL);
            VECTOR(int64_t, 8) l_229 = (VECTOR(int64_t, 8))(0x3B11EFF711D36CE4L, (VECTOR(int64_t, 4))(0x3B11EFF711D36CE4L, (VECTOR(int64_t, 2))(0x3B11EFF711D36CE4L, 0x1E0B0FEF90807700L), 0x1E0B0FEF90807700L), 0x1E0B0FEF90807700L, 0x3B11EFF711D36CE4L, 0x1E0B0FEF90807700L);
            uint64_t *l_234 = (void*)0;
            VECTOR(int16_t, 4) l_249 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 4L), 4L);
            VECTOR(int16_t, 2) l_251 = (VECTOR(int16_t, 2))(0x4FA9L, 0x3375L);
            VECTOR(int16_t, 8) l_253 = (VECTOR(int16_t, 8))(0x2B8DL, (VECTOR(int16_t, 4))(0x2B8DL, (VECTOR(int16_t, 2))(0x2B8DL, 0x68FBL), 0x68FBL), 0x68FBL, 0x2B8DL, 0x68FBL);
            VECTOR(int8_t, 8) l_270 = (VECTOR(int8_t, 8))(0x20L, (VECTOR(int8_t, 4))(0x20L, (VECTOR(int8_t, 2))(0x20L, 0x78L), 0x78L), 0x78L, 0x20L, 0x78L);
            VECTOR(int16_t, 4) l_271 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-1L)), (-1L));
            int32_t l_287 = 0L;
            int32_t l_288 = 0x4D8785ACL;
            int8_t l_312 = 0x29L;
            int i, j, k;
            for (i = 0; i < 9; i++)
                l_141[i] = &l_102;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_161[i][j] = (void*)0;
            }
            for (i = 0; i < 1; i++)
                l_175[i] = 0x355FL;
            l_103 = (((VECTOR(int8_t, 4))(l_138.xyxy)).w >= (safe_mod_func_uint16_t_u_u(((void*)0 == &p_2366->g_37), p_74)));
            l_103 = (l_141[4] != l_141[4]);
        }
        return p_2366->g_21;
    }
    else
    { /* block id: 109 */
        for (p_2366->g_40 = 0; (p_2366->g_40 >= 58); p_2366->g_40 = safe_add_func_uint32_t_u_u(p_2366->g_40, 1))
        { /* block id: 112 */
            int32_t *l_316 = &l_281;
            return p_2366->g_21;
        }
    }
    (*l_321) = (safe_lshift_func_uint8_t_u_u(((void*)0 != p_2366->g_319), p_2366->g_160));
    l_325++;
    return p_2366->g_21;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2367;
    struct S0* p_2366 = &c_2367;
    struct S0 c_2368 = {
        0x21F94964L, // p_2366->g_2
        0x6DB5CABFL, // p_2366->g_11
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x1D089051L), 0x1D089051L), 0x1D089051L, 0L, 0x1D089051L, (VECTOR(int32_t, 2))(0L, 0x1D089051L), (VECTOR(int32_t, 2))(0L, 0x1D089051L), 0L, 0x1D089051L, 0L, 0x1D089051L), // p_2366->g_22
        (void*)0, // p_2366->g_21
        (VECTOR(int64_t, 8))(0x1E177C422D5FBA25L, (VECTOR(int64_t, 4))(0x1E177C422D5FBA25L, (VECTOR(int64_t, 2))(0x1E177C422D5FBA25L, 0x2BF7C2F5A260DF39L), 0x2BF7C2F5A260DF39L), 0x2BF7C2F5A260DF39L, 0x1E177C422D5FBA25L, 0x2BF7C2F5A260DF39L), // p_2366->g_35
        0x668DL, // p_2366->g_37
        1UL, // p_2366->g_40
        18446744073709551615UL, // p_2366->g_63
        (VECTOR(int8_t, 2))(7L, (-1L)), // p_2366->g_81
        (VECTOR(int8_t, 4))(0x72L, (VECTOR(int8_t, 2))(0x72L, 0x44L), 0x44L), // p_2366->g_82
        {0xF30CE744L,0xF30CE744L,0xF30CE744L}, // p_2366->g_90
        0x18187EA63F3D54CDL, // p_2366->g_106
        (VECTOR(uint8_t, 2))(250UL, 0xAAL), // p_2366->g_107
        0xB3B2B9CE03596026L, // p_2366->g_113
        0L, // p_2366->g_160
        8UL, // p_2366->g_164
        0x7DCB55CDL, // p_2366->g_220
        0x82091717L, // p_2366->g_227
        7UL, // p_2366->g_256
        (VECTOR(int16_t, 4))(0x23C4L, (VECTOR(int16_t, 2))(0x23C4L, 0x23F1L), 0x23F1L), // p_2366->g_278
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int16_t, 2))(0L, 0L), (VECTOR(int16_t, 2))(0L, 0L), 0L, 0L, 0L, 0L), // p_2366->g_279
        {{{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L}},{{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L}},{{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L}},{{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L}},{{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L}},{{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L},{0x08B1L,(-5L),0L,(-6L),0x6E72L,0L,0L,0x08B1L,0x08B1L}}}, // p_2366->g_283
        {0x0E7CF8B9L,0x0E7CF8B9L,0x0E7CF8B9L,0x0E7CF8B9L,0x0E7CF8B9L,0x0E7CF8B9L,0x0E7CF8B9L}, // p_2366->g_285
        {1UL,1UL,1UL,1UL,1UL}, // p_2366->g_289
        {0x0813L,0x0813L,0x0813L,0x0813L,0x0813L}, // p_2366->g_300
        (void*)0, // p_2366->g_320
        &p_2366->g_320, // p_2366->g_319
        (VECTOR(int16_t, 8))(0x4FA8L, (VECTOR(int16_t, 4))(0x4FA8L, (VECTOR(int16_t, 2))(0x4FA8L, 0x3229L), 0x3229L), 0x3229L, 0x4FA8L, 0x3229L), // p_2366->g_335
        &p_2366->g_285[3], // p_2366->g_347
        &p_2366->g_347, // p_2366->g_346
        (void*)0, // p_2366->g_354
        &p_2366->g_347, // p_2366->g_357
        {{{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347}},{{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347}},{{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347}},{{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347}},{{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347}},{{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347}},{{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347},{(void*)0,&p_2366->g_347,(void*)0,&p_2366->g_347}}}, // p_2366->g_358
        {{&p_2366->g_347,&p_2366->g_347,&p_2366->g_347},{&p_2366->g_347,&p_2366->g_347,&p_2366->g_347},{&p_2366->g_347,&p_2366->g_347,&p_2366->g_347},{&p_2366->g_347,&p_2366->g_347,&p_2366->g_347},{&p_2366->g_347,&p_2366->g_347,&p_2366->g_347},{&p_2366->g_347,&p_2366->g_347,&p_2366->g_347}}, // p_2366->g_359
        &p_2366->g_347, // p_2366->g_360
        (VECTOR(int32_t, 4))(0x33C382A9L, (VECTOR(int32_t, 2))(0x33C382A9L, 0x1F8F8F5DL), 0x1F8F8F5DL), // p_2366->g_372
        (VECTOR(int8_t, 16))(0x72L, (VECTOR(int8_t, 4))(0x72L, (VECTOR(int8_t, 2))(0x72L, 0x11L), 0x11L), 0x11L, 0x72L, 0x11L, (VECTOR(int8_t, 2))(0x72L, 0x11L), (VECTOR(int8_t, 2))(0x72L, 0x11L), 0x72L, 0x11L, 0x72L, 0x11L), // p_2366->g_386
        (VECTOR(int32_t, 16))(0x3E67CF76L, (VECTOR(int32_t, 4))(0x3E67CF76L, (VECTOR(int32_t, 2))(0x3E67CF76L, 0x01C10BECL), 0x01C10BECL), 0x01C10BECL, 0x3E67CF76L, 0x01C10BECL, (VECTOR(int32_t, 2))(0x3E67CF76L, 0x01C10BECL), (VECTOR(int32_t, 2))(0x3E67CF76L, 0x01C10BECL), 0x3E67CF76L, 0x01C10BECL, 0x3E67CF76L, 0x01C10BECL), // p_2366->g_414
        &p_2366->g_227, // p_2366->g_440
        &p_2366->g_440, // p_2366->g_439
        (VECTOR(int16_t, 2))(0x6865L, (-1L)), // p_2366->g_447
        (VECTOR(int16_t, 4))(0x563FL, (VECTOR(int16_t, 2))(0x563FL, (-5L)), (-5L)), // p_2366->g_448
        (VECTOR(int16_t, 2))(2L, 1L), // p_2366->g_449
        (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, (-1L)), (-1L)), // p_2366->g_450
        (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x780B432BL), 0x780B432BL), 0x780B432BL, (-9L), 0x780B432BL), // p_2366->g_455
        0x6E7FBDCFL, // p_2366->g_486
        &p_2366->g_300[2], // p_2366->g_526
        &p_2366->g_526, // p_2366->g_525
        (void*)0, // p_2366->g_527
        {{&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525},{&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525},{&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525},{&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525},{&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525},{&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525},{&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525},{&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525},{&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525,&p_2366->g_525}}, // p_2366->g_528
        (void*)0, // p_2366->g_535
        (void*)0, // p_2366->g_537
        &p_2366->g_537, // p_2366->g_536
        (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 3L), 3L), 3L, (-9L), 3L), // p_2366->g_543
        (void*)0, // p_2366->g_568
        &p_2366->g_347, // p_2366->g_570
        (VECTOR(int32_t, 8))(0x08409447L, (VECTOR(int32_t, 4))(0x08409447L, (VECTOR(int32_t, 2))(0x08409447L, 8L), 8L), 8L, 0x08409447L, 8L), // p_2366->g_596
        (VECTOR(int64_t, 2))(1L, 0x289A315014E69898L), // p_2366->g_597
        (VECTOR(int64_t, 8))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0x00E6053818E1B605L), 0x00E6053818E1B605L), 0x00E6053818E1B605L, (-10L), 0x00E6053818E1B605L), // p_2366->g_600
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x55L), 0x55L), // p_2366->g_603
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x4B5BL), 0x4B5BL), 0x4B5BL, 0L, 0x4B5BL), // p_2366->g_604
        (VECTOR(int32_t, 2))(0x495C2D5DL, 0x3FAA4DD8L), // p_2366->g_635
        (VECTOR(uint32_t, 4))(0xDD060C68L, (VECTOR(uint32_t, 2))(0xDD060C68L, 1UL), 1UL), // p_2366->g_651
        &p_2366->g_347, // p_2366->g_654
        (-1L), // p_2366->g_689
        (void*)0, // p_2366->g_712
        (void*)0, // p_2366->g_762
        (void*)0, // p_2366->g_765
        (VECTOR(int32_t, 4))(0x19214D82L, (VECTOR(int32_t, 2))(0x19214D82L, 2L), 2L), // p_2366->g_773
        &p_2366->g_63, // p_2366->g_777
        &p_2366->g_777, // p_2366->g_776
        (void*)0, // p_2366->g_807
        &p_2366->g_347, // p_2366->g_848
        &p_2366->g_220, // p_2366->g_879
        &p_2366->g_347, // p_2366->g_903
        (VECTOR(uint16_t, 2))(65535UL, 0UL), // p_2366->g_920
        (VECTOR(int64_t, 2))(0x5964E862E6A506D1L, 0x542D53C3201008BCL), // p_2366->g_924
        (void*)0, // p_2366->g_928
        {&p_2366->g_928,&p_2366->g_928,&p_2366->g_928,&p_2366->g_928,&p_2366->g_928,&p_2366->g_928,&p_2366->g_928,&p_2366->g_928,&p_2366->g_928,&p_2366->g_928}, // p_2366->g_927
        &p_2366->g_927[3], // p_2366->g_926
        &p_2366->g_285[2], // p_2366->g_937
        &p_2366->g_347, // p_2366->g_938
        {{(void*)0,&p_2366->g_220,(void*)0,(void*)0},{(void*)0,&p_2366->g_220,(void*)0,(void*)0}}, // p_2366->g_939
        &p_2366->g_347, // p_2366->g_950
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65526UL), 65526UL), 65526UL, 1UL, 65526UL, (VECTOR(uint16_t, 2))(1UL, 65526UL), (VECTOR(uint16_t, 2))(1UL, 65526UL), 1UL, 65526UL, 1UL, 65526UL), // p_2366->g_956
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xF43BL), 0xF43BL), 0xF43BL, 65535UL, 0xF43BL, (VECTOR(uint16_t, 2))(65535UL, 0xF43BL), (VECTOR(uint16_t, 2))(65535UL, 0xF43BL), 65535UL, 0xF43BL, 65535UL, 0xF43BL), // p_2366->g_961
        (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 65528UL), 65528UL), // p_2366->g_963
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-4L)), (-4L)), (-4L), (-1L), (-4L)), // p_2366->g_967
        (-1L), // p_2366->g_979
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 2L), 2L), // p_2366->g_980
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L), // p_2366->g_1024
        (void*)0, // p_2366->g_1025
        &p_2366->g_220, // p_2366->g_1026
        (void*)0, // p_2366->g_1064
        (VECTOR(uint8_t, 4))(0x81L, (VECTOR(uint8_t, 2))(0x81L, 252UL), 252UL), // p_2366->g_1085
        &p_2366->g_347, // p_2366->g_1096
        (void*)0, // p_2366->g_1130
        0x3980CC02L, // p_2366->g_1135
        (VECTOR(uint64_t, 8))(0x7384E287CA8BECB1L, (VECTOR(uint64_t, 4))(0x7384E287CA8BECB1L, (VECTOR(uint64_t, 2))(0x7384E287CA8BECB1L, 0x1D4ED5D281AB12F6L), 0x1D4ED5D281AB12F6L), 0x1D4ED5D281AB12F6L, 0x7384E287CA8BECB1L, 0x1D4ED5D281AB12F6L), // p_2366->g_1168
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xCD3FL), 0xCD3FL), // p_2366->g_1183
        (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x54L), 0x54L), // p_2366->g_1189
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), // p_2366->g_1210
        (VECTOR(uint16_t, 8))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0x4CBCL), 0x4CBCL), 0x4CBCL, 65529UL, 0x4CBCL), // p_2366->g_1225
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 9UL), 9UL), 9UL, 65535UL, 9UL, (VECTOR(uint16_t, 2))(65535UL, 9UL), (VECTOR(uint16_t, 2))(65535UL, 9UL), 65535UL, 9UL, 65535UL, 9UL), // p_2366->g_1227
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2366->g_1246
        &p_2366->g_1246[0], // p_2366->g_1245
        0x26BC5152L, // p_2366->g_1253
        (VECTOR(int16_t, 16))(0x6107L, (VECTOR(int16_t, 4))(0x6107L, (VECTOR(int16_t, 2))(0x6107L, 0x1ADBL), 0x1ADBL), 0x1ADBL, 0x6107L, 0x1ADBL, (VECTOR(int16_t, 2))(0x6107L, 0x1ADBL), (VECTOR(int16_t, 2))(0x6107L, 0x1ADBL), 0x6107L, 0x1ADBL, 0x6107L, 0x1ADBL), // p_2366->g_1278
        (VECTOR(int8_t, 16))(0x11L, (VECTOR(int8_t, 4))(0x11L, (VECTOR(int8_t, 2))(0x11L, 0x5EL), 0x5EL), 0x5EL, 0x11L, 0x5EL, (VECTOR(int8_t, 2))(0x11L, 0x5EL), (VECTOR(int8_t, 2))(0x11L, 0x5EL), 0x11L, 0x5EL, 0x11L, 0x5EL), // p_2366->g_1284
        (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0xCB07L), 0xCB07L), // p_2366->g_1294
        (VECTOR(uint64_t, 8))(0xC352D7BBBECBCD15L, (VECTOR(uint64_t, 4))(0xC352D7BBBECBCD15L, (VECTOR(uint64_t, 2))(0xC352D7BBBECBCD15L, 8UL), 8UL), 8UL, 0xC352D7BBBECBCD15L, 8UL), // p_2366->g_1295
        0x4491F32F18B51D69L, // p_2366->g_1310
        (VECTOR(uint64_t, 16))(0xBB53246DD9473D31L, (VECTOR(uint64_t, 4))(0xBB53246DD9473D31L, (VECTOR(uint64_t, 2))(0xBB53246DD9473D31L, 0x10290F9F23B23ACAL), 0x10290F9F23B23ACAL), 0x10290F9F23B23ACAL, 0xBB53246DD9473D31L, 0x10290F9F23B23ACAL, (VECTOR(uint64_t, 2))(0xBB53246DD9473D31L, 0x10290F9F23B23ACAL), (VECTOR(uint64_t, 2))(0xBB53246DD9473D31L, 0x10290F9F23B23ACAL), 0xBB53246DD9473D31L, 0x10290F9F23B23ACAL, 0xBB53246DD9473D31L, 0x10290F9F23B23ACAL), // p_2366->g_1343
        &p_2366->g_40, // p_2366->g_1358
        &p_2366->g_1358, // p_2366->g_1357
        &p_2366->g_1357, // p_2366->g_1356
        &p_2366->g_1356, // p_2366->g_1355
        0x43E35F0FL, // p_2366->g_1359
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 250UL), 250UL), // p_2366->g_1363
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xA6A0701CL), 0xA6A0701CL), // p_2366->g_1366
        0UL, // p_2366->g_1378
        0xAA4FA548L, // p_2366->g_1386
        &p_2366->g_285[3], // p_2366->g_1388
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), // p_2366->g_1397
        0UL, // p_2366->g_1426
        0xA8B44551FBDDF5B1L, // p_2366->g_1496
        (VECTOR(uint8_t, 2))(0UL, 1UL), // p_2366->g_1519
        4L, // p_2366->g_1523
        (void*)0, // p_2366->g_1548
        &p_2366->g_285[3], // p_2366->g_1560
        (VECTOR(int8_t, 4))(0x2DL, (VECTOR(int8_t, 2))(0x2DL, 0x6DL), 0x6DL), // p_2366->g_1565
        (VECTOR(uint32_t, 4))(0x59A9775FL, (VECTOR(uint32_t, 2))(0x59A9775FL, 0xFF101046L), 0xFF101046L), // p_2366->g_1576
        {(void*)0,(void*)0,(void*)0}, // p_2366->g_1604
        &p_2366->g_1253, // p_2366->g_1605
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L), // p_2366->g_1613
        (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0xFEL), 0xFEL), // p_2366->g_1651
        (VECTOR(int64_t, 16))(5L, (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 0x6C6FF459E4E969D5L), 0x6C6FF459E4E969D5L), 0x6C6FF459E4E969D5L, 5L, 0x6C6FF459E4E969D5L, (VECTOR(int64_t, 2))(5L, 0x6C6FF459E4E969D5L), (VECTOR(int64_t, 2))(5L, 0x6C6FF459E4E969D5L), 5L, 0x6C6FF459E4E969D5L, 5L, 0x6C6FF459E4E969D5L), // p_2366->g_1678
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_2366->g_1683
        (VECTOR(int32_t, 16))(0x5BB12F2AL, (VECTOR(int32_t, 4))(0x5BB12F2AL, (VECTOR(int32_t, 2))(0x5BB12F2AL, 0x576931B8L), 0x576931B8L), 0x576931B8L, 0x5BB12F2AL, 0x576931B8L, (VECTOR(int32_t, 2))(0x5BB12F2AL, 0x576931B8L), (VECTOR(int32_t, 2))(0x5BB12F2AL, 0x576931B8L), 0x5BB12F2AL, 0x576931B8L, 0x5BB12F2AL, 0x576931B8L), // p_2366->g_1703
        &p_2366->g_347, // p_2366->g_1724
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 2L), 2L), 2L, 0L, 2L), // p_2366->g_1742
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int16_t, 2))(0L, 0L), (VECTOR(int16_t, 2))(0L, 0L), 0L, 0L, 0L, 0L), // p_2366->g_1758
        &p_2366->g_568, // p_2366->g_1810
        {{&p_2366->g_1245,&p_2366->g_1245},{&p_2366->g_1245,&p_2366->g_1245},{&p_2366->g_1245,&p_2366->g_1245},{&p_2366->g_1245,&p_2366->g_1245},{&p_2366->g_1245,&p_2366->g_1245}}, // p_2366->g_1815
        &p_2366->g_568, // p_2366->g_1819
        (VECTOR(int16_t, 16))(0x3B14L, (VECTOR(int16_t, 4))(0x3B14L, (VECTOR(int16_t, 2))(0x3B14L, 0x58E7L), 0x58E7L), 0x58E7L, 0x3B14L, 0x58E7L, (VECTOR(int16_t, 2))(0x3B14L, 0x58E7L), (VECTOR(int16_t, 2))(0x3B14L, 0x58E7L), 0x3B14L, 0x58E7L, 0x3B14L, 0x58E7L), // p_2366->g_1905
        0x2BB32BA0L, // p_2366->g_1918
        (VECTOR(uint32_t, 8))(4294967288UL, (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0xE39AE17EL), 0xE39AE17EL), 0xE39AE17EL, 4294967288UL, 0xE39AE17EL), // p_2366->g_1926
        (VECTOR(int32_t, 16))(0x55006195L, (VECTOR(int32_t, 4))(0x55006195L, (VECTOR(int32_t, 2))(0x55006195L, 0x2A236898L), 0x2A236898L), 0x2A236898L, 0x55006195L, 0x2A236898L, (VECTOR(int32_t, 2))(0x55006195L, 0x2A236898L), (VECTOR(int32_t, 2))(0x55006195L, 0x2A236898L), 0x55006195L, 0x2A236898L, 0x55006195L, 0x2A236898L), // p_2366->g_1990
        (void*)0, // p_2366->g_2012
        1L, // p_2366->g_2029
        0x21L, // p_2366->g_2039
        (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 9UL), 9UL), // p_2366->g_2050
        (VECTOR(int8_t, 16))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x3AL), 0x3AL), 0x3AL, (-10L), 0x3AL, (VECTOR(int8_t, 2))((-10L), 0x3AL), (VECTOR(int8_t, 2))((-10L), 0x3AL), (-10L), 0x3AL, (-10L), 0x3AL), // p_2366->g_2085
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-6L)), (-6L)), (-6L), (-1L), (-6L), (VECTOR(int8_t, 2))((-1L), (-6L)), (VECTOR(int8_t, 2))((-1L), (-6L)), (-1L), (-6L), (-1L), (-6L)), // p_2366->g_2086
        (VECTOR(int8_t, 16))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x60L), 0x60L), 0x60L, (-10L), 0x60L, (VECTOR(int8_t, 2))((-10L), 0x60L), (VECTOR(int8_t, 2))((-10L), 0x60L), (-10L), 0x60L, (-10L), 0x60L), // p_2366->g_2089
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x79B4L), 0x79B4L), // p_2366->g_2092
        (VECTOR(uint16_t, 2))(1UL, 65533UL), // p_2366->g_2127
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xB8L), 0xB8L), // p_2366->g_2130
        (VECTOR(uint16_t, 16))(0x7AA4L, (VECTOR(uint16_t, 4))(0x7AA4L, (VECTOR(uint16_t, 2))(0x7AA4L, 0xFE86L), 0xFE86L), 0xFE86L, 0x7AA4L, 0xFE86L, (VECTOR(uint16_t, 2))(0x7AA4L, 0xFE86L), (VECTOR(uint16_t, 2))(0x7AA4L, 0xFE86L), 0x7AA4L, 0xFE86L, 0x7AA4L, 0xFE86L), // p_2366->g_2131
        (VECTOR(uint16_t, 8))(0xAA93L, (VECTOR(uint16_t, 4))(0xAA93L, (VECTOR(uint16_t, 2))(0xAA93L, 0x0DEAL), 0x0DEAL), 0x0DEAL, 0xAA93L, 0x0DEAL), // p_2366->g_2134
        (VECTOR(uint16_t, 2))(0xD901L, 0x10E7L), // p_2366->g_2135
        &p_2366->g_347, // p_2366->g_2145
        &p_2366->g_777, // p_2366->g_2159
        (VECTOR(uint16_t, 16))(0x63F0L, (VECTOR(uint16_t, 4))(0x63F0L, (VECTOR(uint16_t, 2))(0x63F0L, 0x5F6DL), 0x5F6DL), 0x5F6DL, 0x63F0L, 0x5F6DL, (VECTOR(uint16_t, 2))(0x63F0L, 0x5F6DL), (VECTOR(uint16_t, 2))(0x63F0L, 0x5F6DL), 0x63F0L, 0x5F6DL, 0x63F0L, 0x5F6DL), // p_2366->g_2185
        (void*)0, // p_2366->g_2204
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_2366->g_2212
        &p_2366->g_1523, // p_2366->g_2222
        (VECTOR(uint8_t, 4))(0x62L, (VECTOR(uint8_t, 2))(0x62L, 0xF0L), 0xF0L), // p_2366->g_2223
        (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 2UL), 2UL), // p_2366->g_2242
        (VECTOR(uint16_t, 2))(65534UL, 65534UL), // p_2366->g_2243
        {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}}, // p_2366->g_2262
        (void*)0, // p_2366->g_2263
        (VECTOR(uint8_t, 8))(0xFAL, (VECTOR(uint8_t, 4))(0xFAL, (VECTOR(uint8_t, 2))(0xFAL, 0x77L), 0x77L), 0x77L, 0xFAL, 0x77L), // p_2366->g_2286
        (void*)0, // p_2366->g_2326
        &p_2366->g_2029, // p_2366->g_2327
        (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL), // p_2366->g_2351
        (VECTOR(int16_t, 2))(0x6CA0L, 0x7179L), // p_2366->g_2356
        sequence_input[get_global_id(0)], // p_2366->global_0_offset
        sequence_input[get_global_id(1)], // p_2366->global_1_offset
        sequence_input[get_global_id(2)], // p_2366->global_2_offset
        sequence_input[get_local_id(0)], // p_2366->local_0_offset
        sequence_input[get_local_id(1)], // p_2366->local_1_offset
        sequence_input[get_local_id(2)], // p_2366->local_2_offset
        sequence_input[get_group_id(0)], // p_2366->group_0_offset
        sequence_input[get_group_id(1)], // p_2366->group_1_offset
        sequence_input[get_group_id(2)], // p_2366->group_2_offset
    };
    c_2367 = c_2368;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2366);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2366->g_2, "p_2366->g_2", print_hash_value);
    transparent_crc(p_2366->g_11, "p_2366->g_11", print_hash_value);
    transparent_crc(p_2366->g_22.s0, "p_2366->g_22.s0", print_hash_value);
    transparent_crc(p_2366->g_22.s1, "p_2366->g_22.s1", print_hash_value);
    transparent_crc(p_2366->g_22.s2, "p_2366->g_22.s2", print_hash_value);
    transparent_crc(p_2366->g_22.s3, "p_2366->g_22.s3", print_hash_value);
    transparent_crc(p_2366->g_22.s4, "p_2366->g_22.s4", print_hash_value);
    transparent_crc(p_2366->g_22.s5, "p_2366->g_22.s5", print_hash_value);
    transparent_crc(p_2366->g_22.s6, "p_2366->g_22.s6", print_hash_value);
    transparent_crc(p_2366->g_22.s7, "p_2366->g_22.s7", print_hash_value);
    transparent_crc(p_2366->g_22.s8, "p_2366->g_22.s8", print_hash_value);
    transparent_crc(p_2366->g_22.s9, "p_2366->g_22.s9", print_hash_value);
    transparent_crc(p_2366->g_22.sa, "p_2366->g_22.sa", print_hash_value);
    transparent_crc(p_2366->g_22.sb, "p_2366->g_22.sb", print_hash_value);
    transparent_crc(p_2366->g_22.sc, "p_2366->g_22.sc", print_hash_value);
    transparent_crc(p_2366->g_22.sd, "p_2366->g_22.sd", print_hash_value);
    transparent_crc(p_2366->g_22.se, "p_2366->g_22.se", print_hash_value);
    transparent_crc(p_2366->g_22.sf, "p_2366->g_22.sf", print_hash_value);
    transparent_crc(p_2366->g_35.s0, "p_2366->g_35.s0", print_hash_value);
    transparent_crc(p_2366->g_35.s1, "p_2366->g_35.s1", print_hash_value);
    transparent_crc(p_2366->g_35.s2, "p_2366->g_35.s2", print_hash_value);
    transparent_crc(p_2366->g_35.s3, "p_2366->g_35.s3", print_hash_value);
    transparent_crc(p_2366->g_35.s4, "p_2366->g_35.s4", print_hash_value);
    transparent_crc(p_2366->g_35.s5, "p_2366->g_35.s5", print_hash_value);
    transparent_crc(p_2366->g_35.s6, "p_2366->g_35.s6", print_hash_value);
    transparent_crc(p_2366->g_35.s7, "p_2366->g_35.s7", print_hash_value);
    transparent_crc(p_2366->g_37, "p_2366->g_37", print_hash_value);
    transparent_crc(p_2366->g_40, "p_2366->g_40", print_hash_value);
    transparent_crc(p_2366->g_63, "p_2366->g_63", print_hash_value);
    transparent_crc(p_2366->g_81.x, "p_2366->g_81.x", print_hash_value);
    transparent_crc(p_2366->g_81.y, "p_2366->g_81.y", print_hash_value);
    transparent_crc(p_2366->g_82.x, "p_2366->g_82.x", print_hash_value);
    transparent_crc(p_2366->g_82.y, "p_2366->g_82.y", print_hash_value);
    transparent_crc(p_2366->g_82.z, "p_2366->g_82.z", print_hash_value);
    transparent_crc(p_2366->g_82.w, "p_2366->g_82.w", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2366->g_90[i], "p_2366->g_90[i]", print_hash_value);

    }
    transparent_crc(p_2366->g_106, "p_2366->g_106", print_hash_value);
    transparent_crc(p_2366->g_107.x, "p_2366->g_107.x", print_hash_value);
    transparent_crc(p_2366->g_107.y, "p_2366->g_107.y", print_hash_value);
    transparent_crc(p_2366->g_113, "p_2366->g_113", print_hash_value);
    transparent_crc(p_2366->g_160, "p_2366->g_160", print_hash_value);
    transparent_crc(p_2366->g_164, "p_2366->g_164", print_hash_value);
    transparent_crc(p_2366->g_220, "p_2366->g_220", print_hash_value);
    transparent_crc(p_2366->g_227, "p_2366->g_227", print_hash_value);
    transparent_crc(p_2366->g_256, "p_2366->g_256", print_hash_value);
    transparent_crc(p_2366->g_278.x, "p_2366->g_278.x", print_hash_value);
    transparent_crc(p_2366->g_278.y, "p_2366->g_278.y", print_hash_value);
    transparent_crc(p_2366->g_278.z, "p_2366->g_278.z", print_hash_value);
    transparent_crc(p_2366->g_278.w, "p_2366->g_278.w", print_hash_value);
    transparent_crc(p_2366->g_279.s0, "p_2366->g_279.s0", print_hash_value);
    transparent_crc(p_2366->g_279.s1, "p_2366->g_279.s1", print_hash_value);
    transparent_crc(p_2366->g_279.s2, "p_2366->g_279.s2", print_hash_value);
    transparent_crc(p_2366->g_279.s3, "p_2366->g_279.s3", print_hash_value);
    transparent_crc(p_2366->g_279.s4, "p_2366->g_279.s4", print_hash_value);
    transparent_crc(p_2366->g_279.s5, "p_2366->g_279.s5", print_hash_value);
    transparent_crc(p_2366->g_279.s6, "p_2366->g_279.s6", print_hash_value);
    transparent_crc(p_2366->g_279.s7, "p_2366->g_279.s7", print_hash_value);
    transparent_crc(p_2366->g_279.s8, "p_2366->g_279.s8", print_hash_value);
    transparent_crc(p_2366->g_279.s9, "p_2366->g_279.s9", print_hash_value);
    transparent_crc(p_2366->g_279.sa, "p_2366->g_279.sa", print_hash_value);
    transparent_crc(p_2366->g_279.sb, "p_2366->g_279.sb", print_hash_value);
    transparent_crc(p_2366->g_279.sc, "p_2366->g_279.sc", print_hash_value);
    transparent_crc(p_2366->g_279.sd, "p_2366->g_279.sd", print_hash_value);
    transparent_crc(p_2366->g_279.se, "p_2366->g_279.se", print_hash_value);
    transparent_crc(p_2366->g_279.sf, "p_2366->g_279.sf", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_2366->g_283[i][j][k], "p_2366->g_283[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2366->g_285[i], "p_2366->g_285[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2366->g_289[i], "p_2366->g_289[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2366->g_300[i], "p_2366->g_300[i]", print_hash_value);

    }
    transparent_crc(p_2366->g_335.s0, "p_2366->g_335.s0", print_hash_value);
    transparent_crc(p_2366->g_335.s1, "p_2366->g_335.s1", print_hash_value);
    transparent_crc(p_2366->g_335.s2, "p_2366->g_335.s2", print_hash_value);
    transparent_crc(p_2366->g_335.s3, "p_2366->g_335.s3", print_hash_value);
    transparent_crc(p_2366->g_335.s4, "p_2366->g_335.s4", print_hash_value);
    transparent_crc(p_2366->g_335.s5, "p_2366->g_335.s5", print_hash_value);
    transparent_crc(p_2366->g_335.s6, "p_2366->g_335.s6", print_hash_value);
    transparent_crc(p_2366->g_335.s7, "p_2366->g_335.s7", print_hash_value);
    transparent_crc(p_2366->g_372.x, "p_2366->g_372.x", print_hash_value);
    transparent_crc(p_2366->g_372.y, "p_2366->g_372.y", print_hash_value);
    transparent_crc(p_2366->g_372.z, "p_2366->g_372.z", print_hash_value);
    transparent_crc(p_2366->g_372.w, "p_2366->g_372.w", print_hash_value);
    transparent_crc(p_2366->g_386.s0, "p_2366->g_386.s0", print_hash_value);
    transparent_crc(p_2366->g_386.s1, "p_2366->g_386.s1", print_hash_value);
    transparent_crc(p_2366->g_386.s2, "p_2366->g_386.s2", print_hash_value);
    transparent_crc(p_2366->g_386.s3, "p_2366->g_386.s3", print_hash_value);
    transparent_crc(p_2366->g_386.s4, "p_2366->g_386.s4", print_hash_value);
    transparent_crc(p_2366->g_386.s5, "p_2366->g_386.s5", print_hash_value);
    transparent_crc(p_2366->g_386.s6, "p_2366->g_386.s6", print_hash_value);
    transparent_crc(p_2366->g_386.s7, "p_2366->g_386.s7", print_hash_value);
    transparent_crc(p_2366->g_386.s8, "p_2366->g_386.s8", print_hash_value);
    transparent_crc(p_2366->g_386.s9, "p_2366->g_386.s9", print_hash_value);
    transparent_crc(p_2366->g_386.sa, "p_2366->g_386.sa", print_hash_value);
    transparent_crc(p_2366->g_386.sb, "p_2366->g_386.sb", print_hash_value);
    transparent_crc(p_2366->g_386.sc, "p_2366->g_386.sc", print_hash_value);
    transparent_crc(p_2366->g_386.sd, "p_2366->g_386.sd", print_hash_value);
    transparent_crc(p_2366->g_386.se, "p_2366->g_386.se", print_hash_value);
    transparent_crc(p_2366->g_386.sf, "p_2366->g_386.sf", print_hash_value);
    transparent_crc(p_2366->g_414.s0, "p_2366->g_414.s0", print_hash_value);
    transparent_crc(p_2366->g_414.s1, "p_2366->g_414.s1", print_hash_value);
    transparent_crc(p_2366->g_414.s2, "p_2366->g_414.s2", print_hash_value);
    transparent_crc(p_2366->g_414.s3, "p_2366->g_414.s3", print_hash_value);
    transparent_crc(p_2366->g_414.s4, "p_2366->g_414.s4", print_hash_value);
    transparent_crc(p_2366->g_414.s5, "p_2366->g_414.s5", print_hash_value);
    transparent_crc(p_2366->g_414.s6, "p_2366->g_414.s6", print_hash_value);
    transparent_crc(p_2366->g_414.s7, "p_2366->g_414.s7", print_hash_value);
    transparent_crc(p_2366->g_414.s8, "p_2366->g_414.s8", print_hash_value);
    transparent_crc(p_2366->g_414.s9, "p_2366->g_414.s9", print_hash_value);
    transparent_crc(p_2366->g_414.sa, "p_2366->g_414.sa", print_hash_value);
    transparent_crc(p_2366->g_414.sb, "p_2366->g_414.sb", print_hash_value);
    transparent_crc(p_2366->g_414.sc, "p_2366->g_414.sc", print_hash_value);
    transparent_crc(p_2366->g_414.sd, "p_2366->g_414.sd", print_hash_value);
    transparent_crc(p_2366->g_414.se, "p_2366->g_414.se", print_hash_value);
    transparent_crc(p_2366->g_414.sf, "p_2366->g_414.sf", print_hash_value);
    transparent_crc(p_2366->g_447.x, "p_2366->g_447.x", print_hash_value);
    transparent_crc(p_2366->g_447.y, "p_2366->g_447.y", print_hash_value);
    transparent_crc(p_2366->g_448.x, "p_2366->g_448.x", print_hash_value);
    transparent_crc(p_2366->g_448.y, "p_2366->g_448.y", print_hash_value);
    transparent_crc(p_2366->g_448.z, "p_2366->g_448.z", print_hash_value);
    transparent_crc(p_2366->g_448.w, "p_2366->g_448.w", print_hash_value);
    transparent_crc(p_2366->g_449.x, "p_2366->g_449.x", print_hash_value);
    transparent_crc(p_2366->g_449.y, "p_2366->g_449.y", print_hash_value);
    transparent_crc(p_2366->g_450.x, "p_2366->g_450.x", print_hash_value);
    transparent_crc(p_2366->g_450.y, "p_2366->g_450.y", print_hash_value);
    transparent_crc(p_2366->g_450.z, "p_2366->g_450.z", print_hash_value);
    transparent_crc(p_2366->g_450.w, "p_2366->g_450.w", print_hash_value);
    transparent_crc(p_2366->g_455.s0, "p_2366->g_455.s0", print_hash_value);
    transparent_crc(p_2366->g_455.s1, "p_2366->g_455.s1", print_hash_value);
    transparent_crc(p_2366->g_455.s2, "p_2366->g_455.s2", print_hash_value);
    transparent_crc(p_2366->g_455.s3, "p_2366->g_455.s3", print_hash_value);
    transparent_crc(p_2366->g_455.s4, "p_2366->g_455.s4", print_hash_value);
    transparent_crc(p_2366->g_455.s5, "p_2366->g_455.s5", print_hash_value);
    transparent_crc(p_2366->g_455.s6, "p_2366->g_455.s6", print_hash_value);
    transparent_crc(p_2366->g_455.s7, "p_2366->g_455.s7", print_hash_value);
    transparent_crc(p_2366->g_486, "p_2366->g_486", print_hash_value);
    transparent_crc(p_2366->g_543.s0, "p_2366->g_543.s0", print_hash_value);
    transparent_crc(p_2366->g_543.s1, "p_2366->g_543.s1", print_hash_value);
    transparent_crc(p_2366->g_543.s2, "p_2366->g_543.s2", print_hash_value);
    transparent_crc(p_2366->g_543.s3, "p_2366->g_543.s3", print_hash_value);
    transparent_crc(p_2366->g_543.s4, "p_2366->g_543.s4", print_hash_value);
    transparent_crc(p_2366->g_543.s5, "p_2366->g_543.s5", print_hash_value);
    transparent_crc(p_2366->g_543.s6, "p_2366->g_543.s6", print_hash_value);
    transparent_crc(p_2366->g_543.s7, "p_2366->g_543.s7", print_hash_value);
    transparent_crc(p_2366->g_596.s0, "p_2366->g_596.s0", print_hash_value);
    transparent_crc(p_2366->g_596.s1, "p_2366->g_596.s1", print_hash_value);
    transparent_crc(p_2366->g_596.s2, "p_2366->g_596.s2", print_hash_value);
    transparent_crc(p_2366->g_596.s3, "p_2366->g_596.s3", print_hash_value);
    transparent_crc(p_2366->g_596.s4, "p_2366->g_596.s4", print_hash_value);
    transparent_crc(p_2366->g_596.s5, "p_2366->g_596.s5", print_hash_value);
    transparent_crc(p_2366->g_596.s6, "p_2366->g_596.s6", print_hash_value);
    transparent_crc(p_2366->g_596.s7, "p_2366->g_596.s7", print_hash_value);
    transparent_crc(p_2366->g_597.x, "p_2366->g_597.x", print_hash_value);
    transparent_crc(p_2366->g_597.y, "p_2366->g_597.y", print_hash_value);
    transparent_crc(p_2366->g_600.s0, "p_2366->g_600.s0", print_hash_value);
    transparent_crc(p_2366->g_600.s1, "p_2366->g_600.s1", print_hash_value);
    transparent_crc(p_2366->g_600.s2, "p_2366->g_600.s2", print_hash_value);
    transparent_crc(p_2366->g_600.s3, "p_2366->g_600.s3", print_hash_value);
    transparent_crc(p_2366->g_600.s4, "p_2366->g_600.s4", print_hash_value);
    transparent_crc(p_2366->g_600.s5, "p_2366->g_600.s5", print_hash_value);
    transparent_crc(p_2366->g_600.s6, "p_2366->g_600.s6", print_hash_value);
    transparent_crc(p_2366->g_600.s7, "p_2366->g_600.s7", print_hash_value);
    transparent_crc(p_2366->g_603.x, "p_2366->g_603.x", print_hash_value);
    transparent_crc(p_2366->g_603.y, "p_2366->g_603.y", print_hash_value);
    transparent_crc(p_2366->g_603.z, "p_2366->g_603.z", print_hash_value);
    transparent_crc(p_2366->g_603.w, "p_2366->g_603.w", print_hash_value);
    transparent_crc(p_2366->g_604.s0, "p_2366->g_604.s0", print_hash_value);
    transparent_crc(p_2366->g_604.s1, "p_2366->g_604.s1", print_hash_value);
    transparent_crc(p_2366->g_604.s2, "p_2366->g_604.s2", print_hash_value);
    transparent_crc(p_2366->g_604.s3, "p_2366->g_604.s3", print_hash_value);
    transparent_crc(p_2366->g_604.s4, "p_2366->g_604.s4", print_hash_value);
    transparent_crc(p_2366->g_604.s5, "p_2366->g_604.s5", print_hash_value);
    transparent_crc(p_2366->g_604.s6, "p_2366->g_604.s6", print_hash_value);
    transparent_crc(p_2366->g_604.s7, "p_2366->g_604.s7", print_hash_value);
    transparent_crc(p_2366->g_635.x, "p_2366->g_635.x", print_hash_value);
    transparent_crc(p_2366->g_635.y, "p_2366->g_635.y", print_hash_value);
    transparent_crc(p_2366->g_651.x, "p_2366->g_651.x", print_hash_value);
    transparent_crc(p_2366->g_651.y, "p_2366->g_651.y", print_hash_value);
    transparent_crc(p_2366->g_651.z, "p_2366->g_651.z", print_hash_value);
    transparent_crc(p_2366->g_651.w, "p_2366->g_651.w", print_hash_value);
    transparent_crc(p_2366->g_689, "p_2366->g_689", print_hash_value);
    transparent_crc(p_2366->g_773.x, "p_2366->g_773.x", print_hash_value);
    transparent_crc(p_2366->g_773.y, "p_2366->g_773.y", print_hash_value);
    transparent_crc(p_2366->g_773.z, "p_2366->g_773.z", print_hash_value);
    transparent_crc(p_2366->g_773.w, "p_2366->g_773.w", print_hash_value);
    transparent_crc(p_2366->g_920.x, "p_2366->g_920.x", print_hash_value);
    transparent_crc(p_2366->g_920.y, "p_2366->g_920.y", print_hash_value);
    transparent_crc(p_2366->g_924.x, "p_2366->g_924.x", print_hash_value);
    transparent_crc(p_2366->g_924.y, "p_2366->g_924.y", print_hash_value);
    transparent_crc(p_2366->g_956.s0, "p_2366->g_956.s0", print_hash_value);
    transparent_crc(p_2366->g_956.s1, "p_2366->g_956.s1", print_hash_value);
    transparent_crc(p_2366->g_956.s2, "p_2366->g_956.s2", print_hash_value);
    transparent_crc(p_2366->g_956.s3, "p_2366->g_956.s3", print_hash_value);
    transparent_crc(p_2366->g_956.s4, "p_2366->g_956.s4", print_hash_value);
    transparent_crc(p_2366->g_956.s5, "p_2366->g_956.s5", print_hash_value);
    transparent_crc(p_2366->g_956.s6, "p_2366->g_956.s6", print_hash_value);
    transparent_crc(p_2366->g_956.s7, "p_2366->g_956.s7", print_hash_value);
    transparent_crc(p_2366->g_956.s8, "p_2366->g_956.s8", print_hash_value);
    transparent_crc(p_2366->g_956.s9, "p_2366->g_956.s9", print_hash_value);
    transparent_crc(p_2366->g_956.sa, "p_2366->g_956.sa", print_hash_value);
    transparent_crc(p_2366->g_956.sb, "p_2366->g_956.sb", print_hash_value);
    transparent_crc(p_2366->g_956.sc, "p_2366->g_956.sc", print_hash_value);
    transparent_crc(p_2366->g_956.sd, "p_2366->g_956.sd", print_hash_value);
    transparent_crc(p_2366->g_956.se, "p_2366->g_956.se", print_hash_value);
    transparent_crc(p_2366->g_956.sf, "p_2366->g_956.sf", print_hash_value);
    transparent_crc(p_2366->g_961.s0, "p_2366->g_961.s0", print_hash_value);
    transparent_crc(p_2366->g_961.s1, "p_2366->g_961.s1", print_hash_value);
    transparent_crc(p_2366->g_961.s2, "p_2366->g_961.s2", print_hash_value);
    transparent_crc(p_2366->g_961.s3, "p_2366->g_961.s3", print_hash_value);
    transparent_crc(p_2366->g_961.s4, "p_2366->g_961.s4", print_hash_value);
    transparent_crc(p_2366->g_961.s5, "p_2366->g_961.s5", print_hash_value);
    transparent_crc(p_2366->g_961.s6, "p_2366->g_961.s6", print_hash_value);
    transparent_crc(p_2366->g_961.s7, "p_2366->g_961.s7", print_hash_value);
    transparent_crc(p_2366->g_961.s8, "p_2366->g_961.s8", print_hash_value);
    transparent_crc(p_2366->g_961.s9, "p_2366->g_961.s9", print_hash_value);
    transparent_crc(p_2366->g_961.sa, "p_2366->g_961.sa", print_hash_value);
    transparent_crc(p_2366->g_961.sb, "p_2366->g_961.sb", print_hash_value);
    transparent_crc(p_2366->g_961.sc, "p_2366->g_961.sc", print_hash_value);
    transparent_crc(p_2366->g_961.sd, "p_2366->g_961.sd", print_hash_value);
    transparent_crc(p_2366->g_961.se, "p_2366->g_961.se", print_hash_value);
    transparent_crc(p_2366->g_961.sf, "p_2366->g_961.sf", print_hash_value);
    transparent_crc(p_2366->g_963.x, "p_2366->g_963.x", print_hash_value);
    transparent_crc(p_2366->g_963.y, "p_2366->g_963.y", print_hash_value);
    transparent_crc(p_2366->g_963.z, "p_2366->g_963.z", print_hash_value);
    transparent_crc(p_2366->g_963.w, "p_2366->g_963.w", print_hash_value);
    transparent_crc(p_2366->g_967.s0, "p_2366->g_967.s0", print_hash_value);
    transparent_crc(p_2366->g_967.s1, "p_2366->g_967.s1", print_hash_value);
    transparent_crc(p_2366->g_967.s2, "p_2366->g_967.s2", print_hash_value);
    transparent_crc(p_2366->g_967.s3, "p_2366->g_967.s3", print_hash_value);
    transparent_crc(p_2366->g_967.s4, "p_2366->g_967.s4", print_hash_value);
    transparent_crc(p_2366->g_967.s5, "p_2366->g_967.s5", print_hash_value);
    transparent_crc(p_2366->g_967.s6, "p_2366->g_967.s6", print_hash_value);
    transparent_crc(p_2366->g_967.s7, "p_2366->g_967.s7", print_hash_value);
    transparent_crc(p_2366->g_979, "p_2366->g_979", print_hash_value);
    transparent_crc(p_2366->g_980.x, "p_2366->g_980.x", print_hash_value);
    transparent_crc(p_2366->g_980.y, "p_2366->g_980.y", print_hash_value);
    transparent_crc(p_2366->g_980.z, "p_2366->g_980.z", print_hash_value);
    transparent_crc(p_2366->g_980.w, "p_2366->g_980.w", print_hash_value);
    transparent_crc(p_2366->g_1024.s0, "p_2366->g_1024.s0", print_hash_value);
    transparent_crc(p_2366->g_1024.s1, "p_2366->g_1024.s1", print_hash_value);
    transparent_crc(p_2366->g_1024.s2, "p_2366->g_1024.s2", print_hash_value);
    transparent_crc(p_2366->g_1024.s3, "p_2366->g_1024.s3", print_hash_value);
    transparent_crc(p_2366->g_1024.s4, "p_2366->g_1024.s4", print_hash_value);
    transparent_crc(p_2366->g_1024.s5, "p_2366->g_1024.s5", print_hash_value);
    transparent_crc(p_2366->g_1024.s6, "p_2366->g_1024.s6", print_hash_value);
    transparent_crc(p_2366->g_1024.s7, "p_2366->g_1024.s7", print_hash_value);
    transparent_crc(p_2366->g_1024.s8, "p_2366->g_1024.s8", print_hash_value);
    transparent_crc(p_2366->g_1024.s9, "p_2366->g_1024.s9", print_hash_value);
    transparent_crc(p_2366->g_1024.sa, "p_2366->g_1024.sa", print_hash_value);
    transparent_crc(p_2366->g_1024.sb, "p_2366->g_1024.sb", print_hash_value);
    transparent_crc(p_2366->g_1024.sc, "p_2366->g_1024.sc", print_hash_value);
    transparent_crc(p_2366->g_1024.sd, "p_2366->g_1024.sd", print_hash_value);
    transparent_crc(p_2366->g_1024.se, "p_2366->g_1024.se", print_hash_value);
    transparent_crc(p_2366->g_1024.sf, "p_2366->g_1024.sf", print_hash_value);
    transparent_crc(p_2366->g_1085.x, "p_2366->g_1085.x", print_hash_value);
    transparent_crc(p_2366->g_1085.y, "p_2366->g_1085.y", print_hash_value);
    transparent_crc(p_2366->g_1085.z, "p_2366->g_1085.z", print_hash_value);
    transparent_crc(p_2366->g_1085.w, "p_2366->g_1085.w", print_hash_value);
    transparent_crc(p_2366->g_1135, "p_2366->g_1135", print_hash_value);
    transparent_crc(p_2366->g_1168.s0, "p_2366->g_1168.s0", print_hash_value);
    transparent_crc(p_2366->g_1168.s1, "p_2366->g_1168.s1", print_hash_value);
    transparent_crc(p_2366->g_1168.s2, "p_2366->g_1168.s2", print_hash_value);
    transparent_crc(p_2366->g_1168.s3, "p_2366->g_1168.s3", print_hash_value);
    transparent_crc(p_2366->g_1168.s4, "p_2366->g_1168.s4", print_hash_value);
    transparent_crc(p_2366->g_1168.s5, "p_2366->g_1168.s5", print_hash_value);
    transparent_crc(p_2366->g_1168.s6, "p_2366->g_1168.s6", print_hash_value);
    transparent_crc(p_2366->g_1168.s7, "p_2366->g_1168.s7", print_hash_value);
    transparent_crc(p_2366->g_1183.x, "p_2366->g_1183.x", print_hash_value);
    transparent_crc(p_2366->g_1183.y, "p_2366->g_1183.y", print_hash_value);
    transparent_crc(p_2366->g_1183.z, "p_2366->g_1183.z", print_hash_value);
    transparent_crc(p_2366->g_1183.w, "p_2366->g_1183.w", print_hash_value);
    transparent_crc(p_2366->g_1189.x, "p_2366->g_1189.x", print_hash_value);
    transparent_crc(p_2366->g_1189.y, "p_2366->g_1189.y", print_hash_value);
    transparent_crc(p_2366->g_1189.z, "p_2366->g_1189.z", print_hash_value);
    transparent_crc(p_2366->g_1189.w, "p_2366->g_1189.w", print_hash_value);
    transparent_crc(p_2366->g_1210.x, "p_2366->g_1210.x", print_hash_value);
    transparent_crc(p_2366->g_1210.y, "p_2366->g_1210.y", print_hash_value);
    transparent_crc(p_2366->g_1210.z, "p_2366->g_1210.z", print_hash_value);
    transparent_crc(p_2366->g_1210.w, "p_2366->g_1210.w", print_hash_value);
    transparent_crc(p_2366->g_1225.s0, "p_2366->g_1225.s0", print_hash_value);
    transparent_crc(p_2366->g_1225.s1, "p_2366->g_1225.s1", print_hash_value);
    transparent_crc(p_2366->g_1225.s2, "p_2366->g_1225.s2", print_hash_value);
    transparent_crc(p_2366->g_1225.s3, "p_2366->g_1225.s3", print_hash_value);
    transparent_crc(p_2366->g_1225.s4, "p_2366->g_1225.s4", print_hash_value);
    transparent_crc(p_2366->g_1225.s5, "p_2366->g_1225.s5", print_hash_value);
    transparent_crc(p_2366->g_1225.s6, "p_2366->g_1225.s6", print_hash_value);
    transparent_crc(p_2366->g_1225.s7, "p_2366->g_1225.s7", print_hash_value);
    transparent_crc(p_2366->g_1227.s0, "p_2366->g_1227.s0", print_hash_value);
    transparent_crc(p_2366->g_1227.s1, "p_2366->g_1227.s1", print_hash_value);
    transparent_crc(p_2366->g_1227.s2, "p_2366->g_1227.s2", print_hash_value);
    transparent_crc(p_2366->g_1227.s3, "p_2366->g_1227.s3", print_hash_value);
    transparent_crc(p_2366->g_1227.s4, "p_2366->g_1227.s4", print_hash_value);
    transparent_crc(p_2366->g_1227.s5, "p_2366->g_1227.s5", print_hash_value);
    transparent_crc(p_2366->g_1227.s6, "p_2366->g_1227.s6", print_hash_value);
    transparent_crc(p_2366->g_1227.s7, "p_2366->g_1227.s7", print_hash_value);
    transparent_crc(p_2366->g_1227.s8, "p_2366->g_1227.s8", print_hash_value);
    transparent_crc(p_2366->g_1227.s9, "p_2366->g_1227.s9", print_hash_value);
    transparent_crc(p_2366->g_1227.sa, "p_2366->g_1227.sa", print_hash_value);
    transparent_crc(p_2366->g_1227.sb, "p_2366->g_1227.sb", print_hash_value);
    transparent_crc(p_2366->g_1227.sc, "p_2366->g_1227.sc", print_hash_value);
    transparent_crc(p_2366->g_1227.sd, "p_2366->g_1227.sd", print_hash_value);
    transparent_crc(p_2366->g_1227.se, "p_2366->g_1227.se", print_hash_value);
    transparent_crc(p_2366->g_1227.sf, "p_2366->g_1227.sf", print_hash_value);
    transparent_crc(p_2366->g_1253, "p_2366->g_1253", print_hash_value);
    transparent_crc(p_2366->g_1278.s0, "p_2366->g_1278.s0", print_hash_value);
    transparent_crc(p_2366->g_1278.s1, "p_2366->g_1278.s1", print_hash_value);
    transparent_crc(p_2366->g_1278.s2, "p_2366->g_1278.s2", print_hash_value);
    transparent_crc(p_2366->g_1278.s3, "p_2366->g_1278.s3", print_hash_value);
    transparent_crc(p_2366->g_1278.s4, "p_2366->g_1278.s4", print_hash_value);
    transparent_crc(p_2366->g_1278.s5, "p_2366->g_1278.s5", print_hash_value);
    transparent_crc(p_2366->g_1278.s6, "p_2366->g_1278.s6", print_hash_value);
    transparent_crc(p_2366->g_1278.s7, "p_2366->g_1278.s7", print_hash_value);
    transparent_crc(p_2366->g_1278.s8, "p_2366->g_1278.s8", print_hash_value);
    transparent_crc(p_2366->g_1278.s9, "p_2366->g_1278.s9", print_hash_value);
    transparent_crc(p_2366->g_1278.sa, "p_2366->g_1278.sa", print_hash_value);
    transparent_crc(p_2366->g_1278.sb, "p_2366->g_1278.sb", print_hash_value);
    transparent_crc(p_2366->g_1278.sc, "p_2366->g_1278.sc", print_hash_value);
    transparent_crc(p_2366->g_1278.sd, "p_2366->g_1278.sd", print_hash_value);
    transparent_crc(p_2366->g_1278.se, "p_2366->g_1278.se", print_hash_value);
    transparent_crc(p_2366->g_1278.sf, "p_2366->g_1278.sf", print_hash_value);
    transparent_crc(p_2366->g_1284.s0, "p_2366->g_1284.s0", print_hash_value);
    transparent_crc(p_2366->g_1284.s1, "p_2366->g_1284.s1", print_hash_value);
    transparent_crc(p_2366->g_1284.s2, "p_2366->g_1284.s2", print_hash_value);
    transparent_crc(p_2366->g_1284.s3, "p_2366->g_1284.s3", print_hash_value);
    transparent_crc(p_2366->g_1284.s4, "p_2366->g_1284.s4", print_hash_value);
    transparent_crc(p_2366->g_1284.s5, "p_2366->g_1284.s5", print_hash_value);
    transparent_crc(p_2366->g_1284.s6, "p_2366->g_1284.s6", print_hash_value);
    transparent_crc(p_2366->g_1284.s7, "p_2366->g_1284.s7", print_hash_value);
    transparent_crc(p_2366->g_1284.s8, "p_2366->g_1284.s8", print_hash_value);
    transparent_crc(p_2366->g_1284.s9, "p_2366->g_1284.s9", print_hash_value);
    transparent_crc(p_2366->g_1284.sa, "p_2366->g_1284.sa", print_hash_value);
    transparent_crc(p_2366->g_1284.sb, "p_2366->g_1284.sb", print_hash_value);
    transparent_crc(p_2366->g_1284.sc, "p_2366->g_1284.sc", print_hash_value);
    transparent_crc(p_2366->g_1284.sd, "p_2366->g_1284.sd", print_hash_value);
    transparent_crc(p_2366->g_1284.se, "p_2366->g_1284.se", print_hash_value);
    transparent_crc(p_2366->g_1284.sf, "p_2366->g_1284.sf", print_hash_value);
    transparent_crc(p_2366->g_1294.x, "p_2366->g_1294.x", print_hash_value);
    transparent_crc(p_2366->g_1294.y, "p_2366->g_1294.y", print_hash_value);
    transparent_crc(p_2366->g_1294.z, "p_2366->g_1294.z", print_hash_value);
    transparent_crc(p_2366->g_1294.w, "p_2366->g_1294.w", print_hash_value);
    transparent_crc(p_2366->g_1295.s0, "p_2366->g_1295.s0", print_hash_value);
    transparent_crc(p_2366->g_1295.s1, "p_2366->g_1295.s1", print_hash_value);
    transparent_crc(p_2366->g_1295.s2, "p_2366->g_1295.s2", print_hash_value);
    transparent_crc(p_2366->g_1295.s3, "p_2366->g_1295.s3", print_hash_value);
    transparent_crc(p_2366->g_1295.s4, "p_2366->g_1295.s4", print_hash_value);
    transparent_crc(p_2366->g_1295.s5, "p_2366->g_1295.s5", print_hash_value);
    transparent_crc(p_2366->g_1295.s6, "p_2366->g_1295.s6", print_hash_value);
    transparent_crc(p_2366->g_1295.s7, "p_2366->g_1295.s7", print_hash_value);
    transparent_crc(p_2366->g_1310, "p_2366->g_1310", print_hash_value);
    transparent_crc(p_2366->g_1343.s0, "p_2366->g_1343.s0", print_hash_value);
    transparent_crc(p_2366->g_1343.s1, "p_2366->g_1343.s1", print_hash_value);
    transparent_crc(p_2366->g_1343.s2, "p_2366->g_1343.s2", print_hash_value);
    transparent_crc(p_2366->g_1343.s3, "p_2366->g_1343.s3", print_hash_value);
    transparent_crc(p_2366->g_1343.s4, "p_2366->g_1343.s4", print_hash_value);
    transparent_crc(p_2366->g_1343.s5, "p_2366->g_1343.s5", print_hash_value);
    transparent_crc(p_2366->g_1343.s6, "p_2366->g_1343.s6", print_hash_value);
    transparent_crc(p_2366->g_1343.s7, "p_2366->g_1343.s7", print_hash_value);
    transparent_crc(p_2366->g_1343.s8, "p_2366->g_1343.s8", print_hash_value);
    transparent_crc(p_2366->g_1343.s9, "p_2366->g_1343.s9", print_hash_value);
    transparent_crc(p_2366->g_1343.sa, "p_2366->g_1343.sa", print_hash_value);
    transparent_crc(p_2366->g_1343.sb, "p_2366->g_1343.sb", print_hash_value);
    transparent_crc(p_2366->g_1343.sc, "p_2366->g_1343.sc", print_hash_value);
    transparent_crc(p_2366->g_1343.sd, "p_2366->g_1343.sd", print_hash_value);
    transparent_crc(p_2366->g_1343.se, "p_2366->g_1343.se", print_hash_value);
    transparent_crc(p_2366->g_1343.sf, "p_2366->g_1343.sf", print_hash_value);
    transparent_crc(p_2366->g_1359, "p_2366->g_1359", print_hash_value);
    transparent_crc(p_2366->g_1363.x, "p_2366->g_1363.x", print_hash_value);
    transparent_crc(p_2366->g_1363.y, "p_2366->g_1363.y", print_hash_value);
    transparent_crc(p_2366->g_1363.z, "p_2366->g_1363.z", print_hash_value);
    transparent_crc(p_2366->g_1363.w, "p_2366->g_1363.w", print_hash_value);
    transparent_crc(p_2366->g_1366.x, "p_2366->g_1366.x", print_hash_value);
    transparent_crc(p_2366->g_1366.y, "p_2366->g_1366.y", print_hash_value);
    transparent_crc(p_2366->g_1366.z, "p_2366->g_1366.z", print_hash_value);
    transparent_crc(p_2366->g_1366.w, "p_2366->g_1366.w", print_hash_value);
    transparent_crc(p_2366->g_1378, "p_2366->g_1378", print_hash_value);
    transparent_crc(p_2366->g_1386, "p_2366->g_1386", print_hash_value);
    transparent_crc(p_2366->g_1397.x, "p_2366->g_1397.x", print_hash_value);
    transparent_crc(p_2366->g_1397.y, "p_2366->g_1397.y", print_hash_value);
    transparent_crc(p_2366->g_1397.z, "p_2366->g_1397.z", print_hash_value);
    transparent_crc(p_2366->g_1397.w, "p_2366->g_1397.w", print_hash_value);
    transparent_crc(p_2366->g_1426, "p_2366->g_1426", print_hash_value);
    transparent_crc(p_2366->g_1496, "p_2366->g_1496", print_hash_value);
    transparent_crc(p_2366->g_1519.x, "p_2366->g_1519.x", print_hash_value);
    transparent_crc(p_2366->g_1519.y, "p_2366->g_1519.y", print_hash_value);
    transparent_crc(p_2366->g_1523, "p_2366->g_1523", print_hash_value);
    transparent_crc(p_2366->g_1565.x, "p_2366->g_1565.x", print_hash_value);
    transparent_crc(p_2366->g_1565.y, "p_2366->g_1565.y", print_hash_value);
    transparent_crc(p_2366->g_1565.z, "p_2366->g_1565.z", print_hash_value);
    transparent_crc(p_2366->g_1565.w, "p_2366->g_1565.w", print_hash_value);
    transparent_crc(p_2366->g_1576.x, "p_2366->g_1576.x", print_hash_value);
    transparent_crc(p_2366->g_1576.y, "p_2366->g_1576.y", print_hash_value);
    transparent_crc(p_2366->g_1576.z, "p_2366->g_1576.z", print_hash_value);
    transparent_crc(p_2366->g_1576.w, "p_2366->g_1576.w", print_hash_value);
    transparent_crc(p_2366->g_1613.s0, "p_2366->g_1613.s0", print_hash_value);
    transparent_crc(p_2366->g_1613.s1, "p_2366->g_1613.s1", print_hash_value);
    transparent_crc(p_2366->g_1613.s2, "p_2366->g_1613.s2", print_hash_value);
    transparent_crc(p_2366->g_1613.s3, "p_2366->g_1613.s3", print_hash_value);
    transparent_crc(p_2366->g_1613.s4, "p_2366->g_1613.s4", print_hash_value);
    transparent_crc(p_2366->g_1613.s5, "p_2366->g_1613.s5", print_hash_value);
    transparent_crc(p_2366->g_1613.s6, "p_2366->g_1613.s6", print_hash_value);
    transparent_crc(p_2366->g_1613.s7, "p_2366->g_1613.s7", print_hash_value);
    transparent_crc(p_2366->g_1651.x, "p_2366->g_1651.x", print_hash_value);
    transparent_crc(p_2366->g_1651.y, "p_2366->g_1651.y", print_hash_value);
    transparent_crc(p_2366->g_1651.z, "p_2366->g_1651.z", print_hash_value);
    transparent_crc(p_2366->g_1651.w, "p_2366->g_1651.w", print_hash_value);
    transparent_crc(p_2366->g_1678.s0, "p_2366->g_1678.s0", print_hash_value);
    transparent_crc(p_2366->g_1678.s1, "p_2366->g_1678.s1", print_hash_value);
    transparent_crc(p_2366->g_1678.s2, "p_2366->g_1678.s2", print_hash_value);
    transparent_crc(p_2366->g_1678.s3, "p_2366->g_1678.s3", print_hash_value);
    transparent_crc(p_2366->g_1678.s4, "p_2366->g_1678.s4", print_hash_value);
    transparent_crc(p_2366->g_1678.s5, "p_2366->g_1678.s5", print_hash_value);
    transparent_crc(p_2366->g_1678.s6, "p_2366->g_1678.s6", print_hash_value);
    transparent_crc(p_2366->g_1678.s7, "p_2366->g_1678.s7", print_hash_value);
    transparent_crc(p_2366->g_1678.s8, "p_2366->g_1678.s8", print_hash_value);
    transparent_crc(p_2366->g_1678.s9, "p_2366->g_1678.s9", print_hash_value);
    transparent_crc(p_2366->g_1678.sa, "p_2366->g_1678.sa", print_hash_value);
    transparent_crc(p_2366->g_1678.sb, "p_2366->g_1678.sb", print_hash_value);
    transparent_crc(p_2366->g_1678.sc, "p_2366->g_1678.sc", print_hash_value);
    transparent_crc(p_2366->g_1678.sd, "p_2366->g_1678.sd", print_hash_value);
    transparent_crc(p_2366->g_1678.se, "p_2366->g_1678.se", print_hash_value);
    transparent_crc(p_2366->g_1678.sf, "p_2366->g_1678.sf", print_hash_value);
    transparent_crc(p_2366->g_1683.s0, "p_2366->g_1683.s0", print_hash_value);
    transparent_crc(p_2366->g_1683.s1, "p_2366->g_1683.s1", print_hash_value);
    transparent_crc(p_2366->g_1683.s2, "p_2366->g_1683.s2", print_hash_value);
    transparent_crc(p_2366->g_1683.s3, "p_2366->g_1683.s3", print_hash_value);
    transparent_crc(p_2366->g_1683.s4, "p_2366->g_1683.s4", print_hash_value);
    transparent_crc(p_2366->g_1683.s5, "p_2366->g_1683.s5", print_hash_value);
    transparent_crc(p_2366->g_1683.s6, "p_2366->g_1683.s6", print_hash_value);
    transparent_crc(p_2366->g_1683.s7, "p_2366->g_1683.s7", print_hash_value);
    transparent_crc(p_2366->g_1703.s0, "p_2366->g_1703.s0", print_hash_value);
    transparent_crc(p_2366->g_1703.s1, "p_2366->g_1703.s1", print_hash_value);
    transparent_crc(p_2366->g_1703.s2, "p_2366->g_1703.s2", print_hash_value);
    transparent_crc(p_2366->g_1703.s3, "p_2366->g_1703.s3", print_hash_value);
    transparent_crc(p_2366->g_1703.s4, "p_2366->g_1703.s4", print_hash_value);
    transparent_crc(p_2366->g_1703.s5, "p_2366->g_1703.s5", print_hash_value);
    transparent_crc(p_2366->g_1703.s6, "p_2366->g_1703.s6", print_hash_value);
    transparent_crc(p_2366->g_1703.s7, "p_2366->g_1703.s7", print_hash_value);
    transparent_crc(p_2366->g_1703.s8, "p_2366->g_1703.s8", print_hash_value);
    transparent_crc(p_2366->g_1703.s9, "p_2366->g_1703.s9", print_hash_value);
    transparent_crc(p_2366->g_1703.sa, "p_2366->g_1703.sa", print_hash_value);
    transparent_crc(p_2366->g_1703.sb, "p_2366->g_1703.sb", print_hash_value);
    transparent_crc(p_2366->g_1703.sc, "p_2366->g_1703.sc", print_hash_value);
    transparent_crc(p_2366->g_1703.sd, "p_2366->g_1703.sd", print_hash_value);
    transparent_crc(p_2366->g_1703.se, "p_2366->g_1703.se", print_hash_value);
    transparent_crc(p_2366->g_1703.sf, "p_2366->g_1703.sf", print_hash_value);
    transparent_crc(p_2366->g_1742.s0, "p_2366->g_1742.s0", print_hash_value);
    transparent_crc(p_2366->g_1742.s1, "p_2366->g_1742.s1", print_hash_value);
    transparent_crc(p_2366->g_1742.s2, "p_2366->g_1742.s2", print_hash_value);
    transparent_crc(p_2366->g_1742.s3, "p_2366->g_1742.s3", print_hash_value);
    transparent_crc(p_2366->g_1742.s4, "p_2366->g_1742.s4", print_hash_value);
    transparent_crc(p_2366->g_1742.s5, "p_2366->g_1742.s5", print_hash_value);
    transparent_crc(p_2366->g_1742.s6, "p_2366->g_1742.s6", print_hash_value);
    transparent_crc(p_2366->g_1742.s7, "p_2366->g_1742.s7", print_hash_value);
    transparent_crc(p_2366->g_1758.s0, "p_2366->g_1758.s0", print_hash_value);
    transparent_crc(p_2366->g_1758.s1, "p_2366->g_1758.s1", print_hash_value);
    transparent_crc(p_2366->g_1758.s2, "p_2366->g_1758.s2", print_hash_value);
    transparent_crc(p_2366->g_1758.s3, "p_2366->g_1758.s3", print_hash_value);
    transparent_crc(p_2366->g_1758.s4, "p_2366->g_1758.s4", print_hash_value);
    transparent_crc(p_2366->g_1758.s5, "p_2366->g_1758.s5", print_hash_value);
    transparent_crc(p_2366->g_1758.s6, "p_2366->g_1758.s6", print_hash_value);
    transparent_crc(p_2366->g_1758.s7, "p_2366->g_1758.s7", print_hash_value);
    transparent_crc(p_2366->g_1758.s8, "p_2366->g_1758.s8", print_hash_value);
    transparent_crc(p_2366->g_1758.s9, "p_2366->g_1758.s9", print_hash_value);
    transparent_crc(p_2366->g_1758.sa, "p_2366->g_1758.sa", print_hash_value);
    transparent_crc(p_2366->g_1758.sb, "p_2366->g_1758.sb", print_hash_value);
    transparent_crc(p_2366->g_1758.sc, "p_2366->g_1758.sc", print_hash_value);
    transparent_crc(p_2366->g_1758.sd, "p_2366->g_1758.sd", print_hash_value);
    transparent_crc(p_2366->g_1758.se, "p_2366->g_1758.se", print_hash_value);
    transparent_crc(p_2366->g_1758.sf, "p_2366->g_1758.sf", print_hash_value);
    transparent_crc(p_2366->g_1905.s0, "p_2366->g_1905.s0", print_hash_value);
    transparent_crc(p_2366->g_1905.s1, "p_2366->g_1905.s1", print_hash_value);
    transparent_crc(p_2366->g_1905.s2, "p_2366->g_1905.s2", print_hash_value);
    transparent_crc(p_2366->g_1905.s3, "p_2366->g_1905.s3", print_hash_value);
    transparent_crc(p_2366->g_1905.s4, "p_2366->g_1905.s4", print_hash_value);
    transparent_crc(p_2366->g_1905.s5, "p_2366->g_1905.s5", print_hash_value);
    transparent_crc(p_2366->g_1905.s6, "p_2366->g_1905.s6", print_hash_value);
    transparent_crc(p_2366->g_1905.s7, "p_2366->g_1905.s7", print_hash_value);
    transparent_crc(p_2366->g_1905.s8, "p_2366->g_1905.s8", print_hash_value);
    transparent_crc(p_2366->g_1905.s9, "p_2366->g_1905.s9", print_hash_value);
    transparent_crc(p_2366->g_1905.sa, "p_2366->g_1905.sa", print_hash_value);
    transparent_crc(p_2366->g_1905.sb, "p_2366->g_1905.sb", print_hash_value);
    transparent_crc(p_2366->g_1905.sc, "p_2366->g_1905.sc", print_hash_value);
    transparent_crc(p_2366->g_1905.sd, "p_2366->g_1905.sd", print_hash_value);
    transparent_crc(p_2366->g_1905.se, "p_2366->g_1905.se", print_hash_value);
    transparent_crc(p_2366->g_1905.sf, "p_2366->g_1905.sf", print_hash_value);
    transparent_crc(p_2366->g_1918, "p_2366->g_1918", print_hash_value);
    transparent_crc(p_2366->g_1926.s0, "p_2366->g_1926.s0", print_hash_value);
    transparent_crc(p_2366->g_1926.s1, "p_2366->g_1926.s1", print_hash_value);
    transparent_crc(p_2366->g_1926.s2, "p_2366->g_1926.s2", print_hash_value);
    transparent_crc(p_2366->g_1926.s3, "p_2366->g_1926.s3", print_hash_value);
    transparent_crc(p_2366->g_1926.s4, "p_2366->g_1926.s4", print_hash_value);
    transparent_crc(p_2366->g_1926.s5, "p_2366->g_1926.s5", print_hash_value);
    transparent_crc(p_2366->g_1926.s6, "p_2366->g_1926.s6", print_hash_value);
    transparent_crc(p_2366->g_1926.s7, "p_2366->g_1926.s7", print_hash_value);
    transparent_crc(p_2366->g_1990.s0, "p_2366->g_1990.s0", print_hash_value);
    transparent_crc(p_2366->g_1990.s1, "p_2366->g_1990.s1", print_hash_value);
    transparent_crc(p_2366->g_1990.s2, "p_2366->g_1990.s2", print_hash_value);
    transparent_crc(p_2366->g_1990.s3, "p_2366->g_1990.s3", print_hash_value);
    transparent_crc(p_2366->g_1990.s4, "p_2366->g_1990.s4", print_hash_value);
    transparent_crc(p_2366->g_1990.s5, "p_2366->g_1990.s5", print_hash_value);
    transparent_crc(p_2366->g_1990.s6, "p_2366->g_1990.s6", print_hash_value);
    transparent_crc(p_2366->g_1990.s7, "p_2366->g_1990.s7", print_hash_value);
    transparent_crc(p_2366->g_1990.s8, "p_2366->g_1990.s8", print_hash_value);
    transparent_crc(p_2366->g_1990.s9, "p_2366->g_1990.s9", print_hash_value);
    transparent_crc(p_2366->g_1990.sa, "p_2366->g_1990.sa", print_hash_value);
    transparent_crc(p_2366->g_1990.sb, "p_2366->g_1990.sb", print_hash_value);
    transparent_crc(p_2366->g_1990.sc, "p_2366->g_1990.sc", print_hash_value);
    transparent_crc(p_2366->g_1990.sd, "p_2366->g_1990.sd", print_hash_value);
    transparent_crc(p_2366->g_1990.se, "p_2366->g_1990.se", print_hash_value);
    transparent_crc(p_2366->g_1990.sf, "p_2366->g_1990.sf", print_hash_value);
    transparent_crc(p_2366->g_2029, "p_2366->g_2029", print_hash_value);
    transparent_crc(p_2366->g_2039, "p_2366->g_2039", print_hash_value);
    transparent_crc(p_2366->g_2050.x, "p_2366->g_2050.x", print_hash_value);
    transparent_crc(p_2366->g_2050.y, "p_2366->g_2050.y", print_hash_value);
    transparent_crc(p_2366->g_2050.z, "p_2366->g_2050.z", print_hash_value);
    transparent_crc(p_2366->g_2050.w, "p_2366->g_2050.w", print_hash_value);
    transparent_crc(p_2366->g_2085.s0, "p_2366->g_2085.s0", print_hash_value);
    transparent_crc(p_2366->g_2085.s1, "p_2366->g_2085.s1", print_hash_value);
    transparent_crc(p_2366->g_2085.s2, "p_2366->g_2085.s2", print_hash_value);
    transparent_crc(p_2366->g_2085.s3, "p_2366->g_2085.s3", print_hash_value);
    transparent_crc(p_2366->g_2085.s4, "p_2366->g_2085.s4", print_hash_value);
    transparent_crc(p_2366->g_2085.s5, "p_2366->g_2085.s5", print_hash_value);
    transparent_crc(p_2366->g_2085.s6, "p_2366->g_2085.s6", print_hash_value);
    transparent_crc(p_2366->g_2085.s7, "p_2366->g_2085.s7", print_hash_value);
    transparent_crc(p_2366->g_2085.s8, "p_2366->g_2085.s8", print_hash_value);
    transparent_crc(p_2366->g_2085.s9, "p_2366->g_2085.s9", print_hash_value);
    transparent_crc(p_2366->g_2085.sa, "p_2366->g_2085.sa", print_hash_value);
    transparent_crc(p_2366->g_2085.sb, "p_2366->g_2085.sb", print_hash_value);
    transparent_crc(p_2366->g_2085.sc, "p_2366->g_2085.sc", print_hash_value);
    transparent_crc(p_2366->g_2085.sd, "p_2366->g_2085.sd", print_hash_value);
    transparent_crc(p_2366->g_2085.se, "p_2366->g_2085.se", print_hash_value);
    transparent_crc(p_2366->g_2085.sf, "p_2366->g_2085.sf", print_hash_value);
    transparent_crc(p_2366->g_2086.s0, "p_2366->g_2086.s0", print_hash_value);
    transparent_crc(p_2366->g_2086.s1, "p_2366->g_2086.s1", print_hash_value);
    transparent_crc(p_2366->g_2086.s2, "p_2366->g_2086.s2", print_hash_value);
    transparent_crc(p_2366->g_2086.s3, "p_2366->g_2086.s3", print_hash_value);
    transparent_crc(p_2366->g_2086.s4, "p_2366->g_2086.s4", print_hash_value);
    transparent_crc(p_2366->g_2086.s5, "p_2366->g_2086.s5", print_hash_value);
    transparent_crc(p_2366->g_2086.s6, "p_2366->g_2086.s6", print_hash_value);
    transparent_crc(p_2366->g_2086.s7, "p_2366->g_2086.s7", print_hash_value);
    transparent_crc(p_2366->g_2086.s8, "p_2366->g_2086.s8", print_hash_value);
    transparent_crc(p_2366->g_2086.s9, "p_2366->g_2086.s9", print_hash_value);
    transparent_crc(p_2366->g_2086.sa, "p_2366->g_2086.sa", print_hash_value);
    transparent_crc(p_2366->g_2086.sb, "p_2366->g_2086.sb", print_hash_value);
    transparent_crc(p_2366->g_2086.sc, "p_2366->g_2086.sc", print_hash_value);
    transparent_crc(p_2366->g_2086.sd, "p_2366->g_2086.sd", print_hash_value);
    transparent_crc(p_2366->g_2086.se, "p_2366->g_2086.se", print_hash_value);
    transparent_crc(p_2366->g_2086.sf, "p_2366->g_2086.sf", print_hash_value);
    transparent_crc(p_2366->g_2089.s0, "p_2366->g_2089.s0", print_hash_value);
    transparent_crc(p_2366->g_2089.s1, "p_2366->g_2089.s1", print_hash_value);
    transparent_crc(p_2366->g_2089.s2, "p_2366->g_2089.s2", print_hash_value);
    transparent_crc(p_2366->g_2089.s3, "p_2366->g_2089.s3", print_hash_value);
    transparent_crc(p_2366->g_2089.s4, "p_2366->g_2089.s4", print_hash_value);
    transparent_crc(p_2366->g_2089.s5, "p_2366->g_2089.s5", print_hash_value);
    transparent_crc(p_2366->g_2089.s6, "p_2366->g_2089.s6", print_hash_value);
    transparent_crc(p_2366->g_2089.s7, "p_2366->g_2089.s7", print_hash_value);
    transparent_crc(p_2366->g_2089.s8, "p_2366->g_2089.s8", print_hash_value);
    transparent_crc(p_2366->g_2089.s9, "p_2366->g_2089.s9", print_hash_value);
    transparent_crc(p_2366->g_2089.sa, "p_2366->g_2089.sa", print_hash_value);
    transparent_crc(p_2366->g_2089.sb, "p_2366->g_2089.sb", print_hash_value);
    transparent_crc(p_2366->g_2089.sc, "p_2366->g_2089.sc", print_hash_value);
    transparent_crc(p_2366->g_2089.sd, "p_2366->g_2089.sd", print_hash_value);
    transparent_crc(p_2366->g_2089.se, "p_2366->g_2089.se", print_hash_value);
    transparent_crc(p_2366->g_2089.sf, "p_2366->g_2089.sf", print_hash_value);
    transparent_crc(p_2366->g_2092.x, "p_2366->g_2092.x", print_hash_value);
    transparent_crc(p_2366->g_2092.y, "p_2366->g_2092.y", print_hash_value);
    transparent_crc(p_2366->g_2092.z, "p_2366->g_2092.z", print_hash_value);
    transparent_crc(p_2366->g_2092.w, "p_2366->g_2092.w", print_hash_value);
    transparent_crc(p_2366->g_2127.x, "p_2366->g_2127.x", print_hash_value);
    transparent_crc(p_2366->g_2127.y, "p_2366->g_2127.y", print_hash_value);
    transparent_crc(p_2366->g_2130.x, "p_2366->g_2130.x", print_hash_value);
    transparent_crc(p_2366->g_2130.y, "p_2366->g_2130.y", print_hash_value);
    transparent_crc(p_2366->g_2130.z, "p_2366->g_2130.z", print_hash_value);
    transparent_crc(p_2366->g_2130.w, "p_2366->g_2130.w", print_hash_value);
    transparent_crc(p_2366->g_2131.s0, "p_2366->g_2131.s0", print_hash_value);
    transparent_crc(p_2366->g_2131.s1, "p_2366->g_2131.s1", print_hash_value);
    transparent_crc(p_2366->g_2131.s2, "p_2366->g_2131.s2", print_hash_value);
    transparent_crc(p_2366->g_2131.s3, "p_2366->g_2131.s3", print_hash_value);
    transparent_crc(p_2366->g_2131.s4, "p_2366->g_2131.s4", print_hash_value);
    transparent_crc(p_2366->g_2131.s5, "p_2366->g_2131.s5", print_hash_value);
    transparent_crc(p_2366->g_2131.s6, "p_2366->g_2131.s6", print_hash_value);
    transparent_crc(p_2366->g_2131.s7, "p_2366->g_2131.s7", print_hash_value);
    transparent_crc(p_2366->g_2131.s8, "p_2366->g_2131.s8", print_hash_value);
    transparent_crc(p_2366->g_2131.s9, "p_2366->g_2131.s9", print_hash_value);
    transparent_crc(p_2366->g_2131.sa, "p_2366->g_2131.sa", print_hash_value);
    transparent_crc(p_2366->g_2131.sb, "p_2366->g_2131.sb", print_hash_value);
    transparent_crc(p_2366->g_2131.sc, "p_2366->g_2131.sc", print_hash_value);
    transparent_crc(p_2366->g_2131.sd, "p_2366->g_2131.sd", print_hash_value);
    transparent_crc(p_2366->g_2131.se, "p_2366->g_2131.se", print_hash_value);
    transparent_crc(p_2366->g_2131.sf, "p_2366->g_2131.sf", print_hash_value);
    transparent_crc(p_2366->g_2134.s0, "p_2366->g_2134.s0", print_hash_value);
    transparent_crc(p_2366->g_2134.s1, "p_2366->g_2134.s1", print_hash_value);
    transparent_crc(p_2366->g_2134.s2, "p_2366->g_2134.s2", print_hash_value);
    transparent_crc(p_2366->g_2134.s3, "p_2366->g_2134.s3", print_hash_value);
    transparent_crc(p_2366->g_2134.s4, "p_2366->g_2134.s4", print_hash_value);
    transparent_crc(p_2366->g_2134.s5, "p_2366->g_2134.s5", print_hash_value);
    transparent_crc(p_2366->g_2134.s6, "p_2366->g_2134.s6", print_hash_value);
    transparent_crc(p_2366->g_2134.s7, "p_2366->g_2134.s7", print_hash_value);
    transparent_crc(p_2366->g_2135.x, "p_2366->g_2135.x", print_hash_value);
    transparent_crc(p_2366->g_2135.y, "p_2366->g_2135.y", print_hash_value);
    transparent_crc(p_2366->g_2185.s0, "p_2366->g_2185.s0", print_hash_value);
    transparent_crc(p_2366->g_2185.s1, "p_2366->g_2185.s1", print_hash_value);
    transparent_crc(p_2366->g_2185.s2, "p_2366->g_2185.s2", print_hash_value);
    transparent_crc(p_2366->g_2185.s3, "p_2366->g_2185.s3", print_hash_value);
    transparent_crc(p_2366->g_2185.s4, "p_2366->g_2185.s4", print_hash_value);
    transparent_crc(p_2366->g_2185.s5, "p_2366->g_2185.s5", print_hash_value);
    transparent_crc(p_2366->g_2185.s6, "p_2366->g_2185.s6", print_hash_value);
    transparent_crc(p_2366->g_2185.s7, "p_2366->g_2185.s7", print_hash_value);
    transparent_crc(p_2366->g_2185.s8, "p_2366->g_2185.s8", print_hash_value);
    transparent_crc(p_2366->g_2185.s9, "p_2366->g_2185.s9", print_hash_value);
    transparent_crc(p_2366->g_2185.sa, "p_2366->g_2185.sa", print_hash_value);
    transparent_crc(p_2366->g_2185.sb, "p_2366->g_2185.sb", print_hash_value);
    transparent_crc(p_2366->g_2185.sc, "p_2366->g_2185.sc", print_hash_value);
    transparent_crc(p_2366->g_2185.sd, "p_2366->g_2185.sd", print_hash_value);
    transparent_crc(p_2366->g_2185.se, "p_2366->g_2185.se", print_hash_value);
    transparent_crc(p_2366->g_2185.sf, "p_2366->g_2185.sf", print_hash_value);
    transparent_crc(p_2366->g_2212.s0, "p_2366->g_2212.s0", print_hash_value);
    transparent_crc(p_2366->g_2212.s1, "p_2366->g_2212.s1", print_hash_value);
    transparent_crc(p_2366->g_2212.s2, "p_2366->g_2212.s2", print_hash_value);
    transparent_crc(p_2366->g_2212.s3, "p_2366->g_2212.s3", print_hash_value);
    transparent_crc(p_2366->g_2212.s4, "p_2366->g_2212.s4", print_hash_value);
    transparent_crc(p_2366->g_2212.s5, "p_2366->g_2212.s5", print_hash_value);
    transparent_crc(p_2366->g_2212.s6, "p_2366->g_2212.s6", print_hash_value);
    transparent_crc(p_2366->g_2212.s7, "p_2366->g_2212.s7", print_hash_value);
    transparent_crc(p_2366->g_2212.s8, "p_2366->g_2212.s8", print_hash_value);
    transparent_crc(p_2366->g_2212.s9, "p_2366->g_2212.s9", print_hash_value);
    transparent_crc(p_2366->g_2212.sa, "p_2366->g_2212.sa", print_hash_value);
    transparent_crc(p_2366->g_2212.sb, "p_2366->g_2212.sb", print_hash_value);
    transparent_crc(p_2366->g_2212.sc, "p_2366->g_2212.sc", print_hash_value);
    transparent_crc(p_2366->g_2212.sd, "p_2366->g_2212.sd", print_hash_value);
    transparent_crc(p_2366->g_2212.se, "p_2366->g_2212.se", print_hash_value);
    transparent_crc(p_2366->g_2212.sf, "p_2366->g_2212.sf", print_hash_value);
    transparent_crc(p_2366->g_2223.x, "p_2366->g_2223.x", print_hash_value);
    transparent_crc(p_2366->g_2223.y, "p_2366->g_2223.y", print_hash_value);
    transparent_crc(p_2366->g_2223.z, "p_2366->g_2223.z", print_hash_value);
    transparent_crc(p_2366->g_2223.w, "p_2366->g_2223.w", print_hash_value);
    transparent_crc(p_2366->g_2242.x, "p_2366->g_2242.x", print_hash_value);
    transparent_crc(p_2366->g_2242.y, "p_2366->g_2242.y", print_hash_value);
    transparent_crc(p_2366->g_2242.z, "p_2366->g_2242.z", print_hash_value);
    transparent_crc(p_2366->g_2242.w, "p_2366->g_2242.w", print_hash_value);
    transparent_crc(p_2366->g_2243.x, "p_2366->g_2243.x", print_hash_value);
    transparent_crc(p_2366->g_2243.y, "p_2366->g_2243.y", print_hash_value);
    transparent_crc(p_2366->g_2286.s0, "p_2366->g_2286.s0", print_hash_value);
    transparent_crc(p_2366->g_2286.s1, "p_2366->g_2286.s1", print_hash_value);
    transparent_crc(p_2366->g_2286.s2, "p_2366->g_2286.s2", print_hash_value);
    transparent_crc(p_2366->g_2286.s3, "p_2366->g_2286.s3", print_hash_value);
    transparent_crc(p_2366->g_2286.s4, "p_2366->g_2286.s4", print_hash_value);
    transparent_crc(p_2366->g_2286.s5, "p_2366->g_2286.s5", print_hash_value);
    transparent_crc(p_2366->g_2286.s6, "p_2366->g_2286.s6", print_hash_value);
    transparent_crc(p_2366->g_2286.s7, "p_2366->g_2286.s7", print_hash_value);
    transparent_crc(p_2366->g_2351.s0, "p_2366->g_2351.s0", print_hash_value);
    transparent_crc(p_2366->g_2351.s1, "p_2366->g_2351.s1", print_hash_value);
    transparent_crc(p_2366->g_2351.s2, "p_2366->g_2351.s2", print_hash_value);
    transparent_crc(p_2366->g_2351.s3, "p_2366->g_2351.s3", print_hash_value);
    transparent_crc(p_2366->g_2351.s4, "p_2366->g_2351.s4", print_hash_value);
    transparent_crc(p_2366->g_2351.s5, "p_2366->g_2351.s5", print_hash_value);
    transparent_crc(p_2366->g_2351.s6, "p_2366->g_2351.s6", print_hash_value);
    transparent_crc(p_2366->g_2351.s7, "p_2366->g_2351.s7", print_hash_value);
    transparent_crc(p_2366->g_2356.x, "p_2366->g_2356.x", print_hash_value);
    transparent_crc(p_2366->g_2356.y, "p_2366->g_2356.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
