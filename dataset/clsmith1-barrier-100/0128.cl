// ---fake_divergence ---inter_thread_comm -g 55,85,1 -l 55,1,1
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

__constant uint32_t permutations[10][55] = {
{38,48,44,53,41,37,26,3,4,43,16,35,39,21,54,27,9,8,18,49,1,22,28,52,17,33,45,20,19,24,31,51,34,30,14,12,6,46,10,0,15,40,13,5,11,50,25,42,36,23,32,7,29,47,2}, // permutation 0
{36,45,17,46,1,20,51,38,30,16,31,43,27,4,11,7,12,37,34,24,5,49,15,39,54,13,47,18,50,0,19,44,26,32,41,23,14,2,42,8,10,35,6,33,40,21,52,53,25,48,29,28,22,3,9}, // permutation 1
{39,3,50,37,54,30,52,1,15,23,0,6,38,46,2,21,13,25,8,5,53,34,26,28,47,14,48,20,16,36,4,17,7,19,45,40,29,18,51,32,41,31,43,11,49,42,33,12,24,10,44,9,27,22,35}, // permutation 2
{22,34,18,8,20,5,52,38,28,11,25,49,26,48,51,45,41,29,53,32,27,16,35,17,40,42,44,9,39,1,31,4,2,24,0,3,46,14,54,13,33,10,47,36,30,15,19,12,6,43,23,37,21,50,7}, // permutation 3
{22,24,41,36,3,10,2,19,26,54,43,32,8,46,53,30,39,35,37,5,28,4,21,33,49,9,0,52,38,25,50,18,1,7,42,45,29,44,12,31,6,13,20,51,27,34,14,48,15,40,17,47,16,23,11}, // permutation 4
{21,34,29,32,52,2,35,33,45,22,17,15,16,25,11,3,12,36,51,24,4,40,8,14,53,46,49,9,0,7,1,19,42,47,48,13,43,20,23,5,39,38,41,31,18,27,28,37,26,44,10,6,54,30,50}, // permutation 5
{27,41,19,2,13,49,3,47,9,12,45,5,25,46,50,17,22,36,20,33,0,48,38,29,37,21,11,24,6,30,1,10,42,32,15,8,16,4,53,40,26,31,14,39,44,52,43,35,7,54,23,34,18,51,28}, // permutation 6
{2,54,14,50,15,24,25,39,6,49,8,32,35,36,21,38,5,17,19,22,43,4,48,3,51,33,45,23,29,18,52,37,46,53,0,30,20,31,42,9,13,1,47,34,44,28,7,16,41,10,27,26,40,12,11}, // permutation 7
{24,48,29,32,21,3,11,19,0,52,44,13,34,33,37,10,25,7,4,20,17,47,39,51,36,49,35,22,53,31,2,18,9,28,6,1,41,27,43,38,5,23,30,26,54,15,16,14,12,50,45,40,46,8,42}, // permutation 8
{23,30,21,34,26,20,28,15,51,17,14,29,39,0,9,3,4,47,22,45,36,46,31,18,43,24,49,40,48,1,52,8,2,37,41,6,13,32,11,33,7,54,38,19,44,12,50,53,42,27,16,10,5,35,25} // permutation 9
};

// Seed: 128

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint64_t  f0;
   volatile uint16_t  f1;
   int8_t * f2;
   int64_t  f3;
   uint64_t  f4;
};

union U1 {
   volatile uint16_t  f0;
   volatile int32_t  f1;
   volatile int32_t  f2;
};

union U2 {
   uint32_t  f0;
};

union U3 {
   volatile uint64_t  f0;
};

union U4 {
   uint32_t  f0;
};

