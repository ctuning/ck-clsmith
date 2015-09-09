// --atomics 74 ---fake_divergence -g 34,75,1 -l 2,5,1
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
union U0 {
   int8_t * volatile  f0;
   volatile int32_t  f1;
};

union U1 {
   uint32_t  f0;
   volatile int8_t  f1;
   volatile uint64_t  f2;
   volatile int8_t * volatile  f3;
};

struct S2 {
    int8_t g_26;
    int8_t *g_25;
    int32_t g_37;
    int32_t * volatile g_36;
    int32_t * volatile g_38[6][6][7];
    int64_t g_58;
    int32_t g_69[10];
    int32_t g_72;
    int32_t *g_71;
    uint8_t g_86;
    volatile union U1 g_105;
    int16_t g_116;
    uint8_t g_118[6];
    int32_t * volatile *g_148;
    int32_t * volatile ** volatile g_147[2];
    uint8_t * volatile g_181;
    uint8_t * volatile *g_180;
    int8_t g_212;
    int16_t g_245;
    uint8_t *g_287;
    uint8_t **g_286;
    uint8_t ***g_285[3];
    int32_t g_290[3][3][1];
    volatile uint8_t g_298[9];
    union U1 g_319;
    uint32_t g_324;
    union U0 g_327;
    uint64_t g_330;
    volatile uint32_t g_334;
    volatile uint32_t *g_333;
    volatile uint32_t **g_332[8];
    volatile uint32_t *** volatile g_335;
    volatile union U1 g_362;
    uint32_t *g_366;
    uint32_t **g_365;
    uint32_t ***g_364;
    uint32_t g_368;
    uint32_t g_384;
    volatile int16_t g_398;
    volatile int16_t *g_397;
    volatile int16_t * volatile * volatile g_396;
    volatile union U1 g_451;
    uint16_t g_455;
    volatile int32_t g_466[2][6][1];
    volatile uint32_t g_509;
    int32_t **g_554;
    uint32_t *g_587;
    uint32_t **g_586;
    uint32_t *** volatile g_585;
    int32_t g_609;
    int16_t g_655;
    volatile union U1 * volatile g_727;
    volatile union U1 * volatile *g_726;
    uint32_t g_784;
    int32_t * volatile g_786;
    uint32_t *g_886;
    uint32_t **g_885;
    uint32_t ***g_884[2];
    int64_t g_938[2];
    uint16_t g_941;
    int8_t g_951;
    int32_t * volatile g_971;
    int64_t g_997;
    volatile union U0 g_1006;
    int64_t **g_1007;
    int8_t **g_1028;
    union U0 *g_1041;
    union U0 ** volatile g_1040[6];
    volatile int16_t g_1043;
    int8_t g_1061;
    union U0 g_1067;
    uint64_t g_1084[6];
    union U1 g_1124;
    int32_t * volatile g_1190;
    int32_t * volatile g_1191;
    volatile union U0 g_1228;
    union U0 g_1231;
    int32_t ***g_1239;
    int32_t ****g_1238;
    volatile union U0 g_1370;
    union U0 g_1372;
    union U1 *g_1395;
    union U1 **g_1394;
    int32_t * volatile g_1429;
    uint32_t *** volatile *g_1440;
    uint32_t *** volatile * volatile * volatile g_1439;
    int16_t g_1441;
    int8_t **g_1523;
    volatile int8_t **g_1537;
    volatile int8_t ** volatile *g_1536;
    volatile union U1 g_1644;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S2 * p_1659);
int32_t  func_2(int8_t * p_3, struct S2 * p_1659);
int32_t  func_4(int64_t  p_5, struct S2 * p_1659);
int64_t  func_6(int8_t * p_7, int8_t * p_8, int64_t  p_9, int16_t  p_10, int8_t * p_11, struct S2 * p_1659);
int8_t * func_12(uint32_t  p_13, int8_t * p_14, struct S2 * p_1659);
int8_t  func_21(int8_t * p_22, int8_t * p_23, int64_t  p_24, struct S2 * p_1659);
int8_t * func_27(int16_t  p_28, uint16_t  p_29, int8_t * p_30, int16_t  p_31, struct S2 * p_1659);
int32_t * func_45(int32_t  p_46, int32_t * p_47, int8_t * p_48, int32_t * p_49, int8_t * p_50, struct S2 * p_1659);
int32_t  func_51(int32_t * p_52, int8_t * p_53, struct S2 * p_1659);
int32_t * func_62(int32_t  p_63, int32_t  p_64, int8_t * p_65, uint64_t  p_66, struct S2 * p_1659);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1659->g_25 p_1659->g_26 p_1659->g_36 p_1659->g_37 p_1659->g_72 p_1659->g_58 p_1659->g_71 p_1659->g_69 p_1659->g_86 p_1659->g_105 p_1659->g_105.f0 p_1659->g_116 p_1659->g_118 p_1659->g_148 p_1659->g_180 p_1659->g_147 p_1659->g_212 p_1659->g_245 p_1659->g_285 p_1659->g_181 p_1659->g_290 p_1659->g_298 p_1659->g_327 p_1659->g_319.f0 p_1659->g_287 p_1659->g_332 p_1659->g_335 p_1659->g_451 p_1659->g_455 p_1659->g_330 p_1659->g_451.f0 p_1659->g_364 p_1659->g_365 p_1659->g_366 p_1659->g_368 p_1659->g_509 p_1659->g_286 p_1659->g_554 p_1659->g_585 p_1659->g_384 p_1659->g_609 p_1659->g_397 p_1659->g_398 p_1659->g_324 p_1659->g_726 p_1659->g_941 p_1659->g_1043 p_1659->g_1067 p_1659->g_466 p_1659->g_1084 p_1659->g_1028 p_1659->g_362.f0 p_1659->g_885 p_1659->g_1124 p_1659->g_396 p_1659->g_951 p_1659->g_1191 p_1659->g_1228 p_1659->g_1231 p_1659->g_938 p_1659->g_1238 p_1659->g_784 p_1659->g_971 p_1659->g_1239 p_1659->g_1370 p_1659->g_1372 p_1659->g_1394 p_1659->g_786 p_1659->g_333 p_1659->g_334 p_1659->g_1429 p_1659->g_1439 p_1659->g_1441 p_1659->g_997 p_1659->g_884 p_1659->g_1440 p_1659->g_1644 p_1659->g_655
 * writes: p_1659->g_37 p_1659->g_69 p_1659->g_71 p_1659->g_58 p_1659->g_86 p_1659->g_116 p_1659->g_148 p_1659->g_26 p_1659->g_38 p_1659->g_180 p_1659->g_118 p_1659->g_212 p_1659->g_245 p_1659->g_72 p_1659->g_330 p_1659->g_332 p_1659->g_455 p_1659->g_368 p_1659->g_586 p_1659->g_609 p_1659->g_324 p_1659->g_941 p_1659->g_1028 p_1659->g_1041 p_1659->g_655 p_1659->g_1084 p_1659->g_364 p_1659->g_886 p_1659->g_365 p_1659->g_938 p_1659->g_1238 p_1659->g_784 p_1659->g_384 p_1659->g_951 p_1659->g_366 p_1659->g_286 p_1659->g_1061 p_1659->g_885 p_1659->g_997 p_1659->g_1441
 */
