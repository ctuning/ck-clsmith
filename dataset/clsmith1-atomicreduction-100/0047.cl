// ---atomic_reductions ---fake_divergence -g 16,81,2 -l 2,81,1
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


// Seed: 47

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3[4][4][9];
    int32_t g_4;
    uint32_t g_22;
    int16_t g_66[1][2][4];
    int32_t g_71;
    int32_t * volatile g_70;
    int32_t ** volatile g_73;
    uint64_t g_84;
    uint8_t g_87;
    uint32_t g_104;
    uint32_t *g_103[10][2];
    int32_t g_116;
    int16_t g_136;
    uint8_t g_138;
    int8_t g_141;
    int32_t g_142;
    int32_t *g_154;
    int64_t g_166;
    int64_t *g_165;
    int8_t g_185[4][7];
    int8_t g_189[1];
    volatile uint8_t g_259[7][10];
    volatile uint8_t *g_258;
    volatile uint8_t **g_257;
    volatile uint8_t ** volatile *g_256[8];
    volatile uint8_t ** volatile **g_255;
    volatile int8_t g_274;
    uint16_t g_300[1][3];
    volatile uint16_t g_310;
    uint8_t *g_351[1][3];
    uint8_t **g_350;
    uint8_t ***g_349;
    uint32_t g_380[4];
    int64_t g_401;
    int64_t g_403[3];
    int64_t g_425;
    int32_t ** volatile g_428;
    int32_t ** volatile g_429;
    int32_t ** volatile g_430;
    volatile int64_t g_441;
    int32_t g_442;
    uint16_t g_443;
    int32_t ** volatile g_446;
    uint8_t g_468;
    volatile int32_t g_473;
    volatile int32_t g_476;
    int32_t g_477;
    volatile uint32_t g_478;
    int32_t ** volatile g_533;
    volatile uint16_t g_616;
    uint16_t g_722[2][8][10];
    uint64_t g_734;
    volatile int16_t g_775;
    volatile int16_t *g_774;
    volatile int64_t g_805;
    volatile int64_t g_806;
    volatile int64_t *g_804[9];
    volatile int64_t * volatile *g_803[5];
    int32_t g_828[3][2][6];
    volatile int8_t g_831;
    volatile uint64_t g_832;
    int32_t ** volatile g_885;
    volatile int32_t g_932;
    uint16_t g_933;
    int16_t *g_941;
    int16_t **g_940;
    int32_t ** volatile g_945;
    int32_t ** volatile g_1014;
    int32_t ** volatile g_1064;
    int32_t ** volatile g_1065;
    int64_t **g_1111;
    int32_t g_1142;
    volatile int32_t g_1143;
    volatile int64_t g_1144[1];
    int32_t g_1145;
    int16_t g_1146[3][1][1];
    volatile int32_t g_1147[2];
    int32_t g_1148;
    uint64_t g_1149;
    uint32_t * volatile *g_1184;
    uint32_t * volatile ** volatile g_1183;
    volatile uint16_t g_1191[6];
    uint16_t g_1207;
    int32_t ** volatile g_1208;
    int32_t * volatile g_1252;
    int32_t ** volatile g_1255;
    int32_t *g_1335[4][6][7];
    uint8_t g_1374[10][7][2];
    volatile uint32_t g_1438;
    int32_t ** volatile g_1439;
    int32_t ** volatile g_1440;
    uint32_t g_1493[7];
    int64_t *g_1588;
    int64_t **g_1587;
    uint16_t ***g_1657;
    uint32_t g_1739;
    volatile uint32_t g_1758;
    int32_t g_1828;
    int16_t g_1830;
    uint32_t *g_1867;
    int32_t ** volatile g_1879;
    int32_t ** volatile g_1936;
    int32_t * volatile g_1969;
    int32_t * volatile *g_1968;
    int32_t ** volatile g_2110[8];
    int32_t ** volatile g_2123;
    int64_t g_2181;
    uint32_t g_2233;
    volatile uint32_t g_2248;
    volatile uint64_t **g_2259[3];
    volatile uint8_t g_2262;
    uint64_t g_2304;
    uint16_t g_2344;
    int64_t **g_2351;
    uint32_t **g_2356[3][2][8];
    int64_t * volatile * volatile g_2408;
    int64_t * volatile * volatile *g_2407;
    volatile uint32_t g_2474;
    uint64_t g_2512;
    int32_t g_2574[2][7];
    uint64_t *g_2618[5][4];
    uint64_t **g_2617[10][6];
    uint64_t *** volatile g_2616;
    volatile int64_t g_2639;
    uint64_t g_2651;
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
uint32_t  func_1(struct S0 * p_2673);
int32_t * func_5(uint32_t  p_6, uint32_t  p_7, int64_t  p_8, uint8_t  p_9, int32_t * p_10, struct S0 * p_2673);
uint32_t  func_11(uint64_t  p_12, uint64_t  p_13, int32_t * p_14, uint32_t  p_15, uint64_t  p_16, struct S0 * p_2673);
int64_t  func_28(int32_t * p_29, int32_t * p_30, int32_t * p_31, struct S0 * p_2673);
int32_t * func_32(int32_t * p_33, int8_t  p_34, int32_t  p_35, struct S0 * p_2673);
int32_t * func_36(int32_t  p_37, uint32_t * p_38, int32_t * p_39, struct S0 * p_2673);
uint32_t * func_40(int8_t  p_41, uint32_t * p_42, int16_t  p_43, uint32_t * p_44, struct S0 * p_2673);
uint32_t * func_45(uint32_t * p_46, int32_t * p_47, int32_t * p_48, uint32_t * p_49, int32_t * p_50, struct S0 * p_2673);
int32_t * func_53(uint32_t * p_54, uint64_t  p_55, int32_t * p_56, struct S0 * p_2673);
uint32_t * func_58(int32_t * p_59, int64_t  p_60, int64_t  p_61, int32_t  p_62, struct S0 * p_2673);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2673->g_4 p_2673->g_1867 p_2673->g_1493
 * writes: p_2673->g_4
 */
uint32_t  func_1(struct S0 * p_2673)
{ /* block id: 4 */
    int32_t *l_2 = &p_2673->g_3[3][2][7];
    uint8_t l_17[1];
    int32_t *l_2134 = &p_2673->g_3[0][0][6];
    uint16_t *l_2175 = &p_2673->g_300[0][1];
    uint8_t ****l_2180 = (void*)0;
    int64_t ***l_2196[8][2][2] = {{{(void*)0,&p_2673->g_1587},{(void*)0,&p_2673->g_1587}},{{(void*)0,&p_2673->g_1587},{(void*)0,&p_2673->g_1587}},{{(void*)0,&p_2673->g_1587},{(void*)0,&p_2673->g_1587}},{{(void*)0,&p_2673->g_1587},{(void*)0,&p_2673->g_1587}},{{(void*)0,&p_2673->g_1587},{(void*)0,&p_2673->g_1587}},{{(void*)0,&p_2673->g_1587},{(void*)0,&p_2673->g_1587}},{{(void*)0,&p_2673->g_1587},{(void*)0,&p_2673->g_1587}},{{(void*)0,&p_2673->g_1587},{(void*)0,&p_2673->g_1587}}};
    int8_t l_2242 = 0x5FL;
    int32_t l_2249[7][4][7] = {{{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L}},{{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L}},{{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L}},{{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L}},{{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L}},{{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L}},{{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L},{0x6176E380L,0x67769F70L,0x1DB0B106L,0x09BAE77DL,0x41A0BB31L,0x01993B90L,0x13875562L}}};
    uint64_t l_2291 = 1UL;
    int32_t l_2343[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
    uint32_t **l_2354 = (void*)0;
    uint32_t **l_2366 = &p_2673->g_1867;
    uint16_t l_2371[5][8][4] = {{{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL}},{{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL}},{{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL}},{{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL}},{{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL},{0UL,0xA21FL,1UL,9UL}}};
    int8_t l_2432 = 0x32L;
    uint8_t l_2604 = 0x67L;
    uint16_t ****l_2670 = &p_2673->g_1657;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_17[i] = 0x77L;
    l_2 = l_2;
    for (p_2673->g_4 = 0; (p_2673->g_4 <= 3); p_2673->g_4 += 1)
    { /* block id: 8 */
        int32_t l_18 = 0x35457D67L;
        uint32_t *l_21[9] = {&p_2673->g_22,&p_2673->g_22,&p_2673->g_22,&p_2673->g_22,&p_2673->g_22,&p_2673->g_22,&p_2673->g_22,&p_2673->g_22,&p_2673->g_22};
        uint32_t l_23 = 0UL;
        int32_t **l_1651[5][7] = {{(void*)0,&l_2,&l_2,(void*)0,&l_2,&p_2673->g_154,&p_2673->g_154},{(void*)0,&l_2,&l_2,(void*)0,&l_2,&p_2673->g_154,&p_2673->g_154},{(void*)0,&l_2,&l_2,(void*)0,&l_2,&p_2673->g_154,&p_2673->g_154},{(void*)0,&l_2,&l_2,(void*)0,&l_2,&p_2673->g_154,&p_2673->g_154},{(void*)0,&l_2,&l_2,(void*)0,&l_2,&p_2673->g_154,&p_2673->g_154}};
        uint32_t l_2132 = 4294967295UL;
        uint8_t l_2133 = 0x4AL;
        uint16_t *l_2173 = &p_2673->g_443;
        int64_t *l_2179 = &p_2673->g_166;
        int64_t *l_2203 = &p_2673->g_2181;
        int32_t l_2210 = 0L;
        int64_t **l_2268[8] = {&p_2673->g_1588,&p_2673->g_1588,&p_2673->g_1588,&p_2673->g_1588,&p_2673->g_1588,&p_2673->g_1588,&p_2673->g_1588,&p_2673->g_1588};
        int32_t *l_2300 = &p_2673->g_477;
        int32_t l_2320 = 1L;
        uint16_t l_2322[10][9][2] = {{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}},{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}},{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}},{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}},{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}},{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}},{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}},{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}},{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}},{{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L},{65535UL,0xB360L}}};
        uint32_t *l_2345 = &p_2673->g_22;
        int32_t l_2372[5];
        uint64_t *l_2411 = (void*)0;
        int64_t ***l_2412 = &p_2673->g_1111;
        int8_t *l_2438 = &p_2673->g_189[0];
        int32_t *l_2448 = &p_2673->g_3[1][2][0];
        int32_t l_2488 = 0x31E5470AL;
        uint8_t l_2507 = 0UL;
        int32_t l_2530[4];
        int8_t l_2535 = 0x23L;
        int32_t l_2537 = 0L;
        uint64_t l_2569 = 18446744073709551615UL;
        int16_t l_2650[3];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_2372[i] = 0L;
        for (i = 0; i < 4; i++)
            l_2530[i] = 6L;
        for (i = 0; i < 3; i++)
            l_2650[i] = 0x3B5BL;
        (1 + 1);
    }
    return (*p_2673->g_1867);
}


/* ------------------------------------------ */
/* 
 * reads : p_2673->g_1828 p_2673->g_734 p_2673->g_774 p_2673->g_775 p_2673->g_442 p_2673->g_1146 p_2673->g_138 p_2673->g_3 p_2673->g_165 p_2673->g_71 p_2673->g_1207 p_2673->g_255 p_2673->g_256 p_2673->g_257 p_2673->g_258 p_2673->g_259 p_2673->g_1065 p_2673->g_154
 * writes: p_2673->g_1828 p_2673->g_1335 p_2673->g_734 p_2673->g_166 p_2673->g_71 p_2673->g_1207 p_2673->g_3
 */
int32_t * func_5(uint32_t  p_6, uint32_t  p_7, int64_t  p_8, uint8_t  p_9, int32_t * p_10, struct S0 * p_2673)
{ /* block id: 1042 */
    int8_t l_2143 = 0x58L;
    int16_t l_2144[5] = {0x1245L,0x1245L,0x1245L,0x1245L,0x1245L};
    int32_t **l_2158[7];
    int32_t ***l_2157 = &l_2158[3];
    int i;
    for (i = 0; i < 7; i++)
        l_2158[i] = &p_2673->g_154;
    for (p_2673->g_1828 = 6; (p_2673->g_1828 >= 1); p_2673->g_1828 -= 1)
    { /* block id: 1045 */
        int32_t **l_2135 = &p_2673->g_1335[2][3][4];
        uint64_t *l_2136 = &p_2673->g_734;
        int64_t l_2151 = 9L;
        int32_t *l_2156 = &p_2673->g_71;
        uint8_t l_2164 = 5UL;
        (*l_2135) = (void*)0;
        (*l_2156) |= (((*l_2136) |= 0x265AB3E90A624CDBL) || ((*p_2673->g_165) = (safe_sub_func_uint32_t_u_u(((safe_sub_func_int64_t_s_s(0L, ((safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (l_2143 = (*p_2673->g_774)))) > (-2L)))) != (l_2144[2] ^ ((safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((safe_div_func_int64_t_s_s(p_6, l_2151)) ^ (p_2673->g_442 , (safe_lshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(p_2673->g_1146[0][0][0], p_7)), 8)))), p_9)), p_2673->g_138)) || p_7))), (*p_10)))));
        (*l_2156) ^= (l_2157 == &l_2158[3]);
        for (p_7 = 0; (p_7 <= 8); p_7 += 1)
        { /* block id: 1054 */
            int8_t l_2159 = 0x33L;
            int i;
            (*l_2156) = ((*p_10) | (l_2159 != (~((p_2673->g_1207 ^= ((*l_2156) , 0xDC06L)) , (p_6 , ((((((-9L) || ((safe_sub_func_uint32_t_u_u(((((((safe_mul_func_uint8_t_u_u(((****p_2673->g_255) != p_6), (p_2673->g_1146[0][0][0] > GROUP_DIVERGE(0, 1)))) == p_7) == p_8) > l_2159) | (*p_10)) || l_2164), (*p_10))) ^ l_2159)) | GROUP_DIVERGE(2, 1)) < p_2673->g_138) && 1UL) && l_2159))))));
            return (*p_2673->g_1065);
        }
    }
    (*p_10) = 4L;
    return (**l_2157);
}


/* ------------------------------------------ */
/* 
 * reads : p_2673->g_22 p_2673->g_380 p_2673->g_259 p_2673->g_1111 p_2673->g_165 p_2673->g_166 p_2673->g_941 p_2673->g_71 p_2673->g_803 p_2673->g_1588 p_2673->g_136 p_2673->g_933 p_2673->g_274 p_2673->g_1438 p_2673->g_1142 p_2673->g_1867 p_2673->g_1493 p_2673->g_774 p_2673->g_775 p_2673->g_1208 p_2673->g_255 p_2673->g_256 p_2673->g_257 p_2673->g_258 p_2673->g_3 p_2673->g_2123 p_2673->g_1830
 * writes: p_2673->g_71 p_2673->g_22 p_2673->g_933 p_2673->g_380 p_2673->g_136 p_2673->g_1830 p_2673->g_1142 p_2673->g_1587 p_2673->g_425 p_2673->g_1335 p_2673->g_154
 */
