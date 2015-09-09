// ---fake_divergence -g 93,70,1 -l 1,35,1
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


// Seed: 41

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile uint32_t  f1;
   int64_t  f2;
};

union U1 {
   uint32_t  f0;
   volatile uint16_t  f1;
   volatile int8_t * f2;
   volatile struct S0  f3;
};

struct S2 {
    int32_t g_2;
    volatile int32_t g_5;
    int32_t g_6[10];
    int32_t g_10;
    uint64_t g_32;
    uint32_t g_33[7];
    uint8_t g_39;
    volatile int8_t * volatile g_40;
    union U1 g_50;
    int32_t g_52;
    uint8_t g_60;
    uint32_t g_75;
    uint32_t g_117;
    uint32_t g_119;
    volatile struct S0 g_130;
    int32_t * volatile g_131;
    uint64_t *g_147;
    uint8_t g_158[3];
    volatile int32_t * volatile *g_173;
    uint32_t g_184[3][9][2];
    volatile struct S0 g_203;
    uint64_t g_205;
    volatile int8_t g_235;
    volatile uint8_t g_236;
    uint16_t g_247;
    uint16_t *g_246[5];
    uint16_t *g_248;
    volatile int32_t ** volatile g_252;
    volatile int32_t *g_254;
    volatile int32_t ** volatile g_253;
    uint32_t g_265;
    uint64_t **g_271[10];
    volatile struct S0 g_272;
    volatile struct S0 * volatile g_274[6];
    int32_t g_279[6][2];
    uint32_t g_280[10];
    uint16_t g_291;
    uint8_t g_313;
    uint16_t g_344;
    volatile union U1 g_349;
    int8_t g_356;
    int8_t *g_355[2];
    struct S0 g_374;
    struct S0 g_376;
    volatile uint32_t *g_387;
    volatile uint32_t ** volatile g_386;
    uint16_t g_405;
    union U1 g_454;
    volatile struct S0 g_467;
    struct S0 g_472;
    int32_t * volatile g_480;
    int32_t * volatile g_481;
    struct S0 g_491[4][2][5];
    int32_t g_494;
    uint16_t g_522;
    struct S0 g_529;
    uint8_t *g_531;
    int64_t g_548;
    int64_t g_550[9][10][2];
    struct S0 g_561;
    volatile struct S0 g_570;
    int8_t g_673;
    volatile struct S0 g_684;
    volatile union U1 g_688;
    volatile struct S0 g_693[10];
    volatile struct S0 * volatile g_694[3][2];
    volatile int32_t g_702[5][8][1];
    uint64_t g_724[7][5];
    volatile struct S0 g_727[7][8];
    volatile union U1 g_763;
    int32_t *g_775[6];
    volatile struct S0 g_786;
    volatile struct S0 * volatile g_787[4][10][6];
    volatile struct S0 * volatile g_788[5][10];
    volatile struct S0 * volatile g_789;
    volatile struct S0 g_790;
    volatile struct S0 * volatile g_791[6];
    volatile struct S0 * volatile g_792;
    int64_t *g_813;
    int64_t *g_814;
    int64_t *** volatile g_896;
    int64_t *g_899;
    int64_t **g_898;
    volatile struct S0 g_902;
    uint16_t *** volatile g_913;
    uint16_t **g_915[7];
    uint16_t *** volatile g_914[8][2];
    uint16_t *** volatile g_916;
    volatile int32_t ** volatile g_919;
    volatile union U1 *g_921[3][8];
    volatile union U1 ** volatile g_920;
    union U1 g_935;
    int32_t **g_951;
    int32_t ***g_950;
    volatile union U1 g_966[7][9];
    struct S0 *g_972;
    struct S0 g_978;
    uint8_t g_986[8][1];
    uint32_t *g_1010;
    uint32_t *g_1011;
    struct S0 g_1052;
    volatile int32_t ** volatile g_1072;
    uint32_t g_1093;
    int32_t *g_1094[10];
    union U1 g_1114[1];
    volatile struct S0 * volatile g_1124;
    volatile struct S0 g_1140;
    volatile struct S0 * volatile g_1141;
    union U1 g_1143[6][4];
    union U1 g_1182;
    uint8_t g_1195;
    volatile int8_t g_1201;
    volatile struct S0 g_1207;
    volatile struct S0 g_1209;
    volatile struct S0 g_1210[1];
    struct S0 g_1218;
    int16_t g_1226;
    volatile union U1 g_1244;
    struct S0 g_1247;
    struct S0 g_1248;
    volatile union U1 g_1270;
    uint32_t g_1309;
    volatile int32_t ** volatile g_1311;
    volatile struct S0 g_1332;
    struct S0 g_1333;
    int64_t **g_1383;
    struct S0 *g_1390;
    volatile struct S0 g_1402;
    volatile struct S0 g_1422;
    volatile struct S0 * volatile g_1423;
    int8_t **g_1453[7][8];
    volatile union U1 g_1469;
    struct S0 g_1513;
    struct S0 g_1514;
    volatile uint64_t g_1537;
    uint16_t g_1552;
    uint8_t g_1581;
    struct S0 g_1599;
    volatile uint32_t g_1629;
    volatile uint32_t *g_1628[3];
    uint64_t g_1631;
    volatile struct S0 g_1707;
    volatile int8_t g_1732[6];
    int64_t g_1739;
    volatile struct S0 g_1755;
    int64_t g_1759;
    uint64_t ***g_1779;
    uint64_t **** volatile g_1778;
    struct S0 g_1787;
    volatile struct S0 g_1801;
    struct S0 g_1803[6];
    volatile union U1 ** volatile g_1829[4][9][7];
    volatile union U1 ** volatile g_1830;
    struct S0 g_1906;
    struct S0 g_1909;
    struct S0 *g_1910;
    int8_t g_1917;
    uint16_t ***g_1971;
    uint16_t ****g_1970[1];
    int32_t g_1995;
    volatile struct S0 g_2039;
    volatile struct S0 g_2077[10];
    volatile struct S0 g_2078;
    int16_t g_2120[1];
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
uint32_t  func_1(struct S2 * p_2128);
struct S0  func_25(int32_t * p_26, int8_t  p_27, uint8_t  p_28, uint32_t  p_29, int32_t * p_30, struct S2 * p_2128);
int16_t  func_46(int32_t  p_47, struct S2 * p_2128);
int32_t  func_53(int32_t * p_54, struct S2 * p_2128);
uint32_t  func_63(int32_t  p_64, struct S2 * p_2128);
int16_t  func_78(uint32_t  p_79, int32_t  p_80, struct S2 * p_2128);
int32_t  func_81(uint64_t * p_82, int8_t  p_83, uint8_t  p_84, int16_t  p_85, struct S2 * p_2128);
uint64_t * func_86(int32_t * p_87, uint32_t * p_88, int64_t  p_89, int8_t  p_90, int32_t  p_91, struct S2 * p_2128);
int32_t * func_92(uint8_t  p_93, uint64_t * p_94, uint64_t * p_95, uint32_t * p_96, struct S2 * p_2128);
uint64_t * func_100(int64_t  p_101, uint32_t  p_102, int32_t  p_103, uint8_t  p_104, int32_t * p_105, struct S2 * p_2128);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2128->g_2 p_2128->g_6 p_2128->g_33 p_2128->g_5 p_2128->g_40 p_2128->g_50 p_2128->g_387 p_2128->g_376.f1 p_2128->g_1011 p_2128->g_117 p_2128->g_531 p_2128->g_313 p_2128->g_1226 p_2128->g_1010 p_2128->g_1309 p_2128->g_271 p_2128->g_386 p_2128->g_1390 p_2128->g_898 p_2128->g_899 p_2128->g_374.f2 p_2128->g_1093 p_2128->g_1917 p_2128->g_1909 p_2128->g_254 p_2128->g_950 p_2128->g_951 p_2128->g_775 p_2128->g_10 p_2128->g_60 p_2128->g_2120 p_2128->g_1248.f2 p_2128->g_919 p_2128->g_789 p_2128->g_693 p_2128->g_2078.f0 p_2128->g_356 p_2128->g_1311 p_2128->g_1995 p_2128->g_684.f1
 * writes: p_2128->g_2 p_2128->g_6 p_2128->g_32 p_2128->g_33 p_2128->g_39 p_2128->g_52 p_2128->g_1218.f0 p_2128->g_75 p_2128->g_374.f2 p_2128->g_1247.f0 p_2128->g_1226 p_2128->g_935.f0 p_2128->g_972 p_2128->g_1910 p_2128->g_1093 p_2128->g_1513 p_2128->g_1333.f0 p_2128->g_1309 p_2128->g_5 p_2128->g_10 p_2128->g_60 p_2128->g_2120 p_2128->g_724 p_2128->g_1631 p_2128->g_356 p_2128->g_1995
 */
uint32_t  func_1(struct S2 * p_2128)
{ /* block id: 4 */
    uint8_t l_11 = 1UL;
    int32_t *l_41 = (void*)0;
    for (p_2128->g_2 = 0; (p_2128->g_2 < (-23)); p_2128->g_2--)
    { /* block id: 7 */
        int32_t *l_14 = &p_2128->g_6[2];
        int32_t *l_15 = &p_2128->g_6[5];
        int32_t *l_16 = &p_2128->g_10;
        int32_t *l_17[2][9][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        uint32_t l_18 = 4294967292UL;
        int i, j, k;
        for (p_2128->g_6[5] = 3; (p_2128->g_6[5] < (-22)); p_2128->g_6[5] = safe_sub_func_uint64_t_u_u(p_2128->g_6[5], 1))
        { /* block id: 10 */
            int32_t *l_9[6] = {&p_2128->g_2,&p_2128->g_6[9],&p_2128->g_2,&p_2128->g_2,&p_2128->g_6[9],&p_2128->g_2};
            int i;
            ++l_11;
        }
        l_18++;
    }
    for (l_11 = 0; (l_11 <= 9); l_11 += 1)
    { /* block id: 17 */
        uint64_t *l_31 = &p_2128->g_32;
        uint8_t *l_38 = &p_2128->g_39;
        int8_t *l_2126 = &p_2128->g_356;
        int32_t *l_2127 = &p_2128->g_1995;
        int i;
        (*l_2127) &= ((p_2128->g_6[l_11] != (safe_mod_func_uint64_t_u_u(((safe_lshift_func_int8_t_s_u(((*l_2126) &= (((((l_11 , p_2128->g_6[l_11]) < p_2128->g_6[l_11]) , (((func_25(&p_2128->g_6[l_11], (((*l_31) = (p_2128->g_6[0] < p_2128->g_6[l_11])) , 0x75L), ((p_2128->g_33[1]--) , ((((*l_38) = (safe_rshift_func_int16_t_s_u((-1L), p_2128->g_5))) , p_2128->g_40) != (void*)0)), p_2128->g_6[7], l_41, p_2128) , (*p_2128->g_531)) ^ (-2L)) ^ p_2128->g_1248.f2)) || p_2128->g_2078.f0) & (*p_2128->g_1011))), 7)) , 0x85E169F026E8CC69L), (-1L)))) , (**p_2128->g_1311));
        if ((**p_2128->g_951))
            continue;
    }
    return p_2128->g_684.f1;
}


/* ------------------------------------------ */
/* 
 * reads : p_2128->g_2 p_2128->g_50 p_2128->g_39 p_2128->g_1218.f0 p_2128->g_75 p_2128->g_374.f2 p_2128->g_1247.f0 p_2128->g_387 p_2128->g_376.f1 p_2128->g_1011 p_2128->g_117 p_2128->g_531 p_2128->g_313 p_2128->g_1226 p_2128->g_1010 p_2128->g_1309 p_2128->g_271 p_2128->g_386 p_2128->g_1390 p_2128->g_898 p_2128->g_899 p_2128->g_1093 p_2128->g_1917 p_2128->g_1909 p_2128->g_1333.f0 p_2128->g_254 p_2128->g_5 p_2128->g_950 p_2128->g_951 p_2128->g_775 p_2128->g_10 p_2128->g_60 p_2128->g_2120 p_2128->g_1248.f2 p_2128->g_919 p_2128->g_789 p_2128->g_693
 * writes: p_2128->g_2 p_2128->g_39 p_2128->g_33 p_2128->g_52 p_2128->g_1218.f0 p_2128->g_75 p_2128->g_374.f2 p_2128->g_1247.f0 p_2128->g_1226 p_2128->g_935.f0 p_2128->g_972 p_2128->g_1910 p_2128->g_1093 p_2128->g_1513 p_2128->g_1333.f0 p_2128->g_1309 p_2128->g_5 p_2128->g_10 p_2128->g_60 p_2128->g_2120 p_2128->g_724 p_2128->g_1631
 */
struct S0  func_25(int32_t * p_26, int8_t  p_27, uint8_t  p_28, uint32_t  p_29, int32_t * p_30, struct S2 * p_2128)
{ /* block id: 21 */
    int32_t *l_51 = &p_2128->g_52;
    int16_t *l_2119 = &p_2128->g_2120[0];
    int32_t l_2121 = 0x24C444E5L;
    uint64_t *l_2122 = (void*)0;
    uint64_t *l_2123 = &p_2128->g_724[6][2];
    uint64_t *l_2124 = &p_2128->g_1631;
    int32_t l_2125 = 0x3ED459C9L;
    for (p_2128->g_2 = 5; (p_2128->g_2 >= 2); p_2128->g_2 -= 1)
    { /* block id: 24 */
        for (p_2128->g_39 = 0; p_2128->g_39 < 7; p_2128->g_39 += 1)
        {
            p_2128->g_33[p_2128->g_39] = 0UL;
        }
    }
    l_2125 |= ((((*l_2124) = (safe_div_func_uint32_t_u_u((((safe_rshift_func_int16_t_s_u(((*l_2119) &= (p_28 || func_46(((*l_51) = (p_28 <= (safe_div_func_uint8_t_u_u(p_29, (p_2128->g_50 , 1L))))), p_2128))), 8)) ^ (l_2121 , ((((*l_2123) = ((void*)0 != (*p_2128->g_898))) ^ l_2121) | p_2128->g_1248.f2))) && 1L), 0x79E38E1FL))) , p_28) , (**p_2128->g_919));
    return (*p_2128->g_789);
}


/* ------------------------------------------ */
/* 
 * reads : p_2128->g_39 p_2128->g_1218.f0 p_2128->g_75 p_2128->g_374.f2 p_2128->g_1247.f0 p_2128->g_387 p_2128->g_376.f1 p_2128->g_1011 p_2128->g_117 p_2128->g_2 p_2128->g_531 p_2128->g_313 p_2128->g_1226 p_2128->g_1010 p_2128->g_1309 p_2128->g_271 p_2128->g_386 p_2128->g_1390 p_2128->g_898 p_2128->g_899 p_2128->g_1093 p_2128->g_1917 p_2128->g_1909 p_2128->g_1333.f0 p_2128->g_254 p_2128->g_5 p_2128->g_950 p_2128->g_951 p_2128->g_775 p_2128->g_10 p_2128->g_60
 * writes: p_2128->g_39 p_2128->g_1218.f0 p_2128->g_75 p_2128->g_374.f2 p_2128->g_1247.f0 p_2128->g_1226 p_2128->g_935.f0 p_2128->g_2 p_2128->g_972 p_2128->g_1910 p_2128->g_1093 p_2128->g_1513 p_2128->g_1333.f0 p_2128->g_1309 p_2128->g_5 p_2128->g_10 p_2128->g_60
 */
int16_t  func_46(int32_t  p_47, struct S2 * p_2128)
{ /* block id: 28 */
    uint8_t *l_1960 = &p_2128->g_39;
    uint8_t **l_1959 = &l_1960;
    uint32_t *l_1963 = &p_2128->g_1143[2][2].f0;
    int32_t l_2046 = 0x360228D2L;
    uint64_t ***l_2064 = &p_2128->g_271[3];
    int32_t l_2099 = (-6L);
    uint16_t *l_2112[2][1][10] = {{{&p_2128->g_1906.f0,&p_2128->g_374.f0,&p_2128->g_344,&p_2128->g_374.f0,&p_2128->g_1906.f0,&p_2128->g_1906.f0,&p_2128->g_374.f0,&p_2128->g_344,&p_2128->g_374.f0,&p_2128->g_1906.f0}},{{&p_2128->g_1906.f0,&p_2128->g_374.f0,&p_2128->g_344,&p_2128->g_374.f0,&p_2128->g_1906.f0,&p_2128->g_1906.f0,&p_2128->g_374.f0,&p_2128->g_344,&p_2128->g_374.f0,&p_2128->g_1906.f0}}};
    int i, j, k;
    (***p_2128->g_950) |= func_53(&p_2128->g_2, p_2128);
    for (p_2128->g_60 = 21; (p_2128->g_60 > 50); p_2128->g_60 = safe_add_func_uint16_t_u_u(p_2128->g_60, 6))
    { /* block id: 992 */
        uint64_t *l_1962 = (void*)0;
        int16_t l_1991 = (-1L);
        int64_t **l_1999 = (void*)0;
        int32_t l_2023 = 0L;
        uint64_t ****l_2085 = &l_2064;
        int32_t l_2113 = 1L;
        uint64_t l_2114 = 0x753F42E68157F630L;
        uint16_t l_2115[1][6] = {{1UL,65535UL,1UL,1UL,65535UL,1UL}};
        uint16_t l_2116[10][9][2] = {{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}},{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}},{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}},{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}},{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}},{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}},{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}},{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}},{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}},{{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL},{0xFD9EL,65531UL}}};
        int i, j, k;
        (1 + 1);
    }
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_2128->g_39 p_2128->g_1218.f0 p_2128->g_75 p_2128->g_374.f2 p_2128->g_1247.f0 p_2128->g_387 p_2128->g_376.f1 p_2128->g_1011 p_2128->g_117 p_2128->g_2 p_2128->g_531 p_2128->g_313 p_2128->g_1226 p_2128->g_1010 p_2128->g_1309 p_2128->g_271 p_2128->g_386 p_2128->g_1390 p_2128->g_898 p_2128->g_899 p_2128->g_1093 p_2128->g_1917 p_2128->g_1909 p_2128->g_1333.f0 p_2128->g_254 p_2128->g_5
 * writes: p_2128->g_39 p_2128->g_1218.f0 p_2128->g_75 p_2128->g_374.f2 p_2128->g_1247.f0 p_2128->g_1226 p_2128->g_935.f0 p_2128->g_2 p_2128->g_972 p_2128->g_1910 p_2128->g_1093 p_2128->g_1513 p_2128->g_1333.f0 p_2128->g_1309 p_2128->g_5
 */
