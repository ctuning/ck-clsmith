// ---fake_divergence -g 43,1,67 -l 43,1,1
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


// Seed: 70

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile uint32_t  f0;
   int64_t  f1;
};

struct S1 {
    int32_t g_10[4];
    uint16_t g_17;
    uint16_t g_47[8];
    int32_t * volatile g_50[8];
    int32_t g_52;
    uint8_t g_88[8];
    uint16_t g_99;
    volatile union U0 g_134;
    uint32_t g_147;
    int16_t g_160;
    int16_t g_175;
    volatile union U0 g_217;
    uint32_t *g_225;
    uint32_t ** volatile g_224;
    uint32_t ** volatile * volatile g_226;
    uint32_t g_260;
    int32_t *g_278;
    int32_t **g_277[3][9][3];
    volatile int64_t g_287;
    volatile int64_t * volatile g_286[1];
    int64_t g_289;
    int64_t *g_288;
    union U0 g_307[9];
    uint8_t *g_313;
    int32_t g_384;
    int32_t *g_383;
    int32_t **g_382;
    int32_t *** volatile g_381;
    volatile union U0 g_423;
    union U0 g_424;
    uint32_t g_447;
    volatile int32_t g_454;
    int32_t g_468;
    int32_t g_499;
    volatile int32_t g_522;
    volatile uint32_t *g_558;
    volatile uint32_t ** volatile g_557;
    volatile int16_t g_576[9][2];
    int32_t g_611;
    uint8_t g_623;
    int8_t g_635;
    uint64_t g_667;
    union U0 g_683;
    uint16_t *g_777;
    uint16_t **g_776[1][1][3];
    volatile uint8_t g_796;
    volatile union U0 g_861;
    int32_t ** volatile g_869[7][1];
    int32_t ** volatile g_871;
    uint8_t *** volatile g_893;
    uint8_t **g_895;
    uint8_t *** volatile g_894;
    uint16_t **g_917;
    union U0 *g_972;
    union U0 ** volatile g_971;
    union U0 g_982;
    int32_t * volatile g_1035;
    int32_t ** volatile g_1037;
    volatile union U0 g_1083;
    volatile uint32_t *g_1118[1];
    volatile uint32_t **g_1117[10];
    volatile uint32_t ***g_1116;
    union U0 g_1123[7];
    int64_t g_1135[6];
    volatile uint16_t g_1194[3];
    union U0 g_1199;
    int64_t g_1215;
    int32_t ** volatile g_1238[10][8][1];
    int32_t g_1266;
    int32_t ** volatile g_1267;
    int32_t * volatile g_1271;
    union U0 g_1275;
    int64_t g_1310;
    union U0 g_1327;
    int32_t ** volatile g_1347;
    volatile uint32_t g_1353;
    uint64_t g_1355;
    uint8_t g_1375;
    uint16_t g_1400;
    int32_t ** volatile g_1410;
    volatile union U0 g_1425;
    uint32_t *g_1435[10][6];
    uint32_t **g_1434[3];
    uint32_t *g_1497[9];
    uint32_t **g_1496;
    int32_t ** volatile g_1503;
    int32_t ** volatile g_1528;
    int32_t *g_1579[2][6];
    int32_t ** volatile g_1580;
    int32_t ** volatile g_1581;
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
int16_t  func_1(struct S1 * p_1592);
int32_t * func_2(int32_t * p_3, int32_t  p_4, int32_t * p_5, int32_t * p_6, struct S1 * p_1592);
int32_t * func_11(int32_t  p_12, uint16_t  p_13, uint32_t  p_14, int32_t * p_15, struct S1 * p_1592);
int16_t  func_20(int64_t  p_21, uint16_t * p_22, int32_t * p_23, struct S1 * p_1592);
uint8_t  func_28(int32_t * p_29, int32_t * p_30, int32_t * p_31, struct S1 * p_1592);
uint16_t ** func_32(uint16_t ** p_33, int64_t  p_34, int16_t  p_35, int32_t  p_36, uint32_t  p_37, struct S1 * p_1592);
int32_t  func_38(int32_t * p_39, uint64_t  p_40, struct S1 * p_1592);
union U0  func_41(int64_t  p_42, int64_t  p_43, struct S1 * p_1592);
uint16_t  func_62(int32_t  p_63, uint8_t  p_64, int32_t ** p_65, uint16_t * p_66, struct S1 * p_1592);
int16_t  func_69(uint16_t ** p_70, int32_t * p_71, int16_t  p_72, uint16_t ** p_73, struct S1 * p_1592);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1592->g_10
 * writes:
 */
int16_t  func_1(struct S1 * p_1592)
{ /* block id: 4 */
    int32_t *l_9 = &p_1592->g_10[3];
    uint16_t *l_16 = &p_1592->g_17;
    int64_t *l_1268 = &p_1592->g_1199.f1;
    int32_t l_1441 = 0x50E4C2F5L;
    int32_t l_1453[9][6];
    int32_t l_1454[3];
    uint32_t l_1527 = 1UL;
    uint32_t l_1532 = 0UL;
    union U0 **l_1541 = &p_1592->g_972;
    union U0 ***l_1540 = &l_1541;
    uint32_t l_1588[8][9][3] = {{{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L}},{{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L}},{{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L}},{{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L}},{{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L}},{{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L}},{{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L}},{{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L},{4294967295UL,4294967295UL,0xB5F05576L}}};
    int32_t **l_1591 = &p_1592->g_1579[0][2];
    int i, j, k;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
            l_1453[i][j] = 0x699827EAL;
    }
    for (i = 0; i < 3; i++)
        l_1454[i] = 0x745F357AL;
    return (*l_9);
}


/* ------------------------------------------ */
/* 
 * reads : p_1592->g_971 p_1592->g_972 p_1592->g_1353 p_1592->g_1355 p_1592->g_1310 p_1592->g_10 p_1592->g_1037 p_1592->g_278 p_1592->g_424.f1 p_1592->g_1375 p_1592->g_288 p_1592->g_289 p_1592->g_134.f0 p_1592->g_635 p_1592->g_225 p_1592->g_777 p_1592->g_1215 p_1592->g_175 p_1592->g_1400 p_1592->g_287 p_1592->g_894 p_1592->g_895 p_1592->g_313 p_1592->g_499 p_1592->g_147 p_1592->g_1347
 * writes: p_1592->g_278 p_1592->g_1355 p_1592->g_1310 p_1592->g_424.f1 p_1592->g_10 p_1592->g_147 p_1592->g_47 p_1592->g_175 p_1592->g_160 p_1592->g_635 p_1592->g_313 p_1592->g_1375
 */
int32_t * func_2(int32_t * p_3, int32_t  p_4, int32_t * p_5, int32_t * p_6, struct S1 * p_1592)
{ /* block id: 719 */
    int32_t **l_1349 = &p_1592->g_278;
    int32_t *l_1351 = &p_1592->g_10[3];
    int32_t **l_1350 = &l_1351;
    int64_t *l_1352 = &p_1592->g_1135[4];
    int64_t *l_1354 = &p_1592->g_1135[4];
    (*l_1350) = ((*l_1349) = p_5);
    p_1592->g_1355 &= (((void*)0 != (*p_1592->g_971)) , (p_4 > ((l_1352 = l_1352) != (p_1592->g_1353 , l_1354))));
    for (p_1592->g_1310 = 6; (p_1592->g_1310 >= 0); p_1592->g_1310 -= 1)
    { /* block id: 726 */
        int32_t l_1365[7];
        uint8_t l_1408 = 0x9DL;
        int i;
        for (i = 0; i < 7; i++)
            l_1365[i] = (-1L);
        if ((((-6L) == (*p_6)) < (*p_6)))
        { /* block id: 727 */
            int16_t l_1362 = 0x1223L;
            uint8_t ***l_1366[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_1378 = 0x0C97BF90L;
            int32_t l_1398 = 4L;
            int16_t *l_1399 = &p_1592->g_175;
            int8_t *l_1401 = &p_1592->g_635;
            int i;
            (*l_1350) = (*p_1592->g_1037);
            for (p_1592->g_424.f1 = 2; (p_1592->g_424.f1 <= 6); p_1592->g_424.f1 += 1)
            { /* block id: 731 */
                uint8_t l_1373 = 246UL;
                uint32_t l_1374[9] = {4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL};
                int i;
                (*l_1351) = (safe_rshift_func_int8_t_s_s(((((safe_mul_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((void*)0 == &l_1352), l_1362)), ((safe_sub_func_uint32_t_u_u(p_4, l_1365[6])) , ((((((void*)0 != l_1366[0]) >= (safe_rshift_func_int8_t_s_u((safe_add_func_int32_t_s_s(((safe_mod_func_uint8_t_u_u((l_1362 ^ l_1373), l_1374[3])) , (**p_1592->g_1037)), l_1374[3])), p_1592->g_1375))) == (*p_1592->g_288)) > p_4) > p_1592->g_10[2])))) < 18446744073709551615UL) & l_1374[3]) & p_4), 7));
                l_1378 = ((safe_sub_func_int8_t_s_s(p_1592->g_134.f0, (4L || ((((*l_1351) |= GROUP_DIVERGE(0, 1)) , GROUP_DIVERGE(0, 1)) , ((*p_1592->g_278) == 0x16869DF4L))))) && l_1365[2]);
            }
            (*p_6) = (safe_sub_func_int32_t_s_s(((l_1378 >= ((*l_1401) = (safe_mod_func_int8_t_s_s(((p_1592->g_160 = (safe_mul_func_int8_t_s_s((l_1362 && (safe_add_func_int32_t_s_s(((safe_sub_func_int16_t_s_s(((((*l_1399) |= (safe_lshift_func_uint16_t_u_u((((l_1398 &= (safe_add_func_int16_t_s_s(p_1592->g_635, ((((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((**l_1350), 15)), 15)) != ((0L == ((*p_1592->g_225) = (l_1362 != 7UL))) & ((*p_1592->g_777) = (safe_unary_minus_func_uint16_t_u(0xF785L))))) , p_1592->g_1215) <= 0xF772BB5EDA535C31L)))) == l_1362) & l_1365[5]), p_4))) < p_1592->g_1400) >= l_1378), p_4)) ^ p_4), (**l_1349)))), GROUP_DIVERGE(2, 1)))) >= p_1592->g_287), (*l_1351))))) | l_1362), (**l_1350)));
            (**l_1349) = (safe_add_func_uint32_t_u_u((((*p_1592->g_895) = (**p_1592->g_894)) == (void*)0), (~(safe_lshift_func_int16_t_s_s((p_1592->g_499 | (FAKE_DIVERGE(p_1592->group_0_offset, get_group_id(0), 10) , ((((safe_add_func_uint16_t_u_u(((((l_1365[6] ^ ((((*p_1592->g_225) == (*p_1592->g_225)) , (*p_5)) , 0x10A9L)) <= ((*l_1399) = 0x107FL)) > l_1408) || 4294967295UL), 0x27FAL)) >= p_4) , 0x7F880A96L) , p_1592->g_424.f1))), l_1398)))));
        }
        else
        { /* block id: 746 */
            (*l_1350) = &l_1365[6];
            (*p_5) = l_1365[5];
            for (p_1592->g_1375 = 0; (p_1592->g_1375 <= 8); p_1592->g_1375 += 1)
            { /* block id: 751 */
                if ((**p_1592->g_1347))
                    break;
                if ((*p_5))
                    break;
            }
        }
    }
    return p_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1592->g_499 p_1592->g_134.f0 p_1592->g_10 p_1592->g_47 p_1592->g_576 p_1592->g_1310 p_1592->g_175 p_1592->g_224 p_1592->g_225 p_1592->g_147 p_1592->g_1327 p_1592->g_288 p_1592->g_289 p_1592->g_667 p_1592->g_1347
 * writes: p_1592->g_499 p_1592->g_611 p_1592->g_424.f1 p_1592->g_10 p_1592->g_147 p_1592->g_1199.f1 p_1592->g_1310 p_1592->g_623 p_1592->g_972 p_1592->g_635 p_1592->g_667 p_1592->g_50 p_1592->g_278
 */
