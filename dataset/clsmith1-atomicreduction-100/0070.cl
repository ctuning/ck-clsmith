// ---atomic_reductions ---fake_divergence -g 82,76,1 -l 1,76,1
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
struct S0 {
   volatile int64_t  f0;
};

union U1 {
   int8_t  f0;
   int8_t  f1;
   volatile int32_t  f2;
};

union U2 {
   int8_t  f0;
};

union U3 {
   struct S0  f0;
};

struct S4 {
    uint16_t g_22[10][5][5];
    int64_t g_30;
    uint32_t g_33[4][9][3];
    volatile uint64_t g_40[10];
    union U2 g_48;
    int32_t g_84;
    int32_t *g_95[7];
    union U1 g_98;
    uint64_t g_109;
    int8_t g_125;
    int32_t g_128[1][2];
    uint64_t g_144;
    uint64_t *g_143;
    union U1 g_164;
    union U1 * volatile g_163;
    union U1 * volatile *g_162;
    int32_t g_169;
    int16_t g_188[2][1][5];
    int16_t g_191;
    uint8_t g_193;
    union U2 *g_257;
    union U2 **g_256;
    int32_t g_283;
    int32_t g_313;
    union U1 g_316[3];
    volatile uint16_t g_360;
    volatile uint16_t g_361;
    volatile uint16_t *g_359[9];
    int64_t * volatile *g_400;
    int64_t * volatile **g_399;
    uint64_t g_492;
    int8_t g_533;
    int32_t g_536;
    union U3 g_540;
    union U3 g_551[10];
    union U3 g_606;
    union U3 g_607;
    union U3 g_608;
    union U3 g_624;
    union U3 g_626;
    union U3 *g_625[6];
    uint8_t g_627[4][10][2];
    volatile union U1 g_695;
    volatile union U1 g_696[4];
    volatile union U1 *g_694[6];
    int32_t g_818;
    uint64_t g_832;
    union U1 g_861;
    uint32_t g_873;
    int64_t *g_914;
    int64_t **g_913[1][4][6];
    int64_t ***g_912;
    uint16_t g_917;
    int32_t g_958;
    union U3 g_1019;
    union U3 g_1021;
    union U3 *g_1020;
    int64_t g_1033[9];
    struct S0 *g_1083[10][6];
    struct S0 ** volatile g_1082[7];
    int32_t * volatile g_1108[7];
    int32_t * volatile g_1109;
    int32_t * volatile g_1110;
    struct S0 g_1128[4][8];
    volatile int8_t * volatile g_1137;
    volatile int8_t * volatile * volatile g_1136;
    int32_t * volatile g_1149;
    int32_t * volatile g_1153;
    int32_t * volatile g_1154;
    int32_t ** volatile g_1156;
    volatile struct S0 g_1159;
    int32_t *g_1189;
    int32_t **g_1188;
    int32_t *** volatile g_1187;
    volatile uint8_t g_1205;
    int32_t ** volatile g_1223;
    volatile struct S0 g_1224;
    volatile struct S0 g_1225;
    int32_t * volatile g_1228;
    volatile union U1 g_1243[6][9][4];
    int16_t g_1257;
    uint32_t g_1264;
    struct S0 g_1282;
    int8_t g_1325;
    uint32_t g_1333;
    int32_t g_1339[7][3][6];
    uint32_t g_1340;
    volatile uint64_t g_1352[10][2];
    volatile uint64_t *g_1351;
    volatile uint64_t * volatile *g_1350;
    volatile struct S0 g_1355;
    volatile struct S0 * volatile g_1356;
    uint32_t *g_1378[6];
    uint32_t **g_1377;
    uint32_t **g_1379;
    volatile union U3 g_1382;
    struct S0 g_1389;
    struct S0 * volatile g_1390[9][9];
    int32_t **g_1396;
    int32_t ***g_1395;
    int32_t **** volatile g_1394;
    volatile struct S0 g_1417;
    volatile int64_t g_1425;
    volatile int64_t *g_1424;
    volatile int64_t * volatile *g_1423;
    volatile int64_t * volatile **g_1422;
    volatile union U3 g_1433;
    volatile uint32_t g_1441;
    volatile struct S0 g_1444;
    volatile union U3 g_1457[2];
    struct S0 ** volatile g_1467;
    struct S0 ** volatile g_1468;
    struct S0 ** volatile g_1469;
    int32_t *g_1476;
    int32_t ** volatile g_1475[4];
    int32_t ** volatile g_1477;
    volatile union U3 g_1562;
    union U3 g_1586;
    union U3 g_1595;
    union U1 g_1615[8][3];
    volatile union U3 g_1625;
    uint64_t *g_1633;
    volatile union U3 g_1642[6][1];
    union U3 **g_1666;
    int32_t * volatile g_1716;
    int8_t *g_1739;
    volatile union U1 g_1776;
    volatile union U1 g_1797;
    volatile int32_t g_1835;
    struct S0 g_1860;
    uint64_t *g_1929;
    uint8_t g_1956;
    int32_t * volatile g_1960;
    int16_t **g_2008;
    int16_t *** volatile g_2007[6][2];
    struct S0 g_2025;
    volatile struct S0 g_2026[10][6][4];
    volatile uint32_t g_2034;
    volatile int8_t g_2038[10][9];
    union U3 g_2044;
    volatile union U3 g_2110;
    uint32_t g_2111;
    struct S0 g_2112;
    struct S0 g_2115;
    volatile struct S0 g_2153[10];
    volatile struct S0 g_2159[1];
    volatile struct S0 * volatile g_2160;
    int8_t g_2161;
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
int16_t  func_1(struct S4 * p_2162);
int16_t  func_3(union U2  p_4, int32_t  p_5, int64_t  p_6, int16_t  p_7, struct S4 * p_2162);
union U2  func_8(uint32_t  p_9, int32_t  p_10, struct S4 * p_2162);
uint8_t  func_16(int64_t  p_17, int64_t  p_18, int32_t  p_19, struct S4 * p_2162);
union U3  func_20(int32_t  p_21, struct S4 * p_2162);
int32_t  func_23(int64_t  p_24, uint64_t  p_25, uint32_t  p_26, uint16_t  p_27, struct S4 * p_2162);
int32_t  func_36(uint64_t  p_37, uint32_t  p_38, int32_t  p_39, struct S4 * p_2162);
int8_t  func_43(union U2  p_44, uint32_t  p_45, int16_t  p_46, uint32_t * p_47, struct S4 * p_2162);
int64_t  func_49(union U2  p_50, struct S4 * p_2162);
union U2  func_51(int32_t  p_52, uint64_t  p_53, int64_t * p_54, int64_t  p_55, struct S4 * p_2162);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2162->g_22 p_2162->g_256 p_2162->g_257 p_2162->g_143 p_2162->g_144 p_2162->g_1325 p_2162->g_873 p_2162->g_360 p_2162->g_1333 p_2162->g_109 p_2162->g_283 p_2162->g_1149 p_2162->g_313 p_2162->g_1264 p_2162->g_1137 p_2162->g_695.f0 p_2162->g_1350 p_2162->g_917 p_2162->g_128 p_2162->g_1355 p_2162->g_1356 p_2162->g_1154 p_2162->g_169 p_2162->g_1389 p_2162->g_1394 p_2162->g_958 p_2162->g_84 p_2162->g_1382 p_2162->g_48.f0 p_2162->g_1340 p_2162->g_1188 p_2162->g_1189 p_2162->g_1417 p_2162->g_48 p_2162->g_1422 p_2162->g_1433 p_2162->g_1441 p_2162->g_1159 p_2162->g_1110 p_2162->g_1136 p_2162->g_1156 p_2162->g_95 p_2162->g_1395 p_2162->g_1396 p_2162->g_1476 p_2162->g_193 p_2162->g_33 p_2162->g_861.f0 p_2162->g_1562 p_2162->g_1586 p_2162->g_1595 p_2162->g_832 p_2162->g_1615 p_2162->g_125 p_2162->g_1625 p_2162->g_1642 p_2162->g_912 p_2162->g_1228 p_2162->g_188 p_2162->g_625 p_2162->g_626 p_2162->g_1633 p_2162->g_627 p_2162->g_191 p_2162->g_1716 p_2162->g_1033 p_2162->g_536 p_2162->g_98.f0 p_2162->g_164.f0 p_2162->g_1339 p_2162->g_1776 p_2162->g_1797 p_2162->g_1835 p_2162->g_1860 p_2162->g_551.f0.f0 p_2162->g_913 p_2162->g_1423 p_2162->g_40 p_2162->g_98.f1 p_2162->g_1739 p_2162->g_533 p_2162->g_2110 p_2162->g_2111 p_2162->g_2112 p_2162->g_1477 p_2162->g_492 p_2162->g_2159 p_2162->g_2160 p_2162->g_2161
 * writes: p_2162->g_30 p_2162->g_33 p_2162->g_144 p_2162->g_873 p_2162->g_1333 p_2162->g_84 p_2162->g_128 p_2162->g_1339 p_2162->g_1340 p_2162->g_98.f0 p_2162->g_1264 p_2162->g_917 p_2162->g_1159 p_2162->g_191 p_2162->g_125 p_2162->g_257 p_2162->g_1021.f0 p_2162->g_22 p_2162->g_1377 p_2162->g_1379 p_2162->g_958 p_2162->g_1441 p_2162->g_1444 p_2162->g_861.f1 p_2162->g_95 p_2162->g_861.f0 p_2162->g_1257 p_2162->g_188 p_2162->g_1633 p_2162->g_913 p_2162->g_98.f1 p_2162->g_627 p_2162->g_169 p_2162->g_1666 p_2162->g_193 p_2162->g_832 p_2162->g_109 p_2162->g_1396 p_2162->g_492 p_2162->g_1739 p_2162->g_1423 p_2162->g_1776.f1 p_2162->g_694 p_2162->g_1325 p_2162->g_533 p_2162->g_2115 p_2162->g_1188 p_2162->g_2153 p_2162->g_2026
 */
int16_t  func_1(struct S4 * p_2162)
{ /* block id: 4 */
    uint32_t l_11[8][9] = {{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL},{4UL,0x68819570L,0x68819570L,4UL,0x4B9A733EL,0x8BFFBEFAL,0x8BFFBEFAL,0x4B9A733EL,4UL}};
    int32_t l_12 = (-1L);
    uint32_t l_13 = 1UL;
    uint32_t *l_1904 = (void*)0;
    uint32_t *l_1905 = &p_2162->g_1340;
    int32_t *l_2154 = (void*)0;
    int32_t l_2155 = 9L;
    int i, j;
    l_2155 |= (safe_unary_minus_func_int16_t_s(func_3(func_8((l_12 = l_11[3][3]), ((l_13 , 0x67L) & (((l_11[3][3] , 0L) , ((*l_1905) = (safe_mul_func_uint8_t_u_u(func_16(((func_20(p_2162->g_22[4][2][0], p_2162) , l_13) || (safe_rshift_func_int8_t_s_s((*p_2162->g_1137), l_11[4][8]))), l_11[6][8], p_2162->g_832, p_2162), p_2162->g_1033[4])))) , 0x55L)), p_2162), l_11[3][3], l_11[3][3], l_13, p_2162)));
    for (p_2162->g_1325 = 0; (p_2162->g_1325 < 25); p_2162->g_1325 = safe_add_func_uint32_t_u_u(p_2162->g_1325, 5))
    { /* block id: 1062 */
        for (p_2162->g_98.f0 = 9; (p_2162->g_98.f0 >= 0); p_2162->g_98.f0 -= 1)
        { /* block id: 1065 */
            int32_t *l_2158 = &p_2162->g_169;
            (**p_2162->g_1395) = (**p_2162->g_1395);
            l_2158 = &l_2155;
        }
    }
    (*p_2162->g_2160) = p_2162->g_2159[0];
    l_2154 = &l_2155;
    return p_2162->g_2161;
}


/* ------------------------------------------ */
/* 
 * reads : p_2162->g_1633 p_2162->g_832 p_2162->g_109 p_2162->g_1739 p_2162->g_1325 p_2162->g_533 p_2162->g_2110 p_2162->g_2111 p_2162->g_33 p_2162->g_1476 p_2162->g_128 p_2162->g_2112 p_2162->g_1477 p_2162->g_169 p_2162->g_492 p_2162->g_1356 p_2162->g_1159
 * writes: p_2162->g_1325 p_2162->g_533 p_2162->g_128 p_2162->g_2115 p_2162->g_1188 p_2162->g_33 p_2162->g_2153
 */
int16_t  func_3(union U2  p_4, int32_t  p_5, int64_t  p_6, int16_t  p_7, struct S4 * p_2162)
{ /* block id: 1049 */
    int8_t l_2097 = 1L;
    union U2 ***l_2103 = (void*)0;
    union U2 ****l_2102 = &l_2103;
    struct S0 *l_2113 = (void*)0;
    struct S0 *l_2114[3][5] = {{&p_2162->g_606.f0,&p_2162->g_606.f0,&p_2162->g_608.f0,&p_2162->g_608.f0,(void*)0},{&p_2162->g_606.f0,&p_2162->g_606.f0,&p_2162->g_608.f0,&p_2162->g_608.f0,(void*)0},{&p_2162->g_606.f0,&p_2162->g_606.f0,&p_2162->g_608.f0,&p_2162->g_608.f0,(void*)0}};
    int32_t l_2124 = 0x139FF2ADL;
    uint64_t **l_2127 = &p_2162->g_1633;
    int32_t **l_2130 = (void*)0;
    int32_t ***l_2131[3][2][2];
    uint32_t *l_2134[1][1][6] = {{{&p_2162->g_33[3][4][1],(void*)0,&p_2162->g_33[3][4][1],&p_2162->g_33[3][4][1],(void*)0,&p_2162->g_33[3][4][1]}}};
    int32_t l_2135[3][3] = {{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}};
    int16_t l_2136 = 0L;
    uint32_t l_2151 = 0xC41A2DBAL;
    int32_t l_2152 = (-8L);
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
                l_2131[i][j][k] = (void*)0;
        }
    }
    (*p_2162->g_1476) |= ((((*p_2162->g_1633) , l_2097) ^ (safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u(((0x75C30DC2L & (((*l_2102) = &p_2162->g_256) != &p_2162->g_256)) > ((((*p_2162->g_1739) |= ((void*)0 == &p_2162->g_917)) ^ (safe_rshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(((p_2162->g_2110 , ((p_5 , 18446744073709551615UL) <= p_5)) || 0xF281L), p_6)), l_2097)), l_2097))) || l_2097)), p_2162->g_2111)), (-10L)))) >= p_2162->g_33[1][3][0]);
    p_2162->g_2115 = p_2162->g_2112;
    p_2162->g_2153[3] = ((safe_div_func_uint8_t_u_u((((safe_add_func_uint32_t_u_u((!(safe_sub_func_uint8_t_u_u((((safe_add_func_int32_t_s_s((l_2124 = (**p_2162->g_1477)), (safe_rshift_func_uint8_t_u_u(((l_2127 == &p_2162->g_1633) > (((l_2097 , (((safe_mul_func_int16_t_s_s((((((l_2130 != (p_2162->g_1188 = l_2130)) < (safe_rshift_func_int8_t_s_s(((+((FAKE_DIVERGE(p_2162->group_0_offset, get_group_id(0), 10) , (((p_2162->g_33[1][2][1]--) , p_2162->g_33[1][2][1]) > (safe_add_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s((safe_add_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((l_2136 >= (safe_rshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((l_2097 <= 0x78L), p_2162->g_169)), 0))), p_4.f0)), 65535UL)), (*p_2162->g_1739))) < p_2162->g_492), p_7)))) ^ 0x4EC1164AL)) < 0x79L), 2))) , p_6) | p_6) && 18446744073709551607UL), l_2151)) > l_2151) , 4294967295UL)) ^ l_2135[2][2]) <= 0xEBE0L)), l_2152)))) != 0UL) < p_4.f0), (*p_2162->g_1739)))), p_6)) > 0x26852D1DL) == l_2135[2][2]), FAKE_DIVERGE(p_2162->group_0_offset, get_group_id(0), 10))) , (*p_2162->g_1356));
    return p_4.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_2162->g_98.f1
 * writes: p_2162->g_1776.f1 p_2162->g_694 p_2162->g_98.f1
 */
union U2  func_8(uint32_t  p_9, int32_t  p_10, struct S4 * p_2162)
{ /* block id: 948 */
    int32_t l_1918 = (-1L);
    int32_t l_1949 = (-1L);
    int32_t *l_1958 = &p_2162->g_128[0][0];
    int32_t l_2013 = 0x5044EF07L;
    int32_t l_2014 = (-6L);
    uint64_t **l_2065 = &p_2162->g_1929;
    uint64_t ***l_2064 = &l_2065;
    union U2 l_2096 = {-1L};
    for (p_2162->g_1776.f1 = 0; p_2162->g_1776.f1 < 6; p_2162->g_1776.f1 += 1)
    {
        p_2162->g_694[p_2162->g_1776.f1] = &p_2162->g_1797;
    }
    for (p_2162->g_98.f1 = 0; (p_2162->g_98.f1 > 21); ++p_2162->g_98.f1)
    { /* block id: 952 */
        uint64_t *l_1926 = &p_2162->g_492;
        union U2 **l_1930 = &p_2162->g_257;
        int32_t l_1946 = 0x5DA95717L;
        uint8_t l_1947[9][7][3] = {{{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL}},{{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL}},{{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL}},{{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL}},{{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL}},{{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL}},{{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL}},{{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL}},{{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL},{247UL,2UL,2UL}}};
        uint8_t l_1959[8][7] = {{255UL,1UL,255UL,4UL,4UL,255UL,4UL},{255UL,1UL,255UL,4UL,4UL,255UL,4UL},{255UL,1UL,255UL,4UL,4UL,255UL,4UL},{255UL,1UL,255UL,4UL,4UL,255UL,4UL},{255UL,1UL,255UL,4UL,4UL,255UL,4UL},{255UL,1UL,255UL,4UL,4UL,255UL,4UL},{255UL,1UL,255UL,4UL,4UL,255UL,4UL},{255UL,1UL,255UL,4UL,4UL,255UL,4UL}};
        union U3 *l_2003 = &p_2162->g_540;
        uint32_t l_2009 = 0x679F7867L;
        int32_t l_2015[6];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_2015[i] = (-7L);
        (1 + 1);
    }
    return l_2096;
}


/* ------------------------------------------ */
/* 
 * reads : p_2162->g_1333 p_2162->g_1615 p_2162->g_1476 p_2162->g_125 p_2162->g_1136 p_2162->g_1137 p_2162->g_695.f0 p_2162->g_143 p_2162->g_144 p_2162->g_1625 p_2162->g_128 p_2162->g_193 p_2162->g_1642 p_2162->g_912 p_2162->g_169 p_2162->g_95 p_2162->g_1396 p_2162->g_1228 p_2162->g_188 p_2162->g_625 p_2162->g_626 p_2162->g_1633 p_2162->g_832 p_2162->g_109 p_2162->g_627 p_2162->g_958 p_2162->g_1340 p_2162->g_1394 p_2162->g_1395 p_2162->g_191 p_2162->g_1716 p_2162->g_84 p_2162->g_1033 p_2162->g_1355.f0 p_2162->g_1325 p_2162->g_536 p_2162->g_98.f0 p_2162->g_164.f0 p_2162->g_360 p_2162->g_917 p_2162->g_1159.f0 p_2162->g_1339 p_2162->g_873 p_2162->g_1776 p_2162->g_1417.f0 p_2162->g_1797 p_2162->g_22 p_2162->g_1835 p_2162->g_313 p_2162->g_1860 p_2162->g_551.f0.f0 p_2162->g_913 p_2162->g_256 p_2162->g_257 p_2162->g_1110 p_2162->g_1422 p_2162->g_1423 p_2162->g_40
 * writes: p_2162->g_1333 p_2162->g_128 p_2162->g_125 p_2162->g_144 p_2162->g_1633 p_2162->g_913 p_2162->g_98.f1 p_2162->g_627 p_2162->g_169 p_2162->g_95 p_2162->g_98.f0 p_2162->g_1666 p_2162->g_193 p_2162->g_832 p_2162->g_109 p_2162->g_1396 p_2162->g_492 p_2162->g_191 p_2162->g_84 p_2162->g_1739 p_2162->g_22 p_2162->g_873 p_2162->g_917 p_2162->g_1257 p_2162->g_188 p_2162->g_257 p_2162->g_1423
 */
