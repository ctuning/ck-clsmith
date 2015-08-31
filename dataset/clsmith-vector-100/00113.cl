// ---fake_divergence -g 388,1,25 -l 2,1,5
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


// Seed: 113

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   uint32_t  f1;
   int16_t  f2;
   volatile uint8_t  f3;
};

struct S1 {
   int64_t  f0;
   int32_t  f1;
   int32_t  f2;
   int32_t  f3;
   volatile int8_t  f4;
   uint32_t  f5;
   uint64_t  f6;
   volatile int64_t  f7;
};

struct S2 {
    uint16_t g_6;
    uint32_t g_11;
    int32_t g_36;
    int32_t * volatile g_35;
    struct S1 g_41;
    uint64_t g_61;
    struct S1 g_69;
    volatile VECTOR(int16_t, 2) g_90;
    struct S0 g_106;
    uint8_t g_116;
    uint8_t g_124;
    uint8_t *g_123;
    uint64_t * volatile g_125;
    volatile VECTOR(int32_t, 4) g_130;
    VECTOR(int16_t, 8) g_161;
    VECTOR(uint16_t, 2) g_170;
    VECTOR(uint16_t, 16) g_178;
    int16_t g_181[8][9][2];
    volatile struct S0 g_187;
    VECTOR(int32_t, 16) g_193;
    volatile struct S0 g_194;
    uint64_t *g_206[7][6];
    volatile VECTOR(int8_t, 8) g_209;
    volatile VECTOR(uint16_t, 16) g_227;
    VECTOR(uint16_t, 16) g_228;
    struct S1 * volatile g_302;
    struct S1 * volatile g_303[7];
    int32_t * volatile g_337;
    volatile uint32_t g_341;
    volatile int16_t g_349;
    volatile VECTOR(uint32_t, 2) g_366;
    VECTOR(int32_t, 2) g_382;
    int8_t g_385;
    volatile struct S0 g_387;
    int32_t *g_389[10][9][2];
    int32_t ** volatile g_388;
    volatile VECTOR(uint16_t, 8) g_392;
    VECTOR(int16_t, 2) g_408;
    VECTOR(uint8_t, 16) g_418;
    VECTOR(uint8_t, 16) g_419;
    uint8_t *g_477;
    volatile VECTOR(int32_t, 16) g_497;
    uint32_t *g_544;
    VECTOR(int16_t, 4) g_558;
    VECTOR(int64_t, 16) g_594;
    VECTOR(int64_t, 8) g_597;
    VECTOR(int16_t, 4) g_634;
    struct S0 *g_653;
    struct S0 ** volatile g_652;
    int32_t ** volatile g_661;
    int32_t ** volatile g_672;
    struct S1 g_677;
    struct S1 g_678[9];
    volatile int32_t *g_688;
    volatile int32_t * volatile * volatile g_687;
    volatile int32_t * volatile * volatile * volatile g_686;
    int32_t *g_691;
    int32_t **g_690;
    int32_t ***g_689;
    VECTOR(uint64_t, 4) g_713;
    VECTOR(uint16_t, 2) g_734;
    VECTOR(uint16_t, 2) g_735;
    VECTOR(uint16_t, 16) g_746;
    int16_t g_766;
    struct S1 g_768;
    int32_t g_813;
    struct S1 g_829;
    VECTOR(int64_t, 4) g_866;
    struct S1 g_879;
    struct S0 g_931;
    volatile int32_t * volatile * volatile * volatile g_938;
    volatile struct S1 g_940[7][10][3];
    volatile struct S1 g_942;
    struct S1 g_960;
    uint32_t *g_983;
    volatile struct S0 g_986[6][5];
    volatile VECTOR(int64_t, 2) g_996;
    VECTOR(uint16_t, 2) g_1012;
    uint32_t g_1023;
    volatile VECTOR(int32_t, 2) g_1035;
    VECTOR(int32_t, 4) g_1044;
    struct S0 g_1050;
    VECTOR(int8_t, 8) g_1080;
    int32_t ** volatile g_1086;
    int32_t ** volatile g_1087;
    VECTOR(int32_t, 4) g_1093;
    VECTOR(int32_t, 8) g_1095;
    volatile VECTOR(uint16_t, 4) g_1103;
    VECTOR(uint16_t, 16) g_1106;
    volatile VECTOR(uint16_t, 8) g_1130;
    VECTOR(uint16_t, 4) g_1131;
    VECTOR(uint16_t, 2) g_1140;
    VECTOR(uint8_t, 4) g_1146;
    VECTOR(uint8_t, 2) g_1147;
    VECTOR(uint8_t, 2) g_1150;
    VECTOR(int8_t, 16) g_1151;
    VECTOR(uint32_t, 16) g_1170;
    VECTOR(int32_t, 8) g_1185;
    volatile struct S1 g_1194;
    volatile VECTOR(uint8_t, 4) g_1220;
    VECTOR(uint32_t, 4) g_1260;
    struct S1 g_1269;
    struct S1 g_1270;
    int8_t g_1290;
    volatile VECTOR(uint32_t, 16) g_1331;
    volatile VECTOR(int32_t, 8) g_1351;
    volatile VECTOR(uint8_t, 4) g_1360;
    struct S1 g_1366;
    struct S1 g_1367;
    volatile VECTOR(uint16_t, 4) g_1421;
    VECTOR(int16_t, 2) g_1439;
    struct S0 g_1474;
    volatile struct S1 g_1501;
    int32_t ** volatile g_1504[9];
    int32_t ** volatile g_1505;
    volatile struct S0 g_1554;
    volatile VECTOR(int16_t, 4) g_1563;
    volatile VECTOR(int16_t, 2) g_1579;
    VECTOR(uint16_t, 2) g_1580;
    VECTOR(uint16_t, 16) g_1588;
    volatile struct S0 g_1619;
    VECTOR(int16_t, 4) g_1620;
    volatile int32_t g_1638;
    int32_t ** volatile g_1657;
    uint64_t *g_1664;
    volatile int16_t *g_1675;
    volatile int16_t **g_1674;
    volatile VECTOR(int16_t, 2) g_1699;
    int32_t ** volatile g_1716;
    volatile VECTOR(uint8_t, 16) g_1726;
    volatile VECTOR(uint32_t, 16) g_1741;
    struct S0 * volatile *g_1746;
    struct S0 * volatile **g_1745[6][3];
    struct S0 ***g_1747[9];
    volatile VECTOR(int32_t, 4) g_1755;
    VECTOR(int16_t, 4) g_1765;
    VECTOR(uint32_t, 4) g_1776;
    int32_t * volatile g_1779;
    int32_t * volatile g_1780;
    VECTOR(int8_t, 16) g_1798;
    volatile VECTOR(int8_t, 4) g_1800;
    VECTOR(int8_t, 2) g_1802;
    volatile struct S1 *g_1805[3];
    VECTOR(int8_t, 2) g_1813;
    VECTOR(int8_t, 16) g_1825;
    VECTOR(int16_t, 16) g_1826;
    VECTOR(int16_t, 8) g_1831;
    struct S1 g_1836;
    int32_t ** volatile g_1853;
    VECTOR(uint16_t, 8) g_1888;
    int32_t * volatile g_1911;
    int32_t * volatile g_1914;
    int32_t * volatile g_1916;
    int32_t * volatile g_1918[6][8];
    int32_t * volatile g_1919[8][10][3];
    struct S1 g_1921[7];
    VECTOR(uint8_t, 8) g_1951;
    VECTOR(int64_t, 2) g_1965;
    VECTOR(int8_t, 4) g_2032;
    volatile VECTOR(int8_t, 4) g_2033;
    volatile VECTOR(int8_t, 4) g_2035;
    int32_t g_2046;
    struct S1 g_2050;
    struct S1 g_2051;
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
uint32_t  func_1(struct S2 * p_2052);
uint32_t  func_2(int32_t  p_3, uint32_t  p_4, struct S2 * p_2052);
int8_t  func_18(int64_t  p_19, int8_t  p_20, struct S2 * p_2052);
struct S1  func_21(int32_t  p_22, int32_t  p_23, uint32_t  p_24, uint32_t * p_25, uint8_t  p_26, struct S2 * p_2052);
struct S1  func_27(int16_t  p_28, struct S2 * p_2052);
uint64_t  func_81(uint8_t  p_82, uint32_t * p_83, uint32_t * p_84, int32_t  p_85, int16_t  p_86, struct S2 * p_2052);
int32_t * func_98(int32_t * p_99, struct S2 * p_2052);
struct S0  func_100(uint32_t * p_101, uint32_t  p_102, uint64_t  p_103, int32_t * p_104, uint32_t  p_105, struct S2 * p_2052);
uint32_t * func_107(uint32_t  p_108, int64_t  p_109, int32_t * p_110, uint32_t  p_111, struct S2 * p_2052);
uint8_t * func_119(int32_t  p_120, int16_t  p_121, uint8_t * p_122, struct S2 * p_2052);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2052->g_6 p_2052->g_11 p_2052->g_35 p_2052->g_41 p_2052->g_61 p_2052->g_69 p_2052->g_36 p_2052->g_1269.f4 p_2052->g_734 p_2052->g_1439 p_2052->g_960.f5 p_2052->g_123 p_2052->g_983 p_2052->g_677.f7 p_2052->g_382 p_2052->g_1366.f6 p_2052->g_1474 p_2052->g_1505 p_2052->g_960.f2 p_2052->g_661 p_2052->g_653 p_2052->g_106 p_2052->g_1044 p_2052->g_1853 p_2052->g_1664 p_2052->g_1331 p_2052->g_1131 p_2052->g_931.f1 p_2052->g_544 p_2052->g_1888 p_2052->g_1675 p_2052->g_1619.f2 p_2052->g_1805 p_2052->g_1921 p_2052->g_419 p_2052->g_1106 p_2052->g_678.f5 p_2052->g_942.f3 p_2052->g_1366.f1 p_2052->g_1269.f2 p_2052->g_879.f5 p_2052->g_1951 p_2052->g_1674 p_2052->g_124 p_2052->g_677.f2 p_2052->g_1657 p_2052->g_1965 p_2052->g_408 p_2052->g_1826 p_2052->g_1270.f6 p_2052->g_960.f3 p_2052->g_2050
 * writes: p_2052->g_6 p_2052->g_11 p_2052->g_36 p_2052->g_41.f5 p_2052->g_41.f0 p_2052->g_41.f2 p_2052->g_35 p_2052->g_61 p_2052->g_41.f3 p_2052->g_41.f6 p_2052->g_1367.f6 p_2052->g_1290 p_2052->g_124 p_2052->g_1269.f6 p_2052->g_1366.f1 p_2052->g_389 p_2052->g_1044 p_2052->g_1367.f3 p_2052->g_931.f1 p_2052->g_879.f5 p_2052->g_1802 p_2052->g_1813 p_2052->g_960.f5 p_2052->g_1836.f0 p_2052->g_960.f1 p_2052->g_106.f2 p_2052->g_2051
 */
uint32_t  func_1(struct S2 * p_2052)
{ /* block id: 4 */
    int32_t l_5[6][9][4] = {{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}}};
    int64_t l_8[10][6][4] = {{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}}};
    uint32_t *l_9 = (void*)0;
    uint32_t *l_10 = &p_2052->g_11;
    int32_t l_12 = 0x4D7AEB8FL;
    VECTOR(int8_t, 8) l_91 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-5L)), (-5L)), (-5L), 0L, (-5L));
    VECTOR(int8_t, 8) l_95 = (VECTOR(int8_t, 8))(0x6AL, (VECTOR(int8_t, 4))(0x6AL, (VECTOR(int8_t, 2))(0x6AL, (-1L)), (-1L)), (-1L), 0x6AL, (-1L));
    int32_t l_1975[3];
    VECTOR(int32_t, 4) l_1996 = (VECTOR(int32_t, 4))(0x7FB4B5B2L, (VECTOR(int32_t, 2))(0x7FB4B5B2L, (-10L)), (-10L));
    int32_t **l_1999 = &p_2052->g_389[3][1][0];
    uint64_t *l_2006 = (void*)0;
    uint8_t l_2008 = 248UL;
    VECTOR(int8_t, 4) l_2034 = (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0L), 0L);
    VECTOR(int8_t, 2) l_2037 = (VECTOR(int8_t, 2))(0x4FL, 0x7BL);
    uint64_t l_2047 = 18446744073709551615UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1975[i] = 0x4FABF4DDL;
    l_12 = (func_2(l_5[5][7][2], l_5[3][1][1], p_2052) <= (!((*l_10) = l_8[6][4][0])));
    for (l_12 = (-19); (l_12 == 0); l_12++)
    { /* block id: 12 */
        int16_t l_15 = 1L;
        int32_t l_80 = 0x5095E97EL;
        VECTOR(uint64_t, 16) l_89 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
        VECTOR(int8_t, 16) l_94 = (VECTOR(int8_t, 16))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x04L), 0x04L), 0x04L, 2L, 0x04L, (VECTOR(int8_t, 2))(2L, 0x04L), (VECTOR(int8_t, 2))(2L, 0x04L), 2L, 0x04L, 2L, 0x04L);
        VECTOR(int8_t, 4) l_96 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2DL), 0x2DL);
        uint64_t *l_97 = &p_2052->g_41.f6;
        int8_t *l_1967 = (void*)0;
        int32_t *l_1968 = (void*)0;
        int32_t *l_1969 = &l_80;
        int32_t *l_1970 = &l_80;
        int32_t *l_1971 = (void*)0;
        int32_t *l_1972 = &l_80;
        int32_t *l_1973 = (void*)0;
        int32_t *l_1974[5];
        int8_t l_1976[8][8] = {{(-4L),0x2CL,(-1L),0x54L,(-1L),(-4L),0x54L,0L},{(-4L),0x2CL,(-1L),0x54L,(-1L),(-4L),0x54L,0L},{(-4L),0x2CL,(-1L),0x54L,(-1L),(-4L),0x54L,0L},{(-4L),0x2CL,(-1L),0x54L,(-1L),(-4L),0x54L,0L},{(-4L),0x2CL,(-1L),0x54L,(-1L),(-4L),0x54L,0L},{(-4L),0x2CL,(-1L),0x54L,(-1L),(-4L),0x54L,0L},{(-4L),0x2CL,(-1L),0x54L,(-1L),(-4L),0x54L,0L},{(-4L),0x2CL,(-1L),0x54L,(-1L),(-4L),0x54L,0L}};
        uint8_t l_1977 = 0xCCL;
        uint32_t l_2009 = 0x593012D5L;
        VECTOR(uint64_t, 8) l_2020 = (VECTOR(uint64_t, 8))(0x87C07C9EA152B601L, (VECTOR(uint64_t, 4))(0x87C07C9EA152B601L, (VECTOR(uint64_t, 2))(0x87C07C9EA152B601L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x87C07C9EA152B601L, 18446744073709551615UL);
        struct S0 ***l_2031[8];
        int i, j;
        for (i = 0; i < 5; i++)
            l_1974[i] = (void*)0;
        for (i = 0; i < 8; i++)
            l_2031[i] = (void*)0;
        (*l_1969) = (l_15 , (((p_2052->g_1813.y = func_18(((func_21(((func_27(p_2052->g_11, p_2052) , p_2052->g_69.f2) , (func_2(l_80, (func_81((((*l_97) = (safe_rshift_func_uint16_t_u_s(((((VECTOR(uint64_t, 4))(l_89.s2826)).z , ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))((-5L), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((~((VECTOR(int16_t, 16))(1L, 0x00CDL, 0x0372L, 0L, 7L, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_2052->g_90.yy)), 0x1AE7L, 0x0935L)), (((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 2))(l_91.s64)).yxyy, (int8_t)(-10L), (int8_t)((safe_lshift_func_int8_t_s_s(l_89.s2, ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 8))(l_94.sf0d90dc8)).even, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(1L, ((VECTOR(int8_t, 2))(l_95.s17)), 0x0BL)), 0x03L, 0x63L, ((VECTOR(int8_t, 2))(l_96.zy)), 9L, p_2052->g_11, l_5[5][7][2], 0x73L, ((VECTOR(int8_t, 2))(0x1EL)), 0x3DL, 0L)).s173d & ((VECTOR(int8_t, 4))(0L)))))))).z)) | l_91.s2)))), (-4L), ((VECTOR(int8_t, 2))(4L)), 3L)).s01 >= ((VECTOR(int8_t, 2))(0x4FL))))).even == GROUP_DIVERGE(0, 1)), 0L, (-1L), (-7L))), (-1L), 0x12B4L, 0x0EEEL)).hi))).s50 & ((VECTOR(int16_t, 2))((-10L)))))).even, 1L, (-6L))).odd, ((VECTOR(uint16_t, 2))(9UL))))).odd) <= p_2052->g_69.f5), p_2052->g_41.f3))) , 255UL), l_9, &p_2052->g_11, p_2052->g_41.f2, l_95.s0, p_2052) , p_2052->g_1269.f4), p_2052) >= p_2052->g_734.x)), l_5[2][7][1], p_2052->g_1439.y, &p_2052->g_1023, l_80, p_2052) , 1UL) > (-8L)), p_2052->g_419.sd, p_2052)) | l_89.sd) || 0L));
        l_1977++;
        for (p_2052->g_960.f5 = 0; (p_2052->g_960.f5 < 51); p_2052->g_960.f5 = safe_add_func_uint32_t_u_u(p_2052->g_960.f5, 7))
        { /* block id: 633 */
            uint8_t l_1986[1][5][3] = {{{0x4AL,0x4AL,0x4AL},{0x4AL,0x4AL,0x4AL},{0x4AL,0x4AL,0x4AL},{0x4AL,0x4AL,0x4AL},{0x4AL,0x4AL,0x4AL}}};
            VECTOR(int32_t, 2) l_2000 = (VECTOR(int32_t, 2))(0x480F6D4BL, 0x11B1EF36L);
            int16_t *l_2019 = &p_2052->g_106.f2;
            int32_t l_2021 = 0x537BFD36L;
            uint32_t *l_2028 = &p_2052->g_1474.f1;
            VECTOR(int8_t, 2) l_2036 = (VECTOR(int8_t, 2))(0x15L, 0x71L);
            int8_t *l_2048 = (void*)0;
            int8_t *l_2049 = &l_1976[3][1];
            int i, j, k;
            for (p_2052->g_1836.f0 = 0; (p_2052->g_1836.f0 != 29); p_2052->g_1836.f0 = safe_add_func_int32_t_s_s(p_2052->g_1836.f0, 2))
            { /* block id: 636 */
                uint32_t l_1991[1];
                uint64_t *l_2005 = &p_2052->g_61;
                int32_t **l_2007 = &l_1974[3];
                int i;
                for (i = 0; i < 1; i++)
                    l_1991[i] = 3UL;
                for (p_2052->g_960.f1 = 0; (p_2052->g_960.f1 != (-1)); p_2052->g_960.f1 = safe_sub_func_uint16_t_u_u(p_2052->g_960.f1, 1))
                { /* block id: 639 */
                    return l_1986[0][2][1];
                }
                l_2009 ^= ((safe_mod_func_int16_t_s_s(((+((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),int64_t,((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 2))(0x5F261CF75CFA38E9L, 0L)).xyxxxyxxyxxxxxxx))).sacf4, (int64_t)((VECTOR(int64_t, 2))((-8L), 0x32D1F71D4C4730C9L)).odd, (int64_t)0x23556051A4ECF375L))).wxyxzwxzwwyywzyy, (int64_t)(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 16))(((safe_lshift_func_uint16_t_u_s(p_2052->g_69.f7, (l_1991[0] == (safe_mul_func_int8_t_s_s((safe_mod_func_int32_t_s_s(0x5E5ABFA9L, ((((VECTOR(int64_t, 16))((-3L), (((VECTOR(int32_t, 4))(l_1996.yzyz)).y || l_1991[0]), (safe_mul_func_int8_t_s_s(((p_2052->g_829.f0 , l_1999) != (((VECTOR(int32_t, 2))((!((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_2000.yxyx)).wzwwyzzx && ((VECTOR(int32_t, 16))(((((safe_mul_func_int16_t_s_s(((safe_div_func_uint8_t_u_u((~((*p_2052->g_123) ^= (l_2005 != l_2006))), p_2052->g_382.y)) | (*l_1970)), 0xF659L)) | 0x8E72L) > p_2052->g_1260.x) < p_2052->g_418.sa), 7L, (-5L), ((VECTOR(int32_t, 4))(0x44EDF7ADL)), ((VECTOR(int32_t, 4))((-1L))), 1L, l_2000.x, 1L, 8L, 0x75D920C5L)).lo))).hi, ((VECTOR(int32_t, 4))(0x3A5F3E82L))))).odd))).hi , l_2007)), p_2052->g_1798.s3)), 0x3443EE27F7644A62L, 8L, p_2052->g_69.f6, ((VECTOR(int64_t, 4))(0x5CDAAB82E2D72926L)), 0L, ((VECTOR(int64_t, 4))(0x119B631F46FCA66BL)), 0x140474C84DF75768L)).s7 != l_1986[0][4][2]) | (*p_2052->g_1664)))), 0x4BL))))) & 0x17L), ((VECTOR(int16_t, 8))((-9L))), l_2008, ((VECTOR(int16_t, 4))(0x2646L)), (-7L), 0x13F1L)), ((VECTOR(int16_t, 16))(0x3E5AL)), ((VECTOR(int16_t, 16))(0x2726L))))).s2 > 0xE1FAL)))).s8) == (*p_2052->g_1664)), p_2052->g_408.y)) <= FAKE_DIVERGE(p_2052->global_2_offset, get_global_id(2), 10));
            }
            l_2021 &= (((FAKE_DIVERGE(p_2052->global_2_offset, get_global_id(2), 10) || (((&p_2052->g_124 != &l_1986[0][2][1]) , p_2052->g_931.f1) & ((safe_div_func_int64_t_s_s(2L, ((*p_2052->g_983) , (((safe_lshift_func_int16_t_s_s((safe_unary_minus_func_uint64_t_u(GROUP_DIVERGE(1, 1))), 8)) & (p_2052->g_1826.s4 , ((0x19603866L && ((0x69EF9585L >= ((((~((*l_2019) = (safe_rshift_func_uint8_t_u_s((*p_2052->g_123), p_2052->g_734.x)))) != 2L) , 0x6548820AL) < l_2020.s0)) < p_2052->g_1270.f6)) != GROUP_DIVERGE(2, 1)))) | FAKE_DIVERGE(p_2052->global_1_offset, get_global_id(1), 10))))) , l_2000.y))) , (*p_2052->g_1664)) >= p_2052->g_960.f3);
            if ((*l_1969))
                break;
            (*l_1999) = &l_80;
        }
        p_2052->g_2051 = p_2052->g_2050;
    }
    return l_95.s1;
}


/* ------------------------------------------ */
/* 
 * reads : p_2052->g_6
 * writes: p_2052->g_6
 */
uint32_t  func_2(int32_t  p_3, uint32_t  p_4, struct S2 * p_2052)
{ /* block id: 5 */
    int16_t l_7 = 0x77B6L;
    p_2052->g_6 |= (-1L);
    return l_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_2052->g_1106 p_2052->g_678.f5 p_2052->g_942.f3 p_2052->g_1664 p_2052->g_41.f1 p_2052->g_1366.f1 p_2052->g_1269.f2 p_2052->g_879.f5 p_2052->g_1951 p_2052->g_1674 p_2052->g_1675 p_2052->g_1619.f2 p_2052->g_1439 p_2052->g_123 p_2052->g_124 p_2052->g_677.f2 p_2052->g_1657 p_2052->g_1965 p_2052->g_36
 * writes: p_2052->g_61 p_2052->g_36 p_2052->g_879.f5 p_2052->g_124 p_2052->g_1802 p_2052->g_389
 */
int8_t  func_18(int64_t  p_19, int8_t  p_20, struct S2 * p_2052)
{ /* block id: 604 */
    int32_t l_1924 = (-2L);
    uint64_t **l_1927 = (void*)0;
    int8_t *l_1934[6][1][8] = {{{&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290,&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290}},{{&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290,&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290}},{{&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290,&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290}},{{&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290,&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290}},{{&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290,&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290}},{{&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290,&p_2052->g_1290,(void*)0,(void*)0,&p_2052->g_1290}}};
    int32_t l_1935 = 0x2BEB5714L;
    int32_t *l_1964 = &p_2052->g_36;
    VECTOR(int64_t, 16) l_1966 = (VECTOR(int64_t, 16))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x03330EB8B09F0321L), 0x03330EB8B09F0321L), 0x03330EB8B09F0321L, 3L, 0x03330EB8B09F0321L, (VECTOR(int64_t, 2))(3L, 0x03330EB8B09F0321L), (VECTOR(int64_t, 2))(3L, 0x03330EB8B09F0321L), 3L, 0x03330EB8B09F0321L, 3L, 0x03330EB8B09F0321L);
    int i, j, k;
    if (((((safe_rshift_func_int16_t_s_u(((l_1924 >= p_2052->g_1106.s7) && (&p_2052->g_206[2][2] == &p_2052->g_125)), (safe_add_func_uint64_t_u_u(l_1924, (((void*)0 == l_1927) & (safe_mul_func_int8_t_s_s((l_1935 = (safe_sub_func_uint16_t_u_u((((((*p_2052->g_1664) = (l_1924 , ((safe_sub_func_uint16_t_u_u(p_2052->g_678[6].f5, p_19)) > p_2052->g_942.f3))) >= p_2052->g_41.f1) != p_2052->g_1366.f1) >= GROUP_DIVERGE(1, 1)), p_2052->g_1269.f2))), p_20))))))) > p_20) , l_1935) && l_1924))
    { /* block id: 607 */
        uint64_t **l_1937 = &p_2052->g_1664;
        uint64_t ***l_1936 = &l_1937;
        int32_t *l_1938 = &p_2052->g_36;
        int32_t **l_1963[10][8][3] = {{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}},{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}},{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}},{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}},{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}},{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}},{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}},{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}},{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}},{{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]},{&p_2052->g_389[3][1][0],&l_1938,&p_2052->g_389[3][1][0]}}};
        int i, j, k;
lbl_1957:
        (*l_1938) = ((void*)0 == l_1936);
        for (p_2052->g_879.f5 = 0; (p_2052->g_879.f5 < 58); p_2052->g_879.f5 = safe_add_func_uint32_t_u_u(p_2052->g_879.f5, 3))
        { /* block id: 611 */
            uint8_t l_1956[8][2] = {{4UL,252UL},{4UL,252UL},{4UL,252UL},{4UL,252UL},{4UL,252UL},{4UL,252UL},{4UL,252UL},{4UL,252UL}};
            int i, j;
            if (((p_20 && ((&p_2052->g_61 != &p_2052->g_61) && GROUP_DIVERGE(0, 1))) || (safe_mod_func_uint32_t_u_u(p_19, ((safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u((((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(p_2052->g_1951.s6127)).even + ((VECTOR(uint8_t, 16))(0UL, ((**p_2052->g_1674) ^ p_2052->g_1439.x), (--(*p_2052->g_123)), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(((l_1924 == ((&p_2052->g_477 != (void*)0) && 8UL)) != p_19), ((VECTOR(uint8_t, 2))(0x75L)), 8UL)) + ((VECTOR(uint8_t, 4))(1UL))))), p_19, l_1956[4][1], 9UL, 0UL, ((VECTOR(uint8_t, 4))(0x55L)), 253UL)).s9b))).xyxx - ((VECTOR(uint8_t, 4))(0xD6L))))).zyzxwxzy, ((VECTOR(uint8_t, 8))(0UL))))).s3 | p_2052->g_677.f2), p_19)), FAKE_DIVERGE(p_2052->group_0_offset, get_group_id(0), 10))) & l_1935)))))
            { /* block id: 613 */
                if (p_2052->g_41.f1)
                    goto lbl_1957;
                return p_20;
            }
            else
            { /* block id: 616 */
                (*l_1938) = ((p_2052->g_1802.y = (-1L)) || (safe_sub_func_int32_t_s_s((safe_unary_minus_func_uint8_t_u((++(*p_2052->g_123)))), 0x11B5BAD0L)));
            }
        }
        l_1964 = ((*p_2052->g_1657) = &l_1935);
    }
    else
    { /* block id: 624 */
        (*l_1964) &= (((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(1L, 0x1C9A84FDF60A35FBL)), 0x1F4B6E4BB6B103BEL, 0L)).wxzwxwww))) | ((VECTOR(int64_t, 16))(p_2052->g_1965.yyyxxyxyyyyxyxyy)).lo))).s5 || ((VECTOR(int64_t, 4))(l_1966.s708e)).x);
    }
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_2052->g_1367.f6 p_2052->g_960.f5 p_2052->g_123 p_2052->g_983 p_2052->g_11 p_2052->g_677.f7 p_2052->g_382 p_2052->g_35 p_2052->g_36 p_2052->g_1366.f6 p_2052->g_1474 p_2052->g_1505 p_2052->g_960.f2 p_2052->g_661 p_2052->g_653 p_2052->g_106 p_2052->g_1044 p_2052->g_1853 p_2052->g_1664 p_2052->g_61 p_2052->g_1331 p_2052->g_1131 p_2052->g_41.f3 p_2052->g_931.f1 p_2052->g_544 p_2052->g_1888 p_2052->g_1675 p_2052->g_1619.f2 p_2052->g_6 p_2052->g_1805 p_2052->g_41.f2 p_2052->g_1921
 * writes: p_2052->g_1367.f6 p_2052->g_1290 p_2052->g_124 p_2052->g_36 p_2052->g_1269.f6 p_2052->g_1366.f1 p_2052->g_389 p_2052->g_1044 p_2052->g_41.f6 p_2052->g_61 p_2052->g_1367.f3 p_2052->g_931.f1 p_2052->g_6
 */
