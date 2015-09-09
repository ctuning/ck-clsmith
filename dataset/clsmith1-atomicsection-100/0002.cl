// --atomics 56 ---fake_divergence -g 4,46,50 -l 4,1,2
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


// Seed: 2

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   int32_t  f1;
};

union U1 {
   uint8_t  f0;
   uint64_t  f1;
   int32_t  f2;
   volatile int8_t  f3;
   int16_t  f4;
};

struct S2 {
    uint16_t g_6;
    uint8_t g_8;
    int32_t g_32;
    int32_t g_49[3];
    volatile uint32_t g_72;
    int8_t g_80;
    uint32_t g_94;
    uint64_t g_96[10];
    int32_t g_98[3];
    int32_t * volatile g_97;
    uint8_t *g_103;
    uint8_t **g_102;
    uint8_t **g_104;
    uint16_t g_116;
    int64_t g_134;
    int64_t g_136;
    int64_t g_143;
    int16_t g_158;
    int32_t g_170;
    int32_t * volatile g_169[7];
    int32_t *g_190;
    int32_t ** volatile g_189;
    volatile union U0 *g_192;
    union U1 g_216;
    union U0 g_251;
    int32_t g_269;
    int32_t * volatile g_272;
    int64_t g_327;
    int32_t * volatile g_348;
    int32_t * volatile g_349;
    int32_t * volatile g_364;
    int32_t * volatile g_365;
    union U1 g_408;
    uint16_t **g_462;
    uint16_t *** volatile g_461[8];
    uint16_t *** volatile g_463;
    int8_t *g_501;
    int16_t *g_541;
    int16_t **g_540;
    volatile union U1 g_581;
    int32_t g_613;
    uint16_t g_646;
    int32_t * volatile g_648;
    volatile uint8_t *g_664;
    volatile uint8_t * volatile * volatile g_663;
    volatile int32_t g_670;
    volatile int32_t *g_669;
    volatile int32_t **g_668[1][2];
    volatile int32_t ***g_667;
    volatile int32_t ****g_666;
    int16_t g_686[3][4][1];
    uint32_t * volatile g_702;
    uint32_t * volatile *g_701;
    uint32_t *g_732[10][9][2];
    uint32_t **g_731;
    volatile union U1 *g_785;
    volatile union U1 ** volatile g_784;
    int32_t *g_823;
    int32_t **g_822[4];
    uint32_t ***g_854[4][5];
    uint16_t g_871;
    int32_t ** volatile g_877;
    uint8_t g_896;
    union U1 g_899;
    uint16_t g_918;
    int32_t ** volatile g_929;
    union U1 g_958;
    int64_t *g_966;
    int64_t **g_965[8][8][4];
    int64_t g_1005[7];
    int64_t g_1020;
    volatile union U1 g_1241;
    union U1 g_1252;
    uint16_t g_1264[6];
    int32_t *g_1287;
    int32_t ** volatile g_1286;
    volatile union U1 g_1369;
    union U1 g_1403;
    uint32_t ***g_1443;
    union U0 g_1656;
    int8_t g_1660;
    int16_t g_1666;
    uint32_t g_1692[9];
    uint64_t g_1712;
    int32_t **g_1720[8];
    int32_t ***g_1719;
    int32_t ****g_1718;
    int32_t *****g_1717;
    int32_t g_1751;
    uint32_t g_1756[7][7][5];
    volatile union U1 ** volatile g_1863;
    int8_t **g_1921;
    int8_t ***g_1920[4];
    int32_t g_1945;
    int8_t g_2013;
    volatile uint16_t g_2036[9][4][4];
    volatile uint16_t g_2037[1];
    volatile uint16_t g_2038;
    volatile uint16_t g_2039;
    volatile uint16_t g_2040;
    volatile uint16_t g_2041;
    volatile uint16_t g_2042[4];
    volatile uint16_t g_2043;
    volatile uint16_t g_2044[3];
    volatile uint16_t g_2045[7];
    volatile uint16_t g_2046;
    volatile uint16_t g_2047[7][9];
    volatile uint16_t g_2048;
    volatile uint16_t g_2049;
    volatile uint16_t g_2050;
    volatile uint16_t g_2051;
    volatile uint16_t g_2052;
    volatile uint16_t g_2053[9];
    volatile uint16_t g_2054;
    volatile uint16_t g_2055;
    volatile uint16_t g_2056[5][5];
    volatile uint16_t g_2057[9];
    volatile uint16_t g_2058;
    volatile uint16_t g_2059;
    volatile uint16_t g_2060;
    volatile uint16_t g_2061;
    volatile uint16_t g_2062;
    volatile uint16_t g_2063;
    volatile uint16_t g_2064;
    volatile uint16_t g_2065;
    volatile uint16_t g_2066;
    volatile uint16_t g_2067;
    volatile uint16_t g_2068;
    volatile uint16_t g_2069;
    volatile uint16_t g_2070;
    volatile uint16_t g_2071[8][8][3];
    volatile uint16_t g_2072;
    volatile uint16_t g_2073[7][1][3];
    volatile uint16_t g_2074[7];
    volatile uint16_t g_2075;
    volatile uint16_t g_2076;
    volatile uint16_t g_2077;
    volatile uint16_t g_2078;
    volatile uint16_t g_2079;
    volatile uint16_t g_2080;
    volatile uint16_t g_2081;
    volatile uint16_t g_2082;
    volatile uint16_t g_2083;
    volatile uint16_t g_2084;
    volatile uint16_t g_2085;
    volatile uint16_t g_2086;
    volatile uint16_t g_2087;
    volatile uint16_t g_2088;
    volatile uint16_t g_2089;
    volatile uint16_t g_2090[3][5];
    volatile uint16_t g_2091;
    volatile uint16_t g_2092[8];
    volatile uint16_t g_2093;
    volatile uint16_t g_2094;
    volatile uint16_t g_2095[7][8][4];
    volatile uint16_t g_2096;
    volatile uint16_t g_2097[6];
    volatile uint16_t g_2098[3];
    volatile uint16_t g_2099;
    volatile uint16_t g_2100;
    volatile uint16_t g_2101;
    volatile uint16_t *g_2035[10][4][6];
    volatile uint16_t * volatile *g_2034;
    volatile uint16_t * volatile ** volatile g_2033;
    volatile uint16_t * volatile ** volatile *g_2032;
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
uint32_t  func_1(struct S2 * p_2186);
int32_t  func_2(uint64_t  p_3, uint8_t  p_4, union U0  p_5, struct S2 * p_2186);
int16_t  func_16(uint8_t  p_17, struct S2 * p_2186);
uint8_t * func_33(uint8_t * p_34, int32_t * p_35, int32_t  p_36, struct S2 * p_2186);
int32_t * func_38(int32_t  p_39, uint8_t * p_40, int32_t * p_41, struct S2 * p_2186);
uint32_t  func_43(uint32_t  p_44, int16_t  p_45, union U0  p_46, uint8_t * p_47, int32_t  p_48, struct S2 * p_2186);
union U0  func_50(uint8_t  p_51, union U0  p_52, int32_t  p_53, struct S2 * p_2186);
int32_t  func_55(uint64_t  p_56, int32_t * p_57, int32_t * p_58, union U0  p_59, struct S2 * p_2186);
int32_t * func_60(int32_t * p_61, struct S2 * p_2186);
int32_t * func_62(uint8_t  p_63, uint8_t * p_64, int32_t * p_65, int32_t  p_66, uint16_t  p_67, struct S2 * p_2186);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2186->g_6 p_2186->g_8
 * writes: p_2186->g_8 p_2186->g_6
 */
uint32_t  func_1(struct S2 * p_2186)
{ /* block id: 4 */
    uint8_t *l_7 = &p_2186->g_8;
    union U0 l_11 = {9UL};
    l_11.f1 = func_2((!p_2186->g_6), ((*l_7)--), l_11, p_2186);
    return l_11.f1;
}


/* ------------------------------------------ */
/* 
 * reads : p_2186->g_6
 * writes: p_2186->g_6
 */
int32_t  func_2(uint64_t  p_3, uint8_t  p_4, union U0  p_5, struct S2 * p_2186)
{ /* block id: 6 */
    int32_t *l_1653 = (void*)0;
    int32_t **l_1658 = (void*)0;
    uint16_t *l_1663 = &p_2186->g_6;
    uint16_t **l_1662[8][3][3] = {{{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0}},{{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0}},{{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0}},{{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0}},{{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0}},{{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0}},{{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0}},{{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0},{&l_1663,&l_1663,(void*)0}}};
    uint32_t **l_1688 = &p_2186->g_732[7][2][0];
    int64_t l_1703[5];
    int32_t l_1710[4] = {0x196C11D6L,0x196C11D6L,0x196C11D6L,0x196C11D6L};
    uint8_t *l_1730 = &p_2186->g_8;
    int64_t l_1750 = (-1L);
    uint32_t l_1752 = 0x510065C4L;
    int64_t l_1811 = 0x7BE9465622F8191AL;
    int16_t l_1813[5];
    uint32_t l_1814 = 0x93AB1E39L;
    uint8_t l_1835 = 0UL;
    uint64_t l_1906 = 0xE93C0AB3DF90DB0EL;
    int8_t ***l_1922 = &p_2186->g_1921;
    int32_t l_1930 = (-1L);
    uint16_t l_1979 = 0xBD74L;
    uint64_t *l_2001 = &p_2186->g_1712;
    uint64_t **l_2000 = &l_2001;
    int32_t l_2103 = (-1L);
    uint32_t l_2173 = 9UL;
    uint32_t l_2183 = 1UL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_1703[i] = 1L;
    for (i = 0; i < 5; i++)
        l_1813[i] = 0x4D66L;
    for (p_2186->g_6 = 9; (p_2186->g_6 != 53); p_2186->g_6 = safe_add_func_int16_t_s_s(p_2186->g_6, 1))
    { /* block id: 9 */
        uint32_t l_1650 = 0x2C28ADCAL;
        union U0 *l_1655[6] = {&p_2186->g_1656,&p_2186->g_1656,&p_2186->g_1656,&p_2186->g_1656,&p_2186->g_1656,&p_2186->g_1656};
        union U0 **l_1654 = &l_1655[3];
        int32_t **l_1657 = &l_1653;
        int8_t *l_1659 = &p_2186->g_1660;
        uint32_t *l_1661 = &l_1650;
        uint32_t l_1664 = 0x4BAF2AD7L;
        int16_t *l_1665 = &p_2186->g_1666;
        int32_t l_1700 = 3L;
        int32_t l_1706 = (-2L);
        int32_t l_1707 = 1L;
        int32_t l_1709 = (-10L);
        int32_t *****l_1721 = &p_2186->g_1718;
        uint8_t l_1749 = 0UL;
        uint64_t l_1753[6] = {0xF4AD61F53438EF7CL,18446744073709551615UL,0xF4AD61F53438EF7CL,0xF4AD61F53438EF7CL,18446744073709551615UL,0xF4AD61F53438EF7CL};
        uint16_t l_1794 = 1UL;
        int32_t l_1812[8][6][5] = {{{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL}},{{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL}},{{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL}},{{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL}},{{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL}},{{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL}},{{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL}},{{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL},{0x0C64E058L,0x33A4CFFDL,2L,0L,0x350E885DL}}};
        int32_t l_1951[4] = {4L,4L,4L,4L};
        uint32_t l_1960 = 0xD42D32B5L;
        uint64_t l_1978 = 0x336DD3EE9EEEBEACL;
        uint64_t **l_2002 = (void*)0;
        uint64_t l_2016[4] = {0x0955BA4C5C997706L,0x0955BA4C5C997706L,0x0955BA4C5C997706L,0x0955BA4C5C997706L};
        uint16_t **l_2020[4] = {&l_1663,&l_1663,&l_1663,&l_1663};
        int32_t *l_2177 = &l_1709;
        int32_t *l_2178 = &l_1700;
        int32_t *l_2179 = &l_1700;
        int32_t *l_2180 = &p_2186->g_216.f2;
        int32_t *l_2181 = (void*)0;
        int32_t *l_2182[4][1] = {{&p_2186->g_98[1]},{&p_2186->g_98[1]},{&p_2186->g_98[1]},{&p_2186->g_98[1]}};
        int i, j, k;
        (1 + 1);
    }
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_2186->g_8 p_2186->g_32 p_2186->g_6 p_2186->g_72 p_2186->g_80 p_2186->g_94 p_2186->g_96 p_2186->g_97 p_2186->g_116 p_2186->g_98 p_2186->g_104 p_2186->g_143 p_2186->g_158 p_2186->g_170 p_2186->g_103 p_2186->g_189 p_2186->g_190 p_2186->g_192 p_2186->g_216 p_2186->g_134 p_2186->g_136 p_2186->g_216.f2 p_2186->g_269 p_2186->g_272 p_2186->g_251.f1 p_2186->g_349 p_2186->g_327 p_2186->g_49 p_2186->g_365 p_2186->g_408 p_2186->g_463 p_2186->g_501 p_2186->g_541 p_2186->g_540 p_2186->g_251 p_2186->g_581 p_2186->g_581.f0 p_2186->g_613 p_2186->g_648 p_2186->g_663 p_2186->g_666 p_2186->g_701 p_2186->g_646 p_2186->g_664 p_2186->g_702 p_2186->g_669 p_2186->g_667 p_2186->g_668 p_2186->g_670 p_2186->g_784 p_2186->g_822 p_2186->g_785 p_2186->g_871 p_2186->g_877 p_2186->g_896 p_2186->g_899 p_2186->g_918 p_2186->g_408.f4 p_2186->g_929 p_2186->g_958 p_2186->g_965 p_2186->g_1005 p_2186->g_966 p_2186->g_958.f0 p_2186->g_1241 p_2186->g_1252 p_2186->g_1264 p_2186->g_1287 p_2186->g_1286 p_2186->g_1369 p_2186->g_1403 p_2186->g_251.f0 p_2186->g_1020 p_2186->g_1252.f0 p_2186->g_408.f2 p_2186->g_216.f0 p_2186->g_958.f1 p_2186->g_899.f1 p_2186->g_899.f2 p_2186->g_216.f4
 * writes: p_2186->g_8 p_2186->g_32 p_2186->g_49 p_2186->g_94 p_2186->g_96 p_2186->g_98 p_2186->g_102 p_2186->g_104 p_2186->g_116 p_2186->g_134 p_2186->g_136 p_2186->g_158 p_2186->g_170 p_2186->g_190 p_2186->g_192 p_2186->g_80 p_2186->g_216.f4 p_2186->g_216.f2 p_2186->g_251 p_2186->g_269 p_2186->g_327 p_2186->g_143 p_2186->g_462 p_2186->g_540 p_2186->g_613 p_2186->g_408.f0 p_2186->g_646 p_2186->g_408.f2 p_2186->g_731 p_2186->g_670 p_2186->g_501 p_2186->g_72 p_2186->g_686 p_2186->g_785 p_2186->g_854 p_2186->g_871 p_2186->g_408.f4 p_2186->g_965 p_2186->g_169 p_2186->g_1005 p_2186->g_1020 p_2186->g_899.f2 p_2186->g_958.f0 p_2186->g_216.f0 p_2186->g_899.f4 p_2186->g_1252.f2 p_2186->g_1287 p_2186->g_896 p_2186->g_823 p_2186->g_1443 p_2186->g_1252.f0 p_2186->g_958.f1 p_2186->g_899.f1 p_2186->g_669 p_2186->g_1241.f1 p_2186->g_732
 */
int16_t  func_16(uint8_t  p_17, struct S2 * p_2186)
{ /* block id: 10 */
    uint32_t l_20[10] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    int32_t *l_31 = &p_2186->g_32;
    uint8_t *l_37 = (void*)0;
    uint32_t l_42 = 0x4CA72CB5L;
    union U0 l_54 = {0UL};
    uint8_t *l_1377 = &p_2186->g_896;
    int8_t **l_1380 = &p_2186->g_501;
    uint32_t l_1402 = 0xB39AF24AL;
    uint32_t l_1426 = 4294967295UL;
    int32_t *l_1437 = &p_2186->g_49[0];
    uint32_t ***l_1442 = &p_2186->g_731;
    union U1 *l_1459 = &p_2186->g_958;
    int32_t l_1537[1];
    uint64_t l_1541 = 0xF23CE59C30631C03L;
    int16_t l_1615[9][7][4] = {{{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)}},{{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)}},{{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)}},{{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)}},{{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)}},{{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)}},{{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)}},{{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)}},{{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)},{(-1L),(-1L),1L,(-10L)}}};
    uint16_t l_1617 = 0UL;
    uint8_t l_1628 = 0xBDL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1537[i] = 0x2E26D3D0L;
    for (p_2186->g_8 = (-27); (p_2186->g_8 < 44); p_2186->g_8 = safe_add_func_int64_t_s_s(p_2186->g_8, 4))
    { /* block id: 13 */
        if (p_2186->g_8)
            break;
        if ((atomic_inc(&p_2186->g_atomic_input[56 * get_linear_group_id() + 41]) == 4))
        { /* block id: 16 */
            int32_t l_21 = 0x18AB9C27L;
            int16_t l_28 = 0x7874L;
            uint64_t l_29 = 18446744073709551609UL;
            int16_t l_30 = (-1L);
            for (l_21 = 0; (l_21 <= 9); l_21 += 1)
            { /* block id: 19 */
                union U0 l_22 = {0xA796D402L};
                uint16_t l_23 = 0xD204L;
                int32_t l_24 = 0x2E11914CL;
                l_24 = (l_22 , (l_23 , 0x503B15A8L));
                for (l_22.f0 = 3; (l_22.f0 <= 9); l_22.f0 += 1)
                { /* block id: 23 */
                    uint32_t l_25 = 0xE60D743CL;
                    int16_t l_26 = (-2L);
                    uint32_t l_27 = 0xB347D170L;
                    l_26 = l_25;
                    l_27 |= (-9L);
                }
            }
            l_21 &= ((l_29 = l_28) , l_30);
            unsigned int result = 0;
            result += l_21;
            result += l_28;
            result += l_29;
            result += l_30;
            atomic_add(&p_2186->g_special_values[56 * get_linear_group_id() + 41], result);
        }
        else
        { /* block id: 30 */
            (1 + 1);
        }
    }
    (*l_31) ^= (-1L);
    if ((&p_17 == (l_1377 = func_33(l_37, func_38((l_42 || (((func_43((*l_31), (p_2186->g_49[0] = p_2186->g_32), func_50(p_17, l_54, (func_55(p_17, func_60(func_62((0xCEA5L > 0xBB57L), l_37, l_31, p_17, p_2186->g_6, p_2186), p_2186), l_31, l_54, p_2186) < 0x77CE25D3L), p_2186), l_37, p_17, p_2186) >= (*l_31)) , (*l_31)) >= (-8L))), l_37, &p_2186->g_32, p_2186), p_17, p_2186))))
    { /* block id: 800 */
        uint64_t *l_1378 = &p_2186->g_96[4];
        int32_t **l_1381 = &l_31;
        int32_t **l_1382[5];
        int i;
        for (i = 0; i < 5; i++)
            l_1382[i] = &p_2186->g_1287;
        (*p_2186->g_1287) |= (((*l_1378) = p_2186->g_49[0]) <= (p_17 != (safe_unary_minus_func_int16_t_s(((*p_2186->g_541) = (&p_2186->g_501 != l_1380))))));
        (*p_2186->g_1286) = ((*l_1381) = func_60((*p_2186->g_1286), p_2186));
    }
    else
    { /* block id: 806 */
        uint8_t *l_1387 = (void*)0;
        uint8_t *l_1388 = (void*)0;
        uint8_t *l_1389 = &p_2186->g_216.f0;
        int16_t *l_1404 = &p_2186->g_686[1][0][0];
        int32_t **l_1407 = &p_2186->g_190;
        int32_t ***l_1406 = &l_1407;
        int32_t ****l_1405 = &l_1406;
        int8_t *l_1408[5][1];
        uint16_t *l_1409 = &p_2186->g_871;
        uint64_t l_1410 = 18446744073709551611UL;
        union U0 l_1428 = {0x423C0DA8L};
        int32_t *l_1436 = &p_2186->g_49[2];
        uint32_t l_1481 = 4294967293UL;
        int32_t l_1538[3][6] = {{0x74D669F0L,0L,0x74D669F0L,0x74D669F0L,0L,0x74D669F0L},{0x74D669F0L,0L,0x74D669F0L,0x74D669F0L,0L,0x74D669F0L},{0x74D669F0L,0L,0x74D669F0L,0x74D669F0L,0L,0x74D669F0L}};
        int8_t l_1620[3][1];
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_1408[i][j] = &p_2186->g_80;
        }
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_1620[i][j] = 0x02L;
        }
        if (((((safe_mod_func_int32_t_s_s((safe_rshift_func_int16_t_s_s(((*p_2186->g_541) |= p_17), 12)), (((FAKE_DIVERGE(p_2186->group_0_offset, get_group_id(0), 10) & ((*l_1377) = 0x8CL)) > ((*l_1389) = p_17)) , (l_54.f1 = (((*l_1409) |= ((4294967289UL ^ (safe_sub_func_int16_t_s_s(((*l_1404) = (((safe_lshift_func_int8_t_s_s(((*l_31) = ((((safe_add_func_int64_t_s_s((safe_mod_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_u((safe_add_func_uint64_t_u_u((l_1402 & (*l_31)), (((p_2186->g_1403 , l_1404) != (p_17 , &p_2186->g_686[1][3][0])) >= p_17))), (*l_31))) == p_17), p_17)), 9UL)) == p_17) , l_1405) == &l_1406)), 6)) != (*p_2186->g_966)) , 0x51ABL)), p_17))) , p_17)) , l_1410))))) && p_2186->g_1005[4]) | 0x24FB88EAL) , p_17))
        { /* block id: 814 */
            int32_t l_1427 = 4L;
            union U0 *l_1429 = &p_2186->g_251;
            uint32_t *l_1432 = &p_2186->g_251.f0;
            int32_t **l_1435 = &p_2186->g_823;
            int32_t l_1438 = 0x214CEBF6L;
            int8_t l_1452 = 0L;
            int32_t l_1539 = (-7L);
            int32_t l_1540 = 0x7D001649L;
            for (p_2186->g_871 = (-17); (p_2186->g_871 <= 58); ++p_2186->g_871)
            { /* block id: 817 */
                if ((atomic_inc(&p_2186->l_atomic_input[7]) == 2))
                { /* block id: 819 */
                    int32_t l_1413 = (-1L);
                    union U1 l_1414 = {0x4AL};/* VOLATILE GLOBAL l_1414 */
                    uint64_t l_1415 = 0xD1C8A5C90277AF9CL;
                    int16_t l_1416 = 0x6D01L;
                    uint32_t l_1417[5] = {0UL,0UL,0UL,0UL,0UL};
                    int32_t *l_1421 = &l_1414.f2;
                    int32_t *l_1422 = &l_1414.f2;
                    int32_t *l_1423 = &l_1413;
                    int i;
                    l_1417[4] = (l_1413 , (l_1414 , (l_1415 , l_1416)));
                    for (l_1414.f2 = 0; (l_1414.f2 <= 22); l_1414.f2 = safe_add_func_uint16_t_u_u(l_1414.f2, 1))
                    { /* block id: 823 */
                        int16_t l_1420[9][1][6] = {{{0x4985L,0x6837L,1L,(-1L),1L,0x6837L}},{{0x4985L,0x6837L,1L,(-1L),1L,0x6837L}},{{0x4985L,0x6837L,1L,(-1L),1L,0x6837L}},{{0x4985L,0x6837L,1L,(-1L),1L,0x6837L}},{{0x4985L,0x6837L,1L,(-1L),1L,0x6837L}},{{0x4985L,0x6837L,1L,(-1L),1L,0x6837L}},{{0x4985L,0x6837L,1L,(-1L),1L,0x6837L}},{{0x4985L,0x6837L,1L,(-1L),1L,0x6837L}},{{0x4985L,0x6837L,1L,(-1L),1L,0x6837L}}};
                        int i, j, k;
                        l_1413 = l_1420[7][0][3];
                    }
                    l_1421 = (void*)0;
                    l_1423 = l_1422;
                    unsigned int result = 0;
                    result += l_1413;
                    result += l_1414.f0;
                    result += l_1414.f1;
                    result += l_1414.f2;
                    result += l_1414.f3;
                    result += l_1414.f4;
                    result += l_1415;
                    result += l_1416;
                    int l_1417_i0;
                    for (l_1417_i0 = 0; l_1417_i0 < 5; l_1417_i0++) {
                        result += l_1417[l_1417_i0];
                    }
                    atomic_add(&p_2186->l_special_values[7], result);
                }
                else
                { /* block id: 828 */
                    (1 + 1);
                }
            }
            if ((((*l_1436) |= (safe_mul_func_int8_t_s_s((l_1427 |= (l_1426 |= (*l_31))), (((((**p_2186->g_701) = 0x7ED17B0DL) >= ((((((*l_1429) = l_1428) , ((p_17 , (safe_rshift_func_uint8_t_u_u(((((((*l_1432)--) != ((l_1438 = (((*l_1435) = l_1432) != (l_1437 = l_1436))) || 0x0214215D57139244L)) & p_17) , (p_17 > 0x94L)) ^ 18446744073709551615UL), 7))) , (*p_2186->g_103))) & (*p_2186->g_103)) , p_17) != p_17)) , (*p_2186->g_541)) > p_17)))) , (-1L)))
            { /* block id: 841 */
                uint8_t *l_1439[10][9];
                int32_t l_1450 = 7L;
                uint64_t *l_1451 = &p_2186->g_96[4];
                int i, j;
                for (i = 0; i < 10; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_1439[i][j] = (void*)0;
                }
                (***l_1405) = func_62((*l_31), l_1439[9][8], ((safe_mul_func_uint8_t_u_u(p_17, ((p_2186->g_1443 = l_1442) == ((safe_mod_func_int32_t_s_s((GROUP_DIVERGE(1, 1) ^ (safe_div_func_int32_t_s_s((0x52L ^ p_17), (safe_mul_func_uint16_t_u_u(l_1427, (p_2186->g_1020 ^ ((*l_1451) ^= (l_1450 | p_17)))))))), l_1452)) , &p_2186->g_701)))) , (*p_2186->g_1286)), (*l_31), p_2186->g_269, p_2186);
                (***l_1406) ^= (safe_lshift_func_uint8_t_u_u(9UL, ((*l_1377) = (safe_sub_func_uint8_t_u_u(l_1450, 0x4AL)))));
                for (p_2186->g_1252.f0 = 0; (p_2186->g_1252.f0 <= 38); p_2186->g_1252.f0 = safe_add_func_int8_t_s_s(p_2186->g_1252.f0, 2))
                { /* block id: 849 */
                    for (p_2186->g_408.f2 = 8; (p_2186->g_408.f2 >= 0); p_2186->g_408.f2 -= 1)
                    { /* block id: 852 */
                        union U1 **l_1460 = &l_1459;
                        int i;
                        (*l_1460) = l_1459;
                        return p_2186->g_96[(p_2186->g_408.f2 + 1)];
                    }
                    (*l_1407) = &l_1438;
                    for (p_2186->g_216.f0 = 0; (p_2186->g_216.f0 < 43); ++p_2186->g_216.f0)
                    { /* block id: 859 */
                        if ((*p_2186->g_97))
                            break;
                    }
                }
            }
            else
            { /* block id: 863 */
                int64_t *l_1482 = &p_2186->g_136;
                l_1438 = ((*p_2186->g_1287) ^= ((safe_div_func_uint8_t_u_u(((*l_1377) &= (p_17 || ((*l_1482) = (safe_sub_func_int64_t_s_s(((*p_2186->g_966) = (safe_mul_func_uint16_t_u_u(((*l_1409) |= FAKE_DIVERGE(p_2186->local_1_offset, get_local_id(1), 10)), (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((FAKE_DIVERGE(p_2186->global_0_offset, get_global_id(0), 10) == (p_2186->g_80 ^= (safe_mod_func_int64_t_s_s((safe_sub_func_uint64_t_u_u((~p_2186->g_6), (65530UL < p_17))), ((safe_div_func_int32_t_s_s(((p_17 == (((*l_1429) = l_1428) , (p_17 , 0xA77AF111L))) >= (((safe_mul_func_uint8_t_u_u(p_17, (*l_31))) , 0UL) > p_17)), p_17)) , 0xAB6B316FDD19A01BL))))) || p_17) <= p_17), p_17)), GROUP_DIVERGE(2, 1)))))), l_1481))))), 255UL)) != 0L));
            }
            if ((atomic_inc(&p_2186->g_atomic_input[56 * get_linear_group_id() + 40]) == 1))
            { /* block id: 874 */
                uint32_t l_1483 = 0x9C12C1F1L;
                uint64_t l_1484 = 0x4D005179C3C7FF5EL;
                if ((l_1483 , l_1484))
                { /* block id: 875 */
                    int32_t l_1485 = 0L;
                    for (l_1485 = (-15); (l_1485 < (-2)); ++l_1485)
                    { /* block id: 878 */
                        int64_t l_1488 = 0x0C7489B3EB6E14C9L;
                        int64_t l_1489 = 0x584421A4A593BF78L;
                        uint32_t l_1490[1];
                        uint8_t l_1491 = 9UL;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1490[i] = 0x451C13F7L;
                        l_1488 ^= 0x7BDE0924L;
                        l_1491 = (l_1490[0] |= l_1489);
                    }
                    for (l_1485 = 0; (l_1485 >= 10); ++l_1485)
                    { /* block id: 885 */
                        uint32_t l_1494 = 0x566AA017L;
                        int8_t l_1497 = 0x32L;
                        int32_t *l_1498 = (void*)0;
                        l_1494++;
                        l_1497 |= 1L;
                        l_1498 = (void*)0;
                    }
                }
                else
                { /* block id: 890 */
                    int32_t l_1499[5][4][9] = {{{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L}},{{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L}},{{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L}},{{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L}},{{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L},{(-1L),0x501FDF12L,0x5E60BAC8L,(-10L),0x5E60BAC8L,0x501FDF12L,(-1L),0x7271109EL,1L}}};
                    uint16_t l_1514 = 65527UL;
                    uint32_t l_1529 = 0xC620DBC0L;
                    int32_t l_1530[8][4][8] = {{{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L}},{{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L}},{{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L}},{{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L}},{{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L}},{{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L}},{{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L}},{{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L},{0x226A5593L,0L,(-1L),(-1L),0L,0x226A5593L,(-1L),4L}}};
                    int i, j, k;
                    for (l_1499[2][2][1] = 0; (l_1499[2][2][1] <= 5); l_1499[2][2][1] += 1)
                    { /* block id: 893 */
                        int32_t l_1500[9][4][5] = {{{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L}},{{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L}},{{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L}},{{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L}},{{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L}},{{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L}},{{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L}},{{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L}},{{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L},{0x439F13A6L,0x29438F17L,7L,0L,0x120B6412L}}};
                        int64_t l_1501 = 0x112FAB035010E6F0L;
                        int16_t l_1502 = 0x12D1L;
                        int32_t l_1503 = 0x0E5E438BL;
                        int32_t l_1504 = 0x51F2E2FBL;
                        uint64_t l_1505[6];
                        int32_t l_1508 = 0L;
                        uint32_t l_1509 = 0x5782D062L;
                        int32_t *l_1510[5][3][6] = {{{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0}},{{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0}},{{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0}},{{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0}},{{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0},{&l_1500[0][3][3],&l_1500[0][3][3],&l_1503,&l_1508,&l_1500[6][3][4],(void*)0}}};
                        int32_t *l_1511 = &l_1500[2][1][0];
                        uint8_t l_1512 = 0xE9L;
                        uint16_t l_1513 = 9UL;
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_1505[i] = 18446744073709551607UL;
                        --l_1505[2];
                        l_1509 = (l_1508 ^= p_2186->g_1264[l_1499[2][2][1]]);
                        l_1511 = l_1510[0][0][5];
                        l_1513 = l_1512;
                    }
                    if ((l_1514 , 0x757CD410L))
                    { /* block id: 900 */
                        int32_t l_1516 = 9L;
                        int32_t *l_1515 = &l_1516;
                        uint64_t l_1517[10][4] = {{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}};
                        union U0 l_1519 = {0xE64A337EL};
                        union U0 *l_1518 = &l_1519;
                        union U0 *l_1520 = &l_1519;
                        int i, j;
                        l_1515 = (void*)0;
                        l_1520 = (l_1517[5][1] , (l_1518 = (void*)0));
                    }
                    else
                    { /* block id: 904 */
                        uint16_t l_1521 = 65535UL;
                        uint64_t l_1524 = 8UL;
                        uint16_t l_1525 = 65526UL;
                        uint8_t l_1526 = 0UL;
                        l_1521--;
                        l_1499[2][2][1] |= l_1524;
                        l_1499[2][2][1] |= l_1525;
                        ++l_1526;
                    }
                    l_1530[2][0][6] = l_1529;
                }
                unsigned int result = 0;
                result += l_1483;
                result += l_1484;
                atomic_add(&p_2186->g_special_values[56 * get_linear_group_id() + 40], result);
            }
            else
            { /* block id: 912 */
                (1 + 1);
            }
            for (p_2186->g_958.f1 = 0; (p_2186->g_958.f1 != 40); p_2186->g_958.f1++)
            { /* block id: 917 */
                int32_t *l_1533 = &p_2186->g_1403.f2;
                int32_t *l_1534 = &p_2186->g_1403.f2;
                int32_t *l_1535 = &p_2186->g_251.f1;
                int32_t *l_1536[9] = {&p_2186->g_98[1],&p_2186->g_98[1],&p_2186->g_98[1],&p_2186->g_98[1],&p_2186->g_98[1],&p_2186->g_98[1],&p_2186->g_98[1],&p_2186->g_98[1],&p_2186->g_98[1]};
                int i;
                l_1541++;
                if ((atomic_inc(&p_2186->l_atomic_input[4]) == 1))
                { /* block id: 920 */
                    int32_t l_1544 = (-1L);
                    uint16_t l_1552 = 1UL;
                    uint32_t l_1553 = 0x8F18B27CL;
                    uint16_t l_1572[3][5][7] = {{{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L}},{{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L}},{{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L},{0x5677L,1UL,0x3CF6L,1UL,0x5677L,65535UL,0xF947L}}};
                    int i, j, k;
                    for (l_1544 = 0; (l_1544 <= 6); l_1544 += 1)
                    { /* block id: 923 */
                        uint32_t l_1545 = 0x6FCA6557L;
                        l_1545 = 8L;
                    }
                    for (l_1544 = 0; (l_1544 < (-11)); l_1544 = safe_sub_func_int8_t_s_s(l_1544, 7))
                    { /* block id: 928 */
                        uint32_t l_1548 = 0x0BC048CCL;
                        uint32_t l_1549 = 0x4B09FE9CL;
                        int64_t l_1550 = 0L;
                        int64_t l_1551 = 0x238B522ED61374A4L;
                        l_1549 = l_1548;
                        l_1551 = l_1550;
                    }
                    if ((l_1553 = l_1552))
                    { /* block id: 933 */
                        union U0 l_1555 = {0UL};
                        union U0 *l_1554 = &l_1555;
                        union U0 *l_1556 = &l_1555;
                        union U1 l_1557[6][2] = {{{249UL},{0UL}},{{249UL},{0UL}},{{249UL},{0UL}},{{249UL},{0UL}},{{249UL},{0UL}},{{249UL},{0UL}}};
                        int32_t l_1559 = 0x3FE28A9DL;
                        int32_t *l_1558 = &l_1559;
                        int32_t *l_1560 = &l_1555.f1;
                        int32_t *l_1561[4];
                        int32_t *l_1562 = &l_1559;
                        uint8_t l_1563 = 0xC0L;
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_1561[i] = &l_1559;
                        l_1556 = (l_1554 = (void*)0);
                        l_1560 = (l_1557[4][0] , (l_1558 = l_1558));
                        l_1562 = l_1561[2];
                        l_1544 ^= l_1563;
                    }
                    else
                    { /* block id: 940 */
                        int16_t l_1564[7][7][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
                        int32_t l_1565[9][7][4] = {{{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L}},{{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L}},{{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L}},{{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L}},{{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L}},{{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L}},{{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L}},{{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L}},{{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L},{0L,0x0B904293L,0x71BC2CF1L,0x2AE79E16L}}};
                        int32_t l_1566 = 0x23C64C0DL;
                        int64_t l_1567 = 0L;
                        uint32_t l_1568 = 8UL;
                        int32_t l_1570 = (-6L);
                        int32_t *l_1569[5] = {&l_1570,&l_1570,&l_1570,&l_1570,&l_1570};
                        int32_t *l_1571 = &l_1570;
                        int i, j, k;
                        l_1565[6][6][0] = (l_1544 = l_1564[2][1][0]);
                        l_1569[2] = (l_1566 , (l_1571 = ((l_1567 , (l_1544 = l_1568)) , l_1569[2])));
                    }
                    l_1572[0][4][4]++;
                    unsigned int result = 0;
                    result += l_1544;
                    result += l_1552;
                    result += l_1553;
                    int l_1572_i0, l_1572_i1, l_1572_i2;
                    for (l_1572_i0 = 0; l_1572_i0 < 3; l_1572_i0++) {
                        for (l_1572_i1 = 0; l_1572_i1 < 5; l_1572_i1++) {
                            for (l_1572_i2 = 0; l_1572_i2 < 7; l_1572_i2++) {
                                result += l_1572[l_1572_i0][l_1572_i1][l_1572_i2];
                            }
                        }
                    }
                    atomic_add(&p_2186->l_special_values[4], result);
                }
                else
                { /* block id: 948 */
                    (1 + 1);
                }
                (*l_1407) = &l_1539;
                l_1539 |= (*p_2186->g_349);
            }
        }
        else
        { /* block id: 954 */
            int8_t ***l_1575 = &l_1380;
            int32_t l_1614[9] = {0x7F35FF8EL,0x7F35FF8EL,0x7F35FF8EL,0x7F35FF8EL,0x7F35FF8EL,0x7F35FF8EL,0x7F35FF8EL,0x7F35FF8EL,0x7F35FF8EL};
            int16_t l_1616 = 0x6086L;
            int64_t l_1621 = 8L;
            int i;
            (*l_1575) = (void*)0;
            if ((atomic_inc(&p_2186->l_atomic_input[47]) == 8))
            { /* block id: 957 */
                uint16_t l_1576[2];
                union U1 l_1577[5][8] = {{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}}};
                uint64_t l_1578[10] = {1UL,0xCABB8541277EAF6BL,1UL,1UL,0xCABB8541277EAF6BL,1UL,1UL,0xCABB8541277EAF6BL,1UL,1UL};
                int8_t l_1579 = 6L;
                int16_t l_1580[1];
                uint64_t l_1581[8];
                int32_t l_1609 = (-8L);
                int32_t *l_1608 = &l_1609;
                int32_t *l_1610 = &l_1609;
                int i, j;
                for (i = 0; i < 2; i++)
                    l_1576[i] = 0xE2E3L;
                for (i = 0; i < 1; i++)
                    l_1580[i] = 0x2B72L;
                for (i = 0; i < 8; i++)
                    l_1581[i] = 18446744073709551611UL;
                l_1580[0] = (l_1576[1] , ((l_1577[2][3] , l_1578[8]) , l_1579));
                --l_1581[6];
                for (l_1578[8] = 0; (l_1578[8] <= 4); l_1578[8] += 1)
                { /* block id: 962 */
                    int16_t l_1602 = (-1L);
                    int i;
                    if (p_2186->g_1005[(l_1578[8] + 1)])
                    { /* block id: 963 */
                        int8_t l_1584[6][4] = {{0x5BL,0x7CL,(-2L),0x7CL},{0x5BL,0x7CL,(-2L),0x7CL},{0x5BL,0x7CL,(-2L),0x7CL},{0x5BL,0x7CL,(-2L),0x7CL},{0x5BL,0x7CL,(-2L),0x7CL},{0x5BL,0x7CL,(-2L),0x7CL}};
                        int32_t l_1585 = 9L;
                        int8_t l_1586 = (-1L);
                        uint8_t l_1587[8][8][2] = {{{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL}},{{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL}},{{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL}},{{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL}},{{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL}},{{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL}},{{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL}},{{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL},{0x04L,254UL}}};
                        int16_t l_1588[7] = {0x1EF2L,(-7L),0x1EF2L,0x1EF2L,(-7L),0x1EF2L,0x1EF2L};
                        uint8_t l_1589 = 3UL;
                        int8_t l_1590 = 1L;
                        int32_t *l_1591 = (void*)0;
                        int32_t l_1593 = 0x38E925B1L;
                        int32_t *l_1592 = &l_1593;
                        int32_t *l_1594 = &l_1593;
                        int32_t *l_1595 = &l_1593;
                        int i, j, k;
                        l_1586 &= (l_1578[l_1578[8]] , (l_1585 |= l_1584[0][3]));
                        l_1589 = ((l_1577[2][3].f2 = l_1587[3][1][0]) , (l_1588[1] = (l_1577[2][3].f2 = 0x6F764251L)));
                        l_1595 = (l_1594 = (l_1590 , (l_1592 = l_1591)));
                        l_1577[2][3].f2 = (-1L);
                    }
                    else
                    { /* block id: 974 */
                        uint8_t l_1596[5] = {247UL,247UL,247UL,247UL,247UL};
                        int64_t l_1599[4] = {0x50F1A7BA57DFE526L,0x50F1A7BA57DFE526L,0x50F1A7BA57DFE526L,0x50F1A7BA57DFE526L};
                        uint64_t l_1600 = 0x840D217B884CC52FL;
                        int32_t l_1601 = 0x51691493L;
                        int i;
                        l_1596[1]--;
                        l_1600 ^= (l_1577[2][3].f2 = l_1599[3]);
                        l_1577[2][3].f2 = l_1601;
                    }
                    l_1602 &= (-2L);
                    for (p_2186->g_1005[(l_1578[8] + 1)] = 4; (p_2186->g_1005[(l_1578[8] + 1)] >= 0); p_2186->g_1005[(l_1578[8] + 1)] -= 1)
                    { /* block id: 983 */
                        int64_t l_1603 = 1L;
                        int32_t l_1604 = 0x21817F0EL;
                        uint32_t l_1605 = 4294967293UL;
                        l_1605++;
                    }
                }
                l_1610 = l_1608;
                unsigned int result = 0;
                int l_1576_i0;
                for (l_1576_i0 = 0; l_1576_i0 < 2; l_1576_i0++) {
                    result += l_1576[l_1576_i0];
                }
                int l_1577_i0, l_1577_i1;
                for (l_1577_i0 = 0; l_1577_i0 < 5; l_1577_i0++) {
                    for (l_1577_i1 = 0; l_1577_i1 < 8; l_1577_i1++) {
                        result += l_1577[l_1577_i0][l_1577_i1].f0;
                        result += l_1577[l_1577_i0][l_1577_i1].f1;
                        result += l_1577[l_1577_i0][l_1577_i1].f2;
                        result += l_1577[l_1577_i0][l_1577_i1].f3;
                        result += l_1577[l_1577_i0][l_1577_i1].f4;
                    }
                }
                int l_1578_i0;
                for (l_1578_i0 = 0; l_1578_i0 < 10; l_1578_i0++) {
                    result += l_1578[l_1578_i0];
                }
                result += l_1579;
                int l_1580_i0;
                for (l_1580_i0 = 0; l_1580_i0 < 1; l_1580_i0++) {
                    result += l_1580[l_1580_i0];
                }
                int l_1581_i0;
                for (l_1581_i0 = 0; l_1581_i0 < 8; l_1581_i0++) {
                    result += l_1581[l_1581_i0];
                }
                result += l_1609;
                atomic_add(&p_2186->l_special_values[47], result);
            }
            else
            { /* block id: 988 */
                (1 + 1);
            }
            for (p_2186->g_899.f1 = 25; (p_2186->g_899.f1 != 43); p_2186->g_899.f1 = safe_add_func_int64_t_s_s(p_2186->g_899.f1, 1))
            { /* block id: 993 */
                int32_t *l_1613[10] = {(void*)0,&p_2186->g_98[1],(void*)0,(void*)0,&p_2186->g_98[1],(void*)0,(void*)0,&p_2186->g_98[1],(void*)0,(void*)0};
                uint64_t l_1622 = 18446744073709551615UL;
                int i;
                --l_1617;
                l_1622++;
            }
            (**p_2186->g_667) = (void*)0;
        }
    }
    for (p_2186->g_958.f0 = (-6); (p_2186->g_958.f0 == 49); p_2186->g_958.f0++)
    { /* block id: 1002 */
        int32_t *l_1627[7][8] = {{&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0]},{&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0]},{&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0]},{&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0]},{&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0]},{&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0]},{&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[0]}};
        int32_t **l_1645 = &p_2186->g_190;
        int i, j;
        --l_1628;
        for (p_2186->g_899.f2 = (-15); (p_2186->g_899.f2 < (-8)); ++p_2186->g_899.f2)
        { /* block id: 1006 */
            int16_t l_1640[7] = {0x1B44L,2L,0x1B44L,0x1B44L,2L,0x1B44L,0x1B44L};
            int32_t l_1642 = 0x02A49B7EL;
            int i;
            l_1537[0] |= (((*p_2186->g_1287) |= (0x0D1B331AL & (*p_2186->g_702))) < p_17);
            for (p_2186->g_216.f4 = 0; (p_2186->g_216.f4 < (-15)); p_2186->g_216.f4 = safe_sub_func_int8_t_s_s(p_2186->g_216.f4, 6))
            { /* block id: 1011 */
                return (*p_2186->g_541);
            }
            for (p_2186->g_1252.f0 = 0; (p_2186->g_1252.f0 > 40); p_2186->g_1252.f0 = safe_add_func_int8_t_s_s(p_2186->g_1252.f0, 4))
            { /* block id: 1016 */
                uint16_t l_1641 = 0x06A2L;
                union U0 *l_1644 = (void*)0;
                union U0 **l_1643 = &l_1644;
                l_1642 = (safe_sub_func_uint64_t_u_u(((void*)0 != (*p_2186->g_663)), ((safe_unary_minus_func_int8_t_s((((p_17 >= ((*p_2186->g_541) = l_1640[4])) < l_1641) == (p_17 > 1UL)))) , p_2186->g_871)));
                (*l_1643) = (void*)0;
                (*l_31) = (p_17 & (p_17 && l_1641));
            }
            for (p_2186->g_1241.f1 = 0; p_2186->g_1241.f1 < 10; p_2186->g_1241.f1 += 1)
            {
                for (p_2186->g_216.f2 = 0; p_2186->g_216.f2 < 9; p_2186->g_216.f2 += 1)
                {
                    for (p_2186->g_896 = 0; p_2186->g_896 < 2; p_2186->g_896 += 1)
                    {
                        p_2186->g_732[p_2186->g_1241.f1][p_2186->g_216.f2][p_2186->g_896] = &p_2186->g_94;
                    }
                }
            }
        }
        (*l_1645) = (*p_2186->g_1286);
    }
    return (*p_2186->g_541);
}