uint8_t  func_16(int64_t  p_17, int64_t  p_18, int32_t  p_19, struct S4 * p_2162)
{ /* block id: 791 */
    int8_t l_1602 = 0x1BL;
    int32_t l_1605 = (-1L);
    uint32_t *l_1606 = (void*)0;
    uint32_t *l_1607 = &p_2162->g_1333;
    uint32_t *l_1610[4];
    int32_t l_1616[6] = {1L,0x2935980DL,1L,1L,0x2935980DL,1L};
    int32_t **l_1617 = &p_2162->g_95[6];
    uint64_t l_1631 = 18446744073709551609UL;
    union U3 **l_1663 = &p_2162->g_625[0];
    union U2 l_1667 = {0x00L};
    uint8_t *l_1668 = &p_2162->g_193;
    uint64_t l_1744 = 0x9659C601625A9C9AL;
    uint16_t l_1745 = 0x9A3BL;
    int32_t ***l_1752 = &p_2162->g_1188;
    int64_t l_1753 = 0L;
    int32_t *l_1769 = &p_2162->g_1339[5][2][5];
    union U2 ***l_1807[8] = {&p_2162->g_256,(void*)0,&p_2162->g_256,&p_2162->g_256,(void*)0,&p_2162->g_256,&p_2162->g_256,(void*)0};
    int i;
    for (i = 0; i < 4; i++)
        l_1610[i] = &p_2162->g_873;
    (*p_2162->g_1476) = (safe_mul_func_int8_t_s_s((GROUP_DIVERGE(0, 1) == (safe_rshift_func_uint16_t_u_u(((1UL & l_1602) == ((l_1602 & (((++(*l_1607)) > (l_1605 |= p_19)) != GROUP_DIVERGE(1, 1))) > ((((l_1616[1] = ((65535UL < (((!1L) != p_19) , (safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u(((!l_1602) | ((GROUP_DIVERGE(1, 1) | (p_2162->g_1615[3][1] , GROUP_DIVERGE(0, 1))) > 0x357E8FABL)), 3)), p_18)))) && 1L)) , (void*)0) != l_1617) < 0UL))), GROUP_DIVERGE(0, 1)))), p_18));
    for (p_2162->g_125 = 2; (p_2162->g_125 == 4); p_2162->g_125 = safe_add_func_uint32_t_u_u(p_2162->g_125, 6))
    { /* block id: 798 */
        uint16_t l_1620[1][2];
        uint64_t *l_1627 = &p_2162->g_492;
        uint64_t **l_1626 = &l_1627;
        int32_t **l_1703 = &p_2162->g_1476;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
                l_1620[i][j] = 6UL;
        }
        if (((l_1605 |= ((*l_1607) |= l_1620[0][0])) && ((safe_rshift_func_int8_t_s_s((**p_2162->g_1136), 7)) ^ ((*p_2162->g_143) = (*p_2162->g_143)))))
        { /* block id: 802 */
            uint64_t *l_1632 = &p_2162->g_109;
            int32_t l_1643[1][4];
            int64_t **l_1644 = &p_2162->g_914;
            int64_t **l_1646 = &p_2162->g_914;
            int64_t ***l_1645 = &l_1646;
            int8_t *l_1647 = &p_2162->g_98.f1;
            uint16_t l_1658 = 0x5304L;
            int32_t *l_1659 = &p_2162->g_169;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 4; j++)
                    l_1643[i][j] = 1L;
            }
            if (((*p_2162->g_1476) = ((safe_mul_func_int16_t_s_s((((p_2162->g_1625 , l_1626) != (void*)0) >= (((p_2162->g_128[0][0] > 6UL) >= (safe_unary_minus_func_uint64_t_u(((*p_2162->g_143) = (safe_lshift_func_uint8_t_u_s(l_1631, 1)))))) | ((FAKE_DIVERGE(p_2162->local_1_offset, get_local_id(1), 10) || p_18) & ((p_2162->g_1633 = l_1632) == &p_2162->g_832)))), p_2162->g_193)) <= 0x466240E9L)))
            { /* block id: 806 */
                for (p_2162->g_144 = (-17); (p_2162->g_144 > 36); ++p_2162->g_144)
                { /* block id: 809 */
                    uint64_t l_1636 = 0x485AA71D468D853DL;
                    --l_1636;
                    if (p_18)
                        break;
                }
                for (p_2162->g_144 = 0; (p_2162->g_144 < 42); p_2162->g_144 = safe_add_func_int8_t_s_s(p_2162->g_144, 9))
                { /* block id: 815 */
                    (*p_2162->g_1476) &= p_19;
                    if (p_19)
                        continue;
                    return p_19;
                }
            }
            else
            { /* block id: 820 */
                int32_t l_1641 = 0x30F62A06L;
                if (l_1641)
                    break;
                return l_1641;
            }
            (*l_1659) &= (((p_2162->g_1642[4][0] , l_1643[0][1]) || (((*l_1647) = (((*p_2162->g_912) = l_1644) != ((*l_1645) = l_1644))) || (safe_add_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((p_19 > 0xCBFF91C7BB4185C6L), 0x2A6445C6L)), 0x20L)), ((((*p_2162->g_1476) = (safe_rshift_func_uint8_t_u_u((p_2162->g_627[1][4][0] = (l_1643[0][3] < 0xC8E3A82EL)), 6))) > p_18) , 4294967293UL))), l_1643[0][1])))) || l_1658);
        }
        else
        { /* block id: 830 */
            int8_t l_1662 = 1L;
            uint8_t *l_1671 = &p_2162->g_627[2][1][0];
            int32_t l_1676 = 0x121AD60DL;
            uint8_t *l_1689[2][10] = {{&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0]},{&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0],&p_2162->g_627[2][1][0]}};
            uint32_t ***l_1697 = &p_2162->g_1379;
            uint64_t l_1698 = 0x8D6A57454A6205D3L;
            int32_t **l_1704 = &p_2162->g_95[6];
            int16_t *l_1713 = &p_2162->g_191;
            int32_t *l_1714 = (void*)0;
            int32_t *l_1715 = &p_2162->g_169;
            int i, j;
            (*p_2162->g_1396) = (*l_1617);
            if ((*p_2162->g_1228))
                continue;
            for (p_2162->g_98.f0 = 0; (p_2162->g_98.f0 == 26); p_2162->g_98.f0++)
            { /* block id: 835 */
                union U3 ***l_1664 = &l_1663;
                union U3 ***l_1665 = (void*)0;
                uint8_t *l_1670 = &p_2162->g_627[2][1][0];
                uint8_t **l_1669[6] = {&l_1670,&l_1670,&l_1670,&l_1670,&l_1670,&l_1670};
                uint32_t l_1696 = 0x43DFED65L;
                uint16_t *l_1699[3];
                int32_t l_1700 = 0x6A3F9EDDL;
                int32_t *l_1701 = &p_2162->g_169;
                int32_t l_1702 = (-1L);
                int i;
                for (i = 0; i < 3; i++)
                    l_1699[i] = &p_2162->g_917;
                (*p_2162->g_1476) |= l_1662;
                p_2162->g_1666 = ((*l_1664) = l_1663);
                l_1702 = (l_1667 , ((*l_1701) = ((l_1668 == (l_1671 = (void*)0)) > ((((*l_1668)--) ^ p_2162->g_188[1][0][0]) | (l_1700 = ((safe_div_func_int16_t_s_s((((l_1676 ^= p_17) > ((*p_2162->g_1476) |= (safe_mod_func_int16_t_s_s(((***l_1664) , ((((safe_rshift_func_int8_t_s_u(((((safe_sub_func_int16_t_s_s((safe_mul_func_uint64_t_u_u(0UL, (((safe_mul_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u((((((l_1689[1][0] != (((safe_sub_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((((*p_2162->g_1633) ^= p_17) > l_1662), p_2162->g_627[2][1][0])) , l_1696), GROUP_DIVERGE(2, 1))), p_17)) ^ l_1620[0][0]) , (void*)0)) && FAKE_DIVERGE(p_2162->local_0_offset, get_local_id(0), 10)) & p_18) , &p_2162->g_1377) == l_1697), l_1662)) , p_19), (-2L))) && l_1662) == 1L))), 0UL)) < l_1662) > l_1696) , p_19), p_18)) >= p_2162->g_958) ^ 0x3F0DL) & 0x56EFD2BA1F316F18L)), p_19)))) || l_1698), p_2162->g_1340)) , 0x69C3L))))));
            }
            (*l_1715) ^= ((((**l_1663) , ((*p_2162->g_143) &= (((*p_2162->g_1395) = (**p_2162->g_1394)) != (l_1704 = l_1703)))) != (safe_lshift_func_int16_t_s_s(((*l_1713) |= (l_1676 |= ((safe_div_func_int64_t_s_s((((**l_1703) < p_18) , (((**l_1626) = (safe_lshift_func_uint16_t_u_s(p_2162->g_627[2][1][0], (p_18 <= (safe_sub_func_uint16_t_u_u(p_19, p_19)))))) , p_18)), p_19)) | l_1698))), p_18))) ^ 4L);
        }
        (*p_2162->g_1716) ^= (**l_1703);
    }
    for (p_2162->g_84 = 0; (p_2162->g_84 <= 8); p_2162->g_84 += 1)
    { /* block id: 860 */
        uint64_t l_1719 = 0x8FA216FC33FDA2F9L;
        int32_t l_1720 = 0x51E425C6L;
        int32_t l_1729[3];
        int8_t l_1730 = 0x3BL;
        int32_t l_1731 = 0x6E0A8A89L;
        uint32_t l_1732 = 0x87623C29L;
        int8_t *l_1738 = &l_1730;
        int8_t **l_1737[5] = {&l_1738,&l_1738,&l_1738,&l_1738,&l_1738};
        int32_t ***l_1760 = &p_2162->g_1396;
        uint32_t l_1772[6][10][4] = {{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}},{{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL},{0UL,0x08CBFCACL,0x6FF944C4L,4294967295UL}}};
        int16_t l_1893 = 0x78B0L;
        uint8_t l_1901 = 0xBBL;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1729[i] = (-1L);
        (*p_2162->g_1476) = ((safe_mul_func_uint16_t_u_u(((l_1719 = GROUP_DIVERGE(0, 1)) || ((p_2162->g_1033[p_2162->g_84] == ((*l_1607)++)) > (p_2162->g_1355.f0 & p_2162->g_1325))), 1UL)) < (safe_mod_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s((safe_div_func_uint64_t_u_u((((++l_1732) | (*p_2162->g_1476)) == 0x567702DD2C484B16L), ((*p_2162->g_1633) = 18446744073709551607UL))), 13)) | (((safe_div_func_int8_t_s_s((((p_2162->g_1739 = &p_2162->g_1325) != ((safe_div_func_int32_t_s_s((((safe_mod_func_int64_t_s_s(p_18, (*p_2162->g_143))) | l_1744) >= (-2L)), p_17)) , (void*)0)) < l_1729[1]), p_18)) <= p_19) <= l_1720)), p_2162->g_536)));
        if (l_1745)
            break;
        for (p_2162->g_98.f0 = 0; (p_2162->g_98.f0 <= 2); p_2162->g_98.f0 += 1)
        { /* block id: 870 */
            int64_t *l_1770[6] = {&l_1753,&p_2162->g_30,&l_1753,&l_1753,&p_2162->g_30,&l_1753};
            int32_t l_1771 = (-9L);
            uint16_t *l_1773 = &p_2162->g_22[7][2][2];
            uint8_t l_1774 = 0x5AL;
            int i;
            (*p_2162->g_1476) ^= l_1729[p_2162->g_98.f0];
            (*p_2162->g_1476) = ((l_1774 = (FAKE_DIVERGE(p_2162->local_1_offset, get_local_id(1), 10) , (((safe_mul_func_uint8_t_u_u(((((safe_lshift_func_uint16_t_u_u(((*l_1773) = ((((*l_1607) = (+((safe_mul_func_uint8_t_u_u(((l_1752 != (void*)0) ^ l_1753), ((*l_1738) ^= (((p_2162->g_164.f0 , ((((safe_div_func_int8_t_s_s((p_2162->g_360 <= (0L <= ((*p_2162->g_143)--))), ((l_1729[p_2162->g_98.f0] = (l_1760 == &p_2162->g_1396)) ^ (+(!((safe_lshift_func_int8_t_s_u(((~(safe_rshift_func_uint8_t_u_s(((safe_mul_func_uint8_t_u_u((((safe_lshift_func_int8_t_s_s((((((l_1771 = ((void*)0 != l_1769)) , p_2162->g_128[0][1]) || GROUP_DIVERGE(1, 1)) > 0x6B8AL) > FAKE_DIVERGE(p_2162->group_2_offset, get_group_id(2), 10)), p_17)) < FAKE_DIVERGE(p_2162->group_1_offset, get_group_id(1), 10)) < 0xB2L), GROUP_DIVERGE(0, 1))) | l_1772[3][9][2]), 6))) == p_17), 7)) >= l_1772[1][9][3])))))) && 0x53L) >= p_2162->g_917) & 1L)) , l_1729[p_2162->g_98.f0]) != p_18)))) != FAKE_DIVERGE(p_2162->local_1_offset, get_local_id(1), 10)))) | p_19) > p_18)), 7)) >= 0UL) > p_2162->g_1033[1]) != p_17), 1UL)) > p_17) , p_2162->g_1159.f0))) , 0x61D59E32L);
            for (l_1631 = 0; (l_1631 <= 8); l_1631 += 1)
            { /* block id: 882 */
                int i, j, k;
                (*p_2162->g_1476) ^= p_2162->g_1339[(p_2162->g_98.f0 + 3)][p_2162->g_98.f0][p_2162->g_98.f0];
                return p_2162->g_1339[(p_2162->g_98.f0 + 4)][p_2162->g_98.f0][(p_2162->g_98.f0 + 3)];
            }
        }
        if (p_19)
            break;
        for (l_1720 = 0; (l_1720 <= 2); l_1720 += 1)
        { /* block id: 890 */
            uint32_t l_1775 = 0x1BE4152DL;
            int32_t l_1791 = 0x7C461600L;
            int32_t l_1792 = 3L;
            int32_t l_1793 = 0x530EC73FL;
            union U2 l_1798[6][7] = {{{0x2CL},{0L},{0x7EL},{-8L},{0L},{-8L},{0x7EL}},{{0x2CL},{0L},{0x7EL},{-8L},{0L},{-8L},{0x7EL}},{{0x2CL},{0L},{0x7EL},{-8L},{0L},{-8L},{0x7EL}},{{0x2CL},{0L},{0x7EL},{-8L},{0L},{-8L},{0x7EL}},{{0x2CL},{0L},{0x7EL},{-8L},{0L},{-8L},{0x7EL}},{{0x2CL},{0L},{0x7EL},{-8L},{0L},{-8L},{0x7EL}}};
            int32_t l_1819 = 0x4B0F3098L;
            uint64_t *l_1869 = &p_2162->g_492;
            uint64_t **l_1868 = &l_1869;
            uint64_t ***l_1867[6][2][10] = {{{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868},{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868}},{{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868},{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868}},{{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868},{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868}},{{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868},{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868}},{{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868},{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868}},{{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868},{&l_1868,&l_1868,(void*)0,(void*)0,&l_1868,&l_1868,(void*)0,&l_1868,(void*)0,&l_1868}}};
            int64_t **l_1870[1];
            int32_t l_1895 = 0L;
            int32_t l_1896[2];
            int32_t l_1897 = (-1L);
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1870[i] = (void*)0;
            for (i = 0; i < 2; i++)
                l_1896[i] = (-8L);
            if (l_1775)
            { /* block id: 891 */
                int32_t *l_1777[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_1777[i] = &p_2162->g_818;
                for (p_2162->g_873 = 0; (p_2162->g_873 <= 2); p_2162->g_873 += 1)
                { /* block id: 894 */
                    int i, j, k;
                    if ((0x1F3DB3B2463F6EC9L == (p_2162->g_1776 , p_2162->g_1339[(l_1720 + 3)][p_2162->g_873][(p_2162->g_873 + 3)])))
                    { /* block id: 895 */
                        l_1777[3] = ((**p_2162->g_1395) = (*l_1617));
                        (*p_2162->g_1476) = (p_2162->g_1417.f0 > FAKE_DIVERGE(p_2162->group_0_offset, get_group_id(0), 10));
                    }
                    else
                    { /* block id: 899 */
                        l_1616[1] &= (-1L);
                        if (p_18)
                            continue;
                    }
                }
            }
            else
            { /* block id: 904 */
                int64_t l_1778 = (-3L);
                uint16_t *l_1789[9][8][3] = {{{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0}},{{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0}},{{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0}},{{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0}},{{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0}},{{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0}},{{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0}},{{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0}},{{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0},{&p_2162->g_22[4][2][0],&p_2162->g_917,(void*)0}}};
                int32_t l_1790 = 0x7988F4C2L;
                int32_t l_1794[4][6] = {{0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL},{0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL},{0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL},{0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL,0x5D23D3CBL}};
                uint8_t l_1814 = 8UL;
                int i, j, k;
                if (p_17)
                    break;
                l_1778 = (1UL >= p_18);
                if (((((safe_add_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(l_1778, (safe_sub_func_int32_t_s_s((safe_mod_func_uint16_t_u_u((p_2162->g_917++), ((&p_2162->g_1188 == (void*)0) & (p_2162->g_1797 , 0x2012L)))), (l_1798[5][3] , ((safe_rshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_s((safe_rshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s(((void*)0 != l_1807[1]), (safe_mod_func_int64_t_s_s((((safe_rshift_func_int16_t_s_u(((((safe_mul_func_uint16_t_u_u(p_17, p_2162->g_1333)) != 0x6BL) >= p_2162->g_22[4][2][0]) && (*p_2162->g_143)), 12)) && l_1793) , 1L), (*p_2162->g_143))))), p_18)), 2)), 3)) || p_19)))))), p_2162->g_98.f0)), l_1814)) != 0x201ABF4EL) ^ 65528UL) <= p_18))
                { /* block id: 908 */
                    (*p_2162->g_1476) = p_19;
                }
                else
                { /* block id: 910 */
                    int16_t *l_1827 = (void*)0;
                    int16_t *l_1828 = &p_2162->g_1257;
                    int32_t l_1836 = 0x18625130L;
                    l_1836 |= ((((+(p_19 <= (safe_mod_func_int16_t_s_s(p_19, (((0L > (safe_mod_func_int8_t_s_s(l_1819, GROUP_DIVERGE(1, 1)))) && (safe_mul_func_int16_t_s_s(p_17, 0x0320L))) || (l_1794[1][4] || (safe_lshift_func_int16_t_s_s((((safe_add_func_int16_t_s_s(((*l_1828) = (safe_unary_minus_func_int64_t_s(l_1778))), (p_2162->g_22[5][2][1]--))) || (safe_add_func_int16_t_s_s((((((safe_add_func_uint32_t_u_u(p_17, l_1814)) > 0x7119D02EL) , l_1790) || l_1814) ^ l_1819), (-3L)))) < p_2162->g_1835), 12)))))))) == p_18) > p_2162->g_313) & l_1814);
                }
            }
            for (p_2162->g_191 = 0; (p_2162->g_191 <= 2); p_2162->g_191 += 1)
            { /* block id: 918 */
                int16_t *l_1841 = &p_2162->g_188[1][0][4];
                uint64_t *l_1863 = &p_2162->g_492;
                uint64_t **l_1862 = &l_1863;
                uint64_t ***l_1861[1];
                uint64_t ****l_1864 = &l_1861[0];
                uint64_t ***l_1866 = &l_1862;
                uint64_t ****l_1865 = &l_1866;
                int32_t *l_1871 = &l_1605;
                int32_t l_1874[9] = {7L,7L,7L,7L,7L,7L,7L,7L,7L};
                int32_t *l_1890 = &l_1605;
                int32_t *l_1891 = (void*)0;
                int32_t *l_1892[2];
                int64_t l_1894[7] = {(-4L),(-1L),(-4L),(-4L),(-1L),(-4L),(-4L)};
                uint32_t l_1898 = 0UL;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_1861[i] = &l_1862;
                for (i = 0; i < 2; i++)
                    l_1892[i] = &l_1874[5];
                if (((safe_mod_func_uint8_t_u_u(((((((safe_rshift_func_int16_t_s_s(p_2162->g_1339[(p_2162->g_191 + 3)][l_1720][(p_2162->g_191 + 3)], ((*l_1841) &= p_2162->g_1339[(p_2162->g_191 + 3)][p_2162->g_191][(p_2162->g_191 + 3)]))) != ((((safe_mod_func_uint64_t_u_u((*p_2162->g_1633), (safe_sub_func_int16_t_s_s((safe_add_func_int64_t_s_s(0x79F4CE80CD67C262L, ((safe_sub_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((p_17 <= GROUP_DIVERGE(2, 1)) || (safe_lshift_func_uint8_t_u_u(((safe_mod_func_uint64_t_u_u((((~p_17) <= (safe_add_func_int32_t_s_s(0L, (safe_add_func_uint64_t_u_u(((((*l_1865) = (p_2162->g_1860 , ((*l_1864) = l_1861[0]))) != l_1867[5][1][1]) ^ p_2162->g_1339[(p_2162->g_191 + 3)][p_2162->g_191][(p_2162->g_191 + 3)]), (*p_2162->g_143)))))) > p_2162->g_1033[5]), p_17)) , 1UL), l_1732))), p_18)), p_17)) & p_18))), p_18)))) > (*p_2162->g_1633)) , p_18) , 0xFA3BFF418C72FB36L)) != 0x69E24873L) && p_2162->g_551[5].f0.f0) , l_1870[0]) == (*p_2162->g_912)), 0xCBL)) , p_19))
                { /* block id: 922 */
                    uint8_t l_1879 = 253UL;
                    (*p_2162->g_256) = (*p_2162->g_256);
                    l_1871 = l_1871;
                    for (p_2162->g_832 = 0; (p_2162->g_832 >= 45); p_2162->g_832++)
                    { /* block id: 927 */
                        int32_t *l_1875 = &l_1616[1];
                        int32_t *l_1876 = &p_2162->g_818;
                        int32_t *l_1877 = (void*)0;
                        int32_t *l_1878[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1878[i] = &p_2162->g_128[0][0];
                        (*l_1871) = (0xB287D73B5968AE01L || p_19);
                        --l_1879;
                    }
                }
                else
                { /* block id: 931 */
                    uint16_t l_1887 = 1UL;
                    for (l_1732 = 22; (l_1732 >= 28); l_1732 = safe_add_func_int64_t_s_s(l_1732, 2))
                    { /* block id: 934 */
                        int32_t *l_1884 = &l_1792;
                        int32_t *l_1885 = &l_1729[1];
                        int32_t *l_1886[6][5][4] = {{{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169}},{{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169}},{{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169}},{{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169}},{{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169}},{{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169},{&p_2162->g_84,&p_2162->g_818,(void*)0,&p_2162->g_169}}};
                        int i, j, k;
                        --l_1887;
                        (*l_1871) |= (*p_2162->g_1110);
                        (*p_2162->g_1422) = (*p_2162->g_1422);
                    }
                    return p_2162->g_40[8];
                }
                l_1898++;
                l_1901++;
            }
        }
    }
    return p_2162->g_125;
}