struct S1  func_21(int32_t  p_22, int32_t  p_23, uint32_t  p_24, uint32_t * p_25, uint8_t  p_26, struct S2 * p_2052)
{ /* block id: 561 */
    uint16_t l_1793 = 0UL;
    VECTOR(int8_t, 4) l_1796 = (VECTOR(int8_t, 4))(0x17L, (VECTOR(int8_t, 2))(0x17L, (-2L)), (-2L));
    VECTOR(int8_t, 8) l_1797 = (VECTOR(int8_t, 8))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, (-1L)), (-1L)), (-1L), 3L, (-1L));
    VECTOR(int8_t, 2) l_1801 = (VECTOR(int8_t, 2))(0x50L, 1L);
    VECTOR(int8_t, 16) l_1812 = (VECTOR(int8_t, 16))(0x6EL, (VECTOR(int8_t, 4))(0x6EL, (VECTOR(int8_t, 2))(0x6EL, 0x21L), 0x21L), 0x21L, 0x6EL, 0x21L, (VECTOR(int8_t, 2))(0x6EL, 0x21L), (VECTOR(int8_t, 2))(0x6EL, 0x21L), 0x6EL, 0x21L, 0x6EL, 0x21L);
    VECTOR(int8_t, 4) l_1824 = (VECTOR(int8_t, 4))(0x00L, (VECTOR(int8_t, 2))(0x00L, 0x2FL), 0x2FL);
    VECTOR(int16_t, 4) l_1829 = (VECTOR(int16_t, 4))(0x71B7L, (VECTOR(int16_t, 2))(0x71B7L, 0x35C5L), 0x35C5L);
    VECTOR(int16_t, 16) l_1830 = (VECTOR(int16_t, 16))(0x3AC5L, (VECTOR(int16_t, 4))(0x3AC5L, (VECTOR(int16_t, 2))(0x3AC5L, 0x1ECCL), 0x1ECCL), 0x1ECCL, 0x3AC5L, 0x1ECCL, (VECTOR(int16_t, 2))(0x3AC5L, 0x1ECCL), (VECTOR(int16_t, 2))(0x3AC5L, 0x1ECCL), 0x3AC5L, 0x1ECCL, 0x3AC5L, 0x1ECCL);
    uint32_t l_1832 = 1UL;
    int32_t l_1843 = 0x6DBB33D5L;
    int32_t *l_1855 = &p_2052->g_36;
    struct S0 **l_1870 = &p_2052->g_653;
    VECTOR(int8_t, 16) l_1874 = (VECTOR(int8_t, 16))(0x42L, (VECTOR(int8_t, 4))(0x42L, (VECTOR(int8_t, 2))(0x42L, 2L), 2L), 2L, 0x42L, 2L, (VECTOR(int8_t, 2))(0x42L, 2L), (VECTOR(int8_t, 2))(0x42L, 2L), 0x42L, 2L, 0x42L, 2L);
    uint8_t **l_1892[5][6][1] = {{{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477}},{{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477}},{{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477}},{{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477}},{{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477},{&p_2052->g_477}}};
    uint8_t **l_1894 = &p_2052->g_123;
    uint8_t ***l_1893 = &l_1894;
    uint16_t *l_1901 = &p_2052->g_6;
    struct S1 *l_1906 = (void*)0;
    int16_t l_1907 = 3L;
    int32_t *l_1910 = &p_2052->g_36;
    int32_t *l_1912 = (void*)0;
    int32_t *l_1913 = (void*)0;
    int32_t *l_1915 = (void*)0;
    int32_t *l_1917 = (void*)0;
    int32_t *l_1920 = (void*)0;
    int i, j, k;
    for (p_2052->g_1367.f6 = (-26); (p_2052->g_1367.f6 < 30); p_2052->g_1367.f6 = safe_add_func_uint16_t_u_u(p_2052->g_1367.f6, 1))
    { /* block id: 564 */
        int8_t *l_1794[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(int8_t, 2) l_1795 = (VECTOR(int8_t, 2))((-10L), 0x3AL);
        VECTOR(int8_t, 16) l_1799 = (VECTOR(int8_t, 16))(0x58L, (VECTOR(int8_t, 4))(0x58L, (VECTOR(int8_t, 2))(0x58L, (-5L)), (-5L)), (-5L), 0x58L, (-5L), (VECTOR(int8_t, 2))(0x58L, (-5L)), (VECTOR(int8_t, 2))(0x58L, (-5L)), 0x58L, (-5L), 0x58L, (-5L));
        VECTOR(int8_t, 16) l_1814 = (VECTOR(int8_t, 16))(0x27L, (VECTOR(int8_t, 4))(0x27L, (VECTOR(int8_t, 2))(0x27L, 0x4AL), 0x4AL), 0x4AL, 0x27L, 0x4AL, (VECTOR(int8_t, 2))(0x27L, 0x4AL), (VECTOR(int8_t, 2))(0x27L, 0x4AL), 0x27L, 0x4AL, 0x27L, 0x4AL);
        VECTOR(int8_t, 2) l_1823 = (VECTOR(int8_t, 2))(0x18L, 0x68L);
        uint16_t *l_1827 = &l_1793;
        VECTOR(int16_t, 8) l_1828 = (VECTOR(int16_t, 8))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x7EE9L), 0x7EE9L), 0x7EE9L, (-5L), 0x7EE9L);
        int16_t *l_1833[1][7];
        int32_t l_1834 = 0L;
        struct S1 *l_1835 = &p_2052->g_1836;
        int32_t l_1837 = 0x4A8BFA55L;
        int64_t l_1838 = 0L;
        uint32_t *l_1839 = (void*)0;
        int32_t *l_1840 = &p_2052->g_36;
        int32_t *l_1841 = (void*)0;
        int32_t *l_1842[5][7][1] = {{{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837}},{{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837}},{{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837}},{{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837}},{{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837},{&l_1837}}};
        uint64_t l_1844 = 18446744073709551612UL;
        uint32_t l_1881 = 4294967290UL;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 7; j++)
                l_1833[i][j] = (void*)0;
        }
        p_2052->g_1044.y &= ((func_100(((safe_mod_func_uint32_t_u_u(((l_1837 &= ((p_2052->g_1290 = (safe_mod_func_uint16_t_u_u(((!l_1793) , FAKE_DIVERGE(p_2052->global_1_offset, get_global_id(1), 10)), FAKE_DIVERGE(p_2052->global_1_offset, get_global_id(1), 10)))) && ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x08L, 3L)), ((VECTOR(int8_t, 2))((-1L), 0x5BL)), ((VECTOR(int8_t, 2))(l_1795.yx)), 6L, (-5L))).s2254451642574322 && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(5L, 1L)).yyxxyyxx && ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))((-2L), (-1L))).yyyyyyxy, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(l_1796.yxzy)).zzyxywzy & ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(l_1797.s62075561)).s00, ((VECTOR(int8_t, 16))(0x57L, ((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 16))(p_2052->g_1798.s1d385d4f22510c1a)).even, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(l_1799.sddb50446)).s24 && ((VECTOR(int8_t, 2))(p_2052->g_1800.zw))))), 0x7CL, (-7L))) < ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))((~((VECTOR(int8_t, 2))((-9L), 0x64L))))) <= ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(l_1801.xyyxxyxxyxxyyxyx)).s012b, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(0x7AL, 0x46L)), ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_2052->g_1802.yy)), 0x1FL, 0x25L)).xywzxxxx | ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(0x7BL, 0L)).xxxy == ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))((0x3F430A71570FA05CL & (l_1797.s1 >= (safe_rshift_func_int16_t_s_s((((p_2052->g_1805[1] != (((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))((((l_1834 ^= (safe_lshift_func_uint8_t_u_s(((safe_div_func_uint8_t_u_u((((VECTOR(uint32_t, 8))((0x7AL ^ ((*p_2052->g_123) ^= (safe_mod_func_uint32_t_u_u(((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(l_1812.s7f57323c)) && ((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))(p_2052->g_1813.yxyxxxxx)).odd, ((VECTOR(int8_t, 16))(l_1814.sf7d470638f9a5b9e)).s4a3a))), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(p_22, (safe_lshift_func_int8_t_s_u((safe_add_func_uint8_t_u_u((safe_mod_func_int16_t_s_s(l_1814.s9, (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 2))(l_1823.yy)).xyxxxyxx, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(l_1824.yxxyyzxz)).s6705500765773007 < ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 16))(p_2052->g_1825.sc9900deedda62828)).scc1d, (int8_t)(((*l_1827) &= (l_1824.y != ((VECTOR(int16_t, 4))(p_2052->g_1826.s701c)).y)) ^ ((VECTOR(int16_t, 2))(l_1828.s12)).even), (int8_t)(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(l_1829.xx)) && ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 8))(l_1830.s050b53d0)).s03)))))), ((VECTOR(int16_t, 8))(p_2052->g_1831.s17720065)).s52))).odd , l_1830.sd)))).yyyyxyyxxxyzzzww))).lo))).s5521556360565414, ((VECTOR(int8_t, 16))((-4L)))))).sd, p_26)))), p_23)), 6)), 0L, 0x64L)).lo || ((VECTOR(int8_t, 2))(0x4BL))))), ((VECTOR(int8_t, 4))(0x39L)), l_1832, (-10L), 0x4AL, (-7L), 0x43L, 0x3FL)), ((VECTOR(int8_t, 16))(0x44L))))).s4662))).xwwyzyzyxxzxzxyx, ((VECTOR(int8_t, 16))((-1L)))))).even))).s6 ^ l_1830.sc) > (-2L)), l_1823.y)))), FAKE_DIVERGE(p_2052->global_1_offset, get_global_id(1), 10), ((VECTOR(uint32_t, 2))(4294967291UL)), 0x4B7EB6E9L, (*p_2052->g_544), 4294967286UL, 2UL)).s5 == (*p_2052->g_544)), l_1799.s5)) | 0x1CL), p_2052->g_1080.s5))) <= l_1797.s4) , p_2052->g_678[6].f2), 0L, 0x3BL, 0x21L)).lo, ((VECTOR(int8_t, 2))((-7L)))))), ((VECTOR(int8_t, 2))(1L))))).hi , l_1835)) & (-1L)) , 0x491AL), p_2052->g_181[2][4][1])))), ((VECTOR(int8_t, 2))((-10L))), 8L, 0x27L, ((VECTOR(int8_t, 2))(1L)), (-1L))).s0554622017574124 ^ ((VECTOR(int8_t, 16))(0x55L))))).sabf7))).xzxyxzxy))), ((VECTOR(int8_t, 2))(0x27L)), ((VECTOR(int8_t, 4))(0L)), 0x71L, 0x65L)).s542c, ((VECTOR(int8_t, 4))(1L)), ((VECTOR(int8_t, 4))((-1L)))))).wwzzwwyy, ((VECTOR(int8_t, 8))(1L))))).odd))).odd, ((VECTOR(int8_t, 2))(0x48L))))), 0x1EL, (-10L)))))).hi > ((VECTOR(int8_t, 2))((-9L)))))).xyyxxxyy, ((VECTOR(int8_t, 8))(0x0FL))))) && ((VECTOR(int8_t, 8))(0x5FL))))), ((VECTOR(int8_t, 8))((-1L))), ((VECTOR(int8_t, 8))((-10L)))))).s50))), (int8_t)l_1795.x))).yxxy && ((VECTOR(int8_t, 4))(0x5FL)))))))) | ((VECTOR(int8_t, 4))(0L))))).xyxwywyx))).s1, ((VECTOR(int8_t, 2))(0x27L)), ((VECTOR(int8_t, 8))(0x01L)), 0x6CL, ((VECTOR(int8_t, 2))(1L)), 0x37L)).sde))).yyxxyxyx))).s0770472606274325 && ((VECTOR(int8_t, 16))((-5L)))))).s25 && ((VECTOR(int8_t, 2))(1L))))).xxxx && ((VECTOR(int8_t, 4))(0x5AL))))).yzyxwyxy, ((VECTOR(int8_t, 8))((-6L)))))), ((VECTOR(int8_t, 8))((-1L)))))).even && ((VECTOR(int8_t, 4))(1L))))), ((VECTOR(int8_t, 4))(0x76L))))).hi != ((VECTOR(int8_t, 2))(0L))))).xyxyxyyy)))))).lo && ((VECTOR(int8_t, 4))(3L))))).zzywwwwywxyzwyxx))).sc)) > (-6L)), l_1838)) , l_1839), p_2052->g_960.f5, p_22, l_1839, l_1801.x, p_2052) , 0x6E767FFAL) | 4294967288UL);
        ++l_1844;
        for (p_2052->g_41.f6 = (-30); (p_2052->g_41.f6 < 17); p_2052->g_41.f6 = safe_add_func_int16_t_s_s(p_2052->g_41.f6, 7))
        { /* block id: 574 */
            int32_t *l_1854 = (void*)0;
            int32_t l_1878 = 1L;
            VECTOR(int32_t, 16) l_1879 = (VECTOR(int32_t, 16))(0x2C90C49AL, (VECTOR(int32_t, 4))(0x2C90C49AL, (VECTOR(int32_t, 2))(0x2C90C49AL, 0x3810D97EL), 0x3810D97EL), 0x3810D97EL, 0x2C90C49AL, 0x3810D97EL, (VECTOR(int32_t, 2))(0x2C90C49AL, 0x3810D97EL), (VECTOR(int32_t, 2))(0x2C90C49AL, 0x3810D97EL), 0x2C90C49AL, 0x3810D97EL, 0x2C90C49AL, 0x3810D97EL);
            int i;
            for (p_2052->g_61 = (-24); (p_2052->g_61 < 30); p_2052->g_61 = safe_add_func_uint64_t_u_u(p_2052->g_61, 1))
            { /* block id: 577 */
                int32_t l_1858 = (-1L);
                int32_t l_1867 = 4L;
                int32_t l_1877 = (-2L);
                int32_t l_1880 = 0x208DA3EDL;
                for (p_2052->g_1367.f3 = 0; (p_2052->g_1367.f3 < 15); p_2052->g_1367.f3 = safe_add_func_int16_t_s_s(p_2052->g_1367.f3, 8))
                { /* block id: 580 */
                    (*p_2052->g_1853) = p_25;
                    l_1855 = l_1854;
                }
                if (((*p_2052->g_1664) == p_2052->g_1331.sd))
                { /* block id: 584 */
                    int32_t l_1856 = 1L;
                    int32_t l_1857 = (-1L);
                    int32_t l_1859 = 0x7EBB2EA5L;
                    uint64_t l_1860[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_1860[i] = 0UL;
                    l_1860[1]--;
                }
                else
                { /* block id: 586 */
                    if (p_23)
                        break;
                }
                (*l_1840) = ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(0x2F5E4CBAL, 2L, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(0x77D4676CL, 0x0161BAECL)), ((VECTOR(int32_t, 16))((!((VECTOR(int32_t, 4))((safe_rshift_func_uint8_t_u_u((((safe_mul_func_int8_t_s_s((l_1867 = (GROUP_DIVERGE(0, 1) , 0x7DL)), (safe_lshift_func_uint8_t_u_s(((void*)0 != l_1870), p_2052->g_1131.x)))) >= (FAKE_DIVERGE(p_2052->local_2_offset, get_local_id(2), 10) || ((+l_1858) == p_2052->g_41.f3))) && (l_1867 = (safe_unary_minus_func_int16_t_s((1UL | (((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(l_1874.sf9)).xyxy, ((VECTOR(int8_t, 8))(0x57L, 1L, (((p_2052->g_931.f1 &= (safe_mul_func_uint8_t_u_u(((-1L) >= p_23), p_2052->g_1331.sd))) , p_23) & (*p_2052->g_544)), l_1867, 0x3FL, ((VECTOR(int8_t, 2))((-1L))), (-1L))).even, ((VECTOR(int8_t, 4))(0x0CL))))).y >= p_24)))))), p_23)), (-6L), 0x599D1475L, 0x0B59F516L)).yzwxxwzzxxzwyxwz))).scf))), ((VECTOR(int32_t, 2))(0x6F94052EL)), 0L, 0x59B53313L)).s6144141431106620 && ((VECTOR(int32_t, 16))((-9L)))))).sb;
                --l_1881;
            }
            if (l_1812.s8)
                break;
        }
    }
    l_1843 = ((*l_1910) = (safe_mul_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(p_2052->g_1888.s0160405662316421)).s0, (safe_rshift_func_int8_t_s_s(((safe_unary_minus_func_int16_t_s(((l_1892[1][3][0] != ((*l_1893) = l_1892[1][3][0])) <= (*p_2052->g_1664)))) > (safe_add_func_uint32_t_u_u((safe_add_func_int64_t_s_s(((*p_2052->g_1675) && (safe_lshift_func_uint16_t_u_u(((*l_1901)--), 13))), (((l_1906 == (l_1907 , p_2052->g_1805[1])) <= ((p_23 , (-7L)) != 0UL)) , 0x15CB75D41CDFAFF0L))), l_1796.z))), 1)))), p_2052->g_41.f2)));
    (*l_1910) &= p_22;
    return p_2052->g_1921[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_2052->g_6 p_2052->g_35 p_2052->g_41 p_2052->g_61 p_2052->g_69 p_2052->g_36
 * writes: p_2052->g_36 p_2052->g_41.f5 p_2052->g_41.f0 p_2052->g_41.f2 p_2052->g_35 p_2052->g_6 p_2052->g_61 p_2052->g_41.f3
 */
struct S1  func_27(int16_t  p_28, struct S2 * p_2052)
{ /* block id: 13 */
    uint8_t l_38[4] = {0x01L,0x01L,0x01L,0x01L};
    int32_t l_60[8] = {0x7785D6CFL,0x7785D6CFL,0x7785D6CFL,0x7785D6CFL,0x7785D6CFL,0x7785D6CFL,0x7785D6CFL,0x7785D6CFL};
    int32_t *l_71 = &p_2052->g_36;
    int32_t *l_72 = &l_60[3];
    int32_t *l_73 = &l_60[1];
    int32_t *l_74 = &l_60[2];
    int32_t *l_75 = &l_60[7];
    int32_t *l_76[5] = {&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36};
    uint32_t l_77 = 0x2BF5C28DL;
    int i;
lbl_44:
    for (p_28 = 0; (p_28 < (-28)); --p_28)
    { /* block id: 16 */
        int32_t *l_37[8] = {&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36};
        int i;
        (*p_2052->g_35) = (safe_sub_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), 5)), p_2052->g_6));
        l_38[0]++;
        return p_2052->g_41;
    }
lbl_70:
    for (p_2052->g_41.f5 = 0; (p_2052->g_41.f5 >= 49); p_2052->g_41.f5 = safe_add_func_int16_t_s_s(p_2052->g_41.f5, 1))
    { /* block id: 23 */
        int64_t l_53 = 0x1BC4ECDC4137E2FFL;
        int32_t l_59 = 0L;
        if (p_2052->g_41.f2)
            goto lbl_44;
        for (p_2052->g_41.f0 = 2; (p_2052->g_41.f0 > (-30)); p_2052->g_41.f0--)
        { /* block id: 27 */
            int32_t *l_49 = &p_2052->g_36;
            int32_t l_52 = 2L;
            for (p_2052->g_41.f2 = 7; (p_2052->g_41.f2 != (-28)); --p_2052->g_41.f2)
            { /* block id: 30 */
                int32_t *l_50 = &p_2052->g_36;
                int32_t *l_51[8];
                uint16_t l_54 = 1UL;
                int i;
                for (i = 0; i < 8; i++)
                    l_51[i] = (void*)0;
                p_2052->g_35 = l_49;
                l_54--;
                for (p_2052->g_6 = 0; (p_2052->g_6 <= 2); p_2052->g_6++)
                { /* block id: 35 */
                    int16_t l_66 = 0x37B8L;
                    p_2052->g_61--;
                    for (p_2052->g_41.f3 = (-14); (p_2052->g_41.f3 == 25); p_2052->g_41.f3 = safe_add_func_uint16_t_u_u(p_2052->g_41.f3, 8))
                    { /* block id: 39 */
                        l_66 ^= (p_28 == 0x3FL);
                        if (p_28)
                            break;
                    }
                    if (p_2052->g_6)
                        goto lbl_70;
                }
                l_60[5] &= p_28;
            }
            for (p_2052->g_41.f2 = (-8); (p_2052->g_41.f2 <= 21); p_2052->g_41.f2 = safe_add_func_uint32_t_u_u(p_2052->g_41.f2, 6))
            { /* block id: 48 */
                return p_2052->g_41;
            }
            if (l_60[7])
                break;
        }
        return p_2052->g_69;
    }
    (*l_71) |= l_38[0];
    l_77++;
    return p_2052->g_69;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_81(uint8_t  p_82, uint32_t * p_83, uint32_t * p_84, int32_t  p_85, int16_t  p_86, struct S2 * p_2052)
{ /* block id: 60 */
    VECTOR(int8_t, 4) l_1719 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x70L), 0x70L);
    VECTOR(uint8_t, 8) l_1727 = (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0xCAL), 0xCAL), 0xCAL, 9UL, 0xCAL);
    int32_t **l_1730[2];
    uint16_t *l_1732[5][6] = {{&p_2052->g_1050.f0,(void*)0,(void*)0,(void*)0,&p_2052->g_1050.f0,&p_2052->g_1050.f0},{&p_2052->g_1050.f0,(void*)0,(void*)0,(void*)0,&p_2052->g_1050.f0,&p_2052->g_1050.f0},{&p_2052->g_1050.f0,(void*)0,(void*)0,(void*)0,&p_2052->g_1050.f0,&p_2052->g_1050.f0},{&p_2052->g_1050.f0,(void*)0,(void*)0,(void*)0,&p_2052->g_1050.f0,&p_2052->g_1050.f0},{&p_2052->g_1050.f0,(void*)0,(void*)0,(void*)0,&p_2052->g_1050.f0,&p_2052->g_1050.f0}};
    uint16_t **l_1731 = &l_1732[0][4];
    VECTOR(uint32_t, 4) l_1760 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 7UL), 7UL);
    VECTOR(uint32_t, 8) l_1772 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xCEF28ADCL), 0xCEF28ADCL), 0xCEF28ADCL, 4294967295UL, 0xCEF28ADCL);
    VECTOR(uint32_t, 16) l_1773 = (VECTOR(uint32_t, 16))(0xAF77C4F5L, (VECTOR(uint32_t, 4))(0xAF77C4F5L, (VECTOR(uint32_t, 2))(0xAF77C4F5L, 0x589C3379L), 0x589C3379L), 0x589C3379L, 0xAF77C4F5L, 0x589C3379L, (VECTOR(uint32_t, 2))(0xAF77C4F5L, 0x589C3379L), (VECTOR(uint32_t, 2))(0xAF77C4F5L, 0x589C3379L), 0xAF77C4F5L, 0x589C3379L, 0xAF77C4F5L, 0x589C3379L);
    int32_t l_1782[7][1] = {{0x07FCC619L},{0x07FCC619L},{0x07FCC619L},{0x07FCC619L},{0x07FCC619L},{0x07FCC619L},{0x07FCC619L}};
    struct S1 *l_1786 = &p_2052->g_1366;
    struct S1 **l_1785 = &l_1786;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1730[i] = &p_2052->g_691;
    return p_86;
}


/* ------------------------------------------ */
/* 
 * reads : p_2052->g_36 p_2052->g_106 p_2052->g_6 p_2052->g_123 p_2052->g_125 p_2052->g_35 p_2052->g_388 p_2052->g_389 p_2052->g_661 p_2052->g_11 p_2052->g_677 p_2052->g_686 p_2052->g_689 p_2052->g_69.f6 p_2052->g_713 p_2052->g_734 p_2052->g_735 p_2052->g_746 p_2052->g_181 p_2052->g_178 p_2052->g_766 p_2052->g_124 p_2052->g_594 p_2052->g_41 p_2052->g_61 p_2052->g_69 p_2052->g_829 p_2052->g_634 p_2052->g_382 p_2052->g_206 p_2052->g_879 p_2052->g_544 p_2052->g_931 p_2052->g_866 p_2052->g_687 p_2052->g_938 p_2052->g_477 p_2052->g_940 p_2052->g_418 p_2052->g_960 p_2052->g_983 p_2052->g_986 p_2052->g_942.f6 p_2052->g_1023 p_2052->g_597 p_2052->g_768.f3 p_2052->g_558 p_2052->g_652 p_2052->g_653 p_2052->g_1012 p_2052->g_385 p_2052->g_690 p_2052->g_1194 p_2052->g_768.f1 p_2052->g_768.f7 p_2052->g_1050.f3 p_2052->g_1106 p_2052->g_1269 p_2052->g_1366 p_2052->g_1093 p_2052->g_193 p_2052->g_1421 p_2052->g_1170 p_2052->g_1439 p_2052->g_1474 p_2052->g_1505 p_2052->g_170 p_2052->g_419 p_2052->g_1080 p_2052->g_116 p_2052->g_1185 p_2052->g_1554 p_2052->g_1588 p_2052->g_1620 p_2052->g_688 p_2052->g_1657 p_2052->g_1579 p_2052->g_1674 p_2052->g_1664 p_2052->g_1699 p_2052->g_678.f7 p_2052->g_678.f3
 * writes: p_2052->g_36 p_2052->g_116 p_2052->g_389 p_2052->g_11 p_2052->g_678 p_2052->g_689 p_2052->g_713 p_2052->g_61 p_2052->g_6 p_2052->g_181 p_2052->g_41.f5 p_2052->g_41.f0 p_2052->g_41.f2 p_2052->g_35 p_2052->g_41.f3 p_2052->g_768 p_2052->g_124 p_2052->g_302 p_2052->g_829.f1 p_2052->g_206 p_2052->g_106.f0 p_2052->g_687 p_2052->g_942 p_2052->g_385 p_2052->g_106.f1 p_2052->g_677.f2 p_2052->g_931.f2 p_2052->g_1023 p_2052->g_69.f5 p_2052->g_879.f2 p_2052->g_1151 p_2052->g_879.f5 p_2052->g_691 p_2052->g_690 p_2052->g_41.f1 p_2052->g_866 p_2052->g_829.f0 p_2052->g_677.f0 p_2052->g_1270 p_2052->g_677.f1 p_2052->g_1367 p_2052->g_1269.f6 p_2052->g_1366.f1 p_2052->g_106 p_2052->g_1185 p_2052->g_960.f6 p_2052->g_960.f3 p_2052->g_1366.f3 p_2052->g_1664 p_2052->g_1290 p_2052->g_558
 */
int32_t * func_98(int32_t * p_99, struct S2 * p_2052)
{ /* block id: 61 */
    uint32_t l_114 = 0xFD70E6FCL;
    uint8_t *l_115 = &p_2052->g_116;
    int32_t *l_939 = (void*)0;
    struct S0 *l_1529[2];
    int64_t l_1532 = 0L;
    int8_t l_1537 = 0x33L;
    VECTOR(int64_t, 2) l_1540 = (VECTOR(int64_t, 2))(0x61030825CCAB7508L, 0x454BE2CD374335F5L);
    uint32_t l_1549 = 0xE866E5F2L;
    int32_t l_1552 = 0x72D4C250L;
    VECTOR(int8_t, 4) l_1561 = (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 1L), 1L);
    uint16_t *l_1567[2][2][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint16_t **l_1566[2];
    VECTOR(uint16_t, 8) l_1590 = (VECTOR(uint16_t, 8))(0xC8D6L, (VECTOR(uint16_t, 4))(0xC8D6L, (VECTOR(uint16_t, 2))(0xC8D6L, 65526UL), 65526UL), 65526UL, 0xC8D6L, 65526UL);
    VECTOR(uint16_t, 8) l_1592 = (VECTOR(uint16_t, 8))(0x4D69L, (VECTOR(uint16_t, 4))(0x4D69L, (VECTOR(uint16_t, 2))(0x4D69L, 0UL), 0UL), 0UL, 0x4D69L, 0UL);
    int32_t l_1603 = 0x011FA065L;
    VECTOR(int32_t, 16) l_1607 = (VECTOR(int32_t, 16))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x59E7D323L), 0x59E7D323L), 0x59E7D323L, 9L, 0x59E7D323L, (VECTOR(int32_t, 2))(9L, 0x59E7D323L), (VECTOR(int32_t, 2))(9L, 0x59E7D323L), 9L, 0x59E7D323L, 9L, 0x59E7D323L);
    int32_t *l_1646 = (void*)0;
    uint32_t l_1676[4];
    int16_t *l_1695[8] = {(void*)0,&p_2052->g_106.f2,(void*)0,(void*)0,&p_2052->g_106.f2,(void*)0,(void*)0,&p_2052->g_106.f2};
    VECTOR(int16_t, 16) l_1696 = (VECTOR(int16_t, 16))(0x0F20L, (VECTOR(int16_t, 4))(0x0F20L, (VECTOR(int16_t, 2))(0x0F20L, 0x46A5L), 0x46A5L), 0x46A5L, 0x0F20L, 0x46A5L, (VECTOR(int16_t, 2))(0x0F20L, 0x46A5L), (VECTOR(int16_t, 2))(0x0F20L, 0x46A5L), 0x0F20L, 0x46A5L, 0x0F20L, 0x46A5L);
    uint8_t l_1712 = 255UL;
    int8_t l_1713 = (-1L);
    int32_t l_1714 = 0x442DEE3DL;
    int32_t *l_1715 = (void*)0;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1529[i] = &p_2052->g_1050;
    for (i = 0; i < 2; i++)
        l_1566[i] = &l_1567[1][0][3];
    for (i = 0; i < 4; i++)
        l_1676[i] = 0x13265047L;
    (*p_99) |= 1L;
    (*p_2052->g_653) = (func_100((p_2052->g_106 , func_107(((safe_div_func_uint8_t_u_u(l_114, ((*l_115) = 255UL))) > (safe_lshift_func_int8_t_s_s(((l_114 , func_119(l_114, p_2052->g_6, p_2052->g_123, p_2052)) == p_2052->g_477), 3))), p_2052->g_746.sb, l_939, l_114, p_2052)), p_2052->g_1106.s3, p_2052->g_1093.x, l_939, p_2052->g_193.sa, p_2052) , (**p_2052->g_652));
    if ((((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 4))(0x59346FBCL, 0xB49FD2A4L, 4294967293UL, 0x273EAB09L)).xzyzwzxyxxzwzxxy, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))((((0L <= ((safe_lshift_func_uint8_t_u_s(((*l_115) ^= (safe_add_func_int8_t_s_s((!((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))((l_1529[1] != (void*)0), ((*p_2052->g_544) ^= (safe_div_func_uint16_t_u_u((l_1532 & (safe_mul_func_int16_t_s_s((((safe_div_func_uint16_t_u_u((l_1537 , (safe_mul_func_int16_t_s_s(p_2052->g_170.y, (p_2052->g_634.z > ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(0x03510189A913EEDCL, 0x04AB5EB6F0B40B70L)).yxyy >= ((VECTOR(int64_t, 4))(l_1540.xyxx))))).y)))), p_2052->g_419.sa)) | (*p_99)) & (*p_99)), p_2052->g_1080.s1))), 0x6170L))), 0x3C4F43DCL, 0xC645E51CL, ((VECTOR(uint32_t, 4))(0x6070788CL)))).s1670234207361177 + ((VECTOR(uint32_t, 16))(4294967289UL))))).s2 || (*p_2052->g_983)) <= 0x5965D1A0559B9958L)), l_1540.y))), 5)) , (*p_99))) != l_114) > l_1532), ((VECTOR(uint32_t, 2))(0x6FD6C043L)), 0x999DC37DL, l_1532, ((VECTOR(uint32_t, 2))(0x06653ADFL)), l_1540.x, l_1532, (*p_2052->g_544), l_1537, 0x8FD32BEFL, ((VECTOR(uint32_t, 4))(0xD3FEE927L)))).sdc04 + ((VECTOR(uint32_t, 4))(4294967295UL))))).xwyyxxyyzwwxxyzy))).sd , l_1537))
    { /* block id: 482 */
        uint64_t *l_1541 = &p_2052->g_678[6].f6;
        uint64_t **l_1542[2];
        int32_t l_1547 = 4L;
        int32_t **l_1548[9] = {&l_939,&l_939,&l_939,&l_939,&l_939,&l_939,&l_939,&l_939,&l_939};
        VECTOR(int16_t, 2) l_1559 = (VECTOR(int16_t, 2))(0x4398L, 0x444EL);
        VECTOR(int16_t, 4) l_1560 = (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0x5867L), 0x5867L);
        VECTOR(uint8_t, 16) l_1562 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x07L), 0x07L), 0x07L, 1UL, 0x07L, (VECTOR(uint8_t, 2))(1UL, 0x07L), (VECTOR(uint8_t, 2))(1UL, 0x07L), 1UL, 0x07L, 1UL, 0x07L);
        VECTOR(uint16_t, 2) l_1581 = (VECTOR(uint16_t, 2))(0xFD1BL, 65535UL);
        VECTOR(uint16_t, 2) l_1589 = (VECTOR(uint16_t, 2))(1UL, 0xD285L);
        struct S0 **l_1599 = &p_2052->g_653;
        int32_t *l_1630 = &p_2052->g_960.f2;
        uint32_t l_1640[6] = {0x2555C8C7L,1UL,0x2555C8C7L,0x2555C8C7L,1UL,0x2555C8C7L};
        VECTOR(int32_t, 2) l_1643 = (VECTOR(int32_t, 2))(0x46221C46L, 0x2F099944L);
        int32_t *l_1645[10][8][3] = {{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}},{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}},{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}},{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}},{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}},{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}},{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}},{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}},{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}},{{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552},{(void*)0,&l_1547,&l_1552}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1542[i] = &p_2052->g_206[2][2];
        p_2052->g_1185.s6 &= ((0x59L > ((l_1541 == (p_2052->g_206[2][2] = p_2052->g_206[4][2])) , ((safe_lshift_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((func_100(&p_2052->g_1023, l_1547, l_1547, (p_99 = l_939), l_1549, p_2052) , l_1540.y), 0x59123E0B622A9DDDL)), l_1537)) <= GROUP_DIVERGE(2, 1)))) && 0xEFA7F653L);
        for (p_2052->g_960.f6 = 0; (p_2052->g_960.f6 < 13); ++p_2052->g_960.f6)
        { /* block id: 488 */
            int32_t l_1553 = 0x7072D49EL;
            VECTOR(uint16_t, 16) l_1574 = (VECTOR(uint16_t, 16))(0x1DCEL, (VECTOR(uint16_t, 4))(0x1DCEL, (VECTOR(uint16_t, 2))(0x1DCEL, 1UL), 1UL), 1UL, 0x1DCEL, 1UL, (VECTOR(uint16_t, 2))(0x1DCEL, 1UL), (VECTOR(uint16_t, 2))(0x1DCEL, 1UL), 0x1DCEL, 1UL, 0x1DCEL, 1UL);
            VECTOR(uint16_t, 4) l_1591 = (VECTOR(uint16_t, 4))(0xBBA5L, (VECTOR(uint16_t, 2))(0xBBA5L, 0xCE37L), 0xCE37L);
            int64_t *l_1597[5];
            uint32_t l_1598 = 4294967293UL;
            int32_t l_1604 = 0x65C150FFL;
            int32_t l_1605 = (-10L);
            int16_t l_1606[1];
            uint32_t l_1623 = 4294967295UL;
            int8_t l_1624 = 0x16L;
            int32_t *l_1631 = &p_2052->g_768.f2;
            int32_t *l_1633 = &l_1547;
            int64_t l_1637 = 6L;
            int32_t l_1639[5];
            int16_t l_1644 = 5L;
            int i;
            for (i = 0; i < 5; i++)
                l_1597[i] = (void*)0;
            for (i = 0; i < 1; i++)
                l_1606[i] = 0x3F86L;
            for (i = 0; i < 5; i++)
                l_1639[i] = 8L;
            l_1553 ^= l_1552;
            if ((p_2052->g_1554 , ((safe_div_func_uint32_t_u_u(l_1553, (((safe_add_func_int32_t_s_s((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(8L, 0x1A61L)).yxyyxxyy == ((VECTOR(int16_t, 8))((!((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x1592L, (-7L))) ^ ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(l_1559.xxyx)).odd, ((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 2))(l_1560.wy)), ((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 4))(l_1561.yxzz)).wyzywxzzwyzyxyzy, ((VECTOR(uint8_t, 2))(l_1562.s1d)).xyyxxyxxxyxxxyyx))).s82))).yxyx, ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(p_2052->g_1563.ywyyxzyx)).s05, ((VECTOR(int16_t, 16))(0x239FL, (safe_rshift_func_uint16_t_u_s((((1L == (((void*)0 != l_1566[0]) && (((((safe_mod_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u((((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))((&p_2052->g_1023 != &p_2052->g_341), 0xC583L, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 8))(l_1574.sc6d59165)).odd))).lo << ((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 16))(0xB483L, 0UL, ((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 4))(p_2052->g_1579.xyyx))))).wxzxxyyx, ((VECTOR(uint16_t, 4))(p_2052->g_1580.yxyx)).zxxxzwzy))), 65533UL, ((VECTOR(uint16_t, 2))(65535UL, 65532UL)), 65535UL, 0xF6D6L, 0x691CL)).s61, ((VECTOR(uint16_t, 8))(l_1581.yxyxxxyx)).s15))).xyyy - ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))((((0x894E31E63FED35E9L >= ((p_2052->g_594.s0 = ((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 8))(p_2052->g_1588.s94ae7ecf)).s55, ((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 8))(l_1589.yyyxyyyx)).s4434510640005413, ((VECTOR(uint16_t, 8))(0xB6FDL, ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 2))(l_1590.s05)), ((VECTOR(uint16_t, 16))(l_1591.xyzywyzxyxyywzxw)).sac))), ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 2))(0x08CDL, 65535UL)), ((VECTOR(uint16_t, 4))(l_1592.s1431)).hi))), (p_2052->g_735.y = (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 8))((-1L), 0x31C3L, ((safe_mul_func_int16_t_s_s(p_2052->g_124, 0x1B01L)) , 3L), 1L, p_2052->g_735.x, (-1L), 0x1E80L, 1L)).s4, p_2052->g_1270.f6))), 0UL, 0UL)).s0340552525070331))).sdd))).yyyyxxyy | ((VECTOR(uint16_t, 8))(0x53A5L))))).s1, p_2052->g_960.f3)) < l_1591.w)) < 18446744073709551613UL)) >= p_2052->g_1367.f6) & p_2052->g_69.f2), 0xAF7CL, 0xD673L, FAKE_DIVERGE(p_2052->global_1_offset, get_global_id(1), 10), 65535UL, ((VECTOR(uint16_t, 2))(0UL)), 0xB907L)).s53 + ((VECTOR(uint16_t, 2))(65531UL))))).yxyxyyxyxyxyyxxx, ((VECTOR(uint16_t, 16))(1UL))))) + ((VECTOR(uint16_t, 16))(0x0F91L))))).sf6ec))).xwwyxwwwxxxxyyww * ((VECTOR(uint16_t, 16))(65529UL))))).hi, ((VECTOR(uint16_t, 8))(0xADEEL))))).s10))), 0UL, p_2052->g_11, 0x7D76L, 1UL, 3UL, ((VECTOR(uint16_t, 2))(0xE209L)), ((VECTOR(uint16_t, 4))(0UL)), 0x743EL)) ^ ((VECTOR(uint16_t, 16))(0xF32EL))))).sd < p_2052->g_181[2][2][1]) , p_2052->g_1367.f1) | 0xC44DL), l_1591.x)) >= (*p_2052->g_123)), 0x2DL)) , (*p_2052->g_544)) <= l_1598) , (*p_2052->g_983)) || FAKE_DIVERGE(p_2052->group_0_offset, get_group_id(0), 10)))) , (void*)0) == l_1599), p_2052->g_734.x)), 0x1892L, p_2052->g_1095.s7, 1L, 0x5320L, p_2052->g_1269.f6, 8L, (-1L), (-2L), l_1591.y, ((VECTOR(int16_t, 2))(0L)), p_2052->g_940[6][7][2].f2, (-1L), 1L)).s97, ((VECTOR(int16_t, 2))(0x69B4L))))), (-8L), ((VECTOR(int16_t, 2))((-1L))), (-1L), (-1L), 0x7A1CL)).hi, ((VECTOR(int16_t, 4))(0x4546L))))), ((VECTOR(int16_t, 4))(0x741DL))))).zxyxyzyw ^ ((VECTOR(int16_t, 8))(0L))))), (int16_t)l_1552))).s74)))))).yxxyyxyy)))))).s05 | ((VECTOR(int16_t, 2))(0x0AE7L))))).lo ^ GROUP_DIVERGE(0, 1)), l_1598)) <= p_2052->g_1588.s0) | (-1L)))) >= 0UL)))
            { /* block id: 492 */
                uint16_t l_1609 = 0x9FCBL;
                for (p_2052->g_1367.f2 = 7; (p_2052->g_1367.f2 > 20); ++p_2052->g_1367.f2)
                { /* block id: 495 */
                    uint32_t l_1602 = 4294967295UL;
                    int32_t l_1608 = (-1L);
                    if (l_1602)
                        break;
                    l_1609--;
                    p_99 = &l_1604;
                }
                if (l_1609)
                    continue;
            }
            else
            { /* block id: 501 */
                uint16_t l_1612 = 65532UL;
                int32_t *l_1625 = &l_1605;
                (*l_1625) = (l_1553 == ((l_1612 < (((*l_115) &= (safe_div_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s(l_1553, 5)) <= (((+(func_100(&p_2052->g_1023, p_2052->g_1620.w, l_1624, l_1625, (*l_1625), p_2052) , (*l_1625))) >= 6L) , (*l_1625))), 7L))) != l_1598)) == (*p_2052->g_983)));
            }
            for (p_2052->g_960.f3 = 0; (p_2052->g_960.f3 >= 14); p_2052->g_960.f3 = safe_add_func_uint8_t_u_u(p_2052->g_960.f3, 9))
            { /* block id: 508 */
                int32_t *l_1634[8][10] = {{&l_1552,(void*)0,&l_1604,&l_1604,(void*)0,(void*)0,&l_1604,&l_1604,(void*)0,&l_1552},{&l_1552,(void*)0,&l_1604,&l_1604,(void*)0,(void*)0,&l_1604,&l_1604,(void*)0,&l_1552},{&l_1552,(void*)0,&l_1604,&l_1604,(void*)0,(void*)0,&l_1604,&l_1604,(void*)0,&l_1552},{&l_1552,(void*)0,&l_1604,&l_1604,(void*)0,(void*)0,&l_1604,&l_1604,(void*)0,&l_1552},{&l_1552,(void*)0,&l_1604,&l_1604,(void*)0,(void*)0,&l_1604,&l_1604,(void*)0,&l_1552},{&l_1552,(void*)0,&l_1604,&l_1604,(void*)0,(void*)0,&l_1604,&l_1604,(void*)0,&l_1552},{&l_1552,(void*)0,&l_1604,&l_1604,(void*)0,(void*)0,&l_1604,&l_1604,(void*)0,&l_1552},{&l_1552,(void*)0,&l_1604,&l_1604,(void*)0,(void*)0,&l_1604,&l_1604,(void*)0,&l_1552}};
                int i, j;
                for (p_2052->g_1366.f3 = 28; (p_2052->g_1366.f3 > (-2)); p_2052->g_1366.f3--)
                { /* block id: 511 */
                    int32_t l_1632 = (-1L);
                    int32_t *l_1635 = &l_1553;
                    int32_t *l_1636 = &p_2052->g_36;
                    l_1632 ^= ((*p_2052->g_687) != (l_1631 = l_1630));
                    return l_1636;
                }
                l_1640[3]++;
            }
            l_1644 ^= ((*l_1633) = ((VECTOR(int32_t, 16))(l_1643.xxyyxyxxxyxxxxyx)).s1);
        }
        (*p_2052->g_1505) = &l_1552;
        return l_1646;
    }
    else
    { /* block id: 523 */
        VECTOR(int32_t, 2) l_1649 = (VECTOR(int32_t, 2))(0x2D6AA680L, 0L);
        uint64_t *l_1650[3];
        uint64_t **l_1654 = &l_1650[0];
        uint64_t ***l_1653 = &l_1654;
        int8_t *l_1668 = &p_2052->g_1290;
        int64_t l_1685 = 0x2C1C5A37F8EC5EFFL;
        uint32_t l_1693[7] = {4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL};
        int32_t *l_1694[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        for (i = 0; i < 3; i++)
            l_1650[i] = (void*)0;
        (*p_2052->g_1657) = p_99;
        for (l_1532 = 21; (l_1532 != (-29)); --l_1532)
        { /* block id: 529 */
            int32_t *l_1660 = &l_1552;
            int32_t **l_1661 = &l_1646;
            uint64_t *l_1665 = &p_2052->g_61;
            int8_t *l_1669 = (void*)0;
            int64_t l_1677 = (-1L);
            VECTOR(uint32_t, 2) l_1686 = (VECTOR(uint32_t, 2))(4294967295UL, 0xFF9CE346L);
            int64_t *l_1691 = &p_2052->g_678[6].f0;
            int64_t *l_1692 = &p_2052->g_829.f0;
            int i;
            (*l_1661) = (p_99 = l_1660);
            (*l_1660) = (safe_div_func_int16_t_s_s(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(0x2AC9L, 0L)).yxxx | ((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(l_1649.y, ((*l_1668) = (((p_2052->g_1579.y , ((255UL > GROUP_DIVERGE(1, 1)) , (p_2052->g_1664 = &p_2052->g_61))) != (l_1665 = &p_2052->g_61)) ^ (!(safe_rshift_func_uint16_t_u_u((l_1668 == l_1669), 13))))), (((*l_1646) && (l_1677 = (safe_mod_func_int64_t_s_s(((((safe_mod_func_uint8_t_u_u(((void*)0 != p_2052->g_1674), l_1676[0])) & (*l_1660)) || (*l_1646)) && 0x41E91BFCL), 0x7A4C9589A11FFCB9L)))) < 0x7BL), ((VECTOR(int8_t, 4))(0x4EL)), l_1649.y, p_2052->g_940[6][7][2].f5, (-1L), 0x11L, (**l_1661), 0x21L, 0x11L, 0x08L, 0x05L)).se5e4, ((VECTOR(uint8_t, 4))(255UL))))).xwzyzwyxzxxwxyzz, (int16_t)l_1649.x, (int16_t)5L))).s0fd3))).y, p_2052->g_594.s8));
            (*p_2052->g_388) = l_1694[2];
        }
    }
    (*p_99) = ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((l_1549 >= ((VECTOR(int8_t, 2))((-1L), 0x39L)).even), (p_2052->g_558.x = 1L), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(8L, (-4L))).yyyyyyxxyxxxxxxy && ((VECTOR(int16_t, 4))(0x4898L, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_1696.s12372845)).s12 && ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 16))(0x5B7CL, (-5L), 0x3A53L, 0x6884L, ((VECTOR(int16_t, 2))(0x6C99L, 0x297DL)), 1L, 0x3FE0L, (-1L), 0x08DBL, ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 16))((((*p_2052->g_1664)--) > (p_2052->g_677.f1 != ((VECTOR(int16_t, 16))(p_2052->g_1699.yyyxxyxyyyxxxyyy)).s3)), ((VECTOR(int16_t, 2))(0x1877L, 0x673AL)).odd, (p_2052->g_678[6].f7 ^ (((safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((safe_add_func_uint8_t_u_u(l_1552, p_2052->g_106.f0)), (safe_mod_func_int64_t_s_s(((l_1607.sc = (+(safe_mod_func_int8_t_s_s(0L, l_1592.s3)))) | l_1712), l_1713)))), p_2052->g_678[6].f3)), 9)) != (*p_99)) && l_1714)), ((VECTOR(int16_t, 2))((-1L))), 0L, 9L, ((VECTOR(int16_t, 2))(0x08DDL)), ((VECTOR(int16_t, 2))(0x16DBL)), 0L, 0x243DL, ((VECTOR(int16_t, 2))(0L)), 0x6E5CL)).sa948, ((VECTOR(int16_t, 4))(1L)), ((VECTOR(int16_t, 4))(0x7321L))))), ((VECTOR(int16_t, 4))(0x03ADL)), ((VECTOR(int16_t, 4))((-5L)))))), 6L, 0x6A09L)).s87ba, ((VECTOR(int16_t, 4))(3L))))).hi))), 0x49C3L)).zwzyzyzzywxxxxwz))).even && ((VECTOR(int16_t, 8))(0x141DL))))).lo && ((VECTOR(int16_t, 4))((-1L)))))).lo, ((VECTOR(int16_t, 2))(0L))))).yyyyyyxx, ((VECTOR(int16_t, 8))(0x6F63L))))), ((VECTOR(int16_t, 8))(5L)))).se7 | ((VECTOR(int16_t, 2))(0L))))), 0x42E6L, 0x2CE4L)), ((VECTOR(int16_t, 4))((-1L))), l_1607.sd, ((VECTOR(int16_t, 2))(9L)), 7L, (-5L), 0x463DL)).s8ac2 && ((VECTOR(int16_t, 4))((-2L)))))).zxxwyzzx && ((VECTOR(int16_t, 8))(0x2F25L))))).lo || ((VECTOR(int16_t, 4))(0L))))), ((VECTOR(uint16_t, 4))(0xE57EL))))).w;
    return l_1715;
}