/* ------------------------------------------ */
/* 
 * reads : p_2186->g_541 p_2186->g_966 p_2186->g_666 p_2186->g_667 p_2186->g_668 p_2186->g_669 p_2186->g_670 p_2186->g_784 p_2186->g_785 p_2186->g_103 p_2186->g_958.f0 p_2186->g_8 p_2186->g_98 p_2186->g_158 p_2186->g_1241 p_2186->g_72 p_2186->g_80 p_2186->g_32 p_2186->g_6 p_2186->g_94 p_2186->g_96 p_2186->g_1252 p_2186->g_1264 p_2186->g_327 p_2186->g_1005 p_2186->g_896 p_2186->g_272 p_2186->g_170 p_2186->g_1287 p_2186->g_613 p_2186->g_648 p_2186->g_97 p_2186->g_116 p_2186->g_104 p_2186->g_143 p_2186->g_1286 p_2186->g_1369
 * writes: p_2186->g_158 p_2186->g_327 p_2186->g_670 p_2186->g_8 p_2186->g_96 p_2186->g_958.f0 p_2186->g_98 p_2186->g_871 p_2186->g_94 p_2186->g_216.f0 p_2186->g_170 p_2186->g_899.f4 p_2186->g_613 p_2186->g_408.f4 p_2186->g_1252.f2 p_2186->g_102 p_2186->g_104 p_2186->g_116 p_2186->g_134 p_2186->g_136 p_2186->g_1287
 */
