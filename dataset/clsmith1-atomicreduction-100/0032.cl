// ---atomic_reductions ---fake_divergence -g 63,53,1 -l 21,1,1
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


// Seed: 32

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int8_t g_4;
    int32_t g_7[4];
    int32_t g_9;
    int32_t * volatile g_8;
    uint32_t g_11;
    uint64_t g_35;
    uint8_t g_41[10];
    uint8_t g_58;
    int32_t g_63;
    uint64_t g_71[2];
    uint64_t g_75;
    uint16_t g_86;
    uint64_t g_94[4][2];
    uint16_t g_126;
    int8_t g_140;
    int16_t g_154;
    uint32_t g_162;
    uint32_t g_165;
    int32_t *g_213;
    volatile uint64_t g_226[1];
    volatile uint64_t * volatile g_225[3];
    volatile uint64_t g_228;
    volatile uint64_t * volatile g_227;
    volatile uint64_t g_230;
    volatile uint64_t * volatile g_229;
    volatile uint64_t g_232;
    volatile uint64_t *g_231;
    volatile uint64_t * volatile *g_224[7][3][4];
    volatile uint64_t * volatile * volatile *g_223;
    uint64_t **g_243;
    int8_t *g_248;
    uint64_t g_257;
    int32_t g_297;
    int32_t g_302;
    int64_t g_304[6];
    uint16_t g_306;
    uint32_t g_326;
    uint8_t g_336;
    int32_t **g_357;
    int32_t ***g_356;
    int64_t g_381[6];
    int16_t g_384;
    int32_t g_387;
    uint32_t g_389[4][2];
    uint64_t g_492;
    uint8_t g_496;
    int32_t g_501;
    int32_t g_507;
    int32_t g_508;
    uint8_t g_509[1];
    uint64_t g_583;
    uint32_t *g_599[10][6];
    uint32_t **g_598;
    uint32_t ***g_597[8][4];
    uint32_t ** volatile *g_612;
    uint32_t ** volatile * volatile *g_611[6][5];
    uint32_t ***g_617[9];
    uint32_t ****g_616;
    uint64_t g_625;
    int32_t g_671[8];
    uint32_t g_707;
    int32_t g_745;
    int64_t g_768;
    uint16_t g_769;
    uint8_t g_820[6][9][1];
    uint8_t g_823;
    int16_t g_853;
    int8_t g_855[5];
    int64_t **g_940;
    int64_t ***g_939;
    int16_t * volatile g_994;
    int16_t * volatile *g_993;
    uint32_t *g_1067;
    uint16_t g_1077[2][6][1];
    uint64_t ***g_1126;
    uint64_t ****g_1125[10];
    int64_t g_1169;
    int8_t g_1171;
    uint16_t g_1172;
    uint8_t g_1214;
    int8_t g_1328;
    uint32_t **g_1337;
    uint32_t * volatile * volatile g_1406;
    uint32_t * volatile * volatile *g_1405;
    uint32_t * volatile * volatile * volatile * volatile g_1404;
    uint32_t * volatile * volatile * volatile * volatile *g_1403;
    uint32_t * volatile * volatile * volatile * volatile **g_1402[2];
    int32_t g_1426;
    int32_t g_1427;
    int16_t g_1428;
    uint16_t g_1429[6];
    int8_t g_1476[5];
    int16_t g_1477;
    int32_t g_1480;
    uint32_t g_1482;
    int8_t g_1532;
    volatile uint64_t g_1558;
    volatile uint64_t g_1559[1];
    volatile uint64_t * volatile g_1557[10];
    volatile uint64_t * volatile *g_1556;
    uint32_t *****g_1578;
    uint32_t ******g_1577;
    volatile int64_t * volatile g_1593;
    volatile int64_t * volatile *g_1592;
    int64_t g_1657;
    uint8_t * volatile g_1664;
    uint8_t * volatile g_1665;
    uint8_t * volatile g_1666;
    uint8_t * volatile g_1667;
    uint8_t * volatile g_1668;
    uint8_t *g_1669;
    uint8_t * volatile *g_1663[4][7][2];
    uint64_t g_1697;
    int32_t g_1718[6];
    uint32_t g_1719;
    volatile int64_t * volatile * volatile *g_1735;
    volatile int64_t * volatile * volatile **g_1734;
    volatile int64_t * volatile * volatile ***g_1733;
    volatile int32_t g_1850;
    volatile int32_t *g_1849;
    volatile int32_t * volatile *g_1848;
    uint64_t g_1897;
    int64_t g_1933;
    int32_t *g_1967[3];
    uint16_t *g_1980;
    uint16_t **g_1979;
    int16_t *g_1989;
    int16_t **g_1988;
    uint16_t g_2022;
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
int32_t  func_1(struct S0 * p_2045);
int32_t * func_2(uint8_t  p_3, struct S0 * p_2045);
int8_t  func_14(uint64_t  p_15, int8_t  p_16, struct S0 * p_2045);
int16_t  func_21(int32_t * p_22, uint32_t * p_23, int32_t  p_24, struct S0 * p_2045);
int32_t * func_25(int64_t  p_26, int32_t * p_27, uint32_t  p_28, struct S0 * p_2045);
uint8_t  func_42(int32_t * p_43, int16_t  p_44, struct S0 * p_2045);
uint32_t  func_45(uint32_t  p_46, uint8_t  p_47, int64_t  p_48, int64_t  p_49, struct S0 * p_2045);
int32_t  func_51(uint8_t * p_52, int32_t * p_53, uint16_t  p_54, uint64_t  p_55, int8_t  p_56, struct S0 * p_2045);
int32_t * func_59(int16_t  p_60, uint8_t * p_61, int32_t  p_62, struct S0 * p_2045);
int32_t  func_80(uint16_t  p_81, int16_t  p_82, uint32_t  p_83, uint64_t  p_84, struct S0 * p_2045);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2045->g_4 p_2045->g_8 p_2045->g_7 p_2045->g_9 p_2045->g_1337 p_2045->g_1067 p_2045->g_1669 p_2045->g_41 p_2045->g_248 p_2045->g_140 p_2045->g_1578 p_2045->g_616 p_2045->g_617 p_2045->g_598 p_2045->g_381 p_2045->g_213 p_2045->g_1172 p_2045->g_1897 p_2045->g_1214 p_2045->g_356 p_2045->g_357 p_2045->g_492 p_2045->g_1429 p_2045->g_855 p_2045->g_58 p_2045->g_583 p_2045->g_707 p_2045->g_2022 p_2045->g_1577 p_2045->g_71 p_2045->g_86 p_2045->g_63 p_2045->g_126 p_2045->g_35 p_2045->g_154 p_2045->g_94 p_2045->g_75 p_2045->g_496 p_2045->g_165 p_2045->g_1988 p_2045->g_1989 p_2045->g_1477 p_2045->g_820
 * writes: p_2045->g_4 p_2045->g_11 p_2045->g_35 p_2045->g_9 p_2045->g_853 p_2045->g_599 p_2045->g_1077 p_2045->g_492 p_2045->g_140 p_2045->g_1933 p_2045->g_58 p_2045->g_213 p_2045->g_165 p_2045->g_707 p_2045->g_1897 p_2045->g_2022 p_2045->g_617 p_2045->g_71 p_2045->g_75 p_2045->g_86 p_2045->g_63 p_2045->g_126 p_2045->g_154 p_2045->g_162 p_2045->g_496 p_2045->g_1477 p_2045->g_820
 */
int32_t  func_1(struct S0 * p_2045)
{ /* block id: 4 */
    int32_t *l_2040 = &p_2045->g_1480;
    int32_t *l_2042 = &p_2045->g_63;
    int32_t **l_2041 = &l_2042;
    int32_t *l_2044 = &p_2045->g_63;
    int32_t **l_2043 = &l_2044;
    (*l_2043) = ((*l_2041) = (l_2040 = ((*p_2045->g_357) = func_2(p_2045->g_4, p_2045))));
    return (**l_2041);
}


/* ------------------------------------------ */
/* 
 * reads : p_2045->g_4 p_2045->g_8 p_2045->g_7 p_2045->g_9 p_2045->g_1337 p_2045->g_1067 p_2045->g_1669 p_2045->g_41 p_2045->g_248 p_2045->g_140 p_2045->g_1578 p_2045->g_616 p_2045->g_617 p_2045->g_598 p_2045->g_381 p_2045->g_213 p_2045->g_1172 p_2045->g_1897 p_2045->g_1214 p_2045->g_356 p_2045->g_357 p_2045->g_492 p_2045->g_1429 p_2045->g_855 p_2045->g_58 p_2045->g_583 p_2045->g_707 p_2045->g_2022 p_2045->g_1577 p_2045->g_71 p_2045->g_86 p_2045->g_63 p_2045->g_126 p_2045->g_35 p_2045->g_154 p_2045->g_94 p_2045->g_75 p_2045->g_496 p_2045->g_165 p_2045->g_1988 p_2045->g_1989 p_2045->g_1477 p_2045->g_820
 * writes: p_2045->g_4 p_2045->g_11 p_2045->g_35 p_2045->g_9 p_2045->g_853 p_2045->g_599 p_2045->g_1077 p_2045->g_492 p_2045->g_140 p_2045->g_1933 p_2045->g_58 p_2045->g_213 p_2045->g_165 p_2045->g_707 p_2045->g_1897 p_2045->g_2022 p_2045->g_617 p_2045->g_71 p_2045->g_75 p_2045->g_86 p_2045->g_63 p_2045->g_126 p_2045->g_154 p_2045->g_162 p_2045->g_496 p_2045->g_1477 p_2045->g_820
 */
int32_t * func_2(uint8_t  p_3, struct S0 * p_2045)
{ /* block id: 5 */
    for (p_2045->g_4 = 27; (p_2045->g_4 == (-27)); p_2045->g_4 = safe_sub_func_uint32_t_u_u(p_2045->g_4, 8))
    { /* block id: 8 */
        int32_t *l_36 = &p_2045->g_9;
        for (p_3 = 0; (p_3 <= 3); p_3 += 1)
        { /* block id: 11 */
            uint32_t *l_10 = &p_2045->g_11;
            uint64_t *l_33 = (void*)0;
            uint64_t *l_34 = &p_2045->g_35;
            int i;
            (*l_36) = (p_2045->g_8 != ((((*l_10) = FAKE_DIVERGE(p_2045->local_1_offset, get_local_id(1), 10)) | (safe_add_func_int8_t_s_s(func_14(p_2045->g_7[p_3], (safe_div_func_int64_t_s_s((safe_rshift_func_int8_t_s_s((func_21(func_25((FAKE_DIVERGE(p_2045->global_0_offset, get_global_id(0), 10) && 2L), (((safe_div_func_uint64_t_u_u(0x3BF58AAE07EA4C57L, 0x799040C3F30B91EEL)) == (p_2045->g_4 | ((safe_rshift_func_uint8_t_u_u(p_3, ((((*l_34) = (p_2045->g_9 < p_2045->g_9)) , FAKE_DIVERGE(p_2045->global_1_offset, get_global_id(1), 10)) | 0x8CL))) >= p_2045->g_4))) , l_36), p_2045->g_7[3], p_2045), (*p_2045->g_1337), p_3, p_2045) != p_2045->g_855[2]), p_3)), 0x32FB84EC65978427L)), p_2045), p_3))) , l_36));
            return (**p_2045->g_356);
        }
        if (p_3)
            continue;
        return l_36;
    }
    return (*p_2045->g_357);
}


/* ------------------------------------------ */
/* 
 * reads : p_2045->g_356 p_2045->g_357 p_2045->g_213 p_2045->g_9 p_2045->g_248 p_2045->g_1669 p_2045->g_41 p_2045->g_58 p_2045->g_583 p_2045->g_1578 p_2045->g_616 p_2045->g_617 p_2045->g_598 p_2045->g_140 p_2045->g_707 p_2045->g_2022 p_2045->g_1577 p_2045->g_71 p_2045->g_86 p_2045->g_7 p_2045->g_63 p_2045->g_126 p_2045->g_35 p_2045->g_154 p_2045->g_94 p_2045->g_4 p_2045->g_75 p_2045->g_496 p_2045->g_165 p_2045->g_1988 p_2045->g_1989 p_2045->g_1477 p_2045->g_820 p_2045->g_1214
 * writes: p_2045->g_1933 p_2045->g_140 p_2045->g_58 p_2045->g_9 p_2045->g_213 p_2045->g_853 p_2045->g_165 p_2045->g_707 p_2045->g_1897 p_2045->g_2022 p_2045->g_617 p_2045->g_71 p_2045->g_75 p_2045->g_86 p_2045->g_63 p_2045->g_126 p_2045->g_154 p_2045->g_162 p_2045->g_496 p_2045->g_1477 p_2045->g_820 p_2045->g_35
 */
