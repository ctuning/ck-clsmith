// ---fake_divergence -g 77,78,1 -l 1,13,1
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


// Seed: 97

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    VECTOR(int64_t, 2) g_20;
    uint8_t g_25;
    VECTOR(uint8_t, 2) g_27;
    int32_t g_33;
    int64_t g_42;
    volatile uint16_t g_43;
    volatile uint32_t g_55;
    int32_t * volatile g_64;
    uint16_t g_66;
    int32_t *g_95;
    int32_t **g_94;
    int8_t g_123;
    int16_t g_125;
    uint32_t g_126;
    VECTOR(uint8_t, 4) g_140;
    VECTOR(int32_t, 16) g_148;
    int32_t *g_154;
    VECTOR(uint8_t, 2) g_161;
    VECTOR(int8_t, 16) g_170;
    int32_t **g_179;
    uint8_t *g_186;
    int16_t * volatile * volatile g_187;
    uint32_t g_201;
    VECTOR(uint64_t, 4) g_213;
    int32_t g_230;
    int32_t * volatile g_229;
    VECTOR(uint32_t, 2) g_274;
    volatile VECTOR(int8_t, 8) g_327;
    VECTOR(uint32_t, 8) g_333;
    VECTOR(int16_t, 2) g_356;
    VECTOR(int8_t, 8) g_359;
    VECTOR(int8_t, 8) g_360;
    uint16_t g_390;
    VECTOR(uint8_t, 4) g_397;
    volatile VECTOR(uint16_t, 8) g_402;
    VECTOR(uint16_t, 2) g_403;
    volatile int16_t g_421;
    volatile uint64_t g_422;
    VECTOR(uint16_t, 8) g_447;
    volatile VECTOR(uint16_t, 2) g_448;
    VECTOR(int16_t, 2) g_450;
    int16_t *g_456[4];
    uint16_t *g_462;
    uint32_t g_470;
    volatile uint32_t g_493[9];
    int32_t g_497;
    volatile int64_t g_499;
    uint64_t g_502[5];
    volatile int32_t g_542;
    volatile int32_t * volatile g_541[4];
    int64_t * volatile g_566;
    int64_t * volatile *g_565;
    int32_t g_611;
    volatile VECTOR(int32_t, 8) g_641;
    VECTOR(uint32_t, 16) g_644;
    VECTOR(uint8_t, 4) g_692;
    VECTOR(int64_t, 2) g_698;
    VECTOR(uint64_t, 16) g_712;
    int32_t g_714;
    int32_t * volatile g_731[2];
    int32_t * volatile g_732;
    int32_t g_733;
    VECTOR(int32_t, 16) g_736;
    VECTOR(int64_t, 4) g_740;
    volatile VECTOR(int16_t, 16) g_743;
    volatile VECTOR(int32_t, 16) g_748;
    volatile VECTOR(int32_t, 16) g_749;
    int32_t * volatile g_797;
    VECTOR(uint8_t, 4) g_837;
    VECTOR(uint8_t, 8) g_839;
    VECTOR(int8_t, 16) g_842;
    int32_t g_849;
    VECTOR(int16_t, 4) g_872;
    uint32_t g_885;
    uint32_t **g_924;
    uint32_t *** volatile g_923;
    VECTOR(uint8_t, 16) g_937;
    VECTOR(uint32_t, 4) g_950;
    volatile VECTOR(uint32_t, 2) g_951;
    volatile VECTOR(int8_t, 2) g_978;
    volatile int8_t g_986;
    int32_t * volatile g_1010;
    volatile VECTOR(int64_t, 8) g_1021;
    int16_t *g_1028;
    int32_t * volatile * volatile * volatile *g_1031;
    VECTOR(uint64_t, 4) g_1047;
    volatile uint16_t *g_1061;
    volatile uint16_t **g_1060;
    int32_t *g_1066;
    int32_t * volatile *g_1065;
    volatile VECTOR(int32_t, 4) g_1068;
    int32_t **g_1071;
    VECTOR(int32_t, 2) g_1079;
    VECTOR(int16_t, 16) g_1098;
    uint32_t * volatile g_1147;
    uint32_t * volatile * volatile g_1146;
    volatile VECTOR(int16_t, 16) g_1169;
    int32_t *** volatile g_1183;
    VECTOR(int64_t, 16) g_1205;
    uint32_t g_1206;
    int32_t g_1208[1][9][6];
    VECTOR(int64_t, 16) g_1234;
    volatile VECTOR(uint64_t, 16) g_1237;
    int8_t g_1252[9][10][2];
    volatile VECTOR(uint64_t, 4) g_1258;
    VECTOR(uint16_t, 4) g_1264;
    VECTOR(int32_t, 16) g_1304;
    uint8_t g_1317;
    VECTOR(uint32_t, 2) g_1348;
    int64_t * volatile ** volatile g_1354;
    uint64_t g_1367;
    int32_t g_1407[1];
    volatile VECTOR(uint8_t, 2) g_1424;
    VECTOR(uint8_t, 2) g_1429;
    volatile VECTOR(uint8_t, 8) g_1430;
    VECTOR(uint8_t, 8) g_1431;
    VECTOR(int16_t, 8) g_1434;
    VECTOR(uint32_t, 4) g_1466;
    VECTOR(uint8_t, 16) g_1485;
    VECTOR(uint64_t, 2) g_1498;
    int32_t ***g_1520[6];
    int32_t ****g_1519;
    int32_t *****g_1523[3];
    volatile VECTOR(int16_t, 8) g_1535;
    VECTOR(int16_t, 2) g_1537;
    uint64_t g_1541;
    VECTOR(int16_t, 4) g_1568;
    VECTOR(int16_t, 16) g_1569;
    VECTOR(int32_t, 4) g_1570;
    uint16_t g_1573;
    int8_t g_1639;
    volatile VECTOR(uint32_t, 4) g_1643;
    VECTOR(uint32_t, 16) g_1644;
    volatile VECTOR(uint32_t, 8) g_1646;
    int64_t g_1652;
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
uint64_t  func_1(struct S0 * p_1658);
int32_t  func_6(uint64_t  p_7, uint8_t  p_8, struct S0 * p_1658);
int32_t  func_60(int8_t  p_61, struct S0 * p_1658);
int32_t ** func_73(int16_t  p_74, int32_t  p_75, uint64_t  p_76, int32_t * p_77, struct S0 * p_1658);
uint32_t  func_84(int32_t * p_85, uint8_t * p_86, int32_t  p_87, uint32_t  p_88, uint8_t * p_89, struct S0 * p_1658);
int32_t * func_90(int32_t ** p_91, uint32_t  p_92, uint8_t * p_93, struct S0 * p_1658);
uint8_t * func_96(uint32_t  p_97, uint64_t  p_98, struct S0 * p_1658);
uint8_t  func_99(int64_t  p_100, struct S0 * p_1658);
int32_t * func_105(int64_t  p_106, uint64_t  p_107, uint8_t  p_108, int8_t  p_109, uint32_t  p_110, struct S0 * p_1658);
int16_t  func_111(uint32_t  p_112, struct S0 * p_1658);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1658->g_3 p_1658->g_20 p_1658->g_27 p_1658->g_25 p_1658->g_43 p_1658->g_33 p_1658->g_55 p_1658->g_42 p_1658->g_64 p_1658->g_66 p_1658->g_94 p_1658->g_541 p_1658->g_95 p_1658->g_179 p_1658->g_229 p_1658->g_230 p_1658->g_154 p_1658->g_274 p_1658->g_732 p_1658->g_733 p_1658->g_462 p_1658->g_161 p_1658->g_422 p_1658->g_390 p_1658->g_565 p_1658->g_566 p_1658->g_397 p_1658->g_502 p_1658->g_748 p_1658->g_923 p_1658->g_201 p_1658->g_360 p_1658->g_924 p_1658->g_986 p_1658->g_736 p_1658->g_1028 p_1658->g_1060 p_1658->g_951 p_1658->g_123 p_1658->g_497 p_1658->g_1065 p_1658->g_125 p_1658->g_213 p_1658->g_978 p_1658->g_140 p_1658->g_1061 p_1658->g_1146 p_1658->g_698 p_1658->g_611 p_1658->g_1208 p_1658->g_1079 p_1658->g_1252 p_1658->g_493 p_1658->g_333 p_1658->g_1264
 * writes: p_1658->g_3 p_1658->g_43 p_1658->g_33 p_1658->g_55 p_1658->g_42 p_1658->g_66 p_1658->g_541 p_1658->g_154 p_1658->g_230 p_1658->g_611 p_1658->g_95 p_1658->g_186 p_1658->g_126 p_1658->g_714 p_1658->g_390 p_1658->g_470 p_1658->g_733 p_1658->g_359 p_1658->g_123 p_1658->g_924 p_1658->g_201 p_1658->g_125 p_1658->g_1065 p_1658->g_497 p_1658->g_1206 p_1658->g_1208 p_1658->g_1079 p_1658->g_360
 */
uint64_t  func_1(struct S0 * p_1658)
{ /* block id: 4 */
    VECTOR(uint64_t, 4) l_2 = (VECTOR(uint64_t, 4))(0x1F782A1836CCB036L, (VECTOR(uint64_t, 2))(0x1F782A1836CCB036L, 0xA810D21DFE4B2830L), 0xA810D21DFE4B2830L);
    int32_t l_17[8][7][3] = {{{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L}},{{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L}},{{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L}},{{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L}},{{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L}},{{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L}},{{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L}},{{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L},{0x53D47825L,4L,0x382E5809L}}};
    VECTOR(uint8_t, 4) l_28 = (VECTOR(uint8_t, 4))(0x77L, (VECTOR(uint8_t, 2))(0x77L, 255UL), 255UL);
    uint8_t *l_29[4][6] = {{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25,(void*)0,(void*)0,(void*)0},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25,(void*)0,(void*)0,(void*)0},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25,(void*)0,(void*)0,(void*)0},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25,(void*)0,(void*)0,(void*)0}};
    int64_t l_1218 = 0x510DDC9F592A8084L;
    int8_t l_1222 = 0x0EL;
    int32_t *l_1271 = (void*)0;
    int8_t l_1373 = 0x50L;
    uint32_t *l_1379 = (void*)0;
    uint32_t **l_1378 = &l_1379;
    uint64_t l_1404 = 5UL;
    VECTOR(uint8_t, 16) l_1428 = (VECTOR(uint8_t, 16))(0xE5L, (VECTOR(uint8_t, 4))(0xE5L, (VECTOR(uint8_t, 2))(0xE5L, 255UL), 255UL), 255UL, 0xE5L, 255UL, (VECTOR(uint8_t, 2))(0xE5L, 255UL), (VECTOR(uint8_t, 2))(0xE5L, 255UL), 0xE5L, 255UL, 0xE5L, 255UL);
    int32_t *l_1444 = (void*)0;
    int32_t l_1452 = (-9L);
    uint16_t l_1457 = 0xD33CL;
    int64_t l_1501[8] = {4L,(-1L),4L,4L,(-1L),4L,4L,(-1L)};
    int16_t l_1527[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    uint32_t l_1528 = 0x9A583003L;
    VECTOR(uint32_t, 4) l_1538 = (VECTOR(uint32_t, 4))(0xCF793D1AL, (VECTOR(uint32_t, 2))(0xCF793D1AL, 0UL), 0UL);
    int8_t l_1546 = 6L;
    int16_t l_1549[6] = {0x11C6L,0x11C6L,0x11C6L,0x11C6L,0x11C6L,0x11C6L};
    int32_t ****l_1591 = &p_1658->g_1520[1];
    VECTOR(int16_t, 2) l_1596 = (VECTOR(int16_t, 2))(0L, 0x38CEL);
    uint16_t l_1618 = 0x374BL;
    VECTOR(uint8_t, 16) l_1634 = (VECTOR(uint8_t, 16))(0x6EL, (VECTOR(uint8_t, 4))(0x6EL, (VECTOR(uint8_t, 2))(0x6EL, 255UL), 255UL), 255UL, 0x6EL, 255UL, (VECTOR(uint8_t, 2))(0x6EL, 255UL), (VECTOR(uint8_t, 2))(0x6EL, 255UL), 0x6EL, 255UL, 0x6EL, 255UL);
    int i, j, k;
    if ((4294967290UL >= l_2.z))
    { /* block id: 5 */
        int8_t l_30 = 0x09L;
        uint8_t *l_1209 = (void*)0;
        int32_t l_1219 = (-6L);
        int32_t l_1220 = 0x3E6995D9L;
        int32_t l_1221[1][1][6];
        int16_t l_1224 = 4L;
        uint16_t l_1241 = 0x7CB4L;
        uint64_t l_1269 = 0x0867A899C2FAA5B9L;
        int8_t l_1300 = (-5L);
        VECTOR(uint64_t, 16) l_1307 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x509DADBC4768DB79L), 0x509DADBC4768DB79L), 0x509DADBC4768DB79L, 0UL, 0x509DADBC4768DB79L, (VECTOR(uint64_t, 2))(0UL, 0x509DADBC4768DB79L), (VECTOR(uint64_t, 2))(0UL, 0x509DADBC4768DB79L), 0UL, 0x509DADBC4768DB79L, 0UL, 0x509DADBC4768DB79L);
        uint32_t l_1340[2];
        uint64_t l_1375 = 0UL;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 6; k++)
                    l_1221[i][j][k] = 0x585DF934L;
            }
        }
        for (i = 0; i < 2; i++)
            l_1340[i] = 0x91DB5D0EL;
        for (p_1658->g_3 = 0; (p_1658->g_3 > 17); p_1658->g_3 = safe_add_func_uint8_t_u_u(p_1658->g_3, 3))
        { /* block id: 8 */
            VECTOR(int8_t, 2) l_18 = (VECTOR(int8_t, 2))(0x51L, (-1L));
            VECTOR(int64_t, 16) l_19 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 6L), 6L), 6L, 0L, 6L, (VECTOR(int64_t, 2))(0L, 6L), (VECTOR(int64_t, 2))(0L, 6L), 0L, 6L, 0L, 6L);
            VECTOR(int64_t, 4) l_21 = (VECTOR(int64_t, 4))(0x025B0D6B1F8487B2L, (VECTOR(int64_t, 2))(0x025B0D6B1F8487B2L, 0x764FE605A4206971L), 0x764FE605A4206971L);
            uint8_t *l_24[9][9][3] = {{{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25}},{{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25}},{{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25}},{{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25}},{{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25}},{{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25}},{{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25}},{{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25}},{{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25},{&p_1658->g_25,&p_1658->g_25,&p_1658->g_25}}};
            VECTOR(int32_t, 8) l_26 = (VECTOR(int32_t, 8))(0x4F091274L, (VECTOR(int32_t, 4))(0x4F091274L, (VECTOR(int32_t, 2))(0x4F091274L, 0L), 0L), 0L, 0x4F091274L, 0L);
            int32_t *l_46 = &p_1658->g_33;
            int32_t *l_47 = &l_17[1][5][0];
            int32_t *l_48 = (void*)0;
            int32_t *l_49 = &l_17[0][6][2];
            int32_t *l_50 = &p_1658->g_33;
            int32_t *l_51 = &p_1658->g_33;
            int32_t *l_52 = &p_1658->g_33;
            int32_t *l_53 = (void*)0;
            int32_t *l_54[3][5] = {{&l_17[1][5][0],(void*)0,&l_17[1][5][0],&l_17[1][5][0],(void*)0},{&l_17[1][5][0],(void*)0,&l_17[1][5][0],&l_17[1][5][0],(void*)0},{&l_17[1][5][0],(void*)0,&l_17[1][5][0],&l_17[1][5][0],(void*)0}};
            int i, j, k;
            (*l_46) |= func_6((safe_mod_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((safe_div_func_int8_t_s_s((((l_17[1][5][0] = (safe_mod_func_int8_t_s_s((-9L), 0x39L))) || l_18.y) != (~((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 8))(l_19.s32397bde)).s51, ((VECTOR(int64_t, 4))(p_1658->g_20.xxyx)).lo))).yyyyyxxxxyxyxxyx)).s8)), p_1658->g_20.x)), (((VECTOR(int64_t, 4))(l_21.yzwx)).x || (((!((l_26.s2 = p_1658->g_3) >= (l_21.x , ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 16))(p_1658->g_27.xyxyxxyyyyxxyxxy)).s3eef, (uint8_t)FAKE_DIVERGE(p_1658->local_2_offset, get_local_id(2), 10)))), ((VECTOR(uint8_t, 8))(l_28.wzxxwwxx)).odd))).xzzzwwxywzzyywxx))).s954c)))).y))) || (l_29[3][2] == ((~p_1658->g_25) , &p_1658->g_25))) > 0xE3B6EA11L)))), p_1658->g_20.y)), l_30, p_1658);
            --p_1658->g_55;
        }
        for (p_1658->g_42 = (-9); (p_1658->g_42 < 27); p_1658->g_42 = safe_add_func_int8_t_s_s(p_1658->g_42, 1))
        { /* block id: 19 */
            int32_t *l_1207 = &p_1658->g_1208[0][2][1];
            int32_t *l_1210 = &p_1658->g_33;
            int32_t l_1211 = 0x00E181B1L;
            int32_t *l_1212 = (void*)0;
            int32_t *l_1213 = (void*)0;
            int32_t *l_1214 = &p_1658->g_733;
            int32_t *l_1215 = &p_1658->g_611;
            int32_t *l_1216 = &l_17[1][5][0];
            int32_t *l_1217[7];
            int32_t l_1223 = 0x56726A75L;
            uint32_t l_1225 = 4UL;
            int64_t **l_1242 = (void*)0;
            uint32_t **l_1268[2][2];
            int8_t l_1283 = (-1L);
            uint16_t l_1295 = 0UL;
            int32_t l_1351[3];
            uint8_t l_1372 = 0xCAL;
            int i, j;
            for (i = 0; i < 7; i++)
                l_1217[i] = (void*)0;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 2; j++)
                    l_1268[i][j] = (void*)0;
            }
            for (i = 0; i < 3; i++)
                l_1351[i] = (-1L);
            p_1658->g_1079.y &= ((((*l_1207) ^= func_60(p_1658->g_3, p_1658)) , l_1209) != &p_1658->g_25);
            l_1225++;
            for (l_1218 = (-9); (l_1218 < (-20)); --l_1218)
            { /* block id: 461 */
                uint8_t l_1238 = 0UL;
                int8_t *l_1263 = (void*)0;
                uint64_t l_1276 = 0UL;
                int16_t *l_1277 = &l_1224;
                int32_t **l_1278[1];
                uint32_t *l_1284 = (void*)0;
                uint64_t *l_1301 = &p_1658->g_502[3];
                VECTOR(uint32_t, 8) l_1347 = (VECTOR(uint32_t, 8))(0x4D2EB212L, (VECTOR(uint32_t, 4))(0x4D2EB212L, (VECTOR(uint32_t, 2))(0x4D2EB212L, 0xFB2A4AEFL), 0xFB2A4AEFL), 0xFB2A4AEFL, 0x4D2EB212L, 0xFB2A4AEFL);
                VECTOR(int64_t, 4) l_1355 = (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 6L), 6L);
                uint64_t l_1370 = 0x533BFABD5ECCB5FCL;
                int i;
                for (i = 0; i < 1; i++)
                    l_1278[i] = &l_1210;
                if (l_28.z)
                    break;
                for (l_1219 = 0; (l_1219 <= (-28)); l_1219 = safe_sub_func_uint32_t_u_u(l_1219, 4))
                { /* block id: 465 */
                    uint8_t l_1247 = 1UL;
                    int8_t *l_1250 = (void*)0;
                    int8_t *l_1251[10] = {&l_1222,&l_1222,&l_1222,&l_1222,&l_1222,&l_1222,&l_1222,&l_1222,&l_1222,&l_1222};
                    int i;
                    (*l_1214) &= (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_1658->g_1234.sf1)), 0x398048ED2F56CE48L, 0x0F51A92EF6B7E863L)).xyzxwzxxyxxzyzyw)).s4, (!(safe_rshift_func_int16_t_s_u(((((((((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 16))(0x55DE9420BA6E4E4AL, 0xE9D3A8307C09DACDL, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(p_1658->g_1237.s976dd5d60f9b7536)).odd)), ((VECTOR(uint64_t, 2))(18446744073709551607UL, 0xDB7D11A1ADC20E01L)), ((l_1247 = ((((((l_1238 | 255UL) , (((*p_1658->g_462) |= (safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1658->local_2_offset, get_local_id(2), 10), (l_1241 > ((l_1222 , l_1242) != (void*)0))))) > ((*p_1658->g_1028) &= ((((safe_sub_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s(0x2283L, ((l_1238 || (l_1238 , p_1658->g_123)) && 0x26E28CCDL))), GROUP_DIVERGE(0, 1))) < 0L) <= 0x7C64AF8BL) <= l_1241)))) , p_1658->g_499) , p_1658->g_470) , &p_1658->g_1065) == &p_1658->g_1065)) == l_28.z), ((VECTOR(uint64_t, 2))(0xFEA69C8A0D8ADDA2L)), 1UL)).hi, ((VECTOR(uint64_t, 8))(1UL))))).s1 == l_1238) , l_17[1][5][0]) , 0xB25CL) | 0x3464L) , 0xA575C5DAACCB9578L) ^ p_1658->g_213.x), 12)))));
                    (*l_1215) = (-1L);
                    if (((p_1658->g_360.s0 = (safe_div_func_uint16_t_u_u((*p_1658->g_462), 0x99ECL))) || p_1658->g_1252[8][0][0]))
                    { /* block id: 472 */
                        int16_t l_1253 = 0x330CL;
                        uint32_t l_1270 = 0xE88FBF66L;
                        (*p_1658->g_94) = l_1271;
                    }
                    else
                    { /* block id: 475 */
                        return p_1658->g_493[1];
                    }
                    for (p_1658->g_1206 = (-30); (p_1658->g_1206 < 55); p_1658->g_1206++)
                    { /* block id: 480 */
                        int64_t *l_1275 = (void*)0;
                        int64_t **l_1274 = &l_1275;
                        l_1274 = (void*)0;
                    }
                }
            }
        }
        l_1378 = l_1378;
    }
    else
    { /* block id: 516 */
        for (p_1658->g_390 = 0; (p_1658->g_390 > 58); p_1658->g_390++)
        { /* block id: 519 */
            return p_1658->g_333.s6;
        }
        (*p_1658->g_95) ^= 0L;
    }
    for (l_1218 = 0; (l_1218 <= (-26)); l_1218 = safe_sub_func_uint64_t_u_u(l_1218, 7))
    { /* block id: 526 */
        uint8_t l_1384 = 1UL;
        int32_t l_1389 = 0x0F200AFFL;
        VECTOR(int32_t, 8) l_1390 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, (-4L)), (-4L)), (-4L), 8L, (-4L));
        int32_t ***l_1403 = &p_1658->g_1071;
        uint64_t *l_1405[7];
        int32_t l_1406 = 0x29840A7BL;
        int32_t l_1408 = 0x2E406FA0L;
        uint32_t *l_1409 = &p_1658->g_1206;
        uint8_t l_1410[10];
        int16_t l_1435 = 0x1DE0L;
        uint8_t l_1436 = 0x2DL;
        int8_t *l_1499 = (void*)0;
        int32_t *****l_1525 = &p_1658->g_1519;
        VECTOR(int64_t, 2) l_1571 = (VECTOR(int64_t, 2))(0x56441A0B9C5D7D9AL, 0x39772F90D3DA4A8CL);
        int32_t *l_1576 = (void*)0;
        int32_t l_1613 = 0x4B5354F9L;
        VECTOR(int8_t, 4) l_1642 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x49L), 0x49L);
        VECTOR(uint32_t, 4) l_1647 = (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0x90F39822L), 0x90F39822L);
        int i;
        for (i = 0; i < 7; i++)
            l_1405[i] = (void*)0;
        for (i = 0; i < 10; i++)
            l_1410[i] = 255UL;
        if (l_1384)
            break;
    }
    return p_1658->g_1264.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_43
 * writes: p_1658->g_43
 */