uint8_t * func_33(uint8_t * p_34, int32_t * p_35, int32_t  p_36, struct S2 * p_2186)
{ /* block id: 722 */
    uint32_t l_1192 = 0xFDD7DC0DL;
    union U0 l_1205[2] = {{4294967295UL},{4294967295UL}};
    union U0 l_1210[7][1] = {{{0xA00491B0L}},{{0xA00491B0L}},{{0xA00491B0L}},{{0xA00491B0L}},{{0xA00491B0L}},{{0xA00491B0L}},{{0xA00491B0L}}};
    union U1 *l_1211 = &p_2186->g_216;
    uint64_t *l_1214 = (void*)0;
    uint64_t *l_1215 = &p_2186->g_96[2];
    int64_t l_1216 = 0x45739BDE66DA2502L;
    uint8_t *l_1222 = &p_2186->g_896;
    uint32_t l_1249 = 0x0003B101L;
    uint32_t l_1280 = 9UL;
    uint32_t l_1335 = 1UL;
    int32_t *l_1361 = &p_2186->g_170;
    uint16_t ****l_1374 = (void*)0;
    uint16_t ****l_1375[9];
    uint16_t ***l_1376 = &p_2186->g_462;
    int i, j;
    for (i = 0; i < 9; i++)
        l_1375[i] = (void*)0;
    (****p_2186->g_666) |= ((safe_mod_func_int32_t_s_s((l_1192 > ((safe_lshift_func_int16_t_s_s(((*p_2186->g_541) = (0x1C6E21862097F22DL != p_36)), (safe_sub_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(l_1192, FAKE_DIVERGE(p_2186->global_0_offset, get_global_id(0), 10))), (safe_rshift_func_uint8_t_u_s(0x5EL, 2)))))) >= 18446744073709551615UL)), 1L)) <= (safe_div_func_int8_t_s_s((((*p_2186->g_966) = (safe_add_func_uint16_t_u_u(p_36, (l_1205[0] , p_36)))) != l_1205[0].f0), l_1192)));
    (***p_2186->g_667) = ((0x0A27L >= (safe_rshift_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(2UL, ((*l_1215) = (l_1205[0].f0 || (((((l_1210[2][0] , ((l_1211 == (*p_2186->g_784)) || (!(0x9427L || 0x6E1CL)))) , (safe_rshift_func_int8_t_s_s((((*p_2186->g_103) = l_1210[2][0].f0) || p_36), p_36))) || p_36) < 0x4CL) < l_1205[0].f0))))), l_1216))) > 0x07L);
    for (p_2186->g_958.f0 = 0; (p_2186->g_958.f0 <= 2); p_2186->g_958.f0 += 1)
    { /* block id: 731 */
        union U0 l_1217[7] = {{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL}};
        uint8_t *l_1223 = &p_2186->g_8;
        union U1 *l_1261 = &p_2186->g_899;
        uint32_t *l_1340 = (void*)0;
        int64_t l_1352[5] = {0x192B0941E9897FC9L,0x192B0941E9897FC9L,0x192B0941E9897FC9L,0x192B0941E9897FC9L,0x192B0941E9897FC9L};
        int i;
        p_2186->g_98[p_2186->g_958.f0] = (l_1217[0] , (((((*p_2186->g_103) |= GROUP_DIVERGE(2, 1)) && ((safe_div_func_int64_t_s_s((0x2A2061A0L <= (safe_mod_func_int8_t_s_s(((l_1222 = (p_2186->g_98[p_2186->g_958.f0] , &p_2186->g_8)) != l_1223), p_2186->g_98[p_2186->g_958.f0]))), (safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(p_2186->g_98[p_2186->g_958.f0], (safe_mod_func_int16_t_s_s((p_36 != ((l_1210[2][0].f0 ^ l_1217[0].f0) == 0x00L)), (*p_2186->g_541))))), p_2186->g_98[p_2186->g_958.f0])), 12)))) , p_2186->g_98[p_2186->g_958.f0])) , (void*)0) == p_35));
        p_2186->g_98[p_2186->g_958.f0] |= 0x648AC13EL;
        (****p_2186->g_666) ^= 5L;
        for (p_2186->g_871 = 0; (p_2186->g_871 <= 0); p_2186->g_871 += 1)
        { /* block id: 739 */
            uint16_t l_1238 = 65532UL;
            union U1 *l_1262 = &p_2186->g_899;
            for (l_1216 = 0; (l_1216 >= 0); l_1216 -= 1)
            { /* block id: 742 */
                int32_t *l_1232 = (void*)0;
                int32_t *l_1233 = &p_2186->g_98[1];
                int32_t *l_1234 = &l_1217[0].f1;
                int32_t *l_1235 = &p_2186->g_32;
                int32_t *l_1236 = &p_2186->g_98[p_2186->g_958.f0];
                int32_t *l_1237[7] = {&p_2186->g_613,&p_2186->g_98[1],&p_2186->g_613,&p_2186->g_613,&p_2186->g_98[1],&p_2186->g_613,&p_2186->g_613};
                uint8_t *l_1242 = &p_2186->g_8;
                union U0 l_1245 = {0x49F7D43EL};
                int32_t **l_1246 = &l_1236;
                union U1 **l_1263 = &l_1262;
                int i;
                l_1238++;
                (*l_1246) = (p_2186->g_1241 , func_62((*p_2186->g_103), l_1242, &p_36, (safe_mul_func_int16_t_s_s((+(l_1245 , 0x391CL)), 0x4D72L)), (((void*)0 == (*p_2186->g_784)) , l_1238), p_2186));
                (*p_2186->g_669) = (safe_lshift_func_uint16_t_u_s(((l_1249 , p_36) , 0x4E8BL), (safe_rshift_func_int8_t_s_s((p_2186->g_98[p_2186->g_958.f0] & (((((p_2186->g_1252 , ((0x4F12L && (safe_sub_func_uint8_t_u_u((((safe_add_func_int8_t_s_s((((safe_lshift_func_int16_t_s_u(((safe_lshift_func_uint8_t_u_s(p_36, ((l_1261 == ((*l_1263) = l_1262)) , l_1249))) | (*l_1236)), 14)) < 0x61L) , l_1238), GROUP_DIVERGE(1, 1))) <= (-1L)) > p_36), p_36))) , 0x3FDFF49659588EC1L)) ^ 5UL) == p_2186->g_1264[1]) == 0UL) || FAKE_DIVERGE(p_2186->global_0_offset, get_global_id(0), 10))), l_1216))));
            }
        }
        for (p_2186->g_216.f0 = 0; (p_2186->g_216.f0 <= 0); p_2186->g_216.f0 += 1)
        { /* block id: 751 */
            uint8_t l_1288[6] = {0x65L,0x65L,0x65L,0x65L,0x65L,0x65L};
            int32_t l_1300 = (-6L);
            int32_t l_1306 = 0x2CDEF63EL;
            int32_t l_1308 = (-9L);
            uint16_t l_1334 = 5UL;
            int i;
            for (p_2186->g_170 = 0; (p_2186->g_170 >= 0); p_2186->g_170 -= 1)
            { /* block id: 754 */
                int16_t l_1279 = 4L;
                int32_t l_1298 = 6L;
                int32_t l_1307[8][3][6] = {{{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L}},{{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L}},{{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L}},{{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L}},{{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L}},{{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L}},{{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L}},{{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L},{0x414F1B77L,0L,0L,0x5F9CE3EEL,0x71653F8DL,0x07C2B808L}}};
                int i, j, k;
                for (p_2186->g_899.f4 = 0; (p_2186->g_899.f4 <= 0); p_2186->g_899.f4 += 1)
                { /* block id: 757 */
                    return l_1223;
                }
            }
            (*p_2186->g_1287) |= (safe_mod_func_uint32_t_u_u(((safe_add_func_int16_t_s_s((-1L), (safe_sub_func_int32_t_s_s((safe_add_func_int8_t_s_s((0xD830L >= (((((*p_2186->g_966) = ((safe_sub_func_int32_t_s_s(((*p_35) = (l_1288[5] <= p_36)), (safe_sub_func_int64_t_s_s(l_1288[5], (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s(0x2C82L, (safe_mul_func_int16_t_s_s(l_1288[5], ((~(l_1288[5] ^ (safe_lshift_func_int16_t_s_u(((safe_add_func_int64_t_s_s((l_1334 , (*p_2186->g_966)), p_36)) , l_1192), 11)))) <= 1UL))))), 2)))))) == p_2186->g_1005[4])) > l_1217[0].f0) | p_36) & l_1334)), p_2186->g_896)), l_1205[0].f0)))) && l_1335), (*p_2186->g_272)));
            for (p_2186->g_408.f4 = 0; (p_2186->g_408.f4 >= 0); p_2186->g_408.f4 -= 1)
            { /* block id: 780 */
                uint32_t l_1358 = 4294967295UL;
                int32_t **l_1362 = (void*)0;
                int32_t **l_1363[6] = {&l_1361,&l_1361,&l_1361,&l_1361,&l_1361,&l_1361};
                int i;
                (*p_35) |= (-1L);
                (****p_2186->g_666) = ((safe_mod_func_int64_t_s_s(((safe_lshift_func_int16_t_s_u(p_36, ((((*p_2186->g_966) = ((void*)0 != l_1340)) && p_36) > (&p_2186->g_462 != (void*)0)))) , (safe_div_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(p_36, (safe_mul_func_int8_t_s_s((safe_add_func_uint32_t_u_u((safe_unary_minus_func_uint32_t_u((safe_add_func_int64_t_s_s(0x6EA6104C4A3006E8L, p_36)))), (*p_2186->g_648))), FAKE_DIVERGE(p_2186->group_2_offset, get_group_id(2), 10))))), l_1352[2]))), p_36)) , p_2186->g_98[p_2186->g_958.f0]);
                for (p_2186->g_1252.f2 = 0; (p_2186->g_1252.f2 >= 0); p_2186->g_1252.f2 -= 1)
                { /* block id: 786 */
                    int32_t *l_1353 = &p_2186->g_98[2];
                    int32_t l_1354 = 0x4A24C068L;
                    int32_t *l_1355 = &p_2186->g_170;
                    int32_t *l_1356 = &l_1300;
                    int32_t *l_1357[10][6][3] = {{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}},{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}},{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}},{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}},{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}},{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}},{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}},{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}},{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}},{{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]},{&p_2186->g_613,(void*)0,&p_2186->g_98[p_2186->g_958.f0]}}};
                    int i, j, k;
                    ++l_1358;
                }
                (*p_2186->g_1286) = func_60(func_60(l_1361, p_2186), p_2186);
            }
            (***p_2186->g_667) = (((*p_35) , (safe_unary_minus_func_int32_t_s((l_1288[0] , ((((safe_mod_func_uint32_t_u_u((l_1217[1] , 4294967295UL), p_2186->g_98[p_2186->g_958.f0])) != ((*l_1215) ^= (safe_mul_func_int32_t_s_s((p_2186->g_1369 , (safe_add_func_uint32_t_u_u(p_36, l_1288[3]))), (p_34 != l_1223))))) < 0x48E529D9C6D1B040L) >= p_36))))) , 1L);
        }
    }
    (*p_2186->g_669) &= ((*l_1361) = (safe_lshift_func_int8_t_s_u(((l_1376 = &p_2186->g_462) == (void*)0), 4)));
    return l_1222;
}


/* ------------------------------------------ */
/* 
 * reads : p_2186->g_613 p_2186->g_136 p_2186->g_96 p_2186->g_666 p_2186->g_667 p_2186->g_668 p_2186->g_669 p_2186->g_670 p_2186->g_170 p_2186->g_784 p_2186->g_646 p_2186->g_49 p_2186->g_32 p_2186->g_97 p_2186->g_98 p_2186->g_8 p_2186->g_822 p_2186->g_143 p_2186->g_701 p_2186->g_702 p_2186->g_116 p_2186->g_785 p_2186->g_581 p_2186->g_103 p_2186->g_158 p_2186->g_871 p_2186->g_6 p_2186->g_648 p_2186->g_72 p_2186->g_80 p_2186->g_94 p_2186->g_877 p_2186->g_896 p_2186->g_134 p_2186->g_899 p_2186->g_918 p_2186->g_664 p_2186->g_581.f0 p_2186->g_408.f4 p_2186->g_663 p_2186->g_929 p_2186->g_327 p_2186->g_251 p_2186->g_541 p_2186->g_958 p_2186->g_965 p_2186->g_1005 p_2186->g_190
 * writes: p_2186->g_613 p_2186->g_136 p_2186->g_670 p_2186->g_170 p_2186->g_72 p_2186->g_158 p_2186->g_32 p_2186->g_686 p_2186->g_785 p_2186->g_646 p_2186->g_731 p_2186->g_94 p_2186->g_190 p_2186->g_854 p_2186->g_871 p_2186->g_96 p_2186->g_327 p_2186->g_408.f4 p_2186->g_8 p_2186->g_116 p_2186->g_965 p_2186->g_269 p_2186->g_169 p_2186->g_1005 p_2186->g_1020 p_2186->g_899.f2 p_2186->g_98 p_2186->g_49
 */