uint32_t  func_11(uint64_t  p_12, uint64_t  p_13, int32_t * p_14, uint32_t  p_15, uint64_t  p_16, struct S0 * p_2673)
{ /* block id: 808 */
    int64_t **l_1654 = &p_2673->g_1588;
    int32_t l_1660 = 0x77818DAEL;
    int16_t **l_1688 = &p_2673->g_941;
    int32_t l_1714 = 2L;
    int32_t l_1715 = 9L;
    int32_t l_1725 = 0L;
    int32_t l_1728 = 0x5661E651L;
    int32_t l_1730[3];
    int32_t l_1732[4][2] = {{0x6C52EE14L,0x6C52EE14L},{0x6C52EE14L,0x6C52EE14L},{0x6C52EE14L,0x6C52EE14L},{0x6C52EE14L,0x6C52EE14L}};
    int8_t l_1795[6][9][4] = {{{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)}},{{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)}},{{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)}},{{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)}},{{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)}},{{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)},{0x1EL,0x3AL,0x59L,(-1L)}}};
    uint32_t l_1796[6];
    int16_t l_1825[5][10][5] = {{{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL}},{{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL}},{{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL}},{{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL}},{{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL},{0x3A6EL,0x7F84L,(-1L),1L,0x2A0CL}}};
    int64_t l_1858 = (-5L);
    uint16_t *l_1874 = &p_2673->g_933;
    uint16_t **l_1873 = &l_1874;
    uint16_t ***l_1872 = &l_1873;
    uint64_t l_2002 = 0x132AB8FC681AB94CL;
    int32_t l_2005 = 0x36DEF112L;
    uint64_t l_2042 = 0xCD66D564E12A63B5L;
    uint8_t ****l_2081[1];
    uint8_t l_2105 = 255UL;
    int32_t *l_2111 = &l_1730[2];
    int32_t *l_2124 = &l_1728;
    int32_t *l_2125 = &l_2005;
    int32_t *l_2126 = &l_1660;
    int32_t *l_2127 = &p_2673->g_3[3][2][7];
    int32_t *l_2128[8] = {&l_1725,&l_1725,&l_1725,&l_1725,&l_1725,&l_1725,&l_1725,&l_1725};
    uint8_t l_2129 = 1UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1730[i] = 0x0873B36CL;
    for (i = 0; i < 6; i++)
        l_1796[i] = 4294967288UL;
    for (i = 0; i < 1; i++)
        l_2081[i] = (void*)0;
lbl_2032:
    for (p_12 = 0; (p_12 <= 3); p_12 += 1)
    { /* block id: 811 */
        uint16_t ****l_1658 = &p_2673->g_1657;
        uint16_t ***l_1659 = (void*)0;
        uint16_t *l_1661 = &p_2673->g_443;
        int32_t l_1662 = (-1L);
        uint32_t l_1663 = 0x583A7FE6L;
        uint32_t l_1685 = 0x25CFDA2AL;
        int32_t l_1726 = 0x7D2A2996L;
        int32_t l_1729 = 0x19070660L;
        int32_t l_1731 = 0x7B4F4BF3L;
        int32_t l_1733 = (-2L);
        int32_t l_1735 = (-1L);
        uint32_t l_1776[4];
        int64_t l_1826[8] = {8L,8L,8L,8L,8L,8L,8L,8L};
        uint32_t *l_1866[3][4] = {{&l_1685,&l_1685,&l_1685,&l_1685},{&l_1685,&l_1685,&l_1685,&l_1685},{&l_1685,&l_1685,&l_1685,&l_1685}};
        uint32_t **l_1865[5][9] = {{&l_1866[1][0],&l_1866[1][0],(void*)0,&l_1866[1][0],&l_1866[1][3],(void*)0,&l_1866[1][0],&l_1866[1][0],&l_1866[1][0]},{&l_1866[1][0],&l_1866[1][0],(void*)0,&l_1866[1][0],&l_1866[1][3],(void*)0,&l_1866[1][0],&l_1866[1][0],&l_1866[1][0]},{&l_1866[1][0],&l_1866[1][0],(void*)0,&l_1866[1][0],&l_1866[1][3],(void*)0,&l_1866[1][0],&l_1866[1][0],&l_1866[1][0]},{&l_1866[1][0],&l_1866[1][0],(void*)0,&l_1866[1][0],&l_1866[1][3],(void*)0,&l_1866[1][0],&l_1866[1][0],&l_1866[1][0]},{&l_1866[1][0],&l_1866[1][0],(void*)0,&l_1866[1][0],&l_1866[1][3],(void*)0,&l_1866[1][0],&l_1866[1][0],&l_1866[1][0]}};
        uint32_t *l_1868 = &l_1796[1];
        uint32_t *l_1869[5];
        int8_t *l_1875[3];
        uint64_t l_1900 = 1UL;
        int32_t l_1947 = 0x0FD78E62L;
        int32_t l_1949 = 0x0279BB53L;
        int32_t l_1950 = 0x28B017CDL;
        int32_t l_1951 = (-8L);
        int32_t l_1953 = 0x6958DF78L;
        int32_t l_1955 = 0x3626EF75L;
        int32_t *l_1959 = (void*)0;
        uint32_t l_1984 = 0x265B7A5BL;
        int i, j;
        for (i = 0; i < 4; i++)
            l_1776[i] = 1UL;
        for (i = 0; i < 5; i++)
            l_1869[i] = &l_1776[1];
        for (i = 0; i < 3; i++)
            l_1875[i] = &l_1795[5][3][2];
        (1 + 1);
    }
    for (p_2673->g_71 = 0; (p_2673->g_71 < 22); p_2673->g_71 = safe_add_func_uint32_t_u_u(p_2673->g_71, 6))
    { /* block id: 967 */
        int32_t l_1997[10] = {0x59A38A5CL,0L,0x36923534L,0L,0x59A38A5CL,0x59A38A5CL,0L,0x36923534L,0L,0x59A38A5CL};
        uint32_t l_2006 = 0x8F11817FL;
        int32_t *l_2009 = &l_1725;
        int16_t l_2019[5] = {(-9L),(-9L),(-9L),(-9L),(-9L)};
        uint32_t *l_2020 = &p_2673->g_380[2];
        uint64_t *l_2029 = &l_2002;
        int16_t l_2030 = 0x7E18L;
        uint64_t l_2031 = 0x59D1028B8CE14F07L;
        int i;
        for (p_13 = 19; (p_13 != 8); p_13 = safe_sub_func_uint32_t_u_u(p_13, 2))
        { /* block id: 970 */
            int32_t *l_1991 = &l_1732[3][1];
            int32_t *l_1992 = (void*)0;
            int32_t *l_1993 = &l_1728;
            int32_t *l_1994 = &l_1725;
            int32_t *l_1995 = (void*)0;
            int32_t l_1996 = 0x7F09AF85L;
            int32_t *l_1998 = &l_1715;
            int32_t l_1999[7][3][9] = {{{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL}},{{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL}},{{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL}},{{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL}},{{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL}},{{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL}},{{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL},{0x6E30AFA4L,0x5BAD1D16L,0x375D0292L,0x213D5692L,(-7L),1L,(-2L),4L,0x3EE6F32DL}}};
            int32_t *l_2000 = &l_1999[4][2][5];
            int32_t *l_2001[5][9] = {{&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71},{&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71},{&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71},{&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71},{&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71,&p_2673->g_71,&l_1997[6],&p_2673->g_71}};
            int i, j, k;
            l_2002++;
            --l_2006;
        }
        (*p_14) = (-3L);
        (*l_2009) |= (*p_14);
        l_2031 |= (((**l_1688) = (safe_mul_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_u((safe_unary_minus_func_uint64_t_u((l_1654 != ((safe_add_func_int8_t_s_s((((***l_1872) = 0x98E1L) , ((safe_add_func_int8_t_s_s((((++(*l_2020)) , p_15) & p_2673->g_259[4][0]), (safe_rshift_func_uint16_t_u_s(((*l_1874) = (+(p_15 || (safe_lshift_func_int8_t_s_s(p_13, ((*l_2009) | ((&p_2673->g_165 == ((((((safe_add_func_uint8_t_u_u((((*l_2029) = (l_1858 != p_15)) < (**p_2673->g_1111)), (*l_2009))) >= 0x01371616119D1686L) <= (*l_2009)) >= p_13) , (*l_2009)) , &p_2673->g_165)) != (*l_2009)))))))), 13)))) , 2L)), (*l_2009))) , &p_2673->g_1588)))), l_2030)) , FAKE_DIVERGE(p_2673->local_0_offset, get_local_id(0), 10)) & (*p_14)), 0x6EBDL))) >= l_1825[4][1][2]);
    }
    for (p_2673->g_1830 = 0; (p_2673->g_1830 <= 4); p_2673->g_1830 += 1)
    { /* block id: 985 */
        uint32_t l_2037 = 4UL;
        uint8_t ****l_2080 = &p_2673->g_349;
        uint8_t ****l_2082 = &p_2673->g_349;
        int32_t l_2089 = 7L;
        int8_t *l_2121 = (void*)0;
        int32_t **l_2122 = (void*)0;
        if ((*p_14))
        { /* block id: 986 */
            int8_t l_2036 = 0x3AL;
            int32_t l_2059 = 1L;
            int32_t l_2060[4];
            int i;
            for (i = 0; i < 4; i++)
                l_2060[i] = 0x0CFC8885L;
            if (l_1725)
                goto lbl_2032;
            for (p_2673->g_71 = 4; (p_2673->g_71 >= 0); p_2673->g_71 -= 1)
            { /* block id: 990 */
                int32_t *l_2033 = &l_2005;
                int32_t *l_2034 = &l_1660;
                int32_t *l_2035[5][8][6] = {{{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142}},{{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142}},{{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142}},{{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142}},{{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142},{&l_1730[0],&l_2005,&l_1728,(void*)0,&l_1732[2][0],&p_2673->g_142}}};
                int32_t l_2040 = (-1L);
                int i, j, k;
                ++l_2037;
                for (l_2005 = 1; (l_2005 <= 4); l_2005 += 1)
                { /* block id: 994 */
                    uint64_t l_2071 = 0xC42CF0D4D4E391DBL;
                    for (p_2673->g_1142 = 0; (p_2673->g_1142 <= 4); p_2673->g_1142 += 1)
                    { /* block id: 997 */
                        int32_t l_2041 = 0x2548CB0BL;
                        uint32_t *l_2061 = &p_2673->g_380[3];
                        int64_t **l_2064 = &p_2673->g_1588;
                        int64_t ***l_2065 = (void*)0;
                        int64_t ***l_2066 = &l_1654;
                        int i;
                        atomic_add(&p_2673->g_atomic_reduction[get_linear_group_id()], l_2036);
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_2673->v_collective += p_2673->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        l_2042--;
                        l_1730[1] &= (safe_lshift_func_int16_t_s_u(((safe_lshift_func_uint8_t_u_s((p_15 != (safe_rshift_func_int8_t_s_s((((safe_sub_func_int16_t_s_s((safe_div_func_int8_t_s_s((((safe_add_func_int8_t_s_s(((l_1715 = (*p_14)) ^ (++(*l_2061))), (*l_2034))) || (((*l_2066) = (p_2673->g_1587 = l_2064)) == p_2673->g_803[p_2673->g_71])) >= (safe_sub_func_uint64_t_u_u(((*p_14) < (((((+((*p_2673->g_1588) = 0L)) , (*p_2673->g_941)) & ((***l_1872) ^= (safe_add_func_uint16_t_u_u((GROUP_DIVERGE(2, 1) == l_2037), l_2071)))) && l_2041) & GROUP_DIVERGE(2, 1))), (*p_2673->g_165)))), (*l_2034))), 1L)) > l_2041) || p_13), p_2673->g_274))), 3)) > GROUP_DIVERGE(1, 1)), 12));
                    }
                }
                if (l_2036)
                    break;
            }
            (*p_14) = (*p_14);
            l_1728 = (*p_14);
        }
        else
        { /* block id: 1013 */
            int16_t l_2078 = 0L;
            uint32_t l_2079 = 0x73B18B23L;
            uint32_t *l_2088[9] = {&p_2673->g_104,(void*)0,&p_2673->g_104,&p_2673->g_104,(void*)0,&p_2673->g_104,&p_2673->g_104,(void*)0,&p_2673->g_104};
            int32_t *l_2092 = &l_1732[1][1];
            uint64_t *l_2101 = (void*)0;
            uint8_t *l_2120 = (void*)0;
            int i;
            if ((safe_div_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u(l_2078, (((*l_2092) ^= (l_2079 > ((((l_2080 == (l_2082 = l_2081[0])) , l_2037) & (safe_mod_func_int8_t_s_s(((((safe_mul_func_int8_t_s_s((safe_unary_minus_func_uint32_t_u((l_2089 |= (p_15 = l_2037)))), ((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2673->global_1_offset, get_global_id(1), 10), p_12)) & (*p_14)))) | 4294967295UL) ^ p_2673->g_1438) == l_2079), l_1730[2]))) ^ p_13))) & p_16))) & p_2673->g_1142), 0x7B7188FE5382DD0AL)), (**p_2673->g_1111))))
            { /* block id: 1018 */
                int32_t **l_2093 = (void*)0;
                int32_t **l_2094 = &p_2673->g_1335[3][2][4];
                (*l_2094) = p_14;
                return (*p_2673->g_1867);
            }
            else
            { /* block id: 1021 */
                uint64_t **l_2102[2][1];
                int32_t *l_2107[3];
                int32_t **l_2106 = &l_2107[1];
                int32_t *l_2109 = &p_2673->g_116;
                int32_t **l_2108 = &l_2109;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_2102[i][j] = (void*)0;
                }
                for (i = 0; i < 3; i++)
                    l_2107[i] = (void*)0;
                (*p_14) = (((safe_mod_func_int16_t_s_s((*p_2673->g_774), (safe_lshift_func_int16_t_s_u(l_2089, 9)))) <= p_16) ^ ((p_12 > 0x3A88L) ^ (((&p_16 == (l_2101 = l_2101)) ^ (safe_lshift_func_int16_t_s_s(l_2105, 0))) <= ((**l_1688) = (((*l_2108) = ((*l_2106) = p_14)) == (void*)0)))));
                if ((*l_2092))
                    continue;
            }
            for (l_2005 = 4; (l_2005 >= 0); l_2005 -= 1)
            { /* block id: 1031 */
                l_2111 = ((*p_2673->g_1208) = (void*)0);
            }
            (*l_2092) = (((safe_sub_func_int8_t_s_s(((((((safe_rshift_func_uint16_t_u_u(((+((safe_rshift_func_int8_t_s_u(((safe_sub_func_uint32_t_u_u((((1UL >= 0x02ACCF28L) , ((*l_2092) >= ((****p_2673->g_255) != ((p_13 < (((void*)0 == l_2120) | p_12)) , ((void*)0 != l_2121))))) || 0L), p_15)) < p_16), p_16)) && p_2673->g_3[1][3][3])) , (*l_2092)), 4)) ^ 1L) < 0L) , l_2037) , p_16) != (**p_2673->g_1111)), p_15)) , &l_2088[6]) == &l_2088[4]);
            (*l_2092) = l_2089;
        }
        (*p_2673->g_2123) = p_14;
    }
    l_2129--;
    return (*p_2673->g_1867);
}


/* ------------------------------------------ */
/* 
 * reads : p_2673->g_1145 p_2673->g_165 p_2673->g_166
 * writes: p_2673->g_1145
 */
int64_t  func_28(int32_t * p_29, int32_t * p_30, int32_t * p_31, struct S0 * p_2673)
{ /* block id: 672 */
    int8_t l_1424 = 1L;
    int32_t l_1431 = 0x4835FFF4L;
    int64_t **l_1465[5][2] = {{&p_2673->g_165,(void*)0},{&p_2673->g_165,(void*)0},{&p_2673->g_165,(void*)0},{&p_2673->g_165,(void*)0},{&p_2673->g_165,(void*)0}};
    int32_t **l_1486[7][2] = {{&p_2673->g_154,&p_2673->g_154},{&p_2673->g_154,&p_2673->g_154},{&p_2673->g_154,&p_2673->g_154},{&p_2673->g_154,&p_2673->g_154},{&p_2673->g_154,&p_2673->g_154},{&p_2673->g_154,&p_2673->g_154},{&p_2673->g_154,&p_2673->g_154}};
    uint16_t *l_1498 = &p_2673->g_722[1][7][8];
    int16_t **l_1565 = &p_2673->g_941;
    uint8_t l_1647 = 0UL;
    uint64_t l_1648 = 0x30F9FD7748D262C4L;
    uint32_t l_1649 = 0x64D521C3L;
    int i, j;
    for (p_2673->g_1145 = 0; (p_2673->g_1145 > 1); p_2673->g_1145 = safe_add_func_int16_t_s_s(p_2673->g_1145, 1))
    { /* block id: 675 */
        int64_t l_1434 = 0L;
        uint32_t **l_1458 = &p_2673->g_103[0][0];
        uint32_t ***l_1457 = &l_1458;
        int32_t *l_1504 = &p_2673->g_71;
        int32_t l_1527 = 0x584E1C16L;
        int32_t l_1528 = 0x3FF69246L;
        int32_t l_1530 = (-10L);
        int32_t l_1532[10] = {1L,0x7B19C751L,0x5FEE0E64L,0x7B19C751L,1L,1L,0x7B19C751L,0x5FEE0E64L,0x7B19C751L,1L};
        int16_t **l_1564 = &p_2673->g_941;
        uint32_t l_1566 = 0xC227808DL;
        int32_t *l_1601 = &l_1532[6];
        uint32_t *l_1650 = &p_2673->g_380[3];
        int i;
        (1 + 1);
    }
    return (*p_2673->g_165);
}


