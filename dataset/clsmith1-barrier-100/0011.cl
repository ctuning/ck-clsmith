// ---fake_divergence ---inter_thread_comm -g 86,63,1 -l 2,7,1
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

__constant uint32_t permutations[10][14] = {
{12,5,13,8,3,11,2,9,7,4,10,6,1,0}, // permutation 0
{3,13,11,12,6,8,1,10,2,9,5,0,4,7}, // permutation 1
{11,0,2,5,7,6,9,8,13,1,12,10,3,4}, // permutation 2
{7,11,6,10,3,9,2,4,8,12,13,5,0,1}, // permutation 3
{5,12,0,10,8,9,2,1,7,13,4,3,6,11}, // permutation 4
{10,3,2,4,8,1,5,0,9,12,6,7,13,11}, // permutation 5
{7,10,9,2,0,12,4,1,6,5,3,11,13,8}, // permutation 6
{1,6,8,5,9,13,10,11,3,4,0,7,2,12}, // permutation 7
{3,7,11,10,2,0,9,4,5,6,12,13,1,8}, // permutation 8
{4,9,1,0,12,11,6,8,2,5,10,3,7,13} // permutation 9
};

// Seed: 11

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint64_t  f0;
   uint8_t  f1;
   int32_t  f2;
};

struct S1 {
   uint64_t  f0;
   uint64_t  f1;
   volatile uint64_t  f2;
   uint32_t  f3;
   struct S0  f4;
};

struct S2 {
   uint64_t  f0;
   int16_t  f1;
   volatile uint64_t  f2;
};

union U3 {
   struct S0  f0;
};

struct S4 {
    int32_t g_3;
    volatile int32_t g_4;
    volatile int32_t g_5[6][8];
    volatile int32_t g_6;
    int32_t g_7;
    struct S0 g_47;
    struct S0 *g_46;
    int32_t g_74;
    uint8_t g_87;
    int16_t g_102[9][3][4];
    int16_t g_104;
    int16_t g_110;
    int16_t *g_109;
    uint16_t g_114;
    int32_t g_126;
    uint64_t g_128;
    uint32_t g_141;
    volatile uint32_t g_167;
    volatile uint32_t *g_166;
    int8_t g_200;
    uint16_t *g_210;
    uint32_t g_244;
    uint64_t *g_253;
    uint8_t g_283;
    int8_t g_293;
    int8_t g_302;
    struct S0 g_314;
    struct S0 g_319;
    uint16_t g_350;
    int64_t g_351;
    struct S0 g_364[3][1];
    struct S0 g_428[2][10][5];
    int32_t *g_435;
    int32_t *g_436[9];
    uint32_t *g_478;
    uint32_t **g_477;
    int32_t **g_517;
    struct S0 g_565;
    struct S0 g_582;
    struct S0 g_583;
    struct S0 g_584;
    struct S0 g_585;
    struct S0 g_586;
    struct S0 g_587;
    struct S0 g_588;
    struct S0 g_589;
    struct S0 g_590;
    struct S0 g_591;
    struct S0 g_592;
    struct S0 g_593[5];
    struct S0 g_594;
    struct S0 g_595[7];
    struct S2 g_598;
    struct S2 g_601;
    struct S2 g_608;
    struct S2 g_610;
    struct S2 g_611;
    struct S2 g_612;
    struct S2 g_613[5][2];
    struct S2 g_614;
    struct S1 g_617;
    struct S1 g_686;
    struct S1 g_688;
    volatile uint64_t g_700;
    volatile uint64_t *g_699;
    volatile struct S2 g_707;
    volatile struct S2 *g_706;
    volatile struct S0 g_763;
    volatile struct S0 *g_762;
    int32_t * volatile g_769;
    uint8_t *g_772[10][2][3];
    uint8_t **g_771[7];
    uint8_t *** volatile g_773;
    struct S0 ** volatile g_775;
    struct S2 *g_778;
    struct S2 ** volatile g_777;
    uint16_t **g_794[2][6];
    volatile struct S2 g_799;
    int32_t * volatile g_813;
    int64_t * volatile *g_821;
    struct S1 * volatile g_866;
    struct S1 * volatile g_867;
    int32_t ** volatile g_884;
    volatile struct S1 g_900[2][6][2];
    struct S0 g_904;
    volatile struct S1 g_907;
    struct S0 ** volatile g_919;
    int8_t g_921;
    int64_t g_925[1];
    union U3 g_950[4];
    uint16_t g_1014;
    struct S0 g_1025;
    struct S0 g_1027[6][4][2];
    volatile struct S2 g_1031[7];
    struct S2 g_1076;
    int32_t g_1077;
    int32_t * volatile g_1079;
    uint32_t *g_1124;
    uint32_t **g_1123;
    uint32_t *** volatile g_1122;
    volatile struct S1 g_1125;
    struct S0 g_1157;
    struct S1 g_1169;
    struct S1 g_1170;
    int32_t * volatile g_1177[2][4][6];
    int32_t * volatile g_1178;
    uint64_t *g_1231;
    volatile uint64_t g_1319;
    struct S1 g_1328;
    struct S0 g_1329;
    volatile uint8_t g_1372;
    int32_t g_1416[10];
    int32_t * volatile g_1415;
    int32_t * volatile * volatile g_1414;
    int64_t * volatile * volatile *g_1439;
    int64_t * volatile * volatile **g_1438;
    struct S0 g_1443;
    int32_t * volatile g_1457;
    int64_t g_1482;
    struct S0 ** volatile g_1488;
    struct S0 ** volatile g_1489;
    struct S1 g_1493;
    struct S1 * volatile g_1494;
    struct S1 g_1510;
    struct S1 * volatile g_1511;
    struct S1 * volatile g_1512;
    struct S1 **g_1569;
    volatile union U3 g_1576;
    struct S2 g_1589;
    struct S2 ***g_1622;
    struct S2 ****g_1621;
    int32_t * volatile g_1640;
    volatile struct S1 g_1646;
    int32_t * volatile g_1647;
    volatile int8_t g_1649;
    struct S1 ** volatile g_1673;
    uint32_t g_1695[7];
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
int16_t  func_1(struct S4 * p_1700);
int8_t  func_16(int16_t  p_17, uint32_t  p_18, int32_t  p_19, int32_t  p_20, uint32_t  p_21, struct S4 * p_1700);
struct S0  func_22(uint32_t  p_23, uint32_t  p_24, int8_t  p_25, uint32_t  p_26, int64_t  p_27, struct S4 * p_1700);
int8_t  func_30(int8_t  p_31, uint64_t  p_32, int8_t  p_33, int64_t  p_34, struct S4 * p_1700);
uint64_t  func_36(uint32_t  p_37, struct S4 * p_1700);
struct S0 * func_38(int8_t  p_39, int64_t  p_40, struct S0 * p_41, int32_t  p_42, struct S0 * p_43, struct S4 * p_1700);
int32_t  func_44(struct S0 * p_45, struct S4 * p_1700);
struct S2  func_63(int32_t  p_64, int32_t * p_65, int32_t * p_66, struct S4 * p_1700);
int32_t * func_67(uint32_t  p_68, uint32_t  p_69, struct S4 * p_1700);
struct S0 * func_75(uint32_t  p_76, int64_t  p_77, uint32_t  p_78, struct S4 * p_1700);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1700->g_3 p_1700->g_7 p_1700->g_104 p_1700->g_1439 p_1700->g_821 p_1700->g_1438 p_1700->g_699 p_1700->g_700 p_1700->g_109 p_1700->g_110 p_1700->g_1014 p_1700->g_166 p_1700->g_167 p_1700->g_777 p_1700->g_778 p_1700->g_613 p_1700->g_1621 p_1700->g_350 p_1700->g_1076.f1 p_1700->g_1640 p_1700->g_1027.f2 p_1700->g_1457 p_1700->g_126 p_1700->g_1646 p_1700->g_1647 p_1700->g_592.f2 p_1700->g_1649 p_1700->g_601.f1 p_1700->g_1125.f3 p_1700->g_1124 p_1700->g_244 p_1700->g_283 p_1700->g_1443 p_1700->g_590.f2 p_1700->g_253 p_1700->g_1695 p_1700->g_925 p_1700->g_1076.f0 p_1700->g_46
 * writes: p_1700->g_3 p_1700->g_7 p_1700->g_104 p_1700->g_1025.f1 p_1700->g_1416 p_1700->g_1014 p_1700->g_350 p_1700->g_1076.f1 p_1700->g_1027.f2 p_1700->g_126 p_1700->g_617.f4.f2 p_1700->g_592.f2 p_1700->g_866 p_1700->g_688.f4.f1 p_1700->g_109 p_1700->g_128 p_1700->g_1695 p_1700->g_47 p_1700->g_601.f1
 */
int16_t  func_1(struct S4 * p_1700)
{ /* block id: 4 */
    int32_t l_2[8][8][2] = {{{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL}},{{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL}},{{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL}},{{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL}},{{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL}},{{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL}},{{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL}},{{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL},{0x5F7CD95DL,0x5F7CD95DL}}};
    int64_t ****l_1502 = (void*)0;
    int64_t *****l_1501 = &l_1502;
    int32_t l_1514 = 0L;
    int32_t *l_1582 = &p_1700->g_1416[6];
    int32_t l_1636 = 0x10241776L;
    uint8_t l_1637[7][1] = {{0x9CL},{0x9CL},{0x9CL},{0x9CL},{0x9CL},{0x9CL},{0x9CL}};
    int16_t *l_1689 = &p_1700->g_102[2][0][3];
    int32_t l_1699 = 1L;
    int i, j, k;
lbl_1643:
    for (p_1700->g_3 = 0; (p_1700->g_3 <= 1); p_1700->g_3 += 1)
    { /* block id: 7 */
        uint32_t l_35 = 0x19BA7C33L;
        int64_t *l_924 = &p_1700->g_925[0];
        int64_t **l_923 = &l_924;
        int64_t ***l_922 = &l_923;
        int32_t l_1487 = 0L;
        int64_t ****l_1498 = &l_922;
        int64_t *****l_1497 = &l_1498;
        uint32_t l_1517 = 4294967289UL;
        uint32_t **l_1523 = (void*)0;
        uint64_t l_1586 = 0x6202CDE65685A60AL;
        for (p_1700->g_7 = 0; (p_1700->g_7 <= 1); p_1700->g_7 += 1)
        { /* block id: 10 */
            int8_t *l_920 = &p_1700->g_921;
            uint32_t l_926 = 4294967293UL;
            uint64_t *l_1444[3];
            int32_t l_1445 = 0x24AE8D4DL;
            struct S1 *l_1571 = &p_1700->g_1170;
            struct S1 **l_1570[7][6][5] = {{{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0}},{{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0}},{{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0}},{{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0}},{{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0}},{{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0}},{{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0},{&l_1571,(void*)0,&l_1571,(void*)0,(void*)0}}};
            struct S2 *l_1585[9][10][2] = {{{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611}},{{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611}},{{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611}},{{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611}},{{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611}},{{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611}},{{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611}},{{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611}},{{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611},{&p_1700->g_601,&p_1700->g_611}}};
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_1444[i] = &p_1700->g_1076.f0;
            (1 + 1);
        }
        for (p_1700->g_104 = 0; (p_1700->g_104 <= 1); p_1700->g_104 += 1)
        { /* block id: 868 */
            uint16_t *l_1616 = &p_1700->g_1014;
            uint16_t *l_1619 = (void*)0;
            uint16_t *l_1620 = &p_1700->g_350;
            struct S2 ****l_1623 = &p_1700->g_1622;
            int32_t l_1624 = 0x073F10DBL;
            int32_t l_1625 = 1L;
            for (p_1700->g_1025.f1 = 0; p_1700->g_1025.f1 < 10; p_1700->g_1025.f1 += 1)
            {
                p_1700->g_1416[p_1700->g_1025.f1] = 0x296E18BEL;
            }
            l_1625 ^= ((((+(((safe_mul_func_int16_t_s_s(((FAKE_DIVERGE(p_1700->global_2_offset, get_global_id(2), 10) & ((*p_1700->g_1439) == (**p_1700->g_1438))) ^ (safe_mul_func_int8_t_s_s(((*p_1700->g_699) , ((*p_1700->g_109) && (((safe_lshift_func_uint16_t_u_s((--(*l_1616)), 15)) | ((*l_1620) = ((*p_1700->g_166) != l_1514))) , (l_1514 = (!((*l_1620) ^= (((**p_1700->g_777) , p_1700->g_1621) == l_1623))))))), 0UL))), 5UL)) || (*p_1700->g_699)) == 18446744073709551615UL)) >= l_1624) <= 0L) || l_2[5][1][0]);
            return l_1624;
        }
    }
    for (p_1700->g_1076.f1 = 0; (p_1700->g_1076.f1 > (-5)); p_1700->g_1076.f1 = safe_sub_func_uint64_t_u_u(p_1700->g_1076.f1, 5))
    { /* block id: 880 */
        int32_t *l_1628 = &p_1700->g_584.f2;
        int32_t *l_1629 = (void*)0;
        int32_t *l_1630 = &p_1700->g_1443.f2;
        int32_t *l_1631 = &p_1700->g_585.f2;
        int32_t *l_1632 = &p_1700->g_686.f4.f2;
        int32_t *l_1633 = &p_1700->g_1329.f2;
        int32_t *l_1634 = &p_1700->g_686.f4.f2;
        int32_t *l_1635[3][9] = {{&p_1700->g_582.f2,&p_1700->g_1493.f4.f2,&p_1700->g_1493.f4.f2,&p_1700->g_582.f2,&p_1700->g_582.f2,&p_1700->g_1493.f4.f2,&p_1700->g_1493.f4.f2,&p_1700->g_582.f2,&p_1700->g_582.f2},{&p_1700->g_582.f2,&p_1700->g_1493.f4.f2,&p_1700->g_1493.f4.f2,&p_1700->g_582.f2,&p_1700->g_582.f2,&p_1700->g_1493.f4.f2,&p_1700->g_1493.f4.f2,&p_1700->g_582.f2,&p_1700->g_582.f2},{&p_1700->g_582.f2,&p_1700->g_1493.f4.f2,&p_1700->g_1493.f4.f2,&p_1700->g_582.f2,&p_1700->g_582.f2,&p_1700->g_1493.f4.f2,&p_1700->g_1493.f4.f2,&p_1700->g_582.f2,&p_1700->g_582.f2}};
        int i, j;
        --l_1637[3][0];
    }
    (*p_1700->g_1640) |= l_2[0][5][0];
    if (((*p_1700->g_1457) &= l_2[3][3][1]))
    { /* block id: 885 */
        int32_t *l_1641 = (void*)0;
        int32_t l_1642 = 0x090EB714L;
        l_1642 |= (*p_1700->g_1640);
        if (p_1700->g_350)
            goto lbl_1643;
        if (p_1700->g_3)
            goto lbl_1643;
    }
    else
    { /* block id: 889 */
        uint16_t *l_1656[8][7][4] = {{{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114}},{{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114}},{{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114}},{{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114}},{{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114}},{{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114}},{{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114}},{{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114},{&p_1700->g_114,(void*)0,&p_1700->g_350,&p_1700->g_114}}};
        int32_t l_1669 = 0x7B46DD8CL;
        int32_t l_1671[4][4][9] = {{{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L}},{{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L}},{{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L}},{{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L},{0x7AF26E37L,1L,5L,(-1L),1L,(-1L),0L,1L,1L}}};
        int16_t *l_1688 = &p_1700->g_104;
        int i, j, k;
        (*p_1700->g_1647) = (safe_lshift_func_uint16_t_u_s((p_1700->g_1646 , l_2[5][7][1]), 3));
        for (p_1700->g_592.f2 = 7; (p_1700->g_592.f2 >= 0); p_1700->g_592.f2 -= 1)
        { /* block id: 893 */
            int64_t l_1648[10][6][4] = {{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}},{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}},{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}},{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}},{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}},{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}},{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}},{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}},{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}},{{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L},{1L,(-7L),(-1L),1L}}};
            uint16_t *l_1654 = &p_1700->g_1014;
            uint16_t **l_1655[4];
            uint32_t *l_1670 = (void*)0;
            struct S1 *l_1672 = &p_1700->g_1169;
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_1655[i] = &l_1654;
            if (l_1648[1][2][2])
                break;
            if (p_1700->g_1649)
                continue;
            if (((safe_lshift_func_uint16_t_u_u((((safe_rshift_func_uint8_t_u_u(((l_1656[5][1][3] = l_1654) == (void*)0), 6)) , l_1514) && (safe_sub_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((l_1648[1][2][2] >= ((GROUP_DIVERGE(2, 1) <= (&p_1700->g_1414 == &p_1700->g_1414)) , (l_1669 = ((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(0x433C24F8L, (&p_1700->g_517 == (void*)0))), (-8L))) > l_1648[1][2][2]) & l_1669), 0x2DL)), l_1669)) , 0x0660D130L)))), (*p_1700->g_166))), l_1671[0][0][6]))), GROUP_DIVERGE(1, 1))) > l_1671[1][1][2]))
            { /* block id: 898 */
                if (l_1648[2][4][0])
                    break;
            }
            else
            { /* block id: 900 */
                p_1700->g_866 = l_1672;
                if (p_1700->g_592.f2)
                    goto lbl_1698;
                return l_1648[7][0][3];
            }
            for (p_1700->g_688.f4.f1 = 0; (p_1700->g_688.f4.f1 <= 1); p_1700->g_688.f4.f1 += 1)
            { /* block id: 906 */
                int16_t **l_1690 = &p_1700->g_109;
                int32_t l_1693 = 0x2288544CL;
                uint32_t *l_1694 = &p_1700->g_1695[1];
                (*p_1700->g_46) = func_22(((*l_1694) &= (((*p_1700->g_253) = (safe_div_func_uint16_t_u_u(((safe_add_func_int8_t_s_s(p_1700->g_601.f1, (safe_unary_minus_func_uint64_t_u((safe_sub_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s((safe_sub_func_int8_t_s_s((FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10) != (*p_1700->g_699)), l_1648[1][2][2])), 4)) == l_1648[5][4][0]), (safe_unary_minus_func_int32_t_s((safe_sub_func_uint8_t_u_u(((l_1689 = l_1688) != ((*l_1690) = &p_1700->g_104)), 0x08L)))))))))) || (l_1648[1][2][2] <= (safe_lshift_func_int16_t_s_s((func_22(p_1700->g_1125.f3, (*p_1700->g_1124), l_1693, p_1700->g_283, l_1693, p_1700) , 0L), l_1648[7][5][2])))), p_1700->g_590.f2))) && 0L)), l_1637[3][0], l_1669, p_1700->g_925[0], p_1700->g_1076.f0, p_1700);
            }
        }
lbl_1698:
        for (p_1700->g_601.f1 = 6; (p_1700->g_601.f1 < 0); --p_1700->g_601.f1)
        { /* block id: 916 */
            return (*p_1700->g_109);
        }
        l_1699 |= 8L;
    }
    return l_1514;
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_614.f1 p_1700->g_109 p_1700->g_110 p_1700->g_919 p_1700->g_46 p_1700->g_1457 p_1700->g_611.f0 p_1700->g_1125.f2
 * writes: p_1700->g_614.f1 p_1700->g_126 p_1700->g_585.f2 p_1700->g_611.f0
 */
