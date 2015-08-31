// ---fake_divergence -g 1,7,1 -l 1,1,1
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
struct S0 {
   volatile uint8_t  f0;
   uint32_t  f1;
   int32_t  f2;
   uint32_t  f3;
   int32_t  f4;
   volatile int32_t  f5;
   uint32_t  f6;
   volatile int64_t  f7;
};

struct S1 {
   int32_t  f0;
   volatile uint32_t  f1;
   uint16_t  f2;
};

struct S2 {
    uint64_t g_6;
    int16_t g_9[1];
    uint64_t g_26[4];
    int32_t g_27;
    uint32_t g_30;
    volatile int32_t g_35;
    int32_t g_36;
    volatile int32_t g_39;
    volatile int32_t g_40;
    volatile int32_t g_41[1][3][7];
    volatile int32_t g_42;
    int32_t g_43;
    volatile int32_t g_46;
    volatile int32_t g_47;
    int32_t g_48;
    int32_t g_52;
    int8_t g_78;
    uint32_t g_132;
    volatile struct S1 g_159;
    volatile struct S1 g_160;
    int8_t g_165;
    int32_t g_166;
    int16_t g_168;
    volatile uint64_t g_172[3];
    volatile uint64_t g_173[7];
    volatile uint64_t *g_171[5];
    volatile uint64_t * volatile *g_170;
    int32_t * volatile g_175;
    uint8_t g_197;
    int64_t g_202;
    int32_t g_208;
    struct S0 g_233[4][7];
    struct S0 * volatile g_234;
    int16_t *g_246;
    int16_t *g_247;
    volatile struct S1 g_254;
    volatile struct S1 * volatile g_255;
    struct S0 * volatile g_256;
    int32_t *g_272[4][6][7];
    uint16_t g_316;
    volatile struct S1 g_326;
    uint32_t g_344[2][7];
    volatile struct S1 g_361[8][2];
    volatile uint8_t g_384[9];
    struct S0 g_395;
    int64_t g_408;
    int64_t *g_407;
    int64_t ** volatile g_406;
    int64_t ** volatile * volatile g_409;
    int32_t g_412;
    int32_t ** volatile g_444;
    uint16_t g_448;
    struct S1 g_473;
    struct S1 g_475;
    struct S1 *g_474;
    volatile struct S1 ***g_485;
    volatile struct S0 g_494;
    uint16_t g_506[8];
    int8_t *g_519;
    uint32_t g_537;
    uint64_t g_541;
    volatile int64_t g_548;
    volatile int64_t *g_547;
    volatile int64_t **g_546;
    int64_t *g_550;
    int64_t **g_549;
    volatile struct S1 g_606;
    volatile struct S0 g_626;
    volatile struct S0 * volatile g_627[9];
    volatile struct S0 * volatile g_628;
    volatile uint64_t g_647;
    volatile uint64_t *g_646;
    volatile uint64_t ** volatile g_645;
    struct S1 g_684;
    int64_t **g_699[4];
    uint32_t g_731;
    uint8_t g_803;
    volatile struct S1 g_804;
    int64_t g_824;
    struct S1 g_826;
    struct S1 g_828;
    struct S1 g_830;
    struct S1 g_831;
    struct S1 g_832;
    struct S1 g_833;
    struct S1 g_834;
    struct S1 g_835;
    struct S1 g_836;
    struct S1 g_837;
    struct S1 g_838;
    struct S1 g_839[4];
    struct S1 g_840;
    struct S1 g_841;
    struct S1 g_842;
    struct S1 g_843;
    struct S1 g_844;
    struct S1 g_845;
    struct S1 g_846[3];
    struct S1 g_847[4];
    struct S1 g_848;
    struct S1 g_849[5][9];
    struct S1 g_850[2][8];
    struct S1 g_851;
    struct S1 g_852;
    struct S1 g_853;
    struct S1 g_854;
    struct S1 g_855;
    struct S1 g_856;
    struct S1 g_857;
    struct S1 g_858;
    struct S1 g_859;
    int8_t g_900[6];
    uint32_t g_903;
    struct S1 **g_933;
    struct S1 ***g_932;
    uint64_t g_965;
    int32_t g_982[10];
    int32_t ** volatile g_999;
    struct S1 g_1033;
    int8_t g_1072[6];
    struct S1 g_1073;
    struct S0 g_1095;
    struct S0 * volatile g_1096[1][9];
    struct S0 * volatile g_1097;
    struct S0 * volatile g_1099;
    struct S1 g_1103;
    int32_t * volatile g_1108;
    int32_t ** volatile g_1163[5][3];
    int32_t ** volatile g_1164;
    int32_t ** volatile g_1165;
    volatile uint8_t *g_1183;
    volatile uint8_t **g_1182;
    volatile struct S1 g_1225[7];
    volatile struct S0 g_1235;
    int64_t g_1270;
    volatile int64_t * volatile *g_1399[10];
    volatile int64_t * volatile ** volatile g_1398;
    volatile int64_t * volatile ** volatile *g_1397;
    struct S0 g_1400;
    volatile struct S0 g_1423;
    volatile int64_t g_1474;
    volatile uint32_t g_1495[3][3][3];
    volatile uint32_t *g_1494;
    volatile uint32_t * volatile * volatile g_1493;
    int32_t g_1569;
    struct S0 g_1704;
    struct S1 g_1715;
    int32_t ** volatile g_1743;
    volatile struct S0 g_1745;
    int32_t *g_1758;
    int32_t ** volatile g_1759;
    int32_t ** volatile g_1760[10];
    int32_t ** volatile g_1818;
    int32_t g_1840;
    int32_t *g_1845;
    volatile uint16_t *g_1856[6];
    volatile uint16_t **g_1855;
    struct S0 g_1860;
    struct S0 * volatile g_1861;
    struct S0 * volatile g_1863;
    int32_t ** volatile g_1888;
    volatile struct S0 g_1893;
    struct S0 g_1895;
    struct S0 * volatile g_1896;
    int16_t g_1929;
    int32_t **g_1938;
    int16_t g_1943;
    struct S1 g_1978[8];
    struct S1 g_1992;
    int32_t g_2044[10][6];
    volatile int16_t g_2080;
    volatile int16_t *g_2079;
    volatile int16_t * volatile * volatile g_2078;
    volatile int16_t * volatile * volatile *g_2077;
    struct S1 g_2102;
    struct S1 g_2103[9][10][2];
    struct S0 g_2115[7];
    uint32_t g_2132;
    volatile int64_t g_2146;
    struct S1 *****g_2210;
    int32_t g_2216;
    volatile struct S1 g_2225;
    volatile struct S1 g_2228;
    struct S0 * volatile *g_2250;
    struct S0 * volatile ** volatile g_2249;
    struct S0 ** volatile g_2272;
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
int64_t  func_1(struct S2 * p_2298);
int32_t  func_10(int64_t  p_11, int16_t  p_12, uint32_t  p_13, struct S2 * p_2298);
int64_t  func_22(uint64_t * p_23, struct S2 * p_2298);
uint16_t  func_70(int32_t  p_71, struct S2 * p_2298);
int32_t  func_86(uint64_t  p_87, uint64_t * p_88, struct S2 * p_2298);
uint64_t  func_89(uint64_t ** p_90, uint64_t  p_91, int8_t  p_92, int16_t  p_93, struct S2 * p_2298);
int32_t  func_106(uint64_t * p_107, uint64_t * p_108, struct S2 * p_2298);
int32_t  func_113(uint32_t  p_114, uint64_t  p_115, int32_t  p_116, int32_t  p_117, uint16_t  p_118, struct S2 * p_2298);
int8_t  func_120(uint32_t  p_121, int8_t * p_122, uint64_t * p_123, struct S2 * p_2298);
uint32_t  func_124(int8_t * p_125, int32_t  p_126, uint32_t  p_127, int64_t  p_128, struct S2 * p_2298);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2298->g_9 p_2298->g_27 p_2298->g_30 p_2298->g_1095.f4 p_2298->g_255 p_2298->g_159 p_2298->g_247 p_2298->g_168 p_2298->g_170 p_2298->g_171 p_2298->g_173 p_2298->g_172 p_2298->g_1758 p_2298->g_842.f0 p_2298->g_407 p_2298->g_408 p_2298->g_982 p_2298->g_1855 p_2298->g_1856 p_2298->g_834.f2 p_2298->g_246 p_2298->g_837.f2 p_2298->g_1895.f1 p_2298->g_412 p_2298->g_1165 p_2298->g_272 p_2298->g_519 p_2298->g_165 p_2298->g_48 p_2298->g_43 p_2298->g_838.f2 p_2298->g_1108 p_2298->g_175 p_2298->g_166 p_2298->g_1715.f0 p_2298->g_233.f6 p_2298->g_841.f2 p_2298->g_1840 p_2298->g_850.f2 p_2298->g_409 p_2298->g_406 p_2298->g_546 p_2298->g_547 p_2298->g_548
 * writes: p_2298->g_6 p_2298->g_27 p_2298->g_30 p_2298->g_1758 p_2298->g_208 p_2298->g_982 p_2298->g_408 p_2298->g_965 p_2298->g_838.f1 p_2298->g_506 p_2298->g_1929 p_2298->g_1938 p_2298->g_197 p_2298->g_1943 p_2298->g_412 p_2298->g_48 p_2298->g_43 p_2298->g_165 p_2298->g_233.f6 p_2298->g_844.f2 p_2298->g_1863 p_2298->g_1840 p_2298->g_26 p_2298->g_166
 */
int64_t  func_1(struct S2 * p_2298)
{ /* block id: 4 */
    uint32_t l_4 = 4294967295UL;
    uint64_t *l_5 = &p_2298->g_6;
    uint64_t *l_25[3];
    uint64_t **l_24 = &l_25[0];
    int16_t *l_1928 = &p_2298->g_1929;
    int32_t **l_1936[10][2] = {{&p_2298->g_1845,&p_2298->g_272[2][5][3]},{&p_2298->g_1845,&p_2298->g_272[2][5][3]},{&p_2298->g_1845,&p_2298->g_272[2][5][3]},{&p_2298->g_1845,&p_2298->g_272[2][5][3]},{&p_2298->g_1845,&p_2298->g_272[2][5][3]},{&p_2298->g_1845,&p_2298->g_272[2][5][3]},{&p_2298->g_1845,&p_2298->g_272[2][5][3]},{&p_2298->g_1845,&p_2298->g_272[2][5][3]},{&p_2298->g_1845,&p_2298->g_272[2][5][3]},{&p_2298->g_1845,&p_2298->g_272[2][5][3]}};
    int32_t ***l_1937[4];
    int32_t **l_1939[1];
    int64_t l_1940 = 1L;
    uint32_t l_1941[8][4] = {{4294967295UL,1UL,4294967295UL,4294967295UL},{4294967295UL,1UL,4294967295UL,4294967295UL},{4294967295UL,1UL,4294967295UL,4294967295UL},{4294967295UL,1UL,4294967295UL,4294967295UL},{4294967295UL,1UL,4294967295UL,4294967295UL},{4294967295UL,1UL,4294967295UL,4294967295UL},{4294967295UL,1UL,4294967295UL,4294967295UL},{4294967295UL,1UL,4294967295UL,4294967295UL}};
    uint8_t *l_1942 = &p_2298->g_197;
    int16_t l_1944 = 0x77E2L;
    int64_t l_1945[5] = {0x3415A647725E1647L,0x3415A647725E1647L,0x3415A647725E1647L,0x3415A647725E1647L,0x3415A647725E1647L};
    int32_t l_1946 = (-1L);
    int16_t l_1947 = (-1L);
    uint32_t l_1948 = 0UL;
    int64_t l_1949 = 0L;
    uint32_t l_1950 = 0UL;
    int32_t *l_2041 = &p_2298->g_166;
    int8_t l_2076 = 0x2AL;
    int64_t l_2110 = 4L;
    uint8_t l_2113[1][5][1] = {{{0x10L},{0x10L},{0x10L},{0x10L},{0x10L}}};
    uint32_t l_2118 = 0x4F157C6EL;
    uint16_t l_2140[7][3] = {{0x2A31L,0xAE0FL,0xAE0FL},{0x2A31L,0xAE0FL,0xAE0FL},{0x2A31L,0xAE0FL,0xAE0FL},{0x2A31L,0xAE0FL,0xAE0FL},{0x2A31L,0xAE0FL,0xAE0FL},{0x2A31L,0xAE0FL,0xAE0FL},{0x2A31L,0xAE0FL,0xAE0FL}};
    int16_t l_2145 = 0x5F8DL;
    int8_t l_2244 = 0L;
    uint32_t l_2246[7][5] = {{0xA5F6CAECL,0xA5F6CAECL,4294967288UL,4294967295UL,0x596B2C73L},{0xA5F6CAECL,0xA5F6CAECL,4294967288UL,4294967295UL,0x596B2C73L},{0xA5F6CAECL,0xA5F6CAECL,4294967288UL,4294967295UL,0x596B2C73L},{0xA5F6CAECL,0xA5F6CAECL,4294967288UL,4294967295UL,0x596B2C73L},{0xA5F6CAECL,0xA5F6CAECL,4294967288UL,4294967295UL,0x596B2C73L},{0xA5F6CAECL,0xA5F6CAECL,4294967288UL,4294967295UL,0x596B2C73L},{0xA5F6CAECL,0xA5F6CAECL,4294967288UL,4294967295UL,0x596B2C73L}};
    struct S0 *l_2271 = &p_2298->g_1400;
    int16_t l_2293 = (-4L);
    int32_t l_2294 = 0x7A035A8CL;
    uint64_t l_2295 = 6UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_25[i] = &p_2298->g_26[2];
    for (i = 0; i < 4; i++)
        l_1937[i] = &l_1936[2][0];
    for (i = 0; i < 1; i++)
        l_1939[i] = &p_2298->g_272[0][3][6];
    if (((*p_2298->g_1108) = (((safe_rshift_func_int16_t_s_s((((*l_5) = l_4) < ((safe_sub_func_int64_t_s_s(l_4, GROUP_DIVERGE(2, 1))) | p_2298->g_9[0])), 3)) ^ (func_10((((safe_mul_func_int8_t_s_s(((l_1947 = (safe_sub_func_int64_t_s_s((safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((GROUP_DIVERGE(0, 1) ^ func_22(((*l_24) = (void*)0), p_2298)), (GROUP_DIVERGE(1, 1) , ((*l_1928) = l_4)))), (l_1946 |= (l_1945[4] ^= (safe_add_func_int16_t_s_s(l_4, ((safe_sub_func_int16_t_s_s((p_2298->g_1943 = ((((*l_1942) = ((((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), 6)) > ((6L | ((((p_2298->g_1938 = l_1936[2][0]) == l_1939[0]) & l_1940) , (*p_2298->g_246))) , p_2298->g_837.f2)) <= l_1941[7][1]) | p_2298->g_1895.f1)) , l_5) == (void*)0)), (*p_2298->g_247))) | l_1944))))))), 1L))) <= l_1948), (-1L))) , l_1949) , 0x6F6295AF4F48F441L), (*p_2298->g_246), l_1950, p_2298) < 0x234B259BL)) >= p_2298->g_838.f2)))
    { /* block id: 1121 */
        int64_t l_2045 = 1L;
        int32_t l_2046 = 0x638FF595L;
        int64_t l_2047 = 0L;
        int32_t l_2049[1][8] = {{0x5C99BBA3L,0x5C99BBA3L,0x5C99BBA3L,0x5C99BBA3L,0x5C99BBA3L,0x5C99BBA3L,0x5C99BBA3L,0x5C99BBA3L}};
        int32_t l_2052 = 7L;
        int8_t l_2053 = 0x4EL;
        int8_t l_2071 = 4L;
        int32_t l_2156 = 0x529C7FDDL;
        int16_t l_2179 = 7L;
        int64_t l_2214[8][7][2] = {{{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L}},{{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L}},{{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L}},{{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L}},{{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L}},{{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L}},{{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L}},{{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L},{0x4A3A1AC9F94596E9L,0x4A3A1AC9F94596E9L}}};
        int32_t *l_2219 = &p_2298->g_48;
        int i, j, k;
        (1 + 1);
    }
    else
    { /* block id: 1244 */
        int8_t l_2255 = 1L;
        int16_t *l_2258[7][2][3] = {{{&l_2145,&p_2298->g_9[0],&p_2298->g_1929},{&l_2145,&p_2298->g_9[0],&p_2298->g_1929}},{{&l_2145,&p_2298->g_9[0],&p_2298->g_1929},{&l_2145,&p_2298->g_9[0],&p_2298->g_1929}},{{&l_2145,&p_2298->g_9[0],&p_2298->g_1929},{&l_2145,&p_2298->g_9[0],&p_2298->g_1929}},{{&l_2145,&p_2298->g_9[0],&p_2298->g_1929},{&l_2145,&p_2298->g_9[0],&p_2298->g_1929}},{{&l_2145,&p_2298->g_9[0],&p_2298->g_1929},{&l_2145,&p_2298->g_9[0],&p_2298->g_1929}},{{&l_2145,&p_2298->g_9[0],&p_2298->g_1929},{&l_2145,&p_2298->g_9[0],&p_2298->g_1929}},{{&l_2145,&p_2298->g_9[0],&p_2298->g_1929},{&l_2145,&p_2298->g_9[0],&p_2298->g_1929}}};
        int32_t l_2259 = 0x34BF6FE0L;
        uint32_t *l_2262 = &p_2298->g_233[0][4].f6;
        int32_t l_2265 = 1L;
        uint16_t *l_2269 = &p_2298->g_844.f2;
        uint8_t l_2270[9] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
        int i, j, k;
        if ((safe_mod_func_int8_t_s_s(((*p_2298->g_519) = (safe_lshift_func_uint8_t_u_u(l_2255, 5))), (((4294967287UL || (safe_rshift_func_uint16_t_u_u(((*p_2298->g_175) != (l_2259 = (l_2258[1][1][2] != (void*)0))), (((0xACL > p_2298->g_1715.f0) > (((safe_sub_func_uint32_t_u_u(((*l_2262)--), (l_2265 = 1UL))) != (safe_unary_minus_func_uint32_t_u(((safe_mod_func_uint16_t_u_u(((*l_2269) = (0x6C952202DE84487FL ^ p_2298->g_9[0])), 0x2774L)) , l_2255)))) , p_2298->g_841.f2)) == l_2270[1])))) && 0x1657L) , l_2255))))
        { /* block id: 1250 */
            struct S0 **l_2273 = (void*)0;
            struct S0 **l_2274[6][8];
            int i, j;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 8; j++)
                    l_2274[i][j] = (void*)0;
            }
            p_2298->g_1863 = l_2271;
            for (p_2298->g_1840 = 0; (p_2298->g_1840 < (-11)); --p_2298->g_1840)
            { /* block id: 1254 */
                return l_2270[0];
            }
            return l_2270[4];
        }
        else
        { /* block id: 1258 */
            uint32_t **l_2287[9][1][10] = {{{(void*)0,(void*)0,&l_2262,&l_2262,&l_2262,&l_2262,(void*)0,&l_2262,(void*)0,&l_2262}},{{(void*)0,(void*)0,&l_2262,&l_2262,&l_2262,&l_2262,(void*)0,&l_2262,(void*)0,&l_2262}},{{(void*)0,(void*)0,&l_2262,&l_2262,&l_2262,&l_2262,(void*)0,&l_2262,(void*)0,&l_2262}},{{(void*)0,(void*)0,&l_2262,&l_2262,&l_2262,&l_2262,(void*)0,&l_2262,(void*)0,&l_2262}},{{(void*)0,(void*)0,&l_2262,&l_2262,&l_2262,&l_2262,(void*)0,&l_2262,(void*)0,&l_2262}},{{(void*)0,(void*)0,&l_2262,&l_2262,&l_2262,&l_2262,(void*)0,&l_2262,(void*)0,&l_2262}},{{(void*)0,(void*)0,&l_2262,&l_2262,&l_2262,&l_2262,(void*)0,&l_2262,(void*)0,&l_2262}},{{(void*)0,(void*)0,&l_2262,&l_2262,&l_2262,&l_2262,(void*)0,&l_2262,(void*)0,&l_2262}},{{(void*)0,(void*)0,&l_2262,&l_2262,&l_2262,&l_2262,(void*)0,&l_2262,(void*)0,&l_2262}}};
            int32_t l_2288 = (-1L);
            int i, j, k;
            (*l_2041) = ((safe_lshift_func_int8_t_s_s(((((((safe_add_func_int16_t_s_s(9L, (safe_mod_func_uint8_t_u_u((((safe_sub_func_int8_t_s_s((safe_mul_func_int16_t_s_s((l_2287[8][0][5] == (void*)0), 9L)), (*p_2298->g_519))) , l_2288) > l_2288), (safe_sub_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_2298->global_0_offset, get_global_id(0), 10), l_2288)), ((p_2298->g_26[2] = l_2288) & l_2259))))))) != (**p_2298->g_170)) & p_2298->g_850[0][0].f2) && (***p_2298->g_409)) != l_2288) && l_2288), 6)) >= (*p_2298->g_247));
            return l_2265;
        }
    }
    --l_2295;
    return (**p_2298->g_546);
}


/* ------------------------------------------ */
/* 
 * reads : p_2298->g_412 p_2298->g_1165 p_2298->g_272 p_2298->g_519 p_2298->g_165 p_2298->g_247 p_2298->g_168 p_2298->g_48 p_2298->g_43
 * writes: p_2298->g_412 p_2298->g_48 p_2298->g_43
 */
