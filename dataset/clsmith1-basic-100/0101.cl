// ---fake_divergence -g 59,84,2 -l 1,14,2
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


// Seed: 101

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   uint64_t  f1;
   volatile int16_t  f2;
};

struct S1 {
   int16_t  f0;
   uint16_t  f1;
};

struct S2 {
    uint32_t g_2[10][5];
    volatile int32_t g_3;
    volatile int32_t g_4;
    int32_t g_5;
    uint16_t g_12;
    uint16_t g_14;
    int16_t g_19;
    uint32_t g_20;
    uint32_t g_32;
    uint64_t g_74;
    int64_t g_96;
    int64_t g_98;
    uint8_t g_100;
    int32_t g_101;
    uint16_t g_103[8][8];
    int32_t *g_120;
    int32_t **g_119[9];
    int8_t g_129;
    int8_t g_176[2][4][8];
    volatile struct S1 *g_177;
    int32_t g_196;
    struct S0 g_202;
    struct S0 *g_203;
    struct S1 g_210;
    int64_t g_233;
    struct S1 g_235[7][9];
    uint32_t g_261;
    int8_t g_297;
    int64_t g_398;
    int64_t g_411;
    uint32_t g_448;
    volatile int16_t **g_547;
    volatile int16_t ***g_546;
    struct S0 g_559;
    struct S0 g_560;
    struct S0 g_561;
    struct S0 g_562[1];
    struct S0 g_563;
    struct S0 g_564[7];
    struct S0 g_565;
    struct S0 g_566;
    struct S0 g_567[7][5];
    struct S0 g_568;
    struct S0 g_569;
    struct S0 g_570[2][4];
    struct S0 g_571;
    struct S0 g_572[9];
    struct S0 g_573;
    struct S0 g_574[5];
    int32_t g_592[5][10];
    uint16_t *g_597;
    uint16_t **g_596;
    int32_t g_622;
    uint8_t g_632;
    int16_t *g_658;
    int16_t **g_657;
    uint64_t *g_775;
    uint64_t **g_774[8];
    int16_t g_816;
    struct S0 g_819;
    int32_t g_885;
    struct S0 g_911;
    int64_t g_913;
    uint16_t ***g_925[4];
    int32_t *g_932[9];
    uint32_t *g_951;
    int32_t ***g_1024;
    uint8_t g_1029;
    struct S1 *g_1198[1];
    struct S1 **g_1197[2];
    struct S1 **g_1199;
    uint16_t g_1282[8];
    int32_t g_1347;
    uint8_t g_1379;
    struct S0 g_1451;
    uint32_t g_1464;
    int32_t g_1468;
    int32_t g_1487;
    int32_t g_1489;
    int8_t g_1491;
    int8_t g_1494;
    uint64_t *g_1518;
    uint64_t **g_1517;
    uint64_t *** volatile g_1516[1];
    struct S0 ** volatile g_1529;
    struct S0 g_1540;
    int32_t ** volatile g_1552;
    int64_t *g_1553;
    int64_t *g_1565;
    int64_t **g_1564;
    int32_t ** volatile g_1570[3];
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
uint32_t  func_1(struct S2 * p_1575);
int64_t  func_6(uint32_t  p_7, struct S2 * p_1575);
uint8_t  func_26(uint32_t  p_27, int32_t  p_28, struct S2 * p_1575);
uint16_t  func_33(int8_t  p_34, uint16_t  p_35, struct S2 * p_1575);
int32_t  func_38(uint16_t * p_39, int32_t ** p_40, int16_t  p_41, uint8_t  p_42, struct S2 * p_1575);
uint16_t * func_43(int32_t  p_44, uint32_t * p_45, uint64_t  p_46, uint8_t  p_47, struct S2 * p_1575);
uint32_t * func_48(uint64_t  p_49, struct S2 * p_1575);
uint64_t  func_50(int32_t ** p_51, uint8_t  p_52, uint32_t * p_53, int64_t  p_54, uint32_t  p_55, struct S2 * p_1575);
int32_t ** func_56(uint32_t  p_57, uint8_t  p_58, uint64_t  p_59, uint64_t  p_60, struct S2 * p_1575);
int16_t  func_64(int8_t  p_65, uint64_t  p_66, int32_t * p_67, struct S2 * p_1575);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1575->g_5
 * writes: p_1575->g_5
 */
uint32_t  func_1(struct S2 * p_1575)
{ /* block id: 4 */
    int32_t l_1471 = (-5L);
    int32_t l_1488[5];
    int32_t *l_1533 = &p_1575->g_1489;
    int64_t *l_1563[8] = {&p_1575->g_411,&p_1575->g_411,&p_1575->g_411,&p_1575->g_411,&p_1575->g_411,&p_1575->g_411,&p_1575->g_411,&p_1575->g_411};
    int64_t **l_1562 = &l_1563[6];
    int8_t l_1568[9][1][4] = {{{(-3L),0x35L,(-3L),(-3L)}},{{(-3L),0x35L,(-3L),(-3L)}},{{(-3L),0x35L,(-3L),(-3L)}},{{(-3L),0x35L,(-3L),(-3L)}},{{(-3L),0x35L,(-3L),(-3L)}},{{(-3L),0x35L,(-3L),(-3L)}},{{(-3L),0x35L,(-3L),(-3L)}},{{(-3L),0x35L,(-3L),(-3L)}},{{(-3L),0x35L,(-3L),(-3L)}}};
    int16_t **l_1569 = &p_1575->g_658;
    int32_t l_1573 = 0L;
    uint8_t l_1574 = 0x2DL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_1488[i] = 0x5EFDBC9DL;
    for (p_1575->g_5 = 4; (p_1575->g_5 >= 1); p_1575->g_5 -= 1)
    { /* block id: 7 */
        int32_t l_1482 = (-3L);
        int32_t *l_1485 = (void*)0;
        int32_t *l_1486[3];
        int8_t *l_1490 = &p_1575->g_1491;
        int8_t *l_1492 = (void*)0;
        int8_t *l_1493 = &p_1575->g_1494;
        int16_t *l_1496 = &p_1575->g_235[6][1].f0;
        uint32_t l_1523[8];
        int32_t **l_1546 = &p_1575->g_932[1];
        int16_t l_1567 = 0L;
        int32_t **l_1571[1][6] = {{&l_1486[0],&l_1486[1],&l_1486[0],&l_1486[0],&l_1486[1],&l_1486[0]}};
        int64_t *l_1572[2];
        int i, j;
        for (i = 0; i < 3; i++)
            l_1486[i] = &p_1575->g_1487;
        for (i = 0; i < 8; i++)
            l_1523[i] = 0xB88E1865L;
        for (i = 0; i < 2; i++)
            l_1572[i] = &p_1575->g_233;
        (1 + 1);
    }
    return l_1574;
}


/* ------------------------------------------ */
/* 
 * reads : p_1575->g_20 p_1575->g_14 p_1575->g_5 p_1575->g_2 p_1575->g_32 p_1575->g_19 p_1575->g_96 p_1575->g_100 p_1575->g_103 p_1575->g_101 p_1575->g_119 p_1575->g_12 p_1575->g_129 p_1575->g_120 p_1575->g_74 p_1575->g_98 p_1575->g_177 p_1575->g_176 p_1575->g_202.f1 p_1575->g_202.f0 p_1575->g_210 p_1575->g_196 p_1575->g_235.f1 p_1575->g_411 p_1575->g_774 p_1575->g_596 p_1575->g_597 p_1575->g_398 p_1575->g_592 p_1575->g_657 p_1575->g_658 p_1575->g_235.f0 p_1575->g_561.f1 p_1575->g_572.f1 p_1575->g_564.f0 p_1575->g_574.f0 p_1575->g_448 p_1575->g_559.f0 p_1575->g_775 p_1575->g_573.f0 p_1575->g_571.f1 p_1575->g_632 p_1575->g_571.f0 p_1575->g_567.f0 p_1575->g_297 p_1575->g_816 p_1575->g_911.f1 p_1575->g_559.f1 p_1575->g_1282 p_1575->g_1029 p_1575->g_1379 p_1575->g_913 p_1575->g_565.f0 p_1575->g_1347 p_1575->g_819.f1 p_1575->g_560.f1 p_1575->g_560.f0 p_1575->g_819.f0 p_1575->g_574.f1 p_1575->g_1464 p_1575->g_1468 p_1575->g_561.f0
 * writes: p_1575->g_12 p_1575->g_14 p_1575->g_20 p_1575->g_74 p_1575->g_96 p_1575->g_98 p_1575->g_100 p_1575->g_103 p_1575->g_19 p_1575->g_129 p_1575->g_176 p_1575->g_203 p_1575->g_202.f1 p_1575->g_210.f1 p_1575->g_235 p_1575->g_210.f0 p_1575->g_210 p_1575->g_233 p_1575->g_297 p_1575->g_196 p_1575->g_448 p_1575->g_774 p_1575->g_569.f1 p_1575->g_925 p_1575->g_932 p_1575->g_573.f0 p_1575->g_560.f0 p_1575->g_561.f1 p_1575->g_571.f1 p_1575->g_951 p_1575->g_261 p_1575->g_1024 p_1575->g_1029 p_1575->g_816 p_1575->g_911.f1 p_1575->g_398 p_1575->g_559.f1 p_1575->g_565.f0 p_1575->g_1347 p_1575->g_819.f0 p_1575->g_120 p_1575->g_819.f1 p_1575->g_560.f1 p_1575->g_559.f0 p_1575->g_913 p_1575->g_1464 p_1575->g_1468
 */
int64_t  func_6(uint32_t  p_7, struct S2 * p_1575)
{ /* block id: 8 */
    int16_t l_10 = 1L;
    uint16_t *l_11 = &p_1575->g_12;
    uint16_t *l_13[6][4] = {{&p_1575->g_14,&p_1575->g_14,&p_1575->g_14,&p_1575->g_14},{&p_1575->g_14,&p_1575->g_14,&p_1575->g_14,&p_1575->g_14},{&p_1575->g_14,&p_1575->g_14,&p_1575->g_14,&p_1575->g_14},{&p_1575->g_14,&p_1575->g_14,&p_1575->g_14,&p_1575->g_14},{&p_1575->g_14,&p_1575->g_14,&p_1575->g_14,&p_1575->g_14},{&p_1575->g_14,&p_1575->g_14,&p_1575->g_14,&p_1575->g_14}};
    int32_t l_18 = 0x1E22401DL;
    int32_t *l_24 = &l_18;
    uint32_t *l_31 = &p_1575->g_20;
    int32_t *l_1467 = &p_1575->g_1468;
    int i, j;
    if ((safe_div_func_uint16_t_u_u(0x0A35L, (p_1575->g_14 = ((*l_11) = l_10)))))
    { /* block id: 11 */
        int32_t *l_16 = &p_1575->g_5;
        int32_t **l_15 = &l_16;
        (*l_15) = (void*)0;
    }
    else
    { /* block id: 13 */
        int32_t *l_17[4];
        int32_t **l_23[10][5][4] = {{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}},{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}},{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}},{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}},{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}},{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}},{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}},{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}},{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}},{{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]},{(void*)0,&l_17[0],&l_17[1],&l_17[0]}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_17[i] = (void*)0;
        p_1575->g_20--;
        l_24 = (void*)0;
    }
    (*l_1467) ^= (p_1575->g_14 < (safe_unary_minus_func_int16_t_s(((*p_1575->g_658) = (func_26((((GROUP_DIVERGE(0, 1) , p_1575->g_5) , FAKE_DIVERGE(p_1575->local_0_offset, get_local_id(0), 10)) | (safe_mul_func_uint16_t_u_u(((FAKE_DIVERGE(p_1575->local_2_offset, get_local_id(2), 10) != (((*l_31) = l_18) > p_1575->g_2[3][4])) != p_1575->g_32), func_33(p_7, p_1575->g_19, p_1575)))), ((((safe_div_func_int32_t_s_s(((65535UL == p_7) < p_7), p_7)) <= 65533UL) == p_7) ^ p_7), p_1575) > 0L)))));
    return p_1575->g_561.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1575->g_74 p_1575->g_297 p_1575->g_559.f1 p_1575->g_398 p_1575->g_176 p_1575->g_657 p_1575->g_658 p_1575->g_235.f0 p_1575->g_98 p_1575->g_20 p_1575->g_571.f1 p_1575->g_1282 p_1575->g_1029 p_1575->g_1379 p_1575->g_913 p_1575->g_819.f1 p_1575->g_560.f1 p_1575->g_560.f0 p_1575->g_819.f0 p_1575->g_574.f1 p_1575->g_448 p_1575->g_571.f0 p_1575->g_1464 p_1575->g_816 p_1575->g_565.f0 p_1575->g_1347
 * writes: p_1575->g_74 p_1575->g_816 p_1575->g_297 p_1575->g_398 p_1575->g_559.f1 p_1575->g_98 p_1575->g_235.f0 p_1575->g_176 p_1575->g_20 p_1575->g_565.f0 p_1575->g_1029 p_1575->g_774 p_1575->g_1347 p_1575->g_819.f0 p_1575->g_210.f0 p_1575->g_120 p_1575->g_819.f1 p_1575->g_560.f1 p_1575->g_559.f0 p_1575->g_913 p_1575->g_560.f0 p_1575->g_1464
 */
