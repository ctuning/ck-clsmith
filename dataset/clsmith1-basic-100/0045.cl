// ---fake_divergence -g 75,28,4 -l 1,14,2
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


// Seed: 45

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint64_t  f0;
   uint32_t  f1;
};

union U1 {
   int32_t  f0;
   int64_t  f1;
   int8_t  f2;
   int32_t  f3;
   volatile int32_t  f4;
};

union U2 {
   int32_t  f0;
};

struct S3 {
    uint64_t g_8;
    uint32_t g_12;
    int64_t g_16;
    uint32_t g_18;
    uint32_t *g_17;
    int8_t g_47;
    volatile union U2 g_62;
    int64_t g_66[1][8];
    int64_t *g_76[2][3][4];
    int32_t g_90;
    volatile int32_t g_101;
    volatile uint32_t g_102;
    volatile union U1 g_106;
    volatile union U1 *g_105;
    union U1 g_109[3];
    int32_t g_110;
    uint16_t g_138[3];
    volatile uint32_t g_142[1][10][8];
    volatile union U0 g_151;
    volatile union U0 *g_150;
    volatile union U0 ** volatile g_152;
    int16_t g_164[4];
    uint32_t *g_192[1][6];
    int8_t g_194;
    int8_t *g_193;
    int8_t *g_207;
    int8_t **g_206;
    int8_t **g_211;
    uint8_t g_215[9];
    int16_t *g_220;
    int16_t **g_219;
    int16_t *** volatile g_218;
    volatile int8_t g_244;
    uint32_t g_245[6];
    volatile int64_t g_260;
    uint64_t g_261;
    volatile int8_t g_275[5][5];
    volatile int64_t g_276;
    int8_t g_277[6];
    volatile int16_t g_278;
    volatile int16_t g_279;
    uint32_t g_302;
    int16_t g_328;
    int32_t * volatile g_357;
    volatile int32_t g_380;
    union U1 g_384;
    union U2 g_395;
    volatile int32_t g_399;
    volatile int32_t *g_398;
    volatile int32_t **g_397;
    volatile int32_t ***g_396;
    volatile uint64_t g_423;
    uint32_t g_428[8][5];
    int32_t *g_433;
    int32_t ** volatile g_432;
    union U0 g_456;
    union U0 *g_455[2][3][1];
    union U0 **g_454;
    union U0 **g_458;
    int32_t ** volatile g_465[6];
    int32_t ** volatile g_466;
    union U2 ** volatile g_469;
    union U2 *g_502;
    union U2 * volatile *g_501;
    uint64_t g_551[5];
    volatile union U1 g_559[7];
    int64_t g_581;
    uint32_t g_582;
    int64_t g_598[8][9][3];
    volatile uint64_t g_669;
    int8_t g_670;
    int32_t ** volatile g_787;
    int32_t ** volatile g_788;
    uint64_t g_815;
    int32_t ** volatile g_819;
    int32_t ** volatile g_843;
    volatile uint64_t g_856;
    uint8_t g_862[2];
    uint16_t g_880;
    uint32_t g_908;
    volatile union U1 g_967;
    volatile union U1 g_990;
    int32_t g_1020;
    uint32_t **g_1034;
    union U1 g_1092;
    int32_t ** volatile g_1113;
    int32_t ** volatile g_1114;
    union U1 g_1115[8];
    union U1 g_1130;
    uint32_t *g_1237;
    uint32_t **g_1236;
    uint32_t **g_1241;
    int8_t ***g_1249;
    volatile uint16_t **g_1267;
    int32_t ** volatile g_1289[3];
    int32_t ** volatile g_1290[3];
    int32_t ** volatile g_1291;
    int64_t g_1308;
    int32_t **g_1351;
    int32_t **g_1352;
    volatile int8_t g_1432;
    int32_t ** volatile g_1505;
    int64_t *g_1513;
    int64_t **g_1512;
    uint32_t g_1555[9][3][8];
    int16_t ***g_1619;
    int64_t g_1644;
    volatile int8_t g_1707[2][4][5];
    uint8_t *g_1713[4];
    uint8_t **g_1712;
    int8_t g_1731;
    int32_t **g_1743;
    uint64_t g_1784;
    volatile uint32_t g_1787[8];
    volatile union U1 g_1801;
    volatile union U1 g_1843;
    union U2 *g_1952;
    int16_t g_1953;
    uint64_t *g_1977[10][6][3];
    uint64_t **g_1976;
    volatile int32_t *g_2125;
    volatile int32_t * volatile * volatile g_2124;
    int32_t g_2159;
    int32_t g_2175;
    union U0 g_2189;
    union U1 g_2192;
    uint16_t *g_2204[9][6];
    uint16_t **g_2203;
    int64_t g_2249;
    volatile union U1 **g_2277[10][4][2];
    volatile union U1 ** volatile * volatile g_2276;
    volatile union U1 g_2278;
    union U1 ****g_2421;
    union U1 *****g_2420;
    uint16_t g_2472;
    int32_t *g_2483;
    int32_t **g_2482;
    union U1 g_2513;
    volatile union U1 g_2520;
    int32_t g_2544[4][7];
    int32_t g_2623;
    int32_t *g_2668;
    int32_t ** volatile g_2667;
    int64_t **g_2680;
    int64_t ***g_2679[9];
    uint32_t g_2720;
    volatile union U2 g_2794;
    volatile union U1 g_2807[10];
    int64_t ****g_2891;
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
int32_t  func_1(struct S3 * p_2953);
int32_t  func_2(int32_t  p_3, uint16_t  p_4, struct S3 * p_2953);
int32_t  func_5(uint32_t  p_6, uint32_t  p_7, struct S3 * p_2953);
int16_t  func_13(uint32_t  p_14, uint32_t * p_15, struct S3 * p_2953);
int64_t  func_21(uint32_t  p_22, uint32_t  p_23, struct S3 * p_2953);
uint32_t  func_27(uint32_t * p_28, int64_t  p_29, uint32_t * p_30, struct S3 * p_2953);
uint32_t * func_32(uint32_t * p_33, int32_t  p_34, uint64_t  p_35, int32_t  p_36, uint32_t * p_37, struct S3 * p_2953);
uint32_t * func_38(uint64_t  p_39, uint32_t  p_40, struct S3 * p_2953);
int32_t * func_41(union U0  p_42, uint32_t  p_43, int32_t * p_44, uint32_t  p_45, struct S3 * p_2953);
uint16_t  func_54(uint64_t  p_55, union U0  p_56, uint64_t  p_57, int32_t  p_58, uint16_t  p_59, struct S3 * p_2953);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2953->g_2544
 * writes:
 */
int32_t  func_1(struct S3 * p_2953)
{ /* block id: 4 */
    uint32_t *l_11 = &p_2953->g_12;
    int64_t *l_2180 = &p_2953->g_66[0][0];
    int8_t ***l_2185 = &p_2953->g_211;
    union U0 *l_2188 = &p_2953->g_2189;
    uint64_t l_2190 = 0x34F3B6E0478C9F5BL;
    uint16_t l_2191 = 0UL;
    int32_t *l_2654 = &p_2953->g_2544[3][4];
    uint64_t l_2655 = 7UL;
    uint32_t *l_2656 = &p_2953->g_582;
    int32_t l_2663 = (-1L);
    union U2 l_2682 = {-1L};
    int32_t l_2695 = 4L;
    int32_t l_2696[6] = {1L,1L,1L,1L,1L,1L};
    int32_t l_2760 = 0x751237E7L;
    uint8_t l_2808 = 0xEDL;
    int16_t l_2822 = 4L;
    uint16_t l_2921[7] = {0xED32L,1UL,0xED32L,0xED32L,1UL,0xED32L,0xED32L};
    int64_t *****l_2924 = &p_2953->g_2891;
    union U1 *l_2952[2];
    union U1 **l_2951 = &l_2952[0];
    union U1 ***l_2950 = &l_2951;
    int i;
    for (i = 0; i < 2; i++)
        l_2952[i] = &p_2953->g_2192;
    return (*l_2654);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_2(int32_t  p_3, uint16_t  p_4, struct S3 * p_2953)
{ /* block id: 1293 */
    int32_t *l_2653 = &p_2953->g_110;
    l_2653 = &p_3;
    return p_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_2953->g_2192 p_2953->g_1351 p_2953->g_433 p_2953->g_397 p_2953->g_398 p_2953->g_302 p_2953->g_17 p_2953->g_193 p_2953->g_194 p_2953->g_357 p_2953->g_1743 p_2953->g_8 p_2953->g_2203 p_2953->g_138 p_2953->g_2249 p_2953->g_1976 p_2953->g_1977 p_2953->g_206 p_2953->g_207 p_2953->g_1513 p_2953->g_1308 p_2953->g_18 p_2953->g_142 p_2953->g_2276 p_2953->g_2278 p_2953->g_1619 p_2953->g_219 p_2953->g_220 p_2953->g_164 p_2953->g_1512 p_2953->g_582 p_2953->g_110 p_2953->g_1034 p_2953->g_192 p_2953->g_843 p_2953->g_856 p_2953->g_2159 p_2953->g_1241 p_2953->g_1237 p_2953->g_908 p_2953->g_399 p_2953->g_466 p_2953->g_787 p_2953->g_1130.f0 p_2953->g_218 p_2953->g_432 p_2953->g_328 p_2953->g_2124 p_2953->g_2125 p_2953->g_2482 p_2953->g_2483 p_2953->g_211 p_2953->g_788 p_2953->g_396 p_2953->g_2623 p_2953->g_90 p_2953->g_1092.f0
 * writes: p_2953->g_2203 p_2953->g_110 p_2953->g_138 p_2953->g_399 p_2953->g_302 p_2953->g_1020 p_2953->g_1731 p_2953->g_18 p_2953->g_428 p_2953->g_582 p_2953->g_90 p_2953->g_433 p_2953->g_1092.f0 p_2953->g_328 p_2953->g_551 p_2953->g_8 p_2953->g_2249 p_2953->g_261 p_2953->g_1977 p_2953->g_194 p_2953->g_2189.f1 p_2953->g_1249 p_2953->g_856 p_2953->g_2159 p_2953->g_862 p_2953->g_908 p_2953->g_1130.f0 p_2953->g_1953 p_2953->g_164 p_2953->g_456 p_2953->g_76
 */
int32_t  func_5(uint32_t  p_6, uint32_t  p_7, struct S3 * p_2953)
{ /* block id: 1078 */
    uint16_t *l_2200[9];
    uint16_t **l_2199 = &l_2200[1];
    uint16_t ***l_2201 = (void*)0;
    uint16_t ***l_2202[7][3] = {{&l_2199,&l_2199,&l_2199},{&l_2199,&l_2199,&l_2199},{&l_2199,&l_2199,&l_2199},{&l_2199,&l_2199,&l_2199},{&l_2199,&l_2199,&l_2199},{&l_2199,&l_2199,&l_2199},{&l_2199,&l_2199,&l_2199}};
    int32_t l_2220 = (-7L);
    int64_t **l_2248 = &p_2953->g_76[0][0][2];
    int32_t l_2288[1][1];
    int16_t l_2290 = 0x4A5AL;
    uint32_t *l_2294 = (void*)0;
    uint32_t l_2338 = 4294967287UL;
    union U0 ***l_2518 = &p_2953->g_458;
    union U1 *l_2599 = (void*)0;
    int32_t l_2649[5];
    int i, j;
    for (i = 0; i < 9; i++)
        l_2200[i] = &p_2953->g_138[2];
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_2288[i][j] = 5L;
    }
    for (i = 0; i < 5; i++)
        l_2649[i] = 0x2F72AC29L;
    (**p_2953->g_397) = (0xBBE8L == (p_2953->g_2192 , (p_7 > ((safe_mul_func_int16_t_s_s((0L >= (safe_mod_func_int32_t_s_s(((**p_2953->g_1351) = (p_7 | (GROUP_DIVERGE(0, 1) != ((p_2953->g_2203 = l_2199) == (void*)0)))), (safe_lshift_func_uint16_t_u_u(((**l_2199) = 3UL), 8))))), p_6)) <= 0L))));
    for (p_2953->g_302 = 0; (p_2953->g_302 <= 5); p_2953->g_302 += 1)
    { /* block id: 1085 */
        int32_t l_2228 = 0x67ECED4DL;
        int32_t l_2271 = 0x37E5992DL;
        union U1 *l_2274 = &p_2953->g_384;
        union U1 **l_2273[8][10] = {{&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274},{&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274},{&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274},{&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274},{&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274},{&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274},{&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274},{&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274,&l_2274}};
        union U1 ***l_2272 = &l_2273[2][8];
        int32_t l_2283 = 0x05B44C6BL;
        int32_t l_2284 = (-2L);
        int32_t l_2285 = 1L;
        int32_t l_2287[2][2][1] = {{{5L},{5L}},{{5L},{5L}}};
        int8_t ***l_2300 = &p_2953->g_211;
        union U0 l_2301[6] = {{0x1A771941AEE11EE5L},{0x1A771941AEE11EE5L},{0x1A771941AEE11EE5L},{0x1A771941AEE11EE5L},{0x1A771941AEE11EE5L},{0x1A771941AEE11EE5L}};
        int32_t *l_2303 = (void*)0;
        int32_t l_2323[3];
        int16_t l_2416 = 0x30B5L;
        uint16_t ***l_2446 = (void*)0;
        int32_t **l_2485 = &p_2953->g_2483;
        union U0 l_2496 = {0x87C4DF376FA1282AL};
        int64_t l_2601[1];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_2323[i] = 0x19E0AFCCL;
        for (i = 0; i < 1; i++)
            l_2601[i] = 0x65DCBCA0163469BEL;
        for (p_2953->g_1020 = 4; (p_2953->g_1020 >= 1); p_2953->g_1020 -= 1)
        { /* block id: 1088 */
            return p_6;
        }
        for (p_2953->g_1731 = 0; (p_2953->g_1731 <= 5); p_2953->g_1731 += 1)
        { /* block id: 1093 */
            uint64_t l_2217 = 0xF29B7A29E4587403L;
            uint32_t *l_2218 = &p_2953->g_428[5][2];
            int32_t l_2219 = 7L;
            int32_t l_2227 = 0L;
            int32_t l_2229[7][5][2] = {{{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L}},{{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L}},{{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L}},{{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L}},{{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L}},{{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L}},{{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L},{(-1L),0x7F814E14L}}};
            uint64_t l_2237 = 0x5EC5DB6749C93B5CL;
            int32_t l_2244 = 3L;
            union U1 ****l_2280 = (void*)0;
            int32_t *l_2281 = (void*)0;
            int32_t *l_2282[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_2286 = 0x07DAB6FAL;
            int32_t l_2289 = 0x5936EBE3L;
            uint64_t l_2291 = 1UL;
            int8_t ****l_2299 = &p_2953->g_1249;
            uint64_t *l_2302 = &p_2953->g_551[1];
            int64_t ***l_2317 = &l_2248;
            union U0 ***l_2380 = &p_2953->g_458;
            union U2 l_2381 = {5L};
            uint64_t l_2413 = 18446744073709551615UL;
            uint8_t **l_2417 = (void*)0;
            int8_t l_2447 = 0x51L;
            int32_t l_2531 = 0x4A9D7062L;
            uint8_t l_2573 = 247UL;
            int i, j, k;
            if ((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_u(((l_2227 = (safe_sub_func_int16_t_s_s(((safe_div_func_uint8_t_u_u(((l_2219 = ((*l_2218) = ((*p_2953->g_17) = l_2217))) >= ((**p_2953->g_1351) = (p_6 < l_2220))), p_6)) == (p_6 ^ 0xBCB3AB51L)), ((safe_div_func_uint16_t_u_u(((safe_div_func_int32_t_s_s((((l_2217 ^ (safe_div_func_uint8_t_u_u(0UL, 1L))) & (*p_2953->g_193)) > (-1L)), p_6)) , FAKE_DIVERGE(p_2953->global_1_offset, get_global_id(1), 10)), 1UL)) == p_7)))) >= 0x73290707L), l_2228)), l_2228)), p_6)))
            { /* block id: 1099 */
                if (l_2229[0][1][0])
                    break;
            }
            else
            { /* block id: 1101 */
                uint64_t *l_2255[7] = {&p_2953->g_551[1],&p_2953->g_551[1],&p_2953->g_551[1],&p_2953->g_551[1],&p_2953->g_551[1],&p_2953->g_551[1],&p_2953->g_551[1]};
                uint16_t l_2270 = 0x491CL;
                int i;
                (*p_2953->g_357) = 0x5C86BAA5L;
                (*p_2953->g_1743) = &l_2219;
                for (p_2953->g_1092.f0 = 0; (p_2953->g_1092.f0 <= 3); p_2953->g_1092.f0 += 1)
                { /* block id: 1106 */
                    int32_t l_2245 = 0L;
                    for (p_2953->g_328 = 0; (p_2953->g_328 <= 1); p_2953->g_328 += 1)
                    { /* block id: 1109 */
                        uint64_t *l_2234 = &p_2953->g_551[3];
                        uint64_t *l_2235 = (void*)0;
                        uint64_t *l_2236 = &p_2953->g_8;
                        int64_t **l_2247[9][5][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        int64_t ***l_2246 = &l_2247[2][2][4];
                        uint64_t *l_2250 = &p_2953->g_261;
                        int64_t ***l_2268 = (void*)0;
                        int32_t l_2269 = 0x1E7491E2L;
                        int i, j, k;
                        (*p_2953->g_398) = ((**p_2953->g_1351) = ((((((**p_2953->g_2203) = ((safe_mul_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((((*l_2236) &= ((*l_2234) = 0x4FAE5EB64F150657L)) >= ((**p_2953->g_2203) ^ ((l_2237 , p_7) >= 0UL))), ((*l_2250) = (p_2953->g_2249 &= (((safe_lshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s((0UL == (safe_mod_func_int64_t_s_s(l_2244, l_2245))), ((l_2248 = ((*l_2246) = &p_2953->g_76[1][0][3])) == (void*)0))), p_6)) && l_2220) , p_6))))), (**p_2953->g_2203))) | l_2245)) || p_6) , (-3L)) , p_6) < p_6));
                        if (p_6)
                            break;
                        l_2271 = ((0UL > ((p_7 , (safe_div_func_int8_t_s_s(((**p_2953->g_206) |= (safe_rshift_func_uint8_t_u_s((((*p_2953->g_1976) = (*p_2953->g_1976)) == l_2255[4]), 0))), (safe_add_func_uint32_t_u_u(((safe_mul_func_uint8_t_u_u(((((~(safe_mul_func_uint16_t_u_u(((p_6 & (*p_2953->g_1513)) >= ((safe_add_func_int32_t_s_s(p_7, (((safe_lshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_u((((p_7 <= ((((p_7 , p_6) >= p_6) , l_2268) == &p_2953->g_1512)) , p_7) < l_2269), 5)), l_2270)) || p_7) >= (*p_2953->g_17)))) && p_6)), p_7))) , &p_2953->g_66[0][6]) == l_2255[4]) >= p_2953->g_142[0][2][6]), p_7)) & 4UL), p_7))))) && l_2269)) == l_2228);
                    }
                }
                for (p_2953->g_2189.f1 = 0; (p_2953->g_2189.f1 <= 1); p_2953->g_2189.f1 += 1)
                { /* block id: 1127 */
                    union U1 ****l_2275 = &l_2272;
                    union U1 *****l_2279 = &l_2275;
                    if (p_6)
                        break;
                    (**p_2953->g_1743) |= ((((*l_2275) = l_2272) == p_2953->g_2276) && ((p_2953->g_2278 , ((*l_2279) = l_2275)) == l_2280));
                    if (p_7)
                        break;
                }
            }
            --l_2291;
            l_2303 = ((*p_2953->g_1743) = func_32((l_2294 = l_2281), l_2228, ((*l_2302) = (safe_mod_func_uint64_t_u_u(((p_7 , ((safe_mod_func_uint64_t_u_u(((((*l_2299) = (void*)0) == l_2300) >= (((((*p_2953->g_17) == ((((l_2301[3] , (p_7 != l_2271)) < (***p_2953->g_1619)) >= p_7) | (*p_2953->g_207))) , 0x37FB6AB5L) == 1L) || 0x172F635F85B3631EL)), (**p_2953->g_1512))) || (**p_2953->g_1351))) <= p_7), 0x8B1910724C6E1C4FL))), p_6, (*p_2953->g_1034), p_2953));
            for (l_2237 = 0; (l_2237 <= 1); l_2237 += 1)
            { /* block id: 1143 */
                int32_t l_2306 = 0L;
                int32_t l_2357[9][8][1] = {{{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L}},{{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L}},{{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L}},{{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L}},{{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L}},{{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L}},{{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L}},{{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L}},{{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L},{0x774C7D75L}}};
                uint16_t l_2388 = 0xDD1CL;
                uint16_t **l_2555 = &l_2200[3];
                union U1 ****l_2592[5] = {&l_2272,&l_2272,&l_2272,&l_2272,&l_2272};
                uint32_t l_2604 = 0xFA5B75E1L;
                uint64_t l_2620[10] = {0xC57462A37A19EDDDL,0xFF930763674EA634L,0xC57462A37A19EDDDL,0xC57462A37A19EDDDL,0xFF930763674EA634L,0xC57462A37A19EDDDL,0xC57462A37A19EDDDL,0xFF930763674EA634L,0xC57462A37A19EDDDL,0xC57462A37A19EDDDL};
                int i, j, k;
                for (l_2285 = 0; (l_2285 <= 1); l_2285 += 1)
                { /* block id: 1146 */
                    int8_t l_2309 = 0x44L;
                    int32_t ***l_2353[7] = {&p_2953->g_1352,(void*)0,&p_2953->g_1352,&p_2953->g_1352,(void*)0,&p_2953->g_1352,&p_2953->g_1352};
                    int i;
                    l_2309 ^= (safe_rshift_func_uint16_t_u_s((l_2306 , (++(**l_2199))), 13));
                    for (l_2217 = 0; (l_2217 <= 0); l_2217 += 1)
                    { /* block id: 1151 */
                        union U1 *****l_2310 = &l_2280;
                        int i, j, k;
                        (1 + 1);
                    }
                    for (p_2953->g_2159 = 7; (p_2953->g_2159 >= 0); p_2953->g_2159 -= 1)
                    { /* block id: 1162 */
                        uint8_t *l_2318 = &p_2953->g_862[1];
                        (*p_2953->g_466) = func_32(func_38(p_6, ((l_2306 || ((safe_rshift_func_uint8_t_u_u((18446744073709551608UL != ((void*)0 != l_2317)), 0)) >= ((+(0xA6L >= ((*l_2318) = p_7))) , ((safe_sub_func_int64_t_s_s((((((((((safe_lshift_func_int16_t_s_s((l_2323[2] , ((safe_lshift_func_int16_t_s_u((((++(**p_2953->g_1241)) , &p_2953->g_211) != (void*)0), FAKE_DIVERGE(p_2953->global_0_offset, get_global_id(0), 10))) ^ p_6)), 3)) ^ 0x63L) , (*p_2953->g_1513)) >= p_6) , l_2309) && (*l_2303)) == FAKE_DIVERGE(p_2953->group_2_offset, get_group_id(2), 10)) != (**p_2953->g_219)) < FAKE_DIVERGE(p_2953->local_0_offset, get_local_id(0), 10)), p_6)) >= l_2309)))) != p_6), p_2953), (*p_2953->g_398), (*l_2303), p_6, (*p_2953->g_1034), p_2953);
                        if ((**p_2953->g_787))
                            break;
                    }
                    for (p_2953->g_1130.f0 = 1; (p_2953->g_1130.f0 >= 0); p_2953->g_1130.f0 -= 1)
                    { /* block id: 1170 */
                        int32_t ***l_2350[4][7][1] = {{{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352}},{{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352}},{{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352}},{{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352},{&p_2953->g_1352}}};
                        int32_t ****l_2349 = &l_2350[1][1][0];
                        int32_t ***l_2352 = &p_2953->g_1743;
                        int32_t ****l_2351 = &l_2352;
                        int16_t *l_2356 = &p_2953->g_1953;
                        int i, j, k;
                        l_2357[8][0][0] ^= (safe_mod_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), 2)) , ((((*l_2303) = (safe_div_func_uint16_t_u_u(((**p_2953->g_2203)++), ((safe_mul_func_uint16_t_u_u((--l_2338), (l_2306 != (*p_2953->g_193)))) & (safe_div_func_uint32_t_u_u((safe_sub_func_int8_t_s_s(((*p_2953->g_220) > ((((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(0x99L, 0)), (((*l_2351) = ((*l_2349) = &p_2953->g_1351)) == l_2353[1]))) <= p_6) || ((safe_lshift_func_int16_t_s_s(((*l_2356) = ((*l_2351) != (((0xB0L >= (**p_2953->g_206)) >= p_6) , &p_2953->g_819))), (***p_2953->g_218))) ^ (*l_2303))) >= 4294967290UL)), GROUP_DIVERGE(0, 1))), p_6)))))) && 0x966CL) || (**p_2953->g_432))), l_2288[0][0]));
                    }
                }
                for (p_2953->g_194 = 1; (p_2953->g_194 >= 0); p_2953->g_194 -= 1)
                { /* block id: 1182 */
                    int16_t l_2382 = 8L;
                    int32_t l_2383 = 0x17BC053AL;
                    int32_t l_2384 = 4L;
                    int32_t l_2385 = 0x148DEBFDL;
                    int32_t l_2386 = 1L;
                    int32_t l_2387 = 0x7C181CA3L;
                    union U2 *l_2460 = (void*)0;
                    uint32_t *l_2469 = &p_2953->g_302;
                    union U0 *l_2497 = (void*)0;
                    union U0 l_2498 = {4UL};
                    int32_t **l_2557 = &l_2281;
                    int64_t ***l_2562 = &p_2953->g_1512;
                    int32_t l_2564 = 0x79FFE1F9L;
                    int32_t l_2571 = (-5L);
                    int32_t l_2572[8] = {0x02F90362L,0x02F90362L,0x02F90362L,0x02F90362L,0x02F90362L,0x02F90362L,0x02F90362L,0x02F90362L};
                    int i;
                    for (l_2219 = 1; (l_2219 >= 0); l_2219 -= 1)
                    { /* block id: 1185 */
                        return p_7;
                    }
                }
                for (p_2953->g_328 = 0; (p_2953->g_328 <= 1); p_2953->g_328 += 1)
                { /* block id: 1251 */
                    union U1 *l_2600[6][2] = {{(void*)0,&p_2953->g_1130},{(void*)0,&p_2953->g_1130},{(void*)0,&p_2953->g_1130},{(void*)0,&p_2953->g_1130},{(void*)0,&p_2953->g_1130},{(void*)0,&p_2953->g_1130}};
                    int32_t l_2602 = (-3L);
                    int32_t l_2603[7] = {0x6AC5966AL,0L,0x6AC5966AL,0x6AC5966AL,0L,0x6AC5966AL,0x6AC5966AL};
                    int8_t *l_2609 = &l_2447;
                    union U0 l_2616 = {1UL};
                    int i, j;
                    for (p_2953->g_8 = 0; (p_2953->g_8 <= 1); p_2953->g_8 += 1)
                    { /* block id: 1254 */
                        uint32_t l_2595 = 4294967290UL;
                        int16_t *l_2598 = &l_2416;
                        (*p_2953->g_398) = (safe_mul_func_int16_t_s_s(((***p_2953->g_1619) = l_2595), (((*p_2953->g_2124) == (*p_2953->g_2482)) <= (safe_lshift_func_int16_t_s_s(((*l_2598) &= (p_2953->g_1953 = 0x6243L)), 2)))));
                        if ((**p_2953->g_843))
                            continue;
                        l_2600[3][0] = l_2599;
                        (**p_2953->g_1351) = (l_2601[0] == FAKE_DIVERGE(p_2953->local_1_offset, get_local_id(1), 10));
                    }
                    l_2604--;
                    if ((l_2602 &= (safe_add_func_uint32_t_u_u((p_7 & ((*l_2303) < ((**l_2300) == l_2609))), (**p_2953->g_788)))))
                    { /* block id: 1265 */
                        (***p_2953->g_396) = ((**p_2953->g_466) = p_6);
                    }
                    else
                    { /* block id: 1268 */
                        union U0 *l_2617 = &p_2953->g_456;
                        uint64_t *l_2632 = &p_2953->g_1784;
                        uint64_t *l_2634 = &p_2953->g_1784;
                        uint64_t **l_2633 = &l_2634;
                        int i, j, k;
                        (*l_2303) = (safe_add_func_int64_t_s_s(((safe_div_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((*l_2302) = (((l_2288[0][0] > ((**p_2953->g_2203) >= 0x0A8CL)) && (l_2306 , (((*l_2617) = l_2616) , (l_2620[4] < (((((((safe_mul_func_int16_t_s_s(l_2603[0], (**p_2953->g_2203))) >= (l_2306 < p_7)) > p_2953->g_2623) , (-1L)) == l_2357[8][3][0]) <= p_7) < 0x65DE35F6L))))) >= p_6)), FAKE_DIVERGE(p_2953->global_1_offset, get_global_id(1), 10))), FAKE_DIVERGE(p_2953->group_1_offset, get_group_id(1), 10))) > l_2603[6]), 0x19B9B83C70EFC170L));
                        if (p_7)
                            continue;
                        l_2649[4] ^= (safe_add_func_int64_t_s_s(((((safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_2953->local_2_offset, get_local_id(2), 10), ((safe_mul_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s((l_2357[2][1][0] |= (*p_2953->g_193)), (&p_2953->g_1784 == ((*l_2633) = (l_2632 = &p_2953->g_1784))))) || ((((l_2357[4][1][0] = p_7) || (safe_div_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(((***l_2300) = ((safe_sub_func_int32_t_s_s((safe_sub_func_int8_t_s_s((safe_sub_func_int32_t_s_s((p_6 , (((+(safe_rshift_func_uint8_t_u_s((((((p_6 || (l_2220 = 0xDE748212673A4C71L)) , l_2616) , func_38(((safe_mul_func_int8_t_s_s(((((p_2953->g_76[l_2237][p_2953->g_328][(l_2237 + 1)] = &p_2953->g_66[0][0]) != &p_2953->g_66[0][0]) && (*p_2953->g_357)) >= 0xF24732FEL), p_6)) || l_2288[0][0]), l_2288[0][0], p_2953)) == &l_2602) <= p_6), 3))) | 0UL) | 0x53965A98L)), (*p_2953->g_433))), 0x9EL)), p_7)) | p_6)), l_2616.f0)), 4294967287UL))) && l_2603[3]) && (*p_2953->g_193))), 9L)) | (*l_2303)))) , 0x7DE090A932574229L) | l_2603[3]) < l_2602), p_6));
                    }
                }
                (*p_2953->g_398) = (**p_2953->g_1743);
            }
        }
    }
    for (p_2953->g_1092.f0 = 0; (p_2953->g_1092.f0 <= (-24)); p_2953->g_1092.f0--)
    { /* block id: 1289 */
        int64_t l_2652 = 0L;
        return l_2652;
    }
    return l_2290;
}