int32_t * func_38(int32_t  p_39, uint8_t * p_40, int32_t * p_41, struct S2 * p_2186)
{ /* block id: 382 */
    uint64_t l_798 = 1UL;
    int32_t l_808 = 0x04AE334EL;
    int64_t *l_809[2];
    int32_t l_811 = 0x2E6708B8L;
    int32_t l_813 = (-1L);
    uint8_t l_825 = 8UL;
    int64_t l_830 = 0x4C94B606311F93C5L;
    uint16_t ***l_861 = &p_2186->g_462;
    uint8_t l_874 = 0xA2L;
    union U0 *l_905[3][9] = {{&p_2186->g_251,&p_2186->g_251,&p_2186->g_251,&p_2186->g_251,(void*)0,&p_2186->g_251,(void*)0,&p_2186->g_251,(void*)0},{&p_2186->g_251,&p_2186->g_251,&p_2186->g_251,&p_2186->g_251,(void*)0,&p_2186->g_251,(void*)0,&p_2186->g_251,(void*)0},{&p_2186->g_251,&p_2186->g_251,&p_2186->g_251,&p_2186->g_251,(void*)0,&p_2186->g_251,(void*)0,&p_2186->g_251,(void*)0}};
    int16_t l_912[10] = {(-10L),(-1L),(-10L),(-10L),(-1L),(-10L),(-10L),(-1L),(-10L),(-10L)};
    int64_t **l_928 = &l_809[0];
    int16_t l_955[2][8] = {{0x7B70L,0x209EL,0x7B70L,0x7B70L,0x209EL,0x7B70L,0x7B70L,0x209EL},{0x7B70L,0x209EL,0x7B70L,0x7B70L,0x209EL,0x7B70L,0x7B70L,0x209EL}};
    int i, j;
    for (i = 0; i < 2; i++)
        l_809[i] = &p_2186->g_327;
    for (p_2186->g_613 = 0; (p_2186->g_613 <= 9); p_2186->g_613 += 1)
    { /* block id: 385 */
        int64_t l_783[6][5] = {{0x050E3CBD7B895C53L,0x050E3CBD7B895C53L,(-1L),0x4ABE661F542CDB76L,(-1L)},{0x050E3CBD7B895C53L,0x050E3CBD7B895C53L,(-1L),0x4ABE661F542CDB76L,(-1L)},{0x050E3CBD7B895C53L,0x050E3CBD7B895C53L,(-1L),0x4ABE661F542CDB76L,(-1L)},{0x050E3CBD7B895C53L,0x050E3CBD7B895C53L,(-1L),0x4ABE661F542CDB76L,(-1L)},{0x050E3CBD7B895C53L,0x050E3CBD7B895C53L,(-1L),0x4ABE661F542CDB76L,(-1L)},{0x050E3CBD7B895C53L,0x050E3CBD7B895C53L,(-1L),0x4ABE661F542CDB76L,(-1L)}};
        int i, j;
        for (p_2186->g_136 = 7; (p_2186->g_136 >= 1); p_2186->g_136 -= 1)
        { /* block id: 388 */
            int i;
            if ((p_2186->g_96[p_2186->g_136] || (-2L)))
            { /* block id: 389 */
                if ((****p_2186->g_666))
                    break;
            }
            else
            { /* block id: 391 */
                if ((atomic_inc(&p_2186->g_atomic_input[56 * get_linear_group_id() + 50]) == 1))
                { /* block id: 393 */
                    int16_t l_750 = 0x62B4L;
                    int32_t l_751 = 0x5E58E1E1L;
                    uint8_t l_765 = 255UL;
                    int32_t l_766[7];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_766[i] = 0x117E833BL;
                    if ((l_751 = (l_750 &= 1L)))
                    { /* block id: 396 */
                        int32_t l_752 = 0x7095BA9EL;
                        uint32_t l_753 = 4294967289UL;
                        int8_t l_754 = 0x33L;
                        uint64_t *l_756[5];
                        uint64_t **l_755[3][2] = {{&l_756[0],&l_756[0]},{&l_756[0],&l_756[0]},{&l_756[0],&l_756[0]}};
                        int64_t l_757 = 1L;
                        int32_t l_758 = 0x1ADE2B11L;
                        int32_t l_759 = 0x17FE9A05L;
                        uint32_t l_760 = 8UL;
                        int i, j;
                        for (i = 0; i < 5; i++)
                            l_756[i] = (void*)0;
                        l_753 &= l_752;
                        l_751 &= l_754;
                        l_755[2][1] = (void*)0;
                        l_760--;
                    }
                    else
                    { /* block id: 401 */
                        int64_t l_763 = 0x771B50A30E411878L;
                        int32_t l_764 = 1L;
                        l_751 = l_763;
                        l_751 = l_764;
                    }
                    if ((l_766[5] = l_765))
                    { /* block id: 406 */
                        int32_t l_768 = 0x5C448F97L;
                        int32_t *l_767 = &l_768;
                        l_767 = (void*)0;
                    }
                    else
                    { /* block id: 408 */
                        int64_t l_769 = 4L;
                        int32_t l_770 = 0L;
                        int16_t l_771 = 0x5414L;
                        int8_t l_772[5];
                        uint16_t l_773 = 65527UL;
                        int32_t l_777 = 0x5C2A1B99L;
                        int32_t *l_776 = &l_777;
                        int32_t *l_778[9] = {&l_777,&l_777,&l_777,&l_777,&l_777,&l_777,&l_777,&l_777,&l_777};
                        int32_t l_779 = 1L;
                        uint16_t l_780 = 0x6A62L;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_772[i] = 0x7DL;
                        l_773--;
                        l_778[2] = ((l_751 = 0x339B4DD1L) , (l_776 = (void*)0));
                        l_751 = (-1L);
                        --l_780;
                    }
                    unsigned int result = 0;
                    result += l_750;
                    result += l_751;
                    result += l_765;
                    int l_766_i0;
                    for (l_766_i0 = 0; l_766_i0 < 7; l_766_i0++) {
                        result += l_766[l_766_i0];
                    }
                    atomic_add(&p_2186->g_special_values[56 * get_linear_group_id() + 50], result);
                }
                else
                { /* block id: 416 */
                    (1 + 1);
                }
                (***p_2186->g_667) ^= 1L;
            }
            for (p_2186->g_170 = 7; (p_2186->g_170 >= 0); p_2186->g_170 -= 1)
            { /* block id: 423 */
                for (p_2186->g_72 = 0; p_2186->g_72 < 3; p_2186->g_72 += 1)
                {
                    for (p_2186->g_158 = 0; p_2186->g_158 < 4; p_2186->g_158 += 1)
                    {
                        for (p_2186->g_32 = 0; p_2186->g_32 < 1; p_2186->g_32 += 1)
                        {
                            p_2186->g_686[p_2186->g_72][p_2186->g_158][p_2186->g_32] = 0x4735L;
                        }
                    }
                }
                if (l_783[5][0])
                    break;
                (*p_2186->g_784) = &p_2186->g_581;
            }
            return &p_2186->g_613;
        }
    }
    for (p_2186->g_646 = 0; (p_2186->g_646 >= 3); p_2186->g_646 = safe_add_func_uint8_t_u_u(p_2186->g_646, 8))
    { /* block id: 433 */
        uint32_t **l_805 = &p_2186->g_732[7][2][0];
        int32_t l_810 = 2L;
        int32_t l_812 = 0L;
        uint16_t ***l_860 = &p_2186->g_462;
        int64_t **l_882 = &l_809[0];
        union U0 *l_902 = &p_2186->g_251;
        uint64_t *l_980 = &l_798;
        if (((((safe_add_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((l_798 = 65535UL), ((safe_sub_func_int64_t_s_s((safe_mod_func_uint16_t_u_u(((safe_mod_func_int64_t_s_s((&p_2186->g_732[7][2][0] != (p_2186->g_731 = l_805)), (+(l_811 = (l_808 = (safe_sub_func_int64_t_s_s(l_808, (l_810 = ((void*)0 == l_809[0]))))))))) && GROUP_DIVERGE(2, 1)), l_812)), 1UL)) , l_812))), 4)) == l_813) , l_810), l_813)), l_812)), 0L)) > p_39) < l_812) < p_2186->g_49[0]))
        { /* block id: 439 */
            uint32_t l_824 = 4294967295UL;
            int32_t *l_840[1];
            int32_t l_855 = 0x45B9AE01L;
            uint16_t ***l_862 = &p_2186->g_462;
            uint32_t ***l_873 = (void*)0;
            uint8_t ***l_898[5];
            uint8_t ****l_897 = &l_898[0];
            int i;
            for (i = 0; i < 1; i++)
                l_840[i] = (void*)0;
            for (i = 0; i < 5; i++)
                l_898[i] = &p_2186->g_102;
            if ((((safe_add_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u((((*p_41) == (*p_2186->g_97)) != ((p_39 <= ((((p_2186->g_8 || p_39) <= p_39) & ((((safe_add_func_uint32_t_u_u((p_2186->g_822[1] != &p_2186->g_823), l_824)) | 0L) && l_825) > (*p_41))) > p_2186->g_143)) || (-1L))), 0x16L)), l_824)) < 2L) , (*p_41)))
            { /* block id: 440 */
                uint8_t l_839[7] = {0x6BL,0x6BL,0x6BL,0x6BL,0x6BL,0x6BL,0x6BL};
                int32_t **l_841 = &p_2186->g_190;
                int i;
                if ((*p_41))
                { /* block id: 441 */
                    (****p_2186->g_666) = ((*p_41) = ((safe_rshift_func_uint16_t_u_u((safe_div_func_int64_t_s_s(l_813, 8UL)), FAKE_DIVERGE(p_2186->global_0_offset, get_global_id(0), 10))) <= l_830));
                    if ((atomic_inc(&p_2186->l_atomic_input[25]) == 8))
                    { /* block id: 445 */
                        int32_t l_831 = (-1L);
                        uint32_t l_832 = 0x3BC0464CL;
                        int16_t l_833 = 0L;
                        int8_t l_834[8][8][4] = {{{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L}},{{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L}},{{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L}},{{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L}},{{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L}},{{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L}},{{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L}},{{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L},{0x1CL,0x7CL,3L,0x36L}}};
                        uint8_t l_835 = 246UL;
                        int32_t l_836 = 6L;
                        uint32_t l_837 = 0UL;
                        uint32_t l_838[7][1] = {{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}};
                        int i, j, k;
                        l_833 = (l_832 = l_831);
                        l_835 = l_834[3][5][1];
                        l_836 = 0x71435C54L;
                        l_838[4][0] = l_837;
                        unsigned int result = 0;
                        result += l_831;
                        result += l_832;
                        result += l_833;
                        int l_834_i0, l_834_i1, l_834_i2;
                        for (l_834_i0 = 0; l_834_i0 < 8; l_834_i0++) {
                            for (l_834_i1 = 0; l_834_i1 < 8; l_834_i1++) {
                                for (l_834_i2 = 0; l_834_i2 < 4; l_834_i2++) {
                                    result += l_834[l_834_i0][l_834_i1][l_834_i2];
                                }
                            }
                        }
                        result += l_835;
                        result += l_836;
                        result += l_837;
                        int l_838_i0, l_838_i1;
                        for (l_838_i0 = 0; l_838_i0 < 7; l_838_i0++) {
                            for (l_838_i1 = 0; l_838_i1 < 1; l_838_i1++) {
                                result += l_838[l_838_i0][l_838_i1];
                            }
                        }
                        atomic_add(&p_2186->l_special_values[25], result);
                    }
                    else
                    { /* block id: 451 */
                        (1 + 1);
                    }
                }
                else
                { /* block id: 454 */
                    (*p_41) &= ((l_810 = ((**p_2186->g_701) = l_839[0])) || (****p_2186->g_666));
                }
                (*l_841) = l_840[0];
            }
            else
            { /* block id: 461 */
                int16_t l_867 = (-1L);
                uint16_t ***l_884 = &p_2186->g_462;
                if ((safe_rshift_func_int8_t_s_s(p_2186->g_116, 6)))
                { /* block id: 462 */
                    int64_t l_868[6] = {0x2BAF9344D06FDEAAL,1L,0x2BAF9344D06FDEAAL,0x2BAF9344D06FDEAAL,1L,0x2BAF9344D06FDEAAL};
                    uint16_t *l_869 = (void*)0;
                    uint16_t *l_870 = &p_2186->g_871;
                    int32_t l_872 = (-7L);
                    int32_t **l_875 = &l_840[0];
                    int i;
                    (****p_2186->g_666) = ((safe_sub_func_uint64_t_u_u(0UL, ((safe_mod_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(((p_2186->g_854[0][0] = &l_805) != ((~(l_855 & ((**p_2186->g_701) = ((((safe_add_func_uint16_t_u_u((l_872 &= ((*l_870) ^= ((((safe_add_func_uint16_t_u_u(0x0015L, ((l_861 = l_860) != l_862))) | l_808) | ((safe_lshift_func_uint16_t_u_s(((((((((safe_mul_func_int8_t_s_s((p_39 || ((**p_2186->g_784) , p_39)), l_867)) , l_868[2]) != p_39) && (-2L)) <= p_39) <= p_39) | (*p_2186->g_103)) >= (-1L)), 3)) || p_2186->g_158)) & p_2186->g_116))), l_868[2])) != p_2186->g_49[0]) || p_39) && p_39)))) , l_873)), 2)), l_874)) | p_2186->g_96[0]), p_39)), 0xB4147E7156FF12E5L)) <= p_2186->g_6))) == p_39);
                    if ((*p_2186->g_648))
                        break;
                    (*l_875) = &l_810;
                }
                else
                { /* block id: 471 */
                    uint32_t l_876 = 1UL;
                    int64_t **l_883 = &l_809[0];
                    uint16_t ****l_885 = &l_860;
                    (*p_2186->g_877) = func_62(l_876, p_40, p_41, p_39, l_810, p_2186);
                    (*p_2186->g_669) = (((**p_2186->g_701) = (safe_mod_func_int64_t_s_s((safe_sub_func_uint64_t_u_u(((l_882 != l_883) , (((*l_885) = l_884) == &p_2186->g_462)), p_39)), p_39))) ^ (safe_sub_func_uint32_t_u_u((18446744073709551609UL | ((**l_883) = l_867)), (safe_add_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2186->local_0_offset, get_local_id(0), 10), ((safe_lshift_func_int8_t_s_s(((((*p_41) &= (l_812 , l_876)) & p_2186->g_896) , l_867), 6)) != p_2186->g_134))), p_39)) || p_2186->g_896) == FAKE_DIVERGE(p_2186->group_1_offset, get_group_id(1), 10)), 255UL)))));
                }
            }
            (****p_2186->g_666) = (((*l_897) = &p_2186->g_104) == (p_2186->g_899 , &p_2186->g_104));
            for (l_855 = 0; (l_855 > 22); ++l_855)
            { /* block id: 484 */
                union U0 **l_903[3];
                int32_t l_904 = 0x19E063A4L;
                int i;
                for (i = 0; i < 3; i++)
                    l_903[i] = &l_902;
                l_902 = l_902;
                (***p_2186->g_667) = (l_904 && 0x62L);
            }
        }
        else
        { /* block id: 488 */
            uint64_t l_913 = 8UL;
            uint8_t *l_914 = (void*)0;
            uint8_t *l_915 = &l_825;
            l_905[1][4] = l_905[1][0];
            (*p_2186->g_669) = ((safe_div_func_int16_t_s_s(((*p_2186->g_103) <= (safe_sub_func_int32_t_s_s((safe_sub_func_uint16_t_u_u(l_912[4], p_39)), (l_913 > (p_39 >= p_39))))), 2UL)) > (!(((++(*l_915)) | ((p_2186->g_918 <= ((((*p_2186->g_667) == (void*)0) > p_39) <= 0x2FL)) , l_830)) & (*p_2186->g_664))));
            if (l_913)
                break;
        }
        for (p_2186->g_32 = 28; (p_2186->g_32 != (-20)); p_2186->g_32 = safe_sub_func_uint64_t_u_u(p_2186->g_32, 7))
        { /* block id: 496 */
            int32_t *l_921 = &p_2186->g_613;
            return l_921;
        }
        for (p_2186->g_408.f4 = 8; (p_2186->g_408.f4 >= 2); p_2186->g_408.f4 -= 1)
        { /* block id: 501 */
            uint32_t l_934 = 0x76F94052L;
            uint8_t ***l_985[7] = {&p_2186->g_104,&p_2186->g_104,&p_2186->g_104,&p_2186->g_104,&p_2186->g_104,&p_2186->g_104,&p_2186->g_104};
            int32_t l_990 = 0x32BCE2F3L;
            int32_t l_991 = 0x689EB205L;
            int32_t l_993 = 0x06C074E1L;
            int i;
            (*p_2186->g_929) = func_62(l_912[p_2186->g_408.f4], p_40, p_41, ((((safe_lshift_func_int8_t_s_u(((0x13F1944A912B7400L | ((**l_882) = l_812)) , p_39), (((safe_div_func_uint32_t_u_u((((safe_rshift_func_uint8_t_u_u((**p_2186->g_663), 4)) , 0x3A3A79BDL) , (*p_2186->g_702)), 1L)) & p_39) , 0UL))) ^ 1L) , l_928) == (void*)0), l_798, p_2186);
            (*p_2186->g_669) |= (safe_mod_func_int16_t_s_s(1L, p_39));
            if ((((p_2186->g_327 >= ((((((*p_2186->g_541) = ((safe_rshift_func_int8_t_s_u(l_934, 7)) == (safe_rshift_func_int16_t_s_s(((safe_div_func_uint8_t_u_u(((*p_2186->g_103) ^= (((l_912[p_2186->g_408.f4] < 0x7F782945L) > (safe_sub_func_uint8_t_u_u(l_810, (safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_2186->local_1_offset, get_local_id(1), 10), (safe_sub_func_int16_t_s_s((p_2186->g_251 , (*p_2186->g_541)), (l_812 = ((((((safe_sub_func_uint64_t_u_u(18446744073709551612UL, ((((safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_mod_func_int32_t_s_s(((safe_mul_func_int8_t_s_s(0x27L, l_912[p_2186->g_408.f4])) != p_2186->g_871), 0x076ACE30L)), l_912[7])), l_810)) & 4UL) <= 0x10L) , 0x0EB74BFAF81A1C17L))) ^ 0x5784B3FFL) && p_2186->g_871) <= l_912[p_2186->g_408.f4]) != p_39) != p_2186->g_49[0]))))))))) != GROUP_DIVERGE(0, 1))), 1UL)) & 0x9AL), p_39)))) > 0x41F2L) == l_955[0][5]) || p_39) , l_934)) || p_2186->g_581.f0) >= l_810))
            { /* block id: 508 */
                int64_t **l_967 = &l_809[1];
                uint64_t l_972[3][9][4] = {{{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL}},{{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL}},{{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL},{0UL,2UL,0UL,0xF02F6E982EC1144EL}}};
                int32_t l_992[10] = {0x072F1BA5L,0x0AEB4F57L,1L,0x0AEB4F57L,0x072F1BA5L,0x072F1BA5L,0x0AEB4F57L,1L,0x0AEB4F57L,0x072F1BA5L};
                int i, j, k;
                for (p_2186->g_116 = 0; (p_2186->g_116 <= 2); p_2186->g_116 += 1)
                { /* block id: 511 */
                    uint32_t l_973 = 4294967295UL;
                    int32_t l_994 = 0x6EFFEC19L;
                    uint64_t l_995 = 0x9C8B94FE420C48FFL;
                    for (p_2186->g_8 = 0; (p_2186->g_8 <= 9); p_2186->g_8 += 1)
                    { /* block id: 514 */
                        int32_t *l_974 = &p_2186->g_251.f1;
                        int32_t l_975 = (-3L);
                        int i, j;
                        l_975 &= ((safe_div_func_uint64_t_u_u((p_2186->g_958 , ((((65535UL == ((safe_lshift_func_int8_t_s_s(p_2186->g_49[p_2186->g_116], ((safe_sub_func_uint16_t_u_u((p_2186->g_49[p_2186->g_116] != ((p_2186->g_965[6][6][2] = p_2186->g_965[3][1][0]) != l_967)), (l_912[p_2186->g_408.f4] < (((((safe_div_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((l_912[p_2186->g_8] <= p_39) < l_972[0][6][0]), (*p_41))), p_39)) == 0x6CL) , p_41) != (void*)0) , l_973)))) ^ l_811))) != (**p_2186->g_663))) , 7L) > l_934) == l_912[p_2186->g_408.f4])), l_912[p_2186->g_8])) , l_812);
                        if ((*p_41))
                            break;
                    }
                    if ((*p_41))
                        continue;
                    for (p_2186->g_269 = 7; (p_2186->g_269 >= 0); p_2186->g_269 -= 1)
                    { /* block id: 522 */
                        int32_t *l_988 = &p_2186->g_899.f2;
                        int32_t *l_989[3];
                        uint64_t *l_1002 = (void*)0;
                        uint32_t *l_1003 = (void*)0;
                        uint32_t *l_1004 = (void*)0;
                        int64_t *l_1019[4][8] = {{(void*)0,&p_2186->g_1020,(void*)0,&p_2186->g_1020,(void*)0,(void*)0,&p_2186->g_1020,(void*)0},{(void*)0,&p_2186->g_1020,(void*)0,&p_2186->g_1020,(void*)0,(void*)0,&p_2186->g_1020,(void*)0},{(void*)0,&p_2186->g_1020,(void*)0,&p_2186->g_1020,(void*)0,(void*)0,&p_2186->g_1020,(void*)0},{(void*)0,&p_2186->g_1020,(void*)0,&p_2186->g_1020,(void*)0,(void*)0,&p_2186->g_1020,(void*)0}};
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_989[i] = &p_2186->g_899.f2;
                        p_2186->g_169[(p_2186->g_116 + 4)] = p_41;
                        (*p_41) &= (safe_add_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2186->group_0_offset, get_group_id(0), 10), (l_980 == &l_798))), ((((1UL != 0L) , (safe_lshift_func_int8_t_s_u((p_39 & (l_973 < (safe_lshift_func_int16_t_s_s((l_985[3] != ((safe_mul_func_uint16_t_u_u(1UL, 0x6A8BL)) , l_985[3])), 13)))), 7))) , 0x24L) || GROUP_DIVERGE(1, 1))));
                        l_995--;
                        (*p_2186->g_190) = (safe_mod_func_int16_t_s_s((0x86A8L != ((((**p_2186->g_701) = ((safe_sub_func_int32_t_s_s((((p_2186->g_1005[4] &= ((l_1002 = &p_2186->g_96[4]) != &l_995)) , ((*l_988) = (p_39 >= (safe_mul_func_int8_t_s_s(((p_2186->g_1020 = (safe_mod_func_uint32_t_u_u(((safe_unary_minus_func_int32_t_s((safe_sub_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_s(249UL, 3)) < ((safe_add_func_uint8_t_u_u((**p_2186->g_663), 0x83L)) & ((safe_mod_func_int32_t_s_s((l_811 &= (*p_41)), (*p_41))) == l_912[p_2186->g_408.f4]))) , 0xC185L), l_912[6])))) | l_990), 0xFC11E5FEL))) , l_993), (-5L)))))) ^ 0L), l_973)) >= p_39)) == (*p_2186->g_190)) , (*p_2186->g_541))), l_812));
                    }
                }
                if (l_955[0][5])
                    break;
            }
            else
            { /* block id: 536 */
                (*p_2186->g_97) = (-1L);
            }
        }
    }
    if ((atomic_inc(&p_2186->l_atomic_input[2]) == 9))
    { /* block id: 542 */
        int32_t l_1022[2];
        int32_t *l_1021 = &l_1022[1];
        int32_t *l_1023 = &l_1022[1];
        uint32_t l_1024 = 0xFD0D7D4BL;
        uint32_t l_1025 = 0xECC0B526L;
        int i;
        for (i = 0; i < 2; i++)
            l_1022[i] = 0x1D6E66CEL;
        l_1023 = l_1021;
        if ((l_1024 , (l_1025 ^= 0L)))
        { /* block id: 545 */
            int16_t l_1026[9][2] = {{0x1156L,0x1156L},{0x1156L,0x1156L},{0x1156L,0x1156L},{0x1156L,0x1156L},{0x1156L,0x1156L},{0x1156L,0x1156L},{0x1156L,0x1156L},{0x1156L,0x1156L},{0x1156L,0x1156L}};
            int32_t l_1027 = 0x4FE9273FL;
            int64_t l_1028 = 0x4D3B991CBBCF94BFL;
            int32_t l_1029 = 0x68785C80L;
            int8_t l_1030 = (-1L);
            int16_t l_1031 = 0x0C62L;
            uint32_t l_1032[7];
            int i, j;
            for (i = 0; i < 7; i++)
                l_1032[i] = 1UL;
            l_1032[1]--;
            for (l_1028 = 0; (l_1028 <= 23); l_1028 = safe_add_func_uint16_t_u_u(l_1028, 8))
            { /* block id: 549 */
                int32_t l_1037 = 0x49D62A41L;
                int64_t l_1038 = 1L;
                (1 + 1);
            }
            for (l_1027 = (-6); (l_1027 == (-5)); ++l_1027)
            { /* block id: 580 */
                int32_t l_1057[2][1][6] = {{{1L,7L,1L,1L,7L,1L}},{{1L,7L,1L,1L,7L,1L}}};
                int i, j, k;
                (*l_1023) = l_1057[0][0][0];
                for (l_1057[0][0][0] = 0; (l_1057[0][0][0] <= 10); l_1057[0][0][0]++)
                { /* block id: 584 */
                    int64_t l_1060 = 0x02A8FF42BFEC92F0L;
                    uint32_t l_1078 = 0xB21D5BCAL;
                    int32_t l_1079 = (-1L);
                    int16_t l_1080 = 0x460BL;
                    uint32_t l_1081 = 4294967286UL;
                    (1 + 1);
                }
                for (l_1057[1][0][4] = 0; (l_1057[1][0][4] < 22); l_1057[1][0][4] = safe_add_func_int8_t_s_s(l_1057[1][0][4], 7))
                { /* block id: 606 */
                    int32_t l_1084[2][9][5] = {{{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L}},{{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L},{0x41867654L,1L,1L,1L,0x41867654L}}};
                    union U1 l_1093[4][2] = {{{0UL},{251UL}},{{0UL},{251UL}},{{0UL},{251UL}},{{0UL},{251UL}}};
                    int32_t l_1094 = 1L;
                    union U1 *l_1095 = &l_1093[3][1];
                    int i, j, k;
                    for (l_1084[1][8][3] = 0; (l_1084[1][8][3] > (-19)); l_1084[1][8][3]--)
                    { /* block id: 609 */
                        int8_t l_1087[5][9][3] = {{{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)}},{{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)}},{{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)}},{{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)}},{{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)},{4L,(-1L),(-1L)}}};
                        uint64_t l_1088 = 18446744073709551612UL;
                        union U1 l_1092 = {1UL};/* VOLATILE GLOBAL l_1092 */
                        union U1 *l_1091[3][7] = {{&l_1092,&l_1092,&l_1092,&l_1092,&l_1092,&l_1092,&l_1092},{&l_1092,&l_1092,&l_1092,&l_1092,&l_1092,&l_1092,&l_1092},{&l_1092,&l_1092,&l_1092,&l_1092,&l_1092,&l_1092,&l_1092}};
                        int i, j, k;
                        ++l_1088;
                        l_1091[2][4] = (void*)0;
                    }
                    l_1095 = ((l_1093[0][0] , l_1094) , (void*)0);
                }
                for (l_1057[1][0][1] = 2; (l_1057[1][0][1] >= 0); l_1057[1][0][1] -= 1)
                { /* block id: 617 */
                    union U1 l_1105 = {0x14L};/* VOLATILE GLOBAL l_1105 */
                    union U1 *l_1104[7] = {&l_1105,&l_1105,&l_1105,&l_1105,&l_1105,&l_1105,&l_1105};
                    int i;
                    (*l_1023) |= p_2186->g_49[l_1057[1][0][1]];
                    for (p_2186->g_49[l_1057[1][0][1]] = 1; (p_2186->g_49[l_1057[1][0][1]] >= 0); p_2186->g_49[l_1057[1][0][1]] -= 1)
                    { /* block id: 621 */
                        int32_t l_1096 = 0L;
                        int16_t l_1097[2];
                        uint8_t l_1098 = 0x0BL;
                        union U1 l_1102 = {1UL};/* VOLATILE GLOBAL l_1102 */
                        union U1 *l_1101[1];
                        union U1 *l_1103 = &l_1102;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1097[i] = 0x3A66L;
                        for (i = 0; i < 1; i++)
                            l_1101[i] = &l_1102;
                        l_1098--;
                        l_1103 = l_1101[0];
                    }
                    l_1104[1] = (void*)0;
                    for (l_1105.f1 = 0; (l_1105.f1 <= 2); l_1105.f1 += 1)
                    { /* block id: 628 */
                        int8_t l_1106 = 0x44L;
                        uint32_t l_1107 = 4294967288UL;
                        int16_t l_1108 = (-5L);
                        union U1 l_1109 = {247UL};/* VOLATILE GLOBAL l_1109 */
                        uint8_t l_1110 = 0x34L;
                        int i;
                        (*l_1021) = ((l_1108 &= (l_1107 |= (l_1106 &= (p_2186->g_49[l_1057[1][0][1]] , 0x0C80384DB546EDFDL)))) , ((p_2186->g_49[l_1057[1][0][1]] , (l_1109 , p_2186->g_49[l_1057[1][0][1]])) , (-1L)));
                        (*l_1023) = 1L;
                        l_1110--;
                    }
                }
            }
        }
        else
        { /* block id: 638 */
            union U1 *l_1113 = (void*)0;
            union U1 l_1115 = {6UL};/* VOLATILE GLOBAL l_1115 */
            union U1 *l_1114 = &l_1115;
            uint32_t l_1116 = 0x9E090185L;
            l_1114 = l_1113;
            (*l_1023) = l_1116;
            for (l_1116 = 0; (l_1116 <= 53); ++l_1116)
            { /* block id: 643 */
                int32_t l_1119 = (-2L);
                for (l_1119 = 19; (l_1119 < 6); --l_1119)
                { /* block id: 646 */
                    uint8_t l_1122 = 1UL;
                    (1 + 1);
                }
                for (l_1119 = 1; (l_1119 >= 1); ++l_1119)
                { /* block id: 665 */
                    int32_t l_1142 = (-1L);
                    int8_t l_1143 = 0L;
                    int32_t l_1144 = 0x59D96644L;
                    uint32_t l_1145 = 0UL;
                    uint8_t l_1146[1][5][2] = {{{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL}}};
                    uint8_t l_1147[6][10] = {{0xBCL,0x28L,0xE1L,0x92L,0xCCL,0xBCL,0x92L,0x5BL,0x92L,0xBCL},{0xBCL,0x28L,0xE1L,0x92L,0xCCL,0xBCL,0x92L,0x5BL,0x92L,0xBCL},{0xBCL,0x28L,0xE1L,0x92L,0xCCL,0xBCL,0x92L,0x5BL,0x92L,0xBCL},{0xBCL,0x28L,0xE1L,0x92L,0xCCL,0xBCL,0x92L,0x5BL,0x92L,0xBCL},{0xBCL,0x28L,0xE1L,0x92L,0xCCL,0xBCL,0x92L,0x5BL,0x92L,0xBCL},{0xBCL,0x28L,0xE1L,0x92L,0xCCL,0xBCL,0x92L,0x5BL,0x92L,0xBCL}};
                    int i, j, k;
                    l_1146[0][0][0] = ((*l_1021) = ((l_1144 &= (l_1143 = l_1142)) , l_1145));
                    (*l_1023) ^= l_1147[3][1];
                    for (l_1146[0][4][0] = 0; (l_1146[0][4][0] > 17); ++l_1146[0][4][0])
                    { /* block id: 673 */
                        int64_t l_1150 = 0x1996038664417ACBL;
                        int32_t l_1151 = (-6L);
                        uint64_t l_1152 = 18446744073709551615UL;
                        ++l_1152;
                    }
                }
                for (l_1119 = 6; (l_1119 >= 0); l_1119 -= 1)
                { /* block id: 679 */
                    int32_t l_1155 = 0L;
                    int16_t l_1168 = 1L;
                    (1 + 1);
                }
            }
        }
        unsigned int result = 0;
        int l_1022_i0;
        for (l_1022_i0 = 0; l_1022_i0 < 2; l_1022_i0++) {
            result += l_1022[l_1022_i0];
        }
        result += l_1024;
        result += l_1025;
        atomic_add(&p_2186->l_special_values[2], result);
    }
    else
    { /* block id: 717 */
        (1 + 1);
    }
    (****p_2186->g_666) = 0x0AE7CC8EL;
    return &p_2186->g_613;
}


