// ---fake_divergence -g 18,31,1 -l 1,1,1
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


// Seed: 99

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int32_t g_23;
    uint32_t g_35;
    int8_t g_40;
    int32_t *g_67;
    int32_t **g_66;
    int32_t g_78[1];
    uint64_t g_95;
    uint32_t g_97;
    int32_t ***g_100;
    int32_t *** volatile * volatile g_99;
    int32_t * volatile g_111;
    uint16_t g_156;
    int32_t g_188;
    int32_t *g_187;
    int64_t g_191[10][9][2];
    volatile int8_t g_217[10];
    uint32_t g_249;
    uint8_t g_251;
    uint64_t g_253;
    int32_t g_288;
    uint32_t *g_299;
    uint32_t **g_298[5][4][8];
    int32_t * volatile * volatile g_326;
    int32_t *****g_338;
    int8_t g_579;
    int8_t g_581;
    int32_t *****g_596;
    int32_t ****g_599;
    int32_t *****g_598[5][4];
    int16_t g_632;
    int16_t *g_631[3];
    volatile int32_t g_641[4];
    int64_t g_738;
    int64_t *g_780;
    volatile uint8_t g_864;
    int8_t *g_906;
    int8_t **g_905;
    int32_t g_909;
    uint32_t ** volatile * volatile g_930;
    uint32_t ** volatile * volatile * volatile g_929;
    uint16_t g_931[10][7][3];
    volatile int32_t * volatile g_934;
    volatile int32_t * volatile * volatile g_935;
    int32_t * volatile g_1064[7][5][6];
    int32_t * volatile g_1065;
    int32_t *g_1094;
    int32_t **g_1093;
    uint64_t g_1144;
    int32_t g_1201;
    volatile uint32_t g_1246;
    int16_t g_1278;
    uint8_t g_1314;
    int64_t g_1363;
    volatile uint8_t g_1419;
    uint8_t * volatile g_1477;
    uint8_t * volatile * volatile g_1476;
    volatile uint64_t * volatile * volatile g_1544;
    int32_t g_1579;
    int32_t *g_1580;
    volatile uint8_t g_1647;
    int32_t **g_1703[1][10];
    uint32_t g_1718;
    uint64_t **g_1744;
    uint8_t g_1944;
    volatile int16_t g_1979;
    volatile int16_t *g_1987;
    volatile int16_t * volatile *g_1986[4][4][2];
    volatile int16_t * volatile ** volatile g_1985;
    uint32_t g_2069;
    uint16_t g_2072[4];
    uint32_t g_2140;
    uint64_t g_2172;
    uint64_t g_2183;
    int16_t ***g_2211;
    int32_t ***g_2246;
    volatile int32_t g_2417[3][10][6];
    volatile int8_t g_2463;
    uint32_t ***g_2496;
    int64_t g_2566;
    uint16_t * volatile * volatile g_2690;
    int32_t ***g_2697;
    int8_t ***g_2721[10];
    int8_t ****g_2720;
    uint32_t g_2743;
    int64_t * volatile g_2745;
    int64_t * volatile *g_2744;
    volatile uint64_t g_2751;
    volatile uint32_t g_2841;
    int16_t g_2902;
    uint8_t g_2905;
    volatile uint8_t g_2921;
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
uint64_t  func_1(struct S0 * p_2924);
int32_t * func_5(uint8_t  p_6, uint32_t  p_7, int32_t * p_8, int32_t * p_9, int32_t * p_10, struct S0 * p_2924);
int32_t * func_13(int64_t  p_14, int32_t * p_15, uint8_t  p_16, uint32_t  p_17, struct S0 * p_2924);
int32_t  func_44(uint32_t  p_45, struct S0 * p_2924);
int32_t * func_46(int32_t ** p_47, uint8_t  p_48, int32_t * p_49, int32_t * p_50, int64_t  p_51, struct S0 * p_2924);
int32_t * func_54(uint16_t  p_55, uint32_t  p_56, struct S0 * p_2924);
int32_t  func_57(int32_t ** p_58, int16_t  p_59, int32_t  p_60, struct S0 * p_2924);
int32_t ** func_61(int64_t  p_62, int32_t ** p_63, uint64_t  p_64, uint64_t  p_65, struct S0 * p_2924);
uint64_t  func_68(int32_t * p_69, uint64_t  p_70, int32_t ** p_71, int64_t  p_72, struct S0 * p_2924);
int32_t * func_73(int32_t  p_74, struct S0 * p_2924);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2924->g_2
 * writes: p_2924->g_2
 */
uint64_t  func_1(struct S0 * p_2924)
{ /* block id: 4 */
    int32_t l_12 = 2L;
    int32_t *l_20 = &p_2924->g_2;
    int32_t *l_2232 = &p_2924->g_78[0];
    int16_t *l_2233 = &p_2924->g_632;
    int32_t ***l_2242 = (void*)0;
    uint8_t *l_2249 = (void*)0;
    uint8_t **l_2248 = &l_2249;
    uint16_t l_2250[2][9] = {{0x614CL,0UL,0UL,0x614CL,0x614CL,0UL,0UL,0x614CL,0x614CL},{0x614CL,0UL,0UL,0x614CL,0x614CL,0UL,0UL,0x614CL,0x614CL}};
    int32_t l_2259 = (-7L);
    int32_t l_2260 = 0x74B8D6ECL;
    int32_t l_2261 = 0x791FE432L;
    int32_t l_2262 = 0x1C70C22FL;
    int32_t l_2263 = (-5L);
    int32_t l_2264 = 0x77EA4B7EL;
    int32_t l_2266 = (-5L);
    int32_t l_2267 = 0x603AAAD1L;
    int32_t l_2268 = 0x25D8B22DL;
    int32_t l_2271[4][7] = {{0L,0L,0x79E34D9FL,(-1L),0x10C1E4A8L,(-4L),0x7A5667CAL},{0L,0L,0x79E34D9FL,(-1L),0x10C1E4A8L,(-4L),0x7A5667CAL},{0L,0L,0x79E34D9FL,(-1L),0x10C1E4A8L,(-4L),0x7A5667CAL},{0L,0L,0x79E34D9FL,(-1L),0x10C1E4A8L,(-4L),0x7A5667CAL}};
    uint8_t l_2272 = 0xF7L;
    uint8_t l_2286 = 0UL;
    uint32_t l_2303 = 0xA79D6049L;
    int64_t *l_2319 = &p_2924->g_1363;
    int32_t l_2323 = 8L;
    uint16_t l_2329 = 0x9017L;
    uint8_t l_2350 = 255UL;
    uint16_t l_2384 = 0x3798L;
    uint32_t l_2446 = 2UL;
    uint32_t ***l_2488 = (void*)0;
    int32_t l_2504 = 0x234DE02FL;
    uint64_t ***l_2528 = (void*)0;
    int16_t l_2532 = 0x0269L;
    int16_t ****l_2629 = &p_2924->g_2211;
    int16_t *****l_2628 = &l_2629;
    uint32_t l_2804[5][1][4] = {{{8UL,8UL,8UL,8UL}},{{8UL,8UL,8UL,8UL}},{{8UL,8UL,8UL,8UL}},{{8UL,8UL,8UL,8UL}},{{8UL,8UL,8UL,8UL}}};
    int8_t l_2919 = (-10L);
    int i, j, k;
    for (p_2924->g_2 = 0; (p_2924->g_2 == 17); ++p_2924->g_2)
    { /* block id: 7 */
        int32_t *l_11 = &p_2924->g_2;
        int32_t l_2234 = (-1L);
        int32_t l_2235 = 0x50D99AB8L;
        int32_t ***l_2245 = &p_2924->g_66;
        uint32_t *l_2247[4][7][6] = {{{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249}},{{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249}},{{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249}},{{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249},{(void*)0,&p_2924->g_249,&p_2924->g_35,&p_2924->g_2140,&p_2924->g_249,&p_2924->g_249}}};
        int32_t l_2270 = 0L;
        uint8_t *l_2328 = &l_2272;
        int32_t l_2343 = 1L;
        int32_t l_2344 = 1L;
        uint32_t ***l_2374 = &p_2924->g_298[0][0][7];
        int8_t ***l_2383 = &p_2924->g_905;
        uint32_t l_2421 = 0xA6DCCB70L;
        uint32_t **l_2474 = &l_2247[2][2][2];
        int i, j, k;
        (1 + 1);
    }
    for (l_2260 = (-2); (l_2260 <= (-22)); l_2260 = safe_sub_func_uint8_t_u_u(l_2260, 2))
    { /* block id: 1289 */
        uint16_t *l_2529 = &l_2329;
        uint16_t *l_2533 = &l_2250[1][8];
        int32_t l_2534[5][1][4] = {{{0x44A9425AL,0L,(-10L),0L}},{{0x44A9425AL,0L,(-10L),0L}},{{0x44A9425AL,0L,(-10L),0L}},{{0x44A9425AL,0L,(-10L),0L}},{{0x44A9425AL,0L,(-10L),0L}}};
        int16_t *l_2535 = &l_2532;
        int32_t l_2567 = 2L;
        int32_t *l_2584[7][5] = {{(void*)0,&p_2924->g_909,(void*)0,(void*)0,&p_2924->g_909},{(void*)0,&p_2924->g_909,(void*)0,(void*)0,&p_2924->g_909},{(void*)0,&p_2924->g_909,(void*)0,(void*)0,&p_2924->g_909},{(void*)0,&p_2924->g_909,(void*)0,(void*)0,&p_2924->g_909},{(void*)0,&p_2924->g_909,(void*)0,(void*)0,&p_2924->g_909},{(void*)0,&p_2924->g_909,(void*)0,(void*)0,&p_2924->g_909},{(void*)0,&p_2924->g_909,(void*)0,(void*)0,&p_2924->g_909}};
        uint64_t *l_2609 = &p_2924->g_1144;
        int8_t *l_2637 = &p_2924->g_40;
        int32_t l_2699 = 1L;
        uint32_t l_2803 = 0x931951B4L;
        int32_t l_2850 = 0x20D34BA3L;
        int32_t *l_2854 = &p_2924->g_23;
        int16_t l_2899 = (-4L);
        int i, j, k;
        (1 + 1);
    }
    return (*l_20);
}


/* ------------------------------------------ */
/* 
 * reads : p_2924->g_1476 p_2924->g_1477 p_2924->g_251 p_2924->g_1314 p_2924->g_929 p_2924->g_930 p_2924->g_66 p_2924->g_188 p_2924->g_67 p_2924->g_299 p_2924->g_23 p_2924->g_2 p_2924->g_78 p_2924->g_905 p_2924->g_906 p_2924->g_581 p_2924->g_931 p_2924->g_40 p_2924->g_780 p_2924->g_909 p_2924->g_288 p_2924->g_191 p_2924->g_95 p_2924->g_111 p_2924->g_187 p_2924->g_1093 p_2924->g_1094 p_2924->g_1979 p_2924->g_1985 p_2924->g_35 p_2924->g_99 p_2924->g_97 p_2924->g_1419 p_2924->g_249 p_2924->g_1363 p_2924->g_156 p_2924->g_1987 p_2924->g_2140 p_2924->g_632 p_2924->g_2183 p_2924->g_2211 p_2924->g_1579 p_2924->g_579
 * writes: p_2924->g_579 p_2924->g_67 p_2924->g_97 p_2924->g_931 p_2924->g_40 p_2924->g_581 p_2924->g_738 p_2924->g_188 p_2924->g_191 p_2924->g_632 p_2924->g_1314 p_2924->g_288 p_2924->g_251 p_2924->g_1944 p_2924->g_1363 p_2924->g_1094 p_2924->g_253 p_2924->g_1278 p_2924->g_298 p_2924->g_156 p_2924->g_598 p_2924->g_338 p_2924->g_95 p_2924->g_35 p_2924->g_78 p_2924->g_2069 p_2924->g_2072 p_2924->g_2140 p_2924->g_2172 p_2924->g_2211 p_2924->g_1579
 */
int32_t * func_5(uint8_t  p_6, uint32_t  p_7, int32_t * p_8, int32_t * p_9, int32_t * p_10, struct S0 * p_2924)
{ /* block id: 965 */
    uint32_t l_1831 = 0x65876B6EL;
    uint32_t ***l_1838[4][8] = {{&p_2924->g_298[0][0][7],(void*)0,&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],(void*)0,&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],(void*)0},{&p_2924->g_298[0][0][7],(void*)0,&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],(void*)0,&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],(void*)0},{&p_2924->g_298[0][0][7],(void*)0,&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],(void*)0,&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],(void*)0},{&p_2924->g_298[0][0][7],(void*)0,&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],(void*)0,&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],(void*)0}};
    int32_t *l_1841 = &p_2924->g_188;
    int32_t l_1857 = (-5L);
    int32_t l_1958 = 0x458F5970L;
    uint32_t **l_1984 = (void*)0;
    int16_t *l_2013 = &p_2924->g_632;
    int64_t *l_2026 = &p_2924->g_738;
    uint32_t l_2045[2];
    int8_t ***l_2081[10];
    uint32_t *l_2087 = &l_2045[0];
    int32_t l_2092 = 3L;
    int32_t l_2099 = 0L;
    int32_t l_2100 = 0x70D8E242L;
    int32_t l_2101 = (-10L);
    int32_t l_2103 = 0x29D6E646L;
    int32_t l_2108 = 0x65CE0A90L;
    int32_t l_2110[4] = {0x2CF94C77L,0x2CF94C77L,0x2CF94C77L,0x2CF94C77L};
    uint64_t *l_2137 = &p_2924->g_1144;
    int64_t l_2143[2][5][3] = {{{(-9L),1L,(-9L)},{(-9L),1L,(-9L)},{(-9L),1L,(-9L)},{(-9L),1L,(-9L)},{(-9L),1L,(-9L)}},{{(-9L),1L,(-9L)},{(-9L),1L,(-9L)},{(-9L),1L,(-9L)},{(-9L),1L,(-9L)},{(-9L),1L,(-9L)}}};
    int32_t l_2151 = (-8L);
    uint16_t *l_2197 = &p_2924->g_931[6][2][2];
    uint8_t *l_2206 = &p_2924->g_251;
    int16_t ****l_2212 = &p_2924->g_2211;
    int16_t **l_2215 = &p_2924->g_631[0];
    int16_t ***l_2214 = &l_2215;
    int16_t ****l_2213 = &l_2214;
    uint64_t l_2229 = 0x72867E9815BAD930L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_2045[i] = 0x507BA803L;
    for (i = 0; i < 10; i++)
        l_2081[i] = &p_2924->g_905;