int32_t  func_53(int32_t * p_54, struct S2 * p_2128)
{ /* block id: 29 */
    int8_t l_67 = 0x76L;
    int16_t l_1740 = (-1L);
    uint64_t ***l_1813 = &p_2128->g_271[4];
    struct S0 *l_1846 = &p_2128->g_1218;
    int32_t *l_1890 = &p_2128->g_52;
    int32_t **l_1891 = (void*)0;
    struct S0 *l_1908 = &p_2128->g_1909;
    volatile int32_t *l_1923 = &p_2128->g_5;
    for (p_2128->g_39 = (-16); (p_2128->g_39 < 25); ++p_2128->g_39)
    { /* block id: 32 */
        int32_t l_57 = 0x12973452L;
        int32_t l_58 = 0L;
        uint8_t *l_59 = &p_2128->g_60;
        uint32_t *l_74 = &p_2128->g_75;
        int64_t *l_1738 = &p_2128->g_1739;
        int32_t *l_1741 = (void*)0;
        int32_t l_1742[2];
        union U1 *l_1842[4][2];
        union U1 **l_1841 = &l_1842[0][1];
        int32_t l_1845[10][5][5] = {{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}},{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}},{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}},{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}},{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}},{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}},{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}},{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}},{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}},{{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)},{1L,(-3L),1L,1L,(-3L)}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1742[i] = 0x2BE5A1D2L;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 2; j++)
                l_1842[i][j] = &p_2128->g_1114[0];
        }
        (1 + 1);
    }
    l_1846 = &p_2128->g_1513;
    for (p_2128->g_1218.f0 = (-8); (p_2128->g_1218.f0 != 22); p_2128->g_1218.f0++)
    { /* block id: 933 */
        int8_t l_1864 = 0x7CL;
        int16_t *l_1869 = &p_2128->g_1226;
        int16_t **l_1870 = &l_1869;
        int16_t *l_1872[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t **l_1871 = &l_1872[2];
        int16_t *l_1887[7] = {&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226};
        int i;
        for (p_2128->g_75 = (-28); (p_2128->g_75 <= 10); ++p_2128->g_75)
        { /* block id: 936 */
            uint64_t l_1859 = 0UL;
            for (p_2128->g_374.f2 = 0; (p_2128->g_374.f2 >= 2); p_2128->g_374.f2++)
            { /* block id: 939 */
                uint64_t l_1856 = 0x173588E1DCDD3D62L;
                for (p_2128->g_1247.f0 = (-1); (p_2128->g_1247.f0 == 15); p_2128->g_1247.f0++)
                { /* block id: 942 */
                    int32_t *l_1855[5][9][5] = {{{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]}},{{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]}},{{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]}},{{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]}},{{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]},{&p_2128->g_10,&p_2128->g_2,&p_2128->g_6[5],&p_2128->g_6[9],&p_2128->g_6[5]}}};
                    int i, j, k;
                    l_1856--;
                    return l_1859;
                }
            }
        }
        if (l_1740)
            break;
        (*p_54) = (safe_mod_func_uint16_t_u_u((safe_add_func_int8_t_s_s(((l_1864 & (((safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((((*l_1870) = l_1869) == ((*l_1871) = &p_2128->g_1226)), (*p_2128->g_387))), (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), l_1864)))) > (((*p_2128->g_1010) = (safe_add_func_int8_t_s_s((safe_div_func_int64_t_s_s(0x2DCE19EA0AF5A481L, (safe_rshift_func_int16_t_s_u((p_2128->g_1226 |= (safe_div_func_int8_t_s_s((safe_add_func_uint16_t_u_u(l_1864, ((((safe_lshift_func_uint8_t_u_u(((*p_2128->g_1011) >= ((((*p_54) , (void*)0) == (void*)0) ^ (*p_54))), 1)) != l_1740) || GROUP_DIVERGE(1, 1)) <= l_1740))), (*p_2128->g_531)))), 8)))), l_67))) ^ (*p_54))) != l_1864)) , l_67), 0x73L)), p_2128->g_1309));
    }
    if ((safe_rshift_func_int8_t_s_u(((l_1890 = l_1890) != (void*)0), (l_67 != ((void*)0 == (*l_1813))))))
    { /* block id: 956 */
        uint32_t l_1904[4][2][3] = {{{4UL,0UL,4UL},{4UL,0UL,4UL}},{{4UL,0UL,4UL},{4UL,0UL,4UL}},{{4UL,0UL,4UL},{4UL,0UL,4UL}},{{4UL,0UL,4UL},{4UL,0UL,4UL}}};
        struct S0 *l_1905 = &p_2128->g_1906;
        struct S0 **l_1907 = (void*)0;
        int8_t ***l_1913 = &p_2128->g_1453[3][3];
        uint32_t *l_1914 = &p_2128->g_1093;
        int32_t **l_1915 = &l_1890;
        int16_t *l_1916 = &p_2128->g_1226;
        int i, j, k;
        (*l_1846) = ((+((safe_mod_func_uint16_t_u_u(((((*l_1916) ^= (0x404DD47AL != ((safe_mod_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((FAKE_DIVERGE(p_2128->group_1_offset, get_group_id(1), 10) , (safe_mod_func_int64_t_s_s(((((*l_1914) &= (((**p_2128->g_386) == (safe_lshift_func_int8_t_s_s((safe_add_func_int32_t_s_s(l_1904[1][1][1], l_1904[1][1][1])), ((((((((p_2128->g_972 = (l_1905 = p_2128->g_1390)) != (((void*)0 != p_54) , (p_2128->g_1910 = l_1908))) && ((**p_2128->g_898) |= ((safe_sub_func_int16_t_s_s((-10L), l_1904[1][1][1])) <= l_1740))) <= l_1740) , l_1913) == l_1913) > FAKE_DIVERGE(p_2128->local_2_offset, get_local_id(2), 10)) , l_67)))) , l_1904[2][1][2])) , (void*)0) == l_1915), l_67))), (*p_2128->g_531))), l_1904[3][1][2])) && l_1904[3][0][2]))) & 0UL) <= 0x58CDDC0ACEA3B435L), p_2128->g_1917)) , l_1740)) , (*l_1908));
    }
    else
    { /* block id: 964 */
        for (p_2128->g_1333.f0 = 0; (p_2128->g_1333.f0 > 20); ++p_2128->g_1333.f0)
        { /* block id: 967 */
            uint8_t l_1922 = 3UL;
            for (p_2128->g_1309 = 0; (p_2128->g_1309 > 21); p_2128->g_1309 = safe_add_func_int16_t_s_s(p_2128->g_1309, 5))
            { /* block id: 970 */
                uint8_t l_1926 = 255UL;
                int32_t *l_1934[10] = {&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10};
                uint32_t l_1935 = 0x060FE0B6L;
                int i;
                (*p_2128->g_254) = (l_1922 = 0L);
            }
            return (*l_1923);
        }
    }
    return (*p_54);
}