/* ------------------------------------------ */
/* 
 * reads : p_2673->g_116 p_2673->g_84 p_2673->g_380 p_2673->g_932 p_2673->g_154 p_2673->g_22 p_2673->g_142 p_2673->g_4 p_2673->g_71 p_2673->g_104 p_2673->g_941 p_2673->g_66 p_2673->g_1065 p_2673->g_425 p_2673->g_945 p_2673->g_1374 p_2673->g_403 p_2673->g_70
 * writes: p_2673->g_116 p_2673->g_84 p_2673->g_136 p_2673->g_154 p_2673->g_425 p_2673->g_71 p_2673->g_22
 */
int32_t * func_32(int32_t * p_33, int8_t  p_34, int32_t  p_35, struct S0 * p_2673)
{ /* block id: 556 */
    uint32_t **l_1247 = &p_2673->g_103[7][1];
    int32_t l_1250 = 0x5EDB0114L;
    int32_t l_1267[1][4][9] = {{{0x7CBEF317L,(-1L),5L,0x48644BBEL,(-1L),0x48644BBEL,5L,(-1L),0x7CBEF317L},{0x7CBEF317L,(-1L),5L,0x48644BBEL,(-1L),0x48644BBEL,5L,(-1L),0x7CBEF317L},{0x7CBEF317L,(-1L),5L,0x48644BBEL,(-1L),0x48644BBEL,5L,(-1L),0x7CBEF317L},{0x7CBEF317L,(-1L),5L,0x48644BBEL,(-1L),0x48644BBEL,5L,(-1L),0x7CBEF317L}}};
    uint64_t l_1275 = 0x8240DDFBFCABCC66L;
    int16_t **l_1327 = (void*)0;
    int32_t **l_1364 = &p_2673->g_154;
    int32_t ***l_1363 = &l_1364;
    int i, j, k;
    for (p_2673->g_116 = 0; (p_2673->g_116 <= 4); p_2673->g_116 += 1)
    { /* block id: 559 */
        uint32_t ***l_1251 = &l_1247;
        int32_t l_1260 = 0x72A59C8DL;
        int32_t l_1268 = 0x41000C63L;
        int32_t l_1269 = (-1L);
        int32_t l_1270 = 0x5C0EE420L;
        int32_t l_1271 = (-5L);
        int32_t l_1272 = 5L;
        int32_t l_1273 = 0x27DF3830L;
        int32_t l_1274[8][10][2] = {{{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL}},{{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL}},{{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL}},{{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL}},{{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL}},{{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL}},{{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL}},{{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL},{0x2D544C0FL,0x2D544C0FL}}};
        int64_t *l_1294 = (void*)0;
        uint8_t l_1350 = 0x60L;
        int32_t *l_1352[9] = {&l_1250,&p_2673->g_4,&l_1250,&l_1250,&p_2673->g_4,&l_1250,&l_1250,&p_2673->g_4,&l_1250};
        int32_t **l_1362[5];
        int32_t ***l_1361[8][2][4] = {{{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]},{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]}},{{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]},{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]}},{{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]},{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]}},{{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]},{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]}},{{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]},{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]}},{{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]},{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]}},{{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]},{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]}},{{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]},{&l_1362[3],&l_1362[2],(void*)0,&l_1362[2]}}};
        int64_t **l_1381 = &l_1294;
        uint32_t *l_1410 = &p_2673->g_380[2];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1362[i] = (void*)0;
        for (p_34 = 3; (p_34 >= 0); p_34 -= 1)
        { /* block id: 562 */
            int32_t *l_1262 = (void*)0;
            int32_t **l_1261[1];
            uint16_t *l_1326 = &p_2673->g_933;
            int16_t **l_1373[6];
            int i;
            for (i = 0; i < 1; i++)
                l_1261[i] = &l_1262;
            for (i = 0; i < 6; i++)
                l_1373[i] = (void*)0;
            for (p_2673->g_84 = 0; (p_2673->g_84 <= 3); p_2673->g_84 += 1)
            { /* block id: 565 */
                uint32_t **l_1248 = &p_2673->g_103[0][0];
                int32_t *l_1254 = &p_2673->g_142;
                int i;
                if (p_2673->g_380[p_2673->g_84])
                    break;
            }
            atomic_min(&p_2673->l_atomic_reduction[0], (safe_sub_func_uint64_t_u_u(((p_2673->g_380[p_34] & p_34) < (safe_add_func_int8_t_s_s(p_2673->g_932, l_1260))), ((*p_2673->g_154) > (p_35 > (((p_33 = &p_2673->g_142) != &p_2673->g_142) <= ((safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_u((((*p_2673->g_941) = p_34) & l_1250), p_2673->g_66[0][0][1])), 15)) , l_1260)))))) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_2673->v_collective += p_2673->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            --l_1275;
        }
        (**l_1363) = (void*)0;
        p_33 = (*p_2673->g_1065);
        for (p_2673->g_425 = 0; (p_2673->g_425 <= 0); p_2673->g_425 += 1)
        { /* block id: 653 */
            int32_t l_1375 = (-6L);
            int64_t ***l_1380[3][4][9] = {{{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111},{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111},{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111},{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111}},{{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111},{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111},{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111},{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111}},{{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111},{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111},{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111},{&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111,&p_2673->g_1111}}};
            int32_t l_1404 = (-8L);
            int32_t l_1405 = 0x72AF03B5L;
            uint32_t *l_1406 = (void*)0;
            uint32_t *l_1407 = &p_2673->g_22;
            int8_t *l_1408 = &p_2673->g_189[0];
            int8_t *l_1409 = &p_2673->g_141;
            int i, j, k;
            p_33 = (*p_2673->g_945);
            l_1375 = p_2673->g_1374[9][4][1];
            (*l_1364) = func_58(p_33, p_35, p_34, p_2673->g_403[2], p_2673);
            if (l_1405)
                break;
            for (l_1250 = 0; (l_1250 <= 4); l_1250 += 1)
            { /* block id: 666 */
                int i, j, k;
                (***l_1363) = p_2673->g_66[p_2673->g_425][p_2673->g_425][(p_2673->g_425 + 2)];
            }
        }
    }
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_2673->g_116 p_2673->g_442 p_2673->g_71
 * writes: p_2673->g_116 p_2673->g_71
 */
int32_t * func_36(int32_t  p_37, uint32_t * p_38, int32_t * p_39, struct S0 * p_2673)
{ /* block id: 545 */
    int32_t *l_1228 = &p_2673->g_71;
    int32_t *l_1229 = &p_2673->g_71;
    int32_t *l_1230 = &p_2673->g_3[0][2][5];
    int32_t *l_1231 = &p_2673->g_3[0][1][3];
    int32_t *l_1232 = (void*)0;
    int32_t *l_1233[1];
    int8_t l_1234 = 9L;
    int32_t l_1235 = 0x55194A30L;
    uint16_t l_1236[7] = {0xAB8EL,1UL,0xAB8EL,0xAB8EL,1UL,0xAB8EL,0xAB8EL};
    int32_t l_1239 = 0x77E38235L;
    int64_t l_1240 = 0L;
    uint64_t l_1241 = 0xD7C3F3C516921CDCL;
    int i;
    for (i = 0; i < 1; i++)
        l_1233[i] = &p_2673->g_3[2][0][7];
lbl_1246:
    l_1236[4]--;
    l_1241++;
    for (p_2673->g_116 = 0; (p_2673->g_116 > 16); p_2673->g_116 = safe_add_func_int8_t_s_s(p_2673->g_116, 4))
    { /* block id: 550 */
        if (l_1241)
            goto lbl_1246;
        (*l_1229) |= (0x7453L ^ p_2673->g_442);
        return p_38;
    }
    return l_1228;
}


/* ------------------------------------------ */
/* 
 * reads : p_2673->g_22 p_2673->g_933 p_2673->g_828 p_2673->g_446 p_2673->g_154 p_2673->g_142 p_2673->g_945 p_2673->g_104 p_2673->g_3 p_2673->g_380 p_2673->g_138 p_2673->g_165 p_2673->g_166 p_2673->g_349 p_2673->g_350 p_2673->g_259 p_2673->g_116 p_2673->g_468 p_2673->g_189 p_2673->g_477 p_2673->g_940 p_2673->g_443 p_2673->g_258 p_2673->g_734 p_2673->g_70 p_2673->g_255 p_2673->g_256 p_2673->g_103 p_2673->g_66 p_2673->g_430 p_2673->g_4 p_2673->g_71 p_2673->g_1014 p_2673->g_403 p_2673->g_84 p_2673->g_257 p_2673->g_533 p_2673->g_1065 p_2673->g_442 p_2673->g_932 p_2673->g_1149 p_2673->g_774 p_2673->g_775 p_2673->g_1111 p_2673->g_1183 p_2673->g_401 p_2673->g_1191 p_2673->g_1145 p_2673->g_1208
 * writes: p_2673->g_22 p_2673->g_933 p_2673->g_940 p_2673->g_142 p_2673->g_154 p_2673->g_104 p_2673->g_722 p_2673->g_166 p_2673->g_805 p_2673->g_71 p_2673->g_66 p_2673->g_477 p_2673->g_734 p_2673->g_443 p_2673->g_380 p_2673->g_349 p_2673->g_1111 p_2673->g_1149 p_2673->g_468 p_2673->g_350 p_2673->g_1191 p_2673->g_1145
 */
