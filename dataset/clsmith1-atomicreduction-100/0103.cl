// ---atomic_reductions ---fake_divergence -g 48,89,1 -l 3,1,1
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


// Seed: 103

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    int32_t g_3[6][7];
    int32_t g_6;
    int32_t g_43;
    int16_t g_48[10];
    int8_t g_49;
    int64_t g_50;
    uint32_t g_51;
    int32_t g_58;
    uint64_t g_59;
    int8_t g_87[7][10];
    int32_t *g_98;
    int32_t **g_97;
    uint8_t g_116[7];
    uint8_t g_131;
    uint16_t g_153[9][5];
    uint8_t g_188[3][2];
    int16_t g_218[4];
    uint32_t g_219;
    int64_t * volatile *g_259;
    uint32_t g_269;
    uint32_t g_307;
    uint16_t g_319;
    uint8_t g_353;
    uint32_t g_396[6];
    volatile uint8_t *g_457;
    volatile uint8_t * volatile *g_456;
    int64_t *g_467;
    int64_t **g_466;
    uint64_t g_487[4];
    volatile uint16_t * volatile *g_503;
    uint32_t **g_519;
    int32_t g_521;
    uint64_t *g_551;
    int8_t g_571;
    uint32_t g_573;
    uint64_t g_583;
    int32_t *g_587;
    int32_t g_623;
    int32_t g_625;
    uint16_t g_626;
    int16_t g_635[2][8];
    uint8_t *g_658;
    uint8_t **g_657;
    uint8_t ***g_656;
    int8_t *g_688[8];
    int8_t **g_687;
    int8_t g_704[8][2][6];
    uint64_t g_841[9][4];
    uint64_t g_843;
    int32_t g_872;
    int16_t g_879;
    uint32_t g_881;
    uint64_t **g_910;
    int64_t g_935;
    uint16_t *g_967;
    uint16_t **g_966[5][2];
    int8_t g_993;
    int8_t g_995[6][4][2];
    int8_t g_997;
    int32_t g_1002;
    uint32_t g_1004;
    int8_t g_1014;
    int32_t g_1015;
    uint8_t g_1016;
    uint32_t g_1031;
    int64_t ***g_1046;
    int64_t g_1064;
    int16_t g_1083;
    int8_t g_1088;
    int32_t g_1090;
    int8_t g_1091;
    uint32_t g_1093;
    volatile uint32_t g_1190;
    volatile uint32_t g_1191[1][2][4];
    volatile uint32_t g_1192;
    volatile uint32_t g_1193;
    volatile uint32_t g_1194[4];
    volatile uint32_t g_1195;
    volatile uint32_t g_1196;
    volatile uint32_t g_1197[7];
    volatile uint32_t g_1198[7][7];
    volatile uint32_t g_1199;
    volatile uint32_t g_1200[1][2];
    volatile uint32_t g_1201;
    volatile uint32_t g_1202;
    volatile uint32_t g_1203[9];
    volatile uint32_t g_1204;
    volatile uint32_t g_1205;
    volatile uint32_t g_1206;
    volatile uint32_t g_1207;
    volatile uint32_t g_1208;
    volatile uint32_t g_1209;
    volatile uint32_t g_1210;
    volatile uint32_t g_1211;
    volatile uint32_t g_1212;
    volatile uint32_t g_1213;
    volatile uint32_t g_1214;
    volatile uint32_t g_1215;
    volatile uint32_t g_1216;
    volatile uint32_t g_1217;
    volatile uint32_t g_1218;
    volatile uint32_t g_1219;
    volatile uint32_t g_1220;
    volatile uint32_t g_1221;
    volatile uint32_t g_1222;
    volatile uint32_t g_1223;
    volatile uint32_t g_1224;
    volatile uint32_t g_1225;
    volatile uint32_t g_1226;
    volatile uint32_t g_1227;
    volatile uint32_t g_1228[1][4];
    volatile uint32_t g_1229;
    volatile uint32_t g_1230;
    volatile uint32_t g_1231;
    volatile uint32_t g_1232;
    volatile uint32_t g_1233;
    volatile uint32_t g_1234;
    volatile uint32_t g_1235;
    volatile uint32_t g_1236;
    volatile uint32_t g_1237;
    volatile uint32_t g_1238[3][4];
    volatile uint32_t g_1239;
    volatile uint32_t g_1240[10];
    volatile uint32_t g_1241;
    volatile uint32_t g_1242[6][4];
    volatile uint32_t g_1243;
    volatile uint32_t g_1244;
    volatile uint32_t *g_1189[7][4][6];
    volatile uint32_t ** volatile g_1188;
    volatile uint32_t ** volatile *g_1187;
    int16_t *g_1370;
    int16_t **g_1369[8][5][6];
    int8_t g_1379;
    uint32_t g_1380;
    uint16_t ***g_1423;
    volatile uint16_t g_1438;
    uint32_t g_1441;
    volatile uint8_t g_1472;
    volatile int32_t g_1487[8][6];
    volatile uint8_t *g_1519;
    volatile int8_t g_1522;
    uint32_t g_1603;
    volatile uint32_t g_1621;
    int16_t g_1709;
    uint8_t g_1718[10][1][5];
    int32_t ** volatile g_1732;
    int32_t ** volatile g_1733[8][2];
    int32_t ** volatile g_1734;
    int32_t ** volatile g_1735;
    int8_t ***g_1751;
    int8_t ****g_1750;
    uint32_t g_1832;
    int32_t *g_1877;
    int32_t ** volatile g_1876[4];
    int64_t g_1913;
    uint16_t g_1970;
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
uint64_t  func_1(struct S0 * p_1971);
int32_t  func_9(int8_t  p_10, struct S0 * p_1971);
uint8_t  func_15(int16_t  p_16, int16_t  p_17, struct S0 * p_1971);
int16_t  func_18(int32_t  p_19, int64_t  p_20, struct S0 * p_1971);
int64_t  func_26(uint16_t  p_27, int64_t  p_28, uint16_t  p_29, uint8_t  p_30, uint16_t  p_31, struct S0 * p_1971);
uint32_t  func_35(int16_t  p_36, uint16_t  p_37, uint64_t  p_38, uint64_t  p_39, struct S0 * p_1971);
int16_t  func_40(int16_t  p_41, struct S0 * p_1971);
int32_t * func_68(int32_t * p_69, int32_t * p_70, int32_t * p_71, uint8_t  p_72, struct S0 * p_1971);
int32_t * func_73(int32_t ** p_74, uint8_t  p_75, struct S0 * p_1971);
int32_t ** func_77(int32_t * p_78, uint16_t  p_79, int64_t  p_80, struct S0 * p_1971);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1971->g_3 p_1971->g_6 p_1971->g_98 p_1971->g_551 p_1971->g_487 p_1971->g_97 p_1971->g_1750 p_1971->g_656 p_1971->g_657 p_1971->g_467 p_1971->g_50 p_1971->g_967 p_1971->g_1187 p_1971->g_1188 p_1971->g_1189 p_1971->g_1370 p_1971->g_658 p_1971->g_307 p_1971->g_319 p_1971->g_1735 p_1971->g_587 p_1971->g_687 p_1971->g_1751 p_1971->g_218 p_1971->g_116 p_1971->g_188 p_1971->g_1832 p_1971->g_153 p_1971->g_1014 p_1971->g_43 p_1971->g_1046 p_1971->g_466 p_1971->g_1913 p_1971->g_1225 p_1971->g_521 p_1971->g_1198 p_1971->g_1603 p_1971->g_626 p_1971->g_688 p_1971->g_1709 p_1971->g_1877 p_1971->g_1970
 * writes: p_1971->g_3 p_1971->g_6 p_1971->g_657 p_1971->g_153 p_1971->g_1064 p_1971->g_218 p_1971->g_51 p_1971->g_116 p_1971->g_58 p_1971->g_307 p_1971->g_319 p_1971->g_98 p_1971->g_48 p_1971->g_687 p_1971->g_879 p_1971->g_188 p_1971->g_1832 p_1971->g_910 p_1971->g_43 p_1971->g_521 p_1971->g_487 p_1971->g_688 p_1971->g_571 p_1971->g_1709
 */