/* ------------------------------------------ */
/* 
 * reads : p_2953->g_843 p_2953->g_856 p_2953->g_110 p_2953->g_105 p_2953->g_106 p_2953->g_862 p_2953->g_215 p_2953->g_551 p_2953->g_1267 p_2953->g_109.f0 p_2953->g_244 p_2953->g_815 p_2953->g_219 p_2953->g_220 p_2953->g_164 p_2953->g_207 p_2953->g_1236 p_2953->g_1237 p_2953->g_908 p_2953->g_1291 p_2953->g_456.f0 p_2953->g_581 p_2953->g_1115.f0 p_2953->g_206 p_2953->g_194 p_2953->g_278 p_2953->g_17 p_2953->g_18 p_2953->g_1513 p_2953->g_1308 p_2953->g_1512 p_2953->g_399 p_2953->g_1034 p_2953->g_192 p_2953->g_967.f0 p_2953->g_66 p_2953->g_1351 p_2953->g_395.f0 p_2953->g_396 p_2953->g_397 p_2953->g_398 p_2953->g_1249 p_2953->g_211 p_2953->g_138 p_2953->g_277 p_2953->g_582 p_2953->g_501 p_2953->g_502 p_2953->g_357 p_2953->g_90 p_2953->g_218 p_2953->g_1619 p_2953->g_1644 p_2953->g_1555 p_2953->g_559 p_2953->g_1707 p_2953->g_328 p_2953->g_1432 p_2953->g_1731 p_2953->g_47 p_2953->g_428 p_2953->g_880 p_2953->g_245 p_2953->g_1843 p_2953->g_395 p_2953->g_193 p_2953->g_1953 p_2953->g_16 p_2953->g_1784 p_2953->g_1976 p_2953->g_598 p_2953->g_275 p_2953->g_1092.f0 p_2953->g_1787 p_2953->g_2124 p_2953->g_150 p_2953->g_151 p_2953->g_2159 p_2953->g_1743 p_2953->g_433 p_2953->g_2175
 * writes: p_2953->g_433 p_2953->g_856 p_2953->g_110 p_2953->g_395.f0 p_2953->g_862 p_2953->g_215 p_2953->g_1092.f3 p_2953->g_194 p_2953->g_456.f0 p_2953->g_581 p_2953->g_1308 p_2953->g_192 p_2953->g_598 p_2953->g_399 p_2953->g_1619 p_2953->g_582 p_2953->g_16 p_2953->g_138 p_2953->g_502 p_2953->g_47 p_2953->g_328 p_2953->g_164 p_2953->g_245 p_2953->g_1712 p_2953->g_1743 p_2953->g_397 p_2953->g_428 p_2953->g_1731 p_2953->g_551 p_2953->g_1952 p_2953->g_456.f1 p_2953->g_1092.f0 p_2953->g_76 p_2953->g_2175
 */