/* ------------------------------------------ */
/* 
 * reads : p_2128->g_899 p_2128->g_374.f2 p_2128->g_376.f0 p_2128->g_184 p_2128->g_1755 p_2128->g_491.f0 p_2128->g_356 p_2128->g_1778 p_2128->g_1011 p_2128->g_1333.f2 p_2128->g_75 p_2128->g_1787 p_2128->g_1195 p_2128->g_454.f0 p_2128->g_52 p_2128->g_1801 p_2128->g_1423 p_2128->g_1803 p_2128->g_919
 * writes: p_2128->g_491.f0 p_2128->g_1759 p_2128->g_1226 p_2128->g_356 p_2128->g_117 p_2128->g_1143.f0 p_2128->g_1333.f2 p_2128->g_75 p_2128->g_52 p_2128->g_272 p_2128->g_374 p_2128->g_254
 */
uint32_t  func_63(int32_t  p_64, struct S2 * p_2128)
{ /* block id: 861 */
    uint32_t l_1743 = 0x6B7D6D3BL;
    int64_t l_1754 = 0x51B76B1C979FD7D8L;
    uint16_t *l_1756 = &p_2128->g_491[2][1][0].f0;
    uint16_t *l_1757[4][6] = {{&p_2128->g_247,&p_2128->g_472.f0,&p_2128->g_247,&p_2128->g_247,&p_2128->g_472.f0,&p_2128->g_247},{&p_2128->g_247,&p_2128->g_472.f0,&p_2128->g_247,&p_2128->g_247,&p_2128->g_472.f0,&p_2128->g_247},{&p_2128->g_247,&p_2128->g_472.f0,&p_2128->g_247,&p_2128->g_247,&p_2128->g_472.f0,&p_2128->g_247},{&p_2128->g_247,&p_2128->g_472.f0,&p_2128->g_247,&p_2128->g_247,&p_2128->g_472.f0,&p_2128->g_247}};
    int32_t l_1758 = 0x7F68A4F1L;
    int32_t l_1760 = 0L;
    uint64_t *l_1763[8];
    union U1 *l_1781[5] = {&p_2128->g_1143[2][2],&p_2128->g_1143[2][2],&p_2128->g_1143[2][2],&p_2128->g_1143[2][2],&p_2128->g_1143[2][2]};
    int32_t **l_1790 = &p_2128->g_1094[0];
    int i, j;
    for (i = 0; i < 8; i++)
        l_1763[i] = &p_2128->g_32;
    l_1760 |= ((l_1743 ^ (p_2128->g_1759 = (l_1758 &= (((*l_1756) |= (p_64 | (((*p_2128->g_899) != 0xC59CCF0B91169ADEL) && (p_2128->g_376.f0 ^ ((((safe_mod_func_int32_t_s_s((((l_1743 >= (safe_mul_func_int16_t_s_s(((safe_sub_func_int16_t_s_s(l_1743, ((l_1754 = (((safe_rshift_func_uint8_t_u_u(l_1743, 2)) <= (safe_rshift_func_int16_t_s_s(p_64, p_2128->g_184[0][7][1]))) , l_1743)) , p_64))) || 0x75L), l_1743))) , p_2128->g_1755) , (-1L)), l_1743)) , l_1754) ^ l_1743) & l_1743))))) != 0x4815L)))) , (-10L));
    for (l_1743 = 14; (l_1743 == 37); l_1743 = safe_add_func_int32_t_s_s(l_1743, 9))
    { /* block id: 869 */
        uint64_t *l_1764 = &p_2128->g_32;
        int16_t *l_1770 = &p_2128->g_1226;
        int8_t *l_1777 = &p_2128->g_356;
        int32_t l_1780 = 0x1DCA0FF6L;
        union U1 **l_1782 = &l_1781[0];
        l_1780 = (((l_1763[4] != l_1764) , ((GROUP_DIVERGE(1, 1) >= (((safe_unary_minus_func_uint32_t_u((safe_rshift_func_int16_t_s_s((0x3EE64D597D6E22D3L && p_64), 7)))) || (safe_lshift_func_int16_t_s_u(((*l_1770) = 0x25E9L), 10))) & ((*p_2128->g_1011) = (~((safe_div_func_int16_t_s_s(l_1754, (safe_sub_func_int64_t_s_s(((safe_div_func_int16_t_s_s((((*l_1777) &= 0x76L) != p_64), ((p_2128->g_1778 != &p_2128->g_1779) , 0x2981L))) | l_1758), l_1743)))) || 0x33L))))) , l_1760)) || 0x35A54D9C05EAE805L);
        (*l_1782) = l_1781[2];
    }
    for (p_2128->g_1333.f2 = 0; (p_2128->g_1333.f2 < 1); ++p_2128->g_1333.f2)
    { /* block id: 878 */
        uint32_t l_1799[5][3] = {{0x289C51C8L,0xC2F0D515L,0x12F948D3L},{0x289C51C8L,0xC2F0D515L,0x12F948D3L},{0x289C51C8L,0xC2F0D515L,0x12F948D3L},{0x289C51C8L,0xC2F0D515L,0x12F948D3L},{0x289C51C8L,0xC2F0D515L,0x12F948D3L}};
        struct S0 *l_1804 = &p_2128->g_374;
        int i, j;
        for (p_2128->g_75 = 0; (p_2128->g_75 >= 29); p_2128->g_75++)
        { /* block id: 881 */
            int64_t l_1800 = (-2L);
            if ((FAKE_DIVERGE(p_2128->global_1_offset, get_global_id(1), 10) || (GROUP_DIVERGE(1, 1) & ((p_2128->g_1787 , (safe_rshift_func_int8_t_s_s(p_64, ((void*)0 == l_1790)))) ^ (safe_mul_func_uint16_t_u_u((p_2128->g_1195 , ((safe_mod_func_int16_t_s_s((GROUP_DIVERGE(0, 1) & ((p_64 , (((safe_mul_func_uint16_t_u_u(((0xEDCE407FBFFB227AL & FAKE_DIVERGE(p_2128->global_0_offset, get_global_id(0), 10)) && 0xCDB8ED703DCC152AL), ((safe_lshift_func_int16_t_s_s(p_2128->g_454.f0, p_64)) > p_64))) , 1L) > 0L)) <= GROUP_DIVERGE(2, 1))), p_64)) , l_1799[4][0])), l_1800))))))
            { /* block id: 882 */
                for (p_2128->g_52 = 3; (p_2128->g_52 <= 9); p_2128->g_52 += 1)
                { /* block id: 885 */
                    (*p_2128->g_1423) = p_2128->g_1801;
                }
            }
            else
            { /* block id: 888 */
                int32_t l_1802 = 0x44CB0007L;
                return l_1802;
            }
            if (l_1800)
                break;
        }
        (*l_1804) = p_2128->g_1803[2];
    }
    (*p_2128->g_919) = (void*)0;
    return p_64;
}


/* ------------------------------------------ */
/* 
 * reads : p_2128->g_40 p_2128->g_33 p_2128->g_32 p_2128->g_39 p_2128->g_2 p_2128->g_119 p_2128->g_130 p_2128->g_131 p_2128->g_6 p_2128->g_50.f0 p_2128->g_117 p_2128->g_10 p_2128->g_253 p_2128->g_254 p_2128->g_5 p_2128->g_1247.f2 p_2128->g_1333.f2 p_2128->g_899 p_2128->g_374.f2 p_2128->g_1469 p_2128->g_280 p_2128->g_919 p_2128->g_1226 p_2128->g_786.f1 p_2128->g_950 p_2128->g_951 p_2128->g_775 p_2128->g_550 p_2128->g_548 p_2128->g_1052.f1 p_2128->g_248 p_2128->g_247 p_2128->g_898 p_2128->g_1114.f0 p_2128->g_1513 p_2128->g_205 p_2128->g_673 p_2128->g_1072 p_2128->g_1537 p_2128->g_1552 p_2128->g_1195 p_2128->g_1581 p_2128->g_1422.f1 p_2128->g_916 p_2128->g_915 p_2128->g_246 p_2128->g_1247.f1 p_2128->g_972 p_2128->g_531 p_2128->g_313 p_2128->g_376.f2 p_2128->g_1599.f1 p_2128->g_1244.f0 p_2128->g_1209.f1 p_2128->g_1010 p_2128->g_935.f0 p_2128->g_1209.f2 p_2128->g_1707 p_2128->g_789 p_2128->g_1052.f0 p_2128->g_1218.f0 p_2128->g_902.f2 p_2128->g_472.f0 p_2128->g_920 p_2128->g_921
 * writes: p_2128->g_117 p_2128->g_119 p_2128->g_2 p_2128->g_131 p_2128->g_147 p_2128->g_10 p_2128->g_5 p_2128->g_1247.f2 p_2128->g_1453 p_2128->g_374.f2 p_2128->g_1226 p_2128->g_376.f2 p_2128->g_548 p_2128->g_1011 p_2128->g_1514 p_2128->g_205 p_2128->g_355 p_2128->g_673 p_2128->g_1537 p_2128->g_775 p_2128->g_376.f0 p_2128->g_1248.f2 p_2128->g_1552 p_2128->g_1247.f0 p_2128->g_248 p_2128->g_254 p_2128->g_313 p_2128->g_1581 p_2128->g_693 p_2128->g_1052.f0 p_2128->g_1218.f0 p_2128->g_472.f0
 */