struct S5 {
    volatile int32_t g_2;
    int32_t g_3;
    volatile int32_t g_6[5][2];
    volatile int32_t g_7;
    int32_t g_8;
    uint8_t g_12;
    volatile int32_t g_15;
    volatile int32_t g_16[9][10];
    volatile int32_t g_17;
    int32_t g_18;
    int8_t g_60[6][7];
    int8_t *g_59;
    volatile union U1 g_64[1][2];
    volatile union U1 * volatile g_63;
    union U2 g_80;
    uint16_t g_87;
    int32_t g_95;
    uint64_t g_114;
    uint16_t g_121[2][10];
    uint16_t g_129;
    uint8_t g_159[3];
    uint8_t g_162;
    int16_t g_164;
    uint16_t g_172[5];
    union U1 g_176;
    volatile union U1 g_178;
    volatile union U1 *g_177[3][10];
    uint8_t *g_180;
    uint8_t * volatile *g_179;
    uint16_t g_185;
    union U1 g_200;
    int16_t g_225;
    uint64_t g_231;
    uint32_t g_242;
    uint32_t g_249[4][4][7];
    int64_t g_274;
    uint32_t g_292;
    uint32_t g_312;
    volatile union U0 g_317;
    volatile union U0 *g_316;
    uint32_t g_322;
    int32_t g_367;
    int64_t g_368;
    int32_t g_370;
    int8_t g_373;
    uint16_t g_374;
    int32_t g_381;
    int8_t g_382;
    uint32_t g_383;
    int32_t g_390;
    int16_t g_391;
    int8_t g_392;
    uint32_t g_393;
    volatile union U4 g_415[1][2][7];
    volatile uint32_t g_447;
    volatile uint32_t *g_446[7];
    volatile uint32_t ** volatile g_445;
    int32_t *g_456[6][6];
    int32_t ** volatile g_455;
    uint8_t ***g_473;
    uint8_t ****g_472;
    volatile union U3 g_519;
    union U4 g_544;
    union U4 g_546;
    union U1 g_582[10];
    uint32_t g_605[6][3][2];
    volatile union U3 g_637;
    volatile union U0 g_677[3];
    uint32_t *g_689;
    uint32_t **g_688;
    volatile int64_t g_737;
    volatile int64_t *g_736;
    volatile int64_t ** volatile g_735[7];
    volatile int64_t ** volatile * volatile g_734[1][8][4];
    volatile union U1 g_800[2][10];
    union U3 g_853;
    union U3 *g_855;
    volatile int32_t g_883;
    union U1 g_896;
    int32_t **g_906;
    union U3 g_914;
    volatile uint8_t g_924;
    union U0 g_943[2][4];
    volatile union U3 g_1010;
    union U2 *g_1017;
    union U2 ** volatile g_1016;
    union U1 g_1031[8][6];
    uint8_t *** volatile g_1050;
    int64_t *g_1057;
    int64_t **g_1056[8][2][3];
    int64_t *** volatile g_1055;
    int32_t *g_1064;
    int32_t * volatile * volatile g_1063;
    int32_t * volatile * volatile * volatile g_1065;
    volatile union U3 g_1086;
    union U3 g_1096;
    volatile union U1 g_1282[6];
    int32_t g_1417[9][7][3];
    int8_t g_1418;
    int32_t ** volatile g_1488[8];
    int32_t ** volatile g_1489;
    uint8_t g_1536[2];
    union U1 g_1556;
    uint32_t g_1567;
    union U3 g_1627;
    volatile union U3 g_1630;
    union U1 *g_1676;
    union U1 ** volatile g_1675;
    volatile union U1 g_1692;
    uint16_t **g_1701;
    uint16_t ***g_1700;
    volatile int32_t *g_1712;
    volatile int32_t ** volatile g_1711;
    uint32_t g_1737;
    union U0 ** volatile g_1743;
    uint64_t g_1773;
    union U3 g_1863;
    union U1 ** volatile g_1880;
    volatile union U0 g_1885;
    volatile union U3 g_1902[4][9];
    volatile union U0 g_1915;
    uint32_t g_1927;
    int32_t ***g_1950;
    int64_t g_2000;
    uint8_t g_2019;
    uint64_t *g_2103;
    int64_t *g_2110;
    int64_t **g_2109;
    int64_t ***g_2108;
    int64_t ****g_2107;
    int8_t g_2129;
    volatile int32_t ** volatile g_2134[2][8];
    volatile int32_t ** volatile g_2135[1][9];
    volatile int32_t ** volatile g_2136[8];
    volatile int32_t ** volatile g_2137;
    uint8_t g_2154;
    volatile int8_t g_2185[2];
    volatile int64_t g_2204;
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
uint8_t  func_1(struct S5 * p_2213);
union U1  func_19(int32_t * p_20, int8_t * p_21, struct S5 * p_2213);
int32_t * func_22(int32_t * p_23, struct S5 * p_2213);
int32_t * func_24(int8_t * p_25, int32_t * p_26, union U4  p_27, uint64_t  p_28, union U4  p_29, struct S5 * p_2213);
int8_t * func_30(uint64_t  p_31, int32_t * p_32, uint16_t  p_33, union U2  p_34, struct S5 * p_2213);
int32_t  func_41(uint32_t  p_42, struct S5 * p_2213);
union U1 * func_43(union U1 * p_44, int32_t * p_45, union U2  p_46, int32_t * p_47, int8_t * p_48, struct S5 * p_2213);
int16_t  func_49(int32_t * p_50, int8_t * p_51, int32_t  p_52, struct S5 * p_2213);
int8_t * func_54(int32_t * p_55, int32_t  p_56, int32_t * p_57, int8_t * p_58, struct S5 * p_2213);
int8_t  func_72(uint64_t  p_73, int32_t * p_74, int32_t * p_75, struct S5 * p_2213);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2213->g_comm_values p_2213->g_6 p_2213->g_12 p_2213->g_1737 p_2213->g_1711 p_2213->g_1712 p_2213->g_3 p_2213->g_1055 p_2213->g_1056 p_2213->g_1057 p_2213->g_368 p_2213->g_689 p_2213->g_292 p_2213->g_853.f0 p_2213->g_1773 p_2213->g_1064 p_2213->g_121 p_2213->g_906 p_2213->g_8 p_2213->g_7 p_2213->g_381 p_2213->g_605 p_2213->g_59 p_2213->g_455 p_2213->g_456 p_2213->g_1950 p_2213->g_392 p_2213->g_225 p_2213->g_1536 p_2213->g_544.f0 p_2213->g_546.f0 p_2213->g_688 p_2213->g_312 p_2213->g_391 p_2213->g_114 p_2213->g_60 p_2213->g_16 p_2213->g_677.f0 p_2213->g_390 p_2213->g_2000 p_2213->g_1675 p_2213->g_1031 p_2213->g_1676 p_2213->g_896.f0 p_2213->g_274 p_2213->g_2019 p_2213->g_162 p_2213->g_1417 p_2213->g_1863 p_2213->g_943.f0 p_2213->g_546 p_2213->g_1927 p_2213->g_1065 p_2213->g_1063 p_2213->g_924 p_2213->g_373 p_2213->g_1567 p_2213->g_582.f0 p_2213->g_374 p_2213->g_242 p_2213->g_80.f0 p_2213->g_231 p_2213->g_1627 p_2213->g_1630 p_2213->g_1556.f0 p_2213->g_883 p_2213->g_2107 p_2213->g_2103 p_2213->g_185 p_2213->g_249 p_2213->g_2154 p_2213->g_1017 p_2213->g_80 p_2213->g_415 p_2213->g_63 p_2213->g_64 p_2213->g_95 p_2213->g_382 p_2213->g_1010.f0 p_2213->g_370 p_2213->g_855 p_2213->g_853 p_2213->l_comm_values p_2213->g_2185
 * writes: p_2213->g_3 p_2213->g_8 p_2213->g_12 p_2213->g_18 p_2213->g_1737 p_2213->g_390 p_2213->g_121 p_2213->g_456 p_2213->g_1950 p_2213->g_60 p_2213->g_392 p_2213->g_391 p_2213->g_225 p_2213->g_322 p_2213->g_1676 p_2213->g_689 p_2213->g_943.f0 p_2213->g_114 p_2213->g_162 p_2213->g_368 p_2213->g_2019 p_2213->g_7 p_2213->g_172 p_2213->g_855 p_2213->g_59 p_2213->g_1418 p_2213->g_1536 p_2213->g_129 p_2213->g_231 p_2213->g_80.f0 p_2213->g_16 p_2213->g_1056 p_2213->g_2107 p_2213->g_2129 p_2213->g_1712 p_2213->g_185 p_2213->g_383 p_2213->g_2154 p_2213->g_373 p_2213->g_943.f4 p_2213->g_312 p_2213->g_1417 p_2213->g_159 p_2213->g_374 p_2213->g_164 p_2213->g_274 p_2213->g_242 p_2213->g_370 p_2213->g_382 p_2213->g_472 p_2213->g_393 p_2213->g_292
 */
uint8_t  func_1(struct S5 * p_2213)
{ /* block id: 4 */
    uint32_t l_1409 = 9UL;
    int32_t l_1415 = 0x1784276FL;
    int32_t *l_1451 = &p_2213->g_3;
    int16_t l_1732 = (-9L);
    int32_t l_1733 = (-6L);
    int32_t l_1734 = 0x66FCD6B5L;
    int32_t l_1735[2][7][6] = {{{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L}},{{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L},{0x55C23964L,0x58E94253L,1L,1L,0x6FE7653FL,0x55C23964L}}};
    int64_t l_1736 = 0x4EA9EB635727E44AL;
    union U0 *l_1742 = &p_2213->g_943[1][0];
    int16_t l_1754 = (-1L);
    union U2 l_1770 = {4294967294UL};
    uint16_t l_1777[5] = {0x603AL,0x603AL,0x603AL,0x603AL,0x603AL};
    uint16_t l_1783 = 0xDA87L;
    uint16_t ***l_1804[2][8][2] = {{{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701}},{{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701},{&p_2213->g_1701,&p_2213->g_1701}}};
    uint32_t l_1806 = 0x95747D46L;
    int64_t *l_1828[2];
    union U3 *l_1862 = &p_2213->g_1863;
    uint32_t l_1928 = 1UL;
    uint8_t l_1934[2][5];
    int16_t l_1999 = 0x4231L;
    uint8_t l_2017 = 1UL;
    union U1 **l_2057 = &p_2213->g_1676;
    uint16_t l_2072 = 0x7CBAL;
    uint32_t l_2073 = 0x2D653F4DL;
    uint16_t l_2096 = 7UL;
    uint64_t *l_2104 = (void*)0;
    uint8_t ****l_2180 = &p_2213->g_473;
    uint16_t l_2181[5][3][6] = {{{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL}},{{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL}},{{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL}},{{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL}},{{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL},{0x37ADL,65527UL,0UL,0xA547L,7UL,1UL}}};
    uint32_t l_2212[5];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1828[i] = (void*)0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
            l_1934[i][j] = 3UL;
    }
    for (i = 0; i < 5; i++)
        l_2212[i] = 6UL;
lbl_1937:
    for (p_2213->g_3 = 0; (p_2213->g_3 <= (-25)); p_2213->g_3--)
    { /* block id: 7 */
        uint32_t l_1419 = 1UL;
        union U2 l_1420[7] = {{4294967289UL},{4294967289UL},{4294967289UL},{4294967289UL},{4294967289UL},{4294967289UL},{4294967289UL}};
        union U4 l_1453 = {0xAEC2616FL};
        int32_t l_1707 = 0x4F1723AFL;
        int32_t *l_1724 = &p_2213->g_381;
        int32_t *l_1725 = &p_2213->g_1417[2][6][0];
        int32_t *l_1726 = (void*)0;
        int32_t *l_1727 = &p_2213->g_95;
        int32_t *l_1728 = &p_2213->g_1417[3][2][2];
        int32_t *l_1729 = &p_2213->g_8;
        int32_t *l_1730 = &p_2213->g_95;
        int32_t *l_1731[5][7][3] = {{{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707}},{{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707}},{{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707}},{{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707}},{{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707},{&p_2213->g_1417[3][2][2],&p_2213->g_95,&l_1707}}};
        volatile int32_t *l_1740 = (void*)0;
        int i, j, k;
        if (p_2213->g_comm_values[p_2213->tid])
            break;
        for (p_2213->g_8 = 0; (p_2213->g_8 < (-9)); p_2213->g_8 = safe_sub_func_uint8_t_u_u(p_2213->g_8, 9))
        { /* block id: 11 */
            int32_t *l_11 = (void*)0;
            p_2213->g_12 ^= p_2213->g_6[3][1];
            for (p_2213->g_12 = 27; (p_2213->g_12 < 12); --p_2213->g_12)
            { /* block id: 15 */
                uint8_t l_1414[2];
                uint16_t ***l_1703 = &p_2213->g_1701;
                uint8_t ****l_1717 = (void*)0;
                int i;
                for (i = 0; i < 2; i++)
                    l_1414[i] = 249UL;
                for (p_2213->g_18 = 0; (p_2213->g_18 <= 1); p_2213->g_18 += 1)
                { /* block id: 18 */
                    int32_t *l_1416 = &p_2213->g_1417[3][2][2];
                    int8_t **l_1450 = &p_2213->g_59;
                    union U4 l_1452 = {0UL};
                    int i, j;
                    (1 + 1);
                }
                if (l_1414[0])
                    continue;
            }
        }
        p_2213->g_1737--;
        l_1740 = (*p_2213->g_1711);
    }
    if (((((*l_1451) | (*l_1451)) , &l_1451) == (void*)0))
    { /* block id: 902 */
        union U4 l_1741 = {0xFCA47080L};
        union U0 **l_1744 = &l_1742;
        int32_t *l_1745[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int16_t l_1746 = (-2L);
        uint8_t l_1747[10][2] = {{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL},{2UL,2UL}};
        uint16_t l_1757[4][6] = {{65532UL,65532UL,0x5FE0L,65531UL,0x1F23L,65531UL},{65532UL,65532UL,0x5FE0L,65531UL,0x1F23L,65531UL},{65532UL,65532UL,0x5FE0L,65531UL,0x1F23L,65531UL},{65532UL,65532UL,0x5FE0L,65531UL,0x1F23L,65531UL}};
        uint32_t l_1774 = 4294967295UL;
        uint16_t *l_1778[10][2] = {{&l_1757[1][5],&l_1777[0]},{&l_1757[1][5],&l_1777[0]},{&l_1757[1][5],&l_1777[0]},{&l_1757[1][5],&l_1777[0]},{&l_1757[1][5],&l_1777[0]},{&l_1757[1][5],&l_1777[0]},{&l_1757[1][5],&l_1777[0]},{&l_1757[1][5],&l_1777[0]},{&l_1757[1][5],&l_1777[0]},{&l_1757[1][5],&l_1777[0]}};
        int32_t l_1835[3][10] = {{4L,(-1L),(-6L),(-1L),4L,4L,(-1L),(-6L),(-1L),4L},{4L,(-1L),(-6L),(-1L),4L,4L,(-1L),(-6L),(-1L),4L},{4L,(-1L),(-6L),(-1L),4L,4L,(-1L),(-6L),(-1L),4L}};
        uint32_t l_1879 = 0x0C75B897L;
        union U2 **l_1923 = (void*)0;
        int32_t ***l_1949 = &p_2213->g_906;
        uint8_t l_1998 = 0xD6L;
        uint32_t l_2065[9] = {0UL,0x7B0E11A9L,0UL,0UL,0x7B0E11A9L,0UL,0UL,0x7B0E11A9L,0UL};
        int64_t l_2106 = (-1L);
        uint16_t l_2130 = 65527UL;
        uint32_t **l_2146 = (void*)0;
        uint8_t l_2170 = 0x46L;
        int16_t l_2173 = 0x37C1L;
        int8_t l_2206 = (-1L);
        int i, j;
        (*l_1744) = (l_1741 , l_1742);
        --l_1747[0][0];
        l_1734 &= (((0x178A83CEDF6393ABL | (1UL < (GROUP_DIVERGE(2, 1) == (safe_mod_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((0x6943L < l_1754) && (((void*)0 != &p_2213->g_1063) <= ((safe_sub_func_uint8_t_u_u((0x1906932A0E5103C9L ^ (*l_1451)), (0x6D5E41A8A18D4C6EL == (***p_2213->g_1055)))) , 0x010319F8L))), l_1757[2][1])), 0x04L))))) , (*p_2213->g_689)) > (*l_1451));
        if ((safe_div_func_uint16_t_u_u((!(safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(p_2213->g_853.f0, 2)), (safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u((safe_div_func_int32_t_s_s(((l_1770 , &p_2213->g_906) != &p_2213->g_906), 0x0B7528C4L)), (safe_add_func_uint32_t_u_u((p_2213->g_1773 | (((*l_1451) = (*l_1451)) <= (((l_1732 , (p_2213->g_121[0][2] ^= (((*p_2213->g_1064) = ((l_1774++) && 0x8CL)) , l_1777[0]))) && 0x5B45L) > (*p_2213->g_689)))), 0x6EF27382L)))), 0x6DA2D578L))))), 0x1ECEL)))
        { /* block id: 910 */
            uint8_t l_1799[9][8][3] = {{{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL}},{{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL}},{{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL}},{{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL}},{{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL}},{{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL}},{{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL}},{{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL}},{{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL},{1UL,0x9DL,0UL}}};
            int64_t *l_1827 = (void*)0;
            int64_t *l_1830 = &p_2213->g_943[1][0].f3;
            int32_t l_1832 = 0x656F50BBL;
            uint8_t l_1876 = 0UL;
            int8_t l_1930 = 5L;
            uint64_t l_1931 = 18446744073709551615UL;
            int32_t l_1941 = 0x4F1E68E9L;
            int i, j, k;
lbl_1938:
            (*p_2213->g_906) = &l_1734;
            for (l_1746 = 0; (l_1746 >= (-21)); l_1746--)
            { /* block id: 914 */
                uint16_t l_1798 = 65526UL;
                uint16_t ****l_1805 = &p_2213->g_1700;
                int32_t l_1831 = 0x20684C02L;
                int32_t l_1836 = 0L;
                uint32_t l_1847[9];
                union U1 **l_1910 = &p_2213->g_1676;
                union U1 ***l_1909 = &l_1910;
                uint64_t l_1929[7] = {1UL,0x1C8C37E72653B0F0L,1UL,1UL,0x1C8C37E72653B0F0L,1UL,1UL};
                int i;
                for (i = 0; i < 9; i++)
                    l_1847[i] = 0x8E12B6A3L;
                (1 + 1);
            }
            if (p_2213->g_8)
                goto lbl_1937;
            if (((*l_1451) & 0x06DA9005763FF891L))
            { /* block id: 980 */
                return l_1832;
            }
            else
            { /* block id: 982 */
                int32_t l_1948 = (-8L);
                union U2 l_1974 = {0xAAE59B50L};
                if (p_2213->g_8)
                    goto lbl_1938;
                (*l_1451) = (safe_rshift_func_uint16_t_u_s((l_1941 & (0x527BL >= (((*l_1451) != ((*p_2213->g_59) = (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2213->local_1_offset, get_local_id(1), 10), ((*p_2213->g_1712) ^ (((((safe_div_func_int32_t_s_s((p_2213->g_381 , (((~((safe_rshift_func_int8_t_s_s(l_1948, 5)) & (p_2213->g_605[5][2][1] != (l_1949 != (p_2213->g_1950 = &p_2213->g_906))))) , GROUP_DIVERGE(0, 1)) & (*l_1451))), l_1799[6][1][0])) , (*l_1451)) , 247UL) < l_1799[4][0][0]) >= 0x2C68L)))))) | (*l_1451)))), 10));
                (**p_2213->g_1950) = (*p_2213->g_455);
                for (p_2213->g_392 = (-23); (p_2213->g_392 > 2); p_2213->g_392 = safe_add_func_int32_t_s_s(p_2213->g_392, 3))
                { /* block id: 990 */
                    int32_t ****l_1972 = &p_2213->g_1950;
                    int16_t *l_1973 = &l_1746;
                    (*l_1451) = (((*l_1451) & (((((safe_div_func_int8_t_s_s((l_1832 = ((p_2213->g_391 |= (l_1931 == ((+(safe_rshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_u(((((*l_1973) = (safe_lshift_func_int8_t_s_s(l_1948, (safe_unary_minus_func_uint16_t_u((((safe_add_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(p_2213->g_225, 13)), 0x770BL)), ((safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_2213->local_1_offset, get_local_id(1), 10), (*p_2213->g_1057))) || ((safe_add_func_uint16_t_u_u(p_2213->g_1536[1], (((((*l_1972) = &p_2213->g_906) != (p_2213->g_544.f0 , &p_2213->g_1488[4])) , l_1948) && p_2213->g_546.f0))) & 3L)))) == (***p_2213->g_1055)) | (*l_1451))))))) > p_2213->g_8) < (**p_2213->g_688)), 7)) != l_1948), p_2213->g_312))) | 0x522DL))) && 0L)), p_2213->g_114)) || (*l_1451)) > 0xC66179C2L) , l_1974) , l_1799[7][4][2])) != (*p_2213->g_59));
                    if ((*l_1451))
                        continue;
                }
            }
        }
        else
        { /* block id: 999 */
            int16_t *l_1995[4][4] = {{&p_2213->g_391,&p_2213->g_391,&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391,&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391,&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391,&p_2213->g_391,&p_2213->g_391}};
            int32_t l_2001 = 1L;
            int8_t *l_2009 = &p_2213->g_373;
            int64_t **l_2055 = &p_2213->g_1057;
            union U4 **l_2056 = (void*)0;
            uint64_t *l_2058 = &p_2213->g_943[1][0].f0;
            int32_t l_2059 = 0x59687AAEL;
            int16_t l_2060 = 0x19EDL;
            int64_t ***l_2067[6];
            int64_t ****l_2066 = &l_2067[5];
            uint8_t l_2075 = 0x4CL;
            int32_t l_2081[10][4][6] = {{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}},{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}},{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}},{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}},{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}},{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}},{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}},{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}},{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}},{{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL},{0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL,0x6F7B0DDAL}}};
            uint64_t l_2203 = 18446744073709551611UL;
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_2067[i] = (void*)0;
            l_2001 |= (safe_rshift_func_int8_t_s_u((safe_div_func_int64_t_s_s((!(((*p_2213->g_59) | (~((safe_sub_func_int8_t_s_s((((((safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_s((safe_div_func_uint32_t_u_u(((safe_add_func_int8_t_s_s((-1L), (safe_lshift_func_int16_t_s_u(1L, (p_2213->g_16[3][1] , (p_2213->g_677[2].f0 || (((p_2213->g_391 = (p_2213->g_225 = (safe_sub_func_uint32_t_u_u(1UL, (p_2213->g_390 || 0x4B66L))))) != (safe_rshift_func_uint16_t_u_s(0UL, 14))) != GROUP_DIVERGE(0, 1)))))))) && (*l_1451)), (*l_1451))), 7)) | l_1998), (*p_2213->g_689))), l_1999)) != (**p_2213->g_688)) ^ (-1L)) >= p_2213->g_2000) & GROUP_DIVERGE(0, 1)), (-1L))) & (*l_1451)))) != 0x0EL)), (-10L))), 2));
            for (p_2213->g_322 = 25; (p_2213->g_322 < 38); p_2213->g_322 = safe_add_func_int32_t_s_s(p_2213->g_322, 3))
            { /* block id: 1005 */
                int32_t l_2008[2];
                int32_t ***l_2014 = &p_2213->g_906;
                uint32_t l_2015 = 4294967290UL;
                int64_t *l_2016[3][3] = {{&p_2213->g_2000,&p_2213->g_2000,&p_2213->g_2000},{&p_2213->g_2000,&p_2213->g_2000,&p_2213->g_2000},{&p_2213->g_2000,&p_2213->g_2000,&p_2213->g_2000}};
                int16_t l_2018 = (-9L);
                int8_t l_2040 = 0x5AL;
                int i, j;
                for (i = 0; i < 2; i++)
                    l_2008[i] = 0x0D63BD27L;
                p_2213->g_2019 ^= ((safe_add_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((l_2008[1] <= ((((l_2018 = (l_2017 |= ((*p_2213->g_1057) = (0UL != (l_2001 == (func_19((**p_2213->g_1950), l_2009, p_2213) , (safe_rshift_func_int16_t_s_u((((safe_rshift_func_int16_t_s_u(((((void*)0 == l_2014) > 0x1E4E2A6AL) , p_2213->g_896.f0), l_2015)) > (-8L)) < (*l_1451)), 2)))))))) <= p_2213->g_274) >= (*p_2213->g_59)) < (*l_1451))), (*l_1451))) | (-6L)), p_2213->g_60[1][5])) == 0L);
                for (p_2213->g_3 = 2; (p_2213->g_3 <= 8); p_2213->g_3 += 1)
                { /* block id: 1012 */
                    uint64_t l_2035 = 18446744073709551609UL;
                    for (p_2213->g_162 = 0; (p_2213->g_162 <= 8); p_2213->g_162 += 1)
                    { /* block id: 1015 */
                        uint8_t *l_2032 = (void*)0;
                        uint8_t *l_2033[2][10] = {{(void*)0,&p_2213->g_159[1],&p_2213->g_159[1],(void*)0,(void*)0,&p_2213->g_159[1],&p_2213->g_159[1],(void*)0,(void*)0,&p_2213->g_159[1]},{(void*)0,&p_2213->g_159[1],&p_2213->g_159[1],(void*)0,(void*)0,&p_2213->g_159[1],&p_2213->g_159[1],(void*)0,(void*)0,&p_2213->g_159[1]}};
                        uint16_t l_2034 = 0xCD4DL;
                        int i, j;
                        l_2035 ^= ((((safe_add_func_int32_t_s_s(((safe_add_func_uint8_t_u_u((p_2213->g_16[p_2213->g_162][(p_2213->g_3 + 1)] > (0x6B7EB9182EEBA72BL ^ (safe_sub_func_uint32_t_u_u((*l_1451), (18446744073709551615UL || (safe_lshift_func_int16_t_s_u((-4L), (safe_lshift_func_int8_t_s_u((*p_2213->g_59), (l_2001 ^ l_2001)))))))))), (p_2213->g_12 ^= (safe_rshift_func_int16_t_s_s(((~(*l_1451)) == (**p_2213->g_688)), 5))))) , l_2001), l_2034)) <= l_2001) , (*l_1451)) && 0x4CL);
                        return (*l_1451);
                    }
                    for (l_2035 = 15; (l_2035 == 1); l_2035 = safe_sub_func_uint64_t_u_u(l_2035, 1))
                    { /* block id: 1022 */
                        volatile union U4 *l_2039[9] = {&p_2213->g_415[0][0][2],&p_2213->g_415[0][0][2],&p_2213->g_415[0][0][2],&p_2213->g_415[0][0][2],&p_2213->g_415[0][0][2],&p_2213->g_415[0][0][2],&p_2213->g_415[0][0][2],&p_2213->g_415[0][0][2],&p_2213->g_415[0][0][2]};
                        volatile union U4 **l_2038 = &l_2039[5];
                        int i;
                        (*l_2038) = &p_2213->g_415[0][0][2];
                        (*p_2213->g_1712) ^= 1L;
                        return l_2001;
                    }
                    if (l_2040)
                        break;
                }
            }
            l_2059 |= (safe_mod_func_uint64_t_u_u((p_2213->g_114 &= ((*l_2058) = (safe_rshift_func_uint16_t_u_u((((*l_1451) |= 0x1ECC25BDL) <= l_1735[0][6][4]), (&p_2213->g_63 != ((safe_div_func_uint16_t_u_u(((((*l_1862) , (246UL < (safe_mod_func_int16_t_s_s(p_2213->g_943[1][0].f0, (-6L))))) > (safe_add_func_int16_t_s_s(((((safe_rshift_func_int8_t_s_u(((safe_mul_func_int16_t_s_s(7L, FAKE_DIVERGE(p_2213->global_0_offset, get_global_id(0), 10))) <= ((&p_2213->g_1057 != l_2055) > l_2001)), GROUP_DIVERGE(1, 1))) , l_2056) != (void*)0) < 18446744073709551615UL), (-1L)))) | p_2213->g_225), 1UL)) , l_2057)))))), l_2001));
            if (((((l_2060 & ((safe_lshift_func_int16_t_s_s((l_2059 != l_2059), 3)) || (((p_2213->g_172[4] = (l_2065[8] ^ (((p_2213->g_546 , &p_2213->g_1056[2][1][1]) == ((*l_2066) = &p_2213->g_1056[0][0][2])) > (safe_mul_func_int8_t_s_s((*p_2213->g_59), (((safe_div_func_int16_t_s_s((((((*l_1451) , l_2072) == 3L) , (*l_1451)) | (-1L)), 0x259AL)) >= 0x4041E97ADAF23B56L) , (*l_1451))))))) == l_2073) == GROUP_DIVERGE(2, 1)))) , (*l_1451)) < (**p_2213->g_688)) && p_2213->g_1927))
            { /* block id: 1036 */
                int64_t l_2074 = 0x21F05741900827C2L;
                (*p_2213->g_1712) = (l_2074 | l_2075);
                l_1735[0][6][4] ^= ((*l_1451) = (*l_1451));
            }
            else
            { /* block id: 1040 */
                int16_t l_2083 = 1L;
                int32_t l_2084 = 0x57E55ADBL;
                int8_t l_2085[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                int32_t l_2086 = (-7L);
                int32_t l_2087 = 8L;
                int32_t l_2088 = 0x0CCAF29AL;
                int32_t l_2090[2][8][1] = {{{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL}},{{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL},{0x250AC84BL}}};
                uint8_t l_2093 = 1UL;
                volatile int32_t **l_2133 = (void*)0;
                volatile int32_t **l_2138 = (void*)0;
                volatile int32_t **l_2139 = &p_2213->g_1712;
                union U2 l_2143 = {0x914ABDAEL};
                uint8_t ****l_2178 = &p_2213->g_473;
                int32_t *l_2210 = &l_1415;
                int i, j, k;
                for (l_2001 = (-23); (l_2001 > (-29)); l_2001--)
                { /* block id: 1043 */
                    int32_t l_2089 = 0x5234F3DEL;
                    int32_t l_2091[6];
                    int8_t **l_2105 = &p_2213->g_59;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_2091[i] = 0x21E731DAL;
                    for (l_2059 = (-12); (l_2059 < (-18)); l_2059 = safe_sub_func_uint64_t_u_u(l_2059, 2))
                    { /* block id: 1046 */
                        union U3 **l_2080 = &p_2213->g_855;
                        int32_t l_2082 = 0L;
                        int32_t l_2092 = 0L;
                        (*l_2080) = l_1862;
                        l_2093--;
                        (*l_1451) |= 0x58E79AB5L;
                    }
                    (**l_1949) = func_22(((+(l_2096 > 0x4029L)) , ((((*l_1451) &= (((*l_2105) = l_2009) != (void*)0)) <= (-9L)) , &l_2001)), p_2213);
                    if ((*p_2213->g_1712))
                        break;
                }
                if (p_2213->g_391)
                    goto lbl_2140;
                if (((0x665E62D5L && (*l_1451)) || 0xD6CDBC656525348DL))
                { /* block id: 1058 */
                    int64_t *****l_2111 = &p_2213->g_2107;
                    int64_t ****l_2112[4][9][6] = {{{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0}},{{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0}},{{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0}},{{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0},{&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,&p_2213->g_2108,(void*)0,(void*)0}}};
                    int i, j, k;
                    for (p_2213->g_1418 = 0; (p_2213->g_1418 >= 0); p_2213->g_1418 -= 1)
                    { /* block id: 1061 */
                        (*p_2213->g_1712) ^= (*l_1451);
                        (*l_1451) = (l_2106 ^= (*p_2213->g_1712));
                        (*l_1451) ^= 0x558CF915L;
                    }
                    (*l_1451) = (-1L);
                    l_1733 ^= ((((*l_2111) = p_2213->g_2107) == l_2112[2][7][1]) && ((safe_add_func_uint8_t_u_u((safe_div_func_int16_t_s_s(((safe_rshift_func_int16_t_s_u(0x4D2CL, 4)) | (*p_2213->g_2103)), (~((safe_rshift_func_uint16_t_u_s((safe_mod_func_int32_t_s_s(((*l_1451) = l_2085[2]), (safe_add_func_uint16_t_u_u((((**l_2055) = (***p_2213->g_1055)) ^ (safe_lshift_func_uint16_t_u_u(((p_2213->g_2129 = (safe_mod_func_int8_t_s_s((*p_2213->g_59), l_2081[2][3][3]))) <= 1UL), 14))), p_2213->g_242)))), 15)) < l_2090[1][2][0])))), l_2060)) && l_2090[1][2][0]));
                }
                else
                { /* block id: 1073 */
                    l_2130++;
                    (*p_2213->g_1712) &= (*l_1451);
                }
lbl_2140:
                (*l_2139) = (*p_2213->g_1711);
                for (p_2213->g_185 = 0; (p_2213->g_185 <= 5); p_2213->g_185 += 1)
                { /* block id: 1081 */
                    int32_t l_2205[6][5] = {{8L,0L,8L,8L,0L},{8L,0L,8L,8L,0L},{8L,0L,8L,8L,0L},{8L,0L,8L,8L,0L},{8L,0L,8L,8L,0L},{8L,0L,8L,8L,0L}};
                    uint32_t l_2207[6][8][2] = {{{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL}},{{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL}},{{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL}},{{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL}},{{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL}},{{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL},{0x96B699F2L,1UL}}};
                    int64_t l_2211 = (-1L);
                    int i, j, k;
                    l_2081[5][3][1] &= ((safe_sub_func_int32_t_s_s(((1L ^ (l_2143 , (safe_sub_func_int8_t_s_s(((l_2146 != &p_2213->g_446[5]) , (l_2085[p_2213->g_185] == 0xF0L)), l_2085[p_2213->g_185])))) || l_2085[p_2213->g_185]), ((safe_mod_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((safe_div_func_int64_t_s_s(1L, (*p_2213->g_2103))), p_2213->g_249[1][0][1])) < (**l_2139)), 0xDFL)) ^ l_2060))) || l_2001);
                    for (p_2213->g_383 = 0; (p_2213->g_383 <= 9); p_2213->g_383 += 1)
                    { /* block id: 1085 */
                        int16_t l_2153 = 0x17C4L;
                        int32_t *l_2174 = &l_2087;
                        union U4 l_2175 = {0xB24FD1FCL};
                        uint8_t *****l_2179[8] = {&p_2213->g_472,&p_2213->g_472,&p_2213->g_472,&p_2213->g_472,&p_2213->g_472,&p_2213->g_472,&p_2213->g_472,&p_2213->g_472};
                        uint16_t l_2182 = 0x6973L;
                        int i;
                        (**l_2139) |= l_2153;
                        p_2213->g_2154--;
                        (**l_1949) = func_24(func_30((p_2213->g_943[1][0].f4 = (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_2213->local_1_offset, get_local_id(1), 10), (safe_add_func_uint64_t_u_u(l_2081[0][3][1], ((((safe_unary_minus_func_int16_t_s((((*l_1451) = (*l_1451)) != (p_2213->g_391 &= (**l_2139))))) != (((*l_2009) = ((safe_lshift_func_int16_t_s_s(p_2213->g_1417[7][0][0], (((safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_div_func_int32_t_s_s(l_2170, l_2001)), 1)), 2)) > (0x5FDF1AB05D3E4198L ^ (safe_mul_func_int8_t_s_s(0L, l_2173)))) , p_2213->g_274))) >= l_2085[p_2213->g_185])) != p_2213->g_546.f0)) || (*l_1451)) < 0L)))))), l_2174, p_2213->g_comm_values[p_2213->tid], (*p_2213->g_1017), p_2213), l_2174, l_2175, l_2059, p_2213->g_546, p_2213);
                        (**l_2139) = (((((((*l_2174) = ((p_2213->g_393 = (safe_lshift_func_int8_t_s_u(((func_19(&l_2090[0][7][0], func_30(((((*p_2213->g_855) , ((*l_2057) = (*l_2057))) != &p_2213->g_582[p_2213->g_383]) < ((p_2213->g_159[1] = ((!(((p_2213->g_472 = l_2178) != l_2180) < (!(*p_2213->g_689)))) , l_2143.f0)) != (p_2213->g_60[1][4] & (*l_2174)))), &l_1415, p_2213->g_390, (*p_2213->g_1017), p_2213), p_2213) , p_2213->g_1567) & p_2213->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2213->tid, 55))]), 3))) || GROUP_DIVERGE(1, 1))) & 4L) != l_2085[p_2213->g_185]) != l_2181[3][1][1]) | 0UL) < l_2182);
                    }
                    if (((*l_1451) >= (l_2075 & (+(safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_2213->local_2_offset, get_local_id(2), 10), p_2213->g_2185[0]))))))
                    { /* block id: 1100 */
                        int32_t *l_2202[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        (*l_1451) |= (safe_div_func_uint8_t_u_u(((-1L) & (safe_mod_func_uint32_t_u_u((--(**p_2213->g_688)), GROUP_DIVERGE(2, 1)))), (+(safe_sub_func_uint16_t_u_u(l_2001, (safe_add_func_uint64_t_u_u((0x0AL > 0xB8L), ((**l_2055) |= (safe_div_func_int32_t_s_s(((l_2081[9][0][1] , ((((~((0x4C2BE8C4L ^ ((--p_2213->g_312) > ((GROUP_DIVERGE(1, 1) > (l_2202[5] != (void*)0)) || GROUP_DIVERGE(2, 1)))) , 0UL)) < 0x7264771800806365L) ^ 0x74179C11L) , l_2075)) < (-1L)), l_2203))))))))));
                        ++l_2207[2][5][1];
                        l_2210 = &l_2205[5][4];
                    }
                    else
                    { /* block id: 1107 */
                        return l_2211;
                    }
                    for (p_2213->g_129 = 0; (p_2213->g_129 <= 1); p_2213->g_129 += 1)
                    { /* block id: 1112 */
                        (1 + 1);
                    }
                }
            }
        }
    }
    else
    { /* block id: 1123 */
        return l_2212[3];
    }
    return (*l_1451);
}


/* ------------------------------------------ */
/* 
 * reads : p_2213->g_1675 p_2213->g_8 p_2213->g_1031 p_2213->g_688 p_2213->g_605 p_2213->g_114 p_2213->g_1676
 * writes: p_2213->g_1676 p_2213->g_689 p_2213->g_943.f0 p_2213->g_114 p_2213->g_162
 */
union U1  func_19(int32_t * p_20, int8_t * p_21, struct S5 * p_2213)
{ /* block id: 861 */
    union U1 *l_1670 = &p_2213->g_1031[7][4];
    int32_t *l_1671 = &p_2213->g_8;
    union U2 l_1672[2][7] = {{{0xC3C5A466L},{0xF657BDA3L},{1UL},{0xF657BDA3L},{0xC3C5A466L},{0xC3C5A466L},{0xF657BDA3L}},{{0xC3C5A466L},{0xF657BDA3L},{1UL},{0xF657BDA3L},{0xC3C5A466L},{0xC3C5A466L},{0xF657BDA3L}}};
    int32_t *l_1673[7][7];
    int8_t *l_1674[6];
    int8_t l_1677 = (-5L);
    uint64_t l_1678 = 7UL;
    uint32_t *l_1682 = &p_2213->g_312;
    uint32_t **l_1681 = &l_1682;
    int64_t l_1683 = (-10L);
    uint64_t *l_1684[5][5][5] = {{{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678}},{{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678}},{{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678}},{{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678}},{{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678},{&p_2213->g_114,&p_2213->g_943[1][0].f0,&p_2213->g_943[1][0].f0,&p_2213->g_114,&l_1678}}};
    int64_t l_1687[4][4] = {{0x2E97AAA825A0DE36L,0L,0L,0x2E97AAA825A0DE36L},{0x2E97AAA825A0DE36L,0L,0L,0x2E97AAA825A0DE36L},{0x2E97AAA825A0DE36L,0L,0L,0x2E97AAA825A0DE36L},{0x2E97AAA825A0DE36L,0L,0L,0x2E97AAA825A0DE36L}};
    uint8_t *l_1688[3];
    uint8_t l_1689 = 0xB5L;
    int i, j, k;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
            l_1673[i][j] = &p_2213->g_1417[3][2][2];
    }
    for (i = 0; i < 6; i++)
        l_1674[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_1688[i] = &p_2213->g_159[1];
    (*p_2213->g_1675) = l_1670;
    l_1677 = (*l_1671);
    l_1689 = ((*l_1670) , (l_1678 ^ (safe_add_func_int16_t_s_s((((*p_2213->g_688) = l_1673[6][5]) != ((*l_1681) = l_1673[5][1])), (l_1683 || (p_2213->g_162 = ((p_2213->g_943[1][0].f0 = 0x25B1B16A8F5F9574L) != (p_2213->g_114 ^= ((safe_lshift_func_uint16_t_u_u(65526UL, p_2213->g_605[2][0][0])) == ((*l_1671) | l_1687[0][0]))))))))));
    return (**p_2213->g_1675);
}


