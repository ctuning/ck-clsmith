// ---fake_divergence -g 31,1,1 -l 1,1,1
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
    int8_t g_2[3][4][1];
    volatile int32_t g_3;
    int32_t g_4;
    int32_t g_5;
    volatile int32_t g_6;
    volatile int32_t g_7;
    int32_t g_8;
    int64_t g_13;
    volatile int64_t g_17[10];
    volatile int64_t *g_16[9];
    uint8_t g_41[7][5][7];
    uint8_t g_82[9];
    volatile uint8_t g_87;
    volatile uint8_t *g_86;
    volatile uint8_t * volatile *g_85;
    int16_t g_102;
    int16_t g_104;
    int64_t g_125;
    uint16_t g_127;
    int32_t g_129;
    int32_t g_131;
    uint64_t g_158;
    int8_t g_162;
    volatile int32_t g_192;
    int32_t g_196;
    volatile int8_t g_199;
    volatile uint64_t g_202;
    int32_t *g_213;
    int32_t ** volatile g_212;
    int32_t *g_228;
    uint16_t g_240;
    uint64_t g_299;
    volatile int16_t g_322[5];
    int64_t g_370;
    int32_t ** volatile g_407;
    uint16_t *g_419;
    uint32_t g_470;
    int64_t g_481;
    uint32_t g_482;
    uint8_t g_487[9][5][5];
    uint8_t *g_486;
    int32_t g_512;
    int32_t * volatile g_543;
    int32_t * volatile g_556;
    int8_t *g_564;
    int8_t * volatile *g_563;
    int16_t *g_583;
    int16_t * volatile *g_582;
    volatile int16_t g_601;
    uint32_t g_606;
    uint8_t g_614;
    int32_t ** volatile g_618;
    int32_t * volatile g_667;
    int8_t g_700;
    volatile uint32_t * volatile * volatile g_744;
    volatile int32_t g_748;
    volatile int32_t g_749;
    volatile int32_t *g_747[9];
    volatile int32_t **g_746;
    volatile int32_t ***g_745;
    uint8_t g_762;
    int32_t * volatile g_888[3];
    int8_t g_907;
    int64_t g_921;
    int32_t * volatile g_981;
    int32_t * volatile g_982;
    int32_t * volatile g_983;
    volatile int32_t g_1129;
    int32_t ** volatile g_1185;
    uint8_t **g_1186;
    int64_t g_1188;
    int64_t *g_1187;
    int32_t g_1260;
    volatile int32_t g_1297;
    uint16_t **g_1305;
    int32_t ** volatile g_1325;
    int32_t ** volatile g_1326;
    uint32_t *** volatile g_1329;
    uint32_t *g_1332;
    uint32_t **g_1331;
    uint32_t *** volatile g_1330;
    int32_t ** volatile g_1342[5][10];
    int32_t ** volatile g_1345;
    int32_t ** volatile g_1384;
    volatile uint64_t g_1429;
    int32_t g_1448;
    uint16_t g_1449[5][4];
    int32_t ** volatile g_1476;
    int32_t ** volatile g_1494[7][4][1];
    int32_t ** volatile g_1498;
    int32_t * volatile g_1586[6][5][4];
    int32_t * volatile g_1587;
    int32_t * volatile g_1588;
    int32_t * volatile g_1589[10][8][3];
    int32_t * volatile g_1590;
    int32_t ** volatile g_1596;
    uint8_t ***g_1638;
    uint8_t ****g_1637[3];
    int32_t ** volatile g_1641;
    int64_t *g_1721[7][6];
    uint16_t ***g_1737;
    int32_t ** volatile g_1739;
    int64_t g_1761;
    volatile int32_t g_1769;
    int32_t ** volatile g_1857;
    int32_t ** volatile g_1858;
    int32_t g_1880;
    int32_t ** volatile g_1884;
    int32_t ** volatile g_1943;
    uint32_t * volatile * volatile *g_1948;
    uint32_t * volatile * volatile **g_1947;
    int32_t * volatile * volatile g_1984;
    uint32_t *g_2038;
    int32_t * volatile * volatile g_2054[4];
    int32_t ** volatile g_2067[10][5];
    int32_t ** volatile g_2068;
    int32_t ** volatile g_2093;
    volatile int8_t g_2110;
    int32_t g_2146;
    volatile int16_t g_2147;
    int64_t **g_2193;
    int64_t ***g_2192;
    uint16_t ****g_2217;
    uint64_t g_2244;
    int32_t ** volatile g_2285;
    uint64_t *g_2306;
    uint64_t **g_2305;
    volatile uint64_t g_2307;
    int32_t ** volatile g_2308[10][1];
    int32_t ** volatile g_2309;
    int32_t * volatile g_2346;
    uint16_t **g_2363;
    uint32_t * volatile g_2365[4];
    uint32_t * volatile *g_2364;
    volatile int32_t g_2378;
    uint32_t g_2454;
    int32_t ** volatile g_2568[7][3];
    int32_t ** volatile g_2569[10][7];
    int32_t ** volatile g_2641;
    int32_t ** volatile g_2665;
    uint16_t g_2691;
    int32_t g_2693;
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
uint64_t  func_1(struct S0 * p_2702);
int16_t  func_31(int64_t * p_32, int64_t * p_33, int64_t * p_34, struct S0 * p_2702);
int32_t  func_44(int64_t * p_45, uint32_t  p_46, int32_t  p_47, uint8_t  p_48, struct S0 * p_2702);
int64_t * func_49(uint16_t  p_50, uint8_t * p_51, int16_t  p_52, int64_t * p_53, uint32_t  p_54, struct S0 * p_2702);
uint16_t  func_55(uint16_t  p_56, struct S0 * p_2702);
uint8_t ** func_57(uint32_t  p_58, int16_t  p_59, uint8_t * p_60, struct S0 * p_2702);
uint8_t * func_66(int64_t * p_67, uint8_t * p_68, int8_t  p_69, uint8_t * p_70, struct S0 * p_2702);
int64_t * func_71(int32_t  p_72, int32_t  p_73, int64_t * p_74, uint8_t * p_75, int64_t  p_76, struct S0 * p_2702);
int16_t  func_77(int8_t  p_78, struct S0 * p_2702);
uint16_t  func_96(uint8_t  p_97, uint16_t  p_98, struct S0 * p_2702);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2702->g_2217 p_2702->g_1737 p_2702->g_1187 p_2702->g_1188 p_2702->g_563 p_2702->g_564 p_2702->g_162 p_2702->g_2363 p_2702->g_744 p_2702->g_2364 p_2702->g_583 p_2702->g_104 p_2702->g_2193 p_2702->g_1721 p_2702->g_745 p_2702->g_746 p_2702->g_2378 p_2702->g_419 p_2702->g_4 p_2702->g_2 p_2702->g_2346 p_2702->g_1638 p_2702->g_1186 p_2702->g_486 p_2702->g_487 p_2702->g_240 p_2702->g_582 p_2702->g_1596 p_2702->g_228 p_2702->g_543 p_2702->g_8 p_2702->g_213 p_2702->g_2454 p_2702->g_129 p_2702->g_482 p_2702->g_556 p_2702->g_1332 p_2702->g_606 p_2702->g_907 p_2702->g_1331 p_2702->g_82 p_2702->g_13 p_2702->g_1476 p_2702->g_102 p_2702->g_131 p_2702->g_1590 p_2702->g_1448 p_2702->g_667 p_2702->g_1449 p_2702->g_2244 p_2702->g_370 p_2702->g_512 p_2702->g_86 p_2702->g_87 p_2702->g_1260 p_2702->g_2192 p_2702->g_2307 p_2702->g_2146 p_2702->g_2309 p_2702->g_2641 p_2702->g_1330 p_2702->g_2665 p_2702->g_2691 p_2702->g_749 p_2702->g_2693 p_2702->g_1880 p_2702->g_127 p_2702->g_1761 p_2702->g_41
 * writes: p_2702->g_4 p_2702->g_5 p_2702->g_8 p_2702->g_162 p_2702->g_240 p_2702->g_125 p_2702->g_299 p_2702->g_606 p_2702->g_1721 p_2702->g_131 p_2702->g_158 p_2702->g_104 p_2702->g_700 p_2702->g_129 p_2702->g_1188 p_2702->g_2 p_2702->g_2244 p_2702->g_487 p_2702->g_213 p_2702->g_1737 p_2702->g_102 p_2702->g_1448 p_2702->g_762 p_2702->g_228 p_2702->g_370 p_2702->g_512 p_2702->g_2193 p_2702->g_2146 p_2702->g_747 p_2702->g_921 p_2702->g_2691 p_2702->g_1880 p_2702->g_127
 */
uint64_t  func_1(struct S0 * p_2702)
{ /* block id: 4 */
    int32_t l_24 = 0L;
    int32_t l_39 = 0x4CA7A22FL;
    int64_t l_1642[4][6] = {{0x6F913B7D8E3AF02FL,7L,0x6F913B7D8E3AF02FL,0x6F913B7D8E3AF02FL,7L,0x6F913B7D8E3AF02FL},{0x6F913B7D8E3AF02FL,7L,0x6F913B7D8E3AF02FL,0x6F913B7D8E3AF02FL,7L,0x6F913B7D8E3AF02FL},{0x6F913B7D8E3AF02FL,7L,0x6F913B7D8E3AF02FL,0x6F913B7D8E3AF02FL,7L,0x6F913B7D8E3AF02FL},{0x6F913B7D8E3AF02FL,7L,0x6F913B7D8E3AF02FL,0x6F913B7D8E3AF02FL,7L,0x6F913B7D8E3AF02FL}};
    uint32_t l_2345[2];
    uint16_t l_2349 = 1UL;
    int16_t l_2366 = 0x37C1L;
    uint32_t l_2367 = 0x6EE461B6L;
    int32_t l_2380 = 0L;
    int32_t l_2409 = 0x55DF07A8L;
    uint64_t l_2416 = 5UL;
    int32_t l_2444[4];
    uint8_t l_2505 = 0xF7L;
    int64_t **l_2518 = &p_2702->g_1187;
    uint64_t l_2549 = 0x104C5769C4B64D91L;
    int8_t **l_2577 = &p_2702->g_564;
    int8_t ***l_2576 = &l_2577;
    uint8_t l_2590 = 0x0CL;
    int8_t l_2591[9] = {0x0CL,0x1FL,0x0CL,0x0CL,0x1FL,0x0CL,0x0CL,0x1FL,0x0CL};
    uint32_t ***l_2594 = &p_2702->g_1331;
    uint32_t ****l_2593 = &l_2594;
    uint32_t *****l_2592 = &l_2593;
    uint32_t ******l_2595 = &l_2592;
    uint16_t l_2596 = 1UL;
    uint16_t l_2637[1][5][9] = {{{0x4E09L,1UL,0xA4E9L,1UL,0x4E09L,0x4E09L,1UL,0xA4E9L,1UL},{0x4E09L,1UL,0xA4E9L,1UL,0x4E09L,0x4E09L,1UL,0xA4E9L,1UL},{0x4E09L,1UL,0xA4E9L,1UL,0x4E09L,0x4E09L,1UL,0xA4E9L,1UL},{0x4E09L,1UL,0xA4E9L,1UL,0x4E09L,0x4E09L,1UL,0xA4E9L,1UL},{0x4E09L,1UL,0xA4E9L,1UL,0x4E09L,0x4E09L,1UL,0xA4E9L,1UL}}};
    uint32_t l_2642 = 4294967295UL;
    int32_t *l_2662[8][1] = {{&p_2702->g_131},{&p_2702->g_131},{&p_2702->g_131},{&p_2702->g_131},{&p_2702->g_131},{&p_2702->g_131},{&p_2702->g_131},{&p_2702->g_131}};
    uint32_t l_2663[2];
    int8_t l_2680 = 0x42L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_2345[i] = 4294967288UL;
    for (i = 0; i < 4; i++)
        l_2444[i] = 2L;
    for (i = 0; i < 2; i++)
        l_2663[i] = 0xFA6DCCB7L;
lbl_2626:
    for (p_2702->g_4 = 0; (p_2702->g_4 <= 0); p_2702->g_4 += 1)
    { /* block id: 7 */
        int8_t l_1496 = (-10L);
        uint32_t l_2343 = 4294967292UL;
        int32_t l_2344 = (-1L);
        int32_t *l_2348[10][1][3] = {{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}}};
        int8_t ***l_2358 = (void*)0;
        uint8_t l_2400[5][5][3] = {{{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL}},{{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL}},{{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL}},{{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL}},{{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL},{0x26L,0x5FL,0x2EL}}};
        uint32_t ***l_2449 = &p_2702->g_1331;
        uint8_t **l_2489 = &p_2702->g_486;
        int64_t **l_2516 = &p_2702->g_1187;
        uint64_t l_2530 = 0x9A8371A90566D61AL;
        int i, j, k;
        for (p_2702->g_5 = 0; (p_2702->g_5 >= 0); p_2702->g_5 -= 1)
        { /* block id: 10 */
            int64_t *l_12 = &p_2702->g_13;
            uint8_t *l_40[4] = {&p_2702->g_41[2][3][5],&p_2702->g_41[2][3][5],&p_2702->g_41[2][3][5],&p_2702->g_41[2][3][5]};
            int32_t l_1189 = 0x7574B7FEL;
            int i;
            for (p_2702->g_8 = 0; (p_2702->g_8 <= 0); p_2702->g_8 += 1)
            { /* block id: 13 */
                uint32_t l_9[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_9[i] = 0UL;
                --l_9[0];
            }
        }
        ++l_2349;
        l_2367 ^= (((((safe_div_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_2702->global_2_offset, get_global_id(2), 10), ((*p_2702->g_564) = ((safe_mul_func_uint16_t_u_u(l_24, (((l_2345[0] || (((void*)0 == (*p_2702->g_2217)) == (((0xAB8D326D1E2D0504L > GROUP_DIVERGE(0, 1)) == (l_2366 = ((((((((FAKE_DIVERGE(p_2702->group_1_offset, get_group_id(1), 10) ^ (l_2358 == (((((!(safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_2702->global_1_offset, get_global_id(1), 10), l_2345[1]))) || (0x88L >= (l_39 |= (safe_add_func_int64_t_s_s(l_2349, (*p_2702->g_1187)))))) == l_1642[1][0]) , 4294967289UL) , (void*)0))) & (**p_2702->g_563)) , p_2702->g_2363) != (void*)0) , p_2702->g_744) == p_2702->g_2364) == 255UL) , (**p_2702->g_563)))) , (*p_2702->g_583)))) <= 0x3EE0L) >= 1L))) && 0L)))), l_2349)) > (-1L)) , l_24) , 0x85L) >= 0x6AL);
        for (l_2344 = 0; (l_2344 >= 0); l_2344 -= 1)
        { /* block id: 1189 */
            int32_t l_2379[7][7] = {{0x349F0A6AL,0x349F0A6AL,0x0F7C94B5L,(-1L),8L,(-1L),0x0F7C94B5L},{0x349F0A6AL,0x349F0A6AL,0x0F7C94B5L,(-1L),8L,(-1L),0x0F7C94B5L},{0x349F0A6AL,0x349F0A6AL,0x0F7C94B5L,(-1L),8L,(-1L),0x0F7C94B5L},{0x349F0A6AL,0x349F0A6AL,0x0F7C94B5L,(-1L),8L,(-1L),0x0F7C94B5L},{0x349F0A6AL,0x349F0A6AL,0x0F7C94B5L,(-1L),8L,(-1L),0x0F7C94B5L},{0x349F0A6AL,0x349F0A6AL,0x0F7C94B5L,(-1L),8L,(-1L),0x0F7C94B5L},{0x349F0A6AL,0x349F0A6AL,0x0F7C94B5L,(-1L),8L,(-1L),0x0F7C94B5L}};
            int16_t l_2381 = 1L;
            uint32_t l_2410 = 0x8BFC4DCCL;
            int32_t l_2453 = 1L;
            int8_t l_2466 = (-8L);
            int32_t l_2498 = 0x6C7626E8L;
            int32_t l_2499 = 1L;
            int32_t l_2500 = 0x2E3084ABL;
            int32_t l_2503 = 0x3A3FA40EL;
            int32_t l_2504 = 0x2E4526F6L;
            uint64_t l_2534[8] = {5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL};
            uint64_t l_2550[7][8][1];
            int8_t ***l_2575[3][1];
            int i, j, k;
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 8; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_2550[i][j][k] = 0xA6BCD6A68277E5F1L;
                }
            }
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_2575[i][j] = (void*)0;
            }
            l_39 = (safe_mul_func_uint8_t_u_u(4UL, (l_2381 = ((*p_2702->g_564) = (safe_div_func_uint16_t_u_u(((*p_2702->g_419) = (safe_div_func_int64_t_s_s((l_24 , (safe_mod_func_int64_t_s_s(((void*)0 != (*p_2702->g_2193)), (((void*)0 == (*p_2702->g_745)) & (((l_24 = (+((safe_div_func_uint32_t_u_u((l_2349 ^ p_2702->g_2378), l_2379[4][3])) , GROUP_DIVERGE(0, 1)))) | (*p_2702->g_1187)) < l_39))))), 0x5D8CDCA859B20CB3L))), l_2380))))));
            for (p_2702->g_125 = 0; (p_2702->g_125 <= 0); p_2702->g_125 += 1)
            { /* block id: 1197 */
                uint64_t *l_2384 = &p_2702->g_299;
                int i, j, k;
                l_2380 ^= (((*l_2384) = (safe_lshift_func_uint16_t_u_s(1UL, 11))) >= 0x45EBCFD35802B384L);
                for (p_2702->g_606 = 0; p_2702->g_606 < 7; p_2702->g_606 += 1)
                {
                    for (l_39 = 0; l_39 < 6; l_39 += 1)
                    {
                        p_2702->g_1721[p_2702->g_606][l_39] = &p_2702->g_921;
                    }
                }
                if (p_2702->g_2[l_2344][p_2702->g_4][l_2344])
                    break;
            }
            (*p_2702->g_2346) = l_2381;
            for (p_2702->g_158 = 0; (p_2702->g_158 <= 0); p_2702->g_158 += 1)
            { /* block id: 1206 */
                int64_t l_2411[8] = {(-4L),3L,(-4L),(-4L),3L,(-4L),(-4L),3L};
                int16_t *l_2412 = &l_2366;
                int16_t l_2413 = 0x5A14L;
                uint8_t l_2451 = 255UL;
                uint64_t *l_2481 = &l_2416;
                uint64_t *l_2482 = &p_2702->g_299;
                uint16_t l_2483 = 1UL;
                int i, j, k;
                if (((safe_add_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(l_2381, ((*l_2412) = ((*p_2702->g_583) = (safe_lshift_func_int16_t_s_s(((((+(***p_2702->g_1638)) == ((~(l_2367 < 4294967295UL)) < 0xE1L)) ^ l_1642[2][3]) == (safe_unary_minus_func_uint16_t_u((*p_2702->g_419)))), (safe_mul_func_int16_t_s_s((((~(safe_sub_func_int64_t_s_s((safe_mod_func_int16_t_s_s(((l_2400[2][2][2]++) & ((safe_sub_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(((((safe_lshift_func_uint16_t_u_u(0x74EEL, (*p_2702->g_419))) & l_2409) & 0UL) <= 18446744073709551612UL), 3)), (**p_2702->g_563))) < (-8L))), l_2410)), (*p_2702->g_1187)))) <= l_2411[3]) || FAKE_DIVERGE(p_2702->group_1_offset, get_group_id(1), 10)), (*p_2702->g_583))))))))), l_2411[3])) , (**p_2702->g_582)), (-1L))) >= FAKE_DIVERGE(p_2702->local_0_offset, get_local_id(0), 10)))
                { /* block id: 1210 */
                    int32_t **l_2414 = (void*)0;
                    int32_t **l_2415 = &l_2348[1][0][2];
                    if (l_2413)
                        break;
                    (*l_2415) = (*p_2702->g_1596);
                }
                else
                { /* block id: 1213 */
                    int32_t l_2419 = 0x13670792L;
                    int64_t ***l_2447[8];
                    uint32_t ***l_2450 = &p_2702->g_1331;
                    int i;
                    for (i = 0; i < 8; i++)
                        l_2447[i] = &p_2702->g_2193;
                    for (p_2702->g_700 = 0; (p_2702->g_700 <= 0); p_2702->g_700 += 1)
                    { /* block id: 1216 */
                        uint64_t *l_2448 = &p_2702->g_299;
                        uint8_t *l_2452[8][2] = {{&p_2702->g_614,(void*)0},{&p_2702->g_614,(void*)0},{&p_2702->g_614,(void*)0},{&p_2702->g_614,(void*)0},{&p_2702->g_614,(void*)0},{&p_2702->g_614,(void*)0},{&p_2702->g_614,(void*)0},{&p_2702->g_614,(void*)0}};
                        int32_t l_2455 = 0L;
                        int i, j;
                        l_2416++;
                        if (l_2379[1][5])
                            continue;
                        if (l_2379[2][5])
                            break;
                        p_2702->g_129 |= (+((+l_2419) | (((l_2455 |= (safe_mul_func_int16_t_s_s(((*p_2702->g_583) = (safe_add_func_uint16_t_u_u(((((safe_sub_func_int32_t_s_s((*p_2702->g_543), ((safe_mod_func_uint32_t_u_u((((safe_div_func_uint8_t_u_u((l_2453 &= ((safe_add_func_uint64_t_u_u(l_2419, (l_2413 >= (((safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s(l_2410, (safe_mod_func_int8_t_s_s(((safe_add_func_uint64_t_u_u((safe_div_func_uint8_t_u_u((***p_2702->g_1638), l_2444[0])), ((*l_2448) = ((safe_div_func_int32_t_s_s(((l_2447[4] != (void*)0) & (**p_2702->g_582)), (*p_2702->g_213))) <= l_1642[3][1])))) & (*p_2702->g_213)), 248UL)))), 4294967291UL)) , l_2449) == l_2450)))) <= l_2451)), GROUP_DIVERGE(0, 1))) < (-1L)) & 0UL), 1UL)) , 4294967295UL))) ^ (*p_2702->g_1187)) , (***p_2702->g_1638)) > 0x67L), 0x2ED2L))), p_2702->g_2454))) , (void*)0) == &p_2702->g_470)));
                    }
                    return p_2702->g_482;
                }
                if (l_2413)
                    continue;
                l_2409 |= ((((safe_rshift_func_int16_t_s_u(((*p_2702->g_583) = (safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_s(((l_2466 & FAKE_DIVERGE(p_2702->local_0_offset, get_local_id(0), 10)) <= (safe_div_func_uint64_t_u_u(l_2411[3], ((*l_2482) = ((((p_2702->g_2[p_2702->g_4][(p_2702->g_4 + 1)][l_2344] = ((safe_add_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((((*p_2702->g_1187) = (((*p_2702->g_556) &= (-1L)) > (((l_2366 , (safe_lshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s((-5L), (((*p_2702->g_1332) > (((*l_2481) = ((safe_rshift_func_int16_t_s_s(((safe_mod_func_int16_t_s_s(((0x04D7L < 0x12C4L) | (l_2379[4][3] , 8UL)), l_2444[0])) || (*p_2702->g_213)), (**p_2702->g_582))) <= p_2702->g_907)) <= (*p_2702->g_1187))) <= (-1L)))), 14))) > (**p_2702->g_1331)) || (*p_2702->g_419)))) < l_2379[4][3]), l_2345[1])), p_2702->g_82[5])) , (**p_2702->g_563))) < 4UL) ^ l_2411[3]) | p_2702->g_13))))), 0)), 1UL)), l_2483)), 5))), 12)) , (void*)0) != (void*)0) | 0x27L);
            }
            for (p_2702->g_2244 = 0; (p_2702->g_2244 <= 0); p_2702->g_2244 += 1)
            { /* block id: 1239 */
                int32_t l_2484 = 0x1C70C22FL;
                int32_t l_2502 = (-10L);
                uint16_t ***l_2531 = &p_2702->g_1305;
                uint32_t l_2566 = 4294967286UL;
                for (l_2416 = 0; (l_2416 <= 0); l_2416 += 1)
                { /* block id: 1242 */
                    int16_t l_2490 = (-8L);
                    int32_t l_2494 = (-1L);
                    int32_t **l_2523 = &p_2702->g_213;
                    if ((((l_2484 > ((l_2466 && l_2484) >= (safe_add_func_int8_t_s_s((safe_div_func_uint8_t_u_u(((*p_2702->g_486) = l_1642[2][5]), l_39)), 255UL)))) >= l_2345[1]) , ((((void*)0 == l_2489) & l_2490) && l_2490)))
                    { /* block id: 1244 */
                        int32_t l_2491 = (-1L);
                        int32_t l_2492 = 0x79C11E29L;
                        int32_t l_2493 = 0x7C09F252L;
                        uint16_t l_2495 = 0xA639L;
                        int32_t l_2501 = (-5L);
                        int64_t ***l_2517 = &l_2516;
                        uint64_t l_2521 = 0x9AB5338570F91B83L;
                        --l_2495;
                        --l_2505;
                        l_2492 = (safe_add_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u(0xB75E1975DC9FEEB1L, l_2367)) <= (safe_mod_func_uint64_t_u_u(((*p_2702->g_583) | (((*l_2517) = l_2516) != l_2518)), (safe_rshift_func_int16_t_s_s(l_2444[0], 3))))), l_2521));
                    }
                    else
                    { /* block id: 1249 */
                        uint16_t l_2522 = 0UL;
                        l_2522 = l_2409;
                    }
                    (*l_2523) = &l_39;
                }
                for (l_2500 = 0; l_2500 < 4; l_2500 += 1)
                {
                    for (p_2702->g_606 = 0; p_2702->g_606 < 6; p_2702->g_606 += 1)
                    {
                        l_1642[l_2500][p_2702->g_606] = 0x36239FA33161EEFCL;
                    }
                }
                l_2453 &= (safe_sub_func_uint8_t_u_u((l_2444[0] > (safe_add_func_uint32_t_u_u(4294967295UL, ((**p_2702->g_582) && ((**p_2702->g_1476) <= ((p_2702->g_102 < (l_2409 = ((((*p_2702->g_2217) = (void*)0) != ((((*p_2702->g_419)--) != l_2530) , l_2531)) || (safe_lshift_func_int8_t_s_u(l_2505, (***p_2702->g_1638)))))) <= l_2534[4])))))), (**p_2702->g_563)));
                if ((8L && (l_2534[4] > (safe_sub_func_uint16_t_u_u((safe_div_func_int8_t_s_s((&p_2702->g_583 == &p_2702->g_583), ((safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_2702->global_0_offset, get_global_id(0), 10), 7)), (safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u(((void*)0 != &p_2702->g_583), 6)), ((safe_mod_func_int64_t_s_s((FAKE_DIVERGE(p_2702->global_1_offset, get_global_id(1), 10) ^ ((~(+((*p_2702->g_563) == &l_2466))) && (*p_2702->g_564))), (*p_2702->g_1187))) , l_2549))))) ^ 0x0108L))), 0xD51DL)))))
                { /* block id: 1259 */
                    uint8_t l_2554 = 0x58L;
                    for (p_2702->g_8 = 5; (p_2702->g_8 >= 0); p_2702->g_8 -= 1)
                    { /* block id: 1262 */
                        return p_2702->g_131;
                    }
                    for (p_2702->g_102 = 0; (p_2702->g_102 >= 0); p_2702->g_102 -= 1)
                    { /* block id: 1267 */
                        p_2702->g_1448 &= (*p_2702->g_1590);
                        ++l_2550[0][0][0];
                    }
                    for (l_2409 = 0; (l_2409 <= 0); l_2409 += 1)
                    { /* block id: 1273 */
                        uint32_t l_2553 = 0x4C5CF855L;
                        if (l_2553)
                            break;
                    }
                    for (p_2702->g_762 = 0; (p_2702->g_762 <= 0); p_2702->g_762 += 1)
                    { /* block id: 1278 */
                        int8_t l_2565[7];
                        int32_t l_2567 = 0x6A5F64C2L;
                        int32_t **l_2570 = &p_2702->g_228;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_2565[i] = 0x5CL;
                        l_2567 &= ((((&p_2702->g_1260 == &p_2702->g_1260) != (l_2554 >= (l_2554 == (safe_div_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(18446744073709551608UL, l_2554)), ((safe_mod_func_int32_t_s_s(l_2444[0], ((safe_div_func_uint64_t_u_u(((*p_2702->g_419) ^ l_2565[2]), l_2500)) ^ l_2566))) & 0xA9A5L))), 0x306CL))))) & 1UL) < l_2484);
                        (*l_2570) = &l_2444[0];
                    }
                }
                else
                { /* block id: 1282 */
                    int8_t l_2578 = 0x03L;
                    l_2498 = l_2349;
                    (*p_2702->g_667) = (l_2444[2] = (((**p_2702->g_582) = ((*p_2702->g_564) & (**p_2702->g_1186))) == (safe_rshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((l_2575[0][0] == l_2576), l_2578)), 0))));
                }
            }
        }
    }
    if ((safe_sub_func_uint16_t_u_u(((safe_unary_minus_func_uint64_t_u(((((((l_2380 = (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_add_func_uint64_t_u_u((((((*p_2702->g_419) = (safe_sub_func_int32_t_s_s(((*p_2702->g_213) = (p_2702->g_1449[4][1] ^ (((((*l_2595) = (((~((safe_rshift_func_uint16_t_u_s((((((*p_2702->g_1187) , (((l_39 <= l_2349) ^ (-1L)) && (((**l_2518) ^= (0x20F3L <= ((&p_2702->g_482 == &p_2702->g_482) != GROUP_DIVERGE(1, 1)))) & l_2590))) , (***p_2702->g_1638)) != l_2591[0]) & (**p_2702->g_563)), l_2349)) & l_2367)) != l_2380) , l_2592)) == &p_2702->g_1947) || GROUP_DIVERGE(0, 1)) ^ l_2366))), 0x226C4026L))) & l_2549) , l_2409) , 18446744073709551615UL), 0UL))))) , l_2590) >= (-1L)) >= l_2505) , l_2367) , l_1642[0][1]))) <= l_2409), l_2596)))
    { /* block id: 1296 */
        int64_t l_2597 = (-7L);
        int32_t **l_2640 = (void*)0;
        l_2380 = l_2597;
        for (p_2702->g_2244 = 14; (p_2702->g_2244 > 35); ++p_2702->g_2244)
        { /* block id: 1300 */
            int32_t **l_2600 = &p_2702->g_228;
            int32_t *l_2624 = &p_2702->g_131;
            uint32_t l_2636 = 0xA1416357L;
            (*l_2600) = &l_2444[0];
            for (p_2702->g_370 = 0; (p_2702->g_370 != (-7)); p_2702->g_370 = safe_sub_func_uint8_t_u_u(p_2702->g_370, 2))
            { /* block id: 1304 */
                uint8_t l_2607 = 0x62L;
                int32_t *l_2633 = &p_2702->g_1260;
                int32_t **l_2632[9][9] = {{&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633},{&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633},{&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633},{&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633},{&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633},{&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633},{&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633},{&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633},{&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633,&l_2633}};
                int i, j;
                for (p_2702->g_512 = (-9); (p_2702->g_512 < (-1)); p_2702->g_512++)
                { /* block id: 1307 */
                    int16_t *l_2612 = &l_2366;
                    int16_t *l_2619 = (void*)0;
                    int16_t *l_2620 = &p_2702->g_102;
                    int32_t *l_2625 = &p_2702->g_129;
                    (*p_2702->g_213) = ((safe_mod_func_uint16_t_u_u((0x58L < ((**p_2702->g_1186) = (((((*p_2702->g_228) = l_2607) || (safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((*l_2612) = ((**p_2702->g_582) = 0x261EL)), ((*l_2620) |= ((safe_sub_func_uint32_t_u_u((((*p_2702->g_86) == (safe_rshift_func_uint8_t_u_s(((!((-1L) <= 0x7957FF9C91869459L)) , 1UL), 0))) == ((*p_2702->g_228) = ((!l_1642[0][1]) , ((safe_div_func_uint8_t_u_u(0x08L, l_2597)) == 254UL)))), 4294967295UL)) , (**l_2600))))), (*p_2702->g_486)))) ^ p_2702->g_1260) >= 0L))), l_2607)) || (*p_2702->g_564));
                    for (l_2607 = 0; (l_2607 == 15); l_2607++)
                    { /* block id: 1317 */
                        int64_t **l_2623 = &p_2702->g_1721[5][2];
                        (*l_2600) = ((**l_2600) , &l_39);
                        l_2623 = ((*p_2702->g_2192) = (*p_2702->g_2192));
                        (*l_2600) = l_2624;
                        return p_2702->g_2307;
                    }
                    for (l_2549 = 0; (l_2549 <= 0); l_2549 += 1)
                    { /* block id: 1326 */
                        int64_t *l_2631 = &p_2702->g_921;
                        int i, j, k;
                        l_2625 = (*l_2600);
                        if (l_2549)
                            goto lbl_2626;
                        (*l_2625) ^= (safe_lshift_func_uint8_t_u_u(((safe_add_func_uint32_t_u_u((((&p_2702->g_2244 == (void*)0) , l_2631) != ((**p_2702->g_2192) = (void*)0)), p_2702->g_487[l_2549][(l_2549 + 2)][(l_2549 + 3)])) , (l_2632[3][4] != (void*)0)), 2));
                    }
                }
                for (p_2702->g_2146 = 24; (p_2702->g_2146 <= (-20)); p_2702->g_2146--)
                { /* block id: 1335 */
                    return l_2636;
                }
            }
            l_2637[0][0][0]++;
        }
        (*p_2702->g_746) = (void*)0;
        (*p_2702->g_2641) = (*p_2702->g_2309);
    }
    else
    { /* block id: 1343 */
        int16_t l_2661 = 0x3B8AL;
        (*p_2702->g_213) &= (l_2642 == (safe_rshift_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((safe_add_func_uint32_t_u_u((~(((safe_add_func_int64_t_s_s(((*p_2702->g_564) ^ (((void*)0 != &p_2702->g_1948) , (((safe_div_func_uint8_t_u_u(((((~(safe_div_func_int16_t_s_s(((((safe_sub_func_uint8_t_u_u(((&p_2702->g_370 == (void*)0) <= ((safe_mul_func_int16_t_s_s(((-8L) > ((safe_mul_func_int16_t_s_s(((**p_2702->g_563) & (l_2661 & (*p_2702->g_583))), 0x61CBL)) != l_2345[0])), (**p_2702->g_582))) & l_2637[0][0][0])), (*p_2702->g_564))) | (**p_2702->g_563)) <= GROUP_DIVERGE(2, 1)) , 0x13D2L), (*p_2702->g_419)))) || (***p_2702->g_1330)) , l_2345[1]) > l_2409), l_2661)) == FAKE_DIVERGE(p_2702->local_0_offset, get_local_id(0), 10)) & l_24))), l_2661)) == (*p_2702->g_583)) <= 0x18999C12D91F824CL)), (**p_2702->g_1331))), (-1L))), 2)));
    }
    if ((l_2663[0] ^= 1L))
    { /* block id: 1347 */
        int32_t *l_2664[4];
        int64_t *l_2681 = (void*)0;
        int64_t *l_2682 = &p_2702->g_921;
        int16_t l_2692[5][3][9] = {{{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)}},{{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)}},{{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)}},{{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)}},{{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)},{0x033FL,7L,0x28ACL,8L,0x55D1L,0x13C4L,0x033FL,0x3602L,(-1L)}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_2664[i] = &p_2702->g_4;
        (*p_2702->g_2665) = l_2664[1];
        l_2692[2][2][1] |= (safe_add_func_uint64_t_u_u((((*p_2702->g_1187) || ((7L != (safe_lshift_func_uint16_t_u_s((p_2702->g_2691 &= (((safe_div_func_uint8_t_u_u(9UL, (~(*p_2702->g_564)))) && (safe_mod_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((((****l_2593) = (((((*l_2682) = l_2680) , ((safe_sub_func_int32_t_s_s((safe_lshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s(0xD310L, 15)), 15)), (0xA2L >= ((1L && (safe_lshift_func_uint8_t_u_s(((((0x70A999F68491F02EL ^ (*p_2702->g_1187)) | (*p_2702->g_419)) == (**p_2702->g_1331)) < 249UL), 3))) == (*p_2702->g_1332))))) <= (*p_2702->g_419))) >= 1UL) & 0x5A6DL)) != (**p_2702->g_2665)), 0)), (-1L)))) && 0x60L)), 4))) & 0L)) && p_2702->g_749), 0UL));
    }
    else
    { /* block id: 1353 */
        return p_2702->g_2693;
    }
    for (l_2349 = 0; (l_2349 != 47); l_2349 = safe_add_func_int32_t_s_s(l_2349, 5))
    { /* block id: 1358 */
        for (p_2702->g_1880 = 1; (p_2702->g_1880 == (-4)); p_2702->g_1880 = safe_sub_func_uint16_t_u_u(p_2702->g_1880, 6))
        { /* block id: 1361 */
            uint8_t l_2698 = 0xBBL;
            int32_t l_2700 = 0x0EDFCE04L;
            int32_t l_2701 = 1L;
            for (p_2702->g_127 = 0; (p_2702->g_127 <= 4); p_2702->g_127 += 1)
            { /* block id: 1364 */
                int64_t l_2699 = 3L;
                int i, j;
                if (l_2698)
                    break;
                for (p_2702->g_606 = 0; (p_2702->g_606 <= 4); p_2702->g_606 += 1)
                { /* block id: 1368 */
                    return p_2702->g_1761;
                }
                l_2701 |= (0x04E7L | ((&p_2702->g_482 == (void*)0) ^ (0x57470991L != (l_2700 = ((*p_2702->g_228) = l_2699)))));
            }
        }
    }
    return p_2702->g_41[3][3][6];
}