int8_t  func_16(int16_t  p_17, uint32_t  p_18, int32_t  p_19, int32_t  p_20, uint32_t  p_21, struct S4 * p_1700)
{ /* block id: 731 */
    struct S0 *l_1454 = &p_1700->g_688.f4;
    uint32_t **l_1460[4][6] = {{&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124},{&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124},{&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124},{&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124,&p_1700->g_1124}};
    uint32_t **l_1472 = &p_1700->g_478;
    int32_t l_1473 = 0x5C335CA6L;
    int32_t *l_1476 = &p_1700->g_589.f2;
    uint8_t l_1484 = 0x6DL;
    int i, j;
    for (p_1700->g_614.f1 = 0; (p_1700->g_614.f1 <= 3); p_1700->g_614.f1 += 1)
    { /* block id: 734 */
        int32_t l_1448 = (-7L);
        int32_t l_1451 = 7L;
        uint8_t *l_1455[9] = {&p_1700->g_584.f1,&p_1700->g_584.f1,&p_1700->g_584.f1,&p_1700->g_584.f1,&p_1700->g_584.f1,&p_1700->g_584.f1,&p_1700->g_584.f1,&p_1700->g_584.f1,&p_1700->g_584.f1};
        int32_t l_1456 = 0x1C3D5D9FL;
        uint32_t **l_1461 = &p_1700->g_1124;
        int i;
        (*p_1700->g_1457) = (safe_sub_func_int16_t_s_s(((p_20 == l_1448) & (l_1456 = (p_21 ^ (safe_sub_func_uint16_t_u_u((l_1451 = p_19), ((1UL == (((p_19 & (safe_rshift_func_uint8_t_u_s(l_1448, 0))) == (*p_1700->g_109)) ^ (l_1454 != (*p_1700->g_919)))) == 1UL)))))), l_1448));
        for (p_1700->g_585.f2 = 0; (p_1700->g_585.f2 <= 6); p_1700->g_585.f2 += 1)
        { /* block id: 740 */
            uint32_t *l_1462 = &p_1700->g_617.f3;
            int32_t l_1467 = 0x3A5A80F1L;
            uint16_t *l_1474 = (void*)0;
            uint16_t *l_1475 = &p_1700->g_350;
            int32_t l_1481 = 0x1A9A4277L;
            int32_t l_1483[5][8] = {{(-1L),(-1L),8L,0L,(-4L),(-4L),0L,8L},{(-1L),(-1L),8L,0L,(-4L),(-4L),0L,8L},{(-1L),(-1L),8L,0L,(-4L),(-4L),0L,8L},{(-1L),(-1L),8L,0L,(-4L),(-4L),0L,8L},{(-1L),(-1L),8L,0L,(-4L),(-4L),0L,8L}};
            int i, j;
            l_1476 = &l_1467;
            for (p_1700->g_611.f0 = 0; (p_1700->g_611.f0 <= 2); p_1700->g_611.f0 += 1)
            { /* block id: 746 */
                int32_t *l_1477 = (void*)0;
                int32_t *l_1478 = &l_1473;
                int32_t *l_1479 = &p_1700->g_950[1].f0.f2;
                int32_t *l_1480[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_1480[i] = &l_1473;
                ++l_1484;
            }
        }
    }
    return p_1700->g_1125.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_1443
 * writes:
 */
struct S0  func_22(uint32_t  p_23, uint32_t  p_24, int8_t  p_25, uint32_t  p_26, int64_t  p_27, struct S4 * p_1700)
{ /* block id: 726 */
    int32_t **l_1441 = &p_1700->g_436[8];
    int32_t ***l_1442 = (void*)0;
    l_1441 = l_1441;
    return p_1700->g_1443;
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_47.f1 p_1700->g_950 p_1700->g_109 p_1700->g_110 p_1700->g_166 p_1700->g_167 p_1700->g_595.f2 p_1700->g_590.f2 p_1700->g_1014 p_1700->g_517 p_1700->g_436 p_1700->g_74 p_1700->g_593 p_1700->g_777 p_1700->g_778 p_1700->g_253 p_1700->g_907 p_1700->g_919 p_1700->g_589.f0 p_1700->g_1031 p_1700->g_584.f2 p_1700->g_617.f1 p_1700->g_586.f1 p_1700->g_1077 p_1700->g_608.f0 p_1700->g_1079 p_1700->g_128 p_1700->g_706 p_1700->g_1122 p_1700->g_1125 p_1700->g_775 p_1700->g_46 p_1700->g_686.f1 p_1700->g_1157 p_1700->g_1124 p_1700->g_1169 p_1700->g_1178 p_1700->g_589.f2 p_1700->g_686.f4.f2 p_1700->g_686.f0 p_1700->g_364.f2 p_1700->g_813 p_1700->g_585.f2 p_1700->g_428.f2 p_1700->g_comm_values p_1700->g_47.f2 p_1700->g_87 p_1700->g_7 p_1700->g_102 p_1700->g_114 p_1700->g_3 p_1700->l_comm_values p_1700->g_200 p_1700->g_141 p_1700->g_104 p_1700->g_244 p_1700->g_293 p_1700->g_314.f2 p_1700->g_126 p_1700->g_350 p_1700->g_351 p_1700->g_283 p_1700->g_319.f1 p_1700->g_364.f1 p_1700->g_302 p_1700->g_762 p_1700->g_477 p_1700->g_585.f1 p_1700->g_617.f4.f1 p_1700->g_1123 p_1700->g_1170.f4.f0 p_1700->g_1170.f3 p_1700->g_1170.f4.f1 p_1700->g_1319 p_1700->g_921 p_1700->g_688.f3 p_1700->g_617.f3 p_1700->g_925 p_1700->g_1170.f4.f2 p_1700->g_1328 p_1700->g_1329 p_1700->g_319.f2 p_1700->g_565.f0 p_1700->g_1372 p_1700->g_614.f1 p_1700->g_699 p_1700->g_1414 p_1700->g_1438
 * writes: p_1700->g_47.f1 p_1700->g_594.f1 p_1700->g_74 p_1700->g_302 p_1700->g_614.f1 p_1700->g_590.f1 p_1700->g_610.f1 p_1700->g_114 p_1700->g_350 p_1700->g_436 p_1700->g_87 p_1700->g_601.f0 p_1700->g_128 p_1700->g_46 p_1700->g_611 p_1700->g_598 p_1700->g_613 p_1700->g_601.f1 p_1700->g_584.f2 p_1700->g_210 p_1700->g_593.f2 p_1700->g_617.f1 p_1700->g_293 p_1700->g_364.f2 p_1700->g_778 p_1700->g_1123 p_1700->g_925 p_1700->g_617.f3 p_1700->g_244 p_1700->g_1170 p_1700->g_686.f1 p_1700->g_565.f1 p_1700->g_589.f2 p_1700->g_686.f4.f2 p_1700->g_950.f0.f1 p_1700->g_1231 p_1700->g_1169.f1 p_1700->g_688.f4.f2 p_1700->g_47.f2 p_1700->g_102 p_1700->g_104 p_1700->g_126 p_1700->g_141 p_1700->g_283 p_1700->g_200 p_1700->g_314.f2 p_1700->g_110 p_1700->g_351 p_1700->g_comm_values p_1700->l_comm_values p_1700->g_435 p_1700->g_595.f2 p_1700->g_478 p_1700->g_585.f1 p_1700->g_617.f4.f1 p_1700->g_1157.f2 p_1700->g_921 p_1700->g_763 p_1700->g_1328.f1 p_1700->g_319.f2 p_1700->g_1372 p_1700->g_364.f1 p_1700->g_1077 p_1700->g_428.f2 p_1700->g_1414
 */
int8_t  func_30(int8_t  p_31, uint64_t  p_32, int8_t  p_33, int64_t  p_34, struct S4 * p_1700)
{ /* block id: 484 */
    int64_t l_946 = 1L;
    uint32_t l_958 = 0x896FBE06L;
    struct S1 *l_965[5];
    int32_t l_979 = 0L;
    int16_t *l_1005[1];
    struct S0 *l_1026[3];
    int32_t l_1034 = (-10L);
    int32_t l_1036 = (-1L);
    int32_t l_1038[4][4][10] = {{{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L}},{{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L}},{{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L}},{{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L},{0x67CC8230L,0x67CC8230L,1L,0L,(-3L),0L,0x4B808303L,(-4L),0x4B808303L,0L}}};
    int32_t l_1048 = 1L;
    int32_t l_1100 = 0x461D74FAL;
    uint16_t l_1116 = 0x8377L;
    uint32_t *l_1121 = &l_958;
    uint32_t **l_1120 = &l_1121;
    int32_t *l_1180 = &p_1700->g_364[2][0].f2;
    uint64_t *l_1188 = (void*)0;
    int16_t l_1208 = 0x33F4L;
    int32_t l_1218[4] = {0x35F4BD2CL,0x35F4BD2CL,0x35F4BD2CL,0x35F4BD2CL};
    int8_t l_1220 = (-6L);
    uint32_t l_1221 = 0x927EF5CAL;
    uint64_t *l_1232 = (void*)0;
    int16_t l_1364 = 9L;
    int32_t * volatile * volatile *l_1417 = &p_1700->g_1414;
    int64_t *l_1423[2];
    int64_t **l_1422 = &l_1423[0];
    int64_t ***l_1421[6] = {&l_1422,&l_1422,&l_1422,&l_1422,&l_1422,&l_1422};
    int64_t ****l_1420 = &l_1421[2];
    int64_t *****l_1424 = (void*)0;
    int64_t *****l_1425 = &l_1420;
    uint8_t *l_1440[9] = {&p_1700->g_1329.f1,&p_1700->g_950[1].f0.f1,&p_1700->g_1329.f1,&p_1700->g_1329.f1,&p_1700->g_950[1].f0.f1,&p_1700->g_1329.f1,&p_1700->g_1329.f1,&p_1700->g_950[1].f0.f1,&p_1700->g_1329.f1};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_965[i] = &p_1700->g_688;
    for (i = 0; i < 1; i++)
        l_1005[i] = &p_1700->g_601.f1;
    for (i = 0; i < 3; i++)
        l_1026[i] = &p_1700->g_1027[4][3][1];
    for (i = 0; i < 2; i++)
        l_1423[i] = &p_1700->g_925[0];
    for (p_1700->g_47.f1 = (-7); (p_1700->g_47.f1 < 45); ++p_1700->g_47.f1)
    { /* block id: 487 */
        int32_t l_930 = 0L;
        uint64_t l_937 = 0x6516E8800FC18F92L;
        int32_t l_949[9][2][9] = {{{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)},{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)}},{{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)},{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)}},{{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)},{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)}},{{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)},{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)}},{{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)},{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)}},{{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)},{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)}},{{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)},{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)}},{{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)},{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)}},{{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)},{1L,0x669E755EL,1L,(-6L),(-4L),(-1L),0x75BE43B2L,0x3A98AE8EL,(-1L)}}};
        int8_t l_972 = 0x1CL;
        int16_t *l_1007 = &p_1700->g_614.f1;
        int32_t *l_1028 = &p_1700->g_590.f2;
        int8_t l_1045 = 0x07L;
        int64_t l_1047[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
        uint16_t l_1051 = 0x1C56L;
        uint32_t l_1138 = 0x64177B07L;
        struct S2 *l_1143 = &p_1700->g_598;
        int16_t *l_1165 = &p_1700->g_1076.f1;
        int64_t *l_1168 = (void*)0;
        int64_t **l_1167 = &l_1168;
        int64_t ***l_1166 = &l_1167;
        int i, j, k;
        for (p_1700->g_594.f1 = 0; (p_1700->g_594.f1 <= 4); p_1700->g_594.f1 += 1)
        { /* block id: 490 */
            int64_t *l_941 = &p_1700->g_925[0];
            int64_t **l_940 = &l_941;
            int32_t l_951 = 0x37213EA1L;
            uint32_t l_974 = 0x39B271F8L;
            int16_t *l_1008[3];
            struct S0 *l_1024 = &p_1700->g_1025;
            uint8_t l_1039 = 0x14L;
            int32_t l_1042 = 0x3402C8B2L;
            int32_t l_1043 = (-1L);
            int32_t l_1044 = 0x2E4E0335L;
            int32_t l_1046 = 1L;
            int32_t l_1049 = 0x68B1C985L;
            int32_t l_1050[6][8][5] = {{{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)}},{{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)}},{{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)}},{{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)}},{{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)}},{{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)},{0x66F2F8B9L,0x0C007AAEL,(-1L),0x0721A3FBL,(-1L)}}};
            struct S2 *l_1075[1];
            struct S2 *l_1119 = &p_1700->g_611;
            uint32_t l_1142 = 0x3895EAF7L;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_1008[i] = &p_1700->g_614.f1;
            for (i = 0; i < 1; i++)
                l_1075[i] = &p_1700->g_1076;
            for (p_1700->g_74 = 0; (p_1700->g_74 >= 0); p_1700->g_74 -= 1)
            { /* block id: 493 */
                uint32_t l_931 = 1UL;
                int32_t l_934 = 0x110C63EBL;
                int32_t l_935 = (-1L);
                int32_t l_936 = 0L;
                int64_t **l_942 = &l_941;
                int16_t *l_947[1][8][6] = {{{(void*)0,&p_1700->g_611.f1,&p_1700->g_611.f1,(void*)0,(void*)0,&p_1700->g_611.f1},{(void*)0,&p_1700->g_611.f1,&p_1700->g_611.f1,(void*)0,(void*)0,&p_1700->g_611.f1},{(void*)0,&p_1700->g_611.f1,&p_1700->g_611.f1,(void*)0,(void*)0,&p_1700->g_611.f1},{(void*)0,&p_1700->g_611.f1,&p_1700->g_611.f1,(void*)0,(void*)0,&p_1700->g_611.f1},{(void*)0,&p_1700->g_611.f1,&p_1700->g_611.f1,(void*)0,(void*)0,&p_1700->g_611.f1},{(void*)0,&p_1700->g_611.f1,&p_1700->g_611.f1,(void*)0,(void*)0,&p_1700->g_611.f1},{(void*)0,&p_1700->g_611.f1,&p_1700->g_611.f1,(void*)0,(void*)0,&p_1700->g_611.f1},{(void*)0,&p_1700->g_611.f1,&p_1700->g_611.f1,(void*)0,(void*)0,&p_1700->g_611.f1}}};
                uint16_t *l_996 = &p_1700->g_114;
                int16_t **l_1006[9][6][4] = {{{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0]}}};
                uint16_t *l_1013 = &p_1700->g_350;
                int64_t l_1015[4][5] = {{0x0C47AD832A11E110L,0x45437E8B65C49B46L,0x0C47AD832A11E110L,0x0C47AD832A11E110L,0x45437E8B65C49B46L},{0x0C47AD832A11E110L,0x45437E8B65C49B46L,0x0C47AD832A11E110L,0x0C47AD832A11E110L,0x45437E8B65C49B46L},{0x0C47AD832A11E110L,0x45437E8B65C49B46L,0x0C47AD832A11E110L,0x0C47AD832A11E110L,0x45437E8B65C49B46L},{0x0C47AD832A11E110L,0x45437E8B65C49B46L,0x0C47AD832A11E110L,0x0C47AD832A11E110L,0x45437E8B65C49B46L}};
                int32_t *l_1016[3];
                uint64_t l_1023[7];
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_1016[i] = &p_1700->g_588.f2;
                for (i = 0; i < 7; i++)
                    l_1023[i] = 3UL;
                for (p_1700->g_302 = 0; (p_1700->g_302 <= 0); p_1700->g_302 += 1)
                { /* block id: 496 */
                    int32_t *l_929[6] = {&p_1700->g_428[0][1][4].f2,&p_1700->g_428[0][1][4].f2,&p_1700->g_428[0][1][4].f2,&p_1700->g_428[0][1][4].f2,&p_1700->g_428[0][1][4].f2,&p_1700->g_428[0][1][4].f2};
                    int64_t *l_945[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                    int16_t **l_948 = &p_1700->g_109;
                    int8_t l_959[6] = {0L,0x77L,0L,0L,0x77L,0L};
                    uint8_t l_960 = 1UL;
                    struct S2 **l_966 = (void*)0;
                    struct S2 **l_969 = &p_1700->g_778;
                    int i;
                    --l_931;
                    for (p_1700->g_614.f1 = 6; (p_1700->g_614.f1 >= 1); p_1700->g_614.f1 -= 1)
                    { /* block id: 500 */
                        ++l_937;
                    }
                }
                for (p_1700->g_590.f1 = 0; (p_1700->g_590.f1 <= 4); p_1700->g_590.f1 += 1)
                { /* block id: 525 */
                    uint64_t l_987 = 18446744073709551612UL;
                    for (p_1700->g_610.f1 = 1; (p_1700->g_610.f1 <= 4); p_1700->g_610.f1 += 1)
                    { /* block id: 528 */
                        int32_t *l_975 = &p_1700->g_585.f2;
                        int32_t *l_976 = (void*)0;
                        int32_t *l_977 = &p_1700->g_582.f2;
                        int32_t *l_978 = &p_1700->g_617.f4.f2;
                        int32_t *l_980 = &l_935;
                        int32_t *l_981 = &p_1700->g_588.f2;
                        int32_t *l_982 = &p_1700->g_428[0][1][4].f2;
                        int32_t l_983 = 0x28C73CD6L;
                        int32_t *l_984 = &l_983;
                        int32_t *l_985 = &p_1700->g_588.f2;
                        int32_t *l_986 = &l_934;
                        l_987--;
                    }
                }
                (*p_1700->g_517) = (((l_949[6][1][0] = (safe_sub_func_uint64_t_u_u((((p_1700->g_950[3] , (l_979 = (((((safe_mod_func_int64_t_s_s(((((((p_31 != 1L) <= (safe_mul_func_int16_t_s_s((*p_1700->g_109), (p_33 , ((*l_996) = GROUP_DIVERGE(0, 1)))))) != (0x5151F6E9E842F8F5L & (safe_div_func_int8_t_s_s(((safe_sub_func_int8_t_s_s((((safe_sub_func_uint16_t_u_u(((*l_1013) = (safe_rshift_func_int8_t_s_u(((l_1007 = l_1005[0]) != l_1008[1]), (safe_rshift_func_int8_t_s_s((GROUP_DIVERGE(2, 1) & (safe_div_func_uint64_t_u_u(0x6BB8E3EA21D29C2FL, 0x0DA653471226790CL))), l_946))))), l_949[2][0][0])) && (*p_1700->g_166)) & 0UL), 0L)) , p_33), p_1700->g_595[5].f2)))) & l_951) < p_33) ^ 0UL), l_949[0][0][8])) != GROUP_DIVERGE(0, 1)) <= p_1700->g_590.f2) && p_1700->g_1014) <= p_31))) <= 3UL) > l_1015[2][4]), l_972))) >= l_951) , (void*)0);
                for (p_1700->g_87 = 0; (p_1700->g_87 <= 3); p_1700->g_87 += 1)
                { /* block id: 540 */
                    int32_t l_1032 = 0x7010D2B8L;
                    int32_t l_1033 = 1L;
                    int32_t l_1035 = 0x2DED3925L;
                    int32_t l_1037[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1037[i] = 6L;
                    for (p_1700->g_601.f0 = 1; (p_1700->g_601.f0 <= 4); p_1700->g_601.f0 += 1)
                    { /* block id: 543 */
                        (*p_1700->g_517) = (*p_1700->g_517);
                        (*p_1700->g_517) = &l_979;
                    }
                    if ((((*p_1700->g_919) = func_38((l_949[0][1][2] = (safe_sub_func_int64_t_s_s((l_946 & l_946), (p_1700->g_593[p_1700->g_74] , ((*p_1700->g_253) = ((void*)0 == (*p_1700->g_777))))))), (safe_add_func_uint16_t_u_u(p_31, (safe_mul_func_int16_t_s_s((0x4173D6E4D1851421L && (((7L | (p_32 & (*p_1700->g_109))) , p_32) & l_1023[5])), p_34)))), l_1024, p_32, l_1026[2], p_1700)) != (void*)0))
                    { /* block id: 550 */
                        if (p_1700->g_593[p_1700->g_74].f1)
                            break;
                        l_1028 = &l_951;
                        (*l_1028) &= (safe_lshift_func_int8_t_s_u(p_1700->g_589.f0, 6));
                        l_1028 = (void*)0;
                    }
                    else
                    { /* block id: 555 */
                        (*p_1700->g_517) = &l_979;
                        (*p_1700->g_778) = p_1700->g_1031[0];
                        (*p_1700->g_517) = (void*)0;
                    }
                    l_1039--;
                    l_1051++;
                }
            }
            for (p_1700->g_601.f1 = 0; (p_1700->g_601.f1 <= 0); p_1700->g_601.f1 += 1)
            { /* block id: 566 */
                uint32_t l_1056 = 8UL;
                struct S2 *l_1073[10][4] = {{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601},{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601},{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601},{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601},{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601},{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601},{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601},{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601},{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601},{(void*)0,(void*)0,&p_1700->g_601,&p_1700->g_601}};
                int32_t l_1099[10] = {0x38C26D10L,0x77CCC98FL,(-2L),0x77CCC98FL,0x38C26D10L,0x38C26D10L,0x77CCC98FL,(-2L),0x77CCC98FL,0x38C26D10L};
                int32_t l_1111 = 2L;
                int64_t *l_1139 = &l_946;
                uint16_t *l_1140 = &p_1700->g_350;
                uint32_t *l_1141 = &p_1700->g_617.f3;
                struct S2 **l_1144 = &l_1143;
                int i, j;
                for (p_1700->g_584.f2 = 0; (p_1700->g_584.f2 <= 0); p_1700->g_584.f2 += 1)
                { /* block id: 569 */
                    uint16_t *l_1065[3];
                    uint16_t **l_1066 = &p_1700->g_210;
                    uint8_t *l_1069[5];
                    uint64_t *l_1072 = &p_1700->g_617.f1;
                    struct S2 **l_1074 = &l_1073[7][3];
                    int32_t *l_1078 = (void*)0;
                    int32_t l_1112 = 0L;
                    int32_t l_1113 = 0L;
                    int32_t l_1114 = 2L;
                    int32_t l_1115 = 0x488E91F2L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1065[i] = &p_1700->g_114;
                    for (i = 0; i < 5; i++)
                        l_1069[i] = (void*)0;
                    (*p_1700->g_1079) = (safe_rshift_func_int8_t_s_s(l_1056, (((safe_mul_func_int16_t_s_s(((void*)0 != p_1700->g_253), ((safe_sub_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u((p_1700->g_593[(p_1700->g_584.f2 + 2)] , ((~(((*l_1066) = l_1065[1]) != (void*)0)) | (0x2BL ^ (((safe_lshift_func_uint8_t_u_u((p_1700->g_593[(p_1700->g_584.f2 + 2)].f2 = p_32), 2)) , (p_1700->g_293 = ((((*l_1074) = (((*l_1072) &= (safe_sub_func_int32_t_s_s(((((*p_1700->g_253) = l_1056) > l_958) != p_33), (*p_1700->g_166)))) , l_1073[7][3])) == l_1075[0]) <= l_979))) , p_1700->g_586.f1)))), 1L)), p_1700->g_1077)) >= 1L))) ^ 0L) >= p_1700->g_608.f0)));
                    for (p_1700->g_598.f0 = 0; (p_1700->g_598.f0 <= 4); p_1700->g_598.f0 += 1)
                    { /* block id: 579 */
                        int16_t l_1098 = 7L;
                        int32_t *l_1101 = &l_1050[1][4][3];
                        int32_t *l_1102 = (void*)0;
                        int32_t *l_1103 = (void*)0;
                        int32_t *l_1104 = &l_951;
                        int32_t *l_1105 = &l_1044;
                        int32_t *l_1106 = &l_979;
                        int32_t *l_1107 = &l_1049;
                        int32_t *l_1108 = &p_1700->g_595[5].f2;
                        int32_t *l_1109 = &l_979;
                        int32_t *l_1110[5][6] = {{&p_1700->g_364[2][0].f2,&p_1700->g_364[2][0].f2,&p_1700->g_593[(p_1700->g_584.f2 + 2)].f2,&p_1700->g_565.f2,&p_1700->g_565.f2,&p_1700->g_565.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_364[2][0].f2,&p_1700->g_593[(p_1700->g_584.f2 + 2)].f2,&p_1700->g_565.f2,&p_1700->g_565.f2,&p_1700->g_565.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_364[2][0].f2,&p_1700->g_593[(p_1700->g_584.f2 + 2)].f2,&p_1700->g_565.f2,&p_1700->g_565.f2,&p_1700->g_565.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_364[2][0].f2,&p_1700->g_593[(p_1700->g_584.f2 + 2)].f2,&p_1700->g_565.f2,&p_1700->g_565.f2,&p_1700->g_565.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_364[2][0].f2,&p_1700->g_593[(p_1700->g_584.f2 + 2)].f2,&p_1700->g_565.f2,&p_1700->g_565.f2,&p_1700->g_565.f2}};
                        int i, j;
                        l_1098 = ((0x1D3E98D0L | 3L) , ((safe_div_func_uint8_t_u_u(((0x03L | (FAKE_DIVERGE(p_1700->local_0_offset, get_local_id(0), 10) > (safe_lshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s((safe_sub_func_int64_t_s_s((!1L), (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(p_31, (p_31 || ((*p_1700->g_253) = (((safe_div_func_uint8_t_u_u(((safe_add_func_uint8_t_u_u(p_34, ((l_974 && ((safe_div_func_uint8_t_u_u(0x71L, 0x78L)) , 0x1A0ED46AL)) | l_1056))) , 0UL), l_1056)) | l_1050[1][4][3]) , (*p_1700->g_253)))))), l_1045)))), p_34)), 10)))) > 0UL), 0x46L)) & 0x60L));
                        if (p_32)
                            continue;
                        ++l_1116;
                    }
                    l_1050[1][4][3] |= (((*p_1700->g_777) = l_1119) != p_1700->g_706);
                    (*p_1700->g_1122) = l_1120;
                }
                (*p_1700->g_1079) = ((((0UL > (p_1700->g_1125 , (safe_sub_func_int8_t_s_s((safe_div_func_int32_t_s_s(((&p_1700->g_593[(p_1700->g_601.f1 + 2)] != (*p_1700->g_775)) == ((*l_1141) = (((*l_1140) = (0x445D1F09A25B66E8L || (safe_mul_func_uint16_t_u_u(((FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10) < (((safe_div_func_int64_t_s_s(((*l_1139) = ((**l_940) = (safe_add_func_uint64_t_u_u((safe_mod_func_int16_t_s_s(l_1138, (*p_1700->g_109))), (l_974 || (l_1099[7] == (*p_1700->g_109))))))), 0xA047A9C1FF33551EL)) , l_946) > p_31)) && 0x05BB2495L), p_32)))) == p_33))), 0x6C0EA040L)), p_1700->g_686.f1)))) > 0UL) ^ l_1142) , 0x424971D7L);
                (*l_1144) = l_1143;
                if (p_33)
                    continue;
            }
        }
        for (p_1700->g_302 = 28; (p_1700->g_302 >= (-24)); p_1700->g_302 = safe_sub_func_int8_t_s_s(p_1700->g_302, 1))
        { /* block id: 600 */
            int16_t l_1147[7][1][9] = {{{0L,0x606EL,0x26F0L,0x606EL,0L,0L,0x606EL,0x26F0L,0x606EL}},{{0L,0x606EL,0x26F0L,0x606EL,0L,0L,0x606EL,0x26F0L,0x606EL}},{{0L,0x606EL,0x26F0L,0x606EL,0L,0L,0x606EL,0x26F0L,0x606EL}},{{0L,0x606EL,0x26F0L,0x606EL,0L,0L,0x606EL,0x26F0L,0x606EL}},{{0L,0x606EL,0x26F0L,0x606EL,0L,0L,0x606EL,0x26F0L,0x606EL}},{{0L,0x606EL,0x26F0L,0x606EL,0L,0L,0x606EL,0x26F0L,0x606EL}},{{0L,0x606EL,0x26F0L,0x606EL,0L,0L,0x606EL,0x26F0L,0x606EL}}};
            uint16_t **l_1154 = (void*)0;
            uint16_t **l_1155 = (void*)0;
            uint16_t **l_1156 = &p_1700->g_210;
            int64_t ***l_1158 = (void*)0;
            int64_t ****l_1159 = &l_1158;
            int16_t **l_1164[6][8][5] = {{{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]}},{{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]},{&l_1005[0],(void*)0,(void*)0,&l_1005[0],&l_1005[0]}}};
            int i, j, k;
            p_1700->g_1170 = (((**l_1120) = ((*p_1700->g_1124) = (l_1147[5][0][3] ^ (safe_add_func_uint64_t_u_u(((p_33 == (p_32 , ((+(safe_mul_func_uint16_t_u_u(((((*l_1156) = &l_1116) != (void*)0) & (p_1700->g_1157 , (((((*l_1159) = l_1158) != ((safe_sub_func_uint64_t_u_u(((*p_1700->g_253) &= (safe_div_func_int8_t_s_s((((l_1007 != (l_1165 = l_1007)) < 8UL) , (-1L)), l_1116))), 0x575BD5A630C02287L)) , l_1166)) || p_34) >= (-1L)))), (*p_1700->g_109)))) ^ 0L))) & 0x20L), l_1038[0][3][7]))))) , p_1700->g_1169);
        }
    }
    for (p_1700->g_686.f1 = 19; (p_1700->g_686.f1 == 27); ++p_1700->g_686.f1)
    { /* block id: 612 */
        uint8_t ***l_1181 = &p_1700->g_771[6];
        int32_t l_1207 = 0x08266094L;
        int32_t *l_1210 = (void*)0;
        int32_t *l_1211 = &p_1700->g_428[0][1][4].f2;
        int32_t *l_1212 = &p_1700->g_126;
        int32_t *l_1213 = &p_1700->g_688.f4.f2;
        int32_t *l_1214 = &p_1700->g_1077;
        int32_t *l_1215 = &p_1700->g_1157.f2;
        int32_t *l_1216 = (void*)0;
        int32_t *l_1217[3][3][5] = {{{&p_1700->g_589.f2,(void*)0,&p_1700->g_583.f2,&p_1700->g_74,&p_1700->g_583.f2},{&p_1700->g_589.f2,(void*)0,&p_1700->g_583.f2,&p_1700->g_74,&p_1700->g_583.f2},{&p_1700->g_589.f2,(void*)0,&p_1700->g_583.f2,&p_1700->g_74,&p_1700->g_583.f2}},{{&p_1700->g_589.f2,(void*)0,&p_1700->g_583.f2,&p_1700->g_74,&p_1700->g_583.f2},{&p_1700->g_589.f2,(void*)0,&p_1700->g_583.f2,&p_1700->g_74,&p_1700->g_583.f2},{&p_1700->g_589.f2,(void*)0,&p_1700->g_583.f2,&p_1700->g_74,&p_1700->g_583.f2}},{{&p_1700->g_589.f2,(void*)0,&p_1700->g_583.f2,&p_1700->g_74,&p_1700->g_583.f2},{&p_1700->g_589.f2,(void*)0,&p_1700->g_583.f2,&p_1700->g_74,&p_1700->g_583.f2},{&p_1700->g_589.f2,(void*)0,&p_1700->g_583.f2,&p_1700->g_74,&p_1700->g_583.f2}}};
        int64_t l_1219 = 0L;
        uint64_t *l_1228 = &p_1700->g_617.f1;
        uint64_t *l_1230 = (void*)0;
        uint64_t **l_1229[8];
        struct S2 ***l_1237 = (void*)0;
        uint16_t l_1270[1];
        uint32_t **l_1296 = &p_1700->g_478;
        uint32_t l_1301 = 1UL;
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_1229[i] = &l_1230;
        for (i = 0; i < 1; i++)
            l_1270[i] = 4UL;
        for (p_1700->g_565.f1 = 0; (p_1700->g_565.f1 != 42); p_1700->g_565.f1 = safe_add_func_uint64_t_u_u(p_1700->g_565.f1, 5))
        { /* block id: 615 */
            int32_t *l_1179[1];
            uint32_t *l_1186 = &p_1700->g_617.f3;
            uint64_t **l_1187[4][10][6] = {{{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0}},{{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0}},{{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0}},{{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0},{&p_1700->g_253,(void*)0,&p_1700->g_253,&p_1700->g_253,&p_1700->g_253,(void*)0}}};
            uint64_t *l_1189 = &p_1700->g_598.f0;
            uint8_t *l_1206 = &p_1700->g_950[1].f0.f1;
            int8_t l_1209[3];
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1179[i] = &p_1700->g_686.f4.f2;
            for (i = 0; i < 3; i++)
                l_1209[i] = 0x79L;
            for (p_1700->g_244 = 0; (p_1700->g_244 != 5); p_1700->g_244 = safe_add_func_int16_t_s_s(p_1700->g_244, 5))
            { /* block id: 618 */
                (*p_1700->g_1178) |= p_34;
            }
            l_1180 = l_1179[0];
            (*l_1180) = ((void*)0 != l_1181);
            l_1207 = (safe_sub_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(((~((*l_1186) = FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10))) < ((l_1188 = (void*)0) != ((*l_1180) , l_1189))), (((safe_add_func_int32_t_s_s((p_31 != ((safe_rshift_func_uint16_t_u_s(((safe_mul_func_int8_t_s_s((p_1700->g_302 = (safe_sub_func_int16_t_s_s((((0x33L & (((safe_lshift_func_int8_t_s_s(((0xFEL || FAKE_DIVERGE(p_1700->global_2_offset, get_global_id(2), 10)) | ((*l_1206) = ((+p_34) < (safe_mul_func_int16_t_s_s(((p_34 > p_33) != p_1700->g_907.f0), 7L))))), l_1207)) != (*p_1700->g_253)) != l_1207)) >= 0UL) & 0x3AL), l_1208))), (*l_1180))) == (*p_1700->g_109)), 3)) >= (*p_1700->g_109))), l_1209[0])) != p_32) && p_34))), p_1700->g_686.f0));
        }
        --l_1221;
        (*l_1180) = (safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(((l_1228 == (l_1232 = (p_1700->g_1231 = p_1700->g_253))) , (safe_mul_func_int16_t_s_s((safe_div_func_int8_t_s_s(((void*)0 != l_1237), (*l_1180))), (safe_mul_func_int16_t_s_s((*p_1700->g_109), (*p_1700->g_109)))))), 5)), (-5L)));
        for (p_1700->g_1169.f1 = 0; (p_1700->g_1169.f1 > 9); p_1700->g_1169.f1 = safe_add_func_int16_t_s_s(p_1700->g_1169.f1, 8))
        { /* block id: 635 */
            uint64_t l_1257 = 0x3AF821DE5297CC00L;
            int32_t l_1267[4][3] = {{0x4321311BL,0x5A6A502DL,0x3678DC40L},{0x4321311BL,0x5A6A502DL,0x3678DC40L},{0x4321311BL,0x5A6A502DL,0x3678DC40L},{0x4321311BL,0x5A6A502DL,0x3678DC40L}};
            uint32_t *l_1312 = &p_1700->g_1170.f3;
            uint8_t *l_1313 = (void*)0;
            uint8_t *l_1314 = &p_1700->g_1170.f4.f1;
            int8_t *l_1320 = &p_1700->g_921;
            uint8_t l_1325 = 5UL;
            uint64_t *l_1404 = &p_1700->g_1169.f1;
            int i, j;
            for (p_1700->g_617.f3 = (-17); (p_1700->g_617.f3 != 16); p_1700->g_617.f3 = safe_add_func_uint8_t_u_u(p_1700->g_617.f3, 4))
            { /* block id: 638 */
                int16_t l_1252 = 1L;
                int32_t l_1258 = 0x19D120F0L;
                int32_t l_1268 = (-5L);
                if (((*l_1213) = (0x1CA4044BL != GROUP_DIVERGE(0, 1))))
                { /* block id: 640 */
                    uint16_t l_1244 = 0x85A5L;
                    int32_t l_1266 = 0x39AEC623L;
                    if (((*l_1180) = p_32))
                    { /* block id: 642 */
                        uint8_t *l_1261 = &p_1700->g_585.f1;
                        uint8_t *l_1262 = &p_1700->g_617.f4.f1;
                        int32_t l_1263 = (-1L);
                        int32_t l_1264 = (-5L);
                        int32_t l_1265 = 0x2A41F472L;
                        int32_t l_1269 = 0L;
                        l_1244--;
                        if ((*p_1700->g_813))
                            break;
                        (*l_1215) = (safe_div_func_uint32_t_u_u(((*l_1211) <= (((*l_1262) &= (safe_mul_func_int16_t_s_s((safe_unary_minus_func_uint8_t_u((l_1252 = p_34))), (safe_mod_func_uint32_t_u_u(p_34, (safe_mod_func_uint8_t_u_u(((((*p_1700->g_477) = func_67(l_1257, p_33, p_1700)) == l_1216) != l_1258), ((*l_1261) &= (safe_rshift_func_uint16_t_u_s((&p_1700->g_1123 != &l_1120), 14)))))))))) & p_34)), p_31));
                        --l_1270[0];
                    }
                    else
                    { /* block id: 651 */
                        (*l_1212) = (*p_1700->g_1178);
                        (*p_1700->g_517) = &l_1038[0][0][4];
                    }
                    return p_32;
                }
                else
                { /* block id: 656 */
                    int8_t l_1292 = (-1L);
                    int32_t l_1293 = (-1L);
                    (*l_1180) = ((void*)0 == &l_1267[2][2]);
                    for (p_1700->g_114 = 0; (p_1700->g_114 <= 6); p_1700->g_114 += 1)
                    { /* block id: 660 */
                        uint32_t ***l_1273 = &p_1700->g_1123;
                        int8_t *l_1276 = &l_1220;
                        int i;
                        (*l_1212) &= ((p_1700->g_1031[p_1700->g_114] , ((void*)0 == l_1273)) , (safe_sub_func_int8_t_s_s(((*l_1276) = p_1700->g_167), ((safe_mul_func_int16_t_s_s(1L, (safe_add_func_int64_t_s_s((safe_div_func_int16_t_s_s((~((((l_1293 = ((safe_rshift_func_uint8_t_u_u((safe_unary_minus_func_int16_t_s((+(safe_lshift_func_uint16_t_u_s(p_31, (*l_1180)))))), (safe_mul_func_int8_t_s_s(p_1700->g_244, (safe_rshift_func_uint16_t_u_s(p_32, (*l_1180))))))) == l_1292)) , (-2L)) <= 0x8ACDL) > (*p_1700->g_253))), (*p_1700->g_109))), p_33)))) | (*p_1700->g_109)))));
                    }
                    (*l_1180) |= ((*l_1215) ^= ((+0x4ABE06484CD12D31L) <= ((***p_1700->g_1122) , (((l_1252 , l_1296) != l_1296) != (safe_add_func_int64_t_s_s(p_34, ((p_1700->g_1170.f4.f0 || 0xEA6BE7C66F4F2AE8L) , (safe_sub_func_int16_t_s_s((~l_1301), FAKE_DIVERGE(p_1700->group_2_offset, get_group_id(2), 10))))))))));
                    if ((*l_1180))
                        break;
                }
            }
            (*p_1700->g_517) = func_67((((safe_add_func_uint32_t_u_u((safe_sub_func_int64_t_s_s(((safe_add_func_uint8_t_u_u(0xC7L, ((safe_mod_func_int8_t_s_s(((safe_add_func_int32_t_s_s((-2L), (((*l_1312) |= (*p_1700->g_166)) , ((--(*l_1314)) || (safe_add_func_uint8_t_u_u(p_1700->g_1319, ((p_1700->g_925[0] &= (1UL > ((+(0x4B04L ^ ((((*l_1320) |= p_31) & (safe_mod_func_uint32_t_u_u(4294967291UL, (safe_add_func_uint8_t_u_u(l_1257, p_1700->g_688.f3))))) > p_1700->g_617.f3))) <= l_1325))) != p_1700->g_102[3][2][0]))))))) > 0xCE90L), GROUP_DIVERGE(0, 1))) == (*p_1700->g_109)))) > 0x9745L), FAKE_DIVERGE(p_1700->group_0_offset, get_group_id(0), 10))), 4294967292UL)) > FAKE_DIVERGE(p_1700->local_1_offset, get_local_id(1), 10)) > 3L), l_1267[1][1], p_1700);
            for (p_1700->g_1170.f4.f2 = 0; (p_1700->g_1170.f4.f2 <= (-13)); p_1700->g_1170.f4.f2 = safe_sub_func_uint64_t_u_u(p_1700->g_1170.f4.f2, 9))
            { /* block id: 677 */
                uint32_t l_1333 = 0x3F30383CL;
                int32_t l_1334 = (-1L);
                int32_t l_1363 = (-1L);
                int32_t l_1366[4][8][3] = {{{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL}},{{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL}},{{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL}},{{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL},{0x1F212CFCL,3L,0x624578EBL}}};
                uint16_t *l_1383 = &p_1700->g_350;
                int64_t *l_1413[9][8][3] = {{{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946}},{{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946}},{{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946}},{{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946}},{{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946}},{{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946}},{{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946}},{{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946}},{{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946},{(void*)0,&p_1700->g_925[0],&l_946}}};
                int64_t **l_1412 = &l_1413[7][3][2];
                int64_t ***l_1411 = &l_1412;
                int64_t ****l_1410 = &l_1411;
                int i, j, k;
                (*p_1700->g_762) = (p_1700->g_1328 , p_1700->g_1329);
                l_1334 &= (safe_lshift_func_int16_t_s_s(0x457AL, (((safe_unary_minus_func_int8_t_s(0x1CL)) , p_31) > (((*l_1180) ^= l_1333) ^ GROUP_DIVERGE(2, 1)))));
                for (p_1700->g_1328.f1 = 0; (p_1700->g_1328.f1 <= 7); p_1700->g_1328.f1 += 1)
                { /* block id: 683 */
                    int8_t l_1355[8][9][3] = {{{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L}},{{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L}},{{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L}},{{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L}},{{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L}},{{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L}},{{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L}},{{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L},{0x04L,6L,0x51L}}};
                    int32_t l_1356 = 0x54DD090CL;
                    uint32_t l_1358[3][10];
                    int32_t l_1359 = (-8L);
                    int32_t l_1365[7][4] = {{1L,0x3D1C84C6L,0x7F738E7EL,1L},{1L,0x3D1C84C6L,0x7F738E7EL,1L},{1L,0x3D1C84C6L,0x7F738E7EL,1L},{1L,0x3D1C84C6L,0x7F738E7EL,1L},{1L,0x3D1C84C6L,0x7F738E7EL,1L},{1L,0x3D1C84C6L,0x7F738E7EL,1L},{1L,0x3D1C84C6L,0x7F738E7EL,1L}};
                    uint8_t l_1367 = 4UL;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 10; j++)
                            l_1358[i][j] = 6UL;
                    }
                    for (p_1700->g_319.f2 = 0; (p_1700->g_319.f2 <= 7); p_1700->g_319.f2 += 1)
                    { /* block id: 686 */
                        int32_t l_1357 = 0x057B8C56L;
                        int32_t l_1360 = 0L;
                        int32_t l_1361 = 5L;
                        int32_t l_1362[3][1];
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1362[i][j] = 0L;
                        }
                        l_1358[2][0] |= (safe_add_func_uint64_t_u_u((*l_1215), ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((*l_1314) = ((((safe_mod_func_int8_t_s_s(p_1700->g_351, 0x35L)) > (0xEC573C40L | (((*p_1700->g_109) | (safe_rshift_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_u(((((++(*l_1312)) & (safe_mod_func_int64_t_s_s((((l_1356 |= (safe_add_func_int32_t_s_s(p_31, (l_1355[4][7][2] |= 0xA6097FEBL)))) || (p_33 | p_34)) ^ p_33), 1UL))) <= 0x1C3D47DD472B9EA4L) > 0x20L), 10)) != GROUP_DIVERGE(0, 1)), 14))) <= (-1L)))) == 0UL) != l_1357)), p_32)), FAKE_DIVERGE(p_1700->global_2_offset, get_global_id(2), 10))) & 0x38L)));
                        ++l_1367;
                        (*l_1215) |= (p_1700->g_565.f0 , (safe_sub_func_int8_t_s_s(((*l_1320) |= p_34), p_34)));
                        p_1700->g_1372++;
                    }
                }
                if (((*l_1180) > ((((safe_mul_func_int16_t_s_s((1UL != p_34), (safe_sub_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(l_1267[1][1], 8)), ((+((*p_1700->g_253) = (safe_mul_func_uint8_t_u_u((((((void*)0 == &l_1116) <= p_34) != (((*p_1700->g_109) ^ (!((*l_1383) ^= GROUP_DIVERGE(1, 1)))) ^ (-2L))) , 0UL), GROUP_DIVERGE(1, 1))))) > FAKE_DIVERGE(p_1700->group_0_offset, get_group_id(0), 10)))))) >= 0x7CL) == (*p_1700->g_166)) == p_1700->g_614.f1)))
                { /* block id: 700 */
                    (*p_1700->g_517) = func_67((*p_1700->g_166), l_1366[3][1][2], p_1700);
                    return p_33;
                }
                else
                { /* block id: 703 */
                    struct S2 **l_1390 = &p_1700->g_778;
                    uint16_t l_1405 = 2UL;
                    for (p_1700->g_1170.f4.f1 = 0; (p_1700->g_1170.f4.f1 < 10); p_1700->g_1170.f4.f1 = safe_add_func_int64_t_s_s(p_1700->g_1170.f4.f1, 9))
                    { /* block id: 706 */
                        uint8_t *l_1393 = &p_1700->g_364[2][0].f1;
                        int32_t l_1406 = 0x30B2C09CL;
                        int32_t *l_1407 = &l_1218[0];
                        int64_t ****l_1409 = (void*)0;
                        int64_t *****l_1408 = &l_1409;
                        (*l_1211) &= ((((*l_1408) = (((*l_1407) = (safe_mul_func_uint8_t_u_u((((*p_1700->g_777) != (void*)0) , ((void*)0 != p_1700->g_699)), (safe_sub_func_uint16_t_u_u(((l_1390 != ((safe_rshift_func_uint8_t_u_u((*l_1180), ((*l_1393)--))) , &p_1700->g_706)) < (safe_mul_func_uint16_t_u_u(((*l_1383) &= ((safe_mul_func_int16_t_s_s((p_1700->g_601.f1 = ((*p_1700->g_109) &= (((((((*l_1214) = (-6L)) && (safe_add_func_int8_t_s_s((((safe_mod_func_int64_t_s_s((((((void*)0 == l_1404) , (*l_1180)) ^ 0x60C9D6EC25CB69BFL) , l_1405), 1L)) > (*p_1700->g_253)) <= l_1366[0][1][2]), l_1325))) <= p_32) <= p_34) , p_32) <= p_31))), l_1406)) ^ p_31)), (*l_1212)))), p_34))))) , (void*)0)) != l_1410) ^ 0UL);
                    }
                    return l_1333;
                }
            }
        }
    }
    (*l_1417) = p_1700->g_1414;
    (*l_1180) = (safe_sub_func_uint32_t_u_u((((((*l_1425) = l_1420) != (void*)0) , (*p_1700->g_109)) ^ (p_1700->g_104 = ((((*l_1180) && 0x79B1L) , ((*p_1700->g_1178) > ((((safe_mod_func_int16_t_s_s((safe_div_func_int64_t_s_s(((((safe_div_func_uint32_t_u_u(p_32, (safe_sub_func_uint8_t_u_u(5UL, ((safe_rshift_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u((((void*)0 == p_1700->g_1438) & FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10)), 0x3DEC9881L)) , 0x95CFL), 7)) >= 18446744073709551615UL))))) < p_32) | 0x0996L) & p_32), 0x612C9440961B0E97L)), (*l_1180))) , l_1440[7]) == (void*)0) < (*l_1180)))) , (*p_1700->g_109)))), p_34));
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_46 p_1700->g_4 p_1700->g_47.f2 p_1700->g_47.f1 p_1700->g_7 p_1700->g_comm_values p_1700->g_87 p_1700->g_74 p_1700->g_102 p_1700->g_109 p_1700->g_114 p_1700->g_128 p_1700->g_110 p_1700->g_3 p_1700->g_166 p_1700->l_comm_values p_1700->g_200 p_1700->g_141 p_1700->g_104 p_1700->g_244 p_1700->g_253 p_1700->g_293 p_1700->g_314.f2 p_1700->g_126 p_1700->g_350 p_1700->g_351 p_1700->g_283 p_1700->g_319.f1 p_1700->g_364.f1 p_1700->g_302 p_1700->g_762 p_1700->g_595.f2 p_1700->g_517 p_1700->g_436 p_1700->g_686.f4.f2 p_1700->g_771 p_1700->g_773 p_1700->g_428.f2 p_1700->g_775 p_1700->g_777 p_1700->g_799 p_1700->g_813 p_1700->g_585.f2 p_1700->g_614.f2 p_1700->g_821 p_1700->g_688 p_1700->g_763 p_1700->g_617 p_1700->g_867 p_1700->g_319.f2 p_1700->g_900 p_1700->g_706 p_1700->g_707 p_1700->g_593.f2 p_1700->g_611.f1 p_1700->g_587.f1 p_1700->g_907 p_1700->g_919 p_1700->g_904
 * writes: p_1700->g_74 p_1700->g_47.f1 p_1700->g_87 p_1700->g_47.f2 p_1700->g_102 p_1700->g_104 p_1700->g_114 p_1700->g_128 p_1700->g_126 p_1700->g_141 p_1700->g_210 p_1700->g_244 p_1700->g_283 p_1700->g_200 p_1700->g_293 p_1700->g_302 p_1700->g_314.f2 p_1700->g_110 p_1700->g_351 p_1700->g_comm_values p_1700->l_comm_values p_1700->g_435 p_1700->g_436 p_1700->g_46 p_1700->g_595.f2 p_1700->g_686.f4.f2 p_1700->g_591.f2 p_1700->g_428.f2 p_1700->g_617.f0 p_1700->g_771 p_1700->g_778 p_1700->g_794 p_1700->g_617.f4.f2 p_1700->g_585.f2 p_1700->g_617 p_1700->g_688 p_1700->g_582.f2 p_1700->g_319.f2 p_1700->g_592.f1 p_1700->g_614.f0 p_1700->g_584.f1 p_1700->g_763
 */
