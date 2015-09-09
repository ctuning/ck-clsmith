// ---fake_divergence -g 34,75,1 -l 2,5,1
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


// Seed: 43

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_3[1][1];
    int32_t g_4;
    int32_t g_6;
    int8_t g_79[8];
    int16_t g_81;
    uint16_t g_83;
    volatile int32_t * volatile *g_86;
    uint16_t g_103[8];
    uint32_t g_143;
    uint32_t g_146;
    uint8_t g_147;
    int32_t g_150;
    int32_t *g_152[10][9];
    int32_t **g_185;
    uint64_t g_222;
    int8_t g_228[4];
    int32_t g_231;
    int32_t g_235[10];
    int8_t g_236[5];
    uint32_t g_237;
    int32_t g_244;
    volatile int8_t * volatile g_301;
    volatile int8_t * volatile * volatile g_300;
    uint64_t g_316;
    int64_t g_325;
    int32_t ***g_351;
    int32_t ****g_350;
    uint16_t g_361;
    volatile int32_t ** volatile g_364;
    uint32_t *g_369;
    int32_t * volatile g_433;
    uint32_t g_463;
    int32_t *g_472;
    int32_t ** volatile g_471[8][4];
    int32_t ** volatile g_473;
    uint32_t g_505;
    uint8_t *g_516;
    uint8_t **g_515;
    volatile int64_t g_534;
    volatile int64_t * volatile g_533;
    uint32_t g_603[10];
    int64_t *** volatile g_607;
    uint64_t g_616[9][10][2];
    uint64_t g_646;
    volatile uint8_t g_693;
    uint32_t g_695;
    uint64_t *g_703[1];
    uint64_t **g_702;
    uint64_t *g_746;
    uint16_t * volatile * volatile g_760;
    uint64_t g_800;
    int8_t *g_929;
    int8_t **g_928;
    int8_t ***g_927;
    uint64_t g_946[6];
    volatile int64_t g_954;
    volatile int64_t * volatile g_953;
    volatile int64_t * volatile *g_952;
    uint32_t g_993;
    int32_t ****g_1016[8][2];
    int64_t g_1133;
    uint8_t g_1187;
    int32_t g_1261;
    uint32_t g_1265[5];
    int32_t g_1351;
    int64_t *g_1390;
    int64_t **g_1389;
    volatile uint8_t g_1446;
    int32_t *g_1454;
    int32_t **g_1453;
    int32_t *** volatile g_1452;
    volatile uint32_t * volatile *g_1507;
    volatile uint64_t *g_1513;
    volatile uint64_t * volatile *g_1512;
    volatile uint32_t g_1524;
    int64_t g_1570;
    int32_t * volatile g_1584;
    uint8_t g_1665;
    int32_t * volatile *g_1707;
    volatile int64_t g_1758;
    int8_t **** volatile g_1813;
    volatile int16_t *g_1852;
    volatile int16_t ** volatile g_1851;
    volatile uint8_t g_1854;
    volatile uint8_t *g_1853;
    int32_t * volatile g_1876;
    volatile int8_t g_1889[2][9];
    int16_t *g_1926;
    int16_t * volatile * volatile g_1925;
    int16_t * volatile * volatile *g_1924;
    volatile uint32_t g_1981;
    uint32_t g_2013;
    int32_t g_2099;
    volatile int32_t * volatile g_2104;
    volatile int32_t * volatile * volatile g_2106;
    uint32_t *g_2122;
    uint32_t **g_2121;
    uint32_t **g_2127;
    uint32_t ***g_2149[5][4][9];
    volatile uint8_t g_2213[7];
    int32_t g_2226;
    int32_t ***g_2305[10];
    int32_t ****g_2304;
    uint16_t g_2390[10][3][7];
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
uint16_t  func_1(struct S0 * p_2391);
int32_t  func_17(int32_t * p_18, uint8_t  p_19, int32_t * p_20, int32_t * p_21, struct S0 * p_2391);
int32_t  func_26(int32_t * p_27, int32_t * p_28, struct S0 * p_2391);
int32_t * func_29(int32_t * p_30, int32_t  p_31, uint32_t  p_32, struct S0 * p_2391);
int32_t * func_33(int8_t  p_34, int32_t * p_35, uint32_t  p_36, int32_t * p_37, struct S0 * p_2391);
int8_t  func_38(int32_t * p_39, int32_t  p_40, int32_t  p_41, uint16_t  p_42, int32_t * p_43, struct S0 * p_2391);
uint64_t  func_49(int32_t * p_50, uint64_t  p_51, struct S0 * p_2391);
int32_t * func_52(int32_t  p_53, uint16_t  p_54, int16_t  p_55, int32_t * p_56, struct S0 * p_2391);
uint8_t  func_59(int64_t  p_60, int32_t  p_61, int64_t  p_62, int32_t * p_63, struct S0 * p_2391);
int64_t  func_64(uint16_t  p_65, uint32_t  p_66, int64_t  p_67, int32_t * p_68, int64_t  p_69, struct S0 * p_2391);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2391->g_4 p_2391->g_6 p_2391->g_1133 p_2391->g_1926 p_2391->g_81 p_2391->g_702 p_2391->g_703 p_2391->g_222 p_2391->g_1925 p_2391->g_472 p_2391->g_185 p_2391->g_152 p_2391->g_800 p_2391->g_236 p_2391->g_1707 p_2391->g_150 p_2391->g_237 p_2391->g_516 p_2391->g_147 p_2391->g_533 p_2391->g_534 p_2391->g_515 p_2391->g_2122 p_2391->g_146 p_2391->g_603 p_2391->g_1265 p_2391->g_952 p_2391->g_953 p_2391->g_954 p_2391->g_463 p_2391->g_2121 p_2391->g_2127 p_2391->g_2390 p_2391->g_1584 p_2391->g_1351 p_2391->g_2106 p_2391->g_2104
 * writes: p_2391->g_4 p_2391->g_1133 p_2391->g_237 p_2391->g_2149 p_2391->g_150 p_2391->g_800 p_2391->g_236 p_2391->g_222 p_2391->g_152 p_2391->g_147 p_2391->g_81 p_2391->g_146 p_2391->g_2390 p_2391->g_3
 */
uint16_t  func_1(struct S0 * p_2391)
{ /* block id: 4 */
    uint64_t l_2[10] = {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL};
    int32_t l_12 = 0L;
    int32_t l_13[10] = {0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL};
    uint64_t l_14 = 0UL;
    int32_t *l_2052 = (void*)0;
    uint64_t l_2076 = 0x85FC6E121EBDCABCL;
    int64_t *l_2100 = &p_2391->g_325;
    int32_t l_2102 = 0x288544C5L;
    uint8_t l_2103 = 3UL;
    uint32_t **l_2125 = &p_2391->g_2122;
    uint32_t **l_2221 = &p_2391->g_2122;
    int32_t l_2225 = 0x79F67763L;
    uint32_t l_2237[10][6] = {{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL},{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL},{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL},{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL},{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL},{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL},{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL},{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL},{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL},{1UL,4294967295UL,4294967295UL,1UL,1UL,4294967295UL}};
    int8_t l_2245[2][7][9] = {{{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L}},{{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L},{0x04L,0x31L,0x01L,(-5L),(-5L),0x01L,0x31L,0x04L,0x43L}}};
    int32_t ***l_2269 = &p_2391->g_1453;
    uint8_t l_2283[3];
    int16_t ****l_2286 = (void*)0;
    int32_t ***l_2299 = &p_2391->g_185;
    int16_t l_2303 = 0x7426L;
    uint64_t ***l_2307 = &p_2391->g_702;
    uint32_t l_2314 = 4294967292UL;
    int8_t ***l_2350 = &p_2391->g_928;
    uint8_t **l_2369[5][3][9] = {{{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516}},{{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516}},{{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516}},{{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516}},{{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516},{&p_2391->g_516,(void*)0,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516,&p_2391->g_516}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_2283[i] = 0xA1L;
    for (p_2391->g_4 = 9; (p_2391->g_4 >= 1); p_2391->g_4 -= 1)
    { /* block id: 7 */
        int32_t *l_5 = &p_2391->g_6;
        int32_t *l_7 = &p_2391->g_6;
        int32_t l_8 = 0x3F0BC502L;
        int32_t *l_9 = &l_8;
        int32_t *l_10 = &l_8;
        int32_t *l_11[3][1];
        int32_t *l_1501[4] = {&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4};
        uint32_t l_2057 = 8UL;
        int64_t *l_2089 = &p_2391->g_325;
        uint64_t l_2096 = 0xA2A0458C015990A0L;
        int32_t l_2097 = 0x7A46318FL;
        uint32_t ***l_2150 = (void*)0;
        int8_t *l_2155[3];
        uint16_t l_2172 = 65535UL;
        int32_t *l_2173 = &l_13[4];
        int32_t l_2192 = 0L;
        uint64_t l_2212 = 1UL;
        int32_t l_2223 = (-1L);
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_11[i][j] = &l_8;
        }
        for (i = 0; i < 3; i++)
            l_2155[i] = &p_2391->g_79[6];
        --l_14;
        for (l_14 = 3; (l_14 <= 9); l_14 += 1)
        { /* block id: 11 */
            return p_2391->g_6;
        }
        if ((*l_7))
            continue;
    }
    for (p_2391->g_1133 = (-1); (p_2391->g_1133 == (-7)); --p_2391->g_1133)
    { /* block id: 1040 */
        int8_t l_2236 = 0x0EL;
        uint32_t ***l_2239 = &l_2125;
        int32_t l_2241 = (-1L);
        int32_t l_2244[6][5][8] = {{{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL}},{{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL}},{{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL}},{{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL}},{{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL}},{{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL},{0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL,0x58E79FDCL}}};
        int32_t **l_2308 = (void*)0;
        int i, j, k;
        for (p_2391->g_237 = 0; (p_2391->g_237 <= 1); p_2391->g_237 += 1)
        { /* block id: 1043 */
            int8_t l_2238[1];
            int32_t l_2240 = 2L;
            int32_t *l_2242 = &p_2391->g_4;
            int32_t *l_2243[9];
            uint8_t l_2246[1];
            int i;
            for (i = 0; i < 1; i++)
                l_2238[i] = 0x7DL;
            for (i = 0; i < 9; i++)
                l_2243[i] = &l_2240;
            for (i = 0; i < 1; i++)
                l_2246[i] = 252UL;
            (*p_2391->g_472) &= (((safe_mod_func_int64_t_s_s(((safe_lshift_func_uint8_t_u_s(((((l_2236 ^ l_2237[0][1]) && (l_2238[0] | l_2238[0])) , (p_2391->g_2149[2][3][4] = l_2239)) == (void*)0), 5)) ^ (*p_2391->g_1926)), (**p_2391->g_702))) | 255UL) > (**p_2391->g_1925));
            (**p_2391->g_185) = (!((void*)0 == (*l_2239)));
            l_2246[0]--;
            for (p_2391->g_800 = 0; (p_2391->g_800 <= 1); p_2391->g_800 += 1)
            { /* block id: 1050 */
                int32_t l_2251 = 0x37032A69L;
                int8_t *l_2254 = &p_2391->g_236[0];
                uint16_t *l_2257[7][2][9] = {{{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361},{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361}},{{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361},{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361}},{{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361},{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361}},{{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361},{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361}},{{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361},{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361}},{{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361},{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361}},{{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361},{&p_2391->g_103[2],(void*)0,&p_2391->g_83,&p_2391->g_361,&p_2391->g_83,(void*)0,&p_2391->g_103[2],&p_2391->g_103[5],&p_2391->g_361}}};
                int32_t l_2258[7][9][4] = {{{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L}},{{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L}},{{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L}},{{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L}},{{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L}},{{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L}},{{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L},{(-1L),0x3480D378L,0x529A3635L,0L}}};
                uint16_t l_2295 = 0xFEDEL;
                int64_t l_2310 = 0x48A4DBD085EF97BFL;
                int64_t *l_2319 = &p_2391->g_325;
                int i, j, k;
                (**p_2391->g_1707) |= (safe_rshift_func_int8_t_s_s(((l_2251 || (safe_sub_func_uint32_t_u_u(0x2A67DBE3L, 0x0F359474L))) , ((*l_2254) &= l_2236)), (safe_mod_func_uint64_t_u_u(((**p_2391->g_702) = GROUP_DIVERGE(1, 1)), (0L || (l_2258[2][3][3] |= p_2391->g_81))))));
                (**p_2391->g_185) |= l_2244[3][3][6];
                for (l_2236 = 0; (l_2236 < (-2)); l_2236--)
                { /* block id: 1058 */
                    int32_t ****l_2270 = &l_2269;
                    int32_t l_2289 = 0x412B63EBL;
                    int16_t l_2297[4] = {(-3L),(-3L),(-3L),(-3L)};
                    uint32_t l_2298[4] = {0x63576A00L,0x63576A00L,0x63576A00L,0x63576A00L};
                    int32_t *l_2300 = &p_2391->g_2099;
                    int32_t **l_2301 = (void*)0;
                    int32_t **l_2302 = &l_2300;
                    int32_t *****l_2306 = &l_2270;
                    int32_t l_2311 = 0x1E8FEB3EL;
                    int32_t l_2312[7] = {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)};
                    int16_t *****l_2327 = &l_2286;
                    int i;
                    (1 + 1);
                }
                if (l_2236)
                    continue;
            }
        }
    }
    (*p_2391->g_1707) = (**l_2299);
    for (l_14 = 0; (l_14 < 57); l_14 = safe_add_func_int64_t_s_s(l_14, 2))
    { /* block id: 1098 */
        int64_t l_2342 = 0x792A51A42DC099E8L;
        int64_t *l_2348 = &p_2391->g_325;
        int32_t l_2352[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        uint8_t **l_2374 = &p_2391->g_516;
        uint8_t ***l_2375 = &l_2369[1][2][2];
        int32_t l_2386 = 0x25877B57L;
        int16_t *l_2389[10][8][3] = {{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}},{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}},{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}},{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}},{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}},{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}},{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}},{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}},{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}},{{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0},{&l_2303,&p_2391->g_81,(void*)0}}};
        int i, j, k;
        if ((0x1AL < (*p_2391->g_516)))
        { /* block id: 1099 */
            uint64_t l_2343 = 18446744073709551611UL;
            int64_t *l_2349[7][8] = {{&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,(void*)0},{&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,(void*)0},{&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,(void*)0},{&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,(void*)0},{&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,(void*)0},{&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,(void*)0},{&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,(void*)0}};
            int64_t *l_2351[2];
            int i, j;
            for (i = 0; i < 2; i++)
                l_2351[i] = &p_2391->g_1570;
            (**p_2391->g_185) ^= (safe_lshift_func_int16_t_s_u((safe_add_func_int16_t_s_s(((safe_mod_func_int64_t_s_s(((((safe_sub_func_uint64_t_u_u((safe_add_func_int16_t_s_s(((*p_2391->g_533) ^ ((safe_sub_func_uint8_t_u_u(((**p_2391->g_515) = (*p_2391->g_516)), ((4294967293UL > 8UL) ^ l_2342))) > l_2343)), ((safe_div_func_int64_t_s_s((l_2352[8] ^= (((safe_sub_func_uint8_t_u_u((l_2348 != l_2349[0][2]), (l_2350 == (void*)0))) && 0UL) ^ (*p_2391->g_2122))), p_2391->g_603[8])) == l_2343))), p_2391->g_1265[1])) , (void*)0) != (void*)0) != 0x673EL), p_2391->g_237)) , (**p_2391->g_1925)), p_2391->g_6)), 15));
        }
        else
        { /* block id: 1103 */
            (*p_2391->g_185) = (**l_2299);
        }
        (**p_2391->g_185) = ((((*l_2375) = (((**p_2391->g_2127) = (safe_add_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((safe_lshift_func_int16_t_s_s(0x1818L, 0)) ^ (safe_div_func_int16_t_s_s((safe_add_func_int64_t_s_s((safe_add_func_int32_t_s_s(((safe_mul_func_int16_t_s_s((***l_2299), GROUP_DIVERGE(0, 1))) & ((**p_2391->g_952) & (safe_add_func_uint64_t_u_u((((((&p_2391->g_516 != l_2369[1][2][2]) , (safe_mod_func_int32_t_s_s((GROUP_DIVERGE(0, 1) >= (p_2391->g_6 > (0x2BL < (((((l_2352[8] = ((safe_div_func_uint8_t_u_u(((((((*p_2391->g_1926) = l_2352[8]) && 0x6792L) >= l_2352[6]) >= l_2342) , (**p_2391->g_515)), 6UL)) <= 1UL)) != l_2342) & GROUP_DIVERGE(0, 1)) <= 0x8C2311EFL) <= p_2391->g_463)))), (-3L)))) , (*p_2391->g_516)) || l_2342) >= (**p_2391->g_2121)), (***l_2299))))), (***l_2299))), 0x548366C3AEF19382L)), p_2391->g_150))), (**p_2391->g_1707))), l_2342))) , l_2374)) == &p_2391->g_1853) > l_2342);
        (**p_2391->g_2106) = ((safe_lshift_func_uint8_t_u_u(0UL, (safe_mul_func_uint8_t_u_u(((-1L) > (+((**l_2374) = ((***l_2299) != (safe_sub_func_uint32_t_u_u(8UL, (safe_sub_func_uint8_t_u_u((((**l_2125) &= (safe_div_func_int8_t_s_s(((0x2587845EL == l_2352[8]) < ((***l_2299) && (((l_2386 == FAKE_DIVERGE(p_2391->group_1_offset, get_group_id(1), 10)) > (((safe_sub_func_int16_t_s_s(((*p_2391->g_1926) = (p_2391->g_2390[6][1][5] ^= (((((0x55310F4204DF620DL && l_2352[8]) | 0x5DL) != 4L) , 0x6190L) < (*p_2391->g_1926)))), 4L)) | l_2386) <= (***l_2299))) , (*p_2391->g_953)))), 4L))) && (**p_2391->g_2127)), (***l_2299))))))))), l_2342)))) , (*p_2391->g_1584));
    }
    return (***l_2299);
}