/* ------------------------------------------ */
/* 
 * reads : p_2213->g_1418 p_2213->g_1065 p_2213->g_1063 p_2213->g_1064 p_2213->g_1536 p_2213->g_924 p_2213->g_391 p_2213->g_59 p_2213->g_392 p_2213->g_60 p_2213->g_1567 p_2213->g_689 p_2213->g_292 p_2213->g_129 p_2213->g_390 p_2213->g_582.f0 p_2213->g_374 p_2213->g_121 p_2213->g_242 p_2213->g_80.f0 p_2213->g_16 p_2213->g_544.f0 p_2213->g_comm_values p_2213->g_1417 p_2213->g_231 p_2213->g_1627 p_2213->g_1630 p_2213->g_1556.f0 p_2213->g_883 p_2213->g_3 p_2213->g_373
 * writes: p_2213->g_1418 p_2213->g_1536 p_2213->g_392 p_2213->g_129 p_2213->g_390 p_2213->g_231 p_2213->g_80.f0 p_2213->g_456 p_2213->g_391 p_2213->g_16 p_2213->g_1056
 */
int32_t * func_22(int32_t * p_23, struct S5 * p_2213)
{ /* block id: 775 */
    union U4 l_1511 = {4UL};
    int32_t l_1517 = 0L;
    int32_t *l_1521 = &p_2213->g_390;
    int32_t l_1522 = 4L;
    int32_t l_1523 = 0x7AE814DCL;
    int32_t l_1524 = 0L;
    int32_t l_1525 = 1L;
    int32_t l_1527 = (-1L);
    int32_t l_1528 = 0x42A35D77L;
    int32_t l_1529 = 5L;
    int32_t l_1530 = 0L;
    int32_t l_1531 = (-1L);
    int32_t l_1532 = 0x3AC37707L;
    int32_t l_1533 = 0x599C32D2L;
    int32_t l_1534 = 0x69A35CFEL;
    int32_t l_1535 = 0x6291942EL;
    uint32_t l_1548[3][6][9] = {{{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL}},{{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL}},{{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,1UL,0UL,1UL,4294967295UL,0UL,4294967295UL}}};
    union U1 *l_1555 = &p_2213->g_1556;
    int32_t l_1568 = 7L;
    int32_t *l_1577 = (void*)0;
    int64_t **l_1621 = &p_2213->g_1057;
    int32_t *l_1658 = &l_1531;
    int32_t *l_1659 = &l_1524;
    int32_t *l_1660 = &l_1517;
    int32_t *l_1661 = &l_1517;
    int32_t *l_1662 = &l_1535;
    int32_t *l_1663 = &l_1529;
    int32_t *l_1664 = &l_1531;
    int32_t *l_1665 = &l_1517;
    int32_t *l_1666[9][10] = {{&l_1527,(void*)0,&l_1528,(void*)0,(void*)0,&p_2213->g_1417[3][2][2],(void*)0,(void*)0,&p_2213->g_381,&p_2213->g_8},{&l_1527,(void*)0,&l_1528,(void*)0,(void*)0,&p_2213->g_1417[3][2][2],(void*)0,(void*)0,&p_2213->g_381,&p_2213->g_8},{&l_1527,(void*)0,&l_1528,(void*)0,(void*)0,&p_2213->g_1417[3][2][2],(void*)0,(void*)0,&p_2213->g_381,&p_2213->g_8},{&l_1527,(void*)0,&l_1528,(void*)0,(void*)0,&p_2213->g_1417[3][2][2],(void*)0,(void*)0,&p_2213->g_381,&p_2213->g_8},{&l_1527,(void*)0,&l_1528,(void*)0,(void*)0,&p_2213->g_1417[3][2][2],(void*)0,(void*)0,&p_2213->g_381,&p_2213->g_8},{&l_1527,(void*)0,&l_1528,(void*)0,(void*)0,&p_2213->g_1417[3][2][2],(void*)0,(void*)0,&p_2213->g_381,&p_2213->g_8},{&l_1527,(void*)0,&l_1528,(void*)0,(void*)0,&p_2213->g_1417[3][2][2],(void*)0,(void*)0,&p_2213->g_381,&p_2213->g_8},{&l_1527,(void*)0,&l_1528,(void*)0,(void*)0,&p_2213->g_1417[3][2][2],(void*)0,(void*)0,&p_2213->g_381,&p_2213->g_8},{&l_1527,(void*)0,&l_1528,(void*)0,(void*)0,&p_2213->g_1417[3][2][2],(void*)0,(void*)0,&p_2213->g_381,&p_2213->g_8}};
    uint64_t l_1667 = 0x33D64ABE2A9FA5C9L;
    int i, j, k;
    for (p_2213->g_1418 = 0; (p_2213->g_1418 >= 5); ++p_2213->g_1418)
    { /* block id: 778 */
        union U2 l_1508 = {4UL};
        int8_t *l_1509[3];
        int32_t **l_1510[5];
        uint64_t *l_1514 = (void*)0;
        uint64_t *l_1515 = (void*)0;
        uint64_t *l_1516[7] = {&p_2213->g_114,&p_2213->g_114,&p_2213->g_114,&p_2213->g_114,&p_2213->g_114,&p_2213->g_114,&p_2213->g_114};
        union U4 *l_1518 = &p_2213->g_544;
        int8_t l_1526 = 0x3AL;
        uint16_t *l_1547[7][10][3] = {{{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0}},{{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0}},{{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0}},{{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0}},{{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0}},{{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0}},{{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0},{&p_2213->g_87,&p_2213->g_374,(void*)0}}};
        int64_t ***l_1563 = &p_2213->g_1056[0][0][2];
        int64_t ****l_1564 = &l_1563;
        int32_t ***l_1580 = &l_1510[4];
        int32_t *l_1595 = &l_1534;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1509[i] = (void*)0;
        for (i = 0; i < 5; i++)
            l_1510[i] = &p_2213->g_456[0][4];
        l_1522 &= (!((l_1508 , (**p_2213->g_1065)) != (((safe_sub_func_uint16_t_u_u(l_1517, ((l_1518 != &p_2213->g_544) >= 0x34EF205CD1D31112L))) < l_1517) , l_1521)));
        p_2213->g_1536[0]++;
        if (((safe_rshift_func_uint8_t_u_s((l_1535 <= p_2213->g_924), 2)) <= ((safe_mul_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((((safe_lshift_func_uint16_t_u_u(((l_1548[1][0][2] = 0xB448L) && (((safe_rshift_func_uint8_t_u_s((safe_mod_func_uint16_t_u_u(((l_1529 ^= (safe_rshift_func_int8_t_s_s(((l_1555 == ((((safe_mul_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s((l_1522 = ((p_2213->g_391 , (&p_2213->g_1056[0][0][2] == ((*l_1564) = l_1563))) && (safe_sub_func_uint8_t_u_u(0x3AL, 255UL)))), 3)), (*p_2213->g_59))) , (*p_2213->g_59)), (-5L))) && GROUP_DIVERGE(0, 1)) & l_1525) , (void*)0)) & l_1525), (*p_2213->g_59)))) != p_2213->g_1567), l_1568)), 7)) || 0x5362E434L) <= 0x46E8L)), 8)) <= 1UL) , (*p_2213->g_689)), 4294967295UL)), (-1L))) | 65529UL)))
        { /* block id: 788 */
            int i, j;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_2213->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 55)), permutations[(safe_mod_func_uint32_t_u_u((l_1524 | (FAKE_DIVERGE(p_2213->local_0_offset, get_local_id(0), 10) <= 0L)), 10))][(safe_mod_func_uint32_t_u_u(p_2213->tid, 55))]));
        }
        else
        { /* block id: 792 */
            int16_t l_1573 = 0x3027L;
            for (p_2213->g_392 = 0; (p_2213->g_392 < (-20)); p_2213->g_392 = safe_sub_func_uint16_t_u_u(p_2213->g_392, 9))
            { /* block id: 795 */
                l_1524 ^= (safe_mod_func_uint64_t_u_u(0x81271522EA4925DDL, (-2L)));
            }
            if (l_1573)
                continue;
        }
        for (p_2213->g_129 = 0; (p_2213->g_129 == 46); ++p_2213->g_129)
        { /* block id: 802 */
            uint16_t l_1576[6];
            int32_t *l_1596 = &l_1523;
            int64_t ****l_1605 = &l_1563;
            int64_t l_1610 = 1L;
            int32_t l_1611 = 9L;
            int32_t l_1613 = 0x4045D600L;
            int32_t l_1614 = 0x749E6A73L;
            int32_t l_1616[6][4][8] = {{{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)}},{{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)}},{{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)}},{{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)}},{{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)}},{{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)},{0x7724EBC6L,1L,(-1L),1L,0x7724EBC6L,0x7724EBC6L,1L,(-1L)}}};
            int64_t *l_1646 = &p_2213->g_274;
            int64_t **l_1645[6][2][10] = {{{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0},{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0}},{{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0},{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0}},{{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0},{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0}},{{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0},{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0}},{{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0},{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0}},{{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0},{(void*)0,&l_1646,&l_1646,&l_1646,&l_1646,(void*)0,&l_1646,&l_1646,&l_1646,(void*)0}}};
            int64_t ***l_1644 = &l_1645[4][1][4];
            uint32_t l_1654 = 0xA845B7E2L;
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_1576[i] = 0xED83L;
            l_1577 = p_23;
            for (p_2213->g_390 = 5; (p_2213->g_390 >= 1); p_2213->g_390 -= 1)
            { /* block id: 806 */
                int8_t l_1593 = 0x57L;
                int64_t l_1594 = (-1L);
                int32_t *l_1598 = (void*)0;
                int32_t l_1612[4][4];
                int i, j;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_1612[i][j] = (-6L);
                }
                if (((safe_div_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), p_2213->g_60[1][5])) == ((((p_2213->g_231 = p_2213->g_582[7].f0) && (l_1576[1] & (1L <= l_1531))) ^ (((void*)0 == l_1580) , ((((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((((safe_mod_func_int16_t_s_s(p_2213->g_374, (safe_mod_func_uint16_t_u_u(((safe_mod_func_uint16_t_u_u(p_2213->g_121[0][2], 0x3197L)) | (-1L)), l_1531)))) ^ p_2213->g_242) | 0x4504L), l_1576[1])), 5)) <= l_1593), l_1576[1])) >= l_1593) | l_1529) && l_1593))) < l_1593)))
                { /* block id: 808 */
                    int32_t *l_1597 = (void*)0;
                    for (p_2213->g_80.f0 = 0; (p_2213->g_80.f0 <= 8); p_2213->g_80.f0 += 1)
                    { /* block id: 811 */
                        int i, j;
                        if (p_2213->g_16[p_2213->g_390][p_2213->g_80.f0])
                            break;
                        if (l_1594)
                            continue;
                        l_1596 = l_1595;
                        if (l_1594)
                            break;
                    }
                    if (l_1594)
                        continue;
                    l_1598 = ((**l_1580) = l_1597);
                }
                else
                { /* block id: 820 */
                    uint64_t l_1604[10][9] = {{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L},{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L},{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L},{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L},{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L},{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L},{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L},{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L},{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L},{0x2AD56FC98A9E7937L,0xFAAE49D7D7415791L,1UL,18446744073709551610UL,18446744073709551615UL,8UL,0xD4C0EEE2BF80C008L,18446744073709551615UL,0xFAAE49D7D7415791L}};
                    int32_t l_1615 = (-6L);
                    uint8_t l_1617 = 0x20L;
                    int32_t l_1633[3];
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_1633[i] = 0x37821CEEL;
                    if (((*l_1595) = (*l_1596)))
                    { /* block id: 822 */
                        int32_t l_1603 = 0x083B37F5L;
                        int64_t ****l_1606 = &l_1563;
                        int16_t *l_1609 = &p_2213->g_391;
                        int i, j;
                        p_2213->g_16[(p_2213->g_390 + 3)][(p_2213->g_390 + 3)] = ((safe_div_func_int32_t_s_s(((safe_lshift_func_int8_t_s_s(((p_2213->g_544.f0 > ((((l_1603 | l_1604[1][0]) , &p_2213->g_1055) != (l_1606 = l_1605)) && (p_2213->g_comm_values[p_2213->tid] ^ (safe_rshift_func_int8_t_s_s((*p_2213->g_59), (((*l_1609) = p_2213->g_1417[3][2][2]) != (-1L))))))) >= p_2213->g_1417[3][2][2]), 2)) , (*l_1596)), 0x8E7F3121L)) && l_1610);
                        l_1532 = 0L;
                    }
                    else
                    { /* block id: 827 */
                        return p_23;
                    }
                    --l_1617;
                    for (l_1511.f0 = 0; (l_1511.f0 <= 5); l_1511.f0 += 1)
                    { /* block id: 833 */
                        int64_t **l_1620 = &p_2213->g_1057;
                        if ((*l_1596))
                            break;
                        l_1621 = ((*l_1563) = l_1620);
                    }
                    for (l_1517 = 5; (l_1517 >= 0); l_1517 -= 1)
                    { /* block id: 840 */
                        int32_t l_1624 = 0L;
                        uint8_t *l_1647 = &p_2213->g_1536[0];
                        (**l_1580) = ((((safe_mul_func_uint16_t_u_u((~p_2213->g_121[0][2]), l_1624)) ^ 0xD17F3B81DF83CCFDL) ^ ((!(safe_div_func_uint8_t_u_u((((l_1615 ^= (p_2213->g_231 ^= p_2213->g_392)) , (p_2213->g_1627 , (safe_mul_func_int16_t_s_s((p_2213->g_1630 , p_2213->g_1556.f0), ((safe_mul_func_int16_t_s_s((0L > l_1604[2][8]), l_1633[0])) <= 0x7254L))))) , l_1525), 0x0FL))) && 0UL)) , &l_1612[2][2]);
                        (*l_1595) = (safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((((((l_1615 >= ((void*)0 == l_1644)) ^ ((*l_1647) = 0x70L)) , (safe_sub_func_uint32_t_u_u(0xEDA910C9L, (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_2213->group_1_offset, get_group_id(1), 10), ((void*)0 != &p_2213->g_1017)))))) , 0x2DA8L) <= ((safe_lshift_func_uint8_t_u_s(l_1624, 7)) | l_1604[1][0])), p_2213->g_883)), (*p_2213->g_59))), 3)), p_2213->g_3));
                        ++l_1654;
                    }
                }
                p_23 = (void*)0;
                for (l_1534 = 4; (l_1534 >= 0); l_1534 -= 1)
                { /* block id: 852 */
                    int64_t l_1657[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1657[i] = 0x553CC8C895023A88L;
                    l_1657[1] = ((+(&p_2213->g_1017 != (void*)0)) & (0L >= 0x3A68L));
                    if (l_1525)
                        continue;
                }
            }
        }
    }
    l_1667--;
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_2213->g_63 p_2213->g_64 p_2213->g_374 p_2213->g_3 p_2213->g_1063 p_2213->g_1064 p_2213->g_162 p_2213->g_59 p_2213->g_392 p_2213->g_60 p_2213->g_274 p_2213->g_95 p_2213->g_382 p_2213->g_242 p_2213->g_249 p_2213->g_1010.f0 p_2213->g_688 p_2213->g_689 p_2213->g_292 p_2213->g_370 p_2213->g_1417 p_2213->g_373
 * writes: p_2213->g_159 p_2213->g_374 p_2213->g_164 p_2213->g_274 p_2213->g_242 p_2213->g_370 p_2213->g_382
 */
int32_t * func_24(int8_t * p_25, int32_t * p_26, union U4  p_27, uint64_t  p_28, union U4  p_29, struct S5 * p_2213)
{ /* block id: 753 */
    uint8_t *l_1458 = &p_2213->g_159[2];
    int32_t l_1461 = 6L;
    uint16_t *l_1468[6][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_1469 = 0x24B2321FL;
    int32_t l_1470[2][10][7] = {{{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L}},{{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L},{1L,1L,(-6L),0x553505E5L,0x553505E5L,(-6L),1L}}};
    int16_t *l_1477 = &p_2213->g_164;
    uint32_t *l_1504[1][3];
    int32_t *l_1505 = (void*)0;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_1504[i][j] = &p_2213->g_393;
    }
    l_1469 = (safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((((*l_1458) = 251UL) != ((((safe_add_func_uint64_t_u_u(((*p_2213->g_63) , ((l_1461 , (((0UL || (safe_div_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u((--p_2213->g_374), (l_1470[0][6][6] , ((*l_1477) = ((((*p_26) || (safe_rshift_func_int8_t_s_s((((void*)0 == (*p_2213->g_1063)) == (safe_mod_func_int64_t_s_s(l_1470[1][4][1], p_2213->g_162))), 5))) | GROUP_DIVERGE(1, 1)) >= (-8L)))))), (*p_2213->g_59))), l_1469))) <= 0x06DBL) <= l_1461)) != l_1470[1][4][1])), p_28)) , &p_2213->g_225) != l_1477) != 0x5DADF521D0628627L)), l_1470[1][1][6])), 0x0D3EL));
    for (p_2213->g_274 = 3; (p_2213->g_274 >= 0); p_2213->g_274 -= 1)
    { /* block id: 760 */
        uint16_t l_1484 = 0x67C2L;
        int32_t *l_1487 = &p_2213->g_95;
        for (p_2213->g_242 = 0; (p_2213->g_242 <= 3); p_2213->g_242 += 1)
        { /* block id: 763 */
            int32_t *l_1478 = &p_2213->g_370;
            int32_t l_1479[3];
            int32_t *l_1480 = &l_1470[1][4][1];
            int32_t *l_1481 = &l_1479[0];
            int32_t *l_1482 = &l_1461;
            int32_t *l_1483[9] = {&p_2213->g_95,&p_2213->g_95,&p_2213->g_95,&p_2213->g_95,&p_2213->g_95,&p_2213->g_95,&p_2213->g_95,&p_2213->g_95,&p_2213->g_95};
            union U2 l_1501 = {4294967291UL};
            int i;
            for (i = 0; i < 3; i++)
                l_1479[i] = 0L;
            --l_1484;
            p_26 = l_1487;
            (*l_1478) = (*p_26);
            for (p_2213->g_382 = 0; (p_2213->g_382 <= 3); p_2213->g_382 += 1)
            { /* block id: 769 */
                int i, j, k;
                (*l_1478) &= ((safe_mod_func_uint32_t_u_u((~((~p_2213->g_249[p_2213->g_242][p_2213->g_382][(p_2213->g_274 + 2)]) & (((+(0x3C56L && ((((((safe_rshift_func_uint16_t_u_u(p_2213->g_1010.f0, (*l_1481))) & (safe_mul_func_int16_t_s_s(((safe_add_func_int32_t_s_s(0x431ABE5EL, (safe_unary_minus_func_uint32_t_u(((safe_sub_func_uint16_t_u_u((l_1501 , (safe_mod_func_uint16_t_u_u(65530UL, ((0L == p_27.f0) & 4UL)))), p_27.f0)) ^ 0x5B4F9CD4L))))) < p_2213->g_249[p_2213->g_242][p_2213->g_382][(p_2213->g_274 + 2)]), l_1469))) , (void*)0) == l_1504[0][2]) == 0x5300L) != (**p_2213->g_688)))) || 0x13L) > p_29.f0))), GROUP_DIVERGE(2, 1))) ^ (*l_1487));
            }
        }
    }
    return l_1505;
}


/* ------------------------------------------ */
/* 
 * reads : p_2213->g_80.f0 p_2213->g_392 p_2213->g_312 p_2213->g_3 p_2213->g_114 p_2213->g_415 p_2213->g_1417 p_2213->g_368
 * writes: p_2213->g_392 p_2213->g_312 p_2213->g_114 p_2213->g_1417
 */
