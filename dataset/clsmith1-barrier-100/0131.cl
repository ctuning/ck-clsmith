// ---fake_divergence ---inter_thread_comm -g 66,43,3 -l 2,1,1
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{1,0}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{0,1}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 131

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int16_t g_6;
    int16_t g_14;
    int16_t *g_13;
    uint64_t g_25;
    int32_t g_82[3][1];
    int32_t *g_84[4][7][4];
    int32_t ** volatile g_83;
    uint64_t *g_91;
    uint64_t **g_90;
    int16_t g_96;
    uint8_t g_98;
    int8_t g_102[7][2][10];
    uint32_t g_113;
    uint16_t g_120;
    int64_t g_136[4][9];
    uint64_t g_141;
    uint32_t g_147;
    int16_t g_188[3][7];
    int16_t g_195;
    int32_t g_197;
    int8_t *g_215;
    uint32_t g_250;
    uint64_t g_259;
    uint64_t *g_267;
    uint16_t g_322;
    int32_t * volatile g_330;
    int32_t ** volatile g_349;
    volatile int32_t g_365;
    volatile uint64_t g_367;
    uint32_t g_418;
    uint32_t * volatile g_456;
    uint64_t g_492;
    uint16_t *g_520;
    uint16_t **g_519;
    uint16_t ***g_518;
    uint8_t g_592;
    int32_t g_619;
    int32_t *g_622;
    uint64_t ***g_627;
    volatile int8_t g_635;
    volatile int32_t g_676[7][2][10];
    int32_t * volatile g_740;
    int32_t * volatile g_864;
    int64_t g_936;
    uint32_t *g_996;
    uint32_t **g_995;
    uint32_t ** volatile * volatile g_994;
    uint32_t *g_1032;
    uint32_t **g_1031;
    int64_t g_1091;
    volatile uint32_t g_1116[3];
    volatile uint32_t *g_1115[1];
    volatile uint32_t ** volatile g_1114;
    volatile uint32_t ** volatile *g_1113[8];
    volatile uint32_t ** volatile **g_1112;
    int32_t *g_1130;
    int32_t **g_1129;
    int32_t ** volatile g_1135;
    int8_t g_1157[3][8][3];
    volatile uint8_t **g_1203;
    int32_t * volatile g_1214;
    int32_t g_1292;
    uint32_t *****g_1308;
    uint32_t ******g_1307;
    volatile uint16_t g_1330[4];
    volatile int16_t g_1371;
    uint8_t **g_1554;
    uint8_t *** volatile g_1553;
    int16_t g_1608;
    uint32_t ***g_1642;
    uint32_t ****g_1641;
    uint16_t g_1683;
    int16_t g_1705[7];
    int32_t ** volatile g_1712;
    int32_t ** volatile g_1731[1][1][6];
    int8_t g_1758;
    int32_t ** volatile g_1819;
    volatile int8_t g_1834[9];
    int32_t ** volatile g_1856;
    int64_t *g_1897;
    int64_t **g_1896;
    int64_t *** volatile g_1895[8];
    int32_t *** volatile g_1900;
    volatile int32_t g_1923;
    volatile int32_t *g_1922;
    volatile int32_t ** volatile g_1921;
    int32_t g_1933;
    int32_t ** volatile g_1946;
    int32_t ** volatile g_1948;
    volatile uint8_t g_2163;
    int32_t ** volatile g_2186[5];
    uint32_t *****g_2214;
    uint32_t ******g_2213;
    int64_t *** volatile g_2219;
    int64_t *** volatile g_2220;
    int32_t ** volatile g_2277[3];
    int32_t ** volatile g_2278;
    int32_t ** volatile g_2343;
    volatile int16_t g_2345[10];
    uint32_t g_2351;
    int32_t ** volatile g_2354[10];
    int32_t ** volatile g_2356;
    int64_t g_2386;
    int8_t g_2387[1];
    int32_t ** volatile g_2389;
    int64_t g_2402;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint16_t  func_1(struct S0 * p_2403);
int8_t  func_18(uint64_t  p_19, int32_t  p_20, int16_t * p_21, uint64_t  p_22, struct S0 * p_2403);
int16_t  func_33(uint64_t * p_34, struct S0 * p_2403);
uint64_t * func_35(uint64_t  p_36, uint32_t  p_37, uint64_t  p_38, uint64_t * p_39, struct S0 * p_2403);
int8_t  func_44(int64_t  p_45, int16_t * p_46, uint16_t  p_47, int64_t  p_48, uint32_t  p_49, struct S0 * p_2403);
uint32_t  func_56(int16_t * p_57, struct S0 * p_2403);
int16_t * func_58(uint8_t  p_59, int8_t  p_60, uint64_t  p_61, int16_t  p_62, struct S0 * p_2403);
uint64_t ** func_67(uint64_t * p_68, int16_t * p_69, uint64_t * p_70, struct S0 * p_2403);
int16_t * func_73(int16_t * p_74, uint64_t * p_75, struct S0 * p_2403);
int16_t * func_76(int64_t  p_77, uint8_t  p_78, struct S0 * p_2403);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2403->g_comm_values p_2403->g_13 p_2403->g_25 p_2403->g_215 p_2403->g_102 p_2403->g_1292 p_2403->g_676 p_2403->g_82 p_2403->g_1933 p_2403->g_492 p_2403->g_1705 p_2403->g_1946 p_2403->g_1922 p_2403->g_1923 p_2403->g_1948
 * writes: p_2403->g_6 p_2403->g_25 p_2403->g_102 p_2403->g_1292 p_2403->g_82 p_2403->g_1933 p_2403->g_936 p_2403->g_96 p_2403->g_492 p_2403->g_113 p_2403->g_250 p_2403->g_622 p_2403->g_1758 p_2403->g_14 p_2403->g_1923 p_2403->g_197 p_2403->g_84
 */
uint16_t  func_1(struct S0 * p_2403)
{ /* block id: 4 */
    int16_t *l_4 = (void*)0;
    int16_t *l_5 = &p_2403->g_6;
    int32_t l_17 = 0x437FC054L;
    uint8_t l_23 = 0x5BL;
    uint64_t *l_24 = &p_2403->g_25;
    int32_t *l_1927 = &p_2403->g_1292;
    int32_t *l_1928 = (void*)0;
    int32_t *l_1929 = &p_2403->g_82[0][0];
    int32_t *l_1930 = (void*)0;
    int32_t *l_1931 = (void*)0;
    int32_t *l_1932 = &p_2403->g_1933;
    int32_t **l_1963 = &p_2403->g_1130;
    int32_t l_1995 = 0x39EBD032L;
    int32_t l_2014 = 0x23358E23L;
    int32_t l_2015 = 0x38E1D687L;
    int32_t l_2016 = 1L;
    int32_t l_2017 = 0x537DBF6BL;
    uint32_t l_2019[4][3];
    uint32_t l_2086 = 0x4A707057L;
    int32_t *l_2088 = &p_2403->g_1933;
    int16_t l_2117 = 0x39C7L;
    int32_t l_2118 = 0x1CD1A505L;
    int32_t l_2120 = 6L;
    uint32_t l_2162 = 0UL;
    int32_t l_2192[4] = {0L,0L,0L,0L};
    uint32_t *****l_2212[4];
    uint32_t ******l_2211 = &l_2212[3];
    uint16_t l_2237 = 0xEA23L;
    int8_t l_2262 = 0x40L;
    int32_t l_2301 = 0L;
    int8_t l_2313 = 1L;
    int32_t l_2340[7] = {0L,0x3311D8C6L,0L,0L,0x3311D8C6L,0L,0L};
    int64_t l_2341 = (-9L);
    int32_t l_2344 = 0x28E490A9L;
    int32_t *l_2382 = &l_2344;
    int i, j;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
            l_2019[i][j] = 0x5A0DB132L;
    }
    for (i = 0; i < 4; i++)
        l_2212[i] = &p_2403->g_1641;
    (*l_1932) &= ((*l_1929) |= (((safe_rshift_func_uint16_t_u_u(((((*l_5) = p_2403->g_comm_values[p_2403->tid]) < (safe_lshift_func_int16_t_s_s(0x6FBAL, (safe_mod_func_int32_t_s_s((safe_rshift_func_int8_t_s_u((p_2403->g_13 == &p_2403->g_14), 0)), ((*l_1927) &= (safe_mul_func_int16_t_s_s((4294967290UL & ((((0L ^ l_17) , ((*p_2403->g_215) = (~func_18(((*l_24) &= ((l_23 , (void*)0) == l_4)), l_17, l_4, p_2403->g_comm_values[p_2403->tid], p_2403)))) != l_17) <= 18446744073709551610UL)), l_23)))))))) , (*l_1927)), GROUP_DIVERGE(2, 1))) | p_2403->g_676[1][1][2]) & l_23));
    for (p_2403->g_936 = 6; (p_2403->g_936 >= 2); p_2403->g_936 -= 1)
    { /* block id: 976 */
        int64_t l_1935 = (-1L);
        int32_t l_1939[9][4][2] = {{{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)}},{{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)}},{{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)}},{{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)}},{{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)}},{{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)}},{{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)}},{{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)}},{{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)},{0x311D72E1L,(-3L)}}};
        uint32_t l_1941 = 0xE7DDAC24L;
        int64_t l_1947 = 0x61D6E9415C516F00L;
        int i, j, k;
        for (p_2403->g_96 = 0; (p_2403->g_96 <= 0); p_2403->g_96 += 1)
        { /* block id: 979 */
            uint64_t l_1936 = 0UL;
            int32_t l_1940 = 1L;
            for (p_2403->g_25 = 0; (p_2403->g_25 <= 0); p_2403->g_25 += 1)
            { /* block id: 982 */
                int32_t *l_1934[2][8][1];
                int i, j, k;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 8; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_1934[i][j][k] = &p_2403->g_82[1][0];
                    }
                }
                l_1936++;
                for (p_2403->g_492 = 0; (p_2403->g_492 <= 6); p_2403->g_492 += 1)
                { /* block id: 986 */
                    for (p_2403->g_113 = 0; (p_2403->g_113 <= 6); p_2403->g_113 += 1)
                    { /* block id: 989 */
                        int i;
                        return p_2403->g_1705[p_2403->g_492];
                    }
                    l_1941++;
                    for (p_2403->g_250 = 0; (p_2403->g_250 >= 38); p_2403->g_250++)
                    { /* block id: 995 */
                        (*p_2403->g_1946) = &l_1940;
                    }
                    for (p_2403->g_1758 = 3; (p_2403->g_1758 >= 0); p_2403->g_1758 -= 1)
                    { /* block id: 1000 */
                        int i, j, k;
                        if (l_1947)
                            break;
                    }
                }
            }
        }
        for (p_2403->g_14 = 0; (p_2403->g_14 <= 1); p_2403->g_14 += 1)
        { /* block id: 1008 */
            (*p_2403->g_1922) ^= (-4L);
            for (p_2403->g_197 = 0; (p_2403->g_197 <= 1); p_2403->g_197 += 1)
            { /* block id: 1012 */
                int i, j, k;
                (*p_2403->g_1948) = &l_1939[p_2403->g_14][(p_2403->g_14 + 2)][p_2403->g_14];
            }
        }
    }
    return (*l_2088);
}


/* ------------------------------------------ */
/* 
 * reads : p_2403->g_215 p_2403->g_102
 * writes:
 */
