// ---fake_divergence -g 17,91,3 -l 17,7,1
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


// Seed: 52

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   volatile uint32_t  f1;
   uint16_t  f2;
   int64_t  f3;
};

union U1 {
   volatile int32_t  f0;
   volatile uint32_t  f1;
};

union U2 {
   volatile int8_t  f0;
   int32_t  f1;
   int32_t  f2;
   volatile uint32_t  f3;
   volatile int64_t  f4;
};

union U3 {
   uint16_t  f0;
   struct S0  f1;
};

struct S4 {
    int32_t g_3;
    int32_t *g_2;
    uint32_t g_36;
    volatile VECTOR(uint32_t, 8) g_42;
    uint32_t g_67;
    VECTOR(int8_t, 4) g_75;
    int32_t g_82;
    union U2 g_84;
    union U2 *g_86;
    int32_t g_87;
    int16_t g_93;
    volatile VECTOR(int16_t, 4) g_96;
    volatile VECTOR(int8_t, 16) g_101;
    int16_t g_117;
    union U2 g_121;
    union U2 *g_141;
    VECTOR(uint16_t, 2) g_143;
    VECTOR(int32_t, 16) g_168;
    VECTOR(int32_t, 2) g_174;
    union U3 g_235;
    volatile VECTOR(int8_t, 2) g_241;
    uint64_t g_259;
    volatile VECTOR(uint8_t, 2) g_261;
    VECTOR(uint8_t, 4) g_262;
    VECTOR(uint64_t, 8) g_273;
    int32_t g_297;
    VECTOR(uint32_t, 2) g_300;
    struct S0 g_304;
    uint32_t *g_326;
    uint32_t **g_325[3][1][8];
    VECTOR(uint8_t, 8) g_332;
    volatile VECTOR(uint8_t, 4) g_336;
    volatile struct S0 g_338;
    volatile union U3 g_360;
    volatile int32_t g_367;
    VECTOR(uint16_t, 2) g_370;
    VECTOR(int64_t, 4) g_376;
    volatile VECTOR(uint64_t, 2) g_401;
    union U1 g_451[8];
    union U3 *g_458;
    volatile struct S0 g_473;
    volatile struct S0 * volatile g_474[2][7];
    volatile struct S0 * volatile g_475[8][10];
    volatile struct S0 g_477;
    volatile VECTOR(uint8_t, 16) g_487;
    volatile struct S0 g_488;
    VECTOR(uint8_t, 4) g_498;
    struct S0 g_513;
    struct S0 * volatile g_515;
    VECTOR(uint8_t, 16) g_539;
    volatile union U3 g_606;
    union U2 **g_642;
    union U2 ***g_641;
    volatile struct S0 g_652[9][4];
    volatile int64_t g_666;
    int16_t g_722;
    volatile uint8_t g_726;
    int64_t * volatile g_732[4][6][8];
    int64_t * volatile *g_731;
    volatile union U1 g_739;
    volatile union U1 g_750;
    volatile union U2 g_756[9][8][3];
    int8_t *g_761;
    int8_t **g_760;
    volatile struct S0 g_775;
    VECTOR(int64_t, 16) g_776;
    volatile int16_t *g_796;
    volatile int16_t **g_795;
    union U2 g_812;
    VECTOR(int32_t, 4) g_813;
    volatile struct S0 g_824;
    volatile struct S0 g_825;
    int32_t ** volatile g_836;
    struct S0 g_837;
    VECTOR(uint16_t, 8) g_869;
    volatile VECTOR(int16_t, 2) g_874;
    VECTOR(int16_t, 4) g_880;
    VECTOR(uint16_t, 8) g_889;
    VECTOR(int16_t, 4) g_890;
    VECTOR(uint16_t, 8) g_891;
    union U2 g_896[3];
    int32_t ** volatile g_908;
    int16_t *g_916[10];
    union U2 **g_958;
    union U3 g_972[6][10][4];
    VECTOR(uint8_t, 4) g_978;
    volatile union U3 g_988;
    uint8_t g_991;
    VECTOR(int8_t, 16) g_1007;
    volatile union U2 ****g_1011;
    volatile union U2 ***** volatile g_1010[5][5];
    volatile VECTOR(uint64_t, 8) g_1017;
    volatile struct S0 g_1020[2];
    volatile struct S0 g_1039;
    union U3 g_1061;
    volatile VECTOR(int16_t, 8) g_1082;
    VECTOR(int16_t, 2) g_1083;
    union U1 g_1086;
    volatile VECTOR(uint32_t, 8) g_1108;
    VECTOR(uint64_t, 2) g_1111;
    VECTOR(uint64_t, 2) g_1112;
    union U1 g_1113;
    VECTOR(int64_t, 16) g_1124;
    int32_t g_1128;
    VECTOR(uint16_t, 16) g_1143;
    VECTOR(uint64_t, 16) g_1148;
    VECTOR(uint32_t, 16) g_1152;
    volatile VECTOR(int8_t, 4) g_1172;
    volatile struct S0 g_1199[9];
    uint32_t g_1207;
    int32_t ** volatile g_1210[7];
    int32_t ** volatile g_1220;
    int32_t *g_1221;
    VECTOR(int64_t, 8) g_1233;
    uint32_t **g_1244;
    volatile struct S0 g_1273;
    uint64_t g_1275;
    uint64_t g_1279;
    union U3 g_1280;
    int32_t ** volatile g_1296;
    int8_t g_1329;
    int32_t * volatile g_1340;
    int32_t * volatile g_1341;
    int32_t * volatile g_1343;
    int32_t * volatile g_1344;
    volatile struct S0 g_1346;
    volatile struct S0 * volatile g_1347;
    int32_t ** volatile g_1348;
    int32_t ** volatile g_1349[5][6][8];
    int32_t ** volatile g_1350[7][9][2];
    int32_t ** volatile g_1352[2][7];
    int32_t ** volatile g_1353[4];
    int32_t ** volatile g_1354;
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
uint16_t  func_1(struct S4 * p_1356);
int32_t * func_5(int8_t  p_6, uint64_t  p_7, int64_t  p_8, int32_t * p_9, struct S4 * p_1356);
int8_t  func_10(uint32_t  p_11, struct S4 * p_1356);
int32_t * func_12(int32_t  p_13, int32_t  p_14, struct S4 * p_1356);
int8_t  func_16(int32_t * p_17, int64_t  p_18, struct S4 * p_1356);
int64_t  func_20(uint32_t  p_21, struct S4 * p_1356);
int32_t * func_22(int32_t ** p_23, int32_t  p_24, int32_t  p_25, int64_t  p_26, int8_t  p_27, struct S4 * p_1356);
int32_t * func_37(int64_t  p_38, int32_t * p_39, struct S4 * p_1356);
uint16_t  func_45(int32_t * p_46, uint32_t * p_47, uint64_t  p_48, uint32_t * p_49, uint64_t  p_50, struct S4 * p_1356);
uint8_t  func_56(int32_t  p_57, struct S4 * p_1356);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1356->g_2 p_1356->g_3 p_1356->g_36 p_1356->g_42 p_1356->g_75 p_1356->g_82 p_1356->g_87 p_1356->g_93 p_1356->g_96 p_1356->g_101 p_1356->g_117 p_1356->g_86 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_141 p_1356->g_168 p_1356->g_143 p_1356->g_174 p_1356->g_84.f0 p_1356->g_235 p_1356->g_241 p_1356->g_261 p_1356->g_262 p_1356->g_273 p_1356->g_67 p_1356->g_300 p_1356->g_304 p_1356->g_297 p_1356->g_332 p_1356->g_336 p_1356->g_338 p_1356->g_326 p_1356->g_360 p_1356->g_235.f1.f0 p_1356->g_367 p_1356->g_235.f0 p_1356->g_473 p_1356->g_487 p_1356->g_488 p_1356->g_376 p_1356->g_498 p_1356->g_513 p_1356->g_515 p_1356->g_259 p_1356->g_641 p_1356->g_642 p_1356->g_908 p_1356->g_722 p_1356->g_836 p_1356->g_972 p_1356->g_978 p_1356->g_84.f1 p_1356->g_988 p_1356->g_991 p_1356->g_1007 p_1356->g_1010 p_1356->g_869 p_1356->g_1017 p_1356->g_1020 p_1356->g_1039 p_1356->g_874 p_1356->g_458 p_1356->g_1082 p_1356->g_1083 p_1356->g_775.f2 p_1356->g_1086 p_1356->g_370 p_1356->g_1108 p_1356->g_1111 p_1356->g_1112 p_1356->g_1113 p_1356->g_1124 p_1356->g_795 p_1356->g_796 p_1356->g_1128 p_1356->g_539 p_1356->g_812.f2 p_1356->g_916 p_1356->g_1220 p_1356->g_1221 p_1356->g_1233 p_1356->g_1273 p_1356->g_1275 p_1356->g_1280 p_1356->g_1296 p_1356->g_972.f0 p_1356->g_1061.f0 p_1356->g_837.f0 p_1356->g_1148 p_1356->g_890 p_1356->g_1340 p_1356->g_1346 p_1356->g_1347 p_1356->g_1354
 * writes: p_1356->g_2 p_1356->g_3 p_1356->g_36 p_1356->g_67 p_1356->g_82 p_1356->g_86 p_1356->g_87 p_1356->g_93 p_1356->g_117 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_143 p_1356->g_259 p_1356->g_273 p_1356->g_297 p_1356->g_262 p_1356->g_325 p_1356->g_174 p_1356->g_304.f2 p_1356->g_235.f1.f0 p_1356->g_304.f3 p_1356->g_458 p_1356->g_235.f0 p_1356->g_477 p_1356->g_141 p_1356->g_168 p_1356->g_513 p_1356->g_642 p_1356->g_958 p_1356->g_889 p_1356->g_84.f1 p_1356->g_376 p_1356->g_75 p_1356->g_1128 p_1356->g_812.f2 p_1356->g_1007 p_1356->g_837.f2 p_1356->g_1221 p_1356->g_1244 p_1356->g_1275 p_1356->g_1279 p_1356->g_1061.f0 p_1356->g_776 p_1356->g_1148 p_1356->g_988.f1
 */
uint16_t  func_1(struct S4 * p_1356)
{ /* block id: 4 */
    int32_t **l_4 = &p_1356->g_2;
    uint16_t *l_1299 = &p_1356->g_1061.f0;
    int32_t l_1304 = 7L;
    VECTOR(uint16_t, 2) l_1307 = (VECTOR(uint16_t, 2))(0x2060L, 3UL);
    int64_t *l_1320 = (void*)0;
    int64_t *l_1321 = (void*)0;
    int64_t *l_1322 = (void*)0;
    int64_t *l_1323 = (void*)0;
    int64_t *l_1324 = (void*)0;
    int64_t *l_1325 = (void*)0;
    union U2 **l_1326 = (void*)0;
    uint8_t l_1327[6] = {0x77L,0x77L,0x77L,0x77L,0x77L,0x77L};
    int8_t *l_1328[4][5] = {{&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329},{&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329},{&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329},{&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329,&p_1356->g_1329}};
    int32_t l_1330[4];
    uint64_t *l_1331 = (void*)0;
    uint64_t *l_1332 = (void*)0;
    uint64_t *l_1333 = (void*)0;
    uint64_t *l_1334 = (void*)0;
    uint64_t *l_1335 = (void*)0;
    uint64_t *l_1336 = (void*)0;
    uint64_t *l_1337[7][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t **l_1351 = (void*)0;
    int32_t l_1355 = 0x261D4119L;
    int i, j;
    for (i = 0; i < 4; i++)
        l_1330[i] = 1L;
    (*l_4) = p_1356->g_2;
    (*p_1356->g_1354) = ((*l_4) = func_5(func_10(p_1356->g_3, p_1356), (((VECTOR(int32_t, 4))(0x24377267L, ((safe_mul_func_uint16_t_u_u(((*l_1299) = p_1356->g_539.s0), (p_1356->g_332.s3 ^ p_1356->g_972[3][9][1].f0))) , ((~((p_1356->g_1148.s3 = ((safe_lshift_func_int16_t_s_u((safe_rshift_func_int8_t_s_s(l_1304, (l_1330[3] ^= ((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_1307.xyyx)).x, ((((safe_rshift_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(p_1356->g_1061.f0, (safe_add_func_int64_t_s_s((p_1356->g_776.s0 = (~((safe_sub_func_int32_t_s_s((safe_sub_func_int16_t_s_s((p_1356->g_837.f0 , (safe_rshift_func_uint8_t_u_u(0x2CL, 4))), 0x5BB9L)), 1UL)) , 0x5588CB35B2DFF541L))), 3UL)))), p_1356->g_370.y)) , l_1326) == (void*)0) & l_1327[2]))) == l_1307.x)))), 14)) , p_1356->g_1148.sf)) & 0x32509B59B1E0FC07L)) , p_1356->g_890.y)), 0L, 1L)).w & p_1356->g_370.y), p_1356->g_1112.y, p_1356->g_326, p_1356));
    return l_1355;
}


/* ------------------------------------------ */
/* 
 * reads : p_1356->g_67 p_1356->g_1340 p_1356->g_82 p_1356->g_1346 p_1356->g_1347
 * writes: p_1356->g_82 p_1356->g_988.f1
 */
int32_t * func_5(int8_t  p_6, uint64_t  p_7, int64_t  p_8, int32_t * p_9, struct S4 * p_1356)
{ /* block id: 483 */
    union U1 *l_1338 = &p_1356->g_1113;
    union U1 **l_1339 = &l_1338;
    int32_t *l_1342 = (void*)0;
    int32_t l_1345 = 2L;
    (*l_1339) = l_1338;
    (*p_1356->g_1340) ^= (*p_9);
    l_1345 &= (*p_9);
    (*p_1356->g_1347) = p_1356->g_1346;
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1356->g_3 p_1356->g_2 p_1356->g_36 p_1356->g_42 p_1356->g_75 p_1356->g_82 p_1356->g_87 p_1356->g_93 p_1356->g_96 p_1356->g_101 p_1356->g_117 p_1356->g_86 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_141 p_1356->g_168 p_1356->g_143 p_1356->g_174 p_1356->g_84.f0 p_1356->g_235 p_1356->g_241 p_1356->g_261 p_1356->g_262 p_1356->g_273 p_1356->g_67 p_1356->g_300 p_1356->g_304 p_1356->g_297 p_1356->g_332 p_1356->g_336 p_1356->g_338 p_1356->g_326 p_1356->g_360 p_1356->g_235.f1.f0 p_1356->g_367 p_1356->g_235.f0 p_1356->g_473 p_1356->g_487 p_1356->g_488 p_1356->g_376 p_1356->g_498 p_1356->g_513 p_1356->g_515 p_1356->g_259 p_1356->g_641 p_1356->g_642 p_1356->g_908 p_1356->g_722 p_1356->g_836 p_1356->g_972 p_1356->g_978 p_1356->g_84.f1 p_1356->g_988 p_1356->g_991 p_1356->g_1007 p_1356->g_1010 p_1356->g_869 p_1356->g_1017 p_1356->g_1020 p_1356->g_1039 p_1356->g_874 p_1356->g_458 p_1356->g_1082 p_1356->g_1083 p_1356->g_775.f2 p_1356->g_1086 p_1356->g_370 p_1356->g_1108 p_1356->g_1111 p_1356->g_1112 p_1356->g_1113 p_1356->g_1124 p_1356->g_795 p_1356->g_796 p_1356->g_1128 p_1356->g_539 p_1356->g_812.f2 p_1356->g_916 p_1356->g_1220 p_1356->g_1221 p_1356->g_1233 p_1356->g_1273 p_1356->g_1275 p_1356->g_1280 p_1356->g_1296
 * writes: p_1356->g_3 p_1356->g_36 p_1356->g_67 p_1356->g_82 p_1356->g_86 p_1356->g_87 p_1356->g_93 p_1356->g_117 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_143 p_1356->g_2 p_1356->g_259 p_1356->g_273 p_1356->g_297 p_1356->g_262 p_1356->g_325 p_1356->g_174 p_1356->g_304.f2 p_1356->g_235.f1.f0 p_1356->g_304.f3 p_1356->g_458 p_1356->g_235.f0 p_1356->g_477 p_1356->g_141 p_1356->g_168 p_1356->g_513 p_1356->g_642 p_1356->g_958 p_1356->g_889 p_1356->g_84.f1 p_1356->g_376 p_1356->g_75 p_1356->g_1128 p_1356->g_812.f2 p_1356->g_1007 p_1356->g_837.f2 p_1356->g_1221 p_1356->g_1244 p_1356->g_1275 p_1356->g_1279
 */
int8_t  func_10(uint32_t  p_11, struct S4 * p_1356)
{ /* block id: 6 */
    VECTOR(int8_t, 8) l_15 = (VECTOR(int8_t, 8))(0x5FL, (VECTOR(int8_t, 4))(0x5FL, (VECTOR(int8_t, 2))(0x5FL, 0x5BL), 0x5BL), 0x5BL, 0x5FL, 0x5BL);
    int32_t *l_19 = &p_1356->g_3;
    uint64_t *l_520 = &p_1356->g_259;
    uint64_t l_522 = 0xAA28D954F930F3F6L;
    int8_t *l_523 = (void*)0;
    int8_t *l_524 = (void*)0;
    int8_t *l_525 = (void*)0;
    int8_t *l_526 = (void*)0;
    int8_t *l_527 = (void*)0;
    int8_t *l_528 = (void*)0;
    int8_t *l_529[3][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_530[1][4][7] = {{{0x6A7599BBL,0x490720D2L,1L,6L,0x490720D2L,6L,1L},{0x6A7599BBL,0x490720D2L,1L,6L,0x490720D2L,6L,1L},{0x6A7599BBL,0x490720D2L,1L,6L,0x490720D2L,6L,1L},{0x6A7599BBL,0x490720D2L,1L,6L,0x490720D2L,6L,1L}}};
    int i, j, k;
    (*p_1356->g_1296) = func_12((((l_530[0][1][1] = ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(l_15.s6721)).zyxyzwyw, ((VECTOR(int8_t, 16))(0L, ((((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(func_16(l_19, func_20(p_11, p_1356), p_1356), 9L, ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))((1L == (((*l_19) = (safe_sub_func_uint64_t_u_u(((*l_520) |= (FAKE_DIVERGE(p_1356->group_2_offset, get_group_id(2), 10) ^ (0UL & 18446744073709551609UL))), (!p_11)))) < (((safe_unary_minus_func_int64_t_s(p_1356->g_143.x)) < 6UL) != 0xF36CL))), 0x74L, ((VECTOR(int8_t, 2))(1L)), (-1L), ((VECTOR(int8_t, 4))(0x59L)), (*l_19), (-8L), p_11, ((VECTOR(int8_t, 2))(0x18L)), 0x2CL, (-10L))).se5ba)))).xxyyxxxw, ((VECTOR(int8_t, 8))(0x13L))))), 0x48L, 0x54L, 0x01L, l_522, 1L, 0x4CL)).hi, ((VECTOR(int8_t, 8))(0L))))).s2 || p_11) < FAKE_DIVERGE(p_1356->local_2_offset, get_local_id(2), 10)), p_11, p_11, ((VECTOR(int8_t, 8))((-1L))), 1L, (-5L), 0x78L, (-1L))).even))).s5) == (-2L)) == l_522), p_1356->g_498.z, p_1356);
    (*l_19) &= p_11;
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_1356->g_87 p_1356->g_259 p_1356->g_488.f2 p_1356->g_641 p_1356->g_642 p_1356->g_326 p_1356->g_67 p_1356->g_908 p_1356->g_2 p_1356->g_82 p_1356->g_117 p_1356->g_722 p_1356->g_836 p_1356->g_972 p_1356->g_978 p_1356->g_84.f1 p_1356->g_988 p_1356->g_991 p_1356->g_1007 p_1356->g_1010 p_1356->g_869 p_1356->g_96 p_1356->g_93 p_1356->g_3 p_1356->g_235 p_1356->g_168 p_1356->g_101 p_1356->g_273 p_1356->g_174 p_1356->g_304 p_1356->g_360 p_1356->g_367 p_1356->g_473 p_1356->g_376 p_1356->g_36 p_1356->g_513.f0 p_1356->g_1017 p_1356->g_1020 p_1356->g_498 p_1356->g_1039 p_1356->g_874 p_1356->g_143 p_1356->g_332 p_1356->g_75 p_1356->g_458 p_1356->g_42 p_1356->g_1082 p_1356->g_1083 p_1356->g_775.f2 p_1356->g_1086 p_1356->g_370 p_1356->g_1108 p_1356->g_1111 p_1356->g_1112 p_1356->g_1113 p_1356->g_297 p_1356->g_513 p_1356->g_515 p_1356->g_1124 p_1356->g_795 p_1356->g_796 p_1356->g_1128 p_1356->g_539 p_1356->g_812.f2 p_1356->g_916 p_1356->g_1220 p_1356->g_1221 p_1356->g_1233 p_1356->g_121.f1 p_1356->g_1273 p_1356->g_1275 p_1356->g_1280
 * writes: p_1356->g_87 p_1356->g_174 p_1356->g_259 p_1356->g_642 p_1356->g_958 p_1356->g_889 p_1356->g_117 p_1356->g_84.f1 p_1356->g_82 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_2 p_1356->g_3 p_1356->g_93 p_1356->g_67 p_1356->g_297 p_1356->g_262 p_1356->g_325 p_1356->g_304.f2 p_1356->g_235.f1.f0 p_1356->g_304.f3 p_1356->g_458 p_1356->g_477 p_1356->g_168 p_1356->g_376 p_1356->g_75 p_1356->g_513 p_1356->g_1128 p_1356->g_812.f2 p_1356->g_1007 p_1356->g_837.f2 p_1356->g_1221 p_1356->g_1244 p_1356->g_1275 p_1356->g_1279
 */
