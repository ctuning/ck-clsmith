// ---fake_divergence -g 1,1,1 -l 1,1,1
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


// Seed: 31

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
   volatile uint64_t  f1;
};

union U1 {
   volatile uint64_t  f0;
   int32_t  f1;
   volatile uint16_t  f2;
   volatile struct S0  f3;
   volatile struct S0  f4;
};

union U2 {
   int32_t  f0;
   volatile int8_t * f1;
};

struct S3 {
    volatile int32_t g_2[2];
    int32_t g_3[10];
    int32_t g_8;
    int8_t g_50;
    int8_t *g_67;
    int8_t g_92[7];
    uint64_t g_94;
    uint8_t g_103;
    int32_t g_106;
    union U1 g_108;
    uint8_t g_121;
    uint32_t g_122;
    volatile uint32_t g_128;
    union U2 *g_131;
    union U2 g_133[2];
    int8_t **g_147[2][4][6];
    uint16_t g_164;
    int32_t g_167[3][1];
    volatile struct S0 g_168;
    int16_t g_178;
    uint16_t *g_230;
    uint16_t **g_229;
    int32_t g_232;
    int64_t g_235[3][2];
    int32_t *g_240;
    int32_t ** volatile g_239[1][10][8];
    struct S0 g_244;
    struct S0 *g_245;
    uint32_t g_276;
    volatile union U1 g_354;
    union U1 g_365[7];
    union U1 *g_364[3];
    union U2 g_432;
    volatile struct S0 g_467;
    int8_t g_497[4][9][5];
    int32_t ** volatile g_504;
    union U1 g_505;
    struct S0 g_509[4];
    int32_t * volatile g_531;
    int32_t g_551;
    uint32_t * volatile g_605;
    uint32_t * volatile *g_604;
    int8_t g_610;
    volatile struct S0 g_647;
    int32_t **g_650;
    volatile uint32_t g_678;
    int64_t g_685;
    union U1 g_686;
    volatile struct S0 g_755[3];
    int8_t g_785;
    union U1 g_792[1][8];
    uint32_t g_832;
    int32_t g_851;
    volatile int16_t g_877;
    volatile int16_t g_878;
    volatile int32_t *g_883[1];
    volatile int32_t ** volatile g_882;
    struct S0 g_916[10];
    uint64_t g_919;
    uint32_t g_988;
    int32_t * volatile * volatile g_1017;
    int32_t * volatile * volatile * volatile g_1016;
    int32_t * volatile * volatile * volatile *g_1015;
    union U1 g_1035;
    uint32_t g_1037;
    volatile int32_t ** volatile g_1041;
    volatile int32_t ** volatile g_1042[8];
    volatile int32_t ** volatile g_1044;
    volatile int64_t * volatile *g_1047;
    volatile int64_t * volatile ** volatile g_1048;
    volatile union U1 g_1051;
    union U2 *g_1081;
    int32_t g_1108;
    union U1 g_1173;
    uint16_t g_1176;
    union U1 g_1180;
    volatile int32_t ** volatile g_1181[3][3][9];
    union U1 g_1229;
    volatile int32_t g_1237;
    volatile int32_t *g_1236;
    volatile int32_t **g_1235;
    volatile int32_t ***g_1234;
    uint32_t g_1286;
    int16_t **g_1299;
    volatile struct S0 g_1336;
    volatile int32_t *g_1358;
    volatile int32_t ** volatile g_1357;
    volatile int32_t ** volatile * volatile g_1359;
    int8_t *** volatile g_1360;
    struct S0 g_1366;
    union U1 g_1376[6];
    union U1 g_1411[7];
    volatile struct S0 g_1448[7][2][3];
    volatile struct S0 * volatile g_1449[2];
    int32_t *g_1465;
    int32_t **g_1464;
    int32_t * volatile g_1503;
    volatile struct S0 g_1602;
    volatile struct S0 * volatile g_1604;
    volatile struct S0 g_1613[9][6];
    int8_t ***g_1657;
    struct S0 g_1726[1];
    struct S0 g_1727[7];
    int32_t ** volatile **g_1734[9];
    int32_t ** volatile ***g_1733;
    int32_t ** volatile ****g_1732[10];
    volatile struct S0 g_1741[7];
    struct S0 g_1748;
    union U1 g_1808[7];
    int8_t g_1859;
    int8_t *g_1858;
    struct S0 g_1866[5];
    uint32_t g_1875;
    volatile int32_t ** volatile g_1939;
    uint32_t *g_1979[3];
    uint32_t **g_1978;
    union U1 g_2030;
    uint16_t *g_2036;
    volatile struct S0 g_2037;
    volatile union U1 g_2038;
    volatile union U1 g_2048[9];
    int8_t *g_2057[7][7][5];
    union U2 ** volatile g_2072;
    volatile struct S0 g_2085;
    volatile struct S0 * volatile g_2087;
    int32_t ***g_2096;
    int32_t ****g_2095[9];
    volatile struct S0 g_2107;
    volatile struct S0 * volatile g_2108;
    volatile struct S0 g_2146;
    volatile int32_t * volatile g_2210;
    int64_t g_2232;
    volatile struct S0 g_2236;
    union U2 ** volatile g_2247;
    union U2 ** volatile g_2248;
    struct S0 g_2287;
    volatile struct S0 g_2299;
    uint32_t g_2300;
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
uint64_t  func_1(struct S3 * p_2301);
int16_t  func_25(int32_t * p_26, int8_t * p_27, int32_t * p_28, int8_t  p_29, uint32_t  p_30, struct S3 * p_2301);
int32_t * func_31(int8_t  p_32, uint8_t  p_33, int8_t * p_34, struct S3 * p_2301);
int8_t  func_35(int8_t  p_36, int32_t  p_37, int8_t * p_38, int16_t  p_39, struct S3 * p_2301);
uint8_t  func_44(int8_t * p_45, uint16_t  p_46, uint32_t  p_47, union U2  p_48, struct S3 * p_2301);
uint32_t  func_51(union U2  p_52, int8_t * p_53, uint32_t  p_54, int32_t  p_55, int32_t * p_56, struct S3 * p_2301);
union U2  func_57(int32_t  p_58, struct S3 * p_2301);
int32_t * func_60(uint16_t  p_61, struct S3 * p_2301);
int64_t  func_76(uint16_t  p_77, int32_t  p_78, uint8_t  p_79, int32_t * p_80, struct S3 * p_2301);
uint16_t  func_81(int32_t  p_82, struct S3 * p_2301);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2301->g_3 p_2301->g_2300
 * writes: p_2301->g_3
 */
uint64_t  func_1(struct S3 * p_2301)
{ /* block id: 4 */
    int16_t l_11 = 0L;
    int32_t l_13 = 0x7B09F595L;
    int32_t l_14 = 5L;
    int32_t l_15 = 0x21EE01E6L;
    int32_t l_16 = 0x15D7C154L;
    int16_t l_17 = 0L;
    int8_t *l_1109 = &p_2301->g_785;
    union U2 *l_2163 = (void*)0;
    struct S0 **l_2205 = (void*)0;
    int16_t l_2209[2][9][2] = {{{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)}},{{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)},{0L,(-4L)}}};
    int32_t *l_2262 = (void*)0;
    union U2 **l_2281 = &p_2301->g_131;
    union U1 *l_2295 = &p_2301->g_2030;
    int i, j, k;
    for (p_2301->g_3[1] = 0; (p_2301->g_3[1] <= (-16)); p_2301->g_3[1]--)
    { /* block id: 7 */
        int32_t *l_6 = (void*)0;
        int32_t *l_7 = &p_2301->g_8;
        int32_t l_9 = 0x3DCDF5EFL;
        int32_t *l_10 = (void*)0;
        int32_t *l_12[5];
        int32_t l_18 = 0x0167BA9AL;
        int64_t l_19 = 1L;
        uint8_t l_20[2][7][1] = {{{7UL},{7UL},{7UL},{7UL},{7UL},{7UL},{7UL}},{{7UL},{7UL},{7UL},{7UL},{7UL},{7UL},{7UL}}};
        int8_t *l_609 = &p_2301->g_610;
        int64_t l_2160 = 0x6FF4A19E479A8E7BL;
        int32_t **l_2176[2][2];
        int32_t l_2204 = 0x488CB816L;
        union U1 **l_2217 = &p_2301->g_364[0];
        uint64_t l_2233[2];
        union U2 *l_2246 = &p_2301->g_133[0];
        union U2 l_2259 = {0x3AD5B7BFL};
        int8_t *l_2260[2];
        int32_t * volatile l_2261[7][1][1] = {{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}}};
        int32_t l_2297[7][2][5] = {{{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L},{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L}},{{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L},{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L}},{{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L},{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L}},{{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L},{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L}},{{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L},{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L}},{{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L},{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L}},{{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L},{(-10L),0x31A59636L,(-3L),0x0427BB11L,0x353FB908L}}};
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_12[i] = (void*)0;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 2; j++)
                l_2176[i][j] = &l_7;
        }
        for (i = 0; i < 2; i++)
            l_2233[i] = 7UL;
        for (i = 0; i < 2; i++)
            l_2260[i] = &p_2301->g_497[2][0][4];
        ++l_20[0][3][0];
        for (l_16 = 0; (l_16 <= 4); l_16 += 1)
        { /* block id: 11 */
            int8_t *l_49 = &p_2301->g_50;
            int32_t l_59 = (-2L);
            int32_t *l_1107[8] = {&p_2301->g_1108,&p_2301->g_1108,&p_2301->g_1108,&p_2301->g_1108,&p_2301->g_1108,&p_2301->g_1108,&p_2301->g_1108,&p_2301->g_1108};
            int i;
            (1 + 1);
        }
    }
    return p_2301->g_2300;
}


/* ------------------------------------------ */
/* 
 * reads : p_2301->g_1035.f1 p_2301->g_235 p_2301->g_8 p_2301->g_2146 p_2301->g_2096 p_2301->g_650 p_2301->g_240 p_2301->g_133.f0 p_2301->g_229 p_2301->g_230 p_2301->g_164 p_2301->g_685 p_2301->g_67 p_2301->g_50 p_2301->g_604 p_2301->g_605 p_2301->g_122 p_2301->g_92 p_2301->g_128 p_2301->g_94 p_2301->g_1503 p_2301->g_1866.f0
 * writes: p_2301->g_1035.f1 p_2301->g_8 p_2301->g_178 p_2301->g_919 p_2301->g_164 p_2301->g_133.f0 p_2301->g_92 p_2301->g_50 p_2301->g_916.f0 p_2301->g_106 p_2301->g_240 p_2301->g_988 p_2301->g_1366.f0 p_2301->g_364
 */