int32_t  func_6(uint64_t  p_7, uint8_t  p_8, struct S0 * p_1658)
{ /* block id: 11 */
    int32_t *l_31 = (void*)0;
    int32_t *l_32 = &p_1658->g_33;
    int32_t *l_34 = &p_1658->g_33;
    int32_t l_35 = (-7L);
    int32_t *l_36 = &p_1658->g_33;
    int32_t l_37[9] = {0x1243B3BEL,0x1243B3BEL,0x1243B3BEL,0x1243B3BEL,0x1243B3BEL,0x1243B3BEL,0x1243B3BEL,0x1243B3BEL,0x1243B3BEL};
    int32_t *l_38 = (void*)0;
    int32_t *l_39 = &l_37[8];
    int32_t *l_40 = &l_37[4];
    int32_t *l_41[8];
    int i;
    for (i = 0; i < 8; i++)
        l_41[i] = &l_37[8];
    --p_1658->g_43;
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_3 p_1658->g_64 p_1658->g_33 p_1658->g_66 p_1658->g_27 p_1658->g_94 p_1658->g_541 p_1658->g_95 p_1658->g_179 p_1658->g_229 p_1658->g_230 p_1658->g_154 p_1658->g_274 p_1658->g_732 p_1658->g_733 p_1658->g_462 p_1658->g_25 p_1658->g_161 p_1658->g_422 p_1658->g_390 p_1658->g_565 p_1658->g_566 p_1658->g_42 p_1658->g_397 p_1658->g_502 p_1658->g_748 p_1658->g_923 p_1658->g_201 p_1658->g_360 p_1658->g_924 p_1658->g_986 p_1658->g_43 p_1658->g_20 p_1658->g_736 p_1658->g_1028 p_1658->g_1060 p_1658->g_951 p_1658->g_123 p_1658->g_497 p_1658->g_1065 p_1658->g_125 p_1658->g_213 p_1658->g_978 p_1658->g_140 p_1658->g_1061 p_1658->g_1146 p_1658->g_698 p_1658->g_611 p_1658->g_1205
 * writes: p_1658->g_3 p_1658->g_33 p_1658->g_66 p_1658->g_541 p_1658->g_154 p_1658->g_230 p_1658->g_611 p_1658->g_95 p_1658->g_186 p_1658->g_126 p_1658->g_714 p_1658->g_390 p_1658->g_470 p_1658->g_733 p_1658->g_359 p_1658->g_123 p_1658->g_924 p_1658->g_201 p_1658->g_43 p_1658->g_125 p_1658->g_1065 p_1658->g_497 p_1658->g_1206
 */
int32_t  func_60(int8_t  p_61, struct S0 * p_1658)
{ /* block id: 20 */
    VECTOR(uint32_t, 4) l_62 = (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0x47109BDDL), 0x47109BDDL);
    int32_t *l_63 = &p_1658->g_3;
    int32_t *l_65[7][3][3] = {{{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_3,&p_1658->g_33,&p_1658->g_33}}};
    uint8_t *l_1038 = (void*)0;
    int32_t **l_1184 = &l_63;
    uint32_t ***l_1204 = &p_1658->g_924;
    int i, j, k;
    (*p_1658->g_64) |= ((*l_63) &= l_62.y);
    if (p_1658->g_3)
        goto lbl_69;
lbl_69:
    p_1658->g_66--;
    for (p_1658->g_3 = 27; (p_1658->g_3 >= 19); p_1658->g_3 = safe_sub_func_int8_t_s_s(p_1658->g_3, 1))
    { /* block id: 27 */
        int16_t l_72[8][6][5] = {{{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L}},{{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L}},{{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L}},{{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L}},{{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L}},{{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L}},{{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L}},{{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L},{0x7607L,1L,0x2E84L,0x237DL,0L}}};
        uint8_t *l_1039 = (void*)0;
        int32_t l_1187 = (-1L);
        int32_t l_1188[3][3] = {{3L,3L,3L},{3L,3L,3L},{3L,3L,3L}};
        int32_t l_1189 = 0x5A2B7E66L;
        int32_t l_1190 = (-8L);
        uint32_t l_1191 = 0x6BE19DFBL;
        int i, j, k;
        if (l_72[6][1][2])
        { /* block id: 28 */
            return p_1658->g_27.x;
        }
        else
        { /* block id: 30 */
            int8_t *l_857 = &p_1658->g_123;
            int32_t l_860 = 0x0B5B4BF8L;
            uint8_t *l_920[9][9] = {{(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0},{(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0},{(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0},{(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0},{(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0},{(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0},{(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0},{(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0},{(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0,(void*)0,&p_1658->g_25,(void*)0}};
            uint32_t *l_1043 = (void*)0;
            uint32_t *l_1044 = &p_1658->g_201;
            uint64_t *l_1045 = (void*)0;
            uint64_t *l_1046 = (void*)0;
            uint64_t *l_1048[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_1049 = 0x7FAFD9E9L;
            int i, j;
            l_1184 = func_73((1L > ((func_6((safe_mul_func_int16_t_s_s((((l_1049 |= (safe_div_func_int8_t_s_s((func_6((safe_sub_func_uint32_t_u_u(((*l_1044) = func_84(func_90(p_1658->g_94, (*l_63), (l_920[1][6] = func_96((func_99(p_1658->g_33, p_1658) | p_1658->g_25), (((safe_rshift_func_int8_t_s_u((((((safe_sub_func_uint32_t_u_u(((p_1658->g_359.s6 = p_61) & ((*l_857) = 0L)), (safe_rshift_func_int8_t_s_s(l_860, p_1658->g_502[3])))) , (void*)0) == (void*)0) , p_61) < l_72[6][1][2]), l_72[6][1][2])) >= p_61) < l_72[6][1][2]), p_1658)), p_1658), l_1038, p_61, p_61, l_1039, p_1658)), l_860)), l_860, p_1658) == 0xD6L), FAKE_DIVERGE(p_1658->group_2_offset, get_group_id(2), 10)))) , l_1038) == (void*)0), l_72[6][1][2])), p_1658->g_20.y, p_1658) && p_61) <= GROUP_DIVERGE(2, 1))), p_61, l_860, l_63, p_1658);
            for (l_860 = 0; (l_860 == 7); l_860 = safe_add_func_int64_t_s_s(l_860, 6))
            { /* block id: 447 */
                return l_72[4][1][2];
            }
        }
        --l_1191;
    }
    p_1658->g_1206 = (((VECTOR(uint32_t, 8))(1UL, 4294967288UL, 0xB35FEE2AL, (safe_div_func_uint8_t_u_u(((*l_63) = ((p_61 , (p_61 | 9L)) & (safe_div_func_int16_t_s_s((*p_1658->g_1028), (safe_sub_func_uint32_t_u_u(((safe_sub_func_int32_t_s_s((safe_mul_func_int16_t_s_s(((((void*)0 != l_1204) & ((((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(0L, 0x01BB9DE218647498L)).yxxyxyxy, ((VECTOR(int64_t, 4))(3L, ((VECTOR(int64_t, 2))(p_1658->g_1205.see)), 1L)).xwyyxyyw))).s5 ^ 1UL) == p_61)) < p_61), FAKE_DIVERGE(p_1658->group_2_offset, get_group_id(2), 10))), p_61)) || p_61), p_61)))))), p_61)), 4294967289UL, p_61, 0xFB2FE2FFL, 0xCC8849A3L)).s1 , 0x1FB166B3L);
    return p_61;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_736 p_1658->g_1028 p_1658->g_1060 p_1658->g_951 p_1658->g_123 p_1658->g_497 p_1658->g_714 p_1658->g_1065 p_1658->g_1068 p_1658->g_3 p_1658->g_1079 p_1658->g_64 p_1658->g_1098 p_1658->g_125 p_1658->g_230 p_1658->g_33 p_1658->g_229 p_1658->g_201 p_1658->g_213 p_1658->g_978 p_1658->g_140 p_1658->g_1061 p_1658->g_1146 p_1658->g_462 p_1658->g_390 p_1658->g_179 p_1658->g_1169 p_1658->g_698 p_1658->g_611
 * writes: p_1658->g_125 p_1658->g_123 p_1658->g_714 p_1658->g_1065 p_1658->g_1071 p_1658->g_230 p_1658->g_33 p_1658->g_842 p_1658->g_497 p_1658->g_201 p_1658->g_390 p_1658->g_154 p_1658->g_611
 */
int32_t ** func_73(int16_t  p_74, int32_t  p_75, uint64_t  p_76, int32_t * p_77, struct S0 * p_1658)
{ /* block id: 372 */
    int8_t l_1058 = 0x21L;
    int32_t l_1059 = 1L;
    int8_t *l_1062 = &p_1658->g_123;
    uint8_t l_1092 = 251UL;
    uint64_t l_1093 = 18446744073709551615UL;
    VECTOR(uint8_t, 4) l_1105 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x35L), 0x35L);
    int32_t l_1128 = (-7L);
    int32_t l_1129 = 0x0735ADF6L;
    int32_t l_1130 = (-1L);
    int32_t l_1131 = 0x408D71C4L;
    int32_t l_1132 = 0x70E7E513L;
    int32_t l_1133 = (-10L);
    VECTOR(int32_t, 8) l_1134 = (VECTOR(int32_t, 8))(0x68BEE407L, (VECTOR(int32_t, 4))(0x68BEE407L, (VECTOR(int32_t, 2))(0x68BEE407L, 0x3021EEC1L), 0x3021EEC1L), 0x3021EEC1L, 0x68BEE407L, 0x3021EEC1L);
    uint32_t l_1135 = 0x123F33F8L;
    uint32_t **l_1145 = (void*)0;
    int32_t l_1150 = (-1L);
    VECTOR(int32_t, 8) l_1181 = (VECTOR(int32_t, 8))(0x2BAB396BL, (VECTOR(int32_t, 4))(0x2BAB396BL, (VECTOR(int32_t, 2))(0x2BAB396BL, 1L), 1L), 1L, 0x2BAB396BL, 1L);
    int i;
    if (((FAKE_DIVERGE(p_1658->local_0_offset, get_local_id(0), 10) & ((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s(((((VECTOR(int8_t, 2))(0x5CL, 0x73L)).lo && ((*l_1062) ^= (safe_sub_func_uint32_t_u_u(p_74, (((*p_1658->g_1028) = (p_1658->g_736.s4 || 0x4AF14FDA08F8CC9CL)) < ((((safe_lshift_func_int8_t_s_s(p_75, 5)) == (((l_1059 = l_1058) ^ l_1058) || ((9L < ((void*)0 != p_1658->g_1060)) == p_74))) , 0x3BDA2EA7DF3EB20EL) || p_1658->g_951.y)))))) != (-6L)), 6)), 7UL)) >= p_1658->g_497)) <= (-1L)))
    { /* block id: 376 */
        uint8_t l_1069 = 0xA3L;
        VECTOR(int8_t, 8) l_1076 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-6L)), (-6L)), (-6L), 1L, (-6L));
        int32_t l_1091[7][2][1] = {{{0x3ADC2E7AL},{0x3ADC2E7AL}},{{0x3ADC2E7AL},{0x3ADC2E7AL}},{{0x3ADC2E7AL},{0x3ADC2E7AL}},{{0x3ADC2E7AL},{0x3ADC2E7AL}},{{0x3ADC2E7AL},{0x3ADC2E7AL}},{{0x3ADC2E7AL},{0x3ADC2E7AL}},{{0x3ADC2E7AL},{0x3ADC2E7AL}}};
        int32_t **l_1122[5];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1122[i] = (void*)0;
        for (p_1658->g_714 = (-30); (p_1658->g_714 >= (-11)); ++p_1658->g_714)
        { /* block id: 379 */
            int32_t * volatile **l_1067 = &p_1658->g_1065;
            VECTOR(int32_t, 16) l_1070 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x76C70524L), 0x76C70524L), 0x76C70524L, 2L, 0x76C70524L, (VECTOR(int32_t, 2))(2L, 0x76C70524L), (VECTOR(int32_t, 2))(2L, 0x76C70524L), 2L, 0x76C70524L, 2L, 0x76C70524L);
            int32_t **l_1073[7];
            int32_t ***l_1072 = &l_1073[5];
            int32_t *l_1088 = &p_1658->g_230;
            int32_t *l_1089 = (void*)0;
            int32_t *l_1090[4][10] = {{&p_1658->g_3,(void*)0,(void*)0,&p_1658->g_3,&l_1059,(void*)0,(void*)0,&l_1059,&p_1658->g_3,(void*)0},{&p_1658->g_3,(void*)0,(void*)0,&p_1658->g_3,&l_1059,(void*)0,(void*)0,&l_1059,&p_1658->g_3,(void*)0},{&p_1658->g_3,(void*)0,(void*)0,&p_1658->g_3,&l_1059,(void*)0,(void*)0,&l_1059,&p_1658->g_3,(void*)0},{&p_1658->g_3,(void*)0,(void*)0,&p_1658->g_3,&l_1059,(void*)0,(void*)0,&l_1059,&p_1658->g_3,(void*)0}};
            uint32_t l_1094 = 4294967292UL;
            int i, j;
            for (i = 0; i < 7; i++)
                l_1073[i] = &p_1658->g_1066;
            (*l_1067) = p_1658->g_1065;
            if (((l_1059 || ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_1658->g_1068.wx)), l_1069, ((VECTOR(int32_t, 2))(l_1070.s8b)), ((p_1658->g_1071 = &p_1658->g_1066) == ((*l_1072) = &p_1658->g_1066)), (-1L), (*p_77), (~(safe_mod_func_int8_t_s_s(p_74, ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x08L, 0x70L)), ((VECTOR(int8_t, 2))(l_1076.s67)), (p_1658->g_842.s0 = (safe_lshift_func_int8_t_s_u((((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_1658->g_1079.xxxyxyyyyxxxxxxx)))))).hi)).s3 , ((((VECTOR(int16_t, 2))(0x3433L, 2L)).even > (safe_add_func_int64_t_s_s(((safe_rshift_func_int8_t_s_u(((((*p_1658->g_64) = (l_1091[0][1][0] = ((*l_1088) = ((*p_77) > ((safe_div_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(p_76, p_76)), 4L)) ^ l_1058))))) >= 1L) , l_1092), 7)) != l_1093), 0UL))) , 0x6F0EL)) ^ p_74) ^ 0x1523625DB1D61B70L), p_1658->g_497))), ((VECTOR(int8_t, 2))(0x61L)), 0L)).lo, ((VECTOR(int8_t, 4))(0x7DL))))).z))), ((VECTOR(int32_t, 4))(0x4C9AC12BL)), 0x3AD04775L, 1L, 0x7AF2E6DBL)).se) >= l_1094))
            { /* block id: 387 */
                uint32_t l_1095 = 2UL;
                l_1095 &= (~l_1058);
                (*l_1088) |= (safe_lshift_func_int16_t_s_s(l_1058, ((*p_1658->g_1028) |= ((VECTOR(int16_t, 8))(p_1658->g_1098.sa6d6b6d2)).s5)));
                for (p_1658->g_497 = 6; (p_1658->g_497 > (-22)); --p_1658->g_497)
                { /* block id: 393 */
                    if ((*p_1658->g_64))
                        break;
                    for (p_75 = 0; (p_75 <= 25); p_75 = safe_add_func_int32_t_s_s(p_75, 1))
                    { /* block id: 397 */
                        uint32_t *l_1108 = (void*)0;
                        uint32_t *l_1109 = (void*)0;
                        uint32_t *l_1110 = (void*)0;
                        uint32_t *l_1111 = (void*)0;
                        uint32_t *l_1112 = (void*)0;
                        uint32_t *l_1113 = &p_1658->g_201;
                        VECTOR(int8_t, 16) l_1118 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x35L), 0x35L), 0x35L, (-1L), 0x35L, (VECTOR(int8_t, 2))((-1L), 0x35L), (VECTOR(int8_t, 2))((-1L), 0x35L), (-1L), 0x35L, (-1L), 0x35L);
                        int i;
                        (*l_1088) &= (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(l_1105.wxxzxxwx)).s2, 5));
                        l_1091[0][1][0] = (safe_lshift_func_int8_t_s_s((p_76 , (((*p_1658->g_229) == FAKE_DIVERGE(p_1658->global_1_offset, get_global_id(1), 10)) | ((*l_1113)++))), (((*l_1088) | (safe_sub_func_int8_t_s_s(p_1658->g_213.w, p_76))) , ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_1118.s30c1)).wwwwyxxxwxzyxxwz)).s1)));
                    }
                }
                return &p_1658->g_95;
            }
            else
            { /* block id: 404 */
                for (l_1094 = 0; (l_1094 > 1); l_1094 = safe_add_func_uint16_t_u_u(l_1094, 4))
                { /* block id: 407 */
                    int32_t **l_1121[3][1];
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_1121[i][j] = &l_1090[2][4];
                    }
                    return l_1122[1];
                }
            }
            return &p_1658->g_95;
        }
        for (l_1092 = 0; (l_1092 < 22); l_1092++)
        { /* block id: 415 */
            uint64_t l_1127 = 18446744073709551615UL;
            l_1127 = ((p_1658->g_978.y , (safe_rshift_func_uint16_t_u_u((p_74 && (-1L)), 15))) || p_1658->g_140.y);
        }
        --l_1135;
    }
    else
    { /* block id: 419 */
        uint8_t l_1138 = 0x53L;
        l_1138++;
        l_1133 |= (((*p_1658->g_462) = (0L >= ((((p_74 , (*p_1658->g_1060)) != (*p_1658->g_1060)) || (((-1L) ^ (safe_lshift_func_uint16_t_u_u((+(safe_div_func_uint64_t_u_u((l_1145 == p_1658->g_1146), (safe_mul_func_int16_t_s_s((((*p_1658->g_462) , (l_1150 , p_75)) >= 0x3AEAL), 1UL))))), p_75))) & l_1131)) > p_1658->g_390))) == l_1105.x);
    }
    for (p_1658->g_123 = 8; (p_1658->g_123 < 9); ++p_1658->g_123)
    { /* block id: 426 */
        int32_t *l_1155 = &p_1658->g_611;
        int32_t l_1180 = 0x63BD6018L;
        uint8_t *l_1182 = (void*)0;
        for (l_1059 = 0; (l_1059 > 28); l_1059 = safe_add_func_int16_t_s_s(l_1059, 9))
        { /* block id: 429 */
            int16_t **l_1162 = &p_1658->g_456[2];
            int8_t l_1172 = 1L;
            uint8_t *l_1177 = (void*)0;
            uint8_t *l_1178 = (void*)0;
            uint8_t *l_1179 = &l_1092;
            (*p_1658->g_179) = l_1155;
            l_1180 = ((safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u((--(*p_1658->g_462)), ((void*)0 == l_1162))), p_74)) < ((*l_1155) = ((safe_div_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 8))(p_1658->g_1169.s1a971fa6)).s5, (safe_sub_func_int32_t_s_s((0x41L < p_75), (l_1172 > ((safe_lshift_func_int8_t_s_s((&l_1172 == &l_1058), (safe_lshift_func_uint8_t_u_s(((*l_1179) = p_74), p_1658->g_698.y)))) > 0x1A4E34D9L)))))) || l_1172), 15)) > (*l_1155)), p_74)) ^ (-6L))));
            (*l_1155) &= ((VECTOR(int32_t, 2))(l_1181.s64)).even;
            if ((*p_77))
                break;
        }
        (*l_1155) &= ((l_1182 = &p_1658->g_25) == (void*)0);
        (*p_1658->g_179) = p_77;
    }
    l_1181.s7 |= ((void*)0 != p_77);
    return &p_1658->g_95;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_84(int32_t * p_85, uint8_t * p_86, int32_t  p_87, uint32_t  p_88, uint8_t * p_89, struct S0 * p_1658)
{ /* block id: 367 */
    VECTOR(uint32_t, 8) l_1040 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x84487099L), 0x84487099L), 0x84487099L, 0UL, 0x84487099L);
    int i;
    --l_1040.s4;
    return l_1040.s0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_923 p_1658->g_732 p_1658->g_33 p_1658->g_937 p_1658->g_201 p_1658->g_462 p_1658->g_390 p_1658->g_950 p_1658->g_951 p_1658->g_502 p_1658->g_837 p_1658->g_924 p_1658->g_692 p_1658->g_978 p_1658->g_986 p_1658->g_397 p_1658->g_161 p_1658->g_274 p_1658->g_360 p_1658->g_179 p_1658->g_94 p_1658->g_95
 * writes: p_1658->g_924 p_1658->g_33 p_1658->g_201 p_1658->g_502 p_1658->g_842 p_1658->g_390 p_1658->g_154
 */
int32_t * func_90(int32_t ** p_91, uint32_t  p_92, uint8_t * p_93, struct S0 * p_1658)
{ /* block id: 325 */
    uint32_t *l_922 = &p_1658->g_201;
    uint32_t **l_921 = &l_922;
    VECTOR(uint64_t, 8) l_927 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
    VECTOR(uint64_t, 4) l_928 = (VECTOR(uint64_t, 4))(0xA9C828A645CE09CDL, (VECTOR(uint64_t, 2))(0xA9C828A645CE09CDL, 0UL), 0UL);
    VECTOR(uint64_t, 2) l_929 = (VECTOR(uint64_t, 2))(8UL, 1UL);
    int16_t *l_932[10][2];
    int32_t l_933 = (-7L);
    VECTOR(int32_t, 2) l_936 = (VECTOR(int32_t, 2))(0x2EA3F71FL, 1L);
    VECTOR(int8_t, 2) l_938 = (VECTOR(int8_t, 2))(9L, 0L);
    VECTOR(uint8_t, 2) l_939 = (VECTOR(uint8_t, 2))(0UL, 1UL);
    int16_t **l_943[10][10] = {{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0},{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0},{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0},{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0},{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0},{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0},{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0},{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0},{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0},{(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0,(void*)0,&p_1658->g_456[2],&p_1658->g_456[2],&p_1658->g_456[2],(void*)0}};
    int16_t ***l_942 = &l_943[5][5];
    int16_t l_944 = 3L;
    VECTOR(uint16_t, 8) l_947 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 8UL), 8UL), 8UL, 1UL, 8UL);
    VECTOR(uint16_t, 16) l_948 = (VECTOR(uint16_t, 16))(0x9615L, (VECTOR(uint16_t, 4))(0x9615L, (VECTOR(uint16_t, 2))(0x9615L, 1UL), 1UL), 1UL, 0x9615L, 1UL, (VECTOR(uint16_t, 2))(0x9615L, 1UL), (VECTOR(uint16_t, 2))(0x9615L, 1UL), 0x9615L, 1UL, 0x9615L, 1UL);
    VECTOR(uint32_t, 4) l_949 = (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967290UL), 4294967290UL);
    int64_t l_963 = 0x3E6E5D7188114EC2L;
    uint32_t l_968 = 1UL;
    VECTOR(int8_t, 8) l_972 = (VECTOR(int8_t, 8))(0x51L, (VECTOR(int8_t, 4))(0x51L, (VECTOR(int8_t, 2))(0x51L, 0L), 0L), 0L, 0x51L, 0L);
    int32_t l_987 = 1L;
    VECTOR(int64_t, 4) l_1020 = (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x7C48A69FCDDD8D04L), 0x7C48A69FCDDD8D04L);
    uint32_t l_1035 = 0xEBF0C5BCL;
    int i, j;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
            l_932[i][j] = (void*)0;
    }
    (*p_1658->g_923) = l_921;
    if ((safe_rshift_func_uint16_t_u_s((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 8))(1UL, ((VECTOR(uint64_t, 4))(l_927.s1315)), ((VECTOR(uint64_t, 2))(l_928.yy)), 18446744073709551612UL)).s6026711510463443, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(l_929.xxxxxxxx)).even)).xxzwyzxzyyxzxwxz))).sfd)).hi || ((p_92 && (((*p_1658->g_732) |= (safe_lshift_func_uint16_t_u_u(6UL, 12))) == ((((l_933 = l_928.y) > (safe_div_func_int32_t_s_s(((VECTOR(int32_t, 4))(l_936.yxyx)).x, 0x3A740D05L))) & l_928.w) <= ((((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_1658->g_937.safaf8c23159f6313)).seb56)).z > ((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_938.yyyyxxxy)).s12)).odd | ((VECTOR(uint8_t, 2))(l_939.xx)).odd) >= 0xCAL)) & (FAKE_DIVERGE(p_1658->global_2_offset, get_global_id(2), 10) != (((*l_922) |= (safe_mul_func_uint8_t_u_u((!(((*l_942) = &p_1658->g_456[3]) != (void*)0)), l_929.x))) & GROUP_DIVERGE(2, 1)))) == l_944) & l_927.s5)))) ^ p_92)), l_939.y)))
    { /* block id: 331 */
        uint64_t *l_958 = &p_1658->g_502[0];
        VECTOR(int32_t, 16) l_964 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int32_t, 2))(0L, 0L), (VECTOR(int32_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
        int64_t *l_965 = &l_963;
        uint64_t *l_966[2];
        int32_t l_967 = 6L;
        VECTOR(int8_t, 8) l_979 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x3EL), 0x3EL), 0x3EL, 9L, 0x3EL);
        VECTOR(uint32_t, 2) l_1009 = (VECTOR(uint32_t, 2))(0UL, 4294967286UL);
        int32_t *l_1011 = &l_933;
        int8_t *l_1014 = (void*)0;
        int8_t *l_1015 = (void*)0;
        uint8_t *l_1032 = (void*)0;
        uint8_t *l_1033 = (void*)0;
        uint8_t *l_1034 = &p_1658->g_25;
        int i;
        for (i = 0; i < 2; i++)
            l_966[i] = (void*)0;
        if ((l_936.x = ((safe_mul_func_uint16_t_u_u((*p_1658->g_462), (l_968 ^= ((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 8))(0x85FAL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_947.s35)).xyyxxxyy)).even)).odd)), 0x854CL, 0xEA5DL)).lo, ((VECTOR(uint16_t, 4))(l_948.sd266)).lo, ((VECTOR(uint16_t, 16))((((((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((**l_921) = ((VECTOR(uint32_t, 16))(l_949.yyywzwwywxxyzxww)).s9), 4294967294UL, ((VECTOR(uint32_t, 4))(2UL, ((VECTOR(uint32_t, 2))(p_1658->g_950.yz)), 9UL)), 0x966BDDB1L, 4294967293UL)), ((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),uint32_t,((VECTOR(uint32_t, 2))(p_1658->g_951.xy)).yxyx, (uint32_t)(safe_add_func_uint64_t_u_u((l_967 |= (0x112F67F32CF06AD6L <= ((l_933 = l_929.x) && (safe_sub_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(((*l_965) = ((((*l_958)--) | (safe_add_func_uint64_t_u_u(((FAKE_DIVERGE(p_1658->global_2_offset, get_global_id(2), 10) , 0x5294F35F7C14DE51L) , 4UL), (l_928.x , (l_933 = l_963))))) & ((-5L) == ((l_964.s8 , p_1658->g_837.x) == 1UL)))), 1UL)), l_936.y))))), 4L)), (uint32_t)(**p_1658->g_924)))), (**p_1658->g_924), ((VECTOR(uint32_t, 2))(0xED8D1B97L)), 0x69F0F4C0L)))).s8 > l_949.x) >= l_964.s6) , &p_1658->g_421) == &p_1658->g_125) & p_1658->g_692.y), 1UL, ((VECTOR(uint16_t, 4))(65535UL)), p_92, 0UL, (*p_1658->g_462), 0x93EAL, 65535UL, 0xDFF0L, ((VECTOR(uint16_t, 2))(1UL)), 0x37F3L, 0UL)).sd4))).xyxx)), 4UL, 65528UL, 0x1F45L)).s1365071617346315, ((VECTOR(uint16_t, 16))(0xF751L))))).odd)).s2150653032352071, ((VECTOR(uint16_t, 16))(0xBBFEL)), ((VECTOR(uint16_t, 16))(0x2270L))))).lo, ((VECTOR(uint16_t, 8))(0UL))))), ((VECTOR(uint16_t, 8))(1UL))))))).s7 && 0UL) || p_92)))) > l_936.y)))
        { /* block id: 340 */
            VECTOR(int8_t, 8) l_971 = (VECTOR(int8_t, 8))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x2FL), 0x2FL), 0x2FL, (-5L), 0x2FL);
            VECTOR(int8_t, 8) l_973 = (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x36L), 0x36L), 0x36L, 6L, 0x36L);
            int8_t *l_974[10][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            VECTOR(int8_t, 8) l_975 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2BL), 0x2BL), 0x2BL, 1L, 0x2BL);
            int32_t *l_988 = &l_933;
            uint8_t *l_999 = (void*)0;
            uint8_t *l_1000 = (void*)0;
            uint8_t *l_1001 = (void*)0;
            uint8_t *l_1002 = (void*)0;
            uint8_t *l_1003[9][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int i, j;
            (*l_988) |= (l_964.s8 && (safe_sub_func_int16_t_s_s(((l_932[4][0] != ((p_92 | ((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(0x6CL, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-2L), 0x44L)).xxxy)), 0x48L, 0x6BL, (-1L), 0x76L, (p_1658->g_842.s8 = ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(0x66L, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_971.s42)).yxyyxxyy)).hi, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_972.s6657301201600377)).sc6)))).xxxxxyyxyyxxxxxx)).sd6e1))).xyzwwzwxxzxyyzyz)).s99, ((VECTOR(int8_t, 16))(l_973.s5023174010112003)).sad))), 0x0AL)).yzzzwzzx))))).s3), ((VECTOR(int8_t, 2))(l_975.s21)), (safe_rshift_func_uint16_t_u_u(0x2645L, (l_964.s3 = (*p_1658->g_462)))), (-7L), (-10L), 0x21L)).odd, ((VECTOR(int8_t, 8))(p_1658->g_978.yyyyyyxx)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_979.s6155)), l_927.s7, ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 8))(0L, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(0x13L, (safe_div_func_uint64_t_u_u((((safe_mod_func_uint16_t_u_u(((*p_1658->g_462) = ((((((((((*l_965) = (0UL >= (((((((VECTOR(int64_t, 16))((!((safe_div_func_uint8_t_u_u(p_1658->g_986, l_979.s0)) > FAKE_DIVERGE(p_1658->local_0_offset, get_local_id(0), 10))), ((VECTOR(int64_t, 2))((-1L))), (-2L), 0x1E3689139E5FC462L, ((VECTOR(int64_t, 8))((-9L))), p_92, 0x1680C3AB295D3851L, 0x723D5D2ED82DECE1L)).se >= p_1658->g_397.y) <= 0UL) ^ p_92) && p_1658->g_161.x) & (**p_1658->g_924)))) ^ 0xE477032B1C9A041CL) , p_92) || 3L) , FAKE_DIVERGE(p_1658->local_0_offset, get_local_id(0), 10)) | 5L) >= 0x75L) == l_971.s1) || l_929.y)), 0x27AEL)) && l_971.s5) == l_948.s4), 1L)), 0x19L, ((VECTOR(int8_t, 2))((-2L))), 8L, 0x77L, 2L)).s1, p_1658->g_502[3], 0x2BL, p_92, 0x3AL, l_979.s3, 0x3CL, l_987, ((VECTOR(int8_t, 8))(0L)))).sb, ((VECTOR(int8_t, 4))(0x51L)), 0L, (-6L))), (int8_t)l_938.x, (int8_t)(-7L)))).s2457406724753314, (int8_t)p_1658->g_274.y))).sb, 0x56L, 0x68L, l_928.y, ((VECTOR(int8_t, 4))(0L)))).s50, ((VECTOR(int8_t, 2))((-1L)))))), 0x5CL)), (-1L), 0x69L, 0x06L, 0x35L, 0x18L, 1L, 9L, 0x6CL)).s8f32, ((VECTOR(int8_t, 4))(0x61L))))).yzxwzxxw)).s20, ((VECTOR(int8_t, 2))(0L)), ((VECTOR(int8_t, 2))((-1L)))))).yyxxxxyyxyxyxyyx)).even))))).s6 , 0L) > (-3L))) , &p_1658->g_66)) , (-6L)), 1L)));
            (*l_988) = (p_1658->g_360.s5 | (safe_div_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(((&p_1658->g_470 != (void*)0) != ((**p_1658->g_924) ^= (safe_rshift_func_int8_t_s_s(((void*)0 != l_922), (*l_988))))), (l_967 &= (l_964.s4 = (((safe_rshift_func_uint16_t_u_u(((p_1658->g_986 <= (!p_92)) , ((+(l_936.y ^= (!l_949.x))) , (*l_988))), p_92)) > (*p_1658->g_462)) != 0x24F1L))))), l_979.s5)));
        }
        else
        { /* block id: 351 */
            int8_t l_1004 = 0x38L;
            int32_t *l_1005[3][8][9] = {{{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0}},{{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0}},{{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0},{&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,&p_1658->g_733,(void*)0,(void*)0,&p_1658->g_611,&l_967,(void*)0}}};
            uint64_t l_1006 = 0xC32A5ACB989AC543L;
            int i, j, k;
            l_1006--;
        }
        (*l_1011) = (l_964.s5 & ((VECTOR(uint32_t, 4))(l_1009.xxxy)).w);
        (*p_1658->g_179) = &l_933;
    }
    else
    { /* block id: 363 */
        VECTOR(int32_t, 16) l_1036 = (VECTOR(int32_t, 16))(0x7112571EL, (VECTOR(int32_t, 4))(0x7112571EL, (VECTOR(int32_t, 2))(0x7112571EL, 0x341543A8L), 0x341543A8L), 0x341543A8L, 0x7112571EL, 0x341543A8L, (VECTOR(int32_t, 2))(0x7112571EL, 0x341543A8L), (VECTOR(int32_t, 2))(0x7112571EL, 0x341543A8L), 0x7112571EL, 0x341543A8L, 0x7112571EL, 0x341543A8L);
        int32_t *l_1037 = &l_987;
        int i;
        (*l_1037) = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_1036.s29d0)).zzyzzyzx)).s5;
    }
    return (*p_1658->g_94);
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_126 p_1658->g_566 p_1658->g_42 p_1658->g_748 p_1658->g_732
 * writes: p_1658->g_126 p_1658->g_33
 */