/* ------------------------------------------ */
/* 
 * reads : p_2162->g_22 p_2162->g_256 p_2162->g_257 p_2162->g_143 p_2162->g_144 p_2162->g_1325 p_2162->g_873 p_2162->g_360 p_2162->g_1333 p_2162->g_109 p_2162->g_283 p_2162->g_1149 p_2162->g_313 p_2162->g_1264 p_2162->g_1137 p_2162->g_695.f0 p_2162->g_1350 p_2162->g_917 p_2162->g_128 p_2162->g_1355 p_2162->g_1356 p_2162->g_1154 p_2162->g_169 p_2162->g_1389 p_2162->g_1394 p_2162->g_958 p_2162->g_84 p_2162->g_1382 p_2162->g_48.f0 p_2162->g_1340 p_2162->g_1188 p_2162->g_1189 p_2162->g_1417 p_2162->g_48 p_2162->g_1422 p_2162->g_1433 p_2162->g_1441 p_2162->g_1159 p_2162->g_1110 p_2162->g_1136 p_2162->g_1156 p_2162->g_95 p_2162->g_1395 p_2162->g_1396 p_2162->g_1476 p_2162->g_193 p_2162->g_33 p_2162->g_861.f0 p_2162->g_1562 p_2162->g_1586 p_2162->g_1595
 * writes: p_2162->g_30 p_2162->g_33 p_2162->g_144 p_2162->g_873 p_2162->g_1333 p_2162->g_84 p_2162->g_128 p_2162->g_1339 p_2162->g_1340 p_2162->g_98.f0 p_2162->g_1264 p_2162->g_917 p_2162->g_1159 p_2162->g_191 p_2162->g_125 p_2162->g_257 p_2162->g_1021.f0 p_2162->g_22 p_2162->g_1377 p_2162->g_1379 p_2162->g_958 p_2162->g_1441 p_2162->g_1444 p_2162->g_861.f1 p_2162->g_95 p_2162->g_861.f0 p_2162->g_1257 p_2162->g_188
 */
union U3  func_20(int32_t  p_21, struct S4 * p_2162)
{ /* block id: 6 */
    uint32_t l_28 = 4294967291UL;
    int64_t l_31 = 0x6C165AAE70C30F14L;
    int64_t *l_1527 = &p_2162->g_1033[8];
    int64_t **l_1526 = &l_1527;
    int64_t ***l_1525 = &l_1526;
    int32_t l_1565 = (-9L);
    int32_t l_1573 = 1L;
    int32_t l_1574 = 1L;
    int32_t l_1578 = (-5L);
    int32_t l_1579 = 0x4372C84CL;
    int32_t l_1582 = 0x4577267FL;
    int64_t *l_1593[1][10][9] = {{{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31},{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31},{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31},{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31},{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31},{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31},{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31},{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31},{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31},{&l_31,&l_31,&l_31,&p_2162->g_30,&p_2162->g_30,&p_2162->g_30,&l_31,&l_31,&l_31}}};
    int16_t l_1594[8][9][1] = {{{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L}},{{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L}},{{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L}},{{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L}},{{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L}},{{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L}},{{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L}},{{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L}}};
    int i, j, k;
    if (p_2162->g_22[4][2][2])
    { /* block id: 7 */
        int64_t *l_29 = &p_2162->g_30;
        uint32_t *l_32[8];
        uint64_t **l_1557[6] = {&p_2162->g_143,&p_2162->g_143,&p_2162->g_143,&p_2162->g_143,&p_2162->g_143,&p_2162->g_143};
        int32_t l_1561 = (-9L);
        int32_t l_1567 = 0x5BFE6DE2L;
        int32_t l_1568 = 0x79556256L;
        int32_t l_1569 = 8L;
        int32_t l_1570 = (-1L);
        int32_t l_1572 = 0x487A6780L;
        int32_t l_1576[6] = {0x1A184BB7L,0x690A4AB7L,0x1A184BB7L,0x1A184BB7L,0x690A4AB7L,0x1A184BB7L};
        uint32_t l_1583 = 0UL;
        int64_t l_1587[1][8];
        int i, j;
        for (i = 0; i < 8; i++)
            l_32[i] = &p_2162->g_33[1][2][1];
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 8; j++)
                l_1587[i][j] = 2L;
        }
        if (func_23(((*l_29) = l_28), l_31, (p_2162->g_33[1][2][1] = p_2162->g_22[2][2][2]), p_2162->g_22[4][2][0], p_2162))
        { /* block id: 758 */
            int8_t *l_1518[1];
            int32_t l_1519 = 1L;
            int64_t *l_1523 = &p_2162->g_1033[8];
            int64_t **l_1522[2];
            int64_t ***l_1521[1];
            int64_t ****l_1520 = &l_1521[0];
            int64_t ***l_1524 = &l_1522[1];
            uint64_t **l_1538 = &p_2162->g_143;
            int32_t l_1571 = 0x762BAEFFL;
            int32_t l_1575 = 0L;
            int32_t l_1577 = 1L;
            int32_t l_1580 = 0x2007EB42L;
            int i;
            for (i = 0; i < 1; i++)
                l_1518[i] = &p_2162->g_861.f1;
            for (i = 0; i < 2; i++)
                l_1522[i] = &l_1523;
            for (i = 0; i < 1; i++)
                l_1521[i] = &l_1522[1];
            (**p_2162->g_1395) = ((safe_sub_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(((void*)0 == (*p_2162->g_1136)), (0x34L | (l_1519 = p_21)))), ((((l_1524 = ((*l_1520) = (void*)0)) != l_1525) > (FAKE_DIVERGE(p_2162->group_1_offset, get_group_id(1), 10) | (((*l_29) = l_31) && (((p_21 , p_21) != l_31) <= 0x0C2AL)))) & p_2162->g_22[0][1][3]))) , (*p_2162->g_1156));
            for (l_31 = (-13); (l_31 == (-5)); ++l_31)
            { /* block id: 766 */
                uint64_t ***l_1539 = &l_1538;
                int32_t l_1540 = 0x5093FFB8L;
                int32_t l_1581 = (-6L);
                (*p_2162->g_1476) = (safe_mul_func_uint8_t_u_u(l_28, 1L));
                (*p_2162->g_1476) ^= ((safe_sub_func_uint8_t_u_u(((safe_add_func_int8_t_s_s(((((*l_1539) = l_1538) == (void*)0) , ((p_21 <= l_1540) , (safe_sub_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (l_1540 && (safe_rshift_func_uint8_t_u_u(9UL, (safe_lshift_func_uint8_t_u_u((safe_div_func_int16_t_s_s((p_21 , l_31), p_21)), 3))))))), 6)) & 0x20L), l_1519)))), 1L)) < p_2162->g_193), p_2162->g_33[1][2][1])) & 0L);
                for (p_2162->g_861.f0 = 0; (p_2162->g_861.f0 <= 14); p_2162->g_861.f0 = safe_add_func_int16_t_s_s(p_2162->g_861.f0, 7))
                { /* block id: 772 */
                    int16_t *l_1558 = &p_2162->g_1257;
                    int16_t *l_1563 = &p_2162->g_188[1][0][2];
                    int32_t l_1564 = (-5L);
                    int32_t *l_1566[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1566[i] = &l_1565;
                    l_1565 = ((((l_1519 &= (safe_sub_func_uint16_t_u_u((l_1540 && ((void*)0 == l_1557[3])), ((*l_1563) = (((*l_1558) = p_21) , (0x56L > (safe_div_func_int32_t_s_s((((-1L) && l_1561) , (p_2162->g_1562 , (p_21 <= 0x9E5D162DDFE21E6FL))), (*p_2162->g_1476))))))))) || p_21) <= 1UL) | l_1564);
                    l_1583--;
                    if ((*p_2162->g_1154))
                        continue;
                }
            }
        }
        else
        { /* block id: 781 */
            return p_2162->g_1586;
        }
        (*p_2162->g_1476) = l_1587[0][4];
    }
    else
    { /* block id: 785 */
        int16_t l_1588 = 1L;
        int32_t *l_1589[7][3][1] = {{{&l_1565},{&l_1565},{&l_1565}},{{&l_1565},{&l_1565},{&l_1565}},{{&l_1565},{&l_1565},{&l_1565}},{{&l_1565},{&l_1565},{&l_1565}},{{&l_1565},{&l_1565},{&l_1565}},{{&l_1565},{&l_1565},{&l_1565}},{{&l_1565},{&l_1565},{&l_1565}}};
        uint32_t l_1590 = 0xADC550F2L;
        int i, j, k;
        l_1590--;
    }
    atomic_xor(&p_2162->g_atomic_reduction[get_linear_group_id()], ((!p_21) > (l_1594[6][0][0] = l_28)));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_2162->v_collective += p_2162->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return p_2162->g_1595;
}


/* ------------------------------------------ */
/* 
 * reads : p_2162->g_256 p_2162->g_257 p_2162->g_143 p_2162->g_144 p_2162->g_1325 p_2162->g_873 p_2162->g_360 p_2162->g_1333 p_2162->g_109 p_2162->g_283 p_2162->g_1149 p_2162->g_313 p_2162->g_1137 p_2162->g_695.f0 p_2162->g_1350 p_2162->g_917 p_2162->g_128 p_2162->g_1355 p_2162->g_1356 p_2162->g_1154 p_2162->g_169 p_2162->g_1382 p_2162->g_48.f0 p_2162->g_1340 p_2162->g_1389 p_2162->g_1394 p_2162->g_958 p_2162->g_84 p_2162->g_1188 p_2162->g_1189 p_2162->g_1417 p_2162->g_48 p_2162->g_1422 p_2162->g_1433 p_2162->g_1441 p_2162->g_1159 p_2162->g_1110 p_2162->g_1264
 * writes: p_2162->g_144 p_2162->g_873 p_2162->g_1333 p_2162->g_84 p_2162->g_128 p_2162->g_1339 p_2162->g_1340 p_2162->g_98.f0 p_2162->g_1264 p_2162->g_917 p_2162->g_1159 p_2162->g_191 p_2162->g_125 p_2162->g_257 p_2162->g_1377 p_2162->g_1379 p_2162->g_1021.f0 p_2162->g_22 p_2162->g_958 p_2162->g_1441 p_2162->g_1444 p_2162->g_861.f1
 */
int32_t  func_23(int64_t  p_24, uint64_t  p_25, uint32_t  p_26, uint16_t  p_27, struct S4 * p_2162)
{ /* block id: 10 */
    uint64_t l_85 = 0xFBD8D123FB1128C1L;
    int32_t l_1272 = 0x3E7B65FBL;
    int32_t l_1273 = 1L;
    int32_t **l_1289 = &p_2162->g_95[6];
    int32_t l_1300 = 7L;
    int32_t l_1301 = (-1L);
    int64_t l_1303 = 0x07868ECE176049D6L;
    int32_t l_1304[5][10][5] = {{{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL}},{{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL}},{{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL}},{{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL}},{{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL},{0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL,0x367FC0CAL}}};
    int32_t l_1309 = (-8L);
    int64_t ****l_1322 = &p_2162->g_912;
    int16_t l_1338 = 0L;
    int16_t l_1342 = 0x686EL;
    int32_t ***l_1345 = &p_2162->g_1188;
    uint32_t *l_1375 = &p_2162->g_873;
    uint32_t **l_1374[10][8];
    uint32_t l_1463 = 4UL;
    int i, j, k;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
            l_1374[i][j] = &l_1375;
    }