int32_t  func_1(struct S2 * p_1659)
{ /* block id: 4 */
    int8_t l_32 = 6L;
    uint16_t l_1018 = 1UL;
    int32_t l_1101 = 0x15D03036L;
    uint8_t **l_1427[4][7] = {{&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287},{&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287},{&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287},{&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287,&p_1659->g_287}};
    uint64_t *l_1451[5][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t *l_1511 = (void*)0;
    int32_t l_1516 = 0x323A46CEL;
    int32_t l_1612 = 0x7BC0E799L;
    int i, j;
    (*p_1659->g_786) = func_2((func_4(func_6(func_12((safe_add_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(((((safe_mod_func_int32_t_s_s(((func_21(p_1659->g_25, func_27(l_32, (&p_1659->g_26 != &p_1659->g_26), &p_1659->g_26, p_1659->g_26, p_1659), l_32, p_1659) , (*p_1659->g_366)) & 0xE820F4E3L), l_32)) , 0L) , l_32) >= l_32), l_1018)), 0xE9L)), &l_32, p_1659), &p_1659->g_1061, l_1101, l_1018, &p_1659->g_951, p_1659), p_1659) , (void*)0), p_1659);
    for (p_1659->g_368 = 0; (p_1659->g_368 == 48); p_1659->g_368++)
    { /* block id: 709 */
        int32_t l_1420 = 1L;
        uint8_t **l_1425 = &p_1659->g_287;
        uint8_t ***l_1426 = &p_1659->g_286;
        uint32_t l_1428 = 5UL;
        uint32_t ****l_1438 = &p_1659->g_884[0];
        uint32_t *****l_1437 = &l_1438;
        uint32_t **l_1500 = &p_1659->g_366;
        int8_t **l_1521 = &p_1659->g_25;
        int32_t *l_1619 = &l_1101;
        uint32_t l_1645 = 0xFF58492AL;
        int32_t l_1646[1][10][5] = {{{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL},{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL},{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL},{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL},{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL},{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL},{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL},{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL},{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL},{0x1C3AC1CBL,(-6L),(-6L),0x1C3AC1CBL,0x1C3AC1CBL}}};
        int32_t l_1656 = 4L;
        int16_t l_1657[1];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1657[i] = 3L;
        (*p_1659->g_1429) = ((((-5L) == ((safe_mod_func_uint32_t_u_u((((safe_mul_func_int8_t_s_s((safe_sub_func_int8_t_s_s(((*p_1659->g_25) = l_1101), l_1420)), 1L)) >= (~(l_1420 >= ((safe_mod_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s(p_1659->g_1043, 4)), ((((*l_1426) = l_1425) == l_1427[3][2]) & (l_32 >= l_32)))) >= 0x5D04L)))) , l_1428), l_32)) > 4294967295UL)) >= l_32) && l_1428);
        if ((((safe_unary_minus_func_int16_t_s((safe_add_func_uint64_t_u_u(((l_1428 | (safe_div_func_uint32_t_u_u(4UL, 0x2B92149CL))) , (safe_mul_func_int8_t_s_s((~(((0x306C4E62L ^ (-1L)) , l_1437) == p_1659->g_1439)), p_1659->g_1441))), l_1420)))) | 0x1879F8AD2A51EFB4L) >= (*p_1659->g_366)))
        { /* block id: 713 */
            uint64_t **l_1452 = &l_1451[1][2];
            int8_t **l_1453 = &p_1659->g_25;
            int32_t l_1464 = 0x62E348E4L;
            int32_t l_1467 = 1L;
            int32_t l_1468 = 0x5EEAC84AL;
            int8_t l_1508 = (-1L);
            int64_t l_1540 = (-8L);
            int32_t *l_1542 = &p_1659->g_37;
            for (p_1659->g_941 = 0; (p_1659->g_941 <= 3); p_1659->g_941 += 1)
            { /* block id: 716 */
                int32_t *l_1444 = &p_1659->g_609;
                (*l_1444) ^= (safe_lshift_func_int8_t_s_s((**p_1659->g_1028), ((void*)0 == l_1444)));
                (***p_1659->g_1238) = &l_1420;
                if ((***p_1659->g_1239))
                    continue;
            }
            (***p_1659->g_1238) = ((((-10L) == ((**p_1659->g_286)--)) & (safe_div_func_uint16_t_u_u(((safe_div_func_int8_t_s_s((((&p_1659->g_1084[4] == ((*l_1452) = l_1451[3][3])) > (l_1453 == (void*)0)) > ((l_1420 = ((*p_1659->g_366) = (safe_rshift_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((l_1467 ^= (l_1464 = (safe_rshift_func_int16_t_s_u((0x08873A623331888AL != p_1659->g_997), (safe_rshift_func_uint16_t_u_u(l_1464, (safe_lshift_func_int16_t_s_u(l_1420, p_1659->g_26)))))))), (**p_1659->g_180))), 4294967286UL)), 1)))) == l_1428)), 0x7DL)) , FAKE_DIVERGE(p_1659->group_2_offset, get_group_id(2), 10)), l_1468))) , &l_1467);
            for (p_1659->g_1061 = 0; (p_1659->g_1061 != (-6)); p_1659->g_1061 = safe_sub_func_int16_t_s_s(p_1659->g_1061, 5))
            { /* block id: 730 */
                uint32_t l_1507[7] = {0x0880DE13L,0x0880DE13L,0x0880DE13L,0x0880DE13L,0x0880DE13L,0x0880DE13L,0x0880DE13L};
                int8_t ***l_1522 = &p_1659->g_1028;
                int8_t ***l_1539 = &l_1453;
                int8_t ****l_1538 = &l_1539;
                int32_t l_1541[5] = {0x1ED561E6L,0x1ED561E6L,0x1ED561E6L,0x1ED561E6L,0x1ED561E6L};
                int i;
                for (l_1428 = 0; (l_1428 <= 3); l_1428 += 1)
                { /* block id: 733 */
                    (*p_1659->g_554) = (**p_1659->g_1239);
                    (**p_1659->g_1440) = (**l_1438);
                }
                for (p_1659->g_997 = 5; (p_1659->g_997 >= 0); p_1659->g_997 -= 1)
                { /* block id: 739 */
                    int16_t *l_1471 = &p_1659->g_116;
                    int8_t *l_1488 = (void*)0;
                    int8_t *l_1489 = &p_1659->g_951;
                    uint16_t *l_1509 = &p_1659->g_941;
                    int32_t l_1510 = 0x36145577L;
                    int i, j, k;
                    (1 + 1);
                }
            }
        }
        else
        { /* block id: 759 */
            int16_t l_1547 = 0x4ADBL;
            int32_t *l_1549 = &p_1659->g_69[4];
            for (p_1659->g_1441 = (-27); (p_1659->g_1441 == (-30)); p_1659->g_1441 = safe_sub_func_int16_t_s_s(p_1659->g_1441, 7))
            { /* block id: 762 */
                int32_t *l_1548 = &p_1659->g_609;
                for (p_1659->g_245 = 12; (p_1659->g_245 <= (-10)); p_1659->g_245 = safe_sub_func_uint8_t_u_u(p_1659->g_245, 5))
                { /* block id: 765 */
                    if (l_1547)
                        break;
                }
                (*p_1659->g_148) = l_1548;
                (**p_1659->g_1239) = l_1511;
            }
            (*l_1549) = 0x3CAB09FBL;
            if ((atomic_inc(&p_1659->l_atomic_input[52]) == 0))
            { /* block id: 773 */
                int16_t l_1550 = 0x1DB5L;
                uint64_t l_1551[9] = {0xA2630ADA93C071DBL,0xA2630ADA93C071DBL,0xA2630ADA93C071DBL,0xA2630ADA93C071DBL,0xA2630ADA93C071DBL,0xA2630ADA93C071DBL,0xA2630ADA93C071DBL,0xA2630ADA93C071DBL,0xA2630ADA93C071DBL};
                int32_t l_1598 = (-9L);
                int32_t l_1599 = 0x67C772CEL;
                int32_t *l_1600[8] = {&l_1599,&l_1599,&l_1599,&l_1599,&l_1599,&l_1599,&l_1599,&l_1599};
                uint8_t l_1606[7][1][1] = {{{8UL}},{{8UL}},{{8UL}},{{8UL}},{{8UL}},{{8UL}},{{8UL}}};
                int16_t l_1607 = 0x5F82L;
                int i, j, k;
                if ((l_1550 , l_1551[1]))
                { /* block id: 774 */
                    int32_t l_1552 = 8L;
                    union U1 l_1562 = {4294967292UL};/* VOLATILE GLOBAL l_1562 */
                    union U1 *l_1561 = &l_1562;
                    union U1 *l_1563 = &l_1562;
                    for (l_1552 = 1; (l_1552 > (-22)); l_1552 = safe_sub_func_int16_t_s_s(l_1552, 5))
                    { /* block id: 777 */
                        int32_t l_1556 = 0x2E9E1553L;
                        int32_t *l_1555 = &l_1556;
                        int32_t *l_1557 = &l_1556;
                        uint32_t l_1558[6][6] = {{1UL,0x506C5C06L,0xBF128705L,0x6D6A796DL,0x506C5C06L,0x6D6A796DL},{1UL,0x506C5C06L,0xBF128705L,0x6D6A796DL,0x506C5C06L,0x6D6A796DL},{1UL,0x506C5C06L,0xBF128705L,0x6D6A796DL,0x506C5C06L,0x6D6A796DL},{1UL,0x506C5C06L,0xBF128705L,0x6D6A796DL,0x506C5C06L,0x6D6A796DL},{1UL,0x506C5C06L,0xBF128705L,0x6D6A796DL,0x506C5C06L,0x6D6A796DL},{1UL,0x506C5C06L,0xBF128705L,0x6D6A796DL,0x506C5C06L,0x6D6A796DL}};
                        int i, j;
                        l_1557 = l_1555;
                        l_1558[0][0]--;
                    }
                    l_1563 = l_1561;
                }
                else
                { /* block id: 782 */
                    int32_t l_1564 = 0x6B30CF2EL;
                    uint32_t l_1576 = 4294967295UL;
                    uint32_t l_1577[10][10] = {{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L},{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L},{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L},{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L},{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L},{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L},{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L},{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L},{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L},{5UL,9UL,0x18891166L,0x4EC0DDD9L,0x18891166L,9UL,5UL,9UL,0x1954A2A0L,0x1954A2A0L}};
                    int i, j;
                    if (l_1564)
                    { /* block id: 783 */
                        uint16_t l_1565[5][8][4] = {{{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L}},{{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L}},{{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L}},{{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L}},{{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L},{0x0665L,0x0665L,0x0665L,0x0665L}}};
                        int32_t l_1567 = 0x012684BEL;
                        int32_t *l_1566 = &l_1567;
                        uint16_t l_1568 = 0UL;
                        int16_t l_1573 = 1L;
                        int16_t *l_1572 = &l_1573;
                        int16_t **l_1571[7][1] = {{&l_1572},{&l_1572},{&l_1572},{&l_1572},{&l_1572},{&l_1572},{&l_1572}};
                        int i, j, k;
                        l_1565[3][4][1] = 0x34377E14L;
                        l_1566 = (void*)0;
                        l_1568--;
                        l_1571[6][0] = (void*)0;
                    }
                    else
                    { /* block id: 788 */
                        int32_t l_1574[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
                        uint32_t l_1575 = 1UL;
                        int i;
                        l_1575 = (l_1574[1] |= 0L);
                    }
                    if ((l_1577[0][5] |= l_1576))
                    { /* block id: 793 */
                        uint64_t l_1578 = 0x94FB2DD11CB6594AL;
                        int8_t l_1579 = 1L;
                        uint16_t l_1580 = 0x6A50L;
                        int32_t l_1582 = 0x5D59E97BL;
                        int32_t *l_1581 = &l_1582;
                        int32_t l_1583 = 0x41108A25L;
                        uint16_t l_1584 = 65531UL;
                        uint32_t l_1585 = 0UL;
                        int32_t l_1586 = 0x2987A352L;
                        uint32_t l_1587[4][3][6] = {{{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL},{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL},{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL}},{{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL},{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL},{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL}},{{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL},{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL},{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL}},{{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL},{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL},{0UL,4294967295UL,4294967287UL,0x11BAD420L,4294967287UL,4294967295UL}}};
                        int i, j, k;
                        l_1580 = ((l_1578 = 0x62L) , l_1579);
                        l_1581 = l_1581;
                        l_1584 &= l_1583;
                        (*l_1581) ^= ((l_1564 = (l_1585 , (l_1583 = l_1586))) , l_1587[2][1][0]);
                    }
                    else
                    { /* block id: 801 */
                        int32_t l_1588 = 0x430DD1B8L;
                        int8_t l_1589[1][9] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L}};
                        uint32_t l_1590 = 1UL;
                        uint16_t l_1591 = 0xD977L;
                        uint64_t l_1592 = 1UL;
                        uint64_t l_1593 = 2UL;
                        uint32_t l_1594 = 0x54B4F0A5L;
                        uint32_t l_1595 = 0x7CFCD29FL;
                        int16_t l_1596 = 6L;
                        uint32_t l_1597 = 0x77ABF90BL;
                        int i, j;
                        l_1589[0][7] = l_1588;
                        l_1592 = (l_1590 , l_1591);
                        l_1594 = l_1593;
                        l_1597 = (l_1596 |= l_1595);
                    }
                }
                l_1600[0] = ((l_1598 = GROUP_DIVERGE(0, 1)) , (l_1599 , (void*)0));
                for (l_1551[5] = 0; (l_1551[5] < 9); l_1551[5] = safe_add_func_int8_t_s_s(l_1551[5], 5))
                { /* block id: 813 */
                    int32_t l_1603 = 1L;
                    for (l_1603 = 1; (l_1603 <= 5); l_1603 += 1)
                    { /* block id: 816 */
                        uint8_t l_1604[4][4][7] = {{{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L}},{{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L}},{{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L}},{{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L},{1UL,252UL,252UL,1UL,0x57L,0xF6L,0xB2L}}};
                        int16_t l_1605 = 0x6BE6L;
                        int i, j, k;
                        l_1605 |= l_1604[1][1][4];
                    }
                }
                l_1607 |= l_1606[0][0][0];
                unsigned int result = 0;
                result += l_1550;
                int l_1551_i0;
                for (l_1551_i0 = 0; l_1551_i0 < 9; l_1551_i0++) {
                    result += l_1551[l_1551_i0];
                }
                result += l_1598;
                result += l_1599;
                int l_1606_i0, l_1606_i1, l_1606_i2;
                for (l_1606_i0 = 0; l_1606_i0 < 7; l_1606_i0++) {
                    for (l_1606_i1 = 0; l_1606_i1 < 1; l_1606_i1++) {
                        for (l_1606_i2 = 0; l_1606_i2 < 1; l_1606_i2++) {
                            result += l_1606[l_1606_i0][l_1606_i1][l_1606_i2];
                        }
                    }
                }
                result += l_1607;
                atomic_add(&p_1659->l_special_values[52], result);
            }
            else
            { /* block id: 821 */
                (1 + 1);
            }
        }
        for (l_1420 = 0; (l_1420 == 10); l_1420 = safe_add_func_uint32_t_u_u(l_1420, 7))
        { /* block id: 827 */
            int8_t *l_1622 = &p_1659->g_26;
            int8_t ***l_1625 = &p_1659->g_1523;
            int8_t ****l_1624 = &l_1625;
            int32_t l_1655[6] = {0x25296039L,0x25296039L,0x25296039L,0x25296039L,0x25296039L,0x25296039L};
            int32_t l_1658 = (-5L);
            int i;
            for (p_1659->g_609 = 25; (p_1659->g_609 == 11); p_1659->g_609 = safe_sub_func_int64_t_s_s(p_1659->g_609, 6))
            { /* block id: 830 */
                uint64_t l_1616 = 0x30071423704D8C49L;
                int32_t l_1627 = 0x01B8EB6BL;
                l_1612 = (*p_1659->g_1191);
                for (l_1018 = 3; (l_1018 <= 8); l_1018 += 1)
                { /* block id: 834 */
                    int32_t *l_1613 = &p_1659->g_37;
                    int32_t *l_1614 = (void*)0;
                    int32_t *l_1615[6][3];
                    int32_t *l_1621 = &l_1516;
                    int32_t **l_1620 = &l_1621;
                    uint16_t *l_1623[4];
                    int8_t ****l_1626[5];
                    int i, j;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_1615[i][j] = &p_1659->g_37;
                    }
                    for (i = 0; i < 4; i++)
                        l_1623[i] = &p_1659->g_941;
                    for (i = 0; i < 5; i++)
                        l_1626[i] = (void*)0;
                    l_1616++;
                    if ((*p_1659->g_1191))
                        continue;
                    (*p_1659->g_554) = func_62(((*l_1613) = (l_1619 == ((*l_1620) = &p_1659->g_290[1][1][0]))), p_1659->g_26, l_1622, (0x7DL || (l_1627 ^= (((void*)0 != &p_1659->g_1041) , ((p_1659->g_941 = 9UL) || ((l_1624 != l_1626[0]) , 0xEC5FL))))), p_1659);
                }
            }
            if (l_1516)
                continue;
            l_1658 |= ((65533UL && ((safe_sub_func_uint8_t_u_u(((**p_1659->g_180) = (l_1656 ^= (safe_mul_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s((p_1659->g_1084[0] | (p_1659->g_938[0] |= (((safe_sub_func_uint32_t_u_u((safe_add_func_uint8_t_u_u(l_1428, l_1420)), (p_1659->g_1644 , (l_1645 && l_1646[0][9][4])))) & (7L == (safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(((**p_1659->g_286) = (!((safe_rshift_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s(((*p_1659->g_1238) != (void*)0), 9)) == p_1659->g_997), 4)) >= (***p_1659->g_364)))), 4)), 1)))) || 65532UL))), p_1659->g_951)), l_1646[0][4][3])), 3)), l_1655[1])), (-5L))))), l_1657[0])) , p_1659->g_334)) | 0x0BL);
        }
    }
    return p_1659->g_655;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_2(int8_t * p_3, struct S2 * p_1659)
{ /* block id: 703 */
    uint64_t **l_1410 = (void*)0;
    uint64_t ***l_1409 = &l_1410;
    int32_t l_1411[6][10][2] = {{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}}};
    int i, j, k;
    (*l_1409) = (void*)0;
    return l_1411[3][9][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1659->g_324 p_1659->g_1124 p_1659->g_365 p_1659->g_366 p_1659->g_396 p_1659->g_397 p_1659->g_398 p_1659->g_290 p_1659->g_1028 p_1659->g_25 p_1659->g_26 p_1659->g_609 p_1659->g_368 p_1659->g_335 p_1659->g_332 p_1659->g_364 p_1659->g_951 p_1659->g_384 p_1659->g_455 p_1659->g_286 p_1659->g_287 p_1659->g_1191 p_1659->g_148 p_1659->g_36 p_1659->g_37 p_1659->g_72 p_1659->g_1228 p_1659->g_1231 p_1659->g_938 p_1659->g_118 p_1659->g_1238 p_1659->g_554 p_1659->g_784 p_1659->g_69 p_1659->g_105.f0 p_1659->g_971 p_1659->g_245 p_1659->g_1239 p_1659->g_71 p_1659->g_1370 p_1659->g_1372 p_1659->g_1394 p_1659->g_786 p_1659->g_333 p_1659->g_334
 * writes: p_1659->g_368 p_1659->g_26 p_1659->g_365 p_1659->g_245 p_1659->g_324 p_1659->g_455 p_1659->g_118 p_1659->g_938 p_1659->g_69 p_1659->g_38 p_1659->g_72 p_1659->g_1238 p_1659->g_71 p_1659->g_784 p_1659->g_384 p_1659->g_655 p_1659->g_951 p_1659->g_116 p_1659->g_366 p_1659->g_37 p_1659->g_58 p_1659->g_609
 */
int32_t  func_4(int64_t  p_5, struct S2 * p_1659)
{ /* block id: 538 */
    uint32_t l_1125 = 0x7138AE57L;
    int32_t *l_1126 = &p_1659->g_290[0][0][0];
    int32_t l_1139 = 7L;
    uint16_t *l_1162 = (void*)0;
    uint16_t l_1170 = 65535UL;
    int32_t l_1196[5];
    int32_t l_1242 = 0x0DFF5778L;
    uint64_t l_1243 = 0x8D01CAC32DA8A12CL;
    uint32_t **l_1289 = &p_1659->g_587;
    int32_t *l_1356[7][5] = {{&p_1659->g_69[5],&p_1659->g_72,&p_1659->g_69[5],&p_1659->g_69[5],&p_1659->g_72},{&p_1659->g_69[5],&p_1659->g_72,&p_1659->g_69[5],&p_1659->g_69[5],&p_1659->g_72},{&p_1659->g_69[5],&p_1659->g_72,&p_1659->g_69[5],&p_1659->g_69[5],&p_1659->g_72},{&p_1659->g_69[5],&p_1659->g_72,&p_1659->g_69[5],&p_1659->g_69[5],&p_1659->g_72},{&p_1659->g_69[5],&p_1659->g_72,&p_1659->g_69[5],&p_1659->g_69[5],&p_1659->g_72},{&p_1659->g_69[5],&p_1659->g_72,&p_1659->g_69[5],&p_1659->g_69[5],&p_1659->g_72},{&p_1659->g_69[5],&p_1659->g_72,&p_1659->g_69[5],&p_1659->g_69[5],&p_1659->g_72}};
    uint64_t l_1407 = 18446744073709551608UL;
    uint32_t l_1408 = 0x56FD48D2L;
    int i, j;
    for (i = 0; i < 5; i++)
        l_1196[i] = 0x4158D0F1L;
    if ((0xB8L >= (((p_1659->g_324 > (0xF2599868L ^ (p_1659->g_1124 , ((l_1125 && (l_1125 & l_1125)) , (((void*)0 != l_1126) != p_5))))) | p_5) && (**p_1659->g_365))))
    { /* block id: 539 */
        int16_t *l_1135[3];
        int16_t **l_1134 = &l_1135[1];
        int16_t ***l_1133 = &l_1134;
        int32_t l_1136 = (-5L);
        uint32_t *l_1137 = (void*)0;
        int8_t l_1138[6] = {0x0EL,0x3DL,0x0EL,0x0EL,0x3DL,0x0EL};
        int32_t l_1140 = 0x5328C312L;
        int i;
        for (i = 0; i < 3; i++)
            l_1135[i] = &p_1659->g_655;
        l_1140 ^= ((((l_1139 = (safe_rshift_func_int16_t_s_u((**p_1659->g_396), ((((+(safe_mul_func_uint16_t_u_u(p_1659->g_290[0][2][0], (safe_lshift_func_int8_t_s_s((**p_1659->g_1028), 0))))) > (((((((*l_1133) = (void*)0) == &p_1659->g_397) || p_5) != ((l_1136 < (l_1125 > (((+(l_1137 == l_1126)) , l_1136) || p_1659->g_609))) , p_5)) && p_5) || 2L)) == p_5) & l_1138[5])))) , GROUP_DIVERGE(2, 1)) < p_5) != p_5);
        return p_5;
    }
    else
    { /* block id: 544 */
        uint64_t l_1163[5][4];
        int64_t ***l_1187 = &p_1659->g_1007;
        int32_t l_1195[7][5] = {{(-6L),0x53FC35D2L,(-6L),(-6L),0x53FC35D2L},{(-6L),0x53FC35D2L,(-6L),(-6L),0x53FC35D2L},{(-6L),0x53FC35D2L,(-6L),(-6L),0x53FC35D2L},{(-6L),0x53FC35D2L,(-6L),(-6L),0x53FC35D2L},{(-6L),0x53FC35D2L,(-6L),(-6L),0x53FC35D2L},{(-6L),0x53FC35D2L,(-6L),(-6L),0x53FC35D2L},{(-6L),0x53FC35D2L,(-6L),(-6L),0x53FC35D2L}};
        uint32_t **l_1292[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_1293 = 0x1F649E4EL;
        uint32_t l_1307 = 3UL;
        union U0 ***l_1332 = (void*)0;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 4; j++)
                l_1163[i][j] = 0xC95E60F649FC0A62L;
        }
        for (p_1659->g_368 = 17; (p_1659->g_368 == 7); p_1659->g_368--)
        { /* block id: 547 */
            uint32_t **l_1151 = &p_1659->g_366;
            uint32_t **l_1152 = &p_1659->g_366;
            uint32_t ***l_1153 = &l_1151;
            int16_t *l_1154 = (void*)0;
            int32_t l_1164 = 0x6BD7B62FL;
            int32_t *l_1165 = (void*)0;
            int32_t *l_1166 = (void*)0;
            int32_t *l_1167 = (void*)0;
            int32_t *l_1168[10][5] = {{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609},{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609},{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609},{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609},{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609},{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609},{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609},{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609},{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609},{&p_1659->g_72,&p_1659->g_69[0],&l_1139,&l_1164,&p_1659->g_609}};
            int16_t l_1169[6][9][4] = {{{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL}},{{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL}},{{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL}},{{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL}},{{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL}},{{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL},{0x042FL,0x4DAAL,(-1L),0x042FL}}};
            int i, j, k;
            l_1163[3][1] ^= (((*p_1659->g_25) ^= 0x2DL) , (safe_sub_func_uint32_t_u_u((((safe_div_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((*p_1659->g_25) = p_5), (~(!p_5)))), (safe_div_func_uint64_t_u_u((((p_1659->g_245 = ((*p_1659->g_335) == ((*l_1153) = ((*p_1659->g_364) = (l_1152 = l_1151))))) & (l_1125 < (((0xF9L == (safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(((p_1659->g_455 = (safe_unary_minus_func_uint32_t_u(((*p_1659->g_366) |= FAKE_DIVERGE(p_1659->group_2_offset, get_group_id(2), 10))))) > ((-5L) | (safe_lshift_func_int16_t_s_u(((+(p_1659->g_951 , FAKE_DIVERGE(p_1659->group_1_offset, get_group_id(1), 10))) , p_1659->g_384), 11)))), 11)), 0x6310L))) , (void*)0) == (void*)0))) , p_1659->g_290[1][1][0]), l_1139)))) , l_1162) != (void*)0), p_5)));
            l_1170--;
        }
        if (p_5)
        { /* block id: 559 */
            int64_t *l_1188 = &p_1659->g_938[1];
            int32_t l_1189 = 0L;
            int32_t *l_1192 = (void*)0;
            int32_t l_1211[3];
            int i;
            for (i = 0; i < 3; i++)
                l_1211[i] = 0x00B75E69L;
            if (((safe_mod_func_int64_t_s_s(p_1659->g_455, (safe_mul_func_uint8_t_u_u(p_5, (safe_mul_func_int16_t_s_s((l_1163[3][1] <= (((*l_1188) = (0x346BL ^ (((safe_mod_func_uint32_t_u_u(p_5, (safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((*p_1659->g_25) = (((~p_5) ^ GROUP_DIVERGE(0, 1)) , p_5)), l_1163[3][3])), ((**p_1659->g_286) = (&p_1659->g_1007 == l_1187)))))) , l_1163[1][1]) | 0x5DF4C505EAF6AA35L))) > l_1189)), p_5)))))) < l_1163[3][1]))
            { /* block id: 563 */
                (*p_1659->g_1191) = p_5;
                (*p_1659->g_148) = l_1192;
            }
            else
            { /* block id: 566 */
                uint32_t l_1197[1];
                int32_t l_1207 = 0x748CC998L;
                int32_t l_1209[10][8][3] = {{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}},{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}},{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}},{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}},{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}},{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}},{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}},{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}},{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}},{{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L},{9L,9L,0x4CD5C634L}}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_1197[i] = 0xE94B9725L;
                if (p_5)
                { /* block id: 567 */
                    int32_t *l_1193 = (void*)0;
                    int32_t *l_1194[7] = {&l_1139,&l_1139,&l_1139,&l_1139,&l_1139,&l_1139,&l_1139};
                    int i;
                    --l_1197[0];
                    for (p_5 = 4; (p_5 >= 0); p_5 -= 1)
                    { /* block id: 571 */
                        return (*p_1659->g_36);
                    }
                    for (p_1659->g_72 = 0; (p_1659->g_72 >= 0); p_1659->g_72 -= 1)
                    { /* block id: 576 */
                        l_1196[3] |= l_1195[4][4];
                        l_1196[4] = (-4L);
                    }
                }
                else
                { /* block id: 580 */
                    int8_t l_1200[1];
                    int32_t l_1208 = 0x3233D85CL;
                    int32_t l_1210 = 7L;
                    int32_t l_1212[10];
                    uint32_t l_1213 = 0x36C5E23CL;
                    int32_t ****l_1241 = &p_1659->g_1239;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1200[i] = 0x73L;
                    for (i = 0; i < 10; i++)
                        l_1212[i] = 0x39CBF485L;
                    for (p_1659->g_26 = 1; (p_1659->g_26 >= 0); p_1659->g_26 -= 1)
                    { /* block id: 583 */
                        int32_t *l_1201 = &l_1189;
                        int32_t *l_1202 = (void*)0;
                        int32_t *l_1203 = &p_1659->g_69[7];
                        int32_t *l_1204 = &l_1196[4];
                        int32_t *l_1205 = &l_1195[5][0];
                        int32_t *l_1206[4][9] = {{&l_1189,&p_1659->g_72,&l_1189,&l_1189,&p_1659->g_72,&l_1189,&l_1189,&p_1659->g_72,&l_1189},{&l_1189,&p_1659->g_72,&l_1189,&l_1189,&p_1659->g_72,&l_1189,&l_1189,&p_1659->g_72,&l_1189},{&l_1189,&p_1659->g_72,&l_1189,&l_1189,&p_1659->g_72,&l_1189,&l_1189,&p_1659->g_72,&l_1189},{&l_1189,&p_1659->g_72,&l_1189,&l_1189,&p_1659->g_72,&l_1189,&l_1189,&p_1659->g_72,&l_1189}};
                        int32_t *****l_1240 = &p_1659->g_1238;
                        int i, j;
                        l_1213++;
                        l_1243 |= ((safe_rshift_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((+(safe_add_func_int64_t_s_s(p_5, (((safe_add_func_int64_t_s_s((-1L), (safe_sub_func_uint16_t_u_u((p_5 ^ (p_5 , (safe_add_func_int8_t_s_s((+((((*l_1240) = ((((((((**p_1659->g_286) = (p_1659->g_1228 , (safe_mul_func_uint16_t_u_u((p_5 < ((((p_1659->g_1231 , (((safe_mod_func_int16_t_s_s((0UL <= (safe_sub_func_int32_t_s_s(((safe_sub_func_uint16_t_u_u(((l_1139 , (void*)0) != &p_1659->g_997), (-7L))) <= l_1163[2][0]), 0xD71E7DEDL))), 0xFBD2L)) >= p_1659->g_938[1]) & GROUP_DIVERGE(1, 1))) && GROUP_DIVERGE(2, 1)) ^ (**p_1659->g_1028)) | (**p_1659->g_286))), p_1659->g_938[1])))) < (*p_1659->g_25)) ^ (-1L)) , p_5) , p_5) <= p_5) , p_1659->g_1238)) == l_1241) , l_1196[4])), p_5)))), l_1163[4][2])))) > p_5) >= 0x4768799EL)))), l_1242)), p_5)) & l_1196[0]);
                        (*p_1659->g_554) = (void*)0;
                    }
                    for (p_1659->g_784 = 0; (p_1659->g_784 >= 47); p_1659->g_784 = safe_add_func_uint8_t_u_u(p_1659->g_784, 8))
                    { /* block id: 592 */
                        int32_t *l_1246 = &l_1211[2];
                        if ((*p_1659->g_1191))
                            break;
                        (*l_1246) ^= (*p_1659->g_36);
                    }
                }
            }
        }
        else
        { /* block id: 598 */
            if ((atomic_inc(&p_1659->l_atomic_input[5]) == 5))
            { /* block id: 600 */
                uint16_t l_1247 = 0xC342L;
                int32_t l_1266 = (-4L);
                int32_t l_1267 = (-1L);
                if ((l_1247 = 0x596FD8E0L))
                { /* block id: 602 */
                    int32_t l_1248 = (-1L);
                    int64_t l_1249 = 0x2BABC6F372398FB9L;
                    l_1249 = (l_1248 |= 0x52D10853L);
                }
                else
                { /* block id: 605 */
                    int32_t l_1250 = 0x657CBAC4L;
                    if (l_1250)
                    { /* block id: 606 */
                        int32_t l_1252 = 0L;
                        int32_t *l_1251 = &l_1252;
                        int32_t *l_1253[5] = {&l_1252,&l_1252,&l_1252,&l_1252,&l_1252};
                        uint64_t l_1254 = 0xE2A9A4D1431D0988L;
                        int64_t l_1255[9] = {0x47A1DC4A0D04E6F2L,9L,0x47A1DC4A0D04E6F2L,0x47A1DC4A0D04E6F2L,9L,0x47A1DC4A0D04E6F2L,0x47A1DC4A0D04E6F2L,9L,0x47A1DC4A0D04E6F2L};
                        int32_t l_1256[5][1][3];
                        uint64_t l_1257 = 1UL;
                        uint16_t l_1258 = 0x609AL;
                        int32_t l_1259 = 0x2FE11151L;
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 3; k++)
                                    l_1256[i][j][k] = (-1L);
                            }
                        }
                        l_1253[2] = l_1251;
                        l_1250 ^= (l_1254 , l_1255[6]);
                        l_1259 |= (l_1258 = (l_1257 = (l_1250 = l_1256[4][0][1])));
                    }
                    else
                    { /* block id: 613 */
                        uint32_t l_1260[10] = {0xC52478A4L,0x356A5460L,0xB6AB47FAL,0x356A5460L,0xC52478A4L,0xC52478A4L,0x356A5460L,0xB6AB47FAL,0x356A5460L,0xC52478A4L};
                        uint32_t l_1263 = 4294967295UL;
                        int i;
                        l_1260[4]++;
                        ++l_1263;
                    }
                }
                l_1267 ^= l_1266;
                unsigned int result = 0;
                result += l_1247;
                result += l_1266;
                result += l_1267;
                atomic_add(&p_1659->l_special_values[5], result);
            }
            else
            { /* block id: 619 */
                (1 + 1);
            }
            (*p_1659->g_1191) = p_5;
            return p_5;
        }
        for (p_5 = 0; (p_5 != (-7)); p_5 = safe_sub_func_uint64_t_u_u(p_5, 4))
        { /* block id: 627 */
            int8_t l_1284[9][8] = {{0x32L,0x32L,0x48L,0L,0x32L,0L,0x48L,0x32L},{0x32L,0x32L,0x48L,0L,0x32L,0L,0x48L,0x32L},{0x32L,0x32L,0x48L,0L,0x32L,0L,0x48L,0x32L},{0x32L,0x32L,0x48L,0L,0x32L,0L,0x48L,0x32L},{0x32L,0x32L,0x48L,0L,0x32L,0L,0x48L,0x32L},{0x32L,0x32L,0x48L,0L,0x32L,0L,0x48L,0x32L},{0x32L,0x32L,0x48L,0L,0x32L,0L,0x48L,0x32L},{0x32L,0x32L,0x48L,0L,0x32L,0L,0x48L,0x32L},{0x32L,0x32L,0x48L,0L,0x32L,0L,0x48L,0x32L}};
            uint32_t **l_1290 = &p_1659->g_587;
            int32_t l_1302 = 0x21006844L;
            int32_t l_1304 = 0x4F65438CL;
            int32_t l_1306 = 0x315DC782L;
            int32_t l_1355[8] = {0x53CEBA5EL,0x17A5B9D7L,0x53CEBA5EL,0x53CEBA5EL,0x17A5B9D7L,0x53CEBA5EL,0x53CEBA5EL,0x17A5B9D7L};
            uint32_t *l_1364 = &p_1659->g_784;
            uint32_t ****l_1379 = &p_1659->g_884[1];
            int i, j;
            for (p_1659->g_384 = 4; (p_1659->g_384 >= 47); ++p_1659->g_384)
            { /* block id: 630 */
                int64_t l_1276 = 0x477CAB949647A2CEL;
                int32_t l_1303 = 0x5115DF18L;
                int32_t l_1305 = 0x23E24F2FL;
                for (p_1659->g_655 = 0; (p_1659->g_655 <= (-19)); --p_1659->g_655)
                { /* block id: 633 */
                    int32_t *l_1277 = &p_1659->g_609;
                    uint32_t ***l_1291[2][9] = {{(void*)0,&p_1659->g_586,&p_1659->g_586,(void*)0,(void*)0,&p_1659->g_586,&p_1659->g_586,(void*)0,(void*)0},{(void*)0,&p_1659->g_586,&p_1659->g_586,(void*)0,(void*)0,&p_1659->g_586,&p_1659->g_586,(void*)0,(void*)0}};
                    int i, j;
                    for (p_1659->g_784 = 22; (p_1659->g_784 <= 28); p_1659->g_784 = safe_add_func_uint8_t_u_u(p_1659->g_784, 3))
                    { /* block id: 636 */
                        l_1196[1] |= (p_5 < (l_1276 > p_5));
                        l_1277 = l_1277;
                    }
                    l_1293 &= ((p_1659->g_105.f0 | (safe_mod_func_uint32_t_u_u(p_5, (safe_mul_func_int16_t_s_s(((safe_add_func_uint8_t_u_u((l_1284[6][7] || 249UL), ((safe_add_func_int8_t_s_s(((((250UL > (safe_sub_func_int8_t_s_s(l_1195[6][1], 6UL))) < (l_1289 == (l_1292[3] = l_1290))) < (*p_1659->g_25)) , (*p_1659->g_25)), (-1L))) & p_5))) == 1L), l_1195[0][1]))))) && p_5);
                }
                for (p_1659->g_72 = 0; (p_1659->g_72 <= 2); ++p_1659->g_72)
                { /* block id: 645 */
                    int32_t *l_1296 = (void*)0;
                    int32_t *l_1297 = &l_1195[6][1];
                    int32_t *l_1298 = &p_1659->g_37;
                    int32_t *l_1299 = &p_1659->g_69[7];
                    int32_t *l_1300 = &l_1139;
                    int32_t *l_1301[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_1301[i] = &l_1195[6][1];
                    l_1307--;
                    (*p_1659->g_148) = &l_1196[3];
                    return (*p_1659->g_971);
                }
            }
            for (p_1659->g_951 = 0; (p_1659->g_951 >= 0); p_1659->g_951 -= 1)
            { /* block id: 653 */
                uint16_t *l_1329 = (void*)0;
                uint16_t *l_1330 = &p_1659->g_455;
                int16_t *l_1331 = &p_1659->g_245;
                int64_t *l_1333 = &p_1659->g_938[0];
                int32_t *l_1334[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_1334[i] = &l_1242;
                l_1139 |= (0x42F31ADDL && (safe_rshift_func_int8_t_s_s(((p_1659->g_116 = (((safe_div_func_int16_t_s_s((~(safe_sub_func_uint64_t_u_u((((*l_1333) = (((*p_1659->g_397) ^ p_5) & (safe_sub_func_uint64_t_u_u(p_5, ((safe_sub_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_s(p_5, (((safe_sub_func_int64_t_s_s(((safe_unary_minus_func_int32_t_s(0L)) && (safe_rshift_func_int16_t_s_u(((*l_1331) ^= (safe_mul_func_uint16_t_u_u(((*l_1330) = 65528UL), 0L))), (l_1332 == (void*)0)))), p_5)) < 0x6D51B72CL) <= p_5))) > 0x36L), 0x4D4FL)) != l_1284[1][4]))))) , 0x88C13F82680DFE01L), 0xC6633E1B54DE90BBL))), l_1196[4])) , &p_1659->g_587) == &p_1659->g_587)) <= p_5), p_5)));
                (*p_1659->g_554) = &l_1196[4];
                l_1356[3][0] = ((safe_sub_func_int8_t_s_s((safe_add_func_int8_t_s_s(((((void*)0 == l_1330) || (+18446744073709551615UL)) , ((safe_rshift_func_uint8_t_u_u(p_5, 7)) , (safe_mul_func_uint16_t_u_u((l_1306 , ((*l_1330) = l_1293)), (~(((safe_lshift_func_int8_t_s_u((safe_div_func_int8_t_s_s((((safe_mul_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u((((safe_div_func_int64_t_s_s((-2L), (0x39L && (safe_add_func_uint64_t_u_u(((l_1293 < 0x50L) & l_1307), (-8L)))))) < l_1355[6]) > p_5), 0x28A04D69L)) <= 0x1214B1C77704FC95L), (*p_1659->g_397))) & p_5) , l_1242), 0xD6L)), p_5)) ^ p_5) > (****p_1659->g_1238))))))), (*p_1659->g_287))), 250UL)) , (void*)0);
                for (l_1242 = 0; (l_1242 <= 0); l_1242 += 1)
                { /* block id: 664 */
                    uint64_t l_1357 = 0x22935EBACE7081A7L;
                    l_1357--;
                }
            }
            for (p_1659->g_784 = 3; (p_1659->g_784 >= 3); p_1659->g_784 = safe_add_func_int64_t_s_s(p_1659->g_784, 1))
            { /* block id: 670 */
                int8_t *l_1369 = &l_1284[3][1];
                int32_t l_1371 = 0x691F205BL;
                uint64_t l_1375 = 4UL;
                uint32_t ****l_1380 = (void*)0;
                uint8_t l_1400 = 1UL;
                for (p_1659->g_384 = 8; (p_1659->g_384 >= 57); p_1659->g_384++)
                { /* block id: 673 */
                    int32_t *l_1365 = &p_1659->g_37;
                    int32_t **l_1366 = &p_1659->g_71;
                    int32_t **l_1367 = (void*)0;
                    int32_t **l_1368 = &l_1356[3][0];
                    int64_t *l_1376 = &p_1659->g_938[1];
                    uint32_t *****l_1381 = &l_1380;
                    int64_t *l_1386 = &p_1659->g_58;
                    int32_t *****l_1399[2][8] = {{(void*)0,&p_1659->g_1238,(void*)0,(void*)0,&p_1659->g_1238,(void*)0,(void*)0,&p_1659->g_1238},{(void*)0,&p_1659->g_1238,(void*)0,(void*)0,&p_1659->g_1238,(void*)0,(void*)0,&p_1659->g_1238}};
                    int i, j;
                    (*l_1365) &= (GROUP_DIVERGE(0, 1) , ((l_1364 != ((**p_1659->g_364) = (*p_1659->g_365))) >= ((p_1659->g_1370 , l_1302) , p_5)));
                    if (l_1371)
                        break;
                    if ((p_1659->g_1372 , (safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (l_1371 , ((((*l_1376) ^= ((*p_1659->g_25) == (18446744073709551615UL && l_1375))) < (safe_rshift_func_int8_t_s_s((l_1379 != ((*l_1381) = l_1380)), p_5))) >= (((!((*l_1386) = (safe_div_func_int64_t_s_s((safe_mul_func_int16_t_s_s(l_1371, 0x626BL)), (-2L))))) , &p_1659->g_885) == &p_1659->g_885)))))))
                    { /* block id: 681 */
                        return l_1306;
                    }
                    else
                    { /* block id: 683 */
                        union U1 *l_1392 = &p_1659->g_1124;
                        union U1 **l_1391 = &l_1392;
                        union U1 ***l_1393 = &l_1391;
                        union U1 **l_1396 = &p_1659->g_1395;
                        (*p_1659->g_786) = ((safe_add_func_int32_t_s_s((safe_mod_func_int8_t_s_s(((l_1371 &= l_1163[3][1]) == ((void*)0 != &l_1195[6][1])), p_5)), ((!((l_1375 != (((*l_1393) = l_1391) != (l_1396 = p_1659->g_1394))) <= (*p_1659->g_397))) ^ ((safe_add_func_uint8_t_u_u((((((void*)0 != l_1399[1][4]) ^ p_5) , (-1L)) , l_1375), p_5)) , (***p_1659->g_364))))) != p_1659->g_245);
                    }
                    if (l_1302)
                        continue;
                }
                l_1400--;
                for (p_1659->g_37 = 0; (p_1659->g_37 <= 7); p_1659->g_37 += 1)
                { /* block id: 694 */
                    int i;
                    return l_1355[p_1659->g_37];
                }
            }
            l_1407 |= (l_1195[4][4] = ((*p_1659->g_333) | (p_5 >= (safe_mul_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), ((!l_1284[0][5]) == 0x3BL))))));
        }
    }
    return l_1408;
}