/* ------------------------------------------ */
/* 
 * reads : p_2702->g_543 p_2702->g_8 p_2702->g_240 p_2702->g_1188 p_2702->g_1638 p_2702->g_1186 p_2702->g_486 p_2702->g_487 p_2702->g_419 p_2702->g_1449 p_2702->g_1332 p_2702->g_606 p_2702->g_1187 p_2702->g_481 p_2702->g_583 p_2702->g_102 p_2702->g_582 p_2702->g_564 p_2702->g_162 p_2702->g_563 p_2702->g_1297 p_2702->g_1737 p_2702->g_1739 p_2702->g_196 p_2702->g_1761 p_2702->g_17 p_2702->g_2 p_2702->g_1448 p_2702->g_104 p_2702->g_7 p_2702->g_299 p_2702->g_700 p_2702->g_86 p_2702->g_87 p_2702->g_1325 p_2702->g_125 p_2702->g_1880 p_2702->g_983 p_2702->g_129 p_2702->g_1884 p_2702->g_1596 p_2702->g_1947 p_2702->g_82 p_2702->g_1586 p_2702->g_1984 p_2702->g_1129 p_2702->g_2068 p_2702->g_2147 p_2702->g_614 p_2702->g_512
 * writes: p_2702->g_240 p_2702->g_1188 p_2702->g_129 p_2702->g_8 p_2702->g_481 p_2702->g_614 p_2702->g_104 p_2702->g_1721 p_2702->g_162 p_2702->g_213 p_2702->g_125 p_2702->g_228 p_2702->g_158 p_2702->g_1448 p_2702->g_1449 p_2702->g_299 p_2702->g_606 p_2702->g_102 p_2702->g_1880 p_2702->g_667 p_2702->g_512 p_2702->g_2038 p_2702->g_131 p_2702->g_2 p_2702->g_470 p_2702->g_487
 */