int8_t * func_30(uint64_t  p_31, int32_t * p_32, uint16_t  p_33, union U2  p_34, struct S5 * p_2213)
{ /* block id: 729 */
    int32_t ***l_1421 = (void*)0;
    int32_t l_1422[1];
    union U1 *l_1429 = &p_2213->g_582[9];
    int i;
    for (i = 0; i < 1; i++)
        l_1422[i] = 7L;
    l_1422[0] = ((((void*)0 == l_1421) || p_2213->g_80.f0) , 0x1BAAD9C4L);
    for (p_2213->g_392 = 4; (p_2213->g_392 == 16); p_2213->g_392++)
    { /* block id: 733 */
        int16_t l_1425[9][8][1] = {{{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L}},{{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L}},{{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L}},{{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L}},{{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L}},{{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L}},{{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L}},{{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L}},{{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L},{0x3F31L}}};
        uint32_t l_1426 = 0xAE90A7A5L;
        int32_t l_1433 = 0x163CE31AL;
        uint32_t l_1437[10][7][3] = {{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}},{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}},{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}},{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}},{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}},{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}},{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}},{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}},{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}},{{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL},{4294967295UL,0xC5400624L,4294967287UL}}};
        int i, j, k;
        l_1426 |= l_1425[6][0][0];
        for (p_2213->g_312 = 0; (p_2213->g_312 == 47); ++p_2213->g_312)
        { /* block id: 737 */
            union U1 **l_1430 = &l_1429;
            int32_t l_1434 = 0x2825CE7EL;
            if (l_1425[8][6][0])
                break;
            if ((*p_32))
                break;
            (*l_1430) = l_1429;
            for (p_2213->g_114 = 2; (p_2213->g_114 >= 58); p_2213->g_114++)
            { /* block id: 743 */
                int32_t *l_1435 = &p_2213->g_1417[3][2][2];
                int32_t *l_1436[8];
                uint16_t l_1448 = 1UL;
                int8_t *l_1449 = &p_2213->g_392;
                int i;
                for (i = 0; i < 8; i++)
                    l_1436[i] = (void*)0;
                l_1437[3][0][0]--;
                if ((*p_32))
                    break;
                (*l_1435) = ((safe_div_func_uint64_t_u_u((p_2213->g_415[0][1][6] , (1UL & p_33)), (((safe_mod_func_uint32_t_u_u(((((0L != (p_2213->g_1417[3][2][2] || (safe_div_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), ((0x6C1245D5L && ((p_34.f0 , 0x2B5FL) ^ (safe_sub_func_uint16_t_u_u(l_1448, p_34.f0)))) , p_33))))) ^ p_33) >= p_31) > p_2213->g_368), (*p_32))) >= l_1422[0]) , p_34.f0))) , (*p_32));
                return l_1449;
            }
        }
    }
    return &p_2213->g_60[2][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_2213->g_59 p_2213->g_63 p_2213->g_60 p_2213->g_80 p_2213->g_80.f0 p_2213->g_114 p_2213->g_121 p_2213->g_3 p_2213->g_12 p_2213->g_164 p_2213->g_172 p_2213->g_177 p_2213->g_95 p_2213->g_179 p_2213->g_185 p_2213->g_18 p_2213->g_292 p_2213->g_87 p_2213->g_231 p_2213->g_249 p_2213->g_225 p_2213->g_312 p_2213->g_316 p_2213->g_374 p_2213->g_383 p_2213->g_393 p_2213->g_455 p_2213->g_274 p_2213->g_200.f0 p_2213->g_368 p_2213->g_373 p_2213->g_367 p_2213->g_582 p_2213->g_159 p_2213->g_392 p_2213->g_605 p_2213->g_677 p_2213->g_688 p_2213->g_456 p_2213->g_162 p_2213->g_242 p_2213->g_390 p_2213->g_734 p_2213->g_16 p_2213->g_546 p_2213->g_689 p_2213->g_800 p_2213->g_370 p_2213->g_2 p_2213->g_544.f0 p_2213->g_129 p_2213->g_896 p_2213->g_914 p_2213->g_906 p_2213->g_924 p_2213->g_180 p_2213->g_855 p_2213->g_853 p_2213->g_8 p_2213->g_1010 p_2213->g_1016 p_2213->g_1031 p_2213->g_1055 p_2213->g_322 p_2213->g_1063 p_2213->g_1065 p_2213->g_1086 p_2213->g_1056 p_2213->g_1096 p_2213->g_17 p_2213->g_391 p_2213->g_comm_values p_2213->g_382 p_2213->g_381 p_2213->g_1282
 * writes: p_2213->g_80.f0 p_2213->g_87 p_2213->g_114 p_2213->g_121 p_2213->g_129 p_2213->g_159 p_2213->g_162 p_2213->g_164 p_2213->g_95 p_2213->g_172 p_2213->g_179 p_2213->g_185 p_2213->g_231 p_2213->g_242 p_2213->g_249 p_2213->g_274 p_2213->g_225 p_2213->g_292 p_2213->g_312 p_2213->g_316 p_2213->g_322 p_2213->g_374 p_2213->g_383 p_2213->g_368 p_2213->g_393 p_2213->g_6 p_2213->g_456 p_2213->g_367 p_2213->g_605 p_2213->g_392 p_2213->g_688 p_2213->l_comm_values p_2213->g_544.f0 p_2213->g_855 p_2213->g_370 p_2213->g_906 p_2213->g_381 p_2213->g_924 p_2213->g_390 p_2213->g_16 p_2213->g_1017 p_2213->g_60 p_2213->g_373 p_2213->g_1056 p_2213->g_1063 p_2213->g_1057 p_2213->g_382 p_2213->g_1096.f0 p_2213->g_64
 */
int32_t  func_41(uint32_t  p_42, struct S5 * p_2213)
{ /* block id: 19 */
    int32_t *l_53 = &p_2213->g_3;
    int8_t *l_549 = (void*)0;
    int8_t **l_550 = (void*)0;
    union U1 *l_783 = &p_2213->g_176;
    union U2 l_784 = {0xEE1D28B4L};
    int8_t *l_785 = &p_2213->g_60[2][6];
    union U1 **l_1260 = &l_783;
    int32_t *l_1261 = &p_2213->g_381;
    int32_t l_1304 = 1L;
    int32_t l_1306 = 1L;
    int32_t l_1312 = (-6L);
    int32_t l_1313 = 0x1CDBD916L;
    int32_t l_1314 = 0x191DFDABL;
    int32_t l_1316[6][3][5] = {{{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL}},{{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL}},{{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL}},{{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL}},{{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL}},{{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL},{7L,6L,2L,0x3DDA82FAL,0x618BEC4AL}}};
    int8_t l_1327 = 1L;
    uint16_t *l_1371[10] = {&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87};
    uint16_t **l_1370 = &l_1371[5];
    uint16_t ***l_1369[4][1];
    int64_t l_1391[5];
    uint16_t l_1394[3][8][7] = {{{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL}},{{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL}},{{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL},{65535UL,4UL,0x21B9L,0xC42EL,65535UL,2UL,7UL}}};
    int32_t *l_1397[9];
    uint8_t l_1398 = 0x3AL;
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
            l_1369[i][j] = &l_1370;
    }
    for (i = 0; i < 5; i++)
        l_1391[i] = 0x2B24A0908CCE9ABAL;
    for (i = 0; i < 9; i++)
        l_1397[i] = &l_1316[4][2][1];
    (*l_1260) = func_43(((func_49(l_53, func_54(&p_2213->g_8, p_42, l_53, p_2213->g_59, p_2213), ((l_549 = l_549) != (void*)0), p_2213) && 65533UL) , l_783), l_53, l_784, l_53, l_785, p_2213);
    if (((*l_1261) = 0x433BDAE9L))
    { /* block id: 658 */
        uint8_t l_1276[6];
        int32_t l_1315 = 0x40A2F8DFL;
        int32_t l_1317 = 0x5DE53FC3L;
        int32_t l_1320 = 0x104E5D7EL;
        int32_t l_1322 = (-1L);
        int32_t l_1324[6];
        uint16_t *l_1353 = &p_2213->g_121[0][2];
        uint16_t **l_1352 = &l_1353;
        uint16_t ***l_1351 = &l_1352;
        uint32_t l_1359 = 9UL;
        uint32_t l_1362 = 0UL;
        int i;
        for (i = 0; i < 6; i++)
            l_1276[i] = 0x23L;
        for (i = 0; i < 6; i++)
            l_1324[i] = 8L;
        for (p_2213->g_392 = 0; (p_2213->g_392 <= 3); p_2213->g_392 = safe_add_func_uint32_t_u_u(p_2213->g_392, 3))
        { /* block id: 661 */
            uint64_t l_1283[3];
            int64_t *l_1301[6][9] = {{&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274}};
            int32_t l_1302 = 0x631B8D14L;
            int32_t l_1307 = (-8L);
            int32_t l_1308 = (-1L);
            int32_t l_1309 = 0x436DCA4FL;
            int32_t l_1310 = 0x538F700FL;
            int32_t l_1311[9] = {8L,8L,8L,8L,8L,8L,8L,8L,8L};
            int32_t l_1323 = 0x0F79FBB7L;
            uint16_t l_1334 = 0xBFE4L;
            int i, j;
            for (i = 0; i < 3; i++)
                l_1283[i] = 0xEBE2CADD708C5E9CL;
            for (p_2213->g_382 = 9; (p_2213->g_382 == (-9)); p_2213->g_382 = safe_sub_func_uint32_t_u_u(p_2213->g_382, 1))
            { /* block id: 664 */
                int64_t l_1277 = 0x6CD43ADD64D47B61L;
                int32_t *l_1284 = &p_2213->g_95;
                int64_t *l_1299 = &p_2213->g_274;
                int64_t **l_1300 = &l_1299;
                int32_t l_1305 = 0x7E835604L;
                int32_t l_1318 = 0L;
                int32_t l_1319 = 0x1CDEEF2BL;
                int32_t l_1321 = 0L;
                int32_t l_1325 = 0L;
                int32_t l_1326 = 0x60428B7FL;
                int32_t l_1328 = 0x07144DD3L;
                int64_t l_1350[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_1350[i] = 1L;
                if ((*l_53))
                    break;
                (*l_1284) &= ((safe_lshift_func_int8_t_s_u(((*l_785) = ((((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_u(1L, (safe_add_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((0x09L <= (l_1276[5] , (5UL ^ l_1277))), (0x3FL == (safe_sub_func_uint32_t_u_u((4294967287UL == p_42), (((*l_1261) = ((((((safe_add_func_uint16_t_u_u((*l_1261), p_2213->g_370)) <= 0x038AL) >= p_2213->g_16[1][2]) , p_2213->g_1282[3]) , p_42) ^ (*l_53))) > p_42)))))), p_2213->g_121[0][2])))), l_1283[1])) <= 0x76A2EEB5CE24B125L) , p_2213->g_159[1]) , p_42)), 7)) , (*l_1261));
                if ((((safe_lshift_func_int8_t_s_s(2L, (*p_2213->g_59))) ^ (((*p_2213->g_689) |= (((void*)0 == &l_1276[5]) && ((safe_mod_func_int16_t_s_s((((safe_add_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_u(p_42, ((safe_div_func_uint64_t_u_u((((safe_mod_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_2213->group_2_offset, get_group_id(2), 10), l_1283[1])), (l_1283[1] | (((*l_1300) = l_1299) == l_1301[1][8])))) , p_42) && 9UL), p_2213->g_242)) != p_42))) , p_42), l_1283[2])) == 0L) < (*p_2213->g_59)), 0x03A3L)) == 0xD9774D9D2D960901L))) | (*l_1284))) <= l_1276[5]))
                { /* block id: 671 */
                    int32_t *l_1303[5] = {&l_1302,&l_1302,&l_1302,&l_1302,&l_1302};
                    uint64_t l_1329 = 0x866459987562A167L;
                    int i;
                    l_1329++;
                    if (l_1324[1])
                        continue;
                    return p_42;
                }
                else
                { /* block id: 675 */
                    union U1 **l_1348 = &l_783;
                    for (p_2213->g_381 = (-26); (p_2213->g_381 != (-4)); p_2213->g_381++)
                    { /* block id: 678 */
                        uint8_t *l_1337 = &p_2213->g_159[1];
                        union U1 ***l_1349 = &l_1348;
                        l_1322 ^= p_42;
                        if (l_1334)
                            continue;
                        l_1317 |= (safe_mod_func_uint32_t_u_u((**p_2213->g_688), (((((p_42 <= (((*l_1337) &= FAKE_DIVERGE(p_2213->global_2_offset, get_global_id(2), 10)) > ((((**l_1300) &= p_42) , (((safe_sub_func_uint16_t_u_u(0x1832L, p_42)) >= 0x547AC8A90A5D9365L) <= (((safe_mul_func_int16_t_s_s((((safe_add_func_uint32_t_u_u(3UL, ((*l_1284) = ((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2213->local_1_offset, get_local_id(1), 10), 1)), (&p_2213->g_63 != ((*l_1349) = l_1348)))) != 0xEEL)))) , l_1308) == p_42), GROUP_DIVERGE(2, 1))) , 1L) || l_1350[1]))) && 0L))) <= l_1308) != 0UL) , 0UL) || 65535UL)));
                    }
                }
            }
            (*l_1261) = 0L;
            (*l_1261) = (l_1351 != (void*)0);
            for (p_2213->g_383 = 0; (p_2213->g_383 > 23); p_2213->g_383++)
            { /* block id: 693 */
                (*l_1261) &= p_42;
            }
        }
        for (p_2213->g_242 = 28; (p_2213->g_242 > 54); p_2213->g_242 = safe_add_func_int8_t_s_s(p_2213->g_242, 1))
        { /* block id: 699 */
            int32_t *l_1358[10][1];
            int i, j;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1358[i][j] = &l_1317;
            }
            l_1359--;
            l_1362--;
        }
        for (p_2213->g_80.f0 = 0; (p_2213->g_80.f0 <= 1); p_2213->g_80.f0 += 1)
        { /* block id: 705 */
            uint16_t ***l_1372 = &l_1370;
            int32_t *l_1381 = &p_2213->g_367;
            int32_t l_1392 = (-3L);
            int32_t l_1393 = 0L;
            for (l_1317 = 1; (l_1317 >= 0); l_1317 -= 1)
            { /* block id: 708 */
                uint16_t ****l_1373 = (void*)0;
                uint16_t ****l_1374 = &l_1372;
                int32_t l_1390 = (-1L);
                l_1393 = (safe_rshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_u((l_1369[1][0] != ((*l_1374) = l_1372)), 1)), (safe_sub_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u((l_1392 |= (safe_div_func_int64_t_s_s(((((void*)0 == l_1381) != (((safe_lshift_func_uint16_t_u_u((safe_add_func_int64_t_s_s((((p_2213->g_164 , (safe_sub_func_int8_t_s_s((&p_2213->g_164 != l_1353), ((safe_lshift_func_int8_t_s_s((*p_2213->g_59), 1)) <= (*l_53))))) ^ FAKE_DIVERGE(p_2213->group_1_offset, get_group_id(1), 10)) > p_42), l_1390)), l_1391[4])) <= p_42) && 0x0043L)) < 1L), p_2213->g_2))), 9UL)) >= p_2213->g_3), l_1359))));
                for (p_2213->g_225 = 1; (p_2213->g_225 >= 0); p_2213->g_225 -= 1)
                { /* block id: 714 */
                    int i, j, k;
                    return p_2213->g_605[(p_2213->g_225 + 1)][p_2213->g_80.f0][p_2213->g_225];
                }
            }
        }
    }
    else
    { /* block id: 719 */
        for (l_1306 = 0; l_1306 < 1; l_1306 += 1)
        {
            for (p_2213->g_1096.f0 = 0; p_2213->g_1096.f0 < 2; p_2213->g_1096.f0 += 1)
            {
                union U1 tmp = {{0UL}};
                p_2213->g_64[l_1306][p_2213->g_1096.f0] = tmp;
            }
        }
    }
    l_1394[2][6][2]++;
    ++l_1398;
    return p_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_2213->g_159 p_2213->g_59 p_2213->g_60 p_2213->g_800 p_2213->g_689 p_2213->g_605 p_2213->g_370 p_2213->g_374 p_2213->g_2 p_2213->g_3 p_2213->g_18 p_2213->g_455 p_2213->g_80.f0 p_2213->g_896 p_2213->g_914 p_2213->g_906 p_2213->g_924 p_2213->g_179 p_2213->g_180 p_2213->g_231 p_2213->g_172 p_2213->g_292 p_2213->g_546 p_2213->g_855 p_2213->g_853 p_2213->g_8 p_2213->g_390 p_2213->g_582 p_2213->g_1010 p_2213->g_1016 p_2213->g_1031 p_2213->g_392 p_2213->g_242 p_2213->g_1055 p_2213->g_1063 p_2213->g_1065 p_2213->g_1086 p_2213->g_1056 p_2213->g_322 p_2213->g_1096 p_2213->g_17 p_2213->g_312 p_2213->g_391 p_2213->g_162 p_2213->g_comm_values p_2213->g_274 p_2213->g_383 p_2213->g_544.f0 p_2213->g_129 p_2213->g_367
 * writes: p_2213->g_274 p_2213->g_159 p_2213->g_292 p_2213->g_456 p_2213->l_comm_values p_2213->g_544.f0 p_2213->g_855 p_2213->g_129 p_2213->g_370 p_2213->g_185 p_2213->g_368 p_2213->g_906 p_2213->g_381 p_2213->g_924 p_2213->g_231 p_2213->g_390 p_2213->g_225 p_2213->g_322 p_2213->g_367 p_2213->g_16 p_2213->g_80.f0 p_2213->g_1017 p_2213->g_121 p_2213->g_60 p_2213->g_392 p_2213->g_373 p_2213->g_1056 p_2213->g_1063 p_2213->g_1057 p_2213->g_383
 */
union U1 * func_43(union U1 * p_44, int32_t * p_45, union U2  p_46, int32_t * p_47, int8_t * p_48, struct S5 * p_2213)
{ /* block id: 433 */
    uint32_t l_799 = 4294967295UL;
    int32_t *l_815 = &p_2213->g_18;
    int32_t *l_816 = &p_2213->g_370;
    int64_t l_822 = 0x5957AF680BB15FD5L;
    int64_t *l_831[6];
    int32_t l_839 = 0x356DB16CL;
    int32_t l_840 = 0x5362F590L;
    int32_t l_841 = 0x5998EE40L;
    int32_t l_842 = 0x55CD33D2L;
    int32_t l_843 = 0x7EE61400L;
    int32_t l_844 = (-1L);
    int32_t l_845[3][10][8] = {{{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL}},{{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL}},{{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL},{0x6ED4FEE7L,0x7D28E57CL,0x2AA797EDL,7L,2L,2L,0x43EBABF0L,0x334CAFFAL}}};
    uint16_t *l_876 = &p_2213->g_121[0][2];
    uint16_t **l_875 = &l_876;
    int64_t *l_936 = &p_2213->g_274;
    int64_t **l_935 = &l_936;
    int64_t ***l_934 = &l_935;
    int64_t ***l_937 = &l_935;
    union U4 *l_961 = &p_2213->g_546;
    union U2 l_979 = {4UL};
    uint32_t **l_996[1][3];
    union U3 *l_1098 = &p_2213->g_853;
    uint16_t l_1146 = 65526UL;
    uint32_t l_1219 = 0xCC6357F2L;
    uint64_t l_1242 = 1UL;
    int32_t *l_1246 = &p_2213->g_381;
    uint64_t l_1256 = 0UL;
    union U1 *l_1259 = &p_2213->g_200;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_831[i] = &p_2213->g_368;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_996[i][j] = (void*)0;
    }