int16_t  func_25(int32_t * p_26, int8_t * p_27, int32_t * p_28, int8_t  p_29, uint32_t  p_30, struct S3 * p_2301)
{ /* block id: 885 */
    uint64_t l_1862 = 18446744073709551614UL;
    uint32_t l_1880 = 0UL;
    int32_t l_1885 = 0x5238100CL;
    int8_t ****l_1917 = &p_2301->g_1657;
    int32_t l_1997 = 0x4B786491L;
    int32_t l_2003[4][10];
    uint16_t l_2021 = 1UL;
    int32_t **l_2033[1];
    uint16_t **l_2083[3];
    uint8_t l_2084 = 0xD2L;
    uint32_t *l_2109 = &p_2301->g_988;
    int32_t ***l_2147 = (void*)0;
    int16_t *l_2156 = &p_2301->g_178;
    uint16_t l_2157 = 0x1FEAL;
    int8_t *l_2158 = &p_2301->g_92[4];
    int32_t *l_2159 = &p_2301->g_167[0][0];
    int i, j;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
            l_2003[i][j] = 0x317D30F8L;
    }
    for (i = 0; i < 1; i++)
        l_2033[i] = &p_2301->g_1465;
    for (i = 0; i < 3; i++)
        l_2083[i] = &p_2301->g_2036;
    for (p_2301->g_1035.f1 = 0; (p_2301->g_1035.f1 <= 11); p_2301->g_1035.f1++)
    { /* block id: 888 */
        if (l_1862)
            break;
        return p_2301->g_235[2][0];
    }
    for (p_2301->g_8 = 23; (p_2301->g_8 == (-6)); --p_2301->g_8)
    { /* block id: 894 */
        uint32_t l_1865 = 0x71829D1AL;
        int32_t l_1895 = 0x651DE766L;
        int32_t l_1921[2];
        union U2 l_1924[2][8] = {{{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL}},{{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL},{0x1C6E569BL}}};
        int16_t l_1982 = (-10L);
        int16_t l_1987 = (-1L);
        int32_t l_2001 = (-10L);
        int32_t l_2020 = 0x2B776C89L;
        int32_t **l_2031 = &p_2301->g_1465;
        uint32_t *l_2111 = &p_2301->g_988;
        uint32_t *l_2112 = &p_2301->g_988;
        int32_t *******l_2113 = (void*)0;
        int i, j;
        for (i = 0; i < 2; i++)
            l_1921[i] = (-1L);
        (1 + 1);
    }
    l_2159 = ((*p_2301->g_650) = func_31((safe_add_func_int16_t_s_s(l_2003[3][9], (safe_rshift_func_int16_t_s_s((((l_1885 , ((safe_lshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(l_1997, l_2003[1][0])), (((safe_rshift_func_uint16_t_u_s((!(((+(safe_lshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_s((safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((~(safe_lshift_func_int16_t_s_u((-6L), ((p_2301->g_2146 , l_2147) != ((safe_lshift_func_int16_t_s_u(((*l_2156) = (safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_s((((safe_sub_func_uint16_t_u_u((1UL & (***p_2301->g_2096)), 65535UL)) ^ p_29) == 0x17B7D161L), 1)), p_29))), (**p_2301->g_229))) , (void*)0))))), l_2157)), l_2003[3][5])), p_29)), p_29))) | (-3L)) || GROUP_DIVERGE(0, 1))), 14)) ^ l_1880) > 0x4DL))) < 1L)) && p_29) ^ FAKE_DIVERGE(p_2301->local_0_offset, get_local_id(0), 10)), p_30)))), p_2301->g_685, l_2158, p_2301));
    return p_2301->g_1866[0].f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_2301->g_919 p_2301->g_229 p_2301->g_230 p_2301->g_650 p_2301->g_240 p_2301->g_133.f0 p_2301->g_67 p_2301->g_50 p_2301->g_604 p_2301->g_605 p_2301->g_122 p_2301->g_785 p_2301->g_128 p_2301->g_94 p_2301->g_1503 p_2301->g_988 p_2301->g_92 p_2301->g_167 p_2301->g_8 p_2301->g_497
 * writes: p_2301->g_919 p_2301->g_164 p_2301->g_133.f0 p_2301->g_785 p_2301->g_50 p_2301->g_916.f0 p_2301->g_106 p_2301->g_240 p_2301->g_988 p_2301->g_1366.f0 p_2301->g_364 p_2301->g_92 p_2301->g_167 p_2301->g_8 p_2301->g_497
 */
int32_t * func_31(int8_t  p_32, uint8_t  p_33, int8_t * p_34, struct S3 * p_2301)
{ /* block id: 487 */
    int32_t ***l_1150 = &p_2301->g_650;
    int32_t ****l_1149 = &l_1150;
    int64_t *l_1225 = &p_2301->g_235[1][0];
    int64_t **l_1224 = &l_1225;
    int64_t ***l_1223 = &l_1224;
    uint16_t l_1264 = 5UL;
    int32_t l_1277[6];
    union U1 *l_1334 = &p_2301->g_792[0][1];
    int16_t l_1467 = 1L;
    int32_t l_1499 = 8L;
    union U2 l_1545 = {-1L};
    int16_t l_1638 = 0x0FFEL;
    uint32_t l_1640 = 0xE16C0781L;
    int8_t ****l_1673 = &p_2301->g_1657;
    int8_t l_1699 = (-7L);
    int32_t *****l_1736[5][4][2];
    int32_t ******l_1735 = &l_1736[4][0][1];
    int32_t *l_1833 = &p_2301->g_432.f0;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1277[i] = 0x388108C8L;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
                l_1736[i][j][k] = &l_1149;
        }
    }
    for (p_2301->g_919 = 0; (p_2301->g_919 <= 2); p_2301->g_919 += 1)
    { /* block id: 490 */
        union U2 l_1139[2][10][3] = {{{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}}},{{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}},{{0L},{0x4D8AFC6CL},{0L}}}};
        int32_t *l_1140[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t ****l_1152[4][4][10] = {{{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150}},{{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150}},{{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150}},{{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150},{&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150,&l_1150}}};
        int32_t *****l_1151 = &l_1152[0][0][9];
        int16_t *l_1153 = (void*)0;
        int16_t *l_1155 = &p_2301->g_178;
        int16_t **l_1154 = &l_1155;
        int64_t l_1165 = 0L;
        union U2 *l_1208 = &l_1139[1][3][2];
        int8_t *l_1231 = &p_2301->g_785;
        int8_t l_1327 = 0x78L;
        uint16_t l_1404 = 65531UL;
        int16_t l_1419 = (-5L);
        int64_t l_1422 = 0L;
        union U1 *l_1425 = (void*)0;
        uint32_t l_1468 = 4UL;
        int i, j, k;
        for (p_2301->g_164 = 0; (p_2301->g_164 <= 9); p_2301->g_164 += 1)
        { /* block id: 493 */
            int32_t *l_1138 = &p_2301->g_133[0].f0;
            int i;
            (1 + 1);
        }
    }
    if (((****l_1149) = ((*p_2301->g_229) != &l_1264)))
    { /* block id: 691 */
        int64_t l_1476 = 0x55F89BF8D377D914L;
        int32_t l_1494 = 0x12963AFAL;
        uint64_t *l_1500 = (void*)0;
        uint64_t *l_1501[3][8] = {{(void*)0,(void*)0,&p_2301->g_244.f0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2301->g_244.f0},{(void*)0,(void*)0,&p_2301->g_244.f0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2301->g_244.f0},{(void*)0,(void*)0,&p_2301->g_244.f0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2301->g_244.f0}};
        uint64_t l_1502 = 0x722C425A814E811EL;
        int i, j;
        (*p_2301->g_1503) = (p_33 == ((((~p_33) & (l_1476 , (safe_mul_func_uint8_t_u_u(0x8FL, (safe_add_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((+((p_2301->g_916[8].f0 = (((safe_sub_func_int64_t_s_s((((**p_2301->g_229) = FAKE_DIVERGE(p_2301->global_0_offset, get_global_id(0), 10)) == (safe_unary_minus_func_int16_t_s((safe_lshift_func_uint8_t_u_u(((***l_1150) || ((safe_mod_func_int64_t_s_s(((*p_2301->g_67) && ((*p_2301->g_67) = ((***l_1150) = ((*p_34) = (p_33 <= ((((((safe_rshift_func_uint16_t_u_u(((safe_mod_func_uint8_t_u_u(((l_1494 &= l_1476) && (safe_div_func_int32_t_s_s((~(safe_rshift_func_int8_t_s_u(((((-4L) || FAKE_DIVERGE(p_2301->group_0_offset, get_group_id(0), 10)) , l_1499) || p_32), 6))), (**p_2301->g_604)))), l_1476)) & 1L), 4)) <= (*p_2301->g_240)) & (*p_2301->g_67)) >= (*p_34)) > p_32) && p_2301->g_128)))))), p_33)) >= l_1476)), p_33))))), p_2301->g_94)) != l_1476) || p_33)) , p_33)), p_32)), GROUP_DIVERGE(2, 1))))))) >= l_1502) < p_33));
    }
    else
    { /* block id: 699 */
        int32_t ****l_1504 = (void*)0;
        int32_t l_1530 = (-8L);
        int32_t l_1588 = 0x433EEE0BL;
        int32_t l_1589[8][10][3] = {{{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL}},{{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL}},{{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL}},{{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL}},{{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL}},{{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL}},{{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL}},{{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL},{(-1L),0L,0x1191831FL}}};
        int32_t l_1636 = 1L;
        uint32_t *l_1677 = &p_2301->g_1286;
        uint32_t **l_1676 = &l_1677;
        int32_t **l_1692 = &p_2301->g_1465;
        int16_t l_1697 = 0x358CL;
        uint32_t l_1703 = 0UL;
        int32_t l_1719[2];
        uint8_t l_1749 = 0xC3L;
        int16_t l_1764 = 0x6949L;
        int32_t l_1766 = 0x696941D4L;
        union U1 *l_1856 = &p_2301->g_686;
        union U1 **l_1857 = &p_2301->g_364[1];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1719[i] = (-9L);
        (*p_2301->g_650) = ((((*p_2301->g_230) = ((&p_2301->g_1016 == l_1504) | 0x7CL)) <= 0x1C9DL) , (*p_2301->g_650));
        for (p_2301->g_988 = 2; (p_2301->g_988 <= 6); p_2301->g_988 += 1)
        { /* block id: 704 */
            uint8_t l_1532 = 0x71L;
            int64_t l_1577 = (-6L);
            int32_t l_1590[6];
            int64_t l_1595[5][5] = {{0L,0x7C72F9E26F1FEB87L,0x03637A6DBC9D055CL,0x7C72F9E26F1FEB87L,0L},{0L,0x7C72F9E26F1FEB87L,0x03637A6DBC9D055CL,0x7C72F9E26F1FEB87L,0L},{0L,0x7C72F9E26F1FEB87L,0x03637A6DBC9D055CL,0x7C72F9E26F1FEB87L,0L},{0L,0x7C72F9E26F1FEB87L,0x03637A6DBC9D055CL,0x7C72F9E26F1FEB87L,0L},{0L,0x7C72F9E26F1FEB87L,0x03637A6DBC9D055CL,0x7C72F9E26F1FEB87L,0L}};
            union U2 l_1628 = {0x0A75A078L};
            int32_t ******l_1738[5][8] = {{&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1]},{&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1]},{&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1]},{&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1]},{&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1],&l_1736[4][0][1],&l_1736[4][0][1],&l_1736[1][1][1]}};
            int8_t **l_1790 = (void*)0;
            int32_t l_1834[1];
            uint16_t **l_1837 = &p_2301->g_230;
            int i, j;
            for (i = 0; i < 6; i++)
                l_1590[i] = 8L;
            for (i = 0; i < 1; i++)
                l_1834[i] = 0x1029FDCDL;
            for (p_2301->g_1366.f0 = 0; (p_2301->g_1366.f0 <= 1); p_2301->g_1366.f0 += 1)
            { /* block id: 707 */
                uint16_t *l_1523[3];
                int32_t l_1531 = 0x7149059FL;
                uint32_t l_1562 = 0x4CB84FFEL;
                uint16_t l_1610 = 0x3CF5L;
                uint64_t l_1620 = 1UL;
                int32_t l_1634 = 0x02EC1C28L;
                int32_t l_1637[2][3];
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1523[i] = (void*)0;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_1637[i][j] = 1L;
                }
                (1 + 1);
            }
        }
        (******l_1735) ^= (&p_2301->g_1357 == &p_2301->g_1464);
        (*l_1857) = &p_2301->g_1180;
    }
    return (*****l_1735);
}


/* ------------------------------------------ */
/* 
 * reads : p_2301->g_650 p_2301->g_229 p_2301->g_230 p_2301->g_164 p_2301->g_1015 p_2301->g_1016 p_2301->g_1017 p_2301->g_240 p_2301->g_133.f0 p_2301->g_988 p_2301->g_497 p_2301->g_178 p_2301->g_785 p_2301->g_610
 * writes: p_2301->g_240 p_2301->g_164 p_2301->g_685 p_2301->g_178 p_2301->g_133.f0 p_2301->g_610
 */
int8_t  func_35(int8_t  p_36, int32_t  p_37, int8_t * p_38, int16_t  p_39, struct S3 * p_2301)
{ /* block id: 466 */
    int32_t *l_1110 = &p_2301->g_133[0].f0;
    int32_t **l_1111 = &l_1110;
    int64_t l_1122 = 8L;
    uint64_t *l_1123 = &p_2301->g_919;
    int64_t *l_1130 = &p_2301->g_685;
    uint64_t l_1131 = 18446744073709551614UL;
    int16_t *l_1132 = &p_2301->g_178;
    int32_t *l_1133 = &p_2301->g_8;
    (*l_1111) = ((*p_2301->g_650) = l_1110);
    if (((**p_2301->g_650) = (safe_mod_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((**p_2301->g_229) &= 0x893EL), (((safe_lshift_func_int16_t_s_u(0L, 5)) && ((((!(****p_2301->g_1015)) , 252UL) >= (safe_add_func_int32_t_s_s((**p_2301->g_650), (l_1122 = (**l_1111))))) | ((((*l_1132) ^= (l_1123 != ((((safe_div_func_uint16_t_u_u(((!(((safe_div_func_int64_t_s_s(((*l_1130) = ((safe_rshift_func_uint8_t_u_s(((**l_1111) & (*l_1110)), 2)) < 0x37L)), p_2301->g_988)) ^ l_1131) > p_37)) , GROUP_DIVERGE(2, 1)), p_37)) , 0x9C7FL) || p_2301->g_497[0][2][2]) , &p_2301->g_919))) , (*l_1110)) < (*l_1110)))) , GROUP_DIVERGE(1, 1)))), (**l_1111)))))
    { /* block id: 474 */
        return (*p_38);
    }
    else
    { /* block id: 476 */
        for (p_2301->g_610 = 1; (p_2301->g_610 >= 0); p_2301->g_610 -= 1)
        { /* block id: 479 */
            (**p_2301->g_650) = (-7L);
            l_1133 = ((*l_1111) = ((*p_2301->g_650) = (*l_1111)));
        }
    }
    return (*p_38);
}