uint64_t  func_1(struct S0 * p_1971)
{ /* block id: 4 */
    uint64_t l_705 = 0xBC07C09C41BAF853L;
    uint32_t l_1467[3][8] = {{4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL},{4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL},{4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL}};
    int32_t l_1483 = 9L;
    int32_t l_1486[4];
    uint32_t l_1552 = 4294967292UL;
    uint64_t l_1575 = 18446744073709551615UL;
    uint32_t l_1587[8];
    int32_t l_1620 = 0L;
    uint32_t *l_1625 = &p_1971->g_1031;
    int16_t *l_1663 = &p_1971->g_48[1];
    uint32_t *l_1671 = &p_1971->g_51;
    uint32_t **l_1670[9] = {&l_1671,&l_1671,&l_1671,&l_1671,&l_1671,&l_1671,&l_1671,&l_1671,&l_1671};
    uint64_t **l_1760 = &p_1971->g_551;
    uint32_t l_1785 = 0x6D2F34CCL;
    int32_t **l_1884 = &p_1971->g_1877;
    int32_t *l_1894[3];
    uint32_t l_1955 = 0xF3878DE1L;
    int32_t l_1956 = 0x33EDD286L;
    int i, j;
    for (i = 0; i < 4; i++)
        l_1486[i] = (-1L);
    for (i = 0; i < 8; i++)
        l_1587[i] = 0xDE6497C1L;
    for (i = 0; i < 3; i++)
        l_1894[i] = (void*)0;
    for (p_1971->g_3[2][2] = 0; (p_1971->g_3[2][2] <= 0); p_1971->g_3[2][2]++)
    { /* block id: 7 */
        uint32_t l_21[7][6] = {{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L}};
        int16_t l_706 = 0x1C31L;
        int8_t ***l_1466 = (void*)0;
        int32_t l_1471[9] = {(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L)};
        int8_t l_1489 = 0L;
        uint32_t *l_1496[5] = {&p_1971->g_269,&p_1971->g_269,&p_1971->g_269,&p_1971->g_269,&p_1971->g_269};
        uint32_t **l_1495 = &l_1496[0];
        int16_t l_1505 = 6L;
        uint16_t *l_1546 = (void*)0;
        int16_t l_1548 = (-2L);
        int8_t **l_1567 = (void*)0;
        int16_t l_1573[6][2][3] = {{{2L,0x0E9AL,(-1L)},{2L,0x0E9AL,(-1L)}},{{2L,0x0E9AL,(-1L)},{2L,0x0E9AL,(-1L)}},{{2L,0x0E9AL,(-1L)},{2L,0x0E9AL,(-1L)}},{{2L,0x0E9AL,(-1L)},{2L,0x0E9AL,(-1L)}},{{2L,0x0E9AL,(-1L)},{2L,0x0E9AL,(-1L)}},{{2L,0x0E9AL,(-1L)},{2L,0x0E9AL,(-1L)}}};
        uint8_t l_1576[6];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_1576[i] = 251UL;
        for (p_1971->g_6 = 29; (p_1971->g_6 != 13); p_1971->g_6 = safe_sub_func_int8_t_s_s(p_1971->g_6, 1))
        { /* block id: 10 */
            uint16_t l_32 = 0x00D3L;
            int32_t *l_1446[9][5] = {{&p_1971->g_58,&p_1971->g_6,&p_1971->g_6,&p_1971->g_58,&p_1971->g_43},{&p_1971->g_58,&p_1971->g_6,&p_1971->g_6,&p_1971->g_58,&p_1971->g_43},{&p_1971->g_58,&p_1971->g_6,&p_1971->g_6,&p_1971->g_58,&p_1971->g_43},{&p_1971->g_58,&p_1971->g_6,&p_1971->g_6,&p_1971->g_58,&p_1971->g_43},{&p_1971->g_58,&p_1971->g_6,&p_1971->g_6,&p_1971->g_58,&p_1971->g_43},{&p_1971->g_58,&p_1971->g_6,&p_1971->g_6,&p_1971->g_58,&p_1971->g_43},{&p_1971->g_58,&p_1971->g_6,&p_1971->g_6,&p_1971->g_58,&p_1971->g_43},{&p_1971->g_58,&p_1971->g_6,&p_1971->g_6,&p_1971->g_58,&p_1971->g_43},{&p_1971->g_58,&p_1971->g_6,&p_1971->g_6,&p_1971->g_58,&p_1971->g_43}};
            int32_t l_1464 = 0x16112A6EL;
            int8_t ***l_1465[3][7][10] = {{{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687}},{{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687}},{{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687},{&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687}}};
            uint8_t l_1470 = 0x90L;
            uint32_t l_1498 = 0x78344C52L;
            uint8_t l_1539[10] = {0x66L,0x66L,0x66L,0x66L,0x66L,0x66L,0x66L,0x66L,0x66L,0x66L};
            int i, j, k;
            (1 + 1);
        }
        (*p_1971->g_98) ^= 0x4A20D0D0L;
        return (*p_1971->g_551);
    }
    if ((safe_rshift_func_int16_t_s_s((0x06BA84A59D6D408EL && (*p_1971->g_551)), 15)))
    { /* block id: 802 */
        int32_t *l_1579 = &l_1486[1];
        int32_t l_1580 = (-10L);
        int32_t *l_1581 = &p_1971->g_3[2][2];
        int32_t *l_1582 = (void*)0;
        int32_t *l_1583 = &p_1971->g_58;
        int32_t *l_1584 = &p_1971->g_1015;
        int32_t *l_1585 = &l_1486[1];
        int32_t *l_1586[10] = {&p_1971->g_1002,&p_1971->g_1002,&p_1971->g_1002,&p_1971->g_1002,&p_1971->g_1002,&p_1971->g_1002,&p_1971->g_1002,&p_1971->g_1002,&p_1971->g_1002,&p_1971->g_1002};
        uint8_t l_1637 = 0xD9L;
        int16_t *l_1664 = &p_1971->g_879;
        uint32_t *l_1668 = &p_1971->g_1603;
        uint32_t **l_1667 = &l_1668;
        uint64_t *l_1669 = &l_1575;
        int32_t *l_1693[5][10];
        uint32_t l_1698 = 4UL;
        uint8_t l_1729 = 0UL;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 10; j++)
                l_1693[i][j] = &p_1971->g_872;
        }
        l_1587[7]--;
    }
    else
    { /* block id: 870 */
        int8_t ***l_1742 = &p_1971->g_687;
        int32_t l_1743 = 1L;
        uint8_t **l_1752 = (void*)0;
        int8_t l_1784 = 0x57L;
        int32_t *l_1788 = &p_1971->g_872;
        int32_t **l_1787 = &l_1788;
        uint64_t l_1790[2];
        int32_t *l_1865 = &p_1971->g_43;
        uint32_t l_1878 = 0x36C8FA97L;
        int16_t l_1910 = 0x24F7L;
        int i;
        for (i = 0; i < 2; i++)
            l_1790[i] = 1UL;
lbl_1895:
        atomic_or(&p_1971->g_atomic_reduction[get_linear_group_id()], ((safe_div_func_uint8_t_u_u((l_1467[0][7] > (safe_add_func_uint64_t_u_u(((safe_sub_func_uint8_t_u_u((&p_1971->g_687 == l_1742), l_1743)) ^ (**p_1971->g_97)), (safe_sub_func_int8_t_s_s((((((safe_mul_func_uint16_t_u_u(((*p_1971->g_967) = (safe_mul_func_uint8_t_u_u((((*p_1971->g_551) >= ((p_1971->g_1750 != (void*)0) && (((*p_1971->g_656) = (*p_1971->g_656)) != l_1752))) == (*p_1971->g_467)), l_1483))), 8UL)) , (void*)0) != &p_1971->g_656) <= l_1743) != l_1467[0][1]), l_1575))))), 0x59L)) <= 18446744073709551615UL));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1971->v_collective += p_1971->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        for (p_1971->g_1064 = 0; (p_1971->g_1064 > (-20)); p_1971->g_1064--)
        { /* block id: 876 */
            uint64_t ***l_1759[7] = {&p_1971->g_910,&p_1971->g_910,&p_1971->g_910,&p_1971->g_910,&p_1971->g_910,&p_1971->g_910,&p_1971->g_910};
            int32_t l_1770 = 0x4FC8DF6FL;
            uint64_t l_1786 = 0xC601D7FB706D62F5L;
            uint64_t *l_1837[2][5];
            int32_t l_1885[9][4] = {{0x354D26E8L,0x354D26E8L,0x0DC389CDL,0x231D9567L},{0x354D26E8L,0x354D26E8L,0x0DC389CDL,0x231D9567L},{0x354D26E8L,0x354D26E8L,0x0DC389CDL,0x231D9567L},{0x354D26E8L,0x354D26E8L,0x0DC389CDL,0x231D9567L},{0x354D26E8L,0x354D26E8L,0x0DC389CDL,0x231D9567L},{0x354D26E8L,0x354D26E8L,0x0DC389CDL,0x231D9567L},{0x354D26E8L,0x354D26E8L,0x0DC389CDL,0x231D9567L},{0x354D26E8L,0x354D26E8L,0x0DC389CDL,0x231D9567L},{0x354D26E8L,0x354D26E8L,0x0DC389CDL,0x231D9567L}};
            int16_t *l_1886 = &p_1971->g_1709;
            int32_t **l_1893 = &l_1865;
            int64_t l_1947 = 0x7C4BF6BAC8C5C18DL;
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 5; j++)
                    l_1837[i][j] = &p_1971->g_841[3][0];
            }
            if (((safe_lshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s(l_1587[3], ((l_1760 = (void*)0) != &p_1971->g_551))), 7)) || ((((**p_1971->g_1187) != &p_1971->g_396[1]) >= ((safe_rshift_func_int8_t_s_u(1L, 3)) > (l_1770 = ((*l_1671) = (safe_unary_minus_func_int32_t_s(((**p_1971->g_97) = (safe_mul_func_int16_t_s_s(((*p_1971->g_1370) = 0x63C9L), (safe_mod_func_int64_t_s_s(((**p_1971->g_97) || l_1770), 0x117B86F75EAFF39BL))))))))))) != l_1743)))
            { /* block id: 882 */
                uint64_t **l_1771 = &p_1971->g_551;
                int32_t l_1780 = 0x08BDE303L;
                uint32_t *l_1781 = &p_1971->g_219;
                (*p_1971->g_98) = 0x3E7A93CBL;
                (**p_1971->g_97) = l_1743;
                (*p_1971->g_97) = func_68(&l_1486[1], func_68((*p_1971->g_97), ((~(l_1743 || (((void*)0 == l_1771) , (safe_rshift_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_u(((*p_1971->g_658) = ((safe_div_func_uint32_t_u_u(((safe_sub_func_uint64_t_u_u((l_1780 <= (((void*)0 != l_1781) > (safe_lshift_func_int8_t_s_s(l_1770, l_1743)))), l_1743)) ^ l_1784), l_1785)) <= FAKE_DIVERGE(p_1971->group_2_offset, get_group_id(2), 10))), 0)) , (-5L)), l_1486[2]))))) , &l_1770), &l_1483, l_1786, p_1971), (*p_1971->g_1735), l_1784, p_1971);
            }
            else
            { /* block id: 887 */
                int32_t l_1795[7] = {(-1L),0x70511029L,(-1L),(-1L),0x70511029L,(-1L),(-1L)};
                int8_t **l_1798 = (void*)0;
                uint16_t l_1826 = 0xA3D3L;
                int32_t *l_1848 = &l_1743;
                uint32_t l_1942[4] = {0x86C82B5EL,0x86C82B5EL,0x86C82B5EL,0x86C82B5EL};
                int i;
                if ((((((l_1787 != (void*)0) > (((safe_unary_minus_func_int64_t_s(((l_1483 = (((*l_1663) = l_1587[7]) == l_1790[1])) ^ (safe_lshift_func_int16_t_s_u((safe_add_func_uint32_t_u_u(l_1790[1], l_1486[1])), 9))))) >= (-10L)) < l_1795[5])) <= (safe_add_func_uint16_t_u_u((((((**p_1971->g_1750) = (*l_1742)) != l_1798) > l_1770) , l_1770), 0UL))) & 1L) || l_1785))
                { /* block id: 891 */
                    int16_t l_1825 = 0x74DAL;
                    uint8_t *l_1827 = &p_1971->g_188[1][0];
                    int32_t l_1855 = (-1L);
                    int32_t l_1856[9] = {0x63781F2EL,(-1L),0x63781F2EL,0x63781F2EL,(-1L),0x63781F2EL,0x63781F2EL,(-1L),0x63781F2EL};
                    int32_t *l_1863 = &l_1620;
                    int32_t *l_1864 = &p_1971->g_6;
                    int i;
                    for (p_1971->g_879 = 0; (p_1971->g_879 == (-26)); --p_1971->g_879)
                    { /* block id: 894 */
                        (*p_1971->g_97) = (void*)0;
                        if (l_1786)
                            continue;
                    }
                    if (((((*l_1827) ^= (safe_lshift_func_int16_t_s_s((*p_1971->g_1370), ((safe_mod_func_uint64_t_u_u(((!(safe_mod_func_int8_t_s_s(l_1790[1], l_1795[5]))) && 0x8894A47BL), 18446744073709551615UL)) <= (GROUP_DIVERGE(2, 1) | ((((**p_1971->g_657) <= (safe_add_func_uint64_t_u_u(1UL, ((safe_sub_func_uint16_t_u_u((((((((safe_lshift_func_int8_t_s_u(((safe_sub_func_int64_t_s_s((((safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1971->group_0_offset, get_group_id(0), 10), (safe_lshift_func_uint16_t_u_s((safe_add_func_uint16_t_u_u((safe_div_func_int64_t_s_s(l_1770, ((safe_add_func_uint64_t_u_u(l_1795[4], l_1825)) , l_1825))), (*p_1971->g_1370))), 11)))) || (*p_1971->g_551)) ^ 0x26EC91DDC24EF5F2L), GROUP_DIVERGE(0, 1))) , 6L), 2)) ^ l_705) != FAKE_DIVERGE(p_1971->local_0_offset, get_local_id(0), 10)) , l_1826) >= 0x5EL) , 0x7AL) <= l_1587[7]), (*p_1971->g_1370))) > (*p_1971->g_1370))))) & (-1L)) , l_1552)))))) != l_1825) | l_1825))
                    { /* block id: 899 */
                        uint32_t l_1828 = 0UL;
                        return l_1828;
                    }
                    else
                    { /* block id: 901 */
                        int32_t *l_1829 = &l_1743;
                        int32_t *l_1830 = &l_1743;
                        int32_t *l_1831 = &p_1971->g_1002;
                        p_1971->g_1832++;
                    }
                    (*l_1865) = (safe_sub_func_int64_t_s_s((&p_1971->g_841[3][0] != l_1837[1][3]), ((p_1971->g_910 = &p_1971->g_551) != ((safe_mul_func_uint8_t_u_u((((safe_div_func_uint16_t_u_u(l_1784, (safe_mod_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_mod_func_int64_t_s_s(((((l_1864 = func_68(l_1848, l_1848, &l_1770, ((((safe_rshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s(1L, 0)), 13)) ^ (++(*p_1971->g_967))) , (safe_sub_func_uint16_t_u_u((safe_div_func_int16_t_s_s(((((l_1770 = ((*l_1863) = p_1971->g_1014)) , 0x023A7E0DL) <= l_1855) , 0x5D63L), FAKE_DIVERGE(p_1971->global_0_offset, get_global_id(0), 10))), l_1790[0]))) & 0UL), p_1971)) == l_1865) , 0L) ^ 0x09L), 0xB45FC0AD1023527FL)), 1)), (-4L))))) | (*l_1865)) >= l_1786), l_1486[0])) , &p_1971->g_551))));
                    return (*p_1971->g_551);
                }
                else
                { /* block id: 911 */
                    uint64_t l_1915[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1915[i] = 1UL;
                    if ((*l_1848))
                        break;
                    for (p_1971->g_879 = (-25); (p_1971->g_879 == 2); p_1971->g_879++)
                    { /* block id: 915 */
                        int32_t ***l_1881 = &l_1787;
                        int32_t l_1889[2][4][3] = {{{1L,(-6L),1L},{1L,(-6L),1L},{1L,(-6L),1L},{1L,(-6L),1L}},{{1L,(-6L),1L},{1L,(-6L),1L},{1L,(-6L),1L},{1L,(-6L),1L}}};
                        int32_t l_1891[8][5][6] = {{{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)}},{{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)}},{{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)}},{{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)}},{{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)}},{{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)}},{{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)}},{{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)},{0L,0x23C97AE8L,9L,0x062C5A1BL,0x7F0613B1L,(-1L)}}};
                        int32_t *l_1892[6][1];
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1892[i][j] = (void*)0;
                        }
                        (1 + 1);
                    }
                    if ((*p_1971->g_98))
                    { /* block id: 927 */
                        if (l_1826)
                            goto lbl_1895;
                    }
                    else
                    { /* block id: 929 */
                        uint16_t l_1914 = 65527UL;
                        (*l_1865) = 0x5689F2D2L;
                        (*l_1865) = (safe_mul_func_int8_t_s_s((((((safe_add_func_uint8_t_u_u(((((((*l_1848) = (((**p_1971->g_97) &= ((safe_mod_func_uint32_t_u_u((safe_add_func_uint8_t_u_u(((safe_add_func_int16_t_s_s(3L, ((safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1971->local_2_offset, get_local_id(2), 10), 3)) != (safe_rshift_func_uint8_t_u_s(((((*l_1848) <= (**l_1893)) ^ ((*l_1848) || (0x1DL > (l_1910 != (safe_mod_func_int16_t_s_s(((*p_1971->g_1370) = ((*l_1663) = ((***p_1971->g_1046) ^ (***p_1971->g_1046)))), 0xF371L)))))) , 0UL), 2))))) | 4L), 0x22L)), FAKE_DIVERGE(p_1971->global_2_offset, get_global_id(2), 10))) == p_1971->g_1913)) < 7L)) , p_1971->g_1225) , 0xE5AD3E0DB413B506L) < (*l_1865)) , 0x09L), 0L)) | l_1914) , 0x1A9FF18A569B47E0L) == 0UL) > GROUP_DIVERGE(0, 1)), (*p_1971->g_658)));
                    }
                    l_1915[0]++;
                }
                for (p_1971->g_521 = 4; (p_1971->g_521 >= 0); p_1971->g_521 -= 1)
                { /* block id: 941 */
                    int32_t l_1943[6] = {0x45FDE501L,0x78DE5B2DL,0x45FDE501L,0x45FDE501L,0x78DE5B2DL,0x45FDE501L};
                    int8_t *l_1945 = (void*)0;
                    int32_t l_1948 = 0x730DA2C2L;
                    int i;
                    for (l_1786 = 0; (l_1786 <= 6); l_1786 += 1)
                    { /* block id: 944 */
                        int32_t *l_1918 = &p_1971->g_3[2][2];
                        uint16_t *l_1944[10][3][8] = {{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}},{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}},{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}},{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}},{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}},{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}},{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}},{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}},{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}},{{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826},{&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826,&l_1826}}};
                        int8_t *l_1946 = &p_1971->g_571;
                        int32_t l_1969 = 4L;
                        int i, j, k;
                        (*l_1893) = l_1918;
                        l_1948 &= (safe_add_func_int8_t_s_s((l_1947 = (p_1971->g_1198[(p_1971->g_521 + 2)][l_1786] <= (safe_sub_func_int8_t_s_s(((((*l_1946) = (((*p_1971->g_687) = (((((safe_div_func_int32_t_s_s(((*p_1971->g_551) , ((((((((safe_mul_func_int16_t_s_s(((((safe_sub_func_uint8_t_u_u((+((void*)0 != &p_1971->g_966[4][1])), ((*p_1971->g_658) |= 0xDBL))) , (((safe_div_func_int16_t_s_s((1UL || (safe_mul_func_uint16_t_u_u(((*l_1865) || (((*p_1971->g_551) |= GROUP_DIVERGE(2, 1)) != ((safe_mod_func_int32_t_s_s((safe_mod_func_uint8_t_u_u(((safe_unary_minus_func_int32_t_s((**p_1971->g_97))) > (safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(((p_1971->g_188[1][0] , l_1942[2]) < p_1971->g_1603), 2)), (*l_1865)))), (**p_1971->g_657))), 0xCA41744AL)) | 2UL))), (-8L)))), GROUP_DIVERGE(2, 1))) , p_1971->g_116[3]) <= GROUP_DIVERGE(2, 1))) || (*p_1971->g_551)) < l_1943[1]), 1UL)) ^ 0x49EEB81FAA31205BL) , (-3L)) == 0x101A4EE57747E51DL) == (*l_1918)) | p_1971->g_626) , l_1944[9][0][0]) != &l_1826)), GROUP_DIVERGE(1, 1))) < (*l_1918)) <= l_1943[1]) , (*l_1918)) , (***p_1971->g_1750))) == l_1945)) | (*l_1865)) <= l_1943[0]), (*l_1848))))), 0xCDL));
                        (*l_1848) = (l_1948 , (safe_sub_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((*l_1865), (*l_1918))), ((*p_1971->g_98) , (safe_add_func_uint32_t_u_u(l_1948, 0xB6AF505EL))))));
                        atomic_max(&p_1971->g_atomic_reduction[get_linear_group_id()], ((l_1955 & (((*l_1671) = ((l_1956 == (p_1971->g_153[(l_1786 + 2)][p_1971->g_521] = (safe_rshift_func_int16_t_s_s((((safe_mul_func_int16_t_s_s((*l_1865), ((*l_1865) & (++(*p_1971->g_551))))) == (((**p_1971->g_97) || ((((safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s(l_1943[1], GROUP_DIVERGE(2, 1))), (0xA021L >= (((((((safe_mul_func_int8_t_s_s((((*l_1663) = ((*l_1886) |= (*p_1971->g_1370))) || (((*l_1884) == l_1848) && (**l_1893))), (**l_1893))) , (**l_1893)) & 1L) <= 0x42L) , (*l_1865)) || 4UL) && l_1969)))) | (*l_1865)) & GROUP_DIVERGE(1, 1)) | (-2L))) , 0x5BL)) & (**l_1893)), 13)))) ^ (*l_1865))) , 0x6848L)) , (-1L)));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1971->v_collective += p_1971->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    }
                }
            }
            if ((*l_1865))
                continue;
            return (*p_1971->g_551);
        }
    }
    return p_1971->g_1970;
}


