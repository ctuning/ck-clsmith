// ---fake_divergence ---inter_thread_comm -g 6,15,55 -l 2,1,1
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{0,1}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{1,0}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 91

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint32_t g_2[7][3][6];
    int32_t g_3;
    uint32_t g_36;
    uint8_t g_49;
    uint8_t g_65;
    uint8_t *g_64[10][3][8];
    int8_t g_87[4];
    uint32_t g_92[6][7][6];
    uint32_t *g_91[8][1][5];
    int32_t g_94;
    int8_t g_123;
    uint64_t g_124[1][9][1];
    int32_t g_126;
    int16_t g_129;
    int32_t g_130[7][7];
    uint8_t g_155;
    volatile uint64_t g_158[9];
    uint64_t g_181[2][8];
    int32_t g_189;
    int32_t * volatile g_192;
    volatile int16_t g_240;
    volatile int32_t g_245;
    volatile int8_t g_246[4];
    int64_t g_247;
    volatile uint8_t g_248[2];
    int32_t *g_253;
    int64_t g_308;
    int32_t ** volatile g_323[6];
    uint16_t g_339;
    int16_t g_390;
    int32_t g_391;
    volatile uint8_t *g_401;
    int32_t *g_426;
    int32_t ** volatile g_425;
    uint32_t g_445[4];
    int64_t *g_461;
    int32_t g_485;
    uint32_t **g_565[6][9];
    uint32_t *** volatile g_564;
    volatile uint32_t g_588;
    int32_t g_615[8];
    int8_t * volatile g_669;
    int8_t * volatile * volatile g_668;
    volatile int32_t g_677[2];
    volatile int32_t *g_676;
    volatile int32_t ** volatile g_675;
    uint32_t g_697[7][10];
    volatile int16_t *g_701;
    volatile int16_t * volatile * volatile g_700[8];
    int64_t g_737;
    volatile int64_t g_775;
    volatile int64_t *g_774[10][9][1];
    volatile int64_t * volatile * volatile g_773[5][10];
    volatile int64_t * volatile * volatile *g_772[6];
    int64_t **g_892;
    volatile int8_t * volatile g_1005[6];
    volatile int8_t * volatile *g_1004;
    volatile int8_t * volatile ** volatile g_1003;
    volatile int8_t * volatile ** volatile *g_1002;
    int8_t ****g_1006;
    int32_t ** volatile g_1020;
    int64_t g_1087;
    int32_t ** volatile g_1128;
    volatile int32_t ** volatile g_1130;
    int32_t ** volatile g_1251[6][10];
    int32_t ** volatile g_1252;
    volatile uint32_t *g_1264[2];
    volatile uint32_t **g_1263[8];
    volatile uint8_t * volatile * volatile *g_1283;
    uint32_t **g_1297;
    uint32_t *** volatile g_1296;
    int32_t ** volatile g_1299;
    volatile int16_t * volatile *g_1334;
    volatile int16_t * volatile **g_1333;
    volatile uint64_t *g_1340[6][5];
    volatile uint64_t * volatile *g_1339;
    uint32_t g_1366;
    int32_t ** volatile g_1421;
    uint32_t ***g_1426;
    int64_t g_1601;
    uint64_t g_1625[9];
    int32_t ** volatile g_1658;
    int32_t ** volatile g_1820[10][1];
    volatile uint16_t g_1835;
    volatile uint16_t *g_1834;
    volatile uint16_t **g_1833;
    uint64_t *g_1839;
    uint64_t **g_1838;
    uint32_t g_1857;
    uint16_t g_1922;
    uint32_t g_1957;
    int32_t ** volatile g_1960;
    volatile uint64_t g_1971[7][5];
    volatile uint32_t g_2071;
    volatile uint32_t *g_2070;
    volatile uint32_t ** volatile g_2069;
    volatile uint64_t g_2086;
    int16_t *g_2104;
    int16_t **g_2103;
    uint32_t *g_2142;
    uint32_t **g_2141;
    uint32_t *** volatile g_2140;
    volatile int32_t ** volatile g_2143;
    uint32_t g_2206;
    uint16_t *g_2223[3];
    int8_t **g_2401;
    int8_t ***g_2400;
    int32_t ** volatile g_2445;
    uint64_t g_2449;
    int8_t g_2493;
    volatile uint8_t g_2494;
    int32_t ***g_2503;
    int32_t **g_2505;
    int32_t ***g_2504;
    uint32_t g_2630;
    int16_t ***g_2688;
    int16_t ****g_2687[4];
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
uint32_t  func_1(struct S0 * p_2690);
int8_t  func_19(uint16_t  p_20, uint16_t  p_21, uint32_t  p_22, int32_t  p_23, struct S0 * p_2690);
uint16_t  func_28(uint64_t  p_29, int32_t  p_30, struct S0 * p_2690);
int64_t  func_31(uint32_t  p_32, uint64_t  p_33, struct S0 * p_2690);
uint32_t  func_37(int32_t  p_38, uint32_t * p_39, struct S0 * p_2690);
int64_t  func_42(uint64_t  p_43, uint8_t  p_44, int64_t  p_45, struct S0 * p_2690);
uint8_t * func_53(uint8_t * p_54, uint32_t * p_55, uint32_t * p_56, int64_t  p_57, struct S0 * p_2690);
uint8_t * func_58(uint32_t  p_59, uint32_t * p_60, uint8_t * p_61, struct S0 * p_2690);
int16_t  func_70(int32_t  p_71, int64_t  p_72, int64_t  p_73, int32_t  p_74, struct S0 * p_2690);
int8_t  func_89(uint32_t * p_90, struct S0 * p_2690);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2690->g_3 p_2690->g_2505 p_2690->g_426 p_2690->g_391 p_2690->g_892 p_2690->g_461 p_2690->g_247 p_2690->g_1128 p_2690->g_253 p_2690->g_189
 * writes: p_2690->g_3 p_2690->g_181 p_2690->g_124 p_2690->g_2687 p_2690->g_247 p_2690->g_391
 */
uint32_t  func_1(struct S0 * p_2690)
{ /* block id: 4 */
    uint8_t l_17 = 0x17L;
    int16_t l_26 = 0L;
    int32_t l_1889 = 1L;
    int32_t l_1898 = 0L;
    int32_t l_1900 = 9L;
    int8_t l_1901 = 0x3EL;
    int32_t l_1902 = 0x3A7717DBL;
    int32_t l_1903 = 0x21CA1A91L;
    int32_t l_1904 = 0L;
    int32_t l_1906 = 2L;
    uint32_t *l_1925 = &p_2690->g_445[0];
    uint32_t l_1927[10][6] = {{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL}};
    int32_t *l_1944 = &l_1903;
    int32_t l_1963[4][4][10] = {{{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL}},{{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL}},{{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL}},{{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL},{1L,7L,0x5C11C5EEL,1L,(-1L),0x5C11C5EEL,0x5C11C5EEL,(-1L),1L,0x5C11C5EEL}}};
    uint32_t **l_2004 = &l_1925;
    int64_t l_2007 = 0x199233B7AFC70F3DL;
    uint8_t l_2051 = 255UL;
    uint32_t l_2083 = 0xB5827A63L;
    uint16_t l_2123 = 65535UL;
    int8_t *****l_2146 = &p_2690->g_1006;
    int64_t *l_2170 = &p_2690->g_308;
    uint32_t l_2260 = 0UL;
    uint32_t l_2291 = 1UL;
    uint32_t **l_2305 = &p_2690->g_2142;
    int32_t *l_2314 = &p_2690->g_615[1];
    int32_t l_2319 = (-1L);
    int32_t l_2356[4][2][3] = {{{0x27586316L,0L,(-9L)},{0x27586316L,0L,(-9L)}},{{0x27586316L,0L,(-9L)},{0x27586316L,0L,(-9L)}},{{0x27586316L,0L,(-9L)},{0x27586316L,0L,(-9L)}},{{0x27586316L,0L,(-9L)},{0x27586316L,0L,(-9L)}}};
    uint8_t l_2357 = 0x20L;
    uint16_t l_2407 = 0xE1F8L;
    int64_t l_2443 = (-1L);
    int32_t *l_2565 = &l_1898;
    int32_t *l_2568 = &l_1963[2][0][5];
    uint32_t l_2619[7][9] = {{4294967288UL,4294967288UL,0xA6BB1B38L,4294967295UL,0x7C0155F6L,4294967295UL,0xA6BB1B38L,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,0xA6BB1B38L,4294967295UL,0x7C0155F6L,4294967295UL,0xA6BB1B38L,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,0xA6BB1B38L,4294967295UL,0x7C0155F6L,4294967295UL,0xA6BB1B38L,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,0xA6BB1B38L,4294967295UL,0x7C0155F6L,4294967295UL,0xA6BB1B38L,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,0xA6BB1B38L,4294967295UL,0x7C0155F6L,4294967295UL,0xA6BB1B38L,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,0xA6BB1B38L,4294967295UL,0x7C0155F6L,4294967295UL,0xA6BB1B38L,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,0xA6BB1B38L,4294967295UL,0x7C0155F6L,4294967295UL,0xA6BB1B38L,4294967288UL,4294967288UL}};
    int32_t ***l_2624 = &p_2690->g_2505;
    int64_t ***l_2662 = &p_2690->g_892;
    uint16_t l_2674 = 0x6062L;
    uint64_t *l_2683 = &p_2690->g_181[0][4];
    uint64_t *l_2684 = &p_2690->g_124[0][3][0];
    int16_t ***l_2686 = &p_2690->g_2103;
    int16_t ****l_2685[1][2][7] = {{{(void*)0,&l_2686,(void*)0,(void*)0,&l_2686,(void*)0,(void*)0},{(void*)0,&l_2686,(void*)0,(void*)0,&l_2686,(void*)0,(void*)0}}};
    int32_t l_2689 = (-2L);
    int i, j, k;
    for (p_2690->g_3 = 2; (p_2690->g_3 >= 0); p_2690->g_3 -= 1)
    { /* block id: 7 */
        uint16_t l_4 = 0xCB24L;
        int32_t l_1878 = 0x08555819L;
        int32_t l_1894 = 0L;
        int32_t l_1897 = 0x3B0466D3L;
        int32_t l_1899 = 0x22CE126EL;
        int32_t l_1905[1];
        int16_t *l_2018 = &p_2690->g_390;
        int64_t **l_2076 = &p_2690->g_461;
        int32_t **l_2099 = &p_2690->g_426;
        uint16_t l_2135 = 65529UL;
        int32_t l_2162 = 0L;
        int32_t **l_2228 = &p_2690->g_426;
        uint64_t l_2327 = 18446744073709551615UL;
        int64_t *l_2333 = &p_2690->g_308;
        uint8_t l_2365 = 0x05L;
        int32_t l_2376 = 0x41831B6BL;
        int32_t l_2380 = 0x7FE0F81FL;
        int8_t *l_2397 = &p_2690->g_87[3];
        int8_t **l_2396[9][4];
        int8_t ***l_2395 = &l_2396[5][1];
        int64_t l_2448[3];
        uint32_t *l_2499 = &p_2690->g_1366;
        uint32_t l_2604 = 0xB0589D41L;
        int64_t l_2605 = 1L;
        int64_t l_2607 = (-10L);
        int32_t *l_2625[4][1] = {{&l_1904},{&l_1904},{&l_1904},{&l_1904}};
        int32_t ****l_2651 = (void*)0;
        uint8_t l_2670 = 0UL;
        int i, j;
        for (i = 0; i < 1; i++)
            l_1905[i] = (-1L);
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 4; j++)
                l_2396[i][j] = &l_2397;
        }
        for (i = 0; i < 3; i++)
            l_2448[i] = 1L;
        (1 + 1);
    }
    (***l_2624) = (safe_add_func_int64_t_s_s(l_2674, (((safe_lshift_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(0UL, 0xA46F1ACD703A9E51L)), 0x0E19DADFL)), 7)) < (*l_2565)) <= ((**p_2690->g_892) &= ((p_2690->g_2687[3] = ((((safe_add_func_uint8_t_u_u((*l_2568), (***l_2624))) , (((*l_2684) = ((*l_2683) = ((*l_1944) < 0L))) & (***l_2624))) , 1UL) , l_2685[0][0][6])) != &p_2690->g_2688)))));
    (*l_2568) |= (**p_2690->g_1128);
    (*l_2568) = (**p_2690->g_1128);
    return l_2689;
}


