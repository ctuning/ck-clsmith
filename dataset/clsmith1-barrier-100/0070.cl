// ---fake_divergence ---inter_thread_comm -g 82,76,1 -l 1,76,1
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

__constant uint32_t permutations[10][76] = {
{41,34,37,46,4,15,70,45,12,49,38,72,10,67,28,53,74,68,32,30,57,62,31,25,71,23,33,59,19,0,75,69,5,14,11,21,8,44,66,26,55,7,43,50,51,1,16,52,24,36,39,27,60,47,64,58,29,63,48,61,56,73,65,2,17,3,20,22,13,9,18,6,35,42,40,54}, // permutation 0
{73,75,37,1,25,19,30,67,38,5,57,43,13,17,34,69,40,22,42,74,32,9,60,63,26,0,46,39,55,10,44,48,23,31,70,11,52,53,4,61,28,68,41,62,35,66,72,59,71,18,36,29,33,47,15,14,7,54,21,24,58,3,56,50,27,6,45,8,2,20,12,64,16,51,65,49}, // permutation 1
{70,54,40,3,62,42,14,8,25,73,72,50,10,71,38,9,52,41,74,46,27,7,36,65,67,57,19,35,64,37,6,21,4,51,24,12,22,75,43,69,15,31,20,60,5,11,18,45,26,61,2,29,47,34,53,23,30,55,66,68,32,63,56,28,48,17,39,49,59,0,1,13,44,16,58,33}, // permutation 2
{62,30,48,68,69,65,16,67,75,56,18,25,2,51,28,19,31,3,1,36,47,50,45,55,40,6,46,58,13,29,39,35,41,59,7,15,64,63,5,33,74,72,10,61,60,34,71,38,70,66,11,43,57,21,23,24,53,14,49,0,52,20,17,22,42,73,12,32,9,37,26,54,44,8,27,4}, // permutation 3
{31,22,58,69,61,68,35,60,47,63,1,29,66,56,34,40,8,41,37,32,4,67,36,5,2,72,14,12,33,24,11,28,17,16,74,62,49,43,48,52,10,71,42,9,7,0,26,59,44,19,21,51,3,46,45,75,64,50,25,6,18,73,65,54,70,39,38,53,13,20,23,55,57,15,30,27}, // permutation 4
{18,11,63,20,8,70,58,1,28,67,34,39,42,48,49,75,41,71,32,50,37,59,52,54,17,45,7,3,4,72,25,12,62,73,33,66,15,26,5,68,36,27,61,51,31,2,13,30,19,40,56,14,29,57,69,16,35,53,43,60,65,55,38,6,47,74,23,22,46,0,44,64,9,24,21,10}, // permutation 5
{67,40,17,20,38,53,39,32,36,60,71,9,18,8,47,42,50,11,15,52,72,1,12,73,19,22,55,26,29,49,16,34,0,66,23,27,59,3,14,4,30,70,43,61,28,37,44,58,25,35,5,24,51,56,68,33,10,13,41,62,7,31,74,6,46,63,54,65,64,69,21,2,75,57,48,45}, // permutation 6
{43,21,65,23,53,56,19,36,16,32,57,72,66,74,25,71,68,2,62,45,75,6,9,0,50,27,54,70,64,31,34,46,7,26,63,38,61,1,60,51,67,8,33,28,49,10,69,41,52,58,47,40,48,11,35,22,14,73,13,30,55,17,5,3,42,18,39,24,59,44,37,4,29,15,12,20}, // permutation 7
{24,22,35,60,4,7,25,21,47,16,45,27,6,31,42,64,3,23,19,50,9,32,10,74,72,14,34,70,0,30,57,54,66,58,65,26,53,15,51,52,41,46,49,59,28,37,2,56,17,20,29,39,18,75,38,73,63,1,8,68,43,55,13,40,12,33,62,44,48,71,61,36,5,11,67,69}, // permutation 8
{39,56,27,10,45,59,67,48,63,53,60,31,43,44,8,64,14,42,22,0,13,21,50,2,57,38,6,29,61,33,11,30,25,71,41,3,47,19,5,15,62,36,74,40,70,49,24,16,18,7,12,34,73,54,52,46,65,23,51,1,75,17,37,9,35,72,55,66,69,68,32,26,58,28,4,20} // permutation 9
};

// Seed: 70

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int64_t  f0;
};

union U1 {
   int8_t  f0;
   int8_t  f1;
   volatile int32_t  f2;
};

union U2 {
   int8_t  f0;
};

union U3 {
   struct S0  f0;
};

struct S4 {
    int32_t g_33[9][7][4];
    union U3 g_80;
    uint8_t g_96[9][2];
    int32_t g_98[6][7];
    int32_t * volatile g_113;
    int32_t *g_116;
    int32_t *g_117;
    int32_t *g_118;
    volatile union U2 g_123;
    volatile union U2 *g_122;
    volatile union U2 ** volatile g_124;
    volatile union U1 g_137;
    int64_t g_191;
    int16_t g_197;
    uint32_t g_201;
    uint16_t g_214;
    uint16_t *g_215;
    int32_t g_228[4][5];
    int32_t g_230[3][1][7];
    volatile struct S0 g_234;
    uint8_t g_253;
    volatile struct S0 g_254;
    struct S0 *g_262;
    int32_t **g_273;
    struct S0 g_278;
    union U2 g_298;
    union U2 *g_297;
    volatile int32_t g_316;
    uint32_t g_333;
    int32_t g_334;
    uint16_t g_399;
    uint32_t g_402[6];
    uint64_t g_431;
    volatile uint32_t g_435;
    uint64_t g_467[1][7][5];
    int32_t *g_524;
    volatile struct S0 g_548;
    struct S0 g_599;
    volatile union U2 * volatile *g_603[9];
    volatile union U2 * volatile * volatile *g_602[1][9];
    int16_t *g_618;
    int32_t *g_628;
    int32_t **g_627;
    int32_t *** volatile g_626;
    volatile struct S0 * volatile *g_675;
    volatile struct S0 * volatile ** volatile g_674[3];
    union U1 g_690;
    union U3 g_692[7];
    int8_t g_705;
    volatile struct S0 g_713;
    volatile struct S0 g_763;
    struct S0 g_777[9][6][4];
    struct S0 g_778[2][8][9];
    struct S0 g_854;
    struct S0 g_856[9][1][9];
    struct S0 *g_855;
    int8_t g_890;
    volatile int8_t *g_914[10][7];
    volatile int8_t **g_913[2][7];
    struct S0 g_957;
    struct S0 g_960;
    int8_t g_973;
    uint32_t *g_987;
    volatile union U3 g_1034;
    uint32_t g_1038[2];
    uint16_t g_1140;
    int32_t *g_1171;
    union U3 *g_1174[4];
    union U3 ** volatile g_1173;
    union U1 g_1186;
    struct S0 g_1225;
    struct S0 g_1229[3][9];
    union U2 g_1234[3][6];
    union U3 g_1236;
    union U3 g_1237;
    union U3 g_1253[5][5][2];
    union U3 g_1264;
    volatile union U3 g_1277[10][8];
    union U3 g_1297;
    volatile struct S0 g_1300[2];
    union U3 g_1301;
    union U3 g_1302;
    union U2 **g_1325;
    union U2 ***g_1324;
    int64_t g_1330;
    volatile union U1 g_1359;
    volatile union U3 g_1396;
    union U3 g_1409;
    int32_t g_1523;
    int32_t g_1540;
    volatile union U1 g_1599;
    uint32_t g_1689;
    union U2 ****g_1698;
    volatile union U1 g_1705;
    volatile union U2 * volatile ** volatile *g_1746;
    volatile union U2 * volatile ** volatile **g_1745;
    volatile union U2 * volatile ** volatile ***g_1744;
    int32_t g_1816;
    struct S0 g_1867;
    struct S0 g_1899;
    volatile uint64_t g_1935;
    struct S0 g_1941;
    volatile union U1 g_1959;
    int16_t * volatile *g_1964[4][4];
    int16_t * volatile **g_1963[4][1];
    uint8_t g_1968;
    union U3 g_2036;
    int32_t *g_2059;
    int32_t **g_2058;
    volatile int64_t * volatile g_2062;
    volatile int64_t * volatile * volatile g_2061;
    volatile int64_t g_2065;
    volatile int64_t *g_2064;
    volatile int64_t **g_2063;
    int32_t ***g_2146[1][4];
    int32_t ****g_2145;
    int32_t *****g_2144;
    uint16_t ** volatile * volatile g_2212;
    volatile struct S0 g_2248;
    int8_t *g_2254[9][9][3];
    int8_t **g_2253;
    struct S0 g_2263;
    volatile struct S0 g_2269;
    struct S0 g_2301[8];
    struct S0 g_2313;
    uint32_t **g_2355;
    uint32_t ***g_2354;
    volatile union U3 g_2357;
    volatile struct S0 g_2362;
    volatile struct S0 g_2363[7][1];
    union U1 *g_2375;
    union U1 ** volatile g_2374;
    uint64_t g_2453;
    struct S0 ** volatile g_2481;
    volatile union U3 g_2510;
    struct S0 g_2556;
    uint16_t ** volatile g_2577;
    uint16_t * volatile *g_2582;
    uint16_t * volatile **g_2581[7];
    uint16_t * volatile ***g_2580;
    int64_t *g_2613;
    int64_t **g_2612;
    union U3 g_2651[6][6][6];
    union U2 *g_2665;
    uint32_t *g_2671;
    uint32_t **g_2670;
    int32_t ** volatile g_2712;
    int32_t ** volatile g_2713[10][5][5];
    uint64_t g_2731;
    volatile int32_t g_2734;
    volatile uint64_t g_2736;
    volatile struct S0 g_2756;
    int32_t *g_2783;
    int64_t g_2789[2];
    struct S0 ** volatile g_2806;
    union U3 ** volatile g_2839[8][1][9];
    int32_t g_2880;
    struct S0 g_2897;
    uint32_t g_3013;
    struct S0 g_3058;
    volatile union U1 g_3122;
    union U1 g_3143;
    volatile struct S0 g_3164;
    volatile struct S0 g_3165;
    volatile union U2 * volatile g_3182[2];
    uint16_t ***g_3190;
    struct S0 g_3217;
    struct S0 g_3218;
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
int16_t  func_1(struct S4 * p_3219);
int16_t  func_3(union U2  p_4, int32_t  p_5, int64_t  p_6, int16_t  p_7, struct S4 * p_3219);
union U2  func_8(uint32_t  p_9, int32_t  p_10, struct S4 * p_3219);
uint8_t  func_16(int64_t  p_17, int64_t  p_18, int32_t  p_19, struct S4 * p_3219);
union U3  func_20(int32_t  p_21, struct S4 * p_3219);
int32_t  func_43(uint32_t  p_44, int32_t  p_45, int32_t * p_46, int32_t * p_47, int32_t * p_48, struct S4 * p_3219);
uint32_t  func_53(int64_t  p_54, int32_t * p_55, struct S4 * p_3219);
struct S0  func_58(uint32_t  p_59, int32_t * p_60, struct S4 * p_3219);
int32_t * func_61(union U2  p_62, union U2  p_63, int32_t * p_64, struct S4 * p_3219);
int32_t  func_65(uint64_t  p_66, int64_t  p_67, uint64_t  p_68, struct S4 * p_3219);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_3219->g_618 p_3219->g_197
 * writes:
 */
int16_t  func_1(struct S4 * p_3219)
{ /* block id: 4 */
    uint32_t l_11[8][9] = {{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL}};
    int32_t l_12 = (-1L);
    uint32_t l_13 = 1UL;
    uint8_t *l_1304 = &p_3219->g_96[4][1];
    uint8_t **l_1303 = &l_1304;
    uint32_t *l_2157 = &p_3219->g_402[1];
    int32_t l_3051 = 0x7C2307D5L;
    int16_t **l_3055[3];
    int32_t l_3071 = 8L;
    uint64_t l_3073 = 0x62E762EF3ED90DA1L;
    int32_t l_3082[4] = {0x7FBFF5ABL,0x7FBFF5ABL,0x7FBFF5ABL,0x7FBFF5ABL};
    int8_t l_3090[3];
    uint32_t l_3115 = 0x66BC4C1BL;
    union U2 l_3117 = {1L};
    uint16_t l_3168 = 7UL;
    int8_t l_3178 = 0x0EL;
    uint32_t l_3206 = 4294967295UL;
    int32_t *l_3209 = &l_3082[0];
    int32_t *l_3210 = &p_3219->g_98[0][4];
    int32_t *l_3211[4][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
    int32_t l_3212 = (-7L);
    int16_t l_3213[5][9] = {{6L,0x0559L,(-3L),0x2772L,(-3L),0x0559L,6L,0x7359L,0x17D3L},{6L,0x0559L,(-3L),0x2772L,(-3L),0x0559L,6L,0x7359L,0x17D3L},{6L,0x0559L,(-3L),0x2772L,(-3L),0x0559L,6L,0x7359L,0x17D3L},{6L,0x0559L,(-3L),0x2772L,(-3L),0x0559L,6L,0x7359L,0x17D3L},{6L,0x0559L,(-3L),0x2772L,(-3L),0x0559L,6L,0x7359L,0x17D3L}};
    uint64_t l_3214 = 0UL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_3055[i] = &p_3219->g_618;
    for (i = 0; i < 3; i++)
        l_3090[i] = 0x65L;
    return (*p_3219->g_618);
}


/* ------------------------------------------ */
/* 
 * reads : p_3219->g_1171 p_3219->g_33 p_3219->g_2354 p_3219->g_2355 p_3219->g_2375 p_3219->g_1186 p_3219->g_2374 p_3219->g_273 p_3219->g_705 p_3219->g_1330 p_3219->g_856 p_3219->g_262 p_3219->g_118 p_3219->g_2789 p_3219->g_comm_values p_3219->g_2783 p_3219->g_98 p_3219->g_124 p_3219->g_122 p_3219->g_123 p_3219->g_2806 p_3219->g_2064 p_3219->g_2065 p_3219->g_987 p_3219->g_333 p_3219->g_1540 p_3219->g_1140 p_3219->g_1325 p_3219->g_1302 p_3219->g_96 p_3219->g_2880 p_3219->g_1236.f0.f0 p_3219->g_2453 p_3219->g_1968 p_3219->g_2897 p_3219->g_298.f0 p_3219->g_431 p_3219->g_2144 p_3219->g_2145 p_3219->g_191 p_3219->g_692.f0 p_3219->g_399 p_3219->g_618 p_3219->g_197 p_3219->g_3013 p_3219->g_855
 * writes: p_3219->g_1816 p_3219->g_33 p_3219->g_1330 p_3219->g_1968 p_3219->g_214 p_3219->g_118 p_3219->g_705 p_3219->g_854 p_3219->g_80.f0 p_3219->g_2375 p_3219->g_1186.f0 p_3219->g_96 p_3219->g_98 p_3219->g_973 p_3219->g_262 p_3219->g_2789 p_3219->g_1140 p_3219->g_297 p_3219->g_334 p_3219->g_333 p_3219->g_690.f1 p_3219->g_1540 p_3219->g_298.f0 p_3219->g_399 p_3219->g_197 p_3219->g_3013 p_3219->g_1301.f0
 */
int16_t  func_3(union U2  p_4, int32_t  p_5, int64_t  p_6, int16_t  p_7, struct S4 * p_3219)
{ /* block id: 1420 */
    uint64_t l_2759 = 0xC5D7E1B0FAD48B80L;
    uint32_t **l_2770 = &p_3219->g_987;
    int64_t l_2801 = (-1L);
    int32_t l_2809[5][9][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
    union U2 *l_2842 = &p_3219->g_298;
    struct S0 *l_2946 = (void*)0;
    uint8_t l_2964 = 0UL;
    int32_t l_3012 = 0x550877A4L;
    uint8_t l_3024 = 0UL;
    int32_t l_3025[3];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_3025[i] = 0x2C928DBDL;
lbl_2967:
    for (p_4.f0 = 0; (p_4.f0 != 20); p_4.f0 = safe_add_func_int64_t_s_s(p_4.f0, 5))
    { /* block id: 1423 */
        union U2 l_2781 = {0x07L};
        int32_t l_2807 = 0x1B3DA3CEL;
        int32_t l_2810 = 0x301553BFL;
        int32_t l_2811 = 0x709EC615L;
        uint32_t l_2821 = 4294967291UL;
        uint8_t *l_2875 = &p_3219->g_96[8][0];
        uint64_t *l_2881 = (void*)0;
        uint64_t *l_2882 = (void*)0;
        int8_t l_2883 = (-3L);
        l_2759 |= p_4.f0;
        for (p_3219->g_1816 = 0; (p_3219->g_1816 >= 0); p_3219->g_1816 -= 1)
        { /* block id: 1427 */
            uint16_t l_2760 = 0x256AL;
            int64_t l_2776 = 0x1F8FA2C64E360446L;
            int32_t *l_2778 = &p_3219->g_98[0][4];
            struct S0 *l_2805 = &p_3219->g_854;
            int32_t l_2812 = 0x78ECF94DL;
            uint32_t l_2814 = 4294967295UL;
            union U3 *l_2838 = &p_3219->g_1302;
            (*p_3219->g_1171) ^= l_2760;
            for (p_3219->g_1330 = 6; (p_3219->g_1330 >= 0); p_3219->g_1330 -= 1)
            { /* block id: 1431 */
                uint32_t l_2761 = 0xC3B71CC8L;
                union U2 l_2780 = {-7L};
                int32_t *l_2784 = &p_3219->g_33[5][2][0];
                int32_t l_2803 = 1L;
                uint16_t l_2804 = 65534UL;
                int32_t l_2819 = 0x65EAACC1L;
                int32_t l_2820[4][8][4] = {{{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L}},{{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L}},{{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L}},{{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L},{1L,0x060AEABCL,0x151D5DCBL,0L}}};
                struct S0 *l_2837 = (void*)0;
                union U3 *l_2841 = &p_3219->g_2036;
                uint32_t l_2850 = 4294967295UL;
                int8_t l_2866[5][2][8] = {{{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L},{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L}},{{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L},{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L}},{{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L},{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L}},{{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L},{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L}},{{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L},{0x52L,0x22L,(-4L),0x22L,0x52L,0L,(-3L),0x71L}}};
                int i, j, k;
                for (p_3219->g_1968 = 0; (p_3219->g_1968 <= 2); p_3219->g_1968 += 1)
                { /* block id: 1434 */
                    int32_t l_2764 = (-5L);
                    uint16_t *l_2765 = &p_3219->g_214;
                    int8_t l_2775 = 0x0DL;
                    int32_t l_2777 = 0x6994E46BL;
                    int i, j, k;
                    (*p_3219->g_1171) &= ((l_2761 == 0x75D4C044L) <= (~(safe_mul_func_uint16_t_u_u(((*l_2765) = l_2764), ((l_2777 = (safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((l_2770 == (*p_3219->g_2354)), 0)), (safe_rshift_func_int8_t_s_u((((*p_3219->g_2375) , ((**p_3219->g_2374) , ((safe_add_func_int8_t_s_s((((l_2775 > ((-6L) == 254UL)) < p_5) < p_4.f0), l_2761)) >= p_4.f0))) != l_2776), 7))))) , p_5)))));
                    (*p_3219->g_1171) = p_4.f0;
                }
                (*p_3219->g_273) = l_2778;
                for (p_3219->g_705 = 0; (p_3219->g_705 >= 0); p_3219->g_705 -= 1)
                { /* block id: 1443 */
                    union U1 *l_2787 = &p_3219->g_1186;
                    int8_t *l_2788 = &p_3219->g_1186.f0;
                    uint16_t *l_2800 = &l_2760;
                    uint8_t *l_2802[4][8][6] = {{{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0}},{{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0}},{{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0}},{{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0},{&p_3219->g_253,&p_3219->g_253,&p_3219->g_1968,(void*)0,&p_3219->g_1968,(void*)0}}};
                    int32_t l_2813 = 0x484A2871L;
                    int32_t l_2817 = 7L;
                    int32_t l_2818 = 0L;
                    struct S0 **l_2836[8][9][3] = {{{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262}},{{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262}},{{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262}},{{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262}},{{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262}},{{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262}},{{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262}},{{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262},{&l_2805,&l_2805,&p_3219->g_262}}};
                    int i, j, k;
                    if ((safe_unary_minus_func_uint8_t_u(0xF7L)))
                    { /* block id: 1444 */
                        int32_t *l_2782 = (void*)0;
                        int i, j, k;
                        (*p_3219->g_262) = p_3219->g_856[(p_3219->g_705 + 3)][p_3219->g_705][(p_3219->g_1330 + 1)];
                        (*p_3219->g_273) = (p_3219->g_856[(p_3219->g_705 + 3)][p_3219->g_705][(p_3219->g_1330 + 1)].f0 , l_2784);
                    }
                    else
                    { /* block id: 1447 */
                        (*p_3219->g_273) = (*p_3219->g_273);
                        (*p_3219->g_273) = (*p_3219->g_273);
                    }
                    (*p_3219->g_2783) ^= (safe_sub_func_int64_t_s_s((((((*p_3219->g_2374) = l_2787) != (void*)0) != (((*l_2784) = ((*l_2788) = (-8L))) <= ((p_3219->g_96[2][0] = p_3219->g_2789[1]) < p_7))) , p_5), (safe_div_func_int8_t_s_s((+((void*)0 == &p_3219->g_2059)), (((safe_lshift_func_uint8_t_u_s((l_2803 ^= ((safe_sub_func_int64_t_s_s((~(safe_mod_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(((*l_2800) = (0L >= p_3219->g_comm_values[p_3219->tid])), p_6)), (-5L)))), p_6)) >= l_2801)), l_2804)) , l_2781.f0) & p_7)))));
                    for (p_3219->g_973 = 2; (p_3219->g_973 >= 0); p_3219->g_973 -= 1)
                    { /* block id: 1460 */
                        int32_t *l_2808[3][4][1];
                        int64_t *l_2834 = &l_2776;
                        int64_t *l_2835 = &p_3219->g_2789[1];
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 4; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_2808[i][j][k] = (void*)0;
                            }
                        }
                        (*p_3219->g_2806) = ((((**p_3219->g_124) , l_2759) , ((*l_2788) = 1L)) , l_2805);
                        ++l_2814;
                        ++l_2821;
                        (*l_2784) = ((*p_3219->g_2783) = (safe_mul_func_int16_t_s_s((0x4B2A2C09FBB6161CL || p_4.f0), ((safe_rshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s((((**p_3219->g_2374) , (*p_3219->g_2064)) >= ((*l_2835) = ((((safe_mul_func_uint16_t_u_u(0UL, p_6)) >= 0x252CBC1BL) != (safe_sub_func_int16_t_s_s((p_7 < ((*l_2834) = (((*p_3219->g_987) && 0x61E56766L) , p_3219->g_1540))), (-1L)))) , (-1L)))), p_7)), p_6)) & l_2801))));
                    }
                    l_2837 = (void*)0;
                }
                for (p_3219->g_1140 = 0; (p_3219->g_1140 <= 2); p_3219->g_1140 += 1)
                { /* block id: 1474 */
                    union U3 **l_2840[2][4][7] = {{{(void*)0,(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3]},{(void*)0,(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3]},{(void*)0,(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3]},{(void*)0,(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3]}},{{(void*)0,(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3]},{(void*)0,(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3]},{(void*)0,(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3]},{(void*)0,(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3]}}};
                    int32_t l_2843 = (-3L);
                    int i, j, k;
                    l_2841 = l_2838;
                    (*p_3219->g_1325) = l_2842;
                    (*p_3219->g_2783) &= ((*p_3219->g_1171) = l_2843);
                    for (p_3219->g_334 = 2; (p_3219->g_334 >= 0); p_3219->g_334 -= 1)
                    { /* block id: 1481 */
                        int32_t *l_2844 = (void*)0;
                        int32_t *l_2845 = (void*)0;
                        int32_t *l_2846 = &p_3219->g_98[0][4];
                        int32_t *l_2847 = &l_2809[3][1][0];
                        int32_t *l_2848 = &p_3219->g_33[8][1][3];
                        int32_t *l_2849[5][8][6] = {{{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540}},{{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540}},{{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540}},{{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540}},{{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540},{&l_2843,&l_2843,(void*)0,&l_2820[0][6][3],&p_3219->g_98[0][6],&p_3219->g_1540}}};
                        int i, j, k;
                        if ((*p_3219->g_1171))
                            break;
                        if ((*l_2778))
                            break;
                        (*p_3219->g_273) = &l_2811;
                        l_2850++;
                    }
                }
                for (l_2761 = 0; (l_2761 <= 2); l_2761 += 1)
                { /* block id: 1490 */
                    int32_t l_2863 = (-1L);
                    int8_t *l_2867 = &p_3219->g_690.f1;
                    int32_t l_2868 = (-7L);
                    l_2868 &= (((((safe_sub_func_uint32_t_u_u((p_7 , ((**l_2770)--)), p_6)) != (((safe_sub_func_int16_t_s_s(((*l_2784) = ((safe_mod_func_int32_t_s_s(l_2801, (safe_add_func_uint64_t_u_u((l_2807 = 1UL), GROUP_DIVERGE(2, 1))))) & l_2863)), ((-9L) && ((*l_2867) = (safe_rshift_func_int8_t_s_u((func_20(p_4.f0, p_3219) , ((255UL != l_2866[1][0][1]) , 0x3FL)), 3)))))) & p_4.f0) > (*l_2778))) & 0L) & p_5) , p_5);
                    for (p_5 = 0; (p_5 <= 2); p_5 += 1)
                    { /* block id: 1498 */
                        (*p_3219->g_118) = (safe_mul_func_int16_t_s_s(l_2811, (*l_2784)));
                        if ((*l_2778))
                            break;
                    }
                }
            }
        }
        l_2883 = ((l_2807 = ((((*l_2875) |= (safe_lshift_func_int8_t_s_u((safe_div_func_int16_t_s_s(((p_7 <= 0UL) > 0x22B5L), 3L)), 6))) < (safe_sub_func_uint8_t_u_u(((l_2811 >= l_2759) || (p_5 != (safe_add_func_int16_t_s_s(p_3219->g_2880, p_6)))), p_3219->g_1236.f0.f0))) , p_3219->g_2453)) >= FAKE_DIVERGE(p_3219->local_2_offset, get_local_id(2), 10));
    }
    for (p_3219->g_1540 = 23; (p_3219->g_1540 <= (-28)); p_3219->g_1540--)
    { /* block id: 1511 */
        int32_t *l_2890 = (void*)0;
        uint8_t *l_2909 = &p_3219->g_96[8][0];
        struct S0 *l_2916 = &p_3219->g_692[6].f0;
        int32_t l_2919 = (-1L);
        uint64_t l_2937[1][7] = {{0UL,0UL,0UL,0UL,0UL,0UL,0UL}};
        union U2 l_2943 = {0x38L};
        int32_t l_2954 = 0x673AC393L;
        int32_t l_2958 = 0x1562B0DFL;
        int32_t l_2960 = 0L;
        int32_t l_2961 = 1L;
        int32_t l_2962 = 0x24D50490L;
        int32_t l_2963 = (-1L);
        int32_t l_2988 = 0x4714B0E9L;
        int32_t l_2990 = 0x10DF56A3L;
        int32_t l_2992 = 0x42FD2E04L;
        int32_t l_2993 = (-3L);
        int32_t l_2994 = 0x56D84876L;
        int32_t l_2995 = 1L;
        int32_t l_2996 = 9L;
        int64_t *l_3030 = &p_3219->g_2789[0];
        int i, j;
        for (p_4.f0 = 0; (p_4.f0 < 23); p_4.f0++)
        { /* block id: 1514 */
            uint8_t l_2902[10][8][3] = {{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}},{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}},{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}},{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}},{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}},{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}},{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}},{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}},{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}},{{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL},{0xEFL,0xEFL,0xCDL}}};
            int32_t l_2903[3];
            struct S0 *l_2917 = &p_3219->g_1301.f0;
            uint16_t *l_2929 = &p_3219->g_399;
            int32_t *l_2945 = (void*)0;
            uint8_t l_2997 = 1UL;
            int64_t ***l_3017[8][7] = {{&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612},{&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612},{&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612},{&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612},{&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612},{&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612},{&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612},{&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612,&p_3219->g_2612}};
            int64_t ****l_3016 = &l_3017[4][1];
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_2903[i] = 0x2584651DL;
            for (p_3219->g_1968 = (-7); (p_3219->g_1968 == 9); p_3219->g_1968 = safe_add_func_uint64_t_u_u(p_3219->g_1968, 3))
            { /* block id: 1517 */
                int8_t *l_2904 = &p_3219->g_298.f0;
                uint16_t *l_2918 = &p_3219->g_1140;
                (*p_3219->g_273) = l_2890;
                (*p_3219->g_2783) &= (safe_div_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), (safe_sub_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s(((*l_2904) ^= (+(p_3219->g_2897 , (safe_sub_func_int64_t_s_s((safe_sub_func_int32_t_s_s(l_2902[5][7][0], (l_2903[1] &= 0x7AE72FDAL))), 8L))))), (((safe_div_func_uint8_t_u_u((((safe_add_func_uint8_t_u_u((l_2904 != l_2909), (safe_mod_func_int64_t_s_s(p_7, (-1L))))) != l_2809[3][1][0]) && 7UL), p_4.f0)) , p_7) || p_4.f0))) | p_6), p_3219->g_431))));
                l_2919 |= ((*p_3219->g_1171) |= ((+1UL) != (((**l_2770)--) & ((p_5 , ((&p_3219->g_2670 != (void*)0) > ((void*)0 == (*p_3219->g_2144)))) < (((safe_add_func_int64_t_s_s((l_2809[3][1][0] & (((*l_2918) ^= (l_2916 == l_2917)) == 0x3709L)), p_3219->g_191)) == 4294967294UL) == 0x6AA0L)))));
            }
            if (((safe_mod_func_int16_t_s_s(((*l_2916) , 0x7E68L), ((((safe_mul_func_int8_t_s_s((safe_div_func_int16_t_s_s(((safe_unary_minus_func_uint16_t_u((safe_add_func_uint8_t_u_u((p_3219->g_96[1][1] = (0UL != (p_5 != 1UL))), p_3219->g_comm_values[p_3219->tid])))) == ((*l_2929)++)), (((*p_3219->g_618) |= (safe_add_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(0x7CFBL, 1)), ((safe_unary_minus_func_uint32_t_u(((*p_3219->g_987) &= 0UL))) < p_6)))) | p_4.f0))), p_5)) != 0x099409B736A8F1B1L) , 247UL) ^ p_3219->g_2789[1]))) & l_2937[0][0]))
            { /* block id: 1531 */
                uint64_t l_2942 = 0x743F04D4C1D56ADCL;
                int32_t *l_2944 = &p_3219->g_1540;
                int32_t l_2949 = (-4L);
                int32_t l_2955 = 1L;
                int8_t l_2956 = 0x6BL;
                int32_t l_2957 = (-1L);
                int32_t l_2959[6][10] = {{1L,1L,0x722709ADL,1L,1L,1L,1L,0x722709ADL,1L,1L},{1L,1L,0x722709ADL,1L,1L,1L,1L,0x722709ADL,1L,1L},{1L,1L,0x722709ADL,1L,1L,1L,1L,0x722709ADL,1L,1L},{1L,1L,0x722709ADL,1L,1L,1L,1L,0x722709ADL,1L,1L},{1L,1L,0x722709ADL,1L,1L,1L,1L,0x722709ADL,1L,1L},{1L,1L,0x722709ADL,1L,1L,1L,1L,0x722709ADL,1L,1L}};
                int i, j;
                (*p_3219->g_273) = l_2945;
                l_2809[1][4][0] &= ((void*)0 != l_2946);
                l_2949 ^= (safe_rshift_func_uint8_t_u_u(0x75L, 6));
                for (l_2943.f0 = 0; (l_2943.f0 >= 0); l_2943.f0 -= 1)
                { /* block id: 1537 */
                    int32_t *l_2950 = &p_3219->g_33[5][2][0];
                    int32_t *l_2951 = &p_3219->g_33[5][2][0];
                    int32_t *l_2952 = &p_3219->g_98[5][6];
                    int32_t *l_2953[10][3][7] = {{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}},{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}},{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}},{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}},{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}},{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}},{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}},{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}},{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}},{{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]},{&p_3219->g_33[5][2][0],&l_2903[1],(void*)0,&l_2903[0],(void*)0,&p_3219->g_1816,&l_2809[2][1][0]}}};
                    int i, j, k;
                    l_2964--;
                    if (l_2903[1])
                        break;
                }
            }
            else
            { /* block id: 1541 */
                int16_t l_2971 = (-1L);
                int32_t l_2981 = (-1L);
                int32_t l_2982 = 0x4EB898DFL;
                int32_t l_2983 = 0x22D819F4L;
                int32_t l_2984 = 0L;
                int32_t l_2985 = 0x2D2E8176L;
                int32_t l_2986 = 0x46F4594EL;
                int32_t l_2987 = 0x53A7B4EDL;
                int32_t l_2989[9][1][7] = {{{0x033B5A7AL,(-7L),(-4L),4L,(-7L),4L,(-4L)}},{{0x033B5A7AL,(-7L),(-4L),4L,(-7L),4L,(-4L)}},{{0x033B5A7AL,(-7L),(-4L),4L,(-7L),4L,(-4L)}},{{0x033B5A7AL,(-7L),(-4L),4L,(-7L),4L,(-4L)}},{{0x033B5A7AL,(-7L),(-4L),4L,(-7L),4L,(-4L)}},{{0x033B5A7AL,(-7L),(-4L),4L,(-7L),4L,(-4L)}},{{0x033B5A7AL,(-7L),(-4L),4L,(-7L),4L,(-4L)}},{{0x033B5A7AL,(-7L),(-4L),4L,(-7L),4L,(-4L)}},{{0x033B5A7AL,(-7L),(-4L),4L,(-7L),4L,(-4L)}}};
                int8_t l_2991 = 0x13L;
                int i, j, k;
                if (p_3219->g_1968)
                    goto lbl_2967;
                for (l_2954 = 0; (l_2954 != 0); l_2954++)
                { /* block id: 1545 */
                    int32_t l_2970 = 0x0E2170CAL;
                    int32_t *l_2972 = &l_2809[3][3][0];
                    int32_t *l_2973 = &l_2919;
                    int32_t *l_2974 = &l_2903[1];
                    int32_t *l_2975 = &l_2960;
                    int32_t *l_2976 = &p_3219->g_1816;
                    int32_t *l_2977 = &l_2963;
                    int32_t *l_2978 = &p_3219->g_33[5][2][0];
                    int32_t *l_2979 = &l_2809[0][3][0];
                    int32_t *l_2980[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_2980[i] = &p_3219->g_98[0][4];
                    l_2997--;
                }
            }
            for (p_5 = 0; (p_5 != (-10)); p_5--)
            { /* block id: 1551 */
                int16_t l_3002 = 0L;
                int32_t *l_3003 = (void*)0;
                int32_t *l_3004 = &p_3219->g_33[5][2][0];
                int32_t l_3005 = 0x2601A9CEL;
                int32_t *l_3006 = &p_3219->g_33[5][2][0];
                int32_t *l_3007 = &p_3219->g_98[0][4];
                int32_t *l_3008 = &l_2995;
                int32_t *l_3009 = &l_2954;
                int32_t *l_3010 = &p_3219->g_1816;
                int32_t *l_3011[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_3011[i] = &p_3219->g_33[5][2][0];
                p_3219->g_3013++;
            }
            (*l_2917) = (*p_3219->g_855);
        }
        l_2809[0][1][0] |= 6L;
        (*p_3219->g_262) = (*l_2916);
    }
    return l_3024;
}