uint8_t  func_26(uint32_t  p_27, int32_t  p_28, struct S2 * p_1575)
{ /* block id: 695 */
    uint64_t l_1328 = 0x52EBF18B762DF793L;
    int32_t l_1341 = 0x4DF2EF4BL;
    int32_t l_1346 = (-1L);
    int32_t l_1369[6][4] = {{0L,0L,0x3241A5F4L,0x240C922CL},{0L,0L,0x3241A5F4L,0x240C922CL},{0L,0L,0x3241A5F4L,0x240C922CL},{0L,0L,0x3241A5F4L,0x240C922CL},{0L,0L,0x3241A5F4L,0x240C922CL},{0L,0L,0x3241A5F4L,0x240C922CL}};
    int64_t *l_1391 = (void*)0;
    uint8_t l_1396[6][1] = {{2UL},{2UL},{2UL},{2UL},{2UL},{2UL}};
    struct S1 l_1400 = {0x48B1L,0x988DL};
    int32_t *l_1405 = &l_1346;
    int32_t l_1441 = 0x4082DA5CL;
    int32_t *l_1459[3][4] = {{&p_1575->g_5,&p_1575->g_196,&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_196,&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_196,&p_1575->g_5,&p_1575->g_5}};
    int8_t l_1460 = 0L;
    int16_t l_1461[10][7][3] = {{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}},{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}},{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}},{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}},{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}},{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}},{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}},{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}},{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}},{{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L},{(-9L),8L,0x2F08L}}};
    int32_t l_1462 = (-8L);
    int16_t l_1463 = 0x05BFL;
    int i, j, k;
    for (p_1575->g_74 = 0; (p_1575->g_74 > 27); p_1575->g_74 = safe_add_func_int8_t_s_s(p_1575->g_74, 1))
    { /* block id: 698 */
        uint8_t l_1318 = 0xE4L;
        int32_t l_1326 = 4L;
        int32_t l_1327 = 0x55A07270L;
        struct S1 l_1372[1][7] = {{{1L,1UL},{1L,1UL},{1L,1UL},{1L,1UL},{1L,1UL},{1L,1UL},{1L,1UL}}};
        int8_t l_1380 = 0x26L;
        uint64_t **l_1389 = &p_1575->g_775;
        int i, j;
        for (p_1575->g_816 = 0; (p_1575->g_816 != (-21)); p_1575->g_816 = safe_sub_func_uint8_t_u_u(p_1575->g_816, 1))
        { /* block id: 701 */
            return p_28;
        }
        for (p_1575->g_297 = 0; (p_1575->g_297 <= 1); p_1575->g_297 += 1)
        { /* block id: 706 */
            int8_t l_1331[7][10] = {{0x35L,1L,0x19L,0L,0x19L,1L,0x35L,0x65L,0x5FL,9L},{0x35L,1L,0x19L,0L,0x19L,1L,0x35L,0x65L,0x5FL,9L},{0x35L,1L,0x19L,0L,0x19L,1L,0x35L,0x65L,0x5FL,9L},{0x35L,1L,0x19L,0L,0x19L,1L,0x35L,0x65L,0x5FL,9L},{0x35L,1L,0x19L,0L,0x19L,1L,0x35L,0x65L,0x5FL,9L},{0x35L,1L,0x19L,0L,0x19L,1L,0x35L,0x65L,0x5FL,9L},{0x35L,1L,0x19L,0L,0x19L,1L,0x35L,0x65L,0x5FL,9L}};
            int32_t l_1342 = (-5L);
            uint8_t l_1349 = 0xDDL;
            int32_t l_1395 = (-4L);
            int i, j;
            for (p_1575->g_398 = 4; (p_1575->g_398 >= 0); p_1575->g_398 -= 1)
            { /* block id: 709 */
                int32_t l_1324[4] = {0x3829A3DCL,0x3829A3DCL,0x3829A3DCL,0x3829A3DCL};
                int32_t *l_1343 = (void*)0;
                int32_t *l_1344 = &l_1341;
                int32_t *l_1345[1][1][5] = {{{&l_1326,&l_1326,&l_1326,&l_1326,&l_1326}}};
                int8_t l_1348 = 7L;
                int i, j, k;
                for (p_1575->g_559.f1 = 0; (p_1575->g_559.f1 <= 0); p_1575->g_559.f1 += 1)
                { /* block id: 712 */
                    int i, j, k;
                    if (p_1575->g_176[p_1575->g_297][p_1575->g_559.f1][p_1575->g_398])
                        break;
                    for (p_1575->g_98 = 1; (p_1575->g_98 >= 0); p_1575->g_98 -= 1)
                    { /* block id: 716 */
                        uint16_t *l_1323[8] = {&p_1575->g_12,&p_1575->g_12,&p_1575->g_12,&p_1575->g_12,&p_1575->g_12,&p_1575->g_12,&p_1575->g_12,&p_1575->g_12};
                        int32_t l_1325[7][2] = {{0x25E9285FL,(-1L)},{0x25E9285FL,(-1L)},{0x25E9285FL,(-1L)},{0x25E9285FL,(-1L)},{0x25E9285FL,(-1L)},{0x25E9285FL,(-1L)},{0x25E9285FL,(-1L)}};
                        uint32_t *l_1336 = &p_1575->g_20;
                        int i, j, k;
                        l_1326 &= (l_1342 = ((l_1318 | (~(safe_add_func_int64_t_s_s(((safe_div_func_uint16_t_u_u((++l_1328), ((**p_1575->g_657) ^= l_1331[5][9]))) != (safe_add_func_uint32_t_u_u(((safe_mul_func_uint8_t_u_u(0x67L, p_28)) || (p_1575->g_176[p_1575->g_559.f1][(p_1575->g_559.f1 + 3)][(p_1575->g_98 + 1)] = ((void*)0 != &p_1575->g_261))), (65535UL >= ((++(*l_1336)) , 0x62B9L))))), (safe_add_func_int64_t_s_s(p_1575->g_571.f1, 0x59C2E9D285406C00L)))))) & l_1341));
                        return p_1575->g_571.f1;
                    }
                }
                --l_1349;
                for (p_1575->g_565.f0 = 2; (p_1575->g_565.f0 <= 8); p_1575->g_565.f0 += 1)
                { /* block id: 729 */
                    uint8_t *l_1366 = (void*)0;
                    uint8_t *l_1367 = (void*)0;
                    uint8_t *l_1368[4][3][1] = {{{&p_1575->g_632},{&p_1575->g_632},{&p_1575->g_632}},{{&p_1575->g_632},{&p_1575->g_632},{&p_1575->g_632}},{{&p_1575->g_632},{&p_1575->g_632},{&p_1575->g_632}},{{&p_1575->g_632},{&p_1575->g_632},{&p_1575->g_632}}};
                    int64_t *l_1381 = &p_1575->g_98;
                    struct S0 **l_1385 = &p_1575->g_203;
                    struct S0 ***l_1384 = &l_1385;
                    int i, j, k;
                    l_1345[0][0][0] = ((p_1575->g_1282[(p_1575->g_398 + 2)] > (safe_mod_func_int16_t_s_s(((safe_div_func_int32_t_s_s((safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1575->local_0_offset, get_local_id(0), 10), 0)), (~(safe_mul_func_int16_t_s_s((0x6AL != ((safe_mul_func_uint16_t_u_u((p_1575->g_1282[p_1575->g_297] <= ((~(++p_1575->g_1029)) | ((l_1372[0][5] , ((*l_1381) = ((0xBB1B458873A2172FL && (safe_mod_func_uint64_t_u_u((((l_1342 ^= (safe_div_func_int64_t_s_s(p_1575->g_1282[p_1575->g_398], (~(safe_sub_func_int8_t_s_s(((((0x1775L >= p_28) , 1L) , l_1369[0][1]) && 1UL), 0x58L)))))) < p_27) != p_1575->g_1379), l_1380))) | p_1575->g_913))) && p_27))), p_28)) | p_27)), p_28))))), GROUP_DIVERGE(1, 1))), l_1327)) <= 0xAFF41D7BL), (-5L)))) , (void*)0);
                    for (p_1575->g_816 = 0; (p_1575->g_816 <= 0); p_1575->g_816 += 1)
                    { /* block id: 736 */
                        uint64_t ***l_1388 = &p_1575->g_774[4];
                        uint64_t ***l_1390 = &l_1389;
                        (*l_1344) = (safe_lshift_func_int16_t_s_s(((p_27 >= ((void*)0 != l_1384)) > p_1575->g_74), (safe_mod_func_int32_t_s_s((l_1342 = (((p_28 , (((*l_1388) = &p_1575->g_775) != ((*l_1390) = l_1389))) && ((l_1391 == &p_1575->g_96) ^ 0x287527F3L)) >= 8UL)), 0xAA1B9101L))));
                    }
                    l_1341 |= p_27;
                }
            }
            for (p_1575->g_1347 = 0; (p_1575->g_1347 >= 0); p_1575->g_1347 -= 1)
            { /* block id: 747 */
                int64_t l_1394 = (-1L);
                int32_t l_1399 = (-4L);
                int32_t **l_1403 = (void*)0;
                int32_t **l_1404 = &p_1575->g_120;
                for (p_1575->g_819.f0 = 0; (p_1575->g_819.f0 <= 0); p_1575->g_819.f0 += 1)
                { /* block id: 750 */
                    for (p_1575->g_210.f0 = 0; (p_1575->g_210.f0 >= 0); p_1575->g_210.f0 -= 1)
                    { /* block id: 753 */
                        int32_t *l_1392 = (void*)0;
                        int32_t *l_1393[9] = {&l_1342,&l_1342,&l_1342,&l_1342,&l_1342,&l_1342,&l_1342,&l_1342,&l_1342};
                        struct S1 *l_1401 = (void*)0;
                        struct S1 *l_1402 = &l_1400;
                        int i;
                        l_1396[3][0]--;
                        l_1399 ^= 0x78EE8A90L;
                        l_1327 = 0x69C56CF8L;
                        (*l_1402) = l_1400;
                    }
                    if (p_1575->g_559.f1)
                        goto lbl_1406;
                }
                (*l_1404) = &l_1399;
            }
        }
    }