uint64_t  func_36(uint32_t  p_37, struct S4 * p_1700)
{ /* block id: 11 */
    struct S0 *l_903 = &p_1700->g_904;
    int32_t l_905 = 0L;
    (*p_1700->g_919) = func_38(((-10L) || func_44(p_1700->g_46, p_1700)), p_37, l_903, (l_905 <= p_1700->g_3), l_903, p_1700);
    (*p_1700->g_762) = (*l_903);
    return (*p_1700->g_253);
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_517 p_1700->g_436 p_1700->g_907 p_1700->g_253
 * writes: p_1700->g_436 p_1700->g_128
 */
struct S0 * func_38(int8_t  p_39, int64_t  p_40, struct S0 * p_41, int32_t  p_42, struct S0 * p_43, struct S4 * p_1700)
{ /* block id: 473 */
    int16_t l_906[6][4] = {{0x37E7L,0x6D73L,0x6D73L,0x37E7L},{0x37E7L,0x6D73L,0x6D73L,0x37E7L},{0x37E7L,0x6D73L,0x6D73L,0x37E7L},{0x37E7L,0x6D73L,0x6D73L,0x37E7L},{0x37E7L,0x6D73L,0x6D73L,0x37E7L},{0x37E7L,0x6D73L,0x6D73L,0x37E7L}};
    int32_t l_908 = 1L;
    int32_t l_915[7][3];
    uint8_t l_916 = 0x90L;
    int32_t l_917 = 0x0D6AAAD3L;
    struct S0 *l_918 = &p_1700->g_428[0][1][4];
    int i, j;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
            l_915[i][j] = 0x5847F0DCL;
    }
    (*p_1700->g_517) = (*p_1700->g_517);
    l_917 = ((((GROUP_DIVERGE(1, 1) <= ((7L == (!l_906[2][2])) | (l_908 = (p_1700->g_907 , 0x2BB43F08D611B1CAL)))) < (safe_lshift_func_uint16_t_u_s(l_906[2][2], ((p_39 = l_906[1][1]) , l_906[0][1])))) & ((safe_add_func_uint64_t_u_u(((*p_1700->g_253) = ((((safe_rshift_func_uint8_t_u_u((+l_915[5][1]), 1)) <= 0x3DL) && p_40) >= 0L)), 0x286115B050CFAA92L)) | p_40)) == l_916);
    return l_918;
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_4 p_1700->g_47.f2 p_1700->g_47.f1 p_1700->g_7 p_1700->g_comm_values p_1700->g_87 p_1700->g_74 p_1700->g_102 p_1700->g_109 p_1700->g_114 p_1700->g_128 p_1700->g_110 p_1700->g_3 p_1700->g_166 p_1700->l_comm_values p_1700->g_200 p_1700->g_141 p_1700->g_104 p_1700->g_244 p_1700->g_253 p_1700->g_293 p_1700->g_314.f2 p_1700->g_126 p_1700->g_350 p_1700->g_351 p_1700->g_283 p_1700->g_46 p_1700->g_319.f1 p_1700->g_364.f1 p_1700->g_302 p_1700->g_762 p_1700->g_595.f2 p_1700->g_517 p_1700->g_436 p_1700->g_686.f4.f2 p_1700->g_771 p_1700->g_773 p_1700->g_428.f2 p_1700->g_775 p_1700->g_777 p_1700->g_799 p_1700->g_813 p_1700->g_585.f2 p_1700->g_614.f2 p_1700->g_821 p_1700->g_688 p_1700->g_763 p_1700->g_617 p_1700->g_867 p_1700->g_319.f2 p_1700->g_900 p_1700->g_706 p_1700->g_707 p_1700->g_593.f2 p_1700->g_611.f1 p_1700->g_587.f1
 * writes: p_1700->g_74 p_1700->g_47.f1 p_1700->g_87 p_1700->g_47.f2 p_1700->g_102 p_1700->g_104 p_1700->g_114 p_1700->g_128 p_1700->g_126 p_1700->g_141 p_1700->g_210 p_1700->g_244 p_1700->g_283 p_1700->g_200 p_1700->g_293 p_1700->g_302 p_1700->g_314.f2 p_1700->g_110 p_1700->g_351 p_1700->g_comm_values p_1700->l_comm_values p_1700->g_435 p_1700->g_436 p_1700->g_46 p_1700->g_595.f2 p_1700->g_686.f4.f2 p_1700->g_591.f2 p_1700->g_428.f2 p_1700->g_617.f0 p_1700->g_771 p_1700->g_778 p_1700->g_794 p_1700->g_617.f4.f2 p_1700->g_585.f2 p_1700->g_617 p_1700->g_688 p_1700->g_582.f2 p_1700->g_319.f2 p_1700->g_592.f1 p_1700->g_614.f0 p_1700->g_584.f1
 */
int32_t  func_44(struct S0 * p_45, struct S4 * p_1700)
{ /* block id: 12 */
    int32_t *l_48 = &p_1700->g_47.f2;
    int32_t *l_49 = &p_1700->g_47.f2;
    int32_t *l_50 = &p_1700->g_47.f2;
    int32_t *l_51[7][6] = {{&p_1700->g_7,(void*)0,(void*)0,(void*)0,&p_1700->g_7,&p_1700->g_7},{&p_1700->g_7,(void*)0,(void*)0,(void*)0,&p_1700->g_7,&p_1700->g_7},{&p_1700->g_7,(void*)0,(void*)0,(void*)0,&p_1700->g_7,&p_1700->g_7},{&p_1700->g_7,(void*)0,(void*)0,(void*)0,&p_1700->g_7,&p_1700->g_7},{&p_1700->g_7,(void*)0,(void*)0,(void*)0,&p_1700->g_7,&p_1700->g_7},{&p_1700->g_7,(void*)0,(void*)0,(void*)0,&p_1700->g_7,&p_1700->g_7},{&p_1700->g_7,(void*)0,(void*)0,(void*)0,&p_1700->g_7,&p_1700->g_7}};
    uint8_t l_52 = 0x57L;
    int8_t *l_901 = &p_1700->g_200;
    uint32_t l_902 = 7UL;
    int i, j;
    l_52--;
    (*l_49) = ((0x46L <= (safe_div_func_int64_t_s_s((safe_add_func_uint32_t_u_u((((safe_div_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(0x7DL, (((*l_901) = (func_63(p_1700->g_4, l_51[3][3], func_67((*l_50), ((safe_mul_func_uint16_t_u_u(p_1700->g_47.f1, (GROUP_DIVERGE(1, 1) , (safe_lshift_func_int16_t_s_u((((p_1700->g_74 = p_1700->g_47.f2) >= (p_1700->g_7 , 0x3A3753CEL)) , (*l_49)), (*l_50)))))) , 0x43F40280L), p_1700), p_1700) , (*l_49))) & p_1700->g_593[4].f2))), l_902)) , 0xDAAC4854L) ^ p_1700->g_611.f1), p_1700->g_350)), p_1700->g_587.f1))) < p_1700->g_319.f1);
    return (*l_48);
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_686.f4.f2 p_1700->g_771 p_1700->g_773 p_1700->g_428.f2 p_1700->g_775 p_1700->g_777 p_1700->g_109 p_1700->g_110 p_1700->g_799 p_1700->g_102 p_1700->g_351 p_1700->g_253 p_1700->g_128 p_1700->g_813 p_1700->g_585.f2 p_1700->g_614.f2 p_1700->g_821 p_1700->g_517 p_1700->g_688 p_1700->g_762 p_1700->g_763 p_1700->g_617 p_1700->g_867 p_1700->g_319.f2 p_1700->g_900 p_1700->g_47.f1 p_1700->g_706 p_1700->g_707
 * writes: p_1700->g_686.f4.f2 p_1700->g_591.f2 p_1700->g_428.f2 p_1700->g_200 p_1700->g_617.f0 p_1700->g_771 p_1700->g_46 p_1700->g_778 p_1700->g_110 p_1700->g_794 p_1700->g_102 p_1700->g_351 p_1700->g_244 p_1700->g_617.f4.f2 p_1700->g_585.f2 p_1700->g_436 p_1700->g_617 p_1700->g_128 p_1700->g_302 p_1700->g_688 p_1700->g_582.f2 p_1700->g_319.f2 p_1700->g_592.f1 p_1700->g_614.f0 p_1700->g_584.f1 p_1700->g_74 p_1700->g_47.f1
 */