/* ------------------------------------------ */
/* 
 * reads : p_3219->g_1689 p_3219->g_2062 p_3219->g_1277.f0.f0 p_3219->g_431 p_3219->g_98 p_3219->g_973 p_3219->g_1171 p_3219->g_1173 p_3219->g_1174 p_3219->g_297 p_3219->g_298 p_3219->g_1816 p_3219->g_2212 p_3219->g_214 p_3219->g_273 p_3219->g_33 p_3219->g_987 p_3219->g_333 p_3219->g_1935 p_3219->g_1234.f0 p_3219->g_2248 p_3219->g_298.f0 p_3219->g_2253 p_3219->g_2263 p_3219->g_855 p_3219->g_2269 p_3219->g_1409 p_3219->g_96 p_3219->g_1409.f0.f0 p_3219->g_2058 p_3219->g_2059 p_3219->g_228 p_3219->g_230 p_3219->g_1186.f0 p_3219->g_1523 p_3219->g_402 p_3219->g_692.f0.f0 p_3219->g_201 p_3219->g_2301 p_3219->g_2313 p_3219->g_2061 p_3219->g_1540 p_3219->g_2665
 * writes: p_3219->g_1689 p_3219->g_33 p_3219->g_1186.f1 p_3219->g_1174 p_3219->g_1816 p_3219->g_201 p_3219->g_333 p_3219->g_214 p_3219->g_118 p_3219->g_890 p_3219->g_191 p_3219->g_399 p_3219->g_856 p_3219->g_1140 p_3219->g_96 p_3219->g_253 p_3219->g_1186.f0 p_3219->g_973 p_3219->g_1540
 */