int32_t * func_12(int32_t  p_13, int32_t  p_14, struct S4 * p_1356)
{ /* block id: 178 */
    VECTOR(uint32_t, 8) l_546 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x8F0CBADCL), 0x8F0CBADCL), 0x8F0CBADCL, 1UL, 0x8F0CBADCL);
    int32_t l_560 = 0x40043BFAL;
    int32_t l_561 = 0L;
    int32_t l_562 = 0x29D9239FL;
    int32_t l_563 = 0x2C5FEFE1L;
    int32_t l_564 = 0x4D49524AL;
    int32_t l_565 = 0x41D3F9DFL;
    int32_t l_566 = 0x5028124FL;
    int32_t l_567[6][3][2] = {{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}}};
    uint32_t l_568 = 0UL;
    VECTOR(int8_t, 16) l_644 = (VECTOR(int8_t, 16))(0x47L, (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, 0x3FL), 0x3FL), 0x3FL, 0x47L, 0x3FL, (VECTOR(int8_t, 2))(0x47L, 0x3FL), (VECTOR(int8_t, 2))(0x47L, 0x3FL), 0x47L, 0x3FL, 0x47L, 0x3FL);
    VECTOR(int8_t, 2) l_646 = (VECTOR(int8_t, 2))(1L, 9L);
    int8_t l_653 = 0x22L;
    int64_t l_677 = 2L;
    union U2 ****l_718 = &p_1356->g_641;
    int64_t l_723[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
    int32_t *l_736 = &p_1356->g_84.f1;
    uint16_t *l_802 = (void*)0;
    int32_t l_803 = 9L;
    VECTOR(int32_t, 4) l_806 = (VECTOR(int32_t, 4))(0x082208F5L, (VECTOR(int32_t, 2))(0x082208F5L, (-5L)), (-5L));
    uint64_t l_807 = 0x606D0C6A1C7BC142L;
    VECTOR(int32_t, 8) l_953 = (VECTOR(int32_t, 8))(0x2E108485L, (VECTOR(int32_t, 4))(0x2E108485L, (VECTOR(int32_t, 2))(0x2E108485L, 0x1533CB11L), 0x1533CB11L), 0x1533CB11L, 0x2E108485L, 0x1533CB11L);
    VECTOR(int32_t, 4) l_959 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x387B92D1L), 0x387B92D1L);
    uint32_t *l_963[8][6][5] = {{{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36}},{{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36}},{{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36}},{{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36}},{{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36}},{{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36}},{{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36}},{{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36},{&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36,&p_1356->g_36}}};
    VECTOR(uint64_t, 2) l_983 = (VECTOR(uint64_t, 2))(0x148853ED62B4B3BCL, 0xFFFB976D3B3BF54CL);
    VECTOR(uint32_t, 4) l_984 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x3F1139F5L), 0x3F1139F5L);
    int64_t l_987 = 0x46582A10EC040EF4L;
    VECTOR(uint16_t, 16) l_1003 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), (VECTOR(uint16_t, 2))(65535UL, 1UL), 65535UL, 1UL, 65535UL, 1UL);
    int8_t l_1008 = 0x5EL;
    int32_t l_1012 = 0x5140489AL;
    int32_t **l_1023 = (void*)0;
    uint32_t ***l_1084 = &p_1356->g_325[0][0][6];
    VECTOR(uint32_t, 8) l_1104 = (VECTOR(uint32_t, 8))(0x24F4A0B0L, (VECTOR(uint32_t, 4))(0x24F4A0B0L, (VECTOR(uint32_t, 2))(0x24F4A0B0L, 0x16D41A6FL), 0x16D41A6FL), 0x16D41A6FL, 0x24F4A0B0L, 0x16D41A6FL);
    int16_t l_1120 = 0x6E8AL;
    int64_t ***l_1122[3];
    int8_t l_1129 = (-9L);
    VECTOR(int32_t, 4) l_1139 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x2873CB7FL), 0x2873CB7FL);
    VECTOR(int16_t, 4) l_1140 = (VECTOR(int16_t, 4))(0x1D2CL, (VECTOR(int16_t, 2))(0x1D2CL, (-4L)), (-4L));
    VECTOR(int16_t, 4) l_1150 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x62E8L), 0x62E8L);
    VECTOR(uint32_t, 16) l_1153 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x154E49F9L), 0x154E49F9L), 0x154E49F9L, 1UL, 0x154E49F9L, (VECTOR(uint32_t, 2))(1UL, 0x154E49F9L), (VECTOR(uint32_t, 2))(1UL, 0x154E49F9L), 1UL, 0x154E49F9L, 1UL, 0x154E49F9L);
    union U2 *l_1158 = &p_1356->g_896[2];
    VECTOR(uint32_t, 16) l_1197 = (VECTOR(uint32_t, 16))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 0xAB89CC7CL), 0xAB89CC7CL), 0xAB89CC7CL, 4294967292UL, 0xAB89CC7CL, (VECTOR(uint32_t, 2))(4294967292UL, 0xAB89CC7CL), (VECTOR(uint32_t, 2))(4294967292UL, 0xAB89CC7CL), 4294967292UL, 0xAB89CC7CL, 4294967292UL, 0xAB89CC7CL);
    int32_t l_1204 = 0x679BD9E2L;
    uint64_t l_1208 = 0xFDEEB786DB93B551L;
    uint32_t ***l_1284 = &p_1356->g_1244;
    int32_t l_1288 = (-10L);
    int32_t *l_1289 = &l_563;
    int32_t *l_1290[6][6][3] = {{{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0}},{{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0}},{{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0}},{{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0}},{{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0}},{{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0},{&l_563,&l_1012,(void*)0}}};
    int16_t l_1291[3][4] = {{0x0A4CL,(-3L),0x512AL,(-3L)},{0x0A4CL,(-3L),0x512AL,(-3L)},{0x0A4CL,(-3L),0x512AL,(-3L)}};
    uint32_t l_1292 = 5UL;
    int32_t *l_1295 = (void*)0;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1122[i] = (void*)0;
    for (p_1356->g_87 = 0; (p_1356->g_87 < 26); p_1356->g_87 = safe_add_func_uint8_t_u_u(p_1356->g_87, 1))
    { /* block id: 181 */
        union U1 *l_533[5] = {&p_1356->g_451[0],&p_1356->g_451[0],&p_1356->g_451[0],&p_1356->g_451[0],&p_1356->g_451[0]};
        int32_t l_536 = 0x639A0720L;
        int16_t *l_553 = (void*)0;
        int16_t *l_554 = &p_1356->g_93;
        uint16_t *l_555 = (void*)0;
        uint16_t *l_556[1];
        int32_t *l_557 = (void*)0;
        int32_t *l_558 = &p_1356->g_121.f1;
        int32_t *l_559[10][6][4] = {{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}},{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}},{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}},{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}},{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}},{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}},{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}},{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}},{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}},{{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0},{&p_1356->g_3,&p_1356->g_3,(void*)0,(void*)0}}};
        VECTOR(int32_t, 2) l_598 = (VECTOR(int32_t, 2))((-1L), 0x0D22D74EL);
        union U2 ***l_643[10] = {&p_1356->g_642,&p_1356->g_642,&p_1356->g_642,&p_1356->g_642,&p_1356->g_642,&p_1356->g_642,&p_1356->g_642,&p_1356->g_642,&p_1356->g_642,&p_1356->g_642};
        union U3 *l_762 = &p_1356->g_235;
        uint8_t l_847 = 0x3AL;
        int64_t l_852 = 0x714BB8B8C0696706L;
        VECTOR(int32_t, 16) l_887 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
        int32_t l_902 = 0x393E7E8BL;
        int32_t l_920[7] = {(-9L),0x03E4EB9EL,(-9L),(-9L),0x03E4EB9EL,(-9L),(-9L)};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_556[i] = &p_1356->g_304.f2;
        p_1356->g_174.x = ((l_533[0] != (void*)0) ^ ((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 16))(0x6B259C74228FE77CL, ((VECTOR(uint64_t, 8))(p_1356->g_304.f2, (safe_add_func_int32_t_s_s(l_536, (((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(0UL, 18446744073709551615UL, 0xEED8716EA4A11DB3L, 18446744073709551615UL)).even)).xxxyxxxyyxxxxyxx, ((VECTOR(uint64_t, 8))((((*p_1356->g_2) = ((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(p_1356->g_539.s2b31)).z, ((p_1356->g_174.x & ((~(safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_u((((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_546.s60)).xxyxxxxy)).s32)).even, p_14)) , (safe_sub_func_int8_t_s_s(l_536, (safe_lshift_func_uint16_t_u_s((p_1356->g_513.f2 ^= ((VECTOR(uint16_t, 4))(0UL, (((!(safe_lshift_func_int16_t_s_s(p_1356->g_513.f0, 4))) || ((*l_554) ^= l_546.s2)) > p_13), 0x81B6L, 0x82EFL)).w), p_1356->g_539.s0))))) && l_536), 5)) != 0UL), 1L))) != p_14)) , p_1356->g_87))) == l_546.s0)) , l_546.s4), 0x1568BA168CD0E014L, 0x9EEABE5FC535EFB4L, p_13, 18446744073709551612UL, ((VECTOR(uint64_t, 2))(3UL)), 1UL)).s3544776526761033))).s3 <= 0xC2BCC8F8481BC025L))), ((VECTOR(uint64_t, 4))(0x458EB24EF138B0DCL)), 18446744073709551614UL, 18446744073709551613UL)).s3, 0UL, ((VECTOR(uint64_t, 8))(18446744073709551607UL)), ((VECTOR(uint64_t, 2))(0xC54C55911DC4ACBDL)), 9UL, 0x2AAA9030952E0F3CL, 0UL)), ((VECTOR(uint64_t, 16))(0x4FD05895A595F5A2L))))).sd);
        ++l_568;
    }
    for (p_1356->g_259 = 0; (p_1356->g_259 > 47); p_1356->g_259 = safe_add_func_uint32_t_u_u(p_1356->g_259, 5))
    { /* block id: 355 */
        int32_t *l_929 = &p_1356->g_84.f1;
        int32_t *l_930 = &l_560;
        int32_t *l_931 = &p_1356->g_896[2].f1;
        int32_t *l_932 = &l_567[5][1][0];
        int32_t *l_933 = &l_566;
        int32_t *l_934 = &l_560;
        int32_t *l_935 = &l_561;
        int32_t *l_936 = &l_565;
        int32_t *l_937 = &l_564;
        int32_t *l_938 = &l_563;
        int32_t *l_939 = (void*)0;
        int32_t *l_940 = &l_563;
        int32_t *l_941 = &l_567[0][1][0];
        int32_t l_942 = 0L;
        int32_t *l_943[10] = {(void*)0,&l_567[0][1][0],(void*)0,(void*)0,&l_567[0][1][0],(void*)0,(void*)0,&l_567[0][1][0],(void*)0,(void*)0};
        uint64_t l_944 = 6UL;
        int i;
        ++l_944;
    }
    if ((2UL <= (p_13 >= (safe_add_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(p_13, p_1356->g_488.f2)), (p_1356->g_889.s2 = ((((VECTOR(int32_t, 16))(l_953.s7055300221407550)).s9 , p_14) < (((**l_718) = (*p_1356->g_641)) != (p_1356->g_958 = (((safe_unary_minus_func_uint32_t_u((*p_1356->g_326))) && (safe_unary_minus_func_int64_t_s(((!((p_13 || (safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1356->group_2_offset, get_group_id(2), 10), FAKE_DIVERGE(p_1356->local_1_offset, get_local_id(1), 10)))) ^ (0x5F78L != p_13))) ^ 9L)))) , &p_1356->g_86))))))))))
    { /* block id: 361 */
        int32_t *l_962[10][6][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        uint32_t *l_965 = (void*)0;
        uint32_t **l_964 = &l_965;
        int16_t *l_968 = &p_1356->g_117;
        VECTOR(int16_t, 16) l_994 = (VECTOR(int16_t, 16))(0x5770L, (VECTOR(int16_t, 4))(0x5770L, (VECTOR(int16_t, 2))(0x5770L, 0x7832L), 0x7832L), 0x7832L, 0x5770L, 0x7832L, (VECTOR(int16_t, 2))(0x5770L, 0x7832L), (VECTOR(int16_t, 2))(0x5770L, 0x7832L), 0x5770L, 0x7832L, 0x5770L, 0x7832L);
        VECTOR(uint16_t, 16) l_1006 = (VECTOR(uint16_t, 16))(0x6376L, (VECTOR(uint16_t, 4))(0x6376L, (VECTOR(uint16_t, 2))(0x6376L, 0xE219L), 0xE219L), 0xE219L, 0x6376L, 0xE219L, (VECTOR(uint16_t, 2))(0x6376L, 0xE219L), (VECTOR(uint16_t, 2))(0x6376L, 0xE219L), 0x6376L, 0xE219L, 0x6376L, 0xE219L);
        uint32_t l_1077 = 0x27DB2575L;
        uint32_t **l_1087 = (void*)0;
        int8_t l_1095 = (-2L);
        uint8_t l_1096 = 0xB8L;
        uint16_t l_1100 = 0UL;
        VECTOR(uint64_t, 16) l_1110 = (VECTOR(uint64_t, 16))(0xF70B5E44BEEB9FF7L, (VECTOR(uint64_t, 4))(0xF70B5E44BEEB9FF7L, (VECTOR(uint64_t, 2))(0xF70B5E44BEEB9FF7L, 1UL), 1UL), 1UL, 0xF70B5E44BEEB9FF7L, 1UL, (VECTOR(uint64_t, 2))(0xF70B5E44BEEB9FF7L, 1UL), (VECTOR(uint64_t, 2))(0xF70B5E44BEEB9FF7L, 1UL), 0xF70B5E44BEEB9FF7L, 1UL, 0xF70B5E44BEEB9FF7L, 1UL);
        int64_t l_1114[4][1];
        union U2 ****l_1116 = (void*)0;
        VECTOR(uint32_t, 4) l_1151 = (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0xFE0A4E87L), 0xFE0A4E87L);
        int32_t *l_1209[10][1] = {{&l_561},{&l_561},{&l_561},{&l_561},{&l_561},{&l_561},{&l_561},{&l_561},{&l_561},{&l_561}};
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 1; j++)
                l_1114[i][j] = 0L;
        }
        if (((VECTOR(int32_t, 16))((**p_1356->g_908), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_959.wwyw)).zzzzzwzw)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((((safe_mul_func_uint16_t_u_u((0x401019B0L == ((((*l_964) = (l_963[7][5][4] = l_962[5][1][2])) == l_736) || 5UL)), ((*l_968) &= ((0x4CL || (safe_add_func_int64_t_s_s(l_546.s6, l_567[0][1][0]))) && p_13)))) , p_1356->g_722) , p_14) & p_13), 0x06A601DCL, 1L, (*p_1356->g_2), 0x4D3EA4F5L, (**p_1356->g_836), 0x6D1493EDL, 0x50E07C96L, (-3L), (-3L), (**p_1356->g_836), (-1L), 0x08C31EE5L, (-4L), 0x3444E343L, 0x1717612BL)).s16)), ((VECTOR(int32_t, 2))((-2L))), 0x346D7147L, (-1L), 0x1C61ACE5L)).sb)
        { /* block id: 365 */
            uint64_t l_969 = 18446744073709551615UL;
            VECTOR(uint8_t, 2) l_977 = (VECTOR(uint8_t, 2))(0xBCL, 250UL);
            uint64_t *l_989[4];
            int32_t l_990 = 0x3A8FFA50L;
            union U3 *l_1060 = &p_1356->g_1061;
            int32_t l_1063 = 1L;
            int32_t *l_1085 = &p_1356->g_87;
            uint8_t l_1090 = 255UL;
            int i;
            for (i = 0; i < 4; i++)
                l_989[i] = (void*)0;
            --l_969;
            if (((*p_1356->g_326) || (p_1356->g_972[3][9][1] , (safe_sub_func_int64_t_s_s(l_969, (((-5L) ^ (safe_mul_func_uint16_t_u_u(65532UL, (((VECTOR(uint8_t, 8))(0xA0L, 255UL, ((VECTOR(uint8_t, 2))(l_977.yy)), ((VECTOR(uint8_t, 4))(p_1356->g_978.zwyw)))).s2 && (((*l_736) = 0L) , ((safe_add_func_uint64_t_u_u((l_990 = (safe_mul_func_uint8_t_u_u((p_13 | ((((~(((l_987 = (p_13 , ((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 16))(l_983.yxxyyyxxyxyyyxyy)).odd, ((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL)).yyyxyyyxxyyyxyxx, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 16))(l_984.zzwwyywyywyxxyxx)).sb9, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 4))(0x0D24A739L, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))((safe_mul_func_int16_t_s_s(p_13, p_13)), 0x065B5DB9L, 0UL, 4294967295UL)).odd)), 7UL))))).yxxxyzxy)).odd, ((VECTOR(uint32_t, 4))(4UL))))).yzwyxxwy)).s26))).xyxxyxyy)))).even)), 0x1A15EF8A04D8ACCBL, 18446744073709551611UL, (*l_736), 0x4B2089C3436F49E1L, ((VECTOR(uint64_t, 2))(18446744073709551613UL)), (*l_736), 0xA3FBCC3F5FFBE8CDL, ((VECTOR(uint64_t, 2))(1UL)), 0x4D878CA03D0B56E1L, 18446744073709551609UL))))).even))).s0)) , p_1356->g_988) , (-1L))) > 0x15B2L) && 0UL) || 0xFE8AL)), l_969))), 0x3D312183CADBBF0EL)) | (*p_1356->g_2))))))) | p_1356->g_991))))))
            { /* block id: 370 */
                uint16_t *l_1004[8][8] = {{&p_1356->g_304.f2,&p_1356->g_837.f2,&p_1356->g_837.f2,&p_1356->g_304.f2,&p_1356->g_235.f0,&p_1356->g_304.f2,&p_1356->g_304.f2,(void*)0},{&p_1356->g_304.f2,&p_1356->g_837.f2,&p_1356->g_837.f2,&p_1356->g_304.f2,&p_1356->g_235.f0,&p_1356->g_304.f2,&p_1356->g_304.f2,(void*)0},{&p_1356->g_304.f2,&p_1356->g_837.f2,&p_1356->g_837.f2,&p_1356->g_304.f2,&p_1356->g_235.f0,&p_1356->g_304.f2,&p_1356->g_304.f2,(void*)0},{&p_1356->g_304.f2,&p_1356->g_837.f2,&p_1356->g_837.f2,&p_1356->g_304.f2,&p_1356->g_235.f0,&p_1356->g_304.f2,&p_1356->g_304.f2,(void*)0},{&p_1356->g_304.f2,&p_1356->g_837.f2,&p_1356->g_837.f2,&p_1356->g_304.f2,&p_1356->g_235.f0,&p_1356->g_304.f2,&p_1356->g_304.f2,(void*)0},{&p_1356->g_304.f2,&p_1356->g_837.f2,&p_1356->g_837.f2,&p_1356->g_304.f2,&p_1356->g_235.f0,&p_1356->g_304.f2,&p_1356->g_304.f2,(void*)0},{&p_1356->g_304.f2,&p_1356->g_837.f2,&p_1356->g_837.f2,&p_1356->g_304.f2,&p_1356->g_235.f0,&p_1356->g_304.f2,&p_1356->g_304.f2,(void*)0},{&p_1356->g_304.f2,&p_1356->g_837.f2,&p_1356->g_837.f2,&p_1356->g_304.f2,&p_1356->g_235.f0,&p_1356->g_304.f2,&p_1356->g_304.f2,(void*)0}};
                int32_t l_1005 = 0x65A37052L;
                union U2 *****l_1009 = (void*)0;
                int32_t **l_1013 = (void*)0;
                int32_t **l_1014 = &l_962[2][0][0];
                int i, j;
                (*l_1014) = func_37((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_994.sb1)))), 0L, 0x70DCL)).y, (safe_rshift_func_int8_t_s_s((((&l_990 != (((safe_sub_func_int64_t_s_s((((safe_sub_func_int8_t_s_s(((safe_mod_func_int8_t_s_s((((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 16))(l_1003.sa630ceb76eae518c)).s1946, ((VECTOR(uint16_t, 8))(65535UL, 0x525DL, (p_14 | (l_1005 = 0x6E14L)), ((VECTOR(uint16_t, 2))(l_1006.sea)), 0x4F97L, 65531UL, 65535UL)).odd, ((VECTOR(uint16_t, 4))((((~(((l_969 & (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(p_1356->g_1007.sf4e27aa78f9ff881)).sbfcd)).z >= (l_1008 , ((l_1009 != p_1356->g_1010[1][2]) < (*p_1356->g_2))))) > 0x5924E917L) != 1UL)) || 0xF665L) && (*p_1356->g_326)), ((VECTOR(uint16_t, 2))(3UL)), 1UL))))).w <= FAKE_DIVERGE(p_1356->local_1_offset, get_local_id(1), 10)), p_1356->g_869.s7)) & p_13), p_13)) , FAKE_DIVERGE(p_1356->group_0_offset, get_group_id(0), 10)) ^ l_1012), 3L)) , p_13) , &l_1005)) || p_14) < 254UL), l_977.y)))), &p_1356->g_82, p_1356);
            }
            else
            { /* block id: 373 */
                uint64_t l_1015 = 0x379E435716798934L;
                VECTOR(uint64_t, 4) l_1016 = (VECTOR(uint64_t, 4))(0xECC9F3EAE5577B79L, (VECTOR(uint64_t, 2))(0xECC9F3EAE5577B79L, 18446744073709551615UL), 18446744073709551615UL);
                int32_t *l_1025 = &l_803;
                int32_t **l_1024[4][1] = {{&l_1025},{&l_1025},{&l_1025},{&l_1025}};
                int32_t l_1026[4];
                int8_t *l_1046[4][5] = {{&l_1008,&l_653,&l_653,&l_1008,&l_1008},{&l_1008,&l_653,&l_653,&l_1008,&l_1008},{&l_1008,&l_653,&l_653,&l_1008,&l_1008},{&l_1008,&l_653,&l_653,&l_1008,&l_1008}};
                VECTOR(int64_t, 2) l_1074 = (VECTOR(int64_t, 2))(1L, 0x269B1FC3106314C8L);
                int i, j;
                for (i = 0; i < 4; i++)
                    l_1026[i] = 0x56FF8CEDL;
                (*l_736) = (p_14 == l_990);
                (*p_1356->g_2) &= ((l_1015 || (0xEC4AL | (l_990 = p_1356->g_36))) != (0x8C14E008D6B4DCC7L <= ((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 8))(l_1016.wzxyywzz)).s1237260030310656, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(p_1356->g_513.f0, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),VECTOR(uint64_t, 16),((VECTOR(uint64_t, 16))(p_1356->g_1017.s2540160167320225)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(18446744073709551606UL, (0x581E577DL != 0x0E60406DL), 0x49C4FA0192473D81L, 0x24210EC59B54E7E9L, ((VECTOR(uint64_t, 4))((safe_div_func_int64_t_s_s((((p_1356->g_1020[0] , (*p_1356->g_908)) == (void*)0) == FAKE_DIVERGE(p_1356->global_0_offset, get_global_id(0), 10)), p_1356->g_498.z)), 0x509502F75CC9B7C2L, 0xC2B6D8A0814EBE2AL, 0x8A03F6C4E09085EBL)), 0UL, 18446744073709551613UL, ((VECTOR(uint64_t, 2))(0xCE07933525C1AD17L)), ((VECTOR(uint64_t, 4))(0xCA08B78810621FACL)))).s5f)).yyyxxxyyyyxyyyyx, ((VECTOR(uint64_t, 16))(0x0E74EF70ACED5345L))))).scf)), 0x1290A1212C61E84FL)))).zwxxzxwwyxyywywx, ((VECTOR(uint64_t, 16))(0x55BF68186277F2B2L))))).sa0)).xyxy)))).xyyyzwxxyzxyyyww))).s9));
                if (((((p_14 , (safe_add_func_uint64_t_u_u((l_1026[1] = (l_1023 != l_1024[1][0])), (((*p_1356->g_326) = (safe_sub_func_uint8_t_u_u((safe_add_func_int8_t_s_s((safe_div_func_uint32_t_u_u((p_13 != (safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((p_1356->g_75.w &= ((p_1356->g_1039 , (safe_mod_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(l_969, 0x23C9L)), (p_1356->g_874.y & (p_1356->g_376.x = (safe_div_func_uint8_t_u_u(((*l_736) , p_1356->g_143.y), l_977.x))))))) <= p_1356->g_332.s5)), 0x51L)) > p_14), 2)), p_1356->g_36))), 9UL)), (*l_736))), 0UL))) != 4294967294UL)))) && (**p_1356->g_836)) < p_14) > GROUP_DIVERGE(0, 1)))
                { /* block id: 381 */
                    uint8_t l_1062 = 1UL;
                    uint16_t l_1075 = 0xA9E6L;
                    (*p_1356->g_2) |= (((0x5795A25CCE503D97L < (safe_rshift_func_int16_t_s_u((l_1026[1] = l_1016.z), (safe_mul_func_uint16_t_u_u((((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((((p_1356->g_874.y , (safe_sub_func_int16_t_s_s((p_1356->g_473.f2 ^ ((safe_unary_minus_func_int8_t_s((&p_1356->g_259 != (void*)0))) > (~((safe_mod_func_uint8_t_u_u((((void*)0 != p_1356->g_458) & (p_1356->g_458 != l_1060)), p_14)) , l_969)))), p_14))) , p_13) && p_13), (*l_736))), 3)) >= 0UL) | l_1062), l_1062))))) >= l_977.x) < FAKE_DIVERGE(p_1356->group_2_offset, get_group_id(2), 10));
                    (*l_736) = (l_1063 , (safe_mod_func_uint16_t_u_u(((p_1356->g_42.s1 ^ ((+(safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 2))(0x55EEL, 0x6A9EL)).odd, 1UL))) == l_1015)) & (safe_sub_func_uint8_t_u_u(((((safe_sub_func_uint64_t_u_u((+(safe_add_func_uint16_t_u_u(p_13, ((p_14 , ((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_1074.xy)), 0x716B71BB680A4CCAL, (-3L))).xzwywywzxwzxyywx)).hi, ((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 4))((l_1026[1] < p_14), 0x40CB2ECC77016B2CL, 9L, (-1L))).xxxwyyxw)))))).s5) , 0x2557L)))), 0x49479E8A950E878AL)) , 1L) != p_1356->g_259) != 1UL), (*l_736)))), l_1075)));
                }
                else
                { /* block id: 385 */
                    VECTOR(int8_t, 4) l_1076 = (VECTOR(int8_t, 4))(0x24L, (VECTOR(int8_t, 2))(0x24L, (-1L)), (-1L));
                    int i;
                    --l_1077;
                }
            }
            (*p_1356->g_2) |= ((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(p_1356->g_1082.s22)).xxyxyxyxxxxyyxxy)), ((VECTOR(int16_t, 8))(p_1356->g_1083.yxxxyyxy)).s3470353671437576))).s07)))), ((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(0L, 1L, (((1L >= ((l_1084 != (((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(0x25L, 1L)), ((VECTOR(int8_t, 8))((-1L), p_14, p_13, ((((((*l_1085) = p_1356->g_775.f2) , p_1356->g_1086) , l_1087) != (((((safe_rshift_func_uint8_t_u_s(l_1090, 0)) || (safe_div_func_int16_t_s_s((safe_div_func_int64_t_s_s((GROUP_DIVERGE(0, 1) <= p_13), p_1356->g_370.x)), 65533UL))) ^ l_969) < (*p_1356->g_326)) , l_1087)) && 0xC3L), 3L, ((VECTOR(int8_t, 2))(0x55L)), 1L)).s53))).yxyxxyxyxyxxyyyy)).se017)).hi))).yyyx)).yxwzwzwy, ((VECTOR(int8_t, 8))(0x55L))))).s41)).lo | l_1095) & l_1096) , (void*)0)) , l_969)) , 5L) != p_13), 0x1AF7L, 0x5BF2L, p_13, 0x6A44L, 5L)))), ((VECTOR(int16_t, 8))(0x0BABL)), ((VECTOR(int16_t, 8))(0x5924L))))).lo)).zxxzxywzwzzzxyxw, ((VECTOR(int16_t, 16))(0x26C5L)), ((VECTOR(int16_t, 16))(0x2CDEL))))).s7d)).yxxx, ((VECTOR(int16_t, 4))(0L)), ((VECTOR(int16_t, 4))(4L))))), (-1L), 0L)).odd)).z, l_567[5][1][1])) , p_13);
        }
        else
        { /* block id: 391 */
            int64_t *l_1099[2][1];
            union U2 ****l_1101[6][10] = {{&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,(void*)0,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641},{&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,(void*)0,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641},{&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,(void*)0,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641},{&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,(void*)0,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641},{&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,(void*)0,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641},{&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,(void*)0,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641,&p_1356->g_641}};
            VECTOR(uint32_t, 16) l_1105 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x662E11FFL), 0x662E11FFL), 0x662E11FFL, 4294967295UL, 0x662E11FFL, (VECTOR(uint32_t, 2))(4294967295UL, 0x662E11FFL), (VECTOR(uint32_t, 2))(4294967295UL, 0x662E11FFL), 4294967295UL, 0x662E11FFL, 4294967295UL, 0x662E11FFL);
            VECTOR(uint32_t, 8) l_1109 = (VECTOR(uint32_t, 8))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 1UL), 1UL), 1UL, 5UL, 1UL);
            union U2 *****l_1115 = &l_718;
            int32_t **l_1117[1];
            VECTOR(uint16_t, 4) l_1121 = (VECTOR(uint16_t, 4))(0x8744L, (VECTOR(uint16_t, 2))(0x8744L, 1UL), 1UL);
            union U2 ******l_1123 = &l_1115;
            int32_t *l_1125 = &p_1356->g_121.f2;
            int32_t *l_1126 = &p_1356->g_812.f2;
            int32_t *l_1127[1][9] = {{&p_1356->g_1128,(void*)0,&p_1356->g_1128,&p_1356->g_1128,(void*)0,&p_1356->g_1128,&p_1356->g_1128,(void*)0,&p_1356->g_1128}};
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1099[i][j] = &l_723[2];
            }
            for (i = 0; i < 1; i++)
                l_1117[i] = &l_962[5][1][2];
            (*p_1356->g_908) = func_22(&l_736, (p_13 | (safe_sub_func_int64_t_s_s((+(l_1100 |= ((VECTOR(int64_t, 2))(0L, 1L)).hi)), ((l_1101[2][9] != (l_1116 = ((*l_1115) = ((safe_mul_func_int16_t_s_s(((((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 16))(l_1104.s1421320105551152)).sd5, ((VECTOR(uint32_t, 16))(l_1105.s36bfd055403f0567)).s47))).even && (l_1105.sd != (safe_rshift_func_uint8_t_u_u((((((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_1356->g_1108.s56)), 0x345F544AL, 4294967287UL)).hi, ((VECTOR(uint32_t, 2))(l_1109.s42))))).xxxyyyyyyyyyyxyx, ((VECTOR(uint64_t, 16))(4UL, ((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_1110.sb4)), ((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(p_1356->g_1111.yy)).yxxyxxxyxyyxxyxx)).s9c8d, (uint64_t)18446744073709551615UL))), 0x90B42FBC4B9888F8L, 1UL)).s0327117456525171))).s90)), ((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 2))(p_1356->g_1112.yx)).yxxyxyyy, ((VECTOR(uint64_t, 16))(0UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(18446744073709551612UL, 0x26BBE09149E2F548L)), 0xB33E8192684AB416L, 1UL)).odd)), 0xA204FD9955A260DAL, 18446744073709551615UL, p_14, (p_14 | (0x72L ^ (p_1356->g_1113 , p_14))), ((VECTOR(uint64_t, 4))(18446744073709551615UL)), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), ((VECTOR(uint64_t, 2))(0x5CEE6325E738FC46L)), 5UL)).odd))).s60))), ((VECTOR(uint64_t, 4))(0UL)), ((VECTOR(uint64_t, 4))(0xB9F850038BB11242L)), ((VECTOR(uint64_t, 4))(2UL)), 18446744073709551606UL))))).even)), ((VECTOR(uint64_t, 8))(5UL))))).s04, ((VECTOR(uint64_t, 2))(0UL))))).even || l_1114[2][0]) , p_1356->g_297) != p_13), l_1105.sd)))) < p_13), p_13)) , (void*)0)))) < 0x448DL)))), l_1104.s0, p_1356->g_1112.y, l_983.x, p_1356);
            (*p_1356->g_2) = (safe_mul_func_uint8_t_u_u(((l_1120 | (((VECTOR(uint16_t, 8))(0UL, 0x39A6L, 0xE307L, ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_1121.wxwz)))).odd, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 8))((((l_1122[2] != ((p_1356->g_1128 |= ((((*l_1123) = &l_1116) == &p_1356->g_1011) ^ ((**p_1356->g_836) != ((((((((*l_1125) = (((VECTOR(int64_t, 16))(p_1356->g_1124.s826f0bdaaf511a76)).s7 >= 9UL)) , (*p_1356->g_795)) == (*p_1356->g_795)) ^ (p_1356->g_376.x == (-1L))) , &p_1356->g_991) != &p_1356->g_991) <= 0L)))) , l_1122[2])) | 3UL) <= l_1129), 0L, (*l_736), 6L, p_13, (-5L), 0x2216L, 2L)).s6414543221052037))).sef))).xyyyyxyxxyxyyyyy)).sae, ((VECTOR(uint16_t, 2))(1UL))))), 0xFC02L, 0x0250L)).even, ((VECTOR(uint16_t, 2))(0x3CE6L)), ((VECTOR(uint16_t, 2))(0xA84EL))))), 0x0527L, 5UL, 0x10C2L)).s0 != p_14)) > FAKE_DIVERGE(p_1356->group_0_offset, get_group_id(0), 10)), p_1356->g_539.sf));
        }
        for (p_1356->g_812.f2 = 16; (p_1356->g_812.f2 > 22); p_1356->g_812.f2 = safe_add_func_uint8_t_u_u(p_1356->g_812.f2, 3))
        { /* block id: 403 */
            VECTOR(int32_t, 2) l_1138 = (VECTOR(int32_t, 2))(3L, (-1L));
            VECTOR(uint16_t, 4) l_1141 = (VECTOR(uint16_t, 4))(0x31F6L, (VECTOR(uint16_t, 2))(0x31F6L, 0x96DDL), 0x96DDL);
            VECTOR(uint16_t, 8) l_1142 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x7477L), 0x7477L), 0x7477L, 0UL, 0x7477L);
            int32_t *l_1212 = &p_1356->g_3;
            uint16_t l_1222 = 9UL;
            uint16_t l_1225 = 1UL;
            int i;
            if ((safe_mul_func_uint16_t_u_u(((safe_mod_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(((**p_1356->g_836) > ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(l_1138.xyxy)).xwzwzxyw, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_1139.zzwywxwzzzwyxxwz)).even, ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(l_1140.zw)).yyyxyxxyxyxyxxyx, ((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 8))(0x1CE9L, ((*p_1356->g_760) == (void*)0), ((VECTOR(uint16_t, 2))(l_1141.zx)), ((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_1142.s5736)).w, 0UL, 0xDBDBL, 0xA979L)), ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_1356->g_1143.s0a)), 1UL, 0x93D0L, 0x9C4AL, (p_1356->g_837.f2 = (l_1138.x &= l_984.y)), 65535UL, 0xF077L)).s5473657577362337, ((VECTOR(uint16_t, 16))((((safe_mod_func_int64_t_s_s(p_14, l_1141.x)) && 0x2AL) ^ (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(p_1356->g_1148.s0394)).x, ((safe_unary_minus_func_int16_t_s(p_14)) < (((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 8))(0L, 0x6B2CL, ((VECTOR(int16_t, 2))(0L, 1L)), ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 16))(l_1150.yxyzzxzwywxxxzwx)).s82, (int16_t)(((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_1151.xy)).xxyxxyxxxyyyxyxx)))).s3c)).xxxxyxyy, ((VECTOR(uint32_t, 4))(0x5CA17CEBL, ((VECTOR(uint32_t, 2))(p_1356->g_1152.s32)), 0UL)).xxyzzwwx))).s2 < 1UL)))).xyyxyxyyxyyyyxyx, ((VECTOR(int16_t, 16))((-6L)))))).sd6, ((VECTOR(int16_t, 2))(0x0554L))))), 0x4DAEL, 0L)).s21, ((VECTOR(int16_t, 2))(0L))))).hi <= 0UL))))), ((VECTOR(uint16_t, 2))(0x6F6CL)), 0x83A5L, l_1142.s3, p_1356->g_498.y, ((VECTOR(uint16_t, 2))(0UL)), ((VECTOR(uint16_t, 8))(1UL)))), ((VECTOR(uint16_t, 16))(0xFF7BL))))).sda20, ((VECTOR(uint16_t, 4))(0xD060L))))))), ((VECTOR(uint16_t, 8))(0x7C49L)), ((VECTOR(uint16_t, 8))(0x7AD4L))))).s3065364664626175))).see, ((VECTOR(int32_t, 2))(0L))))).xyyyxyxy))).even, (int32_t)p_13))).xyyxwwyz)), ((VECTOR(int32_t, 8))(1L))))).even, ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 4))(0x4773A6C0L))))).z), l_1153.sb)) , p_13), p_13)) | p_1356->g_75.x), p_13)))
            { /* block id: 406 */
                for (l_560 = 0; (l_560 != 22); l_560 = safe_add_func_int32_t_s_s(l_560, 6))
                { /* block id: 409 */
                    union U3 **l_1157 = &p_1356->g_458;
                    union U3 ***l_1156 = &l_1157;
                    (*l_1156) = &p_1356->g_458;
                    l_1158 = (void*)0;
                }
            }
            else
            { /* block id: 413 */
                uint8_t l_1180 = 0UL;
                int8_t *l_1181[8] = {(void*)0,&l_1095,(void*)0,(void*)0,&l_1095,(void*)0,(void*)0,&l_1095};
                union U3 ***l_1192 = (void*)0;
                VECTOR(uint32_t, 4) l_1206 = (VECTOR(uint32_t, 4))(0x84507F07L, (VECTOR(uint32_t, 2))(0x84507F07L, 0UL), 0UL);
                int64_t l_1213 = (-3L);
                int32_t *l_1219 = &l_563;
                int i;
                if ((safe_lshift_func_int8_t_s_u(l_1142.s1, (safe_lshift_func_int8_t_s_s((p_1356->g_1007.sf ^= (safe_sub_func_uint8_t_u_u(((~((safe_unary_minus_func_uint16_t_u(((safe_mod_func_int8_t_s_s((safe_add_func_uint8_t_u_u((((*l_968) = (safe_rshift_func_uint16_t_u_u(p_14, 15))) < p_13), ((VECTOR(int8_t, 16))(p_1356->g_1172.xzzwxxyxxwyyxywz)).sd)), (safe_unary_minus_func_uint32_t_u(p_14)))) | 0x0E6B40EBL))) < (((((p_1356->g_991 , (safe_mul_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u(l_1138.y, p_14)) , ((((*p_1356->g_2) &= ((safe_sub_func_int64_t_s_s((l_1138.y &= 0x150C68115A28E74AL), 0x357666639830622FL)) || l_1141.y)) < l_1180) >= 0x7FB3L)), p_14))) > p_14) | (*p_1356->g_326)) , &l_1100) != p_1356->g_916[0]))) & p_13), p_14))), 4)))))
                { /* block id: 418 */
                    int16_t l_1184[5] = {0L,0L,0L,0L,0L};
                    int32_t **l_1187 = (void*)0;
                    union U3 **l_1191[9][7] = {{(void*)0,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458},{(void*)0,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458},{(void*)0,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458},{(void*)0,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458},{(void*)0,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458},{(void*)0,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458},{(void*)0,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458},{(void*)0,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458},{(void*)0,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458,&p_1356->g_458}};
                    union U3 ***l_1190[2];
                    VECTOR(uint32_t, 8) l_1198 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xB469F347L), 0xB469F347L), 0xB469F347L, 4294967295UL, 0xB469F347L);
                    uint8_t l_1205 = 5UL;
                    int32_t **l_1211 = &l_1209[4][0];
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_1190[i] = &l_1191[8][0];
                    (*l_1211) = l_1209[4][0];
                    return l_1212;
                }
                else
                { /* block id: 422 */
                    int32_t l_1214 = 2L;
                    uint16_t l_1215 = 3UL;
                    int64_t *l_1218[6] = {&p_1356->g_304.f3,&p_1356->g_513.f3,&p_1356->g_304.f3,&p_1356->g_304.f3,&p_1356->g_513.f3,&p_1356->g_304.f3};
                    int i;
                    l_1215++;
                    (*p_1356->g_1220) = func_37((p_1356->g_513.f3 ^= (*l_1212)), l_1219, p_1356);
                    if ((**p_1356->g_836))
                        continue;
                    return p_1356->g_1221;
                }
            }
            l_1222++;
            (*p_1356->g_2) |= l_1225;
        }
    }
    else
    { /* block id: 433 */
        int32_t **l_1226 = &p_1356->g_1221;
        int16_t l_1263 = (-1L);
        int32_t l_1264[1];
        VECTOR(int32_t, 4) l_1283 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x324E6A36L), 0x324E6A36L);
        union U2 ***l_1287 = &p_1356->g_958;
        int i;
        for (i = 0; i < 1; i++)
            l_1264[i] = 0x3E969D2CL;
        (*l_1226) = func_22(l_1226, (**p_1356->g_908), p_13, (safe_rshift_func_uint8_t_u_s(((safe_add_func_int8_t_s_s(0x2FL, (safe_rshift_func_uint16_t_u_s((p_1356->g_837.f2 = ((((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 16))((-9L), 0x182E3C6776956AB1L, ((VECTOR(int64_t, 2))(p_1356->g_1233.s61)), (-6L), 0x531110E763A69008L, ((*l_736) = (((((*p_1356->g_326) <= ((!0x5EEB5FE39AFEA7F0L) | (safe_rshift_func_uint8_t_u_u(((p_1356->g_376.x = ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x7DEE8094152410FAL, 2L)))).odd) == (safe_rshift_func_int16_t_s_s((p_13 <= (safe_div_func_int8_t_s_s((-3L), p_13))), p_13))), 5)))) && (**l_1226)) ^ GROUP_DIVERGE(2, 1)) , p_14)), p_14, 0x185215B5A86E0D97L, 0x7F278F65DD95FE85L, p_13, 0x56809D718D68513FL, ((VECTOR(int64_t, 4))(0x4F226D5C8BA81AACL)))).s4aeb))).w , 4UL) ^ p_14)), 0)))) & p_13), p_13)), p_14, p_1356);
        for (p_1356->g_121.f1 = 0; (p_1356->g_121.f1 < 2); p_1356->g_121.f1++)
        { /* block id: 440 */
            uint32_t **l_1242 = &l_963[3][3][0];
            if ((+((**l_1226) |= 5L)))
            { /* block id: 442 */
                return (*p_1356->g_908);
            }
            else
            { /* block id: 444 */
                uint32_t ***l_1243[9][9] = {{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242},{&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242,&l_1242}};
                int i, j;
                p_1356->g_1244 = l_1242;
            }
        }
        for (p_1356->g_84.f1 = (-21); (p_1356->g_84.f1 >= (-30)); p_1356->g_84.f1 = safe_sub_func_int16_t_s_s(p_1356->g_84.f1, 8))
        { /* block id: 450 */
            uint32_t **l_1247 = &p_1356->g_326;
            VECTOR(int32_t, 2) l_1250 = (VECTOR(int32_t, 2))(2L, (-1L));
            uint16_t l_1265 = 0x886AL;
            int32_t *l_1272 = &l_803;
            int32_t **l_1271 = &l_1272;
            uint64_t *l_1274 = &p_1356->g_1275;
            uint64_t *l_1278 = &p_1356->g_1279;
            int i;
            (*l_1084) = l_1247;
            for (p_1356->g_513.f0 = 0; (p_1356->g_513.f0 != 49); p_1356->g_513.f0++)
            { /* block id: 454 */
                (*p_1356->g_2) |= ((VECTOR(int32_t, 16))(l_1250.yxxyyyyxyyxxyyxx)).sc;
                for (p_1356->g_121.f2 = (-6); (p_1356->g_121.f2 > (-7)); p_1356->g_121.f2--)
                { /* block id: 458 */
                    int32_t *l_1253 = (void*)0;
                    int32_t *l_1254 = (void*)0;
                    int32_t *l_1255 = &l_561;
                    int32_t *l_1256 = &l_567[0][0][1];
                    int32_t *l_1257 = &p_1356->g_812.f1;
                    int32_t *l_1258 = (void*)0;
                    int32_t *l_1259 = (void*)0;
                    int32_t *l_1260 = (void*)0;
                    int32_t *l_1261 = (void*)0;
                    int32_t *l_1262[4] = {&l_567[0][1][0],&l_567[0][1][0],&l_567[0][1][0],&l_567[0][1][0]};
                    int i;
                    --l_1265;
                    for (p_1356->g_93 = 0; (p_1356->g_93 >= (-8)); p_1356->g_93 = safe_sub_func_uint64_t_u_u(p_1356->g_93, 5))
                    { /* block id: 462 */
                        int32_t *l_1270[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1270[i] = &p_1356->g_3;
                        return l_1270[0];
                    }
                }
            }
            (*l_1226) = (void*)0;
            (*p_1356->g_2) &= ((0x838842C1L | p_13) , ((((*l_1271) = &p_1356->g_297) == ((((p_1356->g_1273 , (((((*l_1278) = (++(*l_1274))) , p_1356->g_1280) , (safe_lshift_func_int8_t_s_u(p_14, 7))) & ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(0L, 0x5AC297D2L)).yyxxyxyy, ((VECTOR(int32_t, 16))(l_1283.zzyzwzwxzwxwxywz)).even))).hi)).wzwzyzzx)).s2)) , GROUP_DIVERGE(0, 1)) && ((((void*)0 != l_1284) > (((safe_mul_func_int16_t_s_s((l_1287 != (void*)0), l_1288)) | p_14) , 9L)) == l_1250.y)) , &l_1204)) & 65535UL));
        }
    }
    --l_1292;
    return l_1295;
}