lbl_2216:
    for (p_2924->g_579 = 2; (p_2924->g_579 < 23); p_2924->g_579 = safe_add_func_uint32_t_u_u(p_2924->g_579, 6))
    { /* block id: 968 */
        int32_t l_1830[10][9] = {{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL},{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL},{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL},{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL},{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL},{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL},{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL},{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL},{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL},{0x501DECCFL,0x6FC757ACL,0x050D167CL,0x70357586L,(-1L),0x70357586L,0x050D167CL,0x6FC757ACL,0x501DECCFL}};
        int32_t l_1852 = 3L;
        uint64_t l_1855 = 1UL;
        uint16_t *l_1856 = &p_2924->g_931[8][1][1];
        int8_t *l_1874 = (void*)0;
        int8_t *l_1875 = &p_2924->g_40;
        int16_t *l_1896 = &p_2924->g_632;
        uint16_t l_1897 = 65535UL;
        uint8_t *l_1898 = (void*)0;
        uint8_t *l_1899 = (void*)0;
        uint8_t *l_1900 = &p_2924->g_1314;
        int32_t l_1913[7] = {(-9L),(-10L),(-9L),(-9L),(-10L),(-9L),(-9L)};
        int32_t l_1959 = 0x1369D405L;
        int32_t *l_1963 = (void*)0;
        int8_t ***l_1964[2][6] = {{&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905},{&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905}};
        uint16_t l_1965 = 0xCF1AL;
        int64_t *l_1978 = &p_2924->g_738;
        uint32_t **l_2053 = (void*)0;
        int8_t l_2070 = 0x6FL;
        int8_t l_2091 = 0x61L;
        int32_t l_2093 = 1L;
        int32_t l_2094 = 0x31C5965CL;
        int32_t l_2095 = 3L;
        int32_t l_2098 = 1L;
        int32_t l_2102 = (-1L);
        int32_t l_2105 = 0x0BCC3F39L;
        int32_t l_2111 = 0x1E8A7EA4L;
        uint32_t l_2112 = 4294967293UL;
        uint32_t l_2115 = 3UL;
        uint64_t l_2118 = 18446744073709551615UL;
        uint32_t l_2139[5][3][9] = {{{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L}},{{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L}},{{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L}},{{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L}},{{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L},{0xE4F54D22L,4294967289UL,0xE75F35C9L,0x26508346L,4294967295UL,0x26508346L,0xE75F35C9L,4294967289UL,0xE4F54D22L}}};
        int32_t **l_2159 = &p_2924->g_187;
        int i, j, k;
        (*p_2924->g_66) = ((((safe_mod_func_uint8_t_u_u((l_1830[8][4] , 9UL), (l_1831 , ((safe_div_func_uint64_t_u_u(0x0C7F450FBEC31BE4L, (((safe_mod_func_int64_t_s_s((safe_div_func_int8_t_s_s(((**p_2924->g_1476) , (((l_1838[1][3] == (((((p_7 && (safe_add_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), ((void*)0 == &p_2924->g_632)))) < (**p_2924->g_1476)) , l_1830[8][4]) == p_2924->g_1314) , (*p_2924->g_929))) && p_7) < l_1830[8][4])), l_1831)), 18446744073709551615UL)) & 255UL) , l_1831))) | 6UL)))) >= l_1831) & p_7) , l_1841);
        l_1857 |= (safe_add_func_int16_t_s_s(p_7, ((((+(safe_mul_func_int8_t_s_s((+((((((*l_1856) &= (safe_mod_func_int8_t_s_s((((safe_sub_func_int64_t_s_s((p_6 > (l_1852 = ((*l_1841) == (safe_mod_func_int32_t_s_s(l_1830[2][6], 0x1802048CL))))), (FAKE_DIVERGE(p_2924->global_2_offset, get_global_id(2), 10) <= ((safe_div_func_int32_t_s_s((**p_2924->g_66), (((&p_2924->g_1718 != (void*)0) && (((*p_2924->g_299) = (((p_7 && (*l_1841)) >= 0x46L) , p_7)) > p_6)) , (*p_8)))) <= p_6)))) > (*p_9)) > (**p_2924->g_905)), l_1855))) != (*l_1841)) | FAKE_DIVERGE(p_2924->group_2_offset, get_group_id(2), 10)) , p_7) & p_6)), FAKE_DIVERGE(p_2924->global_0_offset, get_global_id(0), 10)))) >= (*l_1841)) >= (*l_1841)) >= l_1830[8][4])));
        l_1852 = ((((*l_1900) |= (safe_div_func_uint16_t_u_u((p_7 >= (safe_add_func_int8_t_s_s(((safe_div_func_int64_t_s_s((safe_div_func_uint64_t_u_u((((*l_1896) = (((safe_sub_func_int64_t_s_s(((p_2924->g_78[0] , ((safe_rshift_func_int16_t_s_u(l_1855, (+(safe_add_func_int64_t_s_s(((*p_2924->g_780) = (safe_lshift_func_int8_t_s_s(((*l_1841) = (((*p_2924->g_906) = (((*l_1875) &= (*p_2924->g_906)) | p_6)) || ((((**p_2924->g_905) = ((p_2924->g_738 = ((safe_rshift_func_int8_t_s_s((((*l_1841) >= (safe_rshift_func_uint16_t_u_u(p_7, (((safe_mod_func_int16_t_s_s((((((safe_sub_func_uint16_t_u_u(((safe_sub_func_int64_t_s_s((safe_add_func_uint32_t_u_u((((safe_lshift_func_int8_t_s_u((safe_mod_func_uint32_t_u_u((((safe_mul_func_int16_t_s_s(l_1852, ((((safe_mul_func_int8_t_s_s((1L ^ 0x1381L), p_7)) , (*p_10)) || p_6) >= 0x6B182E33EE936ACFL))) | p_6) > l_1852), p_6)), 4)) > 0x12L) | 0x81L), GROUP_DIVERGE(2, 1))), (*l_1841))) < l_1852), p_7)) & (-1L)) ^ 255UL) > p_6) || 0x03L), p_7)) ^ 7L) , 0x7263L)))) & p_2924->g_188), 6)) < p_7)) , p_6)) >= (**p_2924->g_1476)) < (*l_1841)))), 2))), p_7))))) ^ GROUP_DIVERGE(1, 1))) < p_6), l_1852)) , 0x12L) > p_6)) || l_1897), 0x78FE2FBD40B49DABL)), 1UL)) > p_7), l_1855))), p_2924->g_909))) <= l_1855) && l_1897);
        for (p_2924->g_288 = 2; (p_2924->g_288 >= 0); p_2924->g_288 -= 1)
        { /* block id: 985 */
            uint32_t l_1935 = 0xA6AE2024L;
            uint32_t **l_1983 = (void*)0;
            int32_t l_2002[5];
            int32_t *****l_2023[3][6] = {{&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599},{&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599},{&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599}};
            int32_t l_2036 = 0x5EA83D7FL;
            int32_t l_2074 = 1L;
            int32_t l_2090 = (-3L);
            int8_t **l_2150[8][10] = {{&l_1875,&l_1875,&p_2924->g_906,(void*)0,&p_2924->g_906,&l_1874,&l_1874,&l_1874,&l_1874,&l_1874},{&l_1875,&l_1875,&p_2924->g_906,(void*)0,&p_2924->g_906,&l_1874,&l_1874,&l_1874,&l_1874,&l_1874},{&l_1875,&l_1875,&p_2924->g_906,(void*)0,&p_2924->g_906,&l_1874,&l_1874,&l_1874,&l_1874,&l_1874},{&l_1875,&l_1875,&p_2924->g_906,(void*)0,&p_2924->g_906,&l_1874,&l_1874,&l_1874,&l_1874,&l_1874},{&l_1875,&l_1875,&p_2924->g_906,(void*)0,&p_2924->g_906,&l_1874,&l_1874,&l_1874,&l_1874,&l_1874},{&l_1875,&l_1875,&p_2924->g_906,(void*)0,&p_2924->g_906,&l_1874,&l_1874,&l_1874,&l_1874,&l_1874},{&l_1875,&l_1875,&p_2924->g_906,(void*)0,&p_2924->g_906,&l_1874,&l_1874,&l_1874,&l_1874,&l_1874},{&l_1875,&l_1875,&p_2924->g_906,(void*)0,&p_2924->g_906,&l_1874,&l_1874,&l_1874,&l_1874,&l_1874}};
            uint8_t l_2156 = 1UL;
            int i, j;
            for (i = 0; i < 5; i++)
                l_2002[i] = 1L;
            p_9 = (l_1897 , p_9);
            for (p_7 = 0; (p_7 <= 8); p_7 += 1)
            { /* block id: 989 */
                int32_t l_1916 = 0x7D7C1188L;
                int64_t l_1955 = 0x77EDFD6319DC0990L;
                int i, j, k;
                if ((safe_add_func_uint32_t_u_u((safe_div_func_int32_t_s_s((l_1830[p_7][(p_2924->g_288 + 4)] > ((safe_add_func_uint8_t_u_u(((l_1830[4][0] , ((safe_mod_func_int8_t_s_s(((safe_div_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u(l_1913[0], (p_7 , l_1830[p_7][(p_2924->g_288 + 4)]))) , (safe_rshift_func_uint16_t_u_u(((*l_1856)++), (((l_1913[0] != ((safe_mul_func_int16_t_s_s(0L, (safe_mod_func_uint32_t_u_u(0x0EC3203BL, (FAKE_DIVERGE(p_2924->local_2_offset, get_local_id(2), 10) && (safe_div_func_int16_t_s_s((safe_div_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_s(((((safe_rshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_u((((safe_mul_func_int16_t_s_s(p_7, p_7)) || 7L) == GROUP_DIVERGE(2, 1)), p_6)), 6)) == p_7) , 1UL) >= l_1913[0]), p_6)) , 0x58FCL), p_7)), 65530UL))))))) == 0x9643747C914A3A6DL)) | 0x601C8D53L) , GROUP_DIVERGE(0, 1))))), (*p_2924->g_1477))) || p_6), 0xCAL)) , p_7)) | p_6), l_1916)) != (*p_2924->g_780))), (*l_1841))), 0x306A9BEBL)))
                { /* block id: 991 */
                    uint32_t l_1953 = 0xF36CCC85L;
                    (*p_2924->g_66) = (void*)0;
                    if ((l_1935 = (*l_1841)))
                    { /* block id: 994 */
                        int32_t l_1942 = 0x0C4F412FL;
                        uint8_t *l_1943 = &p_2924->g_1944;
                        int64_t *l_1954 = &p_2924->g_1363;
                        l_1916 = l_1916;
                        (*l_1841) |= ((safe_mul_func_int8_t_s_s(((((((*l_1943) = ((safe_add_func_uint8_t_u_u(((*p_2924->g_1477)--), ((*p_2924->g_906) = (l_1900 == (void*)0)))) <= ((*l_1900) ^= (l_1942 | GROUP_DIVERGE(1, 1))))) || ((safe_add_func_int64_t_s_s((safe_add_func_int64_t_s_s((*p_2924->g_780), ((((*l_1954) = (safe_lshift_func_int16_t_s_s(((3UL != (((safe_mod_func_int8_t_s_s((((l_1953 <= (((((*l_1896) = (p_2924->g_95 , p_7)) & p_6) | 0x1721L) , (*p_2924->g_111))) < l_1953) , (-1L)), l_1953)) && 65535UL) < FAKE_DIVERGE(p_2924->group_0_offset, get_group_id(0), 10))) | 0x091E6DCF67A9F656L), l_1897))) > 6L) || p_7))), 0x5961936EFE450DE0L)) && GROUP_DIVERGE(2, 1))) && l_1855) , 0L) , p_6), 0xA8L)) , l_1953);
                    }
                    else
                    { /* block id: 1003 */
                        if ((*p_8))
                            break;
                    }
                    (*p_2924->g_187) = (-9L);
                    l_1916 &= (p_10 != ((*p_2924->g_1093) = (*p_2924->g_1093)));
                }
                else
                { /* block id: 1009 */
                    uint32_t l_1960[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1960[i] = 5UL;
                    for (p_2924->g_1363 = 0; (p_2924->g_1363 <= 3); p_2924->g_1363 += 1)
                    { /* block id: 1012 */
                        if ((*p_10))
                            break;
                    }
                    if ((*p_8))
                        continue;
                    for (p_2924->g_253 = 0; (p_2924->g_253 <= 3); p_2924->g_253 += 1)
                    { /* block id: 1018 */
                        int32_t *l_1956 = &p_2924->g_23;
                        int32_t *l_1957[6][5][3] = {{{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579}},{{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579}},{{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579}},{{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579}},{{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579}},{{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579},{&l_1857,&p_2924->g_2,&p_2924->g_1579}}};
                        int i, j, k;
                        if (l_1935)
                            break;
                        l_1960[2]++;
                    }
                }
                return l_1963;
            }
            if ((((void*)0 == l_1964[0][5]) > (p_6 , (l_1965 < ((((safe_div_func_uint32_t_u_u((l_1935 >= (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_s(((p_6 = (((safe_mul_func_int8_t_s_s((((safe_lshift_func_int8_t_s_u(((*p_2924->g_906) ^= (*l_1841)), (GROUP_DIVERGE(0, 1) && ((0x40D7L <= (~(((void*)0 == &l_1855) , p_6))) != p_7)))) , l_1978) == (void*)0), l_1935)) > p_7) >= (-1L))) , p_2924->g_1979), p_7)) == (*p_2924->g_780)), p_7)), p_2924->g_931[6][2][2]))), FAKE_DIVERGE(p_2924->group_2_offset, get_group_id(2), 10))) < 0x12407C9B672C646EL) , (*l_1841)) == (*l_1841))))))
            { /* block id: 1027 */
                uint8_t l_1980 = 0x58L;
                int32_t l_2039 = (-7L);
                int32_t l_2040 = 0x1A3FCEC1L;
                int32_t l_2044 = (-1L);
                uint32_t **l_2052 = &p_2924->g_299;
                uint16_t l_2089 = 0UL;
                int32_t l_2106[5][4][3] = {{{1L,0L,0L},{1L,0L,0L},{1L,0L,0L},{1L,0L,0L}},{{1L,0L,0L},{1L,0L,0L},{1L,0L,0L},{1L,0L,0L}},{{1L,0L,0L},{1L,0L,0L},{1L,0L,0L},{1L,0L,0L}},{{1L,0L,0L},{1L,0L,0L},{1L,0L,0L},{1L,0L,0L}},{{1L,0L,0L},{1L,0L,0L},{1L,0L,0L},{1L,0L,0L}}};
                int i, j, k;
                if ((*p_2924->g_111))
                { /* block id: 1028 */
                    int32_t l_2005 = 0x49337052L;
                    uint8_t l_2006 = 246UL;
                    int32_t l_2007[10] = {0x6DE95A86L,6L,0x54900E7BL,6L,0x6DE95A86L,0x6DE95A86L,6L,0x54900E7BL,6L,0x6DE95A86L};
                    int32_t l_2015 = 0x31848449L;
                    int i;
                    for (p_2924->g_1278 = 2; (p_2924->g_1278 >= 0); p_2924->g_1278 -= 1)
                    { /* block id: 1031 */
                        int32_t *l_2000 = (void*)0;
                        int32_t *l_2001[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_2001[i] = &l_1958;
                        if (l_1980)
                            break;
                        l_2007[2] = (safe_div_func_uint16_t_u_u(((((((l_1983 = l_1983) != (p_2924->g_298[1][1][0] = l_1984)) != ((void*)0 == p_2924->g_1985)) & ((safe_div_func_int32_t_s_s((((safe_add_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s((p_7 >= 0x49567760C71652FDL), (safe_sub_func_uint32_t_u_u(0x24D48F7CL, (l_2002[1] &= (l_1958 ^= (*p_2924->g_187))))))) != (safe_mod_func_int16_t_s_s(4L, p_6))), l_2005)), l_2006)), p_7)) || (*l_1841)) >= p_6), p_7)) == p_7)) > p_6) , FAKE_DIVERGE(p_2924->group_1_offset, get_group_id(1), 10)), p_6));
                    }
                    for (l_1958 = 0; (l_1958 <= 2); l_1958 += 1)
                    { /* block id: 1041 */
                        uint64_t l_2008 = 0UL;
                        int32_t *l_2014[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_2014[i] = &p_2924->g_1579;
                        l_2015 ^= ((((l_2008 ^ ((l_2008 && (**p_2924->g_1476)) , p_7)) , (((0x1804477D5BCDDAFEL < 0xD04C5E4B60272E8FL) | (safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((l_2013 == (void*)0), 13)), (+l_2007[2])))) || 0x3753L)) ^ (*l_1841)) || p_2924->g_23);
                    }
                }
                else
                { /* block id: 1044 */
                    uint64_t ***l_2019 = (void*)0;
                    uint64_t ****l_2018 = &l_2019;
                    uint16_t *l_2020 = &p_2924->g_156;
                    int32_t ******l_2022 = &p_2924->g_598[2][2];
                    uint16_t **l_2029 = &l_1856;
                    int32_t *l_2037 = &p_2924->g_188;
                    if ((safe_mul_func_int16_t_s_s(p_6, (l_2002[2] , ((*l_2020) = ((*l_1856) = (((*l_2018) = &p_2924->g_1744) != (void*)0)))))))
                    { /* block id: 1048 */
                        int32_t *l_2021 = (void*)0;
                        l_2021 = p_10;
                    }
                    else
                    { /* block id: 1050 */
                        (*p_2924->g_66) = p_10;
                    }
                    if ((((((*l_2022) = &p_2924->g_599) != (p_2924->g_338 = l_2023[1][3])) != ((l_1978 != l_2026) <= ((((safe_add_func_int8_t_s_s((~l_1980), (((*l_2029) = &l_1897) != ((0xB8A50C05B529F704L < (((safe_rshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((safe_sub_func_uint8_t_u_u(l_1980, (65535UL < p_6))), (*l_1841))), (*l_1841))) > 0xD7L) == p_6)) , &p_2924->g_931[4][6][0])))) & 0x65L) > 0x2E02E4CAL) > GROUP_DIVERGE(0, 1)))) , 0x6D91E2ADL))
                    { /* block id: 1056 */
                        if ((*p_10))
                            break;
                        if (l_2036)
                            break;
                        return l_2037;
                    }
                    else
                    { /* block id: 1060 */
                        return p_9;
                    }
                }
                for (p_2924->g_251 = 0; (p_2924->g_251 <= 0); p_2924->g_251 += 1)
                { /* block id: 1066 */
                    int32_t l_2041[6][10] = {{0x1ED59904L,0x1CB93B74L,0x5ADCB936L,(-1L),0L,0x1ED59904L,(-1L),0x4317561CL,(-1L),0x1ED59904L},{0x1ED59904L,0x1CB93B74L,0x5ADCB936L,(-1L),0L,0x1ED59904L,(-1L),0x4317561CL,(-1L),0x1ED59904L},{0x1ED59904L,0x1CB93B74L,0x5ADCB936L,(-1L),0L,0x1ED59904L,(-1L),0x4317561CL,(-1L),0x1ED59904L},{0x1ED59904L,0x1CB93B74L,0x5ADCB936L,(-1L),0L,0x1ED59904L,(-1L),0x4317561CL,(-1L),0x1ED59904L},{0x1ED59904L,0x1CB93B74L,0x5ADCB936L,(-1L),0L,0x1ED59904L,(-1L),0x4317561CL,(-1L),0x1ED59904L},{0x1ED59904L,0x1CB93B74L,0x5ADCB936L,(-1L),0L,0x1ED59904L,(-1L),0x4317561CL,(-1L),0x1ED59904L}};
                    int i, j;
                    p_8 = func_73(l_1830[(p_2924->g_288 + 5)][(p_2924->g_288 + 5)], p_2924);
                    for (l_1857 = 8; (l_1857 >= 0); l_1857 -= 1)
                    { /* block id: 1070 */
                        int32_t l_2038 = 0x4D96F6F0L;
                        int32_t l_2042 = 0x1CE7F4B8L;
                        int32_t l_2043 = 0x1D841891L;
                        uint32_t *l_2068 = &p_2924->g_2069;
                        int64_t *l_2071 = &p_2924->g_738;
                        int8_t l_2073 = (-6L);
                        int i, j;
                        if (p_2924->g_78[p_2924->g_251])
                            break;
                        l_2045[0]++;
                        l_2074 = (((safe_rshift_func_uint16_t_u_s(((0x52L || ((p_2924->g_78[p_2924->g_251] , l_2052) != (l_1983 = l_2053))) ^ ((((*l_1900) = ((safe_mul_func_int16_t_s_s((((safe_rshift_func_int8_t_s_u(((safe_rshift_func_int16_t_s_s((((p_2924->g_2072[1] = ((safe_mod_func_uint16_t_u_u(((((safe_rshift_func_uint16_t_u_s(((l_2041[1][9] = ((*p_2924->g_780) |= ((((((*l_2068) = (((((*l_1896) = ((safe_lshift_func_uint16_t_u_u(((**p_2924->g_1476) < p_7), 8)) < ((*l_1841) |= 0x1311A1F4L))) || (safe_mul_func_uint16_t_u_u((+(+65535UL)), (+p_2924->g_1419)))) & 0L) , p_2924->g_581)) , l_2070) , 0xBD95L) , p_7) && l_2041[1][9]))) | 4UL), p_6)) && (**p_2924->g_1476)) , &p_2924->g_738) != l_2071), p_6)) >= p_7)) , 3L) , p_7), p_7)) , (*p_2924->g_906)), p_6)) >= l_1830[(p_2924->g_288 + 5)][(p_2924->g_288 + 5)]) | l_1830[(p_2924->g_288 + 5)][(p_2924->g_288 + 5)]), p_6)) > l_2073)) || 0x6CL) >= p_7)), l_2040)) >= 0x071747DE5B839079L) ^ 0x7ABC4D60L);
                        l_2041[0][3] = ((+249UL) | (((*l_1841) || (*p_10)) | ((*p_2924->g_299) = 0x8C538581L)));
                    }
                }
                for (l_1855 = 0; (l_1855 <= 2); l_1855 += 1)
                { /* block id: 1088 */
                    int8_t ***l_2082 = (void*)0;
                    int8_t ****l_2083 = &l_2082;
                    uint32_t *l_2086 = (void*)0;
                    int32_t l_2088 = (-1L);
                    int32_t l_2096 = 0x55FB1D9CL;
                    int32_t l_2097 = 1L;
                    int32_t l_2104 = 0x6E038D1FL;
                    int32_t l_2107 = 0x24317E70L;
                    int32_t l_2109[8];
                    int i;
                    for (i = 0; i < 8; i++)
                        l_2109[i] = 0L;
                    l_1857 |= (safe_lshift_func_uint16_t_u_u((FAKE_DIVERGE(p_2924->global_1_offset, get_global_id(1), 10) > (((safe_mul_func_int16_t_s_s((safe_div_func_uint16_t_u_u(((l_2081[4] != ((*l_2083) = l_2082)) != l_2039), p_6)), (((*l_1841) = GROUP_DIVERGE(1, 1)) && ((((safe_add_func_int32_t_s_s((*p_10), ((((((((((*p_2924->g_780) ^ (((l_2087 = l_2086) == &p_2924->g_1718) , ((((*l_1841) , 1UL) | (*l_1841)) , l_2088))) , p_7) , 1L) <= l_2088) >= l_2089) , p_6) , p_2924->g_249) || l_2088) <= 0x4B051193L))) , l_2090) < l_2040) , (*p_2924->g_1477))))) >= (*p_2924->g_299)) < l_2089)), p_2924->g_1363));
                    l_2112++;
                    ++l_2115;
                }
            }
            else
            { /* block id: 1096 */
                uint32_t *l_2129 = &p_2924->g_2069;
                uint64_t ****l_2132 = (void*)0;
                uint32_t *l_2138 = (void*)0;
                int32_t l_2144 = 0x50323B8CL;
                int32_t l_2145 = (-2L);
                (*l_1841) &= l_2118;
                for (l_1855 = 0; (l_1855 <= 2); l_1855 += 1)
                { /* block id: 1100 */
                    p_10 = p_9;
                    return p_9;
                }
                if ((safe_rshift_func_uint8_t_u_u(((((*p_8) , GROUP_DIVERGE(2, 1)) & (safe_div_func_uint16_t_u_u(0x6008L, (safe_div_func_uint32_t_u_u(((p_6 != ((((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), 13)) || ((safe_add_func_int8_t_s_s((((l_2129 = l_2087) != (((+(safe_mod_func_uint64_t_u_u(((void*)0 != l_2132), ((((*l_1856) ^= (&p_2924->g_1986[3][3][0] != (void*)0)) , (safe_add_func_int32_t_s_s((((~(safe_sub_func_uint8_t_u_u((!(&l_1856 != (void*)0)), (-10L)))) , &l_1855) == l_2137), (*l_1841)))) | p_2924->g_156)))) | (*l_1841)) , l_2138)) > p_6), l_2139[2][2][0])) ^ (*p_2924->g_1987))) && p_7) && 0xFC5B0755L)) == (*l_1841)), (*l_1841)))))) , FAKE_DIVERGE(p_2924->group_0_offset, get_group_id(0), 10)), 5)))
                { /* block id: 1106 */
                    p_2924->g_2140++;
                }
                else
                { /* block id: 1108 */
                    uint32_t l_2146 = 1UL;
                    int16_t *l_2149 = &p_2924->g_632;
                    int32_t l_2173 = 0x13A681FDL;
                    uint64_t l_2181[9][1][1];
                    int8_t ***l_2184 = &l_2150[0][6];
                    int i, j, k;
                    for (i = 0; i < 9; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_2181[i][j][k] = 18446744073709551610UL;
                        }
                    }
                    if ((*p_10))
                        break;
                    l_2146--;
                    if ((((p_7 || (((*l_2149) = (((void*)0 == &l_1984) == (((0xAB8D326D1E2D0504L > GROUP_DIVERGE(0, 1)) == (l_2151 = ((((((((FAKE_DIVERGE(p_2924->group_1_offset, get_group_id(1), 10) ^ (l_2149 == (void*)0)) & ((**p_2924->g_905) &= 0L)) , (((0x9B8BL & p_7) ^ FAKE_DIVERGE(p_2924->local_2_offset, get_local_id(2), 10)) , &p_2924->g_906)) != l_2150[0][6]) , &p_2924->g_738) == (void*)0) == FAKE_DIVERGE(p_2924->local_0_offset, get_local_id(0), 10)) , 0x76L))) , (*p_2924->g_1987)))) != (-1L))) <= 6UL) >= (-1L)))
                    { /* block id: 1114 */
                        (*l_1841) = (!(-1L));
                    }
                    else
                    { /* block id: 1116 */
                        uint32_t l_2174 = 1UL;
                        l_2156 |= (safe_lshift_func_int8_t_s_s(2L, (safe_div_func_uint16_t_u_u((*l_1841), p_6))));
                        l_2102 |= (l_2173 &= ((*p_2924->g_906) ^ (safe_mul_func_int8_t_s_s(((l_2159 = &p_8) == (void*)0), ((((safe_lshift_func_int8_t_s_u((((safe_rshift_func_int8_t_s_s(l_2146, 6)) < GROUP_DIVERGE(0, 1)) , (p_2924->g_2172 = (safe_div_func_uint16_t_u_u(((((safe_div_func_int8_t_s_s(3L, ((p_6 || ((safe_lshift_func_int16_t_s_u((*l_1841), 8)) , ((*l_1875) = ((safe_mul_func_uint8_t_u_u(p_6, (*p_2924->g_906))) | (*p_10))))) , 2L))) | FAKE_DIVERGE(p_2924->local_0_offset, get_local_id(0), 10)) < 0xC3L) == p_2924->g_632), l_2146)))), 0)) & 0x5D8CDCA8L) || 0xDE50FDF0L) < p_7)))));
                        ++l_2174;
                    }
                    for (l_1959 = 0; (l_1959 <= 3); l_1959 += 1)
                    { /* block id: 1127 */
                        int8_t ****l_2182 = &l_2081[4];
                        int i, j;
                        (*l_1841) = (*l_1841);
                        (*p_2924->g_187) &= (safe_mod_func_uint16_t_u_u(((((((safe_mul_func_uint8_t_u_u(l_2181[2][0][0], (((*l_2182) = l_2081[7]) != (l_2184 = ((0x733B53F3L || ((l_2144 < 0xE1B7B422L) | p_2924->g_2183)) , (void*)0))))) ^ (safe_div_func_int32_t_s_s((((0UL | (((((safe_lshift_func_int16_t_s_s((-6L), p_6)) > p_6) != FAKE_DIVERGE(p_2924->local_0_offset, get_local_id(0), 10)) , 18446744073709551608UL) ^ 5L)) == (-7L)) , 0x7A56B2E2L), 4294967294UL))) , p_6) & (-1L)) & FAKE_DIVERGE(p_2924->group_0_offset, get_group_id(0), 10)) <= (*p_2924->g_1987)), p_7));
                    }
                }
            }
        }
    }
    l_1857 = ((safe_add_func_int64_t_s_s((safe_mod_func_int64_t_s_s((((((safe_mod_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(((*l_2197)++), (-5L))), ((*p_2924->g_780) = (safe_mul_func_uint8_t_u_u(((((safe_div_func_int64_t_s_s((*p_2924->g_780), ((safe_lshift_func_int8_t_s_u(((((((*l_1841) = FAKE_DIVERGE(p_2924->local_0_offset, get_local_id(0), 10)) , (*p_2924->g_1476)) != l_2206) <= (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (safe_mul_func_uint16_t_u_u(((((((*l_2213) = ((*l_2212) = p_2924->g_2211)) == (void*)0) != (((*p_8) <= p_7) < (*p_2924->g_780))) <= (-1L)) || l_2101), 0x049FL))))) || 0UL), 3)) , (*l_1841)))) , (*l_1841)) > p_7) || (*l_1841)), (**p_2924->g_905)))))) , p_6) >= p_2924->g_1579) ^ GROUP_DIVERGE(0, 1)) , (*p_2924->g_780)), p_6)), p_7)) != 0x74L);
    if (p_2924->g_1314)
        goto lbl_2216;
    for (p_2924->g_1579 = 19; (p_2924->g_1579 < 10); p_2924->g_1579 = safe_sub_func_uint32_t_u_u(p_2924->g_1579, 7))
    { /* block id: 1146 */
        int32_t l_2219 = (-6L);
        int32_t l_2220 = 0x6ACCB2A4L;
        int32_t *l_2221 = &p_2924->g_188;
        int32_t *l_2222 = &l_2110[0];
        int32_t *l_2223 = (void*)0;
        int32_t *l_2224 = &l_2108;
        int32_t *l_2225 = &l_2103;
        int32_t *l_2226 = &l_2108;
        int32_t *l_2227 = &l_1958;
        int32_t *l_2228 = &l_2103;
        l_2229++;
    }
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_2924->g_35 p_2924->g_2 p_2924->g_23 p_2924->g_251 p_2924->g_253 p_2924->g_249 p_2924->g_1144 p_2924->g_188
 * writes: p_2924->g_35 p_2924->g_23 p_2924->g_40 p_2924->g_1744 p_2924->g_251 p_2924->g_253 p_2924->g_249 p_2924->g_1144
 */
