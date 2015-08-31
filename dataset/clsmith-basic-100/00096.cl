// ---fake_divergence -g 2,1,353 -l 1,1,1
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


// Seed: 96

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_11;
    volatile int32_t g_19[1][1];
    volatile int32_t g_20;
    int32_t g_21;
    int8_t g_29;
    int32_t * volatile g_32[4];
    uint32_t g_89;
    int32_t g_94;
    uint64_t g_100;
    int16_t g_105;
    int32_t g_114;
    int64_t g_120;
    uint32_t g_123;
    uint32_t g_126;
    uint64_t g_136;
    int16_t * volatile *g_137;
    int16_t * volatile ** volatile g_138;
    int8_t g_151;
    uint8_t g_172;
    uint8_t g_182;
    int16_t *g_186;
    int16_t **g_185[4][3][5];
    int32_t g_188[2];
    volatile int32_t g_238;
    int16_t g_249[1][7];
    uint32_t *g_255[5];
    uint32_t **g_254;
    int32_t *g_273;
    int32_t **g_272;
    int32_t g_346;
    int32_t *g_381;
    int64_t g_394;
    uint8_t *g_408;
    uint8_t **g_407[4][3][1];
    uint8_t ***g_406;
    int32_t ***g_455;
    int32_t ****g_454;
    int8_t g_462[3][4][3];
    volatile uint32_t g_497;
    uint8_t g_552;
    int8_t *g_598[10][2];
    uint16_t g_628[1][6];
    uint16_t *g_627[2][9];
    uint16_t **g_626;
    uint16_t *** volatile g_625;
    uint64_t g_675;
    int32_t ** volatile g_678[8];
    volatile uint32_t g_729;
    int32_t ** volatile g_797;
    uint32_t g_829;
    int16_t ***g_902[9];
    int16_t ****g_901[8][3];
    volatile int16_t g_913;
    volatile uint16_t g_946;
    volatile uint32_t g_1016;
    volatile uint32_t * volatile g_1015;
    volatile uint32_t * volatile *g_1014;
    volatile uint32_t * volatile **g_1013;
    volatile uint32_t * volatile ** volatile * volatile g_1012;
    uint32_t **g_1019;
    uint32_t ***g_1018;
    uint32_t ****g_1017;
    int32_t ** volatile g_1048;
    int32_t * volatile g_1050;
    int16_t g_1055[10];
    int32_t *g_1062;
    volatile int32_t g_1158;
    int32_t g_1177[10];
    int32_t g_1238;
    uint32_t * volatile g_1257;
    uint32_t * volatile * volatile g_1256[3];
    uint16_t g_1306;
    int32_t g_1321;
    int32_t *****g_1358[10][1][4];
    int16_t ***g_1371;
    int32_t *** volatile g_1409;
    volatile uint64_t g_1521;
    volatile uint64_t *g_1520;
    volatile uint64_t ** volatile g_1519[2];
    uint64_t **g_1522;
    uint32_t *g_1575;
    uint32_t **g_1574;
    uint32_t **g_1576;
    int64_t g_1598;
    int32_t ** volatile g_1754[9];
    int32_t ** volatile g_1758[5];
    int32_t ** volatile g_1772[7][9][4];
    int32_t ** volatile g_1773;
    int32_t ** volatile g_1845;
    int32_t ** volatile g_1850;
    int32_t g_1936;
    uint32_t g_1983[7];
    uint32_t g_2051[7];
    int32_t ** volatile g_2055;
    int32_t ** volatile g_2108;
    int32_t ** volatile g_2121;
    int32_t ** volatile g_2165[9];
    int32_t ** volatile g_2202;
    int32_t *****g_2257;
    int32_t ** volatile g_2267;
    int32_t * volatile g_2305;
    int32_t * volatile g_2320[2];
    int32_t ** volatile g_2345[7];
    uint16_t g_2353;
    uint16_t g_2361;
    int32_t * volatile * volatile g_2366;
    uint64_t g_2398;
    int32_t ** volatile g_2472;
    int32_t ** volatile g_2537;
    int32_t ** volatile g_2541;
    uint32_t * volatile * volatile *g_2571;
    uint8_t g_2598;
    int32_t g_2625;
    uint32_t ***g_2637;
    uint32_t *** volatile *g_2636;
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
uint32_t  func_1(struct S0 * p_2643);
uint64_t  func_4(int32_t * p_5, uint64_t  p_6, int32_t * p_7, int8_t  p_8, uint8_t  p_9, struct S0 * p_2643);
int32_t * func_12(int64_t  p_13, uint8_t  p_14, int32_t * p_15, int16_t  p_16, struct S0 * p_2643);
uint8_t  func_17(int32_t * p_18, struct S0 * p_2643);
int32_t * func_34(int32_t * p_35, struct S0 * p_2643);
int32_t * func_36(int32_t * p_37, uint64_t  p_38, uint32_t  p_39, struct S0 * p_2643);
int32_t  func_40(int8_t * p_41, int8_t  p_42, int8_t * p_43, struct S0 * p_2643);
int8_t  func_45(int64_t  p_46, int8_t  p_47, int8_t * p_48, int64_t  p_49, int16_t  p_50, struct S0 * p_2643);
uint16_t  func_65(int32_t * p_66, int32_t  p_67, int32_t * p_68, int32_t  p_69, struct S0 * p_2643);
int8_t  func_80(int32_t  p_81, int32_t * p_82, struct S0 * p_2643);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_1(struct S0 * p_2643)
{ /* block id: 4 */
    int32_t *l_10 = &p_2643->g_11;
    int32_t l_2347 = 1L;
    uint16_t *l_2352 = &p_2643->g_2353;
    int32_t **l_2358 = &p_2643->g_273;
    uint8_t *l_2359 = &p_2643->g_552;
    uint16_t *l_2360 = &p_2643->g_2361;
    int32_t l_2362 = 0L;
    int32_t l_2363 = (-4L);
    int16_t *l_2364 = &p_2643->g_249[0][5];
    int32_t **l_2595 = &p_2643->g_1062;
    uint64_t *l_2599 = (void*)0;
    uint64_t *l_2600 = &p_2643->g_100;
    int32_t l_2618 = 1L;
    int32_t l_2622 = 0x5CBE208BL;
    uint32_t ****l_2638 = &p_2643->g_2637;
    int16_t l_2642[8] = {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)};
    int i;
    return l_2642[2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_4(int32_t * p_5, uint64_t  p_6, int32_t * p_7, int8_t  p_8, uint8_t  p_9, struct S0 * p_2643)
{ /* block id: 1377 */
    int32_t l_2594[3];
    int i;
    for (i = 0; i < 3; i++)
        l_2594[i] = (-8L);
    return l_2594[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_2643->g_100 p_2643->g_136 p_2643->g_29 p_2643->g_2320 p_2643->g_2366 p_2643->g_1055 p_2643->g_1257 p_2643->g_89 p_2643->g_1576 p_2643->g_1575 p_2643->g_21 p_2643->g_94 p_2643->g_1177 p_2643->g_408 p_2643->g_1238 p_2643->g_1062 p_2643->g_2353 p_2643->g_2257 p_2643->g_454 p_2643->g_2398 p_2643->g_381 p_2643->g_123 p_2643->g_829 p_2643->g_462 p_2643->g_249 p_2643->g_11 p_2643->g_172 p_2643->g_626 p_2643->g_627 p_2643->g_628 p_2643->g_1409 p_2643->g_272 p_2643->g_273 p_2643->g_2472 p_2643->g_797 p_2643->g_2267 p_2643->g_105 p_2643->g_1321 p_2643->g_114 p_2643->g_2051 p_2643->g_2541 p_2643->g_1018 p_2643->g_1019 p_2643->g_1845 p_2643->g_2571 p_2643->g_182 p_2643->g_1048 p_2643->g_188
 * writes: p_2643->g_100 p_2643->g_136 p_2643->g_829 p_2643->g_29 p_2643->g_2305 p_2643->g_675 p_2643->g_123 p_2643->g_2398 p_2643->g_172 p_2643->g_1238 p_2643->g_21 p_2643->g_182 p_2643->g_249 p_2643->g_1062 p_2643->g_105 p_2643->g_1321 p_2643->g_120 p_2643->g_394 p_2643->g_381 p_2643->g_1598 p_2643->g_454 p_2643->g_89 p_2643->g_1017
 */
int32_t * func_12(int64_t  p_13, uint8_t  p_14, int32_t * p_15, int16_t  p_16, struct S0 * p_2643)
{ /* block id: 1248 */
    uint32_t l_2399 = 4294967295UL;
    int32_t l_2425 = 1L;
    int32_t ***l_2448 = (void*)0;
    int32_t l_2464 = 0x263824DBL;
    uint64_t *l_2503 = &p_2643->g_100;
    int32_t l_2545 = 0x3698D953L;
    int32_t l_2546 = 0x22FA3376L;
    int32_t l_2547 = 0L;
    int32_t l_2548 = 0x43A0DD35L;
    uint64_t l_2549 = 0x64AAF86B7C660DC7L;
    uint32_t ***l_2572[6] = {&p_2643->g_1574,&p_2643->g_1574,&p_2643->g_1574,&p_2643->g_1574,&p_2643->g_1574,&p_2643->g_1574};
    uint32_t ****l_2585 = &p_2643->g_1018;
    int i;
    for (p_2643->g_100 = 0; (p_2643->g_100 <= 1); p_2643->g_100 += 1)
    { /* block id: 1251 */
        int32_t l_2395 = 4L;
        uint16_t l_2421 = 0xB70DL;
        uint8_t l_2449[9][2][8] = {{{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL},{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL}},{{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL},{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL}},{{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL},{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL}},{{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL},{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL}},{{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL},{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL}},{{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL},{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL}},{{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL},{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL}},{{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL},{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL}},{{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL},{0xC5L,4UL,0x3DL,0xA5L,1UL,0x0EL,0xC5L,249UL}}};
        int32_t l_2450 = 0x36FEE5DCL;
        int32_t l_2462 = 0x582070FBL;
        int32_t l_2465 = 0L;
        uint8_t l_2475 = 0x16L;
        int32_t *l_2540[8] = {&p_2643->g_21,&l_2425,&p_2643->g_21,&p_2643->g_21,&l_2425,&p_2643->g_21,&p_2643->g_21,&l_2425};
        int i, j, k;
        for (p_2643->g_136 = 0; (p_2643->g_136 <= 1); p_2643->g_136 += 1)
        { /* block id: 1254 */
            int32_t *l_2401 = &p_2643->g_1238;
            int32_t *l_2422 = (void*)0;
            uint8_t *l_2436[10] = {&p_2643->g_172,&p_2643->g_552,&p_2643->g_182,&p_2643->g_552,&p_2643->g_172,&p_2643->g_172,&p_2643->g_552,&p_2643->g_182,&p_2643->g_552,&p_2643->g_172};
            int32_t l_2459 = (-9L);
            int32_t l_2460 = 5L;
            int32_t l_2463 = (-7L);
            int32_t l_2466 = 1L;
            uint64_t l_2468 = 0x50004D7415AA48C2L;
            int32_t l_2525 = 5L;
            int32_t l_2527[4];
            int i;
            for (i = 0; i < 4; i++)
                l_2527[i] = 9L;
            for (p_2643->g_829 = 0; (p_2643->g_829 <= 2); p_2643->g_829 += 1)
            { /* block id: 1257 */
                uint32_t l_2410 = 0xD382E0DCL;
                int32_t l_2451 = (-1L);
                int32_t l_2457[5][7][2] = {{{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L}},{{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L}},{{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L}},{{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L}},{{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L},{0x560FE4A1L,0x5913C9D7L}}};
                uint64_t *l_2504 = &l_2468;
                int i, j, k;
                for (p_2643->g_29 = 1; (p_2643->g_29 >= 0); p_2643->g_29 -= 1)
                { /* block id: 1260 */
                    int32_t * volatile *l_2365 = (void*)0;
                    uint16_t l_2396[10] = {0xCB94L,0xAA53L,0x9CC3L,0xAA53L,0xCB94L,0xCB94L,0xAA53L,0x9CC3L,0xAA53L,0xCB94L};
                    uint64_t *l_2419 = &p_2643->g_2398;
                    uint8_t *l_2420 = &p_2643->g_182;
                    int i;
                    (*p_2643->g_2366) = p_2643->g_2320[p_2643->g_29];
                    for (p_2643->g_675 = 0; (p_2643->g_675 <= 3); p_2643->g_675 += 1)
                    { /* block id: 1264 */
                        int8_t l_2386[6] = {8L,0L,8L,8L,0L,8L};
                        uint64_t *l_2397 = &p_2643->g_2398;
                        int32_t *l_2400 = &p_2643->g_1238;
                        int i;
                        (*l_2400) ^= (l_2395 = ((safe_sub_func_int8_t_s_s((p_2643->g_1055[1] < ((((*p_2643->g_408) = (safe_mod_func_int32_t_s_s(((safe_sub_func_uint32_t_u_u(((**p_2643->g_1576) = (*p_2643->g_1257)), ((safe_sub_func_int64_t_s_s((~((safe_lshift_func_uint8_t_u_s(p_16, 5)) , 3L)), ((safe_div_func_uint64_t_u_u(p_2643->g_21, ((safe_add_func_uint32_t_u_u(p_2643->g_94, p_13)) || (((safe_unary_minus_func_int32_t_s((~(safe_lshift_func_uint16_t_u_s((safe_add_func_int16_t_s_s((l_2386[0] || (safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((*l_2397) = ((!((((safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u(l_2395, p_14)), l_2386[0])) & 0x69846A0BL) != l_2395) >= l_2396[6])) ^ l_2386[4])), p_2643->g_1177[2])), 0x4BL))), p_16)), 5))))) , &p_2643->g_2051[3]) != (void*)0)))) && 9UL))) && 0x5EDAAB1D41F356B3L))) ^ 6UL), l_2399))) != l_2399) > (-3L))), p_16)) ^ p_16));
                        l_2401 = l_2400;
                        (*p_2643->g_1062) ^= (p_2643->g_1177[7] | 0UL);
                    }
                    (*p_2643->g_381) = (safe_sub_func_uint8_t_u_u((((255UL <= (safe_mul_func_uint8_t_u_u(((*p_2643->g_408) = 1UL), (safe_sub_func_uint64_t_u_u(18446744073709551615UL, l_2410))))) | (((safe_sub_func_uint64_t_u_u(p_2643->g_2353, (safe_mul_func_int8_t_s_s((~0L), ((*l_2420) = ((safe_sub_func_int16_t_s_s((safe_div_func_int8_t_s_s((((*l_2419) &= (((void*)0 == &p_16) ^ ((void*)0 == (*p_2643->g_2257)))) < 0x02925253F10B72ACL), l_2395)), 0UL)) > 2UL)))))) & l_2421) & 0xF692862CL)) | p_2643->g_1055[9]), 0xEEL));
                }
                for (p_2643->g_123 = 0; (p_2643->g_123 <= 2); p_2643->g_123 += 1)
                { /* block id: 1280 */
                    int16_t *l_2426 = &p_2643->g_249[0][2];
                    uint64_t *l_2429 = &p_2643->g_136;
                    int8_t *l_2437 = (void*)0;
                    int32_t l_2461 = 0x7DC1C77BL;
                    int32_t l_2467 = 1L;
                    int32_t ****l_2471 = &p_2643->g_455;
                    int i, j, k;
                    l_2422 = p_15;
                    if ((safe_lshift_func_int16_t_s_u(((*l_2426) |= (l_2425 |= (0L <= p_2643->g_462[p_2643->g_123][p_2643->g_829][(p_2643->g_136 + 1)]))), ((0x77585E89L < ((((+(+((((p_15 == l_2401) < ((safe_mul_func_uint16_t_u_u(((l_2395 = (((void*)0 != l_2429) < (((safe_div_func_int8_t_s_s(p_2643->g_462[p_2643->g_123][p_2643->g_136][p_2643->g_123], (safe_mod_func_int64_t_s_s((((safe_lshift_func_int8_t_s_s((((void*)0 != l_2436[0]) < 0x08AEA2BE567B687DL), p_2643->g_462[p_2643->g_123][(p_2643->g_829 + 1)][(p_2643->g_136 + 1)])) , p_2643->g_462[p_2643->g_100][p_2643->g_123][p_2643->g_100]) || FAKE_DIVERGE(p_2643->group_0_offset, get_group_id(0), 10)), p_2643->g_21)))) < l_2410) && p_14))) == p_16), l_2421)) >= 0x90L)) , p_13) , p_13))) , (*l_2422)) < (*p_15)) > FAKE_DIVERGE(p_2643->global_0_offset, get_global_id(0), 10))) > 0x2B59L))))
                    { /* block id: 1285 */
                        int16_t l_2438 = 0x1528L;
                        int64_t *l_2442[8][3] = {{&p_2643->g_120,(void*)0,(void*)0},{&p_2643->g_120,(void*)0,(void*)0},{&p_2643->g_120,(void*)0,(void*)0},{&p_2643->g_120,(void*)0,(void*)0},{&p_2643->g_120,(void*)0,(void*)0},{&p_2643->g_120,(void*)0,(void*)0},{&p_2643->g_120,(void*)0,(void*)0},{&p_2643->g_120,(void*)0,(void*)0}};
                        uint64_t *l_2447 = &p_2643->g_2398;
                        int32_t *l_2452 = &p_2643->g_188[0];
                        int32_t *l_2453 = &p_2643->g_21;
                        int32_t *l_2454 = (void*)0;
                        int32_t *l_2455 = &p_2643->g_21;
                        int32_t *l_2456 = (void*)0;
                        int32_t *l_2458[2];
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_2458[i] = &l_2457[2][1][1];
                        (*p_2643->g_381) = (((l_2438 , ((((safe_mod_func_int8_t_s_s(((((GROUP_DIVERGE(0, 1) != ((*l_2401) = (((safe_unary_minus_func_int8_t_s(7L)) , ((((p_13 = p_16) & ((((*l_2447) &= (safe_rshift_func_int8_t_s_u((safe_mod_func_uint8_t_u_u((*p_2643->g_408), p_16)), (p_16 & l_2438)))) , l_2448) == ((**p_2643->g_626) , (void*)0))) , (***p_2643->g_1409)) , (*l_2422))) != 0x7BEDL))) == p_16) > p_14) , 0L), l_2438)) == l_2410) <= p_14) != 1L)) & l_2449[5][1][4]) ^ p_16);
                        if ((*p_15))
                            break;
                        --l_2468;
                        (*l_2455) = (l_2471 != (void*)0);
                    }
                    else
                    { /* block id: 1293 */
                        (*p_2643->g_2472) = p_15;
                        return (*p_2643->g_797);
                    }
                    p_15 = (*p_2643->g_2267);
                }
                if ((*p_15))
                    continue;
                if ((*p_15))
                    break;
                for (p_2643->g_105 = 3; (p_2643->g_105 >= 0); p_2643->g_105 -= 1)
                { /* block id: 1303 */
                    uint64_t l_2496 = 0x5EFCB85FF7373A07L;
                    for (p_2643->g_1321 = 3; (p_2643->g_1321 >= 0); p_2643->g_1321 -= 1)
                    { /* block id: 1306 */
                        uint8_t l_2501 = 1UL;
                        uint8_t l_2502[9] = {0x5CL,0x5CL,0x5CL,0x5CL,0x5CL,0x5CL,0x5CL,0x5CL,0x5CL};
                        int32_t *l_2505 = &l_2459;
                        int i;
                        (*l_2505) |= ((p_2643->g_1238 , ((safe_lshift_func_uint16_t_u_u((((**p_2643->g_2267) = l_2475) , (safe_rshift_func_uint8_t_u_u((++(*p_2643->g_408)), (safe_mul_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(((safe_add_func_uint16_t_u_u((1L == (safe_div_func_uint32_t_u_u((safe_add_func_int8_t_s_s((safe_div_func_int8_t_s_s((0x2948A6B782ADDAF6L | (((((+(safe_mod_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_s(((~l_2496) != (safe_lshift_func_int8_t_s_u(((l_2457[0][4][0] || ((((l_2501 >= p_13) && ((l_2502[6] , l_2503) == l_2504)) , p_16) < p_13)) && 0x78L), l_2502[6]))), 3)) && l_2421), l_2450))) , p_14) , l_2465) , FAKE_DIVERGE(p_2643->local_0_offset, get_local_id(0), 10)) , p_16)), p_14)), p_14)), 0x00BCBA51L))), p_13)) == p_16), p_2643->g_114)), 0xB2L))))), 1)) <= p_13)) <= p_2643->g_1055[9]);
                        if ((**p_2643->g_2472))
                            continue;
                    }
                }
            }
            for (l_2463 = 0; (l_2463 <= 3); l_2463 += 1)
            { /* block id: 1316 */
                int32_t l_2523 = 0x48B97BE7L;
                int32_t l_2524 = 0x5569AF79L;
                uint64_t l_2534 = 0UL;
                int8_t *l_2535 = &p_2643->g_29;
                for (p_2643->g_120 = 1; (p_2643->g_120 >= 0); p_2643->g_120 -= 1)
                { /* block id: 1319 */
                    int32_t l_2526 = 0x5D1C7850L;
                    int i;
                    for (p_2643->g_394 = 3; (p_2643->g_394 >= 0); p_2643->g_394 -= 1)
                    { /* block id: 1322 */
                        int32_t *l_2506 = &p_2643->g_1238;
                        int32_t *l_2507 = (void*)0;
                        int32_t *l_2508 = &p_2643->g_21;
                        int32_t *l_2509 = &l_2425;
                        int32_t *l_2510 = &l_2465;
                        int32_t *l_2511 = &l_2462;
                        int32_t *l_2512 = (void*)0;
                        int32_t *l_2513 = &l_2462;
                        int32_t *l_2514 = &p_2643->g_21;
                        int32_t *l_2515 = &l_2466;
                        int32_t *l_2516 = &l_2465;
                        int32_t *l_2517 = &p_2643->g_1238;
                        int32_t *l_2518 = &p_2643->g_21;
                        int32_t *l_2519 = &l_2450;
                        int32_t *l_2520 = &p_2643->g_21;
                        int32_t *l_2521 = &l_2450;
                        int32_t *l_2522[4] = {&p_2643->g_188[1],&p_2643->g_188[1],&p_2643->g_188[1],&p_2643->g_188[1]};
                        uint8_t l_2528 = 0x85L;
                        int i, j, k;
                        if (p_2643->g_2051[(p_2643->g_136 + 3)])
                            break;
                        l_2528++;
                    }
                    if (p_2643->g_2051[(l_2463 + 1)])
                        break;
                }
            }
        }
        (*p_2643->g_2541) = l_2540[4];
        return p_15;
    }
    for (p_2643->g_1321 = 0; (p_2643->g_1321 <= (-10)); p_2643->g_1321--)
    { /* block id: 1344 */
        int32_t *l_2544[1][3][4] = {{{&p_2643->g_188[1],&p_2643->g_188[1],&p_2643->g_188[1],&p_2643->g_188[1]},{&p_2643->g_188[1],&p_2643->g_188[1],&p_2643->g_188[1],&p_2643->g_188[1]},{&p_2643->g_188[1],&p_2643->g_188[1],&p_2643->g_188[1],&p_2643->g_188[1]}}};
        int32_t ****l_2562 = &p_2643->g_455;
        uint32_t ****l_2587 = &p_2643->g_1018;
        int i, j, k;
        l_2549++;
        if ((*p_15))
            break;
        for (p_2643->g_182 = 11; (p_2643->g_182 > 60); p_2643->g_182 = safe_add_func_int64_t_s_s(p_2643->g_182, 2))
        { /* block id: 1349 */
            int32_t l_2561 = 0x78385001L;
            int32_t ****l_2563 = &p_2643->g_455;
            uint32_t *l_2570 = &p_2643->g_1983[1];
            uint32_t **l_2569 = &l_2570;
            uint32_t ***l_2568 = &l_2569;
            (*p_2643->g_1062) |= ((*p_2643->g_1018) != (*p_2643->g_1018));
            for (p_2643->g_1598 = 15; (p_2643->g_1598 < (-26)); p_2643->g_1598--)
            { /* block id: 1353 */
                return (*p_2643->g_1845);
            }
            for (p_2643->g_394 = 6; (p_2643->g_394 != (-17)); --p_2643->g_394)
            { /* block id: 1358 */
                uint32_t ****l_2558 = (void*)0;
                uint32_t ***l_2560[5][1][4] = {{{&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576}},{{&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576}},{{&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576}},{{&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576}},{{&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576,&p_2643->g_1576}}};
                uint32_t ****l_2559 = &l_2560[2][0][1];
                int32_t l_2573 = 1L;
                uint32_t *****l_2586 = &p_2643->g_1017;
                int i, j, k;
                l_2573 = (((*l_2559) = &p_2643->g_1574) == (l_2572[2] = (((((((*p_2643->g_2257) = (l_2561 , l_2562)) != (((void*)0 != &p_2643->g_1177[3]) , l_2563)) , FAKE_DIVERGE(p_2643->local_1_offset, get_local_id(1), 10)) == (safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(1UL, ((((*p_2643->g_1062) |= (*p_15)) ^ ((((l_2568 != p_2643->g_2571) , p_2643->g_182) , (-3L)) | p_13)) , p_16))), l_2561))) > (-8L)) , (void*)0)));
                for (p_2643->g_89 = 0; (p_2643->g_89 >= 18); ++p_2643->g_89)
                { /* block id: 1366 */
                    return (*p_2643->g_1048);
                }
                (*p_2643->g_381) = ((safe_sub_func_int8_t_s_s((((safe_mod_func_int64_t_s_s((safe_mul_func_int16_t_s_s(p_13, ((safe_unary_minus_func_uint8_t_u((safe_lshift_func_uint8_t_u_s((((*l_2586) = l_2585) != l_2587), p_16)))) != 0x1827CF6DL))), (((*p_2643->g_1575) |= (safe_lshift_func_int8_t_s_u(((safe_add_func_int64_t_s_s(0x2E801A64BEBBE26CL, p_2643->g_188[0])) & p_16), 0))) ^ (safe_lshift_func_uint8_t_u_s(0x96L, l_2561))))) == 255UL) , (-5L)), 255UL)) != p_14);
            }
            if ((*p_15))
                break;
        }
    }
    return (*p_2643->g_2541);
}