lbl_1406:
    (*l_1405) = (l_1369[5][3] | 1L);
    for (p_1575->g_819.f1 = (-8); (p_1575->g_819.f1 > 2); ++p_1575->g_819.f1)
    { /* block id: 768 */
        int32_t l_1434[3][8][7] = {{{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL}},{{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL}},{{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL},{0x2058D4CFL,1L,0x01225E17L,0x0D9D265BL,0x41BBB9EBL,0x71B5F7C7L,0x4B0B898EL}}};
        int32_t l_1438 = 0x13EE31A6L;
        struct S1 l_1458 = {0x205FL,0xF3B6L};
        int i, j, k;
        for (p_1575->g_560.f1 = 17; (p_1575->g_560.f1 < 41); p_1575->g_560.f1 = safe_add_func_int8_t_s_s(p_1575->g_560.f1, 1))
        { /* block id: 771 */
            int32_t **l_1442 = &p_1575->g_120;
            for (p_1575->g_559.f0 = (-15); (p_1575->g_559.f0 != 49); p_1575->g_559.f0 = safe_add_func_uint32_t_u_u(p_1575->g_559.f0, 2))
            { /* block id: 774 */
                uint32_t l_1418 = 1UL;
                int16_t l_1430 = 0x47F7L;
                (1 + 1);
            }
            (*l_1442) = &l_1438;
        }
        for (p_1575->g_913 = 0; (p_1575->g_913 < 24); p_1575->g_913 = safe_add_func_uint32_t_u_u(p_1575->g_913, 1))
        { /* block id: 800 */
            for (p_1575->g_560.f0 = 0; (p_1575->g_560.f0 <= 17); ++p_1575->g_560.f0)
            { /* block id: 803 */
                struct S0 *l_1450[3];
                int16_t *l_1457[9][5] = {{&p_1575->g_19,&l_1400.f0,&p_1575->g_235[6][1].f0,&l_1400.f0,&p_1575->g_19},{&p_1575->g_19,&l_1400.f0,&p_1575->g_235[6][1].f0,&l_1400.f0,&p_1575->g_19},{&p_1575->g_19,&l_1400.f0,&p_1575->g_235[6][1].f0,&l_1400.f0,&p_1575->g_19},{&p_1575->g_19,&l_1400.f0,&p_1575->g_235[6][1].f0,&l_1400.f0,&p_1575->g_19},{&p_1575->g_19,&l_1400.f0,&p_1575->g_235[6][1].f0,&l_1400.f0,&p_1575->g_19},{&p_1575->g_19,&l_1400.f0,&p_1575->g_235[6][1].f0,&l_1400.f0,&p_1575->g_19},{&p_1575->g_19,&l_1400.f0,&p_1575->g_235[6][1].f0,&l_1400.f0,&p_1575->g_19},{&p_1575->g_19,&l_1400.f0,&p_1575->g_235[6][1].f0,&l_1400.f0,&p_1575->g_19},{&p_1575->g_19,&l_1400.f0,&p_1575->g_235[6][1].f0,&l_1400.f0,&p_1575->g_19}};
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1450[i] = &p_1575->g_1451;
                if (p_27)
                    break;
                for (p_1575->g_74 = 0; (p_1575->g_74 != 4); p_1575->g_74++)
                { /* block id: 807 */
                    int32_t l_1449[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                    int i;
                    (*l_1405) = l_1449[5];
                }
                if (p_27)
                    continue;
                for (p_1575->g_819.f0 = 0; (p_1575->g_819.f0 <= 6); p_1575->g_819.f0 += 1)
                { /* block id: 813 */
                    int8_t *l_1452 = &p_1575->g_297;
                    int8_t *l_1453 = &p_1575->g_176[1][0][3];
                    int16_t *l_1454 = &l_1400.f0;
                    (*l_1405) &= (((p_27 , (p_1575->g_574[1].f1 || (~((*l_1452) = ((void*)0 != l_1450[0]))))) >= (((((*l_1453) = p_27) < (l_1454 == ((safe_lshift_func_uint16_t_u_s(8UL, 15)) , l_1457[5][4]))) & (p_1575->g_448 && 0x46L)) , (*p_1575->g_658))) < p_1575->g_571.f0);
                }
            }
            l_1400 = l_1458;
        }
    }
    p_1575->g_1464--;
    return p_1575->g_74;
}


/* ------------------------------------------ */
/* 
 * reads : p_1575->g_2 p_1575->g_19 p_1575->g_14 p_1575->g_5 p_1575->g_96 p_1575->g_32 p_1575->g_100 p_1575->g_103 p_1575->g_101 p_1575->g_119 p_1575->g_12 p_1575->g_129 p_1575->g_120 p_1575->g_74 p_1575->g_98 p_1575->g_177 p_1575->g_176 p_1575->g_202.f1 p_1575->g_202.f0 p_1575->g_210 p_1575->g_196 p_1575->g_235.f1 p_1575->g_411 p_1575->g_774 p_1575->g_596 p_1575->g_597 p_1575->g_398 p_1575->g_592 p_1575->g_657 p_1575->g_658 p_1575->g_235.f0 p_1575->g_561.f1 p_1575->g_572.f1 p_1575->g_564.f0 p_1575->g_574.f0 p_1575->g_448 p_1575->g_559.f0 p_1575->g_775 p_1575->g_573.f0 p_1575->g_571.f1 p_1575->g_632 p_1575->g_571.f0 p_1575->g_567.f0 p_1575->g_297 p_1575->g_816 p_1575->g_911.f1 l_1488
 * writes: p_1575->g_74 p_1575->g_96 p_1575->g_98 p_1575->g_100 p_1575->g_103 p_1575->g_19 p_1575->g_129 p_1575->g_176 p_1575->g_203 p_1575->g_202.f1 p_1575->g_210.f1 p_1575->g_235 p_1575->g_210.f0 p_1575->g_12 p_1575->g_210 p_1575->g_233 p_1575->g_297 p_1575->g_196 p_1575->g_448 p_1575->g_774 p_1575->g_569.f1 p_1575->g_925 p_1575->g_932 p_1575->g_573.f0 p_1575->g_560.f0 p_1575->g_561.f1 p_1575->g_571.f1 p_1575->g_951 p_1575->g_261 p_1575->g_1024 p_1575->g_1029 p_1575->g_816 p_1575->g_911.f1
 */
uint16_t  func_33(int8_t  p_34, uint16_t  p_35, struct S2 * p_1575)
{ /* block id: 18 */
    uint32_t l_61 = 0xE48991CDL;
    int32_t **l_419 = &p_1575->g_120;
    int32_t l_1030 = 0x0483F955L;
    int32_t l_1031 = 0x66A10477L;
    uint64_t l_1034[1][6];
    uint64_t *l_1040 = &p_1575->g_911.f1;
    int8_t l_1076[7][1] = {{0x57L},{0x57L},{0x57L},{0x57L},{0x57L},{0x57L},{0x57L}};
    int32_t l_1154 = 0x3DDA3482L;
    int32_t l_1155 = 2L;
    int32_t l_1157[10] = {0x2AA7170BL,0x2AA7170BL,0x2AA7170BL,0x2AA7170BL,0x2AA7170BL,0x2AA7170BL,0x2AA7170BL,0x2AA7170BL,0x2AA7170BL,0x2AA7170BL};
    int32_t l_1163 = 0x2B23CA7FL;
    struct S1 l_1200 = {-5L,0x5485L};
    int8_t l_1218 = (-8L);
    uint8_t l_1228 = 0xA1L;
    uint64_t *l_1287 = (void*)0;
    int32_t *l_1295 = &l_1155;
    int32_t *l_1296 = &l_1031;
    int32_t *l_1297 = (void*)0;
    int32_t *l_1298 = &p_1575->g_196;
    int32_t *l_1299 = &l_1155;
    int32_t *l_1300 = &l_1030;
    int32_t *l_1301 = &l_1155;
    int32_t *l_1302[1];
    int32_t l_1303[10];
    int32_t l_1304 = 1L;
    int64_t l_1305[7] = {1L,1L,1L,1L,1L,1L,1L};
    int64_t l_1306 = 1L;
    int32_t l_1307 = 0x2B51EE8BL;
    int8_t l_1308 = 0x6BL;
    uint32_t l_1309 = 0xA5E2EC9EL;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
            l_1034[i][j] = 0UL;
    }
    for (i = 0; i < 1; i++)
        l_1302[i] = &l_1157[3];
    for (i = 0; i < 10; i++)
        l_1303[i] = (-1L);
    for (p_34 = 0; (p_34 < (-21)); p_34--)
    { /* block id: 21 */
        int32_t *l_70 = &p_1575->g_5;
        int32_t *l_72 = &p_1575->g_5;
        int32_t **l_71 = &l_72;
        uint64_t *l_73 = &p_1575->g_74;
        struct S0 **l_953 = &p_1575->g_203;
        struct S0 ***l_952 = &l_953;
        int8_t l_992 = 0x71L;
        int32_t ***l_1020 = &p_1575->g_119[2];
        int32_t ****l_1021 = &l_1020;
        int32_t ***l_1023 = &p_1575->g_119[2];
        int32_t ****l_1022[4][5] = {{&l_1023,&l_1023,&l_1023,&l_1023,&l_1023},{&l_1023,&l_1023,&l_1023,&l_1023,&l_1023},{&l_1023,&l_1023,&l_1023,&l_1023,&l_1023},{&l_1023,&l_1023,&l_1023,&l_1023,&l_1023}};
        int16_t ****l_1027 = (void*)0;
        int64_t *l_1028[7] = {&p_1575->g_913,(void*)0,&p_1575->g_913,&p_1575->g_913,(void*)0,&p_1575->g_913,&p_1575->g_913};
        int i, j;
        if (func_38(func_43(p_35, func_48(func_50(func_56(l_61, ((safe_mod_func_int64_t_s_s(((func_64(p_34, (safe_add_func_uint64_t_u_u((l_70 != ((*l_71) = &p_1575->g_5)), ((*l_73) = p_1575->g_2[8][4]))), &p_1575->g_5, p_1575) & (0xA8C7L ^ p_35)) && (*l_72)), 4UL)) , p_35), p_34, p_1575->g_14, p_1575), p_1575->g_14, &l_61, (*l_70), p_1575->g_19, p_1575), p_1575), (*l_70), p_1575->g_411, p_1575), l_419, p_1575->g_5, p_34, p_1575))
        { /* block id: 469 */
            int64_t l_919 = (-2L);
            l_919 &= (**l_419);
            return l_919;
        }
        else
        { /* block id: 472 */
            uint16_t ***l_924[1];
            int32_t *l_931 = (void*)0;
            int32_t **l_930[2][3][4] = {{{&l_931,&l_931,&l_931,&l_931},{&l_931,&l_931,&l_931,&l_931},{&l_931,&l_931,&l_931,&l_931}},{{&l_931,&l_931,&l_931,&l_931},{&l_931,&l_931,&l_931,&l_931},{&l_931,&l_931,&l_931,&l_931}}};
            int32_t l_933[1];
            int32_t *l_938 = &p_1575->g_196;
            uint16_t l_997 = 65527UL;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_924[i] = &p_1575->g_596;
            for (i = 0; i < 1; i++)
                l_933[i] = (-1L);
            (*l_938) = (safe_sub_func_int64_t_s_s(((**l_419) && ((safe_div_func_int8_t_s_s(((l_924[0] == (p_1575->g_925[2] = &p_1575->g_596)) && (safe_lshift_func_int8_t_s_s(((((+(safe_add_func_uint8_t_u_u((*l_70), ((p_1575->g_932[1] = &p_1575->g_885) == ((l_933[0] = ((void*)0 != &p_1575->g_32)) , &p_1575->g_101))))) || ((((((safe_lshift_func_int8_t_s_u(((safe_add_func_uint32_t_u_u(((0x3C920B55D6107983L && (-5L)) , FAKE_DIVERGE(p_1575->group_2_offset, get_group_id(2), 10)), 0x2916E469L)) != p_35), 4)) > 1UL) , (-7L)) | p_34) , p_34) , (**p_1575->g_596))) || (*p_1575->g_120)) != GROUP_DIVERGE(0, 1)), p_34))), p_1575->g_559.f0)) | (*p_1575->g_597))), (*p_1575->g_775)));
            (*l_71) = (void*)0;
            for (p_1575->g_573.f0 = (-5); (p_1575->g_573.f0 != 20); p_1575->g_573.f0++)
            { /* block id: 480 */
                int32_t l_945 = 1L;
                int32_t l_948 = 0x5411FE94L;
                uint32_t *l_966 = (void*)0;
                uint32_t *l_967[2][1];
                uint32_t l_989 = 8UL;
                int16_t ***l_1003 = &p_1575->g_657;
                int16_t ****l_1002 = &l_1003;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_967[i][j] = &l_61;
                }
                for (p_1575->g_560.f0 = 0; (p_1575->g_560.f0 < 14); ++p_1575->g_560.f0)
                { /* block id: 483 */
                    int32_t l_947 = 0x1BBF5E65L;
                    for (p_1575->g_561.f1 = 0; (p_1575->g_561.f1 <= 12); p_1575->g_561.f1 = safe_add_func_uint32_t_u_u(p_1575->g_561.f1, 7))
                    { /* block id: 486 */
                        uint32_t l_946 = 0x5A3273CDL;
                        (*l_71) = func_48((p_1575->g_571.f1 |= (+1UL)), p_1575);
                        l_946 = l_945;
                        l_948 &= ((*l_938) &= l_947);
                        return (**p_1575->g_596);
                    }
                }
                (*l_71) = func_48((0x3FL == ((FAKE_DIVERGE(p_1575->group_2_offset, get_group_id(2), 10) , (**l_419)) && ((safe_add_func_uint32_t_u_u(((*l_938) = ((((**l_419) < (((l_931 != (p_1575->g_951 = &p_1575->g_448)) , l_952) == (((((safe_div_func_int64_t_s_s((safe_sub_func_int64_t_s_s((safe_mod_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((((+((p_35 , ((safe_mul_func_uint8_t_u_u(((0x6D93D1C484588031L ^ ((safe_add_func_uint32_t_u_u(p_35, p_1575->g_632)) & p_35)) < p_1575->g_571.f0), p_35)) < p_34)) | (-1L))) , 0x1E5702BFL) == (*p_1575->g_120)), 0x0975L)) ^ p_34) ^ l_948), FAKE_DIVERGE(p_1575->local_1_offset, get_local_id(1), 10))), p_34)), 0x6FB69CD60F9DD16EL)) || FAKE_DIVERGE(p_1575->group_1_offset, get_group_id(1), 10)) , (void*)0) == l_70) , &l_953))) && l_948) <= p_34)), l_945)) == (-1L)))), p_1575);
                (*l_71) = func_48(((((((0x9C449A44L > (((*p_1575->g_775) ^ (safe_div_func_uint32_t_u_u(((l_948 = (safe_add_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint16_t_u_u((((((safe_unary_minus_func_int8_t_s(0L)) > ((FAKE_DIVERGE(p_1575->local_2_offset, get_local_id(2), 10) , (safe_rshift_func_uint8_t_u_u((safe_add_func_int32_t_s_s((((*l_938) ^= (--p_35)) ^ (-6L)), p_34)), 1))) < ((safe_mul_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((l_992 = (++l_989)), (((safe_rshift_func_uint16_t_u_u(((((!(*p_1575->g_775)) || (safe_mod_func_uint32_t_u_u((p_1575->g_261 = l_997), (safe_sub_func_uint8_t_u_u(p_1575->g_100, ((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1575->group_0_offset, get_group_id(0), 10), p_1575->g_2[1][1])) ^ p_1575->g_567[0][2].f0)))))) && p_1575->g_561.f1) > 4294967295UL), p_34)) , (-1L)) > (*l_70)))), (**p_1575->g_657))) != p_34))) , l_1002) != (void*)0) < p_34), (**p_1575->g_596))), (**l_419))), p_1575->g_297))) == l_945), p_1575->g_101))) , GROUP_DIVERGE(1, 1))) < l_945) == (*p_1575->g_120)) , 0UL) >= 9L) > (**l_419)), p_1575);
            }
            (*l_71) = (*l_71);
        }
        l_1031 |= (safe_mul_func_uint16_t_u_u((*p_1575->g_597), ((l_1030 |= (p_1575->g_1029 = (safe_add_func_int32_t_s_s(((!(safe_mul_func_int8_t_s_s(((((safe_mul_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(0x4E2AL, (((safe_sub_func_int64_t_s_s((((safe_mul_func_uint8_t_u_u((**l_419), (((p_1575->g_1024 = ((*l_1021) = l_1020)) != &l_419) ^ (*p_1575->g_658)))) && 18446744073709551615UL) > (p_1575->g_96 = (((0UL > (safe_div_func_int64_t_s_s(((((p_35 >= 0x6635EA38L) , l_1027) != (void*)0) >= p_34), p_34))) & p_34) || (**l_419)))), 1UL)) >= 247UL) , p_34))) < (**l_419)), 1)), (*p_1575->g_658))) >= p_35) , FAKE_DIVERGE(p_1575->global_1_offset, get_global_id(1), 10)) , 0x0EL), (*l_70)))) < (*p_1575->g_658)), p_35)))) & p_34)));
    }
    for (p_1575->g_816 = 0; (p_1575->g_816 == (-21)); p_1575->g_816 = safe_sub_func_int16_t_s_s(p_1575->g_816, 9))
    { /* block id: 517 */
        if (l_1034[0][3])
            break;
        for (p_1575->g_911.f1 = 0; (p_1575->g_911.f1 >= 46); ++p_1575->g_911.f1)
        { /* block id: 521 */
            int16_t l_1037[1];
            int i;
            for (i = 0; i < 1; i++)
                l_1037[i] = 0x5FD4L;
            if (l_1037[0])
                break;
        }
        if (p_35)
            break;
    }
    for (p_1575->g_98 = 0; (p_1575->g_98 <= 8); p_1575->g_98 += 1)
    { /* block id: 528 */
        struct S1 *l_1038 = &p_1575->g_235[6][1];
        int32_t l_1039 = 1L;
        int8_t l_1051 = 0x32L;
        int32_t *l_1057 = (void*)0;
        uint16_t l_1113 = 65534UL;
        int64_t l_1153 = 0x2A52C0B92D1A1A81L;
        int32_t l_1156[3];
        uint16_t l_1164 = 0xCD9CL;
        uint64_t **l_1231[2];
        int i;
        for (i = 0; i < 3; i++)
            l_1156[i] = 0x30F13328L;
        for (i = 0; i < 2; i++)
            l_1231[i] = &p_1575->g_775;
        (1 + 1);
    }
    ++l_1309;
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1575->g_210.f0 p_1575->g_100 p_1575->g_2 p_1575->g_101 p_1575->g_5 p_1575->g_120 p_1575->g_103 p_1575->g_129 p_1575->g_774 p_1575->g_596 p_1575->g_597 p_1575->g_14 p_1575->g_398 p_1575->g_592 p_1575->g_657 p_1575->g_658 p_1575->g_235.f0 p_1575->g_561.f1 p_1575->g_572.f1 p_1575->g_564.f0 p_1575->g_574.f0 p_1575->g_448 p_1575->g_569.f1 p_1575->g_196 l_1488
 * writes: p_1575->g_448 p_1575->g_74 p_1575->g_235 p_1575->g_774 p_1575->g_196 p_1575->g_569.f1
 */