int8_t  func_18(uint64_t  p_19, int32_t  p_20, int16_t * p_21, uint64_t  p_22, struct S0 * p_2403)
{ /* block id: 7 */
    int32_t l_32 = 0x0169FF9EL;
    int16_t *l_940 = &p_2403->g_188[2][0];
    int32_t l_1079[1][2];
    int64_t *l_1089 = (void*)0;
    int64_t *l_1090[4];
    int32_t l_1092 = (-7L);
    uint32_t ***l_1111[9] = {&p_2403->g_1031,&p_2403->g_1031,&p_2403->g_1031,&p_2403->g_1031,&p_2403->g_1031,&p_2403->g_1031,&p_2403->g_1031,&p_2403->g_1031,&p_2403->g_1031};
    uint32_t ****l_1110 = &l_1111[4];
    int8_t *l_1119 = &p_2403->g_102[4][0][7];
    uint16_t l_1125 = 0x6BBFL;
    int32_t *l_1134 = (void*)0;
    uint32_t *l_1227 = &p_2403->g_418;
    uint32_t l_1234 = 5UL;
    int32_t *l_1352 = &p_2403->g_82[1][0];
    int32_t l_1369[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
    int16_t l_1370[8] = {0x2858L,(-10L),0x2858L,0x2858L,(-10L),0x2858L,0x2858L,(-10L)};
    int32_t l_1397[4];
    uint8_t *l_1405 = (void*)0;
    uint8_t **l_1404[1];
    int32_t **l_1426 = &p_2403->g_84[1][1][3];
    uint16_t ****l_1448 = &p_2403->g_518;
    uint32_t l_1465 = 0UL;
    uint32_t l_1604[9] = {0x1B75DFF1L,0x1B75DFF1L,0x1B75DFF1L,0x1B75DFF1L,0x1B75DFF1L,0x1B75DFF1L,0x1B75DFF1L,0x1B75DFF1L,0x1B75DFF1L};
    int32_t *l_1675 = &l_1079[0][1];
    uint64_t l_1678[9][8][1] = {{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}};
    int8_t *l_1699[8] = {&p_2403->g_1157[2][5][0],&p_2403->g_1157[2][5][0],&p_2403->g_1157[2][5][0],&p_2403->g_1157[2][5][0],&p_2403->g_1157[2][5][0],&p_2403->g_1157[2][5][0],&p_2403->g_1157[2][5][0],&p_2403->g_1157[2][5][0]};
    int32_t **l_1778 = &p_2403->g_1130;
    uint32_t l_1805 = 0x882EDD94L;
    int16_t l_1876 = 0x0F99L;
    uint32_t ****l_1885 = &p_2403->g_1642;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
            l_1079[i][j] = 1L;
    }
    for (i = 0; i < 4; i++)
        l_1090[i] = &p_2403->g_1091;
    for (i = 0; i < 4; i++)
        l_1397[i] = (-6L);
    for (i = 0; i < 1; i++)
        l_1404[i] = &l_1405;
    for (p_22 = 0; (p_22 == 5); ++p_22)
    { /* block id: 10 */
        return p_20;
    }
    return (*p_2403->g_215);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_33(uint64_t * p_34, struct S0 * p_2403)
{ /* block id: 496 */
    int16_t l_1088 = 0x2984L;
    return l_1088;
}


/* ------------------------------------------ */
/* 
 * reads : p_2403->g_13 p_2403->g_14 p_2403->g_215 p_2403->g_102 p_2403->g_82 p_2403->g_136 p_2403->g_147
 * writes: p_2403->g_82 p_2403->g_136
 */
uint64_t * func_35(uint64_t  p_36, uint32_t  p_37, uint64_t  p_38, uint64_t * p_39, struct S0 * p_2403)
{ /* block id: 491 */
    int32_t *l_1082 = &p_2403->g_82[1][0];
    int64_t *l_1085 = (void*)0;
    int64_t *l_1086 = &p_2403->g_136[0][2];
    uint64_t *l_1087 = (void*)0;
    (*l_1082) = (safe_add_func_uint32_t_u_u(((*p_2403->g_13) < 0xCBF1L), 1L));
    (*l_1082) = (((~(((safe_lshift_func_int8_t_s_s((((*p_2403->g_215) , &p_2403->g_1032) != (void*)0), p_37)) & ((*l_1086) ^= p_2403->g_82[1][0])) >= (1UL | p_2403->g_147))) , GROUP_DIVERGE(2, 1)) <= GROUP_DIVERGE(2, 1));
    return l_1087;
}


/* ------------------------------------------ */
/* 
 * reads : p_2403->g_98 p_2403->g_82 p_2403->g_comm_values p_2403->g_188 p_2403->g_936 p_2403->g_14 p_2403->g_136 p_2403->g_215 p_2403->g_102 p_2403->g_418 p_2403->g_994 p_2403->g_322 p_2403->g_25 p_2403->g_518 p_2403->g_519 p_2403->g_520 p_2403->g_635 p_2403->g_13 p_2403->g_367 p_2403->g_1031 p_2403->g_120 p_2403->g_259 p_2403->g_195 p_2403->g_619 p_2403->g_96
 * writes: p_2403->g_98 p_2403->g_25 p_2403->g_936 p_2403->g_14 p_2403->g_136 p_2403->g_147 p_2403->g_592 p_2403->g_322 p_2403->g_520 p_2403->g_188 p_2403->g_519 p_2403->g_1031 p_2403->g_120 p_2403->g_84 p_2403->g_102 p_2403->g_418
 */
int8_t  func_44(int64_t  p_45, int16_t * p_46, uint16_t  p_47, int64_t  p_48, uint32_t  p_49, struct S0 * p_2403)
{ /* block id: 422 */
    uint16_t l_944 = 1UL;
    int32_t l_980 = (-1L);
    int32_t l_981[4] = {(-1L),(-1L),(-1L),(-1L)};
    uint8_t *l_997 = &p_2403->g_98;
    uint16_t **l_1020 = &p_2403->g_520;
    uint32_t **l_1040 = &p_2403->g_1032;
    int32_t **l_1048 = &p_2403->g_84[0][5][2];
    uint64_t ***l_1075 = &p_2403->g_90;
    int i;
    for (p_2403->g_98 = 0; (p_2403->g_98 <= 1); p_2403->g_98 += 1)
    { /* block id: 425 */
        int8_t l_941 = 1L;
        uint64_t *l_942 = &p_2403->g_25;
        int16_t l_943 = 8L;
        int8_t l_951 = 2L;
        int32_t *l_952 = &p_2403->g_82[2][0];
        l_952 = ((((p_2403->g_82[2][0] | (((l_941 && ((((*l_942) = 1UL) , l_943) | l_944)) >= (((safe_mod_func_int8_t_s_s((p_2403->g_comm_values[p_2403->tid] < (safe_sub_func_int64_t_s_s((safe_add_func_uint8_t_u_u(p_2403->g_188[2][1], (l_944 & (l_951 , 0L)))), 0x7DF5997463B1AC58L))), p_47)) || p_49) , 0x0C98AF23L)) , 0x58L)) && 0x45EFL) , 0L) , (void*)0);
        return l_944;
    }
    for (p_2403->g_936 = 0; (p_2403->g_936 < 6); p_2403->g_936 = safe_add_func_int32_t_s_s(p_2403->g_936, 4))
    { /* block id: 432 */
        uint8_t *l_987 = &p_2403->g_592;
        uint8_t **l_986 = &l_987;
        int32_t l_988 = 8L;
        uint32_t **l_992 = (void*)0;
        uint32_t ***l_991 = &l_992;
        int32_t l_998 = 3L;
        for (p_2403->g_98 = 0; (p_2403->g_98 <= 3); p_2403->g_98 += 1)
        { /* block id: 435 */
            int16_t l_979 = 0x2602L;
            uint32_t ****l_993[6];
            int32_t *l_999 = &l_980;
            int i;
            for (i = 0; i < 6; i++)
                l_993[i] = &l_991;
            for (p_2403->g_14 = 0; (p_2403->g_14 <= 3); p_2403->g_14 += 1)
            { /* block id: 438 */
                uint32_t *l_960 = &p_2403->g_147;
                uint8_t *l_978[2][4] = {{&p_2403->g_592,&p_2403->g_592,&p_2403->g_592,&p_2403->g_592},{&p_2403->g_592,&p_2403->g_592,&p_2403->g_592,&p_2403->g_592}};
                int i, j;
                l_981[2] = ((p_2403->g_136[p_2403->g_14][(p_2403->g_14 + 4)] = p_2403->g_14) && (p_45 | (safe_mul_func_uint8_t_u_u((p_2403->g_136[p_2403->g_14][(p_2403->g_14 + 4)] | (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int8_t_s(((((*l_960) = FAKE_DIVERGE(p_2403->group_0_offset, get_group_id(0), 10)) != ((safe_add_func_uint32_t_u_u((0x5DC0600E63DFE344L && (0x2AL >= ((p_49 == (safe_mul_func_uint8_t_u_u(((*p_2403->g_215) & l_944), (safe_lshift_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((l_980 = (safe_mod_func_uint16_t_u_u((safe_unary_minus_func_uint32_t_u((safe_div_func_uint64_t_u_u((safe_div_func_int32_t_s_s(((p_2403->g_592 = (safe_mul_func_uint16_t_u_u(6UL, (-10L)))) ^ (*p_2403->g_215)), l_979)), l_944)))), 1L))), p_2403->g_418)), 4))))) , p_48))), p_2403->g_98)) && 0x7D248787F360FB32L)) != 0x2BCBC212L))), 0x33L))), 3L))));
            }
            (*l_999) |= (((safe_sub_func_int64_t_s_s((((((safe_sub_func_uint16_t_u_u((((((((void*)0 == l_986) != (l_988 ^ (safe_mod_func_uint16_t_u_u(((l_991 = l_991) == p_2403->g_994), l_988)))) != p_2403->g_102[2][0][7]) , l_997) != ((l_998 = p_48) , (void*)0)) | 0xBA3A15C3L), 0x74D7L)) | p_47) | FAKE_DIVERGE(p_2403->local_2_offset, get_local_id(2), 10)) , l_988) <= FAKE_DIVERGE(p_2403->group_2_offset, get_group_id(2), 10)), p_48)) , 0L) | 0x20F7E83C68AB2250L);
        }
    }
    for (p_2403->g_322 = 2; (p_2403->g_322 <= 56); p_2403->g_322++)
    { /* block id: 452 */
        uint16_t *l_1013 = &l_944;
        int8_t l_1030 = (-1L);
        int32_t **l_1047 = &p_2403->g_84[0][5][2];
        uint32_t *l_1066 = &p_2403->g_418;
        uint32_t ***l_1069 = &l_1040;
        uint32_t ****l_1070 = &l_1069;
        uint32_t ***l_1072 = &p_2403->g_1031;
        uint32_t ****l_1071 = &l_1072;
        uint64_t ***l_1076 = (void*)0;
        int32_t *l_1077 = &l_980;
        int32_t l_1078 = 3L;
        for (p_2403->g_14 = 0; (p_2403->g_14 >= (-17)); p_2403->g_14 = safe_sub_func_uint16_t_u_u(p_2403->g_14, 1))
        { /* block id: 455 */
            int16_t l_1024 = 3L;
            uint16_t l_1053 = 0x1F34L;
            uint32_t l_1054 = 0xB1A46251L;
            int32_t l_1055 = 0L;
            for (p_2403->g_25 = 0; (p_2403->g_25 <= 21); ++p_2403->g_25)
            { /* block id: 458 */
                uint32_t l_1006 = 0x856EFB29L;
                uint16_t **l_1021 = &l_1013;
                uint8_t l_1023 = 0x8BL;
                --l_1006;
                for (l_980 = 0; (l_980 <= 3); l_980 += 1)
                { /* block id: 462 */
                    uint16_t ***l_1022 = &l_1021;
                    uint32_t ***l_1033 = &p_2403->g_1031;
                    int i, j, k;
                    l_981[l_980] = (safe_lshift_func_uint8_t_u_s((~((+(((safe_sub_func_int64_t_s_s(((FAKE_DIVERGE(p_2403->local_1_offset, get_local_id(1), 10) && (l_1013 != ((*p_2403->g_519) = (**p_2403->g_518)))) , (((l_981[l_980] >= l_980) && (((p_2403->g_635 || (safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s(((*p_46) |= (p_47 <= 0x7CF700440979CE93L)), ((safe_mul_func_int16_t_s_s((((*p_2403->g_518) = l_1020) == ((*l_1022) = l_1021)), 0xC206L)) , p_49))), l_1023))) || l_1024) <= p_48)) < p_48)), 1L)) != l_981[l_980]) , (*p_2403->g_13))) != (*p_2403->g_13))), l_980));
                    l_981[l_980] ^= ((((p_2403->g_367 == (((safe_add_func_uint16_t_u_u((((*p_2403->g_215) , (safe_add_func_int16_t_s_s((*p_2403->g_13), (safe_unary_minus_func_int16_t_s((l_1030 > FAKE_DIVERGE(p_2403->group_2_offset, get_group_id(2), 10))))))) , FAKE_DIVERGE(p_2403->local_0_offset, get_local_id(0), 10)), (((*l_1033) = p_2403->g_1031) != ((safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(((*l_1013) = p_48), 9)), ((((safe_sub_func_int16_t_s_s(((p_2403->g_120 , (0xEAL < 0x4BL)) | 0x5DL), (*p_2403->g_13))) <= l_1024) || 0x7B67L) & l_1006))) , l_1040)))) < p_2403->g_259) != l_1030)) <= p_45) , p_2403->g_102[4][0][7]) & FAKE_DIVERGE(p_2403->group_2_offset, get_group_id(2), 10));
                }
                l_1055 &= ((safe_sub_func_uint8_t_u_u((p_47 || (safe_rshift_func_int16_t_s_u(l_944, (((((((l_944 , (**p_2403->g_518)) == &p_47) < (safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (((*p_2403->g_13) , l_1047) == l_1048)))) == (((safe_rshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_u(l_1023, l_1024)), 0)) > l_981[3]) , (*p_2403->g_13))) && 0x6296L) < l_1053) | l_1054)))), (-10L))) != p_2403->g_367);
            }
        }
        for (p_2403->g_120 = 0; (p_2403->g_120 < 6); ++p_2403->g_120)
        { /* block id: 477 */
            (*l_1047) = (p_48 , &p_2403->g_82[1][0]);
            return (*p_2403->g_215);
        }
        l_1078 |= ((*l_1077) ^= (safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), 7)), (((safe_mul_func_int8_t_s_s(((~p_48) , ((*p_2403->g_215) = ((*p_2403->g_13) != GROUP_DIVERGE(2, 1)))), 255UL)) , ((*l_1066) = p_2403->g_195)) >= p_2403->g_619))), ((safe_mod_func_int8_t_s_s((((*l_1070) = l_1069) == ((*l_1071) = &p_2403->g_1031)), (safe_lshift_func_int16_t_s_s((l_1075 == l_1076), 8)))) | p_2403->g_96))));
    }
    return (*p_2403->g_215);
}