/* ------------------------------------------ */
/* 
 * reads : p_2391->g_760
 * writes: p_2391->g_760
 */
int32_t  func_17(int32_t * p_18, uint8_t  p_19, int32_t * p_20, int32_t * p_21, struct S0 * p_2391)
{ /* block id: 979 */
    uint16_t * volatile * volatile *l_2053 = &p_2391->g_760;
    int32_t l_2054 = 0L;
    (*l_2053) = p_2391->g_760;
    return l_2054;
}


/* ------------------------------------------ */
/* 
 * reads : p_2391->g_150 p_2391->g_946 p_2391->g_746 p_2391->g_646 p_2391->g_1265 p_2391->g_1924 p_2391->g_1925 p_2391->g_1926 p_2391->g_81 p_2391->g_702 p_2391->g_703 p_2391->g_1981 p_2391->g_516 p_2391->g_147 p_2391->g_228 p_2391->g_2013 p_2391->g_616 p_2391->g_1187 p_2391->g_1351 p_2391->g_533 p_2391->g_534 p_2391->g_235 p_2391->g_4 p_2391->g_505
 * writes: p_2391->g_505 p_2391->g_79 p_2391->g_150 p_2391->g_646 p_2391->g_222 p_2391->g_81 p_2391->g_147 p_2391->g_228 p_2391->g_1570 p_2391->g_1351
 */
int32_t  func_26(int32_t * p_27, int32_t * p_28, struct S0 * p_2391)
{ /* block id: 941 */
    uint32_t l_1950 = 0UL;
    int64_t *l_1956 = (void*)0;
    int64_t **l_1955 = &l_1956;
    int64_t ***l_1954 = &l_1955;
    int32_t l_1961 = 0x595AEA55L;
    int32_t l_1987 = 0x66DAB04FL;
    int32_t ***l_2017 = &p_2391->g_1453;
    int32_t ****l_2018 = &l_2017;
    int64_t **l_2025[1][2][4];
    int32_t ***l_2030 = &p_2391->g_1453;
    uint16_t l_2034 = 0x5E35L;
    int32_t l_2037 = 0x4CB3B6ADL;
    int32_t l_2038 = 0x767553BEL;
    int32_t l_2039 = 1L;
    int32_t l_2040 = 0L;
    int32_t l_2041 = 0x5B957F64L;
    int32_t l_2042 = (-1L);
    int32_t l_2043 = (-4L);
    int32_t l_2044 = 0L;
    int32_t l_2045 = 0x3A096F6CL;
    int32_t l_2046 = 5L;
    int32_t l_2047 = (-2L);
    int32_t l_2048[2][8][4] = {{{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L}},{{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L},{(-3L),0x3C515103L,0x4A66BBB2L,0x4A66BBB2L}}};
    uint32_t l_2049 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 4; k++)
                l_2025[i][j][k] = &p_2391->g_1390;
        }
    }
lbl_2016:
    for (p_2391->g_505 = (-21); (p_2391->g_505 != 14); p_2391->g_505++)
    { /* block id: 944 */
        int64_t *l_1953 = &p_2391->g_1570;
        int64_t **l_1952 = &l_1953;
        int64_t ***l_1951 = &l_1952;
        int32_t l_1959 = 0x38F4219BL;
        int8_t *l_1960 = &p_2391->g_79[6];
        (*p_27) |= (safe_lshift_func_int8_t_s_s(0x3FL, (l_1950 , ((l_1954 = l_1951) == ((safe_add_func_uint8_t_u_u(l_1950, (l_1961 = ((*l_1960) = l_1959)))) , &l_1955)))));
    }
    for (p_2391->g_150 = 0; (p_2391->g_150 <= 4); p_2391->g_150 += 1)
    { /* block id: 952 */
        int32_t ****l_1968 = &p_2391->g_351;
        int32_t l_1982 = (-1L);
        int8_t *l_2012 = &p_2391->g_228[3];
        int32_t l_2014 = 1L;
        int64_t *l_2015 = &p_2391->g_1570;
        int i;
        l_1982 = (safe_mul_func_uint16_t_u_u(p_2391->g_946[p_2391->g_150], (p_2391->g_946[(p_2391->g_150 + 1)] ^ ((*p_27) = (((*p_2391->g_1926) = (safe_rshift_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((void*)0 == l_1968), ((++(*p_2391->g_746)) , p_2391->g_1265[p_2391->g_150]))), (safe_lshift_func_int8_t_s_s((0x771FL > (safe_div_func_uint64_t_u_u(p_2391->g_946[p_2391->g_150], ((**p_2391->g_702) = (safe_mul_func_int8_t_s_s(((safe_lshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_s((***p_2391->g_1924), ((+((+0L) | 0UL)) | 0x65L))), 4)) ^ l_1961), 0x55L)))))), 1))))) || p_2391->g_1981)))));
        (*p_27) |= (safe_add_func_int32_t_s_s((safe_add_func_uint32_t_u_u(l_1950, l_1987)), ((*p_2391->g_746) ^ l_1961)));
        l_1987 = (+(l_1961 = (~((*p_27) = ((((*l_2015) = (0x91L != (safe_rshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(l_1950, (((safe_mul_func_int8_t_s_s((&p_2391->g_1924 == ((((*p_2391->g_516)--) && (((((*p_2391->g_746) = p_2391->g_946[p_2391->g_150]) || ((1L & ((safe_mod_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((safe_div_func_uint16_t_u_u(l_1950, (safe_lshift_func_uint16_t_u_s(((safe_div_func_int32_t_s_s(((l_1950 < (**p_2391->g_1925)) & ((safe_rshift_func_int8_t_s_u(((*l_2012) &= (safe_mul_func_int16_t_s_s((0x46ECC6F8L <= 4294967295UL), 1UL))), FAKE_DIVERGE(p_2391->global_0_offset, get_global_id(0), 10))) ^ p_2391->g_2013)), p_2391->g_616[6][7][0])) ^ (*p_2391->g_516)), 4)))), 65534UL)), p_2391->g_1265[4])), l_1982)) , 65534UL)) != 0x19L)) > (*p_2391->g_1926)) >= (*p_2391->g_1926))) , (void*)0)), l_1950)) ^ p_2391->g_1187) , l_2014))), FAKE_DIVERGE(p_2391->local_1_offset, get_local_id(1), 10))))) <= l_1950) > p_2391->g_1351)))));
        if (l_1961)
            goto lbl_2016;
    }
    (*p_27) = (((*l_2018) = l_2017) == (((safe_sub_func_int16_t_s_s((-8L), (1L < ((safe_rshift_func_uint8_t_u_s((l_1950 , (((~l_1987) || (0x35B6A113L | ((safe_add_func_int8_t_s_s((-8L), (l_2025[0][1][1] != ((safe_add_func_uint64_t_u_u((safe_mod_func_int64_t_s_s((((&p_2391->g_1452 == &p_2391->g_1452) < l_1987) == l_1987), FAKE_DIVERGE(p_2391->group_2_offset, get_group_id(2), 10))), (*p_2391->g_533))) , (void*)0)))) , 4294967294UL))) && 1UL)), 7)) | l_1961)))) || 0x4FFFB5A0L) , l_2030));
    for (p_2391->g_1351 = 0; (p_2391->g_1351 >= (-22)); --p_2391->g_1351)
    { /* block id: 972 */
        int32_t *l_2033[1][8][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int i, j, k;
        if ((*p_28))
            break;
        ++l_2034;
        ++l_2049;
    }
    return l_2049;
}


/* ------------------------------------------ */
/* 
 * reads : p_2391->g_603 p_2391->g_516 p_2391->g_147 p_2391->g_143 p_2391->g_1265 p_2391->g_228 p_2391->g_473 p_2391->g_472 p_2391->g_185 p_2391->g_4 p_2391->g_695 p_2391->g_1584 p_2391->g_1261 p_2391->g_103 p_2391->g_244 p_2391->g_616 p_2391->g_463 p_2391->g_702 p_2391->g_703 p_2391->g_222 p_2391->g_237 p_2391->g_533 p_2391->g_534 p_2391->g_1665 p_2391->g_81 p_2391->g_1570 p_2391->g_1133 p_2391->g_1452 p_2391->g_1453 p_2391->g_1389 p_2391->g_1707 p_2391->g_1351 p_2391->g_236 p_2391->g_433 p_2391->g_235 p_2391->g_1758 p_2391->g_1454 p_2391->g_1524 p_2391->g_316 p_2391->g_1187 p_2391->g_1813 p_2391->g_946 p_2391->g_361 p_2391->g_146 p_2391->g_1851 p_2391->g_1853 p_2391->g_325 p_2391->g_1889 p_2391->g_746 p_2391->g_646 p_2391->g_83 p_2391->g_1390 p_2391->g_1924 p_2391->g_800 p_2391->g_952 p_2391->g_953 p_2391->g_954
 * writes: p_2391->g_147 p_2391->g_1261 p_2391->g_143 p_2391->g_152 p_2391->g_1133 p_2391->g_1570 p_2391->g_695 p_2391->g_1351 p_2391->g_236 p_2391->g_103 p_2391->g_1187 p_2391->g_81 p_2391->g_1453 p_2391->g_1390 p_2391->g_244 p_2391->g_79 p_2391->g_6 p_2391->g_235 p_2391->g_237 p_2391->g_361 p_2391->g_146 p_2391->g_946 p_2391->g_463 p_2391->g_646 p_2391->g_83 p_2391->g_800 p_2391->g_472 p_2391->g_316
 */