/* ------------------------------------------ */
/* 
 * reads : p_1971->g_967 p_1971->g_153 p_1971->g_1370 p_1971->g_218 p_1971->g_658 p_1971->g_993 p_1971->g_587 p_1971->g_3 p_1971->g_307 p_1971->g_319 p_1971->g_97 p_1971->g_656 p_1971->g_657 p_1971->g_116 p_1971->g_1093 p_1971->g_1002 p_1971->g_58 p_1971->g_1438 p_1971->g_1441
 * writes: p_1971->g_116 p_1971->g_993 p_1971->g_1423 p_1971->g_58 p_1971->g_307 p_1971->g_319 p_1971->g_51 p_1971->g_98 p_1971->g_1093 p_1971->g_1002 p_1971->g_59 p_1971->g_625 p_1971->g_1438
 */
int32_t  func_9(int8_t  p_10, struct S0 * p_1971)
{ /* block id: 696 */
    uint8_t l_1402 = 1UL;
    int32_t l_1407 = 0x5FEC488AL;
    uint64_t *l_1408[8][4][3] = {{{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0}},{{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0}},{{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0}},{{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0}},{{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0}},{{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0}},{{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0}},{{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0},{&p_1971->g_583,&p_1971->g_487[2],(void*)0}}};
    int8_t l_1409[9] = {8L,0x09L,8L,8L,0x09L,8L,8L,0x09L,8L};
    int32_t l_1410[10][1];
    uint64_t l_1411 = 0xE22048350FB28E2CL;
    int8_t l_1416 = 2L;
    int32_t l_1417[10][1];
    uint16_t ***l_1421 = &p_1971->g_966[2][0];
    int8_t ***l_1425 = (void*)0;
    int32_t *l_1427 = &l_1410[1][0];
    int i, j, k;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_1410[i][j] = 0x3019A15EL;
    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_1417[i][j] = 1L;
    }
    if ((((safe_mod_func_uint8_t_u_u(l_1402, ((*p_1971->g_658) = (safe_lshift_func_uint16_t_u_s((((*p_1971->g_967) <= p_10) & (((void*)0 == &p_1971->g_587) , (l_1417[1][0] &= (safe_add_func_uint16_t_u_u(p_10, ((l_1411++) , ((safe_mul_func_uint16_t_u_u(((((l_1410[8][0] = (((l_1416 = l_1411) , l_1410[1][0]) || p_10)) , l_1407) > (-1L)) , p_10), (*p_1971->g_1370))) <= p_10))))))), p_10))))) >= 1UL) , p_10))
    { /* block id: 702 */
        int32_t *l_1424 = &p_1971->g_1002;
        uint8_t l_1426 = 0x67L;
        for (p_1971->g_993 = (-25); (p_1971->g_993 > 29); p_1971->g_993 = safe_add_func_int8_t_s_s(p_1971->g_993, 5))
        { /* block id: 705 */
            int32_t *l_1420 = &l_1410[6][0];
            uint16_t ****l_1422[7][9] = {{&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421},{&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421},{&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421},{&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421},{&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421},{&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421},{&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421,&l_1421}};
            int i, j;
            l_1427 = func_68(l_1420, &p_1971->g_1015, func_68(func_68(func_73(&p_1971->g_587, ((p_1971->g_1423 = l_1421) == (void*)0), p_1971), l_1424, &p_1971->g_6, ((l_1425 != (void*)0) | l_1410[2][0]), p_1971), &l_1410[1][0], &l_1410[0][0], l_1426, p_1971), (***p_1971->g_656), p_1971);
            for (p_1971->g_1093 = 0; (p_1971->g_1093 < 54); ++p_1971->g_1093)
            { /* block id: 710 */
                int32_t *l_1430 = &p_1971->g_3[2][2];
                (*p_1971->g_97) = l_1430;
                (*l_1424) ^= 0x52A82BA1L;
                atomic_or(&p_1971->g_atomic_reduction[get_linear_group_id()], p_10);
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1971->v_collective += p_1971->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
        }
    }
    else
    { /* block id: 716 */
        int64_t l_1433 = 0x2CF5D0EDA30B2B29L;
        int32_t **l_1434 = &l_1427;
        for (p_1971->g_58 = 11; (p_1971->g_58 == 11); p_1971->g_58 = safe_add_func_int16_t_s_s(p_1971->g_58, 7))
        { /* block id: 719 */
            for (p_1971->g_59 = 0; (p_1971->g_59 <= 8); p_1971->g_59 += 1)
            { /* block id: 722 */
                for (p_1971->g_625 = 8; (p_1971->g_625 >= 3); p_1971->g_625 -= 1)
                { /* block id: 725 */
                    (*l_1427) = 0L;
                    return l_1433;
                }
                if (p_10)
                    break;
                (*p_1971->g_97) = (void*)0;
            }
        }
        (*l_1434) = func_73((((l_1433 , (void*)0) == (void*)0) , l_1434), (**l_1434), p_1971);
    }
    for (p_1971->g_1093 = (-24); (p_1971->g_1093 != 56); p_1971->g_1093 = safe_add_func_int64_t_s_s(p_1971->g_1093, 7))
    { /* block id: 737 */
        int32_t *l_1437[7] = {&p_1971->g_58,&p_1971->g_58,&p_1971->g_58,&p_1971->g_58,&p_1971->g_58,&p_1971->g_58,&p_1971->g_58};
        int i;
        ++p_1971->g_1438;
    }
    return p_1971->g_1441;
}