int32_t * func_11(int32_t  p_12, uint16_t  p_13, uint32_t  p_14, int32_t * p_15, struct S1 * p_1592)
{ /* block id: 665 */
    int8_t l_1307 = (-1L);
    uint32_t l_1320 = 0UL;
    int32_t l_1342 = (-10L);
    int32_t *l_1348 = &p_1592->g_499;
    for (p_1592->g_499 = 24; (p_1592->g_499 >= (-28)); p_1592->g_499 = safe_sub_func_uint32_t_u_u(p_1592->g_499, 4))
    { /* block id: 668 */
        uint32_t l_1339 = 0x8F170ABFL;
        for (p_12 = 0; (p_12 != (-28)); p_12 = safe_sub_func_int16_t_s_s(p_12, 7))
        { /* block id: 671 */
            int32_t *l_1294[1];
            uint64_t l_1341 = 0xC4A37B1AE66D023EL;
            int i;
            for (i = 0; i < 1; i++)
                l_1294[i] = &p_1592->g_611;
            for (p_1592->g_611 = (-4); (p_1592->g_611 >= 20); p_1592->g_611 = safe_add_func_uint32_t_u_u(p_1592->g_611, 3))
            { /* block id: 674 */
                int16_t l_1291 = 0x5A03L;
                if (l_1291)
                    break;
                for (p_1592->g_424.f1 = 0; (p_1592->g_424.f1 >= 17); p_1592->g_424.f1 = safe_add_func_uint8_t_u_u(p_1592->g_424.f1, 8))
                { /* block id: 678 */
                    (*p_15) = 0x3DC33086L;
                    return l_1294[0];
                }
            }
            for (p_1592->g_147 = 0; (p_1592->g_147 != 23); ++p_1592->g_147)
            { /* block id: 685 */
                int32_t l_1311 = 0x4A9B57E4L;
                union U0 *l_1315 = &p_1592->g_424;
                uint32_t l_1340 = 0x64AF6104L;
                int32_t *l_1343 = &p_1592->g_10[1];
                for (p_1592->g_1199.f1 = 0; (p_1592->g_1199.f1 > 8); p_1592->g_1199.f1++)
                { /* block id: 688 */
                    int64_t *l_1309 = &p_1592->g_1310;
                    int32_t l_1312 = 1L;
                    l_1312 = (p_1592->g_134.f0 , (((*p_15) <= ((safe_rshift_func_int16_t_s_u(0x6921L, 12)) <= ((((-1L) ^ (*p_15)) == (((*l_1309) |= ((safe_div_func_int8_t_s_s((safe_sub_func_int8_t_s_s(p_13, (safe_lshift_func_uint16_t_u_u(l_1307, 0)))), (p_1592->g_47[4] , (safe_unary_minus_func_uint8_t_u(p_13))))) , p_1592->g_576[7][1])) , l_1311)) , p_14))) || p_1592->g_175));
                    l_1312 = (*p_15);
                }
                for (p_1592->g_623 = 0; (p_1592->g_623 != 40); p_1592->g_623 = safe_add_func_uint32_t_u_u(p_1592->g_623, 7))
                { /* block id: 695 */
                    int32_t l_1337 = 0x73385282L;
                    for (l_1311 = 0; (l_1311 <= 7); l_1311 += 1)
                    { /* block id: 698 */
                        union U0 **l_1336[2];
                        int32_t l_1338 = 1L;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1336[i] = &l_1315;
                        (*p_15) = ((void*)0 != l_1315);
                        l_1342 = ((*p_15) = ((safe_div_func_uint64_t_u_u(((8UL < 0UL) < (((**p_1592->g_224) && (safe_div_func_uint64_t_u_u((l_1320 < ((1L != ((p_1592->g_667 &= (safe_rshift_func_uint8_t_u_s((safe_mod_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u(((((p_1592->g_1327 , p_1592->g_10[2]) > (safe_add_func_int32_t_s_s((((*p_1592->g_288) | ((safe_add_func_int8_t_s_s((p_1592->g_635 = (safe_add_func_uint16_t_u_u((safe_div_func_int32_t_s_s((((p_1592->g_972 = l_1315) == (void*)0) && 0x96DCL), l_1337)), l_1337))), 1L)) , p_1592->g_175)) , l_1338), (*p_15)))) >= l_1339) > l_1338), p_14)) && l_1340) > p_13), p_1592->g_10[0])), l_1340))) , l_1341)) | p_13)), (*p_1592->g_288)))) && 0L)), p_1592->g_175)) , (*p_15)));
                        p_1592->g_50[l_1311] = &p_12;
                        (*p_15) = 0x4FF8F5D0L;
                    }
                    l_1343 = &l_1342;
                }
                for (l_1307 = (-7); (l_1307 < 12); ++l_1307)
                { /* block id: 712 */
                    int32_t **l_1346 = (void*)0;
                    (*p_1592->g_1347) = &p_12;
                }
            }
        }
    }
    return l_1348;
}


/* ------------------------------------------ */
/* 
 * reads : p_1592->g_147 p_1592->g_611 p_1592->g_10 p_1592->g_1271 p_1592->g_160 p_1592->g_1275 p_1592->g_917 p_1592->g_777 p_1592->g_47 p_1592->g_52
 * writes: p_1592->g_147 p_1592->g_611 p_1592->g_499 p_1592->g_160 p_1592->g_52
 */
int16_t  func_20(int64_t  p_21, uint16_t * p_22, int32_t * p_23, struct S1 * p_1592)
{ /* block id: 646 */
    int64_t **l_1281 = &p_1592->g_288;
    int32_t l_1284 = 0x7DD3EF78L;
    for (p_1592->g_147 = 21; (p_1592->g_147 >= 35); p_1592->g_147++)
    { /* block id: 649 */
        uint32_t l_1272 = 0x5C7A41B1L;
        int64_t **l_1282 = &p_1592->g_288;
        int32_t *l_1283[6];
        int i;
        for (i = 0; i < 6; i++)
            l_1283[i] = (void*)0;
        for (p_1592->g_611 = 0; (p_1592->g_611 <= 1); p_1592->g_611 += 1)
        { /* block id: 652 */
            (*p_1592->g_1271) = (*p_23);
            if (l_1272)
                break;
        }
        for (p_1592->g_160 = 7; (p_1592->g_160 >= 1); p_1592->g_160 -= 1)
        { /* block id: 658 */
            int32_t l_1274 = 0x6F444539L;
            int32_t *l_1278 = &p_1592->g_52;
            if ((*p_23))
                break;
            (*l_1278) |= ((((safe_unary_minus_func_uint64_t_u(l_1274)) || (*p_23)) & (p_1592->g_1275 , (**p_1592->g_917))) | (safe_lshift_func_uint16_t_u_u((*p_22), 0)));
        }
        l_1284 = (safe_rshift_func_uint8_t_u_u((l_1281 == l_1282), 4));
    }
    return l_1284;
}


/* ------------------------------------------ */
/* 
 * reads : p_1592->g_47 p_1592->g_52 p_1592->g_10 p_1592->g_88 p_1592->g_134 p_1592->g_160 p_1592->g_147 p_1592->g_99 p_1592->g_217 p_1592->g_224 p_1592->g_226 p_1592->g_50 p_1592->g_260 p_1592->g_277 p_1592->g_286 p_1592->g_288 p_1592->g_225 p_1592->g_307 p_1592->g_287 p_1592->g_217.f0 p_1592->g_134.f0 p_1592->g_278 p_1592->g_307.f0 p_1592->g_175 p_1592->g_381 p_1592->g_423 p_1592->g_424 p_1592->g_289 p_1592->g_447 p_1592->g_499 p_1592->g_468 p_1592->g_557 p_1592->g_576 p_1592->g_424.f0 p_1592->g_611 p_1592->g_384 p_1592->g_623 p_1592->g_635 p_1592->g_522 p_1592->g_667 p_1592->g_382 p_1592->g_683 p_1592->g_917 p_1592->g_777 p_1592->g_861.f0 p_1592->g_971 p_1592->g_982 p_1592->g_454 p_1592->g_972 p_1592->g_776 p_1592->g_1035 p_1592->g_1037 p_1592->g_895 p_1592->g_1083 p_1592->g_313 p_1592->g_1215 p_1592->g_871 p_1592->g_1194 p_1592->g_796 p_1592->g_1266 p_1592->g_1267 p_1592->g_424.f1
 * writes: p_1592->g_52 p_1592->g_50 p_1592->g_88 p_1592->g_99 p_1592->g_147 p_1592->g_160 p_1592->g_175 p_1592->g_224 p_1592->g_260 p_1592->g_288 p_1592->g_313 p_1592->g_289 p_1592->g_382 p_1592->g_447 p_1592->g_499 p_1592->g_468 p_1592->g_278 p_1592->g_611 p_1592->g_384 p_1592->g_623 p_1592->g_635 p_1592->g_424.f1 p_1592->g_667 p_1592->g_776 p_1592->g_917 p_1592->g_47 p_1592->g_383 p_1592->g_972 p_1592->g_1215
 */