struct S2  func_63(int32_t  p_64, int32_t * p_65, int32_t * p_66, struct S4 * p_1700)
{ /* block id: 364 */
    int8_t l_768 = 0x53L;
    struct S2 *l_776 = &p_1700->g_598;
    int32_t l_782 = (-1L);
    int32_t l_783[8][8][2] = {{{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L}},{{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L}},{{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L}},{{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L}},{{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L}},{{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L}},{{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L}},{{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L},{1L,5L}}};
    uint16_t **l_793[6][8] = {{&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,(void*)0,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210},{&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,(void*)0,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210},{&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,(void*)0,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210},{&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,(void*)0,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210},{&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,(void*)0,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210},{&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,(void*)0,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210}};
    int64_t ***l_807 = (void*)0;
    uint32_t l_880 = 0xDC545243L;
    int32_t l_888 = 0x5C0A33DDL;
    int i, j, k;
    for (p_1700->g_686.f4.f2 = 0; (p_1700->g_686.f4.f2 > (-2)); p_1700->g_686.f4.f2--)
    { /* block id: 367 */
        uint32_t l_767 = 4294967295UL;
        int64_t ***l_806 = (void*)0;
        uint32_t l_811 = 0x0E2D8771L;
        int16_t l_823[7][2] = {{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)}};
        int32_t l_831[3];
        int32_t l_841 = 0x19C19D26L;
        int64_t l_864 = 0x2585E9472FC841DDL;
        int32_t l_865[10] = {0x64779354L,0x64779354L,0x64779354L,0x64779354L,0x64779354L,0x64779354L,0x64779354L,0x64779354L,0x64779354L,0x64779354L};
        int i, j;
        for (i = 0; i < 3; i++)
            l_831[i] = (-5L);
        for (p_1700->g_591.f2 = 2; (p_1700->g_591.f2 >= 0); p_1700->g_591.f2 -= 1)
        { /* block id: 370 */
            uint64_t l_784 = 18446744073709551608UL;
            int16_t *l_808 = &p_1700->g_102[1][2][1];
            int64_t *l_809 = (void*)0;
            int64_t *l_810 = &p_1700->g_351;
            int32_t l_828[3][2][3] = {{{0L,7L,(-7L)},{0L,7L,(-7L)}},{{0L,7L,(-7L)},{0L,7L,(-7L)}},{{0L,7L,(-7L)},{0L,7L,(-7L)}}};
            uint16_t l_868 = 1UL;
            int16_t l_893 = 0x4A07L;
            int i, j, k;
            if (l_767)
            { /* block id: 371 */
                int32_t *l_770 = &p_1700->g_428[0][1][4].f2;
                (*l_770) = l_768;
                for (p_1700->g_200 = 0; (p_1700->g_200 <= 2); p_1700->g_200 += 1)
                { /* block id: 375 */
                    for (p_1700->g_617.f0 = 1; (p_1700->g_617.f0 <= 8); p_1700->g_617.f0 += 1)
                    { /* block id: 378 */
                        struct S0 *l_774 = &p_1700->g_364[2][0];
                        (*p_1700->g_773) = p_1700->g_771[5];
                        if ((*l_770))
                            continue;
                        (*p_1700->g_775) = l_774;
                        (*p_1700->g_777) = l_776;
                    }
                }
            }
            else
            { /* block id: 385 */
                int32_t *l_779 = &p_1700->g_585.f2;
                int32_t *l_780 = (void*)0;
                int32_t *l_781[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_781[i] = &p_1700->g_587.f2;
                l_784++;
            }
            if (l_784)
                break;
            if ((safe_div_func_uint8_t_u_u((((safe_lshift_func_int16_t_s_s((p_64 , ((*p_1700->g_109) = (*p_1700->g_109))), 12)) | (((l_767 >= ((safe_add_func_int32_t_s_s((l_793[2][1] == (p_1700->g_794[1][3] = (void*)0)), (safe_lshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s((p_1700->g_799 , ((((l_783[4][6][0] == l_784) || ((*l_810) |= (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1700->local_1_offset, get_local_id(1), 10), ((*l_808) ^= ((safe_div_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s(((l_783[1][6][0] , l_806) == l_807), 1)), l_783[3][0][1])) >= 0x32L)))))) | l_768) == l_784)), p_64)), 6)))) | (*p_1700->g_253))) ^ l_811) & l_784)) == GROUP_DIVERGE(1, 1)), p_64)))
            { /* block id: 393 */
                int8_t *l_814[6][4] = {{&p_1700->g_200,&l_768,&l_768,&l_768},{&p_1700->g_200,&l_768,&l_768,&l_768},{&p_1700->g_200,&l_768,&l_768,&l_768},{&p_1700->g_200,&l_768,&l_768,&l_768},{&p_1700->g_200,&l_768,&l_768,&l_768},{&p_1700->g_200,&l_768,&l_768,&l_768}};
                int16_t l_820 = 0x0926L;
                int32_t l_832 = 0L;
                int32_t l_834 = 0x0D2EEB03L;
                int32_t l_837 = 0x459F157AL;
                int32_t l_838 = 7L;
                int32_t l_839 = 0x03985776L;
                int32_t l_840[8] = {0x7A6094FCL,(-1L),0x7A6094FCL,0x7A6094FCL,(-1L),0x7A6094FCL,0x7A6094FCL,(-1L)};
                int64_t *l_846 = &p_1700->g_351;
                int64_t *l_847 = (void*)0;
                int64_t **l_862 = &l_847;
                int64_t ***l_861[6][9] = {{&l_862,&l_862,(void*)0,(void*)0,&l_862,(void*)0,(void*)0,&l_862,&l_862},{&l_862,&l_862,(void*)0,(void*)0,&l_862,(void*)0,(void*)0,&l_862,&l_862},{&l_862,&l_862,(void*)0,(void*)0,&l_862,(void*)0,(void*)0,&l_862,&l_862},{&l_862,&l_862,(void*)0,(void*)0,&l_862,(void*)0,(void*)0,&l_862,&l_862},{&l_862,&l_862,(void*)0,(void*)0,&l_862,(void*)0,(void*)0,&l_862,&l_862},{&l_862,&l_862,(void*)0,(void*)0,&l_862,(void*)0,(void*)0,&l_862,&l_862}};
                uint16_t ***l_863 = &l_793[0][3];
                int i, j;
                for (p_1700->g_244 = 0; (p_1700->g_244 <= 2); p_1700->g_244 += 1)
                { /* block id: 396 */
                    int32_t l_812 = 0x6BFBE925L;
                    int32_t l_829 = 0x0E0D8A6EL;
                    int32_t l_830 = 0x1E729E06L;
                    int32_t l_833 = 0L;
                    int32_t l_835[4][1][1];
                    int32_t l_836[8][8][4] = {{{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)}},{{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)}},{{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)}},{{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)}},{{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)}},{{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)}},{{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)}},{{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)},{0x7DBA61F1L,0L,(-1L),(-7L)}}};
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_835[i][j][k] = (-1L);
                        }
                    }
                    for (p_1700->g_617.f4.f2 = 1; (p_1700->g_617.f4.f2 >= 0); p_1700->g_617.f4.f2 -= 1)
                    { /* block id: 399 */
                        int32_t *l_822[10] = {&p_1700->g_126,&p_1700->g_126,&p_1700->g_126,&p_1700->g_126,&p_1700->g_126,&p_1700->g_126,&p_1700->g_126,&p_1700->g_126,&p_1700->g_126,&p_1700->g_126};
                        uint32_t l_842 = 7UL;
                        int i;
                        (*p_1700->g_813) ^= l_812;
                        l_823[5][1] &= (((~0x072B8BA286F04DC3L) < (((*l_810) = ((&p_1700->g_293 != l_814[3][3]) || p_1700->g_614.f2)) < (safe_unary_minus_func_uint32_t_u((safe_lshift_func_int16_t_s_u(p_64, ((((safe_sub_func_int16_t_s_s((((((l_783[5][7][1] == 8L) | l_820) == (((p_64 != 0L) | (*p_1700->g_109)) | 65528UL)) & p_64) != p_64), p_64)) & (-1L)) , p_1700->g_821) == p_1700->g_821))))))) & 0x0402L);
                        l_829 = (safe_lshift_func_uint8_t_u_u((p_64 & 0x24C0D607L), (safe_add_func_uint16_t_u_u((++l_842), (-1L)))));
                    }
                    (*p_1700->g_517) = (p_64 , p_65);
                    if (l_782)
                        break;
                    for (l_811 = 0; (l_811 <= 2); l_811 += 1)
                    { /* block id: 410 */
                        struct S1 *l_845 = &p_1700->g_617;
                        int32_t *l_848 = &l_783[7][3][0];
                        (*l_845) = p_1700->g_688;
                        (*l_848) |= ((l_846 = &p_1700->g_351) != ((*p_1700->g_762) , l_847));
                        if ((*p_1700->g_813))
                            break;
                    }
                }
                if ((((((safe_mul_func_uint16_t_u_u(((l_837 = (~(l_839 < (-1L)))) , (safe_mul_func_int8_t_s_s((l_865[6] &= ((((safe_lshift_func_int16_t_s_u((((safe_mod_func_int64_t_s_s(0L, (++(*p_1700->g_253)))) && l_831[2]) >= l_767), (safe_mul_func_int8_t_s_s((p_64 , (p_1700->g_302 = (l_861[2][5] == (void*)0))), (((((*l_863) = &p_1700->g_210) != (void*)0) < p_64) != l_828[2][0][0]))))) , l_823[5][1]) > 4294967295UL) >= l_864)), p_64))), p_64)) ^ p_64) != l_782) ^ l_840[0]) > 9UL))
                { /* block id: 422 */
                    (*p_1700->g_867) = p_1700->g_617;
                }
                else
                { /* block id: 424 */
                    int32_t *l_869 = (void*)0;
                    int32_t *l_870 = &p_1700->g_582.f2;
                    l_831[0] = ((*l_870) = l_868);
                }
                for (p_1700->g_319.f2 = 2; (p_1700->g_319.f2 >= 0); p_1700->g_319.f2 -= 1)
                { /* block id: 430 */
                    for (l_838 = 0; (l_838 <= 7); l_838 += 1)
                    { /* block id: 433 */
                        struct S1 *l_871[5];
                        struct S1 **l_872 = (void*)0;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_871[i] = &p_1700->g_617;
                        l_834 |= ((*p_1700->g_867) , l_840[(p_1700->g_319.f2 + 2)]);
                        l_871[0] = l_871[0];
                        if (l_840[(p_1700->g_319.f2 + 2)])
                            break;
                    }
                    for (p_1700->g_592.f1 = 0; (p_1700->g_592.f1 <= 1); p_1700->g_592.f1 += 1)
                    { /* block id: 440 */
                        int32_t *l_873 = (void*)0;
                        int32_t *l_874 = (void*)0;
                        int32_t *l_875 = (void*)0;
                        int32_t *l_876 = &p_1700->g_586.f2;
                        int32_t *l_877 = &p_1700->g_592.f2;
                        int32_t *l_878 = &p_1700->g_589.f2;
                        int32_t *l_879 = (void*)0;
                        l_880++;
                        if (l_880)
                            continue;
                    }
                }
            }
            else
            { /* block id: 445 */
                int32_t *l_883 = &p_1700->g_583.f2;
                int32_t **l_885 = &l_883;
                int32_t l_889 = 1L;
                int32_t l_896[2];
                uint32_t l_897 = 0xC03BCEDCL;
                int i;
                for (i = 0; i < 2; i++)
                    l_896[i] = (-9L);
                (*l_885) = ((*p_1700->g_517) = l_883);
                for (p_1700->g_614.f0 = 0; (p_1700->g_614.f0 <= 2); p_1700->g_614.f0 += 1)
                { /* block id: 450 */
                    uint32_t l_890 = 0x6C20A452L;
                    int32_t *l_894 = &p_1700->g_74;
                    int32_t *l_895[8][9] = {{(void*)0,(void*)0,(void*)0,&p_1700->g_592.f2,&l_889,&p_1700->g_586.f2,&p_1700->g_585.f2,&p_1700->g_617.f4.f2,&p_1700->g_585.f2},{(void*)0,(void*)0,(void*)0,&p_1700->g_592.f2,&l_889,&p_1700->g_586.f2,&p_1700->g_585.f2,&p_1700->g_617.f4.f2,&p_1700->g_585.f2},{(void*)0,(void*)0,(void*)0,&p_1700->g_592.f2,&l_889,&p_1700->g_586.f2,&p_1700->g_585.f2,&p_1700->g_617.f4.f2,&p_1700->g_585.f2},{(void*)0,(void*)0,(void*)0,&p_1700->g_592.f2,&l_889,&p_1700->g_586.f2,&p_1700->g_585.f2,&p_1700->g_617.f4.f2,&p_1700->g_585.f2},{(void*)0,(void*)0,(void*)0,&p_1700->g_592.f2,&l_889,&p_1700->g_586.f2,&p_1700->g_585.f2,&p_1700->g_617.f4.f2,&p_1700->g_585.f2},{(void*)0,(void*)0,(void*)0,&p_1700->g_592.f2,&l_889,&p_1700->g_586.f2,&p_1700->g_585.f2,&p_1700->g_617.f4.f2,&p_1700->g_585.f2},{(void*)0,(void*)0,(void*)0,&p_1700->g_592.f2,&l_889,&p_1700->g_586.f2,&p_1700->g_585.f2,&p_1700->g_617.f4.f2,&p_1700->g_585.f2},{(void*)0,(void*)0,(void*)0,&p_1700->g_592.f2,&l_889,&p_1700->g_586.f2,&p_1700->g_585.f2,&p_1700->g_617.f4.f2,&p_1700->g_585.f2}};
                    int i, j;
                    for (p_1700->g_584.f1 = 0; (p_1700->g_584.f1 <= 2); p_1700->g_584.f1 += 1)
                    { /* block id: 453 */
                        int32_t *l_886 = (void*)0;
                        int32_t *l_887[1][9];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 9; j++)
                                l_887[i][j] = &p_1700->g_428[0][1][4].f2;
                        }
                        (*p_1700->g_517) = p_66;
                        l_890--;
                        if (p_64)
                            break;
                    }
                    ++l_897;
                    (*l_894) = (p_1700->g_900[1][2][1] , l_828[2][0][0]);
                }
            }
            for (p_1700->g_47.f1 = 0; (p_1700->g_47.f1 <= 2); p_1700->g_47.f1 += 1)
            { /* block id: 464 */
                (*p_1700->g_813) = (l_868 == l_831[0]);
            }
        }
    }
    return (*p_1700->g_706);
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_comm_values p_1700->g_47.f2 p_1700->g_87 p_1700->g_74 p_1700->g_7 p_1700->g_102 p_1700->g_109 p_1700->g_114 p_1700->g_128 p_1700->g_110 p_1700->g_3 p_1700->g_166 p_1700->l_comm_values p_1700->g_200 p_1700->g_47.f1 p_1700->g_141 p_1700->g_104 p_1700->g_244 p_1700->g_253 p_1700->g_293 p_1700->g_314.f2 p_1700->g_126 p_1700->g_350 p_1700->g_351 p_1700->g_283 p_1700->g_46 p_1700->g_319.f1 p_1700->g_364.f1 p_1700->g_302 p_1700->g_762 p_1700->g_595.f2 p_1700->g_517 p_1700->g_436
 * writes: p_1700->g_47.f1 p_1700->g_87 p_1700->g_47.f2 p_1700->g_102 p_1700->g_104 p_1700->g_114 p_1700->g_128 p_1700->g_74 p_1700->g_126 p_1700->g_141 p_1700->g_210 p_1700->g_244 p_1700->g_283 p_1700->g_200 p_1700->g_293 p_1700->g_302 p_1700->g_314.f2 p_1700->g_110 p_1700->g_351 p_1700->g_comm_values p_1700->l_comm_values p_1700->g_435 p_1700->g_436 p_1700->g_46 p_1700->g_595.f2
 */