/* ------------------------------------------ */
/* 
 * reads : p_2301->g_128 p_2301->g_1015 p_2301->g_1016 p_2301->g_1017 p_2301->g_240 p_2301->g_882 p_2301->g_883 p_2301->g_1044 p_2301->g_505.f1 p_2301->g_1047 p_2301->g_1048 p_2301->g_1051 p_2301->g_67 p_2301->g_50 p_2301->g_2 p_2301->g_650 p_2301->g_232 p_2301->g_167 p_2301->g_604 p_2301->g_605 p_2301->g_94 p_2301->g_230 p_2301->g_164 p_2301->g_685 p_2301->g_229 p_2301->g_178 p_2301->g_785 p_2301->g_851 p_2301->g_551 p_2301->g_244.f1
 * writes: p_2301->g_232 p_2301->g_167 p_2301->g_883 p_2301->g_505.f1 p_2301->g_1047 p_2301->g_245 p_2301->g_122 p_2301->g_1037 p_2301->g_685 p_2301->g_164 p_2301->g_103 p_2301->g_240 p_2301->g_851 p_2301->g_131 p_2301->g_1081
 */
uint8_t  func_44(int8_t * p_45, uint16_t  p_46, uint32_t  p_47, union U2  p_48, struct S3 * p_2301)
{ /* block id: 416 */
    int16_t l_1040 = 5L;
    int32_t l_1061 = (-5L);
    int32_t l_1063 = 0x136313ACL;
    int8_t ***l_1093 = &p_2301->g_147[1][1][0];
    int8_t ****l_1092 = &l_1093;
    int32_t l_1101 = 0x3A20AE66L;
    struct S0 **l_1106 = &p_2301->g_245;
    l_1040 = ((****p_2301->g_1015) = (safe_sub_func_int32_t_s_s((p_2301->g_128 , p_47), 0L)));
    if ((l_1040 > 0UL))
    { /* block id: 419 */
        volatile int32_t **l_1043 = (void*)0;
        (*p_2301->g_1044) = (*p_2301->g_882);
    }
    else
    { /* block id: 421 */
        struct S0 *l_1056 = &p_2301->g_509[0];
        uint32_t *l_1059 = (void*)0;
        uint32_t *l_1060[10] = {&p_2301->g_832,&p_2301->g_832,&p_2301->g_832,&p_2301->g_832,&p_2301->g_832,&p_2301->g_832,&p_2301->g_832,&p_2301->g_832,&p_2301->g_832,&p_2301->g_832};
        struct S0 **l_1062 = &p_2301->g_245;
        int32_t l_1064 = 0x01D9C53AL;
        int32_t **l_1065[6][4] = {{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240}};
        int i, j;
        for (p_2301->g_505.f1 = 0; (p_2301->g_505.f1 == 22); p_2301->g_505.f1 = safe_add_func_uint32_t_u_u(p_2301->g_505.f1, 3))
        { /* block id: 424 */
            (*p_2301->g_1048) = p_2301->g_1047;
        }
        p_48.f0 &= (safe_lshift_func_int16_t_s_u((p_2301->g_1051 , (((((safe_mul_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u((l_1040 || ((p_2301->g_1037 = ((**p_2301->g_604) = ((0x1AD8AC39L < ((l_1040 == (l_1063 = ((*p_2301->g_67) && (l_1056 != ((*l_1062) = ((safe_div_func_uint32_t_u_u(((**p_2301->g_1044) == ((-1L) && ((((l_1061 = 4294967292UL) || FAKE_DIVERGE(p_2301->group_1_offset, get_group_id(1), 10)) != 0L) | 0xCFL))), p_47)) , (void*)0)))))) || p_47)) > (**p_2301->g_650)))) > 0x7DE67EABL)), l_1064)) == FAKE_DIVERGE(p_2301->global_1_offset, get_global_id(1), 10)), 0x214BL)) <= p_2301->g_94) != 6UL) , (void*)0) != l_1065[5][1])), (*p_2301->g_230)));
        for (p_2301->g_685 = 0; (p_2301->g_685 > 21); p_2301->g_685++)
        { /* block id: 435 */
            int32_t *l_1073 = (void*)0;
            for (p_2301->g_164 = 0; (p_2301->g_164 != 34); p_2301->g_164 = safe_add_func_int16_t_s_s(p_2301->g_164, 7))
            { /* block id: 438 */
                int32_t l_1070 = 0x12D3CFE5L;
                if (l_1070)
                    break;
            }
            p_48.f0 ^= 0L;
            for (p_2301->g_103 = (-27); (p_2301->g_103 == 40); p_2301->g_103++)
            { /* block id: 444 */
                int32_t l_1074 = 0L;
                (*p_2301->g_1017) = l_1073;
                p_48.f0 &= (l_1061 |= ((FAKE_DIVERGE(p_2301->local_2_offset, get_local_id(2), 10) , &p_2301->g_1016) == (void*)0));
                l_1061 &= (((**p_2301->g_229) |= (0x3A96985FL | (l_1074 | FAKE_DIVERGE(p_2301->global_1_offset, get_global_id(1), 10)))) && ((((p_2301->g_178 ^ p_48.f0) != p_2301->g_2[1]) , p_46) >= (safe_rshift_func_uint8_t_u_s((((((0x11BAL == (safe_sub_func_int64_t_s_s(((l_1063 = ((((0xB9D4L & p_2301->g_785) , (void*)0) != &p_45) > p_46)) == 0x336FC1D6L), 0x78D70DC6C719B74EL))) <= p_46) > p_48.f0) && (*p_2301->g_67)) , FAKE_DIVERGE(p_2301->group_0_offset, get_group_id(0), 10)), 6))));
            }
        }
    }
    for (p_2301->g_851 = 7; (p_2301->g_851 == (-1)); p_2301->g_851 = safe_sub_func_uint64_t_u_u(p_2301->g_851, 1))
    { /* block id: 456 */
        int8_t ***l_1085 = (void*)0;
        int8_t ****l_1084 = &l_1085;
        int32_t l_1098 = 0x612AC221L;
        int32_t l_1099 = 0x20F74588L;
        int16_t *l_1100 = &l_1040;
        int32_t *l_1102 = &p_2301->g_505.f1;
        int32_t *l_1103 = &p_2301->g_167[0][0];
        int64_t *l_1105 = &p_2301->g_235[1][0];
        int64_t **l_1104 = &l_1105;
        p_2301->g_1081 = (p_2301->g_131 = &p_2301->g_133[0]);
        (*l_1103) ^= (safe_div_func_int8_t_s_s(((void*)0 == l_1084), (safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((void*)0 == l_1092), ((safe_rshift_func_uint8_t_u_s((safe_sub_func_int32_t_s_s((FAKE_DIVERGE(p_2301->global_2_offset, get_global_id(2), 10) , (l_1098 = (-3L))), (((l_1099 | p_2301->g_551) , p_2301->g_244.f1) , (((*l_1100) = ((-10L) > p_48.f0)) || l_1099)))), (*p_45))) == l_1101))), 6)), 0xBB43L))));
        (*l_1102) = (((void*)0 != l_1104) != (l_1106 == (void*)0));
    }
    return l_1040;
}


/* ------------------------------------------ */
/* 
 * reads : p_2301->g_8 p_2301->g_3 p_2301->g_164 p_2301->g_432.f0 p_2301->g_106 p_2301->g_92 p_2301->g_240 p_2301->g_232 p_2301->g_167 p_2301->g_531 p_2301->g_133.f0 p_2301->g_67 p_2301->g_50 p_2301->g_230 p_2301->g_647 p_2301->g_178 p_2301->g_122 p_2301->g_604 p_2301->g_605 p_2301->g_678 p_2301->g_497 p_2301->g_235 p_2301->g_686 p_2301->g_94 p_2301->g_229 p_2301->g_685 p_2301->g_1015 p_2301->g_245 p_2301->g_509 p_2301->g_1035 p_2301->g_276 p_2301->g_988 p_2301->g_610 p_2301->g_103 p_2301->g_650
 * writes: p_2301->g_178 p_2301->g_509.f0 p_2301->g_164 p_2301->g_650 p_2301->g_232 p_2301->g_122 p_2301->g_106 p_2301->g_235 p_2301->g_685 p_2301->g_94 p_2301->g_121 p_2301->g_8 p_2301->g_1037 p_2301->g_103 p_2301->g_167
 */