int16_t  func_31(int64_t * p_32, int64_t * p_33, int64_t * p_34, struct S0 * p_2702)
{ /* block id: 804 */
    int8_t l_1652[9][6] = {{0x34L,3L,0x53L,3L,0x34L,0x34L},{0x34L,3L,0x53L,3L,0x34L,0x34L},{0x34L,3L,0x53L,3L,0x34L,0x34L},{0x34L,3L,0x53L,3L,0x34L,0x34L},{0x34L,3L,0x53L,3L,0x34L,0x34L},{0x34L,3L,0x53L,3L,0x34L,0x34L},{0x34L,3L,0x53L,3L,0x34L,0x34L},{0x34L,3L,0x53L,3L,0x34L,0x34L},{0x34L,3L,0x53L,3L,0x34L,0x34L}};
    uint32_t ***l_1659 = (void*)0;
    uint32_t ***l_1660 = &p_2702->g_1331;
    int8_t **l_1664[10][9] = {{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564},{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564},{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564},{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564},{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564},{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564},{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564},{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564},{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564},{&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564,(void*)0,(void*)0,&p_2702->g_564,&p_2702->g_564,&p_2702->g_564}};
    int8_t ***l_1663 = &l_1664[6][8];
    int64_t *l_1668 = &p_2702->g_481;
    int32_t l_1672 = 0x76028A36L;
    uint8_t l_1701 = 0x3AL;
    int32_t l_1702[3];
    int8_t l_1795 = 0x0EL;
    uint32_t *l_1796[8][5][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int8_t l_1808 = 0x5DL;
    uint8_t **l_1813 = &p_2702->g_486;
    uint32_t *l_1836 = &p_2702->g_470;
    uint32_t **l_1835 = &l_1836;
    uint64_t *l_1878 = &p_2702->g_158;
    int32_t *l_1881 = &l_1672;
    uint16_t l_1920 = 6UL;
    int32_t *l_1935 = &l_1702[0];
    uint8_t ***l_1967 = &l_1813;
    int32_t l_2004 = 0L;
    uint16_t l_2049 = 0UL;
    int64_t l_2089 = 0x295F92AC55D80AFCL;
    int32_t l_2117 = 0x7EDFD631L;
    uint32_t l_2179 = 5UL;
    int64_t **l_2185 = &p_2702->g_1721[6][5];
    int64_t ***l_2184[8][5];
    int64_t ***l_2187 = &l_2185;
    uint16_t ****l_2216 = (void*)0;
    uint32_t ****l_2280 = &l_1660;
    int16_t l_2298 = 0x3119L;
    uint32_t l_2341 = 0x3EDEE33AL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1702[i] = 0x01CF9374L;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
            l_2184[i][j] = &l_2185;
    }
    if ((*p_2702->g_543))
    { /* block id: 805 */
        for (p_2702->g_240 = 0; (p_2702->g_240 > 53); p_2702->g_240 = safe_add_func_uint32_t_u_u(p_2702->g_240, 7))
        { /* block id: 808 */
            int32_t *l_1646 = &p_2702->g_129;
            int32_t l_1647[2];
            int i;
            for (i = 0; i < 2; i++)
                l_1647[i] = 0L;
            (*l_1646) = (safe_unary_minus_func_uint8_t_u((((*p_34) = (*p_34)) , 0xF9L)));
            return l_1647[0];
        }
    }
    else
    { /* block id: 813 */
        uint32_t ***l_1658 = &p_2702->g_1331;
        uint32_t ****l_1657[10] = {&l_1658,&l_1658,&l_1658,&l_1658,&l_1658,&l_1658,&l_1658,&l_1658,&l_1658,&l_1658};
        int8_t ***l_1665 = &l_1664[2][8];
        int32_t l_1666 = 0x64F1664FL;
        uint16_t *l_1667 = &p_2702->g_1449[0][1];
        uint8_t **l_1669 = &p_2702->g_486;
        uint32_t *l_1691 = &p_2702->g_470;
        int64_t *l_1722 = &p_2702->g_921;
        int32_t l_1764 = 1L;
        int32_t l_1768 = 0x471F03B3L;
        int32_t l_1771 = 0x02553786L;
        int32_t **l_1788 = (void*)0;
        int32_t ***l_1787 = &l_1788;
        int32_t l_1815 = 9L;
        int32_t *l_1856 = &p_2702->g_8;
        int32_t l_1905 = 6L;
        int32_t l_1906 = 0x35BC9F00L;
        int32_t l_1909 = 0L;
        int32_t l_1915 = 0x1FDB38C1L;
        int32_t l_1916 = (-4L);
        uint64_t **l_1937 = &l_1878;
        uint64_t ***l_1936 = &l_1937;
        int32_t *l_1938[1];
        uint64_t l_1939 = 18446744073709551615UL;
        int i;
        for (i = 0; i < 1; i++)
            l_1938[i] = &l_1906;
        if (((safe_lshift_func_uint16_t_u_s(65528UL, 14)) != (safe_lshift_func_int8_t_s_u((0UL != l_1652[1][4]), (safe_mod_func_uint64_t_u_u(((safe_div_func_uint32_t_u_u(((0L & (((l_1659 = (void*)0) != (l_1660 = &p_2702->g_1331)) , ((((((((((((((safe_rshift_func_uint16_t_u_s(l_1652[5][0], 2)) == (((*p_34) ^= (~(l_1663 == l_1665))) == 0xED70A268904E0C97L)) , (***p_2702->g_1638)) ^ l_1666) & 0x7DL) , l_1667) != l_1667) , &p_2702->g_17[9]) == l_1668) != 247UL) | GROUP_DIVERGE(0, 1)) ^ l_1666) ^ l_1666) && 0xA58DL))) > l_1652[1][4]), 0x3B79C9F6L)) <= l_1666), 0x15BBE763C16EAED9L))))))
        { /* block id: 817 */
            uint64_t l_1670 = 0x16A4A7CD57720D29L;
            int32_t *l_1674 = (void*)0;
            uint32_t *l_1693 = &p_2702->g_470;
            l_1670 = ((*p_2702->g_543) = (l_1669 != (void*)0));
            if (((void*)0 == &p_2702->g_583))
            { /* block id: 820 */
                uint64_t l_1671 = 1UL;
                int32_t l_1673 = 0x1DDE2457L;
                int32_t **l_1675 = &l_1674;
                l_1673 = (l_1672 ^= l_1671);
                (*l_1675) = l_1674;
            }
            else
            { /* block id: 824 */
                uint32_t *****l_1676 = (void*)0;
                uint32_t *****l_1677 = &l_1657[0];
                int32_t l_1686 = 0x2424719EL;
                uint32_t **l_1692 = &l_1691;
                uint64_t l_1700 = 0xAA046055740493CDL;
                l_1686 = (!(l_1652[0][5] , (l_1702[0] |= (0xF5F6944AL ^ (((*l_1677) = &l_1658) != ((safe_mul_func_int16_t_s_s(((safe_add_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((safe_mod_func_int32_t_s_s(l_1686, (-10L))), (((*l_1668) ^= ((*p_2702->g_1187) = (safe_div_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s((l_1672 = ((((*l_1692) = l_1691) == l_1693) < (l_1686 , GROUP_DIVERGE(2, 1)))), 7)) != ((((safe_sub_func_int64_t_s_s((safe_sub_func_int8_t_s_s((safe_div_func_uint16_t_u_u((*p_2702->g_419), l_1666)), (*p_2702->g_486))), p_2702->g_1449[4][2])) == (*p_2702->g_1332)) ^ (*p_2702->g_1187)) ^ 0L)), l_1666)))) && l_1700))), 0x50F1C811L)) | l_1701), (*p_2702->g_583))) , &l_1660))))));
            }
            return (*p_2702->g_583);
        }
        else
        { /* block id: 834 */
            uint8_t l_1718 = 0UL;
            uint16_t ***l_1738 = (void*)0;
            uint32_t **l_1742 = &p_2702->g_1332;
            int32_t l_1766 = 0x620EAA62L;
            int32_t l_1767[2][1][8] = {{{0L,0x27D84612L,0L,0L,0x27D84612L,0L,0L,0x27D84612L}},{{0L,0x27D84612L,0L,0L,0x27D84612L,0L,0L,0x27D84612L}}};
            uint8_t l_1772[4] = {3UL,3UL,3UL,3UL};
            int16_t l_1814 = 0x7EB2L;
            int64_t l_1919 = 0x0CCBACC3594FAF9FL;
            int i, j, k;
lbl_1882:
            for (p_2702->g_614 = 0; (p_2702->g_614 != 35); p_2702->g_614 = safe_add_func_uint64_t_u_u(p_2702->g_614, 7))
            { /* block id: 837 */
                uint32_t *l_1715 = &p_2702->g_606;
                int32_t l_1719 = 0x26B2870FL;
                int16_t *l_1720 = &p_2702->g_104;
                int32_t l_1723 = 0x03063F2AL;
                int32_t l_1770[8][8][4] = {{{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL}},{{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL}},{{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL}},{{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL}},{{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL}},{{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL}},{{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL}},{{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL},{1L,1L,0x16250991L,0x6F92BC7AL}}};
                int i, j, k;
                if (((((*p_34) = (safe_mul_func_uint8_t_u_u(((((safe_rshift_func_int8_t_s_u(((p_2702->g_1721[6][5] = (((*p_2702->g_583) == (safe_rshift_func_uint16_t_u_s(((safe_mul_func_int16_t_s_s((**p_2702->g_582), l_1666)) | 0x158DL), ((safe_div_func_int64_t_s_s(0x2E2342F08B007BDEL, l_1666)) <= ((*l_1720) = (l_1715 == (((*p_2702->g_564) != ((l_1719 = ((safe_add_func_uint16_t_u_u(((*p_2702->g_1187) , l_1652[1][4]), l_1718)) != l_1719)) < l_1718)) , (void*)0))))))) , (void*)0)) == l_1722), 5)) < l_1723) , (**p_2702->g_582)) < (**p_2702->g_582)), 0x53L))) , (*p_2702->g_564)) , 1L))
                { /* block id: 842 */
                    uint32_t *l_1728[4][8][4] = {{{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482}},{{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482}},{{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482}},{{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482},{(void*)0,(void*)0,(void*)0,&p_2702->g_482}}};
                    int32_t l_1731 = 0x7D3C1E0FL;
                    uint32_t **l_1732[8] = {&p_2702->g_1332,&p_2702->g_1332,&p_2702->g_1332,&p_2702->g_1332,&p_2702->g_1332,&p_2702->g_1332,&p_2702->g_1332,&p_2702->g_1332};
                    int i, j, k;
                    l_1666 = (((safe_mul_func_uint16_t_u_u((((-1L) | 0UL) != (((safe_mul_func_int8_t_s_s((((((l_1728[1][3][0] = l_1715) != l_1691) == (safe_rshift_func_int8_t_s_s(l_1731, 7))) && (l_1732[5] != l_1732[5])) ^ ((((***p_2702->g_1638) > ((l_1666 | 1L) , (**p_2702->g_563))) == l_1702[0]) || 0x9915L)), l_1718)) >= 6L) <= l_1723)), l_1731)) >= (*p_2702->g_1332)) || p_2702->g_1297);
                }
                else
                { /* block id: 845 */
                    int32_t *l_1736 = &l_1666;
                    for (p_2702->g_162 = 11; (p_2702->g_162 != 27); p_2702->g_162 = safe_add_func_uint64_t_u_u(p_2702->g_162, 2))
                    { /* block id: 848 */
                        int32_t **l_1735 = &p_2702->g_213;
                        l_1736 = ((*l_1735) = &l_1672);
                        (*l_1735) = &l_1666;
                    }
                }
                for (p_2702->g_125 = 0; (p_2702->g_125 <= 4); p_2702->g_125 += 1)
                { /* block id: 856 */
                    int64_t l_1760 = 0x7391EAB571869386L;
                    int32_t *l_1762 = &p_2702->g_8;
                    int32_t l_1765[8][8][4] = {{{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L}},{{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L}},{{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L}},{{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L}},{{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L}},{{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L}},{{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L}},{{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L},{1L,1L,(-9L),0L}}};
                    int32_t **l_1786[1];
                    int32_t ***l_1785 = &l_1786[0];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1786[i] = &l_1762;
                    (*p_2702->g_1739) = ((p_2702->g_1737 == l_1738) , &l_1702[2]);
                    (*l_1762) &= (safe_sub_func_uint8_t_u_u((((l_1742 = &l_1715) != &l_1715) , ((*p_2702->g_563) == (*p_2702->g_563))), (((p_2702->g_196 ^ (l_1666 |= (safe_mul_func_int16_t_s_s(((safe_unary_minus_func_int64_t_s(((*p_33) = (l_1718 ^ (((safe_lshift_func_uint8_t_u_u((l_1723 || (safe_mod_func_uint64_t_u_u((!(((***p_2702->g_1638) & (safe_lshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_s(((safe_lshift_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u(((*p_2702->g_564) = (((~(safe_sub_func_uint16_t_u_u(0x6898L, (**p_2702->g_582)))) == 0xF13C7410D927A2FFL) == l_1719)), 2)) <= 0x0CDB8ADBL), 1)) >= l_1723), 3)), l_1718))) , l_1672)), 0x1DB35B6F17901765L))), 3)) , (*p_33)) == l_1702[1]))))) , l_1760), (*p_2702->g_583))))) == p_2702->g_1761) < p_2702->g_17[6])));
                    for (p_2702->g_1188 = 0; (p_2702->g_1188 >= 0); p_2702->g_1188 -= 1)
                    { /* block id: 865 */
                        int32_t *l_1763[2][2][5] = {{{&l_1719,&l_1719,&l_1719,&l_1719,&l_1719},{&l_1719,&l_1719,&l_1719,&l_1719,&l_1719}},{{&l_1719,&l_1719,&l_1719,&l_1719,&l_1719},{&l_1719,&l_1719,&l_1719,&l_1719,&l_1719}}};
                        int i, j, k;
                        l_1772[3]--;
                    }
                    for (l_1764 = 0; (l_1764 >= 0); l_1764 -= 1)
                    { /* block id: 870 */
                        int32_t ****l_1789 = &l_1785;
                        uint64_t *l_1790 = &p_2702->g_158;
                        int i, j, k;
                        (*l_1762) |= ((255UL == p_2702->g_2[(l_1764 + 1)][l_1764][l_1764]) ^ (safe_mul_func_int16_t_s_s((GROUP_DIVERGE(0, 1) & ((safe_lshift_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((safe_rshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_u(((*l_1720) = (6L <= l_1702[0])), 9)), 2)), ((((*l_1790) = (((*l_1789) = (l_1787 = l_1785)) != &p_2702->g_1342[0][6])) < (safe_lshift_func_int16_t_s_s(((((((-2L) > (safe_sub_func_int16_t_s_s((&p_2702->g_564 == (l_1795 , (void*)0)), (*p_2702->g_419)))) && (*p_2702->g_1187)) == 6L) , l_1715) != l_1796[7][0][0]), l_1770[6][0][2]))) > l_1723))), 12)) ^ l_1652[1][4])), l_1702[2])));
                        return l_1719;
                    }
                }
                l_1771 |= l_1770[0][5][3];
                if (l_1767[1][0][6])
                    break;
            }
            for (l_1666 = 0; (l_1666 <= 0); l_1666 += 1)
            { /* block id: 884 */
                uint16_t l_1801[5];
                int32_t *l_1816 = (void*)0;
                int32_t *l_1817 = (void*)0;
                int32_t *l_1818 = &p_2702->g_1448;
                int32_t l_1903 = (-1L);
                int32_t l_1907 = 0x3316E2FCL;
                int32_t l_1908 = 0x2CC1CB3BL;
                int32_t l_1910 = 0x4E3F2D06L;
                int32_t l_1911 = 0x4CE2649BL;
                int32_t l_1912 = (-9L);
                int32_t l_1913 = (-1L);
                int32_t l_1914 = (-1L);
                int32_t l_1917 = 0x5B2ECBF6L;
                int i;
                for (i = 0; i < 5; i++)
                    l_1801[i] = 65526UL;
                if (((safe_rshift_func_uint16_t_u_s((*p_2702->g_419), (l_1795 > ((*l_1818) = (l_1815 = (safe_lshift_func_int8_t_s_s(((((l_1801[1] | l_1772[3]) <= (l_1801[0] ^ l_1801[1])) > (safe_sub_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((+((((l_1808 > ((((safe_mul_func_uint16_t_u_u((safe_div_func_int8_t_s_s((((void*)0 != l_1813) ^ p_2702->g_17[1]), (**p_2702->g_1186))), l_1814)) | l_1801[1]) < p_2702->g_162) ^ 1UL)) , (void*)0) == (void*)0) || 6L)), (**p_2702->g_563))), 1L)) < 0x36L), l_1814))) , l_1801[2]), (*p_2702->g_564)))))))) | l_1766))
                { /* block id: 887 */
                    uint32_t ***l_1837 = &l_1835;
                    int32_t l_1838 = (-4L);
                    int32_t l_1853[8][6][5] = {{{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL}},{{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL}},{{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL}},{{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL}},{{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL}},{{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL}},{{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL}},{{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL},{0x4BEA80A7L,(-1L),0x4800C473L,(-2L),0x031D84FDL}}};
                    int32_t l_1854 = (-9L);
                    int64_t **l_1862[9][6] = {{&p_2702->g_1721[6][3],(void*)0,(void*)0,&p_2702->g_1721[6][5],&p_2702->g_1721[6][5],&p_2702->g_1721[6][3]},{&p_2702->g_1721[6][3],(void*)0,(void*)0,&p_2702->g_1721[6][5],&p_2702->g_1721[6][5],&p_2702->g_1721[6][3]},{&p_2702->g_1721[6][3],(void*)0,(void*)0,&p_2702->g_1721[6][5],&p_2702->g_1721[6][5],&p_2702->g_1721[6][3]},{&p_2702->g_1721[6][3],(void*)0,(void*)0,&p_2702->g_1721[6][5],&p_2702->g_1721[6][5],&p_2702->g_1721[6][3]},{&p_2702->g_1721[6][3],(void*)0,(void*)0,&p_2702->g_1721[6][5],&p_2702->g_1721[6][5],&p_2702->g_1721[6][3]},{&p_2702->g_1721[6][3],(void*)0,(void*)0,&p_2702->g_1721[6][5],&p_2702->g_1721[6][5],&p_2702->g_1721[6][3]},{&p_2702->g_1721[6][3],(void*)0,(void*)0,&p_2702->g_1721[6][5],&p_2702->g_1721[6][5],&p_2702->g_1721[6][3]},{&p_2702->g_1721[6][3],(void*)0,(void*)0,&p_2702->g_1721[6][5],&p_2702->g_1721[6][5],&p_2702->g_1721[6][3]},{&p_2702->g_1721[6][3],(void*)0,(void*)0,&p_2702->g_1721[6][5],&p_2702->g_1721[6][5],&p_2702->g_1721[6][3]}};
                    uint8_t *****l_1869[10][7][3] = {{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}},{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}},{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}},{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}},{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}},{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}},{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}},{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}},{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}},{{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]},{(void*)0,(void*)0,&p_2702->g_1637[2]}}};
                    int32_t *l_1879 = &p_2702->g_1880;
                    int i, j, k;
                    if ((((**p_2702->g_563) = ((safe_div_func_uint16_t_u_u(((*p_2702->g_419) = (((safe_lshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u((l_1808 || ((((safe_rshift_func_uint8_t_u_u(0x42L, (**p_2702->g_1186))) ^ (safe_sub_func_uint8_t_u_u((*l_1818), (!0x17L)))) <= ((*p_34) = (safe_add_func_int8_t_s_s((-1L), (((*l_1667)++) < (((*l_1837) = l_1835) == (p_2702->g_104 , (void*)0))))))) & 1L)), l_1652[0][1])), p_2702->g_102)), l_1838)) != p_2702->g_7) <= l_1672)), l_1702[0])) && (**p_2702->g_582))) < l_1772[3]))
                    { /* block id: 893 */
                        uint64_t *l_1839 = &p_2702->g_299;
                        int16_t **l_1852[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t l_1855 = 0x2B3E93EFL;
                        int i;
                        (*l_1818) = ((0x6A56F619E80FC41BL || (--(*l_1839))) && ((safe_mod_func_int8_t_s_s(((l_1838 , 0UL) > (++(*p_2702->g_1332))), (safe_lshift_func_int16_t_s_s(((safe_lshift_func_int8_t_s_u(((void*)0 != &p_2702->g_921), (((GROUP_DIVERGE(1, 1) && (safe_add_func_int16_t_s_s(0x2A7FL, (l_1854 ^= (((**p_2702->g_582) = (((*p_2702->g_564) = l_1814) | (l_1852[3] != (void*)0))) , l_1853[6][4][2]))))) | FAKE_DIVERGE(p_2702->group_1_offset, get_group_id(1), 10)) || l_1855))) >= GROUP_DIVERGE(1, 1)), 10)))) & (*p_34)));
                        (*l_1818) &= (((FAKE_DIVERGE(p_2702->group_2_offset, get_group_id(2), 10) == 0x70DFC9933D0EF43BL) & (p_2702->g_700 , (*p_2702->g_583))) ^ (*p_2702->g_86));
                        (*l_1818) &= (l_1855 = (1UL && 0x0AL));
                        if (l_1795)
                            continue;
                    }
                    else
                    { /* block id: 904 */
                        int32_t **l_1859[4][1];
                        int64_t **l_1861 = &l_1722;
                        int64_t ***l_1860 = &l_1861;
                        int i, j;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1859[i][j] = &p_2702->g_228;
                        }
                        (*p_2702->g_1325) = l_1856;
                        l_1862[5][1] = ((*l_1860) = &p_2702->g_1721[6][5]);
                        return l_1853[6][4][2];
                    }
                    for (p_2702->g_104 = 0; (p_2702->g_104 <= 0); p_2702->g_104 += 1)
                    { /* block id: 912 */
                        int32_t **l_1863 = (void*)0;
                        int32_t *l_1864[7][10] = {{&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768,&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768},{&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768,&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768},{&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768,&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768},{&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768,&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768},{&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768,&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768},{&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768,&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768},{&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768,&l_1768,&p_2702->g_129,(void*)0,&p_2702->g_129,&l_1768}};
                        int i, j;
                        l_1864[2][5] = l_1817;
                        if ((*l_1856))
                            continue;
                        if (l_1718)
                            continue;
                    }
                    (*l_1818) = (((safe_mod_func_uint8_t_u_u(((((*l_1879) &= ((safe_mod_func_int64_t_s_s(((*p_2702->g_86) >= ((void*)0 != l_1869[4][2][1])), (GROUP_DIVERGE(2, 1) || ((l_1718 == 0x386DL) <= (safe_mod_func_int8_t_s_s((((*l_1668) |= (((((((l_1838 , 3UL) == ((safe_div_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((0x020C7BD4L && (l_1854 == l_1838)), (**p_2702->g_563))), l_1702[2])) != p_2702->g_125)) , l_1878) == (void*)0) ^ 0x6D6FFFE7CDC338C5L) , p_32) != &p_2702->g_921)) <= 1L), GROUP_DIVERGE(2, 1))))))) , p_2702->g_8)) , (void*)0) != (void*)0), 255UL)) , 0x583A925FL) && (*p_2702->g_983));
                    l_1881 = &l_1672;
                }
                else
                { /* block id: 921 */
                    int32_t *l_1883[9][8] = {{&l_1666,&p_2702->g_1448,&p_2702->g_5,&l_1766,&p_2702->g_5,&p_2702->g_1448,&l_1666,&l_1771},{&l_1666,&p_2702->g_1448,&p_2702->g_5,&l_1766,&p_2702->g_5,&p_2702->g_1448,&l_1666,&l_1771},{&l_1666,&p_2702->g_1448,&p_2702->g_5,&l_1766,&p_2702->g_5,&p_2702->g_1448,&l_1666,&l_1771},{&l_1666,&p_2702->g_1448,&p_2702->g_5,&l_1766,&p_2702->g_5,&p_2702->g_1448,&l_1666,&l_1771},{&l_1666,&p_2702->g_1448,&p_2702->g_5,&l_1766,&p_2702->g_5,&p_2702->g_1448,&l_1666,&l_1771},{&l_1666,&p_2702->g_1448,&p_2702->g_5,&l_1766,&p_2702->g_5,&p_2702->g_1448,&l_1666,&l_1771},{&l_1666,&p_2702->g_1448,&p_2702->g_5,&l_1766,&p_2702->g_5,&p_2702->g_1448,&l_1666,&l_1771},{&l_1666,&p_2702->g_1448,&p_2702->g_5,&l_1766,&p_2702->g_5,&p_2702->g_1448,&l_1666,&l_1771},{&l_1666,&p_2702->g_1448,&p_2702->g_5,&l_1766,&p_2702->g_5,&p_2702->g_1448,&l_1666,&l_1771}};
                    int i, j;
                    if (l_1701)
                        goto lbl_1882;
                    (*p_2702->g_1884) = (l_1883[2][1] = &l_1766);
                }
            }
        }
        (*l_1936) = (void*)0;
        (*p_2702->g_1596) = &l_1702[0];
        --l_1939;
    }