/* ------------------------------------------ */
/* 
 * reads : p_2186->g_94 p_2186->g_269 p_2186->g_96 p_2186->g_6 p_2186->g_136 p_2186->g_327 p_2186->g_49 p_2186->g_8 p_2186->g_365 p_2186->g_98 p_2186->g_143 p_2186->g_103 p_2186->g_134 p_2186->g_190 p_2186->g_349 p_2186->g_170 p_2186->g_72 p_2186->g_408 p_2186->g_463 p_2186->g_501 p_2186->g_80 p_2186->g_541 p_2186->g_158 p_2186->g_540 p_2186->g_116 p_2186->g_251 p_2186->g_581 p_2186->g_581.f0 p_2186->g_613 p_2186->g_648 p_2186->g_663 p_2186->g_666 p_2186->g_701 p_2186->g_646 p_2186->g_664 p_2186->g_702 p_2186->g_32 p_2186->g_669 p_2186->g_667 p_2186->g_668
 * writes: p_2186->g_94 p_2186->g_269 p_2186->g_98 p_2186->g_190 p_2186->g_8 p_2186->g_96 p_2186->g_134 p_2186->g_251.f0 p_2186->g_158 p_2186->g_462 p_2186->g_143 p_2186->g_540 p_2186->g_116 p_2186->g_613 p_2186->g_80 p_2186->g_408.f0 p_2186->g_646 p_2186->g_408.f2 p_2186->g_731 p_2186->g_670 p_2186->g_501
 */