union U2  func_8(uint32_t  p_9, int32_t  p_10, struct S4 * p_3219)
{ /* block id: 1147 */
    int8_t l_2185[3];
    union U3 *l_2191 = &p_3219->g_1409;
    int32_t *l_2247 = &p_3219->g_33[5][2][0];
    union U2 l_2265 = {-7L};
    int64_t l_2293 = 0x1ACAC9A85D743792L;
    int8_t l_2299 = 1L;
    int32_t l_2305 = (-1L);
    int64_t **l_2324 = (void*)0;
    int32_t l_2358[9][10] = {{0L,0x1F781A60L,1L,(-2L),1L,0x1F781A60L,0L,(-1L),(-1L),1L},{0L,0x1F781A60L,1L,(-2L),1L,0x1F781A60L,0L,(-1L),(-1L),1L},{0L,0x1F781A60L,1L,(-2L),1L,0x1F781A60L,0L,(-1L),(-1L),1L},{0L,0x1F781A60L,1L,(-2L),1L,0x1F781A60L,0L,(-1L),(-1L),1L},{0L,0x1F781A60L,1L,(-2L),1L,0x1F781A60L,0L,(-1L),(-1L),1L},{0L,0x1F781A60L,1L,(-2L),1L,0x1F781A60L,0L,(-1L),(-1L),1L},{0L,0x1F781A60L,1L,(-2L),1L,0x1F781A60L,0L,(-1L),(-1L),1L},{0L,0x1F781A60L,1L,(-2L),1L,0x1F781A60L,0L,(-1L),(-1L),1L},{0L,0x1F781A60L,1L,(-2L),1L,0x1F781A60L,0L,(-1L),(-1L),1L}};
    int64_t *l_2384 = &p_3219->g_1330;
    uint32_t l_2387 = 0x1649F354L;
    union U1 **l_2401 = (void*)0;
    uint16_t **l_2432 = &p_3219->g_215;
    uint16_t ***l_2431 = &l_2432;
    uint32_t *l_2450 = &p_3219->g_333;
    int16_t **l_2520 = &p_3219->g_618;
    uint64_t l_2531 = 0x84D03D44DF66A691L;
    uint64_t l_2594 = 0x05DE709DAADF07A3L;
    union U2 *****l_2695[4][9];
    union U2 l_2743 = {-6L};
    int i, j;
    for (i = 0; i < 3; i++)
        l_2185[i] = 0L;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
            l_2695[i][j] = &p_3219->g_1698;
    }
    for (p_3219->g_1689 = 9; (p_3219->g_1689 <= 60); p_3219->g_1689 = safe_add_func_int64_t_s_s(p_3219->g_1689, 1))
    { /* block id: 1150 */
        uint16_t l_2160 = 0x643BL;
        int32_t l_2186 = 0x53E321A1L;
        union U3 *l_2194 = &p_3219->g_2036;
        int32_t l_2210 = 0x26FBDC7FL;
        int32_t l_2211 = 0x2E4CF529L;
        uint16_t **l_2214 = &p_3219->g_215;
        uint16_t ***l_2213[8][2] = {{&l_2214,&l_2214},{&l_2214,&l_2214},{&l_2214,&l_2214},{&l_2214,&l_2214},{&l_2214,&l_2214},{&l_2214,&l_2214},{&l_2214,&l_2214},{&l_2214,&l_2214}};
        union U2 l_2266 = {0x55L};
        uint32_t l_2288[6][3] = {{0xFE1E81F0L,0xFE1E81F0L,0xFE1E81F0L},{0xFE1E81F0L,0xFE1E81F0L,0xFE1E81F0L},{0xFE1E81F0L,0xFE1E81F0L,0xFE1E81F0L},{0xFE1E81F0L,0xFE1E81F0L,0xFE1E81F0L},{0xFE1E81F0L,0xFE1E81F0L,0xFE1E81F0L},{0xFE1E81F0L,0xFE1E81F0L,0xFE1E81F0L}};
        uint32_t **l_2309 = (void*)0;
        uint32_t ***l_2308 = &l_2309;
        uint8_t *l_2310 = &p_3219->g_253;
        int8_t *l_2320 = &p_3219->g_1186.f0;
        int64_t *l_2321 = (void*)0;
        int64_t *l_2322 = (void*)0;
        int64_t *l_2323 = &l_2293;
        int8_t *l_2325 = &p_3219->g_973;
        int32_t *l_2326 = &p_3219->g_1540;
        int i, j;
        if (l_2160)
        { /* block id: 1151 */
            union U2 **l_2173 = &p_3219->g_297;
            int32_t *l_2178 = &p_3219->g_1816;
            uint8_t *l_2209[6][5] = {{&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968},{&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968},{&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968},{&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968},{&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968},{&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968,&p_3219->g_1968}};
            uint64_t *l_2240 = &p_3219->g_467[0][0][0];
            int16_t l_2246 = 3L;
            int i, j;
            (*p_3219->g_1171) = ((safe_add_func_int8_t_s_s(((l_2186 = (safe_mul_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((safe_add_func_int64_t_s_s((p_10 , p_10), (safe_div_func_uint64_t_u_u((l_2173 == (void*)0), (safe_mul_func_int16_t_s_s(((((safe_lshift_func_uint8_t_u_u(((void*)0 != l_2178), (~(safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((p_10 & (((*p_3219->g_2062) & (((safe_div_func_int8_t_s_s(((-1L) < p_3219->g_431), 0x6DL)) >= p_10) != p_9)) != p_9)), FAKE_DIVERGE(p_3219->group_1_offset, get_group_id(1), 10))), 0x41L))))) & p_3219->g_98[0][4]) || 0x7DBA571DF16E1E99L) == l_2160), l_2185[2])))))), p_9)), p_10)) <= 65527UL), p_3219->g_973))) >= 0x81002B00L), (-1L))) | p_10);
            for (p_3219->g_1186.f1 = 0; (p_3219->g_1186.f1 != 3); ++p_3219->g_1186.f1)
            { /* block id: 1156 */
                union U3 *l_2192 = &p_3219->g_692[6];
                union U3 **l_2193[5] = {&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3]};
                int i;
                (*l_2178) = (safe_lshift_func_uint16_t_u_u(((l_2192 = l_2191) == (l_2194 = ((*p_3219->g_1173) = (*p_3219->g_1173)))), 13));
                return (**l_2173);
            }
            if ((safe_add_func_uint32_t_u_u((((18446744073709551611UL & p_10) , ((((((safe_sub_func_uint32_t_u_u(p_10, l_2185[2])) < l_2160) == (0x5A8AL || l_2186)) > (safe_rshift_func_uint8_t_u_u((l_2211 = ((l_2210 = (safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(7UL, (safe_div_func_int16_t_s_s(p_10, 0xF036L)))), p_9)), p_9))) | (*l_2178))), p_10))) , p_3219->g_2212) == l_2213[1][1])) == l_2185[1]), p_9)))
            { /* block id: 1165 */
                int32_t *l_2225 = (void*)0;
                for (p_3219->g_201 = 0; (p_3219->g_201 >= 36); ++p_3219->g_201)
                { /* block id: 1168 */
                    int32_t l_2222 = 5L;
                    for (p_3219->g_333 = 0; (p_3219->g_333 >= 47); ++p_3219->g_333)
                    { /* block id: 1171 */
                        union U2 l_2219 = {0x39L};
                        return l_2219;
                    }
                    (*l_2178) = (safe_rshift_func_uint16_t_u_u((--p_3219->g_214), 7));
                }
                (*p_3219->g_273) = l_2225;
            }
            else
            { /* block id: 1178 */
                int8_t l_2226[2][8][1] = {{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}}};
                int32_t l_2227[1];
                int8_t l_2230 = (-3L);
                uint64_t *l_2239 = (void*)0;
                union U2 l_2264[7][6][6] = {{{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}}},{{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}}},{{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}}},{{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}}},{{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}}},{{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}}},{{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}},{{8L},{0x75L},{0x00L},{-1L},{0x0CL},{0x0CL}}}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_2227[i] = 0x22E4D686L;
                (*p_3219->g_1171) = ((l_2227[0] = ((+p_9) < l_2226[0][3][0])) , (FAKE_DIVERGE(p_3219->group_1_offset, get_group_id(1), 10) < 2L));
                for (p_3219->g_890 = 0; (p_3219->g_890 >= 0); p_3219->g_890 -= 1)
                { /* block id: 1183 */
                    int32_t l_2245 = 0L;
                    int8_t **l_2256[4];
                    int32_t ***l_2259 = &p_3219->g_2058;
                    int8_t **l_2262 = &p_3219->g_2254[0][2][2];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_2256[i] = &p_3219->g_2254[0][7][1];
                    (*p_3219->g_1171) = (safe_sub_func_int32_t_s_s((*p_3219->g_1171), ((+(--(*p_3219->g_987))) ^ (safe_sub_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(((((((safe_div_func_uint16_t_u_u(((l_2239 == l_2240) , (p_9 == ((void*)0 != &p_3219->g_1038[1]))), p_10)) < (((*l_2178) = 7L) , ((safe_div_func_int64_t_s_s((p_3219->g_191 = ((safe_sub_func_uint8_t_u_u(0xD6L, 1L)) == FAKE_DIVERGE(p_3219->local_0_offset, get_local_id(0), 10))), p_3219->g_1935)) >= 0x3BCBL))) > l_2245) > l_2245) || 0UL) ^ p_3219->g_1234[2][2].f0), l_2245)), p_3219->g_214)))));
                    if (l_2160)
                        continue;
                    for (p_3219->g_399 = 0; (p_3219->g_399 <= 3); p_3219->g_399 += 1)
                    { /* block id: 1191 */
                        (*p_3219->g_1171) = 0x0F198841L;
                        (*l_2178) = l_2245;
                    }
                    if (l_2246)
                    { /* block id: 1195 */
                        int8_t ***l_2255 = (void*)0;
                        int8_t **l_2261 = (void*)0;
                        int8_t ***l_2260[2][2][10] = {{{(void*)0,(void*)0,&p_3219->g_2253,(void*)0,(void*)0,(void*)0,(void*)0,&p_3219->g_2253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_3219->g_2253,(void*)0,(void*)0,(void*)0,(void*)0,&p_3219->g_2253,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_3219->g_2253,(void*)0,(void*)0,(void*)0,(void*)0,&p_3219->g_2253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_3219->g_2253,(void*)0,(void*)0,(void*)0,(void*)0,&p_3219->g_2253,(void*)0,(void*)0}}};
                        int i, j, k;
                        (*p_3219->g_855) = (p_3219->g_2248 , ((safe_sub_func_int32_t_s_s(((p_3219->g_298.f0 , (safe_rshift_func_uint8_t_u_s(((*p_3219->g_987) <= 0xD516ACF6L), (p_9 < ((l_2256[3] = p_3219->g_2253) != (l_2262 = ((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_3219->local_1_offset, get_local_id(1), 10), (&p_3219->g_2058 != l_2259))) , (void*)0))))))) >= p_9), 0x14133D84L)) , p_3219->g_2263));
                        return l_2264[6][5][0];
                    }
                    else
                    { /* block id: 1200 */
                        union U2 l_2267 = {-4L};
                        int32_t *l_2268 = &p_3219->g_1540;
                        (*p_3219->g_855) = p_3219->g_2269;
                        if (p_9)
                            continue;
                    }
                }
            }
        }
        else
        { /* block id: 1207 */
            uint8_t l_2277 = 0UL;
            for (p_3219->g_1140 = 0; (p_3219->g_1140 >= 44); p_3219->g_1140 = safe_add_func_int32_t_s_s(p_3219->g_1140, 1))
            { /* block id: 1210 */
                uint8_t *l_2276[8][4][1] = {{{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]}},{{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]}},{{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]}},{{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]}},{{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]}},{{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]}},{{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]}},{{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]},{&p_3219->g_96[8][1]}}};
                int i, j, k;
                if ((*p_3219->g_1171))
                    break;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_3219->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 76)), permutations[(safe_mod_func_uint32_t_u_u(((((*l_2191) , (((~(((safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((p_3219->g_96[1][0] ^= (*l_2247)), l_2277)), ((p_3219->g_1409.f0.f0 | ((**p_3219->g_2058) , p_3219->g_230[1][0][2])) >= (safe_sub_func_int8_t_s_s((p_3219->g_1186.f0 , (safe_div_func_uint16_t_u_u((((((safe_lshift_func_uint16_t_u_s(l_2277, 12)) <= ((safe_add_func_uint64_t_u_u(((safe_div_func_int64_t_s_s(((1UL & (*p_3219->g_987)) != 0xD4L), p_3219->g_1523)) >= p_9), p_3219->g_333)) != l_2211)) , p_9) | 0x6EL) && p_3219->g_402[1]), p_9))), l_2277))))) & 18446744073709551615UL) > 1L)) <= 0UL) == p_9)) , p_3219->g_692[6].f0.f0) , (*p_3219->g_987)), 10))][(safe_mod_func_uint32_t_u_u(p_3219->tid, 76))]));
                if (l_2288[2][1])
                    continue;
            }
        }
        if ((*l_2247))
            break;
        for (p_3219->g_201 = (-29); (p_3219->g_201 > 15); ++p_3219->g_201)
        { /* block id: 1222 */
            int32_t l_2300[2];
            uint32_t *l_2302[7] = {&p_3219->g_1038[1],&p_3219->g_1038[0],&p_3219->g_1038[1],&p_3219->g_1038[1],&p_3219->g_1038[0],&p_3219->g_1038[1],&p_3219->g_1038[1]};
            uint32_t **l_2303 = &l_2302[2];
            int32_t *l_2304[3][2][10] = {{{&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540},{&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540}},{{&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540},{&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540}},{{&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540},{&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&p_3219->g_1540,&l_2210,&p_3219->g_1540,&p_3219->g_1540}}};
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_2300[i] = 0x17764489L;
            l_2305 = (safe_rshift_func_uint16_t_u_s(l_2266.f0, (!(l_2293 >= (p_3219->g_399 = ((((*l_2247) = ((p_9 > (252UL || 0x47L)) ^ (65535UL > l_2288[2][1]))) < 1L) || (((*l_2303) = (((safe_unary_minus_func_int32_t_s((safe_sub_func_int32_t_s_s((safe_add_func_uint32_t_u_u(((l_2186 || p_9) == l_2299), l_2186)), l_2300[1])))) , p_3219->g_2301[6]) , l_2302[2])) == &p_3219->g_1038[0])))))));
        }
        (*l_2326) ^= ((l_2308 == &l_2309) > ((*l_2247) >= (((*l_2310) = (p_3219->g_96[8][0] = p_9)) || (((*l_2325) = ((l_2210 | ((((safe_div_func_uint8_t_u_u(((((l_2211 > ((*l_2323) &= ((p_3219->g_2313 , (**p_3219->g_2061)) & (safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (((*l_2320) = ((safe_div_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(0x34L, p_3219->g_1689)), p_9)) <= 0x7491A1CCCDF164E7L)) == 0xB5L)))))) == 0xBFC4L) , (*l_2247)) == 255UL), 0xF4L)) , l_2324) != &l_2321) , p_10)) <= GROUP_DIVERGE(0, 1))) > (*l_2247)))));
    }
    for (l_2293 = 0; (l_2293 <= 0); l_2293 += 1)
    { /* block id: 1237 */
        uint32_t **l_2335 = &p_3219->g_987;
        uint32_t ****l_2356 = &p_3219->g_2354;
        int32_t l_2359[5] = {0x7989D597L,0x7989D597L,0x7989D597L,0x7989D597L,0x7989D597L};
        union U1 *l_2373 = &p_3219->g_690;
        int64_t *l_2383[5] = {&p_3219->g_1330,&p_3219->g_1330,&p_3219->g_1330,&p_3219->g_1330,&p_3219->g_1330};
        uint32_t *l_2410 = &p_3219->g_1038[0];
        uint16_t ***l_2435 = &l_2432;
        union U2 l_2477 = {-1L};
        struct S0 *l_2480[1][9][9] = {{{&p_3219->g_599,&p_3219->g_1941,&p_3219->g_599,&p_3219->g_778[1][6][1],&p_3219->g_692[6].f0,&p_3219->g_692[6].f0,&p_3219->g_778[1][6][1],&p_3219->g_599,&p_3219->g_1941},{&p_3219->g_599,&p_3219->g_1941,&p_3219->g_599,&p_3219->g_778[1][6][1],&p_3219->g_692[6].f0,&p_3219->g_692[6].f0,&p_3219->g_778[1][6][1],&p_3219->g_599,&p_3219->g_1941},{&p_3219->g_599,&p_3219->g_1941,&p_3219->g_599,&p_3219->g_778[1][6][1],&p_3219->g_692[6].f0,&p_3219->g_692[6].f0,&p_3219->g_778[1][6][1],&p_3219->g_599,&p_3219->g_1941},{&p_3219->g_599,&p_3219->g_1941,&p_3219->g_599,&p_3219->g_778[1][6][1],&p_3219->g_692[6].f0,&p_3219->g_692[6].f0,&p_3219->g_778[1][6][1],&p_3219->g_599,&p_3219->g_1941},{&p_3219->g_599,&p_3219->g_1941,&p_3219->g_599,&p_3219->g_778[1][6][1],&p_3219->g_692[6].f0,&p_3219->g_692[6].f0,&p_3219->g_778[1][6][1],&p_3219->g_599,&p_3219->g_1941},{&p_3219->g_599,&p_3219->g_1941,&p_3219->g_599,&p_3219->g_778[1][6][1],&p_3219->g_692[6].f0,&p_3219->g_692[6].f0,&p_3219->g_778[1][6][1],&p_3219->g_599,&p_3219->g_1941},{&p_3219->g_599,&p_3219->g_1941,&p_3219->g_599,&p_3219->g_778[1][6][1],&p_3219->g_692[6].f0,&p_3219->g_692[6].f0,&p_3219->g_778[1][6][1],&p_3219->g_599,&p_3219->g_1941},{&p_3219->g_599,&p_3219->g_1941,&p_3219->g_599,&p_3219->g_778[1][6][1],&p_3219->g_692[6].f0,&p_3219->g_692[6].f0,&p_3219->g_778[1][6][1],&p_3219->g_599,&p_3219->g_1941},{&p_3219->g_599,&p_3219->g_1941,&p_3219->g_599,&p_3219->g_778[1][6][1],&p_3219->g_692[6].f0,&p_3219->g_692[6].f0,&p_3219->g_778[1][6][1],&p_3219->g_599,&p_3219->g_1941}}};
        int32_t ***l_2501 = (void*)0;
        int32_t ***l_2518 = &p_3219->g_2058;
        uint8_t l_2522 = 0x9FL;
        uint8_t *l_2564 = &p_3219->g_1968;
        uint8_t **l_2563[6] = {&l_2564,&l_2564,&l_2564,&l_2564,&l_2564,&l_2564};
        uint16_t ****l_2583[9] = {&l_2435,&l_2435,&l_2435,&l_2435,&l_2435,&l_2435,&l_2435,&l_2435,&l_2435};
        int16_t l_2589 = (-1L);
        int32_t l_2599 = 0x1445AE22L;
        uint16_t l_2615[5] = {1UL,1UL,1UL,1UL,1UL};
        uint64_t l_2642 = 0xD774C35B5600560AL;
        int16_t l_2666 = (-1L);
        uint8_t l_2696 = 0x7EL;
        union U2 l_2716[2][2][5] = {{{{2L},{0x7EL},{0L},{0x30L},{0x7EL}},{{2L},{0x7EL},{0L},{0x30L},{0x7EL}}},{{{2L},{0x7EL},{0L},{0x30L},{0x7EL}},{{2L},{0x7EL},{0L},{0x30L},{0x7EL}}}};
        union U2 l_2742 = {1L};
        int i, j, k;
        for (l_2299 = 0; (l_2299 >= 0); l_2299 -= 1)
        { /* block id: 1240 */
            union U2 *****l_2330 = (void*)0;
            union U2 ******l_2329 = &l_2330;
            (*l_2247) &= (safe_mod_func_int32_t_s_s(((void*)0 != l_2329), p_10));
            return l_2265;
        }
    }
    return (*p_3219->g_2665);
}


/* ------------------------------------------ */
/* 
 * reads : p_3219->g_273 p_3219->g_278 p_3219->g_118 p_3219->g_618 p_3219->g_973 p_3219->g_1359 p_3219->g_690.f0 p_3219->g_987 p_3219->g_333 p_3219->g_201 p_3219->g_228 p_3219->g_197 p_3219->g_548.f0 p_3219->g_98 p_3219->g_524 p_3219->g_1396 p_3219->g_1324 p_3219->g_1325 p_3219->g_297 p_3219->g_298 p_3219->g_890 p_3219->g_1171 p_3219->g_1173 p_3219->g_1174 p_3219->g_1409 p_3219->g_33 p_3219->g_435 p_3219->g_431 p_3219->g_1330 p_3219->g_1599 p_3219->g_1225.f0 p_3219->g_1523 p_3219->g_855 p_3219->g_856 p_3219->g_467 p_3219->g_1302 p_3219->g_191 p_3219->g_1689 p_3219->g_96 p_3219->g_comm_values p_3219->g_1705 p_3219->g_402 p_3219->g_298.f0 p_3219->g_1186 p_3219->g_1744 p_3219->g_957 p_3219->g_960 p_3219->g_1277 p_3219->g_399 p_3219->g_1038 p_3219->g_316 p_3219->g_1867 p_3219->g_1234.f0
 * writes: p_3219->g_118 p_3219->g_524 p_3219->g_197 p_3219->g_201 p_3219->g_333 p_3219->g_98 p_3219->g_228 p_3219->g_890 p_3219->g_33 p_3219->g_comm_values p_3219->g_399 p_3219->g_1140 p_3219->g_402 p_3219->g_1523 p_3219->g_467 p_3219->g_1689 p_3219->g_1698 p_3219->g_431 p_3219->g_1330 p_3219->g_214 p_3219->g_690.f1 p_3219->g_191
 */