int32_t * func_13(int64_t  p_14, int32_t * p_15, uint8_t  p_16, uint32_t  p_17, struct S0 * p_2924)
{ /* block id: 8 */
    uint8_t l_21[1][3][7] = {{{6UL,6UL,0x1FL,255UL,255UL,255UL,0x1FL},{6UL,6UL,0x1FL,255UL,255UL,255UL,0x1FL},{6UL,6UL,0x1FL,255UL,255UL,255UL,0x1FL}}};
    int32_t l_32 = 1L;
    int32_t l_33 = 0L;
    int32_t l_34 = 0x07AD46D2L;
    uint8_t l_41 = 0xCFL;
    int32_t *l_1705 = &p_2924->g_78[0];
    uint64_t *l_1792 = &p_2924->g_1144;
    uint64_t **l_1791 = &l_1792;
    uint32_t ****l_1794 = (void*)0;
    uint32_t *****l_1793 = &l_1794;
    int i, j, k;
    for (p_17 = 0; (p_17 <= 0); p_17 += 1)
    { /* block id: 11 */
        int32_t *l_22 = &p_2924->g_23;
        int32_t *l_24 = &p_2924->g_23;
        int32_t l_25 = 9L;
        int32_t *l_26 = &p_2924->g_23;
        int32_t l_27 = 0L;
        int32_t *l_28 = (void*)0;
        int32_t *l_29 = &l_27;
        int32_t *l_30 = &l_27;
        int32_t *l_31[6][9][4] = {{{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23}},{{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23}},{{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23}},{{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23}},{{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23}},{{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23},{(void*)0,(void*)0,&l_25,&p_2924->g_23}}};
        int32_t ****l_1711[6] = {&p_2924->g_100,(void*)0,&p_2924->g_100,&p_2924->g_100,(void*)0,&p_2924->g_100};
        int32_t l_1739 = (-1L);
        int16_t l_1765 = 0x42DFL;
        uint64_t ***l_1795[3][6][3] = {{{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0}},{{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0}},{{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0},{&l_1791,(void*)0,(void*)0}}};
        uint16_t l_1821 = 0xEEFAL;
        int i, j, k;
        p_2924->g_35++;
        if ((*p_15))
        { /* block id: 13 */
            int32_t **l_38 = (void*)0;
            int32_t ***l_39 = &l_38;
            (*l_39) = l_38;
            if (p_2924->g_23)
                continue;
            if ((*p_15))
                continue;
        }
        else
        { /* block id: 17 */
            int32_t *l_1706 = &l_25;
            int16_t l_1714[7][2] = {{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}};
            int16_t l_1766 = 0x5EFDL;
            uint32_t **l_1768 = &p_2924->g_299;
            int32_t l_1773 = 0x280F06C7L;
            int i, j;
            for (p_2924->g_23 = 0; (p_2924->g_23 <= 0); p_2924->g_23 += 1)
            { /* block id: 20 */
                int8_t l_1731 = (-1L);
                int32_t *l_1732 = (void*)0;
                uint64_t *l_1747[5][9] = {{&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95},{&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95},{&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95},{&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95},{&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95,&p_2924->g_95}};
                uint64_t **l_1746 = &l_1747[0][1];
                int32_t l_1771 = 0x39407594L;
                int32_t l_1772 = 6L;
                int i, j;
                p_2924->g_40 = 0x6745C5BBL;
                l_41++;
            }
        }
        if ((*p_15))
            continue;
        p_2924->g_1744 = &l_1792;
        for (p_2924->g_251 = 0; (p_2924->g_251 <= 0); p_2924->g_251 += 1)
        { /* block id: 926 */
            int32_t ***l_1807 = &p_2924->g_66;
            for (p_2924->g_253 = 1; (p_2924->g_253 <= 4); p_2924->g_253 += 1)
            { /* block id: 929 */
                int32_t ***l_1806 = &p_2924->g_66;
                int16_t l_1810 = 0x31D8L;
                int16_t *l_1817 = &l_1810;
                int i, j, k;
                (1 + 1);
            }
            return p_15;
        }
    }
    for (p_2924->g_249 = 1; (p_2924->g_249 < 46); p_2924->g_249++)
    { /* block id: 951 */
        int32_t *l_1825 = &p_2924->g_188;
        for (p_14 = 2; (p_14 >= 0); p_14 -= 1)
        { /* block id: 954 */
            int32_t *l_1824 = &p_2924->g_78[0];
            return l_1824;
        }
        for (p_2924->g_1144 = 0; (p_2924->g_1144 <= 2); p_2924->g_1144 += 1)
        { /* block id: 959 */
            return l_1825;
        }
        if ((*l_1825))
            continue;
    }
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_2924->g_23 p_2924->g_66 p_2924->g_78 p_2924->g_35 p_2924->g_2 p_2924->g_99 p_2924->g_40 p_2924->g_111 p_2924->g_67 p_2924->g_97 p_2924->g_253 p_2924->g_298 p_2924->g_191 p_2924->g_95 p_2924->g_299 p_2924->g_187 p_2924->g_188 p_2924->g_156 p_2924->g_249 p_2924->g_100 p_2924->g_326 p_2924->g_217 p_2924->g_251 p_2924->g_288 p_2924->g_581 p_2924->g_631 p_2924->g_641 p_2924->g_632 p_2924->g_738 p_2924->g_780 p_2924->g_579 p_2924->g_864 p_2924->g_905 p_2924->g_929 p_2924->g_931 p_2924->g_934 p_2924->g_906 p_2924->g_1093 p_2924->g_1144 p_2924->g_1201 p_2924->g_909 p_2924->g_1314 p_2924->g_1278 p_2924->g_1419 p_2924->g_1476 p_2924->g_1477 p_2924->g_1544 p_2924->g_1579 p_2924->g_1363 p_2924->g_1647
 * writes: p_2924->g_78 p_2924->g_67 p_2924->g_95 p_2924->g_97 p_2924->g_35 p_2924->g_40 p_2924->g_298 p_2924->g_156 p_2924->g_188 p_2924->g_249 p_2924->g_338 p_2924->g_288 p_2924->g_187 p_2924->g_191 p_2924->g_579 p_2924->g_596 p_2924->g_598 p_2924->g_581 p_2924->g_251 p_2924->g_299 p_2924->g_738 p_2924->g_780 p_2924->g_909 p_2924->g_934 p_2924->g_641 p_2924->g_217 p_2924->g_632 p_2924->g_1144 p_2924->g_253 p_2924->g_1278 p_2924->g_1314 p_2924->g_1363 p_2924->g_1201 p_2924->g_931 p_2924->g_1580 p_2924->g_1647 p_2924->g_1093 p_2924->g_1703
 */
int32_t  func_44(uint32_t  p_45, struct S0 * p_2924)
{ /* block id: 23 */
    int32_t *l_53 = &p_2924->g_23;
    int32_t **l_52 = &l_53;
    int32_t *l_77 = &p_2924->g_78[0];
    int32_t ***l_82 = &l_52;
    int32_t ****l_81 = &l_82;
    int8_t l_1062 = 0x1FL;
    int32_t l_1663[5] = {0x394DACE3L,0x394DACE3L,0x394DACE3L,0x394DACE3L,0x394DACE3L};
    int32_t l_1686 = (-1L);
    int8_t *l_1697 = &p_2924->g_579;
    int32_t ***l_1702[7] = {&p_2924->g_1093,&p_2924->g_1093,&p_2924->g_1093,&p_2924->g_1093,&p_2924->g_1093,&p_2924->g_1093,&p_2924->g_1093};
    uint32_t l_1704 = 0x54B6893BL;
    int i;
    (*p_2924->g_66) = func_46(l_52, (**l_52), func_54((func_57(func_61(p_45, p_2924->g_66, func_68(func_73((safe_rshift_func_uint16_t_u_s(((((p_45 && ((*l_77) &= p_45)) , ((safe_rshift_func_int8_t_s_s((&p_2924->g_66 == ((*l_81) = &p_2924->g_66)), 0)) == ((p_2924->g_78[0] , (**l_52)) < (-2L)))) && 5UL) == p_2924->g_35), 14)), p_2924), (**l_52), p_2924->g_66, (**l_52), p_2924), p_45, p_2924), p_45, l_1062, p_2924) , (**l_52)), p_45, p_2924), (*l_52), p_2924->g_23, p_2924);
    for (p_2924->g_579 = 29; (p_2924->g_579 <= 12); --p_2924->g_579)
    { /* block id: 838 */
        int16_t l_1628[7] = {5L,5L,5L,5L,5L,5L,5L};
        int64_t l_1643[7] = {0x7BD3C6BCE4B3DC32L,0x466386B5A11F4AAFL,0x7BD3C6BCE4B3DC32L,0x7BD3C6BCE4B3DC32L,0x466386B5A11F4AAFL,0x7BD3C6BCE4B3DC32L,0x7BD3C6BCE4B3DC32L};
        int32_t l_1645[8][8] = {{(-3L),0L,(-3L),(-3L),0L,(-3L),(-3L),0L},{(-3L),0L,(-3L),(-3L),0L,(-3L),(-3L),0L},{(-3L),0L,(-3L),(-3L),0L,(-3L),(-3L),0L},{(-3L),0L,(-3L),(-3L),0L,(-3L),(-3L),0L},{(-3L),0L,(-3L),(-3L),0L,(-3L),(-3L),0L},{(-3L),0L,(-3L),(-3L),0L,(-3L),(-3L),0L},{(-3L),0L,(-3L),(-3L),0L,(-3L),(-3L),0L},{(-3L),0L,(-3L),(-3L),0L,(-3L),(-3L),0L}};
        int16_t **l_1666 = &p_2924->g_631[0];
        int32_t *l_1674 = &p_2924->g_909;
        int i, j;
        for (p_2924->g_1201 = 0; (p_2924->g_1201 <= 4); p_2924->g_1201 += 1)
        { /* block id: 841 */
            uint32_t l_1621 = 0UL;
            uint32_t *l_1622 = &p_2924->g_97;
            uint16_t *l_1627 = (void*)0;
            uint16_t *l_1629 = &p_2924->g_156;
            int32_t l_1644 = 0x1E486011L;
            int32_t l_1646 = 0x257AEE4DL;
            l_1644 |= ((*p_2924->g_1477) <= (safe_mod_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((*l_1622) ^= l_1621), l_1621)), (*p_2924->g_906))), (p_45 && (safe_div_func_int16_t_s_s((safe_sub_func_int16_t_s_s((((--(*l_1629)) & 8UL) || (safe_lshift_func_uint16_t_u_s((~(((safe_mul_func_uint16_t_u_u(((FAKE_DIVERGE(p_2924->group_2_offset, get_group_id(2), 10) == (safe_unary_minus_func_uint64_t_u(p_45))) ^ (safe_rshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_u((((+(!(safe_rshift_func_uint16_t_u_s(0x3C0BL, 3)))) >= l_1628[5]) != l_1628[0]), 9)), GROUP_DIVERGE(1, 1)))), p_2924->g_188)) , l_1643[1]) <= FAKE_DIVERGE(p_2924->group_2_offset, get_group_id(2), 10))), 10))), 0x4307L)), p_45))))));
            for (p_2924->g_188 = 3; (p_2924->g_188 >= 0); p_2924->g_188 -= 1)
            { /* block id: 847 */
                int16_t *l_1664 = &p_2924->g_1278;
                int16_t *l_1665 = &p_2924->g_632;
                uint8_t *l_1683 = &p_2924->g_1314;
                int i, j, k;
                --p_2924->g_1647;
                (*p_2924->g_66) = func_54(p_45, (safe_sub_func_uint32_t_u_u((((-4L) & ((18446744073709551609UL > ((*p_2924->g_780) ^= (((safe_unary_minus_func_uint32_t_u(((safe_rshift_func_int8_t_s_u((((*l_1665) ^= ((*l_1664) ^= (safe_div_func_uint16_t_u_u((p_45 <= ((safe_sub_func_int64_t_s_s(p_45, (l_1628[5] < p_45))) , 1UL)), ((safe_unary_minus_func_int64_t_s(((((safe_unary_minus_func_uint8_t_u(GROUP_DIVERGE(1, 1))) || 0x2E758FFA55DDD2E1L) != l_1663[0]) >= 0x61BAL))) , 0x2A04L))))) & p_2924->g_1647), 3)) == l_1628[0]))) | l_1621) & (-2L)))) < 3UL)) < l_1644), l_1643[1])), p_2924);
                if (((((void*)0 != l_1666) ^ p_45) , (safe_add_func_int8_t_s_s(p_45, p_45))))
                { /* block id: 853 */
                    int32_t l_1671 = (-1L);
                    int32_t *l_1684 = &l_1671;
                    l_1684 = func_73(((safe_div_func_uint8_t_u_u((GROUP_DIVERGE(2, 1) <= (((l_1671 &= FAKE_DIVERGE(p_2924->local_0_offset, get_local_id(0), 10)) && (safe_sub_func_uint32_t_u_u(((void*)0 == l_1674), ((p_45 == l_1671) & ((l_1671 || ((((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s((safe_mod_func_int32_t_s_s(((safe_sub_func_uint64_t_u_u((l_1683 == (void*)0), p_45)) ^ p_45), p_45)), 10)), GROUP_DIVERGE(0, 1))) <= (*p_2924->g_906)) && (*p_2924->g_780)) ^ p_45)) , 0x0F2FL))))) <= GROUP_DIVERGE(1, 1))), (**p_2924->g_905))) > p_45), p_2924);
                    (*l_77) ^= (l_1621 && FAKE_DIVERGE(p_2924->global_2_offset, get_global_id(2), 10));
                }
                else
                { /* block id: 857 */
                    int32_t *l_1685 = &l_1646;
                    (*p_2924->g_111) |= (p_45 & 0x00L);
                    (*p_2924->g_66) = l_1685;
                }
            }
            for (p_2924->g_40 = 0; (p_2924->g_40 <= 3); p_2924->g_40 += 1)
            { /* block id: 864 */
                return p_45;
            }
            if ((*p_2924->g_187))
                continue;
            for (p_2924->g_1278 = 3; (p_2924->g_1278 >= 0); p_2924->g_1278 -= 1)
            { /* block id: 870 */
                return l_1643[2];
            }
        }
        l_1686 &= (*l_77);
        if (l_1628[6])
            break;
    }
    (*l_77) = (0xEE528C56EDFEB3CCL & (((safe_add_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u((&l_81 != (void*)0), (((safe_lshift_func_uint8_t_u_u(0UL, (safe_mod_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((0x40L & ((*l_1697) &= (*p_2924->g_906))), (safe_mul_func_int16_t_s_s((!(safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2924->global_1_offset, get_global_id(1), 10), ((p_2924->g_1093 = &p_2924->g_1094) != (p_2924->g_1703[0][7] = &p_2924->g_1094))))), GROUP_DIVERGE(2, 1))))), p_45)))) || 0UL) , 0x49L))), l_1704)) ^ 0xED2BDF50L) || 0x25L));
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads : p_2924->g_97 p_2924->g_23 p_2924->g_641 p_2924->g_35 p_2924->g_253 p_2924->g_1144 p_2924->g_579 p_2924->g_738 p_2924->g_934 p_2924->g_864 p_2924->g_780 p_2924->g_191 p_2924->g_288 p_2924->g_631 p_2924->g_1201 p_2924->g_905 p_2924->g_906 p_2924->g_581 p_2924->g_156 p_2924->g_1093 p_2924->g_251 p_2924->g_187 p_2924->g_2 p_2924->g_188 p_2924->g_66 p_2924->g_40 p_2924->g_909 p_2924->g_78 p_2924->g_1314 p_2924->g_1278 p_2924->g_111 p_2924->g_95 p_2924->g_217 p_2924->g_1419 p_2924->g_1476 p_2924->g_632 p_2924->g_298 p_2924->g_1477 p_2924->g_1544 p_2924->g_931 p_2924->g_1579 p_2924->g_99 p_2924->g_67 p_2924->g_1363
 * writes: p_2924->g_97 p_2924->g_641 p_2924->g_738 p_2924->g_35 p_2924->g_632 p_2924->g_1144 p_2924->g_40 p_2924->g_288 p_2924->g_253 p_2924->g_581 p_2924->g_156 p_2924->g_67 p_2924->g_579 p_2924->g_1278 p_2924->g_78 p_2924->g_1314 p_2924->g_191 p_2924->g_1363 p_2924->g_95 p_2924->g_1201 p_2924->g_909 p_2924->g_188 p_2924->g_931 p_2924->g_1580
 */