uint8_t  func_28(int32_t * p_29, int32_t * p_30, int32_t * p_31, struct S1 * p_1592)
{ /* block id: 6 */
    uint16_t *l_46[4] = {&p_1592->g_47[4],&p_1592->g_47[4],&p_1592->g_47[4],&p_1592->g_47[4]};
    int32_t l_48 = 8L;
    int64_t l_684 = 0x62884301535C494EL;
    uint32_t *l_686 = (void*)0;
    uint32_t **l_685 = &l_686;
    uint64_t *l_687 = (void*)0;
    uint64_t *l_688 = &p_1592->g_667;
    uint16_t ***l_915 = (void*)0;
    uint16_t ***l_916 = &p_1592->g_776[0][0][1];
    uint8_t *l_920 = (void*)0;
    uint8_t *l_921 = (void*)0;
    uint8_t *l_922 = &p_1592->g_88[4];
    uint8_t *l_925 = &p_1592->g_623;
    int32_t l_926 = 1L;
    uint32_t ***l_937 = (void*)0;
    uint32_t **l_939 = (void*)0;
    uint32_t ***l_938 = &l_939;
    int32_t *l_940 = &p_1592->g_52;
    int16_t *l_953 = &p_1592->g_160;
    int32_t l_954[8][3][2] = {{{5L,1L},{5L,1L},{5L,1L}},{{5L,1L},{5L,1L},{5L,1L}},{{5L,1L},{5L,1L},{5L,1L}},{{5L,1L},{5L,1L},{5L,1L}},{{5L,1L},{5L,1L},{5L,1L}},{{5L,1L},{5L,1L},{5L,1L}},{{5L,1L},{5L,1L},{5L,1L}},{{5L,1L},{5L,1L},{5L,1L}}};
    int32_t l_989[2][5][8] = {{{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)}},{{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)}}};
    uint8_t l_1002 = 0xEEL;
    uint32_t **l_1012 = (void*)0;
    uint32_t l_1034 = 0x94272B80L;
    int8_t l_1043 = 0x54L;
    int16_t l_1069 = 0x3461L;
    int64_t l_1070 = 0x1EE09F6A8FF1AB7AL;
    int64_t l_1071 = 0x07868ECE176049D6L;
    uint32_t l_1072 = 0UL;
    int32_t l_1088 = (-1L);
    uint32_t ***l_1119 = &l_1012;
    uint8_t l_1187 = 0UL;
    int32_t ***l_1204 = (void*)0;
    uint32_t ****l_1231 = &l_937;
    int i, j, k;
    p_1592->g_917 = ((*l_916) = func_32((func_38(p_29, ((*l_688) = (func_41((safe_mul_func_int8_t_s_s(((void*)0 == l_46[1]), 0x62L)), l_48, p_1592) , (((l_48 == l_48) && ((((p_1592->g_635 = l_684) , l_685) == &p_1592->g_558) , l_684)) < p_1592->g_667))), p_1592) , &l_46[2]), l_684, p_1592->g_47[3], p_1592->g_10[1], l_48, p_1592));
    (*l_940) = ((safe_mod_func_uint8_t_u_u(((*l_925) = (253UL | (l_48 = (--(*l_922))))), ((l_926 = l_684) && ((0xC2D2DEDBFAF6F12BL | ((((safe_add_func_uint32_t_u_u(((safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(0x25L, ((FAKE_DIVERGE(p_1592->global_2_offset, get_global_id(2), 10) , (l_684 >= (l_684 && (--(**p_1592->g_917))))) & (safe_sub_func_uint64_t_u_u((0x6CL || 0x42L), FAKE_DIVERGE(p_1592->group_2_offset, get_group_id(2), 10)))))), (((*l_938) = (void*)0) == (void*)0))) & p_1592->g_52), (*p_29))) , l_684) , l_926) ^ (-1L))) | 0x8836CA6BL)))) , l_926);
    (*l_940) = (*p_30);
    if (((((safe_mul_func_int16_t_s_s((~(safe_sub_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((p_1592->g_861.f0 & (((((safe_div_func_int32_t_s_s((*l_940), (*l_940))) > ((*l_925)++)) , (*p_1592->g_777)) , (*l_940)) | GROUP_DIVERGE(0, 1))), (safe_sub_func_uint16_t_u_u(((((GROUP_DIVERGE(1, 1) <= (((((*l_922) = (((((*p_30) != ((p_1592->g_499 & ((*l_953) |= 0x38EAL)) && 1L)) < GROUP_DIVERGE(1, 1)) , p_1592->g_260) , (*l_940))) != GROUP_DIVERGE(1, 1)) , p_1592->g_47[4]) <= (*l_940))) , (*l_940)) , (void*)0) == (void*)0), (*l_940))))), (*l_940)))), (**p_1592->g_917))) | l_954[1][1][1]) ^ (*l_940)) || (*l_940)))
    { /* block id: 464 */
        uint32_t l_960[8] = {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL};
        int16_t l_970[1];
        union U0 **l_996 = (void*)0;
        uint32_t **l_1013 = (void*)0;
        int32_t l_1038 = 0x19C3D657L;
        int32_t l_1044 = 0x0719CBF7L;
        int32_t l_1051 = 0x0048B2EEL;
        int32_t l_1052 = 0x1EADC331L;
        int32_t l_1054 = 0x0E2F43FFL;
        int32_t l_1055 = 1L;
        int32_t l_1057[1][6] = {{0x6A0F5A20L,0L,0x6A0F5A20L,0x6A0F5A20L,0L,0x6A0F5A20L}};
        int32_t l_1061 = 0L;
        int8_t l_1068 = 0L;
        uint8_t *l_1084 = &l_1002;
        int i, j;
        for (i = 0; i < 1; i++)
            l_970[i] = 0x1C8CL;
lbl_1109:
        for (l_926 = 27; (l_926 >= (-4)); --l_926)
        { /* block id: 467 */
            uint64_t l_959 = 18446744073709551615UL;
            int32_t l_981 = 8L;
            int16_t l_990 = (-1L);
            union U0 **l_995[10] = {(void*)0,&p_1592->g_972,(void*)0,(void*)0,&p_1592->g_972,(void*)0,(void*)0,&p_1592->g_972,(void*)0,(void*)0};
            uint16_t l_1027[2][7] = {{0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L},{0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L}};
            int32_t *l_1036 = &p_1592->g_10[3];
            int32_t l_1053 = 0x3CC5151EL;
            int32_t l_1056[7][5][7] = {{{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L}},{{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L}},{{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L}},{{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L}},{{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L}},{{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L}},{{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L},{2L,7L,2L,0x30BF29B1L,0x2CD01F3FL,0x5A6A1018L,0L}}};
            uint32_t l_1063 = 0xE0F70648L;
            int32_t *l_1066 = &p_1592->g_499;
            int32_t *l_1067[3][6][7] = {{{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]}},{{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]}},{{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]},{&l_1056[5][0][0],&l_1054,&p_1592->g_499,&l_1057[0][5],&p_1592->g_499,&l_1054,&l_1056[5][0][0]}}};
            uint8_t *l_1082 = &p_1592->g_88[7];
            int i, j, k;
            for (p_1592->g_424.f1 = 0; (p_1592->g_424.f1 == (-13)); p_1592->g_424.f1 = safe_sub_func_int8_t_s_s(p_1592->g_424.f1, 8))
            { /* block id: 470 */
                int32_t **l_965 = (void*)0;
                int32_t l_968 = 0x2DBC0B40L;
                int32_t l_1003 = (-2L);
                uint32_t *l_1010 = &l_960[1];
                uint32_t **l_1009 = &l_1010;
                uint32_t **l_1014 = &l_1010;
                int32_t l_1058 = 7L;
                int32_t l_1059 = 1L;
                int32_t l_1062[8][7] = {{0x45B3C9EAL,0x45B3C9EAL,0x0D4F697FL,(-1L),0x755F34D3L,(-10L),0x2650463AL},{0x45B3C9EAL,0x45B3C9EAL,0x0D4F697FL,(-1L),0x755F34D3L,(-10L),0x2650463AL},{0x45B3C9EAL,0x45B3C9EAL,0x0D4F697FL,(-1L),0x755F34D3L,(-10L),0x2650463AL},{0x45B3C9EAL,0x45B3C9EAL,0x0D4F697FL,(-1L),0x755F34D3L,(-10L),0x2650463AL},{0x45B3C9EAL,0x45B3C9EAL,0x0D4F697FL,(-1L),0x755F34D3L,(-10L),0x2650463AL},{0x45B3C9EAL,0x45B3C9EAL,0x0D4F697FL,(-1L),0x755F34D3L,(-10L),0x2650463AL},{0x45B3C9EAL,0x45B3C9EAL,0x0D4F697FL,(-1L),0x755F34D3L,(-10L),0x2650463AL},{0x45B3C9EAL,0x45B3C9EAL,0x0D4F697FL,(-1L),0x755F34D3L,(-10L),0x2650463AL}};
                int i, j;
                if (l_959)
                    break;
                l_960[1] = 0x0A446B06L;
                for (p_1592->g_499 = 0; (p_1592->g_499 >= (-30)); p_1592->g_499 = safe_sub_func_uint8_t_u_u(p_1592->g_499, 3))
                { /* block id: 475 */
                    int64_t l_966 = 0x6C1470E95C8CE834L;
                    int32_t **l_967 = &p_1592->g_383;
                    if (((+GROUP_DIVERGE(1, 1)) == ((*l_953) &= (((l_960[0] ^ (((((&p_29 == l_965) , 0L) != (FAKE_DIVERGE(p_1592->local_1_offset, get_local_id(1), 10) >= (l_966 &= p_1592->g_147))) , (((l_960[1] >= (~l_966)) , ((0x5EE86B75L && (((*l_967) = p_31) != (void*)0)) || GROUP_DIVERGE(0, 1))) , 0xB2B693CDL)) & (**p_1592->g_224))) ^ (*p_1592->g_225)) != l_968))))
                    { /* block id: 479 */
                        int8_t l_969 = 5L;
                        if ((*l_940))
                            break;
                        if (l_969)
                            continue;
                        if (l_970[0])
                            continue;
                    }
                    else
                    { /* block id: 483 */
                        return l_966;
                    }
                    (*p_1592->g_971) = &p_1592->g_424;
                    return p_1592->g_576[7][1];
                }
                if ((((((safe_add_func_int8_t_s_s((*l_940), (((safe_div_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((((l_981 = p_1592->g_47[1]) | ((p_1592->g_982 , 0xA3L) | 0x5EL)) || ((safe_add_func_uint16_t_u_u((safe_add_func_int16_t_s_s(((((((((*l_925) = (!(0x45A6L || 65533UL))) , (safe_sub_func_int16_t_s_s(l_970[0], 0x6AB0L))) == l_960[2]) ^ l_959) > l_959) && 0x0E625D147B168EA8L) == (*p_1592->g_288)), l_959)), l_989[0][3][1])) == (*p_1592->g_225))), l_960[1])), (*p_30))) , 0xE8EBL) > (*l_940)))) <= (*l_940)) & l_959) < 0x4497L) , 0x5CD087F9L))
                { /* block id: 491 */
                    union U0 ***l_997 = &l_996;
                    uint32_t **l_1024 = (void*)0;
                    int32_t l_1031 = 0L;
                    (*l_940) = (!l_990);
                    if ((((**p_1592->g_917) = (0x7A85L < ((safe_add_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((l_995[4] == ((*l_997) = (p_1592->g_454 , ((((*l_940) < (FAKE_DIVERGE(p_1592->group_0_offset, get_group_id(0), 10) || (*p_1592->g_288))) , (**p_1592->g_971)) , l_996)))), 9)), (safe_add_func_int32_t_s_s((*p_31), ((safe_sub_func_uint16_t_u_u((~(p_1592->g_47[4] <= l_1002)), p_1592->g_499)) , l_1003))))) | (*p_1592->g_225)))) , 0x7316ACC3L))
                    { /* block id: 495 */
                        uint32_t ***l_1011[7][3] = {{&l_1009,&l_1009,&l_1009},{&l_1009,&l_1009,&l_1009},{&l_1009,&l_1009,&l_1009},{&l_1009,&l_1009,&l_1009},{&l_1009,&l_1009,&l_1009},{&l_1009,&l_1009,&l_1009},{&l_1009,&l_1009,&l_1009}};
                        int8_t *l_1021 = &p_1592->g_635;
                        int i, j;
                        (*l_940) = ((((safe_mod_func_uint8_t_u_u((((*l_688) = (0xD5L && (safe_rshift_func_uint16_t_u_s((0x1FC2L & (~((***l_916) = (safe_unary_minus_func_uint64_t_u(((l_1012 = l_1009) == (l_1014 = l_1013))))))), 8)))) | p_1592->g_10[3]), l_960[1])) && ((*l_1021) = (!((safe_div_func_int32_t_s_s((safe_div_func_int16_t_s_s((-8L), 0x72A1L)), ((safe_lshift_func_int16_t_s_u(((l_960[6] , 65535UL) || 0UL), 11)) ^ 0L))) < (*l_940))))) != p_1592->g_147) & (*p_1592->g_288));
                        (*l_940) = (*p_29);
                        return (*l_940);
                    }
                    else
                    { /* block id: 504 */
                        int32_t *l_1022 = &l_1003;
                        uint16_t ***l_1023[4][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int32_t l_1030 = 0x401C3318L;
                        uint32_t *l_1032 = &p_1592->g_447;
                        uint32_t **l_1033 = &l_1032;
                        int i, j;
                        (*l_940) &= ((l_1022 == (void*)0) == (l_916 == l_1023[0][0]));
                        if (l_926)
                            goto lbl_1109;
                        (*l_940) = l_960[7];
                        (*p_1592->g_1035) &= (l_1024 == ((+((safe_add_func_uint32_t_u_u(((l_1027[0][5] & ((((((*l_1032) = ((((*p_31) != (((*p_1592->g_288) = 1L) != (l_981 , l_990))) , ((((l_960[1] | ((safe_mul_func_uint16_t_u_u(l_1030, (((*p_31) || (*p_1592->g_225)) , (-6L)))) && l_960[1])) , (**p_1592->g_917)) == (*l_940)) > (-8L))) & l_1031)) , l_1033) != &p_1592->g_558) <= p_1592->g_52) >= l_1003)) && (*p_1592->g_288)), l_990)) , l_1034)) , (void*)0));
                    }
                }
                else
                { /* block id: 511 */
                    int32_t *l_1039 = &l_954[1][1][1];
                    int32_t *l_1040 = &l_981;
                    int32_t *l_1041 = (void*)0;
                    int32_t *l_1042 = &p_1592->g_52;
                    int32_t *l_1045 = &p_1592->g_499;
                    int32_t *l_1046 = &l_981;
                    int32_t *l_1047 = &l_1044;
                    int32_t *l_1048 = (void*)0;
                    int32_t *l_1049 = &l_1038;
                    int32_t *l_1050[10] = {&l_981,&l_926,&l_981,&l_981,&l_926,&l_981,&l_981,&l_926,&l_981,&l_981};
                    int16_t l_1060 = (-2L);
                    int i;
                    (*p_1592->g_1037) = l_1036;
                    --l_1063;
                }
            }
            l_1072--;
            for (l_1072 = 15; (l_1072 >= 39); l_1072 = safe_add_func_uint16_t_u_u(l_1072, 2))
            { /* block id: 519 */
                int32_t **l_1077 = &l_1066;
                int32_t l_1085[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_1085[i] = 0x1F4CDB81L;
                (*l_1077) = (void*)0;
                l_1085[1] ^= ((safe_rshift_func_uint16_t_u_u(((void*)0 == p_30), 5)) ^ ((l_960[1] , (FAKE_DIVERGE(p_1592->group_1_offset, get_group_id(1), 10) , (safe_rshift_func_int8_t_s_s(((-8L) <= ((p_1592->g_611 , ((*p_1592->g_895) = l_1082)) == (p_1592->g_1083 , l_1084))), (FAKE_DIVERGE(p_1592->local_2_offset, get_local_id(2), 10) , (((*p_1592->g_288) < (*p_1592->g_288)) | (*l_940))))))) , (*l_940)));
                l_1057[0][5] ^= (((safe_mod_func_int8_t_s_s((l_1054 = (-7L)), l_1088)) , (safe_rshift_func_int8_t_s_s(((safe_sub_func_int64_t_s_s((*l_940), (p_29 == (void*)0))) , (((l_1052 && (safe_div_func_int8_t_s_s((safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((-1L), FAKE_DIVERGE(p_1592->local_2_offset, get_local_id(2), 10))), (safe_mul_func_int16_t_s_s(((*l_953) = (safe_sub_func_uint64_t_u_u(0xD8D3E21EF06F2EDFL, (safe_div_func_int32_t_s_s(((*l_940) = (((p_1592->g_667--) , ((*p_1592->g_288) = ((safe_mul_func_int8_t_s_s((-1L), FAKE_DIVERGE(p_1592->group_0_offset, get_group_id(0), 10))) & l_1054))) , (*p_31))), 0x4135ECE9L))))), p_1592->g_468)))), (*p_1592->g_313)))) == 0xA5C02F2C087FEB38L) != FAKE_DIVERGE(p_1592->local_0_offset, get_local_id(0), 10))), 0))) >= l_960[7]);
            }
        }
        (*l_940) |= 0x42F76210L;
    }
    else
    { /* block id: 533 */
        int8_t l_1130[2][10];
        int32_t l_1176 = 0L;
        int32_t l_1177 = 0x4700AD23L;
        int32_t l_1181 = 7L;
        int32_t l_1182 = 0L;
        int32_t l_1183 = 0x7BA5328DL;
        int32_t l_1184 = 1L;
        int32_t l_1185 = 0x093C499CL;
        int32_t l_1186 = 9L;
        int32_t l_1207 = 0x4FA993D5L;
        uint8_t **l_1213 = &l_922;
        uint32_t ****l_1221 = &l_938;
        uint32_t ***l_1222 = &l_939;
        uint32_t *****l_1229[10][5][5] = {{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}},{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}},{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}},{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}},{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}},{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}},{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}},{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}},{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}},{{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221},{(void*)0,&l_1221,&l_1221,&l_1221,&l_1221}}};
        uint32_t ****l_1230 = &l_937;
        uint32_t ***l_1260[3];
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 10; j++)
                l_1130[i][j] = 0x3FL;
        }
        for (i = 0; i < 3; i++)
            l_1260[i] = &l_1012;
        for (l_1002 = 0; (l_1002 < 57); l_1002++)
        { /* block id: 536 */
            int8_t l_1120 = 0L;
            int8_t *l_1131 = &l_1043;
            int32_t l_1132 = 0x7CDB7B5CL;
            int64_t l_1140 = 0x523A14A6C64FD198L;
            int32_t l_1170 = (-9L);
            int32_t l_1178 = (-1L);
            int32_t l_1179 = 0x0031B631L;
            int32_t l_1180[4];
            uint8_t **l_1212 = (void*)0;
            int32_t *l_1214[1][7][2] = {{{(void*)0,&l_1177},{(void*)0,&l_1177},{(void*)0,&l_1177},{(void*)0,&l_1177},{(void*)0,&l_1177},{(void*)0,&l_1177},{(void*)0,&l_1177}}};
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_1180[i] = 1L;
            (1 + 1);
        }
        if ((((((l_1222 = ((*l_1221) = &l_939)) != (void*)0) | GROUP_DIVERGE(1, 1)) <= ((&p_1592->g_972 == (void*)0) < (((+(((0xFCL & (safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((safe_mod_func_int64_t_s_s(((l_1231 = (l_1230 = &l_937)) != (((p_1592->g_88[0] && (safe_add_func_int16_t_s_s((p_1592->g_160 &= p_1592->g_287), (0UL ^ p_1592->g_88[5])))) & p_1592->g_1215) , &l_937)), 0xD26A91C1DDB129A9L)), 9)), l_1186))) | l_1130[1][8]) < l_1183)) < l_1177) >= 0xCAE02DC3L))) , 0x6C8D7206L))
        { /* block id: 593 */
            (*l_940) ^= (*p_29);
        }
        else
        { /* block id: 595 */
            int32_t l_1242 = 1L;
            int32_t l_1243 = 0x497863ABL;
            int32_t *l_1248 = &l_1243;
            uint8_t l_1265 = 0x31L;
            for (p_1592->g_499 = 0; (p_1592->g_499 < 11); p_1592->g_499++)
            { /* block id: 598 */
                int32_t l_1239 = (-7L);
                for (p_1592->g_468 = 2; (p_1592->g_468 < (-25)); p_1592->g_468 = safe_sub_func_uint16_t_u_u(p_1592->g_468, 7))
                { /* block id: 601 */
                    p_31 = (*p_1592->g_871);
                    (*l_940) = l_1239;
                    if ((*p_29))
                        continue;
                    for (p_1592->g_1215 = 0; (p_1592->g_1215 <= 2); p_1592->g_1215 += 1)
                    { /* block id: 607 */
                        int i;
                        if (p_1592->g_1194[p_1592->g_1215])
                            break;
                    }
                }
                (*l_940) ^= (-6L);
                l_1243 = ((*l_940) = (0x648BFA3FE2556BB2L || (l_1239 >= (((8L <= ((((void*)0 != &p_1592->g_635) & (((0xC5B4171B501B711DL != (l_1239 == l_1182)) ^ (safe_div_func_uint16_t_u_u((((FAKE_DIVERGE(p_1592->global_2_offset, get_global_id(2), 10) != (((void*)0 == &l_1071) | l_1207)) ^ l_1239) || 0x43FC0446L), 2UL))) < l_1239)) & 0L)) >= p_1592->g_447) || l_1242))));
            }
            if ((safe_mul_func_uint8_t_u_u((((*l_940) = (safe_sub_func_int8_t_s_s(p_1592->g_47[4], ((p_31 == ((*p_1592->g_871) = (l_1248 = (void*)0))) || 0x4EC93333L)))) == (p_1592->g_99 < (safe_mul_func_uint8_t_u_u((safe_add_func_int32_t_s_s(1L, (65534UL & 0x367EL))), ((l_1243 = ((*p_1592->g_225) = l_1243)) == l_1181))))), 0x2CL)))
            { /* block id: 620 */
                int32_t *l_1253 = &p_1592->g_611;
                int32_t **l_1254[7][5] = {{&p_1592->g_278,&l_1248,&l_1248,&p_1592->g_278,&p_1592->g_278},{&p_1592->g_278,&l_1248,&l_1248,&p_1592->g_278,&p_1592->g_278},{&p_1592->g_278,&l_1248,&l_1248,&p_1592->g_278,&p_1592->g_278},{&p_1592->g_278,&l_1248,&l_1248,&p_1592->g_278,&p_1592->g_278},{&p_1592->g_278,&l_1248,&l_1248,&p_1592->g_278,&p_1592->g_278},{&p_1592->g_278,&l_1248,&l_1248,&p_1592->g_278,&p_1592->g_278},{&p_1592->g_278,&l_1248,&l_1248,&p_1592->g_278,&p_1592->g_278}};
                int i, j;
                (*p_1592->g_1037) = (p_31 = l_1253);
                for (p_1592->g_447 = 1; (p_1592->g_447 <= 8); p_1592->g_447 += 1)
                { /* block id: 625 */
                    int32_t *l_1255 = &l_1186;
                    p_31 = p_31;
                    p_30 = l_1255;
                    if ((*p_31))
                        break;
                    if ((*p_30))
                        continue;
                    for (l_1207 = 8; (l_1207 >= 2); l_1207 -= 1)
                    { /* block id: 632 */
                        (*p_1592->g_278) = (*p_30);
                    }
                }
                return (*l_940);
            }
            else
            { /* block id: 637 */
                uint8_t l_1264 = 0xCAL;
                (*l_940) = (safe_mul_func_uint16_t_u_u((safe_div_func_int8_t_s_s((((void*)0 == l_1260[0]) <= 0UL), ((p_1592->g_796 >= (((*p_1592->g_895) == (*p_1592->g_895)) | (*l_940))) , ((-1L) || ((safe_unary_minus_func_int16_t_s((safe_mul_func_int8_t_s_s(l_1264, p_1592->g_47[3])))) && l_1265))))), p_1592->g_1266));
            }
        }
        (*l_940) ^= 0x7FF8107DL;
        (*p_1592->g_1267) = ((l_1207 | ((void*)0 != &l_1012)) , &l_1182);
    }
    return (*l_940);
}