uint8_t  func_16(int64_t  p_17, int64_t  p_18, int32_t  p_19, struct S4 * p_3219)
{ /* block id: 739 */
    struct S0 *l_1305 = &p_3219->g_278;
    int32_t l_1321 = 0x714C54F6L;
    union U2 ***l_1322 = (void*)0;
    int32_t l_1328 = 0x7A993D5BL;
    int32_t l_1366 = 0x5B0ADE61L;
    int32_t l_1369 = 3L;
    int32_t l_1374[3];
    int16_t **l_1395 = &p_3219->g_618;
    uint8_t *l_1407[4][5][2] = {{{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]}},{{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]}},{{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]}},{{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]},{&p_3219->g_96[8][0],&p_3219->g_96[8][0]}}};
    struct S0 **l_1422 = &l_1305;
    struct S0 ***l_1421 = &l_1422;
    int32_t *l_1425[3];
    int32_t ***l_1486 = &p_3219->g_627;
    int32_t ****l_1485 = &l_1486;
    int8_t l_1522[3];
    int16_t **l_1624[4] = {&p_3219->g_618,&p_3219->g_618,&p_3219->g_618,&p_3219->g_618};
    uint64_t l_1720 = 3UL;
    int64_t l_1735 = 1L;
    union U2 *****l_1748 = &p_3219->g_1698;
    union U2 ******l_1747 = &l_1748;
    uint16_t l_1817[7] = {0xCF55L,0xB93EL,0xCF55L,0xCF55L,0xB93EL,0xCF55L,0xCF55L};
    uint32_t l_1844 = 1UL;
    int64_t l_1849 = (-5L);
    union U2 l_1861 = {-1L};
    int16_t l_1862 = 0L;
    int32_t l_1886 = (-7L);
    union U2 l_1962 = {1L};
    union U3 *l_1967 = &p_3219->g_692[3];
    uint8_t l_2089 = 6UL;
    uint32_t **l_2116 = &p_3219->g_987;
    uint32_t ***l_2115 = &l_2116;
    int32_t *l_2156 = &l_1886;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1374[i] = 0x33420CC4L;
    for (i = 0; i < 3; i++)
        l_1425[i] = &p_3219->g_230[0][0][4];
    for (i = 0; i < 3; i++)
        l_1522[i] = (-6L);
    if (((void*)0 == l_1305))
    { /* block id: 740 */
        union U2 ***l_1326 = &p_3219->g_1325;
        int32_t l_1331 = 0x628E86E6L;
        int32_t l_1344 = (-6L);
        int32_t l_1365 = 9L;
        int32_t l_1367 = 0x26926392L;
        int32_t l_1370 = (-1L);
        int32_t l_1375 = 7L;
        uint16_t l_1408 = 0xD4C4L;
        struct S0 **l_1420[2];
        struct S0 ***l_1419 = &l_1420[1];
        int32_t *l_1427[10][6][1] = {{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}},{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}},{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}},{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}},{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}},{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}},{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}},{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}},{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}},{{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]},{&p_3219->g_230[1][0][1]}}};
        int32_t **l_1426 = &l_1427[9][5][0];
        int32_t l_1544 = 0x12459524L;
        int32_t l_1547 = 0x3F2BC0F5L;
        int32_t l_1548 = 0x37531B52L;
        int32_t l_1550 = 0x21E6F8AEL;
        int32_t l_1552 = 0x4577267FL;
        int64_t *l_1586 = &p_3219->g_191;
        int64_t **l_1585 = &l_1586;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1420[i] = &l_1305;
        if (p_18)
        { /* block id: 741 */
            union U2 ****l_1323 = &l_1322;
            uint64_t *l_1327 = (void*)0;
            int64_t *l_1329 = &p_3219->g_1330;
            int32_t *l_1332[4];
            int32_t **l_1333 = &p_3219->g_524;
            uint16_t *l_1336[7][5][1] = {{{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214}},{{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214}},{{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214}},{{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214}},{{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214}},{{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214}},{{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214},{&p_3219->g_214}}};
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_1332[i] = (void*)0;
            (*l_1333) = ((*p_3219->g_273) = &l_1321);
            l_1328 &= ((((safe_rshift_func_int16_t_s_u(p_19, (l_1331 = p_18))) < (safe_unary_minus_func_uint8_t_u((safe_mod_func_int8_t_s_s(((-1L) >= (p_17 & p_18)), (FAKE_DIVERGE(p_3219->global_2_offset, get_global_id(2), 10) , ((*l_1305) , (safe_mod_func_int16_t_s_s(((*p_3219->g_618) = (safe_sub_func_uint32_t_u_u(1UL, (+((**p_3219->g_273) != l_1344))))), l_1344))))))))) >= p_3219->g_973) , l_1344);
            return p_17;
        }
        else
        { /* block id: 755 */
            uint8_t l_1352 = 1UL;
            int32_t l_1363 = 0L;
            int32_t l_1364 = 0x58A56CF2L;
            int32_t l_1368 = 2L;
            int32_t l_1371 = 1L;
            int32_t l_1372 = 0L;
            int32_t l_1376 = 0x6E450CCBL;
            uint8_t l_1377 = 0x33L;
            union U2 **l_1382 = &p_3219->g_297;
            int32_t *l_1393 = &p_3219->g_228[3][0];
            int8_t *l_1397 = &p_3219->g_890;
            int64_t *l_1398[10] = {&p_3219->g_191,(void*)0,(void*)0,(void*)0,&p_3219->g_191,&p_3219->g_191,(void*)0,(void*)0,(void*)0,&p_3219->g_191};
            int32_t *l_1410 = &l_1369;
            int32_t *l_1411[10] = {&l_1328,&l_1328,&l_1328,&l_1328,&l_1328,&l_1328,&l_1328,&l_1328,&l_1328,&l_1328};
            uint32_t l_1412 = 0xDD7C9D6DL;
            int i;
            for (p_17 = 0; (p_17 == (-3)); p_17 = safe_sub_func_int16_t_s_s(p_17, 1))
            { /* block id: 758 */
                int32_t *l_1347 = &p_3219->g_33[4][2][1];
                int32_t *l_1348 = &l_1321;
                int32_t *l_1349 = &l_1344;
                int32_t *l_1350 = &l_1328;
                int32_t *l_1351[7][3] = {{(void*)0,&p_3219->g_33[5][2][0],&p_3219->g_98[3][1]},{(void*)0,&p_3219->g_33[5][2][0],&p_3219->g_98[3][1]},{(void*)0,&p_3219->g_33[5][2][0],&p_3219->g_98[3][1]},{(void*)0,&p_3219->g_33[5][2][0],&p_3219->g_98[3][1]},{(void*)0,&p_3219->g_33[5][2][0],&p_3219->g_98[3][1]},{(void*)0,&p_3219->g_33[5][2][0],&p_3219->g_98[3][1]},{(void*)0,&p_3219->g_33[5][2][0],&p_3219->g_98[3][1]}};
                uint32_t *l_1360 = &p_3219->g_201;
                int32_t l_1373 = 0x000025BEL;
                int i, j;
                --l_1352;
                (*p_3219->g_524) = (safe_mod_func_uint64_t_u_u(p_17, (safe_add_func_int16_t_s_s((p_3219->g_1359 , ((0L || ((*p_3219->g_987) = ((p_3219->g_690.f0 | p_17) <= ((*l_1360) |= (*p_3219->g_987))))) >= (p_3219->g_228[3][4] > (((*p_3219->g_618) |= p_18) | ((safe_add_func_uint32_t_u_u(1UL, p_3219->g_548.f0)) != p_3219->g_98[0][4]))))), l_1344))));
                --l_1377;
            }
            (*p_3219->g_1171) = (safe_lshift_func_uint16_t_u_u(((l_1382 == (void*)0) | ((*p_3219->g_987) > (safe_lshift_func_int8_t_s_s((safe_mod_func_int64_t_s_s((p_18 = ((((*l_1393) ^= (safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_3219->local_1_offset, get_local_id(1), 10), (safe_sub_func_int64_t_s_s(0x6DE84A9C810999BAL, FAKE_DIVERGE(p_3219->group_1_offset, get_group_id(1), 10)))))) , (~(((safe_unary_minus_func_uint32_t_u((((*l_1397) ^= (((l_1395 != (p_3219->g_1396 , (void*)0)) <= l_1374[1]) || ((***p_3219->g_1324) , l_1376))) & 0x35L))) | 0x64C7L) == GROUP_DIVERGE(2, 1)))) || 0L)), FAKE_DIVERGE(p_3219->local_1_offset, get_local_id(1), 10))), l_1374[0])))), 5));
            (*p_3219->g_118) &= (((p_18 | (((safe_rshift_func_int16_t_s_s(0x0662L, (safe_add_func_int16_t_s_s(l_1370, (+(safe_add_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(l_1370, l_1366)), ((void*)0 == l_1407[1][3][0])))))))) || ((*p_3219->g_1173) == p_3219->g_1174[2])) > l_1408)) , p_3219->g_1409) , 0L);
            ++l_1412;
        }
        if ((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_3219->local_0_offset, get_local_id(0), 10), (safe_sub_func_int8_t_s_s((l_1367 , (-1L)), ((l_1421 = l_1419) != ((l_1365 < (safe_rshift_func_uint8_t_u_u((l_1425[1] == ((*l_1426) = (void*)0)), (safe_sub_func_uint16_t_u_u((((safe_div_func_uint8_t_u_u(((void*)0 == &p_3219->g_914[1][0]), 1UL)) > (-1L)) , FAKE_DIVERGE(p_3219->group_0_offset, get_group_id(0), 10)), 0x8776L))))) , &l_1420[1])))))))
        { /* block id: 775 */
            uint32_t l_1440 = 0xE058934AL;
            int64_t *l_1441 = (void*)0;
            int64_t *l_1442[7];
            struct S0 *l_1443[5];
            int i;
            for (i = 0; i < 7; i++)
                l_1442[i] = (void*)0;
            for (i = 0; i < 5; i++)
                l_1443[i] = (void*)0;
            (*p_3219->g_524) &= ((((*p_3219->g_1171) = (((p_3219->g_comm_values[p_3219->tid] = (((1L < ((safe_lshift_func_int16_t_s_s(((safe_div_func_int64_t_s_s((p_3219->g_435 || (((**p_3219->g_273) <= (((void*)0 != &l_1344) <= (safe_sub_func_uint8_t_u_u(((void*)0 == (*p_3219->g_273)), 0x27L)))) || (((l_1365 >= l_1328) , p_18) && (*p_3219->g_618)))), p_17)) < l_1440), 12)) >= p_3219->g_431)) >= p_3219->g_1330) != p_17)) , (void*)0) != (*l_1395))) , l_1443[3]) != (void*)0);
        }
        else
        { /* block id: 779 */
            int16_t l_1471 = 0x6122L;
            int32_t l_1503 = 1L;
            int32_t l_1542 = 0x7638ABBBL;
            int32_t l_1543 = 0x4DACAA5FL;
            int32_t l_1546 = 1L;
            int32_t l_1549[7][3] = {{0x65171016L,(-10L),(-10L)},{0x65171016L,(-10L),(-10L)},{0x65171016L,(-10L),(-10L)},{0x65171016L,(-10L),(-10L)},{0x65171016L,(-10L),(-10L)},{0x65171016L,(-10L),(-10L)},{0x65171016L,(-10L),(-10L)}};
            int32_t l_1551[8] = {0x2DD70D69L,0x2DD70D69L,0x2DD70D69L,0x2DD70D69L,0x2DD70D69L,0x2DD70D69L,0x2DD70D69L,0x2DD70D69L};
            union U2 *l_1590 = (void*)0;
            int8_t *l_1663[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int8_t **l_1662 = &l_1663[0];
            union U2 ****l_1669 = &l_1322;
            int i, j;
            for (p_3219->g_890 = 0; (p_3219->g_890 > (-6)); p_3219->g_890 = safe_sub_func_int64_t_s_s(p_3219->g_890, 9))
            { /* block id: 782 */
                uint16_t *l_1466 = (void*)0;
                uint16_t *l_1468 = &p_3219->g_399;
                int32_t l_1472 = 0x252C598CL;
                uint8_t l_1500 = 246UL;
                int32_t l_1539[3];
                int16_t l_1554 = 0x7DDCL;
                uint32_t l_1555 = 0x5156BC16L;
                int i;
                for (i = 0; i < 3; i++)
                    l_1539[i] = 0x4B5BA1C4L;
                for (p_3219->g_399 = 0; (p_3219->g_399 <= 6); p_3219->g_399 += 1)
                { /* block id: 785 */
                    int32_t l_1470 = 0x73385282L;
                    int32_t l_1493 = 2L;
                    (1 + 1);
                    if (l_1367)
                        goto lbl_1598;
                }
            }
            (*p_3219->g_273) = &l_1374[2];
lbl_1598:
            for (p_3219->g_197 = (-5); (p_3219->g_197 < 25); p_3219->g_197 = safe_add_func_uint32_t_u_u(p_3219->g_197, 9))
            { /* block id: 855 */
                int32_t l_1597 = 4L;
                for (p_3219->g_1140 = 11; (p_3219->g_1140 != 14); p_3219->g_1140 = safe_add_func_int8_t_s_s(p_3219->g_1140, 2))
                { /* block id: 858 */
                    l_1369 &= (**p_3219->g_273);
                }
                return l_1597;
            }
            for (p_3219->g_197 = 1; (p_3219->g_197 >= 0); p_3219->g_197 -= 1)
            { /* block id: 866 */
                uint32_t *l_1600 = &p_3219->g_402[1];
                int32_t *l_1601 = (void*)0;
                int32_t *l_1602 = &p_3219->g_1523;
                union U3 *l_1603 = (void*)0;
                union U3 **l_1604 = &l_1603;
                int32_t l_1619[7];
                union U2 ***l_1639 = &p_3219->g_1325;
                uint16_t **l_1694 = &p_3219->g_215;
                int32_t l_1703 = 0L;
                union U2 *****l_1717 = &l_1669;
                int i;
                for (i = 0; i < 7; i++)
                    l_1619[i] = 0x67BC8E3AL;
                (*l_1604) = ((p_3219->g_1599 , ((*l_1602) ^= (((*l_1600) = p_3219->g_1225.f0) , p_19))) , l_1603);
                if ((safe_lshift_func_int8_t_s_u((safe_add_func_int64_t_s_s((safe_add_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((p_19 > 0xCBFF91C7BB4185C6L), 0x2A6445C6L)), 0x20L)), ((((*p_3219->g_1171) = (safe_rshift_func_uint8_t_u_u((l_1374[1] = (l_1619[2] < (safe_mul_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u(((((l_1624[0] == ((*p_3219->g_855) , l_1624[0])) || (safe_mod_func_uint8_t_u_u((0xDEE127A6F2602131L < p_17), p_18))) && p_18) >= l_1548), l_1366)), (*p_3219->g_618))))), p_17))) > l_1619[2]) , l_1619[2]))), 65534UL)), p_17)), 6)))
                { /* block id: 872 */
                    uint64_t *l_1646 = &p_3219->g_467[0][0][3];
                    int8_t *l_1649 = &p_3219->g_890;
                    int32_t l_1654 = 0L;
                    uint16_t *l_1655 = &p_3219->g_214;
                    int32_t l_1666 = 0x51B0D5A3L;
                    union U2 l_1710 = {-4L};
                    if ((l_1549[2][2] |= (safe_mod_func_int16_t_s_s((func_20((l_1321 ^= ((((safe_rshift_func_int8_t_s_u(((((safe_sub_func_int16_t_s_s((0UL & (((safe_mul_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u((((((l_1639 != (void*)0) && (((safe_sub_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((((*l_1646) ^= p_17) > (safe_rshift_func_int8_t_s_s(((*l_1649) = (p_3219->g_1599 , 9L)), (safe_mul_func_int32_t_s_s(0x41EDB3CAL, ((0L > ((p_17 || 0L) < p_18)) < p_3219->g_1330)))))), l_1375)) , l_1619[2]), 3)), l_1408)) ^ p_19) || (-2L))) & l_1654) , (void*)0) == l_1655), l_1503)) , p_19), p_18)) && (*p_3219->g_618)) == 0x3F0D43A4L)), l_1619[2])) < (-4L)) > 4L) , p_18), p_17)) >= p_19) ^ l_1374[2]) & (-8L))), p_3219) , (*p_3219->g_618)), p_19))))
                    { /* block id: 877 */
                        int64_t l_1682 = 0x1E425C6C8570F8B0L;
                        uint32_t *l_1683 = &p_3219->g_201;
                        uint32_t *l_1688 = &p_3219->g_1689;
                        union U2 *****l_1697[10][1] = {{&l_1669},{&l_1669},{&l_1669},{&l_1669},{&l_1669},{&l_1669},{&l_1669},{&l_1669},{&l_1669},{&l_1669}};
                        int32_t l_1699 = 0L;
                        uint8_t l_1700[6][10] = {{4UL,0x23L,247UL,0UL,0xACL,4UL,0UL,255UL,0UL,4UL},{4UL,0x23L,247UL,0UL,0xACL,4UL,0UL,255UL,0UL,4UL},{4UL,0x23L,247UL,0UL,0xACL,4UL,0UL,255UL,0UL,4UL},{4UL,0x23L,247UL,0UL,0xACL,4UL,0UL,255UL,0UL,4UL},{4UL,0x23L,247UL,0UL,0xACL,4UL,0UL,255UL,0UL,4UL},{4UL,0x23L,247UL,0UL,0xACL,4UL,0UL,255UL,0UL,4UL}};
                        int i, j;
                        (*p_3219->g_1171) |= (((safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s(((0L | (l_1662 == (void*)0)) < (safe_rshift_func_uint8_t_u_s(((p_3219->g_191 <= (l_1654 = p_18)) && l_1654), ((p_3219->g_1523 < l_1666) , (safe_rshift_func_int8_t_s_s((l_1427[9][5][0] != (void*)0), p_19)))))), 15)), p_18)) , p_19) , l_1549[4][2]);
                        l_1547 = ((**p_3219->g_273) = ((void*)0 != l_1669));
                        (*p_3219->g_524) ^= (safe_add_func_int8_t_s_s((safe_sub_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s((((safe_mul_func_uint8_t_u_u(((l_1619[2] = GROUP_DIVERGE(0, 1)) || (safe_rshift_func_uint8_t_u_u(((((*p_3219->g_987) == ((*l_1683)++)) > l_1619[4]) <= (((l_1699 = (((((*l_1688)++) | ((**p_3219->g_273) = (safe_mod_func_int16_t_s_s(((void*)0 == l_1694), (safe_lshift_func_int16_t_s_s(((void*)0 != &p_3219->g_467[0][6][3]), 14)))))) == l_1369) >= ((p_3219->g_1698 = &l_1322) != (void*)0))) && p_17) <= p_3219->g_96[8][0])), p_3219->g_278.f0))), p_3219->g_197)) && p_3219->g_856[6][0][5].f0) > 0x20L), l_1682)), l_1700[1][7])) | (*p_3219->g_618)), (*p_3219->g_987))), 7UL));
                        (*p_3219->g_118) = (((*p_3219->g_987) = ((*l_1683)--)) , (l_1649 == (void*)0));
                    }
                    else
                    { /* block id: 892 */
                        int32_t l_1713 = (-7L);
                        uint64_t *l_1714 = &p_3219->g_431;
                        union U2 *****l_1716 = (void*)0;
                        union U2 ******l_1715 = &l_1716;
                        if (p_18)
                            break;
                        (**p_3219->g_273) = (l_1703 != (p_3219->g_comm_values[p_3219->tid] || (((safe_unary_minus_func_uint8_t_u((~(!(((p_3219->g_1705 , ((safe_div_func_uint64_t_u_u(((safe_div_func_uint32_t_u_u(((((*l_1646) = 0xA60CCBCC6562D54CL) == (l_1710 , (((*l_1715) = ((((l_1365 ^= p_18) >= GROUP_DIVERGE(2, 1)) , ((((safe_mul_func_uint8_t_u_u(0xF4L, ((((*l_1714) ^= ((l_1713 , p_19) && l_1344)) , l_1703) > 1L))) > 1UL) ^ p_3219->g_402[4]) | p_17)) , &p_3219->g_1698)) == l_1717))) < 0x6E447C93L), (**p_3219->g_273))) , 2UL), p_3219->g_298.f0)) , 7L)) <= p_19) > p_19))))) < GROUP_DIVERGE(1, 1)) | p_3219->g_201)));
                    }
                }
                else
                { /* block id: 900 */
                    return p_3219->g_435;
                }
                (*p_3219->g_524) = (*p_3219->g_1171);
                for (l_1344 = 0; (l_1344 <= 1); l_1344 += 1)
                { /* block id: 906 */
                    if (l_1367)
                        goto lbl_1598;
                }
            }
        }
    }
    else
    { /* block id: 911 */
        uint8_t l_1727 = 0x5BL;
        uint32_t *l_1728 = &p_3219->g_402[3];
        union U2 ****l_1729[4][7][9] = {{{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322}},{{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322}},{{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322}},{{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322},{&l_1322,(void*)0,&p_3219->g_1324,&l_1322,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&p_3219->g_1324,&l_1322}}};
        int32_t l_1730 = 0x2648120DL;
        int32_t l_1731 = 0L;
        int32_t *l_1732 = &l_1730;
        int32_t *l_1733 = &p_3219->g_1540;
        int32_t *l_1734[6][10][3] = {{{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]}},{{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]}},{{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]}},{{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]}},{{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]}},{{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]},{&p_3219->g_98[0][4],&l_1374[1],&p_3219->g_98[0][4]}}};
        int32_t l_1736 = (-5L);
        uint64_t l_1737 = 0xFFDF965EC747805AL;
        int i, j, k;
        (**p_3219->g_273) = (safe_div_func_int8_t_s_s(((+(((+(l_1720 < 0x0162L)) && ((safe_sub_func_int64_t_s_s(0x2AC08926493A9313L, ((*p_3219->g_987) , (l_1730 ^= (safe_mod_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (((((safe_mul_func_uint16_t_u_u(((l_1727 = 0x3BL) <= ((void*)0 != &p_3219->g_431)), ((*p_3219->g_987) & (((void*)0 == l_1728) , l_1374[2])))) , (void*)0) != l_1729[2][0][5]) & 7L) & p_3219->g_33[5][2][0]))))))) >= l_1731)) && 1UL)) <= p_3219->g_856[6][0][5].f0), p_17));
        l_1737--;
        l_1734[0][5][0] = (void*)0;
        (*l_1732) &= p_17;
    }
    (*p_3219->g_1171) = p_19;
    for (p_3219->g_1330 = 12; (p_3219->g_1330 == (-20)); p_3219->g_1330 = safe_sub_func_uint64_t_u_u(p_3219->g_1330, 4))
    { /* block id: 922 */
        uint32_t l_1750 = 8UL;
        int32_t l_1782[7][1][4] = {{{(-7L),0x4C4692FCL,0x227DF1DAL,(-4L)}},{{(-7L),0x4C4692FCL,0x227DF1DAL,(-4L)}},{{(-7L),0x4C4692FCL,0x227DF1DAL,(-4L)}},{{(-7L),0x4C4692FCL,0x227DF1DAL,(-4L)}},{{(-7L),0x4C4692FCL,0x227DF1DAL,(-4L)}},{{(-7L),0x4C4692FCL,0x227DF1DAL,(-4L)}},{{(-7L),0x4C4692FCL,0x227DF1DAL,(-4L)}}};
        int8_t *l_1798 = &p_3219->g_890;
        int32_t *l_1847 = &l_1374[0];
        int32_t *l_1848[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t l_1850 = 1UL;
        union U2 l_1855[4][1] = {{{-7L}},{{-7L}},{{-7L}},{{-7L}}};
        struct S0 **l_1856 = (void*)0;
        uint16_t *l_1868[7][7] = {{&p_3219->g_399,&p_3219->g_214,&l_1817[1],&p_3219->g_214,&p_3219->g_399,&p_3219->g_399,&p_3219->g_214},{&p_3219->g_399,&p_3219->g_214,&l_1817[1],&p_3219->g_214,&p_3219->g_399,&p_3219->g_399,&p_3219->g_214},{&p_3219->g_399,&p_3219->g_214,&l_1817[1],&p_3219->g_214,&p_3219->g_399,&p_3219->g_399,&p_3219->g_214},{&p_3219->g_399,&p_3219->g_214,&l_1817[1],&p_3219->g_214,&p_3219->g_399,&p_3219->g_399,&p_3219->g_214},{&p_3219->g_399,&p_3219->g_214,&l_1817[1],&p_3219->g_214,&p_3219->g_399,&p_3219->g_399,&p_3219->g_214},{&p_3219->g_399,&p_3219->g_214,&l_1817[1],&p_3219->g_214,&p_3219->g_399,&p_3219->g_399,&p_3219->g_214},{&p_3219->g_399,&p_3219->g_214,&l_1817[1],&p_3219->g_214,&p_3219->g_399,&p_3219->g_399,&p_3219->g_214}};
        union U2 **l_1877[10] = {&p_3219->g_297,&p_3219->g_297,&p_3219->g_297,&p_3219->g_297,&p_3219->g_297,&p_3219->g_297,&p_3219->g_297,&p_3219->g_297,&p_3219->g_297,&p_3219->g_297};
        struct S0 *l_1993 = &p_3219->g_1229[1][6];
        uint32_t **l_1995 = &p_3219->g_987;
        uint32_t ***l_1994 = &l_1995;
        uint32_t l_1996 = 1UL;
        uint16_t l_2014 = 0UL;
        int i, j, k;
        for (p_3219->g_1523 = 0; (p_3219->g_1523 <= 2); p_3219->g_1523 += 1)
        { /* block id: 925 */
            int32_t *l_1749 = &p_3219->g_334;
            int16_t l_1835 = 0x78B0L;
            int32_t l_1842 = (-1L);
            int32_t l_1843 = (-1L);
            int i;
            (*p_3219->g_273) = &l_1374[p_3219->g_1523];
            l_1750 = (func_58(((*p_3219->g_618) & (safe_mul_func_int16_t_s_s(((p_19 & (p_3219->g_1186 , (p_3219->g_1744 != l_1747))) ^ (*p_3219->g_618)), (l_1749 != (void*)0)))), &l_1328, p_3219) , p_18);
            for (p_3219->g_333 = 0; (p_3219->g_333 <= 8); p_3219->g_333 += 1)
            { /* block id: 930 */
                uint32_t l_1753[1][9] = {{0x7DD3E8C1L,0x7DD3E8C1L,0x7DD3E8C1L,0x7DD3E8C1L,0x7DD3E8C1L,0x7DD3E8C1L,0x7DD3E8C1L,0x7DD3E8C1L,0x7DD3E8C1L}};
                uint32_t *l_1754[1][9][3] = {{{&p_3219->g_201,&p_3219->g_333,&p_3219->g_1689},{&p_3219->g_201,&p_3219->g_333,&p_3219->g_1689},{&p_3219->g_201,&p_3219->g_333,&p_3219->g_1689},{&p_3219->g_201,&p_3219->g_333,&p_3219->g_1689},{&p_3219->g_201,&p_3219->g_333,&p_3219->g_1689},{&p_3219->g_201,&p_3219->g_333,&p_3219->g_1689},{&p_3219->g_201,&p_3219->g_333,&p_3219->g_1689},{&p_3219->g_201,&p_3219->g_333,&p_3219->g_1689},{&p_3219->g_201,&p_3219->g_333,&p_3219->g_1689}}};
                int32_t **l_1755 = (void*)0;
                int32_t l_1793 = 0L;
                uint8_t l_1794[3];
                int8_t *l_1797 = &l_1522[0];
                int32_t l_1799[6] = {0L,0x2E1D7B17L,0L,0L,0x2E1D7B17L,0L};
                uint32_t **l_1802 = &l_1754[0][2][1];
                uint32_t ***l_1801 = &l_1802;
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_1794[i] = 0xF4L;
                if (((&p_3219->g_435 == (p_3219->g_1277[(p_3219->g_1523 + 2)][(p_3219->g_1523 + 1)] , &p_3219->g_435)) ^ (safe_div_func_uint32_t_u_u((p_3219->g_201 = l_1753[0][8]), ((((void*)0 == l_1755) , (safe_mod_func_int8_t_s_s((((safe_add_func_int32_t_s_s(((!0x05D70FCCL) || (safe_mul_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u(((safe_mod_func_uint8_t_u_u(((safe_unary_minus_func_int64_t_s((p_17 == (p_3219->g_1689 &= (safe_lshift_func_uint8_t_u_s((((safe_mod_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u(((**l_1395) |= ((l_1328 = p_3219->g_399) || l_1750)), p_18)) < l_1753[0][3]), p_3219->g_98[3][3])) , p_18) && l_1750), 7)))))) > p_3219->g_98[4][4]), p_3219->g_1038[0])) > 0x53CD6732F82BD1D2L), l_1374[p_3219->g_1523])) > p_18), l_1735))), GROUP_DIVERGE(2, 1))) && l_1750) & l_1753[0][8]), l_1720))) | l_1753[0][1])))))
                { /* block id: 935 */
                    uint8_t l_1775 = 0xFDL;
                    int8_t *l_1795 = (void*)0;
                    int8_t *l_1796 = &p_3219->g_690.f1;
                    if ((!(safe_mul_func_uint16_t_u_u(((l_1374[p_3219->g_1523] ^ l_1775) <= p_3219->g_98[0][4]), ((p_18 & (((safe_rshift_func_uint8_t_u_s(0x8BL, 0)) , (((l_1799[5] = ((l_1782[5][0][3] = (p_3219->g_1689--)) != (safe_mul_func_uint8_t_u_u((((((**l_1395) = (safe_mul_func_int8_t_s_s((l_1369 = ((*l_1796) = (safe_sub_func_int8_t_s_s(((((((safe_sub_func_uint8_t_u_u((l_1794[1] = (safe_mul_func_uint8_t_u_u((l_1793 = ((p_19 , p_3219->g_548.f0) > (&p_17 != (void*)0))), 0x48L))), p_17)) ^ 0x8320268FL) ^ GROUP_DIVERGE(1, 1)) , p_17) & (-1L)) , p_19), l_1753[0][8])))), FAKE_DIVERGE(p_3219->global_0_offset, get_global_id(0), 10)))) ^ l_1374[1]) , l_1797) != l_1798), l_1775)))) && (*p_3219->g_987)) == l_1753[0][8])) >= p_17)) , l_1374[p_3219->g_1523])))))
                    { /* block id: 944 */
                        (*p_3219->g_524) &= ((0x2641738DL >= 4294967293UL) < (*p_3219->g_987));
                    }
                    else
                    { /* block id: 946 */
                        uint32_t l_1800 = 0UL;
                        l_1800 ^= 0x78528A72L;
                    }
                    for (p_3219->g_191 = 0; (p_3219->g_191 <= 0); p_3219->g_191 += 1)
                    { /* block id: 951 */
                        (*l_1422) = (void*)0;
                    }
                    if (p_18)
                        break;
                }
                else
                { /* block id: 955 */
                    l_1782[5][0][3] &= (*p_3219->g_524);
                }
                (*p_3219->g_1171) = (&l_1754[0][4][2] == ((*l_1801) = &p_3219->g_987));
                if (p_17)
                    break;
                for (p_3219->g_399 = 0; (p_3219->g_399 <= 8); p_3219->g_399 += 1)
                { /* block id: 963 */
                    int32_t l_1807[9];
                    int32_t *l_1836 = &p_3219->g_98[0][4];
                    int32_t *l_1837 = &p_3219->g_98[0][4];
                    int32_t *l_1838 = &l_1369;
                    int32_t *l_1839 = &l_1793;
                    int32_t *l_1840 = &l_1374[0];
                    int32_t *l_1841[1][2];
                    int i, j;
                    for (i = 0; i < 9; i++)
                        l_1807[i] = 0x24BB32C7L;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_1841[i][j] = &p_3219->g_33[8][2][3];
                    }
                    if (p_18)
                    { /* block id: 964 */
                        int32_t *l_1803 = &l_1799[4];
                        int32_t *l_1804 = &l_1328;
                        int32_t *l_1805 = &l_1328;
                        int32_t *l_1806 = (void*)0;
                        int32_t *l_1808 = &p_3219->g_98[0][4];
                        int32_t *l_1809 = &l_1807[7];
                        int32_t *l_1810 = &p_3219->g_33[5][2][0];
                        int32_t *l_1811 = &l_1807[3];
                        int32_t *l_1812 = &l_1799[4];
                        int32_t *l_1813 = &p_3219->g_1540;
                        int32_t *l_1814 = (void*)0;
                        int32_t *l_1815[6][8][5] = {{{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0}},{{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0}},{{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0}},{{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0}},{{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0}},{{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0},{&l_1782[5][0][3],&p_3219->g_33[5][2][0],&l_1807[2],&l_1782[5][0][3],(void*)0}}};
                        int i, j, k;
                        l_1817[4]--;
                        return p_3219->g_316;
                    }
                    else
                    { /* block id: 967 */
                        uint32_t l_1834 = 4294967295UL;
                        (*p_3219->g_1171) ^= (safe_add_func_int16_t_s_s((-2L), (((((((safe_add_func_uint16_t_u_u((l_1782[2][0][2] <= ((safe_mul_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u((safe_mod_func_int8_t_s_s(((&p_17 == (l_1374[p_3219->g_1523] , &p_17)) > (((*p_3219->g_987) & (&p_3219->g_214 == &l_1817[4])) < (safe_lshift_func_int16_t_s_u((0x564DL & (*p_3219->g_618)), l_1834)))), l_1753[0][7])), (*p_3219->g_524))) && FAKE_DIVERGE(p_3219->group_0_offset, get_group_id(0), 10)), 0L)) > GROUP_DIVERGE(2, 1))), 0xD7FBL)) != 0x4CL) , p_3219->g_191) || p_18) & l_1793) && (-6L)) && l_1782[5][0][3])));
                    }
                    l_1844++;
                    if (p_19)
                        break;
                }
            }
        }
        l_1850++;
        l_1328 = (safe_mul_func_uint16_t_u_u(((*l_1847) = (((l_1855[3][0] , (((l_1856 != ((((**p_3219->g_1325) , (l_1855[3][0] , (l_1369 = ((safe_mod_func_int64_t_s_s((&p_3219->g_98[0][4] != ((safe_add_func_uint8_t_u_u(((((((((l_1861 , (((l_1862 & (safe_mul_func_uint8_t_u_u(p_18, (safe_add_func_int16_t_s_s(((p_3219->g_1867 , 0x2D285D35L) || (*p_3219->g_987)), l_1844))))) & l_1374[0]) >= (*p_3219->g_618))) , p_17) < p_19) < p_3219->g_98[2][5]) & l_1844) == p_18) >= 6UL) == 0x67F7L), p_3219->g_191)) , &p_3219->g_98[4][3])), 0x42ED5B4845157477L)) ^ 0x6AEED387L)))) < (*p_3219->g_618)) , l_1856)) , (*l_1847)) & (*l_1847))) , p_17) , 1UL)), 65535UL));
    }
    return p_3219->g_1234[2][2].f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_3219->g_1302
 * writes:
 */