/* ------------------------------------------ */
/* 
 * reads : p_2052->g_123 p_2052->g_983 p_2052->g_11 p_2052->g_677.f7 p_2052->g_382 p_2052->g_1023 p_2052->g_1421 p_2052->g_1170 p_2052->g_1439 p_2052->g_544 p_2052->g_124 p_2052->g_36 p_2052->g_35 p_2052->g_1366.f6 p_2052->g_1474 p_2052->g_1269.f6 p_2052->g_1366.f1 p_2052->g_1505 p_2052->g_960.f2 p_2052->g_661 p_2052->g_653 p_2052->g_106
 * writes: p_2052->g_124 p_2052->g_1023 p_2052->g_36 p_2052->g_1269.f6 p_2052->g_1366.f1 p_2052->g_389
 */
struct S0  func_100(uint32_t * p_101, uint32_t  p_102, uint64_t  p_103, int32_t * p_104, uint32_t  p_105, struct S2 * p_2052)
{ /* block id: 444 */
    int16_t l_1384 = 5L;
    uint16_t *l_1400[9][5][5] = {{{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6}},{{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6}},{{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6}},{{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6}},{{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6}},{{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6}},{{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6}},{{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6}},{{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6},{(void*)0,&p_2052->g_1050.f0,(void*)0,(void*)0,&p_2052->g_6}}};
    uint16_t **l_1399[7] = {&l_1400[7][2][4],(void*)0,&l_1400[7][2][4],&l_1400[7][2][4],(void*)0,&l_1400[7][2][4],&l_1400[7][2][4]};
    uint64_t l_1401 = 18446744073709551615UL;
    uint16_t *l_1402 = (void*)0;
    VECTOR(int16_t, 4) l_1435 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x20C0L), 0x20C0L);
    VECTOR(int16_t, 2) l_1436 = (VECTOR(int16_t, 2))(0x20E0L, 0x4E7FL);
    VECTOR(int16_t, 16) l_1437 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int16_t, 2))(0L, 0L), (VECTOR(int16_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
    int32_t l_1442[5][3][10] = {{{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L}},{{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L}},{{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L}},{{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L}},{{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L},{0L,0L,1L,(-1L),0x7AB014F3L,(-1L),1L,0L,0L,1L}}};
    int32_t l_1466 = (-1L);
    int32_t l_1467 = 0L;
    uint8_t l_1471 = 0xF6L;
    VECTOR(int16_t, 8) l_1498 = (VECTOR(int16_t, 8))(0x2368L, (VECTOR(int16_t, 4))(0x2368L, (VECTOR(int16_t, 2))(0x2368L, 5L), 5L), 5L, 0x2368L, 5L);
    VECTOR(uint16_t, 16) l_1500 = (VECTOR(uint16_t, 16))(0x3CE2L, (VECTOR(uint16_t, 4))(0x3CE2L, (VECTOR(uint16_t, 2))(0x3CE2L, 65529UL), 65529UL), 65529UL, 0x3CE2L, 65529UL, (VECTOR(uint16_t, 2))(0x3CE2L, 65529UL), (VECTOR(uint16_t, 2))(0x3CE2L, 65529UL), 0x3CE2L, 65529UL, 0x3CE2L, 65529UL);
    int32_t *l_1517[10] = {&l_1442[3][0][5],&p_2052->g_36,(void*)0,&p_2052->g_36,&l_1442[3][0][5],&l_1442[3][0][5],&p_2052->g_36,(void*)0,&p_2052->g_36,&l_1442[3][0][5]};
    int32_t **l_1520[2][3][2] = {{{&l_1517[5],&p_2052->g_389[3][1][0]},{&l_1517[5],&p_2052->g_389[3][1][0]},{&l_1517[5],&p_2052->g_389[3][1][0]}},{{&l_1517[5],&p_2052->g_389[3][1][0]},{&l_1517[5],&p_2052->g_389[3][1][0]},{&l_1517[5],&p_2052->g_389[3][1][0]}}};
    int i, j, k;
    if (((l_1384 < (safe_div_func_int16_t_s_s(((0x029FL >= (((((((safe_sub_func_int32_t_s_s(((safe_add_func_uint8_t_u_u(((*p_2052->g_123) = l_1384), (safe_lshift_func_int8_t_s_s((!p_103), 6)))) , (p_105 == ((safe_add_func_uint32_t_u_u((*p_2052->g_983), ((VECTOR(uint32_t, 16))(0x4D7DB42FL, ((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 2))(0x426EB45BL, 0xDB93F61EL)), ((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))((1L < ((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),uint32_t,((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 8))((l_1399[3] == ((((p_103 ^ 0x44L) , l_1384) != p_103) , &l_1400[7][4][3])), ((VECTOR(uint32_t, 2))(0xD2D949EEL)), GROUP_DIVERGE(0, 1), (*p_2052->g_983), FAKE_DIVERGE(p_2052->group_0_offset, get_group_id(0), 10), 0xEAB87D12L, 4294967295UL)).s03, ((VECTOR(uint32_t, 2))(0x823F5755L))))).xyyxyyyyyyxxyyxx, (uint32_t)(*p_101), (uint32_t)(*p_101)))).s4), FAKE_DIVERGE(p_2052->local_1_offset, get_local_id(1), 10), l_1384, ((VECTOR(uint32_t, 4))(4294967290UL)), 0x6E208FF1L)).s4403527651732051 >> ((VECTOR(uint32_t, 16))(0xE6310CBDL))))), ((VECTOR(uint32_t, 16))(0xBE93CE30L))))).s15, ((VECTOR(uint32_t, 2))(0x876E851FL))))), 0x52DAF4E4L, 4294967290UL, l_1401, ((VECTOR(uint32_t, 2))(0x5B8313BAL)), ((VECTOR(uint32_t, 4))(4294967295UL)), ((VECTOR(uint32_t, 2))(0xB13C8202L)), 0x803394B1L, 7UL)).s3)) != p_2052->g_677.f7))), 1L)) , l_1402) != (void*)0) != (-2L)) > 0x2C15L) | l_1384) <= l_1401)) && l_1384), p_2052->g_382.x))) < (*p_2052->g_983)))
    { /* block id: 446 */
        VECTOR(int16_t, 4) l_1403 = (VECTOR(int16_t, 4))(0x072BL, (VECTOR(int16_t, 2))(0x072BL, 0x4F5DL), 0x4F5DL);
        int32_t l_1408 = 0x048F6BBEL;
        uint32_t *l_1409 = &p_2052->g_1023;
        VECTOR(uint16_t, 2) l_1416 = (VECTOR(uint16_t, 2))(9UL, 0x10D6L);
        VECTOR(uint16_t, 8) l_1424 = (VECTOR(uint16_t, 8))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0x977AL), 0x977AL), 0x977AL, 65526UL, 0x977AL);
        int32_t l_1429 = (-6L);
        VECTOR(uint8_t, 8) l_1434 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x18L), 0x18L), 0x18L, 1UL, 0x18L);
        VECTOR(int16_t, 8) l_1438 = (VECTOR(int16_t, 8))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 0x4296L), 0x4296L), 0x4296L, (-6L), 0x4296L);
        VECTOR(int16_t, 4) l_1440 = (VECTOR(int16_t, 4))(0x13B3L, (VECTOR(int16_t, 2))(0x13B3L, 0x255DL), 0x255DL);
        VECTOR(int16_t, 16) l_1441 = (VECTOR(int16_t, 16))(0x4E84L, (VECTOR(int16_t, 4))(0x4E84L, (VECTOR(int16_t, 2))(0x4E84L, (-2L)), (-2L)), (-2L), 0x4E84L, (-2L), (VECTOR(int16_t, 2))(0x4E84L, (-2L)), (VECTOR(int16_t, 2))(0x4E84L, (-2L)), 0x4E84L, (-2L), 0x4E84L, (-2L));
        int32_t *l_1443 = &p_2052->g_36;
        int32_t *l_1444 = &l_1429;
        VECTOR(int8_t, 8) l_1456 = (VECTOR(int8_t, 8))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), (-1L)), (-1L)), (-1L), (-6L), (-1L));
        int32_t l_1463 = 0x1C1CCE31L;
        int32_t l_1464 = 8L;
        int32_t l_1465[4] = {0L,0L,0L,0L};
        int i;
        if (((*l_1444) = ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_1403.zzzwywzz)).s53 > ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(((((safe_div_func_uint64_t_u_u((safe_add_func_uint16_t_u_u((~FAKE_DIVERGE(p_2052->global_0_offset, get_global_id(0), 10)), ((*p_101) >= ((*l_1443) = (((*l_1409)--) ^ (safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))((+((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(l_1416.yy)).yyyxyxyyyxxxyyxx + ((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(0UL, 0xAA1EL)).yyxx + ((VECTOR(uint16_t, 4))(p_2052->g_1421.wxwy))))) >> ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(l_1424.s77773343)).s41 + ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(1UL, p_103, ((VECTOR(uint16_t, 2))(9UL, 0xEA20L)), 0x2288L, 0x7587L, 65535UL, l_1384, ((safe_mod_func_int64_t_s_s((l_1429 < (safe_rshift_func_int16_t_s_s((p_105 <= (safe_div_func_uint8_t_u_u((GROUP_DIVERGE(0, 1) ^ p_2052->g_1170.sf), ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))((-((VECTOR(uint8_t, 8))(l_1434.s40762603)).s21))), (uint8_t)((l_1401 , ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 2))(0L, 0x5F31L)).xxxyxxyyyyyyyxyy, ((VECTOR(int16_t, 16))(l_1435.wyzzwyxwzyxxzxwx))))).hi, ((VECTOR(int16_t, 16))(l_1436.yxyyxyxxxxyxxxyx)).even))).s75, ((VECTOR(int16_t, 16))(l_1437.sf2b3a501e57f89f2)).s78, ((VECTOR(int16_t, 2))(l_1438.s32))))).yyxyyxxx && ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(0x5ADAL, 1L)).xyxyxxyx && ((VECTOR(int16_t, 16))(p_2052->g_1439.yyxxxxyyyyxyxyyx)).even)))))).s26 && ((VECTOR(int16_t, 16))(l_1440.zxyyxwxxywxzyyyw)).s4e))), ((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 8))(l_1441.sf6d457a8)).s30, (int16_t)((*p_2052->g_544) >= ((+((l_1442[2][0][1] ^= (0x26B2L ^ 0x3840L)) < l_1384)) , p_103))))).yyyyxxyx, (int16_t)0x5D2EL))).even, ((VECTOR(int16_t, 4))(0L))))), (-4L), 2L)).s1277202324146760 && ((VECTOR(int16_t, 16))((-2L)))))).s2) , (*p_2052->g_123))))).hi))), l_1401))), 1UL)) && 0x07551B8815D8F7BEL), ((VECTOR(uint16_t, 2))(1UL)), 65530UL, FAKE_DIVERGE(p_2052->local_2_offset, get_local_id(2), 10), ((VECTOR(uint16_t, 2))(0UL)), 0xB857L)) + ((VECTOR(uint16_t, 16))(0x70C5L))))).s8c))), 0UL, 0xFCE7L))))).xwxzwzzywwzwywyz, ((VECTOR(uint16_t, 16))(1UL))))).hi))).s6072546233174643))) ^ ((VECTOR(uint16_t, 16))(0x85A8L)))))))).sa, p_105))))))), l_1437.s4)) > p_102) ^ 9L) | l_1436.x), p_102, 6L, 0x7196L)) && ((VECTOR(int16_t, 4))((-1L)))))), ((VECTOR(int16_t, 4))(0x2BCDL))))).odd, ((VECTOR(int16_t, 2))(0x0A00L)))))))), (-3L), (-1L))).wwxyxzxzxwwzxxxz, ((VECTOR(uint16_t, 16))(65535UL))))).hi, (int32_t)(*l_1443), (int32_t)(*l_1443)))) < ((VECTOR(int32_t, 8))((-7L)))))).s5))
        { /* block id: 451 */
            VECTOR(uint16_t, 4) l_1447 = (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0xB331L), 0xB331L);
            int i;
            (*p_2052->g_35) ^= 1L;
            (*l_1444) = (safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_1447.wzxw)).z, (safe_lshift_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(l_1456.s52)).hi, p_102)), 15)), (((((7L <= (((void*)0 != &l_1429) >= (~0UL))) == (safe_lshift_func_int8_t_s_s(((((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 8))(0x79L, l_1384, ((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))((((p_105 | (-10L)) != (((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((*p_2052->g_35), (*l_1444), 8L, 0x65476D4BL)).wxyxxzwx != ((VECTOR(int32_t, 8))(1L))))).s5 ^ (*p_101))) ^ GROUP_DIVERGE(0, 1)), l_1447.y, 0x51L, 6L)).hi, (int8_t)p_105))), ((VECTOR(int8_t, 2))(0x71L)), 0x4CL, 0x14L)).s2446547070214532, ((VECTOR(int8_t, 16))(0L))))).sc40d, ((VECTOR(int8_t, 4))((-1L)))))).y <= l_1384) == FAKE_DIVERGE(p_2052->group_2_offset, get_group_id(2), 10)), p_2052->g_1366.f6))) > p_102) != GROUP_DIVERGE(2, 1)) < 1UL))), 3))));
        }
        else
        { /* block id: 454 */
            int32_t *l_1459 = &l_1408;
            int32_t *l_1460 = &l_1429;
            int32_t *l_1461 = &l_1442[2][0][1];
            int32_t *l_1462[8][8][1] = {{{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]}},{{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]}},{{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]}},{{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]}},{{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]}},{{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]}},{{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]}},{{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]},{&l_1442[3][0][1]}}};
            uint32_t l_1468 = 0x2F836906L;
            int i, j, k;
            l_1468--;
        }
        l_1471--;
    }
    else
    { /* block id: 458 */
        return p_2052->g_1474;
    }
    for (p_2052->g_1269.f6 = (-16); (p_2052->g_1269.f6 <= 39); p_2052->g_1269.f6++)
    { /* block id: 463 */
        uint32_t l_1477 = 0UL;
        VECTOR(int8_t, 8) l_1480 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x78L), 0x78L), 0x78L, 1L, 0x78L);
        VECTOR(int16_t, 2) l_1499 = (VECTOR(int16_t, 2))(0x09B2L, 0x58EFL);
        int i;
        if (l_1477)
        { /* block id: 464 */
            uint32_t l_1502[6] = {6UL,0xC79E6988L,6UL,6UL,0xC79E6988L,6UL};
            int i;
            p_104 = p_101;
            for (p_2052->g_1366.f1 = (-1); (p_2052->g_1366.f1 <= (-30)); p_2052->g_1366.f1 = safe_sub_func_int32_t_s_s(p_2052->g_1366.f1, 6))
            { /* block id: 468 */
                uint32_t l_1485 = 0UL;
                int32_t l_1503[8];
                int i;
                for (i = 0; i < 8; i++)
                    l_1503[i] = 0x4A690686L;
                (*p_2052->g_1505) = p_104;
            }
        }
        else
        { /* block id: 472 */
            int32_t *l_1506 = (void*)0;
            int32_t *l_1507 = &l_1466;
            int32_t *l_1508 = (void*)0;
            int32_t *l_1509 = &l_1442[2][0][1];
            int32_t *l_1510 = (void*)0;
            int32_t *l_1511[2];
            uint32_t l_1512 = 4294967295UL;
            int i;
            for (i = 0; i < 2; i++)
                l_1511[i] = (void*)0;
            ++l_1512;
        }
    }
    (*p_2052->g_35) |= (safe_add_func_int16_t_s_s(p_102, ((-7L) != (0L || p_2052->g_960.f2))));
    (*p_2052->g_661) = &l_1442[1][0][9];
    return (*p_2052->g_653);
}


/* ------------------------------------------ */
/* 
 * reads : p_2052->g_940 p_2052->g_544 p_2052->g_418 p_2052->g_879.f5 p_2052->g_960 p_2052->g_382 p_2052->g_983 p_2052->g_986 p_2052->g_942.f6 p_2052->g_11 p_2052->g_1023 p_2052->g_597 p_2052->g_768.f3 p_2052->g_558 p_2052->g_652 p_2052->g_653 p_2052->g_1012 p_2052->g_123 p_2052->g_124 p_2052->g_385 p_2052->g_35 p_2052->g_36 p_2052->g_690 p_2052->g_1194 p_2052->g_768.f1 p_2052->g_689 p_2052->g_106 p_2052->g_768.f7 p_2052->g_1050.f3 p_2052->g_879.f0 p_2052->g_1106 p_2052->g_677.f6 p_2052->g_1269 p_2052->g_661 p_2052->g_389 p_2052->g_677.f0 p_2052->g_735 p_2052->g_1366
 * writes: p_2052->g_942 p_2052->g_11 p_2052->g_385 p_2052->g_106.f1 p_2052->g_677.f2 p_2052->g_829.f1 p_2052->g_931.f2 p_2052->g_1023 p_2052->g_69.f5 p_2052->g_389 p_2052->g_879.f2 p_2052->g_1151 p_2052->g_879.f5 p_2052->g_691 p_2052->g_124 p_2052->g_690 p_2052->g_41.f1 p_2052->g_866 p_2052->g_829.f0 p_2052->g_677.f0 p_2052->g_1270 p_2052->g_677.f1 p_2052->g_106.f0 p_2052->g_1367
 */
uint32_t * func_107(uint32_t  p_108, int64_t  p_109, int32_t * p_110, uint32_t  p_111, struct S2 * p_2052)
{ /* block id: 308 */
    volatile struct S1 *l_941[1];
    int32_t **l_945 = &p_2052->g_389[1][8][0];
    VECTOR(uint8_t, 4) l_961 = (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 0xF0L), 0xF0L);
    int8_t *l_962 = &p_2052->g_385;
    uint16_t l_963 = 5UL;
    int32_t l_978 = 0x7D4C7682L;
    int32_t l_979 = 0x1E64FE4BL;
    VECTOR(int64_t, 4) l_997 = (VECTOR(int64_t, 4))(0x7C8D34467D35D8D5L, (VECTOR(int64_t, 2))(0x7C8D34467D35D8D5L, 0x7E7AF83C3959BF78L), 0x7E7AF83C3959BF78L);
    VECTOR(int64_t, 2) l_998 = (VECTOR(int64_t, 2))(0x0F22964C59BF2F6EL, 0x6D9A7BE259C6C6DBL);
    int32_t *l_1020 = &p_2052->g_41.f1;
    VECTOR(int32_t, 16) l_1033 = (VECTOR(int32_t, 16))(0x4C730F57L, (VECTOR(int32_t, 4))(0x4C730F57L, (VECTOR(int32_t, 2))(0x4C730F57L, (-1L)), (-1L)), (-1L), 0x4C730F57L, (-1L), (VECTOR(int32_t, 2))(0x4C730F57L, (-1L)), (VECTOR(int32_t, 2))(0x4C730F57L, (-1L)), 0x4C730F57L, (-1L), 0x4C730F57L, (-1L));
    VECTOR(int32_t, 2) l_1036 = (VECTOR(int32_t, 2))(0x18F232D0L, 5L);
    VECTOR(int32_t, 8) l_1037 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
    VECTOR(int32_t, 8) l_1040 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x65694B9BL), 0x65694B9BL), 0x65694B9BL, 0L, 0x65694B9BL);
    uint8_t **l_1053 = &p_2052->g_123;
    VECTOR(uint8_t, 16) l_1064 = (VECTOR(uint8_t, 16))(0x1CL, (VECTOR(uint8_t, 4))(0x1CL, (VECTOR(uint8_t, 2))(0x1CL, 0xBAL), 0xBAL), 0xBAL, 0x1CL, 0xBAL, (VECTOR(uint8_t, 2))(0x1CL, 0xBAL), (VECTOR(uint8_t, 2))(0x1CL, 0xBAL), 0x1CL, 0xBAL, 0x1CL, 0xBAL);
    int16_t *l_1071[1];
    uint32_t l_1083 = 0xD31B1CCBL;
    VECTOR(uint16_t, 4) l_1115 = (VECTOR(uint16_t, 4))(0x929AL, (VECTOR(uint16_t, 2))(0x929AL, 2UL), 2UL);
    VECTOR(uint16_t, 8) l_1137 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL);
    VECTOR(uint16_t, 16) l_1143 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65528UL), 65528UL), 65528UL, 65535UL, 65528UL, (VECTOR(uint16_t, 2))(65535UL, 65528UL), (VECTOR(uint16_t, 2))(65535UL, 65528UL), 65535UL, 65528UL, 65535UL, 65528UL);
    VECTOR(int8_t, 16) l_1152 = (VECTOR(int8_t, 16))(0x70L, (VECTOR(int8_t, 4))(0x70L, (VECTOR(int8_t, 2))(0x70L, 0x18L), 0x18L), 0x18L, 0x70L, 0x18L, (VECTOR(int8_t, 2))(0x70L, 0x18L), (VECTOR(int8_t, 2))(0x70L, 0x18L), 0x70L, 0x18L, 0x70L, 0x18L);
    VECTOR(int8_t, 2) l_1153 = (VECTOR(int8_t, 2))(0L, 0x75L);
    VECTOR(int8_t, 4) l_1155 = (VECTOR(int8_t, 4))(0x54L, (VECTOR(int8_t, 2))(0x54L, 1L), 1L);
    VECTOR(int8_t, 8) l_1156 = (VECTOR(int8_t, 8))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 1L), 1L), 1L, (-10L), 1L);
    VECTOR(int8_t, 2) l_1224 = (VECTOR(int8_t, 2))(1L, 0x6AL);
    VECTOR(int8_t, 8) l_1225 = (VECTOR(int8_t, 8))(0x2FL, (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, 0x32L), 0x32L), 0x32L, 0x2FL, 0x32L);
    VECTOR(int8_t, 2) l_1226 = (VECTOR(int8_t, 2))(0x63L, 0x74L);
    int32_t l_1240 = 1L;
    struct S0 **l_1247[9][6] = {{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653}};
    int64_t *l_1266 = (void*)0;
    int8_t l_1302 = 5L;
    VECTOR(uint32_t, 8) l_1334 = (VECTOR(uint32_t, 8))(0xD6365572L, (VECTOR(uint32_t, 4))(0xD6365572L, (VECTOR(uint32_t, 2))(0xD6365572L, 0x6EA8239BL), 0x6EA8239BL), 0x6EA8239BL, 0xD6365572L, 0x6EA8239BL);
    VECTOR(uint32_t, 4) l_1341 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 1UL);
    VECTOR(int32_t, 4) l_1352 = (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x480A772BL), 0x480A772BL);
    VECTOR(int32_t, 2) l_1356 = (VECTOR(int32_t, 2))(1L, 1L);
    uint32_t l_1365 = 0x2ED4033EL;
    int32_t ***l_1370 = &p_2052->g_690;
    uint32_t *l_1383[10][3][8] = {{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}},{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}},{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}},{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}},{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}},{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}},{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}},{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}},{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}},{{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0},{&l_1083,&l_1083,&l_1083,&p_2052->g_11,&p_2052->g_11,(void*)0,(void*)0,(void*)0}}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_941[i] = &p_2052->g_940[4][0][0];
    for (i = 0; i < 1; i++)
        l_1071[i] = &p_2052->g_106.f2;