/* ------------------------------------------ */
/* 
 * reads : p_1356->g_3 p_1356->g_2 p_1356->g_36 p_1356->g_42 p_1356->g_75 p_1356->g_82 p_1356->g_87 p_1356->g_93 p_1356->g_96 p_1356->g_101 p_1356->g_117 p_1356->g_86 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_141 p_1356->g_168 p_1356->g_143 p_1356->g_174 p_1356->g_84.f0 p_1356->g_235 p_1356->g_241 p_1356->g_261 p_1356->g_262 p_1356->g_273 p_1356->g_67 p_1356->g_300 p_1356->g_304 p_1356->g_297 p_1356->g_332 p_1356->g_336 p_1356->g_338 p_1356->g_326 p_1356->g_360 p_1356->g_235.f1.f0 p_1356->g_367 p_1356->g_235.f0 p_1356->g_473 p_1356->g_487 p_1356->g_488 p_1356->g_376 p_1356->g_498 p_1356->g_513 p_1356->g_515
 * writes: p_1356->g_3 p_1356->g_36 p_1356->g_67 p_1356->g_82 p_1356->g_86 p_1356->g_87 p_1356->g_93 p_1356->g_117 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_143 p_1356->g_2 p_1356->g_259 p_1356->g_273 p_1356->g_297 p_1356->g_262 p_1356->g_325 p_1356->g_174 p_1356->g_304.f2 p_1356->g_235.f1.f0 p_1356->g_304.f3 p_1356->g_458 p_1356->g_235.f0 p_1356->g_477 p_1356->g_141 p_1356->g_168 p_1356->g_513
 */