/* ------------------------------------------ */
/* 
 * reads : p_2643->g_21 p_2643->g_19 p_2643->g_1845 p_2643->g_381 p_2643->g_11 p_2643->g_1055 p_2643->g_408 p_2643->g_1574 p_2643->g_1575 p_2643->g_123 p_2643->g_625 p_2643->g_626 p_2643->g_627 p_2643->g_628 p_2643->g_182 p_2643->g_89 p_2643->g_1048 p_2643->g_797 p_2643->g_2267 p_2643->g_1306
 * writes: p_2643->g_21 p_2643->g_29 p_2643->g_675 p_2643->g_1358 p_2643->g_2257 p_2643->g_1055 p_2643->g_172 p_2643->g_182 p_2643->g_89 p_2643->g_381 p_2643->g_1062 p_2643->g_1306
 */
uint8_t  func_17(int32_t * p_18, struct S0 * p_2643)
{ /* block id: 5 */
    uint16_t l_27 = 6UL;
    int8_t *l_28 = &p_2643->g_29;
    int32_t *l_33 = &p_2643->g_21;
    uint8_t **l_2273 = &p_2643->g_408;
    int16_t *l_2322 = &p_2643->g_1055[9];
    for (p_2643->g_21 = 0; (p_2643->g_21 > (-5)); p_2643->g_21--)
    { /* block id: 8 */
        int8_t l_24 = (-1L);
        if (l_24)
            break;
    }
    (*l_33) = (p_2643->g_19[0][0] < ((l_27 || ((*l_28) = l_27)) != (safe_div_func_uint64_t_u_u(l_27, 18446744073709551608UL))));
    (*p_2643->g_2267) = ((*p_2643->g_797) = func_34(func_36(p_18, (*l_33), (*l_33), p_2643), p_2643));
    for (p_2643->g_1306 = 0; (p_2643->g_1306 <= 1); p_2643->g_1306++)
    { /* block id: 1180 */
        uint16_t l_2274 = 0UL;
        int32_t *l_2292 = (void*)0;
        uint8_t ***l_2301 = &l_2273;
        int32_t l_2304 = 7L;
        for (p_2643->g_89 = 0; (p_2643->g_89 <= 2); p_2643->g_89 += 1)
        { /* block id: 1183 */
            uint8_t **l_2272[8] = {&p_2643->g_408,&p_2643->g_408,&p_2643->g_408,&p_2643->g_408,&p_2643->g_408,&p_2643->g_408,&p_2643->g_408,&p_2643->g_408};
            int32_t l_2278[7] = {(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)};
            int32_t l_2287[3][8] = {{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L}};
            uint32_t l_2291 = 0UL;
            uint16_t l_2330 = 0x163DL;
            int i, j;
            (1 + 1);
        }
    }
    return (*l_33);
}


/* ------------------------------------------ */
/* 
 * reads : p_2643->g_11 p_2643->g_1055 p_2643->g_408 p_2643->g_1574 p_2643->g_1575 p_2643->g_123 p_2643->g_625 p_2643->g_626 p_2643->g_627 p_2643->g_628 p_2643->g_381 p_2643->g_21 p_2643->g_182 p_2643->g_89 p_2643->g_1048
 * writes: p_2643->g_675 p_2643->g_1358 p_2643->g_2257 p_2643->g_1055 p_2643->g_172 p_2643->g_21 p_2643->g_182 p_2643->g_89
 */
int32_t * func_34(int32_t * p_35, struct S0 * p_2643)
{ /* block id: 1159 */
    uint16_t l_2246[10] = {0xBE84L,0x7353L,0xBE84L,0xBE84L,0x7353L,0xBE84L,0xBE84L,0x7353L,0xBE84L,0xBE84L};
    uint64_t *l_2251 = &p_2643->g_675;
    int32_t *****l_2254 = &p_2643->g_454;
    int32_t ******l_2255 = &p_2643->g_1358[6][0][1];
    int32_t ******l_2256[9];
    int16_t *l_2258 = &p_2643->g_1055[3];
    int i;
    for (i = 0; i < 9; i++)
        l_2256[i] = (void*)0;
    (*p_2643->g_381) &= ((FAKE_DIVERGE(p_2643->group_1_offset, get_group_id(1), 10) < (!(l_2246[3] , (safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((-1L), ((((*l_2251) = p_2643->g_11) ^ ((safe_lshift_func_int16_t_s_s(l_2246[3], ((*l_2258) &= (l_2254 == (p_2643->g_2257 = ((*l_2255) = l_2254)))))) != ((((safe_rshift_func_uint8_t_u_s(((*p_2643->g_408) = 1UL), 4)) | ((safe_lshift_func_uint16_t_u_u(65534UL, 15)) , ((**p_2643->g_1574) || l_2246[3]))) == l_2246[2]) != 249UL))) != (***p_2643->g_625)))), l_2246[3]))))) || GROUP_DIVERGE(0, 1));
    for (p_2643->g_182 = 0; (p_2643->g_182 != 3); p_2643->g_182++)
    { /* block id: 1168 */
        for (p_2643->g_89 = 0; (p_2643->g_89 != 43); ++p_2643->g_89)
        { /* block id: 1171 */
            return p_35;
        }
    }
    return (*p_2643->g_1048);
}


/* ------------------------------------------ */
/* 
 * reads : p_2643->g_1845 p_2643->g_381
 * writes:
 */
int32_t * func_36(int32_t * p_37, uint64_t  p_38, uint32_t  p_39, struct S0 * p_2643)
{ /* block id: 13 */
    int8_t *l_44 = (void*)0;
    int32_t l_55[7][4] = {{1L,0L,0L,1L},{1L,0L,0L,1L},{1L,0L,0L,1L},{1L,0L,0L,1L},{1L,0L,0L,1L},{1L,0L,0L,1L},{1L,0L,0L,1L}};
    int32_t l_58 = 0x65FBC01DL;
    uint16_t *l_1076 = &p_2643->g_628[0][4];
    uint8_t l_1404[4] = {0xEDL,0xEDL,0xEDL,0xEDL};
    int32_t **l_1408 = &p_2643->g_273;
    int32_t *l_1446[4][2] = {{&p_2643->g_11,&p_2643->g_188[0]},{&p_2643->g_11,&p_2643->g_188[0]},{&p_2643->g_11,&p_2643->g_188[0]},{&p_2643->g_11,&p_2643->g_188[0]}};
    uint64_t *l_1454[7][3][9] = {{{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136}},{{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136}},{{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136}},{{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136}},{{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136}},{{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136}},{{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136},{(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,(void*)0,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136,&p_2643->g_136}}};
    uint64_t **l_1453 = &l_1454[0][0][0];
    int32_t *l_1477[2][2];
    uint8_t l_1512 = 1UL;
    int16_t ***l_1682 = &p_2643->g_185[1][1][0];
    int32_t l_1720[5] = {0x1D988CD6L,0x1D988CD6L,0x1D988CD6L,0x1D988CD6L,0x1D988CD6L};
    int16_t l_1742[6][9][4] = {{{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)}},{{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)}},{{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)}},{{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)}},{{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)}},{{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)},{0L,0x0ACBL,6L,(-1L)}}};
    uint64_t l_1760 = 0x7D26CA36173D64C5L;
    uint32_t *l_1778 = &p_2643->g_829;
    int32_t ****l_1795 = &p_2643->g_455;
    int32_t l_1817 = (-1L);
    int64_t l_1830[6] = {0x73BD0260C4036C84L,(-2L),0x73BD0260C4036C84L,0x73BD0260C4036C84L,(-2L),0x73BD0260C4036C84L};
    int16_t ****l_1862[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t ******l_1871 = &p_2643->g_1358[4][0][3];
    int32_t l_1911 = 0x24354D0BL;
    int8_t *l_1928 = &p_2643->g_29;
    uint32_t **l_2043 = &p_2643->g_255[4];
    uint16_t l_2046[7][3] = {{0xD920L,0x54BAL,0xEF5BL},{0xD920L,0x54BAL,0xEF5BL},{0xD920L,0x54BAL,0xEF5BL},{0xD920L,0x54BAL,0xEF5BL},{0xD920L,0x54BAL,0xEF5BL},{0xD920L,0x54BAL,0xEF5BL},{0xD920L,0x54BAL,0xEF5BL}};
    uint64_t *l_2047 = &l_1760;
    uint64_t *l_2048 = &p_2643->g_100;
    int32_t l_2049 = (-1L);
    int64_t l_2050[9] = {0x2B407BED13A7702FL,0x2B407BED13A7702FL,0x2B407BED13A7702FL,0x2B407BED13A7702FL,0x2B407BED13A7702FL,0x2B407BED13A7702FL,0x2B407BED13A7702FL,0x2B407BED13A7702FL,0x2B407BED13A7702FL};
    uint32_t ****l_2067 = &p_2643->g_1018;
    int8_t l_2116 = 0x06L;
    uint16_t l_2168 = 65530UL;
    uint16_t l_2208 = 0xE326L;
    uint8_t *l_2225 = (void*)0;
    int16_t l_2236 = 0x6A42L;
    uint64_t l_2241 = 0xCA8A2A7B49C2B836L;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_1477[i][j] = &p_2643->g_21;
    }
    return (*p_2643->g_1845);
}