uint32_t * func_40(int8_t  p_41, uint32_t * p_42, int16_t  p_43, uint32_t * p_44, struct S0 * p_2673)
{ /* block id: 407 */
    uint32_t l_895 = 0xAB84FCB6L;
    int32_t l_904 = 0x0365471FL;
    int32_t l_923 = 0x0DD51C03L;
    int32_t l_926 = 0x399B9CBBL;
    int32_t l_928[10][3] = {{0x6262C3A7L,0x268CD448L,0x1F7223B3L},{0x6262C3A7L,0x268CD448L,0x1F7223B3L},{0x6262C3A7L,0x268CD448L,0x1F7223B3L},{0x6262C3A7L,0x268CD448L,0x1F7223B3L},{0x6262C3A7L,0x268CD448L,0x1F7223B3L},{0x6262C3A7L,0x268CD448L,0x1F7223B3L},{0x6262C3A7L,0x268CD448L,0x1F7223B3L},{0x6262C3A7L,0x268CD448L,0x1F7223B3L},{0x6262C3A7L,0x268CD448L,0x1F7223B3L},{0x6262C3A7L,0x268CD448L,0x1F7223B3L}};
    int64_t **l_983[4][4] = {{(void*)0,(void*)0,&p_2673->g_165,&p_2673->g_165},{(void*)0,(void*)0,&p_2673->g_165,&p_2673->g_165},{(void*)0,(void*)0,&p_2673->g_165,&p_2673->g_165},{(void*)0,(void*)0,&p_2673->g_165,&p_2673->g_165}};
    int64_t ***l_982 = &l_983[2][0];
    uint32_t **l_1041 = &p_2673->g_103[0][0];
    uint32_t ***l_1040 = &l_1041;
    uint8_t **l_1187 = &p_2673->g_351[0][0];
    int32_t **l_1188 = (void*)0;
    uint16_t *l_1189 = &p_2673->g_722[1][7][8];
    int32_t l_1202 = 0x164429DBL;
    uint32_t l_1205[8][4][8] = {{{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL}},{{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL}},{{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL}},{{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL}},{{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL}},{{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL}},{{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL}},{{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL},{0xFA25D908L,1UL,0x38562855L,0x8508D4ECL,1UL,0x35CF5D6AL,4294967287UL,0xECD1427DL}}};
    int32_t *l_1211 = &l_926;
    int32_t *l_1212 = &l_923;
    int32_t *l_1213 = &l_926;
    int32_t *l_1214 = (void*)0;
    int32_t *l_1215 = &p_2673->g_142;
    int32_t *l_1216 = (void*)0;
    int32_t *l_1217 = (void*)0;
    int32_t *l_1218 = &p_2673->g_71;
    int32_t *l_1219 = &l_926;
    int32_t *l_1220 = &l_923;
    int32_t *l_1221 = &l_928[1][0];
    int32_t *l_1222 = (void*)0;
    int32_t *l_1223 = &l_928[1][0];
    int32_t *l_1224[3][2][3] = {{{&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904}},{{&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904}},{{&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904}}};
    uint8_t l_1225 = 0x69L;
    int i, j, k;
    if (l_895)
    { /* block id: 408 */
        int32_t l_905 = (-1L);
        int32_t l_912 = (-1L);
        int32_t l_924 = 0L;
        int32_t l_925 = 0x6F3FC2E8L;
        int32_t l_927 = 0L;
        int32_t l_929 = 0L;
        int32_t l_930 = 0L;
        int32_t l_931[7][9][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
        int16_t *l_939 = &p_2673->g_66[0][0][1];
        int16_t **l_938 = &l_939;
        int32_t *l_944 = &l_929;
        int64_t *l_967 = &p_2673->g_401;
        int32_t *l_1015[1][5][6] = {{{&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4]},{&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4]},{&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4]},{&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4]},{&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4],&p_2673->g_828[2][1][4]}}};
        int32_t l_1071 = (-6L);
        int i, j, k;
        for (p_2673->g_22 = 0; (p_2673->g_22 < 56); ++p_2673->g_22)
        { /* block id: 411 */
            uint32_t l_898[9][6] = {{0x145D32A4L,0xD5F372FCL,1UL,0xF8C9134EL,0x03C3F9D1L,0x03C3F9D1L},{0x145D32A4L,0xD5F372FCL,1UL,0xF8C9134EL,0x03C3F9D1L,0x03C3F9D1L},{0x145D32A4L,0xD5F372FCL,1UL,0xF8C9134EL,0x03C3F9D1L,0x03C3F9D1L},{0x145D32A4L,0xD5F372FCL,1UL,0xF8C9134EL,0x03C3F9D1L,0x03C3F9D1L},{0x145D32A4L,0xD5F372FCL,1UL,0xF8C9134EL,0x03C3F9D1L,0x03C3F9D1L},{0x145D32A4L,0xD5F372FCL,1UL,0xF8C9134EL,0x03C3F9D1L,0x03C3F9D1L},{0x145D32A4L,0xD5F372FCL,1UL,0xF8C9134EL,0x03C3F9D1L,0x03C3F9D1L},{0x145D32A4L,0xD5F372FCL,1UL,0xF8C9134EL,0x03C3F9D1L,0x03C3F9D1L},{0x145D32A4L,0xD5F372FCL,1UL,0xF8C9134EL,0x03C3F9D1L,0x03C3F9D1L}};
            int32_t *l_899 = (void*)0;
            int32_t *l_900 = &p_2673->g_142;
            int32_t l_901 = (-1L);
            int32_t *l_902 = &l_901;
            int32_t *l_903 = &l_901;
            int32_t *l_906 = &p_2673->g_71;
            int32_t *l_907 = &l_905;
            int32_t *l_908 = &l_905;
            int32_t *l_909 = &l_905;
            int32_t *l_910 = &l_905;
            int32_t *l_911 = &p_2673->g_71;
            int32_t *l_913 = &l_912;
            int32_t *l_914 = &p_2673->g_142;
            int32_t *l_915 = &p_2673->g_142;
            int32_t *l_916 = (void*)0;
            int32_t *l_917 = (void*)0;
            int32_t *l_918 = &l_904;
            int32_t *l_919 = &l_901;
            int32_t *l_920 = &p_2673->g_142;
            int32_t *l_921 = &l_901;
            int32_t *l_922[10][4] = {{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142},{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142},{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142},{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142},{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142},{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142},{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142},{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142},{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142},{&p_2673->g_142,&p_2673->g_71,&p_2673->g_142,&p_2673->g_142}};
            int i, j;
            if (l_898[3][2])
                break;
            --p_2673->g_933;
        }
        if (((*l_944) = ((safe_add_func_int32_t_s_s(((p_2673->g_940 = l_938) != (void*)0), (safe_mul_func_uint16_t_u_u(p_2673->g_828[2][0][1], l_895)))) , ((*p_2673->g_154) = (**p_2673->g_446)))))
        { /* block id: 418 */
lbl_1133:
            (*p_2673->g_945) = p_44;
        }
        else
        { /* block id: 420 */
            int32_t l_962 = (-4L);
            int64_t **l_981 = &p_2673->g_165;
            int64_t ***l_980[7][2][6] = {{{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981},{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981}},{{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981},{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981}},{{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981},{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981}},{{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981},{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981}},{{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981},{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981}},{{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981},{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981}},{{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981},{&l_981,&l_981,&l_981,&l_981,&l_981,&l_981}}};
            int64_t *l_1000 = &p_2673->g_401;
            uint8_t ***l_1027 = &p_2673->g_350;
            uint8_t l_1091 = 0x2FL;
            int8_t l_1098[8] = {0x74L,0x74L,0x74L,0x74L,0x74L,0x74L,0x74L,0x74L};
            int32_t l_1099 = 0L;
            uint32_t l_1103 = 0x9B9124BDL;
            int32_t l_1136[5];
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_1136[i] = (-1L);
            if (l_923)
            { /* block id: 421 */
                uint32_t *l_949 = &p_2673->g_104;
                uint16_t *l_965 = &p_2673->g_722[0][0][9];
                uint8_t **l_966 = &p_2673->g_351[0][1];
                int32_t l_968 = 1L;
                int32_t l_1060[2];
                uint64_t *l_1087 = &p_2673->g_734;
                int32_t l_1090 = 0x147BD003L;
                int32_t l_1100 = (-3L);
                int32_t l_1101 = 0x0F1F1C0DL;
                int32_t l_1102 = 0x41AFC1E3L;
                int64_t **l_1110 = &p_2673->g_165;
                int32_t l_1140 = 1L;
                int32_t l_1141[3][3][10] = {{{(-10L),0x1CA496AAL,0x05B97208L,0x3CAD83F8L,0x013E3E22L,0x3CAD83F8L,0x05B97208L,0x1CA496AAL,(-10L),0x05B97208L},{(-10L),0x1CA496AAL,0x05B97208L,0x3CAD83F8L,0x013E3E22L,0x3CAD83F8L,0x05B97208L,0x1CA496AAL,(-10L),0x05B97208L},{(-10L),0x1CA496AAL,0x05B97208L,0x3CAD83F8L,0x013E3E22L,0x3CAD83F8L,0x05B97208L,0x1CA496AAL,(-10L),0x05B97208L}},{{(-10L),0x1CA496AAL,0x05B97208L,0x3CAD83F8L,0x013E3E22L,0x3CAD83F8L,0x05B97208L,0x1CA496AAL,(-10L),0x05B97208L},{(-10L),0x1CA496AAL,0x05B97208L,0x3CAD83F8L,0x013E3E22L,0x3CAD83F8L,0x05B97208L,0x1CA496AAL,(-10L),0x05B97208L},{(-10L),0x1CA496AAL,0x05B97208L,0x3CAD83F8L,0x013E3E22L,0x3CAD83F8L,0x05B97208L,0x1CA496AAL,(-10L),0x05B97208L}},{{(-10L),0x1CA496AAL,0x05B97208L,0x3CAD83F8L,0x013E3E22L,0x3CAD83F8L,0x05B97208L,0x1CA496AAL,(-10L),0x05B97208L},{(-10L),0x1CA496AAL,0x05B97208L,0x3CAD83F8L,0x013E3E22L,0x3CAD83F8L,0x05B97208L,0x1CA496AAL,(-10L),0x05B97208L},{(-10L),0x1CA496AAL,0x05B97208L,0x3CAD83F8L,0x013E3E22L,0x3CAD83F8L,0x05B97208L,0x1CA496AAL,(-10L),0x05B97208L}}};
                int32_t *l_1163 = (void*)0;
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_1060[i] = 0x598C1292L;
                (*p_2673->g_154) &= ((safe_unary_minus_func_uint32_t_u((safe_mod_func_uint32_t_u_u(((*l_949) &= GROUP_DIVERGE(1, 1)), (safe_sub_func_uint32_t_u_u((((((((safe_sub_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((*p_2673->g_165) &= (p_41 | (safe_mod_func_uint16_t_u_u(((*l_965) = (safe_div_func_int8_t_s_s(((((p_44 != (void*)0) , ((2L > (safe_lshift_func_int8_t_s_u((l_962 > (!p_41)), 6))) , ((safe_add_func_int64_t_s_s(((*p_42) >= (-6L)), 0L)) , p_2673->g_380[2]))) , p_2673->g_138) && p_43), p_43))), l_928[2][1])))), 0x09C7C98162F7B245L)), (*l_944))) , (*p_2673->g_349)) != l_966) , p_41) , (void*)0) != l_967) == p_41), l_895)))))) || l_968);
                for (l_926 = 0; (l_926 <= 6); l_926 += 1)
                { /* block id: 428 */
                    int64_t l_986 = (-9L);
                    int32_t l_987[4] = {0x6339FE0AL,0x6339FE0AL,0x6339FE0AL,0x6339FE0AL};
                    int i;
                    for (l_924 = 0; l_924 < 1; l_924 += 1)
                    {
                        for (p_2673->g_805 = 0; p_2673->g_805 < 2; p_2673->g_805 += 1)
                        {
                            for (p_2673->g_71 = 0; p_2673->g_71 < 4; p_2673->g_71 += 1)
                            {
                                p_2673->g_66[l_924][p_2673->g_805][p_2673->g_71] = (-1L);
                            }
                        }
                    }
                    for (p_2673->g_933 = 0; (p_2673->g_933 <= 6); p_2673->g_933 += 1)
                    { /* block id: 432 */
                        int i, j;
                        (*l_944) = (0x768FD08DL == (p_2673->g_259[l_926][(l_926 + 3)] ^ (safe_mul_func_int8_t_s_s(0x28L, (l_968 , ((safe_add_func_uint64_t_u_u((p_2673->g_116 == p_2673->g_468), (&p_41 != ((l_962 < (((((*p_2673->g_154) = (safe_add_func_uint32_t_u_u((*p_42), (*p_2673->g_154)))) ^ 7UL) && l_926) & p_2673->g_189[0])) , &p_2673->g_185[1][3])))) > p_2673->g_380[2]))))));
                        (*l_944) = 0x1C2C310FL;
                    }
                    for (p_2673->g_477 = 0; (p_2673->g_477 <= 3); p_2673->g_477 += 1)
                    { /* block id: 439 */
                        uint64_t *l_977 = &p_2673->g_734;
                        uint16_t *l_984 = (void*)0;
                        uint16_t *l_985[10][10] = {{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443},{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443},{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443},{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443},{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443},{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443},{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443},{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443},{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443},{&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_933,&p_2673->g_933,&p_2673->g_443,&p_2673->g_933,&p_2673->g_300[0][1],&p_2673->g_933,&p_2673->g_443}};
                        int i, j;
                        (*l_944) &= ((0UL != (((((*l_977) = ((*p_2673->g_940) == (void*)0)) == (safe_lshift_func_uint16_t_u_u((p_2673->g_380[p_2673->g_477] , p_2673->g_380[p_2673->g_477]), (l_987[3] = (p_2673->g_380[1] , (p_2673->g_443 |= (l_986 = ((*l_965) = ((l_968 = (l_980[6][1][1] != (GROUP_DIVERGE(1, 1) , l_982))) , (0x7444E7FC71265681L > FAKE_DIVERGE(p_2673->local_1_offset, get_local_id(1), 10))))))))))) , (void*)0) == (void*)0)) || l_962);
                        (*p_2673->g_70) = (((safe_lshift_func_int8_t_s_u(((p_2673->g_380[p_2673->g_477]++) <= 9L), 7)) ^ (*p_2673->g_258)) < (safe_sub_func_uint64_t_u_u(p_43, (safe_div_func_int32_t_s_s((+((*p_2673->g_154) = ((*p_2673->g_165) || ((*l_977)++)))), (++(*l_949)))))));
                    }
                    if (((*p_2673->g_154) = p_43))
                    { /* block id: 454 */
                        return &p_2673->g_104;
                    }
                    else
                    { /* block id: 456 */
                        l_928[4][2] = ((*p_2673->g_154) = (((void*)0 == (*p_2673->g_255)) ^ l_968));
                        (*l_944) |= (!(GROUP_DIVERGE(2, 1) ^ (l_962 <= ((void*)0 != l_1000))));
                    }
                    for (p_2673->g_142 = 0; (p_2673->g_142 <= 1); p_2673->g_142 += 1)
                    { /* block id: 463 */
                        int32_t l_1013 = 1L;
                        int32_t **l_1017[9] = {&p_2673->g_154,&l_944,&p_2673->g_154,&p_2673->g_154,&l_944,&p_2673->g_154,&p_2673->g_154,&l_944,&p_2673->g_154};
                        int32_t ***l_1016 = &l_1017[0];
                        int i, j;
                        (*p_2673->g_1014) = func_58(p_2673->g_103[p_2673->g_142][p_2673->g_142], ((p_2673->g_66[0][0][1] , ((+(safe_div_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(((**p_2673->g_940) |= (-4L)), ((safe_sub_func_int32_t_s_s((safe_mod_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(((void*)0 == p_2673->g_103[p_2673->g_142][p_2673->g_142]), (p_41 && (safe_rshift_func_uint8_t_u_s(p_41, 7))))), (**p_2673->g_430))), ((*l_944) , (*p_44)))) && p_41))) , l_1013), p_41))) == (*p_2673->g_165))) , 0L), p_41, p_2673->g_22, p_2673);
                        l_928[1][0] = ((void*)0 == l_1015[0][3][1]);
                        (*l_1016) = &l_944;
                    }
                }
                for (l_962 = 0; (l_962 <= 6); l_962 += 1)
                { /* block id: 472 */
                    int8_t *l_1020[7][2][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                    uint8_t ****l_1028 = (void*)0;
                    uint8_t ****l_1029 = &p_2673->g_349;
                    int32_t l_1062 = 0x2B005A93L;
                    int16_t l_1070 = (-1L);
                    uint32_t l_1074 = 8UL;
                    uint32_t *l_1079 = &p_2673->g_380[2];
                    int i, j, k;
                    atomic_and(&p_2673->g_atomic_reduction[get_linear_group_id()], (((safe_div_func_int64_t_s_s(0x416763FA17E17C15L, ((*l_944) ^ (p_41 &= l_968)))) && (l_962 & (p_43 <= l_962))) | ((safe_rshift_func_uint8_t_u_s((p_43 != ((safe_lshift_func_int16_t_s_u(0x2C8DL, 6)) || (safe_mul_func_int8_t_s_s((*l_944), 255UL)))), p_2673->g_403[0])) != 9L)));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_2673->v_collective += p_2673->g_atomic_reduction[get_linear_group_id()];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    (*p_2673->g_154) = ((((*l_1029) = l_1027) != &l_966) < ((safe_rshift_func_int16_t_s_u((safe_div_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(p_2673->g_84, (((*l_944) = (p_43 && p_41)) >= l_962))), ((safe_div_func_int32_t_s_s(p_41, (safe_add_func_uint64_t_u_u(((((p_43 < (*p_42)) <= (**p_2673->g_257)) , l_1040) != (void*)0), 18446744073709551614UL)))) & (*p_2673->g_165)))), FAKE_DIVERGE(p_2673->local_0_offset, get_local_id(0), 10))) & (*p_2673->g_154)));
                    for (l_923 = 2; (l_923 >= 0); l_923 -= 1)
                    { /* block id: 480 */
                        int32_t l_1059[4][10][5] = {{{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L}},{{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L}},{{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L}},{{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L},{0L,0x6E49F133L,0x7C003C7DL,(-9L),0x2A774862L}}};
                        int32_t *l_1061 = &l_931[5][6][0];
                        int32_t **l_1063 = (void*)0;
                        int i, j, k;
                        (*l_1061) &= ((!(safe_sub_func_uint8_t_u_u(p_2673->g_259[l_962][(l_923 + 6)], (safe_div_func_uint8_t_u_u(((safe_unary_minus_func_uint8_t_u((((((((*p_2673->g_165) = 0x1EB11B7780E6EF86L) < (safe_rshift_func_int16_t_s_u(((*p_44) , (((*l_949)++) , 0x41C9L)), l_968))) >= (safe_lshift_func_int8_t_s_s(p_41, ((0x2385L < ((safe_sub_func_int16_t_s_s((safe_add_func_int8_t_s_s(p_2673->g_3[3][2][7], (((p_43 <= (-1L)) ^ 0x713DAD01L) != 1L))), 0x8025L)) >= l_928[1][0])) <= p_41)))) <= l_1059[1][8][0]) < p_41) & (*l_944)))) || l_1060[1]), (-10L)))))) , (*p_2673->g_154));
                        if (l_962)
                            continue;
                        if (l_1062)
                            break;
                        (*p_2673->g_1065) = (*p_2673->g_533);
                    }
                    (*p_2673->g_154) = ((safe_mod_func_int64_t_s_s((l_968 = ((**l_981) &= (((safe_lshift_func_int16_t_s_u((l_1070 != 0x42L), l_1071)) < ((safe_sub_func_uint8_t_u_u(255UL, l_1060[1])) > l_1070)) , l_1074))), p_2673->g_442)) >= ((*l_965) = (safe_mod_func_uint32_t_u_u((*p_42), 0x28F9C926L))));
                    for (l_927 = 0; (l_927 <= 1); l_927 += 1)
                    { /* block id: 494 */
                        int32_t *l_1077[9] = {&l_912,&l_912,&l_912,&l_912,&l_912,&l_912,&l_912,&l_912,&l_912};
                        int32_t **l_1078 = &l_1077[8];
                        int i;
                        (*l_1078) = l_1077[8];
                        return l_1079;
                    }
                }
                for (l_912 = 1; (l_912 > (-20)); l_912 = safe_sub_func_uint16_t_u_u(l_912, 4))
                { /* block id: 501 */
                    uint64_t *l_1086 = &p_2673->g_84;
                    int32_t *l_1092 = (void*)0;
                    int32_t *l_1093 = &l_931[6][2][0];
                    int32_t *l_1094 = (void*)0;
                    int32_t *l_1095 = &l_924;
                    int32_t *l_1096 = &l_924;
                    int32_t *l_1097[4] = {&l_923,&l_923,&l_923,&l_923};
                    int i;
                    l_1091 = (6L == (safe_mul_func_int8_t_s_s((((**l_981) = (l_928[0][2] , ((((safe_lshift_func_int16_t_s_u((((l_1086 = l_1000) != l_1087) , 0x6364L), p_2673->g_734)) & (safe_rshift_func_uint8_t_u_u(0UL, l_1090))) <= ((*l_944) = l_923)) && 0x15EB64D02C703388L))) < (-10L)), p_43)));
                    l_1103++;
                    if ((p_41 < (safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(((p_2673->g_1111 = l_1110) != (*l_982)), l_1103)), p_41))))
                    { /* block id: 508 */
                        uint8_t *l_1116[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        (*l_1093) &= (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (p_43 | (((safe_sub_func_uint8_t_u_u((((((*l_944) = 1UL) != p_2673->g_477) , (safe_mod_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u((safe_sub_func_int64_t_s_s(((((((p_41 <= (((safe_mul_func_int8_t_s_s((p_2673->g_932 || (((safe_add_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(9UL, ((*p_44) <= p_43))), 0x58A56BC25B218779L)) , (**p_2673->g_940)) > p_43)), 1L)) <= p_41) != (*l_944))) >= (-1L)) & p_2673->g_84) != 0x78L) & p_2673->g_443) & l_1091), (*p_2673->g_165))), p_41)) , 0UL), 248UL))) != 0x76BA7480L), 1UL)) != 0xDEAF785EL) , l_1103))));
                        (*l_944) = 0x64E13AD5L;
                        if (l_1090)
                            goto lbl_1133;
                    }
                    else
                    { /* block id: 513 */
                        int32_t l_1134 = 0x688158FDL;
                        int32_t l_1135 = 0x19E45113L;
                        int32_t l_1137 = 0x7B7610CDL;
                        int32_t l_1138 = 1L;
                        int32_t l_1139[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                        uint8_t *l_1157 = &p_2673->g_468;
                        int32_t **l_1162[4][6][4] = {{{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]}},{{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]}},{{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]}},{{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]},{&l_1015[0][1][3],&l_1015[0][1][5],&l_1015[0][3][1],&l_1015[0][2][1]}}};
                        int i, j, k;
                        p_2673->g_1149++;
                        if (p_43)
                            continue;
                        l_1136[3] = ((safe_mod_func_uint8_t_u_u(p_43, (safe_unary_minus_func_int64_t_s((safe_div_func_int16_t_s_s(((l_1140 >= ((*l_1157) = l_1138)) <= ((safe_rshift_func_int16_t_s_u((*p_2673->g_774), l_1138)) ^ ((safe_mod_func_uint16_t_u_u((&p_2673->g_828[2][0][3] != (l_1163 = p_44)), ((safe_div_func_int32_t_s_s((~(safe_sub_func_uint32_t_u_u(((safe_div_func_uint32_t_u_u((*l_1096), 6UL)) , (*p_44)), 0x7C2F1E24L))), (*p_44))) && (**p_2673->g_1111)))) || l_895))), p_2673->g_442)))))) > (*p_44));
                    }
                }
            }
            else
            { /* block id: 521 */
                int64_t *l_1170 = &p_2673->g_403[0];
                (*l_944) &= ((void*)0 != l_1170);
            }
            (*p_2673->g_154) = (safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (*p_2673->g_154)));
            (*l_944) = ((((safe_div_func_int64_t_s_s(((((((((safe_sub_func_int8_t_s_s((safe_add_func_uint64_t_u_u((safe_div_func_uint32_t_u_u((((*p_2673->g_349) = (void*)0) != ((&l_1015[0][3][1] != ((safe_add_func_int64_t_s_s((((p_2673->g_1183 != (void*)0) , (((((*p_2673->g_154) = 3L) ^ p_43) && ((((safe_div_func_int16_t_s_s(1L, ((8L >= (p_43 >= (**p_2673->g_940))) ^ p_2673->g_401))) , l_1187) != l_1187) == (*l_944))) == 0L)) > (**p_2673->g_940)), p_41)) , l_1188)) , (void*)0)), 0x64B03F0BL)), l_928[4][0])), 0L)) , (**p_2673->g_257)) & 0x38L) >= 0UL) < (*p_42)) == l_1136[4]) & (*p_2673->g_165)) , 0x54A683EC87D527BFL), l_895)) , l_1189) == (void*)0) & 0L);
        }
    }
    else
    { /* block id: 529 */
        int32_t *l_1190[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint16_t l_1196 = 0xE3CDL;
        int32_t **l_1209 = &l_1190[7];
        int32_t **l_1210 = &p_2673->g_154;
        int i;
        ++p_2673->g_1191[5];
        for (p_2673->g_1145 = 0; (p_2673->g_1145 <= (-1)); p_2673->g_1145--)
        { /* block id: 533 */
            int8_t *l_1206 = &p_2673->g_189[0];
            (*p_2673->g_154) ^= l_1196;
            (*p_2673->g_154) = l_923;
            (*p_2673->g_1208) = &l_928[1][0];
        }
        (*l_1210) = ((*l_1209) = p_44);
    }
    l_1225++;
    return (**l_1040);
}