lbl_2087:
    for (p_2702->g_162 = 3; (p_2702->g_162 >= 0); p_2702->g_162 -= 1)
    { /* block id: 969 */
        int32_t *l_1942 = (void*)0;
        uint32_t ****l_1946[10] = {&l_1659,&l_1659,&l_1659,&l_1659,&l_1659,&l_1659,&l_1659,&l_1659,&l_1659,&l_1659};
        uint64_t **l_1968[6][6][7] = {{{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878}},{{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878}},{{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878}},{{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878}},{{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878}},{{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878},{&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878}}};
        int32_t l_1969 = 0x677E163BL;
        uint64_t l_1970 = 18446744073709551615UL;
        uint32_t l_1971 = 4294967295UL;
        uint16_t l_1980 = 0xF7D8L;
        int32_t l_1988 = (-8L);
        uint32_t l_2005 = 1UL;
        uint8_t **l_2021 = &p_2702->g_486;
        int32_t l_2045[8][2][6] = {{{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L},{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L}},{{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L},{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L}},{{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L},{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L}},{{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L},{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L}},{{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L},{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L}},{{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L},{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L}},{{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L},{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L}},{{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L},{8L,0x66E4A249L,5L,0x01DECCF7L,0x3691A265L,0x01DECCF7L}}};
        int32_t * volatile l_2056 = &l_2045[6][1][1];/* VOLATILE GLOBAL l_2056 */
        int i, j, k;
        l_1935 = l_1942;
        l_1702[1] |= ((l_1946[4] != p_2702->g_1947) | ((safe_sub_func_int64_t_s_s((((*l_1878) = ((safe_div_func_int64_t_s_s((safe_add_func_uint64_t_u_u((((safe_sub_func_int32_t_s_s(((*l_1881) &= (safe_sub_func_int8_t_s_s(0x46L, (9L != ((safe_div_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u(((safe_mod_func_int32_t_s_s((l_1967 == &l_1813), ((~((l_1969 ^= (((void*)0 == l_1968[3][5][5]) & ((((void*)0 == &l_1920) & (-2L)) & 0x64C9L))) != 252UL)) , 0x44017514L))) >= (***p_2702->g_1638)), l_1970)) , l_1971), (*p_2702->g_419))), FAKE_DIVERGE(p_2702->local_0_offset, get_local_id(0), 10))) < FAKE_DIVERGE(p_2702->group_2_offset, get_group_id(2), 10)))))), (-1L))) >= (-1L)) <= l_1971), 0x0FAC28B7CB6314D4L)), 2L)) , GROUP_DIVERGE(2, 1))) ^ (*p_2702->g_1187)), p_2702->g_82[1])) != (*p_2702->g_564)));
        for (p_2702->g_1448 = 3; (p_2702->g_1448 >= 0); p_2702->g_1448 -= 1)
        { /* block id: 977 */
            int32_t l_1987 = (-1L);
            int32_t l_2039 = 0x7AB51303L;
            int32_t l_2041[1][7][10] = {{{0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L},{0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L},{0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L},{0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L},{0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L},{0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L},{0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L,(-8L),0x3B997162L,0x3B997162L}}};
            int i, j, k;
            for (l_1808 = 3; (l_1808 >= 0); l_1808 -= 1)
            { /* block id: 980 */
                int64_t l_1972 = (-4L);
                int32_t l_1973[9];
                int32_t *l_1974 = &p_2702->g_8;
                int32_t *l_1975 = (void*)0;
                int32_t *l_1976 = &l_1973[1];
                int32_t *l_1977 = &p_2702->g_129;
                int32_t *l_1978 = &l_1702[2];
                int32_t *l_1979[5][1][9] = {{{&p_2702->g_8,&p_2702->g_1448,&p_2702->g_1448,&l_1702[0],&p_2702->g_4,&p_2702->g_8,&l_1702[0],(void*)0,&l_1702[0]}},{{&p_2702->g_8,&p_2702->g_1448,&p_2702->g_1448,&l_1702[0],&p_2702->g_4,&p_2702->g_8,&l_1702[0],(void*)0,&l_1702[0]}},{{&p_2702->g_8,&p_2702->g_1448,&p_2702->g_1448,&l_1702[0],&p_2702->g_4,&p_2702->g_8,&l_1702[0],(void*)0,&l_1702[0]}},{{&p_2702->g_8,&p_2702->g_1448,&p_2702->g_1448,&l_1702[0],&p_2702->g_4,&p_2702->g_8,&l_1702[0],(void*)0,&l_1702[0]}},{{&p_2702->g_8,&p_2702->g_1448,&p_2702->g_1448,&l_1702[0],&p_2702->g_4,&p_2702->g_8,&l_1702[0],(void*)0,&l_1702[0]}}};
                uint16_t ***l_2014 = &p_2702->g_1305;
                int i, j, k;
                for (i = 0; i < 9; i++)
                    l_1973[i] = 0x11C5932EL;
                --l_1980;
                for (l_1672 = 0; (l_1672 <= 8); l_1672 += 1)
                { /* block id: 984 */
                    int32_t * volatile *l_1983 = (void*)0;
                    int32_t l_1989 = (-1L);
                    int32_t l_1990 = 0x4D61B75DL;
                    uint16_t l_1991 = 65534UL;
                    uint16_t ***l_2013 = &p_2702->g_1305;
                    int32_t l_2046 = 0x36C028B3L;
                    int32_t l_2047 = 0x2A59A56EL;
                    int32_t l_2048 = 9L;
                    int i, j, k;
                    (*p_2702->g_1984) = p_2702->g_1586[(p_2702->g_162 + 1)][(p_2702->g_162 + 1)][p_2702->g_1448];
                    for (p_2702->g_512 = 4; (p_2702->g_512 >= 0); p_2702->g_512 -= 1)
                    { /* block id: 988 */
                        int16_t l_1985 = 0L;
                        int32_t l_1986[4][3] = {{4L,4L,4L},{4L,4L,4L},{4L,4L,4L},{4L,4L,4L}};
                        int i, j;
                        l_1991--;
                    }
                    if ((((*l_1976) &= ((((p_2702->g_487[l_1672][l_1808][p_2702->g_1448] != ((p_2702->g_487[(l_1808 + 2)][p_2702->g_162][p_2702->g_1448] && (safe_rshift_func_uint8_t_u_u((p_2702->g_82[l_1672] , ((safe_sub_func_uint8_t_u_u((l_1971 , (*l_1978)), ((safe_mul_func_int16_t_s_s((**p_2702->g_582), (safe_rshift_func_int8_t_s_u(((void*)0 == &p_2702->g_1638), (safe_rshift_func_int16_t_s_u(((*p_2702->g_583) , l_2004), 3)))))) || 0x80F0L))) , l_2005)), l_1987))) < (-4L))) | (*p_2702->g_1187)) , (*l_1977)) >= (*l_1978))) , l_1990))
                    { /* block id: 992 */
                        int64_t l_2010[8];
                        int32_t l_2011 = (-4L);
                        int64_t **l_2012[3][9][2] = {{{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]}},{{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]}},{{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]},{&p_2702->g_1721[6][5],&p_2702->g_1721[2][3]}}};
                        int i, j, k;
                        for (i = 0; i < 8; i++)
                            l_2010[i] = 0x3F63CFF4E0E0B972L;
                        l_2011 ^= ((*l_1978) > ((safe_add_func_int64_t_s_s(l_1987, GROUP_DIVERGE(0, 1))) || (((*l_1668) = l_2010[7]) > (+0L))));
                        (*l_1978) ^= ((l_2010[3] && ((l_2012[2][6][1] == &p_2702->g_1721[6][4]) > (l_2013 != l_2014))) != (*p_2702->g_419));
                    }
                    else
                    { /* block id: 996 */
                        uint16_t l_2015[9][1][1] = {{{0x5778L}},{{0x5778L}},{{0x5778L}},{{0x5778L}},{{0x5778L}},{{0x5778L}},{{0x5778L}},{{0x5778L}},{{0x5778L}}};
                        uint16_t *l_2018 = &p_2702->g_1449[3][3];
                        int32_t l_2040 = 0L;
                        int32_t l_2042 = 0x3E1A9083L;
                        int32_t l_2043 = 0x0550922AL;
                        int32_t l_2044[8][5][6] = {{{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL}},{{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL}},{{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL}},{{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL}},{{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL}},{{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL}},{{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL}},{{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL},{0x69F4F4CBL,0x7FCFCEEFL,0x1BDD2287L,0x6828C822L,0x1BDD2287L,0x7FCFCEEFL}}};
                        int i, j, k;
                        (*l_1974) &= 0x0415B803L;
                        if (l_2015[6][0][0])
                            continue;
                        (*l_1976) = ((((p_2702->g_1129 , (safe_add_func_uint16_t_u_u(((*l_2018) &= (*p_2702->g_419)), ((l_2021 == (*l_1967)) || ((~((((safe_sub_func_int32_t_s_s((safe_add_func_uint16_t_u_u((safe_div_func_int16_t_s_s((+(*p_2702->g_583)), (safe_sub_func_uint8_t_u_u(((((((((safe_add_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_2702->global_2_offset, get_global_id(2), 10), (safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (safe_add_func_uint32_t_u_u(((((*p_2702->g_1332) || (1L > ((p_2702->g_2038 = &p_2702->g_482) == (void*)0))) < (*l_1881)) | 0x0C32259A0B649751L), l_2015[6][0][0])))))), (*l_1881))) & (*p_33)) && 0UL) == 0x68713C2BFA53D661L) != (*p_33)) != p_2702->g_700) , 0x77L) & l_2015[8][0][0]), l_2015[1][0][0])))), 0x1AC8L)), l_1987)) , (void*)0) != (void*)0) >= (*p_2702->g_564))) >= (*p_2702->g_1187)))))) <= (*p_2702->g_419)) & 0x12F24F85L) == (*p_2702->g_1187));
                        --l_2049;
                    }
                    if (l_2039)
                        continue;
                }
                (*p_2702->g_983) = (safe_sub_func_uint32_t_u_u((&p_2702->g_1498 == &p_2702->g_1884), 0x22D58069L));
            }
            for (l_1987 = 3; (l_1987 >= 0); l_1987 -= 1)
            { /* block id: 1010 */
                int32_t * volatile *l_2055[3][8][2] = {{{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981}},{{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981}},{{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981},{(void*)0,&p_2702->g_981}}};
                int i, j, k;
                l_2056 = p_2702->g_1586[p_2702->g_1448][(p_2702->g_1448 + 1)][p_2702->g_1448];
                return (**p_2702->g_582);
            }
        }
    }
    for (p_2702->g_1880 = 8; (p_2702->g_1880 >= 3); p_2702->g_1880 -= 1)
    { /* block id: 1018 */
        uint64_t l_2063[5][10] = {{6UL,0x5C628DE569B77055L,18446744073709551610UL,0UL,0xF83F491FF447A6ADL,0UL,18446744073709551610UL,0x5C628DE569B77055L,6UL,18446744073709551610UL},{6UL,0x5C628DE569B77055L,18446744073709551610UL,0UL,0xF83F491FF447A6ADL,0UL,18446744073709551610UL,0x5C628DE569B77055L,6UL,18446744073709551610UL},{6UL,0x5C628DE569B77055L,18446744073709551610UL,0UL,0xF83F491FF447A6ADL,0UL,18446744073709551610UL,0x5C628DE569B77055L,6UL,18446744073709551610UL},{6UL,0x5C628DE569B77055L,18446744073709551610UL,0UL,0xF83F491FF447A6ADL,0UL,18446744073709551610UL,0x5C628DE569B77055L,6UL,18446744073709551610UL},{6UL,0x5C628DE569B77055L,18446744073709551610UL,0UL,0xF83F491FF447A6ADL,0UL,18446744073709551610UL,0x5C628DE569B77055L,6UL,18446744073709551610UL}};
        int32_t *l_2066[8][1][9] = {{{&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448}},{{&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448}},{{&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448}},{{&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448}},{{&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448}},{{&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448}},{{&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448}},{{&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448,&p_2702->g_1448,(void*)0,&p_2702->g_1448}}};
        int32_t l_2088 = 0L;
        int8_t l_2101[7][8] = {{0x0AL,(-1L),0x0AL,0x0AL,(-1L),0x0AL,0x0AL,(-1L)},{0x0AL,(-1L),0x0AL,0x0AL,(-1L),0x0AL,0x0AL,(-1L)},{0x0AL,(-1L),0x0AL,0x0AL,(-1L),0x0AL,0x0AL,(-1L)},{0x0AL,(-1L),0x0AL,0x0AL,(-1L),0x0AL,0x0AL,(-1L)},{0x0AL,(-1L),0x0AL,0x0AL,(-1L),0x0AL,0x0AL,(-1L)},{0x0AL,(-1L),0x0AL,0x0AL,(-1L),0x0AL,0x0AL,(-1L)},{0x0AL,(-1L),0x0AL,0x0AL,(-1L),0x0AL,0x0AL,(-1L)}};
        uint8_t l_2119 = 0xE0L;
        uint64_t l_2148 = 18446744073709551612UL;
        uint16_t ***l_2150 = &p_2702->g_1305;
        uint64_t l_2218[6] = {0x6E28CD386D91E2ADL,0x6E28CD386D91E2ADL,0x6E28CD386D91E2ADL,0x6E28CD386D91E2ADL,0x6E28CD386D91E2ADL,0x6E28CD386D91E2ADL};
        uint8_t *****l_2220 = (void*)0;
        int8_t l_2242 = 0x6FL;
        int i, j, k;
        for (p_2702->g_131 = 0; (p_2702->g_131 <= 2); p_2702->g_131 += 1)
        { /* block id: 1021 */
            int32_t *l_2057 = (void*)0;
            int32_t *l_2058 = &l_1672;
            int32_t *l_2059 = (void*)0;
            int32_t *l_2060 = &p_2702->g_129;
            int32_t *l_2061 = &l_1702[2];
            int32_t *l_2062[4][5][3] = {{{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672}},{{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672}},{{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672}},{{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672},{&l_1672,&l_1672,&l_1672}}};
            int i, j, k;
            l_2063[2][1]++;
            (*p_2702->g_2068) = l_2066[1][0][8];
            if ((*l_2060))
                break;
        }
        for (p_2702->g_125 = 0; (p_2702->g_125 <= 8); p_2702->g_125 += 1)
        { /* block id: 1028 */
            uint32_t l_2071 = 0xA37E318DL;
            int32_t l_2084 = (-1L);
            uint8_t **l_2085 = &p_2702->g_486;
            int32_t l_2086 = 0x7E1A112DL;
            int32_t *l_2105 = &p_2702->g_8;
            int64_t l_2113 = 0x1B5F814D19633EF2L;
            int32_t l_2115 = 0x0A875637L;
            int32_t l_2118 = 3L;
            uint8_t *****l_2219 = &p_2702->g_1637[1];
            uint16_t ***l_2262 = &p_2702->g_1305;
            uint8_t **l_2310 = (void*)0;
            l_2086 = (safe_sub_func_uint8_t_u_u(l_2071, ((FAKE_DIVERGE(p_2702->local_1_offset, get_local_id(1), 10) ^ (safe_sub_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((*l_1881) && (0x12A61097L ^ (safe_mul_func_int8_t_s_s(l_2071, ((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2702->group_2_offset, get_group_id(2), 10), ((--(*p_2702->g_419)) > 65535UL))) || ((l_2084 = (p_2702->g_2[2][2][0] = ((*p_2702->g_564) ^= l_2071))) , (l_2085 == (void*)0))))))), (*l_1881))), l_2071))) >= (*l_1881))));
            for (p_2702->g_606 = 0; (p_2702->g_606 <= 5); p_2702->g_606 += 1)
            { /* block id: 1036 */
                int16_t l_2096 = 0L;
                int8_t l_2103 = 0L;
                int32_t l_2106 = (-9L);
                int32_t l_2108 = 0x7EED1B4BL;
                int32_t l_2109 = 8L;
                int32_t l_2111[2];
                uint16_t ***l_2152 = &p_2702->g_1305;
                uint32_t **l_2205 = &l_1796[2][1][1];
                uint64_t *l_2259 = &p_2702->g_2244;
                int i;
                for (i = 0; i < 2; i++)
                    l_2111[i] = 0L;
                for (p_2702->g_102 = 4; (p_2702->g_102 >= 0); p_2702->g_102 -= 1)
                { /* block id: 1039 */
                    if (l_2049)
                        goto lbl_2087;
                    l_2088 |= (*l_1881);
                }
            }
            for (p_2702->g_158 = 0; (p_2702->g_158 <= 8); p_2702->g_158 += 1)
            { /* block id: 1126 */
                int32_t *l_2284[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                (1 + 1);
            }
        }
        for (l_2089 = 3; (l_2089 <= 8); l_2089 += 1)
        { /* block id: 1152 */
            int64_t l_2313 = 0x311D72E1F03AA0D6L;
            for (p_2702->g_470 = 0; (p_2702->g_470 <= 8); p_2702->g_470 += 1)
            { /* block id: 1155 */
                int32_t *l_2314[7][7][1] = {{{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004}},{{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004}},{{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004}},{{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004}},{{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004}},{{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004}},{{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004},{&l_2004}}};
                int32_t l_2315 = 0x1E8A7EA4L;
                int64_t **l_2336 = &l_1668;
                int32_t ***l_2339 = (void*)0;
                int32_t l_2340 = 0L;
                int32_t l_2342 = 0x1CBC9E0DL;
                int i, j, k;
                l_2342 = (safe_div_func_uint8_t_u_u((((l_2315 = (l_2313 & ((*p_2702->g_583) |= 0x0EAAL))) , ((safe_add_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s((~((((safe_sub_func_uint8_t_u_u((((***l_1967) = l_2313) & ((-3L) == (safe_div_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(((*p_2702->g_583) &= ((((((*p_2702->g_419) ^= (GROUP_DIVERGE(0, 1) && 0x74F290F11FDCB0ECL)) | (safe_div_func_uint16_t_u_u(0x6008L, (safe_div_func_uint32_t_u_u(((l_2313 != ((((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), 13)) || ((safe_add_func_int8_t_s_s(((((*l_2336) = &l_2089) != (((+(safe_mod_func_uint64_t_u_u(((void*)0 != l_2339), (*p_33)))) | 0x1707L) , (void*)0)) > l_2340), 0x8CL)) ^ 0x4BFAL)) && l_2313) && 0x93CA63B3L)) == (*p_2702->g_564)), (*p_2702->g_1332)))))) >= (*l_1881)) != l_2341) >= 0x223EL)), 3)), 3L)))), 0xE4L)) >= 0x35L) == l_2315) , 0xD06CL)), 12)), p_2702->g_2147)) | (*l_1881))) >= 0x79E0L), l_2313));
            }
        }
    }
    return (*p_2702->g_583);
}


/* ------------------------------------------ */
/* 
 * reads : p_2702->g_240 p_2702->g_1498 p_2702->g_17 p_2702->g_1187 p_2702->g_1188 p_2702->g_486 p_2702->g_487 p_2702->g_419 p_2702->g_482 p_2702->g_564 p_2702->g_1186 p_2702->g_4 p_2702->g_470 p_2702->g_1448 p_2702->g_370 p_2702->g_131 p_2702->g_563 p_2702->g_162 p_2702->g_322 p_2702->g_1449 p_2702->g_583 p_2702->g_556 p_2702->g_1590 p_2702->g_921 p_2702->g_2 p_2702->g_212 p_2702->g_1596 p_2702->g_747 p_2702->g_1637 p_2702->g_1641 p_2702->g_1260
 * writes: p_2702->g_240 p_2702->g_213 p_2702->g_1188 p_2702->g_162 p_2702->g_370 p_2702->g_1448 p_2702->g_921 p_2702->g_1260 p_2702->g_1449 p_2702->g_102 p_2702->g_8 p_2702->g_129 p_2702->g_228 p_2702->g_487 p_2702->g_1637
 */
int32_t  func_44(int64_t * p_45, uint32_t  p_46, int32_t  p_47, uint8_t  p_48, struct S0 * p_2702)
{ /* block id: 728 */
    int8_t l_1499 = 0x35L;
    int32_t l_1500 = 0x768079FEL;
    int32_t l_1501[3][6] = {{0x0F1C4023L,1L,0x04FB2CE7L,1L,1L,1L},{0x0F1C4023L,1L,0x04FB2CE7L,1L,1L,1L},{0x0F1C4023L,1L,0x04FB2CE7L,1L,1L,1L}};
    int16_t l_1502[7];
    uint16_t ***l_1539 = &p_2702->g_1305;
    int32_t *l_1540 = &p_2702->g_1448;
    uint32_t *l_1547 = (void*)0;
    int16_t l_1611 = 0x4CDCL;
    int64_t l_1614 = 0x2098333BD0875532L;
    int i, j;
    for (i = 0; i < 7; i++)
        l_1502[i] = 0x1A9AL;
    for (p_2702->g_240 = 1; (p_2702->g_240 <= 8); p_2702->g_240 += 1)
    { /* block id: 731 */
        int32_t *l_1497[6];
        int8_t l_1503[8][3] = {{6L,0L,6L},{6L,0L,6L},{6L,0L,6L},{6L,0L,6L},{6L,0L,6L},{6L,0L,6L},{6L,0L,6L},{6L,0L,6L}};
        uint8_t l_1504 = 0x5BL;
        uint8_t ***l_1524 = &p_2702->g_1186;
        uint8_t ****l_1523 = &l_1524;
        int i, j;
        for (i = 0; i < 6; i++)
            l_1497[i] = (void*)0;
        (*p_2702->g_1498) = l_1497[0];
        --l_1504;
        p_47 = (p_2702->g_17[p_2702->g_240] != (((((safe_div_func_int8_t_s_s(((p_47 & (safe_lshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_u((l_1502[0] || (p_46 || (((((safe_div_func_uint64_t_u_u(8UL, ((*p_2702->g_1187) ^= 0x45FA92F127E0E133L))) != GROUP_DIVERGE(2, 1)) || (*p_2702->g_486)) , (safe_mod_func_int64_t_s_s(((GROUP_DIVERGE(2, 1) > (*p_2702->g_419)) < ((((safe_div_func_uint64_t_u_u(((safe_add_func_int32_t_s_s((safe_mul_func_int8_t_s_s(((*p_2702->g_564) = (((((((*l_1523) = &p_2702->g_1186) != (void*)0) == 0xA25FA3CFL) | p_48) != l_1501[2][5]) ^ p_2702->g_482)), (**p_2702->g_1186))), 4294967293UL)) != p_2702->g_4), 0x4A116FA23B824F5BL)) <= p_47) == p_2702->g_470) , (*p_2702->g_1187))), 0x646D00AC8155E866L))) & p_48))), 10)), p_48))) | 3L), 0x28L)) , 1L) & p_2702->g_1448) , 0x6507CB8EL) , 0x5447L));
        for (p_2702->g_370 = 3; (p_2702->g_370 <= 8); p_2702->g_370 += 1)
        { /* block id: 740 */
            int32_t l_1527 = 0L;
            int32_t l_1536 = 0L;
            int i;
            if (p_48)
                break;
            l_1536 &= ((safe_add_func_int64_t_s_s(l_1527, ((l_1500 || (((*p_2702->g_1187) = (safe_mul_func_uint16_t_u_u(((1L == 0xF44E9B42818E7653L) , p_48), (p_2702->g_131 , p_46)))) , ((safe_add_func_int64_t_s_s((safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((0xA7L || ((((p_47 < GROUP_DIVERGE(0, 1)) , 0UL) != FAKE_DIVERGE(p_2702->global_2_offset, get_global_id(2), 10)) & l_1501[0][5])), FAKE_DIVERGE(p_2702->global_1_offset, get_global_id(1), 10))), (*p_2702->g_419))), p_47)) , 4294967291UL))) == (-1L)))) ^ (**p_2702->g_563));
        }
    }