int8_t  func_14(uint64_t  p_15, int8_t  p_16, struct S0 * p_2045)
{ /* block id: 871 */
    int32_t **l_1922 = &p_2045->g_213;
    int32_t l_1923 = 0x0619D0DCL;
    uint8_t *l_1930[2][8] = {{&p_2045->g_820[5][7][0],&p_2045->g_41[9],&p_2045->g_820[5][7][0],&p_2045->g_820[5][7][0],&p_2045->g_41[9],&p_2045->g_820[5][7][0],&p_2045->g_820[5][7][0],&p_2045->g_41[9]},{&p_2045->g_820[5][7][0],&p_2045->g_41[9],&p_2045->g_820[5][7][0],&p_2045->g_820[5][7][0],&p_2045->g_41[9],&p_2045->g_820[5][7][0],&p_2045->g_820[5][7][0],&p_2045->g_41[9]}};
    int64_t *l_1931 = (void*)0;
    int64_t *l_1932 = &p_2045->g_1933;
    uint16_t l_1950 = 0x8D5EL;
    int32_t *l_1985[1][2][6] = {{{&p_2045->g_1718[2],&p_2045->g_1718[2],&p_2045->g_1718[2],&p_2045->g_1718[2],&p_2045->g_1718[2],&p_2045->g_1718[2]},{&p_2045->g_1718[2],&p_2045->g_1718[2],&p_2045->g_1718[2],&p_2045->g_1718[2],&p_2045->g_1718[2],&p_2045->g_1718[2]}}};
    int32_t l_2021[3];
    uint32_t ***l_2026 = &p_2045->g_598;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_2021[i] = 0x1A4B6887L;
    if ((safe_mul_func_uint16_t_u_u((((((((***p_2045->g_356) ^ ((!((l_1922 = l_1922) != (*p_2045->g_356))) >= ((*p_2045->g_248) = (l_1923 && (0x26L != ((safe_add_func_uint32_t_u_u(((!(safe_add_func_uint64_t_u_u((l_1923 , (((safe_sub_func_int16_t_s_s((((~p_16) , l_1930[1][0]) == (((*l_1932) = 0x65E4F90D4ADE6791L) , l_1930[1][0])), l_1923)) < 0x68BC5D5EL) || l_1923)), p_16))) , p_15), (*p_2045->g_213))) , l_1923)))))) & 0xDC85A19F89C2CB84L) <= 0x0AABL) , 0x16L) || (*p_2045->g_1669)) >= p_15), p_16)))
    { /* block id: 875 */
        int32_t l_1951[8][2][6] = {{{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL},{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL}},{{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL},{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL}},{{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL},{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL}},{{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL},{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL}},{{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL},{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL}},{{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL},{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL}},{{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL},{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL}},{{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL},{0x24C8AA3FL,0x39660872L,0L,0L,0x39660872L,0x24C8AA3FL}}};
        uint32_t ***l_1962 = (void*)0;
        int32_t l_1965 = 0x2F121D1DL;
        int32_t *l_1966 = &p_2045->g_297;
        uint32_t *****l_1973 = &p_2045->g_616;
        int i, j, k;
        for (p_2045->g_58 = (-7); (p_2045->g_58 != 7); p_2045->g_58 = safe_add_func_int64_t_s_s(p_2045->g_58, 9))
        { /* block id: 878 */
            uint32_t **l_1946 = (void*)0;
            int32_t l_1949[2][5] = {{7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L}};
            int16_t *l_1952 = &p_2045->g_853;
            uint32_t *l_1953 = (void*)0;
            uint32_t *l_1954 = &p_2045->g_165;
            uint64_t l_1963[1];
            int8_t l_1987 = 0x69L;
            uint64_t l_2000 = 0xD9E7E05D104B680FL;
            int64_t *l_2018 = &p_2045->g_1657;
            int32_t *l_2019 = &p_2045->g_9;
            int32_t *l_2020[1];
            int i, j;
            for (i = 0; i < 1; i++)
                l_1963[i] = 1UL;
            for (i = 0; i < 1; i++)
                l_2020[i] = &l_1951[4][1][0];
            (*p_2045->g_357) = ((p_16 , ((**l_1922) = (p_15 == (safe_mod_func_int16_t_s_s(((!0x02D1BDF8L) , 0L), (safe_add_func_uint8_t_u_u(0xB3L, p_15))))))) , (*l_1922));
            (**p_2045->g_356) = func_25(((((*l_1954) = (((**l_1922) >= (p_15--)) == (((*l_1952) = (safe_div_func_int16_t_s_s((-3L), ((p_2045->g_583 , (GROUP_DIVERGE(0, 1) && (FAKE_DIVERGE(p_2045->global_1_offset, get_global_id(1), 10) && (5L >= (((~(p_16 && 248UL)) , (safe_mod_func_int64_t_s_s(((l_1950 ^= ((l_1946 != ((safe_rshift_func_uint8_t_u_u((l_1949[0][0] > 3UL), 5)) , (***p_2045->g_1578))) <= (**p_2045->g_357))) >= p_16), p_16))) | l_1951[1][0][2]))))) & (*p_2045->g_248))))) >= 0xE120L))) | 4294967295UL) , l_1951[5][0][3]), (*p_2045->g_357), l_1951[2][1][3], p_2045);
            for (p_2045->g_707 = 0; (p_2045->g_707 <= 0); p_2045->g_707 += 1)
            { /* block id: 888 */
                uint32_t ****l_1959 = (void*)0;
                uint32_t ****l_1960 = (void*)0;
                uint32_t ****l_1961 = (void*)0;
                int32_t l_1964 = (-3L);
                int16_t **l_2002 = &l_1952;
                for (p_2045->g_1897 = 0; (p_2045->g_1897 <= 0); p_2045->g_1897 += 1)
                { /* block id: 891 */
                    (**p_2045->g_356) = (**p_2045->g_356);
                }
            }
            ++p_2045->g_2022;
        }
    }
    else
    { /* block id: 930 */
        int8_t l_2025 = 1L;
        (*l_1922) = func_59(l_2025, &p_2045->g_496, (((***p_2045->g_1577) = (*p_2045->g_616)) != (l_2026 = l_2026)), p_2045);
    }
    (**p_2045->g_356) = func_25((safe_rshift_func_int16_t_s_s((-8L), (safe_rshift_func_int8_t_s_u(0x6FL, 3)))), func_59(((safe_lshift_func_int8_t_s_u((safe_mod_func_int32_t_s_s((0x63BA7279L >= (GROUP_DIVERGE(1, 1) || ((**p_2045->g_1988) ^= (1UL >= ((**l_1922) == p_15))))), (**l_1922))), 6)) < (safe_rshift_func_int8_t_s_s(((*p_2045->g_248) != (-1L)), 0))), &p_2045->g_820[0][7][0], (**l_1922), p_2045), p_2045->g_1214, p_2045);
    for (p_2045->g_35 = 19; (p_2045->g_35 != 34); p_2045->g_35 = safe_add_func_int64_t_s_s(p_2045->g_35, 7))
    { /* block id: 939 */
        int32_t *l_2039 = &l_1923;
        (*l_2039) &= (*p_2045->g_213);
    }
    return (*p_2045->g_248);
}


/* ------------------------------------------ */
/* 
 * reads : p_2045->g_1669 p_2045->g_41 p_2045->g_248 p_2045->g_140 p_2045->g_1578 p_2045->g_616 p_2045->g_617 p_2045->g_598 p_2045->g_381 p_2045->g_213 p_2045->g_9 p_2045->g_1172 p_2045->g_1897 p_2045->g_1214 p_2045->g_356 p_2045->g_357 p_2045->g_492 p_2045->g_1429
 * writes: p_2045->g_853 p_2045->g_599 p_2045->g_1077 p_2045->g_9 p_2045->g_492 p_2045->g_140
 */
int16_t  func_21(int32_t * p_22, uint32_t * p_23, int32_t  p_24, struct S0 * p_2045)
{ /* block id: 858 */
    int16_t l_1887 = 0x4023L;
    int32_t l_1890 = 1L;
    int16_t *l_1891 = &p_2045->g_853;
    uint32_t *l_1896 = &p_2045->g_162;
    uint16_t *l_1898 = &p_2045->g_1077[0][3][0];
    uint32_t *l_1918 = (void*)0;
    uint32_t **l_1917 = &l_1918;
    (***p_2045->g_356) = ((safe_rshift_func_uint16_t_u_s(((+(((safe_lshift_func_int8_t_s_s((safe_unary_minus_func_uint32_t_u((safe_mul_func_uint8_t_u_u((*p_2045->g_1669), (*p_2045->g_248))))), 1)) , ((+l_1887) == (((GROUP_DIVERGE(1, 1) | ((safe_lshift_func_uint8_t_u_u((l_1887 < (p_24 | ((*l_1891) = l_1890))), 1)) != ((((*l_1898) = ((safe_div_func_int64_t_s_s((((((((safe_add_func_int64_t_s_s((p_22 != ((****p_2045->g_1578) = l_1896)), ((p_2045->g_381[3] >= 0x7134L) > (*p_2045->g_213)))) != FAKE_DIVERGE(p_2045->group_0_offset, get_group_id(0), 10)) != p_24) != l_1890) , p_24) & p_24) | p_2045->g_1172), 0x1FC3FB1CBCC08D4FL)) , p_2045->g_1897)) && 0x5072L) != 0UL))) , p_24) , (*p_2045->g_248)))) < p_24)) , p_2045->g_1214), l_1887)) >= GROUP_DIVERGE(1, 1));
    for (p_2045->g_492 = 21; (p_2045->g_492 >= 12); p_2045->g_492 = safe_sub_func_uint16_t_u_u(p_2045->g_492, 8))
    { /* block id: 865 */
        uint32_t l_1919 = 1UL;
        (*p_2045->g_213) |= (l_1887 >= ((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u(((((GROUP_DIVERGE(2, 1) >= (safe_add_func_uint16_t_u_u(((((*p_2045->g_248) = (safe_lshift_func_int8_t_s_s(1L, (safe_mul_func_int16_t_s_s((p_24 < l_1890), 0x712EL))))) , (safe_div_func_int16_t_s_s((((p_24 , l_1887) != (safe_sub_func_uint16_t_u_u((0x91L || (l_1917 != (void*)0)), 0xAC98L))) > p_2045->g_1429[2]), l_1919))) != (-1L)), p_24))) , &p_2045->g_1848) != (void*)0) , l_1887), 1UL)), p_24)), p_24)) == 0x5432L));
        (***p_2045->g_356) = (*p_22);
    }
    return p_24;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_2045->g_9
 */