int32_t * func_67(uint32_t  p_68, uint32_t  p_69, struct S4 * p_1700)
{ /* block id: 15 */
    uint8_t *l_81 = &p_1700->g_47.f1;
    uint8_t *l_86[7][8][4] = {{{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87}},{{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87}},{{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87}},{{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87}},{{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87}},{{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87}},{{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87},{&p_1700->g_87,(void*)0,&p_1700->g_87,&p_1700->g_87}}};
    int32_t l_88[5];
    int32_t l_89 = (-10L);
    struct S0 **l_760 = (void*)0;
    struct S0 **l_761 = &p_1700->g_46;
    int32_t *l_764[9][10][2] = {{{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2}},{{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2}},{{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2}},{{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2}},{{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2}},{{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2}},{{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2}},{{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2}},{{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2},{&p_1700->g_364[2][0].f2,&p_1700->g_585.f2}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_88[i] = 0x74102D43L;
    p_1700->g_595[5].f2 ^= ((((*l_761) = func_75((p_1700->g_comm_values[p_1700->tid] & 1L), (((safe_rshift_func_uint16_t_u_u((p_1700->g_47.f2 && ((*l_81) = p_69)), 3)) < (l_88[3] = ((p_69 & (safe_mul_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((++p_1700->g_87), p_1700->g_74)), ((safe_mul_func_int16_t_s_s((0UL & l_88[2]), ((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), 0xB7E4AC2EL)) || p_1700->g_7))) , (-1L))))) && p_68))) , 0x224D4209ED79FF3DL), p_68, p_1700)) != p_1700->g_762) <= p_68);
    return (*p_1700->g_517);
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_47.f2 p_1700->g_comm_values p_1700->g_102 p_1700->g_109 p_1700->g_114 p_1700->g_128 p_1700->g_110 p_1700->g_3 p_1700->g_87 p_1700->g_166 p_1700->l_comm_values p_1700->g_7 p_1700->g_200 p_1700->g_47.f1 p_1700->g_74 p_1700->g_141 p_1700->g_104 p_1700->g_244 p_1700->g_253 p_1700->g_293 p_1700->g_314.f2 p_1700->g_126 p_1700->g_350 p_1700->g_351 p_1700->g_283 p_1700->g_46 p_1700->g_319.f1 p_1700->g_364.f1 p_1700->g_302
 * writes: p_1700->g_47.f2 p_1700->g_102 p_1700->g_104 p_1700->g_114 p_1700->g_128 p_1700->g_74 p_1700->g_126 p_1700->g_141 p_1700->g_47.f1 p_1700->g_87 p_1700->g_210 p_1700->g_244 p_1700->g_283 p_1700->g_200 p_1700->g_293 p_1700->g_302 p_1700->g_314.f2 p_1700->g_110 p_1700->g_351 p_1700->g_comm_values p_1700->l_comm_values p_1700->g_435 p_1700->g_436
 */