/* ------------------------------------------ */
/* 
 * reads : p_1659->g_86 p_1659->g_69 p_1659->g_609
 * writes: p_1659->g_86 p_1659->g_69
 */
int64_t  func_6(int8_t * p_7, int8_t * p_8, int64_t  p_9, int16_t  p_10, int8_t * p_11, struct S2 * p_1659)
{ /* block id: 529 */
    int32_t l_1105 = 0x7F6C1258L;
    int32_t *l_1106 = &p_1659->g_69[7];
    int32_t *l_1107 = &p_1659->g_69[7];
    int32_t *l_1108 = (void*)0;
    int32_t *l_1109 = &p_1659->g_69[7];
    int32_t *l_1110 = &l_1105;
    int32_t *l_1111 = &p_1659->g_69[5];
    int32_t *l_1112 = &p_1659->g_72;
    int32_t *l_1113 = &p_1659->g_69[0];
    int32_t *l_1114 = &p_1659->g_72;
    int32_t *l_1115 = &p_1659->g_69[7];
    int32_t *l_1116 = &p_1659->g_69[7];
    int32_t *l_1117[4][9][2] = {{{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]}},{{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]}},{{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]}},{{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]},{(void*)0,&p_1659->g_69[7]}}};
    int32_t l_1118 = 0x30CD4506L;
    int32_t l_1119[7] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
    int64_t l_1120 = 1L;
    uint32_t l_1121[9][4] = {{4294967295UL,0UL,0UL,4294967295UL},{4294967295UL,0UL,0UL,4294967295UL},{4294967295UL,0UL,0UL,4294967295UL},{4294967295UL,0UL,0UL,4294967295UL},{4294967295UL,0UL,0UL,4294967295UL},{4294967295UL,0UL,0UL,4294967295UL},{4294967295UL,0UL,0UL,4294967295UL},{4294967295UL,0UL,0UL,4294967295UL},{4294967295UL,0UL,0UL,4294967295UL}};
    int i, j, k;
    for (p_1659->g_86 = 0; (p_1659->g_86 <= 48); p_1659->g_86 = safe_add_func_int64_t_s_s(p_1659->g_86, 7))
    { /* block id: 532 */
        int32_t l_1104 = 0x35869EC1L;
        return l_1104;
    }
    l_1121[8][0]--;
    (*l_1111) ^= p_10;
    return p_1659->g_609;
}