int32_t  func_38(uint16_t * p_39, int32_t ** p_40, int16_t  p_41, uint8_t  p_42, struct S2 * p_1575)
{ /* block id: 214 */
    struct S0 ***l_422 = (void*)0;
    int16_t *l_432 = &p_1575->g_210.f0;
    int16_t **l_431 = &l_432;
    int16_t ***l_430 = &l_431;
    int16_t ****l_429 = &l_430;
    int16_t ***l_434[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t ****l_433 = &l_434[1];
    int32_t l_439 = 0x6B298362L;
    uint32_t *l_440 = (void*)0;
    uint16_t *l_446 = (void*)0;
    uint16_t **l_445 = &l_446;
    uint32_t *l_447 = &p_1575->g_448;
    uint16_t l_449 = 2UL;
    uint64_t *l_450 = &p_1575->g_74;
    int64_t l_451 = 0x0533DBDFC090A7F4L;
    int32_t *l_452 = &l_439;
    int64_t *l_453[1];
    int32_t l_454 = 0L;
    struct S1 l_461 = {0x3ECBL,7UL};
    int32_t ***l_554 = &p_1575->g_119[4];
    uint8_t l_582 = 0x72L;
    int32_t l_610 = (-1L);
    int32_t l_611 = 0x5D2B0E30L;
    int32_t l_612 = 0x178748CAL;
    int32_t l_621 = (-5L);
    int32_t l_624 = 0L;
    int32_t l_629 = 0x7CF4BAE4L;
    int64_t l_662 = (-10L);
    int32_t l_707 = 0L;
    int32_t *l_793[10][4][1] = {{{&l_707},{&l_707},{&l_707},{&l_707}},{{&l_707},{&l_707},{&l_707},{&l_707}},{{&l_707},{&l_707},{&l_707},{&l_707}},{{&l_707},{&l_707},{&l_707},{&l_707}},{{&l_707},{&l_707},{&l_707},{&l_707}},{{&l_707},{&l_707},{&l_707},{&l_707}},{{&l_707},{&l_707},{&l_707},{&l_707}},{{&l_707},{&l_707},{&l_707},{&l_707}},{{&l_707},{&l_707},{&l_707},{&l_707}},{{&l_707},{&l_707},{&l_707},{&l_707}}};
    int32_t *l_794 = &p_1575->g_196;
    struct S0 *l_818 = &p_1575->g_819;
    uint64_t ***l_848[6][4][7] = {{{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0}},{{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0}},{{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0}},{{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0}},{{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0}},{{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0},{(void*)0,&p_1575->g_774[6],(void*)0,(void*)0,&p_1575->g_774[6],(void*)0,(void*)0}}};
    uint32_t l_865 = 2UL;
    uint8_t l_912 = 252UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_453[i] = (void*)0;
    if ((safe_sub_func_int8_t_s_s(((void*)0 != l_422), ((((l_454 = (((*l_452) = ((((safe_div_func_uint16_t_u_u(((safe_mod_func_int64_t_s_s(((((((safe_mul_func_int16_t_s_s(p_1575->g_210.f0, (((*l_429) = (void*)0) == ((*l_433) = &l_431)))) ^ ((*l_450) = (safe_mod_func_uint16_t_u_u((((*l_447) = (safe_mul_func_uint16_t_u_u((((*l_445) = func_43(l_439, l_440, (((safe_add_func_uint32_t_u_u((safe_div_func_uint8_t_u_u(0xF6L, p_42)), 1UL)) != p_42) >= p_42), l_439, p_1575)) == &p_1575->g_103[1][6]), p_1575->g_100))) , 65535UL), l_449)))) | 0x25BAL) <= 0x2C9B0DF282F369F7L) , p_1575->g_2[5][2]) & 3L), p_1575->g_101)) , 0x805BL), l_451)) >= p_1575->g_5) , 0x85FBB34B012D960DL) || 7UL)) < (**p_40))) , p_1575->g_103[1][6]) < p_1575->g_101) , p_42))))
    { /* block id: 222 */
        struct S1 l_455 = {0x3EC1L,0xCB53L};
        struct S1 *l_456[2];
        int i;
        for (i = 0; i < 2; i++)
            l_456[i] = &l_455;
        p_1575->g_235[6][1] = l_455;
    }
    else
    { /* block id: 224 */
        int16_t l_481 = (-8L);
        uint16_t l_482[10][6] = {{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL},{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL},{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL},{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL},{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL},{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL},{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL},{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL},{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL},{65526UL,65526UL,0xECBFL,65535UL,0x5ED2L,65535UL}};
        struct S0 **l_502 = &p_1575->g_203;
        struct S1 l_598 = {1L,1UL};
        int32_t l_600 = 0x650CC643L;
        int32_t l_609 = 0x46FB10C5L;
        int32_t l_615 = 0x638D19F2L;
        int32_t l_616 = 0x6B97D1FEL;
        int32_t l_617[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        uint64_t l_635 = 0xA55B54C819387C92L;
        int64_t l_660 = 0x566EC26B5B72E5A3L;
        int32_t **l_673[4][7] = {{(void*)0,(void*)0,&l_452,&l_452,&l_452,&l_452,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,&l_452,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,&l_452,&l_452},{(void*)0,(void*)0,&l_452,&l_452,&l_452,&l_452,&l_452}};
        struct S1 *l_702 = &p_1575->g_235[2][5];
        struct S1 **l_701 = &l_702;
        uint32_t *l_715 = &p_1575->g_2[1][1];
        uint32_t l_720 = 0xD91E4086L;
        uint64_t ***l_776 = &p_1575->g_774[6];
        int i, j;
        for (p_41 = 0; (p_41 <= 2); p_41++)
        { /* block id: 227 */
            int32_t l_464 = 0x465E971BL;
            uint32_t *l_479 = (void*)0;
            uint32_t *l_480 = &p_1575->g_261;
            uint64_t *l_521 = (void*)0;
            int32_t l_543 = 0x76EEF07FL;
            uint32_t l_553 = 0x47CACC71L;
            int64_t *l_583 = &p_1575->g_233;
            int32_t l_618 = (-1L);
            int32_t l_620 = 0x75CAC3BEL;
            int32_t l_623 = 0x1D7DB107L;
            int32_t l_625 = 0x26FAD753L;
            int32_t l_627 = 0x418A0FE5L;
            struct S1 l_648 = {0x2150L,0x8D1CL};
            int16_t **l_656 = &l_432;
            uint32_t l_661 = 4294967295UL;
            int8_t l_759 = 0x2DL;
            (1 + 1);
        }
        l_621 &= (((((safe_mod_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u((p_1575->g_129 ^ (p_42 >= (((&p_1575->g_235[2][6] == ((*l_701) = (*l_701))) || (((void*)0 != &p_1575->g_120) >= p_1575->g_103[5][7])) , (((&l_450 == ((*l_776) = p_1575->g_774[6])) > (*p_1575->g_120)) || (**p_1575->g_596))))), (*l_452))), p_1575->g_398)), 0x07L)) == p_1575->g_592[1][5]) , l_447) != l_715) != p_42);
        (*l_452) = 0x085E4B3CL;
        (*l_452) &= (p_41 | p_42);
    }
    (*l_794) = ((((*l_447) |= (safe_add_func_uint64_t_u_u(0x0E338ACF81346A56L, (safe_add_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((((safe_mul_func_int16_t_s_s((p_41 = ((**p_1575->g_657) = ((((safe_rshift_func_int16_t_s_u((**p_1575->g_657), 3)) | ((void*)0 != &p_1575->g_775)) ^ (((safe_div_func_uint32_t_u_u(((*p_1575->g_597) <= ((p_42 , ((*l_452) = (safe_rshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s(0x59L, p_1575->g_561.f1)), (**p_1575->g_657))))) , (*l_452))), p_1575->g_572[7].f1)) | p_1575->g_564[4].f0) > (*p_1575->g_658))) == (**p_40)))), p_1575->g_574[1].f0)) > 0UL) | p_42), 5)), 65535UL))))) , &p_1575->g_32) == l_452);
    for (p_1575->g_569.f1 = 0; (p_1575->g_569.f1 < 56); ++p_1575->g_569.f1)
    { /* block id: 398 */
        uint32_t l_805 = 0xAD10A8A5L;
        uint16_t *l_806 = &l_461.f1;
        uint32_t *l_809 = &p_1575->g_261;
        uint64_t **l_814 = &p_1575->g_775;
        int16_t l_815 = (-9L);
        int32_t l_817 = 0x6079C4F5L;
        struct S0 **l_820 = &p_1575->g_203;
        int8_t *l_832[2][7][9] = {{{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]}},{{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]},{&p_1575->g_176[1][3][1],&p_1575->g_176[1][0][3],&p_1575->g_297,&p_1575->g_129,(void*)0,&p_1575->g_176[0][0][0],&p_1575->g_297,&p_1575->g_176[1][3][1],&p_1575->g_176[1][3][1]}}};
        int32_t l_833 = 0x3EDBC074L;
        struct S1 l_850[10][6] = {{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}},{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}},{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}},{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}},{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}},{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}},{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}},{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}},{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}},{{0x6E2DL,3UL},{1L,0x7D3CL},{0x1699L,0xAB03L},{1L,0x7D3CL},{0x6E2DL,3UL},{0x6E2DL,3UL}}};
        int32_t *l_857 = &l_833;
        uint8_t *l_870 = (void*)0;
        uint8_t *l_871 = &l_582;
        int64_t *l_872 = &p_1575->g_398;
        struct S0 *l_910 = &p_1575->g_911;
        int i, j, k;
        (1 + 1);
    }
    return (*l_794);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t * func_43(int32_t  p_44, uint32_t * p_45, uint64_t  p_46, uint8_t  p_47, struct S2 * p_1575)
{ /* block id: 210 */
    struct S1 *l_413 = &p_1575->g_235[0][5];
    struct S1 **l_412 = &l_413;
    int32_t *l_414[4];
    uint32_t l_415 = 0xA3DD651EL;
    uint16_t *l_418[7][1] = {{&p_1575->g_235[6][1].f1},{&p_1575->g_235[6][1].f1},{&p_1575->g_235[6][1].f1},{&p_1575->g_235[6][1].f1},{&p_1575->g_235[6][1].f1},{&p_1575->g_235[6][1].f1},{&p_1575->g_235[6][1].f1}};
    int i, j;
    for (i = 0; i < 4; i++)
        l_414[i] = &p_1575->g_196;
    (*l_412) = &p_1575->g_235[2][2];
    --l_415;
    return l_418[4][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1575->g_103 p_1575->g_176 p_1575->g_129 p_1575->g_202.f1 p_1575->g_96 p_1575->g_120 p_1575->g_5 p_1575->g_19 p_1575->g_101 p_1575->g_202.f0 p_1575->g_210 p_1575->g_196 p_1575->g_235.f1 p_1575->g_12 p_1575->g_297 l_1488
 * writes: p_1575->g_203 p_1575->g_202.f1 p_1575->g_19 p_1575->g_210.f1 p_1575->g_235 p_1575->g_210.f0 p_1575->g_74 p_1575->g_12 p_1575->g_210 p_1575->g_233 p_1575->g_297 p_1575->g_196 p_1575->g_96 p_1575->g_129
 */
uint32_t * func_48(uint64_t  p_49, struct S2 * p_1575)
{ /* block id: 80 */
    int16_t **l_197 = (void*)0;
    int16_t ***l_198 = &l_197;
    struct S1 *l_209 = &p_1575->g_210;
    int32_t l_214 = 0L;
    int32_t l_215 = (-1L);
    int32_t **l_279 = &p_1575->g_120;
    int64_t l_296 = (-10L);
    int32_t *l_309 = &l_214;
    struct S1 l_315 = {0x675FL,65535UL};
    int32_t l_375 = 3L;
    int32_t **l_384 = &l_309;
    (*l_198) = l_197;
    if ((+(safe_div_func_uint16_t_u_u(((!(p_1575->g_103[1][6] >= (-6L))) , (p_1575->g_176[1][0][3] , p_49)), p_49))))
    { /* block id: 82 */
        struct S0 *l_201 = &p_1575->g_202;
        p_1575->g_203 = l_201;
    }
    else
    { /* block id: 84 */
        uint64_t *l_208 = &p_1575->g_202.f1;
        struct S1 *l_212 = (void*)0;
        struct S1 **l_211 = &l_212;
        uint8_t *l_213[8][2] = {{&p_1575->g_100,&p_1575->g_100},{&p_1575->g_100,&p_1575->g_100},{&p_1575->g_100,&p_1575->g_100},{&p_1575->g_100,&p_1575->g_100},{&p_1575->g_100,&p_1575->g_100},{&p_1575->g_100,&p_1575->g_100},{&p_1575->g_100,&p_1575->g_100},{&p_1575->g_100,&p_1575->g_100}};
        int32_t l_216 = (-1L);
        int32_t l_271[6];
        struct S0 **l_303[6] = {&p_1575->g_203,&p_1575->g_203,&p_1575->g_203,&p_1575->g_203,&p_1575->g_203,&p_1575->g_203};
        int32_t *l_316[6];
        int i, j;
        for (i = 0; i < 6; i++)
            l_271[i] = (-8L);
        for (i = 0; i < 6; i++)
            l_316[i] = (void*)0;
        if ((((l_215 = (~(l_214 = (safe_mul_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(p_49, 0x68L)), ((((*l_208) = p_1575->g_129) , (p_1575->g_202.f1 , l_209)) == ((*l_211) = &p_1575->g_210))))))) == p_49) > ((*l_198) == ((p_1575->g_96 < l_216) , (void*)0))))
        { /* block id: 89 */
            uint64_t l_217 = 8UL;
            int32_t l_218 = 0L;
            struct S1 **l_266 = &l_212;
            uint32_t *l_300 = &p_1575->g_261;
            l_217 ^= 0x6B8CC406L;
            l_218 = (*p_1575->g_120);
            for (p_1575->g_19 = 20; (p_1575->g_19 <= 16); p_1575->g_19 = safe_sub_func_int8_t_s_s(p_1575->g_19, 6))
            { /* block id: 94 */
                uint16_t l_226 = 0UL;
                int32_t ***l_286 = &p_1575->g_119[2];
                int32_t l_291 = 0x734A63BBL;
                uint64_t *l_293 = (void*)0;
                uint64_t **l_292 = &l_293;
                uint32_t *l_294 = (void*)0;
                uint32_t *l_295[3][2][7] = {{{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261}},{{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261}},{{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261}}};
                int i, j, k;
                for (p_1575->g_210.f1 = 0; (p_1575->g_210.f1 <= 19); ++p_1575->g_210.f1)
                { /* block id: 97 */
                    uint16_t l_225 = 0x5D31L;
                    int32_t l_262[8][10] = {{0x4229446AL,0x1183E08DL,(-2L),(-2L),0x1183E08DL,(-2L),(-2L),0x1183E08DL,0x4229446AL,0x4229446AL},{0x4229446AL,0x1183E08DL,(-2L),(-2L),0x1183E08DL,(-2L),(-2L),0x1183E08DL,0x4229446AL,0x4229446AL},{0x4229446AL,0x1183E08DL,(-2L),(-2L),0x1183E08DL,(-2L),(-2L),0x1183E08DL,0x4229446AL,0x4229446AL},{0x4229446AL,0x1183E08DL,(-2L),(-2L),0x1183E08DL,(-2L),(-2L),0x1183E08DL,0x4229446AL,0x4229446AL},{0x4229446AL,0x1183E08DL,(-2L),(-2L),0x1183E08DL,(-2L),(-2L),0x1183E08DL,0x4229446AL,0x4229446AL},{0x4229446AL,0x1183E08DL,(-2L),(-2L),0x1183E08DL,(-2L),(-2L),0x1183E08DL,0x4229446AL,0x4229446AL},{0x4229446AL,0x1183E08DL,(-2L),(-2L),0x1183E08DL,(-2L),(-2L),0x1183E08DL,0x4229446AL,0x4229446AL},{0x4229446AL,0x1183E08DL,(-2L),(-2L),0x1183E08DL,(-2L),(-2L),0x1183E08DL,0x4229446AL,0x4229446AL}};
                    uint8_t l_263 = 5UL;
                    int i, j;
                    for (l_217 = 0; (l_217 != 57); l_217 = safe_add_func_int32_t_s_s(l_217, 8))
                    { /* block id: 100 */
                        struct S0 **l_231[5][2][1] = {{{&p_1575->g_203},{&p_1575->g_203}},{{&p_1575->g_203},{&p_1575->g_203}},{{&p_1575->g_203},{&p_1575->g_203}},{{&p_1575->g_203},{&p_1575->g_203}},{{&p_1575->g_203},{&p_1575->g_203}}};
                        int64_t *l_232[2][4] = {{&p_1575->g_233,&p_1575->g_233,&p_1575->g_233,&p_1575->g_233},{&p_1575->g_233,&p_1575->g_233,&p_1575->g_233,&p_1575->g_233}};
                        struct S1 *l_234[9] = {(void*)0,&p_1575->g_235[6][1],(void*)0,(void*)0,&p_1575->g_235[6][1],(void*)0,(void*)0,&p_1575->g_235[6][1],(void*)0};
                        int32_t l_244 = 2L;
                        uint32_t *l_260[1][5][7] = {{{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261,&p_1575->g_261}}};
                        int32_t *l_267[4][8] = {{&p_1575->g_196,&l_218,&l_218,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196},{&p_1575->g_196,&l_218,&l_218,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196},{&p_1575->g_196,&l_218,&l_218,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196},{&p_1575->g_196,&l_218,&l_218,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196,&p_1575->g_196}};
                        uint32_t l_268 = 1UL;
                        int16_t *l_269 = (void*)0;
                        int16_t *l_270 = &p_1575->g_210.f0;
                        uint16_t *l_272 = &p_1575->g_12;
                        uint64_t l_273 = 0x7F46E1EE88E772E9L;
                        int8_t l_274 = (-1L);
                        int i, j, k;
                        l_226 = l_225;
                        p_1575->g_235[6][2] = ((l_215 = ((((p_1575->g_101 | (safe_sub_func_uint64_t_u_u((((safe_rshift_func_uint16_t_u_s((l_215 | ((p_1575->g_202.f0 == l_216) , 0x50892C7EL)), 13)) >= ((p_49 && ((void*)0 == l_231[0][1][0])) && l_226)) != p_49), 0x91E14933FC6AC2D5L))) , FAKE_DIVERGE(p_1575->group_1_offset, get_group_id(1), 10)) , (*l_211)) == &p_1575->g_210)) , (**l_211));
                        l_274 &= (l_273 = (safe_sub_func_int32_t_s_s(((((~(((*l_272) &= (safe_mod_func_uint64_t_u_u((p_1575->g_74 = (safe_sub_func_int32_t_s_s(((l_226 == (safe_add_func_uint64_t_u_u((l_244 == ((safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((((*l_270) = (p_49 | ((safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u((p_49 != ((safe_unary_minus_func_uint32_t_u(((safe_mul_func_uint16_t_u_u((((((FAKE_DIVERGE(p_1575->group_0_offset, get_group_id(0), 10) == (((safe_sub_func_int32_t_s_s((l_216 = ((safe_lshift_func_int8_t_s_s((p_49 && (++l_263)), ((void*)0 != l_266))) != (l_262[7][8] = p_1575->g_103[1][6]))), ((l_215 &= (&p_1575->g_119[0] == &p_1575->g_119[6])) , p_49))) <= p_49) | l_226)) >= l_268) & GROUP_DIVERGE(0, 1)) , p_1575->g_196) < p_1575->g_235[6][1].f1), FAKE_DIVERGE(p_1575->local_2_offset, get_local_id(2), 10))) , p_1575->g_176[1][1][1]))) > l_214)), p_1575->g_129)), l_218)) && 0x12BB00D93FB0A9CFL))) >= p_49) <= 65527UL), p_1575->g_210.f1)), l_217)) , p_49)), 0x7004773E91399ABDL))) , (-7L)), 0x906DD1E3L))), l_271[2]))) | 0x6873L)) >= FAKE_DIVERGE(p_1575->global_0_offset, get_global_id(0), 10)) > p_49) < 0x48A1E380L), p_49)));
                        if (p_49)
                            continue;
                    }
                }
            }
            l_315 = ((**l_266) = p_1575->g_210);
        }
        else
        { /* block id: 156 */
            for (p_1575->g_233 = 0; p_1575->g_233 < 7; p_1575->g_233 += 1)
            {
                for (p_1575->g_297 = 0; p_1575->g_297 < 9; p_1575->g_297 += 1)
                {
                    struct S1 tmp = {{0x2AAEL,0x858BL}};
                    p_1575->g_235[p_1575->g_233][p_1575->g_297] = tmp;
                }
            }
        }
        l_316[1] = (*l_279);
        return l_316[0];
    }
    for (l_214 = 0; (l_214 == (-3)); l_214--)
    { /* block id: 164 */
        int64_t l_327 = (-7L);
        int16_t l_341 = 0x1DDCL;
        int32_t **l_356[4] = {&l_309,&l_309,&l_309,&l_309};
        struct S1 l_404 = {-4L,0UL};
        uint32_t *l_410[4][3][2] = {{{&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261}},{{&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261}},{{&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261}},{{&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261},{&p_1575->g_261,&p_1575->g_261}}};
        int i, j, k;
        for (p_1575->g_297 = 0; (p_1575->g_297 < (-17)); p_1575->g_297 = safe_sub_func_uint16_t_u_u(p_1575->g_297, 4))
        { /* block id: 167 */
            int32_t l_373[4];
            int32_t l_385[1];
            int16_t ***l_399 = &l_197;
            int32_t l_403 = 1L;
            uint16_t *l_408 = &l_315.f1;
            uint16_t **l_407[1][6][7] = {{{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408}}};
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_373[i] = 0x5089B286L;
            for (i = 0; i < 1; i++)
                l_385[i] = 6L;
            for (p_1575->g_196 = 0; (p_1575->g_196 >= 17); p_1575->g_196 = safe_add_func_int32_t_s_s(p_1575->g_196, 5))
            { /* block id: 170 */
                int32_t **l_355 = (void*)0;
                int32_t l_360 = 0x32BBC0EFL;
                int32_t l_402 = 0x7AFA0DB8L;
                uint16_t ***l_409 = &l_407[0][2][3];
                for (p_1575->g_96 = 16; (p_1575->g_96 > 29); ++p_1575->g_96)
                { /* block id: 173 */
                    int32_t **l_354 = (void*)0;
                    uint8_t *l_357 = (void*)0;
                    uint8_t *l_358 = (void*)0;
                    uint8_t *l_359[4];
                    int32_t l_378 = 0L;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_359[i] = &p_1575->g_100;
                    for (p_1575->g_129 = 0; (p_1575->g_129 >= 18); p_1575->g_129++)
                    { /* block id: 176 */
                        int32_t *l_328 = &l_215;
                        (*l_328) = l_327;
                    }
                }
                (*l_409) = l_407[0][1][0];
                if (p_49)
                    continue;
            }
        }
        return l_410[0][2][0];
    }
    return &p_1575->g_261;
}