int8_t  func_16(int32_t * p_17, int64_t  p_18, struct S4 * p_1356)
{ /* block id: 9 */
    int32_t **l_28 = &p_1356->g_2;
    VECTOR(int16_t, 16) l_31 = (VECTOR(int16_t, 16))(0x7758L, (VECTOR(int16_t, 4))(0x7758L, (VECTOR(int16_t, 2))(0x7758L, 0x5674L), 0x5674L), 0x5674L, 0x7758L, 0x5674L, (VECTOR(int16_t, 2))(0x7758L, 0x5674L), (VECTOR(int16_t, 2))(0x7758L, 0x5674L), 0x7758L, 0x5674L, 0x7758L, 0x5674L);
    VECTOR(int16_t, 4) l_32 = (VECTOR(int16_t, 4))(0x5FD9L, (VECTOR(int16_t, 2))(0x5FD9L, 0x4374L), 0x4374L);
    VECTOR(uint16_t, 4) l_33 = (VECTOR(uint16_t, 4))(0xD975L, (VECTOR(uint16_t, 2))(0xD975L, 0x3020L), 0x3020L);
    VECTOR(uint16_t, 4) l_34 = (VECTOR(uint16_t, 4))(0x3899L, (VECTOR(uint16_t, 2))(0x3899L, 0x32AFL), 0x32AFL);
    uint32_t *l_35 = &p_1356->g_36;
    int i;
    (*l_28) = func_22(l_28, (safe_lshift_func_uint16_t_u_s((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 2))(l_31.sfa)).yxyyxyxx, ((VECTOR(int16_t, 16))(l_32.wxyyxzwzzywyxxyx)).even))).s4430567135506352, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 16))(l_33.wzzxzwxyxzwxwzyx)).sab, ((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(1UL, 0x12F8L)), 65535UL, 65535UL)).xwywwyxzwyxxwyyz, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 4))(0x1C2FL, ((VECTOR(uint16_t, 2))(l_34.xw)), 1UL)).wzwwzwzwzyxwxxww, (uint16_t)((**l_28) = p_1356->g_3)))).even)).s5417424262626202))).s45))), (((((*l_35) |= func_20((**l_28), p_1356)) , func_37((255UL <= (**l_28)), (*l_28), p_1356)) != ((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(p_1356->g_498.wywzyyyy)).s2, 3)) , p_1356->g_326)) == p_18), 0x3484L, ((VECTOR(uint16_t, 4))(0x20D6L)))).s5214006104750341))).lo)).s30))).yyyx)).w ^ 6L), 1)), p_18, p_18, p_18, p_1356);
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_1356->g_3
 * writes:
 */
int64_t  func_20(uint32_t  p_21, struct S4 * p_1356)
{ /* block id: 7 */
    return p_1356->g_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1356->g_96 p_1356->g_93 p_1356->g_2 p_1356->g_82 p_1356->g_3 p_1356->g_235 p_1356->g_168 p_1356->g_101 p_1356->g_273 p_1356->g_67 p_1356->g_174 p_1356->g_87 p_1356->g_304 p_1356->g_326 p_1356->g_360 p_1356->g_367 p_1356->g_473 p_1356->g_376 p_1356->g_513 p_1356->g_515
 * writes: p_1356->g_82 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_3 p_1356->g_2 p_1356->g_93 p_1356->g_67 p_1356->g_87 p_1356->g_297 p_1356->g_262 p_1356->g_325 p_1356->g_174 p_1356->g_304.f2 p_1356->g_235.f1.f0 p_1356->g_117 p_1356->g_304.f3 p_1356->g_458 p_1356->g_477 p_1356->g_168 p_1356->g_513 p_1356->g_1221
 */
int32_t * func_22(int32_t ** p_23, int32_t  p_24, int32_t  p_25, int64_t  p_26, int8_t  p_27, struct S4 * p_1356)
{ /* block id: 168 */
    int32_t *l_499 = &p_1356->g_3;
    int32_t *l_500 = (void*)0;
    int32_t *l_501 = (void*)0;
    int32_t *l_502 = &p_1356->g_82;
    int32_t *l_503 = (void*)0;
    int32_t *l_504 = &p_1356->g_82;
    int32_t l_505[5][4] = {{1L,0L,1L,0L},{1L,0L,1L,0L},{1L,0L,1L,0L},{1L,0L,1L,0L},{1L,0L,1L,0L}};
    int32_t *l_506 = &l_505[4][1];
    int32_t *l_507 = (void*)0;
    int32_t *l_508 = (void*)0;
    int32_t *l_509[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint16_t l_510 = 6UL;
    struct S0 *l_514 = (void*)0;
    int i, j;
    l_510++;
    (*p_23) = func_37(p_27, &p_1356->g_82, p_1356);
    (*p_1356->g_515) = p_1356->g_513;
    return &p_1356->g_82;
}


/* ------------------------------------------ */
/* 
 * reads : p_1356->g_96 p_1356->g_93 p_1356->g_2 p_1356->g_82 p_1356->g_3 p_1356->g_235 p_1356->g_168 p_1356->g_101 p_1356->g_273 p_1356->g_67 p_1356->g_174 p_1356->g_87 p_1356->g_304 p_1356->g_326 p_1356->g_360 p_1356->g_367 p_1356->g_235.f0 p_1356->g_473 p_1356->g_487 p_1356->g_488 p_1356->g_75 p_1356->g_376 p_1356->g_42 p_1356->g_36 p_1356->g_117 p_1356->g_86 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_141 p_1356->g_143 p_1356->g_84.f0 p_1356->g_241 p_1356->g_261 p_1356->g_262 p_1356->g_300 p_1356->g_297 p_1356->g_332 p_1356->g_336 p_1356->g_338 p_1356->g_235.f1.f0
 * writes: p_1356->g_3 p_1356->g_121.f2 p_1356->g_121.f1 p_1356->g_82 p_1356->g_2 p_1356->g_93 p_1356->g_67 p_1356->g_87 p_1356->g_297 p_1356->g_262 p_1356->g_325 p_1356->g_174 p_1356->g_304.f2 p_1356->g_235.f1.f0 p_1356->g_117 p_1356->g_304.f3 p_1356->g_458 p_1356->g_235.f0 p_1356->g_477 p_1356->g_141 p_1356->g_168 p_1356->g_86 p_1356->g_143 p_1356->g_259 p_1356->g_273
 */
int32_t * func_37(int64_t  p_38, int32_t * p_39, struct S4 * p_1356)
{ /* block id: 12 */
    VECTOR(int32_t, 4) l_40 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L);
    VECTOR(int64_t, 4) l_41 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x73E63D4D864B91BFL), 0x73E63D4D864B91BFL);
    int32_t *l_51 = (void*)0;
    int16_t *l_91 = (void*)0;
    int16_t *l_92 = &p_1356->g_93;
    union U2 *l_120 = &p_1356->g_121;
    int32_t l_218 = 6L;
    uint16_t l_260 = 0x117AL;
    VECTOR(uint32_t, 2) l_301 = (VECTOR(uint32_t, 2))(0x102B2375L, 0x79FCC35FL);
    VECTOR(uint32_t, 8) l_302 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x8EF9871BL), 0x8EF9871BL), 0x8EF9871BL, 1UL, 0x8EF9871BL);
    int32_t l_305 = 0x28787CF8L;
    int8_t l_306 = 4L;
    uint8_t l_308 = 0xC3L;
    VECTOR(uint8_t, 2) l_317 = (VECTOR(uint8_t, 2))(0x90L, 255UL);
    int32_t **l_327[9];
    VECTOR(uint8_t, 16) l_333 = (VECTOR(uint8_t, 16))(0xBAL, (VECTOR(uint8_t, 4))(0xBAL, (VECTOR(uint8_t, 2))(0xBAL, 0x8AL), 0x8AL), 0x8AL, 0xBAL, 0x8AL, (VECTOR(uint8_t, 2))(0xBAL, 0x8AL), (VECTOR(uint8_t, 2))(0xBAL, 0x8AL), 0xBAL, 0x8AL, 0xBAL, 0x8AL);
    VECTOR(uint16_t, 8) l_339 = (VECTOR(uint16_t, 8))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 65535UL), 65535UL), 65535UL, 65528UL, 65535UL);
    uint32_t l_355 = 0xD9A370D3L;
    VECTOR(uint16_t, 8) l_369 = (VECTOR(uint16_t, 8))(0xDBDCL, (VECTOR(uint16_t, 4))(0xDBDCL, (VECTOR(uint16_t, 2))(0xDBDCL, 5UL), 5UL), 5UL, 0xDBDCL, 5UL);
    uint32_t ***l_375 = &p_1356->g_325[2][0][3];
    uint32_t **l_387 = (void*)0;
    union U2 **l_391[9][3] = {{(void*)0,(void*)0,&l_120},{(void*)0,(void*)0,&l_120},{(void*)0,(void*)0,&l_120},{(void*)0,(void*)0,&l_120},{(void*)0,(void*)0,&l_120},{(void*)0,(void*)0,&l_120},{(void*)0,(void*)0,&l_120},{(void*)0,(void*)0,&l_120},{(void*)0,(void*)0,&l_120}};
    union U2 ***l_390 = &l_391[0][0];
    union U1 *l_452 = &p_1356->g_451[6];
    union U3 *l_456 = &p_1356->g_235;
    uint8_t l_459 = 0UL;
    union U2 *l_493 = (void*)0;
    int64_t l_494 = 0x6CC2EFCE5EAFF5F7L;
    int8_t *l_495 = &l_306;
    int i, j;
    for (i = 0; i < 9; i++)
        l_327[i] = &p_1356->g_2;
