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
    int32_t ** volatile g_31;
    uint32_t g_54;
    int32_t *g_76;
    int32_t **g_75;
    int16_t g_79[6][8];
    uint32_t g_80;
    union U2 g_82;
    int16_t g_83;
    int32_t g_84;
    uint32_t g_106;
    uint32_t g_108;
    int32_t g_112[7];
    uint64_t g_132;
    volatile int32_t * volatile * volatile * volatile g_159;
    volatile int32_t * volatile * volatile * volatile *g_158;
    int8_t g_166;
    uint16_t g_169;
    int64_t g_187;
    uint8_t g_190;
    int16_t g_225;
    uint32_t g_226;
    uint64_t *g_261;
    struct S0 g_266;
    struct S0 g_270;
    volatile struct S0 g_285;
    volatile struct S0 *g_284;
    volatile struct S0 **g_283[5][2];
    uint32_t *g_299;
    struct S0 *g_303;
    uint32_t g_305;
    uint16_t g_320[1];
    volatile int16_t g_356[7][7];
    volatile int16_t *g_355;
    volatile int16_t **g_354;
    union U2 g_365;
    union U2 g_366[5];
    union U2 g_367[4];
    union U2 g_368;
    union U2 g_369;
    union U2 g_370;
    union U2 g_371;
    union U2 g_372;
    union U2 g_373[1][8];
    union U2 g_374;
    union U2 g_375;
    union U2 g_376;
    union U2 g_377;
    union U2 g_378[7];
    union U2 g_379;
    union U2 g_380;
    union U2 g_381;
    union U2 g_382;
    union U2 g_383;
    volatile struct S0 g_420[3][9];
    volatile struct S0 *g_419;
    uint32_t g_429;
    struct S0 g_445;
    volatile uint8_t g_511;
    uint64_t g_579;
    volatile int32_t g_584;
    uint32_t g_610;
    uint32_t *g_609;
    uint8_t g_632;
    int32_t g_634;
    int32_t *g_633;
    int64_t * volatile g_680[1][1][10];
    int64_t * volatile * volatile g_679[10];
    int8_t g_692;
    int8_t g_694[7][3];
    union U1 g_737[2];
    union U1 *g_738;
    volatile struct S0 g_752;
    int8_t g_786;
    volatile uint16_t g_789;
    int64_t *g_808;
    struct S0 g_837;
    int32_t g_844;
    union U3 g_898;
    uint16_t *** volatile g_911;
    volatile struct S0 g_937;
    uint32_t g_939[1];
    volatile union U1 g_949;
    volatile union U1 g_972[4];
    volatile union U3 g_982[8];
    volatile union U3 g_1002;
    union U2 g_1003;
    volatile int8_t g_1016;
    volatile struct S0 g_1058;
    volatile int8_t g_1077;
    struct S0 g_1090;
    int64_t g_1101;
    volatile struct S0 g_1155;
    volatile struct S0 g_1160;
    volatile struct S0 g_1180;
    int16_t *g_1209;
    int16_t **g_1208[8][9];
    volatile struct S0 g_1214;
    struct S0 g_1231;
    volatile union U1 g_1268;
    uint64_t g_1273;
    volatile struct S0 g_1274[4];
    volatile struct S0 g_1275[4];
    volatile uint16_t g_1315;
    volatile uint16_t g_1336;
    volatile union U1 *g_1340;
    volatile union U1 ** volatile g_1339;
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
uint16_t  func_1(struct S4 * p_1343);
int32_t * func_5(int8_t  p_6, uint64_t  p_7, int64_t  p_8, int32_t * p_9, struct S4 * p_1343);
int8_t  func_10(uint32_t  p_11, struct S4 * p_1343);
int32_t  func_13(uint8_t  p_14, uint32_t  p_15, int32_t  p_16, int32_t * p_17, struct S4 * p_1343);
uint16_t  func_19(int32_t  p_20, int32_t  p_21, int32_t ** p_22, int32_t * p_23, int32_t ** p_24, struct S4 * p_1343);
int8_t  func_25(int64_t  p_26, int32_t  p_27, struct S4 * p_1343);
int64_t  func_28(int64_t  p_29, struct S4 * p_1343);
uint8_t  func_36(int32_t * p_37, int32_t  p_38, uint16_t  p_39, int32_t ** p_40, struct S4 * p_1343);
int32_t * func_41(uint32_t  p_42, int32_t ** p_43, int32_t  p_44, struct S4 * p_1343);
int8_t  func_58(int32_t * p_59, int64_t  p_60, struct S4 * p_1343);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1343->g_2 p_1343->g_3 p_1343->g_31 p_1343->g_79 p_1343->g_80 p_1343->g_83 p_1343->g_84 p_1343->g_75 p_1343->g_82.f2 p_1343->g_132 p_1343->g_108 p_1343->g_106 p_1343->g_54 p_1343->g_158 p_1343->g_169 p_1343->g_112 p_1343->g_76 p_1343->g_190 p_1343->g_226 p_1343->g_283 p_1343->g_305 p_1343->g_166 p_1343->g_270.f2 p_1343->g_320 p_1343->g_354 p_1343->g_266.f2 p_1343->g_225 p_1343->g_380.f1 p_1343->g_419 p_1343->g_270.f0 p_1343->g_371.f1 p_1343->g_285.f3 p_1343->g_579 p_1343->g_445.f2 p_1343->g_609 p_1343->g_270.f3 p_1343->g_445.f3 p_1343->g_632 p_1343->g_633 p_1343->g_376.f0 p_1343->g_355 p_1343->g_1002 p_1343->g_1003 p_1343->g_1016 p_1343->g_356 p_1343->g_429 p_1343->g_610 p_1343->g_837.f0 p_1343->g_694 p_1343->g_634 p_1343->g_285.f0 p_1343->g_1208 p_1343->g_1160.f1 p_1343->g_369.f2 p_1343->g_1214 p_1343->g_808 p_1343->g_187 p_1343->g_445.f1 p_1343->g_844 p_1343->g_1231 p_1343->g_284 p_1343->g_1160.f0 p_1343->g_383.f0 p_1343->g_939 p_1343->g_837.f1 p_1343->g_1268 p_1343->g_949.f0 p_1343->g_445.f0 p_1343->g_266.f3 p_1343->g_1274 p_1343->g_285.f2 p_1343->g_377.f2 p_1343->g_1090.f0 p_1343->g_1315 p_1343->g_1336 p_1343->g_1339
 * writes: p_1343->g_2 p_1343->g_3 p_1343->g_54 p_1343->g_75 p_1343->g_79 p_1343->g_80 p_1343->g_83 p_1343->g_84 p_1343->g_106 p_1343->g_82.f2 p_1343->g_112 p_1343->g_132 p_1343->g_76 p_1343->g_166 p_1343->g_169 p_1343->g_187 p_1343->g_190 p_1343->g_226 p_1343->g_108 p_1343->g_261 p_1343->g_266.f0 p_1343->g_299 p_1343->g_266.f2 p_1343->g_303 p_1343->g_305 p_1343->g_320 p_1343->g_354 p_1343->g_82.f1 p_1343->g_380.f1 p_1343->g_266.f3 p_1343->g_284 p_1343->g_429 p_1343->g_371.f1 p_1343->g_579 p_1343->g_609 p_1343->g_632 p_1343->g_634 p_1343->g_610 p_1343->g_808 p_1343->g_692 p_1343->g_445.f2 p_1343->g_368.f1 p_1343->g_1208 p_1343->g_369.f2 p_1343->g_694 p_1343->g_285 p_1343->g_420 p_1343->g_376.f1 p_1343->g_366.f1 p_1343->g_1273 p_1343->g_1275 p_1343->g_738 p_1343->g_377.f2 p_1343->g_1003.f2 p_1343->g_1090.f0 p_1343->g_1315 p_1343->g_1336 p_1343->g_1340
 */