int32_t * func_29(int32_t * p_30, int32_t  p_31, uint32_t  p_32, struct S0 * p_2391)
{ /* block id: 725 */
    uint64_t l_1548 = 0x0F0B16E38C5B3B2AL;
    int32_t *l_1565 = &p_2391->g_4;
    int32_t **l_1638 = &p_2391->g_1454;
    uint64_t *l_1673 = &p_2391->g_616[6][7][0];
    uint64_t **l_1672 = &l_1673;
    uint64_t ***l_1671 = &l_1672;
    int32_t l_1682[4][3][5] = {{{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L},{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L},{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L}},{{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L},{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L},{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L}},{{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L},{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L},{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L}},{{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L},{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L},{0x68BA7534L,0x511BAD42L,0L,(-7L),0x511BAD42L}}};
    int8_t ***l_1812 = &p_2391->g_928;
    uint16_t *l_1817 = &p_2391->g_83;
    uint16_t **l_1816 = &l_1817;
    int32_t *****l_1855 = (void*)0;
    int32_t l_1872[8][3] = {{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L}};
    uint8_t l_1935 = 255UL;
    int i, j, k;
    for (p_31 = 1; (p_31 >= 0); p_31 -= 1)
    { /* block id: 728 */
        int32_t *l_1555 = &p_2391->g_1261;
        int32_t l_1627 = (-2L);
        int32_t l_1628[6][6][7] = {{{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L}},{{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L}},{{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L}},{{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L}},{{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L}},{{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L},{0L,0L,0x326AD965L,0L,0x7FB120BEL,0L,2L}}};
        int32_t ***l_1718 = &p_2391->g_1453;
        int16_t **l_1757 = (void*)0;
        int16_t ***l_1756[10] = {&l_1757,&l_1757,&l_1757,&l_1757,&l_1757,&l_1757,&l_1757,&l_1757,&l_1757,&l_1757};
        int8_t l_1797 = 0x3EL;
        int8_t ****l_1811[1];
        uint16_t *l_1815 = &p_2391->g_103[0];
        uint16_t **l_1814 = &l_1815;
        int32_t l_1856 = (-2L);
        int32_t l_1859[5][10] = {{0L,0L,(-1L),0x79522CB4L,0x27E43E1AL,(-10L),0x6092E16FL,0x0F2C24AEL,0x6092E16FL,(-10L)},{0L,0L,(-1L),0x79522CB4L,0x27E43E1AL,(-10L),0x6092E16FL,0x0F2C24AEL,0x6092E16FL,(-10L)},{0L,0L,(-1L),0x79522CB4L,0x27E43E1AL,(-10L),0x6092E16FL,0x0F2C24AEL,0x6092E16FL,(-10L)},{0L,0L,(-1L),0x79522CB4L,0x27E43E1AL,(-10L),0x6092E16FL,0x0F2C24AEL,0x6092E16FL,(-10L)},{0L,0L,(-1L),0x79522CB4L,0x27E43E1AL,(-10L),0x6092E16FL,0x0F2C24AEL,0x6092E16FL,(-10L)}};
        uint32_t l_1867 = 0x77FE71ADL;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1811[i] = &p_2391->g_927;
        l_1548--;
        (*l_1555) = (safe_add_func_int8_t_s_s(p_2391->g_603[(p_31 + 2)], ((*p_2391->g_516)--)));
        for (p_2391->g_143 = 0; (p_2391->g_143 <= 1); p_2391->g_143 += 1)
        { /* block id: 734 */
            uint8_t l_1558 = 0UL;
            int i, j;
            if (((p_2391->g_1265[(p_2391->g_143 + 3)] <= 1UL) , (safe_div_func_int64_t_s_s((((((p_2391->g_228[p_31] ^ (0x4F9B719CL == l_1558)) >= 1L) <= l_1548) , l_1555) == (void*)0), p_32))))
            { /* block id: 735 */
                int64_t *l_1568 = &p_2391->g_1133;
                int64_t *l_1569 = &p_2391->g_1570;
                int8_t **l_1581 = &p_2391->g_929;
                int32_t l_1582 = 0x35D73042L;
                uint32_t *l_1583 = &p_2391->g_695;
                (*p_2391->g_185) = (*p_2391->g_473);
                (*p_2391->g_1584) = (((*l_1583) |= (safe_div_func_uint8_t_u_u((~((GROUP_DIVERGE(2, 1) < (((*l_1569) = ((*l_1568) = (*l_1565))) , FAKE_DIVERGE(p_2391->global_2_offset, get_global_id(2), 10))) == ((safe_add_func_int8_t_s_s((l_1582 ^= ((p_2391->g_1265[4] & (safe_lshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s((((*l_1555) = p_31) , (safe_sub_func_int64_t_s_s((*l_1565), p_31))), (safe_add_func_int8_t_s_s(p_32, (*p_2391->g_516))))), (*p_2391->g_516)))) <= ((void*)0 == l_1581))), GROUP_DIVERGE(0, 1))) | 7L))), (*p_2391->g_516)))) , (*p_30));
            }
            else
            { /* block id: 743 */
                uint8_t l_1585 = 255UL;
                int8_t *l_1594 = &p_2391->g_236[3];
                uint16_t *l_1595 = &p_2391->g_103[0];
                int8_t ****l_1609 = &p_2391->g_927;
                int8_t *****l_1610 = &l_1609;
                int8_t ****l_1612[6][9][4] = {{{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927},{&p_2391->g_927,&p_2391->g_927,&p_2391->g_927,&p_2391->g_927}}};
                int8_t *****l_1611 = &l_1612[5][7][0];
                int i, j, k;
                if ((*l_1555))
                    break;
                (*p_2391->g_185) = (void*)0;
                l_1585--;
                (*l_1555) = (!(safe_lshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s((~(((*l_1594) = 0x35L) & ((*p_30) >= ((((*l_1555) ^ (*l_1555)) != (--(*l_1595))) || (safe_unary_minus_func_uint8_t_u(((*p_2391->g_516) = 1UL))))))), (safe_mod_func_uint16_t_u_u(0x2D71L, (safe_lshift_func_uint8_t_u_u((safe_add_func_int64_t_s_s((safe_lshift_func_int8_t_s_u((safe_add_func_uint8_t_u_u((((*l_1610) = l_1609) == ((*l_1611) = (void*)0)), (((l_1628[1][4][6] |= (!(l_1627 = ((*p_2391->g_1584) = (safe_add_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((p_2391->g_1187 = ((safe_add_func_uint64_t_u_u((safe_lshift_func_int8_t_s_u(((safe_mul_func_int16_t_s_s((safe_sub_func_int8_t_s_s((p_32 , p_31), 0L)), p_31)) <= 0L), 2)), (*l_1555))) <= 1L)) != p_32), p_2391->g_244)), p_2391->g_616[5][8][0])))))) && 0UL) != 18446744073709551610UL))), FAKE_DIVERGE(p_2391->local_2_offset, get_local_id(2), 10))), p_2391->g_463)), p_2391->g_616[3][9][0])))))), 14)));
            }
            for (p_2391->g_81 = 1; (p_2391->g_81 >= 0); p_2391->g_81 -= 1)
            { /* block id: 760 */
                uint32_t l_1629 = 0xB13BF09EL;
                if (l_1629)
                    break;
                if ((*l_1555))
                    break;
            }
        }
        for (p_2391->g_1570 = 7; (p_2391->g_1570 >= 0); p_2391->g_1570 -= 1)
        { /* block id: 767 */
            uint16_t l_1651 = 0x814CL;
            int32_t l_1652 = 0L;
            int32_t l_1663 = 0x0EEA8F60L;
            uint8_t l_1749 = 0x1AL;
            int32_t l_1798 = 0x238B06F5L;
            int32_t l_1799 = 0x0B71EDBBL;
            uint8_t l_1801 = 1UL;
            int8_t ****l_1810[6][1][5] = {{{&p_2391->g_927,(void*)0,(void*)0,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,(void*)0,(void*)0,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,(void*)0,(void*)0,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,(void*)0,(void*)0,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,(void*)0,(void*)0,&p_2391->g_927,&p_2391->g_927}},{{&p_2391->g_927,(void*)0,(void*)0,&p_2391->g_927,&p_2391->g_927}}};
            int8_t *****l_1809[3];
            int16_t ***l_1819[2][4][1];
            int16_t ***l_1820 = &l_1757;
            int32_t l_1835 = (-9L);
            int32_t l_1866 = 0x2B9607A0L;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_1809[i] = &l_1810[4][0][1];
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 4; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_1819[i][j][k] = (void*)0;
                }
            }
            l_1652 ^= ((safe_sub_func_int16_t_s_s((p_2391->g_81 = p_2391->g_1265[p_31]), 65535UL)) != ((**p_2391->g_702) < (safe_lshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((((safe_mod_func_int32_t_s_s(((void*)0 != l_1638), (safe_lshift_func_uint16_t_u_s(((p_2391->g_237 < 0x640FL) <= (safe_sub_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_rshift_func_int16_t_s_u(((((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u((*l_1565), ((*p_2391->g_516) = (p_2391->g_1265[p_31] | 0x1CL)))), (*l_1555))) == l_1651) == l_1651) || 0L), 6)), 0x53BA4B66115A3160L)), GROUP_DIVERGE(1, 1)))), p_2391->g_228[3])))) < l_1651) && p_32), p_32)), (*l_1555)))));
            if ((safe_mod_func_int16_t_s_s((p_32 || (l_1652 & ((((*l_1555) = (((-7L) != p_31) & 18446744073709551615UL)) == 0xF37FB2AFL) ^ (~(safe_add_func_int8_t_s_s((safe_div_func_int8_t_s_s(((((safe_mul_func_int8_t_s_s(0x12L, (safe_sub_func_int8_t_s_s((l_1663 = (-2L)), GROUP_DIVERGE(0, 1))))) && ((((~(safe_unary_minus_func_uint8_t_u(253UL))) <= 0x019AL) & (*p_2391->g_533)) & (*p_30))) >= 0L) || p_32), p_32)), p_2391->g_1665)))))), 65534UL)))
            { /* block id: 773 */
                uint32_t l_1670 = 7UL;
                int32_t *l_1680 = &l_1628[1][4][6];
                int16_t *l_1681 = &p_2391->g_81;
                if ((*l_1555))
                    break;
                l_1565 = (((*l_1565) && (safe_div_func_uint16_t_u_u((((l_1670 < (p_32 < (*l_1555))) , l_1671) != ((safe_sub_func_uint32_t_u_u(((safe_add_func_int64_t_s_s((((p_2391->g_4 , p_32) , (((*l_1681) |= ((safe_lshift_func_uint16_t_u_u(((((p_32 & (((*l_1680) ^= 0L) || 0x34321311L)) , (*l_1555)) != (*p_30)) <= (*l_1565)), p_31)) , p_2391->g_237)) && p_31)) != 0UL), p_31)) != (*l_1565)), l_1682[3][2][2])) , &l_1672)), p_32))) , (*p_2391->g_473));
            }
            else
            { /* block id: 778 */
                uint32_t l_1702 = 0x84CD12D3L;
                int32_t **l_1708 = (void*)0;
                int32_t l_1762 = 0x209975DBL;
                int32_t l_1788 = (-1L);
                int32_t ***l_1789 = &l_1638;
                uint64_t l_1792 = 0x26F8BF30FF738E7EL;
                int32_t l_1800 = (-5L);
                for (p_2391->g_695 = 0; (p_2391->g_695 <= 9); p_2391->g_695 += 1)
                { /* block id: 781 */
                    uint16_t l_1710 = 0x52EFL;
                    int32_t l_1712 = 0L;
                    uint16_t l_1761 = 65533UL;
                    for (p_2391->g_1133 = 0; (p_2391->g_1133 <= 9); p_2391->g_1133 += 1)
                    { /* block id: 784 */
                        int16_t l_1683 = 0x1BA8L;
                        if ((*p_30))
                            break;
                        l_1683 = (*p_30);
                    }
                    for (p_2391->g_1133 = 0; (p_2391->g_1133 <= 1); p_2391->g_1133 += 1)
                    { /* block id: 790 */
                        int32_t ***l_1690 = (void*)0;
                        int32_t ***l_1691 = &p_2391->g_1453;
                        int16_t *l_1709[1][7] = {{&p_2391->g_81,(void*)0,&p_2391->g_81,&p_2391->g_81,(void*)0,&p_2391->g_81,&p_2391->g_81}};
                        int64_t *l_1711 = &p_2391->g_325;
                        int i, j, k;
                        l_1628[(p_31 + 2)][(p_31 + 3)][(p_2391->g_1133 + 2)] ^= (p_2391->g_616[(p_2391->g_1570 + 1)][(p_31 + 8)][p_2391->g_1133] | 65535UL);
                        l_1628[p_31][p_31][p_2391->g_1133] &= ((safe_div_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((p_2391->g_81 = (safe_sub_func_uint32_t_u_u((((*l_1691) = (*p_2391->g_1452)) != ((l_1712 = ((safe_add_func_uint8_t_u_u(p_2391->g_616[p_2391->g_1570][p_2391->g_695][p_31], (((*p_2391->g_1389) = (void*)0) == ((((safe_unary_minus_func_int8_t_s(0x46L)) | (safe_mod_func_int16_t_s_s((+(l_1710 = (safe_add_func_uint64_t_u_u((safe_unary_minus_func_int8_t_s((((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), 1)) != (((((*p_2391->g_516) = FAKE_DIVERGE(p_2391->group_1_offset, get_group_id(1), 10)) , p_31) > p_32) , l_1702)) , ((safe_lshift_func_int16_t_s_s(6L, 5)) & (safe_mul_func_uint8_t_u_u((p_2391->g_1707 != l_1708), FAKE_DIVERGE(p_2391->group_1_offset, get_group_id(1), 10))))))), p_2391->g_1261)))), p_2391->g_1265[1]))) , p_2391->g_1351) , l_1711)))) && p_2391->g_1351)) , l_1638)), (*l_1565)))), 5)), p_31)) , (-6L));
                    }
                    for (p_2391->g_1261 = 6; (p_2391->g_1261 >= 1); p_2391->g_1261 -= 1)
                    { /* block id: 802 */
                        int64_t l_1715[2];
                        int8_t *l_1725[4][3] = {{&p_2391->g_79[7],&p_2391->g_79[7],&p_2391->g_79[7]},{&p_2391->g_79[7],&p_2391->g_79[7],&p_2391->g_79[7]},{&p_2391->g_79[7],&p_2391->g_79[7],&p_2391->g_79[7]},{&p_2391->g_79[7],&p_2391->g_79[7],&p_2391->g_79[7]}};
                        int32_t ***l_1726[7];
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_1715[i] = 1L;
                        for (i = 0; i < 7; i++)
                            l_1726[i] = &p_2391->g_1453;
                        (*p_2391->g_1707) = (void*)0;
                        l_1715[1] = (safe_mod_func_uint32_t_u_u(9UL, 0xF17A4597L));
                        (*p_2391->g_185) = ((((FAKE_DIVERGE(p_2391->global_0_offset, get_global_id(0), 10) >= p_31) || FAKE_DIVERGE(p_2391->group_2_offset, get_group_id(2), 10)) || ((((&l_1682[3][2][2] == (void*)0) ^ (((!(p_32 || (l_1718 != (((((p_2391->g_236[4] |= (((safe_sub_func_uint32_t_u_u((safe_add_func_uint8_t_u_u((*l_1555), ((p_2391->g_222 ^ (p_32 && ((safe_mul_func_int8_t_s_s(p_31, (*p_2391->g_516))) == (**p_2391->g_473)))) >= p_31))), p_2391->g_1665)) & p_2391->g_143) || p_32)) ^ 0x1BL) < p_31) || p_2391->g_1133) , l_1726[1])))) & 1UL) , l_1715[1])) >= p_2391->g_103[0]) , 3L)) , p_30);
                    }
                    for (l_1548 = 3; (l_1548 <= 9); l_1548 += 1)
                    { /* block id: 810 */
                        int32_t l_1759 = 0L;
                        int8_t *l_1760 = &p_2391->g_79[7];
                        l_1762 = ((safe_mul_func_uint16_t_u_u((((((((safe_sub_func_uint8_t_u_u((((FAKE_DIVERGE(p_2391->group_0_offset, get_group_id(0), 10) , ((safe_div_func_uint8_t_u_u((*p_2391->g_516), ((safe_sub_func_uint16_t_u_u((((*l_1760) = ((((**p_2391->g_1453) |= (safe_lshift_func_int16_t_s_s(((*p_2391->g_433) , ((safe_add_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(((safe_mul_func_uint8_t_u_u(246UL, (safe_add_func_int32_t_s_s((safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), 1L)), l_1749)))) > ((((safe_add_func_int16_t_s_s(p_32, (((safe_add_func_uint64_t_u_u(p_31, (((l_1712 &= (safe_sub_func_uint8_t_u_u(0xC8L, ((((((&p_2391->g_703[0] != &p_2391->g_703[0]) < 4294967288UL) <= 0x11E65105L) , (void*)0) == l_1756[8]) > p_32)))) == (*l_1555)) & p_32))) , (*p_30)) != (*l_1565)))) , GROUP_DIVERGE(1, 1)) < p_2391->g_1758) , 0xE718L)), p_32)), (*p_2391->g_472))) < GROUP_DIVERGE(0, 1))), l_1759))) , p_2391->g_1524) , 0x64L)) && 0x59L), p_2391->g_235[2])) & 18446744073709551615UL))) | l_1761)) < GROUP_DIVERGE(2, 1)) | p_2391->g_603[4]), p_32)) || (*p_30)) >= 0x47D4475DFFF23D6FL) <= p_2391->g_1351) || 0L) , 0xDD5FA826L) >= p_2391->g_1665), 0x8457L)) , (*p_2391->g_472));
                        if ((*p_30))
                            break;
                        if ((*p_30))
                            break;
                    }
                }
                for (p_2391->g_6 = 8; (p_2391->g_6 >= 1); p_2391->g_6 -= 1)
                { /* block id: 821 */
                    int16_t l_1763 = 0x4FFEL;
                    uint64_t l_1772 = 18446744073709551609UL;
                    int32_t l_1777[2][2] = {{2L,2L},{2L,2L}};
                    int32_t ****l_1790 = &l_1718;
                    uint32_t *l_1791 = &p_2391->g_695;
                    int32_t *l_1793 = &l_1628[4][0][5];
                    int32_t *l_1794 = &l_1628[0][0][0];
                    int32_t *l_1795 = (void*)0;
                    int32_t *l_1796[3][8] = {{&l_1777[1][1],&l_1788,&l_1777[1][1],&l_1777[1][1],&l_1788,&l_1777[1][1],&l_1777[1][1],&l_1788},{&l_1777[1][1],&l_1788,&l_1777[1][1],&l_1777[1][1],&l_1788,&l_1777[1][1],&l_1777[1][1],&l_1788},{&l_1777[1][1],&l_1788,&l_1777[1][1],&l_1777[1][1],&l_1788,&l_1777[1][1],&l_1777[1][1],&l_1788}};
                    int i, j;
                    l_1763 |= (*p_30);
                    (*p_2391->g_185) = (void*)0;
                    l_1792 = ((!(((safe_add_func_uint32_t_u_u(((*l_1791) = (safe_add_func_int32_t_s_s((((*l_1790) = ((((p_2391->g_316 , ((0x50B6L == l_1763) , (safe_mul_func_int8_t_s_s((safe_div_func_int32_t_s_s(l_1772, (safe_div_func_int64_t_s_s(((safe_add_func_uint8_t_u_u(((l_1777[1][1] = (*l_1555)) == ((safe_div_func_int64_t_s_s(0x0C0DACE16CA99736L, ((safe_sub_func_uint64_t_u_u((safe_div_func_uint64_t_u_u((((safe_lshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s((*l_1565), p_31)), p_32)) ^ p_31) < 0x8CCDL), (**p_2391->g_702))), p_31)) || p_2391->g_616[4][8][0]))) | l_1788)), 255UL)) | 0x0AA98AA9DF5A771BL), GROUP_DIVERGE(1, 1))))), p_32)))) , p_2391->g_1187) , 18446744073709551615UL) , l_1789)) == &p_2391->g_1453), (*l_1565)))), 0x6746CB59L)) , (*p_30)) ^ 0x0BFA22B8L)) >= 18446744073709551614UL);
                    l_1801--;
                }
            }
            if (((safe_div_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u(0xA1L)), 0x20L)) , (((((safe_add_func_int32_t_s_s(((*l_1555) ^ 0x0C9A59F925ADBDBBL), (((p_31 , ((l_1811[0] = &p_2391->g_927) != (((void*)0 != l_1812) , p_2391->g_1813))) , l_1814) != l_1816))) ^ (*p_2391->g_516)) != p_32) <= 0x2D41L) <= p_2391->g_946[2])))
            { /* block id: 832 */
                int16_t ****l_1818[6][9][4] = {{{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0}},{{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0}},{{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0}},{{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0}},{{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0}},{{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0},{&l_1756[8],&l_1756[2],(void*)0,(void*)0}}};
                uint8_t l_1831 = 252UL;
                int32_t *l_1834[8] = {&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261};
                int i, j, k;
                if (((l_1819[1][1][0] = (void*)0) != l_1820))
                { /* block id: 834 */
                    int32_t *l_1821 = &l_1799;
                    int32_t *l_1822 = &l_1652;
                    int32_t *l_1823 = &l_1682[1][0][1];
                    int32_t *l_1824 = &p_2391->g_1351;
                    int32_t *l_1825 = &l_1682[3][2][2];
                    int32_t *l_1826 = &p_2391->g_235[2];
                    int32_t *l_1827[8] = {&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261,&p_2391->g_1261};
                    uint64_t l_1828 = 0xFADBAD41D5F96C28L;
                    int i;
                    l_1828++;
                    --l_1831;
                    for (p_2391->g_1133 = 7; (p_2391->g_1133 >= 1); p_2391->g_1133 -= 1)
                    { /* block id: 839 */
                        int i;
                        (*l_1826) = 1L;
                    }
                    (*l_1555) = (*p_30);
                }
                else
                { /* block id: 843 */
                    for (p_2391->g_237 = 1; (p_2391->g_237 <= 4); p_2391->g_237 += 1)
                    { /* block id: 846 */
                        return p_30;
                    }
                    if ((*p_30))
                        continue;
                }
                (*l_1555) = (*p_30);
                return p_30;
            }
            else
            { /* block id: 853 */
                int32_t l_1838[9] = {2L,0x30DD7714L,2L,2L,0x30DD7714L,2L,2L,0x30DD7714L,2L};
                int32_t l_1862 = (-1L);
                int32_t l_1863 = 0x42B76810L;
                int32_t l_1864 = 0x5EB50A89L;
                int32_t l_1865 = 0x2258D80FL;
                int i;
                for (p_2391->g_361 = 1; (p_2391->g_361 <= 9); p_2391->g_361 += 1)
                { /* block id: 856 */
                    (*p_2391->g_1707) = (*p_2391->g_473);
                    if ((*p_30))
                        continue;
                }
                for (p_2391->g_146 = 0; (p_2391->g_146 <= 9); p_2391->g_146 += 1)
                { /* block id: 862 */
                    uint16_t l_1857 = 6UL;
                    uint32_t l_1858 = 4294967290UL;
                    int32_t *l_1860 = &p_2391->g_235[8];
                    int32_t *l_1861[6][2] = {{&p_2391->g_235[8],&l_1799},{&p_2391->g_235[8],&l_1799},{&p_2391->g_235[8],&l_1799},{&p_2391->g_235[8],&l_1799},{&p_2391->g_235[8],&l_1799},{&p_2391->g_235[8],&l_1799}};
                    int i, j;
                    for (l_1652 = 0; l_1652 < 6; l_1652 += 1)
                    {
                        p_2391->g_946[l_1652] = 0x53B918EC6A8054B1L;
                    }
                    l_1835 ^= (*p_2391->g_472);
                    (*l_1555) |= (safe_mul_func_int8_t_s_s(l_1838[7], (((*p_2391->g_1584) || (((safe_mul_func_int8_t_s_s((((((+(((safe_mod_func_int8_t_s_s((FAKE_DIVERGE(p_2391->group_1_offset, get_group_id(1), 10) , (safe_mul_func_int16_t_s_s(0x4D06L, ((**l_1814) &= (((safe_mod_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_s((p_2391->g_1851 != &p_2391->g_1852), (&p_2391->g_1016[4][0] == ((p_2391->g_1853 != (void*)0) , l_1855)))) <= p_31) <= (*p_30)), p_2391->g_325)), l_1856)) | p_31) && 9L))))), 250UL)) < p_31) < 0xF924L)) | l_1857) < l_1858) ^ p_31) > p_2391->g_235[6]), l_1858)) <= 0x06D1L) != 0x7C4BL)) && 0xBD1AL)));
                    l_1867++;
                }
            }
            (*p_2391->g_185) = (void*)0;
        }
    }