/* ------------------------------------------ */
/* 
 * reads : p_1659->g_941 p_1659->g_212 p_1659->g_287 p_1659->g_118 p_1659->g_180 p_1659->g_181 p_1659->g_86 p_1659->g_364 p_1659->g_365 p_1659->g_366 p_1659->g_324 p_1659->g_25 p_1659->g_26 p_1659->g_36 p_1659->g_37 p_1659->g_1043 p_1659->g_148 p_1659->g_72 p_1659->g_554 p_1659->g_69 p_1659->g_1067 p_1659->g_397 p_1659->g_398 p_1659->g_466 p_1659->g_71 p_1659->g_1084 p_1659->g_1028 p_1659->g_362.f0 p_1659->g_455 p_1659->g_105 p_1659->g_105.f0 p_1659->g_58 p_1659->g_116 p_1659->g_885 p_1659->g_290
 * writes: p_1659->g_941 p_1659->g_212 p_1659->g_86 p_1659->g_330 p_1659->g_69 p_1659->g_72 p_1659->g_1028 p_1659->g_37 p_1659->g_1041 p_1659->g_245 p_1659->g_38 p_1659->g_71 p_1659->g_655 p_1659->g_116 p_1659->g_1084 p_1659->g_364 p_1659->g_58 p_1659->g_148 p_1659->g_26 p_1659->g_886
 */
int8_t * func_12(uint32_t  p_13, int8_t * p_14, struct S2 * p_1659)
{ /* block id: 466 */
    int16_t l_1019 = 6L;
    int32_t l_1033 = 0L;
    int32_t l_1034 = 0x7821B384L;
    int32_t l_1054 = 8L;
    int32_t l_1062 = 1L;
    int32_t l_1063 = 0x2F0E8F34L;
    int32_t l_1081 = 0x068B7E45L;
    int32_t l_1082 = 0x776B3EECL;
    int32_t l_1083[4][1][8] = {{{(-5L),(-5L),0L,0x5133F2A3L,0x0FA7FA60L,0x5133F2A3L,0L,(-5L)}},{{(-5L),(-5L),0L,0x5133F2A3L,0x0FA7FA60L,0x5133F2A3L,0L,(-5L)}},{{(-5L),(-5L),0L,0x5133F2A3L,0x0FA7FA60L,0x5133F2A3L,0L,(-5L)}},{{(-5L),(-5L),0L,0x5133F2A3L,0x0FA7FA60L,0x5133F2A3L,0L,(-5L)}}};
    union U0 **l_1091 = (void*)0;
    union U0 ***l_1090 = &l_1091;
    int32_t *l_1092[7][2];
    uint32_t ***l_1093 = &p_1659->g_365;
    uint32_t ****l_1094 = &p_1659->g_364;
    uint32_t ***l_1096 = &p_1659->g_365;
    uint32_t ****l_1095 = &l_1096;
    int64_t l_1099[2][8][9] = {{{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)}},{{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)},{0x5016E2873F3777E5L,8L,0x124EDCEBC9378E4AL,0L,0x548815D69C9511EDL,0x756A80019514F078L,(-1L),7L,(-1L)}}};
    int32_t *l_1100 = &l_1083[1][0][7];
    int i, j, k;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
            l_1092[i][j] = &p_1659->g_290[2][0][0];
    }
    for (p_1659->g_941 = 0; (p_1659->g_941 <= 5); p_1659->g_941 += 1)
    { /* block id: 469 */
        uint16_t l_1037[3];
        int32_t l_1056[4][7];
        int64_t *l_1072 = &p_1659->g_58;
        int i, j;
        for (i = 0; i < 3; i++)
            l_1037[i] = 0x1A9EL;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 7; j++)
                l_1056[i][j] = 0x5E34C3AAL;
        }
        l_1019 = p_13;
        for (p_1659->g_212 = 5; (p_1659->g_212 >= 0); p_1659->g_212 -= 1)
        { /* block id: 473 */
            int8_t **l_1029[2];
            int32_t l_1035 = 6L;
            int32_t l_1036 = 0L;
            int32_t l_1058 = 0x7220CB1DL;
            int32_t l_1059[3];
            int64_t *l_1071 = &p_1659->g_938[1];
            uint16_t *l_1075 = &l_1037[2];
            int32_t *l_1076 = &l_1056[0][6];
            int32_t *l_1077 = &p_1659->g_72;
            int32_t *l_1078 = &p_1659->g_37;
            int32_t *l_1079 = &l_1063;
            int32_t *l_1080[9][10] = {{&l_1059[2],&l_1056[3][0],(void*)0,&l_1034,&l_1056[0][6],&l_1059[2],&l_1034,&l_1063,&l_1034,&l_1059[2]},{&l_1059[2],&l_1056[3][0],(void*)0,&l_1034,&l_1056[0][6],&l_1059[2],&l_1034,&l_1063,&l_1034,&l_1059[2]},{&l_1059[2],&l_1056[3][0],(void*)0,&l_1034,&l_1056[0][6],&l_1059[2],&l_1034,&l_1063,&l_1034,&l_1059[2]},{&l_1059[2],&l_1056[3][0],(void*)0,&l_1034,&l_1056[0][6],&l_1059[2],&l_1034,&l_1063,&l_1034,&l_1059[2]},{&l_1059[2],&l_1056[3][0],(void*)0,&l_1034,&l_1056[0][6],&l_1059[2],&l_1034,&l_1063,&l_1034,&l_1059[2]},{&l_1059[2],&l_1056[3][0],(void*)0,&l_1034,&l_1056[0][6],&l_1059[2],&l_1034,&l_1063,&l_1034,&l_1059[2]},{&l_1059[2],&l_1056[3][0],(void*)0,&l_1034,&l_1056[0][6],&l_1059[2],&l_1034,&l_1063,&l_1034,&l_1059[2]},{&l_1059[2],&l_1056[3][0],(void*)0,&l_1034,&l_1056[0][6],&l_1059[2],&l_1034,&l_1063,&l_1034,&l_1059[2]},{&l_1059[2],&l_1056[3][0],(void*)0,&l_1034,&l_1056[0][6],&l_1059[2],&l_1034,&l_1063,&l_1034,&l_1059[2]}};
            int i, j;
            for (i = 0; i < 2; i++)
                l_1029[i] = &p_1659->g_25;
            for (i = 0; i < 3; i++)
                l_1059[i] = 0x0EBC1594L;
            p_1659->g_69[(p_1659->g_212 + 2)] = (safe_mul_func_int8_t_s_s(((*p_14) > ((**p_1659->g_180) ^= (*p_1659->g_287))), (safe_div_func_int32_t_s_s((safe_mod_func_uint64_t_u_u(((***p_1659->g_364) , (p_1659->g_330 = (((p_1659->g_118[p_1659->g_212] , (0x7253E9EDL <= (&p_1659->g_25 == ((*p_1659->g_25) , (void*)0)))) , FAKE_DIVERGE(p_1659->local_2_offset, get_local_id(2), 10)) != 0xFE0AEE32L))), 0x192516B1FB5ACB01L)), (-1L)))));
            for (p_1659->g_72 = 0; (p_1659->g_72 <= 1); p_1659->g_72 += 1)
            { /* block id: 479 */
                int8_t **l_1027 = &p_1659->g_25;
                int8_t ***l_1026[8];
                int32_t *l_1044 = &p_1659->g_69[3];
                int32_t l_1051 = 1L;
                int32_t l_1055 = (-4L);
                int32_t l_1057 = (-10L);
                int32_t l_1060 = 0L;
                int i;
                for (i = 0; i < 8; i++)
                    l_1026[i] = &l_1027;
                l_1029[0] = (p_1659->g_1028 = &p_1659->g_25);
                for (p_1659->g_37 = 8; (p_1659->g_37 >= 3); p_1659->g_37 -= 1)
                { /* block id: 484 */
                    int32_t *l_1030 = &p_1659->g_69[(p_1659->g_72 + 5)];
                    int32_t *l_1031 = (void*)0;
                    int32_t *l_1032[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                    union U0 **l_1042 = &p_1659->g_1041;
                    int i;
                    ++l_1037[1];
                    (*l_1042) = &p_1659->g_327;
                    for (p_1659->g_245 = 0; (p_1659->g_245 <= 8); p_1659->g_245 += 1)
                    { /* block id: 489 */
                        if ((*p_1659->g_36))
                            break;
                        if (p_1659->g_1043)
                            continue;
                        (*p_1659->g_148) = &l_1034;
                    }
                    (*p_1659->g_554) = l_1044;
                }
                for (l_1036 = 0; (l_1036 <= 7); l_1036 += 1)
                { /* block id: 498 */
                    uint32_t l_1064 = 0x74309AC5L;
                    int i;
                    for (p_1659->g_86 = 0; (p_1659->g_86 <= 9); p_1659->g_86 += 1)
                    { /* block id: 501 */
                        int32_t *l_1045 = &l_1034;
                        int32_t *l_1046 = &l_1034;
                        int32_t *l_1047 = &p_1659->g_37;
                        int32_t *l_1048 = &l_1034;
                        int32_t *l_1049 = &p_1659->g_37;
                        int32_t *l_1050 = (void*)0;
                        int32_t *l_1052 = &l_1034;
                        int32_t *l_1053[2];
                        int16_t *l_1070[10];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1053[i] = (void*)0;
                        for (i = 0; i < 10; i++)
                            l_1070[i] = &p_1659->g_116;
                        l_1064++;
                        if (p_1659->g_69[p_1659->g_212])
                            continue;
                        (*l_1046) &= ((~(p_1659->g_69[(p_1659->g_72 + 2)] <= 0x01L)) == ((p_1659->g_1067 , ((p_1659->g_116 = (65535UL > (p_1659->g_655 = ((*p_1659->g_397) != 0x5132L)))) > (1UL != l_1059[1]))) | (&p_1659->g_330 != &p_1659->g_330)));
                    }
                    p_1659->g_69[p_1659->g_212] &= ((p_13 & l_1037[1]) >= (l_1071 == l_1072));
                    if (p_13)
                        break;
                }
                if (p_13)
                    break;
            }
            (**p_1659->g_554) = (p_1659->g_466[0][3][0] <= (safe_mul_func_uint16_t_u_u(((*l_1075) = 0UL), 0x38DEL)));
            p_1659->g_1084[4]++;
        }
        return (*p_1659->g_1028);
    }
    l_1034 |= (safe_unary_minus_func_uint16_t_u((((*p_14) = (safe_add_func_int32_t_s_s((((((*p_1659->g_885) = (((void*)0 == &p_1659->g_148) , func_62(l_1083[2][0][0], (l_1081 = (((*l_1090) = &p_1659->g_1041) == (void*)0)), ((+(p_1659->g_362.f0 , (l_1062 = (((((((*l_1094) = l_1093) != ((*l_1095) = &p_1659->g_365)) , (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (p_13 ^ 0x3B8F05C99C19D26DL)))) , (*p_1659->g_397)) , p_13) & p_1659->g_26)))) , (*p_1659->g_1028)), p_1659->g_455, p_1659))) != (void*)0) != GROUP_DIVERGE(2, 1)) | p_1659->g_290[1][2][0]), 0x59F3BEE3L))) & 0x42L)));
    (*l_1100) = l_1099[0][2][7];
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_1659->g_212 p_1659->g_364 p_1659->g_365 p_1659->g_366 p_1659->g_324 p_1659->g_286 p_1659->g_287 p_1659->g_118 p_1659->g_554 p_1659->g_71 p_1659->g_37 p_1659->g_69 p_1659->g_72 p_1659->g_726 p_1659->g_25 p_1659->g_26 p_1659->g_148 p_1659->g_298 p_1659->g_609 p_1659->g_290 p_1659->g_330
 * writes: p_1659->g_212 p_1659->g_324 p_1659->g_118 p_1659->g_37 p_1659->g_69 p_1659->g_72 p_1659->g_330 p_1659->g_38 p_1659->g_116 p_1659->g_609
 */