lbl_471:
    if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 16))(l_40.zxzzzxxyywwzzxxy)), (int32_t)(((*l_92) ^= (4294967295UL & func_20((((*p_39) | (func_20((((VECTOR(int64_t, 8))(l_41.yzxwxyyz)).s2 , p_38), p_1356) , ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(p_1356->g_42.s03016531)))).s4451113570145116)).even)).s3)) < (~((((-4L) <= l_40.w) || ((safe_rshift_func_uint16_t_u_u(func_45(l_51, l_51, ((safe_rshift_func_uint16_t_u_u(func_20(p_38, p_1356), p_1356->g_3)) , p_38), &p_1356->g_36, p_1356->g_3, p_1356), 6)) | p_38)) != p_1356->g_36))), p_1356))) , (*p_1356->g_2))))).odd)).s5)
    { /* block id: 34 */
        int8_t l_104[9] = {3L,3L,3L,3L,3L,3L,3L,3L,3L};
        int32_t **l_107 = &p_1356->g_2;
        int32_t l_186 = 0x70F86B60L;
        int32_t l_208 = 0x3F5BE081L;
        int32_t l_211 = 0x1291A304L;
        int32_t l_215 = 0x6D3885CEL;
        int32_t l_216 = 0x6B5314A3L;
        int32_t l_217[9];
        VECTOR(int32_t, 8) l_270 = (VECTOR(int32_t, 8))(0x4B5F1D5EL, (VECTOR(int32_t, 4))(0x4B5F1D5EL, (VECTOR(int32_t, 2))(0x4B5F1D5EL, 0x2CE2E2E6L), 0x2CE2E2E6L), 0x2CE2E2E6L, 0x4B5F1D5EL, 0x2CE2E2E6L);
        VECTOR(int64_t, 2) l_279 = (VECTOR(int64_t, 2))(0x7D754C5A717AF109L, 0L);
        int32_t l_307 = 0L;
        int i;
        for (i = 0; i < 9; i++)
            l_217[i] = (-1L);
        if (((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 8))(p_1356->g_96.zwyxzwyw)).lo, (int16_t)(((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(0x2BL, p_38, ((VECTOR(int8_t, 4))(p_1356->g_101.sd9c3)), 0x7AL, 0x3DL)).s3, 7)), (safe_sub_func_uint64_t_u_u(p_38, 0L)))) || l_104[1]) >= (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((((void*)0 != l_107) | ((safe_sub_func_uint32_t_u_u(((void*)0 != &p_39), (**l_107))) == p_1356->g_3)) >= 0x4FL), 4294967295UL, ((VECTOR(uint32_t, 2))(0x066B76CAL)), 0xEE4573DCL, ((VECTOR(uint32_t, 2))(0x4A0364B3L)), 0xE4605F85L)).s64)).xyyy)).x , 0x0524A1A4E4CF6FCFL)), (int16_t)0L))).w, 0x3B7FL)), (*p_1356->g_2), 0x4E8D85B2L, (*p_39), 0x255739FFL, 0x662397AFL, ((VECTOR(int32_t, 2))(6L)), 0x15030246L, ((VECTOR(int32_t, 4))(1L)), 0L, 0x4900E7B7L, 0x695A862BL)), ((VECTOR(int32_t, 16))((-1L))), ((VECTOR(int32_t, 16))(0x41723947L))))).s8)
        { /* block id: 35 */
            int16_t *l_116 = &p_1356->g_117;
            int32_t l_146 = 1L;
            int16_t *l_184 = (void*)0;
            int32_t l_185 = 0x43A37B5FL;
            int32_t l_207 = (-2L);
            int32_t l_212 = 0x78F9937BL;
            int32_t l_213[8];
            int64_t l_214 = 6L;
            uint32_t l_220 = 0x45528EACL;
            uint16_t *l_265[8][8][4] = {{{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0}},{{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0}},{{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0}},{{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0}},{{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0}},{{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0}},{{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0}},{{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0},{(void*)0,&l_260,(void*)0,&p_1356->g_235.f0}}};
            uint64_t *l_274 = &p_1356->g_259;
            uint64_t *l_275 = (void*)0;
            uint64_t *l_276 = (void*)0;
            int64_t *l_280 = (void*)0;
            int64_t *l_281 = &l_214;
            int i, j, k;
            for (i = 0; i < 8; i++)
                l_213[i] = 0x77C00BEDL;
            if (((p_38 < p_1356->g_96.z) ^ (safe_add_func_int32_t_s_s((safe_add_func_int8_t_s_s(p_1356->g_93, (((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))((safe_lshift_func_int8_t_s_s((((((*l_116) &= 0x4DDAL) & ((8UL | 0xD5L) || (((safe_mul_func_int8_t_s_s((p_1356->g_75.x && (((p_1356->g_86 == l_120) == p_1356->g_93) || (-6L))), p_38)) , 1UL) || p_38))) <= p_38) >= GROUP_DIVERGE(0, 1)), p_38)), 0x38L, 2L, (-1L), ((VECTOR(int8_t, 4))(1L)))).s7000773034104423)).s5 , 0x00L))), 0x5F4B4D06L))))
            { /* block id: 37 */
                int16_t l_145 = 6L;
                int32_t l_201 = 0x03907937L;
                int32_t l_209 = 0x26F9420FL;
                VECTOR(int32_t, 4) l_210 = (VECTOR(int32_t, 4))(0x29A4662FL, (VECTOR(int32_t, 2))(0x29A4662FL, 0x003BBAB0L), 0x003BBAB0L);
                int i;
                (*p_39) = 0x7FD1B8A4L;
                for (p_1356->g_121.f2 = 15; (p_1356->g_121.f2 < 21); ++p_1356->g_121.f2)
                { /* block id: 41 */
                    return p_39;
                }
                for (p_1356->g_121.f1 = 0; (p_1356->g_121.f1 >= 5); p_1356->g_121.f1++)
                { /* block id: 46 */
                    uint8_t l_128 = 1UL;
                    union U2 **l_139 = (void*)0;
                    union U2 **l_140[9][5][3] = {{{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0}},{{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0}},{{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0}},{{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0}},{{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0}},{{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0}},{{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0}},{{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0}},{{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0},{&l_120,&p_1356->g_86,(void*)0}}};
                    uint16_t *l_142[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_144 = 1L;
                    int32_t l_206[1];
                    int64_t l_219 = 0x0F08B5B5E61D60E9L;
                    union U2 ***l_223 = &l_140[5][4][1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_206[i] = (-1L);
                    if ((p_38 , ((p_38 ^ (safe_add_func_int32_t_s_s(l_128, ((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1356->global_0_offset, get_global_id(0), 10), ((((**l_107) = (safe_div_func_uint32_t_u_u(((safe_div_func_int8_t_s_s(((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(0x0AD03F83878C6F71L, (**l_107), ((safe_div_func_int64_t_s_s(p_1356->g_3, p_1356->g_36)) != (l_145 = (p_1356->g_96.y != (((l_144 = ((p_1356->g_86 = (void*)0) == (((-1L) && 0x0171D36573A9DBB0L) , p_1356->g_141))) >= 0xB03EL) != l_128)))), ((VECTOR(int64_t, 4))((-1L))), 0L, 0x38020A6BAE54040AL, (-1L), ((VECTOR(int64_t, 4))((-1L))), 0L, 0x595232D534F4898CL)).s35, ((VECTOR(int64_t, 2))(0x1B4585397BB59C86L))))).odd, (-7L))) , (-4L)), 0xF6L)) || 4294967295UL), (*p_1356->g_2)))) > 0UL) >= l_146))) != 0L)))) , (*p_39))))
                    { /* block id: 51 */
                        int32_t l_149 = 0x6154029CL;
                        int16_t **l_157 = &l_116;
                        VECTOR(int32_t, 8) l_173 = (VECTOR(int32_t, 8))(0x7ABDE920L, (VECTOR(int32_t, 4))(0x7ABDE920L, (VECTOR(int32_t, 2))(0x7ABDE920L, 0x5850D4A3L), 0x5850D4A3L), 0x5850D4A3L, 0x7ABDE920L, 0x5850D4A3L);
                        VECTOR(int32_t, 2) l_175 = (VECTOR(int32_t, 2))(0x04ED8316L, 1L);
                        int i;
                        (*p_1356->g_2) = (safe_div_func_uint16_t_u_u((~l_149), (safe_add_func_int16_t_s_s((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(8UL, 65531UL, ((VECTOR(uint16_t, 4))((safe_add_func_int16_t_s_s((safe_unary_minus_func_uint64_t_u((safe_add_func_int32_t_s_s((((*l_157) = &p_1356->g_117) == (void*)0), ((safe_add_func_int64_t_s_s(0L, (safe_mul_func_int8_t_s_s((((safe_lshift_func_uint16_t_u_s((safe_mod_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(1UL, 0xC18CAC2623A6D7AEL, 18446744073709551615UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(1UL, (((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(p_1356->g_168.s78)).yxxxyyxxxyxxyyxy, ((VECTOR(int32_t, 8))((-1L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(0x4C259733L, (safe_mul_func_uint8_t_u_u(255UL, (0x0912L <= (0x6BAAL > (p_1356->g_143.x++))))), 1L, (-1L))).even)).lo, 0x14BB8DE7L, 9L, ((VECTOR(int32_t, 4))(l_173.s6574)))).s6035236341021413, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_1356->g_174.xy)).yxyxxyyy)).s6677052546037337))).lo)), ((VECTOR(int32_t, 16))(l_175.yyyyxxxyxyxxxxyy)).even))).s6043062753125614)).sd | (GROUP_DIVERGE(2, 1) , (safe_sub_func_uint32_t_u_u((safe_sub_func_int64_t_s_s(p_1356->g_84.f0, ((safe_rshift_func_int16_t_s_u((safe_sub_func_uint32_t_u_u(4294967291UL, FAKE_DIVERGE(p_1356->local_2_offset, get_local_id(2), 10))), 15)) || FAKE_DIVERGE(p_1356->local_2_offset, get_local_id(2), 10)))), 0xCFFFDCFAL)))) , (void*)0) == l_184), ((VECTOR(uint64_t, 4))(0UL)), ((VECTOR(uint64_t, 2))(0UL)), 0x9D7677ECEE271CBBL, p_1356->g_168.s2, 0UL, ((VECTOR(uint64_t, 2))(0x6B5D01FEC4C8C8FAL)), ((VECTOR(uint64_t, 2))(0x818C2B6535DD0E7BL)), 1UL)).sb6)), ((VECTOR(uint64_t, 4))(0xD09F821FC279311AL)), 0UL, ((VECTOR(uint64_t, 4))(0xC3EBD9387172B58AL)), 1UL, 0x48CB3587C03A1E7AL)).hi)).s41)))))), 0UL, 18446744073709551615UL)).lo)))).even || 0x57A34FC8B023FBB9L), p_38)), l_149)), 0)) & (*p_39)) > l_145), p_1356->g_168.sa)))) >= p_38))))), 7UL)), ((VECTOR(uint16_t, 2))(0x9FF2L)), 0xDB72L)), p_1356->g_174.y, ((VECTOR(uint16_t, 4))(0x798BL)), ((VECTOR(uint16_t, 4))(0UL)), 0xD2D3L)).saf8a)).y | l_185), (-3L)))));
                        if (l_173.s0)
                            continue;
                        (*l_107) = &p_1356->g_3;
                    }
                    else
                    { /* block id: 57 */
                        int32_t *l_187 = &p_1356->g_3;
                        int32_t *l_188 = &l_144;
                        int32_t *l_189 = &l_185;
                        int32_t *l_190 = (void*)0;
                        int32_t *l_191 = (void*)0;
                        int32_t *l_192 = &p_1356->g_3;
                        int32_t *l_193 = (void*)0;
                        int32_t *l_194 = (void*)0;
                        int32_t *l_195 = &p_1356->g_3;
                        int32_t *l_196 = &p_1356->g_3;
                        int32_t *l_197 = &p_1356->g_84.f1;
                        int32_t *l_198 = &l_144;
                        int32_t *l_199 = &l_146;
                        int32_t *l_200 = (void*)0;
                        int32_t *l_202 = &l_144;
                        int32_t *l_203 = &l_201;
                        int32_t *l_204 = &p_1356->g_84.f1;
                        int32_t *l_205[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_205[i] = (void*)0;
                        --l_220;
                        if ((*p_1356->g_2))
                            break;
                    }
                    (*l_223) = (void*)0;
                }
            }
            else
            { /* block id: 63 */
                union U2 **l_224 = &l_120;
                int32_t l_227 = (-9L);
                int8_t *l_228 = &l_104[1];
                int32_t *l_238 = &l_185;
                VECTOR(int8_t, 4) l_242 = (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, 0x37L), 0x37L);
                VECTOR(int32_t, 4) l_251 = (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x36BB1C12L), 0x36BB1C12L);
                uint64_t *l_258[5][2] = {{&p_1356->g_259,&p_1356->g_259},{&p_1356->g_259,&p_1356->g_259},{&p_1356->g_259,&p_1356->g_259},{&p_1356->g_259,&p_1356->g_259},{&p_1356->g_259,&p_1356->g_259}};
                int i, j;
                (*l_238) &= ((l_224 != ((safe_rshift_func_int16_t_s_s(((*l_92) = (p_38 <= (((*l_228) = l_227) < (safe_unary_minus_func_uint64_t_u(((0x35E4F54D223E1E13L < ((safe_mod_func_uint64_t_u_u(18446744073709551615UL, (safe_unary_minus_func_uint32_t_u((safe_add_func_uint8_t_u_u(p_38, (p_1356->g_235 , 8UL))))))) > (safe_lshift_func_uint8_t_u_s(p_38, 2)))) >= p_38)))))), 3)) , (void*)0)) , (*p_39));
                (*l_107) = p_39;
                l_40.w |= (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(p_1356->g_75.x, ((VECTOR(int8_t, 2))(p_1356->g_241.xx)), (-8L))).x, ((**l_107) |= ((*l_228) = ((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(0L, 0x6AL, (-1L), 1L)).hi)), 0x39L, 0x67L)).lo, ((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0L, 0x1EL)), 0x2DL, 0L)))).ywwxxxyzzwwywzwz, ((VECTOR(int8_t, 8))(l_242.wyzyzyzy)).s1510570516203361))), ((VECTOR(int8_t, 8))((-1L), ((VECTOR(int8_t, 2))((-1L), (-1L))), 0x11L, (safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s((0L <= (safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))(l_251.yxwwxzyxyyxwyzwy)).s0, (p_1356->g_93 , p_38)))), p_1356->g_143.y)), 6)), (((p_38 && (p_1356->g_259 = (l_260 = (safe_lshift_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((0x0823E925FEAA6BB1L && ((safe_mod_func_uint32_t_u_u(p_38, p_38)) & GROUP_DIVERGE(2, 1))), p_1356->g_87)), 1))))) != (*l_238)) < p_38))), (-6L), 0x16L, 0L)).s1652502444271454))).sc8))).xyyxyxyx, ((VECTOR(int8_t, 8))(8L))))).s2))));
            }
            (*p_39) = (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(p_1356->g_261.xy)), 0x46L, 0x17L, 0x23L, 0UL, ((VECTOR(uint8_t, 8))(252UL, (!(!((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_1356->g_262.yxzwwxwwwxyyxyyy)).s7222)).hi, (uint8_t)(safe_sub_func_int16_t_s_s(((void*)0 == &l_184), (p_1356->g_143.y++)))))).even)), ((safe_sub_func_uint32_t_u_u((((VECTOR(int32_t, 16))(l_270.s4007244527503416)).s5 < (p_39 != &l_218)), (*p_1356->g_2))) != (safe_sub_func_int16_t_s_s(((l_217[3] = (!((p_1356->g_273.s2 = ((*l_274) = ((VECTOR(uint64_t, 8))(p_1356->g_273.s54237615)).s6)) & ((*l_281) ^= (safe_add_func_uint8_t_u_u(p_1356->g_143.y, (((VECTOR(int64_t, 16))(l_279.yyxxxxxyxxxxxyyy)).sd && 0x723D67A6BB68870BL))))))) != (*p_39)), (((p_1356->g_96.y != p_38) == 0xB3L) ^ 0x0047L)))), ((VECTOR(uint8_t, 4))(0x1AL)), 0x86L)), 1UL, 0x96L)).s22e4, (uint8_t)0UL, (uint8_t)p_38))).zxyzwwxxyyxxzxyy)).sd9)), 0x7DL, 3UL)).w ^ p_1356->g_168.s4);
            (*p_1356->g_2) = l_207;
        }
        else
        { /* block id: 81 */
            uint64_t l_288 = 1UL;
            uint32_t *l_291 = (void*)0;
            uint32_t *l_292 = &p_1356->g_67;
            int32_t *l_295 = &p_1356->g_87;
            int32_t *l_296 = &p_1356->g_297;
            int32_t *l_303[2][4][4] = {{{&l_217[3],(void*)0,(void*)0,(void*)0},{&l_217[3],(void*)0,(void*)0,(void*)0},{&l_217[3],(void*)0,(void*)0,(void*)0},{&l_217[3],(void*)0,(void*)0,(void*)0}},{{&l_217[3],(void*)0,(void*)0,(void*)0},{&l_217[3],(void*)0,(void*)0,(void*)0},{&l_217[3],(void*)0,(void*)0,(void*)0},{&l_217[3],(void*)0,(void*)0,(void*)0}}};
            uint16_t l_311 = 0xC38CL;
            int i, j, k;
            l_40.w |= (+((safe_rshift_func_int16_t_s_u(p_38, 15)) > (((+p_1356->g_101.sc) > (safe_add_func_uint32_t_u_u(((safe_mul_func_uint8_t_u_u(((((((l_288 ^ (safe_add_func_int8_t_s_s(p_1356->g_273.s2, (**l_107)))) | (++(*l_292))) <= (((*l_296) = ((*l_295) &= p_1356->g_174.y)) , (safe_mul_func_int16_t_s_s((((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 8))(p_1356->g_300.xxxyxxxy)), ((VECTOR(uint32_t, 2))(l_301.xy)).yyxyyyxy))).s63)), 4294967295UL, 0xE84B7FC4L, ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(max(((VECTOR(uint32_t, 8))(l_302.s74711427)).s4664447157051376, (uint32_t)(((p_38 , &p_1356->g_93) == (void*)0) <= p_1356->g_36)))).s3f)).xyyyyxxxxxxxyxxx)).sbf, ((VECTOR(uint32_t, 2))(1UL))))), 0xAA6FA6C3L, 0xED7406FBL)).s67, ((VECTOR(uint32_t, 2))(1UL))))).even > 0xC0FC3224L), (**l_107))))) , 0x1B2B3D23L) != 0x3082A610L) , (**l_107)), p_38)) <= (-1L)), 0x32379CF2L))) != p_38)));
            (*l_107) = (p_1356->g_304 , &p_1356->g_82);
            l_308--;
            l_311++;
        }
    }
    else
    { /* block id: 90 */
        int32_t l_316 = 2L;
        uint8_t *l_318[1][9] = {{&l_308,&l_308,&l_308,&l_308,&l_308,&l_308,&l_308,&l_308,&l_308}};
        uint32_t *l_320 = (void*)0;
        uint32_t **l_319[10] = {&l_320,&l_320,&l_320,&l_320,&l_320,&l_320,&l_320,&l_320,&l_320,&l_320};
        uint32_t **l_322[7][9] = {{&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320},{&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320},{&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320},{&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320},{&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320},{&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320},{&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320,&l_320,(void*)0,&l_320}};
        uint32_t ***l_321 = &l_322[6][1];
        uint32_t **l_324[8] = {&l_320,&l_320,&l_320,&l_320,&l_320,&l_320,&l_320,&l_320};
        uint32_t ***l_323[10][4][4] = {{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}},{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}},{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}},{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}},{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}},{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}},{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}},{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}},{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}},{{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]},{&l_324[0],&l_324[0],&l_324[0],&l_324[0]}}};
        uint32_t l_330[10][1];
        VECTOR(int8_t, 8) l_335 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x08L), 0x08L), 0x08L, (-1L), 0x08L);
        union U2 **l_342 = &p_1356->g_141;
        int64_t **l_348 = (void*)0;
        int64_t ***l_349 = &l_348;
        int i, j, k;
        for (i = 0; i < 10; i++)
        {
            for (j = 0; j < 1; j++)
                l_330[i][j] = 0UL;
        }
        p_1356->g_325[2][0][5] = ((safe_mul_func_int16_t_s_s(l_316, ((p_1356->g_262.y = ((VECTOR(uint8_t, 8))(l_317.xyyxyyyx)).s3) | p_38))) , ((*l_321) = (l_319[8] = l_319[8])));
        l_327[6] = &p_1356->g_2;
        for (p_1356->g_297 = (-30); (p_1356->g_297 > 9); p_1356->g_297++)
        { /* block id: 98 */
            uint64_t l_331 = 18446744073709551612UL;
            VECTOR(int8_t, 16) l_334 = (VECTOR(int8_t, 16))(0x71L, (VECTOR(int8_t, 4))(0x71L, (VECTOR(int8_t, 2))(0x71L, 0x44L), 0x44L), 0x44L, 0x71L, 0x44L, (VECTOR(int8_t, 2))(0x71L, 0x44L), (VECTOR(int8_t, 2))(0x71L, 0x44L), 0x71L, 0x44L, 0x71L, 0x44L);
            VECTOR(uint8_t, 8) l_337 = (VECTOR(uint8_t, 8))(0x2DL, (VECTOR(uint8_t, 4))(0x2DL, (VECTOR(uint8_t, 2))(0x2DL, 0xC2L), 0xC2L), 0xC2L, 0x2DL, 0xC2L);
            uint64_t *l_343 = &p_1356->g_259;
            uint64_t *l_344 = (void*)0;
            uint64_t *l_345 = (void*)0;
            int32_t l_346 = 0x240E25A2L;
            int8_t l_347[9][7][4] = {{{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L}},{{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L}},{{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L}},{{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L}},{{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L}},{{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L}},{{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L}},{{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L}},{{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L},{0x7BL,(-1L),0x77L,0L}}};
            int i, j, k;
            (*p_39) = (*p_1356->g_2);
            p_1356->g_174.x = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((*p_39) &= (l_330[9][0] | GROUP_DIVERGE(1, 1))), (l_331 == (p_1356->g_235 , ((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(p_1356->g_332.s10546651)))), ((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_333.s658a)).lo)).yyyyyyxx)).even, ((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 2))(0x20L, (-1L))).yxxx, ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(l_334.s8aac4a01ef845d30)))).s5f, ((VECTOR(int8_t, 2))(l_335.s24))))).xxxy))).wxxwxwyyxzzwyzww, ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_1356->g_336.yx)).yxxxxxyy)).s15, ((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 2))(9UL, 255UL)).xxyy, ((VECTOR(uint8_t, 2))(0x1FL, 1UL)).xyyx))).zwzwzyxy, ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x90L, 255UL)).yxxxyyxy)).s31, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 16))(l_337.s2500410602647550)).s4d, ((VECTOR(uint8_t, 8))(0x86L, 8UL, ((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))((p_38 > (p_1356->g_338 , (l_337.s3 > ((VECTOR(uint16_t, 4))(0xAA02L, ((VECTOR(uint16_t, 2))(l_339.s35)), 0x8C09L)).x))), ((VECTOR(uint8_t, 2))(0UL, 255UL)).hi, (safe_add_func_int32_t_s_s((((((((l_346 |= ((*l_343) = (l_342 != &p_1356->g_141))) < (l_347[8][2][1] != p_38)) || p_1356->g_75.y) & p_1356->g_143.y) & 18446744073709551615UL) & 0L) & p_38), 0UL)), ((VECTOR(uint8_t, 2))(0x85L)), GROUP_DIVERGE(2, 1), 4UL, 248UL)).s26, ((VECTOR(uint8_t, 2))(1UL)), ((VECTOR(uint8_t, 2))(9UL))))).xxxy, ((VECTOR(uint8_t, 4))(0x95L))))).yxyyzxxz, ((VECTOR(uint8_t, 8))(0UL)), ((VECTOR(uint8_t, 8))(0UL))))).hi)).yyxzzwwz, ((VECTOR(uint8_t, 8))(1UL))))).lo, ((VECTOR(uint8_t, 4))(0xBBL))))).x, 1UL, 0xE6L, p_38, 3UL, 247UL)).s00))).xxxx)).hi))).yxyyxxxy))).s07))).xyxyxyxxyyxxxyxx))).s4bdf))).zyyywzxy))), ((VECTOR(uint8_t, 8))(5UL))))).s37)).xxyyxyxy, (uint8_t)p_1356->g_300.y))).s5)), ((VECTOR(int32_t, 4))((-1L))), (*p_39), ((VECTOR(int32_t, 2))(0x46B3206FL)), 0x44936891L, (*p_1356->g_2), 1L, l_335.s7, (*p_1356->g_2), 9L, 0x211CC07AL)).sf785, ((VECTOR(int32_t, 4))((-8L))), ((VECTOR(int32_t, 4))(0x3024FCA2L))))).xzzwwxxwzzywzzxz)).s7;
        }
        (*l_349) = l_348;
    }
    if (((*p_1356->g_326) || (p_38 | (safe_unary_minus_func_int64_t_s((!(!p_38)))))))
    { /* block id: 107 */
        int16_t l_351[10][4][5] = {{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}},{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}},{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}},{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}},{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}},{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}},{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}},{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}},{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}},{{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L},{0x7F9BL,3L,1L,0x4BEEL,3L}}};
        int32_t l_352 = 1L;
        int32_t l_353 = 0x6F6263E9L;
        int32_t l_354[2][9][8] = {{{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L}},{{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L},{1L,1L,0L,0x3F6C53EEL,8L,0x163C9E20L,1L,0L}}};
        uint16_t *l_361 = &p_1356->g_304.f2;
        uint16_t *l_364[4];
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_364[i] = (void*)0;
        --l_355;
        (*p_1356->g_2) &= (safe_add_func_uint16_t_u_u((l_353 = (p_1356->g_360 , (--(*l_361)))), ((VECTOR(uint16_t, 2))(0xA99AL, 0UL)).even));
    }
    else
    { /* block id: 112 */
        VECTOR(uint16_t, 8) l_368 = (VECTOR(uint16_t, 8))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 1UL), 1UL), 1UL, 65528UL, 1UL);
        union U2 ***l_389 = (void*)0;
        int32_t l_408 = 0x2782119CL;
        int32_t l_419[2];
        uint32_t l_433 = 4294967287UL;
        uint8_t l_436[5][8][6] = {{{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL}},{{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL}},{{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL}},{{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL}},{{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL},{255UL,0x8AL,0x8CL,0x39L,0x46L,0x4CL}}};
        int64_t *l_454 = (void*)0;
        int64_t **l_453 = &l_454;
        union U1 *l_462 = &p_1356->g_451[6];
        uint16_t *l_469 = (void*)0;
        uint16_t *l_470 = &p_1356->g_235.f0;
        volatile struct S0 *l_476[10];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_419[i] = 0x128E30F9L;
        for (i = 0; i < 10; i++)
            l_476[i] = (void*)0;
        for (p_1356->g_235.f1.f0 = 10; (p_1356->g_235.f1.f0 <= 17); p_1356->g_235.f1.f0 = safe_add_func_int16_t_s_s(p_1356->g_235.f1.f0, 9))
        { /* block id: 115 */
            uint16_t l_371 = 0x36B9L;
            uint32_t l_374 = 1UL;
            int32_t l_377 = 0x12BEA5F6L;
            int64_t *l_386 = (void*)0;
            uint32_t **l_388 = (void*)0;
            int32_t l_437 = 0x70856D2AL;
            int32_t l_438 = 5L;
            int32_t l_439 = 0x69E6345DL;
            int32_t l_440 = (-1L);
            int32_t l_441 = 1L;
            int32_t l_442 = 0x74095FE4L;
            int32_t l_443 = (-1L);
            int32_t l_444 = (-1L);
            int32_t l_445[5][6] = {{0x717E9F13L,0x49DB6A04L,0x313C4EE6L,0x49DB6A04L,0x717E9F13L,0x717E9F13L},{0x717E9F13L,0x49DB6A04L,0x313C4EE6L,0x49DB6A04L,0x717E9F13L,0x717E9F13L},{0x717E9F13L,0x49DB6A04L,0x313C4EE6L,0x49DB6A04L,0x717E9F13L,0x717E9F13L},{0x717E9F13L,0x49DB6A04L,0x313C4EE6L,0x49DB6A04L,0x717E9F13L,0x717E9F13L},{0x717E9F13L,0x49DB6A04L,0x313C4EE6L,0x49DB6A04L,0x717E9F13L,0x717E9F13L}};
            union U1 *l_450 = &p_1356->g_451[6];
            int32_t *l_455 = &l_444;
            union U3 **l_457[10] = {&l_456,&l_456,&l_456,&l_456,&l_456,&l_456,&l_456,&l_456,&l_456,&l_456};
            int i, j;
            if (((*p_39) = ((p_1356->g_367 | ((VECTOR(uint16_t, 16))(65535UL, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 2))(l_368.s72)).yxxxxyyx, ((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(l_369.s3757236565141643)))).s13de, ((VECTOR(uint16_t, 16))(0x4B5DL, 0UL, 6UL, ((VECTOR(uint16_t, 2))(p_1356->g_370.xx)), 1UL, l_371, 0x07D5L, ((VECTOR(uint16_t, 2))(8UL, 0x4126L)), ((p_1356->g_174.y & (l_377 = ((safe_add_func_uint32_t_u_u(l_374, ((VECTOR(uint32_t, 4))(0x858E5C72L, (l_375 == &p_1356->g_325[0][0][5]), 0UL, 3UL)).z)) , ((VECTOR(int64_t, 8))(p_1356->g_376.zzwwzwzw)).s7))) && l_368.s4), 0x0B2CL, (((safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 4))((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u(((p_1356->g_376.w = l_377) == ((l_388 = l_387) == (void*)0)), 8)), 0)), 1UL, 0x23E9L, 0xD9EAL)).even, ((VECTOR(uint16_t, 2))(1UL))))), ((VECTOR(uint16_t, 8))(1UL)), ((VECTOR(uint16_t, 2))(0x88AAL)), GROUP_DIVERGE(0, 1), ((VECTOR(uint16_t, 2))(0UL)), 4UL)).s9, p_1356->g_75.z)), 1L)) , l_389) != l_390), 1UL, 0xDB4EL, 0xF61EL)).sef64))).wyywwyzzzwxxxzwz)).sfeb2, ((VECTOR(uint16_t, 4))(0xDE5AL))))).wzzzyyyx)).s6520411705344610, ((VECTOR(uint16_t, 16))(0xB9A5L))))).hi))).s37, ((VECTOR(uint16_t, 2))(0x9DBDL))))), ((VECTOR(uint16_t, 2))(0xB416L))))), ((VECTOR(uint16_t, 2))(65533UL)), 7UL, ((VECTOR(uint16_t, 4))(0xBCD1L)), 65535UL, ((VECTOR(uint16_t, 2))(0xF4A7L)), l_374, 0x0749L, 65527UL)).s2) & 65535UL)))
            { /* block id: 120 */
                int32_t l_404 = 4L;
                int32_t l_405 = 1L;
                int32_t l_407 = 0x4D8D597EL;
                int32_t l_413 = 0L;
                int32_t l_416[4];
                int64_t l_446 = 0L;
                uint64_t l_447 = 6UL;
                int i;
                for (i = 0; i < 4; i++)
                    l_416[i] = 0x33E526E3L;
                for (p_38 = (-9); (p_38 < (-19)); --p_38)
                { /* block id: 123 */
                    int8_t l_398 = 0x69L;
                    int32_t *l_399 = (void*)0;
                    int32_t l_403 = 7L;
                    int32_t l_406 = 8L;
                    int32_t l_415 = 9L;
                    int32_t l_417 = (-1L);
                    int32_t l_426 = 0x4079F269L;
                    uint16_t l_427 = 2UL;
                    for (p_1356->g_87 = 0; (p_1356->g_87 >= 22); ++p_1356->g_87)
                    { /* block id: 126 */
                        int32_t **l_400 = &l_399;
                        union U2 *l_402 = &p_1356->g_84;
                        int32_t l_409 = 0x29AA26C4L;
                        int32_t l_410 = 2L;
                        int32_t l_411 = 0x109D06D2L;
                        int32_t l_412 = 0L;
                        int32_t l_414 = (-9L);
                        int32_t l_418 = 0L;
                        int32_t l_420 = 0x5E8E1C5BL;
                        int32_t l_421 = 0L;
                        int32_t l_422 = 0x79C91869L;
                        int32_t l_423 = (-1L);
                        int32_t l_424 = (-8L);
                        int32_t l_425[3][3];
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_425[i][j] = 0x46C62DB9L;
                        }
                        (*p_1356->g_2) = ((l_403 = (safe_rshift_func_uint8_t_u_s(((l_398 &= (p_1356->g_117 = ((*l_92) = l_377))) & ((p_38 , (((*l_400) = l_399) == (void*)0)) | 0xF15A8779L)), (((((VECTOR(uint64_t, 2))(0UL, 0x4645F7928419F109L)).odd ^ ((VECTOR(uint64_t, 8))(p_1356->g_401.yyyxxxxy)).s4) , l_402) == (void*)0)))) | p_38);
                        ++l_427;
                    }
                    for (p_1356->g_304.f3 = 0; (p_1356->g_304.f3 < (-22)); p_1356->g_304.f3 = safe_sub_func_uint16_t_u_u(p_1356->g_304.f3, 9))
                    { /* block id: 137 */
                        int32_t l_432 = 1L;
                        --l_433;
                    }
                    l_436[0][0][0] &= (-4L);
                }
                ++l_447;
                l_452 = l_450;
                (*p_39) |= (0x4CL != ((void*)0 == l_453));
            }
            else
            { /* block id: 145 */
                p_39 = &p_1356->g_3;
                l_455 = &p_1356->g_82;
                if (p_1356->g_67)
                    goto lbl_472;
            }
            p_1356->g_458 = l_456;
            l_459++;
        }
        if (((*p_39) = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0x30607954L, 9L, ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 2))((-1L), 0x6218B16AL)).xxxxyxyyyxyxxyxy))))).sd0, ((VECTOR(int32_t, 16))((((*l_470) |= ((1UL && ((*p_39) ^ ((p_1356->g_174.x &= (GROUP_DIVERGE(1, 1) , ((void*)0 != &l_436[0][0][0]))) >= (7UL | ((void*)0 != l_462))))) == (safe_add_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(0xFEB9L, ((*l_92) = p_1356->g_367))) | 0x4582L), p_1356->g_304.f2)) ^ p_38), (*p_1356->g_2))))) < 0x03C1L), ((VECTOR(int32_t, 2))(0x7A6C4C37L)), (*p_39), ((VECTOR(int32_t, 4))(6L)), 0x0213691DL, ((VECTOR(int32_t, 2))(1L)), 0x1702E8E0L, (-9L), (*p_1356->g_2), (-1L), 0x70D24917L)).s77))), ((VECTOR(int32_t, 2))((-3L))), 0x2A497C5CL, 0x7A492D1CL)))).s6))
        { /* block id: 156 */
lbl_472:
            if (l_308)
                goto lbl_471;
            p_1356->g_477 = p_1356->g_473;
        }
        else
        { /* block id: 160 */
            uint32_t l_478 = 0x3ED713D5L;
            l_478++;
        }
    }
    p_1356->g_168.sa ^= (safe_lshift_func_int8_t_s_s(0x70L, ((*l_495) |= (safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_1356->g_487.scd18)), GROUP_DIVERGE(1, 1), (p_1356->g_488 , ((*p_1356->g_326) , ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 8))(((((0L <= (safe_mod_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(((void*)0 == p_39), ((*p_1356->g_326) != (((((p_1356->g_141 = l_493) != (void*)0) >= (*p_1356->g_2)) < l_494) != p_1356->g_75.w)))), 255UL))) < p_38) || 0x6EL) ^ 0L), 0UL, 247UL, 0x2FL, 0x72L, 1UL, 246UL, 0x29L)).s41, (uint8_t)p_1356->g_473.f1, (uint8_t)p_1356->g_82))).hi)), 255UL, 0x3DL)).s02, ((VECTOR(uint8_t, 2))(0xB2L))))), 0x2FL, 7UL, 248UL, p_38, ((VECTOR(uint8_t, 2))(0x13L)), 1UL, 0xFCL, 255UL, 0x41L, p_1356->g_304.f1, p_38, 0x93L, 0x64L)).hi, ((VECTOR(uint8_t, 8))(0x16L))))).s5046457677235021, ((VECTOR(uint8_t, 16))(9UL)), ((VECTOR(uint8_t, 16))(0UL))))).s8, p_1356->g_376.z)), 5)))));
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_1356->g_3 p_1356->g_2 p_1356->g_75 p_1356->g_82 p_1356->g_87
 * writes: p_1356->g_67 p_1356->g_82 p_1356->g_86 p_1356->g_87
 */