int32_t * func_46(int32_t ** p_47, uint8_t  p_48, int32_t * p_49, int32_t * p_50, int64_t  p_51, struct S0 * p_2924)
{ /* block id: 546 */
    int32_t *l_1115 = &p_2924->g_23;
    int32_t *l_1163 = &p_2924->g_288;
    int32_t ******l_1182 = &p_2924->g_338;
    int32_t l_1208 = (-2L);
    int32_t l_1244 = 0x405D8856L;
    int32_t l_1245 = 1L;
    uint32_t **l_1307[3];
    uint16_t l_1309 = 0xA038L;
    int8_t l_1310 = 0x01L;
    uint8_t l_1327[8][4] = {{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL},{2UL,2UL,2UL,2UL}};
    int32_t l_1334 = 0x0404C35AL;
    int32_t l_1335 = 0x23E75D46L;
    uint32_t ***l_1349 = &p_2924->g_298[0][2][7];
    uint32_t ****l_1348[8][9][3] = {{{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349}},{{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349}},{{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349}},{{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349}},{{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349}},{{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349}},{{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349}},{{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349},{(void*)0,(void*)0,&l_1349}}};
    uint32_t l_1358 = 4294967289UL;
    int32_t l_1376 = 0x750ECE86L;
    uint8_t l_1386 = 0x3AL;
    uint64_t l_1400 = 18446744073709551615UL;
    int16_t **l_1416 = &p_2924->g_631[0];
    int16_t ***l_1415[8][1];
    uint8_t l_1441 = 1UL;
    uint8_t *l_1482 = (void*)0;
    uint8_t *l_1484 = &l_1327[7][1];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1307[i] = &p_2924->g_299;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
            l_1415[i][j] = &l_1416;
    }
    if ((safe_rshift_func_int16_t_s_s(p_48, 12)))
    { /* block id: 547 */
        int64_t l_1145 = 0x20D149CBD02851B6L;
        int32_t l_1167 = 1L;
        uint8_t *l_1219 = &p_2924->g_251;
        int32_t l_1233 = 1L;
        int32_t l_1238[1][7][5] = {{{(-1L),(-1L),0x55DB6572L,0x51DD19BDL,(-7L)},{(-1L),(-1L),0x55DB6572L,0x51DD19BDL,(-7L)},{(-1L),(-1L),0x55DB6572L,0x51DD19BDL,(-7L)},{(-1L),(-1L),0x55DB6572L,0x51DD19BDL,(-7L)},{(-1L),(-1L),0x55DB6572L,0x51DD19BDL,(-7L)},{(-1L),(-1L),0x55DB6572L,0x51DD19BDL,(-7L)},{(-1L),(-1L),0x55DB6572L,0x51DD19BDL,(-7L)}}};
        int32_t ****l_1283 = &p_2924->g_100;
        int8_t *l_1318 = (void*)0;
        int8_t *l_1319 = &p_2924->g_579;
        uint16_t *l_1320 = &l_1309;
        int32_t *l_1339[4][7][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        uint32_t ****l_1350[6][5] = {{(void*)0,(void*)0,&l_1349,&l_1349,&l_1349},{(void*)0,(void*)0,&l_1349,&l_1349,&l_1349},{(void*)0,(void*)0,&l_1349,&l_1349,&l_1349},{(void*)0,(void*)0,&l_1349,&l_1349,&l_1349},{(void*)0,(void*)0,&l_1349,&l_1349,&l_1349},{(void*)0,(void*)0,&l_1349,&l_1349,&l_1349}};
        uint32_t *****l_1351 = &l_1350[2][4];
        int64_t l_1357 = 0x09358537B46ADD94L;
        int i, j, k;
        for (p_2924->g_97 = 0; (p_2924->g_97 <= 3); p_2924->g_97 += 1)
        { /* block id: 550 */
            int32_t l_1127 = 0x0FA477A2L;
            int32_t l_1136 = 0x3B5810F3L;
            int16_t l_1147 = (-5L);
            int16_t **l_1188 = &p_2924->g_631[2];
            uint8_t *l_1193 = &p_2924->g_251;
            uint32_t l_1239 = 9UL;
            int32_t l_1242 = 0x1CB559D3L;
            int32_t l_1243[3][8][3] = {{{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL}},{{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL}},{{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL},{0x44C3029DL,1L,0x0BBFEC8AL}}};
            int32_t ****l_1285[10];
            int32_t ****l_1286 = &p_2924->g_100;
            uint64_t *l_1308 = &p_2924->g_1144;
            int64_t l_1311[4][7] = {{6L,4L,6L,6L,4L,6L,6L},{6L,4L,6L,6L,4L,6L,6L},{6L,4L,6L,6L,4L,6L,6L},{6L,4L,6L,6L,4L,6L,6L}};
            uint8_t *l_1312 = (void*)0;
            uint8_t *l_1313 = &p_2924->g_1314;
            uint16_t *l_1315 = &p_2924->g_931[0][1][0];
            int i, j, k;
            for (i = 0; i < 10; i++)
                l_1285[i] = &p_2924->g_100;
            p_2924->g_641[p_2924->g_97] &= (*p_50);
            for (p_2924->g_738 = 21; (p_2924->g_738 < 8); p_2924->g_738 = safe_sub_func_uint16_t_u_u(p_2924->g_738, 9))
            { /* block id: 554 */
                uint32_t l_1126[4];
                int64_t l_1166[8][8][3] = {{{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)}},{{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)}},{{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)}},{{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)}},{{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)}},{{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)}},{{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)}},{{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)},{0x06AA446A85A45891L,0x08A7CA036E26B98EL,(-2L)}}};
                uint32_t **l_1173 = &p_2924->g_299;
                int32_t l_1180 = (-10L);
                int32_t *l_1212 = &p_2924->g_78[0];
                int8_t **l_1225[3][5][9] = {{{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906}},{{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906}},{{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906},{&p_2924->g_906,(void*)0,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,&p_2924->g_906,(void*)0,&p_2924->g_906}}};
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_1126[i] = 0xF22CFFCCL;
                for (p_48 = (-27); (p_48 <= 60); p_48 = safe_add_func_int16_t_s_s(p_48, 5))
                { /* block id: 557 */
                    uint32_t *l_1116 = &p_2924->g_35;
                    int32_t l_1123 = (-1L);
                    int64_t *l_1143 = (void*)0;
                    int16_t *l_1146 = &p_2924->g_632;
                    uint8_t l_1148 = 0x41L;
                    (*p_47) = l_1115;
                    l_1148 &= ((**p_47) & (~(((*l_1116)--) != (safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s(l_1123, (safe_mul_func_int16_t_s_s(l_1123, ((((l_1127 &= l_1126[1]) > (safe_add_func_uint32_t_u_u(((1L ^ (safe_mod_func_uint64_t_u_u((p_2924->g_1144 = (safe_div_func_int16_t_s_s((((*l_1146) = (safe_mod_func_int8_t_s_s((p_2924->g_641[p_2924->g_97] == ((l_1136 , (safe_mul_func_int8_t_s_s(((safe_div_func_int64_t_s_s((safe_add_func_uint16_t_u_u((l_1143 != &p_2924->g_738), 0x602EL)), p_2924->g_253)) ^ p_2924->g_1144), 0x6CL))) <= l_1145)), p_51))) == (-1L)), l_1147))), p_48))) == p_2924->g_579), l_1147))) < 0x04CB9441L) == 0x25A5A208L))))), 0xC1L)))));
                    if (((safe_mul_func_int8_t_s_s(p_51, ((~(safe_sub_func_uint16_t_u_u(((((p_48 & (+(((GROUP_DIVERGE(0, 1) , (l_1127 ^= (p_48 && (safe_div_func_int64_t_s_s((-6L), l_1126[1]))))) | p_51) ^ ((safe_mod_func_int8_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_uint16_t_u_u(((l_1126[1] ^ l_1126[0]) < ((0x29168D1AL & l_1126[0]) <= l_1145)), 0x614FL)), p_2924->g_641[p_2924->g_97])), p_2924->g_738)) != 255UL)))) == p_48) != 0x465A4998EE57A551L) < 0x7EL), 0xDF46L))) && 0x55A69E02066F843AL))) >= p_2924->g_97))
                    { /* block id: 565 */
                        (*p_47) = &l_1123;
                        return l_1163;
                    }
                    else
                    { /* block id: 568 */
                        if ((*p_2924->g_934))
                            break;
                    }
                }
                if ((l_1167 = (safe_mod_func_int16_t_s_s(l_1166[0][4][2], 0x606EL))))
                { /* block id: 573 */
                    int32_t ******l_1172[6][7] = {{&p_2924->g_596,&p_2924->g_598[2][2],&p_2924->g_596,&p_2924->g_338,&p_2924->g_598[3][0],&p_2924->g_596,&p_2924->g_338},{&p_2924->g_596,&p_2924->g_598[2][2],&p_2924->g_596,&p_2924->g_338,&p_2924->g_598[3][0],&p_2924->g_596,&p_2924->g_338},{&p_2924->g_596,&p_2924->g_598[2][2],&p_2924->g_596,&p_2924->g_338,&p_2924->g_598[3][0],&p_2924->g_596,&p_2924->g_338},{&p_2924->g_596,&p_2924->g_598[2][2],&p_2924->g_596,&p_2924->g_338,&p_2924->g_598[3][0],&p_2924->g_596,&p_2924->g_338},{&p_2924->g_596,&p_2924->g_598[2][2],&p_2924->g_596,&p_2924->g_338,&p_2924->g_598[3][0],&p_2924->g_596,&p_2924->g_338},{&p_2924->g_596,&p_2924->g_598[2][2],&p_2924->g_596,&p_2924->g_338,&p_2924->g_598[3][0],&p_2924->g_596,&p_2924->g_338}};
                    int16_t **l_1190 = &p_2924->g_631[2];
                    int16_t ***l_1189 = &l_1190;
                    uint8_t **l_1194 = &l_1193;
                    uint64_t *l_1204 = &p_2924->g_253;
                    int i, j;
                    for (p_2924->g_40 = 0; (p_2924->g_40 != (-5)); p_2924->g_40 = safe_sub_func_int8_t_s_s(p_2924->g_40, 3))
                    { /* block id: 576 */
                        uint8_t *l_1178 = (void*)0;
                        uint8_t *l_1179[9][5] = {{&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,(void*)0},{&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,(void*)0},{&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,(void*)0},{&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,(void*)0},{&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,(void*)0},{&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,(void*)0},{&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,(void*)0},{&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,(void*)0},{&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,(void*)0}};
                        uint32_t **l_1181 = (void*)0;
                        int32_t l_1183 = 0x30506D05L;
                        int i, j;
                        l_1183 ^= (safe_rshift_func_uint16_t_u_u((p_2924->g_864 , ((*p_2924->g_780) , ((((l_1172[4][5] != ((((l_1173 != ((safe_mul_func_int8_t_s_s(p_48, (l_1180 = (safe_div_func_int16_t_s_s(p_48, (*l_1115)))))) , l_1181)) , ((*l_1163) |= (&p_2924->g_596 != (void*)0))) < p_48) , l_1182)) , l_1167) >= p_2924->g_641[p_2924->g_97]) , 0x7D30L))), GROUP_DIVERGE(2, 1)));
                        (*l_1163) = l_1183;
                    }
                    if ((safe_add_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_u(((l_1188 != ((*l_1189) = l_1188)) != 0x04FBL), 4)) >= (safe_mul_func_int16_t_s_s(((**l_1188) = (p_48 , (((*l_1194) = l_1193) != (void*)0))), (safe_mul_func_uint8_t_u_u(p_2924->g_97, (safe_mul_func_int64_t_s_s((safe_rshift_func_int16_t_s_s(p_2924->g_1201, 2)), (((**p_2924->g_905) |= (((((*l_1204) = (safe_div_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (l_1180 , l_1127)))) <= 0L) > (-10L)) < 65531UL)) >= (*l_1115))))))))), 0x4CL)))
                    { /* block id: 587 */
                        uint16_t *l_1205[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1205[i] = &p_2924->g_156;
                        (*p_2924->g_66) = func_54((--p_2924->g_156), p_48, p_2924);
                    }
                    else
                    { /* block id: 590 */
                        uint32_t l_1209 = 1UL;
                        --l_1209;
                    }
                    l_1212 = ((*p_47) = &l_1136);
                }
                else
                { /* block id: 595 */
                    uint16_t *l_1220 = &p_2924->g_156;
                    uint8_t *l_1226 = &p_2924->g_251;
                    int32_t l_1227 = 1L;
                    int32_t *l_1228 = &l_1127;
                    (*l_1228) &= (((((safe_rshift_func_int8_t_s_u(((((safe_sub_func_uint8_t_u_u((((((0xC94AL > ((((safe_add_func_uint8_t_u_u((p_2924->g_40 , ((l_1219 == (((*l_1220) ^= p_2924->g_909) , &p_2924->g_251)) | (p_2924->g_641[p_2924->g_97] | 0x27L))), (safe_mod_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((l_1225[0][3][8] == (void*)0) <= FAKE_DIVERGE(p_2924->group_0_offset, get_group_id(0), 10)), 65535UL)), p_2924->g_1201)))) >= (-2L)) < l_1167) > (*l_1115))) , l_1226) != (void*)0) ^ (*l_1163)) || (*l_1212)), (*l_1212))) == l_1227) , FAKE_DIVERGE(p_2924->local_1_offset, get_local_id(1), 10)) & l_1136), 5)) > GROUP_DIVERGE(1, 1)) != 0x1FL) || p_2924->g_641[2]) & 6L);
                    for (p_2924->g_581 = 27; (p_2924->g_581 > 11); --p_2924->g_581)
                    { /* block id: 600 */
                        if ((*p_50))
                            break;
                        if ((*l_1228))
                            continue;
                    }
                }
            }
        }
        if (((safe_sub_func_int8_t_s_s((**p_2924->g_905), (p_2924->g_188 , ((*l_1319) |= p_51)))) & (((*l_1320) = p_2924->g_1314) >= FAKE_DIVERGE(p_2924->local_2_offset, get_local_id(2), 10))))
        { /* block id: 643 */
            uint64_t *l_1323 = (void*)0;
            uint64_t *l_1324 = &p_2924->g_253;
            int32_t l_1331 = 1L;
            int32_t l_1332 = 1L;
            int32_t l_1333 = 4L;
            l_1327[4][3] &= (safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_2924->global_1_offset, get_global_id(1), 10), (p_2924->g_738 , ((*l_1324)--))));
            (*p_47) = p_50;
            for (p_2924->g_1278 = 0; (p_2924->g_1278 != (-26)); p_2924->g_1278 = safe_sub_func_uint32_t_u_u(p_2924->g_1278, 1))
            { /* block id: 649 */
                int32_t *l_1330[5] = {&l_1233,&l_1233,&l_1233,&l_1233,&l_1233};
                uint32_t l_1336 = 0xAE4B3A95L;
                int i;
                ++l_1336;
            }
        }
        else
        { /* block id: 652 */
            (*p_2924->g_66) = p_49;
        }
        (*p_2924->g_111) = ((*l_1163) = (*l_1115));
        l_1358 &= ((*p_2924->g_111) = ((*p_2924->g_780) ^ (((((safe_rshift_func_int8_t_s_u((**p_2924->g_905), 4)) && (safe_mod_func_int8_t_s_s((((p_48 >= (((safe_sub_func_uint64_t_u_u(((l_1348[4][0][0] != ((*l_1351) = l_1350[4][0])) >= ((*p_50) == (safe_unary_minus_func_uint32_t_u(0x02F48583L)))), (safe_sub_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((2L | ((((!(*l_1163)) != p_51) & 0xF9880367CF7193FCL) & FAKE_DIVERGE(p_2924->global_1_offset, get_global_id(1), 10))), 0L)), 0x1BL)))) <= 1UL) & 0UL)) & l_1357) , 0x32L), 1L))) | FAKE_DIVERGE(p_2924->global_1_offset, get_global_id(1), 10)) , (*p_2924->g_906)) & 0UL)));
    }
    else
    { /* block id: 660 */
        int64_t *l_1362 = &p_2924->g_1363;
        uint16_t *l_1364 = (void*)0;
        uint16_t *l_1365[2][9][3] = {{{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]}},{{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]},{(void*)0,&p_2924->g_931[6][2][2],&p_2924->g_931[6][2][2]}}};
        uint64_t *l_1368 = &p_2924->g_253;
        int16_t l_1375 = 0x6245L;
        int32_t l_1377 = 0x1E443D2AL;
        int32_t l_1426 = 0L;
        int32_t l_1436 = 0x0F17FB1AL;
        int32_t l_1437 = 0x661A0BFBL;
        int32_t *l_1512 = &p_2924->g_909;
        uint32_t l_1547 = 0x632A5ED7L;
        int32_t *l_1551 = &l_1244;
        int32_t ***l_1596 = &p_2924->g_66;
        int i, j, k;
        for (p_2924->g_40 = 2; (p_2924->g_40 >= 0); p_2924->g_40 -= 1)
        { /* block id: 663 */
            int32_t *l_1359 = &p_2924->g_78[0];
            return l_1359;
        }
        l_1377 = ((((((((((((((((safe_rshift_func_uint16_t_u_s(p_48, (((*l_1368) = (((*l_1362) = ((p_48 & (p_2924->g_1314 = p_2924->g_23)) , ((*p_2924->g_780) ^= (-5L)))) >= ((*l_1115) <= (++p_2924->g_156)))) || (GROUP_DIVERGE(0, 1) > (p_51 , (safe_mul_func_uint16_t_u_u((((FAKE_DIVERGE(p_2924->local_0_offset, get_local_id(0), 10) >= p_51) > (safe_mul_func_int8_t_s_s(((safe_div_func_uint64_t_u_u((p_2924->g_95 = (((-9L) > ((((*l_1163) = (p_51 && 0x258DL)) , 4294967295UL) , (*p_2924->g_780))) || p_48)), l_1375)) & p_51), 0x47L))) >= 0xD4L), 7UL))))))) == p_51) , 0xB1L) ^ (-3L)) & 0x7EL) , &p_48) != &p_2924->g_864) , (void*)0) == (*p_47)) != 0xFBL) | 5UL) ^ 0x059B73B7L) ^ l_1375) && p_2924->g_1278) , l_1376) , (*l_1115));
        for (l_1375 = (-8); (l_1375 < (-12)); l_1375--)
        { /* block id: 676 */
            uint64_t l_1380 = 0xF9E0D77DF7BC5ACCL;
            int32_t l_1389 = 1L;
            uint8_t *l_1397[9] = {&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251,&p_2924->g_251};
            uint8_t **l_1396[3][9][5] = {{{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]}},{{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]}},{{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]},{(void*)0,&l_1397[2],(void*)0,&l_1397[5],&l_1397[2]}}};
            uint64_t **l_1403 = &l_1368;
            int i, j, k;
            if (((*l_1163) = (l_1380 , (**p_47))))
            { /* block id: 678 */
                uint16_t l_1381 = 0xFD87L;
                (*p_2924->g_111) = (l_1389 = ((((l_1381 == ((safe_lshift_func_int8_t_s_s(((safe_div_func_int32_t_s_s(l_1380, (l_1381 , l_1377))) != 3L), 2)) < p_51)) , p_2924->g_95) < (((*l_1163) = ((((l_1386 == ((safe_lshift_func_uint8_t_u_s((p_48 & p_51), 7)) == 0x5BL)) <= p_51) && 0x3DCD4639L) > 0xCDL)) > l_1380)) <= l_1381));
                for (p_2924->g_1201 = 28; (p_2924->g_1201 < (-6)); --p_2924->g_1201)
                { /* block id: 684 */
                    return (*p_47);
                }
            }
            else
            { /* block id: 687 */
                int16_t l_1401 = 0L;
                uint64_t **l_1402[4][8][4] = {{{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368}},{{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368}},{{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368}},{{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368},{(void*)0,(void*)0,(void*)0,&l_1368}}};
                uint64_t ***l_1404 = &l_1402[2][2][3];
                int i, j, k;
                for (p_2924->g_579 = 3; (p_2924->g_579 >= 0); p_2924->g_579 -= 1)
                { /* block id: 690 */
                    uint8_t *l_1395[2][3][7] = {{{&l_1327[4][3],&l_1327[7][0],&p_2924->g_251,(void*)0,&p_2924->g_251,&l_1327[7][0],&l_1327[4][3]},{&l_1327[4][3],&l_1327[7][0],&p_2924->g_251,(void*)0,&p_2924->g_251,&l_1327[7][0],&l_1327[4][3]},{&l_1327[4][3],&l_1327[7][0],&p_2924->g_251,(void*)0,&p_2924->g_251,&l_1327[7][0],&l_1327[4][3]}},{{&l_1327[4][3],&l_1327[7][0],&p_2924->g_251,(void*)0,&p_2924->g_251,&l_1327[7][0],&l_1327[4][3]},{&l_1327[4][3],&l_1327[7][0],&p_2924->g_251,(void*)0,&p_2924->g_251,&l_1327[7][0],&l_1327[4][3]},{&l_1327[4][3],&l_1327[7][0],&p_2924->g_251,(void*)0,&p_2924->g_251,&l_1327[7][0],&l_1327[4][3]}}};
                    int i, j, k;
                    (*l_1163) &= ((p_2924->g_641[p_2924->g_579] , (safe_unary_minus_func_uint16_t_u(((safe_lshift_func_uint8_t_u_u(((p_48 = p_2924->g_217[3]) , p_2924->g_581), 1)) , (((void*)0 != l_1396[2][3][2]) | (safe_add_func_uint8_t_u_u((p_2924->g_1314 = p_2924->g_156), l_1400))))))) ^ p_2924->g_738);
                    if (l_1401)
                        continue;
                    if ((*p_2924->g_111))
                        break;
                }
                (*l_1163) = (((((*l_1404) = (l_1403 = l_1402[1][3][0])) != (void*)0) == l_1389) , (l_1377 |= ((**p_2924->g_905) && p_51)));
            }
        }
        if (((*p_2924->g_905) != (void*)0))
        { /* block id: 703 */
            int32_t l_1405 = 1L;
            int16_t *l_1413 = (void*)0;
            int32_t l_1414 = 7L;
            uint8_t *l_1420 = &l_1327[7][2];
            l_1335 = ((l_1405 && ((**p_47) != ((*l_1163) = ((safe_div_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((safe_sub_func_int8_t_s_s(((l_1405 & (((*l_1368) = (+((safe_unary_minus_func_uint16_t_u(0x1690L)) | (((l_1414 = p_51) , ((void*)0 == l_1415[6][0])) && ((*l_1420) = ((safe_mul_func_uint16_t_u_u((l_1405 != (l_1377 < p_2924->g_156)), p_2924->g_1419)) & l_1375)))))) , 0x9D74L)) > p_2924->g_909), FAKE_DIVERGE(p_2924->local_2_offset, get_local_id(2), 10))), l_1375)), 0x718FL)) , 0x0D88E532L)))) , (*l_1163));
        }
        else
        { /* block id: 709 */
            uint16_t l_1438 = 0x6098L;
            int32_t l_1463[4];
            int8_t l_1470 = (-8L);
            uint32_t l_1478 = 4294967295UL;
            uint32_t ****l_1479 = &l_1349;
            int32_t *l_1519 = &l_1376;
            int32_t *l_1553 = &p_2924->g_2;
            int32_t *l_1611 = &l_1376;
            int32_t *l_1612 = &p_2924->g_23;
            int i;
            for (i = 0; i < 4; i++)
                l_1463[i] = 7L;
            for (p_2924->g_909 = 10; (p_2924->g_909 < (-5)); p_2924->g_909 = safe_sub_func_int8_t_s_s(p_2924->g_909, 4))
            { /* block id: 712 */
                int8_t l_1423[9] = {0x02L,3L,0x02L,0x02L,3L,0x02L,0x02L,3L,0x02L};
                int32_t l_1427[8][6][5] = {{{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L}},{{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L}},{{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L}},{{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L}},{{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L}},{{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L}},{{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L}},{{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L},{0x7BF00726L,0x56269B4EL,1L,(-1L),0x17901765L}}};
                int i, j, k;
                (1 + 1);
            }
lbl_1488:
            for (p_2924->g_188 = 0; (p_2924->g_188 < 18); p_2924->g_188++)
            { /* block id: 739 */
                int8_t l_1475 = 0L;
                uint8_t **l_1483[7][9] = {{&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482},{&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482},{&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482},{&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482},{&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482},{&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482},{&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482,&l_1482}};
                int32_t *l_1485[5] = {&l_1437,&l_1437,&l_1437,&l_1437,&l_1437};
                int i, j;
                (*p_47) = (l_1485[1] = func_54(((((safe_sub_func_uint64_t_u_u(l_1475, (*p_2924->g_780))) == (p_2924->g_1476 == (void*)0)) ^ (((**l_1416) |= l_1478) && ((void*)0 != l_1479))) , ((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((l_1482 = l_1482) != (l_1484 = &p_48)))) , p_2924->g_188)), p_48, p_2924));
                if (p_2924->g_23)
                    goto lbl_1488;
                (*p_47) = (*p_47);
                for (p_48 = 0; (p_48 != 57); p_48 = safe_add_func_uint64_t_u_u(p_48, 5))
                { /* block id: 748 */
                    (*p_47) = &l_1463[0];
                }
            }
            for (l_1244 = 0; (l_1244 <= 0); l_1244 += 1)
            { /* block id: 755 */
                uint32_t **l_1493 = &p_2924->g_299;
                int32_t ***l_1501[8][4][4] = {{{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0}},{{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0}},{{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0}},{{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0}},{{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0}},{{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0}},{{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0}},{{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0},{(void*)0,&p_2924->g_66,(void*)0,(void*)0}}};
                int32_t *l_1550 = &l_1463[0];
                uint64_t l_1581[3][10][7] = {{{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL}},{{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL}},{{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL},{0x870D257AC5EAD2BEL,0x18A0687E5005555DL,7UL,0x2C40311A11B35AFDL,7UL,0x18A0687E5005555DL,0x870D257AC5EAD2BEL}}};
                int i, j, k;
                for (l_1377 = 0; (l_1377 <= 0); l_1377 += 1)
                { /* block id: 758 */
                    int32_t ***l_1502 = &p_2924->g_66;
                    int8_t l_1522 = (-1L);
                    int32_t *l_1552[1][1][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                    int i, j, k;
                    if ((p_2924->g_78[l_1377] = ((safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((((l_1463[0] |= (l_1493 != (**l_1479))) && (safe_rshift_func_int8_t_s_u((p_2924->g_78[l_1244] || p_2924->g_78[l_1377]), 1))) < (((safe_sub_func_uint16_t_u_u(((+0x51DFFEB4A7789028L) == ((safe_sub_func_int32_t_s_s((*p_50), 0x62EE48BEL)) <= p_51)), p_51)) , l_1426) < 1L)) | 4294967295UL), p_48)), p_51)) ^ (-8L))))
                    { /* block id: 761 */
                        int32_t l_1500 = 3L;
                        if (l_1500)
                            break;
                        l_1463[2] = ((l_1502 = l_1501[5][3][2]) == (void*)0);
                        l_1463[3] |= (safe_add_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((l_1500 < (*p_2924->g_1477)), (safe_mul_func_uint16_t_u_u((p_51 < 0x3D55A3F5L), ((safe_sub_func_int16_t_s_s((safe_unary_minus_func_int8_t_s((-1L))), p_2924->g_1201)) < ((FAKE_DIVERGE(p_2924->global_0_offset, get_global_id(0), 10) , l_1512) == ((safe_rshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((l_1437 &= (l_1500 , (p_48 || 0x2AL))), p_2924->g_251)), p_51)), l_1436)) , (void*)0))))))) >= 1L), p_51));
                        if ((*p_50))
                            break;
                    }
                    else
                    { /* block id: 768 */
                        int32_t *l_1520 = &l_1463[0];
                        int32_t *l_1521 = &p_2924->g_288;
                        (*p_47) = (*p_47);
                        return l_1521;
                    }
                    if (l_1522)
                    { /* block id: 772 */
                        int32_t *l_1523 = &l_1463[2];
                        int32_t *l_1524 = (void*)0;
                        return l_1524;
                    }
                    else
                    { /* block id: 774 */
                        int32_t l_1529 = 1L;
                        int32_t l_1545 = 0L;
                        int32_t l_1546 = 9L;
                        (*l_1163) = ((safe_mod_func_uint16_t_u_u(p_51, (safe_div_func_uint8_t_u_u((l_1529 | (((safe_mul_func_uint16_t_u_u(((l_1545 = ((((safe_rshift_func_uint16_t_u_s(p_2924->g_23, ((*l_1519) > ((safe_lshift_func_int8_t_s_s(((((p_51 | GROUP_DIVERGE(0, 1)) <= (l_1375 ^ 0x23L)) > (0xBCE6L < (safe_rshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((+((((p_48 > p_48) , (void*)0) == p_2924->g_1544) || 5L)), (**p_2924->g_905))), p_48)) , p_48), 9)), p_48)))) , p_48), (**p_2924->g_905))) != 1UL)))) | 0xA2L) , (void*)0) != (void*)0)) < 0UL), FAKE_DIVERGE(p_2924->local_1_offset, get_local_id(1), 10))) , GROUP_DIVERGE(2, 1)) , p_2924->g_579)), 0x2EL)))) || 0L);
                        l_1547++;
                        return l_1553;
                    }
                }
                for (l_1441 = 0; (l_1441 <= 0); l_1441 += 1)
                { /* block id: 783 */
                    int i;
                    if ((((safe_div_func_int32_t_s_s(p_2924->g_78[l_1244], (safe_add_func_int16_t_s_s(0x2A7FL, (p_2924->g_931[3][1][1] ^= (((**l_1416) = (((**p_2924->g_905) = p_2924->g_78[l_1244]) | (((safe_div_func_uint64_t_u_u(((~p_48) , p_2924->g_78[l_1244]), ((8UL | (safe_div_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((((*l_1519) & (*l_1519)) , ((-7L) || 1UL)), 0x0B7DL)), (*p_2924->g_1477)))) , GROUP_DIVERGE(1, 1)))) , 0x031D84FDC3818E31L) & (-6L)))) , 65534UL)))))) | 0x2FL) == (*l_1551)))
                    { /* block id: 787 */
                        uint8_t **l_1566 = (void*)0;
                        uint8_t **l_1567 = &l_1482;
                        int8_t *l_1578 = &p_2924->g_579;
                        (*p_2924->g_66) = (p_2924->g_1580 = func_73((((safe_mul_func_uint8_t_u_u(((0xC585L < ((((*l_1567) = &p_2924->g_1314) == &p_48) == (*p_2924->g_906))) == (safe_rshift_func_uint8_t_u_u(4UL, ((**p_2924->g_1476) != (((safe_sub_func_uint8_t_u_u((p_48 && ((*l_1578) = (safe_unary_minus_func_uint64_t_u((safe_unary_minus_func_int16_t_s(((safe_lshift_func_uint16_t_u_u((safe_div_func_uint8_t_u_u(255UL, (**p_2924->g_905))), 1)) != p_48))))))), p_2924->g_1201)) , (-7L)) != 0x5D1D1DA401CD2F5AL))))), p_2924->g_1579)) <= 0UL) , 0x0977DF82L), p_2924));
                        if ((*p_2924->g_934))
                            continue;
                    }
                    else
                    { /* block id: 793 */
                        int i;
                        (*l_1163) ^= (p_2924->g_78[l_1441] = (FAKE_DIVERGE(p_2924->group_2_offset, get_group_id(2), 10) == 0x70DFC9933D0EF43BL));
                        l_1426 &= ((*l_1519) = (1UL && 0x0AL));
                        (*l_1519) &= p_2924->g_78[l_1244];
                        l_1581[2][5][6] = (*l_1551);
                    }
                    p_2924->g_78[l_1244] = (0xE0063776L < (safe_lshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(p_51, p_2924->g_581)), 5)));
                    p_2924->g_78[l_1244] |= (((&l_1438 != (void*)0) <= ((safe_div_func_int64_t_s_s((safe_sub_func_int32_t_s_s((*l_1551), (&p_2924->g_599 != (((void*)0 == &l_1400) , &p_2924->g_599)))), p_51)) ^ ((**l_1416) |= (safe_add_func_int8_t_s_s((*l_1519), 0x64L))))) >= p_48);
                }
            }
            if (((*l_1115) , (((((*l_1553) , (++(*l_1484))) , &p_48) != ((*l_1551) , (*p_2924->g_1476))) < ((safe_add_func_int16_t_s_s((-9L), (~(p_51 <= ((((void*)0 == l_1596) > (*l_1163)) | p_2924->g_579))))) & p_51))))
            { /* block id: 807 */
                uint32_t l_1597 = 0x91F33EACL;
                int32_t *l_1602 = &p_2924->g_1579;
                if (l_1597)
                { /* block id: 808 */
                    int32_t *l_1601 = &l_1463[3];
lbl_1605:
                    for (l_1426 = 0; (l_1426 == 10); l_1426++)
                    { /* block id: 811 */
                        int32_t *l_1600[5][2][3] = {{{&l_1436,&l_1244,&l_1436},{&l_1436,&l_1244,&l_1436}},{{&l_1436,&l_1244,&l_1436},{&l_1436,&l_1244,&l_1436}},{{&l_1436,&l_1244,&l_1436},{&l_1436,&l_1244,&l_1436}},{{&l_1436,&l_1244,&l_1436},{&l_1436,&l_1244,&l_1436}},{{&l_1436,&l_1244,&l_1436},{&l_1436,&l_1244,&l_1436}}};
                        int i, j, k;
                        return l_1602;
                    }
                    for (p_2924->g_1278 = 21; (p_2924->g_1278 >= (-3)); p_2924->g_1278--)
                    { /* block id: 816 */
                        if (p_2924->g_1144)
                            goto lbl_1605;
                    }
                }
                else
                { /* block id: 819 */
                    int32_t *l_1606 = &p_2924->g_1201;
                    int32_t l_1609 = (-3L);
                    (*l_1551) = (((*l_1606) ^= p_2924->g_191[5][1][0]) , (*p_2924->g_187));
                    for (p_2924->g_1363 = 11; (p_2924->g_1363 > (-6)); p_2924->g_1363 = safe_sub_func_uint64_t_u_u(p_2924->g_1363, 4))
                    { /* block id: 824 */
                        (*l_1519) ^= ((*l_1163) = l_1609);
                    }
                }
            }
            else
            { /* block id: 829 */
                int32_t *l_1610 = &l_1426;
                return l_1612;
            }
        }
    }
    return p_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_2924->g_1093 p_2924->g_251 p_2924->g_187 p_2924->g_23 p_2924->g_2 p_2924->g_188 p_2924->g_253
 * writes:
 */