int16_t  func_78(uint32_t  p_79, int32_t  p_80, struct S2 * p_2128)
{ /* block id: 35 */
    uint32_t l_97 = 0x2A3F7B2CL;
    int32_t l_106 = (-1L);
    uint32_t l_115 = 3UL;
    uint32_t *l_116 = &p_2128->g_117;
    uint32_t *l_118 = &p_2128->g_119;
    uint64_t *l_125[6][10] = {{&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32},{&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32},{&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32},{&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32},{&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32},{&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32,&p_2128->g_32}};
    uint64_t **l_148 = &l_125[2][9];
    int8_t **l_1450 = &p_2128->g_355[1];
    int8_t **l_1452 = &p_2128->g_355[1];
    int8_t ***l_1451[4];
    int8_t **l_1454[10][6] = {{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]},{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]},{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]},{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]},{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]},{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]},{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]},{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]},{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]},{(void*)0,&p_2128->g_355[0],&p_2128->g_355[0],&p_2128->g_355[1],&p_2128->g_355[0],&p_2128->g_355[1]}};
    int16_t *l_1478[10] = {&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226,&p_2128->g_1226};
    int32_t l_1479 = (-1L);
    int32_t l_1480[8][3][2] = {{{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L}},{{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L}},{{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L}},{{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L}},{{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L}},{{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L}},{{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L}},{{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L},{0x0BC9A3A4L,0x1734AD38L}}};
    int32_t l_1481 = 8L;
    int64_t *l_1482 = &p_2128->g_376.f2;
    uint64_t l_1507 = 0xB03A64ACFE70000CL;
    uint16_t l_1512 = 65532UL;
    int16_t l_1550 = 0x1646L;
    struct S0 *l_1598 = &p_2128->g_1599;
    uint32_t l_1639 = 0xB93026E6L;
    uint8_t l_1699[8][9] = {{0x19L,254UL,0x19L,0x19L,254UL,0x19L,0x19L,254UL,0x19L},{0x19L,254UL,0x19L,0x19L,254UL,0x19L,0x19L,254UL,0x19L},{0x19L,254UL,0x19L,0x19L,254UL,0x19L,0x19L,254UL,0x19L},{0x19L,254UL,0x19L,0x19L,254UL,0x19L,0x19L,254UL,0x19L},{0x19L,254UL,0x19L,0x19L,254UL,0x19L,0x19L,254UL,0x19L},{0x19L,254UL,0x19L,0x19L,254UL,0x19L,0x19L,254UL,0x19L},{0x19L,254UL,0x19L,0x19L,254UL,0x19L,0x19L,254UL,0x19L},{0x19L,254UL,0x19L,0x19L,254UL,0x19L,0x19L,254UL,0x19L}};
    int64_t l_1703 = 4L;
    int32_t *l_1710 = &l_1480[5][2][1];
    uint32_t l_1721 = 7UL;
    uint8_t *l_1725[6][1][9] = {{{&p_2128->g_1195,&p_2128->g_1581,&p_2128->g_1581,&p_2128->g_1195,&l_1699[6][2],(void*)0,&p_2128->g_986[2][0],(void*)0,&l_1699[6][6]}},{{&p_2128->g_1195,&p_2128->g_1581,&p_2128->g_1581,&p_2128->g_1195,&l_1699[6][2],(void*)0,&p_2128->g_986[2][0],(void*)0,&l_1699[6][6]}},{{&p_2128->g_1195,&p_2128->g_1581,&p_2128->g_1581,&p_2128->g_1195,&l_1699[6][2],(void*)0,&p_2128->g_986[2][0],(void*)0,&l_1699[6][6]}},{{&p_2128->g_1195,&p_2128->g_1581,&p_2128->g_1581,&p_2128->g_1195,&l_1699[6][2],(void*)0,&p_2128->g_986[2][0],(void*)0,&l_1699[6][6]}},{{&p_2128->g_1195,&p_2128->g_1581,&p_2128->g_1581,&p_2128->g_1195,&l_1699[6][2],(void*)0,&p_2128->g_986[2][0],(void*)0,&l_1699[6][6]}},{{&p_2128->g_1195,&p_2128->g_1581,&p_2128->g_1581,&p_2128->g_1195,&l_1699[6][2],(void*)0,&p_2128->g_986[2][0],(void*)0,&l_1699[6][6]}}};
    int32_t l_1730 = 0x712609DDL;
    int32_t l_1731 = (-1L);
    uint64_t l_1735 = 0x35E46C45D673C5A4L;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_1451[i] = &l_1452;
    (*p_2128->g_254) = func_81(((*l_148) = (p_2128->g_147 = func_86(func_92((--l_97), func_100(((l_106 == (safe_mul_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((((safe_sub_func_int32_t_s_s(p_80, ((*l_118) = ((*l_116) = (l_115 , 0xF8E388CDL))))) != (safe_rshift_func_uint8_t_u_s(((((p_79 , 65529UL) == ((0x16E02F5F5C31AFCDL <= p_79) != l_115)) , p_2128->g_40) == (void*)0), 2))) < 0L) <= l_106), p_2128->g_33[1])), p_2128->g_32))) < l_106), p_80, p_2128->g_39, p_2128->g_2, &p_2128->g_52, p_2128), l_125[4][7], l_118, p_2128), l_116, l_115, p_79, p_80, p_2128))), l_106, l_106, l_115, p_2128);
    for (p_2128->g_1247.f2 = 0; (p_2128->g_1247.f2 < (-3)); p_2128->g_1247.f2--)
    { /* block id: 723 */
        return p_2128->g_1333.f2;
    }
    if (((l_106 <= (l_1450 != (l_1454[7][4] = (p_2128->g_1453[2][0] = &p_2128->g_355[1])))) && (safe_mod_func_uint16_t_u_u((((*p_2128->g_899) ^= p_79) ^ (18446744073709551607UL > (safe_add_func_int8_t_s_s(((safe_unary_minus_func_int32_t_s((safe_sub_func_int64_t_s_s((safe_sub_func_int64_t_s_s((safe_unary_minus_func_int32_t_s(((***p_2128->g_950) = (FAKE_DIVERGE(p_2128->global_0_offset, get_global_id(0), 10) , (safe_mul_func_uint8_t_u_u((((((*l_1482) = (l_1481 = (l_1480[7][1][1] ^= ((p_2128->g_1469 , (safe_mul_func_uint16_t_u_u((l_1479 |= ((l_115 == (safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_2128->group_0_offset, get_group_id(0), 10), (safe_mul_func_int16_t_s_s(p_2128->g_280[9], (p_2128->g_1226 ^= (safe_div_func_int32_t_s_s((l_106 &= (**p_2128->g_919)), (-5L))))))))) | 4294967289UL)), 0x4406L))) == 0x02L)))) || 0x59DE6CC659456637L) , p_2128->g_786.f1) > p_79), p_79)))))), p_2128->g_117)), p_2128->g_550[0][2][1])))) , l_97), 0x48L)))), l_97))))
    { /* block id: 736 */
        uint32_t *l_1488 = &p_2128->g_1143[2][2].f0;
        uint32_t **l_1489 = &p_2128->g_1011;
        int32_t l_1504[10][6][2] = {{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}},{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}},{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}},{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}},{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}},{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}},{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}},{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}},{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}},{{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL},{0x39D6EC4CL,0x36EEA39AL}}};
        uint32_t *l_1508[2][8][8] = {{{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093}},{{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093},{(void*)0,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,&p_2128->g_1093,(void*)0,&p_2128->g_1093}}};
        int32_t l_1509 = (-3L);
        uint64_t *l_1515 = &p_2128->g_32;
        int8_t *l_1526[7] = {&p_2128->g_356,&p_2128->g_356,&p_2128->g_356,&p_2128->g_356,&p_2128->g_356,&p_2128->g_356,&p_2128->g_356};
        int64_t **l_1583 = (void*)0;
        uint32_t l_1630[9][9][2] = {{{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L}},{{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L}},{{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L}},{{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L}},{{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L}},{{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L}},{{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L}},{{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L}},{{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L},{1UL,0xC1EBFD98L}}};
        int32_t *l_1633 = &l_106;
        int32_t *l_1634 = (void*)0;
        int32_t *l_1635 = &p_2128->g_2;
        int32_t *l_1636 = &l_1479;
        int32_t *l_1637 = &l_1480[1][2][0];
        int32_t *l_1638[6] = {&l_1481,&l_1479,&l_1481,&l_1481,&l_1479,&l_1481};
        int i, j, k;
        for (p_2128->g_548 = 0; (p_2128->g_548 <= 10); p_2128->g_548 = safe_add_func_int8_t_s_s(p_2128->g_548, 5))
        { /* block id: 739 */
            uint32_t l_1485 = 0xF3498A7EL;
            l_1485++;
            return p_2128->g_1052.f1;
        }
        if (((((*l_1489) = l_1488) != l_1488) < ((safe_mod_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u((((!(safe_add_func_uint32_t_u_u(((safe_div_func_int64_t_s_s((((safe_rshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u(0x08L, (safe_add_func_uint64_t_u_u(((void*)0 == &p_2128->g_1311), (l_1504[1][1][0] >= ((l_1509 = (safe_mul_func_int16_t_s_s(p_2128->g_130.f0, l_1507))) , ((safe_div_func_int32_t_s_s(((l_1504[1][1][0] == (*p_2128->g_248)) , p_79), (**p_2128->g_919))) , l_1504[1][1][0]))))))), p_79)) && p_79) , l_1480[7][1][1]), (**p_2128->g_898))) | l_106), p_79))) , p_80) != GROUP_DIVERGE(2, 1)), (***p_2128->g_950))) != p_80), p_2128->g_1114[0].f0)) , p_79)))
        { /* block id: 745 */
            (***p_2128->g_950) = p_80;
            return l_1512;
        }
        else
        { /* block id: 748 */
            uint64_t *l_1521[1][2];
            int8_t *l_1527 = (void*)0;
            int8_t ***l_1530 = &p_2128->g_1453[5][1];
            int32_t l_1531 = 0x5F11E1B3L;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_1521[i][j] = &p_2128->g_724[4][4];
            }
            p_2128->g_1514 = p_2128->g_1513;
            (***p_2128->g_950) ^= ((l_1515 == (((((safe_rshift_func_uint16_t_u_u(0UL, p_79)) && ((FAKE_DIVERGE(p_2128->group_2_offset, get_group_id(2), 10) != 3L) , ((safe_unary_minus_func_int32_t_s((safe_add_func_uint64_t_u_u((p_2128->g_205--), ((safe_add_func_int16_t_s_s(p_79, (((*l_1450) = l_1526[2]) != l_1527))) == (safe_mul_func_uint8_t_u_u((l_1530 != &p_2128->g_1453[2][0]), 0UL))))))) < p_79))) , l_97) , p_79) , (void*)0)) <= l_1531);
        }
        for (p_2128->g_673 = 21; (p_2128->g_673 > (-15)); p_2128->g_673 = safe_sub_func_uint16_t_u_u(p_2128->g_673, 3))
        { /* block id: 756 */
            int32_t *l_1534 = (void*)0;
            int32_t *l_1535 = &p_2128->g_2;
            int32_t *l_1536[9] = {&l_1504[2][0][0],&p_2128->g_2,&l_1504[2][0][0],&l_1504[2][0][0],&p_2128->g_2,&l_1504[2][0][0],&l_1504[2][0][0],&p_2128->g_2,&l_1504[2][0][0]};
            uint16_t *l_1575 = &p_2128->g_291;
            int32_t l_1627 = (-5L);
            int i;
            if ((**p_2128->g_1072))
                break;
            ++p_2128->g_1537;
            (**p_2128->g_950) = l_1535;
            for (p_2128->g_376.f0 = 14; (p_2128->g_376.f0 != 4); --p_2128->g_376.f0)
            { /* block id: 762 */
                int32_t *l_1544[8][3] = {{&l_1480[7][1][1],&l_1504[1][1][0],&p_2128->g_2},{&l_1480[7][1][1],&l_1504[1][1][0],&p_2128->g_2},{&l_1480[7][1][1],&l_1504[1][1][0],&p_2128->g_2},{&l_1480[7][1][1],&l_1504[1][1][0],&p_2128->g_2},{&l_1480[7][1][1],&l_1504[1][1][0],&p_2128->g_2},{&l_1480[7][1][1],&l_1504[1][1][0],&p_2128->g_2},{&l_1480[7][1][1],&l_1504[1][1][0],&p_2128->g_2},{&l_1480[7][1][1],&l_1504[1][1][0],&p_2128->g_2}};
                int64_t **l_1582 = (void*)0;
                int i, j;
                for (p_2128->g_1247.f2 = (-22); (p_2128->g_1247.f2 > 2); p_2128->g_1247.f2 = safe_add_func_int32_t_s_s(p_2128->g_1247.f2, 4))
                { /* block id: 765 */
                    (**p_2128->g_950) = l_1544[3][2];
                }
                for (p_2128->g_1248.f2 = 0; (p_2128->g_1248.f2 != 3); p_2128->g_1248.f2 = safe_add_func_uint64_t_u_u(p_2128->g_1248.f2, 9))
                { /* block id: 770 */
                    uint32_t l_1547 = 0xFB0340CEL;
                    int32_t l_1551[7] = {3L,3L,3L,3L,3L,3L,3L};
                    int i;
                    --l_1547;
                    p_2128->g_1552--;
                    for (p_2128->g_2 = (-4); (p_2128->g_2 >= 3); p_2128->g_2++)
                    { /* block id: 775 */
                        return p_79;
                    }
                }
                for (p_2128->g_1247.f0 = 0; (p_2128->g_1247.f0 <= 56); p_2128->g_1247.f0 = safe_add_func_uint8_t_u_u(p_2128->g_1247.f0, 1))
                { /* block id: 781 */
                    int32_t l_1562 = 0L;
                    int32_t l_1565 = 0x587D8D37L;
                    int32_t l_1566 = (-5L);
                    int32_t l_1567[6] = {0x6E6D9B3AL,0x6E6D9B3AL,0x6E6D9B3AL,0x6E6D9B3AL,0x6E6D9B3AL,0x6E6D9B3AL};
                    int32_t l_1596 = 2L;
                    int i;
                    for (p_2128->g_1226 = 0; (p_2128->g_1226 <= (-20)); p_2128->g_1226 = safe_sub_func_uint32_t_u_u(p_2128->g_1226, 6))
                    { /* block id: 784 */
                        int32_t l_1561 = 0x1E0C7D67L;
                        int32_t l_1563 = 0x1651B741L;
                        int32_t l_1564 = 0x3013F01CL;
                        uint32_t l_1568[2];
                        uint16_t **l_1576 = &p_2128->g_248;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1568[i] = 1UL;
                        ++l_1568[1];
                        (*l_1535) &= ((((p_79 != ((!(safe_sub_func_uint16_t_u_u((safe_div_func_int16_t_s_s((GROUP_DIVERGE(1, 1) || ((-1L) != ((l_1575 == ((*l_1576) = &l_1512)) && (safe_mul_func_uint16_t_u_u(((((void*)0 != l_1544[3][2]) , (((p_2128->g_1195 , p_79) , (safe_mod_func_uint64_t_u_u(((((p_80 , p_2128->g_1581) <= p_80) == l_1481) , 0xFA12757B2992E012L), l_1568[1]))) > l_1550)) == 65535UL), p_80))))), 0x4F94L)), p_2128->g_1422.f1))) >= l_1504[1][1][0])) == p_79) , l_1582) != l_1583);
                        if (l_1550)
                            continue;
                        l_1480[6][0][1] ^= 0x18EE714DL;
                    }
                    for (l_1562 = (-13); (l_1562 > 5); l_1562 = safe_add_func_int16_t_s_s(l_1562, 9))
                    { /* block id: 793 */
                        uint16_t l_1597[7][10] = {{0xA9A6L,1UL,0x0525L,0x4EAAL,0x47D2L,0xF5F8L,0UL,0x191FL,0xAA96L,0UL},{0xA9A6L,1UL,0x0525L,0x4EAAL,0x47D2L,0xF5F8L,0UL,0x191FL,0xAA96L,0UL},{0xA9A6L,1UL,0x0525L,0x4EAAL,0x47D2L,0xF5F8L,0UL,0x191FL,0xAA96L,0UL},{0xA9A6L,1UL,0x0525L,0x4EAAL,0x47D2L,0xF5F8L,0UL,0x191FL,0xAA96L,0UL},{0xA9A6L,1UL,0x0525L,0x4EAAL,0x47D2L,0xF5F8L,0UL,0x191FL,0xAA96L,0UL},{0xA9A6L,1UL,0x0525L,0x4EAAL,0x47D2L,0xF5F8L,0UL,0x191FL,0xAA96L,0UL},{0xA9A6L,1UL,0x0525L,0x4EAAL,0x47D2L,0xF5F8L,0UL,0x191FL,0xAA96L,0UL}};
                        int32_t l_1626 = 0x010237D4L;
                        volatile int32_t **l_1632 = &p_2128->g_254;
                        int i, j;
                        l_1509 ^= (p_80 <= (safe_add_func_uint8_t_u_u(((***p_2128->g_916) || p_2128->g_1247.f1), (((*l_1482) ^= ((p_2128->g_972 == (((safe_mul_func_int8_t_s_s(p_79, (*p_2128->g_531))) , ((safe_div_func_uint64_t_u_u((p_80 ^ (4294967293UL <= ((p_79 , l_1596) > 0UL))), l_1597[1][8])) , l_1504[1][1][0])) , l_1598)) , (*p_2128->g_899))) <= (**p_2128->g_898)))));
                        (*l_1632) = (*p_2128->g_919);
                    }
                }
            }
        }
        l_1639--;
    }
    else
    { /* block id: 804 */
        int32_t l_1650 = 0x6F65F535L;
        int32_t l_1663 = (-6L);
        int32_t l_1664[7][6] = {{0x0324EE7EL,0L,3L,0x24FE36BCL,0x3A1919D6L,0x24FE36BCL},{0x0324EE7EL,0L,3L,0x24FE36BCL,0x3A1919D6L,0x24FE36BCL},{0x0324EE7EL,0L,3L,0x24FE36BCL,0x3A1919D6L,0x24FE36BCL},{0x0324EE7EL,0L,3L,0x24FE36BCL,0x3A1919D6L,0x24FE36BCL},{0x0324EE7EL,0L,3L,0x24FE36BCL,0x3A1919D6L,0x24FE36BCL},{0x0324EE7EL,0L,3L,0x24FE36BCL,0x3A1919D6L,0x24FE36BCL},{0x0324EE7EL,0L,3L,0x24FE36BCL,0x3A1919D6L,0x24FE36BCL}};
        int32_t *l_1728 = &l_1480[6][2][0];
        int32_t *l_1729[3];
        int32_t l_1733[2][2];
        int16_t l_1734[4];
        int i, j;
        for (i = 0; i < 3; i++)
            l_1729[i] = &l_1481;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 2; j++)
                l_1733[i][j] = 0L;
        }
        for (i = 0; i < 4; i++)
            l_1734[i] = 0x2BADL;
        (*p_2128->g_951) = ((safe_lshift_func_int8_t_s_u(((FAKE_DIVERGE(p_2128->group_1_offset, get_group_id(1), 10) <= (((*p_2128->g_899) = ((GROUP_DIVERGE(2, 1) , (0x39CBL > (safe_mul_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_s((safe_add_func_int16_t_s_s(p_2128->g_1599.f1, 65528UL)), 6)) || l_1650), 248UL)))) >= l_1650)) && ((safe_add_func_uint8_t_u_u(((l_1480[5][1][0] = 0x14L) ^ (safe_div_func_int16_t_s_s(0x2F8BL, p_2128->g_1244.f0))), l_1481)) , (*p_2128->g_899)))) <= 0x7B1D4BC8L), GROUP_DIVERGE(1, 1))) , &l_1480[3][1][1]);
        if (l_1650)
        { /* block id: 808 */
            int32_t *l_1655 = &l_1650;
            int32_t *l_1656 = &l_1481;
            int32_t *l_1657 = &l_1480[7][0][0];
            int32_t *l_1658 = &p_2128->g_10;
            int32_t *l_1659 = &p_2128->g_10;
            int32_t l_1660 = 0x1B5DB256L;
            int32_t *l_1661 = &l_1480[3][2][0];
            int32_t *l_1662[7] = {&l_1481,&p_2128->g_2,&l_1481,&l_1481,&p_2128->g_2,&l_1481,&l_1481};
            uint8_t l_1665 = 0xC6L;
            struct S0 *l_1682 = (void*)0;
            uint8_t *l_1702 = &p_2128->g_1581;
            int i;
            --l_1665;
            (*l_1661) = (((l_106 &= p_79) && (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (safe_rshift_func_uint16_t_u_u((&p_2128->g_684 != (void*)0), ((l_1664[5][3] = p_2128->g_1209.f1) && (safe_add_func_uint32_t_u_u(((*l_118) = (safe_mul_func_int8_t_s_s((0x1DBE1D95L == (safe_div_func_uint8_t_u_u(((((((((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s((l_1682 != ((((safe_add_func_uint16_t_u_u((p_80 != (safe_add_func_int64_t_s_s((((safe_mul_func_uint16_t_u_u((((p_2128->g_313 > (((((safe_sub_func_int64_t_s_s((p_80 < 0xBC21726AL), 2L)) > (*l_1658)) | p_80) > p_80) < p_80)) > FAKE_DIVERGE(p_2128->local_2_offset, get_local_id(2), 10)) , p_79), 0x1ED0L)) != (*l_1659)) && p_80), 5UL))), 0x0FF6L)) <= (*p_2128->g_1010)) & FAKE_DIVERGE(p_2128->group_1_offset, get_group_id(1), 10)) , (void*)0)), p_79)) | GROUP_DIVERGE(1, 1)), p_2128->g_32)) || (*l_1658)) < p_80) , &l_1479) != (*p_2128->g_951)) , p_79) | 0L) > (*l_1658)), 252UL))), l_1663))), 0UL)))))))) >= l_1512);
            if ((safe_sub_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_u(p_80, p_80)), (safe_add_func_int64_t_s_s(((safe_mul_func_int8_t_s_s(l_1699[6][2], ((*p_2128->g_531) &= l_1512))) | (((p_79 != ((l_1650 | (*l_1656)) >= p_80)) != (safe_lshift_func_uint8_t_u_u(((*l_1702) = (l_1664[5][3] , p_80)), p_2128->g_1209.f2))) & l_1703)), 0x32E72DDF5F4465B6L)))))
            { /* block id: 816 */
                int32_t *l_1706 = &l_1663;
                (**p_2128->g_950) = &l_1650;
                for (l_1703 = 0; (l_1703 >= (-11)); l_1703 = safe_sub_func_int16_t_s_s(l_1703, 8))
                { /* block id: 820 */
                    return p_80;
                }
                (*p_2128->g_951) = l_1706;
            }
            else
            { /* block id: 824 */
                (*p_2128->g_789) = p_2128->g_1707;
                for (p_2128->g_1052.f0 = 22; (p_2128->g_1052.f0 <= 1); p_2128->g_1052.f0 = safe_sub_func_int32_t_s_s(p_2128->g_1052.f0, 8))
                { /* block id: 828 */
                    (*l_1655) = l_1507;
                }
                l_1710 = ((*p_2128->g_951) = (**p_2128->g_950));
            }
        }
        else
        { /* block id: 834 */
            int64_t l_1726[4] = {0x7749FF132858B853L,0x7749FF132858B853L,0x7749FF132858B853L,0x7749FF132858B853L};
            int i;
            for (p_2128->g_10 = 0; (p_2128->g_10 != 25); p_2128->g_10++)
            { /* block id: 837 */
                for (p_2128->g_1218.f0 = 0; (p_2128->g_1218.f0 == 35); p_2128->g_1218.f0++)
                { /* block id: 840 */
                    return p_2128->g_902.f2;
                }
                for (p_2128->g_472.f0 = (-11); (p_2128->g_472.f0 == 30); p_2128->g_472.f0++)
                { /* block id: 845 */
                    uint8_t *l_1724 = (void*)0;
                    int32_t l_1727 = (-5L);
                    l_1727 ^= ((safe_add_func_int32_t_s_s((*l_1710), (l_1726[3] = ((*p_2128->g_531) || (((*p_2128->g_920) != p_2128->g_921[2][0]) <= (255UL & (safe_div_func_uint64_t_u_u((((l_1721 |= 0x19L) > ((l_1663 = 0x6FL) || ((safe_sub_func_uint32_t_u_u((&p_2128->g_158[0] == (l_1725[1][0][5] = l_1724)), FAKE_DIVERGE(p_2128->group_1_offset, get_group_id(1), 10))) || GROUP_DIVERGE(1, 1)))) < 0x16L), FAKE_DIVERGE(p_2128->global_2_offset, get_global_id(2), 10))))))))) == 1L);
                }
            }
        }
        ++l_1735;
    }
    return p_79;
}