uint8_t * func_96(uint32_t  p_97, uint64_t  p_98, struct S0 * p_1658)
{ /* block id: 302 */
    int64_t l_867 = 1L;
    VECTOR(int8_t, 2) l_873 = (VECTOR(int8_t, 2))(0x27L, (-7L));
    uint32_t *l_884 = &p_1658->g_885;
    int32_t l_897 = 0L;
    int32_t l_898[1];
    int32_t l_900 = 0x75F419E2L;
    int32_t l_903 = 0x3C56F016L;
    int16_t **l_917 = &p_1658->g_456[2];
    int16_t ***l_916[1][7][10] = {{{&l_917,&l_917,(void*)0,&l_917,&l_917,&l_917,&l_917,(void*)0,&l_917,&l_917},{&l_917,&l_917,(void*)0,&l_917,&l_917,&l_917,&l_917,(void*)0,&l_917,&l_917},{&l_917,&l_917,(void*)0,&l_917,&l_917,&l_917,&l_917,(void*)0,&l_917,&l_917},{&l_917,&l_917,(void*)0,&l_917,&l_917,&l_917,&l_917,(void*)0,&l_917,&l_917},{&l_917,&l_917,(void*)0,&l_917,&l_917,&l_917,&l_917,(void*)0,&l_917,&l_917},{&l_917,&l_917,(void*)0,&l_917,&l_917,&l_917,&l_917,(void*)0,&l_917,&l_917},{&l_917,&l_917,(void*)0,&l_917,&l_917,&l_917,&l_917,(void*)0,&l_917,&l_917}}};
    int32_t *l_918 = &p_1658->g_33;
    uint8_t *l_919 = (void*)0;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_898[i] = 1L;
    for (p_1658->g_126 = 0; (p_1658->g_126 >= 26); p_1658->g_126++)
    { /* block id: 305 */
        uint32_t l_868[2];
        int32_t ***l_869[10] = {&p_1658->g_179,&p_1658->g_94,&p_1658->g_179,&p_1658->g_179,&p_1658->g_94,&p_1658->g_179,&p_1658->g_179,&p_1658->g_94,&p_1658->g_179,&p_1658->g_179};
        VECTOR(int16_t, 2) l_870 = (VECTOR(int16_t, 2))((-3L), 0x6635L);
        VECTOR(int16_t, 16) l_871 = (VECTOR(int16_t, 16))(0x1DD0L, (VECTOR(int16_t, 4))(0x1DD0L, (VECTOR(int16_t, 2))(0x1DD0L, 1L), 1L), 1L, 0x1DD0L, 1L, (VECTOR(int16_t, 2))(0x1DD0L, 1L), (VECTOR(int16_t, 2))(0x1DD0L, 1L), 0x1DD0L, 1L, 0x1DD0L, 1L);
        VECTOR(uint8_t, 2) l_874 = (VECTOR(uint8_t, 2))(2UL, 254UL);
        VECTOR(uint16_t, 16) l_877 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 9UL), 9UL), 9UL, 0UL, 9UL, (VECTOR(uint16_t, 2))(0UL, 9UL), (VECTOR(uint16_t, 2))(0UL, 9UL), 0UL, 9UL, 0UL, 9UL);
        uint32_t *l_883 = &p_1658->g_126;
        uint32_t **l_882[2];
        int64_t *l_894 = (void*)0;
        int64_t *l_895 = (void*)0;
        int64_t *l_896[9][1][10] = {{{(void*)0,(void*)0,(void*)0,&p_1658->g_42,(void*)0,(void*)0,(void*)0,&l_867,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1658->g_42,(void*)0,(void*)0,(void*)0,&l_867,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1658->g_42,(void*)0,(void*)0,(void*)0,&l_867,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1658->g_42,(void*)0,(void*)0,(void*)0,&l_867,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1658->g_42,(void*)0,(void*)0,(void*)0,&l_867,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1658->g_42,(void*)0,(void*)0,(void*)0,&l_867,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1658->g_42,(void*)0,(void*)0,(void*)0,&l_867,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1658->g_42,(void*)0,(void*)0,(void*)0,&l_867,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1658->g_42,(void*)0,(void*)0,(void*)0,&l_867,(void*)0,(void*)0}}};
        int16_t *l_899[9][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t ***l_902[7][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t ****l_901 = &l_902[5][4];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_868[i] = 0xFDEF3FE8L;
        for (i = 0; i < 2; i++)
            l_882[i] = &l_883;
        for (p_98 = 0; (p_98 >= 58); ++p_98)
        { /* block id: 308 */
            l_868[1] ^= (l_867 = (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), p_98)));
        }
        l_903 = ((~(-2L)) , (l_869[6] != ((*l_901) = (((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 4))(l_870.xxyy)).hi, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_871.s0032031ebe07566f)))).s00))).xxyxyxxy))).hi)), ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 4))(0x223FL, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1658->g_872.zy)).yyyy)).lo)), 0x3E83L)).even, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_873.yy)).xyxyyxyy)).even)).lo, ((VECTOR(uint8_t, 4))(l_874.yyxx)).hi))).xyxyyxxy, (int16_t)(l_900 = (safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_877.s5a8123b2)).s0, (safe_sub_func_int32_t_s_s((p_97 && (safe_div_func_uint32_t_u_u(((l_884 = (void*)0) == (void*)0), (l_898[0] = ((l_897 |= (safe_add_func_uint64_t_u_u(((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 4))((safe_sub_func_uint64_t_u_u((p_98 | (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1658->local_0_offset, get_local_id(0), 10), 4))), (p_1658->g_698.y ^= (1L < 0L)))), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(250UL, ((*p_1658->g_732) > 0x3F57E144L), 0x43L, 251UL, 0xBFL, ((VECTOR(uint8_t, 2))(2UL)), 247UL)).s45)), 0x3DL)).z, p_1658->g_712.s2)) <= p_98), l_873.x))) ^ 0x832B9427DBC484D0L))))), p_98)))))))).even)).lo))), 0L, (-1L))).even)).yyxwzwxz, ((VECTOR(int16_t, 8))(0x7B3FL)), ((VECTOR(int16_t, 8))((-1L)))))).s6 , l_869[6]))));
        l_898[0] &= (~(p_98 == ((-1L) || (*p_1658->g_566))));
        (*p_1658->g_732) = (l_873.x ^ ((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(p_98, ((safe_mod_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), (~(0xEB94EBA163191690L || (safe_mul_func_int8_t_s_s(((l_916[0][5][4] == &p_1658->g_187) , (&l_899[5][1] != (void*)0)), (&p_1658->g_714 == l_883))))))), p_1658->g_748.sf)) | FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10)))), 1UL)) > p_98));
    }
    (*l_918) = 1L;
    return l_919;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_64 p_1658->g_33 p_1658->g_541 p_1658->g_94 p_1658->g_95 p_1658->g_179 p_1658->g_641 p_1658->g_644 p_1658->g_3 p_1658->g_229 p_1658->g_230 p_1658->g_154 p_1658->g_692 p_1658->g_698 p_1658->g_126 p_1658->g_712 p_1658->g_274 p_1658->g_732 p_1658->g_733 p_1658->g_736 p_1658->g_462 p_1658->g_740 p_1658->g_743 p_1658->g_27 p_1658->g_25 p_1658->g_161 p_1658->g_470 p_1658->g_748 p_1658->g_749 p_1658->g_360 p_1658->g_390 p_1658->g_565 p_1658->g_566 p_1658->g_42 p_1658->g_397 p_1658->g_201 p_1658->g_422 p_1658->g_837 p_1658->g_839 p_1658->g_842 p_1658->g_356 p_1658->g_213 p_1658->g_849
 * writes: p_1658->g_541 p_1658->g_154 p_1658->g_66 p_1658->g_230 p_1658->g_611 p_1658->g_95 p_1658->g_33 p_1658->g_186 p_1658->g_126 p_1658->g_714 p_1658->g_390 p_1658->g_470 p_1658->g_213 p_1658->g_360 p_1658->g_27 p_1658->g_692 p_1658->g_733 p_1658->g_125
 */