int32_t * func_54(uint16_t  p_55, uint32_t  p_56, struct S0 * p_2924)
{ /* block id: 540 */
    int32_t *l_1091[10] = {&p_2924->g_909,&p_2924->g_909,&p_2924->g_909,&p_2924->g_909,&p_2924->g_909,&p_2924->g_909,&p_2924->g_909,&p_2924->g_909,&p_2924->g_909,&p_2924->g_909};
    int32_t **l_1090 = &l_1091[8];
    int32_t l_1092 = 0L;
    int32_t ***l_1095 = &l_1090;
    uint32_t l_1100 = 0xC4E2A52EL;
    uint32_t ***l_1101 = &p_2924->g_298[3][1][7];
    int32_t l_1102[9] = {0x49E6D7E9L,0x49E6D7E9L,0x49E6D7E9L,0x49E6D7E9L,0x49E6D7E9L,0x49E6D7E9L,0x49E6D7E9L,0x49E6D7E9L,0x49E6D7E9L};
    int32_t *l_1107 = &l_1102[4];
    int32_t *l_1108 = (void*)0;
    int i;
    l_1102[4] &= ((safe_div_func_int32_t_s_s((GROUP_DIVERGE(1, 1) > ((((((((*l_1090) = (p_55 , (void*)0)) != &p_2924->g_909) <= l_1092) , ((l_1092 , ((*l_1095) = p_2924->g_1093)) == ((safe_add_func_int32_t_s_s((((~((+((~p_2924->g_251) || (((safe_mul_func_uint8_t_u_u(l_1100, (0x39L ^ l_1092))) <= l_1092) > (*p_2924->g_187)))) , l_1100)) <= p_2924->g_253) || p_56), 7L)) , &l_1091[2]))) , l_1101) == l_1101) >= l_1100)), 0xDBC0F73DL)) != GROUP_DIVERGE(0, 1));
    (*l_1107) = (safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(p_56, 5)), 0xCDL));
    return l_1108;
}


/* ------------------------------------------ */
/* 
 * reads : p_2924->g_288 p_2924->g_906 p_2924->g_581 p_2924->g_40 p_2924->g_299 p_2924->g_579 p_2924->g_934 p_2924->g_641
 * writes: p_2924->g_288 p_2924->g_40 p_2924->g_299 p_2924->g_632 p_2924->g_579 p_2924->g_641
 */
int32_t  func_57(int32_t ** p_58, int16_t  p_59, int32_t  p_60, struct S0 * p_2924)
{ /* block id: 530 */
    int32_t *l_1063 = (void*)0;
    int32_t *l_1066 = &p_2924->g_288;
    int8_t *l_1069 = &p_2924->g_40;
    uint32_t l_1078 = 0xA3505573L;
    uint32_t l_1079 = 4294967295UL;
    uint32_t *l_1080 = &p_2924->g_249;
    uint32_t **l_1081 = &p_2924->g_299;
    int16_t *l_1084 = &p_2924->g_632;
    int32_t l_1085 = 0x67F66668L;
    int64_t l_1086 = 0x58CCD2D2B53C2827L;
    int8_t *l_1087 = &p_2924->g_579;
    (*l_1066) &= (p_60 |= 0x179CE939L);
    (*p_2924->g_934) &= ((safe_div_func_int8_t_s_s(((*l_1069) ^= (*p_2924->g_906)), ((*l_1087) ^= (((safe_mod_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s(0x4CL, (safe_div_func_int32_t_s_s((safe_add_func_int32_t_s_s((((((*l_1066) < l_1078) , ((l_1079 > (((l_1080 = &l_1078) != ((*l_1081) = &l_1078)) > (*l_1066))) && (((safe_add_func_uint32_t_u_u((((*l_1084) = p_59) & p_59), (*p_2924->g_299))) | l_1085) || 0xB7L))) < p_59) != p_60), p_60)), (*l_1066))))) , GROUP_DIVERGE(1, 1)), 0x99B8D85122A2CFB5L)) >= 1L) & l_1086)))) >= FAKE_DIVERGE(p_2924->group_1_offset, get_group_id(1), 10));
    return (*l_1066);
}


/* ------------------------------------------ */
/* 
 * reads : p_2924->g_40 p_2924->g_217 p_2924->g_251 p_2924->g_299 p_2924->g_97 p_2924->g_111 p_2924->g_78 p_2924->g_188 p_2924->g_288 p_2924->g_35 p_2924->g_191 p_2924->g_2 p_2924->g_253 p_2924->g_581 p_2924->g_631 p_2924->g_641 p_2924->g_187 p_2924->g_23 p_2924->g_156 p_2924->g_298 p_2924->g_66 p_2924->g_632 p_2924->g_249 p_2924->g_95 p_2924->g_738 p_2924->g_780 p_2924->g_579 p_2924->g_864 p_2924->g_905 p_2924->g_929 p_2924->g_931 p_2924->g_934 p_2924->g_906
 * writes: p_2924->g_40 p_2924->g_78 p_2924->g_35 p_2924->g_191 p_2924->g_579 p_2924->g_288 p_2924->g_596 p_2924->g_598 p_2924->g_156 p_2924->g_581 p_2924->g_251 p_2924->g_97 p_2924->g_299 p_2924->g_95 p_2924->g_67 p_2924->g_738 p_2924->g_249 p_2924->g_780 p_2924->g_909 p_2924->g_934 p_2924->g_641 p_2924->g_217
 */
int32_t ** func_61(int64_t  p_62, int32_t ** p_63, uint64_t  p_64, uint64_t  p_65, struct S0 * p_2924)
{ /* block id: 278 */
    uint64_t l_544 = 0x4072899CA4FE0CE9L;
    int32_t l_584 = 0x6893AE57L;
    int32_t l_587 = 1L;
    int16_t l_627[6];
    uint32_t ***l_630 = &p_2924->g_298[0][0][7];
    uint16_t l_655 = 65535UL;
    int32_t ***l_665 = (void*)0;
    int32_t *l_691[4][5][9];
    uint8_t l_693 = 0xE1L;
    uint32_t l_701 = 6UL;
    int64_t l_741 = 0L;
    int64_t *l_775[5][6][1] = {{{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738}},{{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738}},{{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738}},{{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738}},{{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738},{&p_2924->g_738}}};
    uint16_t l_919 = 1UL;
    int32_t l_977 = 0x2590CBCDL;
    uint32_t *l_1009 = (void*)0;
    int32_t l_1018 = 0x6B4E3546L;
    int32_t **l_1048 = (void*)0;
    int16_t l_1055 = 0x3735L;
    uint16_t l_1056 = 0x50DFL;
    int32_t **l_1061 = &p_2924->g_187;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_627[i] = 0x6985L;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 9; k++)
                l_691[i][j][k] = &l_587;
        }
    }