int8_t  func_21(int8_t * p_22, int8_t * p_23, int64_t  p_24, struct S2 * p_1659)
{ /* block id: 293 */
    uint32_t l_689 = 0x07087308L;
    uint32_t l_703[9] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    int32_t l_708 = 0x193B9D76L;
    int16_t **l_713 = (void*)0;
    union U1 *l_729 = &p_1659->g_319;
    union U1 **l_728 = &l_729;
    int32_t ***l_730 = &p_1659->g_554;
    uint64_t *l_731 = &p_1659->g_330;
    uint32_t **l_734 = (void*)0;
    uint32_t l_744 = 0x95CCF67FL;
    uint32_t ****l_753 = (void*)0;
    uint8_t **l_879 = (void*)0;
    uint64_t l_956 = 18446744073709551615UL;
    int32_t l_978[3][8] = {{0x70ED7E1CL,0x70ED7E1CL,0x6CE57EDBL,2L,1L,2L,0x6CE57EDBL,0x70ED7E1CL},{0x70ED7E1CL,0x70ED7E1CL,0x6CE57EDBL,2L,1L,2L,0x6CE57EDBL,0x70ED7E1CL},{0x70ED7E1CL,0x70ED7E1CL,0x6CE57EDBL,2L,1L,2L,0x6CE57EDBL,0x70ED7E1CL}};
    int32_t ****l_987[7] = {&l_730,&l_730,&l_730,&l_730,&l_730,&l_730,&l_730};
    int32_t *****l_986 = &l_987[1];
    uint16_t l_1014[4] = {0x346DL,0x346DL,0x346DL,0x346DL};
    uint16_t l_1017 = 0x7715L;
    int i, j;
    if ((atomic_inc(&p_1659->g_atomic_input[74 * get_linear_group_id() + 73]) == 4))
    { /* block id: 295 */
        int16_t l_681 = 0L;
        uint32_t l_682 = 1UL;
        l_682 = l_681;
        unsigned int result = 0;
        result += l_681;
        result += l_682;
        atomic_add(&p_1659->g_special_values[74 * get_linear_group_id() + 73], result);
    }
    else
    { /* block id: 297 */
        (1 + 1);
    }
    (**p_1659->g_554) &= (((*p_23) = (*p_23)) == (safe_rshift_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((l_689--), (safe_sub_func_uint16_t_u_u(((((safe_unary_minus_func_uint32_t_u((safe_mod_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(((--(***p_1659->g_364)) >= (((safe_mul_func_int16_t_s_s(l_703[0], l_703[0])) > ((((((safe_add_func_uint8_t_u_u(p_24, (((((l_703[0] < (safe_mul_func_uint8_t_u_u((++(**p_1659->g_286)), (safe_rshift_func_int8_t_s_s(l_708, (&p_1659->g_397 == l_713)))))) != 0x4A91E3E6L) | 0x0C5C8972L) , l_708) | 0UL))) != FAKE_DIVERGE(p_1659->local_2_offset, get_local_id(2), 10)) , p_24) , 0x5C211376L) && 0UL) >= l_703[0])) , p_24)), l_708)), GROUP_DIVERGE(0, 1))))) | p_24) & l_708) , l_708), p_24)))), p_24)), FAKE_DIVERGE(p_1659->local_0_offset, get_local_id(0), 10))));
    if (((p_1659->g_324 | 0x5EAE0141D1E01950L) == ((+l_703[0]) | (safe_div_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_u(0x2190L, (safe_div_func_int64_t_s_s((((safe_add_func_uint64_t_u_u(l_703[0], ((*l_731) = (safe_rshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((p_1659->g_726 == l_728), (((void*)0 == l_730) <= 65526UL))), (***l_730)))))) != (*p_1659->g_25)) || (***l_730)), 5UL)))) < 0x82E41F66F799CEE2L), 0x1B6158EB4DA4E2D7L)))))
    { /* block id: 306 */
        int32_t ***l_732 = (void*)0;
        uint32_t **l_733 = &p_1659->g_587;
        uint32_t ***l_735 = &l_734;
        int32_t *l_754 = (void*)0;
        int32_t *l_755 = &p_1659->g_609;
        int32_t *l_756 = &l_708;
        (*p_1659->g_148) = (**l_730);
        (***l_730) &= (((l_732 != l_730) , l_733) != ((*l_735) = l_734));
        (*l_756) ^= ((*l_755) = ((((***l_730) = (safe_rshift_func_int8_t_s_u((~(safe_mul_func_int16_t_s_s(((safe_div_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_s((l_744 != p_1659->g_298[2]), 6)) <= (p_1659->g_609 ^ ((safe_mod_func_uint32_t_u_u(((+(safe_rshift_func_int8_t_s_s(((*p_1659->g_71) > ((safe_div_func_int16_t_s_s((p_1659->g_118[4] || (~65527UL)), ((+p_24) || 0x032DL))) & (((safe_mul_func_int16_t_s_s((p_1659->g_116 = (l_753 != l_753)), p_24)) , p_24) >= (***l_730)))), 4))) < (***l_730)), (*p_1659->g_71))) || p_24))), (*p_1659->g_71))) | 0xAD12412CL), p_1659->g_290[1][1][0]))), 0))) >= p_24) | p_1659->g_330));
        return (***l_730);
    }
    else
    { /* block id: 315 */
        int32_t l_777 = 1L;
        int32_t l_782[7][3][6] = {{{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)}},{{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)}},{{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)}},{{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)}},{{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)}},{{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)}},{{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)},{(-4L),1L,0x58FEA6CFL,1L,(-4L),(-4L)}}};
        uint32_t ***l_871[3][7] = {{&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365},{&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365},{&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365,&p_1659->g_365}};
        uint8_t **l_878 = &p_1659->g_287;
        uint16_t *l_889[3];
        uint16_t l_893 = 0x242DL;
        int32_t l_965 = 7L;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_889[i] = (void*)0;
        for (p_1659->g_37 = (-24); (p_1659->g_37 < 21); ++p_1659->g_37)
        { /* block id: 318 */
            int32_t l_761 = (-5L);
            uint16_t *l_780[7];
            int32_t l_781 = (-1L);
            uint32_t *l_783 = &p_1659->g_784;
            int16_t *l_785 = &p_1659->g_116;
            int32_t *l_872 = &l_782[3][2][5];
            uint8_t **l_877 = &p_1659->g_287;
            uint32_t ***l_888 = &p_1659->g_885;
            int32_t l_975 = 0x5AAB28ACL;
            int32_t l_976 = 7L;
            int32_t l_977 = 0x45D35A58L;
            int32_t l_979[10];
            int i;
            for (i = 0; i < 7; i++)
                l_780[i] = &p_1659->g_455;
            for (i = 0; i < 10; i++)
                l_979[i] = 0x29607FB4L;
            (1 + 1);
        }
    }
    --l_1014[2];
    return l_1017;
}


/* ------------------------------------------ */
/* 
 * reads : p_1659->g_26 p_1659->g_36 p_1659->g_37 p_1659->g_72 p_1659->g_58 p_1659->g_71 p_1659->g_69 p_1659->g_86 p_1659->g_105 p_1659->g_25 p_1659->g_105.f0 p_1659->g_116 p_1659->g_118 p_1659->g_148 p_1659->g_180 p_1659->g_147 p_1659->g_212 p_1659->g_245 p_1659->g_285 p_1659->g_181 p_1659->g_290 p_1659->g_298 p_1659->g_327 p_1659->g_319.f0 p_1659->g_287 p_1659->g_332 p_1659->g_335 p_1659->g_451 p_1659->g_455 p_1659->g_330 p_1659->g_451.f0 p_1659->g_364 p_1659->g_365 p_1659->g_366 p_1659->g_368 p_1659->g_509 p_1659->g_286 p_1659->g_554 p_1659->g_585 p_1659->g_384 p_1659->g_609 p_1659->g_397 p_1659->g_398
 * writes: p_1659->g_37 p_1659->g_69 p_1659->g_71 p_1659->g_58 p_1659->g_86 p_1659->g_116 p_1659->g_148 p_1659->g_26 p_1659->g_38 p_1659->g_180 p_1659->g_118 p_1659->g_212 p_1659->g_245 p_1659->g_72 p_1659->g_330 p_1659->g_332 p_1659->g_455 p_1659->g_368 p_1659->g_586 p_1659->g_609
 */