uint8_t  func_99(int64_t  p_100, struct S0 * p_1658)
{ /* block id: 31 */
    int8_t l_101 = (-2L);
    int32_t *l_182 = &p_1658->g_3;
    uint8_t *l_185[9][10][2] = {{{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0}},{{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0}},{{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0}},{{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0}},{{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0}},{{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0}},{{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0}},{{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0}},{{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0},{&p_1658->g_25,(void*)0}}};
    int32_t l_496 = 1L;
    int32_t l_498 = 0x71E56672L;
    int32_t l_500 = 0x77FCAADFL;
    int16_t **l_511 = (void*)0;
    int16_t *l_520 = (void*)0;
    VECTOR(uint64_t, 2) l_527 = (VECTOR(uint64_t, 2))(0xBDFC6089144A91FBL, 0x1F4E0FDE32081513L);
    uint32_t l_538 = 4294967294UL;
    uint64_t *l_552 = (void*)0;
    int64_t *l_568 = &p_1658->g_42;
    int64_t **l_567 = &l_568;
    VECTOR(int64_t, 8) l_590 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 4L), 4L), 4L, 0L, 4L);
    VECTOR(uint64_t, 4) l_593 = (VECTOR(uint64_t, 4))(0xB7D45F815CAE4B2DL, (VECTOR(uint64_t, 2))(0xB7D45F815CAE4B2DL, 0UL), 0UL);
    uint16_t l_613 = 1UL;
    uint32_t l_638 = 0x5C3A8D0CL;
    VECTOR(uint32_t, 2) l_642 = (VECTOR(uint32_t, 2))(4294967295UL, 4294967288UL);
    VECTOR(uint32_t, 16) l_643 = (VECTOR(uint32_t, 16))(0x3B85A56DL, (VECTOR(uint32_t, 4))(0x3B85A56DL, (VECTOR(uint32_t, 2))(0x3B85A56DL, 0UL), 0UL), 0UL, 0x3B85A56DL, 0UL, (VECTOR(uint32_t, 2))(0x3B85A56DL, 0UL), (VECTOR(uint32_t, 2))(0x3B85A56DL, 0UL), 0x3B85A56DL, 0UL, 0x3B85A56DL, 0UL);
    uint16_t **l_657[10][3] = {{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462},{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462},{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462},{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462},{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462},{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462},{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462},{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462},{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462},{&p_1658->g_462,&p_1658->g_462,&p_1658->g_462}};
    uint32_t l_703[5][10][5] = {{{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL}},{{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL}},{{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL}},{{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL}},{{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL},{0xB8CF0A77L,0UL,0x202FF677L,0xF7F91D21L,4294967295UL}}};
    uint64_t l_739 = 0x448B4E65C8F60149L;
    VECTOR(int8_t, 2) l_781 = (VECTOR(int8_t, 2))(1L, 1L);
    VECTOR(uint8_t, 8) l_830 = (VECTOR(uint8_t, 8))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 0x7BL), 0x7BL), 0x7BL, 253UL, 0x7BL);
    int32_t l_832 = 1L;
    int16_t l_835 = 7L;
    VECTOR(uint8_t, 16) l_840 = (VECTOR(uint8_t, 16))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0UL), 0UL), 0UL, 246UL, 0UL, (VECTOR(uint8_t, 2))(246UL, 0UL), (VECTOR(uint8_t, 2))(246UL, 0UL), 246UL, 0UL, 246UL, 0UL);
    VECTOR(uint8_t, 16) l_841 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 6UL), 6UL), 6UL, 1UL, 6UL, (VECTOR(uint8_t, 2))(1UL, 6UL), (VECTOR(uint8_t, 2))(1UL, 6UL), 1UL, 6UL, 1UL, 6UL);
    VECTOR(int8_t, 8) l_843 = (VECTOR(int8_t, 8))(0x62L, (VECTOR(int8_t, 4))(0x62L, (VECTOR(int8_t, 2))(0x62L, (-7L)), (-7L)), (-7L), 0x62L, (-7L));
    VECTOR(int32_t, 4) l_844 = (VECTOR(int32_t, 4))(0x1A738EA0L, (VECTOR(int32_t, 2))(0x1A738EA0L, (-2L)), (-2L));
    int16_t l_850 = 0x6FB1L;
    int i, j, k;
    if (l_101)
    { /* block id: 32 */
        int32_t **l_104 = &p_1658->g_95;
        int32_t l_501 = 0x411455A9L;
        uint16_t l_507 = 0x6D0AL;
        VECTOR(uint64_t, 16) l_519 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL, (VECTOR(uint64_t, 2))(0UL, 2UL), (VECTOR(uint64_t, 2))(0UL, 2UL), 0UL, 2UL, 0UL, 2UL);
        VECTOR(uint64_t, 8) l_526 = (VECTOR(uint64_t, 8))(0xA49CFBF70BDF2AF7L, (VECTOR(uint64_t, 4))(0xA49CFBF70BDF2AF7L, (VECTOR(uint64_t, 2))(0xA49CFBF70BDF2AF7L, 0x8110F0023B5CBDA2L), 0x8110F0023B5CBDA2L), 0x8110F0023B5CBDA2L, 0xA49CFBF70BDF2AF7L, 0x8110F0023B5CBDA2L);
        int32_t *l_533 = &l_496;
        int32_t *l_534 = (void*)0;
        int32_t *l_535 = (void*)0;
        int32_t *l_536 = &l_496;
        int32_t *l_537[9];
        int i;
        for (i = 0; i < 9; i++)
            l_537[i] = &p_1658->g_230;
        for (p_100 = 0; (p_100 < 29); p_100 = safe_add_func_uint64_t_u_u(p_100, 9))
        { /* block id: 35 */
            int64_t l_485[3];
            int32_t l_487[4] = {0x0547D8D7L,0x0547D8D7L,0x0547D8D7L,0x0547D8D7L};
            int16_t l_508 = 0x0298L;
            VECTOR(uint64_t, 16) l_524 = (VECTOR(uint64_t, 16))(0x647FCCDCB510D235L, (VECTOR(uint64_t, 4))(0x647FCCDCB510D235L, (VECTOR(uint64_t, 2))(0x647FCCDCB510D235L, 0x9FC33E5ED29F1E74L), 0x9FC33E5ED29F1E74L), 0x9FC33E5ED29F1E74L, 0x647FCCDCB510D235L, 0x9FC33E5ED29F1E74L, (VECTOR(uint64_t, 2))(0x647FCCDCB510D235L, 0x9FC33E5ED29F1E74L), (VECTOR(uint64_t, 2))(0x647FCCDCB510D235L, 0x9FC33E5ED29F1E74L), 0x647FCCDCB510D235L, 0x9FC33E5ED29F1E74L, 0x647FCCDCB510D235L, 0x9FC33E5ED29F1E74L);
            VECTOR(uint64_t, 8) l_525 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL);
            int32_t l_532[5];
            int i;
            for (i = 0; i < 3; i++)
                l_485[i] = (-5L);
            for (i = 0; i < 5; i++)
                l_532[i] = 1L;
            if ((*p_1658->g_64))
                break;
        }
        l_538++;
    }
    else
    { /* block id: 176 */
        volatile int32_t * volatile *l_543 = &p_1658->g_541[3];
        (*l_543) = p_1658->g_541[2];
        (*p_1658->g_179) = (*p_1658->g_94);
        (*p_1658->g_179) = &l_500;
    }
    for (l_538 = 0; (l_538 <= 15); l_538 = safe_add_func_int16_t_s_s(l_538, 1))
    { /* block id: 183 */
        uint32_t *l_563 = (void*)0;
        uint32_t **l_564 = &l_563;
        uint64_t *l_569 = (void*)0;
        uint64_t *l_570 = &p_1658->g_502[2];
        uint32_t l_571 = 0x6835F34CL;
        int8_t l_572 = (-1L);
        uint64_t *l_573[7][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
        uint32_t l_581 = 4294967295UL;
        int32_t l_587 = 0x36E29CF2L;
        VECTOR(uint64_t, 4) l_594 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 18446744073709551615UL);
        VECTOR(uint16_t, 16) l_599 = (VECTOR(uint16_t, 16))(0x109AL, (VECTOR(uint16_t, 4))(0x109AL, (VECTOR(uint16_t, 2))(0x109AL, 0x3A18L), 0x3A18L), 0x3A18L, 0x109AL, 0x3A18L, (VECTOR(uint16_t, 2))(0x109AL, 0x3A18L), (VECTOR(uint16_t, 2))(0x109AL, 0x3A18L), 0x109AL, 0x3A18L, 0x109AL, 0x3A18L);
        int32_t l_618 = 2L;
        int16_t l_622 = 0x1E1EL;
        int32_t l_624[3];
        int i, j;
        for (i = 0; i < 3; i++)
            l_624[i] = 2L;
        (1 + 1);
    }
    (*p_1658->g_179) = (void*)0;
    if ((~(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1658->g_641.s7704)).zxzwywwxywwyxzxw)).sc & (FAKE_DIVERGE(p_1658->global_0_offset, get_global_id(0), 10) , ((VECTOR(uint32_t, 8))(min(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_642.yx)), ((VECTOR(uint32_t, 4))(l_643.s3458)), 0x2E61A1FEL, 4294967294UL)), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(p_1658->g_644.s15)).xyyxyyxyxyxxxyyx)).even))).s6))))
    { /* block id: 212 */
        uint32_t l_645[2][4][9] = {{{0xF0B6CB0AL,7UL,0UL,4294967288UL,0x48A3538EL,0xF0B6CB0AL,4294967288UL,9UL,4294967288UL},{0xF0B6CB0AL,7UL,0UL,4294967288UL,0x48A3538EL,0xF0B6CB0AL,4294967288UL,9UL,4294967288UL},{0xF0B6CB0AL,7UL,0UL,4294967288UL,0x48A3538EL,0xF0B6CB0AL,4294967288UL,9UL,4294967288UL},{0xF0B6CB0AL,7UL,0UL,4294967288UL,0x48A3538EL,0xF0B6CB0AL,4294967288UL,9UL,4294967288UL}},{{0xF0B6CB0AL,7UL,0UL,4294967288UL,0x48A3538EL,0xF0B6CB0AL,4294967288UL,9UL,4294967288UL},{0xF0B6CB0AL,7UL,0UL,4294967288UL,0x48A3538EL,0xF0B6CB0AL,4294967288UL,9UL,4294967288UL},{0xF0B6CB0AL,7UL,0UL,4294967288UL,0x48A3538EL,0xF0B6CB0AL,4294967288UL,9UL,4294967288UL},{0xF0B6CB0AL,7UL,0UL,4294967288UL,0x48A3538EL,0xF0B6CB0AL,4294967288UL,9UL,4294967288UL}}};
        int32_t *l_677 = &p_1658->g_3;
        VECTOR(int16_t, 4) l_705 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x216AL), 0x216AL);
        int32_t l_710 = 0L;
        int32_t l_717 = 0x09509D90L;
        uint32_t l_730 = 0x9F00CAC1L;
        VECTOR(uint16_t, 16) l_772 = (VECTOR(uint16_t, 16))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x3064L), 0x3064L), 0x3064L, 65530UL, 0x3064L, (VECTOR(uint16_t, 2))(65530UL, 0x3064L), (VECTOR(uint16_t, 2))(65530UL, 0x3064L), 65530UL, 0x3064L, 65530UL, 0x3064L);
        VECTOR(int32_t, 2) l_801 = (VECTOR(int32_t, 2))(0x10CA7DFDL, (-1L));
        uint16_t l_810 = 8UL;
        int32_t *l_818 = &p_1658->g_733;
        VECTOR(uint8_t, 8) l_823 = (VECTOR(uint8_t, 8))(0x05L, (VECTOR(uint8_t, 4))(0x05L, (VECTOR(uint8_t, 2))(0x05L, 0UL), 0UL), 0UL, 0x05L, 0UL);
        int16_t ***l_831 = &l_511;
        uint32_t *l_833 = &l_645[1][3][2];
        VECTOR(int8_t, 2) l_834 = (VECTOR(int8_t, 2))(0L, 0x7FL);
        int i, j, k;
        l_645[0][1][6]--;
        for (p_100 = 0; (p_100 == (-20)); p_100 = safe_sub_func_int64_t_s_s(p_100, 4))
        { /* block id: 216 */
            uint16_t **l_656[5];
            int32_t l_704[1][1];
            VECTOR(uint32_t, 4) l_716 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL);
            VECTOR(int16_t, 4) l_742 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L);
            VECTOR(int32_t, 2) l_747 = (VECTOR(int32_t, 2))((-1L), 0x5AD74D1EL);
            VECTOR(int16_t, 2) l_752 = (VECTOR(int16_t, 2))(0x1E70L, 0x22ADL);
            VECTOR(int8_t, 2) l_791 = (VECTOR(int8_t, 2))(0x64L, 0x7DL);
            uint64_t *l_794[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i, j;
            for (i = 0; i < 5; i++)
                l_656[i] = &p_1658->g_462;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_704[i][j] = 0x75C06B4BL;
            }
            for (p_1658->g_66 = 0; (p_1658->g_66 >= 43); p_1658->g_66++)
            { /* block id: 219 */
                uint32_t l_659 = 4294967287UL;
                int16_t *l_664[7][9] = {{&p_1658->g_125,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0},{&p_1658->g_125,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0},{&p_1658->g_125,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0},{&p_1658->g_125,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0},{&p_1658->g_125,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0},{&p_1658->g_125,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0},{&p_1658->g_125,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0,(void*)0,&p_1658->g_125,(void*)0}};
                VECTOR(uint8_t, 8) l_672 = (VECTOR(uint8_t, 8))(0xDCL, (VECTOR(uint8_t, 4))(0xDCL, (VECTOR(uint8_t, 2))(0xDCL, 0x6DL), 0x6DL), 0x6DL, 0xDCL, 0x6DL);
                int32_t l_674 = 0x3865F08FL;
                int64_t l_675 = 0x69EF03F8CC614E3CL;
                uint32_t l_676[3];
                uint8_t *l_695[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i, j;
                for (i = 0; i < 3; i++)
                    l_676[i] = 1UL;
                (*p_1658->g_229) |= (*l_182);
                for (p_1658->g_611 = 0; (p_1658->g_611 > 15); p_1658->g_611 = safe_add_func_int64_t_s_s(p_1658->g_611, 6))
                { /* block id: 223 */
                    int32_t *l_658 = (void*)0;
                    int32_t *l_678 = &p_1658->g_230;
                    uint32_t l_679 = 1UL;
                    for (l_500 = 0; (l_500 == (-26)); --l_500)
                    { /* block id: 226 */
                        l_657[2][2] = l_656[3];
                        (*p_1658->g_94) = (*p_1658->g_179);
                    }
                    ++l_659;
                    (*l_678) |= ((((safe_mod_func_int32_t_s_s(((void*)0 == l_664[1][1]), (safe_lshift_func_int16_t_s_s(((safe_unary_minus_func_uint32_t_u((safe_lshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u((l_674 &= (GROUP_DIVERGE(0, 1) & (!(((VECTOR(uint8_t, 2))(l_672.s21)).odd ^ (((*p_1658->g_64) ^= (p_100 , (safe_unary_minus_func_uint64_t_u(p_100)))) , (&p_1658->g_179 != (void*)0)))))), l_675)), (4294967295UL > (!0x5352D63AL)))))) == p_100), p_100)))) == l_676[1]) , l_677) != (void*)0);
                    if (l_679)
                        break;
                }
                l_674 ^= (safe_mul_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(0x2FBE0616CCAA5789L, (safe_lshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((safe_sub_func_int16_t_s_s((-1L), ((((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(p_1658->g_692.wy)).even, (safe_mul_func_int16_t_s_s(((l_695[1] != (p_1658->g_186 = (void*)0)) , p_100), (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(0xDCD1034CC20C9B9DL, (((VECTOR(int64_t, 8))(p_1658->g_698.yxyyyxxx)).s2 < GROUP_DIVERGE(2, 1)), 0xB10BA81DE5814CDFL, 0xADD0B2702615680CL)).hi)).lo, (safe_sub_func_int64_t_s_s((((safe_mul_func_int16_t_s_s((-7L), l_703[3][6][2])) , l_704[0][0]) == FAKE_DIVERGE(p_1658->global_1_offset, get_global_id(1), 10)), p_100)))))))) , (*l_677)) , p_100) , (*l_182)))) >= 18446744073709551615UL), l_676[1])), l_672.s3)))), 0x0639L));
                if ((*l_182))
                { /* block id: 238 */
                    l_704[0][0] = l_705.x;
                }
                else
                { /* block id: 240 */
                    return p_100;
                }
            }
            for (p_1658->g_126 = 0; (p_1658->g_126 < 56); p_1658->g_126++)
            { /* block id: 246 */
                uint32_t l_711 = 0x5DE5D234L;
                int32_t *l_713 = &p_1658->g_714;
                VECTOR(uint32_t, 2) l_715 = (VECTOR(uint32_t, 2))(4294967293UL, 3UL);
                int32_t l_718 = 0x402F415FL;
                VECTOR(int64_t, 4) l_741 = (VECTOR(int64_t, 4))(0x6111B2E03FDD0FF7L, (VECTOR(int64_t, 2))(0x6111B2E03FDD0FF7L, 0x26D1FB59237475CEL), 0x26D1FB59237475CEL);
                uint32_t *l_744 = &l_538;
                VECTOR(int16_t, 4) l_751 = (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, (-1L)), (-1L));
                int32_t l_811 = 0x57F43FC7L;
                int i;
                if ((safe_mul_func_int8_t_s_s(((((l_710 &= (*p_1658->g_64)) != 0UL) != ((l_711 , ((((((VECTOR(uint64_t, 2))(p_1658->g_712.sdc)).even | FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10)) | (((*l_713) = 0x7093FE10L) , ((p_1658->g_274.x , p_100) || ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_715.yyxxxxxy)), 4294967289UL, 0xB01A2F06L, ((VECTOR(uint32_t, 4))(l_716.wzxx)), 0xF8F7D44DL, 0UL)).sb))) , p_100) != ((void*)0 == &p_1658->g_390))) < l_717)) <= (*l_677)), p_100)))
                { /* block id: 249 */
                    uint64_t l_719[10][2][8] = {{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}},{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}},{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}},{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}},{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}},{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}},{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}},{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}},{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}},{{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L},{1UL,0x026845BEC43640B1L,0xBA42C78C8D8DDA28L,0xB4F22EC508F251F1L,4UL,4UL,0xB4F22EC508F251F1L,0xBA42C78C8D8DDA28L}}};
                    VECTOR(uint32_t, 8) l_726 = (VECTOR(uint32_t, 8))(0x4B497284L, (VECTOR(uint32_t, 4))(0x4B497284L, (VECTOR(uint32_t, 2))(0x4B497284L, 0x69065591L), 0x69065591L), 0x69065591L, 0x4B497284L, 0x69065591L);
                    VECTOR(uint32_t, 8) l_727 = (VECTOR(uint32_t, 8))(0x415AA8A8L, (VECTOR(uint32_t, 4))(0x415AA8A8L, (VECTOR(uint32_t, 2))(0x415AA8A8L, 0x5A33BB05L), 0x5A33BB05L), 0x5A33BB05L, 0x415AA8A8L, 0x5A33BB05L);
                    VECTOR(uint32_t, 16) l_728 = (VECTOR(uint32_t, 16))(0x37A34BB6L, (VECTOR(uint32_t, 4))(0x37A34BB6L, (VECTOR(uint32_t, 2))(0x37A34BB6L, 0xC34C8B9DL), 0xC34C8B9DL), 0xC34C8B9DL, 0x37A34BB6L, 0xC34C8B9DL, (VECTOR(uint32_t, 2))(0x37A34BB6L, 0xC34C8B9DL), (VECTOR(uint32_t, 2))(0x37A34BB6L, 0xC34C8B9DL), 0x37A34BB6L, 0xC34C8B9DL, 0x37A34BB6L, 0xC34C8B9DL);
                    int32_t l_729 = 0x08B5D704L;
                    int i, j, k;
                    l_719[9][1][3]--;
                    (*p_1658->g_732) = (safe_lshift_func_int16_t_s_u((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(l_726.s5511402531550644)).odd, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_727.s1031)).zzzzwzzy)).s0710165004432330, ((VECTOR(uint32_t, 4))(l_728.s4c17)).xywxwywxzzxyxwwy))).lo, ((VECTOR(uint32_t, 2))(9UL, 4294967295UL)).yyxxyxyy))).s7573633311145030)))).s56)).xxyyxxxy, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(4294967288UL, 1UL)))))).yyyxyyyy))).s73)).hi, (l_729 = l_728.s5))), l_730));
                }
                else
                { /* block id: 253 */
                    if (p_1658->g_733)
                        break;
                    (*p_1658->g_179) = ((*p_1658->g_94) = (*p_1658->g_179));
                    if ((*l_677))
                        continue;
                }
                if ((((l_704[0][0] &= p_100) != (0x27L ^ (safe_div_func_int16_t_s_s(((l_718 & (((VECTOR(int32_t, 8))(p_1658->g_736.s2a06238a)).s4 != ((((safe_sub_func_uint8_t_u_u((((*l_744) |= (((((((((((l_739 = ((*p_1658->g_462) = ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0UL, 0x6ACBL)).yyxy)).w)) > (((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_1658->g_740.xx)), (-10L), 0x274ABD1C52B8A8ADL)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(7L, 2L)))), 0x61CDA7D81404A31FL, 0x7C5DAB9F544460D6L)).s3572641610305540, ((VECTOR(int64_t, 2))(l_741.zw)).yyxyyxyxyxxxyxxy))).s8 , ((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(l_742.zywwyxxywwzywwwz)).odd, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x1A93L, 0x70A2L)).xyxxxxxy)).odd)).yzywwxyz, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(p_1658->g_743.s2f2b)).wzwwyzwyzzzxxxzy)))).lo))).s7)) & (*l_677)) , ((void*)0 == &l_739)) ^ ((l_715.y , ((p_100 && p_1658->g_27.y) > l_742.y)) | (*l_677))) ^ GROUP_DIVERGE(2, 1)) & 0x7C453615L) , p_1658->g_25) >= p_1658->g_161.x) & p_100) == l_711)) , p_100), 0x24L)) , (*l_182)) ^ 0L) <= 0UL))) , 0x59DAL), 0x511FL)))) , p_100))
                { /* block id: 263 */
                    return p_100;
                }
                else
                { /* block id: 265 */
                    VECTOR(int32_t, 4) l_775 = (VECTOR(int32_t, 4))(0x0367A373L, (VECTOR(int32_t, 2))(0x0367A373L, (-1L)), (-1L));
                    VECTOR(int32_t, 4) l_778 = (VECTOR(int32_t, 4))(0x556CDABFL, (VECTOR(int32_t, 2))(0x556CDABFL, 0x30DEA754L), 0x30DEA754L);
                    int32_t l_795 = 0x6B8AD9D6L;
                    int i;
                    for (p_1658->g_470 = 0; (p_1658->g_470 > 35); p_1658->g_470++)
                    { /* block id: 268 */
                        VECTOR(int16_t, 4) l_750 = (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x6837L), 0x6837L);
                        VECTOR(int64_t, 8) l_755 = (VECTOR(int64_t, 8))(0x0267C184D24F8212L, (VECTOR(int64_t, 4))(0x0267C184D24F8212L, (VECTOR(int64_t, 2))(0x0267C184D24F8212L, 9L), 9L), 9L, 0x0267C184D24F8212L, 9L);
                        uint64_t *l_756[9] = {(void*)0,&l_739,(void*)0,(void*)0,&l_739,(void*)0,(void*)0,&l_739,(void*)0};
                        int8_t *l_761[5][2] = {{(void*)0,&l_101},{(void*)0,&l_101},{(void*)0,&l_101},{(void*)0,&l_101},{(void*)0,&l_101}};
                        VECTOR(uint8_t, 16) l_782 = (VECTOR(uint8_t, 16))(0x84L, (VECTOR(uint8_t, 4))(0x84L, (VECTOR(uint8_t, 2))(0x84L, 0x3DL), 0x3DL), 0x3DL, 0x84L, 0x3DL, (VECTOR(uint8_t, 2))(0x84L, 0x3DL), (VECTOR(uint8_t, 2))(0x84L, 0x3DL), 0x84L, 0x3DL, 0x84L, 0x3DL);
                        int32_t l_796 = 0L;
                        int32_t *l_798 = &l_710;
                        int i, j;
                        l_718 = ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_747.yy))))))).yyyxyyxx)).s01, ((VECTOR(int32_t, 4))(p_1658->g_748.sab1d)).even, ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 2))((-9L), 0x5D15ECC0L)).xxxy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(p_1658->g_749.se2a065f8)).lo, ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(l_750.yx)).yyxyxxxx, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 4))(l_751.wxwy)).hi, ((VECTOR(int16_t, 4))(l_752.yyxy)).even))).yxxyxyxxxxxxyxyx)).se2)).xyxyxxyx, (int16_t)p_100))).odd)).wxwxywwzwyyxzzzz))).s2398)).wzyxzxyy))))).s1471667564445077, (int16_t)(((((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 8))(l_755.s26742061)).s7, (p_1658->g_213.z = p_1658->g_733))) | ((GROUP_DIVERGE(0, 1) != ((FAKE_DIVERGE(p_1658->local_1_offset, get_local_id(1), 10) >= (safe_rshift_func_int16_t_s_u((safe_sub_func_int8_t_s_s(((p_1658->g_360.s4 ^= 0L) && (~(((~(safe_mul_func_uint8_t_u_u(((((safe_mod_func_int64_t_s_s((((safe_div_func_uint64_t_u_u((((safe_add_func_uint16_t_u_u((~((((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_772.sae)), 4UL, 8UL)))).w, l_751.z)) < (safe_mul_func_uint16_t_u_u((*l_677), (((VECTOR(int32_t, 16))(l_775.wyzyyyyyywxwxxyy)).sf | p_100)))) == (l_796 ^= ((l_778.x = (safe_rshift_func_uint8_t_u_s((++p_1658->g_27.y), ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))(l_781.yx)).xxxxyyyyxyyyxyyy))).sa))) , (FAKE_DIVERGE(p_1658->global_2_offset, get_global_id(2), 10) , ((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_782.sf07b2263)).odd)).ywzywwwyxywywzwy)).odd, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(249UL, (safe_mul_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))((*l_677), 0x7949B22DE8111D4CL, (-8L), 0L, ((safe_mul_func_int8_t_s_s((((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_791.yx)).xyyy)).zzwxywyx, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))((-3L), (-1L))))).yxxx)).xzzwywzy))).s7436264735715746))))).sa, (~(p_1658->g_692.w = (safe_div_func_int32_t_s_s(((l_718 , &p_1658->g_502[3]) == l_794[1]), l_775.x)))))) & (*p_1658->g_462)) , (-8L)), 5UL)) == 2L), 0x2147C6AFCA8D9521L, ((VECTOR(int64_t, 8))(0x32EA1C02E3F0A255L)), 0x6344CDA0B60BCC3EL, (-2L))).s3776)))).z, p_100)) | l_741.w), l_795)), 0x30L, 0x7FL)), 0xB2L, ((VECTOR(uint8_t, 4))(255UL)), p_100, ((VECTOR(uint8_t, 2))(253UL)), 255UL, p_100, 0xACL, 0x76L)).odd))).s5)))) ^ (**p_1658->g_565))), l_715.x)) <= 0x7B35257CL) == GROUP_DIVERGE(1, 1)), p_100)) && GROUP_DIVERGE(0, 1)) , (**p_1658->g_565)), p_1658->g_397.y)) ^ p_1658->g_201) | 5UL) , p_100), (*l_677)))) & p_100) | 0x16EC5ECBL))), p_100)), p_100))) >= l_775.x)) && 252UL)) >= l_715.x) <= p_100) != p_100)))).sc, (-1L), p_100, 0x77E8L, ((VECTOR(int16_t, 2))(0x50A9L)), (-1L), 9L)).s25, ((VECTOR(uint16_t, 2))(1UL))))), (int32_t)p_100))).xxyy)).zyyyxywx, ((VECTOR(int32_t, 8))((-6L)))))).s2170732514511046, ((VECTOR(int32_t, 16))(0x6F4ED41CL)), ((VECTOR(int32_t, 16))(0x77C03A34L))))).s3c1d))).z, 0x4876E512L, p_100, ((VECTOR(int32_t, 2))(0x3EFBE65CL)), 0x7DCEBC8CL, 0x539DAD0BL, 1L)).lo))).zxywywzwzzyyxyyz, ((VECTOR(int32_t, 16))(0x23CD8CAFL))))).s45))).odd;
                        (*l_798) |= l_741.w;
                        (*l_798) = ((void*)0 == &p_1658->g_502[3]);
                    }
                    for (p_1658->g_230 = 18; (p_1658->g_230 < (-30)); p_1658->g_230 = safe_sub_func_uint32_t_u_u(p_1658->g_230, 7))
                    { /* block id: 281 */
                        return p_1658->g_422;
                    }
                }
                l_718 ^= (~((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_801.xyxyyxxx)).s47)), 0x5D920AFFL, 0x29C866FDL)).lo, (int32_t)(p_1658->g_397.x >= ((safe_mul_func_int16_t_s_s((((((FAKE_DIVERGE(p_1658->group_0_offset, get_group_id(0), 10) != (*l_182)) <= (p_100 || 0x63B9L)) , p_100) > p_1658->g_126) | l_751.x), p_100)) && (safe_mod_func_int8_t_s_s(((safe_div_func_uint64_t_u_u((safe_rshift_func_int16_t_s_u(l_741.z, 3)), (**p_1658->g_565))) == l_810), l_811))))))).yxxy, ((VECTOR(int32_t, 4))(0x1FB70CE5L)), ((VECTOR(int32_t, 4))((-5L)))))), ((VECTOR(int32_t, 4))(0x1F79FC48L))))).wwyywwzwwxxyywxw)).sa);
            }
            l_801.y = (*l_677);
        }
        l_835 = (((p_100 || (safe_rshift_func_int8_t_s_u(((safe_sub_func_int32_t_s_s((*l_182), ((*l_818) = (((*p_1658->g_462)++) , ((VECTOR(int32_t, 2))(0x58709B09L, 0x309D136CL)).hi)))) && (safe_add_func_uint16_t_u_u((*p_1658->g_462), ((safe_rshift_func_int8_t_s_u(((l_823.s5 >= ((**p_1658->g_565) || (safe_sub_func_uint64_t_u_u((((*l_833) = (safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10), 1)) & 0xB6A2L), ((((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 8))(l_830.s31704201)).s2721430560756744, ((VECTOR(uint8_t, 2))(7UL, 247UL)).xxxyyyxyyyyyxxxx))).s2 != (l_831 == ((~l_832) , (void*)0))) | (*l_818))))) ^ 0x2B1D5F88L), (*l_677))))) || (*p_1658->g_462)), 1)) & (*l_818))))), l_834.y))) ^ p_1658->g_397.y) , p_100);
    }
    else
    { /* block id: 293 */
        VECTOR(uint8_t, 4) l_836 = (VECTOR(uint8_t, 4))(0x30L, (VECTOR(uint8_t, 2))(0x30L, 0x02L), 0x02L);
        VECTOR(uint8_t, 8) l_838 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 3UL), 3UL), 3UL, 255UL, 3UL);
        VECTOR(int32_t, 16) l_845 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x1BA889F2L), 0x1BA889F2L), 0x1BA889F2L, 1L, 0x1BA889F2L, (VECTOR(int32_t, 2))(1L, 0x1BA889F2L), (VECTOR(int32_t, 2))(1L, 0x1BA889F2L), 1L, 0x1BA889F2L, 1L, 0x1BA889F2L);
        int32_t *l_846[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t *l_847 = (void*)0;
        int16_t *l_848 = &p_1658->g_125;
        int i;
        l_850 = ((((VECTOR(uint8_t, 8))(253UL, 0x78L, 0xCFL, ((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_836.wx)), 0x96L, 0x25L, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 16))(p_1658->g_837.wzxwwzyyzwzzxyyw)).s28, ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 16))(p_1658->g_3, p_100, ((VECTOR(uint8_t, 8))(l_838.s07007255)), ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 4))(p_1658->g_839.s4566)).xwzwzxxyzwzxxwyw, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_840.sa715d6c184a01746)).s19)))).yxyyxxxxxyyyxxxy))).s1e, ((VECTOR(uint8_t, 8))(l_841.s5771fcd3)).s54))), 0xCBL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 2))(p_1658->g_842.s2b)).xxxyxxxy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_843.s31120344))))))).odd)), ((p_100 > p_1658->g_356.x) && ((*l_848) = ((((VECTOR(int32_t, 8))(((((*l_182) | (-1L)) != (**p_1658->g_565)) , ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_844.zwzxwxwzzzywyyxz)).s28)).xyyx, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(l_845.s87a44af3)).s55, (int32_t)(l_500 |= (l_496 = 0x095B2F23L))))).yyxy))).wzyxxzzzyzyywyxy)).s54)).odd), 0x0869C97CL, (-7L), p_100, ((VECTOR(int32_t, 2))((-5L))), 5L, (-1L))).s2 < p_100) & p_100))), 0x44L, 9L, (-1L))), 0x0AL, 0x25L, 0x78L, p_1658->g_213.y, p_1658->g_842.sa, ((VECTOR(int8_t, 2))(0x71L)), 1L)))).s3f)))).yxxy, ((VECTOR(int8_t, 4))((-9L)))))).lo)), 255UL)).sf2, ((VECTOR(uint8_t, 2))(0x43L)))))))), 253UL, (*l_182), 1UL, p_1658->g_849, 0x05L, 6UL)).s6146127601445131)).s911a)))).lo, ((VECTOR(uint8_t, 4))(1UL))))), 0x48L)).s2 < 6L) < 0xC3799253L);
    }
    return (*l_182);
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_187 p_1658->g_3 p_1658->g_27 p_1658->g_201 p_1658->g_161 p_1658->g_55 p_1658->g_213 p_1658->g_148 p_1658->g_94 p_1658->g_95 p_1658->g_20 p_1658->g_170 p_1658->g_154 p_1658->g_33 p_1658->g_229 p_1658->g_230 p_1658->g_179 p_1658->g_140 p_1658->g_274 p_1658->g_327 p_1658->g_333 p_1658->g_126 p_1658->g_356 p_1658->g_359 p_1658->g_360 p_1658->g_390 p_1658->g_397 p_1658->g_402 p_1658->g_403 p_1658->g_422 p_1658->g_447 p_1658->g_448 p_1658->g_450 p_1658->g_456 p_1658->g_421
 * writes: p_1658->g_201 p_1658->g_20 p_1658->g_33 p_1658->g_230 p_1658->g_66 p_1658->g_274 p_1658->g_170 p_1658->g_95 p_1658->g_125 p_1658->g_123 p_1658->g_126 p_1658->g_390 p_1658->g_397 p_1658->g_154 p_1658->g_422 p_1658->g_447 p_1658->g_462 p_1658->g_470 p_1658->g_25
 */