/* ------------------------------------------ */
/* 
 * reads : p_2128->g_10 p_2128->g_253 p_2128->g_254 p_2128->g_5
 * writes: p_2128->g_10
 */
int32_t  func_81(uint64_t * p_82, int8_t  p_83, uint8_t  p_84, int16_t  p_85, struct S2 * p_2128)
{ /* block id: 56 */
    uint16_t l_149 = 65528UL;
    uint32_t *l_154 = &p_2128->g_117;
    uint8_t *l_155 = (void*)0;
    uint8_t *l_156 = (void*)0;
    uint8_t *l_157 = &p_2128->g_158[0];
    int32_t *l_159 = &p_2128->g_10;
    int32_t **l_160 = &l_159;
    uint64_t *l_163 = &p_2128->g_32;
    uint16_t l_164 = 0x734CL;
    uint16_t *l_176 = &l_149;
    int8_t l_177 = 0L;
    int8_t l_218 = 0x7DL;
    int32_t l_234[10] = {0x78107E6FL,0x78107E6FL,0x78107E6FL,0x78107E6FL,0x78107E6FL,0x78107E6FL,0x78107E6FL,0x78107E6FL,0x78107E6FL,0x78107E6FL};
    int8_t l_278 = 0x44L;
    uint16_t *l_334 = &p_2128->g_291;
    int32_t *l_362 = (void*)0;
    uint64_t ***l_393 = &p_2128->g_271[2];
    int64_t l_513 = 1L;
    int64_t l_589 = (-1L);
    uint32_t l_652 = 4294967295UL;
    int32_t l_691 = 0x5F593C16L;
    uint32_t l_801[6] = {0x54187F4FL,0x7BE844F1L,0x54187F4FL,0x54187F4FL,0x7BE844F1L,0x54187F4FL};
    int32_t *l_870 = (void*)0;
    int64_t l_890 = 0x41D7EBD26A785E60L;
    int64_t *l_895 = &p_2128->g_376.f2;
    int64_t **l_894 = &l_895;
    uint64_t l_1055 = 0x9228C2B053895A15L;
    int32_t l_1057 = 0x017846F3L;
    uint32_t l_1109 = 0xFA2E0F21L;
    uint32_t l_1133 = 0xFDFE1580L;
    int32_t *l_1166 = &p_2128->g_279[2][0];
    uint64_t l_1171 = 0x731446F62ADCCF96L;
    uint32_t l_1267 = 0x8C619B53L;
    uint32_t l_1286 = 0UL;
    int16_t l_1308[6][4][4] = {{{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L}},{{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L}},{{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L}},{{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L}},{{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L}},{{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L},{0x2664L,0x5CDEL,4L,0L}}};
    union U1 *l_1371 = &p_2128->g_935;
    union U1 **l_1370 = &l_1371;
    uint32_t l_1406 = 0x9D9614E6L;
    int32_t l_1415 = 0L;
    int i, j, k;
    (*l_160) = l_159;
    (**l_160) = (l_164 = (safe_add_func_int16_t_s_s((*l_159), ((l_159 != &p_2128->g_119) != (l_163 != (void*)0)))));
    return (**p_2128->g_253);
}


/* ------------------------------------------ */
/* 
 * reads : p_2128->g_6 p_2128->g_50.f0 p_2128->g_117
 * writes: p_2128->g_119 p_2128->g_2
 */
uint64_t * func_86(int32_t * p_87, uint32_t * p_88, int64_t  p_89, int8_t  p_90, int32_t  p_91, struct S2 * p_2128)
{ /* block id: 50 */
    uint8_t l_140 = 0xF2L;
    int32_t *l_145 = &p_2128->g_2;
    uint64_t *l_146 = (void*)0;
    (*l_145) = (safe_rshift_func_uint16_t_u_u((p_2128->g_6[5] <= (safe_sub_func_uint32_t_u_u((p_2128->g_119 = ((safe_div_func_uint16_t_u_u(((((~(((p_89 & ((0xD5F6L <= p_2128->g_50.f0) < l_140)) & p_2128->g_117) , (safe_lshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(l_140, 2)), 3)))) > 0L) || (l_140 , p_90)) > 0x392AL), 1L)) < l_140)), 0x590676B5L))), 2));
    return l_146;
}


/* ------------------------------------------ */
/* 
 * reads : p_2128->g_33 p_2128->g_130 p_2128->g_131
 * writes: p_2128->g_2 p_2128->g_131
 */