lbl_1058:
    for (p_2213->g_274 = 0; (p_2213->g_274 > 21); ++p_2213->g_274)
    { /* block id: 436 */
        uint8_t *l_796 = &p_2213->g_159[1];
        uint16_t *l_819 = (void*)0;
        int32_t l_820 = 0x4537D979L;
        int32_t l_821 = 0x31485894L;
        int32_t l_823[4] = {0x0C2C3FD1L,0x0C2C3FD1L,0x0C2C3FD1L,0x0C2C3FD1L};
        int32_t **l_824 = &p_2213->g_456[4][4];
        int i;
        l_823[0] |= ((safe_mul_func_int8_t_s_s((p_46.f0 && (FAKE_DIVERGE(p_2213->global_0_offset, get_global_id(0), 10) , (l_821 = (safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u((!((++(*l_796)) , (l_820 |= (((((0x21AB3A23L & l_799) == (((((*p_2213->g_59) , ((~(p_2213->g_800[0][5] , (safe_mod_func_int16_t_s_s((((safe_mul_func_int8_t_s_s((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_2213->local_0_offset, get_local_id(0), 10), ((*p_2213->g_689) = (safe_lshift_func_uint16_t_u_u((+((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 1)) <= ((l_815 == l_816) , ((safe_add_func_uint64_t_u_u((0x24L | 0x5CL), 0x8F61EC496A05502AL)) || 0x4625L))), p_46.f0)), 0UL)) != (*p_48))), 11))))), FAKE_DIVERGE(p_2213->group_1_offset, get_group_id(1), 10))) , 0x6827B9DFL) >= 0x23EE49ADL), 1UL)))) > p_2213->g_605[3][1][0])) & p_46.f0) , p_46.f0) | 0x71DF2AF8L)) , (*l_816)) == 0xC519L) && 3UL)))), 0x3B88L)) != 8L) == 0x8D44DA3BL), (*p_2213->g_59))), p_2213->g_374))))), 0x30L)) , l_822);
        (*l_824) = (void*)0;
    }
    if (((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_2213->global_0_offset, get_global_id(0), 10), ((safe_div_func_uint64_t_u_u(p_2213->g_2, ((safe_lshift_func_uint16_t_u_s(0x95C1L, p_2213->g_370)) , (p_2213->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2213->tid, 55))] = p_46.f0)))) ^ ((((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_2213->local_1_offset, get_local_id(1), 10), ((*p_45) != (p_46.f0 == ((((FAKE_DIVERGE(p_2213->group_0_offset, get_group_id(0), 10) != (((*l_815) | 0x54532481L) >= (safe_div_func_uint32_t_u_u((((*l_816) <= GROUP_DIVERGE(0, 1)) != p_46.f0), 1L)))) , 6UL) && (*p_47)) <= p_2213->g_159[1]))))) || 65535UL) == p_46.f0) , 0x43L)))) || p_2213->g_605[2][0][0]))
    { /* block id: 445 */
        int32_t *l_838[8][1];
        int8_t l_846 = 9L;
        uint64_t l_847 = 0x9B276A1BB4B175ACL;
        uint16_t *l_873 = &p_2213->g_121[0][2];
        uint16_t **l_872[8] = {&l_873,(void*)0,&l_873,&l_873,(void*)0,&l_873,&l_873,(void*)0};
        int8_t l_877[7] = {0x33L,0x33L,0x33L,0x33L,0x33L,0x33L,0x33L};
        int32_t l_886[5];
        int32_t l_893 = 0x71DA4E2FL;
        int64_t *l_916 = &p_2213->g_274;
        int64_t **l_929 = &l_916;
        int64_t ***l_928[3];
        union U0 *l_942 = &p_2213->g_943[1][0];
        int32_t l_957 = 1L;
        int i, j;
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 1; j++)
                l_838[i][j] = &p_2213->g_381;
        }
        for (i = 0; i < 5; i++)
            l_886[i] = 0x046E2A90L;
        for (i = 0; i < 3; i++)
            l_928[i] = &l_929;
        --l_847;
        for (p_2213->g_544.f0 = 0; (p_2213->g_544.f0 <= 43); p_2213->g_544.f0++)
        { /* block id: 449 */
            union U3 *l_852 = &p_2213->g_853;
            union U3 **l_854[1][5][8] = {{{&l_852,&l_852,&l_852,(void*)0,&l_852,(void*)0,&l_852,&l_852},{&l_852,&l_852,&l_852,(void*)0,&l_852,(void*)0,&l_852,&l_852},{&l_852,&l_852,&l_852,(void*)0,&l_852,(void*)0,&l_852,&l_852},{&l_852,&l_852,&l_852,(void*)0,&l_852,(void*)0,&l_852,&l_852},{&l_852,&l_852,&l_852,(void*)0,&l_852,(void*)0,&l_852,&l_852}}};
            int32_t *l_856[7][8][4] = {{{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]}},{{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]}},{{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]}},{{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]}},{{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]}},{{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]}},{{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]},{&p_2213->g_8,&l_842,&l_845[0][1][4],&l_845[2][1][5]}}};
            int i, j, k;
            p_2213->g_855 = l_852;
            (*p_2213->g_455) = l_856[2][2][2];
        }
        for (p_2213->g_129 = 0; (p_2213->g_129 <= 2); p_2213->g_129 += 1)
        { /* block id: 455 */
            uint8_t *****l_864 = &p_2213->g_472;
            uint16_t *l_871 = &p_2213->g_172[4];
            uint16_t **l_870 = &l_871;
            uint16_t ***l_869 = &l_870;
            uint16_t ***l_874[3];
            int32_t l_878[2][6][4] = {{{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L}},{{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L},{0x132E5EB1L,1L,0x4143F9A6L,0x4289D246L}}};
            int64_t l_887[9][2][5] = {{{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL},{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL}},{{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL},{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL}},{{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL},{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL}},{{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL},{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL}},{{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL},{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL}},{{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL},{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL}},{{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL},{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL}},{{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL},{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL}},{{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL},{(-6L),0x358E905771128665L,0x2D7FABB665CF745DL,0x4371DCB9CF5818CAL,0x2D7FABB665CF745DL}}};
            uint32_t l_920 = 0x232F1D52L;
            int32_t l_927 = 1L;
            int64_t ****l_930 = &l_928[1];
            int64_t ****l_931 = (void*)0;
            int64_t ***l_933 = &l_929;
            int64_t ****l_932[9] = {&l_933,&l_933,&l_933,&l_933,&l_933,&l_933,&l_933,&l_933,&l_933};
            int32_t l_958 = (-1L);
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_874[i] = &l_872[7];
            if ((*p_45))
                break;
            if (((safe_unary_minus_func_int64_t_s(((safe_mod_func_int64_t_s_s((safe_add_func_int32_t_s_s((-4L), (((safe_rshift_func_int8_t_s_u((&p_2213->g_472 != l_864), (~(((((*l_816) = (safe_mul_func_int16_t_s_s((-1L), ((safe_mul_func_int16_t_s_s((*l_816), (((*l_869) = (void*)0) != (l_875 = l_872[3])))) >= ((&p_2213->g_677[2] == (void*)0) | p_46.f0))))) || 0x5632C236L) <= p_46.f0) , 255UL)))) == p_46.f0) , p_46.f0))), p_46.f0)) && (*p_48)))) , (*l_816)))
            { /* block id: 460 */
                int32_t l_879 = 0x11E2566DL;
                int32_t l_880 = 5L;
                int32_t l_881 = 9L;
                int16_t l_882 = 0x1DFDL;
                int32_t l_884 = 0x4BAA4E30L;
                int32_t l_885 = 0x4B4C0CEDL;
                int32_t l_888[3][1];
                uint32_t l_889 = 0xC2634176L;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_888[i][j] = (-4L);
                }
                l_889--;
            }
            else
            { /* block id: 462 */
                int8_t l_892 = 0x32L;
                int32_t **l_907 = (void*)0;
                int32_t *l_911 = &p_2213->g_367;
                int32_t l_919[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_919[i] = 0x7EAA9AF9L;
                if (l_892)
                    break;
                for (p_2213->g_185 = 0; (p_2213->g_185 <= 0); p_2213->g_185 += 1)
                { /* block id: 466 */
                    int8_t l_917 = 0x4DL;
                    int32_t l_918 = 0L;
                    int32_t l_923[8][9] = {{0x262763C5L,(-5L),0x67BABDABL,1L,0x67BABDABL,(-5L),0x262763C5L,0x713E77ECL,(-1L)},{0x262763C5L,(-5L),0x67BABDABL,1L,0x67BABDABL,(-5L),0x262763C5L,0x713E77ECL,(-1L)},{0x262763C5L,(-5L),0x67BABDABL,1L,0x67BABDABL,(-5L),0x262763C5L,0x713E77ECL,(-1L)},{0x262763C5L,(-5L),0x67BABDABL,1L,0x67BABDABL,(-5L),0x262763C5L,0x713E77ECL,(-1L)},{0x262763C5L,(-5L),0x67BABDABL,1L,0x67BABDABL,(-5L),0x262763C5L,0x713E77ECL,(-1L)},{0x262763C5L,(-5L),0x67BABDABL,1L,0x67BABDABL,(-5L),0x262763C5L,0x713E77ECL,(-1L)},{0x262763C5L,(-5L),0x67BABDABL,1L,0x67BABDABL,(-5L),0x262763C5L,0x713E77ECL,(-1L)},{0x262763C5L,(-5L),0x67BABDABL,1L,0x67BABDABL,(-5L),0x262763C5L,0x713E77ECL,(-1L)}};
                    int i, j;
                    for (p_2213->g_368 = 0; (p_2213->g_368 <= 0); p_2213->g_368 += 1)
                    { /* block id: 469 */
                        int32_t ***l_905[4];
                        int32_t **l_910[4][6][4];
                        int64_t *l_915 = &p_2213->g_274;
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_905[i] = (void*)0;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 6; j++)
                            {
                                for (k = 0; k < 4; k++)
                                    l_910[i][j][k] = (void*)0;
                            }
                        }
                        (*l_816) |= ((p_2213->g_80.f0 ^ l_893) || (safe_add_func_uint64_t_u_u(p_46.f0, p_46.f0)));
                        l_878[1][3][0] = (l_892 | (p_2213->g_896 , (((safe_add_func_uint16_t_u_u(((safe_div_func_int32_t_s_s(((safe_mod_func_int16_t_s_s(0x15D3L, GROUP_DIVERGE(1, 1))) ^ (safe_rshift_func_uint8_t_u_s(((p_2213->g_906 = &l_838[1][0]) != l_907), ((safe_sub_func_int64_t_s_s((((1UL > 9L) < 0UL) , (((p_46.f0 >= p_46.f0) <= (*l_815)) == p_46.f0)), p_46.f0)) , (*p_48))))), 0x02002E0AL)) == FAKE_DIVERGE(p_2213->global_2_offset, get_global_id(2), 10)), 1L)) <= (*p_2213->g_59)) | 0x6DL)));
                        l_878[0][0][0] = ((**p_2213->g_906) = ((p_47 == (l_911 = (void*)0)) , (safe_rshift_func_uint8_t_u_s(((*l_815) != ((p_2213->g_914 , l_915) == l_916)), l_887[4][1][4]))));
                        --l_920;
                    }
                    --p_2213->g_924;
                }
            }
            (*l_816) |= ((l_937 = (l_934 = ((*l_930) = (l_927 , l_928[2])))) != &l_929);
            for (l_839 = 0; (l_839 <= 2); l_839 += 1)
            { /* block id: 487 */
                int16_t l_956 = 0x0E58L;
                int32_t **l_966 = &l_815;
                (1 + 1);
            }
        }
    }
    else
    { /* block id: 498 */
        union U2 l_972 = {0x784CC9EAL};
        uint8_t *l_973 = (void*)0;
        int32_t l_974 = 0x76D00B43L;
        for (p_2213->g_274 = (-21); (p_2213->g_274 != (-2)); p_2213->g_274 = safe_add_func_int32_t_s_s(p_2213->g_274, 8))
        { /* block id: 501 */
            uint32_t l_971 = 0x2B55E41DL;
            (*l_816) |= (*p_45);
            l_974 = ((safe_lshift_func_int8_t_s_s((((void*)0 != &p_2213->g_177[2][3]) <= ((+FAKE_DIVERGE(p_2213->global_2_offset, get_global_id(2), 10)) | 0x0115DB3DED76019EL)), (*p_2213->g_59))) | ((l_971 > (-7L)) >= (l_972 , (p_48 != l_973))));
        }
    }
    for (p_2213->g_231 = 0; (p_2213->g_231 <= 1); p_2213->g_231 += 1)
    { /* block id: 508 */
        uint32_t l_977 = 0x36BA3069L;
        int32_t **l_978[1];
        uint32_t **l_995[5] = {&p_2213->g_689,&p_2213->g_689,&p_2213->g_689,&p_2213->g_689,&p_2213->g_689};
        int8_t l_1004 = (-4L);
        union U2 *l_1015 = &p_2213->g_80;
        int32_t l_1030 = 0x68183A7FL;
        uint8_t **l_1052 = &p_2213->g_180;
        uint8_t l_1059 = 0x91L;
        uint16_t **l_1093 = &l_876;
        int64_t *l_1097 = &p_2213->g_274;
        int32_t **l_1142[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        for (i = 0; i < 1; i++)
            l_978[i] = &p_2213->g_456[3][2];
        (*l_816) = (safe_lshift_func_uint8_t_u_u(0x31L, ((((void*)0 == &p_2213->g_382) != (((*p_2213->g_179) != (*p_2213->g_179)) , (6UL > (p_2213->g_172[(p_2213->g_231 + 1)] , ((5UL & ((*p_2213->g_689) ^= l_977)) > 8L))))) > p_2213->g_172[(p_2213->g_231 + 1)])));
        (*p_2213->g_455) = (void*)0;
        for (p_2213->g_390 = 1; (p_2213->g_390 >= 0); p_2213->g_390 -= 1)
        { /* block id: 514 */
            union U4 l_986 = {0xA832A50AL};
            int32_t l_1000 = 0x5ECB3EB0L;
            int32_t l_1044 = 0x6F7082BCL;
            int32_t l_1045 = 0x1296B2DFL;
            uint16_t l_1046 = 65532UL;
            int32_t l_1071[3];
            int64_t *l_1087 = &l_822;
            int32_t **l_1090 = &p_2213->g_1064;
            int32_t **l_1140 = &l_816;
            uint8_t ****l_1175[10][1];
            int i, j;
            for (i = 0; i < 3; i++)
                l_1071[i] = (-1L);
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1175[i][j] = (void*)0;
            }
            if (((*l_961) , ((*l_816) ^= (0UL <= ((*p_2213->g_855) , (l_979 , (-9L)))))))
            { /* block id: 516 */
                uint64_t l_997[6][4][10] = {{{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L}},{{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L}},{{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L}},{{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L}},{{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L}},{{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L},{0UL,18446744073709551612UL,18446744073709551615UL,18446744073709551611UL,0x0C967A6F9125CBFDL,0x132B1B0276E82A9BL,0x2A56497C22C28D9DL,18446744073709551615UL,18446744073709551615UL,0x6013BC5D794614E3L}}};
                int16_t *l_998 = &p_2213->g_225;
                int32_t l_999[4][1][7] = {{{0x50CE2BF0L,0x44ED376AL,(-2L),4L,(-2L),0x44ED376AL,0x50CE2BF0L}},{{0x50CE2BF0L,0x44ED376AL,(-2L),4L,(-2L),0x44ED376AL,0x50CE2BF0L}},{{0x50CE2BF0L,0x44ED376AL,(-2L),4L,(-2L),0x44ED376AL,0x50CE2BF0L}},{{0x50CE2BF0L,0x44ED376AL,(-2L),4L,(-2L),0x44ED376AL,0x50CE2BF0L}}};
                uint16_t l_1005 = 65535UL;
                union U2 *l_1013 = (void*)0;
                union U2 **l_1014 = (void*)0;
                int i, j, k;
                l_999[1][0][3] ^= ((*l_816) = (safe_mod_func_uint8_t_u_u(p_46.f0, (safe_add_func_int16_t_s_s(((*l_998) = (safe_lshift_func_int16_t_s_u(((l_986 , ((safe_mul_func_uint8_t_u_u((((safe_mul_func_uint8_t_u_u(((((p_46.f0 == ((1L || p_2213->g_231) > (*p_2213->g_59))) || (safe_mul_func_int8_t_s_s(((safe_mod_func_int32_t_s_s((l_995[4] == l_996[0][1]), 0xF67EB600L)) , l_997[2][3][3]), 0UL))) < l_986.f0) || FAKE_DIVERGE(p_2213->global_2_offset, get_global_id(2), 10)), 0x2EL)) < (-1L)) , 0x66L), l_997[2][3][3])) , FAKE_DIVERGE(p_2213->local_0_offset, get_local_id(0), 10))) , p_2213->g_2), p_46.f0))), p_2213->g_8)))));
                for (l_799 = 0; (l_799 <= 1); l_799 += 1)
                { /* block id: 522 */
                    uint64_t *l_1011[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_1011[i] = &l_997[5][1][5];
                    for (p_2213->g_322 = 0; (p_2213->g_322 <= 2); p_2213->g_322 += 1)
                    { /* block id: 525 */
                        uint16_t l_1001 = 0x452EL;
                        l_1001--;
                    }
                    l_1005--;
                    for (p_2213->g_367 = 8; (p_2213->g_367 >= 3); p_2213->g_367 -= 1)
                    { /* block id: 531 */
                        int16_t *l_1012 = &p_2213->g_391;
                        int i, j, k;
                        p_2213->g_16[(p_2213->g_390 + 7)][(p_2213->g_231 + 3)] = (p_2213->g_582[(p_2213->g_390 + 8)] , (((p_2213->g_1010 , l_1011[2]) != (void*)0) || (p_2213->g_605[(p_2213->g_231 + 3)][(p_2213->g_231 + 1)][p_2213->g_390] != ((void*)0 == l_1012))));
                        (*p_2213->g_455) = p_47;
                        (*l_816) = 0x5AD7B326L;
                        if ((*p_45))
                            continue;
                    }
                    for (p_2213->g_80.f0 = 0; p_2213->g_80.f0 < 1; p_2213->g_80.f0 += 1)
                    {
                        l_978[p_2213->g_80.f0] = &p_2213->g_456[5][1];
                    }
                }
                (*p_2213->g_1016) = (l_1015 = l_1013);
            }
            else
            { /* block id: 541 */
                union U2 *l_1036 = &p_2213->g_80;
                int8_t *l_1037 = &p_2213->g_392;
                int32_t l_1040[9][10][2] = {{{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L}},{{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L}},{{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L}},{{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L}},{{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L}},{{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L}},{{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L}},{{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L}},{{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L},{0x16882331L,0x190C09A9L}}};
                int8_t *l_1041 = &p_2213->g_373;
                int32_t l_1042 = 0L;
                int32_t l_1043 = (-4L);
                int64_t ***l_1054 = (void*)0;
                int i, j, k;
                if ((l_1043 ^= (((p_46.f0 > (((safe_mul_func_int8_t_s_s(((*l_1041) = (safe_rshift_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((((*l_816) = ((*l_876) = FAKE_DIVERGE(p_2213->global_1_offset, get_global_id(1), 10))) >= (+((l_979 , ((safe_add_func_int16_t_s_s(0x530BL, (safe_mod_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(l_1030, (l_1040[0][1][0] &= (p_2213->g_1031[7][4] , (safe_mul_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u((l_1036 != (void*)0), ((*l_1037) |= ((*p_2213->g_59) = (-2L))))) < (safe_rshift_func_uint8_t_u_u(0x4CL, l_1000))), p_46.f0)))))), l_1000)))) || 0x20L)) & 4294967290UL))), p_2213->g_242)), 4))), 0x58L)) & FAKE_DIVERGE(p_2213->local_1_offset, get_local_id(1), 10)) , l_1042)) && (*p_48)) <= 253UL)))
                { /* block id: 549 */
                    uint8_t **l_1049 = (void*)0;
                    uint8_t ***l_1051[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1051[i] = (void*)0;
                    --l_1046;
                    l_1052 = l_1049;
                }
                else
                { /* block id: 552 */
                    uint16_t l_1053 = 65535UL;
                    l_1053 &= (*p_45);
                    if (l_1040[8][0][1])
                        break;
                }
                (*p_2213->g_1055) = &l_831[1];
                if (l_977)
                    goto lbl_1058;
                l_1059--;
            }
            for (l_1044 = 1; (l_1044 >= 0); l_1044 -= 1)
            { /* block id: 562 */
                int32_t l_1069 = (-4L);
                int32_t l_1073 = 1L;
                int32_t l_1076 = 1L;
                uint16_t l_1080 = 0x60E3L;
                int64_t *l_1088[5][6] = {{&l_822,&p_2213->g_368,&l_822,&l_822,&p_2213->g_368,&l_822},{&l_822,&p_2213->g_368,&l_822,&l_822,&p_2213->g_368,&l_822},{&l_822,&p_2213->g_368,&l_822,&l_822,&p_2213->g_368,&l_822},{&l_822,&p_2213->g_368,&l_822,&l_822,&p_2213->g_368,&l_822},{&l_822,&p_2213->g_368,&l_822,&l_822,&p_2213->g_368,&l_822}};
                int32_t l_1124 = 0x1C7864F4L;
                uint8_t l_1186 = 255UL;
                int32_t l_1190 = 0x5FB66B92L;
                int32_t l_1192 = 0x76F03360L;
                int32_t l_1193 = 0x6D262846L;
                int32_t l_1194[8] = {0x233461B4L,0x233461B4L,0x233461B4L,0x233461B4L,0x233461B4L,0x233461B4L,0x233461B4L,0x233461B4L};
                uint8_t l_1195 = 0xE3L;
                int8_t l_1238 = 0x56L;
                int i, j, k;
                (*l_816) |= p_2213->g_605[(p_2213->g_231 + 3)][p_2213->g_390][p_2213->g_231];
                if (((*l_816) = (safe_unary_minus_func_int64_t_s((*l_816)))))
                { /* block id: 565 */
                    uint32_t l_1066[3][3] = {{4294967291UL,0x1B482F93L,4294967291UL},{4294967291UL,0x1B482F93L,4294967291UL},{4294967291UL,0x1B482F93L,4294967291UL}};
                    int32_t l_1070 = 1L;
                    int32_t l_1072 = 0x6E9A10F1L;
                    int32_t l_1074 = (-1L);
                    int32_t l_1075 = 0x2CABBB67L;
                    int32_t l_1077 = 0x16814E5CL;
                    int32_t l_1078 = 0x58C8CC88L;
                    int32_t l_1079 = (-7L);
                    int i, j;
                    if (p_2213->g_605[(p_2213->g_231 + 3)][p_2213->g_390][p_2213->g_231])
                        break;
                    for (p_2213->g_185 = 0; (p_2213->g_185 <= 2); p_2213->g_185 += 1)
                    { /* block id: 569 */
                        (*p_2213->g_1065) = p_2213->g_1063;
                        ++l_1066[0][1];
                        return p_44;
                    }
                    l_1080--;
                }
                else
                { /* block id: 575 */
                    uint32_t l_1083 = 0x1C44B94CL;
                    int64_t **l_1089 = &l_1088[3][0];
                    if (p_46.f0)
                        goto lbl_1058;
                    (*l_816) = ((((l_1083 & ((((**p_2213->g_1055) = (p_2213->g_1086 , l_1087)) != ((*l_1089) = l_1088[4][3])) <= ((((void*)0 == l_1090) <= (((*p_47) | 4294967295UL) ^ 8L)) >= 0x767EE54C280606ACL))) , &p_44) != (void*)0) , 0x102F44DFL);
                    l_1076 |= (l_1087 != ((safe_mul_func_uint16_t_u_u((l_1093 == l_1093), ((safe_lshift_func_int8_t_s_s(0x31L, ((p_2213->g_322 ^ ((l_1069 = ((GROUP_DIVERGE(2, 1) && ((l_1073 = (((p_2213->g_1096 , ((((*l_1087) &= p_46.f0) & 0L) == ((*p_48) = l_1083))) , p_46.f0) == FAKE_DIVERGE(p_2213->global_0_offset, get_global_id(0), 10))) < 0x3D9A50C203BD5E62L)) || p_46.f0)) >= p_2213->g_292)) | 0xB884E7108DDCA647L))) ^ (*l_816)))) , l_1097));
                }
                for (p_2213->g_129 = 0; (p_2213->g_129 <= 2); p_2213->g_129 += 1)
                { /* block id: 588 */
                    int32_t l_1113 = 0x44339834L;
                    int16_t *l_1114 = &p_2213->g_164;
                    int32_t l_1120[3];
                    int32_t **l_1143 = &p_2213->g_1064;
                    int32_t l_1217 = (-1L);
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1120[i] = (-7L);
                    (1 + 1);
                }
                for (l_799 = 0; (l_799 <= 2); l_799 += 1)
                { /* block id: 630 */
                    union U3 **l_1220[8] = {&p_2213->g_855,(void*)0,&p_2213->g_855,&p_2213->g_855,(void*)0,&p_2213->g_855,&p_2213->g_855,(void*)0};
                    int32_t l_1241[8] = {0x17B3F51FL,0x35AD26BFL,0x17B3F51FL,0x17B3F51FL,0x35AD26BFL,0x17B3F51FL,0x17B3F51FL,0x35AD26BFL};
                    int8_t l_1243 = 9L;
                    int i;
                    for (p_2213->g_392 = 3; (p_2213->g_392 >= 0); p_2213->g_392 -= 1)
                    { /* block id: 633 */
                        int64_t ***l_1221 = &l_935;
                        (**l_1140) = ((((void*)0 != l_1220[5]) , (void*)0) != ((*l_1221) = (void*)0));
                    }
                    p_47 = p_47;
                    (*l_816) ^= ((safe_lshift_func_uint8_t_u_s((((p_2213->g_17 < p_2213->g_312) , (safe_mul_func_uint16_t_u_u((safe_div_func_int32_t_s_s((p_46.f0 | (((safe_sub_func_uint8_t_u_u(((*p_45) > (((*p_48) = ((p_2213->g_391 | (safe_mod_func_uint32_t_u_u((safe_mod_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(l_1238, (p_2213->g_162 || (safe_div_func_int64_t_s_s((-6L), (p_46.f0 && p_46.f0)))))), l_1194[5])), p_46.f0))) && p_2213->g_comm_values[p_2213->tid])) >= l_1241[1])), (*l_815))) > l_1242) < l_1238)), 9L)), 0UL))) , 0xE1L), l_1243)) != p_2213->g_391);
                }
            }
        }
    }
    for (p_2213->g_274 = 0; (p_2213->g_274 < 8); p_2213->g_274 = safe_add_func_uint16_t_u_u(p_2213->g_274, 4))
    { /* block id: 646 */
        int32_t **l_1247 = &l_816;
        int32_t l_1254 = 0x7806C41CL;
        int32_t l_1255[1][7][2] = {{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}}};
        int i, j, k;
        p_47 = ((*l_1247) = l_1246);
        for (p_2213->g_383 = 0; (p_2213->g_383 > 35); p_2213->g_383 = safe_add_func_uint64_t_u_u(p_2213->g_383, 7))
        { /* block id: 651 */
            int32_t l_1250 = 1L;
            int32_t *l_1251 = &l_840;
            int32_t *l_1252 = &l_842;
            int32_t *l_1253[4][1] = {{&l_845[2][1][5]},{&l_845[2][1][5]},{&l_845[2][1][5]},{&l_845[2][1][5]}};
            int i, j;
            l_1256--;
        }
    }
    return l_1259;
}