int8_t * func_27(int16_t  p_28, uint16_t  p_29, int8_t * p_30, int16_t  p_31, struct S2 * p_1659)
{ /* block id: 5 */
    int8_t l_35 = (-1L);
    int32_t l_40[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
    uint64_t l_616 = 18446744073709551615UL;
    uint16_t l_656 = 0xA9CCL;
    int32_t l_666 = 0x3A8A5BAFL;
    int32_t l_668 = (-1L);
    int8_t **l_680[8];
    int8_t ***l_679 = &l_680[6];
    int i;
    for (i = 0; i < 8; i++)
        l_680[i] = &p_1659->g_25;
    for (p_28 = (-8); (p_28 <= (-14)); p_28 = safe_sub_func_int16_t_s_s(p_28, 5))
    { /* block id: 8 */
        uint32_t l_41[2];
        int32_t l_601 = 0x1003DCDFL;
        uint32_t *l_623 = &p_1659->g_368;
        uint32_t **l_622[10][5][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        int16_t l_626[5][6] = {{0x223CL,1L,(-10L),1L,0x223CL,0x223CL},{0x223CL,1L,(-10L),1L,0x223CL,0x223CL},{0x223CL,1L,(-10L),1L,0x223CL,0x223CL},{0x223CL,1L,(-10L),1L,0x223CL,0x223CL},{0x223CL,1L,(-10L),1L,0x223CL,0x223CL}};
        int32_t l_637 = 1L;
        int32_t l_649 = 0x3028C6CBL;
        int32_t l_650 = (-1L);
        int32_t l_651[6];
        uint16_t l_652 = 65535UL;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_41[i] = 3UL;
        for (i = 0; i < 6; i++)
            l_651[i] = 0x3E1B057DL;
        (*p_1659->g_36) = (l_35 || p_1659->g_26);
        if (p_29)
        { /* block id: 10 */
            int32_t *l_39[1];
            int i;
            for (i = 0; i < 1; i++)
                l_39[i] = (void*)0;
            l_40[2] = p_28;
            ++l_41[0];
            (*p_1659->g_36) = p_31;
        }
        else
        { /* block id: 14 */
            int8_t *l_54[10] = {&p_1659->g_26,&l_35,&l_35,&l_35,&p_1659->g_26,&p_1659->g_26,&l_35,&l_35,&l_35,&p_1659->g_26};
            int32_t *l_627 = &l_601;
            int32_t *l_628 = &p_1659->g_37;
            int32_t l_629 = 0x17085EA1L;
            int32_t *l_630 = &l_601;
            int32_t *l_631 = &l_40[1];
            int32_t *l_632 = &p_1659->g_609;
            int32_t *l_633 = &p_1659->g_37;
            int32_t *l_634 = &p_1659->g_37;
            int32_t l_635[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int32_t *l_636 = &p_1659->g_72;
            int32_t *l_638 = &l_601;
            int32_t *l_639 = (void*)0;
            int32_t *l_640 = (void*)0;
            int32_t *l_641 = &l_637;
            int32_t *l_642 = &l_40[0];
            int32_t *l_643 = &l_601;
            int32_t *l_644 = &l_40[2];
            int32_t *l_645 = &p_1659->g_609;
            int32_t *l_646 = (void*)0;
            int32_t *l_647 = &l_601;
            int32_t *l_648[8] = {&p_1659->g_72,&p_1659->g_72,&p_1659->g_72,&p_1659->g_72,&p_1659->g_72,&p_1659->g_72,&p_1659->g_72,&p_1659->g_72};
            int64_t *l_659 = &p_1659->g_58;
            int i;
            for (p_29 = 0; (p_29 <= 5); p_29 += 1)
            { /* block id: 17 */
                int32_t *l_44 = &p_1659->g_37;
                int i;
                if (((*l_44) ^= l_40[p_29]))
                { /* block id: 19 */
                    int16_t l_187[6] = {7L,7L,7L,7L,7L,7L};
                    int32_t *l_188 = &p_1659->g_72;
                    uint32_t l_599 = 0xC008D75CL;
                    int i;
                    for (l_35 = 5; (l_35 >= 0); l_35 -= 1)
                    { /* block id: 22 */
                        int64_t *l_596 = &p_1659->g_58;
                        uint64_t *l_600 = (void*)0;
                        int32_t l_606 = (-2L);
                        int32_t *l_607 = (void*)0;
                        int32_t *l_608 = &p_1659->g_609;
                        int i, j, k;
                        (*p_1659->g_554) = func_45(((func_51(&p_1659->g_37, l_54[3], p_1659) && ((((((l_40[2] = 0x23L) > (safe_sub_func_int32_t_s_s((safe_lshift_func_int16_t_s_s(((*p_1659->g_25) == 1L), 0)), 0x80DE7F7EL))) >= l_187[2]) != (((FAKE_DIVERGE(p_1659->group_0_offset, get_group_id(0), 10) | l_187[2]) , &p_1659->g_180) == &p_1659->g_180)) , l_187[2]) > (*l_44))) , p_28), &p_1659->g_72, p_30, l_188, p_1659->g_25, p_1659);
                        (*l_608) &= ((safe_sub_func_int16_t_s_s((safe_mod_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(((l_54[3] != p_30) | (safe_lshift_func_int8_t_s_u(((l_596 != &p_1659->g_58) <= (((((*p_30) = ((0x25A7L > GROUP_DIVERGE(1, 1)) == (p_1659->g_298[6] , (l_601 = (~(safe_lshift_func_int16_t_s_s(l_599, 9))))))) >= ((safe_add_func_int32_t_s_s((((l_40[4] | (safe_div_func_int32_t_s_s(((*l_188) &= (p_29 | (*l_44))), 1L))) == p_1659->g_330) , (**p_1659->g_554)), 0x4B3BD0E6L)) == p_29)) ^ p_1659->g_384) | 0x765EL)), 3))), 4)), p_31)), l_606)) & 0x137AL);
                    }
                }
                else
                { /* block id: 263 */
                    (*p_1659->g_554) = (*p_1659->g_554);
                }
                for (p_1659->g_72 = 5; (p_1659->g_72 >= 0); p_1659->g_72 -= 1)
                { /* block id: 268 */
                    int32_t *l_610 = &l_40[2];
                    int32_t *l_611 = &p_1659->g_609;
                    int32_t *l_612 = &p_1659->g_69[7];
                    int32_t *l_613 = &p_1659->g_37;
                    int32_t *l_614 = &p_1659->g_37;
                    int32_t *l_615[3][9] = {{&l_40[p_29],&p_1659->g_69[7],&l_40[p_29],&l_601,&l_40[p_29],&p_1659->g_69[7],&l_40[p_29],&l_40[p_29],&l_40[p_29]},{&l_40[p_29],&p_1659->g_69[7],&l_40[p_29],&l_601,&l_40[p_29],&p_1659->g_69[7],&l_40[p_29],&l_40[p_29],&l_40[p_29]},{&l_40[p_29],&p_1659->g_69[7],&l_40[p_29],&l_601,&l_40[p_29],&p_1659->g_69[7],&l_40[p_29],&l_40[p_29],&l_40[p_29]}};
                    uint32_t *l_621 = &p_1659->g_368;
                    uint32_t **l_620 = &l_621;
                    uint32_t ***l_619[10] = {&l_620,&l_620,&l_620,&l_620,&l_620,&l_620,&l_620,&l_620,&l_620,&l_620};
                    int i, j;
                    ++l_616;
                    l_622[2][2][1] = (void*)0;
                    l_626[3][3] &= (safe_lshift_func_uint16_t_u_u(p_28, p_1659->g_245));
                }
            }
            ++l_652;
            l_656++;
            (*l_636) = (((*l_659) = ((*p_1659->g_397) & (-1L))) <= p_1659->g_86);
        }
    }
    for (p_1659->g_245 = 0; (p_1659->g_245 == (-23)); --p_1659->g_245)
    { /* block id: 282 */
        int64_t *l_664[4];
        int32_t l_665[9][3][7] = {{{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L}},{{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L}},{{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L}},{{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L}},{{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L}},{{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L}},{{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L}},{{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L}},{{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L},{0x1FDABE51L,0L,(-7L),0L,0x234F2F4AL,(-1L),0x691E9527L}}};
        uint64_t *l_667 = (void*)0;
        uint8_t ****l_675 = (void*)0;
        int32_t l_678 = 0x140DE24FL;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_664[i] = (void*)0;
        (*p_1659->g_554) = func_62((((safe_mod_func_int64_t_s_s((l_40[2] = (!(l_666 ^= ((0UL >= (*p_1659->g_25)) , (l_665[7][2][1] ^= p_31))))), (l_668 = 1UL))) , ((safe_sub_func_uint8_t_u_u((~(((*p_1659->g_71) ^= ((safe_rshift_func_int8_t_s_s(l_665[4][2][0], (safe_mul_func_uint16_t_u_u(p_31, ((l_675 = &p_1659->g_285[0]) == &p_1659->g_285[0]))))) , (safe_add_func_uint8_t_u_u(((p_1659->g_327 , FAKE_DIVERGE(p_1659->group_1_offset, get_group_id(1), 10)) >= 0x4CL), 0UL)))) >= p_28)), l_665[8][0][1])) < (*p_1659->g_25))) <= l_678), l_616, &p_1659->g_26, p_1659->g_245, p_1659);
    }
    (*l_679) = &p_1659->g_25;
    return &p_1659->g_212;
}


/* ------------------------------------------ */
/* 
 * reads : p_1659->g_37 p_1659->g_86 p_1659->g_147 p_1659->g_26 p_1659->g_72 p_1659->g_118 p_1659->g_212 p_1659->g_25 p_1659->g_69 p_1659->g_116 p_1659->g_105 p_1659->g_245 p_1659->g_105.f0 p_1659->g_58 p_1659->g_285 p_1659->g_180 p_1659->g_181 p_1659->g_290 p_1659->g_148 p_1659->g_298 p_1659->g_327 p_1659->g_319.f0 p_1659->g_287 p_1659->g_332 p_1659->g_335 p_1659->g_36 p_1659->g_451 p_1659->g_455 p_1659->g_330 p_1659->g_451.f0 p_1659->g_364 p_1659->g_365 p_1659->g_366 p_1659->g_368 p_1659->g_509 p_1659->g_286 p_1659->g_554 p_1659->g_585
 * writes: p_1659->g_37 p_1659->g_86 p_1659->g_58 p_1659->g_118 p_1659->g_212 p_1659->g_69 p_1659->g_245 p_1659->g_72 p_1659->g_26 p_1659->g_38 p_1659->g_116 p_1659->g_330 p_1659->g_332 p_1659->g_455 p_1659->g_368 p_1659->g_71 p_1659->g_586
 */
int32_t * func_45(int32_t  p_46, int32_t * p_47, int8_t * p_48, int32_t * p_49, int8_t * p_50, struct S2 * p_1659)
{ /* block id: 77 */
    uint8_t *l_210 = &p_1659->g_118[4];
    uint8_t **l_209[10][1];
    int32_t l_219 = 0x19E84722L;
    int32_t l_226 = (-3L);
    int32_t l_229[9] = {0x7D7560A1L,(-1L),0x7D7560A1L,0x7D7560A1L,(-1L),0x7D7560A1L,0x7D7560A1L,(-1L),0x7D7560A1L};
    uint64_t l_237 = 0xFC81CA3231BC1E31L;
    int32_t l_260[5][8] = {{0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L},{0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L},{0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L},{0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L},{0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L,0x7243C664L}};
    uint8_t l_265 = 0x8CL;
    int64_t *l_274 = &p_1659->g_58;
    int32_t *l_281 = &p_1659->g_72;
    uint8_t ***l_289 = &l_209[9][0];
    uint32_t l_307 = 4294967295UL;
    uint32_t *l_359 = (void*)0;
    uint32_t **l_358 = &l_359;
    uint8_t l_425 = 1UL;
    int32_t l_485[3];
    int i, j;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_209[i][j] = &l_210;
    }
    for (i = 0; i < 3; i++)
        l_485[i] = 0x6B74B4BBL;
    for (p_1659->g_37 = 11; (p_1659->g_37 <= 9); p_1659->g_37--)
    { /* block id: 80 */
        uint32_t l_192[3][2][6] = {{{4294967295UL,0UL,4294967295UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL,0UL,4294967295UL}},{{4294967295UL,0UL,4294967295UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL,0UL,4294967295UL}},{{4294967295UL,0UL,4294967295UL,4294967295UL,0UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL,0UL,4294967295UL}}};
        int32_t **l_198 = &p_1659->g_71;
        int32_t ***l_197 = &l_198;
        uint8_t **l_208 = (void*)0;
        int32_t l_220 = 0x3873CE92L;
        int32_t l_221 = (-7L);
        int32_t l_222 = 0x549FE1CAL;
        int32_t l_224 = 0x35D56E28L;
        int32_t l_225 = 0x43504BE0L;
        int32_t l_227 = 0x04C01210L;
        int32_t l_232 = (-9L);
        int32_t l_235[6][1] = {{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}};
        int i, j, k;
        for (p_46 = 0; (p_46 <= 1); p_46 += 1)
        { /* block id: 83 */
            int8_t l_218 = 0x23L;
            int32_t l_223 = 0x3EA14317L;
            int64_t l_228 = 0x16355BF927BDF239L;
            int32_t l_230 = 0x31285894L;
            int32_t l_231 = 0x101EE616L;
            int32_t l_233 = (-5L);
            int32_t l_234 = 1L;
            int32_t l_236 = (-1L);
            for (p_1659->g_86 = 0; (p_1659->g_86 <= 5); p_1659->g_86 += 1)
            { /* block id: 86 */
                int64_t *l_205 = (void*)0;
                int64_t *l_206 = &p_1659->g_58;
                int32_t l_207 = 0x4E8AD497L;
                int8_t *l_211 = &p_1659->g_212;
                int32_t *l_213 = &p_1659->g_69[7];
                int32_t *l_214 = (void*)0;
                int32_t *l_215 = &p_1659->g_72;
                int32_t *l_216 = &p_1659->g_72;
                int32_t *l_217[4][4];
                int16_t *l_244[3];
                uint32_t *l_257[2];
                int i, j, k;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_217[i][j] = &p_1659->g_69[7];
                }
                for (i = 0; i < 3; i++)
                    l_244[i] = &p_1659->g_245;
                for (i = 0; i < 2; i++)
                    l_257[i] = (void*)0;
                (*l_213) &= (((*l_211) |= ((safe_unary_minus_func_uint8_t_u((p_1659->g_118[(p_46 + 2)] ^= ((((void*)0 == &p_1659->g_38[(p_46 + 3)][(p_46 + 3)][p_46]) && ((l_192[1][1][4] ^ GROUP_DIVERGE(1, 1)) || (-1L))) || ((safe_div_func_uint64_t_u_u((((p_46 , ((safe_mul_func_uint8_t_u_u(((p_46 , ((p_1659->g_147[p_46] != l_197) == (safe_lshift_func_int16_t_s_s((safe_div_func_int32_t_s_s((((safe_add_func_int64_t_s_s(((*l_206) = ((*p_50) & 0x20L)), l_207)) , l_208) != l_209[8][0]), 4294967294UL)), 14)))) != p_1659->g_26), 0x64L)) , p_46)) <= 0x26E95B7E0EDF683CL) , p_46), p_46)) == (*p_49)))))) & GROUP_DIVERGE(2, 1))) <= (*p_1659->g_25));
                ++l_237;
                (*p_47) |= ((p_1659->g_118[4] ^ 0x16750B15L) || (p_1659->g_116 <= (p_1659->g_105 , (safe_mod_func_int32_t_s_s(((p_1659->g_245 = l_228) , (((l_219 = (((safe_sub_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((p_46 , (safe_add_func_int32_t_s_s((safe_unary_minus_func_uint32_t_u(p_1659->g_245)), (p_46 , ((4UL | l_228) < 0x730BL))))), 0xA2L)), p_1659->g_105.f0)), p_1659->g_69[7])) > p_1659->g_212), 0x675AL)) != p_46) >= 65532UL)) , p_1659->g_118[4]) < p_1659->g_58)), FAKE_DIVERGE(p_1659->global_0_offset, get_global_id(0), 10))))));
            }
        }
    }
    for (p_1659->g_37 = 0; (p_1659->g_37 >= 2); p_1659->g_37 = safe_add_func_uint16_t_u_u(p_1659->g_37, 8))
    { /* block id: 100 */
        int32_t *l_261 = &p_1659->g_72;
        int32_t *l_262 = &l_229[3];
        int32_t *l_263[8] = {&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226};
        int32_t l_264 = 0x05221912L;
        int16_t *l_273 = &p_1659->g_116;
        int16_t **l_272 = &l_273;
        uint8_t ***l_284[2];
        uint8_t ****l_288 = (void*)0;
        int32_t **l_302 = &l_262;
        int32_t ***l_301 = &l_302;
        uint32_t *l_357 = &p_1659->g_324;
        uint32_t **l_356[10] = {(void*)0,&l_357,(void*)0,(void*)0,&l_357,(void*)0,(void*)0,&l_357,(void*)0,(void*)0};
        uint16_t *l_454 = &p_1659->g_455;
        uint8_t l_460 = 0UL;
        uint64_t l_467 = 1UL;
        int16_t l_569 = (-9L);
        int i;
        for (i = 0; i < 2; i++)
            l_284[i] = &l_209[8][0];
        --l_265;
        (*l_261) = ((((safe_add_func_int8_t_s_s((((safe_lshift_func_uint8_t_u_u((&p_1659->g_245 != ((*l_272) = &p_1659->g_245)), 5)) , l_274) != (void*)0), ((safe_sub_func_int8_t_s_s(l_237, ((*p_50) ^= (safe_rshift_func_int8_t_s_u((((safe_rshift_func_uint16_t_u_s(((void*)0 == l_281), 6)) || (safe_mul_func_int8_t_s_s((l_284[0] == (l_289 = p_1659->g_285[0])), 0UL))) <= 0xFCCEL), (**p_1659->g_180)))))) || 0L))) != p_1659->g_290[1][1][0]) >= p_46) != p_46);
        for (p_1659->g_245 = (-17); (p_1659->g_245 == (-7)); ++p_1659->g_245)
        { /* block id: 108 */
            int8_t l_309 = 0x49L;
            int32_t l_311 = 1L;
            int64_t *l_344 = &p_1659->g_58;
            uint32_t *l_376 = &p_1659->g_324;
            int32_t l_401 = 0x0D50689AL;
            int32_t l_403 = 0x5D56236AL;
            int32_t l_405 = (-6L);
            int32_t l_407 = 0x46788B69L;
            int32_t l_409 = 0x60F30A38L;
            int32_t l_411 = (-1L);
            int32_t l_416 = (-8L);
            int64_t l_418 = 0x16EDC20202885546L;
            int32_t l_419 = 0x2E55EDE5L;
            int32_t l_422 = (-1L);
            int32_t l_424[8][5] = {{(-4L),0x6969EE9EL,(-2L),0x6969EE9EL,(-4L)},{(-4L),0x6969EE9EL,(-2L),0x6969EE9EL,(-4L)},{(-4L),0x6969EE9EL,(-2L),0x6969EE9EL,(-4L)},{(-4L),0x6969EE9EL,(-2L),0x6969EE9EL,(-4L)},{(-4L),0x6969EE9EL,(-2L),0x6969EE9EL,(-4L)},{(-4L),0x6969EE9EL,(-2L),0x6969EE9EL,(-4L)},{(-4L),0x6969EE9EL,(-2L),0x6969EE9EL,(-4L)},{(-4L),0x6969EE9EL,(-2L),0x6969EE9EL,(-4L)}};
            int i, j;
            for (p_1659->g_86 = 0; (p_1659->g_86 == 48); p_1659->g_86 = safe_add_func_int8_t_s_s(p_1659->g_86, 1))
            { /* block id: 111 */
                uint8_t l_295 = 2UL;
                int32_t l_306 = 0x7A0E877EL;
                int32_t ***l_308 = &l_302;
                uint32_t *l_354 = &p_1659->g_324;
                uint32_t **l_353 = &l_354;
                uint32_t ***l_355[7][2][10] = {{{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353},{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353}},{{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353},{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353}},{{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353},{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353}},{{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353},{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353}},{{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353},{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353}},{{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353},{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353}},{{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353},{&l_353,&l_353,&l_353,(void*)0,(void*)0,&l_353,&l_353,&l_353,&l_353,&l_353}}};
                int32_t l_408 = 0x1D521224L;
                int i, j, k;
                (*p_1659->g_148) = p_47;
                if ((l_295 & p_46))
                { /* block id: 113 */
                    int32_t ****l_303 = &l_301;
                    int32_t l_310 = 0x017E9E91L;
                    int32_t l_312 = 1L;
                    union U1 *l_318 = &p_1659->g_319;
                    if (((safe_mul_func_int16_t_s_s((0x4D6CF897E8EEB489L <= (p_1659->g_298[6] == ((safe_add_func_uint64_t_u_u(((0x3EL == (~((*p_48) = 2L))) < (((void*)0 == &p_1659->g_212) | (((*l_303) = l_301) == ((safe_add_func_uint8_t_u_u((l_306 = p_46), ((+((p_46 && 0x6BBFL) , l_307)) || p_1659->g_212))) , l_308)))), 0x2A9086C890624D4CL)) > (*p_49)))), l_309)) || GROUP_DIVERGE(1, 1)))
                    { /* block id: 117 */
                        return &p_1659->g_69[7];
                    }
                    else
                    { /* block id: 119 */
                        uint16_t l_313 = 0x41ADL;
                        --l_313;
                    }
                    for (l_309 = 0; (l_309 < (-30)); --l_309)
                    { /* block id: 124 */
                        union U1 **l_320 = &l_318;
                        uint32_t *l_323[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t l_331 = 0x5D0B67DEL;
                        int i;
                        (*l_320) = l_318;
                        if ((*p_47))
                            continue;
                        (*p_1659->g_335) = ((((p_1659->g_69[7] >= (((((safe_sub_func_int16_t_s_s((((*p_49) >= p_1659->g_69[7]) != ((0xBD5961F9L == (((((0x052A23B5L | ((****l_303) ^= p_1659->g_69[9])) | (safe_add_func_int16_t_s_s((p_1659->g_116 = (p_1659->g_327 , 0x1A22L)), (safe_rshift_func_int16_t_s_s(((p_1659->g_330 = (*l_281)) ^ p_46), p_1659->g_319.f0))))) | p_1659->g_290[2][0][0]) >= p_46) | (-6L))) == l_331)), 0x8692L)) , (*p_48)) >= (*p_1659->g_25)) == l_311) | (*p_1659->g_287))) | l_311) < 1L) , p_1659->g_332[7]);
                    }
                }
                else
                { /* block id: 132 */
                    if ((*p_1659->g_36))
                        break;
                }
            }
        }
        if ((safe_add_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(1UL, (p_1659->g_451 , ((safe_lshift_func_uint16_t_u_s(((*l_454)++), ((FAKE_DIVERGE(p_1659->group_0_offset, get_group_id(0), 10) <= (safe_rshift_func_uint8_t_u_u((l_460 , (((safe_rshift_func_int8_t_s_u((p_1659->g_298[5] & 1L), (p_1659->g_330 , p_46))) && p_1659->g_451.f0) , (p_47 == (**p_1659->g_364)))), (*l_262)))) == 0xB9C5L))) < p_46)))), p_1659->g_118[4])))
        { /* block id: 172 */
            int8_t l_463 = 0x02L;
            int32_t l_464 = (-1L);
            int32_t l_465[9][7] = {{1L,1L,0x6F87D2E7L,0x353FC126L,(-6L),0x66E71B8EL,(-1L)},{1L,1L,0x6F87D2E7L,0x353FC126L,(-6L),0x66E71B8EL,(-1L)},{1L,1L,0x6F87D2E7L,0x353FC126L,(-6L),0x66E71B8EL,(-1L)},{1L,1L,0x6F87D2E7L,0x353FC126L,(-6L),0x66E71B8EL,(-1L)},{1L,1L,0x6F87D2E7L,0x353FC126L,(-6L),0x66E71B8EL,(-1L)},{1L,1L,0x6F87D2E7L,0x353FC126L,(-6L),0x66E71B8EL,(-1L)},{1L,1L,0x6F87D2E7L,0x353FC126L,(-6L),0x66E71B8EL,(-1L)},{1L,1L,0x6F87D2E7L,0x353FC126L,(-6L),0x66E71B8EL,(-1L)},{1L,1L,0x6F87D2E7L,0x353FC126L,(-6L),0x66E71B8EL,(-1L)}};
            int i, j;
            --l_467;
            for (p_1659->g_368 = 0; (p_1659->g_368 <= 2); p_1659->g_368++)
            { /* block id: 176 */
                uint8_t l_482 = 248UL;
                int64_t **l_483 = &l_274;
                int64_t *l_484 = &p_1659->g_58;
                int32_t l_501 = 0x22E9DA0AL;
                int32_t l_502[3];
                uint64_t l_510 = 18446744073709551607UL;
                int i;
                for (i = 0; i < 3; i++)
                    l_502[i] = 9L;
                (*p_49) = (*p_1659->g_36);
                (*l_262) ^= ((((((*p_47) ^ (safe_rshift_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(0xF33CB52B5F1A789DL, ((((void*)0 != &p_1659->g_362) , (safe_add_func_int32_t_s_s((safe_add_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u(p_46, p_1659->g_86)) , ((l_482 = 0UL) , ((*l_483) = (void*)0))) == (((*l_281) , p_1659->g_368) , l_484)), p_1659->g_290[0][0][0])), 2L))) & 250UL))), p_46))) >= 0L) > l_465[8][3]) || FAKE_DIVERGE(p_1659->group_1_offset, get_group_id(1), 10)) || l_485[0]);
                for (p_1659->g_26 = 0; (p_1659->g_26 <= 0); p_1659->g_26 += 1)
                { /* block id: 183 */
                    return p_47;
                }
                if (l_465[0][6])
                { /* block id: 186 */
                    uint32_t l_506[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_506[i] = 4294967286UL;
                    if ((atomic_inc(&p_1659->g_atomic_input[74 * get_linear_group_id() + 36]) == 8))
                    { /* block id: 188 */
                        int16_t l_486 = 1L;
                        uint8_t l_487 = 0x03L;
                        int16_t l_490 = 1L;
                        union U0 l_491 = {0};/* VOLATILE GLOBAL l_491 */
                        int32_t l_493 = (-7L);
                        int32_t *l_492 = &l_493;
                        int32_t *l_494 = &l_493;
                        int8_t l_495 = 0x69L;
                        uint16_t l_496[5] = {1UL,1UL,1UL,1UL,1UL};
                        uint32_t l_497 = 4294967286UL;
                        int32_t **l_498 = &l_494;
                        int i;
                        l_487--;
                        l_494 = ((l_490 = (-1L)) , (l_491 , l_492));
                        l_498 = ((l_495 , (l_497 = l_496[1])) , (void*)0);
                        unsigned int result = 0;
                        result += l_486;
                        result += l_487;
                        result += l_490;
                        result += l_491.f0;
                        result += l_491.f1;
                        result += l_493;
                        result += l_495;
                        int l_496_i0;
                        for (l_496_i0 = 0; l_496_i0 < 5; l_496_i0++) {
                            result += l_496[l_496_i0];
                        }
                        result += l_497;
                        atomic_add(&p_1659->g_special_values[74 * get_linear_group_id() + 36], result);
                    }
                    else
                    { /* block id: 194 */
                        (1 + 1);
                    }
                    for (l_463 = 5; (l_463 <= (-8)); l_463 = safe_sub_func_uint32_t_u_u(l_463, 2))
                    { /* block id: 199 */
                        int16_t l_503 = 0x4084L;
                        int32_t l_504 = 0x05970D6DL;
                        int32_t l_505 = 0x2D47363CL;
                        ++l_506[0];
                        return &p_1659->g_37;
                    }
                    if (p_1659->g_509)
                        continue;
                }
                else
                { /* block id: 204 */
                    (*p_1659->g_148) = p_47;
                    ++l_510;
                }
            }
            p_47 = p_49;
        }
        else
        { /* block id: 210 */
            int64_t l_529 = 0x3D3F069AB16C4ADDL;
            int8_t *l_530 = &p_1659->g_212;
            uint8_t ****l_531 = (void*)0;
            int32_t l_532[1];
            int32_t *l_564 = &l_219;
            int i;
            for (i = 0; i < 1; i++)
                l_532[i] = 1L;
            l_532[0] ^= (safe_sub_func_uint8_t_u_u((FAKE_DIVERGE(p_1659->group_2_offset, get_group_id(2), 10) , ((((*l_210) = (**p_1659->g_286)) , ((safe_mul_func_uint16_t_u_u(p_1659->g_298[6], 0x1A06L)) & ((((((*l_454) ^= p_46) ^ (safe_mul_func_uint8_t_u_u((((*l_281) ^ (!((safe_mod_func_uint16_t_u_u(p_1659->g_37, (((~(safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(p_46, 2)), ((*p_50) <= ((*l_210) = (((safe_mod_func_int8_t_s_s(((*l_530) = (((p_46 , 0x3B30L) && l_529) , (*p_1659->g_25))), (*l_262))) <= (*p_1659->g_25)) , 9UL)))))) >= (**l_302)) & (-3L)))) | 0L))) < l_529), GROUP_DIVERGE(0, 1)))) , l_531) != &p_1659->g_285[0]) , p_46))) <= 0x54L)), 0xC8L));
            for (l_467 = 0; (l_467 < 39); l_467 = safe_add_func_uint32_t_u_u(l_467, 3))
            { /* block id: 218 */
                uint32_t l_541 = 0x15495ECEL;
                int32_t *l_561 = (void*)0;
                for (p_1659->g_455 = 0; (p_1659->g_455 != 1); p_1659->g_455 = safe_add_func_uint16_t_u_u(p_1659->g_455, 6))
                { /* block id: 221 */
                    uint64_t l_559 = 2UL;
                    int32_t l_560 = 0x44B816F0L;
                    for (l_219 = 0; (l_219 <= (-16)); l_219 = safe_sub_func_uint16_t_u_u(l_219, 3))
                    { /* block id: 224 */
                        int32_t l_539 = 0x3AEA3968L;
                        int32_t l_540 = 9L;
                        l_541--;
                    }
                    for (p_1659->g_86 = 22; (p_1659->g_86 > 45); p_1659->g_86 = safe_add_func_int16_t_s_s(p_1659->g_86, 5))
                    { /* block id: 229 */
                        int32_t **l_553 = &l_263[6];
                        int32_t ***l_552[2][6][4] = {{{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302}},{{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302},{&l_553,&l_553,&l_302,&l_302}}};
                        int i, j, k;
                        (1 + 1);
                    }
                }
                (*p_1659->g_554) = l_561;
                (***l_301) |= (*p_47);
            }
            (**l_302) = (*l_281);
            for (p_1659->g_26 = 0; (p_1659->g_26 == 3); ++p_1659->g_26)
            { /* block id: 248 */
                uint8_t l_582 = 0UL;
                uint32_t *l_584 = &p_1659->g_384;
                uint32_t **l_583[3][3][2] = {{{&l_584,&l_584},{&l_584,&l_584},{&l_584,&l_584}},{{&l_584,&l_584},{&l_584,&l_584},{&l_584,&l_584}},{{&l_584,&l_584},{&l_584,&l_584},{&l_584,&l_584}}};
                int i, j, k;
                l_564 = p_49;
                (*p_47) = (((((*p_50) & ((*p_1659->g_25) && (((void*)0 == p_48) > (safe_lshift_func_int16_t_s_s(((*l_273) = (+l_569)), (safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s(0L, ((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_u(((*l_281) > (*l_564)), 1)), (safe_sub_func_int32_t_s_s((*p_47), 0x551E0B51L)))), (*p_1659->g_181))) , (*p_1659->g_25)))), 0x6A6B78C2L))))))) , 18446744073709551610UL) && p_1659->g_118[2]) <= l_582);
                (*p_1659->g_585) = l_583[1][1][1];
            }
        }
    }
    return p_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_1659->g_36 p_1659->g_37 p_1659->g_72 p_1659->g_58 p_1659->g_71 p_1659->g_69 p_1659->g_86 p_1659->g_105 p_1659->g_26 p_1659->g_25 p_1659->g_105.f0 p_1659->g_116 p_1659->g_118 p_1659->g_148 p_1659->g_180
 * writes: p_1659->g_69 p_1659->g_71 p_1659->g_58 p_1659->g_37 p_1659->g_86 p_1659->g_116 p_1659->g_148 p_1659->g_26 p_1659->g_38 p_1659->g_180
 */