/* ------------------------------------------ */
/* 
 * reads : p_2690->g_36 p_2690->g_49 p_2690->g_64 p_2690->g_3 p_2690->g_91 p_2690->g_94 p_2690->g_comm_values p_2690->g_65 p_2690->g_92 p_2690->g_87 p_2690->g_124 p_2690->g_155 p_2690->g_158 p_2690->g_189 p_2690->g_130 p_2690->g_192 p_2690->g_126 p_2690->g_181 p_2690->g_248 p_2690->g_245 p_2690->g_253 p_2690->g_247 p_2690->g_308 p_2690->g_240 p_2690->l_comm_values p_2690->g_123 p_2690->g_339 p_2690->g_401 p_2690->g_1658 p_2690->g_676 p_2690->g_426 p_2690->g_737 p_2690->g_1003 p_2690->g_1004 p_2690->g_1005 p_2690->g_246 p_2690->g_391 p_2690->g_445 p_2690->g_892 p_2690->g_461 p_2690->g_390 p_2690->g_1087 p_2690->g_1366 p_2690->g_1299 p_2690->g_615 p_2690->g_1833 p_2690->g_1834 p_2690->g_1835 p_2690->g_1857 p_2690->g_1252 p_2690->g_1002
 * writes: p_2690->g_36 p_2690->g_49 p_2690->g_94 p_2690->g_92 p_2690->g_87 p_2690->g_124 p_2690->g_126 p_2690->g_129 p_2690->g_123 p_2690->g_130 p_2690->g_155 p_2690->g_158 p_2690->g_189 p_2690->g_65 p_2690->g_248 p_2690->g_253 p_2690->g_308 p_2690->g_339 p_2690->g_64 p_2690->g_677 p_2690->g_391 p_2690->g_737 p_2690->g_1426 p_2690->g_445 p_2690->g_390 p_2690->g_1087 p_2690->g_1366 p_2690->g_247 p_2690->g_181 p_2690->g_1838 p_2690->g_1857
 */
int8_t  func_19(uint16_t  p_20, uint16_t  p_21, uint32_t  p_22, int32_t  p_23, struct S0 * p_2690)
{ /* block id: 9 */
    int8_t l_27 = (-1L);
    int32_t l_34[2][9][3] = {{{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L}},{{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L},{0x191D4D00L,0x4E06DFE5L,0x4E4EC6F9L}}};
    uint32_t *l_35 = &p_2690->g_36;
    int8_t l_46 = 0x10L;
    uint8_t *l_47 = (void*)0;
    uint8_t *l_48 = &p_2690->g_49;
    int32_t l_50 = 0x40F86F4CL;
    uint8_t **l_400 = &p_2690->g_64[0][1][4];
    int32_t l_1877 = 0L;
    int i, j, k;
    l_1877 = (p_23 <= ((l_27 , (((func_28((func_31(l_27, (((((*l_35) ^= (l_34[0][2][2] = p_23)) >= (FAKE_DIVERGE(p_2690->global_0_offset, get_global_id(0), 10) | p_21)) != p_23) < func_37((safe_div_func_int64_t_s_s(func_42(l_27, (l_50 = ((*l_48) ^= l_46)), (safe_add_func_uint16_t_u_u((((*l_400) = func_53(func_58((safe_lshift_func_int16_t_s_s(l_27, 10)), l_35, p_2690->g_64[0][1][4], p_2690), l_35, l_35, l_46, p_2690)) == p_2690->g_401), p_20)), p_2690), 1UL)), l_35, p_2690)), p_2690) , 18446744073709551615UL), l_46, p_2690) , 0x18FE5022L) , l_27) == p_21)) && 0x16L));
    return (****p_2690->g_1002);
}


/* ------------------------------------------ */
/* 
 * reads : p_2690->g_339 p_2690->g_615 p_2690->g_1833 p_2690->g_1087 p_2690->g_49 p_2690->g_1834 p_2690->g_1835 p_2690->g_94 p_2690->g_253 p_2690->g_1857 p_2690->g_1252 p_2690->g_36 p_2690->g_189 p_2690->g_892 p_2690->g_461 p_2690->g_247 p_2690->g_676
 * writes: p_2690->g_339 p_2690->g_1838 p_2690->g_1087 p_2690->g_49 p_2690->g_94 p_2690->g_36 p_2690->g_189 p_2690->g_1857 p_2690->g_677
 */
uint16_t  func_28(uint64_t  p_29, int32_t  p_30, struct S0 * p_2690)
{ /* block id: 801 */
    int8_t l_1841 = 0x1AL;
    int32_t l_1842 = 0x428EE323L;
    int32_t l_1867 = 0x055FF9CAL;
    int32_t *l_1868[1][5][1] = {{{&p_2690->g_391},{&p_2690->g_391},{&p_2690->g_391},{&p_2690->g_391},{&p_2690->g_391}}};
    int64_t l_1869[1];
    uint32_t l_1870 = 4294967295UL;
    int64_t l_1873 = 0x01B09974E6F20E6BL;
    uint32_t l_1874[8][5] = {{4294967289UL,4294967295UL,9UL,0x8779E616L,4294967295UL},{4294967289UL,4294967295UL,9UL,0x8779E616L,4294967295UL},{4294967289UL,4294967295UL,9UL,0x8779E616L,4294967295UL},{4294967289UL,4294967295UL,9UL,0x8779E616L,4294967295UL},{4294967289UL,4294967295UL,9UL,0x8779E616L,4294967295UL},{4294967289UL,4294967295UL,9UL,0x8779E616L,4294967295UL},{4294967289UL,4294967295UL,9UL,0x8779E616L,4294967295UL},{4294967289UL,4294967295UL,9UL,0x8779E616L,4294967295UL}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1869[i] = 0x4B09D226354E0191L;
    for (p_2690->g_339 = 0; (p_2690->g_339 <= 7); p_2690->g_339 += 1)
    { /* block id: 804 */
        uint32_t ***l_1832 = &p_2690->g_565[5][0];
        uint64_t *l_1837 = (void*)0;
        uint64_t **l_1836 = &l_1837;
        int32_t l_1840 = 1L;
        int32_t l_1846 = 0L;
        uint32_t l_1847 = 0x71E4A010L;
        int16_t *l_1852[9][9] = {{&p_2690->g_390,&p_2690->g_390,(void*)0,&p_2690->g_390,&p_2690->g_129,(void*)0,&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,(void*)0,&p_2690->g_390,&p_2690->g_129,(void*)0,&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,(void*)0,&p_2690->g_390,&p_2690->g_129,(void*)0,&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,(void*)0,&p_2690->g_390,&p_2690->g_129,(void*)0,&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,(void*)0,&p_2690->g_390,&p_2690->g_129,(void*)0,&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,(void*)0,&p_2690->g_390,&p_2690->g_129,(void*)0,&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,(void*)0,&p_2690->g_390,&p_2690->g_129,(void*)0,&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,(void*)0,&p_2690->g_390,&p_2690->g_129,(void*)0,&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,(void*)0,&p_2690->g_390,&p_2690->g_129,(void*)0,&p_2690->g_390,&p_2690->g_390,&p_2690->g_390}};
        int i, j;
        if ((safe_div_func_int16_t_s_s(((-5L) <= ((252UL >= p_2690->g_615[p_2690->g_339]) == 8UL)), ((l_1832 != (void*)0) | ((void*)0 == p_2690->g_1833)))))
        { /* block id: 805 */
            int32_t *l_1843 = &p_2690->g_189;
            int32_t *l_1844 = &p_2690->g_391;
            int32_t *l_1845[1];
            int i;
            for (i = 0; i < 1; i++)
                l_1845[i] = &p_2690->g_189;
            p_2690->g_1838 = l_1836;
            if (p_2690->g_615[p_2690->g_339])
                break;
            for (p_2690->g_1087 = 5; (p_2690->g_1087 >= 0); p_2690->g_1087 -= 1)
            { /* block id: 810 */
                for (p_2690->g_49 = 0; (p_2690->g_49 <= 5); p_2690->g_49 += 1)
                { /* block id: 813 */
                    return (**p_2690->g_1833);
                }
                for (p_2690->g_94 = 4; (p_2690->g_94 >= 0); p_2690->g_94 -= 1)
                { /* block id: 818 */
                    (*p_2690->g_253) = p_2690->g_615[p_2690->g_339];
                }
            }
            ++l_1847;
        }
        else
        { /* block id: 823 */
            return l_1841;
        }
        (*p_2690->g_676) = ((safe_mul_func_uint16_t_u_u(((1UL == ((void*)0 == l_1852[7][3])) >= (safe_mul_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s((+(l_1842 = l_1842)), (0x4DA1L > (GROUP_DIVERGE(0, 1) , (++p_2690->g_1857))))) >= ((l_1867 = (0L & ((safe_sub_func_int64_t_s_s(((safe_rshift_func_int8_t_s_u(((safe_rshift_func_int16_t_s_s(0x65D2L, (((l_1840 , ((safe_unary_minus_func_int32_t_s((((p_29 & 0x67FA5FABL) < 4294967292UL) , (**p_2690->g_1252)))) & (**p_2690->g_892))) == p_30) | 8UL))) != (**p_2690->g_892)), 0)) ^ l_1846), 0x4446199C0DF59BB9L)) < l_1841))) , l_1841)), p_29))), (-1L))) && 65535UL);
    }
    --l_1870;
    l_1874[3][4]--;
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_2690->g_426 p_2690->g_391 p_2690->g_189 l_1906
 * writes: p_2690->g_65 p_2690->g_445 p_2690->g_391 l_1906
 */
