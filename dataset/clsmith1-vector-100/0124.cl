// ---fake_divergence -g 25,79,4 -l 1,1,1
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


// Seed: 124

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   uint64_t  f1;
   uint32_t  f2;
   uint32_t  f3;
};

union U1 {
   volatile int8_t  f0;
   int32_t  f1;
   int16_t  f2;
   int16_t  f3;
   volatile int8_t  f4;
};

struct S2 {
    int32_t g_4;
    int64_t g_15;
    uint16_t g_26;
    uint16_t g_30;
    uint16_t *g_29;
    uint8_t g_49;
    int32_t g_62;
    volatile int8_t g_64;
    uint8_t g_65;
    uint32_t g_70;
    volatile VECTOR(uint32_t, 8) g_74;
    VECTOR(uint64_t, 4) g_93;
    volatile VECTOR(int8_t, 2) g_94;
    uint32_t g_109;
    volatile VECTOR(int16_t, 2) g_110;
    uint8_t g_121;
    uint8_t g_127;
    int16_t g_128;
    uint8_t g_130[8][1][1];
    int32_t * volatile g_133;
    union U0 g_135;
    union U0 *g_134;
    union U1 g_142;
    union U1 g_152[1];
    volatile uint64_t g_169;
    volatile uint64_t * volatile g_168;
    VECTOR(uint32_t, 2) g_171;
    uint8_t *g_178;
    uint8_t * volatile *g_177;
    uint32_t *g_180;
    uint32_t **g_179[8];
    VECTOR(uint8_t, 4) g_196;
    int32_t g_199;
    int32_t *g_279;
    int32_t ** volatile g_278;
    volatile VECTOR(int32_t, 8) g_283;
    union U0 **g_304;
    volatile VECTOR(uint64_t, 2) g_365;
    volatile VECTOR(uint8_t, 16) g_367;
    volatile VECTOR(int8_t, 16) g_394;
    union U0 g_403;
    union U0 *g_402;
    union U0 *g_404;
    int8_t g_409;
    int8_t g_411;
    int32_t ** volatile g_436;
    int32_t ** volatile g_440;
    volatile VECTOR(int64_t, 8) g_480;
    uint64_t *g_493;
    uint64_t **g_492;
    uint64_t *** volatile g_496;
    volatile VECTOR(int32_t, 2) g_509;
    volatile union U1 g_530;
    volatile union U1 g_544;
    volatile VECTOR(int32_t, 2) g_567;
    volatile VECTOR(int32_t, 8) g_571;
    volatile VECTOR(uint16_t, 4) g_582;
    volatile VECTOR(int16_t, 4) g_621;
    volatile VECTOR(int16_t, 8) g_628;
    volatile VECTOR(int8_t, 16) g_650;
    VECTOR(uint8_t, 4) g_667;
    uint16_t **g_683;
    uint16_t *** volatile g_682;
    int64_t g_685;
    uint8_t g_688;
    uint32_t g_689[5];
    volatile VECTOR(uint16_t, 16) g_690;
    VECTOR(int16_t, 16) g_691;
    VECTOR(int64_t, 8) g_704;
    int64_t g_706;
    int32_t g_707;
    uint32_t g_708;
    uint32_t ***g_728;
    volatile uint32_t *g_733;
    volatile uint32_t * volatile * volatile g_732[9][6][2];
    volatile uint32_t * volatile * volatile *g_731[2];
    volatile uint32_t * volatile * volatile ** volatile g_730;
    volatile VECTOR(uint16_t, 4) g_830;
    VECTOR(int32_t, 16) g_845;
    volatile VECTOR(int32_t, 2) g_846;
    volatile VECTOR(int32_t, 16) g_847;
    int32_t ** volatile g_857;
    int8_t *g_862;
    volatile VECTOR(int8_t, 4) g_867;
    VECTOR(uint8_t, 2) g_884;
    int32_t ** volatile g_892;
    volatile VECTOR(uint16_t, 2) g_919;
    VECTOR(int16_t, 2) g_925;
    VECTOR(int8_t, 4) g_930;
    int32_t ** volatile g_950;
    uint32_t ****g_983;
    uint32_t *****g_982;
    int32_t ** volatile g_989;
    int64_t *g_995;
    int64_t **g_994;
    volatile VECTOR(uint64_t, 16) g_1008;
    VECTOR(int16_t, 2) g_1020;
    volatile VECTOR(uint8_t, 2) g_1024;
    VECTOR(uint8_t, 8) g_1025;
    volatile VECTOR(int8_t, 8) g_1032;
    VECTOR(int8_t, 8) g_1033;
    volatile VECTOR(int32_t, 16) g_1046;
    VECTOR(uint16_t, 16) g_1048;
    VECTOR(uint16_t, 4) g_1050;
    VECTOR(uint16_t, 2) g_1051;
    volatile VECTOR(uint64_t, 4) g_1056;
    uint32_t g_1113;
    uint64_t ** volatile * volatile g_1143;
    uint64_t ** volatile * volatile g_1144;
    uint64_t ** volatile * volatile *g_1142[5];
    VECTOR(int8_t, 8) g_1169;
    volatile VECTOR(int32_t, 16) g_1172;
    int32_t ** volatile g_1179;
    uint32_t g_1182;
    uint32_t *** volatile g_1183;
    uint32_t *g_1186;
    uint32_t **g_1185;
    uint32_t *** volatile g_1184[1][3][7];
    volatile VECTOR(int8_t, 8) g_1223;
    VECTOR(int16_t, 8) g_1230;
    VECTOR(int16_t, 8) g_1232;
    VECTOR(int16_t, 2) g_1234;
    union U0 ** volatile g_1257;
    volatile VECTOR(int16_t, 16) g_1285;
    union U1 g_1312[2];
    uint64_t g_1318;
    uint32_t *g_1326;
    volatile VECTOR(uint8_t, 4) g_1346;
    volatile VECTOR(int32_t, 16) g_1363;
    int32_t ** volatile g_1378;
    int32_t ** volatile g_1379[6];
    int32_t ** volatile g_1380[4][5];
    union U0 *g_1392[5];
    VECTOR(int8_t, 2) g_1427;
    volatile VECTOR(int32_t, 16) g_1469;
    VECTOR(int32_t, 16) g_1472;
    uint32_t g_1478;
    uint8_t **g_1510[10][3];
    uint8_t ***g_1509;
    uint8_t ****g_1508;
    volatile VECTOR(uint32_t, 8) g_1522;
    VECTOR(int32_t, 16) g_1525;
    int32_t ** volatile g_1541;
    VECTOR(int8_t, 2) g_1553;
    volatile VECTOR(int64_t, 16) g_1557;
    VECTOR(uint8_t, 8) g_1564;
    int32_t ** volatile g_1572;
    VECTOR(int64_t, 2) g_1581;
    VECTOR(uint32_t, 4) g_1602;
    VECTOR(int8_t, 16) g_1625;
    volatile union U1 g_1631;
    uint32_t **g_1633[2];
    VECTOR(int16_t, 2) g_1640;
    volatile VECTOR(int16_t, 8) g_1679;
    union U0 ***g_1719;
    uint32_t g_1725;
    volatile VECTOR(int8_t, 2) g_1744;
    VECTOR(int64_t, 2) g_1772;
    volatile VECTOR(int32_t, 2) g_1776;
    VECTOR(int32_t, 2) g_1777;
    VECTOR(uint64_t, 4) g_1782;
    int8_t g_1794;
    volatile VECTOR(int16_t, 8) g_1871;
    VECTOR(int32_t, 2) g_1904;
    VECTOR(int32_t, 4) g_1905;
    union U0 **g_1943;
    int32_t * volatile g_1963[2][1];
    volatile VECTOR(uint8_t, 2) g_1966;
    int16_t * volatile g_1989;
    int16_t * volatile * volatile g_1988;
    int32_t ** volatile g_2015;
    volatile union U1 g_2047;
    volatile VECTOR(uint16_t, 16) g_2057;
    VECTOR(int32_t, 2) g_2067;
    uint8_t *****g_2073[8];
    VECTOR(uint16_t, 2) g_2146;
    volatile VECTOR(uint16_t, 2) g_2151;
    int8_t * volatile *g_2197;
    int8_t * volatile ** volatile g_2196[3];
    VECTOR(int64_t, 8) g_2206;
    volatile VECTOR(uint64_t, 2) g_2227;
    VECTOR(uint8_t, 16) g_2247;
    volatile union U1 g_2271;
    VECTOR(uint64_t, 4) g_2274;
    int8_t g_2305;
    volatile VECTOR(uint16_t, 2) g_2316;
    VECTOR(int64_t, 16) g_2318;
    VECTOR(int32_t, 16) g_2341;
    int64_t g_2349;
    uint64_t g_2351;
    volatile VECTOR(int16_t, 8) g_2412;
    VECTOR(int32_t, 8) g_2416;
    volatile VECTOR(int8_t, 16) g_2451;
    VECTOR(int8_t, 8) g_2452;
    volatile VECTOR(int8_t, 2) g_2453;
    volatile VECTOR(uint8_t, 2) g_2465;
    volatile uint8_t g_2482;
    volatile uint8_t g_2483[3][10];
    volatile uint8_t g_2484;
    volatile uint8_t g_2485;
    volatile uint8_t g_2486;
    volatile uint8_t g_2487;
    volatile uint8_t g_2488;
    volatile uint8_t g_2489;
    volatile uint8_t g_2490;
    volatile uint8_t g_2491;
    volatile uint8_t g_2492;
    volatile uint8_t g_2493;
    volatile uint8_t g_2494;
    volatile uint8_t g_2495;
    volatile uint8_t g_2496;
    volatile uint8_t g_2497;
    volatile uint8_t g_2498[8];
    volatile uint8_t g_2499;
    volatile uint8_t g_2500;
    volatile uint8_t g_2501;
    volatile uint8_t g_2502;
    volatile uint8_t g_2503;
    volatile uint8_t g_2504;
    volatile uint8_t g_2505;
    volatile uint8_t g_2506;
    volatile uint8_t * volatile g_2481[8][5][6];
    volatile uint8_t g_2508;
    volatile uint8_t * volatile g_2507[2];
    volatile uint8_t g_2510;
    volatile uint8_t g_2511;
    volatile VECTOR(uint8_t, 2) g_2512;
    volatile uint8_t g_2513;
    volatile uint8_t g_2514;
    volatile uint8_t g_2515;
    volatile VECTOR(uint8_t, 8) g_2516;
    volatile uint8_t g_2517;
    volatile uint8_t g_2518;
    volatile uint8_t g_2519;
    volatile uint8_t g_2520[10][7][3];
    volatile uint8_t g_2521;
    volatile uint8_t g_2522;
    volatile uint8_t g_2523;
    volatile uint8_t g_2524[1][4][9];
    volatile uint8_t g_2525;
    volatile uint8_t g_2526;
    volatile uint8_t g_2527;
    volatile uint8_t g_2528;
    volatile uint8_t g_2529;
    volatile uint8_t g_2530[3][1][6];
    volatile uint8_t g_2531;
    volatile uint8_t *g_2509[10][6];
    volatile uint8_t * volatile *g_2480[6][1][9];
    volatile uint8_t * volatile **g_2479[6][7][1];
    volatile uint8_t * volatile ** volatile * volatile g_2478[7];
    volatile uint8_t * volatile ** volatile * volatile g_2532;
    volatile uint8_t * volatile ** volatile * volatile * volatile g_2477[9];
    volatile uint8_t * volatile ** volatile *g_2534;
    volatile uint8_t * volatile ** volatile * volatile *g_2533;
    volatile uint8_t * volatile ** volatile * volatile * volatile *g_2476[8][3][3];
    VECTOR(int16_t, 4) g_2551;
    VECTOR(int16_t, 16) g_2563;
    volatile VECTOR(uint64_t, 2) g_2586;
    volatile union U1 g_2697;
    volatile VECTOR(uint32_t, 2) g_2699;
    VECTOR(int16_t, 8) g_2706;
    volatile VECTOR(int16_t, 16) g_2708;
    volatile VECTOR(uint16_t, 8) g_2709;
    volatile VECTOR(uint8_t, 2) g_2710;
    VECTOR(uint64_t, 16) g_2715;
    VECTOR(int8_t, 2) g_2742;
    volatile int8_t g_2767[5];
    volatile int32_t * volatile g_2768;
    volatile int32_t * volatile * volatile g_2769[6];
    volatile int32_t * volatile * volatile g_2770;
    volatile VECTOR(int64_t, 4) g_2775;
    uint16_t g_2785[3][2];
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
int64_t  func_1(struct S2 * p_2796);
uint64_t  func_19(int32_t * p_20, int32_t * p_21, struct S2 * p_2796);
uint16_t  func_22(uint16_t  p_23, int16_t  p_24, struct S2 * p_2796);
union U0  func_37(int32_t * p_38, union U0  p_39, uint8_t  p_40, int32_t * p_41, uint64_t  p_42, struct S2 * p_2796);
int32_t * func_43(int64_t  p_44, uint32_t  p_45, int32_t * p_46, uint32_t  p_47, struct S2 * p_2796);
uint64_t  func_58(int64_t  p_59, struct S2 * p_2796);
int64_t  func_71(uint8_t * p_72, struct S2 * p_2796);
uint8_t * func_77(int32_t * p_78, struct S2 * p_2796);
int32_t * func_81(union U0 * p_82, uint32_t  p_83, struct S2 * p_2796);
uint64_t  func_84(int32_t  p_85, uint16_t * p_86, uint8_t  p_87, uint32_t  p_88, uint16_t * p_89, struct S2 * p_2796);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2796->g_4 p_2796->g_2775 p_2796->g_2785 p_2796->g_2274 p_2796->g_1525 p_2796->g_480
 * writes: p_2796->g_706 p_2796->g_2349 p_2796->g_1525
 */
int64_t  func_1(struct S2 * p_2796)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_3 = &p_2796->g_4;
    int32_t *l_5 = &p_2796->g_4;
    int32_t *l_6 = &p_2796->g_4;
    int32_t *l_7 = &p_2796->g_4;
    int32_t *l_8 = &p_2796->g_4;
    int32_t *l_9 = &p_2796->g_4;
    int32_t *l_10 = (void*)0;
    int32_t *l_11 = &p_2796->g_4;
    int32_t l_12 = 4L;
    int32_t *l_13 = &p_2796->g_4;
    int32_t *l_14[2][1];
    uint32_t l_16 = 0xB3E713E1L;
    uint8_t l_2784 = 0x15L;
    uint32_t l_2786[2][3] = {{8UL,1UL,8UL},{8UL,1UL,8UL}};
    int8_t l_2787[7] = {0x36L,0x36L,0x36L,0x36L,0x36L,0x36L,0x36L};
    int64_t *l_2788 = (void*)0;
    int64_t *l_2789 = &p_2796->g_706;
    uint64_t l_2790 = 18446744073709551607UL;
    int64_t *l_2791 = (void*)0;
    int64_t *l_2792 = (void*)0;
    int64_t *l_2793 = (void*)0;
    int64_t *l_2794 = (void*)0;
    int64_t *l_2795 = &p_2796->g_2349;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_14[i][j] = &l_12;
    }
    --l_16;
    p_2796->g_1525.s7 ^= (((func_19(&l_12, &l_12, p_2796) , 4294967295UL) ^ ((*l_7) ^ ((*l_2795) = ((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(p_2796->g_2775.zyyywzzzywwzyxxz)).hi)).s1540762377302731, (int64_t)((*l_2789) = (safe_mul_func_uint8_t_u_u((safe_add_func_int64_t_s_s((*l_3), ((*l_9) >= ((safe_add_func_int32_t_s_s(((((safe_rshift_func_int8_t_s_s(((l_2784 < (p_2796->g_2785[2][0] >= 8UL)) == 0L), (*l_8))) <= (*l_3)) > (*l_5)) && (*l_7)), l_2786[0][1])) , l_2787[2])))), (*l_8)))), (int64_t)l_2790))).sa))) | p_2796->g_2274.y);
    return p_2796->g_480.s7;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_19(int32_t * p_20, int32_t * p_21, struct S2 * p_2796)
{ /* block id: 6 */
    uint16_t *l_25 = &p_2796->g_26;
    int32_t l_2240 = 0x3318F5E2L;
    int32_t l_2253 = 0x6BCAEF4BL;
    uint32_t *l_2268 = &p_2796->g_135.f0;
    union U0 ****l_2313[4][3] = {{&p_2796->g_1719,&p_2796->g_1719,&p_2796->g_1719},{&p_2796->g_1719,&p_2796->g_1719,&p_2796->g_1719},{&p_2796->g_1719,&p_2796->g_1719,&p_2796->g_1719},{&p_2796->g_1719,&p_2796->g_1719,&p_2796->g_1719}};
    uint8_t l_2333 = 0x12L;
    int64_t ***l_2350 = &p_2796->g_994;
    int32_t **l_2366[10][8][3] = {{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}},{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}},{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}},{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}},{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}},{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}},{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}},{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}},{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}},{{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}}};
    uint64_t ***l_2375 = &p_2796->g_492;
    int32_t *l_2382[4][4][7] = {{{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4}},{{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4}},{{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4}},{{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4},{(void*)0,&p_2796->g_62,&p_2796->g_4,(void*)0,&p_2796->g_62,(void*)0,&p_2796->g_4}}};
    int32_t *l_2383[5][7][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    uint8_t *****l_2461 = (void*)0;
    uint32_t l_2576 = 2UL;
    VECTOR(int16_t, 4) l_2583 = (VECTOR(int16_t, 4))(0x4EA5L, (VECTOR(int16_t, 2))(0x4EA5L, 0x5154L), 0x5154L);
    VECTOR(uint64_t, 8) l_2588 = (VECTOR(uint64_t, 8))(0x79441EDE75E8785EL, (VECTOR(uint64_t, 4))(0x79441EDE75E8785EL, (VECTOR(uint64_t, 2))(0x79441EDE75E8785EL, 0x68FAC50BF0F0E22BL), 0x68FAC50BF0F0E22BL), 0x68FAC50BF0F0E22BL, 0x79441EDE75E8785EL, 0x68FAC50BF0F0E22BL);
    int8_t **l_2592[1];
    uint64_t l_2612[4];
    int32_t *l_2651 = (void*)0;
    int32_t **l_2650 = &l_2651;
    uint32_t **l_2662 = &p_2796->g_1186;
    int8_t l_2740 = 9L;
    uint32_t **l_2741[3];
    VECTOR(uint8_t, 16) l_2743 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL, (VECTOR(uint8_t, 2))(0UL, 2UL), (VECTOR(uint8_t, 2))(0UL, 2UL), 0UL, 2UL, 0UL, 2UL);
    uint64_t l_2774 = 0xB8E39360C3DA7BB0L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_2592[i] = (void*)0;
    for (i = 0; i < 4; i++)
        l_2612[i] = 18446744073709551613UL;
    for (i = 0; i < 3; i++)
        l_2741[i] = &p_2796->g_180;
    return l_2774;
}


/* ------------------------------------------ */
/* 
 * reads : p_2796->g_29 p_2796->g_30 p_2796->g_4 p_2796->g_49 p_2796->g_65 p_2796->g_74 p_2796->g_93 p_2796->g_94 p_2796->g_62 p_2796->g_15 p_2796->g_110 p_2796->g_26 p_2796->g_130 p_2796->g_133 p_2796->g_134 p_2796->g_142 p_2796->g_127 p_2796->g_152 p_2796->g_121 p_2796->g_135.f0 p_2796->g_168 p_2796->g_171 p_2796->g_177 p_2796->g_178 p_2796->g_179 p_2796->g_196 p_2796->g_128 p_2796->g_199 p_2796->g_180 p_2796->g_142.f2 p_2796->g_278 p_2796->g_367 p_2796->g_440 p_2796->g_135 p_2796->g_404 p_2796->g_279 p_2796->g_169 p_2796->g_109 p_2796->g_411 p_2796->g_480 p_2796->g_492 p_2796->g_496 p_2796->g_530 p_2796->g_394 p_2796->g_544 p_2796->g_650 p_2796->g_682 p_2796->g_493 p_2796->g_688 p_2796->g_690 p_2796->g_691 p_2796->g_667 p_2796->g_704 p_2796->g_708 p_2796->g_728 p_2796->g_730 p_2796->g_689 p_2796->g_685 p_2796->g_1904 p_2796->g_994 p_2796->g_995 p_2796->g_1169 p_2796->g_1478 p_2796->g_707 p_2796->g_1508 p_2796->g_1509 p_2796->g_1510 p_2796->g_683 p_2796->g_1988 p_2796->g_1326 p_2796->g_2015 p_2796->g_919 p_2796->g_403.f2 p_2796->g_2047 p_2796->g_983 p_2796->g_1186 p_2796->g_1427 p_2796->g_1943 p_2796->g_1113
 * writes: p_2796->g_30 p_2796->g_49 p_2796->g_65 p_2796->g_70 p_2796->g_62 p_2796->g_121 p_2796->g_127 p_2796->g_128 p_2796->g_130 p_2796->g_26 p_2796->g_199 p_2796->g_109 p_2796->g_135.f0 p_2796->g_142.f2 p_2796->g_403.f2 p_2796->g_279 p_2796->g_304 p_2796->g_403 p_2796->g_93 p_2796->g_179 p_2796->g_178 p_2796->g_135 p_2796->g_411 p_2796->g_15 p_2796->g_492 p_2796->g_134 p_2796->g_196 p_2796->g_409 p_2796->g_683 p_2796->g_685 p_2796->g_689 p_2796->g_667 p_2796->g_708 p_2796->g_728 p_2796->g_707 p_2796->g_704 p_2796->g_706 p_2796->g_925 p_2796->g_1943 p_2796->g_1478 p_2796->g_1033 p_2796->g_995 p_2796->g_1113 p_2796->g_4 p_2796->g_142.f1 p_2796->g_2073 p_2796->g_1510 p_2796->g_1719 p_2796->g_404 p_2796->g_1392
 */
uint16_t  func_22(uint16_t  p_23, int16_t  p_24, struct S2 * p_2796)
{ /* block id: 8 */
    uint8_t *l_48 = &p_2796->g_49;
    int32_t l_60 = (-1L);
    VECTOR(uint64_t, 4) l_68 = (VECTOR(uint64_t, 4))(0x06C08385637EAC69L, (VECTOR(uint64_t, 2))(0x06C08385637EAC69L, 0x6C8ECDCC21D2CF1AL), 0x6C8ECDCC21D2CF1AL);
    uint64_t *l_69[1][3];
    VECTOR(uint32_t, 2) l_73 = (VECTOR(uint32_t, 2))(0x610AA4AEL, 4294967295UL);
    uint32_t *l_75 = (void*)0;
    int32_t l_76 = 9L;
    int64_t *l_2039 = (void*)0;
    int64_t *l_2040 = (void*)0;
    int64_t *l_2041[5][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_2042 = 0x17C05831L;
    union U0 l_2219 = {0x8D3F947EL};
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_69[i][j] = (void*)0;
    }
    if (((safe_div_func_uint16_t_u_u(((*p_2796->g_29)++), p_23)) >= (safe_add_func_uint8_t_u_u((func_37(func_43(p_23, p_2796->g_4, &p_2796->g_4, ((((*l_48)--) , (safe_div_func_int64_t_s_s((safe_add_func_int64_t_s_s((l_2042 |= (safe_add_func_uint64_t_u_u((p_2796->g_4 , func_58(l_60, p_2796)), ((p_2796->g_70 = ((VECTOR(uint64_t, 16))(l_68.yxxzxzyzzzxwxwxy)).se) ^ (0L != func_71((((l_76 = ((((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(l_73.xxxyyxxyyxxxxxyy)).odd)).s70))).hi < ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_2796->g_74.s31)).yyyy)).w) | ((+1L) == p_24))) ^ p_2796->g_4) , (void*)0), p_2796)))))), 4L)), p_2796->g_1169.s3))) == p_23), p_2796), l_2219, p_24, p_2796->g_1186, p_24, p_2796) , FAKE_DIVERGE(p_2796->local_2_offset, get_local_id(2), 10)), 255UL))))
    { /* block id: 873 */
        return (*p_2796->g_29);
    }
    else
    { /* block id: 875 */
        (*p_2796->g_1943) = &l_2219;
    }
    for (p_2796->g_1113 = 0; (p_2796->g_1113 < 4); p_2796->g_1113 = safe_add_func_uint64_t_u_u(p_2796->g_1113, 6))
    { /* block id: 880 */
        uint8_t ******l_2237 = &p_2796->g_2073[1];
        l_76 &= ((l_2237 = &p_2796->g_2073[1]) == &p_2796->g_2073[2]);
    }
    return l_2042;
}


/* ------------------------------------------ */
/* 
 * reads : p_2796->g_142.f2 p_2796->g_685 p_2796->g_667 p_2796->g_1427
 * writes: p_2796->g_142.f2 p_2796->g_685 p_2796->g_4 l_12
 */