/* ------------------------------------------ */
/* 
 * reads : p_2403->g_113 p_2403->g_14 p_2403->g_120 p_2403->g_13 p_2403->g_82 p_2403->g_215 p_2403->g_102
 * writes: p_2403->g_113
 */
uint32_t  func_56(int16_t * p_57, struct S0 * p_2403)
{ /* block id: 294 */
    uint8_t l_708 = 0x1AL;
    int32_t l_709[4][3];
    uint32_t *l_712 = &p_2403->g_250;
    uint32_t **l_711 = &l_712;
    uint8_t *l_736[1];
    uint8_t **l_735[4][5][6] = {{{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]}},{{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]}},{{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]}},{{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]},{&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0],&l_736[0]}}};
    int32_t l_737 = 0x55298810L;
    int32_t l_761 = 0L;
    int16_t *l_801 = &p_2403->g_188[1][2];
    int64_t *l_802 = &p_2403->g_136[3][4];
    int16_t l_833 = 0x20B9L;
    int64_t l_835 = 0x18FA1785FD44B40AL;
    int32_t l_836 = (-6L);
    uint16_t l_892 = 0xFA11L;
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
            l_709[i][j] = (-1L);
    }
    for (i = 0; i < 1; i++)
        l_736[i] = (void*)0;
    l_709[1][1] = (safe_mod_func_uint32_t_u_u(l_708, l_708));
    for (p_2403->g_113 = 0; (p_2403->g_113 <= 3); p_2403->g_113 += 1)
    { /* block id: 298 */
        int32_t l_710 = (-6L);
        uint32_t ***l_713 = &l_711;
        uint8_t *l_732[1];
        int32_t l_733 = 3L;
        int32_t l_734 = 0x4F2B8DB3L;
        int32_t l_820 = 0x52BA4D79L;
        int32_t l_821 = 3L;
        int32_t l_822 = 6L;
        int32_t l_823[5];
        int64_t l_834 = 1L;
        uint64_t **l_876 = &p_2403->g_267;
        int32_t **l_883 = &p_2403->g_84[2][6][3];
        int32_t **l_885 = (void*)0;
        int32_t ***l_884 = &l_885;
        int32_t *l_893 = (void*)0;
        int32_t *l_894 = &l_823[1];
        int16_t l_910[6] = {0x6F3BL,0x6F3BL,0x6F3BL,0x6F3BL,0x6F3BL,0x6F3BL};
        int i;
        for (i = 0; i < 1; i++)
            l_732[i] = &p_2403->g_98;
        for (i = 0; i < 5; i++)
            l_823[i] = (-8L);
        l_737 &= (l_710 < ((&p_2403->g_456 != ((*l_713) = l_711)) != (safe_mod_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(p_2403->g_14, ((((safe_div_func_uint32_t_u_u(((0x39EDD469B2E2B823L || (safe_add_func_uint8_t_u_u((0x26L < p_2403->g_120), ((((safe_rshift_func_uint16_t_u_u(((((FAKE_DIVERGE(p_2403->global_1_offset, get_global_id(1), 10) >= (((*p_2403->g_13) <= ((l_734 = (safe_add_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_u((l_733 = ((l_709[1][1] = FAKE_DIVERGE(p_2403->local_1_offset, get_local_id(1), 10)) < (l_708 ^ 0xFB63A2CEDE2D6929L))), 1)), 6)) | 4294967288UL), l_710)), FAKE_DIVERGE(p_2403->local_1_offset, get_local_id(1), 10)))) , l_708)) == l_710)) , l_735[2][3][2]) == &l_732[0]) , l_709[1][2]), 4)) >= 0x23405886L) || 0x75315738L) & p_2403->g_82[0][0])))) , 0xDEA2040CL), l_710)) != 2UL) ^ l_708) < (*p_2403->g_215)))), l_708))));
    }
    return l_892;
}


/* ------------------------------------------ */
/* 
 * reads : p_2403->l_comm_values p_2403->g_25 p_2403->g_14 p_2403->g_96 p_2403->g_102 p_2403->g_136 p_2403->g_comm_values p_2403->g_82 p_2403->g_147 p_2403->g_113 p_2403->g_188 p_2403->g_141 p_2403->g_90 p_2403->g_195 p_2403->g_197 p_2403->g_13 p_2403->g_215 p_2403->g_250 p_2403->g_267 p_2403->g_120 p_2403->g_330 p_2403->g_349 p_2403->g_367 p_2403->g_98 p_2403->g_418 p_2403->g_456 p_2403->g_322 p_2403->g_492 p_2403->g_518 p_2403->g_619 p_2403->g_83 p_2403->g_365 p_2403->g_676 p_2403->g_592 p_2403->g_259
 * writes: p_2403->g_25 p_2403->g_14 p_2403->g_96 p_2403->g_98 p_2403->g_136 p_2403->g_113 p_2403->g_141 p_2403->g_147 p_2403->g_120 p_2403->g_91 p_2403->g_197 p_2403->g_215 p_2403->g_84 p_2403->g_90 p_2403->g_250 p_2403->g_195 p_2403->g_102 p_2403->g_322 p_2403->g_82 p_2403->g_367 p_2403->g_418 p_2403->g_492 p_2403->g_592 p_2403->g_622 p_2403->g_627 p_2403->g_259
 */
int16_t * func_58(uint8_t  p_59, int8_t  p_60, uint64_t  p_61, int16_t  p_62, struct S0 * p_2403)
{ /* block id: 13 */
    uint64_t *l_71 = &p_2403->g_25;
    uint64_t **l_72 = &l_71;
    uint64_t *l_258 = &p_2403->g_259;
    uint64_t ***l_704 = &l_72;
    int16_t *l_705 = &p_2403->g_195;
    (*l_704) = func_67(((*l_72) = l_71), func_73(func_76(p_2403->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2403->tid, 2))], p_2403->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2403->tid, 2))], p_2403), l_258, p_2403), p_2403->g_267, p_2403);
    return l_705;
}


/* ------------------------------------------ */
/* 
 * reads : p_2403->g_120 p_2403->g_188 p_2403->g_14 p_2403->l_comm_values p_2403->g_215 p_2403->g_13 p_2403->g_141 p_2403->g_113 p_2403->g_195 p_2403->g_102 p_2403->g_197 p_2403->g_330 p_2403->g_96 p_2403->g_349 p_2403->g_367 p_2403->g_98 p_2403->g_82 p_2403->g_comm_values p_2403->g_25 p_2403->g_136 p_2403->g_418 p_2403->g_147 p_2403->g_456 p_2403->g_322 p_2403->g_492 p_2403->g_518 p_2403->g_619 p_2403->g_83 p_2403->g_365 p_2403->g_676 p_2403->g_592 p_2403->g_259
 * writes: p_2403->g_120 p_2403->g_102 p_2403->g_322 p_2403->g_82 p_2403->g_84 p_2403->g_136 p_2403->g_14 p_2403->g_367 p_2403->g_98 p_2403->g_195 p_2403->g_147 p_2403->g_418 p_2403->g_492 p_2403->g_197 p_2403->g_592 p_2403->g_622 p_2403->g_627 p_2403->g_113 p_2403->g_259
 */