/* ------------------------------------------ */
/* 
 * reads : p_1575->g_12 p_1575->g_14 p_1575->g_103 p_1575->g_32 p_1575->g_129 p_1575->g_120 p_1575->g_5 p_1575->g_74 p_1575->g_98 p_1575->g_19 p_1575->g_177 p_1575->g_2 p_1575->g_176 p_1575->g_101 p_1575->g_96 l_1488
 * writes: p_1575->g_19 p_1575->g_129 p_1575->g_74 p_1575->g_176
 */
uint64_t  func_50(int32_t ** p_51, uint8_t  p_52, uint32_t * p_53, int64_t  p_54, uint32_t  p_55, struct S2 * p_1575)
{ /* block id: 42 */
    struct S1 l_121[10][10] = {{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}},{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}},{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}},{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}},{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}},{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}},{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}},{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}},{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}},{{0x4479L,0x9B32L},{0x4479L,0x9B32L},{1L,0x378BL},{5L,0x7395L},{0L,65535UL},{1L,65527UL},{1L,0UL},{-9L,0xCC8AL},{1L,0UL},{1L,65527UL}}};
    struct S1 *l_122 = &l_121[3][2];
    int16_t *l_125 = &p_1575->g_19;
    int16_t *l_126 = &l_121[3][2].f0;
    uint32_t l_127 = 0x4014C235L;
    int32_t *l_128[1];
    uint16_t l_133 = 0UL;
    int32_t **l_193[10][3][3] = {{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}},{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}},{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}},{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}},{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}},{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}},{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}},{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}},{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}},{{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0},{&l_128[0],&l_128[0],(void*)0}}};
    int32_t *l_194[9][9][2] = {{{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5}},{{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5}},{{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5}},{{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5}},{{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5}},{{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5}},{{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5}},{{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5}},{{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5},{&p_1575->g_5,&p_1575->g_5}}};
    int32_t *l_195 = &p_1575->g_196;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_128[i] = (void*)0;
    (*l_122) = l_121[3][2];
    p_1575->g_129 |= (((p_1575->g_12 , p_55) , (!(safe_add_func_int16_t_s_s(((*l_126) = (p_1575->g_14 , ((*l_125) = p_52))), ((p_1575->g_103[0][6] , &p_1575->g_74) == (void*)0))))) < ((p_1575->g_32 ^ l_121[3][2].f1) < l_127));
    for (p_1575->g_129 = 0; (p_1575->g_129 <= 9); p_1575->g_129 += 1)
    { /* block id: 49 */
        int32_t l_130 = 1L;
        int64_t l_144 = 0x70156936D62ACC67L;
        uint32_t *l_145 = &l_127;
        uint16_t *l_146 = (void*)0;
        uint16_t *l_147[8] = {&p_1575->g_103[6][2],&p_1575->g_103[6][2],&p_1575->g_103[6][2],&p_1575->g_103[6][2],&p_1575->g_103[6][2],&p_1575->g_103[6][2],&p_1575->g_103[6][2],&p_1575->g_103[6][2]};
        struct S1 l_174 = {6L,7UL};
        int32_t l_179 = 1L;
        int32_t l_191 = 0x57DA9C45L;
        int i;
        l_130 = (*p_1575->g_120);
        if ((safe_mod_func_int16_t_s_s(l_133, (safe_lshift_func_uint16_t_u_s((l_130 = (((((safe_mul_func_int16_t_s_s(((p_1575->g_14 , 0x28L) >= (safe_add_func_int32_t_s_s((((safe_lshift_func_uint8_t_u_u((~255UL), 2)) , ((*p_53)--)) || (p_55 != l_144)), (p_1575->g_12 || (&p_1575->g_19 == (((l_145 == p_53) , 0x4A76L) , (void*)0)))))), p_52)) && 0xBBF8L) , p_55) , 0L) >= p_54)), p_1575->g_129)))))
        { /* block id: 53 */
            int32_t *l_148 = (void*)0;
            l_128[0] = l_148;
        }
        else
        { /* block id: 55 */
            uint64_t *l_159 = &p_1575->g_74;
            int32_t l_162[6][6][1] = {{{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L}},{{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L}},{{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L}},{{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L}},{{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L}},{{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L},{0x33F44D47L}}};
            int32_t l_163 = 0x58F3143BL;
            int8_t *l_175[6];
            int64_t l_178[9];
            int32_t l_180 = 0x5B276619L;
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_175[i] = &p_1575->g_176[1][0][3];
            for (i = 0; i < 9; i++)
                l_178[i] = (-1L);
            l_180 &= ((safe_mod_func_int8_t_s_s(p_1575->g_12, (l_179 |= ((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_u((safe_sub_func_uint64_t_u_u((safe_add_func_int8_t_s_s((FAKE_DIVERGE(p_1575->local_1_offset, get_local_id(1), 10) < ((--(*l_159)) == (l_162[0][2][0] &= (&p_1575->g_98 != (GROUP_DIVERGE(1, 1) , &p_1575->g_98))))), ((l_163 , (safe_sub_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((--(*p_53)), 1UL)), (~p_54)))) , ((p_1575->g_98 , (((safe_add_func_uint8_t_u_u((((l_163 = (safe_rshift_func_uint16_t_u_u((~((~((*p_53) > (l_174 , 0x6A0411C8L))) | l_130)), 4))) >= p_55) | p_1575->g_19), p_1575->g_5)) , p_1575->g_177) == &l_121[3][2])) < 0x3EL)))), p_1575->g_103[1][6])), p_54)) > 0x6255381E5287C32AL), l_178[4])) < p_1575->g_2[9][2])))) <= p_1575->g_12);
        }
        for (l_179 = 9; (l_179 >= 0); l_179 -= 1)
        { /* block id: 65 */
            uint16_t l_181 = 0UL;
            int8_t *l_188 = &p_1575->g_176[0][0][5];
            int32_t l_192[7][1];
            int i, j;
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 1; j++)
                    l_192[i][j] = (-2L);
            }
            for (p_1575->g_19 = 0; (p_1575->g_19 <= 9); p_1575->g_19 += 1)
            { /* block id: 68 */
                ++l_181;
            }
            l_192[5][0] |= (safe_add_func_int32_t_s_s((l_191 &= (0x47C511B6L >= (((void*)0 == &p_1575->g_176[0][2][3]) | ((p_52 , ((((safe_mod_func_int8_t_s_s(((*l_188) = l_181), p_55)) , ((safe_add_func_uint64_t_u_u(((~((l_181 && (p_1575->g_176[1][0][3] & (((p_1575->g_101 <= p_1575->g_14) , p_1575->g_32) , 0x51L))) != l_130)) == p_55), (-6L))) > l_179)) != p_54) , (*p_53))) && p_1575->g_96)))), l_181));
            if ((*p_1575->g_120))
                continue;
        }
    }
    l_195 = (l_194[2][4][1] = l_128[0]);
    return p_1575->g_101;
}