lbl_1042:
    for (p_2924->g_40 = 9; (p_2924->g_40 >= 0); p_2924->g_40 -= 1)
    { /* block id: 281 */
        uint8_t *l_538 = &p_2924->g_251;
        int32_t l_549 = (-9L);
        int32_t l_574 = (-4L);
        uint32_t l_582[1];
        uint32_t l_583 = 0x1AB2F20AL;
        uint64_t l_588 = 0x617C04470AA36AFBL;
        int32_t *****l_597 = (void*)0;
        int64_t l_672 = (-1L);
        uint32_t l_692 = 0xF6794388L;
        int32_t **l_697 = (void*)0;
        int32_t l_699 = 0x607E1222L;
        int32_t l_700 = (-3L);
        int32_t *l_742 = &l_549;
        int64_t l_792 = 0L;
        int8_t *l_798[5];
        int8_t **l_797[8];
        int16_t *l_845 = &l_627[3];
        int32_t l_865 = 0x24AE52B7L;
        int32_t *l_997 = &p_2924->g_188;
        uint16_t l_1017[9][9] = {{0x1141L,65534UL,1UL,0UL,0x3811L,0x3811L,0UL,1UL,65534UL},{0x1141L,65534UL,1UL,0UL,0x3811L,0x3811L,0UL,1UL,65534UL},{0x1141L,65534UL,1UL,0UL,0x3811L,0x3811L,0UL,1UL,65534UL},{0x1141L,65534UL,1UL,0UL,0x3811L,0x3811L,0UL,1UL,65534UL},{0x1141L,65534UL,1UL,0UL,0x3811L,0x3811L,0UL,1UL,65534UL},{0x1141L,65534UL,1UL,0UL,0x3811L,0x3811L,0UL,1UL,65534UL},{0x1141L,65534UL,1UL,0UL,0x3811L,0x3811L,0UL,1UL,65534UL},{0x1141L,65534UL,1UL,0UL,0x3811L,0x3811L,0UL,1UL,65534UL},{0x1141L,65534UL,1UL,0UL,0x3811L,0x3811L,0UL,1UL,65534UL}};
        uint64_t l_1025 = 18446744073709551609UL;
        uint32_t l_1034 = 0xAB4351C7L;
        int32_t **l_1039 = &p_2924->g_187;
        int i, j;
        for (i = 0; i < 1; i++)
            l_582[i] = 4294967295UL;
        for (i = 0; i < 5; i++)
            l_798[i] = &p_2924->g_581;
        for (i = 0; i < 8; i++)
            l_797[i] = &l_798[2];
        if ((l_538 == &p_2924->g_251))
        { /* block id: 282 */
            int32_t *l_539 = &p_2924->g_288;
            int32_t *l_540 = &p_2924->g_78[0];
            int32_t *l_541 = &p_2924->g_78[0];
            int32_t *l_542 = &p_2924->g_188;
            int32_t *l_543 = &p_2924->g_288;
            uint32_t *l_575 = (void*)0;
            uint32_t *l_576 = &p_2924->g_35;
            int64_t *l_577 = &p_2924->g_191[8][7][1];
            int8_t *l_578 = &p_2924->g_579;
            int8_t *l_580[6][1][10] = {{{&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,(void*)0,&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,&p_2924->g_40}},{{&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,(void*)0,&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,&p_2924->g_40}},{{&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,(void*)0,&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,&p_2924->g_40}},{{&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,(void*)0,&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,&p_2924->g_40}},{{&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,(void*)0,&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,&p_2924->g_40}},{{&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,(void*)0,&p_2924->g_40,&p_2924->g_581,&p_2924->g_581,&p_2924->g_40,&p_2924->g_40}}};
            int32_t *l_585 = &p_2924->g_78[0];
            int32_t *l_586[5];
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_586[i] = &l_549;
            --l_544;
            l_549 = (safe_lshift_func_int8_t_s_u(p_2924->g_217[p_2924->g_40], 0));
            (*l_539) = ((safe_add_func_int64_t_s_s(p_64, (safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s((p_2924->g_251 | (safe_mul_func_int8_t_s_s(((*p_2924->g_299) < (safe_mul_func_int8_t_s_s((l_582[0] = ((*l_578) = (((*p_2924->g_111) = (*p_2924->g_111)) && (((*l_577) &= ((((*l_576) &= (safe_div_func_uint32_t_u_u(((((safe_div_func_int64_t_s_s((safe_sub_func_int64_t_s_s((safe_mod_func_uint64_t_u_u(((p_64 | (*p_2924->g_299)) >= p_62), p_64)), ((((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u(l_544, 8)) >= p_2924->g_251), l_544)), 0x6EB5L)) , p_2924->g_188) , (void*)0) == (void*)0))), (*l_543))) == l_574) != 0xE23EL) , p_62), (*l_541)))) > p_62) , p_65)) < l_544)))), 1UL))), FAKE_DIVERGE(p_2924->global_1_offset, get_global_id(1), 10)))), l_583)), p_2924->g_2)))) | p_2924->g_2);
            l_588++;
        }
        else
        { /* block id: 292 */
            int32_t ****l_594 = (void*)0;
            int32_t *****l_593[4] = {&l_594,&l_594,&l_594,&l_594};
            int32_t ******l_595[6][2] = {{&l_593[1],&l_593[1]},{&l_593[1],&l_593[1]},{&l_593[1],&l_593[1]},{&l_593[1],&l_593[1]},{&l_593[1],&l_593[1]},{&l_593[1],&l_593[1]}};
            int16_t *l_633 = &l_627[2];
            int8_t *l_651 = &p_2924->g_579;
            uint32_t l_654 = 0x533A1AE8L;
            int16_t l_694 = (-10L);
            int16_t l_698 = 0L;
            int i, j;
            if ((l_587 = ((safe_mul_func_int64_t_s_s(0x4DF8ECBC61C4D291L, (p_2924->g_191[5][5][0] = ((p_2924->g_596 = l_593[1]) != (p_2924->g_598[2][2] = l_597))))) , l_587)))
            { /* block id: 297 */
                int16_t l_620 = (-6L);
                uint16_t *l_621[3][8][3] = {{{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156}},{{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156}},{{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156},{&p_2924->g_156,&p_2924->g_156,&p_2924->g_156}}};
                int32_t l_635 = 0x3C1D19D8L;
                int32_t l_658[4][1][3] = {{{0x33F11337L,0x3166F0DAL,0x33F11337L}},{{0x33F11337L,0x3166F0DAL,0x33F11337L}},{{0x33F11337L,0x3166F0DAL,0x33F11337L}},{{0x33F11337L,0x3166F0DAL,0x33F11337L}}};
                int32_t l_659 = 5L;
                int i, j, k;
                if ((p_2924->g_217[9] <= (l_584 , (&p_2924->g_251 != (((safe_sub_func_int32_t_s_s((l_587 = (safe_add_func_uint8_t_u_u((1L != (p_2924->g_253 >= ((safe_add_func_uint16_t_u_u((p_2924->g_156 = ((((0x3E72L | (safe_mul_func_int16_t_s_s(((safe_sub_func_uint16_t_u_u((((l_584 , (safe_lshift_func_int16_t_s_s(p_2924->g_188, (safe_mod_func_int8_t_s_s((safe_mod_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((~65532UL), p_2924->g_581)), p_64)), 0x64L))))) , &p_2924->g_156) == (void*)0), p_64)) || l_620), 0x300CL))) , p_2924->g_2) , &p_2924->g_579) == l_538)), p_2924->g_288)) >= p_2924->g_2))), p_2924->g_188))), (-1L))) == p_65) , &p_2924->g_251)))))
                { /* block id: 300 */
                    int16_t l_622 = 1L;
                    uint32_t ***l_629[9][9][3] = {{{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]}},{{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]}},{{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]}},{{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]}},{{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]}},{{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]}},{{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]}},{{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]}},{{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]},{&p_2924->g_298[1][3][2],&p_2924->g_298[3][1][4],&p_2924->g_298[0][0][6]}}};
                    uint32_t ****l_628[2][1][9] = {{{&l_629[3][7][2],(void*)0,(void*)0,&l_629[3][7][2],&l_629[3][7][2],(void*)0,(void*)0,&l_629[3][7][2],&l_629[3][7][2]}},{{&l_629[3][7][2],(void*)0,(void*)0,&l_629[3][7][2],&l_629[3][7][2],(void*)0,(void*)0,&l_629[3][7][2],&l_629[3][7][2]}}};
                    int8_t *l_634 = &p_2924->g_581;
                    int i, j, k;
                    if (l_622)
                        break;
                    l_635 |= ((safe_mul_func_uint8_t_u_u((((safe_sub_func_uint8_t_u_u(l_627[3], 0UL)) >= (&p_2924->g_298[2][2][3] != (void*)0)) , ((l_630 = &p_2924->g_298[1][3][4]) == &p_2924->g_298[0][2][2])), ((*l_634) = (p_2924->g_631[2] == (p_62 , l_633))))) >= p_62);
                }
                else
                { /* block id: 305 */
                    int32_t l_636 = 0x7176D630L;
                    int32_t ****l_642 = &p_2924->g_100;
                    int8_t *l_653 = (void*)0;
                    int8_t **l_652 = &l_653;
                    uint64_t *l_656[7] = {&l_588,&l_588,&l_588,&l_588,&l_588,&l_588,&l_588};
                    uint32_t *l_657[10][1][7] = {{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}},{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}},{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}},{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}},{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}},{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}},{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}},{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}},{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}},{{&l_654,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_97,&p_2924->g_35,&p_2924->g_97}}};
                    int i, j, k;
                    l_584 = (((*l_538) = l_636) > ((p_64 != (((safe_add_func_int32_t_s_s(((255UL <= (safe_add_func_int8_t_s_s((p_2924->g_641[2] != p_65), ((p_64 ^ ((*p_2924->g_299) ^= 0xF13C83A4L)) , (l_642 == l_642))))) , 1L), 0UL)) , l_582[0]) == p_65)) <= p_65));
                    if ((*p_2924->g_187))
                        break;
                    l_659 = ((((((p_2924->g_35 == 0x65L) >= ((l_658[0][0][2] = ((p_2924->g_95 = (safe_add_func_int64_t_s_s(p_62, (l_635 = (safe_add_func_uint16_t_u_u(((p_2924->g_156 | ((((((((safe_sub_func_int64_t_s_s((((((**l_630) = (**l_630)) == (void*)0) > 0x6AB85CAC498DB591L) == (!(((((*l_633) = (safe_rshift_func_uint16_t_u_u(((((GROUP_DIVERGE(0, 1) , (l_651 != ((*l_652) = &p_2924->g_581))) , p_65) | p_62) >= l_654), 2))) , p_2924->g_191[1][2][0]) , p_2924->g_23) < 0x2516L))), p_62)) | 65535UL) == (*p_2924->g_187)) , FAKE_DIVERGE(p_2924->global_1_offset, get_global_id(1), 10)) , l_636) <= p_65) >= p_2924->g_641[2]) < 65535UL)) > l_655), 0x0960L)))))) | 1L)) || 0x43A58BC6L)) && p_2924->g_78[0]) | p_64) != l_587) == GROUP_DIVERGE(0, 1));
                }
            }
            else
            { /* block id: 318 */
                uint64_t l_660[7][10][3] = {{{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L}},{{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L}},{{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L}},{{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L}},{{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L}},{{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L}},{{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L},{0x21774D78D62D012BL,0x21774D78D62D012BL,0x8FDAB945106A0551L}}};
                int16_t *l_669 = &l_627[5];
                uint16_t l_673 = 65533UL;
                int32_t l_679 = 0x23DB7E9DL;
                uint16_t l_680[1][4][4] = {{{3UL,0x3914L,3UL,3UL},{3UL,0x3914L,3UL,3UL},{3UL,0x3914L,3UL,3UL},{3UL,0x3914L,3UL,3UL}}};
                uint64_t *l_684[5][9][5] = {{{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]}},{{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]}},{{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]}},{{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]}},{{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]},{&l_544,&l_588,(void*)0,&l_544,&l_660[6][8][1]}}};
                uint64_t **l_683 = &l_684[4][3][2];
                int32_t *l_687[10][6][4] = {{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}},{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}},{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}},{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}},{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}},{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}},{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}},{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}},{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}},{{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2},{&p_2924->g_188,&p_2924->g_78[0],&l_584,&p_2924->g_2}}};
                int i, j, k;
                --l_660[1][3][1];
                for (l_574 = 2; (l_574 <= 9); l_574 += 1)
                { /* block id: 322 */
                    int16_t **l_668[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_670 = 0x4AF9F193L;
                    int32_t *l_671 = (void*)0;
                    int32_t l_677 = 6L;
                    uint64_t **l_686 = &l_684[4][3][2];
                    int32_t **l_696[4][9][7] = {{{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]}},{{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]}},{{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]}},{{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]},{&p_2924->g_187,(void*)0,&l_687[7][4][1],(void*)0,&l_691[1][3][7],&l_691[1][3][7],&l_687[7][4][1]}}};
                    int i, j, k;
                    if (((((void*)0 != &l_655) >= (0x3834DE20L == ((safe_add_func_uint16_t_u_u(((l_665 = &p_63) != (void*)0), ((l_672 = ((&l_584 == (void*)0) > (p_64 == ((safe_div_func_uint16_t_u_u((((l_633 = &p_2924->g_632) != l_669) ^ p_64), p_2924->g_78[0])) ^ l_670)))) , p_62))) > 1L))) , l_673))
                    { /* block id: 326 */
                        uint16_t l_674 = 1UL;
                        int32_t l_678 = 0x08EFB98FL;
                        --l_674;
                        l_677 ^= l_670;
                        --l_680[0][3][2];
                    }
                    else
                    { /* block id: 330 */
                        uint64_t ***l_685[4][2] = {{&l_683,&l_683},{&l_683,&l_683},{&l_683,&l_683},{&l_683,&l_683}};
                        int32_t l_690 = 0L;
                        int i, j;
                        l_686 = l_683;
                        (*p_2924->g_66) = l_687[7][4][1];
                        l_690 ^= (safe_lshift_func_uint16_t_u_u(p_2924->g_581, 2));
                        (*p_2924->g_111) = 4L;
                    }
                    for (p_2924->g_97 = 3; (p_2924->g_97 <= 9); p_2924->g_97 += 1)
                    { /* block id: 338 */
                        l_691[1][3][7] = &l_670;
                    }
                    l_549 &= l_692;
                    for (l_584 = 0; (l_584 <= 9); l_584 += 1)
                    { /* block id: 344 */
                        int32_t **l_695 = &l_691[1][3][7];
                        l_670 ^= (l_694 = ((l_677 , l_693) <= (-1L)));
                        return l_697;
                    }
                }
            }
            l_701++;
            for (l_584 = 3; (l_584 >= 0); l_584 -= 1)
            { /* block id: 354 */
                uint64_t l_704 = 18446744073709551615UL;
                int64_t *l_737 = &p_2924->g_738;
                uint16_t *l_739[9][8] = {{&l_655,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_655,&l_655},{&l_655,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_655,&l_655},{&l_655,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_655,&l_655},{&l_655,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_655,&l_655},{&l_655,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_655,&l_655},{&l_655,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_655,&l_655},{&l_655,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_655,&l_655},{&l_655,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_655,&l_655},{&l_655,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_655,&l_655}};
                int32_t l_740 = 3L;
                int i, j;
                if (l_704)
                    break;
                l_549 = (safe_div_func_int16_t_s_s((p_64 < (0xC3B7405B3A817A12L < l_704)), 0x51E5L));
                l_742 = ((*p_63) = (((((!p_62) , FAKE_DIVERGE(p_2924->global_0_offset, get_global_id(0), 10)) <= 0x61D8546A6DF83795L) , (safe_lshift_func_uint16_t_u_u((p_2924->g_581 == 18446744073709551611UL), ((safe_rshift_func_int16_t_s_u(((safe_sub_func_int16_t_s_s(((safe_lshift_func_int8_t_s_u(((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(p_64, 14)), 0L)), 7)) & (safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s((65532UL > (safe_mul_func_uint16_t_u_u((safe_div_func_int32_t_s_s((*p_2924->g_187), ((FAKE_DIVERGE(p_2924->group_2_offset, get_group_id(2), 10) >= ((safe_mod_func_uint16_t_u_u(((l_740 = (safe_div_func_uint64_t_u_u((((((safe_add_func_uint16_t_u_u((((*l_737) = ((p_2924->g_191[4][1][1] || l_704) ^ p_62)) , p_2924->g_78[0]), p_64)) < (-8L)) && p_65) >= 0UL) , l_704), (-1L)))) < 0x7DDCL), l_741)) <= 1L)) || p_64))), FAKE_DIVERGE(p_2924->global_2_offset, get_global_id(2), 10)))), 11)), p_64))), 1)) != 7L), p_2924->g_97)) || p_64), p_2924->g_632)) | p_2924->g_641[1])))) , &l_584));
                for (p_2924->g_249 = 1; (p_2924->g_249 <= 9); p_2924->g_249 += 1)
                { /* block id: 363 */
                    int i, j, k;
                    l_740 = (((void*)0 == &p_2924->g_298[l_584][l_584][(l_584 + 3)]) , (l_549 = (p_62 != p_2924->g_23)));
                }
            }
            (*l_742) = (((safe_mod_func_uint8_t_u_u((p_65 && 0x356AF317E96D56F5L), p_2924->g_95)) || (p_2924->g_299 != p_2924->g_299)) || (safe_unary_minus_func_uint8_t_u((((GROUP_DIVERGE(0, 1) & (p_65 < (safe_div_func_uint8_t_u_u(p_2924->g_95, (safe_mul_func_uint16_t_u_u(p_62, ((**l_630) != &l_654))))))) , &p_2924->g_596) == (void*)0))));
        }
        (*l_742) = (-1L);
        for (l_672 = 9; (l_672 >= 3); l_672 -= 1)
        { /* block id: 373 */
            uint32_t l_750 = 0UL;
            int8_t *l_771 = &p_2924->g_40;
            int8_t **l_770 = &l_771;
            int16_t *l_772 = &l_627[1];
            uint16_t *l_773 = (void*)0;
            uint16_t *l_774 = &p_2924->g_156;
            int32_t *l_794 = (void*)0;
            uint32_t ***l_818 = &p_2924->g_298[4][2][1];
            uint32_t l_819 = 1UL;
            int32_t l_882[3][2] = {{0L,0L},{0L,0L},{0L,0L}};
            int32_t **l_911 = &l_794;
            int32_t **l_912 = (void*)0;
            uint64_t l_1004 = 18446744073709551612UL;
            int32_t **l_1038 = &l_794;
            int i, j;
            ++l_750;
            if ((safe_add_func_int8_t_s_s((safe_unary_minus_func_uint16_t_u(((&p_2924->g_738 == (((*l_538) = ((p_65 <= ((*l_774) |= (safe_mul_func_int16_t_s_s(l_750, (safe_div_func_int16_t_s_s(((safe_mod_func_int16_t_s_s(p_65, ((*l_772) = (((safe_sub_func_uint8_t_u_u(p_62, (-3L))) & (p_2924->g_738 | ((safe_div_func_int32_t_s_s((((((FAKE_DIVERGE(p_2924->global_0_offset, get_global_id(0), 10) & (safe_mod_func_uint8_t_u_u((((((((((safe_mul_func_uint16_t_u_u((l_742 == p_2924->g_187), 0x62A4L)) , (void*)0) == l_770) ^ p_65) , l_750) , 0x186A7DB1L) , p_64) > p_2924->g_249) || p_2924->g_35), l_750))) < (-3L)) , 0x1CL) < l_750) ^ p_2924->g_641[2]), 4294967295UL)) | p_62))) & 0x416DL)))) >= (*l_742)), p_62)))))) , 2UL)) , l_775[2][3][0])) < GROUP_DIVERGE(0, 1)))), 0x39L)))
            { /* block id: 378 */
                uint32_t l_777 = 0xA15228A6L;
                uint16_t *l_783 = &p_2924->g_156;
                int64_t l_796 = (-7L);
                int8_t **l_799 = &l_798[1];
                uint64_t *l_803[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_803[i] = &l_544;
                for (l_549 = 9; (l_549 >= 3); l_549 -= 1)
                { /* block id: 381 */
                    int32_t l_776 = (-5L);
                    int64_t *l_779[6][4] = {{&l_672,(void*)0,&l_672,&l_672},{&l_672,(void*)0,&l_672,&l_672},{&l_672,(void*)0,&l_672,&l_672},{&l_672,(void*)0,&l_672,&l_672},{&l_672,(void*)0,&l_672,&l_672},{&l_672,(void*)0,&l_672,&l_672}};
                    int64_t **l_778[7];
                    int8_t *l_793 = &p_2924->g_579;
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_778[i] = &l_779[3][2];
                    l_777 = l_776;
                    if ((((p_2924->g_780 = &p_2924->g_191[3][5][0]) == (void*)0) == (((***l_630) = ((safe_mul_func_int16_t_s_s((p_2924->g_191[4][1][1] != ((p_2924->g_97 <= ((void*)0 != l_783)) || (p_62 == (safe_mul_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((safe_sub_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s((((((((*l_793) = (l_792 || (0x7742AE0BD93CB375L || p_2924->g_78[0]))) || p_64) != p_2924->g_249) , p_65) <= 5L) , p_2924->g_581), 5)) ^ 4294967295UL), 0x0EC89898BF8673A6L)) == p_2924->g_253), (*l_742))), l_776))))), p_2924->g_632)) , (*p_2924->g_299))) | 0x12E478EEL)))
                    { /* block id: 386 */
                        uint64_t l_795 = 0UL;
                        l_794 = l_794;
                        if ((*p_2924->g_187))
                            continue;
                        l_796 = l_795;
                    }
                    else
                    { /* block id: 390 */
                        int16_t l_800[5] = {0x1A11L,0x1A11L,0x1A11L,0x1A11L,0x1A11L};
                        int i;
                        l_800[0] = (l_797[4] != l_799);
                        if (p_65)
                            continue;
                    }
                    if (l_796)
                        break;
                    (*p_2924->g_66) = l_794;
                }
                (*l_742) = (((safe_mod_func_int32_t_s_s((((*p_2924->g_780) | (p_64--)) <= (1UL > ((((void*)0 != &l_798[0]) != ((**l_799) = (((((safe_mod_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(p_2924->g_579, 2)), ((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint64_t_u_u(((void*)0 == l_818), (*p_2924->g_780))), 6)) < l_819))), 0x9D5BL)) >= p_62) || 0x6943L) & p_2924->g_23) <= p_2924->g_641[2]))) != 65535UL))), (*p_2924->g_299))) ^ p_65) || p_2924->g_95);
                (*p_2924->g_111) |= (*l_742);
            }
            else
            { /* block id: 401 */
                uint32_t l_836 = 0xE5832E9EL;
                int32_t l_837 = 8L;
                int32_t *l_842 = &l_699;
                int32_t l_844 = (-6L);
                uint16_t *l_910[4] = {&l_655,&l_655,&l_655,&l_655};
                uint8_t l_933[5][4] = {{0xC4L,0xC4L,1UL,0UL},{0xC4L,0xC4L,1UL,0UL},{0xC4L,0xC4L,1UL,0UL},{0xC4L,0xC4L,1UL,0UL},{0xC4L,0xC4L,1UL,0UL}};
                uint8_t l_952 = 0UL;
                int64_t l_1012 = (-8L);
                int32_t l_1030 = 8L;
                int32_t l_1031[1][4] = {{0L,0L,0L,0L}};
                int i, j;
                if ((safe_lshift_func_int8_t_s_u((safe_div_func_uint16_t_u_u(((*l_774) = (safe_mul_func_int16_t_s_s(((safe_div_func_uint16_t_u_u(65528UL, (~(safe_mod_func_int8_t_s_s(((1L | (p_2924->g_78[0] , ((8L != 7L) , (1L < (safe_add_func_uint16_t_u_u(p_2924->g_95, p_64)))))) > (((safe_mod_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_s((~(p_64 || p_65)), l_836)) || FAKE_DIVERGE(p_2924->global_1_offset, get_global_id(1), 10)), p_62)) , l_836) < 0L)), GROUP_DIVERGE(1, 1)))))) ^ p_65), p_64))), p_65)), 0)))
                { /* block id: 403 */
                    uint32_t l_838 = 4UL;
                    l_837 = p_64;
                    if (p_62)
                        continue;
                    l_838++;
                    for (p_2924->g_35 = 3; (p_2924->g_35 <= 9); p_2924->g_35 += 1)
                    { /* block id: 409 */
                        int32_t l_841 = 0x4ABAF0FDL;
                        if (p_64)
                            break;
                        l_837 |= l_841;
                        l_842 = (void*)0;
                    }
                }
                else
                { /* block id: 414 */
                    int64_t l_843 = 3L;
                    uint64_t *l_863 = &p_2924->g_95;
                    int32_t l_866 = 1L;
                    int32_t *l_879 = &p_2924->g_288;
                    int32_t l_880 = 0x3D31815BL;
                    int32_t l_881 = (-1L);
                    (*l_842) = l_843;
                    if ((l_844 , ((l_866 = (l_845 != ((((safe_add_func_uint16_t_u_u((~((safe_unary_minus_func_uint8_t_u((safe_lshift_func_int8_t_s_u(((((safe_lshift_func_uint16_t_u_u(p_2924->g_40, (~p_2924->g_738))) != ((safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s((((l_843 > ((safe_div_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((GROUP_DIVERGE(1, 1) < (*p_2924->g_780)), (safe_rshift_func_uint16_t_u_s((p_62 ^ (l_843 != ((p_64 = ((*l_863) ^= l_843)) || 18446744073709551608UL))), (*l_842))))), p_2924->g_288)) > 9L)) <= p_62) | p_2924->g_864), p_62)), 2)) > 0x69548312L)) && (*p_2924->g_780)) ^ (*p_2924->g_780)), 3)))) ^ p_65)), p_65)) , (*l_842)) > l_865) , l_772))) != p_65)))
                    { /* block id: 419 */
                        uint32_t l_883[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_883[i] = 4294967295UL;
                        (*l_842) = ((*l_842) != ((((safe_div_func_uint32_t_u_u(p_64, (p_64 && ((*l_538) = (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), p_65)))))) <= p_62) , (safe_mod_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(((*l_774) = p_64), 0UL)) > (((p_2924->g_579 = 0x4BL) < (safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), 4))) != ((l_665 == (void*)0) || p_64))), p_2924->g_217[4]))) >= p_62));
                        l_879 = &l_837;
                        l_883[4]--;
                        (*l_742) ^= ((*l_879) = l_883[4]);
                    }
                    else
                    { /* block id: 428 */
                        uint16_t l_886[7] = {0xFAA8L,0xFAA8L,0xFAA8L,0xFAA8L,0xFAA8L,0xFAA8L,0xFAA8L};
                        int32_t *l_907 = (void*)0;
                        int32_t *l_908 = &p_2924->g_909;
                        int i;
                        l_886[1]--;
                        (*l_879) = (((*l_842) = ((safe_mul_func_int8_t_s_s((safe_unary_minus_func_int8_t_s(((safe_lshift_func_uint8_t_u_u(((((safe_div_func_uint32_t_u_u((+((*p_2924->g_187) > (&p_2924->g_156 != (((*l_908) = (p_65 >= ((((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u((safe_sub_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(p_2924->g_632, 2)), (((0x0C1AB148L && ((void*)0 != &p_2924->g_191[4][1][1])) || (((((*l_772) = ((safe_mul_func_uint16_t_u_u(p_2924->g_217[9], ((((*l_774) &= ((*p_2924->g_780) , p_2924->g_23)) , p_2924->g_905) != (void*)0))) >= 1UL)) || p_62) ^ 5UL) <= 0x1BL)) | p_2924->g_97))))), p_65)) == 0x70C0L) < p_64) == p_64))) , l_910[0])))), l_886[1])) == l_886[1]) | p_2924->g_2) == p_62), p_2924->g_188)) < p_64))), (*l_879))) & (*l_879))) , p_62);
                        return l_912;
                    }
                }
                if (((*l_742) = p_62))
                { /* block id: 439 */
                    uint32_t *l_920[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_928[9] = {0L,(-3L),0L,0L,(-3L),0L,0L,(-3L),0L};
                    int32_t l_932 = (-4L);
                    uint32_t l_951 = 0UL;
                    int i;
                    l_882[2][0] = ((*l_742) != ((*l_772) |= 0x6801L));
                    if ((((p_64 && ((safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u((((((*l_538) = (((l_742 != ((l_919 != 3L) , l_920[4])) < ((safe_unary_minus_func_int16_t_s(((((l_928[8] ^= ((++p_2924->g_156) > ((((p_65 == (~((safe_mul_func_int16_t_s_s(((+(*p_2924->g_780)) , (safe_sub_func_int8_t_s_s((p_64 == (p_62 > p_62)), p_64))), p_64)) == 0x32F2L))) , p_62) , p_65) , p_65))) , (void*)0) != p_2924->g_929) != p_2924->g_931[6][2][2]))) <= 0L)) == p_62)) ^ l_932) != p_64) ^ p_2924->g_632), p_64)), l_933[3][3])) & 1UL)) & 8UL) , p_62))
                    { /* block id: 445 */
                        volatile int32_t * volatile *l_936 = &p_2924->g_934;
                        (*l_936) = p_2924->g_934;
                        (**l_936) ^= (safe_mul_func_int8_t_s_s((((safe_mod_func_int32_t_s_s(((l_933[3][3] < (safe_mul_func_uint16_t_u_u((((**p_2924->g_905) = p_64) , (safe_add_func_int64_t_s_s((-8L), p_2924->g_188))), 65535UL))) | ((*l_774) &= GROUP_DIVERGE(0, 1))), (safe_mod_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(p_64, (safe_lshift_func_uint16_t_u_s((6L | p_64), (((l_928[8] = ((0x84L && (*l_742)) == l_951)) != p_64) >= l_951))))), 0x4EAC7C4306FB6C97L)))) || 0UL) || 4294967295UL), 0x32L));
                        l_952++;
                        (*p_2924->g_111) = (255UL & l_928[2]);
                    }
                    else
                    { /* block id: 453 */
                        (*p_63) = &l_837;
                    }
                }
                else
                { /* block id: 456 */
                    int32_t l_975[1];
                    int16_t l_976 = (-6L);
                    int8_t ***l_982 = &l_770;
                    uint32_t *l_996 = &l_750;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_975[i] = 6L;
                    l_977 &= ((((FAKE_DIVERGE(p_2924->group_2_offset, get_group_id(2), 10) != ((l_976 |= (safe_mul_func_int8_t_s_s((((***l_630) = (safe_rshift_func_uint16_t_u_s(((((-1L) >= (((l_975[0] = (((((!0x41L) <= (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_2924->global_0_offset, get_global_id(0), 10), ((p_2924->g_632 == (GROUP_DIVERGE(1, 1) && ((*l_772) = (safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(((safe_div_func_int32_t_s_s((1UL > (*p_2924->g_906)), (safe_rshift_func_uint8_t_u_s(p_2924->g_931[4][5][0], 7)))) && (safe_mul_func_int16_t_s_s((safe_mod_func_int64_t_s_s((((*p_2924->g_906) <= ((*l_742) , p_2924->g_23)) < 0x746CC06C10EE9D84L), (*p_2924->g_780))), 1L))), (*p_2924->g_906))), (**p_2924->g_905))), p_2924->g_35))))) , 0UL)))) | p_64) , p_2924->g_23) ^ (*p_2924->g_780))) <= 0x718CL) , 65535UL)) | 0x424A5630C6FB75CFL) == p_2924->g_78[0]), 8))) && 4294967295UL), 1L))) >= 0x88FBL)) == p_64) || 0xA4D3L) != 6UL);
                    l_882[2][1] |= (((*l_742) = (*p_2924->g_111)) < (!(~((*l_996) |= (safe_mul_func_int8_t_s_s(((safe_div_func_uint64_t_u_u(((((((((*l_772) = 0L) && (((*l_982) = &p_2924->g_906) == &l_771)) != ((safe_rshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u((safe_add_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s((((safe_add_func_int64_t_s_s((~p_65), (p_62 >= ((**l_630) != (**l_818))))) != ((***l_818) = ((!(safe_add_func_int64_t_s_s((safe_sub_func_uint16_t_u_u((p_65 <= p_65), p_2924->g_35)), p_65))) < p_2924->g_78[0]))) != p_62))), (*p_2924->g_906))), GROUP_DIVERGE(0, 1))), p_64)) , p_2924->g_191[4][1][1])) | p_64) <= 0xDFFFL) , p_64) , p_2924->g_251), p_65)) , (**p_2924->g_905)), GROUP_DIVERGE(0, 1)))))));
                    (*p_63) = l_997;
                }
                (*l_911) = (*l_911);
                if ((((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s((((safe_rshift_func_uint16_t_u_u((((l_1004++) < ((65530UL < ((p_64 <= (((*l_774) = (((0x021DL & p_2924->g_581) , ((safe_lshift_func_int8_t_s_s(((*p_2924->g_906) = (((**l_630) = (**l_630)) == (l_1009 = &l_819))), 4)) , (safe_sub_func_uint8_t_u_u((((*l_772) ^= l_1012) == p_62), (((((*l_538)--) < ((((safe_add_func_int16_t_s_s(((void*)0 != &p_2924->g_909), 1UL)) != p_62) & 0x52553E74L) >= p_2924->g_156)) >= 0UL) <= p_64))))) & l_1017[6][3])) , p_65)) > p_65)) >= 1L)) < p_65), 14)) | p_2924->g_632) >= p_2924->g_78[0]), p_62)), p_65)) || l_1018) == (*l_742)))
                { /* block id: 478 */
                    for (l_588 = 0; (l_588 <= 9); l_588 += 1)
                    { /* block id: 481 */
                        l_844 = p_64;
                    }
                    for (l_844 = 0; l_844 < 10; l_844 += 1)
                    {
                        p_2924->g_217[l_844] = 0x4DL;
                    }
                    for (l_844 = 0; (l_844 <= 9); l_844 += 1)
                    { /* block id: 487 */
                        (*p_63) = &l_837;
                    }
                }
                else
                { /* block id: 490 */
                    int16_t l_1026 = 0L;
                    int32_t l_1027 = 0x39813E7BL;
                    int16_t l_1028 = 1L;
                    int32_t l_1029 = 0x58EBD23AL;
                    int8_t l_1032 = 0x78L;
                    int32_t l_1033[7] = {0x160711F5L,0x160711F5L,0x160711F5L,0x160711F5L,0x160711F5L,0x160711F5L,0x160711F5L};
                    int32_t **l_1037 = (void*)0;
                    int i;
                    (*l_911) = (((((void*)0 != l_997) && (safe_lshift_func_uint16_t_u_u(p_65, (((***l_818) = (p_65 < (safe_mod_func_uint64_t_u_u((((((p_65 , &l_818) == (void*)0) , (safe_sub_func_uint16_t_u_u(((p_65 >= p_62) <= p_62), 65528UL))) , 0x4D11L) || 1L), p_62)))) > (*p_2924->g_934))))) ^ l_1025) , (void*)0);
                    l_1034++;
                    return l_1037;
                }
            }
            return l_1039;
        }
    }
    for (l_693 = (-29); (l_693 >= 11); l_693 = safe_add_func_uint32_t_u_u(l_693, 4))
    { /* block id: 502 */
        int32_t **l_1046 = &l_691[1][3][7];
        int32_t l_1049[9];
        int16_t l_1050 = 0x5986L;
        int16_t l_1052 = (-1L);
        int8_t l_1054 = (-1L);
        int i;
        for (i = 0; i < 9; i++)
            l_1049[i] = 0L;
        if (p_64)
            goto lbl_1042;
        for (p_2924->g_251 = 8; (p_2924->g_251 < 26); p_2924->g_251 = safe_add_func_uint16_t_u_u(p_2924->g_251, 6))
        { /* block id: 506 */
            uint32_t l_1045[3];
            int32_t **l_1047 = &l_691[2][4][6];
            int i;
            for (i = 0; i < 3; i++)
                l_1045[i] = 0xA0509ABBL;
            if (l_1045[2])
                break;
            return l_1048;
        }
        for (p_2924->g_581 = 0; (p_2924->g_581 <= 0); p_2924->g_581 += 1)
        { /* block id: 512 */
            int32_t l_1051 = (-1L);
            int32_t l_1053[8][9] = {{0L,9L,0x4C8F9D72L,0L,0x51A126DCL,0x2E497D49L,0x2E497D49L,0x51A126DCL,0L},{0L,9L,0x4C8F9D72L,0L,0x51A126DCL,0x2E497D49L,0x2E497D49L,0x51A126DCL,0L},{0L,9L,0x4C8F9D72L,0L,0x51A126DCL,0x2E497D49L,0x2E497D49L,0x51A126DCL,0L},{0L,9L,0x4C8F9D72L,0L,0x51A126DCL,0x2E497D49L,0x2E497D49L,0x51A126DCL,0L},{0L,9L,0x4C8F9D72L,0L,0x51A126DCL,0x2E497D49L,0x2E497D49L,0x51A126DCL,0L},{0L,9L,0x4C8F9D72L,0L,0x51A126DCL,0x2E497D49L,0x2E497D49L,0x51A126DCL,0L},{0L,9L,0x4C8F9D72L,0L,0x51A126DCL,0x2E497D49L,0x2E497D49L,0x51A126DCL,0L},{0L,9L,0x4C8F9D72L,0L,0x51A126DCL,0x2E497D49L,0x2E497D49L,0x51A126DCL,0L}};
            int32_t **l_1059 = (void*)0;
            int i, j;
            if (p_2924->g_641[(p_2924->g_581 + 1)])
                break;
            l_1056++;
            if ((*p_2924->g_111))
                break;
            if (l_1051)
                break;
            for (l_1052 = 0; (l_1052 >= 0); l_1052 -= 1)
            { /* block id: 519 */
                uint16_t l_1060 = 0UL;
                for (l_584 = 0; (l_584 >= 0); l_584 -= 1)
                { /* block id: 522 */
                    return l_1059;
                }
                if (l_1060)
                    break;
            }
        }
    }
    return l_1061;
}


