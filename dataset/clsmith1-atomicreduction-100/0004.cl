// ---atomic_reductions ---fake_divergence -g 45,99,1 -l 45,3,1
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


// Seed: 4

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint16_t  f0;
   int32_t  f1;
   volatile int32_t  f2;
   volatile int8_t  f3;
   volatile uint8_t  f4;
   volatile int8_t  f5;
};

union U1 {
   volatile uint16_t  f0;
   struct S0  f1;
};

union U2 {
   uint16_t  f0;
};

union U3 {
   int8_t * f0;
   volatile struct S0  f1;
   uint16_t  f2;
   int16_t  f3;
};

struct S4 {
    int32_t g_2;
    int32_t g_6;
    uint64_t g_41;
    int8_t g_79;
    uint16_t g_84[4][8][2];
    int32_t g_89;
    int32_t g_107;
    int32_t g_108[5][4];
    int32_t g_110;
    volatile int32_t g_119;
    volatile int32_t * volatile g_118;
    volatile int32_t * volatile *g_117;
    volatile union U3 g_120;
    int64_t g_141[4][9];
    uint8_t g_144;
    uint32_t g_166;
    int16_t g_168;
    struct S0 g_170;
    uint32_t g_181;
    volatile union U1 g_210;
    volatile union U1 * volatile g_209;
    union U3 g_214[8][5][6];
    struct S0 g_220;
    uint32_t g_235;
    volatile union U1 g_243[9];
    union U2 g_249[8][3];
    volatile int8_t g_259;
    int32_t g_260;
    int32_t g_261;
    volatile uint8_t g_262;
    volatile int16_t g_269;
    volatile int16_t *g_268[6][9][4];
    volatile int16_t ** volatile g_267;
    volatile int16_t ** volatile * volatile g_270[7];
    int32_t g_290;
    uint16_t g_292;
    uint8_t *g_297;
    int8_t g_310;
    struct S0 g_323;
    struct S0 * volatile g_324[1][2];
    struct S0 * volatile g_325;
    uint32_t g_329;
    struct S0 g_347;
    union U1 g_360;
    union U1 *g_359;
    union U1 **g_358;
    int64_t g_443;
    volatile uint8_t g_445;
    int32_t g_500;
    volatile union U1 g_517;
    struct S0 g_525;
    struct S0 * volatile g_526[1][8][3];
    struct S0 * volatile g_527;
    struct S0 * volatile g_528;
    uint64_t *g_546;
    uint64_t **g_545;
    int32_t *g_636;
    int32_t ** volatile g_635;
    int32_t ** volatile g_637;
    int8_t *g_689;
    struct S0 g_697;
    struct S0 g_698;
    int64_t g_705;
    int8_t g_708;
    int32_t ** volatile g_752[3][3];
    struct S0 g_754;
    struct S0 *g_783;
    struct S0 ** volatile g_782;
    uint64_t ***g_830;
    int32_t ** volatile g_841;
    union U3 g_850;
    int32_t ** volatile g_861[7];
    volatile uint32_t g_874;
    volatile uint32_t *g_873;
    volatile uint32_t * volatile * volatile g_872[10];
    union U1 **g_877;
    uint8_t g_878;
    uint8_t g_908;
    volatile union U1 g_914;
    volatile struct S0 g_924;
    uint64_t g_926[7][7];
    volatile struct S0 g_934[4];
    union U3 g_939;
    volatile int64_t g_943;
    volatile int64_t *g_942;
    volatile int64_t **g_941;
    volatile int64_t ** volatile *g_940;
    uint32_t g_1029;
    volatile uint16_t * volatile *g_1068;
    volatile uint16_t * volatile g_1070[10][5];
    struct S0 g_1071;
    struct S0 * volatile g_1072;
    volatile union U3 *g_1076;
    volatile union U3 ** volatile g_1075;
    volatile struct S0 g_1107;
    struct S0 g_1111;
    union U3 g_1115;
    int32_t ** volatile g_1125;
    volatile union U1 g_1161[2][10];
    union U1 * volatile * volatile **g_1169;
    int32_t ** volatile g_1175;
    int64_t *g_1214;
    int32_t g_1221;
    uint64_t g_1234;
    int16_t *g_1265;
    int16_t **g_1264;
    int16_t *** volatile g_1263;
    int16_t g_1280;
    volatile struct S0 g_1281;
    volatile struct S0 g_1282;
    volatile union U1 g_1287;
    struct S0 g_1292;
    struct S0 g_1293;
    int16_t *g_1323;
    volatile struct S0 g_1330[1];
    volatile struct S0 g_1332[8];
    uint32_t *g_1387;
    uint32_t **g_1386[10][4];
    uint32_t ***g_1385;
    union U2 *g_1397;
    union U2 **g_1396;
    union U3 g_1400;
    volatile struct S0 g_1410;
    int8_t g_1422;
    uint16_t g_1423;
    struct S0 g_1433;
    int32_t ** volatile g_1463;
    struct S0 g_1464;
    volatile int32_t g_1467;
    uint32_t *g_1500;
    uint32_t * volatile *g_1499[10][5];
    int32_t ** volatile g_1537;
    union U3 *g_1578[8];
    union U3 **g_1577;
    volatile union U1 g_1600;
    struct S0 g_1601;
    struct S0 * volatile g_1602;
    struct S0 g_1619;
    struct S0 * volatile g_1620;
    volatile union U3 g_1635[9];
    volatile union U3 g_1673;
    volatile struct S0 g_1701[7];
    struct S0 g_1706;
    int32_t ** volatile g_1716[7];
    int32_t ** volatile g_1738;
    int32_t g_1740;
    union U3 g_1743;
    volatile int16_t * volatile *g_1755;
    volatile int16_t * volatile **g_1754;
    volatile int16_t * volatile ***g_1753[9];
    volatile int16_t * volatile *** volatile *g_1752;
    volatile uint16_t g_1805;
    int32_t ** volatile g_1839;
    union U3 ***g_1880[10][4][6];
    volatile uint32_t g_1921;
    uint64_t *g_1966;
    uint64_t **g_1965;
    union U1 g_1979;
    uint8_t **g_1992;
    volatile union U3 g_2023[9][10][1];
    int16_t g_2027;
    struct S0 g_2042[6];
    struct S0 g_2043;
    int32_t ** volatile g_2045;
    int32_t ** volatile g_2049;
    struct S0 g_2056;
    int32_t ** volatile g_2089[10];
    struct S0 g_2141;
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
int16_t  func_1(struct S4 * p_2143);
int32_t  func_7(int32_t * p_8, int8_t * p_9, int32_t * p_10, uint32_t  p_11, uint32_t  p_12, struct S4 * p_2143);
int32_t * func_13(int32_t  p_14, int64_t  p_15, struct S4 * p_2143);
int8_t  func_18(uint32_t  p_19, int8_t * p_20, int8_t * p_21, int32_t  p_22, uint64_t  p_23, struct S4 * p_2143);
uint32_t  func_28(int32_t  p_29, int32_t  p_30, uint64_t  p_31, struct S4 * p_2143);
int16_t  func_52(uint32_t  p_53, int32_t  p_54, union U2  p_55, int16_t  p_56, int64_t  p_57, struct S4 * p_2143);
uint32_t  func_58(int32_t  p_59, int32_t * p_60, int64_t  p_61, struct S4 * p_2143);
int32_t * func_62(uint64_t  p_63, uint32_t  p_64, uint64_t * p_65, int8_t * p_66, struct S4 * p_2143);
int16_t  func_73(int8_t * p_74, uint64_t  p_75, int16_t  p_76, int32_t  p_77, struct S4 * p_2143);
uint32_t  func_82(int32_t  p_83, struct S4 * p_2143);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2143->g_2 p_2143->g_1265 p_2143->g_168
 * writes: p_2143->g_2 p_2143->g_6
 */
int16_t  func_1(struct S4 * p_2143)
{ /* block id: 4 */
    uint16_t l_1759 = 0xDC21L;
    uint32_t l_1761[6][5][4] = {{{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL}},{{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL}},{{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL}},{{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL}},{{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL}},{{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL},{4294967288UL,0x8AAA09BDL,0x8AAA09BDL,4294967288UL}}};
    int32_t *l_2061 = &p_2143->g_1221;
    int8_t l_2124 = 0L;
    int8_t l_2128[10][10][1] = {{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}},{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}},{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}},{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}},{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}},{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}},{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}},{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}},{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}},{{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L},{0x42L}}};
    int32_t l_2130 = 1L;
    int32_t l_2131[7];
    int8_t l_2133 = 2L;
    int32_t l_2136 = 0x144318FBL;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_2131[i] = (-2L);
    for (p_2143->g_2 = 0; (p_2143->g_2 != 13); p_2143->g_2++)
    { /* block id: 7 */
        int32_t *l_5[9][6][4] = {{{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_2,&p_2143->g_2}}};
        int32_t l_37 = 1L;
        uint32_t *l_1760[2][3][2] = {{{&p_2143->g_181,&p_2143->g_181},{&p_2143->g_181,&p_2143->g_181},{&p_2143->g_181,&p_2143->g_181}},{{&p_2143->g_181,&p_2143->g_181},{&p_2143->g_181,&p_2143->g_181},{&p_2143->g_181,&p_2143->g_181}}};
        union U2 *l_2110 = (void*)0;
        uint32_t l_2138 = 2UL;
        int i, j, k;
        p_2143->g_6 = p_2143->g_2;
    }
    return (*p_2143->g_1265);
}


/* ------------------------------------------ */
/* 
 * reads : p_2143->g_1221
 * writes:
 */
int32_t  func_7(int32_t * p_8, int8_t * p_9, int32_t * p_10, uint32_t  p_11, uint32_t  p_12, struct S4 * p_2143)
{ /* block id: 1192 */
    int16_t ***l_2067 = &p_2143->g_1264;
    int16_t ****l_2066 = &l_2067;
    int16_t *****l_2065[10] = {&l_2066,&l_2066,&l_2066,&l_2066,&l_2066,&l_2066,&l_2066,&l_2066,&l_2066,&l_2066};
    int16_t ******l_2064 = &l_2065[9];
    int16_t *******l_2068 = &l_2064;
    int32_t l_2081 = 0x77DC9657L;
    uint8_t *l_2082 = &p_2143->g_878;
    int32_t *l_2083 = (void*)0;
    int32_t *l_2084 = &p_2143->g_290;
    uint32_t l_2085 = 0UL;
    uint32_t *l_2086 = (void*)0;
    uint32_t *l_2087 = &l_2085;
    uint64_t *l_2088 = &p_2143->g_926[6][4];
    int32_t **l_2090 = &l_2083;
    union U2 *l_2091 = &p_2143->g_249[0][1];
    int i;
    (*l_2090) = &l_2081;
    (**l_2090) &= ((void*)0 != l_2082);
    (*l_2090) = p_10;
    return (**l_2090);
}


/* ------------------------------------------ */
/* 
 * reads : p_2143->g_500 p_2143->g_2023 p_2143->g_708 p_2143->g_443 p_2143->g_689 p_2143->g_260 p_2143->g_1755 p_2143->g_268 p_2143->g_117 p_2143->g_118 p_2143->g_2042 p_2143->g_325 p_2143->g_220 p_2143->g_119 p_2143->g_2049 p_2143->g_310 p_2143->g_2056 p_2143->g_1602 p_2143->g_144
 * writes: p_2143->g_500 p_2143->g_168 p_2143->g_141 p_2143->g_443 p_2143->g_2027 p_2143->g_310 p_2143->g_79 p_2143->g_260 p_2143->g_1265 p_2143->g_119 p_2143->g_144 p_2143->g_1464.f1 p_2143->g_2043 p_2143->g_1292.f1 p_2143->g_220 p_2143->g_636
 */