uint64_t ** func_67(uint64_t * p_68, int16_t * p_69, uint64_t * p_70, struct S0 * p_2403)
{ /* block id: 133 */
    int32_t l_287 = 0x011FCAD8L;
    int32_t *l_296 = &p_2403->g_197;
    int32_t l_297 = 0L;
    uint16_t l_306 = 65529UL;
    int32_t l_363 = 1L;
    int32_t l_364[9][9][3] = {{{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L}},{{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L}},{{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L}},{{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L}},{{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L}},{{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L}},{{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L}},{{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L}},{{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L},{(-1L),(-1L),1L}}};
    int64_t l_366[1];
    int32_t *l_390 = (void*)0;
    int32_t l_391 = 2L;
    uint64_t **l_495 = (void*)0;
    uint16_t ***l_522 = &p_2403->g_519;
    uint64_t *l_536[7][8][4] = {{{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141}},{{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141}},{{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141}},{{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141}},{{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141}},{{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141}},{{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141},{&p_2403->g_141,&p_2403->g_141,&p_2403->g_141,&p_2403->g_141}}};
    int32_t l_589 = 4L;
    int16_t l_590 = 0x4511L;
    uint16_t l_620 = 0x2942L;
    int32_t l_656[7] = {(-1L),8L,(-1L),(-1L),8L,(-1L),(-1L)};
    int32_t *l_702 = &l_297;
    uint64_t **l_703 = &p_2403->g_267;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_366[i] = 0x3B173A381EC4C40DL;
    for (p_2403->g_120 = (-1); (p_2403->g_120 < 22); p_2403->g_120 = safe_add_func_int8_t_s_s(p_2403->g_120, 1))
    { /* block id: 136 */
        uint32_t l_280 = 0xD71AC383L;
        int32_t l_329 = (-2L);
        int32_t **l_331 = &p_2403->g_84[0][5][2];
        int64_t *l_348 = &p_2403->g_136[1][7];
        l_297 |= (((!(((p_2403->g_188[2][0] <= ((((safe_mod_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s(((*p_2403->g_215) = ((safe_rshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(l_280, (safe_mul_func_int8_t_s_s((((safe_mod_func_uint64_t_u_u(l_280, (((safe_mul_func_uint16_t_u_u((0x12E2E44CL || (((&p_2403->g_98 == (void*)0) && l_287) > (safe_rshift_func_int8_t_s_u((((((safe_mul_func_int16_t_s_s(0L, (safe_mul_func_uint16_t_u_u(((safe_add_func_int32_t_s_s((l_280 && l_280), l_280)) > GROUP_DIVERGE(2, 1)), (*p_69))))) < l_287) != p_2403->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2403->tid, 2))]) <= 0x3A2FL) <= 0x053EDE2EEAF47915L), 5)))), 0x29DDL)) <= 18446744073709551615UL) | l_287))) , l_296) == &p_2403->g_197), 4UL)))), 3)) != 0x23E8D593L)), l_287)) > 5UL), l_280)), l_280)) <= l_280) && 0xF7F5L) < l_280)) , l_280) && (*p_2403->g_13))) >= l_280) | l_287);
        (*p_2403->g_330) = ((safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_u(((((safe_add_func_uint64_t_u_u(0x7A181BAD5A2DB141L, l_297)) && ((safe_rshift_func_uint8_t_u_s((l_306 , (safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((((l_306 , (safe_rshift_func_int8_t_s_u((safe_sub_func_uint16_t_u_u((safe_unary_minus_func_uint16_t_u((p_2403->g_322 = (l_280 & (FAKE_DIVERGE(p_2403->global_2_offset, get_global_id(2), 10) || (safe_lshift_func_uint8_t_u_u(p_2403->g_141, 0))))))), (*p_2403->g_13))), 6))) , ((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_u((p_2403->g_113 , ((safe_mul_func_uint16_t_u_u((l_306 >= (*p_69)), 0x7580L)) , 5UL)), p_2403->g_195)) ^ 0x49E4L), (*p_2403->g_215))) | 0x5EL)) , (*p_69)), 9)), 6)), (*p_2403->g_215))), 18446744073709551615UL))), 3)) >= p_2403->g_197)) && l_280) & 0L), 5)), l_306)) | l_329);
        (*l_331) = &l_297;
        l_329 = (((safe_lshift_func_uint16_t_u_u((((*l_348) = ((safe_sub_func_uint64_t_u_u((!l_287), (&p_2403->g_330 == (void*)0))) <= (safe_rshift_func_int8_t_s_s((l_297 = ((((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(p_2403->g_96, (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_2403->local_2_offset, get_local_id(2), 10), ((l_296 == &p_2403->g_113) <= (~(GROUP_DIVERGE(1, 1) >= 0xCEADAE3BL))))))), 2)) , (safe_add_func_int16_t_s_s(((safe_sub_func_int8_t_s_s(((*p_2403->g_215) = l_287), (0x304FL != p_2403->g_120))) >= p_2403->g_120), l_297))) ^ FAKE_DIVERGE(p_2403->group_1_offset, get_group_id(1), 10)) , (*p_2403->g_215))), l_287)))) >= 0xD3903DF3D744F47FL), 3)) >= 6L) , 0x5268F880L);
    }
    (*p_2403->g_349) = &l_297;
    for (p_2403->g_14 = 3; (p_2403->g_14 >= 0); p_2403->g_14 -= 1)
    { /* block id: 150 */
        int32_t *l_350 = (void*)0;
        int32_t *l_351 = (void*)0;
        int32_t *l_352 = &p_2403->g_82[1][0];
        int32_t *l_353 = &l_297;
        int32_t *l_354 = &p_2403->g_82[1][0];
        int32_t *l_355 = &p_2403->g_82[1][0];
        int32_t *l_356 = &p_2403->g_82[2][0];
        int32_t *l_357 = &p_2403->g_82[1][0];
        int32_t *l_358 = &p_2403->g_82[1][0];
        int32_t *l_359 = &p_2403->g_82[1][0];
        int32_t *l_360 = &p_2403->g_82[0][0];
        int32_t *l_361[7][7][5] = {{{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]}},{{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]}},{{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]}},{{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]}},{{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]}},{{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]}},{{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]},{&p_2403->g_82[0][0],&p_2403->g_82[0][0],&l_297,&l_297,&p_2403->g_82[0][0]}}};
        int8_t l_362 = 0x27L;
        int32_t l_370 = 0x35AF1A29L;
        uint8_t *l_371 = &p_2403->g_98;
        int16_t *l_376 = &p_2403->g_195;
        int32_t **l_389[9][2] = {{&l_358,&l_358},{&l_358,&l_358},{&l_358,&l_358},{&l_358,&l_358},{&l_358,&l_358},{&l_358,&l_358},{&l_358,&l_358},{&l_358,&l_358},{&l_358,&l_358}};
        uint16_t *l_392[2][3];
        uint32_t *l_432 = &p_2403->g_113;
        uint16_t **l_474 = &l_392[1][0];
        uint16_t ***l_473 = &l_474;
        int64_t l_475[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        uint64_t ***l_626 = (void*)0;
        int8_t l_637 = 0x26L;
        int32_t *l_658 = &p_2403->g_82[1][0];
        uint64_t *l_671 = &p_2403->g_259;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 3; j++)
                l_392[i][j] = (void*)0;
        }
        p_2403->g_367++;
        if ((((*l_371) ^= l_370) , ((((safe_mul_func_int16_t_s_s(0x4633L, (safe_rshift_func_int16_t_s_s(((*l_376) |= (*l_359)), 8)))) || (((((safe_div_func_int64_t_s_s((safe_sub_func_int16_t_s_s((*p_2403->g_13), (p_2403->g_322 = (p_2403->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2403->tid, 2))] & ((safe_add_func_int16_t_s_s(0x45D2L, ((safe_mod_func_uint32_t_u_u((((*p_2403->g_215) = ((*p_2403->g_215) == (safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((((l_360 != (l_390 = &l_297)) || (*l_359)) < l_364[6][0][1]), p_2403->g_comm_values[p_2403->tid])), (*l_360))))) > 0x4BL), (*p_2403->g_330))) || l_391))) >= 0x49BBL))))), p_2403->g_25)) > l_391) == (*l_355)) , 0x440CCF3DL) , (*l_390))) && 7L) , (*l_358))))
        { /* block id: 157 */
            int64_t l_393 = 0x42486D65F0234472L;
            int32_t l_394[4] = {0L,0L,0L,0L};
            int32_t *l_416 = (void*)0;
            int32_t l_459 = 0x46CEB219L;
            int16_t l_482 = 1L;
            uint16_t ****l_521[5] = {&l_473,&l_473,&l_473,&l_473,&l_473};
            int32_t l_525[2][5] = {{3L,0x36A389CCL,(-1L),0x36A389CCL,3L},{3L,0x36A389CCL,(-1L),0x36A389CCL,3L}};
            uint16_t l_563[5];
            int32_t l_593[5][2];
            uint64_t **l_594 = &p_2403->g_91;
            int8_t l_632 = (-1L);
            uint64_t l_638 = 0xC57133FF8B95FF4BL;
            int i, j;
            for (i = 0; i < 5; i++)
                l_563[i] = 5UL;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 2; j++)
                    l_593[i][j] = 0x63C91B35L;
            }
            if (l_393)
            { /* block id: 158 */
                uint32_t l_395[1];
                int64_t *l_400 = (void*)0;
                int64_t *l_401 = &p_2403->g_136[1][2];
                uint32_t *l_441 = &p_2403->g_418;
                int32_t l_461 = (-1L);
                uint16_t **l_462[8][2][8] = {{{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]},{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]}},{{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]},{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]}},{{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]},{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]}},{{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]},{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]}},{{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]},{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]}},{{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]},{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]}},{{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]},{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]}},{{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]},{&l_392[0][2],&l_392[0][0],&l_392[1][0],&l_392[0][0],(void*)0,(void*)0,&l_392[0][1],&l_392[0][0]}}};
                int32_t l_481 = 1L;
                int32_t l_485 = 0x6C2014E8L;
                int32_t l_486 = 0x2B67088FL;
                int32_t l_490[6][6] = {{5L,(-1L),0x76ED9B40L,0x2445B0D9L,(-1L),0x2445B0D9L},{5L,(-1L),0x76ED9B40L,0x2445B0D9L,(-1L),0x2445B0D9L},{5L,(-1L),0x76ED9B40L,0x2445B0D9L,(-1L),0x2445B0D9L},{5L,(-1L),0x76ED9B40L,0x2445B0D9L,(-1L),0x2445B0D9L},{5L,(-1L),0x76ED9B40L,0x2445B0D9L,(-1L),0x2445B0D9L},{5L,(-1L),0x76ED9B40L,0x2445B0D9L,(-1L),0x2445B0D9L}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_395[i] = 0x81FD1DC9L;
                l_395[0]++;
                if ((safe_div_func_int64_t_s_s((l_393 , (((*l_401) &= ((l_392[0][0] == p_69) >= 7L)) && ((-1L) & ((*l_376) = (*p_2403->g_13))))), 0x12B496A92C175D65L)))
                { /* block id: 162 */
                    int8_t l_407 = (-1L);
                    uint32_t *l_408 = &p_2403->g_147;
                    int32_t *l_415 = &l_364[5][2][2];
                    uint32_t *l_417 = &p_2403->g_418;
                    int8_t *l_419 = &l_407;
                    int32_t l_420[10] = {6L,6L,6L,6L,6L,6L,6L,6L,6L,6L};
                    int i;
                    (*l_353) = ((*p_2403->g_330) = (+(*p_2403->g_330)));
                    (*l_354) = (((safe_unary_minus_func_uint32_t_u((p_2403->g_120 | (safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((*p_2403->g_215), ((*l_419) = ((((*l_408) = l_407) != (safe_mul_func_uint16_t_u_u((*l_360), (((((*l_417) |= ((safe_rshift_func_int8_t_s_s(0L, ((safe_mul_func_uint16_t_u_u(l_395[0], (((l_408 != (l_416 = (l_415 = l_408))) & 1UL) || l_395[0]))) , l_395[0]))) <= (*p_2403->g_215))) == l_407) , (void*)0) == p_70)))) | 0x167925FEL)))), l_395[0]))))) <= l_420[3]) != (*l_352));
                    l_390 = (l_415 = &l_363);
                    if (((((safe_lshift_func_int8_t_s_u((*l_415), 5)) <= 7UL) && (safe_div_func_uint8_t_u_u((!(safe_rshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((p_2403->g_188[1][2] >= (safe_unary_minus_func_int32_t_s(((l_432 = l_416) == (void*)0)))), ((safe_lshift_func_int8_t_s_s(((*l_419) = ((*l_415) == (*l_416))), 0)) >= (((((0x0AL && (safe_lshift_func_int16_t_s_s(((safe_add_func_int32_t_s_s(((safe_add_func_uint64_t_u_u((~((1UL == l_395[0]) , p_2403->g_102[5][1][3])), (*l_416))) >= (*p_2403->g_215)), 0x7FC3886EL)) , (*p_2403->g_13)), 0))) > (*l_390)) , l_441) == (void*)0) >= (*p_2403->g_215))))), (*l_416))), 2))), 7L))) == 0x0F1ED9ECL))
                    { /* block id: 175 */
                        int64_t l_460 = 1L;
                        if ((*l_415))
                            break;
                        (*p_2403->g_330) = (safe_add_func_int32_t_s_s(((safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(((((((l_461 = ((((*l_415) <= (safe_mul_func_uint8_t_u_u((!(safe_add_func_int16_t_s_s((5L <= (18446744073709551615UL < ((((((4L >= ((safe_mul_func_uint8_t_u_u(((p_2403->g_322 ^= ((safe_mul_func_int16_t_s_s(((*l_416) & (8L ^ (((l_417 == p_2403->g_456) , ((*l_419) = ((safe_sub_func_uint8_t_u_u(4UL, l_459)) ^ l_460))) | l_460))), 0L)) == l_395[0])) ^ p_2403->g_136[2][1]), 0x7EL)) >= FAKE_DIVERGE(p_2403->local_0_offset, get_local_id(0), 10))) == p_2403->g_136[1][8]) < (*l_416)) , l_371) != (void*)0) == 1UL))), (*p_69)))), (*p_2403->g_215)))) , 1L) && (*l_416))) > 0x2EL) || 18446744073709551609UL) ^ FAKE_DIVERGE(p_2403->group_0_offset, get_group_id(0), 10)) , (*l_357)) & (*p_2403->g_215)), 5)), p_2403->g_113)) < 2UL), (*l_415)));
                    }
                    else
                    { /* block id: 181 */
                        uint16_t ***l_463 = &l_462[7][0][6];
                        (*l_463) = l_462[7][0][5];
                    }
                }
                else
                { /* block id: 184 */
                    int32_t l_466 = 0x3C4CDD87L;
                    int32_t l_476 = 0x3F7198ABL;
                    int32_t l_483 = 0x0908E7A7L;
                    int32_t l_484 = 0x710C60D3L;
                    int32_t l_487 = (-9L);
                    int32_t l_488 = 0x6775FA2CL;
                    int32_t l_489 = (-7L);
                    int32_t l_491 = 0x4145FA17L;
                    int32_t **l_505 = &l_350;
                    uint64_t ***l_513 = &l_495;
                    uint64_t l_514 = 2UL;
                    if ((((*l_401) |= ((0x55AE54645F90DAD3L || p_2403->g_comm_values[p_2403->tid]) == ((l_466 && p_2403->g_195) < (safe_lshift_func_uint16_t_u_s((safe_sub_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((void*)0 != l_473), ((!(((l_395[0] < (1UL & (l_466 < (*p_2403->g_215)))) > l_475[3]) || (*p_2403->g_13))) ^ l_466))), (*l_352))), 11))))) < 1L))
                    { /* block id: 186 */
                        uint64_t l_477 = 0xC599E92070B5AFC4L;
                        int32_t l_480[3][4][8] = {{{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L},{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L},{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L},{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L}},{{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L},{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L},{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L},{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L}},{{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L},{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L},{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L},{0x3D643B1AL,0L,(-9L),0x3D643B1AL,0L,0x58134376L,0x58134376L,0L}}};
                        int i, j, k;
                        --l_477;
                        (*l_357) = l_466;
                        ++p_2403->g_492;
                    }
                    else
                    { /* block id: 190 */
                        return l_495;
                    }
                    for (p_2403->g_492 = 0; (p_2403->g_492 <= 9); p_2403->g_492 += 1)
                    { /* block id: 195 */
                        uint32_t l_496[9];
                        uint64_t *l_506 = &p_2403->g_141;
                        int i, j;
                        for (i = 0; i < 9; i++)
                            l_496[i] = 1UL;
                        l_496[7]--;
                        l_486 = ((((safe_div_func_uint32_t_u_u((((safe_lshift_func_int8_t_s_u(0L, (safe_sub_func_int8_t_s_s(((*p_2403->g_215) = (((((l_505 == &p_2403->g_84[0][1][0]) , l_506) != (p_2403->g_136[p_2403->g_14][(p_2403->g_14 + 1)] , p_68)) || (p_2403->g_322 = ((((safe_lshift_func_int16_t_s_s((((l_394[p_2403->g_14] ^ ((*l_441) = 4294967295UL)) != (p_2403->g_136[p_2403->g_14][(p_2403->g_14 + 1)] = (~((safe_add_func_uint64_t_u_u(((safe_sub_func_uint32_t_u_u((l_513 == l_513), l_395[0])) , l_514), p_2403->g_492)) & p_2403->g_195)))) <= 0xCCF989BB2417818EL), 1)) <= (*p_2403->g_330)) > l_486) && (*l_358)))) , l_461)), p_2403->g_120)))) , 248UL) >= GROUP_DIVERGE(2, 1)), l_481)) & 4294967295UL) & l_394[p_2403->g_14]) >= l_485);
                        if ((*p_2403->g_330))
                            continue;
                    }
                }
            }
            else
            { /* block id: 205 */
                int64_t l_515 = 1L;
                if ((*p_2403->g_330))
                    break;
                (*l_352) = (*l_359);
                if (l_515)
                    continue;
            }
            l_390 = &l_364[3][5][2];
            if (((safe_add_func_uint64_t_u_u((((l_522 = p_2403->g_518) == &p_2403->g_519) || ((safe_add_func_int16_t_s_s(0x4AABL, (*l_352))) || l_525[1][3])), (((*l_371) = ((safe_div_func_uint64_t_u_u(((p_2403->g_82[1][0] , (+((-1L) >= (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(0, 1), (safe_lshift_func_uint8_t_u_s(0xFDL, (safe_rshift_func_uint16_t_u_s(((((*l_390) , 0xFFCBE977196F73FDL) && 0xB15F8F39B1626ADEL) < (*l_357)), 0))))))))) | GROUP_DIVERGE(1, 1)), (*l_353))) , FAKE_DIVERGE(p_2403->local_1_offset, get_local_id(1), 10))) >= 255UL))) ^ 4UL))
            { /* block id: 213 */
                uint32_t l_539 = 0UL;
                uint32_t *l_555 = &p_2403->g_147;
                uint32_t *l_556 = &p_2403->g_418;
                int32_t l_559[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_559[i] = 0x03BAFBE0L;
                (*p_2403->g_349) = &l_391;
                (*l_353) ^= (safe_div_func_int16_t_s_s((((((l_536[6][3][3] == p_70) , (safe_sub_func_int16_t_s_s((l_539 & ((*l_556) = ((safe_unary_minus_func_uint32_t_u(((safe_add_func_uint32_t_u_u(p_2403->g_136[0][2], (((p_2403->g_492 = (safe_sub_func_uint32_t_u_u(4294967290UL, FAKE_DIVERGE(p_2403->group_1_offset, get_group_id(1), 10)))) || (safe_div_func_int64_t_s_s((safe_mod_func_uint8_t_u_u(((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (*l_358))) & ((*l_555) = (safe_mod_func_int32_t_s_s((*p_2403->g_330), ((((safe_lshift_func_int16_t_s_u((0x35F7020A090FAF84L < (((*l_390) || (*l_356)) < 4294967291UL)), l_539)) | l_539) | 0x10L) ^ l_539))))), FAKE_DIVERGE(p_2403->global_0_offset, get_global_id(0), 10))), (-1L)))) ^ l_539))) >= 0x4ABC36E59546AAF2L))) == (*l_359)))), (*p_2403->g_13)))) > l_539) , 0x0D0AL) <= l_539), (*l_390)));
                for (p_2403->g_197 = 0; (p_2403->g_197 <= 2); p_2403->g_197 += 1)
                { /* block id: 221 */
                    int32_t l_557 = 0x298801DAL;
                    int32_t l_558 = 0L;
                    int32_t l_560 = 0x0AE295EDL;
                    int16_t l_561 = 0x68FDL;
                    int32_t l_562[1];
                    int64_t *l_588 = &l_366[0];
                    int8_t *l_591[10] = {&l_362,&l_362,&l_362,&l_362,&l_362,&l_362,&l_362,&l_362,&l_362,&l_362};
                    int32_t *l_623 = &p_2403->g_82[1][0];
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_562[i] = 0x11D211D6L;
                    l_563[1]--;
                    if (((((((((((safe_mul_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(5UL, p_2403->g_136[p_2403->g_14][p_2403->g_197])), (safe_lshift_func_uint8_t_u_u(0UL, ((safe_sub_func_uint16_t_u_u(((p_2403->g_592 = ((*p_2403->g_215) = ((l_559[3] = ((safe_mul_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((1L <= (safe_mod_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(l_475[(p_2403->g_14 + 5)], 9)), ((safe_div_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s((((*l_588) = p_2403->g_141) > l_589), (((0x1CL >= l_539) != p_2403->g_82[1][0]) || (*p_2403->g_13)))), (*p_2403->g_13))), 0xA918L)) && l_590)))), 3L)), GROUP_DIVERGE(2, 1))) == l_561)) != (-3L)))) <= 246UL), 1L)) > 0x0BL))))) , (*l_360)) <= (*l_357)) , l_593[4][1]) >= (*l_390)) , (*p_69)) , (*l_390)) >= (*p_2403->g_13)) == 0x053EL) > p_2403->g_136[p_2403->g_14][p_2403->g_197]))
                    { /* block id: 227 */
                        if (l_557)
                            break;
                        return l_594;
                    }
                    else
                    { /* block id: 230 */
                        uint8_t *l_601 = (void*)0;
                        uint8_t **l_602 = &l_601;
                        int32_t l_618 = 1L;
                        int32_t *l_621 = &l_297;
                        (*l_390) = (safe_sub_func_int8_t_s_s((*p_2403->g_215), (((safe_sub_func_int32_t_s_s((safe_sub_func_int32_t_s_s((((*l_602) = l_601) == ((safe_rshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u(((safe_unary_minus_func_int8_t_s(0x0DL)) ^ (0x9323L < ((l_618 = ((((safe_mod_func_uint32_t_u_u(p_2403->g_197, (safe_div_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(p_2403->g_136[3][0], ((safe_div_func_uint32_t_u_u(((safe_sub_func_uint32_t_u_u(((9UL && 1UL) & l_618), (*p_2403->g_330))) < p_2403->g_136[2][5]), l_559[4])) , (*l_390)))), (*l_352))))) ^ 0x2FL) & l_618) < FAKE_DIVERGE(p_2403->group_0_offset, get_group_id(0), 10))) > GROUP_DIVERGE(2, 1)))), p_2403->g_619)), (*p_69))) , &p_2403->g_98)), 0xD5C16C4FL)), 0L)) && l_559[1]) | l_620)));
                        (*p_2403->g_349) = &l_459;
                        p_2403->g_622 = (l_621 = &p_2403->g_82[1][0]);
                        (*p_2403->g_83) = l_623;
                    }
                }
                if ((*l_359))
                    continue;
            }
            else
            { /* block id: 241 */
                uint64_t ***l_625 = (void*)0;
                uint64_t ****l_624 = &l_625;
                int32_t *l_628 = (void*)0;
                int32_t l_631[8] = {4L,4L,4L,4L,4L,4L,4L,4L};
                int i;
                (*l_353) = (((*l_624) = &p_2403->g_90) == (p_2403->g_627 = (l_626 = l_626)));
                l_628 = &l_391;
                if ((*l_628))
                    break;
                for (l_297 = 0; (l_297 <= 3); l_297 += 1)
                { /* block id: 250 */
                    int32_t l_630 = 1L;
                    int32_t l_633[3][1][4] = {{{(-8L),1L,0L,1L}},{{(-8L),1L,0L,1L}},{{(-8L),1L,0L,1L}}};
                    int32_t l_634[6][7] = {{(-6L),0x620CE79FL,(-6L),(-6L),0x620CE79FL,(-6L),(-6L)},{(-6L),0x620CE79FL,(-6L),(-6L),0x620CE79FL,(-6L),(-6L)},{(-6L),0x620CE79FL,(-6L),(-6L),0x620CE79FL,(-6L),(-6L)},{(-6L),0x620CE79FL,(-6L),(-6L),0x620CE79FL,(-6L),(-6L)},{(-6L),0x620CE79FL,(-6L),(-6L),0x620CE79FL,(-6L),(-6L)},{(-6L),0x620CE79FL,(-6L),(-6L),0x620CE79FL,(-6L),(-6L)}};
                    int16_t l_641 = (-1L);
                    int i, j, k;
                    for (p_2403->g_195 = 0; (p_2403->g_195 <= 3); p_2403->g_195 += 1)
                    { /* block id: 253 */
                        uint32_t *l_629[8] = {&p_2403->g_147,&p_2403->g_418,&p_2403->g_147,&p_2403->g_147,&p_2403->g_418,&p_2403->g_147,&p_2403->g_147,&p_2403->g_418};
                        int32_t l_636[6] = {0x620AEF77L,0x620AEF77L,0x620AEF77L,0x620AEF77L,0x620AEF77L,0x620AEF77L};
                        int i, j;
                        (*l_359) = (((p_2403->g_418 = GROUP_DIVERGE(1, 1)) , &l_474) == (void*)0);
                        (*l_356) = (p_2403->g_136[l_297][(p_2403->g_14 + 3)] || (-1L));
                        l_638++;
                    }
                    if (l_641)
                        continue;
                }
            }
            if (l_638)
                continue;
        }
        else
        { /* block id: 263 */
            uint64_t l_654 = 0x2246CADC281429A8L;
            uint8_t l_655 = 0xB7L;
            int32_t l_657 = 0x4CD76007L;
            int32_t l_677[9][5][5] = {{{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L}},{{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L}},{{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L}},{{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L}},{{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L}},{{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L}},{{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L}},{{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L}},{{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L},{0x3202B859L,0x0B4113AAL,(-10L),6L,1L}}};
            int i, j, k;
            l_657 &= (p_2403->g_367 && ((safe_rshift_func_int8_t_s_u((*p_2403->g_215), 6)) | (safe_div_func_int16_t_s_s(((*l_356) > ((((*l_376) = 0x7CC7L) <= (((((++p_2403->g_113) , ((((((safe_sub_func_uint32_t_u_u(((+FAKE_DIVERGE(p_2403->global_1_offset, get_global_id(1), 10)) && ((*l_359) != ((-7L) || (((safe_sub_func_uint16_t_u_u(l_654, (l_655 <= (*l_355)))) | p_2403->g_147) , 0x30ABAAAEL)))), 0xAFF95702L)) >= GROUP_DIVERGE(0, 1)) , &p_2403->g_519) == (void*)0) , 0x27598C17L) , p_2403->g_365)) <= l_655) || l_656[0]) || (-1L))) > FAKE_DIVERGE(p_2403->local_0_offset, get_local_id(0), 10))), 0x26EAL))));
            l_390 = &l_656[5];
            l_658 = &l_657;
            (*l_353) &= (((((+(*p_2403->g_13)) <= (l_657 = (l_677[5][1][3] ^= ((safe_mod_func_uint8_t_u_u(((safe_div_func_int32_t_s_s((~(safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((((safe_lshift_func_uint8_t_u_s((((safe_lshift_func_int8_t_s_s(0x70L, (l_671 != (void*)0))) , ((*l_376) = (((safe_mod_func_int64_t_s_s((l_657 ^ (((*l_390) = (((*p_2403->g_215) = (((safe_sub_func_int16_t_s_s((*p_2403->g_13), (((*l_390) < 1L) , (*l_360)))) || 65535UL) > (*l_390))) && 0xCAL)) != (*p_69))), p_2403->g_147)) != FAKE_DIVERGE(p_2403->global_1_offset, get_global_id(1), 10)) ^ (*l_354)))) >= p_2403->g_676[2][0][7]), 2)) == p_2403->g_492) < p_2403->g_136[1][8]), GROUP_DIVERGE(1, 1))), p_2403->g_comm_values[p_2403->tid]))), GROUP_DIVERGE(0, 1))) | 2UL), 0x48L)) && 0x68AAL)))) <= 0UL) , (-2L)) < 0x88C7A71BL);
        }
        for (p_2403->g_592 = 0; (p_2403->g_592 <= 3); p_2403->g_592 += 1)
        { /* block id: 278 */
            uint32_t *l_685 = &p_2403->g_250;
            uint32_t **l_684 = &l_685;
            uint32_t *l_688[7][7] = {{&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147},{&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147},{&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147},{&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147},{&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147},{&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147},{&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147,&p_2403->g_147}};
            int i, j;
            (*l_390) = (((((safe_sub_func_uint16_t_u_u((((safe_add_func_int32_t_s_s(((*l_359) = 0x1D2998CCL), (safe_add_func_uint8_t_u_u((((*l_684) = &p_2403->g_250) != l_361[0][4][3]), p_2403->g_136[p_2403->g_14][p_2403->g_14])))) & (!(safe_sub_func_uint64_t_u_u(((void*)0 != l_688[6][2]), (safe_div_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(0xCEL, ((((((safe_mul_func_uint8_t_u_u(((safe_div_func_int16_t_s_s((+((safe_div_func_int64_t_s_s(((*p_69) >= p_2403->g_136[0][2]), p_2403->g_147)) < p_2403->g_259)), p_2403->g_141)) >= 0x1CBE8EBCL), (-4L))) >= 0UL) >= (*l_390)) & p_2403->g_136[p_2403->g_14][p_2403->g_14]) & (-1L)) , 249UL))), 5UL)))))) ^ p_2403->g_136[p_2403->g_14][p_2403->g_14]), 0L)) , p_2403->g_136[p_2403->g_14][p_2403->g_14]) || (*l_390)) <= (*l_390)) || p_2403->g_136[p_2403->g_14][p_2403->g_14]);
            if ((*l_390))
                break;
        }
    }
    for (p_2403->g_259 = (-4); (p_2403->g_259 == 5); ++p_2403->g_259)
    { /* block id: 287 */
        uint32_t l_701[3][1];
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_701[i][j] = 0x119F8147L;
        }
        if (l_701[2][0])
            break;
        (*p_2403->g_83) = l_702;
    }
    return l_703;
}