/* ------------------------------------------ */
/* 
 * reads : p_2924->g_253 p_2924->g_298 p_2924->g_191 p_2924->g_35 p_2924->g_95 p_2924->g_299 p_2924->g_97 p_2924->g_23 p_2924->g_2 p_2924->g_187 p_2924->g_188 p_2924->g_156 p_2924->g_100 p_2924->g_326 p_2924->g_217 p_2924->g_251 p_2924->g_66 p_2924->g_78 p_2924->g_40 p_2924->g_67 p_2924->g_249 p_2924->g_288
 * writes: p_2924->g_298 p_2924->g_95 p_2924->g_156 p_2924->g_97 p_2924->g_188 p_2924->g_249 p_2924->g_35 p_2924->g_338 p_2924->g_67 p_2924->g_288 p_2924->g_187
 */
uint64_t  func_68(int32_t * p_69, uint64_t  p_70, int32_t ** p_71, int64_t  p_72, struct S0 * p_2924)
{ /* block id: 60 */
    uint32_t *l_153[9][7] = {{(void*)0,&p_2924->g_35,&p_2924->g_35,&p_2924->g_35,&p_2924->g_97,&p_2924->g_35,&p_2924->g_35},{(void*)0,&p_2924->g_35,&p_2924->g_35,&p_2924->g_35,&p_2924->g_97,&p_2924->g_35,&p_2924->g_35},{(void*)0,&p_2924->g_35,&p_2924->g_35,&p_2924->g_35,&p_2924->g_97,&p_2924->g_35,&p_2924->g_35},{(void*)0,&p_2924->g_35,&p_2924->g_35,&p_2924->g_35,&p_2924->g_97,&p_2924->g_35,&p_2924->g_35},{(void*)0,&p_2924->g_35,&p_2924->g_35,&p_2924->g_35,&p_2924->g_97,&p_2924->g_35,&p_2924->g_35},{(void*)0,&p_2924->g_35,&p_2924->g_35,&p_2924->g_35,&p_2924->g_97,&p_2924->g_35,&p_2924->g_35},{(void*)0,&p_2924->g_35,&p_2924->g_35,&p_2924->g_35,&p_2924->g_97,&p_2924->g_35,&p_2924->g_35},{(void*)0,&p_2924->g_35,&p_2924->g_35,&p_2924->g_35,&p_2924->g_97,&p_2924->g_35,&p_2924->g_35},{(void*)0,&p_2924->g_35,&p_2924->g_35,&p_2924->g_35,&p_2924->g_97,&p_2924->g_35,&p_2924->g_35}};
    int32_t ***l_162 = (void*)0;
    uint16_t *l_175 = (void*)0;
    int64_t l_207[7] = {0x386EAAE325C52ABAL,0x386EAAE325C52ABAL,0x386EAAE325C52ABAL,0x386EAAE325C52ABAL,0x386EAAE325C52ABAL,0x386EAAE325C52ABAL,0x386EAAE325C52ABAL};
    int32_t l_213[10] = {0x31DF90D5L,0x734E80F0L,0x31DF90D5L,0x31DF90D5L,0x734E80F0L,0x31DF90D5L,0x31DF90D5L,0x734E80F0L,0x31DF90D5L,0x31DF90D5L};
    int64_t l_232 = 0L;
    uint32_t **l_296 = &l_153[7][6];
    uint32_t ***l_297 = &l_296;
    uint32_t ***l_300[6] = {&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7],&p_2924->g_298[0][0][7]};
    uint64_t *l_309 = &p_2924->g_95;
    int32_t ****l_336 = &p_2924->g_100;
    int32_t *****l_335 = &l_336;
    int32_t l_365 = (-1L);
    uint32_t l_373 = 4294967289UL;
    int64_t l_407 = 0L;
    uint32_t l_523 = 0UL;
    int32_t ****l_534 = &l_162;
    uint32_t l_537 = 2UL;
    int i, j;
lbl_339:
    for (p_72 = 0; (p_72 <= 0); p_72 += 1)
    { /* block id: 63 */
        uint32_t l_168 = 1UL;
        int32_t l_177 = 0x26CCCF15L;
        uint64_t *l_180 = &p_2924->g_95;
        int32_t **l_181 = &p_2924->g_67;
        int32_t **l_182 = &p_2924->g_67;
        int32_t **l_183 = &p_2924->g_67;
        int32_t **l_184 = &p_2924->g_67;
        int32_t **l_185 = (void*)0;
        int32_t **l_186[2];
        int8_t l_216 = 4L;
        int16_t l_221 = 0x5EB3L;
        uint16_t l_222[2];
        uint32_t l_269 = 1UL;
        int8_t l_295[4][1][3] = {{{0L,(-1L),0L}},{{0L,(-1L),0L}},{{0L,(-1L),0L}},{{0L,(-1L),0L}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_186[i] = &p_2924->g_67;
        for (i = 0; i < 2; i++)
            l_222[i] = 1UL;
        (1 + 1);
    }
    if ((((((*l_297) = l_296) == (p_2924->g_298[0][3][4] = ((p_2924->g_253 != GROUP_DIVERGE(1, 1)) , p_2924->g_298[0][0][7]))) , 0x3DL) <= (safe_rshift_func_uint8_t_u_s((((*p_2924->g_299) = (((safe_rshift_func_int8_t_s_s(p_2924->g_191[4][1][1], 0)) | ((p_2924->g_35 ^ (p_70 & (((p_2924->g_156 = (safe_add_func_uint64_t_u_u(((*l_309)++), 0x01691C3A0EA7E689L))) >= p_70) || 4294967292UL))) == (*p_2924->g_299))) || (*p_69))) <= 4294967287UL), p_72))))
    { /* block id: 188 */
        uint16_t l_312[1];
        int i;
        for (i = 0; i < 1; i++)
            l_312[i] = 0xF035L;
        (*p_2924->g_187) ^= (l_312[0] == l_312[0]);
    }
    else
    { /* block id: 190 */
        int16_t l_315[5][3][2] = {{{0x755FL,0x5FC6L},{0x755FL,0x5FC6L},{0x755FL,0x5FC6L}},{{0x755FL,0x5FC6L},{0x755FL,0x5FC6L},{0x755FL,0x5FC6L}},{{0x755FL,0x5FC6L},{0x755FL,0x5FC6L},{0x755FL,0x5FC6L}},{{0x755FL,0x5FC6L},{0x755FL,0x5FC6L},{0x755FL,0x5FC6L}},{{0x755FL,0x5FC6L},{0x755FL,0x5FC6L},{0x755FL,0x5FC6L}}};
        int32_t ****l_317 = &p_2924->g_100;
        int32_t *****l_316 = &l_317;
        int64_t *l_318 = (void*)0;
        uint32_t **l_324 = &l_153[7][6];
        int8_t l_354 = (-1L);
        int8_t l_386[5];
        uint32_t l_467 = 0xDE846BB9L;
        int32_t l_491[10][1] = {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}};
        uint32_t l_509 = 4294967295UL;
        int32_t *****l_522 = &l_336;
        uint64_t l_524 = 18446744073709551609UL;
        int16_t *l_535 = &l_315[0][0][0];
        int32_t **l_536[2][6] = {{&p_2924->g_187,&p_2924->g_187,(void*)0,&p_2924->g_187,&p_2924->g_187,&p_2924->g_187},{&p_2924->g_187,&p_2924->g_187,(void*)0,&p_2924->g_187,&p_2924->g_187,&p_2924->g_187}};
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_386[i] = 0x72L;
        if ((safe_add_func_int32_t_s_s((+((p_2924->g_156 >= (&l_232 == ((l_207[1] , (((*l_316) = (l_315[0][0][0] , &p_2924->g_100)) == &l_162)) , l_318))) > p_2924->g_23)), (+(&l_213[6] == p_69)))))
        { /* block id: 192 */
            uint32_t **l_325 = &l_153[7][6];
            for (p_2924->g_249 = 0; (p_2924->g_249 > 58); p_2924->g_249 = safe_add_func_int32_t_s_s(p_2924->g_249, 6))
            { /* block id: 195 */
                uint8_t l_323 = 0x35L;
                (*p_2924->g_187) &= (255UL <= (safe_sub_func_uint32_t_u_u((p_70 == ((l_323 , (**l_316)) == &p_71)), (p_72 != (l_324 == (l_325 = l_324))))));
                if ((*p_2924->g_187))
                    break;
                if (p_2924->g_188)
                    goto lbl_327;
            }
lbl_327:
            (*p_2924->g_187) = ((&p_69 != p_2924->g_326) ^ 1UL);
            for (p_2924->g_35 = 0; (p_2924->g_35 >= 22); p_2924->g_35 = safe_add_func_int8_t_s_s(p_2924->g_35, 2))
            { /* block id: 204 */
                int16_t *l_334 = &l_315[0][0][0];
                int32_t *****l_337[3][3][1] = {{{&l_336},{&l_336},{&l_336}},{{&l_336},{&l_336},{&l_336}},{{&l_336},{&l_336},{&l_336}}};
                int i, j, k;
                (*p_2924->g_187) = (safe_rshift_func_uint16_t_u_u((0x1598L == ((*l_334) = (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), (~((void*)0 != &p_2924->g_251)))))), (l_335 == (p_2924->g_338 = l_337[2][2][0]))));
                for (p_2924->g_156 = 0; p_2924->g_156 < 10; p_2924->g_156 += 1)
                {
                    l_213[p_2924->g_156] = 1L;
                }
            }
            if (p_70)
                goto lbl_339;
        }
        else
        { /* block id: 211 */
            int16_t *l_342 = &l_315[0][0][0];
            int32_t **l_353 = &p_2924->g_187;
            int16_t l_409[5][8] = {{9L,(-1L),0x4194L,0x354BL,(-1L),9L,0x354BL,0x2E02L},{9L,(-1L),0x4194L,0x354BL,(-1L),9L,0x354BL,0x2E02L},{9L,(-1L),0x4194L,0x354BL,(-1L),9L,0x354BL,0x2E02L},{9L,(-1L),0x4194L,0x354BL,(-1L),9L,0x354BL,0x2E02L},{9L,(-1L),0x4194L,0x354BL,(-1L),9L,0x354BL,0x2E02L}};
            int32_t l_487 = 0x20DE0DE9L;
            int32_t l_488 = 0x4C666707L;
            int32_t l_492[2][8][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
            int64_t l_493 = 0x1856B17AAF9FC9DAL;
            uint32_t l_494 = 1UL;
            int32_t l_508 = (-1L);
            uint16_t *l_515 = &p_2924->g_156;
            int8_t *l_518 = &l_386[1];
            int32_t *****l_521 = &l_317;
            int i, j, k;
            if ((p_70 && (safe_add_func_int16_t_s_s((p_2924->g_217[2] >= FAKE_DIVERGE(p_2924->local_0_offset, get_local_id(0), 10)), ((*l_342) &= (p_2924->g_251 >= p_2924->g_156))))))
            { /* block id: 213 */
lbl_512:
                (*p_2924->g_187) = 3L;
            }
            else
            { /* block id: 215 */
                int32_t *l_343 = &p_2924->g_23;
                int32_t l_410 = 0x60AD6484L;
                uint32_t **l_421 = &l_153[7][6];
                int32_t l_431[8] = {(-6L),7L,(-6L),(-6L),7L,(-6L),(-6L),7L};
                int32_t ****l_458 = &l_162;
                int16_t l_469 = 0x1C31L;
                int32_t l_500 = (-1L);
                int64_t *l_501 = &l_407;
                int32_t *l_502 = &l_488;
                int32_t *l_503 = (void*)0;
                int32_t *l_504 = &l_213[2];
                int32_t *l_505 = &p_2924->g_188;
                int32_t *l_506 = &l_491[4][0];
                int32_t *l_507[2][1][4];
                int i, j, k;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 4; k++)
                            l_507[i][j][k] = &l_487;
                    }
                }
                (*p_2924->g_66) = l_343;
                for (p_2924->g_288 = 1; (p_2924->g_288 >= 0); p_2924->g_288 -= 1)
                { /* block id: 219 */
                    uint32_t *l_372[4] = {&p_2924->g_249,&p_2924->g_249,&p_2924->g_249,&p_2924->g_249};
                    int32_t l_374 = (-6L);
                    int64_t *l_377 = (void*)0;
                    int64_t *l_378 = (void*)0;
                    int64_t *l_379 = &l_207[1];
                    int32_t l_486 = 0x54A8983DL;
                    int32_t l_489 = 8L;
                    int32_t l_490[2][3][4] = {{{0x5452D327L,0L,5L,0x4D09E269L},{0x5452D327L,0L,5L,0x4D09E269L},{0x5452D327L,0L,5L,0x4D09E269L}},{{0x5452D327L,0L,5L,0x4D09E269L},{0x5452D327L,0L,5L,0x4D09E269L},{0x5452D327L,0L,5L,0x4D09E269L}}};
                    int i, j, k;
                    (1 + 1);
                }
                (**l_353) = (((*l_501) &= (((*p_2924->g_299) = (((p_72 ^ (safe_add_func_int8_t_s_s((safe_unary_minus_func_uint16_t_u((&p_2924->g_298[0][0][7] == ((((0x4067L == (p_72 < (p_2924->g_78[0] || l_500))) , (((p_70 != GROUP_DIVERGE(2, 1)) & 1UL) , l_458)) != (void*)0) , (void*)0)))), p_2924->g_191[4][1][1]))) , &p_2924->g_99) != &l_336)) & (*l_343))) > (-1L));
                l_509--;
            }
            if (p_2924->g_95)
                goto lbl_512;
            (**l_353) = (*p_69);
            (**l_353) = (((((0xB8D0213EF558BFB6L <= ((-3L) < ((safe_lshift_func_uint16_t_u_s((((*p_2924->g_299) = ((((p_2924->g_95 || ((p_2924->g_188 > ((*l_515) = p_70)) | (&p_2924->g_100 == (void*)0))) ^ ((safe_mod_func_int8_t_s_s(((*l_518) |= 1L), (safe_add_func_int16_t_s_s((l_521 != l_522), 0xE200L)))) , p_2924->g_40)) , l_523) & (*p_69))) <= p_70), l_524)) ^ 0UL))) <= p_70) != p_70) > 254UL) ^ 1L);
        }
        p_69 = ((*p_2924->g_66) = p_69);
        p_69 = (p_2924->g_187 = ((*p_2924->g_66) = ((safe_rshift_func_int8_t_s_s(((-10L) == ((((safe_lshift_func_int8_t_s_u(p_72, 4)) , ((void*)0 == (*p_71))) >= (((safe_rshift_func_uint8_t_u_s((safe_unary_minus_func_int16_t_s((safe_div_func_uint16_t_u_u(((((p_72 < (-7L)) , ((((*l_335) != ((*l_316) = l_534)) != (((*l_535) |= 0x18BEL) , FAKE_DIVERGE(p_2924->global_2_offset, get_global_id(2), 10))) >= p_2924->g_23)) , FAKE_DIVERGE(p_2924->global_2_offset, get_global_id(2), 10)) , p_2924->g_78[0]), p_2924->g_23)))), 1)) , p_72) , 0x5DA7L)) == (*p_2924->g_187))), 5)) , (*p_71))));
        l_537 = (-1L);
    }
    return p_72;
}