/* ------------------------------------------ */
/* 
 * reads : p_2643->g_1158 p_2643->g_151 p_2643->g_552 p_2643->g_1062
 * writes: p_2643->g_188
 */
int32_t  func_40(int8_t * p_41, int8_t  p_42, int8_t * p_43, struct S0 * p_2643)
{ /* block id: 713 */
    int64_t l_1385[1][7] = {{0x63EC4A618C8DEECBL,0x63EC4A618C8DEECBL,0x63EC4A618C8DEECBL,0x63EC4A618C8DEECBL,0x63EC4A618C8DEECBL,0x63EC4A618C8DEECBL,0x63EC4A618C8DEECBL}};
    int32_t *l_1389[2];
    uint32_t l_1397 = 0xD5DF5C60L;
    uint64_t *l_1398[5][10] = {{&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100},{&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100},{&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100},{&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100},{&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100,&p_2643->g_100,&p_2643->g_675,&p_2643->g_100}};
    int32_t l_1399 = (-1L);
    int32_t ****l_1400 = &p_2643->g_455;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1389[i] = &p_2643->g_346;
    (*p_2643->g_1062) = ((safe_mod_func_uint64_t_u_u((((safe_lshift_func_uint8_t_u_s(1UL, ((safe_sub_func_uint8_t_u_u(p_42, (((((safe_rshift_func_uint8_t_u_u(((((((((l_1399 = (+(safe_mod_func_uint32_t_u_u(((l_1385[0][5] , (~(safe_unary_minus_func_int64_t_s(((safe_add_func_uint8_t_u_u(((void*)0 == l_1389[0]), ((((((p_2643->g_1158 , l_1385[0][5]) || (safe_unary_minus_func_int8_t_s((~(safe_mul_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(((*p_43) != l_1397), 65529UL)), l_1385[0][5])))))) > 0xEEE3L) <= l_1385[0][5]) < 0L) != GROUP_DIVERGE(2, 1)))) | p_42))))) == (-1L)), p_42)))) && p_2643->g_552) | 255UL) , l_1400) != l_1400) , p_42) < GROUP_DIVERGE(2, 1)) , 252UL), 0)) >= 0x4D2791BDL) & (-2L)) | l_1385[0][5]) | p_42))) , l_1385[0][5]))) == p_42) && l_1397), l_1385[0][5])) ^ l_1397);
    return p_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_2643->g_626 p_2643->g_627 p_2643->g_628 p_2643->g_729 p_2643->g_408 p_2643->g_172 p_2643->g_497 p_2643->g_21 p_2643->g_272 p_2643->g_273 p_2643->g_182 p_2643->g_1062 p_2643->g_797 p_2643->g_381 p_2643->g_136 p_2643->g_89 p_2643->g_249 p_2643->g_829 p_2643->g_454 p_2643->g_455 p_2643->g_1158 p_2643->g_346 p_2643->g_913 p_2643->g_188 p_2643->g_151 p_2643->g_1177 p_2643->g_1055 p_2643->g_120 p_2643->g_1048 p_2643->g_394 p_2643->g_625 p_2643->g_1238 p_2643->g_1256 p_2643->g_675 p_2643->g_1257 p_2643->g_1306 p_2643->g_100 p_2643->g_462 p_2643->g_123
 * writes: p_2643->g_394 p_2643->g_628 p_2643->g_120 p_2643->g_462 p_2643->g_552 p_2643->g_188 p_2643->g_89 p_2643->g_829 p_2643->g_172 p_2643->g_21 p_2643->g_678 p_2643->g_1177 p_2643->g_381 p_2643->g_675 p_2643->g_186 p_2643->g_598 p_2643->g_1306 p_2643->g_100 p_2643->g_272
 */
int8_t  func_45(int64_t  p_46, int8_t  p_47, int8_t * p_48, int64_t  p_49, int16_t  p_50, struct S0 * p_2643)
{ /* block id: 576 */
    int32_t l_1087 = 0x5CC5DB71L;
    int32_t l_1090[6];
    int32_t *l_1097 = &p_2643->g_188[0];
    uint32_t **l_1099 = &p_2643->g_255[2];
    int8_t l_1137 = 0x43L;
    int32_t ***l_1153 = &p_2643->g_272;
    uint32_t *l_1171 = (void*)0;
    int32_t l_1183[10][10][2] = {{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}},{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}},{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}},{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}},{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}},{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}},{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}},{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}},{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}},{{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L},{(-5L),0x681F1524L}}};
    int64_t l_1237 = 0x5A567E8C01572488L;
    uint64_t l_1255 = 2UL;
    int32_t l_1295[8] = {0x145774DDL,0x1F10FE8AL,0x145774DDL,0x145774DDL,0x1F10FE8AL,0x145774DDL,0x145774DDL,0x1F10FE8AL};
    int32_t *****l_1354 = &p_2643->g_454;
    int16_t l_1374 = 0x5509L;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1090[i] = (-1L);
    if ((+(safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s(((safe_sub_func_int64_t_s_s(((safe_add_func_uint16_t_u_u(((**p_2643->g_626) ^= (p_46 | (((((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_2643->global_2_offset, get_global_id(2), 10), p_49)) < l_1087) != (p_2643->g_394 = ((l_1090[1] = (safe_div_func_uint16_t_u_u(l_1087, l_1087))) || ((safe_mul_func_int8_t_s_s(l_1090[0], (&p_2643->g_273 == (void*)0))) ^ ((((safe_div_func_int16_t_s_s((-1L), l_1090[3])) ^ p_49) < l_1087) >= (-1L)))))) < (-6L)) | GROUP_DIVERGE(0, 1)))), l_1087)) == p_2643->g_729), p_50)) > l_1087), l_1087)), 0x02CAL))))
    { /* block id: 580 */
        int32_t *l_1095 = &p_2643->g_21;
        int32_t **l_1096[7];
        uint32_t **l_1098 = &p_2643->g_255[3];
        int64_t *l_1100[7][6][6] = {{{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394}},{{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394}},{{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394}},{{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394}},{{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394}},{{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394}},{{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394},{&p_2643->g_394,&p_2643->g_394,(void*)0,&p_2643->g_394,&p_2643->g_120,&p_2643->g_394}}};
        int32_t ****l_1103[10][8][3] = {{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}},{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}},{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}},{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}},{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}},{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}},{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}},{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}},{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}},{{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455},{&p_2643->g_455,&p_2643->g_455,&p_2643->g_455}}};
        int8_t *l_1104 = (void*)0;
        int8_t *l_1105 = (void*)0;
        int8_t *l_1106 = &p_2643->g_462[2][0][0];
        int16_t l_1107[4][4][4] = {{{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL}},{{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL}},{{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL}},{{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL},{0x4517L,0x49BCL,0L,0x49BCL}}};
        uint32_t ****l_1108 = &p_2643->g_1018;
        uint8_t *l_1109 = &p_2643->g_552;
        uint32_t l_1124 = 4294967294UL;
        uint16_t l_1159 = 0x6EF6L;
        int32_t l_1176 = (-1L);
        uint8_t **l_1201 = &l_1109;
        int32_t *l_1214 = &l_1176;
        int16_t ***l_1372 = &p_2643->g_185[1][1][0];
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_1096[i] = &l_1095;
        l_1097 = l_1095;
        (*p_2643->g_1062) = ((((l_1099 = l_1098) == (void*)0) , ((((p_50 , ((FAKE_DIVERGE(p_2643->local_1_offset, get_local_id(1), 10) <= ((*p_2643->g_408) | ((*l_1109) = (p_49 || ((((+((((p_2643->g_120 = (p_46 = p_2643->g_497)) , ((*l_1097) , (((*l_1106) = (safe_rshift_func_int16_t_s_s((((l_1097 == (*p_2643->g_272)) , l_1103[3][5][1]) != (void*)0), 5))) , (-6L)))) ^ l_1107[1][2][0]) || 0x61BB8FA5L)) , l_1108) != l_1108) ^ 0UL))))) || (*l_1097))) ^ p_49) || p_47) > p_49)) || p_2643->g_182);
        if ((((*l_1097) || (*l_1097)) ^ ((~(safe_rshift_func_uint16_t_u_u(((*l_1097) == p_49), 1))) & (~(((**p_2643->g_797) <= (0x1F9D67504635D9CDL >= (safe_lshift_func_uint16_t_u_u((**p_2643->g_626), 4)))) < p_2643->g_136)))))
        { /* block id: 588 */
            uint16_t ***l_1136[4][9] = {{&p_2643->g_626,&p_2643->g_626,&p_2643->g_626,(void*)0,&p_2643->g_626,&p_2643->g_626,(void*)0,(void*)0,(void*)0},{&p_2643->g_626,&p_2643->g_626,&p_2643->g_626,(void*)0,&p_2643->g_626,&p_2643->g_626,(void*)0,(void*)0,(void*)0},{&p_2643->g_626,&p_2643->g_626,&p_2643->g_626,(void*)0,&p_2643->g_626,&p_2643->g_626,(void*)0,(void*)0,(void*)0},{&p_2643->g_626,&p_2643->g_626,&p_2643->g_626,(void*)0,&p_2643->g_626,&p_2643->g_626,(void*)0,(void*)0,(void*)0}};
            uint16_t ****l_1135 = &l_1136[3][5];
            int32_t l_1140 = 7L;
            int32_t ***l_1151 = &p_2643->g_272;
            uint32_t *l_1152 = &l_1124;
            int32_t *l_1160 = &p_2643->g_188[1];
            int i, j;
            for (p_2643->g_89 = (-6); (p_2643->g_89 >= 57); p_2643->g_89++)
            { /* block id: 591 */
                int32_t l_1138 = 1L;
                uint32_t *l_1139 = &p_2643->g_829;
                (*l_1095) = (l_1140 &= (safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(((*p_2643->g_408) = ((safe_mul_func_int16_t_s_s(((*l_1097) > (safe_add_func_int64_t_s_s(l_1124, (p_46 &= (safe_add_func_int64_t_s_s((((*l_1139) &= ((0L & p_49) || (safe_mod_func_uint64_t_u_u((safe_div_func_uint32_t_u_u((p_49 != p_47), (l_1090[1] &= ((((0xAF036F36L <= (safe_sub_func_uint8_t_u_u(((4294967290UL | ((*p_2643->g_1062) = (safe_rshift_func_uint16_t_u_u((l_1135 == &p_2643->g_625), l_1137)))) & 0x54L), 3UL))) ^ p_2643->g_628[0][0]) && 0x6565L) | l_1138)))), p_2643->g_249[0][5])))) | p_49), p_50)))))), 0L)) ^ p_47)), 7)), 65532UL)));
            }
            if ((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s((safe_div_func_int64_t_s_s(((l_1151 != (l_1153 = ((((*p_2643->g_381) &= (p_46 , 0x1647DBCAL)) , ((*l_1152) = p_2643->g_136)) , (*p_2643->g_454)))) != 2L), (safe_div_func_uint32_t_u_u(((safe_div_func_int32_t_s_s((0x0E47805CL <= p_46), ((*p_2643->g_1062) = p_46))) == p_47), p_50)))), p_49)) || p_2643->g_1158), p_2643->g_346)), l_1159)), p_50)))
            { /* block id: 604 */
                l_1160 = &l_1090[1];
            }
            else
            { /* block id: 606 */
                uint64_t *l_1163 = &p_2643->g_136;
                uint32_t **l_1168 = (void*)0;
                uint32_t *l_1170[9][1] = {{&p_2643->g_89},{&p_2643->g_89},{&p_2643->g_89},{&p_2643->g_89},{&p_2643->g_89},{&p_2643->g_89},{&p_2643->g_89},{&p_2643->g_89},{&p_2643->g_89}};
                uint32_t **l_1169 = &l_1170[0][0];
                uint32_t *l_1173 = &p_2643->g_829;
                uint32_t **l_1172 = &l_1173;
                int i, j;
                p_2643->g_678[7] = &l_1160;
                p_2643->g_1177[2] |= ((safe_mod_func_int32_t_s_s((0L && ((((+(((((&p_2643->g_136 != l_1163) ^ p_49) == (p_2643->g_913 > (safe_rshift_func_uint16_t_u_s((safe_div_func_uint8_t_u_u(((l_1171 = ((*l_1169) = l_1095)) != ((*l_1172) = l_1095)), (safe_mul_func_uint16_t_u_u((((((-1L) ^ (((!(*l_1160)) | p_47) , (*l_1097))) == p_50) != (-1L)) , (**p_2643->g_626)), (*l_1160))))), (*l_1097))))) | p_49) && (*l_1097))) > p_2643->g_151) ^ l_1176) | GROUP_DIVERGE(1, 1))), (*p_2643->g_1062))) && (*l_1160));
            }
        }
        else
        { /* block id: 613 */
            int32_t l_1180 = 0x3286F026L;
            uint32_t l_1193 = 0xF9AA39ECL;
            uint16_t ***l_1203 = &p_2643->g_626;
            int32_t **l_1204 = &p_2643->g_381;
            int16_t *l_1228 = &p_2643->g_249[0][5];
            int32_t l_1240 = 0x2CA3302EL;
            int32_t l_1245 = 0x00A80669L;
            int32_t l_1248 = 0x2678BC1AL;
            int32_t l_1249 = 0x5A24F859L;
            int32_t l_1250 = 9L;
            uint32_t l_1268 = 0x4BE412ADL;
            int32_t l_1275 = (-2L);
            int32_t l_1301 = 0x6A323492L;
            int32_t l_1302 = 1L;
            for (p_49 = 0; (p_49 >= 5); p_49++)
            { /* block id: 616 */
                uint16_t *l_1184[10];
                int32_t l_1185 = 6L;
                uint16_t ***l_1191 = &p_2643->g_626;
                uint16_t ****l_1190 = &l_1191;
                int32_t l_1192 = 0x16C3CCA5L;
                int i;
                for (i = 0; i < 10; i++)
                    l_1184[i] = &l_1159;
                if (p_50)
                    break;
                (*l_1095) = (p_49 == ((((p_2643->g_394 = p_2643->g_1055[9]) , ((l_1180 != (++(**p_2643->g_626))) ^ l_1183[6][7][1])) >= ((**p_2643->g_797) == (*p_2643->g_381))) != ((((l_1185 = 0xAC90L) == (-7L)) != (safe_mul_func_int8_t_s_s((safe_mod_func_int32_t_s_s((l_1192 = (l_1190 == (void*)0)), (*l_1097))), 6L))) | 0x47D6F5B8L)));
                return p_47;
            }
            if (l_1193)
            { /* block id: 625 */
                int16_t l_1202[8] = {2L,2L,2L,2L,2L,2L,2L,2L};
                int32_t ****l_1239 = (void*)0;
                int32_t l_1241 = 0x39569BCDL;
                int32_t l_1243[1][3];
                uint8_t l_1252 = 0x88L;
                int32_t **l_1281 = &p_2643->g_273;
                int8_t *l_1287[1];
                uint64_t l_1289 = 0xF194556FC0413B2FL;
                int8_t l_1298 = 9L;
                int32_t l_1299 = 0x0897C381L;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_1243[i][j] = (-1L);
                }
                for (i = 0; i < 1; i++)
                    l_1287[i] = &p_2643->g_462[0][1][1];
                for (p_2643->g_120 = 0; (p_2643->g_120 >= (-15)); --p_2643->g_120)
                { /* block id: 628 */
                    int32_t *l_1196 = &l_1090[4];
                    int16_t *l_1205[5] = {&l_1107[0][0][1],&l_1107[0][0][1],&l_1107[0][0][1],&l_1107[0][0][1],&l_1107[0][0][1]};
                    int i;
                    l_1196 = &l_1183[6][7][1];
                    (*l_1095) = ((p_2643->g_1177[2] = (*l_1097)) , (safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s((((+(l_1201 == ((p_47 , l_1202[1]) , &l_1109))) , l_1203) == &p_2643->g_626), p_49)), ((p_50 ^= (&l_1097 == l_1204)) > (**p_2643->g_626)))));
                    (*p_2643->g_1062) ^= ((safe_div_func_int16_t_s_s(((**p_2643->g_1048) || (**l_1204)), (safe_div_func_uint32_t_u_u(((-5L) && ((((safe_rshift_func_int16_t_s_u(((void*)0 != &l_1205[3]), (p_46 > (((((((0x58L == GROUP_DIVERGE(0, 1)) , ((safe_div_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), 1L)) && 0x1327F7F7L)) > (*l_1196)) && FAKE_DIVERGE(p_2643->global_2_offset, get_global_id(2), 10)) < 0xB06DEFEFAD52B201L) <= 0xF745L) & p_49)))) < (*l_1196)) || 0x67L) > 0UL)), p_50)))) < FAKE_DIVERGE(p_2643->local_2_offset, get_local_id(2), 10));
                    l_1214 = ((*l_1204) = (*p_2643->g_1048));
                }
                (*p_2643->g_1062) = (*l_1097);
                for (p_2643->g_394 = (-12); (p_2643->g_394 < 6); p_2643->g_394 = safe_add_func_uint64_t_u_u(p_2643->g_394, 3))
                { /* block id: 640 */
                    uint64_t *l_1223 = &p_2643->g_675;
                    int16_t **l_1229 = &p_2643->g_186;
                    int8_t l_1236 = 0L;
                    int32_t l_1242 = 0x2D3C6E2DL;
                    int32_t l_1244 = (-1L);
                    int32_t l_1246 = 7L;
                    int32_t l_1247 = (-1L);
                    int32_t l_1251[2];
                    int16_t ***l_1272 = &l_1229;
                    int32_t **l_1280 = &p_2643->g_273;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1251[i] = 0x17A94FC3L;
                    (*p_2643->g_1062) |= ((safe_add_func_uint16_t_u_u(((***p_2643->g_625) == GROUP_DIVERGE(0, 1)), ((safe_mod_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((((((*l_1223) = GROUP_DIVERGE(0, 1)) >= ((((((safe_lshift_func_uint16_t_u_s((((safe_add_func_uint16_t_u_u((l_1228 == ((*l_1229) = &p_50)), (safe_sub_func_int8_t_s_s(((((0xEC45CEC800B92793L ^ p_49) ^ (*l_1095)) , (((safe_add_func_int32_t_s_s((((((void*)0 != (*p_2643->g_272)) > (((l_1236 , (*p_2643->g_381)) || (*l_1097)) >= p_2643->g_628[0][0])) || (*l_1097)) >= 0x67AEL), (*p_2643->g_381))) | 18446744073709551611UL) || l_1236)) | 9UL), p_46)))) == l_1237) >= p_2643->g_1238), (**l_1204))) == p_50) & p_47) , &p_2643->g_455) != l_1239) & p_46)) ^ 0x0C89L) <= FAKE_DIVERGE(p_2643->group_0_offset, get_group_id(0), 10)), FAKE_DIVERGE(p_2643->group_2_offset, get_group_id(2), 10))), p_49)) != (**l_1204)))) >= p_50);
                    --l_1252;
                    if ((l_1255 <= ((p_2643->g_1256[0] != (void*)0) > p_47)))
                    { /* block id: 645 */
                        uint16_t ***l_1266[10][2] = {{&p_2643->g_626,(void*)0},{&p_2643->g_626,(void*)0},{&p_2643->g_626,(void*)0},{&p_2643->g_626,(void*)0},{&p_2643->g_626,(void*)0},{&p_2643->g_626,(void*)0},{&p_2643->g_626,(void*)0},{&p_2643->g_626,(void*)0},{&p_2643->g_626,(void*)0},{&p_2643->g_626,(void*)0}};
                        uint16_t ****l_1267 = &l_1203;
                        int16_t ***l_1271 = (void*)0;
                        int8_t **l_1284 = &p_2643->g_598[4][0];
                        int32_t *l_1288 = &p_2643->g_1238;
                        int i, j;
                        (*p_2643->g_1062) = ((safe_mod_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(0xAEAB8BEDF79F90AAL, p_2643->g_675)), (safe_sub_func_int8_t_s_s((((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_2643->group_2_offset, get_group_id(2), 10), (((*l_1267) = l_1266[0][0]) != (void*)0))) , (***p_2643->g_625)) || l_1268), (((safe_add_func_int8_t_s_s(0x72L, ((l_1272 = l_1271) == (void*)0))) , 0x794D085D77A05471L) , p_49))))) || p_47);
                        l_1288 = ((safe_div_func_int8_t_s_s(0x63L, (((((((l_1275 == 18446744073709551615UL) > (safe_rshift_func_uint8_t_u_u((((safe_mul_func_uint16_t_u_u((l_1280 != l_1281), (((safe_lshift_func_uint8_t_u_s(0x59L, ((((*l_1284) = &p_2643->g_29) == ((0xC928L == (((((((+(safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2643->global_2_offset, get_global_id(2), 10), ((*p_2643->g_1257) , 0x43L)))) <= 0x3613L) | 0x450CL) != 0x54L) , (*l_1214)) == p_49) , p_47)) , (void*)0)) || (-8L)))) != p_50) < 0x90A3F6B1DFB89A57L))) <= 4294967295UL) , (*l_1097)), 6))) , l_1287[0]) != &p_2643->g_462[0][1][1]) != l_1242) < p_46) , p_46))) , (*p_2643->g_1048));
                        --l_1289;
                    }
                    else
                    { /* block id: 652 */
                        uint32_t l_1292 = 0x7D64EFA0L;
                        int32_t l_1296 = (-3L);
                        int32_t l_1297[9][1] = {{0x0F99A1C7L},{0x0F99A1C7L},{0x0F99A1C7L},{0x0F99A1C7L},{0x0F99A1C7L},{0x0F99A1C7L},{0x0F99A1C7L},{0x0F99A1C7L},{0x0F99A1C7L}};
                        int64_t l_1300 = 1L;
                        uint32_t l_1303 = 0x5A41D724L;
                        int i, j;
                        l_1292++;
                        l_1303--;
                        p_2643->g_1306--;
                        (*p_2643->g_1062) ^= 0L;
                    }
                }
            }
            else
            { /* block id: 659 */
                uint32_t l_1312 = 0x7BFB48F8L;
                int32_t l_1318 = (-1L);
                int32_t l_1319[7][1][7] = {{{4L,0L,(-1L),(-1L),(-1L),0L,4L}},{{4L,0L,(-1L),(-1L),(-1L),0L,4L}},{{4L,0L,(-1L),(-1L),(-1L),0L,4L}},{{4L,0L,(-1L),(-1L),(-1L),0L,4L}},{{4L,0L,(-1L),(-1L),(-1L),0L,4L}},{{4L,0L,(-1L),(-1L),(-1L),0L,4L}},{{4L,0L,(-1L),(-1L),(-1L),0L,4L}}};
                int i, j, k;
                (*p_2643->g_1048) = &l_1183[6][7][1];
                for (p_2643->g_89 = (-9); (p_2643->g_89 >= 54); p_2643->g_89 = safe_add_func_int16_t_s_s(p_2643->g_89, 6))
                { /* block id: 663 */
                    uint32_t **l_1311[2];
                    int32_t l_1317 = 5L;
                    int32_t l_1320 = (-5L);
                    int32_t l_1322 = (-1L);
                    int32_t l_1323 = 1L;
                    int32_t l_1324[1];
                    uint64_t l_1325 = 0x504EF6504921657FL;
                    int32_t *l_1328 = &l_1183[6][7][1];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1311[i] = &l_1171;
                    for (i = 0; i < 1; i++)
                        l_1324[i] = 0x2ED68065L;
                    (1 + 1);
                }
                (**l_1204) = ((**p_2643->g_626) >= p_50);
                for (l_1255 = 0; (l_1255 < 4); l_1255++)
                { /* block id: 681 */
                    uint64_t *l_1335 = &p_2643->g_100;
                    int32_t l_1340 = 0x53670767L;
                    uint64_t *l_1347 = &p_2643->g_136;
                    uint64_t **l_1346 = &l_1347;
                    int32_t ******l_1355 = (void*)0;
                    int32_t ******l_1356 = (void*)0;
                    int32_t ******l_1357 = &l_1354;
                    uint32_t *l_1361 = (void*)0;
                    uint32_t *l_1362 = &l_1193;
                    (*p_2643->g_381) = ((safe_div_func_int64_t_s_s(((p_49 == ((safe_add_func_int64_t_s_s(0L, (++(*l_1335)))) > (~0x1BL))) == (p_50 , (p_49 && (**l_1204)))), p_2643->g_462[0][1][1])) > (((safe_add_func_uint64_t_u_u((0x140EB3C8779F4BA1L < l_1340), 8L)) <= p_46) , (**l_1204)));
                }
            }
            (*l_1214) = (((*l_1214) , (*l_1097)) < p_2643->g_123);
        }
        l_1097 = ((*p_2643->g_797) = (*p_2643->g_797));
    }
    else
    { /* block id: 707 */
        (*p_2643->g_1062) = ((((*l_1153) = (*l_1153)) == (void*)0) , ((*p_2643->g_381) = (((&l_1171 != (void*)0) , &p_46) != (void*)0)));
    }
    return p_50;
}