int32_t * func_25(int64_t  p_26, int32_t * p_27, uint32_t  p_28, struct S0 * p_2045)
{ /* block id: 14 */
    int32_t l_37[9][6][4] = {{{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L}},{{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L}},{{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L}},{{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L}},{{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L}},{{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L}},{{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L}},{{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L}},{{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L},{0L,0x0C683368L,1L,1L}}};
    uint8_t *l_40 = &p_2045->g_41[9];
    uint8_t *l_819 = &p_2045->g_820[5][7][0];
    uint8_t *l_821 = (void*)0;
    uint8_t *l_822 = &p_2045->g_823;
    int32_t l_829 = (-1L);
    int8_t l_849 = 0x18L;
    int32_t **l_892 = &p_2045->g_213;
    uint64_t *l_918 = &p_2045->g_35;
    int64_t ***l_942 = &p_2045->g_940;
    int32_t l_957[3];
    uint32_t l_971 = 3UL;
    uint64_t l_1062[6];
    uint64_t ***l_1108 = &p_2045->g_243;
    uint64_t ***l_1110[7] = {&p_2045->g_243,&p_2045->g_243,&p_2045->g_243,&p_2045->g_243,&p_2045->g_243,&p_2045->g_243,&p_2045->g_243};
    int32_t l_1164 = 0x568CB4C0L;
    uint32_t l_1193[7] = {0xE0326ABDL,1UL,0xE0326ABDL,0xE0326ABDL,1UL,0xE0326ABDL,0xE0326ABDL};
    uint64_t **l_1198 = &l_918;
    int32_t l_1273[7] = {(-1L),0x72792D44L,(-1L),(-1L),0x72792D44L,(-1L),(-1L)};
    uint32_t l_1275 = 0x5A818C9DL;
    int32_t l_1302 = (-4L);
    int16_t l_1304 = 0x68F5L;
    int64_t ****l_1313[4][9] = {{&p_2045->g_939,(void*)0,&p_2045->g_939,&p_2045->g_939,(void*)0,&p_2045->g_939,&p_2045->g_939,(void*)0,&p_2045->g_939},{&p_2045->g_939,(void*)0,&p_2045->g_939,&p_2045->g_939,(void*)0,&p_2045->g_939,&p_2045->g_939,(void*)0,&p_2045->g_939},{&p_2045->g_939,(void*)0,&p_2045->g_939,&p_2045->g_939,(void*)0,&p_2045->g_939,&p_2045->g_939,(void*)0,&p_2045->g_939},{&p_2045->g_939,(void*)0,&p_2045->g_939,&p_2045->g_939,(void*)0,&p_2045->g_939,&p_2045->g_939,(void*)0,&p_2045->g_939}};
    int64_t *****l_1312 = &l_1313[3][1];
    uint64_t l_1386 = 0xF21EBAE4D2AE879EL;
    int64_t l_1520 = 0x226D2CD89F740F4FL;
    uint32_t l_1533 = 0x0127DCF6L;
    uint32_t l_1534[6][4][1] = {{{0x370C4662L},{0x370C4662L},{0x370C4662L},{0x370C4662L}},{{0x370C4662L},{0x370C4662L},{0x370C4662L},{0x370C4662L}},{{0x370C4662L},{0x370C4662L},{0x370C4662L},{0x370C4662L}},{{0x370C4662L},{0x370C4662L},{0x370C4662L},{0x370C4662L}},{{0x370C4662L},{0x370C4662L},{0x370C4662L},{0x370C4662L}},{{0x370C4662L},{0x370C4662L},{0x370C4662L},{0x370C4662L}}};
    uint64_t l_1538 = 1UL;
    uint8_t l_1543 = 0x24L;
    uint16_t l_1642 = 0xAEABL;
    int32_t l_1694 = 0x4A1F9AABL;
    int16_t *l_1728 = (void*)0;
    int16_t **l_1727 = &l_1728;
    uint32_t l_1737 = 4UL;
    int8_t **l_1775[1];
    int8_t **l_1777 = &p_2045->g_248;
    int16_t l_1793 = 1L;
    int8_t l_1843 = (-3L);
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_957[i] = (-2L);
    for (i = 0; i < 6; i++)
        l_1062[i] = 1UL;
    for (i = 0; i < 1; i++)
        l_1775[i] = (void*)0;
    for (p_2045->g_9 = 3; (p_2045->g_9 >= 0); p_2045->g_9 -= 1)
    { /* block id: 17 */
        return &p_2045->g_9;
    }
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_2045->g_7 p_2045->g_63 p_2045->g_71 p_2045->g_86 p_2045->g_58 p_2045->g_126 p_2045->g_9 p_2045->g_35 p_2045->g_154 p_2045->g_94 p_2045->g_4 p_2045->g_75 p_2045->g_165 p_2045->g_140 p_2045->g_162 p_2045->g_223 p_2045->g_213 p_2045->g_243 p_2045->g_257 p_2045->g_306 p_2045->g_326 p_2045->g_389 p_2045->g_297 p_2045->g_384 p_2045->g_304 p_2045->g_381 p_2045->g_387 p_2045->g_336 p_2045->g_492 p_2045->g_496 p_2045->g_356 p_2045->g_501 p_2045->g_509 p_2045->g_357 p_2045->g_302 p_2045->g_583 p_2045->g_597 p_2045->g_611 p_2045->g_625 p_2045->g_507 p_2045->g_707 p_2045->g_508 p_2045->g_671 p_2045->g_769
 * writes: p_2045->g_71 p_2045->g_75 p_2045->g_86 p_2045->g_63 p_2045->g_126 p_2045->g_58 p_2045->g_140 p_2045->g_154 p_2045->g_162 p_2045->g_9 p_2045->g_213 p_2045->g_94 p_2045->g_243 p_2045->g_248 p_2045->g_257 p_2045->g_306 p_2045->g_326 p_2045->g_336 p_2045->g_356 p_2045->g_389 p_2045->g_384 p_2045->g_297 p_2045->g_304 p_2045->g_381 p_2045->g_492 p_2045->g_496 p_2045->g_509 p_2045->g_501 p_2045->g_507 p_2045->g_583 p_2045->g_597 p_2045->g_616 p_2045->g_625 p_2045->g_671 p_2045->g_745 p_2045->g_769 p_2045->g_165
 */
uint8_t  func_42(int32_t * p_43, int16_t  p_44, struct S0 * p_2045)
{ /* block id: 21 */
    int16_t l_50 = 7L;
    uint8_t *l_57 = &p_2045->g_58;
    uint8_t l_816[1];
    int i;
    for (i = 0; i < 1; i++)
        l_816[i] = 0UL;
    l_816[0] |= (func_45(l_50, p_2045->g_7[1], l_50, (func_51(l_57, func_59(((+p_2045->g_63) || 0xAEL), l_57, l_50, p_2045), p_2045->g_94[3][0], l_50, l_50, p_2045) < l_50), p_2045) , l_50);
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_2045->g_94 p_2045->g_165 p_2045->g_126 p_2045->g_9 p_2045->g_63 p_2045->g_306 p_2045->g_162 p_2045->g_389 p_2045->g_71 p_2045->g_58 p_2045->g_297 p_2045->g_384 p_2045->g_75 p_2045->g_304 p_2045->g_35 p_2045->g_326 p_2045->g_4 p_2045->g_381 p_2045->g_387 p_2045->g_257 p_2045->g_86 p_2045->g_7 p_2045->g_154 p_2045->g_336 p_2045->g_140 p_2045->g_213 p_2045->g_492 p_2045->g_496 p_2045->g_356 p_2045->g_501 p_2045->g_509 p_2045->g_357 p_2045->g_302 p_2045->g_583 p_2045->g_597 p_2045->g_611 p_2045->g_625 p_2045->g_507 p_2045->g_707 p_2045->g_508 p_2045->g_671 p_2045->g_769
 * writes: p_2045->g_356 p_2045->g_63 p_2045->g_126 p_2045->g_162 p_2045->g_389 p_2045->g_384 p_2045->g_297 p_2045->g_58 p_2045->g_71 p_2045->g_306 p_2045->g_304 p_2045->g_140 p_2045->g_381 p_2045->g_75 p_2045->g_86 p_2045->g_154 p_2045->g_336 p_2045->g_9 p_2045->g_213 p_2045->g_492 p_2045->g_496 p_2045->g_509 p_2045->g_501 p_2045->g_507 p_2045->g_583 p_2045->g_597 p_2045->g_616 p_2045->g_625 p_2045->g_671 p_2045->g_745 p_2045->g_769 p_2045->g_165
 */
uint32_t  func_45(uint32_t  p_46, uint8_t  p_47, int64_t  p_48, int64_t  p_49, struct S0 * p_2045)
{ /* block id: 182 */
    int8_t l_352 = 0x64L;
    int32_t **l_355 = &p_2045->g_213;
    int32_t ***l_354 = &l_355;
    int8_t l_361 = 0x65L;
    int32_t *l_365 = (void*)0;
    int32_t l_374 = 3L;
    int32_t l_379 = 0x0EA8EFB1L;
    int32_t l_380 = (-1L);
    int32_t l_385 = 0x04293425L;
    int32_t l_388 = 0x4651075FL;
    uint16_t l_440 = 0UL;
    uint8_t *l_474 = &p_2045->g_336;
    int32_t *l_581 = &l_380;
    uint32_t ***l_601 = &p_2045->g_598;
    uint32_t l_618 = 0xA2328D64L;
    uint32_t *****l_639 = &p_2045->g_616;
    uint64_t *l_657[6] = {(void*)0,&p_2045->g_35,(void*)0,(void*)0,&p_2045->g_35,(void*)0};
    uint64_t *l_658 = &p_2045->g_35;
    uint64_t *l_801 = (void*)0;
    uint64_t **l_800[10][10][2] = {{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}},{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}},{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}},{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}},{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}},{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}},{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}},{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}},{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}},{{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0},{&l_801,(void*)0}}};
    int i, j, k;
    if ((p_48 || l_352))
    { /* block id: 183 */
        int32_t ***l_358[4] = {&l_355,&l_355,&l_355,&l_355};
        int32_t *l_364 = &p_2045->g_63;
        uint16_t *l_375 = &p_2045->g_126;
        uint32_t *l_376 = &p_2045->g_162;
        int8_t *l_377 = &l_352;
        int32_t l_378 = 0x2A7E6A23L;
        int32_t l_383 = 0x59766D7FL;
        uint16_t l_433[6];
        uint8_t l_592[4];
        uint32_t ***l_614[10][7][1] = {{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}},{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}},{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}},{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}},{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}},{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}},{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}},{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}},{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}},{{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598},{&p_2045->g_598}}};
        uint32_t ****l_613 = &l_614[9][2][0];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_433[i] = 0UL;
        for (i = 0; i < 4; i++)
            l_592[i] = 0xAAL;
        p_2045->g_63 = (safe_unary_minus_func_uint32_t_u(((p_2045->g_356 = l_354) == l_358[0])));
        if ((((p_46 & p_2045->g_94[3][1]) > p_49) ^ ((((safe_lshift_func_uint8_t_u_u(l_361, 7)) < (safe_mul_func_int8_t_s_s(((*l_377) = (((((*l_376) = (((l_364 != l_365) , (p_49 && (safe_mod_func_int16_t_s_s(p_2045->g_165, (safe_sub_func_int16_t_s_s(((safe_mod_func_int8_t_s_s(((safe_sub_func_int64_t_s_s((((((*l_375) &= l_374) , &l_361) != &l_352) != p_49), 0L)) && p_2045->g_9), (-1L))) > (*l_364)), p_48)))))) == p_2045->g_306)) , &p_2045->g_86) == &p_2045->g_306) , p_2045->g_162)), p_49))) , p_2045->g_306) < (*l_364))))
        { /* block id: 189 */
            int16_t l_382 = 1L;
            int32_t l_386 = 0x20AD9135L;
            int16_t *l_392 = &p_2045->g_384;
            int16_t *l_400 = &p_2045->g_154;
            int16_t **l_399 = &l_400;
            uint32_t l_401 = 0x56FEEA5FL;
            --p_2045->g_389[3][1];
            p_2045->g_63 |= ((((*l_392) = p_2045->g_306) > (p_48 <= (((p_2045->g_71[1] <= (((safe_mod_func_uint64_t_u_u(p_49, (safe_rshift_func_uint8_t_u_s((p_49 == (((*l_399) = &p_2045->g_154) != (void*)0)), 3)))) < p_46) , ((*l_375) = ((p_47 < 255UL) ^ (-1L))))) != p_2045->g_58) , l_401))) || p_46);
            for (p_2045->g_297 = (-13); (p_2045->g_297 < (-29)); p_2045->g_297--)
            { /* block id: 197 */
                return p_48;
            }
        }
        else
        { /* block id: 200 */
            uint32_t l_430 = 4294967295UL;
            int32_t l_454[2];
            int32_t *l_500 = &l_380;
            int i;
            for (i = 0; i < 2; i++)
                l_454[i] = 0x5BD3AAB8L;
            for (l_374 = 0; (l_374 == 8); l_374++)
            { /* block id: 203 */
                uint8_t *l_408 = &p_2045->g_58;
                uint32_t *l_409 = &p_2045->g_165;
                uint64_t *l_431 = &p_2045->g_71[1];
                int32_t l_432[6][8][1] = {{{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L}},{{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L}},{{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L}},{{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L}},{{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L}},{{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L},{0x554811B1L}}};
                int i, j, k;
                if (((safe_add_func_int32_t_s_s(p_46, (p_2045->g_297 == ((*l_408) |= (~GROUP_DIVERGE(0, 1)))))) > ((l_365 != l_409) , ((p_2045->g_304[1] |= (safe_add_func_int64_t_s_s((4294967290UL > (p_2045->g_384 ^ (1L || ((safe_mul_func_uint8_t_u_u((!((safe_add_func_int8_t_s_s(((safe_div_func_uint16_t_u_u(((*l_375)++), (((p_2045->g_306 |= (((safe_div_func_int64_t_s_s(((((safe_mul_func_int16_t_s_s((GROUP_DIVERGE(1, 1) , p_49), ((((((safe_mod_func_int16_t_s_s((((*l_431) = ((safe_lshift_func_int16_t_s_u(9L, 10)) , l_430)) || p_47), 0x1BF8L)) >= 0UL) >= p_2045->g_75) == l_430) <= 18446744073709551615UL) > l_430))) , l_432[3][2][0]) && 0UL) || 1UL), 0x45A6B217372B4156L)) == p_2045->g_162) > p_2045->g_165)) != p_49) , p_46))) != 0x682977ADD14C6972L), p_47)) , (*l_364))), FAKE_DIVERGE(p_2045->local_0_offset, get_local_id(0), 10))) <= l_432[2][3][0])))), l_433[2]))) == 0x632C60489F0D1E4DL))))
                { /* block id: 209 */
                    int8_t *l_439 = &p_2045->g_140;
                    int32_t l_468 = 0L;
                    if ((safe_mul_func_int16_t_s_s((safe_unary_minus_func_int8_t_s(((*l_377) |= (safe_lshift_func_int8_t_s_u((-10L), 0))))), (((*l_439) = p_46) && ((*l_439) = l_440)))))
                    { /* block id: 213 */
                        uint64_t l_453 = 0x06B7106A118B436DL;
                        int64_t *l_455 = &p_2045->g_381[3];
                        (*l_364) = ((*l_364) == ((-2L) ^ ((safe_mod_func_int64_t_s_s((((*l_455) ^= ((safe_add_func_int8_t_s_s(((*l_439) = ((p_2045->g_35 != (p_2045->g_71[1] , ((l_454[0] = (l_432[3][2][0] |= ((safe_sub_func_int8_t_s_s(p_48, p_2045->g_304[4])) , (p_46 || (p_48 | ((safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u((p_2045->g_304[4] , p_2045->g_326), p_2045->g_4)) | l_453), p_2045->g_389[1][1])), l_453)) < FAKE_DIVERGE(p_2045->group_0_offset, get_group_id(0), 10))))))) || p_49))) & 0x8AL)), l_430)) , (-1L))) & p_46), p_47)) > 3UL)));
                        l_432[3][2][0] = ((p_48 , func_59(p_48, &p_2045->g_336, ((safe_sub_func_uint64_t_u_u((safe_div_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((((*l_439) = ((*l_377) = 0x3FL)) || ((p_2045->g_9 ^ (safe_add_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u(((*l_408) ^= p_2045->g_387), (safe_add_func_uint64_t_u_u(((*l_431) = ((-1L) ^ (4294967288UL > (p_49 ^ 0x59706343A8D199B1L)))), p_49)))), 0x512807B3L))) , l_430)), p_47)), 0x75L)), p_2045->g_257)) > p_49), p_2045)) != (void*)0);
                        if (l_453)
                            continue;
                    }
                    else
                    { /* block id: 225 */
                        uint8_t l_469 = 0x6DL;
                        ++l_469;
                    }
                }
                else
                { /* block id: 228 */
                    uint32_t l_489 = 0x427DAAF3L;
                    uint32_t **l_490 = &l_376;
                    uint64_t *l_491[8][7] = {{(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0},{(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0},{(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0},{(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0},{(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0},{(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0},{(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0},{(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0,&p_2045->g_94[0][0],(void*)0,(void*)0}};
                    int16_t *l_493[9][10] = {{&p_2045->g_384,&p_2045->g_154,(void*)0,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_384,&p_2045->g_154,&p_2045->g_154,&p_2045->g_154},{&p_2045->g_384,&p_2045->g_154,(void*)0,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_384,&p_2045->g_154,&p_2045->g_154,&p_2045->g_154},{&p_2045->g_384,&p_2045->g_154,(void*)0,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_384,&p_2045->g_154,&p_2045->g_154,&p_2045->g_154},{&p_2045->g_384,&p_2045->g_154,(void*)0,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_384,&p_2045->g_154,&p_2045->g_154,&p_2045->g_154},{&p_2045->g_384,&p_2045->g_154,(void*)0,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_384,&p_2045->g_154,&p_2045->g_154,&p_2045->g_154},{&p_2045->g_384,&p_2045->g_154,(void*)0,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_384,&p_2045->g_154,&p_2045->g_154,&p_2045->g_154},{&p_2045->g_384,&p_2045->g_154,(void*)0,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_384,&p_2045->g_154,&p_2045->g_154,&p_2045->g_154},{&p_2045->g_384,&p_2045->g_154,(void*)0,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_384,&p_2045->g_154,&p_2045->g_154,&p_2045->g_154},{&p_2045->g_384,&p_2045->g_154,(void*)0,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_384,&p_2045->g_154,&p_2045->g_154,&p_2045->g_154}};
                    int32_t l_499[6][4] = {{0x09E39E35L,0L,0x09E39E35L,0x09E39E35L},{0x09E39E35L,0L,0x09E39E35L,0x09E39E35L},{0x09E39E35L,0L,0x09E39E35L,0x09E39E35L},{0x09E39E35L,0L,0x09E39E35L,0x09E39E35L},{0x09E39E35L,0L,0x09E39E35L,0x09E39E35L},{0x09E39E35L,0L,0x09E39E35L,0x09E39E35L}};
                    int i, j;
                    (*l_355) = func_59((l_454[0] , (p_48 == ((safe_rshift_func_uint8_t_u_s(((*l_408) = p_2045->g_326), (&p_2045->g_257 != ((65533UL || 0x2C42L) , ((248UL | 0L) , &p_2045->g_257))))) != GROUP_DIVERGE(2, 1)))), l_474, p_46, p_2045);
                    l_385 |= (((p_49 , ((**l_355) || p_48)) || ((safe_mul_func_int16_t_s_s(((safe_div_func_int8_t_s_s(p_2045->g_4, ((safe_rshift_func_uint16_t_u_u((+FAKE_DIVERGE(p_2045->group_0_offset, get_group_id(0), 10)), 1)) || (p_2045->g_384 = (((p_2045->g_492 ^= (safe_add_func_int64_t_s_s(((((((*l_490) = func_59((p_47 , (4L < ((&p_2045->g_165 == l_365) > ((safe_lshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s((0xA664L == 0x128AL), 0L)), 0)) | p_49)))), &p_2045->g_58, l_489, p_2045)) == p_2045->g_213) == 0xF1C565F0L) == p_2045->g_389[3][1]) ^ 0x5EA7L), p_46))) && (-3L)) <= l_432[3][2][0]))))) == 0x158B6CB3L), p_49)) <= GROUP_DIVERGE(2, 1))) & 0x04D0L);
                    for (p_2045->g_58 = 11; (p_2045->g_58 < 36); p_2045->g_58 = safe_add_func_uint32_t_u_u(p_2045->g_58, 2))
                    { /* block id: 237 */
                        p_2045->g_496++;
                        l_499[0][0] = ((-8L) && 18446744073709551614UL);
                        l_500 = (**p_2045->g_356);
                    }
                }
            }
            (*l_500) ^= p_2045->g_501;
            for (p_2045->g_75 = 0; (p_2045->g_75 == 17); p_2045->g_75 = safe_add_func_uint64_t_u_u(p_2045->g_75, 7))
            { /* block id: 247 */
                for (l_361 = 0; (l_361 <= 5); l_361 += 1)
                { /* block id: 250 */
                    int64_t l_504 = 8L;
                    int32_t l_505 = 8L;
                    for (p_2045->g_496 = 0; (p_2045->g_496 <= 3); p_2045->g_496 += 1)
                    { /* block id: 253 */
                        int32_t l_506 = 0x3F41C030L;
                        int i;
                        p_2045->g_509[0]++;
                        if (p_2045->g_304[(p_2045->g_496 + 2)])
                            break;
                        (*l_364) = (-3L);
                    }
                }
            }
        }
        for (l_388 = (-13); (l_388 <= 9); l_388 = safe_add_func_int8_t_s_s(l_388, 5))
        { /* block id: 263 */
            uint32_t l_514 = 0x2CE0D3E0L;
            int16_t *l_531 = &p_2045->g_384;
            int32_t l_532 = (-7L);
            uint64_t *l_549[2][7] = {{&p_2045->g_75,&p_2045->g_71[1],&p_2045->g_75,&p_2045->g_75,&p_2045->g_71[1],&p_2045->g_75,&p_2045->g_75},{&p_2045->g_75,&p_2045->g_71[1],&p_2045->g_75,&p_2045->g_75,&p_2045->g_71[1],&p_2045->g_75,&p_2045->g_75}};
            int32_t **l_570 = &p_2045->g_213;
            int i, j;
            if (l_514)
                break;
            (*p_2045->g_357) = func_59((safe_rshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u(0x4DAE3869L, (l_532 = (safe_mod_func_int16_t_s_s(((*l_531) = ((safe_div_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((p_48 && (((*l_375) = FAKE_DIVERGE(p_2045->global_2_offset, get_global_id(2), 10)) >= l_514)), (l_514 && ((safe_div_func_int64_t_s_s(((p_2045->g_4 >= (((-1L) == (safe_mul_func_uint8_t_u_u(((((safe_mul_func_uint16_t_u_u((p_48 , (p_2045->g_162 | (254UL <= p_49))), FAKE_DIVERGE(p_2045->global_2_offset, get_global_id(2), 10))) , FAKE_DIVERGE(p_2045->local_2_offset, get_local_id(2), 10)) ^ p_2045->g_75) | l_514), p_47))) | p_2045->g_165)) , 0x43D7B588F8B91766L), p_2045->g_304[1])) ^ 0x85L)))), p_2045->g_509[0])) & p_47)), p_2045->g_389[3][1]))))), p_2045->g_509[0])), l_474, l_514, p_2045);
            (**p_2045->g_357) &= ((~((((safe_sub_func_int8_t_s_s(0x38L, p_48)) < (((((safe_div_func_uint16_t_u_u(((((safe_sub_func_int8_t_s_s((1L != (safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((0x75L && 0x74L), p_2045->g_302)), (safe_mod_func_int32_t_s_s(p_46, ((safe_mod_func_uint8_t_u_u(p_2045->g_304[1], (safe_rshift_func_uint8_t_u_s((((void*)0 != l_549[0][2]) , 0xA1L), 6)))) , p_46)))))), p_2045->g_257)) , 0x54L) | 0x7AL) , p_47), p_49)) & p_2045->g_381[1]) | p_2045->g_496) & p_49) >= FAKE_DIVERGE(p_2045->global_0_offset, get_global_id(0), 10))) < 0x547AE477902ADEFDL) >= 1L)) < p_49);
            for (p_2045->g_501 = 0; (p_2045->g_501 <= 2); p_2045->g_501 += 1)
            { /* block id: 272 */
                int32_t l_552 = 0L;
                int16_t *l_571 = &p_2045->g_154;
                int32_t *l_572 = &l_374;
                uint64_t **l_580 = &l_549[0][2];
                int32_t l_582 = 0x509CE1DCL;
                p_2045->g_507 = (p_2045->g_326 , (safe_rshift_func_int8_t_s_u(((*l_377) |= l_552), ((p_2045->g_496 <= (((*l_572) = (safe_sub_func_int64_t_s_s((((safe_unary_minus_func_uint16_t_u((((((*l_571) = (safe_mul_func_uint8_t_u_u((((**l_355) = (safe_add_func_int64_t_s_s((((0x3BF1309DL <= ((safe_sub_func_uint64_t_u_u((((*l_375) = (+p_2045->g_86)) | 0x6E14L), (((safe_mul_func_uint8_t_u_u((((*l_531) = (0x21DAD853L < ((safe_div_func_uint16_t_u_u(((!(safe_mod_func_int64_t_s_s(p_2045->g_381[3], ((safe_lshift_func_int16_t_s_s(l_532, p_49)) , l_552)))) > GROUP_DIVERGE(1, 1)), l_552)) == p_46))) ^ p_2045->g_86), p_46)) <= 0x53L) <= p_48))) >= (-1L))) , (void*)0) == l_570), p_2045->g_71[1]))) != p_49), FAKE_DIVERGE(p_2045->local_2_offset, get_local_id(2), 10)))) >= 0UL) , 1UL) != p_49))) != p_2045->g_509[0]) || (***l_354)), p_46))) , 0x46CDL)) , p_2045->g_7[2]))));
                for (l_514 = 0; (l_514 <= 1); l_514 += 1)
                { /* block id: 282 */
                    int32_t *l_577[7][1][7] = {{{(void*)0,&l_388,&l_388,(void*)0,(void*)0,&l_388,&l_388}},{{(void*)0,&l_388,&l_388,(void*)0,(void*)0,&l_388,&l_388}},{{(void*)0,&l_388,&l_388,(void*)0,(void*)0,&l_388,&l_388}},{{(void*)0,&l_388,&l_388,(void*)0,(void*)0,&l_388,&l_388}},{{(void*)0,&l_388,&l_388,(void*)0,(void*)0,&l_388,&l_388}},{{(void*)0,&l_388,&l_388,(void*)0,(void*)0,&l_388,&l_388}},{{(void*)0,&l_388,&l_388,(void*)0,(void*)0,&l_388,&l_388}}};
                    int i, j, k;
                    l_581 = func_59((safe_mod_func_uint64_t_u_u(((((safe_add_func_int64_t_s_s((((l_572 != l_577[6][0][4]) , (safe_div_func_int64_t_s_s((**l_355), ((((((void*)0 == &p_2045->g_384) , (p_46 <= (((l_552 , l_580) != (void*)0) > (*l_364)))) , l_572) == (*p_2045->g_357)) , 0x375F7998D77E2F42L)))) ^ (-1L)), p_48)) < 0x2590158AL) ^ (-1L)) , 0x842B0CDC2C58EDD3L), p_49)), l_377, p_2045->g_257, p_2045);
                    p_2045->g_583++;
                    (**p_2045->g_357) &= (safe_lshift_func_int8_t_s_u((~l_582), (safe_lshift_func_int8_t_s_u(((-9L) && l_582), 7))));
                }
            }
        }
        for (p_2045->g_496 = 19; (p_2045->g_496 > 14); p_2045->g_496 = safe_sub_func_uint16_t_u_u(p_2045->g_496, 6))
        { /* block id: 291 */
            uint32_t ****l_600 = &p_2045->g_597[7][3];
            uint32_t ***l_603 = &p_2045->g_598;
            uint32_t ****l_602 = &l_603;
            uint8_t l_604[8][5][6] = {{{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L}},{{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L}},{{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L}},{{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L}},{{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L}},{{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L}},{{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L}},{{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L},{0x27L,1UL,3UL,0x49L,1UL,0x49L}}};
            uint32_t *****l_615[4] = {&l_613,&l_613,&l_613,&l_613};
            int16_t *l_619 = &p_2045->g_384;
            int32_t *l_620 = &l_379;
            int i, j, k;
            l_592[1]--;
            (**l_354) = ((((*l_619) = (safe_add_func_uint64_t_u_u(((((*l_602) = (l_601 = ((*l_600) = p_2045->g_597[7][3]))) == (void*)0) != 0x02L), (l_604[2][1][1] < (((safe_lshift_func_int8_t_s_s(7L, ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(l_604[6][3][0], (p_2045->g_611[5][2] != (p_2045->g_616 = l_613)))), (p_2045->g_304[2] < l_618))) > l_604[2][1][1]))) && 1L) , 0x75L))))) , p_46) , l_620);
            (**p_2045->g_356) = (*l_355);
        }
    }
    else
    { /* block id: 301 */
        int64_t l_623 = (-5L);
        int32_t l_651 = 0x01DE3194L;
        for (p_2045->g_75 = 0; (p_2045->g_75 <= 4); p_2045->g_75++)
        { /* block id: 304 */
            int32_t *l_624[9][7] = {{&l_379,&l_385,&l_388,&l_388,&l_385,&l_379,&p_2045->g_9},{&l_379,&l_385,&l_388,&l_388,&l_385,&l_379,&p_2045->g_9},{&l_379,&l_385,&l_388,&l_388,&l_385,&l_379,&p_2045->g_9},{&l_379,&l_385,&l_388,&l_388,&l_385,&l_379,&p_2045->g_9},{&l_379,&l_385,&l_388,&l_388,&l_385,&l_379,&p_2045->g_9},{&l_379,&l_385,&l_388,&l_388,&l_385,&l_379,&p_2045->g_9},{&l_379,&l_385,&l_388,&l_388,&l_385,&l_379,&p_2045->g_9},{&l_379,&l_385,&l_388,&l_388,&l_385,&l_379,&p_2045->g_9},{&l_379,&l_385,&l_388,&l_388,&l_385,&l_379,&p_2045->g_9}};
            int16_t *l_636 = &p_2045->g_154;
            int32_t l_676 = (-2L);
            uint8_t l_708 = 4UL;
            uint32_t ****l_713 = &p_2045->g_617[7];
            int32_t ***l_756[10][4] = {{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357},{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357},{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357},{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357},{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357},{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357},{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357},{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357},{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357},{&l_355,&p_2045->g_357,(void*)0,&p_2045->g_357}};
            int16_t l_766 = 0x3E55L;
            int32_t l_767 = 0x0377DE0AL;
            int i, j;
            ++p_2045->g_625;
            (**p_2045->g_356) = l_624[5][1];
            p_2045->g_63 &= ((safe_mod_func_uint8_t_u_u(((*l_581) , (~((*l_474) = (((safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_u(0x69E3L, 7)) , (GROUP_DIVERGE(2, 1) | (safe_mod_func_int16_t_s_s(1L, ((*l_636) &= p_2045->g_507))))), (p_2045->g_165 < ((safe_rshift_func_int8_t_s_s(p_46, 4)) > 251UL)))) , ((void*)0 != l_639)) && 0x2377ACE1L)))), p_48)) , p_47);
            if ((GROUP_DIVERGE(0, 1) , (safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2045->local_1_offset, get_local_id(1), 10), 0))))
            { /* block id: 310 */
                uint8_t *l_646 = &p_2045->g_509[0];
                uint16_t *l_649[8] = {(void*)0,&l_440,(void*)0,(void*)0,&l_440,(void*)0,(void*)0,&l_440};
                uint16_t l_650 = 0x088DL;
                uint64_t **l_654 = (void*)0;
                uint64_t **l_655 = (void*)0;
                uint64_t **l_656 = (void*)0;
                uint32_t *****l_663 = &p_2045->g_616;
                int32_t *l_668 = (void*)0;
                int32_t *l_669 = (void*)0;
                int32_t *l_670[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_670[i] = (void*)0;
                (*l_581) |= (safe_mul_func_uint8_t_u_u(((*l_474) = p_47), ((l_650 &= (safe_sub_func_uint8_t_u_u(((*l_646)--), ((void*)0 == &p_2045->g_231)))) && ((((p_2045->g_86--) <= (~(((l_657[2] = &p_2045->g_257) != l_658) ^ (((safe_div_func_int64_t_s_s((((p_2045->g_671[3] = (((safe_add_func_uint32_t_u_u(((void*)0 != l_663), (safe_add_func_int32_t_s_s((l_650 <= (safe_add_func_int8_t_s_s(p_46, 9UL))), p_47)))) | p_2045->g_492) < 2UL)) , p_48) > p_49), p_49)) <= GROUP_DIVERGE(1, 1)) , 1L)))) == FAKE_DIVERGE(p_2045->local_0_offset, get_local_id(0), 10)) > FAKE_DIVERGE(p_2045->local_2_offset, get_local_id(2), 10)))));
                (*l_581) ^= ((void*)0 == &p_2045->g_501);
                for (p_46 = 0; (p_46 > 1); ++p_46)
                { /* block id: 321 */
                    uint8_t l_706 = 0xF1L;
                    int32_t l_710 = (-5L);
                    for (l_650 = 0; (l_650 >= 13); ++l_650)
                    { /* block id: 324 */
                        int64_t *l_693 = (void*)0;
                        int64_t *l_694 = &l_623;
                        int32_t l_705 = 1L;
                        uint32_t *l_709[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_709[i] = &p_2045->g_389[3][1];
                        (*l_581) = l_676;
                        (*l_581) = (((l_710 = (((((safe_rshift_func_uint8_t_u_s((((safe_mod_func_uint64_t_u_u((safe_rshift_func_int16_t_s_u(p_49, ((safe_add_func_uint32_t_u_u(((safe_add_func_int8_t_s_s(((~(safe_mod_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((l_705 = (((safe_lshift_func_uint8_t_u_u((((*l_694) ^= p_2045->g_381[1]) | (safe_add_func_int64_t_s_s(((p_2045->g_507 , (((safe_sub_func_int16_t_s_s(l_650, (((safe_sub_func_int32_t_s_s((1L >= (((((((safe_div_func_int16_t_s_s(0x3F91L, (p_2045->g_94[3][1] ^ GROUP_DIVERGE(1, 1)))) == (safe_mul_func_uint8_t_u_u(5UL, l_705))) && l_706) <= l_706) >= p_46) == p_48) ^ p_2045->g_501)), GROUP_DIVERGE(2, 1))) , p_46) , p_2045->g_381[4]))) || p_48) ^ 0xCAL)) > l_706), l_650))), 3)) , &p_2045->g_508) != (void*)0)) , p_2045->g_707), p_2045->g_140)), (-1L)))) < 1L), 0x0EL)) == p_48), p_2045->g_326)) == 0x6F7CL))), 0xED3D7042C2BDD786L)) < p_49) | 1L), p_46)) && 1L) ^ 0x2FDCL) < 0x2E2DL) || l_708)) , p_48) , 0x1693F968L);
                        atomic_max(&p_2045->l_atomic_reduction[0], (safe_div_func_uint16_t_u_u((((*l_663) = l_713) == &p_2045->g_617[4]), p_2045->g_336)) + get_linear_global_id());
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_2045->v_collective += p_2045->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    }
                }
                if (p_47)
                    break;
            }
            else
            { /* block id: 335 */
                int32_t l_718 = (-8L);
                int8_t *l_733 = &l_361;
                uint32_t *****l_785 = &l_713;
                uint32_t ****l_789 = &p_2045->g_617[7];
                uint64_t **l_802 = &l_801;
                int16_t *l_815 = &l_766;
                if (((((((((safe_div_func_int8_t_s_s((((FAKE_DIVERGE(p_2045->group_1_offset, get_group_id(1), 10) , p_2045->g_213) != ((safe_add_func_uint64_t_u_u(l_718, ((safe_lshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_s((-1L), (safe_div_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s(l_623, (((l_651 && 0x5CL) == (safe_div_func_uint32_t_u_u(0x8A6ADFA9L, ((safe_div_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_2045->global_2_offset, get_global_id(2), 10), (((*l_733) = (p_49 >= p_47)) > p_46))), 0x306840DCL)) , 0xD7FC0BB1L)))) >= p_2045->g_58))) >= p_49), 0xE9L)))), 13)) , 0x6DFC5B847C9DF72AL))) , (void*)0)) <= GROUP_DIVERGE(2, 1)), 0x64L)) , 65529UL) < p_48) & l_623) ^ 1L) ^ p_2045->g_165) == p_2045->g_509[0]) && p_49))
                { /* block id: 337 */
                    int32_t *l_744 = &p_2045->g_745;
                    int32_t l_761[3][6][8] = {{{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L}},{{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L}},{{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L},{(-1L),2L,0x770247E5L,0x6EF94410L,2L,0x182AC67BL,(-1L),7L}}};
                    int64_t *l_762 = &p_2045->g_304[1];
                    uint32_t l_763 = 0x2A4DF535L;
                    int32_t l_764 = 0x1FCDCEE9L;
                    int32_t l_765 = 1L;
                    int i, j, k;
                    (*l_581) &= (l_766 = (l_765 &= (l_764 ^= (((safe_mul_func_int8_t_s_s(1L, ((safe_sub_func_int64_t_s_s(((safe_lshift_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (safe_rshift_func_int16_t_s_s((((((*l_744) = (((void*)0 != &l_624[4][0]) < l_718)) , (safe_rshift_func_uint8_t_u_u((((safe_add_func_uint64_t_u_u((((((safe_sub_func_int64_t_s_s(((*l_762) ^= (safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(p_46, ((*l_733) ^= ((l_756[7][0] != ((safe_lshift_func_uint16_t_u_u(p_2045->g_508, (1L && ((safe_rshift_func_int8_t_s_u(((p_2045->g_671[4] == FAKE_DIVERGE(p_2045->group_2_offset, get_group_id(2), 10)) > p_2045->g_165), 7)) || l_761[2][3][5])))) , (void*)0)) >= p_49)))), p_48))), 0x450C180EE848DA03L)) , 1L) , 0x29EC3197902C49AEL) <= 7L) > l_718), p_2045->g_583)) , p_48) || l_763), 5))) >= p_2045->g_501) , 0x6749L), 9)))) <= p_48), FAKE_DIVERGE(p_2045->local_2_offset, get_local_id(2), 10))) | l_761[1][3][6]), 4UL)) > 0x30L))) == p_47) & (-9L)))));
                    p_2045->g_769--;
                    for (p_2045->g_126 = 0; (p_2045->g_126 <= 5); p_2045->g_126 += 1)
                    { /* block id: 348 */
                        if (p_48)
                            break;
                    }
                    if (p_49)
                        continue;
                }
                else
                { /* block id: 352 */
                    uint16_t *l_780 = &p_2045->g_769;
                    uint32_t ******l_786 = &l_785;
                    int32_t l_787 = (-8L);
                    uint32_t *l_788 = &p_2045->g_165;
                    if ((l_718 ^= ((p_2045->g_389[1][0] ^ (((p_2045->g_35 <= ((p_2045->g_154 = (safe_mul_func_uint16_t_u_u(p_48, ((safe_lshift_func_int16_t_s_s(((&p_46 == &p_2045->g_389[3][1]) <= p_49), 6)) , 0x0831L)))) || (safe_div_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((~((*l_780) = p_2045->g_302)), ((safe_sub_func_uint32_t_u_u(((*l_788) ^= (((safe_div_func_uint16_t_u_u((((*l_786) = l_785) == &p_2045->g_611[5][2]), p_2045->g_9)) || p_49) ^ l_787)), l_787)) <= p_2045->g_336))), p_49)))) , &p_2045->g_617[5]) == l_789)) != p_48)))
                    { /* block id: 358 */
                        int16_t l_813 = 0x7C6AL;
                        uint16_t l_814 = 65535UL;
                        (*p_2045->g_357) = (*p_2045->g_357);
                        l_718 &= (((safe_rshift_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u(((((safe_div_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(((safe_mod_func_uint64_t_u_u(((l_800[8][0][1] != l_802) , ((l_813 |= (safe_mul_func_uint16_t_u_u((((*l_780) |= p_2045->g_4) == (safe_add_func_uint32_t_u_u((p_46 ^ (!(safe_lshift_func_int8_t_s_s(((p_2045->g_86 < p_48) , ((void*)0 != &p_46)), 7)))), ((safe_lshift_func_uint8_t_u_u(p_46, p_48)) < l_623)))), 0x21B6L))) >= l_787)), 0x06B4A198946E00E3L)) & p_2045->g_501), 3)) , l_814), p_49)) , p_2045->g_94[3][1]) , l_623) >= l_787), l_651)) ^ FAKE_DIVERGE(p_2045->global_0_offset, get_global_id(0), 10)), 6)) , &l_813) != l_815);
                    }
                    else
                    { /* block id: 363 */
                        (*p_2045->g_357) = (*p_2045->g_357);
                        l_787 = 0L;
                    }
                }
                return p_47;
            }
        }
    }
    return p_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_2045->g_71 p_2045->g_223 p_2045->g_213 p_2045->g_63 p_2045->g_9 p_2045->g_58 p_2045->g_126 p_2045->g_243 p_2045->g_154 p_2045->g_94 p_2045->g_257 p_2045->g_306 p_2045->g_4 p_2045->g_86 p_2045->g_7 p_2045->g_35 p_2045->g_75 p_2045->g_165 p_2045->g_140 p_2045->g_326
 * writes: p_2045->g_58 p_2045->g_213 p_2045->g_63 p_2045->g_9 p_2045->g_94 p_2045->g_243 p_2045->g_248 p_2045->g_154 p_2045->g_126 p_2045->g_257 p_2045->g_86 p_2045->g_306 p_2045->g_71 p_2045->g_75 p_2045->g_140 p_2045->g_162 p_2045->g_326 p_2045->g_336
 */