uint32_t  func_51(union U2  p_52, int8_t * p_53, uint32_t  p_54, int32_t  p_55, int32_t * p_56, struct S3 * p_2301)
{ /* block id: 256 */
    int32_t *l_611 = &p_2301->g_108.f1;
    int32_t *l_612 = &p_2301->g_8;
    int32_t *l_613 = &p_2301->g_167[1][0];
    int32_t *l_614 = &p_2301->g_432.f0;
    int32_t *l_615 = &p_2301->g_106;
    int32_t *l_616 = &p_2301->g_232;
    int32_t *l_617 = &p_2301->g_8;
    int32_t *l_618[9] = {(void*)0,&p_2301->g_551,(void*)0,(void*)0,&p_2301->g_551,(void*)0,(void*)0,&p_2301->g_551,(void*)0};
    int8_t l_619 = 1L;
    int16_t l_620 = 0x6A8FL;
    uint32_t l_621 = 4294967290UL;
    uint32_t *l_624 = &p_2301->g_122;
    int16_t l_639 = 1L;
    int16_t *l_642 = (void*)0;
    int16_t *l_643 = &l_620;
    int16_t *l_644 = &p_2301->g_178;
    uint64_t *l_645 = &p_2301->g_509[1].f0;
    int32_t l_646 = 0x187A0309L;
    int32_t ***l_660[3][3];
    uint16_t l_733 = 65529UL;
    int32_t l_831 = (-1L);
    struct S0 *l_915[7];
    int8_t l_918 = 0x7CL;
    int32_t l_960 = 0x14BEFEC7L;
    int64_t l_965[3][5] = {{0L,(-1L),0x6DEABE1D05FAB3D4L,(-1L),0L},{0L,(-1L),0x6DEABE1D05FAB3D4L,(-1L),0L},{0L,(-1L),0x6DEABE1D05FAB3D4L,(-1L),0L}};
    int32_t l_966 = (-5L);
    uint64_t *l_1028 = (void*)0;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
            l_660[i][j] = &p_2301->g_650;
    }
    for (i = 0; i < 7; i++)
        l_915[i] = &p_2301->g_916[8];
    --l_621;
    if ((((!((l_624 != (void*)0) && ((*p_2301->g_230) = (safe_rshift_func_int8_t_s_s((((*l_645) = (safe_mod_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((p_55 <= (p_52.f0 != (*l_612))), ((p_2301->g_3[0] , (safe_lshift_func_int8_t_s_u((safe_mod_func_int16_t_s_s(p_2301->g_164, (safe_div_func_uint64_t_u_u((safe_div_func_int16_t_s_s(((*l_644) = (!(((l_639 < (safe_mod_func_int16_t_s_s(((*l_643) = p_54), 0x0872L))) < (*l_614)) >= (*l_615)))), p_2301->g_92[5])), 2L)))), 1))) | (*p_2301->g_240)))), (*p_2301->g_531)))) , l_646), (*p_2301->g_67)))))) == 0x6B78L) ^ p_55))
    { /* block id: 262 */
        int32_t **l_649[8][3][10] = {{{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0}},{{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0}},{{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0}},{{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0}},{{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0}},{{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0}},{{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0}},{{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0},{&l_614,&l_614,&l_614,&l_618[3],&l_618[3],&l_614,&l_614,&l_614,&p_2301->g_240,(void*)0}}};
        int32_t ***l_648[10][3] = {{&l_649[7][0][2],(void*)0,&l_649[7][0][2]},{&l_649[7][0][2],(void*)0,&l_649[7][0][2]},{&l_649[7][0][2],(void*)0,&l_649[7][0][2]},{&l_649[7][0][2],(void*)0,&l_649[7][0][2]},{&l_649[7][0][2],(void*)0,&l_649[7][0][2]},{&l_649[7][0][2],(void*)0,&l_649[7][0][2]},{&l_649[7][0][2],(void*)0,&l_649[7][0][2]},{&l_649[7][0][2],(void*)0,&l_649[7][0][2]},{&l_649[7][0][2],(void*)0,&l_649[7][0][2]},{&l_649[7][0][2],(void*)0,&l_649[7][0][2]}};
        int8_t l_667[6][1][10] = {{{6L,6L,(-4L),0L,0L,0x34L,1L,(-6L),1L,0x34L}},{{6L,6L,(-4L),0L,0L,0x34L,1L,(-6L),1L,0x34L}},{{6L,6L,(-4L),0L,0L,0x34L,1L,(-6L),1L,0x34L}},{{6L,6L,(-4L),0L,0L,0x34L,1L,(-6L),1L,0x34L}},{{6L,6L,(-4L),0L,0L,0x34L,1L,(-6L),1L,0x34L}},{{6L,6L,(-4L),0L,0L,0x34L,1L,(-6L),1L,0x34L}}};
        uint16_t l_680 = 0xCBDBL;
        int i, j, k;
        (*l_616) = (p_2301->g_647 , ((p_2301->g_650 = &p_2301->g_240) != &l_618[4]));
        for (p_2301->g_178 = 17; (p_2301->g_178 < (-14)); --p_2301->g_178)
        { /* block id: 267 */
            uint64_t l_679 = 0UL;
            int64_t *l_683 = &p_2301->g_235[2][0];
            int64_t *l_684 = &p_2301->g_685;
            uint64_t *l_693 = &p_2301->g_94;
            uint8_t *l_696 = &p_2301->g_121;
            int8_t ***l_697 = &p_2301->g_147[1][3][2];
            uint16_t l_698 = 0x5932L;
            for (p_2301->g_122 = (-6); (p_2301->g_122 >= 25); p_2301->g_122 = safe_add_func_uint32_t_u_u(p_2301->g_122, 8))
            { /* block id: 270 */
                uint16_t l_655[5][9] = {{0UL,6UL,0x24BCL,0xD0E0L,0x24BCL,6UL,0UL,8UL,0x576CL},{0UL,6UL,0x24BCL,0xD0E0L,0x24BCL,6UL,0UL,8UL,0x576CL},{0UL,6UL,0x24BCL,0xD0E0L,0x24BCL,6UL,0UL,8UL,0x576CL},{0UL,6UL,0x24BCL,0xD0E0L,0x24BCL,6UL,0UL,8UL,0x576CL},{0UL,6UL,0x24BCL,0xD0E0L,0x24BCL,6UL,0UL,8UL,0x576CL}};
                int i, j;
                l_655[1][4]++;
                (*l_615) = ((+GROUP_DIVERGE(1, 1)) , (safe_sub_func_int16_t_s_s(((void*)0 == l_660[2][1]), (((((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(l_667[0][0][4], 13)), 0)), (safe_mod_func_uint32_t_u_u(p_55, (safe_lshift_func_int16_t_s_s((p_55 | (!((((!((safe_add_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_s((((void*)0 != &l_644) , (safe_rshift_func_int16_t_s_s((((p_54 > (((void*)0 != &p_2301->g_94) & GROUP_DIVERGE(2, 1))) ^ (**p_2301->g_604)) || p_2301->g_678), 4))), 2)) ^ l_655[1][4]), (-1L))) <= p_2301->g_497[1][6][1])) , p_2301->g_167[2][0]) < l_679) ^ l_680))), p_2301->g_92[1])))))) > p_54) & 1UL) , l_655[1][4]) && 0x130EL))));
            }
            (*l_612) ^= (l_679 , (safe_sub_func_uint64_t_u_u(((((*l_684) = ((*l_683) |= p_2301->g_497[3][3][0])) , ((*l_643) = 2L)) | ((-5L) > 0x8224L)), (((((((p_2301->g_686 , &p_2301->g_147[1][3][2]) == (((safe_mul_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u(((*l_696) = ((safe_add_func_uint16_t_u_u((((*l_693)--) == p_2301->g_106), (p_54 >= (**p_2301->g_229)))) >= 0x68BEL)), 0x0FL)) < p_52.f0), (*p_2301->g_67))) , (*l_615)) , l_697)) || 1L) , p_55) , 1UL) == 246UL) < l_698))));
            return p_52.f0;
        }
        for (l_680 = 0; (l_680 < 33); l_680 = safe_add_func_uint32_t_u_u(l_680, 7))
        { /* block id: 284 */
            int64_t l_744 = 0x52E99943B11AAFD9L;
            int8_t *l_797 = &p_2301->g_497[1][0][4];
            (*l_612) |= 0x6E1AD6C3L;
            for (l_619 = 3; (l_619 >= 11); l_619++)
            { /* block id: 288 */
                int8_t l_728[9] = {0x3CL,0x3CL,0x3CL,0x3CL,0x3CL,0x3CL,0x3CL,0x3CL,0x3CL};
                int i;
                (1 + 1);
            }
        }
    }
    else
    { /* block id: 340 */
        uint8_t l_833[6][10] = {{0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL},{0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL},{0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL},{0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL},{0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL},{0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL,0xBDL}};
        int32_t l_852 = 1L;
        int32_t l_854 = 0x597EFF96L;
        int32_t l_855 = 6L;
        int32_t l_860 = 0x646BEC74L;
        int32_t l_868 = (-3L);
        int16_t l_870 = 0L;
        int32_t l_872[4][8] = {{(-8L),0x2E995CDDL,(-1L),0x6EAF021AL,(-1L),0x2E995CDDL,(-8L),1L},{(-8L),0x2E995CDDL,(-1L),0x6EAF021AL,(-1L),0x2E995CDDL,(-8L),1L},{(-8L),0x2E995CDDL,(-1L),0x6EAF021AL,(-1L),0x2E995CDDL,(-8L),1L},{(-8L),0x2E995CDDL,(-1L),0x6EAF021AL,(-1L),0x2E995CDDL,(-8L),1L}};
        uint32_t l_879 = 0xF7A01A6CL;
        int16_t l_887[5][6] = {{0x0EB4L,0x7A0BL,0x7A0BL,0x0EB4L,0x0EB4L,0x7A0BL},{0x0EB4L,0x7A0BL,0x7A0BL,0x0EB4L,0x0EB4L,0x7A0BL},{0x0EB4L,0x7A0BL,0x7A0BL,0x0EB4L,0x0EB4L,0x7A0BL},{0x0EB4L,0x7A0BL,0x7A0BL,0x0EB4L,0x0EB4L,0x7A0BL},{0x0EB4L,0x7A0BL,0x7A0BL,0x0EB4L,0x0EB4L,0x7A0BL}};
        uint8_t l_891 = 9UL;
        int64_t l_1009 = 7L;
        int i, j;
        for (p_2301->g_685 = 0; (p_2301->g_685 <= 0); p_2301->g_685 += 1)
        { /* block id: 343 */
            int32_t l_830[1];
            int8_t ***l_835 = &p_2301->g_147[1][3][2];
            int8_t ****l_834 = &l_835;
            int32_t l_838 = 0L;
            uint32_t **l_843 = &l_624;
            int32_t l_861 = 0L;
            int32_t l_863 = 1L;
            int32_t l_869 = 1L;
            int32_t l_871 = 0x71189F10L;
            int32_t l_873 = 0x0A568756L;
            int32_t l_874[4] = {0x7A63675DL,0x7A63675DL,0x7A63675DL,0x7A63675DL};
            int64_t l_888 = 3L;
            int i;
            for (i = 0; i < 1; i++)
                l_830[i] = 0L;
            for (p_2301->g_122 = 0; (p_2301->g_122 <= 3); p_2301->g_122 += 1)
            { /* block id: 346 */
                uint16_t l_828 = 65527UL;
                int32_t l_829 = 0x3A5D757FL;
                union U2 **l_836 = (void*)0;
                int32_t l_857 = 0x6C906820L;
                int32_t l_858 = 0x23834C1EL;
                int32_t l_859 = 0L;
                int32_t l_862 = 0L;
                int32_t l_864 = 7L;
                int32_t l_865 = 0x45179728L;
                int32_t l_866 = (-1L);
                int32_t l_867[1][9][10] = {{{0x4F521A7CL,0x6D6255C9L,0x4CDF3E6CL,0x63C1CE66L,0x68E907BCL,0x63C1CE66L,0x4CDF3E6CL,0x6D6255C9L,0x4F521A7CL,0L},{0x4F521A7CL,0x6D6255C9L,0x4CDF3E6CL,0x63C1CE66L,0x68E907BCL,0x63C1CE66L,0x4CDF3E6CL,0x6D6255C9L,0x4F521A7CL,0L},{0x4F521A7CL,0x6D6255C9L,0x4CDF3E6CL,0x63C1CE66L,0x68E907BCL,0x63C1CE66L,0x4CDF3E6CL,0x6D6255C9L,0x4F521A7CL,0L},{0x4F521A7CL,0x6D6255C9L,0x4CDF3E6CL,0x63C1CE66L,0x68E907BCL,0x63C1CE66L,0x4CDF3E6CL,0x6D6255C9L,0x4F521A7CL,0L},{0x4F521A7CL,0x6D6255C9L,0x4CDF3E6CL,0x63C1CE66L,0x68E907BCL,0x63C1CE66L,0x4CDF3E6CL,0x6D6255C9L,0x4F521A7CL,0L},{0x4F521A7CL,0x6D6255C9L,0x4CDF3E6CL,0x63C1CE66L,0x68E907BCL,0x63C1CE66L,0x4CDF3E6CL,0x6D6255C9L,0x4F521A7CL,0L},{0x4F521A7CL,0x6D6255C9L,0x4CDF3E6CL,0x63C1CE66L,0x68E907BCL,0x63C1CE66L,0x4CDF3E6CL,0x6D6255C9L,0x4F521A7CL,0L},{0x4F521A7CL,0x6D6255C9L,0x4CDF3E6CL,0x63C1CE66L,0x68E907BCL,0x63C1CE66L,0x4CDF3E6CL,0x6D6255C9L,0x4F521A7CL,0L},{0x4F521A7CL,0x6D6255C9L,0x4CDF3E6CL,0x63C1CE66L,0x68E907BCL,0x63C1CE66L,0x4CDF3E6CL,0x6D6255C9L,0x4F521A7CL,0L}}};
                int32_t *l_917 = &p_2301->g_108.f1;
                int32_t ***l_943 = (void*)0;
                uint64_t l_967[9][9][3] = {{{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L}},{{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L}},{{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L}},{{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L}},{{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L}},{{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L}},{{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L}},{{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L}},{{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L},{18446744073709551611UL,0UL,0xE29650CDF33B3340L}}};
                int8_t ****l_986 = &l_835;
                int i, j, k;
                (1 + 1);
            }
            if (l_891)
                continue;
        }
    }
    (**p_2301->g_650) = (p_2301->g_1015 == ((safe_div_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((((p_2301->g_103 ^= ((((+((*p_2301->g_245) , (((((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(65528UL, 15)), 5)) , (safe_mul_func_int16_t_s_s(((((p_2301->g_94 = ((void*)0 == &p_2301->g_1016)) != p_54) < (safe_sub_func_uint8_t_u_u((safe_add_func_int32_t_s_s(((*l_612) = (~(((((p_2301->g_1037 = (safe_rshift_func_int16_t_s_u((*l_614), (p_2301->g_1035 , (safe_unary_minus_func_uint64_t_u(p_2301->g_276)))))) != p_55) | p_2301->g_106) , (**p_2301->g_229)) || (**p_2301->g_229)))), p_2301->g_988)), (*p_53)))) & p_2301->g_235[0][1]), (*l_615)))) , &l_965[1][3]) == (void*)0) ^ 0x5CL))) <= 0UL) <= 0x0FECBC11L) , p_54)) ^ (*p_53)) , p_2301->g_92[5]), (-6L))), 0x6E64A389L)) , &l_660[0][0]));
    return (**p_2301->g_604);
}