lbl_1301:
    p_2052->g_942 = p_2052->g_940[6][7][2];
    l_963 = ((((*p_2052->g_544) = 4294967295UL) <= (safe_add_func_int8_t_s_s(((&p_110 != l_945) > FAKE_DIVERGE(p_2052->group_1_offset, get_group_id(1), 10)), (~((*l_962) = (safe_sub_func_uint16_t_u_u((((safe_div_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_u((safe_add_func_int64_t_s_s((safe_div_func_int32_t_s_s(p_109, p_2052->g_418.s6)), ((FAKE_DIVERGE(p_2052->local_0_offset, get_local_id(0), 10) | (safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(p_111, p_2052->g_879.f5)), 15))) , (!(p_2052->g_960 , ((4294967291UL == p_111) | 1L)))))), FAKE_DIVERGE(p_2052->group_2_offset, get_group_id(2), 10))), l_961.x)) ^ l_961.x) == p_2052->g_382.y), p_111))))))) || GROUP_DIVERGE(2, 1));
    for (p_2052->g_106.f1 = 0; (p_2052->g_106.f1 <= 45); ++p_2052->g_106.f1)
    { /* block id: 315 */
        VECTOR(uint32_t, 16) l_970 = (VECTOR(uint32_t, 16))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0x6841D327L), 0x6841D327L), 0x6841D327L, 2UL, 0x6841D327L, (VECTOR(uint32_t, 2))(2UL, 0x6841D327L), (VECTOR(uint32_t, 2))(2UL, 0x6841D327L), 2UL, 0x6841D327L, 2UL, 0x6841D327L);
        VECTOR(uint32_t, 8) l_1005 = (VECTOR(uint32_t, 8))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0x41C1C707L), 0x41C1C707L), 0x41C1C707L, 7UL, 0x41C1C707L);
        VECTOR(int32_t, 8) l_1034 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5123AF86L), 0x5123AF86L), 0x5123AF86L, (-1L), 0x5123AF86L);
        VECTOR(int32_t, 2) l_1042 = (VECTOR(int32_t, 2))(0L, (-1L));
        VECTOR(uint16_t, 2) l_1107 = (VECTOR(uint16_t, 2))(65535UL, 65535UL);
        VECTOR(uint16_t, 16) l_1120 = (VECTOR(uint16_t, 16))(0x9BC5L, (VECTOR(uint16_t, 4))(0x9BC5L, (VECTOR(uint16_t, 2))(0x9BC5L, 0x44F6L), 0x44F6L), 0x44F6L, 0x9BC5L, 0x44F6L, (VECTOR(uint16_t, 2))(0x9BC5L, 0x44F6L), (VECTOR(uint16_t, 2))(0x9BC5L, 0x44F6L), 0x9BC5L, 0x44F6L, 0x9BC5L, 0x44F6L);
        VECTOR(uint16_t, 2) l_1127 = (VECTOR(uint16_t, 2))(0xB977L, 0x01F2L);
        int8_t l_1176 = 1L;
        uint8_t **l_1177 = &p_2052->g_477;
        uint32_t *l_1188 = &p_2052->g_11;
        VECTOR(uint8_t, 2) l_1201 = (VECTOR(uint8_t, 2))(0x48L, 0x00L);
        VECTOR(uint8_t, 8) l_1202 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 252UL), 252UL), 252UL, 1UL, 252UL);
        VECTOR(uint8_t, 2) l_1207 = (VECTOR(uint8_t, 2))(0UL, 0x3EL);
        VECTOR(int8_t, 2) l_1221 = (VECTOR(int8_t, 2))(0x18L, 0x19L);
        VECTOR(int8_t, 2) l_1222 = (VECTOR(int8_t, 2))(0x43L, 0x43L);
        VECTOR(int8_t, 2) l_1223 = (VECTOR(int8_t, 2))(0L, (-1L));
        VECTOR(uint32_t, 4) l_1259 = (VECTOR(uint32_t, 4))(0xE9689B3AL, (VECTOR(uint32_t, 2))(0xE9689B3AL, 0x9EA895B7L), 0x9EA895B7L);
        int64_t *l_1265 = &p_2052->g_829.f0;
        VECTOR(uint32_t, 2) l_1342 = (VECTOR(uint32_t, 2))(0xCA2AFFD5L, 0UL);
        int32_t l_1346 = 0x6B6BAD4CL;
        VECTOR(int32_t, 8) l_1357 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 3L), 3L), 3L, (-9L), 3L);
        uint16_t l_1361 = 0x2EE6L;
        int8_t l_1362 = 0L;
        int i;
        for (p_2052->g_677.f2 = 0; (p_2052->g_677.f2 <= (-5)); --p_2052->g_677.f2)
        { /* block id: 318 */
            uint64_t l_980 = 0x327AF01BD4142A10L;
            uint16_t *l_987 = &l_963;
            int32_t l_1017 = 0x7A549E91L;
            uint32_t l_1018 = 0x9B736914L;
            int32_t *l_1019 = &p_2052->g_41.f3;
            int16_t *l_1021 = &p_2052->g_931.f2;
            uint32_t *l_1022 = &p_2052->g_1023;
            int32_t l_1024 = (-2L);
            VECTOR(uint64_t, 8) l_1038 = (VECTOR(uint64_t, 8))(3UL, (VECTOR(uint64_t, 4))(3UL, (VECTOR(uint64_t, 2))(3UL, 18446744073709551614UL), 18446744073709551614UL), 18446744073709551614UL, 3UL, 18446744073709551614UL);
            VECTOR(int32_t, 2) l_1039 = (VECTOR(int32_t, 2))(0x593C8CD9L, (-6L));
            VECTOR(int32_t, 16) l_1041 = (VECTOR(int32_t, 16))(0x6AEEA540L, (VECTOR(int32_t, 4))(0x6AEEA540L, (VECTOR(int32_t, 2))(0x6AEEA540L, 0x03A483A9L), 0x03A483A9L), 0x03A483A9L, 0x6AEEA540L, 0x03A483A9L, (VECTOR(int32_t, 2))(0x6AEEA540L, 0x03A483A9L), (VECTOR(int32_t, 2))(0x6AEEA540L, 0x03A483A9L), 0x6AEEA540L, 0x03A483A9L, 0x6AEEA540L, 0x03A483A9L);
            VECTOR(uint64_t, 8) l_1049 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0UL, 18446744073709551615UL);
            VECTOR(uint8_t, 4) l_1067 = (VECTOR(uint8_t, 4))(0xFEL, (VECTOR(uint8_t, 2))(0xFEL, 0UL), 0UL);
            int8_t *l_1070 = &p_2052->g_385;
            VECTOR(int16_t, 8) l_1096 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x3A43L), 0x3A43L), 0x3A43L, (-1L), 0x3A43L);
            int32_t *l_1193 = &p_2052->g_677.f2;
            uint32_t *l_1197[4][1] = {{&p_2052->g_931.f1},{&p_2052->g_931.f1},{&p_2052->g_931.f1},{&p_2052->g_931.f1}};
            int16_t l_1198 = (-8L);
            int32_t *l_1199[8][9][3] = {{{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979}},{{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979}},{{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979}},{{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979}},{{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979}},{{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979}},{{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979}},{{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979},{(void*)0,&l_978,&l_979}}};
            uint8_t l_1200 = 0x29L;
            int i, j, k;
            for (p_2052->g_829.f1 = (-25); (p_2052->g_829.f1 >= 1); ++p_2052->g_829.f1)
            { /* block id: 321 */
                int32_t *l_971 = (void*)0;
                int32_t *l_972 = (void*)0;
                int32_t l_973 = 0x5BDB168FL;
                int32_t *l_974 = &l_973;
                int32_t *l_975 = &l_973;
                int32_t *l_976 = &p_2052->g_36;
                int32_t *l_977[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_977[i] = (void*)0;
                if (l_970.se)
                    break;
                l_980++;
                if (l_980)
                    continue;
                return p_2052->g_983;
            }
            l_1024 &= (safe_mul_func_int16_t_s_s(((p_2052->g_986[0][2] , (((*l_987)--) < (safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_s(0L, 4)), (((safe_add_func_uint32_t_u_u(((*l_1022) ^= (((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(p_2052->g_996.yy)) < ((VECTOR(int64_t, 2))(l_997.yz))))).xxyxxyxx > ((VECTOR(int64_t, 2))(l_998.xx)).xxxyxxxx))).s6 && (((safe_rshift_func_int16_t_s_s(0x605BL, ((*l_1021) = (safe_add_func_int64_t_s_s(0x4BF93E7FB6C622C9L, ((p_2052->g_942.f6 >= (safe_div_func_int16_t_s_s((l_970.s7 < ((VECTOR(uint32_t, 2))(l_1005.s76)).even), ((VECTOR(int16_t, 8))(0x61C1L, (((p_111 , ((safe_mod_func_int64_t_s_s((safe_div_func_uint64_t_u_u(((safe_rshift_func_int8_t_s_u(((!(((VECTOR(uint16_t, 16))((p_2052->g_746.sa = ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(p_2052->g_1012.yyxxyxxyxyyxxxxy)).s433a & ((VECTOR(uint16_t, 8))(0xE620L, p_2052->g_228.s3, 65530UL, (safe_mul_func_uint8_t_u_u(((safe_add_func_uint32_t_u_u(l_1017, p_109)) < l_1017), 0x6DL)), 0x2D3CL, 0x9908L, 0UL, 0x1232L)).even))).x), ((VECTOR(uint16_t, 2))(65535UL)), ((VECTOR(uint16_t, 8))(0x08EAL)), 0x135DL, 9UL, 65528UL, 0xDFB9L, 0x5F08L)).s9 != 0x20B7L)) , l_1005.s2), 1)) , l_1018), 0x47C0B06D0436065AL)), p_111)) , p_109)) , l_1019) == l_1020), 0x58DEL, ((VECTOR(int16_t, 4))(0x62BDL)), 0x74C7L)).s1))) & 7UL)))))) != (*p_2052->g_544)) ^ p_111))), (*p_2052->g_983))) == 6L) | FAKE_DIVERGE(p_2052->local_1_offset, get_local_id(1), 10)))))) || 0x02L), 0UL));
            for (p_2052->g_69.f5 = 0; (p_2052->g_69.f5 != 45); p_2052->g_69.f5 = safe_add_func_int64_t_s_s(p_2052->g_69.f5, 3))
            { /* block id: 334 */
                VECTOR(int32_t, 16) l_1043 = (VECTOR(int32_t, 16))(0x0BFDDAF2L, (VECTOR(int32_t, 4))(0x0BFDDAF2L, (VECTOR(int32_t, 2))(0x0BFDDAF2L, 0x2CB23B6BL), 0x2CB23B6BL), 0x2CB23B6BL, 0x0BFDDAF2L, 0x2CB23B6BL, (VECTOR(int32_t, 2))(0x0BFDDAF2L, 0x2CB23B6BL), (VECTOR(int32_t, 2))(0x0BFDDAF2L, 0x2CB23B6BL), 0x0BFDDAF2L, 0x2CB23B6BL, 0x0BFDDAF2L, 0x2CB23B6BL);
                int8_t *l_1054 = &p_2052->g_385;
                int64_t l_1055 = 5L;
                VECTOR(int32_t, 2) l_1094 = (VECTOR(int32_t, 2))(0x42698A76L, (-1L));
                VECTOR(int8_t, 4) l_1154 = (VECTOR(int8_t, 4))(0x14L, (VECTOR(int8_t, 2))(0x14L, 0x6AL), 0x6AL);
                int64_t l_1178[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_1178[i] = 1L;
                l_1055 ^= (l_1041.s9 = (5UL & (((!l_1005.s5) || (safe_rshift_func_uint8_t_u_s((safe_mod_func_uint16_t_u_u(((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(l_1033.s4c6b5233b5099034)).s73, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_1034.s7714572450761135)).s59, ((VECTOR(int32_t, 4))(p_2052->g_1035.yyyy)).lo, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(l_1036.xyxxyyyx)) | ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(l_1037.s43)), (int32_t)(((VECTOR(uint64_t, 4))(l_1038.s3202)).w , (+((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_1039.yxyx)), 1L, 0x7648A236L, 0x5236E39DL, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_1040.s51)).yxxx || ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_1041.s6811)).wyyxyywy && ((VECTOR(int32_t, 4))(l_1042.xxxy)).wxyzyywz))).hi && ((VECTOR(int32_t, 16))(l_1043.sa34a23b8d33576c9)).scfc9))).w, 2L, ((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 4))(p_2052->g_1044.wzyx)).zwyzwxzw, (int32_t)p_109))).s44 && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(0x47965ED4L, (-6L), (((safe_lshift_func_uint8_t_u_s((((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 2))(l_1049.s42)).xyxxxxxyxxyxyyyx, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x43040EDFD5BFB22EL, 0xB9338E0DD39AB0E1L)), 18446744073709551614UL, 18446744073709551613UL)).ywxxzxxzwxxwzwyx))).s5, (p_2052->g_1050 , (l_1034.s0 |= (((safe_sub_func_int64_t_s_s((p_108 >= (func_27(l_970.s3, p_2052) , (4294967290UL == ((void*)0 == l_1053)))), p_111)) , l_1054) != l_1054))))) <= l_970.sd) < 4294967289UL), 6)) , 0UL) || 0x15L), p_108, 0x3DD25B5FL, 0x29877F99L, ((VECTOR(int32_t, 4))((-7L))), ((VECTOR(int32_t, 2))(0x64ECDD14L)), 0x40ECE9E9L, 5L, 1L, 2L)).sf, ((VECTOR(int32_t, 2))(3L)), l_970.s8, 0L, 8L, ((VECTOR(int32_t, 8))(0x11DEC8C5L)), 0L, 0L)).s31 && ((VECTOR(int32_t, 2))(1L)))))))).yyxy))), 3L, (-1L))).even))), ((VECTOR(int32_t, 4))(0L)), (-1L))), ((VECTOR(int32_t, 16))(0x658ADC64L))))).s8d52 && ((VECTOR(int32_t, 4))(0x7A758B37L))))).xwxzzyyx, ((VECTOR(int32_t, 8))(0x18C41546L))))).s5))))), 0x6DFAE50FL, 0x69583B1DL)).wwyyxwxx))).s43, ((VECTOR(int32_t, 2))(0x1FB0546DL)))))))).yyyyyyyxyyxxxyyy && ((VECTOR(int32_t, 16))(0x4CD3158BL))))).s15 ^ ((VECTOR(int32_t, 2))((-4L))))))))).xyxxxxxx, ((VECTOR(int32_t, 8))(0L))))), ((VECTOR(int32_t, 8))(9L))))).s5, l_1043.s9)) , l_1043.s8), p_2052->g_597.s4)), 7))) != p_108)));
                if ((safe_rshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(7UL, ((p_109 == ((VECTOR(uint16_t, 4))(0xB2A2L, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(0x6EL, 4UL)).xyxxyyyy + ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 4))(l_1064.sf69f)).even, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_1067.yw)), 0UL, 0x12L)).zyzzwyxwxxxzwywz + ((VECTOR(uint8_t, 2))(255UL, 0xD0L)).yyxyyyxyyxyyyxxy))).s9b))).yyyyxyxy))), ((VECTOR(uint8_t, 4))(0x92L, (safe_div_func_uint16_t_u_u(((((l_1019 != p_110) , l_1070) != (void*)0) & (&p_2052->g_349 != l_1071[0])), (safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u(((((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(0x1FL, (-5L))).xxyxxyyxxxxxxyyy && ((VECTOR(int8_t, 4))(p_2052->g_1080.s2732)).xyyywzzwyxywxxxx))).s093c, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(0x5AL, ((*l_962) = ((+0x3AF509730B6F29E5L) && 0x56FCAA35CD977AD2L)), 1L, 0x1AL)).hi && ((VECTOR(int8_t, 2))((-1L)))))).xyyx | ((VECTOR(int8_t, 4))(0x0FL))))).even, ((VECTOR(int8_t, 2))(0x58L)), ((VECTOR(int8_t, 2))(0x39L))))).yyxxyyyy ^ ((VECTOR(int8_t, 8))(0x5DL))))).hi))).odd, ((VECTOR(int8_t, 2))(0x79L))))).odd <= FAKE_DIVERGE(p_2052->group_1_offset, get_group_id(1), 10)) & p_108), 0x09D0034FD55ADE12L)), (*p_2052->g_544))), (-1L))), 0x67L)))), 0x33L, 1UL)).xxzxxzwz))), ((VECTOR(uint16_t, 8))(65533UL))))).s3511520552741477, ((VECTOR(uint16_t, 16))(0x17DEL))))).s9e))).xxyxyyxxyxxyxyxy, ((VECTOR(uint16_t, 16))(65528UL))))).sb2 + ((VECTOR(uint16_t, 2))(0x9D62L))))), 0xB298L)).z) , p_111))), p_2052->g_768.f3)))
                { /* block id: 339 */
                    int32_t *l_1081 = (void*)0;
                    int32_t *l_1082 = &l_978;
                    ++l_1083;
                    p_110 = ((*l_945) = p_110);
                }
                else
                { /* block id: 343 */
                    VECTOR(uint16_t, 2) l_1119 = (VECTOR(uint16_t, 2))(65532UL, 1UL);
                    uint32_t l_1171[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1171[i] = 0UL;
                    for (p_2052->g_879.f2 = 0; (p_2052->g_879.f2 != 18); p_2052->g_879.f2++)
                    { /* block id: 346 */
                        VECTOR(int8_t, 2) l_1092 = (VECTOR(int8_t, 2))(0x3EL, 0x49L);
                        uint16_t *l_1110 = (void*)0;
                        VECTOR(uint16_t, 16) l_1116 = (VECTOR(uint16_t, 16))(0x9C8DL, (VECTOR(uint16_t, 4))(0x9C8DL, (VECTOR(uint16_t, 2))(0x9C8DL, 0xCAF4L), 0xCAF4L), 0xCAF4L, 0x9C8DL, 0xCAF4L, (VECTOR(uint16_t, 2))(0x9C8DL, 0xCAF4L), (VECTOR(uint16_t, 2))(0x9C8DL, 0xCAF4L), 0x9C8DL, 0xCAF4L, 0x9C8DL, 0xCAF4L);
                        VECTOR(uint16_t, 8) l_1132 = (VECTOR(uint16_t, 8))(2UL, (VECTOR(uint16_t, 4))(2UL, (VECTOR(uint16_t, 2))(2UL, 0x98ABL), 0x98ABL), 0x98ABL, 2UL, 0x98ABL);
                        int32_t l_1157 = 8L;
                        int8_t *l_1179 = (void*)0;
                        int8_t *l_1180 = (void*)0;
                        int8_t *l_1181[10][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                        int32_t *l_1182 = &l_978;
                        int i, j, k;
                        l_1034.s7 |= ((((((safe_mod_func_int8_t_s_s(((*l_1054) = ((VECTOR(int8_t, 8))(l_1092.xxxxyyyx)).s4), 0x3FL)) ^ ((((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(0x3BD07DDDL, ((VECTOR(int32_t, 2))(0x4AB3E305L, 0x1A26EE33L)), 0x68353ECDL)).even != ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_2052->g_1093.wz)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_1094.yy)), 0x1B46DE1DL, 0x4AC4CCB0L)), 0x7FFBA33BL, 0x0820D4D4L)).s64))).xxyxyxyx, ((VECTOR(int32_t, 2))(p_2052->g_1095.s17)).xyyyxxxx, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(l_1096.s53666174)), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),uint16_t,((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(p_2052->g_1103.xzyx)) + ((VECTOR(uint16_t, 2))(65526UL, 0xDD02L)).yxxx))).wwwwxxyyzxzyzyzz, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(p_2052->g_1106.sa6510fd555c974ba)).s6707 + ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_1107.yxyxyxyx)), 0x41D5L, (p_2052->g_734.y &= ((*l_987) = (p_111 || (safe_div_func_uint8_t_u_u(((*p_2052->g_123) = FAKE_DIVERGE(p_2052->local_1_offset, get_local_id(1), 10)), 252UL))))), 65532UL, 65535UL, ((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1115.zx)), 65530UL, 0xD3C7L)).lo + ((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 16))(0x3677L, 65535UL, 0xD0F8L, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1116.sb5)), 65535UL, 0x0851L)), ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(l_1119.yyxy)).zzxxwwyw + ((VECTOR(uint16_t, 4))(l_1120.s8877)).zxwzwxwy))), 0x055BL)), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(65530UL, 0xA077L)) + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(uint16_t, 2))(9UL, 1UL)).xxxx, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(l_1127.yxyy)).odd + ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(p_2052->g_1130.s32445774)).lo, ((VECTOR(uint16_t, 2))(0xCC7AL, 0xCCB5L)).yxxx))).hi, ((VECTOR(uint16_t, 2))(0x7D42L, 65535UL)), ((VECTOR(uint16_t, 2))(0x33F6L, 0xE177L))))).yyxyxxyy + ((VECTOR(uint16_t, 2))(p_2052->g_1131.zx)).yyyyyyxy))))))))).s47, ((VECTOR(uint16_t, 16))(l_1132.s6557312324436465)).sb4)))))).xyxx))).odd + ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(65535UL, 0UL)).xyxx << ((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(l_1137.s15045175)).s7341061225012227 + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(1UL, 0UL)) + ((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 2))(3UL, 0x5743L)).xxyx, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x1435L, 0xE895L)), 2UL, 1UL))))).lo))).yxyyyyyxyxxxxxyy))), ((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 8))(65535UL, ((VECTOR(uint16_t, 4))(p_2052->g_1140.xyxx)), ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(l_1143.sbf39848f)).s70 + ((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 8))(l_1119.y, ((VECTOR(uint8_t, 4))(p_2052->g_1146.xyyx)), 0xC9L, 0xCBL, 0UL)), ((VECTOR(uint8_t, 2))(9UL, 0x03L)).yyxxyyxy))) + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(0xD8L, 255UL, ((VECTOR(uint8_t, 4))(p_2052->g_1147.xxyy)), 251UL, 0x56L)).s46, ((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 4))(p_2052->g_1150.yyyx)).lo, ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(p_2052->g_1151.s4e86bc1d)).s1616712556353772 && ((VECTOR(int8_t, 2))(l_1152.s69)).xxxyyxyxyxyyxxxx))).s0, (-5L), 0x76L, p_2052->g_829.f0, ((VECTOR(int8_t, 4))(l_1153.xyyy)), ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 2))(0x5EL, 0x15L)).yyxxxyxy, ((VECTOR(int8_t, 4))(0L, 0x5FL, (-7L), (-1L))).wwzyywyw))).s2164352575314357, ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((p_2052->g_677.f5 > 1L), 0L, 6L, (-1L))), ((VECTOR(int8_t, 2))(l_1154.ww)), 8L, 0x39L)).s2053274012330541 == ((VECTOR(int8_t, 2))((-1L), 0x10L)).yyxyyxyyyxyxxyyx))), ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(l_1155.zzyyywyz)) && ((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(l_1156.s17351720)).s0505664270001477 < ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))((-1L), 1L)).yyyyxxxxyxyxyyyy && ((VECTOR(int8_t, 8))(p_2052->g_193.s0, (p_2052->g_1151.s3 = p_2052->g_228.s2), 0x30L, p_108, 0L, ((VECTOR(int8_t, 2))(0x53L)), 0x4DL)).s4217411016572171))).sf9 && ((VECTOR(int8_t, 2))(1L))))), 0x75L, 0x50L)).yzywzyxyxzyxxxwy))).lo == ((VECTOR(int8_t, 8))(1L))))).s61, ((VECTOR(int8_t, 2))(5L))))).yxxxyxyxxxyxyxyx, ((VECTOR(int8_t, 16))(0x3BL))))).hi))).s0357005764442054, ((VECTOR(int8_t, 16))((-8L))))))))).s9d04 && ((VECTOR(int8_t, 4))(0x4BL))))).x, (-1L), ((VECTOR(int8_t, 4))(0x71L)), 0x56L, (-1L))).s5a, ((VECTOR(int8_t, 2))(0x2DL)))))))).even, 0x1AL, ((VECTOR(uint8_t, 4))(1UL)), 255UL, 0x75L)).odd, (uint8_t)l_1096.s0, (uint8_t)l_1157))).yxxzxxxyzyxzzzxz * ((VECTOR(uint8_t, 16))(255UL))))), ((VECTOR(uint8_t, 16))(0x6CL))))), ((VECTOR(uint8_t, 16))(0x47L)), ((VECTOR(uint8_t, 16))(0x9AL))))).s4c))).yxxyxxxyxyxxyyyy | ((VECTOR(uint8_t, 16))(0UL))))).odd))), ((VECTOR(uint8_t, 8))(0x5DL))))).s47))), 0x8F1DL)), ((VECTOR(uint16_t, 8))(0x3B2DL)), ((VECTOR(uint16_t, 8))(0UL))))).s1203145575122403))).s1ffa)))))).hi, (uint16_t)p_2052->g_558.x))), 0x90ABL, 0xFF3DL)).even, ((VECTOR(uint16_t, 2))(0xBF6EL))))))))))), 0UL, ((VECTOR(uint16_t, 4))(0xB6FCL)), 0UL)).odd & ((VECTOR(uint16_t, 4))(65527UL))))).wxxxxwyxyyyyyxwy, ((VECTOR(uint16_t, 16))(0x307AL))))).s4940))).even))).yyxyyxxxxyxxxxxx + ((VECTOR(uint16_t, 16))(1UL))))).odd, ((VECTOR(uint16_t, 8))(1UL))))).s1, ((VECTOR(uint16_t, 2))(0xA2EDL)), 0x78F9L)).s669f))).xwwyxxywzwzwxyzx))).even, ((VECTOR(uint16_t, 8))(0xB0CFL))))).odd, ((VECTOR(uint16_t, 4))(65527UL)), ((VECTOR(uint16_t, 4))(0x4B17L))))).zxxwxwwz, ((VECTOR(uint16_t, 8))(3UL))))) + ((VECTOR(uint16_t, 8))(65532UL))))).hi, (uint16_t)p_111, (uint16_t)l_1092.x))) + ((VECTOR(uint16_t, 4))(8UL))))).xxyzxxxz))).s6211707773505050 && ((VECTOR(int32_t, 16))(0L))))).odd))), 0x1C59589EL, ((VECTOR(int32_t, 4))(0L)), 1L, 9L, 0x7529CB0BL)).s474f))).y >= l_1039.x) || 1UL)) & 0x0FL) > p_108) , p_2052->g_558.y) ^ p_109);
                        l_1094.x = (safe_rshift_func_int8_t_s_u(l_970.s9, (safe_mul_func_int16_t_s_s(((p_2052->g_1151.sd = ((*l_962) |= (safe_mod_func_int8_t_s_s(((*p_2052->g_652) != ((p_2052->g_1012.x , l_1119.y) , p_2052->g_653)), (safe_lshift_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_u((((VECTOR(uint32_t, 16))(p_2052->g_1170.s7371b00952a0eec6)).s1 ^ (((((((l_1171[0] >= 0x2F36L) , (safe_rshift_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_2052->local_1_offset, get_local_id(1), 10), (p_109 , ((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 4))((l_1176 = l_1171[0]), 0xC7E3L, 0xD6BAL, 0xB1C3L)).xxzzzyxy, ((VECTOR(uint16_t, 8))(6UL))))).hi))).x))) == p_109), l_980))) | p_108) , l_1177) != (void*)0) , l_987) != (void*)0)), p_109)) , p_108) <= (*p_2052->g_123)), 14)), l_1178[5])))))) > p_111), 0x589FL))));
                        (*l_1182) ^= (*p_2052->g_35);
                    }
                    for (p_2052->g_879.f5 = 0; (p_2052->g_879.f5 > 13); p_2052->g_879.f5++)
                    { /* block id: 361 */
                        int32_t *l_1186 = (void*)0;
                        int32_t l_1187 = 0x5C950A83L;
                        l_1187 = (~((VECTOR(int32_t, 2))(p_2052->g_1185.s73)).even);
                        return &p_2052->g_11;
                    }
                    return l_1188;
                }
            }
            l_1200 |= (safe_mod_func_uint8_t_u_u(((((safe_mul_func_uint16_t_u_u((((*p_2052->g_690) = (void*)0) == l_1193), 65529UL)) >= ((((((p_2052->g_1194 , p_111) , 0x7F87L) <= (p_2052->g_768.f1 , ((((l_1039.y = (!(0x289419F6L != ((safe_div_func_uint32_t_u_u((((*p_2052->g_123) = 0xE9L) || l_1038.s4), l_1042.y)) , 0x7707E8FAL)))) , l_970.s7) | l_1127.y) == (-1L)))) != l_1198) ^ GROUP_DIVERGE(2, 1)) || 0L)) , 0x187B10AA3F1D1CD7L) , GROUP_DIVERGE(2, 1)), 253UL));
        }
        if ((l_1005.s3 <= (((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 16))(l_1201.xxyyxxyyyyyxyyyx)).sd2, ((VECTOR(uint8_t, 4))(l_1202.s5455)).hi, ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(l_1207.yxxxyxyyxyyxyxxx)).s15 + ((VECTOR(uint8_t, 4))((~((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(0x89L, 250UL)).xyxxyxyyxxxxyxyy + ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(p_2052->g_1220.xywxxywz)).hi | ((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 8))(l_1221.yyyyxyxy)).s22, ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 16))(l_1222.xxyyyxyyxyyyyxyx)).odd))).s13))).yxxyyyxy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(l_1223.xxxyyyyy)) && ((VECTOR(int8_t, 16))((-6L), 0x75L, p_2052->g_634.z, ((*l_962) |= p_109), 1L, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(l_1224.xxyxxxyx)).hi && ((VECTOR(int8_t, 4))(p_108, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(l_1225.s36545340)).s03 | ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 2))(l_1226.xy)).yyyxxxxxyyxxyxxx, (int8_t)((safe_unary_minus_func_int32_t_s(((VECTOR(int32_t, 8))(l_1005.s6, 0L, 0L, ((((safe_add_func_int32_t_s_s((safe_add_func_int64_t_s_s(((void*)0 != &p_2052->g_389[9][6][0]), 0x66BCA25A03D20AD5L)), ((safe_lshift_func_int16_t_s_s((safe_div_func_int16_t_s_s((p_2052->g_408.x = (safe_lshift_func_uint16_t_u_s(((safe_mul_func_int8_t_s_s((l_1042.x = (((*p_2052->g_544) &= 0x0BE1BD7EL) && l_1221.y)), (*p_2052->g_123))) | l_1240), p_2052->g_1093.y))), p_111)), p_2052->g_634.x)) , l_1201.y))) > p_2052->g_1050.f0) , (*l_1053)) != (*l_1053)), (-2L), 1L, 0L, (-1L))).s0)) , 0x1EL), (int8_t)l_1120.s3))).lo))).s7415053455314545, ((VECTOR(int8_t, 16))(1L)), ((VECTOR(int8_t, 16))((-9L)))))).sffa7 ^ ((VECTOR(int8_t, 4))(1L))))).odd))), 0x18L))))), l_1042.x, ((VECTOR(int8_t, 2))(0x46L)), 0x37L, ((VECTOR(int8_t, 2))(0x1CL)), 0x0DL)).even))), ((VECTOR(int8_t, 4))(0x36L)), ((VECTOR(int8_t, 4))(0L)))).even))), ((VECTOR(uint8_t, 8))(0x1BL))))).hi))).even, ((VECTOR(uint8_t, 2))(0x73L))))).yxxxyxyyxyxyxyxy, ((VECTOR(uint8_t, 16))(1UL))))).s19, ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(0xD4L))))).yyxx + ((VECTOR(uint8_t, 4))(0x60L))))).even, ((VECTOR(uint8_t, 2))(9UL))))).xxxxyxyyxxxyxyxy))).s6199 + ((VECTOR(uint8_t, 4))(0UL))))).ywxwzxywxxxwzwwy - ((VECTOR(uint8_t, 16))(255UL))))) + ((VECTOR(uint8_t, 16))(5UL))))).sd9, ((VECTOR(uint8_t, 2))(0xFDL))))).xyxy + ((VECTOR(uint8_t, 4))(0UL))))), ((VECTOR(uint8_t, 4))(0x7CL))))), (uint8_t)0x03L))).ywwwxzzx))).odd))).even))) + ((VECTOR(uint8_t, 2))(0UL))))), 0x41L, 0x43L, 0xA3L, 0x74L, 0UL, 0x63L)).s56, ((VECTOR(uint8_t, 2))(0xDEL)))))))).xxyy, ((VECTOR(uint8_t, 4))(247UL))))).y || p_108)))
        { /* block id: 377 */
            (*p_2052->g_689) = (GROUP_DIVERGE(0, 1) , &l_1020);
            return &p_2052->g_11;
        }
        else
        { /* block id: 380 */
            int32_t *l_1241[9] = {&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36,&p_2052->g_36};
            uint8_t l_1267 = 253UL;
            int64_t l_1282 = 0x5BFDDEDE9AF7FAD1L;
            uint32_t l_1294 = 0x75B356E4L;
            uint32_t l_1304[9][7][1] = {{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}};
            int32_t **l_1311 = &p_2052->g_691;
            VECTOR(uint16_t, 8) l_1317 = (VECTOR(uint16_t, 8))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0x7DE0L), 0x7DE0L), 0x7DE0L, 65531UL, 0x7DE0L);
            VECTOR(uint32_t, 2) l_1330 = (VECTOR(uint32_t, 2))(0UL, 0UL);
            uint32_t l_1381 = 4294967286UL;
            uint64_t l_1382 = 1UL;
            int i, j, k;
            (*l_945) = l_1188;
            if ((l_1037.s1 = ((void*)0 != &l_1177)))
            { /* block id: 383 */
                VECTOR(uint64_t, 4) l_1246 = (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 0xEAF5AE9213B2E126L), 0xEAF5AE9213B2E126L);
                int32_t l_1248 = (-1L);
                int64_t *l_1268 = &p_2052->g_677.f0;
                int32_t l_1271 = 0x62E4AD23L;
                int16_t l_1273 = 0x46FDL;
                int8_t l_1280 = 3L;
                int32_t l_1285 = 0x46C9FF9CL;
                int32_t l_1286[4];
                VECTOR(uint64_t, 16) l_1318 = (VECTOR(uint64_t, 16))(0xBE3B89F6603F57F7L, (VECTOR(uint64_t, 4))(0xBE3B89F6603F57F7L, (VECTOR(uint64_t, 2))(0xBE3B89F6603F57F7L, 1UL), 1UL), 1UL, 0xBE3B89F6603F57F7L, 1UL, (VECTOR(uint64_t, 2))(0xBE3B89F6603F57F7L, 1UL), (VECTOR(uint64_t, 2))(0xBE3B89F6603F57F7L, 1UL), 0xBE3B89F6603F57F7L, 1UL, 0xBE3B89F6603F57F7L, 1UL);
                int i;
                for (i = 0; i < 4; i++)
                    l_1286[i] = 0x506BB876L;
                for (p_2052->g_41.f1 = 0; (p_2052->g_41.f1 >= (-26)); p_2052->g_41.f1 = safe_sub_func_uint64_t_u_u(p_2052->g_41.f1, 1))
                { /* block id: 386 */
                    struct S0 **l_1245[6][9][4] = {{{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653}},{{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653}},{{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653}},{{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653}},{{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653}},{{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653},{&p_2052->g_653,&p_2052->g_653,&p_2052->g_653,&p_2052->g_653}}};
                    struct S0 ***l_1244 = &l_1245[2][7][2];
                    int i, j, k;
                    l_1248 |= (((*l_1244) = &p_2052->g_653) != (((VECTOR(uint64_t, 2))((~((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_1246.yx)), 18446744073709551615UL, 1UL)).hi))).odd , l_1247[2][4]));
                }
                if (((((safe_mod_func_uint16_t_u_u(65534UL, ((*p_2052->g_653) , (((--(*p_2052->g_983)) | (((safe_lshift_func_int16_t_s_u((((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(l_1259.ywyzxzzxzzxwzyyz)).even << ((VECTOR(uint32_t, 8))(32))))).s57, ((VECTOR(uint32_t, 4))(p_2052->g_1260.xxyw)).even))).hi <= ((((FAKE_DIVERGE(p_2052->group_2_offset, get_group_id(2), 10) | (safe_sub_func_uint64_t_u_u((~p_2052->g_768.f7), (p_2052->g_866.y = 8L)))) , (l_979 = 1L)) != (-1L)) , ((((*l_1268) = ((*l_1265) = (safe_add_func_int32_t_s_s((l_1265 == l_1266), (l_1267 = (p_2052->g_1050.f3 && p_109)))))) == 1UL) | 0x38FE30E85E6EB01FL))), FAKE_DIVERGE(p_2052->group_1_offset, get_group_id(1), 10))) | (-1L)) == p_111)) , p_2052->g_879.f0)))) && p_2052->g_1106.s6) && 0x4E347C9D49EA811CL) <= p_2052->g_677.f6))
                { /* block id: 396 */
                    int32_t l_1274 = 5L;
                    int32_t l_1278 = 0x5AC72A95L;
                    int32_t l_1279 = (-1L);
                    int32_t l_1281 = 0L;
                    int32_t l_1283 = 0x2CC2E9BAL;
                    int32_t l_1292 = 0x011FED41L;
                    int32_t l_1293 = 0x4B5CA475L;
                    VECTOR(int8_t, 8) l_1299 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
                    int64_t l_1303 = 0x71F98F87809E7750L;
                    int i;
                    if (p_109)
                    { /* block id: 397 */
                        int16_t l_1272 = 0x37EDL;
                        int32_t l_1275 = 0x757059B7L;
                        int32_t l_1276 = (-2L);
                        int32_t l_1277 = (-1L);
                        int32_t l_1284 = 1L;
                        int32_t l_1287 = 0x22F87D76L;
                        int32_t l_1288 = (-1L);
                        int32_t l_1289 = 0x2D70D7E0L;
                        int32_t l_1291[6] = {0x2BA33D25L,0x7BF868A6L,0x2BA33D25L,0x2BA33D25L,0x7BF868A6L,0x2BA33D25L};
                        int i;
                        p_2052->g_1270 = p_2052->g_1269;
                        l_1294++;
                    }
                    else
                    { /* block id: 400 */
                        int32_t l_1300 = 4L;
                        l_1300 ^= (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_1299.s43216335)).s2, 0));
                        if (p_2052->g_879.f5)
                            goto lbl_1301;
                        (*l_945) = (*p_2052->g_661);
                        (*l_945) = p_110;
                    }
                    --l_1304[8][1][0];
                }
                else
                { /* block id: 407 */
                    int32_t **l_1312 = &l_1020;
                    int16_t *l_1319 = &p_2052->g_106.f2;
                    for (p_2052->g_677.f1 = 1; (p_2052->g_677.f1 != 11); p_2052->g_677.f1++)
                    { /* block id: 410 */
                        return &p_2052->g_11;
                    }
                    l_1042.y = l_1286[0];
                    for (p_2052->g_106.f0 = 15; (p_2052->g_106.f0 <= 9); --p_2052->g_106.f0)
                    { /* block id: 416 */
                        int32_t ***l_1313 = (void*)0;
                        int32_t ***l_1314 = &l_1312;
                        int16_t **l_1320 = &l_1071[0];
                        VECTOR(uint32_t, 4) l_1329 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967292UL), 4294967292UL);
                        int16_t l_1345 = 0x28F3L;
                        int i;
                        l_1034.s5 ^= 0x1DC498D9L;
                        l_1346 = (l_1042.y |= ((l_1311 == ((*l_1314) = ((*p_2052->g_689) = l_1312))) == ((safe_add_func_int64_t_s_s((((VECTOR(uint16_t, 4))(l_1317.s3654)).w != ((VECTOR(uint16_t, 2))(0UL, 1UL)).lo), ((((((VECTOR(uint64_t, 4))(l_1318.s5d4c)).x , (void*)0) == ((*l_1320) = l_1319)) > p_109) < (((*p_2052->g_544) > (safe_sub_func_int64_t_s_s(((*l_1268) &= (l_1202.s7 || (((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 2))(0x1164C053L, 0UL)).yyxyxyyyyxyyyyyx, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 8))(0UL, 0UL, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(l_1329.yxxz)).xwywwxxy + ((VECTOR(uint32_t, 16))(4294967295UL, ((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 4))(l_1330.xyxx)).hi, ((VECTOR(uint32_t, 4))(p_2052->g_1331.s5821)).lo))), 1UL, ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 2))(l_1334.s05)).yxyyxyxyyyyyyxyx, ((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(l_1341.xz)).yxyy + ((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(uint32_t, 4))(l_1342.xyxx)).zzyzwzwzzxwxyywy, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((safe_sub_func_uint16_t_u_u((l_1345 , p_2052->g_713.y), l_1329.y)), 4294967295UL, ((VECTOR(uint32_t, 2))(4294967291UL)), 4294967293UL, p_108, 4294967293UL, 0x255BC88BL)).s5, (*p_2052->g_983), 7UL, 7UL, p_108, 4294967294UL, 0xDA42E530L, 5UL, 0x59472EEEL, ((VECTOR(uint32_t, 2))(0UL)), 0UL, (*p_2052->g_983), ((VECTOR(uint32_t, 2))(0xC18EE2F8L)), 0x35D88186L))))).odd, ((VECTOR(uint32_t, 8))(0UL)), ((VECTOR(uint32_t, 8))(0xB1143B6CL))))).lo))).odd + ((VECTOR(uint32_t, 2))(4294967295UL))))).yxyy + ((VECTOR(uint32_t, 4))(1UL))))), ((VECTOR(uint32_t, 4))(3UL)), ((VECTOR(uint32_t, 4))(1UL))))).zzyzwzxyzwywzxxy))).odd * ((VECTOR(uint32_t, 8))(0x81976DA3L))))), ((VECTOR(uint32_t, 2))(0x8C5CD345L)), 1UL, 0x0CA69BBFL)).hi))).s30 + ((VECTOR(uint32_t, 2))(0x086683B4L))))) + ((VECTOR(uint32_t, 2))(0x22F31210L))))), ((VECTOR(uint32_t, 2))(4294967287UL)), 0xFEE70CE2L, 0x6DD5C92EL)).s4765060311544400))).s8371 ^ ((VECTOR(uint32_t, 4))(4294967287UL))))).xyzwzyzzxxyzwwxy))).sa , l_1346))), p_2052->g_735.x))) > 0UL)))) < p_111)));
                        (*l_945) = (*p_2052->g_661);
                    }
                }
                l_1346 |= (((*p_2052->g_544) = (safe_mul_func_uint8_t_u_u(p_109, ((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 2))(0x7DL, (-1L))).yyyy, (int8_t)p_2052->g_678[6].f2))).yxwxzxxw))).s4653567276074075, ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))(((*l_962) = (((((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(p_2052->g_1351.s40406276)).s55 && ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(0x0A9BAFADL, 1L, (-8L), ((VECTOR(int32_t, 4))(1L, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(0x08EDDD7AL, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(l_1352.yxzwwzwz)).even))).zzwyxywwwwxzyxyx, ((VECTOR(int32_t, 2))(1L, (-8L))).xyxxyxyyxyxyxyxy, ((VECTOR(int32_t, 2))(0L, 0x10FB274FL)).xxyyyxxyxyyxxxyy))).s2f80, (int32_t)(l_1271 = ((safe_unary_minus_func_int64_t_s(((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_2052->local_0_offset, get_local_id(0), 10), l_1259.x)) >= l_1222.x))) | l_1248))))), 0x303FEB1BL, 0L, 7L)) && ((VECTOR(int32_t, 16))(l_1356.yyyyyyyxxyyyxxyx)).odd))).s51, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 16))(0x23D25372L, (-5L), 0x443776A9L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_1357.s52)), 0x5AC94704L, 0x49333E2AL)), 0x01B84EFAL, l_1248, (safe_lshift_func_int16_t_s_u((l_1034.s1 = (((((VECTOR(uint8_t, 4))(p_2052->g_1360.ywwx)).z > ((((l_961.w < l_1286[0]) , l_1361) && p_2052->g_768.f2) <= p_109)) && p_2052->g_41.f1) > 1L)), 14)), ((VECTOR(int32_t, 2))(0x4A9F8D19L)), ((VECTOR(int32_t, 4))(0x14A9BACDL)))).se9e8, (int32_t)l_1362))).hi))), 0x0B78ACC4L)).w, 0x7008B15EL, 0x4A5EA964L, 0x0C6D21CDL, 0x09642E40L)), ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))(1L))))).s42))), 0x220B2878L, 9L)) <= ((VECTOR(int32_t, 4))(0x4D64EA33L))))).even | ((VECTOR(int32_t, 2))(0x51B40E11L))))).xyyxyxxx, ((VECTOR(int32_t, 8))((-1L))), ((VECTOR(int32_t, 8))(0x3D21462CL))))).even & ((VECTOR(int32_t, 4))(0x2044653FL))))).w, p_108)) || 3L) , FAKE_DIVERGE(p_2052->local_2_offset, get_local_id(2), 10)) <= l_1342.x) , 8L)), (-2L), 0x04L, p_2052->g_6, ((VECTOR(int8_t, 2))(0x34L)), p_2052->g_41.f6, p_108, p_2052->g_382.x, ((VECTOR(int8_t, 2))(1L)), 5L, l_1202.s0, ((VECTOR(int8_t, 2))(0x71L)), 0x19L)).odd, ((VECTOR(int8_t, 8))(1L))))).s4020401020024416))), ((VECTOR(uint8_t, 16))(9UL))))).s2))) , 8L);
            }
            else
            { /* block id: 432 */
                int16_t l_1363 = 0L;
                int32_t l_1364 = 0L;
                l_1357.s0 |= p_108;
                l_1364 = l_1363;
                if (l_1365)
                    break;
            }
            p_2052->g_1367 = p_2052->g_1366;
            l_1034.s7 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((((+p_108) || ((p_108 , ((l_1040.s3 = (l_1357.s5 = ((((0xCBEB03C758019D44L & ((((safe_sub_func_int8_t_s_s(((p_108 ^ (l_1370 != (p_111 , ((safe_mul_func_uint8_t_u_u(p_109, (safe_sub_func_uint8_t_u_u((safe_div_func_int16_t_s_s(p_2052->g_227.s3, (safe_div_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_s(p_2052->g_1050.f2, 12)) != 0x1EL) > 2L), l_1346)))), l_1381)))) , &p_2052->g_690)))) , l_1005.s5), l_1361)) & 0x48L) >= p_109) > l_1221.y)) , l_1382) < p_111) || p_109))) & 0UL)) , (-1L))) != p_111), 1L, p_2052->g_768.f0, ((VECTOR(int16_t, 2))(0x20CAL)), 0x5C63L, ((VECTOR(int16_t, 4))(0x63D4L)), (-4L), l_1342.x, 0x4B54L, ((VECTOR(int16_t, 2))(0x3762L)), 0x48E0L)).s35e3 == ((VECTOR(int16_t, 4))(6L))))).wxwzyyyz >= ((VECTOR(int16_t, 8))(2L))))).s0374717044517771 > ((VECTOR(int16_t, 16))(0x51F3L))))).lo, ((VECTOR(int16_t, 8))(0x24CEL))))).s3664436064644767 && ((VECTOR(int16_t, 16))(0x16F1L))))).lo, ((VECTOR(uint16_t, 8))(0x3A5EL))))).s7, (-6L), ((VECTOR(int32_t, 4))(0x0833C0C3L)), l_1034.s6, p_108, (-5L), ((VECTOR(int32_t, 4))(0x475790E3L)), 0x363BB6A5L, 0x4F82584FL, (-1L))).s9;
        }
    }
    return &p_2052->g_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_2052->g_125 p_2052->g_35 p_2052->g_36 p_2052->g_388 p_2052->g_389 p_2052->g_661 p_2052->g_11 p_2052->g_677 p_2052->g_686 p_2052->g_689 p_2052->g_69.f6 p_2052->g_713 p_2052->g_734 p_2052->g_735 p_2052->g_746 p_2052->g_6 p_2052->g_181 p_2052->g_106.f0 p_2052->g_106.f2 p_2052->g_178 p_2052->g_766 p_2052->g_123 p_2052->g_124 p_2052->g_594 p_2052->g_41 p_2052->g_61 p_2052->g_69 p_2052->g_829 p_2052->g_634 p_2052->g_382 p_2052->g_206 p_2052->g_879 p_2052->g_544 p_2052->g_931 p_2052->g_866 p_2052->g_687 p_2052->g_938
 * writes: p_2052->g_389 p_2052->g_11 p_2052->g_678 p_2052->g_689 p_2052->g_36 p_2052->g_713 p_2052->g_61 p_2052->g_6 p_2052->g_181 p_2052->g_41.f5 p_2052->g_41.f0 p_2052->g_41.f2 p_2052->g_35 p_2052->g_41.f3 p_2052->g_768 p_2052->g_124 p_2052->g_302 p_2052->g_829.f1 p_2052->g_206 p_2052->g_106.f0 p_2052->g_687
 */