lbl_1591:
    (*l_1540) = (safe_add_func_int8_t_s_s(((void*)0 != l_1539), (0x43L || p_47)));
    if (((safe_add_func_uint32_t_u_u(((-7L) == (FAKE_DIVERGE(p_2702->local_2_offset, get_local_id(2), 10) ^ ((((safe_div_func_int8_t_s_s(0x30L, ((p_48 < (((+((*l_1540) = 0x109A5C77L)) == (0x3039L || (((*p_2702->g_419)++) || (&p_46 != ((p_47 != 0UL) , l_1547))))) , 0x0A765835CE5DDC01L)) ^ l_1502[3]))) >= 0x0A53FCFD12CFE90BL) > 4294967286UL) <= l_1502[2]))), 0x3480BDC6L)) == 2UL))
    { /* block id: 749 */
        int32_t l_1570 = (-1L);
        int8_t **l_1604[4][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
        int32_t l_1615 = (-4L);
        int32_t l_1616 = 1L;
        int32_t l_1618 = 0x64713599L;
        uint32_t l_1634 = 0x244E22C5L;
        int i, j;
        for (p_2702->g_921 = 0; (p_2702->g_921 >= 0); p_2702->g_921 -= 1)
        { /* block id: 752 */
            int8_t l_1571[7];
            uint64_t *l_1584 = (void*)0;
            int32_t l_1612 = 1L;
            int32_t l_1613[8][5][1] = {{{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L}},{{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L}},{{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L}},{{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L}},{{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L}},{{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L}},{{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L}},{{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L},{0x4EE60E07L}}};
            int32_t *l_1631 = &p_2702->g_512;
            uint8_t *****l_1639 = &p_2702->g_1637[1];
            uint8_t l_1640 = 0x8DL;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_1571[i] = 4L;
            for (p_2702->g_1260 = 0; (p_2702->g_1260 <= 8); p_2702->g_1260 += 1)
            { /* block id: 755 */
                int32_t l_1572 = 1L;
                uint16_t *l_1573 = &p_2702->g_1449[0][1];
                uint32_t **l_1600 = &p_2702->g_1332;
                uint32_t **l_1601 = &l_1547;
                int32_t l_1619 = 0x37278B0FL;
                uint8_t l_1620 = 0x07L;
                uint8_t **l_1632 = &p_2702->g_486;
                uint8_t l_1633 = 254UL;
                int i;
                if ((*l_1540))
                    break;
                if ((safe_div_func_int64_t_s_s((safe_sub_func_int32_t_s_s((safe_lshift_func_int8_t_s_u(((0UL == ((*l_1573) |= (safe_add_func_uint64_t_u_u(p_2702->g_322[4], ((safe_sub_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((!(safe_sub_func_int16_t_s_s((&l_1499 != &p_2702->g_2[1][1][0]), (safe_sub_func_int32_t_s_s((((p_48 , (safe_mul_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(((-7L) <= (*p_2702->g_1187)), ((safe_rshift_func_int16_t_s_u(1L, 3)) != (l_1570 , l_1571[3])))) , (*p_2702->g_419)), 0x2D11L))) , 9UL) >= GROUP_DIVERGE(2, 1)), 0x1D43762AL))))) <= 1L), (*l_1540))), l_1572)) && GROUP_DIVERGE(0, 1)))))) ^ p_46), p_46)), 4294967295UL)), 2L)))
                { /* block id: 758 */
                    uint16_t **l_1576 = &p_2702->g_419;
                    int32_t **l_1579[10][3];
                    int32_t *l_1585 = &l_1572;
                    int32_t *l_1593[4][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int32_t **l_1594 = (void*)0;
                    int32_t **l_1595 = &p_2702->g_228;
                    int i, j;
                    for (i = 0; i < 10; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_1579[i][j] = (void*)0;
                    }
                    (*p_2702->g_1590) = ((*l_1585) = ((*p_2702->g_556) = ((safe_rshift_func_uint16_t_u_u((((*l_1540) = (0xA01236973A5B872FL < p_48)) && (l_1576 == (void*)0)), 12)) , (safe_mul_func_uint8_t_u_u((((l_1570 & (((*p_2702->g_583) = ((void*)0 != l_1579[4][1])) > ((safe_rshift_func_uint8_t_u_u((0x305F639D1E642350L || (safe_lshift_func_int8_t_s_s(((void*)0 == l_1584), p_46))), 4)) , 0x3715L))) , l_1584) == (void*)0), l_1570)))));
                    for (p_46 = 0; (p_46 <= 0); p_46 += 1)
                    { /* block id: 766 */
                        int32_t **l_1592 = &l_1585;
                        if (p_2702->g_370)
                            goto lbl_1591;
                        l_1593[3][2] = ((*l_1592) = &l_1501[0][0]);
                    }
                    for (p_2702->g_1448 = 0; (p_2702->g_1448 <= 0); p_2702->g_1448 += 1)
                    { /* block id: 773 */
                        int i, j, k;
                        return p_2702->g_2[p_2702->g_921][(p_2702->g_1448 + 2)][p_2702->g_1448];
                    }
                    (*p_2702->g_212) = (p_2702->g_1188 , ((*l_1595) = (void*)0));
                }
                else
                { /* block id: 778 */
                    (*p_2702->g_1596) = &l_1572;
                }
                for (p_2702->g_1188 = 0; (p_2702->g_1188 <= 0); p_2702->g_1188 += 1)
                { /* block id: 783 */
                    uint32_t **l_1599 = &l_1547;
                    int32_t l_1605 = (-3L);
                    int32_t l_1617[10] = {0x492D390BL,0x492D390BL,0x492D390BL,0x492D390BL,0x492D390BL,0x492D390BL,0x492D390BL,0x492D390BL,0x492D390BL,0x492D390BL};
                    int i, j, k;
                    l_1605 |= ((((p_2702->g_2[(p_2702->g_1188 + 2)][(p_2702->g_1188 + 3)][p_2702->g_1188] , (safe_mul_func_int16_t_s_s(((l_1600 = l_1599) == l_1601), (safe_add_func_uint64_t_u_u((((((p_46 , l_1604[0][0]) == (void*)0) && (0x659AL && p_46)) & 0x41B0A4177E051770L) | (*p_2702->g_564)), 0L))))) | FAKE_DIVERGE(p_2702->group_2_offset, get_group_id(2), 10)) >= p_48) && l_1570);
                    for (p_46 = 5; (p_46 < 5); p_46 = safe_add_func_int32_t_s_s(p_46, 5))
                    { /* block id: 788 */
                        int16_t l_1608[8][7][4] = {{{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L}},{{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L}},{{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L}},{{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L}},{{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L}},{{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L}},{{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L}},{{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L},{0x0D93L,0x26DEL,0x594EL,1L}}};
                        int32_t *l_1609 = &p_2702->g_1448;
                        int32_t *l_1610[8][9] = {{&l_1605,&p_2702->g_129,&l_1605,&l_1501[0][0],&l_1501[2][4],&l_1605,&l_1501[0][0],&l_1501[0][0],&l_1501[0][0]},{&l_1605,&p_2702->g_129,&l_1605,&l_1501[0][0],&l_1501[2][4],&l_1605,&l_1501[0][0],&l_1501[0][0],&l_1501[0][0]},{&l_1605,&p_2702->g_129,&l_1605,&l_1501[0][0],&l_1501[2][4],&l_1605,&l_1501[0][0],&l_1501[0][0],&l_1501[0][0]},{&l_1605,&p_2702->g_129,&l_1605,&l_1501[0][0],&l_1501[2][4],&l_1605,&l_1501[0][0],&l_1501[0][0],&l_1501[0][0]},{&l_1605,&p_2702->g_129,&l_1605,&l_1501[0][0],&l_1501[2][4],&l_1605,&l_1501[0][0],&l_1501[0][0],&l_1501[0][0]},{&l_1605,&p_2702->g_129,&l_1605,&l_1501[0][0],&l_1501[2][4],&l_1605,&l_1501[0][0],&l_1501[0][0],&l_1501[0][0]},{&l_1605,&p_2702->g_129,&l_1605,&l_1501[0][0],&l_1501[2][4],&l_1605,&l_1501[0][0],&l_1501[0][0],&l_1501[0][0]},{&l_1605,&p_2702->g_129,&l_1605,&l_1501[0][0],&l_1501[2][4],&l_1605,&l_1501[0][0],&l_1501[0][0],&l_1501[0][0]}};
                        int i, j, k;
                        (*l_1540) ^= l_1571[0];
                        l_1620--;
                        (*l_1540) = ((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u((--(**p_2702->g_1186)), (safe_sub_func_uint32_t_u_u((((*p_2702->g_419) , l_1631) == (l_1571[3] , p_2702->g_747[(p_2702->g_921 + 3)])), ((void*)0 != l_1632))))), (-5L))) && (((~((-7L) & l_1633)) , l_1616) && l_1613[1][1][0]));
                        l_1634--;
                    }
                }
            }
            l_1640 = (((*l_1639) = p_2702->g_1637[1]) != (p_2702->g_162 , &p_2702->g_1638));
        }
    }
    else
    { /* block id: 800 */
        (*p_2702->g_1641) = (p_46 , &p_47);
    }
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_2702->g_419 p_2702->g_240 p_2702->g_564 p_2702->g_162 p_2702->g_486 p_2702->g_487 p_2702->g_1188 p_2702->g_370 p_2702->g_86 p_2702->g_87 p_2702->g_6 p_2702->g_127 p_2702->g_228 p_2702->g_129 p_2702->g_322 p_2702->g_700 p_2702->g_1186 p_2702->g_1187 p_2702->g_606 p_2702->g_563 p_2702->g_82 p_2702->g_85 p_2702->g_618 p_2702->g_1325 p_2702->g_1326 p_2702->g_1330 p_2702->g_582 p_2702->g_583 p_2702->g_1185 p_2702->g_1345 p_2702->g_131 p_2702->g_407 p_2702->g_125
 * writes: p_2702->g_240 p_2702->g_606 p_2702->g_127 p_2702->g_129 p_2702->g_125 p_2702->g_102 p_2702->g_322 p_2702->g_700 p_2702->g_487 p_2702->g_1188 p_2702->g_196 p_2702->g_512 p_2702->g_1260 p_2702->g_481 p_2702->g_131 p_2702->g_1305 p_2702->g_228 p_2702->g_1331 p_2702->g_213
 */
int64_t * func_49(uint16_t  p_50, uint8_t * p_51, int16_t  p_52, int64_t * p_53, uint32_t  p_54, struct S0 * p_2702)
{ /* block id: 559 */
    uint8_t ***l_1206 = &p_2702->g_1186;
    uint8_t ***l_1207 = &p_2702->g_1186;
    uint8_t ***l_1208[9][4] = {{&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186},{&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186},{&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186},{&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186},{&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186},{&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186},{&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186},{&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186},{&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186,&p_2702->g_1186}};
    int32_t l_1209 = (-1L);
    uint16_t *l_1210 = &p_2702->g_127;
    uint16_t l_1238 = 0xE1B7L;
    int8_t **l_1264 = (void*)0;
    int8_t ***l_1263 = &l_1264;
    int8_t l_1265 = 0x41L;
    uint32_t l_1270 = 0x27FF3ED8L;
    int16_t l_1284 = 1L;
    int32_t l_1289[8];
    int8_t l_1335 = 0x6CL;
    uint16_t l_1379 = 65535UL;
    uint64_t l_1381 = 0xAD1902A3505573E8L;
    int64_t *l_1398 = &p_2702->g_125;
    int i, j;
    for (i = 0; i < 8; i++)
        l_1289[i] = 0x4365F3FAL;
    (*p_2702->g_228) &= ((((*l_1210) |= (safe_mul_func_int8_t_s_s(((p_2702->g_606 = (safe_rshift_func_uint16_t_u_s(((((-1L) >= ((((*p_2702->g_419) = (((((!0x41L) <= (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_2702->global_0_offset, get_global_id(0), 10), (((*p_2702->g_419) == (((safe_rshift_func_uint16_t_u_s(65528UL, 12)) > (safe_lshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(((safe_div_func_int32_t_s_s((1UL > (*p_2702->g_564)), (safe_rshift_func_uint8_t_u_s((*p_2702->g_486), 1)))) && (*p_2702->g_419)), ((l_1207 = (l_1206 = l_1206)) == l_1208[5][0]))), 4))) , p_54)) , 0xF0BEL)))) | (*p_2702->g_564)) , l_1209) ^ (*p_53))) <= 0UL) , p_52)) | p_2702->g_370) == (*p_2702->g_86)), 7))) && p_2702->g_6), 0x71L))) >= 65535UL) >= 0x424AL);
lbl_1495:
    for (p_2702->g_125 = 0; (p_2702->g_125 <= 8); p_2702->g_125 += 1)
    { /* block id: 568 */
        uint32_t *l_1248 = &p_2702->g_482;
        int8_t **l_1262 = &p_2702->g_564;
        int8_t ***l_1261 = &l_1262;
        int32_t l_1267[2][6][7] = {{{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L}},{{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L},{0x629C85ABL,0L,0x20214426L,0x00283E2CL,(-1L),0x00283E2CL,0x20214426L}}};
        int64_t *l_1280[7][9] = {{&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481,&p_2702->g_1188,&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481},{&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481,&p_2702->g_1188,&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481},{&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481,&p_2702->g_1188,&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481},{&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481,&p_2702->g_1188,&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481},{&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481,&p_2702->g_1188,&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481},{&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481,&p_2702->g_1188,&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481},{&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481,&p_2702->g_1188,&p_2702->g_1188,&p_2702->g_481,(void*)0,&p_2702->g_481}};
        uint16_t **l_1303[1][1][1];
        int32_t l_1341 = 1L;
        int32_t *l_1344 = &p_2702->g_5;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 1; k++)
                    l_1303[i][j][k] = &p_2702->g_419;
            }
        }
        for (p_2702->g_127 = 0; (p_2702->g_127 <= 4); p_2702->g_127 += 1)
        { /* block id: 571 */
            int8_t *l_1243 = &p_2702->g_700;
            int32_t *l_1257 = &p_2702->g_196;
            int32_t *l_1258 = &p_2702->g_512;
            int32_t *l_1259 = &p_2702->g_1260;
            int64_t *l_1266 = &p_2702->g_481;
            int32_t l_1268[7][8] = {{(-1L),0x66D89FC5L,0x66D89FC5L,(-1L),(-1L),0x66D89FC5L,0x66D89FC5L,(-1L)},{(-1L),0x66D89FC5L,0x66D89FC5L,(-1L),(-1L),0x66D89FC5L,0x66D89FC5L,(-1L)},{(-1L),0x66D89FC5L,0x66D89FC5L,(-1L),(-1L),0x66D89FC5L,0x66D89FC5L,(-1L)},{(-1L),0x66D89FC5L,0x66D89FC5L,(-1L),(-1L),0x66D89FC5L,0x66D89FC5L,(-1L)},{(-1L),0x66D89FC5L,0x66D89FC5L,(-1L),(-1L),0x66D89FC5L,0x66D89FC5L,(-1L)},{(-1L),0x66D89FC5L,0x66D89FC5L,(-1L),(-1L),0x66D89FC5L,0x66D89FC5L,(-1L)},{(-1L),0x66D89FC5L,0x66D89FC5L,(-1L),(-1L),0x66D89FC5L,0x66D89FC5L,(-1L)}};
            uint32_t *l_1269 = &p_2702->g_606;
            int i, j;
            for (p_50 = 0; (p_50 <= 3); p_50 += 1)
            { /* block id: 574 */
                int32_t *l_1211 = &p_2702->g_131;
                int32_t *l_1212 = &l_1209;
                int32_t *l_1213 = (void*)0;
                int32_t *l_1214 = &p_2702->g_129;
                int32_t *l_1215 = &p_2702->g_129;
                int32_t *l_1216 = &p_2702->g_129;
                int32_t *l_1217 = &p_2702->g_129;
                int32_t *l_1218 = &p_2702->g_8;
                int32_t *l_1219 = (void*)0;
                int32_t *l_1220 = &l_1209;
                int32_t *l_1221 = &l_1209;
                int32_t *l_1222 = &p_2702->g_129;
                int32_t *l_1223 = (void*)0;
                int32_t *l_1224 = &p_2702->g_131;
                int32_t *l_1225 = &p_2702->g_8;
                int32_t *l_1226 = &p_2702->g_131;
                int32_t *l_1227 = &p_2702->g_131;
                int32_t *l_1228 = &p_2702->g_8;
                int32_t *l_1229 = &p_2702->g_8;
                int32_t *l_1230 = &p_2702->g_8;
                int32_t *l_1231 = &p_2702->g_8;
                int32_t *l_1232 = &p_2702->g_129;
                int32_t *l_1233 = &p_2702->g_131;
                int32_t *l_1234 = &l_1209;
                int32_t *l_1235 = &p_2702->g_8;
                int32_t *l_1236 = &p_2702->g_129;
                int32_t *l_1237[10][10] = {{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131},{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131},{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131},{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131},{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131},{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131},{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131},{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131},{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131},{&p_2702->g_131,(void*)0,&p_2702->g_4,&p_2702->g_4,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_4,&p_2702->g_131,&p_2702->g_131}};
                int i, j;
                l_1238--;
                if (p_2702->g_322[(p_50 + 1)])
                    break;
                for (p_2702->g_102 = 0; p_2702->g_102 < 5; p_2702->g_102 += 1)
                {
                    p_2702->g_322[p_2702->g_102] = 0x7990L;
                }
            }
            (*p_2702->g_228) = (safe_sub_func_uint8_t_u_u(p_2702->g_322[p_2702->g_127], ((*l_1243) &= (*p_2702->g_564))));
            if ((safe_div_func_uint16_t_u_u((((*l_1269) |= ((((safe_add_func_int32_t_s_s(((*p_2702->g_228) = ((void*)0 == l_1248)), ((((GROUP_DIVERGE(0, 1) >= 5L) , 0xBA67C93DL) & (safe_add_func_int64_t_s_s(((*l_1266) = (((p_52 != (l_1209 | (((((*l_1259) = ((*l_1258) = ((*l_1257) = ((safe_mul_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(((((***l_1206) = p_2702->g_322[p_2702->g_127]) < 0x23L) != (safe_mul_func_uint16_t_u_u((((*p_2702->g_1187) = ((+p_52) == 0x571FL)) || (*p_53)), p_50))), p_52)), p_50)) , l_1209)))) , l_1261) == l_1263) , 0L))) != l_1265) & 65532UL)), p_52))) >= 0x1571AAE53B72D593L))) ^ l_1267[0][4][5]) == l_1268[4][4]) >= l_1267[1][0][6])) || p_52), 0x0A0CL)))
            { /* block id: 589 */
                if (l_1267[0][4][4])
                    break;
                return p_53;
            }
            else
            { /* block id: 592 */
                if (p_52)
                    break;
                for (p_2702->g_512 = 0; (p_2702->g_512 <= 3); p_2702->g_512 += 1)
                { /* block id: 596 */
                    int i;
                    if (l_1268[5][7])
                        break;
                    ++l_1270;
                }
                return &p_2702->g_1188;
            }
        }
        (*p_2702->g_228) ^= p_50;
        for (p_2702->g_1188 = 4; (p_2702->g_1188 >= 0); p_2702->g_1188 -= 1)
        { /* block id: 606 */
            uint32_t *l_1275 = &p_2702->g_482;
            int32_t l_1283 = 0L;
            int32_t l_1285 = 0x609DE566L;
            int32_t l_1288 = 1L;
            int32_t l_1291 = (-7L);
            int32_t l_1293 = 0x64CF170EL;
            int32_t l_1294 = 0x2152E9FCL;
            int32_t l_1295[6] = {1L,(-9L),1L,1L,(-9L),1L};
            int64_t l_1321 = 3L;
            int32_t *l_1343 = &l_1285;
            int i;
            for (p_2702->g_131 = 8; (p_2702->g_131 >= 0); p_2702->g_131 -= 1)
            { /* block id: 609 */
                int32_t l_1286 = 0x6D12BD8AL;
                int32_t l_1287 = 0x0C223F8FL;
                int32_t l_1292[5][10] = {{(-9L),(-3L),(-3L),(-9L),0x4D5C2E4AL,1L,1L,0x4D5C2E4AL,(-9L),(-3L)},{(-9L),(-3L),(-3L),(-9L),0x4D5C2E4AL,1L,1L,0x4D5C2E4AL,(-9L),(-3L)},{(-9L),(-3L),(-3L),(-9L),0x4D5C2E4AL,1L,1L,0x4D5C2E4AL,(-9L),(-3L)},{(-9L),(-3L),(-3L),(-9L),0x4D5C2E4AL,1L,1L,0x4D5C2E4AL,(-9L),(-3L)},{(-9L),(-3L),(-3L),(-9L),0x4D5C2E4AL,1L,1L,0x4D5C2E4AL,(-9L),(-3L)}};
                int16_t l_1296 = 0x5986L;
                int16_t l_1322 = 2L;
                uint32_t *l_1328 = &p_2702->g_606;
                uint32_t **l_1327 = &l_1328;
                int i, j;
                if (p_2702->g_322[p_2702->g_1188])
                { /* block id: 610 */
                    uint8_t l_1279[5][9] = {{255UL,0x71L,0x99L,0x8DL,0x99L,0x71L,255UL,0xF3L,251UL},{255UL,0x71L,0x99L,0x8DL,0x99L,0x71L,255UL,0xF3L,251UL},{255UL,0x71L,0x99L,0x8DL,0x99L,0x71L,255UL,0xF3L,251UL},{255UL,0x71L,0x99L,0x8DL,0x99L,0x71L,255UL,0xF3L,251UL},{255UL,0x71L,0x99L,0x8DL,0x99L,0x71L,255UL,0xF3L,251UL}};
                    int i, j;
                    for (p_2702->g_1260 = 3; (p_2702->g_1260 >= 0); p_2702->g_1260 -= 1)
                    { /* block id: 613 */
                        uint32_t *l_1276[5] = {&p_2702->g_606,&p_2702->g_606,&p_2702->g_606,&p_2702->g_606,&p_2702->g_606};
                        int i;
                        (*p_2702->g_228) = (safe_add_func_int32_t_s_s((l_1248 == l_1275), (l_1279[3][6] = (p_2702->g_606--))));
                        return l_1280[6][8];
                    }
                }
                else
                { /* block id: 619 */
                    int32_t *l_1281 = &l_1267[1][0][3];
                    int32_t *l_1282[2][1][6] = {{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_131,&p_2702->g_129,&p_2702->g_131}}};
                    int8_t l_1290[5];
                    uint32_t l_1298 = 0x088C98AFL;
                    uint16_t ***l_1304[8] = {&l_1303[0][0][0],&l_1303[0][0][0],&l_1303[0][0][0],&l_1303[0][0][0],&l_1303[0][0][0],&l_1303[0][0][0],&l_1303[0][0][0],&l_1303[0][0][0]};
                    int8_t *l_1319 = &l_1290[0];
                    int8_t **l_1318 = &l_1319;
                    int8_t *l_1320[1][2];
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                        l_1290[i] = 1L;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_1320[i][j] = &l_1290[1];
                    }
                    l_1298++;
                    (*l_1281) = (safe_add_func_uint8_t_u_u((((p_2702->g_1305 = l_1303[0][0][0]) != (void*)0) ^ 65534UL), (safe_lshift_func_uint8_t_u_u((((((((*p_2702->g_486) = GROUP_DIVERGE(0, 1)) | (**p_2702->g_563)) != ((safe_rshift_func_int8_t_s_u((l_1289[3] = (safe_sub_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), 6)), ((safe_mod_func_int64_t_s_s((safe_sub_func_int16_t_s_s((!((((0x2BB9BB2F84CEF04CL && (((*l_1318) = (void*)0) == (((((l_1238 == 250UL) , 4294967290UL) , (*p_2702->g_1187)) >= 8L) , p_51))) & (-4L)) > 0x2AL) > (-1L))), l_1267[0][4][5])), 6L)) && l_1287)))), 0)) , p_2702->g_82[1])) || l_1321) && l_1322) & p_54), (**p_2702->g_85)))));
                    (*p_2702->g_228) ^= ((0xBED1L || 0L) == (4294967295UL & GROUP_DIVERGE(1, 1)));
                }
                for (l_1270 = 0; (l_1270 <= 3); l_1270 += 1)
                { /* block id: 630 */
                    (*p_2702->g_1325) = (*p_2702->g_618);
                    for (l_1265 = 0; (l_1265 <= 3); l_1265 += 1)
                    { /* block id: 634 */
                        (*p_2702->g_1326) = &l_1267[1][1][4];
                        return &p_2702->g_125;
                    }
                    if (p_54)
                        break;
                }
                (*p_2702->g_1330) = l_1327;
                l_1341 ^= (safe_add_func_int16_t_s_s((((void*)0 == l_1275) < ((l_1335 = l_1267[1][1][5]) <= p_52)), ((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((**p_2702->g_85), 0)), 2)) && (safe_unary_minus_func_int64_t_s((&l_1284 == (*p_2702->g_582)))))));
            }
            l_1343 = (*p_2702->g_1185);
            if (p_52)
                continue;
            (*p_2702->g_1345) = l_1344;
        }
    }
    for (p_2702->g_131 = 0; (p_2702->g_131 < 4); p_2702->g_131++)
    { /* block id: 651 */
        uint32_t l_1362 = 4294967295UL;
        uint32_t **l_1386 = (void*)0;
        uint16_t **l_1411[10][1];
        int32_t l_1419[2];
        int8_t *l_1451[6][9] = {{&p_2702->g_162,&p_2702->g_700,&p_2702->g_700,&l_1335,(void*)0,&l_1335,&p_2702->g_700,&p_2702->g_700,&p_2702->g_162},{&p_2702->g_162,&p_2702->g_700,&p_2702->g_700,&l_1335,(void*)0,&l_1335,&p_2702->g_700,&p_2702->g_700,&p_2702->g_162},{&p_2702->g_162,&p_2702->g_700,&p_2702->g_700,&l_1335,(void*)0,&l_1335,&p_2702->g_700,&p_2702->g_700,&p_2702->g_162},{&p_2702->g_162,&p_2702->g_700,&p_2702->g_700,&l_1335,(void*)0,&l_1335,&p_2702->g_700,&p_2702->g_700,&p_2702->g_162},{&p_2702->g_162,&p_2702->g_700,&p_2702->g_700,&l_1335,(void*)0,&l_1335,&p_2702->g_700,&p_2702->g_700,&p_2702->g_162},{&p_2702->g_162,&p_2702->g_700,&p_2702->g_700,&l_1335,(void*)0,&l_1335,&p_2702->g_700,&p_2702->g_700,&p_2702->g_162}};
        int i, j;
        for (i = 0; i < 10; i++)
        {
            for (j = 0; j < 1; j++)
                l_1411[i][j] = &p_2702->g_419;
        }
        for (i = 0; i < 2; i++)
            l_1419[i] = 0x26B266F1L;
        (1 + 1);
    }
    if ((safe_add_func_int64_t_s_s(((*p_2702->g_1187) = (p_50 < (safe_mod_func_int8_t_s_s(((*p_53) || l_1381), 246UL)))), l_1381)))
    { /* block id: 721 */
        int32_t *l_1493 = &p_2702->g_8;
        (*p_2702->g_407) = l_1493;
    }
    else
    { /* block id: 723 */
        l_1289[4] = (0x08F20670L || (*p_2702->g_228));
        if (p_2702->g_1188)
            goto lbl_1495;
    }
    return &p_2702->g_481;
}