int32_t * func_105(int64_t  p_106, uint64_t  p_107, uint8_t  p_108, int8_t  p_109, uint32_t  p_110, struct S0 * p_1658)
{ /* block id: 70 */
    VECTOR(uint8_t, 16) l_188 = (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 1UL), 1UL), 1UL, 4UL, 1UL, (VECTOR(uint8_t, 2))(4UL, 1UL), (VECTOR(uint8_t, 2))(4UL, 1UL), 4UL, 1UL, 4UL, 1UL);
    VECTOR(int32_t, 16) l_211 = (VECTOR(int32_t, 16))(0x578F439EL, (VECTOR(int32_t, 4))(0x578F439EL, (VECTOR(int32_t, 2))(0x578F439EL, 0x63190A66L), 0x63190A66L), 0x63190A66L, 0x578F439EL, 0x63190A66L, (VECTOR(int32_t, 2))(0x578F439EL, 0x63190A66L), (VECTOR(int32_t, 2))(0x578F439EL, 0x63190A66L), 0x578F439EL, 0x63190A66L, 0x578F439EL, 0x63190A66L);
    VECTOR(int64_t, 16) l_214 = (VECTOR(int64_t, 16))(0x5C958FA7611F6D53L, (VECTOR(int64_t, 4))(0x5C958FA7611F6D53L, (VECTOR(int64_t, 2))(0x5C958FA7611F6D53L, (-4L)), (-4L)), (-4L), 0x5C958FA7611F6D53L, (-4L), (VECTOR(int64_t, 2))(0x5C958FA7611F6D53L, (-4L)), (VECTOR(int64_t, 2))(0x5C958FA7611F6D53L, (-4L)), 0x5C958FA7611F6D53L, (-4L), 0x5C958FA7611F6D53L, (-4L));
    uint32_t l_220[6][10][4] = {{{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL}},{{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL}},{{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL}},{{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL}},{{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL}},{{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL},{0xB38789EFL,9UL,0x42C0B19DL,8UL}}};
    int64_t *l_228 = (void*)0;
    int32_t *l_240 = &p_1658->g_3;
    uint64_t l_263 = 0x4F6860CB6A6315E3L;
    int32_t l_273 = 0x13DEE22FL;
    int16_t *l_279 = &p_1658->g_125;
    VECTOR(uint32_t, 2) l_300 = (VECTOR(uint32_t, 2))(7UL, 0x2A1E6206L);
    VECTOR(uint32_t, 2) l_301 = (VECTOR(uint32_t, 2))(0xCB150C15L, 0xF1BB0B55L);
    int32_t l_314 = 0x38C32160L;
    int32_t l_328 = (-1L);
    VECTOR(uint16_t, 16) l_446 = (VECTOR(uint16_t, 16))(4UL, (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 65534UL), 65534UL), 65534UL, 4UL, 65534UL, (VECTOR(uint16_t, 2))(4UL, 65534UL), (VECTOR(uint16_t, 2))(4UL, 65534UL), 4UL, 65534UL, 4UL, 65534UL);
    uint16_t **l_459 = (void*)0;
    uint16_t *l_461 = (void*)0;
    uint16_t **l_460[2][10][8] = {{{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0}},{{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0},{&l_461,&l_461,&l_461,(void*)0,(void*)0,&l_461,&l_461,(void*)0}}};
    uint32_t *l_469 = &p_1658->g_470;
    int8_t *l_471[7][9][1] = {{{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123}},{{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123}},{{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123}},{{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123}},{{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123}},{{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123}},{{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123},{&p_1658->g_123}}};
    uint8_t *l_476 = &p_1658->g_25;
    int32_t *l_477 = (void*)0;
    int i, j, k;
    if ((((void*)0 != p_1658->g_187) || ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_188.scc2c)).odd)).hi))
    { /* block id: 71 */
        uint8_t l_204 = 1UL;
        int32_t l_205 = 0x5B000678L;
        uint32_t l_221 = 4294967291UL;
        uint32_t *l_236[7];
        VECTOR(int32_t, 4) l_242 = (VECTOR(int32_t, 4))(0x77480214L, (VECTOR(int32_t, 2))(0x77480214L, 0x4FFE95B6L), 0x4FFE95B6L);
        VECTOR(int32_t, 4) l_243 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x69AC7910L), 0x69AC7910L);
        uint64_t l_262 = 0x1894467B843FA7BDL;
        VECTOR(int32_t, 8) l_331 = (VECTOR(int32_t, 8))(0x25FADAC1L, (VECTOR(int32_t, 4))(0x25FADAC1L, (VECTOR(int32_t, 2))(0x25FADAC1L, 0L), 0L), 0L, 0x25FADAC1L, 0L);
        VECTOR(int32_t, 2) l_332 = (VECTOR(int32_t, 2))(0x52336068L, 0x7413D8C7L);
        VECTOR(uint32_t, 4) l_334 = (VECTOR(uint32_t, 4))(0x9CAF9F28L, (VECTOR(uint32_t, 2))(0x9CAF9F28L, 1UL), 1UL);
        VECTOR(int32_t, 8) l_335 = (VECTOR(int32_t, 8))(0x6A9FD3D6L, (VECTOR(int32_t, 4))(0x6A9FD3D6L, (VECTOR(int32_t, 2))(0x6A9FD3D6L, 0x2DAA7D16L), 0x2DAA7D16L), 0x2DAA7D16L, 0x6A9FD3D6L, 0x2DAA7D16L);
        VECTOR(uint32_t, 16) l_336 = (VECTOR(uint32_t, 16))(0xFEF0D657L, (VECTOR(uint32_t, 4))(0xFEF0D657L, (VECTOR(uint32_t, 2))(0xFEF0D657L, 4294967294UL), 4294967294UL), 4294967294UL, 0xFEF0D657L, 4294967294UL, (VECTOR(uint32_t, 2))(0xFEF0D657L, 4294967294UL), (VECTOR(uint32_t, 2))(0xFEF0D657L, 4294967294UL), 0xFEF0D657L, 4294967294UL, 0xFEF0D657L, 4294967294UL);
        uint64_t *l_343 = &l_262;
        int16_t l_344 = 0x4CF5L;
        VECTOR(uint8_t, 4) l_361 = (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 0x46L), 0x46L);
        VECTOR(int8_t, 2) l_364 = (VECTOR(int8_t, 2))(0x69L, (-1L));
        int i;
        for (i = 0; i < 7; i++)
            l_236[i] = (void*)0;
        if ((safe_mod_func_uint64_t_u_u(l_188.s8, 0x543437DAB9027D05L)))
        { /* block id: 72 */
            uint32_t l_195 = 0xF596ABB3L;
            int32_t **l_198 = (void*)0;
            uint32_t *l_200 = &p_1658->g_201;
            int32_t l_206[6];
            uint8_t *l_216 = (void*)0;
            int64_t *l_226[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            VECTOR(int32_t, 16) l_241 = (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x50AFBD4EL), 0x50AFBD4EL), 0x50AFBD4EL, (-2L), 0x50AFBD4EL, (VECTOR(int32_t, 2))((-2L), 0x50AFBD4EL), (VECTOR(int32_t, 2))((-2L), 0x50AFBD4EL), (-2L), 0x50AFBD4EL, (-2L), 0x50AFBD4EL);
            uint8_t *l_258 = &l_204;
            uint16_t *l_261 = &p_1658->g_66;
            int32_t *l_264 = (void*)0;
            int32_t *l_265 = &p_1658->g_33;
            int32_t *l_266 = (void*)0;
            int32_t *l_267 = &p_1658->g_33;
            int32_t *l_268 = &l_206[1];
            int32_t *l_269 = &p_1658->g_230;
            int32_t *l_270 = &l_206[2];
            int32_t *l_271 = (void*)0;
            int32_t *l_272[7][5][7] = {{{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3}},{{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3}},{{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3}},{{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3}},{{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3}},{{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3}},{{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3},{(void*)0,&p_1658->g_3,&l_205,(void*)0,(void*)0,&l_205,&p_1658->g_3}}};
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_206[i] = 0x1B7F2E98L;
            if ((safe_div_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(l_195, ((((!((((-3L) || ((((p_1658->g_3 , (((((VECTOR(int16_t, 4))(0x6C82L, 0x61E3L, 0x7033L, 0L)).z | 0x5939L) & (safe_add_func_int32_t_s_s(0x1C08D247L, (l_198 == l_198)))) == (safe_unary_minus_func_int32_t_s((((*l_200) |= p_1658->g_27.x) >= ((safe_mod_func_int64_t_s_s((l_204 |= p_1658->g_161.x), 0xC508AB74A17D3968L)) != (-1L))))))) > p_1658->g_55) , 0x6EEAEBF9L) , 0xE41C3956D99E69E6L)) && FAKE_DIVERGE(p_1658->local_2_offset, get_local_id(2), 10)) > l_205)) , l_205) <= l_188.s7) | p_109))), l_206[2])))
            { /* block id: 75 */
                VECTOR(uint32_t, 16) l_212 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967288UL), 4294967288UL), 4294967288UL, 1UL, 4294967288UL, (VECTOR(uint32_t, 2))(1UL, 4294967288UL), (VECTOR(uint32_t, 2))(1UL, 4294967288UL), 1UL, 4294967288UL, 1UL, 4294967288UL);
                int32_t ***l_215 = &l_198;
                uint32_t l_217 = 0xBBDD3434L;
                int64_t *l_218 = (void*)0;
                int64_t *l_219 = (void*)0;
                int32_t l_237 = 0x46097374L;
                int i;
                (*p_1658->g_154) |= (safe_rshift_func_int8_t_s_s(p_108, (((0x41FDL || (((((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 8))(l_211.s32fa3d10)), ((VECTOR(uint32_t, 4))(l_212.s9b79)).zzwxwxyy))).s5 >= (p_107 = (((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(p_1658->g_213.wxxyxwzy)).s4542174664472526)), ((VECTOR(uint64_t, 16))(abs(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 2))(l_214.s9b)), ((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(5L, 0x57DF8042BDC2A12CL)), ((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 16))((l_220[2][8][1] = (p_1658->g_20.x &= (p_108 < ((((((*l_215) = l_198) == &p_1658->g_95) ^ (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(0x0D46338669378A79L, 0L, (-1L), (((p_1658->g_148.s1 >= (0x5983L ^ ((((void*)0 == l_216) , GROUP_DIVERGE(1, 1)) && (**p_1658->g_94)))) >= l_206[2]) , p_108), 0x2EF1644AD35E5ED2L, ((VECTOR(int64_t, 2))(0x140AC22FB060251FL)), 0x6FF73207411C626FL)).s41)).even ^ l_217)) | 18446744073709551615UL) , p_110)))), ((VECTOR(int64_t, 4))(0x2FF4C1165275F813L)), 0L, ((VECTOR(int64_t, 8))(0x66A6F619964F89DEL)), 0x739457B1607F975CL, 1L)), ((VECTOR(int64_t, 16))((-5L)))))).even, ((VECTOR(int64_t, 8))(0x0974F268215B2C1FL)), ((VECTOR(int64_t, 8))(0x7721435A0674A3F3L))))).s06))).yyxyyxyyyyxyxxyx)), ((VECTOR(int64_t, 16))(0x05FD57864F3567AFL))))).s07, ((VECTOR(int64_t, 2))(3L))))).yxxy, ((VECTOR(int64_t, 4))((-6L)))))), l_221, 0x34FD7B6072370158L, 0L, ((VECTOR(int64_t, 2))(0x08EF66F19170E0B8L)), p_1658->g_170.sb, 1L, 6L, (-1L), ((VECTOR(int64_t, 2))(1L)), 0x3F24F83E576698BAL)).saa)).yxyxyxyyxyyyyyxx)))))))).s1e)).xyxx, ((VECTOR(uint64_t, 4))(3UL))))).z > l_206[2]))) != p_1658->g_213.z) != 0x64D43C19L)) || p_109) , p_110)));
                for (p_1658->g_33 = (-18); (p_1658->g_33 == (-23)); p_1658->g_33--)
                { /* block id: 83 */
                    int64_t **l_227[7] = {&l_226[2],&l_218,&l_226[2],&l_226[2],&l_218,&l_226[2],&l_226[2]};
                    uint32_t *l_235 = &l_217;
                    int i;
                    (*p_1658->g_229) &= (safe_rshift_func_int16_t_s_s((l_220[1][0][2] == (l_226[2] != (l_228 = l_218))), ((l_221 , (l_206[3] = l_205)) && (0xFE7F3855L < p_108))));
                    l_237 = (safe_lshift_func_uint16_t_u_s((safe_div_func_uint32_t_u_u((l_235 == l_236[2]), (*p_1658->g_95))), 13));
                }
                (*p_1658->g_154) = (safe_lshift_func_int8_t_s_s(p_1658->g_161.x, 6));
            }
            else
            { /* block id: 90 */
                return l_240;
            }
            l_242.z = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(l_241.sd68f)), ((VECTOR(int32_t, 8))(l_242.zwxzyxyw)).lo))).odd, ((VECTOR(int32_t, 2))(5L, 0x405E4096L))))))).yyxxyxyx, ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_243.yyyyzzxzxwywzwyz)))).hi, ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 16))(((((safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u((safe_mod_func_int32_t_s_s((0xC9FD86F1057A4757L >= ((safe_div_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_u((((l_243.w = l_242.z) == (l_205 = p_1658->g_161.x)) , 0x2484L), 5)) | ((*l_258) = (*l_240))), 0)), 11)) , (safe_lshift_func_uint16_t_u_s(((*l_261) = ((VECTOR(uint16_t, 4))(0xC0FAL, (p_106 , FAKE_DIVERGE(p_1658->local_1_offset, get_local_id(1), 10)), 0x6494L, 0x6FB1L)).y), 13))) , (((*l_240) > (**p_1658->g_179)) , (p_1658->g_140.y || (*l_240)))), (*l_240))) != p_1658->g_213.y)), p_107)), 2)), l_262)) > (*l_240)) | (*l_240)) <= p_109), p_108, l_263, ((VECTOR(int16_t, 4))(0x3E0FL)), ((VECTOR(int16_t, 2))(0x51A0L)), 0x68BDL, (-1L), (-1L), p_1658->g_170.s5, p_107, 5L, 0x2833L)), ((VECTOR(uint16_t, 16))(0xCB9DL))))).hi))), ((VECTOR(int32_t, 8))(1L))))))).s1;
            --p_1658->g_274.y;
        }
        else
        { /* block id: 99 */
            int16_t **l_280 = &l_279;
            VECTOR(uint64_t, 16) l_281 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xFDF51455F46D1861L), 0xFDF51455F46D1861L), 0xFDF51455F46D1861L, 0UL, 0xFDF51455F46D1861L, (VECTOR(uint64_t, 2))(0UL, 0xFDF51455F46D1861L), (VECTOR(uint64_t, 2))(0UL, 0xFDF51455F46D1861L), 0UL, 0xFDF51455F46D1861L, 0UL, 0xFDF51455F46D1861L);
            int32_t l_282 = (-2L);
            VECTOR(int64_t, 4) l_308 = (VECTOR(int64_t, 4))(0x6BA94C3CA436241FL, (VECTOR(int64_t, 2))(0x6BA94C3CA436241FL, (-7L)), (-7L));
            int16_t *l_309 = &p_1658->g_125;
            int8_t *l_310 = (void*)0;
            int8_t *l_311 = (void*)0;
            int8_t *l_312 = &p_1658->g_123;
            uint64_t *l_313 = &l_262;
            int i;
            (*p_1658->g_154) &= ((0UL ^ (safe_sub_func_int32_t_s_s((((p_1658->g_170.sd = ((((*l_280) = l_279) != (void*)0) > p_109)) == (-9L)) == ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0UL, 0xC05A89F3CFECB3F4L)).yyxy)).xzywyyzw)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(l_281.s51a2cab4327bcb12)).hi)))).s60)), ((l_282 = 7UL) && (safe_div_func_int64_t_s_s((safe_sub_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u(((*l_313) = ((safe_unary_minus_func_int64_t_s(0x2E82105391D0DBABL)) | (safe_add_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(((safe_add_func_int8_t_s_s((((((VECTOR(int8_t, 2))(1L, 0x62L)).lo ^ ((*l_312) = (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 4))(l_300.xyxx)), ((VECTOR(uint32_t, 16))(l_301.yxyyyyyyxyxxyyxy)).s3b5c))), ((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 2))(4294967295UL, 0xFA25F1CDL)).xyyx, ((VECTOR(uint32_t, 8))(((((safe_mod_func_int16_t_s_s(((*l_309) = (((*p_1658->g_94) = &l_205) != (((((safe_div_func_int8_t_s_s((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(l_308.yywzyxzz)).odd, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 16))((-3L), ((VECTOR(int64_t, 4))(0x1C6657B642941F78L)), 1L, p_109, 0L, ((VECTOR(int64_t, 8))((-2L))))).lo, (int64_t)l_282))).s22)).yyyx))).zzwwyzwx, ((VECTOR(int64_t, 8))(0L))))).s0, p_108)), p_107)) && p_109) , &p_1658->g_94) == (void*)0) , &l_205))), 65526UL)) | (-1L)) , l_282) & (*l_240)), ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 4))(0x8745FDADL)), 0x669B4658L)).hi))).even)).yyyxyxxx)).even, ((VECTOR(uint32_t, 4))(4UL))))), ((VECTOR(uint32_t, 4))(0x3ED8611DL))))).zxzzzxzzzyxxxzwx)).s7 <= l_281.sc))) , (void*)0) == &p_1658->g_179), l_243.y)) >= p_1658->g_161.x), p_1658->g_148.s8)), p_107)))), p_1658->g_148.sf)) , 247UL), l_221)), p_106)), 0x6032A6B069644F8BL))), 6UL, p_109, 0x61277F720654CC57L, 0xD2F8E4D5AA5F4DE5L, 1UL)).s90)).hi), l_314))) >= p_1658->g_140.w);
        }
        if (((((safe_div_func_int32_t_s_s((((*l_240) , 5L) <= 0x1F84829650C281D8L), (safe_mul_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(((((safe_add_func_int32_t_s_s((((safe_sub_func_uint64_t_u_u((safe_div_func_uint32_t_u_u((((VECTOR(int8_t, 8))((-1L), ((VECTOR(int8_t, 4))(p_1658->g_327.s1223)), 4L, 9L, 1L)).s0 , ((l_328 && (safe_rshift_func_uint8_t_u_s(1UL, 3))) & (&l_220[2][8][1] == &l_220[2][8][1]))), ((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(int32_t, 16))(l_331.s6124013060400230)).sc7, ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(l_332.xy)).yyxyxxxyxyyyxyyx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(p_110, 0x756B2D73L, 1L, 0L)))).wwzzwwywyyxzyzxy))).sd7))).xxxyxyxyxxxxxxxx, ((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 16))(p_1658->g_333.s6155054426314131)).lo, ((VECTOR(uint32_t, 16))(l_334.yzzwxwxywywyzwxy)).even, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 2))(0xFA95FC58L, 0x4BF49D69L)).xxxyxyyy, ((VECTOR(uint32_t, 8))(abs(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_335.s23611361)))))))))).even, ((VECTOR(uint32_t, 16))(l_336.s7fb11891a6c58d8b)).s7d94, ((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 16))((safe_rshift_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_add_func_uint64_t_u_u(((*l_343) = l_243.x), p_1658->g_201)), (*l_240))), 10)), 0xA053129CL, ((VECTOR(uint32_t, 8))(0x882704FFL)), ((VECTOR(uint32_t, 4))(0UL)), 0UL, 0x867BA3A6L)).sb2, ((VECTOR(uint32_t, 2))(7UL))))).yxxxxxyx, ((VECTOR(uint32_t, 8))(4294967292UL))))).odd))).odd)).yxxx)), ((VECTOR(uint32_t, 4))(4294967295UL)), 4294967295UL, ((VECTOR(uint32_t, 4))(0x7335CC24L)), (*l_240), 0x64FEF943L, 3UL)).even))).s0703636506613667, ((VECTOR(uint32_t, 16))(0x86CD3C3CL))))).s0)), 7L)) ^ 0x55A9L) , p_108), p_110)) >= (*l_240)) != p_110) & p_1658->g_230), p_1658->g_333.s0)), l_344)))) && (-1L)) != 0x36392A88L) , l_335.s5))
        { /* block id: 110 */
            int32_t *l_347 = &l_328;
            int32_t *l_348 = &p_1658->g_3;
            uint16_t *l_352 = &p_1658->g_66;
            uint16_t **l_351 = &l_352;
            int32_t l_371 = 0x624197A5L;
            for (p_1658->g_126 = 15; (p_1658->g_126 == 24); p_1658->g_126 = safe_add_func_uint8_t_u_u(p_1658->g_126, 5))
            { /* block id: 113 */
                return l_348;
            }
            (*p_1658->g_154) ^= ((*l_347) |= (safe_div_func_int16_t_s_s((l_371 = ((&p_107 != &l_262) <= ((((*l_351) = l_279) == &p_1658->g_66) , (safe_unary_minus_func_uint32_t_u((p_109 ^ ((((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 2))(p_1658->g_356.xx)).even, ((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(p_1658->g_359.s4606054372527025)).sd4ad)).xxyzxxwwxxzxxxwz, ((VECTOR(int8_t, 16))(p_1658->g_360.s3300610457012012))))).s6d8c, ((VECTOR(uint8_t, 16))(l_361.wzzxzyzwxwxwzxwz)).sd04f))).x, (!(safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_364.xxxyyyyx)).even)).odd)).lo, (*l_240)))))) & (((safe_sub_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((l_242.z , p_110), p_1658->g_27.x)), 0x13FBL)) ^ p_107), 0x18A3L)) ^ 1UL) <= (**p_1658->g_94))))) > 4L) || 8UL) >= p_1658->g_327.s4))))))), p_1658->g_274.y)));
        }
        else
        { /* block id: 120 */
            int32_t *l_372 = (void*)0;
            return l_372;
        }
        (*p_1658->g_154) ^= 0x74E1A5A0L;
    }
    else
    { /* block id: 124 */
        int32_t *l_373 = &l_314;
        int32_t *l_374 = &p_1658->g_230;
        int32_t *l_375 = &l_328;
        int32_t *l_376 = &p_1658->g_33;
        int32_t *l_377 = &l_328;
        int32_t *l_378 = (void*)0;
        int32_t *l_379 = &p_1658->g_230;
        int32_t *l_380 = &l_314;
        int32_t *l_381 = &l_328;
        int32_t *l_382 = &p_1658->g_33;
        int32_t *l_383 = (void*)0;
        int32_t *l_384 = &l_273;
        int32_t *l_385 = &l_314;
        int32_t *l_386 = &l_314;
        int32_t *l_387 = &p_1658->g_230;
        int32_t *l_388 = &l_273;
        int32_t *l_389[1][6][8] = {{{&p_1658->g_3,&l_314,&l_328,&l_314,&p_1658->g_3,&p_1658->g_3,&l_314,&l_328},{&p_1658->g_3,&l_314,&l_328,&l_314,&p_1658->g_3,&p_1658->g_3,&l_314,&l_328},{&p_1658->g_3,&l_314,&l_328,&l_314,&p_1658->g_3,&p_1658->g_3,&l_314,&l_328},{&p_1658->g_3,&l_314,&l_328,&l_314,&p_1658->g_3,&p_1658->g_3,&l_314,&l_328},{&p_1658->g_3,&l_314,&l_328,&l_314,&p_1658->g_3,&p_1658->g_3,&l_314,&l_328},{&p_1658->g_3,&l_314,&l_328,&l_314,&p_1658->g_3,&p_1658->g_3,&l_314,&l_328}}};
        VECTOR(uint16_t, 4) l_404 = (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0xC7BBL), 0xC7BBL);
        VECTOR(uint16_t, 16) l_443 = (VECTOR(uint16_t, 16))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 4UL), 4UL), 4UL, 65526UL, 4UL, (VECTOR(uint16_t, 2))(65526UL, 4UL), (VECTOR(uint16_t, 2))(65526UL, 4UL), 65526UL, 4UL, 65526UL, 4UL);
        VECTOR(int16_t, 4) l_449 = (VECTOR(int16_t, 4))(0x2FDFL, (VECTOR(int16_t, 2))(0x2FDFL, (-9L)), (-9L));
        int16_t **l_458 = &l_279;
        int i, j, k;
        ++p_1658->g_390;
lbl_457:
        if (p_107)
        { /* block id: 126 */
            int64_t l_393 = (-1L);
            int32_t l_394 = 0x038D84C4L;
            VECTOR(int32_t, 16) l_395 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x27E2D477L), 0x27E2D477L), 0x27E2D477L, (-1L), 0x27E2D477L, (VECTOR(int32_t, 2))((-1L), 0x27E2D477L), (VECTOR(int32_t, 2))((-1L), 0x27E2D477L), (-1L), 0x27E2D477L, (-1L), 0x27E2D477L);
            int8_t l_396 = 0x61L;
            int i;
            ++p_1658->g_397.z;
            (*p_1658->g_179) = &l_328;
            (*l_377) = (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(p_1658->g_402.s1677)).odd, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(p_1658->g_403.yxyx)).odd)), GROUP_DIVERGE(0, 1), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 8))(l_404.xwwyxwwz)).s30, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 16))(l_395.s7, 0xE53EL, ((safe_mod_func_int8_t_s_s(0L, (p_109 ^ (safe_lshift_func_int8_t_s_u(((0x68003471951FF4A6L || ((safe_mul_func_uint16_t_u_u((((((safe_sub_func_uint8_t_u_u((*l_381), (+(p_1658->g_397.w = 0x3EL)))) , ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x558CL, 0x2C50L)).yyyyxyxy)))).s3) , (safe_rshift_func_int16_t_s_u((((((safe_sub_func_int16_t_s_s(0L, (*l_240))) , 1L) == p_106) | (*l_240)) && FAKE_DIVERGE(p_1658->local_0_offset, get_local_id(0), 10)), (*l_240)))) == p_1658->g_356.y) | 0x7DA4EEECL), p_1658->g_360.s6)) , 0x3DF57D7BC0394E5CL)) ^ 7UL), l_396))))) > p_110), 0x9D9AL, ((VECTOR(uint16_t, 8))(0x0162L)), 0x473BL, 65535UL, 0x799FL, 0xD1ADL)), ((VECTOR(uint16_t, 16))(0x6953L))))).even, ((VECTOR(uint16_t, 8))(65533UL)), ((VECTOR(uint16_t, 8))(0xB8F0L))))).even, ((VECTOR(uint16_t, 4))(0xB378L))))).lo)), ((VECTOR(uint16_t, 2))(0UL)), ((VECTOR(uint16_t, 2))(0UL))))).yxyxxyxx)).s03, ((VECTOR(uint16_t, 2))(65535UL))))).yxxxxyxxyyyxxyxy)).sd4)), 1UL, 0x0DA3L, 0xD10AL)).s14))).odd, l_395.sb));
            (*l_388) |= 0x3A244C80L;
        }
        else
        { /* block id: 132 */
            int32_t l_419 = 4L;
            int32_t l_420 = (-1L);
            int32_t l_427 = 0L;
            int64_t l_453 = 0x0CDC82D792D49F48L;
            uint16_t *l_454 = &p_1658->g_390;
            uint16_t *l_455[4][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int i, j;
            for (p_1658->g_201 = 0; (p_1658->g_201 != 6); p_1658->g_201 = safe_add_func_int8_t_s_s(p_1658->g_201, 4))
            { /* block id: 135 */
                int8_t l_425 = 0x49L;
                int32_t l_426[1][10] = {{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)}};
                uint32_t l_428[9] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                int i, j;
                p_1658->g_422++;
                l_428[1]++;
                if (l_273)
                    goto lbl_457;
            }
            (*l_381) ^= (safe_lshift_func_uint16_t_u_u(((-10L) && p_1658->g_230), 13));
            (*p_1658->g_179) = ((safe_sub_func_uint32_t_u_u((((((p_106 < (p_1658->g_447.s6 = (safe_add_func_uint8_t_u_u(p_108, (p_107 && ((safe_lshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((l_427 ^= ((safe_div_func_uint16_t_u_u((l_419 = ((*l_454) = ((VECTOR(uint16_t, 8))(((void*)0 == &p_1658->g_123), p_106, ((VECTOR(uint16_t, 2))(l_443.s94)), 0xCAA8L, ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))(((+((*l_279) = (((safe_lshift_func_int16_t_s_s((((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_446.s20)))), 0x400FL, 0x0749L)).zwzwxwyyywwyxzzx)).s54, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_1658->g_447.s71)), 8UL, 65527UL)).odd, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(p_1658->g_448.xyyxxxyy)).s02)), ((VECTOR(uint16_t, 4))(65535UL, 65535UL, 0x80EEL, 0x3DB7L)), 0x09BCL, 0x7CF0L)).s33))).xyyxxyyy)).s00))).odd != p_1658->g_333.s6), (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(8UL, 65530UL, (((+0x25CDEC8486329C23L) , (((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_449.xyxx)).odd)).xxxyyxyy, ((VECTOR(int16_t, 16))(p_1658->g_450.yxyyxxyyyyxyyxxx)).even))).s3 != ((safe_div_func_uint8_t_u_u((1UL || p_1658->g_274.x), (-6L))) , (*l_240)))) , p_106), ((VECTOR(uint16_t, 4))(0x4C51L)), FAKE_DIVERGE(p_1658->global_0_offset, get_global_id(0), 10), p_1658->g_359.s2, 65534UL, 65535UL, ((VECTOR(uint16_t, 2))(9UL)), ((VECTOR(uint16_t, 2))(0xA5E1L)), 0x1737L)).sb, FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10), ((VECTOR(uint16_t, 4))(0x3561L)), 0xD857L, 3UL)).s2 & (*l_240)))) || 9UL) || (*l_240)))) | FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10)), 0x3C40L, 0xA938L, p_1658->g_161.x, l_453, 9UL, 0x420BL, 1UL)).s13, ((VECTOR(uint16_t, 2))(0x8091L))))), 0x5AEFL)).s1)), p_1658->g_148.s5)) != p_106)), 6)), 0)) < 1L)))))) & p_1658->g_359.s6) , (void*)0) == p_1658->g_456[2]) != p_106), 0x6A5772A8L)) , l_388);
        }
        l_458 = &p_1658->g_456[0];
    }
    (*p_1658->g_179) = &l_314;
    l_273 = (((&p_1658->g_390 == (p_1658->g_462 = &p_1658->g_390)) < p_1658->g_148.s8) >= (safe_sub_func_uint8_t_u_u(1UL, (((safe_sub_func_uint64_t_u_u(0x7936054B0B5B202AL, (((*l_240) == ((((*l_469) = (safe_lshift_func_uint16_t_u_u(0UL, 6))) , (p_109 = p_106)) ^ ((safe_rshift_func_uint8_t_u_u(((((*l_476) = (safe_mod_func_int64_t_s_s(0x1D82194D0920138EL, p_1658->g_421))) > 0x42L) && (*l_240)), 2)) != p_106))) < p_107))) != (*l_240)) != (-1L)))));
    return l_477;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_66 p_1658->g_33 p_1658->g_126 p_1658->g_140 p_1658->g_94 p_1658->g_95 p_1658->g_3 p_1658->g_148 p_1658->g_125 p_1658->g_154 p_1658->g_161 p_1658->g_170
 * writes: p_1658->g_66 p_1658->g_33 p_1658->g_126 p_1658->g_125 p_1658->g_148 p_1658->g_27 p_1658->g_179 p_1658->g_95
 */