int32_t  func_10(int64_t  p_11, int16_t  p_12, uint32_t  p_13, struct S2 * p_2298)
{ /* block id: 1043 */
    int8_t l_1951 = 0x02L;
    int32_t l_1976 = 0x61294313L;
    int8_t **l_1982[8];
    int32_t *l_2015 = &p_2298->g_52;
    int32_t *l_2017 = &p_2298->g_48;
    int32_t l_2021 = 1L;
    int32_t l_2022 = 0L;
    int32_t l_2023 = 0x2E740152L;
    uint8_t l_2024 = 6UL;
    int64_t *l_2037 = (void*)0;
    struct S1 ****l_2040 = &p_2298->g_932;
    int i;
    for (i = 0; i < 8; i++)
        l_1982[i] = &p_2298->g_519;
    if (l_1951)
    { /* block id: 1044 */
        struct S1 ****l_1971 = (void*)0;
        int32_t l_1973 = 5L;
        int8_t *l_1993 = (void*)0;
        int32_t *l_2007[2];
        int i;
        for (i = 0; i < 2; i++)
            l_2007[i] = &l_1976;
        for (p_2298->g_412 = 0; (p_2298->g_412 <= 1); p_2298->g_412 += 1)
        { /* block id: 1047 */
            int32_t l_1974[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int32_t l_1985 = (-1L);
            struct S1 ****l_1999 = &p_2298->g_932;
            int32_t *l_2005 = (void*)0;
            int32_t **l_2016[6] = {&l_2015,&p_2298->g_1758,&l_2015,&l_2015,&p_2298->g_1758,&l_2015};
            int i;
            (1 + 1);
        }
        l_2015 = (*p_2298->g_1165);
        return p_12;
    }
    else
    { /* block id: 1114 */
        int32_t *l_2018 = (void*)0;
        int32_t *l_2019 = &p_2298->g_43;
        int32_t *l_2020[1];
        int i;
        for (i = 0; i < 1; i++)
            l_2020[i] = &p_2298->g_166;
        l_2024++;
        (*l_2019) = (safe_rshift_func_uint16_t_u_u((((void*)0 == &p_2298->g_406) < (((safe_rshift_func_uint16_t_u_s(((((safe_add_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s((*p_2298->g_519), (safe_lshift_func_int16_t_s_s((*p_2298->g_247), 12)))) >= ((void*)0 != l_2037)), ((*l_2017) &= 0x7DL))) > (safe_div_func_int16_t_s_s((+(l_2040 == &p_2298->g_932)), 2L))) > p_13) <= (*l_2019)), 8)) , (-1L)) <= 18446744073709551612UL)), 2));
    }
    return (*l_2017);
}


/* ------------------------------------------ */
/* 
 * reads : p_2298->g_27 p_2298->g_30 p_2298->g_1095.f4 p_2298->g_255 p_2298->g_159 p_2298->g_247 p_2298->g_168 p_2298->g_170 p_2298->g_171 p_2298->g_173 p_2298->g_172 p_2298->g_1758 p_2298->g_842.f0 p_2298->g_407 p_2298->g_408 p_2298->g_982 p_2298->g_1855 p_2298->g_1856 p_2298->g_834.f2
 * writes: p_2298->g_27 p_2298->g_30 p_2298->g_1758 p_2298->g_208 p_2298->g_982 p_2298->g_408 p_2298->g_965 p_2298->g_838.f1 p_2298->g_506
 */
int64_t  func_22(uint64_t * p_23, struct S2 * p_2298)
{ /* block id: 7 */
    uint64_t l_1849 = 18446744073709551615UL;
    struct S1 ****l_1872 = &p_2298->g_932;
    struct S1 *****l_1871 = &l_1872;
    int32_t l_1879 = 0x5E6E3D10L;
    int32_t l_1882 = 7L;
    volatile int32_t *l_1897 = (void*)0;
    uint8_t l_1913[5][7] = {{0xBAL,4UL,0xE2L,4UL,0xBAL,0xBAL,4UL},{0xBAL,4UL,0xE2L,4UL,0xBAL,0xBAL,4UL},{0xBAL,4UL,0xE2L,4UL,0xBAL,0xBAL,4UL},{0xBAL,4UL,0xE2L,4UL,0xBAL,0xBAL,4UL},{0xBAL,4UL,0xE2L,4UL,0xBAL,0xBAL,4UL}};
    int64_t ***l_1914 = &p_2298->g_549;
    int32_t *l_1915 = &p_2298->g_982[6];
    uint16_t *l_1922 = (void*)0;
    uint64_t *l_1927 = &p_2298->g_965;
    int i, j;
    for (p_2298->g_27 = 11; (p_2298->g_27 >= 7); p_2298->g_27 = safe_sub_func_int32_t_s_s(p_2298->g_27, 3))
    { /* block id: 10 */
        uint8_t l_59 = 0x7CL;
        uint8_t l_1889 = 1UL;
        uint16_t *l_1899 = (void*)0;
        uint16_t **l_1898 = &l_1899;
        int32_t **l_1900 = &p_2298->g_1758;
        int32_t *l_1901 = (void*)0;
        int32_t l_1902[1][3];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 3; j++)
                l_1902[i][j] = (-1L);
        }
        p_2298->g_30--;
        for (p_2298->g_30 = 4; (p_2298->g_30 < 24); p_2298->g_30++)
        { /* block id: 14 */
            uint8_t l_1852 = 255UL;
            int32_t *l_1867 = &p_2298->g_52;
            struct S1 ******l_1873 = (void*)0;
            struct S1 ******l_1874 = &l_1871;
            int32_t l_1883 = 0x2164EB47L;
            (1 + 1);
        }
        l_1898 = l_1898;
        l_1902[0][1] &= (((*l_1900) = &l_1879) != &l_1879);
    }
    (*l_1915) = ((~0xB3L) , ((p_2298->g_1095.f4 & ((safe_mod_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((((0x2ED1A2A8L != ((*p_2298->g_255) , (((0x8A4AL < ((safe_div_func_int32_t_s_s(l_1882, (safe_mul_func_uint16_t_u_u((((*p_2298->g_1758) = (safe_lshift_func_uint8_t_u_u(((((-7L) || (*p_2298->g_247)) > (((**p_2298->g_170) || l_1913[2][1]) | l_1913[2][1])) != GROUP_DIVERGE(1, 1)), 4))) ^ l_1849), l_1913[1][2])))) ^ l_1913[2][1])) , (void*)0) == l_1914))) > l_1882) == p_2298->g_842.f0) >= 6L), 1L)), (*p_2298->g_407))) , l_1849)) == l_1913[2][1]));
    (*p_2298->g_1758) = (safe_mod_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(0L, ((*l_1915) = ((((*p_2298->g_407) = (*l_1915)) , ((safe_sub_func_uint64_t_u_u((((*p_2298->g_1855) != l_1922) & p_2298->g_834.f2), ((*l_1915) <= (-1L)))) ^ ((safe_add_func_int32_t_s_s((*l_1915), (GROUP_DIVERGE(1, 1) && (((*l_1927) = ((((safe_lshift_func_uint8_t_u_s(((-1L) > (*l_1915)), 3)) | (*l_1915)) <= 255UL) == (*l_1915))) & (*l_1915))))) > (*l_1915)))) != (*l_1915))))), (*p_2298->g_247)));
    for (p_2298->g_838.f1 = 0; p_2298->g_838.f1 < 8; p_2298->g_838.f1 += 1)
    {
        p_2298->g_506[p_2298->g_838.f1] = 0x6B73L;
    }
    return (*l_1915);
}


/* ------------------------------------------ */
/* 
 * reads : p_2298->g_78 p_2298->g_43 p_2298->g_30 p_2298->g_26 p_2298->g_9 p_2298->g_27 p_2298->g_52 p_2298->g_159 p_2298->g_160 p_2298->g_48 p_2298->g_132 p_2298->g_36 p_2298->g_166 p_2298->g_170 p_2298->g_175 p_2298->g_168 p_2298->g_197 p_2298->g_40 p_2298->g_165 p_2298->g_208 p_2298->g_412 p_2298->g_836.f2 p_2298->g_444 p_2298->g_272 p_2298->g_999 p_2298->g_395.f2 p_2298->g_859.f0 p_2298->g_837.f2 p_2298->g_246 p_2298->g_1033 p_2298->g_841.f0 p_2298->g_407 p_2298->g_408 p_2298->g_247 p_2298->g_256 p_2298->g_233 p_2298->g_202 p_2298->g_858.f0 p_2298->g_834.f2 p_2298->g_839.f2 p_2298->g_731 p_2298->g_1072 p_2298->g_838.f2 p_2298->g_171 p_2298->g_173 p_2298->g_172 p_2298->g_519 p_2298->g_1073 p_2298->g_830.f0 p_2298->g_1095 p_2298->g_1099 p_2298->g_506 p_2298->g_1103 p_2298->g_933 p_2298->g_474 p_2298->g_1108 p_2298->g_42 p_2298->g_537 p_2298->g_848.f0 p_2298->g_841.f2 p_2298->g_842.f2 p_2298->g_844.f0 p_2298->g_851.f0 p_2298->g_853.f2 p_2298->g_361.f0 p_2298->g_832.f0 p_2298->g_475.f1 p_2298->g_824 p_2298->g_1165 p_2298->g_803 p_2298->g_646 p_2298->g_647 p_2298->g_406 p_2298->g_848.f2 p_2298->g_1225 p_2298->g_1235 p_2298->g_843.f2 p_2298->g_903 p_2298->g_830.f2 p_2298->g_833.f1 p_2298->g_549 p_2298->g_550 p_2298->g_846.f2 p_2298->g_836.f0 p_2298->g_832.f2 p_2298->g_833.f2 p_2298->g_626.f1 p_2298->g_1397 p_2298->g_1400 p_2298->g_409 p_2298->g_1423 p_2298->g_900 p_2298->g_645 p_2298->g_1493 p_2298->g_475 p_2298->g_395.f1 p_2298->g_684.f2 p_2298->g_982 p_2298->g_1569 p_2298->g_845.f2 p_2298->g_804.f2 p_2298->g_965 p_2298->g_541 p_2298->g_852.f2 p_2298->g_395.f3 p_2298->g_843.f0 p_2298->g_826.f0 p_2298->g_1743 p_2298->g_1745 p_2298->g_1758 p_2298->g_828.f2 p_2298->g_395.f4 p_2298->g_1818 p_2298->g_344
 * writes: p_2298->g_78 p_2298->g_132 p_2298->g_52 p_2298->g_165 p_2298->g_166 p_2298->g_168 p_2298->g_197 p_2298->g_208 p_2298->g_412 p_2298->g_836.f2 p_2298->g_857.f0 p_2298->g_395.f6 p_2298->g_272 p_2298->g_859.f0 p_2298->g_837.f2 p_2298->g_834.f2 p_2298->g_803 p_2298->g_408 p_2298->g_395 p_2298->g_830.f0 p_2298->g_475 p_2298->g_841.f2 p_2298->g_842.f2 p_2298->g_982 p_2298->g_26 p_2298->g_233.f1 p_2298->g_832.f0 p_2298->g_824 p_2298->g_858.f0 p_2298->g_1182 p_2298->g_160.f0 p_2298->g_171 p_2298->g_838.f2 p_2298->g_344 p_2298->g_494 p_2298->g_519 p_2298->g_832.f2 p_2298->g_903 p_2298->g_830.f2 p_2298->g_1270 p_2298->g_1103.f0 p_2298->g_833.f2 p_2298->g_845.f0 p_2298->g_854.f0 p_2298->g_537 p_2298->g_473.f2 p_2298->g_856.f0 p_2298->g_1400.f3 p_2298->g_1072 p_2298->g_1095.f2 p_2298->g_848.f2 p_2298->g_684.f2 p_2298->g_846.f2 p_2298->g_900 p_2298->g_541 p_2298->g_843.f0 p_2298->g_844.f0 p_2298->g_1704 p_2298->g_1715 p_2298->g_847 p_2298->g_828.f2 p_2298->g_828.f0 p_2298->g_841.f0 p_2298->g_835.f0 p_2298->g_1095.f3 p_2298->g_1840 p_2298->g_1745.f5 p_2298->g_384 p_2298->g_1845
 */
uint16_t  func_70(int32_t  p_71, struct S2 * p_2298)
{ /* block id: 30 */
    uint16_t l_76 = 0x2647L;
    int8_t *l_77[10][3][4] = {{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}},{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}},{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}},{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}},{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}},{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}},{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}},{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}},{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}},{{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78},{&p_2298->g_78,&p_2298->g_78,&p_2298->g_78,&p_2298->g_78}}};
    int32_t l_79[2][9][1];
    uint64_t *l_95 = &p_2298->g_26[2];
    uint64_t **l_94 = &l_95;
    uint8_t *l_1125 = (void*)0;
    uint8_t *l_1126 = &p_2298->g_803;
    uint16_t l_1127 = 0x60CEL;
    int8_t l_1717 = (-2L);
    uint16_t l_1718 = 65530UL;
    uint64_t l_1726 = 0x8A5E323241FF3995L;
    int32_t l_1803 = 0x4F05488EL;
    uint32_t l_1806 = 7UL;
    uint32_t l_1809[8] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
    int32_t *l_1846 = &l_1803;
    int32_t *l_1847 = &l_79[1][0][0];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 1; k++)
                l_79[i][j][k] = 4L;
        }
    }
    if ((safe_rshift_func_uint8_t_u_s((safe_sub_func_int16_t_s_s(((l_79[0][1][0] = l_76) == (safe_lshift_func_int16_t_s_u((safe_add_func_uint8_t_u_u((safe_sub_func_int32_t_s_s(func_86(func_89(l_94, ((*l_95) = (safe_sub_func_int32_t_s_s((((safe_lshift_func_int8_t_s_s(l_76, 0)) & ((p_71 == (safe_add_func_uint32_t_u_u(((((safe_mod_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((*l_1126) = ((func_106((*l_94), &p_2298->g_26[1], p_2298) , ((*p_2298->g_246) && ((-7L) > 2UL))) | 0x79706C6BL)), l_76)), 0x3DL)) , p_71) , l_1127) , p_71), p_2298->g_851.f0))) > 0x02L)) == p_71), 0x02663104L))), l_76, l_76, p_2298), (*l_94), p_2298), p_71)), 0x64L)), l_1127))), p_71)), 7)))
    { /* block id: 884 */
        int32_t *l_1716[4][3][7] = {{{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208},{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208},{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208}},{{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208},{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208},{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208}},{{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208},{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208},{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208}},{{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208},{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208},{&p_2298->g_166,&p_2298->g_982[6],&p_2298->g_166,&l_79[0][4][0],&p_2298->g_43,(void*)0,&p_2298->g_208}}};
        int i, j, k;
        l_1718--;
    }
    else
    { /* block id: 886 */
        int32_t *l_1721 = (void*)0;
        int32_t *l_1722 = &p_2298->g_412;
        int32_t *l_1723 = &l_79[1][7][0];
        int32_t *l_1724[6][1] = {{&p_2298->g_208},{&p_2298->g_208},{&p_2298->g_208},{&p_2298->g_208},{&p_2298->g_208},{&p_2298->g_208}};
        int64_t l_1725 = 0x773F50BEDC857AF2L;
        int i, j;
        ++l_1726;
    }
lbl_1812:
    for (p_2298->g_837.f2 = 0; (p_2298->g_837.f2 != 14); p_2298->g_837.f2 = safe_add_func_uint64_t_u_u(p_2298->g_837.f2, 5))
    { /* block id: 891 */
        return p_2298->g_826.f0;
    }
    for (p_2298->g_395.f4 = 0; (p_2298->g_395.f4 >= 0); p_2298->g_395.f4 -= 1)
    { /* block id: 896 */
        struct S0 *l_1740[6][8] = {{&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400},{&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400},{&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400},{&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400},{&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400},{&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400,&p_2298->g_1400}};
        struct S0 **l_1739 = &l_1740[4][5];
        int64_t *l_1744[7][7] = {{&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202}};
        int32_t l_1754 = 0x72DC3992L;
        int32_t l_1770 = 0x22FBDA98L;
        int32_t l_1771 = 0x7E6AA165L;
        int32_t l_1772 = 0x58018D9DL;
        int32_t l_1773 = 0x7EAF86F2L;
        int32_t l_1774 = 0x297F51EFL;
        int32_t l_1775 = 0x0C6548AAL;
        int32_t l_1777 = 0x74A7D2AEL;
        int32_t l_1780 = 0x4309E953L;
        int32_t l_1781 = 9L;
        int32_t l_1783 = 2L;
        int32_t l_1786[9][3][6] = {{{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)}},{{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)}},{{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)}},{{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)}},{{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)}},{{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)}},{{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)}},{{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)}},{{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)},{0x26D4616BL,(-1L),(-1L),0x26D4616BL,(-4L),(-1L)}}};
        uint8_t l_1796[1];
        int16_t **l_1838 = (void*)0;
        int32_t *l_1839 = &p_2298->g_1840;
        int32_t *l_1848[8] = {&l_1774,&l_1774,&l_1774,&l_1774,&l_1774,&l_1774,&l_1774,&l_1774};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1796[i] = 252UL;
        for (p_2298->g_828.f2 = 0; (p_2298->g_828.f2 <= 0); p_2298->g_828.f2 += 1)
        { /* block id: 899 */
            struct S0 **l_1741[5][1][5];
            int32_t l_1742 = (-8L);
            int32_t l_1782 = (-6L);
            int32_t l_1787 = (-1L);
            int32_t l_1788 = 0x0AE57A5CL;
            int32_t l_1789 = 4L;
            int32_t l_1791 = 0x01AA1EC4L;
            int32_t l_1793 = 0x28A208FDL;
            int32_t l_1795 = (-5L);
            int i, j, k;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 5; k++)
                        l_1741[i][j][k] = &l_1740[4][5];
                }
            }
            l_1742 = (0x2AL ^ ((((safe_rshift_func_uint16_t_u_u((p_2298->g_132 == (7UL && 0L)), p_71)) , ((safe_mul_func_int8_t_s_s((p_2298->g_845.f2 >= (p_2298->g_197 = ((*l_1126) = FAKE_DIVERGE(p_2298->local_2_offset, get_local_id(2), 10)))), ((safe_mul_func_uint16_t_u_u((((((((safe_div_func_int64_t_s_s(((*p_2298->g_407) = ((0UL & (+(p_71 , l_1127))) <= p_71)), 4L)) >= 65527UL) , l_1739) == l_1741[0][0][1]) >= p_71) , 0x3AA2L) <= (*p_2298->g_246)), l_1717)) , l_1742))) ^ p_71)) <= p_71) & p_71));
            for (l_1717 = 0; (l_1717 >= 0); l_1717 -= 1)
            { /* block id: 906 */
                int32_t l_1769 = 0x084FFA6BL;
                int32_t l_1776 = 0x7F4CAA5DL;
                int32_t l_1778 = 0x51162D50L;
                int32_t l_1779 = 4L;
                int32_t l_1784 = 0x55FCA997L;
                int8_t l_1785 = 9L;
                int32_t l_1790 = (-6L);
                int64_t l_1792 = 0x7BC62773D59F121BL;
                int32_t l_1794[10][6] = {{1L,(-1L),(-1L),1L,1L,(-1L)},{1L,(-1L),(-1L),1L,1L,(-1L)},{1L,(-1L),(-1L),1L,1L,(-1L)},{1L,(-1L),(-1L),1L,1L,(-1L)},{1L,(-1L),(-1L),1L,1L,(-1L)},{1L,(-1L),(-1L),1L,1L,(-1L)},{1L,(-1L),(-1L),1L,1L,(-1L)},{1L,(-1L),(-1L),1L,1L,(-1L)},{1L,(-1L),(-1L),1L,1L,(-1L)},{1L,(-1L),(-1L),1L,1L,(-1L)}};
                int i, j, k;
                (*p_2298->g_1743) = &l_79[p_2298->g_828.f2][(p_2298->g_395.f4 + 7)][l_1717];
                if ((l_1744[0][4] != (p_2298->g_1745 , (*p_2298->g_549))))
                { /* block id: 908 */
                    uint32_t l_1755 = 0UL;
                    int32_t *l_1762 = &p_2298->g_208;
                    for (p_2298->g_828.f0 = 0; (p_2298->g_828.f0 <= 3); p_2298->g_828.f0 += 1)
                    { /* block id: 911 */
                        int32_t *l_1746 = &l_79[1][2][0];
                        int32_t *l_1747 = &l_79[(p_2298->g_395.f4 + 1)][(p_2298->g_828.f2 + 4)][p_2298->g_828.f2];
                        int32_t *l_1748 = (void*)0;
                        int32_t *l_1749 = &l_1742;
                        int32_t *l_1750 = &p_2298->g_982[7];
                        int32_t *l_1751 = (void*)0;
                        int32_t *l_1752 = &l_79[0][1][0];
                        int32_t *l_1753[1][8][7] = {{{&p_2298->g_52,(void*)0,&p_2298->g_982[6],(void*)0,&p_2298->g_52,&p_2298->g_52,(void*)0},{&p_2298->g_52,(void*)0,&p_2298->g_982[6],(void*)0,&p_2298->g_52,&p_2298->g_52,(void*)0},{&p_2298->g_52,(void*)0,&p_2298->g_982[6],(void*)0,&p_2298->g_52,&p_2298->g_52,(void*)0},{&p_2298->g_52,(void*)0,&p_2298->g_982[6],(void*)0,&p_2298->g_52,&p_2298->g_52,(void*)0},{&p_2298->g_52,(void*)0,&p_2298->g_982[6],(void*)0,&p_2298->g_52,&p_2298->g_52,(void*)0},{&p_2298->g_52,(void*)0,&p_2298->g_982[6],(void*)0,&p_2298->g_52,&p_2298->g_52,(void*)0},{&p_2298->g_52,(void*)0,&p_2298->g_982[6],(void*)0,&p_2298->g_52,&p_2298->g_52,(void*)0},{&p_2298->g_52,(void*)0,&p_2298->g_982[6],(void*)0,&p_2298->g_52,&p_2298->g_52,(void*)0}}};
                        int32_t **l_1761[8][3][6] = {{{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0}},{{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0}},{{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0}},{{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0}},{{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0}},{{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0}},{{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0}},{{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0},{&p_2298->g_1758,(void*)0,&p_2298->g_272[0][3][6],(void*)0,&l_1746,(void*)0}}};
                        int i, j, k;
                        --l_1755;
                        l_1762 = p_2298->g_1758;
                        l_1762 = &l_79[1][0][0];
                        (*p_2298->g_999) = l_1762;
                    }
                }
                else
                { /* block id: 917 */
                    return p_2298->g_1745.f2;
                }
                for (p_2298->g_541 = 0; (p_2298->g_541 <= 5); p_2298->g_541 += 1)
                { /* block id: 922 */
                    int32_t *l_1763 = &l_79[0][1][0];
                    int32_t l_1764 = 8L;
                    int32_t *l_1765 = &l_1742;
                    int32_t *l_1766 = &l_1742;
                    int32_t *l_1767 = &l_1754;
                    int32_t *l_1768[3][7] = {{&p_2298->g_48,&l_1754,&p_2298->g_48,&p_2298->g_48,&l_1754,&p_2298->g_48,&p_2298->g_48},{&p_2298->g_48,&l_1754,&p_2298->g_48,&p_2298->g_48,&l_1754,&p_2298->g_48,&p_2298->g_48},{&p_2298->g_48,&l_1754,&p_2298->g_48,&p_2298->g_48,&l_1754,&p_2298->g_48,&p_2298->g_48}};
                    int64_t l_1800[10] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
                    uint32_t l_1815 = 0UL;
                    int i, j;
                    l_1763 = &l_79[p_2298->g_828.f2][(p_2298->g_395.f4 + 7)][l_1717];
                    for (p_2298->g_841.f0 = 5; (p_2298->g_841.f0 >= 0); p_2298->g_841.f0 -= 1)
                    { /* block id: 926 */
                        return p_71;
                    }
                    l_1796[0]++;
                    for (p_2298->g_835.f0 = 3; (p_2298->g_835.f0 >= 0); p_2298->g_835.f0 -= 1)
                    { /* block id: 932 */
                        int64_t l_1799[1];
                        int32_t l_1801 = (-1L);
                        int32_t l_1802 = (-1L);
                        int32_t l_1804 = 7L;
                        int32_t l_1805 = 0x4E81A1E7L;
                        int32_t l_1813 = 0x259846D0L;
                        int32_t l_1814 = (-10L);
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1799[i] = 0x2699B7D3352EEFF2L;
                        --l_1806;
                        l_1809[0]++;
                        if (p_2298->g_853.f2)
                            goto lbl_1812;
                        l_1815++;
                    }
                }
            }
            for (p_2298->g_1095.f3 = 0; (p_2298->g_1095.f3 <= 0); p_2298->g_1095.f3 += 1)
            { /* block id: 942 */
                struct S0 *l_1819 = &p_2298->g_1095;
                int i, j, k;
                (*p_2298->g_1758) &= (l_79[p_2298->g_395.f4][(p_2298->g_828.f2 + 1)][p_2298->g_1095.f3] = l_79[p_2298->g_828.f2][(p_2298->g_395.f4 + 6)][p_2298->g_828.f2]);
                (*p_2298->g_1818) = &l_1777;
                (*l_1739) = l_1819;
            }
        }
        if (((l_1770 = (l_79[0][1][0] |= (--(*l_1126)))) > (~((p_71 <= ((((((*l_1839) = (((l_1773 = (~((safe_add_func_uint64_t_u_u((p_2298->g_344[0][0] > (safe_sub_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(0x94820B1DL, ((p_71 == (p_2298->g_1072[5] |= (((((l_1754 == (p_71 && (((safe_add_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((safe_add_func_int64_t_s_s((0UL > (safe_rshift_func_int16_t_s_s((*p_2298->g_247), 10))), (((safe_add_func_uint16_t_u_u(((l_1125 == (void*)0) < (-1L)), 0x0C65L)) <= p_2298->g_1400.f1) , p_71))), (*p_2298->g_246))), l_1754)) , l_1838) == (void*)0))) != p_71) , 0x71L) < 0xDBL) ^ p_2298->g_36))) || l_1780))), FAKE_DIVERGE(p_2298->group_0_offset, get_group_id(0), 10)))), (**p_2298->g_406))) > (-2L)))) , p_2298->g_834.f2) && p_71)) , p_71) == l_1806) < l_1127) , p_2298->g_541)) , p_71))))
        { /* block id: 955 */
            uint32_t l_1841 = 0xEC3DBD05L;
            int32_t **l_1844[8] = {&p_2298->g_272[3][2][5],&p_2298->g_272[3][2][5],&p_2298->g_272[3][2][5],&p_2298->g_272[3][2][5],&p_2298->g_272[3][2][5],&p_2298->g_272[3][2][5],&p_2298->g_272[3][2][5],&p_2298->g_272[3][2][5]};
            int i;
            for (p_2298->g_395.f3 = 0; (p_2298->g_395.f3 <= 3); p_2298->g_395.f3 += 1)
            { /* block id: 958 */
                for (p_2298->g_1745.f5 = 0; p_2298->g_1745.f5 < 9; p_2298->g_1745.f5 += 1)
                {
                    p_2298->g_384[p_2298->g_1745.f5] = 1UL;
                }
            }
            l_1841 = (*p_2298->g_1108);
            l_1847 = ((safe_mul_func_int16_t_s_s(p_71, 0x32D2L)) , (l_1846 = ((*p_2298->g_1818) = (p_2298->g_1845 = &l_79[0][5][0]))));
            l_1848[7] = &l_1803;
        }
        else
        { /* block id: 967 */
            if (p_2298->g_78)
                goto lbl_1812;
        }
    }
    return p_71;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_2298->g_836.f2 p_2298->g_847
 */