/* ------------------------------------------ */
/* 
 * reads : p_2702->g_2 p_2702->g_4 p_2702->g_85 p_2702->g_82 p_2702->g_87 p_2702->g_8 p_2702->g_3 p_2702->g_102 p_2702->g_86 p_2702->g_104 p_2702->g_125 p_2702->g_131 p_2702->g_129 p_2702->g_162 p_2702->g_202 p_2702->g_158 p_2702->g_213 p_2702->g_299 p_2702->g_322 p_2702->g_240 p_2702->g_127 p_2702->g_6 p_2702->g_5 p_2702->g_482 p_2702->g_470 p_2702->g_481 p_2702->g_486 p_2702->g_487 p_2702->g_370 p_2702->g_512 p_2702->g_196 p_2702->g_7 p_2702->g_419 p_2702->g_543 p_2702->g_556 p_2702->g_563 p_2702->g_564 p_2702->g_17 p_2702->g_582 p_2702->g_583 p_2702->g_601 p_2702->g_614 p_2702->g_618 p_2702->g_228 p_2702->g_667 p_2702->g_606 p_2702->g_700 p_2702->g_212 p_2702->g_407 p_2702->g_744 p_2702->g_745 p_2702->g_1185
 * writes: p_2702->g_8 p_2702->g_102 p_2702->g_104 p_2702->g_82 p_2702->g_127 p_2702->g_129 p_2702->g_131 p_2702->g_158 p_2702->g_162 p_2702->g_202 p_2702->g_299 p_2702->g_125 p_2702->g_470 p_2702->g_482 p_2702->g_487 p_2702->g_240 p_2702->g_481 p_2702->g_606 p_2702->g_370 p_2702->g_228 p_2702->g_614 p_2702->g_213 p_2702->g_512 p_2702->g_407 p_2702->g_700 p_2702->g_583 p_2702->g_1186
 */
uint16_t  func_55(uint16_t  p_56, struct S0 * p_2702)
{ /* block id: 18 */
    int8_t l_61 = 0x28L;
    uint8_t *l_81 = &p_2702->g_82[5];
    uint8_t **l_83 = &l_81;
    uint8_t ***l_84 = &l_83;
    int16_t l_88 = 0x7801L;
    int64_t *l_485 = &p_2702->g_370;
    uint8_t *l_761 = &p_2702->g_762;
    (*l_84) = (p_2702->g_1186 = func_57(l_61, ((-1L) > (safe_add_func_uint32_t_u_u(p_2702->g_2[0][2][0], (safe_lshift_func_uint8_t_u_s(p_2702->g_4, 6))))), func_66(func_71((p_56 , (((func_77((safe_sub_func_uint16_t_u_u(5UL, (((l_81 == l_81) >= (((*l_84) = (p_2702->g_2[0][2][0] , l_83)) == p_2702->g_85)) & l_88))), p_2702) , l_61) <= p_2702->g_4) >= l_61)), p_2702->g_481, l_485, p_2702->g_486, l_61, p_2702), p_2702->g_486, l_61, l_761, p_2702), p_2702));
    return l_88;
}


/* ------------------------------------------ */
/* 
 * reads : p_2702->g_667 p_2702->g_129 p_2702->g_1185
 * writes: p_2702->g_129 p_2702->g_228
 */
uint8_t ** func_57(uint32_t  p_58, int16_t  p_59, uint8_t * p_60, struct S0 * p_2702)
{ /* block id: 552 */
    int32_t *l_1184 = &p_2702->g_129;
    (*p_2702->g_667) ^= p_59;
    (*p_2702->g_1185) = l_1184;
    return &p_2702->g_486;
}


/* ------------------------------------------ */
/* 
 * reads : p_2702->g_486 p_2702->g_487 p_2702->g_370 p_2702->g_481 p_2702->g_5 p_2702->g_2 p_2702->g_419 p_2702->g_240 p_2702->g_614
 * writes: p_2702->g_158 p_2702->g_583 p_2702->g_102 p_2702->g_606 p_2702->g_614
 */
uint8_t * func_66(int64_t * p_67, uint8_t * p_68, int8_t  p_69, uint8_t * p_70, struct S0 * p_2702)
{ /* block id: 354 */
    int16_t l_765 = 0L;
    uint64_t *l_766 = &p_2702->g_158;
    int16_t *l_773 = &p_2702->g_102;
    int16_t **l_774 = (void*)0;
    int16_t **l_775[8] = {&l_773,&p_2702->g_583,&l_773,&l_773,&p_2702->g_583,&l_773,&l_773,&p_2702->g_583};
    uint8_t *l_778 = &p_2702->g_82[5];
    uint32_t l_779 = 0x533A1AE8L;
    uint32_t *l_780 = (void*)0;
    uint32_t *l_781 = &p_2702->g_606;
    int32_t l_782 = 7L;
    int32_t l_856[4] = {0x0A1B3DE1L,0x0A1B3DE1L,0x0A1B3DE1L,0x0A1B3DE1L};
    int32_t l_857 = 1L;
    int32_t l_861 = (-1L);
    int32_t l_862 = 7L;
    uint32_t l_877 = 6UL;
    uint8_t l_992 = 248UL;
    int32_t **l_1040 = &p_2702->g_228;
    uint32_t l_1070 = 0x5B57D1DFL;
    uint32_t *l_1085 = &l_877;
    int32_t l_1130 = 0x31AF1425L;
    uint8_t *l_1183 = &p_2702->g_82[5];
    int i;
    l_782 = (((((((*p_2702->g_486) == 0x65L) >= (((*l_781) = (((*l_766) = (safe_add_func_int64_t_s_s((*p_67), (l_765 = ((void*)0 == &p_2702->g_85))))) | (((safe_add_func_int8_t_s_s((safe_div_func_int64_t_s_s((&p_2702->g_606 == (void*)0), (safe_sub_func_int64_t_s_s(((((p_2702->g_583 = l_773) == ((((((*l_773) = (safe_rshift_func_uint16_t_u_u(((((GROUP_DIVERGE(0, 1) , (l_778 != p_68)) , p_69) | p_2702->g_5) >= p_69), l_779))) , p_2702->g_2[1][2][0]) , (*p_2702->g_419)) < GROUP_DIVERGE(0, 1)) , (void*)0)) > l_779) == l_779), l_779)))), p_69)) ^ p_69) && (-1L)))) || p_69)) && 0x09L) | p_69) != 255UL) == 1UL);
    for (p_2702->g_614 = 0; (p_2702->g_614 != 53); p_2702->g_614++)
    { /* block id: 363 */
        uint32_t *l_788[1];
        int32_t l_816 = (-1L);
        int16_t **l_836 = (void*)0;
        int32_t l_853 = 0x35728DE8L;
        int32_t l_854 = 0x0215C055L;
        int32_t l_855 = 7L;
        int32_t l_858 = 6L;
        int32_t l_859 = 1L;
        uint32_t l_868[8] = {0x8E23A1E4L,0x8E23A1E4L,0x8E23A1E4L,0x8E23A1E4L,0x8E23A1E4L,0x8E23A1E4L,0x8E23A1E4L,0x8E23A1E4L};
        uint16_t l_918 = 3UL;
        uint16_t l_919 = 0x5081L;
        int8_t l_993 = 0x25L;
        uint16_t l_1029 = 65530UL;
        uint8_t **l_1039 = &l_778;
        int8_t l_1041 = 0x4FL;
        int32_t *l_1042 = &p_2702->g_8;
        int32_t *l_1043 = (void*)0;
        int32_t *l_1044 = &l_858;
        int32_t *l_1045 = &l_816;
        int32_t *l_1046 = &l_854;
        int32_t *l_1047 = &l_861;
        int32_t *l_1048 = &l_862;
        int32_t *l_1049 = &l_859;
        int32_t *l_1050 = &p_2702->g_129;
        int32_t *l_1051 = &p_2702->g_131;
        int32_t *l_1052 = (void*)0;
        uint16_t l_1053 = 4UL;
        int8_t l_1060[3][2];
        int8_t l_1145 = 8L;
        int i, j;
        for (i = 0; i < 1; i++)
            l_788[i] = &p_2702->g_606;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_1060[i][j] = 0x08L;
        }
        (1 + 1);
    }
    return l_1183;
}


/* ------------------------------------------ */
/* 
 * reads : p_2702->g_131 p_2702->g_129 p_2702->g_482 p_2702->g_487 p_2702->g_370 p_2702->g_85 p_2702->g_86 p_2702->g_87 p_2702->g_512 p_2702->g_196 p_2702->g_7 p_2702->g_82 p_2702->g_470 p_2702->g_2 p_2702->g_486 p_2702->g_102 p_2702->g_4 p_2702->g_419 p_2702->g_240 p_2702->g_543 p_2702->g_104 p_2702->g_127 p_2702->g_556 p_2702->g_563 p_2702->g_564 p_2702->g_162 p_2702->g_158 p_2702->g_17 p_2702->g_582 p_2702->g_299 p_2702->g_583 p_2702->g_601 p_2702->g_322 p_2702->g_5 p_2702->g_8 p_2702->g_614 p_2702->g_618 p_2702->g_213 p_2702->g_228 p_2702->g_667 p_2702->g_606 p_2702->g_481 p_2702->g_700 p_2702->g_212 p_2702->g_407 p_2702->g_744 p_2702->g_745
 * writes: p_2702->g_131 p_2702->g_299 p_2702->g_129 p_2702->g_482 p_2702->g_487 p_2702->g_82 p_2702->g_104 p_2702->g_8 p_2702->g_240 p_2702->g_127 p_2702->g_481 p_2702->g_102 p_2702->g_606 p_2702->g_370 p_2702->g_228 p_2702->g_614 p_2702->g_213 p_2702->g_158 p_2702->g_512 p_2702->g_407 p_2702->g_162 p_2702->g_700
 */
int64_t * func_71(int32_t  p_72, int32_t  p_73, int64_t * p_74, uint8_t * p_75, int64_t  p_76, struct S0 * p_2702)
{ /* block id: 200 */
    int32_t l_515[4][9][7] = {{{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L}},{{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L}},{{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L}},{{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L},{0L,0x13758207L,2L,0x702646C2L,0L,0x255613D5L,0x13758207L}}};
    int16_t *l_552 = &p_2702->g_102;
    int16_t **l_551 = &l_552;
    uint8_t ***l_555 = (void*)0;
    int64_t l_579 = 0x5353512B63C599E9L;
    int32_t **l_701[10][10][2] = {{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}},{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}},{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}},{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}},{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}},{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}},{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}},{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}},{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}},{{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228},{&p_2702->g_213,&p_2702->g_228}}};
    uint16_t l_757[4] = {0xF278L,0xF278L,0xF278L,0xF278L};
    int i, j, k;
    for (p_2702->g_131 = 4; (p_2702->g_131 >= 0); p_2702->g_131 -= 1)
    { /* block id: 203 */
        uint64_t l_511 = 0UL;
        int32_t l_514 = 0x2696B796L;
        uint32_t l_539 = 0xDE846BB9L;
        int16_t l_578 = (-1L);
        uint64_t l_585[3];
        int32_t l_611 = 8L;
        int32_t l_613[8] = {(-6L),1L,(-6L),(-6L),1L,(-6L),(-6L),1L};
        int32_t **l_617 = &p_2702->g_213;
        int64_t l_654[5][4] = {{0x7E2000CDB327D160L,(-2L),0x452BD67E6E618DE2L,(-2L)},{0x7E2000CDB327D160L,(-2L),0x452BD67E6E618DE2L,(-2L)},{0x7E2000CDB327D160L,(-2L),0x452BD67E6E618DE2L,(-2L)},{0x7E2000CDB327D160L,(-2L),0x452BD67E6E618DE2L,(-2L)},{0x7E2000CDB327D160L,(-2L),0x452BD67E6E618DE2L,(-2L)}};
        int64_t l_673[2];
        int i, j;
        for (i = 0; i < 3; i++)
            l_585[i] = 0x14B0DF85BE17999BL;
        for (i = 0; i < 2; i++)
            l_673[i] = (-1L);
        for (p_2702->g_299 = 1; (p_2702->g_299 <= 4); p_2702->g_299 += 1)
        { /* block id: 206 */
            int32_t l_492 = 0x4FD10662L;
            uint8_t **l_533 = &p_2702->g_486;
            uint8_t ***l_532 = &l_533;
            int8_t *l_560 = &p_2702->g_162;
            int8_t **l_559 = &l_560;
            int32_t l_584 = 0x34C66670L;
            int32_t *l_588[8][4][5] = {{{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129}},{{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129}},{{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129}},{{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129}},{{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129}},{{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129}},{{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129}},{{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129},{&l_584,&p_2702->g_129,&p_2702->g_4,&p_2702->g_129,&p_2702->g_129}}};
            int64_t l_594 = 0x1856B17AAF9FC9DAL;
            uint32_t l_595 = 1UL;
            int8_t *l_603 = &p_2702->g_2[2][0][0];
            int32_t l_612[4] = {0x05A445B0L,0x05A445B0L,0x05A445B0L,0x05A445B0L};
            int i, j, k;
            for (p_2702->g_129 = 1; (p_2702->g_129 <= 4); p_2702->g_129 += 1)
            { /* block id: 209 */
                int16_t l_505[7][8] = {{5L,0L,(-4L),(-8L),(-4L),0L,5L,0x0729L},{5L,0L,(-4L),(-8L),(-4L),0L,5L,0x0729L},{5L,0L,(-4L),(-8L),(-4L),0L,5L,0x0729L},{5L,0L,(-4L),(-8L),(-4L),0L,5L,0x0729L},{5L,0L,(-4L),(-8L),(-4L),0L,5L,0x0729L},{5L,0L,(-4L),(-8L),(-4L),0L,5L,0x0729L},{5L,0L,(-4L),(-8L),(-4L),0L,5L,0x0729L}};
                int32_t l_525 = 1L;
                int i, j, k;
                for (p_2702->g_482 = 0; (p_2702->g_482 <= 4); p_2702->g_482 += 1)
                { /* block id: 212 */
                    int16_t *l_491 = &p_2702->g_104;
                    int16_t **l_490 = &l_491;
                    uint8_t *l_506 = (void*)0;
                    uint8_t *l_507 = &p_2702->g_82[5];
                    int32_t l_510 = (-6L);
                    int8_t *l_513[10][2] = {{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]},{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]},{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]},{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]},{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]},{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]},{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]},{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]},{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]},{&p_2702->g_2[0][1][0],&p_2702->g_2[0][1][0]}};
                    int32_t l_522 = (-4L);
                    uint64_t *l_530 = (void*)0;
                    uint64_t *l_531 = &l_511;
                    int i, j, k;
                    l_515[1][4][1] = (p_2702->g_487[(p_2702->g_129 + 1)][p_2702->g_482][p_2702->g_129] , (safe_mul_func_uint8_t_u_u((p_2702->g_487[(p_2702->g_129 + 3)][p_2702->g_129][p_2702->g_131] = ((*p_74) , (l_490 != (void*)0))), (l_492 | (safe_rshift_func_uint8_t_u_u((((p_72 < (((l_514 = (safe_rshift_func_int16_t_s_s(((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(65527UL, (!((safe_lshift_func_int8_t_s_s(((safe_add_func_uint8_t_u_u(((*l_507) = l_505[5][5]), (safe_sub_func_int8_t_s_s(l_510, (**p_2702->g_85))))) >= FAKE_DIVERGE(p_2702->local_2_offset, get_local_id(2), 10)), 2)) < l_511)))), p_2702->g_512)) | p_73), l_505[5][5]))) ^ 0xB5L) , 0x1872L)) | 0xEFD0L) < p_2702->g_196), 4))))));
                    if (p_76)
                        continue;
                    if ((((safe_mul_func_uint8_t_u_u(((p_2702->g_7 & (((&p_2702->g_158 == &p_2702->g_158) || ((*l_491) = ((safe_div_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_s(((*l_507) |= l_522), p_73)) >= (((safe_lshift_func_uint16_t_u_s((((l_525 = p_2702->g_470) >= (safe_sub_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(((*l_531) = p_2702->g_370), p_73)), (l_492 || FAKE_DIVERGE(p_2702->global_0_offset, get_global_id(0), 10))))) || p_2702->g_2[1][3][0]), 1)) > p_73) != 0xE1L)), 0x193BL)) , 0L))) > (*p_2702->g_486))) > l_505[5][5]), p_2702->g_102)) , l_532) == &l_533))
                    { /* block id: 222 */
                        int64_t l_536 = 0x5E4B1F66D34266E9L;
                        int32_t *l_542 = (void*)0;
                        (*p_2702->g_543) = ((0x3DDEC6CEB219F70CL < (((safe_div_func_uint16_t_u_u((l_536 >= (safe_div_func_uint16_t_u_u(((2L | ((((((*p_74) , l_539) ^ (safe_mod_func_uint64_t_u_u(p_2702->g_4, ((*p_74) | (0x828B791F0A8279EDL ^ 0xF3D80B044C61683DL))))) <= p_76) , 4294967287UL) == p_73)) & l_492), (*p_2702->g_419)))), l_536)) <= l_511) , (*p_74))) > (*p_75));
                        (*p_2702->g_543) = (safe_rshift_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u(((((((((safe_add_func_int8_t_s_s(9L, GROUP_DIVERGE(1, 1))) >= 0xC863A66A1A8DC967L) != ((safe_unary_minus_func_int64_t_s((((**l_490) &= (&p_2702->g_85 != &p_2702->g_85)) < (((void*)0 == l_551) , p_72)))) , ((safe_lshift_func_uint16_t_u_u(1UL, ((0x0D16L & 0L) , 1UL))) || (*p_2702->g_419)))) , (void*)0) != (void*)0) , 0x7C272A32L) , p_76) , p_76), 5)) && p_2702->g_127), FAKE_DIVERGE(p_2702->local_2_offset, get_local_id(2), 10)));
                    }
                    else
                    { /* block id: 226 */
                        uint32_t l_575[1][2][7];
                        uint16_t *l_580 = &p_2702->g_127;
                        int32_t *l_581 = &l_514;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 2; j++)
                            {
                                for (k = 0; k < 7; k++)
                                    l_575[i][j][k] = 4294967295UL;
                            }
                        }
                        (*p_2702->g_556) = (l_555 != (p_72 , l_555));
                        (*l_581) &= ((safe_sub_func_uint64_t_u_u(((*l_531) = ((l_559 != ((safe_rshift_func_uint8_t_u_s((GROUP_DIVERGE(0, 1) == l_515[0][4][1]), 3)) , p_2702->g_563)) ^ (((*p_2702->g_419)--) <= p_2702->g_102))), p_2702->g_487[(p_2702->g_129 + 3)][p_2702->g_129][p_2702->g_131])) > ((**p_2702->g_563) <= (safe_mod_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u(((*l_580) = (safe_sub_func_int32_t_s_s(((--(*l_507)) >= (l_575[0][0][4] , ((p_2702->g_104 = ((((l_522 , (((safe_lshift_func_int16_t_s_u(0x0043L, l_578)) & FAKE_DIVERGE(p_2702->local_2_offset, get_local_id(2), 10)) & l_525)) && 0x19L) ^ p_2702->g_158) , p_2702->g_17[9])) ^ (-2L)))), l_579))), 5)), GROUP_DIVERGE(1, 1)))));
                        l_584 &= ((*l_581) = (0x02A5DBBEL && ((((*l_531) |= ((p_2702->g_582 == (void*)0) , 0UL)) > 1UL) ^ 0x6E24L)));
                    }
                    ++l_585[1];
                }
                l_588[3][3][2] = &l_584;
                (*p_2702->g_543) = (p_2702->g_487[p_2702->g_129][p_2702->g_131][p_2702->g_299] >= p_76);
            }
            for (p_2702->g_129 = 0; (p_2702->g_129 <= 4); p_2702->g_129 += 1)
            { /* block id: 245 */
                uint16_t l_589 = 0xF9BFL;
                int32_t l_608 = 0x3D61E716L;
                int32_t l_609[7][1][7] = {{{1L,0x0B73E5D3L,0x0EAC763FL,0x0B73E5D3L,1L,1L,0x0B73E5D3L}},{{1L,0x0B73E5D3L,0x0EAC763FL,0x0B73E5D3L,1L,1L,0x0B73E5D3L}},{{1L,0x0B73E5D3L,0x0EAC763FL,0x0B73E5D3L,1L,1L,0x0B73E5D3L}},{{1L,0x0B73E5D3L,0x0EAC763FL,0x0B73E5D3L,1L,1L,0x0B73E5D3L}},{{1L,0x0B73E5D3L,0x0EAC763FL,0x0B73E5D3L,1L,1L,0x0B73E5D3L}},{{1L,0x0B73E5D3L,0x0EAC763FL,0x0B73E5D3L,1L,1L,0x0B73E5D3L}},{{1L,0x0B73E5D3L,0x0EAC763FL,0x0B73E5D3L,1L,1L,0x0B73E5D3L}}};
                int i, j, k;
                for (p_2702->g_481 = 3; (p_2702->g_481 >= 0); p_2702->g_481 -= 1)
                { /* block id: 248 */
                    int32_t l_602 = 0x2C6B745BL;
                    int8_t **l_604 = (void*)0;
                    int64_t l_610 = 0x5D1FF4A8F08F598BL;
                    int i, j, k;
                    l_589++;
                    if (p_2702->g_17[(p_2702->g_129 + 1)])
                    { /* block id: 250 */
                        int32_t l_592 = 0L;
                        int32_t l_593[4];
                        uint32_t *l_605 = &p_2702->g_606;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_593[i] = 0x3F603F4FL;
                        if (p_72)
                            break;
                        l_595++;
                        (*p_2702->g_543) = (((*p_74) &= (((*l_605) = (((p_72 ^ (safe_add_func_int8_t_s_s((safe_unary_minus_func_uint16_t_u((&p_2702->g_564 == ((((0x4067L == (p_76 < ((*p_2702->g_583) || ((**l_551) = (((*p_75) , (((p_73 != GROUP_DIVERGE(2, 1)) & 1UL) , (((p_2702->g_487[4][3][1] > p_2702->g_601) , p_2702->g_322[4]) ^ l_602))) && 0x788F425E8C0D715AL))))) , l_603) != p_75) , l_604)))), 1L))) , (void*)0) != &l_593[0])) & l_539)) > p_2702->g_5);
                        if ((*p_2702->g_556))
                            continue;
                    }
                    else
                    { /* block id: 258 */
                        int32_t **l_607 = &p_2702->g_228;
                        (*l_607) = &l_514;
                    }
                    p_2702->g_614--;
                }
                if (l_579)
                    continue;
            }
        }
        if (p_72)
            continue;
        (*p_2702->g_618) = ((*l_617) = &l_613[4]);
        for (p_2702->g_158 = 0; (p_2702->g_158 <= 4); p_2702->g_158 += 1)
        { /* block id: 271 */
            uint16_t l_631[3];
            uint32_t *l_652[6][6] = {{&p_2702->g_606,&p_2702->g_606,(void*)0,&p_2702->g_606,&p_2702->g_606,&p_2702->g_606},{&p_2702->g_606,&p_2702->g_606,(void*)0,&p_2702->g_606,&p_2702->g_606,&p_2702->g_606},{&p_2702->g_606,&p_2702->g_606,(void*)0,&p_2702->g_606,&p_2702->g_606,&p_2702->g_606},{&p_2702->g_606,&p_2702->g_606,(void*)0,&p_2702->g_606,&p_2702->g_606,&p_2702->g_606},{&p_2702->g_606,&p_2702->g_606,(void*)0,&p_2702->g_606,&p_2702->g_606,&p_2702->g_606},{&p_2702->g_606,&p_2702->g_606,(void*)0,&p_2702->g_606,&p_2702->g_606,&p_2702->g_606}};
            int32_t l_653 = 0L;
            uint16_t *l_655 = &p_2702->g_127;
            int8_t l_702 = 0x61L;
            int32_t ***l_711 = &l_617;
            int16_t l_736[3];
            int32_t l_754 = 0x2EC2BB69L;
            int32_t l_755[6];
            int i, j;
            for (i = 0; i < 3; i++)
                l_631[i] = 0xA16DL;
            for (i = 0; i < 3; i++)
                l_736[i] = (-1L);
            for (i = 0; i < 6; i++)
                l_755[i] = 0x6FCE3C91L;
            if (((*p_2702->g_228) = (p_2702->g_129 &= (safe_add_func_int32_t_s_s(((safe_div_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(p_72, (((safe_lshift_func_int8_t_s_u((*p_2702->g_564), 4)) , (*p_2702->g_556)) != (safe_mod_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((*p_2702->g_419), (l_515[0][7][0] = 0L))), l_631[0]))))), (safe_mul_func_int16_t_s_s((((~(safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u((~((safe_div_func_int8_t_s_s(((((*p_2702->g_419) != (safe_div_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_u(((*l_655) = (((safe_rshift_func_int16_t_s_u((((((safe_lshift_func_uint16_t_u_s(0x1839L, 9)) >= (safe_lshift_func_uint16_t_u_s(((l_653 = (((((*p_2702->g_419) || 65535UL) ^ (*p_74)) , 0x591F417FL) & 0x18C0A741L)) <= p_2702->g_487[4][3][1]), 15))) >= (*p_2702->g_583)) <= p_76) < l_654[0][3]), 3)) , 0UL) || p_72)), 12)) || p_2702->g_158), (*p_2702->g_583)))) && (*p_2702->g_419)) || p_2702->g_82[1]), 0x5CL)) , 255UL)), (*p_2702->g_486))), 0))) < 0UL) , p_76), (**l_617))))) == (-2L)), 1L)))))
            { /* block id: 277 */
                uint32_t l_674[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_674[i] = 4294967295UL;
                for (p_2702->g_512 = 4; (p_2702->g_512 >= 1); p_2702->g_512 -= 1)
                { /* block id: 280 */
                    int32_t ***l_668 = (void*)0;
                    int32_t *l_669 = &l_653;
                    int32_t *l_670 = &l_611;
                    int32_t *l_671 = &l_613[7];
                    int32_t *l_672[10];
                    int i;
                    for (i = 0; i < 10; i++)
                        l_672[i] = &p_2702->g_8;
                    for (p_2702->g_104 = 0; (p_2702->g_104 <= 4); p_2702->g_104 += 1)
                    { /* block id: 283 */
                        int i, j, k;
                        (*p_2702->g_213) = 0x613AA89EL;
                        (*p_2702->g_667) |= (l_653 = ((((((p_2702->g_487[(p_2702->g_158 + 1)][p_2702->g_512][p_2702->g_158] < (-10L)) > FAKE_DIVERGE(p_2702->local_1_offset, get_local_id(1), 10)) || (!(((safe_lshift_func_int8_t_s_u(p_72, 4)) , ((void*)0 == &p_2702->g_86)) >= (safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_s((safe_unary_minus_func_int16_t_s((safe_div_func_uint16_t_u_u((((((*p_75) < 0x24L) , (**l_617)) , (safe_div_func_uint16_t_u_u(65533UL, 0x79DDL))) , p_73), (**p_2702->g_582))))), 3)), 6))))) , p_73) , 0x18L) <= 0x17L));
                        if ((*p_2702->g_543))
                            break;
                    }
                    p_2702->g_407 = &p_2702->g_213;
                    --l_674[4];
                }
            }
            else
            { /* block id: 292 */
                int8_t *l_699 = &p_2702->g_700;
                int32_t l_703 = 0x53A41F21L;
                (**l_617) = 0x131D63C8L;
                (*l_617) = (*p_2702->g_618);
                (*p_2702->g_213) = (safe_sub_func_uint32_t_u_u((((safe_mod_func_uint8_t_u_u((((safe_mul_func_int8_t_s_s(((safe_add_func_int8_t_s_s(((safe_mod_func_int32_t_s_s((safe_rshift_func_int16_t_s_u(p_72, 13)), p_2702->g_17[6])) & (safe_add_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((--(*p_75)) == (((((*l_699) = (safe_mul_func_int8_t_s_s(((**p_2702->g_563) = 0x61L), l_631[0]))) || ((void*)0 != &l_631[0])) , l_701[0][8][1]) == l_701[5][6][1])), (l_653 & 0x6EB5L))), p_2702->g_606)), 4L))), l_653)) == l_702), p_73)) || 0x623E9BA2L) < p_76), l_703)) , l_652[3][4]) != l_652[4][1]), l_703));
            }
            for (p_2702->g_481 = 0; (p_2702->g_481 <= 4); p_2702->g_481 += 1)
            { /* block id: 302 */
                int32_t l_733 = (-1L);
                int i, j, k;
                if (p_2702->g_487[(p_2702->g_131 + 3)][p_2702->g_158][p_2702->g_158])
                    break;
                for (l_511 = 0; (l_511 <= 4); l_511 += 1)
                { /* block id: 306 */
                    uint32_t l_708 = 1UL;
                    int32_t ***l_712 = &l_701[0][8][1];
                    (*p_2702->g_228) = (safe_add_func_uint64_t_u_u(1UL, (((*l_655) = (!(**l_617))) > (p_76 ^ (((safe_add_func_uint16_t_u_u(((((((l_708 == (((p_2702->g_4 | (safe_sub_func_int16_t_s_s((p_2702->g_4 , (l_711 != l_712)), (safe_add_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((((void*)0 != &l_552) > p_76), 0x40L)), (*p_2702->g_667)))))) , p_73) < 255UL)) >= 0x4DF8ECBCL) ^ p_2702->g_487[2][0][0]) != GROUP_DIVERGE(2, 1)) , &p_2702->g_583) != &l_552), p_72)) , FAKE_DIVERGE(p_2702->global_2_offset, get_global_id(2), 10)) | (*p_2702->g_213))))));
                }
                for (p_2702->g_129 = 0; (p_2702->g_129 <= 4); p_2702->g_129 += 1)
                { /* block id: 312 */
                    int16_t l_732 = 0x30FFL;
                    for (p_2702->g_700 = 4; (p_2702->g_700 >= 0); p_2702->g_700 -= 1)
                    { /* block id: 315 */
                        int32_t l_721 = (-1L);
                        uint64_t *l_730[9][8] = {{&l_585[1],&l_585[1],&p_2702->g_299,&l_585[1],&l_585[1],&l_585[1],&l_585[1],&p_2702->g_299},{&l_585[1],&l_585[1],&p_2702->g_299,&l_585[1],&l_585[1],&l_585[1],&l_585[1],&p_2702->g_299},{&l_585[1],&l_585[1],&p_2702->g_299,&l_585[1],&l_585[1],&l_585[1],&l_585[1],&p_2702->g_299},{&l_585[1],&l_585[1],&p_2702->g_299,&l_585[1],&l_585[1],&l_585[1],&l_585[1],&p_2702->g_299},{&l_585[1],&l_585[1],&p_2702->g_299,&l_585[1],&l_585[1],&l_585[1],&l_585[1],&p_2702->g_299},{&l_585[1],&l_585[1],&p_2702->g_299,&l_585[1],&l_585[1],&l_585[1],&l_585[1],&p_2702->g_299},{&l_585[1],&l_585[1],&p_2702->g_299,&l_585[1],&l_585[1],&l_585[1],&l_585[1],&p_2702->g_299},{&l_585[1],&l_585[1],&p_2702->g_299,&l_585[1],&l_585[1],&l_585[1],&l_585[1],&p_2702->g_299},{&l_585[1],&l_585[1],&p_2702->g_299,&l_585[1],&l_585[1],&l_585[1],&l_585[1],&p_2702->g_299}};
                        int8_t *l_731 = &l_702;
                        int i, j;
                        l_721 = (safe_mod_func_uint64_t_u_u(((l_733 |= ((((*l_655) = (65526UL & (~(((*p_2702->g_563) != ((safe_add_func_int16_t_s_s((l_721 == (((safe_lshift_func_int16_t_s_u((safe_sub_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((!(((*p_2702->g_556) > (safe_rshift_func_int16_t_s_s((p_72 && (((p_2702->g_512 , (l_730[7][1] = &p_2702->g_158)) != p_74) >= 1L)), 12))) || p_2702->g_196)), (*p_2702->g_564))), p_76)), (**l_617))) < (*p_2702->g_213)) >= p_76)), 0x1DA7L)) , l_731)) && l_732)))) , (void*)0) != (void*)0)) == p_2702->g_102), p_2702->g_162));
                        return p_74;
                    }
                    (**l_711) = (*p_2702->g_618);
                    (**l_711) = (*p_2702->g_212);
                }
            }
            for (l_653 = 4; (l_653 >= 0); l_653 -= 1)
            { /* block id: 328 */
                uint8_t l_751[10][10][2] = {{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}},{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}},{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}},{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}},{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}},{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}},{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}},{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}},{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}},{{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L},{0x0DL,0x75L}}};
                int32_t l_752 = 0x19D8AF7FL;
                int32_t l_756 = 1L;
                int32_t *l_760 = &p_2702->g_8;
                int i, j, k;
                (*p_2702->g_228) |= p_76;
                if ((**p_2702->g_407))
                    break;
                if ((safe_div_func_int32_t_s_s(l_736[1], (0x69EE36E30B488D16L && (p_2702->g_131 | 0x3D0972DE4BD1964BL)))))
                { /* block id: 331 */
                    uint32_t **l_739 = (void*)0;
                    uint32_t *l_741[8][2] = {{&p_2702->g_470,&p_2702->g_470},{&p_2702->g_470,&p_2702->g_470},{&p_2702->g_470,&p_2702->g_470},{&p_2702->g_470,&p_2702->g_470},{&p_2702->g_470,&p_2702->g_470},{&p_2702->g_470,&p_2702->g_470},{&p_2702->g_470,&p_2702->g_470},{&p_2702->g_470,&p_2702->g_470}};
                    uint32_t **l_740 = &l_741[2][1];
                    int32_t l_750 = 0x04C218DCL;
                    int i, j;
                    l_751[7][4][1] ^= (3UL != ((p_2702->g_487[4][1][3] ^ (((l_652[3][5] != ((*l_740) = &p_2702->g_470)) && ((p_2702->g_744 != &l_741[1][1]) > ((0UL ^ (p_2702->g_745 != (void*)0)) >= p_76))) != (*p_74))) > l_750));
                }
                else
                { /* block id: 334 */
                    for (p_73 = 1; (p_73 <= 4); p_73 += 1)
                    { /* block id: 337 */
                        int8_t l_753 = 5L;
                        l_757[1]--;
                    }
                    l_760 = ((*l_617) = (*l_617));
                    if (p_76)
                        break;
                }
                (*l_617) = (**l_711);
            }
        }
        for (p_2702->g_299 = 0; (p_2702->g_299 <= 4); p_2702->g_299 += 1)
        { /* block id: 349 */
            return p_74;
        }
    }
    return &p_2702->g_481;
}