union U3  func_20(int32_t  p_21, struct S4 * p_3219)
{ /* block id: 6 */
    uint32_t l_22[4] = {0x4489B467L,0x4489B467L,0x4489B467L,0x4489B467L};
    int32_t l_23 = 0L;
    int32_t l_36 = 0x692AFB55L;
    int32_t l_37[3][7] = {{(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)}};
    int32_t l_38 = 0x00A4EDB9L;
    int32_t l_39 = 0x05EBC95BL;
    uint16_t l_40[8][3][7] = {{{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL}},{{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL}},{{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL}},{{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL}},{{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL}},{{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL}},{{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL}},{{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL},{0x2FBDL,0x546EL,0x6290L,4UL,0UL,0x2FBDL,4UL}}};
    int32_t l_1231 = 0x03515428L;
    union U3 *l_1247[9] = {&p_3219->g_80,&p_3219->g_80,&p_3219->g_80,&p_3219->g_80,&p_3219->g_80,&p_3219->g_80,&p_3219->g_80,&p_3219->g_80,&p_3219->g_80};
    int32_t ***l_1285 = &p_3219->g_627;
    int32_t ****l_1284 = &l_1285;
    int i, j, k;
    for (p_21 = 0; (p_21 <= 3); p_21 += 1)
    { /* block id: 9 */
        int32_t *l_24 = &l_23;
        int32_t *l_25 = (void*)0;
        int32_t *l_26 = &l_23;
        int32_t *l_27 = &l_23;
        int32_t *l_28 = &l_23;
        int32_t *l_29 = (void*)0;
        int32_t *l_30 = &l_23;
        int32_t *l_31 = &l_23;
        int32_t *l_32 = &l_23;
        int32_t *l_34 = &p_3219->g_33[5][2][0];
        int32_t *l_35[2];
        uint16_t *l_1201 = &l_40[2][0][3];
        struct S0 *l_1230 = &p_3219->g_777[7][4][2];
        union U3 *l_1246 = (void*)0;
        union U2 l_1258[5] = {{0x4BL},{0x4BL},{0x4BL},{0x4BL},{0x4BL}};
        int i;
        for (i = 0; i < 2; i++)
            l_35[i] = &p_3219->g_33[1][6][3];
        --l_40[2][0][3];
    }
    return p_3219->g_1302;
}


/* ------------------------------------------ */
/* 
 * reads : p_3219->g_890 p_3219->g_524 p_3219->g_137 p_3219->g_618 p_3219->g_253 p_3219->g_402
 * writes: p_3219->g_890 p_3219->g_98 p_3219->g_197 p_3219->g_33
 */
int32_t  func_43(uint32_t  p_44, int32_t  p_45, int32_t * p_46, int32_t * p_47, int32_t * p_48, struct S4 * p_3219)
{ /* block id: 635 */
    uint16_t l_1210 = 0x76ADL;
    int8_t *l_1220 = (void*)0;
    for (p_3219->g_890 = 23; (p_3219->g_890 <= 11); p_3219->g_890 = safe_sub_func_uint8_t_u_u(p_3219->g_890, 4))
    { /* block id: 638 */
        uint32_t l_1217 = 0x39C96961L;
        int32_t l_1218 = 0L;
        uint16_t l_1219[1];
        int i;
        for (i = 0; i < 1; i++)
            l_1219[i] = 0UL;
        (*p_46) = (safe_div_func_uint8_t_u_u(((((safe_mod_func_uint32_t_u_u(l_1210, ((((*p_48) = (safe_mod_func_uint8_t_u_u((4UL >= (((*p_3219->g_524) = (FAKE_DIVERGE(p_3219->group_0_offset, get_group_id(0), 10) <= (p_44 != FAKE_DIVERGE(p_3219->local_1_offset, get_local_id(1), 10)))) != ((((-1L) < l_1210) == (!(0x71L && (((((safe_rshift_func_int16_t_s_u(((*p_3219->g_618) = (p_3219->g_137 , (p_45 || (l_1217 ^= ((((safe_lshift_func_int8_t_s_u(p_45, l_1210)) <= l_1210) , 0x64DEL) | l_1210))))), 4)) > p_3219->g_253) | l_1218) , (void*)0) != &l_1210)))) == 0L))), 1UL))) , 0x1DF1095740DB0220L) ^ l_1218))) & l_1219[0]) , l_1220) != l_1220), p_3219->g_402[0]));
    }
    return l_1210;
}


/* ------------------------------------------ */
/* 
 * reads : p_3219->g_334 p_3219->g_856.f0 p_3219->g_33 p_3219->g_333 p_3219->g_524 p_3219->g_705
 * writes: p_3219->g_334 p_3219->g_402 p_3219->g_987 p_3219->g_98 p_3219->g_705
 */
uint32_t  func_53(int64_t  p_54, int32_t * p_55, struct S4 * p_3219)
{ /* block id: 12 */
    uint32_t l_81 = 7UL;
    union U2 l_279 = {1L};
    int8_t *l_969 = (void*)0;
    int8_t **l_968 = &l_969;
    int8_t ***l_967 = &l_968;
    int8_t ***l_970[7] = {&l_968,&l_968,&l_968,&l_968,&l_968,&l_968,&l_968};
    uint16_t l_971[2][7] = {{0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L},{0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L}};
    int32_t *l_975 = &p_3219->g_334;
    int64_t **l_976 = (void*)0;
    int64_t *l_978 = (void*)0;
    int64_t **l_977 = &l_978;
    int64_t *l_979 = (void*)0;
    uint32_t *l_980 = &p_3219->g_402[1];
    uint32_t *l_986 = &p_3219->g_201;
    uint32_t **l_985[5] = {&l_986,&l_986,&l_986,&l_986,&l_986};
    int16_t **l_995 = (void*)0;
    int16_t ***l_994 = &l_995;
    int32_t l_996 = 0x618AA7D4L;
    int32_t l_997 = 0x43317ADFL;
    int32_t l_998 = 0x116165CCL;
    int32_t *l_1006 = &l_997;
    uint32_t l_1114 = 0x5E4E7A94L;
    int16_t **l_1136 = &p_3219->g_618;
    union U3 *l_1172 = &p_3219->g_692[3];
    uint64_t l_1193[2];
    int8_t l_1194 = (-5L);
    int i, j;
    for (i = 0; i < 2; i++)
        l_1193[i] = 0UL;
    for (p_54 = 0; (p_54 <= (-25)); --p_54)
    { /* block id: 15 */
        int32_t l_75 = 0x2A38A8CDL;
        int32_t *l_280 = &p_3219->g_33[5][2][0];
        uint32_t *l_972[5];
        union U2 **l_974 = &p_3219->g_297;
        int i;
        for (i = 0; i < 5; i++)
            l_972[i] = (void*)0;
        (1 + 1);
    }
    (*p_3219->g_524) = (l_998 &= ((((*l_975) &= (-5L)) , (((*l_980) = (((*l_977) = &p_3219->g_191) == l_979)) , (((l_997 ^= (safe_add_func_uint16_t_u_u(p_54, ((safe_div_func_int64_t_s_s((l_980 == (p_3219->g_987 = &p_3219->g_201)), (p_3219->g_856[6][0][5].f0 & (safe_mul_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u(((l_996 = (safe_div_func_int32_t_s_s((((*l_994) = &p_3219->g_618) == &p_3219->g_618), FAKE_DIVERGE(p_3219->local_0_offset, get_local_id(0), 10)))) >= (*p_55)), p_3219->g_333)) & 0x7808BCBCE9E63AADL), l_279.f0))))) , 4L)))) == l_279.f0) || FAKE_DIVERGE(p_3219->local_0_offset, get_local_id(0), 10)))) , 0x3E38B2B1L));
    for (p_3219->g_705 = 18; (p_3219->g_705 == (-29)); p_3219->g_705--)
    { /* block id: 476 */
        uint32_t l_1013 = 0UL;
        uint32_t l_1040 = 0UL;
        union U2 l_1087 = {7L};
        int32_t ***l_1094 = (void*)0;
        uint8_t *l_1108 = &p_3219->g_96[8][0];
        int32_t l_1125 = 0L;
        uint8_t *l_1126 = &p_3219->g_253;
        int16_t **l_1137 = &p_3219->g_618;
        int32_t l_1161 = 0x44A46974L;
        struct S0 **l_1180 = (void*)0;
        (1 + 1);
    }
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_3219->g_273 p_3219->g_118 p_3219->g_33 p_3219->g_197 p_3219->g_957 p_3219->g_960 p_3219->g_98
 * writes: p_3219->g_214 p_3219->g_197 p_3219->g_118
 */
struct S0  func_58(uint32_t  p_59, int32_t * p_60, struct S4 * p_3219)
{ /* block id: 447 */
    uint32_t l_939 = 0x591C7089L;
    int32_t ***l_948 = &p_3219->g_627;
    int32_t ****l_947 = &l_948;
    uint16_t *l_949 = &p_3219->g_214;
    int8_t **l_951 = (void*)0;
    int8_t ***l_950 = &l_951;
    int8_t *l_952[1];
    int32_t l_953 = (-5L);
    int32_t l_954 = 0L;
    union U2 l_958 = {0x7EL};
    int32_t *l_959 = &p_3219->g_98[5][5];
    int i;
    for (i = 0; i < 1; i++)
        l_952[i] = &p_3219->g_690.f0;
    l_954 = ((safe_mul_func_int8_t_s_s((0x4FB84A1BL ^ (l_939 & (l_953 = (safe_mod_func_int64_t_s_s(((((safe_lshift_func_uint16_t_u_s((((((safe_lshift_func_uint8_t_u_u(((0x1FC2L & (~((*l_949) = (safe_unary_minus_func_uint64_t_u((((*l_947) = (void*)0) == &p_3219->g_627)))))) | ((void*)0 == l_950)), 6)) > ((1UL < l_939) | 0x9EL)) , l_939) <= FAKE_DIVERGE(p_3219->group_0_offset, get_group_id(0), 10)) , p_59), p_59)) , l_949) == &p_3219->g_399) || p_59), (-1L)))))), l_939)) , (**p_3219->g_273));
    for (p_3219->g_197 = 23; (p_3219->g_197 >= 8); p_3219->g_197 = safe_sub_func_uint8_t_u_u(p_3219->g_197, 1))
    { /* block id: 454 */
        return p_3219->g_957;
    }
    (*p_3219->g_273) = &l_954;
    return p_3219->g_960;
}


/* ------------------------------------------ */
/* 
 * reads : p_3219->g_214 p_3219->g_113 p_3219->g_33 p_3219->g_234.f0 p_3219->g_201 p_3219->g_98 p_3219->g_197 p_3219->g_253 p_3219->g_116 p_3219->g_316 p_3219->g_273 p_3219->g_118 p_3219->g_298.f0 p_3219->g_228 p_3219->g_117 p_3219->l_comm_values p_3219->g_334 p_3219->g_96 p_3219->g_137 p_3219->g_191 p_3219->g_230 p_3219->g_399 p_3219->g_80.f0.f0 p_3219->g_333 p_3219->g_402 p_3219->g_124 p_3219->g_122 p_3219->g_123 p_3219->g_137.f0 p_3219->g_431 p_3219->g_435 p_3219->g_467 p_3219->g_524 p_3219->g_262 p_3219->g_80.f0 p_3219->g_548 p_3219->g_674 p_3219->g_618 p_3219->g_690 p_3219->g_777
 * writes: p_3219->g_214 p_3219->g_297 p_3219->g_33 p_3219->g_253 p_3219->g_98 p_3219->g_197 p_3219->g_333 p_3219->g_334 p_3219->g_201 p_3219->g_191 p_3219->g_298.f0 p_3219->g_399 p_3219->g_402 p_3219->g_118 p_3219->g_435 p_3219->g_467 p_3219->g_431 p_3219->g_262 p_3219->g_254 p_3219->g_80.f0 p_3219->g_778
 */