struct S0 * func_75(uint32_t  p_76, int64_t  p_77, uint32_t  p_78, struct S4 * p_1700)
{ /* block id: 19 */
    int64_t l_97 = (-1L);
    int32_t *l_98[10][6] = {{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3},{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3},{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3},{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3},{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3},{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3},{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3},{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3},{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3},{&p_1700->g_74,&p_1700->g_7,&p_1700->g_74,&p_1700->g_3,&p_1700->g_3,&p_1700->g_3}};
    uint16_t *l_135 = &p_1700->g_114;
    uint32_t l_145 = 4294967294UL;
    uint64_t l_258[1];
    uint64_t l_275 = 1UL;
    uint32_t l_344 = 1UL;
    struct S0 *l_363 = &p_1700->g_364[2][0];
    int32_t l_438 = 4L;
    uint8_t *l_445 = &p_1700->g_428[0][1][4].f1;
    uint16_t l_456 = 0x6716L;
    uint32_t l_483 = 4294967286UL;
    uint64_t l_574 = 1UL;
    struct S2 *l_600 = &p_1700->g_601;
    uint8_t l_697 = 255UL;
    uint32_t l_751 = 0xDC016F8EL;
    uint32_t l_757 = 0xB03B382CL;
    int i, j;
    for (i = 0; i < 1; i++)
        l_258[i] = 0xC148FA9423574DF4L;
    if ((p_1700->g_47.f2 ^= (safe_unary_minus_func_int64_t_s((l_97 == p_76)))))
    { /* block id: 21 */
        int16_t *l_101 = &p_1700->g_102[2][0][3];
        int16_t *l_103 = &p_1700->g_104;
        uint32_t *l_107[2];
        int32_t l_108 = 1L;
        uint16_t *l_113 = &p_1700->g_114;
        int32_t l_117 = (-8L);
        int32_t l_127[2][8] = {{0x43543006L,0x43543006L,0x43543006L,0x43543006L,0x43543006L,0x43543006L,0x43543006L,0x43543006L},{0x43543006L,0x43543006L,0x43543006L,0x43543006L,0x43543006L,0x43543006L,0x43543006L,0x43543006L}};
        uint16_t **l_136[5][10][2] = {{{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135}},{{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135}},{{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135}},{{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135}},{{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135},{(void*)0,&l_135}}};
        uint16_t l_146 = 0x9D88L;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_107[i] = (void*)0;
        l_127[1][7] &= (safe_div_func_uint64_t_u_u((p_77 , p_1700->g_comm_values[p_1700->tid]), ((((*l_103) = ((*l_101) ^= 0x74F0L)) & p_76) & (safe_sub_func_uint32_t_u_u((l_108 = FAKE_DIVERGE(p_1700->group_1_offset, get_group_id(1), 10)), (p_1700->g_109 == ((((safe_mul_func_uint8_t_u_u((((FAKE_DIVERGE(p_1700->global_0_offset, get_global_id(0), 10) != ((((*l_113)--) >= l_117) , (safe_rshift_func_uint16_t_u_s((((void*)0 == l_113) >= ((safe_sub_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((--p_1700->g_128), (p_1700->g_126 = (p_1700->g_74 = p_78)))), (*p_1700->g_109))) != 0x2FBE4218L)), 10)))) | GROUP_DIVERGE(0, 1)) < p_1700->g_3), 0xF5L)) == p_76) ^ p_1700->g_3) , (void*)0)))))));
        l_146 |= (((((safe_lshift_func_int16_t_s_s((*p_1700->g_109), ((*l_103) = (((safe_div_func_int16_t_s_s((l_113 == (l_135 = l_135)), (safe_sub_func_int32_t_s_s(p_1700->g_87, l_108)))) & (((safe_div_func_uint32_t_u_u((p_1700->g_141 = (p_78 <= p_76)), (safe_unary_minus_func_uint32_t_u(p_1700->g_110)))) , (((safe_add_func_int64_t_s_s(l_117, l_145)) && l_127[0][6]) , &p_76)) != &p_76)) <= p_78)))) > p_76) > p_76) , l_108) >= p_77);
    }
    else
    { /* block id: 34 */
        int16_t *l_163 = &p_1700->g_110;
        uint32_t *l_164 = &l_145;
        int32_t l_165 = 0x01084FA4L;
        uint32_t l_224 = 0x00201516L;
        uint32_t l_229 = 1UL;
        int32_t l_230 = 0x1319184DL;
        uint16_t l_241 = 0x6FCEL;
        int32_t l_276 = 0x04DE2F11L;
        int32_t l_312 = 0x0945477DL;
        uint64_t l_362 = 18446744073709551615UL;
        int8_t l_365 = 0x72L;
        uint16_t l_415 = 1UL;
        struct S0 *l_427 = &p_1700->g_428[0][1][4];
        uint32_t l_441 = 0xC531510DL;
        int8_t *l_442 = (void*)0;
        int8_t *l_443 = (void*)0;
        int8_t *l_444[6][9] = {{&p_1700->g_302,&p_1700->g_302,&p_1700->g_200,&p_1700->g_293,(void*)0,&l_365,&p_1700->g_302,&p_1700->g_293,&p_1700->g_302},{&p_1700->g_302,&p_1700->g_302,&p_1700->g_200,&p_1700->g_293,(void*)0,&l_365,&p_1700->g_302,&p_1700->g_293,&p_1700->g_302},{&p_1700->g_302,&p_1700->g_302,&p_1700->g_200,&p_1700->g_293,(void*)0,&l_365,&p_1700->g_302,&p_1700->g_293,&p_1700->g_302},{&p_1700->g_302,&p_1700->g_302,&p_1700->g_200,&p_1700->g_293,(void*)0,&l_365,&p_1700->g_302,&p_1700->g_293,&p_1700->g_302},{&p_1700->g_302,&p_1700->g_302,&p_1700->g_200,&p_1700->g_293,(void*)0,&l_365,&p_1700->g_302,&p_1700->g_293,&p_1700->g_302},{&p_1700->g_302,&p_1700->g_302,&p_1700->g_200,&p_1700->g_293,(void*)0,&l_365,&p_1700->g_302,&p_1700->g_293,&p_1700->g_302}};
        uint8_t *l_446 = &p_1700->g_428[0][1][4].f1;
        int32_t l_447 = 0x27DA3C69L;
        int32_t l_448 = 1L;
        int32_t l_449 = 0L;
        int32_t l_450 = 1L;
        int32_t l_451 = 0x0235B68BL;
        int32_t l_452 = 3L;
        int32_t l_453 = 0x51886A81L;
        int32_t l_454[3];
        int8_t l_455 = 0x56L;
        uint32_t ***l_479 = &p_1700->g_477;
        uint32_t *l_482 = &p_1700->g_141;
        int64_t *l_484 = &p_1700->g_351;
        int64_t l_573 = 7L;
        uint8_t l_578 = 247UL;
        struct S2 *l_597 = &p_1700->g_598;
        int i, j;
        for (i = 0; i < 3; i++)
            l_454[i] = 0x4B2C221EL;
        for (p_1700->g_47.f1 = 0; (p_1700->g_47.f1 <= 34); p_1700->g_47.f1 = safe_add_func_int32_t_s_s(p_1700->g_47.f1, 9))
        { /* block id: 37 */
            int16_t *l_157 = &p_1700->g_110;
            int32_t l_181 = 0x2422D8A0L;
            int16_t **l_228[6];
            uint64_t *l_242 = &p_1700->g_128;
            int32_t **l_295[1];
            int16_t l_327[5];
            int16_t *l_328 = &p_1700->g_104;
            uint8_t l_404 = 4UL;
            int i;
            for (i = 0; i < 6; i++)
                l_228[i] = &l_163;
            for (i = 0; i < 1; i++)
                l_295[i] = &l_98[2][0];
            for (i = 0; i < 5; i++)
                l_327[i] = 0x2F3BL;
            for (l_97 = 5; (l_97 >= 0); l_97 -= 1)
            { /* block id: 40 */
                int16_t **l_158 = (void*)0;
                int16_t **l_159 = &l_157;
                uint64_t l_160 = 0xC78BC37ACF775A94L;
                uint16_t *l_220[6];
                int64_t l_222[5];
                int32_t l_223 = (-1L);
                uint32_t l_272 = 0x120FD1ABL;
                struct S0 *l_318 = &p_1700->g_319;
                int32_t **l_320 = &l_98[2][0];
                uint16_t l_349 = 9UL;
                int i, j;
                for (i = 0; i < 6; i++)
                    l_220[i] = &p_1700->g_114;
                for (i = 0; i < 5; i++)
                    l_222[i] = 0x1D277308337835E5L;
                if ((p_77 & ((safe_add_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(((safe_div_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s(p_78, ((((((*l_159) = l_157) != (void*)0) > (l_98[(l_97 + 2)][l_97] == (p_78 , (((FAKE_DIVERGE(p_1700->local_0_offset, get_local_id(0), 10) && l_160) & ((safe_mul_func_int16_t_s_s((1L <= ((void*)0 != l_163)), 0x159EL)) > (*p_1700->g_109))) , l_164)))) != (-7L)) || 0x55E8L))) , GROUP_DIVERGE(1, 1)), p_1700->g_128)) && p_77), l_165)), FAKE_DIVERGE(p_1700->group_1_offset, get_group_id(1), 10))) >= 1UL)))
                { /* block id: 42 */
                    uint8_t *l_168[3][3] = {{&p_1700->g_47.f1,&p_1700->g_47.f1,&p_1700->g_47.f1},{&p_1700->g_47.f1,&p_1700->g_47.f1,&p_1700->g_47.f1},{&p_1700->g_47.f1,&p_1700->g_47.f1,&p_1700->g_47.f1}};
                    int8_t l_201 = (-1L);
                    int32_t l_203 = 0x5E8AB107L;
                    uint16_t *l_206 = &p_1700->g_114;
                    uint64_t *l_243 = (void*)0;
                    int i, j;
                    if ((&p_1700->g_102[6][1][2] == (((p_1700->g_87 |= (&p_76 == p_1700->g_166)) ^ p_78) , (*l_159))))
                    { /* block id: 44 */
                        int64_t *l_171 = (void*)0;
                        int64_t *l_172 = (void*)0;
                        int64_t *l_173 = (void*)0;
                        int64_t *l_174 = (void*)0;
                        int32_t l_202[7] = {0x7C1ADAE8L,0L,0x7C1ADAE8L,0x7C1ADAE8L,0L,0x7C1ADAE8L,0x7C1ADAE8L};
                        int i;
                        p_1700->g_74 |= (l_203 = (safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10), ((p_1700->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1700->tid, 14))] , (p_77 = (l_165 == p_77))) > ((safe_div_func_uint64_t_u_u((((GROUP_DIVERGE(0, 1) >= (((((((p_1700->g_128++) ^ l_181) & 0x20642ACEL) ^ (safe_div_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1700->group_2_offset, get_group_id(2), 10), (((~p_78) && (safe_mul_func_uint16_t_u_u((l_181 & (safe_add_func_int64_t_s_s((safe_mod_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((!(safe_div_func_int64_t_s_s((safe_div_func_int64_t_s_s(p_1700->g_7, ((safe_lshift_func_uint8_t_u_u(0xB0L, 6)) ^ p_78))), p_1700->g_200))), p_1700->g_47.f1)), l_181)), GROUP_DIVERGE(0, 1)))), 65528UL))) | (-1L)))), l_201))) & l_165) & (-1L)) > p_76)) , l_202[3]) && 0x3599E847L), p_78)) || p_76)))));
                        if (p_76)
                            continue;
                    }
                    else
                    { /* block id: 50 */
                        uint16_t **l_207 = (void*)0;
                        uint16_t **l_208 = (void*)0;
                        uint16_t **l_209 = (void*)0;
                        int32_t l_215[6][5] = {{(-1L),(-1L),0x1BD89DFCL,(-1L),0x36C3EA14L},{(-1L),(-1L),0x1BD89DFCL,(-1L),0x36C3EA14L},{(-1L),(-1L),0x1BD89DFCL,(-1L),0x36C3EA14L},{(-1L),(-1L),0x1BD89DFCL,(-1L),0x36C3EA14L},{(-1L),(-1L),0x1BD89DFCL,(-1L),0x36C3EA14L},{(-1L),(-1L),0x1BD89DFCL,(-1L),0x36C3EA14L}};
                        uint64_t *l_216 = &p_1700->g_128;
                        int64_t *l_217 = (void*)0;
                        int64_t *l_218 = (void*)0;
                        int64_t *l_219[6][10] = {{&l_97,&l_97,&l_97,(void*)0,(void*)0,&l_97,(void*)0,&l_97,(void*)0,&l_97},{&l_97,&l_97,&l_97,(void*)0,(void*)0,&l_97,(void*)0,&l_97,(void*)0,&l_97},{&l_97,&l_97,&l_97,(void*)0,(void*)0,&l_97,(void*)0,&l_97,(void*)0,&l_97},{&l_97,&l_97,&l_97,(void*)0,(void*)0,&l_97,(void*)0,&l_97,(void*)0,&l_97},{&l_97,&l_97,&l_97,(void*)0,(void*)0,&l_97,(void*)0,&l_97,(void*)0,&l_97},{&l_97,&l_97,&l_97,(void*)0,(void*)0,&l_97,(void*)0,&l_97,(void*)0,&l_97}};
                        int32_t l_221 = 0x4EDE75B7L;
                        int i, j;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1700->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 14)), permutations[(safe_mod_func_uint32_t_u_u((((safe_mod_func_int8_t_s_s(((((*p_1700->g_109) || ((p_1700->g_210 = l_206) == ((((*l_159) = ((((safe_add_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s((((*l_206) &= (((GROUP_DIVERGE(2, 1) < 4294967287UL) , &p_1700->g_114) != (void*)0)) , ((p_78 < l_165) > l_215[1][1])), 11)) | ((p_77 = (((*l_216) = 0xA52D6D3DB75E829FL) && p_77)) && 2L)), p_76)) == FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10)) < 1L) , &p_1700->g_102[2][1][3])) == (void*)0) , l_220[0]))) | p_1700->g_87) , p_78), l_181)) , 0UL) >= l_221), 10))][(safe_mod_func_uint32_t_u_u(p_1700->tid, 14))]));
                        --l_224;
                    }
                    for (p_78 = 0; (p_78 <= 2); p_78 += 1)
                    { /* block id: 63 */
                        int i, j, k;
                        if (p_1700->g_102[(l_97 + 1)][p_78][(p_78 + 1)])
                            break;
                        l_230 |= (((((l_220[l_97] == ((*l_159) = &p_1700->g_102[3][2][0])) <= ((safe_unary_minus_func_int32_t_s(((p_76 < (l_165 &= (-3L))) , (((void*)0 == p_1700->g_166) >= (p_78 || (&p_1700->g_109 != l_228[2])))))) & 18446744073709551615UL)) > p_77) == l_229) , l_181);
                    }
                    l_203 &= (l_165 = (safe_sub_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(p_1700->g_7, 0x14L)) > (safe_div_func_uint8_t_u_u((p_1700->g_87 = (((safe_mod_func_uint64_t_u_u(((*p_1700->g_109) > (l_181 = (((p_1700->g_141 || p_1700->g_110) && p_1700->g_104) > (safe_add_func_int8_t_s_s(((((+((((((l_241 , &p_1700->g_210) == &l_206) , p_76) , l_242) == l_243) > p_77)) | l_230) && l_181) != p_78), 0L))))), 9L)) ^ p_1700->g_47.f2) , l_165)), p_1700->g_47.f2))), p_1700->g_comm_values[p_1700->tid])));
                    for (l_241 = 0; (l_241 <= 2); l_241 += 1)
                    { /* block id: 75 */
                        int i, j, k;
                        p_1700->g_244--;
                        l_181 = ((((safe_lshift_func_uint8_t_u_u((((safe_lshift_func_uint8_t_u_s((((safe_mul_func_uint8_t_u_u(p_1700->g_102[(l_241 + 6)][l_241][l_241], p_1700->g_244)) , 4L) == (((l_203 < p_1700->g_110) <= ((p_1700->g_74 |= ((p_1700->g_253 == ((((safe_lshift_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s((((FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10) & (0x4CE52002L && p_1700->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1700->tid, 14))])) , ((*p_1700->g_109) & p_78)) ^ l_258[0]), p_76)), 10)) >= 0L) == p_1700->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1700->tid, 14))]) , (void*)0)) != p_1700->g_104)) || p_77)) < (-2L))), l_224)) == p_78) ^ 0x85E572430E13A423L), p_1700->g_47.f1)) <= p_1700->g_102[(l_241 + 6)][l_241][l_241]) , &p_1700->g_128) != &l_258[0]);
                    }
                }
                else
                { /* block id: 80 */
                    int32_t **l_259 = &l_98[(l_97 + 2)][l_97];
                    struct S0 *l_315 = (void*)0;
                    (*l_259) = (void*)0;
                    for (p_1700->g_87 = 24; (p_1700->g_87 >= 16); p_1700->g_87--)
                    { /* block id: 84 */
                        uint8_t *l_281 = (void*)0;
                        uint8_t *l_282 = &p_1700->g_283;
                        int8_t *l_292 = &p_1700->g_293;
                        uint32_t l_294 = 4294967292UL;
                        int8_t *l_300 = (void*)0;
                        int8_t *l_301 = &p_1700->g_302;
                        int64_t *l_303 = &l_222[1];
                        struct S0 *l_313 = &p_1700->g_314;
                        l_223 ^= (p_1700->g_126 = (safe_lshift_func_uint16_t_u_s(8UL, (safe_add_func_int32_t_s_s((safe_lshift_func_int8_t_s_s(l_165, (((safe_mul_func_int8_t_s_s(((p_78 , ((*p_1700->g_253) , (safe_sub_func_int8_t_s_s(l_181, p_76)))) , (p_76 >= 0xD7B3L)), l_181)) <= 4294967288UL) , 0x1DL))), l_272)))));
                        p_1700->g_74 &= (safe_div_func_uint64_t_u_u(((l_275 , (((p_1700->g_47.f2 , ((!l_276) < (safe_add_func_uint64_t_u_u(((p_77 >= (l_165 < (FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10) < l_241))) < (((*l_282) = FAKE_DIVERGE(p_1700->group_0_offset, get_group_id(0), 10)) < (safe_rshift_func_int8_t_s_s((p_78 , (-10L)), (safe_rshift_func_int8_t_s_u(p_1700->g_comm_values[p_1700->tid], l_181)))))), p_77)))) >= p_1700->g_104) != 0xFB0DBA5AL)) == p_78), p_76));
                        p_1700->g_74 = (safe_add_func_uint64_t_u_u((((((l_165 = (safe_lshift_func_int8_t_s_u((p_1700->g_200 = ((~p_1700->g_47.f1) , p_77)), 3))) & ((*l_292) = 1L)) & l_294) , l_295[0]) == (void*)0), ((*l_303) |= (((safe_lshift_func_int8_t_s_s(((*l_301) = ((~(((safe_add_func_int8_t_s_s((~((((l_230 = (*p_1700->g_109)) >= ((p_76 > l_294) || p_77)) > p_76) || (*p_1700->g_253))), p_1700->g_47.f2)) <= p_1700->g_102[2][0][3]) , (-1L))) <= 0x68L)), p_1700->g_7)) || (*p_1700->g_253)) != GROUP_DIVERGE(1, 1)))));
                        p_1700->g_314.f2 ^= (((0x8ECFAE09L > p_76) <= (GROUP_DIVERGE(0, 1) && (p_1700->g_166 != (((*l_164) = (((((p_76 <= (safe_rshift_func_int8_t_s_u((p_1700->g_293 &= (safe_rshift_func_int16_t_s_u((safe_div_func_uint64_t_u_u(p_77, ((*l_303) &= (((((-1L) == ((((*p_1700->g_109) == l_312) | (l_230 != 1UL)) ^ 0L)) , 0x37L) != p_77) >= FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10))))), p_77))), p_1700->g_104))) || 1UL) == p_76) , l_313) != l_315)) , (void*)0)))) && (*p_1700->g_253));
                    }
                }
                for (l_241 = 0; (l_241 > 51); l_241 = safe_add_func_uint16_t_u_u(l_241, 2))
                { /* block id: 104 */
                    return l_318;
                }
                l_320 = l_295[0];
                if ((l_312 & (safe_lshift_func_uint8_t_u_u(0UL, 6))))
                { /* block id: 108 */
                    int32_t l_331 = 0x77D892B7L;
                    for (p_1700->g_141 = (-8); (p_1700->g_141 <= 2); p_1700->g_141++)
                    { /* block id: 111 */
                        l_165 = 0x4E804813L;
                        p_1700->g_126 ^= (((*p_1700->g_253) == 0x1C56E4C1123FF138L) | (*p_1700->g_253));
                    }
                    l_230 |= (safe_add_func_uint8_t_u_u(((((((*p_1700->g_109) ^= (p_76 != l_327[2])) && (l_328 == (((p_1700->g_166 == (((p_1700->g_47.f2 |= (safe_sub_func_int16_t_s_s(l_331, (((safe_sub_func_int16_t_s_s((p_1700->g_166 != (void*)0), ((*p_1700->g_109) = (((safe_mul_func_int8_t_s_s(p_77, (safe_add_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u(((*l_164) = p_76), 0xA0E877E8L)) , 0x5CA9L), l_165)))) < p_78) || 1L)))) || 9UL) , 0x02E0L)))) && p_77) , (void*)0)) , p_77) , l_135))) | (*p_1700->g_253)) >= 0L) , p_1700->g_114), (-1L)));
                }
                else
                { /* block id: 120 */
                    int16_t l_352 = 0x1B65L;
                    uint32_t *l_359 = &l_224;
                    int32_t l_366 = (-2L);
                    if ((((((3UL >= (((*l_328) = ((safe_div_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(((l_344 >= (safe_div_func_uint16_t_u_u(((p_1700->g_351 &= (safe_div_func_uint64_t_u_u(l_349, p_1700->g_350))) , ((((!l_352) | ((+((safe_mod_func_uint32_t_u_u((0x03AEL | ((((((safe_mul_func_int16_t_s_s(((65535UL || ((*p_1700->g_109) = ((safe_div_func_uint32_t_u_u(((++(*l_359)) , (p_1700->g_283 >= ((l_362 = (!(p_1700->g_comm_values[p_1700->tid] = (p_1700->g_114 , p_1700->g_104)))) , p_78))), p_1700->g_141)) ^ p_76))) , p_78), p_1700->g_351)) | p_1700->g_200) < (*p_1700->g_253)) , p_1700->g_46) != l_363) ^ p_1700->g_128)), p_1700->g_244)) ^ p_1700->g_319.f1)) , 0x76L)) || p_1700->g_104) ^ p_77)), l_365))) >= l_165), p_77)), p_1700->g_114)) != 0xD47BB2F7L)) <= p_76)) ^ p_76) & p_1700->g_7) , 1UL) , p_76))
                    { /* block id: 127 */
                        l_312 &= (p_77 >= 18446744073709551615UL);
                        l_366 = ((void*)0 != &p_1700->g_74);
                        return p_1700->g_46;
                    }
                    else
                    { /* block id: 131 */
                        uint16_t **l_369[9][3] = {{&l_220[0],&l_220[0],&l_220[0]},{&l_220[0],&l_220[0],&l_220[0]},{&l_220[0],&l_220[0],&l_220[0]},{&l_220[0],&l_220[0],&l_220[0]},{&l_220[0],&l_220[0],&l_220[0]},{&l_220[0],&l_220[0],&l_220[0]},{&l_220[0],&l_220[0],&l_220[0]},{&l_220[0],&l_220[0],&l_220[0]},{&l_220[0],&l_220[0],&l_220[0]}};
                        int i, j;
                        l_165 = (p_1700->g_364[2][0].f1 == ((((+(safe_sub_func_uint16_t_u_u((l_369[5][1] == l_369[5][2]), ((((safe_lshift_func_uint8_t_u_u(p_76, ((p_1700->g_364[2][0].f1 , (p_1700->g_293 , ((((safe_lshift_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(p_77, (safe_rshift_func_int8_t_s_u(0x1AL, GROUP_DIVERGE(1, 1))))), (safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((p_1700->g_104 > p_76), p_78)), p_1700->g_114)))), 4)), 10)) != p_1700->g_314.f2) , p_1700->g_350) | 4294967295UL))) == p_78))) , (-8L)) && p_1700->g_126) <= (*p_1700->g_109))))) > p_77) , (*p_1700->g_109)) , p_78));
                        return p_1700->g_46;
                    }
                }
            }
            for (p_1700->g_104 = 0; (p_1700->g_104 != 22); p_1700->g_104++)
            { /* block id: 139 */
                int64_t *l_390[9][4][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                int32_t l_401[7][9] = {{0x7A243822L,0x7A243822L,0L,0x795CEEF5L,(-1L),0x795CEEF5L,0L,0x7A243822L,0x7A243822L},{0x7A243822L,0x7A243822L,0L,0x795CEEF5L,(-1L),0x795CEEF5L,0L,0x7A243822L,0x7A243822L},{0x7A243822L,0x7A243822L,0L,0x795CEEF5L,(-1L),0x795CEEF5L,0L,0x7A243822L,0x7A243822L},{0x7A243822L,0x7A243822L,0L,0x795CEEF5L,(-1L),0x795CEEF5L,0L,0x7A243822L,0x7A243822L},{0x7A243822L,0x7A243822L,0L,0x795CEEF5L,(-1L),0x795CEEF5L,0L,0x7A243822L,0x7A243822L},{0x7A243822L,0x7A243822L,0L,0x795CEEF5L,(-1L),0x795CEEF5L,0L,0x7A243822L,0x7A243822L},{0x7A243822L,0x7A243822L,0L,0x795CEEF5L,(-1L),0x795CEEF5L,0L,0x7A243822L,0x7A243822L}};
                int32_t l_405 = 7L;
                uint32_t *l_418 = (void*)0;
                int i, j, k;
                if ((((p_77 >= (safe_mul_func_int8_t_s_s((!((p_1700->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1700->tid, 14))] = (8UL == p_78)) | (safe_add_func_uint64_t_u_u((safe_div_func_uint16_t_u_u(l_165, ((l_312 = ((safe_lshift_func_uint16_t_u_u(0x95B6L, 8)) | (safe_lshift_func_uint8_t_u_s((safe_div_func_uint32_t_u_u((~(p_1700->g_319.f1 > 255UL)), l_401[1][6])), 5)))) & (((safe_mod_func_uint16_t_u_u((((*l_163) = (l_404 > p_1700->g_314.f2)) || (*p_1700->g_109)), p_77)) , p_78) <= 18446744073709551608UL)))), l_405)))), l_401[1][6]))) > p_1700->g_87) ^ 1L))
                { /* block id: 143 */
                    int32_t *l_408 = (void*)0;
                    int64_t *l_421 = &p_1700->g_351;
                    for (l_229 = 0; (l_229 != 57); l_229 = safe_add_func_uint8_t_u_u(l_229, 3))
                    { /* block id: 146 */
                        int32_t *l_409 = &p_1700->g_126;
                        int32_t *l_410 = &l_230;
                        l_410 = (l_409 = l_408);
                        if (p_1700->g_114)
                            continue;
                    }
                    if ((safe_rshift_func_uint16_t_u_u((((safe_mod_func_int16_t_s_s((l_415 ^ (0x0C51F7F5B7E7C520L >= ((((safe_rshift_func_int16_t_s_s(((*p_1700->g_109) = (((void*)0 != p_1700->g_46) & 65535UL)), 15)) , l_418) == (void*)0) | ((safe_sub_func_int64_t_s_s((l_421 != &p_1700->g_351), (*p_1700->g_253))) >= (-6L))))), p_77)) <= (*p_1700->g_253)) > p_1700->g_87), p_76)))
                    { /* block id: 152 */
                        struct S0 *l_422 = (void*)0;
                        return l_422;
                    }
                    else
                    { /* block id: 154 */
                        int32_t *l_423[6][9][3] = {{{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]}},{{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]}},{{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]}},{{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]}},{{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]}},{{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]},{&l_401[1][6],&l_401[1][6],&l_401[1][6]}}};
                        int i, j, k;
                        l_423[5][7][1] = l_423[5][7][1];
                    }
                    for (l_230 = (-3); (l_230 < 26); l_230++)
                    { /* block id: 159 */
                        return p_1700->g_46;
                    }
                }
                else
                { /* block id: 162 */
                    int8_t l_426 = 2L;
                    l_426 = p_1700->g_351;
                    return l_427;
                }
                for (p_1700->g_244 = (-7); (p_1700->g_244 > 16); p_1700->g_244 = safe_add_func_uint8_t_u_u(p_1700->g_244, 8))
                { /* block id: 168 */
                    struct S0 **l_437[6][7][6] = {{{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363}},{{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363}},{{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363}},{{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363}},{{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363}},{{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363},{(void*)0,&l_363,&l_363,&l_363,(void*)0,&l_363}}};
                    int i, j, k;
                    for (l_275 = 17; (l_275 > 56); l_275++)
                    { /* block id: 171 */
                        uint32_t **l_434 = &l_164;
                        uint32_t ***l_433 = &l_434;
                        (*l_433) = (void*)0;
                        if (p_1700->g_302)
                            continue;
                        if (l_415)
                            continue;
                    }
                    p_1700->g_436[7] = (p_1700->g_435 = &p_1700->g_3);
                    l_427 = p_1700->g_46;
                }
            }
            l_438 = ((l_98[8][0] = l_98[2][5]) == (void*)0);
        }
        l_230 = ((safe_mod_func_uint32_t_u_u(((((l_312 = (p_1700->g_293 && (l_441 && p_78))) >= l_224) > ((*p_1700->g_109) = (!((l_445 = (void*)0) != (l_446 = &p_1700->g_87))))) <= (l_276 , ((((((&p_1700->g_3 != (void*)0) ^ 0x2B0CB3C9EB313F73L) , l_163) != (void*)0) && p_78) & l_229))), p_78)) , p_77);
        --l_456;
    }
    return p_1700->g_46;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[14];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 14; i++)
            l_comm_values[i] = 1;
    struct S4 c_1701;
    struct S4* p_1700 = &c_1701;
    struct S4 c_1702 = {
        (-9L), // p_1700->g_3
        0x0EA5F34BL, // p_1700->g_4
        {{0L,0x4CE34AAFL,0x0CD3BED1L,0x4CE34AAFL,0L,0L,0x4CE34AAFL,0x0CD3BED1L},{0L,0x4CE34AAFL,0x0CD3BED1L,0x4CE34AAFL,0L,0L,0x4CE34AAFL,0x0CD3BED1L},{0L,0x4CE34AAFL,0x0CD3BED1L,0x4CE34AAFL,0L,0L,0x4CE34AAFL,0x0CD3BED1L},{0L,0x4CE34AAFL,0x0CD3BED1L,0x4CE34AAFL,0L,0L,0x4CE34AAFL,0x0CD3BED1L},{0L,0x4CE34AAFL,0x0CD3BED1L,0x4CE34AAFL,0L,0L,0x4CE34AAFL,0x0CD3BED1L},{0L,0x4CE34AAFL,0x0CD3BED1L,0x4CE34AAFL,0L,0L,0x4CE34AAFL,0x0CD3BED1L}}, // p_1700->g_5
        (-1L), // p_1700->g_6
        1L, // p_1700->g_7
        {1UL,0x3FL,0x5229656DL}, // p_1700->g_47
        &p_1700->g_47, // p_1700->g_46
        (-2L), // p_1700->g_74
        0x44L, // p_1700->g_87
        {{{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL}},{{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL}},{{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL}},{{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL}},{{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL}},{{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL}},{{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL}},{{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL}},{{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL},{0x2522L,0x5E91L,0x4E23L,0x433CL}}}, // p_1700->g_102
        0L, // p_1700->g_104
        0L, // p_1700->g_110
        &p_1700->g_110, // p_1700->g_109
        0x25C1L, // p_1700->g_114
        0x20232F7DL, // p_1700->g_126
        0x47C64D1672963C60L, // p_1700->g_128
        0UL, // p_1700->g_141
        0UL, // p_1700->g_167
        &p_1700->g_167, // p_1700->g_166
        0x5CL, // p_1700->g_200
        (void*)0, // p_1700->g_210
        0xFD6401BEL, // p_1700->g_244
        &p_1700->g_128, // p_1700->g_253
        9UL, // p_1700->g_283
        1L, // p_1700->g_293
        (-1L), // p_1700->g_302
        {0x091F22C57D97B32BL,0x4BL,0x14B4027CL}, // p_1700->g_314
        {0x9CE54CF52BC6B43BL,0UL,2L}, // p_1700->g_319
        1UL, // p_1700->g_350
        (-1L), // p_1700->g_351
        {{{1UL,255UL,0x0C3DFA59L}},{{1UL,255UL,0x0C3DFA59L}},{{1UL,255UL,0x0C3DFA59L}}}, // p_1700->g_364
        {{{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}}},{{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}},{{0x57B5658F5F5F9B72L,0x6BL,1L},{0x6D6824F76FEFFC7CL,0xD0L,-1L},{0xB404D8F7091607ECL,255UL,-6L},{0x335D5B3C9D323855L,0xD6L,0x7BA22278L},{0xC66E6F554CB47455L,255UL,0x0F2B64C3L}}}}, // p_1700->g_428
        (void*)0, // p_1700->g_435
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1700->g_436
        (void*)0, // p_1700->g_478
        &p_1700->g_478, // p_1700->g_477
        &p_1700->g_436[7], // p_1700->g_517
        {18446744073709551608UL,251UL,1L}, // p_1700->g_565
        {18446744073709551615UL,246UL,0L}, // p_1700->g_582
        {0xD104C008D75C69FAL,0UL,0x3251003DL}, // p_1700->g_583
        {0xDAA91EB39B741556L,3UL,0x1AEA20EAL}, // p_1700->g_584
        {18446744073709551615UL,248UL,-3L}, // p_1700->g_585
        {0UL,1UL,-10L}, // p_1700->g_586
        {0xC9EEA783C53D2EEBL,5UL,0x5E7BEC93L}, // p_1700->g_587
        {18446744073709551615UL,9UL,1L}, // p_1700->g_588
        {0x70C239D752598ADEL,8UL,-1L}, // p_1700->g_589
        {0UL,2UL,0x2670759BL}, // p_1700->g_590
        {0x4EE7BF84B6CDD0E8L,0x24L,0L}, // p_1700->g_591
        {0UL,0UL,0x7A6EFCD1L}, // p_1700->g_592
        {{0x3B4F9D7CED7C152CL,0x0DL,0x3DE07377L},{0x3B4F9D7CED7C152CL,0x0DL,0x3DE07377L},{0x3B4F9D7CED7C152CL,0x0DL,0x3DE07377L},{0x3B4F9D7CED7C152CL,0x0DL,0x3DE07377L},{0x3B4F9D7CED7C152CL,0x0DL,0x3DE07377L}}, // p_1700->g_593
        {0x76FE26BA784F7A7DL,0xB5L,-1L}, // p_1700->g_594
        {{1UL,0UL,-1L},{0x631B330F2DBB5DA3L,0x73L,0x27CB83EDL},{1UL,0UL,-1L},{1UL,0UL,-1L},{0x631B330F2DBB5DA3L,0x73L,0x27CB83EDL},{1UL,0UL,-1L},{1UL,0UL,-1L}}, // p_1700->g_595
        {1UL,0L,18446744073709551612UL}, // p_1700->g_598
        {0x763FB99CD1EC6F33L,9L,0xA05C152BC62CAE25L}, // p_1700->g_601
        {0x63028C6CB6EBC35DL,-1L,18446744073709551607UL}, // p_1700->g_608
        {0x22C5E593262200B5L,0x374EL,0xFC0513405531B0E0L}, // p_1700->g_610
        {0xC6217B703E1B057DL,0L,1UL}, // p_1700->g_611
        {3UL,9L,1UL}, // p_1700->g_612
        {{{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL},{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL}},{{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL},{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL}},{{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL},{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL}},{{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL},{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL}},{{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL},{0x372E0BB6B368BD2CL,-8L,0x9BA37B83AAC5A53AL}}}, // p_1700->g_613
        {0xA5A9355386013C20L,0x0A50L,0x16D5CE88D1E18C96L}, // p_1700->g_614
        {0UL,18446744073709551615UL,0x464E4D43E3C85FC8L,0xE7EE0ABCL,{18446744073709551608UL,0x19L,0x3459C6DDL}}, // p_1700->g_617
        {18446744073709551615UL,1UL,2UL,3UL,{0xB92DC0EE59B634F5L,255UL,0x37C5C84EL}}, // p_1700->g_686
        {18446744073709551615UL,18446744073709551607UL,18446744073709551615UL,4294967287UL,{6UL,246UL,0L}}, // p_1700->g_688
        0x6B6C63AE76286A57L, // p_1700->g_700
        &p_1700->g_700, // p_1700->g_699
        {0x3FDC32D3200E10D5L,0x25F6L,4UL}, // p_1700->g_707
        &p_1700->g_707, // p_1700->g_706
        {0xD426C92D0103578CL,0x52L,0x2F968635L}, // p_1700->g_763
        &p_1700->g_763, // p_1700->g_762
        (void*)0, // p_1700->g_769
        {{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}},{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}},{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}},{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}},{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}},{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}},{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}},{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}},{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}},{{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1},{&p_1700->g_314.f1,&p_1700->g_592.f1,&p_1700->g_364[2][0].f1}}}, // p_1700->g_772
        {&p_1700->g_772[5][0][0],&p_1700->g_772[5][0][0],&p_1700->g_772[5][0][0],&p_1700->g_772[5][0][0],&p_1700->g_772[5][0][0],&p_1700->g_772[5][0][0],&p_1700->g_772[5][0][0]}, // p_1700->g_771
        &p_1700->g_771[6], // p_1700->g_773
        &p_1700->g_46, // p_1700->g_775
        &p_1700->g_613[1][0], // p_1700->g_778
        &p_1700->g_778, // p_1700->g_777
        {{&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210},{&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210,&p_1700->g_210}}, // p_1700->g_794
        {0xF87B02ADE5526D52L,0x0EDFL,0xF0CE402683C35F10L}, // p_1700->g_799
        &p_1700->g_585.f2, // p_1700->g_813
        (void*)0, // p_1700->g_821
        (void*)0, // p_1700->g_866
        &p_1700->g_688, // p_1700->g_867
        (void*)0, // p_1700->g_884
        {{{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}}},{{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}},{{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}},{0x02AD547C246F27C4L,0x7DC572BF42F071DFL,1UL,0UL,{0xBE33CC9168564F38L,0x72L,0x4172ADE3L}}}}}, // p_1700->g_900
        {0x5951B0C87A173BD8L,0xE6L,-5L}, // p_1700->g_904
        {0xC8B27FD8CD3B76A3L,2UL,7UL,0x378981CBL,{18446744073709551608UL,0x30L,1L}}, // p_1700->g_907
        &p_1700->g_46, // p_1700->g_919
        0x2AL, // p_1700->g_921
        {0L}, // p_1700->g_925
        {{{0x9084A81860FBA5CDL,248UL,0L}},{{0x9084A81860FBA5CDL,248UL,0L}},{{0x9084A81860FBA5CDL,248UL,0L}},{{0x9084A81860FBA5CDL,248UL,0L}}}, // p_1700->g_950
        0xC8C7L, // p_1700->g_1014
        {0x913918D7860C8C4FL,0x4DL,0L}, // p_1700->g_1025
        {{{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}}},{{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}}},{{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}}},{{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}}},{{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}}},{{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}},{{18446744073709551613UL,255UL,0L},{2UL,8UL,1L}}}}, // p_1700->g_1027
        {{1UL,0x7A26L,1UL},{1UL,0x7A26L,1UL},{1UL,0x7A26L,1UL},{1UL,0x7A26L,1UL},{1UL,0x7A26L,1UL},{1UL,0x7A26L,1UL},{1UL,0x7A26L,1UL}}, // p_1700->g_1031
        {0x92680111855628B4L,0L,0x3A57332B94799B0FL}, // p_1700->g_1076
        3L, // p_1700->g_1077
        &p_1700->g_364[2][0].f2, // p_1700->g_1079
        &p_1700->g_244, // p_1700->g_1124
        &p_1700->g_1124, // p_1700->g_1123
        &p_1700->g_1123, // p_1700->g_1122
        {0xC618E305F44C9121L,0x824A698E13F92C07L,0xCB57D308AA9A6A7EL,4294967291UL,{0UL,0x9FL,1L}}, // p_1700->g_1125
        {0x84ACB5AC4B060B88L,250UL,0x5DBBBC16L}, // p_1700->g_1157
        {0UL,0xEDF8FB24E49128EEL,0UL,4294967295UL,{0x8003F55915C26A79L,1UL,-1L}}, // p_1700->g_1169
        {0x0D617D4FEF6B975BL,0xC3BF5C6A071EFC43L,0x06D8C42BCD6A3D19L,0x42CA2ED0L,{0x1DD04508F79D6602L,0xEFL,0x42A541FDL}}, // p_1700->g_1170
        {{{&p_1700->g_593[4].f2,&p_1700->g_593[4].f2,&p_1700->g_587.f2,&p_1700->g_565.f2,&p_1700->g_1027[4][3][1].f2,&p_1700->g_7},{&p_1700->g_593[4].f2,&p_1700->g_593[4].f2,&p_1700->g_587.f2,&p_1700->g_565.f2,&p_1700->g_1027[4][3][1].f2,&p_1700->g_7},{&p_1700->g_593[4].f2,&p_1700->g_593[4].f2,&p_1700->g_587.f2,&p_1700->g_565.f2,&p_1700->g_1027[4][3][1].f2,&p_1700->g_7},{&p_1700->g_593[4].f2,&p_1700->g_593[4].f2,&p_1700->g_587.f2,&p_1700->g_565.f2,&p_1700->g_1027[4][3][1].f2,&p_1700->g_7}},{{&p_1700->g_593[4].f2,&p_1700->g_593[4].f2,&p_1700->g_587.f2,&p_1700->g_565.f2,&p_1700->g_1027[4][3][1].f2,&p_1700->g_7},{&p_1700->g_593[4].f2,&p_1700->g_593[4].f2,&p_1700->g_587.f2,&p_1700->g_565.f2,&p_1700->g_1027[4][3][1].f2,&p_1700->g_7},{&p_1700->g_593[4].f2,&p_1700->g_593[4].f2,&p_1700->g_587.f2,&p_1700->g_565.f2,&p_1700->g_1027[4][3][1].f2,&p_1700->g_7},{&p_1700->g_593[4].f2,&p_1700->g_593[4].f2,&p_1700->g_587.f2,&p_1700->g_565.f2,&p_1700->g_1027[4][3][1].f2,&p_1700->g_7}}}, // p_1700->g_1177
        &p_1700->g_589.f2, // p_1700->g_1178
        &p_1700->g_1170.f1, // p_1700->g_1231
        0x71FAB71D3B0B220FL, // p_1700->g_1319
        {0x4C99F092EF103F1FL,18446744073709551614UL,18446744073709551611UL,0x492A743FL,{1UL,0x9CL,-1L}}, // p_1700->g_1328
        {0UL,0xFCL,0x00718007L}, // p_1700->g_1329
        0x07L, // p_1700->g_1372
        {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)}, // p_1700->g_1416
        &p_1700->g_1416[6], // p_1700->g_1415
        &p_1700->g_1415, // p_1700->g_1414
        &p_1700->g_821, // p_1700->g_1439
        &p_1700->g_1439, // p_1700->g_1438
        {18446744073709551608UL,0x76L,1L}, // p_1700->g_1443
        &p_1700->g_126, // p_1700->g_1457
        0x32483BFB8BDDA5DEL, // p_1700->g_1482
        (void*)0, // p_1700->g_1488
        &p_1700->g_46, // p_1700->g_1489
        {0xD091A4A4BA610956L,0x68D933A428D77074L,0x996D77E38CBE975BL,0x3662569BL,{0x228183BE23DCC225L,8UL,-10L}}, // p_1700->g_1493
        &p_1700->g_688, // p_1700->g_1494
        {0x4FAE2ACAF02EC67DL,0x335B4D095E702147L,0x63DD65E300482697L,4294967293UL,{0xE69A9EA13FDAC1AAL,0x37L,0x1979C0E8L}}, // p_1700->g_1510
        (void*)0, // p_1700->g_1511
        &p_1700->g_1510, // p_1700->g_1512
        (void*)0, // p_1700->g_1569
        {{18446744073709551608UL,1UL,1L}}, // p_1700->g_1576
        {0x253446ECC6F81226L,0x2CDBL,0xA14C627982C081BFL}, // p_1700->g_1589
        (void*)0, // p_1700->g_1622
        &p_1700->g_1622, // p_1700->g_1621
        &p_1700->g_1027[4][3][1].f2, // p_1700->g_1640
        {18446744073709551613UL,18446744073709551607UL,0x7A578EAB995658D2L,4294967295UL,{0xCFE882EB63A78C07L,0x69L,-2L}}, // p_1700->g_1646
        &p_1700->g_617.f4.f2, // p_1700->g_1647
        0L, // p_1700->g_1649
        (void*)0, // p_1700->g_1673
        {0xBF717464L,0xBF717464L,0xBF717464L,0xBF717464L,0xBF717464L,0xBF717464L,0xBF717464L}, // p_1700->g_1695
        sequence_input[get_global_id(0)], // p_1700->global_0_offset
        sequence_input[get_global_id(1)], // p_1700->global_1_offset
        sequence_input[get_global_id(2)], // p_1700->global_2_offset
        sequence_input[get_local_id(0)], // p_1700->local_0_offset
        sequence_input[get_local_id(1)], // p_1700->local_1_offset
        sequence_input[get_local_id(2)], // p_1700->local_2_offset
        sequence_input[get_group_id(0)], // p_1700->group_0_offset
        sequence_input[get_group_id(1)], // p_1700->group_1_offset
        sequence_input[get_group_id(2)], // p_1700->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 14)), permutations[0][get_linear_local_id()])), // p_1700->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1701 = c_1702;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1700);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1700->g_3, "p_1700->g_3", print_hash_value);
    transparent_crc(p_1700->g_4, "p_1700->g_4", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1700->g_5[i][j], "p_1700->g_5[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1700->g_6, "p_1700->g_6", print_hash_value);
    transparent_crc(p_1700->g_7, "p_1700->g_7", print_hash_value);
    transparent_crc(p_1700->g_47.f0, "p_1700->g_47.f0", print_hash_value);
    transparent_crc(p_1700->g_47.f1, "p_1700->g_47.f1", print_hash_value);
    transparent_crc(p_1700->g_47.f2, "p_1700->g_47.f2", print_hash_value);
    transparent_crc(p_1700->g_74, "p_1700->g_74", print_hash_value);
    transparent_crc(p_1700->g_87, "p_1700->g_87", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1700->g_102[i][j][k], "p_1700->g_102[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1700->g_104, "p_1700->g_104", print_hash_value);
    transparent_crc(p_1700->g_110, "p_1700->g_110", print_hash_value);
    transparent_crc(p_1700->g_114, "p_1700->g_114", print_hash_value);
    transparent_crc(p_1700->g_126, "p_1700->g_126", print_hash_value);
    transparent_crc(p_1700->g_128, "p_1700->g_128", print_hash_value);
    transparent_crc(p_1700->g_141, "p_1700->g_141", print_hash_value);
    transparent_crc(p_1700->g_167, "p_1700->g_167", print_hash_value);
    transparent_crc(p_1700->g_200, "p_1700->g_200", print_hash_value);
    transparent_crc(p_1700->g_244, "p_1700->g_244", print_hash_value);
    transparent_crc(p_1700->g_283, "p_1700->g_283", print_hash_value);
    transparent_crc(p_1700->g_293, "p_1700->g_293", print_hash_value);
    transparent_crc(p_1700->g_302, "p_1700->g_302", print_hash_value);
    transparent_crc(p_1700->g_314.f0, "p_1700->g_314.f0", print_hash_value);
    transparent_crc(p_1700->g_314.f1, "p_1700->g_314.f1", print_hash_value);
    transparent_crc(p_1700->g_314.f2, "p_1700->g_314.f2", print_hash_value);
    transparent_crc(p_1700->g_319.f0, "p_1700->g_319.f0", print_hash_value);
    transparent_crc(p_1700->g_319.f1, "p_1700->g_319.f1", print_hash_value);
    transparent_crc(p_1700->g_319.f2, "p_1700->g_319.f2", print_hash_value);
    transparent_crc(p_1700->g_350, "p_1700->g_350", print_hash_value);
    transparent_crc(p_1700->g_351, "p_1700->g_351", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1700->g_364[i][j].f0, "p_1700->g_364[i][j].f0", print_hash_value);
            transparent_crc(p_1700->g_364[i][j].f1, "p_1700->g_364[i][j].f1", print_hash_value);
            transparent_crc(p_1700->g_364[i][j].f2, "p_1700->g_364[i][j].f2", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1700->g_428[i][j][k].f0, "p_1700->g_428[i][j][k].f0", print_hash_value);
                transparent_crc(p_1700->g_428[i][j][k].f1, "p_1700->g_428[i][j][k].f1", print_hash_value);
                transparent_crc(p_1700->g_428[i][j][k].f2, "p_1700->g_428[i][j][k].f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_1700->g_565.f0, "p_1700->g_565.f0", print_hash_value);
    transparent_crc(p_1700->g_565.f1, "p_1700->g_565.f1", print_hash_value);
    transparent_crc(p_1700->g_565.f2, "p_1700->g_565.f2", print_hash_value);
    transparent_crc(p_1700->g_582.f0, "p_1700->g_582.f0", print_hash_value);
    transparent_crc(p_1700->g_582.f1, "p_1700->g_582.f1", print_hash_value);
    transparent_crc(p_1700->g_582.f2, "p_1700->g_582.f2", print_hash_value);
    transparent_crc(p_1700->g_583.f0, "p_1700->g_583.f0", print_hash_value);
    transparent_crc(p_1700->g_583.f1, "p_1700->g_583.f1", print_hash_value);
    transparent_crc(p_1700->g_583.f2, "p_1700->g_583.f2", print_hash_value);
    transparent_crc(p_1700->g_584.f0, "p_1700->g_584.f0", print_hash_value);
    transparent_crc(p_1700->g_584.f1, "p_1700->g_584.f1", print_hash_value);
    transparent_crc(p_1700->g_584.f2, "p_1700->g_584.f2", print_hash_value);
    transparent_crc(p_1700->g_585.f0, "p_1700->g_585.f0", print_hash_value);
    transparent_crc(p_1700->g_585.f1, "p_1700->g_585.f1", print_hash_value);
    transparent_crc(p_1700->g_585.f2, "p_1700->g_585.f2", print_hash_value);
    transparent_crc(p_1700->g_586.f0, "p_1700->g_586.f0", print_hash_value);
    transparent_crc(p_1700->g_586.f1, "p_1700->g_586.f1", print_hash_value);
    transparent_crc(p_1700->g_586.f2, "p_1700->g_586.f2", print_hash_value);
    transparent_crc(p_1700->g_587.f0, "p_1700->g_587.f0", print_hash_value);
    transparent_crc(p_1700->g_587.f1, "p_1700->g_587.f1", print_hash_value);
    transparent_crc(p_1700->g_587.f2, "p_1700->g_587.f2", print_hash_value);
    transparent_crc(p_1700->g_588.f0, "p_1700->g_588.f0", print_hash_value);
    transparent_crc(p_1700->g_588.f1, "p_1700->g_588.f1", print_hash_value);
    transparent_crc(p_1700->g_588.f2, "p_1700->g_588.f2", print_hash_value);
    transparent_crc(p_1700->g_589.f0, "p_1700->g_589.f0", print_hash_value);
    transparent_crc(p_1700->g_589.f1, "p_1700->g_589.f1", print_hash_value);
    transparent_crc(p_1700->g_589.f2, "p_1700->g_589.f2", print_hash_value);
    transparent_crc(p_1700->g_590.f0, "p_1700->g_590.f0", print_hash_value);
    transparent_crc(p_1700->g_590.f1, "p_1700->g_590.f1", print_hash_value);
    transparent_crc(p_1700->g_590.f2, "p_1700->g_590.f2", print_hash_value);
    transparent_crc(p_1700->g_591.f0, "p_1700->g_591.f0", print_hash_value);
    transparent_crc(p_1700->g_591.f1, "p_1700->g_591.f1", print_hash_value);
    transparent_crc(p_1700->g_591.f2, "p_1700->g_591.f2", print_hash_value);
    transparent_crc(p_1700->g_592.f0, "p_1700->g_592.f0", print_hash_value);
    transparent_crc(p_1700->g_592.f1, "p_1700->g_592.f1", print_hash_value);
    transparent_crc(p_1700->g_592.f2, "p_1700->g_592.f2", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1700->g_593[i].f0, "p_1700->g_593[i].f0", print_hash_value);
        transparent_crc(p_1700->g_593[i].f1, "p_1700->g_593[i].f1", print_hash_value);
        transparent_crc(p_1700->g_593[i].f2, "p_1700->g_593[i].f2", print_hash_value);

    }
    transparent_crc(p_1700->g_594.f0, "p_1700->g_594.f0", print_hash_value);
    transparent_crc(p_1700->g_594.f1, "p_1700->g_594.f1", print_hash_value);
    transparent_crc(p_1700->g_594.f2, "p_1700->g_594.f2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1700->g_595[i].f0, "p_1700->g_595[i].f0", print_hash_value);
        transparent_crc(p_1700->g_595[i].f1, "p_1700->g_595[i].f1", print_hash_value);
        transparent_crc(p_1700->g_595[i].f2, "p_1700->g_595[i].f2", print_hash_value);

    }
    transparent_crc(p_1700->g_598.f0, "p_1700->g_598.f0", print_hash_value);
    transparent_crc(p_1700->g_598.f1, "p_1700->g_598.f1", print_hash_value);
    transparent_crc(p_1700->g_598.f2, "p_1700->g_598.f2", print_hash_value);
    transparent_crc(p_1700->g_601.f0, "p_1700->g_601.f0", print_hash_value);
    transparent_crc(p_1700->g_601.f1, "p_1700->g_601.f1", print_hash_value);
    transparent_crc(p_1700->g_601.f2, "p_1700->g_601.f2", print_hash_value);
    transparent_crc(p_1700->g_608.f0, "p_1700->g_608.f0", print_hash_value);
    transparent_crc(p_1700->g_608.f1, "p_1700->g_608.f1", print_hash_value);
    transparent_crc(p_1700->g_608.f2, "p_1700->g_608.f2", print_hash_value);
    transparent_crc(p_1700->g_610.f0, "p_1700->g_610.f0", print_hash_value);
    transparent_crc(p_1700->g_610.f1, "p_1700->g_610.f1", print_hash_value);
    transparent_crc(p_1700->g_610.f2, "p_1700->g_610.f2", print_hash_value);
    transparent_crc(p_1700->g_611.f0, "p_1700->g_611.f0", print_hash_value);
    transparent_crc(p_1700->g_611.f1, "p_1700->g_611.f1", print_hash_value);
    transparent_crc(p_1700->g_611.f2, "p_1700->g_611.f2", print_hash_value);
    transparent_crc(p_1700->g_612.f0, "p_1700->g_612.f0", print_hash_value);
    transparent_crc(p_1700->g_612.f1, "p_1700->g_612.f1", print_hash_value);
    transparent_crc(p_1700->g_612.f2, "p_1700->g_612.f2", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1700->g_613[i][j].f0, "p_1700->g_613[i][j].f0", print_hash_value);
            transparent_crc(p_1700->g_613[i][j].f1, "p_1700->g_613[i][j].f1", print_hash_value);
            transparent_crc(p_1700->g_613[i][j].f2, "p_1700->g_613[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_1700->g_614.f0, "p_1700->g_614.f0", print_hash_value);
    transparent_crc(p_1700->g_614.f1, "p_1700->g_614.f1", print_hash_value);
    transparent_crc(p_1700->g_614.f2, "p_1700->g_614.f2", print_hash_value);
    transparent_crc(p_1700->g_617.f0, "p_1700->g_617.f0", print_hash_value);
    transparent_crc(p_1700->g_617.f1, "p_1700->g_617.f1", print_hash_value);
    transparent_crc(p_1700->g_617.f2, "p_1700->g_617.f2", print_hash_value);
    transparent_crc(p_1700->g_617.f3, "p_1700->g_617.f3", print_hash_value);
    transparent_crc(p_1700->g_617.f4.f0, "p_1700->g_617.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_617.f4.f1, "p_1700->g_617.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_617.f4.f2, "p_1700->g_617.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_686.f0, "p_1700->g_686.f0", print_hash_value);
    transparent_crc(p_1700->g_686.f1, "p_1700->g_686.f1", print_hash_value);
    transparent_crc(p_1700->g_686.f2, "p_1700->g_686.f2", print_hash_value);
    transparent_crc(p_1700->g_686.f3, "p_1700->g_686.f3", print_hash_value);
    transparent_crc(p_1700->g_686.f4.f0, "p_1700->g_686.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_686.f4.f1, "p_1700->g_686.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_686.f4.f2, "p_1700->g_686.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_688.f0, "p_1700->g_688.f0", print_hash_value);
    transparent_crc(p_1700->g_688.f1, "p_1700->g_688.f1", print_hash_value);
    transparent_crc(p_1700->g_688.f2, "p_1700->g_688.f2", print_hash_value);
    transparent_crc(p_1700->g_688.f3, "p_1700->g_688.f3", print_hash_value);
    transparent_crc(p_1700->g_688.f4.f0, "p_1700->g_688.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_688.f4.f1, "p_1700->g_688.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_688.f4.f2, "p_1700->g_688.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_700, "p_1700->g_700", print_hash_value);
    transparent_crc(p_1700->g_707.f0, "p_1700->g_707.f0", print_hash_value);
    transparent_crc(p_1700->g_707.f1, "p_1700->g_707.f1", print_hash_value);
    transparent_crc(p_1700->g_707.f2, "p_1700->g_707.f2", print_hash_value);
    transparent_crc(p_1700->g_763.f0, "p_1700->g_763.f0", print_hash_value);
    transparent_crc(p_1700->g_763.f1, "p_1700->g_763.f1", print_hash_value);
    transparent_crc(p_1700->g_763.f2, "p_1700->g_763.f2", print_hash_value);
    transparent_crc(p_1700->g_799.f0, "p_1700->g_799.f0", print_hash_value);
    transparent_crc(p_1700->g_799.f1, "p_1700->g_799.f1", print_hash_value);
    transparent_crc(p_1700->g_799.f2, "p_1700->g_799.f2", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1700->g_900[i][j][k].f0, "p_1700->g_900[i][j][k].f0", print_hash_value);
                transparent_crc(p_1700->g_900[i][j][k].f1, "p_1700->g_900[i][j][k].f1", print_hash_value);
                transparent_crc(p_1700->g_900[i][j][k].f2, "p_1700->g_900[i][j][k].f2", print_hash_value);
                transparent_crc(p_1700->g_900[i][j][k].f3, "p_1700->g_900[i][j][k].f3", print_hash_value);
                transparent_crc(p_1700->g_900[i][j][k].f4.f0, "p_1700->g_900[i][j][k].f4.f0", print_hash_value);
                transparent_crc(p_1700->g_900[i][j][k].f4.f1, "p_1700->g_900[i][j][k].f4.f1", print_hash_value);
                transparent_crc(p_1700->g_900[i][j][k].f4.f2, "p_1700->g_900[i][j][k].f4.f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_1700->g_904.f0, "p_1700->g_904.f0", print_hash_value);
    transparent_crc(p_1700->g_904.f1, "p_1700->g_904.f1", print_hash_value);
    transparent_crc(p_1700->g_904.f2, "p_1700->g_904.f2", print_hash_value);
    transparent_crc(p_1700->g_907.f0, "p_1700->g_907.f0", print_hash_value);
    transparent_crc(p_1700->g_907.f1, "p_1700->g_907.f1", print_hash_value);
    transparent_crc(p_1700->g_907.f2, "p_1700->g_907.f2", print_hash_value);
    transparent_crc(p_1700->g_907.f3, "p_1700->g_907.f3", print_hash_value);
    transparent_crc(p_1700->g_907.f4.f0, "p_1700->g_907.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_907.f4.f1, "p_1700->g_907.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_907.f4.f2, "p_1700->g_907.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_921, "p_1700->g_921", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1700->g_925[i], "p_1700->g_925[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1700->g_950[i].f0.f0, "p_1700->g_950[i].f0.f0", print_hash_value);
        transparent_crc(p_1700->g_950[i].f0.f1, "p_1700->g_950[i].f0.f1", print_hash_value);
        transparent_crc(p_1700->g_950[i].f0.f2, "p_1700->g_950[i].f0.f2", print_hash_value);

    }
    transparent_crc(p_1700->g_1014, "p_1700->g_1014", print_hash_value);
    transparent_crc(p_1700->g_1025.f0, "p_1700->g_1025.f0", print_hash_value);
    transparent_crc(p_1700->g_1025.f1, "p_1700->g_1025.f1", print_hash_value);
    transparent_crc(p_1700->g_1025.f2, "p_1700->g_1025.f2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1700->g_1027[i][j][k].f0, "p_1700->g_1027[i][j][k].f0", print_hash_value);
                transparent_crc(p_1700->g_1027[i][j][k].f1, "p_1700->g_1027[i][j][k].f1", print_hash_value);
                transparent_crc(p_1700->g_1027[i][j][k].f2, "p_1700->g_1027[i][j][k].f2", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1700->g_1031[i].f0, "p_1700->g_1031[i].f0", print_hash_value);
        transparent_crc(p_1700->g_1031[i].f1, "p_1700->g_1031[i].f1", print_hash_value);
        transparent_crc(p_1700->g_1031[i].f2, "p_1700->g_1031[i].f2", print_hash_value);

    }
    transparent_crc(p_1700->g_1076.f0, "p_1700->g_1076.f0", print_hash_value);
    transparent_crc(p_1700->g_1076.f1, "p_1700->g_1076.f1", print_hash_value);
    transparent_crc(p_1700->g_1076.f2, "p_1700->g_1076.f2", print_hash_value);
    transparent_crc(p_1700->g_1077, "p_1700->g_1077", print_hash_value);
    transparent_crc(p_1700->g_1125.f0, "p_1700->g_1125.f0", print_hash_value);
    transparent_crc(p_1700->g_1125.f1, "p_1700->g_1125.f1", print_hash_value);
    transparent_crc(p_1700->g_1125.f2, "p_1700->g_1125.f2", print_hash_value);
    transparent_crc(p_1700->g_1125.f3, "p_1700->g_1125.f3", print_hash_value);
    transparent_crc(p_1700->g_1125.f4.f0, "p_1700->g_1125.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_1125.f4.f1, "p_1700->g_1125.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_1125.f4.f2, "p_1700->g_1125.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_1157.f0, "p_1700->g_1157.f0", print_hash_value);
    transparent_crc(p_1700->g_1157.f1, "p_1700->g_1157.f1", print_hash_value);
    transparent_crc(p_1700->g_1157.f2, "p_1700->g_1157.f2", print_hash_value);
    transparent_crc(p_1700->g_1169.f0, "p_1700->g_1169.f0", print_hash_value);
    transparent_crc(p_1700->g_1169.f1, "p_1700->g_1169.f1", print_hash_value);
    transparent_crc(p_1700->g_1169.f2, "p_1700->g_1169.f2", print_hash_value);
    transparent_crc(p_1700->g_1169.f3, "p_1700->g_1169.f3", print_hash_value);
    transparent_crc(p_1700->g_1169.f4.f0, "p_1700->g_1169.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_1169.f4.f1, "p_1700->g_1169.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_1169.f4.f2, "p_1700->g_1169.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_1170.f0, "p_1700->g_1170.f0", print_hash_value);
    transparent_crc(p_1700->g_1170.f1, "p_1700->g_1170.f1", print_hash_value);
    transparent_crc(p_1700->g_1170.f2, "p_1700->g_1170.f2", print_hash_value);
    transparent_crc(p_1700->g_1170.f3, "p_1700->g_1170.f3", print_hash_value);
    transparent_crc(p_1700->g_1170.f4.f0, "p_1700->g_1170.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_1170.f4.f1, "p_1700->g_1170.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_1170.f4.f2, "p_1700->g_1170.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_1319, "p_1700->g_1319", print_hash_value);
    transparent_crc(p_1700->g_1328.f0, "p_1700->g_1328.f0", print_hash_value);
    transparent_crc(p_1700->g_1328.f1, "p_1700->g_1328.f1", print_hash_value);
    transparent_crc(p_1700->g_1328.f2, "p_1700->g_1328.f2", print_hash_value);
    transparent_crc(p_1700->g_1328.f3, "p_1700->g_1328.f3", print_hash_value);
    transparent_crc(p_1700->g_1328.f4.f0, "p_1700->g_1328.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_1328.f4.f1, "p_1700->g_1328.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_1328.f4.f2, "p_1700->g_1328.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_1329.f0, "p_1700->g_1329.f0", print_hash_value);
    transparent_crc(p_1700->g_1329.f1, "p_1700->g_1329.f1", print_hash_value);
    transparent_crc(p_1700->g_1329.f2, "p_1700->g_1329.f2", print_hash_value);
    transparent_crc(p_1700->g_1372, "p_1700->g_1372", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1700->g_1416[i], "p_1700->g_1416[i]", print_hash_value);

    }
    transparent_crc(p_1700->g_1443.f0, "p_1700->g_1443.f0", print_hash_value);
    transparent_crc(p_1700->g_1443.f1, "p_1700->g_1443.f1", print_hash_value);
    transparent_crc(p_1700->g_1443.f2, "p_1700->g_1443.f2", print_hash_value);
    transparent_crc(p_1700->g_1482, "p_1700->g_1482", print_hash_value);
    transparent_crc(p_1700->g_1493.f0, "p_1700->g_1493.f0", print_hash_value);
    transparent_crc(p_1700->g_1493.f1, "p_1700->g_1493.f1", print_hash_value);
    transparent_crc(p_1700->g_1493.f2, "p_1700->g_1493.f2", print_hash_value);
    transparent_crc(p_1700->g_1493.f3, "p_1700->g_1493.f3", print_hash_value);
    transparent_crc(p_1700->g_1493.f4.f0, "p_1700->g_1493.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_1493.f4.f1, "p_1700->g_1493.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_1493.f4.f2, "p_1700->g_1493.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_1510.f0, "p_1700->g_1510.f0", print_hash_value);
    transparent_crc(p_1700->g_1510.f1, "p_1700->g_1510.f1", print_hash_value);
    transparent_crc(p_1700->g_1510.f2, "p_1700->g_1510.f2", print_hash_value);
    transparent_crc(p_1700->g_1510.f3, "p_1700->g_1510.f3", print_hash_value);
    transparent_crc(p_1700->g_1510.f4.f0, "p_1700->g_1510.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_1510.f4.f1, "p_1700->g_1510.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_1510.f4.f2, "p_1700->g_1510.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_1576.f0.f0, "p_1700->g_1576.f0.f0", print_hash_value);
    transparent_crc(p_1700->g_1576.f0.f1, "p_1700->g_1576.f0.f1", print_hash_value);
    transparent_crc(p_1700->g_1576.f0.f2, "p_1700->g_1576.f0.f2", print_hash_value);
    transparent_crc(p_1700->g_1589.f0, "p_1700->g_1589.f0", print_hash_value);
    transparent_crc(p_1700->g_1589.f1, "p_1700->g_1589.f1", print_hash_value);
    transparent_crc(p_1700->g_1589.f2, "p_1700->g_1589.f2", print_hash_value);
    transparent_crc(p_1700->g_1646.f0, "p_1700->g_1646.f0", print_hash_value);
    transparent_crc(p_1700->g_1646.f1, "p_1700->g_1646.f1", print_hash_value);
    transparent_crc(p_1700->g_1646.f2, "p_1700->g_1646.f2", print_hash_value);
    transparent_crc(p_1700->g_1646.f3, "p_1700->g_1646.f3", print_hash_value);
    transparent_crc(p_1700->g_1646.f4.f0, "p_1700->g_1646.f4.f0", print_hash_value);
    transparent_crc(p_1700->g_1646.f4.f1, "p_1700->g_1646.f4.f1", print_hash_value);
    transparent_crc(p_1700->g_1646.f4.f2, "p_1700->g_1646.f4.f2", print_hash_value);
    transparent_crc(p_1700->g_1649, "p_1700->g_1649", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1700->g_1695[i], "p_1700->g_1695[i]", print_hash_value);

    }
    transparent_crc(p_1700->l_comm_values[get_linear_local_id()], "p_1700->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1700->g_comm_values[get_linear_group_id() * 14 + get_linear_local_id()], "p_1700->g_comm_values[get_linear_group_id() * 14 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