/* ------------------------------------------ */
/* 
 * reads : p_2702->g_82 p_2702->g_87 p_2702->g_8 p_2702->g_3 p_2702->g_4 p_2702->g_102 p_2702->g_86 p_2702->g_104 p_2702->g_125 p_2702->g_131 p_2702->g_129 p_2702->g_162 p_2702->g_202 p_2702->g_158 p_2702->g_85 p_2702->g_213 p_2702->g_299 p_2702->g_322 p_2702->g_2 p_2702->g_240 p_2702->g_127 p_2702->g_6 p_2702->g_5 p_2702->g_482 p_2702->g_470
 * writes: p_2702->g_8 p_2702->g_102 p_2702->g_104 p_2702->g_82 p_2702->g_127 p_2702->g_129 p_2702->g_131 p_2702->g_158 p_2702->g_162 p_2702->g_202 p_2702->g_299 p_2702->g_125 p_2702->g_470 p_2702->g_482
 */
int16_t  func_77(int8_t  p_78, struct S0 * p_2702)
{ /* block id: 20 */
    int16_t *l_138 = (void*)0;
    int8_t *l_169[8][6][5] = {{{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0}},{{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0}},{{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0}},{{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0}},{{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0}},{{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0}},{{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0}},{{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0},{&p_2702->g_2[1][1][0],&p_2702->g_162,(void*)0,(void*)0,(void*)0}}};
    int32_t l_172 = 0x61E1BC7BL;
    int64_t *l_175 = (void*)0;
    int32_t l_184 = (-1L);
    int32_t l_185 = 0x72411E09L;
    int32_t l_188 = 0x0DB73613L;
    int32_t l_189 = 0x488F8C12L;
    int32_t l_190 = 0x36C55944L;
    int32_t l_195 = (-3L);
    int32_t l_198 = (-5L);
    uint32_t l_305 = 4294967288UL;
    int32_t *l_344 = &l_195;
    int8_t *l_462 = &p_2702->g_162;
    int32_t l_476 = 0x7ECAB1AFL;
    int32_t l_477 = 0L;
    int32_t l_478 = 0x4C50D73CL;
    int32_t l_479 = 0x0F3A398DL;
    int32_t l_480 = (-1L);
    int i, j, k;
    if (p_2702->g_82[7])
    { /* block id: 21 */
        int8_t l_174 = 1L;
        int32_t l_183 = 4L;
        int32_t l_186 = 0x4D0BBB05L;
        int32_t l_187 = 0x5A1EA19FL;
        int32_t l_191 = 0x1B83128FL;
        int32_t l_197 = 1L;
        int32_t l_201 = 0x4BCF4E76L;
        int16_t l_205 = (-6L);
        int8_t **l_219 = &l_169[4][1][0];
        int32_t *l_232 = &l_195;
        int32_t **l_231 = &l_232;
        int32_t l_298 = 0x095B77DEL;
        int32_t l_336[6] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
        uint16_t l_343 = 0x3217L;
        uint64_t *l_420 = &p_2702->g_299;
        int i;
        if (p_2702->g_87)
        { /* block id: 22 */
            int32_t *l_141 = &p_2702->g_131;
            int32_t l_182 = 0x422643F9L;
            int32_t l_193 = (-1L);
            int32_t l_194 = 0x1E09FDA1L;
            int32_t **l_230 = &l_141;
            for (p_2702->g_8 = 0; (p_2702->g_8 >= (-7)); --p_2702->g_8)
            { /* block id: 25 */
                int32_t l_99 = (-1L);
                int32_t *l_140 = &p_2702->g_4;
                int32_t **l_139[1][4][7] = {{{&l_140,&l_140,&l_140,&l_140,&l_140,&l_140,&l_140},{&l_140,&l_140,&l_140,&l_140,&l_140,&l_140,&l_140},{&l_140,&l_140,&l_140,&l_140,&l_140,&l_140,&l_140},{&l_140,&l_140,&l_140,&l_140,&l_140,&l_140,&l_140}}};
                int i, j, k;
                l_141 = ((safe_unary_minus_func_int64_t_s(((safe_rshift_func_int8_t_s_s(p_78, p_2702->g_3)) <= (((((safe_div_func_uint16_t_u_u(func_96(p_2702->g_4, l_99, p_2702), (safe_sub_func_uint64_t_u_u((safe_div_func_uint64_t_u_u(p_78, GROUP_DIVERGE(0, 1))), (p_78 < (safe_div_func_uint64_t_u_u(((l_138 == (void*)0) != p_2702->g_4), p_78))))))) > 0x5410L) <= p_2702->g_8) , 0x0549L) , p_2702->g_4)))) , (void*)0);
            }
            for (p_2702->g_129 = 0; (p_2702->g_129 > 12); ++p_2702->g_129)
            { /* block id: 39 */
                uint32_t l_146 = 0xAF6034A1L;
                uint64_t *l_157 = &p_2702->g_158;
                int8_t *l_161 = &p_2702->g_162;
                int8_t *l_163 = (void*)0;
                int8_t *l_164[1];
                int8_t **l_167 = &l_164[0];
                int8_t **l_168[7][2][3] = {{{&l_163,(void*)0,&l_161},{&l_163,(void*)0,&l_161}},{{&l_163,(void*)0,&l_161},{&l_163,(void*)0,&l_161}},{{&l_163,(void*)0,&l_161},{&l_163,(void*)0,&l_161}},{{&l_163,(void*)0,&l_161},{&l_163,(void*)0,&l_161}},{{&l_163,(void*)0,&l_161},{&l_163,(void*)0,&l_161}},{{&l_163,(void*)0,&l_161},{&l_163,(void*)0,&l_161}},{{&l_163,(void*)0,&l_161},{&l_163,(void*)0,&l_161}}};
                int64_t l_173 = 0x39D5F1929AE18D8EL;
                int32_t *l_176 = &p_2702->g_8;
                int32_t *l_177 = &p_2702->g_8;
                int32_t *l_178 = &l_172;
                int32_t *l_179 = (void*)0;
                int32_t *l_180 = &p_2702->g_131;
                int32_t *l_181[10][6][4] = {{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_131,&p_2702->g_5}}};
                int8_t l_200 = 0x7CL;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_164[i] = (void*)0;
                p_2702->g_8 = (safe_mul_func_int16_t_s_s(p_2702->g_82[5], (p_78 , l_146)));
                (*l_176) = (safe_div_func_int32_t_s_s((safe_div_func_uint64_t_u_u((((((safe_rshift_func_int8_t_s_u(((safe_div_func_int64_t_s_s(0x5727E68FBA5D09CAL, ((*l_157) = (1L ^ (safe_add_func_uint8_t_u_u((*p_2702->g_86), p_78)))))) , ((p_78 = ((*l_161) |= (safe_sub_func_int64_t_s_s(p_78, 18446744073709551611UL)))) || ((safe_lshift_func_int16_t_s_u(((l_169[5][4][4] = ((*l_167) = &p_78)) == (void*)0), ((safe_mod_func_uint16_t_u_u(l_146, l_172)) >= p_78))) , l_172))), 2)) , l_173) ^ l_174) , l_175) != &l_173), l_174)), l_172));
                --p_2702->g_202;
            }
        }
        else
        { /* block id: 99 */
            int32_t *l_276 = &p_2702->g_8;
            int32_t l_323[8] = {1L,0x7112F189L,1L,1L,0x7112F189L,1L,1L,0x7112F189L};
            int i;
            (*l_276) ^= (((safe_rshift_func_uint16_t_u_s(((((p_2702->g_158 ^ ((**l_231) || 0x03AEA3D496635388L)) , &p_2702->g_86) != &p_2702->g_86) < p_78), 6)) && (safe_mul_func_uint8_t_u_u((**p_2702->g_85), ((safe_mod_func_int32_t_s_s(p_78, (*p_2702->g_213))) <= p_2702->g_129)))) & p_78);
            for (p_78 = 0; (p_78 < (-8)); p_78 = safe_sub_func_int32_t_s_s(p_78, 9))
            { /* block id: 103 */
                uint8_t l_289[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_289[i] = 9UL;
                (*l_232) = ((safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(p_78, 0)), (p_2702->g_299 = (!(((safe_lshift_func_int16_t_s_u(((safe_mod_func_uint64_t_u_u(((+(safe_div_func_int16_t_s_s((l_289[2] & (((&l_276 == &l_276) ^ l_289[0]) | (safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((safe_div_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(p_78, (p_78 , l_289[2]))), p_78)), 13)), 0x39L)))), (-4L)))) , FAKE_DIVERGE(p_2702->global_2_offset, get_global_id(2), 10)), p_2702->g_87)) ^ (*l_276)), 15)) == 0x74E08CBFL) >= l_298))))) < (*p_2702->g_213));
                for (l_185 = 3; (l_185 >= 0); l_185 -= 1)
                { /* block id: 108 */
                    uint64_t *l_313[4][1] = {{&p_2702->g_299},{&p_2702->g_299},{&p_2702->g_299},{&p_2702->g_299}};
                    int32_t l_314 = 1L;
                    int32_t l_315 = (-1L);
                    int i, j;
                    (*l_276) = ((l_195 = (!((((((safe_unary_minus_func_uint16_t_u((safe_mod_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(((p_2702->g_82[(l_185 + 2)] , l_289[2]) == ((-1L) | ((l_305 | ((safe_sub_func_uint64_t_u_u((safe_add_func_int8_t_s_s(0x2CL, p_2702->g_125)), (l_184 == ((((safe_unary_minus_func_uint64_t_u((p_2702->g_299++))) ^ 0xCABFL) | (safe_lshift_func_int8_t_s_u((safe_div_func_uint16_t_u_u((p_2702->g_82[(l_185 + 2)] <= 0x2FF848F6L), p_78)), GROUP_DIVERGE(0, 1)))) != p_2702->g_322[4])))) , p_78)) != p_78))), p_78)), p_78)))) && 0x9C4F052CL) >= p_78) <= l_314) != l_323[1]) != l_314))) & 0UL);
                    for (p_2702->g_158 = 0; (p_2702->g_158 <= 4); p_2702->g_158 += 1)
                    { /* block id: 114 */
                        if (p_78)
                            break;
                        (*l_231) = (*l_231);
                        (*l_232) |= (p_2702->g_82[(l_185 + 2)] ^ p_78);
                    }
                }
                return l_289[0];
            }
            for (l_189 = 0; (l_189 > (-20)); --l_189)
            { /* block id: 124 */
                (*l_276) = ((((safe_lshift_func_uint8_t_u_s((**p_2702->g_85), p_2702->g_129)) <= (((**l_231) = (safe_sub_func_uint16_t_u_u((l_184 & (((p_78 ^ (((GROUP_DIVERGE(2, 1) , (safe_lshift_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u((l_336[4] && (((((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2702->group_1_offset, get_group_id(1), 10), 2)) , (safe_add_func_uint32_t_u_u(((((p_78 == 0x3D677327F36DEE72L) == (1L < ((safe_div_func_uint64_t_u_u(p_78, p_2702->g_102)) && 0xB712L))) , p_78) > 0x1777D0D0EEF9D87BL), l_343))) | p_78) <= GROUP_DIVERGE(2, 1)) == p_78)), p_2702->g_82[0])), p_78)), p_78))) >= p_2702->g_2[0][2][0]) <= 0x15ECL)) , (*p_2702->g_213)) , p_2702->g_240)), p_2702->g_127))) ^ p_78)) == 0x9C2A643CL) , p_78);
                (*l_231) = (*l_231);
            }
        }
        l_344 = (*l_231);
        for (p_2702->g_102 = 1; (p_2702->g_102 <= 4); p_2702->g_102 += 1)
        { /* block id: 133 */
            int32_t *l_349[1][7][7] = {{{&p_2702->g_196,&l_298,&l_298,(void*)0,&l_298,&l_298,(void*)0},{&p_2702->g_196,&l_298,&l_298,(void*)0,&l_298,&l_298,(void*)0},{&p_2702->g_196,&l_298,&l_298,(void*)0,&l_298,&l_298,(void*)0},{&p_2702->g_196,&l_298,&l_298,(void*)0,&l_298,&l_298,(void*)0},{&p_2702->g_196,&l_298,&l_298,(void*)0,&l_298,&l_298,(void*)0},{&p_2702->g_196,&l_298,&l_298,(void*)0,&l_298,&l_298,(void*)0},{&p_2702->g_196,&l_298,&l_298,(void*)0,&l_298,&l_298,(void*)0}}};
            int32_t *l_367 = &l_336[4];
            int64_t *l_368 = &p_2702->g_125;
            int64_t *l_369[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_371 = (-1L);
            int32_t l_372 = 0x388364EAL;
            int8_t *l_413 = &p_2702->g_2[1][3][0];
            int16_t l_442 = (-1L);
            int i, j, k;
            l_372 = (safe_lshift_func_int8_t_s_s(((safe_div_func_int16_t_s_s((4L == ((((**l_231) = 0x5AE56921L) , ((safe_rshift_func_uint16_t_u_u(65535UL, 3)) >= (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(0xD957L, 0)), 4)))) , p_2702->g_129)), (~((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_2702->local_0_offset, get_local_id(0), 10), (((safe_mod_func_uint32_t_u_u(((safe_div_func_uint16_t_u_u((((safe_mod_func_int32_t_s_s((FAKE_DIVERGE(p_2702->global_0_offset, get_global_id(0), 10) , ((p_2702->g_162 |= p_78) & ((safe_unary_minus_func_uint64_t_u((l_349[0][3][4] == (l_367 = (*l_231))))) <= (l_371 ^= ((*l_368) = 0x01A02E4654339FA5L))))), 0x30114D95L)) <= 0xD55D8AD2L) & l_372), p_78)) && 0L), p_78)) ^ p_78) <= p_78))) & p_78)))) != p_2702->g_240), 7));
            for (l_186 = 0; (l_186 <= 4); l_186 += 1)
            { /* block id: 142 */
                int16_t l_373[8] = {(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)};
                uint8_t *l_416 = &p_2702->g_82[5];
                uint64_t *l_417 = &p_2702->g_158;
                int32_t *l_421 = &l_185;
                uint64_t l_439[9][2][3] = {{{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L},{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L}},{{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L},{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L}},{{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L},{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L}},{{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L},{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L}},{{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L},{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L}},{{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L},{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L}},{{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L},{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L}},{{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L},{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L}},{{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L},{0xB737E82B7FC5A436L,0xB737E82B7FC5A436L,0xB737E82B7FC5A436L}}};
                uint16_t l_443 = 0xD61CL;
                int i, j, k;
                (1 + 1);
            }
        }
    }
    else
    { /* block id: 186 */
        int64_t l_448 = 0x7D4F655CD401BC52L;
        l_448 = (safe_rshift_func_uint16_t_u_u((0x1598L == (p_2702->g_102 = (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), (~((void*)0 != &p_2702->g_212)))))), 11));
    }
    for (l_189 = (-20); (l_189 > 7); ++l_189)
    { /* block id: 192 */
        int8_t **l_461[6][1][4] = {{{&l_169[5][4][4],&l_169[4][1][0],&l_169[5][4][4],&l_169[5][4][4]}},{{&l_169[5][4][4],&l_169[4][1][0],&l_169[5][4][4],&l_169[5][4][4]}},{{&l_169[5][4][4],&l_169[4][1][0],&l_169[5][4][4],&l_169[5][4][4]}},{{&l_169[5][4][4],&l_169[4][1][0],&l_169[5][4][4],&l_169[5][4][4]}},{{&l_169[5][4][4],&l_169[4][1][0],&l_169[5][4][4],&l_169[5][4][4]}},{{&l_169[5][4][4],&l_169[4][1][0],&l_169[5][4][4],&l_169[5][4][4]}}};
        int32_t l_468 = 0x340395D6L;
        uint32_t *l_469 = &p_2702->g_470;
        int32_t l_471 = 0x5376EEE3L;
        int32_t *l_472 = &l_198;
        int32_t *l_473 = (void*)0;
        int32_t *l_474 = &l_190;
        int32_t *l_475[1];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_475[i] = &l_198;
        l_471 ^= (safe_sub_func_int64_t_s_s(((((safe_div_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((((p_2702->g_6 == (((((safe_mul_func_int16_t_s_s((((*l_344) = 0x62A53848L) <= (((((l_462 = &p_2702->g_2[2][2][0]) == l_169[5][4][4]) == (safe_sub_func_uint16_t_u_u(p_78, 1UL))) < p_78) <= ((((*l_469) = (!(~((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint64_t_u((+((&p_2702->g_82[7] == &p_2702->g_82[5]) | 7UL)))), p_78)) || l_468)))) , 0x09C1852AL) ^ (*p_2702->g_213)))), p_78)) < 0x1BL) ^ p_2702->g_131) , p_2702->g_5) || (*l_344))) > p_78) && 0x52L), p_78)), FAKE_DIVERGE(p_2702->global_1_offset, get_global_id(1), 10))) , p_78) ^ p_2702->g_162) <= 0x7191L), p_78));
        ++p_2702->g_482;
    }
    return p_2702->g_470;
}