int32_t  func_51(uint8_t * p_52, int32_t * p_53, uint16_t  p_54, uint64_t  p_55, int8_t  p_56, struct S0 * p_2045)
{ /* block id: 78 */
    uint32_t l_216 = 0UL;
    int8_t *l_233 = (void*)0;
    uint64_t *l_245 = (void*)0;
    uint64_t **l_244 = &l_245;
    int32_t l_291 = 1L;
    int32_t l_299 = 0x711FA603L;
    int32_t l_303[4];
    int32_t *l_325[5];
    uint8_t *l_335 = &p_2045->g_336;
    int32_t ***l_339 = (void*)0;
    int32_t **l_341 = &l_325[2];
    int32_t ***l_340 = &l_341;
    int i;
    for (i = 0; i < 4; i++)
        l_303[i] = (-5L);
    for (i = 0; i < 5; i++)
        l_325[i] = &l_299;
lbl_282:
    for (p_54 = (-11); (p_54 == 52); p_54++)
    { /* block id: 81 */
        int32_t **l_214 = (void*)0;
        int32_t **l_215 = &p_2045->g_213;
        for (p_2045->g_58 = 4; (p_2045->g_58 != 21); p_2045->g_58 = safe_add_func_int8_t_s_s(p_2045->g_58, 3))
        { /* block id: 84 */
            p_2045->g_213 = p_53;
        }
        (*l_215) = &p_2045->g_63;
    }
    if ((((((((0x47L != l_216) & (safe_add_func_uint32_t_u_u((safe_add_func_uint8_t_u_u(((p_2045->g_71[1] , 0xA19A2165D2405D24L) <= ((void*)0 != p_2045->g_223)), ((l_233 == ((FAKE_DIVERGE(p_2045->group_2_offset, get_group_id(2), 10) | (((*p_2045->g_213) = (safe_lshift_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s((*p_2045->g_213), (p_53 != &p_2045->g_165))) | (*p_52)), 2))) & l_216)) , &p_2045->g_140)) >= l_216))), p_2045->g_126))) | 0x6EL) | 0x57AA1D18L) && (-3L)) >= l_216) , (*p_53)))
    { /* block id: 90 */
        uint64_t *l_238 = &p_2045->g_94[3][1];
        uint32_t l_241 = 0xAAAEAED0L;
        int32_t l_242 = 0L;
        uint64_t ***l_246 = &l_244;
        int8_t *l_247 = (void*)0;
        uint32_t *l_284[5][10][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
        uint32_t **l_283 = &l_284[2][8][0];
        uint64_t l_288 = 18446744073709551615UL;
        uint32_t l_292 = 0x656643B3L;
        int32_t l_300 = (-1L);
        int i, j, k;
        if (((((*l_238) = p_55) >= FAKE_DIVERGE(p_2045->local_2_offset, get_local_id(2), 10)) > ((((safe_sub_func_int32_t_s_s(l_241, ((p_2045->g_248 = ((l_242 ^= ((void*)0 != &p_2045->g_162)) , (((p_2045->g_243 = p_2045->g_243) != ((*l_246) = l_244)) , l_247))) != (void*)0))) , (0x06L | p_2045->g_58)) ^ 5UL) | l_241)))
        { /* block id: 96 */
            int32_t *l_249[1];
            int i;
            for (i = 0; i < 1; i++)
                l_249[i] = &p_2045->g_9;
            l_242 |= (*p_53);
            (*p_2045->g_213) = (*p_2045->g_213);
            if ((*p_53))
            { /* block id: 99 */
                uint8_t l_252 = 0x4AL;
                for (p_2045->g_154 = 15; (p_2045->g_154 <= 10); --p_2045->g_154)
                { /* block id: 102 */
                    return l_252;
                }
            }
            else
            { /* block id: 105 */
                (*p_2045->g_213) = (-1L);
                for (p_2045->g_126 = 0; (p_2045->g_126 <= 28); p_2045->g_126 = safe_add_func_uint8_t_u_u(p_2045->g_126, 5))
                { /* block id: 109 */
                    int32_t **l_255 = &l_249[0];
                    (*l_255) = p_53;
                }
                return (*p_53);
            }
        }
        else
        { /* block id: 114 */
            uint64_t *l_256 = &p_2045->g_257;
            int32_t l_266 = 0x17761125L;
            int16_t *l_279 = (void*)0;
            int16_t *l_280 = &p_2045->g_154;
            int32_t *l_281 = (void*)0;
            uint32_t ***l_285 = &l_283;
            int32_t l_298 = (-8L);
            int32_t l_301 = 5L;
            int32_t l_305 = (-1L);
            int32_t l_321 = (-4L);
            (*p_53) = (p_2045->g_9 ^= ((p_56 ^ (((*l_256) ^= p_2045->g_94[3][1]) , ((safe_lshift_func_int8_t_s_s((safe_div_func_int64_t_s_s(p_2045->g_257, (safe_rshift_func_uint8_t_u_s((safe_rshift_func_int16_t_s_u(l_266, (p_56 <= (safe_sub_func_uint32_t_u_u(((p_55 < ((0x7E21L | ((*l_280) = (((safe_div_func_uint8_t_u_u((safe_add_func_int32_t_s_s(((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(1L, (((&p_2045->g_213 == (void*)0) || p_2045->g_94[3][1]) < 0x311EL))), 4)), 0x22L)) & (*p_52)), (*p_53))), 4L)) , 0x04143BCCL) , p_54))) ^ p_56)) || p_56), p_54))))), l_266)))), 5)) , l_266))) | l_216));
            if (l_266)
                goto lbl_282;
            (*l_285) = l_283;
            for (l_216 = 0; (l_216 <= 3); l_216 += 1)
            { /* block id: 123 */
                int32_t **l_286 = &p_2045->g_213;
                int32_t l_289 = 0x62369411L;
                int32_t l_296 = 9L;
                int32_t l_310 = 0x60D6846DL;
                (*l_286) = &p_2045->g_9;
                for (p_2045->g_86 = 0; (p_2045->g_86 <= 3); p_2045->g_86 += 1)
                { /* block id: 127 */
                    int32_t *l_287[10][6][4] = {{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}},{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}},{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}},{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}},{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}},{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}},{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}},{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}},{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}},{{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9},{(void*)0,&l_242,&p_2045->g_63,&p_2045->g_9}}};
                    int i, j, k;
                    for (p_2045->g_126 = 0; (p_2045->g_126 <= 3); p_2045->g_126 += 1)
                    { /* block id: 130 */
                        (*l_286) = l_287[9][4][3];
                        p_53 = &p_2045->g_9;
                    }
                    if (l_288)
                        continue;
                    for (p_2045->g_126 = 0; (p_2045->g_126 <= 2); p_2045->g_126 += 1)
                    { /* block id: 137 */
                        int16_t l_290 = 0x4F69L;
                        --l_292;
                        return (*p_53);
                    }
                }
                for (l_242 = 1; (l_242 >= 0); l_242 -= 1)
                { /* block id: 144 */
                    int32_t *l_295[9][8] = {{&l_291,&l_242,&l_289,&l_242,&l_291,&p_2045->g_63,&l_291,(void*)0},{&l_291,&l_242,&l_289,&l_242,&l_291,&p_2045->g_63,&l_291,(void*)0},{&l_291,&l_242,&l_289,&l_242,&l_291,&p_2045->g_63,&l_291,(void*)0},{&l_291,&l_242,&l_289,&l_242,&l_291,&p_2045->g_63,&l_291,(void*)0},{&l_291,&l_242,&l_289,&l_242,&l_291,&p_2045->g_63,&l_291,(void*)0},{&l_291,&l_242,&l_289,&l_242,&l_291,&p_2045->g_63,&l_291,(void*)0},{&l_291,&l_242,&l_289,&l_242,&l_291,&p_2045->g_63,&l_291,(void*)0},{&l_291,&l_242,&l_289,&l_242,&l_291,&p_2045->g_63,&l_291,(void*)0},{&l_291,&l_242,&l_289,&l_242,&l_291,&p_2045->g_63,&l_291,(void*)0}};
                    int i, j;
                    ++p_2045->g_306;
                    for (l_296 = 0; (l_296 <= 2); l_296 += 1)
                    { /* block id: 148 */
                        int i, j;
                        (*p_53) ^= (safe_unary_minus_func_int64_t_s(p_2045->g_94[l_216][l_242]));
                    }
                }
                if (l_310)
                    continue;
                for (l_292 = 0; (l_292 <= 2); l_292 += 1)
                { /* block id: 155 */
                    for (l_291 = 3; (l_291 >= 0); l_291 -= 1)
                    { /* block id: 158 */
                        uint32_t *l_311 = &l_241;
                        int32_t l_316 = (-1L);
                        (*l_286) = func_59((p_54 ^ (l_291 ^ ((p_56 & GROUP_DIVERGE(0, 1)) > ((*l_311) ^= (~4294967295UL))))), p_52, p_2045->g_4, p_2045);
                        (*p_2045->g_213) = (safe_add_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s(l_316, (!0x83L))) || (safe_div_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s(((*l_280) = (FAKE_DIVERGE(p_2045->local_1_offset, get_local_id(1), 10) & ((void*)0 == &l_245))), 7)) , (**l_286)), l_321))), 0x5D1026119749363BL));
                    }
                    for (l_305 = 0; (l_305 <= 2); l_305 += 1)
                    { /* block id: 166 */
                        if (l_303[0])
                            break;
                    }
                }
            }
        }
    }
    else
    { /* block id: 172 */
        int32_t **l_322[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        p_2045->g_213 = p_53;
        (*p_2045->g_213) = ((safe_mul_func_int16_t_s_s((-5L), p_2045->g_58)) , ((void*)0 != &p_2045->g_58));
    }
    p_2045->g_326++;
    p_2045->g_63 ^= ((((*p_52) = (safe_mod_func_uint16_t_u_u(p_2045->g_306, p_2045->g_126))) < (safe_mul_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u(((*l_335) = GROUP_DIVERGE(2, 1)), p_2045->g_94[3][1])) != (safe_mul_func_int8_t_s_s((((*l_340) = &l_325[4]) != &p_53), 0x45L))), 0x00FDL))) || (((safe_mod_func_int8_t_s_s(p_54, (safe_sub_func_uint64_t_u_u(((FAKE_DIVERGE(p_2045->group_2_offset, get_group_id(2), 10) < (safe_add_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), p_2045->g_9)), 6)), (-9L)))) <= 0x70L), p_56)))) != 0x7412C3F378C7E578L) && (***l_340)));
    return (*p_53);
}