int32_t * func_13(int32_t  p_14, int64_t  p_15, struct S4 * p_2143)
{ /* block id: 1143 */
    int32_t l_2007 = 1L;
    int32_t l_2008 = 0x0D756F20L;
    int32_t l_2009 = (-1L);
    int32_t l_2010 = 4L;
    int32_t l_2011 = (-9L);
    int32_t l_2012 = 0x348AE4A8L;
    int32_t l_2013 = 0x3D8EAE87L;
    int32_t l_2014[10];
    int32_t l_2030 = 1L;
    int16_t *l_2037 = &p_2143->g_2027;
    int32_t *l_2059 = &l_2009;
    int32_t *l_2060[2];
    int i;
    for (i = 0; i < 10; i++)
        l_2014[i] = 0x24C263B5L;
    for (i = 0; i < 2; i++)
        l_2060[i] = (void*)0;
    for (p_2143->g_500 = 0; (p_2143->g_500 <= (-7)); p_2143->g_500 = safe_sub_func_int32_t_s_s(p_2143->g_500, 5))
    { /* block id: 1146 */
        int32_t *l_2006[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t l_2015[5][10] = {{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L}};
        int8_t l_2016 = 0x58L;
        int32_t l_2017 = 0x11B6984AL;
        uint32_t l_2018[9];
        int32_t l_2034 = 0x5ACA27D9L;
        int i, j;
        for (i = 0; i < 9; i++)
            l_2018[i] = 2UL;
        l_2018[4]++;
        for (p_2143->g_168 = 0; (p_2143->g_168 <= 4); p_2143->g_168 += 1)
        { /* block id: 1150 */
            int64_t *l_2026[6][3] = {{&p_2143->g_141[0][4],&p_2143->g_443,&p_2143->g_141[0][4]},{&p_2143->g_141[0][4],&p_2143->g_443,&p_2143->g_141[0][4]},{&p_2143->g_141[0][4],&p_2143->g_443,&p_2143->g_141[0][4]},{&p_2143->g_141[0][4],&p_2143->g_443,&p_2143->g_141[0][4]},{&p_2143->g_141[0][4],&p_2143->g_443,&p_2143->g_141[0][4]},{&p_2143->g_141[0][4],&p_2143->g_443,&p_2143->g_141[0][4]}};
            int32_t l_2033[10];
            int i, j;
            for (i = 0; i < 10; i++)
                l_2033[i] = 0x3B6E4BDCL;
            p_2143->g_260 |= ((safe_rshift_func_uint16_t_u_s(((p_2143->g_2023[0][6][0] , p_14) == (1L & ((*p_2143->g_689) = (safe_mul_func_int8_t_s_s(((l_2008 &= (p_2143->g_2027 = (p_2143->g_443 ^= (p_2143->g_141[2][7] = p_2143->g_708)))) > (((((1L <= l_2030) <= (safe_rshift_func_int16_t_s_u(p_14, 6))) ^ (p_15 != (l_2033[7] & l_2034))) || l_2014[8]) , 0x31E5E810F5F9E8A7L)), p_14))))), 2)) & GROUP_DIVERGE(1, 1));
            (**p_2143->g_117) = (((safe_lshift_func_uint16_t_u_s((&l_2015[3][5] == l_2037), 2)) | (l_2033[3] || ((*p_2143->g_1755) != (p_2143->g_1265 = (void*)0)))) != p_15);
        }
    }
lbl_2050:
    for (p_2143->g_144 = 0; (p_2143->g_144 < 60); p_2143->g_144 = safe_add_func_uint64_t_u_u(p_2143->g_144, 7))
    { /* block id: 1163 */
        int32_t *l_2046 = &l_2014[3];
        for (p_2143->g_1464.f1 = 0; (p_2143->g_1464.f1 >= 20); p_2143->g_1464.f1++)
        { /* block id: 1166 */
            p_2143->g_2043 = p_2143->g_2042[2];
            for (p_2143->g_1292.f1 = 0; (p_2143->g_1292.f1 <= 4); p_2143->g_1292.f1 += 1)
            { /* block id: 1170 */
                int32_t *l_2044 = &l_2011;
                struct S0 *l_2047 = &p_2143->g_220;
                l_2046 = l_2044;
                (*l_2047) = (*p_2143->g_325);
                for (l_2007 = 1; (l_2007 <= 4); l_2007 += 1)
                { /* block id: 1175 */
                    uint8_t l_2048[10] = {0x80L,0xADL,0x80L,0x80L,0xADL,0x80L,0x80L,0xADL,0x80L,0x80L};
                    int i;
                    atomic_and(&p_2143->g_atomic_reduction[get_linear_group_id()], l_2048[6] + get_linear_global_id());
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_2143->v_collective += p_2143->g_atomic_reduction[get_linear_group_id()];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (p_2143->g_144)
                        goto lbl_2050;
                    atomic_or(&p_2143->g_atomic_reduction[get_linear_group_id()], (**p_2143->g_117));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_2143->v_collective += p_2143->g_atomic_reduction[get_linear_group_id()];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                }
            }
            (**p_2143->g_117) = p_15;
        }
        (*p_2143->g_2049) = l_2046;
    }
    for (p_2143->g_310 = 0; (p_2143->g_310 < 4); ++p_2143->g_310)
    { /* block id: 1187 */
        uint32_t l_2053 = 4294967295UL;
        struct S0 *l_2057 = (void*)0;
        struct S0 *l_2058[6][7] = {{&p_2143->g_754,&p_2143->g_697,&p_2143->g_2042[5],&p_2143->g_2042[4],(void*)0,(void*)0,&p_2143->g_2042[4]},{&p_2143->g_754,&p_2143->g_697,&p_2143->g_2042[5],&p_2143->g_2042[4],(void*)0,(void*)0,&p_2143->g_2042[4]},{&p_2143->g_754,&p_2143->g_697,&p_2143->g_2042[5],&p_2143->g_2042[4],(void*)0,(void*)0,&p_2143->g_2042[4]},{&p_2143->g_754,&p_2143->g_697,&p_2143->g_2042[5],&p_2143->g_2042[4],(void*)0,(void*)0,&p_2143->g_2042[4]},{&p_2143->g_754,&p_2143->g_697,&p_2143->g_2042[5],&p_2143->g_2042[4],(void*)0,(void*)0,&p_2143->g_2042[4]},{&p_2143->g_754,&p_2143->g_697,&p_2143->g_2042[5],&p_2143->g_2042[4],(void*)0,(void*)0,&p_2143->g_2042[4]}};
        int i, j;
        l_2053--;
        (*p_2143->g_1602) = p_2143->g_2056;
    }
    return l_2060[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_2143->g_878 p_2143->g_117 p_2143->g_118 p_2143->g_119 p_2143->g_329 p_2143->g_141 p_2143->g_1805 p_2143->g_297 p_2143->g_144 p_2143->g_1601.f2 p_2143->g_1706.f4 p_2143->g_2 p_2143->g_1839 p_2143->g_181 p_2143->g_214 p_2143->g_1422 p_2143->g_1280 p_2143->g_830 p_2143->g_545 p_2143->g_546 p_2143->g_41 p_2143->g_260 p_2143->g_107 p_2143->g_1701 p_2143->g_1265 p_2143->g_168 p_2143->g_1323 p_2143->g_6 p_2143->g_1921 p_2143->g_689 p_2143->g_310 p_2143->g_79 p_2143->g_1397 p_2143->g_249 p_2143->g_1979
 * writes: p_2143->g_878 p_2143->g_119 p_2143->g_329 p_2143->g_1071.f1 p_2143->g_1805 p_2143->g_260 p_2143->g_636 p_2143->g_1029 p_2143->g_168 p_2143->g_181 p_2143->g_1422 p_2143->g_107 p_2143->g_697.f1 p_2143->g_1880 p_2143->g_249.f0 p_2143->g_89 p_2143->g_144 p_2143->g_1280 p_2143->g_939.f3 p_2143->g_6 p_2143->g_141 p_2143->g_220.f1 p_2143->g_1965
 */
int8_t  func_18(uint32_t  p_19, int8_t * p_20, int8_t * p_21, int32_t  p_22, uint64_t  p_23, struct S4 * p_2143)
{ /* block id: 1028 */
    int8_t l_1763 = 0x73L;
    int32_t l_1773 = 0x4C7D3CBCL;
    int32_t l_1775[1];
    int32_t l_1793 = 0x28C4845AL;
    int32_t l_1943[2];
    int32_t *l_1956[9] = {&p_2143->g_500,&p_2143->g_500,&p_2143->g_500,&p_2143->g_500,&p_2143->g_500,&p_2143->g_500,&p_2143->g_500,&p_2143->g_500,&p_2143->g_500};
    uint64_t *l_1963 = &p_2143->g_1234;
    uint64_t **l_1962 = &l_1963;
    uint64_t ***l_1982[4];
    int32_t *l_1998 = (void*)0;
    int32_t *l_1999 = &p_2143->g_290;
    int32_t *l_2000[10] = {&p_2143->g_290,&p_2143->g_290,&p_2143->g_290,&p_2143->g_290,&p_2143->g_290,&p_2143->g_290,&p_2143->g_290,&p_2143->g_290,&p_2143->g_290,&p_2143->g_290};
    uint32_t l_2001[1][7][4] = {{{0xA6B4EFFEL,3UL,0xA6B4EFFEL,0xA6B4EFFEL},{0xA6B4EFFEL,3UL,0xA6B4EFFEL,0xA6B4EFFEL},{0xA6B4EFFEL,3UL,0xA6B4EFFEL,0xA6B4EFFEL},{0xA6B4EFFEL,3UL,0xA6B4EFFEL,0xA6B4EFFEL},{0xA6B4EFFEL,3UL,0xA6B4EFFEL,0xA6B4EFFEL},{0xA6B4EFFEL,3UL,0xA6B4EFFEL,0xA6B4EFFEL},{0xA6B4EFFEL,3UL,0xA6B4EFFEL,0xA6B4EFFEL}}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1775[i] = 0x0789C841L;
    for (i = 0; i < 2; i++)
        l_1943[i] = (-1L);
    for (i = 0; i < 4; i++)
        l_1982[i] = &p_2143->g_545;
    for (p_2143->g_878 = 1; (p_2143->g_878 <= 6); p_2143->g_878 += 1)
    { /* block id: 1031 */
        int64_t l_1784 = (-1L);
        int32_t l_1788 = 0x3EE3677FL;
        int32_t l_1796 = 0x11812848L;
        int32_t l_1799 = 0L;
        int32_t l_1802 = 0x5FD60DB8L;
        int32_t *l_1812 = &p_2143->g_260;
        int16_t *l_1820[8] = {&p_2143->g_1280,&p_2143->g_1280,&p_2143->g_1280,&p_2143->g_1280,&p_2143->g_1280,&p_2143->g_1280,&p_2143->g_1280,&p_2143->g_1280};
        int16_t *l_1822 = &p_2143->g_168;
        int64_t **l_1838[9][4] = {{&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214},{&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214},{&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214},{&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214},{&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214},{&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214},{&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214},{&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214},{&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214,&p_2143->g_1214}};
        uint8_t l_1936 = 255UL;
        union U2 l_1976 = {8UL};
        uint32_t ****l_1980 = &p_2143->g_1385;
        int i, j;
        (**p_2143->g_117) |= (safe_unary_minus_func_int16_t_s(p_23));
        for (p_2143->g_329 = 0; (p_2143->g_329 <= 3); p_2143->g_329 += 1)
        { /* block id: 1035 */
            union U2 l_1764 = {3UL};
            int32_t l_1792 = 3L;
            int8_t l_1794 = (-10L);
            int32_t l_1798 = 0x23E35174L;
            int32_t l_1801 = 2L;
            int32_t l_1803 = 0x747EB0FEL;
            uint16_t l_1836 = 0UL;
            int64_t **l_1837 = &p_2143->g_1214;
            uint16_t *l_1863 = &p_2143->g_249[0][1].f0;
            uint16_t **l_1862 = &l_1863;
            int64_t l_1911 = 0x1E2FB0268ECD0DFEL;
            uint32_t l_1927[5][2][10] = {{{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L},{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L}},{{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L},{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L}},{{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L},{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L}},{{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L},{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L}},{{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L},{0UL,7UL,0x11D84E09L,4294967288UL,0x4B225CFDL,0xAA78C5A8L,0x3F14C07EL,0x3C055B83L,7UL,0xA6AB34A7L}}};
            int32_t *l_1935 = &l_1775[0];
            uint32_t *l_1952 = &p_2143->g_181;
            int32_t **l_1955[2];
            uint32_t ****l_1959 = &p_2143->g_1385;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_1955[i] = (void*)0;
            if (p_2143->g_141[p_2143->g_329][(p_2143->g_329 + 2)])
            { /* block id: 1036 */
                int64_t l_1785[5][2][2] = {{{0x6E916E33D613110FL,0x6E916E33D613110FL},{0x6E916E33D613110FL,0x6E916E33D613110FL}},{{0x6E916E33D613110FL,0x6E916E33D613110FL},{0x6E916E33D613110FL,0x6E916E33D613110FL}},{{0x6E916E33D613110FL,0x6E916E33D613110FL},{0x6E916E33D613110FL,0x6E916E33D613110FL}},{{0x6E916E33D613110FL,0x6E916E33D613110FL},{0x6E916E33D613110FL,0x6E916E33D613110FL}},{{0x6E916E33D613110FL,0x6E916E33D613110FL},{0x6E916E33D613110FL,0x6E916E33D613110FL}}};
                int64_t l_1787[10][5][1] = {{{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L}}};
                int32_t l_1789 = (-8L);
                int32_t l_1790 = (-8L);
                int32_t l_1797 = 0L;
                int32_t l_1800 = 8L;
                int32_t l_1804 = 0x3756077CL;
                uint16_t l_1809[8][7] = {{0x6DFDL,0x1C1EL,1UL,1UL,1UL,0x1C1EL,0x6DFDL},{0x6DFDL,0x1C1EL,1UL,1UL,1UL,0x1C1EL,0x6DFDL},{0x6DFDL,0x1C1EL,1UL,1UL,1UL,0x1C1EL,0x6DFDL},{0x6DFDL,0x1C1EL,1UL,1UL,1UL,0x1C1EL,0x6DFDL},{0x6DFDL,0x1C1EL,1UL,1UL,1UL,0x1C1EL,0x6DFDL},{0x6DFDL,0x1C1EL,1UL,1UL,1UL,0x1C1EL,0x6DFDL},{0x6DFDL,0x1C1EL,1UL,1UL,1UL,0x1C1EL,0x6DFDL},{0x6DFDL,0x1C1EL,1UL,1UL,1UL,0x1C1EL,0x6DFDL}};
                int i, j, k;
                atomic_max(&p_2143->g_atomic_reduction[get_linear_group_id()], (-1L));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_2143->v_collective += p_2143->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (l_1763)
                    continue;
                for (p_2143->g_1071.f1 = 0; (p_2143->g_1071.f1 <= 6); p_2143->g_1071.f1 += 1)
                { /* block id: 1041 */
                    int64_t l_1786 = 0x67704C9A9FAB67D3L;
                    int32_t l_1791 = 0x20CD2BB9L;
                    int32_t l_1795 = 0x40EB7979L;
                    int32_t l_1808[7];
                    int16_t *l_1821 = &p_2143->g_1743.f3;
                    int16_t *l_1823 = &p_2143->g_1400.f3;
                    int i;
                    for (i = 0; i < 7; i++)
                        l_1808[i] = 0L;
                    if ((l_1764 , p_19))
                    { /* block id: 1042 */
                        int32_t *l_1765 = &p_2143->g_6;
                        int32_t *l_1766 = &p_2143->g_1221;
                        int32_t *l_1767 = &p_2143->g_260;
                        int32_t l_1768 = (-10L);
                        int32_t *l_1769 = &p_2143->g_6;
                        int32_t *l_1770 = (void*)0;
                        int32_t *l_1771 = (void*)0;
                        int32_t *l_1772 = (void*)0;
                        int32_t *l_1774 = &p_2143->g_6;
                        int32_t *l_1776 = &p_2143->g_110;
                        int32_t *l_1777 = (void*)0;
                        int32_t *l_1778 = &l_1768;
                        int32_t *l_1779 = &l_1775[0];
                        int32_t *l_1780 = &p_2143->g_260;
                        int32_t *l_1781 = &p_2143->g_89;
                        int32_t *l_1782[4][6][2] = {{{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107}},{{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107}},{{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107}},{{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107},{&p_2143->g_107,&p_2143->g_107}}};
                        int64_t l_1783 = 0x103B4F474A7B1904L;
                        int32_t **l_1813 = &l_1776;
                        int i, j, k;
                        if ((*p_2143->g_118))
                            break;
                        ++p_2143->g_1805;
                        l_1809[3][3]++;
                        (*l_1813) = l_1812;
                    }
                    else
                    { /* block id: 1047 */
                        int16_t **l_1819[5];
                        union U2 l_1829[7] = {{65535UL},{65535UL},{65535UL},{65535UL},{65535UL},{65535UL},{65535UL}};
                        int i;
                        for (i = 0; i < 5; i++)
                            l_1819[i] = &p_2143->g_1323;
                        (*l_1812) = (safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_s((safe_unary_minus_func_int64_t_s((~((l_1821 = (l_1820[6] = &p_2143->g_168)) != (l_1823 = (((0x49A44407A116A1F7L ^ (l_1794 >= p_22)) < p_22) , l_1822)))))), (safe_unary_minus_func_int16_t_s(((~(safe_lshift_func_uint8_t_u_u((*p_2143->g_297), ((safe_add_func_uint64_t_u_u((l_1829[3] , (safe_div_func_int64_t_s_s((safe_mul_func_int16_t_s_s((~((((safe_add_func_int32_t_s_s((l_1836 <= 65535UL), p_19)) , p_2143->g_1601.f2) , p_2143->g_1706.f4) , p_19)), p_23)), p_2143->g_2))), l_1829[3].f0)) | 0x6921D7B2BCA76BE1L)))) ^ (*p_2143->g_297)))))), FAKE_DIVERGE(p_2143->local_1_offset, get_local_id(1), 10)));
                        (**p_2143->g_117) = (l_1837 != l_1838[4][3]);
                        (*p_2143->g_1839) = &p_22;
                        return l_1785[4][0][0];
                    }
                    for (p_2143->g_1029 = 1; (p_2143->g_1029 <= 6); p_2143->g_1029 += 1)
                    { /* block id: 1058 */
                        if (p_23)
                            break;
                    }
                }
            }
            else
            { /* block id: 1062 */
                uint64_t l_1856 = 0UL;
                uint16_t **l_1866[3][10] = {{(void*)0,&l_1863,(void*)0,(void*)0,&l_1863,(void*)0,(void*)0,&l_1863,(void*)0,(void*)0},{(void*)0,&l_1863,(void*)0,(void*)0,&l_1863,(void*)0,(void*)0,&l_1863,(void*)0,(void*)0},{(void*)0,&l_1863,(void*)0,(void*)0,&l_1863,(void*)0,(void*)0,&l_1863,(void*)0,(void*)0}};
                int32_t **l_1933 = &p_2143->g_636;
                int32_t **l_1934[2];
                int i, j;
                for (i = 0; i < 2; i++)
                    l_1934[i] = &l_1812;
                for (p_2143->g_168 = 0; (p_2143->g_168 <= 4); p_2143->g_168 += 1)
                { /* block id: 1065 */
                    int64_t *l_1848 = (void*)0;
                    uint16_t **l_1864 = &l_1863;
                    int32_t l_1889 = 0L;
                    for (p_2143->g_181 = 0; (p_2143->g_181 <= 4); p_2143->g_181 += 1)
                    { /* block id: 1068 */
                        uint64_t *l_1850 = &p_2143->g_1234;
                        uint64_t **l_1849 = &l_1850;
                        uint64_t **l_1851 = (void*)0;
                        uint64_t *l_1853 = &p_2143->g_1234;
                        uint64_t **l_1852 = &l_1853;
                        int32_t l_1865 = 0L;
                        int32_t *l_1867 = &p_2143->g_107;
                        int i, j, k;
                        (*l_1867) &= ((safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(((((!((*p_21) = ((safe_div_func_int16_t_s_s((safe_add_func_int8_t_s_s(((void*)0 == l_1848), ((((*l_1849) = &p_2143->g_1234) == ((*l_1852) = &p_2143->g_1234)) | ((safe_add_func_int8_t_s_s(l_1856, (p_2143->g_214[p_2143->g_329][p_2143->g_181][p_2143->g_329] , (((((*p_20) , l_1763) || (safe_div_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u((safe_unary_minus_func_uint8_t_u((((((l_1865 = (l_1862 != l_1864)) >= (-5L)) , p_2143->g_1280) && (***p_2143->g_830)) != (*l_1812)))), 10)) , (-1L)), (*p_2143->g_297)))) , 8L) | 0x66D0L)))) ^ 0x6DL)))), p_19)) != p_19))) > l_1798) , &p_2143->g_1070[1][2]) != l_1866[2][5]), p_23)), (*p_2143->g_297))) > GROUP_DIVERGE(0, 1));
                    }
                    for (p_2143->g_697.f1 = 4; (p_2143->g_697.f1 >= 0); p_2143->g_697.f1 -= 1)
                    { /* block id: 1077 */
                        int8_t l_1881[5] = {0x65L,0x65L,0x65L,0x65L,0x65L};
                        uint16_t *l_1888 = &p_2143->g_249[0][1].f0;
                        int i;
                        (**p_2143->g_117) = ((safe_sub_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(p_2143->g_141[p_2143->g_329][(p_2143->g_329 + 2)], (l_1798 = (l_1889 = ((((p_19 > ((safe_lshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((p_2143->g_1880[2][3][2] = &p_2143->g_1577) != &p_2143->g_1075), (((*l_1863) = (l_1881[3] < ((safe_sub_func_uint64_t_u_u(0x4117F55EDC6BB789L, ((safe_sub_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((-1L) >= ((((((l_1820[6] == l_1888) == 0x22L) == (*l_1812)) <= 1L) < l_1881[4]) , 18446744073709551615UL)), l_1856)), p_23)) , 7UL))) == p_19))) <= p_23))), 1)), p_23)) <= 0x99L)) & l_1775[0]) || 4294967288UL) ^ l_1794))))), GROUP_DIVERGE(0, 1))) , l_1881[0]);
                        if (p_23)
                            continue;
                    }
                    return (*l_1812);
                }
                for (p_23 = 0; (p_23 <= 4); p_23 += 1)
                { /* block id: 1089 */
                    uint64_t l_1919[4][1][5] = {{{0x07500F38A1FAB49DL,0x4FFB2E482CFB8136L,0x07500F38A1FAB49DL,0x07500F38A1FAB49DL,0x4FFB2E482CFB8136L}},{{0x07500F38A1FAB49DL,0x4FFB2E482CFB8136L,0x07500F38A1FAB49DL,0x07500F38A1FAB49DL,0x4FFB2E482CFB8136L}},{{0x07500F38A1FAB49DL,0x4FFB2E482CFB8136L,0x07500F38A1FAB49DL,0x07500F38A1FAB49DL,0x4FFB2E482CFB8136L}},{{0x07500F38A1FAB49DL,0x4FFB2E482CFB8136L,0x07500F38A1FAB49DL,0x07500F38A1FAB49DL,0x4FFB2E482CFB8136L}}};
                    int64_t *l_1922 = &p_2143->g_141[1][7];
                    int32_t *l_1928[4][8][6] = {{{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2}},{{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2},{(void*)0,(void*)0,&p_2143->g_107,(void*)0,&p_2143->g_1221,&p_2143->g_2}}};
                    int i, j, k;
                    for (p_2143->g_89 = 2; (p_2143->g_89 <= 6); p_2143->g_89 += 1)
                    { /* block id: 1092 */
                        int32_t l_1912 = 0x7B21884CL;
                        int16_t l_1920 = 0x5E57L;
                        int i;
                        p_2143->g_6 |= ((*l_1812) = (safe_rshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((+(safe_div_func_int32_t_s_s((safe_unary_minus_func_int8_t_s((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s(((safe_add_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s(((*p_2143->g_297) = (safe_lshift_func_int8_t_s_u(1L, FAKE_DIVERGE(p_2143->global_1_offset, get_global_id(1), 10)))), ((*p_20) = 0x05L))), (l_1912 = ((safe_mul_func_uint8_t_u_u((((((p_2143->g_1701[p_23] , 0x23397036L) || l_1911) ^ l_1912) | (l_1792 = (safe_mod_func_uint32_t_u_u(((*p_2143->g_1265) <= (p_23 && ((safe_div_func_uint64_t_u_u((((*p_2143->g_1323) = (safe_mul_func_int16_t_s_s(7L, p_22))) ^ 0x2A8CL), p_23)) , 0x462EL))), l_1919[1][0][1])))) || p_23), l_1920)) || 255UL)))) > l_1919[1][0][1]), 4)), (*p_2143->g_1265))), l_1775[0])))), p_23))) && 65528UL), 0x2C7E6B29L)), l_1856)));
                        return (*p_20);
                    }
                    if ((((!(((+((*l_1922) &= ((p_2143->g_1921 == l_1775[0]) | 0x9BDC1386E3C86367L))) <= (safe_sub_func_uint8_t_u_u((+p_23), (p_22 <= (p_23 , ((safe_sub_func_int8_t_s_s((((*p_20) = (*p_2143->g_689)) , (*p_21)), ((*p_2143->g_297) = (l_1927[0][0][4] ^ (*l_1812))))) , GROUP_DIVERGE(2, 1))))))) >= l_1763)) || 0xFE79F669L) < l_1856))
                    { /* block id: 1105 */
                        int32_t **l_1929 = &l_1812;
                        (*l_1929) = l_1928[3][1][0];
                        return (*p_20);
                    }
                    else
                    { /* block id: 1108 */
                        uint32_t l_1930 = 4294967295UL;
                        --l_1930;
                    }
                }
                l_1935 = ((*l_1933) = &p_22);
            }
            --l_1936;
            (**p_2143->g_117) |= (safe_sub_func_int32_t_s_s((safe_div_func_int16_t_s_s(((*l_1935) = (+l_1943[1])), p_23)), p_23));
            (*l_1935) = ((safe_sub_func_uint64_t_u_u(0xB9325FD74CF86126L, (safe_add_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(65535UL, (safe_rshift_func_uint16_t_u_u((((*l_1952) = 0xA997088CL) , (p_23 && (+(safe_sub_func_int32_t_s_s((((*p_2143->g_545) == (void*)0) > ((l_1956[1] = l_1812) == ((p_22 >= (safe_mod_func_uint16_t_u_u(((void*)0 != l_1959), l_1943[0]))) , (void*)0))), (*l_1812)))))), p_23)))), l_1775[0])))) <= p_19);
            for (p_2143->g_220.f1 = 6; (p_2143->g_220.f1 >= 2); p_2143->g_220.f1 -= 1)
            { /* block id: 1123 */
                uint64_t ***l_1964[5][8] = {{&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962},{&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962},{&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962},{&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962},{&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962,&l_1962}};
                int32_t l_1971 = 0x7E1FC3B6L;
                int32_t *l_1981 = &l_1796;
                int i, j;
                (*l_1981) &= (((safe_mul_func_int8_t_s_s((((*p_2143->g_1397) , (p_2143->g_1965 = l_1962)) != ((((*p_2143->g_297) = (safe_sub_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_s(0UL, l_1971)) != ((((safe_div_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u(p_19, (l_1976 , (((*l_1812) , p_22) | (~(safe_rshift_func_int16_t_s_s(((p_2143->g_1979 , (void*)0) == l_1980), 0))))))) | p_23), (*p_2143->g_297))) <= 0L) <= p_22) , 1L)), p_22))) != (*l_1935)) , &p_2143->g_1966)), 0L)) ^ 65532UL) , (*l_1935));
            }
        }
        l_1812 = &p_22;
    }
    if ((l_1982[0] != &p_2143->g_545))
    { /* block id: 1131 */
        uint32_t l_1983 = 0xC3187C5CL;
        uint32_t *l_1988 = &p_2143->g_181;
        uint32_t *l_1991 = &p_2143->g_235;
        uint8_t ***l_1993 = &p_2143->g_1992;
        uint8_t **l_1994[5][6][8] = {{{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297}},{{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297}},{{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297}},{{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297}},{{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297},{&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297,&p_2143->g_297}}};
        uint64_t *l_1995 = &p_2143->g_926[6][4];
        int8_t *l_1996 = &p_2143->g_708;
        int32_t **l_1997 = &p_2143->g_636;
        int i, j, k;
        (*l_1997) = l_1988;
    }
    else
    { /* block id: 1138 */
        return l_1775[0];
    }
    --l_2001[0][4][3];
    return (*p_21);
}


/* ------------------------------------------ */
/* 
 * reads : p_2143->g_41 p_2143->g_6 p_2143->g_2 p_2143->g_79 p_2143->g_89 p_2143->g_84 p_2143->g_107 p_2143->g_108 p_2143->g_117 p_2143->g_120 p_2143->g_118 p_2143->g_119 p_2143->g_166 p_2143->g_144 p_2143->g_181 p_2143->g_292 p_2143->g_525.f1 p_2143->g_310 p_2143->g_546 p_2143->g_500 p_2143->g_168 p_2143->g_290 p_2143->g_635 p_2143->g_637 p_2143->g_636 p_2143->g_297 p_2143->g_545 p_2143->g_517.f0 p_2143->g_329 p_2143->g_324 p_2143->g_689 p_2143->g_358 p_2143->g_359 p_2143->g_697 p_2143->g_872 p_2143->g_877 p_2143->g_754.f1 p_2143->g_878 p_2143->g_525.f2 p_2143->g_830 p_2143->g_235 p_2143->g_908 p_2143->g_841 p_2143->g_525.f0 p_2143->g_243.f0 p_2143->g_141 p_2143->g_323.f1 p_2143->g_260 p_2143->g_220.f1 p_2143->g_754.f0 p_2143->g_261 p_2143->g_347.f1 p_2143->g_926 p_2143->g_1068 p_2143->g_1071 p_2143->g_1072 p_2143->g_1075 p_2143->g_1076 p_2143->g_1107 p_2143->g_1111 p_2143->g_1125 p_2143->g_705 p_2143->g_1029 p_2143->g_1161 p_2143->g_1169 p_2143->g_110 p_2143->g_934 p_2143->g_528 p_2143->g_323 p_2143->g_698.f1 p_2143->g_1221 p_2143->g_360 p_2143->g_1234 p_2143->g_1263 p_2143->g_1265 p_2143->g_1281 p_2143->g_1287 p_2143->g_1292 p_2143->g_1293.f1 p_2143->g_1264 p_2143->g_1330 p_2143->g_1385 p_2143->g_443 p_2143->g_1499 p_2143->g_914.f0 p_2143->g_1537 p_2143->g_1600 p_2143->g_1601 p_2143->g_1602 p_2143->g_1577 p_2143->g_1619 p_2143->g_1620 p_2143->g_1635 p_2143->g_1423 p_2143->g_1673 p_2143->g_1578 p_2143->g_1701 p_2143->g_1706 p_2143->g_1738 p_2143->g_782 p_2143->g_783 p_2143->g_1396 p_2143->g_1397 p_2143->g_1740 p_2143->g_1743 p_2143->g_1752
 * writes: p_2143->g_41 p_2143->g_79 p_2143->g_89 p_2143->g_107 p_2143->g_108 p_2143->g_141 p_2143->g_166 p_2143->g_119 p_2143->g_292 p_2143->g_525.f1 p_2143->g_249.f0 p_2143->g_290 p_2143->g_636 p_2143->g_144 p_2143->g_168 p_2143->g_329 p_2143->g_324 p_2143->g_689 p_2143->g_359 p_2143->g_500 p_2143->g_698 p_2143->g_878 p_2143->g_310 p_2143->g_235 p_2143->g_908 p_2143->g_214.f3 p_2143->g_170.f1 p_2143->g_926 p_2143->g_260 p_2143->g_1029 p_2143->g_877 p_2143->g_360.f1 p_2143->g_525.f4 p_2143->g_1076 p_2143->g_261 p_2143->g_939.f2 p_2143->g_110 p_2143->g_934 p_2143->g_1214 p_2143->g_1234 p_2143->g_754.f1 p_2143->g_1264 p_2143->g_1282 p_2143->g_1293 p_2143->g_1265 p_2143->g_1323 p_2143->g_220.f1 p_2143->g_1332 p_2143->g_1385 p_2143->g_443 p_2143->g_323.f1 p_2143->g_1577 p_2143->g_220 p_2143->g_347 p_2143->g_1433.f1 p_2143->g_1423 p_2143->g_214.f2 p_2143->g_1071.f1 p_2143->g_783 p_2143->g_1397
 */