/* ------------------------------------------ */
/* 
 * reads : p_1592->g_499 p_1592->g_88 p_1592->g_307 p_1592->g_623
 * writes: p_1592->g_776 p_1592->g_499 p_1592->g_623
 */
uint16_t ** func_32(uint16_t ** p_33, int64_t  p_34, int16_t  p_35, int32_t  p_36, uint32_t  p_37, struct S1 * p_1592)
{ /* block id: 440 */
    int32_t *l_900 = &p_1592->g_10[3];
    int32_t **l_901 = &l_900;
    uint16_t ***l_902 = &p_1592->g_776[0][0][1];
    int32_t l_913[9] = {4L,4L,4L,4L,4L,4L,4L,4L,4L};
    uint8_t l_914 = 0x92L;
    int i;
    (*l_901) = l_900;
    (*l_902) = &p_1592->g_777;
    for (p_1592->g_499 = 6; (p_1592->g_499 <= 28); p_1592->g_499++)
    { /* block id: 445 */
        uint32_t l_909[9][9] = {{0x92523D4FL,1UL,0xF87DC597L,0xA25F536AL,0x865502CDL,1UL,1UL,0x865502CDL,0xA25F536AL},{0x92523D4FL,1UL,0xF87DC597L,0xA25F536AL,0x865502CDL,1UL,1UL,0x865502CDL,0xA25F536AL},{0x92523D4FL,1UL,0xF87DC597L,0xA25F536AL,0x865502CDL,1UL,1UL,0x865502CDL,0xA25F536AL},{0x92523D4FL,1UL,0xF87DC597L,0xA25F536AL,0x865502CDL,1UL,1UL,0x865502CDL,0xA25F536AL},{0x92523D4FL,1UL,0xF87DC597L,0xA25F536AL,0x865502CDL,1UL,1UL,0x865502CDL,0xA25F536AL},{0x92523D4FL,1UL,0xF87DC597L,0xA25F536AL,0x865502CDL,1UL,1UL,0x865502CDL,0xA25F536AL},{0x92523D4FL,1UL,0xF87DC597L,0xA25F536AL,0x865502CDL,1UL,1UL,0x865502CDL,0xA25F536AL},{0x92523D4FL,1UL,0xF87DC597L,0xA25F536AL,0x865502CDL,1UL,1UL,0x865502CDL,0xA25F536AL},{0x92523D4FL,1UL,0xF87DC597L,0xA25F536AL,0x865502CDL,1UL,1UL,0x865502CDL,0xA25F536AL}};
        uint8_t *l_910 = &p_1592->g_623;
        int i, j;
        l_913[8] = ((((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(l_909[1][0], 12)), p_36)) <= (p_1592->g_88[7] >= 0x89L)) , l_909[4][8]) != (p_1592->g_307[4] , (~((*l_910)++))));
        if (l_914)
            continue;
    }
    return &p_1592->g_777;
}


/* ------------------------------------------ */
/* 
 * reads : p_1592->g_147
 * writes: p_1592->g_147 p_1592->g_278
 */
int32_t  func_38(int32_t * p_39, uint64_t  p_40, struct S1 * p_1592)
{ /* block id: 342 */
    uint64_t l_691[8] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    uint64_t l_720[5];
    uint32_t **l_729 = &p_1592->g_225;
    int32_t l_853 = 0x530825EEL;
    int64_t *l_866 = &p_1592->g_289;
    int32_t l_872 = 0x067D7996L;
    int32_t l_873[4] = {9L,9L,9L,9L};
    uint8_t *l_882 = &p_1592->g_623;
    uint32_t *l_891 = &p_1592->g_447;
    uint32_t **l_890 = &l_891;
    int32_t **l_899 = &p_1592->g_278;
    int i;
    for (i = 0; i < 5; i++)
        l_720[i] = 18446744073709551612UL;
    for (p_1592->g_147 = 0; (p_1592->g_147 > 8); p_1592->g_147++)
    { /* block id: 345 */
        uint16_t *l_692 = &p_1592->g_47[4];
        int8_t *l_705[4] = {&p_1592->g_635,&p_1592->g_635,&p_1592->g_635,&p_1592->g_635};
        int32_t l_716 = 0x411785C8L;
        int32_t l_788[1][8][6] = {{{(-1L),(-1L),9L,(-9L),8L,0x6D2A7DA6L},{(-1L),(-1L),9L,(-9L),8L,0x6D2A7DA6L},{(-1L),(-1L),9L,(-9L),8L,0x6D2A7DA6L},{(-1L),(-1L),9L,(-9L),8L,0x6D2A7DA6L},{(-1L),(-1L),9L,(-9L),8L,0x6D2A7DA6L},{(-1L),(-1L),9L,(-9L),8L,0x6D2A7DA6L},{(-1L),(-1L),9L,(-9L),8L,0x6D2A7DA6L},{(-1L),(-1L),9L,(-9L),8L,0x6D2A7DA6L}}};
        int32_t *l_816[2][9];
        int8_t l_876 = 0x6CL;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 9; j++)
                l_816[i][j] = &l_788[0][1][2];
        }
        (1 + 1);
    }
    (*l_899) = (void*)0;
    return l_873[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1592->g_47 p_1592->g_52 p_1592->g_10 p_1592->g_88 p_1592->g_134 p_1592->g_160 p_1592->g_147 p_1592->g_99 p_1592->g_217 p_1592->g_224 p_1592->g_226 p_1592->g_50 p_1592->g_260 p_1592->g_277 p_1592->g_286 p_1592->g_288 p_1592->g_225 p_1592->g_307 p_1592->g_287 p_1592->g_217.f0 p_1592->g_134.f0 p_1592->g_278 p_1592->g_307.f0 p_1592->g_175 p_1592->g_381 p_1592->g_423 p_1592->g_424 p_1592->g_289 p_1592->g_447 p_1592->g_499 p_1592->g_468 p_1592->g_557 p_1592->g_576 p_1592->g_424.f0 p_1592->g_611 p_1592->g_384 p_1592->g_623 p_1592->g_635 p_1592->g_522 p_1592->g_667 p_1592->g_382 p_1592->g_683
 * writes: p_1592->g_52 p_1592->g_50 p_1592->g_88 p_1592->g_99 p_1592->g_147 p_1592->g_160 p_1592->g_175 p_1592->g_224 p_1592->g_260 p_1592->g_288 p_1592->g_313 p_1592->g_289 p_1592->g_382 p_1592->g_447 p_1592->g_499 p_1592->g_468 p_1592->g_278 p_1592->g_611 p_1592->g_384 p_1592->g_623 p_1592->g_635 p_1592->g_424.f1 p_1592->g_667
 */
union U0  func_41(int64_t  p_42, int64_t  p_43, struct S1 * p_1592)
{ /* block id: 7 */
    uint32_t l_49 = 0x748AEE51L;
    int32_t *l_51 = &p_1592->g_52;
    int32_t **l_53[2][9] = {{(void*)0,&l_51,&l_51,&l_51,&l_51,&l_51,&l_51,&l_51,(void*)0},{(void*)0,&l_51,&l_51,&l_51,&l_51,&l_51,&l_51,&l_51,(void*)0}};
    uint16_t *l_61 = &p_1592->g_47[4];
    uint16_t **l_60[6][1][6] = {{{(void*)0,&l_61,(void*)0,(void*)0,&l_61,(void*)0}},{{(void*)0,&l_61,(void*)0,(void*)0,&l_61,(void*)0}},{{(void*)0,&l_61,(void*)0,(void*)0,&l_61,(void*)0}},{{(void*)0,&l_61,(void*)0,(void*)0,&l_61,(void*)0}},{{(void*)0,&l_61,(void*)0,(void*)0,&l_61,(void*)0}},{{(void*)0,&l_61,(void*)0,(void*)0,&l_61,(void*)0}}};
    uint16_t l_77 = 0x00A4L;
    int i, j, k;
    (*l_51) ^= (l_49 > (!p_1592->g_47[4]));
    p_1592->g_50[7] = l_51;
    if ((safe_lshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s((safe_mod_func_int8_t_s_s((((void*)0 != l_60[4][0][3]) >= p_1592->g_47[4]), p_43)), ((func_62(p_1592->g_47[5], (safe_lshift_func_int16_t_s_s(func_69(&l_61, (p_42 , &p_1592->g_10[1]), ((((safe_lshift_func_int16_t_s_u(((safe_unary_minus_func_uint8_t_u((p_43 >= p_42))) >= p_42), p_42)) < (*l_51)) , p_1592->g_47[4]) > l_77), &l_61, p_1592), 6)), &p_1592->g_278, &p_1592->g_47[4], p_1592) && p_1592->g_10[3]) , 1UL))), p_1592->g_10[3])))
    { /* block id: 323 */
        int32_t *l_672 = &p_1592->g_10[3];
        int32_t *l_678 = (void*)0;
        l_672 = l_672;
        for (p_1592->g_623 = 0; (p_1592->g_623 <= 25); p_1592->g_623 = safe_add_func_uint8_t_u_u(p_1592->g_623, 4))
        { /* block id: 327 */
            return p_1592->g_217;
        }
        l_672 = l_672;
        for (p_1592->g_635 = (-10); (p_1592->g_635 >= (-20)); --p_1592->g_635)
        { /* block id: 333 */
            int32_t *l_677 = &p_1592->g_499;
            l_678 = l_677;
        }
    }
    else
    { /* block id: 336 */
        (*l_51) |= (safe_div_func_uint64_t_u_u(0x2CD662D25F0EC261L, (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), 5))));
    }
    return p_1592->g_683;
}