uint32_t  func_43(uint32_t  p_44, int16_t  p_45, union U0  p_46, uint8_t * p_47, int32_t  p_48, struct S2 * p_2186)
{ /* block id: 190 */
    uint64_t *l_360 = &p_2186->g_96[4];
    int32_t l_363[10] = {0x683901A5L,(-6L),0x683901A5L,0x683901A5L,(-6L),0x683901A5L,0x683901A5L,(-6L),0x683901A5L,0x683901A5L};
    int16_t *l_373 = &p_2186->g_158;
    uint32_t *l_511 = &p_2186->g_94;
    int32_t l_520 = 0x4D055256L;
    int16_t **l_542 = &p_2186->g_541;
    int64_t l_608[3];
    uint64_t l_615 = 0x67D870B0502C3873L;
    uint64_t l_687 = 0UL;
    int32_t **l_690 = &p_2186->g_190;
    int32_t **l_716 = &p_2186->g_190;
    int8_t l_718 = (-8L);
    uint32_t l_749 = 0UL;
    int i;
    for (i = 0; i < 3; i++)
        l_608[i] = 0x3B11F8E3621BBABEL;
    for (p_2186->g_94 = 0; (p_2186->g_94 <= 9); p_2186->g_94 += 1)
    { /* block id: 193 */
        for (p_2186->g_269 = 1; (p_2186->g_269 <= 9); p_2186->g_269 += 1)
        { /* block id: 196 */
            int i;
            if (p_2186->g_96[p_2186->g_269])
                break;
            if (p_2186->g_96[p_2186->g_269])
                continue;
            (*p_2186->g_365) |= (p_2186->g_6 | (safe_sub_func_uint32_t_u_u(((safe_div_func_int8_t_s_s((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((p_45 , 0x97L), 1)), p_2186->g_136)), (((4L <= ((&p_2186->g_96[p_2186->g_269] != l_360) && (safe_add_func_uint64_t_u_u(0UL, p_2186->g_327)))) == p_2186->g_49[0]) <= p_48))), p_2186->g_96[p_2186->g_269])) ^ p_2186->g_8), l_363[7])));
        }
    }
    if (l_363[7])
    { /* block id: 202 */
        int32_t **l_366 = &p_2186->g_190;
        int8_t l_386 = (-4L);
        int32_t l_429[8][8] = {{0L,0x06C009CDL,0x06C009CDL,0L,0L,0x06C009CDL,0x06C009CDL,0L},{0L,0x06C009CDL,0x06C009CDL,0L,0L,0x06C009CDL,0x06C009CDL,0L},{0L,0x06C009CDL,0x06C009CDL,0L,0L,0x06C009CDL,0x06C009CDL,0L},{0L,0x06C009CDL,0x06C009CDL,0L,0L,0x06C009CDL,0x06C009CDL,0L},{0L,0x06C009CDL,0x06C009CDL,0L,0L,0x06C009CDL,0x06C009CDL,0L},{0L,0x06C009CDL,0x06C009CDL,0L,0L,0x06C009CDL,0x06C009CDL,0L},{0L,0x06C009CDL,0x06C009CDL,0L,0L,0x06C009CDL,0x06C009CDL,0L},{0L,0x06C009CDL,0x06C009CDL,0L,0L,0x06C009CDL,0x06C009CDL,0L}};
        uint64_t l_499 = 18446744073709551615UL;
        union U0 l_502 = {4294967295UL};
        int i, j;
        (*l_366) = &p_48;
        (*l_366) = &p_48;
        for (p_46.f0 = (-27); (p_46.f0 < 23); p_46.f0++)
        { /* block id: 207 */
            int16_t *l_372[3][8] = {{(void*)0,(void*)0,(void*)0,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,(void*)0,(void*)0}};
            int16_t **l_371[5][8];
            int8_t *l_387 = &l_386;
            int32_t l_388 = 0x4F337403L;
            int32_t ***l_392 = &l_366;
            uint64_t *l_417 = &p_2186->g_96[4];
            int32_t l_438 = 0x14F28E4CL;
            int32_t l_440 = (-1L);
            int32_t l_442 = 1L;
            uint16_t *l_460[7][7][5] = {{{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0}},{{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0}},{{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0}},{{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0}},{{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0}},{{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0}},{{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0},{&p_2186->g_6,(void*)0,&p_2186->g_6,&p_2186->g_6,(void*)0}}};
            uint16_t **l_459 = &l_460[6][4][3];
            uint32_t l_521 = 0UL;
            int i, j, k;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 8; j++)
                    l_371[i][j] = &l_372[1][6];
            }
            if ((((safe_rshift_func_uint8_t_u_s((((l_373 = &p_45) != (void*)0) == p_44), p_2186->g_143)) , ((safe_rshift_func_uint16_t_u_u(p_2186->g_6, 9)) , p_2186->g_98[1])) > (safe_lshift_func_uint8_t_u_s(((--(*p_2186->g_103)) && ((((p_2186->g_143 == ((p_45 | (safe_rshift_func_uint16_t_u_s((((((*l_387) = (safe_div_func_uint32_t_u_u((safe_div_func_int32_t_s_s(l_363[7], p_48)), l_386))) && l_363[7]) >= l_388) && l_363[7]), p_2186->g_136))) >= l_363[3])) , p_46) , l_363[4]) && p_2186->g_134)), 1))))
            { /* block id: 211 */
                uint16_t l_389 = 1UL;
                (**l_366) = (-5L);
                if (l_389)
                    break;
                if ((*p_2186->g_349))
                    continue;
                for (p_2186->g_94 = 14; (p_2186->g_94 > 36); p_2186->g_94 = safe_add_func_uint16_t_u_u(p_2186->g_94, 5))
                { /* block id: 217 */
                    uint32_t *l_396 = &p_2186->g_94;
                    uint32_t **l_395 = &l_396;
                    int32_t l_403[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_403[i] = 0x70BD8342L;
                    (*p_2186->g_190) = (((l_392 == ((safe_sub_func_int64_t_s_s((((*l_395) = &p_44) == &p_44), 1L)) , &p_2186->g_189)) || (safe_mul_func_uint16_t_u_u((((*l_360) = l_389) , (safe_div_func_int8_t_s_s((p_48 == (((safe_add_func_uint32_t_u_u(4294967295UL, (0x1E95L >= (***l_392)))) ^ 0xBC7EL) && (***l_392))), p_2186->g_96[4]))), p_2186->g_72))) < l_403[0]);
                    for (p_45 = 0; (p_45 >= 17); p_45 = safe_add_func_int64_t_s_s(p_45, 8))
                    { /* block id: 223 */
                        (**l_366) = (safe_lshift_func_int16_t_s_s((l_403[0] = (+l_403[0])), 7));
                        return p_46.f0;
                    }
                }
            }
            else
            { /* block id: 229 */
                int64_t *l_409 = &p_2186->g_134;
                uint32_t *l_410 = &p_2186->g_251.f0;
                uint32_t *l_411 = (void*)0;
                uint32_t *l_412 = &p_2186->g_94;
                int32_t l_432 = 1L;
                int16_t l_433 = (-1L);
                int32_t l_435 = 6L;
                int32_t l_436 = 1L;
                int32_t l_437 = 0x709773C7L;
                int32_t l_439[7][9] = {{0x11796C2DL,1L,0x67A7D360L,0x0C06625BL,0x67A7D360L,1L,0x11796C2DL,(-1L),0x49A9F41EL},{0x11796C2DL,1L,0x67A7D360L,0x0C06625BL,0x67A7D360L,1L,0x11796C2DL,(-1L),0x49A9F41EL},{0x11796C2DL,1L,0x67A7D360L,0x0C06625BL,0x67A7D360L,1L,0x11796C2DL,(-1L),0x49A9F41EL},{0x11796C2DL,1L,0x67A7D360L,0x0C06625BL,0x67A7D360L,1L,0x11796C2DL,(-1L),0x49A9F41EL},{0x11796C2DL,1L,0x67A7D360L,0x0C06625BL,0x67A7D360L,1L,0x11796C2DL,(-1L),0x49A9F41EL},{0x11796C2DL,1L,0x67A7D360L,0x0C06625BL,0x67A7D360L,1L,0x11796C2DL,(-1L),0x49A9F41EL},{0x11796C2DL,1L,0x67A7D360L,0x0C06625BL,0x67A7D360L,1L,0x11796C2DL,(-1L),0x49A9F41EL}};
                int32_t l_441 = 0x42185ECDL;
                int8_t l_456 = 0x69L;
                int i, j;
                (**l_366) = ((**l_366) >= (((p_2186->g_408 , ((*l_409) = 1L)) != ((((p_2186->g_170 || 1UL) || ((((*l_412)--) >= (&p_2186->g_158 == &p_2186->g_158)) , ((safe_mod_func_int64_t_s_s((((void*)0 != l_417) != p_48), p_46.f0)) || (**l_366)))) , p_44) || p_2186->g_6)) != 0x26L));
                for (p_2186->g_134 = 0; (p_2186->g_134 <= 2); p_2186->g_134 += 1)
                { /* block id: 235 */
                    int32_t *l_418 = &l_363[7];
                    int32_t *l_419 = (void*)0;
                    int32_t *l_420 = (void*)0;
                    int32_t *l_421 = (void*)0;
                    int32_t *l_422 = (void*)0;
                    int32_t *l_423 = &p_2186->g_98[1];
                    int32_t *l_424 = &p_2186->g_216.f2;
                    int32_t *l_425 = (void*)0;
                    int32_t *l_426 = &p_2186->g_98[1];
                    int32_t *l_427 = (void*)0;
                    int32_t *l_428 = &l_388;
                    int32_t *l_430 = &p_2186->g_251.f1;
                    int32_t *l_431[5];
                    int16_t l_434 = 0x6B88L;
                    uint8_t l_443[6][7][6] = {{{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L}},{{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L}},{{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L}},{{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L}},{{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L}},{{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L},{0x93L,0xC4L,0xB0L,0xD9L,0xC4L,0xD9L}}};
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                        l_431[i] = &p_2186->g_408.f2;
                    l_443[5][0][0]++;
                    (*l_418) |= 0x03E3C6B9L;
                    (***l_392) &= p_2186->g_49[p_2186->g_134];
                    if (p_2186->g_49[p_2186->g_134])
                        break;
                }
                (*p_2186->g_365) = (safe_mod_func_uint8_t_u_u((FAKE_DIVERGE(p_2186->local_0_offset, get_local_id(0), 10) > ((((p_2186->g_158 = (safe_lshift_func_int8_t_s_u((2L == ((*p_2186->g_103) || ((safe_div_func_uint32_t_u_u((p_2186->g_94 ^= FAKE_DIVERGE(p_2186->local_1_offset, get_local_id(1), 10)), 0x6988DCE1L)) <= (safe_div_func_int16_t_s_s((**l_366), (p_2186->g_49[1] & (safe_sub_func_uint32_t_u_u(((*l_410) = ((l_456 , 0x61174686L) , ((((safe_sub_func_int32_t_s_s(0x78621641L, ((-1L) != p_44))) == (***l_392)) || (-1L)) >= 0x88C2A2C8L))), p_45)))))))), l_439[0][3]))) ^ (-1L)) > FAKE_DIVERGE(p_2186->global_0_offset, get_global_id(0), 10)) , (**l_366))), l_363[3]));
                (*p_2186->g_463) = l_459;
            }
        }
    }
    else
    { /* block id: 280 */
        int32_t l_549 = 0x7D9123E0L;
        union U0 *l_564 = &p_2186->g_251;
        int32_t l_596 = 0L;
        int32_t l_597 = 3L;
        int32_t l_599 = (-1L);
        int32_t l_604 = 8L;
        int32_t l_605 = 0x45297C58L;
        int32_t l_606 = 0x2ECD74C8L;
        int32_t l_607 = 0x4896CBD5L;
        int32_t l_609 = 0x384F699AL;
        int32_t l_611 = 0x34716011L;
        int32_t l_612 = 0L;
        int32_t l_614 = 1L;
        int64_t l_665 = (-1L);
        int64_t *l_735[5][1];
        int8_t **l_744 = &p_2186->g_501;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_735[i][j] = &p_2186->g_143;
        }
        for (p_2186->g_143 = 9; (p_2186->g_143 >= 0); p_2186->g_143 -= 1)
        { /* block id: 283 */
            int32_t **l_551 = &p_2186->g_190;
            int32_t ***l_550 = &l_551;
            int32_t l_601 = 0x7EE1EEDBL;
            int32_t l_602 = 0x7A5AA078L;
            int32_t l_603 = 0x5D08145BL;
            int32_t l_610[8][3][8] = {{{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L}},{{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L}},{{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L}},{{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L}},{{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L}},{{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L}},{{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L}},{{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L},{1L,(-1L),0x79EBA2B3L,0x44CECB13L,1L,0x16A1F446L,0x5E3DF993L,0x546D3D10L}}};
            uint32_t l_726 = 4294967295UL;
            uint32_t **l_729 = (void*)0;
            int i, j, k;
            for (p_45 = 8; (p_45 >= 0); p_45 -= 1)
            { /* block id: 286 */
                int16_t **l_539 = &l_373;
                int32_t l_573[5][2][5] = {{{(-1L),0L,(-1L),0L,(-1L)},{(-1L),0L,(-1L),0L,(-1L)}},{{(-1L),0L,(-1L),0L,(-1L)},{(-1L),0L,(-1L),0L,(-1L)}},{{(-1L),0L,(-1L),0L,(-1L)},{(-1L),0L,(-1L),0L,(-1L)}},{{(-1L),0L,(-1L),0L,(-1L)},{(-1L),0L,(-1L),0L,(-1L)}},{{(-1L),0L,(-1L),0L,(-1L)},{(-1L),0L,(-1L),0L,(-1L)}}};
                int16_t l_583 = 0x0653L;
                int i, j, k;
                for (p_2186->g_94 = 0; (p_2186->g_94 <= 7); p_2186->g_94 += 1)
                { /* block id: 289 */
                    int16_t **l_561[9][5][5] = {{{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0}},{{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0}},{{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0}},{{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0}},{{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0}},{{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0}},{{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0}},{{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0}},{{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0},{(void*)0,&p_2186->g_541,&p_2186->g_541,&p_2186->g_541,(void*)0}}};
                    int32_t l_576 = 0x09452014L;
                    int32_t l_598[7] = {0x43CF993AL,0x7C65D673L,0x43CF993AL,0x43CF993AL,0x7C65D673L,0x43CF993AL,0x43CF993AL};
                    int32_t l_600[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                    int i, j, k;
                    if ((atomic_inc(&p_2186->g_atomic_input[56 * get_linear_group_id() + 35]) == 0))
                    { /* block id: 291 */
                        uint64_t l_522 = 0x6C04381999DC37D7L;
                        uint16_t l_523 = 65527UL;
                        uint32_t l_524[3][6] = {{0x2B030C26L,1UL,0UL,0xDD9E36F3L,1UL,0xDD9E36F3L},{0x2B030C26L,1UL,0UL,0xDD9E36F3L,1UL,0xDD9E36F3L},{0x2B030C26L,1UL,0UL,0xDD9E36F3L,1UL,0xDD9E36F3L}};
                        int32_t l_528 = (-6L);
                        int32_t *l_527 = &l_528;
                        int32_t *l_529 = (void*)0;
                        int32_t *l_530 = &l_528;
                        int32_t *l_531 = &l_528;
                        int32_t *l_532 = &l_528;
                        int i, j;
                        l_523 = l_522;
                        l_524[0][5]++;
                        l_529 = l_527;
                        l_532 = (l_531 = l_530);
                        unsigned int result = 0;
                        result += l_522;
                        result += l_523;
                        int l_524_i0, l_524_i1;
                        for (l_524_i0 = 0; l_524_i0 < 3; l_524_i0++) {
                            for (l_524_i1 = 0; l_524_i1 < 6; l_524_i1++) {
                                result += l_524[l_524_i0][l_524_i1];
                            }
                        }
                        result += l_528;
                        atomic_add(&p_2186->g_special_values[56 * get_linear_group_id() + 35], result);
                    }
                    else
                    { /* block id: 297 */
                        (1 + 1);
                    }
                    if (((safe_div_func_int64_t_s_s(((safe_rshift_func_int8_t_s_u((*p_2186->g_501), 4)) , ((p_45 ^ (*p_2186->g_501)) > 0L)), (safe_rshift_func_uint8_t_u_s(0x81L, ((((l_542 = (p_2186->g_540 = l_539)) != ((safe_lshift_func_int16_t_s_u((safe_div_func_uint16_t_u_u((((((((safe_rshift_func_uint8_t_u_u(((*p_2186->g_103) = (l_549 ^ (((void*)0 == l_550) || (*p_2186->g_541)))), 2)) , (void*)0) == (void*)0) || p_48) == p_48) | l_520) ^ 0xC2L), l_549)), 0)) , l_539)) ^ p_45) , 0x64L))))) , p_44))
                    { /* block id: 303 */
                        int16_t **l_560 = &p_2186->g_541;
                        uint16_t *l_567 = &p_2186->g_116;
                        int32_t l_568 = (-1L);
                        int8_t *l_582 = &p_2186->g_80;
                        int16_t l_584 = 0x62F9L;
                        int32_t *l_585 = (void*)0;
                        int32_t *l_586 = &l_363[(p_2186->g_94 + 1)];
                        int32_t *l_587 = &l_573[3][1][2];
                        int32_t *l_588 = &p_2186->g_216.f2;
                        int32_t *l_589 = &l_568;
                        int32_t *l_590 = &l_520;
                        int32_t *l_591 = &p_2186->g_98[1];
                        int32_t *l_592 = &l_363[5];
                        int32_t *l_593 = &p_2186->g_251.f1;
                        int32_t *l_594 = &p_2186->g_216.f2;
                        int32_t *l_595[4] = {&p_2186->g_408.f2,&p_2186->g_408.f2,&p_2186->g_408.f2,&p_2186->g_408.f2};
                        int i;
                        l_363[(p_2186->g_94 + 1)] = ((((safe_div_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s((0x05C476571A61503DL || (safe_rshift_func_int8_t_s_s(p_45, 0))), 2)), (((safe_sub_func_int64_t_s_s(((0x57DF9B104380DCB4L & ((((**p_2186->g_540) = (l_560 != l_561[5][1][4])) , (safe_div_func_uint64_t_u_u(((FAKE_DIVERGE(p_2186->global_2_offset, get_global_id(2), 10) >= ((~(&p_2186->g_251 == l_564)) || (l_568 ^= (safe_add_func_int16_t_s_s((**p_2186->g_540), ((*l_567) &= 0x809FL)))))) , 1UL), p_45))) , 0x2A544E2B2987633DL)) || GROUP_DIVERGE(0, 1)), p_45)) != 0x0DL) && 4294967293UL))) , &p_2186->g_136) != l_360) ^ p_48);
                        (*l_586) ^= (safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(l_573[3][1][2], ((((*p_2186->g_501) > (((safe_rshift_func_int16_t_s_u((FAKE_DIVERGE(p_2186->group_1_offset, get_group_id(1), 10) ^ p_44), 12)) , l_576) | ((p_48 == (safe_sub_func_int8_t_s_s((((GROUP_DIVERGE(0, 1) & ((p_2186->g_251 , (safe_mod_func_int8_t_s_s(0x2DL, (*p_2186->g_501)))) >= (((((p_2186->g_581 , 4294967295UL) , &p_2186->g_80) == l_582) <= (-3L)) < l_583))) ^ l_584) , p_44), 0x55L))) || 0L))) <= p_44) , p_45))), p_45));
                        (*l_586) ^= (1UL != (l_583 && (l_573[3][1][2] || p_48)));
                        --l_615;
                    }
                    else
                    { /* block id: 311 */
                        return p_2186->g_581.f0;
                    }
                    if (l_598[3])
                        break;
                }
            }
            for (l_601 = 7; (l_601 >= 0); l_601 -= 1)
            { /* block id: 319 */
                int16_t l_629 = 0x51DEL;
                int32_t *l_649 = &p_2186->g_408.f2;
                int32_t *l_650[1][5];
                int8_t l_651 = (-4L);
                uint32_t l_652 = 8UL;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_650[i][j] = &l_363[6];
                }
                if ((!p_48))
                { /* block id: 320 */
                    return p_2186->g_158;
                }
                else
                { /* block id: 322 */
                    int8_t l_626 = 1L;
                    uint16_t *l_643 = &p_2186->g_116;
                    uint16_t *l_644 = (void*)0;
                    uint16_t *l_645[3][2] = {{&p_2186->g_646,&p_2186->g_646},{&p_2186->g_646,&p_2186->g_646},{&p_2186->g_646,&p_2186->g_646}};
                    int32_t l_647 = 0x7068B464L;
                    int i, j;
                    l_363[l_601] |= (safe_sub_func_int16_t_s_s((safe_add_func_int32_t_s_s((safe_lshift_func_int16_t_s_s(1L, ((((safe_mul_func_uint8_t_u_u(l_626, l_608[0])) , 0x04AE0E50L) ^ (safe_add_func_int32_t_s_s(l_629, ((safe_lshift_func_uint8_t_u_s((0xF9L >= ((safe_mul_func_int16_t_s_s(((l_647 = ((safe_add_func_uint16_t_u_u((l_520 |= ((*l_643) = (((safe_add_func_uint8_t_u_u((safe_unary_minus_func_uint16_t_u((safe_sub_func_int64_t_s_s((GROUP_DIVERGE(1, 1) >= p_45), p_44)))), (safe_mod_func_int32_t_s_s(p_48, p_48)))) ^ p_2186->g_613) | 0x9B6FE901L))), p_44)) , l_608[1])) | p_48), p_44)) == l_604)), 5)) >= 0x5311205A57D60436L)))) >= l_626))), l_629)), GROUP_DIVERGE(2, 1)));
                    (*p_2186->g_648) = p_45;
                }
                l_652--;
            }
            if (((safe_lshift_func_int16_t_s_s(((p_44 , &p_2186->g_80) != ((((0x19L & (p_45 ^ (((~(((*p_2186->g_501) & 1L) , (((safe_mul_func_int8_t_s_s((~((safe_sub_func_int64_t_s_s(((&l_363[7] != (void*)0) != (!(safe_div_func_int8_t_s_s(((*p_2186->g_501) = 0x71L), 0x56L)))), p_48)) <= 65535UL)), FAKE_DIVERGE(p_2186->global_1_offset, get_global_id(1), 10))) >= 0x3E44AEC5L) , 1UL))) | p_2186->g_49[2]) , p_45))) , &p_47) == p_2186->g_663) , (void*)0)), l_608[0])) & l_665))
            { /* block id: 332 */
                int32_t *l_671 = &l_604;
                int32_t l_676 = (-9L);
                int32_t l_681 = 1L;
                int32_t l_683 = 0x2A012AB3L;
                int32_t l_684[7];
                int32_t l_685 = 0x56B311D6L;
                int i;
                for (i = 0; i < 7; i++)
                    l_684[i] = 0x59222E99L;
                if (((*l_671) |= (p_2186->g_666 == &p_2186->g_667)))
                { /* block id: 334 */
                    return p_44;
                }
                else
                { /* block id: 336 */
                    int32_t *l_672 = &l_363[7];
                    int32_t *l_673 = &p_2186->g_216.f2;
                    int32_t *l_674 = &l_609;
                    int32_t *l_675 = (void*)0;
                    int32_t *l_677 = &p_2186->g_170;
                    int32_t *l_678 = &l_676;
                    int32_t *l_679 = &l_610[3][2][0];
                    int32_t *l_680[8][5][4] = {{{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0}},{{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0}},{{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0}},{{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0}},{{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0}},{{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0}},{{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0}},{{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0},{(void*)0,&l_599,&l_597,(void*)0}}};
                    int32_t l_682 = 0x70839000L;
                    int i, j, k;
                    --l_687;
                    for (p_2186->g_251.f0 = 0; p_2186->g_251.f0 < 3; p_2186->g_251.f0 += 1)
                    {
                        p_2186->g_98[p_2186->g_251.f0] = 0x1D7CA3E4L;
                    }
                    for (p_2186->g_8 = 1; (p_2186->g_8 <= 7); p_2186->g_8 += 1)
                    { /* block id: 341 */
                        uint8_t *l_697 = &p_2186->g_408.f0;
                        uint32_t **l_698 = &l_511;
                        uint32_t ***l_699 = (void*)0;
                        uint32_t ***l_700 = &l_698;
                        uint16_t *l_705 = &p_2186->g_646;
                        int32_t l_714 = (-3L);
                        uint16_t *l_715 = &p_2186->g_116;
                        uint32_t l_717 = 1UL;
                        (*l_671) = (((l_690 != ((l_609 || (((safe_mod_func_uint8_t_u_u(((((safe_add_func_int32_t_s_s((safe_add_func_uint8_t_u_u(((*l_697) = 0x46L), (((*l_700) = l_698) != p_2186->g_701))), (&p_45 != (((*l_671) != (((((*l_705)++) | ((safe_mul_func_int8_t_s_s((p_45 <= (((*l_715) = (((safe_rshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_u((p_44 <= l_714), GROUP_DIVERGE(2, 1))), 12)) | 0x7BL) <= (*l_671))) <= p_44)), (-8L))) >= p_44)) & p_48) | (*p_2186->g_664))) , (*p_2186->g_540))))) , (*p_2186->g_701)) == (void*)0) & (*l_671)), (*l_671))) ^ p_48) && 0L)) , l_716)) == l_717) ^ p_48);
                        return p_48;
                    }
                    for (p_2186->g_408.f2 = 7; (p_2186->g_408.f2 >= 0); p_2186->g_408.f2 -= 1)
                    { /* block id: 351 */
                        if (l_599)
                            break;
                        return p_48;
                    }
                }
                for (l_611 = 7; (l_611 >= 0); l_611 -= 1)
                { /* block id: 358 */
                    int32_t *l_719 = &p_2186->g_32;
                    int32_t *l_720 = &l_610[0][2][7];
                    int32_t *l_721 = &p_2186->g_216.f2;
                    int32_t *l_722 = (void*)0;
                    int32_t *l_723 = &l_609;
                    int32_t *l_724 = &l_612;
                    int32_t *l_725[9] = {&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[2],&p_2186->g_98[2]};
                    uint32_t ***l_730[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_730[i] = &l_729;
                    l_726--;
                    if ((*l_719))
                        continue;
                    l_729 = (p_2186->g_731 = l_729);
                }
            }
            else
            { /* block id: 364 */
                (*p_2186->g_669) = p_48;
            }
        }
        (****p_2186->g_666) = p_44;
        p_46.f1 = ((*p_2186->g_501) && (*p_2186->g_501));
        (*p_2186->g_365) = (safe_div_func_int8_t_s_s((((l_607 = p_46.f1) & p_48) , (safe_div_func_int64_t_s_s((l_749 = (safe_div_func_uint32_t_u_u(((((*l_360) = (safe_sub_func_uint16_t_u_u((p_45 && 0xFE28B1E8L), ((7UL ^ ((safe_sub_func_uint32_t_u_u((((*l_744) = p_47) == (void*)0), (safe_mul_func_int8_t_s_s((p_2186->g_158 , (safe_sub_func_int8_t_s_s((0x331332C50F7DFC2DL ^ p_2186->g_98[1]), 0xEAL))), p_48)))) == l_549)) <= GROUP_DIVERGE(2, 1))))) > p_48) , (*p_2186->g_702)), p_48))), p_2186->g_8))), 1UL));
    }
    for (p_2186->g_134 = 0; (p_2186->g_134 <= 2); p_2186->g_134 += 1)
    { /* block id: 378 */
        int i;
        p_2186->g_98[p_2186->g_134] &= ((void*)0 != &l_511);
    }
    return p_48;
}


/* ------------------------------------------ */
/* 
 * reads : p_2186->g_192 p_2186->g_80 p_2186->g_216 p_2186->g_134 p_2186->g_158 p_2186->g_170 p_2186->g_136 p_2186->g_116 p_2186->g_6 p_2186->g_72 p_2186->g_32 p_2186->g_8 p_2186->g_94 p_2186->g_96 p_2186->g_216.f2 p_2186->g_190 p_2186->g_98 p_2186->g_269 p_2186->g_103 p_2186->g_272 p_2186->g_189 p_2186->g_251.f1 p_2186->g_143 p_2186->g_349
 * writes: p_2186->g_192 p_2186->g_80 p_2186->g_190 p_2186->g_116 p_2186->g_158 p_2186->g_216.f4 p_2186->g_136 p_2186->g_96 p_2186->g_94 p_2186->g_216.f2 p_2186->g_98 p_2186->g_251 p_2186->g_269 p_2186->g_170 p_2186->g_327 p_2186->g_143
 */