/* ------------------------------------------ */
/* 
 * reads : p_2643->g_29 p_2643->g_89 p_2643->g_797 p_2643->g_381 p_2643->g_21 p_2643->g_408 p_2643->g_172 p_2643->g_123 p_2643->g_182 p_2643->g_114 p_2643->g_626 p_2643->g_627 p_2643->g_628 p_2643->g_11 p_2643->g_913 p_2643->g_394 p_2643->g_120 p_2643->g_946 p_2643->g_188 p_2643->g_100 p_2643->g_729 p_2643->g_1012 p_2643->g_1017 p_2643->g_105 p_2643->g_1048 p_2643->g_1050 p_2643->g_625 p_2643->g_126
 * writes: p_2643->g_29 p_2643->g_89 p_2643->g_552 p_2643->g_172 p_2643->g_123 p_2643->g_21 p_2643->g_829 p_2643->g_182 p_2643->g_628 p_2643->g_675 p_2643->g_901 p_2643->g_188 p_2643->g_627 p_2643->g_100 p_2643->g_254 p_2643->g_381 p_2643->g_126
 */
uint16_t  func_65(int32_t * p_66, int32_t  p_67, int32_t * p_68, int32_t  p_69, struct S0 * p_2643)
{ /* block id: 15 */
    uint32_t l_84 = 4294967295UL;
    int8_t *l_86[1][7][5] = {{{(void*)0,&p_2643->g_29,&p_2643->g_29,(void*)0,&p_2643->g_29},{(void*)0,&p_2643->g_29,&p_2643->g_29,(void*)0,&p_2643->g_29},{(void*)0,&p_2643->g_29,&p_2643->g_29,(void*)0,&p_2643->g_29},{(void*)0,&p_2643->g_29,&p_2643->g_29,(void*)0,&p_2643->g_29},{(void*)0,&p_2643->g_29,&p_2643->g_29,(void*)0,&p_2643->g_29},{(void*)0,&p_2643->g_29,&p_2643->g_29,(void*)0,&p_2643->g_29},{(void*)0,&p_2643->g_29,&p_2643->g_29,(void*)0,&p_2643->g_29}}};
    int64_t l_680[5];
    int32_t ***l_696 = &p_2643->g_272;
    int32_t l_700[6] = {0L,1L,0L,0L,1L,0L};
    int32_t l_701 = 0x3058D5B9L;
    uint16_t l_731 = 0xF029L;
    int32_t **l_789 = &p_2643->g_273;
    int16_t **l_840 = &p_2643->g_186;
    int32_t l_849 = 0x186FAB09L;
    int8_t l_888 = 0x24L;
    uint8_t ***l_958 = &p_2643->g_407[1][0][0];
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_680[i] = (-1L);
    for (p_2643->g_29 = (-24); (p_2643->g_29 != (-6)); p_2643->g_29 = safe_add_func_uint16_t_u_u(p_2643->g_29, 9))
    { /* block id: 18 */
        int8_t *l_85 = &p_2643->g_29;
        int32_t l_87 = 0x5C01CF56L;
        uint32_t *l_88 = &p_2643->g_89;
        int32_t *l_92 = (void*)0;
        int32_t *l_93 = &p_2643->g_94;
        int32_t l_720 = (-8L);
        int32_t l_743 = 1L;
        int32_t l_745 = (-10L);
        int8_t l_771 = 1L;
        int32_t l_775[8][6][5] = {{{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)}},{{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)}},{{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)}},{{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)}},{{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)}},{{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)}},{{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)}},{{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L)}}};
        uint16_t l_778 = 0x6702L;
        int i, j, k;
        (1 + 1);
    }
    for (p_2643->g_89 = 0; (p_2643->g_89 == 27); p_2643->g_89++)
    { /* block id: 421 */
        int32_t ***l_815 = &p_2643->g_272;
        uint64_t l_826 = 0x2D6A360AA4A9AE15L;
        int16_t **l_841[2];
        uint8_t ***l_852 = &p_2643->g_407[2][0][0];
        uint64_t *l_855[6];
        int32_t l_866 = (-1L);
        int32_t l_867[4];
        int64_t l_878 = 0x2E069F239371FEE8L;
        int16_t ***l_898 = (void*)0;
        int16_t ****l_897[3];
        int16_t l_914 = 0x7FCCL;
        uint8_t l_915 = 0x83L;
        uint32_t l_997 = 0x7BA2A724L;
        uint8_t ****l_1003 = &p_2643->g_406;
        uint32_t ***l_1051 = &p_2643->g_254;
        int32_t *l_1054[8] = {&l_866,&l_866,&l_866,&l_866,&l_866,&l_866,&l_866,&l_866};
        uint64_t l_1056[4] = {1UL,1UL,1UL,1UL};
        int i;
        for (i = 0; i < 2; i++)
            l_841[i] = &p_2643->g_186;
        for (i = 0; i < 6; i++)
            l_855[i] = &p_2643->g_136;
        for (i = 0; i < 4; i++)
            l_867[i] = (-8L);
        for (i = 0; i < 3; i++)
            l_897[i] = &l_898;
        if ((**p_2643->g_797))
        { /* block id: 422 */
            int32_t l_819[3];
            uint32_t l_844[2][5] = {{0x20E8A013L,0x20E8A013L,0x20E8A013L,0x20E8A013L,0x20E8A013L},{0x20E8A013L,0x20E8A013L,0x20E8A013L,0x20E8A013L,0x20E8A013L}};
            uint8_t ***l_850 = (void*)0;
            int16_t ****l_899 = &l_898;
            int i, j;
            for (i = 0; i < 3; i++)
                l_819[i] = 0x6BD676EEL;
            for (p_2643->g_552 = 0; (p_2643->g_552 <= 19); ++p_2643->g_552)
            { /* block id: 425 */
                uint32_t *l_816 = (void*)0;
                uint64_t *l_827 = &l_826;
                uint32_t *l_828 = &p_2643->g_829;
                uint8_t *l_830 = &p_2643->g_182;
                uint32_t ***l_831[7] = {&p_2643->g_254,&p_2643->g_254,&p_2643->g_254,&p_2643->g_254,&p_2643->g_254,&p_2643->g_254,&p_2643->g_254};
                int32_t l_843 = (-1L);
                uint8_t ****l_851[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_876 = 0x05DFF684L;
                int i;
                if ((((((*l_830) ^= (safe_mul_func_uint16_t_u_u(((((*l_828) = ((p_69 | (--(*p_2643->g_408))) || ((*l_827) = (((safe_mod_func_int32_t_s_s(((!(safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((p_2643->g_123 ^= ((&p_2643->g_626 != &p_2643->g_626) > ((void*)0 != l_815))) <= (safe_mod_func_int32_t_s_s(l_819[1], (safe_div_func_int8_t_s_s((((*p_2643->g_381) = ((l_819[1] > (p_67 != ((((safe_add_func_uint64_t_u_u((safe_div_func_uint64_t_u_u((!1UL), GROUP_DIVERGE(0, 1))), l_700[4])) ^ 0x18L) , p_69) && p_69))) || 1UL)) || (-2L)), 0x32L))))), l_826)), 0xB0C3L)), 0x78D2L))) && 0x327CL), 0x74979E17L)) , l_819[1]) >= p_67)))) , 0UL) | 0x60L), 65535UL))) , (void*)0) == (void*)0) , l_680[1]))
                { /* block id: 432 */
                    uint64_t l_842 = 4UL;
                    l_843 = (((void*)0 != l_831[0]) , ((safe_mul_func_int16_t_s_s(0x587CL, ((**p_2643->g_626) = (0x386CE6646986D98CL & (safe_mod_func_uint64_t_u_u((p_67 >= (safe_mul_func_int16_t_s_s((p_69 , (safe_mod_func_int8_t_s_s(p_69, (*p_2643->g_408)))), ((l_840 = &p_2643->g_186) == l_841[1])))), p_2643->g_114)))))) | l_842));
                }
                else
                { /* block id: 436 */
                    ++l_844[0][2];
                    (*p_68) |= 0x44706CEFL;
                }
                if ((safe_rshift_func_uint16_t_u_u(l_849, (((2UL <= (((*p_2643->g_381) || ((((((((l_852 = l_850) != l_850) <= ((0L ^ (safe_add_func_int32_t_s_s((l_700[2] && ((p_67 > p_69) < 0x9401L)), p_69))) , p_69)) >= p_67) | l_819[0]) | p_67) , l_855[2]) == (void*)0)) > 0xE9L)) == 255UL) < 0x2E1D6C7332ABB2B2L))))
                { /* block id: 441 */
                    (*p_68) |= l_826;
                }
                else
                { /* block id: 443 */
                    return (**p_2643->g_626);
                }
                for (p_2643->g_675 = 10; (p_2643->g_675 == 16); p_2643->g_675 = safe_add_func_uint64_t_u_u(p_2643->g_675, 9))
                { /* block id: 448 */
                    uint32_t l_879 = 0x79C6C210L;
                    int32_t l_884 = 0x2E1EAE7BL;
                    int32_t l_889[1][5][10] = {{{(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L)},{(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L)},{(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L)},{(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L)},{(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L),0x34A40D0FL,(-1L),(-1L)}}};
                    uint32_t ****l_961 = &l_831[0];
                    uint32_t *****l_962 = &l_961;
                    int i, j, k;
                    for (p_67 = (-17); (p_67 > (-13)); p_67++)
                    { /* block id: 451 */
                        int32_t *l_877[7][8] = {{&p_2643->g_21,(void*)0,&p_2643->g_188[0],(void*)0,&p_2643->g_21,&p_2643->g_21,(void*)0,&p_2643->g_188[0]},{&p_2643->g_21,(void*)0,&p_2643->g_188[0],(void*)0,&p_2643->g_21,&p_2643->g_21,(void*)0,&p_2643->g_188[0]},{&p_2643->g_21,(void*)0,&p_2643->g_188[0],(void*)0,&p_2643->g_21,&p_2643->g_21,(void*)0,&p_2643->g_188[0]},{&p_2643->g_21,(void*)0,&p_2643->g_188[0],(void*)0,&p_2643->g_21,&p_2643->g_21,(void*)0,&p_2643->g_188[0]},{&p_2643->g_21,(void*)0,&p_2643->g_188[0],(void*)0,&p_2643->g_21,&p_2643->g_21,(void*)0,&p_2643->g_188[0]},{&p_2643->g_21,(void*)0,&p_2643->g_188[0],(void*)0,&p_2643->g_21,&p_2643->g_21,(void*)0,&p_2643->g_188[0]},{&p_2643->g_21,(void*)0,&p_2643->g_188[0],(void*)0,&p_2643->g_21,&p_2643->g_21,(void*)0,&p_2643->g_188[0]}};
                        int i, j;
                        (*p_68) = ((safe_sub_func_int32_t_s_s((((safe_mod_func_uint64_t_u_u(p_69, (((safe_mul_func_int16_t_s_s((((p_67 , 0x73L) ^ (l_867[3] = (l_866 = 0x13L))) & 0x742BL), (l_843 || (+(safe_lshift_func_uint8_t_u_u(((((safe_sub_func_int64_t_s_s((safe_rshift_func_int8_t_s_s(1L, 6)), p_67)) , ((**p_2643->g_626)++)) >= 0xD86AL) < l_826), p_69)))))) | l_843) , l_843))) && l_876) , (-1L)), (*p_66))) && p_69);
                        ++l_879;
                        if ((*p_68))
                            break;
                    }
                    for (p_69 = 0; (p_69 > (-22)); p_69--)
                    { /* block id: 461 */
                        int32_t *l_885 = &p_2643->g_188[0];
                        int32_t *l_886 = &l_819[1];
                        int32_t *l_887[4];
                        uint8_t l_890[2];
                        int16_t *****l_900[3][6] = {{&l_899,(void*)0,&l_899,&l_897[2],(void*)0,&l_897[2]},{&l_899,(void*)0,&l_899,&l_897[2],(void*)0,&l_897[2]},{&l_899,(void*)0,&l_899,&l_897[2],(void*)0,&l_897[2]}};
                        int64_t *l_943 = (void*)0;
                        int64_t *l_944 = &l_878;
                        int64_t *l_947 = &l_680[1];
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_887[i] = (void*)0;
                        for (i = 0; i < 2; i++)
                            l_890[i] = 0x16L;
                        l_890[1]--;
                        l_914 ^= (((safe_mul_func_uint8_t_u_u(((*l_830) = (*p_2643->g_408)), ((safe_div_func_int8_t_s_s(((l_889[0][1][9] = (l_897[2] != (p_2643->g_901[5][0] = l_899))) < 0x56L), l_849)) || (safe_lshift_func_uint8_t_u_s(l_884, ((((((((((safe_mul_func_uint8_t_u_u((((safe_mul_func_uint8_t_u_u(((p_69 , 0x67L) == (safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((*p_2643->g_381) &= (l_844[1][1] < (*p_2643->g_408))), p_2643->g_11)), p_69))), 0x1FL)) | GROUP_DIVERGE(1, 1)) | p_2643->g_913), p_69)) ^ p_2643->g_89) >= p_67) <= GROUP_DIVERGE(0, 1)) , (-4L)) ^ l_876) > 255UL) , 0x374861A1D7508977L) == 0x1F971AF8D3BC0A16L) | p_69)))))) <= p_2643->g_394) , (*p_2643->g_381));
                        l_915--;
                        (*l_885) |= (safe_sub_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(0UL, ((safe_mul_func_int8_t_s_s((safe_add_func_uint32_t_u_u((safe_add_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(((l_700[1] = (GROUP_DIVERGE(2, 1) > ((-8L) != ((++(*l_827)) || ((*l_947) = ((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((safe_sub_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_s(((p_69 | p_2643->g_120) , (p_69 >= (safe_unary_minus_func_int16_t_s((FAKE_DIVERGE(p_2643->local_0_offset, get_local_id(0), 10) ^ (safe_rshift_func_int16_t_s_u(((((((*l_944) &= p_2643->g_182) != (safe_unary_minus_func_uint8_t_u((p_2643->g_120 , (0UL == ((**p_2643->g_626) = (+0x3865L))))))) || l_701) > p_67) & 0x03L), 5))))))), p_2643->g_946)) ^ 0x2769AA4494E80104L), FAKE_DIVERGE(p_2643->group_2_offset, get_group_id(2), 10))), 9)), p_69)) ^ 0xF3315F8AFD3CCD43L)))))) & p_69), l_867[0])), (*p_2643->g_408))), 4L)), l_889[0][1][9])) , FAKE_DIVERGE(p_2643->local_2_offset, get_local_id(2), 10)))), l_879));
                    }
                    (*p_2643->g_381) = (((safe_lshift_func_uint8_t_u_s(((*l_830) = 0x83L), 1)) , ((safe_rshift_func_int8_t_s_u(l_867[3], 6)) , (((safe_sub_func_int64_t_s_s(((safe_sub_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((((void*)0 == l_958) > l_849), (((((*p_2643->g_408) = l_731) & ((safe_add_func_uint16_t_u_u((!((((l_876 != l_84) , (((l_914 , &p_2643->g_901[5][0]) == (void*)0) ^ GROUP_DIVERGE(1, 1))) ^ l_680[0]) > 0x4C7CL)), l_876)) == 0xFA7FL)) || l_701) == p_69))), (-8L))) < p_67), l_867[3])) < p_69) <= l_876))) && 0x3F3BL);
                    (*p_2643->g_381) &= (((*l_962) = l_961) != &l_831[0]);
                }
                for (p_2643->g_123 = 27; (p_2643->g_123 != 7); p_2643->g_123--)
                { /* block id: 484 */
                    for (l_914 = 0; (l_914 < (-18)); --l_914)
                    { /* block id: 487 */
                        uint16_t *l_969 = (void*)0;
                        uint64_t *l_970[6] = {&p_2643->g_675,&p_2643->g_675,&p_2643->g_675,&p_2643->g_675,&p_2643->g_675,&p_2643->g_675};
                        int32_t l_971 = (-1L);
                        int i;
                        (*p_2643->g_381) = (safe_add_func_uint64_t_u_u((!((*l_827) = (((*p_2643->g_626) = (*p_2643->g_626)) == l_969))), (p_2643->g_100--)));
                        if (l_971)
                            continue;
                        l_819[1] &= ((*p_68) = ((safe_mod_func_uint8_t_u_u(255UL, GROUP_DIVERGE(2, 1))) <= (safe_lshift_func_uint16_t_u_u((++(**p_2643->g_626)), p_67))));
                    }
                }
            }
        }
        else
        { /* block id: 499 */
            uint64_t *l_982 = &p_2643->g_675;
            int16_t **l_983 = &p_2643->g_186;
            int32_t l_986[9] = {0x437374BEL,0x437374BEL,0x437374BEL,0x437374BEL,0x437374BEL,0x437374BEL,0x437374BEL,0x437374BEL,0x437374BEL};
            uint32_t **l_1011 = &p_2643->g_255[0];
            uint32_t ****l_1021 = (void*)0;
            int i;
            (*p_68) = (safe_lshift_func_int8_t_s_u(3L, (l_982 != &p_2643->g_675)));
            l_983 = l_840;
            if ((((((safe_lshift_func_int8_t_s_u(p_69, 1)) & GROUP_DIVERGE(1, 1)) >= (l_986[7] == p_69)) && (safe_rshift_func_uint16_t_u_s(l_826, 8))) <= l_915))
            { /* block id: 502 */
                if ((*p_68))
                    break;
                return p_67;
            }
            else
            { /* block id: 505 */
                int32_t l_1006 = 7L;
                int32_t l_1043 = 0x4ED511E3L;
                int32_t l_1044 = 0x3947BE07L;
                int16_t **l_1049 = (void*)0;
                if ((**p_2643->g_797))
                    break;
                for (p_67 = 0; (p_67 <= 5); p_67 += 1)
                { /* block id: 509 */
                    int32_t l_1004 = 0x41530B51L;
                    int32_t l_1005 = 9L;
                    uint32_t **l_1009[10][3][5] = {{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}},{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}},{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}},{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}},{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}},{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}},{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}},{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}},{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}},{{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0},{&p_2643->g_255[0],&p_2643->g_255[1],&p_2643->g_255[0],&p_2643->g_255[0],(void*)0}}};
                    int16_t *l_1032 = &l_914;
                    uint32_t l_1045 = 2UL;
                    int i, j, k;
                    (*p_2643->g_381) &= ((0UL >= l_700[p_67]) == (safe_div_func_uint16_t_u_u((!((safe_sub_func_int8_t_s_s(((safe_div_func_uint8_t_u_u(l_700[p_67], (safe_rshift_func_uint16_t_u_s(p_67, 12)))) ^ l_997), (p_2643->g_913 <= (l_986[8] | l_986[7])))) >= 0x3527CBD520B627BDL)), 0x1F8CL)));
                    if ((p_67 , (safe_mul_func_uint16_t_u_u(l_84, (((~p_67) ^ (p_2643->g_729 , (p_69 | ((safe_lshift_func_uint8_t_u_u((((*l_982) = (((safe_unary_minus_func_int8_t_s((l_1004 |= (l_700[p_67] ^= ((*p_2643->g_381) || (((((&p_2643->g_406 == l_1003) ^ (~p_69)) < 0x6D22C26FL) , p_69) || 1L)))))) , l_986[1]) , l_849)) & 1L), p_67)) > l_1005)))) <= l_1006)))))
                    { /* block id: 514 */
                        uint32_t ***l_1010 = &p_2643->g_254;
                        uint32_t *****l_1020[8] = {&p_2643->g_1017,&p_2643->g_1017,&p_2643->g_1017,&p_2643->g_1017,&p_2643->g_1017,&p_2643->g_1017,&p_2643->g_1017,&p_2643->g_1017};
                        int32_t *l_1033 = &p_2643->g_188[0];
                        uint32_t *l_1034 = (void*)0;
                        uint32_t *l_1035 = &p_2643->g_829;
                        int32_t *l_1036 = &l_1004;
                        int i;
                        if ((*p_68))
                            break;
                        if ((*p_2643->g_381))
                            break;
                        (*l_1036) |= (l_867[3] &= ((safe_div_func_int32_t_s_s(((*p_2643->g_381) = (((*l_1010) = l_1009[3][0][2]) != l_1011)), ((*l_1035) = (+(((((GROUP_DIVERGE(0, 1) , p_2643->g_1012) != (l_1021 = p_2643->g_1017)) >= ((-6L) | (safe_rshift_func_uint8_t_u_u((safe_mod_func_int16_t_s_s(((*l_1032) = ((safe_mod_func_int32_t_s_s((l_986[3] & FAKE_DIVERGE(p_2643->group_1_offset, get_group_id(1), 10)), ((*l_1033) &= ((safe_sub_func_uint16_t_u_u((~(((((((safe_lshift_func_int8_t_s_s(((l_1032 != l_1032) , (l_986[1] == p_69)), 5)) >= 0x451CBE56L) <= 0x15L) != l_1006) , 1L) != p_2643->g_105) >= GROUP_DIVERGE(1, 1))), p_67)) , l_878)))) >= l_986[7])), p_67)), l_1006)))) && 8L) > l_700[p_67]))))) & p_2643->g_29));
                    }
                    else
                    { /* block id: 525 */
                        int32_t *l_1037 = &p_2643->g_188[1];
                        int32_t *l_1038 = &l_700[p_67];
                        int32_t *l_1039 = (void*)0;
                        int32_t *l_1040 = &l_986[7];
                        int32_t l_1041 = (-4L);
                        int32_t *l_1042[2][1];
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1042[i][j] = &l_867[3];
                        }
                        --l_1045;
                    }
                    for (p_2643->g_21 = 1; (p_2643->g_21 >= 0); p_2643->g_21 -= 1)
                    { /* block id: 530 */
                        (*p_2643->g_1048) = (*p_2643->g_797);
                        (*p_2643->g_1050) |= ((l_1049 = l_983) == (void*)0);
                        return l_986[7];
                    }
                }
                return (***p_2643->g_625);
            }
        }
        for (l_84 = 0; (l_84 <= 0); l_84 += 1)
        { /* block id: 542 */
            int32_t **l_1053 = &p_2643->g_381;
            (1 + 1);
        }
        (*p_68) = l_680[3];
        l_1056[1]--;
    }
    for (p_2643->g_126 = 22; (p_2643->g_126 >= 52); p_2643->g_126 = safe_add_func_uint64_t_u_u(p_2643->g_126, 2))
    { /* block id: 563 */
        int32_t **l_1061 = &p_2643->g_381;
        uint32_t *l_1073 = &p_2643->g_829;
        (*l_1061) = (*p_2643->g_1048);
    }
    return l_701;
}