uint32_t  func_28(int32_t  p_29, int32_t  p_30, uint64_t  p_31, struct S4 * p_2143)
{ /* block id: 10 */
    uint64_t *l_38 = (void*)0;
    uint64_t *l_39 = (void*)0;
    uint64_t *l_40[3][5][9] = {{{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41}},{{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41}},{{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41},{&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,&p_2143->g_41,(void*)0,&p_2143->g_41,&p_2143->g_41}}};
    int32_t l_42 = 0x4D2D97B6L;
    int16_t l_47 = 6L;
    uint32_t l_51 = 0xA0786CB5L;
    int8_t *l_78 = &p_2143->g_79;
    uint32_t l_598 = 0x1BACA4CBL;
    int32_t l_599 = 0x316147D7L;
    union U2 l_948 = {0x054DL};
    uint32_t l_1524 = 0x61315015L;
    int16_t l_1526 = 0L;
    int64_t l_1534 = 0L;
    int32_t l_1555 = 0L;
    int32_t l_1557 = 0x3F38A403L;
    int32_t l_1558 = 0L;
    union U3 *l_1575 = &p_2143->g_850;
    union U3 **l_1574 = &l_1575;
    int32_t l_1624[5][7][3] = {{{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)}},{{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)}},{{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)}},{{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)}},{{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)},{(-1L),(-1L),(-4L)}}};
    union U1 **l_1689 = &p_2143->g_359;
    uint32_t ***l_1696 = &p_2143->g_1386[1][1];
    int64_t **l_1708[2][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int64_t ***l_1707 = &l_1708[1][0];
    struct S0 **l_1710 = &p_2143->g_783;
    uint32_t **l_1727 = &p_2143->g_1500;
    int i, j, k;
    if (((++p_2143->g_41) , (safe_mul_func_int8_t_s_s((p_2143->g_6 != l_47), (safe_add_func_uint64_t_u_u(((safe_unary_minus_func_int8_t_s(l_51)) >= func_52(func_58(p_31, func_62((safe_mul_func_int16_t_s_s(p_2143->g_2, ((0L & (safe_rshift_func_uint16_t_u_s((p_2143->g_249[0][1].f0 = (((safe_sub_func_int16_t_s_s(func_73(l_78, (safe_mod_func_int32_t_s_s(l_47, func_82(p_29, p_2143))), p_31, p_2143->g_181, p_2143), l_598)) , l_598) | 0x2FL)), l_599))) , 0x70F1L))), p_2143->g_310, l_38, l_78, p_2143), l_599, p_2143), p_2143->g_697.f1, l_948, l_948.f0, l_42, p_2143)), l_1524))))))
    { /* block id: 863 */
        int32_t *l_1525 = &p_2143->g_107;
        uint32_t *l_1533 = &l_598;
        int32_t **l_1535 = (void*)0;
        int32_t **l_1536 = (void*)0;
        (*p_2143->g_1537) = l_1533;
    }
    else
    { /* block id: 870 */
        int32_t l_1540 = (-1L);
        int32_t l_1546 = (-6L);
        int32_t l_1551 = (-9L);
        int32_t l_1552 = 0x7C1DC8C9L;
        int32_t l_1553 = 8L;
        int32_t l_1556[1];
        int64_t l_1561 = (-3L);
        union U3 **l_1579[3][6][8] = {{{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]}},{{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]}},{{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]},{&p_2143->g_1578[3],&l_1575,&p_2143->g_1578[4],(void*)0,&p_2143->g_1578[4],&p_2143->g_1578[4],&p_2143->g_1578[3],&p_2143->g_1578[1]}}};
        uint64_t ***l_1617 = (void*)0;
        union U1 *l_1621 = &p_2143->g_360;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1556[i] = 0x418730A6L;
        for (p_2143->g_79 = 0; (p_2143->g_79 <= 0); p_2143->g_79 += 1)
        { /* block id: 873 */
            int32_t l_1541[9][2][7] = {{{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L},{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L}},{{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L},{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L}},{{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L},{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L}},{{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L},{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L}},{{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L},{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L}},{{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L},{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L}},{{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L},{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L}},{{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L},{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L}},{{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L},{1L,0x513375E3L,1L,0x5872534EL,0x17701661L,(-5L),6L}}};
            int32_t l_1549 = 0x4C2468FCL;
            int32_t l_1563[8] = {0x646154A1L,0x646154A1L,0x646154A1L,0x646154A1L,0x646154A1L,0x646154A1L,0x646154A1L,0x646154A1L};
            uint32_t l_1593 = 0UL;
            uint64_t ***l_1615 = &p_2143->g_545;
            union U1 *l_1622 = &p_2143->g_360;
            int8_t l_1625 = 0x2CL;
            uint32_t l_1626[2];
            int32_t *l_1653 = &p_2143->g_89;
            int64_t ***l_1709[6] = {&l_1708[1][4],&l_1708[1][4],&l_1708[1][4],&l_1708[1][4],&l_1708[1][4],&l_1708[1][4]};
            int32_t l_1718 = (-3L);
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_1626[i] = 0xDDD7DD95L;
            (**p_2143->g_117) = (safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2143->global_1_offset, get_global_id(1), 10), l_1540));
            for (p_2143->g_166 = 0; (p_2143->g_166 <= 0); p_2143->g_166 += 1)
            { /* block id: 877 */
                uint8_t l_1567 = 252UL;
                union U3 ***l_1576[6][1];
                uint32_t *l_1582 = &p_2143->g_235;
                uint32_t *l_1598 = &l_598;
                int i, j;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_1576[i][j] = &l_1574;
                }
                for (p_2143->g_1029 = 0; (p_2143->g_1029 <= 0); p_2143->g_1029 += 1)
                { /* block id: 880 */
                    uint16_t l_1543 = 0UL;
                    int32_t l_1550 = 0x10EA0CA4L;
                    int32_t l_1554 = 0x25F8063CL;
                    int32_t l_1559 = 0x58CCA0AAL;
                    int32_t l_1560 = 0x3E5B1247L;
                    int32_t l_1562 = 0x5FCA3B32L;
                    int32_t l_1564 = (-4L);
                    int32_t l_1565 = 0x08E26AD2L;
                    int32_t l_1566[10] = {0x772CADCFL,0x772CADCFL,0x772CADCFL,0x772CADCFL,0x772CADCFL,0x772CADCFL,0x772CADCFL,0x772CADCFL,0x772CADCFL,0x772CADCFL};
                    int i;
                    for (p_2143->g_323.f1 = 0; (p_2143->g_323.f1 >= 0); p_2143->g_323.f1 -= 1)
                    { /* block id: 883 */
                        return l_1541[0][1][0];
                    }
                    for (p_2143->g_525.f1 = 0; (p_2143->g_525.f1 <= 6); p_2143->g_525.f1 += 1)
                    { /* block id: 888 */
                        int i, j;
                        (**p_2143->g_117) |= p_2143->g_926[(p_2143->g_166 + 4)][(p_2143->g_79 + 5)];
                        return l_1541[2][0][4];
                    }
                    for (p_30 = 0; (p_30 <= 3); p_30 += 1)
                    { /* block id: 894 */
                        int32_t *l_1542 = &l_599;
                        int32_t *l_1547 = &p_2143->g_260;
                        int32_t *l_1548[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1548[i] = (void*)0;
                        --l_1543;
                        ++l_1567;
                        (*l_1547) |= (p_29 >= (!(safe_add_func_uint8_t_u_u(0xDEL, (l_47 < (+(p_31 >= p_2143->g_934[0].f5)))))));
                    }
                }
                (**p_2143->g_117) = (safe_add_func_int64_t_s_s((GROUP_DIVERGE(0, 1) , ((l_1579[1][5][6] = (p_2143->g_1577 = l_1574)) != ((safe_div_func_int8_t_s_s((0x5BC31E55F28A92EAL < ((++(*l_1582)) == (safe_rshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u((*p_2143->g_297), ((*p_2143->g_297) | ((safe_mul_func_int16_t_s_s(((p_31 ^ (((safe_add_func_uint64_t_u_u(((((l_1557 | l_1593) ^ (((safe_sub_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u((p_30 && ((*l_1598) = 1UL)), FAKE_DIVERGE(p_2143->local_0_offset, get_local_id(0), 10))) < 0L), l_1526)) <= p_29) , GROUP_DIVERGE(2, 1))) , 0x4875L) && 0x0CEFL), 0x28947707EB343A5CL)) != l_1558) | 9L)) || 2L), p_31)) != 0x1546549DL)))), 13)))), l_1567)) , (void*)0))), p_31));
                for (p_2143->g_443 = 0; (p_2143->g_443 <= 0); p_2143->g_443 += 1)
                { /* block id: 907 */
                    uint32_t l_1599 = 4294967293UL;
                    int i, j, k;
                    for (p_2143->g_110 = 0; (p_2143->g_110 >= 0); p_2143->g_110 -= 1)
                    { /* block id: 910 */
                        uint64_t ****l_1616 = (void*)0;
                        union U3 *l_1618[3][10][4] = {{{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850}},{{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850}},{{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850},{&p_2143->g_939,(void*)0,&p_2143->g_939,&p_2143->g_850}}};
                        int i, j, k;
                        (**p_2143->g_117) = l_1599;
                        (*p_2143->g_1602) = (p_2143->g_1600 , p_2143->g_1601);
                        (**p_2143->g_117) &= ((p_2143->g_141[1][7] = (safe_add_func_int8_t_s_s(1L, (safe_lshift_func_uint8_t_u_u((*p_2143->g_297), (l_1541[0][1][0] ^ ((*p_2143->g_1265) = (safe_rshift_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(0x07L, 5)), p_30))))))))) || (safe_sub_func_uint16_t_u_u(p_30, (((safe_rshift_func_uint8_t_u_s(p_29, 5)) == ((l_1615 == (l_1617 = l_1615)) , 0UL)) && p_29))));
                        l_1618[2][9][2] = (*p_2143->g_1577);
                    }
                    (*p_2143->g_1620) = p_2143->g_1619;
                    l_1622 = l_1621;
                }
            }
            for (p_2143->g_1433.f1 = 0; (p_2143->g_1433.f1 <= 6); p_2143->g_1433.f1 += 1)
            { /* block id: 925 */
                int32_t *l_1623[8] = {&l_1552,&l_1552,&l_1552,&l_1552,&l_1552,&l_1552,&l_1552,&l_1552};
                uint64_t *l_1636 = &p_2143->g_1234;
                uint16_t *l_1637 = &p_2143->g_939.f2;
                uint16_t *l_1638[5][4][10] = {{{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2}},{{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2}},{{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2}},{{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2}},{{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2},{&p_2143->g_1423,&p_2143->g_292,&p_2143->g_292,&p_2143->g_1423,&p_2143->g_249[0][1].f0,&p_2143->g_292,&p_2143->g_84[2][5][1],&l_948.f0,(void*)0,&p_2143->g_1400.f2}}};
                int i, j, k;
                --l_1626[0];
                if (((safe_mul_func_int8_t_s_s(l_1558, p_29)) , (safe_lshift_func_uint16_t_u_u((p_2143->g_1423 &= (safe_mul_func_int8_t_s_s(((p_29 >= ((((l_1549 &= (*p_2143->g_689)) > (((!(((*l_1636) &= (p_2143->g_1635[0] , l_1561)) , 0UL)) && l_42) != (l_1557 ^= 1UL))) > l_1626[1]) < p_29)) == 0x6980L), (-7L)))), 0))))
                { /* block id: 931 */
                    uint32_t l_1640 = 0x247183A1L;
                    (**p_2143->g_117) = (safe_unary_minus_func_int32_t_s(((p_31 , l_1640) ^ (+((0x1B2AL | GROUP_DIVERGE(1, 1)) > (safe_rshift_func_uint16_t_u_u((l_1552 &= 0x18D0L), l_1549)))))));
                    (**p_2143->g_117) = p_29;
                    if (p_31)
                        break;
                }
                else
                { /* block id: 936 */
                    uint16_t l_1649 = 0xB2E9L;
                    int32_t *l_1652[9][1][3] = {{{&l_42,&l_42,&l_42}},{{&l_42,&l_42,&l_42}},{{&l_42,&l_42,&l_42}},{{&l_42,&l_42,&l_42}},{{&l_42,&l_42,&l_42}},{{&l_42,&l_42,&l_42}},{{&l_42,&l_42,&l_42}},{{&l_42,&l_42,&l_42}},{{&l_42,&l_42,&l_42}}};
                    int16_t ***l_1669 = &p_2143->g_1264;
                    int16_t ****l_1668 = &l_1669;
                    int16_t *****l_1667 = &l_1668;
                    uint32_t *l_1693 = &l_1626[0];
                    int i, j, k;
                    l_1549 ^= (safe_mul_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(p_30, 6)), ((safe_mod_func_uint32_t_u_u(l_1649, (safe_sub_func_int64_t_s_s(((p_29 ^ (l_1541[0][1][0] || (((p_2143->g_214[1][1][1].f2 = l_948.f0) <= p_30) | 0x562780F8L))) , ((((*p_2143->g_358) != (void*)0) && p_31) > p_2143->g_697.f0)), l_1593)))) >= l_1649)));
                    if (p_30)
                        continue;
                    for (l_1549 = 0; (l_1549 <= 2); l_1549 += 1)
                    { /* block id: 942 */
                        union U1 **l_1656 = &p_2143->g_359;
                        int32_t l_1670 = 0x062DA633L;
                        int8_t *l_1671 = &l_1625;
                        uint32_t *l_1672 = &l_51;
                        uint32_t l_1680 = 4294967290UL;
                        union U1 ***l_1690 = &l_1689;
                        int i, j, k;
                        l_1653 = l_1652[8][0][2];
                        l_1555 &= (safe_add_func_uint32_t_u_u(((*l_1672) = (((l_1656 != &p_2143->g_359) > (safe_sub_func_uint8_t_u_u(p_29, ((*l_1671) = ((l_1546 & (((safe_add_func_int8_t_s_s((safe_div_func_int32_t_s_s((-1L), (((safe_sub_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(p_29, ((*p_2143->g_297) ^ ((void*)0 == l_1667)))), p_29)) , (*p_2143->g_297)) , l_1553))), 1L)) , l_40[l_1549][(p_2143->g_79 + 3)][l_1549]) == (void*)0)) && l_1670))))) && p_30)), GROUP_DIVERGE(0, 1)));
                        l_1551 |= (p_2143->g_1673 , ((((safe_mul_func_uint8_t_u_u((p_30 ^ ((safe_sub_func_uint64_t_u_u((((safe_mod_func_uint16_t_u_u((l_1553 |= l_1680), (p_31 ^ ((((((*p_2143->g_297) = (0L < ((((((l_1624[3][2][2] != l_948.f0) | p_31) != (0xF53D51B6L <= 0x507A4F30L)) && p_29) , p_29) > p_31))) | l_1556[0]) != l_1680) || p_30) | (*l_1653))))) ^ 4L) == 0x34A45AF5L), l_1558)) >= (*l_1653))), l_1556[0])) | l_47) < p_29) && 6L));
                        (**p_2143->g_117) ^= (safe_lshift_func_int8_t_s_u(((safe_mod_func_int16_t_s_s(((l_1551 < ((*p_2143->g_1265) = (((((((*l_1637) = (safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((1UL != 2L), (l_1555 = l_1540))), 4294967295UL))) >= ((*l_1653) = p_31)) , ((((*l_1690) = l_1689) == (p_29 , &p_2143->g_359)) == 0x06L)) == (-1L)) , (*l_1653)) && p_29))) < (**p_2143->g_545)), p_29)) & p_29), 4));
                    }
                    atomic_add(&p_2143->g_atomic_reduction[get_linear_group_id()], (((safe_div_func_uint8_t_u_u((*p_2143->g_297), l_948.f0)) , (((0x3D531803L >= (++(*l_1693))) >= p_30) , l_1696)) == (void*)0) + get_linear_global_id());
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_2143->v_collective += p_2143->g_atomic_reduction[get_linear_group_id()];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                }
                for (p_2143->g_1071.f1 = 0; (p_2143->g_1071.f1 <= 0); p_2143->g_1071.f1 += 1)
                { /* block id: 962 */
                    (**p_2143->g_117) ^= (*l_1653);
                    l_1552 |= ((*l_1653) = ((void*)0 != (*p_2143->g_1577)));
                }
            }
            if (p_30)
                continue;
            for (l_1625 = 0; (l_1625 >= 0); l_1625 -= 1)
            { /* block id: 971 */
                int64_t *l_1711 = &p_2143->g_141[2][5];
                int32_t *l_1712 = &l_1556[0];
                int32_t l_1719 = (-3L);
                int32_t l_1720 = 0x0955C139L;
                int32_t l_1721 = 0x079246BBL;
                (*l_1653) &= l_1553;
                (**p_2143->g_117) = (safe_mul_func_int8_t_s_s((-9L), ((-1L) < ((void*)0 != (*p_2143->g_117)))));
                (*l_1712) ^= (safe_sub_func_uint64_t_u_u(p_29, (p_2143->g_1701[1] , ((*l_1711) |= ((((((~((safe_mod_func_int32_t_s_s(l_42, 0xCECA374FL)) >= (safe_add_func_int16_t_s_s((p_2143->g_1706 , (l_1707 != ((*l_1653) , l_1709[1]))), (p_2143->g_908 < p_30))))) & (**p_2143->g_545)) <= 0x38L) , l_1710) != (void*)0) , 1L)))));
                (*l_1653) = p_31;
                for (p_2143->g_698.f1 = 0; (p_2143->g_698.f1 >= 0); p_2143->g_698.f1 -= 1)
                { /* block id: 979 */
                    int32_t *l_1715 = &p_2143->g_1221;
                    int32_t **l_1717[6][9] = {{&l_1653,&l_1715,&p_2143->g_636,&l_1715,&l_1653,&l_1653,&l_1715,&p_2143->g_636,&l_1715},{&l_1653,&l_1715,&p_2143->g_636,&l_1715,&l_1653,&l_1653,&l_1715,&p_2143->g_636,&l_1715},{&l_1653,&l_1715,&p_2143->g_636,&l_1715,&l_1653,&l_1653,&l_1715,&p_2143->g_636,&l_1715},{&l_1653,&l_1715,&p_2143->g_636,&l_1715,&l_1653,&l_1653,&l_1715,&p_2143->g_636,&l_1715},{&l_1653,&l_1715,&p_2143->g_636,&l_1715,&l_1653,&l_1653,&l_1715,&p_2143->g_636,&l_1715},{&l_1653,&l_1715,&p_2143->g_636,&l_1715,&l_1653,&l_1653,&l_1715,&p_2143->g_636,&l_1715}};
                    int i, j;
                    (*l_1653) &= ((safe_lshift_func_int16_t_s_u((l_1653 != l_1653), 12)) < ((*p_2143->g_689) ^ (*p_2143->g_297)));
                    (*p_2143->g_841) = l_1715;
                    for (l_1526 = 0; (l_1526 >= 0); l_1526 -= 1)
                    { /* block id: 984 */
                        uint64_t l_1722 = 1UL;
                        if (p_29)
                            break;
                        ++l_1722;
                    }
                }
            }
        }
    }
    for (l_948.f0 = (-8); (l_948.f0 < 45); ++l_948.f0)
    { /* block id: 994 */
        uint64_t l_1733 = 0xE823725BAE87C7FBL;
        uint64_t *l_1734[2];
        int32_t l_1735 = 6L;
        int32_t *l_1736 = &p_2143->g_89;
        int i;
        for (i = 0; i < 2; i++)
            l_1734[i] = &p_2143->g_1234;
        if ((GROUP_DIVERGE(0, 1) >= (l_1727 == (p_2143->g_697.f2 , ((GROUP_DIVERGE(0, 1) ^ ((safe_unary_minus_func_int32_t_s((((safe_mod_func_int32_t_s_s(((*l_1736) = (~(((safe_rshift_func_int8_t_s_u(p_31, 4)) > 0x4493831736A55008L) != (l_1733 < (l_1735 = (l_1733 || (2UL == (l_40[0][2][2] == l_1734[1])))))))), p_31)) ^ 0x75DF1BF16CBDF9EFL) , l_1557))) , GROUP_DIVERGE(2, 1))) , &p_2143->g_1500)))))
        { /* block id: 997 */
            union U1 *l_1737 = &p_2143->g_360;
            (*p_2143->g_877) = l_1737;
            (*p_2143->g_1738) = &l_1735;
        }
        else
        { /* block id: 1000 */
            struct S0 *l_1739 = &p_2143->g_697;
            (*l_1710) = (l_1739 = (*p_2143->g_782));
            (*p_2143->g_1396) = (*p_2143->g_1396);
            l_1739 = l_1739;
        }
        return p_2143->g_1740;
    }
    for (p_2143->g_89 = 1; (p_2143->g_89 >= 0); p_2143->g_89 -= 1)
    { /* block id: 1010 */
        int8_t l_1744[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
        uint16_t l_1747 = 0x8C61L;
        int i;
        for (p_2143->g_329 = 0; (p_2143->g_329 <= 4); p_2143->g_329 += 1)
        { /* block id: 1013 */
            (**p_2143->g_117) |= ((void*)0 != &p_2143->g_708);
        }
        for (l_51 = 0; (l_51 <= 1); l_51 += 1)
        { /* block id: 1018 */
            int32_t *l_1745[4];
            int32_t l_1746 = 0x460C3F6EL;
            int16_t *****l_1756 = (void*)0;
            int16_t ******l_1757 = &l_1756;
            int32_t l_1758 = 0x55B5707DL;
            int i;
            for (i = 0; i < 4; i++)
                l_1745[i] = (void*)0;
            (**p_2143->g_117) &= l_599;
            p_2143->g_107 &= (safe_rshift_func_uint8_t_u_s((l_1758 &= (((l_1746 = ((p_2143->g_1743 , l_1744[1]) , 0L)) , (l_1747 == (safe_lshift_func_uint16_t_u_s(l_1524, 10)))) == ((((l_1558 ^ (-1L)) | (((p_2143->g_1752 != ((*l_1757) = l_1756)) & FAKE_DIVERGE(p_2143->global_1_offset, get_global_id(1), 10)) > l_47)) ^ p_30) != l_1624[3][2][2]))), 3));
        }
    }
    return l_1624[0][4][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2143->g_297 p_2143->g_144 p_2143->g_545 p_2143->g_546 p_2143->g_41 p_2143->g_117 p_2143->g_118 p_2143->g_119 p_2143->g_243.f0 p_2143->g_141 p_2143->g_323.f1 p_2143->g_689 p_2143->g_310 p_2143->g_79 p_2143->g_260 p_2143->g_290 p_2143->g_220.f1 p_2143->g_754.f0 p_2143->g_261 p_2143->g_166 p_2143->g_908 p_2143->g_347.f1 p_2143->g_235 p_2143->g_926 p_2143->g_1068 p_2143->g_1071 p_2143->g_1072 p_2143->g_1075 p_2143->g_830 p_2143->g_1076 p_2143->g_1107 p_2143->g_1111 p_2143->g_168 p_2143->g_500 p_2143->g_1125 p_2143->g_705 p_2143->g_1029 p_2143->g_636 p_2143->g_1161 p_2143->g_1169 p_2143->g_2 p_2143->g_107 p_2143->g_637 p_2143->g_110 p_2143->g_841 p_2143->g_934 p_2143->g_528 p_2143->g_323 p_2143->g_698.f1 p_2143->g_1221 p_2143->g_877 p_2143->g_359 p_2143->g_360 p_2143->g_1234 p_2143->g_878 p_2143->g_754.f1 p_2143->g_1263 p_2143->g_1265 p_2143->g_1281 p_2143->g_1287 p_2143->g_1292 p_2143->g_1293.f1 p_2143->g_1264 p_2143->g_1330 p_2143->g_358 p_2143->g_120 p_2143->g_1385 p_2143->g_525.f1 p_2143->g_443 p_2143->g_1499 p_2143->g_914.f0
 * writes: p_2143->g_144 p_2143->g_214.f3 p_2143->g_119 p_2143->g_170.f1 p_2143->g_41 p_2143->g_141 p_2143->g_926 p_2143->g_310 p_2143->g_79 p_2143->g_260 p_2143->g_1029 p_2143->g_290 p_2143->g_877 p_2143->g_329 p_2143->g_166 p_2143->g_360.f1 p_2143->g_878 p_2143->g_525.f4 p_2143->g_108 p_2143->g_1076 p_2143->g_168 p_2143->g_500 p_2143->g_292 p_2143->g_636 p_2143->g_525.f1 p_2143->g_261 p_2143->g_939.f2 p_2143->g_249.f0 p_2143->g_107 p_2143->g_908 p_2143->g_110 p_2143->g_934 p_2143->g_1214 p_2143->g_1234 p_2143->g_235 p_2143->g_754.f1 p_2143->g_1264 p_2143->g_1282 p_2143->g_1293 p_2143->g_1265 p_2143->g_1323 p_2143->g_220.f1 p_2143->g_1332 p_2143->g_1385 p_2143->g_443
 */
int16_t  func_52(uint32_t  p_53, int32_t  p_54, union U2  p_55, int16_t  p_56, int64_t  p_57, struct S4 * p_2143)
{ /* block id: 505 */
    union U1 ***l_954[2];
    union U1 ****l_953 = &l_954[0];
    union U1 ***l_955 = &p_2143->g_358;
    union U1 ***l_957 = (void*)0;
    union U1 ****l_956 = &l_957;
    int32_t l_960 = (-3L);
    int16_t *l_963 = &p_2143->g_214[1][1][1].f3;
    int32_t l_998[3];
    volatile uint16_t * volatile *l_1069 = &p_2143->g_1070[1][2];
    uint32_t l_1087[10][9][2] = {{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}},{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}},{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}},{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}},{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}},{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}},{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}},{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}},{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}},{{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL},{0UL,0x983B565DL}}};
    int64_t *l_1096 = &p_2143->g_705;
    int64_t **l_1095 = &l_1096;
    int64_t ***l_1094[10] = {&l_1095,&l_1095,&l_1095,&l_1095,&l_1095,&l_1095,&l_1095,&l_1095,&l_1095,&l_1095};
    uint32_t ***l_1097 = (void*)0;
    int64_t *l_1098[2][4][8];
    int32_t l_1099 = 0x219E7601L;
    uint16_t l_1100 = 0x472DL;
    uint32_t **l_1110 = (void*)0;
    int16_t *l_1112 = &p_2143->g_168;
    union U3 *l_1114 = &p_2143->g_1115;
    union U3 **l_1113[8][5][6] = {{{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114}},{{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114}},{{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114}},{{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114}},{{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114}},{{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114}},{{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114}},{{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114},{&l_1114,&l_1114,&l_1114,&l_1114,(void*)0,&l_1114}}};
    int32_t *l_1116 = (void*)0;
    int32_t *l_1117 = &p_2143->g_500;
    int32_t *l_1174 = &l_1099;
    volatile union U3 *l_1176 = (void*)0;
    uint64_t **l_1193[5][1][8] = {{{(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0,(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0}},{{(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0,(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0}},{{(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0,(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0}},{{(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0,(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0}},{{(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0,(void*)0,&p_2143->g_546,&p_2143->g_546,(void*)0}}};
    uint32_t l_1215 = 0xE8690876L;
    union U2 l_1226 = {65535UL};
    uint64_t *l_1233[7];
    uint8_t l_1308[8][4] = {{246UL,6UL,246UL,246UL},{246UL,6UL,246UL,246UL},{246UL,6UL,246UL,246UL},{246UL,6UL,246UL,246UL},{246UL,6UL,246UL,246UL},{246UL,6UL,246UL,246UL},{246UL,6UL,246UL,246UL},{246UL,6UL,246UL,246UL}};
    int8_t *l_1309 = &p_2143->g_310;
    uint8_t l_1327[5];
    int32_t *l_1395[3];
    uint32_t *l_1455 = &p_2143->g_329;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_954[i] = &p_2143->g_358;
    for (i = 0; i < 3; i++)
        l_998[i] = 9L;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
                l_1098[i][j][k] = (void*)0;
        }
    }
    for (i = 0; i < 7; i++)
        l_1233[i] = &p_2143->g_1234;
    for (i = 0; i < 5; i++)
        l_1327[i] = 255UL;
    for (i = 0; i < 3; i++)
        l_1395[i] = &l_998[2];
lbl_1077:
    if ((((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_2143->group_2_offset, get_group_id(2), 10), 4)) != 0xC5L) == ((safe_lshift_func_int8_t_s_u(((((l_955 = ((*l_953) = (void*)0)) == ((*l_956) = &p_2143->g_877)) == (((*l_963) = (safe_add_func_int16_t_s_s(((l_960 < l_960) > (((*p_2143->g_297) = (*p_2143->g_297)) , (safe_mod_func_uint64_t_u_u((l_960 , p_55.f0), (**p_2143->g_545))))), 0x4684L))) & l_960)) != l_960), l_960)) , l_960)))
    { /* block id: 511 */
        uint32_t l_992 = 4294967291UL;
        int32_t l_1003[2];
        int32_t l_1006 = 4L;
        uint32_t l_1011 = 1UL;
        union U1 ****l_1018 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_1003[i] = 0x13D775EDL;
        (**p_2143->g_117) ^= 0L;
        for (p_57 = 0; (p_57 <= (-23)); p_57 = safe_sub_func_uint8_t_u_u(p_57, 1))
        { /* block id: 515 */
            int8_t l_984[6][8][2] = {{{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL}},{{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL}},{{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL}},{{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL}},{{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL}},{{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL},{(-4L),0x7CL}}};
            int64_t *l_990[9][5] = {{(void*)0,&p_2143->g_141[0][3],(void*)0,&p_2143->g_141[0][3],(void*)0},{(void*)0,&p_2143->g_141[0][3],(void*)0,&p_2143->g_141[0][3],(void*)0},{(void*)0,&p_2143->g_141[0][3],(void*)0,&p_2143->g_141[0][3],(void*)0},{(void*)0,&p_2143->g_141[0][3],(void*)0,&p_2143->g_141[0][3],(void*)0},{(void*)0,&p_2143->g_141[0][3],(void*)0,&p_2143->g_141[0][3],(void*)0},{(void*)0,&p_2143->g_141[0][3],(void*)0,&p_2143->g_141[0][3],(void*)0},{(void*)0,&p_2143->g_141[0][3],(void*)0,&p_2143->g_141[0][3],(void*)0},{(void*)0,&p_2143->g_141[0][3],(void*)0,&p_2143->g_141[0][3],(void*)0},{(void*)0,&p_2143->g_141[0][3],(void*)0,&p_2143->g_141[0][3],(void*)0}};
            int32_t l_991[7];
            int32_t l_1000 = 1L;
            int32_t l_1001 = 0x23742EB1L;
            int32_t l_1002 = 2L;
            int32_t l_1004 = 1L;
            int32_t l_1007 = 0x70EF2D25L;
            int32_t l_1008 = 0x17FE104DL;
            int32_t l_1009 = 0x62809ED9L;
            int32_t l_1010[4] = {(-4L),(-4L),(-4L),(-4L)};
            uint32_t *l_1057 = &l_992;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_991[i] = 8L;
            if (l_960)
            { /* block id: 516 */
                uint8_t *l_982[3];
                int32_t l_993[6][6] = {{4L,0x23043C43L,(-5L),0x23043C43L,4L,4L},{4L,0x23043C43L,(-5L),0x23043C43L,4L,4L},{4L,0x23043C43L,(-5L),0x23043C43L,4L,4L},{4L,0x23043C43L,(-5L),0x23043C43L,4L,4L},{4L,0x23043C43L,(-5L),0x23043C43L,4L,4L},{4L,0x23043C43L,(-5L),0x23043C43L,4L,4L}};
                int32_t *l_995 = &l_993[5][4];
                int32_t *l_996 = &p_2143->g_290;
                int32_t *l_997 = &l_993[1][5];
                int32_t *l_999[9] = {&p_2143->g_107,&p_2143->g_107,&p_2143->g_107,&p_2143->g_107,&p_2143->g_107,&p_2143->g_107,&p_2143->g_107,&p_2143->g_107,&p_2143->g_107};
                int32_t l_1005 = 0L;
                int i, j;
                for (i = 0; i < 3; i++)
                    l_982[i] = &p_2143->g_144;
                for (p_2143->g_170.f1 = (-10); (p_2143->g_170.f1 >= 5); p_2143->g_170.f1 = safe_add_func_int8_t_s_s(p_2143->g_170.f1, 1))
                { /* block id: 519 */
                    int32_t l_983 = 0x39D56FBCL;
                    int64_t *l_985 = &p_2143->g_141[1][7];
                    int32_t *l_994 = &p_2143->g_260;
                    (*l_994) |= (safe_lshift_func_uint16_t_u_u(((~p_2143->g_243[0].f0) | FAKE_DIVERGE(p_2143->group_0_offset, get_group_id(0), 10)), (safe_add_func_int16_t_s_s((safe_add_func_uint64_t_u_u(18446744073709551615UL, (((*p_2143->g_689) &= (safe_lshift_func_int16_t_s_u((safe_add_func_uint64_t_u_u(((((*p_2143->g_546) |= (safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(((void*)0 == l_982[2]), 4)), l_983))) & (((((*l_985) ^= (p_53 , (l_984[4][4][0] ^= 3L))) && ((p_55.f0 <= (safe_sub_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((p_2143->g_926[1][2] = ((void*)0 == l_990[0][0])), l_991[1])), p_54))) < l_983)) >= 3L) || l_992)) >= p_2143->g_323.f1), l_993[5][4])), 6))) , l_983))), 0x7F19L))));
                }
                ++l_1011;
                (*l_996) = (safe_rshift_func_int8_t_s_s(((*p_2143->g_689) &= (((*l_996) == (safe_add_func_uint64_t_u_u((l_1018 != (void*)0), (safe_mod_func_int32_t_s_s(0x5A66A3D7L, (safe_add_func_int32_t_s_s((p_2143->g_1029 = ((*l_997) = ((safe_sub_func_uint64_t_u_u(0x54665B2C9C4E0000L, (**p_2143->g_545))) < ((p_55.f0 <= l_1009) < (safe_rshift_func_int8_t_s_s((safe_div_func_int32_t_s_s((p_57 == p_55.f0), p_57)), 1)))))), 7UL))))))) < l_1006)), 5));
            }
            else
            { /* block id: 532 */
                int32_t *l_1030[1];
                int16_t *l_1037 = &p_2143->g_168;
                union U1 **l_1044 = &p_2143->g_359;
                uint32_t **l_1073[10] = {&l_1057,&l_1057,(void*)0,&l_1057,&l_1057,&l_1057,&l_1057,(void*)0,&l_1057,&l_1057};
                uint32_t ***l_1074 = &l_1073[3];
                int i;
                for (i = 0; i < 1; i++)
                    l_1030[i] = (void*)0;
                if ((p_54 = 6L))
                { /* block id: 534 */
                    (**p_2143->g_117) |= (-2L);
                }
                else
                { /* block id: 536 */
                    uint32_t *l_1050 = (void*)0;
                    uint32_t *l_1051[9][3][9] = {{{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329}},{{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329}},{{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329}},{{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329}},{{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329}},{{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329}},{{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329}},{{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329}},{{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329},{(void*)0,(void*)0,&p_2143->g_329,&p_2143->g_329,(void*)0,&p_2143->g_329,(void*)0,&p_2143->g_329,&p_2143->g_329}}};
                    uint32_t *l_1052 = &p_2143->g_166;
                    int i, j, k;
                    p_54 = ((safe_sub_func_uint16_t_u_u(65534UL, (safe_lshift_func_int8_t_s_u((l_960 = (0x75457F0EL && (safe_mul_func_uint8_t_u_u((p_2143->g_220.f1 > (l_1037 != (((safe_lshift_func_int8_t_s_s(((safe_add_func_uint32_t_u_u(0xA7442375L, (safe_div_func_int8_t_s_s(p_55.f0, ((*p_2143->g_297) = ((((*l_957) = &p_2143->g_359) != l_1044) , ((p_2143->g_329 = (safe_mod_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((safe_unary_minus_func_int32_t_s((l_1003[1] = (-1L)))), p_54)) ^ 4294967288UL) && (*p_2143->g_297)), FAKE_DIVERGE(p_2143->group_0_offset, get_group_id(0), 10)))) , l_984[4][1][1]))))))) , l_998[1]), p_53)) , p_2143->g_754.f0) , &p_56))), l_1006)))), p_2143->g_261)))) && 0x2D0A6CE9928B104CL);
                    if ((!(((*l_1052)--) ^ (safe_lshift_func_int16_t_s_u(0x3F69L, ((void*)0 == l_1057))))))
                    { /* block id: 544 */
                        if ((**p_2143->g_117))
                            break;
                        (**p_2143->g_117) = p_57;
                        (**p_2143->g_117) = (0x2DA0L != (p_56 = (((((+(((**p_2143->g_117) > (safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((((0xFAL ^ (((((safe_sub_func_uint32_t_u_u(((safe_sub_func_int64_t_s_s(0x57BBA9E74A5C3A96L, (-3L))) ^ (p_53 , (1L != ((+l_960) , (safe_mul_func_uint8_t_u_u(((l_1008 = p_2143->g_908) , (*p_2143->g_297)), p_53)))))), p_57)) <= p_55.f0) <= l_1000) , p_2143->g_347.f1) && p_2143->g_141[1][7])) & l_1004) < p_2143->g_235), l_1007)), p_55.f0))) > l_1003[0])) ^ p_2143->g_926[6][4]) | GROUP_DIVERGE(1, 1)) > (*p_2143->g_297)) | 0x0F26L)));
                        l_1069 = p_2143->g_1068;
                    }
                    else
                    { /* block id: 551 */
                        (*p_2143->g_1072) = p_2143->g_1071;
                        return l_1008;
                    }
                }
                (*l_1074) = l_1073[3];
                for (p_2143->g_878 = 0; p_2143->g_878 < 5; p_2143->g_878 += 1)
                {
                    for (p_2143->g_525.f4 = 0; p_2143->g_525.f4 < 4; p_2143->g_525.f4 += 1)
                    {
                        p_2143->g_108[p_2143->g_878][p_2143->g_525.f4] = 0x4973203DL;
                    }
                }
            }
            (**p_2143->g_117) |= (l_1007 = (p_54 ^= 0x699621D5L));
            (*p_2143->g_1075) = &p_2143->g_120;
        }
        if (p_2143->g_1071.f1)
            goto lbl_1077;
    }
    else
    { /* block id: 564 */
        return p_55.f0;
    }