union U0  func_50(uint8_t  p_51, union U0  p_52, int32_t  p_53, struct S2 * p_2186)
{ /* block id: 68 */
    volatile union U0 **l_193[10] = {&p_2186->g_192,&p_2186->g_192,&p_2186->g_192,&p_2186->g_192,&p_2186->g_192,&p_2186->g_192,&p_2186->g_192,&p_2186->g_192,&p_2186->g_192,&p_2186->g_192};
    int32_t **l_194 = (void*)0;
    int32_t **l_196 = &p_2186->g_190;
    int32_t ***l_195 = &l_196;
    uint8_t *l_215 = &p_2186->g_8;
    uint64_t *l_229 = &p_2186->g_96[4];
    int8_t l_233 = (-1L);
    int16_t *l_325 = &p_2186->g_158;
    int16_t *l_326[3];
    int32_t *l_342 = &p_2186->g_269;
    int32_t *l_345 = &p_2186->g_269;
    int32_t **l_344 = &l_345;
    uint64_t l_346 = 0x2AD8C169C809A6A3L;
    int64_t *l_347 = &p_2186->g_143;
    int i;
    for (i = 0; i < 3; i++)
        l_326[i] = &p_2186->g_216.f4;
    p_2186->g_192 = p_2186->g_192;
    if ((l_194 != ((*l_195) = &p_2186->g_190)))
    { /* block id: 71 */
        int32_t *l_210[9][9] = {{&p_2186->g_170,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_170,(void*)0},{&p_2186->g_170,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_170,(void*)0},{&p_2186->g_170,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_170,(void*)0},{&p_2186->g_170,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_170,(void*)0},{&p_2186->g_170,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_170,(void*)0},{&p_2186->g_170,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_170,(void*)0},{&p_2186->g_170,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_170,(void*)0},{&p_2186->g_170,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_170,(void*)0},{&p_2186->g_170,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_98[1],&p_2186->g_170,(void*)0,&p_2186->g_170,(void*)0}};
        int i, j;
        for (p_2186->g_80 = 0; (p_2186->g_80 != (-28)); p_2186->g_80--)
        { /* block id: 74 */
            uint32_t l_199 = 0xB9F763CEL;
            int16_t *l_206 = &p_2186->g_158;
            uint8_t *l_209 = &p_2186->g_8;
            int32_t l_211[5][9] = {{0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L},{0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L},{0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L},{0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L},{0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L,0x08FF1440L,(-4L),0x08FF1440L}};
            int i, j;
            (1 + 1);
        }
    }
    else
    { /* block id: 82 */
        uint32_t l_212 = 4294967295UL;
        int32_t *l_231 = &p_2186->g_98[1];
        union U0 *l_250 = &p_2186->g_251;
        union U0 **l_249 = &l_250;
        int32_t ***l_266 = &l_194;
        if (p_53)
        { /* block id: 83 */
            uint16_t l_219 = 0UL;
            uint16_t *l_226[3];
            int16_t *l_227 = &p_2186->g_158;
            int16_t *l_228 = &p_2186->g_216.f4;
            int64_t *l_230 = &p_2186->g_136;
            union U0 l_232 = {1UL};
            int i;
            for (i = 0; i < 3; i++)
                l_226[i] = &p_2186->g_116;
            l_212++;
            l_231 = func_62(p_51, l_215, ((*l_196) = &p_53), ((p_2186->g_216 , ((*l_229) = ((safe_sub_func_uint32_t_u_u(l_219, (safe_mod_func_int64_t_s_s((safe_mod_func_int64_t_s_s(p_52.f0, l_212)), ((*l_230) |= (((((p_2186->g_116 = (safe_rshift_func_int16_t_s_u(p_52.f0, 1))) & ((*l_228) = ((*l_227) |= p_2186->g_134))) , l_229) != &p_2186->g_96[4]) && p_2186->g_170)))))) && l_212))) && p_2186->g_116), p_2186->g_6, p_2186);
            return l_232;
        }
        else
        { /* block id: 93 */
            uint16_t l_234[7][7][5] = {{{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL}},{{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL}},{{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL}},{{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL}},{{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL}},{{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL}},{{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL},{0x89C3L,1UL,0UL,0x70C6L,65535UL}}};
            int32_t ****l_275[2];
            uint8_t *l_294 = &p_2186->g_8;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_275[i] = &l_266;
            for (p_2186->g_216.f2 = 9; (p_2186->g_216.f2 >= 0); p_2186->g_216.f2 -= 1)
            { /* block id: 96 */
                int32_t *l_238 = &p_2186->g_98[1];
                uint64_t l_258 = 0x21FCF2621F28254AL;
                int32_t ****l_265 = &l_195;
                int32_t *l_267 = (void*)0;
                int32_t *l_268 = &p_2186->g_269;
                int32_t l_270[1];
                int16_t *l_271[6][2][9] = {{{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158},{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158}},{{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158},{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158}},{{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158},{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158}},{{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158},{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158}},{{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158},{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158}},{{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158},{&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158}}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_270[i] = (-1L);
                if ((l_233 = (p_53 = (*p_2186->g_190))))
                { /* block id: 99 */
                    union U0 l_237 = {0x5D6F3FE0L};
                    --l_234[3][5][4];
                    for (p_52.f1 = 9; (p_52.f1 >= 0); p_52.f1 -= 1)
                    { /* block id: 103 */
                        return l_237;
                    }
                }
                else
                { /* block id: 106 */
                    (*l_196) = l_238;
                }
                for (p_53 = 2; (p_53 >= 0); p_53 -= 1)
                { /* block id: 111 */
                    for (p_2186->g_80 = 0; (p_2186->g_80 <= 2); p_2186->g_80 += 1)
                    { /* block id: 114 */
                        int i;
                        if (p_2186->g_98[p_2186->g_80])
                            break;
                        if (p_2186->g_98[p_53])
                            continue;
                        if (p_53)
                            continue;
                    }
                }
                (*p_2186->g_190) = (*l_231);
                (*p_2186->g_272) ^= ((p_2186->g_158 = ((((p_2186->g_134 ^ (((safe_add_func_uint32_t_u_u((GROUP_DIVERGE(2, 1) || ((safe_add_func_int32_t_s_s(((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u((((*l_268) &= (safe_div_func_uint64_t_u_u((0x8708D74EL | (l_249 == &l_250)), (safe_rshift_func_int16_t_s_s((safe_add_func_int64_t_s_s((((*l_250) = p_52) , (!p_2186->g_96[4])), ((safe_add_func_int32_t_s_s((((*l_265) = ((l_258 , ((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_s((+(safe_lshift_func_int16_t_s_u((*l_238), (((*l_238) && (*l_238)) > (*l_231))))), p_2186->g_32)), 6)) & 0UL)) , (void*)0)) == l_266), GROUP_DIVERGE(2, 1))) != (*l_238)))), p_2186->g_98[2]))))) , 255UL), 0x1AL)), 7)) != p_2186->g_6), (*l_238))) ^ 18446744073709551612UL)), p_53)) , (*p_2186->g_103)) || l_270[0])) >= 5L) | 0x7011B648L) , p_2186->g_98[1])) <= p_2186->g_96[2]);
            }
            (*l_196) = (void*)0;
            for (p_52.f1 = 0; (p_52.f1 < (-28)); p_52.f1 = safe_sub_func_int8_t_s_s(p_52.f1, 1))
            { /* block id: 130 */
                int32_t ****l_277 = &l_195;
                int32_t *****l_276 = &l_277;
                int32_t l_278 = (-10L);
                int32_t l_279 = (-1L);
                int32_t l_280 = 0x647A815BL;
                uint8_t **l_301 = &l_215;
                if (((*l_231) ^ (l_275[1] == ((*l_276) = (void*)0))))
                { /* block id: 132 */
                    uint32_t l_281 = 0x14FACFC0L;
                    uint8_t **l_299 = &l_215;
                    p_53 = p_52.f1;
                    for (p_2186->g_251.f1 = 0; (p_2186->g_251.f1 <= 9); p_2186->g_251.f1 += 1)
                    { /* block id: 136 */
                        uint16_t l_284 = 0UL;
                        int8_t *l_291 = &l_233;
                        int8_t *l_292 = (void*)0;
                        int8_t *l_293 = &p_2186->g_80;
                        uint8_t ***l_300[5][7][5] = {{{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104}},{{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104}},{{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104}},{{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104}},{{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104},{(void*)0,&p_2186->g_102,&l_299,(void*)0,&p_2186->g_104}}};
                        int64_t *l_302 = &p_2186->g_134;
                        int64_t *l_303 = &p_2186->g_143;
                        int i, j, k;
                        l_281--;
                        --l_284;
                        (*p_2186->g_189) = &p_53;
                        if ((*p_2186->g_272))
                            break;
                    }
                    (*p_2186->g_189) = &p_53;
                }
                else
                { /* block id: 151 */
                    uint64_t l_304 = 18446744073709551609UL;
                    (*p_2186->g_272) |= p_52.f1;
                    --l_304;
                    if ((atomic_inc(&p_2186->g_atomic_input[56 * get_linear_group_id() + 39]) == 6))
                    { /* block id: 155 */
                        int64_t l_307 = (-1L);
                        uint16_t l_308 = 0x8535L;
                        int64_t l_309 = 0x3F68E014A8628671L;
                        uint16_t l_310 = 65535UL;
                        uint32_t l_311 = 0xA62AC4F3L;
                        uint16_t l_312[2][7] = {{65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL},{65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL}};
                        int8_t l_313 = 0x5FL;
                        uint16_t l_314 = 0x523CL;
                        int64_t *l_316 = &l_307;
                        int64_t **l_315 = &l_316;
                        int64_t **l_317 = &l_316;
                        int i, j;
                        l_308 |= l_307;
                        l_309 ^= 0x15487D05L;
                        l_314 = ((l_312[0][0] |= (l_311 = l_310)) , l_313);
                        l_317 = l_315;
                        unsigned int result = 0;
                        result += l_307;
                        result += l_308;
                        result += l_309;
                        result += l_310;
                        result += l_311;
                        int l_312_i0, l_312_i1;
                        for (l_312_i0 = 0; l_312_i0 < 2; l_312_i0++) {
                            for (l_312_i1 = 0; l_312_i1 < 7; l_312_i1++) {
                                result += l_312[l_312_i0][l_312_i1];
                            }
                        }
                        result += l_313;
                        result += l_314;
                        atomic_add(&p_2186->g_special_values[56 * get_linear_group_id() + 39], result);
                    }
                    else
                    { /* block id: 162 */
                        (1 + 1);
                    }
                }
            }
        }
        for (p_2186->g_251.f1 = 0; (p_2186->g_251.f1 != 21); p_2186->g_251.f1 = safe_add_func_uint16_t_u_u(p_2186->g_251.f1, 7))
        { /* block id: 170 */
            int16_t l_322 = 0x4139L;
            for (l_212 = 0; (l_212 < 52); l_212 = safe_add_func_uint16_t_u_u(l_212, 8))
            { /* block id: 173 */
                return p_52;
            }
            if (l_322)
                break;
            (*l_231) &= p_52.f1;
            return p_52;
        }
        (*l_196) = (*p_2186->g_189);
    }
    (*p_2186->g_349) ^= (((p_51 >= ((p_2186->g_327 = (p_2186->g_216.f4 = ((*l_325) = (-1L)))) >= p_51)) ^ (((*l_347) ^= ((safe_add_func_int16_t_s_s(p_53, ((((~((safe_sub_func_int32_t_s_s(((((safe_sub_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u(1UL, (safe_add_func_uint16_t_u_u((p_2186->g_269 == (l_342 == ((*l_344) = l_342))), 0x7D75L)))), 13)) , FAKE_DIVERGE(p_2186->group_0_offset, get_group_id(0), 10)), p_2186->g_96[4])) && p_2186->g_134) || (-1L)) > FAKE_DIVERGE(p_2186->global_1_offset, get_global_id(1), 10)), p_2186->g_98[2])) , l_346)) & p_2186->g_94) , 1L) & p_2186->g_96[4]))) && (-1L))) >= p_53)) & p_2186->g_80);
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_2186->g_98 p_2186->g_158 p_2186->g_143 p_2186->g_32 p_2186->g_8 p_2186->g_94 p_2186->g_170 p_2186->g_103 p_2186->g_189 p_2186->g_190
 * writes: p_2186->g_158 p_2186->g_170 p_2186->g_8 p_2186->g_96 p_2186->g_190
 */
int32_t  func_55(uint64_t  p_56, int32_t * p_57, int32_t * p_58, union U0  p_59, struct S2 * p_2186)
{ /* block id: 55 */
    int32_t l_146 = 1L;
    int16_t *l_157 = &p_2186->g_158;
    int32_t *l_171 = &p_2186->g_170;
    int16_t l_191 = 0L;
    (*l_171) |= (safe_unary_minus_func_int8_t_s(((l_146 <= (safe_add_func_uint8_t_u_u((((safe_mul_func_uint16_t_u_u((p_2186->g_98[1] >= ((((safe_lshift_func_int8_t_s_u((safe_mod_func_uint8_t_u_u((~(safe_mul_func_int16_t_s_s(((*l_157) |= (-10L)), (safe_div_func_uint32_t_u_u(p_59.f0, ((safe_rshift_func_uint8_t_u_u(0x6DL, (safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(l_146, ((((((p_2186->g_143 , (safe_rshift_func_int16_t_s_u(l_146, 10))) != ((l_146 , (*p_58)) && l_146)) | p_2186->g_8) | (*p_57)) <= (-1L)) >= l_146))), 1L)))) , p_59.f0)))))), FAKE_DIVERGE(p_2186->group_2_offset, get_group_id(2), 10))), l_146)) , l_146) & l_146) , p_2186->g_8)), FAKE_DIVERGE(p_2186->group_0_offset, get_group_id(0), 10))) & l_146) > p_2186->g_94), 0x68L))) && 0x2F8F730DL)));
    for (p_56 = 13; (p_56 >= 40); p_56++)
    { /* block id: 60 */
        int16_t *l_178[8] = {&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158,&p_2186->g_158};
        int32_t l_185[5];
        uint64_t *l_188 = &p_2186->g_96[8];
        int i;
        for (i = 0; i < 5; i++)
            l_185[i] = (-1L);
        (*p_2186->g_189) = ((safe_rshift_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(p_56, (((void*)0 != l_178[4]) || (((safe_sub_func_int16_t_s_s((safe_add_func_uint16_t_u_u((0x2183L < (0UL | (safe_sub_func_int8_t_s_s(l_185[1], (~((*p_2186->g_103) = (GROUP_DIVERGE(0, 1) , 249UL))))))), ((safe_mod_func_uint64_t_u_u(((*l_171) = ((*l_188) = ((((void*)0 != l_171) >= (*p_57)) > FAKE_DIVERGE(p_2186->local_1_offset, get_local_id(1), 10)))), GROUP_DIVERGE(1, 1))) , 0x707CL))), 0xBEA8L)) | p_56) , p_2186->g_98[1])))), 14)) , p_57);
    }
    (*l_171) &= (*p_2186->g_190);
    return l_191;
}


/* ------------------------------------------ */
/* 
 * reads : p_2186->g_8 p_2186->g_97 p_2186->g_116 p_2186->g_98 p_2186->g_32 p_2186->g_104 p_2186->g_143 p_2186->g_96 p_2186->g_80 p_2186->g_170
 * writes: p_2186->g_98 p_2186->g_102 p_2186->g_104 p_2186->g_116 p_2186->g_134 p_2186->g_136 p_2186->g_8
 */