int64_t  func_31(uint32_t  p_32, uint64_t  p_33, struct S0 * p_2690)
{ /* block id: 794 */
    int32_t *l_1819 = &p_2690->g_189;
    int8_t *l_1822 = (void*)0;
    int8_t **l_1821 = &l_1822;
    int8_t **l_1823 = &l_1822;
    int8_t ***l_1824 = &l_1823;
    int8_t ***l_1825 = (void*)0;
    int8_t **l_1827 = &l_1822;
    int8_t ***l_1826 = &l_1827;
    l_1819 = l_1819;
    for (p_2690->g_65 = 0; p_2690->g_65 < 4; p_2690->g_65 += 1)
    {
        p_2690->g_445[p_2690->g_65] = 0xB7689AC2L;
    }
    (*p_2690->g_426) &= (l_1821 == ((*l_1826) = ((*l_1824) = l_1823)));
    return (*l_1819);
}


/* ------------------------------------------ */
/* 
 * reads : p_2690->g_1658 p_2690->g_253 p_2690->g_676 p_2690->g_123 p_2690->g_308 p_2690->g_65 p_2690->g_426 p_2690->g_737 p_2690->g_1003 p_2690->g_1004 p_2690->g_1005 p_2690->g_246 p_2690->g_391 p_2690->g_94 p_2690->g_445 p_2690->g_892 p_2690->g_461 p_2690->g_247 p_2690->g_390 p_2690->g_1087 p_2690->g_126 p_2690->g_1366 p_2690->g_155 p_2690->g_192 p_2690->g_1299 l_1906
 * writes: p_2690->g_253 p_2690->g_677 p_2690->g_123 p_2690->g_308 p_2690->g_65 p_2690->g_391 p_2690->g_737 p_2690->g_1426 p_2690->g_49 p_2690->g_126 p_2690->g_94 p_2690->g_445 p_2690->g_390 p_2690->g_1087 p_2690->g_1366 p_2690->g_247 p_2690->g_181 l_1906
 */