int16_t  func_13(uint32_t  p_14, uint32_t * p_15, struct S3 * p_2953)
{ /* block id: 7 */
    int16_t l_26 = 0x209AL;
    int16_t l_31 = 0x2219L;
    uint32_t *l_840 = &p_2953->g_18;
    uint16_t l_2170 = 0UL;
    int32_t l_2172 = 0L;
    int8_t l_2173[7][8][4] = {{{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)}},{{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)}},{{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)}},{{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)}},{{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)}},{{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)}},{{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)},{1L,0x1BL,0x38L,(-4L)}}};
    int32_t *l_2174 = &p_2953->g_2175;
    int i, j, k;
    (*l_2174) |= (l_2173[0][5][0] = ((((safe_sub_func_int64_t_s_s(p_14, (l_2172 = func_21(((((safe_sub_func_uint64_t_u_u(l_26, (((((func_27(&p_2953->g_18, l_31, func_32(func_38(l_31, p_14, p_2953), l_31, l_31, l_31, l_840, p_2953), p_2953) & 0xC2C449F4L) == GROUP_DIVERGE(1, 1)) == l_2170) != l_2170) > p_14))) != 5L) == 0x6FA541254BD4C1EDL) < l_31), (*p_2953->g_17), p_2953)))) || l_2172) || 0x17L) <= p_14));
    return (***p_2953->g_1619);
}


/* ------------------------------------------ */
/* 
 * reads : p_2953->g_1743 p_2953->g_110
 * writes: p_2953->g_433
 */
int64_t  func_21(uint32_t  p_22, uint32_t  p_23, struct S3 * p_2953)
{ /* block id: 1071 */
    int32_t *l_2171 = &p_2953->g_110;
    (*p_2953->g_1743) = l_2171;
    return (*l_2171);
}


/* ------------------------------------------ */
/* 
 * reads : p_2953->g_110 p_2953->g_105 p_2953->g_106 p_2953->g_862 p_2953->g_215 p_2953->g_551 p_2953->g_1267 p_2953->g_109.f0 p_2953->g_244 p_2953->g_815 p_2953->g_219 p_2953->g_220 p_2953->g_164 p_2953->g_207 p_2953->g_1236 p_2953->g_1237 p_2953->g_908 p_2953->g_1291 p_2953->g_456.f0 p_2953->g_581 p_2953->g_1115.f0 p_2953->g_206 p_2953->g_194 p_2953->g_278 p_2953->g_17 p_2953->g_18 p_2953->g_1513 p_2953->g_1308 p_2953->g_1512 p_2953->g_399 p_2953->g_1034 p_2953->g_192 p_2953->g_967.f0 p_2953->g_66 p_2953->g_843 p_2953->g_856 p_2953->g_1351 p_2953->g_395.f0 p_2953->g_396 p_2953->g_397 p_2953->g_398 p_2953->g_1249 p_2953->g_211 p_2953->g_138 p_2953->g_277 p_2953->g_582 p_2953->g_501 p_2953->g_502 p_2953->g_357 p_2953->g_90 p_2953->g_218 p_2953->g_1619 p_2953->g_1644 p_2953->g_1555 p_2953->g_559 p_2953->g_1707 p_2953->g_328 p_2953->g_1432 p_2953->g_1731 p_2953->g_47 p_2953->g_428 p_2953->g_880 p_2953->g_245 p_2953->g_1843 p_2953->g_395 p_2953->g_193 p_2953->g_1953 p_2953->g_16 p_2953->g_1784 p_2953->g_1976 p_2953->g_598 p_2953->g_275 p_2953->g_1092.f0 p_2953->g_1787 p_2953->g_2124 p_2953->g_150 p_2953->g_151 p_2953->g_2159 p_2953->g_1743 p_2953->g_433
 * writes: p_2953->g_110 p_2953->g_395.f0 p_2953->g_862 p_2953->g_215 p_2953->g_1092.f3 p_2953->g_194 p_2953->g_433 p_2953->g_456.f0 p_2953->g_581 p_2953->g_1308 p_2953->g_192 p_2953->g_598 p_2953->g_856 p_2953->g_399 p_2953->g_1619 p_2953->g_582 p_2953->g_16 p_2953->g_138 p_2953->g_502 p_2953->g_47 p_2953->g_328 p_2953->g_164 p_2953->g_245 p_2953->g_1712 p_2953->g_1743 p_2953->g_397 p_2953->g_428 p_2953->g_1731 p_2953->g_551 p_2953->g_1952 p_2953->g_456.f1 p_2953->g_1092.f0 p_2953->g_76
 */