/* ------------------------------------------ */
/* 
 * reads : p_2702->g_102 p_2702->g_82 p_2702->g_86 p_2702->g_104 p_2702->g_125 p_2702->g_131
 * writes: p_2702->g_102 p_2702->g_104 p_2702->g_82 p_2702->g_127 p_2702->g_129 p_2702->g_131
 */
uint16_t  func_96(uint8_t  p_97, uint16_t  p_98, struct S0 * p_2702)
{ /* block id: 26 */
    uint32_t l_100 = 0x1824DA47L;
    int16_t *l_101 = &p_2702->g_102;
    int16_t *l_103 = &p_2702->g_104;
    uint8_t *l_109 = (void*)0;
    uint8_t *l_110 = &p_2702->g_82[3];
    int64_t *l_124 = &p_2702->g_125;
    uint16_t *l_126 = &p_2702->g_127;
    int32_t *l_128 = &p_2702->g_129;
    int32_t *l_130 = &p_2702->g_131;
    (*l_130) = (((*l_103) = ((*l_101) &= l_100)) , (safe_rshift_func_uint8_t_u_u((p_97 = (safe_rshift_func_uint8_t_u_s((--(*l_110)), 7))), ((safe_add_func_uint16_t_u_u((p_98 > (((*l_128) = ((safe_sub_func_int8_t_s_s(p_98, ((0L | (0xB0E8L >= p_98)) < (safe_mod_func_uint16_t_u_u(((*l_126) = (safe_div_func_int8_t_s_s((safe_unary_minus_func_uint32_t_u((safe_sub_func_uint64_t_u_u((p_2702->g_86 != l_109), ((l_124 == (void*)0) < p_2702->g_104))))), (-10L)))), 0x09EBL))))) < (-8L))) <= 0x1CD1B9B5L)), p_2702->g_125)) > p_2702->g_125))));
    return (*l_130);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2703;
    struct S0* p_2702 = &c_2703;
    struct S0 c_2704 = {
        {{{(-5L)},{(-5L)},{(-5L)},{(-5L)}},{{(-5L)},{(-5L)},{(-5L)},{(-5L)}},{{(-5L)},{(-5L)},{(-5L)},{(-5L)}}}, // p_2702->g_2
        0L, // p_2702->g_3
        0x37AD4351L, // p_2702->g_4
        0x7147909BL, // p_2702->g_5
        (-6L), // p_2702->g_6
        0x288E00F6L, // p_2702->g_7
        (-1L), // p_2702->g_8
        (-3L), // p_2702->g_13
        {0x1BEAB1D6A56C37FCL,0x1BEAB1D6A56C37FCL,0x1BEAB1D6A56C37FCL,0x1BEAB1D6A56C37FCL,0x1BEAB1D6A56C37FCL,0x1BEAB1D6A56C37FCL,0x1BEAB1D6A56C37FCL,0x1BEAB1D6A56C37FCL,0x1BEAB1D6A56C37FCL,0x1BEAB1D6A56C37FCL}, // p_2702->g_17
        {&p_2702->g_17[7],&p_2702->g_17[9],&p_2702->g_17[7],&p_2702->g_17[7],&p_2702->g_17[9],&p_2702->g_17[7],&p_2702->g_17[7],&p_2702->g_17[9],&p_2702->g_17[7]}, // p_2702->g_16
        {{{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL}},{{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL}},{{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL}},{{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL}},{{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL}},{{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL}},{{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL},{0x39L,0UL,0x45L,0x39L,0x74L,6UL,0x4EL}}}, // p_2702->g_41
        {0x37L,0x37L,0x37L,0x37L,0x37L,0x37L,0x37L,0x37L,0x37L}, // p_2702->g_82
        2UL, // p_2702->g_87
        &p_2702->g_87, // p_2702->g_86
        &p_2702->g_86, // p_2702->g_85
        (-1L), // p_2702->g_102
        0x570CL, // p_2702->g_104
        7L, // p_2702->g_125
        0x9CA9L, // p_2702->g_127
        0x3F316246L, // p_2702->g_129
        (-5L), // p_2702->g_131
        4UL, // p_2702->g_158
        0x5FL, // p_2702->g_162
        0x7805F1B0L, // p_2702->g_192
        0x555C4C9AL, // p_2702->g_196
        6L, // p_2702->g_199
        18446744073709551608UL, // p_2702->g_202
        &p_2702->g_4, // p_2702->g_213
        &p_2702->g_213, // p_2702->g_212
        (void*)0, // p_2702->g_228
        65535UL, // p_2702->g_240
        0x710213713BC4FD47L, // p_2702->g_299
        {0x234BL,0x234BL,0x234BL,0x234BL,0x234BL}, // p_2702->g_322
        0x76CC1612CE25142BL, // p_2702->g_370
        &p_2702->g_228, // p_2702->g_407
        &p_2702->g_240, // p_2702->g_419
        4294967293UL, // p_2702->g_470
        (-1L), // p_2702->g_481
        0xF4859097L, // p_2702->g_482
        {{{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L}},{{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L}},{{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L}},{{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L}},{{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L}},{{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L}},{{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L}},{{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L}},{{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L},{0xD1L,1UL,0x88L,0x72L,0x05L}}}, // p_2702->g_487
        &p_2702->g_487[4][3][1], // p_2702->g_486
        0x29D90C35L, // p_2702->g_512
        &p_2702->g_8, // p_2702->g_543
        &p_2702->g_8, // p_2702->g_556
        &p_2702->g_162, // p_2702->g_564
        &p_2702->g_564, // p_2702->g_563
        &p_2702->g_104, // p_2702->g_583
        &p_2702->g_583, // p_2702->g_582
        1L, // p_2702->g_601
        8UL, // p_2702->g_606
        0x2FL, // p_2702->g_614
        &p_2702->g_228, // p_2702->g_618
        &p_2702->g_129, // p_2702->g_667
        5L, // p_2702->g_700
        (void*)0, // p_2702->g_744
        1L, // p_2702->g_748
        0x07DF7AE1L, // p_2702->g_749
        {&p_2702->g_748,&p_2702->g_749,&p_2702->g_748,&p_2702->g_748,&p_2702->g_749,&p_2702->g_748,&p_2702->g_748,&p_2702->g_749,&p_2702->g_748}, // p_2702->g_747
        &p_2702->g_747[7], // p_2702->g_746
        &p_2702->g_746, // p_2702->g_745
        247UL, // p_2702->g_762
        {&p_2702->g_8,&p_2702->g_8,&p_2702->g_8}, // p_2702->g_888
        1L, // p_2702->g_907
        0x3A4C491F2C4EFA48L, // p_2702->g_921
        (void*)0, // p_2702->g_981
        (void*)0, // p_2702->g_982
        &p_2702->g_129, // p_2702->g_983
        0L, // p_2702->g_1129
        &p_2702->g_228, // p_2702->g_1185
        &p_2702->g_486, // p_2702->g_1186
        7L, // p_2702->g_1188
        &p_2702->g_1188, // p_2702->g_1187
        0x2E55CCC7L, // p_2702->g_1260
        0x580DEF83L, // p_2702->g_1297
        (void*)0, // p_2702->g_1305
        &p_2702->g_228, // p_2702->g_1325
        &p_2702->g_228, // p_2702->g_1326
        (void*)0, // p_2702->g_1329
        &p_2702->g_606, // p_2702->g_1332
        &p_2702->g_1332, // p_2702->g_1331
        &p_2702->g_1331, // p_2702->g_1330
        {{(void*)0,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,(void*)0,&p_2702->g_228,&p_2702->g_213,&p_2702->g_213},{(void*)0,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,(void*)0,&p_2702->g_228,&p_2702->g_213,&p_2702->g_213},{(void*)0,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,(void*)0,&p_2702->g_228,&p_2702->g_213,&p_2702->g_213},{(void*)0,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,(void*)0,&p_2702->g_228,&p_2702->g_213,&p_2702->g_213},{(void*)0,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,&p_2702->g_228,&p_2702->g_213,(void*)0,&p_2702->g_228,&p_2702->g_213,&p_2702->g_213}}, // p_2702->g_1342
        &p_2702->g_213, // p_2702->g_1345
        &p_2702->g_213, // p_2702->g_1384
        0xC6E9C16F0F731560L, // p_2702->g_1429
        (-1L), // p_2702->g_1448
        {{7UL,8UL,8UL,7UL},{7UL,8UL,8UL,7UL},{7UL,8UL,8UL,7UL},{7UL,8UL,8UL,7UL},{7UL,8UL,8UL,7UL}}, // p_2702->g_1449
        &p_2702->g_213, // p_2702->g_1476
        {{{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228}},{{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228}},{{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228}},{{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228}},{{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228}},{{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228}},{{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228},{&p_2702->g_228}}}, // p_2702->g_1494
        &p_2702->g_213, // p_2702->g_1498
        {{{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0}},{{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0}},{{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0}},{{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0}},{{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0}},{{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0},{&p_2702->g_5,&p_2702->g_5,&p_2702->g_5,(void*)0}}}, // p_2702->g_1586
        (void*)0, // p_2702->g_1587
        (void*)0, // p_2702->g_1588
        {{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}},{{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129},{&p_2702->g_131,&p_2702->g_129,&p_2702->g_129}}}, // p_2702->g_1589
        &p_2702->g_129, // p_2702->g_1590
        &p_2702->g_228, // p_2702->g_1596
        &p_2702->g_1186, // p_2702->g_1638
        {&p_2702->g_1638,&p_2702->g_1638,&p_2702->g_1638}, // p_2702->g_1637
        &p_2702->g_228, // p_2702->g_1641
        {{&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921},{&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921},{&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921},{&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921},{&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921},{&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921},{&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921,&p_2702->g_921}}, // p_2702->g_1721
        (void*)0, // p_2702->g_1737
        &p_2702->g_228, // p_2702->g_1739
        0x525D8A1021950DB6L, // p_2702->g_1761
        0L, // p_2702->g_1769
        (void*)0, // p_2702->g_1857
        (void*)0, // p_2702->g_1858
        (-4L), // p_2702->g_1880
        &p_2702->g_213, // p_2702->g_1884
        (void*)0, // p_2702->g_1943
        (void*)0, // p_2702->g_1948
        &p_2702->g_1948, // p_2702->g_1947
        &p_2702->g_667, // p_2702->g_1984
        &p_2702->g_482, // p_2702->g_2038
        {&p_2702->g_1586[2][3][2],&p_2702->g_1586[2][3][2],&p_2702->g_1586[2][3][2],&p_2702->g_1586[2][3][2]}, // p_2702->g_2054
        {{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213}}, // p_2702->g_2067
        &p_2702->g_228, // p_2702->g_2068
        &p_2702->g_213, // p_2702->g_2093
        (-5L), // p_2702->g_2110
        0x7CD66DA8L, // p_2702->g_2146
        1L, // p_2702->g_2147
        &p_2702->g_1721[0][5], // p_2702->g_2193
        &p_2702->g_2193, // p_2702->g_2192
        &p_2702->g_1737, // p_2702->g_2217
        18446744073709551611UL, // p_2702->g_2244
        &p_2702->g_213, // p_2702->g_2285
        (void*)0, // p_2702->g_2306
        &p_2702->g_2306, // p_2702->g_2305
        0x0E6689439229954BL, // p_2702->g_2307
        {{&p_2702->g_213},{&p_2702->g_213},{&p_2702->g_213},{&p_2702->g_213},{&p_2702->g_213},{&p_2702->g_213},{&p_2702->g_213},{&p_2702->g_213},{&p_2702->g_213},{&p_2702->g_213}}, // p_2702->g_2308
        &p_2702->g_228, // p_2702->g_2309
        &p_2702->g_131, // p_2702->g_2346
        (void*)0, // p_2702->g_2363
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_2702->g_2365
        &p_2702->g_2365[0], // p_2702->g_2364
        1L, // p_2702->g_2378
        9UL, // p_2702->g_2454
        {{&p_2702->g_228,&p_2702->g_228,&p_2702->g_228},{&p_2702->g_228,&p_2702->g_228,&p_2702->g_228},{&p_2702->g_228,&p_2702->g_228,&p_2702->g_228},{&p_2702->g_228,&p_2702->g_228,&p_2702->g_228},{&p_2702->g_228,&p_2702->g_228,&p_2702->g_228},{&p_2702->g_228,&p_2702->g_228,&p_2702->g_228},{&p_2702->g_228,&p_2702->g_228,&p_2702->g_228}}, // p_2702->g_2568
        {{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213},{&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213,&p_2702->g_213}}, // p_2702->g_2569
        &p_2702->g_213, // p_2702->g_2641
        &p_2702->g_228, // p_2702->g_2665
        0x491FL, // p_2702->g_2691
        (-4L), // p_2702->g_2693
        sequence_input[get_global_id(0)], // p_2702->global_0_offset
        sequence_input[get_global_id(1)], // p_2702->global_1_offset
        sequence_input[get_global_id(2)], // p_2702->global_2_offset
        sequence_input[get_local_id(0)], // p_2702->local_0_offset
        sequence_input[get_local_id(1)], // p_2702->local_1_offset
        sequence_input[get_local_id(2)], // p_2702->local_2_offset
        sequence_input[get_group_id(0)], // p_2702->group_0_offset
        sequence_input[get_group_id(1)], // p_2702->group_1_offset
        sequence_input[get_group_id(2)], // p_2702->group_2_offset
    };
    c_2703 = c_2704;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2702);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2702->g_2[i][j][k], "p_2702->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2702->g_3, "p_2702->g_3", print_hash_value);
    transparent_crc(p_2702->g_4, "p_2702->g_4", print_hash_value);
    transparent_crc(p_2702->g_5, "p_2702->g_5", print_hash_value);
    transparent_crc(p_2702->g_6, "p_2702->g_6", print_hash_value);
    transparent_crc(p_2702->g_7, "p_2702->g_7", print_hash_value);
    transparent_crc(p_2702->g_8, "p_2702->g_8", print_hash_value);
    transparent_crc(p_2702->g_13, "p_2702->g_13", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2702->g_17[i], "p_2702->g_17[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2702->g_41[i][j][k], "p_2702->g_41[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2702->g_82[i], "p_2702->g_82[i]", print_hash_value);

    }
    transparent_crc(p_2702->g_87, "p_2702->g_87", print_hash_value);
    transparent_crc(p_2702->g_102, "p_2702->g_102", print_hash_value);
    transparent_crc(p_2702->g_104, "p_2702->g_104", print_hash_value);
    transparent_crc(p_2702->g_125, "p_2702->g_125", print_hash_value);
    transparent_crc(p_2702->g_127, "p_2702->g_127", print_hash_value);
    transparent_crc(p_2702->g_129, "p_2702->g_129", print_hash_value);
    transparent_crc(p_2702->g_131, "p_2702->g_131", print_hash_value);
    transparent_crc(p_2702->g_158, "p_2702->g_158", print_hash_value);
    transparent_crc(p_2702->g_162, "p_2702->g_162", print_hash_value);
    transparent_crc(p_2702->g_192, "p_2702->g_192", print_hash_value);
    transparent_crc(p_2702->g_196, "p_2702->g_196", print_hash_value);
    transparent_crc(p_2702->g_199, "p_2702->g_199", print_hash_value);
    transparent_crc(p_2702->g_202, "p_2702->g_202", print_hash_value);
    transparent_crc(p_2702->g_240, "p_2702->g_240", print_hash_value);
    transparent_crc(p_2702->g_299, "p_2702->g_299", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2702->g_322[i], "p_2702->g_322[i]", print_hash_value);

    }
    transparent_crc(p_2702->g_370, "p_2702->g_370", print_hash_value);
    transparent_crc(p_2702->g_470, "p_2702->g_470", print_hash_value);
    transparent_crc(p_2702->g_481, "p_2702->g_481", print_hash_value);
    transparent_crc(p_2702->g_482, "p_2702->g_482", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2702->g_487[i][j][k], "p_2702->g_487[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2702->g_512, "p_2702->g_512", print_hash_value);
    transparent_crc(p_2702->g_601, "p_2702->g_601", print_hash_value);
    transparent_crc(p_2702->g_606, "p_2702->g_606", print_hash_value);
    transparent_crc(p_2702->g_614, "p_2702->g_614", print_hash_value);
    transparent_crc(p_2702->g_700, "p_2702->g_700", print_hash_value);
    transparent_crc(p_2702->g_748, "p_2702->g_748", print_hash_value);
    transparent_crc(p_2702->g_749, "p_2702->g_749", print_hash_value);
    transparent_crc(p_2702->g_762, "p_2702->g_762", print_hash_value);
    transparent_crc(p_2702->g_907, "p_2702->g_907", print_hash_value);
    transparent_crc(p_2702->g_921, "p_2702->g_921", print_hash_value);
    transparent_crc(p_2702->g_1129, "p_2702->g_1129", print_hash_value);
    transparent_crc(p_2702->g_1188, "p_2702->g_1188", print_hash_value);
    transparent_crc(p_2702->g_1260, "p_2702->g_1260", print_hash_value);
    transparent_crc(p_2702->g_1297, "p_2702->g_1297", print_hash_value);
    transparent_crc(p_2702->g_1429, "p_2702->g_1429", print_hash_value);
    transparent_crc(p_2702->g_1448, "p_2702->g_1448", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_2702->g_1449[i][j], "p_2702->g_1449[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2702->g_1761, "p_2702->g_1761", print_hash_value);
    transparent_crc(p_2702->g_1769, "p_2702->g_1769", print_hash_value);
    transparent_crc(p_2702->g_1880, "p_2702->g_1880", print_hash_value);
    transparent_crc(p_2702->g_2110, "p_2702->g_2110", print_hash_value);
    transparent_crc(p_2702->g_2146, "p_2702->g_2146", print_hash_value);
    transparent_crc(p_2702->g_2147, "p_2702->g_2147", print_hash_value);
    transparent_crc(p_2702->g_2244, "p_2702->g_2244", print_hash_value);
    transparent_crc(p_2702->g_2307, "p_2702->g_2307", print_hash_value);
    transparent_crc(p_2702->g_2378, "p_2702->g_2378", print_hash_value);
    transparent_crc(p_2702->g_2454, "p_2702->g_2454", print_hash_value);
    transparent_crc(p_2702->g_2691, "p_2702->g_2691", print_hash_value);
    transparent_crc(p_2702->g_2693, "p_2702->g_2693", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