uint32_t  func_37(int32_t  p_38, uint32_t * p_39, struct S0 * p_2690)
{ /* block id: 689 */
    uint32_t l_1676 = 0x87F03137L;
    uint32_t ***l_1689 = &p_2690->g_1297;
    int16_t *l_1730 = (void*)0;
    int32_t l_1732[2][2] = {{6L,6L},{6L,6L}};
    uint16_t l_1791 = 65528UL;
    uint16_t l_1794 = 0x3722L;
    uint64_t *l_1808[4][5][6] = {{{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0}},{{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0}},{{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0}},{{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0},{(void*)0,&p_2690->g_181[0][4],(void*)0,(void*)0,&p_2690->g_181[0][4],(void*)0}}};
    uint64_t *l_1809 = &p_2690->g_181[0][3];
    int32_t **l_1817 = (void*)0;
    int32_t ***l_1816 = &l_1817;
    int64_t *l_1818[3][3][9] = {{{&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,(void*)0,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308},{&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,(void*)0,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308},{&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,(void*)0,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308}},{{&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,(void*)0,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308},{&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,(void*)0,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308},{&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,(void*)0,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308}},{{&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,(void*)0,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308},{&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,(void*)0,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308},{&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,(void*)0,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308,&p_2690->g_308}}};
    int i, j, k;
lbl_1733:
    for (p_38 = 0; (p_38 <= 21); p_38++)
    { /* block id: 692 */
        int32_t **l_1661 = &p_2690->g_253;
        (*l_1661) = (*p_2690->g_1658);
        (*l_1661) = p_39;
        (*p_2690->g_676) = p_38;
    }
    for (p_2690->g_123 = 3; (p_2690->g_123 < 26); p_2690->g_123++)
    { /* block id: 699 */
        int8_t l_1702 = 0x63L;
        int32_t l_1708 = 1L;
        int32_t l_1711 = 0L;
        int8_t l_1769 = 0x1EL;
        int32_t l_1778 = 0x5C98017BL;
        int32_t l_1780 = 5L;
        int32_t l_1781 = 0x33351D1BL;
        int32_t l_1782 = 0x3DBCE8B1L;
        int32_t l_1784 = 0x1AEC2EAAL;
        int32_t l_1785 = 0x67E8D655L;
        int32_t l_1786 = (-6L);
        int32_t l_1787 = 0x2A70FC75L;
        int32_t l_1788 = (-4L);
        int32_t l_1789 = 0x3AAC74B6L;
        int32_t l_1790[6][2][8] = {{{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL},{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL}},{{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL},{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL}},{{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL},{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL}},{{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL},{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL}},{{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL},{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL}},{{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL},{0x3CEBEDBAL,0L,1L,(-1L),(-1L),1L,0L,0x3CEBEDBAL}}};
        int i, j, k;
        for (p_2690->g_308 = 0; (p_2690->g_308 < (-7)); p_2690->g_308 = safe_sub_func_uint16_t_u_u(p_2690->g_308, 9))
        { /* block id: 702 */
            uint32_t l_1675 = 4294967295UL;
            int64_t l_1700 = (-8L);
            int8_t *l_1701 = &p_2690->g_87[3];
            int32_t l_1709 = (-6L);
            int32_t l_1710 = 0x5E700A2DL;
            int16_t *l_1727[8][3] = {{&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,&p_2690->g_390},{&p_2690->g_390,&p_2690->g_390,&p_2690->g_390}};
            int i, j;
            for (p_2690->g_65 = 0; (p_2690->g_65 != 50); ++p_2690->g_65)
            { /* block id: 705 */
                int8_t l_1670 = (-2L);
                uint32_t ***l_1691 = &p_2690->g_1297;
                int32_t l_1712 = 1L;
                (*p_2690->g_426) = (safe_sub_func_int16_t_s_s(l_1670, (safe_mod_func_int8_t_s_s((l_1676 = (!(safe_lshift_func_int16_t_s_u(l_1675, 13)))), GROUP_DIVERGE(1, 1)))));
                for (p_2690->g_737 = (-11); (p_2690->g_737 >= (-11)); p_2690->g_737++)
                { /* block id: 710 */
                    uint32_t ****l_1690[8][7][4] = {{{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689}},{{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689}},{{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689}},{{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689}},{{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689}},{{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689}},{{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689}},{{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689},{&p_2690->g_1426,&l_1689,&p_2690->g_1426,&l_1689}}};
                    int32_t l_1692 = 0x2C9339B3L;
                    uint8_t *l_1698 = &p_2690->g_49;
                    int32_t l_1699 = 1L;
                    int32_t *l_1703 = &p_2690->g_126;
                    int32_t *l_1704 = &p_2690->g_94;
                    uint8_t l_1707 = 0x25L;
                    int8_t **l_1724 = &l_1701;
                    int8_t ***l_1723 = &l_1724;
                    int8_t l_1731[1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1731[i] = (-9L);
                    (*l_1704) &= (safe_add_func_int32_t_s_s((safe_mul_func_int8_t_s_s(p_38, 3L)), ((*l_1703) = ((safe_sub_func_int16_t_s_s((~(((((safe_mod_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((l_1691 = l_1689) == (l_1692 , (p_2690->g_1426 = l_1689))), ((*p_2690->g_426) ^= ((p_38 && ((((safe_add_func_int32_t_s_s(((((GROUP_DIVERGE(1, 1) < (safe_sub_func_uint8_t_u_u(p_38, 0x16L))) >= (((((l_1699 = (safe_unary_minus_func_uint8_t_u(((*l_1698) = 255UL)))) > FAKE_DIVERGE(p_2690->group_0_offset, get_group_id(0), 10)) < l_1676) < p_38) || l_1675)) || (***p_2690->g_1003)) < 0x23L), p_38)) & GROUP_DIVERGE(2, 1)) == 0x69E2L) >= l_1676)) , 0x52899F04L)))), l_1700)) , l_1676) , l_1692) , (void*)0) != l_1701)), 0xE99DL)) > l_1702))));
                    (*p_2690->g_676) = ((safe_mod_func_uint64_t_u_u(((l_1707 , (((++p_2690->g_445[0]) , ((*l_1704) > 0xFC1DL)) ^ l_1676)) > (((*l_1698) = (safe_mul_func_uint8_t_u_u((safe_div_func_int64_t_s_s((safe_mod_func_int8_t_s_s((((**p_2690->g_892) , ((safe_sub_func_int32_t_s_s(((void*)0 == l_1723), (safe_lshift_func_uint8_t_u_s(((l_1727[7][0] != ((safe_lshift_func_int16_t_s_u((l_1710 = (p_2690->g_390 ^= 1L)), 15)) , l_1730)) > 0xBF77D754L), l_1712)))) == l_1731[0])) == l_1732[1][1]), l_1732[1][0])), p_38)), 0UL))) , p_38)), l_1708)) | l_1702);
                    if (p_38)
                        break;
                }
                return l_1675;
            }
            for (p_2690->g_1087 = 0; (p_2690->g_1087 <= 0); p_2690->g_1087 += 1)
            { /* block id: 729 */
                if (p_2690->g_391)
                    goto lbl_1733;
            }
        }
        if (p_38)
            break;
        for (p_2690->g_126 = (-25); (p_2690->g_126 >= (-23)); p_2690->g_126 = safe_add_func_int32_t_s_s(p_2690->g_126, 1))
        { /* block id: 736 */
            uint32_t l_1736[7];
            int32_t l_1755 = 6L;
            int32_t l_1757[9][5][2] = {{{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L}},{{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L}},{{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L}},{{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L}},{{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L}},{{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L}},{{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L}},{{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L}},{{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L},{5L,0x73F7F031L}}};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_1736[i] = 0x2BDA9807L;
            for (p_2690->g_308 = 5; (p_2690->g_308 >= 1); p_2690->g_308 -= 1)
            { /* block id: 739 */
                uint8_t l_1741 = 255UL;
                uint32_t *l_1744 = &p_2690->g_445[0];
                int32_t l_1770 = (-1L);
                int32_t l_1776 = 0x0077EB72L;
                int32_t l_1777 = 5L;
                int32_t l_1779[9][9] = {{0x5F6B9661L,1L,(-8L),3L,0x35CF55CFL,(-1L),0L,0x2AE7C118L,1L},{0x5F6B9661L,1L,(-8L),3L,0x35CF55CFL,(-1L),0L,0x2AE7C118L,1L},{0x5F6B9661L,1L,(-8L),3L,0x35CF55CFL,(-1L),0L,0x2AE7C118L,1L},{0x5F6B9661L,1L,(-8L),3L,0x35CF55CFL,(-1L),0L,0x2AE7C118L,1L},{0x5F6B9661L,1L,(-8L),3L,0x35CF55CFL,(-1L),0L,0x2AE7C118L,1L},{0x5F6B9661L,1L,(-8L),3L,0x35CF55CFL,(-1L),0L,0x2AE7C118L,1L},{0x5F6B9661L,1L,(-8L),3L,0x35CF55CFL,(-1L),0L,0x2AE7C118L,1L},{0x5F6B9661L,1L,(-8L),3L,0x35CF55CFL,(-1L),0L,0x2AE7C118L,1L},{0x5F6B9661L,1L,(-8L),3L,0x35CF55CFL,(-1L),0L,0x2AE7C118L,1L}};
                int i, j;
                (*p_2690->g_676) = ((*p_2690->g_426) = (*p_2690->g_426));
                for (p_2690->g_391 = 0; (p_2690->g_391 <= 7); p_2690->g_391 += 1)
                { /* block id: 744 */
                    int32_t *l_1739 = &p_2690->g_189;
                    int32_t *l_1740[2][7][9] = {{{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126}},{{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126},{&l_1711,(void*)0,&l_1708,&l_1711,(void*)0,(void*)0,&p_2690->g_126,&l_1708,&p_2690->g_126}}};
                    int i, j, k;
                    l_1736[3]--;
                    for (p_2690->g_65 = 0; (p_2690->g_65 <= 5); p_2690->g_65 += 1)
                    { /* block id: 748 */
                        int i, j;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_2690->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[(safe_mod_func_uint32_t_u_u(l_1676, 10))][(safe_mod_func_uint32_t_u_u(p_2690->tid, 2))]));
                        if (l_1702)
                            goto lbl_1733;
                    }
                    if (l_1708)
                        goto lbl_1733;
                    l_1741--;
                }
                if (((++(*l_1744)) , (2L > p_38)))
                { /* block id: 758 */
                    int32_t l_1747 = 0x4E97B5ABL;
                    uint16_t *l_1750 = (void*)0;
                    (*p_2690->g_676) = (l_1747 == p_38);
                    for (p_2690->g_1366 = 0; (p_2690->g_1366 <= 5); p_2690->g_1366 += 1)
                    { /* block id: 762 */
                        uint16_t *l_1752 = &p_2690->g_339;
                        uint16_t **l_1751 = &l_1752;
                        int32_t **l_1754 = &p_2690->g_253;
                        int32_t ***l_1753 = &l_1754;
                        int16_t *l_1756 = &p_2690->g_390;
                        uint32_t *l_1766[6];
                        int8_t *l_1767 = &l_1702;
                        int i, j;
                        for (i = 0; i < 6; i++)
                            l_1766[i] = &p_2690->g_92[1][5][2];
                        l_1757[6][3][1] ^= ((safe_mod_func_int64_t_s_s(((*p_2690->g_461) = 4L), (((l_1750 != ((*l_1751) = &p_2690->g_339)) | (((*l_1753) = &p_2690->g_253) == (l_1736[4] , &p_2690->g_192))) ^ (l_1747 <= ((p_38 && ((*l_1756) |= (l_1755 = l_1708))) >= l_1747))))) & p_38);
                        l_1755 &= (safe_mod_func_uint8_t_u_u((((safe_add_func_int64_t_s_s((((void*)0 != &l_1752) | ((0x13L < ((p_38 >= 0x95E5L) > ((*p_2690->g_426) = (safe_add_func_uint32_t_u_u(1UL, (l_1676 < (safe_mul_func_uint8_t_u_u(((((*l_1767) = ((-10L) != (l_1732[1][1] = (1L > l_1702)))) != l_1708) == 0L), 0L)))))))) , p_38)), 0x429627F214B24943L)) != l_1708) > p_38), p_38));
                        (*p_2690->g_676) = 0L;
                        if (p_38)
                            continue;
                    }
                }
                else
                { /* block id: 776 */
                    int32_t *l_1768 = &l_1755;
                    int32_t *l_1771 = &p_2690->g_391;
                    int32_t l_1772 = 0x657013D4L;
                    int32_t *l_1773 = &l_1755;
                    int32_t *l_1774 = &l_1772;
                    int32_t *l_1775[4];
                    int32_t l_1783[5][5][4] = {{{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L}},{{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L}},{{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L}},{{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L}},{{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L},{2L,0x014B096EL,0x014B096EL,2L}}};
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_1775[i] = &l_1755;
                    l_1791--;
                    if (l_1794)
                        continue;
                }
                for (l_1676 = (-3); (l_1676 >= 13); l_1676 = safe_add_func_int32_t_s_s(l_1676, 7))
                { /* block id: 782 */
                    int64_t l_1799 = 0x03E97496E33A280BL;
                    l_1799 ^= (FAKE_DIVERGE(p_2690->group_2_offset, get_group_id(2), 10) ^ (safe_rshift_func_int16_t_s_s(0x6A8CL, 3)));
                    if (p_2690->g_308)
                        goto lbl_1733;
                }
            }
        }
    }
    (**p_2690->g_1299) = (((*l_1809) = (GROUP_DIVERGE(0, 1) ^ (safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((p_38 & p_38), (safe_rshift_func_int8_t_s_s(((l_1808[3][1][5] = &p_2690->g_181[0][4]) != l_1809), 3)))), GROUP_DIVERGE(1, 1))))) == ((safe_sub_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((l_1816 == &p_2690->g_1020), (((p_2690->g_308 = p_2690->g_155) , 65533UL) & 65532UL))), l_1732[1][1])), (*p_2690->g_192))) < 0x71AD2535L));
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_42(uint64_t  p_43, uint8_t  p_44, int64_t  p_45, struct S0 * p_2690)
{ /* block id: 124 */
    int8_t l_404 = 0x32L;
    int32_t l_449 = 0L;
    int64_t l_452 = 0x0A18C79D360E2517L;
    int32_t l_453 = (-1L);
    int32_t l_455[4][3];
    int32_t l_499 = 0x4749A87DL;
    int64_t *l_518 = &p_2690->g_247;
    uint32_t *l_587[9];
    int8_t *l_592[3][9];
    int16_t l_616 = 0x6FB5L;
    uint8_t **l_666[8][4] = {{&p_2690->g_64[0][1][4],(void*)0,&p_2690->g_64[0][1][4],&p_2690->g_64[0][1][4]},{&p_2690->g_64[0][1][4],(void*)0,&p_2690->g_64[0][1][4],&p_2690->g_64[0][1][4]},{&p_2690->g_64[0][1][4],(void*)0,&p_2690->g_64[0][1][4],&p_2690->g_64[0][1][4]},{&p_2690->g_64[0][1][4],(void*)0,&p_2690->g_64[0][1][4],&p_2690->g_64[0][1][4]},{&p_2690->g_64[0][1][4],(void*)0,&p_2690->g_64[0][1][4],&p_2690->g_64[0][1][4]},{&p_2690->g_64[0][1][4],(void*)0,&p_2690->g_64[0][1][4],&p_2690->g_64[0][1][4]},{&p_2690->g_64[0][1][4],(void*)0,&p_2690->g_64[0][1][4],&p_2690->g_64[0][1][4]},{&p_2690->g_64[0][1][4],(void*)0,&p_2690->g_64[0][1][4],&p_2690->g_64[0][1][4]}};
    uint32_t l_703 = 0x2EDE0765L;
    uint16_t l_716 = 65530UL;
    int8_t **l_746 = &l_592[0][2];
    int8_t ***l_745 = &l_746;
    uint32_t *l_763 = (void*)0;
    uint32_t l_915 = 0x0759E7F0L;
    int8_t l_1019[9][3][1] = {{{0x53L},{0x53L},{0x53L}},{{0x53L},{0x53L},{0x53L}},{{0x53L},{0x53L},{0x53L}},{{0x53L},{0x53L},{0x53L}},{{0x53L},{0x53L},{0x53L}},{{0x53L},{0x53L},{0x53L}},{{0x53L},{0x53L},{0x53L}},{{0x53L},{0x53L},{0x53L}},{{0x53L},{0x53L},{0x53L}}};
    uint32_t l_1037 = 0x47A21D59L;
    int16_t l_1088 = 0x62B8L;
    uint16_t l_1095 = 65535UL;
    int16_t *l_1117 = &p_2690->g_390;
    int16_t **l_1116 = &l_1117;
    int32_t *l_1156 = (void*)0;
    uint64_t l_1199 = 3UL;
    uint8_t *l_1201 = &p_2690->g_155;
    int32_t l_1466 = (-1L);
    int64_t l_1571 = 8L;
    uint32_t ***l_1646 = &p_2690->g_1297;
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
            l_455[i][j] = 0x025BAB80L;
    }
    for (i = 0; i < 9; i++)
        l_587[i] = &p_2690->g_92[0][1][4];
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
            l_592[i][j] = (void*)0;
    }
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_2690->g_123 p_2690->g_94 p_2690->g_339 p_2690->g_155 p_2690->g_comm_values p_2690->g_130 p_2690->g_65 p_2690->g_248 p_2690->g_253
 * writes: p_2690->g_123 p_2690->g_94 p_2690->g_339 p_2690->g_155 p_2690->g_65 p_2690->g_189
 */