int32_t  func_86(uint64_t  p_87, uint64_t * p_88, struct S2 * p_2298)
{ /* block id: 881 */
    for (p_2298->g_836.f2 = 0; p_2298->g_836.f2 < 4; p_2298->g_836.f2 += 1)
    {
        struct S1 tmp = {0x4EA27295L,0x9BFFD0E1L,0xFB2AL};
        p_2298->g_847[p_2298->g_836.f2] = tmp;
    }
    return p_87;
}


/* ------------------------------------------ */
/* 
 * reads : p_2298->g_168 p_2298->g_208 p_2298->g_26 p_2298->g_233.f1 p_2298->g_1108 p_2298->g_412 p_2298->g_407 p_2298->g_408 p_2298->g_475.f1 p_2298->g_824 p_2298->g_519 p_2298->g_1165 p_2298->g_803 p_2298->g_858.f0 p_2298->g_646 p_2298->g_647 p_2298->g_175 p_2298->g_406 p_2298->g_9 p_2298->g_848.f2 p_2298->g_165 p_2298->g_1225 p_2298->g_474 p_2298->g_1235 p_2298->g_843.f2 p_2298->g_830.f2 p_2298->g_1072 p_2298->g_833.f1 p_2298->g_549 p_2298->g_550 p_2298->g_846.f2 p_2298->g_247 p_2298->g_246 p_2298->g_836.f0 p_2298->g_832.f2 p_2298->g_841.f0 p_2298->g_166 p_2298->g_841.f2 p_2298->g_506 p_2298->g_626.f1 p_2298->g_197 p_2298->g_537 p_2298->g_1397 p_2298->g_1400 p_2298->g_409 p_2298->g_1423 p_2298->g_837.f2 p_2298->g_900 p_2298->g_645 p_2298->g_1493 p_2298->g_933 p_2298->g_475 p_2298->g_1095.f2 p_2298->g_395.f1 p_2298->g_684.f2 p_2298->g_982 p_2298->g_170 p_2298->g_171 p_2298->g_173 p_2298->g_172 p_2298->g_52 p_2298->g_1569 p_2298->g_233 p_2298->g_1095.f6 p_2298->g_845.f2 p_2298->g_804.f2 p_2298->g_965 p_2298->g_859.f0 p_2298->g_541 p_2298->g_132 p_2298->g_852.f2 p_2298->g_395.f3 p_2298->g_843.f0 p_2298->g_844.f0 p_2298->g_832.f0 p_2298->g_838.f2 p_2298->g_903 p_2298->g_830.f0 p_2298->g_1103.f0 p_2298->g_833.f2
 * writes: p_2298->g_208 p_2298->g_233.f1 p_2298->g_412 p_2298->g_197 p_2298->g_832.f0 p_2298->g_26 p_2298->g_824 p_2298->g_165 p_2298->g_272 p_2298->g_803 p_2298->g_858.f0 p_2298->g_982 p_2298->g_1182 p_2298->g_166 p_2298->g_160.f0 p_2298->g_171 p_2298->g_475 p_2298->g_838.f2 p_2298->g_344 p_2298->g_494 p_2298->g_519 p_2298->g_832.f2 p_2298->g_903 p_2298->g_830.f2 p_2298->g_408 p_2298->g_1270 p_2298->g_830.f0 p_2298->g_1103.f0 p_2298->g_395.f1 p_2298->g_833.f2 p_2298->g_845.f0 p_2298->g_854.f0 p_2298->g_168 p_2298->g_537 p_2298->g_473.f2 p_2298->g_856.f0 p_2298->g_1400.f3 p_2298->g_837.f2 p_2298->g_1072 p_2298->g_1095.f2 p_2298->g_848.f2 p_2298->g_684.f2 p_2298->g_846.f2 p_2298->g_900 p_2298->g_541 p_2298->g_395.f3 p_2298->g_843.f0 p_2298->g_844.f0 p_2298->g_1704 p_2298->g_834.f2 p_2298->g_1715
 */
uint64_t  func_89(uint64_t ** p_90, uint64_t  p_91, int8_t  p_92, int16_t  p_93, struct S2 * p_2298)
{ /* block id: 537 */
    int16_t l_1128 = (-1L);
    uint64_t *l_1130 = &p_2298->g_26[2];
    uint64_t **l_1129 = &l_1130;
    int32_t *l_1135 = &p_2298->g_208;
    uint32_t *l_1136 = &p_2298->g_233[0][4].f1;
    int32_t *l_1137[4][7][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int16_t l_1141[2];
    int8_t **l_1157 = &p_2298->g_519;
    int16_t **l_1172[10][4][6] = {{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}},{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}},{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}},{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}},{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}},{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}},{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}},{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}},{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}},{{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247},{&p_2298->g_246,&p_2298->g_246,&p_2298->g_246,&p_2298->g_247,&p_2298->g_247,&p_2298->g_247}}};
    int16_t ***l_1171 = &l_1172[8][2][0];
    uint32_t l_1221 = 4294967289UL;
    struct S1 ***l_1254[6];
    int8_t *l_1263 = &p_2298->g_1072[5];
    int8_t **l_1262 = &l_1263;
    int32_t **l_1265 = &p_2298->g_272[0][3][6];
    int32_t ***l_1264 = &l_1265;
    int64_t *l_1266 = &p_2298->g_824;
    int64_t l_1275 = 1L;
    uint64_t *l_1418 = &p_2298->g_541;
    uint64_t **l_1417 = &l_1418;
    int64_t l_1425 = 0x7842B92149C700F0L;
    int32_t l_1453 = 0x323A46CEL;
    int32_t l_1470[9][8] = {{1L,0L,0L,1L,0x11C3D47DL,1L,0x3A24BC05L,8L},{1L,0L,0L,1L,0x11C3D47DL,1L,0x3A24BC05L,8L},{1L,0L,0L,1L,0x11C3D47DL,1L,0x3A24BC05L,8L},{1L,0L,0L,1L,0x11C3D47DL,1L,0x3A24BC05L,8L},{1L,0L,0L,1L,0x11C3D47DL,1L,0x3A24BC05L,8L},{1L,0L,0L,1L,0x11C3D47DL,1L,0x3A24BC05L,8L},{1L,0L,0L,1L,0x11C3D47DL,1L,0x3A24BC05L,8L},{1L,0L,0L,1L,0x11C3D47DL,1L,0x3A24BC05L,8L},{1L,0L,0L,1L,0x11C3D47DL,1L,0x3A24BC05L,8L}};
    uint8_t l_1475[1];
    uint32_t *l_1492 = &p_2298->g_537;
    uint32_t **l_1491 = &l_1492;
    uint8_t l_1512 = 252UL;
    int32_t l_1526 = (-8L);
    uint32_t l_1604 = 8UL;
    uint8_t l_1647 = 255UL;
    uint16_t l_1687 = 1UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1141[i] = 3L;
    for (i = 0; i < 6; i++)
        l_1254[i] = &p_2298->g_933;
    for (i = 0; i < 1; i++)
        l_1475[i] = 0x9EL;
lbl_1226:
    (*p_2298->g_1108) |= (+(l_1128 < (((-9L) & ((-10L) >= (l_1129 != &l_1130))) > (safe_add_func_int32_t_s_s((p_93 < ((*l_1136) |= (((safe_rshift_func_int16_t_s_s(p_91, 7)) < ((*l_1135) ^= (FAKE_DIVERGE(p_2298->local_1_offset, get_local_id(1), 10) != p_2298->g_168))) ^ (**p_90)))), 4294967295UL)))));