/* ------------------------------------------ */
/* 
 * reads : p_2643->g_21 p_2643->g_100 p_2643->g_94 p_2643->g_89 p_2643->g_114 p_2643->g_29 p_2643->g_123 p_2643->g_11 p_2643->g_137 p_2643->g_138 p_2643->g_126 p_2643->g_19 p_2643->g_172 p_2643->g_151 p_2643->g_105 p_2643->g_188 p_2643->g_120 p_2643->g_249 p_2643->g_254 p_2643->g_238 p_2643->g_182 p_2643->g_136 p_2643->g_272 p_2643->g_186 p_2643->g_273 p_2643->g_346 p_2643->g_408 p_2643->g_381 p_2643->g_20 p_2643->g_497 p_2643->g_255 p_2643->g_552 p_2643->g_625 p_2643->g_626 p_2643->g_627 p_2643->g_628 p_2643->g_394
 * writes: p_2643->g_100 p_2643->g_105 p_2643->g_21 p_2643->g_114 p_2643->g_120 p_2643->g_123 p_2643->g_126 p_2643->g_136 p_2643->g_137 p_2643->g_172 p_2643->g_185 p_2643->g_188 p_2643->g_19 p_2643->g_249 p_2643->g_254 p_2643->g_272 p_2643->g_89 p_2643->g_94 p_2643->g_32 p_2643->g_454 p_2643->g_346 p_2643->g_151 p_2643->g_497 p_2643->g_255 p_2643->g_552 p_2643->g_598 p_2643->g_626 p_2643->g_182 p_2643->g_394
 */