uint16_t  func_1(struct S4 * p_1343)
{ /* block id: 4 */
    int32_t **l_4 = &p_1343->g_2;
    int16_t **l_605 = (void*)0;
    uint32_t *l_608 = (void*)0;
    uint32_t **l_611[1];
    int32_t l_624 = 4L;
    int64_t l_625 = (-5L);
    int64_t l_626 = 0x729DBD1B4162E51BL;
    int32_t *l_627 = &p_1343->g_378[6].f1;
    int32_t *l_628 = &p_1343->g_376.f1;
    int32_t *l_629 = &p_1343->g_368.f1;
    int32_t *l_630 = &p_1343->g_366[1].f1;
    int32_t *l_631[6] = {&l_624,&l_624,&l_624,&l_624,&l_624,&l_624};
    uint64_t *l_1188[3];
    uint32_t l_1228 = 0x9DD6A3ACL;
    uint16_t l_1294 = 65535UL;
    int32_t l_1295 = (-2L);
    int32_t l_1332 = 0x53FF7A9AL;
    int i;
    for (i = 0; i < 1; i++)
        l_611[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_1188[i] = &p_1343->g_579;
    (*l_4) = p_1343->g_2;
    l_631[2] = ((*l_4) = func_5(func_10(p_1343->g_3, p_1343), (safe_rshift_func_uint16_t_u_s(((((p_1343->g_632 &= ((safe_rshift_func_int16_t_s_u((((safe_sub_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((safe_div_func_int64_t_s_s(((safe_sub_func_uint16_t_u_u((((safe_unary_minus_func_int8_t_s(0x67L)) , l_605) != l_605), (((~(((safe_rshift_func_int8_t_s_u((l_608 == (p_1343->g_609 = p_1343->g_609)), 3)) | ((safe_mod_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1343->global_0_offset, get_global_id(0), 10), (((safe_mul_func_uint16_t_u_u(((p_1343->g_270.f3 | ((safe_mod_func_int16_t_s_s((((p_1343->g_270.f3 != p_1343->g_270.f3) && GROUP_DIVERGE(1, 1)) < p_1343->g_270.f2), 0x0500L)) <= 0L)) | 0x9EA4L), p_1343->g_445.f3)) <= l_624) && l_624))) , p_1343->g_225), 1UL)) , GROUP_DIVERGE(1, 1))) || p_1343->g_270.f3)) != p_1343->g_445.f2) < 0x573C95D2DD57CF03L))) >= p_1343->g_270.f0), l_624)), p_1343->g_270.f3)), l_625)) , &p_1343->g_610) != (void*)0), l_626)) != (-1L))) == 0UL) && 0xD4L) != p_1343->g_445.f2), p_1343->g_225)), p_1343->g_445.f3, p_1343->g_633, p_1343));
    if ((safe_lshift_func_int8_t_s_s((((++p_1343->g_579) , &p_1343->g_159) != &p_1343->g_159), p_1343->g_285.f3)))
    { /* block id: 479 */
        int16_t l_1193 = (-5L);
        union U2 *l_1197 = (void*)0;
        int32_t l_1199 = 0x32F1659FL;
        uint32_t l_1205 = 2UL;
        int8_t l_1225 = (-2L);
        int16_t **l_1269[7] = {&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209};
        int64_t *l_1278 = &p_1343->g_1231.f3;
        uint32_t l_1309[6][10] = {{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL}};
        int16_t l_1320 = 0x4023L;
        int32_t l_1324[8];
        int i, j;
        for (i = 0; i < 8; i++)
            l_1324[i] = (-10L);
        (*l_4) = (*p_1343->g_31);
        if ((safe_mul_func_uint8_t_u_u((0UL >= p_1343->g_285.f0), l_1193)))
        { /* block id: 481 */
            int32_t *l_1198 = &p_1343->g_3;
            uint8_t *l_1204 = &p_1343->g_190;
            int16_t ***l_1210[1][3][10] = {{{&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0]},{&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0]},{&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0],&p_1343->g_1208[7][0]}}};
            uint16_t l_1218 = 0x186CL;
            uint8_t l_1230 = 0x40L;
            union U1 *l_1281 = (void*)0;
            int32_t l_1322 = 0x1701CD84L;
            uint32_t l_1325 = 0xF25A6998L;
            int32_t l_1331[7];
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_1331[i] = 1L;
            (*l_4) = l_1198;
            if ((((--p_1343->g_132) , (safe_div_func_int32_t_s_s((((void*)0 == &l_1188[0]) , ((((*l_1204) = p_1343->g_610) || (GROUP_DIVERGE(0, 1) != l_1205)) > ((*p_1343->g_633) &= (*l_1198)))), ((safe_add_func_uint64_t_u_u(l_1205, (((+((*l_1198) & ((p_1343->g_1208[4][4] = p_1343->g_1208[4][4]) == (p_1343->g_1160.f1 , &p_1343->g_355)))) < (*l_1198)) ^ 0L))) ^ (*l_1198))))) , (*l_1198)))
            { /* block id: 488 */
                uint64_t l_1213 = 0UL;
                int16_t **l_1267 = &p_1343->g_1209;
                uint64_t *l_1272 = &p_1343->g_1273;
                for (p_1343->g_369.f2 = 0; (p_1343->g_369.f2 > 20); p_1343->g_369.f2 = safe_add_func_uint32_t_u_u(p_1343->g_369.f2, 1))
                { /* block id: 491 */
                    if (l_1213)
                    { /* block id: 492 */
                        uint32_t l_1217 = 0x5585F295L;
                        uint16_t *l_1226[3][8][5] = {{{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]}},{{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]}},{{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]},{&p_1343->g_1090.f2,&p_1343->g_837.f2,&p_1343->g_837.f2,&p_1343->g_1090.f2,&p_1343->g_320[0]}}};
                        int32_t l_1227 = 0L;
                        int8_t *l_1229 = &p_1343->g_694[4][2];
                        int i, j, k;
                        l_1199 = (p_1343->g_1214 , (((safe_div_func_int16_t_s_s((GROUP_DIVERGE(0, 1) & (1L < (((*p_1343->g_808) ^ (l_1217 , 0xBDC877007E2DE582L)) ^ ((*l_1204) = (((l_1218 , ((((safe_add_func_int8_t_s_s(0x4CL, l_1213)) | (((*l_1229) = ((safe_sub_func_uint16_t_u_u((l_1227 = ((FAKE_DIVERGE(p_1343->local_0_offset, get_local_id(0), 10) || (safe_sub_func_int64_t_s_s((-1L), l_1225))) <= 0x45A76239CA519CA7L)), l_1228)) && (*l_1198))) | l_1213)) , (**l_4)) < l_1213)) , p_1343->g_445.f1) <= l_1230))))), p_1343->g_166)) & 0L) == p_1343->g_844));
                        if ((*l_1198))
                            continue;
                        (*p_1343->g_284) = p_1343->g_1231;
                    }
                    else
                    { /* block id: 499 */
                        uint64_t l_1258 = 0xE83509CE8B6407A2L;
                        (*l_630) = ((+(p_1343->g_694[6][0] < (safe_rshift_func_int8_t_s_s(p_1343->g_1160.f0, 2)))) && ((((((safe_mod_func_int32_t_s_s((+(safe_mul_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((((p_1343->g_166 = p_1343->g_383.f0) & (safe_mul_func_int8_t_s_s(((safe_div_func_int16_t_s_s(((p_1343->g_1231.f2 > 0x07L) , (safe_sub_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((((((*l_1198) , ((*p_1343->g_609) && ((((*l_628) = (-8L)) ^ (safe_div_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((safe_sub_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_u((safe_add_func_int8_t_s_s(l_1225, p_1343->g_939[0])), l_1258)) < l_1213), l_1213)), p_1343->g_694[6][0])), GROUP_DIVERGE(1, 1)))) != (-1L)))) >= 0UL) ^ p_1343->g_694[4][1]) && (*p_1343->g_2)), (*l_1198))), (*l_1198)))), 0x5286L)) , (-9L)), l_1213))) <= l_1258) < l_1199), (*l_1198))), 0xD5L))), 0x1B4F4576L)) ^ (-7L)) | (*p_1343->g_808)) | l_1258) | p_1343->g_1231.f3) <= (*l_1198)));
                        return p_1343->g_837.f1;
                    }
                }
                (*p_1343->g_633) ^= (+(safe_rshift_func_uint16_t_u_s(((((safe_mod_func_int8_t_s_s(((((*l_1272) = (l_1213 < ((*p_1343->g_609) | (safe_sub_func_int8_t_s_s(((((((*l_1198) == 0x36L) & ((*p_1343->g_808) == (l_1267 != (p_1343->g_1268 , l_1269[5])))) == FAKE_DIVERGE(p_1343->local_0_offset, get_local_id(0), 10)) , ((safe_add_func_int16_t_s_s((*l_1198), p_1343->g_949.f0)) ^ l_1213)) & l_1213), 0x0BL))))) , &p_1343->g_579) != &p_1343->g_579), p_1343->g_445.f0)) == (*p_1343->g_609)) <= p_1343->g_266.f3) != (*l_1198)), l_1193)));
            }
            else
            { /* block id: 508 */
                union U1 **l_1282 = &p_1343->g_738;
                int32_t l_1285[8];
                int i;
                for (i = 0; i < 8; i++)
                    l_1285[i] = 1L;
                p_1343->g_1275[3] = p_1343->g_1274[2];
                (*p_1343->g_633) ^= (65535UL && (safe_lshift_func_int16_t_s_s(((void*)0 == l_1278), (((*l_1198) = (l_1199 | (((*l_1198) <= (l_1281 != ((*l_1282) = &p_1343->g_737[0]))) & (safe_rshift_func_int16_t_s_u(l_1193, p_1343->g_285.f2))))) >= l_1285[1]))));
            }
            for (p_1343->g_377.f2 = 0; (p_1343->g_377.f2 != 22); p_1343->g_377.f2++)
            { /* block id: 516 */
                int16_t l_1308 = (-1L);
                int32_t l_1310 = (-3L);
                int32_t l_1329 = 8L;
                int32_t l_1330 = (-1L);
                (*p_1343->g_633) ^= (l_1310 = ((safe_lshift_func_uint8_t_u_s(((*l_1204) = 1UL), 3)) , (safe_sub_func_int8_t_s_s(((l_1294 = (safe_lshift_func_int8_t_s_s(p_1343->g_270.f2, 4))) && l_1295), ((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s(((safe_lshift_func_int16_t_s_u((p_1343->g_54 , 0x77DEL), 2)) ^ (safe_add_func_int16_t_s_s(((l_1199 = (((*l_628) = (*p_1343->g_355)) || (safe_sub_func_int8_t_s_s((safe_sub_func_uint8_t_u_u((((**l_4) = l_1308) & l_1308), ((void*)0 == &p_1343->g_1273))), l_1225)))) && 0xD3E2D5C4275B8571L), l_1205))), l_1308)), l_1309[5][8])) > p_1343->g_112[2])))));
                for (p_1343->g_1003.f2 = 7; (p_1343->g_1003.f2 >= 0); p_1343->g_1003.f2 -= 1)
                { /* block id: 526 */
                    for (p_1343->g_305 = 0; (p_1343->g_305 <= 3); p_1343->g_305 += 1)
                    { /* block id: 529 */
                        uint32_t l_1311 = 0UL;
                        return l_1311;
                    }
                    for (p_1343->g_80 = 0; (p_1343->g_80 <= 0); p_1343->g_80 += 1)
                    { /* block id: 534 */
                        return (*l_1198);
                    }
                }
                for (p_1343->g_1090.f0 = (-10); (p_1343->g_1090.f0 < 24); p_1343->g_1090.f0 = safe_add_func_int16_t_s_s(p_1343->g_1090.f0, 4))
                { /* block id: 540 */
                    int32_t l_1314 = 0L;
                    int32_t l_1323[4][7] = {{0x77DFA6D4L,0x0FC1C7DAL,0x07A70753L,0x0FC1C7DAL,0x77DFA6D4L,0x77DFA6D4L,0x0FC1C7DAL},{0x77DFA6D4L,0x0FC1C7DAL,0x07A70753L,0x0FC1C7DAL,0x77DFA6D4L,0x77DFA6D4L,0x0FC1C7DAL},{0x77DFA6D4L,0x0FC1C7DAL,0x07A70753L,0x0FC1C7DAL,0x77DFA6D4L,0x77DFA6D4L,0x0FC1C7DAL},{0x77DFA6D4L,0x0FC1C7DAL,0x07A70753L,0x0FC1C7DAL,0x77DFA6D4L,0x77DFA6D4L,0x0FC1C7DAL}};
                    int i, j;
                    ++p_1343->g_1315;
                    for (p_1343->g_80 = 0; (p_1343->g_80 < 53); p_1343->g_80++)
                    { /* block id: 544 */
                        int16_t l_1321 = (-1L);
                        int32_t l_1328 = (-4L);
                        int32_t l_1333 = 1L;
                        int32_t l_1334 = 0x4CE6C290L;
                        int32_t l_1335 = (-1L);
                        --l_1325;
                        --p_1343->g_1336;
                        if ((*p_1343->g_633))
                            break;
                    }
                }
                if (l_1308)
                    break;
            }
        }
        else
        { /* block id: 552 */
            (*p_1343->g_1339) = &p_1343->g_949;
        }
    }
    else
    { /* block id: 555 */
        for (l_625 = 19; (l_625 < (-17)); --l_625)
        { /* block id: 558 */
            (*p_1343->g_31) = (*p_1343->g_31);
            (*p_1343->g_633) &= (*p_1343->g_2);
        }
    }
    return (**l_4);
}


/* ------------------------------------------ */
/* 
 * reads : p_1343->g_376.f0 p_1343->g_132 p_1343->g_112 p_1343->g_2 p_1343->g_3 p_1343->g_609 p_1343->g_83 p_1343->g_354 p_1343->g_355 p_1343->g_1002 p_1343->g_1003 p_1343->g_445.f2 p_1343->g_1016 p_1343->g_633 p_1343->g_270.f0 p_1343->g_356 p_1343->g_429 p_1343->g_610 p_1343->g_837.f0 p_1343->g_166 p_1343->g_694 p_1343->g_634 p_1343->g_320
 * writes: p_1343->g_634 p_1343->g_610 p_1343->g_632 p_1343->g_3 p_1343->g_808 p_1343->g_79 p_1343->g_692 p_1343->g_445.f2 p_1343->g_166 p_1343->g_368.f1
 */