lbl_1375:
    for (p_2298->g_197 = 29; (p_2298->g_197 >= 6); p_2298->g_197 = safe_sub_func_uint32_t_u_u(p_2298->g_197, 3))
    { /* block id: 543 */
        int8_t l_1140 = 0L;
        int8_t l_1159[7][5] = {{4L,0x53L,4L,4L,0x53L},{4L,0x53L,4L,4L,0x53L},{4L,0x53L,4L,4L,0x53L},{4L,0x53L,4L,4L,0x53L},{4L,0x53L,4L,4L,0x53L},{4L,0x53L,4L,4L,0x53L},{4L,0x53L,4L,4L,0x53L}};
        int32_t l_1160 = (-4L);
        int64_t **l_1181 = (void*)0;
        int32_t **l_1219 = &p_2298->g_272[0][3][6];
        int32_t l_1223 = 0x70CCEB0EL;
        int64_t l_1240 = 4L;
        int32_t l_1243 = (-1L);
        uint32_t l_1245 = 0xD6C28A27L;
        int i, j;
        if (l_1140)
            break;
        if (l_1140)
            continue;
        if (((*p_2298->g_1108) = l_1141[1]))
        { /* block id: 547 */
            uint32_t l_1150 = 0xD9CBC26DL;
            int32_t l_1173 = 0x009A1D89L;
            int64_t *l_1213 = &p_2298->g_202;
            int32_t l_1220 = 0x2641BF80L;
            for (p_2298->g_832.f0 = 0; (p_2298->g_832.f0 >= 13); p_2298->g_832.f0 = safe_add_func_int32_t_s_s(p_2298->g_832.f0, 1))
            { /* block id: 550 */
                int64_t *l_1158 = &p_2298->g_824;
                int32_t l_1162 = (-7L);
                int64_t **l_1180 = &p_2298->g_550;
                l_1160 |= (safe_mul_func_int8_t_s_s((safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((**l_1157) = (((~p_91) ^ (l_1140 == (((*l_1158) &= (((((1UL && l_1140) | (l_1150 = 0UL)) , &p_2298->g_132) != &p_2298->g_132) && (((*l_1136) = p_91) >= (safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_2298->global_2_offset, get_global_id(2), 10), (((((safe_div_func_uint64_t_u_u((--(**l_1129)), (*p_2298->g_407))) | p_2298->g_475.f1) || 1UL) , &p_2298->g_519) != l_1157)))))) && l_1159[6][4]))) , (*l_1135))), p_92)), 1UL)), p_91));
                if ((safe_unary_minus_func_uint8_t_u(l_1162)))
                { /* block id: 557 */
                    (*p_2298->g_1165) = &l_1162;
                }
                else
                { /* block id: 559 */
                    uint8_t *l_1170 = &p_2298->g_803;
                    int32_t *l_1174 = &l_1162;
                    l_1173 &= (p_91 & (((*l_1170) |= (*l_1135)) != ((void*)0 == l_1171)));
                    for (p_2298->g_858.f0 = 1; (p_2298->g_858.f0 >= 0); p_2298->g_858.f0 -= 1)
                    { /* block id: 564 */
                        int32_t **l_1175 = &p_2298->g_272[0][3][6];
                        int i;
                        p_2298->g_982[(p_2298->g_858.f0 + 7)] = 0x6562BDB7L;
                        (*l_1175) = l_1174;
                        return (*p_2298->g_646);
                    }
                    (*l_1135) = (safe_sub_func_uint8_t_u_u(((*l_1170)--), (l_1180 == l_1181)));
                    if (l_1150)
                        break;
                }
                if (l_1162)
                    continue;
            }
            p_2298->g_1182 = (void*)0;
            (*p_2298->g_175) = (!0x4A913918L);
            if ((((safe_rshift_func_uint8_t_u_s(p_91, (safe_sub_func_int64_t_s_s((**p_2298->g_406), ((safe_sub_func_int64_t_s_s((0x467EA3BC69212A50L >= (0x08A9E8DDL < (l_1159[6][4] , (safe_lshift_func_int16_t_s_u(2L, 14))))), p_92)) & 0x2FF3B19EL))))) == (safe_mul_func_int8_t_s_s(1L, 1L))) > 0L))
            { /* block id: 577 */
                int64_t *l_1212 = &p_2298->g_202;
                uint32_t l_1222 = 4294967295UL;
                for (p_2298->g_160.f0 = 0; p_2298->g_160.f0 < 5; p_2298->g_160.f0 += 1)
                {
                    p_2298->g_171[p_2298->g_160.f0] = &p_2298->g_172[1];
                }
                for (p_2298->g_803 = 0; (p_2298->g_803 == 19); p_2298->g_803++)
                { /* block id: 581 */
                    uint8_t l_1224[4][5] = {{0x6BL,0x6BL,255UL,0xB5L,0xF9L},{0x6BL,0x6BL,255UL,0xB5L,0xF9L},{0x6BL,0x6BL,255UL,0xB5L,0xF9L},{0x6BL,0x6BL,255UL,0xB5L,0xF9L}};
                    int32_t l_1228[3][7] = {{0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L},{0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L},{0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L,0x07B2C2D3L}};
                    uint32_t l_1229 = 0UL;
                    int i, j;
                    if ((+(+(l_1224[2][2] ^= (safe_rshift_func_int16_t_s_u((safe_mod_func_int16_t_s_s(l_1159[6][4], (safe_div_func_int64_t_s_s((**p_2298->g_406), (safe_sub_func_uint32_t_u_u(p_91, (safe_rshift_func_int8_t_s_s((((safe_mod_func_uint8_t_u_u((0xD7F02C835CD649F9L & ((l_1173 , (safe_rshift_func_int16_t_s_u(((l_1212 == l_1213) , (((safe_unary_minus_func_int32_t_s((safe_div_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u(((void*)0 != l_1219), p_2298->g_9[0])) & 255UL), l_1220)))) >= l_1221) <= (-1L))), p_2298->g_848.f2))) , (**p_90))), (*p_2298->g_519))) >= 0x49E89CD5L) & l_1222), l_1223)))))))), p_92))))))
                    { /* block id: 583 */
                        (*l_1135) ^= 8L;
                    }
                    else
                    { /* block id: 585 */
                        (*p_2298->g_474) = p_2298->g_1225[1];
                        if (p_2298->g_408)
                            goto lbl_1226;
                    }
                    for (p_2298->g_838.f2 = 0; (p_2298->g_838.f2 <= 1); p_2298->g_838.f2 += 1)
                    { /* block id: 591 */
                        uint16_t l_1227 = 1UL;
                        if (l_1227)
                            break;
                        if (p_93)
                            continue;
                        --l_1229;
                    }
                    if ((l_1228[2][5] ^= 0x2AE5EBB5L))
                    { /* block id: 597 */
                        uint32_t *l_1234 = &p_2298->g_344[0][6];
                        volatile struct S0 *l_1236 = &p_2298->g_494;
                        (*l_1236) = (((*l_1234) = (safe_rshift_func_uint8_t_u_s(l_1222, 5))) , p_2298->g_1235);
                    }
                    else
                    { /* block id: 600 */
                        (*l_1219) = (void*)0;
                    }
                    if (l_1222)
                        continue;
                }
                (*l_1219) = l_1137[3][4][5];
            }
            else
            { /* block id: 606 */
                for (p_2298->g_858.f0 = (-10); (p_2298->g_858.f0 == 22); p_2298->g_858.f0 = safe_add_func_uint64_t_u_u(p_2298->g_858.f0, 5))
                { /* block id: 609 */
                    uint8_t l_1239 = 8UL;
                    return l_1239;
                }
            }
        }
        else
        { /* block id: 613 */
            int64_t l_1241 = 1L;
            int32_t l_1242 = 3L;
            int32_t l_1244 = (-1L);
            ++l_1245;
        }
        (*l_1135) = p_91;
    }
    if (((safe_add_func_int64_t_s_s((safe_add_func_int8_t_s_s((*l_1135), p_92)), ((*l_1266) ^= (((safe_mul_func_int16_t_s_s((&p_2298->g_933 != l_1254[4]), ((*p_2298->g_407) >= ((safe_div_func_uint8_t_u_u((((((safe_div_func_int32_t_s_s((safe_unary_minus_func_int64_t_s((-7L))), (safe_sub_func_uint16_t_u_u((p_2298->g_832.f2 = (!(((((*l_1157) = (*l_1157)) != ((*l_1262) = &p_2298->g_900[0])) , &p_2298->g_444) == l_1264))), (-1L))))) & (*l_1135)) & p_92) != 0UL) == 0xD55781DFL), p_2298->g_843.f2)) ^ (*l_1135))))) , &p_2298->g_247) == &p_2298->g_247)))) <= p_93))
    { /* block id: 622 */
        int64_t l_1283 = 0x146BEAF47C286CF8L;
        int32_t l_1308 = 0x76CF6543L;
        int8_t **l_1318 = &p_2298->g_519;
        int32_t l_1332 = 0x169F0DCAL;
        for (p_2298->g_903 = 28; (p_2298->g_903 == 40); p_2298->g_903 = safe_add_func_int8_t_s_s(p_2298->g_903, 6))
        { /* block id: 625 */
            int8_t **l_1317 = &l_1263;
            int32_t l_1329 = 0x144E9A1CL;
            for (p_2298->g_830.f2 = 0; (p_2298->g_830.f2 <= 3); p_2298->g_830.f2 += 1)
            { /* block id: 628 */
                int64_t *l_1269 = &p_2298->g_1270;
                int32_t *l_1284 = (void*)0;
                int i;
                (*l_1135) ^= ((((FAKE_DIVERGE(p_2298->global_1_offset, get_global_id(1), 10) , (GROUP_DIVERGE(1, 1) < p_2298->g_1072[(p_2298->g_830.f2 + 2)])) <= ((*l_1269) = ((*p_2298->g_407) = ((*l_1266) = p_2298->g_1072[(p_2298->g_830.f2 + 1)])))) , (safe_mod_func_int16_t_s_s(p_2298->g_1072[(p_2298->g_830.f2 + 2)], p_93))) & 0x0EL);
                if ((safe_add_func_uint16_t_u_u(0xD8FDL, l_1275)))
                { /* block id: 633 */
                    uint64_t l_1276 = 0x59F530352477CAB9L;
                    int64_t *l_1280 = &l_1275;
                    for (p_2298->g_830.f0 = 0; (p_2298->g_830.f0 <= 2); p_2298->g_830.f0 += 1)
                    { /* block id: 636 */
                        int64_t *l_1279 = &p_2298->g_824;
                        l_1276--;
                        (*l_1135) ^= ((l_1279 != l_1280) >= (safe_mul_func_uint16_t_u_u(p_2298->g_833.f1, p_2298->g_26[2])));
                        if (l_1283)
                            continue;
                        (**l_1264) = l_1284;
                    }
                    if (p_93)
                        continue;
                    return p_92;
                }
                else
                { /* block id: 644 */
                    uint8_t l_1307 = 0xB4L;
                    for (p_2298->g_1103.f0 = 2; (p_2298->g_1103.f0 >= 0); p_2298->g_1103.f0 -= 1)
                    { /* block id: 647 */
                        if (p_92)
                            break;
                        l_1308 ^= (safe_mul_func_int16_t_s_s(p_93, (safe_add_func_int64_t_s_s(p_93, (((((250UL > (safe_sub_func_int8_t_s_s(l_1283, ((*p_2298->g_549) != l_1269)))) < (((*p_2298->g_407) = ((*l_1269) = (safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(p_92, p_92)), ((safe_add_func_int32_t_s_s((safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s((~(safe_add_func_int16_t_s_s(((((((safe_div_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(4294967295UL, p_2298->g_846[1].f2)), GROUP_DIVERGE(1, 1))) > p_91) | p_91) , (-1L)) && p_91) , (*p_2298->g_247)), (*p_2298->g_246)))), 0x6A463096L)), (*p_2298->g_247))), p_91)) , p_91))))) == FAKE_DIVERGE(p_2298->global_0_offset, get_global_id(0), 10))) < (*p_2298->g_519)) , l_1307) , l_1283)))));
                    }
                    (*l_1135) = ((safe_mod_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((p_2298->g_395.f1 = ((*l_1136)--)), (l_1284 != (void*)0))), (((p_2298->g_836.f0 || (((safe_lshift_func_int16_t_s_u(p_91, 9)) && (l_1317 == l_1318)) , ((safe_rshift_func_uint8_t_u_s((safe_div_func_uint32_t_u_u((((safe_mod_func_uint16_t_u_u(p_2298->g_832.f2, (l_1332 = (safe_mod_func_int64_t_s_s((safe_sub_func_uint32_t_u_u((l_1308 = l_1329), (safe_div_func_uint16_t_u_u((((p_2298->g_841.f0 | 0xA573L) >= p_93) || (-3L)), (*p_2298->g_247))))), 8L))))) != p_92) , p_92), (*p_2298->g_175))), 1)) | 4L))) | 255UL) & p_2298->g_841.f2))) > p_93);
                }
            }
        }
    }
    else
    { /* block id: 661 */
        uint64_t l_1347 = 0x3677CCC98FE18FB8L;
        uint32_t *l_1355 = (void*)0;
        int32_t l_1424[9][3] = {{0x36D65804L,0x36D65804L,0x36D65804L},{0x36D65804L,0x36D65804L,0x36D65804L},{0x36D65804L,0x36D65804L,0x36D65804L},{0x36D65804L,0x36D65804L,0x36D65804L},{0x36D65804L,0x36D65804L,0x36D65804L},{0x36D65804L,0x36D65804L,0x36D65804L},{0x36D65804L,0x36D65804L,0x36D65804L},{0x36D65804L,0x36D65804L,0x36D65804L},{0x36D65804L,0x36D65804L,0x36D65804L}};
        int32_t l_1452 = (-4L);
        int8_t l_1467 = 0x71L;
        int64_t ***l_1552 = &p_2298->g_699[0];
        int64_t ***l_1553 = &p_2298->g_699[3];
        uint64_t **l_1586 = &l_1130;
        int32_t l_1587[8][3] = {{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L},{0x51D0EE42L,7L,0x51D0EE42L}};
        int16_t l_1656 = (-4L);
        int i, j;
        for (p_2298->g_833.f2 = 0; (p_2298->g_833.f2 <= 57); p_2298->g_833.f2 = safe_add_func_int32_t_s_s(p_2298->g_833.f2, 3))
        { /* block id: 664 */
            uint32_t l_1348 = 0x28E32D63L;
            uint32_t *l_1356 = &p_2298->g_537;
            int32_t l_1370 = 0x2AFAF747L;
            int64_t **l_1407 = &l_1266;
            int64_t ***l_1408 = &l_1407;
            uint32_t l_1427 = 0UL;
            int32_t l_1433[5] = {0x73F3D525L,0x73F3D525L,0x73F3D525L,0x73F3D525L,0x73F3D525L};
            int8_t l_1466 = 7L;
            uint8_t l_1471 = 0x54L;
            int i;
            for (p_2298->g_845.f0 = (-12); (p_2298->g_845.f0 == (-17)); p_2298->g_845.f0--)
            { /* block id: 667 */
                int64_t l_1345[1];
                uint32_t l_1366 = 4294967290UL;
                int32_t l_1371[10][8] = {{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L},{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L},{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L},{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L},{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L},{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L},{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L},{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L},{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L},{0x62652E44L,0x62652E44L,0x2CD6FA92L,0x68B608AAL,1L,0L,(-1L),0x32247181L}};
                int i, j;
                for (i = 0; i < 1; i++)
                    l_1345[i] = 0x7B9A0ED46ADE6864L;
                for (p_2298->g_854.f0 = (-2); (p_2298->g_854.f0 >= 23); p_2298->g_854.f0 = safe_add_func_int8_t_s_s(p_2298->g_854.f0, 6))
                { /* block id: 670 */
                    int32_t *l_1346[6][7][6] = {{{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36}},{{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36}},{{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36}},{{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36}},{{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36}},{{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36},{(void*)0,&p_2298->g_48,&p_2298->g_982[5],(void*)0,&p_2298->g_52,&p_2298->g_36}}};
                    uint32_t **l_1357[8] = {&l_1356,&l_1356,&l_1356,&l_1356,&l_1356,&l_1356,&l_1356,&l_1356};
                    uint8_t *l_1367 = &p_2298->g_197;
                    int i, j, k;
                    for (p_91 = 1; (p_91 <= 7); p_91 += 1)
                    { /* block id: 673 */
                        int32_t l_1344[7] = {4L,0x49436678L,4L,4L,0x49436678L,4L,4L};
                        int i;
                        l_1345[0] = ((*l_1135) &= (l_1344[0] = ((safe_lshift_func_int16_t_s_s(p_2298->g_506[p_91], 12)) || (safe_unary_minus_func_int64_t_s(((*p_2298->g_407) |= ((p_92 , ((safe_lshift_func_int8_t_s_u(0x20L, p_2298->g_626.f1)) , 253UL)) > (7UL && GROUP_DIVERGE(1, 1)))))))));
                        (*l_1265) = l_1346[4][3][3];
                        if (l_1347)
                            continue;
                        l_1348 = p_91;
                    }
                    (*l_1135) ^= (safe_mod_func_int8_t_s_s((0x39L && (safe_add_func_uint64_t_u_u(((l_1347 < ((l_1348 && p_92) & (l_1355 != (l_1356 = l_1356)))) & 0x28A04D6998C5C7C3L), (((safe_sub_func_uint8_t_u_u(((*l_1367) ^= (((*l_1136) = ((safe_mod_func_int32_t_s_s(0x56155995L, ((safe_rshift_func_int16_t_s_s(((safe_mod_func_int8_t_s_s(l_1366, 0x68L)) ^ l_1345[0]), 8)) || p_93))) , 0x703D4EEBL)) & p_91)), FAKE_DIVERGE(p_2298->local_0_offset, get_local_id(0), 10))) >= p_91) ^ l_1347)))), p_93));
                    for (l_1348 = (-13); (l_1348 >= 22); l_1348 = safe_add_func_int32_t_s_s(l_1348, 1))
                    { /* block id: 688 */
                        uint32_t l_1372 = 0xBF2AB860L;
                        --l_1372;
                        if (p_2298->g_803)
                            goto lbl_1375;
                    }
                }
                for (p_2298->g_168 = (-24); (p_2298->g_168 <= (-10)); p_2298->g_168 = safe_add_func_uint64_t_u_u(p_2298->g_168, 5))
                { /* block id: 695 */
                    int32_t l_1384[8][5] = {{(-1L),(-1L),0x7E48816CL,(-1L),(-1L)},{(-1L),(-1L),0x7E48816CL,(-1L),(-1L)},{(-1L),(-1L),0x7E48816CL,(-1L),(-1L)},{(-1L),(-1L),0x7E48816CL,(-1L),(-1L)},{(-1L),(-1L),0x7E48816CL,(-1L),(-1L)},{(-1L),(-1L),0x7E48816CL,(-1L),(-1L)},{(-1L),(-1L),0x7E48816CL,(-1L),(-1L)},{(-1L),(-1L),0x7E48816CL,(-1L),(-1L)}};
                    struct S0 *l_1385 = &p_2298->g_1095;
                    int32_t l_1401 = 4L;
                    int32_t l_1404 = 0x16F272F2L;
                    int i, j;
                    for (p_2298->g_412 = 29; (p_2298->g_412 != 9); p_2298->g_412--)
                    { /* block id: 698 */
                        struct S0 **l_1386 = &l_1385;
                        (*l_1135) = (p_93 > (safe_rshift_func_uint16_t_u_u(65535UL, (safe_sub_func_int16_t_s_s(p_93, ((l_1384[0][2] , l_1356) != &p_2298->g_537))))));
                        (*l_1386) = l_1385;
                    }
                    l_1404 &= (safe_add_func_uint32_t_u_u(((l_1384[0][2] , (++p_2298->g_537)) , (safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(p_2298->g_843.f2, (((~0x2A85L) || (safe_rshift_func_int8_t_s_u(((p_2298->g_1397 == (p_2298->g_1400 , &p_2298->g_1398)) || l_1401), 0))) , ((((*l_1356)++) , (*l_1129)) == &l_1347)))), (*p_2298->g_519)))), l_1370));
                    for (p_2298->g_473.f2 = 24; (p_2298->g_473.f2 != 13); p_2298->g_473.f2--)
                    { /* block id: 707 */
                        (*l_1135) &= (-1L);
                    }
                }
            }
            if (((((*l_1408) = l_1407) != (*p_2298->g_409)) , (((1UL && (safe_lshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((0xC0CFL <= GROUP_DIVERGE(2, 1)), (!(((**l_1407) = (safe_rshift_func_uint16_t_u_s(p_91, 12))) >= (((l_1417 != (void*)0) | ((safe_div_func_int8_t_s_s((safe_mod_func_int16_t_s_s((p_2298->g_1423 , l_1370), (*p_2298->g_246))), 1UL)) ^ 0x26L)) < l_1347))))), 1L)), p_93))) < 1UL) , p_91)))
            { /* block id: 714 */
                int16_t l_1426 = 0x10F1L;
                ++l_1427;
                if (p_91)
                    continue;
            }
            else
            { /* block id: 717 */
                int32_t l_1432[7];
                int32_t l_1434 = 0x505DDCDEL;
                int32_t l_1435[3][6] = {{0x5CC47AB0L,0x0B0B0A28L,0x5CC47AB0L,0x5CC47AB0L,0x0B0B0A28L,0x5CC47AB0L},{0x5CC47AB0L,0x0B0B0A28L,0x5CC47AB0L,0x5CC47AB0L,0x0B0B0A28L,0x5CC47AB0L},{0x5CC47AB0L,0x0B0B0A28L,0x5CC47AB0L,0x5CC47AB0L,0x0B0B0A28L,0x5CC47AB0L}};
                uint32_t *l_1441 = &p_2298->g_1400.f3;
                uint64_t **l_1442[6] = {&l_1130,(void*)0,&l_1130,&l_1130,(void*)0,&l_1130};
                int i, j;
                for (i = 0; i < 7; i++)
                    l_1432[i] = 0x0E4308B4L;
                for (p_2298->g_856.f0 = 0; (p_2298->g_856.f0 < (-28)); p_2298->g_856.f0 = safe_sub_func_int64_t_s_s(p_2298->g_856.f0, 9))
                { /* block id: 720 */
                    uint8_t l_1436[3][2] = {{0xECL,0xECL},{0xECL,0xECL},{0xECL,0xECL}};
                    int i, j;
                    l_1436[2][1]++;
                    (*l_1265) = &l_1424[3][0];
                }
                if ((safe_div_func_uint32_t_u_u(((l_1424[1][1] , l_1424[1][1]) , ((((*l_1441) = 1UL) , l_1442[2]) != p_90)), (((l_1427 || (safe_add_func_uint16_t_u_u(((6L & l_1434) != ((*l_1135) < 0x468626C2FAF36311L)), l_1434))) , 2UL) && 6L))))
                { /* block id: 725 */
                    if (l_1424[5][1])
                        break;
                }
                else
                { /* block id: 727 */
                    uint64_t l_1445 = 18446744073709551615UL;
                    (**l_1264) = &l_1370;
                    l_1424[6][1] ^= ((*l_1135) = l_1445);
                }
                for (p_2298->g_837.f2 = 0; (p_2298->g_837.f2 <= 5); p_2298->g_837.f2 += 1)
                { /* block id: 734 */
                    int32_t l_1456 = 1L;
                    int32_t l_1457 = 0L;
                    int32_t l_1459[8] = {3L,7L,3L,3L,7L,3L,3L,7L};
                    int8_t l_1460 = (-8L);
                    uint64_t **l_1487[10][4] = {{&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,&l_1418,&l_1418,&l_1418},{&l_1418,&l_1418,&l_1418,&l_1418}};
                    int i, j;
                    if ((safe_sub_func_int32_t_s_s((GROUP_DIVERGE(2, 1) , ((((void*)0 != &p_2298->g_171[4]) , p_2298->g_900[p_2298->g_837.f2]) && ((l_1370 & (p_2298->g_1072[p_2298->g_837.f2] = (((((safe_mul_func_uint16_t_u_u(p_93, 0x3614L)) , ((((*l_1441) = FAKE_DIVERGE(p_2298->local_1_offset, get_local_id(1), 10)) , ((-9L) & ((l_1452 &= (0x31BF0044L & ((safe_div_func_uint64_t_u_u(0xD88A059FF2BA705AL, l_1424[1][1])) >= GROUP_DIVERGE(1, 1)))) == l_1370))) | l_1424[1][1])) , (*l_1135)) , l_1427) | p_93))) && p_93))), l_1453)))
                    { /* block id: 738 */
                        int32_t l_1454 = 0x564CE277L;
                        int32_t l_1455 = 0x640E6D11L;
                        int32_t l_1458 = 0x504E4727L;
                        int32_t l_1461 = (-1L);
                        int32_t l_1462 = 0L;
                        int32_t l_1463 = 0x11CE5465L;
                        int32_t l_1464 = 0x2B15E4E8L;
                        int64_t l_1465[6];
                        int64_t l_1468 = 0x4C1EF82B70983013L;
                        int32_t l_1469[8] = {0L,(-1L),0L,0L,(-1L),0L,0L,(-1L)};
                        int i;
                        for (i = 0; i < 6; i++)
                            l_1465[i] = (-9L);
                        (*l_1135) |= p_91;
                        l_1471++;
                        (*l_1135) = (0x167DF729L > 1L);
                        l_1475[0]--;
                    }
                    else
                    { /* block id: 743 */
                        uint64_t l_1488 = 18446744073709551608UL;
                        (*l_1408) = &l_1266;
                        (*l_1135) = (safe_unary_minus_func_uint16_t_u(((safe_lshift_func_int16_t_s_u(((*p_2298->g_247) ^= l_1467), (safe_add_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((safe_add_func_int8_t_s_s((*p_2298->g_519), (&p_2298->g_731 == l_1137[3][4][5]))), 0x11CAB8C785B047C8L)), p_93)))) , (((&p_2298->g_646 == l_1487[8][2]) & (((void*)0 != (*p_2298->g_645)) ^ l_1488)) , 65535UL))));
                        return l_1424[1][1];
                    }
                }
                if ((safe_rshift_func_int8_t_s_s(0x1DL, ((*p_2298->g_519) = (l_1491 == (p_92 , p_2298->g_1493))))))
                { /* block id: 751 */
                    int32_t **l_1505[1][2];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_1505[i][j] = &p_2298->g_272[0][3][6];
                    }
                    for (p_2298->g_1400.f3 = 0; (p_2298->g_1400.f3 > 8); p_2298->g_1400.f3 = safe_add_func_int32_t_s_s(p_2298->g_1400.f3, 6))
                    { /* block id: 754 */
                        uint8_t *l_1504[7];
                        int32_t **l_1506 = &l_1135;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_1504[i] = &p_2298->g_197;
                        (**l_1506) &= (safe_rshift_func_uint8_t_u_u((l_1434 = ((~(-7L)) ^ (safe_mod_func_uint8_t_u_u(p_91, (safe_lshift_func_uint8_t_u_u(253UL, 5)))))), ((l_1505[0][0] = (*l_1264)) == l_1506)));
                        (**l_1264) = (void*)0;
                        if (p_92)
                            break;
                    }
                }
                else
                { /* block id: 761 */
                    (**p_2298->g_933) = (**p_2298->g_933);
                    for (p_2298->g_1095.f2 = 0; (p_2298->g_1095.f2 == 1); ++p_2298->g_1095.f2)
                    { /* block id: 765 */
                        (*l_1135) |= l_1347;
                    }
                }
            }
        }
        for (p_2298->g_395.f1 = 0; (p_2298->g_395.f1 <= 3); p_2298->g_395.f1 += 1)
        { /* block id: 773 */
            int16_t l_1509 = 0x1D1DL;
            int32_t l_1510 = (-9L);
            int32_t l_1511[6] = {0x2E5CCD64L,(-1L),0x2E5CCD64L,0x2E5CCD64L,(-1L),0x2E5CCD64L};
            uint32_t **l_1546 = &l_1492;
            int16_t l_1650 = 2L;
            uint16_t l_1684 = 0x5E35L;
            uint32_t l_1709 = 4294967295UL;
            int i;
            ++l_1512;
            for (p_2298->g_848.f2 = 1; (p_2298->g_848.f2 <= 4); p_2298->g_848.f2 += 1)
            { /* block id: 777 */
                uint8_t *l_1515 = &l_1475[0];
                int32_t l_1529 = 0x0EEFCCCEL;
                uint16_t *l_1530 = &p_2298->g_846[1].f2;
                struct S1 *l_1539 = &p_2298->g_831;
                uint8_t l_1547[1];
                int32_t l_1566 = 9L;
                uint32_t *l_1590 = &p_2298->g_537;
                int32_t l_1595 = 5L;
                int64_t *l_1612 = &p_2298->g_202;
                int16_t l_1626[9][10][2] = {{{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L}},{{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L}},{{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L}},{{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L}},{{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L}},{{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L}},{{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L}},{{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L}},{{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L},{0x5CE3L,9L}}};
                int32_t l_1652 = (-1L);
                int32_t l_1653 = 0x7541C8F3L;
                int32_t l_1654 = 0x531498B1L;
                int32_t l_1655 = 5L;
                int32_t l_1657 = (-9L);
                int32_t l_1658 = 0x7F0E4F72L;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_1547[i] = 1UL;
                for (p_2298->g_684.f2 = 0; (p_2298->g_684.f2 <= 4); p_2298->g_684.f2 += 1)
                { /* block id: 780 */
                    int i;
                    if (p_2298->g_982[p_2298->g_684.f2])
                        break;
                }
                (*l_1135) ^= ((((-3L) == ((*l_1515) = l_1511[1])) > ((safe_rshift_func_int8_t_s_u(((safe_div_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u(l_1467, 1)) <= (&p_2298->g_699[2] == &p_2298->g_406)), (safe_sub_func_int64_t_s_s((l_1424[1][1] ^= ((safe_mod_func_int64_t_s_s((l_1526 ^ (safe_div_func_uint16_t_u_u((l_1529 , (0x152CL <= ((*l_1530) = 0x30DDL))), l_1529))), l_1511[4])) || (*p_2298->g_247))), 0x26D04EE78BF151A3L)))) , l_1511[5]), 1)) , l_1511[1])) || p_91);
                if ((l_1424[1][2] = ((safe_mul_func_int16_t_s_s(0x4D06L, (l_1529 &= (((safe_mod_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_s((&p_2298->g_628 != (void*)0), ((+((*p_2298->g_933) == l_1539)) == ((((p_93 = ((*p_2298->g_246) = (safe_mod_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((safe_div_func_uint64_t_u_u(((*p_2298->g_175) , (**p_2298->g_170)), ((l_1546 == &l_1492) , 9L))), l_1547[0])), (*p_2298->g_519))))) || p_91) & 0x7C4B02093925AC4AL) , l_1511[1])))) <= (*l_1135)) <= l_1347), p_91)), p_92)) | (**p_90)) && 4L)))) || l_1424[8][1])))
                { /* block id: 791 */
                    uint32_t *l_1554 = &p_2298->g_1400.f3;
                    int32_t *l_1555[7];
                    int32_t *l_1556 = (void*)0;
                    int32_t **l_1557 = &l_1556;
                    uint8_t l_1659[2];
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_1555[i] = &p_2298->g_166;
                    for (i = 0; i < 2; i++)
                        l_1659[i] = 0x20L;
                    l_1566 |= ((!(safe_sub_func_int32_t_s_s(((l_1555[5] = (((*l_1554) ^= (safe_rshift_func_int16_t_s_s(l_1529, (l_1552 != l_1553)))) , &l_1529)) != ((*l_1557) = l_1556)), ((*l_1135) ^= (safe_mod_func_int64_t_s_s(((safe_rshift_func_int16_t_s_u(((*p_2298->g_247) &= (p_2298->g_1400.f5 >= ((*l_1136) = p_93))), 3)) ^ (safe_lshift_func_int16_t_s_s(4L, 9))), ((safe_lshift_func_uint16_t_u_s(((p_2298->g_52 ^ GROUP_DIVERGE(2, 1)) & l_1467), p_92)) | p_91))))))) != p_91);
                    l_1566 = (FAKE_DIVERGE(p_2298->group_1_offset, get_group_id(1), 10) , ((safe_mod_func_int8_t_s_s((p_2298->g_1569 && (safe_rshift_func_uint16_t_u_u((((safe_sub_func_int32_t_s_s((safe_lshift_func_int16_t_s_u(((safe_lshift_func_uint8_t_u_s(((*l_1515) = ((~(safe_mul_func_int8_t_s_s(((*p_2298->g_519) = ((((0L != (l_1529 ^= (safe_add_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s(((*l_1530) = p_93), p_92)), ((0x715A4A9D096B582FL > (p_92 <= (*p_2298->g_246))) , (safe_div_func_int64_t_s_s((((p_2298->g_233[p_2298->g_395.f1][(p_2298->g_848.f2 + 1)] , l_1511[1]) , (*p_2298->g_247)) , 0x46275C7BF8D6C042L), (*p_2298->g_407)))))))) > p_2298->g_1095.f6) < p_91) >= 0x9607A060L)), l_1424[1][1]))) | (*p_2298->g_407))), 7)) , (*p_2298->g_246)), 13)), 0L)) , &p_2298->g_171[2]) == l_1586), 0))), l_1509)) , l_1587[3][1]));
                    (*l_1135) = ((safe_sub_func_uint64_t_u_u(((void*)0 == l_1590), ((*l_1130) = 0x2F643D82F46E1304L))) == (((((((((safe_sub_func_int32_t_s_s((((*l_1515) = GROUP_DIVERGE(0, 1)) > 0x5EL), ((safe_lshift_func_int8_t_s_s(((255UL != (((!(l_1467 == 4L)) == (((***p_2298->g_409) || (p_92 & (*p_2298->g_247))) > (-1L))) && p_91)) , l_1595), l_1424[1][1])) | (*p_2298->g_246)))) , 7UL) <= 9UL) >= 0x00BCE47CL) != p_2298->g_845.f2) < GROUP_DIVERGE(1, 1)) ^ l_1529) , p_93) , (***p_2298->g_409)));
                    if ((safe_add_func_int16_t_s_s((safe_add_func_int64_t_s_s(l_1452, (***p_2298->g_409))), p_91)))
                    { /* block id: 807 */
                        int64_t *l_1611 = &p_2298->g_202;
                        int32_t l_1617 = 0x05D8251CL;
                        uint8_t *l_1645 = &l_1512;
                        uint8_t l_1646 = 0xC1L;
                        int i;
                        l_1511[1] &= ((0UL > (((*p_2298->g_246) = (((safe_mod_func_int16_t_s_s((p_91 ^ (--(**l_1129))), l_1604)) == (((safe_rshift_func_int16_t_s_s((safe_add_func_int32_t_s_s(((*l_1135) = (l_1424[1][1] = ((p_92 , p_91) , ((*p_2298->g_519) , (safe_div_func_uint64_t_u_u((((*l_1515) = ((l_1611 == l_1612) & ((safe_lshift_func_int8_t_s_s((safe_add_func_int8_t_s_s((!((**l_1262) &= 1L)), 7UL)), l_1510)) < l_1617))) && p_2298->g_804.f2), (-1L))))))), p_91)), 8)) >= 0x710C32CEL) ^ (*p_2298->g_407))) < l_1510)) > p_2298->g_965)) , l_1529);
                        (*l_1135) = (((**p_90) &= ((&l_1529 == (void*)0) , ((((*p_2298->g_519) = ((**l_1262) = (safe_rshift_func_int16_t_s_s((p_90 == (void*)0), ((safe_div_func_int16_t_s_s(((GROUP_DIVERGE(0, 1) & (((***p_2298->g_409) <= (0x117B263FL != (safe_mod_func_int32_t_s_s((*l_1135), ((+(safe_rshift_func_int8_t_s_u(((((p_2298->g_1072[5] > 0xC67D9335L) | p_92) , 5UL) , 0x30L), 4))) & l_1617))))) < (-3L))) , (*l_1135)), p_92)) | l_1626[4][4][1]))))) , 0x603C4A513ACDA38EL) , 9UL))) || FAKE_DIVERGE(p_2298->local_0_offset, get_local_id(0), 10));
                        (*l_1135) = (((safe_mod_func_uint32_t_u_u(p_2298->g_233[0][4].f7, p_2298->g_859.f0)) < 1L) == ((safe_sub_func_uint8_t_u_u((((*l_1418)++) , GROUP_DIVERGE(1, 1)), p_91)) , (safe_lshift_func_uint8_t_u_u(((*l_1645) &= (((**l_1157) = (safe_mod_func_int32_t_s_s((l_1509 & ((safe_rshift_func_int8_t_s_s(((--(*l_1515)) & (safe_add_func_int32_t_s_s((((*l_1263) ^= p_91) | (FAKE_DIVERGE(p_2298->global_0_offset, get_global_id(0), 10) <= (safe_add_func_uint32_t_u_u((l_1511[1] ^= p_2298->g_1569), ((void*)0 == l_1611))))), 0L))), 4)) >= p_93)), 0x2FDD8BDCL))) == 0x3AL)), l_1646))));
                        l_1647++;
                    }
                    else
                    { /* block id: 827 */
                        int32_t l_1651[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1651[i] = 1L;
                        l_1511[1] ^= ((*l_1135) = (*p_2298->g_175));
                        l_1659[0]--;
                        return p_92;
                    }
                }
                else
                { /* block id: 833 */
                    int32_t l_1666 = 0x6528DD7BL;
                    struct S1 ****l_1667 = &l_1254[0];
                    (*p_2298->g_175) = ((0x2CEAA96EL >= ((*p_2298->g_1108) = (safe_mul_func_int8_t_s_s((safe_add_func_int32_t_s_s((l_1666 = (GROUP_DIVERGE(1, 1) < p_93)), (l_1667 != (void*)0))), (safe_sub_func_uint16_t_u_u((!((((((*l_1530) = ((((safe_sub_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s(((p_91 != (*l_1135)) || (safe_lshift_func_int8_t_s_s((safe_mod_func_int64_t_s_s((safe_div_func_int16_t_s_s((((*l_1135) = l_1347) | (safe_rshift_func_int8_t_s_u((*p_2298->g_519), 5))), (safe_add_func_int64_t_s_s(0L, FAKE_DIVERGE(p_2298->global_2_offset, get_global_id(2), 10))))), l_1652)), 3))), p_92)) != 0UL), l_1509)) && (-10L)) <= FAKE_DIVERGE(p_2298->group_0_offset, get_group_id(0), 10)) & 0x25F7C444E32D4996L)) && 0x1C44L) ^ p_2298->g_132) == 1UL) || l_1656)), (*p_2298->g_247))))))) > p_2298->g_852.f2);
                    for (p_2298->g_395.f3 = 0; (p_2298->g_395.f3 <= 2); p_2298->g_395.f3 += 1)
                    { /* block id: 841 */
                        int i, j;
                        (*l_1265) = &l_1587[(p_2298->g_848.f2 + 1)][p_2298->g_395.f3];
                        return p_2298->g_173[p_2298->g_848.f2];
                    }
                }
            }
            l_1684++;
            ++l_1687;
            for (p_2298->g_843.f0 = 9; (p_2298->g_843.f0 >= 0); p_2298->g_843.f0 -= 1)
            { /* block id: 851 */
                int64_t l_1700 = 0x74AC9B5090EB7145L;
                uint64_t **l_1701 = &l_1130;
                int32_t l_1705 = 0x02BDBB47L;
                int32_t l_1706 = 0x30C2329CL;
                int32_t l_1707 = 0x21B323B8L;
                int32_t l_1708 = (-1L);
                int i, j;
                for (p_2298->g_541 = 0; (p_2298->g_541 <= 3); p_2298->g_541 += 1)
                { /* block id: 854 */
                    uint64_t ***l_1702 = &l_1586;
                    uint32_t l_1703 = 4294967287UL;
                    (*l_1135) &= ((((*l_1157) = (void*)0) == ((**p_2298->g_933) , &p_2298->g_1072[5])) && (safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((safe_div_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(p_93, (safe_mod_func_int16_t_s_s(l_1700, ((((p_91 & ((((*l_1702) = l_1701) == (p_90 = p_90)) & l_1703)) < p_2298->g_506[5]) , l_1700) , p_92))))), l_1511[4])) ^ 18446744073709551615UL), l_1700)), l_1650)));
                    for (p_2298->g_844.f0 = 0; (p_2298->g_844.f0 <= 9); p_2298->g_844.f0 += 1)
                    { /* block id: 861 */
                        return p_91;
                    }
                    return (*p_2298->g_646);
                }
                p_2298->g_1704 = p_2298->g_233[p_2298->g_395.f1][(p_2298->g_395.f1 + 3)];
                --l_1709;
            }
        }
        for (p_2298->g_843.f0 = 0; (p_2298->g_843.f0 <= 8); p_2298->g_843.f0 = safe_add_func_int32_t_s_s(p_2298->g_843.f0, 2))
        { /* block id: 872 */
            int32_t *l_1714 = &l_1470[5][1];
            (*l_1265) = l_1714;
            (*p_2298->g_175) ^= (*l_1714);
            (*l_1135) |= ((*l_1714) <= (*p_2298->g_519));
            for (p_2298->g_834.f2 = 0; p_2298->g_834.f2 < 8; p_2298->g_834.f2 += 1)
            {
                for (l_1221 = 0; l_1221 < 3; l_1221 += 1)
                {
                    l_1587[p_2298->g_834.f2][l_1221] = 0x0A69FD06L;
                }
            }
        }
        p_2298->g_1715 = (**p_2298->g_933);
    }
    return (*l_1135);
}