uint32_t  func_27(uint32_t * p_28, int64_t  p_29, uint32_t * p_30, struct S3 * p_2953)
{ /* block id: 403 */
    union U0 l_870 = {0xA0BC3A28F3A0A45BL};
    int32_t l_914[7][1];
    int32_t l_915[7][5][7] = {{{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L}},{{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L}},{{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L}},{{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L}},{{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L}},{{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L}},{{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L},{1L,0L,1L,0L,0x03B2CA9AL,1L,0L}}};
    uint32_t l_946 = 4294967287UL;
    uint32_t l_947 = 0x77F3812FL;
    volatile union U1 *l_951 = &p_2953->g_559[1];
    int64_t **l_969[4][6][6] = {{{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]}},{{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]}},{{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]}},{{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]},{&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3],&p_2953->g_76[1][0][3]}}};
    int32_t l_1002 = (-10L);
    int32_t l_1042 = 0L;
    uint8_t l_1146 = 1UL;
    int8_t l_1169 = 0x1BL;
    union U2 **l_1170 = &p_2953->g_502;
    int32_t l_1186 = 3L;
    uint32_t l_1379[4][3] = {{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL}};
    union U0 **l_1385 = &p_2953->g_455[0][1][0];
    int8_t ***l_1392 = (void*)0;
    uint64_t *l_1399[8] = {&l_870.f0,&l_870.f0,&l_870.f0,&l_870.f0,&l_870.f0,&l_870.f0,&l_870.f0,&l_870.f0};
    int64_t *l_1438 = &p_2953->g_581;
    int64_t **l_1437 = &l_1438;
    int32_t l_1440 = 1L;
    union U2 l_1449 = {-5L};
    uint8_t l_1553 = 0x3EL;
    uint16_t l_1571 = 1UL;
    uint8_t l_1575[7][3][8] = {{{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL}},{{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL}},{{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL}},{{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL}},{{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL}},{{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL}},{{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL},{246UL,246UL,255UL,0x73L,0xAFL,1UL,247UL,0xFDL}}};
    int16_t ***l_1618 = &p_2953->g_219;
    uint8_t *l_1711[6][7][2] = {{{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]}},{{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]}},{{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]}},{{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]}},{{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]}},{{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]},{&p_2953->g_862[0],&p_2953->g_862[0]}}};
    uint8_t **l_1710 = &l_1711[2][2][1];
    uint64_t **l_1778[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t **l_1790 = &p_2953->g_1237;
    int16_t l_1883 = 0x3905L;
    int32_t l_1884 = (-1L);
    int16_t l_2005[7] = {0L,0L,0L,0L,0L,0L,0L};
    int32_t l_2010 = 1L;
    uint32_t ***l_2091[4][3] = {{&p_2953->g_1034,&p_2953->g_1034,&p_2953->g_1034},{&p_2953->g_1034,&p_2953->g_1034,&p_2953->g_1034},{&p_2953->g_1034,&p_2953->g_1034,&p_2953->g_1034},{&p_2953->g_1034,&p_2953->g_1034,&p_2953->g_1034}};
    uint32_t l_2093[6][5] = {{0x086522CEL,0xEBC26506L,0xEBC26506L,0x086522CEL,0x086522CEL},{0x086522CEL,0xEBC26506L,0xEBC26506L,0x086522CEL,0x086522CEL},{0x086522CEL,0xEBC26506L,0xEBC26506L,0x086522CEL,0x086522CEL},{0x086522CEL,0xEBC26506L,0xEBC26506L,0x086522CEL,0x086522CEL},{0x086522CEL,0xEBC26506L,0xEBC26506L,0x086522CEL,0x086522CEL},{0x086522CEL,0xEBC26506L,0xEBC26506L,0x086522CEL,0x086522CEL}};
    int8_t l_2103 = 0x3FL;
    int i, j, k;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
            l_914[i][j] = (-1L);
    }
    for (p_2953->g_110 = 0; (p_2953->g_110 <= 0); p_2953->g_110 += 1)
    { /* block id: 406 */
        uint64_t l_883 = 0x30D6153DC72AFF29L;
        uint32_t *l_907 = &p_2953->g_908;
        int32_t l_983 = (-1L);
        int32_t l_1044 = 5L;
        int32_t l_1045 = (-3L);
        uint32_t l_1059 = 1UL;
        union U2 l_1068[9][3] = {{{0x35160A01L},{1L},{0x328C283EL}},{{0x35160A01L},{1L},{0x328C283EL}},{{0x35160A01L},{1L},{0x328C283EL}},{{0x35160A01L},{1L},{0x328C283EL}},{{0x35160A01L},{1L},{0x328C283EL}},{{0x35160A01L},{1L},{0x328C283EL}},{{0x35160A01L},{1L},{0x328C283EL}},{{0x35160A01L},{1L},{0x328C283EL}},{{0x35160A01L},{1L},{0x328C283EL}}};
        uint32_t l_1089[2];
        uint64_t l_1171 = 1UL;
        uint8_t *l_1260 = (void*)0;
        uint8_t *l_1261 = &p_2953->g_862[1];
        uint8_t *l_1264 = &p_2953->g_215[3];
        int32_t *l_1288 = &p_2953->g_1092.f3;
        int32_t l_1322 = 0L;
        int8_t l_1362 = 5L;
        int32_t l_1371 = 1L;
        int32_t l_1372 = (-8L);
        int32_t l_1374 = 0x76C2D2F6L;
        int32_t l_1375[5] = {1L,1L,1L,1L,1L};
        int32_t l_1376 = 0L;
        int8_t l_1378[3];
        int8_t ***l_1394 = &p_2953->g_206;
        int16_t ***l_1410 = &p_2953->g_219;
        union U0 l_1454[3] = {{0x33395990BFDE210AL},{0x33395990BFDE210AL},{0x33395990BFDE210AL}};
        uint32_t l_1475 = 0xF9B755C9L;
        int8_t l_1499 = (-1L);
        int32_t *l_1504 = &l_1045;
        uint16_t *l_1586 = &p_2953->g_880;
        int i, j;
        for (i = 0; i < 2; i++)
            l_1089[i] = 0x2C2A323AL;
        for (i = 0; i < 3; i++)
            l_1378[i] = 0x4AL;
        for (p_2953->g_395.f0 = 4; (p_2953->g_395.f0 >= 0); p_2953->g_395.f0 -= 1)
        { /* block id: 409 */
            int32_t l_909 = 9L;
            union U0 *l_912 = &p_2953->g_456;
            union U2 l_927[5][5][2] = {{{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}}},{{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}}},{{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}}},{{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}}},{{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}},{{0L},{-8L}}}};
            int32_t l_948 = 0x059D9EBBL;
            uint64_t l_949 = 1UL;
            int32_t l_982[8] = {0x4EF975DDL,0x4EF975DDL,0x4EF975DDL,0x4EF975DDL,0x4EF975DDL,0x4EF975DDL,0x4EF975DDL,0x4EF975DDL};
            uint32_t l_984 = 9UL;
            int32_t *l_1018 = (void*)0;
            int8_t l_1039 = 0x5CL;
            union U1 *l_1106 = (void*)0;
            int32_t *l_1112 = &p_2953->g_90;
            int64_t l_1145 = 2L;
            union U2 *l_1242[8][10] = {{&l_1068[3][0],&l_1068[3][0],(void*)0,&p_2953->g_395,&l_1068[3][0],&l_1068[5][2],&l_927[2][0][1],&p_2953->g_395,&l_927[2][0][1],&l_1068[5][2]},{&l_1068[3][0],&l_1068[3][0],(void*)0,&p_2953->g_395,&l_1068[3][0],&l_1068[5][2],&l_927[2][0][1],&p_2953->g_395,&l_927[2][0][1],&l_1068[5][2]},{&l_1068[3][0],&l_1068[3][0],(void*)0,&p_2953->g_395,&l_1068[3][0],&l_1068[5][2],&l_927[2][0][1],&p_2953->g_395,&l_927[2][0][1],&l_1068[5][2]},{&l_1068[3][0],&l_1068[3][0],(void*)0,&p_2953->g_395,&l_1068[3][0],&l_1068[5][2],&l_927[2][0][1],&p_2953->g_395,&l_927[2][0][1],&l_1068[5][2]},{&l_1068[3][0],&l_1068[3][0],(void*)0,&p_2953->g_395,&l_1068[3][0],&l_1068[5][2],&l_927[2][0][1],&p_2953->g_395,&l_927[2][0][1],&l_1068[5][2]},{&l_1068[3][0],&l_1068[3][0],(void*)0,&p_2953->g_395,&l_1068[3][0],&l_1068[5][2],&l_927[2][0][1],&p_2953->g_395,&l_927[2][0][1],&l_1068[5][2]},{&l_1068[3][0],&l_1068[3][0],(void*)0,&p_2953->g_395,&l_1068[3][0],&l_1068[5][2],&l_927[2][0][1],&p_2953->g_395,&l_927[2][0][1],&l_1068[5][2]},{&l_1068[3][0],&l_1068[3][0],(void*)0,&p_2953->g_395,&l_1068[3][0],&l_1068[5][2],&l_927[2][0][1],&p_2953->g_395,&l_927[2][0][1],&l_1068[5][2]}};
            int64_t **l_1246 = (void*)0;
            int i, j, k;
            (1 + 1);
        }
        (*p_2953->g_1291) = func_38((safe_div_func_uint8_t_u_u((((((*p_2953->g_105) , (((*p_2953->g_207) = (GROUP_DIVERGE(1, 1) < ((safe_div_func_uint32_t_u_u((GROUP_DIVERGE(2, 1) != ((((*l_1264) |= ((*l_1261)++)) , (p_2953->g_551[(p_2953->g_110 + 1)] >= p_2953->g_551[p_2953->g_110])) < ((safe_div_func_int8_t_s_s(((void*)0 == p_2953->g_1267), GROUP_DIVERGE(2, 1))) >= ((p_2953->g_109[2].f0 < (safe_rshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(p_29, (p_2953->g_244 ^ (((safe_rshift_func_int16_t_s_u((((*l_1288) = ((safe_rshift_func_int16_t_s_s((((l_1044 = ((safe_sub_func_uint16_t_u_u(((safe_sub_func_int64_t_s_s((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((safe_mod_func_int16_t_s_s((p_29 <= p_29), 0x72F5L)) <= 6L), 0x22L)), 0UL)), l_1089[1])) , l_870.f0), p_2953->g_109[2].f0)) ^ p_2953->g_815)) > 0x19A0FB17L) > 0L), 1)) && l_1089[0])) , (**p_2953->g_219)), 3)) | p_29) == p_29)))), 5))) == l_1068[3][0].f0)))), p_2953->g_551[p_2953->g_110])) >= p_2953->g_551[0]))) & 0x6FL)) <= p_29) != 0xFB59L) , 251UL), p_29)), (**p_2953->g_1236), p_2953);
        for (p_2953->g_456.f0 = 0; (p_2953->g_456.f0 <= 0); p_2953->g_456.f0 += 1)
        { /* block id: 633 */
            uint64_t l_1302 = 1UL;
            int32_t l_1305[5][6] = {{0x606CE030L,0x606CE030L,7L,0x2AE18DB0L,0x0EF9522CL,0x2AE18DB0L},{0x606CE030L,0x606CE030L,7L,0x2AE18DB0L,0x0EF9522CL,0x2AE18DB0L},{0x606CE030L,0x606CE030L,7L,0x2AE18DB0L,0x0EF9522CL,0x2AE18DB0L},{0x606CE030L,0x606CE030L,7L,0x2AE18DB0L,0x0EF9522CL,0x2AE18DB0L},{0x606CE030L,0x606CE030L,7L,0x2AE18DB0L,0x0EF9522CL,0x2AE18DB0L}};
            uint8_t l_1344 = 0xDBL;
            int32_t **l_1349 = (void*)0;
            union U2 l_1365 = {0x5B7D3C7FL};
            int8_t *l_1556 = (void*)0;
            uint16_t *l_1563 = &p_2953->g_880;
            uint16_t *l_1564 = &p_2953->g_138[0];
            int16_t *l_1567 = (void*)0;
            int32_t *l_1568 = (void*)0;
            int i, j;
            (1 + 1);
        }
        for (p_2953->g_581 = 0; (p_2953->g_581 >= 0); p_2953->g_581 -= 1)
        { /* block id: 770 */
            int32_t *l_1572 = &l_1045;
            int32_t *l_1587 = (void*)0;
            int32_t *l_1588 = &l_1440;
            l_1572 = func_38(p_29, (l_1571 = ((*l_1504) == (safe_div_func_uint16_t_u_u(p_29, 0x1631L)))), p_2953);
            (*l_1588) &= (((safe_sub_func_int8_t_s_s((l_1575[3][0][2] && (safe_rshift_func_uint8_t_u_u(p_2953->g_1115[3].f0, 4))), (((5L | (**p_2953->g_206)) < (safe_add_func_uint64_t_u_u(p_2953->g_278, (safe_mod_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((((safe_sub_func_int16_t_s_s(p_29, (((&l_1571 == l_1586) == FAKE_DIVERGE(p_2953->local_2_offset, get_local_id(2), 10)) == p_29))) < (*p_2953->g_17)) < (*p_2953->g_1513)), (**p_2953->g_1512))), 1L))))) ^ (*l_1504)))) && (*l_1504)) < 0x43E1L);
        }
    }
    if (p_29)
    { /* block id: 776 */
        uint8_t l_1613 = 0xAEL;
        for (p_2953->g_1308 = 0; (p_2953->g_1308 >= 24); p_2953->g_1308++)
        { /* block id: 779 */
            union U0 l_1593[6][8] = {{{18446744073709551615UL},{0xB08AC948B17BA617L},{0xB08AC948B17BA617L},{18446744073709551615UL},{0x27E6812676196185L},{1UL},{0UL},{0x296629975963A431L}},{{18446744073709551615UL},{0xB08AC948B17BA617L},{0xB08AC948B17BA617L},{18446744073709551615UL},{0x27E6812676196185L},{1UL},{0UL},{0x296629975963A431L}},{{18446744073709551615UL},{0xB08AC948B17BA617L},{0xB08AC948B17BA617L},{18446744073709551615UL},{0x27E6812676196185L},{1UL},{0UL},{0x296629975963A431L}},{{18446744073709551615UL},{0xB08AC948B17BA617L},{0xB08AC948B17BA617L},{18446744073709551615UL},{0x27E6812676196185L},{1UL},{0UL},{0x296629975963A431L}},{{18446744073709551615UL},{0xB08AC948B17BA617L},{0xB08AC948B17BA617L},{18446744073709551615UL},{0x27E6812676196185L},{1UL},{0UL},{0x296629975963A431L}},{{18446744073709551615UL},{0xB08AC948B17BA617L},{0xB08AC948B17BA617L},{18446744073709551615UL},{0x27E6812676196185L},{1UL},{0UL},{0x296629975963A431L}}};
            uint8_t *l_1596 = &p_2953->g_862[1];
            int64_t *l_1607[8][1];
            int64_t l_1612 = (-3L);
            int32_t *l_1614 = &l_915[3][4][6];
            int i, j;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1607[i][j] = &p_2953->g_598[6][2][0];
            }
            (*p_2953->g_1351) = (p_2953->g_399 , func_32(((*p_2953->g_1034) = (p_29 , (*p_2953->g_1034))), ((*l_1614) = (safe_add_func_int16_t_s_s((l_1593[1][1] , (safe_mod_func_uint8_t_u_u(((*l_1596)--), p_2953->g_581))), ((p_29 , (safe_sub_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s((safe_div_func_uint8_t_u_u(((((safe_sub_func_int64_t_s_s((p_2953->g_598[3][7][2] = (*p_2953->g_1513)), (l_1002 &= (((safe_mul_func_uint8_t_u_u((((l_1440 & (((l_1593[4][4] , &p_30) == &p_2953->g_17) > (*p_2953->g_207))) ^ l_1593[1][1].f0) && l_1612), p_29)) != p_2953->g_967.f0) && 0x0CL)))) , p_2953->g_815) ^ p_29) ^ (**p_2953->g_206)), l_1613)), p_29)), p_2953->g_66[0][7]))) & 0x47L)))), l_1613, l_1613, &l_946, p_2953));
        }
    }
    else
    { /* block id: 787 */
        int16_t ***l_1617 = &p_2953->g_219;
        int32_t l_1626 = (-10L);
        int64_t l_1666[2];
        int32_t l_1667 = 8L;
        int32_t l_1668 = (-6L);
        int32_t l_1670 = 0x33018B11L;
        int32_t l_1671 = 0L;
        int32_t l_1672 = (-6L);
        uint16_t l_1706 = 0UL;
        uint32_t *l_1738 = &p_2953->g_428[6][2];
        int32_t *l_1739 = &l_1626;
        int32_t **l_1742 = &p_2953->g_433;
        uint8_t l_1755[7] = {0x60L,0x60L,0x60L,0x60L,0x60L,0x60L,0x60L};
        int32_t l_1810 = 0x1521F166L;
        uint32_t *l_1814 = (void*)0;
        uint32_t *l_1815[7][6] = {{(void*)0,(void*)0,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302},{(void*)0,(void*)0,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302},{(void*)0,(void*)0,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302},{(void*)0,(void*)0,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302},{(void*)0,(void*)0,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302},{(void*)0,(void*)0,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302},{(void*)0,(void*)0,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302,&p_2953->g_302}};
        uint16_t *l_1826 = (void*)0;
        uint16_t *l_1827 = &p_2953->g_138[0];
        union U0 l_1846 = {18446744073709551609UL};
        int32_t l_1874 = 0x5B3C3CF8L;
        int32_t l_1876 = 3L;
        int32_t l_1879 = 0x28F693B7L;
        int32_t l_1882[3][6] = {{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L}};
        union U2 **l_1891 = &p_2953->g_502;
        union U2 **l_1894 = (void*)0;
        int8_t l_1911 = 0x79L;
        union U1 *l_1936 = &p_2953->g_1130;
        union U1 **l_1935 = &l_1936;
        union U1 **l_1939 = &l_1936;
        int8_t l_2006 = 0x5BL;
        int8_t l_2014 = (-1L);
        uint32_t l_2028 = 5UL;
        uint32_t l_2055 = 4294967294UL;
        uint64_t *l_2127 = &p_2953->g_1784;
        uint64_t *l_2132[7][8] = {{&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784},{&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784},{&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784},{&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784},{&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784},{&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784},{&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784,&p_2953->g_1784}};
        int64_t ***l_2162 = &p_2953->g_1512;
        int i, j;
        for (i = 0; i < 2; i++)
            l_1666[i] = (-4L);
        for (p_2953->g_395.f0 = 13; (p_2953->g_395.f0 == (-23)); p_2953->g_395.f0 = safe_sub_func_uint32_t_u_u(p_2953->g_395.f0, 1))
        { /* block id: 790 */
            (***p_2953->g_396) = p_29;
        }
        if ((((((l_1617 == (p_2953->g_1619 = l_1618)) , (FAKE_DIVERGE(p_2953->local_0_offset, get_local_id(0), 10) ^ (((*p_2953->g_17) < ((*p_30) = (!(safe_sub_func_int32_t_s_s((l_1440 < 0x90D689989103D212L), ((((p_29 <= (safe_lshift_func_int8_t_s_u((l_1626 ^= (***p_2953->g_1249)), 7))) <= (***p_2953->g_1249)) < ((-3L) || 0UL)) > 0x37AB4D4C38243382L)))))) == 1UL))) | 0x6CL) , p_29) != GROUP_DIVERGE(2, 1)))
        { /* block id: 796 */
            int64_t l_1639 = 2L;
            int32_t l_1669 = (-6L);
            int32_t l_1673 = 0x4B120126L;
            int32_t l_1677 = 0x10F68FA8L;
            int32_t l_1678 = 0x2B2AF75AL;
            int32_t l_1679 = 2L;
            int32_t l_1680 = 1L;
            for (l_1169 = 5; (l_1169 >= 0); l_1169 -= 1)
            { /* block id: 799 */
                union U2 *l_1652 = &p_2953->g_395;
                int32_t l_1654[3][2];
                int32_t *l_1655 = &l_1654[1][1];
                int32_t *l_1656 = &l_1654[1][0];
                int32_t *l_1657 = &l_1042;
                int32_t *l_1658 = &l_1440;
                int32_t *l_1659 = &l_1626;
                int32_t *l_1660 = &l_1002;
                int32_t *l_1661 = &l_1626;
                int32_t *l_1662 = &l_1002;
                int32_t *l_1663 = &l_915[3][4][6];
                int32_t *l_1664[8] = {&p_2953->g_110,&l_1002,&p_2953->g_110,&p_2953->g_110,&l_1002,&p_2953->g_110,&p_2953->g_110,&l_1002};
                int16_t l_1665 = 0x58FEL;
                uint32_t l_1674[4][7] = {{0xA391E523L,0xA391E523L,0UL,0UL,0xEF96EE31L,9UL,0xF80B6700L},{0xA391E523L,0xA391E523L,0UL,0UL,0xEF96EE31L,9UL,0xF80B6700L},{0xA391E523L,0xA391E523L,0UL,0UL,0xEF96EE31L,9UL,0xF80B6700L},{0xA391E523L,0xA391E523L,0UL,0UL,0xEF96EE31L,9UL,0xF80B6700L}};
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_1654[i][j] = 0x6F98EBE7L;
                }
                for (p_2953->g_16 = 0; (p_2953->g_16 <= 5); p_2953->g_16 += 1)
                { /* block id: 802 */
                    uint16_t *l_1632 = &p_2953->g_138[0];
                    int i;
                    if (((safe_sub_func_uint16_t_u_u((safe_unary_minus_func_uint32_t_u(0x5514A91AL)), (0x0CF3L && (safe_sub_func_uint16_t_u_u(((*l_1632) &= ((void*)0 != l_1618)), ((((safe_div_func_uint32_t_u_u((p_2953->g_277[l_1169] & (safe_mod_func_uint8_t_u_u(250UL, ((safe_div_func_uint32_t_u_u(((l_1639 , p_29) >= p_29), 0x0221D3EAL)) , FAKE_DIVERGE(p_2953->local_0_offset, get_local_id(0), 10))))), (*p_30))) || (*p_28)) != p_29) == l_1626)))))) != l_1626))
                    { /* block id: 804 */
                        return (*p_2953->g_17);
                    }
                    else
                    { /* block id: 806 */
                        if (l_1639)
                            break;
                    }
                    (*p_2953->g_501) = (*p_2953->g_501);
                    for (p_2953->g_47 = 0; (p_2953->g_47 <= 7); p_2953->g_47 += 1)
                    { /* block id: 812 */
                        return l_1639;
                    }
                    for (p_2953->g_328 = 2; (p_2953->g_328 >= 0); p_2953->g_328 -= 1)
                    { /* block id: 817 */
                        uint32_t l_1651 = 0x39D815E4L;
                        int32_t *l_1653 = (void*)0;
                        l_915[5][2][2] = (*p_2953->g_357);
                        (*p_2953->g_1351) = func_38((safe_sub_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_s((((void*)0 != p_2953->g_1267) & ((***p_2953->g_1619) = (***p_2953->g_218))), 8)) != p_2953->g_1644), (safe_mod_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u((((safe_rshift_func_int16_t_s_u((((*l_1170) = (l_1651 , l_1652)) == (l_1626 , l_1652)), (p_2953->g_395.f0 ^ 0xE5108DE62F19AF64L))) >= p_2953->g_1115[3].f0) & 18446744073709551609UL), p_2953->g_1555[5][1][3])), 9UL)))), (**p_2953->g_1236), p_2953);
                        if (p_29)
                            break;
                        (*p_2953->g_1351) = l_1653;
                    }
                }
                l_1674[1][0]++;
                for (l_1673 = 0; (l_1673 <= 7); l_1673 += 1)
                { /* block id: 829 */
                    uint64_t l_1681 = 0x4C64E69E096D6864L;
                    uint16_t *l_1690[1][8];
                    int16_t l_1691 = 0x73D9L;
                    uint8_t **l_1709 = (void*)0;
                    uint8_t ***l_1708[5][5] = {{(void*)0,&l_1709,(void*)0,(void*)0,&l_1709},{(void*)0,&l_1709,(void*)0,(void*)0,&l_1709},{(void*)0,&l_1709,(void*)0,(void*)0,&l_1709},{(void*)0,&l_1709,(void*)0,(void*)0,&l_1709},{(void*)0,&l_1709,(void*)0,(void*)0,&l_1709}};
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 8; j++)
                            l_1690[i][j] = &p_2953->g_138[0];
                    }
                    --l_1681;
                    p_2953->g_1712 = (l_1710 = (((((p_2953->g_245[l_1169] = (((safe_mod_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((((safe_mod_func_uint16_t_u_u((l_1691 = p_2953->g_277[l_1169]), (safe_mul_func_uint8_t_u_u(1UL, 0x19L)))) <= ((((*l_951) , p_2953->g_277[l_1169]) & 0x12EA5A90L) < p_2953->g_164[2])) , (safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s((((safe_add_func_uint32_t_u_u((*p_2953->g_17), ((safe_mul_func_int8_t_s_s(((((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_2953->global_0_offset, get_global_id(0), 10), (safe_div_func_int16_t_s_s(0x17BAL, p_2953->g_551[0])))) < GROUP_DIVERGE(2, 1)) >= FAKE_DIVERGE(p_2953->local_1_offset, get_local_id(1), 10)) & (*l_1657)), (***p_2953->g_1249))) > l_1706))) , (void*)0) != &p_2953->g_1241), 7)), p_2953->g_1707[1][0][3]))), (*p_2953->g_220))) , 65534UL), l_1672)) || 6L) == 0x7E36076EL)) , p_29) , (*p_2953->g_220)) != l_1666[1]) , (void*)0));
                }
            }
            (***p_2953->g_396) = (*p_2953->g_357);
        }
        else
        { /* block id: 838 */
            uint32_t ***l_1723 = &p_2953->g_1236;
            int32_t l_1732[7][2][10] = {{{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L},{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L}},{{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L},{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L}},{{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L},{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L}},{{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L},{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L}},{{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L},{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L}},{{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L},{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L}},{{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L},{6L,8L,0x3418A21FL,(-3L),1L,6L,(-3L),0x50D1D6DCL,(-3L),6L}}};
            int32_t *l_1754 = (void*)0;
            int32_t **l_1753 = &l_1754;
            int32_t l_1757 = 0x31F24271L;
            uint16_t *l_1761 = &p_2953->g_138[0];
            uint16_t **l_1760 = &l_1761;
            uint64_t *l_1763 = &p_2953->g_815;
            union U0 **l_1765 = &p_2953->g_455[1][2][0];
            int8_t l_1789[4];
            int32_t l_1808 = (-1L);
            uint8_t l_1809 = 0UL;
            uint64_t l_1812[9];
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_1789[i] = 0x0EL;
            for (i = 0; i < 9; i++)
                l_1812[i] = 0x3076A4F77B3F6DEBL;
            (***p_2953->g_396) = ((p_28 != (void*)0) < p_2953->g_582);
            for (p_2953->g_395.f0 = 0; (p_2953->g_395.f0 >= (-20)); p_2953->g_395.f0 = safe_sub_func_uint32_t_u_u(p_2953->g_395.f0, 3))
            { /* block id: 842 */
                int32_t l_1730 = (-5L);
                for (p_2953->g_328 = 0; (p_2953->g_328 > (-12)); --p_2953->g_328)
                { /* block id: 845 */
                    union U0 l_1722 = {0x612CCBF7AB7B6FCDL};
                    uint16_t *l_1733[10][9][1] = {{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}},{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}},{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}},{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}},{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}},{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}},{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}},{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}},{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}},{{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571},{&l_1571}}};
                    int32_t **l_1744 = &l_1739;
                    int64_t l_1749 = (-1L);
                    int i, j, k;
                    if ((((p_29 <= (((((***l_1618) = p_29) ^ (l_1671 &= (safe_rshift_func_uint16_t_u_s(p_29, 5)))) | (safe_lshift_func_uint16_t_u_u((l_1670 = ((((((l_1722 , &p_2953->g_1236) != l_1723) > (((!(0xEEL && ((safe_sub_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((l_1667 ^ ((safe_sub_func_uint16_t_u_u((GROUP_DIVERGE(2, 1) || (*p_2953->g_207)), p_29)) <= l_1730)) >= p_29), p_29)), p_29)) & p_2953->g_1432))) || 4L) , l_1449.f0)) | p_2953->g_1731) , 1UL) , l_1732[1][0][4])), l_1730))) != p_29)) <= (-7L)) , p_29))
                    { /* block id: 849 */
                        l_1739 = func_32((*p_2953->g_1034), p_29, p_2953->g_47, ((((18446744073709551615UL > ((safe_add_func_uint64_t_u_u((p_2953->g_456.f0 = (p_29 <= ((p_2953->g_138[1] = (safe_rshift_func_uint16_t_u_u(p_2953->g_138[1], 8))) || ((***p_2953->g_1619) ^= l_1730)))), l_1666[1])) & (*p_28))) ^ (-4L)) ^ 0x1CC18DA7L) == l_1440), l_1738, p_2953);
                    }
                    else
                    { /* block id: 854 */
                        uint16_t l_1750 = 1UL;
                        l_1750 = (l_1722 , ((safe_mul_func_int8_t_s_s(0x67L, ((0L != ((**p_2953->g_211) = (p_29 & p_2953->g_456.f0))) >= ((p_2953->g_1743 = l_1742) != l_1744)))) >= (safe_add_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((p_29 >= l_1749), p_29)), p_29))));
                    }
                    for (l_1670 = 0; (l_1670 <= 18); ++l_1670)
                    { /* block id: 861 */
                        (*p_2953->g_396) = (*p_2953->g_396);
                        return (*p_28);
                    }
                    (*p_2953->g_1351) = p_30;
                }
                return (*p_28);
            }
            if (((l_1440 , ((0x35CFB3B9L | (*p_30)) , ((((*l_1738) |= (((&p_2953->g_101 == ((*l_1753) = p_2953->g_192[0][1])) || ((0x426DL < p_29) , 5L)) ^ ((*p_2953->g_17) == l_1755[5]))) , p_29) || (*p_30)))) , 0x262203FEL))
            { /* block id: 871 */
                uint8_t **l_1756 = (void*)0;
                l_1757 = ((!(&p_2953->g_1713[1] == (l_1379[1][1] , l_1756))) >= (((***p_2953->g_1619) = p_29) && ((void*)0 == p_2953->g_1267)));
            }
            else
            { /* block id: 874 */
                uint64_t **l_1762 = &l_1399[0];
                uint64_t **l_1764 = &l_1763;
                int32_t l_1776 = (-1L);
                union U0 l_1792[4] = {{0UL},{0UL},{0UL},{0UL}};
                int i;
                (***p_2953->g_396) = ((safe_lshift_func_int8_t_s_u((((((void*)0 != l_1760) | p_2953->g_880) < (((*l_1762) = &p_2953->g_551[1]) == ((*l_1764) = l_1763))) & (((&p_2953->g_455[0][2][0] != l_1765) != p_29) == p_29)), p_29)) || l_1732[0][1][4]);
                for (p_2953->g_1308 = 17; (p_2953->g_1308 < 12); --p_2953->g_1308)
                { /* block id: 880 */
                    union U2 **l_1774[4];
                    uint64_t **l_1777 = &l_1399[2];
                    int32_t l_1788 = (-1L);
                    int i;
                    for (i = 0; i < 4; i++)
                        l_1774[i] = &p_2953->g_502;
                    for (p_2953->g_16 = 0; (p_2953->g_16 == (-29)); --p_2953->g_16)
                    { /* block id: 883 */
                        (*p_2953->g_501) = (*p_2953->g_501);
                    }
                    (*l_1742) = func_38((0xFB76L < ((***p_2953->g_1619) = (-8L))), (*p_2953->g_1237), p_2953);
                }
            }
        }
        if ((((*p_2953->g_105) , (++p_2953->g_245[2])) , (FAKE_DIVERGE(p_2953->local_1_offset, get_local_id(1), 10) != ((((safe_add_func_int8_t_s_s(0x5CL, (((*l_1739) = (((l_1440 = ((((safe_sub_func_int8_t_s_s((((safe_add_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((++(*l_1827)) || ((*l_1739) & (safe_rshift_func_int8_t_s_u(5L, 4)))), (safe_unary_minus_func_uint64_t_u(0xE9291441A00B8613L)))), ((((**p_2953->g_1512) > (&p_2953->g_17 == &p_2953->g_192[0][3])) >= FAKE_DIVERGE(p_2953->global_1_offset, get_global_id(1), 10)) >= p_29))) , (-1L)) >= (*l_1739)), p_29)) || p_29) && (*p_2953->g_1513)) > 0x426D6FC3L)) && p_29) <= (*p_28))) || p_29))) , (void*)0) == (*p_2953->g_206)) <= (*p_2953->g_207)))))
        { /* block id: 913 */
            union U0 l_1844 = {0x59F78617DD16CCACL};
            int32_t l_1860 = 0x49DBB111L;
            int32_t l_1861 = 0L;
            int32_t l_1862 = (-1L);
            int32_t l_1868 = (-1L);
            int32_t l_1869 = 0x644DADE8L;
            int32_t l_1870 = 7L;
            int32_t l_1871 = 1L;
            int32_t l_1872 = 3L;
            int32_t l_1873 = 9L;
            int32_t l_1875 = 0x3560A204L;
            int32_t l_1877 = (-2L);
            int32_t l_1878 = 0x69D4C731L;
            int32_t l_1880 = (-1L);
            int32_t l_1881[7] = {0x5CA14CD6L,0x5CA14CD6L,0x5CA14CD6L,0x5CA14CD6L,0x5CA14CD6L,0x5CA14CD6L,0x5CA14CD6L};
            uint32_t l_1885 = 6UL;
            union U2 **l_1892 = &p_2953->g_502;
            int16_t l_2054[2];
            int i;
            for (i = 0; i < 2; i++)
                l_2054[i] = 0x50DAL;
            for (l_1449.f0 = 0; (l_1449.f0 <= 2); l_1449.f0 += 1)
            { /* block id: 916 */
                uint16_t *l_1859[1];
                int32_t l_1863 = 7L;
                int32_t *l_1864 = (void*)0;
                int32_t *l_1865 = &l_1861;
                int32_t *l_1866 = &l_915[3][4][6];
                int32_t *l_1867[5][2][10] = {{{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671},{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671}},{{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671},{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671}},{{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671},{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671}},{{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671},{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671}},{{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671},{&l_1671,&l_1671,&l_1440,&l_1671,&l_1671,&l_1671,&l_1671,&l_1440,&l_1671,&l_1671}}};
                union U2 **l_1893 = &p_2953->g_502;
                int32_t l_1895 = 0x336CEDDAL;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_1859[i] = &l_1706;
                for (l_1553 = 0; (l_1553 <= 0); l_1553 += 1)
                { /* block id: 919 */
                    union U0 *l_1845 = &l_1844;
                    int i, j;
                    (*l_1739) ^= (((*l_1438) = p_2953->g_66[l_1553][l_1449.f0]) < ((safe_lshift_func_int8_t_s_s(0x18L, (p_29 | (l_1379[2][1] | (p_29 != ((safe_rshift_func_uint16_t_u_s((((*l_1827) = (safe_sub_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s((p_2953->g_1843 , 65531UL), p_29)), (((*l_1845) = l_1844) , p_29)))) || p_2953->g_66[l_1553][l_1449.f0]), 2)) && (*p_2953->g_1513))))))) , p_29));
                }
                if (p_29)
                { /* block id: 925 */
                    for (l_1668 = 0; (l_1668 <= 2); l_1668 += 1)
                    { /* block id: 928 */
                        return (*p_30);
                    }
                    for (l_1810 = 0; (l_1810 <= 0); l_1810 += 1)
                    { /* block id: 933 */
                        int i;
                        (*p_2953->g_398) &= p_2953->g_277[(l_1810 + 4)];
                    }
                }
                else
                { /* block id: 936 */
                    (*p_2953->g_398) = p_29;
                }
            }
            for (l_1871 = 2; (l_1871 >= (-12)); l_1871 = safe_sub_func_uint64_t_u_u(l_1871, 9))
            { /* block id: 961 */
                int8_t l_1910 = 0x10L;
                uint32_t l_1914 = 1UL;
                for (p_2953->g_1731 = (-23); (p_2953->g_1731 < (-12)); ++p_2953->g_1731)
                { /* block id: 964 */
                    int32_t *l_1912 = &l_1872;
                    int32_t *l_1913[10][6] = {{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0},{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0},{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0},{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0},{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0},{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0},{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0},{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0},{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0},{&l_1870,&l_1870,&p_2953->g_110,&l_1882[2][2],&l_1881[6],(void*)0}};
                    union U1 **l_1937 = &l_1936;
                    union U1 ***l_1938[1][7];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 7; j++)
                            l_1938[i][j] = &l_1937;
                    }
                    l_1910 = ((p_2953->g_551[1]--) < p_29);
                    for (l_1879 = 0; (l_1879 <= 5); l_1879 += 1)
                    { /* block id: 969 */
                        int i;
                        if (p_2953->g_245[l_1879])
                            break;
                    }
                    --l_1914;
                    (*p_2953->g_398) ^= (safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s((((safe_sub_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(p_29, ((*p_2953->g_193) = (p_29 & (l_1914 | (safe_rshift_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u(p_29, (safe_add_func_int32_t_s_s((safe_div_func_uint32_t_u_u(((((((**l_1892) , (safe_add_func_uint64_t_u_u(((l_1935 == (l_1939 = l_1937)) & 3L), (safe_mod_func_uint64_t_u_u(p_29, p_29))))) >= 0x6F25AD8B3B4CC261L) >= (*l_1739)) , l_1880) , FAKE_DIVERGE(p_2953->global_1_offset, get_global_id(1), 10)), p_29)), 0xAAD4D87CL)))) & FAKE_DIVERGE(p_2953->local_2_offset, get_local_id(2), 10)), 4))))))), 2L)) , p_29) , (-2L)), 0x2D3DL)), 0x9C8BL));
                }
            }
            for (p_2953->g_1731 = 2; (p_2953->g_1731 <= 6); p_2953->g_1731 += 1)
            { /* block id: 980 */
                union U2 *l_1950 = &l_1449;
                union U2 **l_1951[4][3];
                int64_t *l_1959 = &p_2953->g_16;
                int32_t l_1970 = 0x69923EC1L;
                uint64_t **l_1975 = &l_1399[2];
                int64_t l_2008[3];
                int32_t l_2009 = 0x5416DD70L;
                int32_t l_2011 = 0x548762EDL;
                int32_t l_2012 = 0x3556FD85L;
                int32_t l_2013 = 0L;
                int32_t l_2015 = 0L;
                int32_t l_2016 = 0x527AE381L;
                int32_t l_2017[1];
                uint32_t l_2018[9];
                int i, j;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_1951[i][j] = &l_1950;
                }
                for (i = 0; i < 3; i++)
                    l_2008[i] = 0x5E1E2EF9C45FBFB9L;
                for (i = 0; i < 1; i++)
                    l_2017[i] = 0x05192C4AL;
                for (i = 0; i < 9; i++)
                    l_2018[i] = 6UL;
                if ((safe_add_func_uint8_t_u_u(((((safe_div_func_int16_t_s_s((l_1884 = (((*l_1959) |= ((safe_add_func_uint8_t_u_u((((*p_2953->g_17) == (((*p_2953->g_1513) = ((*l_1438) |= (safe_add_func_int32_t_s_s(((l_1846 , ((*l_1892) != (p_2953->g_1952 = l_1950))) , p_2953->g_1953), (((safe_sub_func_uint8_t_u_u(((((***p_2953->g_218) || ((safe_add_func_int16_t_s_s((p_29 , (***p_2953->g_218)), (safe_unary_minus_func_int8_t_s((p_29 , 0x5DL))))) < (*p_28))) <= (-5L)) & p_29), 0x09L)) & 0x1F3D14E576ABB3E6L) ^ 6UL))))) == 0x153C3AE4ACFCA972L)) , p_29), (**p_2953->g_211))) == p_29)) > (*l_1739))), p_2953->g_1784)) , GROUP_DIVERGE(1, 1)) == 0xF1203DB6L) , p_29), p_29)))
                { /* block id: 986 */
                    int8_t l_1978 = 0x7DL;
                    uint32_t **l_1987 = &p_2953->g_17;
                    int8_t **l_1990 = &p_2953->g_193;
                    int32_t l_2007[7] = {0x60A7E5BCL,0x48BFC308L,0x60A7E5BCL,0x60A7E5BCL,0x48BFC308L,0x60A7E5BCL,0x60A7E5BCL};
                    union U2 *l_2023 = (void*)0;
                    int i;
                    for (l_870.f1 = 0; (l_870.f1 <= 6); l_870.f1 += 1)
                    { /* block id: 989 */
                        int32_t l_1979[4] = {(-1L),(-1L),(-1L),(-1L)};
                        int i;
                        l_1979[3] = ((!(((l_1978 ^= ((((*p_2953->g_193) = 0x75L) || ((p_2953->g_559[l_870.f1] , ((safe_add_func_uint8_t_u_u((!(safe_rshift_func_int16_t_s_u(((***l_1617) = p_29), 8))), (p_29 || (safe_mul_func_uint16_t_u_u(l_915[5][0][4], ((*l_1827) ^= ((safe_mod_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(l_1970, (safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((((((l_1975 == p_2953->g_1976) , 8L) & (*p_28)) , (void*)0) != l_1385), l_1881[2])), p_29)))), 0xCBL)) , p_29))))))) == FAKE_DIVERGE(p_2953->global_1_offset, get_global_id(1), 10))) && p_29)) > 0xBCF40E15L)) > (*l_1739)) == 0xB1L)) >= 1L);
                    }
                    for (p_29 = 5; (p_29 >= 0); p_29 -= 1)
                    { /* block id: 998 */
                        uint32_t ***l_1986[1][4] = {{&p_2953->g_1034,&p_2953->g_1034,&p_2953->g_1034,&p_2953->g_1034}};
                        int i, j;
                        (***p_2953->g_396) = ((((safe_lshift_func_uint8_t_u_s(0x53L, ((**p_2953->g_211) = (*l_1739)))) <= ((safe_add_func_uint8_t_u_u(((&p_2953->g_192[0][4] != (l_1987 = &l_1738)) < (-2L)), (l_1970 = 0x05L))) >= (**p_2953->g_1512))) != ((safe_mul_func_int8_t_s_s((p_2953->g_598[7][0][2] , 0x0BL), FAKE_DIVERGE(p_2953->local_0_offset, get_local_id(0), 10))) <= p_29)) <= (*p_30));
                        l_1990 = l_1990;
                    }
                    (*p_2953->g_398) = (safe_add_func_uint16_t_u_u((*l_1739), ((safe_add_func_uint16_t_u_u(l_1970, (p_29 & 0L))) > ((0x4C1FEDC4L < ((p_29 >= (safe_div_func_uint64_t_u_u(0x83ECD7A14AA7FB4EL, ((*l_1438) = ((p_29 , ((((safe_add_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((0x4E49L >= p_29), p_29)), p_29)) != (*l_1739)) , p_29) == p_29)) , (*p_2953->g_1513)))))) >= (*l_1739))) , 252UL))));
                    for (l_1671 = 0; (l_1671 <= 1); l_1671 += 1)
                    { /* block id: 1009 */
                        int32_t l_2001 = (-1L);
                        int32_t l_2002 = 0L;
                        int32_t *l_2003 = (void*)0;
                        int32_t *l_2004[6][8][3] = {{{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670}},{{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670}},{{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670}},{{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670}},{{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670}},{{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670},{(void*)0,&l_1810,&l_1670}}};
                        int i, j, k;
                        l_2018[0]--;
                        (*l_1742) = func_38((safe_rshift_func_int8_t_s_u((GROUP_DIVERGE(0, 1) != FAKE_DIVERGE(p_2953->group_1_offset, get_group_id(1), 10)), 7)), ((((p_2953->g_275[(l_1671 + 1)][(l_1671 + 2)] , &p_2953->g_76[0][2][0]) == &p_2953->g_76[1][0][3]) > ((void*)0 == l_2023)) , (((p_29 && (safe_mod_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u(0x804EL, ((((p_29 == l_1440) , p_29) < l_2028) <= 18446744073709551609UL))) > 0x4355L), l_2007[3]))) <= (***p_2953->g_1249)) & l_870.f1)), p_2953);
                        (*p_2953->g_1351) = (void*)0;
                        (*l_1892) = (void*)0;
                    }
                }
                else
                { /* block id: 1015 */
                    uint32_t l_2037 = 0x3EAC9B55L;
                    int32_t *l_2046 = &l_1672;
                    int32_t *l_2047 = (void*)0;
                    int32_t *l_2048 = (void*)0;
                    int32_t *l_2049 = (void*)0;
                    int32_t *l_2050 = (void*)0;
                    int32_t *l_2051 = &l_1002;
                    int32_t *l_2052 = (void*)0;
                    int32_t *l_2053[7] = {&l_1668,&l_1668,&l_1668,&l_1668,&l_1668,&l_1668,&l_1668};
                    int i;
                    (*p_2953->g_1351) = p_28;
                    for (p_2953->g_456.f1 = 0; (p_2953->g_456.f1 <= 4); p_2953->g_456.f1 += 1)
                    { /* block id: 1019 */
                        int32_t l_2044 = 0x08F23A3FL;
                        int32_t l_2045 = 0L;
                        int i, j;
                        (1 + 1);
                    }
                    l_2055++;
                }
                if (p_29)
                    continue;
                if ((*l_1739))
                    break;
                (*l_1742) = &l_1878;
            }
        }
        else
        { /* block id: 1033 */
            uint32_t l_2060[9] = {9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL};
            int32_t l_2095 = 0x10A6C384L;
            int32_t l_2102 = 0x63BD6451L;
            int32_t l_2106 = 0x665CD637L;
            int32_t l_2109 = 0x5949C6FAL;
            int16_t l_2110 = 0x5774L;
            int32_t l_2111 = (-1L);
            int i;
            for (p_2953->g_1092.f0 = 0; (p_2953->g_1092.f0 >= 9); p_2953->g_1092.f0++)
            { /* block id: 1036 */
                uint8_t l_2061 = 255UL;
                int32_t l_2086 = 1L;
                int32_t l_2104 = 0x1405FE5EL;
                int32_t l_2105 = 0x0ACD933CL;
                int32_t l_2107 = 7L;
                int32_t l_2108 = (-4L);
                uint32_t *l_2121 = (void*)0;
                if ((l_915[3][4][6] = ((***p_2953->g_1249) == (~p_29))))
                { /* block id: 1038 */
                    uint64_t l_2085 = 1UL;
                    int32_t l_2092 = 0x41B3C046L;
                    l_2061 = l_2060[8];
                    (*p_2953->g_398) |= ((safe_sub_func_int32_t_s_s((safe_mod_func_int8_t_s_s((((safe_mod_func_int8_t_s_s(0x2AL, (safe_add_func_int32_t_s_s((safe_div_func_int32_t_s_s((((~(p_29 < (((safe_add_func_int32_t_s_s((!((safe_unary_minus_func_int16_t_s((!(safe_lshift_func_int16_t_s_u((safe_div_func_int32_t_s_s((safe_mod_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((((p_29 == p_29) < (safe_lshift_func_int8_t_s_s(((l_2086 = (l_2085 = ((void*)0 != p_28))) , (safe_lshift_func_int16_t_s_s(0x005CL, ((l_2092 |= (safe_rshift_func_uint8_t_u_u(((void*)0 != l_2091[0][2]), 6))) , (*p_2953->g_220))))), 2))) <= 250UL), 1)), l_2061)), p_29)), p_29))))) & p_29)), l_2060[8])) , l_2093[5][1]) && (*p_2953->g_1513)))) == (*l_1739)) || (**p_2953->g_1512)), 0xC9B85E78L)), l_914[2][0])))) >= l_2060[3]) , l_2085), 0x09L)), 5L)) <= p_29);
                    for (l_1169 = 0; (l_1169 <= 7); l_1169 += 1)
                    { /* block id: 1046 */
                        int64_t ***l_2094 = &l_1437;
                        int i;
                        (*l_2094) = &p_2953->g_1513;
                        return p_2953->g_1787[l_1169];
                    }
                }
                else
                { /* block id: 1050 */
                    int32_t *l_2096 = (void*)0;
                    int32_t l_2097[5] = {0x6462C7E7L,0x6462C7E7L,0x6462C7E7L,0x6462C7E7L,0x6462C7E7L};
                    int32_t *l_2098 = &l_1626;
                    int32_t *l_2099 = &l_1002;
                    int32_t *l_2100 = (void*)0;
                    int32_t *l_2101[10];
                    uint8_t l_2112 = 255UL;
                    int i;
                    for (i = 0; i < 10; i++)
                        l_2101[i] = &l_1879;
                    --l_2112;
                }
                (*l_1739) &= (safe_div_func_int64_t_s_s(((*p_28) | (safe_sub_func_int32_t_s_s(0L, ((safe_mod_func_int16_t_s_s((((((void*)0 == l_2121) & 0xC5951356L) & (safe_sub_func_uint32_t_u_u((p_2953->g_2124 != ((+(safe_unary_minus_func_uint32_t_u(((void*)0 != l_2127)))) , &p_2953->g_2125)), l_2107))) , 0x4558L), 2UL)) >= 0x69L)))), (-4L)));
            }
        }
        if ((safe_mul_func_int8_t_s_s((safe_add_func_uint8_t_u_u((l_2127 == l_2132[1][5]), (*l_1739))), p_29)))
        { /* block id: 1056 */
            uint32_t l_2141 = 4294967292UL;
            union U0 l_2148[4] = {{0xA4E7FD7CA8B9AF02L},{0xA4E7FD7CA8B9AF02L},{0xA4E7FD7CA8B9AF02L},{0xA4E7FD7CA8B9AF02L}};
            int64_t *l_2167 = &p_2953->g_66[0][4];
            int32_t l_2168 = 0x6E4302D5L;
            int i;
            (**p_2953->g_397) = (safe_div_func_uint16_t_u_u(3UL, ((safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_29, (safe_div_func_int8_t_s_s(((!l_2141) ^ (safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s((0x0F00F43E6A64C0B9L | (safe_div_func_int8_t_s_s((((l_1042 = (((*p_2953->g_150) , l_2148[2]) , 0xCF3DF36D354225B2L)) | (safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_2953->local_1_offset, get_local_id(1), 10), (((safe_rshift_func_uint16_t_u_s((((safe_lshift_func_int16_t_s_s(((void*)0 == (*p_2953->g_396)), (**p_2953->g_219))) | l_1379[1][1]) && p_29), p_29)) == 0x4BEC50A47C771FB4L) | l_1884)))) <= l_946), FAKE_DIVERGE(p_2953->local_1_offset, get_local_id(1), 10)))), p_29)), 0x080BL))), 0x15L)))), 6)) && 4UL)));
            l_2168 |= ((((p_29 , (((((safe_add_func_uint64_t_u_u((l_1884 = (safe_div_func_uint64_t_u_u((l_1846 , p_2953->g_2159), ((**l_1437) = 0x28B5D8C7EBE50A85L)))), ((safe_div_func_int8_t_s_s(((**p_2953->g_206) &= (l_2162 == (void*)0)), (safe_div_func_uint64_t_u_u(((safe_add_func_int32_t_s_s(((l_947 | l_2148[2].f0) & ((p_2953->g_76[1][0][3] = (void*)0) != l_2167)), 0x6BD1988AL)) < p_29), (-5L))))) , (**p_2953->g_1512)))) > FAKE_DIVERGE(p_2953->group_0_offset, get_group_id(0), 10)) ^ p_29) > l_2141) & p_29)) && (*p_28)) || l_2148[2].f0) != l_2148[2].f0);
        }
        else
        { /* block id: 1064 */
            int32_t *l_2169[2][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int i, j, k;
            (*p_2953->g_1743) = p_30;
            l_2169[1][6][0] = (*l_1742);
        }
    }
    l_1440 = 0x26633254L;
    return (*p_30);
}