int32_t * func_5(int8_t  p_6, uint64_t  p_7, int64_t  p_8, int32_t * p_9, struct S4 * p_1343)
{ /* block id: 253 */
    int64_t l_635 = 0x2E54056596CF2069L;
    int32_t l_636[1];
    int32_t **l_649 = &p_1343->g_2;
    uint8_t *l_663 = (void*)0;
    uint8_t *l_664 = &p_1343->g_632;
    uint64_t l_665 = 0x5952909D06D22335L;
    int8_t l_666 = (-9L);
    uint16_t *l_685 = (void*)0;
    int32_t l_745 = 1L;
    uint16_t l_762 = 0x1777L;
    int32_t l_763[8][8][2] = {{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}}};
    uint16_t l_770 = 65529UL;
    uint64_t l_889 = 0x92DCE8A5A378340CL;
    union U1 *l_891 = &p_1343->g_737[0];
    uint16_t **l_912 = (void*)0;
    uint8_t l_993[8][6] = {{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL}};
    int64_t **l_1006 = &p_1343->g_808;
    int16_t *l_1015 = &p_1343->g_79[2][5];
    int8_t *l_1017 = &l_666;
    uint32_t **l_1028 = &p_1343->g_609;
    uint16_t *l_1029 = &p_1343->g_445.f2;
    int16_t *l_1030[1][5];
    union U1 **l_1087[4];
    int32_t l_1132 = 1L;
    int32_t **l_1181 = &p_1343->g_633;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_636[i] = 0x2C388A77L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
            l_1030[i][j] = (void*)0;
    }
    for (i = 0; i < 4; i++)
        l_1087[i] = &p_1343->g_738;
    l_636[0] = ((*p_9) = l_635);
    if (((**l_649) = (safe_mul_func_int8_t_s_s(0x7AL, (safe_rshift_func_int16_t_s_u((~(((0x6C8FL > (safe_add_func_int8_t_s_s(p_1343->g_376.f0, (((safe_mul_func_int8_t_s_s((safe_mod_func_int16_t_s_s(p_1343->g_132, (safe_add_func_int64_t_s_s(((((void*)0 == l_649) & (safe_rshift_func_uint8_t_u_u(p_1343->g_112[0], (safe_rshift_func_uint16_t_u_u((((safe_unary_minus_func_int8_t_s(((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((*l_664) = (safe_div_func_int64_t_s_s((((*p_1343->g_609) = (**l_649)) >= (((safe_sub_func_uint16_t_u_u((0xC332L < p_7), 0x5278L)) <= 0x1FE8L) <= (**l_649))), 0x8F9A9C5A5D2223A8L))), l_665)), p_8)) > p_8))) , p_6) <= (**l_649)), 12))))) & (**l_649)), l_666)))), p_1343->g_83)) & (**l_649)) ^ (**l_649))))) || 18446744073709551615UL) , (**l_649))), 6))))))
    { /* block id: 259 */
        int16_t l_688 = 0x5ABFL;
        int32_t l_700 = 0x1FED43BBL;
        struct S0 *l_704 = (void*)0;
        int32_t l_774 = 0L;
        int16_t l_776 = 0x371DL;
        int32_t l_779 = (-1L);
        int32_t l_784 = 1L;
        int32_t l_788 = 0x0D68B289L;
        int32_t l_794 = 0x12DCF295L;
        int32_t l_795 = 0x2A748D56L;
        int32_t l_796 = 0x6AE6FA64L;
        int64_t *l_817[4] = {&p_1343->g_270.f3,&p_1343->g_270.f3,&p_1343->g_270.f3,&p_1343->g_270.f3};
        int64_t l_888 = 0x5BB00F40E55760AAL;
        uint16_t **l_910 = &l_685;
        int8_t l_975[7];
        int i;
        for (i = 0; i < 7; i++)
            l_975[i] = 0L;
        for (p_7 = 0; (p_7 <= 6); p_7 += 1)
        { /* block id: 262 */
            uint32_t l_711 = 4294967295UL;
            uint16_t l_725 = 0xA6B9L;
            int32_t l_732 = (-10L);
            union U2 *l_761 = &p_1343->g_370;
            int32_t l_775 = 0x668E88D3L;
            int32_t *l_792 = &l_732;
            int32_t *l_793[7][7] = {{&l_775,&l_784,&l_788,&l_763[2][1][1],&l_788,&l_784,&l_775},{&l_775,&l_784,&l_788,&l_763[2][1][1],&l_788,&l_784,&l_775},{&l_775,&l_784,&l_788,&l_763[2][1][1],&l_788,&l_784,&l_775},{&l_775,&l_784,&l_788,&l_763[2][1][1],&l_788,&l_784,&l_775},{&l_775,&l_784,&l_788,&l_763[2][1][1],&l_788,&l_784,&l_775},{&l_775,&l_784,&l_788,&l_763[2][1][1],&l_788,&l_784,&l_775},{&l_775,&l_784,&l_788,&l_763[2][1][1],&l_788,&l_784,&l_775}};
            uint8_t l_797 = 0xAAL;
            int64_t *l_807[4][7][4] = {{{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187}},{{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187}},{{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187}},{{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187},{&p_1343->g_187,&p_1343->g_187,&l_635,&p_1343->g_187}}};
            int8_t *l_899 = &l_666;
            int i, j, k;
            (1 + 1);
        }
    }
    else
    { /* block id: 384 */
        int16_t *l_989 = &p_1343->g_225;
        int32_t *l_990 = &l_763[3][0][0];
        int32_t l_991 = 0L;
        int32_t l_992 = 1L;
        (**l_649) |= (18446744073709551606UL & (l_989 != (*p_1343->g_354)));
        ++l_993[4][2];
        (*l_990) |= ((*p_1343->g_2) = (safe_mul_func_int16_t_s_s(p_7, 0x7A34L)));
    }
    (*p_1343->g_633) = ((safe_mul_func_int16_t_s_s((**l_649), p_8)) != ((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1343->local_0_offset, get_local_id(0), 10), p_7)) , (p_1343->g_1002 , ((p_1343->g_1003 , ((safe_div_func_uint32_t_u_u((((&l_635 == ((*l_1006) = &p_1343->g_187)) , ((p_1343->g_692 = ((*l_1017) = (safe_mul_func_int16_t_s_s(((safe_mul_func_int8_t_s_s(0x1DL, (safe_rshift_func_int8_t_s_u((safe_mod_func_int16_t_s_s(((*l_1015) = ((-1L) >= p_8)), p_1343->g_445.f2)), p_8)))) > p_8), p_1343->g_1016)))) , 9UL)) == p_7), (**l_649))) == p_7)) == (**l_649)))));
    if ((safe_div_func_uint8_t_u_u(((((((l_763[1][1][1] &= ((p_1343->g_270.f0 , (((*l_1015) = (safe_mod_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_u((~((GROUP_DIVERGE(2, 1) <= ((*l_664) = (0x6B3490B1L < (-1L)))) > ((*l_1029) = (p_7 | (((255UL != 0L) , 0L) & (safe_div_func_int16_t_s_s(((safe_div_func_uint8_t_u_u((l_1028 != (void*)0), 0x7DL)) == (**l_649)), 0x1D4FL))))))), 1)), 0x60D2482E2940DC29L))) < (**p_1343->g_354))) >= (**l_649))) && p_6) != (**l_649)) & p_1343->g_429) != (*p_1343->g_609)) ^ p_1343->g_837.f0), p_7)))
    { /* block id: 399 */
        int8_t l_1034 = 1L;
        int16_t **l_1055[8];
        int16_t ***l_1054 = &l_1055[4];
        int32_t l_1078 = (-1L);
        int32_t l_1079[10] = {9L,9L,9L,9L,9L,9L,9L,9L,9L,9L};
        uint32_t *l_1122 = &p_1343->g_610;
        uint16_t ***l_1184 = &l_912;
        int i;
        for (i = 0; i < 8; i++)
            l_1055[i] = (void*)0;
        for (p_1343->g_166 = 0; (p_1343->g_166 <= 0); p_1343->g_166 += 1)
        { /* block id: 402 */
            struct S0 **l_1033 = &p_1343->g_303;
            int32_t l_1041 = (-1L);
            int32_t l_1081 = 0x0DE6234CL;
            int32_t l_1083 = 1L;
            int32_t *l_1088 = &p_1343->g_3;
            int32_t *l_1089 = &l_1079[1];
            l_636[0] = ((((safe_mul_func_int8_t_s_s((0x053E27F23909B24BL != (((**l_649) ^= (&p_1343->g_303 != l_1033)) & (l_1034 , ((**p_1343->g_354) && (safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_rshift_func_int8_t_s_u(l_1041, 6)), (safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1343->local_2_offset, get_local_id(2), 10), GROUP_DIVERGE(1, 1))))), l_1034)))))), p_1343->g_694[6][0])) > ((safe_add_func_uint64_t_u_u(((((FAKE_DIVERGE(p_1343->global_0_offset, get_global_id(0), 10) > p_1343->g_634) || (*p_9)) && p_6) <= p_1343->g_320[0]), l_1041)) == 0x3EL)) && 0L) < (*p_9));
            for (p_1343->g_368.f1 = 0; (p_1343->g_368.f1 <= 3); p_1343->g_368.f1 += 1)
            { /* block id: 407 */
                int32_t l_1076 = (-8L);
                int32_t l_1080 = 0x3A9558ACL;
                int32_t l_1082[7][6][5] = {{{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)}},{{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)}},{{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)}},{{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)}},{{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)}},{{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)}},{{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)},{0x53BB28F2L,0x4DB7907AL,4L,4L,(-1L)}}};
                int16_t l_1121 = 0x476EL;
                uint32_t *l_1142 = &p_1343->g_108;
                int i, j, k;
                (1 + 1);
            }
        }
        (**l_1181) = (l_1184 != l_1184);
    }
    else
    { /* block id: 472 */
        struct S0 *l_1185 = &p_1343->g_266;
        (**l_1181) |= ((void*)0 != l_1185);
    }
    return (*l_649);
}


/* ------------------------------------------ */
/* 
 * reads : p_1343->g_3 p_1343->g_31 p_1343->g_79 p_1343->g_80 p_1343->g_83 p_1343->g_84 p_1343->g_75 p_1343->g_82.f2 p_1343->g_132 p_1343->g_108 p_1343->g_106 p_1343->g_54 p_1343->g_158 p_1343->g_169 p_1343->g_112 p_1343->g_76 p_1343->g_190 p_1343->g_226 p_1343->g_283 p_1343->g_305 p_1343->g_166 p_1343->g_270.f2 p_1343->g_320 p_1343->g_354 p_1343->g_266.f2 p_1343->g_225 p_1343->g_380.f1 p_1343->g_419 p_1343->g_270.f0 p_1343->g_371.f1 p_1343->g_285.f3 p_1343->g_579 p_1343->g_445.f2
 * writes: p_1343->g_3 p_1343->g_2 p_1343->g_54 p_1343->g_75 p_1343->g_79 p_1343->g_80 p_1343->g_83 p_1343->g_84 p_1343->g_106 p_1343->g_82.f2 p_1343->g_112 p_1343->g_132 p_1343->g_76 p_1343->g_166 p_1343->g_169 p_1343->g_187 p_1343->g_190 p_1343->g_226 p_1343->g_108 p_1343->g_261 p_1343->g_266.f0 p_1343->g_299 p_1343->g_266.f2 p_1343->g_303 p_1343->g_305 p_1343->g_320 p_1343->g_354 p_1343->g_82.f1 p_1343->g_380.f1 p_1343->g_266.f3 p_1343->g_284 p_1343->g_429 p_1343->g_371.f1 p_1343->g_579
 */