int32_t * func_92(uint8_t  p_93, uint64_t * p_94, uint64_t * p_95, uint32_t * p_96, struct S2 * p_2128)
{ /* block id: 46 */
    int32_t *l_133 = &p_2128->g_10;
    int32_t **l_132[3][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
    (*p_2128->g_131) = ((18446744073709551610UL > p_2128->g_33[0]) | (safe_mul_func_uint8_t_u_u((+((p_2128->g_130 , ((p_93 , p_96) != p_96)) <= ((p_2128->g_33[0] , p_96) != &p_2128->g_2))), p_93)));
    p_2128->g_131 = (void*)0;
    return p_96;
}


/* ------------------------------------------ */
/* 
 * reads : p_2128->g_119
 * writes: p_2128->g_119
 */
uint64_t * func_100(int64_t  p_101, uint32_t  p_102, int32_t  p_103, uint8_t  p_104, int32_t * p_105, struct S2 * p_2128)
{ /* block id: 39 */
    uint64_t *l_124 = &p_2128->g_32;
    for (p_2128->g_119 = 0; (p_2128->g_119 < 34); p_2128->g_119 = safe_add_func_uint64_t_u_u(p_2128->g_119, 1))
    { /* block id: 42 */
        return &p_2128->g_32;
    }
    return l_124;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_2129;
    struct S2* p_2128 = &c_2129;
    struct S2 c_2130 = {
        9L, // p_2128->g_2
        0L, // p_2128->g_5
        {7L,0x41FC9A57L,(-1L),0x41FC9A57L,7L,7L,0x41FC9A57L,(-1L),0x41FC9A57L,7L}, // p_2128->g_6
        (-1L), // p_2128->g_10
        0xB783560277ED469FL, // p_2128->g_32
        {0x832A49E8L,0x832A49E8L,0x832A49E8L,0x832A49E8L,0x832A49E8L,0x832A49E8L,0x832A49E8L}, // p_2128->g_33
        0x2AL, // p_2128->g_39
        (void*)0, // p_2128->g_40
        {0x5E2B1956L}, // p_2128->g_50
        (-7L), // p_2128->g_52
        0x31L, // p_2128->g_60
        4294967295UL, // p_2128->g_75
        0x39B44AAFL, // p_2128->g_117
        0x56292813L, // p_2128->g_119
        {0UL,0x379706C8L,0L}, // p_2128->g_130
        &p_2128->g_2, // p_2128->g_131
        (void*)0, // p_2128->g_147
        {0UL,0UL,0UL}, // p_2128->g_158
        (void*)0, // p_2128->g_173
        {{{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L}},{{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L}},{{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L},{0x62B2AF54L,0x62B2AF54L}}}, // p_2128->g_184
        {0x6B70L,0x42B31CC7L,0L}, // p_2128->g_203
        0xEB8E824C827FE777L, // p_2128->g_205
        0x0EL, // p_2128->g_235
        5UL, // p_2128->g_236
        65535UL, // p_2128->g_247
        {&p_2128->g_247,&p_2128->g_247,&p_2128->g_247,&p_2128->g_247,&p_2128->g_247}, // p_2128->g_246
        &p_2128->g_247, // p_2128->g_248
        (void*)0, // p_2128->g_252
        &p_2128->g_5, // p_2128->g_254
        &p_2128->g_254, // p_2128->g_253
        0xEFF7825DL, // p_2128->g_265
        {&p_2128->g_147,(void*)0,&p_2128->g_147,&p_2128->g_147,(void*)0,&p_2128->g_147,&p_2128->g_147,(void*)0,&p_2128->g_147,&p_2128->g_147}, // p_2128->g_271
        {0xC667L,4294967295UL,1L}, // p_2128->g_272
        {(void*)0,&p_2128->g_130,(void*)0,(void*)0,&p_2128->g_130,(void*)0}, // p_2128->g_274
        {{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}}, // p_2128->g_279
        {0x9D787DB0L,0x81DC7B62L,0x9D787DB0L,0x9D787DB0L,0x81DC7B62L,0x9D787DB0L,0x9D787DB0L,0x81DC7B62L,0x9D787DB0L,0x9D787DB0L}, // p_2128->g_280
        1UL, // p_2128->g_291
        0x60L, // p_2128->g_313
        0x7B2CL, // p_2128->g_344
        {4294967287UL}, // p_2128->g_349
        (-2L), // p_2128->g_356
        {&p_2128->g_356,&p_2128->g_356}, // p_2128->g_355
        {65535UL,0xF876BF0FL,-4L}, // p_2128->g_374
        {0xB847L,5UL,0x25815A79CE385F55L}, // p_2128->g_376
        &p_2128->g_376.f1, // p_2128->g_387
        &p_2128->g_387, // p_2128->g_386
        0x5512L, // p_2128->g_405
        {0x2AE1EEB1L}, // p_2128->g_454
        {0UL,0xAD8B04AFL,0x7D6ECC7D160A5B15L}, // p_2128->g_467
        {1UL,4294967295UL,-9L}, // p_2128->g_472
        (void*)0, // p_2128->g_480
        &p_2128->g_2, // p_2128->g_481
        {{{{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL}},{{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL}}},{{{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL}},{{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL}}},{{{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL}},{{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL}}},{{{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL}},{{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL},{0UL,0UL,0x4A420665E1A3B4ECL}}}}, // p_2128->g_491
        (-1L), // p_2128->g_494
        1UL, // p_2128->g_522
        {0xB1CDL,0xDECFE688L,0x4440E03FC0D53803L}, // p_2128->g_529
        &p_2128->g_313, // p_2128->g_531
        (-7L), // p_2128->g_548
        {{{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)}},{{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)}},{{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)}},{{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)}},{{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)}},{{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)}},{{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)}},{{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)}},{{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)},{0x617A8E50634E57DEL,(-6L)}}}, // p_2128->g_550
        {0x3824L,4294967287UL,-8L}, // p_2128->g_561
        {65528UL,0x19F8074FL,0x0302927BB66EC716L}, // p_2128->g_570
        0x60L, // p_2128->g_673
        {0xE1AEL,4294967295UL,-1L}, // p_2128->g_684
        {0xAF170917L}, // p_2128->g_688
        {{0UL,4294967295UL,1L},{3UL,3UL,0x44E823DB29A4EEBCL},{0UL,4294967295UL,1L},{0UL,4294967295UL,1L},{3UL,3UL,0x44E823DB29A4EEBCL},{0UL,4294967295UL,1L},{0UL,4294967295UL,1L},{3UL,3UL,0x44E823DB29A4EEBCL},{0UL,4294967295UL,1L},{0UL,4294967295UL,1L}}, // p_2128->g_693
        {{&p_2128->g_684,(void*)0},{&p_2128->g_684,(void*)0},{&p_2128->g_684,(void*)0}}, // p_2128->g_694
        {{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}}}, // p_2128->g_702
        {{0UL,0UL,2UL,18446744073709551608UL,0xF1A75B7916086E17L},{0UL,0UL,2UL,18446744073709551608UL,0xF1A75B7916086E17L},{0UL,0UL,2UL,18446744073709551608UL,0xF1A75B7916086E17L},{0UL,0UL,2UL,18446744073709551608UL,0xF1A75B7916086E17L},{0UL,0UL,2UL,18446744073709551608UL,0xF1A75B7916086E17L},{0UL,0UL,2UL,18446744073709551608UL,0xF1A75B7916086E17L},{0UL,0UL,2UL,18446744073709551608UL,0xF1A75B7916086E17L}}, // p_2128->g_724
        {{{0x312EL,4294967290UL,0L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{65532UL,0UL,-4L},{2UL,4UL,0x40E31F23D9D59887L},{65532UL,0UL,-4L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{0x312EL,4294967290UL,0L},{0x6648L,0xBC599AFEL,0x0A8115647E141E6DL}},{{0x312EL,4294967290UL,0L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{65532UL,0UL,-4L},{2UL,4UL,0x40E31F23D9D59887L},{65532UL,0UL,-4L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{0x312EL,4294967290UL,0L},{0x6648L,0xBC599AFEL,0x0A8115647E141E6DL}},{{0x312EL,4294967290UL,0L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{65532UL,0UL,-4L},{2UL,4UL,0x40E31F23D9D59887L},{65532UL,0UL,-4L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{0x312EL,4294967290UL,0L},{0x6648L,0xBC599AFEL,0x0A8115647E141E6DL}},{{0x312EL,4294967290UL,0L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{65532UL,0UL,-4L},{2UL,4UL,0x40E31F23D9D59887L},{65532UL,0UL,-4L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{0x312EL,4294967290UL,0L},{0x6648L,0xBC599AFEL,0x0A8115647E141E6DL}},{{0x312EL,4294967290UL,0L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{65532UL,0UL,-4L},{2UL,4UL,0x40E31F23D9D59887L},{65532UL,0UL,-4L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{0x312EL,4294967290UL,0L},{0x6648L,0xBC599AFEL,0x0A8115647E141E6DL}},{{0x312EL,4294967290UL,0L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{65532UL,0UL,-4L},{2UL,4UL,0x40E31F23D9D59887L},{65532UL,0UL,-4L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{0x312EL,4294967290UL,0L},{0x6648L,0xBC599AFEL,0x0A8115647E141E6DL}},{{0x312EL,4294967290UL,0L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{65532UL,0UL,-4L},{2UL,4UL,0x40E31F23D9D59887L},{65532UL,0UL,-4L},{0UL,0x9B6D2312L,0x199E2896BA6B2C7EL},{0x312EL,4294967290UL,0L},{0x6648L,0xBC599AFEL,0x0A8115647E141E6DL}}}, // p_2128->g_727
        {1UL}, // p_2128->g_763
        {&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10,&p_2128->g_10}, // p_2128->g_775
        {65526UL,0x7A4B8767L,0x25EE5BBDB5A37740L}, // p_2128->g_786
        {{{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]}},{{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]}},{{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]}},{{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]},{&p_2128->g_130,&p_2128->g_727[2][1],&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_272,&p_2128->g_693[7]}}}, // p_2128->g_787
        {{&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684},{&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684},{&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684},{&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684},{&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[7],&p_2128->g_684,&p_2128->g_693[8],&p_2128->g_693[8],&p_2128->g_684}}, // p_2128->g_788
        &p_2128->g_693[0], // p_2128->g_789
        {0UL,0xE1CCED6DL,7L}, // p_2128->g_790
        {&p_2128->g_727[0][0],&p_2128->g_727[0][0],&p_2128->g_727[0][0],&p_2128->g_727[0][0],&p_2128->g_727[0][0],&p_2128->g_727[0][0]}, // p_2128->g_791
        &p_2128->g_467, // p_2128->g_792
        &p_2128->g_548, // p_2128->g_813
        &p_2128->g_548, // p_2128->g_814
        (void*)0, // p_2128->g_896
        &p_2128->g_374.f2, // p_2128->g_899
        &p_2128->g_899, // p_2128->g_898
        {0x5E49L,0xA1199D83L,6L}, // p_2128->g_902
        (void*)0, // p_2128->g_913
        {&p_2128->g_248,&p_2128->g_248,&p_2128->g_248,&p_2128->g_248,&p_2128->g_248,&p_2128->g_248,&p_2128->g_248}, // p_2128->g_915
        {{&p_2128->g_915[5],&p_2128->g_915[6]},{&p_2128->g_915[5],&p_2128->g_915[6]},{&p_2128->g_915[5],&p_2128->g_915[6]},{&p_2128->g_915[5],&p_2128->g_915[6]},{&p_2128->g_915[5],&p_2128->g_915[6]},{&p_2128->g_915[5],&p_2128->g_915[6]},{&p_2128->g_915[5],&p_2128->g_915[6]},{&p_2128->g_915[5],&p_2128->g_915[6]}}, // p_2128->g_914
        &p_2128->g_915[3], // p_2128->g_916
        &p_2128->g_254, // p_2128->g_919
        {{&p_2128->g_763,(void*)0,&p_2128->g_763,&p_2128->g_763,&p_2128->g_763,(void*)0,&p_2128->g_763,&p_2128->g_688},{&p_2128->g_763,(void*)0,&p_2128->g_763,&p_2128->g_763,&p_2128->g_763,(void*)0,&p_2128->g_763,&p_2128->g_688},{&p_2128->g_763,(void*)0,&p_2128->g_763,&p_2128->g_763,&p_2128->g_763,(void*)0,&p_2128->g_763,&p_2128->g_688}}, // p_2128->g_921
        &p_2128->g_921[2][0], // p_2128->g_920
        {0xFC38EB59L}, // p_2128->g_935
        &p_2128->g_775[4], // p_2128->g_951
        &p_2128->g_951, // p_2128->g_950
        {{{4294967295UL},{4294967295UL},{4294967295UL},{0xD697468AL},{0x9A643BBCL},{0xD697468AL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{0xD697468AL},{0x9A643BBCL},{0xD697468AL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{0xD697468AL},{0x9A643BBCL},{0xD697468AL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{0xD697468AL},{0x9A643BBCL},{0xD697468AL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{0xD697468AL},{0x9A643BBCL},{0xD697468AL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{0xD697468AL},{0x9A643BBCL},{0xD697468AL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{0xD697468AL},{0x9A643BBCL},{0xD697468AL},{4294967295UL},{4294967295UL},{4294967295UL}}}, // p_2128->g_966
        (void*)0, // p_2128->g_972
        {0x447AL,6UL,0x23123732CDF5C938L}, // p_2128->g_978
        {{246UL},{246UL},{246UL},{246UL},{246UL},{246UL},{246UL},{246UL}}, // p_2128->g_986
        &p_2128->g_935.f0, // p_2128->g_1010
        &p_2128->g_117, // p_2128->g_1011
        {0x0B7EL,0x21BF618EL,0x63C06759D3A7572FL}, // p_2128->g_1052
        &p_2128->g_254, // p_2128->g_1072
        4294967286UL, // p_2128->g_1093
        {&p_2128->g_52,(void*)0,&p_2128->g_52,(void*)0,&p_2128->g_52,&p_2128->g_52,(void*)0,&p_2128->g_52,(void*)0,&p_2128->g_52}, // p_2128->g_1094
        {{0UL}}, // p_2128->g_1114
        &p_2128->g_786, // p_2128->g_1124
        {0x2C61L,0xBE4B6121L,0L}, // p_2128->g_1140
        &p_2128->g_902, // p_2128->g_1141
        {{{4294967290UL},{0x4C223A11L},{4294967290UL},{4294967290UL}},{{4294967290UL},{0x4C223A11L},{4294967290UL},{4294967290UL}},{{4294967290UL},{0x4C223A11L},{4294967290UL},{4294967290UL}},{{4294967290UL},{0x4C223A11L},{4294967290UL},{4294967290UL}},{{4294967290UL},{0x4C223A11L},{4294967290UL},{4294967290UL}},{{4294967290UL},{0x4C223A11L},{4294967290UL},{4294967290UL}}}, // p_2128->g_1143
        {0xD9438230L}, // p_2128->g_1182
        0xDAL, // p_2128->g_1195
        6L, // p_2128->g_1201
        {65535UL,4294967287UL,0x023803146C26D043L}, // p_2128->g_1207
        {65535UL,0xA1360240L,-1L}, // p_2128->g_1209
        {{0x5831L,0x4C3C00D0L,0x5D48C42FFF1172F0L}}, // p_2128->g_1210
        {0x9EDFL,0xC5B91A64L,3L}, // p_2128->g_1218
        0x1DFFL, // p_2128->g_1226
        {0xBE362A1FL}, // p_2128->g_1244
        {7UL,0xCFC917BDL,0x36D5B6C29993CE83L}, // p_2128->g_1247
        {0x0922L,0UL,-2L}, // p_2128->g_1248
        {8UL}, // p_2128->g_1270
        0xA154A82BL, // p_2128->g_1309
        &p_2128->g_254, // p_2128->g_1311
        {0UL,0UL,-4L}, // p_2128->g_1332
        {1UL,0x74C788F1L,0x17AB896C173CDE45L}, // p_2128->g_1333
        &p_2128->g_814, // p_2128->g_1383
        (void*)0, // p_2128->g_1390
        {0UL,0xB4ECFD65L,0x41A4C04B92B47E04L}, // p_2128->g_1402
        {0x935EL,0xB2A99924L,1L}, // p_2128->g_1422
        &p_2128->g_272, // p_2128->g_1423
        {{&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1],&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1]},{&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1],&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1]},{&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1],&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1]},{&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1],&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1]},{&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1],&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1]},{&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1],&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1]},{&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1],&p_2128->g_355[1],(void*)0,&p_2128->g_355[1],&p_2128->g_355[1]}}, // p_2128->g_1453
        {0x82AD6C73L}, // p_2128->g_1469
        {65535UL,4294967292UL,-1L}, // p_2128->g_1513
        {65532UL,1UL,1L}, // p_2128->g_1514
        0UL, // p_2128->g_1537
        0xDA79L, // p_2128->g_1552
        1UL, // p_2128->g_1581
        {1UL,0x8A5E4E7BL,1L}, // p_2128->g_1599
        4294967294UL, // p_2128->g_1629
        {&p_2128->g_1629,&p_2128->g_1629,&p_2128->g_1629}, // p_2128->g_1628
        18446744073709551608UL, // p_2128->g_1631
        {0xE700L,4294967295UL,0L}, // p_2128->g_1707
        {0x15L,0x15L,0x15L,0x15L,0x15L,0x15L}, // p_2128->g_1732
        0L, // p_2128->g_1739
        {0x0B83L,1UL,0x0AA11DEA7A7F0207L}, // p_2128->g_1755
        0x1CDBFDF1CADADF39L, // p_2128->g_1759
        &p_2128->g_271[8], // p_2128->g_1779
        &p_2128->g_1779, // p_2128->g_1778
        {0x3324L,0x2B83D68CL,0x175526E4B665CE18L}, // p_2128->g_1787
        {0UL,0UL,0x29865A4D9A3D33F6L}, // p_2128->g_1801
        {{0xC268L,0x1F05162FL,0x678CAEC35A3626BCL},{0xC268L,0x1F05162FL,0x678CAEC35A3626BCL},{0xC268L,0x1F05162FL,0x678CAEC35A3626BCL},{0xC268L,0x1F05162FL,0x678CAEC35A3626BCL},{0xC268L,0x1F05162FL,0x678CAEC35A3626BCL},{0xC268L,0x1F05162FL,0x678CAEC35A3626BCL}}, // p_2128->g_1803
        {{{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]}},{{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]}},{{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]}},{{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]},{&p_2128->g_921[0][6],(void*)0,&p_2128->g_921[1][6],&p_2128->g_921[2][1],&p_2128->g_921[2][5],&p_2128->g_921[2][1],&p_2128->g_921[2][0]}}}, // p_2128->g_1829
        &p_2128->g_921[2][4], // p_2128->g_1830
        {0x7864L,0x60656A3AL,0L}, // p_2128->g_1906
        {7UL,0x008B951BL,2L}, // p_2128->g_1909
        (void*)0, // p_2128->g_1910
        0x25L, // p_2128->g_1917
        &p_2128->g_915[2], // p_2128->g_1971
        {&p_2128->g_1971}, // p_2128->g_1970
        0x041BB6EFL, // p_2128->g_1995
        {0x0317L,0xEC09F92FL,0x7410EE0C26C716AFL}, // p_2128->g_2039
        {{0x9591L,0xC4CB8894L,0L},{0xF87DL,0xB56DF128L,1L},{0x9591L,0xC4CB8894L,0L},{0x9591L,0xC4CB8894L,0L},{0xF87DL,0xB56DF128L,1L},{0x9591L,0xC4CB8894L,0L},{0x9591L,0xC4CB8894L,0L},{0xF87DL,0xB56DF128L,1L},{0x9591L,0xC4CB8894L,0L},{0x9591L,0xC4CB8894L,0L}}, // p_2128->g_2077
        {0UL,0x69DA8D7EL,0L}, // p_2128->g_2078
        {0x0BE2L}, // p_2128->g_2120
        sequence_input[get_global_id(0)], // p_2128->global_0_offset
        sequence_input[get_global_id(1)], // p_2128->global_1_offset
        sequence_input[get_global_id(2)], // p_2128->global_2_offset
        sequence_input[get_local_id(0)], // p_2128->local_0_offset
        sequence_input[get_local_id(1)], // p_2128->local_1_offset
        sequence_input[get_local_id(2)], // p_2128->local_2_offset
        sequence_input[get_group_id(0)], // p_2128->group_0_offset
        sequence_input[get_group_id(1)], // p_2128->group_1_offset
        sequence_input[get_group_id(2)], // p_2128->group_2_offset
    };
    c_2129 = c_2130;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2128);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2128->g_2, "p_2128->g_2", print_hash_value);
    transparent_crc(p_2128->g_5, "p_2128->g_5", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2128->g_6[i], "p_2128->g_6[i]", print_hash_value);

    }
    transparent_crc(p_2128->g_10, "p_2128->g_10", print_hash_value);
    transparent_crc(p_2128->g_32, "p_2128->g_32", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2128->g_33[i], "p_2128->g_33[i]", print_hash_value);

    }
    transparent_crc(p_2128->g_39, "p_2128->g_39", print_hash_value);
    transparent_crc(p_2128->g_50.f0, "p_2128->g_50.f0", print_hash_value);
    transparent_crc(p_2128->g_52, "p_2128->g_52", print_hash_value);
    transparent_crc(p_2128->g_60, "p_2128->g_60", print_hash_value);
    transparent_crc(p_2128->g_75, "p_2128->g_75", print_hash_value);
    transparent_crc(p_2128->g_117, "p_2128->g_117", print_hash_value);
    transparent_crc(p_2128->g_119, "p_2128->g_119", print_hash_value);
    transparent_crc(p_2128->g_130.f0, "p_2128->g_130.f0", print_hash_value);
    transparent_crc(p_2128->g_130.f1, "p_2128->g_130.f1", print_hash_value);
    transparent_crc(p_2128->g_130.f2, "p_2128->g_130.f2", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2128->g_158[i], "p_2128->g_158[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2128->g_184[i][j][k], "p_2128->g_184[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2128->g_203.f0, "p_2128->g_203.f0", print_hash_value);
    transparent_crc(p_2128->g_203.f1, "p_2128->g_203.f1", print_hash_value);
    transparent_crc(p_2128->g_203.f2, "p_2128->g_203.f2", print_hash_value);
    transparent_crc(p_2128->g_205, "p_2128->g_205", print_hash_value);
    transparent_crc(p_2128->g_235, "p_2128->g_235", print_hash_value);
    transparent_crc(p_2128->g_236, "p_2128->g_236", print_hash_value);
    transparent_crc(p_2128->g_247, "p_2128->g_247", print_hash_value);
    transparent_crc(p_2128->g_265, "p_2128->g_265", print_hash_value);
    transparent_crc(p_2128->g_272.f0, "p_2128->g_272.f0", print_hash_value);
    transparent_crc(p_2128->g_272.f1, "p_2128->g_272.f1", print_hash_value);
    transparent_crc(p_2128->g_272.f2, "p_2128->g_272.f2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2128->g_279[i][j], "p_2128->g_279[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2128->g_280[i], "p_2128->g_280[i]", print_hash_value);

    }
    transparent_crc(p_2128->g_291, "p_2128->g_291", print_hash_value);
    transparent_crc(p_2128->g_313, "p_2128->g_313", print_hash_value);
    transparent_crc(p_2128->g_344, "p_2128->g_344", print_hash_value);
    transparent_crc(p_2128->g_349.f0, "p_2128->g_349.f0", print_hash_value);
    transparent_crc(p_2128->g_356, "p_2128->g_356", print_hash_value);
    transparent_crc(p_2128->g_374.f0, "p_2128->g_374.f0", print_hash_value);
    transparent_crc(p_2128->g_374.f1, "p_2128->g_374.f1", print_hash_value);
    transparent_crc(p_2128->g_374.f2, "p_2128->g_374.f2", print_hash_value);
    transparent_crc(p_2128->g_376.f0, "p_2128->g_376.f0", print_hash_value);
    transparent_crc(p_2128->g_376.f1, "p_2128->g_376.f1", print_hash_value);
    transparent_crc(p_2128->g_376.f2, "p_2128->g_376.f2", print_hash_value);
    transparent_crc(p_2128->g_405, "p_2128->g_405", print_hash_value);
    transparent_crc(p_2128->g_454.f0, "p_2128->g_454.f0", print_hash_value);
    transparent_crc(p_2128->g_467.f0, "p_2128->g_467.f0", print_hash_value);
    transparent_crc(p_2128->g_467.f1, "p_2128->g_467.f1", print_hash_value);
    transparent_crc(p_2128->g_467.f2, "p_2128->g_467.f2", print_hash_value);
    transparent_crc(p_2128->g_472.f0, "p_2128->g_472.f0", print_hash_value);
    transparent_crc(p_2128->g_472.f1, "p_2128->g_472.f1", print_hash_value);
    transparent_crc(p_2128->g_472.f2, "p_2128->g_472.f2", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2128->g_491[i][j][k].f0, "p_2128->g_491[i][j][k].f0", print_hash_value);
                transparent_crc(p_2128->g_491[i][j][k].f1, "p_2128->g_491[i][j][k].f1", print_hash_value);
                transparent_crc(p_2128->g_491[i][j][k].f2, "p_2128->g_491[i][j][k].f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_2128->g_494, "p_2128->g_494", print_hash_value);
    transparent_crc(p_2128->g_522, "p_2128->g_522", print_hash_value);
    transparent_crc(p_2128->g_529.f0, "p_2128->g_529.f0", print_hash_value);
    transparent_crc(p_2128->g_529.f1, "p_2128->g_529.f1", print_hash_value);
    transparent_crc(p_2128->g_529.f2, "p_2128->g_529.f2", print_hash_value);
    transparent_crc(p_2128->g_548, "p_2128->g_548", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2128->g_550[i][j][k], "p_2128->g_550[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2128->g_561.f0, "p_2128->g_561.f0", print_hash_value);
    transparent_crc(p_2128->g_561.f1, "p_2128->g_561.f1", print_hash_value);
    transparent_crc(p_2128->g_561.f2, "p_2128->g_561.f2", print_hash_value);
    transparent_crc(p_2128->g_570.f0, "p_2128->g_570.f0", print_hash_value);
    transparent_crc(p_2128->g_570.f1, "p_2128->g_570.f1", print_hash_value);
    transparent_crc(p_2128->g_570.f2, "p_2128->g_570.f2", print_hash_value);
    transparent_crc(p_2128->g_673, "p_2128->g_673", print_hash_value);
    transparent_crc(p_2128->g_684.f0, "p_2128->g_684.f0", print_hash_value);
    transparent_crc(p_2128->g_684.f1, "p_2128->g_684.f1", print_hash_value);
    transparent_crc(p_2128->g_684.f2, "p_2128->g_684.f2", print_hash_value);
    transparent_crc(p_2128->g_688.f0, "p_2128->g_688.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2128->g_693[i].f0, "p_2128->g_693[i].f0", print_hash_value);
        transparent_crc(p_2128->g_693[i].f1, "p_2128->g_693[i].f1", print_hash_value);
        transparent_crc(p_2128->g_693[i].f2, "p_2128->g_693[i].f2", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2128->g_702[i][j][k], "p_2128->g_702[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2128->g_724[i][j], "p_2128->g_724[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2128->g_727[i][j].f0, "p_2128->g_727[i][j].f0", print_hash_value);
            transparent_crc(p_2128->g_727[i][j].f1, "p_2128->g_727[i][j].f1", print_hash_value);
            transparent_crc(p_2128->g_727[i][j].f2, "p_2128->g_727[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_2128->g_763.f0, "p_2128->g_763.f0", print_hash_value);
    transparent_crc(p_2128->g_786.f0, "p_2128->g_786.f0", print_hash_value);
    transparent_crc(p_2128->g_786.f1, "p_2128->g_786.f1", print_hash_value);
    transparent_crc(p_2128->g_786.f2, "p_2128->g_786.f2", print_hash_value);
    transparent_crc(p_2128->g_790.f0, "p_2128->g_790.f0", print_hash_value);
    transparent_crc(p_2128->g_790.f1, "p_2128->g_790.f1", print_hash_value);
    transparent_crc(p_2128->g_790.f2, "p_2128->g_790.f2", print_hash_value);
    transparent_crc(p_2128->g_902.f0, "p_2128->g_902.f0", print_hash_value);
    transparent_crc(p_2128->g_902.f1, "p_2128->g_902.f1", print_hash_value);
    transparent_crc(p_2128->g_902.f2, "p_2128->g_902.f2", print_hash_value);
    transparent_crc(p_2128->g_935.f0, "p_2128->g_935.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2128->g_966[i][j].f0, "p_2128->g_966[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2128->g_978.f0, "p_2128->g_978.f0", print_hash_value);
    transparent_crc(p_2128->g_978.f1, "p_2128->g_978.f1", print_hash_value);
    transparent_crc(p_2128->g_978.f2, "p_2128->g_978.f2", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2128->g_986[i][j], "p_2128->g_986[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2128->g_1052.f0, "p_2128->g_1052.f0", print_hash_value);
    transparent_crc(p_2128->g_1052.f1, "p_2128->g_1052.f1", print_hash_value);
    transparent_crc(p_2128->g_1052.f2, "p_2128->g_1052.f2", print_hash_value);
    transparent_crc(p_2128->g_1093, "p_2128->g_1093", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2128->g_1114[i].f0, "p_2128->g_1114[i].f0", print_hash_value);

    }
    transparent_crc(p_2128->g_1140.f0, "p_2128->g_1140.f0", print_hash_value);
    transparent_crc(p_2128->g_1140.f1, "p_2128->g_1140.f1", print_hash_value);
    transparent_crc(p_2128->g_1140.f2, "p_2128->g_1140.f2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_2128->g_1143[i][j].f0, "p_2128->g_1143[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2128->g_1182.f0, "p_2128->g_1182.f0", print_hash_value);
    transparent_crc(p_2128->g_1195, "p_2128->g_1195", print_hash_value);
    transparent_crc(p_2128->g_1201, "p_2128->g_1201", print_hash_value);
    transparent_crc(p_2128->g_1207.f0, "p_2128->g_1207.f0", print_hash_value);
    transparent_crc(p_2128->g_1207.f1, "p_2128->g_1207.f1", print_hash_value);
    transparent_crc(p_2128->g_1207.f2, "p_2128->g_1207.f2", print_hash_value);
    transparent_crc(p_2128->g_1209.f0, "p_2128->g_1209.f0", print_hash_value);
    transparent_crc(p_2128->g_1209.f1, "p_2128->g_1209.f1", print_hash_value);
    transparent_crc(p_2128->g_1209.f2, "p_2128->g_1209.f2", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2128->g_1210[i].f0, "p_2128->g_1210[i].f0", print_hash_value);
        transparent_crc(p_2128->g_1210[i].f1, "p_2128->g_1210[i].f1", print_hash_value);
        transparent_crc(p_2128->g_1210[i].f2, "p_2128->g_1210[i].f2", print_hash_value);

    }
    transparent_crc(p_2128->g_1218.f0, "p_2128->g_1218.f0", print_hash_value);
    transparent_crc(p_2128->g_1218.f1, "p_2128->g_1218.f1", print_hash_value);
    transparent_crc(p_2128->g_1218.f2, "p_2128->g_1218.f2", print_hash_value);
    transparent_crc(p_2128->g_1226, "p_2128->g_1226", print_hash_value);
    transparent_crc(p_2128->g_1244.f0, "p_2128->g_1244.f0", print_hash_value);
    transparent_crc(p_2128->g_1247.f0, "p_2128->g_1247.f0", print_hash_value);
    transparent_crc(p_2128->g_1247.f1, "p_2128->g_1247.f1", print_hash_value);
    transparent_crc(p_2128->g_1247.f2, "p_2128->g_1247.f2", print_hash_value);
    transparent_crc(p_2128->g_1248.f0, "p_2128->g_1248.f0", print_hash_value);
    transparent_crc(p_2128->g_1248.f1, "p_2128->g_1248.f1", print_hash_value);
    transparent_crc(p_2128->g_1248.f2, "p_2128->g_1248.f2", print_hash_value);
    transparent_crc(p_2128->g_1270.f0, "p_2128->g_1270.f0", print_hash_value);
    transparent_crc(p_2128->g_1309, "p_2128->g_1309", print_hash_value);
    transparent_crc(p_2128->g_1332.f0, "p_2128->g_1332.f0", print_hash_value);
    transparent_crc(p_2128->g_1332.f1, "p_2128->g_1332.f1", print_hash_value);
    transparent_crc(p_2128->g_1332.f2, "p_2128->g_1332.f2", print_hash_value);
    transparent_crc(p_2128->g_1333.f0, "p_2128->g_1333.f0", print_hash_value);
    transparent_crc(p_2128->g_1333.f1, "p_2128->g_1333.f1", print_hash_value);
    transparent_crc(p_2128->g_1333.f2, "p_2128->g_1333.f2", print_hash_value);
    transparent_crc(p_2128->g_1402.f0, "p_2128->g_1402.f0", print_hash_value);
    transparent_crc(p_2128->g_1402.f1, "p_2128->g_1402.f1", print_hash_value);
    transparent_crc(p_2128->g_1402.f2, "p_2128->g_1402.f2", print_hash_value);
    transparent_crc(p_2128->g_1422.f0, "p_2128->g_1422.f0", print_hash_value);
    transparent_crc(p_2128->g_1422.f1, "p_2128->g_1422.f1", print_hash_value);
    transparent_crc(p_2128->g_1422.f2, "p_2128->g_1422.f2", print_hash_value);
    transparent_crc(p_2128->g_1469.f0, "p_2128->g_1469.f0", print_hash_value);
    transparent_crc(p_2128->g_1513.f0, "p_2128->g_1513.f0", print_hash_value);
    transparent_crc(p_2128->g_1513.f1, "p_2128->g_1513.f1", print_hash_value);
    transparent_crc(p_2128->g_1513.f2, "p_2128->g_1513.f2", print_hash_value);
    transparent_crc(p_2128->g_1514.f0, "p_2128->g_1514.f0", print_hash_value);
    transparent_crc(p_2128->g_1514.f1, "p_2128->g_1514.f1", print_hash_value);
    transparent_crc(p_2128->g_1514.f2, "p_2128->g_1514.f2", print_hash_value);
    transparent_crc(p_2128->g_1537, "p_2128->g_1537", print_hash_value);
    transparent_crc(p_2128->g_1552, "p_2128->g_1552", print_hash_value);
    transparent_crc(p_2128->g_1581, "p_2128->g_1581", print_hash_value);
    transparent_crc(p_2128->g_1599.f0, "p_2128->g_1599.f0", print_hash_value);
    transparent_crc(p_2128->g_1599.f1, "p_2128->g_1599.f1", print_hash_value);
    transparent_crc(p_2128->g_1599.f2, "p_2128->g_1599.f2", print_hash_value);
    transparent_crc(p_2128->g_1629, "p_2128->g_1629", print_hash_value);
    transparent_crc(p_2128->g_1631, "p_2128->g_1631", print_hash_value);
    transparent_crc(p_2128->g_1707.f0, "p_2128->g_1707.f0", print_hash_value);
    transparent_crc(p_2128->g_1707.f1, "p_2128->g_1707.f1", print_hash_value);
    transparent_crc(p_2128->g_1707.f2, "p_2128->g_1707.f2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2128->g_1732[i], "p_2128->g_1732[i]", print_hash_value);

    }
    transparent_crc(p_2128->g_1739, "p_2128->g_1739", print_hash_value);
    transparent_crc(p_2128->g_1755.f0, "p_2128->g_1755.f0", print_hash_value);
    transparent_crc(p_2128->g_1755.f1, "p_2128->g_1755.f1", print_hash_value);
    transparent_crc(p_2128->g_1755.f2, "p_2128->g_1755.f2", print_hash_value);
    transparent_crc(p_2128->g_1759, "p_2128->g_1759", print_hash_value);
    transparent_crc(p_2128->g_1787.f0, "p_2128->g_1787.f0", print_hash_value);
    transparent_crc(p_2128->g_1787.f1, "p_2128->g_1787.f1", print_hash_value);
    transparent_crc(p_2128->g_1787.f2, "p_2128->g_1787.f2", print_hash_value);
    transparent_crc(p_2128->g_1801.f0, "p_2128->g_1801.f0", print_hash_value);
    transparent_crc(p_2128->g_1801.f1, "p_2128->g_1801.f1", print_hash_value);
    transparent_crc(p_2128->g_1801.f2, "p_2128->g_1801.f2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2128->g_1803[i].f0, "p_2128->g_1803[i].f0", print_hash_value);
        transparent_crc(p_2128->g_1803[i].f1, "p_2128->g_1803[i].f1", print_hash_value);
        transparent_crc(p_2128->g_1803[i].f2, "p_2128->g_1803[i].f2", print_hash_value);

    }
    transparent_crc(p_2128->g_1906.f0, "p_2128->g_1906.f0", print_hash_value);
    transparent_crc(p_2128->g_1906.f1, "p_2128->g_1906.f1", print_hash_value);
    transparent_crc(p_2128->g_1906.f2, "p_2128->g_1906.f2", print_hash_value);
    transparent_crc(p_2128->g_1909.f0, "p_2128->g_1909.f0", print_hash_value);
    transparent_crc(p_2128->g_1909.f1, "p_2128->g_1909.f1", print_hash_value);
    transparent_crc(p_2128->g_1909.f2, "p_2128->g_1909.f2", print_hash_value);
    transparent_crc(p_2128->g_1917, "p_2128->g_1917", print_hash_value);
    transparent_crc(p_2128->g_1995, "p_2128->g_1995", print_hash_value);
    transparent_crc(p_2128->g_2039.f0, "p_2128->g_2039.f0", print_hash_value);
    transparent_crc(p_2128->g_2039.f1, "p_2128->g_2039.f1", print_hash_value);
    transparent_crc(p_2128->g_2039.f2, "p_2128->g_2039.f2", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2128->g_2077[i].f0, "p_2128->g_2077[i].f0", print_hash_value);
        transparent_crc(p_2128->g_2077[i].f1, "p_2128->g_2077[i].f1", print_hash_value);
        transparent_crc(p_2128->g_2077[i].f2, "p_2128->g_2077[i].f2", print_hash_value);

    }
    transparent_crc(p_2128->g_2078.f0, "p_2128->g_2078.f0", print_hash_value);
    transparent_crc(p_2128->g_2078.f1, "p_2128->g_2078.f1", print_hash_value);
    transparent_crc(p_2128->g_2078.f2, "p_2128->g_2078.f2", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2128->g_2120[i], "p_2128->g_2120[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