lbl_1902:
    (*p_2391->g_433) ^= (*l_1565);
    for (p_2391->g_1187 = (-14); (p_2391->g_1187 == 20); p_2391->g_1187++)
    { /* block id: 876 */
        int16_t l_1875 = 0x1972L;
        int32_t *l_1883 = &l_1682[1][1][3];
        int32_t *l_1884 = &p_2391->g_4;
        int32_t ***l_1892 = (void*)0;
        int8_t l_1927 = 0L;
        int32_t l_1931[10][6][4] = {{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}},{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}},{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}},{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}},{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}},{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}},{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}},{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}},{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}},{{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)},{1L,1L,(-3L),(-1L)}}};
        int i, j, k;
        if (l_1872[3][1])
        { /* block id: 877 */
            int32_t *l_1877[4];
            int8_t l_1878 = (-4L);
            int i;
            for (i = 0; i < 4; i++)
                l_1877[i] = &p_2391->g_150;
            l_1878 = (safe_add_func_int16_t_s_s((-1L), (p_32 || (l_1875 = 9UL))));
            for (l_1548 = 0; (l_1548 != 44); l_1548++)
            { /* block id: 882 */
                int32_t *l_1881 = &p_2391->g_235[2];
                return l_1881;
            }
        }
        else
        { /* block id: 885 */
            int32_t *l_1882 = &p_2391->g_235[3];
            l_1882 = p_30;
            (*p_2391->g_185) = l_1883;
            p_30 = l_1884;
            for (p_2391->g_463 = 0; (p_2391->g_463 < 6); p_2391->g_463 = safe_add_func_int64_t_s_s(p_2391->g_463, 4))
            { /* block id: 891 */
                int32_t ***l_1893 = &p_2391->g_185;
                int64_t *l_1894 = &p_2391->g_1133;
                uint32_t *l_1901 = &p_2391->g_146;
                int32_t l_1915 = 0x59335B4DL;
                (*l_1883) ^= (p_31 < 1L);
                (*p_2391->g_1707) = l_1882;
                if ((safe_add_func_int64_t_s_s(((*l_1894) = (p_2391->g_1889[0][4] | (0xBCE47C3FL > (((l_1892 != l_1893) && (*l_1884)) > p_32)))), (((*l_1901) = (((safe_add_func_int32_t_s_s((((**p_2391->g_702) <= (safe_add_func_int8_t_s_s((*l_1882), ((((*p_2391->g_746) ^= (safe_div_func_uint64_t_u_u((3L == 0xE23DCC22L), p_32))) != FAKE_DIVERGE(p_2391->group_2_offset, get_group_id(2), 10)) ^ 1L)))) < p_2391->g_236[4]), (*l_1884))) == p_32) <= p_2391->g_463)) & (*p_30)))))
                { /* block id: 897 */
                    if (p_2391->g_695)
                        goto lbl_1902;
                    (*p_2391->g_1707) = l_1882;
                }
                else
                { /* block id: 900 */
                    int64_t *l_1911[1];
                    int32_t l_1913[4][5][7] = {{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}}};
                    int16_t *l_1914[9][6] = {{&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&l_1875,(void*)0},{&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&l_1875,(void*)0},{&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&l_1875,(void*)0},{&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&l_1875,(void*)0},{&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&l_1875,(void*)0},{&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&l_1875,(void*)0},{&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&l_1875,(void*)0},{&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&l_1875,(void*)0},{&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&p_2391->g_81,&l_1875,(void*)0}};
                    int32_t l_1928 = 0x44AC3234L;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1911[i] = &p_2391->g_325;
                    (*p_2391->g_185) = ((!((**l_1816) &= 1UL)) , (void*)0);
                    l_1913[0][2][2] = ((((safe_mul_func_uint8_t_u_u(((*l_1883) , (safe_lshift_func_int16_t_s_u((p_2391->g_81 = (l_1915 |= (((*l_1817) |= ((((*l_1894) = (-1L)) , ((safe_add_func_int16_t_s_s((safe_add_func_uint32_t_u_u(((*l_1901) ^= (((void*)0 == l_1911[0]) | (safe_unary_minus_func_int8_t_s((&p_2391->g_515 == &p_2391->g_515))))), (*l_1565))), (FAKE_DIVERGE(p_2391->global_0_offset, get_global_id(0), 10) < ((*l_1565) < ((((*p_2391->g_516) &= 255UL) < (*l_1882)) < p_31))))) > (-4L))) , 1UL)) ^ l_1913[0][2][2]))), l_1913[0][2][2]))), 3UL)) == 7L) >= (-3L)) <= (*l_1882));
                    l_1928 |= ((((((p_31 || l_1913[0][2][2]) , ((safe_sub_func_uint8_t_u_u(0xAAL, ((safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((*l_1884), 0)), (((*l_1901) = 1UL) <= 7L))) >= ((*p_2391->g_516) = ((safe_sub_func_uint64_t_u_u((l_1894 != (*p_2391->g_1389)), (l_1913[0][2][2] &= (*p_2391->g_533)))) , p_32))))) , &p_2391->g_1851)) != p_2391->g_1924) == l_1927) || 0x294844DDL) , (*p_2391->g_472));
                }
                for (p_2391->g_800 = (-5); (p_2391->g_800 <= 60); p_2391->g_800 = safe_add_func_uint16_t_u_u(p_2391->g_800, 9))
                { /* block id: 917 */
                    int32_t *l_1932 = &l_1872[3][1];
                    int32_t *l_1933 = &p_2391->g_235[2];
                    int32_t *l_1934[9][10][2] = {{{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]}},{{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]}},{{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]}},{{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]}},{{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]}},{{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]}},{{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]}},{{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]}},{{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]},{(void*)0,&l_1682[3][0][2]}}};
                    int i, j, k;
                    ++l_1935;
                    if ((*p_30))
                        break;
                    for (l_1927 = 4; (l_1927 >= 0); l_1927 -= 1)
                    { /* block id: 922 */
                        (**l_1893) = ((*p_2391->g_473) = p_30);
                        return p_30;
                    }
                }
            }
        }
        for (p_2391->g_316 = 0; (p_2391->g_316 > 3); p_2391->g_316++)
        { /* block id: 932 */
            uint64_t l_1940 = 18446744073709551615UL;
            int32_t l_1943 = 0L;
            if (l_1940)
                break;
            if (l_1940)
                break;
            (*l_1883) = (safe_sub_func_int64_t_s_s((**p_2391->g_952), ((*p_2391->g_746)++)));
        }
        (*p_2391->g_433) ^= (-3L);
    }
    return p_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_2391->g_185 p_2391->g_4 p_2391->g_1507 p_2391->g_1512 p_2391->g_516 p_2391->g_1187 p_2391->g_746 p_2391->g_646 p_2391->g_147 p_2391->g_1524 p_2391->g_695 p_2391->g_1261
 * writes: p_2391->g_152 p_2391->g_147 p_2391->g_1187 p_2391->g_1524 p_2391->g_1133 p_2391->g_695 p_2391->g_146
 */
int32_t * func_33(int8_t  p_34, int32_t * p_35, uint32_t  p_36, int32_t * p_37, struct S0 * p_2391)
{ /* block id: 703 */
    int32_t *l_1502 = &p_2391->g_4;
    uint32_t *l_1509[5][1];
    uint32_t **l_1508 = &l_1509[2][0];
    uint8_t *l_1514 = &p_2391->g_1187;
    int8_t ***l_1532 = &p_2391->g_928;
    uint64_t *l_1546 = (void*)0;
    uint64_t **l_1545[3];
    uint64_t ***l_1547 = &l_1545[1];
    int i, j;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_1509[i][j] = (void*)0;
    }
    for (i = 0; i < 3; i++)
        l_1545[i] = &l_1546;
    (*p_2391->g_185) = l_1502;
    if (((safe_lshift_func_uint8_t_u_s((*l_1502), ((~0x2A85L) || (safe_rshift_func_int8_t_s_u(((p_2391->g_1507 == l_1508) || 0x2EF9L), ((*l_1514) ^= (safe_mod_func_int32_t_s_s(((!(*l_1502)) < (((void*)0 != &p_37) || ((*p_2391->g_516) = (p_2391->g_1512 != &p_2391->g_1513)))), 0x623A3EF2L)))))))) <= (*p_2391->g_746)))
    { /* block id: 707 */
        return p_37;
    }
    else
    { /* block id: 709 */
        int64_t *l_1531 = &p_2391->g_1133;
        int32_t l_1543 = 0x6D658044L;
        uint32_t l_1544 = 5UL;
        for (p_2391->g_147 = (-5); (p_2391->g_147 != 43); p_2391->g_147 = safe_add_func_uint32_t_u_u(p_2391->g_147, 9))
        { /* block id: 712 */
            uint32_t l_1517 = 4294967294UL;
            int32_t *l_1518 = (void*)0;
            int32_t *l_1519 = &p_2391->g_6;
            int32_t *l_1520 = &p_2391->g_1261;
            int32_t *l_1521 = &p_2391->g_1261;
            int32_t *l_1522 = &p_2391->g_1261;
            int32_t *l_1523[3][7] = {{&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351},{&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351},{&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351,&p_2391->g_1351}};
            int i, j;
            (*p_37) = l_1517;
            (*p_2391->g_185) = p_37;
            if ((*l_1502))
                continue;
            p_2391->g_1524++;
        }
        (*p_37) = (safe_mod_func_uint16_t_u_u((!(((*l_1531) = (safe_rshift_func_uint16_t_u_s((*l_1502), p_34))) >= p_36)), ((l_1532 != (void*)0) && ((safe_div_func_int8_t_s_s((safe_mod_func_int16_t_s_s(((0x14C1341C9787BA2EL <= (safe_sub_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((!(((((((((7L > p_36) & ((((p_2391->g_146 = (++p_2391->g_695)) != (p_2391->g_147 > p_34)) , 1L) > p_34)) >= 6UL) , p_34) <= l_1543) < (*l_1502)) > p_2391->g_1261) ^ p_34) , p_34)), (*l_1502))), 0xDDL))) , l_1544), p_36)), 255UL)) ^ (*l_1502)))));
    }
    (*l_1547) = l_1545[0];
    return l_1502;
}


/* ------------------------------------------ */
/* 
 * reads : p_2391->g_6 p_2391->g_3 p_2391->g_83 p_2391->g_86 p_2391->g_79 p_2391->g_4 p_2391->g_103 p_2391->g_81 p_2391->g_143 p_2391->g_146 p_2391->g_150 p_2391->g_147 p_2391->g_222 p_2391->g_237 p_2391->g_231 p_2391->g_244 p_2391->g_236 p_2391->g_228 p_2391->g_300 p_2391->g_185 p_2391->g_152 p_2391->g_350 p_2391->g_361 p_2391->g_235 p_2391->g_316 p_2391->g_325 p_2391->g_351 p_2391->g_433 p_2391->g_516 p_2391->g_800 p_2391->g_646 p_2391->g_953 p_2391->g_954 p_2391->g_695 p_2391->g_472 p_2391->g_952 p_2391->g_702 p_2391->g_703 p_2391->g_369 p_2391->g_616 p_2391->g_1265 p_2391->g_927 p_2391->g_928 p_2391->g_1261 p_2391->g_1133 p_2391->g_463 p_2391->g_1351
 * writes: p_2391->g_6 p_2391->g_79 p_2391->g_81 p_2391->g_83 p_2391->g_103 p_2391->g_143 p_2391->g_146 p_2391->g_147 p_2391->g_152 p_2391->g_185 p_2391->g_222 p_2391->g_237 p_2391->g_244 p_2391->g_316 p_2391->g_228 p_2391->g_325 p_2391->g_150 p_2391->g_231 p_2391->g_350 p_2391->g_369 p_2391->g_3 p_2391->g_236 p_2391->g_351 p_2391->g_235 p_2391->g_515 p_2391->g_800 p_2391->g_646 p_2391->g_695 p_2391->g_1133 p_2391->g_1187 p_2391->g_463 p_2391->g_471 p_2391->g_616 p_2391->g_1261 p_2391->g_361 p_2391->g_928 p_2391->g_1351
 */
int8_t  func_38(int32_t * p_39, int32_t  p_40, int32_t  p_41, uint16_t  p_42, int32_t * p_43, struct S0 * p_2391)
{ /* block id: 16 */
    int8_t l_44 = 0x62L;
    int32_t *l_84 = &p_2391->g_4;
    int32_t l_1358 = (-10L);
    uint64_t l_1360 = 1UL;
    uint8_t *l_1374 = &p_2391->g_147;
    int16_t *l_1421 = &p_2391->g_81;
    int16_t **l_1420 = &l_1421;
    int16_t ***l_1419 = &l_1420;
    int32_t l_1444 = 2L;
    uint32_t l_1470 = 4294967290UL;
    int8_t **l_1473 = &p_2391->g_929;
    uint64_t l_1485 = 0UL;
    for (p_40 = 0; (p_40 >= 0); p_40 -= 1)
    { /* block id: 19 */
        uint32_t l_73 = 1UL;
        int32_t l_80 = (-3L);
        if (l_44)
            break;
        for (p_2391->g_6 = 0; (p_2391->g_6 >= 0); p_2391->g_6 -= 1)
        { /* block id: 23 */
            uint16_t l_72[2];
            int32_t *l_77[9] = {&p_2391->g_6,&p_2391->g_6,&p_2391->g_6,&p_2391->g_6,&p_2391->g_6,&p_2391->g_6,&p_2391->g_6,&p_2391->g_6,&p_2391->g_6};
            int32_t **l_76 = &l_77[6];
            int8_t *l_78[9] = {&p_2391->g_79[2],&p_2391->g_79[2],&p_2391->g_79[2],&p_2391->g_79[2],&p_2391->g_79[2],&p_2391->g_79[2],&p_2391->g_79[2],&p_2391->g_79[2],&p_2391->g_79[2]};
            uint16_t *l_82 = &p_2391->g_83;
            uint32_t l_1320[4][6] = {{8UL,0UL,1UL,0UL,8UL,8UL},{8UL,0UL,1UL,0UL,8UL,8UL},{8UL,0UL,1UL,0UL,8UL,8UL},{8UL,0UL,1UL,0UL,8UL,8UL}};
            int32_t *l_1349 = (void*)0;
            int32_t *l_1350 = &p_2391->g_1351;
            int i, j;
            for (i = 0; i < 2; i++)
                l_72[i] = 0x42CBL;
            if (p_2391->g_3[p_2391->g_6][p_40])
                break;
            (*l_1350) &= (safe_sub_func_int16_t_s_s(l_44, (safe_lshift_func_int8_t_s_s(((func_49(func_52(l_44, (GROUP_DIVERGE(1, 1) >= (((safe_mod_func_uint8_t_u_u(func_59(func_64((((*l_82) |= (&p_2391->g_3[p_2391->g_6][p_40] != (((((safe_rshift_func_uint8_t_u_s(((p_2391->g_81 = ((l_80 = (p_2391->g_79[2] = ((((((l_72[1] <= l_73) <= (safe_mod_func_uint16_t_u_u(0xD860L, p_2391->g_3[0][0]))) , ((*l_76) = (void*)0)) != (void*)0) || p_42) | p_2391->g_6))) ^ 0x45L)) || FAKE_DIVERGE(p_2391->global_1_offset, get_global_id(1), 10)), 2)) != 4L) < 1UL) , l_44) , &p_40))) , 65535UL), l_44, p_42, l_84, l_73, p_2391), l_73, p_40, &p_2391->g_150, p_2391), 1UL)) >= 0x2C5AL) , l_80)), p_2391->g_6, l_84, p_2391), l_1320[2][1], p_2391) && p_42) & p_41), 6))));
            return p_41;
        }
    }
    for (p_42 = 0; (p_42 > 56); p_42 = safe_add_func_uint8_t_u_u(p_42, 5))
    { /* block id: 635 */
        (*p_39) &= (*l_84);
        if ((*p_43))
            continue;
    }
    (*p_39) = ((*l_84) , (*l_84));
    for (p_2391->g_1351 = 15; (p_2391->g_1351 != (-30)); p_2391->g_1351 = safe_sub_func_uint32_t_u_u(p_2391->g_1351, 1))
    { /* block id: 642 */
        int64_t l_1356 = 1L;
        int32_t l_1391[7][1] = {{0x510FB5A2L},{0x510FB5A2L},{0x510FB5A2L},{0x510FB5A2L},{0x510FB5A2L},{0x510FB5A2L},{0x510FB5A2L}};
        int32_t *l_1450 = &p_2391->g_244;
        int32_t **l_1449 = &l_1450;
        int64_t *l_1474[6] = {&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325};
        uint16_t *l_1488[7][3];
        int i, j;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 3; j++)
                l_1488[i][j] = &p_2391->g_361;
        }
        (1 + 1);
    }
    return (*l_84);
}


/* ------------------------------------------ */
/* 
 * reads : p_2391->g_800 p_2391->g_1133 p_2391->g_463 p_2391->g_927 p_2391->g_516 p_2391->g_147 p_2391->g_81 p_2391->g_4
 * writes: p_2391->g_800 p_2391->g_928 p_2391->g_81
 */
uint64_t  func_49(int32_t * p_50, uint64_t  p_51, struct S0 * p_2391)
{ /* block id: 617 */
    uint64_t l_1341 = 0x016D4A1A7FCD1DC3L;
    int32_t l_1344 = 8L;
    int64_t l_1345[8] = {0x2A957BAE4E0335E7L,0x2A957BAE4E0335E7L,0x2A957BAE4E0335E7L,0x2A957BAE4E0335E7L,0x2A957BAE4E0335E7L,0x2A957BAE4E0335E7L,0x2A957BAE4E0335E7L,0x2A957BAE4E0335E7L};
    int i;
    for (p_2391->g_800 = 0; (p_2391->g_800 != 41); p_2391->g_800++)
    { /* block id: 620 */
        int8_t **l_1325 = &p_2391->g_929;
        uint32_t l_1328 = 0UL;
        int32_t l_1342 = (-1L);
        int32_t l_1343 = 5L;
        int16_t *l_1346 = (void*)0;
        int16_t *l_1347 = &p_2391->g_81;
        int32_t *l_1348[4][7] = {{&p_2391->g_150,&l_1344,&l_1344,(void*)0,&l_1344,(void*)0,&l_1344},{&p_2391->g_150,&l_1344,&l_1344,(void*)0,&l_1344,(void*)0,&l_1344},{&p_2391->g_150,&l_1344,&l_1344,(void*)0,&l_1344,(void*)0,&l_1344},{&p_2391->g_150,&l_1344,&l_1344,(void*)0,&l_1344,(void*)0,&l_1344}};
        int i, j;
        l_1344 = (p_2391->g_1133 == ((((p_51 | p_2391->g_463) > ((*l_1347) |= ((safe_div_func_uint8_t_u_u(((((*p_2391->g_927) = l_1325) != &p_2391->g_301) & (l_1343 = (safe_add_func_int32_t_s_s(l_1328, (safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(l_1328, 5)), (safe_rshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u(l_1328, (safe_rshift_func_int16_t_s_s((l_1342 = ((l_1341 = (0x53L >= p_51)) , (-1L))), 6)))), (*p_2391->g_516))), 4)))))))), l_1344)) && l_1345[6]))) ^ (*p_50)) && (-1L)));
    }
    return l_1341;
}