lbl_1261:
    l_960 = (safe_unary_minus_func_int32_t_s((((safe_lshift_func_int16_t_s_u((((p_54 ^ (FAKE_DIVERGE(p_2143->local_0_offset, get_local_id(0), 10) || (-8L))) < (safe_mul_func_int8_t_s_s(p_57, ((l_998[1] = GROUP_DIVERGE(1, 1)) >= (((***p_2143->g_830) = ((((*p_2143->g_297) = ((0xCE54FDBFL > (safe_rshift_func_uint16_t_u_u(0x52C2L, 3))) && ((safe_add_func_uint64_t_u_u(((l_1087[4][1][0] != (l_1099 ^= ((safe_sub_func_uint64_t_u_u((((safe_div_func_int8_t_s_s(p_56, (((((safe_sub_func_int64_t_s_s(((void*)0 == l_1094[3]), p_53)) >= l_960) , l_1087[8][0][1]) >= (*p_2143->g_689)) && (-10L)))) , l_1097) == (void*)0), 9L)) >= p_57))) , p_53), 18446744073709551611UL)) != (*p_2143->g_297)))) == p_54) ^ (*p_2143->g_689))) || 1L))))) , l_1100), 13)) , (*p_2143->g_1075)) != (void*)0)));
    if ((safe_mod_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((safe_div_func_uint32_t_u_u((p_2143->g_1107 , ((safe_rshift_func_int8_t_s_u((l_1110 == (p_2143->g_1111 , &p_2143->g_873)), 7)) != (((*l_1117) = (((((*l_1112) |= 0x768BL) == p_2143->g_500) , (void*)0) == l_1113[2][4][5])) , l_1099))), 1L)) , p_53), l_1100)), 1UL)))
    { /* block id: 575 */
        uint16_t l_1143 = 0UL;
        int32_t *l_1147 = &p_2143->g_290;
        union U1 ****l_1198[1];
        uint64_t *l_1199 = &p_2143->g_926[6][4];
        int i;
        for (i = 0; i < 1; i++)
            l_1198[i] = (void*)0;
        for (p_2143->g_166 = 16; (p_2143->g_166 != 15); p_2143->g_166 = safe_sub_func_uint64_t_u_u(p_2143->g_166, 7))
        { /* block id: 578 */
            int32_t l_1124 = 0x083D58D8L;
            uint32_t *l_1177 = &p_2143->g_1029;
            for (l_1099 = 0; (l_1099 <= 0); l_1099 += 1)
            { /* block id: 581 */
                union U1 ****l_1170 = &l_957;
                int i, j;
                p_54 = (safe_mul_func_int8_t_s_s(p_2143->g_141[(l_1099 + 2)][(l_1099 + 8)], (l_998[1] = (safe_mul_func_int8_t_s_s(l_1124, (p_56 || (l_998[0] == (p_55 , (*p_2143->g_689)))))))));
                for (p_2143->g_292 = 0; (p_2143->g_292 <= 0); p_2143->g_292 += 1)
                { /* block id: 586 */
                    int32_t l_1128 = 0x5C78DB3CL;
                    int32_t l_1142[10][10][2] = {{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}},{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}},{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}},{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}},{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}},{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}},{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}},{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}},{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}},{{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL},{(-1L),0x09A04DCCL}}};
                    int i, j, k;
                    (*p_2143->g_1125) = &l_960;
                    for (p_2143->g_525.f1 = 0; (p_2143->g_525.f1 <= 0); p_2143->g_525.f1 += 1)
                    { /* block id: 590 */
                        int32_t *l_1139 = &l_998[1];
                        int32_t *l_1140 = (void*)0;
                        int32_t *l_1141[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_1141[i] = (void*)0;
                        (*l_1139) &= (+((safe_mul_func_int16_t_s_s((((l_1128 <= p_2143->g_243[0].f0) != ((safe_mul_func_int8_t_s_s(l_1099, ((((safe_add_func_uint16_t_u_u((p_2143->g_705 > (safe_lshift_func_int16_t_s_u(3L, (((*p_2143->g_689) = (((safe_mod_func_uint16_t_u_u(p_2143->g_1029, (safe_mul_func_int8_t_s_s(p_55.f0, ((*p_2143->g_636) , ((+0x2FEAB142D9142F71L) || p_57)))))) != p_2143->g_260) , p_55.f0)) ^ 0x3AL)))), p_56)) < p_54) < (-1L)) && (*p_2143->g_636)))) >= FAKE_DIVERGE(p_2143->group_2_offset, get_group_id(2), 10))) == 0xC1B147F0425C9F71L), p_53)) , 0L));
                        if ((**p_2143->g_1125))
                            continue;
                        --l_1143;
                    }
                    if (l_1128)
                        continue;
                }
                for (p_2143->g_292 = 0; (p_2143->g_292 <= 0); p_2143->g_292 += 1)
                { /* block id: 600 */
                    uint8_t *l_1167 = &p_2143->g_878;
                    for (p_2143->g_261 = 0; (p_2143->g_261 <= 0); p_2143->g_261 += 1)
                    { /* block id: 603 */
                        int32_t **l_1146 = (void*)0;
                        uint16_t *l_1156 = &p_2143->g_939.f2;
                        uint32_t *l_1162 = &p_2143->g_1029;
                        uint8_t *l_1168 = (void*)0;
                        uint16_t *l_1171 = &p_2143->g_249[0][1].f0;
                        int32_t *l_1172 = (void*)0;
                        int32_t *l_1173 = &p_2143->g_107;
                        l_1147 = &p_54;
                        (*l_1173) ^= ((safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(0x25L, (safe_add_func_uint64_t_u_u((((*l_1112) = (safe_add_func_uint16_t_u_u(((*l_1156) = l_1087[0][6][0]), 0x6DE4L))) & ((*l_1171) = (safe_mul_func_int16_t_s_s((safe_sub_func_int16_t_s_s((((p_2143->g_1161[0][6] , (p_56 = (p_56 <= ((*l_1162) |= GROUP_DIVERGE(2, 1))))) , 250UL) , (((!((safe_mul_func_uint8_t_u_u(((*p_2143->g_297) |= p_56), (((safe_rshift_func_uint16_t_u_u((l_1167 == l_1168), (*l_1147))) , 0x56L) >= (-1L)))) & p_56)) , p_2143->g_1169) != l_1170)), 7L)), (-5L))))), p_53)))), p_2143->g_2)) || (*p_2143->g_689));
                    }
                }
            }
            l_1147 = ((*p_2143->g_637) = l_1174);
            for (p_2143->g_290 = 0; (p_2143->g_290 <= 3); p_2143->g_290 += 1)
            { /* block id: 619 */
                uint64_t l_1185 = 0UL;
                for (p_2143->g_144 = 0; (p_2143->g_144 <= 6); p_2143->g_144 += 1)
                { /* block id: 622 */
                    uint32_t *l_1178 = &p_2143->g_235;
                    l_1176 = (*p_2143->g_1075);
                    for (p_2143->g_908 = 0; (p_2143->g_908 <= 3); p_2143->g_908 += 1)
                    { /* block id: 626 */
                        int32_t *l_1186[10][1][5] = {{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}},{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}},{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}},{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}},{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}},{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}},{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}},{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}},{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}},{{&p_2143->g_260,&p_2143->g_290,&p_2143->g_260,&p_2143->g_260,&p_2143->g_290}}};
                        int i, j, k;
                        p_2143->g_110 &= (((*l_1147) ^ ((-10L) && ((*p_2143->g_546) = (l_1177 == l_1178)))) != (((safe_lshift_func_uint8_t_u_s((p_53 | ((**p_2143->g_117) || (safe_mod_func_uint32_t_u_u(0xC0F23912L, (safe_mul_func_uint8_t_u_u(l_1185, (*p_2143->g_297))))))), 7)) , p_57) & p_57));
                        if ((**p_2143->g_841))
                            break;
                        p_2143->g_934[p_2143->g_908] = p_2143->g_934[p_2143->g_290];
                    }
                }
                if ((*l_1174))
                    break;
            }
        }
        p_2143->g_260 ^= (safe_div_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u(((((((((*l_1147) && ((*l_1147) = (((*p_2143->g_528) , &p_2143->g_500) == l_1147))) >= p_54) < l_1143) >= p_57) != 0x18L) || p_53) || p_57), p_2143->g_698.f1)) != p_2143->g_168) || p_55.f0), p_56));
    }
    else
    { /* block id: 642 */
        uint16_t *l_1202 = (void*)0;
        uint16_t *l_1203 = &l_1100;
        uint16_t *l_1206 = &p_2143->g_939.f2;
        int64_t *l_1213 = &p_2143->g_705;
        int32_t *l_1218 = &p_2143->g_107;
        l_1174 = ((~(((safe_rshift_func_int16_t_s_u((*l_1174), (~((*l_1206) = ((*l_1203)--))))) | (((*p_2143->g_297) &= ((-1L) <= ((((l_1215 = (((&p_2143->g_708 == &p_2143->g_708) , ((*l_1095) = &p_2143->g_705)) != (p_2143->g_1214 = ((((***p_2143->g_830)--) <= (safe_lshift_func_uint16_t_u_u(p_57, 15))) , l_1213)))) | FAKE_DIVERGE(p_2143->local_1_offset, get_local_id(1), 10)) >= ((safe_lshift_func_int8_t_s_u((((void*)0 != l_1112) <= FAKE_DIVERGE(p_2143->group_0_offset, get_group_id(0), 10)), GROUP_DIVERGE(0, 1))) < (**p_2143->g_117))) || (*l_1174)))) < p_55.f0)) < p_54)) , l_1218);
    }
    if (((((p_2143->g_1234 ^= (((safe_sub_func_int64_t_s_s((*l_1174), p_2143->g_1221)) | (0xEAL & (p_57 & ((safe_mul_func_uint8_t_u_u((~((safe_sub_func_int16_t_s_s((l_1226 , (safe_add_func_int8_t_s_s((l_998[1] &= ((safe_rshift_func_uint8_t_u_u(((*p_2143->g_297) ^= ((****l_956) , (safe_div_func_int16_t_s_s((p_56 || ((p_53 , (-1L)) || (*l_1174))), p_55.f0)))), 2)) , p_53)), 0x29L))), (-1L))) & p_57)), FAKE_DIVERGE(p_2143->global_0_offset, get_global_id(0), 10))) != 0L)))) , (*l_1174))) , (void*)0) == (void*)0) | p_55.f0))
    { /* block id: 655 */
        uint8_t l_1235 = 0x19L;
        int32_t l_1236 = 0x184ECB1EL;
        uint16_t *l_1245 = &p_2143->g_249[0][1].f0;
        uint8_t *l_1250 = &p_2143->g_878;
        uint8_t *l_1253 = (void*)0;
        uint8_t *l_1254 = &p_2143->g_908;
        int32_t l_1257 = 1L;
        uint32_t *l_1258[1][8][3] = {{{&l_1087[9][5][0],&l_1087[8][6][1],&l_1087[9][5][0]},{&l_1087[9][5][0],&l_1087[8][6][1],&l_1087[9][5][0]},{&l_1087[9][5][0],&l_1087[8][6][1],&l_1087[9][5][0]},{&l_1087[9][5][0],&l_1087[8][6][1],&l_1087[9][5][0]},{&l_1087[9][5][0],&l_1087[8][6][1],&l_1087[9][5][0]},{&l_1087[9][5][0],&l_1087[8][6][1],&l_1087[9][5][0]},{&l_1087[9][5][0],&l_1087[8][6][1],&l_1087[9][5][0]},{&l_1087[9][5][0],&l_1087[8][6][1],&l_1087[9][5][0]}}};
        uint64_t ***l_1269[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_1341 = 0x3A3151E7L;
        int32_t l_1342 = (-1L);
        int32_t l_1343[8][7] = {{8L,0x1BE3F564L,0x56CC28B8L,(-1L),6L,6L,(-1L)},{8L,0x1BE3F564L,0x56CC28B8L,(-1L),6L,6L,(-1L)},{8L,0x1BE3F564L,0x56CC28B8L,(-1L),6L,6L,(-1L)},{8L,0x1BE3F564L,0x56CC28B8L,(-1L),6L,6L,(-1L)},{8L,0x1BE3F564L,0x56CC28B8L,(-1L),6L,6L,(-1L)},{8L,0x1BE3F564L,0x56CC28B8L,(-1L),6L,6L,(-1L)},{8L,0x1BE3F564L,0x56CC28B8L,(-1L),6L,6L,(-1L)},{8L,0x1BE3F564L,0x56CC28B8L,(-1L),6L,6L,(-1L)}};
        int32_t ***l_1378 = (void*)0;
        int32_t *l_1402 = &l_1342;
        int8_t l_1442 = 0x3BL;
        int64_t *l_1456 = &p_2143->g_141[1][7];
        uint32_t l_1478 = 0xB4B1C190L;
        uint8_t l_1513 = 0UL;
        int i, j, k;
        l_1236 = l_1235;
        if ((l_1236 < ((*l_1174) = (((l_1257 = (safe_sub_func_uint8_t_u_u(((*p_2143->g_297)--), (((+0x8C34C1273599E524L) || ((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(3UL, (FAKE_DIVERGE(p_2143->global_1_offset, get_global_id(1), 10) ^ p_53))), ((*l_1245) = ((*p_2143->g_546) > 3UL)))) || (((GROUP_DIVERGE(1, 1) ^ ((safe_lshift_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) < ((0x668DL | (safe_mul_func_uint8_t_u_u(((*l_1254) &= (--(*l_1250))), GROUP_DIVERGE(1, 1)))) >= ((*l_963) = 0x4BB8L))), 4)) != (safe_div_func_uint8_t_u_u((p_53 , l_1235), 1L)))) , (**p_2143->g_545)) , 0L))) < 0x81A7L)))) , p_54) != 0x15L))))
        { /* block id: 664 */
            uint32_t l_1276 = 0xE4563D21L;
            int64_t **l_1286 = &l_1096;
            int16_t ****l_1319 = (void*)0;
            int32_t l_1338 = 0L;
            int32_t l_1344[1];
            int32_t l_1345[4];
            uint64_t l_1346[3];
            union U1 *l_1368 = &p_2143->g_360;
            uint16_t **l_1369 = &l_1245;
            int i;
            for (i = 0; i < 1; i++)
                l_1344[i] = 1L;
            for (i = 0; i < 4; i++)
                l_1345[i] = 4L;
            for (i = 0; i < 3; i++)
                l_1346[i] = 0xBA9E41B983B1297FL;
            for (p_2143->g_235 = (-7); (p_2143->g_235 < 32); p_2143->g_235 = safe_add_func_int16_t_s_s(p_2143->g_235, 7))
            { /* block id: 667 */
                if (l_1099)
                    goto lbl_1261;
            }
            if (p_55.f0)
            { /* block id: 670 */
                int16_t **l_1262 = &l_963;
                int32_t l_1266 = 0x78E6EB66L;
                struct S0 *l_1277[2];
                int16_t *l_1278 = (void*)0;
                int16_t *l_1279[3][4][2] = {{{&p_2143->g_1280,&p_2143->g_1280},{&p_2143->g_1280,&p_2143->g_1280},{&p_2143->g_1280,&p_2143->g_1280},{&p_2143->g_1280,&p_2143->g_1280}},{{&p_2143->g_1280,&p_2143->g_1280},{&p_2143->g_1280,&p_2143->g_1280},{&p_2143->g_1280,&p_2143->g_1280},{&p_2143->g_1280,&p_2143->g_1280}},{{&p_2143->g_1280,&p_2143->g_1280},{&p_2143->g_1280,&p_2143->g_1280},{&p_2143->g_1280,&p_2143->g_1280},{&p_2143->g_1280,&p_2143->g_1280}}};
                int64_t **l_1285 = &p_2143->g_1214;
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_1277[i] = &p_2143->g_1111;
                for (p_2143->g_754.f1 = 0; (p_2143->g_754.f1 <= 3); p_2143->g_754.f1 += 1)
                { /* block id: 673 */
                    (*p_2143->g_1263) = l_1262;
                    (**p_2143->g_117) ^= l_1266;
                    for (p_2143->g_500 = 3; (p_2143->g_500 >= 0); p_2143->g_500 -= 1)
                    { /* block id: 678 */
                        int i, j;
                        return p_2143->g_141[p_2143->g_754.f1][(p_2143->g_754.f1 + 2)];
                    }
                }
                p_54 = (*l_1174);
                if ((safe_lshift_func_uint8_t_u_s(((((0x0AL && ((p_2143->g_705 , ((l_1269[1] != (p_55.f0 , &l_1193[3][0][6])) <= ((*l_1245) = ((safe_add_func_int16_t_s_s((l_1266 |= ((*p_2143->g_1265) &= ((safe_mul_func_uint8_t_u_u((&p_2143->g_830 == &l_1269[1]), (safe_lshift_func_int16_t_s_s(l_1276, 14)))) != ((void*)0 == l_1277[1])))), FAKE_DIVERGE(p_2143->group_2_offset, get_group_id(2), 10))) & p_56)))) , GROUP_DIVERGE(2, 1))) , (*p_2143->g_297)) | 0x42L) | p_2143->g_1071.f3), 4)))
                { /* block id: 686 */
                    uint16_t **l_1283 = &l_1245;
                    int64_t **l_1284 = &l_1096;
                    uint8_t **l_1291[10][5] = {{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0},{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0},{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0},{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0},{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0},{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0},{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0},{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0},{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0},{(void*)0,&p_2143->g_297,&p_2143->g_297,(void*)0,(void*)0}};
                    uint8_t ***l_1290 = &l_1291[1][2];
                    int i, j;
                    p_2143->g_1282 = p_2143->g_1281;
                    p_54 ^= ((((p_53 = ((l_1285 = ((l_1283 != &p_2143->g_1070[9][1]) , l_1284)) != l_1286)) , p_2143->g_698.f1) && (p_2143->g_1287 , p_56)) , ((+((safe_add_func_int64_t_s_s((GROUP_DIVERGE(1, 1) < (((*l_1174) = ((((*l_1290) = &p_2143->g_297) != (void*)0) == p_57)) <= (-1L))), (**p_2143->g_545))) > 0x96DA45C6FF292993L)) & 4294967287UL));
                }
                else
                { /* block id: 693 */
                    p_2143->g_1293 = p_2143->g_1292;
                }
            }
            else
            { /* block id: 696 */
                int32_t **l_1310 = &l_1174;
                int64_t **l_1325[5];
                int32_t *l_1333 = &l_998[2];
                int32_t *l_1334 = &l_998[1];
                int32_t *l_1335 = &l_1236;
                int32_t *l_1336 = (void*)0;
                int32_t *l_1337 = (void*)0;
                int32_t *l_1339 = &l_998[1];
                int32_t *l_1340[9];
                int64_t **l_1349 = &l_1098[1][0][6];
                int64_t *l_1351[10][1][8] = {{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}},{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}},{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}},{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}},{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}},{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}},{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}},{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}},{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}},{{&p_2143->g_443,&p_2143->g_141[1][7],&p_2143->g_141[0][7],&p_2143->g_141[2][8],&p_2143->g_141[1][7],(void*)0,&p_2143->g_443,&p_2143->g_141[1][8]}}};
                int64_t **l_1350 = &l_1351[1][0][6];
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_1325[i] = (void*)0;
                for (i = 0; i < 9; i++)
                    l_1340[i] = &p_2143->g_1221;
                (*l_1310) = &p_54;
                for (p_2143->g_1293.f1 = (-6); (p_2143->g_1293.f1 != (-1)); p_2143->g_1293.f1++)
                { /* block id: 701 */
                    uint32_t *l_1326 = &p_2143->g_329;
                    (**p_2143->g_117) = (safe_lshift_func_int8_t_s_s(0x79L, 1));
                    for (p_2143->g_168 = 0; (p_2143->g_168 <= 6); p_2143->g_168 = safe_add_func_uint8_t_u_u(p_2143->g_168, 1))
                    { /* block id: 705 */
                        int16_t *****l_1320 = &l_1319;
                        int32_t l_1321 = 5L;
                        int16_t **l_1322[8] = {&l_963,&l_963,&l_963,&l_963,&l_963,&l_963,&l_963,&l_963};
                        int64_t **l_1324[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1324[i] = &l_1096;
                        (**p_2143->g_117) |= ((((((*p_2143->g_1264) = (*p_2143->g_1264)) != (p_2143->g_1323 = ((safe_rshift_func_int16_t_s_u(((((**l_1310) , (void*)0) != ((*l_1320) = l_1319)) > l_1321), 10)) , &p_2143->g_1280))) , (((((l_1324[0] != l_1325[4]) , l_1258[0][5][2]) != l_1326) | 65535UL) > 0x1F0FF3ECL)) < p_55.f0) & l_1327[4]);
                        (*l_1310) = l_1326;
                        (*l_1310) = &p_54;
                    }
                    for (p_2143->g_220.f1 = 0; (p_2143->g_220.f1 != 1); p_2143->g_220.f1 = safe_add_func_uint8_t_u_u(p_2143->g_220.f1, 9))
                    { /* block id: 715 */
                        volatile struct S0 *l_1331[6] = {&p_2143->g_1115.f1,&p_2143->g_1115.f1,&p_2143->g_1115.f1,&p_2143->g_1115.f1,&p_2143->g_1115.f1,&p_2143->g_1115.f1};
                        int i;
                        (**p_2143->g_117) ^= ((**l_1310) &= 0x3C1F974AL);
                        if (p_54)
                            break;
                        p_2143->g_1332[5] = p_2143->g_1330[0];
                    }
                }
                l_1346[0]--;
                (*l_1333) = (((((*l_1349) = &p_2143->g_443) == ((*l_1350) = &p_57)) && (*l_1174)) | (p_54 | (safe_add_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(l_1342, 3)), (safe_add_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((*p_2143->g_689) = (l_1344[0] = (*p_2143->g_689))), (*p_2143->g_297))), 6)) > (safe_mul_func_uint8_t_u_u(((**p_2143->g_358) , (((p_56 || p_2143->g_141[3][1]) , FAKE_DIVERGE(p_2143->group_1_offset, get_group_id(1), 10)) , (*p_2143->g_297))), (*p_2143->g_297)))), 0x55L))))));
            }
            (**p_2143->g_117) &= (safe_lshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(p_54, (l_1368 == (void*)0))), (&p_2143->g_1070[1][2] != l_1369)));
        }
        else
        { /* block id: 730 */
            uint32_t ****l_1388 = &p_2143->g_1385;
            (*l_1174) = (safe_add_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_s((p_56 , FAKE_DIVERGE(p_2143->local_2_offset, get_local_id(2), 10)), (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_2143->local_2_offset, get_local_id(2), 10), p_55.f0)))) <= (FAKE_DIVERGE(p_2143->global_1_offset, get_global_id(1), 10) == l_1341)), ((((**p_2143->g_1075) , l_1378) != (void*)0) != ((safe_mul_func_int8_t_s_s((safe_sub_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(((((*l_1388) = p_2143->g_1385) != &p_2143->g_1386[4][0]) & ((safe_mul_func_uint8_t_u_u(((safe_div_func_int64_t_s_s((p_57 ^= ((((safe_div_func_uint16_t_u_u(1UL, 0x7872L)) , 0xD46AACE7L) , p_55.f0) == p_54)), p_2143->g_1111.f1)) > p_2143->g_525.f1), 0x03L)) | 0UL)), (**p_2143->g_1264))), 0x0CC0C97EL)), p_53)) ^ 0xE6220B48L))));
            return (*p_2143->g_1265);
        }
        for (p_2143->g_443 = 9; (p_2143->g_443 >= 2); p_2143->g_443 -= 1)
        { /* block id: 738 */
            int32_t *l_1401 = (void*)0;
            int32_t l_1403 = (-1L);
            int32_t **l_1443 = &l_1174;
            uint64_t **l_1451 = &p_2143->g_546;
            int32_t l_1468 = 9L;
            int32_t l_1469 = 0x3CC538AEL;
            int32_t l_1472 = 0x60AB4A28L;
            int32_t l_1477 = 0L;
            (1 + 1);
        }
        for (p_2143->g_166 = 0; (p_2143->g_166 == 56); p_2143->g_166 = safe_add_func_int64_t_s_s(p_2143->g_166, 5))
        { /* block id: 851 */
            int8_t l_1496 = 6L;
            uint32_t **l_1501 = (void*)0;
            uint32_t ***l_1502 = &l_1501;
            p_2143->g_110 &= (safe_lshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((p_56 || ((p_2143->g_1111.f4 ^ ((safe_rshift_func_uint8_t_u_s((((((*l_1402) , (safe_rshift_func_int8_t_s_s(0x08L, 1))) >= (((1UL | (&l_1478 != (((((*p_2143->g_297) , l_1496) > (0x33L & 0L)) , p_54) , &p_2143->g_181))) || FAKE_DIVERGE(p_2143->global_2_offset, get_global_id(2), 10)) | p_54)) | (*p_2143->g_689)) || 0UL), (*p_2143->g_689))) != 8L)) < 0x1CF804C88009D1EFL)), l_1496)), l_1496));
            if (p_56)
                continue;
            (**p_2143->g_117) = ((((p_2143->g_1499[9][3] == ((*l_1502) = l_1501)) , (((safe_mul_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(p_54, 5)), (l_1226 , (safe_sub_func_uint64_t_u_u(((((l_1496 , (0L <= (((*l_1402) , l_1513) <= (safe_add_func_int64_t_s_s(((6UL >= p_54) , p_2143->g_914.f0), p_54))))) >= p_55.f0) >= 0UL) ^ l_1496), (*l_1402)))))) != FAKE_DIVERGE(p_2143->local_2_offset, get_local_id(2), 10)), l_1496)) , 0UL) < 0x6AE853D503494D7BL)) & l_1496) , (**p_2143->g_117));
        }
    }
    else
    { /* block id: 857 */
        int32_t *l_1516 = &p_2143->g_260;
        int32_t **l_1517 = &l_1174;
        (*l_1517) = l_1516;
        (**l_1517) ^= (safe_add_func_int64_t_s_s((safe_sub_func_int16_t_s_s((((void*)0 != &p_2143->g_181) || (safe_lshift_func_int16_t_s_u((-1L), 7))), (*p_2143->g_1265))), (*p_2143->g_546)));
        (*l_1516) = (*l_1516);
    }
    return p_55.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_2143->g_525.f2 p_2143->g_689 p_2143->g_310 p_2143->g_79 p_2143->g_297 p_2143->g_830 p_2143->g_545 p_2143->g_546 p_2143->g_41 p_2143->g_235 p_2143->g_107 p_2143->g_908 p_2143->g_89 p_2143->g_841 p_2143->g_636 p_2143->g_525.f0
 * writes: p_2143->g_310 p_2143->g_79 p_2143->g_144 p_2143->g_878 p_2143->g_41 p_2143->g_235 p_2143->g_166 p_2143->g_908 p_2143->g_89 p_2143->g_636
 */