/* ------------------------------------------ */
/* 
 * reads : p_2213->g_455 p_2213->g_274 p_2213->g_3 p_2213->g_200.f0 p_2213->g_60 p_2213->g_368 p_2213->g_373 p_2213->g_249 p_2213->g_121 p_2213->g_367 p_2213->g_582 p_2213->g_159 p_2213->g_392 p_2213->g_605 p_2213->g_677 p_2213->g_292 p_2213->g_688 p_2213->g_456 p_2213->g_162 p_2213->g_242 p_2213->g_87 p_2213->g_390 p_2213->g_172 p_2213->g_734 p_2213->g_59 p_2213->g_16 p_2213->g_231 p_2213->g_114 p_2213->g_546 p_2213->g_374 p_2213->g_689
 * writes: p_2213->g_456 p_2213->g_274 p_2213->g_129 p_2213->g_367 p_2213->g_159 p_2213->g_605 p_2213->g_392 p_2213->g_688 p_2213->g_242 p_2213->g_231 p_2213->g_114 p_2213->g_374 p_2213->g_292
 */
int16_t  func_49(int32_t * p_50, int8_t * p_51, int32_t  p_52, struct S5 * p_2213)
{ /* block id: 316 */
    int32_t *l_551 = &p_2213->g_3;
    int32_t **l_552[9][6] = {{&p_2213->g_456[1][4],&l_551,&p_2213->g_456[5][2],(void*)0,&l_551,&p_2213->g_456[1][4]},{&p_2213->g_456[1][4],&l_551,&p_2213->g_456[5][2],(void*)0,&l_551,&p_2213->g_456[1][4]},{&p_2213->g_456[1][4],&l_551,&p_2213->g_456[5][2],(void*)0,&l_551,&p_2213->g_456[1][4]},{&p_2213->g_456[1][4],&l_551,&p_2213->g_456[5][2],(void*)0,&l_551,&p_2213->g_456[1][4]},{&p_2213->g_456[1][4],&l_551,&p_2213->g_456[5][2],(void*)0,&l_551,&p_2213->g_456[1][4]},{&p_2213->g_456[1][4],&l_551,&p_2213->g_456[5][2],(void*)0,&l_551,&p_2213->g_456[1][4]},{&p_2213->g_456[1][4],&l_551,&p_2213->g_456[5][2],(void*)0,&l_551,&p_2213->g_456[1][4]},{&p_2213->g_456[1][4],&l_551,&p_2213->g_456[5][2],(void*)0,&l_551,&p_2213->g_456[1][4]},{&p_2213->g_456[1][4],&l_551,&p_2213->g_456[5][2],(void*)0,&l_551,&p_2213->g_456[1][4]}};
    int16_t *l_553[2][6][2] = {{{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391}},{{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391},{&p_2213->g_391,&p_2213->g_391}}};
    int64_t l_569 = 0x581C3C37A7CA1713L;
    union U4 l_572 = {1UL};
    union U2 l_576 = {4294967286UL};
    int8_t l_600 = 0x10L;
    int16_t l_625[6][1][8] = {{{9L,0x0604L,0x3282L,9L,(-9L),0x3282L,0x3282L,(-9L)}},{{9L,0x0604L,0x3282L,9L,(-9L),0x3282L,0x3282L,(-9L)}},{{9L,0x0604L,0x3282L,9L,(-9L),0x3282L,0x3282L,(-9L)}},{{9L,0x0604L,0x3282L,9L,(-9L),0x3282L,0x3282L,(-9L)}},{{9L,0x0604L,0x3282L,9L,(-9L),0x3282L,0x3282L,(-9L)}},{{9L,0x0604L,0x3282L,9L,(-9L),0x3282L,0x3282L,(-9L)}}};
    uint32_t l_758 = 7UL;
    uint32_t l_781 = 0x8565349CL;
    int i, j, k;
lbl_645:
    (*p_2213->g_455) = l_551;
    if (((l_553[1][2][0] == (void*)0) == p_52))
    { /* block id: 318 */
        uint8_t l_554 = 0x0AL;
        int32_t l_557 = 0x2AF8E1DFL;
        int32_t l_558 = 0x34780991L;
        uint16_t l_562 = 1UL;
        uint16_t *l_573 = &p_2213->g_129;
        int i, j;
        --l_554;
        for (p_2213->g_274 = 6; (p_2213->g_274 >= 0); p_2213->g_274 -= 1)
        { /* block id: 322 */
            int32_t l_559 = (-9L);
            int32_t l_560 = 0x1D1906F7L;
            int32_t l_561[10] = {0x7C87F6EFL,(-6L),0x6C6800D0L,(-6L),0x7C87F6EFL,0x7C87F6EFL,(-6L),0x6C6800D0L,(-6L),0x7C87F6EFL};
            int i;
            --l_562;
            l_560 = (l_557 |= (*p_50));
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_2213->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 55)), permutations[(safe_mod_func_uint32_t_u_u((p_2213->g_200.f0 & ((*p_51) || (((safe_sub_func_uint16_t_u_u((FAKE_DIVERGE(p_2213->group_1_offset, get_group_id(1), 10) == (((FAKE_DIVERGE(p_2213->group_1_offset, get_group_id(1), 10) | ((p_2213->g_368 | (safe_lshift_func_uint16_t_u_s(((p_52 || ((l_569 > (safe_lshift_func_uint16_t_u_s((((*l_573) = ((p_2213->g_373 , l_558) || (((l_572 , p_2213->g_3) || p_52) | (*p_51)))) ^ 0x2FFAL), p_2213->g_249[1][0][1]))) < (-6L))) || p_52), p_52))) ^ GROUP_DIVERGE(2, 1))) , (*l_551)) != p_2213->g_121[0][2])), p_52)) == p_2213->g_121[0][8]) , p_52))), 10))][(safe_mod_func_uint32_t_u_u(p_2213->tid, 55))]));
    }
    else
    { /* block id: 331 */
        union U1 *l_577 = &p_2213->g_176;
        int32_t l_594 = 0x31158739L;
        int32_t l_602 = 0L;
        int32_t l_623 = 0x28727493L;
        int32_t l_626 = 0x352DE7ACL;
        uint64_t l_656 = 5UL;
        uint8_t **l_712[10][9][2] = {{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}},{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}},{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}},{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}},{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}},{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}},{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}},{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}},{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}},{{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0},{&p_2213->g_180,(void*)0}}};
        uint8_t ***l_711 = &l_712[9][6][0];
        int i, j, k;
        for (p_2213->g_367 = 0; (p_2213->g_367 == 3); p_2213->g_367++)
        { /* block id: 334 */
            union U1 **l_578 = &l_577;
            uint32_t l_581 = 0x4E663835L;
            int32_t l_583[6][5] = {{0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L},{0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L},{0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L},{0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L},{0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L},{0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L,0x3FE49486L}};
            uint8_t *l_584 = &p_2213->g_159[1];
            uint16_t l_593[9] = {0xD615L,0xD615L,0xD615L,0xD615L,0xD615L,0xD615L,0xD615L,0xD615L,0xD615L};
            int16_t l_601 = 0x0BEDL;
            union U4 *l_617 = &p_2213->g_544;
            union U2 l_646 = {0xAA3335ACL};
            int32_t *l_668 = (void*)0;
            int i, j;
            (*l_578) = (l_576 , l_577);
            if (((((safe_mod_func_uint64_t_u_u((4294967295UL >= 4294967292UL), ((l_583[2][3] = (l_581 | (p_2213->g_582[7] , p_52))) , (l_583[3][1] & (((((*l_584)--) <= (p_2213->g_392 == (((safe_sub_func_int64_t_s_s(((safe_rshift_func_int16_t_s_u(((*p_51) != ((safe_mul_func_uint16_t_u_u((~(p_2213->g_60[1][5] || l_593[4])), 0x3048L)) & p_52)), 12)) , p_52), l_594)) ^ l_594) , 0UL))) & 0x038D0D8CL) | l_594))))) , (*p_50)) ^ (*p_50)) ^ 0x5B8CL))
            { /* block id: 338 */
                int32_t l_595 = 0x6DECCDC1L;
                int32_t l_596 = 0x0C2900CBL;
                int32_t l_597 = (-1L);
                int32_t l_598 = (-7L);
                int32_t l_599 = (-8L);
                int32_t l_603 = 0x586B74A9L;
                int32_t l_604 = 0x4E8A6ADFL;
                union U4 l_653[10] = {{4UL},{0xCD640F18L},{4UL},{0xCD640F18L},{4UL},{4UL},{0xCD640F18L},{4UL},{0xCD640F18L},{4UL}};
                uint8_t **l_658 = (void*)0;
                uint8_t ***l_657 = &l_658;
                int32_t *l_669 = (void*)0;
                int i;
                p_2213->g_605[2][0][0]--;
                for (p_2213->g_392 = 2; (p_2213->g_392 > 17); ++p_2213->g_392)
                { /* block id: 342 */
                    int16_t l_614 = 0x599FL;
                    int32_t l_622 = 0L;
                    int32_t l_624 = 0x21AE2D27L;
                    int32_t l_627 = 0x12838331L;
                    (1 + 1);
                }
            }
            else
            { /* block id: 373 */
                int8_t l_713 = 0x5FL;
                int32_t l_740 = 0x19A131E4L;
                l_594 = (*l_551);
                for (l_576.f0 = 0; (l_576.f0 == 28); l_576.f0 = safe_add_func_int64_t_s_s(l_576.f0, 4))
                { /* block id: 377 */
                    uint32_t l_680 = 0xAA002F52L;
                    int64_t l_681 = 0x26F9748FE03E5D47L;
                    int32_t l_703 = 2L;
                    uint32_t l_710 = 4294967293UL;
                    uint32_t **l_722 = (void*)0;
                    l_602 ^= ((safe_mod_func_int16_t_s_s((((p_2213->g_677[2] , 1L) || (safe_sub_func_int16_t_s_s((p_52 & ((l_680 || l_681) && p_52)), p_2213->g_121[0][2]))) == 0x7601E5E1L), (safe_add_func_int32_t_s_s(0x0CB16F90L, p_2213->g_292)))) | 1L);
                    if ((((((safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), 0xB069B19D470C2799L)) == l_594) ^ (safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_2213->group_2_offset, get_group_id(2), 10), ((*l_584) = p_52)))) , &p_2213->g_446[5]) != (p_2213->g_688 = p_2213->g_688)))
                    { /* block id: 381 */
                        uint8_t l_699 = 255UL;
                        (*p_2213->g_455) = (*p_2213->g_455);
                        l_594 |= ((l_681 < (safe_mod_func_int8_t_s_s((safe_unary_minus_func_int16_t_s(p_2213->g_162)), (0L || p_52)))) >= (((p_2213->g_242 & ((safe_mod_func_uint8_t_u_u((((safe_lshift_func_int16_t_s_u(l_699, 2)) < (safe_unary_minus_func_uint64_t_u((65529UL >= (3L && (safe_mul_func_uint8_t_u_u((++(*l_584)), ((+(((safe_add_func_uint64_t_u_u((p_2213->g_3 != p_2213->g_292), p_2213->g_87)) & p_52) && 0UL)) >= (-1L))))))))) ^ 1UL), l_710)) , l_602)) , l_711) != (void*)0));
                        if ((*p_50))
                            continue;
                        return p_2213->g_390;
                    }
                    else
                    { /* block id: 387 */
                        int8_t l_716 = (-8L);
                        uint32_t l_717 = 4294967294UL;
                        l_713 = (*p_50);
                        if (l_713)
                            continue;
                        l_583[2][3] ^= ((safe_mul_func_int16_t_s_s((l_716 && ((4294967287UL > (l_594 = ((l_717 <= p_52) | (safe_mul_func_uint16_t_u_u(p_52, (((safe_div_func_uint32_t_u_u(((void*)0 != l_722), ((safe_mod_func_int64_t_s_s(p_2213->g_159[2], 0xB068C49FED736DECL)) , 0x71485614L))) & l_594) , l_594)))))) ^ 0x0568L)), l_710)) || p_52);
                    }
                    if (p_2213->g_390)
                        goto lbl_645;
                }
                (*p_2213->g_455) = (*p_2213->g_455);
                for (p_2213->g_242 = 0; (p_2213->g_242 <= 4); p_2213->g_242 += 1)
                { /* block id: 398 */
                    union U1 **l_731[10][3][7] = {{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}},{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}},{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}},{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}},{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}},{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}},{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}},{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}},{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}},{{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577},{&l_577,&l_577,&l_577,&l_577,&l_577,&l_577,&l_577}}};
                    uint8_t *****l_749 = &p_2213->g_472;
                    int32_t l_754 = 0x1FD73CBDL;
                    int32_t *l_757 = &p_2213->g_381;
                    int i, j, k;
                    for (l_572.f0 = 0; (l_572.f0 <= 3); l_572.f0 += 1)
                    { /* block id: 401 */
                        int64_t *l_732 = (void*)0;
                        int64_t *l_733 = &p_2213->g_274;
                        int64_t ***l_739 = (void*)0;
                        int64_t ****l_738 = &l_739;
                        uint32_t l_755[2][8][2] = {{{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL}},{{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL},{0xFC5E6A47L,1UL}}};
                        uint64_t *l_756[5];
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                            l_756[i] = &p_2213->g_114;
                        l_740 = (safe_mul_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((((((*l_733) = ((7UL > (safe_lshift_func_uint16_t_u_u(((p_2213->g_172[p_2213->g_242] || p_2213->g_249[l_572.f0][l_572.f0][p_2213->g_242]) , ((void*)0 == l_731[0][0][4])), 8))) ^ p_2213->g_172[p_2213->g_242])) , p_2213->g_734[0][0][0]) == ((*l_738) = (p_52 , (void*)0))) >= p_2213->g_249[1][3][3]), 0x0BE31001334943E8L)), (*p_51)));
                        l_583[2][3] = ((p_2213->g_114 |= (p_2213->g_231 &= (((*p_2213->g_59) , ((*l_584) |= (safe_div_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s(((safe_add_func_int64_t_s_s((p_52 >= (safe_add_func_uint8_t_u_u(0x09L, ((void*)0 == l_749)))), ((*p_2213->g_59) == (GROUP_DIVERGE(0, 1) >= (safe_lshift_func_uint8_t_u_s((((((*l_578) = (*l_578)) != &p_2213->g_582[7]) != (((safe_add_func_int32_t_s_s((l_754 = l_602), l_713)) && (*p_50)) , p_52)) & 0x36L), (*p_2213->g_59))))))) > p_2213->g_16[1][2]), 1)), (*p_50))))) == l_755[1][4][0]))) <= (-7L));
                    }
                    for (l_594 = 3; (l_594 >= 0); l_594 -= 1)
                    { /* block id: 414 */
                        l_757 = p_50;
                    }
                }
            }
        }
    }
    l_758 = (p_2213->g_546 , (*p_50));
    for (p_2213->g_374 = (-16); (p_2213->g_374 >= 34); ++p_2213->g_374)
    { /* block id: 424 */
        int32_t l_761 = 0x4930FD06L;
        int32_t l_762 = (-7L);
        int32_t l_763 = (-1L);
        int32_t l_764 = 1L;
        int32_t l_765 = 0x68B134A9L;
        int32_t l_766 = (-1L);
        int32_t l_767[1];
        uint64_t l_768 = 18446744073709551615UL;
        uint64_t *l_782 = &l_768;
        int i;
        for (i = 0; i < 1; i++)
            l_767[i] = 1L;
        ++l_768;
        l_765 ^= (safe_add_func_int64_t_s_s((l_761 <= (safe_sub_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(p_52, (1UL & (safe_add_func_int16_t_s_s((safe_mul_func_int8_t_s_s((FAKE_DIVERGE(p_2213->global_2_offset, get_global_id(2), 10) | p_52), ((FAKE_DIVERGE(p_2213->global_2_offset, get_global_id(2), 10) , (0x4B83F22EL & ((**p_2213->g_688) = l_767[0]))) == 0xAFL))), (*l_551)))))), (l_762 = (((((((*l_782) |= l_781) > 1L) | 249UL) || l_768) > p_52) | FAKE_DIVERGE(p_2213->group_1_offset, get_group_id(1), 10)))))), p_52));
        (*p_2213->g_455) = p_50;
    }
    return p_2213->g_159[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_2213->g_63 p_2213->g_59 p_2213->g_60 p_2213->g_80 p_2213->g_80.f0 p_2213->g_114 p_2213->g_121 p_2213->g_3 p_2213->g_12 p_2213->g_164 p_2213->g_172 p_2213->g_177 p_2213->g_95 p_2213->g_179 p_2213->g_185 p_2213->g_18 p_2213->g_292 p_2213->g_87 p_2213->g_231 p_2213->g_249 p_2213->g_225 p_2213->g_312 p_2213->g_316 p_2213->g_374 p_2213->g_383 p_2213->g_393 p_2213->g_392
 * writes: p_2213->g_80.f0 p_2213->g_87 p_2213->g_114 p_2213->g_121 p_2213->g_129 p_2213->g_159 p_2213->g_162 p_2213->g_164 p_2213->g_95 p_2213->g_172 p_2213->g_179 p_2213->g_185 p_2213->g_231 p_2213->g_242 p_2213->g_249 p_2213->g_274 p_2213->g_225 p_2213->g_292 p_2213->g_312 p_2213->g_316 p_2213->g_322 p_2213->g_374 p_2213->g_383 p_2213->g_368 p_2213->g_393 p_2213->g_6
 */
int8_t * func_54(int32_t * p_55, int32_t  p_56, int32_t * p_57, int8_t * p_58, struct S5 * p_2213)
{ /* block id: 20 */
    uint32_t l_88[4][2] = {{0xDBD1BD9FL,0xDBD1BD9FL},{0xDBD1BD9FL,0xDBD1BD9FL},{0xDBD1BD9FL,0xDBD1BD9FL},{0xDBD1BD9FL,0xDBD1BD9FL}};
    int32_t *l_89[5] = {&p_2213->g_18,&p_2213->g_18,&p_2213->g_18,&p_2213->g_18,&p_2213->g_18};
    int64_t *l_451 = (void*)0;
    int8_t l_500 = 0x5BL;
    int16_t l_501[9] = {0L,0x7969L,0L,0L,0x7969L,0L,0L,0x7969L,0L};
    int64_t **l_540 = &l_451;
    int8_t *l_548 = &p_2213->g_60[3][0];
    int i, j;
    for (p_56 = 0; (p_56 <= (-28)); --p_56)
    { /* block id: 23 */
        uint32_t l_71 = 0UL;
        uint16_t *l_85 = (void*)0;
        uint16_t *l_86[6][8] = {{&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,(void*)0,&p_2213->g_87,(void*)0,(void*)0},{&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,(void*)0,&p_2213->g_87,(void*)0,(void*)0},{&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,(void*)0,&p_2213->g_87,(void*)0,(void*)0},{&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,(void*)0,&p_2213->g_87,(void*)0,(void*)0},{&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,(void*)0,&p_2213->g_87,(void*)0,(void*)0},{&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,&p_2213->g_87,(void*)0,&p_2213->g_87,(void*)0,(void*)0}};
        int i, j;
        p_2213->g_6[4][1] = (p_2213->g_63 == ((safe_lshift_func_uint8_t_u_s((((safe_mul_func_int8_t_s_s((*p_2213->g_59), ((safe_mod_func_int8_t_s_s((l_71 , (*p_2213->g_59)), func_72((safe_mod_func_uint16_t_u_u((safe_add_func_int32_t_s_s((p_2213->g_80 , l_71), p_56)), (l_88[1][0] &= ((safe_sub_func_uint8_t_u_u((safe_add_func_int64_t_s_s(0x421779538E5EFB48L, (1L > p_56))), 0UL)) < FAKE_DIVERGE(p_2213->group_1_offset, get_group_id(1), 10))))), l_89[0], p_57, p_2213))) , (*p_2213->g_59)))) , &p_2213->g_382) == (void*)0), l_71)) , (void*)0));
    }
    for (p_2213->g_383 = 2; (p_2213->g_383 != 36); ++p_2213->g_383)
    { /* block id: 190 */
        uint32_t l_421 = 0xE1676639L;
        int32_t l_426 = 1L;
        int32_t l_427 = 0L;
        int32_t l_428 = (-7L);
        int32_t l_429 = 0L;
        uint32_t *l_449 = &p_2213->g_292;
        uint32_t **l_448 = &l_449;
        int32_t l_494 = 0x5DFC3F0EL;
        int32_t l_495[9][6][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
        uint32_t l_502 = 4294967293UL;
        uint64_t *l_522 = (void*)0;
        uint8_t *l_523 = &p_2213->g_162;
        uint16_t *l_526[2][8][9] = {{{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0}},{{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0},{(void*)0,&p_2213->g_172[3],&p_2213->g_374,&p_2213->g_121[0][2],&p_2213->g_172[3],(void*)0,(void*)0,&p_2213->g_172[4],(void*)0}}};
        int32_t **l_527[9][8][2] = {{{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]}},{{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]}},{{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]}},{{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]}},{{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]}},{{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]}},{{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]}},{{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]}},{{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]},{&p_2213->g_456[1][4],&l_89[0]}}};
        int i, j, k;
        (1 + 1);
    }
    return p_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_2213->g_80.f0 p_2213->g_114 p_2213->g_121 p_2213->g_3 p_2213->g_12 p_2213->g_60 p_2213->g_59 p_2213->g_164 p_2213->g_172 p_2213->g_177 p_2213->g_95 p_2213->g_179 p_2213->g_185 p_2213->g_18 p_2213->g_292 p_2213->g_87 p_2213->g_231 p_2213->g_249 p_2213->g_225 p_2213->g_312 p_2213->g_316 p_2213->g_374 p_2213->g_383 p_2213->g_393 p_2213->g_392
 * writes: p_2213->g_80.f0 p_2213->g_87 p_2213->g_114 p_2213->g_121 p_2213->g_129 p_2213->g_159 p_2213->g_162 p_2213->g_164 p_2213->g_95 p_2213->g_172 p_2213->g_179 p_2213->g_185 p_2213->g_231 p_2213->g_242 p_2213->g_249 p_2213->g_274 p_2213->g_225 p_2213->g_292 p_2213->g_312 p_2213->g_316 p_2213->g_322 p_2213->g_374 p_2213->g_383 p_2213->g_368 p_2213->g_393
 */