union U0  func_37(int32_t * p_38, union U0  p_39, uint8_t  p_40, int32_t * p_41, uint64_t  p_42, struct S2 * p_2796)
{ /* block id: 860 */
    int32_t **l_2231 = &p_2796->g_279;
    int32_t l_2234 = 0x25A91FA1L;
    for (p_2796->g_142.f2 = 3; (p_2796->g_142.f2 <= (-28)); p_2796->g_142.f2 = safe_sub_func_int8_t_s_s(p_2796->g_142.f2, 1))
    { /* block id: 863 */
        int64_t **l_2226 = (void*)0;
        int32_t **l_2228 = &p_2796->g_279;
        for (p_2796->g_685 = (-22); (p_2796->g_685 > 18); ++p_2796->g_685)
        { /* block id: 866 */
            int8_t l_2224 = 0x44L;
            int64_t **l_2225 = &p_2796->g_995;
            int32_t ***l_2229 = (void*)0;
            int32_t ***l_2230[1];
            int i;
            for (i = 0; i < 1; i++)
                l_2230[i] = &l_2228;
            (*p_38) = (l_2224 , (((p_42 , ((((&p_2796->g_1318 != &p_2796->g_1318) >= 0x83L) , l_2225) != (l_2226 = &p_2796->g_995))) , ((VECTOR(uint64_t, 8))(p_2796->g_2227.yyyxxyxx)).s5) == (!(((l_2231 = l_2228) != (((safe_add_func_uint64_t_u_u((p_42 == l_2234), p_2796->g_667.w)) != p_40) , &p_41)) <= p_2796->g_1427.y))));
        }
    }
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_2796->g_109 p_2796->g_4 p_2796->g_2047 p_2796->g_994 p_2796->g_995 p_2796->g_62 p_2796->g_1509 p_2796->g_1510 p_2796->g_178 p_2796->g_130 p_2796->g_49 p_2796->g_689 p_2796->g_707 p_2796->g_177 p_2796->g_1508 p_2796->g_983 p_2796->g_728 p_2796->g_179 p_2796->g_180 p_2796->g_74 p_2796->g_411
 * writes: p_2796->g_109 p_2796->g_4 p_2796->g_142.f1 p_2796->g_685 p_2796->g_2073 p_2796->g_411 p_2796->g_128 p_2796->g_707 p_2796->g_1510 p_2796->g_1719 p_2796->g_130 p_2796->g_49
 */
int32_t * func_43(int64_t  p_44, uint32_t  p_45, int32_t * p_46, uint32_t  p_47, struct S2 * p_2796)
{ /* block id: 801 */
    int64_t ***l_2045 = &p_2796->g_994;
    int32_t l_2054 = 2L;
    uint32_t l_2062[4][8] = {{0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL},{0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL},{0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL},{0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL,0xB69D3DDFL}};
    uint8_t *****l_2071 = &p_2796->g_1508;
    VECTOR(int8_t, 8) l_2110 = (VECTOR(int8_t, 8))(0x4AL, (VECTOR(int8_t, 4))(0x4AL, (VECTOR(int8_t, 2))(0x4AL, 0L), 0L), 0L, 0x4AL, 0L);
    uint16_t l_2111 = 0UL;
    int8_t l_2116 = 1L;
    int32_t l_2130[4][3];
    int32_t l_2198 = 0x1CBB8D6CL;
    uint32_t l_2199 = 0xFDB97C64L;
    int i, j;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
            l_2130[i][j] = 0x0AE125AEL;
    }
    for (p_2796->g_109 = 0; (p_2796->g_109 == 46); ++p_2796->g_109)
    { /* block id: 804 */
        int64_t ***l_2046 = (void*)0;
        int32_t l_2053 = 7L;
        uint64_t *l_2060[9] = {&p_2796->g_1318,&p_2796->g_1318,&p_2796->g_1318,&p_2796->g_1318,&p_2796->g_1318,&p_2796->g_1318,&p_2796->g_1318,&p_2796->g_1318,&p_2796->g_1318};
        int32_t l_2061 = 0x744D61F6L;
        int32_t *l_2068 = (void*)0;
        int32_t *l_2069 = &p_2796->g_142.f1;
        uint32_t ****l_2070 = &p_2796->g_728;
        uint8_t ******l_2072[1][4][9] = {{{&l_2071,(void*)0,&l_2071,&l_2071,(void*)0,&l_2071,&l_2071,(void*)0,&l_2071},{&l_2071,(void*)0,&l_2071,&l_2071,(void*)0,&l_2071,&l_2071,(void*)0,&l_2071},{&l_2071,(void*)0,&l_2071,&l_2071,(void*)0,&l_2071,&l_2071,(void*)0,&l_2071},{&l_2071,(void*)0,&l_2071,&l_2071,(void*)0,&l_2071,&l_2071,(void*)0,&l_2071}}};
        int8_t *l_2074 = &p_2796->g_411;
        int8_t ***l_2101 = (void*)0;
        int32_t l_2113 = (-1L);
        VECTOR(int32_t, 8) l_2150 = (VECTOR(int32_t, 8))(0x442DB4DAL, (VECTOR(int32_t, 4))(0x442DB4DAL, (VECTOR(int32_t, 2))(0x442DB4DAL, 3L), 3L), 3L, 0x442DB4DAL, 3L);
        VECTOR(uint16_t, 4) l_2152 = (VECTOR(uint16_t, 4))(0xA76CL, (VECTOR(uint16_t, 2))(0xA76CL, 2UL), 2UL);
        int32_t l_2170 = 8L;
        VECTOR(uint32_t, 2) l_2178 = (VECTOR(uint32_t, 2))(0x474766C8L, 0x65F3817BL);
        uint16_t *l_2185 = &p_2796->g_26;
        int64_t *l_2194 = (void*)0;
        int64_t *l_2195 = &p_2796->g_15;
        int64_t *l_2200[7][3] = {{(void*)0,&p_2796->g_706,&p_2796->g_706},{(void*)0,&p_2796->g_706,&p_2796->g_706},{(void*)0,&p_2796->g_706,&p_2796->g_706},{(void*)0,&p_2796->g_706,&p_2796->g_706},{(void*)0,&p_2796->g_706,&p_2796->g_706},{(void*)0,&p_2796->g_706,&p_2796->g_706},{(void*)0,&p_2796->g_706,&p_2796->g_706}};
        int i, j, k;
        (*p_46) &= (p_47 >= (p_47 | (l_2045 == l_2046)));
        if (((p_2796->g_2047 , (((safe_div_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((safe_unary_minus_func_int64_t_s((l_2053 , l_2054))) == p_44), p_47)), ((*l_2074) = (safe_lshift_func_uint16_t_u_s((l_2054 ^ ((((p_2796->g_2073[1] = ((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 8))(p_2796->g_2057.s93eff9d6)).s6052347742773601, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(9UL, 0xB6C9L)).xxxx)).zzyxxywwyxxzzzyz))).s6c)).odd , (((***l_2045) = ((((*p_46) = (safe_mul_func_uint8_t_u_u(l_2054, (((*l_2069) = ((++l_2062[2][5]) , (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 8))(p_2796->g_2067.xyyxyxyx)).s5, 0xFB9873F2L)))) , (l_2070 != l_2070))))) < p_45) <= p_47)) , (-1L))) , l_2071)) == l_2071) | 0x21L) < p_2796->g_62)), 0))))) && 1L) | p_44)) || p_47))
        { /* block id: 812 */
            uint64_t *l_2112 = &p_2796->g_403.f1;
            uint32_t *l_2114 = &p_2796->g_70;
            int32_t l_2115 = 3L;
            VECTOR(uint16_t, 8) l_2153 = (VECTOR(uint16_t, 8))(0x03F8L, (VECTOR(uint16_t, 4))(0x03F8L, (VECTOR(uint16_t, 2))(0x03F8L, 0xC4BBL), 0xC4BBL), 0xC4BBL, 0x03F8L, 0xC4BBL);
            uint8_t ***l_2159 = &p_2796->g_1510[5][2];
            int32_t l_2169[9][9] = {{0x24CFD720L,0x57CA0C70L,(-1L),(-1L),0x24CFD720L,0x369B9EC7L,0x57CA0C70L,0x2C2AF841L,(-1L)},{0x24CFD720L,0x57CA0C70L,(-1L),(-1L),0x24CFD720L,0x369B9EC7L,0x57CA0C70L,0x2C2AF841L,(-1L)},{0x24CFD720L,0x57CA0C70L,(-1L),(-1L),0x24CFD720L,0x369B9EC7L,0x57CA0C70L,0x2C2AF841L,(-1L)},{0x24CFD720L,0x57CA0C70L,(-1L),(-1L),0x24CFD720L,0x369B9EC7L,0x57CA0C70L,0x2C2AF841L,(-1L)},{0x24CFD720L,0x57CA0C70L,(-1L),(-1L),0x24CFD720L,0x369B9EC7L,0x57CA0C70L,0x2C2AF841L,(-1L)},{0x24CFD720L,0x57CA0C70L,(-1L),(-1L),0x24CFD720L,0x369B9EC7L,0x57CA0C70L,0x2C2AF841L,(-1L)},{0x24CFD720L,0x57CA0C70L,(-1L),(-1L),0x24CFD720L,0x369B9EC7L,0x57CA0C70L,0x2C2AF841L,(-1L)},{0x24CFD720L,0x57CA0C70L,(-1L),(-1L),0x24CFD720L,0x369B9EC7L,0x57CA0C70L,0x2C2AF841L,(-1L)},{0x24CFD720L,0x57CA0C70L,(-1L),(-1L),0x24CFD720L,0x369B9EC7L,0x57CA0C70L,0x2C2AF841L,(-1L)}};
            uint8_t l_2171 = 253UL;
            int i, j;
            if ((safe_sub_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u(p_45, (***p_2796->g_1509))), (((safe_lshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s(((l_2115 = (((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))(0x59L, 0x51L)).xyyyyxxxyxyxxxxx, ((VECTOR(int8_t, 2))(0L, 0x06L)).yxxxyxyyyyxyxyyy, ((VECTOR(int8_t, 16))(1L, ((safe_div_func_uint8_t_u_u((safe_div_func_int8_t_s_s((((*****p_2796->g_982) | (*p_2796->g_180)) , (l_2113 |= (((safe_rshift_func_int16_t_s_u(((safe_sub_func_uint64_t_u_u(((*l_2112) = ((safe_div_func_int32_t_s_s(0x4493E54AL, (((safe_rshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u(((((l_2101 != (void*)0) && (safe_lshift_func_uint16_t_u_s((safe_mod_func_int32_t_s_s((((safe_lshift_func_int8_t_s_s(l_2061, 0)) != (((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(l_2110.s32)).even, l_2110.s4)) , 1L) && l_2054)) != 0x26L), (*p_46))), l_2061))) ^ l_2110.s7) & l_2111), 3)), p_44)) && 0x86L) , 0x62FC082CL))) || (*p_46))), l_2062[2][5])) || 0x0705B8FCCBCFC55BL), p_45)) ^ l_2053) || l_2061))), 0x8EL)), p_44)) , 0x73L), ((VECTOR(int8_t, 4))(9L)), l_2061, 0L, p_47, p_44, p_47, 0x3EL, 0L, 0x44L, (-3L), 0x5FL))))).sc, 2)) , l_2069) == l_2114)) , p_47), p_2796->g_689[1])) | (*p_46)), 6)), 11)) | l_2062[2][5]) || l_2116))))
            { /* block id: 816 */
                int32_t *l_2117 = &l_2054;
                int32_t *l_2118 = &p_2796->g_707;
                int32_t *l_2119 = &l_2113;
                int32_t *l_2120 = (void*)0;
                int32_t *l_2121 = &l_2061;
                int32_t *l_2122 = &l_2115;
                int32_t *l_2123 = &l_2061;
                int32_t *l_2124 = &l_2053;
                int32_t *l_2125 = &l_2115;
                int32_t *l_2126 = &p_2796->g_62;
                int32_t *l_2127 = &l_2054;
                int32_t *l_2128 = (void*)0;
                int32_t *l_2129[2];
                VECTOR(uint8_t, 4) l_2131 = (VECTOR(uint8_t, 4))(0xC1L, (VECTOR(uint8_t, 2))(0xC1L, 249UL), 249UL);
                VECTOR(int16_t, 16) l_2138 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x01BAL), 0x01BAL), 0x01BAL, 1L, 0x01BAL, (VECTOR(int16_t, 2))(1L, 0x01BAL), (VECTOR(int16_t, 2))(1L, 0x01BAL), 1L, 0x01BAL, 1L, 0x01BAL);
                int16_t l_2164 = 1L;
                int i;
                for (i = 0; i < 2; i++)
                    l_2129[i] = &p_2796->g_707;
                l_2131.w--;
                for (p_2796->g_128 = 5; (p_2796->g_128 >= 5); p_2796->g_128 = safe_add_func_int32_t_s_s(p_2796->g_128, 3))
                { /* block id: 820 */
                    int64_t *l_2141 = (void*)0;
                    VECTOR(int16_t, 16) l_2149 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x388AL), 0x388AL), 0x388AL, (-1L), 0x388AL, (VECTOR(int16_t, 2))((-1L), 0x388AL), (VECTOR(int16_t, 2))((-1L), 0x388AL), (-1L), 0x388AL, (-1L), 0x388AL);
                    int i;
                    (*l_2118) |= (*p_46);
                    (*l_2121) = ((*l_2124) ^= ((safe_mod_func_uint32_t_u_u((((VECTOR(int16_t, 16))(l_2138.s2fb8516656b1269f)).s6 > (safe_lshift_func_uint16_t_u_s((l_2112 != l_2141), 12))), (safe_sub_func_uint8_t_u_u((((*l_2117) = ((**p_2796->g_177) && (safe_add_func_int32_t_s_s(((l_2130[1][1] = ((VECTOR(uint16_t, 8))(p_2796->g_2146.yxyyyyxy)).s1) & (((((safe_add_func_uint64_t_u_u((((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 2))(0x1604L, 0x2D06L)).xyyyxyxy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_2149.s4e7f)))).wxzzzwyz))).s4 & l_2150.s6), l_2150.s0)) , (GROUP_DIVERGE(0, 1) || ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 4))(p_2796->g_2151.xyxx)).yzxzxzzzxyyxyyyx, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(l_2152.wwwz)).lo)).xxxxxyxxxyyxxyyx)).s07)))).yyxxxxyyxxxxxyxy, ((VECTOR(uint16_t, 8))(l_2153.s60212305)).s2524544072160543))).s3)) , (safe_unary_minus_func_uint16_t_u(0x1246L))) != ((*l_2074) = (safe_sub_func_int16_t_s_s(((l_2113 &= ((*p_2796->g_1508) == (l_2159 = (void*)0))) >= ((safe_mod_func_int32_t_s_s((safe_mod_func_uint32_t_u_u(p_44, (*p_46))), (****p_2796->g_983))) > p_47)), l_2115)))) > 0x71B1ED08L)), 0x4574D665L)))) , 9UL), 1L)))) > l_2164));
                }
            }
            else
            { /* block id: 830 */
                int32_t *l_2165 = &p_2796->g_62;
                int32_t *l_2166 = (void*)0;
                int32_t *l_2167 = &l_2113;
                int32_t *l_2168[2][8] = {{&l_2130[3][1],(void*)0,&l_2130[3][1],&l_2130[3][1],(void*)0,&l_2130[3][1],&l_2130[3][1],(void*)0},{&l_2130[3][1],(void*)0,&l_2130[3][1],&l_2130[3][1],(void*)0,&l_2130[3][1],&l_2130[3][1],(void*)0}};
                int i, j;
                (*p_46) = ((VECTOR(int32_t, 2))(0x5C5B7124L, 0x16642D96L)).even;
                if (l_2153.s5)
                    continue;
                if (l_2130[1][2])
                    continue;
                ++l_2171;
            }
            if ((*p_46))
                continue;
        }
        else
        { /* block id: 837 */
            if ((*p_46))
                break;
        }
        (*p_46) = l_2062[3][6];
        if (((*p_46) = (((VECTOR(int64_t, 4))(0L, (safe_add_func_uint16_t_u_u((((*p_46) && ((*p_46) ^ ((safe_lshift_func_uint8_t_u_s((l_2053 | ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(l_2178.xxxxxyyxxxyyyxxx)).hi)).s4724754642114642))).s1e, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(l_2110.s7, 0x58F7A94EL, ((VECTOR(uint32_t, 2))(0xEC19C009L, 0xA86EEC47L)), 0xE0D3A3AFL, ((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(4294967295UL, (((safe_sub_func_int64_t_s_s(((((***p_2796->g_1509) = ((safe_div_func_uint32_t_u_u(0x09FE853EL, (safe_add_func_int64_t_s_s(((((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 16))(0x911AL, 0x79D5L, ((*l_2185)++), 0UL, ((VECTOR(uint16_t, 8))(65526UL, ((*l_2185) = (p_47 < (safe_div_func_int64_t_s_s((l_2130[0][0] |= (safe_lshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s((((((((*l_2195) = l_2152.w) && l_2150.s2) , (void*)0) != p_2796->g_2196[2]) || l_2198) >= 0x4C3E1C250E55875AL), l_2199)), l_2150.s1))), 0x4E74B9F9DD8CF63BL)))), 65531UL, ((VECTOR(uint16_t, 4))(0x01EDL)), 65528UL)), p_47, 0x0A7DL, 0xE6F8L, 0x4F81L)).lo, ((VECTOR(uint16_t, 8))(0x2365L))))).even, ((VECTOR(uint32_t, 4))(0x046A1E6CL))))).w , l_2198) | l_2199), p_2796->g_1625.s7)))) , 5UL)) > 0x68L) <= (-1L)), p_45)) <= 0x5701A3D08D108B6CL) , 4294967292UL), 4294967288UL, 0x87524CA2L)).yxwxxyxw)).s41, ((VECTOR(uint32_t, 2))(0x6992F350L))))), 4UL)).s42)).xyyx, ((VECTOR(uint32_t, 4))(4294967295UL)), ((VECTOR(uint32_t, 4))(4294967287UL))))).xyxwwyxw)).s31))), 6UL, 0UL)).z), p_47)) ^ 0x0C19A545L))) || (*p_46)), l_2053)), 0x1B3721D3A3230D2CL, 9L)).z > p_47)))
        { /* block id: 847 */
            uint8_t **l_2203 = &p_2796->g_178;
            VECTOR(uint64_t, 16) l_2207 = (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551614UL), 18446744073709551614UL), 18446744073709551614UL, 18446744073709551611UL, 18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551614UL), (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551614UL), 18446744073709551611UL, 18446744073709551614UL, 18446744073709551611UL, 18446744073709551614UL);
            int i;
            (*p_46) = (safe_mod_func_uint64_t_u_u(((((-1L) ^ (((**p_2796->g_1508) = l_2203) == (void*)0)) >= (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 16))(p_2796->g_2206.s0307715063267251)).s4, FAKE_DIVERGE(p_2796->local_0_offset, get_local_id(0), 10)))) && (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_2207.sb8)).xyxyxxxxxxyyxxxx)).s37)).yxyxyyyy)).hi)).lo)).yxyyxxxxyxyxxxyy)).sb & ((l_2054 &= p_2796->g_74.s1) && (0xA21202A8L != l_2150.s5)))), (+(safe_sub_func_uint32_t_u_u(p_44, l_2053)))));
        }
        else
        { /* block id: 851 */
            union U0 ****l_2212 = (void*)0;
            union U0 ****l_2213 = &p_2796->g_1719;
            VECTOR(int32_t, 2) l_2218 = (VECTOR(int32_t, 2))(0x1850C04FL, 1L);
            int i;
            (*p_46) = l_2116;
            (*p_46) = (((safe_mul_func_uint8_t_u_u(((&p_2796->g_1943 == ((*l_2213) = &p_2796->g_1943)) == p_47), (((*****l_2071) = (l_2111 && (safe_mul_func_int16_t_s_s((((*l_2074) &= (((((*p_46) & (((safe_div_func_int16_t_s_s((l_2218.x > (p_44 ^ (((l_2150.s4 <= (p_47 ^ 6UL)) < 0UL) , 8UL))), 1L)) & 0xF773L) <= l_2152.x)) , 7L) != l_2152.y) > l_2199)) != p_44), 1L)))) > 1UL))) < p_45) && (-7L));
        }
    }
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_2796->g_65
 * writes: p_2796->g_65
 */