/* ------------------------------------------ */
/* 
 * reads : p_2301->g_133.f0 p_2301->g_240 p_2301->g_232 p_2301->g_167 p_2301->g_8 p_2301->g_106 p_2301->g_230 p_2301->g_164 p_2301->g_276 p_2301->g_244.f0 p_2301->g_50 p_2301->g_229 p_2301->g_504 p_2301->g_432 p_2301->g_505 p_2301->g_133 p_2301->g_509 p_2301->g_245 p_2301->g_235 p_2301->g_94 p_2301->g_531 p_2301->g_121 p_2301->g_92 p_2301->g_67 p_2301->g_168.f1 p_2301->g_497 p_2301->g_551 p_2301->g_467.f0 p_2301->g_103 p_2301->g_178 p_2301->g_432.f0 p_2301->g_2 p_2301->g_3 p_2301->g_604 p_2301->g_122
 * writes: p_2301->g_50 p_2301->g_8 p_2301->g_232 p_2301->g_167 p_2301->g_122 p_2301->g_164 p_2301->g_235 p_2301->g_497 p_2301->g_133.f0 p_2301->g_240 p_2301->g_106 p_2301->g_509 p_2301->g_244 p_2301->g_245 p_2301->g_121 p_2301->g_551 p_2301->g_178 p_2301->g_92
 */
union U2  func_57(int32_t  p_58, struct S3 * p_2301)
{ /* block id: 12 */
    uint16_t l_62 = 65530UL;
    int32_t **l_508 = &p_2301->g_240;
    int32_t l_512 = 0x4141DE4AL;
    int32_t l_513 = 0x2209488DL;
    struct S0 *l_518[1];
    struct S0 **l_519 = &p_2301->g_245;
    union U2 *l_520 = &p_2301->g_432;
    struct S0 *l_526 = &p_2301->g_509[1];
    struct S0 **l_525 = &l_526;
    struct S0 **l_527 = (void*)0;
    struct S0 **l_528 = (void*)0;
    struct S0 *l_530 = &p_2301->g_509[3];
    struct S0 **l_529 = &l_530;
    uint32_t *l_549 = &p_2301->g_122;
    int8_t ***l_554 = (void*)0;
    int8_t ****l_553 = &l_554;
    int64_t l_583 = 1L;
    int i;
    for (i = 0; i < 1; i++)
        l_518[i] = &p_2301->g_509[1];
lbl_532:
    (*l_508) = func_60(l_62, p_2301);
    (*p_2301->g_245) = p_2301->g_509[1];
    (*p_2301->g_531) &= ((((safe_mul_func_uint16_t_u_u(((**p_2301->g_229)++), ((((safe_rshift_func_int8_t_s_s((((*l_519) = l_518[0]) != ((l_520 != &p_2301->g_133[0]) , ((*l_529) = ((*l_525) = (((+((safe_rshift_func_int8_t_s_s(p_58, (p_58 && ((~((safe_sub_func_uint32_t_u_u(p_2301->g_235[2][0], 0UL)) , (**l_508))) <= p_2301->g_167[1][0])))) >= (**l_508))) < p_58) , (void*)0))))), 0)) , (void*)0) != (void*)0) <= p_58))) ^ 0x07L) & p_2301->g_94) ^ p_58);
    for (l_513 = 0; (l_513 <= 1); l_513 += 1)
    { /* block id: 220 */
        uint8_t *l_537 = &p_2301->g_121;
        int8_t *l_550 = &p_2301->g_497[1][0][4];
        int32_t l_562 = 0x40850659L;
        int32_t l_590 = (-1L);
        uint32_t **l_603 = (void*)0;
        if (l_62)
            goto lbl_532;
        (*l_508) = (*p_2301->g_504);
        p_2301->g_551 |= ((**l_508) && (safe_lshift_func_int8_t_s_u(((*l_550) &= (p_58 , (((safe_add_func_uint8_t_u_u(((*l_537)++), ((safe_sub_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(p_58, (safe_unary_minus_func_int8_t_s((p_2301->g_92[3] != (**l_508)))))), p_2301->g_235[2][1])) >= ((safe_sub_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((l_549 == l_549) , (((((5UL | p_58) >= 255UL) ^ p_58) , (**p_2301->g_504)) & (**l_508))))), (*p_2301->g_67))) | p_2301->g_92[5])))) , p_2301->g_168.f1) , p_58))), p_2301->g_167[2][0])));
        for (p_2301->g_551 = 0; (p_2301->g_551 <= 1); p_2301->g_551 += 1)
        { /* block id: 228 */
            int8_t ****l_555 = (void*)0;
            uint64_t l_556 = 0xC5B17CD8809E6804L;
            union U2 l_561 = {-6L};
            uint64_t *l_567 = &l_556;
            int16_t *l_568 = &p_2301->g_178;
            (*p_2301->g_240) = ((((safe_unary_minus_func_int16_t_s((l_553 == l_555))) && p_2301->g_467.f0) == (l_556 , (safe_div_func_uint8_t_u_u(((((safe_sub_func_uint8_t_u_u((l_561 , (p_2301->g_121 &= (**l_508))), ((*p_2301->g_230) | l_562))) || ((*l_568) ^= (safe_add_func_uint64_t_u_u(((*l_567) = (((((safe_add_func_int16_t_s_s((p_58 , l_556), p_2301->g_103)) & 0x455C41B0L) || p_58) & 0x6BL) > 0x549C328D1DE7BAE5L)), 0xA78FD1722989AA1FL)))) == l_561.f0) && p_58), l_562)))) & p_58);
        }
        for (p_2301->g_244.f0 = 0; (p_2301->g_244.f0 <= 0); p_2301->g_244.f0 += 1)
        { /* block id: 236 */
            int32_t l_575[4] = {0x281E6ABBL,0x281E6ABBL,0x281E6ABBL,0x281E6ABBL};
            int32_t *l_586 = &p_2301->g_133[0].f0;
            int32_t l_587 = 0x23836165L;
            int64_t l_588[10] = {0x21AE320B9598B20EL,0x21AE320B9598B20EL,0x21AE320B9598B20EL,0x21AE320B9598B20EL,0x21AE320B9598B20EL,0x21AE320B9598B20EL,0x21AE320B9598B20EL,0x21AE320B9598B20EL,0x21AE320B9598B20EL,0x21AE320B9598B20EL};
            int32_t *l_589[5];
            int i, j;
            for (i = 0; i < 5; i++)
                l_589[i] = &l_512;
            l_590 |= ((((((l_562 = (((safe_sub_func_uint32_t_u_u(0xDE91AD85L, ((**l_508) = p_2301->g_167[(l_513 + 1)][p_2301->g_244.f0]))) < (safe_mod_func_int64_t_s_s((l_562 != ((safe_sub_func_uint32_t_u_u(p_58, l_575[0])) && ((safe_mod_func_int64_t_s_s(p_2301->g_103, (safe_add_func_uint8_t_u_u(((*l_537) = GROUP_DIVERGE(0, 1)), (safe_unary_minus_func_int16_t_s((safe_add_func_uint8_t_u_u((((l_587 |= (((*l_549) = GROUP_DIVERGE(2, 1)) & ((l_575[0] = ((l_583 & ((safe_add_func_int16_t_s_s((((*l_586) |= 0L) ^ (p_2301->g_244.f0 < p_2301->g_432.f0)), p_2301->g_92[5])) != p_58)) || 0x3B03L)) && l_562))) ^ l_588[9]) , p_2301->g_2[1]), p_58)))))))) == l_588[8]))), 0xD1406AA8FEB24F72L))) ^ l_562)) && (-1L)) || p_58) , FAKE_DIVERGE(p_2301->global_1_offset, get_global_id(1), 10)) | l_588[4]) , (**l_508));
            for (l_587 = 1; (l_587 >= 0); l_587 -= 1)
            { /* block id: 247 */
                int8_t *l_608 = &p_2301->g_92[5];
                (*l_586) &= (((~(p_58 || p_58)) >= (((!p_2301->g_3[9]) | (safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(((*p_2301->g_67) ^= p_58), ((safe_add_func_uint32_t_u_u((0xBF7DD728L && ((safe_lshift_func_int8_t_s_u(((*l_608) = ((*l_550) = (safe_lshift_func_int16_t_s_s((safe_div_func_int32_t_s_s((p_58 && (l_603 == p_2301->g_604)), GROUP_DIVERGE(0, 1))), (safe_add_func_int8_t_s_s(p_58, p_58)))))), FAKE_DIVERGE(p_2301->global_1_offset, get_global_id(1), 10))) , p_58)), FAKE_DIVERGE(p_2301->local_0_offset, get_local_id(0), 10))) <= p_2301->g_122))), p_2301->g_232))) > l_590)) < l_562);
            }
        }
    }
    return (*l_520);
}


/* ------------------------------------------ */
/* 
 * reads : p_2301->g_50 p_2301->g_8 p_2301->g_133.f0 p_2301->g_240 p_2301->g_167 p_2301->g_106 p_2301->g_230 p_2301->g_164 p_2301->g_276 p_2301->g_244.f0 p_2301->g_229 p_2301->g_504 p_2301->g_232 p_2301->g_432 p_2301->g_505 p_2301->g_133 p_2301->g_1108
 * writes: p_2301->g_50 p_2301->g_8 p_2301->g_167 p_2301->g_122 p_2301->g_164 p_2301->g_235 p_2301->g_497 p_2301->g_133.f0 p_2301->g_240 p_2301->g_106 p_2301->g_232 p_2301->g_1108
 */