int32_t  func_51(int32_t * p_52, int8_t * p_53, struct S2 * p_1659)
{ /* block id: 23 */
    int32_t *l_55 = (void*)0;
    int32_t *l_56 = &p_1659->g_37;
    int32_t *l_57[4] = {&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37};
    uint16_t l_59 = 0x6156L;
    int32_t **l_70[6][5] = {{&l_55,&l_55,&l_56,(void*)0,(void*)0},{&l_55,&l_55,&l_56,(void*)0,(void*)0},{&l_55,&l_55,&l_56,(void*)0,(void*)0},{&l_55,&l_55,&l_56,(void*)0,(void*)0},{&l_55,&l_55,&l_56,(void*)0,(void*)0},{&l_55,&l_55,&l_56,(void*)0,(void*)0}};
    int8_t *l_73 = &p_1659->g_26;
    int16_t l_174 = 0x344DL;
    int i, j;
    ++l_59;
    p_52 = func_62((*p_1659->g_36), ((safe_mod_func_uint64_t_u_u(((p_1659->g_69[7] = p_1659->g_37) > (-1L)), 0x4789C297E1152F54L)) <= ((*l_56) && ((p_1659->g_71 = p_52) != (p_1659->g_72 , (void*)0)))), l_73, p_1659->g_58, p_1659);
    for (p_1659->g_116 = (-17); (p_1659->g_116 != (-15)); p_1659->g_116++)
    { /* block id: 65 */
        uint32_t l_177 = 0xB9BFD79EL;
        for (l_59 = 0; (l_59 >= 1); l_59 = safe_add_func_int32_t_s_s(l_59, 1))
        { /* block id: 68 */
            int64_t l_175 = 1L;
            int32_t l_176 = 1L;
            uint8_t * volatile **l_182 = &p_1659->g_180;
            ++l_177;
            (*p_1659->g_148) = &l_176;
            (*l_182) = p_1659->g_180;
            return (*p_52);
        }
    }
    return (*p_52);
}


/* ------------------------------------------ */
/* 
 * reads : p_1659->g_58 p_1659->g_71 p_1659->g_69 p_1659->g_86 p_1659->g_37 p_1659->g_105 p_1659->g_26 p_1659->g_25 p_1659->g_105.f0 p_1659->g_72 p_1659->g_36 p_1659->g_116 p_1659->g_118
 * writes: p_1659->g_58 p_1659->g_37 p_1659->g_71 p_1659->g_86 p_1659->g_116 p_1659->g_148 p_1659->g_26
 */