lbl_1362:
    for (p_26 = 0; (p_26 != 11); p_26++)
    { /* block id: 13 */
        uint8_t l_82[7] = {0xDAL,0x97L,0xDAL,0xDAL,0x97L,0xDAL,0xDAL};
        int32_t *l_83 = &p_2162->g_84;
        uint32_t *l_1263 = &p_2162->g_1264;
        uint32_t **l_1262 = &l_1263;
        uint32_t l_1265 = 1UL;
        uint32_t *l_1270[8] = {(void*)0,&l_1265,(void*)0,(void*)0,&l_1265,(void*)0,(void*)0,&l_1265};
        int32_t l_1271[2];
        uint64_t *l_1278[4][4][3] = {{{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85}},{{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85}},{{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85}},{{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85},{&l_85,&l_85,&l_85}}};
        int8_t l_1299 = 0x3FL;
        int64_t l_1302 = (-1L);
        uint64_t l_1305[6][1] = {{0xF2922C6563D0CEFDL},{0xF2922C6563D0CEFDL},{0xF2922C6563D0CEFDL},{0xF2922C6563D0CEFDL},{0xF2922C6563D0CEFDL},{0xF2922C6563D0CEFDL}};
        uint64_t l_1310[1];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1271[i] = 0x21B95F02L;
        for (i = 0; i < 1; i++)
            l_1310[i] = 0x841B0BE904130B2AL;
        (1 + 1);
    }
    for (l_1272 = (-8); (l_1272 == (-3)); l_1272++)
    { /* block id: 655 */
        int32_t *l_1316 = (void*)0;
        int32_t *l_1317 = &p_2162->g_84;
        int32_t *l_1318[1][7][1] = {{{&p_2162->g_128[0][0]},{&p_2162->g_128[0][0]},{&p_2162->g_128[0][0]},{&p_2162->g_128[0][0]},{&p_2162->g_128[0][0]},{&p_2162->g_128[0][0]},{&p_2162->g_128[0][0]}}};
        uint32_t l_1319 = 0xD8547D29L;
        uint32_t *l_1330[1][10][7] = {{{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873},{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873},{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873},{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873},{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873},{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873},{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873},{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873},{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873},{&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873,&p_2162->g_873}}};
        int8_t *l_1341 = &p_2162->g_98.f0;
        int16_t l_1462 = 0x7393L;
        struct S0 *l_1466 = (void*)0;
        union U3 **l_1500[10][6] = {{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]},{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]},{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]},{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]},{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]},{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]},{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]},{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]},{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]},{&p_2162->g_625[5],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3],&p_2162->g_625[3]}};
        uint16_t *l_1505[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int8_t *l_1509[1][10][3] = {{{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0},{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0},{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0},{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0},{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0},{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0},{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0},{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0},{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0},{&p_2162->g_1325,&p_2162->g_125,&p_2162->g_48.f0}}};
        int i, j, k;
        ++l_1319;
        l_1342 = (l_1309 &= ((l_1322 == (((*l_1341) = (safe_sub_func_int64_t_s_s((p_2162->g_1340 = (((void*)0 != (*p_2162->g_256)) && ((((*p_2162->g_143) = (*p_2162->g_143)) || (-5L)) & ((FAKE_DIVERGE(p_2162->global_2_offset, get_global_id(2), 10) | p_2162->g_1325) , (l_1273 = ((safe_mul_func_uint16_t_u_u((((safe_mod_func_uint32_t_u_u((p_2162->g_1339[5][2][5] = ((--p_2162->g_873) >= ((*p_2162->g_1149) = ((p_2162->g_1333 |= p_2162->g_360) != ((l_1304[2][6][4] | (((*l_1317) = (safe_sub_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((((((l_1338 & p_2162->g_109) , 0x88E2L) ^ 0xCAE4L) < p_25) == (-1L)), p_25)), p_2162->g_283))) <= p_27)) ^ 9L))))), p_2162->g_313)) == p_27) <= p_25), p_26)) >= 1UL)))))), p_24))) , l_1322)) & p_2162->g_283));
        for (p_2162->g_1264 = (-19); (p_2162->g_1264 >= 3); p_2162->g_1264++)
        { /* block id: 670 */
            int32_t ***l_1346[1][5];
            int32_t l_1349[8][3][1] = {{{(-8L)},{(-8L)},{(-8L)}},{{(-8L)},{(-8L)},{(-8L)}},{{(-8L)},{(-8L)},{(-8L)}},{{(-8L)},{(-8L)},{(-8L)}},{{(-8L)},{(-8L)},{(-8L)}},{{(-8L)},{(-8L)},{(-8L)}},{{(-8L)},{(-8L)},{(-8L)}},{{(-8L)},{(-8L)},{(-8L)}}};
            uint32_t **l_1383 = &p_2162->g_1378[5];
            int64_t *l_1428 = (void*)0;
            int64_t **l_1427 = &l_1428;
            int64_t ***l_1426 = &l_1427;
            union U2 **l_1460 = &p_2162->g_257;
            int32_t l_1486 = 0x0B82E65FL;
            int32_t l_1489[3];
            union U3 ***l_1501 = &l_1500[0][1];
            uint16_t *l_1503 = (void*)0;
            uint16_t **l_1502 = &l_1503;
            uint16_t **l_1504 = (void*)0;
            int8_t **l_1508 = &l_1341;
            int32_t l_1510 = 0x42B6D0F5L;
            int16_t *l_1511 = &l_1462;
            int16_t *l_1512 = (void*)0;
            int16_t *l_1513 = &l_1338;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 5; j++)
                    l_1346[i][j] = &p_2162->g_1188;
            }
            for (i = 0; i < 3; i++)
                l_1489[i] = 0x1D9F0D80L;
            if ((l_1345 != l_1346[0][2]))
            { /* block id: 671 */
                uint64_t **l_1354 = (void*)0;
                uint64_t ***l_1353 = &l_1354;
                (*l_1317) = ((l_1349[2][1][0] ^ (*p_2162->g_1137)) & (p_2162->g_1350 == ((*l_1353) = (void*)0)));
                for (p_2162->g_917 = 0; (p_2162->g_917 <= 0); p_2162->g_917 += 1)
                { /* block id: 676 */
                    int i, j;
                    return p_2162->g_128[p_2162->g_917][(p_2162->g_917 + 1)];
                }
                (*p_2162->g_1356) = p_2162->g_1355;
                return p_26;
            }
            else
            { /* block id: 681 */
                uint32_t l_1363 = 0xC0368DD9L;
                int32_t l_1381 = 0x5EF246CCL;
                int32_t l_1402 = 0x47E405B2L;
                int32_t l_1437 = 8L;
                uint8_t l_1438 = 0xE0L;
                for (p_2162->g_191 = 26; (p_2162->g_191 != (-17)); --p_2162->g_191)
                { /* block id: 684 */
                    union U2 *l_1361 = &p_2162->g_48;
                    for (p_2162->g_125 = 24; (p_2162->g_125 != 11); p_2162->g_125--)
                    { /* block id: 687 */
                        (*p_2162->g_256) = l_1361;
                    }
                    if (p_2162->g_1333)
                        goto lbl_1362;
                }
                ++l_1363;
                if ((*p_2162->g_1154))
                { /* block id: 693 */
                    uint32_t ***l_1376[2][5] = {{&l_1374[9][6],&l_1374[9][2],&l_1374[9][6],&l_1374[9][6],&l_1374[9][2]},{&l_1374[9][6],&l_1374[9][2],&l_1374[9][6],&l_1374[9][6],&l_1374[9][2]}};
                    int64_t *l_1380[10] = {&p_2162->g_1033[8],&p_2162->g_1033[8],&p_2162->g_1033[8],&p_2162->g_1033[8],&p_2162->g_1033[8],&p_2162->g_1033[8],&p_2162->g_1033[8],&p_2162->g_1033[8],&p_2162->g_1033[8],&p_2162->g_1033[8]};
                    int32_t l_1388 = 0x4F8698E6L;
                    struct S0 *l_1391 = &p_2162->g_1021.f0;
                    uint16_t *l_1397 = &p_2162->g_22[4][2][0];
                    int32_t ****l_1400 = (void*)0;
                    int32_t l_1401 = 1L;
                    int i, j;
                    atomic_add(&p_2162->g_atomic_reduction[get_linear_group_id()], ((((safe_mul_func_int16_t_s_s((((0xFCL & (safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((safe_mod_func_int64_t_s_s(((p_2162->g_1379 = (p_2162->g_1377 = l_1374[9][2])) != (((l_1381 = p_24) , p_2162->g_1382) , l_1383)), ((safe_add_func_int32_t_s_s((p_24 && ((((p_27 >= p_27) > (((p_2162->g_48.f0 || p_24) || 0xCAE02DC3L) >= 0x6C8D7206056B5CA4L)) <= p_24) ^ p_26)), 0x60ADA4A9L)) ^ (-1L)))), l_1388)), 0x4DL))) , p_24) <= 1L), 0x3DF9L)) || GROUP_DIVERGE(1, 1)) && 0x2BAD0779L) > p_2162->g_1340));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_2162->v_collective += p_2162->g_atomic_reduction[get_linear_group_id()];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    (*l_1391) = p_2162->g_1389;
                    l_1402 ^= ((safe_sub_func_int8_t_s_s((((*l_1397) = ((((void*)0 != p_2162->g_1394) & (p_2162->g_958 == 0x501BL)) & p_25)) || (((((*l_1317) != (safe_rshift_func_uint16_t_u_s(((((void*)0 == l_1400) != l_1381) != 0xC3FC0446L), p_24))) | l_1363) == 0UL) >= p_2162->g_1355.f0)), l_1401)) != p_24);
                    for (p_2162->g_917 = 5; (p_2162->g_917 <= 8); p_2162->g_917 = safe_add_func_int32_t_s_s(p_2162->g_917, 9))
                    { /* block id: 703 */
                        (*l_1317) &= (safe_rshift_func_uint16_t_u_u((&p_2162->g_627[2][0][0] == (void*)0), 7));
                    }
                }
                else
                { /* block id: 706 */
                    int32_t l_1434 = 0x6625A446L;
                    int16_t *l_1435 = (void*)0;
                    int16_t *l_1436 = &l_1342;
                    (*l_1317) |= (safe_lshift_func_int8_t_s_s((safe_mod_func_int64_t_s_s((p_24 = (safe_div_func_int64_t_s_s((((**p_2162->g_1188) ^= (safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_2162->local_1_offset, get_local_id(1), 10), (safe_sub_func_int64_t_s_s(0x6DE84A9C810999BAL, FAKE_DIVERGE(p_2162->group_1_offset, get_group_id(1), 10)))))) , ((p_2162->g_1417 , ((+(safe_lshift_func_uint16_t_u_s(p_26, ((*l_1436) = (((safe_add_func_int8_t_s_s(p_27, (((((*p_2162->g_257) , p_2162->g_1422) == l_1426) < ((~(safe_rshift_func_uint16_t_u_s(((++(*p_2162->g_143)) > (65535UL & (p_2162->g_1433 , p_25))), 9))) , p_25)) == 0x0CB6L))) <= l_1434) < l_1381))))) != p_24)) , l_1434)), l_1434))), 18446744073709551613UL)), 3));
                    --l_1438;
                    p_2162->g_1441--;
                    p_2162->g_1444 = (*p_2162->g_1356);
                }
                for (p_2162->g_861.f1 = 0; (p_2162->g_861.f1 != 6); p_2162->g_861.f1 = safe_add_func_int8_t_s_s(p_2162->g_861.f1, 1))
                { /* block id: 718 */
                    (*p_2162->g_256) = (*p_2162->g_256);
                }
            }
        }
    }
    return (*p_2162->g_1110);
}


/* ------------------------------------------ */
/* 
 * reads : p_2162->g_492 p_2162->g_40 p_2162->g_1033 p_2162->g_22 p_2162->g_188 p_2162->g_313 p_2162->g_144 p_2162->g_818 p_2162->g_1110 p_2162->g_128 p_2162->g_1128 p_2162->g_625 p_2162->g_627 p_2162->g_193 p_2162->g_1136 p_2162->g_163 p_2162->g_164 p_2162->g_1149 p_2162->g_1154 p_2162->g_169 p_2162->g_536 p_2162->g_1156 p_2162->g_1159 p_2162->g_48.f0 p_2162->g_1187 p_2162->g_1205 p_2162->g_540.f0.f0 p_2162->g_1223 p_2162->g_1224 p_2162->g_1228 p_2162->g_1243 p_2162->g_533
 * writes: p_2162->g_492 p_2162->g_917 p_2162->g_861.f0 p_2162->g_1033 p_2162->g_316.f0 p_2162->g_818 p_2162->g_536 p_2162->g_128 p_2162->g_313 p_2162->g_22 p_2162->g_625 p_2162->g_1020 p_2162->g_627 p_2162->g_33 p_2162->g_169 p_2162->g_95 p_2162->g_913 p_2162->g_1188 p_2162->g_1205 p_2162->g_1225 p_2162->g_30 p_2162->g_873 p_2162->g_1257 p_2162->g_191
 */