int32_t * func_61(union U2  p_62, union U2  p_63, int32_t * p_64, struct S4 * p_3219)
{ /* block id: 101 */
    int32_t *l_290 = &p_3219->g_228[2][2];
    union U2 *l_299 = (void*)0;
    int32_t l_300 = 0x3358BC29L;
    int32_t l_320 = 0x46C3AE12L;
    uint8_t *l_324 = &p_3219->g_253;
    uint8_t **l_325 = &l_324;
    uint8_t *l_326 = &p_3219->g_253;
    int16_t *l_327[6];
    uint32_t *l_332 = &p_3219->g_333;
    int32_t l_358 = 0x71A464F8L;
    union U2 **l_370[1];
    union U2 **l_371 = (void*)0;
    int32_t l_502 = 0x3D0A2C06L;
    int32_t l_504 = 1L;
    int32_t l_505 = (-5L);
    int32_t l_506 = (-7L);
    int32_t l_507 = (-1L);
    int32_t l_509 = 0L;
    int32_t l_510 = 0x75B7BC3EL;
    int32_t l_511 = 0x7303F1E7L;
    int32_t l_513 = 7L;
    int32_t l_514 = 0x30D8EC0BL;
    int32_t l_515 = (-1L);
    int32_t l_517[1][8];
    uint8_t l_553 = 0xCDL;
    union U2 ***l_614[8][5] = {{&l_370[0],&l_370[0],(void*)0,&l_370[0],&l_370[0]},{&l_370[0],&l_370[0],(void*)0,&l_370[0],&l_370[0]},{&l_370[0],&l_370[0],(void*)0,&l_370[0],&l_370[0]},{&l_370[0],&l_370[0],(void*)0,&l_370[0],&l_370[0]},{&l_370[0],&l_370[0],(void*)0,&l_370[0],&l_370[0]},{&l_370[0],&l_370[0],(void*)0,&l_370[0],&l_370[0]},{&l_370[0],&l_370[0],(void*)0,&l_370[0],&l_370[0]},{&l_370[0],&l_370[0],(void*)0,&l_370[0],&l_370[0]}};
    union U3 *l_691 = &p_3219->g_692[6];
    int32_t ***l_699[6][3][10] = {{{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0}},{{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0}},{{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0}},{{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0}},{{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0}},{{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0},{&p_3219->g_627,(void*)0,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,(void*)0,(void*)0,(void*)0,&p_3219->g_627,(void*)0}}};
    int8_t *l_784 = &p_3219->g_298.f0;
    int8_t **l_783[4][8] = {{(void*)0,&l_784,(void*)0,(void*)0,&l_784,(void*)0,(void*)0,&l_784},{(void*)0,&l_784,(void*)0,(void*)0,&l_784,(void*)0,(void*)0,&l_784},{(void*)0,&l_784,(void*)0,(void*)0,&l_784,(void*)0,(void*)0,&l_784},{(void*)0,&l_784,(void*)0,(void*)0,&l_784,(void*)0,(void*)0,&l_784}};
    uint32_t l_798 = 0x9FAF1FEDL;
    struct S0 **l_805[10][5][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    int64_t *l_820 = (void*)0;
    int32_t *l_927 = &l_507;
    int16_t l_933 = 0L;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_327[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_370[i] = (void*)0;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
            l_517[i][j] = (-1L);
    }
    for (p_3219->g_214 = 0; (p_3219->g_214 <= 18); p_3219->g_214 = safe_add_func_int8_t_s_s(p_3219->g_214, 7))
    { /* block id: 104 */
        uint32_t l_287 = 0x309ADF98L;
        uint8_t *l_305 = &p_3219->g_253;
        int32_t *l_317 = &p_3219->g_98[5][2];
        int16_t *l_318 = &p_3219->g_197;
        uint32_t *l_319[4];
        int32_t *l_321 = &l_320;
        int i;
        for (i = 0; i < 4; i++)
            l_319[i] = &l_287;
        if ((*p_3219->g_113))
            break;
        (*p_3219->g_116) = (safe_rshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u(l_287, (((((safe_div_func_int16_t_s_s(((p_3219->g_234.f0 , l_290) == (void*)0), (p_3219->g_201 ^ (safe_mod_func_uint64_t_u_u(((safe_div_func_uint16_t_u_u(0x908FL, ((((((safe_add_func_int32_t_s_s((&p_3219->g_214 != (void*)0), ((p_3219->g_297 = &p_62) == l_299))) >= l_300) > p_3219->g_98[0][4]) , 0x69L) > p_3219->g_197) ^ l_287))) >= p_62.f0), p_63.f0))))) <= (*p_64)) < p_3219->g_253) >= 0x23L) || 0xE94AFA8B02A46C8FL))), 2));
        (*l_321) = ((*p_3219->g_118) = ((safe_div_func_uint32_t_u_u((((*l_305) = (safe_rshift_func_uint8_t_u_s(0xF6L, 4))) && (safe_mod_func_int8_t_s_s((safe_div_func_int64_t_s_s(((safe_add_func_uint32_t_u_u((l_300 = (((-10L) == ((-9L) && GROUP_DIVERGE(0, 1))) & ((((((*l_318) = (((safe_rshift_func_int8_t_s_u((0x546E2397L <= (safe_mul_func_uint8_t_u_u((0L ^ p_3219->g_316), ((void*)0 != l_317)))), 6)) & ((*l_317) &= ((*p_3219->g_273) == (void*)0))) | 2L)) <= p_3219->g_298.f0) && 0UL) >= 0x5A2385136B3A890FL) < l_300))), (**p_3219->g_273))) != p_62.f0), p_3219->g_228[3][4])), p_63.f0))), l_320)) , (*p_64)));
    }
    if (((safe_div_func_int32_t_s_s((l_320 || ((p_3219->g_197 = ((p_62.f0 | p_3219->g_197) , (p_3219->g_201 | ((*l_326) ^= (((*l_325) = l_324) == (void*)0))))) & (((l_320 < (p_3219->g_334 = (((safe_add_func_uint32_t_u_u(((*l_332) = (safe_sub_func_int32_t_s_s((*p_64), (l_300 = ((p_3219->g_214 > p_62.f0) >= FAKE_DIVERGE(p_3219->global_1_offset, get_global_id(1), 10)))))), 8UL)) , (*p_3219->g_117)) & 2UL))) & (*p_3219->g_116)) || (-5L)))), (*p_3219->g_113))) <= p_3219->l_comm_values[(safe_mod_func_uint32_t_u_u(p_3219->tid, 76))]))
    { /* block id: 121 */
        int64_t l_350 = (-6L);
        int32_t l_353 = 8L;
        int32_t l_354 = 0x598AD08AL;
        int32_t l_355 = (-1L);
        int32_t l_359 = 0x080124DEL;
        int32_t l_360[7][9][4] = {{{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L}},{{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L}},{{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L}},{{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L}},{{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L}},{{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L}},{{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L},{0x742B468AL,0x4975026DL,0L,0L}}};
        union U2 **l_367 = &l_299;
        struct S0 *l_405[4];
        uint8_t l_472 = 0xC4L;
        uint8_t l_519 = 0xF0L;
        int32_t **l_625[7];
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_405[i] = &p_3219->g_80.f0;
        for (i = 0; i < 7; i++)
            l_625[i] = (void*)0;
        for (p_3219->g_334 = 0; (p_3219->g_334 <= (-11)); p_3219->g_334 = safe_sub_func_uint64_t_u_u(p_3219->g_334, 2))
        { /* block id: 124 */
            int16_t l_347[10][9] = {{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L},{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L},{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L},{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L},{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L},{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L},{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L},{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L},{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L},{0x7B44L,(-1L),0x6323L,0x7B44L,(-1L),0x6323L,0x6323L,(-1L),0x7B44L}};
            int32_t l_351 = 0x406CE03BL;
            int32_t l_357 = 0x6E38B36EL;
            uint16_t *l_423 = &p_3219->g_214;
            int8_t *l_465 = (void*)0;
            int32_t l_503 = 0x1034CE9CL;
            int32_t l_508 = 4L;
            int32_t l_512 = (-1L);
            int32_t l_516 = (-1L);
            int32_t l_518 = 0x67E162D3L;
            int8_t *l_565 = &p_3219->g_298.f0;
            struct S0 **l_573 = &l_405[1];
            struct S0 ***l_572 = &l_573;
            int64_t l_642 = (-1L);
            uint8_t l_663 = 0UL;
            int i, j;
            for (p_3219->g_201 = 0; (p_3219->g_201 <= 1); p_3219->g_201 += 1)
            { /* block id: 127 */
                int32_t l_348 = 0x63658493L;
                int32_t l_349[3];
                uint8_t l_361 = 0xD8L;
                union U2 ***l_366 = (void*)0;
                union U2 **l_369 = (void*)0;
                union U2 ***l_368[7][5][7] = {{{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369}},{{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369}},{{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369}},{{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369}},{{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369}},{{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369}},{{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369},{&l_369,&l_369,&l_369,&l_369,&l_369,(void*)0,&l_369}}};
                int64_t *l_378 = &p_3219->g_191;
                int8_t *l_379 = (void*)0;
                int8_t *l_380[9][3][8] = {{{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0}},{{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0}},{{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0}},{{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0}},{{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0}},{{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0}},{{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0}},{{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0}},{{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0},{&p_3219->g_298.f0,(void*)0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0,&p_3219->g_298.f0}}};
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_349[i] = 0x01D770C4L;
                for (p_3219->g_214 = 0; (p_3219->g_214 <= 1); p_3219->g_214 += 1)
                { /* block id: 130 */
                    int64_t l_346 = 1L;
                    int32_t l_352 = (-1L);
                    int32_t l_356[2][5] = {{1L,0x7ACA5B88L,1L,1L,0x7ACA5B88L},{1L,0x7ACA5B88L,1L,1L,0x7ACA5B88L}};
                    int i, j;
                    for (l_320 = 0; (l_320 <= 1); l_320 += 1)
                    { /* block id: 133 */
                        int32_t *l_337 = &p_3219->g_33[4][1][1];
                        int i, j;
                        if (p_3219->g_96[(p_3219->g_214 + 2)][p_3219->g_201])
                            break;
                        return l_337;
                    }
                    for (p_3219->g_253 = 0; (p_3219->g_253 <= 1); p_3219->g_253 += 1)
                    { /* block id: 139 */
                        int32_t *l_338 = &l_320;
                        int32_t *l_339 = &p_3219->g_33[5][2][0];
                        int32_t *l_340 = (void*)0;
                        int32_t *l_341 = &l_300;
                        int32_t *l_342 = &l_320;
                        int32_t *l_343 = &p_3219->g_33[5][2][0];
                        int32_t *l_344 = &l_320;
                        int32_t *l_345[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        --l_361;
                    }
                    return p_64;
                }
                (*p_3219->g_116) = (safe_lshift_func_uint16_t_u_s((((((l_370[0] = (l_367 = (void*)0)) == (l_371 = &p_3219->g_297)) == ((((safe_div_func_int64_t_s_s((safe_add_func_int8_t_s_s((p_3219->g_298.f0 &= (0UL < ((safe_lshift_func_int8_t_s_u(((p_3219->g_253 = FAKE_DIVERGE(p_3219->group_0_offset, get_group_id(0), 10)) >= p_3219->g_96[(p_3219->g_201 + 7)][p_3219->g_201]), 5)) & (((((p_3219->g_137 , ((*l_378) |= l_320)) ^ (((!((*p_3219->g_117) && p_63.f0)) , (l_353 &= l_355)) , l_347[8][0])) <= 0L) >= 0x33B2AC8EA3E98569L) != (*p_3219->g_116))))), 0x35L)), p_62.f0)) & p_3219->g_230[1][0][1]) && 0x58L) & 0x3BB5L)) , (void*)0) != l_327[(p_3219->g_201 + 4)]), 13));
                if (l_358)
                    continue;
            }
            for (p_3219->g_214 = (-2); (p_3219->g_214 >= 52); p_3219->g_214 = safe_add_func_int8_t_s_s(p_3219->g_214, 2))
            { /* block id: 156 */
                int64_t *l_395 = (void*)0;
                int64_t *l_396[1][5][10] = {{{(void*)0,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,(void*)0,(void*)0},{(void*)0,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,(void*)0,(void*)0},{(void*)0,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,(void*)0,(void*)0},{(void*)0,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,(void*)0,(void*)0},{(void*)0,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,&l_350,&l_350,&p_3219->g_191,(void*)0,(void*)0}}};
                int32_t l_397 = (-8L);
                uint16_t *l_398 = &p_3219->g_399;
                int32_t l_403 = 0L;
                struct S0 *l_406 = &p_3219->g_80.f0;
                uint8_t l_410[1];
                int8_t *l_466 = &p_3219->g_298.f0;
                int32_t l_471[7][6][4] = {{{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)}},{{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)}},{{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)}},{{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)}},{{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)}},{{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)}},{{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)},{0L,1L,(-1L),(-2L)}}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_410[i] = 0UL;
                if ((safe_lshift_func_uint16_t_u_u((safe_div_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(l_355, (safe_mul_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u(0x5FE0DBD6L, ((*p_3219->g_116) = l_358))) && (l_397 ^= p_63.f0)), ((p_3219->g_98[0][4] != l_355) >= ((--(*l_398)) <= (p_3219->g_197 |= l_320))))))), (p_3219->g_80.f0.f0 & ((((p_3219->g_402[1] |= ((p_3219->g_333 == 0x0BL) & p_3219->g_201)) <= l_353) ^ l_403) > 0xFCL)))), p_3219->g_214)), l_358)))
                { /* block id: 162 */
                    struct S0 *l_404 = (void*)0;
                    int32_t l_426 = 0x3A32B4BBL;
                    int32_t *l_432 = &l_353;
                    int32_t *l_433 = &p_3219->g_33[2][2][3];
                    int32_t *l_434[2][10][2] = {{{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0}},{{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0},{&l_300,(void*)0}}};
                    int i, j, k;
                    if (((l_405[1] = l_404) == ((**p_3219->g_124) , l_406)))
                    { /* block id: 164 */
                        int32_t *l_407 = &l_300;
                        int32_t *l_408 = &p_3219->g_33[2][1][0];
                        int32_t *l_409 = (void*)0;
                        uint16_t *l_424 = &p_3219->g_399;
                        (*p_3219->g_117) = (*p_64);
                        --l_410[0];
                        (*p_3219->g_118) ^= (safe_sub_func_uint64_t_u_u(((safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((p_3219->g_197 = (safe_add_func_uint32_t_u_u((*l_407), (0xBFL ^ (l_423 == l_424))))), (safe_unary_minus_func_uint16_t_u(((l_426 = ((*l_324) = l_300)) , (safe_rshift_func_uint8_t_u_s(((p_3219->g_137.f0 || (((void*)0 == l_396[0][3][7]) , GROUP_DIVERGE(2, 1))) != ((((safe_lshift_func_int16_t_s_s((255UL && 0x6FL), p_62.f0)) == 65527UL) && 0x3AAC68E7L) <= l_426)), 6))))))), p_3219->g_431)) | l_300), (*l_407)));
                    }
                    else
                    { /* block id: 171 */
                        (*p_3219->g_118) = 5L;
                        (*p_3219->g_273) = p_64;
                    }
                    --p_3219->g_435;
                    for (p_3219->g_191 = 19; (p_3219->g_191 <= 8); p_3219->g_191 = safe_sub_func_int8_t_s_s(p_3219->g_191, 9))
                    { /* block id: 178 */
                        uint32_t *l_442[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        (**p_3219->g_273) = (safe_add_func_int16_t_s_s(((void*)0 == l_442[2]), 0L));
                    }
                }
                else
                { /* block id: 181 */
                    int32_t l_447 = 3L;
                    (*p_64) = (-1L);
                    (*p_3219->g_117) &= (safe_mod_func_int64_t_s_s((l_300 <= (&p_63 == (void*)0)), ((0x2CE7L ^ ((l_447 = ((safe_div_func_int32_t_s_s((p_62 , (FAKE_DIVERGE(p_3219->global_1_offset, get_global_id(1), 10) != 0x76A8L)), (-5L))) || p_63.f0)) ^ (safe_mod_func_int64_t_s_s((GROUP_DIVERGE(1, 1) ^ ((((safe_rshift_func_uint8_t_u_s(((*l_326) = l_353), l_351)) | (-1L)) != 0x458258C44B7F73C3L) && p_3219->g_298.f0)), p_62.f0)))) & 0x0FL)));
                }
                for (l_300 = 29; (l_300 != (-12)); l_300 = safe_sub_func_int32_t_s_s(l_300, 5))
                { /* block id: 189 */
                    int32_t l_498[10][2] = {{3L,0x3D4F77B1L},{3L,0x3D4F77B1L},{3L,0x3D4F77B1L},{3L,0x3D4F77B1L},{3L,0x3D4F77B1L},{3L,0x3D4F77B1L},{3L,0x3D4F77B1L},{3L,0x3D4F77B1L},{3L,0x3D4F77B1L},{3L,0x3D4F77B1L}};
                    int i, j;
                    (*p_3219->g_273) = p_64;
                    if (l_347[9][6])
                    { /* block id: 191 */
                        uint64_t l_464 = 18446744073709551615UL;
                        struct S0 **l_468 = &l_406;
                        (*p_3219->g_273) = (*p_3219->g_273);
                        (*l_468) = ((safe_lshift_func_int8_t_s_u((safe_div_func_int32_t_s_s((*p_64), (safe_sub_func_uint8_t_u_u(((((-1L) ^ 0x8EL) , (safe_sub_func_int32_t_s_s((*p_3219->g_113), (safe_lshift_func_int16_t_s_s((p_3219->g_197 |= (l_464 , (p_62 , (l_358 ^= (l_351 = ((*p_64) || ((p_3219->g_467[0][0][3] = ((l_466 = l_465) != l_326)) | p_3219->g_399))))))), 5))))) <= l_320), FAKE_DIVERGE(p_3219->global_1_offset, get_global_id(1), 10))))), p_63.f0)) , (void*)0);
                        return p_64;
                    }
                    else
                    { /* block id: 200 */
                        int32_t *l_469 = &l_360[4][1][3];
                        int32_t *l_470[1];
                        uint64_t *l_483 = (void*)0;
                        uint64_t *l_484 = (void*)0;
                        uint64_t *l_485 = (void*)0;
                        uint64_t *l_486 = &p_3219->g_467[0][0][1];
                        uint8_t l_497 = 0xA3L;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_470[i] = &l_353;
                        l_472--;
                        l_498[0][0] = ((*p_3219->g_118) = (GROUP_DIVERGE(2, 1) || ((safe_add_func_int16_t_s_s(((p_64 != (void*)0) , (safe_mod_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(((*l_486) ^= p_3219->g_214), (p_3219->g_191 &= (safe_sub_func_uint16_t_u_u((p_62.f0 | ((((!(1L & (safe_sub_func_int16_t_s_s(((p_3219->g_431--) > (((*p_3219->g_122) , 0x9B08L) != (l_357 = (safe_add_func_uint16_t_u_u(l_497, p_62.f0))))), 0x2D20L)))) , p_63.f0) < 0x0A9FL) , 8UL)), p_63.f0))))), p_63.f0)), FAKE_DIVERGE(p_3219->global_1_offset, get_global_id(1), 10)))), l_498[2][0])) , GROUP_DIVERGE(1, 1))));
                        (*p_3219->g_273) = p_64;
                    }
                    return p_64;
                }
                if (l_320)
                { /* block id: 212 */
                    struct S0 *l_499 = &p_3219->g_80.f0;
                    struct S0 **l_500[3][8] = {{&l_405[1],(void*)0,&l_405[1],&l_405[1],(void*)0,&l_405[1],&l_405[1],(void*)0},{&l_405[1],(void*)0,&l_405[1],&l_405[1],(void*)0,&l_405[1],&l_405[1],(void*)0},{&l_405[1],(void*)0,&l_405[1],&l_405[1],(void*)0,&l_405[1],&l_405[1],(void*)0}};
                    int32_t *l_501[7] = {(void*)0,&l_355,(void*)0,(void*)0,&l_355,(void*)0,(void*)0};
                    int i, j;
                    p_3219->g_262 = l_499;
                    ++l_519;
                    for (l_358 = 0; (l_358 != (-21)); l_358 = safe_sub_func_uint8_t_u_u(l_358, 1))
                    { /* block id: 217 */
                        return p_3219->g_524;
                    }
                }
                else
                { /* block id: 220 */
                    uint32_t l_545 = 4294967293UL;
                    int32_t l_552[9][10] = {{1L,0L,2L,0L,1L,1L,1L,8L,1L,1L},{1L,0L,2L,0L,1L,1L,1L,8L,1L,1L},{1L,0L,2L,0L,1L,1L,1L,8L,1L,1L},{1L,0L,2L,0L,1L,1L,1L,8L,1L,1L},{1L,0L,2L,0L,1L,1L,1L,8L,1L,1L},{1L,0L,2L,0L,1L,1L,1L,8L,1L,1L},{1L,0L,2L,0L,1L,1L,1L,8L,1L,1L},{1L,0L,2L,0L,1L,1L,1L,8L,1L,1L},{1L,0L,2L,0L,1L,1L,1L,8L,1L,1L}};
                    int i, j;
                    for (p_3219->g_431 = 0; (p_3219->g_431 <= 48); ++p_3219->g_431)
                    { /* block id: 223 */
                        uint8_t l_527 = 0x36L;
                        int32_t *l_530 = &l_514;
                        int32_t *l_531 = (void*)0;
                        int32_t *l_532 = &l_359;
                        int32_t *l_533 = (void*)0;
                        int32_t *l_534 = &p_3219->g_33[5][2][0];
                        int32_t *l_535 = (void*)0;
                        int32_t *l_536 = &l_504;
                        int32_t *l_537 = (void*)0;
                        int32_t *l_538 = &l_514;
                        int32_t *l_539 = &l_360[1][6][1];
                        int32_t *l_540 = &l_320;
                        int32_t *l_541 = &l_355;
                        int32_t *l_542 = &l_513;
                        int32_t *l_543 = &l_360[6][7][1];
                        int32_t *l_544[6][6] = {{(void*)0,&l_515,&l_516,&l_509,&l_515,&l_509},{(void*)0,&l_515,&l_516,&l_509,&l_515,&l_509},{(void*)0,&l_515,&l_516,&l_509,&l_515,&l_509},{(void*)0,&l_515,&l_516,&l_509,&l_515,&l_509},{(void*)0,&l_515,&l_516,&l_509,&l_515,&l_509},{(void*)0,&l_515,&l_516,&l_509,&l_515,&l_509}};
                        int i, j;
                        l_527--;
                        if ((*p_64))
                            break;
                        p_3219->g_254 = (*p_3219->g_262);
                        l_545--;
                    }
                    (*p_3219->g_262) = p_3219->g_548;
                    for (l_516 = 0; (l_516 > 10); l_516++)
                    { /* block id: 232 */
                        int32_t *l_551[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_551[i] = (void*)0;
                        (*p_3219->g_524) ^= l_518;
                        --l_553;
                        if ((*p_64))
                            break;
                    }
                    for (l_513 = 0; (l_513 < (-1)); l_513 = safe_sub_func_int64_t_s_s(l_513, 1))
                    { /* block id: 239 */
                        struct S0 *l_558[1][5][6] = {{{(void*)0,(void*)0,&p_3219->g_278,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,(void*)0,&p_3219->g_278,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,(void*)0,&p_3219->g_278,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,(void*)0,&p_3219->g_278,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,(void*)0,&p_3219->g_278,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0}}};
                        int i, j, k;
                        p_3219->g_262 = l_558[0][3][1];
                        return (*p_3219->g_273);
                    }
                }
            }
        }
    }
    else
    { /* block id: 296 */
        uint32_t l_677 = 4294967292UL;
        int32_t l_682[2];
        int32_t ****l_791[2];
        int64_t *l_912 = &p_3219->g_191;
        int32_t *l_919[6][10] = {{&l_300,(void*)0,&l_682[0],&l_505,&l_682[0],(void*)0,&l_300,&l_517[0][6],&p_3219->g_98[1][1],&p_3219->g_98[1][1]},{&l_300,(void*)0,&l_682[0],&l_505,&l_682[0],(void*)0,&l_300,&l_517[0][6],&p_3219->g_98[1][1],&p_3219->g_98[1][1]},{&l_300,(void*)0,&l_682[0],&l_505,&l_682[0],(void*)0,&l_300,&l_517[0][6],&p_3219->g_98[1][1],&p_3219->g_98[1][1]},{&l_300,(void*)0,&l_682[0],&l_505,&l_682[0],(void*)0,&l_300,&l_517[0][6],&p_3219->g_98[1][1],&p_3219->g_98[1][1]},{&l_300,(void*)0,&l_682[0],&l_505,&l_682[0],(void*)0,&l_300,&l_517[0][6],&p_3219->g_98[1][1],&p_3219->g_98[1][1]},{&l_300,(void*)0,&l_682[0],&l_505,&l_682[0],(void*)0,&l_300,&l_517[0][6],&p_3219->g_98[1][1],&p_3219->g_98[1][1]}};
        int32_t *l_922 = &l_514;
        uint32_t l_934 = 0xEE538D5FL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_682[i] = 0x7658A595L;
        for (i = 0; i < 2; i++)
            l_791[i] = &l_699[5][2][5];
        for (l_507 = 7; (l_507 <= (-6)); l_507--)
        { /* block id: 299 */
            union U3 *l_684[6][1] = {{&p_3219->g_80},{&p_3219->g_80},{&p_3219->g_80},{&p_3219->g_80},{&p_3219->g_80},{&p_3219->g_80}};
            int32_t *l_717 = &l_514;
            union U2 *l_718 = &p_3219->g_298;
            int32_t l_741 = (-1L);
            int32_t l_746 = 0L;
            int32_t l_747 = 0x783B8021L;
            int32_t l_748 = 0x36DD21BFL;
            int32_t l_749 = 0x3A60B5DFL;
            int32_t l_750 = 0L;
            int32_t l_751 = 0L;
            int32_t l_754 = 0x105BEDABL;
            int32_t l_757 = (-7L);
            int32_t l_759 = 1L;
            uint32_t l_764[8][7][2] = {{{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL}},{{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL}},{{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL}},{{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL}},{{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL}},{{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL}},{{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL}},{{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL},{0xAF474AE3L,4294967295UL}}};
            int i, j, k;
            for (p_3219->g_298.f0 = 4; (p_3219->g_298.f0 >= 1); p_3219->g_298.f0 -= 1)
            { /* block id: 302 */
                int32_t l_683 = (-7L);
                union U2 l_707 = {-6L};
                int32_t *l_716[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                for (l_506 = 0; (l_506 <= 5); l_506 += 1)
                { /* block id: 305 */
                    int64_t l_676 = 0L;
                    union U3 *l_685 = &p_3219->g_80;
                    int32_t l_706 = 0x59608A6EL;
                    for (l_513 = 3; (l_513 >= 0); l_513 -= 1)
                    { /* block id: 308 */
                        int32_t ***l_696 = (void*)0;
                        int32_t ****l_695 = &l_696;
                        int32_t ***l_698 = &p_3219->g_627;
                        int32_t ****l_697[6][5] = {{(void*)0,&l_698,&l_698,&l_698,&l_698},{(void*)0,&l_698,&l_698,&l_698,&l_698},{(void*)0,&l_698,&l_698,&l_698,&l_698},{(void*)0,&l_698,&l_698,&l_698,&l_698},{(void*)0,&l_698,&l_698,&l_698,&l_698},{(void*)0,&l_698,&l_698,&l_698,&l_698}};
                        struct S0 **l_701 = &p_3219->g_262;
                        struct S0 ***l_700 = &l_701;
                        struct S0 **l_703 = &p_3219->g_262;
                        struct S0 ***l_702 = &l_703;
                        int8_t *l_704[3][8][9] = {{{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0}},{{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0}},{{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0},{&p_3219->g_705,&p_3219->g_690.f0,(void*)0,&p_3219->g_705,&p_3219->g_705,(void*)0,&p_3219->g_690.f0,&p_3219->g_705,&p_3219->g_298.f0}}};
                        int i, j, k;
                        l_685 = ((safe_add_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(p_3219->g_98[l_506][(p_3219->g_298.f0 + 2)], ((safe_mul_func_uint8_t_u_u((p_3219->g_674[0] != (void*)0), (l_676 < l_677))) == ((*p_3219->g_618) < (safe_sub_func_int16_t_s_s((l_682[0] ^= (0x121EE1A6L >= ((GROUP_DIVERGE(0, 1) >= (p_3219->g_191 = (p_3219->g_201 && (((safe_div_func_uint32_t_u_u(p_63.f0, 4294967295UL)) <= l_358) >= p_63.f0)))) & 0xDA94415DL))), 8UL)))))), l_683)) , l_684[5][0]);
                        p_3219->g_98[l_506][(p_3219->g_298.f0 + 1)] |= (~((safe_add_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_s((!((p_3219->g_690 , &p_3219->g_80) != l_691)), 3)) & (safe_sub_func_uint32_t_u_u(((((*l_695) = &p_3219->g_627) == (l_699[5][2][6] = ((p_3219->g_201 , GROUP_DIVERGE(2, 1)) , &p_3219->g_627))) >= (((((*l_700) = &p_3219->g_262) != ((*l_702) = &p_3219->g_262)) || (l_706 &= p_62.f0)) > l_513)), GROUP_DIVERGE(1, 1)))) , 1UL), p_62.f0)) & 0xFD68L));
                    }
                    for (l_676 = 1; (l_676 >= 0); l_676 -= 1)
                    { /* block id: 321 */
                        int i, j, k;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_3219->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 76)), permutations[(safe_mod_func_uint32_t_u_u(p_3219->g_33[l_506][(l_506 + 1)][l_676], 10))][(safe_mod_func_uint32_t_u_u(p_3219->tid, 76))]));
                        p_3219->g_297 = &p_63;
                    }
                }
            }
            for (l_677 = 0; (l_677 <= 5); l_677 += 1)
            { /* block id: 346 */
                union U2 *l_719 = &p_3219->g_298;
                int32_t l_726 = 0L;
                int32_t l_738 = 0x3CEBD071L;
                int32_t l_739 = 0L;
                int32_t l_740 = 0x40ED3121L;
                int32_t l_742 = (-2L);
                int32_t l_744[4] = {(-9L),(-9L),(-9L),(-9L)};
                int i;
                p_3219->g_297 = (l_719 = l_718);
                p_64 = &l_507;
                for (p_3219->g_214 = 0; (p_3219->g_214 <= 5); p_3219->g_214 += 1)
                { /* block id: 352 */
                    int8_t l_733 = 1L;
                    int32_t l_737 = 3L;
                    int32_t l_743 = 0x27F2A98FL;
                    int64_t l_745[9];
                    int32_t l_752 = 0x6148A8C9L;
                    int32_t l_753 = 0x500DBC94L;
                    int32_t l_755 = (-8L);
                    int32_t l_756 = 1L;
                    int32_t l_758[7];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_745[i] = 0x1CB06EA7ADF572ADL;
                    for (i = 0; i < 7; i++)
                        l_758[i] = 0L;
                    (1 + 1);
                }
                (*p_3219->g_117) = ((*p_3219->g_122) , (~((void*)0 != &p_3219->g_215)));
            }
        }
        for (l_511 = 0; (l_511 <= (-1)); l_511 = safe_sub_func_uint8_t_u_u(l_511, 1))
        { /* block id: 378 */
            int64_t *l_794 = &p_3219->g_191;
            int64_t *l_795 = (void*)0;
            int64_t *l_796 = (void*)0;
            int64_t *l_797[3];
            int32_t l_801 = 0x585D76F4L;
            int32_t l_828[5][10][2] = {{{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL}},{{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL}},{{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL}},{{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL}},{{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL},{0x36F950C9L,0x3E75B25DL}}};
            struct S0 *l_853 = &p_3219->g_854;
            int32_t *l_910 = &l_320;
            int32_t *l_921[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t *l_923 = &l_515;
            int32_t *l_928 = &l_320;
            int32_t *l_929[10] = {&l_517[0][5],&l_517[0][5],&l_517[0][5],&l_517[0][5],&l_517[0][5],&l_517[0][5],&l_517[0][5],&l_517[0][5],&l_517[0][5],&l_517[0][5]};
            int32_t *l_932 = (void*)0;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_797[i] = (void*)0;
            p_3219->g_778[1][4][0] = p_3219->g_777[4][3][3];
        }
        ++l_934;
        return (*p_3219->g_273);
    }
    return p_64;
}