int8_t  func_10(uint32_t  p_11, struct S4 * p_1343)
{ /* block id: 6 */
    uint32_t l_12[7];
    int32_t l_18 = (-1L);
    int32_t *l_46 = &p_1343->g_3;
    int32_t **l_45 = &l_46;
    int32_t *l_440 = &p_1343->g_3;
    uint64_t *l_577 = (void*)0;
    uint64_t *l_578 = &p_1343->g_579;
    int i;
    for (i = 0; i < 7; i++)
        l_12[i] = 0x23A266D2L;
    for (p_1343->g_3 = 6; (p_1343->g_3 >= 0); p_1343->g_3 -= 1)
    { /* block id: 9 */
        for (p_11 = 0; (p_11 <= 6); p_11 += 1)
        { /* block id: 12 */
            int i;
            if (l_12[p_11])
                break;
        }
    }
    (*l_440) = func_13((((((((*l_578) ^= (((+18446744073709551615UL) && (l_18 <= func_19((((void*)0 == &p_1343->g_3) >= (func_25(func_28(p_1343->g_3, p_1343), p_11, p_1343) | func_36(func_41(l_12[2], l_45, (**l_45), p_1343), (**l_45), p_11, &l_46, p_1343))), p_11, l_45, l_440, &l_440, p_1343))) <= p_1343->g_225)) == FAKE_DIVERGE(p_1343->local_1_offset, get_local_id(1), 10)) & p_1343->g_445.f2) || 0x48L) < p_11) > p_1343->g_445.f2), l_12[3], p_1343->g_445.f2, l_440, p_1343);
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_13(uint8_t  p_14, uint32_t  p_15, int32_t  p_16, int32_t * p_17, struct S4 * p_1343)
{ /* block id: 246 */
    int32_t *l_580 = (void*)0;
    int32_t *l_581[6][6][6] = {{{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3}},{{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3}},{{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3}},{{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3}},{{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3}},{{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3},{(void*)0,&p_1343->g_3,&p_1343->g_3,&p_1343->g_3,(void*)0,&p_1343->g_3}}};
    int8_t l_582 = 8L;
    int64_t l_583[1][2][4] = {{{0x118F731ABCCE2CAFL,0x6CDC36DC3161FD81L,0x118F731ABCCE2CAFL,0x118F731ABCCE2CAFL},{0x118F731ABCCE2CAFL,0x6CDC36DC3161FD81L,0x118F731ABCCE2CAFL,0x118F731ABCCE2CAFL}}};
    int64_t l_585 = 1L;
    uint32_t l_586 = 0UL;
    int16_t l_589 = (-1L);
    int i, j, k;
    ++l_586;
    return l_589;
}


/* ------------------------------------------ */
/* 
 * reads : p_1343->g_371.f1 p_1343->g_3 p_1343->g_285.f3
 * writes: p_1343->g_371.f1 p_1343->g_3
 */
uint16_t  func_19(int32_t  p_20, int32_t  p_21, int32_t ** p_22, int32_t * p_23, int32_t ** p_24, struct S4 * p_1343)
{ /* block id: 174 */
    uint32_t l_443 = 0x71E52DDFL;
    int32_t l_456 = 0x7C94B5F1L;
    int16_t *l_460 = (void*)0;
    uint64_t **l_493 = &p_1343->g_261;
    int32_t l_494 = (-1L);
    int32_t l_499 = 0x4C12D44AL;
    int32_t l_502 = 4L;
    int32_t l_503 = 0x6E5A27F5L;
    int32_t l_505 = 1L;
    int64_t l_508 = (-6L);
    int32_t l_509 = 0x5213DF46L;
    struct S0 *l_548 = &p_1343->g_266;
    int64_t *l_572 = (void*)0;
    int64_t **l_571 = &l_572;
    int32_t ***l_574 = &p_1343->g_75;
    int32_t ****l_573 = &l_574;
    int32_t l_575 = 0x201EF845L;
    int32_t l_576 = (-1L);
    for (p_1343->g_371.f1 = 0; (p_1343->g_371.f1 <= 0); p_1343->g_371.f1 += 1)
    { /* block id: 177 */
        uint16_t l_441[2][4] = {{0x5CE0L,0xEA31L,0x5CE0L,0x5CE0L},{0x5CE0L,0xEA31L,0x5CE0L,0x5CE0L}};
        int8_t *l_442 = &p_1343->g_166;
        int32_t l_469 = (-2L);
        int64_t l_470 = 2L;
        int32_t l_472 = (-6L);
        int32_t l_473[5][1];
        int32_t **l_533 = &p_1343->g_2;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_473[i][j] = (-1L);
        }
        (1 + 1);
    }
    (*p_23) = (**p_24);
    (*p_23) &= (safe_sub_func_uint64_t_u_u(((p_20 != (safe_sub_func_uint8_t_u_u((((*l_571) = &l_508) == &p_1343->g_187), (&p_1343->g_159 != l_573)))) <= (p_1343->g_285.f3 > 0x69L)), (l_575 , ((((((l_576 | p_21) >= p_20) , (void*)0) != (void*)0) , (void*)0) != l_493))));
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_25(int64_t  p_26, int32_t  p_27, struct S4 * p_1343)
{ /* block id: 20 */
    int64_t l_35 = 0x5975123020F620A3L;
    return l_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1343->g_31
 * writes: p_1343->g_2
 */
int64_t  func_28(int64_t  p_29, struct S4 * p_1343)
{ /* block id: 16 */
    int32_t *l_30 = &p_1343->g_3;
    uint32_t l_32 = 0x50E35260L;
    (*p_1343->g_31) = l_30;
    --l_32;
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_1343->g_3 p_1343->g_83 p_1343->g_82.f2 p_1343->g_132 p_1343->g_79 p_1343->g_108 p_1343->g_84 p_1343->g_106 p_1343->g_54 p_1343->g_75 p_1343->g_158 p_1343->g_169 p_1343->g_112 p_1343->g_76 p_1343->g_80 p_1343->g_190 p_1343->g_226 p_1343->g_283 p_1343->g_305 p_1343->g_166 p_1343->g_270.f2 p_1343->g_320 p_1343->g_354 p_1343->g_266.f2 p_1343->g_225 p_1343->g_380.f1 p_1343->g_419 p_1343->g_270.f0
 * writes: p_1343->g_106 p_1343->g_82.f2 p_1343->g_112 p_1343->g_132 p_1343->g_79 p_1343->g_54 p_1343->g_76 p_1343->g_166 p_1343->g_169 p_1343->g_187 p_1343->g_75 p_1343->g_80 p_1343->g_83 p_1343->g_84 p_1343->g_190 p_1343->g_226 p_1343->g_108 p_1343->g_261 p_1343->g_266.f0 p_1343->g_299 p_1343->g_266.f2 p_1343->g_303 p_1343->g_305 p_1343->g_320 p_1343->g_354 p_1343->g_82.f1 p_1343->g_380.f1 p_1343->g_266.f3 p_1343->g_284 p_1343->g_429
 */
uint8_t  func_36(int32_t * p_37, int32_t  p_38, uint16_t  p_39, int32_t ** p_40, struct S4 * p_1343)
{ /* block id: 33 */
    uint32_t l_87 = 0xF00AFC62L;
    uint32_t *l_101 = &l_87;
    uint32_t **l_100 = &l_101;
    uint32_t *l_107[2][8] = {{&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108},{&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108,&p_1343->g_108}};
    int32_t l_109 = 0L;
    int32_t l_167 = 0L;
    int16_t *l_197 = &p_1343->g_79[3][5];
    uint64_t *l_260 = &p_1343->g_132;
    int32_t l_262 = 0x43A37B5FL;
    uint32_t *l_277[6][6] = {{&p_1343->g_80,&p_1343->g_80,&p_1343->g_80,&p_1343->g_54,&p_1343->g_54,&p_1343->g_54},{&p_1343->g_80,&p_1343->g_80,&p_1343->g_80,&p_1343->g_54,&p_1343->g_54,&p_1343->g_54},{&p_1343->g_80,&p_1343->g_80,&p_1343->g_80,&p_1343->g_54,&p_1343->g_54,&p_1343->g_54},{&p_1343->g_80,&p_1343->g_80,&p_1343->g_80,&p_1343->g_54,&p_1343->g_54,&p_1343->g_54},{&p_1343->g_80,&p_1343->g_80,&p_1343->g_80,&p_1343->g_54,&p_1343->g_54,&p_1343->g_54},{&p_1343->g_80,&p_1343->g_80,&p_1343->g_80,&p_1343->g_54,&p_1343->g_54,&p_1343->g_54}};
    int64_t l_404[6];
    int64_t *l_423[6] = {&p_1343->g_187,(void*)0,&p_1343->g_187,&p_1343->g_187,(void*)0,&p_1343->g_187};
    int64_t **l_422 = &l_423[0];
    int64_t **l_424 = (void*)0;
    int64_t *l_426[9] = {&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1]};
    int64_t **l_425 = &l_426[3];
    uint64_t l_432[6];
    int8_t l_439 = 0x33L;
    int i, j;
    for (i = 0; i < 6; i++)
        l_404[i] = 0x39A4F89602C3C963L;
    for (i = 0; i < 6; i++)
        l_432[i] = 0xA618006F3F816714L;
    if ((safe_mul_func_int8_t_s_s((~l_87), (safe_sub_func_int8_t_s_s(((((*p_37) >= (l_109 = (safe_rshift_func_int16_t_s_u(((safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((safe_div_func_int64_t_s_s(0L, (safe_mod_func_int8_t_s_s(0x14L, ((0L && ((p_38 != ((((*l_100) = &p_1343->g_80) != &p_1343->g_80) , (safe_lshift_func_uint8_t_u_u((p_1343->g_106 = ((safe_div_func_int8_t_s_s(p_38, (-8L))) <= (-9L))), l_87)))) != p_39)) , l_87))))), 2)), l_87)) >= p_1343->g_83), 4)))) , 2L) | l_87), 0x09L)))))
    { /* block id: 37 */
        (*p_40) = &l_109;
    }
    else
    { /* block id: 39 */
        uint8_t l_117 = 254UL;
        int32_t l_129[7][2][7] = {{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}}};
        uint32_t *l_136 = &p_1343->g_54;
        uint32_t l_138 = 0UL;
        int32_t ***l_161 = &p_1343->g_75;
        int32_t ****l_160 = &l_161;
        struct S0 *l_265 = &p_1343->g_266;
        uint64_t *l_352 = &p_1343->g_132;
        int8_t l_353[2];
        union U2 *l_364[8][10] = {{(void*)0,&p_1343->g_367[3],&p_1343->g_379,&p_1343->g_371,&p_1343->g_380,&p_1343->g_369,&p_1343->g_375,&p_1343->g_379,(void*)0,&p_1343->g_383},{(void*)0,&p_1343->g_367[3],&p_1343->g_379,&p_1343->g_371,&p_1343->g_380,&p_1343->g_369,&p_1343->g_375,&p_1343->g_379,(void*)0,&p_1343->g_383},{(void*)0,&p_1343->g_367[3],&p_1343->g_379,&p_1343->g_371,&p_1343->g_380,&p_1343->g_369,&p_1343->g_375,&p_1343->g_379,(void*)0,&p_1343->g_383},{(void*)0,&p_1343->g_367[3],&p_1343->g_379,&p_1343->g_371,&p_1343->g_380,&p_1343->g_369,&p_1343->g_375,&p_1343->g_379,(void*)0,&p_1343->g_383},{(void*)0,&p_1343->g_367[3],&p_1343->g_379,&p_1343->g_371,&p_1343->g_380,&p_1343->g_369,&p_1343->g_375,&p_1343->g_379,(void*)0,&p_1343->g_383},{(void*)0,&p_1343->g_367[3],&p_1343->g_379,&p_1343->g_371,&p_1343->g_380,&p_1343->g_369,&p_1343->g_375,&p_1343->g_379,(void*)0,&p_1343->g_383},{(void*)0,&p_1343->g_367[3],&p_1343->g_379,&p_1343->g_371,&p_1343->g_380,&p_1343->g_369,&p_1343->g_375,&p_1343->g_379,(void*)0,&p_1343->g_383},{(void*)0,&p_1343->g_367[3],&p_1343->g_379,&p_1343->g_371,&p_1343->g_380,&p_1343->g_369,&p_1343->g_375,&p_1343->g_379,(void*)0,&p_1343->g_383}};
        uint64_t l_402 = 18446744073709551615UL;
        int32_t l_417[1];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_353[i] = 9L;
        for (i = 0; i < 1; i++)
            l_417[i] = 0x07319399L;
        for (p_1343->g_82.f2 = 0; (p_1343->g_82.f2 > 25); p_1343->g_82.f2 = safe_add_func_uint64_t_u_u(p_1343->g_82.f2, 4))
        { /* block id: 42 */
            uint32_t l_122[8][5][4];
            uint64_t *l_130 = (void*)0;
            uint64_t *l_131 = &p_1343->g_132;
            int16_t *l_135 = &p_1343->g_79[0][5];
            int32_t l_163 = 0x2A58BC82L;
            int32_t l_188 = 0x4EA2A629L;
            int32_t l_191[4] = {0x229AB7E0L,0x229AB7E0L,0x229AB7E0L,0x229AB7E0L};
            int32_t l_192 = 0x2E54040AL;
            int8_t *l_238 = &p_1343->g_166;
            struct S0 **l_282[7];
            uint32_t l_321 = 0x56E5E30FL;
            int i, j, k;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 5; j++)
                {
                    for (k = 0; k < 4; k++)
                        l_122[i][j][k] = 4294967288UL;
                }
            }
            for (i = 0; i < 7; i++)
                l_282[i] = &l_265;
            p_1343->g_112[0] = (-5L);
            if ((4L > (l_87 > (safe_rshift_func_int8_t_s_s((0x41E6BC952145F438L <= (((safe_mul_func_int16_t_s_s(((l_117 , ((l_117 < p_39) < (((~(safe_sub_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_s(l_122[3][2][3], 0)) , (safe_sub_func_int8_t_s_s((((safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((*l_135) |= ((18446744073709551612UL ^ (--(*l_131))) || 0x8AL)), p_39)), (-2L))) >= p_1343->g_108) | p_1343->g_83), p_1343->g_83))), l_122[3][2][3]))) && 0x681BL) | p_1343->g_84))) , l_87), p_39)) == p_1343->g_106) , p_1343->g_3)), l_109)))))
            { /* block id: 46 */
                int32_t *l_137[4][4] = {{&l_129[6][0][3],&l_109,&l_129[6][0][3],&l_129[6][0][3]},{&l_129[6][0][3],&l_109,&l_129[6][0][3],&l_129[6][0][3]},{&l_129[6][0][3],&l_109,&l_129[6][0][3],&l_129[6][0][3]},{&l_129[6][0][3],&l_109,&l_129[6][0][3],&l_129[6][0][3]}};
                int i, j;
                l_109 |= (l_136 == (void*)0);
                for (p_1343->g_54 = 0; (p_1343->g_54 <= 1); p_1343->g_54 += 1)
                { /* block id: 50 */
                    int32_t l_162 = 0x72E8F47DL;
                    if (l_138)
                        break;
                    for (p_38 = 3; (p_38 >= 0); p_38 -= 1)
                    { /* block id: 54 */
                        uint8_t *l_141 = &l_117;
                        int32_t ***l_151 = &p_1343->g_75;
                        int32_t ****l_150 = &l_151;
                        int8_t *l_164 = (void*)0;
                        int8_t *l_165[9][10] = {{(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0,(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0},{(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0,(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0},{(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0,(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0},{(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0,(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0},{(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0,(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0},{(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0,(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0},{(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0,(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0},{(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0,(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0},{(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0,(void*)0,&p_1343->g_166,&p_1343->g_166,&p_1343->g_166,(void*)0}};
                        int i, j;
                        (*p_1343->g_75) = (l_137[p_38][(p_1343->g_54 + 2)] = l_107[p_1343->g_54][(p_38 + 1)]);
                        if ((*p_37))
                            continue;
                        l_167 ^= (safe_lshift_func_uint8_t_u_u(((*l_141) = p_38), (!(safe_rshift_func_uint16_t_u_s((safe_div_func_int8_t_s_s((p_1343->g_166 = ((safe_add_func_uint8_t_u_u(p_38, (safe_lshift_func_int8_t_s_s((((&p_1343->g_75 != ((*l_150) = &p_1343->g_75)) < ((-1L) != p_1343->g_82.f2)) ^ (safe_mod_func_int64_t_s_s((safe_sub_func_int64_t_s_s((FAKE_DIVERGE(p_1343->global_0_offset, get_global_id(0), 10) || ((0x76L & l_129[3][0][6]) & ((safe_mod_func_uint8_t_u_u((((p_39 < p_1343->g_54) , p_1343->g_158) == l_160), l_87)) , p_39))), l_162)), 8L))), l_163)))) , p_38)), p_39)), 9)))));
                    }
                }
            }
            else
            { /* block id: 64 */
                uint32_t l_184 = 1UL;
                int32_t l_193 = (-7L);
                for (l_167 = 1; (l_167 >= 0); l_167 -= 1)
                { /* block id: 67 */
                    uint16_t l_194 = 0xD6EBL;
                    for (l_109 = 0; (l_109 <= 3); l_109 += 1)
                    { /* block id: 70 */
                        int32_t *l_168[2];
                        uint8_t *l_182 = (void*)0;
                        uint8_t *l_183 = &l_117;
                        uint16_t *l_185[5] = {&p_1343->g_169,&p_1343->g_169,&p_1343->g_169,&p_1343->g_169,&p_1343->g_169};
                        int64_t *l_186 = &p_1343->g_187;
                        uint8_t *l_189[4] = {&p_1343->g_190,&p_1343->g_190,&p_1343->g_190,&p_1343->g_190};
                        int i;
                        for (i = 0; i < 2; i++)
                            l_168[i] = (void*)0;
                        ++p_1343->g_169;
                        l_192 = ((safe_rshift_func_int8_t_s_u(((l_191[2] &= (FAKE_DIVERGE(p_1343->local_0_offset, get_local_id(0), 10) >= (((*l_131) = (((safe_sub_func_int64_t_s_s((l_188 |= ((*l_186) = (safe_lshift_func_int16_t_s_u(p_1343->g_112[0], (GROUP_DIVERGE(1, 1) >= ((safe_mul_func_int8_t_s_s(1L, (((p_39 = ((((((0xAAL != (***l_161)) == l_109) && (l_184 = ((((l_163 = (safe_mul_func_uint8_t_u_u(((*l_183) |= 1UL), 0UL))) | p_38) , ((**p_1343->g_75) , p_39)) != p_1343->g_112[0]))) , p_1343->g_132) < p_1343->g_112[0]) , FAKE_DIVERGE(p_1343->group_0_offset, get_group_id(0), 10))) <= p_38) > (**p_40)))) > (-5L))))))), p_1343->g_82.f2)) == 0L) < p_38)) & p_38))) ^ p_38), 3)) , l_87);
                    }
                    if ((*p_1343->g_76))
                        break;
                    (*p_40) = func_41(p_39, &p_1343->g_76, p_1343->g_79[2][5], p_1343);
                    for (p_1343->g_190 = 0; (p_1343->g_190 <= 1); p_1343->g_190 += 1)
                    { /* block id: 86 */
                        ++l_194;
                        l_109 ^= ((&p_1343->g_79[3][0] == l_197) < GROUP_DIVERGE(0, 1));
                    }
                }
                for (p_1343->g_190 = 0; (p_1343->g_190 <= 1); p_1343->g_190 += 1)
                { /* block id: 93 */
                    int32_t l_208 = 6L;
                    int32_t *l_209 = &l_188;
                    int32_t *l_245 = (void*)0;
                    uint16_t *l_257 = &p_1343->g_169;
                    int i, j;
                    if ((safe_add_func_uint32_t_u_u(((l_193 != (((l_109 |= ((*l_131) = ((safe_sub_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s(l_167, 7)), ((*l_209) |= (l_208 = (safe_lshift_func_uint16_t_u_u((l_107[p_1343->g_190][p_1343->g_190] == ((*p_40) = l_107[p_1343->g_190][(p_1343->g_190 + 6)])), 8)))))) <= 1UL))) , 0x74L) <= l_191[1])) || 0x67738E0F7AC18CACL), 4UL)))
                    { /* block id: 99 */
                        int32_t *l_210 = (void*)0;
                        int32_t *l_211 = &l_188;
                        int32_t *l_212 = &l_192;
                        int32_t *l_213 = (void*)0;
                        int32_t *l_214 = &l_163;
                        int32_t *l_215 = (void*)0;
                        int32_t *l_216 = &l_109;
                        int32_t *l_217 = (void*)0;
                        int32_t *l_218 = (void*)0;
                        int32_t *l_219 = &l_191[2];
                        int32_t *l_220 = &l_208;
                        int32_t *l_221 = (void*)0;
                        int32_t *l_222 = (void*)0;
                        int32_t *l_223 = &l_208;
                        int32_t *l_224[6] = {&l_109,&l_109,&l_109,&l_109,&l_109,&l_109};
                        int8_t *l_237 = (void*)0;
                        int i;
                        --p_1343->g_226;
                        if ((*p_1343->g_76))
                            break;
                        (*l_223) &= (((safe_div_func_int64_t_s_s(((0x2FL & (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1343->local_1_offset, get_local_id(1), 10), 2))) ^ ((safe_mod_func_int32_t_s_s(((*p_1343->g_76) , l_191[2]), p_38)) , ((((safe_lshift_func_uint8_t_u_u((l_237 != ((p_39 != 65535UL) , l_238)), GROUP_DIVERGE(2, 1))) | (safe_sub_func_uint32_t_u_u((safe_sub_func_int64_t_s_s(p_1343->g_3, 0xFD5ADA9CF794CBFBL)), 4294967291UL))) | 9L) < 0x4FL))), 0x079F33D5E54CF3BFL)) | l_184) <= l_193);
                    }
                    else
                    { /* block id: 103 */
                        (*p_1343->g_75) = ((safe_rshift_func_int16_t_s_u(0x7132L, 12)) , l_245);
                    }
                    (*l_209) |= (((safe_lshift_func_int16_t_s_s((safe_unary_minus_func_uint64_t_u((~(safe_rshift_func_uint16_t_u_s(p_39, (0x172BL && 1UL)))))), (((((p_1343->g_226 ^ (p_1343->g_108 = p_1343->g_190)) != (safe_div_func_uint32_t_u_u((safe_add_func_int64_t_s_s((safe_div_func_uint8_t_u_u((((*l_257)--) < ((*l_135) = (l_167 || (l_184 < (l_260 != (p_1343->g_261 = (p_1343->g_54 , (void*)0))))))), 4L)), l_262)), (-3L)))) , FAKE_DIVERGE(p_1343->global_2_offset, get_global_id(2), 10)) , (void*)0) != (void*)0))) && p_39) || FAKE_DIVERGE(p_1343->global_2_offset, get_global_id(2), 10));
                    return p_38;
                }
                if ((***l_161))
                    continue;
                if ((l_193 && (l_130 == l_131)))
                { /* block id: 114 */
                    uint8_t l_286 = 7UL;
                    for (p_1343->g_83 = 0; p_1343->g_83 < 2; p_1343->g_83 += 1)
                    {
                        for (p_1343->g_54 = 0; p_1343->g_54 < 8; p_1343->g_54 += 1)
                        {
                            l_107[p_1343->g_83][p_1343->g_54] = &p_1343->g_108;
                        }
                    }
                    for (l_192 = 6; (l_192 < 28); l_192 = safe_add_func_uint64_t_u_u(l_192, 8))
                    { /* block id: 118 */
                        struct S0 **l_267 = &l_265;
                        struct S0 *l_269 = &p_1343->g_270;
                        struct S0 **l_268 = &l_269;
                        (*l_268) = ((*l_267) = l_265);
                    }
                    (*p_40) = func_41(p_1343->g_112[3], &p_37, ((safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(((****l_160) != (safe_mul_func_int8_t_s_s(((*l_238) = ((void*)0 != l_277[5][0])), (safe_lshift_func_uint16_t_u_s(65535UL, 5))))), ((p_38 , ((((safe_sub_func_uint8_t_u_u((~((p_1343->g_190 , l_282[0]) == p_1343->g_283[0][1])), p_39)) , l_286) && (**p_1343->g_75)) >= 0x0DF3L)) , 0x64D5B5BBEE72D1E0L))), 1UL)) , 5L), p_1343);
                }
                else
                { /* block id: 124 */
                    int32_t l_290 = 0x45051C77L;
                    for (p_1343->g_266.f0 = 0; (p_1343->g_266.f0 <= 23); ++p_1343->g_266.f0)
                    { /* block id: 127 */
                        uint32_t l_289 = 0x0E2F8F99L;
                        return l_289;
                    }
                    (*p_40) = func_41(p_39, &p_1343->g_76, (((***l_161) && ((1UL || l_290) | 0x3ED4B981L)) , ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((((safe_sub_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u((l_193 , (((p_1343->g_299 = ((*l_100) = &p_1343->g_106)) != &p_1343->g_80) >= 0x4DF2L)), 1UL)), 8L)) > p_1343->g_82.f2) & (**p_40)) | (**p_1343->g_75)), p_39)), p_38)) & l_290)), p_1343);
                    for (p_1343->g_266.f2 = 0; (p_1343->g_266.f2 >= 25); p_1343->g_266.f2 = safe_add_func_uint64_t_u_u(p_1343->g_266.f2, 6))
                    { /* block id: 135 */
                        int16_t l_302[7] = {9L,7L,9L,9L,7L,9L,9L};
                        int32_t *l_304[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_304[i] = &l_109;
                        l_302[5] = (&p_1343->g_166 == (void*)0);
                        p_1343->g_303 = l_265;
                        ++p_1343->g_305;
                    }
                }
            }
            l_321 |= (p_38 , ((((safe_rshift_func_int16_t_s_u(l_262, 4)) < 65535UL) , 18446744073709551610UL) >= ((safe_mod_func_uint8_t_u_u((p_38 | (safe_lshift_func_uint8_t_u_s((((safe_sub_func_int8_t_s_s(p_1343->g_166, p_1343->g_169)) & p_39) ^ (((p_1343->g_320[0] = ((safe_div_func_uint8_t_u_u((p_39 <= (-1L)), l_262)) == p_1343->g_169)) && 0UL) , GROUP_DIVERGE(2, 1))), 1))), p_39)) || 0x7DL)));
        }
        l_262 = ((safe_mod_func_uint32_t_u_u(4294967295UL, (safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((l_167 & (safe_div_func_uint32_t_u_u((p_1343->g_305 ^= (((((safe_rshift_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_u((l_260 != &p_1343->g_187), (safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((((**p_1343->g_75) , (void*)0) != (((safe_mul_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s(((++(*l_260)) || ((safe_add_func_uint8_t_u_u((***l_161), ((GROUP_DIVERGE(0, 1) , p_1343->g_270.f2) > p_39))) > 0x82895629L)), (*p_1343->g_76))), p_39)), p_38)) ^ GROUP_DIVERGE(1, 1)), 255UL)) , l_262) , l_352)) || (***l_161)), l_167)), p_39)))) <= p_38) < 0x62427DBAL), l_167)) | p_39) > 6UL) ^ l_353[1]) | 0UL)), (**p_1343->g_75)))) , 4294967287UL), (*p_1343->g_76))), p_1343->g_320[0])), (-3L))))) < (****l_160));
        if ((*p_37))
        { /* block id: 148 */
            volatile int16_t ***l_357 = &p_1343->g_354;
            int32_t l_358[1][1];
            uint64_t **l_389 = &p_1343->g_261;
            int32_t *l_398 = &p_1343->g_380.f1;
            int64_t *l_403[10][9][2] = {{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}},{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}},{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}},{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}},{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}},{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}},{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}},{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}},{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}},{{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0},{&p_1343->g_266.f3,(void*)0}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_358[i][j] = 0x4C7DBC72L;
            }
            (*l_357) = p_1343->g_354;
            if (p_1343->g_108)
                goto lbl_359;