int32_t  func_36(uint64_t  p_37, uint32_t  p_38, int32_t  p_39, struct S4 * p_2162)
{ /* block id: 532 */
    struct S0 *l_1084 = &p_2162->g_1019.f0;
    int32_t l_1091 = 8L;
    int32_t l_1100 = 0x01EA8650L;
    union U3 *l_1129 = &p_2162->g_1019;
    int64_t **l_1160 = &p_2162->g_914;
    int32_t l_1175 = 2L;
    int32_t l_1178 = 0x7D83E84FL;
    int32_t l_1179 = 0x071C07FFL;
    int64_t l_1218 = 0x7F32932AD5FE960DL;
    for (p_2162->g_492 = 0; (p_2162->g_492 <= 5); p_2162->g_492 += 1)
    { /* block id: 535 */
        struct S0 *l_1081[7] = {&p_2162->g_1021.f0,&p_2162->g_551[5].f0,&p_2162->g_1021.f0,&p_2162->g_1021.f0,&p_2162->g_551[5].f0,&p_2162->g_1021.f0,&p_2162->g_1021.f0};
        union U2 ****l_1117 = (void*)0;
        union U1 *l_1125 = &p_2162->g_316[0];
        int32_t l_1134 = 0L;
        uint16_t *l_1138 = &p_2162->g_22[0][3][0];
        uint16_t l_1146[2][7] = {{0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L},{0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L,0xF583L}};
        int32_t l_1172 = 0x3CC5151EL;
        int32_t l_1173 = 0x0E2F43FFL;
        int32_t l_1177 = 0x71147F2BL;
        uint32_t l_1234 = 1UL;
        int i, j;
        l_1084 = l_1081[5];
        for (p_2162->g_917 = 1; (p_2162->g_917 <= 5); p_2162->g_917 += 1)
        { /* block id: 539 */
            int32_t l_1101[2][5][8] = {{{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)}},{{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)},{(-8L),(-8L),0x6B75D384L,0x5D43F7C5L,0x690E2332L,0x5D43F7C5L,0x6B75D384L,(-8L)}}};
            int32_t *l_1103[1][6];
            int32_t l_1171 = 0x7ADF32D3L;
            int32_t l_1200 = 0L;
            int32_t l_1201 = 0L;
            int32_t l_1202 = 0x78A96134L;
            int32_t l_1203 = 0x61C6AA06L;
            int32_t l_1204[1][6] = {{0x6A0F5A20L,0L,0x6A0F5A20L,0x6A0F5A20L,0L,0x6A0F5A20L}};
            union U2 l_1221[6][5][7] = {{{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}}},{{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}}},{{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}}},{{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}}},{{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}}},{{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}},{{0x7BL},{8L},{0x14L},{-2L},{0x7BL},{2L},{8L}}}};
            int8_t l_1222 = 3L;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 6; j++)
                    l_1103[i][j] = &p_2162->g_313;
            }
            for (p_39 = 1; (p_39 <= 5); p_39 += 1)
            { /* block id: 542 */
                int32_t *l_1102 = &p_2162->g_536;
                union U1 *l_1126 = &p_2162->g_98;
                uint16_t *l_1127 = &p_2162->g_22[5][0][3];
                union U3 **l_1130 = &p_2162->g_1020;
                uint8_t *l_1131 = &p_2162->g_627[2][1][0];
                int32_t l_1147 = 1L;
                int32_t l_1169[5];
                int8_t l_1180 = (-9L);
                int i;
                for (i = 0; i < 5; i++)
                    l_1169[i] = 1L;
                if (p_37)
                { /* block id: 543 */
                    uint32_t l_1114 = 0x19C07C13L;
                    for (p_2162->g_861.f0 = 1; (p_2162->g_861.f0 <= 5); p_2162->g_861.f0 += 1)
                    { /* block id: 546 */
                        int64_t *l_1104 = &p_2162->g_1033[8];
                        int8_t *l_1105 = &p_2162->g_316[0].f0;
                        int32_t *l_1106 = &p_2162->g_818;
                        (*l_1106) ^= (safe_sub_func_int8_t_s_s(((*l_1105) = (safe_rshift_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((l_1091 = p_2162->g_40[3]) | ((((0x5EE61D8530E45E7AL == (((*l_1104) = (0x63B3DB1CAC581B73L ^ ((safe_lshift_func_int8_t_s_s((((p_2162->g_1033[8] & (((0x6AB0B1E74EED82FBL | (safe_lshift_func_int8_t_s_u(((safe_mod_func_int32_t_s_s((safe_sub_func_int32_t_s_s((p_39 <= (l_1101[0][3][1] = l_1100)), p_38)), (~((((p_37 || p_37) , l_1102) != l_1103[0][5]) | 0x44L)))) < 0xDCD087F9L), p_2162->g_22[4][2][0]))) || p_38) , l_1101[0][3][1])) ^ 0xB3L) == 1L), 3)) & GROUP_DIVERGE(0, 1)))) , FAKE_DIVERGE(p_2162->local_0_offset, get_local_id(0), 10))) <= p_37) , l_1101[1][4][7]) | p_2162->g_188[1][0][0])), GROUP_DIVERGE(0, 1))), p_2162->g_313))), p_2162->g_144));
                    }
                    if (p_37)
                        break;
                    for (p_2162->g_536 = 1; (p_2162->g_536 <= 5); p_2162->g_536 += 1)
                    { /* block id: 556 */
                        uint32_t l_1107[2][2][4] = {{{1UL,4294967295UL,0xAC9B49DEL,4294967295UL},{1UL,4294967295UL,0xAC9B49DEL,4294967295UL}},{{1UL,4294967295UL,0xAC9B49DEL,4294967295UL},{1UL,4294967295UL,0xAC9B49DEL,4294967295UL}}};
                        int32_t *l_1111 = &p_2162->g_128[0][0];
                        int32_t *l_1112 = &p_2162->g_84;
                        int32_t *l_1113 = &p_2162->g_84;
                        int i, j, k;
                        (*p_2162->g_1110) ^= l_1107[1][1][0];
                        if (p_37)
                            continue;
                        ++l_1114;
                    }
                }
                else
                { /* block id: 561 */
                    int32_t *l_1118 = &p_2162->g_818;
                    int64_t *l_1120 = &p_2162->g_1033[7];
                    int64_t **l_1119 = &l_1120;
                    int64_t ***l_1121 = &l_1119;
                    for (p_2162->g_313 = 4; (p_2162->g_313 >= 0); p_2162->g_313 -= 1)
                    { /* block id: 564 */
                        if (p_38)
                            break;
                    }
                    (*l_1118) = ((void*)0 == l_1117);
                    (*l_1121) = l_1119;
                }
                if ((((((safe_lshift_func_uint8_t_u_u(((0x1FC2L & (~((*l_1127) = (safe_unary_minus_func_uint64_t_u(((l_1125 = &p_2162->g_861) == l_1126)))))) | (p_2162->g_1128[0][5] , ((p_2162->g_625[p_2162->g_492] = p_2162->g_625[p_39]) == ((*l_1130) = l_1129)))), 4)) > (((*l_1131) ^= ((void*)0 == &p_2162->g_533)) ^ (safe_add_func_uint16_t_u_u(p_2162->g_492, p_2162->g_193)))) , p_37) <= l_1134) , (-1L)))
                { /* block id: 575 */
                    int8_t **l_1135 = (void*)0;
                    uint32_t *l_1148 = &p_2162->g_33[1][4][2];
                    int32_t l_1155 = 0x32CDA309L;
                    int64_t ***l_1161 = &l_1160;
                    int64_t ***l_1162[7] = {&p_2162->g_913[0][0][2],&p_2162->g_913[0][0][2],&p_2162->g_913[0][0][2],&p_2162->g_913[0][0][2],&p_2162->g_913[0][0][2],&p_2162->g_913[0][0][2],&p_2162->g_913[0][0][2]};
                    int32_t *l_1163 = &p_2162->g_128[0][0];
                    int32_t l_1168 = 0x0719CBF7L;
                    int32_t l_1170 = 0x6C0AF6ABL;
                    int32_t l_1174 = 1L;
                    int32_t l_1176 = 0L;
                    int32_t l_1181 = 0x4501BFABL;
                    int i;
                    l_1091 = (((l_1100 , l_1135) == p_2162->g_1136) == ((l_1138 = &p_2162->g_22[4][2][0]) != &p_2162->g_22[4][2][0]));
                    (*p_2162->g_1149) = (safe_mod_func_int64_t_s_s(9L, (((void*)0 != &p_2162->g_143) & (safe_unary_minus_func_int32_t_s((safe_rshift_func_uint16_t_u_s(l_1101[0][3][1], (+((safe_add_func_uint32_t_u_u(((l_1146[0][5] & ((((((*l_1148) = (((*p_2162->g_163) , l_1147) & l_1146[1][4])) , &l_1126) != &l_1125) <= p_37) >= 0L)) && 0x4EB412BD7CF5789BL), (-1L))) , p_39)))))))));
                    if ((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), p_39)))
                    { /* block id: 580 */
                        int32_t l_1152 = 0x45CF4970L;
                        (*p_2162->g_1154) |= l_1152;
                    }
                    else
                    { /* block id: 582 */
                        l_1155 = (~((~p_2162->g_536) , l_1100));
                        (*p_2162->g_1156) = &p_39;
                        if (p_37)
                            break;
                    }
                    if (((*l_1163) &= (safe_add_func_int16_t_s_s((p_2162->g_1159 , p_2162->g_48.f0), (((*l_1161) = l_1160) != (p_2162->g_913[0][0][2] = &p_2162->g_914))))))
                    { /* block id: 590 */
                        int32_t *l_1164 = &p_2162->g_128[0][0];
                        int32_t *l_1165 = &l_1091;
                        int32_t *l_1166[2];
                        int8_t l_1167 = 0x54L;
                        uint32_t l_1182 = 0x0BCC01F1L;
                        int32_t *l_1186 = &p_2162->g_958;
                        int32_t **l_1185[1];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1166[i] = &p_2162->g_169;
                        for (i = 0; i < 1; i++)
                            l_1185[i] = &l_1186;
                        (*l_1163) = 0x24E902CDL;
                        --l_1182;
                        if (p_39)
                            break;
                        (*p_2162->g_1187) = l_1185[0];
                    }
                    else
                    { /* block id: 595 */
                        int32_t *l_1190 = &p_2162->g_818;
                        int32_t *l_1191 = &l_1177;
                        int32_t *l_1192 = &l_1169[0];
                        int32_t *l_1193 = &l_1172;
                        int32_t *l_1194 = &l_1172;
                        int32_t *l_1195 = &l_1155;
                        int32_t *l_1196 = &l_1168;
                        int32_t *l_1197 = &p_2162->g_128[0][0];
                        int32_t *l_1198 = (void*)0;
                        int32_t *l_1199[9][1][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        int i, j, k;
                        p_2162->g_1205++;
                        return (*p_2162->g_1154);
                    }
                }
                else
                { /* block id: 599 */
                    uint64_t l_1213[7] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                    int32_t l_1233 = 0x190777DFL;
                    int32_t l_1259 = 0x1689FB71L;
                    int i;
                    for (p_2162->g_818 = 0; (p_2162->g_818 <= 6); p_2162->g_818 += 1)
                    { /* block id: 602 */
                        int32_t *l_1208 = &l_1134;
                        int32_t *l_1209 = &l_1177;
                        int32_t *l_1210 = &l_1175;
                        int32_t *l_1211 = (void*)0;
                        int32_t *l_1212[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1212[i] = &l_1204[0][5];
                        l_1213[0]--;
                    }
                    if (((safe_mod_func_uint8_t_u_u(0x98L, p_2162->g_627[2][3][1])) && (GROUP_DIVERGE(2, 1) | (((l_1213[2] > p_2162->g_540.f0.f0) & 0xBEL) && ((l_1218 > ((safe_div_func_int16_t_s_s(((l_1221[2][0][5] , l_1100) && (l_1203 &= 0UL)), 4UL)) > l_1222)) != 0xC8A88107L)))))
                    { /* block id: 606 */
                        (*p_2162->g_1223) = &p_39;
                        if (p_38)
                            continue;
                        p_2162->g_1225 = p_2162->g_1224;
                    }
                    else
                    { /* block id: 610 */
                        int8_t l_1229 = 0x40L;
                        int32_t *l_1230 = &l_1091;
                        int32_t *l_1231 = &l_1134;
                        int32_t *l_1232[3][8][3] = {{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_169}}};
                        uint32_t l_1254 = 0xABC6A834L;
                        int64_t *l_1255 = &p_2162->g_30;
                        uint32_t *l_1256 = &p_2162->g_873;
                        int16_t *l_1258 = &p_2162->g_191;
                        int i, j, k;
                        (*p_2162->g_1228) = (0x86ED4469171CE7A4L && (l_1173 = ((safe_div_func_uint8_t_u_u(0UL, 1UL)) , (p_39 & p_39))));
                        l_1234++;
                        l_1259 = (safe_add_func_int32_t_s_s((l_1233 |= ((*l_1230) = ((((safe_rshift_func_int16_t_s_u(((*l_1258) = (((*l_1138) = (safe_mul_func_int16_t_s_s(((p_2162->g_1243[4][5][3] , (safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((*l_1231) = p_39), l_1146[0][5])), (((3UL <= p_2162->g_533) != (-1L)) , ((safe_rshift_func_int8_t_s_u((safe_add_func_int32_t_s_s(p_37, (p_2162->g_1257 = ((*l_1256) = (l_1173 | ((*l_1255) = (p_37 <= l_1254))))))), FAKE_DIVERGE(p_2162->global_1_offset, get_global_id(1), 10))) && l_1169[2])))), l_1204[0][5]))) , p_37), l_1172))) || p_2162->g_627[1][6][1])), FAKE_DIVERGE(p_2162->global_1_offset, get_global_id(1), 10))) , (void*)0) != l_1102) ^ l_1179))), l_1146[1][0]));
                    }
                }
            }
        }
    }
    return (*p_2162->g_1228);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_43(union U2  p_44, uint32_t  p_45, int16_t  p_46, uint32_t * p_47, struct S4 * p_2162)
{ /* block id: 530 */
    uint8_t l_1080[10] = {0xB6L,0x3CL,0xB6L,0xB6L,0x3CL,0xB6L,0xB6L,0x3CL,0xB6L,0xB6L};
    int i;
    return l_1080[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_2162->g_22 p_2162->g_84 p_2162->g_48 p_2162->g_109 p_2162->g_98.f0 p_2162->g_33 p_2162->g_30 p_2162->g_128 p_2162->g_144 p_2162->g_125 p_2162->g_162 p_2162->g_143 p_2162->g_169 p_2162->g_48.f0 p_2162->g_359 p_2162->g_193 p_2162->g_191 p_2162->g_313 p_2162->g_399 p_2162->g_95 p_2162->g_492 p_2162->g_316.f0 p_2162->g_283 p_2162->g_533 p_2162->g_627 p_2162->g_188 p_2162->g_694 p_2162->g_625 p_2162->g_536 p_2162->g_873 p_2162->g_832 p_2162->g_861.f0 p_2162->g_818 p_2162->g_257 p_2162->g_164.f0 p_2162->g_958 p_2162->g_256 p_2162->g_1020 p_2162->g_917
 * writes: p_2162->g_84 p_2162->g_95 p_2162->g_109 p_2162->g_98.f0 p_2162->g_125 p_2162->g_128 p_2162->g_143 p_2162->g_22 p_2162->g_30 p_2162->g_169 p_2162->g_144 p_2162->g_188 p_2162->g_193 p_2162->g_492 p_2162->g_536 p_2162->g_283 p_2162->g_625 p_2162->g_533 p_2162->g_627 p_2162->g_191 p_2162->g_912 p_2162->g_917 p_2162->g_316.f0 p_2162->g_958 p_2162->g_1033 p_2162->g_316.f1
 */
int64_t  func_49(union U2  p_50, struct S4 * p_2162)
{ /* block id: 17 */
    uint32_t l_87 = 4294967295UL;
    uint64_t *l_145[1][4] = {{&p_2162->g_144,&p_2162->g_144,&p_2162->g_144,&p_2162->g_144}};
    uint32_t l_190 = 8UL;
    int32_t *l_202 = &p_2162->g_84;
    uint8_t l_212 = 254UL;
    union U2 **l_279 = &p_2162->g_257;
    int32_t l_287 = 0x5F986D55L;
    union U1 *l_315 = &p_2162->g_316[0];
    union U1 **l_314 = &l_315;
    int64_t ***l_372 = (void*)0;
    uint8_t l_391 = 0xD8L;
    int32_t l_420 = 0x5608A87DL;
    int32_t l_421 = 0x4B54E30DL;
    int32_t l_423 = 0x44B01157L;
    int32_t l_424 = 6L;
    int32_t l_426[6][1][7] = {{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}},{{0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L,0L,0x4113C6A1L,0x4113C6A1L}}};
    uint64_t l_429 = 0xE303131CCC5579FFL;
    int64_t l_496 = 0x237E8DDB5E0FFBB8L;
    int32_t l_498[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
    uint32_t l_686[5] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    union U3 **l_725 = &p_2162->g_625[3];
    union U2 ***l_731 = &l_279;
    union U2 ****l_730 = &l_731;
    uint8_t l_768 = 251UL;
    uint64_t *l_899 = &p_2162->g_492;
    uint64_t **l_898 = &l_899;
    int64_t ****l_911[7];
    uint32_t l_915 = 1UL;
    uint16_t *l_916 = &p_2162->g_917;
    int32_t *l_918 = &l_423;
    uint64_t **l_1034 = &l_899;
    int32_t l_1069 = 0x3FC12438L;
    int64_t l_1072 = 1L;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_911[i] = (void*)0;
    if ((l_87 && l_87))
    { /* block id: 18 */
        return p_50.f0;
    }
    else
    { /* block id: 20 */
        uint32_t l_96 = 0x95356471L;
        int32_t l_123 = 0x4BF7460FL;
        union U2 *l_138 = &p_2162->g_48;
        int64_t l_166 = 6L;
        uint32_t l_185 = 0x07D318FBL;
        int32_t *l_235 = (void*)0;
        uint16_t l_236 = 65526UL;
        int32_t l_254[1];
        uint16_t *l_358 = &l_236;
        int64_t ***l_385 = (void*)0;
        int8_t *l_390 = (void*)0;
        int32_t l_422[10][2] = {{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L},{1L,0x1BB69488L}};
        int16_t *l_485 = &p_2162->g_188[1][0][0];
        uint64_t **l_486 = &l_145[0][1];
        uint32_t *l_490 = (void*)0;
        uint32_t **l_489 = &l_490;
        uint64_t *l_491 = &p_2162->g_492;
        uint32_t l_495 = 4294967288UL;
        uint32_t l_499 = 0x62D61DDBL;
        uint64_t l_504 = 18446744073709551607UL;
        int32_t **l_517 = &p_2162->g_95[6];
        union U3 *l_539 = &p_2162->g_540;
        union U3 *l_623 = &p_2162->g_624;
        uint32_t l_647 = 0x30787627L;
        int32_t l_672 = 0L;
        union U2 **l_683 = &p_2162->g_257;
        int8_t l_685 = 0x29L;
        int i, j;
        for (i = 0; i < 1; i++)
            l_254[i] = 0x4F4879BBL;
lbl_628:
        if ((((~0UL) != l_87) || (safe_rshift_func_int16_t_s_u((((p_2162->g_22[4][2][0] | (p_2162->g_84 >= (p_2162->g_48 , (p_2162->g_84 & (safe_mod_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(0xD6D9707EL, 0x0EDB61D1L)), 0x5E64L)))))) <= p_2162->g_84) <= 0UL), 5))))
        { /* block id: 21 */
            int32_t *l_94 = &p_2162->g_84;
            uint16_t l_165 = 1UL;
            int8_t *l_174 = &p_2162->g_164.f1;
            int64_t *l_186 = &p_2162->g_30;
            int64_t *l_187 = &l_166;
            int8_t l_189 = 0x0AL;
            int32_t l_274[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            union U2 **l_278 = &p_2162->g_257;
            int i;
            for (p_2162->g_84 = 0; (p_2162->g_84 <= 4); p_2162->g_84 += 1)
            { /* block id: 24 */
                uint16_t l_132 = 2UL;
                int32_t *l_137 = &l_123;
                for (p_50.f0 = 0; (p_50.f0 <= 4); p_50.f0 += 1)
                { /* block id: 27 */
                    union U1 *l_97 = &p_2162->g_98;
                    uint64_t l_118 = 0xAC8F595BA468D3B5L;
                    p_2162->g_95[6] = l_94;
                    if (l_96)
                        continue;
                    for (l_96 = 0; (l_96 <= 4); l_96 += 1)
                    { /* block id: 32 */
                        union U1 **l_99 = &l_97;
                        uint64_t *l_108 = &p_2162->g_109;
                        int8_t *l_119 = &p_2162->g_98.f0;
                        int8_t *l_124 = &p_2162->g_125;
                        int32_t *l_126 = (void*)0;
                        int32_t *l_127 = &p_2162->g_128[0][0];
                        int32_t *l_129 = &p_2162->g_128[0][0];
                        int32_t *l_130 = &p_2162->g_128[0][0];
                        int32_t *l_131[10][7][3] = {{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}},{{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]},{&p_2162->g_128[0][1],(void*)0,&p_2162->g_128[0][0]}}};
                        int i, j, k;
                        (*l_99) = l_97;
                        (*l_127) = (((*l_124) = (((l_123 = ((p_2162->g_22[(l_96 + 4)][l_96][p_50.f0] != (8UL & (safe_rshift_func_int16_t_s_u(p_2162->g_22[(p_2162->g_84 + 3)][p_50.f0][p_50.f0], 13)))) == ((safe_sub_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s(((safe_mul_func_int8_t_s_s(((p_2162->g_22[p_2162->g_84][p_50.f0][p_2162->g_84] == ((*l_108) &= l_87)) | ((safe_sub_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((0x52L <= ((*l_119) &= (safe_rshift_func_int8_t_s_s(l_118, 2)))), (safe_rshift_func_int8_t_s_u((safe_unary_minus_func_uint64_t_u(((l_87 <= 1UL) && l_96))), 6)))), p_50.f0)) >= p_50.f0), p_50.f0)) , p_2162->g_33[1][8][1])), p_2162->g_33[0][5][1])) <= p_2162->g_22[4][2][0]), p_2162->g_22[p_2162->g_84][p_50.f0][p_2162->g_84])) < l_96), p_2162->g_84)) <= l_118))) != l_87) && p_2162->g_98.f0)) != p_2162->g_30);
                        l_132++;
                    }
                }
                if (l_132)
                    break;
                if (l_132)
                    continue;
                (*l_137) &= (safe_rshift_func_uint8_t_u_u(l_132, 3));
                for (p_2162->g_109 = 0; (p_2162->g_109 <= 4); p_2162->g_109 += 1)
                { /* block id: 47 */
                    union U2 **l_139[7];
                    int32_t l_140 = (-1L);
                    uint64_t *l_142 = &p_2162->g_109;
                    uint64_t **l_141[8][4] = {{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142},{&l_142,(void*)0,(void*)0,&l_142}};
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_139[i] = &l_138;
                    l_138 = l_138;
                    (*l_137) = ((l_140 , (p_2162->g_143 = &p_2162->g_109)) != l_145[0][1]);
                    for (l_96 = 0; (l_96 <= 4); l_96 += 1)
                    { /* block id: 53 */
                        int64_t *l_167 = &p_2162->g_30;
                        int32_t *l_168 = &p_2162->g_169;
                        int i, j, k;
                        (*l_137) = ((*l_168) |= (safe_mod_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((((((((p_50.f0 , ((p_2162->g_128[0][0] > (safe_add_func_int64_t_s_s((((((*l_167) = (((safe_mul_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((0x1E2EL || (p_2162->g_22[l_96][p_2162->g_109][p_2162->g_84] = p_2162->g_144)), (safe_div_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((p_2162->g_125 , p_2162->g_128[0][0]), p_2162->g_33[3][3][0])), (safe_mod_func_int8_t_s_s(((p_2162->g_162 != (void*)0) & (*p_2162->g_143)), l_165)))))), l_166)) == p_2162->g_33[1][2][1]) , (-1L))) , GROUP_DIVERGE(2, 1)) > p_50.f0) && l_140), (*p_2162->g_143)))) > 0x1F78L)) , GROUP_DIVERGE(2, 1)) || 1UL) > 0x22L) <= p_2162->g_33[1][4][2]) >= p_2162->g_128[0][0]) <= l_140), 2)), l_123)));
                        (*l_137) = p_50.f0;
                    }
                }
            }
            for (l_165 = (-27); (l_165 != 5); l_165++)
            { /* block id: 64 */
                (*l_94) ^= l_87;
            }
        }
        else
        { /* block id: 149 */
            int64_t *l_350 = &p_2162->g_30;
            int64_t **l_349[2][9] = {{&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350},{&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350}};
            uint32_t l_355 = 0xE5636584L;
            int64_t **l_371 = (void*)0;
            int64_t ***l_370[7][6][2] = {{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}},{{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371},{&l_371,&l_371}}};
            int32_t *l_410 = &p_2162->g_169;
            int32_t l_416 = (-1L);
            int32_t l_418 = (-3L);
            int32_t l_419 = 0x4CBC7F95L;
            int32_t l_425 = 0L;
            int32_t l_427 = 0L;
            int32_t l_428 = 0x380FDBBEL;
            uint8_t l_480 = 255UL;
            int i, j, k;
            for (p_2162->g_169 = 0; (p_2162->g_169 <= 0); p_2162->g_169 += 1)
            { /* block id: 152 */
                int64_t **l_354 = &l_350;
                uint16_t *l_357 = (void*)0;
                int32_t l_373 = 0L;
                int32_t l_394 = 0x4EAD715FL;
                for (p_2162->g_84 = 0; (p_2162->g_84 <= 0); p_2162->g_84 += 1)
                { /* block id: 155 */
                    int8_t l_338 = 0x6DL;
                    union U2 **l_374 = &p_2162->g_257;
                    uint32_t *l_392 = (void*)0;
                    int32_t l_393 = 0x4039C909L;
                    int32_t *l_405[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_405[i] = (void*)0;
                    for (p_2162->g_144 = 0; (p_2162->g_144 <= 6); p_2162->g_144 += 1)
                    { /* block id: 158 */
                        int32_t *l_335 = &p_2162->g_128[0][1];
                        int64_t ***l_351 = &l_349[0][0];
                        int64_t **l_353 = (void*)0;
                        int64_t ***l_352 = &l_353;
                        uint16_t *l_356 = &p_2162->g_22[4][3][0];
                        int32_t *l_375[3][9] = {{&p_2162->g_84,(void*)0,&l_373,(void*)0,&p_2162->g_84,&p_2162->g_84,(void*)0,&l_373,(void*)0},{&p_2162->g_84,(void*)0,&l_373,(void*)0,&p_2162->g_84,&p_2162->g_84,(void*)0,&l_373,(void*)0},{&p_2162->g_84,(void*)0,&l_373,(void*)0,&p_2162->g_84,&p_2162->g_84,(void*)0,&l_373,(void*)0}};
                        int i, j;
                        (*l_335) &= (-10L);
                        l_338 = (safe_div_func_uint32_t_u_u(1UL, l_254[p_2162->g_169]));
                        l_373 = ((((*l_335) = ((((((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2162->global_1_offset, get_global_id(1), 10), l_254[p_2162->g_169])) == (safe_mod_func_uint16_t_u_u(((((l_358 = (((*l_356) &= ((safe_add_func_int8_t_s_s(p_2162->g_48.f0, (((*l_352) = ((*l_351) = l_349[0][6])) == l_354))) <= l_355)) , (l_357 = l_356))) != p_2162->g_359[2]) & ((safe_div_func_int32_t_s_s((safe_div_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((safe_add_func_uint64_t_u_u(p_50.f0, (l_370[5][4][0] == l_372))), p_50.f0)), p_50.f0)), GROUP_DIVERGE(1, 1))) == (-1L))) <= 0x22723015230D3935L), l_338))), l_338)), p_2162->g_144)) , l_373) != p_50.f0) , l_374) != (void*)0) >= GROUP_DIVERGE(0, 1))) , p_50.f0) | p_50.f0);
                        l_373 &= p_50.f0;
                    }
                    l_394 |= ((safe_unary_minus_func_uint32_t_u((l_393 ^= ((p_2162->g_33[1][2][1] , 0L) && ((((((*p_2162->g_143) >= ((-2L) > ((((safe_div_func_int16_t_s_s(((safe_div_func_int16_t_s_s(((func_51(p_2162->g_144, (safe_mod_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u((((func_51(p_50.f0, ((p_50.f0 || ((p_2162->g_30 = (l_385 == ((((p_2162->g_188[0][0][3] = (l_373 = (safe_mul_func_int8_t_s_s((safe_div_func_uint8_t_u_u(0x34L, p_50.f0)), p_2162->g_193)))) < FAKE_DIVERGE(p_2162->global_2_offset, get_global_id(2), 10)) , l_355) , &l_354))) > (*l_202))) || FAKE_DIVERGE(p_2162->global_2_offset, get_global_id(2), 10)), p_2162->g_143, p_50.f0, p_2162) , l_390) != &p_2162->g_125) < p_50.f0), p_2162->g_191)) != 0x3DC60F20L), 0xB4L)), p_2162->g_143, l_355, p_2162) , &p_2162->g_125) == &p_2162->g_125), l_338)) , (*l_202)), p_2162->g_313)) & 0UL) | 2L) || 0xEE1288F30DE17C3CL))) && l_391) >= p_2162->g_144) & 2L) | 0UL))))) == 1UL);
                    l_287 &= ((safe_lshift_func_int8_t_s_s((p_50.f0 ^ (safe_mod_func_int32_t_s_s((p_2162->g_399 == ((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((*l_358) = (l_373 > l_355)), p_50.f0)), ((p_2162->g_169 | 0x026EL) == p_50.f0))) , &p_2162->g_400)), l_373))), l_394)) , p_50.f0);
                    if (l_420)
                        goto lbl_919;
                }
                return p_50.f0;
            }
            (*l_410) &= (safe_div_func_int64_t_s_s((safe_add_func_int8_t_s_s(((*l_202) |= p_50.f0), p_2162->g_33[1][2][1])), (*p_2162->g_143)));
            for (l_87 = 0; (l_87 > 20); ++l_87)
            { /* block id: 184 */
                int32_t *l_413 = (void*)0;
                int32_t *l_414 = &p_2162->g_128[0][1];
                int32_t *l_415[6][1][4] = {{{(void*)0,&p_2162->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2162->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2162->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2162->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2162->g_128[0][0],(void*)0,(void*)0}},{{(void*)0,&p_2162->g_128[0][0],(void*)0,(void*)0}}};
                int8_t l_417 = (-2L);
                uint32_t *l_434 = &l_96;
                int16_t *l_441 = &p_2162->g_188[1][0][3];
                uint8_t *l_454 = &l_212;
                uint32_t l_471 = 0x0225A25EL;
                int i, j, k;
                --l_429;
                (*l_410) = (safe_add_func_uint16_t_u_u((((p_2162->g_193 = (((~p_50.f0) & ((((*l_434) = p_50.f0) , &p_2162->g_257) == (void*)0)) >= 0x1F22A46FL)) , p_50.f0) | ((&l_87 == p_2162->g_95[6]) | (1L <= 0xEFA7F4F8L))), p_50.f0));
                (*l_414) = ((((safe_mul_func_int16_t_s_s(((((((((safe_lshift_func_int16_t_s_s(((*l_441) = (FAKE_DIVERGE(p_2162->local_1_offset, get_local_id(1), 10) > (p_50.f0 > p_50.f0))), 7)) , ((((*p_2162->g_143) < (safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(7UL, ((safe_mul_func_uint8_t_u_u(p_50.f0, ((safe_div_func_int16_t_s_s(((void*)0 == &l_138), ((*l_441) = (-1L)))) && (--(*l_454))))) & (((void*)0 == &p_2162->g_30) , 0L)))), p_2162->g_313)) & p_2162->g_109) || p_50.f0), p_50.f0)), 9))) && 0x6AL) & 0x2CE783B011D3ADA1L)) , p_2162->g_109) , p_50.f0) <= p_50.f0) || 0x76L) , (-5L)) , p_50.f0), (*l_202))) , p_50.f0) <= (*l_414)) >= p_50.f0);
                l_418 ^= (((*l_202) = (safe_rshift_func_uint8_t_u_s(((*l_454) = GROUP_DIVERGE(2, 1)), 2))) , ((safe_rshift_func_int8_t_s_u(((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_u(((*l_202) = (((*l_350) &= (safe_div_func_int16_t_s_s((+(safe_mul_func_int8_t_s_s(p_50.f0, (safe_mod_func_uint8_t_u_u((l_471 | ((*l_414) & ((-1L) <= (*l_202)))), (safe_sub_func_int64_t_s_s(p_50.f0, ((*p_2162->g_143) = 0xCFEB89E98831C462L)))))))), ((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s((-1L), 5)), (safe_rshift_func_int16_t_s_s((p_50 , p_50.f0), p_50.f0)))) && l_480)))) ^ 1L)), p_50.f0)), 3)) , (*l_410)), p_50.f0)) , 0x3A6F66E0L));
            }
        }
        if (((safe_add_func_uint64_t_u_u(((&p_2162->g_188[0][0][2] == (l_485 = l_358)) ^ (((0x5E66L != ((((*l_486) = &l_429) == &p_2162->g_144) <= (((*l_202) = (safe_lshift_func_uint16_t_u_s((((*l_489) = p_2162->g_95[1]) == ((++(*l_491)) , &l_190)), ((*l_202) && (9L != 4294967288UL))))) , 1UL))) == l_495) <= p_2162->g_316[0].f0)), 0xAB802EFAD0987D97L)) & l_496))
        { /* block id: 206 */
            int32_t *l_497[4];
            int32_t **l_516 = &l_202;
            int32_t ***l_515[7][5][4] = {{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}},{{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516},{(void*)0,(void*)0,&l_516,&l_516}}};
            uint32_t l_518 = 0xD0A2C06CL;
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_497[i] = &l_423;
            l_499++;
            if ((safe_lshift_func_int8_t_s_u(l_504, (safe_add_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(((*l_202) ^= ((p_50.f0 , &l_497[1]) == &l_497[1])), p_50.f0)), (p_50.f0 | (safe_rshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s(((*l_485) = p_2162->g_283), 14)) != ((l_517 = &l_202) != (p_50.f0 , &l_202))), 6)), 3))))))))
            { /* block id: 211 */
                (*l_202) |= l_518;
lbl_557:
                (**l_517) &= 0L;
                (*l_517) = (void*)0;
                return p_50.f0;
            }
            else
            { /* block id: 216 */
                (**l_516) = (*l_202);
            }
            (*l_202) = p_50.f0;
            if (((**l_516) = (safe_rshift_func_uint16_t_u_s(p_2162->g_125, 1))))
            { /* block id: 221 */
                int32_t *l_521 = &l_420;
                union U3 **l_541 = (void*)0;
                union U3 **l_542 = &l_539;
                for (p_2162->g_492 = 0; (p_2162->g_492 <= 8); p_2162->g_492 += 1)
                { /* block id: 224 */
                    int32_t l_522 = 0x2FB8C85CL;
                    int32_t l_523 = 0x35DA3D85L;
                    l_202 = l_521;
                    if (p_50.f0)
                        continue;
                    if (p_50.f0)
                        continue;
                    if ((*l_521))
                        continue;
                    for (l_236 = 0; (l_236 <= 0); l_236 += 1)
                    { /* block id: 231 */
                        uint32_t *l_532[1][4][7] = {{{&l_190,&l_185,&l_190,&l_190,&l_185,&l_190,&l_190},{&l_190,&l_185,&l_190,&l_190,&l_185,&l_190,&l_190},{&l_190,&l_185,&l_190,&l_190,&l_185,&l_190,&l_190},{&l_190,&l_185,&l_190,&l_190,&l_185,&l_190,&l_190}}};
                        int i, j, k;
                        (1 + 1);
                    }
                }
                (*l_542) = l_539;
                (*l_516) = &p_2162->g_84;
                return (**l_517);
            }
            else
            { /* block id: 244 */
                uint8_t l_554[5] = {0xCCL,0xCCL,0xCCL,0xCCL,0xCCL};
                int i;
                for (p_2162->g_98.f0 = 3; (p_2162->g_98.f0 >= 0); p_2162->g_98.f0 -= 1)
                { /* block id: 247 */
                    uint16_t l_547 = 0x0D8EL;
                    union U3 **l_548 = (void*)0;
                    union U3 *l_550 = &p_2162->g_551[5];
                    union U3 **l_549 = &l_550;
                    int32_t l_552[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_552[i] = 0x506EB005L;
                    if ((safe_mod_func_int8_t_s_s((p_50.f0 != p_50.f0), 0x7EL)))
                    { /* block id: 248 */
                        int i;
                        if (p_50.f0)
                            break;
                        if (p_50.f0)
                            break;
                        if (p_50.f0)
                            break;
                        (**l_517) = (safe_sub_func_uint16_t_u_u(l_547, (*l_202)));
                    }
                    else
                    { /* block id: 253 */
                        return p_2162->g_193;
                    }
                    (*l_549) = (l_539 = (void*)0);
                    if ((l_552[6] |= l_547))
                    { /* block id: 259 */
                        int32_t l_553 = 0x4036CAB5L;
                        int i;
                        ++l_554[4];
                        p_2162->g_95[1] = (*l_517);
                    }
                    else
                    { /* block id: 262 */
                        uint32_t l_558 = 0xA29A350AL;
                        if (p_2162->g_313)
                            goto lbl_557;
                        (*l_202) ^= l_558;
                    }
                }
            }
        }
        else
        { /* block id: 268 */
            int32_t l_583 = 0x6ECF7A15L;
            int32_t **l_617 = (void*)0;
            int16_t l_621 = (-1L);
            int64_t *l_622 = &p_2162->g_30;
            int32_t *l_632 = &l_424;
            int32_t *l_633 = &p_2162->g_128[0][0];
            int32_t *l_634 = &l_423;
            int32_t *l_635 = (void*)0;
            int32_t *l_636 = &p_2162->g_169;
            int32_t *l_637 = (void*)0;
            int32_t *l_638 = &p_2162->g_169;
            int32_t *l_639 = &l_426[2][0][3];
            int32_t *l_640 = &l_422[3][1];
            int32_t l_641 = 0x2EBDF094L;
            int32_t *l_642[3][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            uint32_t l_643 = 0xB8A3C272L;
            int64_t l_646 = 0x15BBD0758725E32BL;
            int8_t *l_662 = (void*)0;
            int8_t *l_663 = (void*)0;
            int8_t *l_664 = &p_2162->g_125;
            uint8_t *l_665 = &p_2162->g_627[3][5][1];
            union U2 **l_679 = &l_138;
            uint8_t l_698 = 0x29L;
            int i, j;
            for (p_2162->g_492 = 14; (p_2162->g_492 > 58); ++p_2162->g_492)
            { /* block id: 271 */
                uint32_t l_582 = 0UL;
                uint8_t *l_584 = &l_391;
                int32_t *l_585 = &l_424;
                uint64_t *l_602 = &p_2162->g_492;
                (*l_202) = (p_2162->g_48.f0 ^ (((((*l_584) = (safe_mul_func_uint16_t_u_u(p_2162->g_533, ((*l_358) = (p_50.f0 | (safe_lshift_func_uint8_t_u_u(((*l_314) != (void*)0), ((safe_lshift_func_uint8_t_u_u(p_2162->g_492, 3)) && (safe_div_func_uint16_t_u_u((((safe_div_func_int8_t_s_s((((((p_50.f0 != (safe_div_func_int8_t_s_s(((safe_unary_minus_func_uint8_t_u((safe_rshift_func_int16_t_s_u((safe_add_func_int64_t_s_s((safe_mul_func_int8_t_s_s(l_582, 0x43L)), 18446744073709551615UL)), (*l_202))))) >= p_50.f0), l_583))) & p_2162->g_22[0][1][3]) ^ (-1L)) > p_50.f0) & p_50.f0), p_50.f0)) < p_2162->g_144) , 0x94B8L), l_582)))))))))) ^ p_50.f0) , (void*)0) != &l_138));
                l_585 = l_585;
                for (p_50.f0 = 0; (p_50.f0 < (-6)); p_50.f0--)
                { /* block id: 278 */
                    int32_t **l_618 = &p_2162->g_95[2];
                    for (p_2162->g_536 = 27; (p_2162->g_536 > (-3)); p_2162->g_536 = safe_sub_func_int64_t_s_s(p_2162->g_536, 4))
                    { /* block id: 281 */
                        union U3 *l_605[8] = {&p_2162->g_607,&p_2162->g_608,&p_2162->g_607,&p_2162->g_607,&p_2162->g_608,&p_2162->g_607,&p_2162->g_607,&p_2162->g_608};
                        union U3 **l_609 = (void*)0;
                        union U3 **l_610 = &l_539;
                        int32_t ***l_619 = &l_517;
                        int32_t *l_620 = &p_2162->g_283;
                        int i;
                        (*l_202) = (safe_div_func_int64_t_s_s(((*l_622) |= (safe_mul_func_int8_t_s_s((((safe_div_func_int32_t_s_s((safe_div_func_uint16_t_u_u((1L || (safe_mod_func_int16_t_s_s((safe_sub_func_int8_t_s_s((((l_602 == l_491) , GROUP_DIVERGE(1, 1)) , (safe_mul_func_int8_t_s_s((!((((((*l_610) = l_605[0]) == (p_2162->g_625[3] = (func_51((~((((*l_620) = (safe_div_func_uint64_t_u_u((~((safe_div_func_uint16_t_u_u(p_2162->g_22[7][3][1], (p_2162->g_22[4][2][0] && ((*l_358) = ((safe_mod_func_uint16_t_u_u(((l_617 == ((*l_619) = l_618)) <= (func_51((((*l_585) || 1UL) <= 1L), (*p_2162->g_143), &p_2162->g_30, p_50.f0, p_2162) , (*p_2162->g_143))), p_50.f0)) < 1UL))))) | (*l_585))), p_50.f0))) , 1L) < p_50.f0)), l_621, l_622, p_50.f0, p_2162) , l_623))) , p_50.f0) & (*l_585)) > p_50.f0)), p_2162->g_627[2][1][0]))), (*l_585))), p_50.f0))), p_50.f0)), p_50.f0)) < p_50.f0) <= 2L), 8UL))), GROUP_DIVERGE(1, 1)));
                    }
                    (*l_202) |= 0x25DA7DB1L;
                    if (p_2162->g_283)
                        goto lbl_628;
                }
                for (p_2162->g_533 = 3; (p_2162->g_533 == 24); ++p_2162->g_533)
                { /* block id: 295 */
                    int32_t *l_631 = &l_424;
                    (*l_517) = l_631;
                }
            }
            l_643++;
            l_647--;
            if ((p_50.f0 & (p_50.f0 == ((safe_lshift_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_s(((safe_lshift_func_int8_t_s_u(p_2162->g_169, 4)) & (safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(((p_50.f0 , (p_2162->g_22[4][2][0] <= (*l_633))) & ((*l_664) = (-8L))), p_50.f0)), ((((*l_665) ^= 250UL) ^ GROUP_DIVERGE(1, 1)) != 0x506F4C6965A7039DL)))), (*l_202))) > 1L), p_2162->g_188[1][0][0])) < p_2162->g_30), 7)) , 8L))))
            { /* block id: 303 */
                union U2 **l_680 = &l_138;
                union U2 ***l_681 = (void*)0;
                union U2 ***l_682 = &l_680;
                int32_t l_684 = 7L;
                int32_t l_691 = 1L;
                union U2 l_719 = {7L};
                (*l_634) = ((*l_639) = ((*l_638) = (((*l_202) = (safe_lshift_func_uint8_t_u_s(((safe_sub_func_int64_t_s_s((0x55L | ((0xA86B30C439706E02L <= (safe_rshift_func_uint8_t_u_s((l_672 && ((((safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(p_50.f0, (((p_50.f0 || (l_679 != (l_683 = ((*l_682) = l_680)))) < l_684) < ((1UL != (*l_202)) , 0x67L)))), p_50.f0)) < l_685) != 1UL) , p_50.f0)), p_2162->g_22[2][4][1]))) , 1UL)), l_684)) >= 0x16E5F2DFL), 5))) , (*l_202))));
                --l_686[4];
                if (((*l_202) = (((p_2162->g_191 , (((*l_202) >= p_50.f0) || p_2162->g_316[0].f0)) && ((p_50.f0 != 0x480FE4BEA779115CL) , (((*l_202) <= ((*l_632) = (((*l_665) &= ((+p_50.f0) , p_50.f0)) >= l_691))) , 0x1F7A876C0083C60EL))) & p_50.f0)))
                { /* block id: 314 */
                    int32_t l_697 = 1L;
                    (*l_517) = (*l_517);
                    if ((safe_rshift_func_int8_t_s_u((((*l_485) ^= (p_2162->g_694[2] != (void*)0)) < p_50.f0), ((*l_665) = GROUP_DIVERGE(0, 1)))))
                    { /* block id: 318 */
                        l_698++;
                    }
                    else
                    { /* block id: 320 */
                        return p_50.f0;
                    }
                    for (l_166 = 0; (l_166 <= (-24)); l_166 = safe_sub_func_int16_t_s_s(l_166, 3))
                    { /* block id: 325 */
                        return p_50.f0;
                    }
                }
                else
                { /* block id: 328 */
                    union U2 ***l_717 = &l_279;
                    int32_t l_720 = (-10L);
                    for (l_391 = 3; (l_391 < 20); l_391 = safe_add_func_int32_t_s_s(l_391, 2))
                    { /* block id: 331 */
                        uint64_t **l_705[1];
                        union U2 ****l_718 = &l_681;
                        int32_t l_723 = 0x03970C67L;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_705[i] = &p_2162->g_143;
                        (*l_632) &= (((void*)0 == l_705[0]) || (safe_lshift_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(((*l_358) = ((safe_sub_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u((&p_2162->g_257 != &p_2162->g_257), (safe_unary_minus_func_int8_t_s((safe_add_func_int64_t_s_s((l_717 != ((*l_718) = &p_2162->g_256)), 0x5DB19A18F6CE6401L)))))) == (l_719 , ((-1L) > GROUP_DIVERGE(0, 1)))), p_50.f0)) ^ GROUP_DIVERGE(1, 1))), l_720)), 10)));
                        p_2162->g_95[6] = ((safe_rshift_func_uint16_t_u_u(((*l_202) && l_723), 13)) , &p_2162->g_128[0][1]);
                        (*l_633) ^= (safe_unary_minus_func_uint32_t_u(9UL));
                        if (p_50.f0)
                            continue;
                    }
                }
            }
            else
            { /* block id: 340 */
                return p_2162->g_492;
            }
        }
        (*l_517) = &l_426[4][0][6];
    }
    if (((l_725 != l_725) | (safe_mod_func_int32_t_s_s(((safe_sub_func_int32_t_s_s((-1L), ((p_50.f0 , l_730) != &l_731))) ^ ((safe_mod_func_int16_t_s_s((0xECD9L & (*l_202)), p_2162->g_313)) , 7L)), 1L))))
    { /* block id: 346 */
        uint8_t l_736 = 1UL;
        for (p_2162->g_30 = 0; (p_2162->g_30 >= (-22)); p_2162->g_30--)
        { /* block id: 349 */
            uint8_t l_737 = 0x9CL;
            if (l_736)
                break;
            for (p_2162->g_533 = 0; (p_2162->g_533 <= 0); p_2162->g_533 += 1)
            { /* block id: 353 */
                int i, j;
                (*l_725) = (*l_725);
                l_737--;
                for (p_2162->g_536 = 0; (p_2162->g_536 >= 0); p_2162->g_536 -= 1)
                { /* block id: 358 */
                    int32_t **l_740 = &p_2162->g_95[6];
                    int i, j, k;
                    (*l_740) = &l_424;
                    if (p_2162->g_188[(p_2162->g_536 + 1)][p_2162->g_536][(p_2162->g_533 + 4)])
                        continue;
                    (*l_202) = 0x14D2A246L;
                    for (l_736 = 0; (l_736 <= 0); l_736 += 1)
                    { /* block id: 364 */
                        return l_736;
                    }
                }
            }
            for (p_2162->g_191 = 0; p_2162->g_191 < 10; p_2162->g_191 += 1)
            {
                for (l_421 = 0; l_421 < 5; l_421 += 1)
                {
                    for (p_2162->g_533 = 0; p_2162->g_533 < 5; p_2162->g_533 += 1)
                    {
                        p_2162->g_22[p_2162->g_191][l_421][p_2162->g_533] = 0UL;
                    }
                }
            }
        }
        (*l_202) = (safe_sub_func_uint16_t_u_u(l_736, 0UL));
    }
    else
    { /* block id: 372 */
        int32_t *l_743[4][4] = {{&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4]},{&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4]},{&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4]},{&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4],&l_426[3][0][4]}};
        int32_t *l_770 = &l_287;
        uint32_t l_812 = 0xD2D4E2ABL;
        uint64_t *l_849 = &p_2162->g_144;
        int64_t l_870 = 0x62884301535C494EL;
        int32_t **l_874[2];
        uint32_t l_880[4];
        int i, j;
        for (i = 0; i < 2; i++)
            l_874[i] = (void*)0;
        for (i = 0; i < 4; i++)
            l_880[i] = 0x5A34FD13L;
        for (l_190 = 0; (l_190 <= 4); l_190 += 1)
        { /* block id: 375 */
            int64_t l_760 = 6L;
            int32_t l_766 = 0x455073B3L;
            int32_t l_771 = 0x71B046E6L;
            int32_t l_772 = (-1L);
            int32_t l_780 = 1L;
            int32_t l_785 = 0L;
            uint16_t l_789 = 0xD11BL;
            uint16_t *l_799 = &p_2162->g_22[6][0][2];
            int32_t l_827 = 0x6A7C0925L;
            int32_t l_831 = (-2L);
            for (l_423 = 0; (l_423 <= 4); l_423 += 1)
            { /* block id: 378 */
                uint8_t *l_754 = &p_2162->g_627[2][1][0];
                uint32_t *l_759[4][6][1] = {{{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]}},{{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]}},{{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]}},{{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]},{&l_686[4]}}};
                int64_t *l_765 = &l_496;
                int64_t **l_764 = &l_765;
                int64_t ***l_763 = &l_764;
                int16_t *l_767 = &p_2162->g_191;
                int32_t l_775 = 0x6903D5F6L;
                int32_t l_778 = 0L;
                int32_t l_782[1][9][8] = {{{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L},{0x541EDF5EL,0x07F6741DL,0x14C9F329L,0x4F90FF82L,0x14C9F329L,0x07F6741DL,0x541EDF5EL,1L}}};
                int i, j, k;
                l_743[3][1] = &p_2162->g_169;
                (*l_202) = ((p_50.f0 == ((safe_div_func_int16_t_s_s(((*l_767) = (safe_lshift_func_int8_t_s_s(0L, (safe_add_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_u((p_2162->g_193 <= (safe_mul_func_uint8_t_u_u(((*l_754)--), ((safe_add_func_int32_t_s_s((-2L), (p_50.f0 , (l_760 = p_50.f0)))) > (safe_sub_func_uint32_t_u_u(4294967295UL, (l_763 == (((p_50.f0 , p_50.f0) >= 4294967294UL) , &p_2162->g_400)))))))), p_50.f0)) != l_766), FAKE_DIVERGE(p_2162->group_2_offset, get_group_id(2), 10)))))), l_766)) > 1UL)) < l_768);
                for (l_391 = 0; (l_391 <= 4); l_391 += 1)
                { /* block id: 386 */
                    int32_t *l_769 = &l_766;
                    int32_t l_773 = (-2L);
                    int32_t l_774 = 1L;
                    int32_t l_776 = 0x30A8B52FL;
                    int32_t l_779 = 0L;
                    int64_t l_781 = 8L;
                    int32_t l_783[10] = {(-1L),0x3385A753L,(-1L),(-1L),0x3385A753L,(-1L),(-1L),0x3385A753L,(-1L),(-1L)};
                    uint64_t l_786 = 0xD9149116C9976120L;
                    int i;
                    (*l_725) = p_2162->g_625[3];
                    for (p_2162->g_109 = 0; (p_2162->g_109 <= 4); p_2162->g_109 += 1)
                    { /* block id: 390 */
                        int32_t l_777[1][3];
                        int16_t l_784 = 0x4F3AL;
                        int32_t *l_792[6][5][6] = {{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}},{{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]},{&l_776,&l_782[0][2][5],&l_287,&l_779,&l_777[0][2],&l_782[0][3][0]}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_777[i][j] = 1L;
                        }
                        l_770 = l_769;
                        ++l_786;
                        ++l_789;
                        l_792[2][3][4] = &p_2162->g_128[0][0];
                    }
                }
            }
        }
        (*l_202) &= (((p_2162->g_492 = l_870) , &l_426[2][0][3]) == &p_2162->g_128[0][0]);
        p_2162->g_95[3] = ((safe_mul_func_int16_t_s_s((p_50.f0 , ((void*)0 != (*l_314))), ((p_2162->g_873 , &l_145[0][2]) != (void*)0))) , &l_424);
        for (l_424 = 0; (l_424 > 21); l_424 = safe_add_func_int32_t_s_s(l_424, 6))
        { /* block id: 443 */
            union U2 l_877 = {0x69L};
            int64_t *l_881 = &p_2162->g_30;
            uint32_t **l_884 = (void*)0;
            int32_t l_889 = 1L;
            if (p_50.f0)
                break;
            (*l_202) = (l_889 |= ((l_877 , (safe_lshift_func_uint16_t_u_s(((((*l_881) = l_880[2]) , (((*p_2162->g_143) = (!(*p_2162->g_143))) , ((safe_add_func_uint8_t_u_u(((void*)0 == l_884), p_2162->g_144)) , (-1L)))) <= (safe_lshift_func_uint16_t_u_s(((p_50.f0 & (safe_sub_func_uint8_t_u_u((*l_202), 255UL))) , p_50.f0), 9))), p_50.f0))) , p_50.f0));
            for (l_420 = 2; (l_420 >= 0); l_420 -= 1)
            { /* block id: 451 */
                int i;
                (*l_202) &= (l_686[(l_420 + 1)] , (((func_51(p_2162->g_832, (l_877 , l_686[(l_420 + 1)]), &p_2162->g_30, (((safe_mul_func_int16_t_s_s(p_2162->g_109, (p_2162->g_627[2][1][0] > (p_50.f0 <= p_50.f0)))) | p_50.f0) <= p_50.f0), p_2162) , l_877.f0) <= 0x7CB79479F377F6A5L) <= p_50.f0));
                return p_2162->g_313;
            }
        }
    }