/* ------------------------------------------ */
/* 
 * reads : p_3219->g_80.f0.f0 p_3219->l_comm_values p_3219->g_33 p_3219->g_96 p_3219->g_98 p_3219->g_122 p_3219->g_124
 * writes: p_3219->g_96 p_3219->g_98 p_3219->g_116 p_3219->g_117 p_3219->g_118 p_3219->g_113 p_3219->g_122
 */
int32_t  func_65(uint64_t  p_66, int64_t  p_67, uint64_t  p_68, struct S4 * p_3219)
{ /* block id: 16 */
    int32_t l_88[9][1] = {{5L},{5L},{5L},{5L},{5L},{5L},{5L},{5L},{5L}};
    int32_t l_107 = 0x65A13A27L;
    union U2 l_110 = {0L};
    uint8_t *l_111 = &p_3219->g_96[4][1];
    int32_t l_112[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int32_t *l_115 = &p_3219->g_98[0][4];
    int32_t **l_114[6] = {&l_115,&l_115,&l_115,&l_115,&l_115,&l_115};
    int32_t l_204 = 0x71F4C7C6L;
    uint32_t l_224 = 0xF6594A5CL;
    struct S0 *l_257[5][9][5] = {{{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0}},{{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0}},{{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0}},{{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0}},{{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0},{(void*)0,&p_3219->g_80.f0,(void*)0,&p_3219->g_80.f0,&p_3219->g_80.f0}}};
    int i, j, k;
lbl_121:
    for (p_66 = 11; (p_66 > 27); ++p_66)
    { /* block id: 19 */
        int32_t l_91[7];
        uint8_t *l_95 = &p_3219->g_96[8][0];
        int32_t *l_97 = &p_3219->g_98[0][4];
        int i;
        for (i = 0; i < 7; i++)
            l_91[i] = 0x7E5D39A1L;
        (*l_97) &= (safe_mul_func_uint8_t_u_u(p_3219->g_80.f0.f0, (safe_div_func_int8_t_s_s((((l_88[0][0] <= GROUP_DIVERGE(1, 1)) && p_67) , p_66), ((*l_95) |= (safe_mod_func_uint32_t_u_u(p_3219->l_comm_values[(safe_mod_func_uint32_t_u_u(p_3219->tid, 76))], ((l_91[5] , l_88[0][0]) ^ (safe_unary_minus_func_int64_t_s((safe_mod_func_uint8_t_u_u(p_3219->g_33[5][2][0], p_67))))))))))));
    }
    p_3219->g_98[1][4] |= ((safe_mul_func_uint8_t_u_u(((l_88[0][0] = (((safe_mul_func_int16_t_s_s(l_88[2][0], ((((safe_sub_func_uint64_t_u_u((l_112[4] = (((safe_mul_func_int8_t_s_s(((l_107 = (p_67 != (l_88[2][0] == p_67))) , (l_107 = (((safe_lshift_func_int8_t_s_u((p_3219->g_33[5][2][0] & 0x44L), (l_110 , 0x3CL))) >= ((l_111 == (void*)0) <= p_3219->l_comm_values[(safe_mod_func_uint32_t_u_u(p_3219->tid, 76))])) > p_3219->l_comm_values[(safe_mod_func_uint32_t_u_u(p_3219->tid, 76))]))), p_68)) <= (-7L)) <= l_110.f0)), p_66)) >= p_3219->l_comm_values[(safe_mod_func_uint32_t_u_u(p_3219->tid, 76))]) , 0xF74BF3BD94EE2437L) , 0xD416L))) & p_66) , p_66)) >= 4UL), p_68)) == p_67);
    p_3219->g_113 = (p_3219->g_118 = (p_3219->g_117 = (p_3219->g_116 = &p_3219->g_33[5][2][0])));
    for (l_110.f0 = (-19); (l_110.f0 != 0); l_110.f0++)
    { /* block id: 34 */
        int32_t l_142 = 0L;
        uint64_t l_160 = 18446744073709551615UL;
        uint32_t l_161 = 1UL;
        int32_t l_166 = (-2L);
        int16_t l_198 = 1L;
        uint16_t *l_213 = &p_3219->g_214;
        int32_t l_232[5][1] = {{0x48995CB6L},{0x48995CB6L},{0x48995CB6L},{0x48995CB6L},{0x48995CB6L}};
        uint16_t l_233 = 65526UL;
        struct S0 *l_242 = &p_3219->g_80.f0;
        int32_t *l_256 = &l_204;
        int i, j;
        if (l_110.f0)
            goto lbl_121;
        for (p_67 = 0; (p_67 >= 0); p_67 -= 1)
        { /* block id: 38 */
            int8_t l_159[3][3][1];
            uint16_t l_162 = 65531UL;
            int32_t l_169[5];
            uint32_t l_205 = 4294967288UL;
            uint32_t l_275 = 0UL;
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_159[i][j][k] = (-1L);
                }
            }
            for (i = 0; i < 5; i++)
                l_169[i] = (-1L);
            for (l_107 = 0; (l_107 >= 0); l_107 -= 1)
            { /* block id: 41 */
                int i, j;
                (*p_3219->g_124) = p_3219->g_122;
                if (l_88[(l_107 + 4)][p_67])
                    continue;
            }
        }
    }
    return (*l_115);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[76];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 76; i++)
            l_comm_values[i] = 1;
    struct S4 c_3220;
    struct S4* p_3219 = &c_3220;
    struct S4 c_3221 = {
        {{{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L}},{{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L}},{{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L}},{{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L}},{{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L}},{{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L}},{{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L}},{{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L}},{{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L},{0x5F7F7777L,0x5F607DBCL,0x78E16D71L,0x5F7F7777L}}}, // p_3219->g_33
        {{0L}}, // p_3219->g_80
        {{250UL,250UL},{250UL,250UL},{250UL,250UL},{250UL,250UL},{250UL,250UL},{250UL,250UL},{250UL,250UL},{250UL,250UL},{250UL,250UL}}, // p_3219->g_96
        {{0x2E31AC30L,7L,0x1A0F2D96L,7L,0x2E31AC30L,0x2E31AC30L,7L},{0x2E31AC30L,7L,0x1A0F2D96L,7L,0x2E31AC30L,0x2E31AC30L,7L},{0x2E31AC30L,7L,0x1A0F2D96L,7L,0x2E31AC30L,0x2E31AC30L,7L},{0x2E31AC30L,7L,0x1A0F2D96L,7L,0x2E31AC30L,0x2E31AC30L,7L},{0x2E31AC30L,7L,0x1A0F2D96L,7L,0x2E31AC30L,0x2E31AC30L,7L},{0x2E31AC30L,7L,0x1A0F2D96L,7L,0x2E31AC30L,0x2E31AC30L,7L}}, // p_3219->g_98
        (void*)0, // p_3219->g_113
        (void*)0, // p_3219->g_116
        (void*)0, // p_3219->g_117
        &p_3219->g_33[5][2][0], // p_3219->g_118
        {7L}, // p_3219->g_123
        &p_3219->g_123, // p_3219->g_122
        &p_3219->g_122, // p_3219->g_124
        {0x37L}, // p_3219->g_137
        1L, // p_3219->g_191
        (-1L), // p_3219->g_197
        0UL, // p_3219->g_201
        65528UL, // p_3219->g_214
        (void*)0, // p_3219->g_215
        {{0x268E0CB7L,0x268E0CB7L,0x268E0CB7L,0x268E0CB7L,0x268E0CB7L},{0x268E0CB7L,0x268E0CB7L,0x268E0CB7L,0x268E0CB7L,0x268E0CB7L},{0x268E0CB7L,0x268E0CB7L,0x268E0CB7L,0x268E0CB7L,0x268E0CB7L},{0x268E0CB7L,0x268E0CB7L,0x268E0CB7L,0x268E0CB7L,0x268E0CB7L}}, // p_3219->g_228
        {{{(-1L),0x349C2E44L,(-1L),(-1L),0x349C2E44L,(-1L),(-1L)}},{{(-1L),0x349C2E44L,(-1L),(-1L),0x349C2E44L,(-1L),(-1L)}},{{(-1L),0x349C2E44L,(-1L),(-1L),0x349C2E44L,(-1L),(-1L)}}}, // p_3219->g_230
        {1L}, // p_3219->g_234
        255UL, // p_3219->g_253
        {0x208611548DDE3644L}, // p_3219->g_254
        &p_3219->g_80.f0, // p_3219->g_262
        &p_3219->g_118, // p_3219->g_273
        {5L}, // p_3219->g_278
        {0x38L}, // p_3219->g_298
        &p_3219->g_298, // p_3219->g_297
        0x196BDB23L, // p_3219->g_316
        0xB148E990L, // p_3219->g_333
        0x2B74BA32L, // p_3219->g_334
        0x0EDCL, // p_3219->g_399
        {4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL}, // p_3219->g_402
        1UL, // p_3219->g_431
        0x11C1A807L, // p_3219->g_435
        {{{0UL,0UL,18446744073709551606UL,18446744073709551615UL,18446744073709551611UL},{0UL,0UL,18446744073709551606UL,18446744073709551615UL,18446744073709551611UL},{0UL,0UL,18446744073709551606UL,18446744073709551615UL,18446744073709551611UL},{0UL,0UL,18446744073709551606UL,18446744073709551615UL,18446744073709551611UL},{0UL,0UL,18446744073709551606UL,18446744073709551615UL,18446744073709551611UL},{0UL,0UL,18446744073709551606UL,18446744073709551615UL,18446744073709551611UL},{0UL,0UL,18446744073709551606UL,18446744073709551615UL,18446744073709551611UL}}}, // p_3219->g_467
        &p_3219->g_98[0][4], // p_3219->g_524
        {1L}, // p_3219->g_548
        {0x5369158A8A831D31L}, // p_3219->g_599
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_3219->g_603
        {{&p_3219->g_603[4],&p_3219->g_603[8],&p_3219->g_603[4],&p_3219->g_603[4],&p_3219->g_603[8],&p_3219->g_603[4],&p_3219->g_603[4],&p_3219->g_603[8],&p_3219->g_603[4]}}, // p_3219->g_602
        &p_3219->g_197, // p_3219->g_618
        (void*)0, // p_3219->g_628
        &p_3219->g_628, // p_3219->g_627
        &p_3219->g_627, // p_3219->g_626
        (void*)0, // p_3219->g_675
        {&p_3219->g_675,&p_3219->g_675,&p_3219->g_675}, // p_3219->g_674
        {0x07L}, // p_3219->g_690
        {{{0x1661806E6C2D0A12L}},{{0x1661806E6C2D0A12L}},{{0x1661806E6C2D0A12L}},{{0x1661806E6C2D0A12L}},{{0x1661806E6C2D0A12L}},{{0x1661806E6C2D0A12L}},{{0x1661806E6C2D0A12L}}}, // p_3219->g_692
        0x5DL, // p_3219->g_705
        {0x70CDB34E83F1B990L}, // p_3219->g_713
        {5L}, // p_3219->g_763
        {{{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}}},{{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}}},{{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}}},{{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}}},{{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}}},{{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}}},{{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}}},{{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}}},{{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}},{{0x754EF7FE9426568AL},{0x5625E8E3C3649DBBL},{-1L},{0x754EF7FE9426568AL}}}}, // p_3219->g_777
        {{{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}}},{{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}},{{-3L},{0x197593F11DC0F9C6L},{-3L},{0x6A5B42C0A5637017L},{0x6FB2817FF82E84C0L},{0x45D35BC3465D3625L},{0x6B4C27233A02AAA1L},{0x2839A6ADEB5B2DFBL},{-1L}}}}, // p_3219->g_778
        {0L}, // p_3219->g_854
        {{{{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL}}},{{{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL}}},{{{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL}}},{{{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL}}},{{{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL}}},{{{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL}}},{{{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL}}},{{{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL}}},{{{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL},{0x51E8557447CE32CBL}}}}, // p_3219->g_856
        &p_3219->g_856[6][0][5], // p_3219->g_855
        0L, // p_3219->g_890
        {{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0},{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0},{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0},{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0},{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0},{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0},{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0},{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0},{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0},{&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0,&p_3219->g_137.f0,&p_3219->g_123.f0,&p_3219->g_123.f0}}, // p_3219->g_914
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_3219->g_913
        {1L}, // p_3219->g_957
        {-1L}, // p_3219->g_960
        0x77L, // p_3219->g_973
        &p_3219->g_333, // p_3219->g_987
        {{5L}}, // p_3219->g_1034
        {0xC882F052L,0xC882F052L}, // p_3219->g_1038
        0xD769L, // p_3219->g_1140
        &p_3219->g_33[5][0][3], // p_3219->g_1171
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_3219->g_1174
        &p_3219->g_1174[3], // p_3219->g_1173
        {0x10L}, // p_3219->g_1186
        {0L}, // p_3219->g_1225
        {{{0x1C84A72B62900C03L},{0x3639339F64EF0F16L},{0x1C84A72B62900C03L},{0x1C84A72B62900C03L},{0x3639339F64EF0F16L},{0x1C84A72B62900C03L},{0x1C84A72B62900C03L},{0x3639339F64EF0F16L},{0x1C84A72B62900C03L}},{{0x1C84A72B62900C03L},{0x3639339F64EF0F16L},{0x1C84A72B62900C03L},{0x1C84A72B62900C03L},{0x3639339F64EF0F16L},{0x1C84A72B62900C03L},{0x1C84A72B62900C03L},{0x3639339F64EF0F16L},{0x1C84A72B62900C03L}},{{0x1C84A72B62900C03L},{0x3639339F64EF0F16L},{0x1C84A72B62900C03L},{0x1C84A72B62900C03L},{0x3639339F64EF0F16L},{0x1C84A72B62900C03L},{0x1C84A72B62900C03L},{0x3639339F64EF0F16L},{0x1C84A72B62900C03L}}}, // p_3219->g_1229
        {{{0x54L},{1L},{0x03L},{1L},{0x54L},{0x54L}},{{0x54L},{1L},{0x03L},{1L},{0x54L},{0x54L}},{{0x54L},{1L},{0x03L},{1L},{0x54L},{0x54L}}}, // p_3219->g_1234
        {{0x283D8D3E21EF06F2L}}, // p_3219->g_1236
        {{0x40EEDD2097DDD6E9L}}, // p_3219->g_1237
        {{{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}}},{{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}}},{{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}}},{{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}}},{{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}},{{{0x5FA81CA4CBA8F59DL}},{{0x54515BDA3E1F510BL}}}}}, // p_3219->g_1253
        {{8L}}, // p_3219->g_1264
        {{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}},{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}},{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}},{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}},{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}},{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}},{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}},{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}},{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}},{{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}},{{5L}}}}, // p_3219->g_1277
        {{0x3EAD77B569193C6FL}}, // p_3219->g_1297
        {{0x63E2DC9887CE4409L},{0x63E2DC9887CE4409L}}, // p_3219->g_1300
        {{-1L}}, // p_3219->g_1301
        {{-1L}}, // p_3219->g_1302
        &p_3219->g_297, // p_3219->g_1325
        &p_3219->g_1325, // p_3219->g_1324
        0x2CDB0C80EE383FF4L, // p_3219->g_1330
        {1L}, // p_3219->g_1359
        {{0x31144896DA7AC58DL}}, // p_3219->g_1396
        {{0x71213F9983BB49DFL}}, // p_3219->g_1409
        (-2L), // p_3219->g_1523
        0x274EDCAFL, // p_3219->g_1540
        {0x76L}, // p_3219->g_1599
        0xA9D518C7L, // p_3219->g_1689
        &p_3219->g_1324, // p_3219->g_1698
        {-5L}, // p_3219->g_1705
        (void*)0, // p_3219->g_1746
        &p_3219->g_1746, // p_3219->g_1745
        &p_3219->g_1745, // p_3219->g_1744
        1L, // p_3219->g_1816
        {0x22435C35ECA4562DL}, // p_3219->g_1867
        {-9L}, // p_3219->g_1899
        0xAF57E05BCBD5E972L, // p_3219->g_1935
        {-1L}, // p_3219->g_1941
        {0x5EL}, // p_3219->g_1959
        {{&p_3219->g_618,&p_3219->g_618,&p_3219->g_618,&p_3219->g_618},{&p_3219->g_618,&p_3219->g_618,&p_3219->g_618,&p_3219->g_618},{&p_3219->g_618,&p_3219->g_618,&p_3219->g_618,&p_3219->g_618},{&p_3219->g_618,&p_3219->g_618,&p_3219->g_618,&p_3219->g_618}}, // p_3219->g_1964
        {{&p_3219->g_1964[3][1]},{&p_3219->g_1964[3][1]},{&p_3219->g_1964[3][1]},{&p_3219->g_1964[3][1]}}, // p_3219->g_1963
        0xD5L, // p_3219->g_1968
        {{-1L}}, // p_3219->g_2036
        &p_3219->g_228[1][4], // p_3219->g_2059
        &p_3219->g_2059, // p_3219->g_2058
        &p_3219->g_1277[3][5].f0.f0, // p_3219->g_2062
        &p_3219->g_2062, // p_3219->g_2061
        (-1L), // p_3219->g_2065
        &p_3219->g_2065, // p_3219->g_2064
        &p_3219->g_2064, // p_3219->g_2063
        {{&p_3219->g_627,&p_3219->g_627,&p_3219->g_627,&p_3219->g_627}}, // p_3219->g_2146
        &p_3219->g_2146[0][3], // p_3219->g_2145
        &p_3219->g_2145, // p_3219->g_2144
        (void*)0, // p_3219->g_2212
        {0L}, // p_3219->g_2248
        {{{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1}},{{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1}},{{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1}},{{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1}},{{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1}},{{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1}},{{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1}},{{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1}},{{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1},{&p_3219->g_890,&p_3219->g_1234[2][2].f0,&p_3219->g_1186.f1}}}, // p_3219->g_2254
        &p_3219->g_2254[7][7][1], // p_3219->g_2253
        {-9L}, // p_3219->g_2263
        {0x6AFCC3A8E8E86E3BL}, // p_3219->g_2269
        {{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}, // p_3219->g_2301
        {0x4F57F8E0E8DC3311L}, // p_3219->g_2313
        (void*)0, // p_3219->g_2355
        &p_3219->g_2355, // p_3219->g_2354
        {{0L}}, // p_3219->g_2357
        {-1L}, // p_3219->g_2362
        {{{0L}},{{0L}},{{0L}},{{0L}},{{0L}},{{0L}},{{0L}}}, // p_3219->g_2363
        &p_3219->g_1186, // p_3219->g_2375
        &p_3219->g_2375, // p_3219->g_2374
        18446744073709551613UL, // p_3219->g_2453
        &p_3219->g_262, // p_3219->g_2481
        {{0x131487DEB37FBDF5L}}, // p_3219->g_2510
        {-1L}, // p_3219->g_2556
        &p_3219->g_215, // p_3219->g_2577
        &p_3219->g_215, // p_3219->g_2582
        {&p_3219->g_2582,&p_3219->g_2582,&p_3219->g_2582,&p_3219->g_2582,&p_3219->g_2582,&p_3219->g_2582,&p_3219->g_2582}, // p_3219->g_2581
        &p_3219->g_2581[0], // p_3219->g_2580
        (void*)0, // p_3219->g_2613
        &p_3219->g_2613, // p_3219->g_2612
        {{{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}}},{{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}}},{{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}}},{{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}}},{{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}}},{{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}},{{{0x4FB649AB0240355CL}},{{0x44B21E13B7863EA4L}},{{0x62BA5A2977BA0AFAL}},{{-1L}},{{5L}},{{-1L}}}}}, // p_3219->g_2651
        &p_3219->g_298, // p_3219->g_2665
        &p_3219->g_1038[0], // p_3219->g_2671
        &p_3219->g_2671, // p_3219->g_2670
        (void*)0, // p_3219->g_2712
        {{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}},{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}},{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}},{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}},{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}},{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}},{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}},{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}},{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}},{{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524},{(void*)0,&p_3219->g_524,(void*)0,(void*)0,&p_3219->g_524}}}, // p_3219->g_2713
        0x84851A39EBB39698L, // p_3219->g_2731
        0L, // p_3219->g_2734
        0xEC16FE4B58F931E0L, // p_3219->g_2736
        {0x2619456E19BE3EC6L}, // p_3219->g_2756
        &p_3219->g_98[1][4], // p_3219->g_2783
        {(-3L),(-3L)}, // p_3219->g_2789
        &p_3219->g_262, // p_3219->g_2806
        {{{&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[0],&p_3219->g_1174[3]}},{{&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[0],&p_3219->g_1174[3]}},{{&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[0],&p_3219->g_1174[3]}},{{&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[0],&p_3219->g_1174[3]}},{{&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[0],&p_3219->g_1174[3]}},{{&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[0],&p_3219->g_1174[3]}},{{&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[0],&p_3219->g_1174[3]}},{{&p_3219->g_1174[3],(void*)0,&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[3],&p_3219->g_1174[0],&p_3219->g_1174[3]}}}, // p_3219->g_2839
        (-1L), // p_3219->g_2880
        {0x6EAB79D4EB936131L}, // p_3219->g_2897
        1UL, // p_3219->g_3013
        {-2L}, // p_3219->g_3058
        {0x57L}, // p_3219->g_3122
        {0x7EL}, // p_3219->g_3143
        {0L}, // p_3219->g_3164
        {-4L}, // p_3219->g_3165
        {&p_3219->g_123,&p_3219->g_123}, // p_3219->g_3182
        (void*)0, // p_3219->g_3190
        {-8L}, // p_3219->g_3217
        {0x0C32A4B8F9B797F1L}, // p_3219->g_3218
        sequence_input[get_global_id(0)], // p_3219->global_0_offset
        sequence_input[get_global_id(1)], // p_3219->global_1_offset
        sequence_input[get_global_id(2)], // p_3219->global_2_offset
        sequence_input[get_local_id(0)], // p_3219->local_0_offset
        sequence_input[get_local_id(1)], // p_3219->local_1_offset
        sequence_input[get_local_id(2)], // p_3219->local_2_offset
        sequence_input[get_group_id(0)], // p_3219->group_0_offset
        sequence_input[get_group_id(1)], // p_3219->group_1_offset
        sequence_input[get_group_id(2)], // p_3219->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 76)), permutations[0][get_linear_local_id()])), // p_3219->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_3220 = c_3221;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_3219);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_3219->g_33[i][j][k], "p_3219->g_33[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_3219->g_80.f0.f0, "p_3219->g_80.f0.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_3219->g_96[i][j], "p_3219->g_96[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_3219->g_98[i][j], "p_3219->g_98[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_3219->g_123.f0, "p_3219->g_123.f0", print_hash_value);
    transparent_crc(p_3219->g_137.f0, "p_3219->g_137.f0", print_hash_value);
    transparent_crc(p_3219->g_191, "p_3219->g_191", print_hash_value);
    transparent_crc(p_3219->g_197, "p_3219->g_197", print_hash_value);
    transparent_crc(p_3219->g_201, "p_3219->g_201", print_hash_value);
    transparent_crc(p_3219->g_214, "p_3219->g_214", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_3219->g_228[i][j], "p_3219->g_228[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_3219->g_230[i][j][k], "p_3219->g_230[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_3219->g_234.f0, "p_3219->g_234.f0", print_hash_value);
    transparent_crc(p_3219->g_253, "p_3219->g_253", print_hash_value);
    transparent_crc(p_3219->g_254.f0, "p_3219->g_254.f0", print_hash_value);
    transparent_crc(p_3219->g_278.f0, "p_3219->g_278.f0", print_hash_value);
    transparent_crc(p_3219->g_298.f0, "p_3219->g_298.f0", print_hash_value);
    transparent_crc(p_3219->g_316, "p_3219->g_316", print_hash_value);
    transparent_crc(p_3219->g_333, "p_3219->g_333", print_hash_value);
    transparent_crc(p_3219->g_334, "p_3219->g_334", print_hash_value);
    transparent_crc(p_3219->g_399, "p_3219->g_399", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_3219->g_402[i], "p_3219->g_402[i]", print_hash_value);

    }
    transparent_crc(p_3219->g_431, "p_3219->g_431", print_hash_value);
    transparent_crc(p_3219->g_435, "p_3219->g_435", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_3219->g_467[i][j][k], "p_3219->g_467[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_3219->g_548.f0, "p_3219->g_548.f0", print_hash_value);
    transparent_crc(p_3219->g_599.f0, "p_3219->g_599.f0", print_hash_value);
    transparent_crc(p_3219->g_690.f0, "p_3219->g_690.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_3219->g_692[i].f0.f0, "p_3219->g_692[i].f0.f0", print_hash_value);

    }
    transparent_crc(p_3219->g_705, "p_3219->g_705", print_hash_value);
    transparent_crc(p_3219->g_713.f0, "p_3219->g_713.f0", print_hash_value);
    transparent_crc(p_3219->g_763.f0, "p_3219->g_763.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_3219->g_777[i][j][k].f0, "p_3219->g_777[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_3219->g_778[i][j][k].f0, "p_3219->g_778[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_3219->g_854.f0, "p_3219->g_854.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_3219->g_856[i][j][k].f0, "p_3219->g_856[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_3219->g_890, "p_3219->g_890", print_hash_value);
    transparent_crc(p_3219->g_957.f0, "p_3219->g_957.f0", print_hash_value);
    transparent_crc(p_3219->g_960.f0, "p_3219->g_960.f0", print_hash_value);
    transparent_crc(p_3219->g_973, "p_3219->g_973", print_hash_value);
    transparent_crc(p_3219->g_1034.f0.f0, "p_3219->g_1034.f0.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_3219->g_1038[i], "p_3219->g_1038[i]", print_hash_value);

    }
    transparent_crc(p_3219->g_1140, "p_3219->g_1140", print_hash_value);
    transparent_crc(p_3219->g_1186.f0, "p_3219->g_1186.f0", print_hash_value);
    transparent_crc(p_3219->g_1225.f0, "p_3219->g_1225.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_3219->g_1229[i][j].f0, "p_3219->g_1229[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_3219->g_1234[i][j].f0, "p_3219->g_1234[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_3219->g_1236.f0.f0, "p_3219->g_1236.f0.f0", print_hash_value);
    transparent_crc(p_3219->g_1237.f0.f0, "p_3219->g_1237.f0.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_3219->g_1253[i][j][k].f0.f0, "p_3219->g_1253[i][j][k].f0.f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_3219->g_1264.f0.f0, "p_3219->g_1264.f0.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_3219->g_1277[i][j].f0.f0, "p_3219->g_1277[i][j].f0.f0", print_hash_value);

        }
    }
    transparent_crc(p_3219->g_1297.f0.f0, "p_3219->g_1297.f0.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_3219->g_1300[i].f0, "p_3219->g_1300[i].f0", print_hash_value);

    }
    transparent_crc(p_3219->g_1301.f0.f0, "p_3219->g_1301.f0.f0", print_hash_value);
    transparent_crc(p_3219->g_1302.f0.f0, "p_3219->g_1302.f0.f0", print_hash_value);
    transparent_crc(p_3219->g_1330, "p_3219->g_1330", print_hash_value);
    transparent_crc(p_3219->g_1359.f0, "p_3219->g_1359.f0", print_hash_value);
    transparent_crc(p_3219->g_1396.f0.f0, "p_3219->g_1396.f0.f0", print_hash_value);
    transparent_crc(p_3219->g_1409.f0.f0, "p_3219->g_1409.f0.f0", print_hash_value);
    transparent_crc(p_3219->g_1523, "p_3219->g_1523", print_hash_value);
    transparent_crc(p_3219->g_1540, "p_3219->g_1540", print_hash_value);
    transparent_crc(p_3219->g_1599.f0, "p_3219->g_1599.f0", print_hash_value);
    transparent_crc(p_3219->g_1689, "p_3219->g_1689", print_hash_value);
    transparent_crc(p_3219->g_1705.f0, "p_3219->g_1705.f0", print_hash_value);
    transparent_crc(p_3219->g_1816, "p_3219->g_1816", print_hash_value);
    transparent_crc(p_3219->g_1867.f0, "p_3219->g_1867.f0", print_hash_value);
    transparent_crc(p_3219->g_1899.f0, "p_3219->g_1899.f0", print_hash_value);
    transparent_crc(p_3219->g_1935, "p_3219->g_1935", print_hash_value);
    transparent_crc(p_3219->g_1941.f0, "p_3219->g_1941.f0", print_hash_value);
    transparent_crc(p_3219->g_1959.f0, "p_3219->g_1959.f0", print_hash_value);
    transparent_crc(p_3219->g_1968, "p_3219->g_1968", print_hash_value);
    transparent_crc(p_3219->g_2036.f0.f0, "p_3219->g_2036.f0.f0", print_hash_value);
    transparent_crc(p_3219->g_2065, "p_3219->g_2065", print_hash_value);
    transparent_crc(p_3219->g_2248.f0, "p_3219->g_2248.f0", print_hash_value);
    transparent_crc(p_3219->g_2263.f0, "p_3219->g_2263.f0", print_hash_value);
    transparent_crc(p_3219->g_2269.f0, "p_3219->g_2269.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_3219->g_2301[i].f0, "p_3219->g_2301[i].f0", print_hash_value);

    }
    transparent_crc(p_3219->g_2313.f0, "p_3219->g_2313.f0", print_hash_value);
    transparent_crc(p_3219->g_2357.f0.f0, "p_3219->g_2357.f0.f0", print_hash_value);
    transparent_crc(p_3219->g_2362.f0, "p_3219->g_2362.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_3219->g_2363[i][j].f0, "p_3219->g_2363[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_3219->g_2453, "p_3219->g_2453", print_hash_value);
    transparent_crc(p_3219->g_2510.f0.f0, "p_3219->g_2510.f0.f0", print_hash_value);
    transparent_crc(p_3219->g_2556.f0, "p_3219->g_2556.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_3219->g_2651[i][j][k].f0.f0, "p_3219->g_2651[i][j][k].f0.f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_3219->g_2731, "p_3219->g_2731", print_hash_value);
    transparent_crc(p_3219->g_2734, "p_3219->g_2734", print_hash_value);
    transparent_crc(p_3219->g_2736, "p_3219->g_2736", print_hash_value);
    transparent_crc(p_3219->g_2756.f0, "p_3219->g_2756.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_3219->g_2789[i], "p_3219->g_2789[i]", print_hash_value);

    }
    transparent_crc(p_3219->g_2880, "p_3219->g_2880", print_hash_value);
    transparent_crc(p_3219->g_2897.f0, "p_3219->g_2897.f0", print_hash_value);
    transparent_crc(p_3219->g_3013, "p_3219->g_3013", print_hash_value);
    transparent_crc(p_3219->g_3058.f0, "p_3219->g_3058.f0", print_hash_value);
    transparent_crc(p_3219->g_3122.f0, "p_3219->g_3122.f0", print_hash_value);
    transparent_crc(p_3219->g_3143.f0, "p_3219->g_3143.f0", print_hash_value);
    transparent_crc(p_3219->g_3164.f0, "p_3219->g_3164.f0", print_hash_value);
    transparent_crc(p_3219->g_3165.f0, "p_3219->g_3165.f0", print_hash_value);
    transparent_crc(p_3219->g_3217.f0, "p_3219->g_3217.f0", print_hash_value);
    transparent_crc(p_3219->g_3218.f0, "p_3219->g_3218.f0", print_hash_value);
    transparent_crc(p_3219->l_comm_values[get_linear_local_id()], "p_3219->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_3219->g_comm_values[get_linear_group_id() * 76 + get_linear_local_id()], "p_3219->g_comm_values[get_linear_group_id() * 76 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