/* ------------------------------------------ */
/* 
 * reads : p_2391->g_185 p_2391->g_4 p_2391->g_953 p_2391->g_954 p_2391->g_695 p_2391->g_147 p_2391->g_472 p_2391->g_228 p_2391->g_235 p_2391->g_516 p_2391->g_146 p_2391->g_952 p_2391->g_433 p_2391->g_316 p_2391->g_150 p_2391->g_222 p_2391->g_236 p_2391->g_702 p_2391->g_703 p_2391->g_369 p_2391->g_143 p_2391->g_237 p_2391->g_616 p_2391->g_81 p_2391->g_1265 p_2391->g_927 p_2391->g_928 p_2391->g_1261 p_2391->g_646
 * writes: p_2391->g_152 p_2391->g_646 p_2391->g_146 p_2391->g_695 p_2391->g_1133 p_2391->g_325 p_2391->g_147 p_2391->g_235 p_2391->g_1187 p_2391->g_103 p_2391->g_150 p_2391->g_222 p_2391->g_81 p_2391->g_463 p_2391->g_83 p_2391->g_471 p_2391->g_616 p_2391->g_79 p_2391->g_236 p_2391->g_1261 p_2391->g_361 p_2391->g_369
 */
int32_t * func_52(int32_t  p_53, uint16_t  p_54, int16_t  p_55, int32_t * p_56, struct S0 * p_2391)
{ /* block id: 488 */
    int16_t l_1083 = 0x3ECDL;
    int32_t l_1134 = (-1L);
    int32_t ***l_1141 = &p_2391->g_185;
    uint32_t l_1171[3];
    uint16_t l_1181[5];
    int32_t l_1182 = 1L;
    uint16_t *l_1209[3][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t **l_1208 = &l_1209[2][8];
    uint32_t *l_1214 = &p_2391->g_695;
    uint32_t *l_1217[7] = {&p_2391->g_695,&p_2391->g_695,&p_2391->g_695,&p_2391->g_695,&p_2391->g_695,&p_2391->g_695,&p_2391->g_695};
    int32_t *****l_1221 = &p_2391->g_1016[2][0];
    int32_t l_1235[2];
    uint32_t l_1302 = 0x61DB39D8L;
    int8_t **l_1312[3];
    int i, j;
    for (i = 0; i < 3; i++)
        l_1171[i] = 4294967295UL;
    for (i = 0; i < 5; i++)
        l_1181[i] = 0x63EBL;
    for (i = 0; i < 2; i++)
        l_1235[i] = 0x02E5B7F3L;
    for (i = 0; i < 3; i++)
        l_1312[i] = &p_2391->g_929;
lbl_1210:
    (*p_2391->g_185) = (void*)0;
    for (p_2391->g_646 = 25; (p_2391->g_646 > 49); p_2391->g_646 = safe_add_func_uint32_t_u_u(p_2391->g_646, 1))
    { /* block id: 492 */
        uint64_t *l_1079 = &p_2391->g_616[6][7][0];
        uint64_t **l_1080 = &l_1079;
        uint64_t *l_1082 = &p_2391->g_616[6][7][0];
        uint64_t **l_1081 = &l_1082;
        int32_t *l_1084[3][2][6] = {{{&p_2391->g_150,(void*)0,(void*)0,&p_2391->g_150,(void*)0,&p_2391->g_150},{&p_2391->g_150,(void*)0,(void*)0,&p_2391->g_150,(void*)0,&p_2391->g_150}},{{&p_2391->g_150,(void*)0,(void*)0,&p_2391->g_150,(void*)0,&p_2391->g_150},{&p_2391->g_150,(void*)0,(void*)0,&p_2391->g_150,(void*)0,&p_2391->g_150}},{{&p_2391->g_150,(void*)0,(void*)0,&p_2391->g_150,(void*)0,&p_2391->g_150},{&p_2391->g_150,(void*)0,(void*)0,&p_2391->g_150,(void*)0,&p_2391->g_150}}};
        uint16_t l_1226 = 0UL;
        int32_t *l_1239[5][4];
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 4; j++)
                l_1239[i][j] = &l_1235[1];
        }
        l_1083 |= (&p_2391->g_616[6][7][0] != ((*l_1081) = ((*l_1080) = l_1079)));
        (*p_2391->g_185) = l_1084[2][1][5];
        if (l_1083)
            break;
        if ((*p_56))
        { /* block id: 498 */
            int8_t l_1115 = 1L;
            uint16_t *l_1197 = &p_2391->g_83;
            uint16_t **l_1196 = &l_1197;
            uint16_t ***l_1195 = &l_1196;
            uint32_t *l_1218 = &p_2391->g_695;
            int32_t l_1222 = 0L;
            for (p_54 = (-27); (p_54 != 42); p_54 = safe_add_func_int32_t_s_s(p_54, 9))
            { /* block id: 501 */
                int32_t l_1103 = 0x1BE33CC9L;
                int32_t l_1112 = 0x32195505L;
                uint32_t *l_1128 = (void*)0;
                uint32_t *l_1129 = &p_2391->g_146;
                uint32_t *l_1130 = (void*)0;
                uint32_t *l_1131 = &p_2391->g_695;
                int64_t *l_1132 = &p_2391->g_1133;
                int32_t *l_1211 = &p_2391->g_150;
                uint32_t **l_1215 = &l_1214;
                uint32_t **l_1216[5][5] = {{&l_1130,&l_1131,&l_1130,&l_1131,&l_1130},{&l_1130,&l_1131,&l_1130,&l_1131,&l_1130},{&l_1130,&l_1131,&l_1130,&l_1131,&l_1130},{&l_1130,&l_1131,&l_1130,&l_1131,&l_1130},{&l_1130,&l_1131,&l_1130,&l_1131,&l_1130}};
                int i, j;
                l_1134 = (safe_add_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_u(((!(safe_lshift_func_int16_t_s_u(((safe_rshift_func_uint8_t_u_s((safe_add_func_int16_t_s_s((safe_div_func_uint16_t_u_u((safe_add_func_int64_t_s_s(((*l_1132) = ((safe_div_func_int32_t_s_s((l_1103 &= (!0x44F7DC57L)), (((safe_lshift_func_int16_t_s_u((((p_54 < (safe_lshift_func_uint16_t_u_s((((0x8E09L || (safe_add_func_int16_t_s_s(0x77E9L, (safe_add_func_int16_t_s_s(0x3B05L, ((l_1112 &= 0x1CL) , ((safe_mod_func_int32_t_s_s(l_1115, ((*l_1131) |= (safe_add_func_uint32_t_u_u(((safe_sub_func_uint32_t_u_u(p_53, (safe_add_func_int64_t_s_s((safe_div_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_u(((GROUP_DIVERGE(1, 1) , (safe_div_func_int8_t_s_s(((((*l_1129) = 0xF89B040CL) , 1L) || (*p_56)), l_1115))) ^ (*p_2391->g_953)), p_55)) == l_1115), (-1L))), l_1112)))) >= 0x6AB033CC98EF7314L), (-1L)))))) < p_2391->g_147))))))) , p_53) == l_1115), p_54))) , l_1115) != (*p_2391->g_472)), GROUP_DIVERGE(0, 1))) <= (*p_56)) || l_1112))) , p_55)), l_1115)), p_2391->g_228[3])), 0L)), 5)) != 6UL), 1))) || 0x1D94E19DFAF5417BL), p_55)) || FAKE_DIVERGE(p_2391->group_1_offset, get_group_id(1), 10)) == GROUP_DIVERGE(1, 1)), 1L));
                for (p_2391->g_325 = 0; (p_2391->g_325 <= 1); p_2391->g_325 += 1)
                { /* block id: 510 */
                    uint32_t l_1144[1];
                    int32_t l_1183[8][1] = {{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}};
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_1144[i] = 0UL;
                    if (((l_1134 = (((safe_rshift_func_int16_t_s_u((0x1CBDD2D302D6C85FL && ((safe_div_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u(((void*)0 != l_1141), (safe_rshift_func_int8_t_s_u((0x28752BB43F08D611L ^ l_1144[0]), 0)))) >= p_53), (safe_add_func_uint8_t_u_u(((-4L) && ((safe_add_func_uint16_t_u_u(l_1115, (safe_lshift_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u(((*p_2391->g_516) = (safe_sub_func_int32_t_s_s((((l_1115 >= p_55) | 0L) <= (-6L)), p_2391->g_235[2]))), 3)) ^ 0L), p_55)) , (*p_2391->g_516)), 2)))) >= (*p_56))), p_53)))) != p_2391->g_146)), 4)) || (*p_56)) == (-1L))) < l_1103))
                    { /* block id: 513 */
                        uint8_t l_1172 = 3UL;
                        l_1183[1][0] |= ((safe_div_func_int8_t_s_s(((safe_add_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((l_1112 , (safe_lshift_func_uint8_t_u_s(((+(0x06EC03615BF5BA3AL && (((((safe_rshift_func_uint16_t_u_s(l_1171[0], 2)) ^ (l_1172 > (safe_mul_func_uint8_t_u_u(((*p_2391->g_516)++), ((l_1103 <= l_1172) <= (safe_mod_func_uint64_t_u_u((safe_sub_func_int16_t_s_s((0xB8L == p_55), p_53)), p_53))))))) != 0xE3L) < p_53) && (-8L)))) <= (**p_2391->g_952)), l_1181[1]))), l_1172)), p_55)), 0x6CL)), FAKE_DIVERGE(p_2391->global_1_offset, get_global_id(1), 10))) > l_1182), p_55)) != p_2391->g_4);
                    }
                    else
                    { /* block id: 516 */
                        uint8_t *l_1186 = &p_2391->g_1187;
                        uint16_t *l_1188 = (void*)0;
                        uint16_t ***l_1207[4][2][5] = {{{(void*)0,&l_1196,&l_1196,&l_1196,&l_1196},{(void*)0,&l_1196,&l_1196,&l_1196,&l_1196}},{{(void*)0,&l_1196,&l_1196,&l_1196,&l_1196},{(void*)0,&l_1196,&l_1196,&l_1196,&l_1196}},{{(void*)0,&l_1196,&l_1196,&l_1196,&l_1196},{(void*)0,&l_1196,&l_1196,&l_1196,&l_1196}},{{(void*)0,&l_1196,&l_1196,&l_1196,&l_1196},{(void*)0,&l_1196,&l_1196,&l_1196,&l_1196}}};
                        int i, j, k;
                        (*p_2391->g_433) = 1L;
                        l_1134 &= (((-9L) || ((~(p_2391->g_147 | (p_2391->g_103[0] = (l_1115 > (1L ^ ((*l_1186) = 1UL)))))) | (safe_sub_func_int64_t_s_s(p_54, 1L)))) | p_2391->g_4);
                        (*p_2391->g_433) = ((safe_add_func_int8_t_s_s((((((((((safe_mod_func_uint8_t_u_u((l_1195 == (void*)0), (safe_unary_minus_func_uint8_t_u((safe_lshift_func_uint16_t_u_u(l_1115, 6)))))) | ((((~(p_55 , (((safe_lshift_func_int8_t_s_s(0L, 2)) ^ p_2391->g_316) & 0x38D991D5L))) , (safe_add_func_int16_t_s_s(((safe_add_func_uint64_t_u_u(((void*)0 != l_1207[3][0][2]), 0x15C5C8E05A3A7138L)) , p_2391->g_150), p_2391->g_222))) && l_1115) != p_53)) <= (-1L)) != l_1183[1][0]) < 0x7ED9L) , 0UL) , l_1208) == (void*)0) || p_2391->g_236[1]), 0x11L)) == 0x3DD5D24FL);
                        return p_56;
                    }
                    if (l_1115)
                        goto lbl_1210;
                    (*p_2391->g_185) = p_56;
                    (**l_1141) = l_1211;
                }
                (*l_1211) |= (safe_div_func_int8_t_s_s((&p_2391->g_244 != (void*)0), ((+(l_1211 == (l_1218 = (l_1217[4] = ((*l_1215) = l_1214))))) && p_54)));
                if ((l_1222 |= ((((0L > p_55) , p_55) == (p_53 <= ((safe_add_func_uint64_t_u_u((((*l_1132) = (-1L)) & (((*l_1211) , (void*)0) == l_1221)), ((**p_2391->g_702) = p_55))) || 4294967286UL))) > p_55)))
                { /* block id: 535 */
                    uint16_t l_1225 = 65535UL;
                    (*l_1211) ^= (safe_add_func_uint64_t_u_u((((*p_2391->g_369) , p_2391->g_616[6][7][0]) & (l_1225 < l_1222)), ((*l_1132) = 2L)));
                    l_1226 = 0x1B271F84L;
                    (*l_1211) ^= (safe_mul_func_int8_t_s_s(p_53, p_54));
                    for (p_2391->g_81 = 1; (p_2391->g_81 >= (-24)); p_2391->g_81 = safe_sub_func_int16_t_s_s(p_2391->g_81, 9))
                    { /* block id: 542 */
                        (*l_1211) = 0L;
                    }
                }
                else
                { /* block id: 545 */
                    (*p_2391->g_185) = p_56;
                    (*l_1211) = (*p_56);
                }
            }
        }
        else
        { /* block id: 550 */
            int16_t l_1233 = 0x57FEL;
            int32_t l_1234 = (-8L);
            for (p_2391->g_463 = (-12); (p_2391->g_463 != 40); ++p_2391->g_463)
            { /* block id: 553 */
                (**l_1141) = p_56;
            }
            for (p_2391->g_1133 = 1; (p_2391->g_1133 >= 0); p_2391->g_1133 -= 1)
            { /* block id: 558 */
                uint32_t l_1236[9] = {0x40FF2291L,4294967289UL,0x40FF2291L,0x40FF2291L,4294967289UL,0x40FF2291L,0x40FF2291L,4294967289UL,0x40FF2291L};
                int i;
                for (p_55 = 0; (p_55 <= 1); p_55 += 1)
                { /* block id: 561 */
                    int i, j;
                    for (p_2391->g_81 = 0; (p_2391->g_81 <= 1); p_2391->g_81 += 1)
                    { /* block id: 564 */
                        return p_56;
                    }
                    ++l_1236[0];
                }
                return p_56;
            }
            for (l_1134 = 0; l_1134 < 8; l_1134 += 1)
            {
                for (p_2391->g_83 = 0; p_2391->g_83 < 4; p_2391->g_83 += 1)
                {
                    p_2391->g_471[l_1134][p_2391->g_83] = &l_1084[2][1][5];
                }
            }
        }
    }
    for (p_2391->g_146 = 0; (p_2391->g_146 >= 12); p_2391->g_146++)
    { /* block id: 576 */
        int32_t l_1246 = 0x26A5DF4CL;
        int32_t l_1262 = 1L;
        uint16_t *l_1278 = &p_2391->g_361;
        int32_t l_1306 = 0x4D5795F9L;
        uint8_t l_1309 = 0x6AL;
        int8_t **l_1313[4][8][2] = {{{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929}},{{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929}},{{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929}},{{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929},{&p_2391->g_929,&p_2391->g_929}}};
        int i, j, k;
        if ((((safe_mod_func_uint32_t_u_u((+(safe_add_func_uint32_t_u_u((l_1246 == ((p_2391->g_616[6][7][0] = 0UL) , (((*p_2391->g_516) = (*p_2391->g_516)) < (p_2391->g_236[0] = (p_2391->g_79[5] = l_1246))))), ((*l_1214) &= ((((safe_div_func_uint64_t_u_u((--(**p_2391->g_702)), l_1246)) | p_54) || ((void*)0 != &l_1209[2][8])) , FAKE_DIVERGE(p_2391->global_1_offset, get_global_id(1), 10)))))), (safe_mul_func_int8_t_s_s(((l_1262 = ((safe_mod_func_int64_t_s_s(((safe_mod_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((p_2391->g_1261 = ((safe_mul_func_uint8_t_u_u(((0x0C47AD83L <= (*p_56)) == l_1246), p_54)) >= (-1L))), 0L)), 18446744073709551615UL)) & 0x33DC6415L), l_1246)) & p_53)) ^ FAKE_DIVERGE(p_2391->group_2_offset, get_group_id(2), 10)), p_53)))) >= p_55) | p_2391->g_81))
        { /* block id: 585 */
            uint8_t l_1275 = 0xE0L;
            if ((*p_2391->g_433))
                break;
            for (p_2391->g_361 = (-26); (p_2391->g_361 >= 38); ++p_2391->g_361)
            { /* block id: 589 */
                if (l_1246)
                    goto lbl_1210;
            }
            if (p_2391->g_1265[4])
                break;
            for (l_1182 = 0; (l_1182 >= 3); l_1182++)
            { /* block id: 595 */
                int32_t *l_1268 = &l_1246;
                int32_t *l_1269 = &l_1134;
                int32_t *l_1270 = &l_1235[1];
                int32_t *l_1271 = &l_1235[1];
                int32_t *l_1272 = &l_1262;
                int32_t *l_1273 = &l_1235[0];
                int32_t *l_1274 = &l_1235[1];
                l_1275--;
                if (l_1275)
                    continue;
                (*p_2391->g_185) = (((l_1278 == ((*l_1208) = &p_2391->g_361)) & ((**p_2391->g_702) ^= ((*l_1273) || (!p_55)))) , (void*)0);
            }
        }
        else
        { /* block id: 602 */
            uint32_t **l_1285 = &p_2391->g_369;
            int16_t *l_1293[7][7] = {{&l_1083,&p_2391->g_81,&p_2391->g_81,&l_1083,&p_2391->g_81,(void*)0,(void*)0},{&l_1083,&p_2391->g_81,&p_2391->g_81,&l_1083,&p_2391->g_81,(void*)0,(void*)0},{&l_1083,&p_2391->g_81,&p_2391->g_81,&l_1083,&p_2391->g_81,(void*)0,(void*)0},{&l_1083,&p_2391->g_81,&p_2391->g_81,&l_1083,&p_2391->g_81,(void*)0,(void*)0},{&l_1083,&p_2391->g_81,&p_2391->g_81,&l_1083,&p_2391->g_81,(void*)0,(void*)0},{&l_1083,&p_2391->g_81,&p_2391->g_81,&l_1083,&p_2391->g_81,(void*)0,(void*)0},{&l_1083,&p_2391->g_81,&p_2391->g_81,&l_1083,&p_2391->g_81,(void*)0,(void*)0}};
            int16_t **l_1292 = &l_1293[1][1];
            int32_t l_1299[6][8] = {{0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L},{0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L},{0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L},{0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L},{0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L},{0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L,0x214C74FFL,0x214C74FFL,0x6AA74850L}};
            int16_t *l_1303 = (void*)0;
            uint32_t l_1304[3];
            int8_t l_1305 = 0x37L;
            int i, j;
            for (i = 0; i < 3; i++)
                l_1304[i] = 0xB53B559CL;
            (*p_2391->g_185) = (((safe_div_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(((safe_div_func_uint8_t_u_u((((*l_1285) = &l_1171[0]) == &p_2391->g_1265[4]), ((l_1262 = (safe_sub_func_uint8_t_u_u((((((~((safe_div_func_uint16_t_u_u(((safe_add_func_int16_t_s_s(2L, (~(((*l_1292) = &p_2391->g_81) == (void*)0)))) ^ ((safe_mod_func_uint64_t_u_u((safe_unary_minus_func_uint32_t_u((((safe_mod_func_int16_t_s_s(l_1299[4][3], (p_55 , GROUP_DIVERGE(2, 1)))) > (safe_rshift_func_int8_t_s_s(1L, 6))) < p_55))), 6UL)) , l_1302)), p_54)) >= l_1246)) ^ l_1246) , l_1299[4][3]) < 0x312E6AEAL) , (*p_2391->g_516)), 255UL))) & p_53))) | GROUP_DIVERGE(2, 1)), l_1304[2])), l_1305)) , l_1306) , p_56);
            l_1306 ^= (safe_lshift_func_uint8_t_u_u(l_1309, 5));
            if (l_1299[4][3])
                break;
        }
        if (l_1262)
            break;
        l_1246 &= (safe_add_func_uint8_t_u_u(((*p_2391->g_927) != (l_1313[2][5][1] = l_1312[2])), (65534UL & ((*l_1278) = ((safe_mod_func_int64_t_s_s(((++(*p_2391->g_516)) == ((safe_div_func_int64_t_s_s(((void*)0 != &p_2391->g_351), GROUP_DIVERGE(2, 1))) , 0x5DL)), (((0x22L != l_1309) , (*p_56)) & p_2391->g_1261))) , 0xCADEL)))));
    }
    return p_56;
}