/* ------------------------------------------ */
/* 
 * reads : p_2673->g_71 p_2673->g_3 p_2673->g_257 p_2673->g_258 p_2673->g_259 p_2673->g_468 p_2673->g_22 p_2673->g_443 p_2673->g_430 p_2673->g_154 p_2673->g_142 p_2673->g_350 p_2673->g_351 p_2673->g_401 p_2673->g_477 p_2673->g_533 p_2673->g_425 p_2673->g_255 p_2673->g_256 p_2673->g_380 p_2673->g_104 p_2673->g_87 p_2673->g_66 p_2673->g_4 p_2673->g_165 p_2673->g_166 p_2673->g_185 p_2673->g_349 p_2673->g_722 p_2673->g_734 p_2673->g_116 p_2673->g_141 p_2673->g_84 p_2673->g_70 p_2673->g_476 p_2673->g_403 p_2673->g_774 p_2673->g_446 p_2673->g_616 p_2673->g_803 p_2673->g_300 p_2673->g_832 p_2673->g_136
 * writes: p_2673->g_22 p_2673->g_136 p_2673->g_84 p_2673->g_185 p_2673->g_142 p_2673->g_401 p_2673->g_166 p_2673->g_477 p_2673->g_300 p_2673->g_71 p_2673->g_87 p_2673->g_722 p_2673->g_734 p_2673->g_116 p_2673->g_468 p_2673->g_443 p_2673->g_154 p_2673->g_832 p_2673->g_189 p_2673->g_66 p_2673->g_380
 */
uint32_t * func_45(uint32_t * p_46, int32_t * p_47, int32_t * p_48, uint32_t * p_49, int32_t * p_50, struct S0 * p_2673)
{ /* block id: 10 */
    uint32_t l_78 = 0x8BAC8E9BL;
    int32_t *l_79 = &p_2673->g_3[3][3][2];
    int64_t **l_565[2];
    int16_t *l_567 = &p_2673->g_66[0][0][1];
    int32_t l_572[1];
    uint8_t l_579 = 255UL;
    int8_t *l_595 = (void*)0;
    uint32_t l_718 = 4294967289UL;
    int32_t l_783 = 0x4769B88DL;
    int32_t *l_887 = &p_2673->g_142;
    int32_t *l_888 = (void*)0;
    int32_t *l_889 = &l_783;
    int32_t *l_890 = &l_783;
    int32_t *l_891[4][8] = {{&l_572[0],&p_2673->g_3[3][2][7],&l_572[0],&l_572[0],&p_2673->g_3[3][2][7],&l_572[0],&l_572[0],&p_2673->g_3[3][2][7]},{&l_572[0],&p_2673->g_3[3][2][7],&l_572[0],&l_572[0],&p_2673->g_3[3][2][7],&l_572[0],&l_572[0],&p_2673->g_3[3][2][7]},{&l_572[0],&p_2673->g_3[3][2][7],&l_572[0],&l_572[0],&p_2673->g_3[3][2][7],&l_572[0],&l_572[0],&p_2673->g_3[3][2][7]},{&l_572[0],&p_2673->g_3[3][2][7],&l_572[0],&l_572[0],&p_2673->g_3[3][2][7],&l_572[0],&l_572[0],&p_2673->g_3[3][2][7]}};
    uint64_t l_892 = 0UL;
    int i, j;
    for (i = 0; i < 2; i++)
        l_565[i] = &p_2673->g_165;
    for (i = 0; i < 1; i++)
        l_572[i] = 0x634B7427L;
lbl_776:
    for (p_2673->g_22 = 25; (p_2673->g_22 > 16); --p_2673->g_22)
    { /* block id: 13 */
        uint16_t l_57 = 65535UL;
        int16_t *l_65 = &p_2673->g_66[0][0][1];
        int32_t **l_554 = &p_2673->g_154;
        int16_t **l_566 = &l_65;
        int32_t *l_568 = &p_2673->g_71;
        int32_t *l_569 = &p_2673->g_142;
        int32_t *l_570 = &p_2673->g_142;
        int32_t *l_571 = &p_2673->g_71;
        int32_t *l_573 = &p_2673->g_71;
        int32_t *l_574 = (void*)0;
        int32_t *l_575 = (void*)0;
        int32_t *l_576 = &l_572[0];
        int32_t *l_577 = &p_2673->g_71;
        int32_t *l_578[3];
        int16_t l_610 = 0x1780L;
        int8_t l_613 = 5L;
        int i;
        for (i = 0; i < 3; i++)
            l_578[i] = (void*)0;
        (1 + 1);
    }
    for (p_2673->g_136 = 0; (p_2673->g_136 < 9); p_2673->g_136++)
    { /* block id: 260 */
        int64_t l_635 = 7L;
        int32_t l_673 = 6L;
        int32_t l_674 = 1L;
        uint32_t l_713 = 0xDB59E3F7L;
        int16_t l_720 = 0x4F8EL;
        int8_t *l_763 = &p_2673->g_185[1][4];
        int32_t l_829[1];
        int i;
        for (i = 0; i < 1; i++)
            l_829[i] = 0x17492901L;
        for (p_2673->g_84 = 16; (p_2673->g_84 < 19); ++p_2673->g_84)
        { /* block id: 263 */
            int8_t l_638[10][6] = {{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L},{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L},{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L},{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L},{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L},{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L},{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L},{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L},{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L},{(-4L),0x4DL,(-9L),0x24L,0x09L,0x09L}};
            int8_t *l_639 = &p_2673->g_185[1][3];
            int32_t *l_642 = &p_2673->g_71;
            uint8_t *l_648 = &p_2673->g_87;
            int32_t l_671 = 4L;
            uint8_t l_675[7] = {247UL,0UL,247UL,247UL,0UL,247UL,247UL};
            uint8_t l_692 = 1UL;
            int64_t **l_699 = (void*)0;
            int8_t l_702 = 1L;
            int32_t l_824 = 5L;
            int32_t l_827[5];
            int32_t **l_852 = &p_2673->g_154;
            int i, j;
            for (i = 0; i < 5; i++)
                l_827[i] = (-1L);
            if (((**p_2673->g_430) = ((((-1L) < ((safe_sub_func_uint64_t_u_u(((safe_mod_func_int8_t_s_s(((*l_639) = (((((*l_79) == (safe_lshift_func_int8_t_s_u(0x2BL, (**p_2673->g_257)))) == (safe_add_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(0x960AL, (safe_div_func_uint64_t_u_u(l_635, p_2673->g_468)))), ((*p_46) == ((safe_add_func_int64_t_s_s(l_635, l_638[5][0])) >= 0x42C894702FB12787L))))) , (*p_46)) , p_2673->g_443)), l_638[4][2])) | l_638[5][0]), (*l_79))) < 0xFEL)) || 0x15A314FE9D8DE652L) && 255UL)))
            { /* block id: 266 */
                int32_t **l_647[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_647[i] = (void*)0;
                for (p_2673->g_401 = 6; (p_2673->g_401 < (-22)); p_2673->g_401--)
                { /* block id: 269 */
                    l_79 = l_642;
                    for (p_2673->g_166 = (-26); (p_2673->g_166 < (-30)); p_2673->g_166 = safe_sub_func_int64_t_s_s(p_2673->g_166, 3))
                    { /* block id: 273 */
                        (*p_2673->g_154) |= (safe_rshift_func_uint8_t_u_u(0x47L, ((*l_79) , l_635)));
                        return p_48;
                    }
                }
                p_48 = l_642;
                for (p_2673->g_477 = 0; (p_2673->g_477 <= 0); p_2673->g_477 += 1)
                { /* block id: 281 */
                    int32_t *l_652 = &p_2673->g_442;
                    int32_t **l_651 = &l_652;
                    int32_t l_653 = 0x69347CDFL;
                    int i;
                    if ((*l_79))
                        break;
                    l_572[p_2673->g_477] = (((((((l_648 = l_639) != (*p_2673->g_350)) >= (safe_lshift_func_uint16_t_u_u((&p_2673->g_442 != ((*l_651) = &p_2673->g_442)), 0))) , (&p_46 == (void*)0)) | l_653) ^ ((safe_mod_func_int8_t_s_s(l_635, ((safe_add_func_int64_t_s_s(((safe_rshift_func_int16_t_s_s((p_2673->g_71 ^ l_653), (*l_642))) == (*p_49)), 7L)) , 3L))) >= l_635)) >= p_2673->g_401);
                }
            }
            else
            { /* block id: 287 */
                int32_t *l_661 = (void*)0;
                int32_t *l_662 = &l_572[0];
                int32_t *l_663 = &l_572[0];
                int32_t *l_664 = (void*)0;
                int32_t *l_665 = (void*)0;
                int32_t *l_666 = &l_572[0];
                int32_t *l_667 = (void*)0;
                int32_t *l_668 = &p_2673->g_71;
                int32_t *l_669 = &p_2673->g_142;
                int32_t *l_670 = (void*)0;
                int32_t *l_672[5][4][7] = {{{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142}},{{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142}},{{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142}},{{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142}},{{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142},{&l_572[0],&l_572[0],&p_2673->g_71,(void*)0,&p_2673->g_3[3][2][7],(void*)0,&p_2673->g_142}}};
                int i, j, k;
                (**p_2673->g_533) ^= (safe_unary_minus_func_uint8_t_u((*l_79)));
                ++l_675[1];
            }
            if ((safe_rshift_func_int8_t_s_s(((!p_2673->g_425) , (FAKE_DIVERGE(p_2673->local_1_offset, get_local_id(1), 10) & 1UL)), ((((GROUP_DIVERGE(2, 1) ^ (****p_2673->g_255)) && (safe_mul_func_uint16_t_u_u(((GROUP_DIVERGE(2, 1) , ((p_47 == &p_2673->g_478) == (l_673 = ((((safe_div_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(((~((((((((*l_642) ^ l_673) | p_2673->g_380[0]) > ((safe_rshift_func_uint8_t_u_s(1UL, (*l_642))) , p_2673->g_104)) , (*l_642)) == (*l_642)) <= p_2673->g_87) < (-2L))) > (*l_642)), 0xA128L)), (*l_79))), (*l_642))) && (*l_79)), l_692)) | (****p_2673->g_255)) , p_2673->g_66[0][0][3]) , l_673)))) != 0x5CCCL), (*l_79)))) > (*p_46)) > (*p_49)))))
            { /* block id: 292 */
                int64_t l_697[4];
                uint16_t *l_698 = &p_2673->g_300[0][0];
                int64_t ***l_700 = &l_565[0];
                int32_t l_701 = 0L;
                uint64_t *l_772 = &p_2673->g_734;
                int16_t *l_773 = &l_720;
                int32_t *l_777 = &l_673;
                uint16_t l_782 = 6UL;
                uint8_t l_788 = 0UL;
                uint16_t l_812 = 1UL;
                int32_t l_825 = 0x710C7D0DL;
                int32_t l_826 = 0x27EB13FFL;
                int32_t l_830 = 0x7BA47B1BL;
                uint16_t l_845[3][4][1] = {{{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL}}};
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_697[i] = 0x3EF0FE2714E93AEFL;
                if (((!p_2673->g_4) < (((*l_648) = (safe_mod_func_int16_t_s_s((((safe_add_func_uint16_t_u_u(0xED91L, (((*l_698) = (GROUP_DIVERGE(1, 1) == (l_697[2] < (*p_2673->g_258)))) , (l_567 == (void*)0)))) ^ (((*l_642) = ((*p_49) && ((*p_46) = (((*l_700) = l_699) != l_699)))) | GROUP_DIVERGE(2, 1))) != l_701), l_702))) ^ l_701)))
                { /* block id: 298 */
                    uint16_t l_705 = 0x4031L;
                    uint64_t l_706 = 0xB6039C44E11C666CL;
                    uint8_t **l_719 = &p_2673->g_351[0][1];
                    int32_t l_721[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_721[i] = 0x5E11A532L;
                    p_2673->g_722[1][7][8] |= ((((safe_div_func_int16_t_s_s(l_705, (l_706 , (l_706 & (~((safe_mul_func_uint16_t_u_u(p_2673->g_259[4][6], ((l_721[0] |= (((((*l_642) &= ((((1UL ^ 0xE72DL) | ((l_719 = (((((safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(l_713, (((safe_lshift_func_uint16_t_u_u(l_697[0], (safe_sub_func_uint32_t_u_u(1UL, (*p_2673->g_154))))) | (*p_2673->g_165)) && 249UL))), 0x0F96L)) , l_718) > p_2673->g_185[2][3]) , 0x69L) , (*p_2673->g_349))) != &l_648)) || l_673) , (-5L))) | FAKE_DIVERGE(p_2673->global_1_offset, get_global_id(1), 10)) <= l_720) , (*p_46))) >= l_673))) < l_706)))))) | (*p_2673->g_165)) >= l_701) == l_713);
                }
                else
                { /* block id: 303 */
                    int32_t l_728 = (-9L);
                    (*p_2673->g_154) ^= (*p_47);
                    for (l_713 = (-29); (l_713 > 45); l_713 = safe_add_func_int8_t_s_s(l_713, 4))
                    { /* block id: 307 */
                        uint64_t *l_733[7][4][9] = {{{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84}},{{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84}},{{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84}},{{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84}},{{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84}},{{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84}},{{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84},{&p_2673->g_734,&p_2673->g_84,&p_2673->g_734,&p_2673->g_734,&p_2673->g_84,(void*)0,&p_2673->g_84,(void*)0,&p_2673->g_84}}};
                        int32_t *l_737 = &p_2673->g_116;
                        int32_t l_753 = 7L;
                        int32_t l_756 = 0x06756D98L;
                        int i, j, k;
                        (*l_642) = (((*l_737) = (safe_div_func_int8_t_s_s(0x77L, (((safe_unary_minus_func_int64_t_s((l_728 ^= (*p_2673->g_165)))) | (!((((p_2673->g_734 = (safe_lshift_func_uint8_t_u_s(((l_697[2] , &l_720) != (((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (-1L))) == 1UL) , &p_2673->g_136)), p_2673->g_259[4][0]))) || (safe_div_func_int16_t_s_s(((void*)0 != &p_2673->g_66[0][1][0]), 0x41AFL))) , (*p_46)) != (*p_47)))) && 0x164FL)))) , l_673);
                        l_756 |= ((safe_lshift_func_uint16_t_u_s(((void*)0 == &p_2673->g_84), ((*l_642) && ((*l_642) & (FAKE_DIVERGE(p_2673->group_1_offset, get_group_id(1), 10) | (((((safe_unary_minus_func_uint32_t_u((++(*p_49)))) & (safe_div_func_int16_t_s_s(((*l_79) & (*l_79)), (safe_rshift_func_int8_t_s_s((((safe_rshift_func_int8_t_s_u(((safe_lshift_func_int8_t_s_u((1UL && (+((((+((p_2673->g_734++) & (l_753 & ((safe_rshift_func_int8_t_s_u(p_2673->g_116, l_697[2])) > (*p_2673->g_258))))) , 250UL) , l_753) && 3L))), 1)) | 0x0B77L), 0)) & 5L) <= p_2673->g_141), p_2673->g_84))))) || l_701) , (*p_48)) <= 5L)))))) , 0x6C7AE60FL);
                        return l_737;
                    }
                    (*p_2673->g_70) |= (-1L);
                }
                if ((safe_lshift_func_int16_t_s_u((safe_add_func_uint8_t_u_u((((void*)0 == l_763) & ((*p_46) <= (safe_mod_func_uint64_t_u_u(((safe_rshift_func_int8_t_s_s((((p_2673->g_104 , p_2673->g_401) && 1L) == (((*l_698) = ((((*p_48) == (((*l_772) |= ((safe_div_func_int16_t_s_s((safe_sub_func_int8_t_s_s((*l_642), 0x31L)), p_2673->g_476)) , l_697[1])) , 4294967295UL)) ^ p_2673->g_403[0]) , l_697[2])) != 65528UL)), l_697[2])) & p_2673->g_185[2][4]), p_2673->g_66[0][0][1])))), l_697[2])), 13)))
                { /* block id: 321 */
                    if (((l_773 = &l_720) == &l_720))
                    { /* block id: 323 */
                        (**p_2673->g_446) = ((~((void*)0 == p_2673->g_774)) ^ ((65535UL | 1UL) != 18446744073709551615UL));
                    }
                    else
                    { /* block id: 325 */
                        if (l_635)
                            goto lbl_776;
                        l_777 = p_47;
                        (*l_642) ^= ((*p_2673->g_154) |= (safe_div_func_int32_t_s_s((&p_2673->g_185[1][3] == (void*)0), 0x53AB5ED4L)));
                    }
                    for (p_2673->g_468 = 0; (p_2673->g_468 > 47); p_2673->g_468++)
                    { /* block id: 333 */
                        l_782 = ((*p_2673->g_154) = ((((void*)0 != &l_720) , l_698) == (void*)0));
                        if (l_783)
                            continue;
                        if ((*p_48))
                            continue;
                    }
                    for (p_2673->g_443 = (-4); (p_2673->g_443 != 40); ++p_2673->g_443)
                    { /* block id: 341 */
                        uint16_t l_786 = 65534UL;
                        atomic_sub(&p_2673->l_atomic_reduction[0], l_786);
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_2673->v_collective += p_2673->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        (**p_2673->g_446) ^= (((*l_777) ^ p_2673->g_71) < ((l_786 >= l_786) <= ((void*)0 == &p_2673->g_734)));
                    }
                    if (p_2673->g_468)
                        goto lbl_776;
                }
                else
                { /* block id: 346 */
                    int32_t **l_787 = &l_642;
                    int64_t *l_802 = (void*)0;
                    int64_t **l_801 = &l_802;
                    int32_t *l_813 = &l_674;
                    int32_t l_822 = (-1L);
                    int32_t l_823 = 0x0F4D25A6L;
                    (*p_2673->g_533) = func_58(((*l_787) = (void*)0), (p_48 == &p_2673->g_380[2]), (l_675[1] , (*l_777)), ((1UL != l_692) || (*l_79)), p_2673);
                    if (l_788)
                        continue;
                    if ((safe_add_func_int8_t_s_s((safe_sub_func_int8_t_s_s(p_2673->g_616, ((safe_add_func_int32_t_s_s((l_702 , ((safe_div_func_int32_t_s_s((l_674 , ((*l_813) ^= ((safe_sub_func_uint32_t_u_u((*p_49), ((safe_mod_func_uint8_t_u_u((l_801 != ((p_2673->g_3[0][0][7] & 255UL) , p_2673->g_803[0])), ((safe_add_func_uint16_t_u_u(((safe_unary_minus_func_uint16_t_u((safe_div_func_uint8_t_u_u((l_720 | p_2673->g_300[0][1]), 250UL)))) > (-1L)), p_2673->g_22)) ^ l_635))) != l_812))) && (*l_777)))), 0x5A894CFBL)) && 0x062EL)), 4294967295UL)) , l_720))), l_702)))
                    { /* block id: 351 */
                        if ((**p_2673->g_430))
                            break;
                    }
                    else
                    { /* block id: 353 */
                        int32_t *l_814 = &p_2673->g_71;
                        int32_t *l_815 = &l_674;
                        int32_t *l_816 = &l_572[0];
                        int32_t *l_817 = &l_572[0];
                        int32_t *l_818 = (void*)0;
                        int32_t *l_819 = &l_701;
                        int32_t *l_820 = &p_2673->g_142;
                        int32_t *l_821[2];
                        uint8_t *l_846 = &p_2673->g_468;
                        int8_t *l_847[6][8] = {{&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&p_2673->g_141,&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&l_638[4][1]},{&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&p_2673->g_141,&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&l_638[4][1]},{&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&p_2673->g_141,&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&l_638[4][1]},{&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&p_2673->g_141,&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&l_638[4][1]},{&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&p_2673->g_141,&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&l_638[4][1]},{&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&p_2673->g_141,&p_2673->g_189[0],&l_638[5][0],&p_2673->g_189[0],&l_638[4][1]}};
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_821[i] = &l_671;
                        if (p_2673->g_84)
                            goto lbl_776;
                        ++p_2673->g_832;
                        (*l_813) &= (l_829[0] , ((safe_sub_func_int8_t_s_s((-1L), (safe_lshift_func_int16_t_s_s(((p_2673->g_189[0] = ((65528UL || (*l_819)) == (safe_div_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s(((*p_48) | (l_673 = ((safe_mul_func_int16_t_s_s((-1L), (0L || ((*l_846) ^= ((*l_648) = l_845[1][3][0]))))) || (*p_46)))), l_829[0])) , (*l_816)), l_829[0])))) ^ p_2673->g_259[4][0]), p_2673->g_22)))) <= GROUP_DIVERGE(1, 1)));
                    }
                }
            }
            else
            { /* block id: 363 */
                for (p_2673->g_116 = 18; (p_2673->g_116 > (-5)); p_2673->g_116 = safe_sub_func_uint32_t_u_u(p_2673->g_116, 8))
                { /* block id: 366 */
                    for (p_2673->g_87 = 14; (p_2673->g_87 <= 4); p_2673->g_87 = safe_sub_func_int64_t_s_s(p_2673->g_87, 1))
                    { /* block id: 369 */
                        (1 + 1);
                    }
                }
            }
            (*l_852) = (*p_2673->g_533);
            return &p_2673->g_380[2];
        }
        for (l_718 = (-20); (l_718 != 59); l_718 = safe_add_func_uint16_t_u_u(l_718, 8))
        { /* block id: 382 */
            int16_t l_878 = 6L;
            for (p_2673->g_443 = (-11); (p_2673->g_443 < 51); p_2673->g_443 = safe_add_func_uint32_t_u_u(p_2673->g_443, 2))
            { /* block id: 385 */
                uint8_t l_869 = 0xABL;
                int32_t l_874 = 0L;
                int16_t *l_877 = &l_720;
                uint32_t *l_879 = &p_2673->g_380[2];
                int32_t *l_880 = (void*)0;
                int32_t l_881 = 0x0F73DF3BL;
                l_881 |= ((((*l_879) ^= ((*p_49) = ((safe_lshift_func_uint8_t_u_u((+(((safe_mul_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_u((l_713 ^ (*p_2673->g_165)), 6)) == (((*l_877) = (safe_div_func_uint64_t_u_u((safe_div_func_uint8_t_u_u(((safe_add_func_int64_t_s_s(l_869, (safe_add_func_uint64_t_u_u((safe_add_func_int64_t_s_s((0x4766L || l_874), (l_829[0] <= ((*l_567) |= l_874)))), ((safe_div_func_uint8_t_u_u((****p_2673->g_255), ((*l_763) |= 0x5FL))) < l_720))))) == l_869), FAKE_DIVERGE(p_2673->global_0_offset, get_global_id(0), 10))), GROUP_DIVERGE(0, 1)))) != l_713)), l_878)) >= 0UL) ^ 0x684DD5A1A8AA7E3CL)), GROUP_DIVERGE(1, 1))) != (*p_2673->g_154)))) < l_713) > 65535UL);
                if (l_713)
                    break;
            }
            if (l_878)
                break;
            if ((*p_48))
                break;
        }
        if (p_2673->g_443)
            goto lbl_776;
        (*p_2673->g_154) = 0x441A3FF0L;
    }
    for (p_2673->g_734 = 19; (p_2673->g_734 >= 44); p_2673->g_734++)
    { /* block id: 402 */
        int64_t *l_884 = &p_2673->g_425;
        int32_t *l_886[2];
        int i;
        for (i = 0; i < 2; i++)
            l_886[i] = (void*)0;
        l_886[1] = func_58(p_50, ((void*)0 == l_884), (*l_79), (*l_79), p_2673);
    }
    ++l_892;
    return &p_2673->g_104;
}