uint8_t * func_53(uint8_t * p_54, uint32_t * p_55, uint32_t * p_56, int64_t  p_57, struct S0 * p_2690)
{ /* block id: 98 */
    uint64_t l_346[2][9] = {{0UL,0x4F8BCEA9F631EDF4L,1UL,0UL,0x4F8BCEA9F631EDF4L,0UL,1UL,0x4F8BCEA9F631EDF4L,0UL},{0UL,0x4F8BCEA9F631EDF4L,1UL,0UL,0x4F8BCEA9F631EDF4L,0UL,1UL,0x4F8BCEA9F631EDF4L,0UL}};
    int32_t l_350 = 0L;
    int32_t l_365 = (-2L);
    int32_t l_366 = 6L;
    int32_t l_367 = (-1L);
    int32_t l_368[3];
    int32_t l_388 = 0x76916E97L;
    int32_t l_395 = 6L;
    int i, j;
    for (i = 0; i < 3; i++)
        l_368[i] = 4L;
    for (p_2690->g_123 = (-24); (p_2690->g_123 != (-22)); p_2690->g_123 = safe_add_func_uint64_t_u_u(p_2690->g_123, 2))
    { /* block id: 101 */
        uint16_t l_327 = 0xB4EEL;
        --l_327;
    }
    for (p_2690->g_94 = 0; (p_2690->g_94 <= (-23)); p_2690->g_94 = safe_sub_func_int32_t_s_s(p_2690->g_94, 6))
    { /* block id: 106 */
        uint16_t *l_338 = &p_2690->g_339;
        int32_t l_342 = 0x729AA3EDL;
        uint8_t *l_343 = &p_2690->g_155;
        uint32_t l_347 = 0xA4DF51F3L;
        uint8_t *l_351 = &p_2690->g_65;
        int32_t *l_352 = &p_2690->g_126;
        int32_t *l_353 = &p_2690->g_189;
        int32_t *l_354 = &p_2690->g_126;
        int32_t *l_355 = (void*)0;
        int32_t *l_356 = (void*)0;
        int32_t *l_357 = &p_2690->g_189;
        int32_t *l_358 = &p_2690->g_126;
        int32_t *l_359 = &p_2690->g_126;
        int32_t *l_360 = &p_2690->g_189;
        int32_t *l_361 = &p_2690->g_126;
        int32_t *l_362 = &l_350;
        int32_t *l_363 = &l_350;
        int32_t *l_364[2];
        uint32_t l_369 = 0x8D8AB216L;
        uint16_t l_392 = 0xC909L;
        int i;
        for (i = 0; i < 2; i++)
            l_364[i] = &p_2690->g_189;
        (*p_2690->g_253) = ((safe_rshift_func_int16_t_s_s(3L, 8)) | (safe_rshift_func_uint16_t_u_s((((((p_57 <= (++(*l_338))) , l_342) >= 0x027CL) ^ ((--(*l_343)) <= (((l_347 = l_346[1][5]) > (+((p_2690->g_comm_values[p_2690->tid] != (0xD3L || l_342)) != ((((*l_351) ^= ((safe_sub_func_uint64_t_u_u(((l_350 = p_57) , p_2690->g_130[0][1]), 18446744073709551615UL)) | (-1L))) != p_2690->g_248[0]) >= p_57)))) > p_2690->g_94))) != 0xEEL), 2)));
        ++l_369;
        for (p_57 = 0; (p_57 > 29); p_57++)
        { /* block id: 116 */
            int32_t l_374 = 0x6D547744L;
            int32_t l_375 = 0L;
            int32_t l_376 = 0x6DA748FBL;
            int32_t l_377 = (-1L);
            int32_t l_378 = (-1L);
            int32_t l_379 = 0x750F75E8L;
            int32_t l_380 = 0L;
            int32_t l_381 = (-9L);
            int32_t l_382 = 1L;
            int32_t l_383 = 0L;
            int32_t l_384 = 0x76EB3FECL;
            int32_t l_385 = 0x6B1A1276L;
            int32_t l_386 = 0L;
            int32_t l_387 = 0x721E02E5L;
            int32_t l_389[3];
            int64_t l_396 = (-8L);
            uint8_t l_397[1];
            int i;
            for (i = 0; i < 3; i++)
                l_389[i] = 0L;
            for (i = 0; i < 1; i++)
                l_397[i] = 0UL;
            ++l_392;
            ++l_397[0];
            return p_54;
        }
    }
    return &p_2690->g_155;
}


/* ------------------------------------------ */
/* 
 * reads : p_2690->g_3 p_2690->g_91 p_2690->g_94 p_2690->g_comm_values p_2690->g_65 p_2690->g_92 p_2690->g_87 p_2690->g_124 p_2690->g_155 p_2690->g_158 p_2690->g_189 p_2690->g_130 p_2690->g_192 p_2690->g_126 p_2690->g_181 p_2690->g_248 p_2690->g_245 p_2690->g_253 p_2690->g_247 p_2690->g_308 p_2690->g_240 p_2690->l_comm_values
 * writes: p_2690->g_94 p_2690->g_92 p_2690->g_87 p_2690->g_124 p_2690->g_126 p_2690->g_129 p_2690->g_123 p_2690->g_130 p_2690->g_155 p_2690->g_158 p_2690->g_189 p_2690->g_65 p_2690->g_248 p_2690->g_253 p_2690->g_308
 */