/* ------------------------------------------ */
/* 
 * reads : p_1971->g_1380 p_1971->g_97 p_1971->g_98 p_1971->g_658 p_1971->g_116 p_1971->g_43 p_1971->g_58
 * writes: p_1971->g_1380 p_1971->g_98 p_1971->g_116 p_1971->g_58
 */
uint8_t  func_15(int16_t  p_16, int16_t  p_17, struct S0 * p_1971)
{ /* block id: 687 */
    int32_t l_1373[8];
    int32_t l_1374 = (-1L);
    int32_t *l_1375 = (void*)0;
    int32_t *l_1376 = &p_1971->g_58;
    int32_t *l_1377 = &p_1971->g_43;
    int32_t *l_1378[8][1] = {{&p_1971->g_6},{&p_1971->g_6},{&p_1971->g_6},{&p_1971->g_6},{&p_1971->g_6},{&p_1971->g_6},{&p_1971->g_6},{&p_1971->g_6}};
    int16_t **l_1391 = &p_1971->g_1370;
    int16_t l_1398 = 0L;
    uint32_t l_1399 = 1UL;
    int i, j;
    for (i = 0; i < 8; i++)
        l_1373[i] = (-7L);
    --p_1971->g_1380;
    (*p_1971->g_97) = &l_1374;
    (*p_1971->g_97) = (*p_1971->g_97);
    (*p_1971->g_98) &= (((((FAKE_DIVERGE(p_1971->global_2_offset, get_global_id(2), 10) > ((*p_1971->g_658)++)) == (safe_add_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((((*l_1376) = p_16) & (&p_1971->g_1370 != l_1391)), 1)), (safe_mul_func_uint8_t_u_u((l_1399 ^= (0x6912L != ((p_17 > ((safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((p_17 >= (~(&l_1378[2][0] != ((0x0F4CL <= (p_16 <= (*l_1377))) , (void*)0)))), 11)), p_17)) && p_16)) | l_1398))), p_17)))), 1UL))) || p_16) , (*l_1376)) , p_17);
    return (*p_1971->g_658);
}


/* ------------------------------------------ */
/* 
 * reads : p_1971->g_658 p_1971->g_116 p_1971->g_623 p_1971->g_319 p_1971->g_573 p_1971->g_97 p_1971->g_466 p_1971->g_467 p_1971->g_58 p_1971->g_521 p_1971->g_307 p_1971->g_6
 * writes: p_1971->g_319 p_1971->g_573 p_1971->g_98 p_1971->g_50 p_1971->g_521 p_1971->g_307
 */
int16_t  func_18(int32_t  p_19, int64_t  p_20, struct S0 * p_1971)
{ /* block id: 342 */
    uint32_t l_709[2];
    int32_t l_721 = 0x31A77ABCL;
    uint16_t *l_722 = &p_1971->g_319;
    uint32_t l_738 = 0x2ED5FB11L;
    uint16_t l_739 = 0UL;
    int32_t l_745[6][8][5] = {{{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L}},{{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L}},{{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L}},{{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L}},{{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L}},{{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L},{0x4DCF4F7CL,0L,0x4DCF4F7CL,0x4DCF4F7CL,0L}}};
    int32_t l_767 = 0L;
    uint16_t l_780 = 3UL;
    uint32_t *l_848 = &p_1971->g_396[2];
    int32_t *l_855[9][9][3] = {{{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58}},{{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58}},{{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58}},{{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58}},{{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58}},{{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58}},{{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58}},{{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58}},{{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58},{&p_1971->g_58,&p_1971->g_3[2][2],&p_1971->g_58}}};
    uint8_t ****l_870 = &p_1971->g_656;
    uint32_t l_940[5][5][4] = {{{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL}},{{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL}},{{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL}},{{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL}},{{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL},{1UL,0x1B9315EEL,4294967294UL,0xBDDB66FBL}}};
    int64_t *l_945 = &p_1971->g_935;
    int32_t l_981 = 0x2D0176E5L;
    int8_t l_1001 = (-6L);
    int8_t l_1007 = 0x3FL;
    uint64_t *l_1028[8] = {&p_1971->g_583,&p_1971->g_583,&p_1971->g_583,&p_1971->g_583,&p_1971->g_583,&p_1971->g_583,&p_1971->g_583,&p_1971->g_583};
    uint64_t l_1175 = 0xB62FB9C3B851A0FDL;
    int32_t l_1186 = (-9L);
    int8_t ***l_1310[3];
    int16_t **l_1372 = &p_1971->g_1370;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_709[i] = 1UL;
    for (i = 0; i < 3; i++)
        l_1310[i] = &p_1971->g_687;
    if (((((*l_722) |= (((((((4UL ^ (safe_add_func_int8_t_s_s(l_709[1], 0xABL))) | (FAKE_DIVERGE(p_1971->group_1_offset, get_group_id(1), 10) > (safe_add_func_int8_t_s_s((p_20 == (safe_mul_func_int8_t_s_s((safe_div_func_int16_t_s_s(p_19, (0x60FAB836L & (safe_lshift_func_uint16_t_u_u(((safe_div_func_int8_t_s_s((safe_unary_minus_func_int64_t_s(p_20)), (+(0x3E1AL <= (((l_721 ^= (p_20 || 7UL)) | 0L) >= 8L))))) | l_709[0]), 1))))), p_20))), 0x41L)))) <= 4294967295UL) , l_709[1]) && 0UL) , (*p_1971->g_658)) , p_1971->g_623)) != p_19) ^ l_709[1]))
    { /* block id: 345 */
        int8_t l_737 = 5L;
        uint32_t l_764 = 1UL;
        int32_t **l_788 = &p_1971->g_98;
        for (p_1971->g_573 = 20; (p_1971->g_573 == 22); p_1971->g_573 = safe_add_func_uint16_t_u_u(p_1971->g_573, 5))
        { /* block id: 348 */
            uint8_t l_740 = 0x0DL;
            int64_t **l_763[4][1];
            uint32_t *l_785[8][7] = {{&l_709[1],&p_1971->g_269,(void*)0,&p_1971->g_269,&l_709[1],&l_709[1],&p_1971->g_269},{&l_709[1],&p_1971->g_269,(void*)0,&p_1971->g_269,&l_709[1],&l_709[1],&p_1971->g_269},{&l_709[1],&p_1971->g_269,(void*)0,&p_1971->g_269,&l_709[1],&l_709[1],&p_1971->g_269},{&l_709[1],&p_1971->g_269,(void*)0,&p_1971->g_269,&l_709[1],&l_709[1],&p_1971->g_269},{&l_709[1],&p_1971->g_269,(void*)0,&p_1971->g_269,&l_709[1],&l_709[1],&p_1971->g_269},{&l_709[1],&p_1971->g_269,(void*)0,&p_1971->g_269,&l_709[1],&l_709[1],&p_1971->g_269},{&l_709[1],&p_1971->g_269,(void*)0,&p_1971->g_269,&l_709[1],&l_709[1],&p_1971->g_269},{&l_709[1],&p_1971->g_269,(void*)0,&p_1971->g_269,&l_709[1],&l_709[1],&p_1971->g_269}};
            int32_t **l_789[8];
            int64_t l_791 = (-1L);
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 1; j++)
                    l_763[i][j] = &p_1971->g_467;
            }
            for (i = 0; i < 8; i++)
                l_789[i] = &p_1971->g_98;
            (1 + 1);
        }
    }
    else
    { /* block id: 400 */
        (*p_1971->g_97) = &l_721;
        return l_739;
    }
    p_1971->g_521 &= ((GROUP_DIVERGE(0, 1) & (l_848 != ((safe_mul_func_int32_t_s_s(1L, (p_1971->g_116[3] < ((safe_mul_func_uint8_t_u_u(((((**p_1971->g_466) = (5L < p_20)) && ((((1L > 0x005DL) || ((safe_rshift_func_int8_t_s_s(l_721, 7)) ^ 65528UL)) && p_19) & p_1971->g_58)) & p_20), p_19)) & 0xA2CBEEDA658B4231L)))) , &l_709[1]))) & l_709[1]);
    for (p_1971->g_307 = 0; (p_1971->g_307 >= 11); p_1971->g_307 = safe_add_func_uint8_t_u_u(p_1971->g_307, 3))
    { /* block id: 408 */
        return p_1971->g_6;
    }
    for (p_1971->g_521 = (-18); (p_1971->g_521 < (-1)); p_1971->g_521 = safe_add_func_uint32_t_u_u(p_1971->g_521, 9))
    { /* block id: 413 */
        uint16_t l_860 = 65535UL;
        uint8_t ****l_869 = &p_1971->g_656;
        int32_t l_878 = (-1L);
        int32_t l_885 = 0x4D4BBA2AL;
        uint8_t l_890 = 0xAFL;
        uint16_t ***l_968 = (void*)0;
        uint16_t ***l_969 = (void*)0;
        uint16_t **l_970 = (void*)0;
        int64_t l_971 = 0x45E195F9CA702A55L;
        uint32_t l_1029 = 0x041A9970L;
        int64_t ***l_1045 = &p_1971->g_466;
        int32_t *l_1074 = &p_1971->g_1015;
        int32_t l_1089 = 0L;
        uint32_t **l_1130 = &l_848;
        uint32_t ***l_1129[8][5][6] = {{{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130}},{{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130}},{{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130}},{{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130}},{{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130}},{{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130}},{{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130}},{{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130},{&l_1130,(void*)0,&l_1130,(void*)0,&l_1130,&l_1130}}};
        int8_t l_1181 = 0x76L;
        int8_t ***l_1283[10][8] = {{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0},{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0},{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0},{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0},{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0},{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0},{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0},{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0},{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0},{&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0,&p_1971->g_687,&p_1971->g_687,&p_1971->g_687,(void*)0}};
        int16_t l_1288 = (-1L);
        uint32_t l_1291[7][7] = {{4294967295UL,0x5CC73C11L,4294967294UL,0x5CC73C11L,4294967295UL,4294967295UL,0x5CC73C11L},{4294967295UL,0x5CC73C11L,4294967294UL,0x5CC73C11L,4294967295UL,4294967295UL,0x5CC73C11L},{4294967295UL,0x5CC73C11L,4294967294UL,0x5CC73C11L,4294967295UL,4294967295UL,0x5CC73C11L},{4294967295UL,0x5CC73C11L,4294967294UL,0x5CC73C11L,4294967295UL,4294967295UL,0x5CC73C11L},{4294967295UL,0x5CC73C11L,4294967294UL,0x5CC73C11L,4294967295UL,4294967295UL,0x5CC73C11L},{4294967295UL,0x5CC73C11L,4294967294UL,0x5CC73C11L,4294967295UL,4294967295UL,0x5CC73C11L},{4294967295UL,0x5CC73C11L,4294967294UL,0x5CC73C11L,4294967295UL,4294967295UL,0x5CC73C11L}};
        uint64_t l_1294 = 18446744073709551615UL;
        int32_t *l_1325 = &p_1971->g_58;
        int i, j, k;
        (1 + 1);
    }
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_1971->g_467 p_1971->g_50
 * writes:
 */