uint64_t  func_58(int64_t  p_59, struct S2 * p_2796)
{ /* block id: 11 */
    int32_t *l_61 = &p_2796->g_62;
    int32_t *l_63[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    --p_2796->g_65;
    return p_59;
}


/* ------------------------------------------ */
/* 
 * reads : p_2796->g_93 p_2796->g_94 p_2796->g_4 p_2796->g_62 p_2796->g_49 p_2796->g_15 p_2796->g_110 p_2796->g_26 p_2796->g_130 p_2796->g_133 p_2796->g_134 p_2796->g_142 p_2796->g_127 p_2796->g_152 p_2796->g_121 p_2796->g_135.f0 p_2796->g_168 p_2796->g_171 p_2796->g_74 p_2796->g_177 p_2796->g_178 p_2796->g_179 p_2796->g_196 p_2796->g_128 p_2796->g_199 p_2796->g_180 p_2796->g_142.f2 p_2796->g_278 p_2796->g_367 p_2796->g_440 p_2796->g_135 p_2796->g_404 p_2796->g_279 p_2796->g_169 p_2796->g_109 p_2796->g_411 p_2796->g_480 p_2796->g_492 p_2796->g_496 p_2796->g_530 p_2796->g_394 p_2796->g_544 p_2796->g_650 p_2796->g_682 p_2796->g_493 p_2796->g_688 p_2796->g_690 p_2796->g_691 p_2796->g_667 p_2796->g_704 p_2796->g_708 p_2796->g_728 p_2796->g_730 p_2796->g_689 p_2796->g_685 p_2796->g_1904 p_2796->g_994 p_2796->g_995 p_2796->g_1169 p_2796->g_1478 p_2796->g_707 p_2796->g_1508 p_2796->g_1509 p_2796->g_1510 p_2796->g_683 p_2796->g_1988 p_2796->g_1326 p_2796->g_2015 p_2796->g_919 p_2796->g_403.f2
 * writes: p_2796->g_62 p_2796->g_49 p_2796->g_121 p_2796->g_127 p_2796->g_128 p_2796->g_130 p_2796->g_26 p_2796->g_199 p_2796->g_109 p_2796->g_135.f0 p_2796->g_142.f2 p_2796->g_403.f2 p_2796->g_279 p_2796->g_304 p_2796->g_403 p_2796->g_93 p_2796->g_179 p_2796->g_178 p_2796->g_135 p_2796->g_411 p_2796->g_15 p_2796->g_492 p_2796->g_134 p_2796->g_196 p_2796->g_409 p_2796->g_683 p_2796->g_685 p_2796->g_689 p_2796->g_667 p_2796->g_708 p_2796->g_728 p_2796->g_707 p_2796->g_704 p_2796->g_706 p_2796->g_925 p_2796->g_1943 p_2796->g_1478 p_2796->g_1033 p_2796->g_995 p_2796->g_1113
 */
int64_t  func_71(uint8_t * p_72, struct S2 * p_2796)
{ /* block id: 16 */
    union U0 l_79[8] = {{0xA78915CEL},{0x7C6C5FB3L},{0xA78915CEL},{0xA78915CEL},{0x7C6C5FB3L},{0xA78915CEL},{0xA78915CEL},{0x7C6C5FB3L}};
    union U0 *l_80 = &l_79[7];
    VECTOR(int8_t, 4) l_101 = (VECTOR(int8_t, 4))(0x26L, (VECTOR(int8_t, 2))(0x26L, (-1L)), (-1L));
    VECTOR(int8_t, 2) l_102 = (VECTOR(int8_t, 2))(8L, 0x3FL);
    VECTOR(int8_t, 4) l_103 = (VECTOR(int8_t, 4))(0x49L, (VECTOR(int8_t, 2))(0x49L, (-10L)), (-10L));
    uint8_t *l_104 = &p_2796->g_49;
    uint8_t **l_105 = &l_104;
    int32_t *l_106 = (void*)0;
    int32_t *l_107 = &p_2796->g_62;
    uint64_t *l_754 = &p_2796->g_135.f1;
    uint64_t *l_755 = &p_2796->g_403.f1;
    uint64_t *l_756 = &p_2796->g_135.f1;
    uint64_t *l_757 = &p_2796->g_403.f1;
    uint64_t *l_758 = &p_2796->g_135.f1;
    uint64_t *l_759 = (void*)0;
    uint64_t *l_760 = (void*)0;
    int32_t l_761 = 0x54985D18L;
    uint64_t *l_762 = &l_79[3].f1;
    uint64_t *l_763 = (void*)0;
    uint64_t *l_764 = &p_2796->g_135.f1;
    uint64_t *l_765 = &l_79[3].f1;
    uint64_t *l_766 = &p_2796->g_403.f1;
    int32_t l_767 = 0x41746B38L;
    uint64_t *l_768 = &p_2796->g_135.f1;
    uint64_t *l_769 = &p_2796->g_135.f1;
    uint64_t *l_770 = &p_2796->g_403.f1;
    uint64_t *l_771 = (void*)0;
    uint64_t *l_772 = (void*)0;
    uint64_t *l_773 = &p_2796->g_135.f1;
    int32_t l_774 = 9L;
    uint64_t *l_775 = &p_2796->g_135.f1;
    uint64_t *l_776[8][7];
    int64_t *l_779[10] = {&p_2796->g_15,&p_2796->g_15,&p_2796->g_15,&p_2796->g_15,&p_2796->g_15,&p_2796->g_15,&p_2796->g_15,&p_2796->g_15,&p_2796->g_15,&p_2796->g_15};
    uint32_t l_786 = 0UL;
    int8_t *l_787 = &p_2796->g_411;
    uint32_t ***l_797 = &p_2796->g_179[4];
    int32_t l_819 = 2L;
    uint16_t l_820[6][3] = {{0xD9E9L,0xD9E9L,0x1499L},{0xD9E9L,0xD9E9L,0x1499L},{0xD9E9L,0xD9E9L,0x1499L},{0xD9E9L,0xD9E9L,0x1499L},{0xD9E9L,0xD9E9L,0x1499L},{0xD9E9L,0xD9E9L,0x1499L}};
    int32_t l_834 = (-10L);
    int16_t *l_837 = (void*)0;
    VECTOR(uint8_t, 4) l_851 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x60L), 0x60L);
    uint8_t l_870 = 255UL;
    int32_t l_955 = 0x727D0C6DL;
    int32_t l_957 = 0x142EF135L;
    int32_t l_958 = (-1L);
    int32_t l_960 = 1L;
    int32_t l_961 = 1L;
    int32_t l_962 = 0x75D192F2L;
    int32_t l_963 = 0x35B8163DL;
    int32_t l_965[3];
    int32_t l_981 = 0x103175E3L;
    int64_t *l_993[1];
    int64_t **l_992 = &l_993[0];
    VECTOR(uint8_t, 2) l_1026 = (VECTOR(uint8_t, 2))(1UL, 0x5AL);
    VECTOR(uint8_t, 8) l_1027 = (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 3UL), 3UL), 3UL, 6UL, 3UL);
    VECTOR(int16_t, 2) l_1052 = (VECTOR(int16_t, 2))((-9L), 0L);
    VECTOR(uint32_t, 16) l_1055 = (VECTOR(uint32_t, 16))(0x7CF50D78L, (VECTOR(uint32_t, 4))(0x7CF50D78L, (VECTOR(uint32_t, 2))(0x7CF50D78L, 6UL), 6UL), 6UL, 0x7CF50D78L, 6UL, (VECTOR(uint32_t, 2))(0x7CF50D78L, 6UL), (VECTOR(uint32_t, 2))(0x7CF50D78L, 6UL), 0x7CF50D78L, 6UL, 0x7CF50D78L, 6UL);
    int16_t l_1111 = 0x24F7L;
    VECTOR(int32_t, 8) l_1156 = (VECTOR(int32_t, 8))(0x55BB385BL, (VECTOR(int32_t, 4))(0x55BB385BL, (VECTOR(int32_t, 2))(0x55BB385BL, 0x10C0720DL), 0x10C0720DL), 0x10C0720DL, 0x55BB385BL, 0x10C0720DL);
    VECTOR(int64_t, 8) l_1162 = (VECTOR(int64_t, 8))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), (-1L)), (-1L)), (-1L), (-10L), (-1L));
    uint32_t **l_1174 = &p_2796->g_180;
    uint16_t *l_1196 = (void*)0;
    uint16_t **l_1195 = &l_1196;
    uint8_t **l_1211 = &p_2796->g_178;
    int32_t l_1212[6] = {1L,1L,1L,1L,1L,1L};
    VECTOR(uint8_t, 16) l_1215 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x04L), 0x04L), 0x04L, 255UL, 0x04L, (VECTOR(uint8_t, 2))(255UL, 0x04L), (VECTOR(uint8_t, 2))(255UL, 0x04L), 255UL, 0x04L, 255UL, 0x04L);
    VECTOR(int16_t, 8) l_1228 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 6L), 6L), 6L, (-1L), 6L);
    VECTOR(int16_t, 2) l_1231 = (VECTOR(int16_t, 2))((-1L), (-1L));
    int8_t **l_1262[1];
    uint32_t ***l_1279 = &p_2796->g_1185;
    uint8_t l_1280[7][2][1] = {{{1UL},{1UL}},{{1UL},{1UL}},{{1UL},{1UL}},{{1UL},{1UL}},{{1UL},{1UL}},{{1UL},{1UL}},{{1UL},{1UL}}};
    uint64_t l_1300 = 18446744073709551613UL;
    VECTOR(uint16_t, 8) l_1303 = (VECTOR(uint16_t, 8))(0xAF25L, (VECTOR(uint16_t, 4))(0xAF25L, (VECTOR(uint16_t, 2))(0xAF25L, 0xFE29L), 0xFE29L), 0xFE29L, 0xAF25L, 0xFE29L);
    VECTOR(int16_t, 16) l_1311 = (VECTOR(int16_t, 16))(0x0131L, (VECTOR(int16_t, 4))(0x0131L, (VECTOR(int16_t, 2))(0x0131L, 0x36BDL), 0x36BDL), 0x36BDL, 0x0131L, 0x36BDL, (VECTOR(int16_t, 2))(0x0131L, 0x36BDL), (VECTOR(int16_t, 2))(0x0131L, 0x36BDL), 0x0131L, 0x36BDL, 0x0131L, 0x36BDL);
    VECTOR(int64_t, 4) l_1322 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 4L), 4L);
    int64_t l_1335 = 0x210076E99F3C71A3L;
    VECTOR(uint16_t, 16) l_1361 = (VECTOR(uint16_t, 16))(0x5D86L, (VECTOR(uint16_t, 4))(0x5D86L, (VECTOR(uint16_t, 2))(0x5D86L, 0x5765L), 0x5765L), 0x5765L, 0x5D86L, 0x5765L, (VECTOR(uint16_t, 2))(0x5D86L, 0x5765L), (VECTOR(uint16_t, 2))(0x5D86L, 0x5765L), 0x5D86L, 0x5765L, 0x5D86L, 0x5765L);
    VECTOR(int64_t, 2) l_1374 = (VECTOR(int64_t, 2))(0x3BB33A2EF9AAFC42L, 0x2CA19F85AF47B3E1L);
    int32_t l_1394 = 0x3C92B172L;
    VECTOR(uint8_t, 16) l_1442 = (VECTOR(uint8_t, 16))(0xACL, (VECTOR(uint8_t, 4))(0xACL, (VECTOR(uint8_t, 2))(0xACL, 0x8CL), 0x8CL), 0x8CL, 0xACL, 0x8CL, (VECTOR(uint8_t, 2))(0xACL, 0x8CL), (VECTOR(uint8_t, 2))(0xACL, 0x8CL), 0xACL, 0x8CL, 0xACL, 0x8CL);
    uint32_t ******l_1447 = &p_2796->g_982;
    uint8_t ****l_1506 = (void*)0;
    VECTOR(int32_t, 2) l_1526 = (VECTOR(int32_t, 2))(0x679A6E30L, 0x712D2432L);
    int8_t l_1558 = 0x78L;
    VECTOR(int32_t, 2) l_1563 = (VECTOR(int32_t, 2))((-9L), 0x70363DC6L);
    VECTOR(int16_t, 8) l_1620 = (VECTOR(int16_t, 8))(0x0524L, (VECTOR(int16_t, 4))(0x0524L, (VECTOR(int16_t, 2))(0x0524L, 1L), 1L), 1L, 0x0524L, 1L);
    uint8_t *l_1630 = &l_1280[2][0][0];
    VECTOR(int8_t, 8) l_1643 = (VECTOR(int8_t, 8))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x2BL), 0x2BL), 0x2BL, 3L, 0x2BL);
    int64_t l_1706[2];
    union U0 ***l_1717 = (void*)0;
    int32_t l_1739 = (-1L);
    VECTOR(uint16_t, 16) l_1764 = (VECTOR(uint16_t, 16))(0x0FAFL, (VECTOR(uint16_t, 4))(0x0FAFL, (VECTOR(uint16_t, 2))(0x0FAFL, 0x9163L), 0x9163L), 0x9163L, 0x0FAFL, 0x9163L, (VECTOR(uint16_t, 2))(0x0FAFL, 0x9163L), (VECTOR(uint16_t, 2))(0x0FAFL, 0x9163L), 0x0FAFL, 0x9163L, 0x0FAFL, 0x9163L);
    VECTOR(int64_t, 8) l_1775 = (VECTOR(int64_t, 8))(0x7AFA2EC583AEA09BL, (VECTOR(int64_t, 4))(0x7AFA2EC583AEA09BL, (VECTOR(int64_t, 2))(0x7AFA2EC583AEA09BL, (-1L)), (-1L)), (-1L), 0x7AFA2EC583AEA09BL, (-1L));
    int8_t l_1810 = (-10L);
    int16_t l_1820 = (-1L);
    int64_t l_1926[3][1][7] = {{{6L,6L,6L,6L,6L,6L,6L}},{{6L,6L,6L,6L,6L,6L,6L}},{{6L,6L,6L,6L,6L,6L,6L}}};
    int16_t * volatile * volatile l_1990 = &p_2796->g_1989;/* VOLATILE GLOBAL l_1990 */
    int32_t l_2013 = 0x71DFD947L;
    uint8_t l_2027 = 5UL;
    uint16_t l_2036 = 0x4A7EL;
    int i, j, k;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
            l_776[i][j] = &p_2796->g_135.f1;
    }
    for (i = 0; i < 3; i++)
        l_965[i] = 0x20939428L;
    for (i = 0; i < 1; i++)
        l_993[i] = &p_2796->g_685;
    for (i = 0; i < 1; i++)
        l_1262[i] = &p_2796->g_862;
    for (i = 0; i < 2; i++)
        l_1706[i] = (-1L);
    (*l_107) = (&p_2796->g_49 != ((*l_105) = func_77((((*l_80) = l_79[3]) , func_81(((!func_84(l_79[3].f0, &p_2796->g_26, (((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 8))(1UL, (safe_mod_func_uint64_t_u_u(((((safe_unary_minus_func_int8_t_s((((((VECTOR(uint64_t, 8))(p_2796->g_93.wwxxwxyy)).s0 || (((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_2796->g_94.xyxyyxxy)).s3226006445733703)).se != ((l_79[3].f0 > ((VECTOR(uint32_t, 8))((((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(0UL, (safe_div_func_uint8_t_u_u(p_2796->g_93.z, (((*l_107) = (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))(l_101.zwxxxzwzywwwxzxz)), ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 8))(l_102.xyxxyxxy)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(1L, 0x5FL)).xxyxyyyxyyxxyxyx)).odd, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(l_103.zw)), ((VECTOR(int8_t, 2))(0x58L, 1L))))).xxxy)).wzyyywyx))).s6345210107626373))).hi)), ((VECTOR(int8_t, 4))(0x42L, ((((*l_105) = ((0UL >= (0x45L <= 9UL)) , l_104)) != &p_2796->g_49) , l_103.z), (-1L), 7L)).wxyxyzyx))).s6, p_2796->g_93.w))) , p_2796->g_4))), 0xD321L, 0xEF9FL, (*l_107), 6UL, 0xAF0FL, 0x16B0L)), 65534UL, 65535UL, (*l_107), (*l_107), 0UL, 0x4C02L, 0x3962L, 65533UL)).s3fc6, (uint16_t)p_2796->g_4))).ywwyzywzyyzzwzyx, ((VECTOR(uint16_t, 16))(5UL))))).se, l_102.y)) >= FAKE_DIVERGE(p_2796->group_1_offset, get_group_id(1), 10)) & l_79[3].f0), 4294967292UL, 4294967295UL, ((VECTOR(uint32_t, 2))(4294967295UL)), ((VECTOR(uint32_t, 2))(6UL)), 8UL)).s2) , 0x4BL))) < p_2796->g_49) != l_103.y))) , p_2796->g_49) , p_72) != &p_2796->g_49), l_79[3].f0)), 0xFC1C174CL, ((VECTOR(uint32_t, 2))(0x6EBCB29DL)), GROUP_DIVERGE(0, 1), 4UL, 4294967289UL)).even, ((VECTOR(uint32_t, 4))(1UL))))).odd)), ((VECTOR(uint32_t, 2))(0xCB06C311L)), ((VECTOR(uint32_t, 2))(1UL))))).even ^ l_101.z), p_2796->g_15, &p_2796->g_26, p_2796)) , p_2796->g_134), l_103.w, p_2796)), p_2796)));
    if (((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(((safe_lshift_func_int8_t_s_u((((safe_mul_func_uint16_t_u_u(((((*l_787) = (p_2796->g_74.s5 >= ((~((p_2796->g_93.w++) < (((((*l_80) , ((*l_107) = ((-1L) | ((p_2796->g_704.s7 = p_2796->g_667.w) , (safe_rshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((+(p_2796->g_706 = ((+(((1L <= (*l_107)) != p_2796->g_49) == (((safe_sub_func_int64_t_s_s(((void*)0 != &p_2796->g_178), 1UL)) ^ p_2796->g_691.sa) , l_786))) , (-4L)))) & 18446744073709551615UL), (*l_107))), 6)))))) <= (-1L)) < l_767) <= 1L))) | l_774))) , (*l_107)) & 0xBC6EECE521D5C5BEL), p_2796->g_689[4])) >= (**p_2796->g_177)) | p_2796->g_4), (*p_2796->g_178))) & 6L), 10)), (**p_2796->g_177))) | (-10L)))
    { /* block id: 344 */
        uint16_t **l_800 = (void*)0;
        int32_t l_801 = 0x47AEB9DDL;
        int32_t l_816 = 0x1DD1A4D1L;
        uint16_t l_823[10][10] = {{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL},{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL},{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL},{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL},{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL},{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL},{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL},{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL},{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL},{65535UL,3UL,65529UL,1UL,4UL,0xEE5AL,0xA9E1L,0x08CAL,0xA9E1L,0xEE5AL}};
        int32_t l_828[8] = {9L,9L,9L,9L,9L,9L,9L,9L};
        VECTOR(uint16_t, 2) l_829 = (VECTOR(uint16_t, 2))(0xBD48L, 0xA0D9L);
        int16_t *l_831 = &p_2796->g_152[0].f2;
        VECTOR(int8_t, 16) l_844 = (VECTOR(int8_t, 16))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), (-5L)), (-5L)), (-5L), (-7L), (-5L), (VECTOR(int8_t, 2))((-7L), (-5L)), (VECTOR(int8_t, 2))((-7L), (-5L)), (-7L), (-5L), (-7L), (-5L));
        uint64_t l_855 = 0xA8A9D3FEDDFD2E36L;
        int8_t l_868 = 0x57L;
        VECTOR(int16_t, 2) l_871 = (VECTOR(int16_t, 2))((-8L), 7L);
        uint32_t *l_895 = &p_2796->g_708;
        uint32_t l_912 = 0UL;
        VECTOR(uint8_t, 8) l_924 = (VECTOR(uint8_t, 8))(0x89L, (VECTOR(uint8_t, 4))(0x89L, (VECTOR(uint8_t, 2))(0x89L, 1UL), 1UL), 1UL, 0x89L, 1UL);
        int8_t l_935 = 0x68L;
        uint32_t ****l_978[6];
        uint32_t *****l_977 = &l_978[4];
        VECTOR(uint64_t, 2) l_1009 = (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551613UL);
        VECTOR(int16_t, 16) l_1012 = (VECTOR(int16_t, 16))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0x5606L), 0x5606L), 0x5606L, 6L, 0x5606L, (VECTOR(int16_t, 2))(6L, 0x5606L), (VECTOR(int16_t, 2))(6L, 0x5606L), 6L, 0x5606L, 6L, 0x5606L);
        VECTOR(int16_t, 8) l_1019 = (VECTOR(int16_t, 8))(0x6778L, (VECTOR(int16_t, 4))(0x6778L, (VECTOR(int16_t, 2))(0x6778L, 0x60A1L), 0x60A1L), 0x60A1L, 0x6778L, 0x60A1L);
        VECTOR(int16_t, 8) l_1047 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
        int32_t *l_1066 = &l_963;
        int32_t l_1084 = (-3L);
        uint32_t l_1094 = 4294967295UL;
        uint32_t l_1106 = 4294967289UL;
        uint64_t l_1110 = 0xF8600084B30DB849L;
        int64_t *l_1149 = &p_2796->g_685;
        VECTOR(int32_t, 4) l_1173 = (VECTOR(int32_t, 4))(0x1938DFA3L, (VECTOR(int32_t, 2))(0x1938DFA3L, 4L), 4L);
        VECTOR(int16_t, 16) l_1229 = (VECTOR(int16_t, 16))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 8L), 8L), 8L, 8L, 8L, (VECTOR(int16_t, 2))(8L, 8L), (VECTOR(int16_t, 2))(8L, 8L), 8L, 8L, 8L, 8L);
        uint32_t *l_1248 = &l_912;
        VECTOR(uint16_t, 2) l_1264 = (VECTOR(uint16_t, 2))(65531UL, 65535UL);
        VECTOR(int64_t, 4) l_1304 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x7079CD24F6531067L), 0x7079CD24F6531067L);
        uint16_t l_1343 = 65535UL;
        VECTOR(uint8_t, 16) l_1345 = (VECTOR(uint8_t, 16))(0x06L, (VECTOR(uint8_t, 4))(0x06L, (VECTOR(uint8_t, 2))(0x06L, 0x8DL), 0x8DL), 0x8DL, 0x06L, 0x8DL, (VECTOR(uint8_t, 2))(0x06L, 0x8DL), (VECTOR(uint8_t, 2))(0x06L, 0x8DL), 0x06L, 0x8DL, 0x06L, 0x8DL);
        union U0 *l_1354[8] = {(void*)0,&l_79[3],(void*)0,(void*)0,&l_79[3],(void*)0,(void*)0,&l_79[3]};
        VECTOR(int32_t, 4) l_1385 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-9L)), (-9L));
        uint8_t ***l_1387[8][9] = {{&l_105,(void*)0,(void*)0,&l_1211,(void*)0,&l_105,&l_1211,&l_1211,&l_1211},{&l_105,(void*)0,(void*)0,&l_1211,(void*)0,&l_105,&l_1211,&l_1211,&l_1211},{&l_105,(void*)0,(void*)0,&l_1211,(void*)0,&l_105,&l_1211,&l_1211,&l_1211},{&l_105,(void*)0,(void*)0,&l_1211,(void*)0,&l_105,&l_1211,&l_1211,&l_1211},{&l_105,(void*)0,(void*)0,&l_1211,(void*)0,&l_105,&l_1211,&l_1211,&l_1211},{&l_105,(void*)0,(void*)0,&l_1211,(void*)0,&l_105,&l_1211,&l_1211,&l_1211},{&l_105,(void*)0,(void*)0,&l_1211,(void*)0,&l_105,&l_1211,&l_1211,&l_1211},{&l_105,(void*)0,(void*)0,&l_1211,(void*)0,&l_105,&l_1211,&l_1211,&l_1211}};
        uint8_t ***l_1389 = (void*)0;
        uint8_t ****l_1388 = &l_1389;
        union U0 **l_1393[6];
        uint32_t **l_1395 = &p_2796->g_1326;
        int32_t l_1396 = 0L;
        uint8_t l_1409 = 1UL;
        int i, j;
        for (i = 0; i < 6; i++)
            l_978[i] = &l_797;
        for (i = 0; i < 6; i++)
            l_1393[i] = &p_2796->g_1392[3];
        (1 + 1);
    }
    else
    { /* block id: 567 */
        int64_t l_1428 = (-6L);
        VECTOR(uint8_t, 8) l_1443 = (VECTOR(uint8_t, 8))(0xDCL, (VECTOR(uint8_t, 4))(0xDCL, (VECTOR(uint8_t, 2))(0xDCL, 1UL), 1UL), 1UL, 0xDCL, 1UL);
        VECTOR(uint8_t, 16) l_1444 = (VECTOR(uint8_t, 16))(0xD8L, (VECTOR(uint8_t, 4))(0xD8L, (VECTOR(uint8_t, 2))(0xD8L, 255UL), 255UL), 255UL, 0xD8L, 255UL, (VECTOR(uint8_t, 2))(0xD8L, 255UL), (VECTOR(uint8_t, 2))(0xD8L, 255UL), 0xD8L, 255UL, 0xD8L, 255UL);
        uint64_t **l_1451 = &l_776[5][2];
        VECTOR(int32_t, 2) l_1470 = (VECTOR(int32_t, 2))(0x05DD9D39L, 0x6D4D2198L);
        int32_t l_1486 = (-8L);
        int32_t l_1488[4][10] = {{0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L},{0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L},{0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L},{0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L,0x7484AA10L,0x48D694C7L,0x48D694C7L}};
        uint32_t ****l_1503 = &l_797;
        uint32_t l_1527 = 0UL;
        int16_t l_1529 = 0x3D2CL;
        uint16_t l_1533 = 65526UL;
        VECTOR(int8_t, 16) l_1542 = (VECTOR(int8_t, 16))(0x3DL, (VECTOR(int8_t, 4))(0x3DL, (VECTOR(int8_t, 2))(0x3DL, (-10L)), (-10L)), (-10L), 0x3DL, (-10L), (VECTOR(int8_t, 2))(0x3DL, (-10L)), (VECTOR(int8_t, 2))(0x3DL, (-10L)), 0x3DL, (-10L), 0x3DL, (-10L));
        VECTOR(uint16_t, 2) l_1584 = (VECTOR(uint16_t, 2))(65529UL, 0xAD9FL);
        int64_t l_1604 = 0x3FCE11726D471DE3L;
        union U0 *l_1616 = &p_2796->g_403;
        VECTOR(uint32_t, 16) l_1628 = (VECTOR(uint32_t, 16))(0xA432310CL, (VECTOR(uint32_t, 4))(0xA432310CL, (VECTOR(uint32_t, 2))(0xA432310CL, 4294967295UL), 4294967295UL), 4294967295UL, 0xA432310CL, 4294967295UL, (VECTOR(uint32_t, 2))(0xA432310CL, 4294967295UL), (VECTOR(uint32_t, 2))(0xA432310CL, 4294967295UL), 0xA432310CL, 4294967295UL, 0xA432310CL, 4294967295UL);
        int64_t l_1634[10];
        int32_t *l_1659 = &l_1212[3];
        uint32_t l_1670 = 0x8998982CL;
        uint32_t l_1811 = 7UL;
        uint8_t l_1822 = 0x81L;
        VECTOR(int32_t, 8) l_1829 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
        uint64_t ***l_1844[8][5] = {{&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492},{&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492},{&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492},{&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492},{&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492},{&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492},{&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492},{&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492,&p_2796->g_492}};
        uint64_t ****l_1843 = &l_1844[7][0];
        VECTOR(int32_t, 2) l_1870 = (VECTOR(int32_t, 2))(0x0CCB4924L, 0x42C3AAECL);
        VECTOR(int16_t, 4) l_1872 = (VECTOR(int16_t, 4))(0x1304L, (VECTOR(int16_t, 2))(0x1304L, 0L), 0L);
        uint16_t **l_1908 = &l_1196;
        uint16_t **l_1909 = &l_1196;
        VECTOR(uint64_t, 2) l_1933 = (VECTOR(uint64_t, 2))(0UL, 0x8C662323ED8AF291L);
        union U0 ***l_1942[6][4] = {{&p_2796->g_304,&p_2796->g_304,&p_2796->g_304,&p_2796->g_304},{&p_2796->g_304,&p_2796->g_304,&p_2796->g_304,&p_2796->g_304},{&p_2796->g_304,&p_2796->g_304,&p_2796->g_304,&p_2796->g_304},{&p_2796->g_304,&p_2796->g_304,&p_2796->g_304,&p_2796->g_304},{&p_2796->g_304,&p_2796->g_304,&p_2796->g_304,&p_2796->g_304},{&p_2796->g_304,&p_2796->g_304,&p_2796->g_304,&p_2796->g_304}};
        int i, j;
        for (i = 0; i < 10; i++)
            l_1634[i] = 1L;
        (*l_107) |= l_1428;
        for (p_2796->g_685 = 0; (p_2796->g_685 <= (-24)); p_2796->g_685--)
        { /* block id: 571 */
            VECTOR(int8_t, 8) l_1441 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L);
            int16_t l_1485 = 0x35C0L;
            int32_t l_1487 = 0L;
            VECTOR(int32_t, 8) l_1490 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, (-2L)), (-2L)), (-2L), 7L, (-2L));
            int64_t *l_1521 = &p_2796->g_685;
            VECTOR(int8_t, 2) l_1543 = (VECTOR(int8_t, 2))(0x1EL, 0L);
            VECTOR(int32_t, 2) l_1573 = (VECTOR(int32_t, 2))(0x1DCC293BL, 1L);
            VECTOR(uint32_t, 4) l_1601 = (VECTOR(uint32_t, 4))(0xE962FF60L, (VECTOR(uint32_t, 2))(0xE962FF60L, 0x5BCC0752L), 0x5BCC0752L);
            VECTOR(int16_t, 2) l_1623 = (VECTOR(int16_t, 2))(0x3CE4L, (-8L));
            uint8_t *l_1629 = (void*)0;
            uint32_t *l_1635 = &l_79[3].f0;
            uint64_t l_1769 = 0xC78E59FFCDBD0B87L;
            uint8_t l_1801 = 251UL;
            union U0 *l_1813 = &p_2796->g_135;
            int32_t *l_1814 = &p_2796->g_62;
            int32_t *l_1815 = &p_2796->g_62;
            int32_t *l_1816 = &l_965[1];
            int32_t *l_1817 = &l_1486;
            int32_t *l_1818[2];
            int64_t l_1819 = 0x0B69450900A3A01FL;
            int32_t l_1821 = 0x7F84DBE8L;
            uint32_t ****l_1833 = (void*)0;
            uint64_t ****l_1848 = (void*)0;
            uint16_t l_1851 = 0xD2F4L;
            uint32_t ***l_1854[3][2][4] = {{{&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185},{&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185}},{{&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185},{&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185}},{{&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185},{&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185}}};
            VECTOR(int32_t, 16) l_1867 = (VECTOR(int32_t, 16))(0x56CFF492L, (VECTOR(int32_t, 4))(0x56CFF492L, (VECTOR(int32_t, 2))(0x56CFF492L, (-1L)), (-1L)), (-1L), 0x56CFF492L, (-1L), (VECTOR(int32_t, 2))(0x56CFF492L, (-1L)), (VECTOR(int32_t, 2))(0x56CFF492L, (-1L)), 0x56CFF492L, (-1L), 0x56CFF492L, (-1L));
            VECTOR(int32_t, 4) l_1868 = (VECTOR(int32_t, 4))(0x17CFA6A3L, (VECTOR(int32_t, 2))(0x17CFA6A3L, (-1L)), (-1L));
            VECTOR(int32_t, 2) l_1869 = (VECTOR(int32_t, 2))(0L, 0x736EBDB5L);
            union U0 l_1889 = {0xE2C0749CL};
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_1818[i] = &l_960;
            (1 + 1);
        }
        (*l_107) = ((*l_1659) = ((safe_sub_func_int32_t_s_s((*l_1659), ((***l_797) = (safe_rshift_func_uint8_t_u_u((~(safe_rshift_func_uint8_t_u_u(((safe_add_func_int64_t_s_s(((p_2796->g_925.y = ((((*l_757) = 0xE2990EA0D0F11172L) & ((*l_1503) != (void*)0)) | (((safe_sub_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((*l_1659), 0)), l_1926[0][0][6])) != (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 16))(((((*l_107) > ((*l_1659) > (*l_107))) < (*l_1659)) > 65535UL), 0x24CBB0D2D6021356L, ((VECTOR(uint64_t, 2))(0xF201C7A1500D4AB9L)), ((VECTOR(uint64_t, 2))(0x89E6BA744D2A91FAL)), 18446744073709551613UL, 0x22B8359CD7388EA5L, ((VECTOR(uint64_t, 2))(0xB05436F764F1886CL)), ((VECTOR(uint64_t, 4))(4UL)), 0x13F227B0714288C4L, 0xF1605E414334278EL)).s87, ((VECTOR(uint64_t, 2))(1UL))))).lo, (*l_1659)))) > (*l_107)), p_2796->g_1904.x)) != 0UL) || (*l_107)))) == 0L), 1L)) > (***p_2796->g_728)), 6))), (*l_107)))))) == 3UL));
        (*l_107) = ((safe_mul_func_uint8_t_u_u((((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(0x5C17BCE1E3B4934CL, 0xA86A16684CD085A4L)))), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(l_1933.xyyxxxxy)))).s64))).xyxx)).y, (safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s((((-4L) < 255UL) <= ((void*)0 == (*p_2796->g_994))), (((safe_lshift_func_uint16_t_u_s((!0UL), 12)) , (p_2796->g_1943 = &p_2796->g_404)) != (void*)0))), 10)), FAKE_DIVERGE(p_2796->local_2_offset, get_local_id(2), 10))))) || 0x0FE5L) >= (*l_1659)), (-1L))) < p_2796->g_1169.s2);
    }
    for (p_2796->g_1478 = 0; (p_2796->g_1478 > 40); p_2796->g_1478 = safe_add_func_int16_t_s_s(p_2796->g_1478, 1))
    { /* block id: 740 */
        uint64_t l_1948 = 0xB6C7C2C1303E9A44L;
        int8_t **l_1949 = &p_2796->g_862;
        int8_t ***l_1950 = &l_1949;
        int32_t l_1951 = 0x1ECA241DL;
        uint32_t **l_1961[4][7][8] = {{{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186}},{{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186}},{{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186}},{{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186},{&p_2796->g_1186,&p_2796->g_1186,(void*)0,&p_2796->g_1186,(void*)0,&p_2796->g_1186,&p_2796->g_1186,&p_2796->g_1186}}};
        int64_t *l_1980 = &p_2796->g_685;
        int32_t *l_2034 = &l_761;
        int32_t *l_2035[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i, j, k;
        for (p_2796->g_707 = 0; (p_2796->g_707 <= (-14)); --p_2796->g_707)
        { /* block id: 743 */
            if (l_1948)
                break;
        }
        if ((((l_1948 , ((*l_1950) = l_1949)) == &l_787) <= (l_1951 |= ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0x7FB7046A064E84D9L, 0xC0EFB64A7EAD2E12L)).yxyxxxyx)).s3)))
        { /* block id: 748 */
            uint32_t **l_1960 = &p_2796->g_1186;
            int32_t l_1962 = (-5L);
            VECTOR(int64_t, 4) l_1969 = (VECTOR(int64_t, 4))(0x32FCA494D7DB8428L, (VECTOR(int64_t, 2))(0x32FCA494D7DB8428L, (-1L)), (-1L));
            uint8_t ***l_1993 = (void*)0;
            VECTOR(uint16_t, 4) l_1996 = (VECTOR(uint16_t, 4))(0xA8E7L, (VECTOR(uint16_t, 2))(0xA8E7L, 0x9A10L), 0x9A10L);
            int i;
            (*l_107) = l_1951;
            for (p_2796->g_62 = 0; (p_2796->g_62 < (-7)); p_2796->g_62 = safe_sub_func_int32_t_s_s(p_2796->g_62, 4))
            { /* block id: 752 */
                int64_t l_1972 = (-1L);
                int64_t *l_1979 = &p_2796->g_685;
                int32_t l_1987 = 0L;
                for (p_2796->g_127 = 0; (p_2796->g_127 != 52); p_2796->g_127 = safe_add_func_int16_t_s_s(p_2796->g_127, 7))
                { /* block id: 755 */
                    uint16_t **l_1983[2];
                    int32_t l_2014 = 0x3302AFF6L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1983[i] = (void*)0;
                    for (l_786 = (-5); (l_786 <= 46); l_786++)
                    { /* block id: 758 */
                        int32_t *l_1964[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int16_t l_1965 = 0x7879L;
                        int16_t *l_1984 = (void*)0;
                        int16_t *l_1985 = &p_2796->g_152[0].f3;
                        int16_t *l_1986[9][5] = {{(void*)0,&l_1111,&p_2796->g_128,(void*)0,&l_1111},{(void*)0,&l_1111,&p_2796->g_128,(void*)0,&l_1111},{(void*)0,&l_1111,&p_2796->g_128,(void*)0,&l_1111},{(void*)0,&l_1111,&p_2796->g_128,(void*)0,&l_1111},{(void*)0,&l_1111,&p_2796->g_128,(void*)0,&l_1111},{(void*)0,&l_1111,&p_2796->g_128,(void*)0,&l_1111},{(void*)0,&l_1111,&p_2796->g_128,(void*)0,&l_1111},{(void*)0,&l_1111,&p_2796->g_128,(void*)0,&l_1111},{(void*)0,&l_1111,&p_2796->g_128,(void*)0,&l_1111}};
                        int i, j;
                        l_1951 ^= (safe_sub_func_uint8_t_u_u((l_1960 != l_1961[3][4][3]), l_1962));
                        l_1951 ^= (l_1965 && ((VECTOR(uint8_t, 2))(p_2796->g_1966.xy)).lo);
                        l_1990 = ((l_1987 |= ((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), ((VECTOR(int64_t, 16))(l_1969.ywxzzwzwwxxxyzwz)).s4)) | (((*l_787) = (p_2796->g_1033.s5 = 8L)) & (safe_mul_func_int8_t_s_s(l_1972, (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0x9D1BL, 0xF2C7L)).hi, (safe_lshift_func_int8_t_s_u((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0L, 0x3B8845E2831115DDL)).yxyxxxxx)).s7 >= ((VECTOR(int64_t, 2))(7L, 0x5996A352367E02FCL)).lo), ((0x51D4D784E47F3A38L != (((*p_2796->g_994) = l_1979) == l_1980)) <= (l_1948 == (l_1969.z & ((l_1951 = ((****p_2796->g_1508) != (((*p_2796->g_682) != l_1983[1]) <= l_1972))) <= 0x6F2CL))))))))))))) , p_2796->g_1988);
                        l_2014 = (((!l_1948) , ((VECTOR(int64_t, 4))(((*l_107) , 5L), 6L, 8L, (-1L))).y) < ((((safe_add_func_uint32_t_u_u((l_1993 != (*p_2796->g_1508)), ((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_1996.xwxz)).x, (safe_rshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(5L, 1)), ((safe_mod_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(0L, (((safe_sub_func_int32_t_s_s(((safe_add_func_int64_t_s_s((l_1962 = (safe_div_func_uint32_t_u_u((((*p_2796->g_1326) = ((*l_107) < (safe_div_func_uint64_t_u_u(0xF5236B5463D52025L, 3L)))) , (*p_2796->g_180)), l_1948))), 18446744073709551607UL)) ^ l_2013), FAKE_DIVERGE(p_2796->local_1_offset, get_local_id(1), 10))) , l_1951) > (***p_2796->g_1509)))), 0x7D20L)) == l_1972))))) && l_1951))) < l_1987) == (*l_107)) && l_1996.x));
                    }
                    (*p_2796->g_2015) = &l_1987;
                    for (l_1394 = 0; (l_1394 <= 9); l_1394 = safe_add_func_int8_t_s_s(l_1394, 1))
                    { /* block id: 774 */
                        uint32_t l_2018[6][8][5] = {{{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL}},{{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL}},{{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL}},{{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL}},{{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL}},{{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL},{0x1459F451L,0x60E56979L,1UL,0xC87E1771L,9UL}}};
                        int i, j, k;
                        ++l_2018[1][3][4];
                    }
                }
            }
            if ((*l_107))
                continue;
            l_2027 = (safe_div_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((p_2796->g_919.y == (safe_lshift_func_int8_t_s_u(l_1996.x, (****p_2796->g_1508)))), 11)), l_1948));
        }
        else
        { /* block id: 781 */
            uint8_t l_2033[8];
            int i;
            for (i = 0; i < 8; i++)
                l_2033[i] = 0x61L;
            if (l_1951)
                break;
            if (l_1951)
                break;
            if ((*l_107))
                break;
            for (l_1820 = 0; (l_1820 != 27); l_1820++)
            { /* block id: 787 */
                int8_t l_2030 = (-6L);
                (*l_107) &= l_2030;
                for (p_2796->g_403.f2 = 6; (p_2796->g_403.f2 == 43); p_2796->g_403.f2++)
                { /* block id: 791 */
                    if (l_2033[5])
                        break;
                }
                return l_2030;
            }
        }
        l_2036--;
    }
    return (*l_107);
}


/* ------------------------------------------ */
/* 
 * reads : p_2796->g_168 p_2796->g_171 p_2796->g_26 p_2796->g_74 p_2796->g_177 p_2796->g_178 p_2796->g_130 p_2796->g_179 p_2796->g_62 p_2796->g_196 p_2796->g_128 p_2796->g_199 p_2796->g_180 p_2796->g_133 p_2796->g_135.f0 p_2796->g_142.f2 p_2796->g_278 p_2796->g_367 p_2796->g_440 p_2796->g_135 p_2796->g_404 p_2796->g_279 p_2796->g_4 p_2796->g_169 p_2796->g_411 p_2796->g_109 p_2796->g_492 p_2796->g_496 p_2796->g_49 p_2796->g_93 p_2796->g_134 p_2796->g_530 p_2796->g_394 p_2796->g_94 p_2796->g_544 p_2796->g_127 p_2796->g_121 p_2796->g_650 p_2796->g_152 p_2796->g_682 p_2796->g_493 p_2796->g_688 p_2796->g_690 p_2796->g_691 p_2796->g_667 p_2796->g_704 p_2796->g_708 p_2796->g_728 p_2796->g_730 p_2796->g_480
 * writes: p_2796->g_26 p_2796->g_62 p_2796->g_130 p_2796->g_199 p_2796->g_109 p_2796->g_135.f0 p_2796->g_142.f2 p_2796->g_403.f2 p_2796->g_279 p_2796->g_304 p_2796->g_403 p_2796->g_93 p_2796->g_178 p_2796->g_411 p_2796->g_15 p_2796->g_128 p_2796->g_492 p_2796->g_134 p_2796->g_196 p_2796->g_409 p_2796->g_127 p_2796->g_683 p_2796->g_685 p_2796->g_689 p_2796->g_667 p_2796->g_708 p_2796->g_728 p_2796->g_707 p_2796->g_179 p_2796->g_135
 */