lbl_359:
            p_1343->g_82.f1 = l_358[0][0];
            l_404[1] &= (((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1343->global_1_offset, get_global_id(1), 10), (safe_mod_func_int64_t_s_s((GROUP_DIVERGE(0, 1) > (((void*)0 == l_364[6][7]) >= (safe_unary_minus_func_int64_t_s(((safe_lshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s((((*l_389) = &p_1343->g_132) == ((safe_sub_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(((p_1343->g_266.f3 = ((safe_mul_func_int16_t_s_s(p_38, (safe_sub_func_uint64_t_u_u(p_1343->g_266.f2, ((((*l_398) = l_109) | (!(*p_1343->g_76))) == p_38))))) <= ((safe_unary_minus_func_int16_t_s(((!(((safe_mod_func_uint64_t_u_u(0xE7DDAC24A831C9E5L, l_262)) == (****l_160)) , l_402)) < (**p_40)))) ^ 1L))) , 0xF2678B39L), p_1343->g_225)), p_1343->g_270.f2)) , (void*)0)), 1UL)), 1)) || 0x30L))))), l_87)))) , p_38) & p_1343->g_80);
            (*l_398) = ((((l_109 ^= (GROUP_DIVERGE(2, 1) >= ((((((safe_sub_func_int64_t_s_s(((safe_mul_func_int16_t_s_s(((safe_div_func_int16_t_s_s(((*l_197) = (((safe_add_func_uint8_t_u_u(p_38, (((safe_sub_func_int8_t_s_s(l_167, ((void*)0 != &p_39))) >= ((p_38 >= p_39) & (p_39 && 1L))) , GROUP_DIVERGE(0, 1)))) > (safe_add_func_int32_t_s_s((-4L), l_404[1]))) && (*l_398))), p_1343->g_225)) | (-8L)), 65535UL)) != 0x62486AC3L), GROUP_DIVERGE(1, 1))) , p_38) > 0x358BL) >= l_417[0]) == p_1343->g_225) || GROUP_DIVERGE(1, 1)))) || 5UL) <= 0x37B5A121L) , (**p_1343->g_75));
        }
        else
        { /* block id: 159 */
            return p_39;
        }
    }
    if ((*p_37))
    { /* block id: 163 */
        return p_39;
    }
    else
    { /* block id: 165 */
        int8_t l_418 = (-6L);
        volatile struct S0 **l_421 = &p_1343->g_284;
        l_418 |= 0x21A6C9B0L;
        (*l_421) = p_1343->g_419;
    }
    l_262 = ((!((((*l_422) = &l_404[3]) != ((*l_425) = &p_1343->g_187)) < ((((safe_lshift_func_uint16_t_u_s(p_38, (p_1343->g_429 = (+p_1343->g_226)))) , (safe_div_func_int8_t_s_s(l_432[0], (safe_add_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s(p_1343->g_305, ((((l_404[1] | p_1343->g_320[0]) | (((safe_lshift_func_int8_t_s_s(l_439, 2)) , &l_197) != &l_197)) != GROUP_DIVERGE(2, 1)) , 0x67L))) == p_39), l_109))))) < (-1L)) == (-2L)))) ^ p_1343->g_270.f0);
    return p_1343->g_320[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1343->g_3 p_1343->g_79 p_1343->g_80 p_1343->g_83 p_1343->g_84 p_1343->g_75 p_1343->g_76 p_1343->g_108 p_1343->g_633 p_1343->g_634
 * writes: p_1343->g_54 p_1343->g_75 p_1343->g_79 p_1343->g_80 p_1343->g_83 p_1343->g_84
 */
int32_t * func_41(uint32_t  p_42, int32_t ** p_43, int32_t  p_44, struct S4 * p_1343)
{ /* block id: 22 */
    uint32_t *l_53 = &p_1343->g_54;
    int32_t l_57 = 1L;
    int32_t **l_74 = (void*)0;
    int32_t ***l_73[9] = {&l_74,&l_74,&l_74,&l_74,&l_74,&l_74,&l_74,&l_74,&l_74};
    int32_t l_77 = 0x46606A86L;
    int16_t *l_78 = &p_1343->g_79[2][5];
    int i;
    p_1343->g_83 |= (safe_div_func_uint64_t_u_u(((safe_div_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(0x31L, ((((*l_53) = 0x97EEDF66L) , (safe_mul_func_uint8_t_u_u(l_57, (func_58(&p_1343->g_3, (((safe_sub_func_uint32_t_u_u(p_44, (safe_div_func_int8_t_s_s((((p_1343->g_80 = (((*l_78) &= (((safe_mul_func_int8_t_s_s((safe_add_func_int32_t_s_s(p_1343->g_3, (**p_43))), ((safe_mul_func_uint8_t_u_u((safe_add_func_int64_t_s_s(((p_1343->g_75 = p_43) != p_43), l_77)), (-4L))) , p_44))) | p_44) , 0x051AL)) , (**p_43))) >= 0x6EE091E6L) , 0x1FL), 0x29L)))) && p_44) <= 65530UL), p_1343) > p_44)))) & p_1343->g_3))), p_1343->g_3)) && 6L), p_1343->g_3));
    p_1343->g_84 ^= ((0x8FL > (-6L)) , (**p_43));
    return (*p_1343->g_75);
}