/* ------------------------------------------ */
/* 
 * reads : p_2403->g_195
 * writes: p_2403->g_195
 */
int16_t * func_73(int16_t * p_74, uint64_t * p_75, struct S0 * p_2403)
{ /* block id: 125 */
    int32_t *l_260[1];
    uint32_t l_261 = 1UL;
    int16_t *l_266 = &p_2403->g_188[0][6];
    int i;
    for (i = 0; i < 1; i++)
        l_260[i] = &p_2403->g_82[1][0];
    l_261++;
    for (p_2403->g_195 = 24; (p_2403->g_195 == (-26)); --p_2403->g_195)
    { /* block id: 129 */
        return &p_2403->g_14;
    }
    return l_266;
}


/* ------------------------------------------ */
/* 
 * reads : p_2403->g_25 p_2403->g_14 p_2403->g_96 p_2403->g_102 p_2403->g_136 p_2403->g_comm_values p_2403->g_82 p_2403->g_147 p_2403->g_113 p_2403->g_188 p_2403->g_141 p_2403->g_90 p_2403->g_195 p_2403->g_197 p_2403->g_13 p_2403->g_215 p_2403->g_250
 * writes: p_2403->g_25 p_2403->g_14 p_2403->g_96 p_2403->g_98 p_2403->g_136 p_2403->g_113 p_2403->g_141 p_2403->g_147 p_2403->g_120 p_2403->g_91 p_2403->g_197 p_2403->g_215 p_2403->g_84 p_2403->g_90 p_2403->g_250
 */