lbl_919:
    (*l_918) |= ((safe_mul_func_int8_t_s_s((((safe_div_func_int8_t_s_s(((*l_202) , ((((*l_916) = (safe_mod_func_int8_t_s_s(0L, ((((((*l_202) >= ((*l_202) < (p_2162->g_22[1][4][2] |= ((((*l_898) = &p_2162->g_492) != &p_2162->g_492) || (safe_add_func_int8_t_s_s(0x05L, (safe_div_func_int8_t_s_s((!(safe_unary_minus_func_uint16_t_u((*l_202)))), (safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_u(((safe_mul_func_uint8_t_u_u(((p_2162->g_912 = (void*)0) == &p_2162->g_913[0][0][2]), (*l_202))) && 1L), p_2162->g_316[0].f0)), 0x0A4498F9L)))))))))) <= l_915) <= p_2162->g_861.f0) || (*l_202)) , p_2162->g_873)))) == 0x6922L) == 0xD47236A9L)), p_50.f0)) , p_50.f0) | p_50.f0), 0x32L)) && p_50.f0);
    if (p_50.f0)
    { /* block id: 463 */
        int64_t l_924[3];
        uint64_t **l_925 = &p_2162->g_143;
        uint64_t *l_926 = (void*)0;
        union U2 ***l_927 = &l_279;
        int32_t l_937[6][7][6] = {{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}},{{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL},{0x4F995287L,(-2L),1L,0x088C627AL,(-2L),0x088C627AL}}};
        uint32_t *l_938 = (void*)0;
        uint32_t *l_939 = &l_686[1];
        int8_t *l_940 = &p_2162->g_316[0].f0;
        int32_t **l_944[9] = {&l_202,&l_202,&l_202,&l_202,&l_202,&l_202,&l_202,&l_202,&l_202};
        int32_t ***l_943 = &l_944[7];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_924[i] = (-6L);
        (*l_202) |= (safe_div_func_int32_t_s_s(p_50.f0, (~(safe_mul_func_uint8_t_u_u(l_924[2], ((*l_940) = (p_2162->g_188[1][0][0] && (((*l_939) = ((((*l_925) = &l_429) == l_926) & (0x0ED2E18871BA9771L ^ (l_937[0][0][3] = ((((((l_927 != ((((p_2162->g_109 = (safe_sub_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((p_2162->g_188[1][0][0] ^ (((safe_unary_minus_func_uint64_t_u((safe_mul_func_int16_t_s_s(((GROUP_DIVERGE(2, 1) && ((safe_rshift_func_int8_t_s_s((*l_918), 5)) != FAKE_DIVERGE(p_2162->local_0_offset, get_local_id(0), 10))) > p_2162->g_818), p_2162->g_533)))) , 7L) , p_50.f0)), p_50.f0)), p_50.f0))) && 0xFAF1FED2E646AAE3L) , (*p_2162->g_257)) , &p_2162->g_256)) >= l_924[0]) > p_2162->g_873) || 4294967295UL) & l_924[1]) < (*l_918)))))) , 0x68L))))))));
        if (((*l_314) == (void*)0))
        { /* block id: 470 */
            int32_t **l_941 = &l_202;
            (*l_941) = &l_426[2][0][5];
        }
        else
        { /* block id: 472 */
            int32_t ***l_946 = &l_944[7];
            int32_t ****l_945 = &l_946;
            int32_t *l_955 = (void*)0;
            int32_t *l_956 = (void*)0;
            int32_t *l_957 = &p_2162->g_958;
            int16_t *l_959 = &p_2162->g_191;
            int8_t l_976 = (-1L);
            union U2 ***l_982 = &l_279;
            int32_t l_997[1][1][5];
            uint64_t l_1003[7][1];
            union U3 *l_1018 = &p_2162->g_1019;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 5; k++)
                        l_997[i][j][k] = 0x06C10AF8L;
                }
            }
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1003[i][j] = 6UL;
            }
            if ((safe_unary_minus_func_int16_t_s(((*l_959) = ((((*l_939) = (l_943 != ((*l_945) = &l_944[3]))) >= ((safe_mod_func_int32_t_s_s(((-9L) > ((((*l_957) |= (p_50.f0 ^ (((safe_rshift_func_int8_t_s_u((safe_mod_func_int64_t_s_s(((p_50.f0 && ((safe_mul_func_uint16_t_u_u(((void*)0 != &p_2162->g_625[5]), (&p_2162->g_917 != (void*)0))) >= p_2162->g_98.f0)) | p_50.f0), 0xF9FC1AB4A8BA55CDL)), p_2162->g_164.f0)) != p_2162->g_627[0][1][0]) , p_2162->g_627[2][1][0]))) , (void*)0) != (void*)0)), p_50.f0)) ^ 0x641951696AF9FA07L)) > FAKE_DIVERGE(p_2162->local_2_offset, get_local_id(2), 10))))))
            { /* block id: 477 */
                int16_t l_975 = 0x574AL;
                int32_t ****l_987 = &l_943;
                int32_t l_998 = 0x43516343L;
                int32_t l_999 = 0x388EB381L;
                int32_t l_1000 = (-3L);
                int32_t l_1002[10][9][2] = {{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}},{{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L},{0L,0x7C6EFDC7L}}};
                int i, j, k;
                for (p_2162->g_492 = 0; (p_2162->g_492 < 2); ++p_2162->g_492)
                { /* block id: 480 */
                    int16_t l_972 = 0L;
                    int32_t ****l_995 = &l_946;
                    int32_t l_1001[5][4] = {{0x427881F7L,0x427881F7L,0L,0x63E04FE9L},{0x427881F7L,0x427881F7L,0L,0x63E04FE9L},{0x427881F7L,0x427881F7L,0L,0x63E04FE9L},{0x427881F7L,0x427881F7L,0L,0x63E04FE9L},{0x427881F7L,0x427881F7L,0L,0x63E04FE9L}};
                    int i, j;
                    if (((((*l_940) &= (safe_lshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s((&p_2162->g_95[6] != &p_2162->g_95[1]), (safe_mod_func_uint16_t_u_u((p_50.f0 >= (((((safe_div_func_int8_t_s_s((p_2162->g_313 , (safe_rshift_func_int8_t_s_s(p_50.f0, (l_972 , ((+(+(safe_rshift_func_int8_t_s_s(p_50.f0, 4)))) == (p_2162->g_536 <= ((*l_918) = (0x63L ^ FAKE_DIVERGE(p_2162->local_1_offset, get_local_id(1), 10))))))))), p_50.f0)) , (*p_2162->g_256)) != (*p_2162->g_256)) ^ p_2162->g_188[1][0][3]) < l_975)), p_2162->g_188[0][0][3])))), p_2162->g_193))) & p_50.f0) > 0x01L))
                    { /* block id: 483 */
                        (*l_918) = l_976;
                    }
                    else
                    { /* block id: 485 */
                        uint8_t *l_977 = &l_768;
                        int32_t l_994 = 1L;
                        int32_t l_996 = 0L;
                        (*l_918) ^= ((void*)0 == l_977);
                        (*l_202) = ((~(((safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(((void*)0 != l_982), (((safe_div_func_uint64_t_u_u((*l_202), (l_996 ^= (safe_add_func_uint64_t_u_u(((l_987 != (((0x33210701C4FF5BACL >= (safe_add_func_uint32_t_u_u((9UL || (safe_add_func_int32_t_s_s(0x6AC8ADC5L, ((safe_div_func_int16_t_s_s(l_994, 0x48B2L)) & p_2162->g_128[0][1])))), p_50.f0))) , l_994) , l_995)) , p_50.f0), p_50.f0))))) == p_50.f0) == l_975))), (*p_2162->g_143))) & p_2162->g_191) & p_50.f0)) , p_50.f0);
                        (*l_202) = ((*l_918) = 0x3D80CEE9L);
                        --l_1003[4][0];
                    }
                }
            }
            else
            { /* block id: 494 */
                int32_t l_1022[10] = {(-8L),0x6DCA343BL,(-8L),(-8L),0x6DCA343BL,(-8L),(-8L),0x6DCA343BL,(-8L),(-8L)};
                int i;
                l_918 = (((safe_add_func_int64_t_s_s(p_50.f0, (safe_div_func_int8_t_s_s((p_2162->g_33[1][2][1] & (((((((*l_918) = ((*p_2162->g_143)++)) <= (safe_lshift_func_int8_t_s_s((247UL & (((void*)0 != &p_2162->g_625[3]) , (((safe_sub_func_int32_t_s_s(p_50.f0, ((safe_lshift_func_int16_t_s_s(((((*l_725) = l_1018) != p_2162->g_1020) , p_2162->g_193), p_50.f0)) , p_50.f0))) ^ p_2162->g_873) , 7L))), 0))) ^ p_50.f0) >= 0x5AB7L) , (*p_2162->g_143)) != l_1022[7])), 0x3CL)))) && (*l_202)) , &p_2162->g_128[0][0]);
            }
            (*l_918) ^= p_50.f0;
            return p_50.f0;
        }
    }
    else
    { /* block id: 503 */
        uint8_t l_1025 = 0x43L;
        uint64_t **l_1026 = &l_899;
        int64_t *l_1032 = &p_2162->g_1033[8];
        int16_t *l_1035 = (void*)0;
        int16_t *l_1036[1][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t **l_1037 = &l_918;
        int32_t l_1050[10] = {0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L,0x4160EF06L};
        union U2 **l_1079 = (void*)0;
        int i, j;
        (*l_1037) = (((*l_918) || ((FAKE_DIVERGE(p_2162->local_0_offset, get_local_id(0), 10) | (p_2162->g_22[4][2][0] == (safe_add_func_int64_t_s_s(l_1025, ((((*l_202) &= (((*l_918) = 0x7A326867L) != (l_1026 != (((*l_1032) = (safe_unary_minus_func_uint8_t_u((((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(l_1025, p_2162->g_492)), GROUP_DIVERGE(2, 1))) <= (p_2162->g_22[4][2][0] == ((p_2162->g_861.f0 != 255UL) ^ p_2162->g_536))) , 246UL)))) , l_1034)))) | 6UL) , 18446744073709551615UL))))) , p_50.f0)) , (void*)0);
        (*l_202) = 1L;
        for (p_2162->g_30 = 0; (p_2162->g_30 < (-8)); p_2162->g_30--)
        { /* block id: 511 */
            int16_t l_1042[4][4][10] = {{{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL}},{{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL}},{{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL}},{{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL},{0x096EL,0x0EC9L,0x096EL,5L,9L,0x0A1FL,(-9L),0x6D09L,0x3E00L,0x3F3EL}}};
            int32_t *l_1045 = &p_2162->g_958;
            int64_t *l_1046 = &p_2162->g_30;
            int32_t l_1047 = 0x5A6504DEL;
            int8_t *l_1068 = (void*)0;
            int32_t *l_1070 = (void*)0;
            int32_t *l_1071 = &l_420;
            int i, j, k;
            if ((safe_add_func_uint64_t_u_u(l_1042[3][2][7], ((0x8AF2L >= (safe_div_func_uint32_t_u_u(4294967295UL, 4294967286UL))) == (((4294967295UL > ((FAKE_DIVERGE(p_2162->global_2_offset, get_global_id(2), 10) , (p_50.f0 >= 0x42B7569BD76A737DL)) & ((((*l_1045) = 0x6C1B4422L) , l_1046) != l_1046))) == 1UL) || p_50.f0)))))
            { /* block id: 513 */
                if (p_50.f0)
                    break;
            }
            else
            { /* block id: 515 */
                int32_t *l_1048 = &p_2162->g_84;
                int32_t *l_1049[9][8][1] = {{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}},{{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421},{&l_421}}};
                uint32_t l_1051 = 0UL;
                int i, j, k;
                l_1051--;
            }
            (*l_1071) |= ((p_2162->g_33[2][6][1] & (+0UL)) >= (((l_1042[3][2][7] && (1L < (-1L))) > ((safe_mod_func_int64_t_s_s(((*l_202) = ((safe_mod_func_uint16_t_u_u(((l_1047 = (((p_2162->g_316[0].f1 = ((safe_mul_func_int8_t_s_s(((p_50.f0 != 0x28F4332AL) , (GROUP_DIVERGE(0, 1) , (safe_lshift_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((GROUP_DIVERGE(1, 1) || (p_50.f0 , (*l_202))), (-1L))), (*l_202))))), p_2162->g_818)) & p_50.f0)) ^ (-7L)) >= 0UL)) > p_50.f0), (*l_202))) <= p_50.f0)), p_50.f0)) ^ l_1069)) , 0L));
            if (l_1072)
                continue;
            atomic_or(&p_2162->l_atomic_reduction[0], ((safe_mul_func_uint16_t_u_u(((safe_add_func_int16_t_s_s((~(safe_sub_func_uint8_t_u_u(p_50.f0, (((*l_202) = (((*l_202) && ((void*)0 != l_1045)) , (*l_1071))) | (((*l_916) ^= (((((*l_731) = &p_2162->g_257) != l_1079) , ((!(((p_2162->g_188[1][0][0] , 0UL) ^ p_50.f0) > 0x581367FFL)) > p_50.f0)) > 1L)) , p_50.f0))))), p_2162->g_492)) & p_50.f0), p_50.f0)) , 0x77D52AF8L));
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_2162->v_collective += p_2162->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
    }
    return p_2162->g_30;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