/* ------------------------------------------ */
/* 
 * reads : p_2953->g_843 p_2953->g_856
 * writes: p_2953->g_433 p_2953->g_856
 */
uint32_t * func_32(uint32_t * p_33, int32_t  p_34, uint64_t  p_35, int32_t  p_36, uint32_t * p_37, struct S3 * p_2953)
{ /* block id: 397 */
    union U1 *l_841 = (void*)0;
    union U1 *l_842 = (void*)0;
    int32_t l_844 = 7L;
    int32_t *l_845 = &l_844;
    int32_t *l_846 = &p_2953->g_90;
    int32_t *l_847 = &l_844;
    int32_t *l_848 = &l_844;
    int32_t *l_849 = (void*)0;
    int32_t *l_850 = &p_2953->g_110;
    int32_t *l_851 = &l_844;
    int32_t *l_852 = &l_844;
    int32_t *l_853 = &l_844;
    int32_t *l_854 = &l_844;
    int32_t *l_855[4][10][6] = {{{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0}},{{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0}},{{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0}},{{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0},{&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,&p_2953->g_90,(void*)0}}};
    int i, j, k;
    l_842 = (l_841 = l_841);
    (*p_2953->g_843) = &p_36;
    p_2953->g_856--;
    return &p_2953->g_582;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t * func_38(uint64_t  p_39, uint32_t  p_40, struct S3 * p_2953)
{ /* block id: 8 */
    int8_t *l_46 = &p_2953->g_47;
    int64_t *l_63 = (void*)0;
    int64_t *l_64 = (void*)0;
    int64_t *l_65 = &p_2953->g_66[0][0];
    uint32_t *l_67[5][7] = {{&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18},{&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18},{&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18},{&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18},{&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18,&p_2953->g_18}};
    int16_t l_68 = 0L;
    union U0 l_69 = {18446744073709551615UL};
    int32_t l_478[4] = {(-1L),(-1L),(-1L),(-1L)};
    uint32_t l_698[9] = {0x50BF0F0EL,0x50BF0F0EL,0x50BF0F0EL,0x50BF0F0EL,0x50BF0F0EL,0x50BF0F0EL,0x50BF0F0EL,0x50BF0F0EL,0x50BF0F0EL};
    uint16_t l_714 = 65531UL;
    uint32_t l_769 = 0x51909DBDL;
    int32_t l_783[4][2][3] = {{{(-6L),1L,(-6L)},{(-6L),1L,(-6L)}},{{(-6L),1L,(-6L)},{(-6L),1L,(-6L)}},{{(-6L),1L,(-6L)},{(-6L),1L,(-6L)}},{{(-6L),1L,(-6L)},{(-6L),1L,(-6L)}}};
    int i, j, k;
    return l_67[3][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_2953->g_357 p_2953->g_17 p_2953->g_18 p_2953->g_62 p_2953->g_164 p_2953->g_66 p_2953->g_380 p_2953->g_138 p_2953->g_384.f2 p_2953->g_62.f0 p_2953->g_396 p_2953->g_110 p_2953->g_397 p_2953->g_398 p_2953->g_90 p_2953->g_399 p_2953->g_423 p_2953->g_428 p_2953->g_432 p_2953->g_218 p_2953->g_219 p_2953->g_220 p_2953->g_456.f0
 * writes: p_2953->g_90 p_2953->g_206 p_2953->g_18 p_2953->g_16 p_2953->g_384.f2 p_2953->g_395 p_2953->g_109.f3 p_2953->g_138 p_2953->g_110 p_2953->g_398 p_2953->g_399 p_2953->g_423 p_2953->g_428 p_2953->g_357 p_2953->g_433 p_2953->g_261 p_2953->g_454 p_2953->g_458 p_2953->g_215
 */
int32_t * func_41(union U0  p_42, uint32_t  p_43, int32_t * p_44, uint32_t  p_45, struct S3 * p_2953)
{ /* block id: 136 */
    int8_t ***l_358 = &p_2953->g_206;
    int32_t l_363 = 0x777C8B33L;
    union U1 **l_368 = (void*)0;
    int16_t **l_376 = &p_2953->g_220;
    int16_t **l_377[1];
    int64_t *l_378 = &p_2953->g_16;
    int32_t l_379 = 0x455992C8L;
    union U1 *l_381 = &p_2953->g_109[2];
    union U1 **l_382 = &l_381;
    union U1 *l_383 = &p_2953->g_384;
    uint32_t l_385 = 0UL;
    uint64_t l_392[5][7] = {{1UL,0x41D73F4ED036454BL,1UL,1UL,0x41D73F4ED036454BL,1UL,1UL},{1UL,0x41D73F4ED036454BL,1UL,1UL,0x41D73F4ED036454BL,1UL,1UL},{1UL,0x41D73F4ED036454BL,1UL,1UL,0x41D73F4ED036454BL,1UL,1UL},{1UL,0x41D73F4ED036454BL,1UL,1UL,0x41D73F4ED036454BL,1UL,1UL},{1UL,0x41D73F4ED036454BL,1UL,1UL,0x41D73F4ED036454BL,1UL,1UL}};
    int32_t l_419[7][2][7] = {{{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L},{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L}},{{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L},{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L}},{{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L},{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L}},{{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L},{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L}},{{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L},{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L}},{{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L},{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L}},{{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L},{7L,(-2L),0x38E5642EL,0x38E5642EL,(-2L),7L,0x78898BB6L}}};
    union U0 **l_457 = (void*)0;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_377[i] = (void*)0;
    (*p_2953->g_357) = (&p_2953->g_211 != (void*)0);
    (*l_358) = (void*)0;
    if ((((((((*p_2953->g_17)++) && (safe_rshift_func_int8_t_s_s(l_363, 5))) > l_363) >= (~(((safe_sub_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((l_368 != ((safe_lshift_func_uint16_t_u_u(((((p_45 && ((((*l_382) = ((((+(safe_lshift_func_int8_t_s_u((!(safe_sub_func_int64_t_s_s(((*l_378) = ((p_2953->g_62 , (((((safe_unary_minus_func_uint64_t_u((l_363 > l_363))) || l_363) , (l_376 = l_376)) != l_377[0]) < p_45)) & p_2953->g_164[1])), l_379))), p_2953->g_66[0][5]))) != p_45) , p_2953->g_380) , l_381)) == l_383) & p_43)) < l_363) <= l_385) <= p_2953->g_138[0]), l_363)) , (void*)0)), l_379)) <= p_42.f0), l_363)) ^ 0x8DB75DD5L) && l_363))) , l_379) & p_43))
    { /* block id: 143 */
        union U2 l_393 = {1L};
        int32_t l_402 = 0x63909E9DL;
        for (p_2953->g_384.f2 = 0; (p_2953->g_384.f2 <= 25); p_2953->g_384.f2 = safe_add_func_int32_t_s_s(p_2953->g_384.f2, 7))
        { /* block id: 146 */
            union U2 *l_394[9] = {&l_393,&l_393,&l_393,&l_393,&l_393,&l_393,&l_393,&l_393,&l_393};
            int32_t *l_400 = &p_2953->g_109[2].f3;
            uint32_t **l_401[9][8] = {{(void*)0,(void*)0,&p_2953->g_192[0][5],&p_2953->g_17,&p_2953->g_192[0][1],&p_2953->g_17,&p_2953->g_192[0][5],(void*)0},{(void*)0,(void*)0,&p_2953->g_192[0][5],&p_2953->g_17,&p_2953->g_192[0][1],&p_2953->g_17,&p_2953->g_192[0][5],(void*)0},{(void*)0,(void*)0,&p_2953->g_192[0][5],&p_2953->g_17,&p_2953->g_192[0][1],&p_2953->g_17,&p_2953->g_192[0][5],(void*)0},{(void*)0,(void*)0,&p_2953->g_192[0][5],&p_2953->g_17,&p_2953->g_192[0][1],&p_2953->g_17,&p_2953->g_192[0][5],(void*)0},{(void*)0,(void*)0,&p_2953->g_192[0][5],&p_2953->g_17,&p_2953->g_192[0][1],&p_2953->g_17,&p_2953->g_192[0][5],(void*)0},{(void*)0,(void*)0,&p_2953->g_192[0][5],&p_2953->g_17,&p_2953->g_192[0][1],&p_2953->g_17,&p_2953->g_192[0][5],(void*)0},{(void*)0,(void*)0,&p_2953->g_192[0][5],&p_2953->g_17,&p_2953->g_192[0][1],&p_2953->g_17,&p_2953->g_192[0][5],(void*)0},{(void*)0,(void*)0,&p_2953->g_192[0][5],&p_2953->g_17,&p_2953->g_192[0][1],&p_2953->g_17,&p_2953->g_192[0][5],(void*)0},{(void*)0,(void*)0,&p_2953->g_192[0][5],&p_2953->g_17,&p_2953->g_192[0][1],&p_2953->g_17,&p_2953->g_192[0][5],(void*)0}};
            uint16_t *l_403 = &p_2953->g_138[2];
            int32_t *l_404 = &p_2953->g_110;
            int32_t l_420 = (-3L);
            int32_t l_421 = 9L;
            int32_t l_422[7][1];
            int32_t *l_426 = &p_2953->g_90;
            int32_t *l_427[6][1][6] = {{{&l_422[6][0],&p_2953->g_90,&l_422[6][0],&l_422[6][0],&p_2953->g_90,&l_422[6][0]}},{{&l_422[6][0],&p_2953->g_90,&l_422[6][0],&l_422[6][0],&p_2953->g_90,&l_422[6][0]}},{{&l_422[6][0],&p_2953->g_90,&l_422[6][0],&l_422[6][0],&p_2953->g_90,&l_422[6][0]}},{{&l_422[6][0],&p_2953->g_90,&l_422[6][0],&l_422[6][0],&p_2953->g_90,&l_422[6][0]}},{{&l_422[6][0],&p_2953->g_90,&l_422[6][0],&l_422[6][0],&p_2953->g_90,&l_422[6][0]}},{{&l_422[6][0],&p_2953->g_90,&l_422[6][0],&l_422[6][0],&p_2953->g_90,&l_422[6][0]}}};
            int i, j, k;
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 1; j++)
                    l_422[i][j] = 1L;
            }
            (*l_404) ^= ((safe_div_func_uint16_t_u_u(((*l_403) ^= ((l_402 |= (GROUP_DIVERGE(0, 1) & ((0UL == 0x51L) , ((safe_mul_func_int16_t_s_s((p_2953->g_62.f0 <= l_392[4][4]), FAKE_DIVERGE(p_2953->global_0_offset, get_global_id(0), 10))) <= ((l_385 , (l_363 = (-2L))) , ((*p_2953->g_17) &= ((((*l_400) = (((p_2953->g_395 = l_393) , ((void*)0 == p_2953->g_396)) | l_385)) , &p_2953->g_192[0][3]) == l_401[1][1]))))))) < 3L)), 0x5746L)) , p_45);
            (*p_2953->g_397) = (*p_2953->g_397);
            if ((((~(*p_2953->g_357)) & 0UL) & ((*l_404) ^= ((safe_add_func_int8_t_s_s((safe_mul_func_int16_t_s_s((((*l_378) = p_2953->g_66[0][0]) != FAKE_DIVERGE(p_2953->global_0_offset, get_global_id(0), 10)), p_2953->g_164[1])), 0x9AL)) | ((safe_div_func_uint32_t_u_u(0UL, (safe_add_func_int16_t_s_s(0x2D00L, p_43)))) , l_392[0][0])))))
            { /* block id: 157 */
                int32_t *l_413 = &l_363;
                int32_t *l_414 = (void*)0;
                int32_t *l_415 = &l_363;
                int32_t *l_416 = &p_2953->g_110;
                int32_t *l_417 = &l_402;
                int32_t *l_418[3][8][6] = {{{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363}},{{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363}},{{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363},{&l_363,&l_363,&p_2953->g_110,&p_2953->g_90,&p_2953->g_110,&l_363}}};
                int i, j, k;
                (***p_2953->g_396) &= (-1L);
                if (p_43)
                    continue;
                ++p_2953->g_423;
            }
            else
            { /* block id: 161 */
                return p_44;
            }
            ++p_2953->g_428[6][2];
        }
    }
    else
    { /* block id: 166 */
        int32_t *l_431 = &l_419[5][0][3];
        p_2953->g_357 = &l_419[5][0][3];
        (*p_2953->g_397) = (*p_2953->g_397);
        (*p_2953->g_432) = l_431;
    }
    for (l_363 = (-8); (l_363 != 6); l_363++)
    { /* block id: 173 */
        uint64_t *l_448[3][10] = {{&l_392[3][0],&l_392[3][2],&l_392[1][0],&l_392[3][2],&l_392[3][0],&l_392[3][0],&l_392[3][2],&l_392[1][0],&l_392[3][2],&l_392[3][0]},{&l_392[3][0],&l_392[3][2],&l_392[1][0],&l_392[3][2],&l_392[3][0],&l_392[3][0],&l_392[3][2],&l_392[1][0],&l_392[3][2],&l_392[3][0]},{&l_392[3][0],&l_392[3][2],&l_392[1][0],&l_392[3][2],&l_392[3][0],&l_392[3][0],&l_392[3][2],&l_392[1][0],&l_392[3][2],&l_392[3][0]}};
        union U0 *l_450 = (void*)0;
        union U0 **l_449[6][6][1] = {{{&l_450},{&l_450},{&l_450},{&l_450},{&l_450},{&l_450}},{{&l_450},{&l_450},{&l_450},{&l_450},{&l_450},{&l_450}},{{&l_450},{&l_450},{&l_450},{&l_450},{&l_450},{&l_450}},{{&l_450},{&l_450},{&l_450},{&l_450},{&l_450},{&l_450}},{{&l_450},{&l_450},{&l_450},{&l_450},{&l_450},{&l_450}},{{&l_450},{&l_450},{&l_450},{&l_450},{&l_450},{&l_450}}};
        union U0 ***l_451 = (void*)0;
        union U0 ***l_452 = (void*)0;
        union U0 ***l_453[2];
        uint16_t *l_459 = (void*)0;
        uint8_t *l_462 = &p_2953->g_215[3];
        int32_t l_463 = 0x49954C03L;
        uint16_t *l_464 = &p_2953->g_138[1];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_453[i] = &l_449[4][1][0];
        (*p_2953->g_398) = (safe_lshift_func_uint16_t_u_u(p_43, ((*l_464) = ((~GROUP_DIVERGE(1, 1)) > ((safe_sub_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u((((p_2953->g_261 = 0UL) < 0x5B9BCCC838053FC8L) ^ (***p_2953->g_218)), ((p_2953->g_454 = l_449[4][1][0]) != (p_2953->g_458 = l_457)))), 15)) < ((l_419[5][1][6] = p_43) , (safe_div_func_uint8_t_u_u(((*l_462) = 0x6CL), 255UL)))), 3)), l_463)) ^ p_43), p_2953->g_456.f0)) < l_463)))));
        (***p_2953->g_396) = (**p_2953->g_397);
    }
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_2953->g_17 p_2953->g_18 p_2953->g_66 p_2953->g_276 p_2953->g_220 p_2953->g_164 p_2953->g_245 p_2953->g_193 p_2953->g_194 p_2953->g_110 p_2953->g_152 p_2953->g_150 p_2953->g_211 p_2953->g_207 p_2953->g_277 p_2953->g_219 p_2953->g_90 p_2953->g_215
 * writes: p_2953->g_18 p_2953->g_76 p_2953->g_90 p_2953->g_138 p_2953->g_164 p_2953->g_328 p_2953->g_194 p_2953->g_109.f2 p_2953->g_110 p_2953->g_215
 */