/* ------------------------------------------ */
/* 
 * reads : p_2391->g_79 p_2391->g_228 p_2391->g_300 p_2391->g_231 p_2391->g_4 p_2391->g_146 p_2391->g_244 p_2391->g_236 p_2391->g_150 p_2391->g_103 p_2391->g_185 p_2391->g_152 p_2391->g_143 p_2391->g_350 p_2391->g_237 p_2391->g_361 p_2391->g_235 p_2391->g_316 p_2391->g_325 p_2391->g_3 p_2391->g_351 p_2391->g_433 p_2391->g_81 p_2391->g_516 p_2391->g_147 p_2391->g_800
 * writes: p_2391->g_316 p_2391->g_228 p_2391->g_325 p_2391->g_150 p_2391->g_231 p_2391->g_79 p_2391->g_152 p_2391->g_143 p_2391->g_350 p_2391->g_369 p_2391->g_3 p_2391->g_236 p_2391->g_351 p_2391->g_235 p_2391->g_81 p_2391->g_146 p_2391->g_515 p_2391->g_103 p_2391->g_800
 */
uint8_t  func_59(int64_t  p_60, int32_t  p_61, int64_t  p_62, int32_t * p_63, struct S0 * p_2391)
{ /* block id: 120 */
    uint64_t l_290 = 18446744073709551615UL;
    int8_t *l_294[7][9] = {{(void*)0,&p_2391->g_236[1],&p_2391->g_228[3],&p_2391->g_236[0],&p_2391->g_228[3],&p_2391->g_236[1],(void*)0,&p_2391->g_228[2],&p_2391->g_228[1]},{(void*)0,&p_2391->g_236[1],&p_2391->g_228[3],&p_2391->g_236[0],&p_2391->g_228[3],&p_2391->g_236[1],(void*)0,&p_2391->g_228[2],&p_2391->g_228[1]},{(void*)0,&p_2391->g_236[1],&p_2391->g_228[3],&p_2391->g_236[0],&p_2391->g_228[3],&p_2391->g_236[1],(void*)0,&p_2391->g_228[2],&p_2391->g_228[1]},{(void*)0,&p_2391->g_236[1],&p_2391->g_228[3],&p_2391->g_236[0],&p_2391->g_228[3],&p_2391->g_236[1],(void*)0,&p_2391->g_228[2],&p_2391->g_228[1]},{(void*)0,&p_2391->g_236[1],&p_2391->g_228[3],&p_2391->g_236[0],&p_2391->g_228[3],&p_2391->g_236[1],(void*)0,&p_2391->g_228[2],&p_2391->g_228[1]},{(void*)0,&p_2391->g_236[1],&p_2391->g_228[3],&p_2391->g_236[0],&p_2391->g_228[3],&p_2391->g_236[1],(void*)0,&p_2391->g_228[2],&p_2391->g_228[1]},{(void*)0,&p_2391->g_236[1],&p_2391->g_228[3],&p_2391->g_236[0],&p_2391->g_228[3],&p_2391->g_236[1],(void*)0,&p_2391->g_228[2],&p_2391->g_228[1]}};
    int32_t l_295[10][6][1] = {{{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L}}};
    int32_t l_302[3];
    int64_t l_303 = 0x7E7F07BE547BDA15L;
    int32_t l_323 = 2L;
    uint64_t l_329[6] = {0x05E8074731A7A4D0L,1UL,0x05E8074731A7A4D0L,0x05E8074731A7A4D0L,1UL,0x05E8074731A7A4D0L};
    int32_t **l_330 = (void*)0;
    uint64_t l_439 = 1UL;
    int32_t ****l_490 = &p_2391->g_351;
    int8_t l_509 = 9L;
    uint8_t l_511 = 0x39L;
    int8_t l_546 = 0x75L;
    uint64_t l_577 = 0xFA4EEF98A8547223L;
    uint8_t ***l_604 = &p_2391->g_515;
    uint8_t l_731[4] = {0UL,0UL,0UL,0UL};
    uint16_t l_740[8];
    uint32_t *l_840[4][9][4] = {{{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0}},{{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0}},{{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0}},{{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0},{(void*)0,(void*)0,&p_2391->g_695,(void*)0}}};
    uint8_t l_846 = 0x4EL;
    uint32_t l_866 = 0xF821B384L;
    uint16_t l_932 = 0x3C4CL;
    uint16_t *l_985 = &l_740[5];
    uint16_t **l_984 = &l_985;
    int8_t ***l_1000 = &p_2391->g_928;
    uint64_t *l_1030 = &p_2391->g_616[6][7][0];
    uint64_t l_1041 = 18446744073709551615UL;
    uint8_t l_1060 = 0x9AL;
    uint16_t l_1069 = 7UL;
    int16_t l_1070 = (-1L);
    int64_t *l_1075 = &p_2391->g_325;
    int32_t *l_1076 = &l_295[2][0][0];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_302[i] = 9L;
    for (i = 0; i < 8; i++)
        l_740[i] = 0x55CEL;
    if (((safe_mod_func_uint64_t_u_u(1UL, GROUP_DIVERGE(2, 1))) != (safe_sub_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(l_290, (((((((-1L) > (safe_rshift_func_uint16_t_u_s((0x6D9F055CL || (safe_unary_minus_func_int64_t_s((((((l_295[1][1][0] = p_2391->g_79[4]) <= (safe_rshift_func_int8_t_s_s(l_290, 6))) > ((((safe_div_func_uint16_t_u_u((((((p_62 == p_2391->g_228[3]) & 0x64C0364BA101134BL) , p_2391->g_300) != (void*)0) == p_2391->g_231), p_60)) > l_302[0]) && 247UL) || p_2391->g_228[1])) , 1UL) > p_2391->g_4)))), p_2391->g_146))) < l_290) == 0x22BBD3E6B5CA20F6L) < 0L) >= 4294967295UL) == p_2391->g_244))), l_290))))
    { /* block id: 122 */
        uint8_t l_312 = 0x6FL;
        int64_t *l_315[3][2][3] = {{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}},{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}},{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}}};
        int64_t *l_324 = &p_2391->g_325;
        int64_t l_326 = (-5L);
        int32_t ***l_328 = (void*)0;
        int32_t ****l_327 = &l_328;
        int i, j, k;
        l_303 = l_295[1][1][0];
        (*p_63) = ((safe_rshift_func_int16_t_s_s(p_61, 2)) >= (((((safe_mod_func_int32_t_s_s(((safe_mod_func_int8_t_s_s((((((((safe_mul_func_int16_t_s_s(l_312, (safe_div_func_int8_t_s_s(((((p_2391->g_316 = (((void*)0 != &p_63) || p_62)) , ((*l_324) = (0xA6L || (l_323 = (l_295[0][3][0] = ((safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((p_2391->g_228[3] |= (safe_sub_func_uint64_t_u_u(0xD25E43BB97F6F321L, p_2391->g_146))), (~p_60))), 5)) ^ l_290)))))) , l_326) ^ p_2391->g_236[0]), l_302[0])))) , l_327) == (void*)0) < p_60) | l_329[2]) < p_62) <= (-1L)), l_302[1])) <= p_62), l_290)) || (-1L)) | (*p_63)) , &p_2391->g_152[3][0]) == l_330));
    }
    else
    { /* block id: 130 */
        uint32_t l_334 = 0x49654DC8L;
        int32_t *l_338 = &l_295[1][2][0];
        uint8_t *l_389[1][8] = {{&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147}};
        uint8_t *l_396[5] = {&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147};
        int32_t l_401 = 0x06AD7AAAL;
        int32_t l_436 = 4L;
        int32_t l_437[7];
        int32_t *l_445 = &l_295[8][4][0];
        int64_t l_459 = 0x3CC04D732030F192L;
        uint32_t l_467 = 0x977A28F7L;
        int16_t l_532 = (-1L);
        int16_t l_558[5];
        int32_t *****l_688 = (void*)0;
        uint32_t l_692[10][1][9] = {{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}},{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}},{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}},{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}},{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}},{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}},{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}},{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}},{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}},{{1UL,0UL,0x9CF0A00FL,0x5CCF67F4L,0x9CF0A00FL,0UL,1UL,0UL,1UL}}};
        uint32_t l_711 = 0x5692DE5DL;
        uint64_t **l_775 = (void*)0;
        uint8_t l_782 = 1UL;
        uint16_t l_797 = 2UL;
        int8_t **l_815 = &l_294[1][7];
        int16_t l_824 = (-1L);
        int64_t l_835 = (-4L);
        uint8_t l_837 = 0x3FL;
        uint16_t l_843[4] = {0x346DL,0x346DL,0x346DL,0x346DL};
        int8_t ***l_925[10][6][3] = {{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}},{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}},{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}},{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}},{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}},{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}},{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}},{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}},{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}},{{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815},{&l_815,&l_815,&l_815}}};
        int64_t *l_961[6] = {&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325,&p_2391->g_325};
        int32_t l_1052 = 5L;
        uint32_t l_1061 = 0xD0BF6750L;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_437[i] = 2L;
        for (i = 0; i < 5; i++)
            l_558[i] = 0x74D9L;
        for (p_2391->g_231 = 16; (p_2391->g_231 == 21); ++p_2391->g_231)
        { /* block id: 133 */
            int8_t l_333 = 0x69L;
            int32_t l_339 = 0x708DFF30L;
            int32_t l_372 = 0x0416EDC2L;
            int32_t l_380[1];
            int8_t **l_431 = &l_294[6][1];
            int8_t l_438 = 0L;
            int i;
            for (i = 0; i < 1; i++)
                l_380[i] = 0x0B07FA44L;
            (*p_63) = ((p_2391->g_79[2] |= (l_334 = (p_2391->g_103[5] == (l_333 || l_333)))) < p_60);
            for (p_62 = 1; (p_62 <= 6); p_62 += 1)
            { /* block id: 139 */
                int32_t l_383 = 0L;
                uint32_t l_384 = 4294967295UL;
                uint64_t *l_412[10] = {&p_2391->g_222,&p_2391->g_316,&p_2391->g_222,&p_2391->g_222,&p_2391->g_316,&p_2391->g_222,&p_2391->g_222,&p_2391->g_316,&p_2391->g_222,&p_2391->g_222};
                uint16_t *l_418[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t l_432 = 0UL;
                int32_t *l_434 = &l_323;
                int32_t *l_435[9] = {&l_372,&l_323,&l_372,&l_372,&l_323,&l_372,&l_372,&l_323,&l_372};
                int32_t l_448 = 0x152BD256L;
                int i;
                if (((p_61 <= 0L) & l_333))
                { /* block id: 140 */
                    int64_t *l_335 = (void*)0;
                    int64_t *l_337 = (void*)0;
                    int64_t **l_336 = &l_337;
                    int32_t l_362 = 0x47CAC531L;
                    int8_t l_363 = 0x08L;
                    (*p_2391->g_185) = (*p_2391->g_185);
                    if ((&p_2391->g_325 != ((*l_336) = (l_335 = &p_2391->g_325))))
                    { /* block id: 144 */
                        uint32_t *l_344 = &p_2391->g_143;
                        int32_t ***l_349[7];
                        int32_t ****l_348 = &l_349[3];
                        int32_t *****l_352 = &p_2391->g_350;
                        int i, j;
                        for (i = 0; i < 7; i++)
                            l_349[i] = &l_330;
                        (*p_2391->g_185) = l_338;
                        if (l_339)
                            continue;
                        l_363 = (0x04B4L || (safe_add_func_int64_t_s_s((safe_mod_func_int8_t_s_s((((++(*l_344)) , p_61) < p_62), (safe_unary_minus_func_int64_t_s(((~6UL) & (l_348 == ((*l_352) = p_2391->g_350))))))), ((safe_sub_func_int32_t_s_s(((safe_mul_func_int16_t_s_s(p_60, (((safe_sub_func_int16_t_s_s((p_2391->g_237 < (((safe_sub_func_uint16_t_u_u(0x4F64L, p_60)) , (void*)0) != (void*)0)), (*l_338))) ^ p_2391->g_361) < l_362))) >= p_2391->g_235[6]), (*p_63))) ^ 0x3868BB9BL))));
                    }
                    else
                    { /* block id: 150 */
                        (*p_63) &= l_339;
                        return l_333;
                    }
                    for (l_290 = 0; (l_290 <= 0); l_290 += 1)
                    { /* block id: 156 */
                        volatile int32_t *l_366[9] = {&p_2391->g_3[0][0],&p_2391->g_3[0][0],&p_2391->g_3[0][0],&p_2391->g_3[0][0],&p_2391->g_3[0][0],&p_2391->g_3[0][0],&p_2391->g_3[0][0],&p_2391->g_3[0][0],&p_2391->g_3[0][0]};
                        volatile int32_t **l_365 = &l_366[2];
                        int64_t *l_370[7][6][3] = {{{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0}},{{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0}},{{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0}},{{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0}},{{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0}},{{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0}},{{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0},{(void*)0,&l_303,(void*)0}}};
                        int32_t l_371[3];
                        int32_t *****l_375 = (void*)0;
                        int32_t *****l_376[3];
                        uint64_t *l_379[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        uint8_t **l_390 = (void*)0;
                        uint8_t *l_392 = &p_2391->g_147;
                        uint8_t **l_391 = &l_392;
                        uint8_t *l_394[1];
                        uint8_t **l_393 = &l_394[0];
                        uint8_t **l_395[1][3][8] = {{{&l_389[0][3],&l_389[0][2],&l_389[0][7],&l_389[0][3],&l_389[0][2],&l_389[0][3],&l_389[0][7],&l_389[0][2]},{&l_389[0][3],&l_389[0][2],&l_389[0][7],&l_389[0][3],&l_389[0][2],&l_389[0][3],&l_389[0][7],&l_389[0][2]},{&l_389[0][3],&l_389[0][2],&l_389[0][7],&l_389[0][3],&l_389[0][2],&l_389[0][3],&l_389[0][7],&l_389[0][2]}}};
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_371[i] = (-3L);
                        for (i = 0; i < 3; i++)
                            l_376[i] = (void*)0;
                        for (i = 0; i < 1; i++)
                            l_394[i] = &p_2391->g_147;
                        (*l_365) = &p_2391->g_3[l_290][l_290];
                        p_2391->g_3[l_290][l_290] &= (safe_mul_func_int16_t_s_s((((l_372 = (l_371[2] ^= ((p_2391->g_369 = &p_2391->g_143) != &p_2391->g_143))) == (l_384 = (safe_mod_func_uint32_t_u_u((((((p_2391->g_350 = &p_2391->g_351) == (void*)0) , (safe_mod_func_uint8_t_u_u((((((*p_63) = l_339) > (((((&p_63 == (void*)0) < 0x1AE89DCAL) >= ((p_2391->g_316++) , (0x89EDB8EEL <= p_2391->g_244))) , 8L) >= l_383)) , 0x2025FEACC6DABD69L) | p_62), l_339))) , p_60) & p_2391->g_325), 0x12821E90L)))) ^ p_61), p_2391->g_236[0]));
                        (*l_338) |= ((p_2391->g_79[3] = ((p_61 < ((safe_div_func_int64_t_s_s(p_2391->g_4, ((l_389[0][3] == (l_396[0] = ((*l_393) = ((*l_391) = l_389[0][0])))) , ((p_2391->g_228[3] < p_2391->g_228[0]) && (safe_lshift_func_int8_t_s_u(((0L >= (p_2391->g_236[0] |= (p_2391->g_228[3] |= p_60))) , (safe_div_func_uint16_t_u_u(p_2391->g_237, 0x08C8L))), p_60)))))) != p_2391->g_3[0][0])) || p_2391->g_228[3])) > p_2391->g_316);
                    }
                    if (l_401)
                        continue;
                }
                else
                { /* block id: 175 */
                    uint64_t *l_409 = &p_2391->g_222;
                    uint64_t **l_408 = &l_409;
                    uint64_t *l_411 = &l_290;
                    uint64_t **l_410[9][5][5] = {{{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411}},{{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411}},{{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411}},{{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411}},{{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411}},{{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411}},{{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411}},{{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411}},{{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411},{(void*)0,&l_411,&l_411,(void*)0,&l_411}}};
                    int32_t l_419 = 0x145B9C56L;
                    int32_t ***l_428 = &p_2391->g_185;
                    int i, j, k;
                    (*p_63) = (safe_rshift_func_uint8_t_u_u(255UL, (safe_rshift_func_int16_t_s_s((safe_add_func_uint8_t_u_u((((l_412[7] = ((*l_408) = &p_2391->g_222)) != (void*)0) & (*p_63)), (safe_unary_minus_func_uint32_t_u((l_339 < 0x27447785L))))), (0x2E37L == (((safe_lshift_func_uint16_t_u_u(((((safe_rshift_func_int8_t_s_u((p_2391->g_79[2] & 1L), p_2391->g_361)) && p_2391->g_103[0]) , (void*)0) == l_418[0]), l_419)) || p_62) >= (-1L)))))));
                    (*p_2391->g_433) &= ((*p_63) &= (((safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((*l_338), 2)), (((*p_2391->g_350) = (*p_2391->g_350)) == l_428))), (p_60 < (-1L)))), 11)) , (GROUP_DIVERGE(2, 1) || (6L || ((l_372 |= (0x1A3BL >= (safe_add_func_uint16_t_u_u(((void*)0 != l_431), FAKE_DIVERGE(p_2391->local_2_offset, get_local_id(2), 10))))) > l_432)))) ^ 18446744073709551615UL));
                }
                --l_439;
                for (p_2391->g_81 = 0; (p_2391->g_81 <= (-29)); p_2391->g_81--)
                { /* block id: 187 */
                    uint8_t l_444 = 0xAAL;
                    int32_t l_449 = 0x47A1AA12L;
                    (*p_63) = l_444;
                    (*p_2391->g_185) = l_445;
                    (*l_338) = (p_60 , ((&l_329[2] == l_412[9]) | ((void*)0 != &p_63)));
                    for (p_2391->g_146 = 0; (p_2391->g_146 < 7); p_2391->g_146 = safe_add_func_uint8_t_u_u(p_2391->g_146, 6))
                    { /* block id: 193 */
                        l_449 |= l_448;
                        (*p_63) = (*p_2391->g_433);
                    }
                }
            }
        }
        if ((FAKE_DIVERGE(p_2391->group_0_offset, get_group_id(0), 10) && 1L))
        { /* block id: 200 */
            int32_t l_454[3];
            int32_t *l_470[9] = {&l_323,&l_323,&l_323,&l_323,&l_323,&l_323,&l_323,&l_323,&l_323};
            uint16_t *l_477 = (void*)0;
            int64_t *l_538 = &p_2391->g_325;
            int64_t **l_537 = &l_538;
            uint32_t l_561 = 0x97085EA1L;
            int64_t *l_595 = &p_2391->g_325;
            int64_t **l_594 = &l_595;
            uint16_t *l_602 = &p_2391->g_361;
            int32_t *l_730 = &l_323;
            int i;
            for (i = 0; i < 3; i++)
                l_454[i] = 0x6B74B4BBL;
            (*p_2391->g_185) = ((*l_445) , p_63);
        }
        else
        { /* block id: 369 */
            int64_t l_793 = 0x7F0EA763486E288BL;
            uint8_t **l_796 = &p_2391->g_516;
            uint8_t ***l_795 = &l_796;
            uint16_t *l_798 = &p_2391->g_103[7];
            int64_t *l_799[3][3][8] = {{{&l_303,&l_303,&l_303,&l_793,&l_303,&l_793,&l_303,&l_303},{&l_303,&l_303,&l_303,&l_793,&l_303,&l_793,&l_303,&l_303},{&l_303,&l_303,&l_303,&l_793,&l_303,&l_793,&l_303,&l_303}},{{&l_303,&l_303,&l_303,&l_793,&l_303,&l_793,&l_303,&l_303},{&l_303,&l_303,&l_303,&l_793,&l_303,&l_793,&l_303,&l_303},{&l_303,&l_303,&l_303,&l_793,&l_303,&l_793,&l_303,&l_303}},{{&l_303,&l_303,&l_303,&l_793,&l_303,&l_793,&l_303,&l_303},{&l_303,&l_303,&l_303,&l_793,&l_303,&l_793,&l_303,&l_303},{&l_303,&l_303,&l_303,&l_793,&l_303,&l_793,&l_303,&l_303}}};
            int32_t *l_801[5][7] = {{&l_437[3],&l_437[3],&p_2391->g_150,&p_2391->g_235[1],(void*)0,&p_2391->g_235[1],&p_2391->g_150},{&l_437[3],&l_437[3],&p_2391->g_150,&p_2391->g_235[1],(void*)0,&p_2391->g_235[1],&p_2391->g_150},{&l_437[3],&l_437[3],&p_2391->g_150,&p_2391->g_235[1],(void*)0,&p_2391->g_235[1],&p_2391->g_150},{&l_437[3],&l_437[3],&p_2391->g_150,&p_2391->g_235[1],(void*)0,&p_2391->g_235[1],&p_2391->g_150},{&l_437[3],&l_437[3],&p_2391->g_150,&p_2391->g_235[1],(void*)0,&p_2391->g_235[1],&p_2391->g_150}};
            int i, j, k;
            (*p_63) = ((safe_div_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s(p_62, (safe_div_func_uint8_t_u_u(0x8BL, l_793)))), (safe_unary_minus_func_uint16_t_u((((p_2391->g_800 ^= (((((l_797 &= ((l_793 , (((*l_604) = &l_389[0][2]) == ((*l_795) = &l_389[0][3]))) && 4294967295UL)) || ((*l_798) &= (p_2391->g_79[2] >= p_2391->g_4))) , (*p_63)) == 0x55F5CC0BL) <= (*p_2391->g_516))) < 0L) || 1L))))), l_793)) != (*p_63));
            (*p_2391->g_185) = l_801[0][0];
            return (*p_2391->g_516);
        }
        for (l_439 = 0; (l_439 < 12); l_439++)
        { /* block id: 381 */
            int32_t l_804 = 1L;
            uint8_t ***l_807 = &p_2391->g_515;
            int32_t l_832[4][5][4] = {{{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L}},{{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L}},{{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L}},{{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L},{(-3L),8L,0x0335B552L,8L}}};
            int32_t l_836 = (-1L);
            uint16_t **l_910 = (void*)0;
            int8_t ***l_930 = (void*)0;
            int32_t *****l_945[6] = {&l_490,&l_490,&l_490,&l_490,&l_490,&l_490};
            uint64_t **l_1007[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_1023 = 0x0CD4506FL;
            int64_t l_1055 = 0x20C46C72607BFEE6L;
            int64_t *l_1056 = (void*)0;
            int64_t *l_1057 = &l_835;
            int16_t *l_1058[6][7] = {{&l_824,&l_824,&l_532,&l_824,&l_824,&l_824,&l_824},{&l_824,&l_824,&l_532,&l_824,&l_824,&l_824,&l_824},{&l_824,&l_824,&l_532,&l_824,&l_824,&l_824,&l_824},{&l_824,&l_824,&l_532,&l_824,&l_824,&l_824,&l_824},{&l_824,&l_824,&l_532,&l_824,&l_824,&l_824,&l_824},{&l_824,&l_824,&l_532,&l_824,&l_824,&l_824,&l_824}};
            int64_t l_1059 = 1L;
            int i, j, k;
            if (l_804)
                break;
        }
    }
    (*l_1076) = ((*p_63) = (0x6354307E34EED001L < (safe_unary_minus_func_int8_t_s((safe_rshift_func_uint8_t_u_s((((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s(l_1069, 2)), (l_1070 <= (safe_sub_func_uint64_t_u_u(1UL, ((+p_2391->g_147) && (safe_rshift_func_uint16_t_u_s(((l_1075 = &p_60) == l_1030), 10)))))))) | (GROUP_DIVERGE(0, 1) , 0x762E826EL)) & p_61), 0))))));
    return (*p_2391->g_516);
}