int16_t  func_111(uint32_t  p_112, struct S0 * p_1658)
{ /* block id: 39 */
    uint8_t l_116[2];
    int32_t l_124 = 0L;
    int16_t l_131 = 8L;
    int32_t l_141 = 0x1FEA8EEEL;
    int32_t **l_147[4][1][1] = {{{&p_1658->g_95}},{{&p_1658->g_95}},{{&p_1658->g_95}},{{&p_1658->g_95}}};
    uint64_t l_159 = 0x5AE14A2BDFB097C1L;
    VECTOR(int16_t, 16) l_180 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x292DL), 0x292DL), 0x292DL, 1L, 0x292DL, (VECTOR(int16_t, 2))(1L, 0x292DL), (VECTOR(int16_t, 2))(1L, 0x292DL), 1L, 0x292DL, 1L, 0x292DL);
    VECTOR(int16_t, 2) l_181 = (VECTOR(int16_t, 2))(0x26F7L, (-4L));
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_116[i] = 255UL;
    for (p_1658->g_66 = 5; (p_1658->g_66 <= 60); p_1658->g_66 = safe_add_func_uint32_t_u_u(p_1658->g_66, 1))
    { /* block id: 42 */
        int32_t *l_115 = &p_1658->g_33;
        int32_t l_117 = 4L;
        int32_t *l_118 = &l_117;
        int32_t *l_119 = &p_1658->g_33;
        int32_t *l_120 = &p_1658->g_33;
        int32_t *l_121 = &l_117;
        int32_t *l_122[10][6][4] = {{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}},{{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33},{&p_1658->g_33,&p_1658->g_33,&p_1658->g_33,&p_1658->g_33}}};
        VECTOR(int32_t, 8) l_142 = (VECTOR(int32_t, 8))(0x10249FC3L, (VECTOR(int32_t, 4))(0x10249FC3L, (VECTOR(int32_t, 2))(0x10249FC3L, 0x23C1A26CL), 0x23C1A26CL), 0x23C1A26CL, 0x10249FC3L, 0x23C1A26CL);
        int16_t *l_145 = (void*)0;
        int16_t *l_146 = &p_1658->g_125;
        int i, j, k;
        (*l_115) |= p_112;
        (*l_115) = l_116[1];
        --p_1658->g_126;
        p_1658->g_148.s7 |= ((&l_121 == ((safe_rshift_func_uint16_t_u_s((l_131 == (((((p_1658->g_66 , 0L) >= (((safe_add_func_uint64_t_u_u(1UL, (safe_mul_func_int16_t_s_s(p_112, ((safe_rshift_func_int16_t_s_s(((*l_146) = (safe_add_func_int16_t_s_s(p_1658->g_66, (((VECTOR(uint8_t, 16))(p_1658->g_140.wyyywzzxxzxxxywy)).s0 < (((*l_119) = (l_141 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_142.s44)), ((*l_121) = (safe_add_func_int32_t_s_s((**p_1658->g_94), p_112))), ((VECTOR(int32_t, 2))((-6L))), 0L, 0x106D9094L, 6L)).s6410724406277264, ((VECTOR(int32_t, 16))(7L))))).s765a)), (*l_120), 9L, 0x2979A3CFL, 1L)))).odd)).wyxwyyzz)).lo, ((VECTOR(int32_t, 4))(0x045187FAL)), ((VECTOR(int32_t, 4))(0x428C9742L))))).zwyzwyyz)).s1)) == 0x2F403320L))))), 9)) || 0x9C13L))))) >= 0x790C2E982C83C740L) || l_116[1])) && p_1658->g_126) | 0L) < p_112)), p_112)) , l_147[2][0][0])) , 0x023C796EL);
    }
    if ((*p_1658->g_95))
    { /* block id: 51 */
        int32_t *l_149 = &l_141;
        uint8_t *l_155 = (void*)0;
        uint8_t *l_156[7] = {&l_116[1],&l_116[1],&l_116[1],&l_116[1],&l_116[1],&l_116[1],&l_116[1]};
        int i;
        p_1658->g_33 = (*p_1658->g_95);
        l_149 = (*p_1658->g_94);
        (*p_1658->g_154) ^= (safe_lshift_func_uint8_t_u_u(p_1658->g_125, (safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (p_1658->g_27.x = (p_1658->g_154 == (*p_1658->g_94)))))));
    }
    else
    { /* block id: 56 */
        uint32_t l_160[10];
        VECTOR(int8_t, 8) l_171 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x38L), 0x38L), 0x38L, (-1L), 0x38L);
        int32_t l_174 = 0x7FB0F1F6L;
        int16_t *l_176[3][10] = {{&l_131,&p_1658->g_125,&l_131,&l_131,&p_1658->g_125,&l_131,&l_131,&p_1658->g_125,&l_131,&l_131},{&l_131,&p_1658->g_125,&l_131,&l_131,&p_1658->g_125,&l_131,&l_131,&p_1658->g_125,&l_131,&l_131},{&l_131,&p_1658->g_125,&l_131,&l_131,&p_1658->g_125,&l_131,&l_131,&p_1658->g_125,&l_131,&l_131}};
        int16_t **l_175 = &l_176[2][5];
        uint32_t *l_177 = &l_160[4];
        int32_t **l_178 = &p_1658->g_95;
        int i, j;
        for (i = 0; i < 10; i++)
            l_160[i] = 4UL;
        for (l_141 = 17; (l_141 != (-8)); --l_141)
        { /* block id: 59 */
            l_160[4] ^= (l_159 = (*p_1658->g_154));
        }
        (*l_178) = ((((VECTOR(uint8_t, 16))(p_1658->g_161.xyxxxxyyxyxyyxyx)).s7 | (safe_mod_func_int8_t_s_s(((249UL || ((((safe_mod_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), ((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(p_1658->g_170.sa3acfe0e71678075)).s96, ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x31L, 1L)).xyxxxyyy)).odd, ((VECTOR(int8_t, 16))(l_171.s5662705403430307)).s8a4d))).odd, ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((-10L), 1L)).xyxyxyyyyxxxyyxx)).s6cf3, (int8_t)((((safe_lshift_func_uint16_t_u_u(l_174, (FAKE_DIVERGE(p_1658->local_0_offset, get_local_id(0), 10) <= (p_1658->g_170.sd || ((*l_177) &= (&p_1658->g_125 != ((*l_175) = (void*)0))))))) , l_178) == (p_1658->g_179 = l_178)) , ((&p_1658->g_25 != (((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_180.se46226d13d816f8d)).odd)).lo)))).lo, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_181.xyyyyxyyxyyxxyxy)))).saa))))).odd , (void*)0)) || 0x3EE06947A59DDDC5L))))).hi, ((VECTOR(int8_t, 2))(0x0BL)))))))).yyxxyxxy)).s2, p_112)) , (*p_1658->g_95)))) != 9UL), p_112)) == p_1658->g_161.x) , (**l_178)) , (**l_178))) != p_112), 4L))) , (*p_1658->g_94));
    }
    return p_1658->g_33;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1659;
    struct S0* p_1658 = &c_1659;
    struct S0 c_1660 = {
        0L, // p_1658->g_3
        (VECTOR(int64_t, 2))(0x36511F0B9F5AB171L, (-1L)), // p_1658->g_20
        0x67L, // p_1658->g_25
        (VECTOR(uint8_t, 2))(0UL, 0xAEL), // p_1658->g_27
        0x3FEEA102L, // p_1658->g_33
        1L, // p_1658->g_42
        0x8F3EL, // p_1658->g_43
        4294967295UL, // p_1658->g_55
        &p_1658->g_33, // p_1658->g_64
        65535UL, // p_1658->g_66
        &p_1658->g_3, // p_1658->g_95
        &p_1658->g_95, // p_1658->g_94
        0x08L, // p_1658->g_123
        0x75ADL, // p_1658->g_125
        0xE8C0C162L, // p_1658->g_126
        (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0x05L), 0x05L), // p_1658->g_140
        (VECTOR(int32_t, 16))(0x224EF59AL, (VECTOR(int32_t, 4))(0x224EF59AL, (VECTOR(int32_t, 2))(0x224EF59AL, 0x2662B469L), 0x2662B469L), 0x2662B469L, 0x224EF59AL, 0x2662B469L, (VECTOR(int32_t, 2))(0x224EF59AL, 0x2662B469L), (VECTOR(int32_t, 2))(0x224EF59AL, 0x2662B469L), 0x224EF59AL, 0x2662B469L, 0x224EF59AL, 0x2662B469L), // p_1658->g_148
        &p_1658->g_33, // p_1658->g_154
        (VECTOR(uint8_t, 2))(0x83L, 3UL), // p_1658->g_161
        (VECTOR(int8_t, 16))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x7AL), 0x7AL), 0x7AL, (-9L), 0x7AL, (VECTOR(int8_t, 2))((-9L), 0x7AL), (VECTOR(int8_t, 2))((-9L), 0x7AL), (-9L), 0x7AL, (-9L), 0x7AL), // p_1658->g_170
        &p_1658->g_154, // p_1658->g_179
        (void*)0, // p_1658->g_186
        (void*)0, // p_1658->g_187
        4294967294UL, // p_1658->g_201
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x9A345722FB22D0E7L), 0x9A345722FB22D0E7L), // p_1658->g_213
        0x749128C8L, // p_1658->g_230
        &p_1658->g_230, // p_1658->g_229
        (VECTOR(uint32_t, 2))(4294967288UL, 1UL), // p_1658->g_274
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L), // p_1658->g_327
        (VECTOR(uint32_t, 8))(4UL, (VECTOR(uint32_t, 4))(4UL, (VECTOR(uint32_t, 2))(4UL, 0x8867E31AL), 0x8867E31AL), 0x8867E31AL, 4UL, 0x8867E31AL), // p_1658->g_333
        (VECTOR(int16_t, 2))(3L, 7L), // p_1658->g_356
        (VECTOR(int8_t, 8))(0x42L, (VECTOR(int8_t, 4))(0x42L, (VECTOR(int8_t, 2))(0x42L, 0x7FL), 0x7FL), 0x7FL, 0x42L, 0x7FL), // p_1658->g_359
        (VECTOR(int8_t, 8))(0x55L, (VECTOR(int8_t, 4))(0x55L, (VECTOR(int8_t, 2))(0x55L, 0x1FL), 0x1FL), 0x1FL, 0x55L, 0x1FL), // p_1658->g_360
        3UL, // p_1658->g_390
        (VECTOR(uint8_t, 4))(0x5BL, (VECTOR(uint8_t, 2))(0x5BL, 6UL), 6UL), // p_1658->g_397
        (VECTOR(uint16_t, 8))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 65535UL), 65535UL), 65535UL, 65530UL, 65535UL), // p_1658->g_402
        (VECTOR(uint16_t, 2))(0UL, 9UL), // p_1658->g_403
        2L, // p_1658->g_421
        0UL, // p_1658->g_422
        (VECTOR(uint16_t, 8))(0xBBD3L, (VECTOR(uint16_t, 4))(0xBBD3L, (VECTOR(uint16_t, 2))(0xBBD3L, 0xEFB5L), 0xEFB5L), 0xEFB5L, 0xBBD3L, 0xEFB5L), // p_1658->g_447
        (VECTOR(uint16_t, 2))(65527UL, 0UL), // p_1658->g_448
        (VECTOR(int16_t, 2))(0x3A8FL, 0x2022L), // p_1658->g_450
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1658->g_456
        &p_1658->g_390, // p_1658->g_462
        0x3D92FC4BL, // p_1658->g_470
        {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL}, // p_1658->g_493
        0x71F3E3C4L, // p_1658->g_497
        0x309EB7456C18C4ADL, // p_1658->g_499
        {18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL}, // p_1658->g_502
        0L, // p_1658->g_542
        {&p_1658->g_542,&p_1658->g_542,&p_1658->g_542,&p_1658->g_542}, // p_1658->g_541
        &p_1658->g_42, // p_1658->g_566
        &p_1658->g_566, // p_1658->g_565
        (-9L), // p_1658->g_611
        (VECTOR(int32_t, 8))(0x59BFEC42L, (VECTOR(int32_t, 4))(0x59BFEC42L, (VECTOR(int32_t, 2))(0x59BFEC42L, 0x1023B44AL), 0x1023B44AL), 0x1023B44AL, 0x59BFEC42L, 0x1023B44AL), // p_1658->g_641
        (VECTOR(uint32_t, 16))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 4294967295UL), 4294967295UL), 4294967295UL, 3UL, 4294967295UL, (VECTOR(uint32_t, 2))(3UL, 4294967295UL), (VECTOR(uint32_t, 2))(3UL, 4294967295UL), 3UL, 4294967295UL, 3UL, 4294967295UL), // p_1658->g_644
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL), // p_1658->g_692
        (VECTOR(int64_t, 2))(0x7F120E2773E334F9L, 8L), // p_1658->g_698
        (VECTOR(uint64_t, 16))(0xC8872BA24D97FCEFL, (VECTOR(uint64_t, 4))(0xC8872BA24D97FCEFL, (VECTOR(uint64_t, 2))(0xC8872BA24D97FCEFL, 0xB7989F800EEF5FCDL), 0xB7989F800EEF5FCDL), 0xB7989F800EEF5FCDL, 0xC8872BA24D97FCEFL, 0xB7989F800EEF5FCDL, (VECTOR(uint64_t, 2))(0xC8872BA24D97FCEFL, 0xB7989F800EEF5FCDL), (VECTOR(uint64_t, 2))(0xC8872BA24D97FCEFL, 0xB7989F800EEF5FCDL), 0xC8872BA24D97FCEFL, 0xB7989F800EEF5FCDL, 0xC8872BA24D97FCEFL, 0xB7989F800EEF5FCDL), // p_1658->g_712
        0x003B1A78L, // p_1658->g_714
        {(void*)0,(void*)0}, // p_1658->g_731
        &p_1658->g_33, // p_1658->g_732
        0L, // p_1658->g_733
        (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x03520282L), 0x03520282L), 0x03520282L, (-3L), 0x03520282L, (VECTOR(int32_t, 2))((-3L), 0x03520282L), (VECTOR(int32_t, 2))((-3L), 0x03520282L), (-3L), 0x03520282L, (-3L), 0x03520282L), // p_1658->g_736
        (VECTOR(int64_t, 4))(0x44133C08BF363435L, (VECTOR(int64_t, 2))(0x44133C08BF363435L, (-10L)), (-10L)), // p_1658->g_740
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 8L), 8L), 8L, (-1L), 8L, (VECTOR(int16_t, 2))((-1L), 8L), (VECTOR(int16_t, 2))((-1L), 8L), (-1L), 8L, (-1L), 8L), // p_1658->g_743
        (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 1L), 1L), 1L, (-8L), 1L, (VECTOR(int32_t, 2))((-8L), 1L), (VECTOR(int32_t, 2))((-8L), 1L), (-8L), 1L, (-8L), 1L), // p_1658->g_748
        (VECTOR(int32_t, 16))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x493C85AFL), 0x493C85AFL), 0x493C85AFL, 7L, 0x493C85AFL, (VECTOR(int32_t, 2))(7L, 0x493C85AFL), (VECTOR(int32_t, 2))(7L, 0x493C85AFL), 7L, 0x493C85AFL, 7L, 0x493C85AFL), // p_1658->g_749
        (void*)0, // p_1658->g_797
        (VECTOR(uint8_t, 4))(0xFBL, (VECTOR(uint8_t, 2))(0xFBL, 0x70L), 0x70L), // p_1658->g_837
        (VECTOR(uint8_t, 8))(0xC3L, (VECTOR(uint8_t, 4))(0xC3L, (VECTOR(uint8_t, 2))(0xC3L, 0xBAL), 0xBAL), 0xBAL, 0xC3L, 0xBAL), // p_1658->g_839
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 9L), 9L), 9L, 1L, 9L, (VECTOR(int8_t, 2))(1L, 9L), (VECTOR(int8_t, 2))(1L, 9L), 1L, 9L, 1L, 9L), // p_1658->g_842
        0x0F54EE21L, // p_1658->g_849
        (VECTOR(int16_t, 4))(0x7A03L, (VECTOR(int16_t, 2))(0x7A03L, 0x505EL), 0x505EL), // p_1658->g_872
        0xE7D90504L, // p_1658->g_885
        (void*)0, // p_1658->g_924
        &p_1658->g_924, // p_1658->g_923
        (VECTOR(uint8_t, 16))(0xD7L, (VECTOR(uint8_t, 4))(0xD7L, (VECTOR(uint8_t, 2))(0xD7L, 0xD4L), 0xD4L), 0xD4L, 0xD7L, 0xD4L, (VECTOR(uint8_t, 2))(0xD7L, 0xD4L), (VECTOR(uint8_t, 2))(0xD7L, 0xD4L), 0xD7L, 0xD4L, 0xD7L, 0xD4L), // p_1658->g_937
        (VECTOR(uint32_t, 4))(0xEE1E1097L, (VECTOR(uint32_t, 2))(0xEE1E1097L, 4294967290UL), 4294967290UL), // p_1658->g_950
        (VECTOR(uint32_t, 2))(0xA6044505L, 1UL), // p_1658->g_951
        (VECTOR(int8_t, 2))(0L, 0x61L), // p_1658->g_978
        0x2EL, // p_1658->g_986
        (void*)0, // p_1658->g_1010
        (VECTOR(int64_t, 8))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), (-1L)), (-1L)), (-1L), (-5L), (-1L)), // p_1658->g_1021
        &p_1658->g_125, // p_1658->g_1028
        (void*)0, // p_1658->g_1031
        (VECTOR(uint64_t, 4))(0x30444D89AC283F6EL, (VECTOR(uint64_t, 2))(0x30444D89AC283F6EL, 0xE8D320E3064294CDL), 0xE8D320E3064294CDL), // p_1658->g_1047
        (void*)0, // p_1658->g_1061
        &p_1658->g_1061, // p_1658->g_1060
        (void*)0, // p_1658->g_1066
        &p_1658->g_1066, // p_1658->g_1065
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-4L)), (-4L)), // p_1658->g_1068
        &p_1658->g_1066, // p_1658->g_1071
        (VECTOR(int32_t, 2))(0x076EDE4BL, (-5L)), // p_1658->g_1079
        (VECTOR(int16_t, 16))(0x0108L, (VECTOR(int16_t, 4))(0x0108L, (VECTOR(int16_t, 2))(0x0108L, 0L), 0L), 0L, 0x0108L, 0L, (VECTOR(int16_t, 2))(0x0108L, 0L), (VECTOR(int16_t, 2))(0x0108L, 0L), 0x0108L, 0L, 0x0108L, 0L), // p_1658->g_1098
        (void*)0, // p_1658->g_1147
        &p_1658->g_1147, // p_1658->g_1146
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x6D12L), 0x6D12L), 0x6D12L, 0L, 0x6D12L, (VECTOR(int16_t, 2))(0L, 0x6D12L), (VECTOR(int16_t, 2))(0L, 0x6D12L), 0L, 0x6D12L, 0L, 0x6D12L), // p_1658->g_1169
        (void*)0, // p_1658->g_1183
        (VECTOR(int64_t, 16))(0x6F60CBE41F649C70L, (VECTOR(int64_t, 4))(0x6F60CBE41F649C70L, (VECTOR(int64_t, 2))(0x6F60CBE41F649C70L, 0x4BDBB7BB6B37E6FAL), 0x4BDBB7BB6B37E6FAL), 0x4BDBB7BB6B37E6FAL, 0x6F60CBE41F649C70L, 0x4BDBB7BB6B37E6FAL, (VECTOR(int64_t, 2))(0x6F60CBE41F649C70L, 0x4BDBB7BB6B37E6FAL), (VECTOR(int64_t, 2))(0x6F60CBE41F649C70L, 0x4BDBB7BB6B37E6FAL), 0x6F60CBE41F649C70L, 0x4BDBB7BB6B37E6FAL, 0x6F60CBE41F649C70L, 0x4BDBB7BB6B37E6FAL), // p_1658->g_1205
        0x4CFA92BBL, // p_1658->g_1206
        {{{0x392C624DL,(-9L),0x392C624DL,0x392C624DL,(-9L),0x392C624DL},{0x392C624DL,(-9L),0x392C624DL,0x392C624DL,(-9L),0x392C624DL},{0x392C624DL,(-9L),0x392C624DL,0x392C624DL,(-9L),0x392C624DL},{0x392C624DL,(-9L),0x392C624DL,0x392C624DL,(-9L),0x392C624DL},{0x392C624DL,(-9L),0x392C624DL,0x392C624DL,(-9L),0x392C624DL},{0x392C624DL,(-9L),0x392C624DL,0x392C624DL,(-9L),0x392C624DL},{0x392C624DL,(-9L),0x392C624DL,0x392C624DL,(-9L),0x392C624DL},{0x392C624DL,(-9L),0x392C624DL,0x392C624DL,(-9L),0x392C624DL},{0x392C624DL,(-9L),0x392C624DL,0x392C624DL,(-9L),0x392C624DL}}}, // p_1658->g_1208
        (VECTOR(int64_t, 16))(0x2A8010F214799F31L, (VECTOR(int64_t, 4))(0x2A8010F214799F31L, (VECTOR(int64_t, 2))(0x2A8010F214799F31L, 0x76EA4ABA6964C73EL), 0x76EA4ABA6964C73EL), 0x76EA4ABA6964C73EL, 0x2A8010F214799F31L, 0x76EA4ABA6964C73EL, (VECTOR(int64_t, 2))(0x2A8010F214799F31L, 0x76EA4ABA6964C73EL), (VECTOR(int64_t, 2))(0x2A8010F214799F31L, 0x76EA4ABA6964C73EL), 0x2A8010F214799F31L, 0x76EA4ABA6964C73EL, 0x2A8010F214799F31L, 0x76EA4ABA6964C73EL), // p_1658->g_1234
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL), // p_1658->g_1237
        {{{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)}},{{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)}},{{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)}},{{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)}},{{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)}},{{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)}},{{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)}},{{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)}},{{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)},{(-7L),(-9L)}}}, // p_1658->g_1252
        (VECTOR(uint64_t, 4))(0xAE8589AEE038BA4EL, (VECTOR(uint64_t, 2))(0xAE8589AEE038BA4EL, 0UL), 0UL), // p_1658->g_1258
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x0107L), 0x0107L), // p_1658->g_1264
        (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x68A1E99FL), 0x68A1E99FL), 0x68A1E99FL, (-5L), 0x68A1E99FL, (VECTOR(int32_t, 2))((-5L), 0x68A1E99FL), (VECTOR(int32_t, 2))((-5L), 0x68A1E99FL), (-5L), 0x68A1E99FL, (-5L), 0x68A1E99FL), // p_1658->g_1304
        0x35L, // p_1658->g_1317
        (VECTOR(uint32_t, 2))(0x328345A3L, 0x6348B754L), // p_1658->g_1348
        &p_1658->g_565, // p_1658->g_1354
        0xCC4C3C5B1AFB4C08L, // p_1658->g_1367
        {(-7L)}, // p_1658->g_1407
        (VECTOR(uint8_t, 2))(0xD5L, 0xD1L), // p_1658->g_1424
        (VECTOR(uint8_t, 2))(0x6EL, 0x3BL), // p_1658->g_1429
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x41L), 0x41L), 0x41L, 0UL, 0x41L), // p_1658->g_1430
        (VECTOR(uint8_t, 8))(0x6AL, (VECTOR(uint8_t, 4))(0x6AL, (VECTOR(uint8_t, 2))(0x6AL, 246UL), 246UL), 246UL, 0x6AL, 246UL), // p_1658->g_1431
        (VECTOR(int16_t, 8))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0x3E26L), 0x3E26L), 0x3E26L, (-2L), 0x3E26L), // p_1658->g_1434
        (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 8UL), 8UL), // p_1658->g_1466
        (VECTOR(uint8_t, 16))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 248UL), 248UL), 248UL, 6UL, 248UL, (VECTOR(uint8_t, 2))(6UL, 248UL), (VECTOR(uint8_t, 2))(6UL, 248UL), 6UL, 248UL, 6UL, 248UL), // p_1658->g_1485
        (VECTOR(uint64_t, 2))(1UL, 0xADD05904C9DCE5F5L), // p_1658->g_1498
        {&p_1658->g_94,&p_1658->g_94,&p_1658->g_94,&p_1658->g_94,&p_1658->g_94,&p_1658->g_94}, // p_1658->g_1520
        &p_1658->g_1520[1], // p_1658->g_1519
        {(void*)0,(void*)0,(void*)0}, // p_1658->g_1523
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-6L)), (-6L)), (-6L), (-1L), (-6L)), // p_1658->g_1535
        (VECTOR(int16_t, 2))(0x59B5L, (-1L)), // p_1658->g_1537
        5UL, // p_1658->g_1541
        (VECTOR(int16_t, 4))(0x3567L, (VECTOR(int16_t, 2))(0x3567L, 7L), 7L), // p_1658->g_1568
        (VECTOR(int16_t, 16))(0x52B0L, (VECTOR(int16_t, 4))(0x52B0L, (VECTOR(int16_t, 2))(0x52B0L, 0x2B30L), 0x2B30L), 0x2B30L, 0x52B0L, 0x2B30L, (VECTOR(int16_t, 2))(0x52B0L, 0x2B30L), (VECTOR(int16_t, 2))(0x52B0L, 0x2B30L), 0x52B0L, 0x2B30L, 0x52B0L, 0x2B30L), // p_1658->g_1569
        (VECTOR(int32_t, 4))(0x06B79F37L, (VECTOR(int32_t, 2))(0x06B79F37L, 0x1DEC4C3DL), 0x1DEC4C3DL), // p_1658->g_1570
        0x3237L, // p_1658->g_1573
        (-10L), // p_1658->g_1639
        (VECTOR(uint32_t, 4))(0x1C917EB7L, (VECTOR(uint32_t, 2))(0x1C917EB7L, 0UL), 0UL), // p_1658->g_1643
        (VECTOR(uint32_t, 16))(0x145F08E0L, (VECTOR(uint32_t, 4))(0x145F08E0L, (VECTOR(uint32_t, 2))(0x145F08E0L, 5UL), 5UL), 5UL, 0x145F08E0L, 5UL, (VECTOR(uint32_t, 2))(0x145F08E0L, 5UL), (VECTOR(uint32_t, 2))(0x145F08E0L, 5UL), 0x145F08E0L, 5UL, 0x145F08E0L, 5UL), // p_1658->g_1644
        (VECTOR(uint32_t, 8))(0x13BF25BFL, (VECTOR(uint32_t, 4))(0x13BF25BFL, (VECTOR(uint32_t, 2))(0x13BF25BFL, 0x8765EC67L), 0x8765EC67L), 0x8765EC67L, 0x13BF25BFL, 0x8765EC67L), // p_1658->g_1646
        9L, // p_1658->g_1652
        sequence_input[get_global_id(0)], // p_1658->global_0_offset
        sequence_input[get_global_id(1)], // p_1658->global_1_offset
        sequence_input[get_global_id(2)], // p_1658->global_2_offset
        sequence_input[get_local_id(0)], // p_1658->local_0_offset
        sequence_input[get_local_id(1)], // p_1658->local_1_offset
        sequence_input[get_local_id(2)], // p_1658->local_2_offset
        sequence_input[get_group_id(0)], // p_1658->group_0_offset
        sequence_input[get_group_id(1)], // p_1658->group_1_offset
        sequence_input[get_group_id(2)], // p_1658->group_2_offset
    };
    c_1659 = c_1660;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1658);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1658->g_3, "p_1658->g_3", print_hash_value);
    transparent_crc(p_1658->g_20.x, "p_1658->g_20.x", print_hash_value);
    transparent_crc(p_1658->g_20.y, "p_1658->g_20.y", print_hash_value);
    transparent_crc(p_1658->g_25, "p_1658->g_25", print_hash_value);
    transparent_crc(p_1658->g_27.x, "p_1658->g_27.x", print_hash_value);
    transparent_crc(p_1658->g_27.y, "p_1658->g_27.y", print_hash_value);
    transparent_crc(p_1658->g_33, "p_1658->g_33", print_hash_value);
    transparent_crc(p_1658->g_42, "p_1658->g_42", print_hash_value);
    transparent_crc(p_1658->g_43, "p_1658->g_43", print_hash_value);
    transparent_crc(p_1658->g_55, "p_1658->g_55", print_hash_value);
    transparent_crc(p_1658->g_66, "p_1658->g_66", print_hash_value);
    transparent_crc(p_1658->g_123, "p_1658->g_123", print_hash_value);
    transparent_crc(p_1658->g_125, "p_1658->g_125", print_hash_value);
    transparent_crc(p_1658->g_126, "p_1658->g_126", print_hash_value);
    transparent_crc(p_1658->g_140.x, "p_1658->g_140.x", print_hash_value);
    transparent_crc(p_1658->g_140.y, "p_1658->g_140.y", print_hash_value);
    transparent_crc(p_1658->g_140.z, "p_1658->g_140.z", print_hash_value);
    transparent_crc(p_1658->g_140.w, "p_1658->g_140.w", print_hash_value);
    transparent_crc(p_1658->g_148.s0, "p_1658->g_148.s0", print_hash_value);
    transparent_crc(p_1658->g_148.s1, "p_1658->g_148.s1", print_hash_value);
    transparent_crc(p_1658->g_148.s2, "p_1658->g_148.s2", print_hash_value);
    transparent_crc(p_1658->g_148.s3, "p_1658->g_148.s3", print_hash_value);
    transparent_crc(p_1658->g_148.s4, "p_1658->g_148.s4", print_hash_value);
    transparent_crc(p_1658->g_148.s5, "p_1658->g_148.s5", print_hash_value);
    transparent_crc(p_1658->g_148.s6, "p_1658->g_148.s6", print_hash_value);
    transparent_crc(p_1658->g_148.s7, "p_1658->g_148.s7", print_hash_value);
    transparent_crc(p_1658->g_148.s8, "p_1658->g_148.s8", print_hash_value);
    transparent_crc(p_1658->g_148.s9, "p_1658->g_148.s9", print_hash_value);
    transparent_crc(p_1658->g_148.sa, "p_1658->g_148.sa", print_hash_value);
    transparent_crc(p_1658->g_148.sb, "p_1658->g_148.sb", print_hash_value);
    transparent_crc(p_1658->g_148.sc, "p_1658->g_148.sc", print_hash_value);
    transparent_crc(p_1658->g_148.sd, "p_1658->g_148.sd", print_hash_value);
    transparent_crc(p_1658->g_148.se, "p_1658->g_148.se", print_hash_value);
    transparent_crc(p_1658->g_148.sf, "p_1658->g_148.sf", print_hash_value);
    transparent_crc(p_1658->g_161.x, "p_1658->g_161.x", print_hash_value);
    transparent_crc(p_1658->g_161.y, "p_1658->g_161.y", print_hash_value);
    transparent_crc(p_1658->g_170.s0, "p_1658->g_170.s0", print_hash_value);
    transparent_crc(p_1658->g_170.s1, "p_1658->g_170.s1", print_hash_value);
    transparent_crc(p_1658->g_170.s2, "p_1658->g_170.s2", print_hash_value);
    transparent_crc(p_1658->g_170.s3, "p_1658->g_170.s3", print_hash_value);
    transparent_crc(p_1658->g_170.s4, "p_1658->g_170.s4", print_hash_value);
    transparent_crc(p_1658->g_170.s5, "p_1658->g_170.s5", print_hash_value);
    transparent_crc(p_1658->g_170.s6, "p_1658->g_170.s6", print_hash_value);
    transparent_crc(p_1658->g_170.s7, "p_1658->g_170.s7", print_hash_value);
    transparent_crc(p_1658->g_170.s8, "p_1658->g_170.s8", print_hash_value);
    transparent_crc(p_1658->g_170.s9, "p_1658->g_170.s9", print_hash_value);
    transparent_crc(p_1658->g_170.sa, "p_1658->g_170.sa", print_hash_value);
    transparent_crc(p_1658->g_170.sb, "p_1658->g_170.sb", print_hash_value);
    transparent_crc(p_1658->g_170.sc, "p_1658->g_170.sc", print_hash_value);
    transparent_crc(p_1658->g_170.sd, "p_1658->g_170.sd", print_hash_value);
    transparent_crc(p_1658->g_170.se, "p_1658->g_170.se", print_hash_value);
    transparent_crc(p_1658->g_170.sf, "p_1658->g_170.sf", print_hash_value);
    transparent_crc(p_1658->g_201, "p_1658->g_201", print_hash_value);
    transparent_crc(p_1658->g_213.x, "p_1658->g_213.x", print_hash_value);
    transparent_crc(p_1658->g_213.y, "p_1658->g_213.y", print_hash_value);
    transparent_crc(p_1658->g_213.z, "p_1658->g_213.z", print_hash_value);
    transparent_crc(p_1658->g_213.w, "p_1658->g_213.w", print_hash_value);
    transparent_crc(p_1658->g_230, "p_1658->g_230", print_hash_value);
    transparent_crc(p_1658->g_274.x, "p_1658->g_274.x", print_hash_value);
    transparent_crc(p_1658->g_274.y, "p_1658->g_274.y", print_hash_value);
    transparent_crc(p_1658->g_327.s0, "p_1658->g_327.s0", print_hash_value);
    transparent_crc(p_1658->g_327.s1, "p_1658->g_327.s1", print_hash_value);
    transparent_crc(p_1658->g_327.s2, "p_1658->g_327.s2", print_hash_value);
    transparent_crc(p_1658->g_327.s3, "p_1658->g_327.s3", print_hash_value);
    transparent_crc(p_1658->g_327.s4, "p_1658->g_327.s4", print_hash_value);
    transparent_crc(p_1658->g_327.s5, "p_1658->g_327.s5", print_hash_value);
    transparent_crc(p_1658->g_327.s6, "p_1658->g_327.s6", print_hash_value);
    transparent_crc(p_1658->g_327.s7, "p_1658->g_327.s7", print_hash_value);
    transparent_crc(p_1658->g_333.s0, "p_1658->g_333.s0", print_hash_value);
    transparent_crc(p_1658->g_333.s1, "p_1658->g_333.s1", print_hash_value);
    transparent_crc(p_1658->g_333.s2, "p_1658->g_333.s2", print_hash_value);
    transparent_crc(p_1658->g_333.s3, "p_1658->g_333.s3", print_hash_value);
    transparent_crc(p_1658->g_333.s4, "p_1658->g_333.s4", print_hash_value);
    transparent_crc(p_1658->g_333.s5, "p_1658->g_333.s5", print_hash_value);
    transparent_crc(p_1658->g_333.s6, "p_1658->g_333.s6", print_hash_value);
    transparent_crc(p_1658->g_333.s7, "p_1658->g_333.s7", print_hash_value);
    transparent_crc(p_1658->g_356.x, "p_1658->g_356.x", print_hash_value);
    transparent_crc(p_1658->g_356.y, "p_1658->g_356.y", print_hash_value);
    transparent_crc(p_1658->g_359.s0, "p_1658->g_359.s0", print_hash_value);
    transparent_crc(p_1658->g_359.s1, "p_1658->g_359.s1", print_hash_value);
    transparent_crc(p_1658->g_359.s2, "p_1658->g_359.s2", print_hash_value);
    transparent_crc(p_1658->g_359.s3, "p_1658->g_359.s3", print_hash_value);
    transparent_crc(p_1658->g_359.s4, "p_1658->g_359.s4", print_hash_value);
    transparent_crc(p_1658->g_359.s5, "p_1658->g_359.s5", print_hash_value);
    transparent_crc(p_1658->g_359.s6, "p_1658->g_359.s6", print_hash_value);
    transparent_crc(p_1658->g_359.s7, "p_1658->g_359.s7", print_hash_value);
    transparent_crc(p_1658->g_360.s0, "p_1658->g_360.s0", print_hash_value);
    transparent_crc(p_1658->g_360.s1, "p_1658->g_360.s1", print_hash_value);
    transparent_crc(p_1658->g_360.s2, "p_1658->g_360.s2", print_hash_value);
    transparent_crc(p_1658->g_360.s3, "p_1658->g_360.s3", print_hash_value);
    transparent_crc(p_1658->g_360.s4, "p_1658->g_360.s4", print_hash_value);
    transparent_crc(p_1658->g_360.s5, "p_1658->g_360.s5", print_hash_value);
    transparent_crc(p_1658->g_360.s6, "p_1658->g_360.s6", print_hash_value);
    transparent_crc(p_1658->g_360.s7, "p_1658->g_360.s7", print_hash_value);
    transparent_crc(p_1658->g_390, "p_1658->g_390", print_hash_value);
    transparent_crc(p_1658->g_397.x, "p_1658->g_397.x", print_hash_value);
    transparent_crc(p_1658->g_397.y, "p_1658->g_397.y", print_hash_value);
    transparent_crc(p_1658->g_397.z, "p_1658->g_397.z", print_hash_value);
    transparent_crc(p_1658->g_397.w, "p_1658->g_397.w", print_hash_value);
    transparent_crc(p_1658->g_402.s0, "p_1658->g_402.s0", print_hash_value);
    transparent_crc(p_1658->g_402.s1, "p_1658->g_402.s1", print_hash_value);
    transparent_crc(p_1658->g_402.s2, "p_1658->g_402.s2", print_hash_value);
    transparent_crc(p_1658->g_402.s3, "p_1658->g_402.s3", print_hash_value);
    transparent_crc(p_1658->g_402.s4, "p_1658->g_402.s4", print_hash_value);
    transparent_crc(p_1658->g_402.s5, "p_1658->g_402.s5", print_hash_value);
    transparent_crc(p_1658->g_402.s6, "p_1658->g_402.s6", print_hash_value);
    transparent_crc(p_1658->g_402.s7, "p_1658->g_402.s7", print_hash_value);
    transparent_crc(p_1658->g_403.x, "p_1658->g_403.x", print_hash_value);
    transparent_crc(p_1658->g_403.y, "p_1658->g_403.y", print_hash_value);
    transparent_crc(p_1658->g_421, "p_1658->g_421", print_hash_value);
    transparent_crc(p_1658->g_422, "p_1658->g_422", print_hash_value);
    transparent_crc(p_1658->g_447.s0, "p_1658->g_447.s0", print_hash_value);
    transparent_crc(p_1658->g_447.s1, "p_1658->g_447.s1", print_hash_value);
    transparent_crc(p_1658->g_447.s2, "p_1658->g_447.s2", print_hash_value);
    transparent_crc(p_1658->g_447.s3, "p_1658->g_447.s3", print_hash_value);
    transparent_crc(p_1658->g_447.s4, "p_1658->g_447.s4", print_hash_value);
    transparent_crc(p_1658->g_447.s5, "p_1658->g_447.s5", print_hash_value);
    transparent_crc(p_1658->g_447.s6, "p_1658->g_447.s6", print_hash_value);
    transparent_crc(p_1658->g_447.s7, "p_1658->g_447.s7", print_hash_value);
    transparent_crc(p_1658->g_448.x, "p_1658->g_448.x", print_hash_value);
    transparent_crc(p_1658->g_448.y, "p_1658->g_448.y", print_hash_value);
    transparent_crc(p_1658->g_450.x, "p_1658->g_450.x", print_hash_value);
    transparent_crc(p_1658->g_450.y, "p_1658->g_450.y", print_hash_value);
    transparent_crc(p_1658->g_470, "p_1658->g_470", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1658->g_493[i], "p_1658->g_493[i]", print_hash_value);

    }
    transparent_crc(p_1658->g_497, "p_1658->g_497", print_hash_value);
    transparent_crc(p_1658->g_499, "p_1658->g_499", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1658->g_502[i], "p_1658->g_502[i]", print_hash_value);

    }
    transparent_crc(p_1658->g_542, "p_1658->g_542", print_hash_value);
    transparent_crc(p_1658->g_611, "p_1658->g_611", print_hash_value);
    transparent_crc(p_1658->g_641.s0, "p_1658->g_641.s0", print_hash_value);
    transparent_crc(p_1658->g_641.s1, "p_1658->g_641.s1", print_hash_value);
    transparent_crc(p_1658->g_641.s2, "p_1658->g_641.s2", print_hash_value);
    transparent_crc(p_1658->g_641.s3, "p_1658->g_641.s3", print_hash_value);
    transparent_crc(p_1658->g_641.s4, "p_1658->g_641.s4", print_hash_value);
    transparent_crc(p_1658->g_641.s5, "p_1658->g_641.s5", print_hash_value);
    transparent_crc(p_1658->g_641.s6, "p_1658->g_641.s6", print_hash_value);
    transparent_crc(p_1658->g_641.s7, "p_1658->g_641.s7", print_hash_value);
    transparent_crc(p_1658->g_644.s0, "p_1658->g_644.s0", print_hash_value);
    transparent_crc(p_1658->g_644.s1, "p_1658->g_644.s1", print_hash_value);
    transparent_crc(p_1658->g_644.s2, "p_1658->g_644.s2", print_hash_value);
    transparent_crc(p_1658->g_644.s3, "p_1658->g_644.s3", print_hash_value);
    transparent_crc(p_1658->g_644.s4, "p_1658->g_644.s4", print_hash_value);
    transparent_crc(p_1658->g_644.s5, "p_1658->g_644.s5", print_hash_value);
    transparent_crc(p_1658->g_644.s6, "p_1658->g_644.s6", print_hash_value);
    transparent_crc(p_1658->g_644.s7, "p_1658->g_644.s7", print_hash_value);
    transparent_crc(p_1658->g_644.s8, "p_1658->g_644.s8", print_hash_value);
    transparent_crc(p_1658->g_644.s9, "p_1658->g_644.s9", print_hash_value);
    transparent_crc(p_1658->g_644.sa, "p_1658->g_644.sa", print_hash_value);
    transparent_crc(p_1658->g_644.sb, "p_1658->g_644.sb", print_hash_value);
    transparent_crc(p_1658->g_644.sc, "p_1658->g_644.sc", print_hash_value);
    transparent_crc(p_1658->g_644.sd, "p_1658->g_644.sd", print_hash_value);
    transparent_crc(p_1658->g_644.se, "p_1658->g_644.se", print_hash_value);
    transparent_crc(p_1658->g_644.sf, "p_1658->g_644.sf", print_hash_value);
    transparent_crc(p_1658->g_692.x, "p_1658->g_692.x", print_hash_value);
    transparent_crc(p_1658->g_692.y, "p_1658->g_692.y", print_hash_value);
    transparent_crc(p_1658->g_692.z, "p_1658->g_692.z", print_hash_value);
    transparent_crc(p_1658->g_692.w, "p_1658->g_692.w", print_hash_value);
    transparent_crc(p_1658->g_698.x, "p_1658->g_698.x", print_hash_value);
    transparent_crc(p_1658->g_698.y, "p_1658->g_698.y", print_hash_value);
    transparent_crc(p_1658->g_712.s0, "p_1658->g_712.s0", print_hash_value);
    transparent_crc(p_1658->g_712.s1, "p_1658->g_712.s1", print_hash_value);
    transparent_crc(p_1658->g_712.s2, "p_1658->g_712.s2", print_hash_value);
    transparent_crc(p_1658->g_712.s3, "p_1658->g_712.s3", print_hash_value);
    transparent_crc(p_1658->g_712.s4, "p_1658->g_712.s4", print_hash_value);
    transparent_crc(p_1658->g_712.s5, "p_1658->g_712.s5", print_hash_value);
    transparent_crc(p_1658->g_712.s6, "p_1658->g_712.s6", print_hash_value);
    transparent_crc(p_1658->g_712.s7, "p_1658->g_712.s7", print_hash_value);
    transparent_crc(p_1658->g_712.s8, "p_1658->g_712.s8", print_hash_value);
    transparent_crc(p_1658->g_712.s9, "p_1658->g_712.s9", print_hash_value);
    transparent_crc(p_1658->g_712.sa, "p_1658->g_712.sa", print_hash_value);
    transparent_crc(p_1658->g_712.sb, "p_1658->g_712.sb", print_hash_value);
    transparent_crc(p_1658->g_712.sc, "p_1658->g_712.sc", print_hash_value);
    transparent_crc(p_1658->g_712.sd, "p_1658->g_712.sd", print_hash_value);
    transparent_crc(p_1658->g_712.se, "p_1658->g_712.se", print_hash_value);
    transparent_crc(p_1658->g_712.sf, "p_1658->g_712.sf", print_hash_value);
    transparent_crc(p_1658->g_714, "p_1658->g_714", print_hash_value);
    transparent_crc(p_1658->g_733, "p_1658->g_733", print_hash_value);
    transparent_crc(p_1658->g_736.s0, "p_1658->g_736.s0", print_hash_value);
    transparent_crc(p_1658->g_736.s1, "p_1658->g_736.s1", print_hash_value);
    transparent_crc(p_1658->g_736.s2, "p_1658->g_736.s2", print_hash_value);
    transparent_crc(p_1658->g_736.s3, "p_1658->g_736.s3", print_hash_value);
    transparent_crc(p_1658->g_736.s4, "p_1658->g_736.s4", print_hash_value);
    transparent_crc(p_1658->g_736.s5, "p_1658->g_736.s5", print_hash_value);
    transparent_crc(p_1658->g_736.s6, "p_1658->g_736.s6", print_hash_value);
    transparent_crc(p_1658->g_736.s7, "p_1658->g_736.s7", print_hash_value);
    transparent_crc(p_1658->g_736.s8, "p_1658->g_736.s8", print_hash_value);
    transparent_crc(p_1658->g_736.s9, "p_1658->g_736.s9", print_hash_value);
    transparent_crc(p_1658->g_736.sa, "p_1658->g_736.sa", print_hash_value);
    transparent_crc(p_1658->g_736.sb, "p_1658->g_736.sb", print_hash_value);
    transparent_crc(p_1658->g_736.sc, "p_1658->g_736.sc", print_hash_value);
    transparent_crc(p_1658->g_736.sd, "p_1658->g_736.sd", print_hash_value);
    transparent_crc(p_1658->g_736.se, "p_1658->g_736.se", print_hash_value);
    transparent_crc(p_1658->g_736.sf, "p_1658->g_736.sf", print_hash_value);
    transparent_crc(p_1658->g_740.x, "p_1658->g_740.x", print_hash_value);
    transparent_crc(p_1658->g_740.y, "p_1658->g_740.y", print_hash_value);
    transparent_crc(p_1658->g_740.z, "p_1658->g_740.z", print_hash_value);
    transparent_crc(p_1658->g_740.w, "p_1658->g_740.w", print_hash_value);
    transparent_crc(p_1658->g_743.s0, "p_1658->g_743.s0", print_hash_value);
    transparent_crc(p_1658->g_743.s1, "p_1658->g_743.s1", print_hash_value);
    transparent_crc(p_1658->g_743.s2, "p_1658->g_743.s2", print_hash_value);
    transparent_crc(p_1658->g_743.s3, "p_1658->g_743.s3", print_hash_value);
    transparent_crc(p_1658->g_743.s4, "p_1658->g_743.s4", print_hash_value);
    transparent_crc(p_1658->g_743.s5, "p_1658->g_743.s5", print_hash_value);
    transparent_crc(p_1658->g_743.s6, "p_1658->g_743.s6", print_hash_value);
    transparent_crc(p_1658->g_743.s7, "p_1658->g_743.s7", print_hash_value);
    transparent_crc(p_1658->g_743.s8, "p_1658->g_743.s8", print_hash_value);
    transparent_crc(p_1658->g_743.s9, "p_1658->g_743.s9", print_hash_value);
    transparent_crc(p_1658->g_743.sa, "p_1658->g_743.sa", print_hash_value);
    transparent_crc(p_1658->g_743.sb, "p_1658->g_743.sb", print_hash_value);
    transparent_crc(p_1658->g_743.sc, "p_1658->g_743.sc", print_hash_value);
    transparent_crc(p_1658->g_743.sd, "p_1658->g_743.sd", print_hash_value);
    transparent_crc(p_1658->g_743.se, "p_1658->g_743.se", print_hash_value);
    transparent_crc(p_1658->g_743.sf, "p_1658->g_743.sf", print_hash_value);
    transparent_crc(p_1658->g_748.s0, "p_1658->g_748.s0", print_hash_value);
    transparent_crc(p_1658->g_748.s1, "p_1658->g_748.s1", print_hash_value);
    transparent_crc(p_1658->g_748.s2, "p_1658->g_748.s2", print_hash_value);
    transparent_crc(p_1658->g_748.s3, "p_1658->g_748.s3", print_hash_value);
    transparent_crc(p_1658->g_748.s4, "p_1658->g_748.s4", print_hash_value);
    transparent_crc(p_1658->g_748.s5, "p_1658->g_748.s5", print_hash_value);
    transparent_crc(p_1658->g_748.s6, "p_1658->g_748.s6", print_hash_value);
    transparent_crc(p_1658->g_748.s7, "p_1658->g_748.s7", print_hash_value);
    transparent_crc(p_1658->g_748.s8, "p_1658->g_748.s8", print_hash_value);
    transparent_crc(p_1658->g_748.s9, "p_1658->g_748.s9", print_hash_value);
    transparent_crc(p_1658->g_748.sa, "p_1658->g_748.sa", print_hash_value);
    transparent_crc(p_1658->g_748.sb, "p_1658->g_748.sb", print_hash_value);
    transparent_crc(p_1658->g_748.sc, "p_1658->g_748.sc", print_hash_value);
    transparent_crc(p_1658->g_748.sd, "p_1658->g_748.sd", print_hash_value);
    transparent_crc(p_1658->g_748.se, "p_1658->g_748.se", print_hash_value);
    transparent_crc(p_1658->g_748.sf, "p_1658->g_748.sf", print_hash_value);
    transparent_crc(p_1658->g_749.s0, "p_1658->g_749.s0", print_hash_value);
    transparent_crc(p_1658->g_749.s1, "p_1658->g_749.s1", print_hash_value);
    transparent_crc(p_1658->g_749.s2, "p_1658->g_749.s2", print_hash_value);
    transparent_crc(p_1658->g_749.s3, "p_1658->g_749.s3", print_hash_value);
    transparent_crc(p_1658->g_749.s4, "p_1658->g_749.s4", print_hash_value);
    transparent_crc(p_1658->g_749.s5, "p_1658->g_749.s5", print_hash_value);
    transparent_crc(p_1658->g_749.s6, "p_1658->g_749.s6", print_hash_value);
    transparent_crc(p_1658->g_749.s7, "p_1658->g_749.s7", print_hash_value);
    transparent_crc(p_1658->g_749.s8, "p_1658->g_749.s8", print_hash_value);
    transparent_crc(p_1658->g_749.s9, "p_1658->g_749.s9", print_hash_value);
    transparent_crc(p_1658->g_749.sa, "p_1658->g_749.sa", print_hash_value);
    transparent_crc(p_1658->g_749.sb, "p_1658->g_749.sb", print_hash_value);
    transparent_crc(p_1658->g_749.sc, "p_1658->g_749.sc", print_hash_value);
    transparent_crc(p_1658->g_749.sd, "p_1658->g_749.sd", print_hash_value);
    transparent_crc(p_1658->g_749.se, "p_1658->g_749.se", print_hash_value);
    transparent_crc(p_1658->g_749.sf, "p_1658->g_749.sf", print_hash_value);
    transparent_crc(p_1658->g_837.x, "p_1658->g_837.x", print_hash_value);
    transparent_crc(p_1658->g_837.y, "p_1658->g_837.y", print_hash_value);
    transparent_crc(p_1658->g_837.z, "p_1658->g_837.z", print_hash_value);
    transparent_crc(p_1658->g_837.w, "p_1658->g_837.w", print_hash_value);
    transparent_crc(p_1658->g_839.s0, "p_1658->g_839.s0", print_hash_value);
    transparent_crc(p_1658->g_839.s1, "p_1658->g_839.s1", print_hash_value);
    transparent_crc(p_1658->g_839.s2, "p_1658->g_839.s2", print_hash_value);
    transparent_crc(p_1658->g_839.s3, "p_1658->g_839.s3", print_hash_value);
    transparent_crc(p_1658->g_839.s4, "p_1658->g_839.s4", print_hash_value);
    transparent_crc(p_1658->g_839.s5, "p_1658->g_839.s5", print_hash_value);
    transparent_crc(p_1658->g_839.s6, "p_1658->g_839.s6", print_hash_value);
    transparent_crc(p_1658->g_839.s7, "p_1658->g_839.s7", print_hash_value);
    transparent_crc(p_1658->g_842.s0, "p_1658->g_842.s0", print_hash_value);
    transparent_crc(p_1658->g_842.s1, "p_1658->g_842.s1", print_hash_value);
    transparent_crc(p_1658->g_842.s2, "p_1658->g_842.s2", print_hash_value);
    transparent_crc(p_1658->g_842.s3, "p_1658->g_842.s3", print_hash_value);
    transparent_crc(p_1658->g_842.s4, "p_1658->g_842.s4", print_hash_value);
    transparent_crc(p_1658->g_842.s5, "p_1658->g_842.s5", print_hash_value);
    transparent_crc(p_1658->g_842.s6, "p_1658->g_842.s6", print_hash_value);
    transparent_crc(p_1658->g_842.s7, "p_1658->g_842.s7", print_hash_value);
    transparent_crc(p_1658->g_842.s8, "p_1658->g_842.s8", print_hash_value);
    transparent_crc(p_1658->g_842.s9, "p_1658->g_842.s9", print_hash_value);
    transparent_crc(p_1658->g_842.sa, "p_1658->g_842.sa", print_hash_value);
    transparent_crc(p_1658->g_842.sb, "p_1658->g_842.sb", print_hash_value);
    transparent_crc(p_1658->g_842.sc, "p_1658->g_842.sc", print_hash_value);
    transparent_crc(p_1658->g_842.sd, "p_1658->g_842.sd", print_hash_value);
    transparent_crc(p_1658->g_842.se, "p_1658->g_842.se", print_hash_value);
    transparent_crc(p_1658->g_842.sf, "p_1658->g_842.sf", print_hash_value);
    transparent_crc(p_1658->g_849, "p_1658->g_849", print_hash_value);
    transparent_crc(p_1658->g_872.x, "p_1658->g_872.x", print_hash_value);
    transparent_crc(p_1658->g_872.y, "p_1658->g_872.y", print_hash_value);
    transparent_crc(p_1658->g_872.z, "p_1658->g_872.z", print_hash_value);
    transparent_crc(p_1658->g_872.w, "p_1658->g_872.w", print_hash_value);
    transparent_crc(p_1658->g_885, "p_1658->g_885", print_hash_value);
    transparent_crc(p_1658->g_937.s0, "p_1658->g_937.s0", print_hash_value);
    transparent_crc(p_1658->g_937.s1, "p_1658->g_937.s1", print_hash_value);
    transparent_crc(p_1658->g_937.s2, "p_1658->g_937.s2", print_hash_value);
    transparent_crc(p_1658->g_937.s3, "p_1658->g_937.s3", print_hash_value);
    transparent_crc(p_1658->g_937.s4, "p_1658->g_937.s4", print_hash_value);
    transparent_crc(p_1658->g_937.s5, "p_1658->g_937.s5", print_hash_value);
    transparent_crc(p_1658->g_937.s6, "p_1658->g_937.s6", print_hash_value);
    transparent_crc(p_1658->g_937.s7, "p_1658->g_937.s7", print_hash_value);
    transparent_crc(p_1658->g_937.s8, "p_1658->g_937.s8", print_hash_value);
    transparent_crc(p_1658->g_937.s9, "p_1658->g_937.s9", print_hash_value);
    transparent_crc(p_1658->g_937.sa, "p_1658->g_937.sa", print_hash_value);
    transparent_crc(p_1658->g_937.sb, "p_1658->g_937.sb", print_hash_value);
    transparent_crc(p_1658->g_937.sc, "p_1658->g_937.sc", print_hash_value);
    transparent_crc(p_1658->g_937.sd, "p_1658->g_937.sd", print_hash_value);
    transparent_crc(p_1658->g_937.se, "p_1658->g_937.se", print_hash_value);
    transparent_crc(p_1658->g_937.sf, "p_1658->g_937.sf", print_hash_value);
    transparent_crc(p_1658->g_950.x, "p_1658->g_950.x", print_hash_value);
    transparent_crc(p_1658->g_950.y, "p_1658->g_950.y", print_hash_value);
    transparent_crc(p_1658->g_950.z, "p_1658->g_950.z", print_hash_value);
    transparent_crc(p_1658->g_950.w, "p_1658->g_950.w", print_hash_value);
    transparent_crc(p_1658->g_951.x, "p_1658->g_951.x", print_hash_value);
    transparent_crc(p_1658->g_951.y, "p_1658->g_951.y", print_hash_value);
    transparent_crc(p_1658->g_978.x, "p_1658->g_978.x", print_hash_value);
    transparent_crc(p_1658->g_978.y, "p_1658->g_978.y", print_hash_value);
    transparent_crc(p_1658->g_986, "p_1658->g_986", print_hash_value);
    transparent_crc(p_1658->g_1021.s0, "p_1658->g_1021.s0", print_hash_value);
    transparent_crc(p_1658->g_1021.s1, "p_1658->g_1021.s1", print_hash_value);
    transparent_crc(p_1658->g_1021.s2, "p_1658->g_1021.s2", print_hash_value);
    transparent_crc(p_1658->g_1021.s3, "p_1658->g_1021.s3", print_hash_value);
    transparent_crc(p_1658->g_1021.s4, "p_1658->g_1021.s4", print_hash_value);
    transparent_crc(p_1658->g_1021.s5, "p_1658->g_1021.s5", print_hash_value);
    transparent_crc(p_1658->g_1021.s6, "p_1658->g_1021.s6", print_hash_value);
    transparent_crc(p_1658->g_1021.s7, "p_1658->g_1021.s7", print_hash_value);
    transparent_crc(p_1658->g_1047.x, "p_1658->g_1047.x", print_hash_value);
    transparent_crc(p_1658->g_1047.y, "p_1658->g_1047.y", print_hash_value);
    transparent_crc(p_1658->g_1047.z, "p_1658->g_1047.z", print_hash_value);
    transparent_crc(p_1658->g_1047.w, "p_1658->g_1047.w", print_hash_value);
    transparent_crc(p_1658->g_1068.x, "p_1658->g_1068.x", print_hash_value);
    transparent_crc(p_1658->g_1068.y, "p_1658->g_1068.y", print_hash_value);
    transparent_crc(p_1658->g_1068.z, "p_1658->g_1068.z", print_hash_value);
    transparent_crc(p_1658->g_1068.w, "p_1658->g_1068.w", print_hash_value);
    transparent_crc(p_1658->g_1079.x, "p_1658->g_1079.x", print_hash_value);
    transparent_crc(p_1658->g_1079.y, "p_1658->g_1079.y", print_hash_value);
    transparent_crc(p_1658->g_1098.s0, "p_1658->g_1098.s0", print_hash_value);
    transparent_crc(p_1658->g_1098.s1, "p_1658->g_1098.s1", print_hash_value);
    transparent_crc(p_1658->g_1098.s2, "p_1658->g_1098.s2", print_hash_value);
    transparent_crc(p_1658->g_1098.s3, "p_1658->g_1098.s3", print_hash_value);
    transparent_crc(p_1658->g_1098.s4, "p_1658->g_1098.s4", print_hash_value);
    transparent_crc(p_1658->g_1098.s5, "p_1658->g_1098.s5", print_hash_value);
    transparent_crc(p_1658->g_1098.s6, "p_1658->g_1098.s6", print_hash_value);
    transparent_crc(p_1658->g_1098.s7, "p_1658->g_1098.s7", print_hash_value);
    transparent_crc(p_1658->g_1098.s8, "p_1658->g_1098.s8", print_hash_value);
    transparent_crc(p_1658->g_1098.s9, "p_1658->g_1098.s9", print_hash_value);
    transparent_crc(p_1658->g_1098.sa, "p_1658->g_1098.sa", print_hash_value);
    transparent_crc(p_1658->g_1098.sb, "p_1658->g_1098.sb", print_hash_value);
    transparent_crc(p_1658->g_1098.sc, "p_1658->g_1098.sc", print_hash_value);
    transparent_crc(p_1658->g_1098.sd, "p_1658->g_1098.sd", print_hash_value);
    transparent_crc(p_1658->g_1098.se, "p_1658->g_1098.se", print_hash_value);
    transparent_crc(p_1658->g_1098.sf, "p_1658->g_1098.sf", print_hash_value);
    transparent_crc(p_1658->g_1169.s0, "p_1658->g_1169.s0", print_hash_value);
    transparent_crc(p_1658->g_1169.s1, "p_1658->g_1169.s1", print_hash_value);
    transparent_crc(p_1658->g_1169.s2, "p_1658->g_1169.s2", print_hash_value);
    transparent_crc(p_1658->g_1169.s3, "p_1658->g_1169.s3", print_hash_value);
    transparent_crc(p_1658->g_1169.s4, "p_1658->g_1169.s4", print_hash_value);
    transparent_crc(p_1658->g_1169.s5, "p_1658->g_1169.s5", print_hash_value);
    transparent_crc(p_1658->g_1169.s6, "p_1658->g_1169.s6", print_hash_value);
    transparent_crc(p_1658->g_1169.s7, "p_1658->g_1169.s7", print_hash_value);
    transparent_crc(p_1658->g_1169.s8, "p_1658->g_1169.s8", print_hash_value);
    transparent_crc(p_1658->g_1169.s9, "p_1658->g_1169.s9", print_hash_value);
    transparent_crc(p_1658->g_1169.sa, "p_1658->g_1169.sa", print_hash_value);
    transparent_crc(p_1658->g_1169.sb, "p_1658->g_1169.sb", print_hash_value);
    transparent_crc(p_1658->g_1169.sc, "p_1658->g_1169.sc", print_hash_value);
    transparent_crc(p_1658->g_1169.sd, "p_1658->g_1169.sd", print_hash_value);
    transparent_crc(p_1658->g_1169.se, "p_1658->g_1169.se", print_hash_value);
    transparent_crc(p_1658->g_1169.sf, "p_1658->g_1169.sf", print_hash_value);
    transparent_crc(p_1658->g_1205.s0, "p_1658->g_1205.s0", print_hash_value);
    transparent_crc(p_1658->g_1205.s1, "p_1658->g_1205.s1", print_hash_value);
    transparent_crc(p_1658->g_1205.s2, "p_1658->g_1205.s2", print_hash_value);
    transparent_crc(p_1658->g_1205.s3, "p_1658->g_1205.s3", print_hash_value);
    transparent_crc(p_1658->g_1205.s4, "p_1658->g_1205.s4", print_hash_value);
    transparent_crc(p_1658->g_1205.s5, "p_1658->g_1205.s5", print_hash_value);
    transparent_crc(p_1658->g_1205.s6, "p_1658->g_1205.s6", print_hash_value);
    transparent_crc(p_1658->g_1205.s7, "p_1658->g_1205.s7", print_hash_value);
    transparent_crc(p_1658->g_1205.s8, "p_1658->g_1205.s8", print_hash_value);
    transparent_crc(p_1658->g_1205.s9, "p_1658->g_1205.s9", print_hash_value);
    transparent_crc(p_1658->g_1205.sa, "p_1658->g_1205.sa", print_hash_value);
    transparent_crc(p_1658->g_1205.sb, "p_1658->g_1205.sb", print_hash_value);
    transparent_crc(p_1658->g_1205.sc, "p_1658->g_1205.sc", print_hash_value);
    transparent_crc(p_1658->g_1205.sd, "p_1658->g_1205.sd", print_hash_value);
    transparent_crc(p_1658->g_1205.se, "p_1658->g_1205.se", print_hash_value);
    transparent_crc(p_1658->g_1205.sf, "p_1658->g_1205.sf", print_hash_value);
    transparent_crc(p_1658->g_1206, "p_1658->g_1206", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1658->g_1208[i][j][k], "p_1658->g_1208[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1658->g_1234.s0, "p_1658->g_1234.s0", print_hash_value);
    transparent_crc(p_1658->g_1234.s1, "p_1658->g_1234.s1", print_hash_value);
    transparent_crc(p_1658->g_1234.s2, "p_1658->g_1234.s2", print_hash_value);
    transparent_crc(p_1658->g_1234.s3, "p_1658->g_1234.s3", print_hash_value);
    transparent_crc(p_1658->g_1234.s4, "p_1658->g_1234.s4", print_hash_value);
    transparent_crc(p_1658->g_1234.s5, "p_1658->g_1234.s5", print_hash_value);
    transparent_crc(p_1658->g_1234.s6, "p_1658->g_1234.s6", print_hash_value);
    transparent_crc(p_1658->g_1234.s7, "p_1658->g_1234.s7", print_hash_value);
    transparent_crc(p_1658->g_1234.s8, "p_1658->g_1234.s8", print_hash_value);
    transparent_crc(p_1658->g_1234.s9, "p_1658->g_1234.s9", print_hash_value);
    transparent_crc(p_1658->g_1234.sa, "p_1658->g_1234.sa", print_hash_value);
    transparent_crc(p_1658->g_1234.sb, "p_1658->g_1234.sb", print_hash_value);
    transparent_crc(p_1658->g_1234.sc, "p_1658->g_1234.sc", print_hash_value);
    transparent_crc(p_1658->g_1234.sd, "p_1658->g_1234.sd", print_hash_value);
    transparent_crc(p_1658->g_1234.se, "p_1658->g_1234.se", print_hash_value);
    transparent_crc(p_1658->g_1234.sf, "p_1658->g_1234.sf", print_hash_value);
    transparent_crc(p_1658->g_1237.s0, "p_1658->g_1237.s0", print_hash_value);
    transparent_crc(p_1658->g_1237.s1, "p_1658->g_1237.s1", print_hash_value);
    transparent_crc(p_1658->g_1237.s2, "p_1658->g_1237.s2", print_hash_value);
    transparent_crc(p_1658->g_1237.s3, "p_1658->g_1237.s3", print_hash_value);
    transparent_crc(p_1658->g_1237.s4, "p_1658->g_1237.s4", print_hash_value);
    transparent_crc(p_1658->g_1237.s5, "p_1658->g_1237.s5", print_hash_value);
    transparent_crc(p_1658->g_1237.s6, "p_1658->g_1237.s6", print_hash_value);
    transparent_crc(p_1658->g_1237.s7, "p_1658->g_1237.s7", print_hash_value);
    transparent_crc(p_1658->g_1237.s8, "p_1658->g_1237.s8", print_hash_value);
    transparent_crc(p_1658->g_1237.s9, "p_1658->g_1237.s9", print_hash_value);
    transparent_crc(p_1658->g_1237.sa, "p_1658->g_1237.sa", print_hash_value);
    transparent_crc(p_1658->g_1237.sb, "p_1658->g_1237.sb", print_hash_value);
    transparent_crc(p_1658->g_1237.sc, "p_1658->g_1237.sc", print_hash_value);
    transparent_crc(p_1658->g_1237.sd, "p_1658->g_1237.sd", print_hash_value);
    transparent_crc(p_1658->g_1237.se, "p_1658->g_1237.se", print_hash_value);
    transparent_crc(p_1658->g_1237.sf, "p_1658->g_1237.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1658->g_1252[i][j][k], "p_1658->g_1252[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1658->g_1258.x, "p_1658->g_1258.x", print_hash_value);
    transparent_crc(p_1658->g_1258.y, "p_1658->g_1258.y", print_hash_value);
    transparent_crc(p_1658->g_1258.z, "p_1658->g_1258.z", print_hash_value);
    transparent_crc(p_1658->g_1258.w, "p_1658->g_1258.w", print_hash_value);
    transparent_crc(p_1658->g_1264.x, "p_1658->g_1264.x", print_hash_value);
    transparent_crc(p_1658->g_1264.y, "p_1658->g_1264.y", print_hash_value);
    transparent_crc(p_1658->g_1264.z, "p_1658->g_1264.z", print_hash_value);
    transparent_crc(p_1658->g_1264.w, "p_1658->g_1264.w", print_hash_value);
    transparent_crc(p_1658->g_1304.s0, "p_1658->g_1304.s0", print_hash_value);
    transparent_crc(p_1658->g_1304.s1, "p_1658->g_1304.s1", print_hash_value);
    transparent_crc(p_1658->g_1304.s2, "p_1658->g_1304.s2", print_hash_value);
    transparent_crc(p_1658->g_1304.s3, "p_1658->g_1304.s3", print_hash_value);
    transparent_crc(p_1658->g_1304.s4, "p_1658->g_1304.s4", print_hash_value);
    transparent_crc(p_1658->g_1304.s5, "p_1658->g_1304.s5", print_hash_value);
    transparent_crc(p_1658->g_1304.s6, "p_1658->g_1304.s6", print_hash_value);
    transparent_crc(p_1658->g_1304.s7, "p_1658->g_1304.s7", print_hash_value);
    transparent_crc(p_1658->g_1304.s8, "p_1658->g_1304.s8", print_hash_value);
    transparent_crc(p_1658->g_1304.s9, "p_1658->g_1304.s9", print_hash_value);
    transparent_crc(p_1658->g_1304.sa, "p_1658->g_1304.sa", print_hash_value);
    transparent_crc(p_1658->g_1304.sb, "p_1658->g_1304.sb", print_hash_value);
    transparent_crc(p_1658->g_1304.sc, "p_1658->g_1304.sc", print_hash_value);
    transparent_crc(p_1658->g_1304.sd, "p_1658->g_1304.sd", print_hash_value);
    transparent_crc(p_1658->g_1304.se, "p_1658->g_1304.se", print_hash_value);
    transparent_crc(p_1658->g_1304.sf, "p_1658->g_1304.sf", print_hash_value);
    transparent_crc(p_1658->g_1317, "p_1658->g_1317", print_hash_value);
    transparent_crc(p_1658->g_1348.x, "p_1658->g_1348.x", print_hash_value);
    transparent_crc(p_1658->g_1348.y, "p_1658->g_1348.y", print_hash_value);
    transparent_crc(p_1658->g_1367, "p_1658->g_1367", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1658->g_1407[i], "p_1658->g_1407[i]", print_hash_value);

    }
    transparent_crc(p_1658->g_1424.x, "p_1658->g_1424.x", print_hash_value);
    transparent_crc(p_1658->g_1424.y, "p_1658->g_1424.y", print_hash_value);
    transparent_crc(p_1658->g_1429.x, "p_1658->g_1429.x", print_hash_value);
    transparent_crc(p_1658->g_1429.y, "p_1658->g_1429.y", print_hash_value);
    transparent_crc(p_1658->g_1430.s0, "p_1658->g_1430.s0", print_hash_value);
    transparent_crc(p_1658->g_1430.s1, "p_1658->g_1430.s1", print_hash_value);
    transparent_crc(p_1658->g_1430.s2, "p_1658->g_1430.s2", print_hash_value);
    transparent_crc(p_1658->g_1430.s3, "p_1658->g_1430.s3", print_hash_value);
    transparent_crc(p_1658->g_1430.s4, "p_1658->g_1430.s4", print_hash_value);
    transparent_crc(p_1658->g_1430.s5, "p_1658->g_1430.s5", print_hash_value);
    transparent_crc(p_1658->g_1430.s6, "p_1658->g_1430.s6", print_hash_value);
    transparent_crc(p_1658->g_1430.s7, "p_1658->g_1430.s7", print_hash_value);
    transparent_crc(p_1658->g_1431.s0, "p_1658->g_1431.s0", print_hash_value);
    transparent_crc(p_1658->g_1431.s1, "p_1658->g_1431.s1", print_hash_value);
    transparent_crc(p_1658->g_1431.s2, "p_1658->g_1431.s2", print_hash_value);
    transparent_crc(p_1658->g_1431.s3, "p_1658->g_1431.s3", print_hash_value);
    transparent_crc(p_1658->g_1431.s4, "p_1658->g_1431.s4", print_hash_value);
    transparent_crc(p_1658->g_1431.s5, "p_1658->g_1431.s5", print_hash_value);
    transparent_crc(p_1658->g_1431.s6, "p_1658->g_1431.s6", print_hash_value);
    transparent_crc(p_1658->g_1431.s7, "p_1658->g_1431.s7", print_hash_value);
    transparent_crc(p_1658->g_1434.s0, "p_1658->g_1434.s0", print_hash_value);
    transparent_crc(p_1658->g_1434.s1, "p_1658->g_1434.s1", print_hash_value);
    transparent_crc(p_1658->g_1434.s2, "p_1658->g_1434.s2", print_hash_value);
    transparent_crc(p_1658->g_1434.s3, "p_1658->g_1434.s3", print_hash_value);
    transparent_crc(p_1658->g_1434.s4, "p_1658->g_1434.s4", print_hash_value);
    transparent_crc(p_1658->g_1434.s5, "p_1658->g_1434.s5", print_hash_value);
    transparent_crc(p_1658->g_1434.s6, "p_1658->g_1434.s6", print_hash_value);
    transparent_crc(p_1658->g_1434.s7, "p_1658->g_1434.s7", print_hash_value);
    transparent_crc(p_1658->g_1466.x, "p_1658->g_1466.x", print_hash_value);
    transparent_crc(p_1658->g_1466.y, "p_1658->g_1466.y", print_hash_value);
    transparent_crc(p_1658->g_1466.z, "p_1658->g_1466.z", print_hash_value);
    transparent_crc(p_1658->g_1466.w, "p_1658->g_1466.w", print_hash_value);
    transparent_crc(p_1658->g_1485.s0, "p_1658->g_1485.s0", print_hash_value);
    transparent_crc(p_1658->g_1485.s1, "p_1658->g_1485.s1", print_hash_value);
    transparent_crc(p_1658->g_1485.s2, "p_1658->g_1485.s2", print_hash_value);
    transparent_crc(p_1658->g_1485.s3, "p_1658->g_1485.s3", print_hash_value);
    transparent_crc(p_1658->g_1485.s4, "p_1658->g_1485.s4", print_hash_value);
    transparent_crc(p_1658->g_1485.s5, "p_1658->g_1485.s5", print_hash_value);
    transparent_crc(p_1658->g_1485.s6, "p_1658->g_1485.s6", print_hash_value);
    transparent_crc(p_1658->g_1485.s7, "p_1658->g_1485.s7", print_hash_value);
    transparent_crc(p_1658->g_1485.s8, "p_1658->g_1485.s8", print_hash_value);
    transparent_crc(p_1658->g_1485.s9, "p_1658->g_1485.s9", print_hash_value);
    transparent_crc(p_1658->g_1485.sa, "p_1658->g_1485.sa", print_hash_value);
    transparent_crc(p_1658->g_1485.sb, "p_1658->g_1485.sb", print_hash_value);
    transparent_crc(p_1658->g_1485.sc, "p_1658->g_1485.sc", print_hash_value);
    transparent_crc(p_1658->g_1485.sd, "p_1658->g_1485.sd", print_hash_value);
    transparent_crc(p_1658->g_1485.se, "p_1658->g_1485.se", print_hash_value);
    transparent_crc(p_1658->g_1485.sf, "p_1658->g_1485.sf", print_hash_value);
    transparent_crc(p_1658->g_1498.x, "p_1658->g_1498.x", print_hash_value);
    transparent_crc(p_1658->g_1498.y, "p_1658->g_1498.y", print_hash_value);
    transparent_crc(p_1658->g_1535.s0, "p_1658->g_1535.s0", print_hash_value);
    transparent_crc(p_1658->g_1535.s1, "p_1658->g_1535.s1", print_hash_value);
    transparent_crc(p_1658->g_1535.s2, "p_1658->g_1535.s2", print_hash_value);
    transparent_crc(p_1658->g_1535.s3, "p_1658->g_1535.s3", print_hash_value);
    transparent_crc(p_1658->g_1535.s4, "p_1658->g_1535.s4", print_hash_value);
    transparent_crc(p_1658->g_1535.s5, "p_1658->g_1535.s5", print_hash_value);
    transparent_crc(p_1658->g_1535.s6, "p_1658->g_1535.s6", print_hash_value);
    transparent_crc(p_1658->g_1535.s7, "p_1658->g_1535.s7", print_hash_value);
    transparent_crc(p_1658->g_1537.x, "p_1658->g_1537.x", print_hash_value);
    transparent_crc(p_1658->g_1537.y, "p_1658->g_1537.y", print_hash_value);
    transparent_crc(p_1658->g_1541, "p_1658->g_1541", print_hash_value);
    transparent_crc(p_1658->g_1568.x, "p_1658->g_1568.x", print_hash_value);
    transparent_crc(p_1658->g_1568.y, "p_1658->g_1568.y", print_hash_value);
    transparent_crc(p_1658->g_1568.z, "p_1658->g_1568.z", print_hash_value);
    transparent_crc(p_1658->g_1568.w, "p_1658->g_1568.w", print_hash_value);
    transparent_crc(p_1658->g_1569.s0, "p_1658->g_1569.s0", print_hash_value);
    transparent_crc(p_1658->g_1569.s1, "p_1658->g_1569.s1", print_hash_value);
    transparent_crc(p_1658->g_1569.s2, "p_1658->g_1569.s2", print_hash_value);
    transparent_crc(p_1658->g_1569.s3, "p_1658->g_1569.s3", print_hash_value);
    transparent_crc(p_1658->g_1569.s4, "p_1658->g_1569.s4", print_hash_value);
    transparent_crc(p_1658->g_1569.s5, "p_1658->g_1569.s5", print_hash_value);
    transparent_crc(p_1658->g_1569.s6, "p_1658->g_1569.s6", print_hash_value);
    transparent_crc(p_1658->g_1569.s7, "p_1658->g_1569.s7", print_hash_value);
    transparent_crc(p_1658->g_1569.s8, "p_1658->g_1569.s8", print_hash_value);
    transparent_crc(p_1658->g_1569.s9, "p_1658->g_1569.s9", print_hash_value);
    transparent_crc(p_1658->g_1569.sa, "p_1658->g_1569.sa", print_hash_value);
    transparent_crc(p_1658->g_1569.sb, "p_1658->g_1569.sb", print_hash_value);
    transparent_crc(p_1658->g_1569.sc, "p_1658->g_1569.sc", print_hash_value);
    transparent_crc(p_1658->g_1569.sd, "p_1658->g_1569.sd", print_hash_value);
    transparent_crc(p_1658->g_1569.se, "p_1658->g_1569.se", print_hash_value);
    transparent_crc(p_1658->g_1569.sf, "p_1658->g_1569.sf", print_hash_value);
    transparent_crc(p_1658->g_1570.x, "p_1658->g_1570.x", print_hash_value);
    transparent_crc(p_1658->g_1570.y, "p_1658->g_1570.y", print_hash_value);
    transparent_crc(p_1658->g_1570.z, "p_1658->g_1570.z", print_hash_value);
    transparent_crc(p_1658->g_1570.w, "p_1658->g_1570.w", print_hash_value);
    transparent_crc(p_1658->g_1573, "p_1658->g_1573", print_hash_value);
    transparent_crc(p_1658->g_1639, "p_1658->g_1639", print_hash_value);
    transparent_crc(p_1658->g_1643.x, "p_1658->g_1643.x", print_hash_value);
    transparent_crc(p_1658->g_1643.y, "p_1658->g_1643.y", print_hash_value);
    transparent_crc(p_1658->g_1643.z, "p_1658->g_1643.z", print_hash_value);
    transparent_crc(p_1658->g_1643.w, "p_1658->g_1643.w", print_hash_value);
    transparent_crc(p_1658->g_1644.s0, "p_1658->g_1644.s0", print_hash_value);
    transparent_crc(p_1658->g_1644.s1, "p_1658->g_1644.s1", print_hash_value);
    transparent_crc(p_1658->g_1644.s2, "p_1658->g_1644.s2", print_hash_value);
    transparent_crc(p_1658->g_1644.s3, "p_1658->g_1644.s3", print_hash_value);
    transparent_crc(p_1658->g_1644.s4, "p_1658->g_1644.s4", print_hash_value);
    transparent_crc(p_1658->g_1644.s5, "p_1658->g_1644.s5", print_hash_value);
    transparent_crc(p_1658->g_1644.s6, "p_1658->g_1644.s6", print_hash_value);
    transparent_crc(p_1658->g_1644.s7, "p_1658->g_1644.s7", print_hash_value);
    transparent_crc(p_1658->g_1644.s8, "p_1658->g_1644.s8", print_hash_value);
    transparent_crc(p_1658->g_1644.s9, "p_1658->g_1644.s9", print_hash_value);
    transparent_crc(p_1658->g_1644.sa, "p_1658->g_1644.sa", print_hash_value);
    transparent_crc(p_1658->g_1644.sb, "p_1658->g_1644.sb", print_hash_value);
    transparent_crc(p_1658->g_1644.sc, "p_1658->g_1644.sc", print_hash_value);
    transparent_crc(p_1658->g_1644.sd, "p_1658->g_1644.sd", print_hash_value);
    transparent_crc(p_1658->g_1644.se, "p_1658->g_1644.se", print_hash_value);
    transparent_crc(p_1658->g_1644.sf, "p_1658->g_1644.sf", print_hash_value);
    transparent_crc(p_1658->g_1646.s0, "p_1658->g_1646.s0", print_hash_value);
    transparent_crc(p_1658->g_1646.s1, "p_1658->g_1646.s1", print_hash_value);
    transparent_crc(p_1658->g_1646.s2, "p_1658->g_1646.s2", print_hash_value);
    transparent_crc(p_1658->g_1646.s3, "p_1658->g_1646.s3", print_hash_value);
    transparent_crc(p_1658->g_1646.s4, "p_1658->g_1646.s4", print_hash_value);
    transparent_crc(p_1658->g_1646.s5, "p_1658->g_1646.s5", print_hash_value);
    transparent_crc(p_1658->g_1646.s6, "p_1658->g_1646.s6", print_hash_value);
    transparent_crc(p_1658->g_1646.s7, "p_1658->g_1646.s7", print_hash_value);
    transparent_crc(p_1658->g_1652, "p_1658->g_1652", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