/* ------------------------------------------ */
/* 
 * reads : p_1343->g_80
 * writes:
 */
int8_t  func_58(int32_t * p_59, int64_t  p_60, struct S4 * p_1343)
{ /* block id: 27 */
    union U2 *l_81 = &p_1343->g_82;
    l_81 = l_81;
    return p_1343->g_80;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_1344;
    struct S4* p_1343 = &c_1344;
    struct S4 c_1345 = {
        1L, // p_1343->g_3
        &p_1343->g_3, // p_1343->g_2
        &p_1343->g_2, // p_1343->g_31
        0x4DBB9A2FL, // p_1343->g_54
        &p_1343->g_3, // p_1343->g_76
        &p_1343->g_76, // p_1343->g_75
        {{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)}}, // p_1343->g_79
        0x9D2C4C26L, // p_1343->g_80
        {0x7EL}, // p_1343->g_82
        0x52C8L, // p_1343->g_83
        0x543CBDA1L, // p_1343->g_84
        0x18A5C642L, // p_1343->g_106
        0x18026BCBL, // p_1343->g_108
        {0x63AB8821L,0x63AB8821L,0x63AB8821L,0x63AB8821L,0x63AB8821L,0x63AB8821L,0x63AB8821L}, // p_1343->g_112
        4UL, // p_1343->g_132
        (void*)0, // p_1343->g_159
        &p_1343->g_159, // p_1343->g_158
        0x3BL, // p_1343->g_166
        0xBC10L, // p_1343->g_169
        (-7L), // p_1343->g_187
        248UL, // p_1343->g_190
        0x2AD6L, // p_1343->g_225
        1UL, // p_1343->g_226
        (void*)0, // p_1343->g_261
        {4294967295UL,2UL,0xC326L,-8L}, // p_1343->g_266
        {0x1184B929L,4294967295UL,1UL,0x56030DAD6C18F840L}, // p_1343->g_270
        {4294967295UL,1UL,0UL,-1L}, // p_1343->g_285
        &p_1343->g_285, // p_1343->g_284
        {{(void*)0,&p_1343->g_284},{(void*)0,&p_1343->g_284},{(void*)0,&p_1343->g_284},{(void*)0,&p_1343->g_284},{(void*)0,&p_1343->g_284}}, // p_1343->g_283
        &p_1343->g_270.f0, // p_1343->g_299
        (void*)0, // p_1343->g_303
        0xF321B609L, // p_1343->g_305
        {65535UL}, // p_1343->g_320
        {{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL}}, // p_1343->g_356
        &p_1343->g_356[5][5], // p_1343->g_355
        &p_1343->g_355, // p_1343->g_354
        {-1L}, // p_1343->g_365
        {{-6L},{-6L},{-6L},{-6L},{-6L}}, // p_1343->g_366
        {{0L},{0L},{0L},{0L}}, // p_1343->g_367
        {0x70L}, // p_1343->g_368
        {-1L}, // p_1343->g_369
        {0x3DL}, // p_1343->g_370
        {0L}, // p_1343->g_371
        {-8L}, // p_1343->g_372
        {{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}}}, // p_1343->g_373
        {-1L}, // p_1343->g_374
        {0x1EL}, // p_1343->g_375
        {0x04L}, // p_1343->g_376
        {-1L}, // p_1343->g_377
        {{7L},{7L},{7L},{7L},{7L},{7L},{7L}}, // p_1343->g_378
        {0x10L}, // p_1343->g_379
        {0x63L}, // p_1343->g_380
        {-10L}, // p_1343->g_381
        {4L}, // p_1343->g_382
        {1L}, // p_1343->g_383
        {{{4294967295UL,4294967287UL,0UL,1L},{4294967295UL,4294967287UL,0UL,1L},{0x23801678L,0xCA0C9B08L,65530UL,0x31613551652D02CCL},{0xB1ACD26AL,0x3D7D3A67L,0x6AFEL,-2L},{8UL,0UL,5UL,0x76B19C9D35091913L},{0UL,0xE3DBFDF3L,1UL,0x60D0823E925FEAA6L},{0x9E0CDC91L,1UL,0xC308L,-1L},{0x214E21D8L,0x20723358L,0x2311L,0x2E68CE1AC964795EL},{0x9E0CDC91L,1UL,0xC308L,-1L}},{{4294967295UL,4294967287UL,0UL,1L},{4294967295UL,4294967287UL,0UL,1L},{0x23801678L,0xCA0C9B08L,65530UL,0x31613551652D02CCL},{0xB1ACD26AL,0x3D7D3A67L,0x6AFEL,-2L},{8UL,0UL,5UL,0x76B19C9D35091913L},{0UL,0xE3DBFDF3L,1UL,0x60D0823E925FEAA6L},{0x9E0CDC91L,1UL,0xC308L,-1L},{0x214E21D8L,0x20723358L,0x2311L,0x2E68CE1AC964795EL},{0x9E0CDC91L,1UL,0xC308L,-1L}},{{4294967295UL,4294967287UL,0UL,1L},{4294967295UL,4294967287UL,0UL,1L},{0x23801678L,0xCA0C9B08L,65530UL,0x31613551652D02CCL},{0xB1ACD26AL,0x3D7D3A67L,0x6AFEL,-2L},{8UL,0UL,5UL,0x76B19C9D35091913L},{0UL,0xE3DBFDF3L,1UL,0x60D0823E925FEAA6L},{0x9E0CDC91L,1UL,0xC308L,-1L},{0x214E21D8L,0x20723358L,0x2311L,0x2E68CE1AC964795EL},{0x9E0CDC91L,1UL,0xC308L,-1L}}}, // p_1343->g_420
        &p_1343->g_420[1][6], // p_1343->g_419
        0x4E1D7CEBL, // p_1343->g_429
        {0xA1A2D6ACL,0x00E61919L,0x4753L,0x5FCB97E76A8AA791L}, // p_1343->g_445
        0x76L, // p_1343->g_511
        0xD80410E8A6C75D04L, // p_1343->g_579
        0x1C6CF7ACL, // p_1343->g_584
        0x892306C2L, // p_1343->g_610
        &p_1343->g_610, // p_1343->g_609
        1UL, // p_1343->g_632
        0L, // p_1343->g_634
        &p_1343->g_634, // p_1343->g_633
        {{{(void*)0,&p_1343->g_187,(void*)0,(void*)0,&p_1343->g_187,(void*)0,(void*)0,&p_1343->g_187,(void*)0,(void*)0}}}, // p_1343->g_680
        {&p_1343->g_680[0][0][2],&p_1343->g_680[0][0][2],&p_1343->g_680[0][0][2],&p_1343->g_680[0][0][2],&p_1343->g_680[0][0][2],&p_1343->g_680[0][0][2],&p_1343->g_680[0][0][2],&p_1343->g_680[0][0][2],&p_1343->g_680[0][0][2],&p_1343->g_680[0][0][2]}, // p_1343->g_679
        (-3L), // p_1343->g_692
        {{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}}, // p_1343->g_694
        {{1L},{1L}}, // p_1343->g_737
        &p_1343->g_737[1], // p_1343->g_738
        {0x88819643L,0x0E93C201L,0UL,-1L}, // p_1343->g_752
        8L, // p_1343->g_786
        0xA192L, // p_1343->g_789
        (void*)0, // p_1343->g_808
        {0UL,0x18732A5DL,65531UL,0x0720C336CF835F7EL}, // p_1343->g_837
        0x714E0588L, // p_1343->g_844
        {0xA03EL}, // p_1343->g_898
        (void*)0, // p_1343->g_911
        {0UL,0x6D05C51AL,0xB17CL,0L}, // p_1343->g_937
        {0x337C8E06L}, // p_1343->g_939
        {0x214F7A7BL}, // p_1343->g_949
        {{0x190DB5EBL},{0x190DB5EBL},{0x190DB5EBL},{0x190DB5EBL}}, // p_1343->g_972
        {{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}, // p_1343->g_982
        {1UL}, // p_1343->g_1002
        {-5L}, // p_1343->g_1003
        3L, // p_1343->g_1016
        {0x123D2002L,4UL,0xD5C6L,0x7D386C450689C379L}, // p_1343->g_1058
        0L, // p_1343->g_1077
        {0x5FB51ACBL,0x4987666CL,0x7B8EL,8L}, // p_1343->g_1090
        0x305931951B4A3176L, // p_1343->g_1101
        {6UL,9UL,0xAA3BL,-1L}, // p_1343->g_1155
        {0UL,0x2F67766DL,0x27D5L,-1L}, // p_1343->g_1160
        {0x75184729L,0xF1722C5FL,0x4302L,0x537EBFF929A563E6L}, // p_1343->g_1180
        (void*)0, // p_1343->g_1209
        {{&p_1343->g_1209,&p_1343->g_1209,(void*)0,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,(void*)0,(void*)0,&p_1343->g_1209},{&p_1343->g_1209,&p_1343->g_1209,(void*)0,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,(void*)0,(void*)0,&p_1343->g_1209},{&p_1343->g_1209,&p_1343->g_1209,(void*)0,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,(void*)0,(void*)0,&p_1343->g_1209},{&p_1343->g_1209,&p_1343->g_1209,(void*)0,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,(void*)0,(void*)0,&p_1343->g_1209},{&p_1343->g_1209,&p_1343->g_1209,(void*)0,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,(void*)0,(void*)0,&p_1343->g_1209},{&p_1343->g_1209,&p_1343->g_1209,(void*)0,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,(void*)0,(void*)0,&p_1343->g_1209},{&p_1343->g_1209,&p_1343->g_1209,(void*)0,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,(void*)0,(void*)0,&p_1343->g_1209},{&p_1343->g_1209,&p_1343->g_1209,(void*)0,&p_1343->g_1209,&p_1343->g_1209,&p_1343->g_1209,(void*)0,(void*)0,&p_1343->g_1209}}, // p_1343->g_1208
        {6UL,0x58F63080L,1UL,0x5D050B86F848ED62L}, // p_1343->g_1214
        {0xC851526BL,4294967291UL,0UL,0x3A39A78DA0E7E8E3L}, // p_1343->g_1231
        {0x62133E30L}, // p_1343->g_1268
        0xB09F29E30197B396L, // p_1343->g_1273
        {{0x0132C1E6L,0x1FEC0611L,0x370AL,-1L},{0x0132C1E6L,0x1FEC0611L,0x370AL,-1L},{0x0132C1E6L,0x1FEC0611L,0x370AL,-1L},{0x0132C1E6L,0x1FEC0611L,0x370AL,-1L}}, // p_1343->g_1274
        {{0x0972D930L,4294967288UL,0x8D0EL,0x2D6BD03324DA2062L},{0x0972D930L,4294967288UL,0x8D0EL,0x2D6BD03324DA2062L},{0x0972D930L,4294967288UL,0x8D0EL,0x2D6BD03324DA2062L},{0x0972D930L,4294967288UL,0x8D0EL,0x2D6BD03324DA2062L}}, // p_1343->g_1275
        0x778CL, // p_1343->g_1315
        65527UL, // p_1343->g_1336
        &p_1343->g_949, // p_1343->g_1340
        &p_1343->g_1340, // p_1343->g_1339
        sequence_input[get_global_id(0)], // p_1343->global_0_offset
        sequence_input[get_global_id(1)], // p_1343->global_1_offset
        sequence_input[get_global_id(2)], // p_1343->global_2_offset
        sequence_input[get_local_id(0)], // p_1343->local_0_offset
        sequence_input[get_local_id(1)], // p_1343->local_1_offset
        sequence_input[get_local_id(2)], // p_1343->local_2_offset
        sequence_input[get_group_id(0)], // p_1343->group_0_offset
        sequence_input[get_group_id(1)], // p_1343->group_1_offset
        sequence_input[get_group_id(2)], // p_1343->group_2_offset
    };
    c_1344 = c_1345;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1343);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1343->g_3, "p_1343->g_3", print_hash_value);
    transparent_crc(p_1343->g_54, "p_1343->g_54", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1343->g_79[i][j], "p_1343->g_79[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1343->g_80, "p_1343->g_80", print_hash_value);
    transparent_crc(p_1343->g_83, "p_1343->g_83", print_hash_value);
    transparent_crc(p_1343->g_84, "p_1343->g_84", print_hash_value);
    transparent_crc(p_1343->g_106, "p_1343->g_106", print_hash_value);
    transparent_crc(p_1343->g_108, "p_1343->g_108", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1343->g_112[i], "p_1343->g_112[i]", print_hash_value);

    }
    transparent_crc(p_1343->g_132, "p_1343->g_132", print_hash_value);
    transparent_crc(p_1343->g_166, "p_1343->g_166", print_hash_value);
    transparent_crc(p_1343->g_169, "p_1343->g_169", print_hash_value);
    transparent_crc(p_1343->g_187, "p_1343->g_187", print_hash_value);
    transparent_crc(p_1343->g_190, "p_1343->g_190", print_hash_value);
    transparent_crc(p_1343->g_225, "p_1343->g_225", print_hash_value);
    transparent_crc(p_1343->g_226, "p_1343->g_226", print_hash_value);
    transparent_crc(p_1343->g_266.f0, "p_1343->g_266.f0", print_hash_value);
    transparent_crc(p_1343->g_266.f1, "p_1343->g_266.f1", print_hash_value);
    transparent_crc(p_1343->g_266.f2, "p_1343->g_266.f2", print_hash_value);
    transparent_crc(p_1343->g_266.f3, "p_1343->g_266.f3", print_hash_value);
    transparent_crc(p_1343->g_270.f0, "p_1343->g_270.f0", print_hash_value);
    transparent_crc(p_1343->g_270.f1, "p_1343->g_270.f1", print_hash_value);
    transparent_crc(p_1343->g_270.f2, "p_1343->g_270.f2", print_hash_value);
    transparent_crc(p_1343->g_270.f3, "p_1343->g_270.f3", print_hash_value);
    transparent_crc(p_1343->g_285.f0, "p_1343->g_285.f0", print_hash_value);
    transparent_crc(p_1343->g_285.f1, "p_1343->g_285.f1", print_hash_value);
    transparent_crc(p_1343->g_285.f2, "p_1343->g_285.f2", print_hash_value);
    transparent_crc(p_1343->g_285.f3, "p_1343->g_285.f3", print_hash_value);
    transparent_crc(p_1343->g_305, "p_1343->g_305", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1343->g_320[i], "p_1343->g_320[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1343->g_356[i][j], "p_1343->g_356[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1343->g_365.f0, "p_1343->g_365.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1343->g_367[i].f0, "p_1343->g_367[i].f0", print_hash_value);

    }
    transparent_crc(p_1343->g_370.f0, "p_1343->g_370.f0", print_hash_value);
    transparent_crc(p_1343->g_372.f0, "p_1343->g_372.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1343->g_373[i][j].f0, "p_1343->g_373[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1343->g_374.f0, "p_1343->g_374.f0", print_hash_value);
    transparent_crc(p_1343->g_375.f0, "p_1343->g_375.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1343->g_378[i].f0, "p_1343->g_378[i].f0", print_hash_value);

    }
    transparent_crc(p_1343->g_379.f0, "p_1343->g_379.f0", print_hash_value);
    transparent_crc(p_1343->g_381.f0, "p_1343->g_381.f0", print_hash_value);
    transparent_crc(p_1343->g_382.f0, "p_1343->g_382.f0", print_hash_value);
    transparent_crc(p_1343->g_383.f0, "p_1343->g_383.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1343->g_420[i][j].f0, "p_1343->g_420[i][j].f0", print_hash_value);
            transparent_crc(p_1343->g_420[i][j].f1, "p_1343->g_420[i][j].f1", print_hash_value);
            transparent_crc(p_1343->g_420[i][j].f2, "p_1343->g_420[i][j].f2", print_hash_value);
            transparent_crc(p_1343->g_420[i][j].f3, "p_1343->g_420[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_1343->g_429, "p_1343->g_429", print_hash_value);
    transparent_crc(p_1343->g_445.f0, "p_1343->g_445.f0", print_hash_value);
    transparent_crc(p_1343->g_445.f1, "p_1343->g_445.f1", print_hash_value);
    transparent_crc(p_1343->g_445.f2, "p_1343->g_445.f2", print_hash_value);
    transparent_crc(p_1343->g_445.f3, "p_1343->g_445.f3", print_hash_value);
    transparent_crc(p_1343->g_511, "p_1343->g_511", print_hash_value);
    transparent_crc(p_1343->g_579, "p_1343->g_579", print_hash_value);
    transparent_crc(p_1343->g_584, "p_1343->g_584", print_hash_value);
    transparent_crc(p_1343->g_610, "p_1343->g_610", print_hash_value);
    transparent_crc(p_1343->g_632, "p_1343->g_632", print_hash_value);
    transparent_crc(p_1343->g_634, "p_1343->g_634", print_hash_value);
    transparent_crc(p_1343->g_692, "p_1343->g_692", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1343->g_694[i][j], "p_1343->g_694[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1343->g_737[i].f0, "p_1343->g_737[i].f0", print_hash_value);

    }
    transparent_crc(p_1343->g_752.f0, "p_1343->g_752.f0", print_hash_value);
    transparent_crc(p_1343->g_752.f1, "p_1343->g_752.f1", print_hash_value);
    transparent_crc(p_1343->g_752.f2, "p_1343->g_752.f2", print_hash_value);
    transparent_crc(p_1343->g_752.f3, "p_1343->g_752.f3", print_hash_value);
    transparent_crc(p_1343->g_786, "p_1343->g_786", print_hash_value);
    transparent_crc(p_1343->g_789, "p_1343->g_789", print_hash_value);
    transparent_crc(p_1343->g_837.f0, "p_1343->g_837.f0", print_hash_value);
    transparent_crc(p_1343->g_837.f1, "p_1343->g_837.f1", print_hash_value);
    transparent_crc(p_1343->g_837.f2, "p_1343->g_837.f2", print_hash_value);
    transparent_crc(p_1343->g_837.f3, "p_1343->g_837.f3", print_hash_value);
    transparent_crc(p_1343->g_844, "p_1343->g_844", print_hash_value);
    transparent_crc(p_1343->g_898.f0, "p_1343->g_898.f0", print_hash_value);
    transparent_crc(p_1343->g_937.f0, "p_1343->g_937.f0", print_hash_value);
    transparent_crc(p_1343->g_937.f1, "p_1343->g_937.f1", print_hash_value);
    transparent_crc(p_1343->g_937.f2, "p_1343->g_937.f2", print_hash_value);
    transparent_crc(p_1343->g_937.f3, "p_1343->g_937.f3", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1343->g_939[i], "p_1343->g_939[i]", print_hash_value);

    }
    transparent_crc(p_1343->g_949.f0, "p_1343->g_949.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1343->g_972[i].f0, "p_1343->g_972[i].f0", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1343->g_982[i].f0, "p_1343->g_982[i].f0", print_hash_value);

    }
    transparent_crc(p_1343->g_1002.f0, "p_1343->g_1002.f0", print_hash_value);
    transparent_crc(p_1343->g_1016, "p_1343->g_1016", print_hash_value);
    transparent_crc(p_1343->g_1058.f0, "p_1343->g_1058.f0", print_hash_value);
    transparent_crc(p_1343->g_1058.f1, "p_1343->g_1058.f1", print_hash_value);
    transparent_crc(p_1343->g_1058.f2, "p_1343->g_1058.f2", print_hash_value);
    transparent_crc(p_1343->g_1058.f3, "p_1343->g_1058.f3", print_hash_value);
    transparent_crc(p_1343->g_1077, "p_1343->g_1077", print_hash_value);
    transparent_crc(p_1343->g_1090.f0, "p_1343->g_1090.f0", print_hash_value);
    transparent_crc(p_1343->g_1090.f1, "p_1343->g_1090.f1", print_hash_value);
    transparent_crc(p_1343->g_1090.f2, "p_1343->g_1090.f2", print_hash_value);
    transparent_crc(p_1343->g_1090.f3, "p_1343->g_1090.f3", print_hash_value);
    transparent_crc(p_1343->g_1101, "p_1343->g_1101", print_hash_value);
    transparent_crc(p_1343->g_1155.f0, "p_1343->g_1155.f0", print_hash_value);
    transparent_crc(p_1343->g_1155.f1, "p_1343->g_1155.f1", print_hash_value);
    transparent_crc(p_1343->g_1155.f2, "p_1343->g_1155.f2", print_hash_value);
    transparent_crc(p_1343->g_1155.f3, "p_1343->g_1155.f3", print_hash_value);
    transparent_crc(p_1343->g_1160.f0, "p_1343->g_1160.f0", print_hash_value);
    transparent_crc(p_1343->g_1160.f1, "p_1343->g_1160.f1", print_hash_value);
    transparent_crc(p_1343->g_1160.f2, "p_1343->g_1160.f2", print_hash_value);
    transparent_crc(p_1343->g_1160.f3, "p_1343->g_1160.f3", print_hash_value);
    transparent_crc(p_1343->g_1180.f0, "p_1343->g_1180.f0", print_hash_value);
    transparent_crc(p_1343->g_1180.f1, "p_1343->g_1180.f1", print_hash_value);
    transparent_crc(p_1343->g_1180.f2, "p_1343->g_1180.f2", print_hash_value);
    transparent_crc(p_1343->g_1180.f3, "p_1343->g_1180.f3", print_hash_value);
    transparent_crc(p_1343->g_1214.f0, "p_1343->g_1214.f0", print_hash_value);
    transparent_crc(p_1343->g_1214.f1, "p_1343->g_1214.f1", print_hash_value);
    transparent_crc(p_1343->g_1214.f2, "p_1343->g_1214.f2", print_hash_value);
    transparent_crc(p_1343->g_1214.f3, "p_1343->g_1214.f3", print_hash_value);
    transparent_crc(p_1343->g_1231.f0, "p_1343->g_1231.f0", print_hash_value);
    transparent_crc(p_1343->g_1231.f1, "p_1343->g_1231.f1", print_hash_value);
    transparent_crc(p_1343->g_1231.f2, "p_1343->g_1231.f2", print_hash_value);
    transparent_crc(p_1343->g_1231.f3, "p_1343->g_1231.f3", print_hash_value);
    transparent_crc(p_1343->g_1268.f0, "p_1343->g_1268.f0", print_hash_value);
    transparent_crc(p_1343->g_1273, "p_1343->g_1273", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1343->g_1274[i].f0, "p_1343->g_1274[i].f0", print_hash_value);
        transparent_crc(p_1343->g_1274[i].f1, "p_1343->g_1274[i].f1", print_hash_value);
        transparent_crc(p_1343->g_1274[i].f2, "p_1343->g_1274[i].f2", print_hash_value);
        transparent_crc(p_1343->g_1274[i].f3, "p_1343->g_1274[i].f3", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1343->g_1275[i].f0, "p_1343->g_1275[i].f0", print_hash_value);
        transparent_crc(p_1343->g_1275[i].f1, "p_1343->g_1275[i].f1", print_hash_value);
        transparent_crc(p_1343->g_1275[i].f2, "p_1343->g_1275[i].f2", print_hash_value);
        transparent_crc(p_1343->g_1275[i].f3, "p_1343->g_1275[i].f3", print_hash_value);

    }
    transparent_crc(p_1343->g_1315, "p_1343->g_1315", print_hash_value);
    transparent_crc(p_1343->g_1336, "p_1343->g_1336", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