/* ------------------------------------------ */
/* 
 * reads : p_2298->g_78 p_2298->g_43 p_2298->g_30 p_2298->g_26 p_2298->g_9 p_2298->g_27 p_2298->g_52 p_2298->g_159 p_2298->g_160 p_2298->g_48 p_2298->g_132 p_2298->g_36 p_2298->g_166 p_2298->g_170 p_2298->g_175 p_2298->g_168 p_2298->g_197 p_2298->g_40 p_2298->g_165 p_2298->g_208 p_2298->g_412 p_2298->g_836.f2 p_2298->g_444 p_2298->g_272 p_2298->g_999 p_2298->g_395.f2 p_2298->g_859.f0 p_2298->g_837.f2 p_2298->g_246 p_2298->g_1033 p_2298->g_841.f0 p_2298->g_407 p_2298->g_408 p_2298->g_247 p_2298->g_256 p_2298->g_233 p_2298->g_202 p_2298->g_858.f0 p_2298->g_834.f2 p_2298->g_839.f2 p_2298->g_731 p_2298->g_1072 p_2298->g_838.f2 p_2298->g_171 p_2298->g_173 p_2298->g_172 p_2298->g_519 p_2298->g_1073 p_2298->g_830.f0 p_2298->g_1095 p_2298->g_1099 p_2298->g_506 p_2298->g_1103 p_2298->g_933 p_2298->g_474 p_2298->g_1108 p_2298->g_42 p_2298->g_537 p_2298->g_848.f0 p_2298->g_841.f2 p_2298->g_842.f2 p_2298->g_844.f0 p_2298->g_851.f0 p_2298->g_853.f2 p_2298->g_361.f0
 * writes: p_2298->g_78 p_2298->g_132 p_2298->g_52 p_2298->g_165 p_2298->g_166 p_2298->g_168 p_2298->g_197 p_2298->g_208 p_2298->g_412 p_2298->g_836.f2 p_2298->g_857.f0 p_2298->g_395.f6 p_2298->g_272 p_2298->g_859.f0 p_2298->g_837.f2 p_2298->g_834.f2 p_2298->g_803 p_2298->g_408 p_2298->g_395 p_2298->g_830.f0 p_2298->g_475 p_2298->g_841.f2 p_2298->g_842.f2 p_2298->g_982
 */
int32_t  func_106(uint64_t * p_107, uint64_t * p_108, struct S2 * p_2298)
{ /* block id: 32 */
    int8_t l_119 = 1L;
    int32_t l_983 = 5L;
    int32_t l_984[9][1][1];
    int32_t l_1074 = (-1L);
    int16_t **l_1077 = &p_2298->g_246;
    int64_t ***l_1106 = &p_2298->g_549;
    int32_t **l_1117 = &p_2298->g_272[0][3][6];
    int32_t ***l_1116 = &l_1117;
    int32_t **l_1118 = (void*)0;
    uint16_t *l_1119 = &p_2298->g_841.f2;
    uint16_t *l_1120 = (void*)0;
    uint16_t *l_1121[3];
    uint8_t *l_1122 = &p_2298->g_803;
    int32_t *l_1123 = &p_2298->g_982[6];
    uint64_t l_1124 = 1UL;
    int i, j, k;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_984[i][j][k] = (-8L);
        }
    }
    for (i = 0; i < 3; i++)
        l_1121[i] = &p_2298->g_847[3].f2;
    for (p_2298->g_78 = 20; (p_2298->g_78 <= 25); p_2298->g_78 = safe_add_func_int64_t_s_s(p_2298->g_78, 7))
    { /* block id: 35 */
        uint64_t l_129[5] = {0xDE9127F4FEF511E7L,0xDE9127F4FEF511E7L,0xDE9127F4FEF511E7L,0xDE9127F4FEF511E7L,0xDE9127F4FEF511E7L};
        int8_t *l_176 = &l_119;
        int32_t *l_978 = (void*)0;
        int32_t *l_979 = (void*)0;
        int32_t *l_980 = &p_2298->g_412;
        int32_t *l_981[3][8] = {{&p_2298->g_982[6],&p_2298->g_27,&p_2298->g_982[6],&p_2298->g_27,&p_2298->g_982[6],&p_2298->g_982[6],&p_2298->g_27,&p_2298->g_982[6]},{&p_2298->g_982[6],&p_2298->g_27,&p_2298->g_982[6],&p_2298->g_27,&p_2298->g_982[6],&p_2298->g_982[6],&p_2298->g_27,&p_2298->g_982[6]},{&p_2298->g_982[6],&p_2298->g_27,&p_2298->g_982[6],&p_2298->g_27,&p_2298->g_982[6],&p_2298->g_982[6],&p_2298->g_27,&p_2298->g_982[6]}};
        uint8_t l_985 = 0x15L;
        int i, j;
        l_983 ^= (safe_mod_func_int32_t_s_s(((*l_980) ^= func_113(p_2298->g_43, (((l_119 > func_120(func_124(&p_2298->g_78, l_129[4], ((void*)0 == &l_119), ((safe_mul_func_uint8_t_u_u((0L > (p_2298->g_132 = l_129[4])), ((((safe_add_func_int8_t_s_s((safe_add_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((p_2298->g_30 || (*p_108)), 1UL)) , l_119) >= 0x0FL), p_2298->g_9[0])), l_119)) > (-1L)) == p_2298->g_9[0]) ^ 0x203DL))) , p_2298->g_26[2]), p_2298), l_176, p_107, p_2298)) , l_129[4]) && l_119), l_119, l_119, l_119, p_2298)), l_119));
        --l_985;
        for (p_2298->g_836.f2 = (-28); (p_2298->g_836.f2 <= 31); p_2298->g_836.f2 = safe_add_func_int32_t_s_s(p_2298->g_836.f2, 7))
        { /* block id: 453 */
            int32_t l_998 = 0x4CB69C2FL;
            int32_t l_1003 = 0x3A9E987AL;
            int32_t l_1004 = 1L;
            struct S1 ****l_1041 = &p_2298->g_932;
            int16_t **l_1075 = (void*)0;
            for (p_2298->g_857.f0 = 22; (p_2298->g_857.f0 <= 27); p_2298->g_857.f0++)
            { /* block id: 456 */
                uint16_t l_1005 = 0xBF42L;
                struct S1 ****l_1040 = &p_2298->g_932;
                int32_t l_1094 = 4L;
                if (l_983)
                    break;
                for (l_119 = 0; (l_119 == 22); l_119 = safe_add_func_int16_t_s_s(l_119, 6))
                { /* block id: 460 */
                    int32_t l_997 = 0x47C6A4D1L;
                    uint32_t l_1002[9][2] = {{5UL,0UL},{5UL,0UL},{5UL,0UL},{5UL,0UL},{5UL,0UL},{5UL,0UL},{5UL,0UL},{5UL,0UL},{5UL,0UL}};
                    int i, j;
                    for (p_2298->g_395.f6 = (-19); (p_2298->g_395.f6 > 32); ++p_2298->g_395.f6)
                    { /* block id: 463 */
                        int32_t **l_996 = &l_981[2][5];
                        (*l_996) = (*p_2298->g_444);
                        if (l_997)
                            continue;
                        return l_998;
                    }
                    (*p_2298->g_999) = (*p_2298->g_444);
                    for (p_2298->g_166 = 0; (p_2298->g_166 < 6); ++p_2298->g_166)
                    { /* block id: 471 */
                        if (l_1002[7][1])
                            break;
                        return p_2298->g_395.f2;
                    }
                    --l_1005;
                }
                for (p_2298->g_859.f0 = 0; (p_2298->g_859.f0 > (-15)); p_2298->g_859.f0--)
                { /* block id: 479 */
                    int32_t l_1034[2][1][9] = {{{0x656FA349L,0x35ED4302L,0x35ED4302L,0x656FA349L,0x656FA349L,0x35ED4302L,0x35ED4302L,0x656FA349L,0x656FA349L}},{{0x656FA349L,0x35ED4302L,0x35ED4302L,0x656FA349L,0x656FA349L,0x35ED4302L,0x35ED4302L,0x656FA349L,0x656FA349L}}};
                    struct S1 *****l_1042 = &l_1041;
                    uint16_t *l_1047 = &p_2298->g_834.f2;
                    uint8_t *l_1052[4] = {&p_2298->g_803,&p_2298->g_803,&p_2298->g_803,&p_2298->g_803};
                    int64_t ***l_1089[4];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_1089[i] = (void*)0;
                    for (p_2298->g_837.f2 = 0; (p_2298->g_837.f2 < 22); p_2298->g_837.f2++)
                    { /* block id: 482 */
                        uint64_t l_1035 = 0x039FAAF3E96A966BL;
                        int32_t l_1036 = 0x516ACF11L;
                        int32_t l_1037[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1037[i] = (-1L);
                        l_1037[0] = (((void*)0 == &l_119) | (((*p_2298->g_246) > 0x9062L) != (l_1036 |= (safe_add_func_int16_t_s_s(0x77E9L, (safe_add_func_int16_t_s_s(0x3B05L, ((l_1003 &= 0x1C51L) , (safe_unary_minus_func_uint8_t_u((safe_sub_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(((safe_add_func_uint32_t_u_u(((safe_sub_func_uint32_t_u_u(l_1005, (safe_add_func_int64_t_s_s((safe_div_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_u(((GROUP_DIVERGE(1, 1) , (safe_div_func_int8_t_s_s(((p_2298->g_1033 , l_998) || l_1034[1][0][8]), p_2298->g_836.f2))) ^ 0x2B4E5962D30154EDL), p_2298->g_841.f0)) == l_119), l_984[4][0][0])), (*p_2298->g_407))))) >= l_1035), l_1035)) < l_1034[1][0][8]), 6)) == (*p_2298->g_247)), 0UL))))))))))));
                        return l_1035;
                    }
                    if ((1UL >= (((*p_2298->g_407) = ((safe_mul_func_uint16_t_u_u((l_1040 == ((*l_1042) = l_1041)), ((safe_sub_func_uint16_t_u_u((((!l_984[6][0][0]) == (((*l_1047) = 65535UL) == ((*p_2298->g_256) , (-1L)))) < (safe_sub_func_int64_t_s_s(((safe_lshift_func_uint16_t_u_u(((l_119 == (p_2298->g_803 = 1UL)) == FAKE_DIVERGE(p_2298->global_2_offset, get_global_id(2), 10)), 5)) <= (-3L)), p_2298->g_202))), 0x309BL)) & 0UL))) , 0x0752BB43F08D611BL)) > l_983)))
                    { /* block id: 492 */
                        uint8_t l_1060 = 250UL;
                        uint32_t *l_1061 = &p_2298->g_132;
                        int16_t ***l_1076 = &l_1075;
                        int32_t l_1078 = (-1L);
                        (*l_980) ^= (l_1034[1][0][6] , l_984[2][0][0]);
                        l_1074 |= ((((((((l_1004 >= (safe_lshift_func_uint8_t_u_s(((safe_mod_func_int8_t_s_s((safe_mul_func_int32_t_s_s((((*l_1047) ^= p_2298->g_858.f0) <= (safe_unary_minus_func_uint64_t_u((&p_2298->g_171[0] == &p_2298->g_171[4])))), ((*l_980) = 0L))), l_1060)) <= (((*l_1061) = p_2298->g_839[3].f2) >= (safe_lshift_func_int8_t_s_s((safe_sub_func_int64_t_s_s((p_2298->g_731 != ((*l_176) = ((*p_2298->g_519) = (~(((((safe_mod_func_uint64_t_u_u(((safe_add_func_int32_t_s_s((+(l_1003 = (l_984[1][0][0] ^= (safe_div_func_int64_t_s_s(p_2298->g_1072[5], 6UL))))), p_2298->g_838.f2)) | (-5L)), 1L)) >= 0x25L) ^ p_2298->g_233[0][4].f2) , (**p_2298->g_170)) || l_1060))))), l_1060)), 6)))), 6))) <= p_2298->g_1033.f2) != l_1060) , p_2298->g_1073) , 0xE3L) != l_983) < FAKE_DIVERGE(p_2298->global_2_offset, get_global_id(2), 10)) || l_1004);
                        l_1078 = (((*l_1076) = l_1075) == (l_998 , l_1077));
                    }
                    else
                    { /* block id: 504 */
                        uint64_t **l_1090 = (void*)0;
                        uint64_t *l_1092 = &p_2298->g_26[3];
                        uint64_t **l_1091 = &l_1092;
                        int32_t l_1093 = 0x6EEFA71FL;
                        struct S0 *l_1098 = (void*)0;
                        l_1094 ^= ((safe_div_func_int16_t_s_s(((safe_add_func_uint64_t_u_u((l_1003 = (**p_2298->g_170)), ((safe_sub_func_int32_t_s_s(l_1034[0][0][3], ((safe_div_func_int32_t_s_s(((*p_2298->g_519) >= (((p_2298->g_830.f0 && 0L) , (void*)0) == l_1089[3])), l_998)) == (((*l_1091) = (void*)0) == &p_2298->g_26[2])))) , l_1093))) || l_998), l_1034[1][0][4])) > l_1034[1][0][0]);
                        (*p_2298->g_1099) = p_2298->g_1095;
                        if (l_1004)
                            break;
                    }
                }
            }
            if ((*l_980))
                break;
        }
        return l_1074;
    }
    if ((safe_unary_minus_func_uint8_t_u((safe_lshift_func_uint16_t_u_u(p_2298->g_408, 14)))))
    { /* block id: 517 */
        uint32_t l_1104 = 0UL;
        for (p_2298->g_830.f0 = 1; (p_2298->g_830.f0 <= 7); p_2298->g_830.f0 += 1)
        { /* block id: 520 */
            int32_t *l_1105 = &p_2298->g_412;
            int i;
            (**p_2298->g_933) = (p_2298->g_506[p_2298->g_830.f0] , p_2298->g_1103);
            (*l_1105) ^= (l_1104 = p_2298->g_506[p_2298->g_830.f0]);
        }
    }
    else
    { /* block id: 525 */
        uint64_t *l_1107 = &p_2298->g_541;
        int32_t l_1109 = 1L;
        (*p_2298->g_1108) = (((l_1106 == (void*)0) ^ ((void*)0 != l_1107)) && (((*p_108) | l_119) || ((void*)0 != (*l_1077))));
        return l_1109;
    }
    (*l_1123) = ((l_1074 == l_1074) , (safe_lshift_func_uint16_t_u_s(((((*l_1122) = (safe_rshift_func_int16_t_s_u((*p_2298->g_247), ((((+(safe_mul_func_uint16_t_u_u(p_2298->g_42, (((((((((*l_1116) = (void*)0) == l_1118) || ((l_983 < ((p_2298->g_842.f2 &= (((*l_1119) |= (((p_2298->g_537 , GROUP_DIVERGE(2, 1)) , (p_2298->g_848.f0 <= 2UL)) < (*p_2298->g_246))) & l_1074)) | (*p_2298->g_246))) , (*p_107))) != GROUP_DIVERGE(2, 1)) && (-1L)) || 0L) <= l_984[1][0][0]) >= p_2298->g_844.f0)))) > (*p_2298->g_246)) == p_2298->g_851.f0) & (-10L))))) , p_2298->g_853.f2) , p_2298->g_361[4][0].f0), (*p_2298->g_246))));
    return l_1124;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_113(uint32_t  p_114, uint64_t  p_115, int32_t  p_116, int32_t  p_117, uint16_t  p_118, struct S2 * p_2298)
{ /* block id: 68 */
    int16_t l_211 = 0x552AL;
    uint64_t *l_213 = &p_2298->g_26[0];
    uint64_t **l_212 = &l_213;
    uint64_t *l_214[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_231 = (void*)0;
    int32_t *l_232 = &p_2298->g_208;
    int64_t *l_279 = &p_2298->g_202;
    int32_t l_280 = 0x30C083D0L;
    int64_t l_308 = 0x730BE47D957DF1A2L;
    int32_t l_357 = 7L;
    uint32_t l_390 = 4294967295UL;
    int64_t **l_438 = &p_2298->g_407;
    int64_t ***l_437 = &l_438;
    uint64_t l_476 = 0UL;
    int32_t l_503 = 0L;
    int32_t l_504 = (-10L);
    int32_t l_558 = 1L;
    int32_t l_561[1];
    uint32_t l_609 = 0x12B0E817L;
    int16_t **l_637 = &p_2298->g_246;
    uint16_t *l_650 = &p_2298->g_506[7];
    struct S1 **l_715 = &p_2298->g_474;
    uint32_t l_751 = 3UL;
    int64_t l_823 = (-3L);
    int8_t **l_883 = &p_2298->g_519;
    int i;
    for (i = 0; i < 1; i++)
        l_561[i] = 0x2AD86E68L;
    return p_117;
}


/* ------------------------------------------ */
/* 
 * reads : p_2298->g_132 p_2298->g_168 p_2298->g_166 p_2298->g_175 p_2298->g_30 p_2298->g_48 p_2298->g_43 p_2298->g_197 p_2298->g_26 p_2298->g_78 p_2298->g_52 p_2298->g_40 p_2298->g_165 p_2298->g_208
 * writes: p_2298->g_132 p_2298->g_168 p_2298->g_166 p_2298->g_197 p_2298->g_52 p_2298->g_208
 */
int8_t  func_120(uint32_t  p_121, int8_t * p_122, uint64_t * p_123, struct S2 * p_2298)
{ /* block id: 46 */
    uint32_t l_178 = 4294967295UL;
    int16_t *l_185 = (void*)0;
    uint8_t *l_196 = &p_2298->g_197;
    uint32_t l_198 = 3UL;
    uint8_t l_199 = 0UL;
    int64_t *l_200 = (void*)0;
    int64_t *l_201[4][8][8] = {{{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202}},{{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202}},{{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202}},{{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202},{&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202,&p_2298->g_202,&p_2298->g_202,(void*)0,&p_2298->g_202}}};
    int32_t l_203 = 0x421836AFL;
    int32_t *l_204 = &p_2298->g_52;
    int32_t l_205[4] = {0x1327924FL,0x1327924FL,0x1327924FL,0x1327924FL};
    int32_t *l_206 = (void*)0;
    int32_t *l_207 = &p_2298->g_208;
    int i, j, k;
    for (p_2298->g_132 = 0; (p_2298->g_132 <= 2); p_2298->g_132 += 1)
    { /* block id: 49 */
        for (p_2298->g_168 = 2; (p_2298->g_168 >= 0); p_2298->g_168 -= 1)
        { /* block id: 52 */
            for (p_2298->g_166 = 0; (p_2298->g_166 <= 2); p_2298->g_166 += 1)
            { /* block id: 55 */
                volatile int32_t *l_177 = (void*)0;
                l_177 = &p_2298->g_40;
                if (p_121)
                    continue;
                if ((*p_2298->g_175))
                    continue;
            }
            ++l_178;
        }
    }
    (*l_207) &= ((((0x1939L == (p_2298->g_30 < FAKE_DIVERGE(p_2298->local_2_offset, get_local_id(2), 10))) < ((safe_div_func_int32_t_s_s((*p_2298->g_175), ((*l_204) ^= (((l_203 = ((l_185 != &p_2298->g_168) , ((safe_div_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u(((((safe_mul_func_uint8_t_u_u(((*l_196) |= ((safe_lshift_func_int16_t_s_u((safe_mod_func_uint32_t_u_u((p_121 , (l_178 < p_2298->g_48)), (-1L))), p_2298->g_43)) | l_178)), l_198)) >= l_199) != 0x5658L) != GROUP_DIVERGE(2, 1)), p_2298->g_168)) | p_2298->g_26[1]) | p_2298->g_26[0]), p_2298->g_78)) > (*p_123)))) , 0x4BEAL) <= l_199)))) <= l_205[3])) , p_2298->g_40) > p_2298->g_165);
    return (*l_207);
}