int32_t * func_60(uint16_t  p_61, struct S3 * p_2301)
{ /* block id: 13 */
    int8_t *l_63 = &p_2301->g_50;
    int8_t *l_64 = &p_2301->g_50;
    int32_t l_165 = 0x1637CC31L;
    union U2 *l_196 = (void*)0;
    int32_t *l_242[1][2][10] = {{{&p_2301->g_133[0].f0,&p_2301->g_167[0][0],&p_2301->g_106,&p_2301->g_167[0][0],&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_167[0][0],&p_2301->g_106,&p_2301->g_167[0][0],&p_2301->g_133[0].f0},{&p_2301->g_133[0].f0,&p_2301->g_167[0][0],&p_2301->g_106,&p_2301->g_167[0][0],&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_167[0][0],&p_2301->g_106,&p_2301->g_167[0][0],&p_2301->g_133[0].f0}}};
    int8_t l_263 = 0x7AL;
    uint8_t l_287 = 0UL;
    union U1 *l_301[7] = {&p_2301->g_108,&p_2301->g_108,&p_2301->g_108,&p_2301->g_108,&p_2301->g_108,&p_2301->g_108,&p_2301->g_108};
    int32_t *l_368 = &p_2301->g_133[0].f0;
    int32_t *l_374 = &p_2301->g_106;
    int32_t *l_383[4][10] = {{&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_106,&p_2301->g_232,&p_2301->g_232,&p_2301->g_106,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0},{&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_106,&p_2301->g_232,&p_2301->g_232,&p_2301->g_106,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0},{&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_106,&p_2301->g_232,&p_2301->g_232,&p_2301->g_106,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0},{&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0,&p_2301->g_106,&p_2301->g_232,&p_2301->g_232,&p_2301->g_106,&p_2301->g_133[0].f0,&p_2301->g_133[0].f0}};
    int8_t l_417[3];
    uint8_t l_423 = 255UL;
    uint64_t l_434 = 18446744073709551612UL;
    int32_t l_442 = 3L;
    struct S0 *l_482 = &p_2301->g_244;
    int8_t ***l_488 = &p_2301->g_147[1][3][2];
    int8_t ***l_490 = &p_2301->g_147[1][3][2];
    int16_t *l_493 = &p_2301->g_178;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_417[i] = 0x1DL;
    if ((l_63 == l_64))
    { /* block id: 14 */
        int32_t *l_84 = &p_2301->g_8;
        int8_t *l_88 = &p_2301->g_50;
        int32_t *l_176[9][10][2] = {{{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]}},{{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]}},{{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]}},{{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]}},{{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]}},{{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]}},{{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]}},{{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]}},{{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]},{&l_165,&p_2301->g_167[1][0]}}};
        int32_t l_189[9][2][2] = {{{0x391BAE6FL,0x1DB370B6L},{0x391BAE6FL,0x1DB370B6L}},{{0x391BAE6FL,0x1DB370B6L},{0x391BAE6FL,0x1DB370B6L}},{{0x391BAE6FL,0x1DB370B6L},{0x391BAE6FL,0x1DB370B6L}},{{0x391BAE6FL,0x1DB370B6L},{0x391BAE6FL,0x1DB370B6L}},{{0x391BAE6FL,0x1DB370B6L},{0x391BAE6FL,0x1DB370B6L}},{{0x391BAE6FL,0x1DB370B6L},{0x391BAE6FL,0x1DB370B6L}},{{0x391BAE6FL,0x1DB370B6L},{0x391BAE6FL,0x1DB370B6L}},{{0x391BAE6FL,0x1DB370B6L},{0x391BAE6FL,0x1DB370B6L}},{{0x391BAE6FL,0x1DB370B6L},{0x391BAE6FL,0x1DB370B6L}}};
        int64_t *l_236 = (void*)0;
        int8_t l_264 = 0x5AL;
        union U2 *l_292 = &p_2301->g_133[0];
        uint16_t l_318[1];
        int8_t l_361 = (-1L);
        int32_t l_369[5];
        int32_t **l_409 = &l_84;
        int32_t l_414 = (-1L);
        uint8_t l_418[4][10][2] = {{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}}};
        uint32_t *l_470 = (void*)0;
        uint32_t *l_471 = &p_2301->g_122;
        struct S0 **l_483[7][4] = {{&l_482,&p_2301->g_245,&p_2301->g_245,&l_482},{&l_482,&p_2301->g_245,&p_2301->g_245,&l_482},{&l_482,&p_2301->g_245,&p_2301->g_245,&l_482},{&l_482,&p_2301->g_245,&p_2301->g_245,&l_482},{&l_482,&p_2301->g_245,&p_2301->g_245,&l_482},{&l_482,&p_2301->g_245,&p_2301->g_245,&l_482},{&l_482,&p_2301->g_245,&p_2301->g_245,&l_482}};
        uint16_t *l_484 = &l_318[0];
        uint32_t l_485 = 8UL;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_318[i] = 0x383AL;
        for (i = 0; i < 5; i++)
            l_369[i] = 0x71E90B85L;
        for (p_2301->g_50 = 0; (p_2301->g_50 == (-5)); p_2301->g_50 = safe_sub_func_int64_t_s_s(p_2301->g_50, 9))
        { /* block id: 17 */
            int32_t *l_83 = &p_2301->g_3[5];
            union U2 l_87 = {0x4E318651L};
            int8_t *l_91 = &p_2301->g_92[5];
            int64_t *l_234 = &p_2301->g_235[2][0];
            int32_t l_249 = (-3L);
            int32_t l_250 = 0x028F0995L;
            int64_t l_251 = 0x2FF4077BFC1412A8L;
            int32_t l_252 = 0L;
            int32_t l_253 = (-10L);
            int32_t l_254 = 0x69882152L;
            int32_t l_257 = 0x763F05DAL;
            int32_t l_261 = 0x5DFBAC56L;
            int32_t l_262 = 0x535A7AD6L;
            int16_t l_270 = 0x3674L;
            uint32_t l_271[5][4][3] = {{{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L}},{{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L}},{{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L}},{{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L}},{{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L},{0UL,0xACD07C4BL,0x25212615L}}};
            int8_t ***l_317 = &p_2301->g_147[1][3][2];
            uint64_t l_367 = 0xF9A14C600E59AFEAL;
            int32_t *l_381[5][5] = {{&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8},{&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8},{&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8},{&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8},{&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8}};
            int32_t **l_408 = &l_84;
            int i, j, k;
            (1 + 1);
        }
        (*l_409) = &l_165;
        for (p_2301->g_8 = 0; (p_2301->g_8 <= 0); p_2301->g_8 += 1)
        { /* block id: 154 */
            int8_t l_413 = 0x16L;
            int32_t l_415 = 0x5E31C2C1L;
            int32_t l_416 = 0x5BBA88CDL;
            int32_t **l_421 = &l_374;
            union U2 l_433 = {0x6498C40FL};
            --l_418[2][6][1];
            for (l_416 = 0; (l_416 <= 0); l_416 += 1)
            { /* block id: 158 */
                int16_t l_422 = 0x3670L;
                uint32_t *l_454 = &p_2301->g_122;
                int32_t **l_465 = (void*)0;
                l_421 = &l_242[0][0][9];
                (*l_409) = (*l_421);
                --l_423;
                for (l_361 = 0; (l_361 <= 0); l_361 += 1)
                { /* block id: 164 */
                    union U2 l_430[10] = {{-1L},{-7L},{5L},{-7L},{-1L},{-1L},{-7L},{5L},{-7L},{-1L}};
                    union U2 *l_431 = (void*)0;
                    int8_t *l_441 = &l_417[0];
                    int i, j, k;
                    (1 + 1);
                }
                for (l_263 = 0; (l_263 <= 0); l_263 += 1)
                { /* block id: 181 */
                    int i, j, k;
                    (*p_2301->g_240) ^= (*l_368);
                    l_242[p_2301->g_8][p_2301->g_8][p_2301->g_8] = &l_442;
                }
            }
        }
        l_485 |= (safe_add_func_uint16_t_u_u((((*l_88) |= ((+(p_61 <= ((void*)0 != l_176[7][6][0]))) || (!((+((((*l_471) = p_61) >= (*l_368)) > (safe_sub_func_uint8_t_u_u((((*l_484) &= ((((safe_lshift_func_uint16_t_u_u((0x74L | (safe_mod_func_int8_t_s_s(((~((!0x4E31L) ^ (4294967289UL ^ ((safe_rshift_func_int8_t_s_u(((l_482 = l_482) == (void*)0), GROUP_DIVERGE(0, 1))) && p_61)))) == 0L), (**l_409)))), (*p_2301->g_230))) , p_2301->g_276) != (*l_84)) ^ 0L)) & GROUP_DIVERGE(1, 1)), p_2301->g_244.f0)))) > 0x0F2AL)))) > 0x72L), (*p_2301->g_230)));
    }
    else
    { /* block id: 192 */
        int8_t ****l_489 = &l_488;
        int16_t **l_494[10][4][4] = {{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}},{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}},{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}},{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}},{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}},{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}},{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}},{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}},{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}},{{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0},{&l_493,&l_493,&l_493,(void*)0}}};
        int32_t l_495 = 0L;
        int64_t *l_496[6][2];
        uint8_t l_498 = 255UL;
        int i, j, k;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 2; j++)
                l_496[i][j] = &p_2301->g_235[2][0];
        }
        (*l_368) = (((**p_2301->g_229) = GROUP_DIVERGE(2, 1)) | ((*l_368) > (safe_mul_func_uint16_t_u_u((((*l_489) = l_488) != l_490), (((((void*)0 != &l_165) < (p_2301->g_497[1][0][4] = (p_2301->g_235[2][0] = ((((((*p_2301->g_240) = (safe_div_func_uint32_t_u_u((((void*)0 == &l_417[0]) > ((((l_493 = l_493) != &p_2301->g_178) & l_495) && 0x4980EADD73BA029BL)), (-1L)))) & l_495) | l_495) != 0x2161C7E9L) > p_61)))) < p_61) & p_61)))));
        l_498--;
        for (l_165 = 0; (l_165 >= 8); l_165 = safe_add_func_int16_t_s_s(l_165, 3))
        { /* block id: 203 */
            int32_t *l_503 = &p_2301->g_232;
            (*p_2301->g_504) = l_503;
            (*l_374) = (*p_2301->g_240);
        }
    }
    (*p_2301->g_240) = (((p_2301->g_432 , p_2301->g_505) , (safe_lshift_func_uint16_t_u_s(((**p_2301->g_229) = (p_2301->g_133[0] , (*p_2301->g_230))), 12))) && 0x2461L);
    return (*p_2301->g_504);
}


/* ------------------------------------------ */
/* 
 * reads : p_2301->g_131 p_2301->g_122 p_2301->g_133 p_2301->g_133.f0 p_2301->g_3 p_2301->g_8 p_2301->g_121
 * writes: p_2301->g_122 p_2301->g_147 p_2301->g_8
 */
int64_t  func_76(uint16_t  p_77, int32_t  p_78, uint8_t  p_79, int32_t * p_80, struct S3 * p_2301)
{ /* block id: 40 */
    union U2 *l_132 = &p_2301->g_133[0];
    uint32_t *l_140[3][8] = {{&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122},{&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122},{&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122,&p_2301->g_122}};
    int16_t l_141 = 0x1581L;
    int8_t **l_144[5][3][7] = {{{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67}},{{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67}},{{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67}},{{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67}},{{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67,&p_2301->g_67}}};
    int8_t **l_146 = &p_2301->g_67;
    int8_t ***l_145[10][1][4] = {{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}},{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}},{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}},{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}},{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}},{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}},{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}},{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}},{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}},{{&l_144[1][1][5],&l_144[3][0][4],&l_144[1][1][5],&l_144[1][1][5]}}};
    uint32_t l_154 = 0x00375982L;
    int16_t l_155 = 0x7DDAL;
    int32_t l_160 = 1L;
    int16_t *l_161 = (void*)0;
    int16_t *l_162 = &l_141;
    int i, j, k;
    l_132 = p_2301->g_131;
    (*p_80) = (safe_div_func_int32_t_s_s((safe_lshift_func_int8_t_s_s((safe_mod_func_int16_t_s_s((((--p_2301->g_122) >= (l_144[0][0][5] == (p_2301->g_147[1][3][2] = (p_2301->g_133[0] , l_144[0][0][5])))) | ((safe_mod_func_int16_t_s_s(((*l_162) = (l_141 & (safe_lshift_func_uint16_t_u_s((safe_add_func_int8_t_s_s((l_154 , ((l_154 < ((l_155 = p_78) & (((safe_sub_func_int32_t_s_s(1L, ((safe_lshift_func_uint8_t_u_s(((((l_160 = (FAKE_DIVERGE(p_2301->global_0_offset, get_global_id(0), 10) | 0UL)) > p_2301->g_133[0].f0) != (-1L)) <= l_154), 6)) && p_78))) == p_77) | 0x669FE5E3L))) & p_77)), l_141)), p_2301->g_3[1])))), p_78)) ^ 0x519FED9BL)), l_154)), 6)), (*p_80)));
    return p_2301->g_121;
}


/* ------------------------------------------ */
/* 
 * reads : p_2301->g_67 p_2301->g_50 p_2301->g_103 p_2301->g_92 p_2301->g_108 p_2301->g_8 p_2301->g_3 p_2301->g_122 p_2301->g_121 p_2301->g_108.f0 p_2301->g_128 p_2301->g_2
 * writes: p_2301->g_103 p_2301->g_106 p_2301->g_121 p_2301->g_122 p_2301->g_92 p_2301->g_128
 */