uint16_t  func_45(int32_t * p_46, uint32_t * p_47, uint64_t  p_48, uint32_t * p_49, uint64_t  p_50, struct S4 * p_1356)
{ /* block id: 13 */
    uint16_t l_60[9] = {65531UL,65531UL,65531UL,65531UL,65531UL,65531UL,65531UL,65531UL,65531UL};
    VECTOR(int8_t, 2) l_74 = (VECTOR(int8_t, 2))(0x1FL, 0x36L);
    uint32_t l_80[9][8][3] = {{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}}};
    int32_t l_90 = 0L;
    int i, j, k;
    if (((safe_sub_func_uint8_t_u_u(p_1356->g_3, (func_56((safe_mod_func_int16_t_s_s((l_60[8] <= l_60[0]), 0x2BEBL)), p_1356) && ((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 16))(l_74.yxxyyxyyxyyxxyxy)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_1356->g_75.yyzz)))).xxwwzyyywyxzwxyz))).s5))) , (((safe_mod_func_int16_t_s_s((safe_add_func_int32_t_s_s((l_80[2][3][2] = (0x4BL && p_1356->g_75.y)), ((((void*)0 != p_49) || l_74.y) <= l_74.x))), (-1L))) > p_48) , l_80[2][3][2])))
    { /* block id: 19 */
        int32_t *l_81 = &p_1356->g_82;
        (*l_81) = l_60[0];
        return (*l_81);
    }
    else
    { /* block id: 22 */
        union U2 *l_83[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        union U2 **l_85[10] = {&l_83[6],&l_83[6],&l_83[6],&l_83[6],&l_83[6],&l_83[6],&l_83[6],&l_83[6],&l_83[6],&l_83[6]};
        int i;
        p_1356->g_86 = l_83[1];
        p_1356->g_87 |= l_80[5][7][2];
    }
    for (p_48 = (-4); (p_48 > 9); p_48++)
    { /* block id: 28 */
        l_90 = l_60[8];
        if (l_90)
            break;
    }
    return l_80[1][3][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1356->g_3 p_1356->g_2
 * writes: p_1356->g_67
 */
uint8_t  func_56(int32_t  p_57, struct S4 * p_1356)
{ /* block id: 14 */
    uint64_t l_65 = 0UL;
    uint32_t *l_66 = &p_1356->g_67;
    VECTOR(uint32_t, 16) l_70 = (VECTOR(uint32_t, 16))(0xB86553ECL, (VECTOR(uint32_t, 4))(0xB86553ECL, (VECTOR(uint32_t, 2))(0xB86553ECL, 0x843C9D40L), 0x843C9D40L), 0x843C9D40L, 0xB86553ECL, 0x843C9D40L, (VECTOR(uint32_t, 2))(0xB86553ECL, 0x843C9D40L), (VECTOR(uint32_t, 2))(0xB86553ECL, 0x843C9D40L), 0xB86553ECL, 0x843C9D40L, 0xB86553ECL, 0x843C9D40L);
    int32_t l_73 = 0L;
    int i;
    l_73 = (((safe_add_func_uint64_t_u_u((((safe_sub_func_int8_t_s_s((4294967295UL > ((*l_66) = l_65)), (safe_lshift_func_uint8_t_u_u((((1UL == l_65) , ((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_70.sdd)), ((VECTOR(uint32_t, 2))(0x2A30E0CEL, 4294967289UL)), 4294967287UL, (safe_mul_func_uint8_t_u_u(p_1356->g_3, (0x77405739L && ((l_70.s7 | (1L && 0x543CBDA12577EDFDL)) | p_57)))), 0x0E41E6F7L, 4294967290UL)).s2 <= (*p_1356->g_2)) > l_70.sc)) , 8UL), 2)))) , &p_1356->g_36) != l_66), p_1356->g_3)) , p_57) > 1L);
    return p_1356->g_3;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_1357;
    struct S4* p_1356 = &c_1357;
    struct S4 c_1358 = {
        1L, // p_1356->g_3
        &p_1356->g_3, // p_1356->g_2
        9UL, // p_1356->g_36
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xC425F8E1L), 0xC425F8E1L), 0xC425F8E1L, 0UL, 0xC425F8E1L), // p_1356->g_42
        6UL, // p_1356->g_67
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), // p_1356->g_75
        0x50C3B02FL, // p_1356->g_82
        {0L}, // p_1356->g_84
        (void*)0, // p_1356->g_86
        0x5168D339L, // p_1356->g_87
        4L, // p_1356->g_93
        (VECTOR(int16_t, 4))(0x608BL, (VECTOR(int16_t, 2))(0x608BL, 0x7ADCL), 0x7ADCL), // p_1356->g_96
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x28L), 0x28L), 0x28L, 1L, 0x28L, (VECTOR(int8_t, 2))(1L, 0x28L), (VECTOR(int8_t, 2))(1L, 0x28L), 1L, 0x28L, 1L, 0x28L), // p_1356->g_101
        0L, // p_1356->g_117
        {0x14L}, // p_1356->g_121
        (void*)0, // p_1356->g_141
        (VECTOR(uint16_t, 2))(0xC1EFL, 65535UL), // p_1356->g_143
        (VECTOR(int32_t, 16))(0x62FFC6FEL, (VECTOR(int32_t, 4))(0x62FFC6FEL, (VECTOR(int32_t, 2))(0x62FFC6FEL, (-6L)), (-6L)), (-6L), 0x62FFC6FEL, (-6L), (VECTOR(int32_t, 2))(0x62FFC6FEL, (-6L)), (VECTOR(int32_t, 2))(0x62FFC6FEL, (-6L)), 0x62FFC6FEL, (-6L), 0x62FFC6FEL, (-6L)), // p_1356->g_168
        (VECTOR(int32_t, 2))(0x0841C128L, 3L), // p_1356->g_174
        {0x4AADL}, // p_1356->g_235
        (VECTOR(int8_t, 2))(0x52L, 1L), // p_1356->g_241
        1UL, // p_1356->g_259
        (VECTOR(uint8_t, 2))(0UL, 0x04L), // p_1356->g_261
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xC5L), 0xC5L), // p_1356->g_262
        (VECTOR(uint64_t, 8))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 18446744073709551607UL, 18446744073709551608UL), // p_1356->g_273
        0x5179D26CL, // p_1356->g_297
        (VECTOR(uint32_t, 2))(0UL, 4294967295UL), // p_1356->g_300
        {0UL,0UL,0xFE2DL,0x70743EE978D43680L}, // p_1356->g_304
        &p_1356->g_67, // p_1356->g_326
        {{{&p_1356->g_326,&p_1356->g_326,(void*)0,&p_1356->g_326,&p_1356->g_326,&p_1356->g_326,(void*)0,&p_1356->g_326}},{{&p_1356->g_326,&p_1356->g_326,(void*)0,&p_1356->g_326,&p_1356->g_326,&p_1356->g_326,(void*)0,&p_1356->g_326}},{{&p_1356->g_326,&p_1356->g_326,(void*)0,&p_1356->g_326,&p_1356->g_326,&p_1356->g_326,(void*)0,&p_1356->g_326}}}, // p_1356->g_325
        (VECTOR(uint8_t, 8))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 247UL), 247UL), 247UL, 7UL, 247UL), // p_1356->g_332
        (VECTOR(uint8_t, 4))(0xF4L, (VECTOR(uint8_t, 2))(0xF4L, 0UL), 0UL), // p_1356->g_336
        {1UL,0x14604E60L,65535UL,0x09434700D1B67BD5L}, // p_1356->g_338
        {8UL}, // p_1356->g_360
        0x5CF855C0L, // p_1356->g_367
        (VECTOR(uint16_t, 2))(5UL, 1UL), // p_1356->g_370
        (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0L), 0L), // p_1356->g_376
        (VECTOR(uint64_t, 2))(1UL, 18446744073709551606UL), // p_1356->g_401
        {{0x151A460EL},{0x151A460EL},{0x151A460EL},{0x151A460EL},{0x151A460EL},{0x151A460EL},{0x151A460EL},{0x151A460EL}}, // p_1356->g_451
        (void*)0, // p_1356->g_458
        {4294967292UL,1UL,0xB32BL,0x211876B2E530132DL}, // p_1356->g_473
        {{&p_1356->g_473,&p_1356->g_473,&p_1356->g_473,&p_1356->g_473,&p_1356->g_473,&p_1356->g_473,&p_1356->g_473},{&p_1356->g_473,&p_1356->g_473,&p_1356->g_473,&p_1356->g_473,&p_1356->g_473,&p_1356->g_473,&p_1356->g_473}}, // p_1356->g_474
        {{(void*)0,&p_1356->g_473,&p_1356->g_338,&p_1356->g_338,(void*)0,(void*)0,(void*)0,(void*)0,&p_1356->g_338,&p_1356->g_338},{(void*)0,&p_1356->g_473,&p_1356->g_338,&p_1356->g_338,(void*)0,(void*)0,(void*)0,(void*)0,&p_1356->g_338,&p_1356->g_338},{(void*)0,&p_1356->g_473,&p_1356->g_338,&p_1356->g_338,(void*)0,(void*)0,(void*)0,(void*)0,&p_1356->g_338,&p_1356->g_338},{(void*)0,&p_1356->g_473,&p_1356->g_338,&p_1356->g_338,(void*)0,(void*)0,(void*)0,(void*)0,&p_1356->g_338,&p_1356->g_338},{(void*)0,&p_1356->g_473,&p_1356->g_338,&p_1356->g_338,(void*)0,(void*)0,(void*)0,(void*)0,&p_1356->g_338,&p_1356->g_338},{(void*)0,&p_1356->g_473,&p_1356->g_338,&p_1356->g_338,(void*)0,(void*)0,(void*)0,(void*)0,&p_1356->g_338,&p_1356->g_338},{(void*)0,&p_1356->g_473,&p_1356->g_338,&p_1356->g_338,(void*)0,(void*)0,(void*)0,(void*)0,&p_1356->g_338,&p_1356->g_338},{(void*)0,&p_1356->g_473,&p_1356->g_338,&p_1356->g_338,(void*)0,(void*)0,(void*)0,(void*)0,&p_1356->g_338,&p_1356->g_338}}, // p_1356->g_475
        {0xE552216FL,8UL,0x7227L,0x63CDB0846B8E69C2L}, // p_1356->g_477
        (VECTOR(uint8_t, 16))(0x1DL, (VECTOR(uint8_t, 4))(0x1DL, (VECTOR(uint8_t, 2))(0x1DL, 0x49L), 0x49L), 0x49L, 0x1DL, 0x49L, (VECTOR(uint8_t, 2))(0x1DL, 0x49L), (VECTOR(uint8_t, 2))(0x1DL, 0x49L), 0x1DL, 0x49L, 0x1DL, 0x49L), // p_1356->g_487
        {4294967290UL,9UL,0x53E3L,-1L}, // p_1356->g_488
        (VECTOR(uint8_t, 4))(0x93L, (VECTOR(uint8_t, 2))(0x93L, 6UL), 6UL), // p_1356->g_498
        {0x5B0935EAL,3UL,65528UL,-5L}, // p_1356->g_513
        &p_1356->g_513, // p_1356->g_515
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x3BL), 0x3BL), 0x3BL, 0UL, 0x3BL, (VECTOR(uint8_t, 2))(0UL, 0x3BL), (VECTOR(uint8_t, 2))(0UL, 0x3BL), 0UL, 0x3BL, 0UL, 0x3BL), // p_1356->g_539
        {1UL}, // p_1356->g_606
        &p_1356->g_141, // p_1356->g_642
        &p_1356->g_642, // p_1356->g_641
        {{{0xA2DFE076L,0UL,0x598CL,-2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0xA2DFE076L,0UL,0x598CL,-2L}},{{0xA2DFE076L,0UL,0x598CL,-2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0xA2DFE076L,0UL,0x598CL,-2L}},{{0xA2DFE076L,0UL,0x598CL,-2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0xA2DFE076L,0UL,0x598CL,-2L}},{{0xA2DFE076L,0UL,0x598CL,-2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0xA2DFE076L,0UL,0x598CL,-2L}},{{0xA2DFE076L,0UL,0x598CL,-2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0xA2DFE076L,0UL,0x598CL,-2L}},{{0xA2DFE076L,0UL,0x598CL,-2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0xA2DFE076L,0UL,0x598CL,-2L}},{{0xA2DFE076L,0UL,0x598CL,-2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0xA2DFE076L,0UL,0x598CL,-2L}},{{0xA2DFE076L,0UL,0x598CL,-2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0xA2DFE076L,0UL,0x598CL,-2L}},{{0xA2DFE076L,0UL,0x598CL,-2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0x7791ACA9L,4294967295UL,65528UL,0x1A8609D9511356C2L},{0xA2DFE076L,0UL,0x598CL,-2L}}}, // p_1356->g_652
        0x05931951B4A31762L, // p_1356->g_666
        (-1L), // p_1356->g_722
        0x54L, // p_1356->g_726
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1356->g_732
        &p_1356->g_732[3][5][4], // p_1356->g_731
        {1L}, // p_1356->g_739
        {0x7FEAC263L}, // p_1356->g_750
        {{{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}}},{{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}}},{{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}}},{{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}}},{{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}}},{{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}}},{{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}}},{{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}}},{{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}},{{-4L},{-2L},{0x27L}}}}, // p_1356->g_756
        (void*)0, // p_1356->g_761
        &p_1356->g_761, // p_1356->g_760
        {0UL,0x1BFB8ECBL,0x593AL,0x0F677BEA73697A57L}, // p_1356->g_775
        (VECTOR(int64_t, 16))(0x03F454E30C15A2D6L, (VECTOR(int64_t, 4))(0x03F454E30C15A2D6L, (VECTOR(int64_t, 2))(0x03F454E30C15A2D6L, (-1L)), (-1L)), (-1L), 0x03F454E30C15A2D6L, (-1L), (VECTOR(int64_t, 2))(0x03F454E30C15A2D6L, (-1L)), (VECTOR(int64_t, 2))(0x03F454E30C15A2D6L, (-1L)), 0x03F454E30C15A2D6L, (-1L), 0x03F454E30C15A2D6L, (-1L)), // p_1356->g_776
        (void*)0, // p_1356->g_796
        &p_1356->g_796, // p_1356->g_795
        {0x20L}, // p_1356->g_812
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0F0C3269L), 0x0F0C3269L), // p_1356->g_813
        {0x61C6A4BAL,0xFF350713L,65532UL,0x54903DA72624B04EL}, // p_1356->g_824
        {0xE584D4F0L,4294967287UL,0x516BL,1L}, // p_1356->g_825
        &p_1356->g_2, // p_1356->g_836
        {0x0ACC98E1L,0UL,1UL,0x4713064EA8205CC9L}, // p_1356->g_837
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xDD11L), 0xDD11L), 0xDD11L, 1UL, 0xDD11L), // p_1356->g_869
        (VECTOR(int16_t, 2))(0x144AL, (-1L)), // p_1356->g_874
        (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), (-8L)), (-8L)), // p_1356->g_880
        (VECTOR(uint16_t, 8))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0x742BL), 0x742BL), 0x742BL, 65531UL, 0x742BL), // p_1356->g_889
        (VECTOR(int16_t, 4))(0x3D68L, (VECTOR(int16_t, 2))(0x3D68L, 5L), 5L), // p_1356->g_890
        (VECTOR(uint16_t, 8))(0x2190L, (VECTOR(uint16_t, 4))(0x2190L, (VECTOR(uint16_t, 2))(0x2190L, 6UL), 6UL), 6UL, 0x2190L, 6UL), // p_1356->g_891
        {{1L},{1L},{1L}}, // p_1356->g_896
        &p_1356->g_2, // p_1356->g_908
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1356->g_916
        &p_1356->g_141, // p_1356->g_958
        {{{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}}},{{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}}},{{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}}},{{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}}},{{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}}},{{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}},{{65534UL},{0x1A57L},{0xBC5FL},{0xAC34L}}}}, // p_1356->g_972
        (VECTOR(uint8_t, 4))(0xA8L, (VECTOR(uint8_t, 2))(0xA8L, 246UL), 246UL), // p_1356->g_978
        {1UL}, // p_1356->g_988
        0x85L, // p_1356->g_991
        (VECTOR(int8_t, 16))(0x78L, (VECTOR(int8_t, 4))(0x78L, (VECTOR(int8_t, 2))(0x78L, 0x1EL), 0x1EL), 0x1EL, 0x78L, 0x1EL, (VECTOR(int8_t, 2))(0x78L, 0x1EL), (VECTOR(int8_t, 2))(0x78L, 0x1EL), 0x78L, 0x1EL, 0x78L, 0x1EL), // p_1356->g_1007
        (void*)0, // p_1356->g_1011
        {{&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011},{&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011},{&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011},{&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011},{&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011,&p_1356->g_1011}}, // p_1356->g_1010
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL), // p_1356->g_1017
        {{0xC09E4554L,0UL,2UL,-1L},{0xC09E4554L,0UL,2UL,-1L}}, // p_1356->g_1020
        {4294967295UL,0xB4355B2EL,0x54B2L,0x7C155AE0A80018A9L}, // p_1356->g_1039
        {0x9185L}, // p_1356->g_1061
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x76AFL), 0x76AFL), 0x76AFL, 0L, 0x76AFL), // p_1356->g_1082
        (VECTOR(int16_t, 2))(0x4CA3L, 4L), // p_1356->g_1083
        {0x08935C75L}, // p_1356->g_1086
        (VECTOR(uint32_t, 8))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0x62901411L), 0x62901411L), 0x62901411L, 4294967286UL, 0x62901411L), // p_1356->g_1108
        (VECTOR(uint64_t, 2))(0UL, 0x7DE6A6A37A4DC2ADL), // p_1356->g_1111
        (VECTOR(uint64_t, 2))(18446744073709551613UL, 1UL), // p_1356->g_1112
        {0x1CBFB391L}, // p_1356->g_1113
        (VECTOR(int64_t, 16))(0x3968C02A57CB4BFCL, (VECTOR(int64_t, 4))(0x3968C02A57CB4BFCL, (VECTOR(int64_t, 2))(0x3968C02A57CB4BFCL, 0x34549DF8FF3CE60EL), 0x34549DF8FF3CE60EL), 0x34549DF8FF3CE60EL, 0x3968C02A57CB4BFCL, 0x34549DF8FF3CE60EL, (VECTOR(int64_t, 2))(0x3968C02A57CB4BFCL, 0x34549DF8FF3CE60EL), (VECTOR(int64_t, 2))(0x3968C02A57CB4BFCL, 0x34549DF8FF3CE60EL), 0x3968C02A57CB4BFCL, 0x34549DF8FF3CE60EL, 0x3968C02A57CB4BFCL, 0x34549DF8FF3CE60EL), // p_1356->g_1124
        0x10F12319L, // p_1356->g_1128
        (VECTOR(uint16_t, 16))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 65528UL), 65528UL), 65528UL, 5UL, 65528UL, (VECTOR(uint16_t, 2))(5UL, 65528UL), (VECTOR(uint16_t, 2))(5UL, 65528UL), 5UL, 65528UL, 5UL, 65528UL), // p_1356->g_1143
        (VECTOR(uint64_t, 16))(0x797D0017A50EC0EBL, (VECTOR(uint64_t, 4))(0x797D0017A50EC0EBL, (VECTOR(uint64_t, 2))(0x797D0017A50EC0EBL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x797D0017A50EC0EBL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x797D0017A50EC0EBL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x797D0017A50EC0EBL, 18446744073709551615UL), 0x797D0017A50EC0EBL, 18446744073709551615UL, 0x797D0017A50EC0EBL, 18446744073709551615UL), // p_1356->g_1148
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint32_t, 2))(1UL, 0UL), (VECTOR(uint32_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_1356->g_1152
        (VECTOR(int8_t, 4))(0x4EL, (VECTOR(int8_t, 2))(0x4EL, 2L), 2L), // p_1356->g_1172
        {{0x6D5E2B58L,4UL,65531UL,-2L},{0x6D5E2B58L,4UL,65531UL,-2L},{0x6D5E2B58L,4UL,65531UL,-2L},{0x6D5E2B58L,4UL,65531UL,-2L},{0x6D5E2B58L,4UL,65531UL,-2L},{0x6D5E2B58L,4UL,65531UL,-2L},{0x6D5E2B58L,4UL,65531UL,-2L},{0x6D5E2B58L,4UL,65531UL,-2L},{0x6D5E2B58L,4UL,65531UL,-2L}}, // p_1356->g_1199
        0x8920FC64L, // p_1356->g_1207
        {(void*)0,&p_1356->g_2,(void*)0,(void*)0,&p_1356->g_2,(void*)0,(void*)0}, // p_1356->g_1210
        &p_1356->g_2, // p_1356->g_1220
        &p_1356->g_82, // p_1356->g_1221
        (VECTOR(int64_t, 8))(0x7EC7B13238A6D74BL, (VECTOR(int64_t, 4))(0x7EC7B13238A6D74BL, (VECTOR(int64_t, 2))(0x7EC7B13238A6D74BL, 0x71AC35FDA2F0C506L), 0x71AC35FDA2F0C506L), 0x71AC35FDA2F0C506L, 0x7EC7B13238A6D74BL, 0x71AC35FDA2F0C506L), // p_1356->g_1233
        (void*)0, // p_1356->g_1244
        {0x690E6F35L,4294967287UL,65535UL,-1L}, // p_1356->g_1273
        0x68E7BB425862D68FL, // p_1356->g_1275
        18446744073709551612UL, // p_1356->g_1279
        {0UL}, // p_1356->g_1280
        &p_1356->g_2, // p_1356->g_1296
        (-1L), // p_1356->g_1329
        &p_1356->g_82, // p_1356->g_1340
        &p_1356->g_84.f1, // p_1356->g_1341
        (void*)0, // p_1356->g_1343
        (void*)0, // p_1356->g_1344
        {4294967295UL,0xBB82127FL,9UL,0x1C2BC1C087C3A5C4L}, // p_1356->g_1346
        &p_1356->g_988.f1, // p_1356->g_1347
        (void*)0, // p_1356->g_1348
        {{{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221}}}, // p_1356->g_1349
        {{{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221}},{{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221},{&p_1356->g_1221,&p_1356->g_1221}}}, // p_1356->g_1350
        {{(void*)0,(void*)0,&p_1356->g_1221,&p_1356->g_1221,(void*)0,&p_1356->g_1221,&p_1356->g_1221},{(void*)0,(void*)0,&p_1356->g_1221,&p_1356->g_1221,(void*)0,&p_1356->g_1221,&p_1356->g_1221}}, // p_1356->g_1352
        {&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221,&p_1356->g_1221}, // p_1356->g_1353
        &p_1356->g_1221, // p_1356->g_1354
        sequence_input[get_global_id(0)], // p_1356->global_0_offset
        sequence_input[get_global_id(1)], // p_1356->global_1_offset
        sequence_input[get_global_id(2)], // p_1356->global_2_offset
        sequence_input[get_local_id(0)], // p_1356->local_0_offset
        sequence_input[get_local_id(1)], // p_1356->local_1_offset
        sequence_input[get_local_id(2)], // p_1356->local_2_offset
        sequence_input[get_group_id(0)], // p_1356->group_0_offset
        sequence_input[get_group_id(1)], // p_1356->group_1_offset
        sequence_input[get_group_id(2)], // p_1356->group_2_offset
    };
    c_1357 = c_1358;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1356);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1356->g_3, "p_1356->g_3", print_hash_value);
    transparent_crc(p_1356->g_36, "p_1356->g_36", print_hash_value);
    transparent_crc(p_1356->g_42.s0, "p_1356->g_42.s0", print_hash_value);
    transparent_crc(p_1356->g_42.s1, "p_1356->g_42.s1", print_hash_value);
    transparent_crc(p_1356->g_42.s2, "p_1356->g_42.s2", print_hash_value);
    transparent_crc(p_1356->g_42.s3, "p_1356->g_42.s3", print_hash_value);
    transparent_crc(p_1356->g_42.s4, "p_1356->g_42.s4", print_hash_value);
    transparent_crc(p_1356->g_42.s5, "p_1356->g_42.s5", print_hash_value);
    transparent_crc(p_1356->g_42.s6, "p_1356->g_42.s6", print_hash_value);
    transparent_crc(p_1356->g_42.s7, "p_1356->g_42.s7", print_hash_value);
    transparent_crc(p_1356->g_67, "p_1356->g_67", print_hash_value);
    transparent_crc(p_1356->g_75.x, "p_1356->g_75.x", print_hash_value);
    transparent_crc(p_1356->g_75.y, "p_1356->g_75.y", print_hash_value);
    transparent_crc(p_1356->g_75.z, "p_1356->g_75.z", print_hash_value);
    transparent_crc(p_1356->g_75.w, "p_1356->g_75.w", print_hash_value);
    transparent_crc(p_1356->g_82, "p_1356->g_82", print_hash_value);
    transparent_crc(p_1356->g_87, "p_1356->g_87", print_hash_value);
    transparent_crc(p_1356->g_93, "p_1356->g_93", print_hash_value);
    transparent_crc(p_1356->g_96.x, "p_1356->g_96.x", print_hash_value);
    transparent_crc(p_1356->g_96.y, "p_1356->g_96.y", print_hash_value);
    transparent_crc(p_1356->g_96.z, "p_1356->g_96.z", print_hash_value);
    transparent_crc(p_1356->g_96.w, "p_1356->g_96.w", print_hash_value);
    transparent_crc(p_1356->g_101.s0, "p_1356->g_101.s0", print_hash_value);
    transparent_crc(p_1356->g_101.s1, "p_1356->g_101.s1", print_hash_value);
    transparent_crc(p_1356->g_101.s2, "p_1356->g_101.s2", print_hash_value);
    transparent_crc(p_1356->g_101.s3, "p_1356->g_101.s3", print_hash_value);
    transparent_crc(p_1356->g_101.s4, "p_1356->g_101.s4", print_hash_value);
    transparent_crc(p_1356->g_101.s5, "p_1356->g_101.s5", print_hash_value);
    transparent_crc(p_1356->g_101.s6, "p_1356->g_101.s6", print_hash_value);
    transparent_crc(p_1356->g_101.s7, "p_1356->g_101.s7", print_hash_value);
    transparent_crc(p_1356->g_101.s8, "p_1356->g_101.s8", print_hash_value);
    transparent_crc(p_1356->g_101.s9, "p_1356->g_101.s9", print_hash_value);
    transparent_crc(p_1356->g_101.sa, "p_1356->g_101.sa", print_hash_value);
    transparent_crc(p_1356->g_101.sb, "p_1356->g_101.sb", print_hash_value);
    transparent_crc(p_1356->g_101.sc, "p_1356->g_101.sc", print_hash_value);
    transparent_crc(p_1356->g_101.sd, "p_1356->g_101.sd", print_hash_value);
    transparent_crc(p_1356->g_101.se, "p_1356->g_101.se", print_hash_value);
    transparent_crc(p_1356->g_101.sf, "p_1356->g_101.sf", print_hash_value);
    transparent_crc(p_1356->g_117, "p_1356->g_117", print_hash_value);
    transparent_crc(p_1356->g_143.x, "p_1356->g_143.x", print_hash_value);
    transparent_crc(p_1356->g_143.y, "p_1356->g_143.y", print_hash_value);
    transparent_crc(p_1356->g_168.s0, "p_1356->g_168.s0", print_hash_value);
    transparent_crc(p_1356->g_168.s1, "p_1356->g_168.s1", print_hash_value);
    transparent_crc(p_1356->g_168.s2, "p_1356->g_168.s2", print_hash_value);
    transparent_crc(p_1356->g_168.s3, "p_1356->g_168.s3", print_hash_value);
    transparent_crc(p_1356->g_168.s4, "p_1356->g_168.s4", print_hash_value);
    transparent_crc(p_1356->g_168.s5, "p_1356->g_168.s5", print_hash_value);
    transparent_crc(p_1356->g_168.s6, "p_1356->g_168.s6", print_hash_value);
    transparent_crc(p_1356->g_168.s7, "p_1356->g_168.s7", print_hash_value);
    transparent_crc(p_1356->g_168.s8, "p_1356->g_168.s8", print_hash_value);
    transparent_crc(p_1356->g_168.s9, "p_1356->g_168.s9", print_hash_value);
    transparent_crc(p_1356->g_168.sa, "p_1356->g_168.sa", print_hash_value);
    transparent_crc(p_1356->g_168.sb, "p_1356->g_168.sb", print_hash_value);
    transparent_crc(p_1356->g_168.sc, "p_1356->g_168.sc", print_hash_value);
    transparent_crc(p_1356->g_168.sd, "p_1356->g_168.sd", print_hash_value);
    transparent_crc(p_1356->g_168.se, "p_1356->g_168.se", print_hash_value);
    transparent_crc(p_1356->g_168.sf, "p_1356->g_168.sf", print_hash_value);
    transparent_crc(p_1356->g_174.x, "p_1356->g_174.x", print_hash_value);
    transparent_crc(p_1356->g_174.y, "p_1356->g_174.y", print_hash_value);
    transparent_crc(p_1356->g_235.f0, "p_1356->g_235.f0", print_hash_value);
    transparent_crc(p_1356->g_241.x, "p_1356->g_241.x", print_hash_value);
    transparent_crc(p_1356->g_241.y, "p_1356->g_241.y", print_hash_value);
    transparent_crc(p_1356->g_259, "p_1356->g_259", print_hash_value);
    transparent_crc(p_1356->g_261.x, "p_1356->g_261.x", print_hash_value);
    transparent_crc(p_1356->g_261.y, "p_1356->g_261.y", print_hash_value);
    transparent_crc(p_1356->g_262.x, "p_1356->g_262.x", print_hash_value);
    transparent_crc(p_1356->g_262.y, "p_1356->g_262.y", print_hash_value);
    transparent_crc(p_1356->g_262.z, "p_1356->g_262.z", print_hash_value);
    transparent_crc(p_1356->g_262.w, "p_1356->g_262.w", print_hash_value);
    transparent_crc(p_1356->g_273.s0, "p_1356->g_273.s0", print_hash_value);
    transparent_crc(p_1356->g_273.s1, "p_1356->g_273.s1", print_hash_value);
    transparent_crc(p_1356->g_273.s2, "p_1356->g_273.s2", print_hash_value);
    transparent_crc(p_1356->g_273.s3, "p_1356->g_273.s3", print_hash_value);
    transparent_crc(p_1356->g_273.s4, "p_1356->g_273.s4", print_hash_value);
    transparent_crc(p_1356->g_273.s5, "p_1356->g_273.s5", print_hash_value);
    transparent_crc(p_1356->g_273.s6, "p_1356->g_273.s6", print_hash_value);
    transparent_crc(p_1356->g_273.s7, "p_1356->g_273.s7", print_hash_value);
    transparent_crc(p_1356->g_297, "p_1356->g_297", print_hash_value);
    transparent_crc(p_1356->g_300.x, "p_1356->g_300.x", print_hash_value);
    transparent_crc(p_1356->g_300.y, "p_1356->g_300.y", print_hash_value);
    transparent_crc(p_1356->g_304.f0, "p_1356->g_304.f0", print_hash_value);
    transparent_crc(p_1356->g_304.f1, "p_1356->g_304.f1", print_hash_value);
    transparent_crc(p_1356->g_304.f2, "p_1356->g_304.f2", print_hash_value);
    transparent_crc(p_1356->g_304.f3, "p_1356->g_304.f3", print_hash_value);
    transparent_crc(p_1356->g_332.s0, "p_1356->g_332.s0", print_hash_value);
    transparent_crc(p_1356->g_332.s1, "p_1356->g_332.s1", print_hash_value);
    transparent_crc(p_1356->g_332.s2, "p_1356->g_332.s2", print_hash_value);
    transparent_crc(p_1356->g_332.s3, "p_1356->g_332.s3", print_hash_value);
    transparent_crc(p_1356->g_332.s4, "p_1356->g_332.s4", print_hash_value);
    transparent_crc(p_1356->g_332.s5, "p_1356->g_332.s5", print_hash_value);
    transparent_crc(p_1356->g_332.s6, "p_1356->g_332.s6", print_hash_value);
    transparent_crc(p_1356->g_332.s7, "p_1356->g_332.s7", print_hash_value);
    transparent_crc(p_1356->g_336.x, "p_1356->g_336.x", print_hash_value);
    transparent_crc(p_1356->g_336.y, "p_1356->g_336.y", print_hash_value);
    transparent_crc(p_1356->g_336.z, "p_1356->g_336.z", print_hash_value);
    transparent_crc(p_1356->g_336.w, "p_1356->g_336.w", print_hash_value);
    transparent_crc(p_1356->g_338.f0, "p_1356->g_338.f0", print_hash_value);
    transparent_crc(p_1356->g_338.f1, "p_1356->g_338.f1", print_hash_value);
    transparent_crc(p_1356->g_338.f2, "p_1356->g_338.f2", print_hash_value);
    transparent_crc(p_1356->g_338.f3, "p_1356->g_338.f3", print_hash_value);
    transparent_crc(p_1356->g_360.f0, "p_1356->g_360.f0", print_hash_value);
    transparent_crc(p_1356->g_367, "p_1356->g_367", print_hash_value);
    transparent_crc(p_1356->g_370.x, "p_1356->g_370.x", print_hash_value);
    transparent_crc(p_1356->g_370.y, "p_1356->g_370.y", print_hash_value);
    transparent_crc(p_1356->g_376.x, "p_1356->g_376.x", print_hash_value);
    transparent_crc(p_1356->g_376.y, "p_1356->g_376.y", print_hash_value);
    transparent_crc(p_1356->g_376.z, "p_1356->g_376.z", print_hash_value);
    transparent_crc(p_1356->g_376.w, "p_1356->g_376.w", print_hash_value);
    transparent_crc(p_1356->g_401.x, "p_1356->g_401.x", print_hash_value);
    transparent_crc(p_1356->g_401.y, "p_1356->g_401.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1356->g_451[i].f0, "p_1356->g_451[i].f0", print_hash_value);

    }
    transparent_crc(p_1356->g_473.f0, "p_1356->g_473.f0", print_hash_value);
    transparent_crc(p_1356->g_473.f1, "p_1356->g_473.f1", print_hash_value);
    transparent_crc(p_1356->g_473.f2, "p_1356->g_473.f2", print_hash_value);
    transparent_crc(p_1356->g_473.f3, "p_1356->g_473.f3", print_hash_value);
    transparent_crc(p_1356->g_477.f0, "p_1356->g_477.f0", print_hash_value);
    transparent_crc(p_1356->g_477.f1, "p_1356->g_477.f1", print_hash_value);
    transparent_crc(p_1356->g_477.f2, "p_1356->g_477.f2", print_hash_value);
    transparent_crc(p_1356->g_477.f3, "p_1356->g_477.f3", print_hash_value);
    transparent_crc(p_1356->g_487.s0, "p_1356->g_487.s0", print_hash_value);
    transparent_crc(p_1356->g_487.s1, "p_1356->g_487.s1", print_hash_value);
    transparent_crc(p_1356->g_487.s2, "p_1356->g_487.s2", print_hash_value);
    transparent_crc(p_1356->g_487.s3, "p_1356->g_487.s3", print_hash_value);
    transparent_crc(p_1356->g_487.s4, "p_1356->g_487.s4", print_hash_value);
    transparent_crc(p_1356->g_487.s5, "p_1356->g_487.s5", print_hash_value);
    transparent_crc(p_1356->g_487.s6, "p_1356->g_487.s6", print_hash_value);
    transparent_crc(p_1356->g_487.s7, "p_1356->g_487.s7", print_hash_value);
    transparent_crc(p_1356->g_487.s8, "p_1356->g_487.s8", print_hash_value);
    transparent_crc(p_1356->g_487.s9, "p_1356->g_487.s9", print_hash_value);
    transparent_crc(p_1356->g_487.sa, "p_1356->g_487.sa", print_hash_value);
    transparent_crc(p_1356->g_487.sb, "p_1356->g_487.sb", print_hash_value);
    transparent_crc(p_1356->g_487.sc, "p_1356->g_487.sc", print_hash_value);
    transparent_crc(p_1356->g_487.sd, "p_1356->g_487.sd", print_hash_value);
    transparent_crc(p_1356->g_487.se, "p_1356->g_487.se", print_hash_value);
    transparent_crc(p_1356->g_487.sf, "p_1356->g_487.sf", print_hash_value);
    transparent_crc(p_1356->g_488.f0, "p_1356->g_488.f0", print_hash_value);
    transparent_crc(p_1356->g_488.f1, "p_1356->g_488.f1", print_hash_value);
    transparent_crc(p_1356->g_488.f2, "p_1356->g_488.f2", print_hash_value);
    transparent_crc(p_1356->g_488.f3, "p_1356->g_488.f3", print_hash_value);
    transparent_crc(p_1356->g_498.x, "p_1356->g_498.x", print_hash_value);
    transparent_crc(p_1356->g_498.y, "p_1356->g_498.y", print_hash_value);
    transparent_crc(p_1356->g_498.z, "p_1356->g_498.z", print_hash_value);
    transparent_crc(p_1356->g_498.w, "p_1356->g_498.w", print_hash_value);
    transparent_crc(p_1356->g_513.f0, "p_1356->g_513.f0", print_hash_value);
    transparent_crc(p_1356->g_513.f1, "p_1356->g_513.f1", print_hash_value);
    transparent_crc(p_1356->g_513.f2, "p_1356->g_513.f2", print_hash_value);
    transparent_crc(p_1356->g_513.f3, "p_1356->g_513.f3", print_hash_value);
    transparent_crc(p_1356->g_539.s0, "p_1356->g_539.s0", print_hash_value);
    transparent_crc(p_1356->g_539.s1, "p_1356->g_539.s1", print_hash_value);
    transparent_crc(p_1356->g_539.s2, "p_1356->g_539.s2", print_hash_value);
    transparent_crc(p_1356->g_539.s3, "p_1356->g_539.s3", print_hash_value);
    transparent_crc(p_1356->g_539.s4, "p_1356->g_539.s4", print_hash_value);
    transparent_crc(p_1356->g_539.s5, "p_1356->g_539.s5", print_hash_value);
    transparent_crc(p_1356->g_539.s6, "p_1356->g_539.s6", print_hash_value);
    transparent_crc(p_1356->g_539.s7, "p_1356->g_539.s7", print_hash_value);
    transparent_crc(p_1356->g_539.s8, "p_1356->g_539.s8", print_hash_value);
    transparent_crc(p_1356->g_539.s9, "p_1356->g_539.s9", print_hash_value);
    transparent_crc(p_1356->g_539.sa, "p_1356->g_539.sa", print_hash_value);
    transparent_crc(p_1356->g_539.sb, "p_1356->g_539.sb", print_hash_value);
    transparent_crc(p_1356->g_539.sc, "p_1356->g_539.sc", print_hash_value);
    transparent_crc(p_1356->g_539.sd, "p_1356->g_539.sd", print_hash_value);
    transparent_crc(p_1356->g_539.se, "p_1356->g_539.se", print_hash_value);
    transparent_crc(p_1356->g_539.sf, "p_1356->g_539.sf", print_hash_value);
    transparent_crc(p_1356->g_606.f0, "p_1356->g_606.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1356->g_652[i][j].f0, "p_1356->g_652[i][j].f0", print_hash_value);
            transparent_crc(p_1356->g_652[i][j].f1, "p_1356->g_652[i][j].f1", print_hash_value);
            transparent_crc(p_1356->g_652[i][j].f2, "p_1356->g_652[i][j].f2", print_hash_value);
            transparent_crc(p_1356->g_652[i][j].f3, "p_1356->g_652[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_1356->g_666, "p_1356->g_666", print_hash_value);
    transparent_crc(p_1356->g_722, "p_1356->g_722", print_hash_value);
    transparent_crc(p_1356->g_726, "p_1356->g_726", print_hash_value);
    transparent_crc(p_1356->g_739.f0, "p_1356->g_739.f0", print_hash_value);
    transparent_crc(p_1356->g_750.f0, "p_1356->g_750.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1356->g_756[i][j][k].f0, "p_1356->g_756[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1356->g_775.f0, "p_1356->g_775.f0", print_hash_value);
    transparent_crc(p_1356->g_775.f1, "p_1356->g_775.f1", print_hash_value);
    transparent_crc(p_1356->g_775.f2, "p_1356->g_775.f2", print_hash_value);
    transparent_crc(p_1356->g_775.f3, "p_1356->g_775.f3", print_hash_value);
    transparent_crc(p_1356->g_776.s0, "p_1356->g_776.s0", print_hash_value);
    transparent_crc(p_1356->g_776.s1, "p_1356->g_776.s1", print_hash_value);
    transparent_crc(p_1356->g_776.s2, "p_1356->g_776.s2", print_hash_value);
    transparent_crc(p_1356->g_776.s3, "p_1356->g_776.s3", print_hash_value);
    transparent_crc(p_1356->g_776.s4, "p_1356->g_776.s4", print_hash_value);
    transparent_crc(p_1356->g_776.s5, "p_1356->g_776.s5", print_hash_value);
    transparent_crc(p_1356->g_776.s6, "p_1356->g_776.s6", print_hash_value);
    transparent_crc(p_1356->g_776.s7, "p_1356->g_776.s7", print_hash_value);
    transparent_crc(p_1356->g_776.s8, "p_1356->g_776.s8", print_hash_value);
    transparent_crc(p_1356->g_776.s9, "p_1356->g_776.s9", print_hash_value);
    transparent_crc(p_1356->g_776.sa, "p_1356->g_776.sa", print_hash_value);
    transparent_crc(p_1356->g_776.sb, "p_1356->g_776.sb", print_hash_value);
    transparent_crc(p_1356->g_776.sc, "p_1356->g_776.sc", print_hash_value);
    transparent_crc(p_1356->g_776.sd, "p_1356->g_776.sd", print_hash_value);
    transparent_crc(p_1356->g_776.se, "p_1356->g_776.se", print_hash_value);
    transparent_crc(p_1356->g_776.sf, "p_1356->g_776.sf", print_hash_value);
    transparent_crc(p_1356->g_813.x, "p_1356->g_813.x", print_hash_value);
    transparent_crc(p_1356->g_813.y, "p_1356->g_813.y", print_hash_value);
    transparent_crc(p_1356->g_813.z, "p_1356->g_813.z", print_hash_value);
    transparent_crc(p_1356->g_813.w, "p_1356->g_813.w", print_hash_value);
    transparent_crc(p_1356->g_824.f0, "p_1356->g_824.f0", print_hash_value);
    transparent_crc(p_1356->g_824.f1, "p_1356->g_824.f1", print_hash_value);
    transparent_crc(p_1356->g_824.f2, "p_1356->g_824.f2", print_hash_value);
    transparent_crc(p_1356->g_824.f3, "p_1356->g_824.f3", print_hash_value);
    transparent_crc(p_1356->g_825.f0, "p_1356->g_825.f0", print_hash_value);
    transparent_crc(p_1356->g_825.f1, "p_1356->g_825.f1", print_hash_value);
    transparent_crc(p_1356->g_825.f2, "p_1356->g_825.f2", print_hash_value);
    transparent_crc(p_1356->g_825.f3, "p_1356->g_825.f3", print_hash_value);
    transparent_crc(p_1356->g_837.f0, "p_1356->g_837.f0", print_hash_value);
    transparent_crc(p_1356->g_837.f1, "p_1356->g_837.f1", print_hash_value);
    transparent_crc(p_1356->g_837.f2, "p_1356->g_837.f2", print_hash_value);
    transparent_crc(p_1356->g_837.f3, "p_1356->g_837.f3", print_hash_value);
    transparent_crc(p_1356->g_869.s0, "p_1356->g_869.s0", print_hash_value);
    transparent_crc(p_1356->g_869.s1, "p_1356->g_869.s1", print_hash_value);
    transparent_crc(p_1356->g_869.s2, "p_1356->g_869.s2", print_hash_value);
    transparent_crc(p_1356->g_869.s3, "p_1356->g_869.s3", print_hash_value);
    transparent_crc(p_1356->g_869.s4, "p_1356->g_869.s4", print_hash_value);
    transparent_crc(p_1356->g_869.s5, "p_1356->g_869.s5", print_hash_value);
    transparent_crc(p_1356->g_869.s6, "p_1356->g_869.s6", print_hash_value);
    transparent_crc(p_1356->g_869.s7, "p_1356->g_869.s7", print_hash_value);
    transparent_crc(p_1356->g_874.x, "p_1356->g_874.x", print_hash_value);
    transparent_crc(p_1356->g_874.y, "p_1356->g_874.y", print_hash_value);
    transparent_crc(p_1356->g_880.x, "p_1356->g_880.x", print_hash_value);
    transparent_crc(p_1356->g_880.y, "p_1356->g_880.y", print_hash_value);
    transparent_crc(p_1356->g_880.z, "p_1356->g_880.z", print_hash_value);
    transparent_crc(p_1356->g_880.w, "p_1356->g_880.w", print_hash_value);
    transparent_crc(p_1356->g_889.s0, "p_1356->g_889.s0", print_hash_value);
    transparent_crc(p_1356->g_889.s1, "p_1356->g_889.s1", print_hash_value);
    transparent_crc(p_1356->g_889.s2, "p_1356->g_889.s2", print_hash_value);
    transparent_crc(p_1356->g_889.s3, "p_1356->g_889.s3", print_hash_value);
    transparent_crc(p_1356->g_889.s4, "p_1356->g_889.s4", print_hash_value);
    transparent_crc(p_1356->g_889.s5, "p_1356->g_889.s5", print_hash_value);
    transparent_crc(p_1356->g_889.s6, "p_1356->g_889.s6", print_hash_value);
    transparent_crc(p_1356->g_889.s7, "p_1356->g_889.s7", print_hash_value);
    transparent_crc(p_1356->g_890.x, "p_1356->g_890.x", print_hash_value);
    transparent_crc(p_1356->g_890.y, "p_1356->g_890.y", print_hash_value);
    transparent_crc(p_1356->g_890.z, "p_1356->g_890.z", print_hash_value);
    transparent_crc(p_1356->g_890.w, "p_1356->g_890.w", print_hash_value);
    transparent_crc(p_1356->g_891.s0, "p_1356->g_891.s0", print_hash_value);
    transparent_crc(p_1356->g_891.s1, "p_1356->g_891.s1", print_hash_value);
    transparent_crc(p_1356->g_891.s2, "p_1356->g_891.s2", print_hash_value);
    transparent_crc(p_1356->g_891.s3, "p_1356->g_891.s3", print_hash_value);
    transparent_crc(p_1356->g_891.s4, "p_1356->g_891.s4", print_hash_value);
    transparent_crc(p_1356->g_891.s5, "p_1356->g_891.s5", print_hash_value);
    transparent_crc(p_1356->g_891.s6, "p_1356->g_891.s6", print_hash_value);
    transparent_crc(p_1356->g_891.s7, "p_1356->g_891.s7", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1356->g_896[i].f0, "p_1356->g_896[i].f0", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1356->g_972[i][j][k].f0, "p_1356->g_972[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1356->g_978.x, "p_1356->g_978.x", print_hash_value);
    transparent_crc(p_1356->g_978.y, "p_1356->g_978.y", print_hash_value);
    transparent_crc(p_1356->g_978.z, "p_1356->g_978.z", print_hash_value);
    transparent_crc(p_1356->g_978.w, "p_1356->g_978.w", print_hash_value);
    transparent_crc(p_1356->g_988.f1.f0, "p_1356->g_988.f1.f0", print_hash_value);
    transparent_crc(p_1356->g_988.f1.f1, "p_1356->g_988.f1.f1", print_hash_value);
    transparent_crc(p_1356->g_988.f1.f2, "p_1356->g_988.f1.f2", print_hash_value);
    transparent_crc(p_1356->g_988.f1.f3, "p_1356->g_988.f1.f3", print_hash_value);
    transparent_crc(p_1356->g_991, "p_1356->g_991", print_hash_value);
    transparent_crc(p_1356->g_1007.s0, "p_1356->g_1007.s0", print_hash_value);
    transparent_crc(p_1356->g_1007.s1, "p_1356->g_1007.s1", print_hash_value);
    transparent_crc(p_1356->g_1007.s2, "p_1356->g_1007.s2", print_hash_value);
    transparent_crc(p_1356->g_1007.s3, "p_1356->g_1007.s3", print_hash_value);
    transparent_crc(p_1356->g_1007.s4, "p_1356->g_1007.s4", print_hash_value);
    transparent_crc(p_1356->g_1007.s5, "p_1356->g_1007.s5", print_hash_value);
    transparent_crc(p_1356->g_1007.s6, "p_1356->g_1007.s6", print_hash_value);
    transparent_crc(p_1356->g_1007.s7, "p_1356->g_1007.s7", print_hash_value);
    transparent_crc(p_1356->g_1007.s8, "p_1356->g_1007.s8", print_hash_value);
    transparent_crc(p_1356->g_1007.s9, "p_1356->g_1007.s9", print_hash_value);
    transparent_crc(p_1356->g_1007.sa, "p_1356->g_1007.sa", print_hash_value);
    transparent_crc(p_1356->g_1007.sb, "p_1356->g_1007.sb", print_hash_value);
    transparent_crc(p_1356->g_1007.sc, "p_1356->g_1007.sc", print_hash_value);
    transparent_crc(p_1356->g_1007.sd, "p_1356->g_1007.sd", print_hash_value);
    transparent_crc(p_1356->g_1007.se, "p_1356->g_1007.se", print_hash_value);
    transparent_crc(p_1356->g_1007.sf, "p_1356->g_1007.sf", print_hash_value);
    transparent_crc(p_1356->g_1017.s0, "p_1356->g_1017.s0", print_hash_value);
    transparent_crc(p_1356->g_1017.s1, "p_1356->g_1017.s1", print_hash_value);
    transparent_crc(p_1356->g_1017.s2, "p_1356->g_1017.s2", print_hash_value);
    transparent_crc(p_1356->g_1017.s3, "p_1356->g_1017.s3", print_hash_value);
    transparent_crc(p_1356->g_1017.s4, "p_1356->g_1017.s4", print_hash_value);
    transparent_crc(p_1356->g_1017.s5, "p_1356->g_1017.s5", print_hash_value);
    transparent_crc(p_1356->g_1017.s6, "p_1356->g_1017.s6", print_hash_value);
    transparent_crc(p_1356->g_1017.s7, "p_1356->g_1017.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1356->g_1020[i].f0, "p_1356->g_1020[i].f0", print_hash_value);
        transparent_crc(p_1356->g_1020[i].f1, "p_1356->g_1020[i].f1", print_hash_value);
        transparent_crc(p_1356->g_1020[i].f2, "p_1356->g_1020[i].f2", print_hash_value);
        transparent_crc(p_1356->g_1020[i].f3, "p_1356->g_1020[i].f3", print_hash_value);

    }
    transparent_crc(p_1356->g_1039.f0, "p_1356->g_1039.f0", print_hash_value);
    transparent_crc(p_1356->g_1039.f1, "p_1356->g_1039.f1", print_hash_value);
    transparent_crc(p_1356->g_1039.f2, "p_1356->g_1039.f2", print_hash_value);
    transparent_crc(p_1356->g_1039.f3, "p_1356->g_1039.f3", print_hash_value);
    transparent_crc(p_1356->g_1061.f0, "p_1356->g_1061.f0", print_hash_value);
    transparent_crc(p_1356->g_1082.s0, "p_1356->g_1082.s0", print_hash_value);
    transparent_crc(p_1356->g_1082.s1, "p_1356->g_1082.s1", print_hash_value);
    transparent_crc(p_1356->g_1082.s2, "p_1356->g_1082.s2", print_hash_value);
    transparent_crc(p_1356->g_1082.s3, "p_1356->g_1082.s3", print_hash_value);
    transparent_crc(p_1356->g_1082.s4, "p_1356->g_1082.s4", print_hash_value);
    transparent_crc(p_1356->g_1082.s5, "p_1356->g_1082.s5", print_hash_value);
    transparent_crc(p_1356->g_1082.s6, "p_1356->g_1082.s6", print_hash_value);
    transparent_crc(p_1356->g_1082.s7, "p_1356->g_1082.s7", print_hash_value);
    transparent_crc(p_1356->g_1083.x, "p_1356->g_1083.x", print_hash_value);
    transparent_crc(p_1356->g_1083.y, "p_1356->g_1083.y", print_hash_value);
    transparent_crc(p_1356->g_1086.f0, "p_1356->g_1086.f0", print_hash_value);
    transparent_crc(p_1356->g_1108.s0, "p_1356->g_1108.s0", print_hash_value);
    transparent_crc(p_1356->g_1108.s1, "p_1356->g_1108.s1", print_hash_value);
    transparent_crc(p_1356->g_1108.s2, "p_1356->g_1108.s2", print_hash_value);
    transparent_crc(p_1356->g_1108.s3, "p_1356->g_1108.s3", print_hash_value);
    transparent_crc(p_1356->g_1108.s4, "p_1356->g_1108.s4", print_hash_value);
    transparent_crc(p_1356->g_1108.s5, "p_1356->g_1108.s5", print_hash_value);
    transparent_crc(p_1356->g_1108.s6, "p_1356->g_1108.s6", print_hash_value);
    transparent_crc(p_1356->g_1108.s7, "p_1356->g_1108.s7", print_hash_value);
    transparent_crc(p_1356->g_1111.x, "p_1356->g_1111.x", print_hash_value);
    transparent_crc(p_1356->g_1111.y, "p_1356->g_1111.y", print_hash_value);
    transparent_crc(p_1356->g_1112.x, "p_1356->g_1112.x", print_hash_value);
    transparent_crc(p_1356->g_1112.y, "p_1356->g_1112.y", print_hash_value);
    transparent_crc(p_1356->g_1113.f0, "p_1356->g_1113.f0", print_hash_value);
    transparent_crc(p_1356->g_1124.s0, "p_1356->g_1124.s0", print_hash_value);
    transparent_crc(p_1356->g_1124.s1, "p_1356->g_1124.s1", print_hash_value);
    transparent_crc(p_1356->g_1124.s2, "p_1356->g_1124.s2", print_hash_value);
    transparent_crc(p_1356->g_1124.s3, "p_1356->g_1124.s3", print_hash_value);
    transparent_crc(p_1356->g_1124.s4, "p_1356->g_1124.s4", print_hash_value);
    transparent_crc(p_1356->g_1124.s5, "p_1356->g_1124.s5", print_hash_value);
    transparent_crc(p_1356->g_1124.s6, "p_1356->g_1124.s6", print_hash_value);
    transparent_crc(p_1356->g_1124.s7, "p_1356->g_1124.s7", print_hash_value);
    transparent_crc(p_1356->g_1124.s8, "p_1356->g_1124.s8", print_hash_value);
    transparent_crc(p_1356->g_1124.s9, "p_1356->g_1124.s9", print_hash_value);
    transparent_crc(p_1356->g_1124.sa, "p_1356->g_1124.sa", print_hash_value);
    transparent_crc(p_1356->g_1124.sb, "p_1356->g_1124.sb", print_hash_value);
    transparent_crc(p_1356->g_1124.sc, "p_1356->g_1124.sc", print_hash_value);
    transparent_crc(p_1356->g_1124.sd, "p_1356->g_1124.sd", print_hash_value);
    transparent_crc(p_1356->g_1124.se, "p_1356->g_1124.se", print_hash_value);
    transparent_crc(p_1356->g_1124.sf, "p_1356->g_1124.sf", print_hash_value);
    transparent_crc(p_1356->g_1128, "p_1356->g_1128", print_hash_value);
    transparent_crc(p_1356->g_1143.s0, "p_1356->g_1143.s0", print_hash_value);
    transparent_crc(p_1356->g_1143.s1, "p_1356->g_1143.s1", print_hash_value);
    transparent_crc(p_1356->g_1143.s2, "p_1356->g_1143.s2", print_hash_value);
    transparent_crc(p_1356->g_1143.s3, "p_1356->g_1143.s3", print_hash_value);
    transparent_crc(p_1356->g_1143.s4, "p_1356->g_1143.s4", print_hash_value);
    transparent_crc(p_1356->g_1143.s5, "p_1356->g_1143.s5", print_hash_value);
    transparent_crc(p_1356->g_1143.s6, "p_1356->g_1143.s6", print_hash_value);
    transparent_crc(p_1356->g_1143.s7, "p_1356->g_1143.s7", print_hash_value);
    transparent_crc(p_1356->g_1143.s8, "p_1356->g_1143.s8", print_hash_value);
    transparent_crc(p_1356->g_1143.s9, "p_1356->g_1143.s9", print_hash_value);
    transparent_crc(p_1356->g_1143.sa, "p_1356->g_1143.sa", print_hash_value);
    transparent_crc(p_1356->g_1143.sb, "p_1356->g_1143.sb", print_hash_value);
    transparent_crc(p_1356->g_1143.sc, "p_1356->g_1143.sc", print_hash_value);
    transparent_crc(p_1356->g_1143.sd, "p_1356->g_1143.sd", print_hash_value);
    transparent_crc(p_1356->g_1143.se, "p_1356->g_1143.se", print_hash_value);
    transparent_crc(p_1356->g_1143.sf, "p_1356->g_1143.sf", print_hash_value);
    transparent_crc(p_1356->g_1148.s0, "p_1356->g_1148.s0", print_hash_value);
    transparent_crc(p_1356->g_1148.s1, "p_1356->g_1148.s1", print_hash_value);
    transparent_crc(p_1356->g_1148.s2, "p_1356->g_1148.s2", print_hash_value);
    transparent_crc(p_1356->g_1148.s3, "p_1356->g_1148.s3", print_hash_value);
    transparent_crc(p_1356->g_1148.s4, "p_1356->g_1148.s4", print_hash_value);
    transparent_crc(p_1356->g_1148.s5, "p_1356->g_1148.s5", print_hash_value);
    transparent_crc(p_1356->g_1148.s6, "p_1356->g_1148.s6", print_hash_value);
    transparent_crc(p_1356->g_1148.s7, "p_1356->g_1148.s7", print_hash_value);
    transparent_crc(p_1356->g_1148.s8, "p_1356->g_1148.s8", print_hash_value);
    transparent_crc(p_1356->g_1148.s9, "p_1356->g_1148.s9", print_hash_value);
    transparent_crc(p_1356->g_1148.sa, "p_1356->g_1148.sa", print_hash_value);
    transparent_crc(p_1356->g_1148.sb, "p_1356->g_1148.sb", print_hash_value);
    transparent_crc(p_1356->g_1148.sc, "p_1356->g_1148.sc", print_hash_value);
    transparent_crc(p_1356->g_1148.sd, "p_1356->g_1148.sd", print_hash_value);
    transparent_crc(p_1356->g_1148.se, "p_1356->g_1148.se", print_hash_value);
    transparent_crc(p_1356->g_1148.sf, "p_1356->g_1148.sf", print_hash_value);
    transparent_crc(p_1356->g_1152.s0, "p_1356->g_1152.s0", print_hash_value);
    transparent_crc(p_1356->g_1152.s1, "p_1356->g_1152.s1", print_hash_value);
    transparent_crc(p_1356->g_1152.s2, "p_1356->g_1152.s2", print_hash_value);
    transparent_crc(p_1356->g_1152.s3, "p_1356->g_1152.s3", print_hash_value);
    transparent_crc(p_1356->g_1152.s4, "p_1356->g_1152.s4", print_hash_value);
    transparent_crc(p_1356->g_1152.s5, "p_1356->g_1152.s5", print_hash_value);
    transparent_crc(p_1356->g_1152.s6, "p_1356->g_1152.s6", print_hash_value);
    transparent_crc(p_1356->g_1152.s7, "p_1356->g_1152.s7", print_hash_value);
    transparent_crc(p_1356->g_1152.s8, "p_1356->g_1152.s8", print_hash_value);
    transparent_crc(p_1356->g_1152.s9, "p_1356->g_1152.s9", print_hash_value);
    transparent_crc(p_1356->g_1152.sa, "p_1356->g_1152.sa", print_hash_value);
    transparent_crc(p_1356->g_1152.sb, "p_1356->g_1152.sb", print_hash_value);
    transparent_crc(p_1356->g_1152.sc, "p_1356->g_1152.sc", print_hash_value);
    transparent_crc(p_1356->g_1152.sd, "p_1356->g_1152.sd", print_hash_value);
    transparent_crc(p_1356->g_1152.se, "p_1356->g_1152.se", print_hash_value);
    transparent_crc(p_1356->g_1152.sf, "p_1356->g_1152.sf", print_hash_value);
    transparent_crc(p_1356->g_1172.x, "p_1356->g_1172.x", print_hash_value);
    transparent_crc(p_1356->g_1172.y, "p_1356->g_1172.y", print_hash_value);
    transparent_crc(p_1356->g_1172.z, "p_1356->g_1172.z", print_hash_value);
    transparent_crc(p_1356->g_1172.w, "p_1356->g_1172.w", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1356->g_1199[i].f0, "p_1356->g_1199[i].f0", print_hash_value);
        transparent_crc(p_1356->g_1199[i].f1, "p_1356->g_1199[i].f1", print_hash_value);
        transparent_crc(p_1356->g_1199[i].f2, "p_1356->g_1199[i].f2", print_hash_value);
        transparent_crc(p_1356->g_1199[i].f3, "p_1356->g_1199[i].f3", print_hash_value);

    }
    transparent_crc(p_1356->g_1207, "p_1356->g_1207", print_hash_value);
    transparent_crc(p_1356->g_1233.s0, "p_1356->g_1233.s0", print_hash_value);
    transparent_crc(p_1356->g_1233.s1, "p_1356->g_1233.s1", print_hash_value);
    transparent_crc(p_1356->g_1233.s2, "p_1356->g_1233.s2", print_hash_value);
    transparent_crc(p_1356->g_1233.s3, "p_1356->g_1233.s3", print_hash_value);
    transparent_crc(p_1356->g_1233.s4, "p_1356->g_1233.s4", print_hash_value);
    transparent_crc(p_1356->g_1233.s5, "p_1356->g_1233.s5", print_hash_value);
    transparent_crc(p_1356->g_1233.s6, "p_1356->g_1233.s6", print_hash_value);
    transparent_crc(p_1356->g_1233.s7, "p_1356->g_1233.s7", print_hash_value);
    transparent_crc(p_1356->g_1273.f0, "p_1356->g_1273.f0", print_hash_value);
    transparent_crc(p_1356->g_1273.f1, "p_1356->g_1273.f1", print_hash_value);
    transparent_crc(p_1356->g_1273.f2, "p_1356->g_1273.f2", print_hash_value);
    transparent_crc(p_1356->g_1273.f3, "p_1356->g_1273.f3", print_hash_value);
    transparent_crc(p_1356->g_1275, "p_1356->g_1275", print_hash_value);
    transparent_crc(p_1356->g_1279, "p_1356->g_1279", print_hash_value);
    transparent_crc(p_1356->g_1280.f0, "p_1356->g_1280.f0", print_hash_value);
    transparent_crc(p_1356->g_1329, "p_1356->g_1329", print_hash_value);
    transparent_crc(p_1356->g_1346.f0, "p_1356->g_1346.f0", print_hash_value);
    transparent_crc(p_1356->g_1346.f1, "p_1356->g_1346.f1", print_hash_value);
    transparent_crc(p_1356->g_1346.f2, "p_1356->g_1346.f2", print_hash_value);
    transparent_crc(p_1356->g_1346.f3, "p_1356->g_1346.f3", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