union U2  func_51(int32_t  p_52, uint64_t  p_53, int64_t * p_54, int64_t  p_55, struct S4 * p_2162)
{ /* block id: 15 */
    union U2 l_86 = {-1L};
    return l_86;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S4 c_2163;
    struct S4* p_2162 = &c_2163;
    struct S4 c_2164 = {
        {{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}},{{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L},{0xA339L,0x32C2L,0xA8CEL,65535UL,0xA239L}}}, // p_2162->g_22
        (-4L), // p_2162->g_30
        {{{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL}},{{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL}},{{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL}},{{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL},{4UL,4294967294UL,0x7E8D9F6CL}}}, // p_2162->g_33
        {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}, // p_2162->g_40
        {0L}, // p_2162->g_48
        0x0D6E721EL, // p_2162->g_84
        {&p_2162->g_84,&p_2162->g_84,&p_2162->g_84,&p_2162->g_84,&p_2162->g_84,&p_2162->g_84,&p_2162->g_84}, // p_2162->g_95
        {0x2CL}, // p_2162->g_98
        0UL, // p_2162->g_109
        (-4L), // p_2162->g_125
        {{7L,7L}}, // p_2162->g_128
        0x9A96AD4EA75E2C04L, // p_2162->g_144
        &p_2162->g_144, // p_2162->g_143
        {8L}, // p_2162->g_164
        &p_2162->g_164, // p_2162->g_163
        &p_2162->g_163, // p_2162->g_162
        5L, // p_2162->g_169
        {{{0x3B30L,0x3B30L,0x3B30L,0x3B30L,0x3B30L}},{{0x3B30L,0x3B30L,0x3B30L,0x3B30L,0x3B30L}}}, // p_2162->g_188
        6L, // p_2162->g_191
        0UL, // p_2162->g_193
        &p_2162->g_48, // p_2162->g_257
        &p_2162->g_257, // p_2162->g_256
        0x4367E731L, // p_2162->g_283
        0x4196BDB2L, // p_2162->g_313
        {{0x79L},{0x79L},{0x79L}}, // p_2162->g_316
        1UL, // p_2162->g_360
        0x50BBL, // p_2162->g_361
        {&p_2162->g_360,&p_2162->g_360,&p_2162->g_360,&p_2162->g_360,&p_2162->g_360,&p_2162->g_360,&p_2162->g_360,&p_2162->g_360,&p_2162->g_360}, // p_2162->g_359
        (void*)0, // p_2162->g_400
        &p_2162->g_400, // p_2162->g_399
        18446744073709551612UL, // p_2162->g_492
        1L, // p_2162->g_533
        (-6L), // p_2162->g_536
        {{0x3FA337508E9E75B3L}}, // p_2162->g_540
        {{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}},{{7L}}}, // p_2162->g_551
        {{0x4A549E4FBF5BA8C1L}}, // p_2162->g_606
        {{0x62B8467F0B249E15L}}, // p_2162->g_607
        {{0x6CF98BE9E815057BL}}, // p_2162->g_608
        {{6L}}, // p_2162->g_624
        {{0x541DA835EF8C339CL}}, // p_2162->g_626
        {&p_2162->g_626,&p_2162->g_626,&p_2162->g_626,&p_2162->g_626,&p_2162->g_626,&p_2162->g_626}, // p_2162->g_625
        {{{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL}},{{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL}},{{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL}},{{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL},{0x6EL,255UL}}}, // p_2162->g_627
        {-2L}, // p_2162->g_695
        {{0x06L},{0x06L},{0x06L},{0x06L}}, // p_2162->g_696
        {&p_2162->g_695,&p_2162->g_695,&p_2162->g_695,&p_2162->g_695,&p_2162->g_695,&p_2162->g_695}, // p_2162->g_694
        0L, // p_2162->g_818
        0x12793A4132389025L, // p_2162->g_832
        {0x40L}, // p_2162->g_861
        0x3AD9C336L, // p_2162->g_873
        (void*)0, // p_2162->g_914
        {{{(void*)0,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914},{(void*)0,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914},{(void*)0,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914},{(void*)0,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914,&p_2162->g_914}}}, // p_2162->g_913
        &p_2162->g_913[0][0][2], // p_2162->g_912
        65535UL, // p_2162->g_917
        4L, // p_2162->g_958
        {{0x1DF8122826E6C138L}}, // p_2162->g_1019
        {{0x47A5E1EDF98D9785L}}, // p_2162->g_1021
        &p_2162->g_1021, // p_2162->g_1020
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_2162->g_1033
        {{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0},{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0},{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0},{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0},{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0},{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0},{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0},{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0},{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0},{&p_2162->g_624.f0,&p_2162->g_624.f0,(void*)0,&p_2162->g_551[5].f0,&p_2162->g_624.f0,&p_2162->g_551[5].f0}}, // p_2162->g_1083
        {&p_2162->g_1083[3][4],(void*)0,&p_2162->g_1083[3][4],&p_2162->g_1083[3][4],(void*)0,&p_2162->g_1083[3][4],&p_2162->g_1083[3][4]}, // p_2162->g_1082
        {&p_2162->g_169,&p_2162->g_84,&p_2162->g_169,&p_2162->g_169,&p_2162->g_84,&p_2162->g_169,&p_2162->g_169}, // p_2162->g_1108
        (void*)0, // p_2162->g_1109
        &p_2162->g_128[0][0], // p_2162->g_1110
        {{{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L}},{{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L}},{{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L}},{{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L},{0x6CBE6199CA5D8495L}}}, // p_2162->g_1128
        &p_2162->g_695.f0, // p_2162->g_1137
        &p_2162->g_1137, // p_2162->g_1136
        &p_2162->g_128[0][1], // p_2162->g_1149
        (void*)0, // p_2162->g_1153
        &p_2162->g_169, // p_2162->g_1154
        &p_2162->g_95[6], // p_2162->g_1156
        {1L}, // p_2162->g_1159
        &p_2162->g_958, // p_2162->g_1189
        &p_2162->g_1189, // p_2162->g_1188
        &p_2162->g_1188, // p_2162->g_1187
        0x3EL, // p_2162->g_1205
        &p_2162->g_95[1], // p_2162->g_1223
        {8L}, // p_2162->g_1224
        {1L}, // p_2162->g_1225
        &p_2162->g_128[0][1], // p_2162->g_1228
        {{{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}}},{{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}}},{{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}}},{{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}}},{{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}}},{{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}},{{-10L},{0x4BL},{0x4BL},{-10L}}}}, // p_2162->g_1243
        0x4647L, // p_2162->g_1257
        0x851BCBBAL, // p_2162->g_1264
        {0L}, // p_2162->g_1282
        0x4FL, // p_2162->g_1325
        4294967295UL, // p_2162->g_1333
        {{{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L}},{{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L}},{{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L}},{{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L}},{{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L}},{{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L}},{{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L},{0x1F5B82C8L,8L,(-1L),0L,8L,0L}}}, // p_2162->g_1339
        0x6BA13AEEL, // p_2162->g_1340
        {{18446744073709551615UL,0UL},{18446744073709551615UL,0UL},{18446744073709551615UL,0UL},{18446744073709551615UL,0UL},{18446744073709551615UL,0UL},{18446744073709551615UL,0UL},{18446744073709551615UL,0UL},{18446744073709551615UL,0UL},{18446744073709551615UL,0UL},{18446744073709551615UL,0UL}}, // p_2162->g_1352
        &p_2162->g_1352[1][0], // p_2162->g_1351
        &p_2162->g_1351, // p_2162->g_1350
        {0L}, // p_2162->g_1355
        &p_2162->g_1159, // p_2162->g_1356
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2162->g_1378
        &p_2162->g_1378[5], // p_2162->g_1377
        (void*)0, // p_2162->g_1379
        {{-1L}}, // p_2162->g_1382
        {-1L}, // p_2162->g_1389
        {{&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0},{&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0},{&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0},{&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0},{&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0},{&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0},{&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0},{&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0},{&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0,&p_2162->g_626.f0,&p_2162->g_608.f0,&p_2162->g_626.f0}}, // p_2162->g_1390
        &p_2162->g_95[0], // p_2162->g_1396
        &p_2162->g_1396, // p_2162->g_1395
        &p_2162->g_1395, // p_2162->g_1394
        {0x5557965D524DC2CAL}, // p_2162->g_1417
        0x3351318D73E4C7C8L, // p_2162->g_1425
        &p_2162->g_1425, // p_2162->g_1424
        &p_2162->g_1424, // p_2162->g_1423
        &p_2162->g_1423, // p_2162->g_1422
        {{-3L}}, // p_2162->g_1433
        4294967295UL, // p_2162->g_1441
        {3L}, // p_2162->g_1444
        {{{0x36FE470F816CFF0BL}},{{0x36FE470F816CFF0BL}}}, // p_2162->g_1457
        (void*)0, // p_2162->g_1467
        (void*)0, // p_2162->g_1468
        &p_2162->g_1083[2][0], // p_2162->g_1469
        &p_2162->g_128[0][0], // p_2162->g_1476
        {&p_2162->g_1476,&p_2162->g_1476,&p_2162->g_1476,&p_2162->g_1476}, // p_2162->g_1475
        &p_2162->g_1476, // p_2162->g_1477
        {{-1L}}, // p_2162->g_1562
        {{0x755E62214C0FDB29L}}, // p_2162->g_1586
        {{0x3C161D4088330B33L}}, // p_2162->g_1595
        {{{0x1EL},{0x1EL},{0x1EL}},{{0x1EL},{0x1EL},{0x1EL}},{{0x1EL},{0x1EL},{0x1EL}},{{0x1EL},{0x1EL},{0x1EL}},{{0x1EL},{0x1EL},{0x1EL}},{{0x1EL},{0x1EL},{0x1EL}},{{0x1EL},{0x1EL},{0x1EL}},{{0x1EL},{0x1EL},{0x1EL}}}, // p_2162->g_1615
        {{0x36F948348B7CC36BL}}, // p_2162->g_1625
        &p_2162->g_832, // p_2162->g_1633
        {{{{5L}}},{{{5L}}},{{{5L}}},{{{5L}}},{{{5L}}},{{{5L}}}}, // p_2162->g_1642
        &p_2162->g_625[3], // p_2162->g_1666
        &p_2162->g_84, // p_2162->g_1716
        &p_2162->g_533, // p_2162->g_1739
        {0x19L}, // p_2162->g_1776
        {-5L}, // p_2162->g_1797
        0x38DB8A9BL, // p_2162->g_1835
        {0x73CA4A5B9FF61380L}, // p_2162->g_1860
        &p_2162->g_492, // p_2162->g_1929
        255UL, // p_2162->g_1956
        (void*)0, // p_2162->g_1960
        (void*)0, // p_2162->g_2008
        {{&p_2162->g_2008,&p_2162->g_2008},{&p_2162->g_2008,&p_2162->g_2008},{&p_2162->g_2008,&p_2162->g_2008},{&p_2162->g_2008,&p_2162->g_2008},{&p_2162->g_2008,&p_2162->g_2008},{&p_2162->g_2008,&p_2162->g_2008}}, // p_2162->g_2007
        {0x6BBB4AFCFED7C6F0L}, // p_2162->g_2025
        {{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}},{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}},{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}},{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}},{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}},{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}},{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}},{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}},{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}},{{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}},{{-7L},{0x5B360EF7B9C6B382L},{0x4B69A33AE1349419L},{6L}}}}, // p_2162->g_2026
        0xDC9C37AFL, // p_2162->g_2034
        {{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL},{0L,5L,1L,0L,1L,(-1L),(-10L),0x2AL,0x6BL}}, // p_2162->g_2038
        {{0x5925C35DA1870280L}}, // p_2162->g_2044
        {{0x763805F52A438E60L}}, // p_2162->g_2110
        0x557894A5L, // p_2162->g_2111
        {0x56DA73D2D1E40C63L}, // p_2162->g_2112
        {0x65B7813A4B513DD6L}, // p_2162->g_2115
        {{0x2E85249B6448E566L},{0x2E85249B6448E566L},{0x2E85249B6448E566L},{0x2E85249B6448E566L},{0x2E85249B6448E566L},{0x2E85249B6448E566L},{0x2E85249B6448E566L},{0x2E85249B6448E566L},{0x2E85249B6448E566L},{0x2E85249B6448E566L}}, // p_2162->g_2153
        {{0L}}, // p_2162->g_2159
        &p_2162->g_2026[2][3][3], // p_2162->g_2160
        0x69L, // p_2162->g_2161
        0, // p_2162->v_collective
        sequence_input[get_global_id(0)], // p_2162->global_0_offset
        sequence_input[get_global_id(1)], // p_2162->global_1_offset
        sequence_input[get_global_id(2)], // p_2162->global_2_offset
        sequence_input[get_local_id(0)], // p_2162->local_0_offset
        sequence_input[get_local_id(1)], // p_2162->local_1_offset
        sequence_input[get_local_id(2)], // p_2162->local_2_offset
        sequence_input[get_group_id(0)], // p_2162->group_0_offset
        sequence_input[get_group_id(1)], // p_2162->group_1_offset
        sequence_input[get_group_id(2)], // p_2162->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_2163 = c_2164;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2162);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2162->g_22[i][j][k], "p_2162->g_22[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2162->g_30, "p_2162->g_30", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2162->g_33[i][j][k], "p_2162->g_33[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2162->g_40[i], "p_2162->g_40[i]", print_hash_value);

    }
    transparent_crc(p_2162->g_48.f0, "p_2162->g_48.f0", print_hash_value);
    transparent_crc(p_2162->g_84, "p_2162->g_84", print_hash_value);
    transparent_crc(p_2162->g_109, "p_2162->g_109", print_hash_value);
    transparent_crc(p_2162->g_125, "p_2162->g_125", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2162->g_128[i][j], "p_2162->g_128[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2162->g_144, "p_2162->g_144", print_hash_value);
    transparent_crc(p_2162->g_164.f0, "p_2162->g_164.f0", print_hash_value);
    transparent_crc(p_2162->g_169, "p_2162->g_169", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2162->g_188[i][j][k], "p_2162->g_188[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2162->g_191, "p_2162->g_191", print_hash_value);
    transparent_crc(p_2162->g_193, "p_2162->g_193", print_hash_value);
    transparent_crc(p_2162->g_283, "p_2162->g_283", print_hash_value);
    transparent_crc(p_2162->g_313, "p_2162->g_313", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2162->g_316[i].f0, "p_2162->g_316[i].f0", print_hash_value);

    }
    transparent_crc(p_2162->g_360, "p_2162->g_360", print_hash_value);
    transparent_crc(p_2162->g_361, "p_2162->g_361", print_hash_value);
    transparent_crc(p_2162->g_492, "p_2162->g_492", print_hash_value);
    transparent_crc(p_2162->g_533, "p_2162->g_533", print_hash_value);
    transparent_crc(p_2162->g_536, "p_2162->g_536", print_hash_value);
    transparent_crc(p_2162->g_540.f0.f0, "p_2162->g_540.f0.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2162->g_551[i].f0.f0, "p_2162->g_551[i].f0.f0", print_hash_value);

    }
    transparent_crc(p_2162->g_606.f0.f0, "p_2162->g_606.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_607.f0.f0, "p_2162->g_607.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_608.f0.f0, "p_2162->g_608.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_624.f0.f0, "p_2162->g_624.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_626.f0.f0, "p_2162->g_626.f0.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2162->g_627[i][j][k], "p_2162->g_627[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2162->g_695.f0, "p_2162->g_695.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2162->g_696[i].f0, "p_2162->g_696[i].f0", print_hash_value);

    }
    transparent_crc(p_2162->g_818, "p_2162->g_818", print_hash_value);
    transparent_crc(p_2162->g_832, "p_2162->g_832", print_hash_value);
    transparent_crc(p_2162->g_873, "p_2162->g_873", print_hash_value);
    transparent_crc(p_2162->g_917, "p_2162->g_917", print_hash_value);
    transparent_crc(p_2162->g_958, "p_2162->g_958", print_hash_value);
    transparent_crc(p_2162->g_1019.f0.f0, "p_2162->g_1019.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_1021.f0.f0, "p_2162->g_1021.f0.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2162->g_1033[i], "p_2162->g_1033[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2162->g_1128[i][j].f0, "p_2162->g_1128[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2162->g_1159.f0, "p_2162->g_1159.f0", print_hash_value);
    transparent_crc(p_2162->g_1205, "p_2162->g_1205", print_hash_value);
    transparent_crc(p_2162->g_1224.f0, "p_2162->g_1224.f0", print_hash_value);
    transparent_crc(p_2162->g_1225.f0, "p_2162->g_1225.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2162->g_1243[i][j][k].f0, "p_2162->g_1243[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2162->g_1257, "p_2162->g_1257", print_hash_value);
    transparent_crc(p_2162->g_1264, "p_2162->g_1264", print_hash_value);
    transparent_crc(p_2162->g_1282.f0, "p_2162->g_1282.f0", print_hash_value);
    transparent_crc(p_2162->g_1325, "p_2162->g_1325", print_hash_value);
    transparent_crc(p_2162->g_1333, "p_2162->g_1333", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2162->g_1339[i][j][k], "p_2162->g_1339[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2162->g_1340, "p_2162->g_1340", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2162->g_1352[i][j], "p_2162->g_1352[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2162->g_1355.f0, "p_2162->g_1355.f0", print_hash_value);
    transparent_crc(p_2162->g_1382.f0.f0, "p_2162->g_1382.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_1389.f0, "p_2162->g_1389.f0", print_hash_value);
    transparent_crc(p_2162->g_1417.f0, "p_2162->g_1417.f0", print_hash_value);
    transparent_crc(p_2162->g_1425, "p_2162->g_1425", print_hash_value);
    transparent_crc(p_2162->g_1433.f0.f0, "p_2162->g_1433.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_1441, "p_2162->g_1441", print_hash_value);
    transparent_crc(p_2162->g_1444.f0, "p_2162->g_1444.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2162->g_1457[i].f0.f0, "p_2162->g_1457[i].f0.f0", print_hash_value);

    }
    transparent_crc(p_2162->g_1562.f0.f0, "p_2162->g_1562.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_1586.f0.f0, "p_2162->g_1586.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_1595.f0.f0, "p_2162->g_1595.f0.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2162->g_1615[i][j].f0, "p_2162->g_1615[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2162->g_1625.f0.f0, "p_2162->g_1625.f0.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2162->g_1642[i][j].f0.f0, "p_2162->g_1642[i][j].f0.f0", print_hash_value);

        }
    }
    transparent_crc(p_2162->g_1776.f0, "p_2162->g_1776.f0", print_hash_value);
    transparent_crc(p_2162->g_1797.f0, "p_2162->g_1797.f0", print_hash_value);
    transparent_crc(p_2162->g_1835, "p_2162->g_1835", print_hash_value);
    transparent_crc(p_2162->g_1860.f0, "p_2162->g_1860.f0", print_hash_value);
    transparent_crc(p_2162->g_1956, "p_2162->g_1956", print_hash_value);
    transparent_crc(p_2162->g_2025.f0, "p_2162->g_2025.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2162->g_2026[i][j][k].f0, "p_2162->g_2026[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2162->g_2034, "p_2162->g_2034", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2162->g_2038[i][j], "p_2162->g_2038[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2162->g_2044.f0.f0, "p_2162->g_2044.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_2110.f0.f0, "p_2162->g_2110.f0.f0", print_hash_value);
    transparent_crc(p_2162->g_2111, "p_2162->g_2111", print_hash_value);
    transparent_crc(p_2162->g_2112.f0, "p_2162->g_2112.f0", print_hash_value);
    transparent_crc(p_2162->g_2115.f0, "p_2162->g_2115.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2162->g_2153[i].f0, "p_2162->g_2153[i].f0", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2162->g_2159[i].f0, "p_2162->g_2159[i].f0", print_hash_value);

    }
    transparent_crc(p_2162->g_2161, "p_2162->g_2161", print_hash_value);
    transparent_crc(p_2162->v_collective, "p_2162->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