/* ------------------------------------------ */
/* 
 * reads : p_2045->g_71 p_2045->g_86 p_2045->g_7 p_2045->g_63 p_2045->g_58 p_2045->g_126 p_2045->g_9 p_2045->g_35 p_2045->g_154 p_2045->g_94 p_2045->g_4 p_2045->g_75 p_2045->g_165 p_2045->g_140 p_2045->g_162 p_2045->g_336 p_2045->g_820 p_2045->g_823 p_2045->g_855 p_2045->g_509 p_2045->g_496
 * writes: p_2045->g_71 p_2045->g_75 p_2045->g_86 p_2045->g_63 p_2045->g_126 p_2045->g_58 p_2045->g_140 p_2045->g_154 p_2045->g_162 p_2045->g_9 p_2045->g_336 p_2045->g_820 p_2045->g_823 p_2045->g_855 p_2045->g_509 p_2045->g_496
 */
int32_t * func_59(int16_t  p_60, uint8_t * p_61, int32_t  p_62, struct S0 * p_2045)
{ /* block id: 22 */
    uint64_t *l_70 = &p_2045->g_71[1];
    uint64_t *l_74 = &p_2045->g_75;
    uint16_t *l_85[6] = {&p_2045->g_86,&p_2045->g_86,&p_2045->g_86,&p_2045->g_86,&p_2045->g_86,&p_2045->g_86};
    int32_t l_87 = 0x2F777BDFL;
    int32_t l_88 = 0x71C75621L;
    uint64_t *l_93[4][4][10] = {{{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]}},{{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]}},{{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]}},{{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]},{&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1],&p_2045->g_94[3][1]}}};
    uint64_t l_95 = 0xA12E219839B2FD4BL;
    uint64_t **l_98 = (void*)0;
    uint64_t **l_99 = (void*)0;
    uint64_t **l_100 = (void*)0;
    uint64_t **l_101 = (void*)0;
    uint64_t **l_102 = (void*)0;
    uint64_t **l_103 = &l_93[2][2][5];
    int32_t *l_108 = &p_2045->g_63;
    int64_t l_196 = 5L;
    uint16_t *l_206 = &p_2045->g_86;
    int i, j, k;
    if ((safe_lshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((((*l_74) = (--(*l_70))) >= 0x4AF4455642E063A2L) | (safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s(func_80((--p_2045->g_86), (l_87 && 0x4022L), (((l_85[0] == (void*)0) >= ((l_95++) <= ((&p_2045->g_94[0][1] != ((*l_103) = l_74)) <= (((*l_108) &= ((safe_mod_func_uint16_t_u_u(p_62, (safe_mul_func_int8_t_s_s(0x6CL, p_2045->g_7[0])))) || (-10L))) , (-2L))))) , p_60), p_60, p_2045), p_2045->g_7[3])), 0xFE6CL))), p_2045->g_94[3][1])), l_88)) > p_2045->g_4), 5)))
    { /* block id: 57 */
        uint32_t *l_161[3];
        uint64_t ***l_163 = &l_98;
        uint32_t *l_164[4][2][9] = {{{(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165},{(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165}},{{(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165},{(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165}},{{(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165},{(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165}},{{(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165},{(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165,(void*)0,&p_2045->g_165,&p_2045->g_165,&p_2045->g_165}}};
        int32_t l_171 = 0x23BFF2BCL;
        uint16_t *l_174 = &p_2045->g_126;
        int32_t *l_177 = &p_2045->g_9;
        int16_t *l_197[6][8] = {{&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0},{&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0},{&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0},{&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0},{&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0},{&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0,&p_2045->g_154,&p_2045->g_154,(void*)0}};
        int32_t *l_198 = &l_88;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_161[i] = &p_2045->g_162;
        (*l_177) &= (((*l_108) &= (&l_99 != ((p_2045->g_162 = p_62) , l_163))) | (p_2045->g_75 < (((safe_unary_minus_func_int16_t_s(((safe_mul_func_int64_t_s_s(((safe_mul_func_int8_t_s_s(l_171, ((*p_61) ^= ((safe_sub_func_int16_t_s_s(((void*)0 == l_174), (++(*l_174)))) != 0UL)))) , (p_2045->g_58 < p_2045->g_165)), 0L)) < l_95))) , p_62) != p_2045->g_154)));
        l_177 = &p_2045->g_9;
        (*l_198) &= ((0x3BL == ((*p_61) & (safe_mul_func_uint16_t_u_u(((safe_add_func_int64_t_s_s(((safe_sub_func_uint64_t_u_u((((0x313BC257L & 0x9D622751L) <= ((safe_div_func_int16_t_s_s(((((safe_add_func_int64_t_s_s((p_2045->g_71[1] == (-8L)), (safe_add_func_int16_t_s_s((p_60 = (((safe_sub_func_uint64_t_u_u(18446744073709551614UL, (safe_add_func_int8_t_s_s(p_2045->g_140, (!(safe_lshift_func_int8_t_s_u(((void*)0 == p_61), 2))))))) & (*l_108)) < l_196)), 0x430CL)))) & p_2045->g_154) | p_62) == p_2045->g_126), (-2L))) <= (*l_108))) != 0x39L), p_2045->g_58)) >= 0x16L), p_62)) | 9L), p_62)))) >= (*l_177));
        return &p_2045->g_63;
    }
    else
    { /* block id: 67 */
        int32_t **l_199[3][1];
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_199[i][j] = &l_108;
        }
        l_108 = &p_2045->g_9;
        (*l_108) = (safe_rshift_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s((*l_108), (safe_div_func_int32_t_s_s((!(((void*)0 == l_206) ^ (p_62 == 0x52C7L))), p_60)))) != GROUP_DIVERGE(1, 1)), p_62));
    }
    p_2045->g_63 ^= ((~p_2045->g_126) < (*l_108));
    for (p_2045->g_162 = 0; (p_2045->g_162 != 59); p_2045->g_162 = safe_add_func_uint32_t_u_u(p_2045->g_162, 5))
    { /* block id: 74 */
        (*l_108) = 0x47AC9419L;
    }
    return &p_2045->g_63;
}


/* ------------------------------------------ */
/* 
 * reads : p_2045->g_86 p_2045->g_58 p_2045->g_126 p_2045->g_9 p_2045->g_35 p_2045->g_154 p_2045->g_7
 * writes: p_2045->g_86 p_2045->g_126 p_2045->g_58 p_2045->g_140 p_2045->g_154
 */
int32_t  func_80(uint16_t  p_81, int16_t  p_82, uint32_t  p_83, uint64_t  p_84, struct S0 * p_2045)
{ /* block id: 29 */
    int32_t l_121 = (-1L);
    int32_t l_133 = 0x3B0F311AL;
    int32_t *l_156 = &p_2045->g_9;
    for (p_2045->g_86 = 7; (p_2045->g_86 >= 12); p_2045->g_86 = safe_add_func_int32_t_s_s(p_2045->g_86, 5))
    { /* block id: 32 */
        uint64_t **l_129 = (void*)0;
        uint64_t **l_131 = (void*)0;
        uint64_t ***l_130 = &l_131;
        int32_t *l_132[6] = {&p_2045->g_63,&l_121,&p_2045->g_63,&p_2045->g_63,&l_121,&p_2045->g_63};
        int32_t *l_155 = (void*)0;
        uint32_t l_157 = 2UL;
        int i;
        if ((l_133 ^= (safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(((4L && l_121) & p_2045->g_58), p_82)), (p_82 , ((((safe_add_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((p_2045->g_126++), 0L)), 0UL)) , l_129) != ((*l_130) = l_129)) , p_2045->g_9)))) || 0xE61DEDA8L), p_2045->g_58)) , l_121), 0xF2L)), 11))))
        { /* block id: 36 */
            int32_t **l_134 = &l_132[5];
            (*l_134) = &l_133;
        }
        else
        { /* block id: 38 */
            uint64_t *l_138 = &p_2045->g_94[2][1];
            uint64_t **l_137 = &l_138;
            int8_t *l_149[10];
            int32_t l_152 = 0x57C61DA5L;
            int i;
            for (i = 0; i < 10; i++)
                l_149[i] = &p_2045->g_4;
            for (p_2045->g_58 = 9; (p_2045->g_58 == 58); ++p_2045->g_58)
            { /* block id: 41 */
                int8_t *l_139 = &p_2045->g_140;
                int16_t *l_153 = &p_2045->g_154;
                (*l_130) = l_137;
                l_121 ^= (((0x2F98L > (((0UL > (l_133 < ((((*l_153) ^= (FAKE_DIVERGE(p_2045->group_0_offset, get_group_id(0), 10) > ((0xE8L && ((*l_139) = (&p_84 == (void*)0))) ^ ((safe_mod_func_uint8_t_u_u(((safe_mod_func_int8_t_s_s(((safe_sub_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u((l_139 != l_149[1]), ((((safe_sub_func_uint64_t_u_u(p_2045->g_126, p_2045->g_58)) < p_2045->g_35) || l_152) != p_2045->g_86))), 0L)) & 1L), GROUP_DIVERGE(1, 1))) >= p_2045->g_58), 0x02L)) , p_82)))) != p_2045->g_7[1]) | 4294967295UL))) , 0xE3C26F71A791DEB0L) | p_2045->g_86)) == 0UL) && p_82);
            }
        }
        l_156 = l_155;
        if (l_157)
            break;
    }
    for (p_2045->g_126 = 23; (p_2045->g_126 <= 22); p_2045->g_126 = safe_sub_func_uint8_t_u_u(p_2045->g_126, 9))
    { /* block id: 53 */
        int32_t l_160 = 0x58DA1D73L;
        if (l_160)
            break;
    }
    return p_2045->g_9;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_2046;
    struct S0* p_2045 = &c_2046;
    struct S0 c_2047 = {
        0x10L, // p_2045->g_4
        {(-1L),(-1L),(-1L),(-1L)}, // p_2045->g_7
        0x18E418A5L, // p_2045->g_9
        &p_2045->g_9, // p_2045->g_8
        0UL, // p_2045->g_11
        18446744073709551615UL, // p_2045->g_35
        {0xA3L,0xA3L,0xA3L,0xA3L,0xA3L,0xA3L,0xA3L,0xA3L,0xA3L,0xA3L}, // p_2045->g_41
        255UL, // p_2045->g_58
        0x14A51E29L, // p_2045->g_63
        {0xE4559F947EB5F43EL,0xE4559F947EB5F43EL}, // p_2045->g_71
        0x70B5DC3D349FFB2EL, // p_2045->g_75
        4UL, // p_2045->g_86
        {{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}}, // p_2045->g_94
        0x7B85L, // p_2045->g_126
        1L, // p_2045->g_140
        0L, // p_2045->g_154
        0x350F1593L, // p_2045->g_162
        3UL, // p_2045->g_165
        &p_2045->g_9, // p_2045->g_213
        {0x7D190524C49024B7L}, // p_2045->g_226
        {&p_2045->g_226[0],&p_2045->g_226[0],&p_2045->g_226[0]}, // p_2045->g_225
        0xEFF8C8359BE378BCL, // p_2045->g_228
        &p_2045->g_228, // p_2045->g_227
        1UL, // p_2045->g_230
        &p_2045->g_230, // p_2045->g_229
        0UL, // p_2045->g_232
        &p_2045->g_232, // p_2045->g_231
        {{{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231}},{{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231}},{{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231}},{{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231}},{{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231}},{{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231}},{{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231},{&p_2045->g_231,&p_2045->g_231,(void*)0,&p_2045->g_231}}}, // p_2045->g_224
        &p_2045->g_224[6][1][1], // p_2045->g_223
        (void*)0, // p_2045->g_243
        &p_2045->g_140, // p_2045->g_248
        0x19D5596D2B076EBFL, // p_2045->g_257
        9L, // p_2045->g_297
        7L, // p_2045->g_302
        {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)}, // p_2045->g_304
        65530UL, // p_2045->g_306
        4294967295UL, // p_2045->g_326
        246UL, // p_2045->g_336
        &p_2045->g_213, // p_2045->g_357
        &p_2045->g_357, // p_2045->g_356
        {0L,0L,0L,0L,0L,0L}, // p_2045->g_381
        (-7L), // p_2045->g_384
        (-9L), // p_2045->g_387
        {{0x09884D23L,4294967287UL},{0x09884D23L,4294967287UL},{0x09884D23L,4294967287UL},{0x09884D23L,4294967287UL}}, // p_2045->g_389
        0x1A649FF226455D9AL, // p_2045->g_492
        0x9BL, // p_2045->g_496
        0x02101419L, // p_2045->g_501
        5L, // p_2045->g_507
        0x4CE2B729L, // p_2045->g_508
        {0xC0L}, // p_2045->g_509
        0x96E6DFF3BE7702A8L, // p_2045->g_583
        {{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162},{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162},{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162},{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162},{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162},{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162},{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162},{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162},{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162},{&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162,&p_2045->g_162}}, // p_2045->g_599
        &p_2045->g_599[6][1], // p_2045->g_598
        {{&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598},{&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598},{&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598},{&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598},{&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598},{&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598},{&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598},{&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598}}, // p_2045->g_597
        &p_2045->g_598, // p_2045->g_612
        {{&p_2045->g_612,&p_2045->g_612,(void*)0,&p_2045->g_612,&p_2045->g_612},{&p_2045->g_612,&p_2045->g_612,(void*)0,&p_2045->g_612,&p_2045->g_612},{&p_2045->g_612,&p_2045->g_612,(void*)0,&p_2045->g_612,&p_2045->g_612},{&p_2045->g_612,&p_2045->g_612,(void*)0,&p_2045->g_612,&p_2045->g_612},{&p_2045->g_612,&p_2045->g_612,(void*)0,&p_2045->g_612,&p_2045->g_612},{&p_2045->g_612,&p_2045->g_612,(void*)0,&p_2045->g_612,&p_2045->g_612}}, // p_2045->g_611
        {&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598,&p_2045->g_598}, // p_2045->g_617
        &p_2045->g_617[7], // p_2045->g_616
        0xB9BBFCA88E190DBBL, // p_2045->g_625
        {0x194D2E51L,0x194D2E51L,0x194D2E51L,0x194D2E51L,0x194D2E51L,0x194D2E51L,0x194D2E51L,0x194D2E51L}, // p_2045->g_671
        4294967295UL, // p_2045->g_707
        0x4E142029L, // p_2045->g_745
        1L, // p_2045->g_768
        0x7165L, // p_2045->g_769
        {{{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L}},{{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L}},{{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L}},{{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L}},{{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L}},{{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L},{0x03L}}}, // p_2045->g_820
        0x8CL, // p_2045->g_823
        0x62DEL, // p_2045->g_853
        {0x1FL,0x1FL,0x1FL,0x1FL,0x1FL}, // p_2045->g_855
        (void*)0, // p_2045->g_940
        &p_2045->g_940, // p_2045->g_939
        &p_2045->g_853, // p_2045->g_994
        &p_2045->g_994, // p_2045->g_993
        (void*)0, // p_2045->g_1067
        {{{0x44A8L},{0x44A8L},{0x44A8L},{0x44A8L},{0x44A8L},{0x44A8L}},{{0x44A8L},{0x44A8L},{0x44A8L},{0x44A8L},{0x44A8L},{0x44A8L}}}, // p_2045->g_1077
        &p_2045->g_243, // p_2045->g_1126
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2045->g_1125
        0x7AF29C7F45F90B32L, // p_2045->g_1169
        (-1L), // p_2045->g_1171
        65535UL, // p_2045->g_1172
        0xD0L, // p_2045->g_1214
        0x24L, // p_2045->g_1328
        &p_2045->g_1067, // p_2045->g_1337
        (void*)0, // p_2045->g_1406
        &p_2045->g_1406, // p_2045->g_1405
        &p_2045->g_1405, // p_2045->g_1404
        &p_2045->g_1404, // p_2045->g_1403
        {&p_2045->g_1403,&p_2045->g_1403}, // p_2045->g_1402
        0x5A007493L, // p_2045->g_1426
        (-10L), // p_2045->g_1427
        0x1B95L, // p_2045->g_1428
        {1UL,1UL,1UL,1UL,1UL,1UL}, // p_2045->g_1429
        {0x56L,0x56L,0x56L,0x56L,0x56L}, // p_2045->g_1476
        0x6283L, // p_2045->g_1477
        0x72129703L, // p_2045->g_1480
        4294967294UL, // p_2045->g_1482
        (-5L), // p_2045->g_1532
        0xE6668E7C78B0730AL, // p_2045->g_1558
        {0xA65B7D8460B23256L}, // p_2045->g_1559
        {&p_2045->g_1558,&p_2045->g_1558,&p_2045->g_1558,&p_2045->g_1558,&p_2045->g_1558,&p_2045->g_1558,&p_2045->g_1558,&p_2045->g_1558,&p_2045->g_1558,&p_2045->g_1558}, // p_2045->g_1557
        &p_2045->g_1557[6], // p_2045->g_1556
        &p_2045->g_616, // p_2045->g_1578
        &p_2045->g_1578, // p_2045->g_1577
        (void*)0, // p_2045->g_1593
        &p_2045->g_1593, // p_2045->g_1592
        0L, // p_2045->g_1657
        &p_2045->g_509[0], // p_2045->g_1664
        (void*)0, // p_2045->g_1665
        &p_2045->g_336, // p_2045->g_1666
        &p_2045->g_336, // p_2045->g_1667
        (void*)0, // p_2045->g_1668
        &p_2045->g_41[6], // p_2045->g_1669
        {{{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668}},{{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668}},{{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668}},{{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668},{&p_2045->g_1665,&p_2045->g_1668}}}, // p_2045->g_1663
        1UL, // p_2045->g_1697
        {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)}, // p_2045->g_1718
        4294967293UL, // p_2045->g_1719
        &p_2045->g_1592, // p_2045->g_1735
        &p_2045->g_1735, // p_2045->g_1734
        &p_2045->g_1734, // p_2045->g_1733
        0x482D8BA3L, // p_2045->g_1850
        &p_2045->g_1850, // p_2045->g_1849
        &p_2045->g_1849, // p_2045->g_1848
        0x95BD0E825066F3B0L, // p_2045->g_1897
        0x52AF19DF0761591BL, // p_2045->g_1933
        {&p_2045->g_387,&p_2045->g_387,&p_2045->g_387}, // p_2045->g_1967
        &p_2045->g_126, // p_2045->g_1980
        &p_2045->g_1980, // p_2045->g_1979
        &p_2045->g_1477, // p_2045->g_1989
        &p_2045->g_1989, // p_2045->g_1988
        0x1289L, // p_2045->g_2022
        0, // p_2045->v_collective
        sequence_input[get_global_id(0)], // p_2045->global_0_offset
        sequence_input[get_global_id(1)], // p_2045->global_1_offset
        sequence_input[get_global_id(2)], // p_2045->global_2_offset
        sequence_input[get_local_id(0)], // p_2045->local_0_offset
        sequence_input[get_local_id(1)], // p_2045->local_1_offset
        sequence_input[get_local_id(2)], // p_2045->local_2_offset
        sequence_input[get_group_id(0)], // p_2045->group_0_offset
        sequence_input[get_group_id(1)], // p_2045->group_1_offset
        sequence_input[get_group_id(2)], // p_2045->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_2046 = c_2047;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2045);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2045->g_4, "p_2045->g_4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2045->g_7[i], "p_2045->g_7[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_9, "p_2045->g_9", print_hash_value);
    transparent_crc(p_2045->g_11, "p_2045->g_11", print_hash_value);
    transparent_crc(p_2045->g_35, "p_2045->g_35", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2045->g_41[i], "p_2045->g_41[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_58, "p_2045->g_58", print_hash_value);
    transparent_crc(p_2045->g_63, "p_2045->g_63", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2045->g_71[i], "p_2045->g_71[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_75, "p_2045->g_75", print_hash_value);
    transparent_crc(p_2045->g_86, "p_2045->g_86", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2045->g_94[i][j], "p_2045->g_94[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2045->g_126, "p_2045->g_126", print_hash_value);
    transparent_crc(p_2045->g_140, "p_2045->g_140", print_hash_value);
    transparent_crc(p_2045->g_154, "p_2045->g_154", print_hash_value);
    transparent_crc(p_2045->g_162, "p_2045->g_162", print_hash_value);
    transparent_crc(p_2045->g_165, "p_2045->g_165", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2045->g_226[i], "p_2045->g_226[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_228, "p_2045->g_228", print_hash_value);
    transparent_crc(p_2045->g_230, "p_2045->g_230", print_hash_value);
    transparent_crc(p_2045->g_232, "p_2045->g_232", print_hash_value);
    transparent_crc(p_2045->g_257, "p_2045->g_257", print_hash_value);
    transparent_crc(p_2045->g_297, "p_2045->g_297", print_hash_value);
    transparent_crc(p_2045->g_302, "p_2045->g_302", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2045->g_304[i], "p_2045->g_304[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_306, "p_2045->g_306", print_hash_value);
    transparent_crc(p_2045->g_326, "p_2045->g_326", print_hash_value);
    transparent_crc(p_2045->g_336, "p_2045->g_336", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2045->g_381[i], "p_2045->g_381[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_384, "p_2045->g_384", print_hash_value);
    transparent_crc(p_2045->g_387, "p_2045->g_387", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2045->g_389[i][j], "p_2045->g_389[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2045->g_492, "p_2045->g_492", print_hash_value);
    transparent_crc(p_2045->g_496, "p_2045->g_496", print_hash_value);
    transparent_crc(p_2045->g_501, "p_2045->g_501", print_hash_value);
    transparent_crc(p_2045->g_507, "p_2045->g_507", print_hash_value);
    transparent_crc(p_2045->g_508, "p_2045->g_508", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2045->g_509[i], "p_2045->g_509[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_583, "p_2045->g_583", print_hash_value);
    transparent_crc(p_2045->g_625, "p_2045->g_625", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2045->g_671[i], "p_2045->g_671[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_707, "p_2045->g_707", print_hash_value);
    transparent_crc(p_2045->g_745, "p_2045->g_745", print_hash_value);
    transparent_crc(p_2045->g_768, "p_2045->g_768", print_hash_value);
    transparent_crc(p_2045->g_769, "p_2045->g_769", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2045->g_820[i][j][k], "p_2045->g_820[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2045->g_823, "p_2045->g_823", print_hash_value);
    transparent_crc(p_2045->g_853, "p_2045->g_853", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2045->g_855[i], "p_2045->g_855[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2045->g_1077[i][j][k], "p_2045->g_1077[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2045->g_1169, "p_2045->g_1169", print_hash_value);
    transparent_crc(p_2045->g_1171, "p_2045->g_1171", print_hash_value);
    transparent_crc(p_2045->g_1172, "p_2045->g_1172", print_hash_value);
    transparent_crc(p_2045->g_1214, "p_2045->g_1214", print_hash_value);
    transparent_crc(p_2045->g_1328, "p_2045->g_1328", print_hash_value);
    transparent_crc(p_2045->g_1426, "p_2045->g_1426", print_hash_value);
    transparent_crc(p_2045->g_1427, "p_2045->g_1427", print_hash_value);
    transparent_crc(p_2045->g_1428, "p_2045->g_1428", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2045->g_1429[i], "p_2045->g_1429[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2045->g_1476[i], "p_2045->g_1476[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_1477, "p_2045->g_1477", print_hash_value);
    transparent_crc(p_2045->g_1480, "p_2045->g_1480", print_hash_value);
    transparent_crc(p_2045->g_1482, "p_2045->g_1482", print_hash_value);
    transparent_crc(p_2045->g_1532, "p_2045->g_1532", print_hash_value);
    transparent_crc(p_2045->g_1558, "p_2045->g_1558", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2045->g_1559[i], "p_2045->g_1559[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_1657, "p_2045->g_1657", print_hash_value);
    transparent_crc(p_2045->g_1697, "p_2045->g_1697", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2045->g_1718[i], "p_2045->g_1718[i]", print_hash_value);

    }
    transparent_crc(p_2045->g_1719, "p_2045->g_1719", print_hash_value);
    transparent_crc(p_2045->g_1850, "p_2045->g_1850", print_hash_value);
    transparent_crc(p_2045->g_1897, "p_2045->g_1897", print_hash_value);
    transparent_crc(p_2045->g_1933, "p_2045->g_1933", print_hash_value);
    transparent_crc(p_2045->g_2022, "p_2045->g_2022", print_hash_value);
    transparent_crc(p_2045->v_collective, "p_2045->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