int8_t  func_80(int32_t  p_81, int32_t * p_82, struct S0 * p_2643)
{ /* block id: 22 */
    uint64_t l_95[3];
    int32_t *l_96[3][7] = {{&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21},{&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21},{&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21}};
    int32_t **l_97 = (void*)0;
    int32_t **l_98 = &l_96[0][3];
    uint64_t *l_99 = &p_2643->g_100;
    uint32_t l_103 = 4294967287UL;
    int16_t *l_104 = &p_2643->g_105;
    int32_t *l_106 = (void*)0;
    int32_t *l_107 = &p_2643->g_21;
    uint8_t l_215 = 7UL;
    uint8_t ***l_250 = (void*)0;
    int32_t l_308 = 0x379A9950L;
    int16_t l_319 = 0x32A0L;
    int32_t ***l_414 = &p_2643->g_272;
    int32_t l_468[8];
    uint32_t l_473 = 4294967295UL;
    int8_t l_515 = 0x73L;
    uint32_t ***l_536 = &p_2643->g_254;
    uint32_t ****l_535 = &l_536;
    uint32_t l_622 = 0x03020EAFL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_95[i] = 0xAE89E6D542D3F7CCL;
    for (i = 0; i < 8; i++)
        l_468[i] = (-1L);
    if ((((((void*)0 == p_82) > l_95[2]) > (((((*l_98) = l_96[0][3]) != (void*)0) == (((*l_99) &= ((p_81 ^ p_2643->g_21) != p_2643->g_21)) || (((*l_107) = (((*l_104) = (~(safe_div_func_uint64_t_u_u(l_103, 1L)))) < p_81)) <= 0x28280810L))) , 0L)) , 0L))
    { /* block id: 27 */
        uint16_t l_110 = 7UL;
        uint16_t *l_113 = (void*)0;
        int64_t *l_119 = &p_2643->g_120;
        uint32_t *l_124 = (void*)0;
        uint32_t *l_125 = &p_2643->g_126;
        int32_t l_127 = 0x1C03A75FL;
        int8_t *l_134 = &p_2643->g_29;
        int32_t l_168 = 0x1DEB0A87L;
        uint8_t *l_181 = &p_2643->g_182;
        int16_t ***l_196[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_208 = 0x1D1CEF0AL;
        int32_t l_209 = 0x58D05659L;
        int32_t l_214[1];
        int16_t l_237 = 1L;
        uint8_t l_353[9] = {0x19L,0x19L,0x19L,0x19L,0x19L,0x19L,0x19L,0x19L,0x19L};
        uint8_t l_424 = 0UL;
        int32_t ****l_450 = (void*)0;
        int32_t ****l_456 = &l_414;
        int16_t l_512 = 0x462AL;
        uint32_t ***l_526 = &p_2643->g_254;
        uint16_t l_533 = 0x06F3L;
        uint8_t l_537 = 249UL;
        int i;
        for (i = 0; i < 1; i++)
            l_214[i] = 0x7C6D6B7AL;
        l_127 = (((*l_125) = ((((safe_add_func_uint32_t_u_u(p_2643->g_94, (l_110 <= p_2643->g_89))) < ((*l_107) = (-1L))) < (safe_sub_func_uint32_t_u_u((((p_2643->g_114 &= 1UL) > (p_81 , (p_2643->g_123 &= ((safe_sub_func_int32_t_s_s((safe_sub_func_int64_t_s_s(((*l_119) = 4L), p_81)), (safe_lshift_func_int8_t_s_s((65529UL == p_2643->g_29), p_81)))) | 0x5A4FL)))) > 0x8462BD54L), FAKE_DIVERGE(p_2643->group_2_offset, get_group_id(2), 10)))) ^ 0xFDB04FC3L)) , 0x1CFBC894L);
        if ((((&p_2643->g_123 == &p_2643->g_123) > 1UL) <= FAKE_DIVERGE(p_2643->local_0_offset, get_local_id(0), 10)))
        { /* block id: 34 */
            uint16_t l_129 = 65535UL;
            int32_t *l_130 = &p_2643->g_11;
            int8_t *l_133 = &p_2643->g_29;
            uint64_t *l_135 = &p_2643->g_136;
            int32_t l_207[9][10] = {{0x036BFB3EL,6L,(-7L),0x46825806L,0L,0L,0x46825806L,(-7L),6L,0x036BFB3EL},{0x036BFB3EL,6L,(-7L),0x46825806L,0L,0L,0x46825806L,(-7L),6L,0x036BFB3EL},{0x036BFB3EL,6L,(-7L),0x46825806L,0L,0L,0x46825806L,(-7L),6L,0x036BFB3EL},{0x036BFB3EL,6L,(-7L),0x46825806L,0L,0L,0x46825806L,(-7L),6L,0x036BFB3EL},{0x036BFB3EL,6L,(-7L),0x46825806L,0L,0L,0x46825806L,(-7L),6L,0x036BFB3EL},{0x036BFB3EL,6L,(-7L),0x46825806L,0L,0L,0x46825806L,(-7L),6L,0x036BFB3EL},{0x036BFB3EL,6L,(-7L),0x46825806L,0L,0L,0x46825806L,(-7L),6L,0x036BFB3EL},{0x036BFB3EL,6L,(-7L),0x46825806L,0L,0L,0x46825806L,(-7L),6L,0x036BFB3EL},{0x036BFB3EL,6L,(-7L),0x46825806L,0L,0L,0x46825806L,(-7L),6L,0x036BFB3EL}};
            int32_t l_213[2];
            uint32_t **l_257 = &p_2643->g_255[0];
            int8_t l_411 = (-1L);
            int i, j;
            for (i = 0; i < 2; i++)
                l_213[i] = 0x5330B072L;
            if (((safe_unary_minus_func_int8_t_s(p_81)) || (((*l_135) = ((l_129 != ((!FAKE_DIVERGE(p_2643->group_0_offset, get_group_id(0), 10)) , ((*p_82) > (((l_130 = l_130) == (void*)0) > ((safe_sub_func_uint32_t_u_u((l_133 == (l_134 = l_134)), 4UL)) >= (l_127 && p_81)))))) != l_129)) , 0x244AA9F2L)))
            { /* block id: 38 */
                (*p_2643->g_138) = p_2643->g_137;
            }
            else
            { /* block id: 40 */
                int8_t *l_150 = &p_2643->g_151;
                int16_t *l_159 = (void*)0;
                int32_t l_166 = 9L;
                int32_t l_210 = 0x6AFBF693L;
                int32_t l_211 = 0x7BDC8010L;
                int32_t l_212[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_212[i] = 0x21EC8D39L;
                (*l_98) = (void*)0;
                if ((safe_lshift_func_int16_t_s_u((*l_130), p_81)))
                { /* block id: 42 */
                    uint32_t *l_156 = &p_2643->g_126;
                    int32_t l_167 = 3L;
                    int16_t **l_183[7];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_183[i] = &l_104;
                    for (p_2643->g_126 = 0; (p_2643->g_126 <= 26); ++p_2643->g_126)
                    { /* block id: 45 */
                        uint32_t l_143 = 4294967289UL;
                        return l_143;
                    }
                    for (p_81 = 3; (p_81 >= 0); p_81 -= 1)
                    { /* block id: 50 */
                        uint32_t **l_157 = (void*)0;
                        uint32_t **l_158 = &l_156;
                        int32_t l_165 = 0x48EFB741L;
                        uint8_t *l_171 = &p_2643->g_172;
                        uint8_t **l_179 = (void*)0;
                        uint8_t **l_180[3];
                        int16_t ***l_184[7][4] = {{&l_183[4],&l_183[2],(void*)0,&l_183[2]},{&l_183[4],&l_183[2],(void*)0,&l_183[2]},{&l_183[4],&l_183[2],(void*)0,&l_183[2]},{&l_183[4],&l_183[2],(void*)0,&l_183[2]},{&l_183[4],&l_183[2],(void*)0,&l_183[2]},{&l_183[4],&l_183[2],(void*)0,&l_183[2]},{&l_183[4],&l_183[2],(void*)0,&l_183[2]}};
                        uint16_t *l_187[6];
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_180[i] = (void*)0;
                        for (i = 0; i < 6; i++)
                            l_187[i] = &l_110;
                        (*l_107) = (l_168 &= (safe_div_func_int8_t_s_s((safe_sub_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(((((l_150 = &p_2643->g_29) != &p_2643->g_151) == (((safe_mul_func_uint8_t_u_u((p_81 != (safe_lshift_func_int8_t_s_s(((((((*l_158) = l_156) == p_82) > (l_159 != l_113)) , ((safe_div_func_uint32_t_u_u((safe_unary_minus_func_uint8_t_u((safe_div_func_uint64_t_u_u(0x8534C0AFD8232EDDL, p_81)))), 0x62A20AB3L)) , (-1L))) | p_81), (*l_130)))), 0x0CL)) | p_2643->g_19[0][0]) > l_165)) != 0x555567A9L), l_166)), l_167)), p_81)));
                        l_167 = (((p_2643->g_188[0] = ((l_165 = ((*l_107) = (*p_82))) || (safe_sub_func_int32_t_s_s(((++(*l_171)) < ((-1L) > 255UL)), (((safe_mul_func_int16_t_s_s(p_81, 0x01A0L)) , (safe_sub_func_uint64_t_u_u((((l_181 = l_134) == (void*)0) == ((p_2643->g_185[1][1][0] = l_183[2]) != (p_2643->g_100 , (*p_2643->g_138)))), p_2643->g_114))) | p_2643->g_123))))) & l_127) || p_2643->g_151);
                        return p_81;
                    }
                }
                else
                { /* block id: 64 */
                    int16_t **l_191[9][6];
                    int32_t l_203 = (-1L);
                    int i, j;
                    for (i = 0; i < 9; i++)
                    {
                        for (j = 0; j < 6; j++)
                            l_191[i][j] = &l_104;
                    }
                    if ((((((*l_104) |= (safe_add_func_uint64_t_u_u((l_191[5][4] != l_191[8][2]), (0x5CB6L == ((*l_107) = p_81))))) || (safe_mod_func_uint64_t_u_u((l_106 != l_107), p_2643->g_94))) || ((safe_mod_func_uint16_t_u_u((((*l_99) &= 0x1F0EA39184E9DB0BL) || 0x58104EED90807088L), (*l_130))) , l_166)) & 0x67D84EA22E85F590L))
                    { /* block id: 68 */
                        int16_t ****l_197 = (void*)0;
                        int16_t ****l_198 = &l_196[6];
                        l_166 = (p_81 & ((*p_82) > ((l_166 , ((((((*l_107) &= 0L) >= ((p_81 , &p_2643->g_185[1][1][0]) != ((*l_198) = l_196[5]))) >= ((safe_mul_func_int8_t_s_s(p_81, p_2643->g_29)) && (-6L))) == 0x4375795804E8CAA0L) == p_2643->g_172)) || p_81)));
                        if (l_110)
                            goto lbl_206;
                        p_2643->g_188[0] ^= ((((safe_add_func_int16_t_s_s(l_203, l_166)) , (!(((!(((p_81 == (((safe_rshift_func_int16_t_s_u((p_2643->g_19[0][0] ^ 0x0DL), 5)) , &l_159) != &p_2643->g_186)) , (void*)0) != &p_2643->g_120)) || 3L) , 0xD90FL))) < l_166) , (*p_82));
                        return p_81;
                    }
                    else
                    { /* block id: 74 */
                        return l_203;
                    }
                }
lbl_206:
                (*l_107) &= (*p_82);
                l_215++;
            }
            if ((*p_82))
            { /* block id: 82 */
                uint8_t l_220 = 0UL;
                int32_t l_231[4] = {4L,4L,4L,4L};
                uint8_t l_239 = 8UL;
                int16_t l_242 = 5L;
                uint8_t **l_243[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_243[i] = &l_181;
                for (l_103 = 29; (l_103 > 2); l_103--)
                { /* block id: 85 */
                    for (p_2643->g_120 = 3; (p_2643->g_120 <= 8); p_2643->g_120 += 1)
                    { /* block id: 88 */
                        int i, j;
                        (*l_98) = &l_207[p_2643->g_120][(p_2643->g_120 + 1)];
                        l_220++;
                    }
                    (*l_98) = (void*)0;
                }
                for (l_208 = 0; (l_208 <= (-13)); l_208 = safe_sub_func_int8_t_s_s(l_208, 7))
                { /* block id: 96 */
                    int64_t l_229 = 0x75E5F06EB511B20AL;
                    int32_t l_230 = 0x58B7C678L;
                    int32_t l_232 = 0x6C564025L;
                    int32_t l_233 = 0L;
                    int32_t l_234 = 0x1411491AL;
                    int32_t l_235 = (-1L);
                    int32_t l_236[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_236[i] = 0x15D116E5L;
                    for (l_168 = (-2); (l_168 >= (-20)); l_168 = safe_sub_func_int8_t_s_s(l_168, 1))
                    { /* block id: 99 */
                        if ((*p_82))
                            break;
                        l_207[7][1] &= (safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_2643->group_2_offset, get_group_id(2), 10), 6));
                        if ((*p_82))
                            continue;
                    }
                    --l_239;
                    if (l_242)
                        break;
                }
                for (p_2643->g_120 = 0; (p_2643->g_120 >= 0); p_2643->g_120 -= 1)
                { /* block id: 109 */
                    uint8_t **l_245[9][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int i, j;
                    for (p_2643->g_126 = 0; (p_2643->g_126 <= 0); p_2643->g_126 += 1)
                    { /* block id: 112 */
                        int i, j;
                        return p_2643->g_19[p_2643->g_126][p_2643->g_126];
                    }
                    for (l_103 = 0; (l_103 <= 0); l_103 += 1)
                    { /* block id: 117 */
                        uint8_t ***l_244 = &l_243[1];
                        int i, j;
                        p_2643->g_19[p_2643->g_120][p_2643->g_120] = (((*l_244) = l_243[1]) == l_245[8][6]);
                        if (l_239)
                            break;
                    }
                }
            }
            else
            { /* block id: 123 */
                int8_t l_246 = 0L;
                uint8_t ****l_251 = &l_250;
                uint32_t ***l_256 = &p_2643->g_254;
                uint16_t l_268[10] = {65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL};
                int i;
                (*l_107) = l_246;
                p_2643->g_188[0] &= (safe_add_func_uint8_t_u_u((p_2643->g_172 ^= ((p_2643->g_249[0][5] |= (FAKE_DIVERGE(p_2643->group_1_offset, get_group_id(1), 10) && (*l_130))) != (((((((*l_251) = l_250) == (void*)0) & ((+((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2643->group_2_offset, get_group_id(2), 10), p_2643->g_114)) || (((*l_256) = p_2643->g_254) == l_257))) && (safe_sub_func_int16_t_s_s((safe_add_func_int64_t_s_s(((*l_119) = ((((*p_82) != ((0xBCEEC597L == ((((p_81 && 1L) == 1UL) | p_81) | l_246)) , 0UL)) ^ p_2643->g_238) , p_2643->g_182)), p_2643->g_114)), 0x1497L)))) & 0x09884D23L) , (-1L)) & p_2643->g_126))), p_2643->g_136));
                for (l_208 = (-9); (l_208 > (-14)); l_208 = safe_sub_func_uint8_t_u_u(l_208, 8))
                { /* block id: 133 */
                    int32_t *l_267 = (void*)0;
                    int32_t **l_266 = &l_267;
                    int32_t l_271[4] = {1L,1L,1L,1L};
                    int i;
                    (*l_107) &= (&p_2643->g_94 != ((*l_266) = l_130));
                    ++l_268[0];
                    if (l_271[0])
                        continue;
                }
            }
            if ((((0x5C97L >= (-1L)) , &p_81) != &p_81))
            { /* block id: 140 */
                int32_t ***l_274 = &p_2643->g_272;
                int32_t l_284[9][1] = {{2L},{2L},{2L},{2L},{2L},{2L},{2L},{2L},{2L}};
                uint8_t l_285 = 0UL;
                int i, j;
                (*l_274) = p_2643->g_272;
                for (l_215 = 0; (l_215 <= 1); l_215 = safe_add_func_uint16_t_u_u(l_215, 3))
                { /* block id: 144 */
                    int8_t l_279 = (-3L);
                    (*l_107) = (l_127 ^= (!(safe_lshift_func_uint8_t_u_u((l_279 || (safe_mod_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((*l_107), 7)), 0x1AL))), 7))));
                }
                l_285--;
            }
            else
            { /* block id: 149 */
                (*l_98) = &p_2643->g_21;
lbl_330:
                (*l_107) = ((safe_lshift_func_uint16_t_u_u(p_81, (safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), (safe_mod_func_uint8_t_u_u(p_81, 0xD4L)))))) <= ((void*)0 != &l_104));
            }
            for (l_168 = 2; (l_168 >= 0); l_168 -= 1)
            { /* block id: 155 */
                uint32_t l_314 = 0xEC452380L;
                int32_t *l_333 = &p_2643->g_94;
                int32_t l_348[9] = {0x5E86082FL,0x5E86082FL,0x5E86082FL,0x5E86082FL,0x5E86082FL,0x5E86082FL,0x5E86082FL,0x5E86082FL,0x5E86082FL};
                int32_t l_349 = 0x69703A01L;
                int32_t l_380 = 0x3E5FB28AL;
                int64_t l_386 = 6L;
                int32_t **l_404[6][8] = {{&l_96[1][1],&l_106,&p_2643->g_381,&l_106,&l_106,&l_96[1][1],&l_106,&l_96[0][3]},{&l_96[1][1],&l_106,&p_2643->g_381,&l_106,&l_106,&l_96[1][1],&l_106,&l_96[0][3]},{&l_96[1][1],&l_106,&p_2643->g_381,&l_106,&l_106,&l_96[1][1],&l_106,&l_96[0][3]},{&l_96[1][1],&l_106,&p_2643->g_381,&l_106,&l_106,&l_96[1][1],&l_106,&l_96[0][3]},{&l_96[1][1],&l_106,&p_2643->g_381,&l_106,&l_106,&l_96[1][1],&l_106,&l_96[0][3]},{&l_96[1][1],&l_106,&p_2643->g_381,&l_106,&l_106,&l_96[1][1],&l_106,&l_96[0][3]}};
                uint8_t l_418[5];
                int i, j;
                for (i = 0; i < 5; i++)
                    l_418[i] = 6UL;
                for (p_2643->g_89 = 0; (p_2643->g_89 <= 4); p_2643->g_89 += 1)
                { /* block id: 158 */
                    int8_t *l_313[5];
                    int32_t l_328 = 0x716335F9L;
                    uint16_t *l_329 = &l_110;
                    int32_t l_347 = 0x60ADA160L;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_313[i] = &p_2643->g_151;
                    if ((p_81 >= ((safe_add_func_uint8_t_u_u(0xDCL, (l_214[0] = (safe_lshift_func_uint16_t_u_s((((*l_329) = ((safe_div_func_uint16_t_u_u((safe_add_func_int32_t_s_s((((safe_lshift_func_int16_t_s_u((((safe_mul_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u((((((l_308 > (safe_rshift_func_uint16_t_u_s((p_81 && ((((safe_sub_func_int64_t_s_s(((((l_314 = p_2643->g_105) && (safe_mul_func_int32_t_s_s((*l_107), ((safe_mod_func_int32_t_s_s(l_319, (safe_mod_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((((((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u(p_81, ((((l_328 | 0x1F09L) , (void*)0) == l_125) < p_2643->g_29))), l_328)) >= (-9L)) , p_2643->g_186) != p_2643->g_186) != (*l_130)), p_81)), l_314)))) > l_314)))) <= 0x53E8L) , p_81), 1UL)) != p_81) , &p_2643->g_273) != (void*)0)), p_81))) != l_209) > 1UL) | p_2643->g_188[1]) <= p_81), p_81)) & 0x1AL), l_127)) >= p_81) , 1L), l_214[0])) | 0L) , l_314), (-1L))), l_127)) >= p_81)) != p_2643->g_100), (*l_107)))))) , 0x2951L)))
                    { /* block id: 162 */
                        int32_t *l_345[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        if (l_314)
                            goto lbl_330;
                        l_349 &= (((~((((*l_104) = p_81) <= ((safe_mul_func_uint8_t_u_u((p_2643->g_172 |= (l_333 != ((l_348[1] = (l_347 |= ((*p_2643->g_273) ^= (safe_lshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((-8L), ((l_214[0] = (l_328 = (((safe_mul_func_uint8_t_u_u(l_328, (safe_unary_minus_func_uint16_t_u((p_81 ^ ((void*)0 == l_104)))))) | (safe_div_func_int16_t_s_s((p_2643->g_100 | (p_2643->g_188[0] | p_2643->g_21)), GROUP_DIVERGE(1, 1)))) <= 3UL))) > p_81))), 11))))) , (void*)0))), 0x38L)) , p_81)) , p_2643->g_346)) ^ GROUP_DIVERGE(1, 1)) & (*p_82));
                        l_328 |= l_348[1];
                    }
                    else
                    { /* block id: 173 */
                        l_213[0] |= (((*l_104) = (-9L)) < ((*l_329) = ((void*)0 == p_82)));
                        (*l_98) = &l_349;
                    }
                    for (p_2643->g_100 = 0; (p_2643->g_100 <= 0); p_2643->g_100 += 1)
                    { /* block id: 181 */
                        int32_t l_350 = (-1L);
                        int32_t l_351 = 1L;
                        int32_t l_352 = 0x0A11640FL;
                        int i;
                        ++l_353[3];
                    }
                }
                for (p_2643->g_120 = 3; (p_2643->g_120 >= 0); p_2643->g_120 -= 1)
                { /* block id: 187 */
                    uint16_t l_358 = 0xDA2BL;
                    uint32_t ***l_367[3][9] = {{(void*)0,&l_257,&l_257,&p_2643->g_254,&l_257,&l_257,(void*)0,&p_2643->g_254,&p_2643->g_254},{(void*)0,&l_257,&l_257,&p_2643->g_254,&l_257,&l_257,(void*)0,&p_2643->g_254,&p_2643->g_254},{(void*)0,&l_257,&l_257,&p_2643->g_254,&l_257,&l_257,(void*)0,&p_2643->g_254,&p_2643->g_254}};
                    int64_t l_396[8][8][4] = {{{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL}},{{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL}},{{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL}},{{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL}},{{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL}},{{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL}},{{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL}},{{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL},{0x4971E435FC13F74CL,1L,0x10A3C6F81391E3DEL,0x10A3C6F81391E3DEL}}};
                    int16_t l_397 = 7L;
                    int32_t ***l_416 = (void*)0;
                    int i, j, k;
                    (1 + 1);
                }
            }
        }
        else
        { /* block id: 219 */
            uint16_t l_434 = 65535UL;
            int32_t l_435 = (-5L);
            int32_t l_457[1][9] = {{(-1L),0x6A9A26BFL,(-1L),(-1L),0x6A9A26BFL,(-1L),(-1L),0x6A9A26BFL,(-1L)}};
            int16_t l_506 = 8L;
            int i, j;
            (*l_107) = (safe_lshift_func_uint8_t_u_u((*p_2643->g_408), 3));
            l_214[0] = ((safe_mul_func_int8_t_s_s((p_2643->g_238 | ((l_424 <= (+(safe_add_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((safe_mul_func_int8_t_s_s(((((safe_unary_minus_func_uint64_t_u(((((safe_rshift_func_uint16_t_u_u(0x098DL, p_2643->g_151)) == (*l_107)) > (GROUP_DIVERGE(0, 1) < (&l_353[3] == ((((safe_lshift_func_int16_t_s_s(l_434, 0)) && (-1L)) == p_81) , &l_215)))) , 18446744073709551612UL))) == p_81) , p_81) >= 18446744073709551615UL), l_435)) != (*p_82)))))) & 0x0829DF67C68C47A0L)), 0x58L)) < p_2643->g_123);
            for (l_215 = 0; (l_215 >= 15); l_215++)
            { /* block id: 224 */
                int16_t l_465[9][8] = {{0x2969L,0x123CL,0x09C3L,0x6002L,0x09C3L,0x123CL,0x2969L,0x2AE2L},{0x2969L,0x123CL,0x09C3L,0x6002L,0x09C3L,0x123CL,0x2969L,0x2AE2L},{0x2969L,0x123CL,0x09C3L,0x6002L,0x09C3L,0x123CL,0x2969L,0x2AE2L},{0x2969L,0x123CL,0x09C3L,0x6002L,0x09C3L,0x123CL,0x2969L,0x2AE2L},{0x2969L,0x123CL,0x09C3L,0x6002L,0x09C3L,0x123CL,0x2969L,0x2AE2L},{0x2969L,0x123CL,0x09C3L,0x6002L,0x09C3L,0x123CL,0x2969L,0x2AE2L},{0x2969L,0x123CL,0x09C3L,0x6002L,0x09C3L,0x123CL,0x2969L,0x2AE2L},{0x2969L,0x123CL,0x09C3L,0x6002L,0x09C3L,0x123CL,0x2969L,0x2AE2L},{0x2969L,0x123CL,0x09C3L,0x6002L,0x09C3L,0x123CL,0x2969L,0x2AE2L}};
                int32_t l_466 = 0x7C114021L;
                int32_t l_467 = (-2L);
                int32_t l_470 = 0x21DD413CL;
                int32_t l_472 = 1L;
                int32_t **l_478 = (void*)0;
                int32_t l_502 = 0x2ECE5900L;
                int32_t l_503 = 1L;
                int32_t l_505[4] = {0x126D4D0DL,0x126D4D0DL,0x126D4D0DL,0x126D4D0DL};
                int i, j;
                if ((*p_82))
                { /* block id: 225 */
                    int8_t l_449[8][9][3] = {{{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)}},{{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)}},{{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)}},{{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)}},{{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)}},{{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)}},{{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)}},{{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)},{0x08L,0x4AL,(-1L)}}};
                    int32_t *****l_451 = &l_450;
                    int32_t ****l_453 = &l_414;
                    int32_t *****l_452[4] = {&l_453,&l_453,&l_453,&l_453};
                    int i, j, k;
                    if ((l_237 && ((safe_sub_func_uint16_t_u_u(((p_81 > p_81) && (0x71L < (((l_127 , ((safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_s(0x19L, p_2643->g_136)), (*p_2643->g_381))) > (safe_add_func_int64_t_s_s(p_81, p_2643->g_182)))) != p_81) ^ FAKE_DIVERGE(p_2643->group_2_offset, get_group_id(2), 10)))), p_81)) && p_2643->g_172)))
                    { /* block id: 226 */
                        uint64_t l_446 = 0x4642FA6EAC7CAB79L;
                        p_2643->g_32[3] = (void*)0;
                        --l_446;
                        return p_2643->g_100;
                    }
                    else
                    { /* block id: 230 */
                        l_449[3][1][2] = 0x3888EDADL;
                        if ((*p_82))
                            continue;
                    }
                    if ((*p_82))
                        continue;
                    (*l_107) = (l_449[2][0][0] < ((p_2643->g_454 = ((*l_451) = l_450)) != l_456));
                }
                else
                { /* block id: 238 */
                    int32_t l_458 = 0x38A0D48AL;
                    uint8_t l_459 = 0xE0L;
                    int32_t l_463 = 0x1E60841DL;
                    int32_t l_464 = 0x2A6021E6L;
                    int32_t l_469 = 0x32501E9AL;
                    int32_t l_471 = 0x14384419L;
                    --l_459;
                    ++l_473;
                }
                if (l_470)
                    continue;
                for (p_2643->g_346 = 2; (p_2643->g_346 <= 24); ++p_2643->g_346)
                { /* block id: 245 */
                    return p_2643->g_120;
                }
                for (l_308 = 4; (l_308 >= 1); l_308 -= 1)
                { /* block id: 250 */
                    int32_t l_483 = (-9L);
                    uint64_t *l_486 = &p_2643->g_136;
                    int16_t **l_487 = &p_2643->g_186;
                    int8_t *l_488 = &p_2643->g_151;
                    uint32_t *l_495 = &p_2643->g_89;
                    int32_t l_500 = 0L;
                    int32_t l_501[9] = {0x35CA4DF8L,8L,0x35CA4DF8L,0x35CA4DF8L,8L,0x35CA4DF8L,0x35CA4DF8L,8L,0x35CA4DF8L};
                    int32_t l_504[9][2][1] = {{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}}};
                    uint16_t l_507 = 0x73BDL;
                    int i, j, k;
                    (**l_456) = l_478;
                    if (((safe_div_func_uint32_t_u_u(((*l_495) = (18446744073709551613UL && (((safe_mul_func_uint16_t_u_u(l_483, (+((safe_rshift_func_uint8_t_u_u(0x3BL, 4)) | (l_472 = ((((*l_488) = ((l_353[6] != (((*l_486) = 18446744073709551615UL) , 1UL)) || ((p_2643->g_185[0][2][2] = l_487) == (void*)0))) , (((safe_rshift_func_int16_t_s_u((safe_add_func_int64_t_s_s((((safe_add_func_int8_t_s_s(l_466, GROUP_DIVERGE(1, 1))) & p_81) , (-9L)), p_81)), l_483)) != GROUP_DIVERGE(1, 1)) , p_2643->g_20)) != 0xEF5C32991B87DE84L)))))) < 251UL) & p_2643->g_21))), p_2643->g_94)) || p_81))
                    { /* block id: 257 */
                        return (*l_107);
                    }
                    else
                    { /* block id: 259 */
                        int16_t l_496 = (-7L);
                        (*p_2643->g_381) = 0L;
                        --p_2643->g_497;
                        if ((*p_82))
                            break;
                    }
                    for (p_2643->g_151 = 0; (p_2643->g_151 <= 4); p_2643->g_151 += 1)
                    { /* block id: 266 */
                        if ((*p_2643->g_381))
                            break;
                    }
                    l_507--;
                }
            }
            for (l_506 = (-14); (l_506 != (-7)); l_506 = safe_add_func_uint32_t_u_u(l_506, 1))
            { /* block id: 274 */
                if ((*p_2643->g_381))
                    break;
            }
        }
        (*p_2643->g_381) |= l_512;
        if ((safe_mul_func_int16_t_s_s((0UL != 255UL), l_515)))
        { /* block id: 279 */
            return l_214[0];
        }
        else
        { /* block id: 281 */
            uint32_t *l_519 = &p_2643->g_126;
            uint32_t ***l_524 = &p_2643->g_254;
            uint32_t ****l_525 = &l_524;
            int32_t l_534 = 0x4D0C429EL;
            int32_t l_608 = 0x1EA4A748L;
            int32_t l_609 = 0x0837B24EL;
            int32_t l_615[6] = {0x1DDAD259L,0x42BC2AACL,0x1DDAD259L,0x1DDAD259L,0x42BC2AACL,0x1DDAD259L};
            int64_t l_629[9][8][3] = {{{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L}},{{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L}},{{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L}},{{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L}},{{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L}},{{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L}},{{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L}},{{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L}},{{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L},{1L,0x3376952F2A983AD6L,3L}}};
            int i, j, k;
            for (p_2643->g_100 = 0; (p_2643->g_100 == 2); p_2643->g_100 = safe_add_func_int64_t_s_s(p_2643->g_100, 5))
            { /* block id: 284 */
                uint16_t l_518[8][2] = {{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL}};
                int i, j;
                return l_518[3][1];
            }
            if ((1L || (((1L == (((l_519 = ((*p_2643->g_254) = (*p_2643->g_254))) == p_82) == ((+(safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s((p_2643->g_151 = (p_2643->g_21 == ((((((((*l_525) = l_524) == l_526) < ((((((((((safe_div_func_int64_t_s_s((((l_214[0] |= (safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((-5L) > (((l_533 & p_2643->g_172) , l_534) == 1UL)), (*p_82))), 0L))) ^ (*p_82)) , p_81), p_81)) | (*p_82)) & 0x2510L) | p_81) , (void*)0) == l_535) || l_537) , p_81) > GROUP_DIVERGE(2, 1)) , p_2643->g_126)) , 0x043D8355L) & 9UL) && 1UL) & 0xB7A3E00BL))), 0x4EL)), 0xECB1L))) >= p_81))) | l_534) > l_353[2])))
            { /* block id: 292 */
                return p_2643->g_123;
            }
            else
            { /* block id: 294 */
                int32_t l_549 = (-1L);
                int32_t l_587 = 0L;
                int32_t l_590 = 0x7D98E64CL;
                int32_t l_614[2][3][6] = {{{0x7A93F9F4L,8L,0x5C450266L,8L,0x7A93F9F4L,0x7A93F9F4L},{0x7A93F9F4L,8L,0x5C450266L,8L,0x7A93F9F4L,0x7A93F9F4L},{0x7A93F9F4L,8L,0x5C450266L,8L,0x7A93F9F4L,0x7A93F9F4L}},{{0x7A93F9F4L,8L,0x5C450266L,8L,0x7A93F9F4L,0x7A93F9F4L},{0x7A93F9F4L,8L,0x5C450266L,8L,0x7A93F9F4L,0x7A93F9F4L},{0x7A93F9F4L,8L,0x5C450266L,8L,0x7A93F9F4L,0x7A93F9F4L}}};
                uint16_t l_645 = 0x0FC3L;
                int i, j, k;
                for (p_2643->g_94 = 0; (p_2643->g_94 <= 3); p_2643->g_94 += 1)
                { /* block id: 297 */
                    uint64_t *l_550 = (void*)0;
                    uint64_t *l_551[10] = {(void*)0,&l_95[2],(void*)0,(void*)0,&l_95[2],(void*)0,(void*)0,&l_95[2],(void*)0,(void*)0};
                    uint32_t l_557 = 4294967295UL;
                    uint8_t *l_586 = &l_215;
                    int32_t l_607 = 0x6F7F7245L;
                    int32_t l_613 = 0x3E02CB40L;
                    int32_t l_617 = 0x7A8AFFF3L;
                    int32_t l_619 = 0L;
                    int32_t l_620 = 0L;
                    int32_t l_621 = 1L;
                    int i;
                    if ((((safe_unary_minus_func_int16_t_s((p_81 , 0x0A77L))) , (safe_mod_func_uint16_t_u_u((((*l_99) ^= ((safe_rshift_func_uint16_t_u_u(p_81, 14)) != p_81)) | ((l_424 != p_2643->g_21) ^ (safe_add_func_int16_t_s_s((p_2643->g_188[1] || (safe_lshift_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u(18446744073709551615UL, (--p_2643->g_552))), (((safe_add_func_int8_t_s_s((FAKE_DIVERGE(p_2643->group_1_offset, get_group_id(1), 10) , (p_81 , 0x01L)), l_534)) & p_81) < 8UL)))), l_557)))), 0x4357L))) & l_512))
                    { /* block id: 300 */
                        uint64_t *l_579 = &p_2643->g_136;
                        int32_t l_588 = 0x6609A336L;
                        uint16_t *l_589[3][8] = {{&l_110,&l_110,&l_110,&l_110,&l_110,&l_110,&l_110,&l_110},{&l_110,&l_110,&l_110,&l_110,&l_110,&l_110,&l_110,&l_110},{&l_110,&l_110,&l_110,&l_110,&l_110,&l_110,&l_110,&l_110}};
                        int i, j;
                        (*l_107) = l_557;
                        p_2643->g_32[p_2643->g_94] = (((safe_add_func_int32_t_s_s(l_214[0], (p_2643->g_19[0][0] ^ (safe_div_func_int16_t_s_s(5L, p_81))))) == (safe_add_func_uint32_t_u_u(p_81, (safe_rshift_func_int8_t_s_s((safe_add_func_uint16_t_u_u((l_590 ^= (safe_add_func_int8_t_s_s((((safe_unary_minus_func_int16_t_s(((safe_add_func_int32_t_s_s(((safe_rshift_func_int8_t_s_s(((p_2643->g_249[0][6] & (safe_rshift_func_uint16_t_u_s((safe_sub_func_uint16_t_u_u(((-4L) | (((--(*l_579)) , (l_587 = (safe_rshift_func_int8_t_s_s((((+(0x23L ^ (safe_add_func_uint32_t_u_u((l_586 == (void*)0), l_534)))) != l_534) || 0UL), p_2643->g_346)))) == l_549)), l_588)), p_81))) > 2L), p_2643->g_21)) >= 1L), GROUP_DIVERGE(0, 1))) , p_81))) | p_2643->g_120) , p_81), p_81))), l_533)), l_557))))) , (void*)0);
                    }
                    else
                    { /* block id: 306 */
                        (*p_2643->g_381) = (*p_82);
                        if (l_534)
                            goto lbl_647;
                    }
                    for (p_2643->g_123 = 1; (p_2643->g_123 <= 8); p_2643->g_123 += 1)
                    { /* block id: 311 */
                        uint32_t l_595[6][4][2] = {{{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L}},{{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L}},{{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L}},{{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L}},{{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L}},{{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L},{0x14E37096L,0x03056855L}}};
                        int32_t l_610 = 0x410287E2L;
                        int32_t l_611 = 0x5D3F3710L;
                        int32_t l_612 = 0x3D636CA2L;
                        int32_t l_616 = 0x4BB59CB7L;
                        int32_t l_618[9] = {0x6DDF18D5L,0x6DDF18D5L,0x6DDF18D5L,0x6DDF18D5L,0x6DDF18D5L,0x6DDF18D5L,0x6DDF18D5L,0x6DDF18D5L,0x6DDF18D5L};
                        int i, j, k;
                        (*p_2643->g_381) = ((safe_rshift_func_uint8_t_u_s(0xFFL, (p_81 , (safe_add_func_int32_t_s_s(0x624AE1FCL, (((*l_99) |= l_595[1][1][0]) , 5L)))))) && l_353[3]);
                        (*l_98) = &l_214[0];
                        (*l_98) = ((0L < ((~(0x7F3835EDL > FAKE_DIVERGE(p_2643->local_2_offset, get_local_id(2), 10))) != ((*l_99) = l_214[0]))) , ((((+(&l_515 != (p_2643->g_598[4][0] = &p_2643->g_29))) , (l_214[0] &= (((safe_add_func_int16_t_s_s((p_81 ^ (safe_rshift_func_int16_t_s_u(p_81, 1))), (safe_rshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(0x6C59L, 13)), ((*p_2643->g_408) & (*p_2643->g_408)))))) <= l_534) , 6L))) , l_557) , (void*)0));
                        --l_622;
                    }
                }
                (*p_2643->g_625) = &l_113;
                l_608 ^= (+((l_629[1][4][2] < ((safe_mod_func_uint32_t_u_u(0UL, (safe_rshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u((((*l_99) |= p_2643->g_346) >= p_2643->g_172), ((*l_181) = (*p_2643->g_408)))), 5)))) & (0x5295493CCC047C4FL <= (safe_unary_minus_func_uint16_t_u((safe_rshift_func_uint8_t_u_u((safe_add_func_int64_t_s_s(p_2643->g_11, ((*l_119) = (*l_107)))), ((safe_lshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u((0x15L >= 5L), 65535UL)), 5)) | p_81)))))))) & l_645));
            }