uint8_t * func_119(int32_t  p_120, int16_t  p_121, uint8_t * p_122, struct S2 * p_2052)
{ /* block id: 64 */
    int16_t l_147[7][4] = {{(-1L),0x0F0CL,(-1L),(-1L)},{(-1L),0x0F0CL,(-1L),(-1L)},{(-1L),0x0F0CL,(-1L),(-1L)},{(-1L),0x0F0CL,(-1L),(-1L)},{(-1L),0x0F0CL,(-1L),(-1L)},{(-1L),0x0F0CL,(-1L),(-1L)},{(-1L),0x0F0CL,(-1L),(-1L)}};
    VECTOR(int8_t, 16) l_149 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x76L), 0x76L), 0x76L, 1L, 0x76L, (VECTOR(int8_t, 2))(1L, 0x76L), (VECTOR(int8_t, 2))(1L, 0x76L), 1L, 0x76L, 1L, 0x76L);
    VECTOR(int32_t, 4) l_154 = (VECTOR(int32_t, 4))(0x31EF4386L, (VECTOR(int32_t, 2))(0x31EF4386L, (-1L)), (-1L));
    VECTOR(int32_t, 2) l_158 = (VECTOR(int32_t, 2))((-1L), 2L);
    VECTOR(int16_t, 2) l_159 = (VECTOR(int16_t, 2))(0x7750L, 0x1CACL);
    VECTOR(uint16_t, 2) l_163 = (VECTOR(uint16_t, 2))(0x3573L, 0xF490L);
    VECTOR(int16_t, 2) l_183 = (VECTOR(int16_t, 2))(0x08ECL, 0x250DL);
    VECTOR(int16_t, 4) l_184 = (VECTOR(int16_t, 4))(0x4FD8L, (VECTOR(int16_t, 2))(0x4FD8L, 0x12BEL), 0x12BEL);
    VECTOR(uint8_t, 2) l_203 = (VECTOR(uint8_t, 2))(2UL, 0xEFL);
    uint64_t *l_204 = &p_2052->g_41.f6;
    VECTOR(uint16_t, 2) l_224 = (VECTOR(uint16_t, 2))(0x0A16L, 0x3C2CL);
    int64_t l_241 = 0x785065BEF18E979EL;
    int32_t l_244[9] = {(-6L),0x724C9ECFL,(-6L),(-6L),0x724C9ECFL,(-6L),(-6L),0x724C9ECFL,(-6L)};
    VECTOR(uint64_t, 8) l_288 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
    uint8_t **l_296 = &p_2052->g_123;
    uint32_t l_353 = 0x7296573EL;
    int32_t l_356 = 0x3FF0958BL;
    int8_t l_360 = 0x62L;
    VECTOR(int16_t, 16) l_407 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-9L)), (-9L)), (-9L), (-1L), (-9L), (VECTOR(int16_t, 2))((-1L), (-9L)), (VECTOR(int16_t, 2))((-1L), (-9L)), (-1L), (-9L), (-1L), (-9L));
    VECTOR(uint8_t, 8) l_415 = (VECTOR(uint8_t, 8))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 1UL), 1UL), 1UL, 2UL, 1UL);
    uint32_t *l_435 = &p_2052->g_11;
    VECTOR(uint64_t, 4) l_451 = (VECTOR(uint64_t, 4))(0x9A5252119EC0BFF3L, (VECTOR(uint64_t, 2))(0x9A5252119EC0BFF3L, 18446744073709551615UL), 18446744073709551615UL);
    int32_t l_548 = 0x32C9AB1BL;
    uint32_t l_568 = 0x96D9D237L;
    uint64_t l_580 = 1UL;
    VECTOR(int64_t, 8) l_592 = (VECTOR(int64_t, 8))(0x186F0188CFDCEEF3L, (VECTOR(int64_t, 4))(0x186F0188CFDCEEF3L, (VECTOR(int64_t, 2))(0x186F0188CFDCEEF3L, 5L), 5L), 5L, 0x186F0188CFDCEEF3L, 5L);
    int32_t *l_656 = &l_356;
    VECTOR(uint64_t, 2) l_698 = (VECTOR(uint64_t, 2))(0UL, 2UL);
    VECTOR(uint64_t, 2) l_718 = (VECTOR(uint64_t, 2))(0x0326FC28E9FACAA0L, 0x532BC1B2E2ECC66BL);
    int32_t l_802 = (-1L);
    int8_t l_812 = 0x5BL;
    int64_t l_856 = (-1L);
    uint64_t l_857 = 1UL;
    int8_t l_874[7] = {0x7DL,0x7DL,0x7DL,0x7DL,0x7DL,0x7DL,0x7DL};
    int64_t l_905 = 0x26730500F4745D2AL;
    uint32_t l_906 = 1UL;
    int16_t l_910 = 0x38CBL;
    int32_t l_911[7] = {(-6L),0x2B9958ADL,(-6L),(-6L),0x2B9958ADL,(-6L),(-6L)};
    uint32_t l_912[10][10] = {{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L},{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L},{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L},{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L},{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L},{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L},{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L},{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L},{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L},{0UL,8UL,0x3D1A4230L,0UL,0x5B27DBB5L,9UL,9UL,0x5B27DBB5L,0UL,0x3D1A4230L}};
    uint32_t l_927 = 0xBB865856L;
    uint16_t *l_928 = (void*)0;
    uint16_t *l_929[9][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    VECTOR(uint16_t, 8) l_930 = (VECTOR(uint16_t, 8))(0x79D8L, (VECTOR(uint16_t, 4))(0x79D8L, (VECTOR(uint16_t, 2))(0x79D8L, 0UL), 0UL), 0UL, 0x79D8L, 0UL);
    uint8_t ***l_932 = &l_296;
    uint32_t l_935 = 0xC83DB3C0L;
    uint64_t l_936 = 0xBC9CEDA07C2D48E7L;
    int32_t **l_937 = &p_2052->g_389[2][6][1];
    int i, j, k;
    if (((void*)0 == p_2052->g_125))
    { /* block id: 65 */
        VECTOR(int32_t, 2) l_131 = (VECTOR(int32_t, 2))(0x03122935L, 0x291AC2CDL);
        uint32_t *l_132 = &p_2052->g_11;
        VECTOR(int8_t, 2) l_148 = (VECTOR(int8_t, 2))((-7L), 8L);
        VECTOR(int32_t, 2) l_155 = (VECTOR(int32_t, 2))(1L, 0L);
        VECTOR(int32_t, 8) l_156 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x10AB4F1EL), 0x10AB4F1EL), 0x10AB4F1EL, (-9L), 0x10AB4F1EL);
        VECTOR(int32_t, 16) l_157 = (VECTOR(int32_t, 16))(0x7705CCF7L, (VECTOR(int32_t, 4))(0x7705CCF7L, (VECTOR(int32_t, 2))(0x7705CCF7L, 0x29304CBFL), 0x29304CBFL), 0x29304CBFL, 0x7705CCF7L, 0x29304CBFL, (VECTOR(int32_t, 2))(0x7705CCF7L, 0x29304CBFL), (VECTOR(int32_t, 2))(0x7705CCF7L, 0x29304CBFL), 0x7705CCF7L, 0x29304CBFL, 0x7705CCF7L, 0x29304CBFL);
        VECTOR(uint16_t, 16) l_160 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xD5FBL), 0xD5FBL), 0xD5FBL, 1UL, 0xD5FBL, (VECTOR(uint16_t, 2))(1UL, 0xD5FBL), (VECTOR(uint16_t, 2))(1UL, 0xD5FBL), 1UL, 0xD5FBL, 1UL, 0xD5FBL);
        VECTOR(uint16_t, 8) l_162 = (VECTOR(uint16_t, 8))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x680CL), 0x680CL), 0x680CL, 65530UL, 0x680CL);
        VECTOR(uint16_t, 8) l_173 = (VECTOR(uint16_t, 8))(0x741FL, (VECTOR(uint16_t, 4))(0x741FL, (VECTOR(uint16_t, 2))(0x741FL, 65535UL), 65535UL), 65535UL, 0x741FL, 65535UL);
        VECTOR(uint16_t, 8) l_174 = (VECTOR(uint16_t, 8))(0x12F6L, (VECTOR(uint16_t, 4))(0x12F6L, (VECTOR(uint16_t, 2))(0x12F6L, 65535UL), 65535UL), 65535UL, 0x12F6L, 65535UL);
        VECTOR(uint16_t, 4) l_175 = (VECTOR(uint16_t, 4))(0x049EL, (VECTOR(uint16_t, 2))(0x049EL, 0xDCEAL), 0xDCEAL);
        VECTOR(uint16_t, 16) l_179 = (VECTOR(uint16_t, 16))(0x0722L, (VECTOR(uint16_t, 4))(0x0722L, (VECTOR(uint16_t, 2))(0x0722L, 0x4768L), 0x4768L), 0x4768L, 0x0722L, 0x4768L, (VECTOR(uint16_t, 2))(0x0722L, 0x4768L), (VECTOR(uint16_t, 2))(0x0722L, 0x4768L), 0x0722L, 0x4768L, 0x0722L, 0x4768L);
        uint64_t l_180 = 0x41B5795B1210621FL;
        int32_t *l_182 = (void*)0;
        VECTOR(int16_t, 2) l_185 = (VECTOR(int16_t, 2))((-1L), 1L);
        VECTOR(int16_t, 8) l_186 = (VECTOR(int16_t, 8))(0x05D0L, (VECTOR(int16_t, 4))(0x05D0L, (VECTOR(int16_t, 2))(0x05D0L, 0x5313L), 0x5313L), 0x5313L, 0x05D0L, 0x5313L);
        uint64_t *l_188 = &p_2052->g_61;
        uint64_t **l_205[4][2] = {{&l_204,&l_204},{&l_204,&l_204},{&l_204,&l_204},{&l_204,&l_204}};
        int32_t *l_207 = &p_2052->g_36;
        uint16_t l_208 = 0x5D69L;
        uint32_t l_334 = 4294967295UL;
        struct S0 *l_344 = &p_2052->g_106;
        uint32_t l_357 = 0UL;
        uint8_t *l_478 = (void*)0;
        uint16_t *l_537 = (void*)0;
        int32_t **l_654 = (void*)0;
        int32_t **l_655[9][2][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int i, j, k;
        l_182 = ((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(0UL, (safe_div_func_uint16_t_u_u(((GROUP_DIVERGE(1, 1) >= ((((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(p_2052->g_130.ywwy)).odd, ((VECTOR(int32_t, 8))(l_131.xyxyyyxy)).s17))).odd , p_121) && ((void*)0 != l_132))) != (((p_2052->g_41.f6 , (safe_add_func_int8_t_s_s((((p_120 , (safe_add_func_int64_t_s_s((((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))((safe_add_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(p_2052->g_69.f6, (safe_mul_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u(l_147[3][0], ((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((-1L), (-4L))), ((VECTOR(int8_t, 2))(l_148.yx)), 0x18L, 0L, 0x18L, 1L)).s7720420417422756, ((VECTOR(int8_t, 16))(l_149.s80494ba7c8bba856))))).sd != (safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_2052->global_2_offset, get_global_id(2), 10), (((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 2))(l_154.xy)).yxyyyxyyyxxxxxxy, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(l_155.yyyyxyxx)).even, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(l_156.s6061071132354415)) <= ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(l_157.sab)), ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(0x2065D452L, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_158.xyyxxxyx)).even && ((VECTOR(int32_t, 4))(0x4A68E686L, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 16))(l_159.yyxxxxxxyyyyyyxx)), ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 8))(l_160.s044322df)).odd, ((VECTOR(uint16_t, 2))(2UL, 1UL)).yyyx))).wxwwywwwyzyzyyyx))).sd2 > ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 16))(p_2052->g_161.s1403747022515776)).s3a, ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 2))(l_162.s63)).yxyyyxxy, ((VECTOR(uint16_t, 8))(l_163.xyxyxyyy))))).s4260606706635427, ((VECTOR(uint16_t, 16))(p_120, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(p_2052->g_170.xxyxxxyxyxxyxyyx)).even + ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(9UL, 0x963BL)) | ((VECTOR(uint16_t, 8))(0UL, 0x0B67L, ((VECTOR(uint16_t, 4))(l_173.s7765)), 0x0B4AL, 0UL)).s00))).xxyy + ((VECTOR(uint16_t, 8))(l_174.s77470212)).lo))).yzxyxzwx))).s37 + ((VECTOR(uint16_t, 2))(l_175.yw))))).xxxxyxxy + ((VECTOR(uint16_t, 16))(0xBF64L, (p_2052->g_106.f0++), ((VECTOR(uint16_t, 2))(p_2052->g_178.sdc)), ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(l_179.s6f)).yxyxxyyy & ((VECTOR(uint16_t, 8))(l_158.x, ((VECTOR(uint16_t, 4))(65535UL)), ((VECTOR(uint16_t, 2))(0x5E22L)), 0UL))))), 1UL, ((VECTOR(uint16_t, 2))(0UL)), 65526UL)).odd))), p_120, ((VECTOR(uint16_t, 2))(65530UL)), 65528UL, 0xB9FFL, 0x19E8L, 65535UL)), ((VECTOR(uint16_t, 16))(0x9C76L))))).s75))), (int32_t)l_163.x, (int32_t)l_131.y))) && ((VECTOR(int32_t, 2))(0x0E4AF28EL))))).yxxx && ((VECTOR(int32_t, 4))(0L))))).even != ((VECTOR(int32_t, 2))(9L))))).yyyxyyxy, ((VECTOR(int32_t, 8))(9L)), ((VECTOR(int32_t, 8))((-1L)))))).s17))), 0x54163EC9L))))).even, ((VECTOR(int32_t, 2))((-5L)))))), 0x7E1426F2L, l_180, 0x390B466FL, 0x454EC052L, 1L)).s47, ((VECTOR(int32_t, 2))(0x3E8BC30BL)), ((VECTOR(int32_t, 2))(0x5570D041L))))), ((VECTOR(int32_t, 2))(1L))))).yxyxyxxyyyxxyyyy && ((VECTOR(int32_t, 16))(0x0CBF2326L))))).even != ((VECTOR(int32_t, 8))((-1L)))))).s1201044245003053))).s49 < ((VECTOR(int32_t, 2))(0L))))).xxxy))).wyxzywzwxxxywwyz))).hi, ((VECTOR(int32_t, 8))(8L)), ((VECTOR(int32_t, 8))(0x6AAE59B5L)))))))).s0167050344570763, (int32_t)p_2052->g_181[6][1][0], (int32_t)l_175.y))), ((VECTOR(int32_t, 16))(0x3D644B8DL))))).s8 , l_159.y))), l_174.s2))) <= p_120))) >= (*p_2052->g_123)), l_131.x)))), p_2052->g_41.f2)), ((VECTOR(int32_t, 2))((-2L))), 0x668E61B9L, l_156.s2, ((VECTOR(int32_t, 4))(1L)), l_149.s6, ((VECTOR(int32_t, 2))(0x72A8FA4DL)), (-1L), ((VECTOR(int32_t, 2))(0x74B5C2CFL)), 0x5CBD8DA2L)).sa, l_163.x)) & p_120) <= (*p_122)), l_163.x))) > 0UL) != l_159.y), 1L))) >= 1L) , l_163.x)), 0x4231L)), 1UL, 255UL)).y, 0x32L)) , (void*)0);
    }
    else
    { /* block id: 214 */
        int64_t l_660 = 0x3D04FB60BDA8A0AAL;
        int32_t *l_671 = &p_2052->g_36;
        VECTOR(uint64_t, 16) l_724 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x68A5AB23F9F6DCD4L), 0x68A5AB23F9F6DCD4L), 0x68A5AB23F9F6DCD4L, 1UL, 0x68A5AB23F9F6DCD4L, (VECTOR(uint64_t, 2))(1UL, 0x68A5AB23F9F6DCD4L), (VECTOR(uint64_t, 2))(1UL, 0x68A5AB23F9F6DCD4L), 1UL, 0x68A5AB23F9F6DCD4L, 1UL, 0x68A5AB23F9F6DCD4L);
        int32_t l_779 = 0x2490CDD0L;
        int32_t l_788 = 0x52A1D54DL;
        int32_t l_791 = 0x0AD64AAFL;
        int32_t l_792 = (-1L);
        int32_t l_793 = 5L;
        int32_t l_794 = 0x0D1115CDL;
        int32_t l_795 = 0x3EAFD742L;
        int32_t l_796 = 1L;
        int32_t l_798[6][5][4] = {{{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L}},{{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L}},{{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L}},{{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L}},{{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L}},{{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L},{0x19ECDC26L,0x49E7567BL,1L,0L}}};
        int32_t l_799[2];
        int64_t l_803[1][9] = {{1L,1L,1L,1L,1L,1L,1L,1L,1L}};
        int16_t l_814 = 0x0528L;
        uint64_t *l_839 = &p_2052->g_677.f6;
        VECTOR(int32_t, 4) l_842 = (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, (-10L)), (-10L));
        uint64_t *l_852 = &l_580;
        uint64_t **l_851[8] = {&l_852,&l_852,&l_852,&l_852,&l_852,&l_852,&l_852,&l_852};
        struct S0 *l_863[2][1][2] = {{{&p_2052->g_106,&p_2052->g_106}},{{&p_2052->g_106,&p_2052->g_106}}};
        int32_t l_875 = (-1L);
        int32_t *l_896 = (void*)0;
        int32_t *l_897 = &l_802;
        int32_t *l_898 = &l_798[3][0][3];
        int32_t *l_899 = &l_788;
        int32_t *l_900 = &l_798[4][2][1];
        int32_t *l_901 = &l_802;
        int32_t *l_902 = &l_802;
        int32_t *l_903[1][3][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        VECTOR(int64_t, 16) l_904 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x6694BDD89D5B0F6AL), 0x6694BDD89D5B0F6AL), 0x6694BDD89D5B0F6AL, (-1L), 0x6694BDD89D5B0F6AL, (VECTOR(int64_t, 2))((-1L), 0x6694BDD89D5B0F6AL), (VECTOR(int64_t, 2))((-1L), 0x6694BDD89D5B0F6AL), (-1L), 0x6694BDD89D5B0F6AL, (-1L), 0x6694BDD89D5B0F6AL);
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_799[i] = 0L;
        if ((*p_2052->g_35))
        { /* block id: 215 */
            uint64_t l_657 = 0x90BE76B8D577DA0AL;
            int32_t *l_663 = &p_2052->g_69.f1;
            int32_t **l_662 = &l_663;
            int32_t **l_665 = &l_663;
            int32_t *l_673 = (void*)0;
            if ((l_657 == ((safe_rshift_func_int16_t_s_u(p_120, 6)) >= ((*l_656) & l_660))))
            { /* block id: 216 */
                int32_t ***l_664[8][1] = {{&l_662},{&l_662},{&l_662},{&l_662},{&l_662},{&l_662},{&l_662},{&l_662}};
                uint16_t l_668 = 65535UL;
                int i, j;
                (*p_2052->g_661) = (*p_2052->g_388);
                l_665 = l_662;
                for (p_2052->g_11 = 0; (p_2052->g_11 >= 40); p_2052->g_11 = safe_add_func_uint16_t_u_u(p_2052->g_11, 7))
                { /* block id: 221 */
                    --l_668;
                }
            }
            else
            { /* block id: 224 */
                l_673 = l_671;
                return p_122;
            }
        }
        else
        { /* block id: 228 */
            VECTOR(uint64_t, 16) l_712 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x54A4D11C71EEFDE4L), 0x54A4D11C71EEFDE4L), 0x54A4D11C71EEFDE4L, 0UL, 0x54A4D11C71EEFDE4L, (VECTOR(uint64_t, 2))(0UL, 0x54A4D11C71EEFDE4L), (VECTOR(uint64_t, 2))(0UL, 0x54A4D11C71EEFDE4L), 0UL, 0x54A4D11C71EEFDE4L, 0UL, 0x54A4D11C71EEFDE4L);
            VECTOR(uint64_t, 2) l_723 = (VECTOR(uint64_t, 2))(0x2D287A37767E87C9L, 0x3BD5C2D60779B4D7L);
            int32_t l_758 = 0L;
            int32_t l_789 = 6L;
            int32_t l_790[5][7][6] = {{{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L}},{{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L}},{{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L}},{{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L}},{{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L},{(-1L),(-1L),(-1L),0x58A782F1L,(-1L),0x58A782F1L}}};
            int32_t l_797 = 0L;
            int32_t l_804 = 7L;
            uint32_t l_805 = 0x6473D852L;
            int8_t l_816[4][5];
            VECTOR(int16_t, 16) l_847 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 1L), 1L), 1L, (-10L), 1L, (VECTOR(int16_t, 2))((-10L), 1L), (VECTOR(int16_t, 2))((-10L), 1L), (-10L), 1L, (-10L), 1L);
            struct S1 *l_849 = &p_2052->g_678[6];
            uint32_t l_876 = 0xBA67EF7DL;
            int i, j, k;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 5; j++)
                    l_816[i][j] = 0x7CL;
            }
            if ((*l_656))
            { /* block id: 229 */
lbl_769:
                (*l_656) = (safe_unary_minus_func_uint32_t_u((*l_656)));
            }
            else
            { /* block id: 231 */
                VECTOR(uint16_t, 4) l_736 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), 65535UL);
                VECTOR(uint16_t, 4) l_743 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x72DFL), 0x72DFL);
                int32_t l_759 = 0x31AECC2FL;
                int64_t l_760 = 7L;
                int32_t l_761[9][8][3] = {{{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)}},{{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)}},{{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)}},{{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)}},{{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)}},{{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)}},{{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)}},{{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)}},{{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)},{7L,1L,(-5L)}}};
                uint8_t l_764 = 255UL;
                int64_t l_801 = 0x380ED10DCCC6EA15L;
                struct S0 *l_862 = &p_2052->g_106;
                int32_t *l_867 = &l_759;
                int i, j, k;
                if ((*l_656))
                { /* block id: 232 */
                    VECTOR(uint64_t, 8) l_711 = (VECTOR(uint64_t, 8))(0xCDA6A01CB0070255L, (VECTOR(uint64_t, 4))(0xCDA6A01CB0070255L, (VECTOR(uint64_t, 2))(0xCDA6A01CB0070255L, 2UL), 2UL), 2UL, 0xCDA6A01CB0070255L, 2UL);
                    int32_t **l_740 = &p_2052->g_691;
                    int32_t *l_770 = (void*)0;
                    int32_t *l_771 = (void*)0;
                    int32_t *l_772 = (void*)0;
                    int32_t *l_773 = &l_244[1];
                    int32_t *l_774 = &l_761[6][2][2];
                    int32_t *l_775 = &l_356;
                    int32_t *l_776 = &l_244[1];
                    int32_t *l_777 = &l_244[0];
                    int32_t *l_778 = (void*)0;
                    int32_t *l_780 = &l_548;
                    int32_t *l_781 = &l_758;
                    int32_t *l_782 = &l_761[6][2][2];
                    int32_t *l_783 = &l_761[8][7][0];
                    int32_t *l_784 = &l_761[6][2][2];
                    int32_t *l_785 = &l_244[1];
                    int32_t *l_786 = &l_758;
                    int32_t *l_787[1][8] = {{&l_759,&p_2052->g_36,&l_759,&l_759,&p_2052->g_36,&l_759,&l_759,&p_2052->g_36}};
                    int8_t l_800 = 1L;
                    int32_t l_815 = 1L;
                    uint64_t *l_838 = &p_2052->g_41.f6;
                    int32_t l_855 = 1L;
                    int i, j;
                    for (l_241 = 29; (l_241 <= (-26)); l_241 = safe_sub_func_int32_t_s_s(l_241, 3))
                    { /* block id: 235 */
                        uint64_t *l_719 = (void*)0;
                        uint64_t *l_720[2];
                        VECTOR(uint64_t, 4) l_727 = (VECTOR(uint64_t, 4))(0x38AE84604B748C16L, (VECTOR(uint64_t, 2))(0x38AE84604B748C16L, 18446744073709551609UL), 18446744073709551609UL);
                        VECTOR(uint16_t, 2) l_739 = (VECTOR(uint16_t, 2))(65535UL, 0x7382L);
                        uint16_t *l_753 = (void*)0;
                        uint16_t *l_754 = (void*)0;
                        uint16_t *l_755 = (void*)0;
                        uint16_t *l_756 = (void*)0;
                        uint16_t *l_757[9] = {&p_2052->g_106.f0,&p_2052->g_106.f0,&p_2052->g_106.f0,&p_2052->g_106.f0,&p_2052->g_106.f0,&p_2052->g_106.f0,&p_2052->g_106.f0,&p_2052->g_106.f0,&p_2052->g_106.f0};
                        int16_t *l_765 = &p_2052->g_181[6][1][0];
                        int8_t l_767 = 0x71L;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_720[i] = (void*)0;
                        p_2052->g_678[6] = p_2052->g_677;
                        l_767 ^= ((safe_mod_func_uint64_t_u_u((safe_unary_minus_func_int64_t_s((safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((*l_671) = ((*l_656) = (p_2052->g_686 != (p_2052->g_689 = p_2052->g_689)))), ((((((*l_765) = (((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(0xD25FC5963997383FL, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(l_698.xy)).xxyyyyxxxxxxxyxx + ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(18446744073709551607UL, 18446744073709551612UL)).xxxyyxyyyxxxyxyy << ((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(4UL, (p_2052->g_69.f6 | (l_764 ^= ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 2))(18446744073709551609UL, 0xCBDCD9B22EC16F8CL)).yxxx, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 2))(l_711.s70)).yyyxyyyx, ((VECTOR(uint64_t, 8))(l_712.s4c5877e7))))).even + ((VECTOR(uint64_t, 4))(p_2052->g_713.xywz))))), ((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(l_718.xx)) + ((VECTOR(uint64_t, 4))((p_2052->g_61 = (p_2052->g_713.y++)), 0x6E554022DCB969F2L, 0x1965C38E0C51BF1EL, 4UL)).lo))), 18446744073709551615UL, (FAKE_DIVERGE(p_2052->local_1_offset, get_local_id(1), 10) , (p_121 , p_121)), ((VECTOR(uint64_t, 4))(l_723.xyyy)))) + ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(l_724.sea82)).yxxzzxww & ((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 8))(0x8B176D12B2D60FE4L, ((VECTOR(uint64_t, 4))(l_727.wwww)), ((safe_lshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(0xBFF3L, 0UL)).yxxx + ((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(p_2052->g_734.xyxxyxyy)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(65531UL, ((VECTOR(uint16_t, 4))(p_2052->g_735.xxxx)), ((VECTOR(uint16_t, 2))(l_736.wy)), 0x9DDDL)), 0UL, (safe_mul_func_int16_t_s_s(0x2BF5L, ((VECTOR(uint16_t, 16))(l_739.xxyxyxyyyxyxyxxy)).sd)), (l_740 != l_740), ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(l_743.yz)).xyxxxyyxyyyxxyyx + ((VECTOR(uint16_t, 8))(0x1920L, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(p_2052->g_746.s77f98df9767dd719)).se945 + ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(0x3171L, 1UL)).yyyx + ((VECTOR(uint16_t, 16))((--p_2052->g_6), ((VECTOR(uint16_t, 2))(0xE486L, 65535UL)), ((VECTOR(uint16_t, 4))((~(p_121 , p_2052->g_746.sa)), 0x130AL, 1UL, 0xC69DL)), 65534UL, 0xC95CL, ((VECTOR(uint16_t, 2))(7UL)), 0xBDADL, GROUP_DIVERGE(2, 1), 65531UL, 0xA5ABL, 0x0031L)).sea1d))).even + ((VECTOR(uint16_t, 2))(0x7913L))))).xyxxyyyxyyyyyyyx + ((VECTOR(uint16_t, 16))(0x24A8L))))).s09c1))), ((VECTOR(uint16_t, 2))(0UL)), 8UL)).s5001072704264334))).s7816, ((VECTOR(uint16_t, 4))(1UL))))), 0x930CL)).lo))).odd))), 0x64D6L, p_2052->g_181[1][3][0], 0x5FB4L, 0UL)).s3, 8)), p_2052->g_106.f0)) , 0xC322AAEA9947D49EL), 0UL, 0x3E6EFF60DC758215L)).hi, ((VECTOR(uint64_t, 4))(18446744073709551614UL))))), ((VECTOR(uint64_t, 4))(18446744073709551609UL)), ((VECTOR(uint64_t, 4))(0x515346C2CBFE32D8L))))) + ((VECTOR(uint64_t, 4))(0x8888F9299D453C04L))))).xzywxwwz, ((VECTOR(uint64_t, 8))(18446744073709551606UL))))))))))) & ((VECTOR(uint64_t, 8))(3UL))))).hi, ((VECTOR(uint64_t, 4))(9UL)))))))).z)), 0x0FE6D9AB8CE213A3L, 0x78F7A9B6736ED41FL, 0x4634043DDB152583L, 0xDB3A49B5F63629D0L, 0x29AB450427CDA188L, 5UL)).s5027311654123576 << ((VECTOR(uint64_t, 16))(64))))) + ((VECTOR(uint64_t, 16))(2UL))))).sae & ((VECTOR(uint64_t, 2))(18446744073709551608UL))))).xyyxyyyxxyxyxyyx + ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).s65ec >> ((VECTOR(uint64_t, 4))(0xF8EEDF582D884394L))))).odd, ((VECTOR(uint64_t, 2))(0xBE5CD74E05384C85L)), ((VECTOR(uint64_t, 2))(0xB2F16AEBC92A449CL))))).yyyxyyyyxyxyxyxx))).s99d1, ((VECTOR(uint64_t, 4))(0UL)), ((VECTOR(uint64_t, 4))(0x52C81842F5758408L))))), l_288.s7, 0x277F8A140EE75BDCL, 0x78870808CEFBE9F6L, 0x9FFC866F9194E5B3L)).s2711050243352513))).hi, ((VECTOR(uint64_t, 8))(18446744073709551612UL))))).s03 & ((VECTOR(uint64_t, 2))(0x4170744B1336A208L))))), ((VECTOR(uint64_t, 2))(7UL)), l_712.sb, 0x5AF995D8B936850CL, 0x24F84CFC4D8723D2L)).s40 + ((VECTOR(uint64_t, 2))(0UL))))).yxxy + ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).w & p_121)) < p_121) || p_2052->g_106.f2) != p_2052->g_178.sb) < p_2052->g_766))), p_120)))), p_2052->g_677.f5)) ^ (*p_2052->g_123));
                        p_2052->g_768 = func_27(p_2052->g_594.s7, p_2052);
                        if (l_356)
                            goto lbl_769;
                    }
                    --l_805;
                    if (((*l_774) = ((void*)0 == &l_568)))
                    { /* block id: 251 */
                        uint16_t l_808 = 0x2690L;
                        int32_t l_811[8];
                        int32_t l_817[3][2];
                        uint64_t l_818[7] = {18446744073709551607UL,3UL,18446744073709551607UL,18446744073709551607UL,3UL,18446744073709551607UL,18446744073709551607UL};
                        uint64_t **l_840 = (void*)0;
                        uint64_t **l_841 = &l_204;
                        int16_t l_848[5][1];
                        int i, j;
                        for (i = 0; i < 8; i++)
                            l_811[i] = 1L;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_817[i][j] = 1L;
                        }
                        for (i = 0; i < 5; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_848[i][j] = 0x0A5DL;
                        }
                        l_808++;
                        l_818[6]--;
                        (*l_671) = (((((safe_mul_func_uint8_t_u_u(((*p_122) |= (safe_rshift_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s(((safe_div_func_uint8_t_u_u((p_2052->g_829 , (safe_sub_func_int16_t_s_s((((VECTOR(uint8_t, 16))((safe_div_func_uint32_t_u_u((((VECTOR(int64_t, 2))((-10L), (-1L))).lo | (18446744073709551609UL <= ((safe_mul_func_int16_t_s_s((l_838 != ((*l_841) = l_839)), p_120)) ^ GROUP_DIVERGE(2, 1)))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))((-8L), (-7L), 0L, (-10L))).wzyzwyxyzxxzxxyz, ((VECTOR(int32_t, 8))(l_842.wwwzyyxx)).s1335226275736320, ((VECTOR(int32_t, 8))(0x55847771L, ((VECTOR(int32_t, 4))((safe_div_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(p_2052->g_829.f3, ((VECTOR(int16_t, 2))(l_847.s93)).hi)), (4294967295UL & (*l_656)))), ((VECTOR(int32_t, 2))((-1L))), 0x2CB382EEL)), 1L, 0x234F6E38L, 0x7A04DC67L)).s5413342035115301))).s9d && ((VECTOR(int32_t, 2))(6L))))), (*l_777), 0x41DBEA1FL, (-8L), ((VECTOR(int32_t, 2))((-7L))), 0x26043F43L)).s7)), ((VECTOR(uint8_t, 4))(0xF8L)), ((VECTOR(uint8_t, 8))(9UL)), ((VECTOR(uint8_t, 2))(0xB3L)), 0xACL)).sd , 0L), 0xD213L))), 250UL)) | FAKE_DIVERGE(p_2052->group_1_offset, get_group_id(1), 10)), p_2052->g_634.x)) | l_848[1][0]), 7))), FAKE_DIVERGE(p_2052->local_0_offset, get_local_id(0), 10))) && (*l_776)) == p_120) || p_121) ^ p_2052->g_382.y);
                    }
                    else
                    { /* block id: 257 */
                        int32_t *l_850 = (void*)0;
                        int32_t **l_853 = (void*)0;
                        int32_t **l_854 = &l_785;
                        p_2052->g_302 = l_849;
                        (*p_2052->g_388) = l_850;
                        (*l_776) = ((void*)0 != l_851[6]);
                        (*l_854) = l_850;
                    }
                    l_857++;
                }
                else
                { /* block id: 264 */
                    int32_t **l_868 = &l_671;
                    int32_t *l_869 = &p_2052->g_36;
                    int32_t *l_870 = (void*)0;
                    int32_t *l_871 = (void*)0;
                    int32_t *l_872 = (void*)0;
                    int32_t *l_873[10] = {&l_548,&l_791,(void*)0,&l_791,&l_548,&l_548,&l_791,(void*)0,&l_791,&l_548};
                    int i;
                    for (l_801 = (-22); (l_801 < 23); l_801 = safe_add_func_uint64_t_u_u(l_801, 9))
                    { /* block id: 267 */
                        l_863[1][0][0] = l_862;
                        l_867 = ((((VECTOR(int64_t, 16))(p_2052->g_866.ywzzyxyxwxxzwxxx)).sc != ((void*)0 != p_2052->g_206[2][2])) , &l_356);
                    }
                    (*l_868) = &l_761[6][6][2];
                    --l_876;
                    (*l_868) = &l_789;
                }
                (*l_849) = p_2052->g_879;
            }
            for (l_814 = 11; (l_814 > 4); l_814 = safe_sub_func_uint8_t_u_u(l_814, 1))
            { /* block id: 279 */
                uint64_t l_889 = 0x8C23CBCC151DB220L;
                if (p_121)
                { /* block id: 280 */
                    struct S1 *l_882 = &p_2052->g_41;
                    (*l_656) ^= ((void*)0 != l_882);
                }
                else
                { /* block id: 282 */
                    int8_t l_888 = (-1L);
                    for (p_2052->g_829.f1 = (-23); (p_2052->g_829.f1 == 4); p_2052->g_829.f1 = safe_add_func_int8_t_s_s(p_2052->g_829.f1, 1))
                    { /* block id: 285 */
                        int32_t *l_885 = &l_790[2][5][4];
                        int32_t *l_886 = &l_244[1];
                        int32_t *l_887[8][10] = {{&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4]},{&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4]},{&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4]},{&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4]},{&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4]},{&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4]},{&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4]},{&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4],&l_790[3][6][4]}};
                        int i, j;
                        --l_889;
                        if (p_121)
                            continue;
                        (*l_671) = l_888;
                    }
                }
                if (p_2052->g_41.f3)
                    goto lbl_909;
            }
        }
        (*l_656) &= (safe_rshift_func_uint8_t_u_s((p_120 <= ((safe_rshift_func_int8_t_s_u((l_839 != (p_2052->g_206[1][5] = l_204)), FAKE_DIVERGE(p_2052->local_1_offset, get_local_id(1), 10))) , 0xE9F4L)), 1));