uint32_t  func_58(int32_t  p_59, int32_t * p_60, int64_t  p_61, struct S4 * p_2143)
{ /* block id: 479 */
    int32_t **l_883 = &p_2143->g_636;
    int16_t *l_895[9][6][3] = {{{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0}},{{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0}},{{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0}},{{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0}},{{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0}},{{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0}},{{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0}},{{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0}},{{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0},{&p_2143->g_168,&p_2143->g_168,(void*)0}}};
    int16_t **l_894 = &l_895[3][5][1];
    int16_t ***l_893 = &l_894;
    int16_t ****l_892 = &l_893;
    int32_t l_902 = 0x354D1337L;
    uint64_t ****l_903 = (void*)0;
    uint8_t *l_904 = &p_2143->g_878;
    uint32_t *l_905 = (void*)0;
    uint32_t *l_906 = &p_2143->g_235;
    uint8_t *l_907 = &p_2143->g_908;
    union U2 *l_909[6][7][6] = {{{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0}},{{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0}},{{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0}},{{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0}},{{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0}},{{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0},{&p_2143->g_249[0][1],(void*)0,(void*)0,&p_2143->g_249[0][1],(void*)0,(void*)0}}};
    int32_t *l_910 = &p_2143->g_89;
    int32_t *l_927 = &p_2143->g_110;
    int32_t *l_928 = &p_2143->g_290;
    int32_t *l_929 = &l_902;
    int32_t *l_930[1][10][6];
    uint64_t l_931 = 5UL;
    int64_t ***l_944 = (void*)0;
    int64_t *l_947 = &p_2143->g_141[1][7];
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 6; k++)
                l_930[i][j][k] = &p_2143->g_107;
        }
    }
    if (((*l_910) ^= (safe_sub_func_uint8_t_u_u(((void*)0 != l_883), (safe_mul_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u(18446744073709551614UL, (((safe_rshift_func_uint16_t_u_s((((((((((*l_907) |= (safe_div_func_uint8_t_u_u((&p_2143->g_267 != ((*l_892) = (void*)0)), ((safe_rshift_func_uint16_t_u_s(((p_2143->g_166 = ((*l_906) ^= (((***p_2143->g_830) ^= ((safe_div_func_int64_t_s_s((p_61 &= ((p_2143->g_525.f2 , (((*p_2143->g_689) = p_59) || ((*l_904) = ((*p_2143->g_297) = (((safe_rshift_func_int8_t_s_s(1L, 2)) >= ((l_902 , l_903) != &p_2143->g_830)) < (*p_2143->g_689)))))) | 0x0435L)), p_59)) , p_61)) && l_902))) || l_902), p_2143->g_107)) && 0x8C6BL)))) , p_59) & 1L) ^ (-1L)) , l_909[0][4][1]) != l_909[1][3][1]) , p_59) || GROUP_DIVERGE(2, 1)), 5)) , (void*)0) != &l_902))) , 0x05L), l_902))))))
    { /* block id: 490 */
        int16_t l_911 = 0x0838L;
        return l_911;
    }
    else
    { /* block id: 492 */
        uint16_t l_919 = 9UL;
        uint64_t *l_925 = &p_2143->g_926[6][4];
        (*l_883) = p_60;
    }
    ++l_931;
    (*l_883) = (*p_2143->g_841);
    return p_2143->g_525.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_2143->g_546 p_2143->g_41 p_2143->g_500 p_2143->g_79 p_2143->g_118 p_2143->g_119 p_2143->g_168 p_2143->g_290 p_2143->g_635 p_2143->g_637 p_2143->g_166 p_2143->g_636 p_2143->g_297 p_2143->g_144 p_2143->g_545 p_2143->g_117 p_2143->g_517.f0 p_2143->g_329 p_2143->g_324 p_2143->g_310 p_2143->g_689 p_2143->g_525.f1 p_2143->g_358 p_2143->g_359 p_2143->g_697 p_2143->g_2 p_2143->g_872 p_2143->g_877 p_2143->g_754.f1 p_2143->g_878 p_2143->g_89
 * writes: p_2143->g_41 p_2143->g_290 p_2143->g_89 p_2143->g_636 p_2143->g_166 p_2143->g_144 p_2143->g_119 p_2143->g_168 p_2143->g_329 p_2143->g_324 p_2143->g_689 p_2143->g_359 p_2143->g_500 p_2143->g_698 p_2143->g_878
 */