uint8_t * func_77(int32_t * p_78, struct S2 * p_2796)
{ /* block id: 33 */
    uint8_t *l_164[1][1][3];
    int32_t l_165 = 1L;
    uint64_t *l_166 = (void*)0;
    uint64_t **l_167 = &l_166;
    VECTOR(uint32_t, 8) l_170 = (VECTOR(uint32_t, 8))(0x7EC7B67EL, (VECTOR(uint32_t, 4))(0x7EC7B67EL, (VECTOR(uint32_t, 2))(0x7EC7B67EL, 0x4BFEEEDEL), 0x4BFEEEDEL), 0x4BFEEEDEL, 0x7EC7B67EL, 0x4BFEEEDEL);
    uint16_t *l_172 = (void*)0;
    uint16_t *l_173[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_176 = &p_2796->g_62;
    uint32_t **l_181 = &p_2796->g_180;
    union U0 *l_197 = &p_2796->g_135;
    int64_t l_198 = 0L;
    VECTOR(uint16_t, 16) l_204 = (VECTOR(uint16_t, 16))(0x1D02L, (VECTOR(uint16_t, 4))(0x1D02L, (VECTOR(uint16_t, 2))(0x1D02L, 0x8FC1L), 0x8FC1L), 0x8FC1L, 0x1D02L, 0x8FC1L, (VECTOR(uint16_t, 2))(0x1D02L, 0x8FC1L), (VECTOR(uint16_t, 2))(0x1D02L, 0x8FC1L), 0x1D02L, 0x8FC1L, 0x1D02L, 0x8FC1L);
    VECTOR(int64_t, 4) l_209 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x42F786672239E7E5L), 0x42F786672239E7E5L);
    uint32_t *l_210 = &p_2796->g_135.f2;
    uint32_t *l_211 = (void*)0;
    uint32_t *l_212[3];
    int32_t l_213 = 1L;
    int32_t l_214 = 0x18E7A130L;
    int32_t l_215 = 0x5722C878L;
    VECTOR(int32_t, 16) l_216 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), (-8L)), (-8L)), (-8L), (-6L), (-8L), (VECTOR(int32_t, 2))((-6L), (-8L)), (VECTOR(int32_t, 2))((-6L), (-8L)), (-6L), (-8L), (-6L), (-8L));
    uint64_t l_217 = 1UL;
    uint64_t l_220 = 18446744073709551611UL;
    int32_t *l_277 = &l_213;
    VECTOR(int64_t, 16) l_383 = (VECTOR(int64_t, 16))(0x4DEF45496BD690EFL, (VECTOR(int64_t, 4))(0x4DEF45496BD690EFL, (VECTOR(int64_t, 2))(0x4DEF45496BD690EFL, 0x59A5322FB90FAADBL), 0x59A5322FB90FAADBL), 0x59A5322FB90FAADBL, 0x4DEF45496BD690EFL, 0x59A5322FB90FAADBL, (VECTOR(int64_t, 2))(0x4DEF45496BD690EFL, 0x59A5322FB90FAADBL), (VECTOR(int64_t, 2))(0x4DEF45496BD690EFL, 0x59A5322FB90FAADBL), 0x4DEF45496BD690EFL, 0x59A5322FB90FAADBL, 0x4DEF45496BD690EFL, 0x59A5322FB90FAADBL);
    int64_t l_420 = 0L;
    uint32_t l_639 = 0xEC72EAF1L;
    uint8_t l_686[9][4][5] = {{{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL}},{{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL}},{{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL}},{{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL}},{{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL}},{{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL}},{{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL}},{{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL}},{{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL},{0x29L,0x65L,251UL,0x94L,251UL}}};
    uint32_t ****l_729 = &p_2796->g_728;
    uint32_t ***l_736 = &l_181;
    uint32_t ****l_735 = &l_736;
    uint32_t *****l_734 = &l_735;
    int32_t *l_741 = &p_2796->g_707;
    int32_t *l_742 = (void*)0;
    int32_t *l_743 = &l_215;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
                l_164[i][j][k] = &p_2796->g_127;
        }
    }
    for (i = 0; i < 3; i++)
        l_212[i] = (void*)0;
    (*l_176) = ((l_164[0][0][1] != ((l_165 = ((l_165 < ((((*l_167) = l_166) != (l_165 , p_2796->g_168)) > ((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(0xD73480D3L, ((VECTOR(uint32_t, 2))(1UL, 4294967295UL)), 0x9117D6C0L)).even)).yyxx)), ((VECTOR(uint32_t, 2))(l_170.s66)).yyxx))).yywxwwxz, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(p_2796->g_171.yyyyxyxxxyyxxxxx)).s046b)).ywwzywxz))).s1)) , l_170.s6)) , &p_2796->g_49)) != (++p_2796->g_26));
    p_2796->g_199 &= (((p_2796->g_74.s0 , p_2796->g_177) == (((**p_2796->g_177) = (*p_2796->g_178)) , ((p_2796->g_179[4] != l_181) , &p_2796->g_178))) != (safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(1L, ((*l_176) = ((*l_176) || (p_2796->g_26 &= (safe_mul_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((safe_div_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(p_2796->g_196.wzzxzyxx)))), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 16))(((l_197 != &p_2796->g_135) || (*l_176)), ((VECTOR(uint8_t, 8))(0UL)), 0x3BL, GROUP_DIVERGE(0, 1), (*l_176), ((VECTOR(uint8_t, 4))(0x60L)))).s1d, ((VECTOR(uint8_t, 2))(252UL))))))), FAKE_DIVERGE(p_2796->global_0_offset, get_global_id(0), 10), 249UL, 0x79L, l_198, 255UL, 0x91L)).s2, (*l_176))), (*l_176))), (*l_176))), 0UL)), 0x5E73L))))))), p_2796->g_128)));
    if ((((safe_sub_func_uint8_t_u_u((*l_176), (((((((safe_rshift_func_int16_t_s_u((*l_176), ((VECTOR(uint16_t, 8))(0UL, (*l_176), 0x289DL, ((VECTOR(uint16_t, 4))(l_204.sfc83)), 1UL)).s3)) || 1L) == (l_215 = (l_220 = (safe_add_func_uint16_t_u_u(((safe_add_func_int8_t_s_s((!(((**l_181) = ((void*)0 == l_173[2])) | 0x1C85CD55L)), (((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_209.xy)).yyxyxxyyyxyxxxyy)).sb , (*l_176)) < ((l_217--) && 0xC0B913E9L)) <= (*l_176)))) == (*p_2796->g_133)), (*l_176)))))) >= 0x744CL) >= FAKE_DIVERGE(p_2796->group_0_offset, get_group_id(0), 10)) || GROUP_DIVERGE(0, 1)) >= (*l_176)))) != (*l_176)) , (*p_2796->g_133)))
    { /* block id: 46 */
        VECTOR(uint32_t, 2) l_236 = (VECTOR(uint32_t, 2))(5UL, 0xF426AAB0L);
        int32_t l_247 = 0x43C847D6L;
        int32_t l_269 = 0x13D7F1B8L;
        union U0 *l_272 = &p_2796->g_135;
        int32_t l_273 = 4L;
        uint8_t *l_293 = &p_2796->g_130[7][0][0];
        union U0 **l_305 = &l_272;
        VECTOR(int32_t, 2) l_320 = (VECTOR(int32_t, 2))(0L, 1L);
        uint32_t *l_333 = (void*)0;
        VECTOR(int64_t, 4) l_384 = (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x2B86C484FBF150C9L), 0x2B86C484FBF150C9L);
        VECTOR(int32_t, 16) l_423 = (VECTOR(int32_t, 16))(0x186E9696L, (VECTOR(int32_t, 4))(0x186E9696L, (VECTOR(int32_t, 2))(0x186E9696L, 0x2073E9CAL), 0x2073E9CAL), 0x2073E9CAL, 0x186E9696L, 0x2073E9CAL, (VECTOR(int32_t, 2))(0x186E9696L, 0x2073E9CAL), (VECTOR(int32_t, 2))(0x186E9696L, 0x2073E9CAL), 0x186E9696L, 0x2073E9CAL, 0x186E9696L, 0x2073E9CAL);
        int32_t *l_437 = &l_213;
        int i;
        for (p_2796->g_135.f0 = 27; (p_2796->g_135.f0 >= 21); p_2796->g_135.f0 = safe_sub_func_uint16_t_u_u(p_2796->g_135.f0, 1))
        { /* block id: 49 */
            uint64_t *l_223 = (void*)0;
            VECTOR(uint64_t, 8) l_224 = (VECTOR(uint64_t, 8))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x341503C5535721BEL), 0x341503C5535721BEL), 0x341503C5535721BEL, 18446744073709551611UL, 0x341503C5535721BEL);
            int64_t *l_233 = &l_198;
            uint64_t *l_243[2][9] = {{&l_220,&l_220,&l_220,&l_220,&l_220,&l_220,&l_220,&l_220,&l_220},{&l_220,&l_220,&l_220,&l_220,&l_220,&l_220,&l_220,&l_220,&l_220}};
            int16_t l_246 = (-1L);
            int32_t l_256 = 0x2FD3435EL;
            int32_t l_266[4];
            uint32_t *l_267 = &p_2796->g_109;
            union U0 **l_308[6][5] = {{&p_2796->g_134,&l_197,&l_272,&p_2796->g_134,&l_272},{&p_2796->g_134,&l_197,&l_272,&p_2796->g_134,&l_272},{&p_2796->g_134,&l_197,&l_272,&p_2796->g_134,&l_272},{&p_2796->g_134,&l_197,&l_272,&p_2796->g_134,&l_272},{&p_2796->g_134,&l_197,&l_272,&p_2796->g_134,&l_272},{&p_2796->g_134,&l_197,&l_272,&p_2796->g_134,&l_272}};
            int32_t **l_387 = &l_277;
            uint16_t *l_398 = (void*)0;
            int i, j;
            for (i = 0; i < 4; i++)
                l_266[i] = (-1L);
            (1 + 1);
        }
        if ((*l_277))
        { /* block id: 171 */
            uint32_t l_429 = 0x7B0052FDL;
            int32_t *l_435 = &p_2796->g_62;
            for (p_2796->g_142.f2 = 0; (p_2796->g_142.f2 != (-4)); p_2796->g_142.f2--)
            { /* block id: 174 */
                uint8_t *l_434 = &p_2796->g_121;
                for (p_2796->g_403.f2 = 25; (p_2796->g_403.f2 > 38); p_2796->g_403.f2 = safe_add_func_uint16_t_u_u(p_2796->g_403.f2, 2))
                { /* block id: 177 */
                    int32_t *l_428 = &l_214;
                    --l_429;
                    for (p_2796->g_26 = 0; (p_2796->g_26 < 39); ++p_2796->g_26)
                    { /* block id: 181 */
                        return l_434;
                    }
                    (*p_2796->g_278) = l_435;
                }
                l_437 = p_78;
            }
        }
        else
        { /* block id: 188 */
            union U0 ***l_438 = (void*)0;
            p_2796->g_304 = &l_197;
            (*l_437) = (~1L);
        }
        (*l_176) = (((*l_277) = 0x356220A6L) > (*l_176));
    }
    else
    { /* block id: 194 */
        int32_t **l_439 = &l_176;
        union U0 *l_442 = &p_2796->g_135;
        VECTOR(int32_t, 8) l_453 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
        int32_t l_457 = (-8L);
        uint32_t **l_458 = &l_212[0];
        uint32_t **l_459[6];
        uint32_t ***l_460[9] = {&l_459[5],&l_458,&l_459[5],&l_459[5],&l_458,&l_459[5],&l_459[5],&l_458,&l_459[5]};
        int32_t l_461 = 3L;
        int32_t l_464 = (-1L);
        uint32_t l_465[2][4] = {{4294967288UL,4294967288UL,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,4294967288UL,4294967288UL}};
        uint8_t l_475 = 0x80L;
        VECTOR(int64_t, 4) l_481 = (VECTOR(int64_t, 4))(0x4E7B4C72427EA42AL, (VECTOR(int64_t, 2))(0x4E7B4C72427EA42AL, (-6L)), (-6L));
        union U0 *l_485 = &p_2796->g_403;
        int8_t l_487 = 0x2CL;
        VECTOR(uint64_t, 8) l_500 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xB92D8DC2E478CD3EL), 0xB92D8DC2E478CD3EL), 0xB92D8DC2E478CD3EL, 18446744073709551615UL, 0xB92D8DC2E478CD3EL);
        uint8_t *l_520[3];
        uint8_t l_538 = 0xDEL;
        VECTOR(int32_t, 8) l_565 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x6EBB9987L), 0x6EBB9987L), 0x6EBB9987L, (-1L), 0x6EBB9987L);
        int64_t l_595 = (-3L);
        uint64_t ***l_599 = (void*)0;
        uint8_t l_680 = 0xE3L;
        int32_t *l_711 = &l_464;
        int32_t *l_712 = (void*)0;
        int32_t *l_713 = &l_213;
        int32_t *l_714 = &l_215;
        int32_t *l_715 = &l_464;
        int32_t *l_716 = &p_2796->g_62;
        VECTOR(uint32_t, 8) l_717 = (VECTOR(uint32_t, 8))(0x5142C3F3L, (VECTOR(uint32_t, 4))(0x5142C3F3L, (VECTOR(uint32_t, 2))(0x5142C3F3L, 0x81C0154FL), 0x81C0154FL), 0x81C0154FL, 0x5142C3F3L, 0x81C0154FL);
        int i, j;
        for (i = 0; i < 6; i++)
            l_459[i] = &l_212[1];
        for (i = 0; i < 3; i++)
            l_520[i] = &p_2796->g_127;
lbl_441:
        (*p_2796->g_440) = ((*l_439) = func_81(l_197, p_2796->g_367.s7, p_2796));
lbl_508:
        if (p_2796->g_128)
            goto lbl_443;
        if ((((*p_2796->g_404) = (*l_197)) , (**p_2796->g_278)))
        { /* block id: 198 */
            if (l_217)
                goto lbl_441;
            if (p_2796->g_4)
                goto lbl_443;
lbl_443:
            (*l_439) = func_81(l_442, (**l_439), p_2796);
            if ((safe_sub_func_uint64_t_u_u((p_2796->g_93.x = ((0x3AL != 255UL) , (*p_2796->g_168))), (safe_mul_func_int8_t_s_s(0L, ((safe_mul_func_int8_t_s_s((((*p_78) != ((*p_2796->g_279) != ((*l_277) = (safe_div_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0L, 0x09D0FA47L)), 1L, 0x2E7C00A5L)).xyxzwwyzywyxzzyz, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_453.s6171)))))).xyxwwxzxzwyxzyyw, ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((safe_div_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u(((((*p_2796->g_178) = l_457) <= (((p_2796->g_179[4] = l_458) == (l_181 = l_459[5])) == (-1L))) ^ 65531UL))), 255UL)), 1L, (-8L), 6L)).xxxyzwzx)), ((VECTOR(uint16_t, 8))(65535UL))))).s4337574530234325))).odd))).s32, ((VECTOR(int32_t, 2))(0L))))).lo)), (**l_439)))))) >= p_2796->g_171.x), l_461)) ^ 4294967293UL))))))
            { /* block id: 208 */
                int32_t l_466 = 1L;
                uint8_t *l_467[7] = {&p_2796->g_49,&p_2796->g_49,&p_2796->g_49,&p_2796->g_49,&p_2796->g_49,&p_2796->g_49,&p_2796->g_49};
                VECTOR(int8_t, 16) l_470 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
                VECTOR(uint8_t, 4) l_473 = (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 0xF8L), 0xF8L);
                int32_t l_474 = 0L;
                int8_t *l_476 = &p_2796->g_411;
                uint16_t *l_482[2][6][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
                union U0 *l_486 = &p_2796->g_403;
                int i, j, k;
                if ((safe_rshift_func_uint8_t_u_u(((*l_277) == ((((l_464 == l_465[0][1]) == l_466) || ((p_2796->g_178 = l_467[1]) == (void*)0)) , (safe_mod_func_int8_t_s_s(((*l_476) &= ((((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(l_470.sac53)).wxzwzyzw, ((VECTOR(int8_t, 8))((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(l_473.ww)).even, (((((((*l_442) = (*l_197)) , (l_473.z | (l_474 ^= (*p_2796->g_180)))) >= 0x7A6107C0L) , 1UL) | l_470.s1) == (**l_439)))), l_475, 0x74L, 1L, 8L, ((VECTOR(int8_t, 2))((-3L))), (-1L))), ((VECTOR(int8_t, 8))(0L))))).s7063250425576003, ((VECTOR(int8_t, 16))(0x53L))))).s9 == p_2796->g_130[6][0][0]) == (*l_176))), (*l_277))))), l_466)))
                { /* block id: 213 */
                    int16_t *l_479 = &p_2796->g_128;
                    (*l_277) = (*p_78);
                    l_474 = (0x1D85L < (((*l_277) = (0L <= ((safe_rshift_func_int8_t_s_s(((*l_476) ^= (l_470.s2 > (p_2796->g_15 = ((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 4))((&p_2796->g_128 != l_479), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(p_2796->g_480.s5534)).hi)), 1L)).yxyyzzyxyywwzwxx, ((VECTOR(int64_t, 4))(l_481.wxzz)).zxzyyxywxzwzzzyz))).s4))), 6)) != ((void*)0 != l_482[1][5][3])))) > ((((-1L) > (safe_mod_func_int16_t_s_s(((*l_479) = (l_485 != l_486)), l_487))) & (*p_2796->g_180)) < FAKE_DIVERGE(p_2796->global_0_offset, get_global_id(0), 10))));
                }
                else
                { /* block id: 220 */
                    int32_t *l_491 = &l_214;
                    (*l_439) = (void*)0;
                    (*l_491) = ((*l_277) = (safe_unary_minus_func_int32_t_s((safe_mul_func_int16_t_s_s(p_2796->g_109, 65530UL)))));
                    (*l_439) = &l_474;
                    (*l_277) = ((**p_2796->g_440) <= (*p_2796->g_279));
                }
            }
            else
            { /* block id: 227 */
                uint64_t ***l_494 = &l_167;
                uint64_t ***l_495 = (void*)0;
                (*p_2796->g_496) = ((*l_494) = p_2796->g_492);
                return &p_2796->g_127;
            }
        }
        else
        { /* block id: 232 */
            uint8_t l_497 = 2UL;
            VECTOR(uint16_t, 2) l_501 = (VECTOR(uint16_t, 2))(0xC825L, 6UL);
            union U0 **l_506 = &p_2796->g_134;
            int64_t *l_507 = &l_198;
            uint64_t **l_518[2][3] = {{&l_166,&l_166,&l_166},{&l_166,&l_166,&l_166}};
            VECTOR(uint8_t, 4) l_527 = (VECTOR(uint8_t, 4))(0x2BL, (VECTOR(uint8_t, 2))(0x2BL, 0xD3L), 0xD3L);
            int32_t l_537 = (-1L);
            uint8_t **l_547 = &l_520[0];
            VECTOR(int32_t, 4) l_566 = (VECTOR(int32_t, 4))(0x28E92D2DL, (VECTOR(int32_t, 2))(0x28E92D2DL, 0x08266EDDL), 0x08266EDDL);
            VECTOR(int32_t, 8) l_569 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x29A95052L), 0x29A95052L), 0x29A95052L, 1L, 0x29A95052L);
            VECTOR(int8_t, 16) l_615 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x76L), 0x76L), 0x76L, 0L, 0x76L, (VECTOR(int8_t, 2))(0L, 0x76L), (VECTOR(int8_t, 2))(0L, 0x76L), 0L, 0x76L, 0L, 0x76L);
            VECTOR(int16_t, 8) l_623 = (VECTOR(int16_t, 8))(0x7F85L, (VECTOR(int16_t, 4))(0x7F85L, (VECTOR(int16_t, 2))(0x7F85L, (-5L)), (-5L)), (-5L), 0x7F85L, (-5L));
            uint32_t *l_656 = &p_2796->g_109;
            int64_t *l_684[6][9][2] = {{{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685}},{{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685}},{{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685}},{{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685}},{{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685}},{{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685},{&p_2796->g_685,&p_2796->g_685}}};
            int8_t *l_687 = &p_2796->g_411;
            uint32_t *l_705[3];
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_705[i] = &p_2796->g_135.f3;
            if (((*l_176) == ((*l_507) = ((((l_497 == (safe_add_func_int64_t_s_s(((void*)0 == &p_2796->g_403), ((VECTOR(uint64_t, 4))(l_500.s2744)).x))) ^ ((((VECTOR(uint16_t, 16))(l_501.xxxyxyxxyxyxyxxy)).s5 && p_2796->g_49) , (**l_439))) != (safe_sub_func_uint8_t_u_u(((safe_add_func_uint8_t_u_u((((*l_506) = (((void*)0 != &p_2796->g_133) , l_197)) != (void*)0), (*l_176))) & 1L), l_501.x))) | 0x26CAA6866BF25087L))))
            { /* block id: 235 */
                (*p_2796->g_440) = ((*l_439) = &l_214);
                if (p_2796->g_4)
                    goto lbl_508;
            }
            else
            { /* block id: 239 */
                uint16_t l_510 = 1UL;
                uint32_t *l_541 = (void*)0;
                uint8_t **l_549 = (void*)0;
                VECTOR(int16_t, 8) l_624 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x63E0L), 0x63E0L), 0x63E0L, 1L, 0x63E0L);
                int32_t l_630 = (-8L);
                int i;
                (*l_439) = func_81(&p_2796->g_403, p_2796->g_93.w, p_2796);
                if (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_2796->g_509.xyyxxxxxyxxxxyxx)).s20)).hi)
                { /* block id: 241 */
                    int16_t l_513 = 1L;
                    uint8_t *l_519 = (void*)0;
                    int32_t l_535 = 0x1B38A075L;
                    int32_t l_536[5];
                    uint16_t l_542 = 65528UL;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_536[i] = 0x58BCACE0L;
                    (*l_277) = (l_510 , (*p_2796->g_133));
                    (*l_277) = ((*l_277) <= (safe_add_func_uint8_t_u_u((l_513 || (safe_div_func_int64_t_s_s(l_513, ((safe_sub_func_int64_t_s_s(p_2796->g_199, ((void*)0 == l_518[1][2]))) , ((((l_520[0] = l_519) == ((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((((safe_lshift_func_uint8_t_u_u(((**l_506) , ((*p_2796->g_178) = ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(l_527.wxxxwyyyyxyyzxxz)).lo)).s3)), 0)) >= (p_2796->g_196.x |= (safe_mod_func_int64_t_s_s((p_2796->g_530 , p_2796->g_394.s0), 0x75110DCC02E8DF0FL)))) <= GROUP_DIVERGE(0, 1)), 6)), 1L)) , (void*)0)) > 1UL) , (-10L)))))), p_2796->g_135.f0)));
                    if (((l_513 || (l_527.z , ((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(4294967293UL, 4294967294UL)).yyxy)).y ^ ((l_537 = (safe_sub_func_uint16_t_u_u(l_527.x, ((VECTOR(uint16_t, 16))(((((safe_add_func_int16_t_s_s(l_513, 0x3702L)) & (*l_176)) || (p_2796->g_4 | (++l_538))) ^ ((((*p_2796->g_180) &= 0xA723A6A7L) <= (l_541 != p_78)) || 0x1DL)), ((VECTOR(uint16_t, 4))(0xA528L)), 65532UL, l_542, 0x8856L, ((VECTOR(uint16_t, 4))(65534UL)), l_536[4], ((VECTOR(uint16_t, 2))(65534UL)), 0UL)).s4))) < p_2796->g_94.x)) != 0xA4L))) <= l_536[4]))
                    { /* block id: 250 */
                        int32_t *l_543 = &l_215;
                        (*l_439) = l_543;
                        p_78 = func_81((*l_506), l_527.w, p_2796);
                    }
                    else
                    { /* block id: 253 */
                        uint8_t ***l_548 = &l_547;
                        (*l_506) = (*l_506);
                        (*l_277) ^= 0x38E1464FL;
                        (*l_277) = ((&p_2796->g_26 == (p_2796->g_544 , (l_536[0] , &p_2796->g_26))) || (safe_rshift_func_uint8_t_u_s((((*l_548) = l_547) != (l_549 = &l_519)), 7)));
                    }
                }
                else
                { /* block id: 260 */
                    uint8_t l_552 = 6UL;
                    VECTOR(int32_t, 16) l_568 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int32_t, 2))(0L, 1L), (VECTOR(int32_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
                    uint32_t ***l_570 = &l_459[5];
                    union U0 ***l_573 = &l_506;
                    int32_t l_590 = (-8L);
                    uint32_t *l_594 = (void*)0;
                    uint64_t ***l_600 = &l_167;
                    uint64_t ****l_601 = &l_600;
                    int i;
                    for (p_2796->g_409 = 0; (p_2796->g_409 > 6); p_2796->g_409 = safe_add_func_int16_t_s_s(p_2796->g_409, 1))
                    { /* block id: 263 */
                        int8_t l_572 = 0x09L;
                        p_78 = (*l_439);
                    }
                    for (l_217 = 0; (l_217 >= 42); l_217 = safe_add_func_uint32_t_u_u(l_217, 5))
                    { /* block id: 272 */
                        uint64_t l_583 = 0x257AD38EBAADA410L;
                        int16_t *l_591 = (void*)0;
                        int16_t *l_592 = (void*)0;
                        int16_t *l_593 = &p_2796->g_142.f2;
                        l_595 ^= (safe_mul_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u((((((((((0x3AL <= ((*l_176) <= (safe_rshift_func_int16_t_s_s((((((VECTOR(uint16_t, 16))(p_2796->g_582.xyzzzyywyzxyxwyw)).s0 || p_2796->g_199) || l_583) != (+((*l_593) = (((safe_mod_func_uint32_t_u_u(((((**l_573) != (**l_573)) != (l_568.sc | ((((((safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(0, 1), (safe_mul_func_uint8_t_u_u((*p_2796->g_178), (l_590 = 1UL))))) , (*l_277)) & (**l_439)) & l_569.s3) | l_537) < p_2796->g_109))) == l_583), l_583)) <= l_527.y) || (*p_78))))), l_583)))) >= (*l_277)) >= (**l_439)) < l_583) || l_510) , (*l_181)) == l_594) != (*p_78)) != l_510), 0x1DL)) ^ l_583) ^ 8L), (-4L)));
                        l_566.z |= (safe_unary_minus_func_int64_t_s(l_583));
                    }
                    (*l_439) = func_81((*l_506), ((p_78 == l_541) , ((l_590 ^= (((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((((((*l_277) | 1L) , ((l_599 == ((*l_601) = l_600)) && (((safe_mul_func_uint16_t_u_u((l_568.sc || (*p_78)), l_552)) , 0x62D508D4L) | 0x499A6A2BL))) , p_78) == (void*)0) , (*p_2796->g_279)), 0x411831C8L, (-9L), 1L)).even)).xxxxyyxxyyyxyxxy, (int32_t)(**l_439)))).even, ((VECTOR(int32_t, 8))((-3L))), ((VECTOR(int32_t, 8))(4L))))).s6 && 0L)) > (*p_2796->g_180))), p_2796);
                    for (p_2796->g_127 = (-9); (p_2796->g_127 == 54); ++p_2796->g_127)
                    { /* block id: 283 */
                        union U0 *l_606 = &p_2796->g_403;
                        (*l_277) |= (*p_78);
                        (*l_439) = (((+(p_78 == p_78)) == (**l_439)) , func_81(l_606, l_510, p_2796));
                        return l_164[0][0][1];
                    }
                }
                for (p_2796->g_403.f1 = (-13); (p_2796->g_403.f1 <= 11); p_2796->g_403.f1++)
                { /* block id: 291 */
                    int64_t l_618 = (-1L);
                    VECTOR(uint8_t, 16) l_626 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x54L), 0x54L), 0x54L, 0UL, 0x54L, (VECTOR(uint8_t, 2))(0UL, 0x54L), (VECTOR(uint8_t, 2))(0UL, 0x54L), 0UL, 0x54L, 0UL, 0x54L);
                    VECTOR(int16_t, 4) l_627 = (VECTOR(int16_t, 4))(0x51FCL, (VECTOR(int16_t, 2))(0x51FCL, 0L), 0L);
                    int i;
                    (*l_506) = &p_2796->g_135;
                    for (l_538 = 0; (l_538 == 12); l_538++)
                    { /* block id: 295 */
                        uint64_t l_622 = 18446744073709551615UL;
                        VECTOR(int8_t, 8) l_625 = (VECTOR(int8_t, 8))(0x71L, (VECTOR(int8_t, 4))(0x71L, (VECTOR(int8_t, 2))(0x71L, 0x34L), 0x34L), 0x34L, 0x71L, 0x34L);
                        int8_t *l_629 = (void*)0;
                        int8_t *l_640 = &p_2796->g_411;
                        int32_t l_641 = 0x4600A27FL;
                        int i;
                        l_641 ^= (safe_mul_func_uint16_t_u_u(((&l_487 != (((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(2L, 0L, (+((*l_640) = ((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_615.s4281d12b)).s5, (((safe_add_func_int64_t_s_s(l_618, (l_537 ^= (((5UL & ((-1L) | (l_630 = (safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_2796->g_621.wyyx)), (0x616EFBC4L & (*p_2796->g_133)), l_622, 8L, 0x7C04L)).s26, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_623.s32)).xyyy)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(l_624.s1022)).odd, ((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_625.s6214)).even)).xyxx)).yxwyywzyywzzywww)).odd, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_626.s7385da6a)).s1060676706062321)).odd))).s40, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_627.wy)), 1L, 0L)).ywzwxwxx)).s06))))).yxyxyyyxxyyyxxxx)).s53)), 0x6CE5L, (-7L))).s5757600245165761, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(p_2796->g_628.s3570515570527203)).sb6dd)).xwzzyywwyzxyzzzw))).odd)).s0704030570252660)).s34))).even, 2))))) & ((((safe_add_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((p_2796->g_409 & GROUP_DIVERGE(0, 1)), ((safe_mod_func_int64_t_s_s((safe_sub_func_uint64_t_u_u(l_625.s6, p_2796->g_4)), l_639)) , 0x36L))), l_625.s5)) >= l_622) | 0x4CL) || (*l_277))) ^ 0x2BE2FEE4L)))) >= FAKE_DIVERGE(p_2796->group_1_offset, get_group_id(1), 10)) == l_622))) && p_2796->g_544.f0))), 0x58L, ((VECTOR(int8_t, 4))(6L)))), ((VECTOR(int8_t, 8))(0x68L)), ((VECTOR(int8_t, 8))(0x7FL))))).s4 , (void*)0)) && p_2796->g_127), p_2796->g_121));
                    }
                }
                for (l_165 = 2; (l_165 != 4); l_165 = safe_add_func_uint32_t_u_u(l_165, 6))
                { /* block id: 304 */
                    int8_t *l_644 = &l_487;
                    VECTOR(uint64_t, 4) l_647 = (VECTOR(uint64_t, 4))(0x48EB54A8DEA2B34CL, (VECTOR(uint64_t, 2))(0x48EB54A8DEA2B34CL, 0x16E3D80B4B6ED4CAL), 0x16E3D80B4B6ED4CAL);
                    uint8_t ***l_675 = &l_547;
                    int i;
                    (*l_277) = (((*l_644) = l_510) & ((((VECTOR(uint64_t, 2))(l_647.wz)).even || p_2796->g_199) & ((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_2796->g_650.s9c)), (-9L), 0x5BL)))).wyzwzxxwywyyzzxw)).sf3)).lo, (-10L))) , ((safe_unary_minus_func_uint64_t_u((safe_sub_func_int64_t_s_s(2L, (((void*)0 != &p_2796->g_279) < ((safe_rshift_func_int16_t_s_u(((void*)0 == &p_78), 0)) | (l_656 == (void*)0))))))) >= l_647.x))));
                    for (l_464 = 0; (l_464 < 3); l_464 = safe_add_func_uint32_t_u_u(l_464, 7))
                    { /* block id: 309 */
                        VECTOR(uint8_t, 4) l_668 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL);
                        int32_t l_681 = (-1L);
                        int i;
                        (*p_2796->g_133) = (((safe_rshift_func_uint16_t_u_s((**l_439), (safe_add_func_uint64_t_u_u((((*l_277) = (safe_lshift_func_uint16_t_u_s(((p_2796->g_650.se , (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(p_2796->g_667.xw)).yxxx, ((VECTOR(uint8_t, 8))(l_668.zxzywyyy)).lo))).w, FAKE_DIVERGE(p_2796->group_2_offset, get_group_id(2), 10)))) ^ 65531UL), 4))) & ((VECTOR(uint64_t, 16))((safe_sub_func_int8_t_s_s(((**l_439) , (safe_div_func_int32_t_s_s(l_630, l_668.z))), (safe_mod_func_uint32_t_u_u((l_675 == (void*)0), (safe_mod_func_int64_t_s_s((!(safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (l_681 |= l_680)))), l_624.s1)))))), ((VECTOR(uint64_t, 2))(6UL)), 1UL, ((VECTOR(uint64_t, 4))(18446744073709551615UL)), 0x646B961F0AB1F03EL, ((VECTOR(uint64_t, 4))(0x1CB79A59931891D9L)), (**l_439), 0xC7EB4EDDD3AC8D53L, 1UL)).sc), 1UL)))) , p_2796->g_152[0]) , (*l_277));
                        (*p_2796->g_682) = &p_2796->g_29;
                    }
                    return l_164[0][0][1];
                }
            }
            (*l_277) |= (((&p_78 == &p_78) && ((((((*l_687) ^= (((**p_2796->g_440) && ((p_2796->g_544 , ((*l_167) = (*l_167))) != ((p_2796->g_685 = 1L) , (*p_2796->g_492)))) , l_686[5][0][3])) <= (*l_176)) , l_615.s5) < p_2796->g_688) | (**l_439))) >= (*l_176));
            p_2796->g_689[2] = (*p_78);
            (*l_277) = (((VECTOR(uint16_t, 8))(p_2796->g_690.s554efa46)).s0 < ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(p_2796->g_691.sca10)).lo)).xxxyyxyy, (int16_t)(safe_mod_func_int8_t_s_s(((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 16))((((safe_mul_func_uint8_t_u_u((&l_166 != (((((~(((**p_2796->g_177) = l_527.y) & (++p_2796->g_667.y))) , (*p_2796->g_180)) && (*p_2796->g_180)) , (safe_mod_func_int64_t_s_s(((-1L) >= (**l_439)), (safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0UL, (((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 16))(p_2796->g_704.s5156170765346242)).s49fe))).y != ((p_2796->g_708--) , ((*l_507) = ((((l_569.s2 , &p_2796->g_178) != (void*)0) & 7UL) > 7UL)))), 248UL, 0x93L)), ((VECTOR(uint8_t, 4))(0x6AL)))).even, ((VECTOR(uint8_t, 4))(1UL))))).hi, (uint8_t)0x49L, (uint8_t)0xD8L))).yyxyyxxx)).s3, 0x92L))))) , (void*)0)), 247UL)) | 65535UL) & 246UL), ((VECTOR(int8_t, 8))(0x0BL)), 0x14L, p_2796->g_26, 0x16L, ((VECTOR(int8_t, 2))(0x07L)), 0L, (-1L))).s0, (*l_277))) && p_2796->g_708), (*l_277)))))).s7415117504071715, ((VECTOR(int16_t, 16))(0x04BEL))))).sb3, ((VECTOR(int16_t, 2))(0x4959L))))).hi);
        }
        l_717.s3++;
    }
    (*l_743) &= (p_2796->g_127 | ((((*l_277) , (safe_sub_func_int32_t_s_s((-1L), (safe_rshift_func_int8_t_s_u((safe_div_func_int32_t_s_s((safe_add_func_int64_t_s_s((&l_181 != ((*l_729) = p_2796->g_728)), (p_2796->g_730 == ((*l_734) = l_729)))), (*p_2796->g_279))), 6))))) ^ ((*l_741) = (safe_mul_func_uint16_t_u_u(((((p_2796->g_26++) < (*l_277)) == 1UL) == 0x2C93L), p_2796->g_130[3][0][0])))) < 0x49E0L));
    return &p_2796->g_127;
}