/* ------------------------------------------ */
/* 
 * reads : p_2673->g_84 p_2673->g_70 p_2673->g_71 p_2673->g_87 p_2673->g_3 p_2673->g_274 p_2673->g_165 p_2673->g_166 p_2673->g_141 p_2673->g_349 p_2673->g_189 p_2673->g_310 p_2673->g_142 p_2673->g_66 p_2673->g_116 p_2673->g_257 p_2673->g_258 p_2673->g_259 p_2673->g_22 p_2673->g_138 p_2673->g_154 p_2673->g_430 p_2673->g_443 p_2673->g_446 p_2673->g_403 p_2673->g_300 p_2673->g_425 p_2673->g_4 p_2673->g_468 p_2673->g_380 p_2673->g_255 p_2673->g_256 p_2673->g_136 p_2673->g_478 p_2673->g_476 p_2673->g_473 p_2673->g_533 p_2673->g_185 p_2673->g_401
 * writes: p_2673->g_84 p_2673->g_87 p_2673->g_141 p_2673->g_300 p_2673->g_380 p_2673->g_189 p_2673->g_71 p_2673->g_138 p_2673->g_401 p_2673->g_403 p_2673->g_165 p_2673->g_154 p_2673->g_443 p_2673->g_142 p_2673->g_136 p_2673->g_478 p_2673->g_166
 */