/* ------------------------------------------ */
/* 
 * reads : p_1575->g_96 p_1575->g_119
 * writes:
 */
int32_t ** func_56(uint32_t  p_57, uint8_t  p_58, uint64_t  p_59, uint64_t  p_60, struct S2 * p_1575)
{ /* block id: 39 */
    uint32_t l_116 = 0x06E4EE9DL;
    int32_t *l_118 = &p_1575->g_5;
    int32_t **l_117 = &l_118;
    l_116 = p_1575->g_96;
    return p_1575->g_119[6];
}


/* ------------------------------------------ */
/* 
 * reads : p_1575->g_2 p_1575->g_19 p_1575->g_14 p_1575->g_5 p_1575->g_96 p_1575->g_32 p_1575->g_100 p_1575->g_103 p_1575->g_101
 * writes: p_1575->g_96 p_1575->g_98 p_1575->g_100 p_1575->g_103
 */
int16_t  func_64(int8_t  p_65, uint64_t  p_66, int32_t * p_67, struct S2 * p_1575)
{ /* block id: 24 */
    int32_t *l_77 = &p_1575->g_5;
    int32_t **l_76 = &l_77;
    int32_t ***l_75 = &l_76;
    int32_t **l_79 = &l_77;
    int32_t ***l_78[6][3][5] = {{{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79}},{{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79}},{{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79}},{{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79}},{{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79}},{{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79},{&l_79,&l_79,&l_79,&l_79,&l_79}}};
    int32_t **l_80 = &l_77;
    int64_t *l_95 = &p_1575->g_96;
    int64_t *l_97 = &p_1575->g_98;
    uint8_t *l_99 = &p_1575->g_100;
    struct S0 *l_114 = (void*)0;
    int i, j, k;
    l_80 = ((*l_75) = (void*)0);
    if ((0x70EAL > (((*l_99) &= (((*l_97) = (safe_lshift_func_uint8_t_u_s((safe_unary_minus_func_uint64_t_u((((void*)0 == &p_1575->g_74) == 0x7089E30C926164A3L))), (safe_rshift_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s(((*l_95) |= (safe_add_func_uint64_t_u_u(((((((safe_div_func_int16_t_s_s(((((safe_unary_minus_func_uint32_t_u(p_1575->g_2[8][0])) && (safe_mul_func_uint16_t_u_u((1L != 4294967295UL), 0x4A3DL))) <= (~65535UL)) > p_1575->g_19), p_1575->g_14)) , 0x6F66B510L) ^ 0xCF5FC6D3L) , p_1575->g_14) & p_1575->g_5) ^ p_66), (*l_77)))), p_65)) | p_1575->g_32), p_66))))) >= p_65)) < p_66)))
    { /* block id: 30 */
        int16_t l_102 = 6L;
        int32_t l_112 = (-1L);
        int32_t *l_113[9] = {&l_112,&l_112,&l_112,&l_112,&l_112,&l_112,&l_112,&l_112,&l_112};
        int i;
        ++p_1575->g_103[1][6];
        l_112 = (safe_mod_func_uint8_t_u_u(((*l_99)--), (safe_lshift_func_int16_t_s_u(p_1575->g_101, 9))));
        l_113[0] = &p_1575->g_5;
    }
    else
    { /* block id: 35 */
        struct S0 **l_115 = &l_114;
        (*l_115) = l_114;
    }
    return (*l_77);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1576;
    struct S2* p_1575 = &c_1576;
    struct S2 c_1577 = {
        {{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L},{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L},{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L},{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L},{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L},{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L},{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L},{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L},{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L},{0x33992443L,0x33992443L,0x33992443L,0x33992443L,0x33992443L}}, // p_1575->g_2
        0x043C4AB2L, // p_1575->g_3
        (-9L), // p_1575->g_4
        0L, // p_1575->g_5
        1UL, // p_1575->g_12
        0x0A4CL, // p_1575->g_14
        0L, // p_1575->g_19
        3UL, // p_1575->g_20
        0xBD28A218L, // p_1575->g_32
        0x492233FFCD553B78L, // p_1575->g_74
        (-4L), // p_1575->g_96
        0L, // p_1575->g_98
        0xEFL, // p_1575->g_100
        9L, // p_1575->g_101
        {{0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L},{0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L},{0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L},{0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L},{0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L},{0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L},{0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L},{0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L,0xCC60L}}, // p_1575->g_103
        &p_1575->g_5, // p_1575->g_120
        {&p_1575->g_120,&p_1575->g_120,&p_1575->g_120,&p_1575->g_120,&p_1575->g_120,&p_1575->g_120,&p_1575->g_120,&p_1575->g_120,&p_1575->g_120}, // p_1575->g_119
        4L, // p_1575->g_129
        {{{0x3AL,0x57L,0x3AL,0x3AL,0x57L,0x3AL,0x3AL,0x57L},{0x3AL,0x57L,0x3AL,0x3AL,0x57L,0x3AL,0x3AL,0x57L},{0x3AL,0x57L,0x3AL,0x3AL,0x57L,0x3AL,0x3AL,0x57L},{0x3AL,0x57L,0x3AL,0x3AL,0x57L,0x3AL,0x3AL,0x57L}},{{0x3AL,0x57L,0x3AL,0x3AL,0x57L,0x3AL,0x3AL,0x57L},{0x3AL,0x57L,0x3AL,0x3AL,0x57L,0x3AL,0x3AL,0x57L},{0x3AL,0x57L,0x3AL,0x3AL,0x57L,0x3AL,0x3AL,0x57L},{0x3AL,0x57L,0x3AL,0x3AL,0x57L,0x3AL,0x3AL,0x57L}}}, // p_1575->g_176
        (void*)0, // p_1575->g_177
        9L, // p_1575->g_196
        {0x8FD94E12L,0x87180B2D4C4F6F41L,9L}, // p_1575->g_202
        (void*)0, // p_1575->g_203
        {0x36DBL,0xB38BL}, // p_1575->g_210
        0x27F8073236715A55L, // p_1575->g_233
        {{{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL},{0L,65533UL},{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL}},{{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL},{0L,65533UL},{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL}},{{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL},{0L,65533UL},{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL}},{{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL},{0L,65533UL},{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL}},{{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL},{0L,65533UL},{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL}},{{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL},{0L,65533UL},{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL}},{{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL},{0L,65533UL},{0L,65533UL},{0x4A86L,0x90DEL},{-1L,65531UL},{0x4A86L,0x90DEL}}}, // p_1575->g_235
        0xBF4AFC80L, // p_1575->g_261
        1L, // p_1575->g_297
        0x0EC4BC7899AC2D5BL, // p_1575->g_398
        0x6BE8FB2D6D635389L, // p_1575->g_411
        4294967295UL, // p_1575->g_448
        (void*)0, // p_1575->g_547
        &p_1575->g_547, // p_1575->g_546
        {0xB253C095L,0xD384E8F4DB8707F7L,0x1395L}, // p_1575->g_559
        {0x93FA9C15L,0x114B7581DAB8D16FL,0x632EL}, // p_1575->g_560
        {0x8A6764E2L,9UL,1L}, // p_1575->g_561
        {{0xDFC137D9L,18446744073709551615UL,-3L}}, // p_1575->g_562
        {1UL,1UL,0x6D87L}, // p_1575->g_563
        {{4294967292UL,0xC7CC95AACB295E0BL,-1L},{4294967292UL,0xC7CC95AACB295E0BL,-1L},{4294967292UL,0xC7CC95AACB295E0BL,-1L},{4294967292UL,0xC7CC95AACB295E0BL,-1L},{4294967292UL,0xC7CC95AACB295E0BL,-1L},{4294967292UL,0xC7CC95AACB295E0BL,-1L},{4294967292UL,0xC7CC95AACB295E0BL,-1L}}, // p_1575->g_564
        {0xBD24C722L,0x273B22BD367A1B6BL,0x71A6L}, // p_1575->g_565
        {1UL,18446744073709551615UL,5L}, // p_1575->g_566
        {{{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L},{1UL,1UL,-1L},{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L}},{{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L},{1UL,1UL,-1L},{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L}},{{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L},{1UL,1UL,-1L},{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L}},{{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L},{1UL,1UL,-1L},{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L}},{{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L},{1UL,1UL,-1L},{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L}},{{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L},{1UL,1UL,-1L},{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L}},{{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L},{1UL,1UL,-1L},{1UL,1UL,-1L},{0x87C06E09L,0x9735DD92639E9D2CL,0x7BD0L}}}, // p_1575->g_567
        {0xD34C524BL,0xDC43C1D01BAF555EL,4L}, // p_1575->g_568
        {4294967294UL,18446744073709551615UL,0x3CD8L}, // p_1575->g_569
        {{{0xD1CFB70EL,0x2183EE2227062D06L,0x16E7L},{0xD1CFB70EL,0x2183EE2227062D06L,0x16E7L},{0xD1CFB70EL,0x2183EE2227062D06L,0x16E7L},{0xD1CFB70EL,0x2183EE2227062D06L,0x16E7L}},{{0xD1CFB70EL,0x2183EE2227062D06L,0x16E7L},{0xD1CFB70EL,0x2183EE2227062D06L,0x16E7L},{0xD1CFB70EL,0x2183EE2227062D06L,0x16E7L},{0xD1CFB70EL,0x2183EE2227062D06L,0x16E7L}}}, // p_1575->g_570
        {0x396829F8L,18446744073709551612UL,-1L}, // p_1575->g_571
        {{1UL,4UL,0x1368L},{1UL,4UL,0x1368L},{1UL,4UL,0x1368L},{1UL,4UL,0x1368L},{1UL,4UL,0x1368L},{1UL,4UL,0x1368L},{1UL,4UL,0x1368L},{1UL,4UL,0x1368L},{1UL,4UL,0x1368L}}, // p_1575->g_572
        {0UL,18446744073709551610UL,1L}, // p_1575->g_573
        {{0x75609334L,0xCD8414C053C6102AL,0x18B0L},{0x75609334L,0xCD8414C053C6102AL,0x18B0L},{0x75609334L,0xCD8414C053C6102AL,0x18B0L},{0x75609334L,0xCD8414C053C6102AL,0x18B0L},{0x75609334L,0xCD8414C053C6102AL,0x18B0L}}, // p_1575->g_574
        {{0x558D61F0L,8L,8L,0x558D61F0L,0L,4L,4L,0L,0x558D61F0L,8L},{0x558D61F0L,8L,8L,0x558D61F0L,0L,4L,4L,0L,0x558D61F0L,8L},{0x558D61F0L,8L,8L,0x558D61F0L,0L,4L,4L,0L,0x558D61F0L,8L},{0x558D61F0L,8L,8L,0x558D61F0L,0L,4L,4L,0L,0x558D61F0L,8L},{0x558D61F0L,8L,8L,0x558D61F0L,0L,4L,4L,0L,0x558D61F0L,8L}}, // p_1575->g_592
        &p_1575->g_14, // p_1575->g_597
        &p_1575->g_597, // p_1575->g_596
        0x0582208AL, // p_1575->g_622
        0x70L, // p_1575->g_632
        &p_1575->g_235[6][1].f0, // p_1575->g_658
        &p_1575->g_658, // p_1575->g_657
        &p_1575->g_74, // p_1575->g_775
        {&p_1575->g_775,&p_1575->g_775,&p_1575->g_775,&p_1575->g_775,&p_1575->g_775,&p_1575->g_775,&p_1575->g_775,&p_1575->g_775}, // p_1575->g_774
        0x1C37L, // p_1575->g_816
        {0x57252E4AL,4UL,-5L}, // p_1575->g_819
        (-9L), // p_1575->g_885
        {0xF2283E39L,0x06880D0799F1D923L,1L}, // p_1575->g_911
        0x7D04C1C23241E987L, // p_1575->g_913
        {&p_1575->g_596,&p_1575->g_596,&p_1575->g_596,&p_1575->g_596}, // p_1575->g_925
        {&p_1575->g_592[0][1],&p_1575->g_592[0][1],&p_1575->g_592[0][1],&p_1575->g_592[0][1],&p_1575->g_592[0][1],&p_1575->g_592[0][1],&p_1575->g_592[0][1],&p_1575->g_592[0][1],&p_1575->g_592[0][1]}, // p_1575->g_932
        &p_1575->g_448, // p_1575->g_951
        &p_1575->g_119[7], // p_1575->g_1024
        0x28L, // p_1575->g_1029
        {&p_1575->g_210}, // p_1575->g_1198
        {&p_1575->g_1198[0],&p_1575->g_1198[0]}, // p_1575->g_1197
        (void*)0, // p_1575->g_1199
        {0x45C5L,0x45C5L,0x45C5L,0x45C5L,0x45C5L,0x45C5L,0x45C5L,0x45C5L}, // p_1575->g_1282
        0L, // p_1575->g_1347
        0xF2L, // p_1575->g_1379
        {4294967295UL,18446744073709551615UL,0x649CL}, // p_1575->g_1451
        0x91DF3BFBL, // p_1575->g_1464
        (-1L), // p_1575->g_1468
        (-1L), // p_1575->g_1487
        0x442F1C12L, // p_1575->g_1489
        0x79L, // p_1575->g_1491
        (-1L), // p_1575->g_1494
        (void*)0, // p_1575->g_1518
        &p_1575->g_1518, // p_1575->g_1517
        {&p_1575->g_1517}, // p_1575->g_1516
        &p_1575->g_203, // p_1575->g_1529
        {0xA54CA423L,0x40219AF3C508FD35L,0x5B91L}, // p_1575->g_1540
        &p_1575->g_120, // p_1575->g_1552
        &p_1575->g_96, // p_1575->g_1553
        &p_1575->g_98, // p_1575->g_1565
        &p_1575->g_1565, // p_1575->g_1564
        {&p_1575->g_120,&p_1575->g_120,&p_1575->g_120}, // p_1575->g_1570
        sequence_input[get_global_id(0)], // p_1575->global_0_offset
        sequence_input[get_global_id(1)], // p_1575->global_1_offset
        sequence_input[get_global_id(2)], // p_1575->global_2_offset
        sequence_input[get_local_id(0)], // p_1575->local_0_offset
        sequence_input[get_local_id(1)], // p_1575->local_1_offset
        sequence_input[get_local_id(2)], // p_1575->local_2_offset
        sequence_input[get_group_id(0)], // p_1575->group_0_offset
        sequence_input[get_group_id(1)], // p_1575->group_1_offset
        sequence_input[get_group_id(2)], // p_1575->group_2_offset
    };
    c_1576 = c_1577;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1575);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1575->g_2[i][j], "p_1575->g_2[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1575->g_3, "p_1575->g_3", print_hash_value);
    transparent_crc(p_1575->g_4, "p_1575->g_4", print_hash_value);
    transparent_crc(p_1575->g_5, "p_1575->g_5", print_hash_value);
    transparent_crc(p_1575->g_12, "p_1575->g_12", print_hash_value);
    transparent_crc(p_1575->g_14, "p_1575->g_14", print_hash_value);
    transparent_crc(p_1575->g_19, "p_1575->g_19", print_hash_value);
    transparent_crc(p_1575->g_20, "p_1575->g_20", print_hash_value);
    transparent_crc(p_1575->g_32, "p_1575->g_32", print_hash_value);
    transparent_crc(p_1575->g_74, "p_1575->g_74", print_hash_value);
    transparent_crc(p_1575->g_96, "p_1575->g_96", print_hash_value);
    transparent_crc(p_1575->g_98, "p_1575->g_98", print_hash_value);
    transparent_crc(p_1575->g_100, "p_1575->g_100", print_hash_value);
    transparent_crc(p_1575->g_101, "p_1575->g_101", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1575->g_103[i][j], "p_1575->g_103[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1575->g_129, "p_1575->g_129", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1575->g_176[i][j][k], "p_1575->g_176[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1575->g_196, "p_1575->g_196", print_hash_value);
    transparent_crc(p_1575->g_202.f0, "p_1575->g_202.f0", print_hash_value);
    transparent_crc(p_1575->g_202.f1, "p_1575->g_202.f1", print_hash_value);
    transparent_crc(p_1575->g_202.f2, "p_1575->g_202.f2", print_hash_value);
    transparent_crc(p_1575->g_210.f0, "p_1575->g_210.f0", print_hash_value);
    transparent_crc(p_1575->g_210.f1, "p_1575->g_210.f1", print_hash_value);
    transparent_crc(p_1575->g_233, "p_1575->g_233", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1575->g_235[i][j].f0, "p_1575->g_235[i][j].f0", print_hash_value);
            transparent_crc(p_1575->g_235[i][j].f1, "p_1575->g_235[i][j].f1", print_hash_value);

        }
    }
    transparent_crc(p_1575->g_261, "p_1575->g_261", print_hash_value);
    transparent_crc(p_1575->g_297, "p_1575->g_297", print_hash_value);
    transparent_crc(p_1575->g_398, "p_1575->g_398", print_hash_value);
    transparent_crc(p_1575->g_411, "p_1575->g_411", print_hash_value);
    transparent_crc(p_1575->g_448, "p_1575->g_448", print_hash_value);
    transparent_crc(p_1575->g_559.f0, "p_1575->g_559.f0", print_hash_value);
    transparent_crc(p_1575->g_559.f1, "p_1575->g_559.f1", print_hash_value);
    transparent_crc(p_1575->g_559.f2, "p_1575->g_559.f2", print_hash_value);
    transparent_crc(p_1575->g_560.f0, "p_1575->g_560.f0", print_hash_value);
    transparent_crc(p_1575->g_560.f1, "p_1575->g_560.f1", print_hash_value);
    transparent_crc(p_1575->g_560.f2, "p_1575->g_560.f2", print_hash_value);
    transparent_crc(p_1575->g_561.f0, "p_1575->g_561.f0", print_hash_value);
    transparent_crc(p_1575->g_561.f1, "p_1575->g_561.f1", print_hash_value);
    transparent_crc(p_1575->g_561.f2, "p_1575->g_561.f2", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1575->g_562[i].f0, "p_1575->g_562[i].f0", print_hash_value);
        transparent_crc(p_1575->g_562[i].f1, "p_1575->g_562[i].f1", print_hash_value);
        transparent_crc(p_1575->g_562[i].f2, "p_1575->g_562[i].f2", print_hash_value);

    }
    transparent_crc(p_1575->g_563.f0, "p_1575->g_563.f0", print_hash_value);
    transparent_crc(p_1575->g_563.f1, "p_1575->g_563.f1", print_hash_value);
    transparent_crc(p_1575->g_563.f2, "p_1575->g_563.f2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1575->g_564[i].f0, "p_1575->g_564[i].f0", print_hash_value);
        transparent_crc(p_1575->g_564[i].f1, "p_1575->g_564[i].f1", print_hash_value);
        transparent_crc(p_1575->g_564[i].f2, "p_1575->g_564[i].f2", print_hash_value);

    }
    transparent_crc(p_1575->g_565.f0, "p_1575->g_565.f0", print_hash_value);
    transparent_crc(p_1575->g_565.f1, "p_1575->g_565.f1", print_hash_value);
    transparent_crc(p_1575->g_565.f2, "p_1575->g_565.f2", print_hash_value);
    transparent_crc(p_1575->g_566.f0, "p_1575->g_566.f0", print_hash_value);
    transparent_crc(p_1575->g_566.f1, "p_1575->g_566.f1", print_hash_value);
    transparent_crc(p_1575->g_566.f2, "p_1575->g_566.f2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1575->g_567[i][j].f0, "p_1575->g_567[i][j].f0", print_hash_value);
            transparent_crc(p_1575->g_567[i][j].f1, "p_1575->g_567[i][j].f1", print_hash_value);
            transparent_crc(p_1575->g_567[i][j].f2, "p_1575->g_567[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_1575->g_568.f0, "p_1575->g_568.f0", print_hash_value);
    transparent_crc(p_1575->g_568.f1, "p_1575->g_568.f1", print_hash_value);
    transparent_crc(p_1575->g_568.f2, "p_1575->g_568.f2", print_hash_value);
    transparent_crc(p_1575->g_569.f0, "p_1575->g_569.f0", print_hash_value);
    transparent_crc(p_1575->g_569.f1, "p_1575->g_569.f1", print_hash_value);
    transparent_crc(p_1575->g_569.f2, "p_1575->g_569.f2", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1575->g_570[i][j].f0, "p_1575->g_570[i][j].f0", print_hash_value);
            transparent_crc(p_1575->g_570[i][j].f1, "p_1575->g_570[i][j].f1", print_hash_value);
            transparent_crc(p_1575->g_570[i][j].f2, "p_1575->g_570[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_1575->g_571.f0, "p_1575->g_571.f0", print_hash_value);
    transparent_crc(p_1575->g_571.f1, "p_1575->g_571.f1", print_hash_value);
    transparent_crc(p_1575->g_571.f2, "p_1575->g_571.f2", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1575->g_572[i].f0, "p_1575->g_572[i].f0", print_hash_value);
        transparent_crc(p_1575->g_572[i].f1, "p_1575->g_572[i].f1", print_hash_value);
        transparent_crc(p_1575->g_572[i].f2, "p_1575->g_572[i].f2", print_hash_value);

    }
    transparent_crc(p_1575->g_573.f0, "p_1575->g_573.f0", print_hash_value);
    transparent_crc(p_1575->g_573.f1, "p_1575->g_573.f1", print_hash_value);
    transparent_crc(p_1575->g_573.f2, "p_1575->g_573.f2", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1575->g_574[i].f0, "p_1575->g_574[i].f0", print_hash_value);
        transparent_crc(p_1575->g_574[i].f1, "p_1575->g_574[i].f1", print_hash_value);
        transparent_crc(p_1575->g_574[i].f2, "p_1575->g_574[i].f2", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1575->g_592[i][j], "p_1575->g_592[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1575->g_622, "p_1575->g_622", print_hash_value);
    transparent_crc(p_1575->g_632, "p_1575->g_632", print_hash_value);
    transparent_crc(p_1575->g_816, "p_1575->g_816", print_hash_value);
    transparent_crc(p_1575->g_819.f0, "p_1575->g_819.f0", print_hash_value);
    transparent_crc(p_1575->g_819.f1, "p_1575->g_819.f1", print_hash_value);
    transparent_crc(p_1575->g_819.f2, "p_1575->g_819.f2", print_hash_value);
    transparent_crc(p_1575->g_885, "p_1575->g_885", print_hash_value);
    transparent_crc(p_1575->g_911.f0, "p_1575->g_911.f0", print_hash_value);
    transparent_crc(p_1575->g_911.f1, "p_1575->g_911.f1", print_hash_value);
    transparent_crc(p_1575->g_911.f2, "p_1575->g_911.f2", print_hash_value);
    transparent_crc(p_1575->g_913, "p_1575->g_913", print_hash_value);
    transparent_crc(p_1575->g_1029, "p_1575->g_1029", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1575->g_1282[i], "p_1575->g_1282[i]", print_hash_value);

    }
    transparent_crc(p_1575->g_1347, "p_1575->g_1347", print_hash_value);
    transparent_crc(p_1575->g_1379, "p_1575->g_1379", print_hash_value);
    transparent_crc(p_1575->g_1451.f0, "p_1575->g_1451.f0", print_hash_value);
    transparent_crc(p_1575->g_1451.f1, "p_1575->g_1451.f1", print_hash_value);
    transparent_crc(p_1575->g_1451.f2, "p_1575->g_1451.f2", print_hash_value);
    transparent_crc(p_1575->g_1464, "p_1575->g_1464", print_hash_value);
    transparent_crc(p_1575->g_1468, "p_1575->g_1468", print_hash_value);
    transparent_crc(p_1575->g_1487, "p_1575->g_1487", print_hash_value);
    transparent_crc(p_1575->g_1489, "p_1575->g_1489", print_hash_value);
    transparent_crc(p_1575->g_1491, "p_1575->g_1491", print_hash_value);
    transparent_crc(p_1575->g_1494, "p_1575->g_1494", print_hash_value);
    transparent_crc(p_1575->g_1540.f0, "p_1575->g_1540.f0", print_hash_value);
    transparent_crc(p_1575->g_1540.f1, "p_1575->g_1540.f1", print_hash_value);
    transparent_crc(p_1575->g_1540.f2, "p_1575->g_1540.f2", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