int32_t * func_62(uint64_t  p_63, uint32_t  p_64, uint64_t * p_65, int8_t * p_66, struct S4 * p_2143)
{ /* block id: 313 */
    union U1 *l_610 = (void*)0;
    int32_t l_617 = 4L;
    uint16_t *l_632 = &p_2143->g_214[1][1][1].f2;
    int32_t l_633[4] = {0x277430C8L,0x277430C8L,0x277430C8L,0x277430C8L};
    struct S0 *l_655 = &p_2143->g_347;
    union U1 ***l_656 = &p_2143->g_358;
    union U1 ***l_671 = &p_2143->g_358;
    union U2 l_703 = {65531UL};
    int16_t *l_725[10] = {&p_2143->g_168,&p_2143->g_168,&p_2143->g_168,&p_2143->g_168,&p_2143->g_168,&p_2143->g_168,&p_2143->g_168,&p_2143->g_168,&p_2143->g_168,&p_2143->g_168};
    int16_t **l_724[4][2] = {{&l_725[5],&l_725[5]},{&l_725[5],&l_725[5]},{&l_725[5],&l_725[5]},{&l_725[5],&l_725[5]}};
    uint8_t **l_738 = &p_2143->g_297;
    int16_t l_751 = (-1L);
    uint8_t l_757[7][2][9] = {{{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL},{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL}},{{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL},{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL}},{{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL},{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL}},{{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL},{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL}},{{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL},{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL}},{{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL},{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL}},{{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL},{0UL,249UL,249UL,0UL,255UL,0xB0L,0UL,0x5FL,4UL}}};
    int32_t *l_851[2];
    int32_t *l_864[3];
    uint32_t *l_871[3];
    uint32_t **l_870 = &l_871[0];
    int32_t l_879 = 4L;
    int32_t *l_880 = (void*)0;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_851[i] = &p_2143->g_500;
    for (i = 0; i < 3; i++)
        l_864[i] = &p_2143->g_110;
    for (i = 0; i < 3; i++)
        l_871[i] = (void*)0;
    if (((safe_lshift_func_int16_t_s_u((safe_add_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s(((safe_div_func_int64_t_s_s(((l_633[0] &= (safe_rshift_func_int16_t_s_u((l_610 != (void*)0), (safe_mul_func_uint8_t_u_u(p_64, (safe_mul_func_uint16_t_u_u(((safe_mod_func_int16_t_s_s((l_617 & 0xD4L), (safe_rshift_func_int16_t_s_u(0x5756L, ((safe_add_func_uint8_t_u_u((((safe_mod_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((18446744073709551609UL | (++(*p_2143->g_546))) ^ (p_63 ^ (safe_mod_func_uint64_t_u_u(((safe_mod_func_uint64_t_u_u(((l_617 | p_63) == p_64), p_63)) & p_64), 0xEAD70F4E29D92CE8L)))), 3)), 65535UL)) < p_2143->g_500) | p_64), 1L)) == p_64))))) && (*p_66)), 0x2A7AL))))))) | p_63), 18446744073709551607UL)) == (*p_2143->g_118)), p_2143->g_168)), 4294967295UL)), p_64)) | 0xA600091ECBB861B4L))
    { /* block id: 316 */
        int32_t *l_634[10][9] = {{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89},{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89},{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89},{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89},{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89},{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89},{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89},{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89},{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89},{&l_633[0],&p_2143->g_107,&p_2143->g_110,&p_2143->g_260,&l_633[0],&p_2143->g_2,(void*)0,&p_2143->g_6,&p_2143->g_89}};
        struct S0 *l_652[7] = {&p_2143->g_220,&p_2143->g_220,&p_2143->g_220,&p_2143->g_220,&p_2143->g_220,&p_2143->g_220,&p_2143->g_220};
        struct S0 **l_653 = (void*)0;
        struct S0 *l_654 = &p_2143->g_170;
        int i, j;
lbl_640:
        p_2143->g_290 ^= (+(*p_2143->g_118));
        for (p_2143->g_89 = 6; (p_2143->g_89 >= 0); p_2143->g_89 -= 1)
        { /* block id: 320 */
            int32_t *l_639 = &p_2143->g_107;
            (*p_2143->g_635) = l_634[5][6];
            (*p_2143->g_637) = &l_633[2];
            for (p_2143->g_166 = 0; (p_2143->g_166 <= 0); p_2143->g_166 += 1)
            { /* block id: 325 */
                int32_t **l_638[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t *l_641 = &p_2143->g_107;
                int i;
                (*p_2143->g_636) ^= 0L;
                l_639 = (*p_2143->g_635);
                if (p_2143->g_290)
                    goto lbl_640;
                return l_641;
            }
        }
        (**p_2143->g_117) ^= (safe_lshift_func_int16_t_s_s((&p_2143->g_358 == ((((safe_sub_func_int8_t_s_s((p_63 > p_64), ((safe_mod_func_int16_t_s_s(l_633[3], (((l_652[0] = ((safe_lshift_func_uint8_t_u_s((--(*p_2143->g_297)), 5)) , l_652[0])) == (l_655 = l_654)) ^ ((((void*)0 != p_65) , ((*p_2143->g_546) = (**p_2143->g_545))) || p_2143->g_41)))) & 0x12045D35L))) , 0x2FL) >= 0x30L) , l_656)), 2));
    }
    else
    { /* block id: 337 */
        int64_t *l_674[8][7] = {{&p_2143->g_141[0][8],&p_2143->g_141[0][8],&p_2143->g_141[1][7],&p_2143->g_443,&p_2143->g_141[1][1],&p_2143->g_443,&p_2143->g_141[1][7]},{&p_2143->g_141[0][8],&p_2143->g_141[0][8],&p_2143->g_141[1][7],&p_2143->g_443,&p_2143->g_141[1][1],&p_2143->g_443,&p_2143->g_141[1][7]},{&p_2143->g_141[0][8],&p_2143->g_141[0][8],&p_2143->g_141[1][7],&p_2143->g_443,&p_2143->g_141[1][1],&p_2143->g_443,&p_2143->g_141[1][7]},{&p_2143->g_141[0][8],&p_2143->g_141[0][8],&p_2143->g_141[1][7],&p_2143->g_443,&p_2143->g_141[1][1],&p_2143->g_443,&p_2143->g_141[1][7]},{&p_2143->g_141[0][8],&p_2143->g_141[0][8],&p_2143->g_141[1][7],&p_2143->g_443,&p_2143->g_141[1][1],&p_2143->g_443,&p_2143->g_141[1][7]},{&p_2143->g_141[0][8],&p_2143->g_141[0][8],&p_2143->g_141[1][7],&p_2143->g_443,&p_2143->g_141[1][1],&p_2143->g_443,&p_2143->g_141[1][7]},{&p_2143->g_141[0][8],&p_2143->g_141[0][8],&p_2143->g_141[1][7],&p_2143->g_443,&p_2143->g_141[1][1],&p_2143->g_443,&p_2143->g_141[1][7]},{&p_2143->g_141[0][8],&p_2143->g_141[0][8],&p_2143->g_141[1][7],&p_2143->g_443,&p_2143->g_141[1][1],&p_2143->g_443,&p_2143->g_141[1][7]}};
        int32_t l_675[1][2][8] = {{{0x5A746345L,0x5A746345L,1L,0x5C407CF2L,(-2L),0x5C407CF2L,1L,0x5A746345L},{0x5A746345L,0x5A746345L,1L,0x5C407CF2L,(-2L),0x5C407CF2L,1L,0x5A746345L}}};
        int32_t l_682 = 0x08D02B2AL;
        int32_t *l_683 = (void*)0;
        struct S0 **l_723 = (void*)0;
        uint64_t l_798 = 18446744073709551615UL;
        int16_t *l_821 = &l_751;
        int64_t *l_859 = (void*)0;
        int64_t **l_858 = &l_859;
        uint8_t l_865 = 7UL;
        int32_t *l_867 = &l_682;
        int i, j, k;
        if ((FAKE_DIVERGE(p_2143->global_2_offset, get_global_id(2), 10) <= (safe_div_func_int32_t_s_s((l_682 = (safe_div_func_int64_t_s_s((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), ((safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((*p_66), ((safe_sub_func_int64_t_s_s(((((void*)0 != l_671) , (safe_mul_func_int8_t_s_s(((((l_675[0][0][2] = (0x39L ^ (*p_2143->g_297))) | (safe_mul_func_int16_t_s_s((+((safe_div_func_uint8_t_u_u(l_617, (-6L))) > (safe_lshift_func_uint8_t_u_u(l_682, 7)))), l_682))) == (*p_2143->g_297)) & p_2143->g_517.f0), 0x49L))) < 0x19D41333L), FAKE_DIVERGE(p_2143->group_1_offset, get_group_id(1), 10))) | 0L))), (*p_66))) & p_2143->g_329))), 0x2BA61B546326E060L))), 0x5983F951L))))
        { /* block id: 340 */
            int32_t *l_684 = (void*)0;
            int64_t *l_704 = &p_2143->g_705;
            int8_t l_709 = 0x2BL;
            int32_t l_732[9] = {4L,4L,4L,4L,4L,4L,4L,4L,4L};
            uint64_t l_852[8][3][7] = {{{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL}},{{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL}},{{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL}},{{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL}},{{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL}},{{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL}},{{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL}},{{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL},{0xBD76844B9B8319CEL,18446744073709551607UL,0x7D90B558544558B8L,18446744073709551607UL,0xBD76844B9B8319CEL,0xBD76844B9B8319CEL,18446744073709551607UL}}};
            uint32_t l_855 = 0xDF1E8336L;
            int i, j, k;
            l_684 = &l_682;
            for (p_2143->g_168 = 0; (p_2143->g_168 >= 0); p_2143->g_168 -= 1)
            { /* block id: 344 */
                int8_t *l_688 = &p_2143->g_310;
                int8_t **l_687[9][10][2];
                int i, j, k;
                for (i = 0; i < 9; i++)
                {
                    for (j = 0; j < 10; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_687[i][j][k] = &l_688;
                    }
                }
                for (p_2143->g_329 = 0; (p_2143->g_329 <= 3); p_2143->g_329 += 1)
                { /* block id: 347 */
                    int i, j;
                    p_2143->g_324[p_2143->g_168][(p_2143->g_168 + 1)] = p_2143->g_324[p_2143->g_168][(p_2143->g_168 + 1)];
                }
                (*p_2143->g_358) = ((((((safe_lshift_func_uint8_t_u_s((((p_66 = (p_2143->g_689 = &p_2143->g_310)) != (void*)0) , (safe_mul_func_int16_t_s_s(((safe_add_func_int8_t_s_s((l_633[0] = (*p_66)), ((l_617 < (*p_2143->g_689)) & 0x695E191F77A93D94L))) ^ 4UL), ((((((void*)0 == &p_2143->g_120) || 1L) | 18446744073709551612UL) > 0x1B9530F1L) & 0L)))), 4)) || (-2L)) || p_2143->g_525.f1) | p_64) , l_633[1]) , (**l_671));
                for (p_2143->g_500 = 0; (p_2143->g_500 >= 0); p_2143->g_500 -= 1)
                { /* block id: 356 */
                    union U1 *l_696 = &p_2143->g_360;
                    int i, j;
                    (**l_656) = l_696;
                    p_2143->g_698 = p_2143->g_697;
                }
            }
        }
        else
        { /* block id: 469 */
            int32_t *l_866 = &p_2143->g_110;
            l_865 |= (**p_2143->g_637);
            return l_866;
        }
        return (*p_2143->g_637);
    }
    l_879 &= ((p_2143->g_878 &= (0xDF9CL & (safe_sub_func_int32_t_s_s(((l_870 == p_2143->g_872[8]) ^ ((safe_lshift_func_uint16_t_u_s((~65535UL), p_2143->g_144)) || ((1UL != (~(((((*p_2143->g_546) = p_63) >= ((*p_2143->g_297) > ((((((FAKE_DIVERGE(p_2143->group_1_offset, get_group_id(1), 10) != (p_2143->g_877 != &p_2143->g_359)) != p_2143->g_168) == p_63) , p_63) == p_63) < p_64))) || 0L) > (*p_2143->g_297)))) | (*p_2143->g_297)))), p_2143->g_754.f1)))) > 0x6B331322L);
    return l_880;
}


/* ------------------------------------------ */
/* 
 * reads : p_2143->g_292 p_2143->g_525.f1
 * writes: p_2143->g_292 p_2143->g_525.f1
 */