lbl_909:
        l_906++;
        ++l_912[8][6];
    }
    (*l_656) = ((safe_sub_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_s(((((safe_add_func_uint8_t_u_u((((*p_2052->g_123) = (*p_2052->g_123)) | (safe_add_func_uint32_t_u_u((safe_div_func_uint8_t_u_u(((*l_656) == ((*p_2052->g_544) = GROUP_DIVERGE(2, 1))), (*l_656))), (safe_lshift_func_uint16_t_u_u((p_2052->g_106.f0 = (l_927 < GROUP_DIVERGE(2, 1))), ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(l_930.s0665)).lo))).hi))))), (*l_656))) > ((p_2052->g_931 , ((((*l_932) = &p_2052->g_123) != ((((safe_lshift_func_uint16_t_u_s((p_121 || p_2052->g_866.y), 12)) > p_121) , 0x20L) , &p_122)) > p_120)) > l_935)) , (-1L)) == 0x04L), p_2052->g_866.w)) == (*l_656)), (*l_656))) , l_936);
    (*l_937) = (l_656 = (void*)0);
    (*p_2052->g_938) = (*p_2052->g_686);
    return &p_2052->g_124;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_2053;
    struct S2* p_2052 = &c_2053;
    struct S2 c_2054 = {
        65528UL, // p_2052->g_6
        9UL, // p_2052->g_11
        1L, // p_2052->g_36
        &p_2052->g_36, // p_2052->g_35
        {0L,-3L,0x6298A20BL,-1L,1L,1UL,0x8474A89AEEB1CB69L,9L}, // p_2052->g_41
        0x3015D2C3574787CBL, // p_2052->g_61
        {0x752F5978B88EAD42L,0x51BA34BDL,-1L,-2L,0L,8UL,0x9E491D0AB3BAA24DL,0x39D0E3EE8C007EE7L}, // p_2052->g_69
        (VECTOR(int16_t, 2))((-1L), 0x0C21L), // p_2052->g_90
        {65535UL,0x5C70F91DL,6L,3UL}, // p_2052->g_106
        1UL, // p_2052->g_116
        3UL, // p_2052->g_124
        &p_2052->g_124, // p_2052->g_123
        &p_2052->g_41.f6, // p_2052->g_125
        (VECTOR(int32_t, 4))(0x690D09DFL, (VECTOR(int32_t, 2))(0x690D09DFL, 0L), 0L), // p_2052->g_130
        (VECTOR(int16_t, 8))(0x2EA5L, (VECTOR(int16_t, 4))(0x2EA5L, (VECTOR(int16_t, 2))(0x2EA5L, 9L), 9L), 9L, 0x2EA5L, 9L), // p_2052->g_161
        (VECTOR(uint16_t, 2))(0x8ACBL, 0x2F4FL), // p_2052->g_170
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xBF35L), 0xBF35L), 0xBF35L, 65535UL, 0xBF35L, (VECTOR(uint16_t, 2))(65535UL, 0xBF35L), (VECTOR(uint16_t, 2))(65535UL, 0xBF35L), 65535UL, 0xBF35L, 65535UL, 0xBF35L), // p_2052->g_178
        {{{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)}},{{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)}},{{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)}},{{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)}},{{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)}},{{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)}},{{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)}},{{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)},{0L,(-1L)}}}, // p_2052->g_181
        {65531UL,4294967287UL,0x6622L,0x97L}, // p_2052->g_187
        (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0L), 0L), 0L, (-3L), 0L, (VECTOR(int32_t, 2))((-3L), 0L), (VECTOR(int32_t, 2))((-3L), 0L), (-3L), 0L, (-3L), 0L), // p_2052->g_193
        {65535UL,4294967289UL,1L,0x0AL}, // p_2052->g_194
        {{&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6},{&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6},{&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6},{&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6},{&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6},{&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6},{&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6,&p_2052->g_41.f6}}, // p_2052->g_206
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x71L), 0x71L), 0x71L, 1L, 0x71L), // p_2052->g_209
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x2DA0L), 0x2DA0L), 0x2DA0L, 0UL, 0x2DA0L, (VECTOR(uint16_t, 2))(0UL, 0x2DA0L), (VECTOR(uint16_t, 2))(0UL, 0x2DA0L), 0UL, 0x2DA0L, 0UL, 0x2DA0L), // p_2052->g_227
        (VECTOR(uint16_t, 16))(0x4450L, (VECTOR(uint16_t, 4))(0x4450L, (VECTOR(uint16_t, 2))(0x4450L, 0xB1E1L), 0xB1E1L), 0xB1E1L, 0x4450L, 0xB1E1L, (VECTOR(uint16_t, 2))(0x4450L, 0xB1E1L), (VECTOR(uint16_t, 2))(0x4450L, 0xB1E1L), 0x4450L, 0xB1E1L, 0x4450L, 0xB1E1L), // p_2052->g_228
        (void*)0, // p_2052->g_302
        {&p_2052->g_41,&p_2052->g_41,&p_2052->g_41,&p_2052->g_41,&p_2052->g_41,&p_2052->g_41,&p_2052->g_41}, // p_2052->g_303
        (void*)0, // p_2052->g_337
        0xA31ED1E8L, // p_2052->g_341
        0x31EEL, // p_2052->g_349
        (VECTOR(uint32_t, 2))(1UL, 6UL), // p_2052->g_366
        (VECTOR(int32_t, 2))(0x52F2C552L, 1L), // p_2052->g_382
        0x0DL, // p_2052->g_385
        {0UL,0x9EAC183AL,0x46DBL,0x80L}, // p_2052->g_387
        {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}}, // p_2052->g_389
        &p_2052->g_389[3][1][0], // p_2052->g_388
        (VECTOR(uint16_t, 8))(0x362CL, (VECTOR(uint16_t, 4))(0x362CL, (VECTOR(uint16_t, 2))(0x362CL, 1UL), 1UL), 1UL, 0x362CL, 1UL), // p_2052->g_392
        (VECTOR(int16_t, 2))(0x0A91L, 7L), // p_2052->g_408
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xFFL), 0xFFL), 0xFFL, 255UL, 0xFFL, (VECTOR(uint8_t, 2))(255UL, 0xFFL), (VECTOR(uint8_t, 2))(255UL, 0xFFL), 255UL, 0xFFL, 255UL, 0xFFL), // p_2052->g_418
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 248UL), 248UL), 248UL, 1UL, 248UL, (VECTOR(uint8_t, 2))(1UL, 248UL), (VECTOR(uint8_t, 2))(1UL, 248UL), 1UL, 248UL, 1UL, 248UL), // p_2052->g_419
        (void*)0, // p_2052->g_477
        (VECTOR(int32_t, 16))(0x624597E2L, (VECTOR(int32_t, 4))(0x624597E2L, (VECTOR(int32_t, 2))(0x624597E2L, 4L), 4L), 4L, 0x624597E2L, 4L, (VECTOR(int32_t, 2))(0x624597E2L, 4L), (VECTOR(int32_t, 2))(0x624597E2L, 4L), 0x624597E2L, 4L, 0x624597E2L, 4L), // p_2052->g_497
        &p_2052->g_11, // p_2052->g_544
        (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 3L), 3L), // p_2052->g_558
        (VECTOR(int64_t, 16))(0x0B5BEAAF98596F8FL, (VECTOR(int64_t, 4))(0x0B5BEAAF98596F8FL, (VECTOR(int64_t, 2))(0x0B5BEAAF98596F8FL, 1L), 1L), 1L, 0x0B5BEAAF98596F8FL, 1L, (VECTOR(int64_t, 2))(0x0B5BEAAF98596F8FL, 1L), (VECTOR(int64_t, 2))(0x0B5BEAAF98596F8FL, 1L), 0x0B5BEAAF98596F8FL, 1L, 0x0B5BEAAF98596F8FL, 1L), // p_2052->g_594
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L)), // p_2052->g_597
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x3ECAL), 0x3ECAL), // p_2052->g_634
        &p_2052->g_106, // p_2052->g_653
        &p_2052->g_653, // p_2052->g_652
        &p_2052->g_389[1][5][1], // p_2052->g_661
        (void*)0, // p_2052->g_672
        {-1L,-1L,-10L,0x5EC6C866L,7L,0UL,0x9C8C2B97B6F4D523L,7L}, // p_2052->g_677
        {{0x6567B687D511E13BL,-1L,-7L,1L,4L,0x14E50828L,18446744073709551607UL,-1L},{0x6567B687D511E13BL,-1L,-7L,1L,4L,0x14E50828L,18446744073709551607UL,-1L},{0x6567B687D511E13BL,-1L,-7L,1L,4L,0x14E50828L,18446744073709551607UL,-1L},{0x6567B687D511E13BL,-1L,-7L,1L,4L,0x14E50828L,18446744073709551607UL,-1L},{0x6567B687D511E13BL,-1L,-7L,1L,4L,0x14E50828L,18446744073709551607UL,-1L},{0x6567B687D511E13BL,-1L,-7L,1L,4L,0x14E50828L,18446744073709551607UL,-1L},{0x6567B687D511E13BL,-1L,-7L,1L,4L,0x14E50828L,18446744073709551607UL,-1L},{0x6567B687D511E13BL,-1L,-7L,1L,4L,0x14E50828L,18446744073709551607UL,-1L},{0x6567B687D511E13BL,-1L,-7L,1L,4L,0x14E50828L,18446744073709551607UL,-1L}}, // p_2052->g_678
        (void*)0, // p_2052->g_688
        &p_2052->g_688, // p_2052->g_687
        &p_2052->g_687, // p_2052->g_686
        &p_2052->g_677.f3, // p_2052->g_691
        &p_2052->g_691, // p_2052->g_690
        &p_2052->g_690, // p_2052->g_689
        (VECTOR(uint64_t, 4))(0xD4E244E5658657BDL, (VECTOR(uint64_t, 2))(0xD4E244E5658657BDL, 18446744073709551615UL), 18446744073709551615UL), // p_2052->g_713
        (VECTOR(uint16_t, 2))(0xE2B6L, 65535UL), // p_2052->g_734
        (VECTOR(uint16_t, 2))(0x7ED6L, 1UL), // p_2052->g_735
        (VECTOR(uint16_t, 16))(0x3AAEL, (VECTOR(uint16_t, 4))(0x3AAEL, (VECTOR(uint16_t, 2))(0x3AAEL, 0xD7E9L), 0xD7E9L), 0xD7E9L, 0x3AAEL, 0xD7E9L, (VECTOR(uint16_t, 2))(0x3AAEL, 0xD7E9L), (VECTOR(uint16_t, 2))(0x3AAEL, 0xD7E9L), 0x3AAEL, 0xD7E9L, 0x3AAEL, 0xD7E9L), // p_2052->g_746
        9L, // p_2052->g_766
        {9L,0x635569AFL,0x15D7B2BFL,2L,0x03L,0xD73E2209L,0x085DB7C6523790FFL,0x5593CABE09817323L}, // p_2052->g_768
        1L, // p_2052->g_813
        {1L,0x5AD5A3AEL,0x703D2EE0L,0x08B0149EL,-10L,1UL,0UL,0L}, // p_2052->g_829
        (VECTOR(int64_t, 4))(0x75047F864AB65EA5L, (VECTOR(int64_t, 2))(0x75047F864AB65EA5L, 0x7283EB4C4DD5CB1BL), 0x7283EB4C4DD5CB1BL), // p_2052->g_866
        {-1L,0x669F0C1DL,-1L,0x1E8794BEL,-3L,0x39FC90AAL,0x8973B15AA3A3D537L,3L}, // p_2052->g_879
        {0UL,0x2A5A49B2L,0x0C35L,0UL}, // p_2052->g_931
        &p_2052->g_687, // p_2052->g_938
        {{{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}}},{{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}}},{{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}}},{{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}}},{{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}}},{{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}}},{{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}},{{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{0x7C91EC4063535114L,-1L,-1L,0x4B72E4C9L,-5L,0x5A779547L,0xAC7A3F5C9FD62C46L,0x52B0DDF8001E1AFAL},{1L,-10L,-1L,1L,0x02L,4294967289UL,0x2BFA1F5FD4D539F6L,-1L}}}}, // p_2052->g_940
        {-1L,0x4BDBB372L,0L,0L,9L,1UL,3UL,0x450D56CD8E1D75A0L}, // p_2052->g_942
        {0x789F2CAC0BF404D1L,4L,0x25360ECBL,1L,0L,4294967292UL,0UL,1L}, // p_2052->g_960
        &p_2052->g_11, // p_2052->g_983
        {{{65529UL,4294967291UL,1L,0xF8L},{0x9E24L,0xEBF75FEFL,7L,0x7AL},{65535UL,0xC0002E4EL,0x20A0L,0x0AL},{9UL,1UL,0L,255UL},{0x01E6L,0x55E52B9DL,0x3295L,0xBDL}},{{65529UL,4294967291UL,1L,0xF8L},{0x9E24L,0xEBF75FEFL,7L,0x7AL},{65535UL,0xC0002E4EL,0x20A0L,0x0AL},{9UL,1UL,0L,255UL},{0x01E6L,0x55E52B9DL,0x3295L,0xBDL}},{{65529UL,4294967291UL,1L,0xF8L},{0x9E24L,0xEBF75FEFL,7L,0x7AL},{65535UL,0xC0002E4EL,0x20A0L,0x0AL},{9UL,1UL,0L,255UL},{0x01E6L,0x55E52B9DL,0x3295L,0xBDL}},{{65529UL,4294967291UL,1L,0xF8L},{0x9E24L,0xEBF75FEFL,7L,0x7AL},{65535UL,0xC0002E4EL,0x20A0L,0x0AL},{9UL,1UL,0L,255UL},{0x01E6L,0x55E52B9DL,0x3295L,0xBDL}},{{65529UL,4294967291UL,1L,0xF8L},{0x9E24L,0xEBF75FEFL,7L,0x7AL},{65535UL,0xC0002E4EL,0x20A0L,0x0AL},{9UL,1UL,0L,255UL},{0x01E6L,0x55E52B9DL,0x3295L,0xBDL}},{{65529UL,4294967291UL,1L,0xF8L},{0x9E24L,0xEBF75FEFL,7L,0x7AL},{65535UL,0xC0002E4EL,0x20A0L,0x0AL},{9UL,1UL,0L,255UL},{0x01E6L,0x55E52B9DL,0x3295L,0xBDL}}}, // p_2052->g_986
        (VECTOR(int64_t, 2))(0x70261E0D1F251D95L, (-1L)), // p_2052->g_996
        (VECTOR(uint16_t, 2))(0UL, 0x1766L), // p_2052->g_1012
        0xA01859CAL, // p_2052->g_1023
        (VECTOR(int32_t, 2))(3L, 0x79496C0BL), // p_2052->g_1035
        (VECTOR(int32_t, 4))(0x5A7036AAL, (VECTOR(int32_t, 2))(0x5A7036AAL, 0x3C45EF85L), 0x3C45EF85L), // p_2052->g_1044
        {6UL,0xCA6DC7C1L,0x0006L,0UL}, // p_2052->g_1050
        (VECTOR(int8_t, 8))(0x4FL, (VECTOR(int8_t, 4))(0x4FL, (VECTOR(int8_t, 2))(0x4FL, 0x14L), 0x14L), 0x14L, 0x4FL, 0x14L), // p_2052->g_1080
        (void*)0, // p_2052->g_1086
        (void*)0, // p_2052->g_1087
        (VECTOR(int32_t, 4))(0x31350E1EL, (VECTOR(int32_t, 2))(0x31350E1EL, (-1L)), (-1L)), // p_2052->g_1093
        (VECTOR(int32_t, 8))(0x390720F8L, (VECTOR(int32_t, 4))(0x390720F8L, (VECTOR(int32_t, 2))(0x390720F8L, 0x5DBD131CL), 0x5DBD131CL), 0x5DBD131CL, 0x390720F8L, 0x5DBD131CL), // p_2052->g_1095
        (VECTOR(uint16_t, 4))(0x0E92L, (VECTOR(uint16_t, 2))(0x0E92L, 9UL), 9UL), // p_2052->g_1103
        (VECTOR(uint16_t, 16))(0x8C1BL, (VECTOR(uint16_t, 4))(0x8C1BL, (VECTOR(uint16_t, 2))(0x8C1BL, 0x106FL), 0x106FL), 0x106FL, 0x8C1BL, 0x106FL, (VECTOR(uint16_t, 2))(0x8C1BL, 0x106FL), (VECTOR(uint16_t, 2))(0x8C1BL, 0x106FL), 0x8C1BL, 0x106FL, 0x8C1BL, 0x106FL), // p_2052->g_1106
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x719BL), 0x719BL), 0x719BL, 1UL, 0x719BL), // p_2052->g_1130
        (VECTOR(uint16_t, 4))(0x7100L, (VECTOR(uint16_t, 2))(0x7100L, 1UL), 1UL), // p_2052->g_1131
        (VECTOR(uint16_t, 2))(0x3CFAL, 0x3305L), // p_2052->g_1140
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x7DL), 0x7DL), // p_2052->g_1146
        (VECTOR(uint8_t, 2))(0xEEL, 0x12L), // p_2052->g_1147
        (VECTOR(uint8_t, 2))(1UL, 0x8FL), // p_2052->g_1150
        (VECTOR(int8_t, 16))(0x13L, (VECTOR(int8_t, 4))(0x13L, (VECTOR(int8_t, 2))(0x13L, 0x31L), 0x31L), 0x31L, 0x13L, 0x31L, (VECTOR(int8_t, 2))(0x13L, 0x31L), (VECTOR(int8_t, 2))(0x13L, 0x31L), 0x13L, 0x31L, 0x13L, 0x31L), // p_2052->g_1151
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint32_t, 2))(0UL, 1UL), (VECTOR(uint32_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL), // p_2052->g_1170
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L)), // p_2052->g_1185
        {0x1C9237F75D467660L,0x549C5506L,0x09F8590AL,-1L,-10L,4294967295UL,0x35A212114DC89D41L,0x594B2C6446CC65AFL}, // p_2052->g_1194
        (VECTOR(uint8_t, 4))(0xC3L, (VECTOR(uint8_t, 2))(0xC3L, 0x51L), 0x51L), // p_2052->g_1220
        (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xD0475B02L), 0xD0475B02L), // p_2052->g_1260
        {1L,-1L,1L,0x538CE44AL,0x10L,0xE5A2674BL,0x6BF86567C7EDE196L,1L}, // p_2052->g_1269
        {8L,-1L,0x45BB4D55L,0x16A3B730L,0L,0x7246C7B4L,0x6A6BE28AFAAA0346L,0x17765CA6FBF31ADCL}, // p_2052->g_1270
        0x29L, // p_2052->g_1290
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x813A0DA7L), 0x813A0DA7L), 0x813A0DA7L, 4294967295UL, 0x813A0DA7L, (VECTOR(uint32_t, 2))(4294967295UL, 0x813A0DA7L), (VECTOR(uint32_t, 2))(4294967295UL, 0x813A0DA7L), 4294967295UL, 0x813A0DA7L, 4294967295UL, 0x813A0DA7L), // p_2052->g_1331
        (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x3BBC0EE4L), 0x3BBC0EE4L), 0x3BBC0EE4L, (-2L), 0x3BBC0EE4L), // p_2052->g_1351
        (VECTOR(uint8_t, 4))(0xF7L, (VECTOR(uint8_t, 2))(0xF7L, 0xC8L), 0xC8L), // p_2052->g_1360
        {7L,0x5CEDB1A7L,0x3020B2DEL,0x7E5F8F0BL,6L,4294967290UL,4UL,-1L}, // p_2052->g_1366
        {5L,1L,-3L,3L,-7L,4294967287UL,0xD55FAF230988A21DL,9L}, // p_2052->g_1367
        (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0UL), 0UL), // p_2052->g_1421
        (VECTOR(int16_t, 2))(0L, 1L), // p_2052->g_1439
        {0x110BL,4294967295UL,8L,0UL}, // p_2052->g_1474
        {6L,0x6D9E3C75L,1L,0x6A349F03L,0x3CL,1UL,0x193B4A5A0E8362BCL,2L}, // p_2052->g_1501
        {&p_2052->g_389[6][3][1],&p_2052->g_389[6][3][1],&p_2052->g_389[6][3][1],&p_2052->g_389[6][3][1],&p_2052->g_389[6][3][1],&p_2052->g_389[6][3][1],&p_2052->g_389[6][3][1],&p_2052->g_389[6][3][1],&p_2052->g_389[6][3][1]}, // p_2052->g_1504
        &p_2052->g_389[0][3][0], // p_2052->g_1505
        {0x100BL,4UL,-3L,0xD3L}, // p_2052->g_1554
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-1L)), (-1L)), // p_2052->g_1563
        (VECTOR(int16_t, 2))(0x07A0L, 0x5B36L), // p_2052->g_1579
        (VECTOR(uint16_t, 2))(0UL, 3UL), // p_2052->g_1580
        (VECTOR(uint16_t, 16))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0x5E8FL), 0x5E8FL), 0x5E8FL, 8UL, 0x5E8FL, (VECTOR(uint16_t, 2))(8UL, 0x5E8FL), (VECTOR(uint16_t, 2))(8UL, 0x5E8FL), 8UL, 0x5E8FL, 8UL, 0x5E8FL), // p_2052->g_1588
        {65530UL,4294967291UL,0x5845L,246UL}, // p_2052->g_1619
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 2L), 2L), // p_2052->g_1620
        0x6B966C4CL, // p_2052->g_1638
        &p_2052->g_389[3][1][0], // p_2052->g_1657
        &p_2052->g_61, // p_2052->g_1664
        &p_2052->g_1619.f2, // p_2052->g_1675
        &p_2052->g_1675, // p_2052->g_1674
        (VECTOR(int16_t, 2))(0x3E4BL, 3L), // p_2052->g_1699
        &p_2052->g_389[3][1][0], // p_2052->g_1716
        (VECTOR(uint8_t, 16))(0xEDL, (VECTOR(uint8_t, 4))(0xEDL, (VECTOR(uint8_t, 2))(0xEDL, 0x74L), 0x74L), 0x74L, 0xEDL, 0x74L, (VECTOR(uint8_t, 2))(0xEDL, 0x74L), (VECTOR(uint8_t, 2))(0xEDL, 0x74L), 0xEDL, 0x74L, 0xEDL, 0x74L), // p_2052->g_1726
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x32BC5FE4L), 0x32BC5FE4L), 0x32BC5FE4L, 4294967295UL, 0x32BC5FE4L, (VECTOR(uint32_t, 2))(4294967295UL, 0x32BC5FE4L), (VECTOR(uint32_t, 2))(4294967295UL, 0x32BC5FE4L), 4294967295UL, 0x32BC5FE4L, 4294967295UL, 0x32BC5FE4L), // p_2052->g_1741
        &p_2052->g_653, // p_2052->g_1746
        {{&p_2052->g_1746,&p_2052->g_1746,&p_2052->g_1746},{&p_2052->g_1746,&p_2052->g_1746,&p_2052->g_1746},{&p_2052->g_1746,&p_2052->g_1746,&p_2052->g_1746},{&p_2052->g_1746,&p_2052->g_1746,&p_2052->g_1746},{&p_2052->g_1746,&p_2052->g_1746,&p_2052->g_1746},{&p_2052->g_1746,&p_2052->g_1746,&p_2052->g_1746}}, // p_2052->g_1745
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2052->g_1747
        (VECTOR(int32_t, 4))(0x0700946EL, (VECTOR(int32_t, 2))(0x0700946EL, (-1L)), (-1L)), // p_2052->g_1755
        (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 8L), 8L), // p_2052->g_1765
        (VECTOR(uint32_t, 4))(0xB08954A7L, (VECTOR(uint32_t, 2))(0xB08954A7L, 0xA9235955L), 0xA9235955L), // p_2052->g_1776
        (void*)0, // p_2052->g_1779
        (void*)0, // p_2052->g_1780
        (VECTOR(int8_t, 16))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x25L), 0x25L), 0x25L, (-2L), 0x25L, (VECTOR(int8_t, 2))((-2L), 0x25L), (VECTOR(int8_t, 2))((-2L), 0x25L), (-2L), 0x25L, (-2L), 0x25L), // p_2052->g_1798
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x3EL), 0x3EL), // p_2052->g_1800
        (VECTOR(int8_t, 2))(0x25L, 0x5BL), // p_2052->g_1802
        {(void*)0,(void*)0,(void*)0}, // p_2052->g_1805
        (VECTOR(int8_t, 2))(0x69L, 1L), // p_2052->g_1813
        (VECTOR(int8_t, 16))(0x29L, (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, 1L), 1L), 1L, 0x29L, 1L, (VECTOR(int8_t, 2))(0x29L, 1L), (VECTOR(int8_t, 2))(0x29L, 1L), 0x29L, 1L, 0x29L, 1L), // p_2052->g_1825
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-10L)), (-10L)), (-10L), (-1L), (-10L), (VECTOR(int16_t, 2))((-1L), (-10L)), (VECTOR(int16_t, 2))((-1L), (-10L)), (-1L), (-10L), (-1L), (-10L)), // p_2052->g_1826
        (VECTOR(int16_t, 8))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0L), 0L), 0L, 5L, 0L), // p_2052->g_1831
        {0x7928430A39AEFE70L,0x5198CE13L,0L,0x7BD005C7L,-5L,1UL,1UL,0x3A34EDBC2C952FF0L}, // p_2052->g_1836
        &p_2052->g_389[5][3][0], // p_2052->g_1853
        (VECTOR(uint16_t, 8))(0x9135L, (VECTOR(uint16_t, 4))(0x9135L, (VECTOR(uint16_t, 2))(0x9135L, 1UL), 1UL), 1UL, 0x9135L, 1UL), // p_2052->g_1888
        (void*)0, // p_2052->g_1911
        (void*)0, // p_2052->g_1914
        (void*)0, // p_2052->g_1916
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2052->g_1918
        {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}}, // p_2052->g_1919
        {{-1L,0x6C074E18L,-3L,-3L,0L,4294967287UL,0xEEFFEC1938DDEC3BL,0x20AB9C8B94FE420CL},{-1L,0x6C074E18L,-3L,-3L,0L,4294967287UL,0xEEFFEC1938DDEC3BL,0x20AB9C8B94FE420CL},{-1L,0x6C074E18L,-3L,-3L,0L,4294967287UL,0xEEFFEC1938DDEC3BL,0x20AB9C8B94FE420CL},{-1L,0x6C074E18L,-3L,-3L,0L,4294967287UL,0xEEFFEC1938DDEC3BL,0x20AB9C8B94FE420CL},{-1L,0x6C074E18L,-3L,-3L,0L,4294967287UL,0xEEFFEC1938DDEC3BL,0x20AB9C8B94FE420CL},{-1L,0x6C074E18L,-3L,-3L,0L,4294967287UL,0xEEFFEC1938DDEC3BL,0x20AB9C8B94FE420CL},{-1L,0x6C074E18L,-3L,-3L,0L,4294967287UL,0xEEFFEC1938DDEC3BL,0x20AB9C8B94FE420CL}}, // p_2052->g_1921
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x4FL), 0x4FL), 0x4FL, 0UL, 0x4FL), // p_2052->g_1951
        (VECTOR(int64_t, 2))(0L, (-1L)), // p_2052->g_1965
        (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 0x64L), 0x64L), // p_2052->g_2032
        (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 1L), 1L), // p_2052->g_2033
        (VECTOR(int8_t, 4))(0x10L, (VECTOR(int8_t, 2))(0x10L, (-3L)), (-3L)), // p_2052->g_2035
        0x213630AEL, // p_2052->g_2046
        {1L,8L,7L,0L,1L,0x26CA1F65L,18446744073709551615UL,0x58CCD44DEE4DBFFFL}, // p_2052->g_2050
        {0x262518B700DE6104L,1L,0x4A6079DCL,-4L,-1L,4294967295UL,1UL,0x16AD1C992C85C006L}, // p_2052->g_2051
        sequence_input[get_global_id(0)], // p_2052->global_0_offset
        sequence_input[get_global_id(1)], // p_2052->global_1_offset
        sequence_input[get_global_id(2)], // p_2052->global_2_offset
        sequence_input[get_local_id(0)], // p_2052->local_0_offset
        sequence_input[get_local_id(1)], // p_2052->local_1_offset
        sequence_input[get_local_id(2)], // p_2052->local_2_offset
        sequence_input[get_group_id(0)], // p_2052->group_0_offset
        sequence_input[get_group_id(1)], // p_2052->group_1_offset
        sequence_input[get_group_id(2)], // p_2052->group_2_offset
    };
    c_2053 = c_2054;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2052);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2052->g_6, "p_2052->g_6", print_hash_value);
    transparent_crc(p_2052->g_11, "p_2052->g_11", print_hash_value);
    transparent_crc(p_2052->g_36, "p_2052->g_36", print_hash_value);
    transparent_crc(p_2052->g_41.f0, "p_2052->g_41.f0", print_hash_value);
    transparent_crc(p_2052->g_41.f1, "p_2052->g_41.f1", print_hash_value);
    transparent_crc(p_2052->g_41.f2, "p_2052->g_41.f2", print_hash_value);
    transparent_crc(p_2052->g_41.f3, "p_2052->g_41.f3", print_hash_value);
    transparent_crc(p_2052->g_41.f4, "p_2052->g_41.f4", print_hash_value);
    transparent_crc(p_2052->g_41.f5, "p_2052->g_41.f5", print_hash_value);
    transparent_crc(p_2052->g_41.f6, "p_2052->g_41.f6", print_hash_value);
    transparent_crc(p_2052->g_41.f7, "p_2052->g_41.f7", print_hash_value);
    transparent_crc(p_2052->g_61, "p_2052->g_61", print_hash_value);
    transparent_crc(p_2052->g_69.f0, "p_2052->g_69.f0", print_hash_value);
    transparent_crc(p_2052->g_69.f1, "p_2052->g_69.f1", print_hash_value);
    transparent_crc(p_2052->g_69.f2, "p_2052->g_69.f2", print_hash_value);
    transparent_crc(p_2052->g_69.f3, "p_2052->g_69.f3", print_hash_value);
    transparent_crc(p_2052->g_69.f4, "p_2052->g_69.f4", print_hash_value);
    transparent_crc(p_2052->g_69.f5, "p_2052->g_69.f5", print_hash_value);
    transparent_crc(p_2052->g_69.f6, "p_2052->g_69.f6", print_hash_value);
    transparent_crc(p_2052->g_69.f7, "p_2052->g_69.f7", print_hash_value);
    transparent_crc(p_2052->g_90.x, "p_2052->g_90.x", print_hash_value);
    transparent_crc(p_2052->g_90.y, "p_2052->g_90.y", print_hash_value);
    transparent_crc(p_2052->g_106.f0, "p_2052->g_106.f0", print_hash_value);
    transparent_crc(p_2052->g_106.f1, "p_2052->g_106.f1", print_hash_value);
    transparent_crc(p_2052->g_106.f2, "p_2052->g_106.f2", print_hash_value);
    transparent_crc(p_2052->g_106.f3, "p_2052->g_106.f3", print_hash_value);
    transparent_crc(p_2052->g_116, "p_2052->g_116", print_hash_value);
    transparent_crc(p_2052->g_124, "p_2052->g_124", print_hash_value);
    transparent_crc(p_2052->g_130.x, "p_2052->g_130.x", print_hash_value);
    transparent_crc(p_2052->g_130.y, "p_2052->g_130.y", print_hash_value);
    transparent_crc(p_2052->g_130.z, "p_2052->g_130.z", print_hash_value);
    transparent_crc(p_2052->g_130.w, "p_2052->g_130.w", print_hash_value);
    transparent_crc(p_2052->g_161.s0, "p_2052->g_161.s0", print_hash_value);
    transparent_crc(p_2052->g_161.s1, "p_2052->g_161.s1", print_hash_value);
    transparent_crc(p_2052->g_161.s2, "p_2052->g_161.s2", print_hash_value);
    transparent_crc(p_2052->g_161.s3, "p_2052->g_161.s3", print_hash_value);
    transparent_crc(p_2052->g_161.s4, "p_2052->g_161.s4", print_hash_value);
    transparent_crc(p_2052->g_161.s5, "p_2052->g_161.s5", print_hash_value);
    transparent_crc(p_2052->g_161.s6, "p_2052->g_161.s6", print_hash_value);
    transparent_crc(p_2052->g_161.s7, "p_2052->g_161.s7", print_hash_value);
    transparent_crc(p_2052->g_170.x, "p_2052->g_170.x", print_hash_value);
    transparent_crc(p_2052->g_170.y, "p_2052->g_170.y", print_hash_value);
    transparent_crc(p_2052->g_178.s0, "p_2052->g_178.s0", print_hash_value);
    transparent_crc(p_2052->g_178.s1, "p_2052->g_178.s1", print_hash_value);
    transparent_crc(p_2052->g_178.s2, "p_2052->g_178.s2", print_hash_value);
    transparent_crc(p_2052->g_178.s3, "p_2052->g_178.s3", print_hash_value);
    transparent_crc(p_2052->g_178.s4, "p_2052->g_178.s4", print_hash_value);
    transparent_crc(p_2052->g_178.s5, "p_2052->g_178.s5", print_hash_value);
    transparent_crc(p_2052->g_178.s6, "p_2052->g_178.s6", print_hash_value);
    transparent_crc(p_2052->g_178.s7, "p_2052->g_178.s7", print_hash_value);
    transparent_crc(p_2052->g_178.s8, "p_2052->g_178.s8", print_hash_value);
    transparent_crc(p_2052->g_178.s9, "p_2052->g_178.s9", print_hash_value);
    transparent_crc(p_2052->g_178.sa, "p_2052->g_178.sa", print_hash_value);
    transparent_crc(p_2052->g_178.sb, "p_2052->g_178.sb", print_hash_value);
    transparent_crc(p_2052->g_178.sc, "p_2052->g_178.sc", print_hash_value);
    transparent_crc(p_2052->g_178.sd, "p_2052->g_178.sd", print_hash_value);
    transparent_crc(p_2052->g_178.se, "p_2052->g_178.se", print_hash_value);
    transparent_crc(p_2052->g_178.sf, "p_2052->g_178.sf", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2052->g_181[i][j][k], "p_2052->g_181[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2052->g_187.f0, "p_2052->g_187.f0", print_hash_value);
    transparent_crc(p_2052->g_187.f1, "p_2052->g_187.f1", print_hash_value);
    transparent_crc(p_2052->g_187.f2, "p_2052->g_187.f2", print_hash_value);
    transparent_crc(p_2052->g_187.f3, "p_2052->g_187.f3", print_hash_value);
    transparent_crc(p_2052->g_193.s0, "p_2052->g_193.s0", print_hash_value);
    transparent_crc(p_2052->g_193.s1, "p_2052->g_193.s1", print_hash_value);
    transparent_crc(p_2052->g_193.s2, "p_2052->g_193.s2", print_hash_value);
    transparent_crc(p_2052->g_193.s3, "p_2052->g_193.s3", print_hash_value);
    transparent_crc(p_2052->g_193.s4, "p_2052->g_193.s4", print_hash_value);
    transparent_crc(p_2052->g_193.s5, "p_2052->g_193.s5", print_hash_value);
    transparent_crc(p_2052->g_193.s6, "p_2052->g_193.s6", print_hash_value);
    transparent_crc(p_2052->g_193.s7, "p_2052->g_193.s7", print_hash_value);
    transparent_crc(p_2052->g_193.s8, "p_2052->g_193.s8", print_hash_value);
    transparent_crc(p_2052->g_193.s9, "p_2052->g_193.s9", print_hash_value);
    transparent_crc(p_2052->g_193.sa, "p_2052->g_193.sa", print_hash_value);
    transparent_crc(p_2052->g_193.sb, "p_2052->g_193.sb", print_hash_value);
    transparent_crc(p_2052->g_193.sc, "p_2052->g_193.sc", print_hash_value);
    transparent_crc(p_2052->g_193.sd, "p_2052->g_193.sd", print_hash_value);
    transparent_crc(p_2052->g_193.se, "p_2052->g_193.se", print_hash_value);
    transparent_crc(p_2052->g_193.sf, "p_2052->g_193.sf", print_hash_value);
    transparent_crc(p_2052->g_194.f0, "p_2052->g_194.f0", print_hash_value);
    transparent_crc(p_2052->g_194.f1, "p_2052->g_194.f1", print_hash_value);
    transparent_crc(p_2052->g_194.f2, "p_2052->g_194.f2", print_hash_value);
    transparent_crc(p_2052->g_194.f3, "p_2052->g_194.f3", print_hash_value);
    transparent_crc(p_2052->g_209.s0, "p_2052->g_209.s0", print_hash_value);
    transparent_crc(p_2052->g_209.s1, "p_2052->g_209.s1", print_hash_value);
    transparent_crc(p_2052->g_209.s2, "p_2052->g_209.s2", print_hash_value);
    transparent_crc(p_2052->g_209.s3, "p_2052->g_209.s3", print_hash_value);
    transparent_crc(p_2052->g_209.s4, "p_2052->g_209.s4", print_hash_value);
    transparent_crc(p_2052->g_209.s5, "p_2052->g_209.s5", print_hash_value);
    transparent_crc(p_2052->g_209.s6, "p_2052->g_209.s6", print_hash_value);
    transparent_crc(p_2052->g_209.s7, "p_2052->g_209.s7", print_hash_value);
    transparent_crc(p_2052->g_227.s0, "p_2052->g_227.s0", print_hash_value);
    transparent_crc(p_2052->g_227.s1, "p_2052->g_227.s1", print_hash_value);
    transparent_crc(p_2052->g_227.s2, "p_2052->g_227.s2", print_hash_value);
    transparent_crc(p_2052->g_227.s3, "p_2052->g_227.s3", print_hash_value);
    transparent_crc(p_2052->g_227.s4, "p_2052->g_227.s4", print_hash_value);
    transparent_crc(p_2052->g_227.s5, "p_2052->g_227.s5", print_hash_value);
    transparent_crc(p_2052->g_227.s6, "p_2052->g_227.s6", print_hash_value);
    transparent_crc(p_2052->g_227.s7, "p_2052->g_227.s7", print_hash_value);
    transparent_crc(p_2052->g_227.s8, "p_2052->g_227.s8", print_hash_value);
    transparent_crc(p_2052->g_227.s9, "p_2052->g_227.s9", print_hash_value);
    transparent_crc(p_2052->g_227.sa, "p_2052->g_227.sa", print_hash_value);
    transparent_crc(p_2052->g_227.sb, "p_2052->g_227.sb", print_hash_value);
    transparent_crc(p_2052->g_227.sc, "p_2052->g_227.sc", print_hash_value);
    transparent_crc(p_2052->g_227.sd, "p_2052->g_227.sd", print_hash_value);
    transparent_crc(p_2052->g_227.se, "p_2052->g_227.se", print_hash_value);
    transparent_crc(p_2052->g_227.sf, "p_2052->g_227.sf", print_hash_value);
    transparent_crc(p_2052->g_228.s0, "p_2052->g_228.s0", print_hash_value);
    transparent_crc(p_2052->g_228.s1, "p_2052->g_228.s1", print_hash_value);
    transparent_crc(p_2052->g_228.s2, "p_2052->g_228.s2", print_hash_value);
    transparent_crc(p_2052->g_228.s3, "p_2052->g_228.s3", print_hash_value);
    transparent_crc(p_2052->g_228.s4, "p_2052->g_228.s4", print_hash_value);
    transparent_crc(p_2052->g_228.s5, "p_2052->g_228.s5", print_hash_value);
    transparent_crc(p_2052->g_228.s6, "p_2052->g_228.s6", print_hash_value);
    transparent_crc(p_2052->g_228.s7, "p_2052->g_228.s7", print_hash_value);
    transparent_crc(p_2052->g_228.s8, "p_2052->g_228.s8", print_hash_value);
    transparent_crc(p_2052->g_228.s9, "p_2052->g_228.s9", print_hash_value);
    transparent_crc(p_2052->g_228.sa, "p_2052->g_228.sa", print_hash_value);
    transparent_crc(p_2052->g_228.sb, "p_2052->g_228.sb", print_hash_value);
    transparent_crc(p_2052->g_228.sc, "p_2052->g_228.sc", print_hash_value);
    transparent_crc(p_2052->g_228.sd, "p_2052->g_228.sd", print_hash_value);
    transparent_crc(p_2052->g_228.se, "p_2052->g_228.se", print_hash_value);
    transparent_crc(p_2052->g_228.sf, "p_2052->g_228.sf", print_hash_value);
    transparent_crc(p_2052->g_341, "p_2052->g_341", print_hash_value);
    transparent_crc(p_2052->g_349, "p_2052->g_349", print_hash_value);
    transparent_crc(p_2052->g_366.x, "p_2052->g_366.x", print_hash_value);
    transparent_crc(p_2052->g_366.y, "p_2052->g_366.y", print_hash_value);
    transparent_crc(p_2052->g_382.x, "p_2052->g_382.x", print_hash_value);
    transparent_crc(p_2052->g_382.y, "p_2052->g_382.y", print_hash_value);
    transparent_crc(p_2052->g_385, "p_2052->g_385", print_hash_value);
    transparent_crc(p_2052->g_387.f0, "p_2052->g_387.f0", print_hash_value);
    transparent_crc(p_2052->g_387.f1, "p_2052->g_387.f1", print_hash_value);
    transparent_crc(p_2052->g_387.f2, "p_2052->g_387.f2", print_hash_value);
    transparent_crc(p_2052->g_387.f3, "p_2052->g_387.f3", print_hash_value);
    transparent_crc(p_2052->g_392.s0, "p_2052->g_392.s0", print_hash_value);
    transparent_crc(p_2052->g_392.s1, "p_2052->g_392.s1", print_hash_value);
    transparent_crc(p_2052->g_392.s2, "p_2052->g_392.s2", print_hash_value);
    transparent_crc(p_2052->g_392.s3, "p_2052->g_392.s3", print_hash_value);
    transparent_crc(p_2052->g_392.s4, "p_2052->g_392.s4", print_hash_value);
    transparent_crc(p_2052->g_392.s5, "p_2052->g_392.s5", print_hash_value);
    transparent_crc(p_2052->g_392.s6, "p_2052->g_392.s6", print_hash_value);
    transparent_crc(p_2052->g_392.s7, "p_2052->g_392.s7", print_hash_value);
    transparent_crc(p_2052->g_408.x, "p_2052->g_408.x", print_hash_value);
    transparent_crc(p_2052->g_408.y, "p_2052->g_408.y", print_hash_value);
    transparent_crc(p_2052->g_418.s0, "p_2052->g_418.s0", print_hash_value);
    transparent_crc(p_2052->g_418.s1, "p_2052->g_418.s1", print_hash_value);
    transparent_crc(p_2052->g_418.s2, "p_2052->g_418.s2", print_hash_value);
    transparent_crc(p_2052->g_418.s3, "p_2052->g_418.s3", print_hash_value);
    transparent_crc(p_2052->g_418.s4, "p_2052->g_418.s4", print_hash_value);
    transparent_crc(p_2052->g_418.s5, "p_2052->g_418.s5", print_hash_value);
    transparent_crc(p_2052->g_418.s6, "p_2052->g_418.s6", print_hash_value);
    transparent_crc(p_2052->g_418.s7, "p_2052->g_418.s7", print_hash_value);
    transparent_crc(p_2052->g_418.s8, "p_2052->g_418.s8", print_hash_value);
    transparent_crc(p_2052->g_418.s9, "p_2052->g_418.s9", print_hash_value);
    transparent_crc(p_2052->g_418.sa, "p_2052->g_418.sa", print_hash_value);
    transparent_crc(p_2052->g_418.sb, "p_2052->g_418.sb", print_hash_value);
    transparent_crc(p_2052->g_418.sc, "p_2052->g_418.sc", print_hash_value);
    transparent_crc(p_2052->g_418.sd, "p_2052->g_418.sd", print_hash_value);
    transparent_crc(p_2052->g_418.se, "p_2052->g_418.se", print_hash_value);
    transparent_crc(p_2052->g_418.sf, "p_2052->g_418.sf", print_hash_value);
    transparent_crc(p_2052->g_419.s0, "p_2052->g_419.s0", print_hash_value);
    transparent_crc(p_2052->g_419.s1, "p_2052->g_419.s1", print_hash_value);
    transparent_crc(p_2052->g_419.s2, "p_2052->g_419.s2", print_hash_value);
    transparent_crc(p_2052->g_419.s3, "p_2052->g_419.s3", print_hash_value);
    transparent_crc(p_2052->g_419.s4, "p_2052->g_419.s4", print_hash_value);
    transparent_crc(p_2052->g_419.s5, "p_2052->g_419.s5", print_hash_value);
    transparent_crc(p_2052->g_419.s6, "p_2052->g_419.s6", print_hash_value);
    transparent_crc(p_2052->g_419.s7, "p_2052->g_419.s7", print_hash_value);
    transparent_crc(p_2052->g_419.s8, "p_2052->g_419.s8", print_hash_value);
    transparent_crc(p_2052->g_419.s9, "p_2052->g_419.s9", print_hash_value);
    transparent_crc(p_2052->g_419.sa, "p_2052->g_419.sa", print_hash_value);
    transparent_crc(p_2052->g_419.sb, "p_2052->g_419.sb", print_hash_value);
    transparent_crc(p_2052->g_419.sc, "p_2052->g_419.sc", print_hash_value);
    transparent_crc(p_2052->g_419.sd, "p_2052->g_419.sd", print_hash_value);
    transparent_crc(p_2052->g_419.se, "p_2052->g_419.se", print_hash_value);
    transparent_crc(p_2052->g_419.sf, "p_2052->g_419.sf", print_hash_value);
    transparent_crc(p_2052->g_497.s0, "p_2052->g_497.s0", print_hash_value);
    transparent_crc(p_2052->g_497.s1, "p_2052->g_497.s1", print_hash_value);
    transparent_crc(p_2052->g_497.s2, "p_2052->g_497.s2", print_hash_value);
    transparent_crc(p_2052->g_497.s3, "p_2052->g_497.s3", print_hash_value);
    transparent_crc(p_2052->g_497.s4, "p_2052->g_497.s4", print_hash_value);
    transparent_crc(p_2052->g_497.s5, "p_2052->g_497.s5", print_hash_value);
    transparent_crc(p_2052->g_497.s6, "p_2052->g_497.s6", print_hash_value);
    transparent_crc(p_2052->g_497.s7, "p_2052->g_497.s7", print_hash_value);
    transparent_crc(p_2052->g_497.s8, "p_2052->g_497.s8", print_hash_value);
    transparent_crc(p_2052->g_497.s9, "p_2052->g_497.s9", print_hash_value);
    transparent_crc(p_2052->g_497.sa, "p_2052->g_497.sa", print_hash_value);
    transparent_crc(p_2052->g_497.sb, "p_2052->g_497.sb", print_hash_value);
    transparent_crc(p_2052->g_497.sc, "p_2052->g_497.sc", print_hash_value);
    transparent_crc(p_2052->g_497.sd, "p_2052->g_497.sd", print_hash_value);
    transparent_crc(p_2052->g_497.se, "p_2052->g_497.se", print_hash_value);
    transparent_crc(p_2052->g_497.sf, "p_2052->g_497.sf", print_hash_value);
    transparent_crc(p_2052->g_558.x, "p_2052->g_558.x", print_hash_value);
    transparent_crc(p_2052->g_558.y, "p_2052->g_558.y", print_hash_value);
    transparent_crc(p_2052->g_558.z, "p_2052->g_558.z", print_hash_value);
    transparent_crc(p_2052->g_558.w, "p_2052->g_558.w", print_hash_value);
    transparent_crc(p_2052->g_594.s0, "p_2052->g_594.s0", print_hash_value);
    transparent_crc(p_2052->g_594.s1, "p_2052->g_594.s1", print_hash_value);
    transparent_crc(p_2052->g_594.s2, "p_2052->g_594.s2", print_hash_value);
    transparent_crc(p_2052->g_594.s3, "p_2052->g_594.s3", print_hash_value);
    transparent_crc(p_2052->g_594.s4, "p_2052->g_594.s4", print_hash_value);
    transparent_crc(p_2052->g_594.s5, "p_2052->g_594.s5", print_hash_value);
    transparent_crc(p_2052->g_594.s6, "p_2052->g_594.s6", print_hash_value);
    transparent_crc(p_2052->g_594.s7, "p_2052->g_594.s7", print_hash_value);
    transparent_crc(p_2052->g_594.s8, "p_2052->g_594.s8", print_hash_value);
    transparent_crc(p_2052->g_594.s9, "p_2052->g_594.s9", print_hash_value);
    transparent_crc(p_2052->g_594.sa, "p_2052->g_594.sa", print_hash_value);
    transparent_crc(p_2052->g_594.sb, "p_2052->g_594.sb", print_hash_value);
    transparent_crc(p_2052->g_594.sc, "p_2052->g_594.sc", print_hash_value);
    transparent_crc(p_2052->g_594.sd, "p_2052->g_594.sd", print_hash_value);
    transparent_crc(p_2052->g_594.se, "p_2052->g_594.se", print_hash_value);
    transparent_crc(p_2052->g_594.sf, "p_2052->g_594.sf", print_hash_value);
    transparent_crc(p_2052->g_597.s0, "p_2052->g_597.s0", print_hash_value);
    transparent_crc(p_2052->g_597.s1, "p_2052->g_597.s1", print_hash_value);
    transparent_crc(p_2052->g_597.s2, "p_2052->g_597.s2", print_hash_value);
    transparent_crc(p_2052->g_597.s3, "p_2052->g_597.s3", print_hash_value);
    transparent_crc(p_2052->g_597.s4, "p_2052->g_597.s4", print_hash_value);
    transparent_crc(p_2052->g_597.s5, "p_2052->g_597.s5", print_hash_value);
    transparent_crc(p_2052->g_597.s6, "p_2052->g_597.s6", print_hash_value);
    transparent_crc(p_2052->g_597.s7, "p_2052->g_597.s7", print_hash_value);
    transparent_crc(p_2052->g_634.x, "p_2052->g_634.x", print_hash_value);
    transparent_crc(p_2052->g_634.y, "p_2052->g_634.y", print_hash_value);
    transparent_crc(p_2052->g_634.z, "p_2052->g_634.z", print_hash_value);
    transparent_crc(p_2052->g_634.w, "p_2052->g_634.w", print_hash_value);
    transparent_crc(p_2052->g_677.f0, "p_2052->g_677.f0", print_hash_value);
    transparent_crc(p_2052->g_677.f1, "p_2052->g_677.f1", print_hash_value);
    transparent_crc(p_2052->g_677.f2, "p_2052->g_677.f2", print_hash_value);
    transparent_crc(p_2052->g_677.f3, "p_2052->g_677.f3", print_hash_value);
    transparent_crc(p_2052->g_677.f4, "p_2052->g_677.f4", print_hash_value);
    transparent_crc(p_2052->g_677.f5, "p_2052->g_677.f5", print_hash_value);
    transparent_crc(p_2052->g_677.f6, "p_2052->g_677.f6", print_hash_value);
    transparent_crc(p_2052->g_677.f7, "p_2052->g_677.f7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2052->g_678[i].f0, "p_2052->g_678[i].f0", print_hash_value);
        transparent_crc(p_2052->g_678[i].f1, "p_2052->g_678[i].f1", print_hash_value);
        transparent_crc(p_2052->g_678[i].f2, "p_2052->g_678[i].f2", print_hash_value);
        transparent_crc(p_2052->g_678[i].f3, "p_2052->g_678[i].f3", print_hash_value);
        transparent_crc(p_2052->g_678[i].f4, "p_2052->g_678[i].f4", print_hash_value);
        transparent_crc(p_2052->g_678[i].f5, "p_2052->g_678[i].f5", print_hash_value);
        transparent_crc(p_2052->g_678[i].f6, "p_2052->g_678[i].f6", print_hash_value);
        transparent_crc(p_2052->g_678[i].f7, "p_2052->g_678[i].f7", print_hash_value);

    }
    transparent_crc(p_2052->g_713.x, "p_2052->g_713.x", print_hash_value);
    transparent_crc(p_2052->g_713.y, "p_2052->g_713.y", print_hash_value);
    transparent_crc(p_2052->g_713.z, "p_2052->g_713.z", print_hash_value);
    transparent_crc(p_2052->g_713.w, "p_2052->g_713.w", print_hash_value);
    transparent_crc(p_2052->g_734.x, "p_2052->g_734.x", print_hash_value);
    transparent_crc(p_2052->g_734.y, "p_2052->g_734.y", print_hash_value);
    transparent_crc(p_2052->g_735.x, "p_2052->g_735.x", print_hash_value);
    transparent_crc(p_2052->g_735.y, "p_2052->g_735.y", print_hash_value);
    transparent_crc(p_2052->g_746.s0, "p_2052->g_746.s0", print_hash_value);
    transparent_crc(p_2052->g_746.s1, "p_2052->g_746.s1", print_hash_value);
    transparent_crc(p_2052->g_746.s2, "p_2052->g_746.s2", print_hash_value);
    transparent_crc(p_2052->g_746.s3, "p_2052->g_746.s3", print_hash_value);
    transparent_crc(p_2052->g_746.s4, "p_2052->g_746.s4", print_hash_value);
    transparent_crc(p_2052->g_746.s5, "p_2052->g_746.s5", print_hash_value);
    transparent_crc(p_2052->g_746.s6, "p_2052->g_746.s6", print_hash_value);
    transparent_crc(p_2052->g_746.s7, "p_2052->g_746.s7", print_hash_value);
    transparent_crc(p_2052->g_746.s8, "p_2052->g_746.s8", print_hash_value);
    transparent_crc(p_2052->g_746.s9, "p_2052->g_746.s9", print_hash_value);
    transparent_crc(p_2052->g_746.sa, "p_2052->g_746.sa", print_hash_value);
    transparent_crc(p_2052->g_746.sb, "p_2052->g_746.sb", print_hash_value);
    transparent_crc(p_2052->g_746.sc, "p_2052->g_746.sc", print_hash_value);
    transparent_crc(p_2052->g_746.sd, "p_2052->g_746.sd", print_hash_value);
    transparent_crc(p_2052->g_746.se, "p_2052->g_746.se", print_hash_value);
    transparent_crc(p_2052->g_746.sf, "p_2052->g_746.sf", print_hash_value);
    transparent_crc(p_2052->g_766, "p_2052->g_766", print_hash_value);
    transparent_crc(p_2052->g_768.f0, "p_2052->g_768.f0", print_hash_value);
    transparent_crc(p_2052->g_768.f1, "p_2052->g_768.f1", print_hash_value);
    transparent_crc(p_2052->g_768.f2, "p_2052->g_768.f2", print_hash_value);
    transparent_crc(p_2052->g_768.f3, "p_2052->g_768.f3", print_hash_value);
    transparent_crc(p_2052->g_768.f4, "p_2052->g_768.f4", print_hash_value);
    transparent_crc(p_2052->g_768.f5, "p_2052->g_768.f5", print_hash_value);
    transparent_crc(p_2052->g_768.f6, "p_2052->g_768.f6", print_hash_value);
    transparent_crc(p_2052->g_768.f7, "p_2052->g_768.f7", print_hash_value);
    transparent_crc(p_2052->g_813, "p_2052->g_813", print_hash_value);
    transparent_crc(p_2052->g_829.f0, "p_2052->g_829.f0", print_hash_value);
    transparent_crc(p_2052->g_829.f1, "p_2052->g_829.f1", print_hash_value);
    transparent_crc(p_2052->g_829.f2, "p_2052->g_829.f2", print_hash_value);
    transparent_crc(p_2052->g_829.f3, "p_2052->g_829.f3", print_hash_value);
    transparent_crc(p_2052->g_829.f4, "p_2052->g_829.f4", print_hash_value);
    transparent_crc(p_2052->g_829.f5, "p_2052->g_829.f5", print_hash_value);
    transparent_crc(p_2052->g_829.f6, "p_2052->g_829.f6", print_hash_value);
    transparent_crc(p_2052->g_829.f7, "p_2052->g_829.f7", print_hash_value);
    transparent_crc(p_2052->g_866.x, "p_2052->g_866.x", print_hash_value);
    transparent_crc(p_2052->g_866.y, "p_2052->g_866.y", print_hash_value);
    transparent_crc(p_2052->g_866.z, "p_2052->g_866.z", print_hash_value);
    transparent_crc(p_2052->g_866.w, "p_2052->g_866.w", print_hash_value);
    transparent_crc(p_2052->g_879.f0, "p_2052->g_879.f0", print_hash_value);
    transparent_crc(p_2052->g_879.f1, "p_2052->g_879.f1", print_hash_value);
    transparent_crc(p_2052->g_879.f2, "p_2052->g_879.f2", print_hash_value);
    transparent_crc(p_2052->g_879.f3, "p_2052->g_879.f3", print_hash_value);
    transparent_crc(p_2052->g_879.f4, "p_2052->g_879.f4", print_hash_value);
    transparent_crc(p_2052->g_879.f5, "p_2052->g_879.f5", print_hash_value);
    transparent_crc(p_2052->g_879.f6, "p_2052->g_879.f6", print_hash_value);
    transparent_crc(p_2052->g_879.f7, "p_2052->g_879.f7", print_hash_value);
    transparent_crc(p_2052->g_931.f0, "p_2052->g_931.f0", print_hash_value);
    transparent_crc(p_2052->g_931.f1, "p_2052->g_931.f1", print_hash_value);
    transparent_crc(p_2052->g_931.f2, "p_2052->g_931.f2", print_hash_value);
    transparent_crc(p_2052->g_931.f3, "p_2052->g_931.f3", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2052->g_940[i][j][k].f0, "p_2052->g_940[i][j][k].f0", print_hash_value);
                transparent_crc(p_2052->g_940[i][j][k].f1, "p_2052->g_940[i][j][k].f1", print_hash_value);
                transparent_crc(p_2052->g_940[i][j][k].f2, "p_2052->g_940[i][j][k].f2", print_hash_value);
                transparent_crc(p_2052->g_940[i][j][k].f3, "p_2052->g_940[i][j][k].f3", print_hash_value);
                transparent_crc(p_2052->g_940[i][j][k].f4, "p_2052->g_940[i][j][k].f4", print_hash_value);
                transparent_crc(p_2052->g_940[i][j][k].f5, "p_2052->g_940[i][j][k].f5", print_hash_value);
                transparent_crc(p_2052->g_940[i][j][k].f6, "p_2052->g_940[i][j][k].f6", print_hash_value);
                transparent_crc(p_2052->g_940[i][j][k].f7, "p_2052->g_940[i][j][k].f7", print_hash_value);

            }
        }
    }
    transparent_crc(p_2052->g_942.f0, "p_2052->g_942.f0", print_hash_value);
    transparent_crc(p_2052->g_942.f1, "p_2052->g_942.f1", print_hash_value);
    transparent_crc(p_2052->g_942.f2, "p_2052->g_942.f2", print_hash_value);
    transparent_crc(p_2052->g_942.f3, "p_2052->g_942.f3", print_hash_value);
    transparent_crc(p_2052->g_942.f4, "p_2052->g_942.f4", print_hash_value);
    transparent_crc(p_2052->g_942.f5, "p_2052->g_942.f5", print_hash_value);
    transparent_crc(p_2052->g_942.f6, "p_2052->g_942.f6", print_hash_value);
    transparent_crc(p_2052->g_942.f7, "p_2052->g_942.f7", print_hash_value);
    transparent_crc(p_2052->g_960.f0, "p_2052->g_960.f0", print_hash_value);
    transparent_crc(p_2052->g_960.f1, "p_2052->g_960.f1", print_hash_value);
    transparent_crc(p_2052->g_960.f2, "p_2052->g_960.f2", print_hash_value);
    transparent_crc(p_2052->g_960.f3, "p_2052->g_960.f3", print_hash_value);
    transparent_crc(p_2052->g_960.f4, "p_2052->g_960.f4", print_hash_value);
    transparent_crc(p_2052->g_960.f5, "p_2052->g_960.f5", print_hash_value);
    transparent_crc(p_2052->g_960.f6, "p_2052->g_960.f6", print_hash_value);
    transparent_crc(p_2052->g_960.f7, "p_2052->g_960.f7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2052->g_986[i][j].f0, "p_2052->g_986[i][j].f0", print_hash_value);
            transparent_crc(p_2052->g_986[i][j].f1, "p_2052->g_986[i][j].f1", print_hash_value);
            transparent_crc(p_2052->g_986[i][j].f2, "p_2052->g_986[i][j].f2", print_hash_value);
            transparent_crc(p_2052->g_986[i][j].f3, "p_2052->g_986[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_2052->g_996.x, "p_2052->g_996.x", print_hash_value);
    transparent_crc(p_2052->g_996.y, "p_2052->g_996.y", print_hash_value);
    transparent_crc(p_2052->g_1012.x, "p_2052->g_1012.x", print_hash_value);
    transparent_crc(p_2052->g_1012.y, "p_2052->g_1012.y", print_hash_value);
    transparent_crc(p_2052->g_1023, "p_2052->g_1023", print_hash_value);
    transparent_crc(p_2052->g_1035.x, "p_2052->g_1035.x", print_hash_value);
    transparent_crc(p_2052->g_1035.y, "p_2052->g_1035.y", print_hash_value);
    transparent_crc(p_2052->g_1044.x, "p_2052->g_1044.x", print_hash_value);
    transparent_crc(p_2052->g_1044.y, "p_2052->g_1044.y", print_hash_value);
    transparent_crc(p_2052->g_1044.z, "p_2052->g_1044.z", print_hash_value);
    transparent_crc(p_2052->g_1044.w, "p_2052->g_1044.w", print_hash_value);
    transparent_crc(p_2052->g_1050.f0, "p_2052->g_1050.f0", print_hash_value);
    transparent_crc(p_2052->g_1050.f1, "p_2052->g_1050.f1", print_hash_value);
    transparent_crc(p_2052->g_1050.f2, "p_2052->g_1050.f2", print_hash_value);
    transparent_crc(p_2052->g_1050.f3, "p_2052->g_1050.f3", print_hash_value);
    transparent_crc(p_2052->g_1080.s0, "p_2052->g_1080.s0", print_hash_value);
    transparent_crc(p_2052->g_1080.s1, "p_2052->g_1080.s1", print_hash_value);
    transparent_crc(p_2052->g_1080.s2, "p_2052->g_1080.s2", print_hash_value);
    transparent_crc(p_2052->g_1080.s3, "p_2052->g_1080.s3", print_hash_value);
    transparent_crc(p_2052->g_1080.s4, "p_2052->g_1080.s4", print_hash_value);
    transparent_crc(p_2052->g_1080.s5, "p_2052->g_1080.s5", print_hash_value);
    transparent_crc(p_2052->g_1080.s6, "p_2052->g_1080.s6", print_hash_value);
    transparent_crc(p_2052->g_1080.s7, "p_2052->g_1080.s7", print_hash_value);
    transparent_crc(p_2052->g_1093.x, "p_2052->g_1093.x", print_hash_value);
    transparent_crc(p_2052->g_1093.y, "p_2052->g_1093.y", print_hash_value);
    transparent_crc(p_2052->g_1093.z, "p_2052->g_1093.z", print_hash_value);
    transparent_crc(p_2052->g_1093.w, "p_2052->g_1093.w", print_hash_value);
    transparent_crc(p_2052->g_1095.s0, "p_2052->g_1095.s0", print_hash_value);
    transparent_crc(p_2052->g_1095.s1, "p_2052->g_1095.s1", print_hash_value);
    transparent_crc(p_2052->g_1095.s2, "p_2052->g_1095.s2", print_hash_value);
    transparent_crc(p_2052->g_1095.s3, "p_2052->g_1095.s3", print_hash_value);
    transparent_crc(p_2052->g_1095.s4, "p_2052->g_1095.s4", print_hash_value);
    transparent_crc(p_2052->g_1095.s5, "p_2052->g_1095.s5", print_hash_value);
    transparent_crc(p_2052->g_1095.s6, "p_2052->g_1095.s6", print_hash_value);
    transparent_crc(p_2052->g_1095.s7, "p_2052->g_1095.s7", print_hash_value);
    transparent_crc(p_2052->g_1103.x, "p_2052->g_1103.x", print_hash_value);
    transparent_crc(p_2052->g_1103.y, "p_2052->g_1103.y", print_hash_value);
    transparent_crc(p_2052->g_1103.z, "p_2052->g_1103.z", print_hash_value);
    transparent_crc(p_2052->g_1103.w, "p_2052->g_1103.w", print_hash_value);
    transparent_crc(p_2052->g_1106.s0, "p_2052->g_1106.s0", print_hash_value);
    transparent_crc(p_2052->g_1106.s1, "p_2052->g_1106.s1", print_hash_value);
    transparent_crc(p_2052->g_1106.s2, "p_2052->g_1106.s2", print_hash_value);
    transparent_crc(p_2052->g_1106.s3, "p_2052->g_1106.s3", print_hash_value);
    transparent_crc(p_2052->g_1106.s4, "p_2052->g_1106.s4", print_hash_value);
    transparent_crc(p_2052->g_1106.s5, "p_2052->g_1106.s5", print_hash_value);
    transparent_crc(p_2052->g_1106.s6, "p_2052->g_1106.s6", print_hash_value);
    transparent_crc(p_2052->g_1106.s7, "p_2052->g_1106.s7", print_hash_value);
    transparent_crc(p_2052->g_1106.s8, "p_2052->g_1106.s8", print_hash_value);
    transparent_crc(p_2052->g_1106.s9, "p_2052->g_1106.s9", print_hash_value);
    transparent_crc(p_2052->g_1106.sa, "p_2052->g_1106.sa", print_hash_value);
    transparent_crc(p_2052->g_1106.sb, "p_2052->g_1106.sb", print_hash_value);
    transparent_crc(p_2052->g_1106.sc, "p_2052->g_1106.sc", print_hash_value);
    transparent_crc(p_2052->g_1106.sd, "p_2052->g_1106.sd", print_hash_value);
    transparent_crc(p_2052->g_1106.se, "p_2052->g_1106.se", print_hash_value);
    transparent_crc(p_2052->g_1106.sf, "p_2052->g_1106.sf", print_hash_value);
    transparent_crc(p_2052->g_1130.s0, "p_2052->g_1130.s0", print_hash_value);
    transparent_crc(p_2052->g_1130.s1, "p_2052->g_1130.s1", print_hash_value);
    transparent_crc(p_2052->g_1130.s2, "p_2052->g_1130.s2", print_hash_value);
    transparent_crc(p_2052->g_1130.s3, "p_2052->g_1130.s3", print_hash_value);
    transparent_crc(p_2052->g_1130.s4, "p_2052->g_1130.s4", print_hash_value);
    transparent_crc(p_2052->g_1130.s5, "p_2052->g_1130.s5", print_hash_value);
    transparent_crc(p_2052->g_1130.s6, "p_2052->g_1130.s6", print_hash_value);
    transparent_crc(p_2052->g_1130.s7, "p_2052->g_1130.s7", print_hash_value);
    transparent_crc(p_2052->g_1131.x, "p_2052->g_1131.x", print_hash_value);
    transparent_crc(p_2052->g_1131.y, "p_2052->g_1131.y", print_hash_value);
    transparent_crc(p_2052->g_1131.z, "p_2052->g_1131.z", print_hash_value);
    transparent_crc(p_2052->g_1131.w, "p_2052->g_1131.w", print_hash_value);
    transparent_crc(p_2052->g_1140.x, "p_2052->g_1140.x", print_hash_value);
    transparent_crc(p_2052->g_1140.y, "p_2052->g_1140.y", print_hash_value);
    transparent_crc(p_2052->g_1146.x, "p_2052->g_1146.x", print_hash_value);
    transparent_crc(p_2052->g_1146.y, "p_2052->g_1146.y", print_hash_value);
    transparent_crc(p_2052->g_1146.z, "p_2052->g_1146.z", print_hash_value);
    transparent_crc(p_2052->g_1146.w, "p_2052->g_1146.w", print_hash_value);
    transparent_crc(p_2052->g_1147.x, "p_2052->g_1147.x", print_hash_value);
    transparent_crc(p_2052->g_1147.y, "p_2052->g_1147.y", print_hash_value);
    transparent_crc(p_2052->g_1150.x, "p_2052->g_1150.x", print_hash_value);
    transparent_crc(p_2052->g_1150.y, "p_2052->g_1150.y", print_hash_value);
    transparent_crc(p_2052->g_1151.s0, "p_2052->g_1151.s0", print_hash_value);
    transparent_crc(p_2052->g_1151.s1, "p_2052->g_1151.s1", print_hash_value);
    transparent_crc(p_2052->g_1151.s2, "p_2052->g_1151.s2", print_hash_value);
    transparent_crc(p_2052->g_1151.s3, "p_2052->g_1151.s3", print_hash_value);
    transparent_crc(p_2052->g_1151.s4, "p_2052->g_1151.s4", print_hash_value);
    transparent_crc(p_2052->g_1151.s5, "p_2052->g_1151.s5", print_hash_value);
    transparent_crc(p_2052->g_1151.s6, "p_2052->g_1151.s6", print_hash_value);
    transparent_crc(p_2052->g_1151.s7, "p_2052->g_1151.s7", print_hash_value);
    transparent_crc(p_2052->g_1151.s8, "p_2052->g_1151.s8", print_hash_value);
    transparent_crc(p_2052->g_1151.s9, "p_2052->g_1151.s9", print_hash_value);
    transparent_crc(p_2052->g_1151.sa, "p_2052->g_1151.sa", print_hash_value);
    transparent_crc(p_2052->g_1151.sb, "p_2052->g_1151.sb", print_hash_value);
    transparent_crc(p_2052->g_1151.sc, "p_2052->g_1151.sc", print_hash_value);
    transparent_crc(p_2052->g_1151.sd, "p_2052->g_1151.sd", print_hash_value);
    transparent_crc(p_2052->g_1151.se, "p_2052->g_1151.se", print_hash_value);
    transparent_crc(p_2052->g_1151.sf, "p_2052->g_1151.sf", print_hash_value);
    transparent_crc(p_2052->g_1170.s0, "p_2052->g_1170.s0", print_hash_value);
    transparent_crc(p_2052->g_1170.s1, "p_2052->g_1170.s1", print_hash_value);
    transparent_crc(p_2052->g_1170.s2, "p_2052->g_1170.s2", print_hash_value);
    transparent_crc(p_2052->g_1170.s3, "p_2052->g_1170.s3", print_hash_value);
    transparent_crc(p_2052->g_1170.s4, "p_2052->g_1170.s4", print_hash_value);
    transparent_crc(p_2052->g_1170.s5, "p_2052->g_1170.s5", print_hash_value);
    transparent_crc(p_2052->g_1170.s6, "p_2052->g_1170.s6", print_hash_value);
    transparent_crc(p_2052->g_1170.s7, "p_2052->g_1170.s7", print_hash_value);
    transparent_crc(p_2052->g_1170.s8, "p_2052->g_1170.s8", print_hash_value);
    transparent_crc(p_2052->g_1170.s9, "p_2052->g_1170.s9", print_hash_value);
    transparent_crc(p_2052->g_1170.sa, "p_2052->g_1170.sa", print_hash_value);
    transparent_crc(p_2052->g_1170.sb, "p_2052->g_1170.sb", print_hash_value);
    transparent_crc(p_2052->g_1170.sc, "p_2052->g_1170.sc", print_hash_value);
    transparent_crc(p_2052->g_1170.sd, "p_2052->g_1170.sd", print_hash_value);
    transparent_crc(p_2052->g_1170.se, "p_2052->g_1170.se", print_hash_value);
    transparent_crc(p_2052->g_1170.sf, "p_2052->g_1170.sf", print_hash_value);
    transparent_crc(p_2052->g_1185.s0, "p_2052->g_1185.s0", print_hash_value);
    transparent_crc(p_2052->g_1185.s1, "p_2052->g_1185.s1", print_hash_value);
    transparent_crc(p_2052->g_1185.s2, "p_2052->g_1185.s2", print_hash_value);
    transparent_crc(p_2052->g_1185.s3, "p_2052->g_1185.s3", print_hash_value);
    transparent_crc(p_2052->g_1185.s4, "p_2052->g_1185.s4", print_hash_value);
    transparent_crc(p_2052->g_1185.s5, "p_2052->g_1185.s5", print_hash_value);
    transparent_crc(p_2052->g_1185.s6, "p_2052->g_1185.s6", print_hash_value);
    transparent_crc(p_2052->g_1185.s7, "p_2052->g_1185.s7", print_hash_value);
    transparent_crc(p_2052->g_1194.f0, "p_2052->g_1194.f0", print_hash_value);
    transparent_crc(p_2052->g_1194.f1, "p_2052->g_1194.f1", print_hash_value);
    transparent_crc(p_2052->g_1194.f2, "p_2052->g_1194.f2", print_hash_value);
    transparent_crc(p_2052->g_1194.f3, "p_2052->g_1194.f3", print_hash_value);
    transparent_crc(p_2052->g_1194.f4, "p_2052->g_1194.f4", print_hash_value);
    transparent_crc(p_2052->g_1194.f5, "p_2052->g_1194.f5", print_hash_value);
    transparent_crc(p_2052->g_1194.f6, "p_2052->g_1194.f6", print_hash_value);
    transparent_crc(p_2052->g_1194.f7, "p_2052->g_1194.f7", print_hash_value);
    transparent_crc(p_2052->g_1220.x, "p_2052->g_1220.x", print_hash_value);
    transparent_crc(p_2052->g_1220.y, "p_2052->g_1220.y", print_hash_value);
    transparent_crc(p_2052->g_1220.z, "p_2052->g_1220.z", print_hash_value);
    transparent_crc(p_2052->g_1220.w, "p_2052->g_1220.w", print_hash_value);
    transparent_crc(p_2052->g_1260.x, "p_2052->g_1260.x", print_hash_value);
    transparent_crc(p_2052->g_1260.y, "p_2052->g_1260.y", print_hash_value);
    transparent_crc(p_2052->g_1260.z, "p_2052->g_1260.z", print_hash_value);
    transparent_crc(p_2052->g_1260.w, "p_2052->g_1260.w", print_hash_value);
    transparent_crc(p_2052->g_1269.f0, "p_2052->g_1269.f0", print_hash_value);
    transparent_crc(p_2052->g_1269.f1, "p_2052->g_1269.f1", print_hash_value);
    transparent_crc(p_2052->g_1269.f2, "p_2052->g_1269.f2", print_hash_value);
    transparent_crc(p_2052->g_1269.f3, "p_2052->g_1269.f3", print_hash_value);
    transparent_crc(p_2052->g_1269.f4, "p_2052->g_1269.f4", print_hash_value);
    transparent_crc(p_2052->g_1269.f5, "p_2052->g_1269.f5", print_hash_value);
    transparent_crc(p_2052->g_1269.f6, "p_2052->g_1269.f6", print_hash_value);
    transparent_crc(p_2052->g_1269.f7, "p_2052->g_1269.f7", print_hash_value);
    transparent_crc(p_2052->g_1270.f0, "p_2052->g_1270.f0", print_hash_value);
    transparent_crc(p_2052->g_1270.f1, "p_2052->g_1270.f1", print_hash_value);
    transparent_crc(p_2052->g_1270.f2, "p_2052->g_1270.f2", print_hash_value);
    transparent_crc(p_2052->g_1270.f3, "p_2052->g_1270.f3", print_hash_value);
    transparent_crc(p_2052->g_1270.f4, "p_2052->g_1270.f4", print_hash_value);
    transparent_crc(p_2052->g_1270.f5, "p_2052->g_1270.f5", print_hash_value);
    transparent_crc(p_2052->g_1270.f6, "p_2052->g_1270.f6", print_hash_value);
    transparent_crc(p_2052->g_1270.f7, "p_2052->g_1270.f7", print_hash_value);
    transparent_crc(p_2052->g_1290, "p_2052->g_1290", print_hash_value);
    transparent_crc(p_2052->g_1331.s0, "p_2052->g_1331.s0", print_hash_value);
    transparent_crc(p_2052->g_1331.s1, "p_2052->g_1331.s1", print_hash_value);
    transparent_crc(p_2052->g_1331.s2, "p_2052->g_1331.s2", print_hash_value);
    transparent_crc(p_2052->g_1331.s3, "p_2052->g_1331.s3", print_hash_value);
    transparent_crc(p_2052->g_1331.s4, "p_2052->g_1331.s4", print_hash_value);
    transparent_crc(p_2052->g_1331.s5, "p_2052->g_1331.s5", print_hash_value);
    transparent_crc(p_2052->g_1331.s6, "p_2052->g_1331.s6", print_hash_value);
    transparent_crc(p_2052->g_1331.s7, "p_2052->g_1331.s7", print_hash_value);
    transparent_crc(p_2052->g_1331.s8, "p_2052->g_1331.s8", print_hash_value);
    transparent_crc(p_2052->g_1331.s9, "p_2052->g_1331.s9", print_hash_value);
    transparent_crc(p_2052->g_1331.sa, "p_2052->g_1331.sa", print_hash_value);
    transparent_crc(p_2052->g_1331.sb, "p_2052->g_1331.sb", print_hash_value);
    transparent_crc(p_2052->g_1331.sc, "p_2052->g_1331.sc", print_hash_value);
    transparent_crc(p_2052->g_1331.sd, "p_2052->g_1331.sd", print_hash_value);
    transparent_crc(p_2052->g_1331.se, "p_2052->g_1331.se", print_hash_value);
    transparent_crc(p_2052->g_1331.sf, "p_2052->g_1331.sf", print_hash_value);
    transparent_crc(p_2052->g_1351.s0, "p_2052->g_1351.s0", print_hash_value);
    transparent_crc(p_2052->g_1351.s1, "p_2052->g_1351.s1", print_hash_value);
    transparent_crc(p_2052->g_1351.s2, "p_2052->g_1351.s2", print_hash_value);
    transparent_crc(p_2052->g_1351.s3, "p_2052->g_1351.s3", print_hash_value);
    transparent_crc(p_2052->g_1351.s4, "p_2052->g_1351.s4", print_hash_value);
    transparent_crc(p_2052->g_1351.s5, "p_2052->g_1351.s5", print_hash_value);
    transparent_crc(p_2052->g_1351.s6, "p_2052->g_1351.s6", print_hash_value);
    transparent_crc(p_2052->g_1351.s7, "p_2052->g_1351.s7", print_hash_value);
    transparent_crc(p_2052->g_1360.x, "p_2052->g_1360.x", print_hash_value);
    transparent_crc(p_2052->g_1360.y, "p_2052->g_1360.y", print_hash_value);
    transparent_crc(p_2052->g_1360.z, "p_2052->g_1360.z", print_hash_value);
    transparent_crc(p_2052->g_1360.w, "p_2052->g_1360.w", print_hash_value);
    transparent_crc(p_2052->g_1366.f0, "p_2052->g_1366.f0", print_hash_value);
    transparent_crc(p_2052->g_1366.f1, "p_2052->g_1366.f1", print_hash_value);
    transparent_crc(p_2052->g_1366.f2, "p_2052->g_1366.f2", print_hash_value);
    transparent_crc(p_2052->g_1366.f3, "p_2052->g_1366.f3", print_hash_value);
    transparent_crc(p_2052->g_1366.f4, "p_2052->g_1366.f4", print_hash_value);
    transparent_crc(p_2052->g_1366.f5, "p_2052->g_1366.f5", print_hash_value);
    transparent_crc(p_2052->g_1366.f6, "p_2052->g_1366.f6", print_hash_value);
    transparent_crc(p_2052->g_1366.f7, "p_2052->g_1366.f7", print_hash_value);
    transparent_crc(p_2052->g_1367.f0, "p_2052->g_1367.f0", print_hash_value);
    transparent_crc(p_2052->g_1367.f1, "p_2052->g_1367.f1", print_hash_value);
    transparent_crc(p_2052->g_1367.f2, "p_2052->g_1367.f2", print_hash_value);
    transparent_crc(p_2052->g_1367.f3, "p_2052->g_1367.f3", print_hash_value);
    transparent_crc(p_2052->g_1367.f4, "p_2052->g_1367.f4", print_hash_value);
    transparent_crc(p_2052->g_1367.f5, "p_2052->g_1367.f5", print_hash_value);
    transparent_crc(p_2052->g_1367.f6, "p_2052->g_1367.f6", print_hash_value);
    transparent_crc(p_2052->g_1367.f7, "p_2052->g_1367.f7", print_hash_value);
    transparent_crc(p_2052->g_1421.x, "p_2052->g_1421.x", print_hash_value);
    transparent_crc(p_2052->g_1421.y, "p_2052->g_1421.y", print_hash_value);
    transparent_crc(p_2052->g_1421.z, "p_2052->g_1421.z", print_hash_value);
    transparent_crc(p_2052->g_1421.w, "p_2052->g_1421.w", print_hash_value);
    transparent_crc(p_2052->g_1439.x, "p_2052->g_1439.x", print_hash_value);
    transparent_crc(p_2052->g_1439.y, "p_2052->g_1439.y", print_hash_value);
    transparent_crc(p_2052->g_1474.f0, "p_2052->g_1474.f0", print_hash_value);
    transparent_crc(p_2052->g_1474.f1, "p_2052->g_1474.f1", print_hash_value);
    transparent_crc(p_2052->g_1474.f2, "p_2052->g_1474.f2", print_hash_value);
    transparent_crc(p_2052->g_1474.f3, "p_2052->g_1474.f3", print_hash_value);
    transparent_crc(p_2052->g_1501.f0, "p_2052->g_1501.f0", print_hash_value);
    transparent_crc(p_2052->g_1501.f1, "p_2052->g_1501.f1", print_hash_value);
    transparent_crc(p_2052->g_1501.f2, "p_2052->g_1501.f2", print_hash_value);
    transparent_crc(p_2052->g_1501.f3, "p_2052->g_1501.f3", print_hash_value);
    transparent_crc(p_2052->g_1501.f4, "p_2052->g_1501.f4", print_hash_value);
    transparent_crc(p_2052->g_1501.f5, "p_2052->g_1501.f5", print_hash_value);
    transparent_crc(p_2052->g_1501.f6, "p_2052->g_1501.f6", print_hash_value);
    transparent_crc(p_2052->g_1501.f7, "p_2052->g_1501.f7", print_hash_value);
    transparent_crc(p_2052->g_1554.f0, "p_2052->g_1554.f0", print_hash_value);
    transparent_crc(p_2052->g_1554.f1, "p_2052->g_1554.f1", print_hash_value);
    transparent_crc(p_2052->g_1554.f2, "p_2052->g_1554.f2", print_hash_value);
    transparent_crc(p_2052->g_1554.f3, "p_2052->g_1554.f3", print_hash_value);
    transparent_crc(p_2052->g_1563.x, "p_2052->g_1563.x", print_hash_value);
    transparent_crc(p_2052->g_1563.y, "p_2052->g_1563.y", print_hash_value);
    transparent_crc(p_2052->g_1563.z, "p_2052->g_1563.z", print_hash_value);
    transparent_crc(p_2052->g_1563.w, "p_2052->g_1563.w", print_hash_value);
    transparent_crc(p_2052->g_1579.x, "p_2052->g_1579.x", print_hash_value);
    transparent_crc(p_2052->g_1579.y, "p_2052->g_1579.y", print_hash_value);
    transparent_crc(p_2052->g_1580.x, "p_2052->g_1580.x", print_hash_value);
    transparent_crc(p_2052->g_1580.y, "p_2052->g_1580.y", print_hash_value);
    transparent_crc(p_2052->g_1588.s0, "p_2052->g_1588.s0", print_hash_value);
    transparent_crc(p_2052->g_1588.s1, "p_2052->g_1588.s1", print_hash_value);
    transparent_crc(p_2052->g_1588.s2, "p_2052->g_1588.s2", print_hash_value);
    transparent_crc(p_2052->g_1588.s3, "p_2052->g_1588.s3", print_hash_value);
    transparent_crc(p_2052->g_1588.s4, "p_2052->g_1588.s4", print_hash_value);
    transparent_crc(p_2052->g_1588.s5, "p_2052->g_1588.s5", print_hash_value);
    transparent_crc(p_2052->g_1588.s6, "p_2052->g_1588.s6", print_hash_value);
    transparent_crc(p_2052->g_1588.s7, "p_2052->g_1588.s7", print_hash_value);
    transparent_crc(p_2052->g_1588.s8, "p_2052->g_1588.s8", print_hash_value);
    transparent_crc(p_2052->g_1588.s9, "p_2052->g_1588.s9", print_hash_value);
    transparent_crc(p_2052->g_1588.sa, "p_2052->g_1588.sa", print_hash_value);
    transparent_crc(p_2052->g_1588.sb, "p_2052->g_1588.sb", print_hash_value);
    transparent_crc(p_2052->g_1588.sc, "p_2052->g_1588.sc", print_hash_value);
    transparent_crc(p_2052->g_1588.sd, "p_2052->g_1588.sd", print_hash_value);
    transparent_crc(p_2052->g_1588.se, "p_2052->g_1588.se", print_hash_value);
    transparent_crc(p_2052->g_1588.sf, "p_2052->g_1588.sf", print_hash_value);
    transparent_crc(p_2052->g_1619.f0, "p_2052->g_1619.f0", print_hash_value);
    transparent_crc(p_2052->g_1619.f1, "p_2052->g_1619.f1", print_hash_value);
    transparent_crc(p_2052->g_1619.f2, "p_2052->g_1619.f2", print_hash_value);
    transparent_crc(p_2052->g_1619.f3, "p_2052->g_1619.f3", print_hash_value);
    transparent_crc(p_2052->g_1620.x, "p_2052->g_1620.x", print_hash_value);
    transparent_crc(p_2052->g_1620.y, "p_2052->g_1620.y", print_hash_value);
    transparent_crc(p_2052->g_1620.z, "p_2052->g_1620.z", print_hash_value);
    transparent_crc(p_2052->g_1620.w, "p_2052->g_1620.w", print_hash_value);
    transparent_crc(p_2052->g_1638, "p_2052->g_1638", print_hash_value);
    transparent_crc(p_2052->g_1699.x, "p_2052->g_1699.x", print_hash_value);
    transparent_crc(p_2052->g_1699.y, "p_2052->g_1699.y", print_hash_value);
    transparent_crc(p_2052->g_1726.s0, "p_2052->g_1726.s0", print_hash_value);
    transparent_crc(p_2052->g_1726.s1, "p_2052->g_1726.s1", print_hash_value);
    transparent_crc(p_2052->g_1726.s2, "p_2052->g_1726.s2", print_hash_value);
    transparent_crc(p_2052->g_1726.s3, "p_2052->g_1726.s3", print_hash_value);
    transparent_crc(p_2052->g_1726.s4, "p_2052->g_1726.s4", print_hash_value);
    transparent_crc(p_2052->g_1726.s5, "p_2052->g_1726.s5", print_hash_value);
    transparent_crc(p_2052->g_1726.s6, "p_2052->g_1726.s6", print_hash_value);
    transparent_crc(p_2052->g_1726.s7, "p_2052->g_1726.s7", print_hash_value);
    transparent_crc(p_2052->g_1726.s8, "p_2052->g_1726.s8", print_hash_value);
    transparent_crc(p_2052->g_1726.s9, "p_2052->g_1726.s9", print_hash_value);
    transparent_crc(p_2052->g_1726.sa, "p_2052->g_1726.sa", print_hash_value);
    transparent_crc(p_2052->g_1726.sb, "p_2052->g_1726.sb", print_hash_value);
    transparent_crc(p_2052->g_1726.sc, "p_2052->g_1726.sc", print_hash_value);
    transparent_crc(p_2052->g_1726.sd, "p_2052->g_1726.sd", print_hash_value);
    transparent_crc(p_2052->g_1726.se, "p_2052->g_1726.se", print_hash_value);
    transparent_crc(p_2052->g_1726.sf, "p_2052->g_1726.sf", print_hash_value);
    transparent_crc(p_2052->g_1741.s0, "p_2052->g_1741.s0", print_hash_value);
    transparent_crc(p_2052->g_1741.s1, "p_2052->g_1741.s1", print_hash_value);
    transparent_crc(p_2052->g_1741.s2, "p_2052->g_1741.s2", print_hash_value);
    transparent_crc(p_2052->g_1741.s3, "p_2052->g_1741.s3", print_hash_value);
    transparent_crc(p_2052->g_1741.s4, "p_2052->g_1741.s4", print_hash_value);
    transparent_crc(p_2052->g_1741.s5, "p_2052->g_1741.s5", print_hash_value);
    transparent_crc(p_2052->g_1741.s6, "p_2052->g_1741.s6", print_hash_value);
    transparent_crc(p_2052->g_1741.s7, "p_2052->g_1741.s7", print_hash_value);
    transparent_crc(p_2052->g_1741.s8, "p_2052->g_1741.s8", print_hash_value);
    transparent_crc(p_2052->g_1741.s9, "p_2052->g_1741.s9", print_hash_value);
    transparent_crc(p_2052->g_1741.sa, "p_2052->g_1741.sa", print_hash_value);
    transparent_crc(p_2052->g_1741.sb, "p_2052->g_1741.sb", print_hash_value);
    transparent_crc(p_2052->g_1741.sc, "p_2052->g_1741.sc", print_hash_value);
    transparent_crc(p_2052->g_1741.sd, "p_2052->g_1741.sd", print_hash_value);
    transparent_crc(p_2052->g_1741.se, "p_2052->g_1741.se", print_hash_value);
    transparent_crc(p_2052->g_1741.sf, "p_2052->g_1741.sf", print_hash_value);
    transparent_crc(p_2052->g_1755.x, "p_2052->g_1755.x", print_hash_value);
    transparent_crc(p_2052->g_1755.y, "p_2052->g_1755.y", print_hash_value);
    transparent_crc(p_2052->g_1755.z, "p_2052->g_1755.z", print_hash_value);
    transparent_crc(p_2052->g_1755.w, "p_2052->g_1755.w", print_hash_value);
    transparent_crc(p_2052->g_1765.x, "p_2052->g_1765.x", print_hash_value);
    transparent_crc(p_2052->g_1765.y, "p_2052->g_1765.y", print_hash_value);
    transparent_crc(p_2052->g_1765.z, "p_2052->g_1765.z", print_hash_value);
    transparent_crc(p_2052->g_1765.w, "p_2052->g_1765.w", print_hash_value);
    transparent_crc(p_2052->g_1776.x, "p_2052->g_1776.x", print_hash_value);
    transparent_crc(p_2052->g_1776.y, "p_2052->g_1776.y", print_hash_value);
    transparent_crc(p_2052->g_1776.z, "p_2052->g_1776.z", print_hash_value);
    transparent_crc(p_2052->g_1776.w, "p_2052->g_1776.w", print_hash_value);
    transparent_crc(p_2052->g_1798.s0, "p_2052->g_1798.s0", print_hash_value);
    transparent_crc(p_2052->g_1798.s1, "p_2052->g_1798.s1", print_hash_value);
    transparent_crc(p_2052->g_1798.s2, "p_2052->g_1798.s2", print_hash_value);
    transparent_crc(p_2052->g_1798.s3, "p_2052->g_1798.s3", print_hash_value);
    transparent_crc(p_2052->g_1798.s4, "p_2052->g_1798.s4", print_hash_value);
    transparent_crc(p_2052->g_1798.s5, "p_2052->g_1798.s5", print_hash_value);
    transparent_crc(p_2052->g_1798.s6, "p_2052->g_1798.s6", print_hash_value);
    transparent_crc(p_2052->g_1798.s7, "p_2052->g_1798.s7", print_hash_value);
    transparent_crc(p_2052->g_1798.s8, "p_2052->g_1798.s8", print_hash_value);
    transparent_crc(p_2052->g_1798.s9, "p_2052->g_1798.s9", print_hash_value);
    transparent_crc(p_2052->g_1798.sa, "p_2052->g_1798.sa", print_hash_value);
    transparent_crc(p_2052->g_1798.sb, "p_2052->g_1798.sb", print_hash_value);
    transparent_crc(p_2052->g_1798.sc, "p_2052->g_1798.sc", print_hash_value);
    transparent_crc(p_2052->g_1798.sd, "p_2052->g_1798.sd", print_hash_value);
    transparent_crc(p_2052->g_1798.se, "p_2052->g_1798.se", print_hash_value);
    transparent_crc(p_2052->g_1798.sf, "p_2052->g_1798.sf", print_hash_value);
    transparent_crc(p_2052->g_1800.x, "p_2052->g_1800.x", print_hash_value);
    transparent_crc(p_2052->g_1800.y, "p_2052->g_1800.y", print_hash_value);
    transparent_crc(p_2052->g_1800.z, "p_2052->g_1800.z", print_hash_value);
    transparent_crc(p_2052->g_1800.w, "p_2052->g_1800.w", print_hash_value);
    transparent_crc(p_2052->g_1802.x, "p_2052->g_1802.x", print_hash_value);
    transparent_crc(p_2052->g_1802.y, "p_2052->g_1802.y", print_hash_value);
    transparent_crc(p_2052->g_1813.x, "p_2052->g_1813.x", print_hash_value);
    transparent_crc(p_2052->g_1813.y, "p_2052->g_1813.y", print_hash_value);
    transparent_crc(p_2052->g_1825.s0, "p_2052->g_1825.s0", print_hash_value);
    transparent_crc(p_2052->g_1825.s1, "p_2052->g_1825.s1", print_hash_value);
    transparent_crc(p_2052->g_1825.s2, "p_2052->g_1825.s2", print_hash_value);
    transparent_crc(p_2052->g_1825.s3, "p_2052->g_1825.s3", print_hash_value);
    transparent_crc(p_2052->g_1825.s4, "p_2052->g_1825.s4", print_hash_value);
    transparent_crc(p_2052->g_1825.s5, "p_2052->g_1825.s5", print_hash_value);
    transparent_crc(p_2052->g_1825.s6, "p_2052->g_1825.s6", print_hash_value);
    transparent_crc(p_2052->g_1825.s7, "p_2052->g_1825.s7", print_hash_value);
    transparent_crc(p_2052->g_1825.s8, "p_2052->g_1825.s8", print_hash_value);
    transparent_crc(p_2052->g_1825.s9, "p_2052->g_1825.s9", print_hash_value);
    transparent_crc(p_2052->g_1825.sa, "p_2052->g_1825.sa", print_hash_value);
    transparent_crc(p_2052->g_1825.sb, "p_2052->g_1825.sb", print_hash_value);
    transparent_crc(p_2052->g_1825.sc, "p_2052->g_1825.sc", print_hash_value);
    transparent_crc(p_2052->g_1825.sd, "p_2052->g_1825.sd", print_hash_value);
    transparent_crc(p_2052->g_1825.se, "p_2052->g_1825.se", print_hash_value);
    transparent_crc(p_2052->g_1825.sf, "p_2052->g_1825.sf", print_hash_value);
    transparent_crc(p_2052->g_1826.s0, "p_2052->g_1826.s0", print_hash_value);
    transparent_crc(p_2052->g_1826.s1, "p_2052->g_1826.s1", print_hash_value);
    transparent_crc(p_2052->g_1826.s2, "p_2052->g_1826.s2", print_hash_value);
    transparent_crc(p_2052->g_1826.s3, "p_2052->g_1826.s3", print_hash_value);
    transparent_crc(p_2052->g_1826.s4, "p_2052->g_1826.s4", print_hash_value);
    transparent_crc(p_2052->g_1826.s5, "p_2052->g_1826.s5", print_hash_value);
    transparent_crc(p_2052->g_1826.s6, "p_2052->g_1826.s6", print_hash_value);
    transparent_crc(p_2052->g_1826.s7, "p_2052->g_1826.s7", print_hash_value);
    transparent_crc(p_2052->g_1826.s8, "p_2052->g_1826.s8", print_hash_value);
    transparent_crc(p_2052->g_1826.s9, "p_2052->g_1826.s9", print_hash_value);
    transparent_crc(p_2052->g_1826.sa, "p_2052->g_1826.sa", print_hash_value);
    transparent_crc(p_2052->g_1826.sb, "p_2052->g_1826.sb", print_hash_value);
    transparent_crc(p_2052->g_1826.sc, "p_2052->g_1826.sc", print_hash_value);
    transparent_crc(p_2052->g_1826.sd, "p_2052->g_1826.sd", print_hash_value);
    transparent_crc(p_2052->g_1826.se, "p_2052->g_1826.se", print_hash_value);
    transparent_crc(p_2052->g_1826.sf, "p_2052->g_1826.sf", print_hash_value);
    transparent_crc(p_2052->g_1831.s0, "p_2052->g_1831.s0", print_hash_value);
    transparent_crc(p_2052->g_1831.s1, "p_2052->g_1831.s1", print_hash_value);
    transparent_crc(p_2052->g_1831.s2, "p_2052->g_1831.s2", print_hash_value);
    transparent_crc(p_2052->g_1831.s3, "p_2052->g_1831.s3", print_hash_value);
    transparent_crc(p_2052->g_1831.s4, "p_2052->g_1831.s4", print_hash_value);
    transparent_crc(p_2052->g_1831.s5, "p_2052->g_1831.s5", print_hash_value);
    transparent_crc(p_2052->g_1831.s6, "p_2052->g_1831.s6", print_hash_value);
    transparent_crc(p_2052->g_1831.s7, "p_2052->g_1831.s7", print_hash_value);
    transparent_crc(p_2052->g_1836.f0, "p_2052->g_1836.f0", print_hash_value);
    transparent_crc(p_2052->g_1836.f1, "p_2052->g_1836.f1", print_hash_value);
    transparent_crc(p_2052->g_1836.f2, "p_2052->g_1836.f2", print_hash_value);
    transparent_crc(p_2052->g_1836.f3, "p_2052->g_1836.f3", print_hash_value);
    transparent_crc(p_2052->g_1836.f4, "p_2052->g_1836.f4", print_hash_value);
    transparent_crc(p_2052->g_1836.f5, "p_2052->g_1836.f5", print_hash_value);
    transparent_crc(p_2052->g_1836.f6, "p_2052->g_1836.f6", print_hash_value);
    transparent_crc(p_2052->g_1836.f7, "p_2052->g_1836.f7", print_hash_value);
    transparent_crc(p_2052->g_1888.s0, "p_2052->g_1888.s0", print_hash_value);
    transparent_crc(p_2052->g_1888.s1, "p_2052->g_1888.s1", print_hash_value);
    transparent_crc(p_2052->g_1888.s2, "p_2052->g_1888.s2", print_hash_value);
    transparent_crc(p_2052->g_1888.s3, "p_2052->g_1888.s3", print_hash_value);
    transparent_crc(p_2052->g_1888.s4, "p_2052->g_1888.s4", print_hash_value);
    transparent_crc(p_2052->g_1888.s5, "p_2052->g_1888.s5", print_hash_value);
    transparent_crc(p_2052->g_1888.s6, "p_2052->g_1888.s6", print_hash_value);
    transparent_crc(p_2052->g_1888.s7, "p_2052->g_1888.s7", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2052->g_1921[i].f0, "p_2052->g_1921[i].f0", print_hash_value);
        transparent_crc(p_2052->g_1921[i].f1, "p_2052->g_1921[i].f1", print_hash_value);
        transparent_crc(p_2052->g_1921[i].f2, "p_2052->g_1921[i].f2", print_hash_value);
        transparent_crc(p_2052->g_1921[i].f3, "p_2052->g_1921[i].f3", print_hash_value);
        transparent_crc(p_2052->g_1921[i].f4, "p_2052->g_1921[i].f4", print_hash_value);
        transparent_crc(p_2052->g_1921[i].f5, "p_2052->g_1921[i].f5", print_hash_value);
        transparent_crc(p_2052->g_1921[i].f6, "p_2052->g_1921[i].f6", print_hash_value);
        transparent_crc(p_2052->g_1921[i].f7, "p_2052->g_1921[i].f7", print_hash_value);

    }
    transparent_crc(p_2052->g_1951.s0, "p_2052->g_1951.s0", print_hash_value);
    transparent_crc(p_2052->g_1951.s1, "p_2052->g_1951.s1", print_hash_value);
    transparent_crc(p_2052->g_1951.s2, "p_2052->g_1951.s2", print_hash_value);
    transparent_crc(p_2052->g_1951.s3, "p_2052->g_1951.s3", print_hash_value);
    transparent_crc(p_2052->g_1951.s4, "p_2052->g_1951.s4", print_hash_value);
    transparent_crc(p_2052->g_1951.s5, "p_2052->g_1951.s5", print_hash_value);
    transparent_crc(p_2052->g_1951.s6, "p_2052->g_1951.s6", print_hash_value);
    transparent_crc(p_2052->g_1951.s7, "p_2052->g_1951.s7", print_hash_value);
    transparent_crc(p_2052->g_1965.x, "p_2052->g_1965.x", print_hash_value);
    transparent_crc(p_2052->g_1965.y, "p_2052->g_1965.y", print_hash_value);
    transparent_crc(p_2052->g_2032.x, "p_2052->g_2032.x", print_hash_value);
    transparent_crc(p_2052->g_2032.y, "p_2052->g_2032.y", print_hash_value);
    transparent_crc(p_2052->g_2032.z, "p_2052->g_2032.z", print_hash_value);
    transparent_crc(p_2052->g_2032.w, "p_2052->g_2032.w", print_hash_value);
    transparent_crc(p_2052->g_2033.x, "p_2052->g_2033.x", print_hash_value);
    transparent_crc(p_2052->g_2033.y, "p_2052->g_2033.y", print_hash_value);
    transparent_crc(p_2052->g_2033.z, "p_2052->g_2033.z", print_hash_value);
    transparent_crc(p_2052->g_2033.w, "p_2052->g_2033.w", print_hash_value);
    transparent_crc(p_2052->g_2035.x, "p_2052->g_2035.x", print_hash_value);
    transparent_crc(p_2052->g_2035.y, "p_2052->g_2035.y", print_hash_value);
    transparent_crc(p_2052->g_2035.z, "p_2052->g_2035.z", print_hash_value);
    transparent_crc(p_2052->g_2035.w, "p_2052->g_2035.w", print_hash_value);
    transparent_crc(p_2052->g_2046, "p_2052->g_2046", print_hash_value);
    transparent_crc(p_2052->g_2050.f0, "p_2052->g_2050.f0", print_hash_value);
    transparent_crc(p_2052->g_2050.f1, "p_2052->g_2050.f1", print_hash_value);
    transparent_crc(p_2052->g_2050.f2, "p_2052->g_2050.f2", print_hash_value);
    transparent_crc(p_2052->g_2050.f3, "p_2052->g_2050.f3", print_hash_value);
    transparent_crc(p_2052->g_2050.f4, "p_2052->g_2050.f4", print_hash_value);
    transparent_crc(p_2052->g_2050.f5, "p_2052->g_2050.f5", print_hash_value);
    transparent_crc(p_2052->g_2050.f6, "p_2052->g_2050.f6", print_hash_value);
    transparent_crc(p_2052->g_2050.f7, "p_2052->g_2050.f7", print_hash_value);
    transparent_crc(p_2052->g_2051.f0, "p_2052->g_2051.f0", print_hash_value);
    transparent_crc(p_2052->g_2051.f1, "p_2052->g_2051.f1", print_hash_value);
    transparent_crc(p_2052->g_2051.f2, "p_2052->g_2051.f2", print_hash_value);
    transparent_crc(p_2052->g_2051.f3, "p_2052->g_2051.f3", print_hash_value);
    transparent_crc(p_2052->g_2051.f4, "p_2052->g_2051.f4", print_hash_value);
    transparent_crc(p_2052->g_2051.f5, "p_2052->g_2051.f5", print_hash_value);
    transparent_crc(p_2052->g_2051.f6, "p_2052->g_2051.f6", print_hash_value);
    transparent_crc(p_2052->g_2051.f7, "p_2052->g_2051.f7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