/* ------------------------------------------ */
/* 
 * reads : p_1592->g_288 p_1592->g_289 p_1592->g_217.f0 p_1592->g_424.f0 p_1592->g_499 p_1592->g_278 p_1592->g_52 p_1592->g_260 p_1592->g_225 p_1592->g_611 p_1592->g_88 p_1592->g_468 p_1592->g_160 p_1592->g_384 p_1592->g_623 p_1592->g_576 p_1592->g_47 p_1592->g_147 p_1592->g_635 p_1592->g_226 p_1592->g_224 p_1592->g_447 p_1592->g_522 p_1592->g_10 p_1592->g_175 p_1592->g_667 p_1592->g_381 p_1592->g_382
 * writes: p_1592->g_289 p_1592->g_278 p_1592->g_147 p_1592->g_611 p_1592->g_52 p_1592->g_468 p_1592->g_160 p_1592->g_384 p_1592->g_623 p_1592->g_635 p_1592->g_424.f1 p_1592->g_447 p_1592->g_50 p_1592->g_175 p_1592->g_667
 */
uint16_t  func_62(int32_t  p_63, uint8_t  p_64, int32_t ** p_65, uint16_t * p_66, struct S1 * p_1592)
{ /* block id: 247 */
    uint64_t l_599 = 0xE4D58451BFBA47D8L;
    uint64_t *l_602 = &l_599;
    uint16_t l_603 = 0UL;
    uint32_t **l_607[6];
    uint32_t ***l_608 = &l_607[0];
    int32_t *l_609 = (void*)0;
    int32_t *l_610 = &p_1592->g_611;
    int32_t ***l_665[10] = {&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2]};
    int32_t **l_670[2][9][6] = {{{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383}},{{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383},{&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383,&p_1592->g_383}}};
    int32_t ***l_671 = &l_670[1][8][5];
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_607[i] = &p_1592->g_225;
    if ((p_66 == ((+(((safe_add_func_uint32_t_u_u((safe_add_func_int64_t_s_s((((void*)0 != &p_1592->g_576[7][1]) < (safe_unary_minus_func_int32_t_s(((*l_610) ^= ((((*p_1592->g_288) ^= l_599) && ((*l_602) ^= (safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1592->global_0_offset, get_global_id(0), 10), 4)))) & ((((*p_1592->g_225) = ((((*p_65) = (((l_603 || ((safe_unary_minus_func_int8_t_s((p_1592->g_217.f0 , p_1592->g_424.f0))) | ((safe_div_func_int32_t_s_s(((((p_1592->g_499 , ((*l_608) = l_607[0])) != (void*)0) ^ l_603) < l_603), (**p_65))) >= 0x1AL))) , p_1592->g_260) , (*p_65))) != l_609) <= l_603)) <= p_63) >= 0x9CA1E49E535A75CAL)))))), p_63)), p_63)) != 0x6AL) && p_1592->g_88[2])) , &l_603)))
    { /* block id: 254 */
lbl_612:
        (*p_1592->g_278) = (**p_65);
    }
    else
    { /* block id: 256 */
        uint16_t l_615 = 1UL;
        uint64_t *l_642 = &l_599;
        uint64_t *l_643[7][6];
        int32_t l_647 = 0x62AC1CD7L;
        int32_t ***l_664 = &p_1592->g_277[0][4][0];
        int i, j;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 6; j++)
                l_643[i][j] = &l_599;
        }
        if (p_1592->g_289)
            goto lbl_612;
        for (p_1592->g_468 = 0; (p_1592->g_468 <= 7); p_1592->g_468 += 1)
        { /* block id: 260 */
            uint64_t l_631 = 1UL;
            int8_t *l_644 = &p_1592->g_635;
            int i;
            for (p_1592->g_160 = 5; (p_1592->g_160 >= 0); p_1592->g_160 -= 1)
            { /* block id: 263 */
                uint32_t l_630 = 4294967289UL;
                int i;
                for (p_1592->g_384 = 0; (p_1592->g_384 <= 1); p_1592->g_384 += 1)
                { /* block id: 266 */
                    uint8_t *l_622 = &p_1592->g_623;
                    int8_t *l_634 = &p_1592->g_635;
                    int i, j, k;
                    if ((p_1592->g_88[(p_1592->g_160 + 1)] | ((0x131D1014L | ((safe_div_func_uint8_t_u_u((l_615--), ((safe_mod_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((--(*l_622)), p_1592->g_576[p_1592->g_468][p_1592->g_384])), (*p_66))) , ((*l_634) = (safe_add_func_uint8_t_u_u(p_64, ((((***l_608)++) == (**p_65)) , ((l_630 >= (l_631 = (**p_65))) <= ((safe_sub_func_uint8_t_u_u(0xD3L, p_1592->g_47[1])) , p_64))))))))) >= p_63)) >= p_63)))
                    { /* block id: 272 */
                        if ((**p_65))
                            break;
                    }
                    else
                    { /* block id: 274 */
                        return l_630;
                    }
                    (*l_610) = 5L;
                    if ((**p_65))
                        continue;
                }
                (*p_1592->g_278) |= p_1592->g_88[(p_1592->g_160 + 2)];
            }
            (*l_610) |= (safe_add_func_int8_t_s_s((((safe_add_func_uint32_t_u_u((((((((*l_644) = (FAKE_DIVERGE(p_1592->local_2_offset, get_local_id(2), 10) >= (((p_1592->g_88[p_1592->g_468] == p_1592->g_635) & (l_642 == (l_643[3][2] = &l_599))) & ((*p_1592->g_278) = 0x687037F8L)))) <= l_631) != (safe_add_func_int16_t_s_s(p_63, (!p_64)))) || GROUP_DIVERGE(0, 1)) | (l_631 ^ l_615)) & p_64), (***p_1592->g_226))) == 0x7BL) > 0x0F0E45A7L), p_63));
            for (p_1592->g_424.f1 = 0; p_1592->g_424.f1 < 7; p_1592->g_424.f1 += 1)
            {
                for (p_1592->g_611 = 0; p_1592->g_611 < 6; p_1592->g_611 += 1)
                {
                    l_643[p_1592->g_424.f1][p_1592->g_611] = &l_599;
                }
            }
            for (p_1592->g_147 = 0; (p_1592->g_147 <= 7); p_1592->g_147 += 1)
            { /* block id: 289 */
                uint32_t l_656[4][4][7] = {{{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL}},{{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL}},{{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL}},{{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL},{0UL,4294967295UL,0x31F30FCDL,0xC1992436L,0xEC5C6A97L,4294967290UL,4294967290UL}}};
                int i, j, k;
                for (p_1592->g_447 = 2; (p_1592->g_447 <= 7); p_1592->g_447 += 1)
                { /* block id: 292 */
                    int32_t l_663 = 9L;
                    int i;
                    l_647 = 0x1CC03D1BL;
                    for (p_1592->g_623 = 2; (p_1592->g_623 <= 7); p_1592->g_623 += 1)
                    { /* block id: 296 */
                        int i;
                        p_1592->g_50[p_1592->g_447] = ((safe_div_func_uint32_t_u_u(((l_656[0][1][5] = (safe_mod_func_int32_t_s_s((safe_div_func_uint64_t_u_u(p_64, (safe_add_func_int8_t_s_s(p_1592->g_522, 1L)))), (*p_1592->g_225)))) != (safe_sub_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u((((l_663 , l_664) == l_665[1]) != p_64), 4)) || ((8L == p_1592->g_10[3]) <= p_63)), (*p_66))), (*p_1592->g_278)))), (*p_1592->g_225))) , (*p_65));
                    }
                    for (p_63 = 1; (p_63 >= 0); p_63 -= 1)
                    { /* block id: 302 */
                        (**p_65) &= 0x54D91A1BL;
                    }
                }
                for (p_1592->g_175 = 0; (p_1592->g_175 <= 2); p_1592->g_175 += 1)
                { /* block id: 308 */
                    int32_t l_666 = 0x3C4DF2D3L;
                    int i, j, k;
                    p_1592->g_667++;
                    for (p_63 = 0; (p_63 <= 1); p_63 += 1)
                    { /* block id: 312 */
                        int i, j, k;
                        (*p_65) = (*p_65);
                        if (p_1592->g_576[p_1592->g_147][p_63])
                            continue;
                    }
                }
            }
        }
    }
    (*l_610) = ((*p_1592->g_381) != ((*l_671) = l_670[1][3][5]));
    return (*p_66);
}


/* ------------------------------------------ */
/* 
 * reads : p_1592->g_47 p_1592->g_52 p_1592->g_10 p_1592->g_88 p_1592->g_134 p_1592->g_160 p_1592->g_147 p_1592->g_99 p_1592->g_217 p_1592->g_224 p_1592->g_226 p_1592->g_50 p_1592->g_260 p_1592->g_277 p_1592->g_286 p_1592->g_288 p_1592->g_225 p_1592->g_307 p_1592->g_287 p_1592->g_217.f0 p_1592->g_134.f0 p_1592->g_278 p_1592->g_307.f0 p_1592->g_175 p_1592->g_381 p_1592->g_423 p_1592->g_424 p_1592->g_289 p_1592->g_447 p_1592->g_499 p_1592->g_468 p_1592->g_557 p_1592->g_576
 * writes: p_1592->g_88 p_1592->g_52 p_1592->g_99 p_1592->g_147 p_1592->g_160 p_1592->g_175 p_1592->g_224 p_1592->g_260 p_1592->g_288 p_1592->g_313 p_1592->g_289 p_1592->g_382 p_1592->g_447 p_1592->g_499 p_1592->g_468
 */