lbl_647:
            for (p_2643->g_120 = 1; (p_2643->g_120 <= 9); p_2643->g_120 += 1)
            { /* block id: 330 */
                int8_t l_646[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_646[i] = 0x55L;
                return l_646[1];
            }
            (*l_98) = p_82;
        }
    }
    else
    { /* block id: 336 */
        uint32_t l_663 = 1UL;
        for (p_2643->g_89 = 0; (p_2643->g_89 > 41); p_2643->g_89++)
        { /* block id: 339 */
            int32_t *l_650 = &l_468[1];
            uint64_t l_664 = 0x1AB3A23328F8410CL;
            int32_t *l_673 = &p_2643->g_188[0];
            p_82 = (l_650 = ((*l_98) = l_650));
            (*l_107) ^= ((safe_rshift_func_uint16_t_u_s((FAKE_DIVERGE(p_2643->local_2_offset, get_local_id(2), 10) & (*p_2643->g_408)), 9)) == (safe_div_func_uint16_t_u_u(((((safe_mod_func_uint8_t_u_u((((((void*)0 != &l_250) || (safe_mul_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_s(p_81, 1)) <= l_663), (l_664 , (((((p_81 , ((safe_sub_func_uint64_t_u_u(((*p_2643->g_626) == (void*)0), 0x57CC721ABED07AE2L)) ^ p_81)) ^ 0UL) >= (*p_82)) != (*l_650)) & 0x54L))))) != (**p_2643->g_626)) && (*p_82)), l_663)) != p_81) == 0x29L) != 0UL), l_663)));
            for (p_2643->g_394 = 0; (p_2643->g_394 >= 23); ++p_2643->g_394)
            { /* block id: 346 */
                uint8_t l_669 = 255UL;
                int32_t *l_672 = &p_2643->g_11;
                (*p_82) = ((l_669 || 0x78F61EC496A05502L) || (((*p_82) ^ (((((*l_650) < ((*p_82) >= ((safe_mul_func_int8_t_s_s((((l_673 = l_672) == &p_2643->g_21) | ((((*p_82) > 0x7A30E9C5L) & l_663) < (*p_82))), p_81)) <= 0x76D3C254L))) & 0x511C32FFL) >= l_663) >= (***p_2643->g_625))) != l_663));
            }
            return p_81;
        }
        return l_663;
    }
    (*l_107) = (safe_unary_minus_func_int8_t_s((0xF680L > 9L)));
    return p_81;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2644;
    struct S0* p_2643 = &c_2644;
    struct S0 c_2645 = {
        (-1L), // p_2643->g_11
        {{0x0611BC38L}}, // p_2643->g_19
        0x73FAA32FL, // p_2643->g_20
        0x085E0710L, // p_2643->g_21
        0x4BL, // p_2643->g_29
        {&p_2643->g_21,&p_2643->g_21,&p_2643->g_21,&p_2643->g_21}, // p_2643->g_32
        0x6DF81F9DL, // p_2643->g_89
        9L, // p_2643->g_94
        0xD8F345D263D1F077L, // p_2643->g_100
        0x5642L, // p_2643->g_105
        0x3E7469BAL, // p_2643->g_114
        1L, // p_2643->g_120
        0UL, // p_2643->g_123
        4UL, // p_2643->g_126
        0UL, // p_2643->g_136
        (void*)0, // p_2643->g_137
        &p_2643->g_137, // p_2643->g_138
        (-1L), // p_2643->g_151
        255UL, // p_2643->g_172
        247UL, // p_2643->g_182
        (void*)0, // p_2643->g_186
        {{{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186},{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186},{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186}},{{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186},{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186},{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186}},{{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186},{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186},{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186}},{{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186},{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186},{&p_2643->g_186,&p_2643->g_186,(void*)0,&p_2643->g_186,&p_2643->g_186}}}, // p_2643->g_185
        {3L,3L}, // p_2643->g_188
        (-1L), // p_2643->g_238
        {{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)}}, // p_2643->g_249
        {&p_2643->g_126,&p_2643->g_126,&p_2643->g_126,&p_2643->g_126,&p_2643->g_126}, // p_2643->g_255
        &p_2643->g_255[0], // p_2643->g_254
        &p_2643->g_94, // p_2643->g_273
        &p_2643->g_273, // p_2643->g_272
        6L, // p_2643->g_346
        &p_2643->g_21, // p_2643->g_381
        6L, // p_2643->g_394
        &p_2643->g_172, // p_2643->g_408
        {{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}}}, // p_2643->g_407
        &p_2643->g_407[1][0][0], // p_2643->g_406
        (void*)0, // p_2643->g_455
        &p_2643->g_455, // p_2643->g_454
        {{{0x1EL,0L,(-5L)},{0x1EL,0L,(-5L)},{0x1EL,0L,(-5L)},{0x1EL,0L,(-5L)}},{{0x1EL,0L,(-5L)},{0x1EL,0L,(-5L)},{0x1EL,0L,(-5L)},{0x1EL,0L,(-5L)}},{{0x1EL,0L,(-5L)},{0x1EL,0L,(-5L)},{0x1EL,0L,(-5L)},{0x1EL,0L,(-5L)}}}, // p_2643->g_462
        0xBC634441L, // p_2643->g_497
        0x0CL, // p_2643->g_552
        {{(void*)0,&p_2643->g_462[0][1][1]},{(void*)0,&p_2643->g_462[0][1][1]},{(void*)0,&p_2643->g_462[0][1][1]},{(void*)0,&p_2643->g_462[0][1][1]},{(void*)0,&p_2643->g_462[0][1][1]},{(void*)0,&p_2643->g_462[0][1][1]},{(void*)0,&p_2643->g_462[0][1][1]},{(void*)0,&p_2643->g_462[0][1][1]},{(void*)0,&p_2643->g_462[0][1][1]},{(void*)0,&p_2643->g_462[0][1][1]}}, // p_2643->g_598
        {{65526UL,65526UL,65526UL,65526UL,65526UL,65526UL}}, // p_2643->g_628
        {{&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0]},{&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0],&p_2643->g_628[0][0]}}, // p_2643->g_627
        &p_2643->g_627[1][1], // p_2643->g_626
        &p_2643->g_626, // p_2643->g_625
        0x2640BE447A7EEC6EL, // p_2643->g_675
        {&p_2643->g_381,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381}, // p_2643->g_678
        0xD67C58A4L, // p_2643->g_729
        &p_2643->g_381, // p_2643->g_797
        0x6D56A591L, // p_2643->g_829
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2643->g_902
        {{&p_2643->g_902[7],&p_2643->g_902[7],&p_2643->g_902[7]},{&p_2643->g_902[7],&p_2643->g_902[7],&p_2643->g_902[7]},{&p_2643->g_902[7],&p_2643->g_902[7],&p_2643->g_902[7]},{&p_2643->g_902[7],&p_2643->g_902[7],&p_2643->g_902[7]},{&p_2643->g_902[7],&p_2643->g_902[7],&p_2643->g_902[7]},{&p_2643->g_902[7],&p_2643->g_902[7],&p_2643->g_902[7]},{&p_2643->g_902[7],&p_2643->g_902[7],&p_2643->g_902[7]},{&p_2643->g_902[7],&p_2643->g_902[7],&p_2643->g_902[7]}}, // p_2643->g_901
        0L, // p_2643->g_913
        9UL, // p_2643->g_946
        1UL, // p_2643->g_1016
        &p_2643->g_1016, // p_2643->g_1015
        &p_2643->g_1015, // p_2643->g_1014
        &p_2643->g_1014, // p_2643->g_1013
        &p_2643->g_1013, // p_2643->g_1012
        &p_2643->g_255[0], // p_2643->g_1019
        &p_2643->g_1019, // p_2643->g_1018
        &p_2643->g_1018, // p_2643->g_1017
        &p_2643->g_381, // p_2643->g_1048
        &p_2643->g_188[1], // p_2643->g_1050
        {0x14F5L,0x762FL,0x5573L,0x762FL,0x14F5L,0x14F5L,0x762FL,0x5573L,0x762FL,0x14F5L}, // p_2643->g_1055
        &p_2643->g_188[0], // p_2643->g_1062
        (-6L), // p_2643->g_1158
        {0x673A59DBL,0x12B1FE9FL,1L,0x12B1FE9FL,0x673A59DBL,0x673A59DBL,0x12B1FE9FL,1L,0x12B1FE9FL,0x673A59DBL}, // p_2643->g_1177
        0L, // p_2643->g_1238
        &p_2643->g_89, // p_2643->g_1257
        {&p_2643->g_1257,&p_2643->g_1257,&p_2643->g_1257}, // p_2643->g_1256
        0x6AC9L, // p_2643->g_1306
        1L, // p_2643->g_1321
        {{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}},{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}},{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}},{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}},{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}},{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}},{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}},{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}},{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}},{{&p_2643->g_454,&p_2643->g_454,&p_2643->g_454,&p_2643->g_454}}}, // p_2643->g_1358
        &p_2643->g_185[1][1][0], // p_2643->g_1371
        &p_2643->g_272, // p_2643->g_1409
        0xFE650CDA27AE814DL, // p_2643->g_1521
        &p_2643->g_1521, // p_2643->g_1520
        {&p_2643->g_1520,&p_2643->g_1520}, // p_2643->g_1519
        (void*)0, // p_2643->g_1522
        &p_2643->g_123, // p_2643->g_1575
        &p_2643->g_1575, // p_2643->g_1574
        &p_2643->g_1575, // p_2643->g_1576
        (-1L), // p_2643->g_1598
        {&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062}, // p_2643->g_1754
        {&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062,&p_2643->g_1062}, // p_2643->g_1758
        {{{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381}},{{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381}},{{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381}},{{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381}},{{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381}},{{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381}},{{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381},{&p_2643->g_1062,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381}}}, // p_2643->g_1772
        &p_2643->g_381, // p_2643->g_1773
        &p_2643->g_381, // p_2643->g_1845
        &p_2643->g_381, // p_2643->g_1850
        0x6864C590L, // p_2643->g_1936
        {0xCB491CE3L,0xCB491CE3L,0xCB491CE3L,0xCB491CE3L,0xCB491CE3L,0xCB491CE3L,0xCB491CE3L}, // p_2643->g_1983
        {1UL,0x05DD11A3L,1UL,1UL,0x05DD11A3L,1UL,1UL}, // p_2643->g_2051
        &p_2643->g_1062, // p_2643->g_2055
        (void*)0, // p_2643->g_2108
        &p_2643->g_1062, // p_2643->g_2121
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2643->g_2165
        &p_2643->g_381, // p_2643->g_2202
        &p_2643->g_454, // p_2643->g_2257
        &p_2643->g_1062, // p_2643->g_2267
        &p_2643->g_188[0], // p_2643->g_2305
        {(void*)0,(void*)0}, // p_2643->g_2320
        {&p_2643->g_381,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381,&p_2643->g_381}, // p_2643->g_2345
        0xA063L, // p_2643->g_2353
        1UL, // p_2643->g_2361
        &p_2643->g_2305, // p_2643->g_2366
        18446744073709551612UL, // p_2643->g_2398
        &p_2643->g_1062, // p_2643->g_2472
        (void*)0, // p_2643->g_2537
        &p_2643->g_381, // p_2643->g_2541
        (void*)0, // p_2643->g_2571
        0x8EL, // p_2643->g_2598
        0x0B6F8B18L, // p_2643->g_2625
        &p_2643->g_1574, // p_2643->g_2637
        &p_2643->g_2637, // p_2643->g_2636
        sequence_input[get_global_id(0)], // p_2643->global_0_offset
        sequence_input[get_global_id(1)], // p_2643->global_1_offset
        sequence_input[get_global_id(2)], // p_2643->global_2_offset
        sequence_input[get_local_id(0)], // p_2643->local_0_offset
        sequence_input[get_local_id(1)], // p_2643->local_1_offset
        sequence_input[get_local_id(2)], // p_2643->local_2_offset
        sequence_input[get_group_id(0)], // p_2643->group_0_offset
        sequence_input[get_group_id(1)], // p_2643->group_1_offset
        sequence_input[get_group_id(2)], // p_2643->group_2_offset
    };
    c_2644 = c_2645;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2643);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2643->g_11, "p_2643->g_11", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2643->g_19[i][j], "p_2643->g_19[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2643->g_20, "p_2643->g_20", print_hash_value);
    transparent_crc(p_2643->g_21, "p_2643->g_21", print_hash_value);
    transparent_crc(p_2643->g_29, "p_2643->g_29", print_hash_value);
    transparent_crc(p_2643->g_89, "p_2643->g_89", print_hash_value);
    transparent_crc(p_2643->g_94, "p_2643->g_94", print_hash_value);
    transparent_crc(p_2643->g_100, "p_2643->g_100", print_hash_value);
    transparent_crc(p_2643->g_105, "p_2643->g_105", print_hash_value);
    transparent_crc(p_2643->g_114, "p_2643->g_114", print_hash_value);
    transparent_crc(p_2643->g_120, "p_2643->g_120", print_hash_value);
    transparent_crc(p_2643->g_123, "p_2643->g_123", print_hash_value);
    transparent_crc(p_2643->g_126, "p_2643->g_126", print_hash_value);
    transparent_crc(p_2643->g_136, "p_2643->g_136", print_hash_value);
    transparent_crc(p_2643->g_151, "p_2643->g_151", print_hash_value);
    transparent_crc(p_2643->g_172, "p_2643->g_172", print_hash_value);
    transparent_crc(p_2643->g_182, "p_2643->g_182", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2643->g_188[i], "p_2643->g_188[i]", print_hash_value);

    }
    transparent_crc(p_2643->g_238, "p_2643->g_238", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2643->g_249[i][j], "p_2643->g_249[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2643->g_346, "p_2643->g_346", print_hash_value);
    transparent_crc(p_2643->g_394, "p_2643->g_394", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2643->g_462[i][j][k], "p_2643->g_462[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2643->g_497, "p_2643->g_497", print_hash_value);
    transparent_crc(p_2643->g_552, "p_2643->g_552", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_2643->g_628[i][j], "p_2643->g_628[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2643->g_675, "p_2643->g_675", print_hash_value);
    transparent_crc(p_2643->g_729, "p_2643->g_729", print_hash_value);
    transparent_crc(p_2643->g_829, "p_2643->g_829", print_hash_value);
    transparent_crc(p_2643->g_913, "p_2643->g_913", print_hash_value);
    transparent_crc(p_2643->g_946, "p_2643->g_946", print_hash_value);
    transparent_crc(p_2643->g_1016, "p_2643->g_1016", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2643->g_1055[i], "p_2643->g_1055[i]", print_hash_value);

    }
    transparent_crc(p_2643->g_1158, "p_2643->g_1158", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2643->g_1177[i], "p_2643->g_1177[i]", print_hash_value);

    }
    transparent_crc(p_2643->g_1238, "p_2643->g_1238", print_hash_value);
    transparent_crc(p_2643->g_1306, "p_2643->g_1306", print_hash_value);
    transparent_crc(p_2643->g_1321, "p_2643->g_1321", print_hash_value);
    transparent_crc(p_2643->g_1521, "p_2643->g_1521", print_hash_value);
    transparent_crc(p_2643->g_1598, "p_2643->g_1598", print_hash_value);
    transparent_crc(p_2643->g_1936, "p_2643->g_1936", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2643->g_1983[i], "p_2643->g_1983[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2643->g_2051[i], "p_2643->g_2051[i]", print_hash_value);

    }
    transparent_crc(p_2643->g_2353, "p_2643->g_2353", print_hash_value);
    transparent_crc(p_2643->g_2361, "p_2643->g_2361", print_hash_value);
    transparent_crc(p_2643->g_2398, "p_2643->g_2398", print_hash_value);
    transparent_crc(p_2643->g_2598, "p_2643->g_2598", print_hash_value);
    transparent_crc(p_2643->g_2625, "p_2643->g_2625", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