uint16_t  func_81(int32_t  p_82, struct S3 * p_2301)
{ /* block id: 25 */
    int32_t *l_95 = &p_2301->g_8;
    int32_t *l_96[1][4] = {{&p_2301->g_8,&p_2301->g_8,&p_2301->g_8,&p_2301->g_8}};
    uint64_t l_97 = 0x3BCEF1D68DACC9C7L;
    uint8_t *l_102 = &p_2301->g_103;
    uint8_t l_107 = 249UL;
    union U2 l_119 = {0L};
    uint8_t *l_120 = &p_2301->g_121;
    union U1 *l_125 = (void*)0;
    int32_t l_127 = 0L;
    int i, j;
    l_97--;
    p_2301->g_122 &= ((safe_rshift_func_uint8_t_u_u((p_2301->g_106 = ((*p_2301->g_67) , ((*l_102)--))), ((l_107 & ((*l_120) = (4294967287UL == (p_2301->g_92[5] , (4294967294UL >= ((p_2301->g_108 , (safe_lshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s((safe_div_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(((safe_add_func_uint8_t_u_u((p_2301->g_108 , (&p_82 != (l_119 , &p_82))), 0x31L)) > p_2301->g_92[4]), p_82)), (*l_95))), (*p_2301->g_67))), p_2301->g_3[1]))) != GROUP_DIVERGE(2, 1))))))) > 1UL))) <= p_82);
    for (p_2301->g_121 = (-9); (p_2301->g_121 <= 58); p_2301->g_121++)
    { /* block id: 33 */
        union U1 *l_126 = &p_2301->g_108;
        l_126 = l_125;
        for (l_97 = 0; l_97 < 7; l_97 += 1)
        {
            p_2301->g_92[l_97] = 3L;
        }
        return p_2301->g_108.f0;
    }
    p_2301->g_128++;
    return p_2301->g_2[1];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_2302;
    struct S3* p_2301 = &c_2302;
    struct S3 c_2303 = {
        {0x4AD72D76L,0x4AD72D76L}, // p_2301->g_2
        {0x1AD67A4BL,0x1AD67A4BL,0x1AD67A4BL,0x1AD67A4BL,0x1AD67A4BL,0x1AD67A4BL,0x1AD67A4BL,0x1AD67A4BL,0x1AD67A4BL,0x1AD67A4BL}, // p_2301->g_3
        (-1L), // p_2301->g_8
        0x3BL, // p_2301->g_50
        &p_2301->g_50, // p_2301->g_67
        {1L,0x43L,1L,1L,0x43L,1L,1L}, // p_2301->g_92
        5UL, // p_2301->g_94
        0x24L, // p_2301->g_103
        (-1L), // p_2301->g_106
        {0x69F2998C3209DC75L}, // p_2301->g_108
        0x10L, // p_2301->g_121
        0x4EFD3873L, // p_2301->g_122
        0UL, // p_2301->g_128
        (void*)0, // p_2301->g_131
        {{0x70432E41L},{0x70432E41L}}, // p_2301->g_133
        {{{&p_2301->g_67,(void*)0,&p_2301->g_67,(void*)0,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,(void*)0,&p_2301->g_67,(void*)0,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,(void*)0,&p_2301->g_67,(void*)0,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,(void*)0,&p_2301->g_67,(void*)0,&p_2301->g_67,&p_2301->g_67}},{{&p_2301->g_67,(void*)0,&p_2301->g_67,(void*)0,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,(void*)0,&p_2301->g_67,(void*)0,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,(void*)0,&p_2301->g_67,(void*)0,&p_2301->g_67,&p_2301->g_67},{&p_2301->g_67,(void*)0,&p_2301->g_67,(void*)0,&p_2301->g_67,&p_2301->g_67}}}, // p_2301->g_147
        0x1E18L, // p_2301->g_164
        {{0x25A505E2L},{0x25A505E2L},{0x25A505E2L}}, // p_2301->g_167
        {0UL,0UL}, // p_2301->g_168
        0x0690L, // p_2301->g_178
        &p_2301->g_164, // p_2301->g_230
        &p_2301->g_230, // p_2301->g_229
        0x31BE3F04L, // p_2301->g_232
        {{0x25EDDA4E3B13C80AL,0x25EDDA4E3B13C80AL},{0x25EDDA4E3B13C80AL,0x25EDDA4E3B13C80AL},{0x25EDDA4E3B13C80AL,0x25EDDA4E3B13C80AL}}, // p_2301->g_235
        &p_2301->g_167[1][0], // p_2301->g_240
        {{{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240},{&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240,&p_2301->g_240}}}, // p_2301->g_239
        {1UL,1UL}, // p_2301->g_244
        &p_2301->g_244, // p_2301->g_245
        0x09CEBB79L, // p_2301->g_276
        {0x01E2DED0C490E491L}, // p_2301->g_354
        {{18446744073709551611UL},{18446744073709551611UL},{18446744073709551611UL},{18446744073709551611UL},{18446744073709551611UL},{18446744073709551611UL},{18446744073709551611UL}}, // p_2301->g_365
        {&p_2301->g_365[3],&p_2301->g_365[3],&p_2301->g_365[3]}, // p_2301->g_364
        {9L}, // p_2301->g_432
        {1UL,0UL}, // p_2301->g_467
        {{{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL}},{{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL}},{{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL}},{{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL}}}, // p_2301->g_497
        &p_2301->g_240, // p_2301->g_504
        {8UL}, // p_2301->g_505
        {{0x9401E72A5569B796L,18446744073709551611UL},{0x9401E72A5569B796L,18446744073709551611UL},{0x9401E72A5569B796L,18446744073709551611UL},{0x9401E72A5569B796L,18446744073709551611UL}}, // p_2301->g_509
        &p_2301->g_133[0].f0, // p_2301->g_531
        (-7L), // p_2301->g_551
        &p_2301->g_122, // p_2301->g_605
        &p_2301->g_605, // p_2301->g_604
        0x06L, // p_2301->g_610
        {0xE764E755BCF6280FL,0UL}, // p_2301->g_647
        &p_2301->g_240, // p_2301->g_650
        0x38D208E6L, // p_2301->g_678
        0x1216003E230C743EL, // p_2301->g_685
        {0xD5BA2CBA8FE159B9L}, // p_2301->g_686
        {{0x8AE40094B7C721AFL,1UL},{0x8AE40094B7C721AFL,1UL},{0x8AE40094B7C721AFL,1UL}}, // p_2301->g_755
        0x30L, // p_2301->g_785
        {{{18446744073709551615UL},{0xF1FE6250579B4D1CL},{18446744073709551615UL},{18446744073709551615UL},{0xF1FE6250579B4D1CL},{18446744073709551615UL},{18446744073709551615UL},{0xF1FE6250579B4D1CL}}}, // p_2301->g_792
        0x0CF4BC9CL, // p_2301->g_832
        0x574FD6F6L, // p_2301->g_851
        0x5214L, // p_2301->g_877
        0x309DL, // p_2301->g_878
        {&p_2301->g_2[0]}, // p_2301->g_883
        &p_2301->g_883[0], // p_2301->g_882
        {{18446744073709551615UL,6UL},{18446744073709551615UL,6UL},{18446744073709551615UL,6UL},{18446744073709551615UL,6UL},{18446744073709551615UL,6UL},{18446744073709551615UL,6UL},{18446744073709551615UL,6UL},{18446744073709551615UL,6UL},{18446744073709551615UL,6UL},{18446744073709551615UL,6UL}}, // p_2301->g_916
        0xFB7068D448208BE0L, // p_2301->g_919
        0x0CD93DB9L, // p_2301->g_988
        &p_2301->g_240, // p_2301->g_1017
        &p_2301->g_1017, // p_2301->g_1016
        &p_2301->g_1016, // p_2301->g_1015
        {0xC7E254648365AAADL}, // p_2301->g_1035
        6UL, // p_2301->g_1037
        (void*)0, // p_2301->g_1041
        {&p_2301->g_883[0],&p_2301->g_883[0],&p_2301->g_883[0],&p_2301->g_883[0],&p_2301->g_883[0],&p_2301->g_883[0],&p_2301->g_883[0],&p_2301->g_883[0]}, // p_2301->g_1042
        &p_2301->g_883[0], // p_2301->g_1044
        (void*)0, // p_2301->g_1047
        &p_2301->g_1047, // p_2301->g_1048
        {0x5FC001162120E0F7L}, // p_2301->g_1051
        &p_2301->g_133[0], // p_2301->g_1081
        4L, // p_2301->g_1108
        {0x7F3EC2D944D28A3AL}, // p_2301->g_1173
        65535UL, // p_2301->g_1176
        {0xFE01870A7DFE379EL}, // p_2301->g_1180
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_2301->g_1181
        {1UL}, // p_2301->g_1229
        0x70228055L, // p_2301->g_1237
        &p_2301->g_1237, // p_2301->g_1236
        &p_2301->g_1236, // p_2301->g_1235
        &p_2301->g_1235, // p_2301->g_1234
        4294967293UL, // p_2301->g_1286
        (void*)0, // p_2301->g_1299
        {7UL,0x60A220F73DDD006CL}, // p_2301->g_1336
        (void*)0, // p_2301->g_1358
        &p_2301->g_1358, // p_2301->g_1357
        &p_2301->g_1357, // p_2301->g_1359
        &p_2301->g_147[1][3][2], // p_2301->g_1360
        {0x83E5ADC332E6F853L,0UL}, // p_2301->g_1366
        {{0x27385A78ED079A89L},{0x27385A78ED079A89L},{0x27385A78ED079A89L},{0x27385A78ED079A89L},{0x27385A78ED079A89L},{0x27385A78ED079A89L}}, // p_2301->g_1376
        {{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL}}, // p_2301->g_1411
        {{{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}},{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}}},{{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}},{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}}},{{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}},{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}}},{{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}},{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}}},{{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}},{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}}},{{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}},{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}}},{{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}},{{0x2B4EC876E78E5957L,0x08A41D5982345AAEL},{18446744073709551615UL,0UL},{0xBF70E2F03DA99CCFL,6UL}}}}, // p_2301->g_1448
        {(void*)0,(void*)0}, // p_2301->g_1449
        (void*)0, // p_2301->g_1465
        &p_2301->g_1465, // p_2301->g_1464
        &p_2301->g_106, // p_2301->g_1503
        {0UL,18446744073709551615UL}, // p_2301->g_1602
        &p_2301->g_354.f3, // p_2301->g_1604
        {{{0x81270D04302E208CL,18446744073709551615UL},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0x81270D04302E208CL,18446744073709551615UL},{0x98A3B1BF960BE1C5L,8UL},{1UL,0UL}},{{0x81270D04302E208CL,18446744073709551615UL},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0x81270D04302E208CL,18446744073709551615UL},{0x98A3B1BF960BE1C5L,8UL},{1UL,0UL}},{{0x81270D04302E208CL,18446744073709551615UL},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0x81270D04302E208CL,18446744073709551615UL},{0x98A3B1BF960BE1C5L,8UL},{1UL,0UL}},{{0x81270D04302E208CL,18446744073709551615UL},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0x81270D04302E208CL,18446744073709551615UL},{0x98A3B1BF960BE1C5L,8UL},{1UL,0UL}},{{0x81270D04302E208CL,18446744073709551615UL},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0x81270D04302E208CL,18446744073709551615UL},{0x98A3B1BF960BE1C5L,8UL},{1UL,0UL}},{{0x81270D04302E208CL,18446744073709551615UL},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0x81270D04302E208CL,18446744073709551615UL},{0x98A3B1BF960BE1C5L,8UL},{1UL,0UL}},{{0x81270D04302E208CL,18446744073709551615UL},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0x81270D04302E208CL,18446744073709551615UL},{0x98A3B1BF960BE1C5L,8UL},{1UL,0UL}},{{0x81270D04302E208CL,18446744073709551615UL},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0x81270D04302E208CL,18446744073709551615UL},{0x98A3B1BF960BE1C5L,8UL},{1UL,0UL}},{{0x81270D04302E208CL,18446744073709551615UL},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0xD0CEA5B8EF879E83L,0xA8859966B8272CD5L},{0x81270D04302E208CL,18446744073709551615UL},{0x98A3B1BF960BE1C5L,8UL},{1UL,0UL}}}, // p_2301->g_1613
        &p_2301->g_147[1][3][2], // p_2301->g_1657
        {{0x8BF51449BABE4A9FL,1UL}}, // p_2301->g_1726
        {{8UL,18446744073709551609UL},{0UL,0UL},{8UL,18446744073709551609UL},{8UL,18446744073709551609UL},{0UL,0UL},{8UL,18446744073709551609UL},{8UL,18446744073709551609UL}}, // p_2301->g_1727
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2301->g_1734
        &p_2301->g_1734[2], // p_2301->g_1733
        {&p_2301->g_1733,&p_2301->g_1733,&p_2301->g_1733,&p_2301->g_1733,&p_2301->g_1733,&p_2301->g_1733,&p_2301->g_1733,&p_2301->g_1733,&p_2301->g_1733,&p_2301->g_1733}, // p_2301->g_1732
        {{0x85BB29A1B0F83D54L,18446744073709551609UL},{18446744073709551609UL,0UL},{0x85BB29A1B0F83D54L,18446744073709551609UL},{0x85BB29A1B0F83D54L,18446744073709551609UL},{18446744073709551609UL,0UL},{0x85BB29A1B0F83D54L,18446744073709551609UL},{0x85BB29A1B0F83D54L,18446744073709551609UL}}, // p_2301->g_1741
        {18446744073709551614UL,0xA2B653F56D1B7A17L}, // p_2301->g_1748
        {{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}}, // p_2301->g_1808
        0x1AL, // p_2301->g_1859
        &p_2301->g_1859, // p_2301->g_1858
        {{18446744073709551615UL,0x7FC4C1116C565AADL},{18446744073709551615UL,0x7FC4C1116C565AADL},{18446744073709551615UL,0x7FC4C1116C565AADL},{18446744073709551615UL,0x7FC4C1116C565AADL},{18446744073709551615UL,0x7FC4C1116C565AADL}}, // p_2301->g_1866
        0UL, // p_2301->g_1875
        &p_2301->g_883[0], // p_2301->g_1939
        {&p_2301->g_1875,&p_2301->g_1875,&p_2301->g_1875}, // p_2301->g_1979
        &p_2301->g_1979[1], // p_2301->g_1978
        {0x9BF8956B91CECA72L}, // p_2301->g_2030
        &p_2301->g_164, // p_2301->g_2036
        {0xE376434EBA772299L,0x94A94C51FBAE2CF6L}, // p_2301->g_2037
        {1UL}, // p_2301->g_2038
        {{0xBFC029D75CD16D09L},{0xBFC029D75CD16D09L},{0xBFC029D75CD16D09L},{0xBFC029D75CD16D09L},{0xBFC029D75CD16D09L},{0xBFC029D75CD16D09L},{0xBFC029D75CD16D09L},{0xBFC029D75CD16D09L},{0xBFC029D75CD16D09L}}, // p_2301->g_2048
        {{{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785}},{{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785}},{{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785}},{{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785}},{{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785}},{{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785}},{{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785},{&p_2301->g_610,&p_2301->g_497[1][0][4],&p_2301->g_92[5],&p_2301->g_92[5],&p_2301->g_785}}}, // p_2301->g_2057
        &p_2301->g_131, // p_2301->g_2072
        {0x41BE1C757A3A44ADL,1UL}, // p_2301->g_2085
        &p_2301->g_1376[4].f3, // p_2301->g_2087
        &p_2301->g_650, // p_2301->g_2096
        {&p_2301->g_2096,&p_2301->g_2096,&p_2301->g_2096,&p_2301->g_2096,&p_2301->g_2096,&p_2301->g_2096,&p_2301->g_2096,&p_2301->g_2096,&p_2301->g_2096}, // p_2301->g_2095
        {18446744073709551612UL,0xA8B7A7EACA2C57DBL}, // p_2301->g_2107
        &p_2301->g_2030.f4, // p_2301->g_2108
        {18446744073709551606UL,0x8E85B03924DB1A58L}, // p_2301->g_2146
        &p_2301->g_2[0], // p_2301->g_2210
        0x68CD0D28004AF819L, // p_2301->g_2232
        {7UL,1UL}, // p_2301->g_2236
        (void*)0, // p_2301->g_2247
        &p_2301->g_131, // p_2301->g_2248
        {0x48808FE9EF38C6D9L,0xAB95725B63E7B8B7L}, // p_2301->g_2287
        {0xCB3D46806B072923L,0x2ABBA070C984382AL}, // p_2301->g_2299
        0x9D8FBF09L, // p_2301->g_2300
        sequence_input[get_global_id(0)], // p_2301->global_0_offset
        sequence_input[get_global_id(1)], // p_2301->global_1_offset
        sequence_input[get_global_id(2)], // p_2301->global_2_offset
        sequence_input[get_local_id(0)], // p_2301->local_0_offset
        sequence_input[get_local_id(1)], // p_2301->local_1_offset
        sequence_input[get_local_id(2)], // p_2301->local_2_offset
        sequence_input[get_group_id(0)], // p_2301->group_0_offset
        sequence_input[get_group_id(1)], // p_2301->group_1_offset
        sequence_input[get_group_id(2)], // p_2301->group_2_offset
    };
    c_2302 = c_2303;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2301);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2301->g_2[i], "p_2301->g_2[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2301->g_3[i], "p_2301->g_3[i]", print_hash_value);

    }
    transparent_crc(p_2301->g_8, "p_2301->g_8", print_hash_value);
    transparent_crc(p_2301->g_50, "p_2301->g_50", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2301->g_92[i], "p_2301->g_92[i]", print_hash_value);

    }
    transparent_crc(p_2301->g_94, "p_2301->g_94", print_hash_value);
    transparent_crc(p_2301->g_103, "p_2301->g_103", print_hash_value);
    transparent_crc(p_2301->g_106, "p_2301->g_106", print_hash_value);
    transparent_crc(p_2301->g_108.f0, "p_2301->g_108.f0", print_hash_value);
    transparent_crc(p_2301->g_121, "p_2301->g_121", print_hash_value);
    transparent_crc(p_2301->g_122, "p_2301->g_122", print_hash_value);
    transparent_crc(p_2301->g_128, "p_2301->g_128", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2301->g_133[i].f0, "p_2301->g_133[i].f0", print_hash_value);

    }
    transparent_crc(p_2301->g_164, "p_2301->g_164", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2301->g_167[i][j], "p_2301->g_167[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2301->g_168.f0, "p_2301->g_168.f0", print_hash_value);
    transparent_crc(p_2301->g_168.f1, "p_2301->g_168.f1", print_hash_value);
    transparent_crc(p_2301->g_178, "p_2301->g_178", print_hash_value);
    transparent_crc(p_2301->g_232, "p_2301->g_232", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2301->g_235[i][j], "p_2301->g_235[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2301->g_244.f0, "p_2301->g_244.f0", print_hash_value);
    transparent_crc(p_2301->g_244.f1, "p_2301->g_244.f1", print_hash_value);
    transparent_crc(p_2301->g_276, "p_2301->g_276", print_hash_value);
    transparent_crc(p_2301->g_354.f0, "p_2301->g_354.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2301->g_365[i].f0, "p_2301->g_365[i].f0", print_hash_value);

    }
    transparent_crc(p_2301->g_432.f0, "p_2301->g_432.f0", print_hash_value);
    transparent_crc(p_2301->g_467.f0, "p_2301->g_467.f0", print_hash_value);
    transparent_crc(p_2301->g_467.f1, "p_2301->g_467.f1", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2301->g_497[i][j][k], "p_2301->g_497[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2301->g_505.f0, "p_2301->g_505.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2301->g_509[i].f0, "p_2301->g_509[i].f0", print_hash_value);
        transparent_crc(p_2301->g_509[i].f1, "p_2301->g_509[i].f1", print_hash_value);

    }
    transparent_crc(p_2301->g_551, "p_2301->g_551", print_hash_value);
    transparent_crc(p_2301->g_610, "p_2301->g_610", print_hash_value);
    transparent_crc(p_2301->g_647.f0, "p_2301->g_647.f0", print_hash_value);
    transparent_crc(p_2301->g_647.f1, "p_2301->g_647.f1", print_hash_value);
    transparent_crc(p_2301->g_678, "p_2301->g_678", print_hash_value);
    transparent_crc(p_2301->g_685, "p_2301->g_685", print_hash_value);
    transparent_crc(p_2301->g_686.f0, "p_2301->g_686.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2301->g_755[i].f0, "p_2301->g_755[i].f0", print_hash_value);
        transparent_crc(p_2301->g_755[i].f1, "p_2301->g_755[i].f1", print_hash_value);

    }
    transparent_crc(p_2301->g_785, "p_2301->g_785", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2301->g_792[i][j].f0, "p_2301->g_792[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2301->g_832, "p_2301->g_832", print_hash_value);
    transparent_crc(p_2301->g_851, "p_2301->g_851", print_hash_value);
    transparent_crc(p_2301->g_877, "p_2301->g_877", print_hash_value);
    transparent_crc(p_2301->g_878, "p_2301->g_878", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2301->g_916[i].f0, "p_2301->g_916[i].f0", print_hash_value);
        transparent_crc(p_2301->g_916[i].f1, "p_2301->g_916[i].f1", print_hash_value);

    }
    transparent_crc(p_2301->g_919, "p_2301->g_919", print_hash_value);
    transparent_crc(p_2301->g_988, "p_2301->g_988", print_hash_value);
    transparent_crc(p_2301->g_1035.f0, "p_2301->g_1035.f0", print_hash_value);
    transparent_crc(p_2301->g_1037, "p_2301->g_1037", print_hash_value);
    transparent_crc(p_2301->g_1051.f0, "p_2301->g_1051.f0", print_hash_value);
    transparent_crc(p_2301->g_1108, "p_2301->g_1108", print_hash_value);
    transparent_crc(p_2301->g_1173.f0, "p_2301->g_1173.f0", print_hash_value);
    transparent_crc(p_2301->g_1176, "p_2301->g_1176", print_hash_value);
    transparent_crc(p_2301->g_1180.f0, "p_2301->g_1180.f0", print_hash_value);
    transparent_crc(p_2301->g_1229.f0, "p_2301->g_1229.f0", print_hash_value);
    transparent_crc(p_2301->g_1237, "p_2301->g_1237", print_hash_value);
    transparent_crc(p_2301->g_1286, "p_2301->g_1286", print_hash_value);
    transparent_crc(p_2301->g_1336.f0, "p_2301->g_1336.f0", print_hash_value);
    transparent_crc(p_2301->g_1336.f1, "p_2301->g_1336.f1", print_hash_value);
    transparent_crc(p_2301->g_1366.f0, "p_2301->g_1366.f0", print_hash_value);
    transparent_crc(p_2301->g_1366.f1, "p_2301->g_1366.f1", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2301->g_1376[i].f0, "p_2301->g_1376[i].f0", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2301->g_1411[i].f0, "p_2301->g_1411[i].f0", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2301->g_1448[i][j][k].f0, "p_2301->g_1448[i][j][k].f0", print_hash_value);
                transparent_crc(p_2301->g_1448[i][j][k].f1, "p_2301->g_1448[i][j][k].f1", print_hash_value);

            }
        }
    }
    transparent_crc(p_2301->g_1602.f0, "p_2301->g_1602.f0", print_hash_value);
    transparent_crc(p_2301->g_1602.f1, "p_2301->g_1602.f1", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_2301->g_1613[i][j].f0, "p_2301->g_1613[i][j].f0", print_hash_value);
            transparent_crc(p_2301->g_1613[i][j].f1, "p_2301->g_1613[i][j].f1", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2301->g_1726[i].f0, "p_2301->g_1726[i].f0", print_hash_value);
        transparent_crc(p_2301->g_1726[i].f1, "p_2301->g_1726[i].f1", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2301->g_1727[i].f0, "p_2301->g_1727[i].f0", print_hash_value);
        transparent_crc(p_2301->g_1727[i].f1, "p_2301->g_1727[i].f1", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2301->g_1741[i].f0, "p_2301->g_1741[i].f0", print_hash_value);
        transparent_crc(p_2301->g_1741[i].f1, "p_2301->g_1741[i].f1", print_hash_value);

    }
    transparent_crc(p_2301->g_1748.f0, "p_2301->g_1748.f0", print_hash_value);
    transparent_crc(p_2301->g_1748.f1, "p_2301->g_1748.f1", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2301->g_1808[i].f0, "p_2301->g_1808[i].f0", print_hash_value);

    }
    transparent_crc(p_2301->g_1859, "p_2301->g_1859", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2301->g_1866[i].f0, "p_2301->g_1866[i].f0", print_hash_value);
        transparent_crc(p_2301->g_1866[i].f1, "p_2301->g_1866[i].f1", print_hash_value);

    }
    transparent_crc(p_2301->g_1875, "p_2301->g_1875", print_hash_value);
    transparent_crc(p_2301->g_2030.f0, "p_2301->g_2030.f0", print_hash_value);
    transparent_crc(p_2301->g_2037.f0, "p_2301->g_2037.f0", print_hash_value);
    transparent_crc(p_2301->g_2037.f1, "p_2301->g_2037.f1", print_hash_value);
    transparent_crc(p_2301->g_2038.f0, "p_2301->g_2038.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2301->g_2048[i].f0, "p_2301->g_2048[i].f0", print_hash_value);

    }
    transparent_crc(p_2301->g_2085.f0, "p_2301->g_2085.f0", print_hash_value);
    transparent_crc(p_2301->g_2085.f1, "p_2301->g_2085.f1", print_hash_value);
    transparent_crc(p_2301->g_2107.f0, "p_2301->g_2107.f0", print_hash_value);
    transparent_crc(p_2301->g_2107.f1, "p_2301->g_2107.f1", print_hash_value);
    transparent_crc(p_2301->g_2146.f0, "p_2301->g_2146.f0", print_hash_value);
    transparent_crc(p_2301->g_2146.f1, "p_2301->g_2146.f1", print_hash_value);
    transparent_crc(p_2301->g_2232, "p_2301->g_2232", print_hash_value);
    transparent_crc(p_2301->g_2236.f0, "p_2301->g_2236.f0", print_hash_value);
    transparent_crc(p_2301->g_2236.f1, "p_2301->g_2236.f1", print_hash_value);
    transparent_crc(p_2301->g_2287.f0, "p_2301->g_2287.f0", print_hash_value);
    transparent_crc(p_2301->g_2287.f1, "p_2301->g_2287.f1", print_hash_value);
    transparent_crc(p_2301->g_2299.f0, "p_2301->g_2299.f0", print_hash_value);
    transparent_crc(p_2301->g_2299.f1, "p_2301->g_2299.f1", print_hash_value);
    transparent_crc(p_2301->g_2300, "p_2301->g_2300", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