int32_t * func_60(int32_t * p_61, struct S2 * p_2186)
{ /* block id: 44 */
    uint8_t *l_100 = &p_2186->g_8;
    uint8_t **l_99 = &l_100;
    uint8_t ***l_101[9];
    int32_t l_111 = 1L;
    uint16_t *l_114 = (void*)0;
    uint16_t *l_115[7][3] = {{&p_2186->g_116,&p_2186->g_116,&p_2186->g_6},{&p_2186->g_116,&p_2186->g_116,&p_2186->g_6},{&p_2186->g_116,&p_2186->g_116,&p_2186->g_6},{&p_2186->g_116,&p_2186->g_116,&p_2186->g_6},{&p_2186->g_116,&p_2186->g_116,&p_2186->g_6},{&p_2186->g_116,&p_2186->g_116,&p_2186->g_6},{&p_2186->g_116,&p_2186->g_116,&p_2186->g_6}};
    int64_t *l_133 = &p_2186->g_134;
    int64_t *l_135 = &p_2186->g_136;
    int64_t *l_141 = (void*)0;
    int64_t *l_142[5][1][10] = {{{&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143}},{{&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143}},{{&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143}},{{&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143}},{{&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143,&p_2186->g_143}}};
    int32_t l_144[2];
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_101[i] = &l_99;
    for (i = 0; i < 2; i++)
        l_144[i] = 1L;
    (*p_2186->g_97) = p_2186->g_8;
    p_2186->g_104 = (p_2186->g_102 = l_99);
    l_111 = (safe_add_func_int64_t_s_s((safe_add_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(l_111, ((1UL && ((safe_rshift_func_uint16_t_u_u((p_2186->g_116++), (safe_sub_func_int8_t_s_s(((((GROUP_DIVERGE(2, 1) && ((~(safe_add_func_uint32_t_u_u((((0xD701D6BCL >= (safe_rshift_func_uint8_t_u_u(((**p_2186->g_104) = ((safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((l_111 , ((safe_mul_func_int8_t_s_s(0x13L, ((((*p_2186->g_97) <= (safe_mod_func_int64_t_s_s((((*l_135) = ((*l_133) = l_111)) >= (l_144[0] = ((safe_mul_func_int8_t_s_s((l_111 | ((((safe_mul_func_int16_t_s_s((p_2186->g_98[1] ^ p_2186->g_98[0]), 0x4C62L)) & (*p_61)) , (void*)0) == l_133)), 3L)) != 0x2BL))), l_111))) , &p_2186->g_103) != &p_2186->g_103))) > l_111)), l_111)), 0)) && l_111)), 7))) == 18446744073709551608UL) & p_2186->g_32), p_2186->g_143))) || p_2186->g_98[1])) != 65535UL) || 0x21L) ^ l_111), (-2L))))) < p_2186->g_96[4])) > 0x6BE1L))), 0L)), p_2186->g_80));
    return &p_2186->g_98[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_2186->g_72 p_2186->g_80 p_2186->g_32 p_2186->g_6 p_2186->g_8 p_2186->g_94 p_2186->g_96
 * writes: p_2186->g_94 p_2186->g_96
 */
int32_t * func_62(uint8_t  p_63, uint8_t * p_64, int32_t * p_65, int32_t  p_66, uint16_t  p_67, struct S2 * p_2186)
{ /* block id: 36 */
    int32_t *l_73 = (void*)0;
    int32_t l_81 = (-1L);
    int32_t **l_90 = &l_73;
    int32_t *l_92[9] = {&l_81,&l_81,&l_81,&l_81,&l_81,&l_81,&l_81,&l_81,&l_81};
    int32_t **l_91[3][5][5] = {{{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]}},{{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]}},{{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]},{&l_92[6],&l_92[6],&l_92[3],&l_92[6],&l_92[6]}}};
    uint32_t *l_93[8];
    uint64_t l_95 = 0xD2D86EA79F159E9DL;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_93[i] = &p_2186->g_94;
    p_2186->g_96[4] ^= (safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(p_2186->g_72, 7)), ((p_65 != (GROUP_DIVERGE(1, 1) , l_73)) , ((l_95 = (safe_rshift_func_uint16_t_u_s(((safe_mod_func_uint16_t_u_u((~FAKE_DIVERGE(p_2186->group_1_offset, get_group_id(1), 10)), ((safe_mul_func_uint8_t_u_u(((p_2186->g_80 | l_81) < (safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint32_t_u_u((p_63 | (p_63 && ((p_2186->g_94 = ((((safe_mul_func_int16_t_s_s(((((((*l_90) = &l_81) != (p_65 = &p_2186->g_32)) ^ p_66) , p_2186->g_32) == p_67), p_2186->g_80)) , FAKE_DIVERGE(p_2186->group_0_offset, get_group_id(0), 10)) , p_2186->g_32) ^ p_63)) > p_2186->g_6))), p_67)), p_2186->g_32)), p_2186->g_6))), GROUP_DIVERGE(1, 1))) ^ FAKE_DIVERGE(p_2186->local_2_offset, get_local_id(2), 10)))) & p_2186->g_8), 7))) , p_2186->g_94))));
    (*l_90) = (*l_90);
    return p_65;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[56];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 56; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[56];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 56; i++)
            l_special_values[i] = 0;
    struct S2 c_2187;
    struct S2* p_2186 = &c_2187;
    struct S2 c_2188 = {
        0xF8C7L, // p_2186->g_6
        0x3DL, // p_2186->g_8
        (-1L), // p_2186->g_32
        {0x75B04CE9L,0x75B04CE9L,0x75B04CE9L}, // p_2186->g_49
        0x136B8055L, // p_2186->g_72
        1L, // p_2186->g_80
        1UL, // p_2186->g_94
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_2186->g_96
        {(-4L),(-4L),(-4L)}, // p_2186->g_98
        &p_2186->g_98[1], // p_2186->g_97
        &p_2186->g_8, // p_2186->g_103
        &p_2186->g_103, // p_2186->g_102
        &p_2186->g_103, // p_2186->g_104
        9UL, // p_2186->g_116
        0x00924423CC0FEBE7L, // p_2186->g_134
        0x386B2CC90326E311L, // p_2186->g_136
        0x6083B57DFA0F4C75L, // p_2186->g_143
        1L, // p_2186->g_158
        0L, // p_2186->g_170
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2186->g_169
        &p_2186->g_98[1], // p_2186->g_190
        &p_2186->g_190, // p_2186->g_189
        (void*)0, // p_2186->g_192
        {0xE9L}, // p_2186->g_216
        {4294967286UL}, // p_2186->g_251
        0x16E7FB2DL, // p_2186->g_269
        &p_2186->g_170, // p_2186->g_272
        0x0BE6784F500AEE97L, // p_2186->g_327
        &p_2186->g_251.f1, // p_2186->g_348
        &p_2186->g_170, // p_2186->g_349
        &p_2186->g_251.f1, // p_2186->g_364
        &p_2186->g_98[2], // p_2186->g_365
        {0x18L}, // p_2186->g_408
        (void*)0, // p_2186->g_462
        {&p_2186->g_462,&p_2186->g_462,&p_2186->g_462,&p_2186->g_462,&p_2186->g_462,&p_2186->g_462,&p_2186->g_462,&p_2186->g_462}, // p_2186->g_461
        &p_2186->g_462, // p_2186->g_463
        &p_2186->g_80, // p_2186->g_501
        &p_2186->g_158, // p_2186->g_541
        &p_2186->g_541, // p_2186->g_540
        {0x22L}, // p_2186->g_581
        0x314652A5L, // p_2186->g_613
        0x5710L, // p_2186->g_646
        &p_2186->g_613, // p_2186->g_648
        &p_2186->g_581.f0, // p_2186->g_664
        &p_2186->g_664, // p_2186->g_663
        0L, // p_2186->g_670
        &p_2186->g_670, // p_2186->g_669
        {{&p_2186->g_669,&p_2186->g_669}}, // p_2186->g_668
        &p_2186->g_668[0][1], // p_2186->g_667
        &p_2186->g_667, // p_2186->g_666
        {{{(-7L)},{(-7L)},{(-7L)},{(-7L)}},{{(-7L)},{(-7L)},{(-7L)},{(-7L)}},{{(-7L)},{(-7L)},{(-7L)},{(-7L)}}}, // p_2186->g_686
        &p_2186->g_94, // p_2186->g_702
        &p_2186->g_702, // p_2186->g_701
        {{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}},{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}},{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}},{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}},{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}},{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}},{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}},{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}},{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}},{{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94},{&p_2186->g_94,&p_2186->g_94}}}, // p_2186->g_732
        &p_2186->g_732[7][2][0], // p_2186->g_731
        &p_2186->g_581, // p_2186->g_785
        &p_2186->g_785, // p_2186->g_784
        &p_2186->g_49[1], // p_2186->g_823
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_2186->g_822
        {{&p_2186->g_731,&p_2186->g_731,&p_2186->g_731,&p_2186->g_731,&p_2186->g_731},{&p_2186->g_731,&p_2186->g_731,&p_2186->g_731,&p_2186->g_731,&p_2186->g_731},{&p_2186->g_731,&p_2186->g_731,&p_2186->g_731,&p_2186->g_731,&p_2186->g_731},{&p_2186->g_731,&p_2186->g_731,&p_2186->g_731,&p_2186->g_731,&p_2186->g_731}}, // p_2186->g_854
        65529UL, // p_2186->g_871
        &p_2186->g_190, // p_2186->g_877
        0xD9L, // p_2186->g_896
        {0x91L}, // p_2186->g_899
        0x7F23L, // p_2186->g_918
        &p_2186->g_190, // p_2186->g_929
        {0x36L}, // p_2186->g_958
        &p_2186->g_327, // p_2186->g_966
        {{{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966}},{{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966}},{{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966}},{{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966}},{{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966}},{{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966}},{{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966}},{{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966},{&p_2186->g_966,&p_2186->g_966,&p_2186->g_966,&p_2186->g_966}}}, // p_2186->g_965
        {0x581C8FC5F037F3F8L,0x581C8FC5F037F3F8L,0x581C8FC5F037F3F8L,0x581C8FC5F037F3F8L,0x581C8FC5F037F3F8L,0x581C8FC5F037F3F8L,0x581C8FC5F037F3F8L}, // p_2186->g_1005
        0x5780BD7C81CC004EL, // p_2186->g_1020
        {0xA6L}, // p_2186->g_1241
        {1UL}, // p_2186->g_1252
        {65535UL,0UL,65535UL,65535UL,0UL,65535UL}, // p_2186->g_1264
        &p_2186->g_98[1], // p_2186->g_1287
        &p_2186->g_1287, // p_2186->g_1286
        {2UL}, // p_2186->g_1369
        {5UL}, // p_2186->g_1403
        &p_2186->g_731, // p_2186->g_1443
        {0xFF93B5B2L}, // p_2186->g_1656
        (-9L), // p_2186->g_1660
        (-1L), // p_2186->g_1666
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_2186->g_1692
        9UL, // p_2186->g_1712
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2186->g_1720
        &p_2186->g_1720[7], // p_2186->g_1719
        &p_2186->g_1719, // p_2186->g_1718
        &p_2186->g_1718, // p_2186->g_1717
        0x0F071B4BL, // p_2186->g_1751
        {{{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L}},{{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L}},{{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L}},{{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L}},{{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L}},{{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L}},{{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L},{4294967294UL,0xDD9D3FC5L,0x8BDBE35CL,0x1DB5BD0FL,0x7D957679L}}}, // p_2186->g_1756
        &p_2186->g_785, // p_2186->g_1863
        &p_2186->g_501, // p_2186->g_1921
        {&p_2186->g_1921,&p_2186->g_1921,&p_2186->g_1921,&p_2186->g_1921}, // p_2186->g_1920
        0x3146E559L, // p_2186->g_1945
        0x76L, // p_2186->g_2013
        {{{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}},{{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}},{{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}},{{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}},{{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}},{{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}},{{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}},{{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}},{{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}}}, // p_2186->g_2036
        {0x8D95L}, // p_2186->g_2037
        0x1D32L, // p_2186->g_2038
        0x468AL, // p_2186->g_2039
        65530UL, // p_2186->g_2040
        0xE893L, // p_2186->g_2041
        {65527UL,65527UL,65527UL,65527UL}, // p_2186->g_2042
        0UL, // p_2186->g_2043
        {0x2C22L,0x2C22L,0x2C22L}, // p_2186->g_2044
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_2186->g_2045
        1UL, // p_2186->g_2046
        {{0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL},{0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL},{0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL},{0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL},{0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL},{0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL},{0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL,0x198FL,0xDF49L,0x198FL}}, // p_2186->g_2047
        0x8144L, // p_2186->g_2048
        0x9B5FL, // p_2186->g_2049
        0xF052L, // p_2186->g_2050
        0xAFAEL, // p_2186->g_2051
        0UL, // p_2186->g_2052
        {65527UL,0x1EA2L,65527UL,65527UL,0x1EA2L,65527UL,65527UL,0x1EA2L,65527UL}, // p_2186->g_2053
        0x9F0CL, // p_2186->g_2054
        65528UL, // p_2186->g_2055
        {{0x59C7L,1UL,0x59C7L,0x59C7L,1UL},{0x59C7L,1UL,0x59C7L,0x59C7L,1UL},{0x59C7L,1UL,0x59C7L,0x59C7L,1UL},{0x59C7L,1UL,0x59C7L,0x59C7L,1UL},{0x59C7L,1UL,0x59C7L,0x59C7L,1UL}}, // p_2186->g_2056
        {65529UL,65529UL,65529UL,65529UL,65529UL,65529UL,65529UL,65529UL,65529UL}, // p_2186->g_2057
        0x3235L, // p_2186->g_2058
        0xBB0DL, // p_2186->g_2059
        65528UL, // p_2186->g_2060
        0x35C3L, // p_2186->g_2061
        0UL, // p_2186->g_2062
        0xB1B2L, // p_2186->g_2063
        0x8E7AL, // p_2186->g_2064
        0x9743L, // p_2186->g_2065
        0xF50DL, // p_2186->g_2066
        65530UL, // p_2186->g_2067
        0xCF68L, // p_2186->g_2068
        0x9D2AL, // p_2186->g_2069
        65531UL, // p_2186->g_2070
        {{{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL}},{{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL}},{{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL}},{{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL}},{{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL}},{{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL}},{{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL}},{{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL},{0xAA53L,0x614FL,0UL}}}, // p_2186->g_2071
        7UL, // p_2186->g_2072
        {{{65535UL,65535UL,65535UL}},{{65535UL,65535UL,65535UL}},{{65535UL,65535UL,65535UL}},{{65535UL,65535UL,65535UL}},{{65535UL,65535UL,65535UL}},{{65535UL,65535UL,65535UL}},{{65535UL,65535UL,65535UL}}}, // p_2186->g_2073
        {65531UL,65531UL,65531UL,65531UL,65531UL,65531UL,65531UL}, // p_2186->g_2074
        0x8362L, // p_2186->g_2075
        0xFF05L, // p_2186->g_2076
        1UL, // p_2186->g_2077
        5UL, // p_2186->g_2078
        0UL, // p_2186->g_2079
        1UL, // p_2186->g_2080
        0xEC1FL, // p_2186->g_2081
        0UL, // p_2186->g_2082
        65530UL, // p_2186->g_2083
        0UL, // p_2186->g_2084
        1UL, // p_2186->g_2085
        65535UL, // p_2186->g_2086
        0xC240L, // p_2186->g_2087
        1UL, // p_2186->g_2088
        0x3E66L, // p_2186->g_2089
        {{0xA044L,0x672BL,0xA044L,0xA044L,0x672BL},{0xA044L,0x672BL,0xA044L,0xA044L,0x672BL},{0xA044L,0x672BL,0xA044L,0xA044L,0x672BL}}, // p_2186->g_2090
        65534UL, // p_2186->g_2091
        {0xD275L,0xD275L,0xD275L,0xD275L,0xD275L,0xD275L,0xD275L,0xD275L}, // p_2186->g_2092
        8UL, // p_2186->g_2093
        0x9C81L, // p_2186->g_2094
        {{{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL}},{{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL}},{{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL}},{{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL}},{{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL}},{{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL}},{{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL},{65528UL,65535UL,65535UL,65528UL}}}, // p_2186->g_2095
        0UL, // p_2186->g_2096
        {65535UL,65535UL,65535UL,65535UL,65535UL,65535UL}, // p_2186->g_2097
        {0x7D52L,0x7D52L,0x7D52L}, // p_2186->g_2098
        65533UL, // p_2186->g_2099
        65534UL, // p_2186->g_2100
        65527UL, // p_2186->g_2101
        {{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}},{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}},{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}},{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}},{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}},{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}},{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}},{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}},{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}},{{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060},{&p_2186->g_2099,&p_2186->g_2060,&p_2186->g_2096,&p_2186->g_2075,&p_2186->g_2063,&p_2186->g_2060}}}, // p_2186->g_2035
        &p_2186->g_2035[2][0][1], // p_2186->g_2034
        &p_2186->g_2034, // p_2186->g_2033
        &p_2186->g_2033, // p_2186->g_2032
        sequence_input[get_global_id(0)], // p_2186->global_0_offset
        sequence_input[get_global_id(1)], // p_2186->global_1_offset
        sequence_input[get_global_id(2)], // p_2186->global_2_offset
        sequence_input[get_local_id(0)], // p_2186->local_0_offset
        sequence_input[get_local_id(1)], // p_2186->local_1_offset
        sequence_input[get_local_id(2)], // p_2186->local_2_offset
        sequence_input[get_group_id(0)], // p_2186->group_0_offset
        sequence_input[get_group_id(1)], // p_2186->group_1_offset
        sequence_input[get_group_id(2)], // p_2186->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_2187 = c_2188;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2186);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2186->g_6, "p_2186->g_6", print_hash_value);
    transparent_crc(p_2186->g_8, "p_2186->g_8", print_hash_value);
    transparent_crc(p_2186->g_32, "p_2186->g_32", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2186->g_49[i], "p_2186->g_49[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_72, "p_2186->g_72", print_hash_value);
    transparent_crc(p_2186->g_80, "p_2186->g_80", print_hash_value);
    transparent_crc(p_2186->g_94, "p_2186->g_94", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2186->g_96[i], "p_2186->g_96[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2186->g_98[i], "p_2186->g_98[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_116, "p_2186->g_116", print_hash_value);
    transparent_crc(p_2186->g_134, "p_2186->g_134", print_hash_value);
    transparent_crc(p_2186->g_136, "p_2186->g_136", print_hash_value);
    transparent_crc(p_2186->g_143, "p_2186->g_143", print_hash_value);
    transparent_crc(p_2186->g_158, "p_2186->g_158", print_hash_value);
    transparent_crc(p_2186->g_170, "p_2186->g_170", print_hash_value);
    transparent_crc(p_2186->g_216.f0, "p_2186->g_216.f0", print_hash_value);
    transparent_crc(p_2186->g_251.f0, "p_2186->g_251.f0", print_hash_value);
    transparent_crc(p_2186->g_269, "p_2186->g_269", print_hash_value);
    transparent_crc(p_2186->g_327, "p_2186->g_327", print_hash_value);
    transparent_crc(p_2186->g_408.f0, "p_2186->g_408.f0", print_hash_value);
    transparent_crc(p_2186->g_581.f0, "p_2186->g_581.f0", print_hash_value);
    transparent_crc(p_2186->g_613, "p_2186->g_613", print_hash_value);
    transparent_crc(p_2186->g_646, "p_2186->g_646", print_hash_value);
    transparent_crc(p_2186->g_670, "p_2186->g_670", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2186->g_686[i][j][k], "p_2186->g_686[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2186->g_871, "p_2186->g_871", print_hash_value);
    transparent_crc(p_2186->g_896, "p_2186->g_896", print_hash_value);
    transparent_crc(p_2186->g_899.f0, "p_2186->g_899.f0", print_hash_value);
    transparent_crc(p_2186->g_918, "p_2186->g_918", print_hash_value);
    transparent_crc(p_2186->g_958.f0, "p_2186->g_958.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2186->g_1005[i], "p_2186->g_1005[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_1020, "p_2186->g_1020", print_hash_value);
    transparent_crc(p_2186->g_1241.f0, "p_2186->g_1241.f0", print_hash_value);
    transparent_crc(p_2186->g_1252.f0, "p_2186->g_1252.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2186->g_1264[i], "p_2186->g_1264[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_1369.f0, "p_2186->g_1369.f0", print_hash_value);
    transparent_crc(p_2186->g_1403.f0, "p_2186->g_1403.f0", print_hash_value);
    transparent_crc(p_2186->g_1656.f0, "p_2186->g_1656.f0", print_hash_value);
    transparent_crc(p_2186->g_1660, "p_2186->g_1660", print_hash_value);
    transparent_crc(p_2186->g_1666, "p_2186->g_1666", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2186->g_1692[i], "p_2186->g_1692[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_1712, "p_2186->g_1712", print_hash_value);
    transparent_crc(p_2186->g_1751, "p_2186->g_1751", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2186->g_1756[i][j][k], "p_2186->g_1756[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2186->g_1945, "p_2186->g_1945", print_hash_value);
    transparent_crc(p_2186->g_2013, "p_2186->g_2013", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2186->g_2036[i][j][k], "p_2186->g_2036[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2186->g_2037[i], "p_2186->g_2037[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_2038, "p_2186->g_2038", print_hash_value);
    transparent_crc(p_2186->g_2039, "p_2186->g_2039", print_hash_value);
    transparent_crc(p_2186->g_2040, "p_2186->g_2040", print_hash_value);
    transparent_crc(p_2186->g_2041, "p_2186->g_2041", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2186->g_2042[i], "p_2186->g_2042[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_2043, "p_2186->g_2043", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2186->g_2044[i], "p_2186->g_2044[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2186->g_2045[i], "p_2186->g_2045[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_2046, "p_2186->g_2046", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2186->g_2047[i][j], "p_2186->g_2047[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2186->g_2048, "p_2186->g_2048", print_hash_value);
    transparent_crc(p_2186->g_2049, "p_2186->g_2049", print_hash_value);
    transparent_crc(p_2186->g_2050, "p_2186->g_2050", print_hash_value);
    transparent_crc(p_2186->g_2051, "p_2186->g_2051", print_hash_value);
    transparent_crc(p_2186->g_2052, "p_2186->g_2052", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2186->g_2053[i], "p_2186->g_2053[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_2054, "p_2186->g_2054", print_hash_value);
    transparent_crc(p_2186->g_2055, "p_2186->g_2055", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2186->g_2056[i][j], "p_2186->g_2056[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2186->g_2057[i], "p_2186->g_2057[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_2058, "p_2186->g_2058", print_hash_value);
    transparent_crc(p_2186->g_2059, "p_2186->g_2059", print_hash_value);
    transparent_crc(p_2186->g_2060, "p_2186->g_2060", print_hash_value);
    transparent_crc(p_2186->g_2061, "p_2186->g_2061", print_hash_value);
    transparent_crc(p_2186->g_2062, "p_2186->g_2062", print_hash_value);
    transparent_crc(p_2186->g_2063, "p_2186->g_2063", print_hash_value);
    transparent_crc(p_2186->g_2064, "p_2186->g_2064", print_hash_value);
    transparent_crc(p_2186->g_2065, "p_2186->g_2065", print_hash_value);
    transparent_crc(p_2186->g_2066, "p_2186->g_2066", print_hash_value);
    transparent_crc(p_2186->g_2067, "p_2186->g_2067", print_hash_value);
    transparent_crc(p_2186->g_2068, "p_2186->g_2068", print_hash_value);
    transparent_crc(p_2186->g_2069, "p_2186->g_2069", print_hash_value);
    transparent_crc(p_2186->g_2070, "p_2186->g_2070", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2186->g_2071[i][j][k], "p_2186->g_2071[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2186->g_2072, "p_2186->g_2072", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2186->g_2073[i][j][k], "p_2186->g_2073[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2186->g_2074[i], "p_2186->g_2074[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_2075, "p_2186->g_2075", print_hash_value);
    transparent_crc(p_2186->g_2076, "p_2186->g_2076", print_hash_value);
    transparent_crc(p_2186->g_2077, "p_2186->g_2077", print_hash_value);
    transparent_crc(p_2186->g_2078, "p_2186->g_2078", print_hash_value);
    transparent_crc(p_2186->g_2079, "p_2186->g_2079", print_hash_value);
    transparent_crc(p_2186->g_2080, "p_2186->g_2080", print_hash_value);
    transparent_crc(p_2186->g_2081, "p_2186->g_2081", print_hash_value);
    transparent_crc(p_2186->g_2082, "p_2186->g_2082", print_hash_value);
    transparent_crc(p_2186->g_2083, "p_2186->g_2083", print_hash_value);
    transparent_crc(p_2186->g_2084, "p_2186->g_2084", print_hash_value);
    transparent_crc(p_2186->g_2085, "p_2186->g_2085", print_hash_value);
    transparent_crc(p_2186->g_2086, "p_2186->g_2086", print_hash_value);
    transparent_crc(p_2186->g_2087, "p_2186->g_2087", print_hash_value);
    transparent_crc(p_2186->g_2088, "p_2186->g_2088", print_hash_value);
    transparent_crc(p_2186->g_2089, "p_2186->g_2089", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2186->g_2090[i][j], "p_2186->g_2090[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2186->g_2091, "p_2186->g_2091", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2186->g_2092[i], "p_2186->g_2092[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_2093, "p_2186->g_2093", print_hash_value);
    transparent_crc(p_2186->g_2094, "p_2186->g_2094", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2186->g_2095[i][j][k], "p_2186->g_2095[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2186->g_2096, "p_2186->g_2096", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2186->g_2097[i], "p_2186->g_2097[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2186->g_2098[i], "p_2186->g_2098[i]", print_hash_value);

    }
    transparent_crc(p_2186->g_2099, "p_2186->g_2099", print_hash_value);
    transparent_crc(p_2186->g_2100, "p_2186->g_2100", print_hash_value);
    transparent_crc(p_2186->g_2101, "p_2186->g_2101", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 56; i++)
            transparent_crc(p_2186->g_special_values[i + 56 * get_linear_group_id()], "p_2186->g_special_values[i + 56 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 56; i++)
            transparent_crc(p_2186->l_special_values[i], "p_2186->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