/* ------------------------------------------ */
/* 
 * reads : p_2796->g_142 p_2796->g_127 p_2796->g_152 p_2796->g_130 p_2796->g_15 p_2796->g_121 p_2796->g_135.f0 p_2796->g_62
 * writes: p_2796->g_62
 */
int32_t * func_81(union U0 * p_82, uint32_t  p_83, struct S2 * p_2796)
{ /* block id: 29 */
    VECTOR(uint64_t, 4) l_147 = (VECTOR(uint64_t, 4))(0xA845578D77B4968EL, (VECTOR(uint64_t, 2))(0xA845578D77B4968EL, 18446744073709551615UL), 18446744073709551615UL);
    VECTOR(int32_t, 16) l_150 = (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x652D3703L), 0x652D3703L), 0x652D3703L, 6L, 0x652D3703L, (VECTOR(int32_t, 2))(6L, 0x652D3703L), (VECTOR(int32_t, 2))(6L, 0x652D3703L), 6L, 0x652D3703L, 6L, 0x652D3703L);
    uint32_t *l_159 = &p_2796->g_135.f2;
    int32_t l_160 = (-6L);
    int32_t l_161 = (-5L);
    int32_t *l_162 = (void*)0;
    int32_t *l_163[9];
    int i;
    for (i = 0; i < 9; i++)
        l_163[i] = &p_2796->g_62;
    p_2796->g_62 ^= (safe_rshift_func_int16_t_s_u((safe_mod_func_int64_t_s_s((p_83 || (safe_rshift_func_int16_t_s_u((((VECTOR(uint16_t, 16))(0x00ADL, 0x70A6L, (p_2796->g_142 , ((safe_sub_func_uint32_t_u_u((safe_div_func_int64_t_s_s(p_2796->g_127, ((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_147.xx)), 2UL, 7UL)).hi, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(18446744073709551615UL, (safe_add_func_int64_t_s_s((((VECTOR(int32_t, 2))(l_150.s2a)).odd & (l_160 &= (safe_unary_minus_func_uint32_t_u((p_2796->g_152[0] , (safe_div_func_int8_t_s_s(((safe_sub_func_int8_t_s_s(0x44L, p_2796->g_130[2][0][0])) , ((p_83 > 0xF606L) != ((safe_mod_func_int8_t_s_s(8L, 8L)) >= l_150.s6))), p_83))))))), l_161)), ((VECTOR(uint64_t, 4))(2UL)), ((VECTOR(uint64_t, 2))(2UL)), p_2796->g_15, ((VECTOR(uint64_t, 2))(1UL)), 0x141200A2DC1931FAL, 0UL, p_83, 0xF0C6C1D74413540FL, 18446744073709551615UL)))).s2f))).lo)), p_2796->g_121)) ^ 0x2CL)), ((VECTOR(uint16_t, 8))(0xAEEBL)), ((VECTOR(uint16_t, 2))(0x46BCL)), ((VECTOR(uint16_t, 2))(65527UL)), 0x8928L)).s4 > (-7L)), 6))), 0xF6ABC8BB2A2B2FADL)), p_2796->g_135.f0));
    return &p_2796->g_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_2796->g_110 p_2796->g_26 p_2796->g_130 p_2796->g_133
 * writes: p_2796->g_49 p_2796->g_121 p_2796->g_127 p_2796->g_128 p_2796->g_130 p_2796->g_62
 */