uint16_t  func_54(uint64_t  p_55, union U0  p_56, uint64_t  p_57, int32_t  p_58, uint16_t  p_59, struct S3 * p_2953)
{ /* block id: 11 */
    int64_t *l_74 = (void*)0;
    int64_t *l_75[6] = {&p_2953->g_66[0][0],&p_2953->g_66[0][0],&p_2953->g_66[0][0],&p_2953->g_66[0][0],&p_2953->g_66[0][0],&p_2953->g_66[0][0]};
    union U0 l_77 = {0xF8299994516193E9L};
    int64_t **l_82 = &l_74;
    int64_t *l_83[3];
    int64_t l_84 = 0x6F58E71DF66360CCL;
    int32_t l_85 = 0L;
    union U2 l_91[2][2] = {{{0x0F2F45F9L},{0x0F2F45F9L}},{{0x0F2F45F9L},{0x0F2F45F9L}}};
    union U1 *l_108 = &p_2953->g_109[2];
    int32_t l_171[2];
    uint16_t l_181 = 5UL;
    int8_t *l_212 = (void*)0;
    union U0 *l_287 = (void*)0;
    union U0 **l_286[8] = {&l_287,(void*)0,&l_287,&l_287,(void*)0,&l_287,&l_287,(void*)0};
    int32_t *l_311 = (void*)0;
    int32_t **l_310 = &l_311;
    int32_t ***l_309 = &l_310;
    int16_t l_339 = 0x3A90L;
    int32_t *l_340 = &l_171[1];
    uint32_t l_352 = 0x1EC9D5EBL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_83[i] = &p_2953->g_66[0][5];
    for (i = 0; i < 2; i++)
        l_171[i] = 0x71BF8528L;
    if ((safe_sub_func_int32_t_s_s(p_59, ((++(*p_2953->g_17)) , ((l_74 == (l_75[0] = l_74)) && (((((p_2953->g_76[1][0][3] = l_75[0]) == (void*)0) , (FAKE_DIVERGE(p_2953->group_1_offset, get_group_id(1), 10) && 0xE88E1234L)) >= ((l_77 , ((safe_rshift_func_uint8_t_u_s((l_85 = (safe_rshift_func_uint16_t_u_s((((*l_82) = &p_2953->g_66[0][3]) == l_83[2]), l_84))), p_55)) < 0x5405D214L)) < p_2953->g_18)) && p_57))))))
    { /* block id: 17 */
        int32_t *l_88 = &l_85;
        int32_t *l_89 = &p_2953->g_90;
        int32_t l_95 = (-1L);
        int32_t l_98[2];
        uint64_t l_165 = 0xFFEE22BCD3741DADL;
        int64_t *l_177 = &p_2953->g_66[0][4];
        union U0 *l_180 = (void*)0;
        union U0 **l_179[9][7] = {{&l_180,&l_180,&l_180,(void*)0,&l_180,(void*)0,&l_180},{&l_180,&l_180,&l_180,(void*)0,&l_180,(void*)0,&l_180},{&l_180,&l_180,&l_180,(void*)0,&l_180,(void*)0,&l_180},{&l_180,&l_180,&l_180,(void*)0,&l_180,(void*)0,&l_180},{&l_180,&l_180,&l_180,(void*)0,&l_180,(void*)0,&l_180},{&l_180,&l_180,&l_180,(void*)0,&l_180,(void*)0,&l_180},{&l_180,&l_180,&l_180,(void*)0,&l_180,(void*)0,&l_180},{&l_180,&l_180,&l_180,(void*)0,&l_180,(void*)0,&l_180},{&l_180,&l_180,&l_180,(void*)0,&l_180,(void*)0,&l_180}};
        int64_t l_228[1];
        uint32_t l_285 = 4294967292UL;
        int32_t **l_293 = &l_88;
        int i, j;
        for (i = 0; i < 2; i++)
            l_98[i] = 0x7CA77B68L;
        for (i = 0; i < 1; i++)
            l_228[i] = (-1L);
        for (p_56.f0 = 0; (p_56.f0 <= 1); p_56.f0 += 1)
        { /* block id: 20 */
            return p_58;
        }
        (*l_89) = ((*l_88) = (p_2953->g_18 > (safe_add_func_uint32_t_u_u((*p_2953->g_17), 4294967295UL))));
    }
    else
    { /* block id: 115 */
        int32_t *l_306 = &p_2953->g_90;
        int32_t **l_305 = &l_306;
        uint16_t *l_319 = &p_2953->g_138[0];
        uint16_t *l_326 = &l_181;
        int16_t *l_327 = &p_2953->g_328;
        int32_t l_345 = (-1L);
        int32_t l_351[5][2] = {{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}};
        int i, j;
        (*l_305) = (void*)0;
        if ((safe_mul_func_int8_t_s_s((l_309 == &l_310), (0x5358F03E51691744L <= (safe_sub_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u(((p_2953->g_66[0][1] || (safe_unary_minus_func_int16_t_s(((*l_327) = (safe_add_func_uint16_t_u_u(0UL, ((((p_2953->g_276 , (((*p_2953->g_220) = ((((*l_319) = p_59) | (((safe_sub_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(p_2953->g_276, ((((((+(safe_sub_func_int16_t_s_s((((*l_326) |= 65535UL) , (*p_2953->g_220)), GROUP_DIVERGE(1, 1)))) >= 0xF3AA1B83L) & p_58) , p_2953->g_245[2]) & FAKE_DIVERGE(p_2953->global_0_offset, get_global_id(0), 10)) | 0x4B0D3567L))) & (*p_2953->g_193)), 1UL)) & 0x2B51FCEDL) , 0x3F0AL)) & (*p_2953->g_17))) <= (-7L))) < p_2953->g_110) , p_57) | 0x7DL))))))) != p_59), p_57)), 5UL))))))
        { /* block id: 121 */
            int32_t *l_329 = &l_171[0];
            (*l_305) = ((**l_309) = l_329);
        }
        else
        { /* block id: 124 */
            int8_t *l_336 = &p_2953->g_109[2].f2;
            int32_t l_341[1][9][1] = {{{0x7678E49EL},{0x7678E49EL},{0x7678E49EL},{0x7678E49EL},{0x7678E49EL},{0x7678E49EL},{0x7678E49EL},{0x7678E49EL},{0x7678E49EL}}};
            int32_t *l_342 = (void*)0;
            int32_t *l_343 = &p_2953->g_90;
            int32_t *l_344 = &p_2953->g_110;
            int32_t *l_346 = &l_171[1];
            int32_t *l_347 = (void*)0;
            int32_t *l_348 = &p_2953->g_110;
            int32_t *l_349 = &l_341[0][2][0];
            int32_t *l_350[2][10] = {{(void*)0,&l_341[0][5][0],&p_2953->g_90,&l_341[0][5][0],(void*)0,(void*)0,&l_341[0][5][0],&p_2953->g_90,&l_341[0][5][0],(void*)0},{(void*)0,&l_341[0][5][0],&p_2953->g_90,&l_341[0][5][0],(void*)0,(void*)0,&l_341[0][5][0],&p_2953->g_90,&l_341[0][5][0],(void*)0}};
            int i, j, k;
            p_2953->g_110 |= ((((safe_lshift_func_uint8_t_u_s(((((((void*)0 != (*p_2953->g_152)) && ((safe_unary_minus_func_uint64_t_u((p_55 == (((~(0xED22EAF4L && (safe_mul_func_int16_t_s_s((((safe_unary_minus_func_int8_t_s((((**p_2953->g_211) = 0x7FL) <= ((*l_336) = 1L)))) >= p_57) >= ((safe_lshift_func_uint16_t_u_u(p_2953->g_277[2], p_58)) && l_339)), (**p_2953->g_219))))) || p_59) && p_56.f0)))) > p_58)) & GROUP_DIVERGE(1, 1)) >= p_58) != 1L), p_57)) , 1L) , p_2953->g_90) < p_2953->g_90);
            (*l_310) = l_340;
            l_352--;
        }
    }
    (*l_310) = &p_2953->g_110;
    (**l_310) = ((++p_2953->g_215[3]) <= (***l_309));
    return p_2953->g_90;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_2954;
    struct S3* p_2953 = &c_2954;
    struct S3 c_2955 = {
        0x6A3735B263D18804L, // p_2953->g_8
        0x85A7B051L, // p_2953->g_12
        0x74E80031AA08ECB3L, // p_2953->g_16
        0xD4A1CF04L, // p_2953->g_18
        &p_2953->g_18, // p_2953->g_17
        3L, // p_2953->g_47
        {0x6367AFFFL}, // p_2953->g_62
        {{5L,5L,5L,5L,5L,5L,5L,5L}}, // p_2953->g_66
        {{{&p_2953->g_66[0][3],&p_2953->g_66[0][7],&p_2953->g_66[0][7],&p_2953->g_66[0][3]},{&p_2953->g_66[0][3],&p_2953->g_66[0][7],&p_2953->g_66[0][7],&p_2953->g_66[0][3]},{&p_2953->g_66[0][3],&p_2953->g_66[0][7],&p_2953->g_66[0][7],&p_2953->g_66[0][3]}},{{&p_2953->g_66[0][3],&p_2953->g_66[0][7],&p_2953->g_66[0][7],&p_2953->g_66[0][3]},{&p_2953->g_66[0][3],&p_2953->g_66[0][7],&p_2953->g_66[0][7],&p_2953->g_66[0][3]},{&p_2953->g_66[0][3],&p_2953->g_66[0][7],&p_2953->g_66[0][7],&p_2953->g_66[0][3]}}}, // p_2953->g_76
        0L, // p_2953->g_90
        0x4A2822D1L, // p_2953->g_101
        4294967289UL, // p_2953->g_102
        {0x47B43BFDL}, // p_2953->g_106
        &p_2953->g_106, // p_2953->g_105
        {{0x7AC93125L},{0x7AC93125L},{0x7AC93125L}}, // p_2953->g_109
        7L, // p_2953->g_110
        {0xA759L,0xA759L,0xA759L}, // p_2953->g_138
        {{{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL},{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL},{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL},{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL},{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL},{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL},{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL},{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL},{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL},{1UL,0x1093DF31L,0x567E67BAL,0x64C687DCL,0xF3CA177FL,0UL,0x61C51346L,0x567E67BAL}}}, // p_2953->g_142
        {18446744073709551615UL}, // p_2953->g_151
        &p_2953->g_151, // p_2953->g_150
        &p_2953->g_150, // p_2953->g_152
        {4L,4L,4L,4L}, // p_2953->g_164
        {{(void*)0,&p_2953->g_18,(void*)0,(void*)0,&p_2953->g_18,(void*)0}}, // p_2953->g_192
        0x2AL, // p_2953->g_194
        &p_2953->g_194, // p_2953->g_193
        &p_2953->g_194, // p_2953->g_207
        &p_2953->g_207, // p_2953->g_206
        &p_2953->g_207, // p_2953->g_211
        {0x16L,0x16L,0x16L,0x16L,0x16L,0x16L,0x16L,0x16L,0x16L}, // p_2953->g_215
        &p_2953->g_164[1], // p_2953->g_220
        &p_2953->g_220, // p_2953->g_219
        &p_2953->g_219, // p_2953->g_218
        0x09L, // p_2953->g_244
        {0x69775CC2L,1UL,0x69775CC2L,0x69775CC2L,1UL,0x69775CC2L}, // p_2953->g_245
        1L, // p_2953->g_260
        18446744073709551606UL, // p_2953->g_261
        {{0x60L,0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L,0x60L},{0x60L,0x60L,0x60L,0x60L,0x60L}}, // p_2953->g_275
        0L, // p_2953->g_276
        {0x73L,0x54L,0x73L,0x73L,0x54L,0x73L}, // p_2953->g_277
        (-1L), // p_2953->g_278
        7L, // p_2953->g_279
        0xCA21202AL, // p_2953->g_302
        (-3L), // p_2953->g_328
        &p_2953->g_90, // p_2953->g_357
        (-5L), // p_2953->g_380
        {8L}, // p_2953->g_384
        {-1L}, // p_2953->g_395
        3L, // p_2953->g_399
        &p_2953->g_399, // p_2953->g_398
        &p_2953->g_398, // p_2953->g_397
        &p_2953->g_397, // p_2953->g_396
        0x323F425049E7DE2EL, // p_2953->g_423
        {{4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL},{4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL},{4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL},{4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL},{4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL},{4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL},{4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL},{4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL}}, // p_2953->g_428
        &p_2953->g_110, // p_2953->g_433
        &p_2953->g_433, // p_2953->g_432
        {18446744073709551615UL}, // p_2953->g_456
        {{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}}}, // p_2953->g_455
        &p_2953->g_455[0][2][0], // p_2953->g_454
        &p_2953->g_455[0][1][0], // p_2953->g_458
        {&p_2953->g_433,&p_2953->g_433,&p_2953->g_433,&p_2953->g_433,&p_2953->g_433,&p_2953->g_433}, // p_2953->g_465
        &p_2953->g_433, // p_2953->g_466
        (void*)0, // p_2953->g_469
        &p_2953->g_395, // p_2953->g_502
        &p_2953->g_502, // p_2953->g_501
        {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}, // p_2953->g_551
        {{0x4D9117C8L},{0x4D9117C8L},{0x4D9117C8L},{0x4D9117C8L},{0x4D9117C8L},{0x4D9117C8L},{0x4D9117C8L}}, // p_2953->g_559
        1L, // p_2953->g_581
        4294967295UL, // p_2953->g_582
        {{{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L}},{{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L}},{{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L}},{{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L}},{{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L}},{{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L}},{{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L}},{{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L},{0x4B11E8259A57B344L,0x6785BA6F9EA546B3L,0x4B11E8259A57B344L}}}, // p_2953->g_598
        18446744073709551615UL, // p_2953->g_669
        0x34L, // p_2953->g_670
        &p_2953->g_433, // p_2953->g_787
        &p_2953->g_433, // p_2953->g_788
        18446744073709551614UL, // p_2953->g_815
        &p_2953->g_433, // p_2953->g_819
        &p_2953->g_433, // p_2953->g_843
        9UL, // p_2953->g_856
        {247UL,247UL}, // p_2953->g_862
        2UL, // p_2953->g_880
        0x3CE22189L, // p_2953->g_908
        {0x2BA88BEFL}, // p_2953->g_967
        {-1L}, // p_2953->g_990
        0x6F5DC191L, // p_2953->g_1020
        &p_2953->g_192[0][3], // p_2953->g_1034
        {0x1A5ACF42L}, // p_2953->g_1092
        (void*)0, // p_2953->g_1113
        &p_2953->g_433, // p_2953->g_1114
        {{0x309D2A1EL},{0x309D2A1EL},{0x309D2A1EL},{0x309D2A1EL},{0x309D2A1EL},{0x309D2A1EL},{0x309D2A1EL},{0x309D2A1EL}}, // p_2953->g_1115
        {0L}, // p_2953->g_1130
        &p_2953->g_908, // p_2953->g_1237
        &p_2953->g_1237, // p_2953->g_1236
        &p_2953->g_1237, // p_2953->g_1241
        &p_2953->g_211, // p_2953->g_1249
        (void*)0, // p_2953->g_1267
        {&p_2953->g_433,&p_2953->g_433,&p_2953->g_433}, // p_2953->g_1289
        {&p_2953->g_433,&p_2953->g_433,&p_2953->g_433}, // p_2953->g_1290
        &p_2953->g_433, // p_2953->g_1291
        0x0ECD0E591FC8A06FL, // p_2953->g_1308
        &p_2953->g_433, // p_2953->g_1351
        (void*)0, // p_2953->g_1352
        8L, // p_2953->g_1432
        &p_2953->g_433, // p_2953->g_1505
        &p_2953->g_1308, // p_2953->g_1513
        &p_2953->g_1513, // p_2953->g_1512
        {{{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL}},{{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL}},{{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL}},{{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL}},{{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL}},{{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL}},{{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL}},{{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL}},{{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL},{0x36F546E4L,0x2D225704L,4294967292UL,4294967295UL,0x80098905L,4294967294UL,4294967295UL,5UL}}}, // p_2953->g_1555
        &p_2953->g_219, // p_2953->g_1619
        5L, // p_2953->g_1644
        {{{0L,0x1BL,0L,0x20L,0L},{0L,0x1BL,0L,0x20L,0L},{0L,0x1BL,0L,0x20L,0L},{0L,0x1BL,0L,0x20L,0L}},{{0L,0x1BL,0L,0x20L,0L},{0L,0x1BL,0L,0x20L,0L},{0L,0x1BL,0L,0x20L,0L},{0L,0x1BL,0L,0x20L,0L}}}, // p_2953->g_1707
        {&p_2953->g_215[3],&p_2953->g_215[3],&p_2953->g_215[3],&p_2953->g_215[3]}, // p_2953->g_1713
        &p_2953->g_1713[1], // p_2953->g_1712
        0x0FL, // p_2953->g_1731
        &p_2953->g_433, // p_2953->g_1743
        0x6ACF71CCF8792DCCL, // p_2953->g_1784
        {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL}, // p_2953->g_1787
        {0L}, // p_2953->g_1801
        {1L}, // p_2953->g_1843
        &p_2953->g_395, // p_2953->g_1952
        0x2EACL, // p_2953->g_1953
        {{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}},{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}},{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}},{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}},{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}},{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}},{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}},{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}},{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}},{{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]},{&p_2953->g_456.f0,(void*)0,&p_2953->g_551[3]}}}, // p_2953->g_1977
        &p_2953->g_1977[9][2][1], // p_2953->g_1976
        &p_2953->g_62.f0, // p_2953->g_2125
        &p_2953->g_2125, // p_2953->g_2124
        0x51BC77AEL, // p_2953->g_2159
        2L, // p_2953->g_2175
        {0UL}, // p_2953->g_2189
        {4L}, // p_2953->g_2192
        {{&p_2953->g_138[1],(void*)0,&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0]},{&p_2953->g_138[1],(void*)0,&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0]},{&p_2953->g_138[1],(void*)0,&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0]},{&p_2953->g_138[1],(void*)0,&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0]},{&p_2953->g_138[1],(void*)0,&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0]},{&p_2953->g_138[1],(void*)0,&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0]},{&p_2953->g_138[1],(void*)0,&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0]},{&p_2953->g_138[1],(void*)0,&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0]},{&p_2953->g_138[1],(void*)0,&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0],&p_2953->g_138[0]}}, // p_2953->g_2204
        &p_2953->g_2204[4][3], // p_2953->g_2203
        0x0395C168A674CEABL, // p_2953->g_2249
        {{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}},{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}},{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}},{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}},{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}},{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}},{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}},{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}},{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}},{{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0},{&p_2953->g_105,(void*)0}}}, // p_2953->g_2277
        &p_2953->g_2277[9][1][0], // p_2953->g_2276
        {-1L}, // p_2953->g_2278
        (void*)0, // p_2953->g_2421
        &p_2953->g_2421, // p_2953->g_2420
        0x402DL, // p_2953->g_2472
        &p_2953->g_384.f0, // p_2953->g_2483
        &p_2953->g_2483, // p_2953->g_2482
        {0x7F8ADDF1L}, // p_2953->g_2513
        {6L}, // p_2953->g_2520
        {{0x2F183EA3L,0x0858B78FL,0x2F183EA3L,0x2F183EA3L,0x0858B78FL,0x2F183EA3L,0x2F183EA3L},{0x2F183EA3L,0x0858B78FL,0x2F183EA3L,0x2F183EA3L,0x0858B78FL,0x2F183EA3L,0x2F183EA3L},{0x2F183EA3L,0x0858B78FL,0x2F183EA3L,0x2F183EA3L,0x0858B78FL,0x2F183EA3L,0x2F183EA3L},{0x2F183EA3L,0x0858B78FL,0x2F183EA3L,0x2F183EA3L,0x0858B78FL,0x2F183EA3L,0x2F183EA3L}}, // p_2953->g_2544
        0x2BD5DE26L, // p_2953->g_2623
        &p_2953->g_2544[2][3], // p_2953->g_2668
        &p_2953->g_2668, // p_2953->g_2667
        &p_2953->g_76[0][2][1], // p_2953->g_2680
        {&p_2953->g_2680,(void*)0,&p_2953->g_2680,&p_2953->g_2680,(void*)0,&p_2953->g_2680,&p_2953->g_2680,(void*)0,&p_2953->g_2680}, // p_2953->g_2679
        0x62D7E2C1L, // p_2953->g_2720
        {0x69508C25L}, // p_2953->g_2794
        {{0x1BE7E836L},{0x1BE7E836L},{0x1BE7E836L},{0x1BE7E836L},{0x1BE7E836L},{0x1BE7E836L},{0x1BE7E836L},{0x1BE7E836L},{0x1BE7E836L},{0x1BE7E836L}}, // p_2953->g_2807
        (void*)0, // p_2953->g_2891
        sequence_input[get_global_id(0)], // p_2953->global_0_offset
        sequence_input[get_global_id(1)], // p_2953->global_1_offset
        sequence_input[get_global_id(2)], // p_2953->global_2_offset
        sequence_input[get_local_id(0)], // p_2953->local_0_offset
        sequence_input[get_local_id(1)], // p_2953->local_1_offset
        sequence_input[get_local_id(2)], // p_2953->local_2_offset
        sequence_input[get_group_id(0)], // p_2953->group_0_offset
        sequence_input[get_group_id(1)], // p_2953->group_1_offset
        sequence_input[get_group_id(2)], // p_2953->group_2_offset
    };
    c_2954 = c_2955;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2953);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2953->g_8, "p_2953->g_8", print_hash_value);
    transparent_crc(p_2953->g_12, "p_2953->g_12", print_hash_value);
    transparent_crc(p_2953->g_16, "p_2953->g_16", print_hash_value);
    transparent_crc(p_2953->g_18, "p_2953->g_18", print_hash_value);
    transparent_crc(p_2953->g_47, "p_2953->g_47", print_hash_value);
    transparent_crc(p_2953->g_62.f0, "p_2953->g_62.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2953->g_66[i][j], "p_2953->g_66[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2953->g_90, "p_2953->g_90", print_hash_value);
    transparent_crc(p_2953->g_101, "p_2953->g_101", print_hash_value);
    transparent_crc(p_2953->g_102, "p_2953->g_102", print_hash_value);
    transparent_crc(p_2953->g_106.f0, "p_2953->g_106.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2953->g_109[i].f0, "p_2953->g_109[i].f0", print_hash_value);

    }
    transparent_crc(p_2953->g_110, "p_2953->g_110", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2953->g_138[i], "p_2953->g_138[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_2953->g_142[i][j][k], "p_2953->g_142[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2953->g_151.f0, "p_2953->g_151.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2953->g_164[i], "p_2953->g_164[i]", print_hash_value);

    }
    transparent_crc(p_2953->g_194, "p_2953->g_194", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2953->g_215[i], "p_2953->g_215[i]", print_hash_value);

    }
    transparent_crc(p_2953->g_244, "p_2953->g_244", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2953->g_245[i], "p_2953->g_245[i]", print_hash_value);

    }
    transparent_crc(p_2953->g_260, "p_2953->g_260", print_hash_value);
    transparent_crc(p_2953->g_261, "p_2953->g_261", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2953->g_275[i][j], "p_2953->g_275[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2953->g_276, "p_2953->g_276", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2953->g_277[i], "p_2953->g_277[i]", print_hash_value);

    }
    transparent_crc(p_2953->g_278, "p_2953->g_278", print_hash_value);
    transparent_crc(p_2953->g_279, "p_2953->g_279", print_hash_value);
    transparent_crc(p_2953->g_302, "p_2953->g_302", print_hash_value);
    transparent_crc(p_2953->g_328, "p_2953->g_328", print_hash_value);
    transparent_crc(p_2953->g_380, "p_2953->g_380", print_hash_value);
    transparent_crc(p_2953->g_384.f0, "p_2953->g_384.f0", print_hash_value);
    transparent_crc(p_2953->g_395.f0, "p_2953->g_395.f0", print_hash_value);
    transparent_crc(p_2953->g_399, "p_2953->g_399", print_hash_value);
    transparent_crc(p_2953->g_423, "p_2953->g_423", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2953->g_428[i][j], "p_2953->g_428[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2953->g_456.f0, "p_2953->g_456.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2953->g_551[i], "p_2953->g_551[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2953->g_559[i].f0, "p_2953->g_559[i].f0", print_hash_value);

    }
    transparent_crc(p_2953->g_581, "p_2953->g_581", print_hash_value);
    transparent_crc(p_2953->g_582, "p_2953->g_582", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2953->g_598[i][j][k], "p_2953->g_598[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2953->g_669, "p_2953->g_669", print_hash_value);
    transparent_crc(p_2953->g_670, "p_2953->g_670", print_hash_value);
    transparent_crc(p_2953->g_815, "p_2953->g_815", print_hash_value);
    transparent_crc(p_2953->g_856, "p_2953->g_856", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2953->g_862[i], "p_2953->g_862[i]", print_hash_value);

    }
    transparent_crc(p_2953->g_880, "p_2953->g_880", print_hash_value);
    transparent_crc(p_2953->g_908, "p_2953->g_908", print_hash_value);
    transparent_crc(p_2953->g_967.f0, "p_2953->g_967.f0", print_hash_value);
    transparent_crc(p_2953->g_990.f0, "p_2953->g_990.f0", print_hash_value);
    transparent_crc(p_2953->g_1020, "p_2953->g_1020", print_hash_value);
    transparent_crc(p_2953->g_1092.f0, "p_2953->g_1092.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2953->g_1115[i].f0, "p_2953->g_1115[i].f0", print_hash_value);

    }
    transparent_crc(p_2953->g_1130.f0, "p_2953->g_1130.f0", print_hash_value);
    transparent_crc(p_2953->g_1308, "p_2953->g_1308", print_hash_value);
    transparent_crc(p_2953->g_1432, "p_2953->g_1432", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_2953->g_1555[i][j][k], "p_2953->g_1555[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2953->g_1644, "p_2953->g_1644", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2953->g_1707[i][j][k], "p_2953->g_1707[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2953->g_1731, "p_2953->g_1731", print_hash_value);
    transparent_crc(p_2953->g_1784, "p_2953->g_1784", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2953->g_1787[i], "p_2953->g_1787[i]", print_hash_value);

    }
    transparent_crc(p_2953->g_1801.f0, "p_2953->g_1801.f0", print_hash_value);
    transparent_crc(p_2953->g_1843.f0, "p_2953->g_1843.f0", print_hash_value);
    transparent_crc(p_2953->g_1953, "p_2953->g_1953", print_hash_value);
    transparent_crc(p_2953->g_2159, "p_2953->g_2159", print_hash_value);
    transparent_crc(p_2953->g_2175, "p_2953->g_2175", print_hash_value);
    transparent_crc(p_2953->g_2189.f0, "p_2953->g_2189.f0", print_hash_value);
    transparent_crc(p_2953->g_2192.f0, "p_2953->g_2192.f0", print_hash_value);
    transparent_crc(p_2953->g_2249, "p_2953->g_2249", print_hash_value);
    transparent_crc(p_2953->g_2278.f0, "p_2953->g_2278.f0", print_hash_value);
    transparent_crc(p_2953->g_2472, "p_2953->g_2472", print_hash_value);
    transparent_crc(p_2953->g_2513.f0, "p_2953->g_2513.f0", print_hash_value);
    transparent_crc(p_2953->g_2520.f0, "p_2953->g_2520.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2953->g_2544[i][j], "p_2953->g_2544[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2953->g_2623, "p_2953->g_2623", print_hash_value);
    transparent_crc(p_2953->g_2720, "p_2953->g_2720", print_hash_value);
    transparent_crc(p_2953->g_2794.f0, "p_2953->g_2794.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2953->g_2807[i].f0, "p_2953->g_2807[i].f0", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