/* ------------------------------------------ */
/* 
 * reads : p_2924->g_35 p_2924->g_66 p_2924->g_2 p_2924->g_99 p_2924->g_40 p_2924->g_23 p_2924->g_111 p_2924->g_78 p_2924->g_67 p_2924->g_97
 * writes: p_2924->g_67 p_2924->g_95 p_2924->g_97 p_2924->g_35 p_2924->g_40 p_2924->g_78
 */
int32_t * func_73(int32_t  p_74, struct S0 * p_2924)
{ /* block id: 26 */
    int32_t *l_87 = &p_2924->g_23;
    int32_t l_126 = 0L;
    int32_t l_132[3][9][3] = {{{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L}},{{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L}},{{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L},{8L,0L,0L}}};
    uint64_t l_136[4] = {0x0C4F71C144FEC2E3L,0x0C4F71C144FEC2E3L,0x0C4F71C144FEC2E3L,0x0C4F71C144FEC2E3L};
    uint64_t l_142[3][5];
    int32_t *l_152[5][1] = {{&p_2924->g_2},{&p_2924->g_2},{&p_2924->g_2},{&p_2924->g_2},{&p_2924->g_2}};
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
            l_142[i][j] = 0x83128F9B6ADA375BL;
    }
    for (p_74 = (-14); (p_74 > (-16)); p_74 = safe_sub_func_uint8_t_u_u(p_74, 6))
    { /* block id: 29 */
        int32_t l_93 = 0x49109B52L;
        uint64_t *l_94 = &p_2924->g_95;
        uint32_t *l_96 = &p_2924->g_97;
        int32_t *l_98 = &l_93;
        int32_t l_124 = 0x099FA619L;
        int32_t l_127[9] = {0x70739995L,0x37C26C73L,0x70739995L,0x70739995L,0x37C26C73L,0x70739995L,0x70739995L,0x37C26C73L,0x70739995L};
        int i;
        if ((safe_mod_func_uint16_t_u_u((p_2924->g_35 == (l_87 == ((*p_2924->g_66) = l_87))), ((p_74 , ((safe_unary_minus_func_uint64_t_u(((safe_mul_func_uint8_t_u_u((((*l_98) = (p_74 != ((*l_96) = ((safe_lshift_func_uint8_t_u_s(l_93, p_2924->g_2)) && ((*l_94) = p_74))))) || ((FAKE_DIVERGE(p_2924->group_0_offset, get_group_id(0), 10) , p_2924->g_99) != &p_2924->g_100)), p_2924->g_35)) >= GROUP_DIVERGE(1, 1)))) & (-2L))) , p_74))))
        { /* block id: 34 */
            int32_t *l_103 = &p_2924->g_23;
            int32_t l_129[5][2] = {{0x690FC208L,0x690FC208L},{0x690FC208L,0x690FC208L},{0x690FC208L,0x690FC208L},{0x690FC208L,0x690FC208L},{0x690FC208L,0x690FC208L}};
            int i, j;
            for (p_2924->g_35 = 11; (p_2924->g_35 >= 4); p_2924->g_35--)
            { /* block id: 37 */
                uint32_t l_104 = 0UL;
                int32_t l_128 = 0x6B221C00L;
                int32_t l_130 = 0x3A87377DL;
                int32_t l_131 = 0x0ED2AF60L;
                int32_t l_133 = 0x6BF4A85DL;
                int32_t l_134[8][6] = {{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)},{(-9L),1L,(-9L),(-9L),1L,(-9L)}};
                int i, j;
                l_98 = l_103;
                l_104--;
                for (p_2924->g_40 = (-11); (p_2924->g_40 >= (-14)); --p_2924->g_40)
                { /* block id: 42 */
                    int8_t l_112 = 0x61L;
                    int32_t *l_113 = &p_2924->g_78[0];
                    int32_t *l_114 = &p_2924->g_78[0];
                    int32_t *l_115 = &p_2924->g_78[0];
                    int32_t *l_116 = &l_93;
                    int32_t *l_117 = &l_93;
                    int32_t *l_118 = &l_93;
                    int32_t *l_119 = &l_93;
                    int32_t *l_120 = &p_2924->g_78[0];
                    int32_t *l_121 = &p_2924->g_78[0];
                    int32_t *l_122 = &p_2924->g_78[0];
                    int32_t *l_123[5][1][5];
                    int32_t l_125[9] = {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)};
                    int32_t l_135 = 8L;
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 5; k++)
                                l_123[i][j][k] = &l_93;
                        }
                    }
                    (*p_2924->g_111) &= (safe_lshift_func_int8_t_s_u((*l_87), 5));
                    l_136[0]++;
                    (*l_115) ^= (~6L);
                }
            }
        }
        else
        { /* block id: 48 */
            uint8_t l_151 = 255UL;
            l_126 = (safe_unary_minus_func_int8_t_s(((safe_add_func_int32_t_s_s(((*l_98) &= (((*p_2924->g_66) = &l_132[0][8][1]) == (void*)0)), l_142[2][2])) && (safe_div_func_int64_t_s_s(1L, (safe_mod_func_uint64_t_u_u(6UL, ((safe_div_func_uint32_t_u_u(((*l_87) , ((0xCCF313D3L == ((*l_98) = (**p_2924->g_66))) <= ((safe_add_func_uint32_t_u_u((l_151 , GROUP_DIVERGE(0, 1)), 0x6967B1FDL)) && p_2924->g_97))), 0x7CD55C4CL)) , 0x3A30042110810DBFL))))))));
            (*l_98) &= (**p_2924->g_66);
            (*p_2924->g_67) = p_74;
        }
        if ((*p_2924->g_111))
            continue;
        (*p_2924->g_66) = &p_74;
    }
    return l_152[4][0];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2925;
    struct S0* p_2924 = &c_2925;
    struct S0 c_2926 = {
        (-4L), // p_2924->g_2
        (-1L), // p_2924->g_23
        4294967290UL, // p_2924->g_35
        (-1L), // p_2924->g_40
        &p_2924->g_23, // p_2924->g_67
        &p_2924->g_67, // p_2924->g_66
        {0x4DD9CEC6L}, // p_2924->g_78
        0x4DC86549E1F9A5DEL, // p_2924->g_95
        0xB1DDA348L, // p_2924->g_97
        (void*)0, // p_2924->g_100
        &p_2924->g_100, // p_2924->g_99
        &p_2924->g_78[0], // p_2924->g_111
        1UL, // p_2924->g_156
        0x51BBFE58L, // p_2924->g_188
        &p_2924->g_188, // p_2924->g_187
        {{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}},{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}},{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}},{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}},{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}},{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}},{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}},{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}},{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}},{{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL},{0x21156754FE3FCEFBL,0x3F3E8A5AF55B03BAL}}}, // p_2924->g_191
        {(-2L),0x0DL,(-2L),(-2L),0x0DL,(-2L),(-2L),0x0DL,(-2L),(-2L)}, // p_2924->g_217
        0x622C585BL, // p_2924->g_249
        0xFDL, // p_2924->g_251
        4UL, // p_2924->g_253
        (-1L), // p_2924->g_288
        &p_2924->g_97, // p_2924->g_299
        {{{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299}},{{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299}},{{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299}},{{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299}},{{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299},{&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299,&p_2924->g_299}}}, // p_2924->g_298
        (void*)0, // p_2924->g_326
        (void*)0, // p_2924->g_338
        0x1FL, // p_2924->g_579
        1L, // p_2924->g_581
        (void*)0, // p_2924->g_596
        (void*)0, // p_2924->g_599
        {{&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599},{&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599},{&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599},{&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599},{&p_2924->g_599,&p_2924->g_599,&p_2924->g_599,&p_2924->g_599}}, // p_2924->g_598
        (-4L), // p_2924->g_632
        {&p_2924->g_632,&p_2924->g_632,&p_2924->g_632}, // p_2924->g_631
        {(-1L),(-1L),(-1L),(-1L)}, // p_2924->g_641
        0L, // p_2924->g_738
        &p_2924->g_191[4][1][1], // p_2924->g_780
        0xECL, // p_2924->g_864
        &p_2924->g_581, // p_2924->g_906
        &p_2924->g_906, // p_2924->g_905
        0x22A3E6DFL, // p_2924->g_909
        (void*)0, // p_2924->g_930
        &p_2924->g_930, // p_2924->g_929
        {{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}},{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}},{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}},{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}},{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}},{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}},{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}},{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}},{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}},{{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL},{0x0087L,0x15FDL,1UL}}}, // p_2924->g_931
        &p_2924->g_641[2], // p_2924->g_934
        (void*)0, // p_2924->g_935
        {{{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188}},{{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188}},{{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188}},{{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188}},{{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188}},{{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188}},{{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188},{&p_2924->g_188,&p_2924->g_188,&p_2924->g_288,(void*)0,&p_2924->g_188,&p_2924->g_188}}}, // p_2924->g_1064
        (void*)0, // p_2924->g_1065
        &p_2924->g_909, // p_2924->g_1094
        &p_2924->g_1094, // p_2924->g_1093
        0xC6E9C16F0F731560L, // p_2924->g_1144
        (-7L), // p_2924->g_1201
        0x0489F24CL, // p_2924->g_1246
        (-6L), // p_2924->g_1278
        0x83L, // p_2924->g_1314
        (-5L), // p_2924->g_1363
        0xD6L, // p_2924->g_1419
        &p_2924->g_251, // p_2924->g_1477
        &p_2924->g_1477, // p_2924->g_1476
        (void*)0, // p_2924->g_1544
        0x16BDE21CL, // p_2924->g_1579
        (void*)0, // p_2924->g_1580
        0x5CL, // p_2924->g_1647
        {{&p_2924->g_1094,&p_2924->g_1094,&p_2924->g_1094,&p_2924->g_1094,&p_2924->g_1094,&p_2924->g_1094,&p_2924->g_1094,&p_2924->g_1094,&p_2924->g_1094,&p_2924->g_1094}}, // p_2924->g_1703
        6UL, // p_2924->g_1718
        (void*)0, // p_2924->g_1744
        0x9EL, // p_2924->g_1944
        1L, // p_2924->g_1979
        &p_2924->g_1979, // p_2924->g_1987
        {{{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987}},{{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987}},{{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987}},{{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987},{&p_2924->g_1987,&p_2924->g_1987}}}, // p_2924->g_1986
        &p_2924->g_1986[2][3][1], // p_2924->g_1985
        4294967287UL, // p_2924->g_2069
        {65535UL,65535UL,65535UL,65535UL}, // p_2924->g_2072
        4294967293UL, // p_2924->g_2140
        0xDA288A3AD5CFDD42L, // p_2924->g_2172
        0x7A8C0F6A262D9FF9L, // p_2924->g_2183
        (void*)0, // p_2924->g_2211
        &p_2924->g_66, // p_2924->g_2246
        {{{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L}},{{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L}},{{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L},{1L,0x66592CC6L,(-2L),5L,0x6A6BD114L,0L}}}, // p_2924->g_2417
        0x4FL, // p_2924->g_2463
        &p_2924->g_298[0][0][7], // p_2924->g_2496
        0x1038EEB0CA7F2CC0L, // p_2924->g_2566
        (void*)0, // p_2924->g_2690
        &p_2924->g_1703[0][7], // p_2924->g_2697
        {&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905,&p_2924->g_905}, // p_2924->g_2721
        &p_2924->g_2721[5], // p_2924->g_2720
        0x041ECE4AL, // p_2924->g_2743
        &p_2924->g_738, // p_2924->g_2745
        &p_2924->g_2745, // p_2924->g_2744
        18446744073709551614UL, // p_2924->g_2751
        0xDBF001BEL, // p_2924->g_2841
        (-1L), // p_2924->g_2902
        255UL, // p_2924->g_2905
        255UL, // p_2924->g_2921
        sequence_input[get_global_id(0)], // p_2924->global_0_offset
        sequence_input[get_global_id(1)], // p_2924->global_1_offset
        sequence_input[get_global_id(2)], // p_2924->global_2_offset
        sequence_input[get_local_id(0)], // p_2924->local_0_offset
        sequence_input[get_local_id(1)], // p_2924->local_1_offset
        sequence_input[get_local_id(2)], // p_2924->local_2_offset
        sequence_input[get_group_id(0)], // p_2924->group_0_offset
        sequence_input[get_group_id(1)], // p_2924->group_1_offset
        sequence_input[get_group_id(2)], // p_2924->group_2_offset
    };
    c_2925 = c_2926;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2924);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2924->g_2, "p_2924->g_2", print_hash_value);
    transparent_crc(p_2924->g_23, "p_2924->g_23", print_hash_value);
    transparent_crc(p_2924->g_35, "p_2924->g_35", print_hash_value);
    transparent_crc(p_2924->g_40, "p_2924->g_40", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2924->g_78[i], "p_2924->g_78[i]", print_hash_value);

    }
    transparent_crc(p_2924->g_95, "p_2924->g_95", print_hash_value);
    transparent_crc(p_2924->g_97, "p_2924->g_97", print_hash_value);
    transparent_crc(p_2924->g_156, "p_2924->g_156", print_hash_value);
    transparent_crc(p_2924->g_188, "p_2924->g_188", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2924->g_191[i][j][k], "p_2924->g_191[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2924->g_217[i], "p_2924->g_217[i]", print_hash_value);

    }
    transparent_crc(p_2924->g_249, "p_2924->g_249", print_hash_value);
    transparent_crc(p_2924->g_251, "p_2924->g_251", print_hash_value);
    transparent_crc(p_2924->g_253, "p_2924->g_253", print_hash_value);
    transparent_crc(p_2924->g_288, "p_2924->g_288", print_hash_value);
    transparent_crc(p_2924->g_579, "p_2924->g_579", print_hash_value);
    transparent_crc(p_2924->g_581, "p_2924->g_581", print_hash_value);
    transparent_crc(p_2924->g_632, "p_2924->g_632", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2924->g_641[i], "p_2924->g_641[i]", print_hash_value);

    }
    transparent_crc(p_2924->g_738, "p_2924->g_738", print_hash_value);
    transparent_crc(p_2924->g_864, "p_2924->g_864", print_hash_value);
    transparent_crc(p_2924->g_909, "p_2924->g_909", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2924->g_931[i][j][k], "p_2924->g_931[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2924->g_1144, "p_2924->g_1144", print_hash_value);
    transparent_crc(p_2924->g_1201, "p_2924->g_1201", print_hash_value);
    transparent_crc(p_2924->g_1246, "p_2924->g_1246", print_hash_value);
    transparent_crc(p_2924->g_1278, "p_2924->g_1278", print_hash_value);
    transparent_crc(p_2924->g_1314, "p_2924->g_1314", print_hash_value);
    transparent_crc(p_2924->g_1363, "p_2924->g_1363", print_hash_value);
    transparent_crc(p_2924->g_1419, "p_2924->g_1419", print_hash_value);
    transparent_crc(p_2924->g_1579, "p_2924->g_1579", print_hash_value);
    transparent_crc(p_2924->g_1647, "p_2924->g_1647", print_hash_value);
    transparent_crc(p_2924->g_1718, "p_2924->g_1718", print_hash_value);
    transparent_crc(p_2924->g_1944, "p_2924->g_1944", print_hash_value);
    transparent_crc(p_2924->g_1979, "p_2924->g_1979", print_hash_value);
    transparent_crc(p_2924->g_2069, "p_2924->g_2069", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2924->g_2072[i], "p_2924->g_2072[i]", print_hash_value);

    }
    transparent_crc(p_2924->g_2140, "p_2924->g_2140", print_hash_value);
    transparent_crc(p_2924->g_2172, "p_2924->g_2172", print_hash_value);
    transparent_crc(p_2924->g_2183, "p_2924->g_2183", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2924->g_2417[i][j][k], "p_2924->g_2417[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2924->g_2463, "p_2924->g_2463", print_hash_value);
    transparent_crc(p_2924->g_2566, "p_2924->g_2566", print_hash_value);
    transparent_crc(p_2924->g_2743, "p_2924->g_2743", print_hash_value);
    transparent_crc(p_2924->g_2751, "p_2924->g_2751", print_hash_value);
    transparent_crc(p_2924->g_2841, "p_2924->g_2841", print_hash_value);
    transparent_crc(p_2924->g_2902, "p_2924->g_2902", print_hash_value);
    transparent_crc(p_2924->g_2905, "p_2924->g_2905", print_hash_value);
    transparent_crc(p_2924->g_2921, "p_2924->g_2921", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