int64_t  func_26(uint16_t  p_27, int64_t  p_28, uint16_t  p_29, uint8_t  p_30, uint16_t  p_31, struct S0 * p_1971)
{ /* block id: 340 */
    return (*p_1971->g_467);
}


/* ------------------------------------------ */
/* 
 * reads : p_1971->g_131 p_1971->g_98 p_1971->g_6 p_1971->g_573 p_1971->g_3
 * writes: p_1971->g_551 p_1971->g_59 p_1971->g_353 p_1971->g_153 p_1971->g_131 p_1971->g_269 p_1971->g_573 p_1971->g_521
 */
uint32_t  func_35(int16_t  p_36, uint16_t  p_37, uint64_t  p_38, uint64_t  p_39, struct S0 * p_1971)
{ /* block id: 257 */
    uint64_t *l_549[9] = {(void*)0,&p_1971->g_487[0],(void*)0,(void*)0,&p_1971->g_487[0],(void*)0,(void*)0,&p_1971->g_487[0],(void*)0};
    uint64_t **l_550[8] = {&l_549[8],&l_549[8],&l_549[8],&l_549[8],&l_549[8],&l_549[8],&l_549[8],&l_549[8]};
    int32_t l_552 = 1L;
    int32_t l_567 = 0x56D54DAEL;
    int32_t l_570 = (-6L);
    int32_t l_572[7][2][6] = {{{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L},{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L}},{{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L},{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L}},{{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L},{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L}},{{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L},{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L}},{{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L},{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L}},{{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L},{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L}},{{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L},{0x778FD297L,0L,0x04D29A4FL,2L,0x66FAA675L,0x778FD297L}}};
    uint32_t *l_601[4][6] = {{(void*)0,&p_1971->g_396[5],&p_1971->g_269,&p_1971->g_51,&p_1971->g_269,&p_1971->g_396[5]},{(void*)0,&p_1971->g_396[5],&p_1971->g_269,&p_1971->g_51,&p_1971->g_269,&p_1971->g_396[5]},{(void*)0,&p_1971->g_396[5],&p_1971->g_269,&p_1971->g_51,&p_1971->g_269,&p_1971->g_396[5]},{(void*)0,&p_1971->g_396[5],&p_1971->g_269,&p_1971->g_51,&p_1971->g_269,&p_1971->g_396[5]}};
    uint8_t ***l_660 = &p_1971->g_657;
    int16_t l_681 = 0x328FL;
    int16_t l_683 = 0x6365L;
    int32_t *l_701 = (void*)0;
    int i, j, k;
    l_552 = ((p_1971->g_551 = l_549[2]) == &p_1971->g_59);
    for (l_552 = 6; (l_552 >= 0); l_552 -= 1)
    { /* block id: 262 */
        for (p_1971->g_59 = 0; p_1971->g_59 < 9; p_1971->g_59 += 1)
        {
            for (p_1971->g_353 = 0; p_1971->g_353 < 5; p_1971->g_353 += 1)
            {
                p_1971->g_153[p_1971->g_59][p_1971->g_353] = 0xEF8CL;
            }
        }
        for (p_1971->g_131 = 0; (p_1971->g_131 <= 6); p_1971->g_131 += 1)
        { /* block id: 266 */
            if ((*p_1971->g_98))
                break;
        }
        return p_38;
    }
    for (l_552 = (-14); (l_552 < 3); l_552 = safe_add_func_uint16_t_u_u(l_552, 9))
    { /* block id: 273 */
        int32_t l_568[8] = {0x273239A0L,0x273239A0L,0x273239A0L,0x273239A0L,0x273239A0L,0x273239A0L,0x273239A0L,0x273239A0L};
        int32_t l_569[2][9][5] = {{{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)}}};
        int32_t *l_576 = &p_1971->g_521;
        int32_t l_612 = 0L;
        uint64_t l_636 = 0x73EFE97EF50D6E21L;
        uint8_t l_655 = 0x8EL;
        int8_t *l_685 = &p_1971->g_49;
        int8_t **l_684 = &l_685;
        int32_t *l_698 = &l_570;
        int i, j, k;
        for (p_1971->g_269 = (-30); (p_1971->g_269 <= 29); p_1971->g_269 = safe_add_func_uint16_t_u_u(p_1971->g_269, 5))
        { /* block id: 276 */
            int32_t *l_557 = &p_1971->g_43;
            int32_t *l_558 = &p_1971->g_58;
            int32_t *l_559 = &p_1971->g_43;
            int32_t *l_560 = &p_1971->g_58;
            int32_t *l_561 = &p_1971->g_521;
            int32_t *l_562 = &p_1971->g_521;
            int32_t *l_563 = &p_1971->g_58;
            int32_t *l_564 = (void*)0;
            int32_t *l_565 = &p_1971->g_58;
            int32_t *l_566[5];
            int i;
            for (i = 0; i < 5; i++)
                l_566[i] = (void*)0;
            ++p_1971->g_573;
        }
        (*l_576) = p_37;
    }
    return p_1971->g_3[2][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1971->g_51 p_1971->g_49 p_1971->g_59 p_1971->g_87
 * writes: p_1971->g_51 p_1971->g_49 p_1971->g_59 p_1971->g_50
 */
int16_t  func_40(int16_t  p_41, struct S0 * p_1971)
{ /* block id: 11 */
    int32_t *l_42 = &p_1971->g_43;
    int32_t *l_44 = &p_1971->g_43;
    int32_t *l_45 = &p_1971->g_43;
    int32_t *l_46 = &p_1971->g_43;
    int32_t *l_47[5][8][1] = {{{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43}},{{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43}},{{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43}},{{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43}},{{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43},{&p_1971->g_43}}};
    int32_t l_85 = (-1L);
    int i, j, k;
    ++p_1971->g_51;
    for (p_1971->g_49 = (-23); (p_1971->g_49 == 15); p_1971->g_49++)
    { /* block id: 15 */
        int32_t *l_64 = &p_1971->g_6;
        uint32_t *l_547 = &p_1971->g_51;
        uint32_t **l_546[10][6] = {{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547},{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547},{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547},{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547},{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547},{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547},{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547},{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547},{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547},{&l_547,&l_547,&l_547,&l_547,&l_547,&l_547}};
        int i, j;
        for (p_1971->g_51 = 0; (p_1971->g_51 != 58); p_1971->g_51 = safe_add_func_int16_t_s_s(p_1971->g_51, 6))
        { /* block id: 18 */
            ++p_1971->g_59;
            return p_1971->g_49;
        }
        for (p_1971->g_50 = 28; (p_1971->g_50 <= 11); --p_1971->g_50)
        { /* block id: 24 */
            int32_t **l_65 = &l_46;
            int32_t l_88 = 0L;
            uint32_t *l_545 = &p_1971->g_307;
            uint32_t **l_544 = &l_545;
            uint32_t ***l_548 = &l_546[3][4];
            (*l_65) = l_64;
        }
    }
    return p_1971->g_87[2][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1971->g_3 p_1971->g_307 p_1971->g_319 p_1971->g_51 p_1971->g_97
 * writes: p_1971->g_58 p_1971->g_307 p_1971->g_319 p_1971->g_51 p_1971->g_98
 */
int32_t * func_68(int32_t * p_69, int32_t * p_70, int32_t * p_71, uint8_t  p_72, struct S0 * p_1971)
{ /* block id: 123 */
    uint32_t l_304 = 4294967295UL;
    int32_t *l_305 = (void*)0;
    int32_t *l_306 = &p_1971->g_58;
    int32_t *l_308 = &p_1971->g_58;
    int32_t *l_309 = &p_1971->g_58;
    int32_t l_310 = 8L;
    int32_t l_311 = 0x6C57B5C6L;
    int32_t *l_312 = &l_310;
    int32_t *l_313 = &l_310;
    int32_t *l_314 = &l_311;
    int32_t *l_315 = &l_310;
    int32_t *l_316 = &l_311;
    int32_t *l_317 = &p_1971->g_58;
    int32_t *l_318[3][2];
    int64_t *l_351 = &p_1971->g_50;
    int64_t **l_350 = &l_351;
    int8_t *l_359 = &p_1971->g_87[6][5];
    uint32_t l_408 = 0x935085E4L;
    uint8_t *l_414 = &p_1971->g_188[2][0];
    uint8_t **l_413 = &l_414;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
            l_318[i][j] = (void*)0;
    }
    p_1971->g_307 &= ((*l_306) = (safe_rshift_func_uint16_t_u_s((0xA2538BBCL == 0UL), (l_304 = p_1971->g_3[2][6]))));
    p_1971->g_319++;
    for (p_1971->g_51 = (-10); (p_1971->g_51 == 1); ++p_1971->g_51)
    { /* block id: 130 */
        int64_t *l_346 = &p_1971->g_50;
        int32_t l_348[1][1];
        int8_t *l_358 = &p_1971->g_87[3][3];
        uint8_t *l_403 = &p_1971->g_353;
        uint32_t *l_410 = &p_1971->g_307;
        uint32_t **l_409 = &l_410;
        uint8_t **l_416[2][3] = {{&l_403,&l_403,&l_403},{&l_403,&l_403,&l_403}};
        int32_t l_445 = 8L;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_348[i][j] = 0x3E591298L;
        }
        (1 + 1);
    }
    (*p_1971->g_97) = &l_310;
    return p_69;
}


/* ------------------------------------------ */
/* 
 * reads : p_1971->g_58 p_1971->g_98 p_1971->g_587
 * writes: p_1971->g_58
 */
int32_t * func_73(int32_t ** p_74, uint8_t  p_75, struct S0 * p_1971)
{ /* block id: 116 */
    for (p_1971->g_58 = 0; (p_1971->g_58 == 28); ++p_1971->g_58)
    { /* block id: 119 */
        return (*p_74);
    }
    return (*p_74);
}


/* ------------------------------------------ */
/* 
 * reads : p_1971->g_97 p_1971->g_98 p_1971->g_219 p_1971->g_218 p_1971->g_49 p_1971->g_43 p_1971->g_6 p_1971->g_153 p_1971->g_259 p_1971->g_58 p_1971->g_269 p_1971->g_48 p_1971->g_3
 * writes: p_1971->g_48 p_1971->g_219 p_1971->g_51 p_1971->g_59 p_1971->g_58 p_1971->g_269 p_1971->g_98
 */
int32_t ** func_77(int32_t * p_78, uint16_t  p_79, int64_t  p_80, struct S0 * p_1971)
{ /* block id: 31 */
    int32_t l_134 = 0x52F63B64L;
    int32_t l_154 = 0x29035C06L;
    uint8_t l_173 = 0x9FL;
    int32_t *l_261 = &l_154;
    int64_t l_298 = (-9L);
    for (p_80 = 25; (p_80 == 12); p_80 = safe_sub_func_uint64_t_u_u(p_80, 8))
    { /* block id: 34 */
        int32_t *l_96 = &p_1971->g_58;
        int32_t **l_95[5][3] = {{&l_96,&l_96,&l_96},{&l_96,&l_96,&l_96},{&l_96,&l_96,&l_96},{&l_96,&l_96,&l_96},{&l_96,&l_96,&l_96}};
        int8_t l_102 = 5L;
        int16_t l_136 = (-4L);
        int32_t l_185 = (-3L);
        uint8_t l_278[2][6] = {{0x15L,0x72L,0x15L,0x15L,0x72L,0x15L},{0x15L,0x72L,0x15L,0x15L,0x72L,0x15L}};
        int16_t l_281 = 0x7FD3L;
        int i, j;
        if (((void*)0 != l_95[4][2]))
        { /* block id: 35 */
            return p_1971->g_97;
        }
        else
        { /* block id: 37 */
            int16_t l_99 = 5L;
            int8_t *l_119 = &p_1971->g_49;
            int8_t l_132 = 6L;
            int32_t *l_135 = (void*)0;
            if ((((void*)0 == (*p_1971->g_97)) < (((0xE1F3C6E3L && FAKE_DIVERGE(p_1971->global_1_offset, get_global_id(1), 10)) > (l_99 < (safe_lshift_func_int16_t_s_s((p_1971->g_48[1] = (((l_102 | 1UL) ^ 0x0AL) <= ((-1L) ^ 0x3D1A1A39L))), 12)))) , p_79)))
            { /* block id: 39 */
                uint8_t *l_130[4] = {&p_1971->g_131,&p_1971->g_131,&p_1971->g_131,&p_1971->g_131};
                int32_t l_133 = 1L;
                int64_t l_141 = (-5L);
                int32_t *l_190 = &l_134;
                uint16_t l_260 = 65530UL;
                int i;
                for (l_102 = (-14); (l_102 < 17); l_102 = safe_add_func_int32_t_s_s(l_102, 6))
                { /* block id: 42 */
                    uint8_t *l_115 = &p_1971->g_116[3];
                    int32_t l_120 = 0L;
                    int8_t *l_121 = &p_1971->g_87[0][8];
                    int64_t *l_142 = &l_141;
                    int16_t *l_143[4];
                    int64_t *l_151 = &p_1971->g_50;
                    int64_t **l_150 = &l_151;
                    uint16_t *l_152 = &p_1971->g_153[6][3];
                    int8_t *l_155 = &l_132;
                    int32_t l_189 = (-1L);
                    int i;
                    for (i = 0; i < 4; i++)
                        l_143[i] = &p_1971->g_48[1];
                    (1 + 1);
                }
                for (l_134 = 20; (l_134 >= (-19)); l_134 = safe_sub_func_int8_t_s_s(l_134, 1))
                { /* block id: 75 */
                    int32_t l_217 = 0L;
                    ++p_1971->g_219;
                    for (p_1971->g_51 = 1; (p_1971->g_51 <= 4); p_1971->g_51 += 1)
                    { /* block id: 79 */
                        int16_t *l_235 = (void*)0;
                        int16_t *l_236[9][3] = {{&p_1971->g_218[1],&p_1971->g_48[8],&p_1971->g_218[1]},{&p_1971->g_218[1],&p_1971->g_48[8],&p_1971->g_218[1]},{&p_1971->g_218[1],&p_1971->g_48[8],&p_1971->g_218[1]},{&p_1971->g_218[1],&p_1971->g_48[8],&p_1971->g_218[1]},{&p_1971->g_218[1],&p_1971->g_48[8],&p_1971->g_218[1]},{&p_1971->g_218[1],&p_1971->g_48[8],&p_1971->g_218[1]},{&p_1971->g_218[1],&p_1971->g_48[8],&p_1971->g_218[1]},{&p_1971->g_218[1],&p_1971->g_48[8],&p_1971->g_218[1]},{&p_1971->g_218[1],&p_1971->g_48[8],&p_1971->g_218[1]}};
                        int16_t l_237 = 1L;
                        int i, j;
                        (1 + 1);
                    }
                    for (p_79 = (-4); (p_79 > 11); ++p_79)
                    { /* block id: 88 */
                        int16_t *l_248[3][8] = {{&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8]},{&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8]},{&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8],&p_1971->g_48[8]}};
                        int32_t l_249 = 0x56BC6BD4L;
                        uint64_t *l_258 = &p_1971->g_59;
                        int i, j;
                        l_261 = ((safe_div_func_uint8_t_u_u((~(safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1971->group_0_offset, get_group_id(0), 10) < ((l_249 = (safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(p_1971->g_218[1], 2)), 7))) || ((safe_add_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((l_190 != &p_1971->g_219) , p_79), (((safe_add_func_int64_t_s_s(((FAKE_DIVERGE(p_1971->local_1_offset, get_local_id(1), 10) > 0xB2L) != p_1971->g_49), ((*l_258) = (safe_div_func_uint64_t_u_u(((((((*p_78) > 0L) & (1UL || (**p_1971->g_97))) >= p_1971->g_153[6][3]) , 0x6AC3B5ACL) & (*p_78)), p_79))))) , p_1971->g_259) == p_1971->g_259))), 1L)) & l_249))), p_1971->g_219))), l_260)) , (*p_1971->g_97));
                    }
                    (*l_96) |= (safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((GROUP_DIVERGE(0, 1) > (0x5FL ^ 0L)), 9)), 13));
                }
            }
            else
            { /* block id: 95 */
                int8_t l_268 = 0x47L;
                for (l_136 = 23; (l_136 < 0); l_136 = safe_sub_func_int64_t_s_s(l_136, 8))
                { /* block id: 98 */
                    p_1971->g_269++;
                    (*l_96) ^= (safe_rshift_func_uint8_t_u_s(p_79, 5));
                }
                if ((**p_1971->g_97))
                    break;
            }
            l_154 = ((~(safe_mul_func_uint16_t_u_u((safe_div_func_int32_t_s_s((FAKE_DIVERGE(p_1971->global_2_offset, get_global_id(2), 10) <= (l_278[1][4] > (((safe_mul_func_uint16_t_u_u(p_79, l_281)) & (safe_rshift_func_uint8_t_u_s(((((*l_96) = p_80) && (p_79 ^ (p_1971->g_218[0] ^ ((((((safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((p_80 , (1UL <= ((p_78 == p_78) | p_79))), FAKE_DIVERGE(p_1971->group_1_offset, get_group_id(1), 10))), p_79)) , p_80) < 7UL) < p_1971->g_269) && FAKE_DIVERGE(p_1971->global_1_offset, get_global_id(1), 10)) , (*l_96))))) && p_1971->g_48[3]), 3))) < p_1971->g_49))), 9L)), l_99))) ^ p_79);
        }
        for (l_281 = 0; (l_281 >= 17); l_281 = safe_add_func_int8_t_s_s(l_281, 4))
        { /* block id: 109 */
            int64_t l_299 = 0L;
            (*l_96) = (safe_div_func_int16_t_s_s(((safe_mod_func_int16_t_s_s(((&p_79 == &p_79) , (safe_mul_func_int16_t_s_s((p_1971->g_48[8] = p_1971->g_3[4][3]), (p_1971->g_3[0][6] == (((((*l_96) | p_1971->g_153[7][1]) || (0x47A1L ^ (l_298 && (l_299 || 0L)))) , 0x6175C34AL) < 0L))))), (*l_261))) >= 0L), 0x4F43L));
        }
    }
    (*p_1971->g_97) = p_78;
    return &p_1971->g_98;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1972;
    struct S0* p_1971 = &c_1972;
    struct S0 c_1973 = {
        3L, // p_1971->g_2
        {{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)}}, // p_1971->g_3
        (-1L), // p_1971->g_6
        0x21325A46L, // p_1971->g_43
        {9L,9L,9L,9L,9L,9L,9L,9L,9L,9L}, // p_1971->g_48
        (-10L), // p_1971->g_49
        0x26DE45221BA827CFL, // p_1971->g_50
        4294967293UL, // p_1971->g_51
        (-4L), // p_1971->g_58
        2UL, // p_1971->g_59
        {{1L,1L,1L,0x1EL,(-7L),0x2DL,1L,0x1DL,1L,0x2DL},{1L,1L,1L,0x1EL,(-7L),0x2DL,1L,0x1DL,1L,0x2DL},{1L,1L,1L,0x1EL,(-7L),0x2DL,1L,0x1DL,1L,0x2DL},{1L,1L,1L,0x1EL,(-7L),0x2DL,1L,0x1DL,1L,0x2DL},{1L,1L,1L,0x1EL,(-7L),0x2DL,1L,0x1DL,1L,0x2DL},{1L,1L,1L,0x1EL,(-7L),0x2DL,1L,0x1DL,1L,0x2DL},{1L,1L,1L,0x1EL,(-7L),0x2DL,1L,0x1DL,1L,0x2DL}}, // p_1971->g_87
        &p_1971->g_6, // p_1971->g_98
        &p_1971->g_98, // p_1971->g_97
        {0x17L,0UL,0x17L,0x17L,0UL,0x17L,0x17L}, // p_1971->g_116
        0x34L, // p_1971->g_131
        {{65528UL,65529UL,0x9B48L,0xB08BL,65530UL},{65528UL,65529UL,0x9B48L,0xB08BL,65530UL},{65528UL,65529UL,0x9B48L,0xB08BL,65530UL},{65528UL,65529UL,0x9B48L,0xB08BL,65530UL},{65528UL,65529UL,0x9B48L,0xB08BL,65530UL},{65528UL,65529UL,0x9B48L,0xB08BL,65530UL},{65528UL,65529UL,0x9B48L,0xB08BL,65530UL},{65528UL,65529UL,0x9B48L,0xB08BL,65530UL},{65528UL,65529UL,0x9B48L,0xB08BL,65530UL}}, // p_1971->g_153
        {{0x70L,0x70L},{0x70L,0x70L},{0x70L,0x70L}}, // p_1971->g_188
        {1L,1L,1L,1L}, // p_1971->g_218
        9UL, // p_1971->g_219
        (void*)0, // p_1971->g_259
        4294967290UL, // p_1971->g_269
        0xBF95CD84L, // p_1971->g_307
        0x7DB9L, // p_1971->g_319
        0xF0L, // p_1971->g_353
        {0xD652A6E6L,0xD652A6E6L,0xD652A6E6L,0xD652A6E6L,0xD652A6E6L,0xD652A6E6L}, // p_1971->g_396
        (void*)0, // p_1971->g_457
        &p_1971->g_457, // p_1971->g_456
        &p_1971->g_50, // p_1971->g_467
        &p_1971->g_467, // p_1971->g_466
        {0x198DD5F2A0CC205EL,0x198DD5F2A0CC205EL,0x198DD5F2A0CC205EL,0x198DD5F2A0CC205EL}, // p_1971->g_487
        (void*)0, // p_1971->g_503
        (void*)0, // p_1971->g_519
        0x1EFCE500L, // p_1971->g_521
        &p_1971->g_487[0], // p_1971->g_551
        0x72L, // p_1971->g_571
        1UL, // p_1971->g_573
        0x7DBF01EE84CFD87DL, // p_1971->g_583
        (void*)0, // p_1971->g_587
        (-3L), // p_1971->g_623
        0x0BBF2B9FL, // p_1971->g_625
        5UL, // p_1971->g_626
        {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}}, // p_1971->g_635
        &p_1971->g_116[3], // p_1971->g_658
        &p_1971->g_658, // p_1971->g_657
        &p_1971->g_657, // p_1971->g_656
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1971->g_688
        &p_1971->g_688[1], // p_1971->g_687
        {{{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L},{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L}},{{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L},{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L}},{{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L},{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L}},{{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L},{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L}},{{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L},{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L}},{{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L},{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L}},{{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L},{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L}},{{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L},{(-8L),(-6L),0x46L,0x47L,0x3EL,0x47L}}}, // p_1971->g_704
        {{0UL,0x394B534014BC736EL,0xC7C6C1D8BF4B6596L,0x394B534014BC736EL},{0UL,0x394B534014BC736EL,0xC7C6C1D8BF4B6596L,0x394B534014BC736EL},{0UL,0x394B534014BC736EL,0xC7C6C1D8BF4B6596L,0x394B534014BC736EL},{0UL,0x394B534014BC736EL,0xC7C6C1D8BF4B6596L,0x394B534014BC736EL},{0UL,0x394B534014BC736EL,0xC7C6C1D8BF4B6596L,0x394B534014BC736EL},{0UL,0x394B534014BC736EL,0xC7C6C1D8BF4B6596L,0x394B534014BC736EL},{0UL,0x394B534014BC736EL,0xC7C6C1D8BF4B6596L,0x394B534014BC736EL},{0UL,0x394B534014BC736EL,0xC7C6C1D8BF4B6596L,0x394B534014BC736EL},{0UL,0x394B534014BC736EL,0xC7C6C1D8BF4B6596L,0x394B534014BC736EL}}, // p_1971->g_841
        0x263135BEC9F051A5L, // p_1971->g_843
        0L, // p_1971->g_872
        0x6C7DL, // p_1971->g_879
        1UL, // p_1971->g_881
        (void*)0, // p_1971->g_910
        (-1L), // p_1971->g_935
        &p_1971->g_153[4][4], // p_1971->g_967
        {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}, // p_1971->g_966
        8L, // p_1971->g_993
        {{{8L,0x23L},{8L,0x23L},{8L,0x23L},{8L,0x23L}},{{8L,0x23L},{8L,0x23L},{8L,0x23L},{8L,0x23L}},{{8L,0x23L},{8L,0x23L},{8L,0x23L},{8L,0x23L}},{{8L,0x23L},{8L,0x23L},{8L,0x23L},{8L,0x23L}},{{8L,0x23L},{8L,0x23L},{8L,0x23L},{8L,0x23L}},{{8L,0x23L},{8L,0x23L},{8L,0x23L},{8L,0x23L}}}, // p_1971->g_995
        0x44L, // p_1971->g_997
        8L, // p_1971->g_1002
        0xF1C0ECB6L, // p_1971->g_1004
        1L, // p_1971->g_1014
        0L, // p_1971->g_1015
        1UL, // p_1971->g_1016
        0x585F18ADL, // p_1971->g_1031
        &p_1971->g_466, // p_1971->g_1046
        5L, // p_1971->g_1064
        (-1L), // p_1971->g_1083
        (-2L), // p_1971->g_1088
        1L, // p_1971->g_1090
        1L, // p_1971->g_1091
        1UL, // p_1971->g_1093
        0xAA30288EL, // p_1971->g_1190
        {{{4294967293UL,4294967293UL,4294967293UL,4294967293UL},{4294967293UL,4294967293UL,4294967293UL,4294967293UL}}}, // p_1971->g_1191
        0x3BE45EA0L, // p_1971->g_1192
        0UL, // p_1971->g_1193
        {0UL,0UL,0UL,0UL}, // p_1971->g_1194
        4294967293UL, // p_1971->g_1195
        0xD2D6250EL, // p_1971->g_1196
        {8UL,0xD89AAD3CL,8UL,8UL,0xD89AAD3CL,8UL,8UL}, // p_1971->g_1197
        {{2UL,2UL,0x6775F8C1L,0x6A31DF53L,0x16ED8FDAL,0x385F4537L,9UL},{2UL,2UL,0x6775F8C1L,0x6A31DF53L,0x16ED8FDAL,0x385F4537L,9UL},{2UL,2UL,0x6775F8C1L,0x6A31DF53L,0x16ED8FDAL,0x385F4537L,9UL},{2UL,2UL,0x6775F8C1L,0x6A31DF53L,0x16ED8FDAL,0x385F4537L,9UL},{2UL,2UL,0x6775F8C1L,0x6A31DF53L,0x16ED8FDAL,0x385F4537L,9UL},{2UL,2UL,0x6775F8C1L,0x6A31DF53L,0x16ED8FDAL,0x385F4537L,9UL},{2UL,2UL,0x6775F8C1L,0x6A31DF53L,0x16ED8FDAL,0x385F4537L,9UL}}, // p_1971->g_1198
        0xF48D7B25L, // p_1971->g_1199
        {{0x9C5DD251L,0x9C5DD251L}}, // p_1971->g_1200
        0x520A1221L, // p_1971->g_1201
        0x57353E8AL, // p_1971->g_1202
        {1UL,4294967295UL,1UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL}, // p_1971->g_1203
        1UL, // p_1971->g_1204
        0x53D0BD2AL, // p_1971->g_1205
        4294967286UL, // p_1971->g_1206
        0xE3D6BBF0L, // p_1971->g_1207
        0xD3118FFBL, // p_1971->g_1208
        0x294729F8L, // p_1971->g_1209
        4294967292UL, // p_1971->g_1210
        0x440E59D9L, // p_1971->g_1211
        0x43E234C9L, // p_1971->g_1212
        7UL, // p_1971->g_1213
        0x5B8E8262L, // p_1971->g_1214
        4294967289UL, // p_1971->g_1215
        0xE8E08F90L, // p_1971->g_1216
        0xFA84391EL, // p_1971->g_1217
        3UL, // p_1971->g_1218
        0x11E94574L, // p_1971->g_1219
        4294967286UL, // p_1971->g_1220
        0UL, // p_1971->g_1221
        0x498F8D49L, // p_1971->g_1222
        9UL, // p_1971->g_1223
        6UL, // p_1971->g_1224
        1UL, // p_1971->g_1225
        0UL, // p_1971->g_1226
        0x135D4CC4L, // p_1971->g_1227
        {{4294967295UL,4294967295UL,4294967295UL,4294967295UL}}, // p_1971->g_1228
        4294967290UL, // p_1971->g_1229
        4294967287UL, // p_1971->g_1230
        4294967295UL, // p_1971->g_1231
        4294967292UL, // p_1971->g_1232
        0xD1804C2DL, // p_1971->g_1233
        0x9BB25EA2L, // p_1971->g_1234
        0x5E5DDBD8L, // p_1971->g_1235
        4294967292UL, // p_1971->g_1236
        4294967295UL, // p_1971->g_1237
        {{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL}}, // p_1971->g_1238
        0UL, // p_1971->g_1239
        {2UL,4294967294UL,0x2795ECA8L,4294967294UL,2UL,2UL,4294967294UL,0x2795ECA8L,4294967294UL,2UL}, // p_1971->g_1240
        5UL, // p_1971->g_1241
        {{0x03673A95L,1UL,4294967290UL,0xD6C43700L},{0x03673A95L,1UL,4294967290UL,0xD6C43700L},{0x03673A95L,1UL,4294967290UL,0xD6C43700L},{0x03673A95L,1UL,4294967290UL,0xD6C43700L},{0x03673A95L,1UL,4294967290UL,0xD6C43700L},{0x03673A95L,1UL,4294967290UL,0xD6C43700L}}, // p_1971->g_1242
        1UL, // p_1971->g_1243
        0UL, // p_1971->g_1244
        {{{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231}},{{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231}},{{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231}},{{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231}},{{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231}},{{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231}},{{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231},{(void*)0,&p_1971->g_1217,&p_1971->g_1223,&p_1971->g_1204,&p_1971->g_1206,&p_1971->g_1231}}}, // p_1971->g_1189
        &p_1971->g_1189[2][0][3], // p_1971->g_1188
        &p_1971->g_1188, // p_1971->g_1187
        &p_1971->g_218[2], // p_1971->g_1370
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1971->g_1370}}}, // p_1971->g_1369
        1L, // p_1971->g_1379
        1UL, // p_1971->g_1380
        &p_1971->g_966[2][0], // p_1971->g_1423
        0xB025L, // p_1971->g_1438
        0x4D057D24L, // p_1971->g_1441
        2UL, // p_1971->g_1472
        {{1L,(-1L),(-1L),1L,1L,0x36348540L},{1L,(-1L),(-1L),1L,1L,0x36348540L},{1L,(-1L),(-1L),1L,1L,0x36348540L},{1L,(-1L),(-1L),1L,1L,0x36348540L},{1L,(-1L),(-1L),1L,1L,0x36348540L},{1L,(-1L),(-1L),1L,1L,0x36348540L},{1L,(-1L),(-1L),1L,1L,0x36348540L},{1L,(-1L),(-1L),1L,1L,0x36348540L}}, // p_1971->g_1487
        &p_1971->g_1472, // p_1971->g_1519
        (-9L), // p_1971->g_1522
        0xF07383E3L, // p_1971->g_1603
        0x56678D21L, // p_1971->g_1621
        0x7FBBL, // p_1971->g_1709
        {{{0xDFL,0xDFL,0x98L,248UL,0x14L}},{{0xDFL,0xDFL,0x98L,248UL,0x14L}},{{0xDFL,0xDFL,0x98L,248UL,0x14L}},{{0xDFL,0xDFL,0x98L,248UL,0x14L}},{{0xDFL,0xDFL,0x98L,248UL,0x14L}},{{0xDFL,0xDFL,0x98L,248UL,0x14L}},{{0xDFL,0xDFL,0x98L,248UL,0x14L}},{{0xDFL,0xDFL,0x98L,248UL,0x14L}},{{0xDFL,0xDFL,0x98L,248UL,0x14L}},{{0xDFL,0xDFL,0x98L,248UL,0x14L}}}, // p_1971->g_1718
        (void*)0, // p_1971->g_1732
        {{&p_1971->g_587,&p_1971->g_587},{&p_1971->g_587,&p_1971->g_587},{&p_1971->g_587,&p_1971->g_587},{&p_1971->g_587,&p_1971->g_587},{&p_1971->g_587,&p_1971->g_587},{&p_1971->g_587,&p_1971->g_587},{&p_1971->g_587,&p_1971->g_587},{&p_1971->g_587,&p_1971->g_587}}, // p_1971->g_1733
        (void*)0, // p_1971->g_1734
        &p_1971->g_587, // p_1971->g_1735
        &p_1971->g_687, // p_1971->g_1751
        &p_1971->g_1751, // p_1971->g_1750
        4294967294UL, // p_1971->g_1832
        &p_1971->g_872, // p_1971->g_1877
        {&p_1971->g_1877,&p_1971->g_1877,&p_1971->g_1877,&p_1971->g_1877}, // p_1971->g_1876
        0x4454634B37D8FE94L, // p_1971->g_1913
        0xC7ECL, // p_1971->g_1970
        0, // p_1971->v_collective
        sequence_input[get_global_id(0)], // p_1971->global_0_offset
        sequence_input[get_global_id(1)], // p_1971->global_1_offset
        sequence_input[get_global_id(2)], // p_1971->global_2_offset
        sequence_input[get_local_id(0)], // p_1971->local_0_offset
        sequence_input[get_local_id(1)], // p_1971->local_1_offset
        sequence_input[get_local_id(2)], // p_1971->local_2_offset
        sequence_input[get_group_id(0)], // p_1971->group_0_offset
        sequence_input[get_group_id(1)], // p_1971->group_1_offset
        sequence_input[get_group_id(2)], // p_1971->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1972 = c_1973;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1971);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1971->g_2, "p_1971->g_2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1971->g_3[i][j], "p_1971->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1971->g_6, "p_1971->g_6", print_hash_value);
    transparent_crc(p_1971->g_43, "p_1971->g_43", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1971->g_48[i], "p_1971->g_48[i]", print_hash_value);

    }
    transparent_crc(p_1971->g_49, "p_1971->g_49", print_hash_value);
    transparent_crc(p_1971->g_50, "p_1971->g_50", print_hash_value);
    transparent_crc(p_1971->g_51, "p_1971->g_51", print_hash_value);
    transparent_crc(p_1971->g_58, "p_1971->g_58", print_hash_value);
    transparent_crc(p_1971->g_59, "p_1971->g_59", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1971->g_87[i][j], "p_1971->g_87[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1971->g_116[i], "p_1971->g_116[i]", print_hash_value);

    }
    transparent_crc(p_1971->g_131, "p_1971->g_131", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1971->g_153[i][j], "p_1971->g_153[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1971->g_188[i][j], "p_1971->g_188[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1971->g_218[i], "p_1971->g_218[i]", print_hash_value);

    }
    transparent_crc(p_1971->g_219, "p_1971->g_219", print_hash_value);
    transparent_crc(p_1971->g_269, "p_1971->g_269", print_hash_value);
    transparent_crc(p_1971->g_307, "p_1971->g_307", print_hash_value);
    transparent_crc(p_1971->g_319, "p_1971->g_319", print_hash_value);
    transparent_crc(p_1971->g_353, "p_1971->g_353", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1971->g_396[i], "p_1971->g_396[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1971->g_487[i], "p_1971->g_487[i]", print_hash_value);

    }
    transparent_crc(p_1971->g_521, "p_1971->g_521", print_hash_value);
    transparent_crc(p_1971->g_571, "p_1971->g_571", print_hash_value);
    transparent_crc(p_1971->g_573, "p_1971->g_573", print_hash_value);
    transparent_crc(p_1971->g_583, "p_1971->g_583", print_hash_value);
    transparent_crc(p_1971->g_623, "p_1971->g_623", print_hash_value);
    transparent_crc(p_1971->g_625, "p_1971->g_625", print_hash_value);
    transparent_crc(p_1971->g_626, "p_1971->g_626", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1971->g_635[i][j], "p_1971->g_635[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1971->g_704[i][j][k], "p_1971->g_704[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1971->g_841[i][j], "p_1971->g_841[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1971->g_843, "p_1971->g_843", print_hash_value);
    transparent_crc(p_1971->g_872, "p_1971->g_872", print_hash_value);
    transparent_crc(p_1971->g_879, "p_1971->g_879", print_hash_value);
    transparent_crc(p_1971->g_881, "p_1971->g_881", print_hash_value);
    transparent_crc(p_1971->g_935, "p_1971->g_935", print_hash_value);
    transparent_crc(p_1971->g_993, "p_1971->g_993", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1971->g_995[i][j][k], "p_1971->g_995[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1971->g_997, "p_1971->g_997", print_hash_value);
    transparent_crc(p_1971->g_1002, "p_1971->g_1002", print_hash_value);
    transparent_crc(p_1971->g_1004, "p_1971->g_1004", print_hash_value);
    transparent_crc(p_1971->g_1014, "p_1971->g_1014", print_hash_value);
    transparent_crc(p_1971->g_1015, "p_1971->g_1015", print_hash_value);
    transparent_crc(p_1971->g_1016, "p_1971->g_1016", print_hash_value);
    transparent_crc(p_1971->g_1031, "p_1971->g_1031", print_hash_value);
    transparent_crc(p_1971->g_1064, "p_1971->g_1064", print_hash_value);
    transparent_crc(p_1971->g_1083, "p_1971->g_1083", print_hash_value);
    transparent_crc(p_1971->g_1088, "p_1971->g_1088", print_hash_value);
    transparent_crc(p_1971->g_1090, "p_1971->g_1090", print_hash_value);
    transparent_crc(p_1971->g_1091, "p_1971->g_1091", print_hash_value);
    transparent_crc(p_1971->g_1093, "p_1971->g_1093", print_hash_value);
    transparent_crc(p_1971->g_1190, "p_1971->g_1190", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1971->g_1191[i][j][k], "p_1971->g_1191[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1971->g_1192, "p_1971->g_1192", print_hash_value);
    transparent_crc(p_1971->g_1193, "p_1971->g_1193", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1971->g_1194[i], "p_1971->g_1194[i]", print_hash_value);

    }
    transparent_crc(p_1971->g_1195, "p_1971->g_1195", print_hash_value);
    transparent_crc(p_1971->g_1196, "p_1971->g_1196", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1971->g_1197[i], "p_1971->g_1197[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1971->g_1198[i][j], "p_1971->g_1198[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1971->g_1199, "p_1971->g_1199", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1971->g_1200[i][j], "p_1971->g_1200[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1971->g_1201, "p_1971->g_1201", print_hash_value);
    transparent_crc(p_1971->g_1202, "p_1971->g_1202", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1971->g_1203[i], "p_1971->g_1203[i]", print_hash_value);

    }
    transparent_crc(p_1971->g_1204, "p_1971->g_1204", print_hash_value);
    transparent_crc(p_1971->g_1205, "p_1971->g_1205", print_hash_value);
    transparent_crc(p_1971->g_1206, "p_1971->g_1206", print_hash_value);
    transparent_crc(p_1971->g_1207, "p_1971->g_1207", print_hash_value);
    transparent_crc(p_1971->g_1208, "p_1971->g_1208", print_hash_value);
    transparent_crc(p_1971->g_1209, "p_1971->g_1209", print_hash_value);
    transparent_crc(p_1971->g_1210, "p_1971->g_1210", print_hash_value);
    transparent_crc(p_1971->g_1211, "p_1971->g_1211", print_hash_value);
    transparent_crc(p_1971->g_1212, "p_1971->g_1212", print_hash_value);
    transparent_crc(p_1971->g_1213, "p_1971->g_1213", print_hash_value);
    transparent_crc(p_1971->g_1214, "p_1971->g_1214", print_hash_value);
    transparent_crc(p_1971->g_1215, "p_1971->g_1215", print_hash_value);
    transparent_crc(p_1971->g_1216, "p_1971->g_1216", print_hash_value);
    transparent_crc(p_1971->g_1217, "p_1971->g_1217", print_hash_value);
    transparent_crc(p_1971->g_1218, "p_1971->g_1218", print_hash_value);
    transparent_crc(p_1971->g_1219, "p_1971->g_1219", print_hash_value);
    transparent_crc(p_1971->g_1220, "p_1971->g_1220", print_hash_value);
    transparent_crc(p_1971->g_1221, "p_1971->g_1221", print_hash_value);
    transparent_crc(p_1971->g_1222, "p_1971->g_1222", print_hash_value);
    transparent_crc(p_1971->g_1223, "p_1971->g_1223", print_hash_value);
    transparent_crc(p_1971->g_1224, "p_1971->g_1224", print_hash_value);
    transparent_crc(p_1971->g_1225, "p_1971->g_1225", print_hash_value);
    transparent_crc(p_1971->g_1226, "p_1971->g_1226", print_hash_value);
    transparent_crc(p_1971->g_1227, "p_1971->g_1227", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1971->g_1228[i][j], "p_1971->g_1228[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1971->g_1229, "p_1971->g_1229", print_hash_value);
    transparent_crc(p_1971->g_1230, "p_1971->g_1230", print_hash_value);
    transparent_crc(p_1971->g_1231, "p_1971->g_1231", print_hash_value);
    transparent_crc(p_1971->g_1232, "p_1971->g_1232", print_hash_value);
    transparent_crc(p_1971->g_1233, "p_1971->g_1233", print_hash_value);
    transparent_crc(p_1971->g_1234, "p_1971->g_1234", print_hash_value);
    transparent_crc(p_1971->g_1235, "p_1971->g_1235", print_hash_value);
    transparent_crc(p_1971->g_1236, "p_1971->g_1236", print_hash_value);
    transparent_crc(p_1971->g_1237, "p_1971->g_1237", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1971->g_1238[i][j], "p_1971->g_1238[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1971->g_1239, "p_1971->g_1239", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1971->g_1240[i], "p_1971->g_1240[i]", print_hash_value);

    }
    transparent_crc(p_1971->g_1241, "p_1971->g_1241", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1971->g_1242[i][j], "p_1971->g_1242[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1971->g_1243, "p_1971->g_1243", print_hash_value);
    transparent_crc(p_1971->g_1244, "p_1971->g_1244", print_hash_value);
    transparent_crc(p_1971->g_1379, "p_1971->g_1379", print_hash_value);
    transparent_crc(p_1971->g_1380, "p_1971->g_1380", print_hash_value);
    transparent_crc(p_1971->g_1438, "p_1971->g_1438", print_hash_value);
    transparent_crc(p_1971->g_1441, "p_1971->g_1441", print_hash_value);
    transparent_crc(p_1971->g_1472, "p_1971->g_1472", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1971->g_1487[i][j], "p_1971->g_1487[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1971->g_1522, "p_1971->g_1522", print_hash_value);
    transparent_crc(p_1971->g_1603, "p_1971->g_1603", print_hash_value);
    transparent_crc(p_1971->g_1621, "p_1971->g_1621", print_hash_value);
    transparent_crc(p_1971->g_1709, "p_1971->g_1709", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1971->g_1718[i][j][k], "p_1971->g_1718[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1971->g_1832, "p_1971->g_1832", print_hash_value);
    transparent_crc(p_1971->g_1913, "p_1971->g_1913", print_hash_value);
    transparent_crc(p_1971->g_1970, "p_1971->g_1970", print_hash_value);
    transparent_crc(p_1971->v_collective, "p_1971->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