int8_t  func_72(uint64_t  p_73, int32_t * p_74, int32_t * p_75, struct S5 * p_2213)
{ /* block id: 25 */
    int16_t l_105 = 0x5261L;
    int32_t l_113[7][6][2] = {{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}}};
    int32_t l_138 = (-7L);
    int8_t *l_198[7] = {&p_2213->g_60[0][0],&p_2213->g_60[5][4],&p_2213->g_60[0][0],&p_2213->g_60[0][0],&p_2213->g_60[5][4],&p_2213->g_60[0][0],&p_2213->g_60[0][0]};
    union U1 *l_199[1];
    int8_t *l_203 = &p_2213->g_60[3][0];
    uint64_t l_238 = 0x179A86176E3802CFL;
    uint64_t l_277 = 1UL;
    uint16_t l_297 = 0xFA56L;
    int16_t l_311 = 0x7A6BL;
    int16_t l_313 = 0x6907L;
    uint8_t **l_330 = (void*)0;
    uint8_t ***l_329 = &l_330;
    int32_t l_337[3][9][2] = {{{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L}},{{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L}},{{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L},{8L,1L}}};
    uint16_t l_387 = 3UL;
    int32_t *l_388 = (void*)0;
    int32_t *l_389[2][8][2] = {{{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18}},{{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18},{&p_2213->g_18,&p_2213->g_18}}};
    uint8_t l_396 = 0x99L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_199[i] = &p_2213->g_200;
    for (p_2213->g_80.f0 = (-29); (p_2213->g_80.f0 != 19); ++p_2213->g_80.f0)
    { /* block id: 28 */
        int8_t l_99 = 0x4CL;
        int32_t l_106 = 0x63B93F16L;
        int32_t l_107 = (-5L);
        int32_t l_111 = 0x30862622L;
        int32_t l_112 = (-1L);
        union U1 *l_175 = &p_2213->g_176;
        union U2 l_217[9] = {{0x62234214L},{0x62234214L},{0x62234214L},{0x62234214L},{0x62234214L},{0x62234214L},{0x62234214L},{0x62234214L},{0x62234214L}};
        uint16_t *l_280 = &p_2213->g_87;
        uint8_t **l_288 = (void*)0;
        union U4 l_289 = {4294967287UL};
        int64_t *l_302 = &p_2213->g_274;
        uint32_t *l_306[6] = {&p_2213->g_292,&p_2213->g_292,&p_2213->g_292,&p_2213->g_292,&p_2213->g_292,&p_2213->g_292};
        uint32_t **l_305 = &l_306[0];
        int32_t l_369 = 0x304C94EDL;
        int32_t l_372 = 0x4B93F0E8L;
        int i;
        for (p_2213->g_87 = 0; (p_2213->g_87 != 29); p_2213->g_87 = safe_add_func_uint64_t_u_u(p_2213->g_87, 1))
        { /* block id: 31 */
            int32_t *l_94 = &p_2213->g_95;
            int32_t *l_96 = (void*)0;
            int32_t *l_97 = &p_2213->g_95;
            int32_t *l_98 = &p_2213->g_95;
            int32_t *l_100 = &p_2213->g_95;
            int32_t *l_101 = &p_2213->g_95;
            int32_t *l_102 = &p_2213->g_95;
            int32_t *l_103 = &p_2213->g_95;
            int32_t *l_104 = (void*)0;
            int32_t *l_108 = &l_106;
            int32_t *l_109 = &l_106;
            int32_t *l_110[3][6] = {{&p_2213->g_18,(void*)0,&p_2213->g_95,&l_107,(void*)0,&l_107},{&p_2213->g_18,(void*)0,&p_2213->g_95,&l_107,(void*)0,&l_107},{&p_2213->g_18,(void*)0,&p_2213->g_95,&l_107,(void*)0,&l_107}};
            int i, j;
            p_2213->g_114++;
            for (l_112 = 0; (l_112 == (-15)); l_112 = safe_sub_func_int64_t_s_s(l_112, 4))
            { /* block id: 35 */
                p_2213->g_121[0][2] |= ((safe_rshift_func_int8_t_s_u(0L, (0L ^ 0x30DEE2C5L))) | l_107);
            }
        }
        for (l_105 = 23; (l_105 == (-29)); l_105 = safe_sub_func_uint16_t_u_u(l_105, 3))
        { /* block id: 41 */
            uint16_t *l_153 = &p_2213->g_87;
            union U2 l_216 = {0xBB92B385L};
            int32_t l_248[7][8][3] = {{{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL}},{{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL}},{{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL}},{{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL}},{{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL}},{{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL}},{{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL},{1L,0x338217DEL,0x5A6F621BL}}};
            uint16_t **l_279 = &l_153;
            uint16_t **l_281 = &l_280;
            uint32_t *l_291 = &p_2213->g_292;
            int32_t *l_298 = (void*)0;
            int32_t *l_299 = (void*)0;
            int32_t *l_300 = &l_248[4][4][1];
            int32_t l_301[4] = {0L,0L,0L,0L};
            int i, j, k;
            if ((*p_75))
            { /* block id: 42 */
                int64_t l_137 = 0x4EFE8F334EEA40FDL;
                int32_t l_155 = 0x5DF9043AL;
                int32_t l_166 = 6L;
                uint8_t * volatile **l_181 = &p_2213->g_179;
                if ((l_106 , (p_75 == (void*)0)))
                { /* block id: 43 */
                    uint16_t *l_132[7][7] = {{&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87},{&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87},{&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87},{&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87},{&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87},{&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87},{&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87,&p_2213->g_121[0][2],&p_2213->g_87,&p_2213->g_87}};
                    int32_t l_133 = (-1L);
                    uint32_t l_134 = 7UL;
                    int64_t *l_139 = (void*)0;
                    int64_t *l_140 = (void*)0;
                    int64_t *l_141[1][4][2] = {{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}}};
                    int32_t l_142 = 0L;
                    int32_t *l_154[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    uint8_t *l_158 = &p_2213->g_159[1];
                    uint8_t *l_160 = (void*)0;
                    uint8_t *l_161 = &p_2213->g_162;
                    int16_t *l_163 = &p_2213->g_164;
                    uint16_t **l_165 = &l_132[2][0];
                    int i, j, k;
                    l_155 &= (safe_mul_func_int8_t_s_s(((l_113[2][1][0] |= (((safe_unary_minus_func_uint16_t_u((1UL < (safe_mul_func_uint8_t_u_u((p_2213->g_129 = p_73), (safe_lshift_func_uint16_t_u_s((l_133 &= p_2213->g_12), (l_134 < ((l_142 = (safe_lshift_func_uint8_t_u_u((l_137 > 0x7C3DD168C87B4EC1L), l_138))) == (safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u(0xC9L, 7)), (safe_sub_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (safe_mod_func_int64_t_s_s(((l_153 == l_153) , 0x5BB316AA2C9F03B6L), FAKE_DIVERGE(p_2213->global_0_offset, get_global_id(0), 10))))) , p_73), GROUP_DIVERGE(0, 1)))))))))))))) >= l_134) && p_2213->g_60[1][5])) < (*p_2213->g_59)), p_73));
                    p_2213->g_95 = (l_166 ^= ((0x5BL && ((*l_161) = ((*l_158) = 1UL))) <= (p_2213->g_80.f0 != (((*l_163) |= ((void*)0 != &p_2213->g_12)) == (p_73 ^ (((*l_165) = &p_2213->g_129) != l_153))))));
                }
                else
                { /* block id: 55 */
                    int8_t l_169[1];
                    int32_t l_171 = 0x39FEB662L;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_169[i] = 0x2EL;
                    for (p_2213->g_114 = (-5); (p_2213->g_114 <= 6); p_2213->g_114 = safe_add_func_int16_t_s_s(p_2213->g_114, 9))
                    { /* block id: 58 */
                        int32_t *l_170[2][5] = {{&l_166,&l_166,&l_166,&l_166,&l_166},{&l_166,&l_166,&l_166,&l_166,&l_166}};
                        int i, j;
                        ++p_2213->g_172[3];
                        if (l_138)
                            continue;
                        if ((*p_75))
                            continue;
                    }
                    p_2213->g_95 &= (l_175 == p_2213->g_177[2][3]);
                }
                (*l_181) = p_2213->g_179;
                for (p_2213->g_95 = 27; (p_2213->g_95 <= (-4)); --p_2213->g_95)
                { /* block id: 68 */
                    int32_t *l_184[10][9] = {{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106}};
                    int i, j;
                    for (l_112 = 0; l_112 < 2; l_112 += 1)
                    {
                        for (l_138 = 0; l_138 < 10; l_138 += 1)
                        {
                            p_2213->g_121[l_112][l_138] = 0xB05BL;
                        }
                    }
                    p_2213->g_185--;
                }
                if ((*p_74))
                    continue;
            }
            else
            { /* block id: 73 */
                int64_t l_188 = (-1L);
                return l_188;
            }
            for (p_2213->g_87 = 15; (p_2213->g_87 != 30); ++p_2213->g_87)
            { /* block id: 78 */
                int32_t *l_218 = &p_2213->g_95;
                int32_t *l_219 = &l_113[2][1][0];
                int32_t *l_220 = &p_2213->g_95;
                int32_t *l_221 = &l_113[3][0][0];
                int32_t *l_222 = &l_112;
                int32_t *l_223 = &l_106;
                int32_t *l_224 = &l_113[1][5][0];
                int32_t *l_226 = &l_113[0][1][0];
                int32_t *l_227 = &l_111;
                int32_t *l_228 = &l_112;
                int32_t *l_229 = (void*)0;
                int32_t *l_230[3][4] = {{&p_2213->g_95,&l_107,&p_2213->g_95,&p_2213->g_95},{&p_2213->g_95,&l_107,&p_2213->g_95,&p_2213->g_95},{&p_2213->g_95,&l_107,&p_2213->g_95,&p_2213->g_95}};
                int i, j;
                (*l_219) = (safe_mod_func_int32_t_s_s(((*l_218) |= (safe_sub_func_uint32_t_u_u((safe_unary_minus_func_int64_t_s(((safe_add_func_uint64_t_u_u(((+((((void*)0 == l_198[4]) , l_199[0]) != l_199[0])) | p_73), ((safe_mod_func_uint64_t_u_u(((void*)0 == l_203), (((safe_sub_func_int64_t_s_s((((safe_div_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_s(((l_217[7] = (l_111 , l_216)) , 0x447EL), l_138)) & p_73), p_73)), l_105)), 0x15L)) , p_73), p_73)) <= GROUP_DIVERGE(1, 1)) <= 0x0A3BL), p_2213->g_60[1][5])) || 4UL) , l_113[0][1][0]))) || 0x2CE41FC7E891FE2EL))) , p_2213->g_172[3]))), p_2213->g_87))), 0x6EDD9E1AL));
                p_2213->g_231--;
            }
            for (p_2213->g_87 = (-2); (p_2213->g_87 != 16); ++p_2213->g_87)
            { /* block id: 86 */
                uint32_t l_239 = 6UL;
                int32_t l_266 = 0x13E52E98L;
                for (p_2213->g_114 = 7; (p_2213->g_114 >= 4); p_2213->g_114 = safe_sub_func_uint64_t_u_u(p_2213->g_114, 6))
                { /* block id: 89 */
                    return l_238;
                }
                if (l_239)
                { /* block id: 92 */
                    int32_t *l_247[7][3] = {{&p_2213->g_3,&l_113[2][1][0],&p_2213->g_3},{&p_2213->g_3,&l_113[2][1][0],&p_2213->g_3},{&p_2213->g_3,&l_113[2][1][0],&p_2213->g_3},{&p_2213->g_3,&l_113[2][1][0],&p_2213->g_3},{&p_2213->g_3,&l_113[2][1][0],&p_2213->g_3},{&p_2213->g_3,&l_113[2][1][0],&p_2213->g_3},{&p_2213->g_3,&l_113[2][1][0],&p_2213->g_3}};
                    int i, j;
                    l_248[6][7][1] ^= (safe_add_func_int32_t_s_s(((p_2213->g_242 = (*p_2213->g_59)) , (safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_2213->group_0_offset, get_group_id(0), 10), p_73))), (safe_mod_func_uint8_t_u_u(l_239, l_239))));
                    ++p_2213->g_249[1][0][1];
                    for (l_138 = 3; (l_138 >= 0); l_138 -= 1)
                    { /* block id: 98 */
                        int16_t *l_252 = &p_2213->g_164;
                        p_2213->g_95 ^= (p_2213->g_12 | ((*l_252) = 0x0936L));
                    }
                }
                else
                { /* block id: 102 */
                    int32_t *l_261 = &l_138;
                    uint64_t *l_267 = &l_238;
                    int64_t *l_272 = (void*)0;
                    int64_t *l_273[10][6] = {{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274},{&p_2213->g_274,(void*)0,(void*)0,&p_2213->g_274,&p_2213->g_274,&p_2213->g_274}};
                    int16_t *l_275 = &p_2213->g_225;
                    int16_t *l_276[4][1] = {{&p_2213->g_164},{&p_2213->g_164},{&p_2213->g_164},{&p_2213->g_164}};
                    int32_t *l_278 = &l_113[2][1][0];
                    int i, j;
                    for (p_2213->g_114 = 0; p_2213->g_114 < 9; p_2213->g_114 += 1)
                    {
                        union U2 tmp = {{0x3D034B4DL}};
                        l_217[p_2213->g_114] = tmp;
                    }
                    (*l_278) |= ((safe_sub_func_uint32_t_u_u((FAKE_DIVERGE(p_2213->group_1_offset, get_group_id(1), 10) != (safe_lshift_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((safe_div_func_uint8_t_u_u((!((((*l_261) = p_73) , 1UL) <= (((safe_mul_func_int8_t_s_s(((safe_mod_func_int64_t_s_s(l_248[6][6][2], GROUP_DIVERGE(1, 1))) >= (0x7C21L >= (~(((*l_267) &= l_266) > FAKE_DIVERGE(p_2213->global_2_offset, get_global_id(2), 10))))), p_73)) || ((+p_73) == (p_2213->g_164 = (((*l_275) = (((safe_lshift_func_int16_t_s_u((((((p_2213->g_274 = (safe_mul_func_uint16_t_u_u((((void*)0 == l_261) != (*p_2213->g_59)), (-6L)))) , (void*)0) != (void*)0) != GROUP_DIVERGE(2, 1)) || 0x1D5596D2B076EBF3L), 11)) > p_73) | p_73)) == l_216.f0)))) ^ l_216.f0))), l_277)), l_112)), p_2213->g_231))), 6UL)) || (*p_2213->g_59));
                }
                return l_138;
            }
            l_301[2] ^= ((*l_300) = (((((((((*l_279) = &p_2213->g_185) != ((*l_281) = l_280)) , &p_2213->g_12) != l_198[3]) , ((safe_sub_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((((safe_mod_func_int32_t_s_s((((l_288 == (p_2213->g_3 , (l_289 , &p_2213->g_180))) == (safe_unary_minus_func_int32_t_s((((((*l_291)--) & (safe_div_func_uint16_t_u_u(p_2213->g_249[1][0][1], p_2213->g_172[3]))) | p_73) , 0x5F06EB51L)))) >= p_73), p_2213->g_225)) ^ l_297) >= FAKE_DIVERGE(p_2213->global_1_offset, get_global_id(1), 10)), 246UL)), p_2213->g_95)) || (*p_2213->g_59))) < 0L) , (void*)0) != &p_2213->g_180));
        }
        if ((*p_74))
            break;
        if ((((((void*)0 != l_302) == (1UL >= 65535UL)) & (safe_add_func_int64_t_s_s((((((*l_305) = &p_2213->g_292) == p_75) || ((l_289 , (*p_2213->g_59)) < (p_2213->g_312 |= (safe_sub_func_int16_t_s_s((safe_add_func_int8_t_s_s(l_311, l_107)), p_73))))) < l_138), l_313))) , p_2213->g_80.f0))
        { /* block id: 122 */
            uint32_t *l_336 = &p_2213->g_292;
            uint16_t *l_351 = &p_2213->g_172[3];
            int32_t l_362 = 2L;
            int32_t l_371 = 0x21551B61L;
            if (((p_2213->g_249[1][0][1] , p_73) != l_105))
            { /* block id: 123 */
                uint8_t ***l_327[6][7] = {{&l_288,&l_288,&l_288,&l_288,&l_288,&l_288,&l_288},{&l_288,&l_288,&l_288,&l_288,&l_288,&l_288,&l_288},{&l_288,&l_288,&l_288,&l_288,&l_288,&l_288,&l_288},{&l_288,&l_288,&l_288,&l_288,&l_288,&l_288,&l_288},{&l_288,&l_288,&l_288,&l_288,&l_288,&l_288,&l_288},{&l_288,&l_288,&l_288,&l_288,&l_288,&l_288,&l_288}};
                uint8_t ****l_328[4][8][3] = {{{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]}},{{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]}},{{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]}},{{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]},{&l_327[3][0],&l_327[3][0],&l_327[0][4]}}};
                int16_t *l_335 = &l_311;
                int32_t *l_342 = &p_2213->g_95;
                int i, j, k;
                for (l_111 = 0; (l_111 == (-1)); --l_111)
                { /* block id: 126 */
                    return p_73;
                }
                p_2213->g_316 = p_2213->g_316;
                p_74 = (((((safe_div_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u((p_2213->g_322 = (*p_2213->g_59)), 2)), (safe_rshift_func_int16_t_s_u((&p_2213->g_292 == (((safe_lshift_func_uint16_t_u_s(((l_329 = l_327[0][4]) != &l_330), 4)) ^ (p_2213->g_164 = (l_107 = ((*l_335) = (l_113[2][1][1] ^ (safe_div_func_int8_t_s_s(((p_73 && (safe_lshift_func_int16_t_s_u(p_2213->g_95, p_2213->g_60[5][5]))) >= ((p_73 , 0x416D661313447BCEL) < p_73)), (*p_2213->g_59)))))))) , l_336)), p_2213->g_121[0][2])))) , p_73) , l_289.f0) , l_337[1][5][1]) , l_336);
                for (l_107 = 0; (l_107 != 25); l_107 = safe_add_func_int8_t_s_s(l_107, 4))
                { /* block id: 138 */
                    uint16_t l_365 = 1UL;
                    for (l_238 = (-15); (l_238 > 5); l_238 = safe_add_func_int8_t_s_s(l_238, 4))
                    { /* block id: 141 */
                        uint16_t **l_343 = &l_280;
                        int32_t l_344 = 0x02611974L;
                        int32_t **l_360 = (void*)0;
                        int32_t **l_361 = &l_342;
                        p_74 = l_342;
                    }
                    (*p_74) ^= l_362;
                    for (l_99 = 0; (l_99 <= (-9)); l_99 = safe_sub_func_int32_t_s_s(l_99, 3))
                    { /* block id: 152 */
                        return p_73;
                    }
                    (*p_74) = l_365;
                }
            }
            else
            { /* block id: 157 */
                int32_t *l_366[6] = {&l_107,&l_107,&l_107,&l_107,&l_107,&l_107};
                int i;
                p_2213->g_95 = ((FAKE_DIVERGE(p_2213->global_0_offset, get_global_id(0), 10) ^ GROUP_DIVERGE(0, 1)) , l_362);
                p_2213->g_374--;
                for (l_311 = 0; (l_311 != (-12)); --l_311)
                { /* block id: 162 */
                    int32_t **l_379 = &l_366[2];
                    int32_t l_380 = 0x126F0E8BL;
                    (*l_379) = p_74;
                    p_2213->g_383--;
                    l_113[2][1][0] = 0x2F00DD55L;
                    (*l_379) = p_75;
                }
            }
        }
        else
        { /* block id: 169 */
            for (p_2213->g_322 = 0; (p_2213->g_322 <= 6); p_2213->g_322 += 1)
            { /* block id: 172 */
                int32_t *l_386 = &l_113[6][0][0];
                (*l_386) = (*p_75);
                for (p_2213->g_368 = 0; (p_2213->g_368 <= 6); p_2213->g_368 += 1)
                { /* block id: 176 */
                    return l_99;
                }
            }
        }
    }
    l_113[6][1][0] = (l_387 <= p_73);
    ++p_2213->g_393;
    l_396++;
    return (*p_2213->g_59);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[55];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 55; i++)
            l_comm_values[i] = 1;
    struct S5 c_2214;
    struct S5* p_2213 = &c_2214;
    struct S5 c_2215 = {
        1L, // p_2213->g_2
        0L, // p_2213->g_3
        {{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}}, // p_2213->g_6
        (-1L), // p_2213->g_7
        0L, // p_2213->g_8
        0x4AL, // p_2213->g_12
        0L, // p_2213->g_15
        {{0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L,0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L},{0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L,0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L},{0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L,0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L},{0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L,0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L},{0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L,0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L},{0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L,0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L},{0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L,0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L},{0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L,0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L},{0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L,0x7F839E07L,5L,0x72301355L,5L,0x7F839E07L}}, // p_2213->g_16
        0x32D7AF2CL, // p_2213->g_17
        0x30DFDDAEL, // p_2213->g_18
        {{0x69L,0x4EL,0x69L,0x69L,0x4EL,0x69L,0x69L},{0x69L,0x4EL,0x69L,0x69L,0x4EL,0x69L,0x69L},{0x69L,0x4EL,0x69L,0x69L,0x4EL,0x69L,0x69L},{0x69L,0x4EL,0x69L,0x69L,0x4EL,0x69L,0x69L},{0x69L,0x4EL,0x69L,0x69L,0x4EL,0x69L,0x69L},{0x69L,0x4EL,0x69L,0x69L,0x4EL,0x69L,0x69L}}, // p_2213->g_60
        &p_2213->g_60[1][5], // p_2213->g_59
        {{{65527UL},{65527UL}}}, // p_2213->g_64
        &p_2213->g_64[0][0], // p_2213->g_63
        {0x3686A8E7L}, // p_2213->g_80
        0xCA13L, // p_2213->g_87
        0x5B172C66L, // p_2213->g_95
        1UL, // p_2213->g_114
        {{0x777BL,1UL,0x7562L,1UL,0x777BL,0x777BL,1UL,0x7562L,1UL,0x777BL},{0x777BL,1UL,0x7562L,1UL,0x777BL,0x777BL,1UL,0x7562L,1UL,0x777BL}}, // p_2213->g_121
        0x1417L, // p_2213->g_129
        {6UL,6UL,6UL}, // p_2213->g_159
        0xB6L, // p_2213->g_162
        0x607EL, // p_2213->g_164
        {0xC045L,0xC045L,0xC045L,0xC045L,0xC045L}, // p_2213->g_172
        {0x32CEL}, // p_2213->g_176
        {0UL}, // p_2213->g_178
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2213->g_177
        (void*)0, // p_2213->g_180
        &p_2213->g_180, // p_2213->g_179
        0xA24FL, // p_2213->g_185
        {7UL}, // p_2213->g_200
        0x1CC4L, // p_2213->g_225
        0x631387556249259AL, // p_2213->g_231
        4294967288UL, // p_2213->g_242
        {{{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL}},{{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL}},{{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL}},{{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL},{9UL,0xCB5AC61BL,4294967289UL,0xE17463E5L,1UL,0xDA0880A1L,9UL}}}, // p_2213->g_249
        0x5607DF4A3FD36FC4L, // p_2213->g_274
        1UL, // p_2213->g_292
        1UL, // p_2213->g_312
        {0x6782FDE8DAFFF069L}, // p_2213->g_317
        &p_2213->g_317, // p_2213->g_316
        0UL, // p_2213->g_322
        0x7C13D935L, // p_2213->g_367
        7L, // p_2213->g_368
        0x3EE4BD4BL, // p_2213->g_370
        0x5EL, // p_2213->g_373
        65535UL, // p_2213->g_374
        0x5B3820A8L, // p_2213->g_381
        (-7L), // p_2213->g_382
        0x91DF9F01L, // p_2213->g_383
        7L, // p_2213->g_390
        (-1L), // p_2213->g_391
        0L, // p_2213->g_392
        4294967290UL, // p_2213->g_393
        {{{{0x10064436L},{5UL},{0x97AA9BFBL},{5UL},{0x10064436L},{0x10064436L},{5UL}},{{0x10064436L},{5UL},{0x97AA9BFBL},{5UL},{0x10064436L},{0x10064436L},{5UL}}}}, // p_2213->g_415
        4294967295UL, // p_2213->g_447
        {&p_2213->g_447,&p_2213->g_447,&p_2213->g_447,&p_2213->g_447,&p_2213->g_447,&p_2213->g_447,&p_2213->g_447}, // p_2213->g_446
        &p_2213->g_446[5], // p_2213->g_445
        {{(void*)0,&p_2213->g_3,(void*)0,(void*)0,&p_2213->g_3,(void*)0},{(void*)0,&p_2213->g_3,(void*)0,(void*)0,&p_2213->g_3,(void*)0},{(void*)0,&p_2213->g_3,(void*)0,(void*)0,&p_2213->g_3,(void*)0},{(void*)0,&p_2213->g_3,(void*)0,(void*)0,&p_2213->g_3,(void*)0},{(void*)0,&p_2213->g_3,(void*)0,(void*)0,&p_2213->g_3,(void*)0},{(void*)0,&p_2213->g_3,(void*)0,(void*)0,&p_2213->g_3,(void*)0}}, // p_2213->g_456
        &p_2213->g_456[1][4], // p_2213->g_455
        (void*)0, // p_2213->g_473
        &p_2213->g_473, // p_2213->g_472
        {0x60DB3BFBB48C1FACL}, // p_2213->g_519
        {0x80832732L}, // p_2213->g_544
        {0x512C7686L}, // p_2213->g_546
        {{0x8F3AL},{0x8F3AL},{0x8F3AL},{0x8F3AL},{0x8F3AL},{0x8F3AL},{0x8F3AL},{0x8F3AL},{0x8F3AL},{0x8F3AL}}, // p_2213->g_582
        {{{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L}},{{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L}},{{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L}},{{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L}},{{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L}},{{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L},{0xAD36AAE4L,0xAD36AAE4L}}}, // p_2213->g_605
        {9UL}, // p_2213->g_637
        {{0x221D7C0417E4B5A4L},{0x221D7C0417E4B5A4L},{0x221D7C0417E4B5A4L}}, // p_2213->g_677
        &p_2213->g_292, // p_2213->g_689
        &p_2213->g_689, // p_2213->g_688
        1L, // p_2213->g_737
        &p_2213->g_737, // p_2213->g_736
        {&p_2213->g_736,&p_2213->g_736,&p_2213->g_736,&p_2213->g_736,&p_2213->g_736,&p_2213->g_736,&p_2213->g_736}, // p_2213->g_735
        {{{&p_2213->g_735[1],(void*)0,&p_2213->g_735[1],&p_2213->g_735[1]},{&p_2213->g_735[1],(void*)0,&p_2213->g_735[1],&p_2213->g_735[1]},{&p_2213->g_735[1],(void*)0,&p_2213->g_735[1],&p_2213->g_735[1]},{&p_2213->g_735[1],(void*)0,&p_2213->g_735[1],&p_2213->g_735[1]},{&p_2213->g_735[1],(void*)0,&p_2213->g_735[1],&p_2213->g_735[1]},{&p_2213->g_735[1],(void*)0,&p_2213->g_735[1],&p_2213->g_735[1]},{&p_2213->g_735[1],(void*)0,&p_2213->g_735[1],&p_2213->g_735[1]},{&p_2213->g_735[1],(void*)0,&p_2213->g_735[1],&p_2213->g_735[1]}}}, // p_2213->g_734
        {{{4UL},{0x97C3L},{4UL},{65528UL},{0x97C3L},{65528UL},{4UL},{0x97C3L},{4UL},{4UL}},{{4UL},{0x97C3L},{4UL},{65528UL},{0x97C3L},{65528UL},{4UL},{0x97C3L},{4UL},{4UL}}}, // p_2213->g_800
        {18446744073709551613UL}, // p_2213->g_853
        &p_2213->g_853, // p_2213->g_855
        (-10L), // p_2213->g_883
        {1UL}, // p_2213->g_896
        &p_2213->g_456[1][4], // p_2213->g_906
        {18446744073709551615UL}, // p_2213->g_914
        0x5DL, // p_2213->g_924
        {{{0x5EA2DBD1F9817B82L},{0x4DADF6A3BB05376CL},{0x5EA2DBD1F9817B82L},{0x5EA2DBD1F9817B82L}},{{0x5EA2DBD1F9817B82L},{0x4DADF6A3BB05376CL},{0x5EA2DBD1F9817B82L},{0x5EA2DBD1F9817B82L}}}, // p_2213->g_943
        {0x0293165A08093E71L}, // p_2213->g_1010
        &p_2213->g_80, // p_2213->g_1017
        &p_2213->g_1017, // p_2213->g_1016
        {{{0UL},{0UL},{1UL},{1UL},{1UL},{0UL}},{{0UL},{0UL},{1UL},{1UL},{1UL},{0UL}},{{0UL},{0UL},{1UL},{1UL},{1UL},{0UL}},{{0UL},{0UL},{1UL},{1UL},{1UL},{0UL}},{{0UL},{0UL},{1UL},{1UL},{1UL},{0UL}},{{0UL},{0UL},{1UL},{1UL},{1UL},{0UL}},{{0UL},{0UL},{1UL},{1UL},{1UL},{0UL}},{{0UL},{0UL},{1UL},{1UL},{1UL},{0UL}}}, // p_2213->g_1031
        (void*)0, // p_2213->g_1050
        &p_2213->g_368, // p_2213->g_1057
        {{{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057},{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057}},{{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057},{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057}},{{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057},{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057}},{{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057},{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057}},{{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057},{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057}},{{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057},{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057}},{{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057},{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057}},{{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057},{&p_2213->g_1057,&p_2213->g_1057,&p_2213->g_1057}}}, // p_2213->g_1056
        &p_2213->g_1056[0][0][2], // p_2213->g_1055
        &p_2213->g_390, // p_2213->g_1064
        &p_2213->g_1064, // p_2213->g_1063
        &p_2213->g_1063, // p_2213->g_1065
        {0xB762F35573794F59L}, // p_2213->g_1086
        {1UL}, // p_2213->g_1096
        {{0xB7E9L},{0xE0C6L},{0xB7E9L},{0xB7E9L},{0xE0C6L},{0xB7E9L}}, // p_2213->g_1282
        {{{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L}},{{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L}},{{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L}},{{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L}},{{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L}},{{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L}},{{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L}},{{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L}},{{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L},{0x1C246DD7L,1L,1L}}}, // p_2213->g_1417
        1L, // p_2213->g_1418
        {&p_2213->g_456[1][4],(void*)0,&p_2213->g_456[1][4],&p_2213->g_456[1][4],(void*)0,&p_2213->g_456[1][4],&p_2213->g_456[1][4],(void*)0}, // p_2213->g_1488
        (void*)0, // p_2213->g_1489
        {0UL,0UL}, // p_2213->g_1536
        {0xDECEL}, // p_2213->g_1556
        0x6E43726BL, // p_2213->g_1567
        {18446744073709551615UL}, // p_2213->g_1627
        {6UL}, // p_2213->g_1630
        &p_2213->g_582[0], // p_2213->g_1676
        &p_2213->g_1676, // p_2213->g_1675
        {0xD8F4L}, // p_2213->g_1692
        (void*)0, // p_2213->g_1701
        &p_2213->g_1701, // p_2213->g_1700
        &p_2213->g_7, // p_2213->g_1712
        &p_2213->g_1712, // p_2213->g_1711
        6UL, // p_2213->g_1737
        (void*)0, // p_2213->g_1743
        18446744073709551607UL, // p_2213->g_1773
        {0xA1D584D75F053D0CL}, // p_2213->g_1863
        &p_2213->g_1676, // p_2213->g_1880
        {0xD6CF981355DAA1C1L}, // p_2213->g_1885
        {{{0UL},{0xDB521C193A17D067L},{0UL},{0UL},{0xDB521C193A17D067L},{0UL},{0UL},{0xDB521C193A17D067L},{0UL}},{{0UL},{0xDB521C193A17D067L},{0UL},{0UL},{0xDB521C193A17D067L},{0UL},{0UL},{0xDB521C193A17D067L},{0UL}},{{0UL},{0xDB521C193A17D067L},{0UL},{0UL},{0xDB521C193A17D067L},{0UL},{0UL},{0xDB521C193A17D067L},{0UL}},{{0UL},{0xDB521C193A17D067L},{0UL},{0UL},{0xDB521C193A17D067L},{0UL},{0UL},{0xDB521C193A17D067L},{0UL}}}, // p_2213->g_1902
        {1UL}, // p_2213->g_1915
        0UL, // p_2213->g_1927
        &p_2213->g_906, // p_2213->g_1950
        0x5AA5E9E9086A2507L, // p_2213->g_2000
        1UL, // p_2213->g_2019
        &p_2213->g_1773, // p_2213->g_2103
        &p_2213->g_274, // p_2213->g_2110
        &p_2213->g_2110, // p_2213->g_2109
        &p_2213->g_2109, // p_2213->g_2108
        &p_2213->g_2108, // p_2213->g_2107
        0L, // p_2213->g_2129
        {{&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712},{&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712}}, // p_2213->g_2134
        {{&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712}}, // p_2213->g_2135
        {&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712,&p_2213->g_1712}, // p_2213->g_2136
        (void*)0, // p_2213->g_2137
        0xC1L, // p_2213->g_2154
        {0L,0L}, // p_2213->g_2185
        (-4L), // p_2213->g_2204
        sequence_input[get_global_id(0)], // p_2213->global_0_offset
        sequence_input[get_global_id(1)], // p_2213->global_1_offset
        sequence_input[get_global_id(2)], // p_2213->global_2_offset
        sequence_input[get_local_id(0)], // p_2213->local_0_offset
        sequence_input[get_local_id(1)], // p_2213->local_1_offset
        sequence_input[get_local_id(2)], // p_2213->local_2_offset
        sequence_input[get_group_id(0)], // p_2213->group_0_offset
        sequence_input[get_group_id(1)], // p_2213->group_1_offset
        sequence_input[get_group_id(2)], // p_2213->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 55)), permutations[0][get_linear_local_id()])), // p_2213->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2214 = c_2215;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2213);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2213->g_2, "p_2213->g_2", print_hash_value);
    transparent_crc(p_2213->g_3, "p_2213->g_3", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2213->g_6[i][j], "p_2213->g_6[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2213->g_7, "p_2213->g_7", print_hash_value);
    transparent_crc(p_2213->g_8, "p_2213->g_8", print_hash_value);
    transparent_crc(p_2213->g_12, "p_2213->g_12", print_hash_value);
    transparent_crc(p_2213->g_15, "p_2213->g_15", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2213->g_16[i][j], "p_2213->g_16[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2213->g_17, "p_2213->g_17", print_hash_value);
    transparent_crc(p_2213->g_18, "p_2213->g_18", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2213->g_60[i][j], "p_2213->g_60[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2213->g_64[i][j].f0, "p_2213->g_64[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2213->g_80.f0, "p_2213->g_80.f0", print_hash_value);
    transparent_crc(p_2213->g_87, "p_2213->g_87", print_hash_value);
    transparent_crc(p_2213->g_95, "p_2213->g_95", print_hash_value);
    transparent_crc(p_2213->g_114, "p_2213->g_114", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2213->g_121[i][j], "p_2213->g_121[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2213->g_129, "p_2213->g_129", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2213->g_159[i], "p_2213->g_159[i]", print_hash_value);

    }
    transparent_crc(p_2213->g_162, "p_2213->g_162", print_hash_value);
    transparent_crc(p_2213->g_164, "p_2213->g_164", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2213->g_172[i], "p_2213->g_172[i]", print_hash_value);

    }
    transparent_crc(p_2213->g_176.f0, "p_2213->g_176.f0", print_hash_value);
    transparent_crc(p_2213->g_178.f0, "p_2213->g_178.f0", print_hash_value);
    transparent_crc(p_2213->g_185, "p_2213->g_185", print_hash_value);
    transparent_crc(p_2213->g_200.f0, "p_2213->g_200.f0", print_hash_value);
    transparent_crc(p_2213->g_225, "p_2213->g_225", print_hash_value);
    transparent_crc(p_2213->g_231, "p_2213->g_231", print_hash_value);
    transparent_crc(p_2213->g_242, "p_2213->g_242", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2213->g_249[i][j][k], "p_2213->g_249[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2213->g_274, "p_2213->g_274", print_hash_value);
    transparent_crc(p_2213->g_292, "p_2213->g_292", print_hash_value);
    transparent_crc(p_2213->g_312, "p_2213->g_312", print_hash_value);
    transparent_crc(p_2213->g_317.f0, "p_2213->g_317.f0", print_hash_value);
    transparent_crc(p_2213->g_322, "p_2213->g_322", print_hash_value);
    transparent_crc(p_2213->g_367, "p_2213->g_367", print_hash_value);
    transparent_crc(p_2213->g_368, "p_2213->g_368", print_hash_value);
    transparent_crc(p_2213->g_370, "p_2213->g_370", print_hash_value);
    transparent_crc(p_2213->g_373, "p_2213->g_373", print_hash_value);
    transparent_crc(p_2213->g_374, "p_2213->g_374", print_hash_value);
    transparent_crc(p_2213->g_381, "p_2213->g_381", print_hash_value);
    transparent_crc(p_2213->g_382, "p_2213->g_382", print_hash_value);
    transparent_crc(p_2213->g_383, "p_2213->g_383", print_hash_value);
    transparent_crc(p_2213->g_390, "p_2213->g_390", print_hash_value);
    transparent_crc(p_2213->g_391, "p_2213->g_391", print_hash_value);
    transparent_crc(p_2213->g_392, "p_2213->g_392", print_hash_value);
    transparent_crc(p_2213->g_393, "p_2213->g_393", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2213->g_415[i][j][k].f0, "p_2213->g_415[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2213->g_447, "p_2213->g_447", print_hash_value);
    transparent_crc(p_2213->g_519.f0, "p_2213->g_519.f0", print_hash_value);
    transparent_crc(p_2213->g_544.f0, "p_2213->g_544.f0", print_hash_value);
    transparent_crc(p_2213->g_546.f0, "p_2213->g_546.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2213->g_582[i].f0, "p_2213->g_582[i].f0", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2213->g_605[i][j][k], "p_2213->g_605[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2213->g_637.f0, "p_2213->g_637.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2213->g_677[i].f0, "p_2213->g_677[i].f0", print_hash_value);

    }
    transparent_crc(p_2213->g_737, "p_2213->g_737", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2213->g_800[i][j].f0, "p_2213->g_800[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2213->g_853.f0, "p_2213->g_853.f0", print_hash_value);
    transparent_crc(p_2213->g_883, "p_2213->g_883", print_hash_value);
    transparent_crc(p_2213->g_896.f0, "p_2213->g_896.f0", print_hash_value);
    transparent_crc(p_2213->g_914.f0, "p_2213->g_914.f0", print_hash_value);
    transparent_crc(p_2213->g_924, "p_2213->g_924", print_hash_value);
    transparent_crc(p_2213->g_1010.f0, "p_2213->g_1010.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_2213->g_1031[i][j].f0, "p_2213->g_1031[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2213->g_1086.f0, "p_2213->g_1086.f0", print_hash_value);
    transparent_crc(p_2213->g_1096.f0, "p_2213->g_1096.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2213->g_1282[i].f0, "p_2213->g_1282[i].f0", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2213->g_1417[i][j][k], "p_2213->g_1417[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2213->g_1418, "p_2213->g_1418", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2213->g_1536[i], "p_2213->g_1536[i]", print_hash_value);

    }
    transparent_crc(p_2213->g_1556.f0, "p_2213->g_1556.f0", print_hash_value);
    transparent_crc(p_2213->g_1567, "p_2213->g_1567", print_hash_value);
    transparent_crc(p_2213->g_1627.f0, "p_2213->g_1627.f0", print_hash_value);
    transparent_crc(p_2213->g_1630.f0, "p_2213->g_1630.f0", print_hash_value);
    transparent_crc(p_2213->g_1692.f0, "p_2213->g_1692.f0", print_hash_value);
    transparent_crc(p_2213->g_1737, "p_2213->g_1737", print_hash_value);
    transparent_crc(p_2213->g_1773, "p_2213->g_1773", print_hash_value);
    transparent_crc(p_2213->g_1863.f0, "p_2213->g_1863.f0", print_hash_value);
    transparent_crc(p_2213->g_1885.f0, "p_2213->g_1885.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2213->g_1902[i][j].f0, "p_2213->g_1902[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2213->g_1915.f0, "p_2213->g_1915.f0", print_hash_value);
    transparent_crc(p_2213->g_1927, "p_2213->g_1927", print_hash_value);
    transparent_crc(p_2213->g_2000, "p_2213->g_2000", print_hash_value);
    transparent_crc(p_2213->g_2019, "p_2213->g_2019", print_hash_value);
    transparent_crc(p_2213->g_2129, "p_2213->g_2129", print_hash_value);
    transparent_crc(p_2213->g_2154, "p_2213->g_2154", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2213->g_2185[i], "p_2213->g_2185[i]", print_hash_value);

    }
    transparent_crc(p_2213->g_2204, "p_2213->g_2204", print_hash_value);
    transparent_crc(p_2213->l_comm_values[get_linear_local_id()], "p_2213->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2213->g_comm_values[get_linear_group_id() * 55 + get_linear_local_id()], "p_2213->g_comm_values[get_linear_group_id() * 55 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