int32_t * func_53(uint32_t * p_54, uint64_t  p_55, int32_t * p_56, struct S0 * p_2673)
{ /* block id: 24 */
    int32_t *l_80 = &p_2673->g_71;
    int32_t *l_81 = &p_2673->g_71;
    int32_t *l_82 = &p_2673->g_71;
    int32_t *l_83[8] = {&p_2673->g_71,&p_2673->g_71,&p_2673->g_71,&p_2673->g_71,&p_2673->g_71,&p_2673->g_71,&p_2673->g_71,&p_2673->g_71};
    int32_t *l_96[7] = {&p_2673->g_4,&p_2673->g_3[1][1][5],&p_2673->g_4,&p_2673->g_4,&p_2673->g_3[1][1][5],&p_2673->g_4,&p_2673->g_4};
    uint8_t *l_183 = &p_2673->g_87;
    uint8_t **l_182 = &l_183;
    uint8_t ***l_181 = &l_182;
    int64_t l_197 = 0x75C48625E22557A7L;
    int32_t l_268 = (-1L);
    int32_t *l_386 = (void*)0;
    int32_t **l_385 = &l_386;
    int64_t *l_552 = &p_2673->g_425;
    int i;
    p_2673->g_84++;
    p_2673->g_87 |= (*p_2673->g_70);
    for (p_55 = 8; (p_55 >= 31); p_55 = safe_add_func_uint64_t_u_u(p_55, 1))
    { /* block id: 29 */
        int32_t *l_94[5][8][3] = {{{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]}},{{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]}},{{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]}},{{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]}},{{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]},{&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][2],&p_2673->g_3[3][2][7]}}};
        int32_t l_213 = 0x219CEE7FL;
        uint16_t l_229 = 0x7ABEL;
        uint16_t l_240[5] = {0x22D2L,0x22D2L,0x22D2L,0x22D2L,0x22D2L};
        int64_t *l_299 = &l_197;
        int i, j, k;
        (1 + 1);
    }
    if (((&p_2673->g_22 == &p_2673->g_22) , (0x5BB3ADCCEB260C81L ^ (safe_mul_func_uint8_t_u_u((p_2673->g_84 || ((safe_lshift_func_uint8_t_u_s(p_55, 0)) <= 0x39L)), (((p_55 && 0x87L) == p_55) >= (*p_56)))))))
    { /* block id: 151 */
        return l_83[2];
    }
    else
    { /* block id: 153 */
        int64_t l_333 = (-4L);
        uint64_t *l_342 = (void*)0;
        int8_t *l_343 = (void*)0;
        int8_t *l_344 = &p_2673->g_141;
        int32_t l_345 = 7L;
        uint8_t ***l_354 = &l_182;
        int64_t l_422 = 0x66A7898F86669DA2L;
        int32_t l_438 = (-1L);
        int32_t l_439 = (-1L);
        int32_t l_474 = 5L;
        int64_t *l_529 = &l_422;
        l_345 = (l_333 != ((*l_81) > (safe_div_func_uint32_t_u_u(((p_2673->g_274 , ((safe_rshift_func_int16_t_s_s(((*p_2673->g_165) == 1UL), (safe_add_func_int64_t_s_s(l_333, (safe_mul_func_uint16_t_u_u((l_342 != l_342), ((((((((*l_344) |= ((0x7228L & p_55) | 0x6889BC5D18551CB4L)) < p_55) == p_55) < (*l_80)) | (-1L)) | 65529UL) & 0x62E18FD125DACD16L))))))) & (-8L))) <= GROUP_DIVERGE(1, 1)), (*p_56)))));
        for (l_268 = 0; (l_268 >= 0); l_268 -= 1)
        { /* block id: 158 */
            uint8_t l_346 = 0xBBL;
            uint8_t ****l_352 = (void*)0;
            uint8_t ****l_353[5][3][6] = {{{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181}},{{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181}},{{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181}},{{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181}},{{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181},{&l_181,&l_181,&p_2673->g_349,(void*)0,(void*)0,&l_181}}};
            uint64_t *l_378[7];
            uint16_t *l_379 = &p_2673->g_300[0][1];
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_378[i] = (void*)0;
            ++l_346;
            p_56 = p_56;
            (*l_81) = ((+((l_354 = p_2673->g_349) != (void*)0)) | ((((p_2673->g_189[l_268] = ((p_2673->g_189[l_268] <= (((FAKE_DIVERGE(p_2673->local_2_offset, get_local_id(2), 10) & (safe_rshift_func_uint8_t_u_s(((l_346 , (safe_unary_minus_func_uint64_t_u((safe_div_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(0x3F17D5CF267E313EL, (p_2673->g_380[2] = (safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((p_55 , (safe_add_func_int16_t_s_s(((((safe_mod_func_int64_t_s_s((p_2673->g_310 , p_55), (safe_lshift_func_int16_t_s_s((((*l_379) = (+(safe_rshift_func_uint8_t_u_u((((safe_add_func_uint64_t_u_u((p_2673->g_84 = p_55), p_55)) ^ (*p_2673->g_165)) == p_55), 1)))) != GROUP_DIVERGE(1, 1)), p_2673->g_71)))) , (-8L)) , 1UL) | p_2673->g_142), l_346))), p_55)), p_2673->g_189[l_268]))))), 0x19E694AC0A801A03L))))) <= FAKE_DIVERGE(p_2673->local_1_offset, get_local_id(1), 10)), p_2673->g_189[l_268]))) || p_55) >= p_2673->g_66[0][0][3])) , p_2673->g_116)) && (**p_2673->g_257)) , &p_2673->g_141) == (void*)0));
            if (p_2673->g_189[l_268])
                break;
        }
        if ((l_333 == (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), l_333))))
        { /* block id: 169 */
            int32_t *l_384 = &l_268;
            int32_t **l_383 = &l_384;
            uint8_t *l_396 = &p_2673->g_138;
            int32_t l_397[8][10] = {{0x2852397BL,0x121AF774L,2L,0x2852397BL,0x0E057126L,2L,2L,0x0E057126L,0x2852397BL,2L},{0x2852397BL,0x121AF774L,2L,0x2852397BL,0x0E057126L,2L,2L,0x0E057126L,0x2852397BL,2L},{0x2852397BL,0x121AF774L,2L,0x2852397BL,0x0E057126L,2L,2L,0x0E057126L,0x2852397BL,2L},{0x2852397BL,0x121AF774L,2L,0x2852397BL,0x0E057126L,2L,2L,0x0E057126L,0x2852397BL,2L},{0x2852397BL,0x121AF774L,2L,0x2852397BL,0x0E057126L,2L,2L,0x0E057126L,0x2852397BL,2L},{0x2852397BL,0x121AF774L,2L,0x2852397BL,0x0E057126L,2L,2L,0x0E057126L,0x2852397BL,2L},{0x2852397BL,0x121AF774L,2L,0x2852397BL,0x0E057126L,2L,2L,0x0E057126L,0x2852397BL,2L},{0x2852397BL,0x121AF774L,2L,0x2852397BL,0x0E057126L,2L,2L,0x0E057126L,0x2852397BL,2L}};
            int64_t *l_411[1][8][7] = {{{&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166},{&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166},{&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166},{&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166},{&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166},{&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166},{&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166},{&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166,(void*)0,&p_2673->g_166,&p_2673->g_166}}};
            int32_t l_417 = 0x092E7B89L;
            int i, j, k;
            l_385 = l_383;
            if ((p_55 , (safe_mod_func_uint32_t_u_u(((safe_unary_minus_func_int16_t_s((0x4EE8L <= 0x78C8L))) , (*p_54)), (((safe_div_func_int16_t_s_s(((safe_mod_func_int8_t_s_s(((&p_2673->g_22 != l_83[5]) | ((*l_81) = (18446744073709551613UL & ((~((**l_182) ^= (safe_lshift_func_uint16_t_u_s(p_55, 2)))) | ((*l_396) &= ((&p_2673->g_300[0][2] != &p_2673->g_300[0][2]) >= (*l_80))))))), FAKE_DIVERGE(p_2673->group_0_offset, get_group_id(0), 10))) > 0x31L), 0x5FFBL)) > l_397[6][9]) && 1UL)))))
            { /* block id: 174 */
                int64_t l_426 = 1L;
                int32_t l_437[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_437[i] = 0x4DCCE7CCL;
                if ((+(*p_2673->g_154)))
                { /* block id: 175 */
                    return &p_2673->g_3[1][2][4];
                }
                else
                { /* block id: 177 */
                    int64_t l_418 = 0x6E13537D24074CF7L;
                    uint16_t l_421 = 0x76DAL;
                    int32_t l_431 = 1L;
                    int32_t l_432 = 0x79E3BD0EL;
                    int32_t l_433[7] = {0x110966B8L,0L,0x110966B8L,0x110966B8L,0L,0x110966B8L,0x110966B8L};
                    int i;
                    for (l_197 = 15; (l_197 >= (-28)); l_197--)
                    { /* block id: 180 */
                        int64_t *l_400 = &p_2673->g_401;
                        int64_t *l_402 = &p_2673->g_403[0];
                        int64_t **l_410 = &p_2673->g_165;
                        int64_t *l_412 = (void*)0;
                        int32_t l_419 = (-4L);
                        int8_t *l_420 = &p_2673->g_189[0];
                        int64_t *l_423 = (void*)0;
                        int64_t *l_424[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t **l_427 = &l_81;
                        uint8_t l_434[1][2][6] = {{{0x29L,0xD0L,0x9DL,0xD0L,0x29L,0x29L},{0x29L,0xD0L,0x9DL,0xD0L,0x29L,0x29L}}};
                        int32_t l_440 = 0x164675EDL;
                        int i, j, k;
                        (*p_2673->g_430) = ((*l_427) = func_58(p_54, ((*l_402) = ((*l_400) = p_55)), (l_426 = ((safe_sub_func_int64_t_s_s(((safe_mul_func_int8_t_s_s(((*l_344) = (l_397[1][8] == 1L)), ((safe_mod_func_uint32_t_u_u((((*l_420) &= ((p_55 && (((*l_410) = &p_2673->g_166) != (l_412 = (l_411[0][7][1] = &p_2673->g_166)))) , ((safe_add_func_int32_t_s_s((((safe_div_func_uint16_t_u_u(((l_417 ^ l_418) <= l_419), p_2673->g_166)) > p_55) ^ (-8L)), (*p_56))) <= 1UL))) <= 0x1FL), l_418)) & l_421))) ^ 0L), p_2673->g_166)) , l_422)), p_2673->g_138, p_2673));
                        (*l_80) = (**p_2673->g_430);
                        --l_434[0][0][0];
                        if (l_418)
                            goto lbl_447;
                        p_2673->g_443--;
                    }
lbl_447:
                    (*p_2673->g_446) = (*p_2673->g_430);
                    return l_96[0];
                }
            }
            else
            { /* block id: 199 */
                int32_t l_466[9][6] = {{0x1FD4242EL,0x36EA0924L,0x5727D8FBL,0x19B264FBL,0x36EA0924L,0x19B264FBL},{0x1FD4242EL,0x36EA0924L,0x5727D8FBL,0x19B264FBL,0x36EA0924L,0x19B264FBL},{0x1FD4242EL,0x36EA0924L,0x5727D8FBL,0x19B264FBL,0x36EA0924L,0x19B264FBL},{0x1FD4242EL,0x36EA0924L,0x5727D8FBL,0x19B264FBL,0x36EA0924L,0x19B264FBL},{0x1FD4242EL,0x36EA0924L,0x5727D8FBL,0x19B264FBL,0x36EA0924L,0x19B264FBL},{0x1FD4242EL,0x36EA0924L,0x5727D8FBL,0x19B264FBL,0x36EA0924L,0x19B264FBL},{0x1FD4242EL,0x36EA0924L,0x5727D8FBL,0x19B264FBL,0x36EA0924L,0x19B264FBL},{0x1FD4242EL,0x36EA0924L,0x5727D8FBL,0x19B264FBL,0x36EA0924L,0x19B264FBL},{0x1FD4242EL,0x36EA0924L,0x5727D8FBL,0x19B264FBL,0x36EA0924L,0x19B264FBL}};
                int32_t l_469 = (-2L);
                int32_t l_475[3][2] = {{(-3L),(-3L)},{(-3L),(-3L)},{(-3L),(-3L)}};
                int i, j;
                for (p_2673->g_71 = 0; (p_2673->g_71 <= 0); p_2673->g_71 += 1)
                { /* block id: 202 */
                    int32_t l_467 = 0x541B8583L;
                    int i;
                    (**p_2673->g_430) = (((safe_lshift_func_int8_t_s_u(((*l_344) = (((safe_mul_func_int16_t_s_s(p_2673->g_403[(p_2673->g_71 + 1)], (safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_add_func_uint16_t_u_u((((l_469 = (((((~((l_439 &= (safe_div_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((((p_2673->g_189[p_2673->g_71] , ((((*p_2673->g_154) , &l_197) == (void*)0) & (safe_add_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(((p_2673->g_300[0][2] >= ((p_2673->g_189[p_2673->g_71] , ((l_467 = l_466[2][0]) , (p_2673->g_403[(p_2673->g_71 + 1)] , 1L))) | p_2673->g_425)) && p_2673->g_4), 0x5BC1L)), p_2673->g_116)))) <= (-1L)) && 4294967295UL), 0x490DL)) , 1L), p_2673->g_468))) || 0xFD846973L)) > l_333) > l_466[2][0]) || FAKE_DIVERGE(p_2673->local_2_offset, get_local_id(2), 10)) != l_345)) , p_55) , 0UL), p_55)), p_2673->g_380[2])), 8)))) > p_2673->g_189[p_2673->g_71]) , p_2673->g_403[2])), (****p_2673->g_255))) || (*p_2673->g_165)) || 4294967289UL);
                    for (p_2673->g_136 = 0; (p_2673->g_136 >= 0); p_2673->g_136 -= 1)
                    { /* block id: 210 */
                        uint32_t l_470 = 0x81A2D0BDL;
                        l_470++;
                        (*p_2673->g_154) |= l_466[2][0];
                    }
                }
                --p_2673->g_478;
                (*l_82) ^= (((p_2673->g_476 , (p_55 >= p_2673->g_473)) <= 18446744073709551609UL) != (safe_rshift_func_int8_t_s_u((safe_add_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((safe_mod_func_int32_t_s_s((safe_mod_func_int64_t_s_s((p_55 , ((((GROUP_DIVERGE(0, 1) && (-1L)) , l_411[0][0][6]) == &p_2673->g_84) > (*p_2673->g_165))), (-1L))), (*p_2673->g_154))), p_2673->g_87)), 0x4DE0L)), 3)));
            }
        }
        else
        { /* block id: 218 */
            uint32_t l_519 = 0UL;
            int32_t l_531[2];
            int64_t **l_553 = &l_552;
            int i;
            for (i = 0; i < 2; i++)
                l_531[i] = (-10L);
            for (p_2673->g_71 = 17; (p_2673->g_71 > 7); p_2673->g_71--)
            { /* block id: 221 */
                int64_t *l_526[6];
                int32_t l_530 = 0L;
                int i;
                for (i = 0; i < 6; i++)
                    l_526[i] = &l_422;
                for (p_2673->g_87 = 0; (p_2673->g_87 <= 7); p_2673->g_87 += 1)
                { /* block id: 224 */
                    int64_t **l_527 = (void*)0;
                    int64_t **l_528[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                    uint64_t *l_532 = &p_2673->g_84;
                    int i;
                    l_83[p_2673->g_87] = l_83[p_2673->g_87];
                    l_345 = (safe_add_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u((((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(((safe_lshift_func_int8_t_s_u(((p_55 != (safe_add_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((((safe_div_func_int64_t_s_s((safe_unary_minus_func_int64_t_s((*p_2673->g_165))), ((*l_532) = (safe_rshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(((l_519 = (**p_2673->g_257)) < (((void*)0 == &p_2673->g_66[0][0][1]) || ((*l_344) = (safe_mod_func_uint64_t_u_u((5UL >= p_55), 0x64C38AA8733E3E3FL))))), (safe_div_func_int64_t_s_s((safe_div_func_uint16_t_u_u(((l_529 = l_526[3]) != &l_197), l_530)), l_530)))), 9L)), l_531[1])), 1))))) | (*p_54)) , p_55), p_55)), 0x6E2123EAL))) < l_530), 7)) , 0x2FL), p_2673->g_425)), p_2673->g_403[1])), FAKE_DIVERGE(p_2673->group_2_offset, get_group_id(2), 10))) , p_55) == p_55))), GROUP_DIVERGE(1, 1)));
                    (*p_2673->g_533) = p_54;
                    l_530 = (safe_lshift_func_uint8_t_u_s((safe_add_func_uint16_t_u_u(p_2673->g_138, (safe_rshift_func_int8_t_s_s(0x35L, 5)))), 2));
                }
            }
            (*l_81) = (safe_rshift_func_uint8_t_u_u((((0x59L | (((*l_529) = ((*p_2673->g_165) &= p_55)) && (((safe_mod_func_uint8_t_u_u(p_55, p_2673->g_4)) , ((safe_rshift_func_int16_t_s_s(p_2673->g_185[1][3], ((((((safe_rshift_func_int8_t_s_s(p_2673->g_401, (0xAAL || 0L))) < (((*l_553) = l_552) != &p_2673->g_403[0])) == p_55) & 0x51L) < (*p_2673->g_154)) , p_2673->g_4))) < (*p_2673->g_258))) >= (*p_54)))) , 0x6974L) || 1UL), l_531[1]));
        }
    }
    return l_386;
}


/* ------------------------------------------ */
/* 
 * reads : p_2673->g_70 p_2673->g_71 p_2673->g_66
 * writes: p_2673->g_71
 */