/* ------------------------------------------ */
/* 
 * reads : p_2391->g_86 p_2391->g_83 p_2391->g_3 p_2391->g_79 p_2391->g_6 p_2391->g_4 p_2391->g_103 p_2391->g_81 p_2391->g_143 p_2391->g_146 p_2391->g_150 p_2391->g_147 p_2391->g_222 p_2391->g_237 p_2391->g_231 p_2391->g_244 p_2391->g_236
 * writes: p_2391->g_83 p_2391->g_103 p_2391->g_143 p_2391->g_79 p_2391->g_146 p_2391->g_147 p_2391->g_152 p_2391->g_185 p_2391->g_222 p_2391->g_237 p_2391->g_244
 */
int64_t  func_64(uint16_t  p_65, uint32_t  p_66, int64_t  p_67, int32_t * p_68, int64_t  p_69, struct S0 * p_2391)
{ /* block id: 30 */
    uint32_t l_85 = 0x102D4306L;
    uint16_t *l_87 = &p_2391->g_83;
    int64_t l_102 = (-5L);
    int32_t l_104 = 0x27EC9291L;
    int32_t **l_105[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t *l_142[2][1];
    int16_t l_144[4];
    uint8_t *l_243[9] = {&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147,&p_2391->g_147};
    uint8_t **l_242[2][9] = {{&l_243[6],&l_243[2],&l_243[6],&l_243[6],&l_243[2],&l_243[6],&l_243[6],&l_243[2],&l_243[6]},{&l_243[6],&l_243[2],&l_243[6],&l_243[6],&l_243[2],&l_243[6],&l_243[6],&l_243[2],&l_243[6]}};
    uint32_t l_250 = 0x3E46F08CL;
    uint8_t l_281[3];
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_142[i][j] = (void*)0;
    }
    for (i = 0; i < 4; i++)
        l_144[i] = (-1L);
    for (i = 0; i < 3; i++)
        l_281[i] = 255UL;
    if ((((((l_85 > ((p_2391->g_86 != &p_68) >= (-7L))) <= ((*l_87) |= 2UL)) != (safe_rshift_func_uint8_t_u_u(((((((p_2391->g_3[0][0] <= l_85) , (safe_rshift_func_int16_t_s_s(((18446744073709551608UL != (safe_mul_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((safe_add_func_int16_t_s_s(((p_2391->g_103[0] = (((safe_mul_func_int8_t_s_s(((l_87 != &p_65) , 0x54L), 0x55L)) > 0xE8E729AEL) , l_102)) | 18446744073709551609UL), 1UL)), 0x5B32L)), p_2391->g_79[5])) < l_104), p_2391->g_6))) >= 0x60B1L), 14))) , l_102) < p_66) , l_105[1]) != l_105[1]), FAKE_DIVERGE(p_2391->local_1_offset, get_local_id(1), 10)))) != (-1L)) , (*p_68)))
    { /* block id: 33 */
        int16_t l_108 = 0x11D3L;
        int32_t *l_151 = (void*)0;
        int32_t l_167 = (-3L);
        int32_t l_183 = 0x7549FE1CL;
        for (p_67 = 0; (p_67 >= 1); p_67 = safe_add_func_int32_t_s_s(p_67, 5))
        { /* block id: 36 */
            int16_t l_109 = 0x67C1L;
            int32_t *l_149 = &p_2391->g_150;
            uint8_t *l_177 = &p_2391->g_147;
            p_68 = p_68;
            for (l_85 = 1; (l_85 <= 7); l_85 += 1)
            { /* block id: 40 */
                uint32_t l_141 = 0x8C3D5F11L;
                int32_t l_148 = 0x145B4DF5L;
                int32_t **l_159 = &l_151;
                uint32_t *l_164 = &p_2391->g_146;
                uint32_t *l_165 = &l_141;
                uint8_t *l_166 = &p_2391->g_147;
                uint8_t **l_176 = &l_166;
                int64_t *l_182 = &l_102;
                int i;
                l_108 ^= 0x6F9374BAL;
                if (p_2391->g_79[l_85])
                { /* block id: 42 */
                    uint32_t l_110[3];
                    int8_t *l_126 = &p_2391->g_79[l_85];
                    int8_t **l_125 = &l_126;
                    int32_t l_145 = 1L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_110[i] = 8UL;
                    l_110[1]++;
                    if ((((((((&p_65 != ((safe_mod_func_int32_t_s_s((p_2391->g_146 &= ((safe_add_func_int16_t_s_s((0UL | p_2391->g_103[4]), (((safe_lshift_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(((p_2391->g_79[l_85] = (safe_lshift_func_uint8_t_u_s((l_145 = ((p_2391->g_143 &= ((safe_rshift_func_int8_t_s_u((((*l_125) = &p_2391->g_79[0]) == ((safe_rshift_func_int8_t_s_u(0x63L, ((p_2391->g_79[4] && p_67) & (safe_lshift_func_int8_t_s_u((safe_sub_func_int64_t_s_s(((((safe_sub_func_uint32_t_u_u(p_2391->g_79[2], ((((((safe_add_func_int32_t_s_s((((safe_mod_func_uint16_t_u_u((((((safe_lshift_func_uint16_t_u_u(p_2391->g_103[0], 10)) == p_2391->g_81) | 0x756814FFF49AF335L) < (*p_68)) || p_2391->g_79[l_85]), 65535UL)) && p_2391->g_83) != 246UL), p_2391->g_79[l_85])) , 65527UL) , 1L) != p_69) ^ p_67) < l_110[1]))) <= l_108) | p_67) , p_2391->g_79[l_85]), l_141)), 4))))) , l_142[0][0])), p_65)) ^ FAKE_DIVERGE(p_2391->local_2_offset, get_local_id(2), 10))) >= l_144[1])), l_108))) ^ p_2391->g_3[0][0]), 0x70C3C4A37C750F7EL)), p_2391->g_4)) || 18446744073709551612UL) >= 0x90L))) ^ 1UL)), l_108)) , (void*)0)) , p_2391->g_3[0][0]) ^ l_109) & l_141) && 0x32EB6C46BC4935F4L) , p_2391->g_79[l_85]) & p_2391->g_81))
                    { /* block id: 49 */
                        p_2391->g_147 = (l_145 = (*p_68));
                    }
                    else
                    { /* block id: 52 */
                        l_148 |= ((void*)0 == (*l_125));
                    }
                    l_149 = p_68;
                    p_2391->g_152[3][0] = l_151;
                }
                else
                { /* block id: 57 */
                    int32_t l_153 = (-9L);
                    l_153 = 0x509C0B3FL;
                }
                l_167 = ((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(((p_2391->g_3[0][0] , (p_67 ^ ((p_2391->g_79[l_85] |= ((safe_unary_minus_func_uint8_t_u(((*l_166) ^= ((((void*)0 == l_159) && ((0L >= (((safe_div_func_int32_t_s_s((*p_68), (l_148 = ((((*l_149) , (-1L)) >= (safe_rshift_func_int8_t_s_s((((*l_165) = ((*l_164) = ((void*)0 != &p_2391->g_79[2]))) >= 0x4A46D338L), p_2391->g_81))) ^ 0x16B2L)))) & 0x7988L) < 0x78L)) , 0x73CEL)) || (-6L))))) & p_69)) <= p_69))) , 0xA016L), p_69)), 1)) , (*p_68));
                l_183 ^= (((safe_mod_func_int32_t_s_s((safe_sub_func_int16_t_s_s((safe_add_func_uint16_t_u_u(p_2391->g_81, (-1L))), p_2391->g_143)), p_67)) && ((((((*l_182) = (safe_lshift_func_int8_t_s_u((((*l_176) = l_166) != &p_2391->g_147), ((*l_177) = ((((void*)0 != l_177) > ((++(*l_165)) ^ ((safe_mod_func_int16_t_s_s((GROUP_DIVERGE(0, 1) | p_2391->g_146), p_2391->g_79[1])) ^ p_65))) != 0x68472236L))))) , p_67) , p_69) | l_148) > p_65)) || (*p_68));
            }
            return p_2391->g_3[0][0];
        }
        l_183 = (+(*p_68));
    }
    else
    { /* block id: 75 */
        int32_t ***l_184[5][6][7] = {{{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]}},{{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]}},{{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]}},{{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]}},{{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]},{(void*)0,&l_105[1],&l_105[4],(void*)0,&l_105[1],&l_105[1],&l_105[1]}}};
        int8_t l_186 = 0x7CL;
        int i, j, k;
        p_2391->g_185 = &p_2391->g_152[8][3];
        l_186 = ((void*)0 != l_142[0][0]);
    }
    for (p_67 = 0; (p_67 >= 0); p_67 -= 1)
    { /* block id: 81 */
        uint8_t l_187 = 0x45L;
        int16_t l_200 = (-9L);
        int32_t l_203 = 0x75C585E5L;
        int32_t l_204 = 1L;
        int32_t l_205 = 4L;
        int32_t l_206[4];
        int i;
        for (i = 0; i < 4; i++)
            l_206[i] = 0x36089E21L;
        if ((*p_68))
            break;
        l_187 = 1L;
        if ((((~(safe_mod_func_uint64_t_u_u((((safe_sub_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((p_67 , 0x4DL), l_187)), (safe_mod_func_int8_t_s_s(((&l_142[1][0] != &l_142[0][0]) , (p_2391->g_147 || (l_142[0][0] != &p_2391->g_79[3]))), p_2391->g_3[0][0])))), 0xE7L)) > (-5L)), 0x747EL)) != p_69) >= p_2391->g_4), p_2391->g_79[2]))) == p_65) >= l_187))
        { /* block id: 84 */
            int32_t l_201[8];
            int32_t l_202[3][2][1] = {{{6L},{6L}},{{6L},{6L}},{{6L},{6L}}};
            int32_t l_207 = 1L;
            uint32_t l_208 = 2UL;
            int i, j, k;
            for (i = 0; i < 8; i++)
                l_201[i] = 0x667F92BEL;
            l_208--;
        }
        else
        { /* block id: 86 */
            int64_t *l_215 = (void*)0;
            int64_t *l_216 = &l_102;
            uint64_t *l_221 = &p_2391->g_222;
            int32_t l_225 = (-5L);
            uint8_t *l_226[8] = {&l_187,&l_187,&l_187,&l_187,&l_187,&l_187,&l_187,&l_187};
            int32_t l_227 = 0x25184AE9L;
            int32_t l_229 = 0x1414223DL;
            int32_t l_230 = 1L;
            int32_t l_232 = 0L;
            int32_t l_233 = 1L;
            int32_t l_234 = (-7L);
            int32_t ***l_272[4] = {&l_105[1],&l_105[1],&l_105[1],&l_105[1]};
            int i;
            p_2391->g_244 |= ((((*l_216) = (p_2391->g_147 <= (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(p_67, 3)), 5)))) ^ (((((1UL & FAKE_DIVERGE(p_2391->global_2_offset, get_global_id(2), 10)) != (((((safe_mod_func_uint64_t_u_u(p_2391->g_79[2], ((*l_221) ^= (safe_rshift_func_int16_t_s_s(p_2391->g_6, 11))))) && GROUP_DIVERGE(1, 1)) != (((((l_225 = (p_67 , p_2391->g_79[0])) < ((--p_2391->g_237) <= GROUP_DIVERGE(0, 1))) == (safe_mul_func_int8_t_s_s((l_242[1][0] == (void*)0), 0UL))) <= p_2391->g_231) > (-3L))) < l_234) > l_204)) , 0L) , p_69) <= 0xC9F9C56E4C1123FFL)) || l_232);
            for (p_69 = 0; (p_69 >= 0); p_69 -= 1)
            { /* block id: 94 */
                int16_t l_246 = 0x4E7DL;
                int32_t l_248 = (-8L);
                int32_t ***l_268 = (void*)0;
                for (p_65 = 0; (p_65 <= 0); p_65 += 1)
                { /* block id: 97 */
                    int32_t l_245 = (-1L);
                    int32_t l_247 = 1L;
                    int32_t l_249 = 0x1D85AB17L;
                    uint32_t *l_263 = (void*)0;
                    uint32_t *l_264 = &p_2391->g_146;
                    int32_t ****l_269 = (void*)0;
                    int32_t ****l_270 = (void*)0;
                    int32_t ****l_271 = &l_268;
                    int32_t ****l_273 = &l_272[1];
                    int16_t *l_276 = (void*)0;
                    int16_t *l_277[6][9][4] = {{{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246}},{{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246}},{{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246}},{{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246}},{{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246}},{{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246},{&p_2391->g_81,&l_144[1],&l_246,&l_246}}};
                    uint8_t *l_280 = &l_187;
                    int i, j, k;
                    l_250++;
                    if ((((safe_mod_func_int32_t_s_s(((safe_add_func_int32_t_s_s(0x25E379C5L, (safe_lshift_func_uint16_t_u_u(p_2391->g_3[p_69][p_65], 13)))) ^ (*p_68)), (p_2391->g_79[2] && (safe_rshift_func_uint8_t_u_u(249UL, (((l_233 , 0x3167161AL) ^ 6L) > ((*l_264) = (safe_mod_func_int16_t_s_s((0x5124L <= 1L), p_69))))))))) <= l_247) != l_246))
                    { /* block id: 100 */
                        int64_t l_265 = (-1L);
                        l_248 |= (((l_206[3] && ((!0xB7L) || l_246)) < 0x22E3L) > 0UL);
                        l_265 = (0x052A23B5L | ((*l_264) ^= p_2391->g_236[0]));
                    }
                    else
                    { /* block id: 104 */
                        return p_2391->g_3[0][0];
                    }
                    l_245 &= (safe_add_func_int16_t_s_s((l_234 = ((((*l_271) = l_268) != ((*l_273) = l_272[1])) , (p_2391->g_231 >= ((safe_lshift_func_uint16_t_u_u(p_65, 4)) & ((*l_216) ^= p_2391->g_237))))), (safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((void*)0 == l_280)))));
                }
            }
            l_203 ^= 0x4FECF0D0L;
            if ((*p_68))
                break;
        }
    }
    l_281[2]--;
    return p_65;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2392;
    struct S0* p_2391 = &c_2392;
    struct S0 c_2393 = {
        {{(-1L)}}, // p_2391->g_3
        0L, // p_2391->g_4
        (-1L), // p_2391->g_6
        {0L,0L,0L,0L,0L,0L,0L,0L}, // p_2391->g_79
        0x782AL, // p_2391->g_81
        0UL, // p_2391->g_83
        (void*)0, // p_2391->g_86
        {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL}, // p_2391->g_103
        0xCAD57F61L, // p_2391->g_143
        0xA099D88FL, // p_2391->g_146
        0UL, // p_2391->g_147
        0L, // p_2391->g_150
        {{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4},{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4},{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4},{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4},{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4},{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4},{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4},{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4},{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4},{&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4,&p_2391->g_4}}, // p_2391->g_152
        &p_2391->g_152[3][0], // p_2391->g_185
        0UL, // p_2391->g_222
        {0x09L,0x09L,0x09L,0x09L}, // p_2391->g_228
        0x23FC1217L, // p_2391->g_231
        {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)}, // p_2391->g_235
        {0L,0L,0L,0L,0L}, // p_2391->g_236
        1UL, // p_2391->g_237
        0x3A4709FAL, // p_2391->g_244
        (void*)0, // p_2391->g_301
        &p_2391->g_301, // p_2391->g_300
        6UL, // p_2391->g_316
        (-5L), // p_2391->g_325
        (void*)0, // p_2391->g_351
        &p_2391->g_351, // p_2391->g_350
        0x80BEL, // p_2391->g_361
        (void*)0, // p_2391->g_364
        &p_2391->g_237, // p_2391->g_369
        &p_2391->g_235[5], // p_2391->g_433
        0x5F523904L, // p_2391->g_463
        &p_2391->g_4, // p_2391->g_472
        {{(void*)0,(void*)0,&p_2391->g_472,&p_2391->g_472},{(void*)0,(void*)0,&p_2391->g_472,&p_2391->g_472},{(void*)0,(void*)0,&p_2391->g_472,&p_2391->g_472},{(void*)0,(void*)0,&p_2391->g_472,&p_2391->g_472},{(void*)0,(void*)0,&p_2391->g_472,&p_2391->g_472},{(void*)0,(void*)0,&p_2391->g_472,&p_2391->g_472},{(void*)0,(void*)0,&p_2391->g_472,&p_2391->g_472},{(void*)0,(void*)0,&p_2391->g_472,&p_2391->g_472}}, // p_2391->g_471
        &p_2391->g_472, // p_2391->g_473
        0x5492675FL, // p_2391->g_505
        &p_2391->g_147, // p_2391->g_516
        &p_2391->g_516, // p_2391->g_515
        9L, // p_2391->g_534
        &p_2391->g_534, // p_2391->g_533
        {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}, // p_2391->g_603
        (void*)0, // p_2391->g_607
        {{{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL}},{{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL}},{{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL}},{{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL}},{{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL}},{{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL}},{{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL}},{{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL}},{{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL},{0x0ADD061B0DAD9982L,1UL}}}, // p_2391->g_616
        0xACB6C9122CBB0837L, // p_2391->g_646
        254UL, // p_2391->g_693
        4294967295UL, // p_2391->g_695
        {&p_2391->g_222}, // p_2391->g_703
        &p_2391->g_703[0], // p_2391->g_702
        &p_2391->g_646, // p_2391->g_746
        (void*)0, // p_2391->g_760
        0xBE3F62817C337848L, // p_2391->g_800
        (void*)0, // p_2391->g_929
        &p_2391->g_929, // p_2391->g_928
        &p_2391->g_928, // p_2391->g_927
        {1UL,1UL,1UL,1UL,1UL,1UL}, // p_2391->g_946
        0x5FE1EA8ABA1A5931L, // p_2391->g_954
        &p_2391->g_954, // p_2391->g_953
        &p_2391->g_953, // p_2391->g_952
        0x45C3E5BCL, // p_2391->g_993
        {{&p_2391->g_351,&p_2391->g_351},{&p_2391->g_351,&p_2391->g_351},{&p_2391->g_351,&p_2391->g_351},{&p_2391->g_351,&p_2391->g_351},{&p_2391->g_351,&p_2391->g_351},{&p_2391->g_351,&p_2391->g_351},{&p_2391->g_351,&p_2391->g_351},{&p_2391->g_351,&p_2391->g_351}}, // p_2391->g_1016
        1L, // p_2391->g_1133
        247UL, // p_2391->g_1187
        0x0A2D05A3L, // p_2391->g_1261
        {0xB4FFC616L,0xB4FFC616L,0xB4FFC616L,0xB4FFC616L,0xB4FFC616L}, // p_2391->g_1265
        (-3L), // p_2391->g_1351
        &p_2391->g_325, // p_2391->g_1390
        &p_2391->g_1390, // p_2391->g_1389
        1UL, // p_2391->g_1446
        &p_2391->g_244, // p_2391->g_1454
        &p_2391->g_1454, // p_2391->g_1453
        &p_2391->g_1453, // p_2391->g_1452
        (void*)0, // p_2391->g_1507
        (void*)0, // p_2391->g_1513
        &p_2391->g_1513, // p_2391->g_1512
        0x08ED1AC9L, // p_2391->g_1524
        (-7L), // p_2391->g_1570
        &p_2391->g_1351, // p_2391->g_1584
        0x77L, // p_2391->g_1665
        &p_2391->g_152[3][0], // p_2391->g_1707
        0x1519F9485EFEE87FL, // p_2391->g_1758
        &p_2391->g_927, // p_2391->g_1813
        (void*)0, // p_2391->g_1852
        &p_2391->g_1852, // p_2391->g_1851
        0UL, // p_2391->g_1854
        &p_2391->g_1854, // p_2391->g_1853
        (void*)0, // p_2391->g_1876
        {{(-1L),1L,7L,1L,(-1L),(-1L),1L,7L,1L},{(-1L),1L,7L,1L,(-1L),(-1L),1L,7L,1L}}, // p_2391->g_1889
        &p_2391->g_81, // p_2391->g_1926
        &p_2391->g_1926, // p_2391->g_1925
        &p_2391->g_1925, // p_2391->g_1924
        7UL, // p_2391->g_1981
        0xD594531EL, // p_2391->g_2013
        0x54B0B347L, // p_2391->g_2099
        &p_2391->g_3[0][0], // p_2391->g_2104
        &p_2391->g_2104, // p_2391->g_2106
        &p_2391->g_146, // p_2391->g_2122
        &p_2391->g_2122, // p_2391->g_2121
        &p_2391->g_2122, // p_2391->g_2127
        {{{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121}},{{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121}},{{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121}},{{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121}},{{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121},{&p_2391->g_2121,(void*)0,&p_2391->g_2127,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2121,&p_2391->g_2127,&p_2391->g_2121}}}, // p_2391->g_2149
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_2391->g_2213
        0x093E2C01L, // p_2391->g_2226
        {&p_2391->g_1453,&p_2391->g_1453,&p_2391->g_1453,&p_2391->g_1453,&p_2391->g_1453,&p_2391->g_1453,&p_2391->g_1453,&p_2391->g_1453,&p_2391->g_1453,&p_2391->g_1453}, // p_2391->g_2305
        &p_2391->g_2305[0], // p_2391->g_2304
        {{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}},{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}},{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}},{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}},{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}},{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}},{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}},{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}},{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}},{{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL},{0x839EL,0x839EL,0x4BBCL,0x7687L,0xF742L,0x7687L,0x4BBCL}}}, // p_2391->g_2390
        sequence_input[get_global_id(0)], // p_2391->global_0_offset
        sequence_input[get_global_id(1)], // p_2391->global_1_offset
        sequence_input[get_global_id(2)], // p_2391->global_2_offset
        sequence_input[get_local_id(0)], // p_2391->local_0_offset
        sequence_input[get_local_id(1)], // p_2391->local_1_offset
        sequence_input[get_local_id(2)], // p_2391->local_2_offset
        sequence_input[get_group_id(0)], // p_2391->group_0_offset
        sequence_input[get_group_id(1)], // p_2391->group_1_offset
        sequence_input[get_group_id(2)], // p_2391->group_2_offset
    };
    c_2392 = c_2393;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2391);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2391->g_3[i][j], "p_2391->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2391->g_4, "p_2391->g_4", print_hash_value);
    transparent_crc(p_2391->g_6, "p_2391->g_6", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2391->g_79[i], "p_2391->g_79[i]", print_hash_value);

    }
    transparent_crc(p_2391->g_81, "p_2391->g_81", print_hash_value);
    transparent_crc(p_2391->g_83, "p_2391->g_83", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2391->g_103[i], "p_2391->g_103[i]", print_hash_value);

    }
    transparent_crc(p_2391->g_143, "p_2391->g_143", print_hash_value);
    transparent_crc(p_2391->g_146, "p_2391->g_146", print_hash_value);
    transparent_crc(p_2391->g_147, "p_2391->g_147", print_hash_value);
    transparent_crc(p_2391->g_150, "p_2391->g_150", print_hash_value);
    transparent_crc(p_2391->g_222, "p_2391->g_222", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2391->g_228[i], "p_2391->g_228[i]", print_hash_value);

    }
    transparent_crc(p_2391->g_231, "p_2391->g_231", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2391->g_235[i], "p_2391->g_235[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2391->g_236[i], "p_2391->g_236[i]", print_hash_value);

    }
    transparent_crc(p_2391->g_237, "p_2391->g_237", print_hash_value);
    transparent_crc(p_2391->g_244, "p_2391->g_244", print_hash_value);
    transparent_crc(p_2391->g_316, "p_2391->g_316", print_hash_value);
    transparent_crc(p_2391->g_325, "p_2391->g_325", print_hash_value);
    transparent_crc(p_2391->g_361, "p_2391->g_361", print_hash_value);
    transparent_crc(p_2391->g_463, "p_2391->g_463", print_hash_value);
    transparent_crc(p_2391->g_505, "p_2391->g_505", print_hash_value);
    transparent_crc(p_2391->g_534, "p_2391->g_534", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2391->g_603[i], "p_2391->g_603[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2391->g_616[i][j][k], "p_2391->g_616[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2391->g_646, "p_2391->g_646", print_hash_value);
    transparent_crc(p_2391->g_693, "p_2391->g_693", print_hash_value);
    transparent_crc(p_2391->g_695, "p_2391->g_695", print_hash_value);
    transparent_crc(p_2391->g_800, "p_2391->g_800", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2391->g_946[i], "p_2391->g_946[i]", print_hash_value);

    }
    transparent_crc(p_2391->g_954, "p_2391->g_954", print_hash_value);
    transparent_crc(p_2391->g_993, "p_2391->g_993", print_hash_value);
    transparent_crc(p_2391->g_1133, "p_2391->g_1133", print_hash_value);
    transparent_crc(p_2391->g_1187, "p_2391->g_1187", print_hash_value);
    transparent_crc(p_2391->g_1261, "p_2391->g_1261", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2391->g_1265[i], "p_2391->g_1265[i]", print_hash_value);

    }
    transparent_crc(p_2391->g_1351, "p_2391->g_1351", print_hash_value);
    transparent_crc(p_2391->g_1446, "p_2391->g_1446", print_hash_value);
    transparent_crc(p_2391->g_1524, "p_2391->g_1524", print_hash_value);
    transparent_crc(p_2391->g_1570, "p_2391->g_1570", print_hash_value);
    transparent_crc(p_2391->g_1665, "p_2391->g_1665", print_hash_value);
    transparent_crc(p_2391->g_1758, "p_2391->g_1758", print_hash_value);
    transparent_crc(p_2391->g_1854, "p_2391->g_1854", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2391->g_1889[i][j], "p_2391->g_1889[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2391->g_1981, "p_2391->g_1981", print_hash_value);
    transparent_crc(p_2391->g_2013, "p_2391->g_2013", print_hash_value);
    transparent_crc(p_2391->g_2099, "p_2391->g_2099", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2391->g_2213[i], "p_2391->g_2213[i]", print_hash_value);

    }
    transparent_crc(p_2391->g_2226, "p_2391->g_2226", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2391->g_2390[i][j][k], "p_2391->g_2390[i][j][k]", print_hash_value);

            }
        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