/* ------------------------------------------ */
/* 
 * reads : p_2298->g_27 p_2298->g_52 p_2298->g_159 p_2298->g_160 p_2298->g_48 p_2298->g_9 p_2298->g_132 p_2298->g_36 p_2298->g_166 p_2298->g_170 p_2298->g_175
 * writes: p_2298->g_52 p_2298->g_165 p_2298->g_166
 */
uint32_t  func_124(int8_t * p_125, int32_t  p_126, uint32_t  p_127, int64_t  p_128, struct S2 * p_2298)
{ /* block id: 37 */
    int32_t *l_139 = &p_2298->g_52;
    uint16_t l_143[2];
    uint64_t *l_146[1][5] = {{&p_2298->g_26[2],&p_2298->g_26[2],&p_2298->g_26[2],&p_2298->g_26[2],&p_2298->g_26[2]}};
    int32_t l_161 = 0x6F54216EL;
    int32_t l_162 = 0x73D11B6BL;
    int8_t *l_163 = (void*)0;
    int8_t *l_164 = &p_2298->g_165;
    int16_t *l_167[8];
    uint16_t l_169 = 0x1F43L;
    int32_t *l_174 = (void*)0;
    int i, j;
    for (i = 0; i < 2; i++)
        l_143[i] = 0x42CBL;
    for (i = 0; i < 8; i++)
        l_167[i] = &p_2298->g_168;
    (*p_2298->g_175) = ((((*l_139) = p_2298->g_27) , ((safe_unary_minus_func_int16_t_s((safe_rshift_func_uint8_t_u_s(((l_169 = (((*l_164) = ((*l_139) = ((((((l_143[1] <= (*l_139)) <= (l_162 = (safe_mul_func_uint32_t_u_u(((void*)0 != l_146[0][3]), (((((p_128 == (l_161 = (safe_mod_func_uint8_t_u_u(((0x450A102B4660DC51L >= ((safe_rshift_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s((((safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((((p_2298->g_159 , (p_2298->g_160 , (-2L))) >= p_2298->g_48) , (*l_139)), GROUP_DIVERGE(1, 1))), p_2298->g_9[0])) , 65529UL) | 2L), p_2298->g_132)), p_126)), p_2298->g_36)) ^ 4294967295UL)) > 0x20030B002579A822L), 2UL)))) , 0x2E131A92L) , (*l_139)) & (*l_139)) <= FAKE_DIVERGE(p_2298->group_0_offset, get_group_id(0), 10)))))) , &l_162) != &p_126) || 0xD4BE37C8BC829355L) | 0x68E729AEL))) ^ p_2298->g_166)) || 0UL), 1)))) , (void*)0)) == p_2298->g_170);
    return (*l_139);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_2299;
    struct S2* p_2298 = &c_2299;
    struct S2 c_2300 = {
        0UL, // p_2298->g_6
        {0x7609L}, // p_2298->g_9
        {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}, // p_2298->g_26
        0L, // p_2298->g_27
        9UL, // p_2298->g_30
        0x49FE9A5AL, // p_2298->g_35
        (-9L), // p_2298->g_36
        0x518F4C6FL, // p_2298->g_39
        0L, // p_2298->g_40
        {{{0L,7L,0L,0L,7L,0L,0L},{0L,7L,0L,0L,7L,0L,0L},{0L,7L,0L,0L,7L,0L,0L}}}, // p_2298->g_41
        0L, // p_2298->g_42
        2L, // p_2298->g_43
        0x18BA70A1L, // p_2298->g_46
        1L, // p_2298->g_47
        0L, // p_2298->g_48
        (-5L), // p_2298->g_52
        0x25L, // p_2298->g_78
        0x3243D007L, // p_2298->g_132
        {2L,0xEAF66504L,65535UL}, // p_2298->g_159
        {1L,0x232A7A6EL,0x9213L}, // p_2298->g_160
        (-7L), // p_2298->g_165
        (-2L), // p_2298->g_166
        (-7L), // p_2298->g_168
        {0x527EC9291112FB1CL,0x527EC9291112FB1CL,0x527EC9291112FB1CL}, // p_2298->g_172
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_2298->g_173
        {&p_2298->g_172[1],&p_2298->g_172[1],&p_2298->g_172[1],&p_2298->g_172[1],&p_2298->g_172[1]}, // p_2298->g_171
        &p_2298->g_171[0], // p_2298->g_170
        &p_2298->g_166, // p_2298->g_175
        8UL, // p_2298->g_197
        0x6FA70C1663C647C6L, // p_2298->g_202
        (-9L), // p_2298->g_208
        {{{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L},{0xB4L,7UL,0L,0x5C58DB16L,0x22C6849BL,-1L,4294967295UL,0L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L},{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L}},{{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L},{0xB4L,7UL,0L,0x5C58DB16L,0x22C6849BL,-1L,4294967295UL,0L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L},{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L}},{{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L},{0xB4L,7UL,0L,0x5C58DB16L,0x22C6849BL,-1L,4294967295UL,0L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L},{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L}},{{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L},{0xB4L,7UL,0L,0x5C58DB16L,0x22C6849BL,-1L,4294967295UL,0L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L},{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x03L,0x7B90CDC1L,0x2F3EF561L,4294967295UL,1L,-8L,1UL,-1L},{0x5AL,0xCD4DB03FL,7L,0xDB4FA6D5L,-6L,0x1B0C17D9L,4UL,0x5EA18CAF6F8C7CC7L}}}, // p_2298->g_233
        &p_2298->g_233[1][1], // p_2298->g_234
        &p_2298->g_168, // p_2298->g_246
        &p_2298->g_168, // p_2298->g_247
        {1L,0xC767E1A3L,0xA631L}, // p_2298->g_254
        &p_2298->g_159, // p_2298->g_255
        &p_2298->g_233[0][4], // p_2298->g_256
        {{{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166}},{{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166}},{{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166}},{{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166},{&p_2298->g_208,&p_2298->g_48,&p_2298->g_208,&p_2298->g_166,&p_2298->g_36,(void*)0,&p_2298->g_166}}}, // p_2298->g_272
        0x83FEL, // p_2298->g_316
        {9L,0UL,0x5569L}, // p_2298->g_326
        {{0x73F6DD1DL,0xD233E5BBL,0x73F6DD1DL,0x73F6DD1DL,0xD233E5BBL,0x73F6DD1DL,0x73F6DD1DL},{0x73F6DD1DL,0xD233E5BBL,0x73F6DD1DL,0x73F6DD1DL,0xD233E5BBL,0x73F6DD1DL,0x73F6DD1DL}}, // p_2298->g_344
        {{{0x0D82269DL,1UL,0xFE5BL},{0x1CAC54E8L,4294967295UL,5UL}},{{0x0D82269DL,1UL,0xFE5BL},{0x1CAC54E8L,4294967295UL,5UL}},{{0x0D82269DL,1UL,0xFE5BL},{0x1CAC54E8L,4294967295UL,5UL}},{{0x0D82269DL,1UL,0xFE5BL},{0x1CAC54E8L,4294967295UL,5UL}},{{0x0D82269DL,1UL,0xFE5BL},{0x1CAC54E8L,4294967295UL,5UL}},{{0x0D82269DL,1UL,0xFE5BL},{0x1CAC54E8L,4294967295UL,5UL}},{{0x0D82269DL,1UL,0xFE5BL},{0x1CAC54E8L,4294967295UL,5UL}},{{0x0D82269DL,1UL,0xFE5BL},{0x1CAC54E8L,4294967295UL,5UL}}}, // p_2298->g_361
        {0x64L,0x64L,0x64L,0x64L,0x64L,0x64L,0x64L,0x64L,0x64L}, // p_2298->g_384
        {255UL,0x3E46F08CL,0x554F6FE8L,0x1BFBA212L,0x69C74302L,0x4E6B5562L,0x2880767BL,0x25E379C5A7B4FA15L}, // p_2298->g_395
        (-1L), // p_2298->g_408
        &p_2298->g_408, // p_2298->g_407
        &p_2298->g_407, // p_2298->g_406
        &p_2298->g_406, // p_2298->g_409
        0L, // p_2298->g_412
        &p_2298->g_272[0][3][6], // p_2298->g_444
        0x4322L, // p_2298->g_448
        {8L,0xB70D4845L,0x0EDEL}, // p_2298->g_473
        {-1L,4294967289UL,0UL}, // p_2298->g_475
        &p_2298->g_475, // p_2298->g_474
        (void*)0, // p_2298->g_485
        {0xD6L,4294967295UL,0x1070D5EAL,0UL,0x32AE3769L,0x28889A25L,0x1D76BE41L,0x0C62630B4D226501L}, // p_2298->g_494
        {0xFADDL,0UL,0xFADDL,0xFADDL,0UL,0xFADDL,0xFADDL,0UL}, // p_2298->g_506
        &p_2298->g_165, // p_2298->g_519
        0UL, // p_2298->g_537
        6UL, // p_2298->g_541
        0x1533D4027059EF1CL, // p_2298->g_548
        &p_2298->g_548, // p_2298->g_547
        &p_2298->g_547, // p_2298->g_546
        &p_2298->g_202, // p_2298->g_550
        &p_2298->g_550, // p_2298->g_549
        {0x63A0B216L,9UL,65531UL}, // p_2298->g_606
        {0xF5L,4294967294UL,-1L,0UL,0L,0x4B667EFFL,0x5FB32A1CL,1L}, // p_2298->g_626
        {&p_2298->g_626,&p_2298->g_626,&p_2298->g_626,&p_2298->g_626,&p_2298->g_626,&p_2298->g_626,&p_2298->g_626,&p_2298->g_626,&p_2298->g_626}, // p_2298->g_627
        &p_2298->g_494, // p_2298->g_628
        0x4EE7BF84B6CDD0E8L, // p_2298->g_647
        &p_2298->g_647, // p_2298->g_646
        &p_2298->g_646, // p_2298->g_645
        {0L,0UL,0xB922L}, // p_2298->g_684
        {&p_2298->g_407,&p_2298->g_407,&p_2298->g_407,&p_2298->g_407}, // p_2298->g_699
        4294967295UL, // p_2298->g_731
        1UL, // p_2298->g_803
        {-1L,4294967290UL,0xB577L}, // p_2298->g_804
        0L, // p_2298->g_824
        {0x281AAB7DL,9UL,5UL}, // p_2298->g_826
        {0x3082B349L,0xC61E4541L,3UL}, // p_2298->g_828
        {0x1C244CA3L,4294967292UL,65533UL}, // p_2298->g_830
        {0x0F0A2C3AL,4294967295UL,0x0FD8L}, // p_2298->g_831
        {-8L,0xA5328C48L,0UL}, // p_2298->g_832
        {0x770001BAL,4294967295UL,65529UL}, // p_2298->g_833
        {0x32C2D067L,0x3E8D1976L,65528UL}, // p_2298->g_834
        {1L,4294967289UL,65535UL}, // p_2298->g_835
        {0x12C5AE44L,0xE14F09D1L,0x4E34L}, // p_2298->g_836
        {0x728B8CF7L,0x2997F085L,65535UL}, // p_2298->g_837
        {-5L,0x9DCC83B3L,65533UL}, // p_2298->g_838
        {{-1L,0xF4FA595CL,0x06B4L},{-1L,0xF4FA595CL,0x06B4L},{-1L,0xF4FA595CL,0x06B4L},{-1L,0xF4FA595CL,0x06B4L}}, // p_2298->g_839
        {-1L,0x6C0D2C0AL,0UL}, // p_2298->g_840
        {0x03BA06BEL,0x007FB849L,0x7EC5L}, // p_2298->g_841
        {0L,0x2981B61EL,0UL}, // p_2298->g_842
        {0x71ED6725L,4294967288UL,0xC055L}, // p_2298->g_843
        {4L,0x0E28A209L,65527UL}, // p_2298->g_844
        {-9L,0UL,0xDFF1L}, // p_2298->g_845
        {{0L,0x16B50545L,65535UL},{0L,0x16B50545L,65535UL},{0L,0x16B50545L,65535UL}}, // p_2298->g_846
        {{0x0AEA13C7L,7UL,65535UL},{0x0AEA13C7L,7UL,65535UL},{0x0AEA13C7L,7UL,65535UL},{0x0AEA13C7L,7UL,65535UL}}, // p_2298->g_847
        {0x1D90D83AL,0x2C979B1CL,0x783AL}, // p_2298->g_848
        {{{9L,0xD91CE56DL,0xF252L},{9L,0xD91CE56DL,0xF252L},{-9L,0UL,8UL},{0x65C71A48L,1UL,65535UL},{0x1756019DL,1UL,65535UL},{0x4CBFAD60L,0xE970D550L,0x2CEEL},{0x096F251DL,0x3429780AL,4UL},{0x638E47F8L,0xDFF44FDAL,2UL},{0x096F251DL,0x3429780AL,4UL}},{{9L,0xD91CE56DL,0xF252L},{9L,0xD91CE56DL,0xF252L},{-9L,0UL,8UL},{0x65C71A48L,1UL,65535UL},{0x1756019DL,1UL,65535UL},{0x4CBFAD60L,0xE970D550L,0x2CEEL},{0x096F251DL,0x3429780AL,4UL},{0x638E47F8L,0xDFF44FDAL,2UL},{0x096F251DL,0x3429780AL,4UL}},{{9L,0xD91CE56DL,0xF252L},{9L,0xD91CE56DL,0xF252L},{-9L,0UL,8UL},{0x65C71A48L,1UL,65535UL},{0x1756019DL,1UL,65535UL},{0x4CBFAD60L,0xE970D550L,0x2CEEL},{0x096F251DL,0x3429780AL,4UL},{0x638E47F8L,0xDFF44FDAL,2UL},{0x096F251DL,0x3429780AL,4UL}},{{9L,0xD91CE56DL,0xF252L},{9L,0xD91CE56DL,0xF252L},{-9L,0UL,8UL},{0x65C71A48L,1UL,65535UL},{0x1756019DL,1UL,65535UL},{0x4CBFAD60L,0xE970D550L,0x2CEEL},{0x096F251DL,0x3429780AL,4UL},{0x638E47F8L,0xDFF44FDAL,2UL},{0x096F251DL,0x3429780AL,4UL}},{{9L,0xD91CE56DL,0xF252L},{9L,0xD91CE56DL,0xF252L},{-9L,0UL,8UL},{0x65C71A48L,1UL,65535UL},{0x1756019DL,1UL,65535UL},{0x4CBFAD60L,0xE970D550L,0x2CEEL},{0x096F251DL,0x3429780AL,4UL},{0x638E47F8L,0xDFF44FDAL,2UL},{0x096F251DL,0x3429780AL,4UL}}}, // p_2298->g_849
        {{{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L}},{{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L},{0x47DA666DL,4294967289UL,0xF5D2L}}}, // p_2298->g_850
        {0x5653940EL,0x6ECAF2BDL,0x45E0L}, // p_2298->g_851
        {0x127D65B3L,0xC0AABC2EL,0xA10AL}, // p_2298->g_852
        {1L,0x53AF1CD8L,3UL}, // p_2298->g_853
        {0L,0x2FCF5764L,0xFC9DL}, // p_2298->g_854
        {0x5E4894C5L,0x059E7E80L,1UL}, // p_2298->g_855
        {0x44EA08BCL,1UL,65534UL}, // p_2298->g_856
        {0x49E4C33FL,0xE2D1AE80L,4UL}, // p_2298->g_857
        {0x5FCB9E9EL,9UL,0UL}, // p_2298->g_858
        {0x73E915ACL,0xA1075CCEL,0x56FFL}, // p_2298->g_859
        {0x38L,0x38L,0x38L,0x38L,0x38L,0x38L}, // p_2298->g_900
        0x49CCA6BAL, // p_2298->g_903
        &p_2298->g_474, // p_2298->g_933
        &p_2298->g_933, // p_2298->g_932
        2UL, // p_2298->g_965
        {0x165E5759L,(-7L),0x165E5759L,0x165E5759L,(-7L),0x165E5759L,0x165E5759L,(-7L),0x165E5759L,0x165E5759L}, // p_2298->g_982
        &p_2298->g_272[2][5][2], // p_2298->g_999
        {0x3040C36AL,0UL,2UL}, // p_2298->g_1033
        {0x20L,0x20L,0x20L,0x20L,0x20L,0x20L}, // p_2298->g_1072
        {7L,0xC93D52C4L,0x2B82L}, // p_2298->g_1073
        {0UL,0x9B81B418L,0x36040990L,3UL,0x795DD2AAL,2L,2UL,1L}, // p_2298->g_1095
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2298->g_1096
        (void*)0, // p_2298->g_1097
        &p_2298->g_395, // p_2298->g_1099
        {0x413BF188L,8UL,0x9938L}, // p_2298->g_1103
        &p_2298->g_412, // p_2298->g_1108
        {{&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6]},{&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6]},{&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6]},{&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6]},{&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6]}}, // p_2298->g_1163
        (void*)0, // p_2298->g_1164
        &p_2298->g_272[0][3][6], // p_2298->g_1165
        (void*)0, // p_2298->g_1183
        &p_2298->g_1183, // p_2298->g_1182
        {{0x0DC534D8L,4294967295UL,0xE494L},{0x0DC534D8L,4294967295UL,0xE494L},{0x0DC534D8L,4294967295UL,0xE494L},{0x0DC534D8L,4294967295UL,0xE494L},{0x0DC534D8L,4294967295UL,0xE494L},{0x0DC534D8L,4294967295UL,0xE494L},{0x0DC534D8L,4294967295UL,0xE494L}}, // p_2298->g_1225
        {0UL,0xC28C55F4L,9L,4294967295UL,-8L,-1L,4294967287UL,0x24A10517FFDB1485L}, // p_2298->g_1235
        1L, // p_2298->g_1270
        {&p_2298->g_547,&p_2298->g_547,&p_2298->g_547,&p_2298->g_547,&p_2298->g_547,&p_2298->g_547,&p_2298->g_547,&p_2298->g_547,&p_2298->g_547,&p_2298->g_547}, // p_2298->g_1399
        &p_2298->g_1399[8], // p_2298->g_1398
        &p_2298->g_1398, // p_2298->g_1397
        {8UL,0x9129FC15L,0L,1UL,0L,0x0126A128L,4294967289UL,-3L}, // p_2298->g_1400
        {8UL,1UL,0L,0xC9787BA2L,0x5DE06BF1L,0x79EE18C6L,4294967292UL,0x265379924D4FB576L}, // p_2298->g_1423
        0x4A65864CEFF79F96L, // p_2298->g_1474
        {{{0xBFAAF773L,6UL,7UL},{0xBFAAF773L,6UL,7UL},{0xBFAAF773L,6UL,7UL}},{{0xBFAAF773L,6UL,7UL},{0xBFAAF773L,6UL,7UL},{0xBFAAF773L,6UL,7UL}},{{0xBFAAF773L,6UL,7UL},{0xBFAAF773L,6UL,7UL},{0xBFAAF773L,6UL,7UL}}}, // p_2298->g_1495
        &p_2298->g_1495[1][2][2], // p_2298->g_1494
        &p_2298->g_1494, // p_2298->g_1493
        0x5D6C70F4L, // p_2298->g_1569
        {2UL,0UL,-1L,1UL,0x06356368L,1L,0x4E3BE66BL,0L}, // p_2298->g_1704
        {-1L,0xF4CDCF44L,0x828CL}, // p_2298->g_1715
        &p_2298->g_272[0][3][6], // p_2298->g_1743
        {255UL,0x5452E060L,0x3B47A6B5L,0x9E76ABD8L,0x51E5B84DL,0x07F144F8L,0xFEBDD106L,0x615A09E798F47356L}, // p_2298->g_1745
        &p_2298->g_208, // p_2298->g_1758
        (void*)0, // p_2298->g_1759
        {&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6],&p_2298->g_272[0][3][6]}, // p_2298->g_1760
        &p_2298->g_272[1][2][5], // p_2298->g_1818
        0x5AA5DF87L, // p_2298->g_1840
        (void*)0, // p_2298->g_1845
        {&p_2298->g_160.f2,&p_2298->g_160.f2,&p_2298->g_160.f2,&p_2298->g_160.f2,&p_2298->g_160.f2,&p_2298->g_160.f2}, // p_2298->g_1856
        &p_2298->g_1856[4], // p_2298->g_1855
        {0xF9L,0x3F5F7E29L,0x7D3435ECL,0UL,0x71068F0AL,-1L,0x9FF22B61L,2L}, // p_2298->g_1860
        (void*)0, // p_2298->g_1861
        &p_2298->g_1860, // p_2298->g_1863
        &p_2298->g_272[0][3][6], // p_2298->g_1888
        {0x9BL,4294967293UL,0x31DDC82DL,0x593F4F39L,0x2927434CL,-3L,0x2A51A42DL,0L}, // p_2298->g_1893
        {255UL,1UL,0x2489C879L,1UL,3L,3L,0xD4E70C97L,0x0E6CEFA20D3B6ED6L}, // p_2298->g_1895
        &p_2298->g_1095, // p_2298->g_1896
        0L, // p_2298->g_1929
        &p_2298->g_272[0][3][6], // p_2298->g_1938
        0x2BDBL, // p_2298->g_1943
        {{0x672275C3L,0xD3D90A31L,0UL},{0x672275C3L,0xD3D90A31L,0UL},{0x672275C3L,0xD3D90A31L,0UL},{0x672275C3L,0xD3D90A31L,0UL},{0x672275C3L,0xD3D90A31L,0UL},{0x672275C3L,0xD3D90A31L,0UL},{0x672275C3L,0xD3D90A31L,0UL},{0x672275C3L,0xD3D90A31L,0UL}}, // p_2298->g_1978
        {0x26459372L,1UL,65526UL}, // p_2298->g_1992
        {{0x2DBE5DE0L,4L,0L,0L,0L,0L},{0x2DBE5DE0L,4L,0L,0L,0L,0L},{0x2DBE5DE0L,4L,0L,0L,0L,0L},{0x2DBE5DE0L,4L,0L,0L,0L,0L},{0x2DBE5DE0L,4L,0L,0L,0L,0L},{0x2DBE5DE0L,4L,0L,0L,0L,0L},{0x2DBE5DE0L,4L,0L,0L,0L,0L},{0x2DBE5DE0L,4L,0L,0L,0L,0L},{0x2DBE5DE0L,4L,0L,0L,0L,0L},{0x2DBE5DE0L,4L,0L,0L,0L,0L}}, // p_2298->g_2044
        0x68F1L, // p_2298->g_2080
        &p_2298->g_2080, // p_2298->g_2079
        &p_2298->g_2079, // p_2298->g_2078
        &p_2298->g_2078, // p_2298->g_2077
        {-9L,3UL,0x70D2L}, // p_2298->g_2102
        {{{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}}},{{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}}},{{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}}},{{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}}},{{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}}},{{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}}},{{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}}},{{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}}},{{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}},{{0x75C54809L,4294967295UL,0x8FA8L},{-6L,0UL,0UL}}}}, // p_2298->g_2103
        {{0x72L,1UL,0L,0UL,-1L,0x3BD05030L,4294967295UL,0x452D27ABB89C552FL},{0x72L,1UL,0L,0UL,-1L,0x3BD05030L,4294967295UL,0x452D27ABB89C552FL},{0x72L,1UL,0L,0UL,-1L,0x3BD05030L,4294967295UL,0x452D27ABB89C552FL},{0x72L,1UL,0L,0UL,-1L,0x3BD05030L,4294967295UL,0x452D27ABB89C552FL},{0x72L,1UL,0L,0UL,-1L,0x3BD05030L,4294967295UL,0x452D27ABB89C552FL},{0x72L,1UL,0L,0UL,-1L,0x3BD05030L,4294967295UL,0x452D27ABB89C552FL},{0x72L,1UL,0L,0UL,-1L,0x3BD05030L,4294967295UL,0x452D27ABB89C552FL}}, // p_2298->g_2115
        0xA60307BDL, // p_2298->g_2132
        (-1L), // p_2298->g_2146
        (void*)0, // p_2298->g_2210
        3L, // p_2298->g_2216
        {0x6FD9AD17L,8UL,0x51D2L}, // p_2298->g_2225
        {-1L,1UL,1UL}, // p_2298->g_2228
        (void*)0, // p_2298->g_2250
        &p_2298->g_2250, // p_2298->g_2249
        (void*)0, // p_2298->g_2272
        sequence_input[get_global_id(0)], // p_2298->global_0_offset
        sequence_input[get_global_id(1)], // p_2298->global_1_offset
        sequence_input[get_global_id(2)], // p_2298->global_2_offset
        sequence_input[get_local_id(0)], // p_2298->local_0_offset
        sequence_input[get_local_id(1)], // p_2298->local_1_offset
        sequence_input[get_local_id(2)], // p_2298->local_2_offset
        sequence_input[get_group_id(0)], // p_2298->group_0_offset
        sequence_input[get_group_id(1)], // p_2298->group_1_offset
        sequence_input[get_group_id(2)], // p_2298->group_2_offset
    };
    c_2299 = c_2300;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2298);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2298->g_6, "p_2298->g_6", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2298->g_9[i], "p_2298->g_9[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2298->g_26[i], "p_2298->g_26[i]", print_hash_value);

    }
    transparent_crc(p_2298->g_27, "p_2298->g_27", print_hash_value);
    transparent_crc(p_2298->g_30, "p_2298->g_30", print_hash_value);
    transparent_crc(p_2298->g_35, "p_2298->g_35", print_hash_value);
    transparent_crc(p_2298->g_36, "p_2298->g_36", print_hash_value);
    transparent_crc(p_2298->g_39, "p_2298->g_39", print_hash_value);
    transparent_crc(p_2298->g_40, "p_2298->g_40", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2298->g_41[i][j][k], "p_2298->g_41[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2298->g_42, "p_2298->g_42", print_hash_value);
    transparent_crc(p_2298->g_43, "p_2298->g_43", print_hash_value);
    transparent_crc(p_2298->g_46, "p_2298->g_46", print_hash_value);
    transparent_crc(p_2298->g_47, "p_2298->g_47", print_hash_value);
    transparent_crc(p_2298->g_48, "p_2298->g_48", print_hash_value);
    transparent_crc(p_2298->g_52, "p_2298->g_52", print_hash_value);
    transparent_crc(p_2298->g_78, "p_2298->g_78", print_hash_value);
    transparent_crc(p_2298->g_132, "p_2298->g_132", print_hash_value);
    transparent_crc(p_2298->g_159.f0, "p_2298->g_159.f0", print_hash_value);
    transparent_crc(p_2298->g_159.f1, "p_2298->g_159.f1", print_hash_value);
    transparent_crc(p_2298->g_159.f2, "p_2298->g_159.f2", print_hash_value);
    transparent_crc(p_2298->g_160.f0, "p_2298->g_160.f0", print_hash_value);
    transparent_crc(p_2298->g_160.f1, "p_2298->g_160.f1", print_hash_value);
    transparent_crc(p_2298->g_160.f2, "p_2298->g_160.f2", print_hash_value);
    transparent_crc(p_2298->g_165, "p_2298->g_165", print_hash_value);
    transparent_crc(p_2298->g_166, "p_2298->g_166", print_hash_value);
    transparent_crc(p_2298->g_168, "p_2298->g_168", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2298->g_172[i], "p_2298->g_172[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2298->g_173[i], "p_2298->g_173[i]", print_hash_value);

    }
    transparent_crc(p_2298->g_197, "p_2298->g_197", print_hash_value);
    transparent_crc(p_2298->g_202, "p_2298->g_202", print_hash_value);
    transparent_crc(p_2298->g_208, "p_2298->g_208", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2298->g_233[i][j].f0, "p_2298->g_233[i][j].f0", print_hash_value);
            transparent_crc(p_2298->g_233[i][j].f1, "p_2298->g_233[i][j].f1", print_hash_value);
            transparent_crc(p_2298->g_233[i][j].f2, "p_2298->g_233[i][j].f2", print_hash_value);
            transparent_crc(p_2298->g_233[i][j].f3, "p_2298->g_233[i][j].f3", print_hash_value);
            transparent_crc(p_2298->g_233[i][j].f4, "p_2298->g_233[i][j].f4", print_hash_value);
            transparent_crc(p_2298->g_233[i][j].f5, "p_2298->g_233[i][j].f5", print_hash_value);
            transparent_crc(p_2298->g_233[i][j].f6, "p_2298->g_233[i][j].f6", print_hash_value);
            transparent_crc(p_2298->g_233[i][j].f7, "p_2298->g_233[i][j].f7", print_hash_value);

        }
    }
    transparent_crc(p_2298->g_254.f0, "p_2298->g_254.f0", print_hash_value);
    transparent_crc(p_2298->g_254.f1, "p_2298->g_254.f1", print_hash_value);
    transparent_crc(p_2298->g_254.f2, "p_2298->g_254.f2", print_hash_value);
    transparent_crc(p_2298->g_316, "p_2298->g_316", print_hash_value);
    transparent_crc(p_2298->g_326.f0, "p_2298->g_326.f0", print_hash_value);
    transparent_crc(p_2298->g_326.f1, "p_2298->g_326.f1", print_hash_value);
    transparent_crc(p_2298->g_326.f2, "p_2298->g_326.f2", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2298->g_344[i][j], "p_2298->g_344[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2298->g_361[i][j].f0, "p_2298->g_361[i][j].f0", print_hash_value);
            transparent_crc(p_2298->g_361[i][j].f1, "p_2298->g_361[i][j].f1", print_hash_value);
            transparent_crc(p_2298->g_361[i][j].f2, "p_2298->g_361[i][j].f2", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2298->g_384[i], "p_2298->g_384[i]", print_hash_value);

    }
    transparent_crc(p_2298->g_395.f0, "p_2298->g_395.f0", print_hash_value);
    transparent_crc(p_2298->g_395.f1, "p_2298->g_395.f1", print_hash_value);
    transparent_crc(p_2298->g_395.f2, "p_2298->g_395.f2", print_hash_value);
    transparent_crc(p_2298->g_395.f3, "p_2298->g_395.f3", print_hash_value);
    transparent_crc(p_2298->g_395.f4, "p_2298->g_395.f4", print_hash_value);
    transparent_crc(p_2298->g_395.f5, "p_2298->g_395.f5", print_hash_value);
    transparent_crc(p_2298->g_395.f6, "p_2298->g_395.f6", print_hash_value);
    transparent_crc(p_2298->g_395.f7, "p_2298->g_395.f7", print_hash_value);
    transparent_crc(p_2298->g_408, "p_2298->g_408", print_hash_value);
    transparent_crc(p_2298->g_412, "p_2298->g_412", print_hash_value);
    transparent_crc(p_2298->g_448, "p_2298->g_448", print_hash_value);
    transparent_crc(p_2298->g_473.f0, "p_2298->g_473.f0", print_hash_value);
    transparent_crc(p_2298->g_473.f1, "p_2298->g_473.f1", print_hash_value);
    transparent_crc(p_2298->g_473.f2, "p_2298->g_473.f2", print_hash_value);
    transparent_crc(p_2298->g_475.f0, "p_2298->g_475.f0", print_hash_value);
    transparent_crc(p_2298->g_475.f1, "p_2298->g_475.f1", print_hash_value);
    transparent_crc(p_2298->g_475.f2, "p_2298->g_475.f2", print_hash_value);
    transparent_crc(p_2298->g_494.f0, "p_2298->g_494.f0", print_hash_value);
    transparent_crc(p_2298->g_494.f1, "p_2298->g_494.f1", print_hash_value);
    transparent_crc(p_2298->g_494.f2, "p_2298->g_494.f2", print_hash_value);
    transparent_crc(p_2298->g_494.f3, "p_2298->g_494.f3", print_hash_value);
    transparent_crc(p_2298->g_494.f4, "p_2298->g_494.f4", print_hash_value);
    transparent_crc(p_2298->g_494.f5, "p_2298->g_494.f5", print_hash_value);
    transparent_crc(p_2298->g_494.f6, "p_2298->g_494.f6", print_hash_value);
    transparent_crc(p_2298->g_494.f7, "p_2298->g_494.f7", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2298->g_506[i], "p_2298->g_506[i]", print_hash_value);

    }
    transparent_crc(p_2298->g_537, "p_2298->g_537", print_hash_value);
    transparent_crc(p_2298->g_541, "p_2298->g_541", print_hash_value);
    transparent_crc(p_2298->g_548, "p_2298->g_548", print_hash_value);
    transparent_crc(p_2298->g_606.f0, "p_2298->g_606.f0", print_hash_value);
    transparent_crc(p_2298->g_606.f1, "p_2298->g_606.f1", print_hash_value);
    transparent_crc(p_2298->g_606.f2, "p_2298->g_606.f2", print_hash_value);
    transparent_crc(p_2298->g_626.f0, "p_2298->g_626.f0", print_hash_value);
    transparent_crc(p_2298->g_626.f1, "p_2298->g_626.f1", print_hash_value);
    transparent_crc(p_2298->g_626.f2, "p_2298->g_626.f2", print_hash_value);
    transparent_crc(p_2298->g_626.f3, "p_2298->g_626.f3", print_hash_value);
    transparent_crc(p_2298->g_626.f4, "p_2298->g_626.f4", print_hash_value);
    transparent_crc(p_2298->g_626.f5, "p_2298->g_626.f5", print_hash_value);
    transparent_crc(p_2298->g_626.f6, "p_2298->g_626.f6", print_hash_value);
    transparent_crc(p_2298->g_626.f7, "p_2298->g_626.f7", print_hash_value);
    transparent_crc(p_2298->g_647, "p_2298->g_647", print_hash_value);
    transparent_crc(p_2298->g_684.f0, "p_2298->g_684.f0", print_hash_value);
    transparent_crc(p_2298->g_684.f1, "p_2298->g_684.f1", print_hash_value);
    transparent_crc(p_2298->g_684.f2, "p_2298->g_684.f2", print_hash_value);
    transparent_crc(p_2298->g_731, "p_2298->g_731", print_hash_value);
    transparent_crc(p_2298->g_803, "p_2298->g_803", print_hash_value);
    transparent_crc(p_2298->g_804.f0, "p_2298->g_804.f0", print_hash_value);
    transparent_crc(p_2298->g_804.f1, "p_2298->g_804.f1", print_hash_value);
    transparent_crc(p_2298->g_804.f2, "p_2298->g_804.f2", print_hash_value);
    transparent_crc(p_2298->g_824, "p_2298->g_824", print_hash_value);
    transparent_crc(p_2298->g_826.f0, "p_2298->g_826.f0", print_hash_value);
    transparent_crc(p_2298->g_826.f1, "p_2298->g_826.f1", print_hash_value);
    transparent_crc(p_2298->g_826.f2, "p_2298->g_826.f2", print_hash_value);
    transparent_crc(p_2298->g_828.f0, "p_2298->g_828.f0", print_hash_value);
    transparent_crc(p_2298->g_828.f1, "p_2298->g_828.f1", print_hash_value);
    transparent_crc(p_2298->g_828.f2, "p_2298->g_828.f2", print_hash_value);
    transparent_crc(p_2298->g_830.f0, "p_2298->g_830.f0", print_hash_value);
    transparent_crc(p_2298->g_830.f1, "p_2298->g_830.f1", print_hash_value);
    transparent_crc(p_2298->g_830.f2, "p_2298->g_830.f2", print_hash_value);
    transparent_crc(p_2298->g_831.f0, "p_2298->g_831.f0", print_hash_value);
    transparent_crc(p_2298->g_831.f1, "p_2298->g_831.f1", print_hash_value);
    transparent_crc(p_2298->g_831.f2, "p_2298->g_831.f2", print_hash_value);
    transparent_crc(p_2298->g_832.f0, "p_2298->g_832.f0", print_hash_value);
    transparent_crc(p_2298->g_832.f1, "p_2298->g_832.f1", print_hash_value);
    transparent_crc(p_2298->g_832.f2, "p_2298->g_832.f2", print_hash_value);
    transparent_crc(p_2298->g_833.f0, "p_2298->g_833.f0", print_hash_value);
    transparent_crc(p_2298->g_833.f1, "p_2298->g_833.f1", print_hash_value);
    transparent_crc(p_2298->g_833.f2, "p_2298->g_833.f2", print_hash_value);
    transparent_crc(p_2298->g_834.f0, "p_2298->g_834.f0", print_hash_value);
    transparent_crc(p_2298->g_834.f1, "p_2298->g_834.f1", print_hash_value);
    transparent_crc(p_2298->g_834.f2, "p_2298->g_834.f2", print_hash_value);
    transparent_crc(p_2298->g_835.f0, "p_2298->g_835.f0", print_hash_value);
    transparent_crc(p_2298->g_835.f1, "p_2298->g_835.f1", print_hash_value);
    transparent_crc(p_2298->g_835.f2, "p_2298->g_835.f2", print_hash_value);
    transparent_crc(p_2298->g_836.f0, "p_2298->g_836.f0", print_hash_value);
    transparent_crc(p_2298->g_836.f1, "p_2298->g_836.f1", print_hash_value);
    transparent_crc(p_2298->g_836.f2, "p_2298->g_836.f2", print_hash_value);
    transparent_crc(p_2298->g_837.f0, "p_2298->g_837.f0", print_hash_value);
    transparent_crc(p_2298->g_837.f1, "p_2298->g_837.f1", print_hash_value);
    transparent_crc(p_2298->g_837.f2, "p_2298->g_837.f2", print_hash_value);
    transparent_crc(p_2298->g_838.f0, "p_2298->g_838.f0", print_hash_value);
    transparent_crc(p_2298->g_838.f1, "p_2298->g_838.f1", print_hash_value);
    transparent_crc(p_2298->g_838.f2, "p_2298->g_838.f2", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2298->g_839[i].f0, "p_2298->g_839[i].f0", print_hash_value);
        transparent_crc(p_2298->g_839[i].f1, "p_2298->g_839[i].f1", print_hash_value);
        transparent_crc(p_2298->g_839[i].f2, "p_2298->g_839[i].f2", print_hash_value);

    }
    transparent_crc(p_2298->g_840.f0, "p_2298->g_840.f0", print_hash_value);
    transparent_crc(p_2298->g_840.f1, "p_2298->g_840.f1", print_hash_value);
    transparent_crc(p_2298->g_840.f2, "p_2298->g_840.f2", print_hash_value);
    transparent_crc(p_2298->g_841.f0, "p_2298->g_841.f0", print_hash_value);
    transparent_crc(p_2298->g_841.f1, "p_2298->g_841.f1", print_hash_value);
    transparent_crc(p_2298->g_841.f2, "p_2298->g_841.f2", print_hash_value);
    transparent_crc(p_2298->g_842.f0, "p_2298->g_842.f0", print_hash_value);
    transparent_crc(p_2298->g_842.f1, "p_2298->g_842.f1", print_hash_value);
    transparent_crc(p_2298->g_842.f2, "p_2298->g_842.f2", print_hash_value);
    transparent_crc(p_2298->g_843.f0, "p_2298->g_843.f0", print_hash_value);
    transparent_crc(p_2298->g_843.f1, "p_2298->g_843.f1", print_hash_value);
    transparent_crc(p_2298->g_843.f2, "p_2298->g_843.f2", print_hash_value);
    transparent_crc(p_2298->g_844.f0, "p_2298->g_844.f0", print_hash_value);
    transparent_crc(p_2298->g_844.f1, "p_2298->g_844.f1", print_hash_value);
    transparent_crc(p_2298->g_844.f2, "p_2298->g_844.f2", print_hash_value);
    transparent_crc(p_2298->g_845.f0, "p_2298->g_845.f0", print_hash_value);
    transparent_crc(p_2298->g_845.f1, "p_2298->g_845.f1", print_hash_value);
    transparent_crc(p_2298->g_845.f2, "p_2298->g_845.f2", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2298->g_846[i].f0, "p_2298->g_846[i].f0", print_hash_value);
        transparent_crc(p_2298->g_846[i].f1, "p_2298->g_846[i].f1", print_hash_value);
        transparent_crc(p_2298->g_846[i].f2, "p_2298->g_846[i].f2", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2298->g_847[i].f0, "p_2298->g_847[i].f0", print_hash_value);
        transparent_crc(p_2298->g_847[i].f1, "p_2298->g_847[i].f1", print_hash_value);
        transparent_crc(p_2298->g_847[i].f2, "p_2298->g_847[i].f2", print_hash_value);

    }
    transparent_crc(p_2298->g_848.f0, "p_2298->g_848.f0", print_hash_value);
    transparent_crc(p_2298->g_848.f1, "p_2298->g_848.f1", print_hash_value);
    transparent_crc(p_2298->g_848.f2, "p_2298->g_848.f2", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2298->g_849[i][j].f0, "p_2298->g_849[i][j].f0", print_hash_value);
            transparent_crc(p_2298->g_849[i][j].f1, "p_2298->g_849[i][j].f1", print_hash_value);
            transparent_crc(p_2298->g_849[i][j].f2, "p_2298->g_849[i][j].f2", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2298->g_850[i][j].f0, "p_2298->g_850[i][j].f0", print_hash_value);
            transparent_crc(p_2298->g_850[i][j].f1, "p_2298->g_850[i][j].f1", print_hash_value);
            transparent_crc(p_2298->g_850[i][j].f2, "p_2298->g_850[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_2298->g_851.f0, "p_2298->g_851.f0", print_hash_value);
    transparent_crc(p_2298->g_851.f1, "p_2298->g_851.f1", print_hash_value);
    transparent_crc(p_2298->g_851.f2, "p_2298->g_851.f2", print_hash_value);
    transparent_crc(p_2298->g_852.f0, "p_2298->g_852.f0", print_hash_value);
    transparent_crc(p_2298->g_852.f1, "p_2298->g_852.f1", print_hash_value);
    transparent_crc(p_2298->g_852.f2, "p_2298->g_852.f2", print_hash_value);
    transparent_crc(p_2298->g_853.f0, "p_2298->g_853.f0", print_hash_value);
    transparent_crc(p_2298->g_853.f1, "p_2298->g_853.f1", print_hash_value);
    transparent_crc(p_2298->g_853.f2, "p_2298->g_853.f2", print_hash_value);
    transparent_crc(p_2298->g_854.f0, "p_2298->g_854.f0", print_hash_value);
    transparent_crc(p_2298->g_854.f1, "p_2298->g_854.f1", print_hash_value);
    transparent_crc(p_2298->g_854.f2, "p_2298->g_854.f2", print_hash_value);
    transparent_crc(p_2298->g_855.f0, "p_2298->g_855.f0", print_hash_value);
    transparent_crc(p_2298->g_855.f1, "p_2298->g_855.f1", print_hash_value);
    transparent_crc(p_2298->g_855.f2, "p_2298->g_855.f2", print_hash_value);
    transparent_crc(p_2298->g_856.f0, "p_2298->g_856.f0", print_hash_value);
    transparent_crc(p_2298->g_856.f1, "p_2298->g_856.f1", print_hash_value);
    transparent_crc(p_2298->g_856.f2, "p_2298->g_856.f2", print_hash_value);
    transparent_crc(p_2298->g_857.f0, "p_2298->g_857.f0", print_hash_value);
    transparent_crc(p_2298->g_857.f1, "p_2298->g_857.f1", print_hash_value);
    transparent_crc(p_2298->g_857.f2, "p_2298->g_857.f2", print_hash_value);
    transparent_crc(p_2298->g_858.f0, "p_2298->g_858.f0", print_hash_value);
    transparent_crc(p_2298->g_858.f1, "p_2298->g_858.f1", print_hash_value);
    transparent_crc(p_2298->g_858.f2, "p_2298->g_858.f2", print_hash_value);
    transparent_crc(p_2298->g_859.f0, "p_2298->g_859.f0", print_hash_value);
    transparent_crc(p_2298->g_859.f1, "p_2298->g_859.f1", print_hash_value);
    transparent_crc(p_2298->g_859.f2, "p_2298->g_859.f2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2298->g_900[i], "p_2298->g_900[i]", print_hash_value);

    }
    transparent_crc(p_2298->g_903, "p_2298->g_903", print_hash_value);
    transparent_crc(p_2298->g_965, "p_2298->g_965", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2298->g_982[i], "p_2298->g_982[i]", print_hash_value);

    }
    transparent_crc(p_2298->g_1033.f0, "p_2298->g_1033.f0", print_hash_value);
    transparent_crc(p_2298->g_1033.f1, "p_2298->g_1033.f1", print_hash_value);
    transparent_crc(p_2298->g_1033.f2, "p_2298->g_1033.f2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2298->g_1072[i], "p_2298->g_1072[i]", print_hash_value);

    }
    transparent_crc(p_2298->g_1073.f0, "p_2298->g_1073.f0", print_hash_value);
    transparent_crc(p_2298->g_1073.f1, "p_2298->g_1073.f1", print_hash_value);
    transparent_crc(p_2298->g_1073.f2, "p_2298->g_1073.f2", print_hash_value);
    transparent_crc(p_2298->g_1095.f0, "p_2298->g_1095.f0", print_hash_value);
    transparent_crc(p_2298->g_1095.f1, "p_2298->g_1095.f1", print_hash_value);
    transparent_crc(p_2298->g_1095.f2, "p_2298->g_1095.f2", print_hash_value);
    transparent_crc(p_2298->g_1095.f3, "p_2298->g_1095.f3", print_hash_value);
    transparent_crc(p_2298->g_1095.f4, "p_2298->g_1095.f4", print_hash_value);
    transparent_crc(p_2298->g_1095.f5, "p_2298->g_1095.f5", print_hash_value);
    transparent_crc(p_2298->g_1095.f6, "p_2298->g_1095.f6", print_hash_value);
    transparent_crc(p_2298->g_1095.f7, "p_2298->g_1095.f7", print_hash_value);
    transparent_crc(p_2298->g_1103.f0, "p_2298->g_1103.f0", print_hash_value);
    transparent_crc(p_2298->g_1103.f1, "p_2298->g_1103.f1", print_hash_value);
    transparent_crc(p_2298->g_1103.f2, "p_2298->g_1103.f2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2298->g_1225[i].f0, "p_2298->g_1225[i].f0", print_hash_value);
        transparent_crc(p_2298->g_1225[i].f1, "p_2298->g_1225[i].f1", print_hash_value);
        transparent_crc(p_2298->g_1225[i].f2, "p_2298->g_1225[i].f2", print_hash_value);

    }
    transparent_crc(p_2298->g_1235.f0, "p_2298->g_1235.f0", print_hash_value);
    transparent_crc(p_2298->g_1235.f1, "p_2298->g_1235.f1", print_hash_value);
    transparent_crc(p_2298->g_1235.f2, "p_2298->g_1235.f2", print_hash_value);
    transparent_crc(p_2298->g_1235.f3, "p_2298->g_1235.f3", print_hash_value);
    transparent_crc(p_2298->g_1235.f4, "p_2298->g_1235.f4", print_hash_value);
    transparent_crc(p_2298->g_1235.f5, "p_2298->g_1235.f5", print_hash_value);
    transparent_crc(p_2298->g_1235.f6, "p_2298->g_1235.f6", print_hash_value);
    transparent_crc(p_2298->g_1235.f7, "p_2298->g_1235.f7", print_hash_value);
    transparent_crc(p_2298->g_1270, "p_2298->g_1270", print_hash_value);
    transparent_crc(p_2298->g_1400.f0, "p_2298->g_1400.f0", print_hash_value);
    transparent_crc(p_2298->g_1400.f1, "p_2298->g_1400.f1", print_hash_value);
    transparent_crc(p_2298->g_1400.f2, "p_2298->g_1400.f2", print_hash_value);
    transparent_crc(p_2298->g_1400.f3, "p_2298->g_1400.f3", print_hash_value);
    transparent_crc(p_2298->g_1400.f4, "p_2298->g_1400.f4", print_hash_value);
    transparent_crc(p_2298->g_1400.f5, "p_2298->g_1400.f5", print_hash_value);
    transparent_crc(p_2298->g_1400.f6, "p_2298->g_1400.f6", print_hash_value);
    transparent_crc(p_2298->g_1400.f7, "p_2298->g_1400.f7", print_hash_value);
    transparent_crc(p_2298->g_1423.f0, "p_2298->g_1423.f0", print_hash_value);
    transparent_crc(p_2298->g_1423.f1, "p_2298->g_1423.f1", print_hash_value);
    transparent_crc(p_2298->g_1423.f2, "p_2298->g_1423.f2", print_hash_value);
    transparent_crc(p_2298->g_1423.f3, "p_2298->g_1423.f3", print_hash_value);
    transparent_crc(p_2298->g_1423.f4, "p_2298->g_1423.f4", print_hash_value);
    transparent_crc(p_2298->g_1423.f5, "p_2298->g_1423.f5", print_hash_value);
    transparent_crc(p_2298->g_1423.f6, "p_2298->g_1423.f6", print_hash_value);
    transparent_crc(p_2298->g_1423.f7, "p_2298->g_1423.f7", print_hash_value);
    transparent_crc(p_2298->g_1474, "p_2298->g_1474", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2298->g_1495[i][j][k], "p_2298->g_1495[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2298->g_1569, "p_2298->g_1569", print_hash_value);
    transparent_crc(p_2298->g_1704.f0, "p_2298->g_1704.f0", print_hash_value);
    transparent_crc(p_2298->g_1704.f1, "p_2298->g_1704.f1", print_hash_value);
    transparent_crc(p_2298->g_1704.f2, "p_2298->g_1704.f2", print_hash_value);
    transparent_crc(p_2298->g_1704.f3, "p_2298->g_1704.f3", print_hash_value);
    transparent_crc(p_2298->g_1704.f4, "p_2298->g_1704.f4", print_hash_value);
    transparent_crc(p_2298->g_1704.f5, "p_2298->g_1704.f5", print_hash_value);
    transparent_crc(p_2298->g_1704.f6, "p_2298->g_1704.f6", print_hash_value);
    transparent_crc(p_2298->g_1704.f7, "p_2298->g_1704.f7", print_hash_value);
    transparent_crc(p_2298->g_1715.f0, "p_2298->g_1715.f0", print_hash_value);
    transparent_crc(p_2298->g_1715.f1, "p_2298->g_1715.f1", print_hash_value);
    transparent_crc(p_2298->g_1715.f2, "p_2298->g_1715.f2", print_hash_value);
    transparent_crc(p_2298->g_1745.f0, "p_2298->g_1745.f0", print_hash_value);
    transparent_crc(p_2298->g_1745.f1, "p_2298->g_1745.f1", print_hash_value);
    transparent_crc(p_2298->g_1745.f2, "p_2298->g_1745.f2", print_hash_value);
    transparent_crc(p_2298->g_1745.f3, "p_2298->g_1745.f3", print_hash_value);
    transparent_crc(p_2298->g_1745.f4, "p_2298->g_1745.f4", print_hash_value);
    transparent_crc(p_2298->g_1745.f5, "p_2298->g_1745.f5", print_hash_value);
    transparent_crc(p_2298->g_1745.f6, "p_2298->g_1745.f6", print_hash_value);
    transparent_crc(p_2298->g_1745.f7, "p_2298->g_1745.f7", print_hash_value);
    transparent_crc(p_2298->g_1840, "p_2298->g_1840", print_hash_value);
    transparent_crc(p_2298->g_1860.f0, "p_2298->g_1860.f0", print_hash_value);
    transparent_crc(p_2298->g_1860.f1, "p_2298->g_1860.f1", print_hash_value);
    transparent_crc(p_2298->g_1860.f2, "p_2298->g_1860.f2", print_hash_value);
    transparent_crc(p_2298->g_1860.f3, "p_2298->g_1860.f3", print_hash_value);
    transparent_crc(p_2298->g_1860.f4, "p_2298->g_1860.f4", print_hash_value);
    transparent_crc(p_2298->g_1860.f5, "p_2298->g_1860.f5", print_hash_value);
    transparent_crc(p_2298->g_1860.f6, "p_2298->g_1860.f6", print_hash_value);
    transparent_crc(p_2298->g_1860.f7, "p_2298->g_1860.f7", print_hash_value);
    transparent_crc(p_2298->g_1893.f0, "p_2298->g_1893.f0", print_hash_value);
    transparent_crc(p_2298->g_1893.f1, "p_2298->g_1893.f1", print_hash_value);
    transparent_crc(p_2298->g_1893.f2, "p_2298->g_1893.f2", print_hash_value);
    transparent_crc(p_2298->g_1893.f3, "p_2298->g_1893.f3", print_hash_value);
    transparent_crc(p_2298->g_1893.f4, "p_2298->g_1893.f4", print_hash_value);
    transparent_crc(p_2298->g_1893.f5, "p_2298->g_1893.f5", print_hash_value);
    transparent_crc(p_2298->g_1893.f6, "p_2298->g_1893.f6", print_hash_value);
    transparent_crc(p_2298->g_1893.f7, "p_2298->g_1893.f7", print_hash_value);
    transparent_crc(p_2298->g_1895.f0, "p_2298->g_1895.f0", print_hash_value);
    transparent_crc(p_2298->g_1895.f1, "p_2298->g_1895.f1", print_hash_value);
    transparent_crc(p_2298->g_1895.f2, "p_2298->g_1895.f2", print_hash_value);
    transparent_crc(p_2298->g_1895.f3, "p_2298->g_1895.f3", print_hash_value);
    transparent_crc(p_2298->g_1895.f4, "p_2298->g_1895.f4", print_hash_value);
    transparent_crc(p_2298->g_1895.f5, "p_2298->g_1895.f5", print_hash_value);
    transparent_crc(p_2298->g_1895.f6, "p_2298->g_1895.f6", print_hash_value);
    transparent_crc(p_2298->g_1895.f7, "p_2298->g_1895.f7", print_hash_value);
    transparent_crc(p_2298->g_1929, "p_2298->g_1929", print_hash_value);
    transparent_crc(p_2298->g_1943, "p_2298->g_1943", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2298->g_1978[i].f0, "p_2298->g_1978[i].f0", print_hash_value);
        transparent_crc(p_2298->g_1978[i].f1, "p_2298->g_1978[i].f1", print_hash_value);
        transparent_crc(p_2298->g_1978[i].f2, "p_2298->g_1978[i].f2", print_hash_value);

    }
    transparent_crc(p_2298->g_1992.f0, "p_2298->g_1992.f0", print_hash_value);
    transparent_crc(p_2298->g_1992.f1, "p_2298->g_1992.f1", print_hash_value);
    transparent_crc(p_2298->g_1992.f2, "p_2298->g_1992.f2", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_2298->g_2044[i][j], "p_2298->g_2044[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2298->g_2080, "p_2298->g_2080", print_hash_value);
    transparent_crc(p_2298->g_2102.f0, "p_2298->g_2102.f0", print_hash_value);
    transparent_crc(p_2298->g_2102.f1, "p_2298->g_2102.f1", print_hash_value);
    transparent_crc(p_2298->g_2102.f2, "p_2298->g_2102.f2", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2298->g_2103[i][j][k].f0, "p_2298->g_2103[i][j][k].f0", print_hash_value);
                transparent_crc(p_2298->g_2103[i][j][k].f1, "p_2298->g_2103[i][j][k].f1", print_hash_value);
                transparent_crc(p_2298->g_2103[i][j][k].f2, "p_2298->g_2103[i][j][k].f2", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2298->g_2115[i].f0, "p_2298->g_2115[i].f0", print_hash_value);
        transparent_crc(p_2298->g_2115[i].f1, "p_2298->g_2115[i].f1", print_hash_value);
        transparent_crc(p_2298->g_2115[i].f2, "p_2298->g_2115[i].f2", print_hash_value);
        transparent_crc(p_2298->g_2115[i].f3, "p_2298->g_2115[i].f3", print_hash_value);
        transparent_crc(p_2298->g_2115[i].f4, "p_2298->g_2115[i].f4", print_hash_value);
        transparent_crc(p_2298->g_2115[i].f5, "p_2298->g_2115[i].f5", print_hash_value);
        transparent_crc(p_2298->g_2115[i].f6, "p_2298->g_2115[i].f6", print_hash_value);
        transparent_crc(p_2298->g_2115[i].f7, "p_2298->g_2115[i].f7", print_hash_value);

    }
    transparent_crc(p_2298->g_2132, "p_2298->g_2132", print_hash_value);
    transparent_crc(p_2298->g_2146, "p_2298->g_2146", print_hash_value);
    transparent_crc(p_2298->g_2216, "p_2298->g_2216", print_hash_value);
    transparent_crc(p_2298->g_2225.f0, "p_2298->g_2225.f0", print_hash_value);
    transparent_crc(p_2298->g_2225.f1, "p_2298->g_2225.f1", print_hash_value);
    transparent_crc(p_2298->g_2225.f2, "p_2298->g_2225.f2", print_hash_value);
    transparent_crc(p_2298->g_2228.f0, "p_2298->g_2228.f0", print_hash_value);
    transparent_crc(p_2298->g_2228.f1, "p_2298->g_2228.f1", print_hash_value);
    transparent_crc(p_2298->g_2228.f2, "p_2298->g_2228.f2", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