uint8_t * func_58(uint32_t  p_59, uint32_t * p_60, uint8_t * p_61, struct S0 * p_2690)
{ /* block id: 14 */
    uint32_t l_75 = 3UL;
    int8_t *l_86[7][10][3] = {{{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]}},{{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]}},{{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]}},{{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]}},{{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]}},{{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]}},{{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]},{&p_2690->g_87[3],(void*)0,&p_2690->g_87[3]}}};
    int32_t l_88 = 0x1842105AL;
    int32_t *l_188[8] = {&p_2690->g_189,&p_2690->g_189,&p_2690->g_189,&p_2690->g_189,&p_2690->g_189,&p_2690->g_189,&p_2690->g_189,&p_2690->g_189};
    int32_t **l_322 = &l_188[7];
    int32_t *l_324[10][6] = {{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189},{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189},{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189},{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189},{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189},{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189},{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189},{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189},{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189},{&p_2690->g_189,(void*)0,&p_2690->g_94,(void*)0,&p_2690->g_126,&p_2690->g_189}};
    int i, j, k;
    (*p_2690->g_192) = (((safe_lshift_func_uint8_t_u_s(((safe_lshift_func_int16_t_s_s((func_70(l_75, p_59, ((safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(p_2690->g_3, (!(safe_rshift_func_int8_t_s_s((l_88 = l_75), (p_2690->g_87[0] = func_89(p_2690->g_91[2][0][2], p_2690))))))), ((p_59 != 1UL) , ((safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(((p_2690->g_189 = (l_75 > 0x160CFAABL)) >= p_59), 14)), 0x5CBCL)) ^ p_59)))), 2)), p_59)) , (-1L)), p_59, p_2690) || GROUP_DIVERGE(2, 1)), 12)) == 1UL), p_59)) , p_2690->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2690->tid, 2))]) != 0x13580BC1E87C2F69L);
    (*p_2690->g_253) &= p_59;
    l_324[8][5] = ((*l_322) = (void*)0);
    (*l_322) = p_60;
    return l_86[0][6][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_2690->g_189 p_2690->g_130 p_2690->g_192 p_2690->g_126 p_2690->g_65 p_2690->g_94 p_2690->g_comm_values p_2690->g_181 p_2690->g_248 p_2690->g_124 p_2690->g_245 p_2690->g_253 p_2690->g_92 p_2690->g_247 p_2690->g_308 p_2690->g_158 p_2690->g_240
 * writes: p_2690->g_189 p_2690->g_126 p_2690->g_65 p_2690->g_155 p_2690->g_92 p_2690->g_123 p_2690->g_124 p_2690->g_248 p_2690->g_253 p_2690->g_308
 */
int16_t  func_70(int32_t  p_71, int64_t  p_72, int64_t  p_73, int32_t  p_74, struct S0 * p_2690)
{ /* block id: 57 */
    int32_t l_219[3];
    uint16_t l_229[6][1][10] = {{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}},{{0xDB60L,0xDB60L,0UL,65535UL,65535UL,65535UL,0UL,0xDB60L,0xDB60L,0UL}}};
    int32_t l_233 = 0x00BBF0BDL;
    int32_t l_236 = 3L;
    int32_t l_237 = 0L;
    int32_t l_238 = 0x389C0F3DL;
    int32_t l_239 = 0x1F7D501DL;
    int32_t l_241 = 0x18966E9EL;
    int32_t l_242 = 0x3E25CF47L;
    int32_t l_244 = 0x3C7EA47AL;
    int32_t *l_252 = &l_233;
    int32_t **l_251[5][8][3] = {{{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252}},{{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252}},{{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252}},{{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252}},{{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252},{&l_252,(void*)0,&l_252}}};
    uint32_t *l_260 = &p_2690->g_92[1][0][3];
    uint32_t l_305 = 4294967292UL;
    int32_t *l_321 = &l_238;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_219[i] = 0x39F3FC71L;
    for (p_2690->g_189 = 0; (p_2690->g_189 == (-15)); p_2690->g_189 = safe_sub_func_int32_t_s_s(p_2690->g_189, 1))
    { /* block id: 60 */
        (*p_2690->g_192) &= (p_2690->g_130[0][6] && 0L);
    }
    for (p_2690->g_65 = 0; (p_2690->g_65 > 22); p_2690->g_65++)
    { /* block id: 65 */
        uint8_t *l_228 = &p_2690->g_155;
        uint32_t *l_230 = &p_2690->g_92[4][4][0];
        uint64_t *l_231 = &p_2690->g_124[0][7][0];
        int32_t *l_232 = &p_2690->g_189;
        int32_t *l_234 = &p_2690->g_189;
        int32_t *l_235[6];
        int8_t l_243 = 0x3BL;
        int i;
        for (i = 0; i < 6; i++)
            l_235[i] = (void*)0;
        if (p_73)
            break;
        (*l_232) ^= ((safe_sub_func_int64_t_s_s(9L, (safe_sub_func_int32_t_s_s((safe_sub_func_uint64_t_u_u(((*l_231) = ((p_2690->g_94 & (p_2690->g_123 = (safe_mul_func_uint8_t_u_u(6UL, (safe_sub_func_uint32_t_u_u((p_2690->g_comm_values[p_2690->tid] && ((((void*)0 != &p_2690->g_158[7]) && ((*l_230) = (safe_mod_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((safe_div_func_int32_t_s_s((safe_mod_func_int64_t_s_s((safe_mod_func_int32_t_s_s((~(safe_sub_func_int8_t_s_s(((l_219[0] > 1UL) >= (((*l_228) = (safe_mod_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(p_2690->g_94, p_74)), l_219[2])), p_73)), p_2690->g_65))) | l_219[1])), l_219[1]))), (*p_2690->g_192))), p_74)), l_229[3][0][3])), 0xDFL)), p_2690->g_181[1][2])), p_72)))) , 65530UL)), l_229[3][0][3])))))) , p_72)), p_72)), 0x0A313900L)))) < 0xF0C489A9L);
        if (p_71)
            continue;
        --p_2690->g_248[1];
    }
    if (((&l_236 != (l_244 , (p_2690->g_253 = &p_2690->g_189))) , (safe_rshift_func_uint16_t_u_s(p_71, (safe_lshift_func_uint8_t_u_u((((((safe_rshift_func_int16_t_s_u(0x6D3BL, 0)) ^ (p_71 >= ((((*l_260) = FAKE_DIVERGE(p_2690->global_0_offset, get_global_id(0), 10)) != (((-5L) == (safe_sub_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((((*p_2690->g_253) = ((p_2690->g_124[0][5][0] ^ (safe_rshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((-7L), p_2690->g_245)), (*l_252))), 4))) , p_71)) , p_72), p_72)), p_2690->g_94))) , (-1L))) || 3UL))) && p_71) >= 0x18D4L) >= p_73), 0))))))
    { /* block id: 78 */
        uint8_t l_281 = 0x6CL;
        int32_t l_294 = 0L;
        uint8_t *l_306 = &p_2690->g_65;
        int64_t *l_307 = &p_2690->g_308;
        int32_t l_309 = 0x3E1369EDL;
        l_309 |= (safe_sub_func_int32_t_s_s(((safe_mod_func_uint64_t_u_u(((((((*l_307) |= (safe_div_func_uint64_t_u_u((~((~(0x11L != ((safe_sub_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((l_281 , ((safe_rshift_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s((p_74 >= ((*l_306) = (p_74 && (safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_s(p_2690->g_126, 13)), (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_u((((l_294 &= 0x2CB4EECBL) , (safe_mod_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_2690->global_1_offset, get_global_id(1), 10), (l_294 = l_294))), GROUP_DIVERGE(2, 1))), (safe_lshift_func_int16_t_s_u((2UL | (safe_lshift_func_int8_t_s_s(((l_305 , (*l_252)) , p_2690->g_124[0][3][0]), p_74))), 8))))) , FAKE_DIVERGE(p_2690->local_1_offset, get_local_id(1), 10)), p_73)) , p_2690->g_65), GROUP_DIVERGE(1, 1)))))))), 5)) >= 1UL), p_74)) && (*p_2690->g_253))), l_281)) != FAKE_DIVERGE(p_2690->group_1_offset, get_group_id(1), 10)), p_2690->g_92[4][4][0])) != p_2690->g_247))) != FAKE_DIVERGE(p_2690->local_2_offset, get_local_id(2), 10))), p_2690->g_189))) , p_2690->g_247) <= p_73) | 4294967295UL) & p_73), p_73)) , l_294), FAKE_DIVERGE(p_2690->local_2_offset, get_local_id(2), 10)));
        return l_294;
    }
    else
    { /* block id: 85 */
        uint16_t l_316 = 65535UL;
        uint8_t *l_317 = &p_2690->g_65;
        int64_t *l_318 = &p_2690->g_308;
        (*l_252) &= (p_2690->g_158[5] >= (safe_mul_func_uint16_t_u_u((((((safe_add_func_int32_t_s_s((((safe_mul_func_uint8_t_u_u(l_316, ((*l_317) |= GROUP_DIVERGE(0, 1)))) >= 3L) >= ((&l_252 == (void*)0) ^ p_73)), 0x5A727006L)) , (((l_318 = &p_2690->g_308) != ((safe_rshift_func_int8_t_s_u(((0x6FL > p_71) <= l_316), 7)) , (void*)0)) == p_2690->g_181[0][4])) != 0x15L) ^ l_316) , p_72), p_2690->g_126)));
    }
    l_321 = &p_2690->g_126;
    return p_2690->g_240;
}


/* ------------------------------------------ */
/* 
 * reads : p_2690->g_94 p_2690->g_comm_values p_2690->g_65 p_2690->g_92 p_2690->g_87 p_2690->g_124 p_2690->g_3 p_2690->g_155 p_2690->g_158
 * writes: p_2690->g_94 p_2690->g_92 p_2690->g_87 p_2690->g_124 p_2690->g_126 p_2690->g_129 p_2690->g_123 p_2690->g_130 p_2690->g_155 p_2690->g_158
 */