uint64_t  func_84(int32_t  p_85, uint16_t * p_86, uint8_t  p_87, uint32_t  p_88, uint16_t * p_89, struct S2 * p_2796)
{ /* block id: 20 */
    uint32_t *l_108 = &p_2796->g_109;
    uint8_t *l_115 = &p_2796->g_49;
    uint32_t *l_117 = &p_2796->g_109;
    uint32_t **l_116 = &l_117;
    uint8_t *l_120 = &p_2796->g_121;
    uint8_t *l_126 = &p_2796->g_127;
    uint8_t *l_129 = &p_2796->g_130[7][0][0];
    int32_t l_131[2];
    int32_t l_132 = 0x33B6C1D0L;
    int i;
    for (i = 0; i < 2; i++)
        l_131[i] = 0x01E2AC5FL;
    (*p_2796->g_133) = ((l_108 == (((VECTOR(int16_t, 2))(p_2796->g_110.xx)).odd , l_108)) | ((safe_rshift_func_int16_t_s_s(((safe_add_func_uint32_t_u_u((((l_115 != &p_87) < (((l_108 != ((*l_116) = &p_2796->g_109)) , (~((*l_120) = ((*l_115) = (safe_lshift_func_uint8_t_u_s(0xBFL, 7)))))) > (safe_mul_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(((*l_126) = 255UL), ((*l_129) &= (p_2796->g_128 = p_2796->g_26)))), l_131[0])))) | 2L), l_132)) && l_131[0]), l_131[1])) > 4UL));
    return l_131[0];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_2797;
    struct S2* p_2796 = &c_2797;
    struct S2 c_2798 = {
        0x4EEA2A3BL, // p_2796->g_4
        1L, // p_2796->g_15
        0x0C65L, // p_2796->g_26
        0UL, // p_2796->g_30
        &p_2796->g_30, // p_2796->g_29
        1UL, // p_2796->g_49
        0x4BD1A6F3L, // p_2796->g_62
        0x6FL, // p_2796->g_64
        255UL, // p_2796->g_65
        0UL, // p_2796->g_70
        (VECTOR(uint32_t, 8))(0x2A25C95EL, (VECTOR(uint32_t, 4))(0x2A25C95EL, (VECTOR(uint32_t, 2))(0x2A25C95EL, 7UL), 7UL), 7UL, 0x2A25C95EL, 7UL), // p_2796->g_74
        (VECTOR(uint64_t, 4))(7UL, (VECTOR(uint64_t, 2))(7UL, 18446744073709551610UL), 18446744073709551610UL), // p_2796->g_93
        (VECTOR(int8_t, 2))(0x1FL, 7L), // p_2796->g_94
        0x1407F463L, // p_2796->g_109
        (VECTOR(int16_t, 2))((-1L), 1L), // p_2796->g_110
        0xCCL, // p_2796->g_121
        0x01L, // p_2796->g_127
        0x11ACL, // p_2796->g_128
        {{{0x2EL}},{{0x2EL}},{{0x2EL}},{{0x2EL}},{{0x2EL}},{{0x2EL}},{{0x2EL}},{{0x2EL}}}, // p_2796->g_130
        &p_2796->g_62, // p_2796->g_133
        {1UL}, // p_2796->g_135
        &p_2796->g_135, // p_2796->g_134
        {1L}, // p_2796->g_142
        {{0x3EL}}, // p_2796->g_152
        1UL, // p_2796->g_169
        &p_2796->g_169, // p_2796->g_168
        (VECTOR(uint32_t, 2))(4294967286UL, 4294967295UL), // p_2796->g_171
        &p_2796->g_130[7][0][0], // p_2796->g_178
        &p_2796->g_178, // p_2796->g_177
        &p_2796->g_109, // p_2796->g_180
        {&p_2796->g_180,&p_2796->g_180,&p_2796->g_180,&p_2796->g_180,&p_2796->g_180,&p_2796->g_180,&p_2796->g_180,&p_2796->g_180}, // p_2796->g_179
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 4UL), 4UL), // p_2796->g_196
        0x635219DDL, // p_2796->g_199
        &p_2796->g_4, // p_2796->g_279
        &p_2796->g_279, // p_2796->g_278
        (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, (-1L)), (-1L)), (-1L), 3L, (-1L)), // p_2796->g_283
        (void*)0, // p_2796->g_304
        (VECTOR(uint64_t, 2))(0x7BA3816290F1359EL, 18446744073709551607UL), // p_2796->g_365
        (VECTOR(uint8_t, 16))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 254UL), 254UL), 254UL, 250UL, 254UL, (VECTOR(uint8_t, 2))(250UL, 254UL), (VECTOR(uint8_t, 2))(250UL, 254UL), 250UL, 254UL, 250UL, 254UL), // p_2796->g_367
        (VECTOR(int8_t, 16))(0x0FL, (VECTOR(int8_t, 4))(0x0FL, (VECTOR(int8_t, 2))(0x0FL, 0x69L), 0x69L), 0x69L, 0x0FL, 0x69L, (VECTOR(int8_t, 2))(0x0FL, 0x69L), (VECTOR(int8_t, 2))(0x0FL, 0x69L), 0x0FL, 0x69L, 0x0FL, 0x69L), // p_2796->g_394
        {0x2EF0A67DL}, // p_2796->g_403
        &p_2796->g_403, // p_2796->g_402
        &p_2796->g_403, // p_2796->g_404
        0x17L, // p_2796->g_409
        0x79L, // p_2796->g_411
        (void*)0, // p_2796->g_436
        &p_2796->g_279, // p_2796->g_440
        (VECTOR(int64_t, 8))((-6L), (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 0x6080111D71673F1BL), 0x6080111D71673F1BL), 0x6080111D71673F1BL, (-6L), 0x6080111D71673F1BL), // p_2796->g_480
        (void*)0, // p_2796->g_493
        &p_2796->g_493, // p_2796->g_492
        &p_2796->g_492, // p_2796->g_496
        (VECTOR(int32_t, 2))((-7L), 0x65DC183FL), // p_2796->g_509
        {0L}, // p_2796->g_530
        {0L}, // p_2796->g_544
        (VECTOR(int32_t, 2))(0x71866206L, 0x1EF5ED24L), // p_2796->g_567
        (VECTOR(int32_t, 8))(0x0C8A5461L, (VECTOR(int32_t, 4))(0x0C8A5461L, (VECTOR(int32_t, 2))(0x0C8A5461L, 1L), 1L), 1L, 0x0C8A5461L, 1L), // p_2796->g_571
        (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0xF15FL), 0xF15FL), // p_2796->g_582
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 9L), 9L), // p_2796->g_621
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x2DCBL), 0x2DCBL), 0x2DCBL, (-1L), 0x2DCBL), // p_2796->g_628
        (VECTOR(int8_t, 16))(0x4FL, (VECTOR(int8_t, 4))(0x4FL, (VECTOR(int8_t, 2))(0x4FL, (-1L)), (-1L)), (-1L), 0x4FL, (-1L), (VECTOR(int8_t, 2))(0x4FL, (-1L)), (VECTOR(int8_t, 2))(0x4FL, (-1L)), 0x4FL, (-1L), 0x4FL, (-1L)), // p_2796->g_650
        (VECTOR(uint8_t, 4))(0xE8L, (VECTOR(uint8_t, 2))(0xE8L, 0xC2L), 0xC2L), // p_2796->g_667
        &p_2796->g_29, // p_2796->g_683
        &p_2796->g_683, // p_2796->g_682
        0x008D53B86C0C9EAFL, // p_2796->g_685
        249UL, // p_2796->g_688
        {0xF2C16A13L,0xF2C16A13L,0xF2C16A13L,0xF2C16A13L,0xF2C16A13L}, // p_2796->g_689
        (VECTOR(uint16_t, 16))(0xF452L, (VECTOR(uint16_t, 4))(0xF452L, (VECTOR(uint16_t, 2))(0xF452L, 0xF1C6L), 0xF1C6L), 0xF1C6L, 0xF452L, 0xF1C6L, (VECTOR(uint16_t, 2))(0xF452L, 0xF1C6L), (VECTOR(uint16_t, 2))(0xF452L, 0xF1C6L), 0xF452L, 0xF1C6L, 0xF452L, 0xF1C6L), // p_2796->g_690
        (VECTOR(int16_t, 16))(0x742DL, (VECTOR(int16_t, 4))(0x742DL, (VECTOR(int16_t, 2))(0x742DL, 0x6451L), 0x6451L), 0x6451L, 0x742DL, 0x6451L, (VECTOR(int16_t, 2))(0x742DL, 0x6451L), (VECTOR(int16_t, 2))(0x742DL, 0x6451L), 0x742DL, 0x6451L, 0x742DL, 0x6451L), // p_2796->g_691
        (VECTOR(int64_t, 8))(0x05C4C3EA0807BDA6L, (VECTOR(int64_t, 4))(0x05C4C3EA0807BDA6L, (VECTOR(int64_t, 2))(0x05C4C3EA0807BDA6L, 0x542130248E4657ADL), 0x542130248E4657ADL), 0x542130248E4657ADL, 0x05C4C3EA0807BDA6L, 0x542130248E4657ADL), // p_2796->g_704
        0x381CFC5F43943D4FL, // p_2796->g_706
        (-6L), // p_2796->g_707
        3UL, // p_2796->g_708
        &p_2796->g_179[4], // p_2796->g_728
        (void*)0, // p_2796->g_733
        {{{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733}},{{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733}},{{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733}},{{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733}},{{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733}},{{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733}},{{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733}},{{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733}},{{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733},{&p_2796->g_733,&p_2796->g_733}}}, // p_2796->g_732
        {&p_2796->g_732[3][2][0],&p_2796->g_732[3][2][0]}, // p_2796->g_731
        &p_2796->g_731[0], // p_2796->g_730
        (VECTOR(uint16_t, 4))(0xB3C2L, (VECTOR(uint16_t, 2))(0xB3C2L, 0x8142L), 0x8142L), // p_2796->g_830
        (VECTOR(int32_t, 16))(0x2F50EE4CL, (VECTOR(int32_t, 4))(0x2F50EE4CL, (VECTOR(int32_t, 2))(0x2F50EE4CL, 0x4496D3E9L), 0x4496D3E9L), 0x4496D3E9L, 0x2F50EE4CL, 0x4496D3E9L, (VECTOR(int32_t, 2))(0x2F50EE4CL, 0x4496D3E9L), (VECTOR(int32_t, 2))(0x2F50EE4CL, 0x4496D3E9L), 0x2F50EE4CL, 0x4496D3E9L, 0x2F50EE4CL, 0x4496D3E9L), // p_2796->g_845
        (VECTOR(int32_t, 2))(0x02CE9E7BL, 0x04071E47L), // p_2796->g_846
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2B105411L), 0x2B105411L), 0x2B105411L, (-1L), 0x2B105411L, (VECTOR(int32_t, 2))((-1L), 0x2B105411L), (VECTOR(int32_t, 2))((-1L), 0x2B105411L), (-1L), 0x2B105411L, (-1L), 0x2B105411L), // p_2796->g_847
        &p_2796->g_279, // p_2796->g_857
        (void*)0, // p_2796->g_862
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L), // p_2796->g_867
        (VECTOR(uint8_t, 2))(9UL, 0UL), // p_2796->g_884
        &p_2796->g_279, // p_2796->g_892
        (VECTOR(uint16_t, 2))(0x6F95L, 65527UL), // p_2796->g_919
        (VECTOR(int16_t, 2))(0x3A5CL, 0L), // p_2796->g_925
        (VECTOR(int8_t, 4))(0x33L, (VECTOR(int8_t, 2))(0x33L, (-1L)), (-1L)), // p_2796->g_930
        &p_2796->g_279, // p_2796->g_950
        &p_2796->g_728, // p_2796->g_983
        &p_2796->g_983, // p_2796->g_982
        &p_2796->g_279, // p_2796->g_989
        &p_2796->g_685, // p_2796->g_995
        &p_2796->g_995, // p_2796->g_994
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 1UL), 1UL, 18446744073709551615UL, 1UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 18446744073709551615UL, 1UL, 18446744073709551615UL, 1UL), // p_2796->g_1008
        (VECTOR(int16_t, 2))((-1L), 0x2877L), // p_2796->g_1020
        (VECTOR(uint8_t, 2))(0x1EL, 0xCAL), // p_2796->g_1024
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x0FL), 0x0FL), 0x0FL, 0UL, 0x0FL), // p_2796->g_1025
        (VECTOR(int8_t, 8))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 9L), 9L), 9L, 5L, 9L), // p_2796->g_1032
        (VECTOR(int8_t, 8))(0x04L, (VECTOR(int8_t, 4))(0x04L, (VECTOR(int8_t, 2))(0x04L, 0x05L), 0x05L), 0x05L, 0x04L, 0x05L), // p_2796->g_1033
        (VECTOR(int32_t, 16))(0x5342F748L, (VECTOR(int32_t, 4))(0x5342F748L, (VECTOR(int32_t, 2))(0x5342F748L, 3L), 3L), 3L, 0x5342F748L, 3L, (VECTOR(int32_t, 2))(0x5342F748L, 3L), (VECTOR(int32_t, 2))(0x5342F748L, 3L), 0x5342F748L, 3L, 0x5342F748L, 3L), // p_2796->g_1046
        (VECTOR(uint16_t, 16))(0x1DD8L, (VECTOR(uint16_t, 4))(0x1DD8L, (VECTOR(uint16_t, 2))(0x1DD8L, 0UL), 0UL), 0UL, 0x1DD8L, 0UL, (VECTOR(uint16_t, 2))(0x1DD8L, 0UL), (VECTOR(uint16_t, 2))(0x1DD8L, 0UL), 0x1DD8L, 0UL, 0x1DD8L, 0UL), // p_2796->g_1048
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xE774L), 0xE774L), // p_2796->g_1050
        (VECTOR(uint16_t, 2))(0xD60FL, 65526UL), // p_2796->g_1051
        (VECTOR(uint64_t, 4))(0xD55DFA6757DF0DEBL, (VECTOR(uint64_t, 2))(0xD55DFA6757DF0DEBL, 18446744073709551615UL), 18446744073709551615UL), // p_2796->g_1056
        4294967293UL, // p_2796->g_1113
        &p_2796->g_492, // p_2796->g_1143
        (void*)0, // p_2796->g_1144
        {&p_2796->g_1143,&p_2796->g_1143,&p_2796->g_1143,&p_2796->g_1143,&p_2796->g_1143}, // p_2796->g_1142
        (VECTOR(int8_t, 8))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, (-2L)), (-2L)), (-2L), 3L, (-2L)), // p_2796->g_1169
        (VECTOR(int32_t, 16))(0x5765582DL, (VECTOR(int32_t, 4))(0x5765582DL, (VECTOR(int32_t, 2))(0x5765582DL, 8L), 8L), 8L, 0x5765582DL, 8L, (VECTOR(int32_t, 2))(0x5765582DL, 8L), (VECTOR(int32_t, 2))(0x5765582DL, 8L), 0x5765582DL, 8L, 0x5765582DL, 8L), // p_2796->g_1172
        &p_2796->g_279, // p_2796->g_1179
        0xD484375CL, // p_2796->g_1182
        (void*)0, // p_2796->g_1183
        (void*)0, // p_2796->g_1186
        &p_2796->g_1186, // p_2796->g_1185
        {{{&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185},{&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185},{&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185,&p_2796->g_1185}}}, // p_2796->g_1184
        (VECTOR(int8_t, 8))(0x72L, (VECTOR(int8_t, 4))(0x72L, (VECTOR(int8_t, 2))(0x72L, 3L), 3L), 3L, 0x72L, 3L), // p_2796->g_1223
        (VECTOR(int16_t, 8))(0x1CA5L, (VECTOR(int16_t, 4))(0x1CA5L, (VECTOR(int16_t, 2))(0x1CA5L, (-9L)), (-9L)), (-9L), 0x1CA5L, (-9L)), // p_2796->g_1230
        (VECTOR(int16_t, 8))(0x658EL, (VECTOR(int16_t, 4))(0x658EL, (VECTOR(int16_t, 2))(0x658EL, 1L), 1L), 1L, 0x658EL, 1L), // p_2796->g_1232
        (VECTOR(int16_t, 2))((-1L), 0x65C2L), // p_2796->g_1234
        &p_2796->g_402, // p_2796->g_1257
        (VECTOR(int16_t, 16))(0x6DCFL, (VECTOR(int16_t, 4))(0x6DCFL, (VECTOR(int16_t, 2))(0x6DCFL, 0x0E65L), 0x0E65L), 0x0E65L, 0x6DCFL, 0x0E65L, (VECTOR(int16_t, 2))(0x6DCFL, 0x0E65L), (VECTOR(int16_t, 2))(0x6DCFL, 0x0E65L), 0x6DCFL, 0x0E65L, 0x6DCFL, 0x0E65L), // p_2796->g_1285
        {{0L},{0L}}, // p_2796->g_1312
        18446744073709551614UL, // p_2796->g_1318
        &p_2796->g_1113, // p_2796->g_1326
        (VECTOR(uint8_t, 4))(0x8CL, (VECTOR(uint8_t, 2))(0x8CL, 1UL), 1UL), // p_2796->g_1346
        (VECTOR(int32_t, 16))(0x6FDFA3AEL, (VECTOR(int32_t, 4))(0x6FDFA3AEL, (VECTOR(int32_t, 2))(0x6FDFA3AEL, (-1L)), (-1L)), (-1L), 0x6FDFA3AEL, (-1L), (VECTOR(int32_t, 2))(0x6FDFA3AEL, (-1L)), (VECTOR(int32_t, 2))(0x6FDFA3AEL, (-1L)), 0x6FDFA3AEL, (-1L), 0x6FDFA3AEL, (-1L)), // p_2796->g_1363
        &p_2796->g_279, // p_2796->g_1378
        {&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}, // p_2796->g_1379
        {{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279},{&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279,&p_2796->g_279}}, // p_2796->g_1380
        {&p_2796->g_403,&p_2796->g_403,&p_2796->g_403,&p_2796->g_403,&p_2796->g_403}, // p_2796->g_1392
        (VECTOR(int8_t, 2))(0x32L, 0x73L), // p_2796->g_1427
        (VECTOR(int32_t, 16))(0x73E23CFDL, (VECTOR(int32_t, 4))(0x73E23CFDL, (VECTOR(int32_t, 2))(0x73E23CFDL, 0x6A8E2064L), 0x6A8E2064L), 0x6A8E2064L, 0x73E23CFDL, 0x6A8E2064L, (VECTOR(int32_t, 2))(0x73E23CFDL, 0x6A8E2064L), (VECTOR(int32_t, 2))(0x73E23CFDL, 0x6A8E2064L), 0x73E23CFDL, 0x6A8E2064L, 0x73E23CFDL, 0x6A8E2064L), // p_2796->g_1469
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x605321A0L), 0x605321A0L), 0x605321A0L, 0L, 0x605321A0L, (VECTOR(int32_t, 2))(0L, 0x605321A0L), (VECTOR(int32_t, 2))(0L, 0x605321A0L), 0L, 0x605321A0L, 0L, 0x605321A0L), // p_2796->g_1472
        0xF0509370L, // p_2796->g_1478
        {{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178},{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178},{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178},{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178},{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178},{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178},{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178},{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178},{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178},{&p_2796->g_178,&p_2796->g_178,&p_2796->g_178}}, // p_2796->g_1510
        &p_2796->g_1510[5][2], // p_2796->g_1509
        &p_2796->g_1509, // p_2796->g_1508
        (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967288UL), 4294967288UL), 4294967288UL, 1UL, 4294967288UL), // p_2796->g_1522
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x1047CE18L), 0x1047CE18L), 0x1047CE18L, 0L, 0x1047CE18L, (VECTOR(int32_t, 2))(0L, 0x1047CE18L), (VECTOR(int32_t, 2))(0L, 0x1047CE18L), 0L, 0x1047CE18L, 0L, 0x1047CE18L), // p_2796->g_1525
        &p_2796->g_279, // p_2796->g_1541
        (VECTOR(int8_t, 2))(0x6FL, 0x29L), // p_2796->g_1553
        (VECTOR(int64_t, 16))(0x6282EEAB26B87756L, (VECTOR(int64_t, 4))(0x6282EEAB26B87756L, (VECTOR(int64_t, 2))(0x6282EEAB26B87756L, 1L), 1L), 1L, 0x6282EEAB26B87756L, 1L, (VECTOR(int64_t, 2))(0x6282EEAB26B87756L, 1L), (VECTOR(int64_t, 2))(0x6282EEAB26B87756L, 1L), 0x6282EEAB26B87756L, 1L, 0x6282EEAB26B87756L, 1L), // p_2796->g_1557
        (VECTOR(uint8_t, 8))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0x38L), 0x38L), 0x38L, 3UL, 0x38L), // p_2796->g_1564
        &p_2796->g_279, // p_2796->g_1572
        (VECTOR(int64_t, 2))(1L, 0x5872461403C34A92L), // p_2796->g_1581
        (VECTOR(uint32_t, 4))(0x00AF8A1BL, (VECTOR(uint32_t, 2))(0x00AF8A1BL, 0xBF0D1EA5L), 0xBF0D1EA5L), // p_2796->g_1602
        (VECTOR(int8_t, 16))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 1L), 1L), 1L, (-9L), 1L, (VECTOR(int8_t, 2))((-9L), 1L), (VECTOR(int8_t, 2))((-9L), 1L), (-9L), 1L, (-9L), 1L), // p_2796->g_1625
        {0L}, // p_2796->g_1631
        {(void*)0,(void*)0}, // p_2796->g_1633
        (VECTOR(int16_t, 2))(0x0790L, (-1L)), // p_2796->g_1640
        (VECTOR(int16_t, 8))(0x6640L, (VECTOR(int16_t, 4))(0x6640L, (VECTOR(int16_t, 2))(0x6640L, 0L), 0L), 0L, 0x6640L, 0L), // p_2796->g_1679
        &p_2796->g_304, // p_2796->g_1719
        0x1CF4778CL, // p_2796->g_1725
        (VECTOR(int8_t, 2))(4L, 0x6AL), // p_2796->g_1744
        (VECTOR(int64_t, 2))(1L, 0x35FF145872763901L), // p_2796->g_1772
        (VECTOR(int32_t, 2))(0x4C5BEA32L, 0x61A4F5A2L), // p_2796->g_1776
        (VECTOR(int32_t, 2))(0L, (-1L)), // p_2796->g_1777
        (VECTOR(uint64_t, 4))(0xCF95C0A6A6D45855L, (VECTOR(uint64_t, 2))(0xCF95C0A6A6D45855L, 0x7D7893988E2B9DC8L), 0x7D7893988E2B9DC8L), // p_2796->g_1782
        0x03L, // p_2796->g_1794
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 5L), 5L), 5L, 1L, 5L), // p_2796->g_1871
        (VECTOR(int32_t, 2))(0x7653043DL, (-1L)), // p_2796->g_1904
        (VECTOR(int32_t, 4))(0x4D1597EDL, (VECTOR(int32_t, 2))(0x4D1597EDL, 0x68BF52F1L), 0x68BF52F1L), // p_2796->g_1905
        &p_2796->g_1392[0], // p_2796->g_1943
        {{(void*)0},{(void*)0}}, // p_2796->g_1963
        (VECTOR(uint8_t, 2))(255UL, 255UL), // p_2796->g_1966
        (void*)0, // p_2796->g_1989
        &p_2796->g_1989, // p_2796->g_1988
        &p_2796->g_279, // p_2796->g_2015
        {0x10L}, // p_2796->g_2047
        (VECTOR(uint16_t, 16))(0xBA0DL, (VECTOR(uint16_t, 4))(0xBA0DL, (VECTOR(uint16_t, 2))(0xBA0DL, 0x901AL), 0x901AL), 0x901AL, 0xBA0DL, 0x901AL, (VECTOR(uint16_t, 2))(0xBA0DL, 0x901AL), (VECTOR(uint16_t, 2))(0xBA0DL, 0x901AL), 0xBA0DL, 0x901AL, 0xBA0DL, 0x901AL), // p_2796->g_2057
        (VECTOR(int32_t, 2))(0x657C725CL, 0x388CC77CL), // p_2796->g_2067
        {(void*)0,&p_2796->g_1508,(void*)0,(void*)0,&p_2796->g_1508,(void*)0,(void*)0,&p_2796->g_1508}, // p_2796->g_2073
        (VECTOR(uint16_t, 2))(65535UL, 0xB483L), // p_2796->g_2146
        (VECTOR(uint16_t, 2))(0x0FDCL, 65533UL), // p_2796->g_2151
        &p_2796->g_862, // p_2796->g_2197
        {&p_2796->g_2197,&p_2796->g_2197,&p_2796->g_2197}, // p_2796->g_2196
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x45FBC21BE6D622A8L), 0x45FBC21BE6D622A8L), 0x45FBC21BE6D622A8L, 1L, 0x45FBC21BE6D622A8L), // p_2796->g_2206
        (VECTOR(uint64_t, 2))(1UL, 0x618083A38503F855L), // p_2796->g_2227
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint8_t, 2))(0UL, 1UL), (VECTOR(uint8_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL), // p_2796->g_2247
        {0x70L}, // p_2796->g_2271
        (VECTOR(uint64_t, 4))(0xADC6CE29C8C17341L, (VECTOR(uint64_t, 2))(0xADC6CE29C8C17341L, 0xE14E5B8C3F0EF3C6L), 0xE14E5B8C3F0EF3C6L), // p_2796->g_2274
        0x4AL, // p_2796->g_2305
        (VECTOR(uint16_t, 2))(0x1099L, 65531UL), // p_2796->g_2316
        (VECTOR(int64_t, 16))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 1L), 1L), 1L, (-5L), 1L, (VECTOR(int64_t, 2))((-5L), 1L), (VECTOR(int64_t, 2))((-5L), 1L), (-5L), 1L, (-5L), 1L), // p_2796->g_2318
        (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x4CB0198DL), 0x4CB0198DL), 0x4CB0198DL, 6L, 0x4CB0198DL, (VECTOR(int32_t, 2))(6L, 0x4CB0198DL), (VECTOR(int32_t, 2))(6L, 0x4CB0198DL), 6L, 0x4CB0198DL, 6L, 0x4CB0198DL), // p_2796->g_2341
        0x3B4997CFD824F179L, // p_2796->g_2349
        3UL, // p_2796->g_2351
        (VECTOR(int16_t, 8))(0x24EDL, (VECTOR(int16_t, 4))(0x24EDL, (VECTOR(int16_t, 2))(0x24EDL, 0x0585L), 0x0585L), 0x0585L, 0x24EDL, 0x0585L), // p_2796->g_2412
        (VECTOR(int32_t, 8))(0x140BA3C2L, (VECTOR(int32_t, 4))(0x140BA3C2L, (VECTOR(int32_t, 2))(0x140BA3C2L, 0x6C187209L), 0x6C187209L), 0x6C187209L, 0x140BA3C2L, 0x6C187209L), // p_2796->g_2416
        (VECTOR(int8_t, 16))(0x3EL, (VECTOR(int8_t, 4))(0x3EL, (VECTOR(int8_t, 2))(0x3EL, 0x4FL), 0x4FL), 0x4FL, 0x3EL, 0x4FL, (VECTOR(int8_t, 2))(0x3EL, 0x4FL), (VECTOR(int8_t, 2))(0x3EL, 0x4FL), 0x3EL, 0x4FL, 0x3EL, 0x4FL), // p_2796->g_2451
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x0FL), 0x0FL), 0x0FL, (-1L), 0x0FL), // p_2796->g_2452
        (VECTOR(int8_t, 2))(0x64L, (-10L)), // p_2796->g_2453
        (VECTOR(uint8_t, 2))(0xE7L, 7UL), // p_2796->g_2465
        247UL, // p_2796->g_2482
        {{2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL}}, // p_2796->g_2483
        0x5CL, // p_2796->g_2484
        255UL, // p_2796->g_2485
        0x94L, // p_2796->g_2486
        0xC5L, // p_2796->g_2487
        0UL, // p_2796->g_2488
        255UL, // p_2796->g_2489
        7UL, // p_2796->g_2490
        0xFBL, // p_2796->g_2491
        246UL, // p_2796->g_2492
        0xB4L, // p_2796->g_2493
        255UL, // p_2796->g_2494
        0x29L, // p_2796->g_2495
        0x81L, // p_2796->g_2496
        255UL, // p_2796->g_2497
        {0xCBL,0UL,0xCBL,0xCBL,0UL,0xCBL,0xCBL,0UL}, // p_2796->g_2498
        0xD1L, // p_2796->g_2499
        248UL, // p_2796->g_2500
        0x74L, // p_2796->g_2501
        1UL, // p_2796->g_2502
        255UL, // p_2796->g_2503
        0xD1L, // p_2796->g_2504
        0xB5L, // p_2796->g_2505
        0xC3L, // p_2796->g_2506
        {{{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495}},{{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495}},{{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495}},{{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495}},{{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495}},{{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495}},{{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495}},{{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495},{&p_2796->g_2500,&p_2796->g_2495,(void*)0,&p_2796->g_2505,(void*)0,&p_2796->g_2495}}}, // p_2796->g_2481
        255UL, // p_2796->g_2508
        {&p_2796->g_2508,&p_2796->g_2508}, // p_2796->g_2507
        0xC2L, // p_2796->g_2510
        246UL, // p_2796->g_2511
        (VECTOR(uint8_t, 2))(0x72L, 7UL), // p_2796->g_2512
        254UL, // p_2796->g_2513
        0xC9L, // p_2796->g_2514
        247UL, // p_2796->g_2515
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xB4L), 0xB4L), 0xB4L, 1UL, 0xB4L), // p_2796->g_2516
        0UL, // p_2796->g_2517
        253UL, // p_2796->g_2518
        1UL, // p_2796->g_2519
        {{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}},{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}},{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}},{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}},{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}},{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}},{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}},{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}},{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}},{{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL},{246UL,1UL,0UL}}}, // p_2796->g_2520
        251UL, // p_2796->g_2521
        0xFBL, // p_2796->g_2522
        0x72L, // p_2796->g_2523
        {{{0x70L,0UL,0UL,0x70L,0x70L,0UL,0UL,0x70L,0x70L},{0x70L,0UL,0UL,0x70L,0x70L,0UL,0UL,0x70L,0x70L},{0x70L,0UL,0UL,0x70L,0x70L,0UL,0UL,0x70L,0x70L},{0x70L,0UL,0UL,0x70L,0x70L,0UL,0UL,0x70L,0x70L}}}, // p_2796->g_2524
        0xA2L, // p_2796->g_2525
        0xCEL, // p_2796->g_2526
        0xF3L, // p_2796->g_2527
        0x85L, // p_2796->g_2528
        1UL, // p_2796->g_2529
        {{{255UL,255UL,0UL,254UL,0x7AL,254UL}},{{255UL,255UL,0UL,254UL,0x7AL,254UL}},{{255UL,255UL,0UL,254UL,0x7AL,254UL}}}, // p_2796->g_2530
        255UL, // p_2796->g_2531
        {{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510},{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510},{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510},{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510},{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510},{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510},{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510},{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510},{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510},{&p_2796->g_2515,&p_2796->g_2515,&p_2796->g_2529,&p_2796->g_2510,&p_2796->g_2525,&p_2796->g_2510}}, // p_2796->g_2509
        {{{&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],(void*)0,&p_2796->g_2509[2][1]}},{{&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],(void*)0,&p_2796->g_2509[2][1]}},{{&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],(void*)0,&p_2796->g_2509[2][1]}},{{&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],(void*)0,&p_2796->g_2509[2][1]}},{{&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],(void*)0,&p_2796->g_2509[2][1]}},{{&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[2][0],&p_2796->g_2509[1][3],&p_2796->g_2509[2][0],(void*)0,&p_2796->g_2509[2][1]}}}, // p_2796->g_2480
        {{{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]}},{{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]}},{{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]}},{{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]}},{{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]}},{{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]},{&p_2796->g_2480[0][0][1]}}}, // p_2796->g_2479
        {&p_2796->g_2479[5][3][0],(void*)0,&p_2796->g_2479[5][3][0],&p_2796->g_2479[5][3][0],(void*)0,&p_2796->g_2479[5][3][0],&p_2796->g_2479[5][3][0]}, // p_2796->g_2478
        &p_2796->g_2479[3][4][0], // p_2796->g_2532
        {&p_2796->g_2478[5],&p_2796->g_2478[5],&p_2796->g_2478[5],&p_2796->g_2478[5],&p_2796->g_2478[5],&p_2796->g_2478[5],&p_2796->g_2478[5],&p_2796->g_2478[5],&p_2796->g_2478[5]}, // p_2796->g_2477
        &p_2796->g_2479[4][5][0], // p_2796->g_2534
        &p_2796->g_2534, // p_2796->g_2533
        {{{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533}},{{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533}},{{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533}},{{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533}},{{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533}},{{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533}},{{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533}},{{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533},{&p_2796->g_2477[4],(void*)0,&p_2796->g_2533}}}, // p_2796->g_2476
        (VECTOR(int16_t, 4))(0x6785L, (VECTOR(int16_t, 2))(0x6785L, 0x666FL), 0x666FL), // p_2796->g_2551
        (VECTOR(int16_t, 16))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x2E18L), 0x2E18L), 0x2E18L, (-7L), 0x2E18L, (VECTOR(int16_t, 2))((-7L), 0x2E18L), (VECTOR(int16_t, 2))((-7L), 0x2E18L), (-7L), 0x2E18L, (-7L), 0x2E18L), // p_2796->g_2563
        (VECTOR(uint64_t, 2))(0x150815EB7009EA5EL, 0xD8903F8D72FE409BL), // p_2796->g_2586
        {0L}, // p_2796->g_2697
        (VECTOR(uint32_t, 2))(4294967294UL, 4294967295UL), // p_2796->g_2699
        (VECTOR(int16_t, 8))(0x5E54L, (VECTOR(int16_t, 4))(0x5E54L, (VECTOR(int16_t, 2))(0x5E54L, 5L), 5L), 5L, 0x5E54L, 5L), // p_2796->g_2706
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x0A19L), 0x0A19L), 0x0A19L, 0L, 0x0A19L, (VECTOR(int16_t, 2))(0L, 0x0A19L), (VECTOR(int16_t, 2))(0L, 0x0A19L), 0L, 0x0A19L, 0L, 0x0A19L), // p_2796->g_2708
        (VECTOR(uint16_t, 8))(0xBE2CL, (VECTOR(uint16_t, 4))(0xBE2CL, (VECTOR(uint16_t, 2))(0xBE2CL, 7UL), 7UL), 7UL, 0xBE2CL, 7UL), // p_2796->g_2709
        (VECTOR(uint8_t, 2))(0x17L, 0x8AL), // p_2796->g_2710
        (VECTOR(uint64_t, 16))(0x53E2D692359C8067L, (VECTOR(uint64_t, 4))(0x53E2D692359C8067L, (VECTOR(uint64_t, 2))(0x53E2D692359C8067L, 0xE339DAC381D76D5AL), 0xE339DAC381D76D5AL), 0xE339DAC381D76D5AL, 0x53E2D692359C8067L, 0xE339DAC381D76D5AL, (VECTOR(uint64_t, 2))(0x53E2D692359C8067L, 0xE339DAC381D76D5AL), (VECTOR(uint64_t, 2))(0x53E2D692359C8067L, 0xE339DAC381D76D5AL), 0x53E2D692359C8067L, 0xE339DAC381D76D5AL, 0x53E2D692359C8067L, 0xE339DAC381D76D5AL), // p_2796->g_2715
        (VECTOR(int8_t, 2))(0L, 0L), // p_2796->g_2742
        {(-5L),(-5L),(-5L),(-5L),(-5L)}, // p_2796->g_2767
        (void*)0, // p_2796->g_2768
        {&p_2796->g_2768,&p_2796->g_2768,&p_2796->g_2768,&p_2796->g_2768,&p_2796->g_2768,&p_2796->g_2768}, // p_2796->g_2769
        &p_2796->g_2768, // p_2796->g_2770
        (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x300A021B4BC97AA4L), 0x300A021B4BC97AA4L), // p_2796->g_2775
        {{65530UL,65530UL},{65530UL,65530UL},{65530UL,65530UL}}, // p_2796->g_2785
        sequence_input[get_global_id(0)], // p_2796->global_0_offset
        sequence_input[get_global_id(1)], // p_2796->global_1_offset
        sequence_input[get_global_id(2)], // p_2796->global_2_offset
        sequence_input[get_local_id(0)], // p_2796->local_0_offset
        sequence_input[get_local_id(1)], // p_2796->local_1_offset
        sequence_input[get_local_id(2)], // p_2796->local_2_offset
        sequence_input[get_group_id(0)], // p_2796->group_0_offset
        sequence_input[get_group_id(1)], // p_2796->group_1_offset
        sequence_input[get_group_id(2)], // p_2796->group_2_offset
    };
    c_2797 = c_2798;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2796);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2796->g_4, "p_2796->g_4", print_hash_value);
    transparent_crc(p_2796->g_15, "p_2796->g_15", print_hash_value);
    transparent_crc(p_2796->g_26, "p_2796->g_26", print_hash_value);
    transparent_crc(p_2796->g_30, "p_2796->g_30", print_hash_value);
    transparent_crc(p_2796->g_49, "p_2796->g_49", print_hash_value);
    transparent_crc(p_2796->g_62, "p_2796->g_62", print_hash_value);
    transparent_crc(p_2796->g_64, "p_2796->g_64", print_hash_value);
    transparent_crc(p_2796->g_65, "p_2796->g_65", print_hash_value);
    transparent_crc(p_2796->g_70, "p_2796->g_70", print_hash_value);
    transparent_crc(p_2796->g_74.s0, "p_2796->g_74.s0", print_hash_value);
    transparent_crc(p_2796->g_74.s1, "p_2796->g_74.s1", print_hash_value);
    transparent_crc(p_2796->g_74.s2, "p_2796->g_74.s2", print_hash_value);
    transparent_crc(p_2796->g_74.s3, "p_2796->g_74.s3", print_hash_value);
    transparent_crc(p_2796->g_74.s4, "p_2796->g_74.s4", print_hash_value);
    transparent_crc(p_2796->g_74.s5, "p_2796->g_74.s5", print_hash_value);
    transparent_crc(p_2796->g_74.s6, "p_2796->g_74.s6", print_hash_value);
    transparent_crc(p_2796->g_74.s7, "p_2796->g_74.s7", print_hash_value);
    transparent_crc(p_2796->g_93.x, "p_2796->g_93.x", print_hash_value);
    transparent_crc(p_2796->g_93.y, "p_2796->g_93.y", print_hash_value);
    transparent_crc(p_2796->g_93.z, "p_2796->g_93.z", print_hash_value);
    transparent_crc(p_2796->g_93.w, "p_2796->g_93.w", print_hash_value);
    transparent_crc(p_2796->g_94.x, "p_2796->g_94.x", print_hash_value);
    transparent_crc(p_2796->g_94.y, "p_2796->g_94.y", print_hash_value);
    transparent_crc(p_2796->g_109, "p_2796->g_109", print_hash_value);
    transparent_crc(p_2796->g_110.x, "p_2796->g_110.x", print_hash_value);
    transparent_crc(p_2796->g_110.y, "p_2796->g_110.y", print_hash_value);
    transparent_crc(p_2796->g_121, "p_2796->g_121", print_hash_value);
    transparent_crc(p_2796->g_127, "p_2796->g_127", print_hash_value);
    transparent_crc(p_2796->g_128, "p_2796->g_128", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2796->g_130[i][j][k], "p_2796->g_130[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2796->g_135.f0, "p_2796->g_135.f0", print_hash_value);
    transparent_crc(p_2796->g_142.f0, "p_2796->g_142.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2796->g_152[i].f0, "p_2796->g_152[i].f0", print_hash_value);

    }
    transparent_crc(p_2796->g_169, "p_2796->g_169", print_hash_value);
    transparent_crc(p_2796->g_171.x, "p_2796->g_171.x", print_hash_value);
    transparent_crc(p_2796->g_171.y, "p_2796->g_171.y", print_hash_value);
    transparent_crc(p_2796->g_196.x, "p_2796->g_196.x", print_hash_value);
    transparent_crc(p_2796->g_196.y, "p_2796->g_196.y", print_hash_value);
    transparent_crc(p_2796->g_196.z, "p_2796->g_196.z", print_hash_value);
    transparent_crc(p_2796->g_196.w, "p_2796->g_196.w", print_hash_value);
    transparent_crc(p_2796->g_199, "p_2796->g_199", print_hash_value);
    transparent_crc(p_2796->g_283.s0, "p_2796->g_283.s0", print_hash_value);
    transparent_crc(p_2796->g_283.s1, "p_2796->g_283.s1", print_hash_value);
    transparent_crc(p_2796->g_283.s2, "p_2796->g_283.s2", print_hash_value);
    transparent_crc(p_2796->g_283.s3, "p_2796->g_283.s3", print_hash_value);
    transparent_crc(p_2796->g_283.s4, "p_2796->g_283.s4", print_hash_value);
    transparent_crc(p_2796->g_283.s5, "p_2796->g_283.s5", print_hash_value);
    transparent_crc(p_2796->g_283.s6, "p_2796->g_283.s6", print_hash_value);
    transparent_crc(p_2796->g_283.s7, "p_2796->g_283.s7", print_hash_value);
    transparent_crc(p_2796->g_365.x, "p_2796->g_365.x", print_hash_value);
    transparent_crc(p_2796->g_365.y, "p_2796->g_365.y", print_hash_value);
    transparent_crc(p_2796->g_367.s0, "p_2796->g_367.s0", print_hash_value);
    transparent_crc(p_2796->g_367.s1, "p_2796->g_367.s1", print_hash_value);
    transparent_crc(p_2796->g_367.s2, "p_2796->g_367.s2", print_hash_value);
    transparent_crc(p_2796->g_367.s3, "p_2796->g_367.s3", print_hash_value);
    transparent_crc(p_2796->g_367.s4, "p_2796->g_367.s4", print_hash_value);
    transparent_crc(p_2796->g_367.s5, "p_2796->g_367.s5", print_hash_value);
    transparent_crc(p_2796->g_367.s6, "p_2796->g_367.s6", print_hash_value);
    transparent_crc(p_2796->g_367.s7, "p_2796->g_367.s7", print_hash_value);
    transparent_crc(p_2796->g_367.s8, "p_2796->g_367.s8", print_hash_value);
    transparent_crc(p_2796->g_367.s9, "p_2796->g_367.s9", print_hash_value);
    transparent_crc(p_2796->g_367.sa, "p_2796->g_367.sa", print_hash_value);
    transparent_crc(p_2796->g_367.sb, "p_2796->g_367.sb", print_hash_value);
    transparent_crc(p_2796->g_367.sc, "p_2796->g_367.sc", print_hash_value);
    transparent_crc(p_2796->g_367.sd, "p_2796->g_367.sd", print_hash_value);
    transparent_crc(p_2796->g_367.se, "p_2796->g_367.se", print_hash_value);
    transparent_crc(p_2796->g_367.sf, "p_2796->g_367.sf", print_hash_value);
    transparent_crc(p_2796->g_394.s0, "p_2796->g_394.s0", print_hash_value);
    transparent_crc(p_2796->g_394.s1, "p_2796->g_394.s1", print_hash_value);
    transparent_crc(p_2796->g_394.s2, "p_2796->g_394.s2", print_hash_value);
    transparent_crc(p_2796->g_394.s3, "p_2796->g_394.s3", print_hash_value);
    transparent_crc(p_2796->g_394.s4, "p_2796->g_394.s4", print_hash_value);
    transparent_crc(p_2796->g_394.s5, "p_2796->g_394.s5", print_hash_value);
    transparent_crc(p_2796->g_394.s6, "p_2796->g_394.s6", print_hash_value);
    transparent_crc(p_2796->g_394.s7, "p_2796->g_394.s7", print_hash_value);
    transparent_crc(p_2796->g_394.s8, "p_2796->g_394.s8", print_hash_value);
    transparent_crc(p_2796->g_394.s9, "p_2796->g_394.s9", print_hash_value);
    transparent_crc(p_2796->g_394.sa, "p_2796->g_394.sa", print_hash_value);
    transparent_crc(p_2796->g_394.sb, "p_2796->g_394.sb", print_hash_value);
    transparent_crc(p_2796->g_394.sc, "p_2796->g_394.sc", print_hash_value);
    transparent_crc(p_2796->g_394.sd, "p_2796->g_394.sd", print_hash_value);
    transparent_crc(p_2796->g_394.se, "p_2796->g_394.se", print_hash_value);
    transparent_crc(p_2796->g_394.sf, "p_2796->g_394.sf", print_hash_value);
    transparent_crc(p_2796->g_403.f0, "p_2796->g_403.f0", print_hash_value);
    transparent_crc(p_2796->g_409, "p_2796->g_409", print_hash_value);
    transparent_crc(p_2796->g_411, "p_2796->g_411", print_hash_value);
    transparent_crc(p_2796->g_480.s0, "p_2796->g_480.s0", print_hash_value);
    transparent_crc(p_2796->g_480.s1, "p_2796->g_480.s1", print_hash_value);
    transparent_crc(p_2796->g_480.s2, "p_2796->g_480.s2", print_hash_value);
    transparent_crc(p_2796->g_480.s3, "p_2796->g_480.s3", print_hash_value);
    transparent_crc(p_2796->g_480.s4, "p_2796->g_480.s4", print_hash_value);
    transparent_crc(p_2796->g_480.s5, "p_2796->g_480.s5", print_hash_value);
    transparent_crc(p_2796->g_480.s6, "p_2796->g_480.s6", print_hash_value);
    transparent_crc(p_2796->g_480.s7, "p_2796->g_480.s7", print_hash_value);
    transparent_crc(p_2796->g_509.x, "p_2796->g_509.x", print_hash_value);
    transparent_crc(p_2796->g_509.y, "p_2796->g_509.y", print_hash_value);
    transparent_crc(p_2796->g_530.f0, "p_2796->g_530.f0", print_hash_value);
    transparent_crc(p_2796->g_544.f0, "p_2796->g_544.f0", print_hash_value);
    transparent_crc(p_2796->g_567.x, "p_2796->g_567.x", print_hash_value);
    transparent_crc(p_2796->g_567.y, "p_2796->g_567.y", print_hash_value);
    transparent_crc(p_2796->g_571.s0, "p_2796->g_571.s0", print_hash_value);
    transparent_crc(p_2796->g_571.s1, "p_2796->g_571.s1", print_hash_value);
    transparent_crc(p_2796->g_571.s2, "p_2796->g_571.s2", print_hash_value);
    transparent_crc(p_2796->g_571.s3, "p_2796->g_571.s3", print_hash_value);
    transparent_crc(p_2796->g_571.s4, "p_2796->g_571.s4", print_hash_value);
    transparent_crc(p_2796->g_571.s5, "p_2796->g_571.s5", print_hash_value);
    transparent_crc(p_2796->g_571.s6, "p_2796->g_571.s6", print_hash_value);
    transparent_crc(p_2796->g_571.s7, "p_2796->g_571.s7", print_hash_value);
    transparent_crc(p_2796->g_582.x, "p_2796->g_582.x", print_hash_value);
    transparent_crc(p_2796->g_582.y, "p_2796->g_582.y", print_hash_value);
    transparent_crc(p_2796->g_582.z, "p_2796->g_582.z", print_hash_value);
    transparent_crc(p_2796->g_582.w, "p_2796->g_582.w", print_hash_value);
    transparent_crc(p_2796->g_621.x, "p_2796->g_621.x", print_hash_value);
    transparent_crc(p_2796->g_621.y, "p_2796->g_621.y", print_hash_value);
    transparent_crc(p_2796->g_621.z, "p_2796->g_621.z", print_hash_value);
    transparent_crc(p_2796->g_621.w, "p_2796->g_621.w", print_hash_value);
    transparent_crc(p_2796->g_628.s0, "p_2796->g_628.s0", print_hash_value);
    transparent_crc(p_2796->g_628.s1, "p_2796->g_628.s1", print_hash_value);
    transparent_crc(p_2796->g_628.s2, "p_2796->g_628.s2", print_hash_value);
    transparent_crc(p_2796->g_628.s3, "p_2796->g_628.s3", print_hash_value);
    transparent_crc(p_2796->g_628.s4, "p_2796->g_628.s4", print_hash_value);
    transparent_crc(p_2796->g_628.s5, "p_2796->g_628.s5", print_hash_value);
    transparent_crc(p_2796->g_628.s6, "p_2796->g_628.s6", print_hash_value);
    transparent_crc(p_2796->g_628.s7, "p_2796->g_628.s7", print_hash_value);
    transparent_crc(p_2796->g_650.s0, "p_2796->g_650.s0", print_hash_value);
    transparent_crc(p_2796->g_650.s1, "p_2796->g_650.s1", print_hash_value);
    transparent_crc(p_2796->g_650.s2, "p_2796->g_650.s2", print_hash_value);
    transparent_crc(p_2796->g_650.s3, "p_2796->g_650.s3", print_hash_value);
    transparent_crc(p_2796->g_650.s4, "p_2796->g_650.s4", print_hash_value);
    transparent_crc(p_2796->g_650.s5, "p_2796->g_650.s5", print_hash_value);
    transparent_crc(p_2796->g_650.s6, "p_2796->g_650.s6", print_hash_value);
    transparent_crc(p_2796->g_650.s7, "p_2796->g_650.s7", print_hash_value);
    transparent_crc(p_2796->g_650.s8, "p_2796->g_650.s8", print_hash_value);
    transparent_crc(p_2796->g_650.s9, "p_2796->g_650.s9", print_hash_value);
    transparent_crc(p_2796->g_650.sa, "p_2796->g_650.sa", print_hash_value);
    transparent_crc(p_2796->g_650.sb, "p_2796->g_650.sb", print_hash_value);
    transparent_crc(p_2796->g_650.sc, "p_2796->g_650.sc", print_hash_value);
    transparent_crc(p_2796->g_650.sd, "p_2796->g_650.sd", print_hash_value);
    transparent_crc(p_2796->g_650.se, "p_2796->g_650.se", print_hash_value);
    transparent_crc(p_2796->g_650.sf, "p_2796->g_650.sf", print_hash_value);
    transparent_crc(p_2796->g_667.x, "p_2796->g_667.x", print_hash_value);
    transparent_crc(p_2796->g_667.y, "p_2796->g_667.y", print_hash_value);
    transparent_crc(p_2796->g_667.z, "p_2796->g_667.z", print_hash_value);
    transparent_crc(p_2796->g_667.w, "p_2796->g_667.w", print_hash_value);
    transparent_crc(p_2796->g_685, "p_2796->g_685", print_hash_value);
    transparent_crc(p_2796->g_688, "p_2796->g_688", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2796->g_689[i], "p_2796->g_689[i]", print_hash_value);

    }
    transparent_crc(p_2796->g_690.s0, "p_2796->g_690.s0", print_hash_value);
    transparent_crc(p_2796->g_690.s1, "p_2796->g_690.s1", print_hash_value);
    transparent_crc(p_2796->g_690.s2, "p_2796->g_690.s2", print_hash_value);
    transparent_crc(p_2796->g_690.s3, "p_2796->g_690.s3", print_hash_value);
    transparent_crc(p_2796->g_690.s4, "p_2796->g_690.s4", print_hash_value);
    transparent_crc(p_2796->g_690.s5, "p_2796->g_690.s5", print_hash_value);
    transparent_crc(p_2796->g_690.s6, "p_2796->g_690.s6", print_hash_value);
    transparent_crc(p_2796->g_690.s7, "p_2796->g_690.s7", print_hash_value);
    transparent_crc(p_2796->g_690.s8, "p_2796->g_690.s8", print_hash_value);
    transparent_crc(p_2796->g_690.s9, "p_2796->g_690.s9", print_hash_value);
    transparent_crc(p_2796->g_690.sa, "p_2796->g_690.sa", print_hash_value);
    transparent_crc(p_2796->g_690.sb, "p_2796->g_690.sb", print_hash_value);
    transparent_crc(p_2796->g_690.sc, "p_2796->g_690.sc", print_hash_value);
    transparent_crc(p_2796->g_690.sd, "p_2796->g_690.sd", print_hash_value);
    transparent_crc(p_2796->g_690.se, "p_2796->g_690.se", print_hash_value);
    transparent_crc(p_2796->g_690.sf, "p_2796->g_690.sf", print_hash_value);
    transparent_crc(p_2796->g_691.s0, "p_2796->g_691.s0", print_hash_value);
    transparent_crc(p_2796->g_691.s1, "p_2796->g_691.s1", print_hash_value);
    transparent_crc(p_2796->g_691.s2, "p_2796->g_691.s2", print_hash_value);
    transparent_crc(p_2796->g_691.s3, "p_2796->g_691.s3", print_hash_value);
    transparent_crc(p_2796->g_691.s4, "p_2796->g_691.s4", print_hash_value);
    transparent_crc(p_2796->g_691.s5, "p_2796->g_691.s5", print_hash_value);
    transparent_crc(p_2796->g_691.s6, "p_2796->g_691.s6", print_hash_value);
    transparent_crc(p_2796->g_691.s7, "p_2796->g_691.s7", print_hash_value);
    transparent_crc(p_2796->g_691.s8, "p_2796->g_691.s8", print_hash_value);
    transparent_crc(p_2796->g_691.s9, "p_2796->g_691.s9", print_hash_value);
    transparent_crc(p_2796->g_691.sa, "p_2796->g_691.sa", print_hash_value);
    transparent_crc(p_2796->g_691.sb, "p_2796->g_691.sb", print_hash_value);
    transparent_crc(p_2796->g_691.sc, "p_2796->g_691.sc", print_hash_value);
    transparent_crc(p_2796->g_691.sd, "p_2796->g_691.sd", print_hash_value);
    transparent_crc(p_2796->g_691.se, "p_2796->g_691.se", print_hash_value);
    transparent_crc(p_2796->g_691.sf, "p_2796->g_691.sf", print_hash_value);
    transparent_crc(p_2796->g_704.s0, "p_2796->g_704.s0", print_hash_value);
    transparent_crc(p_2796->g_704.s1, "p_2796->g_704.s1", print_hash_value);
    transparent_crc(p_2796->g_704.s2, "p_2796->g_704.s2", print_hash_value);
    transparent_crc(p_2796->g_704.s3, "p_2796->g_704.s3", print_hash_value);
    transparent_crc(p_2796->g_704.s4, "p_2796->g_704.s4", print_hash_value);
    transparent_crc(p_2796->g_704.s5, "p_2796->g_704.s5", print_hash_value);
    transparent_crc(p_2796->g_704.s6, "p_2796->g_704.s6", print_hash_value);
    transparent_crc(p_2796->g_704.s7, "p_2796->g_704.s7", print_hash_value);
    transparent_crc(p_2796->g_706, "p_2796->g_706", print_hash_value);
    transparent_crc(p_2796->g_707, "p_2796->g_707", print_hash_value);
    transparent_crc(p_2796->g_708, "p_2796->g_708", print_hash_value);
    transparent_crc(p_2796->g_830.x, "p_2796->g_830.x", print_hash_value);
    transparent_crc(p_2796->g_830.y, "p_2796->g_830.y", print_hash_value);
    transparent_crc(p_2796->g_830.z, "p_2796->g_830.z", print_hash_value);
    transparent_crc(p_2796->g_830.w, "p_2796->g_830.w", print_hash_value);
    transparent_crc(p_2796->g_845.s0, "p_2796->g_845.s0", print_hash_value);
    transparent_crc(p_2796->g_845.s1, "p_2796->g_845.s1", print_hash_value);
    transparent_crc(p_2796->g_845.s2, "p_2796->g_845.s2", print_hash_value);
    transparent_crc(p_2796->g_845.s3, "p_2796->g_845.s3", print_hash_value);
    transparent_crc(p_2796->g_845.s4, "p_2796->g_845.s4", print_hash_value);
    transparent_crc(p_2796->g_845.s5, "p_2796->g_845.s5", print_hash_value);
    transparent_crc(p_2796->g_845.s6, "p_2796->g_845.s6", print_hash_value);
    transparent_crc(p_2796->g_845.s7, "p_2796->g_845.s7", print_hash_value);
    transparent_crc(p_2796->g_845.s8, "p_2796->g_845.s8", print_hash_value);
    transparent_crc(p_2796->g_845.s9, "p_2796->g_845.s9", print_hash_value);
    transparent_crc(p_2796->g_845.sa, "p_2796->g_845.sa", print_hash_value);
    transparent_crc(p_2796->g_845.sb, "p_2796->g_845.sb", print_hash_value);
    transparent_crc(p_2796->g_845.sc, "p_2796->g_845.sc", print_hash_value);
    transparent_crc(p_2796->g_845.sd, "p_2796->g_845.sd", print_hash_value);
    transparent_crc(p_2796->g_845.se, "p_2796->g_845.se", print_hash_value);
    transparent_crc(p_2796->g_845.sf, "p_2796->g_845.sf", print_hash_value);
    transparent_crc(p_2796->g_846.x, "p_2796->g_846.x", print_hash_value);
    transparent_crc(p_2796->g_846.y, "p_2796->g_846.y", print_hash_value);
    transparent_crc(p_2796->g_847.s0, "p_2796->g_847.s0", print_hash_value);
    transparent_crc(p_2796->g_847.s1, "p_2796->g_847.s1", print_hash_value);
    transparent_crc(p_2796->g_847.s2, "p_2796->g_847.s2", print_hash_value);
    transparent_crc(p_2796->g_847.s3, "p_2796->g_847.s3", print_hash_value);
    transparent_crc(p_2796->g_847.s4, "p_2796->g_847.s4", print_hash_value);
    transparent_crc(p_2796->g_847.s5, "p_2796->g_847.s5", print_hash_value);
    transparent_crc(p_2796->g_847.s6, "p_2796->g_847.s6", print_hash_value);
    transparent_crc(p_2796->g_847.s7, "p_2796->g_847.s7", print_hash_value);
    transparent_crc(p_2796->g_847.s8, "p_2796->g_847.s8", print_hash_value);
    transparent_crc(p_2796->g_847.s9, "p_2796->g_847.s9", print_hash_value);
    transparent_crc(p_2796->g_847.sa, "p_2796->g_847.sa", print_hash_value);
    transparent_crc(p_2796->g_847.sb, "p_2796->g_847.sb", print_hash_value);
    transparent_crc(p_2796->g_847.sc, "p_2796->g_847.sc", print_hash_value);
    transparent_crc(p_2796->g_847.sd, "p_2796->g_847.sd", print_hash_value);
    transparent_crc(p_2796->g_847.se, "p_2796->g_847.se", print_hash_value);
    transparent_crc(p_2796->g_847.sf, "p_2796->g_847.sf", print_hash_value);
    transparent_crc(p_2796->g_867.x, "p_2796->g_867.x", print_hash_value);
    transparent_crc(p_2796->g_867.y, "p_2796->g_867.y", print_hash_value);
    transparent_crc(p_2796->g_867.z, "p_2796->g_867.z", print_hash_value);
    transparent_crc(p_2796->g_867.w, "p_2796->g_867.w", print_hash_value);
    transparent_crc(p_2796->g_884.x, "p_2796->g_884.x", print_hash_value);
    transparent_crc(p_2796->g_884.y, "p_2796->g_884.y", print_hash_value);
    transparent_crc(p_2796->g_919.x, "p_2796->g_919.x", print_hash_value);
    transparent_crc(p_2796->g_919.y, "p_2796->g_919.y", print_hash_value);
    transparent_crc(p_2796->g_925.x, "p_2796->g_925.x", print_hash_value);
    transparent_crc(p_2796->g_925.y, "p_2796->g_925.y", print_hash_value);
    transparent_crc(p_2796->g_930.x, "p_2796->g_930.x", print_hash_value);
    transparent_crc(p_2796->g_930.y, "p_2796->g_930.y", print_hash_value);
    transparent_crc(p_2796->g_930.z, "p_2796->g_930.z", print_hash_value);
    transparent_crc(p_2796->g_930.w, "p_2796->g_930.w", print_hash_value);
    transparent_crc(p_2796->g_1008.s0, "p_2796->g_1008.s0", print_hash_value);
    transparent_crc(p_2796->g_1008.s1, "p_2796->g_1008.s1", print_hash_value);
    transparent_crc(p_2796->g_1008.s2, "p_2796->g_1008.s2", print_hash_value);
    transparent_crc(p_2796->g_1008.s3, "p_2796->g_1008.s3", print_hash_value);
    transparent_crc(p_2796->g_1008.s4, "p_2796->g_1008.s4", print_hash_value);
    transparent_crc(p_2796->g_1008.s5, "p_2796->g_1008.s5", print_hash_value);
    transparent_crc(p_2796->g_1008.s6, "p_2796->g_1008.s6", print_hash_value);
    transparent_crc(p_2796->g_1008.s7, "p_2796->g_1008.s7", print_hash_value);
    transparent_crc(p_2796->g_1008.s8, "p_2796->g_1008.s8", print_hash_value);
    transparent_crc(p_2796->g_1008.s9, "p_2796->g_1008.s9", print_hash_value);
    transparent_crc(p_2796->g_1008.sa, "p_2796->g_1008.sa", print_hash_value);
    transparent_crc(p_2796->g_1008.sb, "p_2796->g_1008.sb", print_hash_value);
    transparent_crc(p_2796->g_1008.sc, "p_2796->g_1008.sc", print_hash_value);
    transparent_crc(p_2796->g_1008.sd, "p_2796->g_1008.sd", print_hash_value);
    transparent_crc(p_2796->g_1008.se, "p_2796->g_1008.se", print_hash_value);
    transparent_crc(p_2796->g_1008.sf, "p_2796->g_1008.sf", print_hash_value);
    transparent_crc(p_2796->g_1020.x, "p_2796->g_1020.x", print_hash_value);
    transparent_crc(p_2796->g_1020.y, "p_2796->g_1020.y", print_hash_value);
    transparent_crc(p_2796->g_1024.x, "p_2796->g_1024.x", print_hash_value);
    transparent_crc(p_2796->g_1024.y, "p_2796->g_1024.y", print_hash_value);
    transparent_crc(p_2796->g_1025.s0, "p_2796->g_1025.s0", print_hash_value);
    transparent_crc(p_2796->g_1025.s1, "p_2796->g_1025.s1", print_hash_value);
    transparent_crc(p_2796->g_1025.s2, "p_2796->g_1025.s2", print_hash_value);
    transparent_crc(p_2796->g_1025.s3, "p_2796->g_1025.s3", print_hash_value);
    transparent_crc(p_2796->g_1025.s4, "p_2796->g_1025.s4", print_hash_value);
    transparent_crc(p_2796->g_1025.s5, "p_2796->g_1025.s5", print_hash_value);
    transparent_crc(p_2796->g_1025.s6, "p_2796->g_1025.s6", print_hash_value);
    transparent_crc(p_2796->g_1025.s7, "p_2796->g_1025.s7", print_hash_value);
    transparent_crc(p_2796->g_1032.s0, "p_2796->g_1032.s0", print_hash_value);
    transparent_crc(p_2796->g_1032.s1, "p_2796->g_1032.s1", print_hash_value);
    transparent_crc(p_2796->g_1032.s2, "p_2796->g_1032.s2", print_hash_value);
    transparent_crc(p_2796->g_1032.s3, "p_2796->g_1032.s3", print_hash_value);
    transparent_crc(p_2796->g_1032.s4, "p_2796->g_1032.s4", print_hash_value);
    transparent_crc(p_2796->g_1032.s5, "p_2796->g_1032.s5", print_hash_value);
    transparent_crc(p_2796->g_1032.s6, "p_2796->g_1032.s6", print_hash_value);
    transparent_crc(p_2796->g_1032.s7, "p_2796->g_1032.s7", print_hash_value);
    transparent_crc(p_2796->g_1033.s0, "p_2796->g_1033.s0", print_hash_value);
    transparent_crc(p_2796->g_1033.s1, "p_2796->g_1033.s1", print_hash_value);
    transparent_crc(p_2796->g_1033.s2, "p_2796->g_1033.s2", print_hash_value);
    transparent_crc(p_2796->g_1033.s3, "p_2796->g_1033.s3", print_hash_value);
    transparent_crc(p_2796->g_1033.s4, "p_2796->g_1033.s4", print_hash_value);
    transparent_crc(p_2796->g_1033.s5, "p_2796->g_1033.s5", print_hash_value);
    transparent_crc(p_2796->g_1033.s6, "p_2796->g_1033.s6", print_hash_value);
    transparent_crc(p_2796->g_1033.s7, "p_2796->g_1033.s7", print_hash_value);
    transparent_crc(p_2796->g_1046.s0, "p_2796->g_1046.s0", print_hash_value);
    transparent_crc(p_2796->g_1046.s1, "p_2796->g_1046.s1", print_hash_value);
    transparent_crc(p_2796->g_1046.s2, "p_2796->g_1046.s2", print_hash_value);
    transparent_crc(p_2796->g_1046.s3, "p_2796->g_1046.s3", print_hash_value);
    transparent_crc(p_2796->g_1046.s4, "p_2796->g_1046.s4", print_hash_value);
    transparent_crc(p_2796->g_1046.s5, "p_2796->g_1046.s5", print_hash_value);
    transparent_crc(p_2796->g_1046.s6, "p_2796->g_1046.s6", print_hash_value);
    transparent_crc(p_2796->g_1046.s7, "p_2796->g_1046.s7", print_hash_value);
    transparent_crc(p_2796->g_1046.s8, "p_2796->g_1046.s8", print_hash_value);
    transparent_crc(p_2796->g_1046.s9, "p_2796->g_1046.s9", print_hash_value);
    transparent_crc(p_2796->g_1046.sa, "p_2796->g_1046.sa", print_hash_value);
    transparent_crc(p_2796->g_1046.sb, "p_2796->g_1046.sb", print_hash_value);
    transparent_crc(p_2796->g_1046.sc, "p_2796->g_1046.sc", print_hash_value);
    transparent_crc(p_2796->g_1046.sd, "p_2796->g_1046.sd", print_hash_value);
    transparent_crc(p_2796->g_1046.se, "p_2796->g_1046.se", print_hash_value);
    transparent_crc(p_2796->g_1046.sf, "p_2796->g_1046.sf", print_hash_value);
    transparent_crc(p_2796->g_1048.s0, "p_2796->g_1048.s0", print_hash_value);
    transparent_crc(p_2796->g_1048.s1, "p_2796->g_1048.s1", print_hash_value);
    transparent_crc(p_2796->g_1048.s2, "p_2796->g_1048.s2", print_hash_value);
    transparent_crc(p_2796->g_1048.s3, "p_2796->g_1048.s3", print_hash_value);
    transparent_crc(p_2796->g_1048.s4, "p_2796->g_1048.s4", print_hash_value);
    transparent_crc(p_2796->g_1048.s5, "p_2796->g_1048.s5", print_hash_value);
    transparent_crc(p_2796->g_1048.s6, "p_2796->g_1048.s6", print_hash_value);
    transparent_crc(p_2796->g_1048.s7, "p_2796->g_1048.s7", print_hash_value);
    transparent_crc(p_2796->g_1048.s8, "p_2796->g_1048.s8", print_hash_value);
    transparent_crc(p_2796->g_1048.s9, "p_2796->g_1048.s9", print_hash_value);
    transparent_crc(p_2796->g_1048.sa, "p_2796->g_1048.sa", print_hash_value);
    transparent_crc(p_2796->g_1048.sb, "p_2796->g_1048.sb", print_hash_value);
    transparent_crc(p_2796->g_1048.sc, "p_2796->g_1048.sc", print_hash_value);
    transparent_crc(p_2796->g_1048.sd, "p_2796->g_1048.sd", print_hash_value);
    transparent_crc(p_2796->g_1048.se, "p_2796->g_1048.se", print_hash_value);
    transparent_crc(p_2796->g_1048.sf, "p_2796->g_1048.sf", print_hash_value);
    transparent_crc(p_2796->g_1050.x, "p_2796->g_1050.x", print_hash_value);
    transparent_crc(p_2796->g_1050.y, "p_2796->g_1050.y", print_hash_value);
    transparent_crc(p_2796->g_1050.z, "p_2796->g_1050.z", print_hash_value);
    transparent_crc(p_2796->g_1050.w, "p_2796->g_1050.w", print_hash_value);
    transparent_crc(p_2796->g_1051.x, "p_2796->g_1051.x", print_hash_value);
    transparent_crc(p_2796->g_1051.y, "p_2796->g_1051.y", print_hash_value);
    transparent_crc(p_2796->g_1056.x, "p_2796->g_1056.x", print_hash_value);
    transparent_crc(p_2796->g_1056.y, "p_2796->g_1056.y", print_hash_value);
    transparent_crc(p_2796->g_1056.z, "p_2796->g_1056.z", print_hash_value);
    transparent_crc(p_2796->g_1056.w, "p_2796->g_1056.w", print_hash_value);
    transparent_crc(p_2796->g_1113, "p_2796->g_1113", print_hash_value);
    transparent_crc(p_2796->g_1169.s0, "p_2796->g_1169.s0", print_hash_value);
    transparent_crc(p_2796->g_1169.s1, "p_2796->g_1169.s1", print_hash_value);
    transparent_crc(p_2796->g_1169.s2, "p_2796->g_1169.s2", print_hash_value);
    transparent_crc(p_2796->g_1169.s3, "p_2796->g_1169.s3", print_hash_value);
    transparent_crc(p_2796->g_1169.s4, "p_2796->g_1169.s4", print_hash_value);
    transparent_crc(p_2796->g_1169.s5, "p_2796->g_1169.s5", print_hash_value);
    transparent_crc(p_2796->g_1169.s6, "p_2796->g_1169.s6", print_hash_value);
    transparent_crc(p_2796->g_1169.s7, "p_2796->g_1169.s7", print_hash_value);
    transparent_crc(p_2796->g_1172.s0, "p_2796->g_1172.s0", print_hash_value);
    transparent_crc(p_2796->g_1172.s1, "p_2796->g_1172.s1", print_hash_value);
    transparent_crc(p_2796->g_1172.s2, "p_2796->g_1172.s2", print_hash_value);
    transparent_crc(p_2796->g_1172.s3, "p_2796->g_1172.s3", print_hash_value);
    transparent_crc(p_2796->g_1172.s4, "p_2796->g_1172.s4", print_hash_value);
    transparent_crc(p_2796->g_1172.s5, "p_2796->g_1172.s5", print_hash_value);
    transparent_crc(p_2796->g_1172.s6, "p_2796->g_1172.s6", print_hash_value);
    transparent_crc(p_2796->g_1172.s7, "p_2796->g_1172.s7", print_hash_value);
    transparent_crc(p_2796->g_1172.s8, "p_2796->g_1172.s8", print_hash_value);
    transparent_crc(p_2796->g_1172.s9, "p_2796->g_1172.s9", print_hash_value);
    transparent_crc(p_2796->g_1172.sa, "p_2796->g_1172.sa", print_hash_value);
    transparent_crc(p_2796->g_1172.sb, "p_2796->g_1172.sb", print_hash_value);
    transparent_crc(p_2796->g_1172.sc, "p_2796->g_1172.sc", print_hash_value);
    transparent_crc(p_2796->g_1172.sd, "p_2796->g_1172.sd", print_hash_value);
    transparent_crc(p_2796->g_1172.se, "p_2796->g_1172.se", print_hash_value);
    transparent_crc(p_2796->g_1172.sf, "p_2796->g_1172.sf", print_hash_value);
    transparent_crc(p_2796->g_1182, "p_2796->g_1182", print_hash_value);
    transparent_crc(p_2796->g_1223.s0, "p_2796->g_1223.s0", print_hash_value);
    transparent_crc(p_2796->g_1223.s1, "p_2796->g_1223.s1", print_hash_value);
    transparent_crc(p_2796->g_1223.s2, "p_2796->g_1223.s2", print_hash_value);
    transparent_crc(p_2796->g_1223.s3, "p_2796->g_1223.s3", print_hash_value);
    transparent_crc(p_2796->g_1223.s4, "p_2796->g_1223.s4", print_hash_value);
    transparent_crc(p_2796->g_1223.s5, "p_2796->g_1223.s5", print_hash_value);
    transparent_crc(p_2796->g_1223.s6, "p_2796->g_1223.s6", print_hash_value);
    transparent_crc(p_2796->g_1223.s7, "p_2796->g_1223.s7", print_hash_value);
    transparent_crc(p_2796->g_1230.s0, "p_2796->g_1230.s0", print_hash_value);
    transparent_crc(p_2796->g_1230.s1, "p_2796->g_1230.s1", print_hash_value);
    transparent_crc(p_2796->g_1230.s2, "p_2796->g_1230.s2", print_hash_value);
    transparent_crc(p_2796->g_1230.s3, "p_2796->g_1230.s3", print_hash_value);
    transparent_crc(p_2796->g_1230.s4, "p_2796->g_1230.s4", print_hash_value);
    transparent_crc(p_2796->g_1230.s5, "p_2796->g_1230.s5", print_hash_value);
    transparent_crc(p_2796->g_1230.s6, "p_2796->g_1230.s6", print_hash_value);
    transparent_crc(p_2796->g_1230.s7, "p_2796->g_1230.s7", print_hash_value);
    transparent_crc(p_2796->g_1232.s0, "p_2796->g_1232.s0", print_hash_value);
    transparent_crc(p_2796->g_1232.s1, "p_2796->g_1232.s1", print_hash_value);
    transparent_crc(p_2796->g_1232.s2, "p_2796->g_1232.s2", print_hash_value);
    transparent_crc(p_2796->g_1232.s3, "p_2796->g_1232.s3", print_hash_value);
    transparent_crc(p_2796->g_1232.s4, "p_2796->g_1232.s4", print_hash_value);
    transparent_crc(p_2796->g_1232.s5, "p_2796->g_1232.s5", print_hash_value);
    transparent_crc(p_2796->g_1232.s6, "p_2796->g_1232.s6", print_hash_value);
    transparent_crc(p_2796->g_1232.s7, "p_2796->g_1232.s7", print_hash_value);
    transparent_crc(p_2796->g_1234.x, "p_2796->g_1234.x", print_hash_value);
    transparent_crc(p_2796->g_1234.y, "p_2796->g_1234.y", print_hash_value);
    transparent_crc(p_2796->g_1285.s0, "p_2796->g_1285.s0", print_hash_value);
    transparent_crc(p_2796->g_1285.s1, "p_2796->g_1285.s1", print_hash_value);
    transparent_crc(p_2796->g_1285.s2, "p_2796->g_1285.s2", print_hash_value);
    transparent_crc(p_2796->g_1285.s3, "p_2796->g_1285.s3", print_hash_value);
    transparent_crc(p_2796->g_1285.s4, "p_2796->g_1285.s4", print_hash_value);
    transparent_crc(p_2796->g_1285.s5, "p_2796->g_1285.s5", print_hash_value);
    transparent_crc(p_2796->g_1285.s6, "p_2796->g_1285.s6", print_hash_value);
    transparent_crc(p_2796->g_1285.s7, "p_2796->g_1285.s7", print_hash_value);
    transparent_crc(p_2796->g_1285.s8, "p_2796->g_1285.s8", print_hash_value);
    transparent_crc(p_2796->g_1285.s9, "p_2796->g_1285.s9", print_hash_value);
    transparent_crc(p_2796->g_1285.sa, "p_2796->g_1285.sa", print_hash_value);
    transparent_crc(p_2796->g_1285.sb, "p_2796->g_1285.sb", print_hash_value);
    transparent_crc(p_2796->g_1285.sc, "p_2796->g_1285.sc", print_hash_value);
    transparent_crc(p_2796->g_1285.sd, "p_2796->g_1285.sd", print_hash_value);
    transparent_crc(p_2796->g_1285.se, "p_2796->g_1285.se", print_hash_value);
    transparent_crc(p_2796->g_1285.sf, "p_2796->g_1285.sf", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2796->g_1312[i].f0, "p_2796->g_1312[i].f0", print_hash_value);

    }
    transparent_crc(p_2796->g_1318, "p_2796->g_1318", print_hash_value);
    transparent_crc(p_2796->g_1346.x, "p_2796->g_1346.x", print_hash_value);
    transparent_crc(p_2796->g_1346.y, "p_2796->g_1346.y", print_hash_value);
    transparent_crc(p_2796->g_1346.z, "p_2796->g_1346.z", print_hash_value);
    transparent_crc(p_2796->g_1346.w, "p_2796->g_1346.w", print_hash_value);
    transparent_crc(p_2796->g_1363.s0, "p_2796->g_1363.s0", print_hash_value);
    transparent_crc(p_2796->g_1363.s1, "p_2796->g_1363.s1", print_hash_value);
    transparent_crc(p_2796->g_1363.s2, "p_2796->g_1363.s2", print_hash_value);
    transparent_crc(p_2796->g_1363.s3, "p_2796->g_1363.s3", print_hash_value);
    transparent_crc(p_2796->g_1363.s4, "p_2796->g_1363.s4", print_hash_value);
    transparent_crc(p_2796->g_1363.s5, "p_2796->g_1363.s5", print_hash_value);
    transparent_crc(p_2796->g_1363.s6, "p_2796->g_1363.s6", print_hash_value);
    transparent_crc(p_2796->g_1363.s7, "p_2796->g_1363.s7", print_hash_value);
    transparent_crc(p_2796->g_1363.s8, "p_2796->g_1363.s8", print_hash_value);
    transparent_crc(p_2796->g_1363.s9, "p_2796->g_1363.s9", print_hash_value);
    transparent_crc(p_2796->g_1363.sa, "p_2796->g_1363.sa", print_hash_value);
    transparent_crc(p_2796->g_1363.sb, "p_2796->g_1363.sb", print_hash_value);
    transparent_crc(p_2796->g_1363.sc, "p_2796->g_1363.sc", print_hash_value);
    transparent_crc(p_2796->g_1363.sd, "p_2796->g_1363.sd", print_hash_value);
    transparent_crc(p_2796->g_1363.se, "p_2796->g_1363.se", print_hash_value);
    transparent_crc(p_2796->g_1363.sf, "p_2796->g_1363.sf", print_hash_value);
    transparent_crc(p_2796->g_1427.x, "p_2796->g_1427.x", print_hash_value);
    transparent_crc(p_2796->g_1427.y, "p_2796->g_1427.y", print_hash_value);
    transparent_crc(p_2796->g_1469.s0, "p_2796->g_1469.s0", print_hash_value);
    transparent_crc(p_2796->g_1469.s1, "p_2796->g_1469.s1", print_hash_value);
    transparent_crc(p_2796->g_1469.s2, "p_2796->g_1469.s2", print_hash_value);
    transparent_crc(p_2796->g_1469.s3, "p_2796->g_1469.s3", print_hash_value);
    transparent_crc(p_2796->g_1469.s4, "p_2796->g_1469.s4", print_hash_value);
    transparent_crc(p_2796->g_1469.s5, "p_2796->g_1469.s5", print_hash_value);
    transparent_crc(p_2796->g_1469.s6, "p_2796->g_1469.s6", print_hash_value);
    transparent_crc(p_2796->g_1469.s7, "p_2796->g_1469.s7", print_hash_value);
    transparent_crc(p_2796->g_1469.s8, "p_2796->g_1469.s8", print_hash_value);
    transparent_crc(p_2796->g_1469.s9, "p_2796->g_1469.s9", print_hash_value);
    transparent_crc(p_2796->g_1469.sa, "p_2796->g_1469.sa", print_hash_value);
    transparent_crc(p_2796->g_1469.sb, "p_2796->g_1469.sb", print_hash_value);
    transparent_crc(p_2796->g_1469.sc, "p_2796->g_1469.sc", print_hash_value);
    transparent_crc(p_2796->g_1469.sd, "p_2796->g_1469.sd", print_hash_value);
    transparent_crc(p_2796->g_1469.se, "p_2796->g_1469.se", print_hash_value);
    transparent_crc(p_2796->g_1469.sf, "p_2796->g_1469.sf", print_hash_value);
    transparent_crc(p_2796->g_1472.s0, "p_2796->g_1472.s0", print_hash_value);
    transparent_crc(p_2796->g_1472.s1, "p_2796->g_1472.s1", print_hash_value);
    transparent_crc(p_2796->g_1472.s2, "p_2796->g_1472.s2", print_hash_value);
    transparent_crc(p_2796->g_1472.s3, "p_2796->g_1472.s3", print_hash_value);
    transparent_crc(p_2796->g_1472.s4, "p_2796->g_1472.s4", print_hash_value);
    transparent_crc(p_2796->g_1472.s5, "p_2796->g_1472.s5", print_hash_value);
    transparent_crc(p_2796->g_1472.s6, "p_2796->g_1472.s6", print_hash_value);
    transparent_crc(p_2796->g_1472.s7, "p_2796->g_1472.s7", print_hash_value);
    transparent_crc(p_2796->g_1472.s8, "p_2796->g_1472.s8", print_hash_value);
    transparent_crc(p_2796->g_1472.s9, "p_2796->g_1472.s9", print_hash_value);
    transparent_crc(p_2796->g_1472.sa, "p_2796->g_1472.sa", print_hash_value);
    transparent_crc(p_2796->g_1472.sb, "p_2796->g_1472.sb", print_hash_value);
    transparent_crc(p_2796->g_1472.sc, "p_2796->g_1472.sc", print_hash_value);
    transparent_crc(p_2796->g_1472.sd, "p_2796->g_1472.sd", print_hash_value);
    transparent_crc(p_2796->g_1472.se, "p_2796->g_1472.se", print_hash_value);
    transparent_crc(p_2796->g_1472.sf, "p_2796->g_1472.sf", print_hash_value);
    transparent_crc(p_2796->g_1478, "p_2796->g_1478", print_hash_value);
    transparent_crc(p_2796->g_1522.s0, "p_2796->g_1522.s0", print_hash_value);
    transparent_crc(p_2796->g_1522.s1, "p_2796->g_1522.s1", print_hash_value);
    transparent_crc(p_2796->g_1522.s2, "p_2796->g_1522.s2", print_hash_value);
    transparent_crc(p_2796->g_1522.s3, "p_2796->g_1522.s3", print_hash_value);
    transparent_crc(p_2796->g_1522.s4, "p_2796->g_1522.s4", print_hash_value);
    transparent_crc(p_2796->g_1522.s5, "p_2796->g_1522.s5", print_hash_value);
    transparent_crc(p_2796->g_1522.s6, "p_2796->g_1522.s6", print_hash_value);
    transparent_crc(p_2796->g_1522.s7, "p_2796->g_1522.s7", print_hash_value);
    transparent_crc(p_2796->g_1525.s0, "p_2796->g_1525.s0", print_hash_value);
    transparent_crc(p_2796->g_1525.s1, "p_2796->g_1525.s1", print_hash_value);
    transparent_crc(p_2796->g_1525.s2, "p_2796->g_1525.s2", print_hash_value);
    transparent_crc(p_2796->g_1525.s3, "p_2796->g_1525.s3", print_hash_value);
    transparent_crc(p_2796->g_1525.s4, "p_2796->g_1525.s4", print_hash_value);
    transparent_crc(p_2796->g_1525.s5, "p_2796->g_1525.s5", print_hash_value);
    transparent_crc(p_2796->g_1525.s6, "p_2796->g_1525.s6", print_hash_value);
    transparent_crc(p_2796->g_1525.s7, "p_2796->g_1525.s7", print_hash_value);
    transparent_crc(p_2796->g_1525.s8, "p_2796->g_1525.s8", print_hash_value);
    transparent_crc(p_2796->g_1525.s9, "p_2796->g_1525.s9", print_hash_value);
    transparent_crc(p_2796->g_1525.sa, "p_2796->g_1525.sa", print_hash_value);
    transparent_crc(p_2796->g_1525.sb, "p_2796->g_1525.sb", print_hash_value);
    transparent_crc(p_2796->g_1525.sc, "p_2796->g_1525.sc", print_hash_value);
    transparent_crc(p_2796->g_1525.sd, "p_2796->g_1525.sd", print_hash_value);
    transparent_crc(p_2796->g_1525.se, "p_2796->g_1525.se", print_hash_value);
    transparent_crc(p_2796->g_1525.sf, "p_2796->g_1525.sf", print_hash_value);
    transparent_crc(p_2796->g_1553.x, "p_2796->g_1553.x", print_hash_value);
    transparent_crc(p_2796->g_1553.y, "p_2796->g_1553.y", print_hash_value);
    transparent_crc(p_2796->g_1557.s0, "p_2796->g_1557.s0", print_hash_value);
    transparent_crc(p_2796->g_1557.s1, "p_2796->g_1557.s1", print_hash_value);
    transparent_crc(p_2796->g_1557.s2, "p_2796->g_1557.s2", print_hash_value);
    transparent_crc(p_2796->g_1557.s3, "p_2796->g_1557.s3", print_hash_value);
    transparent_crc(p_2796->g_1557.s4, "p_2796->g_1557.s4", print_hash_value);
    transparent_crc(p_2796->g_1557.s5, "p_2796->g_1557.s5", print_hash_value);
    transparent_crc(p_2796->g_1557.s6, "p_2796->g_1557.s6", print_hash_value);
    transparent_crc(p_2796->g_1557.s7, "p_2796->g_1557.s7", print_hash_value);
    transparent_crc(p_2796->g_1557.s8, "p_2796->g_1557.s8", print_hash_value);
    transparent_crc(p_2796->g_1557.s9, "p_2796->g_1557.s9", print_hash_value);
    transparent_crc(p_2796->g_1557.sa, "p_2796->g_1557.sa", print_hash_value);
    transparent_crc(p_2796->g_1557.sb, "p_2796->g_1557.sb", print_hash_value);
    transparent_crc(p_2796->g_1557.sc, "p_2796->g_1557.sc", print_hash_value);
    transparent_crc(p_2796->g_1557.sd, "p_2796->g_1557.sd", print_hash_value);
    transparent_crc(p_2796->g_1557.se, "p_2796->g_1557.se", print_hash_value);
    transparent_crc(p_2796->g_1557.sf, "p_2796->g_1557.sf", print_hash_value);
    transparent_crc(p_2796->g_1564.s0, "p_2796->g_1564.s0", print_hash_value);
    transparent_crc(p_2796->g_1564.s1, "p_2796->g_1564.s1", print_hash_value);
    transparent_crc(p_2796->g_1564.s2, "p_2796->g_1564.s2", print_hash_value);
    transparent_crc(p_2796->g_1564.s3, "p_2796->g_1564.s3", print_hash_value);
    transparent_crc(p_2796->g_1564.s4, "p_2796->g_1564.s4", print_hash_value);
    transparent_crc(p_2796->g_1564.s5, "p_2796->g_1564.s5", print_hash_value);
    transparent_crc(p_2796->g_1564.s6, "p_2796->g_1564.s6", print_hash_value);
    transparent_crc(p_2796->g_1564.s7, "p_2796->g_1564.s7", print_hash_value);
    transparent_crc(p_2796->g_1581.x, "p_2796->g_1581.x", print_hash_value);
    transparent_crc(p_2796->g_1581.y, "p_2796->g_1581.y", print_hash_value);
    transparent_crc(p_2796->g_1602.x, "p_2796->g_1602.x", print_hash_value);
    transparent_crc(p_2796->g_1602.y, "p_2796->g_1602.y", print_hash_value);
    transparent_crc(p_2796->g_1602.z, "p_2796->g_1602.z", print_hash_value);
    transparent_crc(p_2796->g_1602.w, "p_2796->g_1602.w", print_hash_value);
    transparent_crc(p_2796->g_1625.s0, "p_2796->g_1625.s0", print_hash_value);
    transparent_crc(p_2796->g_1625.s1, "p_2796->g_1625.s1", print_hash_value);
    transparent_crc(p_2796->g_1625.s2, "p_2796->g_1625.s2", print_hash_value);
    transparent_crc(p_2796->g_1625.s3, "p_2796->g_1625.s3", print_hash_value);
    transparent_crc(p_2796->g_1625.s4, "p_2796->g_1625.s4", print_hash_value);
    transparent_crc(p_2796->g_1625.s5, "p_2796->g_1625.s5", print_hash_value);
    transparent_crc(p_2796->g_1625.s6, "p_2796->g_1625.s6", print_hash_value);
    transparent_crc(p_2796->g_1625.s7, "p_2796->g_1625.s7", print_hash_value);
    transparent_crc(p_2796->g_1625.s8, "p_2796->g_1625.s8", print_hash_value);
    transparent_crc(p_2796->g_1625.s9, "p_2796->g_1625.s9", print_hash_value);
    transparent_crc(p_2796->g_1625.sa, "p_2796->g_1625.sa", print_hash_value);
    transparent_crc(p_2796->g_1625.sb, "p_2796->g_1625.sb", print_hash_value);
    transparent_crc(p_2796->g_1625.sc, "p_2796->g_1625.sc", print_hash_value);
    transparent_crc(p_2796->g_1625.sd, "p_2796->g_1625.sd", print_hash_value);
    transparent_crc(p_2796->g_1625.se, "p_2796->g_1625.se", print_hash_value);
    transparent_crc(p_2796->g_1625.sf, "p_2796->g_1625.sf", print_hash_value);
    transparent_crc(p_2796->g_1631.f0, "p_2796->g_1631.f0", print_hash_value);
    transparent_crc(p_2796->g_1640.x, "p_2796->g_1640.x", print_hash_value);
    transparent_crc(p_2796->g_1640.y, "p_2796->g_1640.y", print_hash_value);
    transparent_crc(p_2796->g_1679.s0, "p_2796->g_1679.s0", print_hash_value);
    transparent_crc(p_2796->g_1679.s1, "p_2796->g_1679.s1", print_hash_value);
    transparent_crc(p_2796->g_1679.s2, "p_2796->g_1679.s2", print_hash_value);
    transparent_crc(p_2796->g_1679.s3, "p_2796->g_1679.s3", print_hash_value);
    transparent_crc(p_2796->g_1679.s4, "p_2796->g_1679.s4", print_hash_value);
    transparent_crc(p_2796->g_1679.s5, "p_2796->g_1679.s5", print_hash_value);
    transparent_crc(p_2796->g_1679.s6, "p_2796->g_1679.s6", print_hash_value);
    transparent_crc(p_2796->g_1679.s7, "p_2796->g_1679.s7", print_hash_value);
    transparent_crc(p_2796->g_1725, "p_2796->g_1725", print_hash_value);
    transparent_crc(p_2796->g_1744.x, "p_2796->g_1744.x", print_hash_value);
    transparent_crc(p_2796->g_1744.y, "p_2796->g_1744.y", print_hash_value);
    transparent_crc(p_2796->g_1772.x, "p_2796->g_1772.x", print_hash_value);
    transparent_crc(p_2796->g_1772.y, "p_2796->g_1772.y", print_hash_value);
    transparent_crc(p_2796->g_1776.x, "p_2796->g_1776.x", print_hash_value);
    transparent_crc(p_2796->g_1776.y, "p_2796->g_1776.y", print_hash_value);
    transparent_crc(p_2796->g_1777.x, "p_2796->g_1777.x", print_hash_value);
    transparent_crc(p_2796->g_1777.y, "p_2796->g_1777.y", print_hash_value);
    transparent_crc(p_2796->g_1782.x, "p_2796->g_1782.x", print_hash_value);
    transparent_crc(p_2796->g_1782.y, "p_2796->g_1782.y", print_hash_value);
    transparent_crc(p_2796->g_1782.z, "p_2796->g_1782.z", print_hash_value);
    transparent_crc(p_2796->g_1782.w, "p_2796->g_1782.w", print_hash_value);
    transparent_crc(p_2796->g_1794, "p_2796->g_1794", print_hash_value);
    transparent_crc(p_2796->g_1871.s0, "p_2796->g_1871.s0", print_hash_value);
    transparent_crc(p_2796->g_1871.s1, "p_2796->g_1871.s1", print_hash_value);
    transparent_crc(p_2796->g_1871.s2, "p_2796->g_1871.s2", print_hash_value);
    transparent_crc(p_2796->g_1871.s3, "p_2796->g_1871.s3", print_hash_value);
    transparent_crc(p_2796->g_1871.s4, "p_2796->g_1871.s4", print_hash_value);
    transparent_crc(p_2796->g_1871.s5, "p_2796->g_1871.s5", print_hash_value);
    transparent_crc(p_2796->g_1871.s6, "p_2796->g_1871.s6", print_hash_value);
    transparent_crc(p_2796->g_1871.s7, "p_2796->g_1871.s7", print_hash_value);
    transparent_crc(p_2796->g_1904.x, "p_2796->g_1904.x", print_hash_value);
    transparent_crc(p_2796->g_1904.y, "p_2796->g_1904.y", print_hash_value);
    transparent_crc(p_2796->g_1905.x, "p_2796->g_1905.x", print_hash_value);
    transparent_crc(p_2796->g_1905.y, "p_2796->g_1905.y", print_hash_value);
    transparent_crc(p_2796->g_1905.z, "p_2796->g_1905.z", print_hash_value);
    transparent_crc(p_2796->g_1905.w, "p_2796->g_1905.w", print_hash_value);
    transparent_crc(p_2796->g_1966.x, "p_2796->g_1966.x", print_hash_value);
    transparent_crc(p_2796->g_1966.y, "p_2796->g_1966.y", print_hash_value);
    transparent_crc(p_2796->g_2047.f0, "p_2796->g_2047.f0", print_hash_value);
    transparent_crc(p_2796->g_2057.s0, "p_2796->g_2057.s0", print_hash_value);
    transparent_crc(p_2796->g_2057.s1, "p_2796->g_2057.s1", print_hash_value);
    transparent_crc(p_2796->g_2057.s2, "p_2796->g_2057.s2", print_hash_value);
    transparent_crc(p_2796->g_2057.s3, "p_2796->g_2057.s3", print_hash_value);
    transparent_crc(p_2796->g_2057.s4, "p_2796->g_2057.s4", print_hash_value);
    transparent_crc(p_2796->g_2057.s5, "p_2796->g_2057.s5", print_hash_value);
    transparent_crc(p_2796->g_2057.s6, "p_2796->g_2057.s6", print_hash_value);
    transparent_crc(p_2796->g_2057.s7, "p_2796->g_2057.s7", print_hash_value);
    transparent_crc(p_2796->g_2057.s8, "p_2796->g_2057.s8", print_hash_value);
    transparent_crc(p_2796->g_2057.s9, "p_2796->g_2057.s9", print_hash_value);
    transparent_crc(p_2796->g_2057.sa, "p_2796->g_2057.sa", print_hash_value);
    transparent_crc(p_2796->g_2057.sb, "p_2796->g_2057.sb", print_hash_value);
    transparent_crc(p_2796->g_2057.sc, "p_2796->g_2057.sc", print_hash_value);
    transparent_crc(p_2796->g_2057.sd, "p_2796->g_2057.sd", print_hash_value);
    transparent_crc(p_2796->g_2057.se, "p_2796->g_2057.se", print_hash_value);
    transparent_crc(p_2796->g_2057.sf, "p_2796->g_2057.sf", print_hash_value);
    transparent_crc(p_2796->g_2067.x, "p_2796->g_2067.x", print_hash_value);
    transparent_crc(p_2796->g_2067.y, "p_2796->g_2067.y", print_hash_value);
    transparent_crc(p_2796->g_2146.x, "p_2796->g_2146.x", print_hash_value);
    transparent_crc(p_2796->g_2146.y, "p_2796->g_2146.y", print_hash_value);
    transparent_crc(p_2796->g_2151.x, "p_2796->g_2151.x", print_hash_value);
    transparent_crc(p_2796->g_2151.y, "p_2796->g_2151.y", print_hash_value);
    transparent_crc(p_2796->g_2206.s0, "p_2796->g_2206.s0", print_hash_value);
    transparent_crc(p_2796->g_2206.s1, "p_2796->g_2206.s1", print_hash_value);
    transparent_crc(p_2796->g_2206.s2, "p_2796->g_2206.s2", print_hash_value);
    transparent_crc(p_2796->g_2206.s3, "p_2796->g_2206.s3", print_hash_value);
    transparent_crc(p_2796->g_2206.s4, "p_2796->g_2206.s4", print_hash_value);
    transparent_crc(p_2796->g_2206.s5, "p_2796->g_2206.s5", print_hash_value);
    transparent_crc(p_2796->g_2206.s6, "p_2796->g_2206.s6", print_hash_value);
    transparent_crc(p_2796->g_2206.s7, "p_2796->g_2206.s7", print_hash_value);
    transparent_crc(p_2796->g_2227.x, "p_2796->g_2227.x", print_hash_value);
    transparent_crc(p_2796->g_2227.y, "p_2796->g_2227.y", print_hash_value);
    transparent_crc(p_2796->g_2247.s0, "p_2796->g_2247.s0", print_hash_value);
    transparent_crc(p_2796->g_2247.s1, "p_2796->g_2247.s1", print_hash_value);
    transparent_crc(p_2796->g_2247.s2, "p_2796->g_2247.s2", print_hash_value);
    transparent_crc(p_2796->g_2247.s3, "p_2796->g_2247.s3", print_hash_value);
    transparent_crc(p_2796->g_2247.s4, "p_2796->g_2247.s4", print_hash_value);
    transparent_crc(p_2796->g_2247.s5, "p_2796->g_2247.s5", print_hash_value);
    transparent_crc(p_2796->g_2247.s6, "p_2796->g_2247.s6", print_hash_value);
    transparent_crc(p_2796->g_2247.s7, "p_2796->g_2247.s7", print_hash_value);
    transparent_crc(p_2796->g_2247.s8, "p_2796->g_2247.s8", print_hash_value);
    transparent_crc(p_2796->g_2247.s9, "p_2796->g_2247.s9", print_hash_value);
    transparent_crc(p_2796->g_2247.sa, "p_2796->g_2247.sa", print_hash_value);
    transparent_crc(p_2796->g_2247.sb, "p_2796->g_2247.sb", print_hash_value);
    transparent_crc(p_2796->g_2247.sc, "p_2796->g_2247.sc", print_hash_value);
    transparent_crc(p_2796->g_2247.sd, "p_2796->g_2247.sd", print_hash_value);
    transparent_crc(p_2796->g_2247.se, "p_2796->g_2247.se", print_hash_value);
    transparent_crc(p_2796->g_2247.sf, "p_2796->g_2247.sf", print_hash_value);
    transparent_crc(p_2796->g_2271.f0, "p_2796->g_2271.f0", print_hash_value);
    transparent_crc(p_2796->g_2274.x, "p_2796->g_2274.x", print_hash_value);
    transparent_crc(p_2796->g_2274.y, "p_2796->g_2274.y", print_hash_value);
    transparent_crc(p_2796->g_2274.z, "p_2796->g_2274.z", print_hash_value);
    transparent_crc(p_2796->g_2274.w, "p_2796->g_2274.w", print_hash_value);
    transparent_crc(p_2796->g_2305, "p_2796->g_2305", print_hash_value);
    transparent_crc(p_2796->g_2316.x, "p_2796->g_2316.x", print_hash_value);
    transparent_crc(p_2796->g_2316.y, "p_2796->g_2316.y", print_hash_value);
    transparent_crc(p_2796->g_2318.s0, "p_2796->g_2318.s0", print_hash_value);
    transparent_crc(p_2796->g_2318.s1, "p_2796->g_2318.s1", print_hash_value);
    transparent_crc(p_2796->g_2318.s2, "p_2796->g_2318.s2", print_hash_value);
    transparent_crc(p_2796->g_2318.s3, "p_2796->g_2318.s3", print_hash_value);
    transparent_crc(p_2796->g_2318.s4, "p_2796->g_2318.s4", print_hash_value);
    transparent_crc(p_2796->g_2318.s5, "p_2796->g_2318.s5", print_hash_value);
    transparent_crc(p_2796->g_2318.s6, "p_2796->g_2318.s6", print_hash_value);
    transparent_crc(p_2796->g_2318.s7, "p_2796->g_2318.s7", print_hash_value);
    transparent_crc(p_2796->g_2318.s8, "p_2796->g_2318.s8", print_hash_value);
    transparent_crc(p_2796->g_2318.s9, "p_2796->g_2318.s9", print_hash_value);
    transparent_crc(p_2796->g_2318.sa, "p_2796->g_2318.sa", print_hash_value);
    transparent_crc(p_2796->g_2318.sb, "p_2796->g_2318.sb", print_hash_value);
    transparent_crc(p_2796->g_2318.sc, "p_2796->g_2318.sc", print_hash_value);
    transparent_crc(p_2796->g_2318.sd, "p_2796->g_2318.sd", print_hash_value);
    transparent_crc(p_2796->g_2318.se, "p_2796->g_2318.se", print_hash_value);
    transparent_crc(p_2796->g_2318.sf, "p_2796->g_2318.sf", print_hash_value);
    transparent_crc(p_2796->g_2341.s0, "p_2796->g_2341.s0", print_hash_value);
    transparent_crc(p_2796->g_2341.s1, "p_2796->g_2341.s1", print_hash_value);
    transparent_crc(p_2796->g_2341.s2, "p_2796->g_2341.s2", print_hash_value);
    transparent_crc(p_2796->g_2341.s3, "p_2796->g_2341.s3", print_hash_value);
    transparent_crc(p_2796->g_2341.s4, "p_2796->g_2341.s4", print_hash_value);
    transparent_crc(p_2796->g_2341.s5, "p_2796->g_2341.s5", print_hash_value);
    transparent_crc(p_2796->g_2341.s6, "p_2796->g_2341.s6", print_hash_value);
    transparent_crc(p_2796->g_2341.s7, "p_2796->g_2341.s7", print_hash_value);
    transparent_crc(p_2796->g_2341.s8, "p_2796->g_2341.s8", print_hash_value);
    transparent_crc(p_2796->g_2341.s9, "p_2796->g_2341.s9", print_hash_value);
    transparent_crc(p_2796->g_2341.sa, "p_2796->g_2341.sa", print_hash_value);
    transparent_crc(p_2796->g_2341.sb, "p_2796->g_2341.sb", print_hash_value);
    transparent_crc(p_2796->g_2341.sc, "p_2796->g_2341.sc", print_hash_value);
    transparent_crc(p_2796->g_2341.sd, "p_2796->g_2341.sd", print_hash_value);
    transparent_crc(p_2796->g_2341.se, "p_2796->g_2341.se", print_hash_value);
    transparent_crc(p_2796->g_2341.sf, "p_2796->g_2341.sf", print_hash_value);
    transparent_crc(p_2796->g_2349, "p_2796->g_2349", print_hash_value);
    transparent_crc(p_2796->g_2351, "p_2796->g_2351", print_hash_value);
    transparent_crc(p_2796->g_2412.s0, "p_2796->g_2412.s0", print_hash_value);
    transparent_crc(p_2796->g_2412.s1, "p_2796->g_2412.s1", print_hash_value);
    transparent_crc(p_2796->g_2412.s2, "p_2796->g_2412.s2", print_hash_value);
    transparent_crc(p_2796->g_2412.s3, "p_2796->g_2412.s3", print_hash_value);
    transparent_crc(p_2796->g_2412.s4, "p_2796->g_2412.s4", print_hash_value);
    transparent_crc(p_2796->g_2412.s5, "p_2796->g_2412.s5", print_hash_value);
    transparent_crc(p_2796->g_2412.s6, "p_2796->g_2412.s6", print_hash_value);
    transparent_crc(p_2796->g_2412.s7, "p_2796->g_2412.s7", print_hash_value);
    transparent_crc(p_2796->g_2416.s0, "p_2796->g_2416.s0", print_hash_value);
    transparent_crc(p_2796->g_2416.s1, "p_2796->g_2416.s1", print_hash_value);
    transparent_crc(p_2796->g_2416.s2, "p_2796->g_2416.s2", print_hash_value);
    transparent_crc(p_2796->g_2416.s3, "p_2796->g_2416.s3", print_hash_value);
    transparent_crc(p_2796->g_2416.s4, "p_2796->g_2416.s4", print_hash_value);
    transparent_crc(p_2796->g_2416.s5, "p_2796->g_2416.s5", print_hash_value);
    transparent_crc(p_2796->g_2416.s6, "p_2796->g_2416.s6", print_hash_value);
    transparent_crc(p_2796->g_2416.s7, "p_2796->g_2416.s7", print_hash_value);
    transparent_crc(p_2796->g_2451.s0, "p_2796->g_2451.s0", print_hash_value);
    transparent_crc(p_2796->g_2451.s1, "p_2796->g_2451.s1", print_hash_value);
    transparent_crc(p_2796->g_2451.s2, "p_2796->g_2451.s2", print_hash_value);
    transparent_crc(p_2796->g_2451.s3, "p_2796->g_2451.s3", print_hash_value);
    transparent_crc(p_2796->g_2451.s4, "p_2796->g_2451.s4", print_hash_value);
    transparent_crc(p_2796->g_2451.s5, "p_2796->g_2451.s5", print_hash_value);
    transparent_crc(p_2796->g_2451.s6, "p_2796->g_2451.s6", print_hash_value);
    transparent_crc(p_2796->g_2451.s7, "p_2796->g_2451.s7", print_hash_value);
    transparent_crc(p_2796->g_2451.s8, "p_2796->g_2451.s8", print_hash_value);
    transparent_crc(p_2796->g_2451.s9, "p_2796->g_2451.s9", print_hash_value);
    transparent_crc(p_2796->g_2451.sa, "p_2796->g_2451.sa", print_hash_value);
    transparent_crc(p_2796->g_2451.sb, "p_2796->g_2451.sb", print_hash_value);
    transparent_crc(p_2796->g_2451.sc, "p_2796->g_2451.sc", print_hash_value);
    transparent_crc(p_2796->g_2451.sd, "p_2796->g_2451.sd", print_hash_value);
    transparent_crc(p_2796->g_2451.se, "p_2796->g_2451.se", print_hash_value);
    transparent_crc(p_2796->g_2451.sf, "p_2796->g_2451.sf", print_hash_value);
    transparent_crc(p_2796->g_2452.s0, "p_2796->g_2452.s0", print_hash_value);
    transparent_crc(p_2796->g_2452.s1, "p_2796->g_2452.s1", print_hash_value);
    transparent_crc(p_2796->g_2452.s2, "p_2796->g_2452.s2", print_hash_value);
    transparent_crc(p_2796->g_2452.s3, "p_2796->g_2452.s3", print_hash_value);
    transparent_crc(p_2796->g_2452.s4, "p_2796->g_2452.s4", print_hash_value);
    transparent_crc(p_2796->g_2452.s5, "p_2796->g_2452.s5", print_hash_value);
    transparent_crc(p_2796->g_2452.s6, "p_2796->g_2452.s6", print_hash_value);
    transparent_crc(p_2796->g_2452.s7, "p_2796->g_2452.s7", print_hash_value);
    transparent_crc(p_2796->g_2453.x, "p_2796->g_2453.x", print_hash_value);
    transparent_crc(p_2796->g_2453.y, "p_2796->g_2453.y", print_hash_value);
    transparent_crc(p_2796->g_2465.x, "p_2796->g_2465.x", print_hash_value);
    transparent_crc(p_2796->g_2465.y, "p_2796->g_2465.y", print_hash_value);
    transparent_crc(p_2796->g_2482, "p_2796->g_2482", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2796->g_2483[i][j], "p_2796->g_2483[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2796->g_2484, "p_2796->g_2484", print_hash_value);
    transparent_crc(p_2796->g_2485, "p_2796->g_2485", print_hash_value);
    transparent_crc(p_2796->g_2486, "p_2796->g_2486", print_hash_value);
    transparent_crc(p_2796->g_2487, "p_2796->g_2487", print_hash_value);
    transparent_crc(p_2796->g_2488, "p_2796->g_2488", print_hash_value);
    transparent_crc(p_2796->g_2489, "p_2796->g_2489", print_hash_value);
    transparent_crc(p_2796->g_2490, "p_2796->g_2490", print_hash_value);
    transparent_crc(p_2796->g_2491, "p_2796->g_2491", print_hash_value);
    transparent_crc(p_2796->g_2492, "p_2796->g_2492", print_hash_value);
    transparent_crc(p_2796->g_2493, "p_2796->g_2493", print_hash_value);
    transparent_crc(p_2796->g_2494, "p_2796->g_2494", print_hash_value);
    transparent_crc(p_2796->g_2495, "p_2796->g_2495", print_hash_value);
    transparent_crc(p_2796->g_2496, "p_2796->g_2496", print_hash_value);
    transparent_crc(p_2796->g_2497, "p_2796->g_2497", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2796->g_2498[i], "p_2796->g_2498[i]", print_hash_value);

    }
    transparent_crc(p_2796->g_2499, "p_2796->g_2499", print_hash_value);
    transparent_crc(p_2796->g_2500, "p_2796->g_2500", print_hash_value);
    transparent_crc(p_2796->g_2501, "p_2796->g_2501", print_hash_value);
    transparent_crc(p_2796->g_2502, "p_2796->g_2502", print_hash_value);
    transparent_crc(p_2796->g_2503, "p_2796->g_2503", print_hash_value);
    transparent_crc(p_2796->g_2504, "p_2796->g_2504", print_hash_value);
    transparent_crc(p_2796->g_2505, "p_2796->g_2505", print_hash_value);
    transparent_crc(p_2796->g_2506, "p_2796->g_2506", print_hash_value);
    transparent_crc(p_2796->g_2508, "p_2796->g_2508", print_hash_value);
    transparent_crc(p_2796->g_2510, "p_2796->g_2510", print_hash_value);
    transparent_crc(p_2796->g_2511, "p_2796->g_2511", print_hash_value);
    transparent_crc(p_2796->g_2512.x, "p_2796->g_2512.x", print_hash_value);
    transparent_crc(p_2796->g_2512.y, "p_2796->g_2512.y", print_hash_value);
    transparent_crc(p_2796->g_2513, "p_2796->g_2513", print_hash_value);
    transparent_crc(p_2796->g_2514, "p_2796->g_2514", print_hash_value);
    transparent_crc(p_2796->g_2515, "p_2796->g_2515", print_hash_value);
    transparent_crc(p_2796->g_2516.s0, "p_2796->g_2516.s0", print_hash_value);
    transparent_crc(p_2796->g_2516.s1, "p_2796->g_2516.s1", print_hash_value);
    transparent_crc(p_2796->g_2516.s2, "p_2796->g_2516.s2", print_hash_value);
    transparent_crc(p_2796->g_2516.s3, "p_2796->g_2516.s3", print_hash_value);
    transparent_crc(p_2796->g_2516.s4, "p_2796->g_2516.s4", print_hash_value);
    transparent_crc(p_2796->g_2516.s5, "p_2796->g_2516.s5", print_hash_value);
    transparent_crc(p_2796->g_2516.s6, "p_2796->g_2516.s6", print_hash_value);
    transparent_crc(p_2796->g_2516.s7, "p_2796->g_2516.s7", print_hash_value);
    transparent_crc(p_2796->g_2517, "p_2796->g_2517", print_hash_value);
    transparent_crc(p_2796->g_2518, "p_2796->g_2518", print_hash_value);
    transparent_crc(p_2796->g_2519, "p_2796->g_2519", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2796->g_2520[i][j][k], "p_2796->g_2520[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2796->g_2521, "p_2796->g_2521", print_hash_value);
    transparent_crc(p_2796->g_2522, "p_2796->g_2522", print_hash_value);
    transparent_crc(p_2796->g_2523, "p_2796->g_2523", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_2796->g_2524[i][j][k], "p_2796->g_2524[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2796->g_2525, "p_2796->g_2525", print_hash_value);
    transparent_crc(p_2796->g_2526, "p_2796->g_2526", print_hash_value);
    transparent_crc(p_2796->g_2527, "p_2796->g_2527", print_hash_value);
    transparent_crc(p_2796->g_2528, "p_2796->g_2528", print_hash_value);
    transparent_crc(p_2796->g_2529, "p_2796->g_2529", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2796->g_2530[i][j][k], "p_2796->g_2530[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2796->g_2531, "p_2796->g_2531", print_hash_value);
    transparent_crc(p_2796->g_2551.x, "p_2796->g_2551.x", print_hash_value);
    transparent_crc(p_2796->g_2551.y, "p_2796->g_2551.y", print_hash_value);
    transparent_crc(p_2796->g_2551.z, "p_2796->g_2551.z", print_hash_value);
    transparent_crc(p_2796->g_2551.w, "p_2796->g_2551.w", print_hash_value);
    transparent_crc(p_2796->g_2563.s0, "p_2796->g_2563.s0", print_hash_value);
    transparent_crc(p_2796->g_2563.s1, "p_2796->g_2563.s1", print_hash_value);
    transparent_crc(p_2796->g_2563.s2, "p_2796->g_2563.s2", print_hash_value);
    transparent_crc(p_2796->g_2563.s3, "p_2796->g_2563.s3", print_hash_value);
    transparent_crc(p_2796->g_2563.s4, "p_2796->g_2563.s4", print_hash_value);
    transparent_crc(p_2796->g_2563.s5, "p_2796->g_2563.s5", print_hash_value);
    transparent_crc(p_2796->g_2563.s6, "p_2796->g_2563.s6", print_hash_value);
    transparent_crc(p_2796->g_2563.s7, "p_2796->g_2563.s7", print_hash_value);
    transparent_crc(p_2796->g_2563.s8, "p_2796->g_2563.s8", print_hash_value);
    transparent_crc(p_2796->g_2563.s9, "p_2796->g_2563.s9", print_hash_value);
    transparent_crc(p_2796->g_2563.sa, "p_2796->g_2563.sa", print_hash_value);
    transparent_crc(p_2796->g_2563.sb, "p_2796->g_2563.sb", print_hash_value);
    transparent_crc(p_2796->g_2563.sc, "p_2796->g_2563.sc", print_hash_value);
    transparent_crc(p_2796->g_2563.sd, "p_2796->g_2563.sd", print_hash_value);
    transparent_crc(p_2796->g_2563.se, "p_2796->g_2563.se", print_hash_value);
    transparent_crc(p_2796->g_2563.sf, "p_2796->g_2563.sf", print_hash_value);
    transparent_crc(p_2796->g_2586.x, "p_2796->g_2586.x", print_hash_value);
    transparent_crc(p_2796->g_2586.y, "p_2796->g_2586.y", print_hash_value);
    transparent_crc(p_2796->g_2697.f0, "p_2796->g_2697.f0", print_hash_value);
    transparent_crc(p_2796->g_2699.x, "p_2796->g_2699.x", print_hash_value);
    transparent_crc(p_2796->g_2699.y, "p_2796->g_2699.y", print_hash_value);
    transparent_crc(p_2796->g_2706.s0, "p_2796->g_2706.s0", print_hash_value);
    transparent_crc(p_2796->g_2706.s1, "p_2796->g_2706.s1", print_hash_value);
    transparent_crc(p_2796->g_2706.s2, "p_2796->g_2706.s2", print_hash_value);
    transparent_crc(p_2796->g_2706.s3, "p_2796->g_2706.s3", print_hash_value);
    transparent_crc(p_2796->g_2706.s4, "p_2796->g_2706.s4", print_hash_value);
    transparent_crc(p_2796->g_2706.s5, "p_2796->g_2706.s5", print_hash_value);
    transparent_crc(p_2796->g_2706.s6, "p_2796->g_2706.s6", print_hash_value);
    transparent_crc(p_2796->g_2706.s7, "p_2796->g_2706.s7", print_hash_value);
    transparent_crc(p_2796->g_2708.s0, "p_2796->g_2708.s0", print_hash_value);
    transparent_crc(p_2796->g_2708.s1, "p_2796->g_2708.s1", print_hash_value);
    transparent_crc(p_2796->g_2708.s2, "p_2796->g_2708.s2", print_hash_value);
    transparent_crc(p_2796->g_2708.s3, "p_2796->g_2708.s3", print_hash_value);
    transparent_crc(p_2796->g_2708.s4, "p_2796->g_2708.s4", print_hash_value);
    transparent_crc(p_2796->g_2708.s5, "p_2796->g_2708.s5", print_hash_value);
    transparent_crc(p_2796->g_2708.s6, "p_2796->g_2708.s6", print_hash_value);
    transparent_crc(p_2796->g_2708.s7, "p_2796->g_2708.s7", print_hash_value);
    transparent_crc(p_2796->g_2708.s8, "p_2796->g_2708.s8", print_hash_value);
    transparent_crc(p_2796->g_2708.s9, "p_2796->g_2708.s9", print_hash_value);
    transparent_crc(p_2796->g_2708.sa, "p_2796->g_2708.sa", print_hash_value);
    transparent_crc(p_2796->g_2708.sb, "p_2796->g_2708.sb", print_hash_value);
    transparent_crc(p_2796->g_2708.sc, "p_2796->g_2708.sc", print_hash_value);
    transparent_crc(p_2796->g_2708.sd, "p_2796->g_2708.sd", print_hash_value);
    transparent_crc(p_2796->g_2708.se, "p_2796->g_2708.se", print_hash_value);
    transparent_crc(p_2796->g_2708.sf, "p_2796->g_2708.sf", print_hash_value);
    transparent_crc(p_2796->g_2709.s0, "p_2796->g_2709.s0", print_hash_value);
    transparent_crc(p_2796->g_2709.s1, "p_2796->g_2709.s1", print_hash_value);
    transparent_crc(p_2796->g_2709.s2, "p_2796->g_2709.s2", print_hash_value);
    transparent_crc(p_2796->g_2709.s3, "p_2796->g_2709.s3", print_hash_value);
    transparent_crc(p_2796->g_2709.s4, "p_2796->g_2709.s4", print_hash_value);
    transparent_crc(p_2796->g_2709.s5, "p_2796->g_2709.s5", print_hash_value);
    transparent_crc(p_2796->g_2709.s6, "p_2796->g_2709.s6", print_hash_value);
    transparent_crc(p_2796->g_2709.s7, "p_2796->g_2709.s7", print_hash_value);
    transparent_crc(p_2796->g_2710.x, "p_2796->g_2710.x", print_hash_value);
    transparent_crc(p_2796->g_2710.y, "p_2796->g_2710.y", print_hash_value);
    transparent_crc(p_2796->g_2715.s0, "p_2796->g_2715.s0", print_hash_value);
    transparent_crc(p_2796->g_2715.s1, "p_2796->g_2715.s1", print_hash_value);
    transparent_crc(p_2796->g_2715.s2, "p_2796->g_2715.s2", print_hash_value);
    transparent_crc(p_2796->g_2715.s3, "p_2796->g_2715.s3", print_hash_value);
    transparent_crc(p_2796->g_2715.s4, "p_2796->g_2715.s4", print_hash_value);
    transparent_crc(p_2796->g_2715.s5, "p_2796->g_2715.s5", print_hash_value);
    transparent_crc(p_2796->g_2715.s6, "p_2796->g_2715.s6", print_hash_value);
    transparent_crc(p_2796->g_2715.s7, "p_2796->g_2715.s7", print_hash_value);
    transparent_crc(p_2796->g_2715.s8, "p_2796->g_2715.s8", print_hash_value);
    transparent_crc(p_2796->g_2715.s9, "p_2796->g_2715.s9", print_hash_value);
    transparent_crc(p_2796->g_2715.sa, "p_2796->g_2715.sa", print_hash_value);
    transparent_crc(p_2796->g_2715.sb, "p_2796->g_2715.sb", print_hash_value);
    transparent_crc(p_2796->g_2715.sc, "p_2796->g_2715.sc", print_hash_value);
    transparent_crc(p_2796->g_2715.sd, "p_2796->g_2715.sd", print_hash_value);
    transparent_crc(p_2796->g_2715.se, "p_2796->g_2715.se", print_hash_value);
    transparent_crc(p_2796->g_2715.sf, "p_2796->g_2715.sf", print_hash_value);
    transparent_crc(p_2796->g_2742.x, "p_2796->g_2742.x", print_hash_value);
    transparent_crc(p_2796->g_2742.y, "p_2796->g_2742.y", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2796->g_2767[i], "p_2796->g_2767[i]", print_hash_value);

    }
    transparent_crc(p_2796->g_2775.x, "p_2796->g_2775.x", print_hash_value);
    transparent_crc(p_2796->g_2775.y, "p_2796->g_2775.y", print_hash_value);
    transparent_crc(p_2796->g_2775.z, "p_2796->g_2775.z", print_hash_value);
    transparent_crc(p_2796->g_2775.w, "p_2796->g_2775.w", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2796->g_2785[i][j], "p_2796->g_2785[i][j]", print_hash_value);

        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