int32_t * func_62(int32_t  p_63, int32_t  p_64, int8_t * p_65, uint64_t  p_66, struct S2 * p_1659)
{ /* block id: 27 */
    uint32_t l_81 = 1UL;
    int32_t *l_123 = &p_1659->g_72;
    int32_t l_139[6];
    uint32_t l_169 = 0x8C3D5F11L;
    int i;
    for (i = 0; i < 6; i++)
        l_139[i] = (-1L);
    for (p_1659->g_58 = 0; (p_1659->g_58 != 15); p_1659->g_58++)
    { /* block id: 30 */
        int16_t l_119[7] = {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)};
        int32_t l_120 = 1L;
        int16_t l_141 = 0x11D3L;
        int32_t l_143 = 1L;
        uint64_t l_144[8] = {1UL,0x775658741FB0B435L,1UL,1UL,0x775658741FB0B435L,1UL,1UL,0x775658741FB0B435L};
        int32_t * volatile **l_149 = &p_1659->g_148;
        int i;
        for (p_1659->g_37 = 0; (p_1659->g_37 > (-13)); --p_1659->g_37)
        { /* block id: 33 */
            int32_t *l_78 = &p_1659->g_72;
            int32_t *l_79 = &p_1659->g_69[9];
            int32_t *l_80[6][10][3] = {{{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]}},{{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]}},{{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]}},{{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]}},{{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]}},{{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]},{&p_1659->g_72,&p_1659->g_69[7],&p_1659->g_69[3]}}};
            int32_t **l_84 = &p_1659->g_71;
            int16_t l_140 = 0x1F41L;
            int i, j, k;
            l_81--;
            (*l_84) = &p_1659->g_69[7];
            if ((*p_1659->g_71))
            { /* block id: 36 */
                uint8_t *l_85 = &p_1659->g_86;
                uint32_t l_114[5][5] = {{1UL,0UL,1UL,1UL,0UL},{1UL,0UL,1UL,1UL,0UL},{1UL,0UL,1UL,1UL,0UL},{1UL,0UL,1UL,1UL,0UL},{1UL,0UL,1UL,1UL,0UL}};
                int16_t *l_115 = &p_1659->g_116;
                uint8_t *l_117[7] = {&p_1659->g_118[4],&p_1659->g_118[4],&p_1659->g_118[4],&p_1659->g_118[4],&p_1659->g_118[4],&p_1659->g_118[4],&p_1659->g_118[4]};
                int i, j;
                l_120 ^= ((((*l_79) , (++(*l_85))) || (safe_mod_func_uint8_t_u_u(p_1659->g_37, (l_119[3] &= (safe_rshift_func_uint16_t_u_u(65529UL, (((((((p_66 == ((*l_115) = (safe_mod_func_uint8_t_u_u(((0x450A102B4660DC51L >= ((safe_rshift_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s((((safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((((p_1659->g_105 , (safe_add_func_uint8_t_u_u((safe_unary_minus_func_int64_t_s(((safe_unary_minus_func_int16_t_s((-9L))) || (safe_sub_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((**l_84) ^ (*p_65)), 0x4102D430L)), (*p_1659->g_25)))))), p_1659->g_105.f0))) >= p_1659->g_37) , p_1659->g_26), 4)), 0UL)) , p_1659->g_72) | p_1659->g_86), 4)), p_1659->g_69[7])), l_114[3][0])) ^ p_1659->g_69[7])) > (-8L)), 0x2EL)))) , (*p_1659->g_36)) , l_114[3][0]) , 0x077E5926L) , p_63) != p_1659->g_26) == 0x7E914D0EL))))))) > (*l_78));
                for (p_66 = (-27); (p_66 <= 5); p_66 = safe_add_func_int32_t_s_s(p_66, 1))
                { /* block id: 43 */
                    return &p_1659->g_72;
                }
                (*l_84) = &p_63;
                return l_123;
            }
            else
            { /* block id: 48 */
                uint32_t l_138 = 0x433C1653L;
                int32_t l_142 = 0x3ED10359L;
                l_123 = (*l_84);
                if (((safe_mod_func_uint16_t_u_u((p_1659->g_26 ^ 5UL), l_119[3])) & (safe_add_func_uint64_t_u_u((safe_add_func_uint64_t_u_u(l_120, (safe_rshift_func_int8_t_s_s((*p_65), (safe_add_func_int16_t_s_s((safe_rshift_func_int8_t_s_u((((p_1659->g_58 ^ (safe_add_func_uint64_t_u_u(18446744073709551614UL, (p_1659->g_116 , (*l_123))))) >= l_138) & p_1659->g_86), l_139[3])), 0x3AA9L)))))), l_140))))
                { /* block id: 50 */
                    ++l_144[4];
                }
                else
                { /* block id: 52 */
                    return &p_1659->g_69[1];
                }
            }
        }
        (*l_149) = &p_1659->g_38[3][3][3];
    }
    p_63 = (~(((safe_rshift_func_int8_t_s_u(0x63L, ((p_1659->g_26 && ((*p_65) = (safe_add_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(((((safe_add_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((4294967289UL || FAKE_DIVERGE(p_1659->local_0_offset, get_local_id(0), 10)) >= (p_64 > (((safe_mul_func_int8_t_s_s(0x2DL, (p_1659->g_116 != ((safe_lshift_func_uint16_t_u_u(p_1659->g_69[2], 0)) == p_1659->g_118[2])))) | (safe_unary_minus_func_int32_t_s(((((safe_rshift_func_uint8_t_u_u(p_1659->g_118[0], (*l_123))) <= 0x0D89L) || p_63) || 0xE5D3D61C39D5F78CL)))) < p_64))), p_64)), (*l_123))) & (*l_123)) != p_64) ^ (*l_123)), l_169)), p_64)))) & p_1659->g_118[1]))) != p_63) > FAKE_DIVERGE(p_1659->local_2_offset, get_local_id(2), 10)));
    return &p_1659->g_69[1];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_special_values[i] = 0;
    struct S2 c_1660;
    struct S2* p_1659 = &c_1660;
    struct S2 c_1661 = {
        6L, // p_1659->g_26
        &p_1659->g_26, // p_1659->g_25
        (-2L), // p_1659->g_37
        &p_1659->g_37, // p_1659->g_36
        {{{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0}},{{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0}},{{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0}},{{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0}},{{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0}},{{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0},{&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,&p_1659->g_37,(void*)0}}}, // p_1659->g_38
        1L, // p_1659->g_58
        {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)}, // p_1659->g_69
        (-1L), // p_1659->g_72
        &p_1659->g_72, // p_1659->g_71
        0x69L, // p_1659->g_86
        {2UL}, // p_1659->g_105
        1L, // p_1659->g_116
        {0xBEL,0xBEL,0xBEL,0xBEL,0xBEL,0xBEL}, // p_1659->g_118
        &p_1659->g_38[3][3][3], // p_1659->g_148
        {&p_1659->g_148,&p_1659->g_148}, // p_1659->g_147
        &p_1659->g_86, // p_1659->g_181
        &p_1659->g_181, // p_1659->g_180
        0x31L, // p_1659->g_212
        (-1L), // p_1659->g_245
        &p_1659->g_118[4], // p_1659->g_287
        &p_1659->g_287, // p_1659->g_286
        {&p_1659->g_286,&p_1659->g_286,&p_1659->g_286}, // p_1659->g_285
        {{{0x4DC9F9C5L},{0x4DC9F9C5L},{0x4DC9F9C5L}},{{0x4DC9F9C5L},{0x4DC9F9C5L},{0x4DC9F9C5L}},{{0x4DC9F9C5L},{0x4DC9F9C5L},{0x4DC9F9C5L}}}, // p_1659->g_290
        {0x64L,0x64L,0x64L,0x64L,0x64L,0x64L,0x64L,0x64L,0x64L}, // p_1659->g_298
        {0xE41BF4CAL}, // p_1659->g_319
        0x19D763D5L, // p_1659->g_324
        {0}, // p_1659->g_327
        1UL, // p_1659->g_330
        0x5E11F597L, // p_1659->g_334
        &p_1659->g_334, // p_1659->g_333
        {&p_1659->g_333,&p_1659->g_333,&p_1659->g_333,&p_1659->g_333,&p_1659->g_333,&p_1659->g_333,&p_1659->g_333,&p_1659->g_333}, // p_1659->g_332
        &p_1659->g_332[3], // p_1659->g_335
        {0x741AFA88L}, // p_1659->g_362
        &p_1659->g_324, // p_1659->g_366
        &p_1659->g_366, // p_1659->g_365
        &p_1659->g_365, // p_1659->g_364
        4294967295UL, // p_1659->g_368
        9UL, // p_1659->g_384
        (-7L), // p_1659->g_398
        &p_1659->g_398, // p_1659->g_397
        &p_1659->g_397, // p_1659->g_396
        {0x7CDD3903L}, // p_1659->g_451
        6UL, // p_1659->g_455
        {{{0x7E2F18EAL},{0x7E2F18EAL},{0x7E2F18EAL},{0x7E2F18EAL},{0x7E2F18EAL},{0x7E2F18EAL}},{{0x7E2F18EAL},{0x7E2F18EAL},{0x7E2F18EAL},{0x7E2F18EAL},{0x7E2F18EAL},{0x7E2F18EAL}}}, // p_1659->g_466
        0x71107104L, // p_1659->g_509
        &p_1659->g_71, // p_1659->g_554
        (void*)0, // p_1659->g_587
        &p_1659->g_587, // p_1659->g_586
        &p_1659->g_586, // p_1659->g_585
        1L, // p_1659->g_609
        0x717DL, // p_1659->g_655
        &p_1659->g_451, // p_1659->g_727
        &p_1659->g_727, // p_1659->g_726
        0x5E2DC9E0L, // p_1659->g_784
        &p_1659->g_609, // p_1659->g_786
        &p_1659->g_319.f0, // p_1659->g_886
        &p_1659->g_886, // p_1659->g_885
        {&p_1659->g_885,&p_1659->g_885}, // p_1659->g_884
        {0x557963C3E589A7D8L,0x557963C3E589A7D8L}, // p_1659->g_938
        0x2990L, // p_1659->g_941
        (-1L), // p_1659->g_951
        &p_1659->g_609, // p_1659->g_971
        0x56BB6C4623F70F5CL, // p_1659->g_997
        {0}, // p_1659->g_1006
        (void*)0, // p_1659->g_1007
        &p_1659->g_25, // p_1659->g_1028
        (void*)0, // p_1659->g_1041
        {&p_1659->g_1041,&p_1659->g_1041,&p_1659->g_1041,&p_1659->g_1041,&p_1659->g_1041,&p_1659->g_1041}, // p_1659->g_1040
        0x59DDL, // p_1659->g_1043
        1L, // p_1659->g_1061
        {0}, // p_1659->g_1067
        {1UL,1UL,1UL,1UL,1UL,1UL}, // p_1659->g_1084
        {4294967286UL}, // p_1659->g_1124
        (void*)0, // p_1659->g_1190
        &p_1659->g_69[7], // p_1659->g_1191
        {0}, // p_1659->g_1228
        {0}, // p_1659->g_1231
        &p_1659->g_554, // p_1659->g_1239
        &p_1659->g_1239, // p_1659->g_1238
        {0}, // p_1659->g_1370
        {0}, // p_1659->g_1372
        (void*)0, // p_1659->g_1395
        &p_1659->g_1395, // p_1659->g_1394
        &p_1659->g_72, // p_1659->g_1429
        &p_1659->g_884[1], // p_1659->g_1440
        &p_1659->g_1440, // p_1659->g_1439
        (-8L), // p_1659->g_1441
        &p_1659->g_25, // p_1659->g_1523
        (void*)0, // p_1659->g_1537
        &p_1659->g_1537, // p_1659->g_1536
        {0UL}, // p_1659->g_1644
        sequence_input[get_global_id(0)], // p_1659->global_0_offset
        sequence_input[get_global_id(1)], // p_1659->global_1_offset
        sequence_input[get_global_id(2)], // p_1659->global_2_offset
        sequence_input[get_local_id(0)], // p_1659->local_0_offset
        sequence_input[get_local_id(1)], // p_1659->local_1_offset
        sequence_input[get_local_id(2)], // p_1659->local_2_offset
        sequence_input[get_group_id(0)], // p_1659->group_0_offset
        sequence_input[get_group_id(1)], // p_1659->group_1_offset
        sequence_input[get_group_id(2)], // p_1659->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1660 = c_1661;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1659);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1659->g_26, "p_1659->g_26", print_hash_value);
    transparent_crc(p_1659->g_37, "p_1659->g_37", print_hash_value);
    transparent_crc(p_1659->g_58, "p_1659->g_58", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1659->g_69[i], "p_1659->g_69[i]", print_hash_value);

    }
    transparent_crc(p_1659->g_72, "p_1659->g_72", print_hash_value);
    transparent_crc(p_1659->g_86, "p_1659->g_86", print_hash_value);
    transparent_crc(p_1659->g_105.f0, "p_1659->g_105.f0", print_hash_value);
    transparent_crc(p_1659->g_116, "p_1659->g_116", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1659->g_118[i], "p_1659->g_118[i]", print_hash_value);

    }
    transparent_crc(p_1659->g_212, "p_1659->g_212", print_hash_value);
    transparent_crc(p_1659->g_245, "p_1659->g_245", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1659->g_290[i][j][k], "p_1659->g_290[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1659->g_298[i], "p_1659->g_298[i]", print_hash_value);

    }
    transparent_crc(p_1659->g_319.f0, "p_1659->g_319.f0", print_hash_value);
    transparent_crc(p_1659->g_324, "p_1659->g_324", print_hash_value);
    transparent_crc(p_1659->g_330, "p_1659->g_330", print_hash_value);
    transparent_crc(p_1659->g_334, "p_1659->g_334", print_hash_value);
    transparent_crc(p_1659->g_362.f0, "p_1659->g_362.f0", print_hash_value);
    transparent_crc(p_1659->g_368, "p_1659->g_368", print_hash_value);
    transparent_crc(p_1659->g_384, "p_1659->g_384", print_hash_value);
    transparent_crc(p_1659->g_398, "p_1659->g_398", print_hash_value);
    transparent_crc(p_1659->g_451.f0, "p_1659->g_451.f0", print_hash_value);
    transparent_crc(p_1659->g_455, "p_1659->g_455", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1659->g_466[i][j][k], "p_1659->g_466[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1659->g_509, "p_1659->g_509", print_hash_value);
    transparent_crc(p_1659->g_609, "p_1659->g_609", print_hash_value);
    transparent_crc(p_1659->g_655, "p_1659->g_655", print_hash_value);
    transparent_crc(p_1659->g_784, "p_1659->g_784", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1659->g_938[i], "p_1659->g_938[i]", print_hash_value);

    }
    transparent_crc(p_1659->g_941, "p_1659->g_941", print_hash_value);
    transparent_crc(p_1659->g_951, "p_1659->g_951", print_hash_value);
    transparent_crc(p_1659->g_997, "p_1659->g_997", print_hash_value);
    transparent_crc(p_1659->g_1043, "p_1659->g_1043", print_hash_value);
    transparent_crc(p_1659->g_1061, "p_1659->g_1061", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1659->g_1084[i], "p_1659->g_1084[i]", print_hash_value);

    }
    transparent_crc(p_1659->g_1124.f0, "p_1659->g_1124.f0", print_hash_value);
    transparent_crc(p_1659->g_1441, "p_1659->g_1441", print_hash_value);
    transparent_crc(p_1659->g_1644.f0, "p_1659->g_1644.f0", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 74; i++)
            transparent_crc(p_1659->g_special_values[i + 74 * get_linear_group_id()], "p_1659->g_special_values[i + 74 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 74; i++)
            transparent_crc(p_1659->l_special_values[i], "p_1659->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