int16_t * func_76(int64_t  p_77, uint8_t  p_78, struct S0 * p_2403)
{ /* block id: 15 */
    uint64_t l_79[10][2][9] = {{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}},{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}},{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}},{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}},{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}},{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}},{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}},{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}},{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}},{{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL},{0x20513F0F01F95A7FL,0UL,1UL,1UL,0x137083F7A53718D2L,0x55E195D318EE11E7L,0UL,0UL,18446744073709551610UL}}};
    int32_t *l_81[10][7][3] = {{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}},{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}},{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}},{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}},{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}},{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}},{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}},{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}},{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}},{{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0},{&p_2403->g_82[2][0],&p_2403->g_82[2][0],(void*)0}}};
    uint16_t l_123 = 1UL;
    int8_t l_216[10][3] = {{0x22L,0x22L,0x22L},{0x22L,0x22L,0x22L},{0x22L,0x22L,0x22L},{0x22L,0x22L,0x22L},{0x22L,0x22L,0x22L},{0x22L,0x22L,0x22L},{0x22L,0x22L,0x22L},{0x22L,0x22L,0x22L},{0x22L,0x22L,0x22L},{0x22L,0x22L,0x22L}};
    uint32_t l_253 = 0xDDCB0582L;
    int16_t *l_257 = (void*)0;
    int i, j, k;
    for (p_2403->g_25 = 0; (p_2403->g_25 <= 1); p_2403->g_25 += 1)
    { /* block id: 18 */
        int16_t *l_80 = &p_2403->g_14;
        int32_t l_104 = (-1L);
        int32_t l_158 = 1L;
        int32_t l_167 = 1L;
        int32_t l_169 = (-1L);
        int32_t l_171 = 5L;
        int32_t l_177 = 0x47CBADA1L;
        int32_t l_180[7];
        int32_t l_232 = 0L;
        int i;
        for (i = 0; i < 7; i++)
            l_180[i] = 6L;
        for (p_2403->g_14 = 1; (p_2403->g_14 >= 0); p_2403->g_14 -= 1)
        { /* block id: 21 */
            int32_t l_100 = 0x1FB421CFL;
            int32_t l_103[2][2][6] = {{{0x20E808E4L,0x4E30238DL,0x4E30238DL,0x20E808E4L,0x20E808E4L,0x4E30238DL},{0x20E808E4L,0x4E30238DL,0x4E30238DL,0x20E808E4L,0x20E808E4L,0x4E30238DL}},{{0x20E808E4L,0x4E30238DL,0x4E30238DL,0x20E808E4L,0x20E808E4L,0x4E30238DL},{0x20E808E4L,0x4E30238DL,0x4E30238DL,0x20E808E4L,0x20E808E4L,0x4E30238DL}}};
            int i, j, k;
            for (p_78 = 0; (p_78 <= 1); p_78 += 1)
            { /* block id: 24 */
                int32_t l_94 = (-8L);
                int32_t l_105 = 0x4FB6CEFEL;
                int i, j, k;
                (1 + 1);
            }
            if (p_78)
                break;
            for (p_2403->g_96 = 1; (p_2403->g_96 >= 0); p_2403->g_96 -= 1)
            { /* block id: 59 */
                int8_t *l_130[7][10] = {{(void*)0,&p_2403->g_102[5][1][3],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[4][0][7],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[5][1][2],&p_2403->g_102[4][0][7],&p_2403->g_102[5][1][9]},{(void*)0,&p_2403->g_102[5][1][3],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[4][0][7],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[5][1][2],&p_2403->g_102[4][0][7],&p_2403->g_102[5][1][9]},{(void*)0,&p_2403->g_102[5][1][3],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[4][0][7],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[5][1][2],&p_2403->g_102[4][0][7],&p_2403->g_102[5][1][9]},{(void*)0,&p_2403->g_102[5][1][3],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[4][0][7],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[5][1][2],&p_2403->g_102[4][0][7],&p_2403->g_102[5][1][9]},{(void*)0,&p_2403->g_102[5][1][3],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[4][0][7],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[5][1][2],&p_2403->g_102[4][0][7],&p_2403->g_102[5][1][9]},{(void*)0,&p_2403->g_102[5][1][3],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[4][0][7],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[5][1][2],&p_2403->g_102[4][0][7],&p_2403->g_102[5][1][9]},{(void*)0,&p_2403->g_102[5][1][3],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[4][0][7],&p_2403->g_102[4][0][7],(void*)0,&p_2403->g_102[5][1][2],&p_2403->g_102[4][0][7],&p_2403->g_102[5][1][9]}};
                uint8_t *l_131[8][5][2] = {{{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0}},{{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0}},{{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0}},{{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0}},{{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0}},{{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0}},{{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0}},{{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0},{&p_2403->g_98,(void*)0}}};
                int32_t l_137 = 0L;
                int i, j, k;
                l_104 = ((l_137 |= ((((safe_mul_func_uint16_t_u_u((safe_add_func_uint64_t_u_u((l_130[3][5] == ((p_2403->g_98 = l_79[p_2403->g_14][p_2403->g_96][(p_2403->g_96 + 2)]) , &p_2403->g_102[4][0][7])), ((!(p_2403->g_136[0][2] &= (p_2403->g_102[4][0][7] > ((l_103[1][1][0] = p_78) || (+(l_103[1][0][2] < (p_2403->g_96 != (safe_lshift_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((p_2403->g_102[5][1][1] == ((p_78 == 0x17D2L) & p_77)), GROUP_DIVERGE(0, 1))), p_77))))))))) != FAKE_DIVERGE(p_2403->local_1_offset, get_local_id(1), 10)))), (-1L))) < (-5L)) | 2L) <= p_77)) , l_104);
            }
        }
        for (p_2403->g_113 = 0; (p_2403->g_113 <= 1); p_2403->g_113 += 1)
        { /* block id: 69 */
            uint64_t *l_140 = &p_2403->g_141;
            int64_t *l_144[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint32_t *l_145 = (void*)0;
            uint32_t *l_146 = &p_2403->g_147;
            uint16_t *l_154 = &l_123;
            int32_t l_156 = 0x6ED154E9L;
            uint16_t l_160 = 0xF2F0L;
            int32_t l_163 = 7L;
            int32_t l_165 = 0x5E3C0EF0L;
            int32_t l_168 = 0x7E3FCEFBL;
            int32_t l_172 = 1L;
            int32_t l_175[1];
            uint64_t l_217 = 18446744073709551615UL;
            uint64_t **l_222 = &p_2403->g_91;
            uint32_t l_236 = 0x914CAD00L;
            int i;
            for (i = 0; i < 1; i++)
                l_175[i] = (-1L);
            l_104 ^= (safe_sub_func_uint32_t_u_u((((((*l_140) = p_2403->g_comm_values[p_2403->tid]) != ((p_77 = p_2403->g_82[2][0]) ^ ((p_2403->g_136[2][4] , (((*l_146)++) , l_140)) != l_144[3]))) > p_2403->g_102[4][0][7]) >= 0xE52F0B0BL), (safe_add_func_uint32_t_u_u(4294967286UL, (((*l_154) = (safe_rshift_func_uint16_t_u_u(p_2403->g_25, p_2403->g_113))) <= p_78)))));
            if (p_78)
                continue;
            for (p_2403->g_120 = 0; (p_2403->g_120 <= 1); p_2403->g_120 += 1)
            { /* block id: 78 */
                int64_t l_155 = (-1L);
                int32_t l_157 = 0x2D6737CDL;
                int32_t l_174 = (-1L);
                int32_t l_178 = (-8L);
                int32_t l_179 = 0x23088396L;
                uint16_t l_185 = 0xE474L;
                int i, j, k;
                l_156 = (l_79[(p_2403->g_25 + 5)][p_2403->g_25][(p_2403->g_25 + 3)] < l_155);
                for (l_156 = 0; (l_156 <= 1); l_156 += 1)
                { /* block id: 82 */
                    int32_t l_164 = 0x3D4E5E22L;
                    int32_t l_166 = 0x71FA4CEAL;
                    int32_t l_181 = 0L;
                    int32_t l_182 = (-5L);
                    uint64_t *l_192 = &l_79[(p_2403->g_25 + 5)][p_2403->g_25][(p_2403->g_25 + 3)];
                    uint64_t ***l_223 = (void*)0;
                    int64_t l_233 = (-9L);
                    if (p_77)
                    { /* block id: 83 */
                        int8_t l_159[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
                        int32_t l_170 = 0x496F3E45L;
                        int32_t l_173 = (-3L);
                        int32_t l_176 = (-7L);
                        int32_t l_183 = 9L;
                        int32_t l_184 = (-1L);
                        int i;
                        ++l_160;
                        l_185--;
                        if (p_2403->g_188[1][2])
                            break;
                    }
                    else
                    { /* block id: 87 */
                        int32_t **l_189 = &p_2403->g_84[0][5][2];
                        uint64_t *l_194 = &p_2403->g_25;
                        uint64_t **l_193 = &l_194;
                        int32_t *l_196 = &p_2403->g_197;
                        l_166 = ((l_155 && (~p_2403->g_141)) ^ (((*l_196) = (((((((+(l_189 == &l_81[7][3][0])) > (safe_add_func_int64_t_s_s(0x12AF3BA23B5E7A8BL, (((*p_2403->g_90) = l_192) == ((*l_193) = l_192))))) & ((((65535UL == l_179) , GROUP_DIVERGE(0, 1)) && l_79[(p_2403->g_25 + 5)][p_2403->g_25][(p_2403->g_25 + 3)]) == p_77)) != l_179) , p_2403->g_195) != p_77) && FAKE_DIVERGE(p_2403->local_0_offset, get_local_id(0), 10))) , p_2403->g_113));
                        l_166 = ((safe_rshift_func_int16_t_s_u(p_77, 9)) ^ (safe_sub_func_int32_t_s_s((((p_77 | ((safe_mul_func_uint8_t_u_u((safe_unary_minus_func_uint32_t_u(((*l_146) &= (p_78 ^ p_78)))), l_79[(p_2403->g_25 + 5)][p_2403->g_25][(p_2403->g_25 + 3)])) , (safe_lshift_func_uint16_t_u_s(((((safe_lshift_func_uint16_t_u_s((((safe_mul_func_uint16_t_u_u((p_2403->g_197 >= ((safe_div_func_int32_t_s_s((p_2403->g_188[1][1] || ((p_2403->g_215 = &p_2403->g_102[2][1][4]) == &p_2403->g_102[2][1][6])), (-1L))) == p_77)), (-4L))) , l_216[9][1]) >= 0xBF04F74AL), l_217)) == FAKE_DIVERGE(p_2403->global_0_offset, get_global_id(0), 10)) || p_77) >= (*p_2403->g_13)), p_78)))) != p_78) ^ p_78), p_77)));
                        (*l_189) = &l_165;
                        if (p_78)
                            continue;
                    }
                    l_174 ^= (((safe_div_func_int8_t_s_s(0x52L, ((safe_mul_func_int8_t_s_s((l_81[1][6][1] != ((0x10A8L > (&p_2403->g_91 == (p_2403->g_90 = l_222))) , (void*)0)), (safe_sub_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((l_180[3] & p_78) < (safe_mod_func_uint8_t_u_u((safe_add_func_int8_t_s_s((*p_2403->g_215), l_157)), (*p_2403->g_215)))), 7)), p_78)))) || (*p_2403->g_215)))) ^ l_181) && l_232);
                    if (l_233)
                        continue;
                    for (l_168 = 0; (l_168 <= 2); l_168 += 1)
                    { /* block id: 103 */
                        int32_t l_234 = 1L;
                        int32_t l_235 = 0x278ADA1DL;
                        int32_t *l_241 = &p_2403->g_197;
                        int i, j;
                        if (l_216[l_168][(p_2403->g_113 + 1)])
                            break;
                        ++l_236;
                        l_235 = ((safe_mod_func_uint32_t_u_u((l_216[(p_2403->g_25 + 1)][l_168] < ((p_77 >= (p_2403->g_147 && ((+((((void*)0 == l_241) | 0x17L) , p_78)) > (((((void*)0 != l_81[7][3][0]) & (-8L)) , FAKE_DIVERGE(p_2403->group_0_offset, get_group_id(0), 10)) < 0x9666L)))) | p_78)), l_232)) >= p_2403->g_14);
                    }
                }
            }
        }
    }
    for (p_78 = 0; (p_78 <= 47); p_78 = safe_add_func_int64_t_s_s(p_78, 1))
    { /* block id: 114 */
        int32_t l_248 = 0L;
        uint32_t *l_249 = &p_2403->g_250;
        l_253 &= (safe_mul_func_uint16_t_u_u((((*l_249) |= ((GROUP_DIVERGE(1, 1) | ((1L > (safe_rshift_func_int8_t_s_u(l_248, 7))) == p_2403->g_102[4][1][6])) & 0UL)) , (safe_mul_func_uint16_t_u_u((0x8666FD07L <= ((p_78 , (l_248 ^ 0x4BF4C2580819E347L)) == (+(0x10C2C05A03AF1E85L <= 1UL)))), (*p_2403->g_13)))), 0xC089L));
    }
    for (l_253 = 0; (l_253 <= 1); l_253 += 1)
    { /* block id: 120 */
        int32_t *l_254 = &p_2403->g_82[1][0];
        int32_t **l_255[7][1];
        int16_t *l_256 = &p_2403->g_14;
        int i, j;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 1; j++)
                l_255[i][j] = &l_254;
        }
        l_81[7][3][0] = l_254;
        return l_256;
    }
    return l_257;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S0 c_2404;
    struct S0* p_2403 = &c_2404;
    struct S0 c_2405 = {
        6L, // p_2403->g_6
        0x6912L, // p_2403->g_14
        &p_2403->g_14, // p_2403->g_13
        18446744073709551613UL, // p_2403->g_25
        {{(-6L)},{(-6L)},{(-6L)}}, // p_2403->g_82
        {{{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0}},{{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0}},{{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0}},{{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0},{&p_2403->g_82[1][0],(void*)0,&p_2403->g_82[0][0],(void*)0}}}, // p_2403->g_84
        &p_2403->g_84[0][5][2], // p_2403->g_83
        &p_2403->g_25, // p_2403->g_91
        &p_2403->g_91, // p_2403->g_90
        0x0F71L, // p_2403->g_96
        0xDCL, // p_2403->g_98
        {{{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L},{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L}},{{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L},{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L}},{{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L},{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L}},{{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L},{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L}},{{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L},{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L}},{{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L},{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L}},{{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L},{0x44L,1L,0L,0x35L,0x29L,0x35L,0L,1L,0x44L,0L}}}, // p_2403->g_102
        4294967288UL, // p_2403->g_113
        0x25A1L, // p_2403->g_120
        {{0x4504DF134357E977L,(-2L),0x2476E1AB4B5E314AL,3L,(-2L),3L,0x2476E1AB4B5E314AL,(-2L),0x4504DF134357E977L},{0x4504DF134357E977L,(-2L),0x2476E1AB4B5E314AL,3L,(-2L),3L,0x2476E1AB4B5E314AL,(-2L),0x4504DF134357E977L},{0x4504DF134357E977L,(-2L),0x2476E1AB4B5E314AL,3L,(-2L),3L,0x2476E1AB4B5E314AL,(-2L),0x4504DF134357E977L},{0x4504DF134357E977L,(-2L),0x2476E1AB4B5E314AL,3L,(-2L),3L,0x2476E1AB4B5E314AL,(-2L),0x4504DF134357E977L}}, // p_2403->g_136
        2UL, // p_2403->g_141
        4294967295UL, // p_2403->g_147
        {{0x6E01L,0x6E01L,0x6E01L,0x6E01L,0x6E01L,0x6E01L,0x6E01L},{0x6E01L,0x6E01L,0x6E01L,0x6E01L,0x6E01L,0x6E01L,0x6E01L},{0x6E01L,0x6E01L,0x6E01L,0x6E01L,0x6E01L,0x6E01L,0x6E01L}}, // p_2403->g_188
        4L, // p_2403->g_195
        0x75030BE5L, // p_2403->g_197
        &p_2403->g_102[4][0][7], // p_2403->g_215
        0xDEFBBDF4L, // p_2403->g_250
        0xF01A02E4654339FAL, // p_2403->g_259
        (void*)0, // p_2403->g_267
        65527UL, // p_2403->g_322
        &p_2403->g_82[1][0], // p_2403->g_330
        &p_2403->g_84[2][2][1], // p_2403->g_349
        0L, // p_2403->g_365
        1UL, // p_2403->g_367
        0x4EF17247L, // p_2403->g_418
        &p_2403->g_250, // p_2403->g_456
        0x6118FB4D7C0C52BDL, // p_2403->g_492
        (void*)0, // p_2403->g_520
        &p_2403->g_520, // p_2403->g_519
        &p_2403->g_519, // p_2403->g_518
        0xFBL, // p_2403->g_592
        3L, // p_2403->g_619
        (void*)0, // p_2403->g_622
        &p_2403->g_90, // p_2403->g_627
        0x71L, // p_2403->g_635
        {{{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L},{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L}},{{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L},{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L}},{{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L},{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L}},{{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L},{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L}},{{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L},{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L}},{{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L},{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L}},{{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L},{0x14F6EE85L,0x14F6EE85L,0x5651D9C2L,0x33EFDFDBL,0x10A9FAA7L,0x33EFDFDBL,0x5651D9C2L,0x14F6EE85L,0x14F6EE85L,0x5651D9C2L}}}, // p_2403->g_676
        &p_2403->g_82[0][0], // p_2403->g_740
        &p_2403->g_82[1][0], // p_2403->g_864
        0x5BA12B6F056149D8L, // p_2403->g_936
        &p_2403->g_250, // p_2403->g_996
        &p_2403->g_996, // p_2403->g_995
        &p_2403->g_995, // p_2403->g_994
        &p_2403->g_113, // p_2403->g_1032
        &p_2403->g_1032, // p_2403->g_1031
        (-6L), // p_2403->g_1091
        {0xB9441A55L,0xB9441A55L,0xB9441A55L}, // p_2403->g_1116
        {&p_2403->g_1116[0]}, // p_2403->g_1115
        &p_2403->g_1115[0], // p_2403->g_1114
        {&p_2403->g_1114,&p_2403->g_1114,&p_2403->g_1114,&p_2403->g_1114,&p_2403->g_1114,&p_2403->g_1114,&p_2403->g_1114,&p_2403->g_1114}, // p_2403->g_1113
        &p_2403->g_1113[2], // p_2403->g_1112
        &p_2403->g_197, // p_2403->g_1130
        &p_2403->g_1130, // p_2403->g_1129
        &p_2403->g_84[0][5][2], // p_2403->g_1135
        {{{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L}},{{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L}},{{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L},{(-4L),0x7AL,2L}}}, // p_2403->g_1157
        (void*)0, // p_2403->g_1203
        (void*)0, // p_2403->g_1214
        (-10L), // p_2403->g_1292
        (void*)0, // p_2403->g_1308
        &p_2403->g_1308, // p_2403->g_1307
        {0x31CEL,0x31CEL,0x31CEL,0x31CEL}, // p_2403->g_1330
        0L, // p_2403->g_1371
        (void*)0, // p_2403->g_1554
        &p_2403->g_1554, // p_2403->g_1553
        5L, // p_2403->g_1608
        &p_2403->g_995, // p_2403->g_1642
        &p_2403->g_1642, // p_2403->g_1641
        7UL, // p_2403->g_1683
        {(-7L),0x639EL,(-7L),(-7L),0x639EL,(-7L),(-7L)}, // p_2403->g_1705
        &p_2403->g_622, // p_2403->g_1712
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_2403->g_1731
        1L, // p_2403->g_1758
        &p_2403->g_622, // p_2403->g_1819
        {1L,1L,1L,1L,1L,1L,1L,1L,1L}, // p_2403->g_1834
        (void*)0, // p_2403->g_1856
        &p_2403->g_936, // p_2403->g_1897
        &p_2403->g_1897, // p_2403->g_1896
        {&p_2403->g_1896,&p_2403->g_1896,&p_2403->g_1896,&p_2403->g_1896,&p_2403->g_1896,&p_2403->g_1896,&p_2403->g_1896,&p_2403->g_1896}, // p_2403->g_1895
        &p_2403->g_1129, // p_2403->g_1900
        0x1DECECB7L, // p_2403->g_1923
        &p_2403->g_1923, // p_2403->g_1922
        &p_2403->g_1922, // p_2403->g_1921
        1L, // p_2403->g_1933
        &p_2403->g_622, // p_2403->g_1946
        &p_2403->g_84[0][5][2], // p_2403->g_1948
        0x95L, // p_2403->g_2163
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2403->g_2186
        &p_2403->g_1641, // p_2403->g_2214
        &p_2403->g_2214, // p_2403->g_2213
        (void*)0, // p_2403->g_2219
        &p_2403->g_1896, // p_2403->g_2220
        {&p_2403->g_84[3][3][3],&p_2403->g_84[3][3][3],&p_2403->g_84[3][3][3]}, // p_2403->g_2277
        &p_2403->g_84[3][1][2], // p_2403->g_2278
        &p_2403->g_84[0][4][2], // p_2403->g_2343
        {0x6A82L,6L,0x6A82L,0x6A82L,6L,0x6A82L,0x6A82L,6L,0x6A82L,0x6A82L}, // p_2403->g_2345
        0UL, // p_2403->g_2351
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2403->g_2354
        &p_2403->g_622, // p_2403->g_2356
        0x7FD81225F731D3C4L, // p_2403->g_2386
        {0L}, // p_2403->g_2387
        &p_2403->g_622, // p_2403->g_2389
        1L, // p_2403->g_2402
        sequence_input[get_global_id(0)], // p_2403->global_0_offset
        sequence_input[get_global_id(1)], // p_2403->global_1_offset
        sequence_input[get_global_id(2)], // p_2403->global_2_offset
        sequence_input[get_local_id(0)], // p_2403->local_0_offset
        sequence_input[get_local_id(1)], // p_2403->local_1_offset
        sequence_input[get_local_id(2)], // p_2403->local_2_offset
        sequence_input[get_group_id(0)], // p_2403->group_0_offset
        sequence_input[get_group_id(1)], // p_2403->group_1_offset
        sequence_input[get_group_id(2)], // p_2403->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_2403->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2404 = c_2405;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2403);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2403->g_6, "p_2403->g_6", print_hash_value);
    transparent_crc(p_2403->g_14, "p_2403->g_14", print_hash_value);
    transparent_crc(p_2403->g_25, "p_2403->g_25", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2403->g_82[i][j], "p_2403->g_82[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2403->g_96, "p_2403->g_96", print_hash_value);
    transparent_crc(p_2403->g_98, "p_2403->g_98", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_2403->g_102[i][j][k], "p_2403->g_102[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2403->g_113, "p_2403->g_113", print_hash_value);
    transparent_crc(p_2403->g_120, "p_2403->g_120", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2403->g_136[i][j], "p_2403->g_136[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2403->g_141, "p_2403->g_141", print_hash_value);
    transparent_crc(p_2403->g_147, "p_2403->g_147", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2403->g_188[i][j], "p_2403->g_188[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2403->g_195, "p_2403->g_195", print_hash_value);
    transparent_crc(p_2403->g_197, "p_2403->g_197", print_hash_value);
    transparent_crc(p_2403->g_250, "p_2403->g_250", print_hash_value);
    transparent_crc(p_2403->g_259, "p_2403->g_259", print_hash_value);
    transparent_crc(p_2403->g_322, "p_2403->g_322", print_hash_value);
    transparent_crc(p_2403->g_365, "p_2403->g_365", print_hash_value);
    transparent_crc(p_2403->g_367, "p_2403->g_367", print_hash_value);
    transparent_crc(p_2403->g_418, "p_2403->g_418", print_hash_value);
    transparent_crc(p_2403->g_492, "p_2403->g_492", print_hash_value);
    transparent_crc(p_2403->g_592, "p_2403->g_592", print_hash_value);
    transparent_crc(p_2403->g_619, "p_2403->g_619", print_hash_value);
    transparent_crc(p_2403->g_635, "p_2403->g_635", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_2403->g_676[i][j][k], "p_2403->g_676[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2403->g_936, "p_2403->g_936", print_hash_value);
    transparent_crc(p_2403->g_1091, "p_2403->g_1091", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2403->g_1116[i], "p_2403->g_1116[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2403->g_1157[i][j][k], "p_2403->g_1157[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2403->g_1292, "p_2403->g_1292", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2403->g_1330[i], "p_2403->g_1330[i]", print_hash_value);

    }
    transparent_crc(p_2403->g_1371, "p_2403->g_1371", print_hash_value);
    transparent_crc(p_2403->g_1608, "p_2403->g_1608", print_hash_value);
    transparent_crc(p_2403->g_1683, "p_2403->g_1683", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2403->g_1705[i], "p_2403->g_1705[i]", print_hash_value);

    }
    transparent_crc(p_2403->g_1758, "p_2403->g_1758", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2403->g_1834[i], "p_2403->g_1834[i]", print_hash_value);

    }
    transparent_crc(p_2403->g_1923, "p_2403->g_1923", print_hash_value);
    transparent_crc(p_2403->g_1933, "p_2403->g_1933", print_hash_value);
    transparent_crc(p_2403->g_2163, "p_2403->g_2163", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2403->g_2345[i], "p_2403->g_2345[i]", print_hash_value);

    }
    transparent_crc(p_2403->g_2351, "p_2403->g_2351", print_hash_value);
    transparent_crc(p_2403->g_2386, "p_2403->g_2386", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2403->g_2387[i], "p_2403->g_2387[i]", print_hash_value);

    }
    transparent_crc(p_2403->g_2402, "p_2403->g_2402", print_hash_value);
    transparent_crc(p_2403->l_comm_values[get_linear_local_id()], "p_2403->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2403->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_2403->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