int8_t  func_89(uint32_t * p_90, struct S0 * p_2690)
{ /* block id: 16 */
    int32_t *l_93 = &p_2690->g_94;
    uint32_t *l_111 = &p_2690->g_92[4][2][5];
    int8_t *l_122 = &p_2690->g_123;
    int32_t *l_125 = &p_2690->g_126;
    int16_t *l_127 = (void*)0;
    int16_t *l_128 = &p_2690->g_129;
    uint8_t l_131 = 254UL;
    int64_t *l_132 = (void*)0;
    int64_t *l_133 = (void*)0;
    int64_t *l_134 = (void*)0;
    int64_t *l_135 = (void*)0;
    int64_t *l_136 = (void*)0;
    int64_t *l_137 = (void*)0;
    int64_t *l_138 = (void*)0;
    int64_t *l_139 = (void*)0;
    int64_t *l_140 = (void*)0;
    int64_t *l_141 = (void*)0;
    int64_t *l_142[8];
    int32_t l_143 = 0L;
    int32_t l_153 = 4L;
    int32_t l_154 = 0L;
    int i;
    for (i = 0; i < 8; i++)
        l_142[i] = (void*)0;
    (*l_93) = 0x378C740EL;
    (*l_93) = ((safe_rshift_func_int16_t_s_s((-2L), (((*l_93) ^ (((((((((0x2448L & ((((((((safe_sub_func_int64_t_s_s((l_143 &= (safe_rshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(((safe_lshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((p_2690->g_130[0][6] = (p_2690->g_comm_values[p_2690->tid] | ((*l_122) = (safe_sub_func_int32_t_s_s((((*l_111) = (p_2690->g_65 <= (*l_93))) && ((*l_111)--)), ((safe_mul_func_int16_t_s_s(((*l_128) = (safe_lshift_func_uint16_t_u_u((0x53L != (p_2690->g_87[3] |= (safe_lshift_func_uint16_t_u_u((*l_93), 6)))), ((safe_div_func_int32_t_s_s(((*l_125) = (p_2690->g_124[0][3][0] |= (l_122 == &p_2690->g_123))), FAKE_DIVERGE(p_2690->local_0_offset, get_local_id(0), 10))) , p_2690->g_3)))), p_2690->g_3)) & p_2690->g_3)))))), (-3L))), (*l_93))), 8)) ^ 18446744073709551608UL), l_131)), 10))), 0xE3999123B753B5FDL)) , 0L) , (void*)0) != l_122) != (*l_93)) != 9L) , &p_2690->g_92[2][4][0]) != (void*)0)) & (*l_93)) , (*l_93)) < (*l_93)) >= 0x7A66F30BL) , (*l_93)) & (*l_93)) | (*l_93)) && 0x557DD5A8L)) || p_2690->g_94))) | 0xAF1AC7F9B73E1716L);
    if (p_2690->g_3)
    { /* block id: 28 */
        int32_t *l_144 = &l_143;
        int32_t *l_145 = &p_2690->g_126;
        int32_t *l_146 = (void*)0;
        int32_t *l_147 = &p_2690->g_126;
        int32_t *l_148 = &p_2690->g_94;
        int32_t *l_149 = &p_2690->g_126;
        int32_t *l_150 = &p_2690->g_126;
        int32_t *l_151 = &p_2690->g_94;
        int32_t *l_152[2][7][7] = {{{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3}},{{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3},{&p_2690->g_3,&p_2690->g_3,&p_2690->g_126,&l_143,&p_2690->g_94,(void*)0,&p_2690->g_3}}};
        int i, j, k;
        --p_2690->g_155;
        --p_2690->g_158[7];
    }
    else
    { /* block id: 31 */
        int8_t l_171 = 0x45L;
        int32_t l_180 = 0L;
        for (l_143 = 6; (l_143 >= 0); l_143 -= 1)
        { /* block id: 34 */
            uint64_t *l_165 = &p_2690->g_124[0][5][0];
            int32_t l_168 = (-8L);
            uint8_t *l_175 = &p_2690->g_65;
            int i;
            (1 + 1);
        }
    }
    return p_2690->g_155;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S0 c_2691;
    struct S0* p_2690 = &c_2691;
    struct S0 c_2692 = {
        {{{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L}},{{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L}},{{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L}},{{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L}},{{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L}},{{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L}},{{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L},{0xE8C9F369L,1UL,4294967295UL,1UL,0xE8C9F369L,0xE8C9F369L}}}, // p_2690->g_2
        1L, // p_2690->g_3
        4294967295UL, // p_2690->g_36
        0xADL, // p_2690->g_49
        0UL, // p_2690->g_65
        {{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}},{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}},{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}},{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}},{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}},{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}},{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}},{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}},{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}},{{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65},{&p_2690->g_65,(void*)0,&p_2690->g_65,(void*)0,&p_2690->g_65,&p_2690->g_65,(void*)0,&p_2690->g_65}}}, // p_2690->g_64
        {1L,1L,1L,1L}, // p_2690->g_87
        {{{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL}},{{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL}},{{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL}},{{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL}},{{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL}},{{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL},{0x7C8A0849L,0xB4BAC794L,0x224176C3L,0x626FBE56L,0x1D0942DFL,0x996A0D2CL}}}, // p_2690->g_92
        {{{(void*)0,(void*)0,&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0]}},{{(void*)0,(void*)0,&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0]}},{{(void*)0,(void*)0,&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0]}},{{(void*)0,(void*)0,&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0]}},{{(void*)0,(void*)0,&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0]}},{{(void*)0,(void*)0,&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0]}},{{(void*)0,(void*)0,&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0]}},{{(void*)0,(void*)0,&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0],&p_2690->g_92[4][4][0]}}}, // p_2690->g_91
        0x7C98A5CBL, // p_2690->g_94
        0x55L, // p_2690->g_123
        {{{0x78C8CD5B4F6F77BDL},{0x78C8CD5B4F6F77BDL},{0x78C8CD5B4F6F77BDL},{0x78C8CD5B4F6F77BDL},{0x78C8CD5B4F6F77BDL},{0x78C8CD5B4F6F77BDL},{0x78C8CD5B4F6F77BDL},{0x78C8CD5B4F6F77BDL},{0x78C8CD5B4F6F77BDL}}}, // p_2690->g_124
        0x28E1C964L, // p_2690->g_126
        0x3A23L, // p_2690->g_129
        {{(-5L),0x6E363805L,2L,0x217CE365L,0x6E363805L,0x217CE365L,2L},{(-5L),0x6E363805L,2L,0x217CE365L,0x6E363805L,0x217CE365L,2L},{(-5L),0x6E363805L,2L,0x217CE365L,0x6E363805L,0x217CE365L,2L},{(-5L),0x6E363805L,2L,0x217CE365L,0x6E363805L,0x217CE365L,2L},{(-5L),0x6E363805L,2L,0x217CE365L,0x6E363805L,0x217CE365L,2L},{(-5L),0x6E363805L,2L,0x217CE365L,0x6E363805L,0x217CE365L,2L},{(-5L),0x6E363805L,2L,0x217CE365L,0x6E363805L,0x217CE365L,2L}}, // p_2690->g_130
        255UL, // p_2690->g_155
        {0xED941E28011D83F6L,0xED941E28011D83F6L,0xED941E28011D83F6L,0xED941E28011D83F6L,0xED941E28011D83F6L,0xED941E28011D83F6L,0xED941E28011D83F6L,0xED941E28011D83F6L,0xED941E28011D83F6L}, // p_2690->g_158
        {{18446744073709551606UL,18446744073709551606UL,18446744073709551615UL,3UL,0xB477D3B041FD7500L,3UL,18446744073709551615UL,18446744073709551606UL},{18446744073709551606UL,18446744073709551606UL,18446744073709551615UL,3UL,0xB477D3B041FD7500L,3UL,18446744073709551615UL,18446744073709551606UL}}, // p_2690->g_181
        (-7L), // p_2690->g_189
        &p_2690->g_126, // p_2690->g_192
        (-1L), // p_2690->g_240
        (-1L), // p_2690->g_245
        {(-7L),(-7L),(-7L),(-7L)}, // p_2690->g_246
        (-1L), // p_2690->g_247
        {0xC1L,0xC1L}, // p_2690->g_248
        &p_2690->g_189, // p_2690->g_253
        (-3L), // p_2690->g_308
        {&p_2690->g_253,&p_2690->g_253,&p_2690->g_253,&p_2690->g_253,&p_2690->g_253,&p_2690->g_253}, // p_2690->g_323
        65532UL, // p_2690->g_339
        0x5B09L, // p_2690->g_390
        0L, // p_2690->g_391
        (void*)0, // p_2690->g_401
        &p_2690->g_391, // p_2690->g_426
        &p_2690->g_426, // p_2690->g_425
        {0UL,0UL,0UL,0UL}, // p_2690->g_445
        &p_2690->g_247, // p_2690->g_461
        0x4D2EA72EL, // p_2690->g_485
        {{(void*)0,&p_2690->g_91[5][0][0],&p_2690->g_91[2][0][2],(void*)0,&p_2690->g_91[1][0][2],(void*)0,&p_2690->g_91[6][0][0],&p_2690->g_91[2][0][2],&p_2690->g_91[6][0][0]},{(void*)0,&p_2690->g_91[5][0][0],&p_2690->g_91[2][0][2],(void*)0,&p_2690->g_91[1][0][2],(void*)0,&p_2690->g_91[6][0][0],&p_2690->g_91[2][0][2],&p_2690->g_91[6][0][0]},{(void*)0,&p_2690->g_91[5][0][0],&p_2690->g_91[2][0][2],(void*)0,&p_2690->g_91[1][0][2],(void*)0,&p_2690->g_91[6][0][0],&p_2690->g_91[2][0][2],&p_2690->g_91[6][0][0]},{(void*)0,&p_2690->g_91[5][0][0],&p_2690->g_91[2][0][2],(void*)0,&p_2690->g_91[1][0][2],(void*)0,&p_2690->g_91[6][0][0],&p_2690->g_91[2][0][2],&p_2690->g_91[6][0][0]},{(void*)0,&p_2690->g_91[5][0][0],&p_2690->g_91[2][0][2],(void*)0,&p_2690->g_91[1][0][2],(void*)0,&p_2690->g_91[6][0][0],&p_2690->g_91[2][0][2],&p_2690->g_91[6][0][0]},{(void*)0,&p_2690->g_91[5][0][0],&p_2690->g_91[2][0][2],(void*)0,&p_2690->g_91[1][0][2],(void*)0,&p_2690->g_91[6][0][0],&p_2690->g_91[2][0][2],&p_2690->g_91[6][0][0]}}, // p_2690->g_565
        &p_2690->g_565[3][5], // p_2690->g_564
        0xF98BB139L, // p_2690->g_588
        {0x1B594128L,0x1B594128L,0x1B594128L,0x1B594128L,0x1B594128L,0x1B594128L,0x1B594128L,0x1B594128L}, // p_2690->g_615
        (void*)0, // p_2690->g_669
        &p_2690->g_669, // p_2690->g_668
        {(-2L),(-2L)}, // p_2690->g_677
        &p_2690->g_677[1], // p_2690->g_676
        &p_2690->g_676, // p_2690->g_675
        {{0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL,0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL},{0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL,0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL},{0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL,0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL},{0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL,0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL},{0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL,0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL},{0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL,0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL},{0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL,0xD34D4A3DL,4294967292UL,0x3B522196L,4294967292UL,0xD34D4A3DL}}, // p_2690->g_697
        &p_2690->g_240, // p_2690->g_701
        {&p_2690->g_701,&p_2690->g_701,&p_2690->g_701,&p_2690->g_701,&p_2690->g_701,&p_2690->g_701,&p_2690->g_701,&p_2690->g_701}, // p_2690->g_700
        0x4AD65B82BAA4D6D1L, // p_2690->g_737
        8L, // p_2690->g_775
        {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}}, // p_2690->g_774
        {{&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0]},{&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0]},{&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0]},{&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0]},{&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0],&p_2690->g_774[9][5][0],&p_2690->g_774[1][6][0],&p_2690->g_774[1][6][0]}}, // p_2690->g_773
        {&p_2690->g_773[3][1],&p_2690->g_773[0][4],&p_2690->g_773[3][1],&p_2690->g_773[3][1],&p_2690->g_773[0][4],&p_2690->g_773[3][1]}, // p_2690->g_772
        &p_2690->g_461, // p_2690->g_892
        {&p_2690->g_246[3],&p_2690->g_246[1],&p_2690->g_246[3],&p_2690->g_246[3],&p_2690->g_246[1],&p_2690->g_246[3]}, // p_2690->g_1005
        &p_2690->g_1005[2], // p_2690->g_1004
        &p_2690->g_1004, // p_2690->g_1003
        &p_2690->g_1003, // p_2690->g_1002
        (void*)0, // p_2690->g_1006
        &p_2690->g_253, // p_2690->g_1020
        1L, // p_2690->g_1087
        &p_2690->g_253, // p_2690->g_1128
        (void*)0, // p_2690->g_1130
        {{&p_2690->g_426,(void*)0,&p_2690->g_253,&p_2690->g_253,&p_2690->g_426,&p_2690->g_253,&p_2690->g_253,(void*)0,&p_2690->g_426,&p_2690->g_253},{&p_2690->g_426,(void*)0,&p_2690->g_253,&p_2690->g_253,&p_2690->g_426,&p_2690->g_253,&p_2690->g_253,(void*)0,&p_2690->g_426,&p_2690->g_253},{&p_2690->g_426,(void*)0,&p_2690->g_253,&p_2690->g_253,&p_2690->g_426,&p_2690->g_253,&p_2690->g_253,(void*)0,&p_2690->g_426,&p_2690->g_253},{&p_2690->g_426,(void*)0,&p_2690->g_253,&p_2690->g_253,&p_2690->g_426,&p_2690->g_253,&p_2690->g_253,(void*)0,&p_2690->g_426,&p_2690->g_253},{&p_2690->g_426,(void*)0,&p_2690->g_253,&p_2690->g_253,&p_2690->g_426,&p_2690->g_253,&p_2690->g_253,(void*)0,&p_2690->g_426,&p_2690->g_253},{&p_2690->g_426,(void*)0,&p_2690->g_253,&p_2690->g_253,&p_2690->g_426,&p_2690->g_253,&p_2690->g_253,(void*)0,&p_2690->g_426,&p_2690->g_253}}, // p_2690->g_1251
        &p_2690->g_253, // p_2690->g_1252
        {(void*)0,(void*)0}, // p_2690->g_1264
        {&p_2690->g_1264[1],&p_2690->g_1264[1],&p_2690->g_1264[1],&p_2690->g_1264[1],&p_2690->g_1264[1],&p_2690->g_1264[1],&p_2690->g_1264[1],&p_2690->g_1264[1]}, // p_2690->g_1263
        (void*)0, // p_2690->g_1283
        (void*)0, // p_2690->g_1297
        &p_2690->g_1297, // p_2690->g_1296
        &p_2690->g_426, // p_2690->g_1299
        (void*)0, // p_2690->g_1334
        &p_2690->g_1334, // p_2690->g_1333
        {{&p_2690->g_158[7],&p_2690->g_158[6],&p_2690->g_158[6],&p_2690->g_158[7],&p_2690->g_158[7]},{&p_2690->g_158[7],&p_2690->g_158[6],&p_2690->g_158[6],&p_2690->g_158[7],&p_2690->g_158[7]},{&p_2690->g_158[7],&p_2690->g_158[6],&p_2690->g_158[6],&p_2690->g_158[7],&p_2690->g_158[7]},{&p_2690->g_158[7],&p_2690->g_158[6],&p_2690->g_158[6],&p_2690->g_158[7],&p_2690->g_158[7]},{&p_2690->g_158[7],&p_2690->g_158[6],&p_2690->g_158[6],&p_2690->g_158[7],&p_2690->g_158[7]},{&p_2690->g_158[7],&p_2690->g_158[6],&p_2690->g_158[6],&p_2690->g_158[7],&p_2690->g_158[7]}}, // p_2690->g_1340
        &p_2690->g_1340[0][2], // p_2690->g_1339
        4294967295UL, // p_2690->g_1366
        &p_2690->g_426, // p_2690->g_1421
        &p_2690->g_1297, // p_2690->g_1426
        0x3B8DD89AC018DDDEL, // p_2690->g_1601
        {18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL}, // p_2690->g_1625
        &p_2690->g_253, // p_2690->g_1658
        {{&p_2690->g_253},{&p_2690->g_253},{&p_2690->g_253},{&p_2690->g_253},{&p_2690->g_253},{&p_2690->g_253},{&p_2690->g_253},{&p_2690->g_253},{&p_2690->g_253},{&p_2690->g_253}}, // p_2690->g_1820
        0x85E6L, // p_2690->g_1835
        &p_2690->g_1835, // p_2690->g_1834
        &p_2690->g_1834, // p_2690->g_1833
        &p_2690->g_1625[4], // p_2690->g_1839
        &p_2690->g_1839, // p_2690->g_1838
        0x7A64C630L, // p_2690->g_1857
        0x6627L, // p_2690->g_1922
        4294967295UL, // p_2690->g_1957
        &p_2690->g_253, // p_2690->g_1960
        {{1UL,18446744073709551615UL,18446744073709551615UL,1UL,1UL},{1UL,18446744073709551615UL,18446744073709551615UL,1UL,1UL},{1UL,18446744073709551615UL,18446744073709551615UL,1UL,1UL},{1UL,18446744073709551615UL,18446744073709551615UL,1UL,1UL},{1UL,18446744073709551615UL,18446744073709551615UL,1UL,1UL},{1UL,18446744073709551615UL,18446744073709551615UL,1UL,1UL},{1UL,18446744073709551615UL,18446744073709551615UL,1UL,1UL}}, // p_2690->g_1971
        0x590C119CL, // p_2690->g_2071
        &p_2690->g_2071, // p_2690->g_2070
        &p_2690->g_2070, // p_2690->g_2069
        0x89FD49C48DCB9C1BL, // p_2690->g_2086
        &p_2690->g_390, // p_2690->g_2104
        &p_2690->g_2104, // p_2690->g_2103
        (void*)0, // p_2690->g_2142
        &p_2690->g_2142, // p_2690->g_2141
        &p_2690->g_2141, // p_2690->g_2140
        &p_2690->g_676, // p_2690->g_2143
        9UL, // p_2690->g_2206
        {&p_2690->g_339,&p_2690->g_339,&p_2690->g_339}, // p_2690->g_2223
        (void*)0, // p_2690->g_2401
        &p_2690->g_2401, // p_2690->g_2400
        &p_2690->g_253, // p_2690->g_2445
        8UL, // p_2690->g_2449
        0x10L, // p_2690->g_2493
        1UL, // p_2690->g_2494
        (void*)0, // p_2690->g_2503
        &p_2690->g_426, // p_2690->g_2505
        &p_2690->g_2505, // p_2690->g_2504
        4294967287UL, // p_2690->g_2630
        (void*)0, // p_2690->g_2688
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_2690->g_2687
        sequence_input[get_global_id(0)], // p_2690->global_0_offset
        sequence_input[get_global_id(1)], // p_2690->global_1_offset
        sequence_input[get_global_id(2)], // p_2690->global_2_offset
        sequence_input[get_local_id(0)], // p_2690->local_0_offset
        sequence_input[get_local_id(1)], // p_2690->local_1_offset
        sequence_input[get_local_id(2)], // p_2690->local_2_offset
        sequence_input[get_group_id(0)], // p_2690->group_0_offset
        sequence_input[get_group_id(1)], // p_2690->group_1_offset
        sequence_input[get_group_id(2)], // p_2690->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_2690->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2691 = c_2692;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2690);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2690->g_2[i][j][k], "p_2690->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2690->g_3, "p_2690->g_3", print_hash_value);
    transparent_crc(p_2690->g_36, "p_2690->g_36", print_hash_value);
    transparent_crc(p_2690->g_49, "p_2690->g_49", print_hash_value);
    transparent_crc(p_2690->g_65, "p_2690->g_65", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2690->g_87[i], "p_2690->g_87[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2690->g_92[i][j][k], "p_2690->g_92[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2690->g_94, "p_2690->g_94", print_hash_value);
    transparent_crc(p_2690->g_123, "p_2690->g_123", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2690->g_124[i][j][k], "p_2690->g_124[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2690->g_126, "p_2690->g_126", print_hash_value);
    transparent_crc(p_2690->g_129, "p_2690->g_129", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2690->g_130[i][j], "p_2690->g_130[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2690->g_155, "p_2690->g_155", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2690->g_158[i], "p_2690->g_158[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2690->g_181[i][j], "p_2690->g_181[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2690->g_189, "p_2690->g_189", print_hash_value);
    transparent_crc(p_2690->g_240, "p_2690->g_240", print_hash_value);
    transparent_crc(p_2690->g_245, "p_2690->g_245", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2690->g_246[i], "p_2690->g_246[i]", print_hash_value);

    }
    transparent_crc(p_2690->g_247, "p_2690->g_247", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2690->g_248[i], "p_2690->g_248[i]", print_hash_value);

    }
    transparent_crc(p_2690->g_308, "p_2690->g_308", print_hash_value);
    transparent_crc(p_2690->g_339, "p_2690->g_339", print_hash_value);
    transparent_crc(p_2690->g_390, "p_2690->g_390", print_hash_value);
    transparent_crc(p_2690->g_391, "p_2690->g_391", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2690->g_445[i], "p_2690->g_445[i]", print_hash_value);

    }
    transparent_crc(p_2690->g_485, "p_2690->g_485", print_hash_value);
    transparent_crc(p_2690->g_588, "p_2690->g_588", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2690->g_615[i], "p_2690->g_615[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2690->g_677[i], "p_2690->g_677[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2690->g_697[i][j], "p_2690->g_697[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2690->g_737, "p_2690->g_737", print_hash_value);
    transparent_crc(p_2690->g_775, "p_2690->g_775", print_hash_value);
    transparent_crc(p_2690->g_1087, "p_2690->g_1087", print_hash_value);
    transparent_crc(p_2690->g_1366, "p_2690->g_1366", print_hash_value);
    transparent_crc(p_2690->g_1601, "p_2690->g_1601", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2690->g_1625[i], "p_2690->g_1625[i]", print_hash_value);

    }
    transparent_crc(p_2690->g_1835, "p_2690->g_1835", print_hash_value);
    transparent_crc(p_2690->g_1857, "p_2690->g_1857", print_hash_value);
    transparent_crc(p_2690->g_1922, "p_2690->g_1922", print_hash_value);
    transparent_crc(p_2690->g_1957, "p_2690->g_1957", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2690->g_1971[i][j], "p_2690->g_1971[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2690->g_2071, "p_2690->g_2071", print_hash_value);
    transparent_crc(p_2690->g_2086, "p_2690->g_2086", print_hash_value);
    transparent_crc(p_2690->g_2206, "p_2690->g_2206", print_hash_value);
    transparent_crc(p_2690->g_2449, "p_2690->g_2449", print_hash_value);
    transparent_crc(p_2690->g_2493, "p_2690->g_2493", print_hash_value);
    transparent_crc(p_2690->g_2494, "p_2690->g_2494", print_hash_value);
    transparent_crc(p_2690->g_2630, "p_2690->g_2630", print_hash_value);
    transparent_crc(p_2690->l_comm_values[get_linear_local_id()], "p_2690->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2690->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_2690->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