int16_t  func_73(int8_t * p_74, uint64_t  p_75, int16_t  p_76, int32_t  p_77, struct S4 * p_2143)
{ /* block id: 186 */
    int16_t l_379 = 0x7EE5L;
    int32_t l_416 = 1L;
    int32_t l_417 = 3L;
    int32_t l_420 = 0x10DCE6D1L;
    int32_t l_424 = 0L;
    uint8_t l_426 = 0UL;
    union U1 ***l_433[9] = {&p_2143->g_358,&p_2143->g_358,&p_2143->g_358,&p_2143->g_358,&p_2143->g_358,&p_2143->g_358,&p_2143->g_358,&p_2143->g_358,&p_2143->g_358};
    int32_t l_439 = (-10L);
    int32_t l_441[8];
    uint8_t l_467 = 5UL;
    int32_t *l_477 = &l_441[2];
    int32_t **l_476 = &l_477;
    int32_t l_520 = 5L;
    int32_t *l_578 = &l_439;
    int32_t *l_579 = &p_2143->g_110;
    int32_t *l_580 = &l_439;
    int32_t *l_581 = &l_420;
    int32_t *l_582 = &p_2143->g_89;
    int32_t *l_583 = &l_420;
    int32_t *l_584 = &p_2143->g_290;
    int32_t *l_585 = &p_2143->g_290;
    int32_t *l_586 = &p_2143->g_107;
    int32_t *l_587 = &p_2143->g_89;
    int32_t *l_588 = &p_2143->g_260;
    int32_t *l_589 = &p_2143->g_107;
    int32_t *l_590 = &p_2143->g_290;
    int32_t *l_591 = &p_2143->g_110;
    int32_t *l_592 = &l_441[6];
    int32_t *l_593 = (void*)0;
    int32_t *l_594[2];
    uint32_t l_595 = 0x55EFF32AL;
    int i;
    for (i = 0; i < 8; i++)
        l_441[i] = 0x17B40B09L;
    for (i = 0; i < 2; i++)
        l_594[i] = &l_424;
    for (p_2143->g_292 = 29; (p_2143->g_292 == 55); p_2143->g_292 = safe_add_func_int32_t_s_s(p_2143->g_292, 3))
    { /* block id: 189 */
        int32_t l_314 = 0x68EE7C52L;
        uint64_t l_315[10] = {0xCE81A60374C54422L,0xCE81A60374C54422L,0xCE81A60374C54422L,0xCE81A60374C54422L,0xCE81A60374C54422L,0xCE81A60374C54422L,0xCE81A60374C54422L,0xCE81A60374C54422L,0xCE81A60374C54422L,0xCE81A60374C54422L};
        int8_t l_418 = (-7L);
        int32_t l_419 = 0L;
        int32_t l_421[4];
        int8_t l_440[2][5][6] = {{{0x22L,0x1EL,0L,0x5DL,0L,0x1EL},{0x22L,0x1EL,0L,0x5DL,0L,0x1EL},{0x22L,0x1EL,0L,0x5DL,0L,0x1EL},{0x22L,0x1EL,0L,0x5DL,0L,0x1EL},{0x22L,0x1EL,0L,0x5DL,0L,0x1EL}},{{0x22L,0x1EL,0L,0x5DL,0L,0x1EL},{0x22L,0x1EL,0L,0x5DL,0L,0x1EL},{0x22L,0x1EL,0L,0x5DL,0L,0x1EL},{0x22L,0x1EL,0L,0x5DL,0L,0x1EL},{0x22L,0x1EL,0L,0x5DL,0L,0x1EL}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_421[i] = (-1L);
        (1 + 1);
    }
    for (p_2143->g_525.f1 = 0; (p_2143->g_525.f1 > 26); p_2143->g_525.f1 = safe_add_func_uint32_t_u_u(p_2143->g_525.f1, 7))
    { /* block id: 306 */
        int32_t l_577 = 0x090163B3L;
        if (l_577)
            break;
        return p_77;
    }
    l_595--;
    return p_75;
}


/* ------------------------------------------ */
/* 
 * reads : p_2143->g_79 p_2143->g_89 p_2143->g_84 p_2143->g_2 p_2143->g_6 p_2143->g_107 p_2143->g_108 p_2143->g_117 p_2143->g_120 p_2143->g_118 p_2143->g_119 p_2143->g_41 p_2143->g_166 p_2143->g_144
 * writes: p_2143->g_79 p_2143->g_41 p_2143->g_89 p_2143->g_107 p_2143->g_108 p_2143->g_141 p_2143->g_166 p_2143->g_119
 */
uint32_t  func_82(int32_t  p_83, struct S4 * p_2143)
{ /* block id: 12 */
    int32_t *l_86 = &p_2143->g_6;
    int32_t l_105[10] = {0x6B9E65AFL,0x6B9E65AFL,0x6B9E65AFL,0x6B9E65AFL,0x6B9E65AFL,0x6B9E65AFL,0x6B9E65AFL,0x6B9E65AFL,0x6B9E65AFL,0x6B9E65AFL};
    int32_t l_111 = 0L;
    uint16_t l_112 = 0x493BL;
    int32_t **l_121 = &l_86;
    uint8_t *l_143[7] = {&p_2143->g_144,&p_2143->g_144,&p_2143->g_144,&p_2143->g_144,&p_2143->g_144,&p_2143->g_144,&p_2143->g_144};
    union U2 l_157[10][3][7] = {{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}},{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}},{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}},{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}},{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}},{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}},{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}},{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}},{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}},{{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}},{{0UL},{65535UL},{1UL},{0x55B1L},{1UL},{0x55ECL},{0UL}}}};
    uint64_t *l_162 = &p_2143->g_41;
    int32_t l_208 = 0x5996FE7BL;
    union U3 *l_219 = &p_2143->g_214[0][2][1];
    int32_t l_257 = 0x7E5DA076L;
    int32_t l_286 = (-2L);
    int i, j, k;
    for (p_83 = 0; (p_83 <= 1); p_83 += 1)
    { /* block id: 15 */
        uint8_t l_85[3][2] = {{9UL,9UL},{9UL,9UL},{9UL,9UL}};
        int32_t *l_88 = &p_2143->g_89;
        int32_t l_124 = 7L;
        uint64_t l_126 = 1UL;
        union U2 l_155 = {4UL};
        union U3 *l_213 = &p_2143->g_214[1][1][1];
        int32_t l_246 = (-3L);
        int32_t l_255 = 0x6571B35FL;
        int32_t l_256[5][8][5] = {{{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L}},{{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L}},{{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L}},{{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L}},{{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L},{0x7B602AEEL,0x682296ACL,0x41DF3BDAL,(-1L),1L}}};
        volatile int16_t ** volatile l_271 = &p_2143->g_268[1][7][2];/* VOLATILE GLOBAL l_271 */
        int i, j, k;
        for (p_2143->g_79 = 0; (p_2143->g_79 <= 1); p_2143->g_79 += 1)
        { /* block id: 18 */
            int32_t **l_87 = &l_86;
            int32_t l_125 = 0x42CCF7F3L;
            int32_t **l_134[3][4][1] = {{{&l_86},{&l_86},{&l_86},{&l_86}},{{&l_86},{&l_86},{&l_86},{&l_86}},{{&l_86},{&l_86},{&l_86},{&l_86}}};
            int8_t *l_140 = &p_2143->g_79;
            int i, j, k;
            l_85[2][1] = p_83;
            (*l_87) = l_86;
            for (p_2143->g_41 = 0; (p_2143->g_41 <= 1); p_2143->g_41 += 1)
            { /* block id: 23 */
                l_88 = &p_2143->g_2;
            }
            for (p_2143->g_89 = 1; (p_2143->g_89 >= 0); p_2143->g_89 -= 1)
            { /* block id: 28 */
                int32_t **l_98 = &l_86;
                int32_t *l_106 = &p_2143->g_107;
                int32_t *l_109[2][2];
                int32_t ***l_133 = &l_87;
                uint8_t *l_135 = (void*)0;
                uint8_t *l_136 = (void*)0;
                uint8_t *l_137 = &l_85[1][0];
                int32_t **l_142 = &l_106;
                uint8_t **l_145 = &l_136;
                int i, j, k;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_109[i][j] = &p_2143->g_110;
                }
                if ((safe_sub_func_uint64_t_u_u((((safe_mul_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((((((safe_sub_func_uint16_t_u_u(((l_111 = (p_2143->g_108[1][0] = ((p_2143->g_84[(p_2143->g_79 + 2)][p_2143->g_79][p_2143->g_89] <= (((*l_88) , l_98) == l_98)) <= ((((*l_106) ^= (!(((0x3F91089868D59668L <= (l_105[9] ^= (safe_sub_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((**l_98), 0x30L)), (8UL != (safe_mul_func_uint8_t_u_u(p_83, 0xD4L))))))) == (*l_86)) || p_83))) | (*l_86)) ^ 248UL)))) & p_2143->g_79), p_2143->g_89)) | (*l_88)) && FAKE_DIVERGE(p_2143->global_2_offset, get_global_id(2), 10)) , p_83) > 0UL), p_83)), 6L)) < GROUP_DIVERGE(2, 1)) <= p_2143->g_2), l_112)))
                { /* block id: 33 */
                    for (p_2143->g_107 = 1; (p_2143->g_107 >= 0); p_2143->g_107 -= 1)
                    { /* block id: 36 */
                        int i, j, k;
                        return p_2143->g_84[p_2143->g_79][(p_2143->g_107 + 1)][p_83];
                    }
                }
                else
                { /* block id: 39 */
                    int32_t l_123[7][6] = {{(-8L),(-8L),0x1E05BB15L,0x193D3ABDL,0x1A098967L,0x193D3ABDL},{(-8L),(-8L),0x1E05BB15L,0x193D3ABDL,0x1A098967L,0x193D3ABDL},{(-8L),(-8L),0x1E05BB15L,0x193D3ABDL,0x1A098967L,0x193D3ABDL},{(-8L),(-8L),0x1E05BB15L,0x193D3ABDL,0x1A098967L,0x193D3ABDL},{(-8L),(-8L),0x1E05BB15L,0x193D3ABDL,0x1A098967L,0x193D3ABDL},{(-8L),(-8L),0x1E05BB15L,0x193D3ABDL,0x1A098967L,0x193D3ABDL},{(-8L),(-8L),0x1E05BB15L,0x193D3ABDL,0x1A098967L,0x193D3ABDL}};
                    int i, j;
                    if ((p_2143->g_2 <= p_2143->g_89))
                    { /* block id: 40 */
                        return p_2143->g_2;
                    }
                    else
                    { /* block id: 42 */
                        uint16_t l_122 = 0x9AC8L;
                        if (p_2143->g_108[1][3])
                            break;
                        p_2143->g_107 ^= (safe_lshift_func_int8_t_s_u(0x2FL, (safe_sub_func_int64_t_s_s((((p_2143->g_117 == (p_2143->g_120 , l_121)) >= l_122) > 0x3EFA4ECEL), GROUP_DIVERGE(2, 1)))));
                        if ((*p_2143->g_118))
                            break;
                        l_126--;
                    }
                }
                (**l_142) = (safe_add_func_uint32_t_u_u((GROUP_DIVERGE(0, 1) > (((*l_137) = (safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_2143->global_1_offset, get_global_id(1), 10), ((l_134[2][0][0] = ((*l_133) = &l_86)) != (void*)0)))) , (!((((((((safe_div_func_uint64_t_u_u(((((-3L) ^ (((l_140 == (void*)0) != ((p_2143->g_141[1][7] = 2L) < (&p_2143->g_118 != l_142))) , (((*l_145) = l_143[0]) != &p_2143->g_144))) , p_2143->g_107) || p_2143->g_41), p_83)) ^ (*p_2143->g_118)) || (**l_87)) ^ FAKE_DIVERGE(p_2143->global_1_offset, get_global_id(1), 10)) ^ p_83) >= p_2143->g_6) , (void*)0) == &p_2143->g_107)))), p_2143->g_6));
                if ((**p_2143->g_117))
                    continue;
            }
            for (p_2143->g_107 = 0; (p_2143->g_107 <= 1); p_2143->g_107 += 1)
            { /* block id: 59 */
                int32_t l_148 = 1L;
                union U2 *l_156[8][5][6] = {{{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155}},{{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155}},{{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155}},{{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155}},{{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155}},{{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155}},{{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155}},{{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155},{&l_155,(void*)0,(void*)0,&l_155,&l_155,&l_155}}};
                uint64_t *l_161 = &l_126;
                uint64_t **l_160 = &l_161;
                uint32_t *l_165 = &p_2143->g_166;
                int i, j, k;
                (*l_121) = (((safe_add_func_int16_t_s_s(1L, (1L <= l_148))) >= (((((safe_lshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u((p_83 != ((((p_2143->g_141[2][5] = ((0xE68EL <= (((l_157[6][2][1] = l_155) , (safe_sub_func_uint32_t_u_u(((*l_165) |= (((((*l_160) = &p_2143->g_41) == l_162) <= (safe_lshift_func_int8_t_s_s((((*p_2143->g_118) & GROUP_DIVERGE(0, 1)) > 0x8B90L), p_83))) & 1L)), p_2143->g_144))) >= p_2143->g_84[3][0][1])) > p_83)) , &l_88) == (void*)0) < p_83)), p_83)), p_83)) , &l_134[2][1][0]) == (void*)0) & p_2143->g_107) & 0x6A045B0EL)) , &l_124);
                return p_2143->g_166;
            }
        }
        (**p_2143->g_117) |= (*l_88);
        for (l_126 = 0; (l_126 <= 1); l_126 += 1)
        { /* block id: 71 */
            uint64_t l_175 = 0xB5F690A14B9FDE94L;
            int32_t l_187 = (-10L);
            int32_t l_253 = 0x5E6D6B87L;
            int32_t l_254 = 1L;
            int32_t l_258 = 0x1AA11DC3L;
            uint64_t l_265 = 1UL;
            int64_t l_285 = 1L;
            int32_t l_287 = (-8L);
            int32_t l_288 = 0L;
            int32_t l_289 = 0x07024391L;
            int32_t l_291 = 0x5B06901FL;
            (1 + 1);
        }
    }
    return p_83;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S4 c_2144;
    struct S4* p_2143 = &c_2144;
    struct S4 c_2145 = {
        (-3L), // p_2143->g_2
        1L, // p_2143->g_6
        1UL, // p_2143->g_41
        1L, // p_2143->g_79
        {{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}},{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}},{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}},{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}}}, // p_2143->g_84
        (-2L), // p_2143->g_89
        1L, // p_2143->g_107
        {{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)}}, // p_2143->g_108
        (-4L), // p_2143->g_110
        1L, // p_2143->g_119
        &p_2143->g_119, // p_2143->g_118
        &p_2143->g_118, // p_2143->g_117
        {0}, // p_2143->g_120
        {{8L,0x46050D3AC3EA9617L,8L,8L,0x46050D3AC3EA9617L,8L,8L,0x46050D3AC3EA9617L,8L},{8L,0x46050D3AC3EA9617L,8L,8L,0x46050D3AC3EA9617L,8L,8L,0x46050D3AC3EA9617L,8L},{8L,0x46050D3AC3EA9617L,8L,8L,0x46050D3AC3EA9617L,8L,8L,0x46050D3AC3EA9617L,8L},{8L,0x46050D3AC3EA9617L,8L,8L,0x46050D3AC3EA9617L,8L,8L,0x46050D3AC3EA9617L,8L}}, // p_2143->g_141
        0xB3L, // p_2143->g_144
        0xDADB69EBL, // p_2143->g_166
        0L, // p_2143->g_168
        {0x7E78L,0x71A27D77L,0x1BDEC8B5L,-8L,0x8CL,0x03L}, // p_2143->g_170
        4294967288UL, // p_2143->g_181
        {0xD45AL}, // p_2143->g_210
        &p_2143->g_210, // p_2143->g_209
        {{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}}}, // p_2143->g_214
        {9UL,6L,0x4E05E50AL,0x64L,1UL,0x29L}, // p_2143->g_220
        4294967295UL, // p_2143->g_235
        {{0x3FC0L},{0x3FC0L},{0x3FC0L},{0x3FC0L},{0x3FC0L},{0x3FC0L},{0x3FC0L},{0x3FC0L},{0x3FC0L}}, // p_2143->g_243
        {{{65527UL},{0x0C25L},{0x12DAL}},{{65527UL},{0x0C25L},{0x12DAL}},{{65527UL},{0x0C25L},{0x12DAL}},{{65527UL},{0x0C25L},{0x12DAL}},{{65527UL},{0x0C25L},{0x12DAL}},{{65527UL},{0x0C25L},{0x12DAL}},{{65527UL},{0x0C25L},{0x12DAL}},{{65527UL},{0x0C25L},{0x12DAL}}}, // p_2143->g_249
        0x33L, // p_2143->g_259
        0x5A66BE07L, // p_2143->g_260
        0x3D54BD57L, // p_2143->g_261
        0x2AL, // p_2143->g_262
        0L, // p_2143->g_269
        {{{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269}},{{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269}},{{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269}},{{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269}},{{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269}},{{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269},{&p_2143->g_269,(void*)0,&p_2143->g_269,&p_2143->g_269}}}, // p_2143->g_268
        &p_2143->g_268[1][7][2], // p_2143->g_267
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2143->g_270
        0x73867A1AL, // p_2143->g_290
        65534UL, // p_2143->g_292
        &p_2143->g_144, // p_2143->g_297
        0L, // p_2143->g_310
        {0UL,0x1674D7C2L,0x3D29C942L,1L,0x7CL,0L}, // p_2143->g_323
        {{&p_2143->g_323,&p_2143->g_323}}, // p_2143->g_324
        &p_2143->g_220, // p_2143->g_325
        0x39D5B40FL, // p_2143->g_329
        {0xD450L,0x1204A061L,-1L,8L,0xE6L,0x2AL}, // p_2143->g_347
        {65535UL}, // p_2143->g_360
        &p_2143->g_360, // p_2143->g_359
        &p_2143->g_359, // p_2143->g_358
        (-1L), // p_2143->g_443
        0UL, // p_2143->g_445
        1L, // p_2143->g_500
        {0x58A5L}, // p_2143->g_517
        {1UL,0L,0L,-1L,0x47L,0L}, // p_2143->g_525
        {{{&p_2143->g_170,&p_2143->g_323,&p_2143->g_323},{&p_2143->g_170,&p_2143->g_323,&p_2143->g_323},{&p_2143->g_170,&p_2143->g_323,&p_2143->g_323},{&p_2143->g_170,&p_2143->g_323,&p_2143->g_323},{&p_2143->g_170,&p_2143->g_323,&p_2143->g_323},{&p_2143->g_170,&p_2143->g_323,&p_2143->g_323},{&p_2143->g_170,&p_2143->g_323,&p_2143->g_323},{&p_2143->g_170,&p_2143->g_323,&p_2143->g_323}}}, // p_2143->g_526
        (void*)0, // p_2143->g_527
        &p_2143->g_323, // p_2143->g_528
        &p_2143->g_41, // p_2143->g_546
        &p_2143->g_546, // p_2143->g_545
        &p_2143->g_2, // p_2143->g_636
        &p_2143->g_636, // p_2143->g_635
        &p_2143->g_636, // p_2143->g_637
        &p_2143->g_79, // p_2143->g_689
        {65526UL,0L,0x6CCFA8E7L,1L,253UL,0x09L}, // p_2143->g_697
        {1UL,0x2031D929L,0x2A70F769L,0x5CL,0UL,0x60L}, // p_2143->g_698
        0x2EF4D0EB9A46BADFL, // p_2143->g_705
        (-1L), // p_2143->g_708
        {{&p_2143->g_636,&p_2143->g_636,&p_2143->g_636},{&p_2143->g_636,&p_2143->g_636,&p_2143->g_636},{&p_2143->g_636,&p_2143->g_636,&p_2143->g_636}}, // p_2143->g_752
        {0x3F4AL,0x44070C09L,0x48ADC13CL,0x06L,0xACL,-5L}, // p_2143->g_754
        (void*)0, // p_2143->g_783
        &p_2143->g_783, // p_2143->g_782
        &p_2143->g_545, // p_2143->g_830
        &p_2143->g_636, // p_2143->g_841
        {0}, // p_2143->g_850
        {&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636}, // p_2143->g_861
        7UL, // p_2143->g_874
        &p_2143->g_874, // p_2143->g_873
        {&p_2143->g_873,&p_2143->g_873,&p_2143->g_873,&p_2143->g_873,&p_2143->g_873,&p_2143->g_873,&p_2143->g_873,&p_2143->g_873,&p_2143->g_873,&p_2143->g_873}, // p_2143->g_872
        &p_2143->g_359, // p_2143->g_877
        0xD0L, // p_2143->g_878
        0x98L, // p_2143->g_908
        {0xF1B5L}, // p_2143->g_914
        {0xC689L,0L,0L,-2L,253UL,1L}, // p_2143->g_924
        {{18446744073709551609UL,18446744073709551609UL,0x0264181384129246L,0x553A4ECA8826C1DDL,18446744073709551606UL,0x553A4ECA8826C1DDL,0x0264181384129246L},{18446744073709551609UL,18446744073709551609UL,0x0264181384129246L,0x553A4ECA8826C1DDL,18446744073709551606UL,0x553A4ECA8826C1DDL,0x0264181384129246L},{18446744073709551609UL,18446744073709551609UL,0x0264181384129246L,0x553A4ECA8826C1DDL,18446744073709551606UL,0x553A4ECA8826C1DDL,0x0264181384129246L},{18446744073709551609UL,18446744073709551609UL,0x0264181384129246L,0x553A4ECA8826C1DDL,18446744073709551606UL,0x553A4ECA8826C1DDL,0x0264181384129246L},{18446744073709551609UL,18446744073709551609UL,0x0264181384129246L,0x553A4ECA8826C1DDL,18446744073709551606UL,0x553A4ECA8826C1DDL,0x0264181384129246L},{18446744073709551609UL,18446744073709551609UL,0x0264181384129246L,0x553A4ECA8826C1DDL,18446744073709551606UL,0x553A4ECA8826C1DDL,0x0264181384129246L},{18446744073709551609UL,18446744073709551609UL,0x0264181384129246L,0x553A4ECA8826C1DDL,18446744073709551606UL,0x553A4ECA8826C1DDL,0x0264181384129246L}}, // p_2143->g_926
        {{0x52A3L,0L,-1L,0x5CL,0UL,6L},{0x52A3L,0L,-1L,0x5CL,0UL,6L},{0x52A3L,0L,-1L,0x5CL,0UL,6L},{0x52A3L,0L,-1L,0x5CL,0UL,6L}}, // p_2143->g_934
        {0}, // p_2143->g_939
        0x38F820D8DB6AF7ABL, // p_2143->g_943
        &p_2143->g_943, // p_2143->g_942
        &p_2143->g_942, // p_2143->g_941
        &p_2143->g_941, // p_2143->g_940
        4294967295UL, // p_2143->g_1029
        (void*)0, // p_2143->g_1068
        {{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0},{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0},{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0},{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0},{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0},{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0},{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0},{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0},{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0},{&p_2143->g_517.f0,&p_2143->g_924.f0,&p_2143->g_924.f0,&p_2143->g_517.f0,&p_2143->g_243[0].f0}}, // p_2143->g_1070
        {8UL,0x202B55EFL,-1L,0x0BL,0x85L,0L}, // p_2143->g_1071
        &p_2143->g_360.f1, // p_2143->g_1072
        &p_2143->g_120, // p_2143->g_1076
        &p_2143->g_1076, // p_2143->g_1075
        {0xBA9EL,-4L,0x5196EF67L,-2L,0xC3L,0x1BL}, // p_2143->g_1107
        {1UL,-1L,0x440ABADCL,-1L,0xB9L,6L}, // p_2143->g_1111
        {0}, // p_2143->g_1115
        &p_2143->g_636, // p_2143->g_1125
        {{{0x159BL},{0x159BL},{0UL},{0x56EBL},{4UL},{0x56EBL},{0UL},{0x159BL},{0x159BL},{0UL}},{{0x159BL},{0x159BL},{0UL},{0x56EBL},{4UL},{0x56EBL},{0UL},{0x159BL},{0x159BL},{0UL}}}, // p_2143->g_1161
        (void*)0, // p_2143->g_1169
        (void*)0, // p_2143->g_1175
        &p_2143->g_705, // p_2143->g_1214
        0x5883BCB9L, // p_2143->g_1221
        6UL, // p_2143->g_1234
        &p_2143->g_168, // p_2143->g_1265
        &p_2143->g_1265, // p_2143->g_1264
        &p_2143->g_1264, // p_2143->g_1263
        1L, // p_2143->g_1280
        {0xAE63L,-1L,-2L,0x76L,0xEBL,0L}, // p_2143->g_1281
        {0xD1CAL,7L,0x16B8D7B6L,0x60L,0x8EL,0x54L}, // p_2143->g_1282
        {0xE6B1L}, // p_2143->g_1287
        {0xCD0EL,0L,1L,-5L,0x1DL,0x73L}, // p_2143->g_1292
        {0x848DL,0x30F12928L,0x60581F15L,-2L,0UL,1L}, // p_2143->g_1293
        &p_2143->g_939.f3, // p_2143->g_1323
        {{0xF3E9L,-1L,0x5369818BL,0x0BL,3UL,-1L}}, // p_2143->g_1330
        {{65535UL,0x36A433F4L,0L,0x5AL,249UL,0x6EL},{1UL,0x6F3F8767L,0x0F3F1C23L,0x41L,0x44L,0L},{65535UL,0x36A433F4L,0L,0x5AL,249UL,0x6EL},{65535UL,0x36A433F4L,0L,0x5AL,249UL,0x6EL},{1UL,0x6F3F8767L,0x0F3F1C23L,0x41L,0x44L,0L},{65535UL,0x36A433F4L,0L,0x5AL,249UL,0x6EL},{65535UL,0x36A433F4L,0L,0x5AL,249UL,0x6EL},{1UL,0x6F3F8767L,0x0F3F1C23L,0x41L,0x44L,0L}}, // p_2143->g_1332
        &p_2143->g_329, // p_2143->g_1387
        {{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387},{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387},{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387},{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387},{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387},{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387},{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387},{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387},{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387},{&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387,&p_2143->g_1387}}, // p_2143->g_1386
        &p_2143->g_1386[4][0], // p_2143->g_1385
        &p_2143->g_249[5][1], // p_2143->g_1397
        &p_2143->g_1397, // p_2143->g_1396
        {0}, // p_2143->g_1400
        {0xAE8CL,0x4680B34AL,0x103D8268L,-1L,0UL,0x13L}, // p_2143->g_1410
        0x3BL, // p_2143->g_1422
        65535UL, // p_2143->g_1423
        {1UL,-2L,-1L,0x32L,0x07L,0x7FL}, // p_2143->g_1433
        &p_2143->g_636, // p_2143->g_1463
        {0x87DCL,-1L,0L,0x71L,0x39L,6L}, // p_2143->g_1464
        0x4EF9C69DL, // p_2143->g_1467
        (void*)0, // p_2143->g_1500
        {{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0},{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0},{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0},{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0},{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0},{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0},{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0},{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0},{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0},{&p_2143->g_1500,(void*)0,&p_2143->g_1500,(void*)0,(void*)0}}, // p_2143->g_1499
        &p_2143->g_636, // p_2143->g_1537
        {&p_2143->g_214[1][1][1],&p_2143->g_214[1][1][1],&p_2143->g_214[1][1][1],&p_2143->g_214[1][1][1],&p_2143->g_214[1][1][1],&p_2143->g_214[1][1][1],&p_2143->g_214[1][1][1],&p_2143->g_214[1][1][1]}, // p_2143->g_1578
        &p_2143->g_1578[4], // p_2143->g_1577
        {65535UL}, // p_2143->g_1600
        {0x5E62L,0L,-1L,0x29L,0x7BL,1L}, // p_2143->g_1601
        &p_2143->g_220, // p_2143->g_1602
        {0x3EF2L,0x531B63C8L,0x0D1131CEL,-4L,0x49L,0x65L}, // p_2143->g_1619
        &p_2143->g_347, // p_2143->g_1620
        {{0},{0},{0},{0},{0},{0},{0},{0},{0}}, // p_2143->g_1635
        {0}, // p_2143->g_1673
        {{1UL,-2L,0x7DDE86E0L,0x2CL,249UL,0x58L},{1UL,-2L,0x7DDE86E0L,0x2CL,249UL,0x58L},{1UL,-2L,0x7DDE86E0L,0x2CL,249UL,0x58L},{1UL,-2L,0x7DDE86E0L,0x2CL,249UL,0x58L},{1UL,-2L,0x7DDE86E0L,0x2CL,249UL,0x58L},{1UL,-2L,0x7DDE86E0L,0x2CL,249UL,0x58L},{1UL,-2L,0x7DDE86E0L,0x2CL,249UL,0x58L}}, // p_2143->g_1701
        {0UL,0x0563DA41L,0x4A781638L,0x7FL,0xF2L,9L}, // p_2143->g_1706
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2143->g_1716
        &p_2143->g_636, // p_2143->g_1738
        0x075EDCDFL, // p_2143->g_1740
        {0}, // p_2143->g_1743
        &p_2143->g_268[0][6][0], // p_2143->g_1755
        &p_2143->g_1755, // p_2143->g_1754
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2143->g_1753
        &p_2143->g_1753[8], // p_2143->g_1752
        0UL, // p_2143->g_1805
        &p_2143->g_636, // p_2143->g_1839
        {{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}},{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}},{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}},{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}},{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}},{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}},{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}},{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}},{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}},{{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577},{&p_2143->g_1577,(void*)0,(void*)0,&p_2143->g_1577,&p_2143->g_1577,&p_2143->g_1577}}}, // p_2143->g_1880
        4294967295UL, // p_2143->g_1921
        (void*)0, // p_2143->g_1966
        &p_2143->g_1966, // p_2143->g_1965
        {3UL}, // p_2143->g_1979
        (void*)0, // p_2143->g_1992
        {{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}},{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}},{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}},{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}},{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}},{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}},{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}},{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}},{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}}}, // p_2143->g_2023
        0x14FEL, // p_2143->g_2027
        {{1UL,0x2C4475EEL,0x420F746EL,0x3AL,0x9CL,0x09L},{65535UL,0x718E5034L,1L,0x37L,1UL,3L},{1UL,0x2C4475EEL,0x420F746EL,0x3AL,0x9CL,0x09L},{1UL,0x2C4475EEL,0x420F746EL,0x3AL,0x9CL,0x09L},{65535UL,0x718E5034L,1L,0x37L,1UL,3L},{1UL,0x2C4475EEL,0x420F746EL,0x3AL,0x9CL,0x09L}}, // p_2143->g_2042
        {65535UL,-1L,0x22A0C0E0L,0x52L,0x70L,-1L}, // p_2143->g_2043
        (void*)0, // p_2143->g_2045
        &p_2143->g_636, // p_2143->g_2049
        {65534UL,-10L,1L,0x3DL,0xD3L,0x62L}, // p_2143->g_2056
        {&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636,&p_2143->g_636}, // p_2143->g_2089
        {65532UL,-2L,0x5AA9AF56L,0x53L,0UL,-1L}, // p_2143->g_2141
        0, // p_2143->v_collective
        sequence_input[get_global_id(0)], // p_2143->global_0_offset
        sequence_input[get_global_id(1)], // p_2143->global_1_offset
        sequence_input[get_global_id(2)], // p_2143->global_2_offset
        sequence_input[get_local_id(0)], // p_2143->local_0_offset
        sequence_input[get_local_id(1)], // p_2143->local_1_offset
        sequence_input[get_local_id(2)], // p_2143->local_2_offset
        sequence_input[get_group_id(0)], // p_2143->group_0_offset
        sequence_input[get_group_id(1)], // p_2143->group_1_offset
        sequence_input[get_group_id(2)], // p_2143->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_2144 = c_2145;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2143);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2143->g_2, "p_2143->g_2", print_hash_value);
    transparent_crc(p_2143->g_6, "p_2143->g_6", print_hash_value);
    transparent_crc(p_2143->g_41, "p_2143->g_41", print_hash_value);
    transparent_crc(p_2143->g_79, "p_2143->g_79", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2143->g_84[i][j][k], "p_2143->g_84[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2143->g_89, "p_2143->g_89", print_hash_value);
    transparent_crc(p_2143->g_107, "p_2143->g_107", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_2143->g_108[i][j], "p_2143->g_108[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2143->g_110, "p_2143->g_110", print_hash_value);
    transparent_crc(p_2143->g_119, "p_2143->g_119", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2143->g_141[i][j], "p_2143->g_141[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2143->g_144, "p_2143->g_144", print_hash_value);
    transparent_crc(p_2143->g_166, "p_2143->g_166", print_hash_value);
    transparent_crc(p_2143->g_168, "p_2143->g_168", print_hash_value);
    transparent_crc(p_2143->g_170.f0, "p_2143->g_170.f0", print_hash_value);
    transparent_crc(p_2143->g_170.f1, "p_2143->g_170.f1", print_hash_value);
    transparent_crc(p_2143->g_170.f2, "p_2143->g_170.f2", print_hash_value);
    transparent_crc(p_2143->g_170.f3, "p_2143->g_170.f3", print_hash_value);
    transparent_crc(p_2143->g_170.f4, "p_2143->g_170.f4", print_hash_value);
    transparent_crc(p_2143->g_170.f5, "p_2143->g_170.f5", print_hash_value);
    transparent_crc(p_2143->g_181, "p_2143->g_181", print_hash_value);
    transparent_crc(p_2143->g_210.f0, "p_2143->g_210.f0", print_hash_value);
    transparent_crc(p_2143->g_220.f0, "p_2143->g_220.f0", print_hash_value);
    transparent_crc(p_2143->g_220.f1, "p_2143->g_220.f1", print_hash_value);
    transparent_crc(p_2143->g_220.f2, "p_2143->g_220.f2", print_hash_value);
    transparent_crc(p_2143->g_220.f3, "p_2143->g_220.f3", print_hash_value);
    transparent_crc(p_2143->g_220.f4, "p_2143->g_220.f4", print_hash_value);
    transparent_crc(p_2143->g_220.f5, "p_2143->g_220.f5", print_hash_value);
    transparent_crc(p_2143->g_235, "p_2143->g_235", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2143->g_243[i].f0, "p_2143->g_243[i].f0", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2143->g_249[i][j].f0, "p_2143->g_249[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2143->g_259, "p_2143->g_259", print_hash_value);
    transparent_crc(p_2143->g_260, "p_2143->g_260", print_hash_value);
    transparent_crc(p_2143->g_261, "p_2143->g_261", print_hash_value);
    transparent_crc(p_2143->g_262, "p_2143->g_262", print_hash_value);
    transparent_crc(p_2143->g_269, "p_2143->g_269", print_hash_value);
    transparent_crc(p_2143->g_290, "p_2143->g_290", print_hash_value);
    transparent_crc(p_2143->g_292, "p_2143->g_292", print_hash_value);
    transparent_crc(p_2143->g_310, "p_2143->g_310", print_hash_value);
    transparent_crc(p_2143->g_323.f0, "p_2143->g_323.f0", print_hash_value);
    transparent_crc(p_2143->g_323.f1, "p_2143->g_323.f1", print_hash_value);
    transparent_crc(p_2143->g_323.f2, "p_2143->g_323.f2", print_hash_value);
    transparent_crc(p_2143->g_323.f3, "p_2143->g_323.f3", print_hash_value);
    transparent_crc(p_2143->g_323.f4, "p_2143->g_323.f4", print_hash_value);
    transparent_crc(p_2143->g_323.f5, "p_2143->g_323.f5", print_hash_value);
    transparent_crc(p_2143->g_329, "p_2143->g_329", print_hash_value);
    transparent_crc(p_2143->g_347.f0, "p_2143->g_347.f0", print_hash_value);
    transparent_crc(p_2143->g_347.f1, "p_2143->g_347.f1", print_hash_value);
    transparent_crc(p_2143->g_347.f2, "p_2143->g_347.f2", print_hash_value);
    transparent_crc(p_2143->g_347.f3, "p_2143->g_347.f3", print_hash_value);
    transparent_crc(p_2143->g_347.f4, "p_2143->g_347.f4", print_hash_value);
    transparent_crc(p_2143->g_347.f5, "p_2143->g_347.f5", print_hash_value);
    transparent_crc(p_2143->g_360.f0, "p_2143->g_360.f0", print_hash_value);
    transparent_crc(p_2143->g_443, "p_2143->g_443", print_hash_value);
    transparent_crc(p_2143->g_445, "p_2143->g_445", print_hash_value);
    transparent_crc(p_2143->g_500, "p_2143->g_500", print_hash_value);
    transparent_crc(p_2143->g_517.f0, "p_2143->g_517.f0", print_hash_value);
    transparent_crc(p_2143->g_525.f0, "p_2143->g_525.f0", print_hash_value);
    transparent_crc(p_2143->g_525.f1, "p_2143->g_525.f1", print_hash_value);
    transparent_crc(p_2143->g_525.f2, "p_2143->g_525.f2", print_hash_value);
    transparent_crc(p_2143->g_525.f3, "p_2143->g_525.f3", print_hash_value);
    transparent_crc(p_2143->g_525.f4, "p_2143->g_525.f4", print_hash_value);
    transparent_crc(p_2143->g_525.f5, "p_2143->g_525.f5", print_hash_value);
    transparent_crc(p_2143->g_697.f0, "p_2143->g_697.f0", print_hash_value);
    transparent_crc(p_2143->g_697.f1, "p_2143->g_697.f1", print_hash_value);
    transparent_crc(p_2143->g_697.f2, "p_2143->g_697.f2", print_hash_value);
    transparent_crc(p_2143->g_697.f3, "p_2143->g_697.f3", print_hash_value);
    transparent_crc(p_2143->g_697.f4, "p_2143->g_697.f4", print_hash_value);
    transparent_crc(p_2143->g_697.f5, "p_2143->g_697.f5", print_hash_value);
    transparent_crc(p_2143->g_698.f0, "p_2143->g_698.f0", print_hash_value);
    transparent_crc(p_2143->g_698.f1, "p_2143->g_698.f1", print_hash_value);
    transparent_crc(p_2143->g_698.f2, "p_2143->g_698.f2", print_hash_value);
    transparent_crc(p_2143->g_698.f3, "p_2143->g_698.f3", print_hash_value);
    transparent_crc(p_2143->g_698.f4, "p_2143->g_698.f4", print_hash_value);
    transparent_crc(p_2143->g_698.f5, "p_2143->g_698.f5", print_hash_value);
    transparent_crc(p_2143->g_705, "p_2143->g_705", print_hash_value);
    transparent_crc(p_2143->g_708, "p_2143->g_708", print_hash_value);
    transparent_crc(p_2143->g_754.f0, "p_2143->g_754.f0", print_hash_value);
    transparent_crc(p_2143->g_754.f1, "p_2143->g_754.f1", print_hash_value);
    transparent_crc(p_2143->g_754.f2, "p_2143->g_754.f2", print_hash_value);
    transparent_crc(p_2143->g_754.f3, "p_2143->g_754.f3", print_hash_value);
    transparent_crc(p_2143->g_754.f4, "p_2143->g_754.f4", print_hash_value);
    transparent_crc(p_2143->g_754.f5, "p_2143->g_754.f5", print_hash_value);
    transparent_crc(p_2143->g_874, "p_2143->g_874", print_hash_value);
    transparent_crc(p_2143->g_878, "p_2143->g_878", print_hash_value);
    transparent_crc(p_2143->g_908, "p_2143->g_908", print_hash_value);
    transparent_crc(p_2143->g_914.f0, "p_2143->g_914.f0", print_hash_value);
    transparent_crc(p_2143->g_924.f0, "p_2143->g_924.f0", print_hash_value);
    transparent_crc(p_2143->g_924.f1, "p_2143->g_924.f1", print_hash_value);
    transparent_crc(p_2143->g_924.f2, "p_2143->g_924.f2", print_hash_value);
    transparent_crc(p_2143->g_924.f3, "p_2143->g_924.f3", print_hash_value);
    transparent_crc(p_2143->g_924.f4, "p_2143->g_924.f4", print_hash_value);
    transparent_crc(p_2143->g_924.f5, "p_2143->g_924.f5", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2143->g_926[i][j], "p_2143->g_926[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2143->g_934[i].f0, "p_2143->g_934[i].f0", print_hash_value);
        transparent_crc(p_2143->g_934[i].f1, "p_2143->g_934[i].f1", print_hash_value);
        transparent_crc(p_2143->g_934[i].f2, "p_2143->g_934[i].f2", print_hash_value);
        transparent_crc(p_2143->g_934[i].f3, "p_2143->g_934[i].f3", print_hash_value);
        transparent_crc(p_2143->g_934[i].f4, "p_2143->g_934[i].f4", print_hash_value);
        transparent_crc(p_2143->g_934[i].f5, "p_2143->g_934[i].f5", print_hash_value);

    }
    transparent_crc(p_2143->g_943, "p_2143->g_943", print_hash_value);
    transparent_crc(p_2143->g_1029, "p_2143->g_1029", print_hash_value);
    transparent_crc(p_2143->g_1071.f0, "p_2143->g_1071.f0", print_hash_value);
    transparent_crc(p_2143->g_1071.f1, "p_2143->g_1071.f1", print_hash_value);
    transparent_crc(p_2143->g_1071.f2, "p_2143->g_1071.f2", print_hash_value);
    transparent_crc(p_2143->g_1071.f3, "p_2143->g_1071.f3", print_hash_value);
    transparent_crc(p_2143->g_1071.f4, "p_2143->g_1071.f4", print_hash_value);
    transparent_crc(p_2143->g_1071.f5, "p_2143->g_1071.f5", print_hash_value);
    transparent_crc(p_2143->g_1107.f0, "p_2143->g_1107.f0", print_hash_value);
    transparent_crc(p_2143->g_1107.f1, "p_2143->g_1107.f1", print_hash_value);
    transparent_crc(p_2143->g_1107.f2, "p_2143->g_1107.f2", print_hash_value);
    transparent_crc(p_2143->g_1107.f3, "p_2143->g_1107.f3", print_hash_value);
    transparent_crc(p_2143->g_1107.f4, "p_2143->g_1107.f4", print_hash_value);
    transparent_crc(p_2143->g_1107.f5, "p_2143->g_1107.f5", print_hash_value);
    transparent_crc(p_2143->g_1111.f0, "p_2143->g_1111.f0", print_hash_value);
    transparent_crc(p_2143->g_1111.f1, "p_2143->g_1111.f1", print_hash_value);
    transparent_crc(p_2143->g_1111.f2, "p_2143->g_1111.f2", print_hash_value);
    transparent_crc(p_2143->g_1111.f3, "p_2143->g_1111.f3", print_hash_value);
    transparent_crc(p_2143->g_1111.f4, "p_2143->g_1111.f4", print_hash_value);
    transparent_crc(p_2143->g_1111.f5, "p_2143->g_1111.f5", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2143->g_1161[i][j].f0, "p_2143->g_1161[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2143->g_1221, "p_2143->g_1221", print_hash_value);
    transparent_crc(p_2143->g_1234, "p_2143->g_1234", print_hash_value);
    transparent_crc(p_2143->g_1280, "p_2143->g_1280", print_hash_value);
    transparent_crc(p_2143->g_1281.f0, "p_2143->g_1281.f0", print_hash_value);
    transparent_crc(p_2143->g_1281.f1, "p_2143->g_1281.f1", print_hash_value);
    transparent_crc(p_2143->g_1281.f2, "p_2143->g_1281.f2", print_hash_value);
    transparent_crc(p_2143->g_1281.f3, "p_2143->g_1281.f3", print_hash_value);
    transparent_crc(p_2143->g_1281.f4, "p_2143->g_1281.f4", print_hash_value);
    transparent_crc(p_2143->g_1281.f5, "p_2143->g_1281.f5", print_hash_value);
    transparent_crc(p_2143->g_1282.f0, "p_2143->g_1282.f0", print_hash_value);
    transparent_crc(p_2143->g_1282.f1, "p_2143->g_1282.f1", print_hash_value);
    transparent_crc(p_2143->g_1282.f2, "p_2143->g_1282.f2", print_hash_value);
    transparent_crc(p_2143->g_1282.f3, "p_2143->g_1282.f3", print_hash_value);
    transparent_crc(p_2143->g_1282.f4, "p_2143->g_1282.f4", print_hash_value);
    transparent_crc(p_2143->g_1282.f5, "p_2143->g_1282.f5", print_hash_value);
    transparent_crc(p_2143->g_1287.f0, "p_2143->g_1287.f0", print_hash_value);
    transparent_crc(p_2143->g_1292.f0, "p_2143->g_1292.f0", print_hash_value);
    transparent_crc(p_2143->g_1292.f1, "p_2143->g_1292.f1", print_hash_value);
    transparent_crc(p_2143->g_1292.f2, "p_2143->g_1292.f2", print_hash_value);
    transparent_crc(p_2143->g_1292.f3, "p_2143->g_1292.f3", print_hash_value);
    transparent_crc(p_2143->g_1292.f4, "p_2143->g_1292.f4", print_hash_value);
    transparent_crc(p_2143->g_1292.f5, "p_2143->g_1292.f5", print_hash_value);
    transparent_crc(p_2143->g_1293.f0, "p_2143->g_1293.f0", print_hash_value);
    transparent_crc(p_2143->g_1293.f1, "p_2143->g_1293.f1", print_hash_value);
    transparent_crc(p_2143->g_1293.f2, "p_2143->g_1293.f2", print_hash_value);
    transparent_crc(p_2143->g_1293.f3, "p_2143->g_1293.f3", print_hash_value);
    transparent_crc(p_2143->g_1293.f4, "p_2143->g_1293.f4", print_hash_value);
    transparent_crc(p_2143->g_1293.f5, "p_2143->g_1293.f5", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2143->g_1330[i].f0, "p_2143->g_1330[i].f0", print_hash_value);
        transparent_crc(p_2143->g_1330[i].f1, "p_2143->g_1330[i].f1", print_hash_value);
        transparent_crc(p_2143->g_1330[i].f2, "p_2143->g_1330[i].f2", print_hash_value);
        transparent_crc(p_2143->g_1330[i].f3, "p_2143->g_1330[i].f3", print_hash_value);
        transparent_crc(p_2143->g_1330[i].f4, "p_2143->g_1330[i].f4", print_hash_value);
        transparent_crc(p_2143->g_1330[i].f5, "p_2143->g_1330[i].f5", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2143->g_1332[i].f0, "p_2143->g_1332[i].f0", print_hash_value);
        transparent_crc(p_2143->g_1332[i].f1, "p_2143->g_1332[i].f1", print_hash_value);
        transparent_crc(p_2143->g_1332[i].f2, "p_2143->g_1332[i].f2", print_hash_value);
        transparent_crc(p_2143->g_1332[i].f3, "p_2143->g_1332[i].f3", print_hash_value);
        transparent_crc(p_2143->g_1332[i].f4, "p_2143->g_1332[i].f4", print_hash_value);
        transparent_crc(p_2143->g_1332[i].f5, "p_2143->g_1332[i].f5", print_hash_value);

    }
    transparent_crc(p_2143->g_1410.f0, "p_2143->g_1410.f0", print_hash_value);
    transparent_crc(p_2143->g_1410.f1, "p_2143->g_1410.f1", print_hash_value);
    transparent_crc(p_2143->g_1410.f2, "p_2143->g_1410.f2", print_hash_value);
    transparent_crc(p_2143->g_1410.f3, "p_2143->g_1410.f3", print_hash_value);
    transparent_crc(p_2143->g_1410.f4, "p_2143->g_1410.f4", print_hash_value);
    transparent_crc(p_2143->g_1410.f5, "p_2143->g_1410.f5", print_hash_value);
    transparent_crc(p_2143->g_1422, "p_2143->g_1422", print_hash_value);
    transparent_crc(p_2143->g_1423, "p_2143->g_1423", print_hash_value);
    transparent_crc(p_2143->g_1433.f0, "p_2143->g_1433.f0", print_hash_value);
    transparent_crc(p_2143->g_1433.f1, "p_2143->g_1433.f1", print_hash_value);
    transparent_crc(p_2143->g_1433.f2, "p_2143->g_1433.f2", print_hash_value);
    transparent_crc(p_2143->g_1433.f3, "p_2143->g_1433.f3", print_hash_value);
    transparent_crc(p_2143->g_1433.f4, "p_2143->g_1433.f4", print_hash_value);
    transparent_crc(p_2143->g_1433.f5, "p_2143->g_1433.f5", print_hash_value);
    transparent_crc(p_2143->g_1464.f0, "p_2143->g_1464.f0", print_hash_value);
    transparent_crc(p_2143->g_1464.f1, "p_2143->g_1464.f1", print_hash_value);
    transparent_crc(p_2143->g_1464.f2, "p_2143->g_1464.f2", print_hash_value);
    transparent_crc(p_2143->g_1464.f3, "p_2143->g_1464.f3", print_hash_value);
    transparent_crc(p_2143->g_1464.f4, "p_2143->g_1464.f4", print_hash_value);
    transparent_crc(p_2143->g_1464.f5, "p_2143->g_1464.f5", print_hash_value);
    transparent_crc(p_2143->g_1467, "p_2143->g_1467", print_hash_value);
    transparent_crc(p_2143->g_1600.f0, "p_2143->g_1600.f0", print_hash_value);
    transparent_crc(p_2143->g_1601.f0, "p_2143->g_1601.f0", print_hash_value);
    transparent_crc(p_2143->g_1601.f1, "p_2143->g_1601.f1", print_hash_value);
    transparent_crc(p_2143->g_1601.f2, "p_2143->g_1601.f2", print_hash_value);
    transparent_crc(p_2143->g_1601.f3, "p_2143->g_1601.f3", print_hash_value);
    transparent_crc(p_2143->g_1601.f4, "p_2143->g_1601.f4", print_hash_value);
    transparent_crc(p_2143->g_1601.f5, "p_2143->g_1601.f5", print_hash_value);
    transparent_crc(p_2143->g_1619.f0, "p_2143->g_1619.f0", print_hash_value);
    transparent_crc(p_2143->g_1619.f1, "p_2143->g_1619.f1", print_hash_value);
    transparent_crc(p_2143->g_1619.f2, "p_2143->g_1619.f2", print_hash_value);
    transparent_crc(p_2143->g_1619.f3, "p_2143->g_1619.f3", print_hash_value);
    transparent_crc(p_2143->g_1619.f4, "p_2143->g_1619.f4", print_hash_value);
    transparent_crc(p_2143->g_1619.f5, "p_2143->g_1619.f5", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2143->g_1701[i].f0, "p_2143->g_1701[i].f0", print_hash_value);
        transparent_crc(p_2143->g_1701[i].f1, "p_2143->g_1701[i].f1", print_hash_value);
        transparent_crc(p_2143->g_1701[i].f2, "p_2143->g_1701[i].f2", print_hash_value);
        transparent_crc(p_2143->g_1701[i].f3, "p_2143->g_1701[i].f3", print_hash_value);
        transparent_crc(p_2143->g_1701[i].f4, "p_2143->g_1701[i].f4", print_hash_value);
        transparent_crc(p_2143->g_1701[i].f5, "p_2143->g_1701[i].f5", print_hash_value);

    }
    transparent_crc(p_2143->g_1706.f0, "p_2143->g_1706.f0", print_hash_value);
    transparent_crc(p_2143->g_1706.f1, "p_2143->g_1706.f1", print_hash_value);
    transparent_crc(p_2143->g_1706.f2, "p_2143->g_1706.f2", print_hash_value);
    transparent_crc(p_2143->g_1706.f3, "p_2143->g_1706.f3", print_hash_value);
    transparent_crc(p_2143->g_1706.f4, "p_2143->g_1706.f4", print_hash_value);
    transparent_crc(p_2143->g_1706.f5, "p_2143->g_1706.f5", print_hash_value);
    transparent_crc(p_2143->g_1740, "p_2143->g_1740", print_hash_value);
    transparent_crc(p_2143->g_1805, "p_2143->g_1805", print_hash_value);
    transparent_crc(p_2143->g_1921, "p_2143->g_1921", print_hash_value);
    transparent_crc(p_2143->g_1979.f0, "p_2143->g_1979.f0", print_hash_value);
    transparent_crc(p_2143->g_2027, "p_2143->g_2027", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2143->g_2042[i].f0, "p_2143->g_2042[i].f0", print_hash_value);
        transparent_crc(p_2143->g_2042[i].f1, "p_2143->g_2042[i].f1", print_hash_value);
        transparent_crc(p_2143->g_2042[i].f2, "p_2143->g_2042[i].f2", print_hash_value);
        transparent_crc(p_2143->g_2042[i].f3, "p_2143->g_2042[i].f3", print_hash_value);
        transparent_crc(p_2143->g_2042[i].f4, "p_2143->g_2042[i].f4", print_hash_value);
        transparent_crc(p_2143->g_2042[i].f5, "p_2143->g_2042[i].f5", print_hash_value);

    }
    transparent_crc(p_2143->g_2043.f0, "p_2143->g_2043.f0", print_hash_value);
    transparent_crc(p_2143->g_2043.f1, "p_2143->g_2043.f1", print_hash_value);
    transparent_crc(p_2143->g_2043.f2, "p_2143->g_2043.f2", print_hash_value);
    transparent_crc(p_2143->g_2043.f3, "p_2143->g_2043.f3", print_hash_value);
    transparent_crc(p_2143->g_2043.f4, "p_2143->g_2043.f4", print_hash_value);
    transparent_crc(p_2143->g_2043.f5, "p_2143->g_2043.f5", print_hash_value);
    transparent_crc(p_2143->g_2056.f0, "p_2143->g_2056.f0", print_hash_value);
    transparent_crc(p_2143->g_2056.f1, "p_2143->g_2056.f1", print_hash_value);
    transparent_crc(p_2143->g_2056.f2, "p_2143->g_2056.f2", print_hash_value);
    transparent_crc(p_2143->g_2056.f3, "p_2143->g_2056.f3", print_hash_value);
    transparent_crc(p_2143->g_2056.f4, "p_2143->g_2056.f4", print_hash_value);
    transparent_crc(p_2143->g_2056.f5, "p_2143->g_2056.f5", print_hash_value);
    transparent_crc(p_2143->g_2141.f0, "p_2143->g_2141.f0", print_hash_value);
    transparent_crc(p_2143->g_2141.f1, "p_2143->g_2141.f1", print_hash_value);
    transparent_crc(p_2143->g_2141.f2, "p_2143->g_2141.f2", print_hash_value);
    transparent_crc(p_2143->g_2141.f3, "p_2143->g_2141.f3", print_hash_value);
    transparent_crc(p_2143->g_2141.f4, "p_2143->g_2141.f4", print_hash_value);
    transparent_crc(p_2143->g_2141.f5, "p_2143->g_2141.f5", print_hash_value);
    transparent_crc(p_2143->v_collective, "p_2143->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