uint32_t * func_58(int32_t * p_59, int64_t  p_60, int64_t  p_61, int32_t  p_62, struct S0 * p_2673)
{ /* block id: 15 */
    int32_t *l_69 = &p_2673->g_3[3][3][1];
    uint32_t *l_76 = &p_2673->g_22;
    uint32_t **l_75[4][1][3] = {{{(void*)0,&l_76,(void*)0}},{{(void*)0,&l_76,(void*)0}},{{(void*)0,&l_76,(void*)0}},{{(void*)0,&l_76,(void*)0}}};
    uint32_t ***l_77 = &l_75[3][0][2];
    int i, j, k;
    for (p_60 = 0; (p_60 <= 13); ++p_60)
    { /* block id: 18 */
        int32_t **l_72 = (void*)0;
        int32_t **l_74 = &l_69;
        (*p_2673->g_70) |= ((void*)0 == l_69);
        (*l_74) = ((+p_2673->g_66[0][0][1]) , &p_2673->g_3[2][2][4]);
    }
    (*l_77) = l_75[3][0][2];
    return &p_2673->g_22;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_2674;
    struct S0* p_2673 = &c_2674;
    struct S0 c_2675 = {
        {{{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL}},{{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL}},{{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL}},{{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL},{0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL,0x2C7C8A6BL,(-6L),0x2C7C8A6BL}}}, // p_2673->g_3
        1L, // p_2673->g_4
        1UL, // p_2673->g_22
        {{{0x020FL,0x020FL,0x020FL,0x020FL},{0x020FL,0x020FL,0x020FL,0x020FL}}}, // p_2673->g_66
        0x781F13D4L, // p_2673->g_71
        &p_2673->g_71, // p_2673->g_70
        (void*)0, // p_2673->g_73
        18446744073709551615UL, // p_2673->g_84
        8UL, // p_2673->g_87
        0x9B06ECFBL, // p_2673->g_104
        {{&p_2673->g_104,&p_2673->g_104},{&p_2673->g_104,&p_2673->g_104},{&p_2673->g_104,&p_2673->g_104},{&p_2673->g_104,&p_2673->g_104},{&p_2673->g_104,&p_2673->g_104},{&p_2673->g_104,&p_2673->g_104},{&p_2673->g_104,&p_2673->g_104},{&p_2673->g_104,&p_2673->g_104},{&p_2673->g_104,&p_2673->g_104},{&p_2673->g_104,&p_2673->g_104}}, // p_2673->g_103
        0L, // p_2673->g_116
        4L, // p_2673->g_136
        248UL, // p_2673->g_138
        0x63L, // p_2673->g_141
        0x1864EC0BL, // p_2673->g_142
        &p_2673->g_142, // p_2673->g_154
        4L, // p_2673->g_166
        &p_2673->g_166, // p_2673->g_165
        {{(-7L),0x41L,0x46L,0x41L,(-7L),(-7L),0x41L},{(-7L),0x41L,0x46L,0x41L,(-7L),(-7L),0x41L},{(-7L),0x41L,0x46L,0x41L,(-7L),(-7L),0x41L},{(-7L),0x41L,0x46L,0x41L,(-7L),(-7L),0x41L}}, // p_2673->g_185
        {0L}, // p_2673->g_189
        {{1UL,0x5FL,0UL,0xB8L,247UL,0x5CL,0x5CL,247UL,0xB8L,0UL},{1UL,0x5FL,0UL,0xB8L,247UL,0x5CL,0x5CL,247UL,0xB8L,0UL},{1UL,0x5FL,0UL,0xB8L,247UL,0x5CL,0x5CL,247UL,0xB8L,0UL},{1UL,0x5FL,0UL,0xB8L,247UL,0x5CL,0x5CL,247UL,0xB8L,0UL},{1UL,0x5FL,0UL,0xB8L,247UL,0x5CL,0x5CL,247UL,0xB8L,0UL},{1UL,0x5FL,0UL,0xB8L,247UL,0x5CL,0x5CL,247UL,0xB8L,0UL},{1UL,0x5FL,0UL,0xB8L,247UL,0x5CL,0x5CL,247UL,0xB8L,0UL}}, // p_2673->g_259
        &p_2673->g_259[4][0], // p_2673->g_258
        &p_2673->g_258, // p_2673->g_257
        {&p_2673->g_257,&p_2673->g_257,&p_2673->g_257,&p_2673->g_257,&p_2673->g_257,&p_2673->g_257,&p_2673->g_257,&p_2673->g_257}, // p_2673->g_256
        &p_2673->g_256[2], // p_2673->g_255
        0x3EL, // p_2673->g_274
        {{8UL,8UL,8UL}}, // p_2673->g_300
        0UL, // p_2673->g_310
        {{(void*)0,(void*)0,(void*)0}}, // p_2673->g_351
        &p_2673->g_351[0][2], // p_2673->g_350
        &p_2673->g_350, // p_2673->g_349
        {0xF30F5FABL,0xF30F5FABL,0xF30F5FABL,0xF30F5FABL}, // p_2673->g_380
        (-7L), // p_2673->g_401
        {1L,1L,1L}, // p_2673->g_403
        0L, // p_2673->g_425
        (void*)0, // p_2673->g_428
        (void*)0, // p_2673->g_429
        &p_2673->g_154, // p_2673->g_430
        0x0CE895B4131A003FL, // p_2673->g_441
        0L, // p_2673->g_442
        0x7548L, // p_2673->g_443
        &p_2673->g_154, // p_2673->g_446
        0x48L, // p_2673->g_468
        (-1L), // p_2673->g_473
        (-1L), // p_2673->g_476
        0x6AB9E2B4L, // p_2673->g_477
        4294967289UL, // p_2673->g_478
        &p_2673->g_154, // p_2673->g_533
        0x4899L, // p_2673->g_616
        {{{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL}},{{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL},{65535UL,0x4E44L,0xFA2DL,0x4E44L,65535UL,0x5328L,65535UL,6UL,0xD3AAL,5UL}}}, // p_2673->g_722
        0xB6FB06895D6215CAL, // p_2673->g_734
        (-1L), // p_2673->g_775
        &p_2673->g_775, // p_2673->g_774
        0L, // p_2673->g_805
        1L, // p_2673->g_806
        {&p_2673->g_805,&p_2673->g_805,&p_2673->g_805,&p_2673->g_805,&p_2673->g_805,&p_2673->g_805,&p_2673->g_805,&p_2673->g_805,&p_2673->g_805}, // p_2673->g_804
        {&p_2673->g_804[4],&p_2673->g_804[4],&p_2673->g_804[4],&p_2673->g_804[4],&p_2673->g_804[4]}, // p_2673->g_803
        {{{2L,(-1L),0x225CFB3DL,0x56BA7241L,(-1L),0x56BA7241L},{2L,(-1L),0x225CFB3DL,0x56BA7241L,(-1L),0x56BA7241L}},{{2L,(-1L),0x225CFB3DL,0x56BA7241L,(-1L),0x56BA7241L},{2L,(-1L),0x225CFB3DL,0x56BA7241L,(-1L),0x56BA7241L}},{{2L,(-1L),0x225CFB3DL,0x56BA7241L,(-1L),0x56BA7241L},{2L,(-1L),0x225CFB3DL,0x56BA7241L,(-1L),0x56BA7241L}}}, // p_2673->g_828
        (-3L), // p_2673->g_831
        18446744073709551609UL, // p_2673->g_832
        (void*)0, // p_2673->g_885
        0x63868B0EL, // p_2673->g_932
        65535UL, // p_2673->g_933
        &p_2673->g_136, // p_2673->g_941
        &p_2673->g_941, // p_2673->g_940
        &p_2673->g_154, // p_2673->g_945
        &p_2673->g_154, // p_2673->g_1014
        (void*)0, // p_2673->g_1064
        &p_2673->g_154, // p_2673->g_1065
        &p_2673->g_165, // p_2673->g_1111
        0x752AB47FL, // p_2673->g_1142
        0x559DAFD0L, // p_2673->g_1143
        {0L}, // p_2673->g_1144
        (-1L), // p_2673->g_1145
        {{{2L}},{{2L}},{{2L}}}, // p_2673->g_1146
        {0x43BC5A82L,0x43BC5A82L}, // p_2673->g_1147
        0x6162ADB2L, // p_2673->g_1148
        0x08E4A95FFB7A4A3FL, // p_2673->g_1149
        (void*)0, // p_2673->g_1184
        &p_2673->g_1184, // p_2673->g_1183
        {0xB4C2L,0xB4C2L,0xB4C2L,0xB4C2L,0xB4C2L,0xB4C2L}, // p_2673->g_1191
        65535UL, // p_2673->g_1207
        &p_2673->g_154, // p_2673->g_1208
        &p_2673->g_71, // p_2673->g_1252
        &p_2673->g_154, // p_2673->g_1255
        {{{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]}},{{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]}},{{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]}},{{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]},{&p_2673->g_142,&p_2673->g_3[0][0][5],(void*)0,&p_2673->g_3[0][0][5],&p_2673->g_142,&p_2673->g_142,&p_2673->g_3[0][0][5]}}}, // p_2673->g_1335
        {{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}},{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}},{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}},{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}},{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}},{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}},{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}},{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}},{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}},{{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL},{0x80L,0xDFL}}}, // p_2673->g_1374
        0x9AD5457DL, // p_2673->g_1438
        &p_2673->g_1335[1][1][5], // p_2673->g_1439
        &p_2673->g_1335[3][2][4], // p_2673->g_1440
        {0xDE74C0CCL,4UL,0xDE74C0CCL,0xDE74C0CCL,4UL,0xDE74C0CCL,0xDE74C0CCL}, // p_2673->g_1493
        &p_2673->g_425, // p_2673->g_1588
        &p_2673->g_1588, // p_2673->g_1587
        (void*)0, // p_2673->g_1657
        0x8BC378BCL, // p_2673->g_1739
        8UL, // p_2673->g_1758
        0x0FD43984L, // p_2673->g_1828
        0x3F1DL, // p_2673->g_1830
        &p_2673->g_1493[3], // p_2673->g_1867
        &p_2673->g_154, // p_2673->g_1879
        (void*)0, // p_2673->g_1936
        &p_2673->g_1145, // p_2673->g_1969
        &p_2673->g_1969, // p_2673->g_1968
        {&p_2673->g_1335[3][2][4],&p_2673->g_1335[3][2][4],&p_2673->g_1335[3][2][4],&p_2673->g_1335[3][2][4],&p_2673->g_1335[3][2][4],&p_2673->g_1335[3][2][4],&p_2673->g_1335[3][2][4],&p_2673->g_1335[3][2][4]}, // p_2673->g_2110
        &p_2673->g_154, // p_2673->g_2123
        0L, // p_2673->g_2181
        0xC331A2D7L, // p_2673->g_2233
        4294967294UL, // p_2673->g_2248
        {(void*)0,(void*)0,(void*)0}, // p_2673->g_2259
        0x53L, // p_2673->g_2262
        1UL, // p_2673->g_2304
        0UL, // p_2673->g_2344
        &p_2673->g_1588, // p_2673->g_2351
        {{{&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0},{&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0}},{{&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0},{&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0}},{{&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0},{&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0,&p_2673->g_103[0][0],&p_2673->g_103[0][0],(void*)0}}}, // p_2673->g_2356
        &p_2673->g_1588, // p_2673->g_2408
        &p_2673->g_2408, // p_2673->g_2407
        4294967295UL, // p_2673->g_2474
        18446744073709551615UL, // p_2673->g_2512
        {{0x35128383L,0x0C180EE8L,0x0DA03014L,0x0C180EE8L,0x35128383L,0x35128383L,0x0C180EE8L},{0x35128383L,0x0C180EE8L,0x0DA03014L,0x0C180EE8L,0x35128383L,0x35128383L,0x0C180EE8L}}, // p_2673->g_2574
        {{&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304},{&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304},{&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304},{&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304},{&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304,&p_2673->g_2304}}, // p_2673->g_2618
        {{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]},{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]},{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]},{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]},{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]},{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]},{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]},{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]},{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]},{&p_2673->g_2618[0][2],&p_2673->g_2618[3][0],&p_2673->g_2618[0][2],&p_2673->g_2618[2][3],(void*)0,&p_2673->g_2618[0][2]}}, // p_2673->g_2617
        &p_2673->g_2617[5][1], // p_2673->g_2616
        0x69EF1E536DFE1596L, // p_2673->g_2639
        0xFEA86431EF1BC0BEL, // p_2673->g_2651
        0, // p_2673->v_collective
        sequence_input[get_global_id(0)], // p_2673->global_0_offset
        sequence_input[get_global_id(1)], // p_2673->global_1_offset
        sequence_input[get_global_id(2)], // p_2673->global_2_offset
        sequence_input[get_local_id(0)], // p_2673->local_0_offset
        sequence_input[get_local_id(1)], // p_2673->local_1_offset
        sequence_input[get_local_id(2)], // p_2673->local_2_offset
        sequence_input[get_group_id(0)], // p_2673->group_0_offset
        sequence_input[get_group_id(1)], // p_2673->group_1_offset
        sequence_input[get_group_id(2)], // p_2673->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_2674 = c_2675;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2673);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_2673->g_3[i][j][k], "p_2673->g_3[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2673->g_4, "p_2673->g_4", print_hash_value);
    transparent_crc(p_2673->g_22, "p_2673->g_22", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2673->g_66[i][j][k], "p_2673->g_66[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2673->g_71, "p_2673->g_71", print_hash_value);
    transparent_crc(p_2673->g_84, "p_2673->g_84", print_hash_value);
    transparent_crc(p_2673->g_87, "p_2673->g_87", print_hash_value);
    transparent_crc(p_2673->g_104, "p_2673->g_104", print_hash_value);
    transparent_crc(p_2673->g_116, "p_2673->g_116", print_hash_value);
    transparent_crc(p_2673->g_136, "p_2673->g_136", print_hash_value);
    transparent_crc(p_2673->g_138, "p_2673->g_138", print_hash_value);
    transparent_crc(p_2673->g_141, "p_2673->g_141", print_hash_value);
    transparent_crc(p_2673->g_142, "p_2673->g_142", print_hash_value);
    transparent_crc(p_2673->g_166, "p_2673->g_166", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2673->g_185[i][j], "p_2673->g_185[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2673->g_189[i], "p_2673->g_189[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2673->g_259[i][j], "p_2673->g_259[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2673->g_274, "p_2673->g_274", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2673->g_300[i][j], "p_2673->g_300[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2673->g_310, "p_2673->g_310", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2673->g_380[i], "p_2673->g_380[i]", print_hash_value);

    }
    transparent_crc(p_2673->g_401, "p_2673->g_401", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2673->g_403[i], "p_2673->g_403[i]", print_hash_value);

    }
    transparent_crc(p_2673->g_425, "p_2673->g_425", print_hash_value);
    transparent_crc(p_2673->g_441, "p_2673->g_441", print_hash_value);
    transparent_crc(p_2673->g_442, "p_2673->g_442", print_hash_value);
    transparent_crc(p_2673->g_443, "p_2673->g_443", print_hash_value);
    transparent_crc(p_2673->g_468, "p_2673->g_468", print_hash_value);
    transparent_crc(p_2673->g_473, "p_2673->g_473", print_hash_value);
    transparent_crc(p_2673->g_476, "p_2673->g_476", print_hash_value);
    transparent_crc(p_2673->g_477, "p_2673->g_477", print_hash_value);
    transparent_crc(p_2673->g_478, "p_2673->g_478", print_hash_value);
    transparent_crc(p_2673->g_616, "p_2673->g_616", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_2673->g_722[i][j][k], "p_2673->g_722[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2673->g_734, "p_2673->g_734", print_hash_value);
    transparent_crc(p_2673->g_775, "p_2673->g_775", print_hash_value);
    transparent_crc(p_2673->g_805, "p_2673->g_805", print_hash_value);
    transparent_crc(p_2673->g_806, "p_2673->g_806", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2673->g_828[i][j][k], "p_2673->g_828[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2673->g_831, "p_2673->g_831", print_hash_value);
    transparent_crc(p_2673->g_832, "p_2673->g_832", print_hash_value);
    transparent_crc(p_2673->g_932, "p_2673->g_932", print_hash_value);
    transparent_crc(p_2673->g_933, "p_2673->g_933", print_hash_value);
    transparent_crc(p_2673->g_1142, "p_2673->g_1142", print_hash_value);
    transparent_crc(p_2673->g_1143, "p_2673->g_1143", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2673->g_1144[i], "p_2673->g_1144[i]", print_hash_value);

    }
    transparent_crc(p_2673->g_1145, "p_2673->g_1145", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2673->g_1146[i][j][k], "p_2673->g_1146[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2673->g_1147[i], "p_2673->g_1147[i]", print_hash_value);

    }
    transparent_crc(p_2673->g_1148, "p_2673->g_1148", print_hash_value);
    transparent_crc(p_2673->g_1149, "p_2673->g_1149", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2673->g_1191[i], "p_2673->g_1191[i]", print_hash_value);

    }
    transparent_crc(p_2673->g_1207, "p_2673->g_1207", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2673->g_1374[i][j][k], "p_2673->g_1374[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2673->g_1438, "p_2673->g_1438", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2673->g_1493[i], "p_2673->g_1493[i]", print_hash_value);

    }
    transparent_crc(p_2673->g_1739, "p_2673->g_1739", print_hash_value);
    transparent_crc(p_2673->g_1758, "p_2673->g_1758", print_hash_value);
    transparent_crc(p_2673->g_1828, "p_2673->g_1828", print_hash_value);
    transparent_crc(p_2673->g_1830, "p_2673->g_1830", print_hash_value);
    transparent_crc(p_2673->g_2181, "p_2673->g_2181", print_hash_value);
    transparent_crc(p_2673->g_2233, "p_2673->g_2233", print_hash_value);
    transparent_crc(p_2673->g_2248, "p_2673->g_2248", print_hash_value);
    transparent_crc(p_2673->g_2262, "p_2673->g_2262", print_hash_value);
    transparent_crc(p_2673->g_2304, "p_2673->g_2304", print_hash_value);
    transparent_crc(p_2673->g_2344, "p_2673->g_2344", print_hash_value);
    transparent_crc(p_2673->g_2474, "p_2673->g_2474", print_hash_value);
    transparent_crc(p_2673->g_2512, "p_2673->g_2512", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2673->g_2574[i][j], "p_2673->g_2574[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2673->g_2639, "p_2673->g_2639", print_hash_value);
    transparent_crc(p_2673->g_2651, "p_2673->g_2651", print_hash_value);
    transparent_crc(p_2673->v_collective, "p_2673->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