int16_t  func_69(uint16_t ** p_70, int32_t * p_71, int16_t  p_72, uint16_t ** p_73, struct S1 * p_1592)
{ /* block id: 10 */
    uint32_t l_78 = 0UL;
    int32_t l_81 = 0x6287B835L;
    uint8_t *l_86 = (void*)0;
    uint8_t *l_87 = &p_1592->g_88[0];
    int32_t *l_89 = (void*)0;
    int32_t *l_90 = &p_1592->g_52;
    int32_t **l_93 = &l_89;
    uint16_t *l_96 = (void*)0;
    uint16_t *l_97 = (void*)0;
    uint16_t *l_98 = &p_1592->g_99;
    int32_t *l_102 = &l_81;
    int32_t l_123[9][1][2] = {{{(-5L),1L}},{{(-5L),1L}},{{(-5L),1L}},{{(-5L),1L}},{{(-5L),1L}},{{(-5L),1L}},{{(-5L),1L}},{{(-5L),1L}},{{(-5L),1L}}};
    uint64_t l_143 = 0xC8F595BA468D3B5AL;
    int32_t l_204 = 0L;
    int32_t l_205 = 0x1006DC1CL;
    int32_t l_207[9];
    uint16_t l_208 = 1UL;
    int64_t l_258[9][8][3] = {{{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)}},{{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)}},{{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)}},{{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)}},{{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)}},{{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)}},{{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)}},{{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)}},{{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)},{0x76FC20A5E3A977B0L,(-10L),(-4L)}}};
    int16_t *l_344 = &p_1592->g_175;
    int32_t l_356 = 0x323E962EL;
    int32_t **l_380 = (void*)0;
    int64_t l_397 = 0x237E8DDB5E0FFBB8L;
    int8_t l_519[7] = {0x5AL,0x5AL,0x5AL,0x5AL,0x5AL,0x5AL,0x5AL};
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_207[i] = (-9L);
lbl_266:
    (*l_90) = (p_1592->g_47[4] != (l_78 <= (safe_sub_func_uint8_t_u_u(((*l_87) ^= (l_78 >= (((l_81 ^= l_78) <= (~((safe_mul_func_uint8_t_u_u(((p_1592->g_52 <= p_1592->g_47[0]) , (p_1592->g_10[0] , (p_1592->g_52 && ((safe_mod_func_int32_t_s_s(l_78, p_1592->g_10[3])) , 0x13L)))), p_1592->g_52)) >= p_1592->g_47[1]))) == 0x62L))), p_1592->g_10[3]))));
    if (((*l_102) ^= ((safe_div_func_int64_t_s_s((((&l_81 == ((*l_93) = (void*)0)) || p_1592->g_47[2]) > (**p_70)), ((safe_sub_func_int16_t_s_s((p_72 < p_1592->g_10[3]), (((*l_98) = 0x1B93L) < (safe_div_func_uint32_t_u_u(0xAE6C26CFL, ((l_97 != (void*)0) || (*l_90))))))) && (*l_90)))) & p_1592->g_10[3])))
    { /* block id: 17 */
        int64_t l_103[10] = {0x225DEAEDAB18E11BL,0L,1L,0L,0x225DEAEDAB18E11BL,0x225DEAEDAB18E11BL,0L,1L,0L,0x225DEAEDAB18E11BL};
        uint8_t *l_106 = &p_1592->g_88[0];
        int32_t **l_122 = &l_90;
        uint32_t *l_146[6] = {&p_1592->g_147,&p_1592->g_147,&p_1592->g_147,&p_1592->g_147,&p_1592->g_147,&p_1592->g_147};
        int64_t *l_148 = &l_103[9];
        uint8_t l_176 = 0xEEL;
        int i;
        (**l_122) = (l_103[3] | ((*p_71) || (safe_mod_func_int16_t_s_s(((void*)0 == l_106), ((safe_lshift_func_uint8_t_u_u((p_1592->g_88[0] = (safe_add_func_uint64_t_u_u(p_1592->g_47[3], (safe_mul_func_uint16_t_u_u(65535UL, ((safe_unary_minus_func_int32_t_s((safe_div_func_uint32_t_u_u((((safe_lshift_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((l_122 == &p_1592->g_50[7]), 4)), (*l_90))), 7)) && p_1592->g_47[5]) , 0UL), (*p_71))))) , (**l_122))))))), 2)) || l_123[2][0][0])))));
        for (l_78 = 0; (l_78 <= 7); l_78 += 1)
        { /* block id: 22 */
            int64_t l_125[10][6][3] = {{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}},{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}},{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}},{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}},{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}},{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}},{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}},{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}},{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}},{{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L},{0x170CE46C46319CD6L,0x30EDB61D1304DE64L,0x1BE4320E1B1DC044L}}};
            int i, j, k;
            for (p_72 = 0; (p_72 <= 7); p_72 += 1)
            { /* block id: 25 */
                (*l_102) = 9L;
                for (l_81 = 0; (l_81 <= 0); l_81 += 1)
                { /* block id: 29 */
                    int i, j, k;
                    if (l_123[(l_81 + 4)][l_81][(l_81 + 1)])
                        break;
                    for (p_1592->g_52 = 0; (p_1592->g_52 <= 7); p_1592->g_52 += 1)
                    { /* block id: 33 */
                        int32_t ***l_124 = &l_122;
                        int i;
                        (*l_124) = &p_71;
                        return p_1592->g_88[(l_81 + 4)];
                    }
                }
            }
            return l_125[9][2][1];
        }
        if (((*l_90) = (safe_rshift_func_uint8_t_u_u((p_72 != ((*l_148) = ((safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((**l_122), 7)), (p_1592->g_147 = ((safe_lshift_func_int8_t_s_u(((p_1592->g_134 , 5L) >= (p_1592->g_88[0] == 0UL)), 3)) || (+((((safe_lshift_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((((safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_s(l_143, 2)), (**l_122))) && (safe_div_func_int8_t_s_s(((((*l_90) <= 0UL) && (**l_122)) , p_72), GROUP_DIVERGE(1, 1)))) == p_72), p_1592->g_88[0])), 6)) > p_1592->g_10[3]) < 0x77E3L) , (**l_122))))))) >= (*l_102)))), 7))))
        { /* block id: 44 */
            uint8_t l_157 = 0UL;
            (*l_102) = (!(safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((-3L), (((safe_rshift_func_uint8_t_u_u((p_72 , (++(*l_106))), (p_1592->g_160 &= (((**l_122) ^= l_157) , (safe_rshift_func_uint16_t_u_s((**p_70), 12)))))) == ((-1L) > (safe_mul_func_int16_t_s_s(p_1592->g_147, ((((safe_sub_func_uint64_t_u_u((p_1592->g_175 = (((safe_mul_func_int8_t_s_s((((*l_98)++) , p_72), ((safe_mul_func_int8_t_s_s(p_72, (safe_sub_func_uint16_t_u_u(((safe_sub_func_int64_t_s_s(((p_1592->g_47[3] | 0x407BL) > 0xC48BL), p_1592->g_10[3])) <= 0UL), 0xB0CEL)))) != l_157))) <= p_1592->g_10[3]) <= p_1592->g_10[1])), p_72)) >= (-7L)) , l_157) , (**p_73)))))) , (-1L)))), p_72)));
        }
        else
        { /* block id: 51 */
            (*l_102) = l_176;
        }
    }
    else
    { /* block id: 54 */
        int8_t l_179 = 0L;
        int32_t l_197 = (-3L);
        int32_t l_198 = 0x365824EBL;
        int32_t l_199[1];
        int8_t l_206 = 0L;
        uint32_t l_218[7][7][5] = {{{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL}},{{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL}},{{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL}},{{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL}},{{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL}},{{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL}},{{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL},{0xE5C8995CL,6UL,0x202BD4F3L,4294967295UL,0UL}}};
        int32_t l_232[2];
        uint16_t l_263[2][3][4] = {{{0xC039L,0x6D49L,0xC039L,0xC039L},{0xC039L,0x6D49L,0xC039L,0xC039L},{0xC039L,0x6D49L,0xC039L,0xC039L}},{{0xC039L,0x6D49L,0xC039L,0xC039L},{0xC039L,0x6D49L,0xC039L,0xC039L},{0xC039L,0x6D49L,0xC039L,0xC039L}}};
        int32_t l_285 = 0L;
        int64_t *l_297[8] = {&p_1592->g_289,&p_1592->g_289,&p_1592->g_289,&p_1592->g_289,&p_1592->g_289,&p_1592->g_289,&p_1592->g_289,&p_1592->g_289};
        int64_t **l_296 = &l_297[7];
        uint8_t *l_310 = &p_1592->g_88[0];
        uint32_t **l_355 = &p_1592->g_225;
        uint8_t l_398 = 0UL;
        uint32_t l_503[8] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_199[i] = 0x4518A76DL;
        for (i = 0; i < 2; i++)
            l_232[i] = 7L;
lbl_511:
        for (p_1592->g_160 = 0; (p_1592->g_160 > (-12)); p_1592->g_160 = safe_sub_func_uint32_t_u_u(p_1592->g_160, 6))
        { /* block id: 57 */
            int16_t l_180 = 0x11E8L;
            int32_t l_181[3][9] = {{0x3E58EEB3L,(-7L),0x38C2C0AFL,4L,0x38C2C0AFL,(-7L),0x3E58EEB3L,0x60FFDD9DL,9L},{0x3E58EEB3L,(-7L),0x38C2C0AFL,4L,0x38C2C0AFL,(-7L),0x3E58EEB3L,0x60FFDD9DL,9L},{0x3E58EEB3L,(-7L),0x38C2C0AFL,4L,0x38C2C0AFL,(-7L),0x3E58EEB3L,0x60FFDD9DL,9L}};
            int32_t l_223 = 0x74879BB8L;
            int32_t l_254 = 0L;
            int16_t *l_327 = (void*)0;
            int16_t *l_328 = &l_180;
            int i, j;
            for (p_72 = 5; (p_72 >= 0); p_72 -= 1)
            { /* block id: 60 */
                int32_t l_192 = 9L;
                int32_t l_195 = (-5L);
                int32_t l_196 = (-4L);
                int32_t l_200 = 0x32750AFBL;
                int32_t l_201 = 0x23B808F3L;
                int32_t l_202 = 1L;
                int32_t l_203[1][7] = {{0x7A5988CCL,0x2B0298E0L,0x7A5988CCL,0x7A5988CCL,0x2B0298E0L,0x7A5988CCL,0x7A5988CCL}};
                uint16_t l_233 = 1UL;
                int64_t l_300 = 0x2538B882118681D0L;
                int i, j;
                for (l_143 = 0; (l_143 <= 0); l_143 += 1)
                { /* block id: 63 */
                    int i, j, k;
                    return l_123[(l_143 + 7)][l_143][(l_143 + 1)];
                }
                if (l_179)
                    break;
                if ((l_180 , l_180))
                { /* block id: 67 */
                    int32_t *l_182 = &l_181[2][1];
                    int32_t *l_183 = &l_181[2][7];
                    int32_t *l_184 = &l_181[2][7];
                    int32_t *l_185 = (void*)0;
                    int32_t *l_186 = &l_81;
                    int32_t *l_187 = &l_181[0][1];
                    int32_t *l_188 = &p_1592->g_52;
                    int32_t *l_189 = (void*)0;
                    int32_t *l_190 = (void*)0;
                    int32_t *l_191 = (void*)0;
                    int32_t *l_193 = &l_181[0][2];
                    int32_t *l_194[5][5][7] = {{{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]}},{{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]}},{{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]}},{{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]}},{{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]},{&l_181[2][7],&l_81,&p_1592->g_10[2],&l_181[2][7],&l_192,&p_1592->g_10[2],&p_1592->g_10[2]}}};
                    int i, j, k;
                    ++l_208;
                    (*l_193) = ((safe_sub_func_int32_t_s_s(((*p_73) == (void*)0), (safe_add_func_int32_t_s_s((*l_184), ((*l_188) |= (*p_71)))))) && (l_181[2][7] <= ((safe_sub_func_int8_t_s_s(p_1592->g_47[4], ((p_1592->g_217 , (((l_218[5][3][2] , (safe_rshift_func_int8_t_s_u((safe_add_func_int8_t_s_s(((0x1FL < l_223) >= p_1592->g_10[3]), p_1592->g_10[0])), 5))) < 1UL) < p_1592->g_52)) , p_72))) < l_197)));
                    if ((*p_71))
                        break;
                    if (l_181[2][7])
                        break;
                }
                else
                { /* block id: 73 */
                    int16_t l_227[10] = {0x154FL,(-1L),0x0CC6L,(-1L),0x154FL,0x154FL,(-1L),0x0CC6L,(-1L),0x154FL};
                    int32_t l_255 = 0x7FE94AFAL;
                    int32_t l_256 = 0x06A586A8L;
                    int32_t l_257 = 0x3AEEE6D5L;
                    int32_t l_259[3];
                    int64_t **l_298[4];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_259[i] = 0x01D6DF46L;
                    for (i = 0; i < 4; i++)
                        l_298[i] = &l_297[7];
                    (*p_1592->g_226) = p_1592->g_224;
                    if ((p_71 == (void*)0))
                    { /* block id: 75 */
                        int32_t *l_228 = &l_196;
                        int32_t *l_229 = &l_181[1][7];
                        int32_t *l_230 = &l_192;
                        int32_t *l_231[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_231[i] = &l_181[0][7];
                        (*l_102) = (p_1592->g_50[(p_72 + 1)] == (void*)0);
                        if (l_227[9])
                            continue;
                        l_233++;
                    }
                    else
                    { /* block id: 79 */
                        int32_t *l_236 = &l_199[0];
                        int32_t *l_237 = &l_181[2][7];
                        int32_t *l_238 = &l_205;
                        int32_t *l_239 = &l_181[1][3];
                        int32_t *l_240 = &l_203[0][2];
                        int32_t *l_241 = &l_81;
                        int32_t *l_242 = (void*)0;
                        int32_t l_243 = 0L;
                        int32_t *l_244 = &l_207[3];
                        int32_t *l_245 = &l_81;
                        int32_t *l_246 = (void*)0;
                        int32_t *l_247 = &l_181[1][8];
                        int32_t *l_248 = (void*)0;
                        int32_t *l_249 = &l_199[0];
                        int32_t *l_250 = &l_207[3];
                        int32_t *l_251 = &l_196;
                        int32_t *l_252 = &l_199[0];
                        int32_t *l_253[2][5][7] = {{{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0},{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0},{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0},{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0},{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0}},{{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0},{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0},{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0},{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0},{&p_1592->g_52,&l_198,&p_1592->g_10[3],&p_1592->g_52,&l_203[0][5],&l_199[0],(void*)0}}};
                        int i, j, k;
                        ++p_1592->g_260;
                        l_263[1][1][3]--;
                        if (l_206)
                            continue;
                    }
                    for (l_202 = 0; (l_202 <= 7); l_202 += 1)
                    { /* block id: 86 */
                        int64_t **l_290 = &p_1592->g_288;
                        int8_t *l_291 = &l_206;
                        int32_t *l_299 = &l_232[1];
                        int i;
                        if (l_78)
                            goto lbl_266;
                        l_198 |= (safe_mod_func_int32_t_s_s(((*p_1592->g_226) == ((safe_mul_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((*l_98) = (l_227[(l_202 + 2)] > l_227[l_202])), (**p_73))), p_72)) , (safe_mul_func_uint16_t_u_u((!(p_72 | p_1592->g_47[6])), p_72))), (((void*)0 != p_1592->g_277[0][8][2]) == l_180))) , (void*)0)), (*p_71)));
                        (*l_102) = (((safe_div_func_int64_t_s_s((safe_add_func_int8_t_s_s(((*l_291) &= (0UL < ((safe_lshift_func_int8_t_s_u(((p_1592->g_88[l_202] = FAKE_DIVERGE(p_1592->group_0_offset, get_group_id(0), 10)) >= l_285), 7)) & (p_1592->g_286[0] != ((*l_290) = p_1592->g_288))))), ((void*)0 != &p_1592->g_147))), ((safe_sub_func_uint16_t_u_u(0x33B2L, (p_72 < ((safe_mul_func_uint16_t_u_u(((((*l_299) = ((l_296 != l_298[0]) , (-5L))) , p_72) & l_300), 0x58CCL)) != 0x08F5D08CL)))) , 0xDCADF4833303D4C5L))) & p_1592->g_160) , 0L);
                    }
                }
            }
            for (p_1592->g_260 = 12; (p_1592->g_260 > 37); p_1592->g_260 = safe_add_func_uint32_t_u_u(p_1592->g_260, 1))
            { /* block id: 100 */
                uint8_t **l_311 = (void*)0;
                uint8_t **l_312[3];
                int8_t l_314[10] = {3L,(-8L),3L,3L,(-8L),3L,3L,(-8L),3L,3L};
                int i;
                for (i = 0; i < 3; i++)
                    l_312[i] = (void*)0;
                (*l_102) = ((safe_mul_func_int16_t_s_s(((((*p_1592->g_225) = l_223) >= (safe_rshift_func_uint16_t_u_s(((l_314[1] &= ((p_1592->g_99 , (+(p_1592->g_307[4] , p_1592->g_287))) == (((safe_mod_func_uint8_t_u_u(p_1592->g_47[4], 0x21L)) , l_310) == (p_1592->g_313 = (void*)0)))) || (safe_div_func_uint16_t_u_u(((safe_mod_func_uint8_t_u_u((((p_72 && p_1592->g_217.f0) && l_218[5][3][2]) , l_199[0]), 0x60L)) & 0x7CCEL), p_1592->g_10[1]))), 3))) & p_72), p_72)) , (*p_71));
                if ((*p_71))
                    continue;
                if (l_263[0][0][2])
                    break;
            }
            if ((((safe_mul_func_uint16_t_u_u((**p_70), (--(*l_98)))) , GROUP_DIVERGE(0, 1)) <= ((safe_mul_func_int16_t_s_s(((*l_328) = (p_72 ^ (p_1592->g_217 , (0xBBL != (249UL | ((*l_310) = p_72)))))), (safe_add_func_uint64_t_u_u((((**l_296) = (p_72 , (safe_mul_func_int8_t_s_s(p_72, (p_72 && 0x3965L))))) | p_72), FAKE_DIVERGE(p_1592->global_2_offset, get_global_id(2), 10))))) != 0L)))
            { /* block id: 112 */
                if ((*p_71))
                    break;
                (*l_93) = (*l_93);
            }
            else
            { /* block id: 115 */
                int16_t l_357 = (-10L);
                int8_t *l_378 = &l_206;
                int64_t l_379 = 8L;
                for (l_223 = 7; (l_223 >= 2); l_223 -= 1)
                { /* block id: 118 */
                    uint32_t l_354 = 4294967293UL;
                    for (l_180 = 0; (l_180 >= 0); l_180 -= 1)
                    { /* block id: 121 */
                        int32_t *l_333 = &l_285;
                        int8_t *l_353[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        (*l_102) = p_1592->g_88[(l_180 + 4)];
                        (*l_102) = ((*l_90) = (-1L));
                        (*l_93) = l_333;
                        (*l_90) = (((safe_div_func_int64_t_s_s((((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((*l_333) = (((safe_lshift_func_int16_t_s_s((p_72 = (safe_div_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_u((l_232[(l_180 + 1)] , ((((((l_344 = &p_1592->g_175) == (((safe_mul_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(7UL, ((safe_mul_func_uint8_t_u_u(p_72, ((safe_add_func_int16_t_s_s(((void*)0 == l_353[2]), 0L)) && (p_72 == (-1L))))) & l_354))), p_1592->g_134.f0)) , p_72) , &p_72)) >= 0x6A9CL) , (void*)0) == l_355) , l_356)), (**p_70))) , 0x76L), (-5L)))), 8)) , p_1592->g_47[7]) , l_357)))) != (*p_71)) <= l_354), 18446744073709551615UL)) || (*l_333)) || p_72);
                    }
                    for (l_208 = 0; (l_208 <= 0); l_208 += 1)
                    { /* block id: 133 */
                        int i;
                        (*l_102) = (safe_div_func_int64_t_s_s((l_198 = ((&p_1592->g_286[l_208] != (void*)0) ^ (safe_lshift_func_int8_t_s_u((!(((p_1592->g_88[(l_208 + 3)] & ((-1L) <= (*l_102))) , (safe_add_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s((-1L), 5)), (safe_rshift_func_int16_t_s_s(((((p_72 , (((*p_71) || (((*p_1592->g_278) = (safe_add_func_int32_t_s_s(((l_378 == &l_206) && FAKE_DIVERGE(p_1592->local_0_offset, get_local_id(0), 10)), (**p_1592->g_224)))) | (*p_1592->g_225))) == p_72)) & p_1592->g_147) || (*p_71)) , p_1592->g_307[4].f0), p_72)))) && 0x4D747E783E292FA8L), p_1592->g_88[0])), 0x5EL)), 5)) == (**p_70)), p_1592->g_175))) < l_379)), 5)))), p_1592->g_88[(l_208 + 3)]));
                    }
                    (*p_1592->g_381) = l_380;
                }
                for (l_143 = 0; (l_143 <= 8); l_143 += 1)
                { /* block id: 142 */
                    int64_t *l_385 = &p_1592->g_289;
                    for (l_206 = 7; (l_206 >= 0); l_206 -= 1)
                    { /* block id: 145 */
                        return p_72;
                    }
                    if ((l_385 == (void*)0))
                    { /* block id: 148 */
                        return p_1592->g_260;
                    }
                    else
                    { /* block id: 150 */
                        if ((*p_71))
                            break;
                    }
                    (*l_93) = p_71;
                }
            }
        }
        for (p_1592->g_160 = 16; (p_1592->g_160 == 15); p_1592->g_160 = safe_sub_func_int8_t_s_s(p_1592->g_160, 3))
        { /* block id: 159 */
            int32_t *l_388 = &l_81;
            int32_t *l_389 = &l_198;
            int32_t *l_390 = &l_199[0];
            int32_t *l_391 = &l_207[7];
            int32_t *l_392 = (void*)0;
            int32_t *l_393 = &l_207[0];
            int32_t *l_394 = &l_207[6];
            int32_t *l_395 = &l_285;
            int32_t *l_396[5] = {&l_197,&l_197,&l_197,&l_197,&l_197};
            int i;
            --l_398;
        }
        if ((*p_71))
        { /* block id: 162 */
            return p_72;
        }
        else
        { /* block id: 164 */
            uint32_t l_445 = 4294967295UL;
            int32_t l_452 = 4L;
            int32_t l_455 = 0x2A204C59L;
            int32_t l_457 = 0x37692250L;
            int32_t l_460[6][4][4] = {{{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)}},{{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)}},{{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)}},{{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)}},{{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)}},{{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)},{(-1L),5L,1L,(-1L)}}};
            uint16_t l_508 = 5UL;
            uint64_t l_523 = 0x40CCB57C9D7B12CDL;
            uint16_t l_584 = 0x11BDL;
            uint32_t l_589 = 4294967287UL;
            int i, j, k;
            for (p_1592->g_147 = (-17); (p_1592->g_147 >= 20); p_1592->g_147 = safe_add_func_int8_t_s_s(p_1592->g_147, 6))
            { /* block id: 167 */
                uint64_t l_430 = 1UL;
                int32_t ***l_448 = &l_93;
                int32_t l_453 = (-6L);
                int32_t l_456 = 0x610B3CC9L;
                int32_t l_458 = 1L;
                int32_t l_459 = 0x406CC021L;
                int32_t l_461 = 0x2F2CEDA1L;
                int32_t l_462 = 0x40A0F2CAL;
                int32_t l_463 = (-1L);
                int32_t l_464 = (-1L);
                int32_t l_465 = 0x4A9CD06AL;
                int32_t l_466 = (-1L);
                int32_t l_467[4][6] = {{0x4DF136A0L,0x4DF136A0L,5L,1L,0x76CF9DF2L,1L},{0x4DF136A0L,0x4DF136A0L,5L,1L,0x76CF9DF2L,1L},{0x4DF136A0L,0x4DF136A0L,5L,1L,0x76CF9DF2L,1L},{0x4DF136A0L,0x4DF136A0L,5L,1L,0x76CF9DF2L,1L}};
                uint8_t l_469 = 0xCDL;
                int i, j;
                for (p_72 = 8; (p_72 <= (-3)); --p_72)
                { /* block id: 170 */
                    uint64_t *l_415 = (void*)0;
                    uint64_t *l_416 = (void*)0;
                    uint64_t *l_417 = (void*)0;
                    uint64_t *l_418 = &l_143;
                    int32_t l_425 = 9L;
                    uint32_t *l_446 = &p_1592->g_447;
                    int32_t ***l_449[6][10] = {{&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2]},{&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2]},{&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2]},{&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2]},{&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2]},{&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2],&p_1592->g_277[0][8][2]}};
                    uint32_t *l_450 = (void*)0;
                    uint32_t *l_451 = &l_78;
                    int i, j;
                    (*l_102) = ((safe_div_func_int8_t_s_s((((((((((((*p_1592->g_225) != (safe_sub_func_int64_t_s_s((safe_mod_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(((*l_418) ^= p_1592->g_47[4]), (safe_sub_func_int32_t_s_s((safe_sub_func_uint16_t_u_u((p_72 | 0x0F02L), p_72)), ((+((**l_296) = ((p_1592->g_423 , (l_218[5][3][2] , p_1592->g_424)) , (*p_1592->g_288)))) < 0x3E60D9A7CB5F4A3AL))))), p_72)), p_72)), p_1592->g_260))) < 0x52L) ^ p_72) > 0x0A9FL) > 8UL) && (**p_73)) , (void*)0) != p_71) , 0x38D5L) != l_425), 0xD3L)) || p_1592->g_10[2]);
                    (*p_1592->g_278) = (((l_198 = (((safe_sub_func_uint32_t_u_u((safe_add_func_int16_t_s_s(l_430, ((*l_102) , (safe_lshift_func_int16_t_s_s((((((*l_310) = (l_452 |= (p_72 | (((~(((*l_451) = (((safe_sub_func_int16_t_s_s((safe_div_func_int32_t_s_s(((safe_rshift_func_uint16_t_u_s((*l_90), (safe_add_func_int32_t_s_s((((*l_102) = ((safe_rshift_func_uint16_t_u_s((p_1592->g_99 &= 65535UL), 11)) >= (~(((*l_446) = ((safe_rshift_func_uint16_t_u_s(p_1592->g_52, 0)) && (0x84ABE1116D29E58BL < (8L >= l_445)))) , p_72)))) > 0x731A8787L), (-1L))))) || 0x34L), l_218[5][3][3])), l_445)) , l_448) != l_449[1][5])) , p_72)) , l_445) && p_1592->g_88[2])))) != 0x78L) || p_1592->g_134.f0) != (*p_1592->g_288)), 14))))), 0UL)) ^ (*p_1592->g_288)) > p_1592->g_47[0])) == 1UL) <= p_72);
                    ++l_469;
                    if ((*p_71))
                        break;
                }
                for (l_285 = 0; (l_285 < (-1)); l_285 = safe_sub_func_int64_t_s_s(l_285, 1))
                { /* block id: 187 */
                    for (p_72 = (-27); (p_72 > 27); ++p_72)
                    { /* block id: 190 */
                        (*p_1592->g_278) ^= (*p_71);
                        if (l_285)
                            break;
                    }
                    for (p_1592->g_175 = 0; (p_1592->g_175 <= 2); p_1592->g_175 += 1)
                    { /* block id: 196 */
                        uint32_t *l_481[3][6] = {{&p_1592->g_447,&p_1592->g_447,&p_1592->g_447,&p_1592->g_447,&p_1592->g_447,&p_1592->g_447},{&p_1592->g_447,&p_1592->g_447,&p_1592->g_447,&p_1592->g_447,&p_1592->g_447,&p_1592->g_447},{&p_1592->g_447,&p_1592->g_447,&p_1592->g_447,&p_1592->g_447,&p_1592->g_447,&p_1592->g_447}};
                        uint32_t **l_480 = &l_481[1][2];
                        int8_t *l_486[3];
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_486[i] = &l_206;
                        l_457 &= (safe_rshift_func_uint16_t_u_s((((((p_1592->g_10[2] , p_72) | ((safe_mod_func_uint8_t_u_u(((((*p_1592->g_225) < ((p_1592->g_52 ^ (((+((((*l_480) = p_71) == &p_1592->g_447) , (safe_mul_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u(p_1592->g_217.f0, l_460[0][2][1])) != FAKE_DIVERGE(p_1592->group_1_offset, get_group_id(1), 10)), ((*l_98) = (**p_73)))))) >= 0x1936L) , p_72)) , p_72)) , (void*)0) != l_486[2]), 0x0AL)) <= 65528UL)) , (*l_102)) | (-9L)) >= p_1592->g_447), 8));
                        (*l_102) ^= (safe_mul_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(((p_1592->g_499 &= ((((safe_add_func_uint8_t_u_u(((**p_73) == (((safe_add_func_uint32_t_u_u((**p_1592->g_224), l_179)) , (p_72 &= (-1L))) < (0x3D3B2C68L & (((safe_sub_func_int64_t_s_s((*p_1592->g_288), ((**p_73) , ((void*)0 == p_1592->g_277[p_1592->g_175][(p_1592->g_175 + 1)][p_1592->g_175])))) < 1UL) >= p_1592->g_47[2])))), p_1592->g_175)) || (*l_90)) , 0x75L) > l_463)) & l_460[1][1][2]), (*p_1592->g_225))), 3)) | 0x69144D079577D4F6L), l_460[5][1][0]));
                    }
                }
                for (l_81 = 6; (l_81 >= 15); l_81++)
                { /* block id: 207 */
                    int8_t l_506 = 1L;
                    int32_t l_507 = 0x798C2C62L;
                    int32_t l_517 = 0x30787627L;
                    int32_t l_518 = 0L;
                    int32_t l_520 = 0x3C1F3850L;
                    int32_t l_521[8][3] = {{0x4A84B937L,(-1L),(-8L)},{0x4A84B937L,(-1L),(-8L)},{0x4A84B937L,(-1L),(-8L)},{0x4A84B937L,(-1L),(-8L)},{0x4A84B937L,(-1L),(-8L)},{0x4A84B937L,(-1L),(-8L)},{0x4A84B937L,(-1L),(-8L)},{0x4A84B937L,(-1L),(-8L)}};
                    uint16_t *l_550 = &l_263[1][0][0];
                    int64_t **l_553 = &l_297[7];
                    int8_t *l_554[5][6][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                    uint32_t *l_556 = &p_1592->g_447;
                    uint32_t **l_555 = &l_556;
                    int i, j, k;
                    for (p_1592->g_468 = 0; (p_1592->g_468 >= 0); p_1592->g_468 -= 1)
                    { /* block id: 210 */
                        int32_t *l_502[5][3][3] = {{{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0}},{{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0}},{{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0}},{{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0}},{{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0},{&p_1592->g_499,(void*)0,(void*)0}}};
                        int i, j, k;
                        (**l_448) = p_71;
                        l_199[p_1592->g_468] |= l_218[p_1592->g_468][p_1592->g_468][(p_1592->g_468 + 3)];
                        l_503[1]--;
                        --l_508;
                    }
                    for (l_452 = 1; (l_452 >= 0); l_452 -= 1)
                    { /* block id: 218 */
                        int32_t *l_512 = &l_457;
                        int32_t *l_513 = &l_198;
                        int32_t *l_514 = &l_460[0][1][0];
                        int32_t *l_515 = &l_463;
                        int32_t *l_516[10][5][5] = {{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}},{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}},{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}},{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}},{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}},{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}},{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}},{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}},{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}},{{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]},{&l_199[0],&l_458,&p_1592->g_499,&l_465,&l_467[3][3]}}};
                        int i, j, k;
                        if (l_463)
                            goto lbl_511;
                        if (l_81)
                            goto lbl_266;
                        l_523--;
                    }
                    (*p_1592->g_278) = ((safe_rshift_func_int16_t_s_u((((safe_rshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1592->local_2_offset, get_local_id(2), 10) || ((((p_1592->g_47[4] < (safe_add_func_int16_t_s_s((((*l_344) = (GROUP_DIVERGE(1, 1) < (*p_1592->g_225))) != (safe_mod_func_int8_t_s_s((l_517 < (safe_lshift_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_u((p_72 > l_523), 10)), (safe_lshift_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(((*l_550) = (p_1592->g_99++)), ((l_458 = (&p_1592->g_286[0] != l_553)) != ((p_1592->g_47[4] , l_555) != p_1592->g_557)))), 12)))), 15))), 0x95L))), 0L))) != 0x2CE55D868E6799CBL) ^ l_507) & l_285)), 6)), GROUP_DIVERGE(2, 1))), 12)) >= l_199[0]) >= (*l_90)), GROUP_DIVERGE(1, 1))) , (*p_71));
                }
            }
            for (l_198 = 0; (l_198 >= (-24)); l_198 = safe_sub_func_int16_t_s_s(l_198, 8))
            { /* block id: 232 */
                uint8_t l_565[2][2] = {{249UL,249UL},{249UL,249UL}};
                int32_t *l_577 = &p_1592->g_52;
                int32_t *l_578 = (void*)0;
                int32_t *l_579 = &l_199[0];
                int32_t *l_580 = (void*)0;
                int32_t *l_581 = (void*)0;
                int32_t *l_582 = &l_81;
                int32_t *l_583[5][10][5] = {{{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]}},{{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]}},{{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]}},{{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]}},{{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]},{&p_1592->g_499,&l_452,&l_81,&l_204,&l_199[0]}}};
                int i, j, k;
                (*p_1592->g_278) = ((safe_sub_func_int16_t_s_s((((0xECD9L & l_565[0][0]) <= ((((((*p_73) = &l_208) == &p_1592->g_99) | (0x3BL | (0x2649L & ((((-4L) && (safe_sub_func_uint32_t_u_u((l_565[0][0] & ((safe_add_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((p_72 == 0L), 0L)), p_72)), 1UL)) | (*p_71))), p_1592->g_576[7][1]))) , l_460[0][2][1]) == p_72)))) <= 0x7A11F9ECFC87C297L) , 0UL)) , l_523), l_199[0])) && 0x63L);
                --l_584;
                for (l_455 = 0; (l_455 == 17); ++l_455)
                { /* block id: 238 */
                    ++l_589;
                    return p_1592->g_134.f0;
                }
            }
        }
        (*p_1592->g_278) = ((void*)0 == p_71);
    }
    return p_72;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1593;
    struct S1* p_1592 = &c_1593;
    struct S1 c_1594 = {
        {(-1L),(-1L),(-1L),(-1L)}, // p_1592->g_10
        65535UL, // p_1592->g_17
        {1UL,0xEA1BL,1UL,1UL,0xEA1BL,1UL,1UL,0xEA1BL}, // p_1592->g_47
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1592->g_50
        1L, // p_1592->g_52
        {0xB9L,0xB9L,0xB9L,0xB9L,0xB9L,0xB9L,0xB9L,0xB9L}, // p_1592->g_88
        8UL, // p_1592->g_99
        {0x501646CDL}, // p_1592->g_134
        0UL, // p_1592->g_147
        0x5D26L, // p_1592->g_160
        5L, // p_1592->g_175
        {1UL}, // p_1592->g_217
        &p_1592->g_147, // p_1592->g_225
        &p_1592->g_225, // p_1592->g_224
        &p_1592->g_224, // p_1592->g_226
        0x037137A1L, // p_1592->g_260
        &p_1592->g_52, // p_1592->g_278
        {{{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278}},{{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278}},{{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278},{&p_1592->g_278,(void*)0,&p_1592->g_278}}}, // p_1592->g_277
        0x68348EAA7769800EL, // p_1592->g_287
        {&p_1592->g_287}, // p_1592->g_286
        0x5385EC10DF3AD5F5L, // p_1592->g_289
        &p_1592->g_289, // p_1592->g_288
        {{0x0DD814FBL},{0x0DD814FBL},{0x0DD814FBL},{0x0DD814FBL},{0x0DD814FBL},{0x0DD814FBL},{0x0DD814FBL},{0x0DD814FBL},{0x0DD814FBL}}, // p_1592->g_307
        &p_1592->g_88[0], // p_1592->g_313
        0x5E31B598L, // p_1592->g_384
        &p_1592->g_384, // p_1592->g_383
        &p_1592->g_383, // p_1592->g_382
        &p_1592->g_382, // p_1592->g_381
        {0xD466DE73L}, // p_1592->g_423
        {2UL}, // p_1592->g_424
        4294967295UL, // p_1592->g_447
        0x2B39CA8FL, // p_1592->g_454
        (-1L), // p_1592->g_468
        3L, // p_1592->g_499
        (-3L), // p_1592->g_522
        &p_1592->g_424.f0, // p_1592->g_558
        &p_1592->g_558, // p_1592->g_557
        {{(-10L),(-10L)},{(-10L),(-10L)},{(-10L),(-10L)},{(-10L),(-10L)},{(-10L),(-10L)},{(-10L),(-10L)},{(-10L),(-10L)},{(-10L),(-10L)},{(-10L),(-10L)}}, // p_1592->g_576
        0x592F44DEL, // p_1592->g_611
        255UL, // p_1592->g_623
        0x46L, // p_1592->g_635
        0x2793A4132389025BL, // p_1592->g_667
        {1UL}, // p_1592->g_683
        &p_1592->g_47[3], // p_1592->g_777
        {{{&p_1592->g_777,&p_1592->g_777,&p_1592->g_777}}}, // p_1592->g_776
        7UL, // p_1592->g_796
        {5UL}, // p_1592->g_861
        {{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}}, // p_1592->g_869
        &p_1592->g_278, // p_1592->g_871
        (void*)0, // p_1592->g_893
        &p_1592->g_313, // p_1592->g_895
        &p_1592->g_895, // p_1592->g_894
        &p_1592->g_777, // p_1592->g_917
        &p_1592->g_307[6], // p_1592->g_972
        &p_1592->g_972, // p_1592->g_971
        {1UL}, // p_1592->g_982
        &p_1592->g_499, // p_1592->g_1035
        &p_1592->g_278, // p_1592->g_1037
        {0xCC0285DFL}, // p_1592->g_1083
        {(void*)0}, // p_1592->g_1118
        {&p_1592->g_1118[0],&p_1592->g_1118[0],&p_1592->g_1118[0],&p_1592->g_1118[0],&p_1592->g_1118[0],&p_1592->g_1118[0],&p_1592->g_1118[0],&p_1592->g_1118[0],&p_1592->g_1118[0],&p_1592->g_1118[0]}, // p_1592->g_1117
        &p_1592->g_1117[6], // p_1592->g_1116
        {{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}, // p_1592->g_1123
        {0x3F100F1B4C3E2C98L,0x384FC7842071B43DL,0x3F100F1B4C3E2C98L,0x3F100F1B4C3E2C98L,0x384FC7842071B43DL,0x3F100F1B4C3E2C98L}, // p_1592->g_1135
        {1UL,1UL,1UL}, // p_1592->g_1194
        {0UL}, // p_1592->g_1199
        0x4AB1EDF08B732331L, // p_1592->g_1215
        {{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}},{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}},{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}},{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}},{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}},{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}},{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}},{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}},{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}},{{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278},{&p_1592->g_278}}}, // p_1592->g_1238
        0x1510DABBL, // p_1592->g_1266
        &p_1592->g_278, // p_1592->g_1267
        &p_1592->g_499, // p_1592->g_1271
        {1UL}, // p_1592->g_1275
        2L, // p_1592->g_1310
        {0x5755AD78L}, // p_1592->g_1327
        &p_1592->g_278, // p_1592->g_1347
        0xB70C181BL, // p_1592->g_1353
        0x23DCB757A4EE9580L, // p_1592->g_1355
        0xC5L, // p_1592->g_1375
        0x4F2AL, // p_1592->g_1400
        &p_1592->g_278, // p_1592->g_1410
        {1UL}, // p_1592->g_1425
        {{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447},{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447},{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447},{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447},{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447},{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447},{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447},{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447},{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447},{&p_1592->g_447,(void*)0,(void*)0,&p_1592->g_447,(void*)0,&p_1592->g_447}}, // p_1592->g_1435
        {&p_1592->g_1435[9][5],&p_1592->g_1435[9][5],&p_1592->g_1435[9][5]}, // p_1592->g_1434
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1592->g_1497
        &p_1592->g_1497[1], // p_1592->g_1496
        &p_1592->g_278, // p_1592->g_1503
        &p_1592->g_278, // p_1592->g_1528
        {{&p_1592->g_611,&p_1592->g_611,&p_1592->g_611,&p_1592->g_611,&p_1592->g_611,&p_1592->g_611},{&p_1592->g_611,&p_1592->g_611,&p_1592->g_611,&p_1592->g_611,&p_1592->g_611,&p_1592->g_611}}, // p_1592->g_1579
        (void*)0, // p_1592->g_1580
        &p_1592->g_278, // p_1592->g_1581
        sequence_input[get_global_id(0)], // p_1592->global_0_offset
        sequence_input[get_global_id(1)], // p_1592->global_1_offset
        sequence_input[get_global_id(2)], // p_1592->global_2_offset
        sequence_input[get_local_id(0)], // p_1592->local_0_offset
        sequence_input[get_local_id(1)], // p_1592->local_1_offset
        sequence_input[get_local_id(2)], // p_1592->local_2_offset
        sequence_input[get_group_id(0)], // p_1592->group_0_offset
        sequence_input[get_group_id(1)], // p_1592->group_1_offset
        sequence_input[get_group_id(2)], // p_1592->group_2_offset
    };
    c_1593 = c_1594;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1592);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1592->g_10[i], "p_1592->g_10[i]", print_hash_value);

    }
    transparent_crc(p_1592->g_17, "p_1592->g_17", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1592->g_47[i], "p_1592->g_47[i]", print_hash_value);

    }
    transparent_crc(p_1592->g_52, "p_1592->g_52", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1592->g_88[i], "p_1592->g_88[i]", print_hash_value);

    }
    transparent_crc(p_1592->g_99, "p_1592->g_99", print_hash_value);
    transparent_crc(p_1592->g_134.f0, "p_1592->g_134.f0", print_hash_value);
    transparent_crc(p_1592->g_147, "p_1592->g_147", print_hash_value);
    transparent_crc(p_1592->g_160, "p_1592->g_160", print_hash_value);
    transparent_crc(p_1592->g_175, "p_1592->g_175", print_hash_value);
    transparent_crc(p_1592->g_217.f0, "p_1592->g_217.f0", print_hash_value);
    transparent_crc(p_1592->g_260, "p_1592->g_260", print_hash_value);
    transparent_crc(p_1592->g_287, "p_1592->g_287", print_hash_value);
    transparent_crc(p_1592->g_289, "p_1592->g_289", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1592->g_307[i].f0, "p_1592->g_307[i].f0", print_hash_value);

    }
    transparent_crc(p_1592->g_384, "p_1592->g_384", print_hash_value);
    transparent_crc(p_1592->g_423.f0, "p_1592->g_423.f0", print_hash_value);
    transparent_crc(p_1592->g_424.f0, "p_1592->g_424.f0", print_hash_value);
    transparent_crc(p_1592->g_447, "p_1592->g_447", print_hash_value);
    transparent_crc(p_1592->g_454, "p_1592->g_454", print_hash_value);
    transparent_crc(p_1592->g_468, "p_1592->g_468", print_hash_value);
    transparent_crc(p_1592->g_499, "p_1592->g_499", print_hash_value);
    transparent_crc(p_1592->g_522, "p_1592->g_522", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1592->g_576[i][j], "p_1592->g_576[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1592->g_611, "p_1592->g_611", print_hash_value);
    transparent_crc(p_1592->g_623, "p_1592->g_623", print_hash_value);
    transparent_crc(p_1592->g_635, "p_1592->g_635", print_hash_value);
    transparent_crc(p_1592->g_667, "p_1592->g_667", print_hash_value);
    transparent_crc(p_1592->g_683.f0, "p_1592->g_683.f0", print_hash_value);
    transparent_crc(p_1592->g_796, "p_1592->g_796", print_hash_value);
    transparent_crc(p_1592->g_861.f0, "p_1592->g_861.f0", print_hash_value);
    transparent_crc(p_1592->g_982.f0, "p_1592->g_982.f0", print_hash_value);
    transparent_crc(p_1592->g_1083.f0, "p_1592->g_1083.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1592->g_1123[i].f0, "p_1592->g_1123[i].f0", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1592->g_1135[i], "p_1592->g_1135[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1592->g_1194[i], "p_1592->g_1194[i]", print_hash_value);

    }
    transparent_crc(p_1592->g_1199.f0, "p_1592->g_1199.f0", print_hash_value);
    transparent_crc(p_1592->g_1215, "p_1592->g_1215", print_hash_value);
    transparent_crc(p_1592->g_1266, "p_1592->g_1266", print_hash_value);
    transparent_crc(p_1592->g_1275.f0, "p_1592->g_1275.f0", print_hash_value);
    transparent_crc(p_1592->g_1310, "p_1592->g_1310", print_hash_value);
    transparent_crc(p_1592->g_1327.f0, "p_1592->g_1327.f0", print_hash_value);
    transparent_crc(p_1592->g_1353, "p_1592->g_1353", print_hash_value);
    transparent_crc(p_1592->g_1355, "p_1592->g_1355", print_hash_value);
    transparent_crc(p_1592->g_1375, "p_1592->g_1375", print_hash_value);
    transparent_crc(p_1592->g_1400, "p_1592->g_1400", print_hash_value);
    transparent_crc(p_1592->g_1425.f0, "p_1592->g_1425.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
