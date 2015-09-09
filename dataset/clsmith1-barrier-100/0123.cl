// ---fake_divergence ---inter_thread_comm -g 54,27,3 -l 6,1,1
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

__constant uint32_t permutations[10][6] = {
{1,2,4,5,3,0}, // permutation 0
{1,4,0,5,3,2}, // permutation 1
{1,0,2,4,3,5}, // permutation 2
{2,0,3,1,5,4}, // permutation 3
{1,4,3,0,2,5}, // permutation 4
{4,0,3,2,5,1}, // permutation 5
{1,5,0,2,3,4}, // permutation 6
{5,0,4,3,2,1}, // permutation 7
{1,2,3,0,4,5}, // permutation 8
{5,4,0,1,2,3} // permutation 9
};

// Seed: 123

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint64_t  f0;
};

struct S1 {
    uint32_t g_16;
    uint8_t g_18;
    uint64_t g_49;
    uint32_t g_59;
    uint8_t g_65;
    uint32_t g_97;
    int32_t g_99[6][5][8];
    int32_t g_118;
    int8_t g_120;
    int16_t g_121;
    uint64_t g_124;
    uint8_t **g_164;
    int32_t *g_185;
    int32_t ** volatile g_184;
    int32_t g_191;
    volatile uint32_t g_223[5];
    volatile uint32_t g_246;
    int32_t ** volatile g_260;
    int32_t ** volatile g_288;
    uint8_t ***g_320[8];
    uint8_t g_322;
    int64_t g_362;
    int16_t g_380;
    int64_t g_386;
    int64_t g_435;
    volatile uint8_t * volatile * volatile **g_454;
    volatile uint8_t * volatile * volatile ***g_453;
    int32_t g_457;
    uint32_t *g_459;
    uint32_t **g_458[9];
    uint64_t g_476[1][3];
    union U0 g_510[5][6];
    int8_t g_514;
    uint64_t g_517;
    int64_t *g_522;
    union U0 *g_560;
    int32_t ** volatile g_562;
    volatile uint32_t g_621;
    volatile uint32_t *g_620[2];
    volatile uint32_t ** volatile g_619;
    int32_t * volatile g_626;
    uint8_t g_629;
    uint32_t **g_637;
    union U0 **g_655;
    union U0 **g_656;
    uint16_t g_682;
    int8_t g_701;
    int64_t g_745;
    uint64_t *g_772;
    int32_t ** volatile g_791;
    int32_t *g_793;
    int32_t ** volatile g_792;
    uint32_t g_873[10];
    int8_t *g_884;
    int8_t * volatile * volatile g_883;
    volatile int32_t g_916;
    int32_t g_930;
    volatile uint32_t g_934;
    int32_t g_936;
    volatile int32_t *g_969;
    int8_t g_984;
    uint32_t g_985;
    int32_t ** volatile g_999;
    int32_t ** volatile g_1003[9][3];
    int16_t * volatile g_1141;
    int16_t * volatile * volatile g_1140;
    uint8_t ******g_1243;
    int32_t * volatile g_1263;
    int32_t * volatile *g_1262[9][7];
    int32_t * volatile ** volatile g_1264[1];
    int32_t * volatile ** volatile g_1265[7][5][1];
    volatile union U0 *g_1282;
    volatile union U0 **g_1281;
    volatile union U0 ***g_1280;
    volatile union U0 *** volatile *g_1279;
    int32_t g_1295;
    volatile int32_t g_1310;
    int32_t g_1337;
    volatile int8_t * volatile ** volatile *g_1343;
    volatile uint32_t g_1486;
    int32_t ** volatile g_1760;
    uint16_t g_1816;
    uint16_t *g_1815;
    int16_t *g_2038;
    volatile int8_t g_2089[7][2][2];
    volatile uint32_t g_2122[2][10][1];
    uint32_t ***g_2155;
    uint64_t * volatile **g_2165;
    int64_t *g_2176[3][4];
    int32_t **g_2187[10];
    int32_t ***g_2186;
    int8_t * volatile * volatile * volatile g_2295;
    uint8_t g_2319;
    int32_t g_2320;
    uint64_t g_2342;
    uint16_t g_2346;
    int16_t g_2347;
    int16_t g_2348;
    uint32_t ***g_2371;
    uint32_t ****g_2370;
    int64_t *g_2421[2];
    volatile int64_t g_2453[3][2][3];
    int16_t ***g_2483;
    int32_t * volatile *g_2507;
    int32_t * volatile **g_2506;
    int32_t * volatile ** volatile *g_2505;
    int32_t * volatile ** volatile ** volatile g_2504;
    union U0 g_2704;
    uint32_t g_2730;
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
int32_t  func_1(struct S1 * p_2740);
uint32_t  func_2(int8_t  p_3, struct S1 * p_2740);
uint32_t  func_6(uint32_t  p_7, struct S1 * p_2740);
uint32_t  func_9(int64_t  p_10, uint8_t  p_11, uint64_t  p_12, uint64_t  p_13, struct S1 * p_2740);
union U0  func_19(int8_t  p_20, uint8_t * p_21, struct S1 * p_2740);
int8_t  func_22(int32_t  p_23, int16_t  p_24, uint32_t  p_25, struct S1 * p_2740);
uint64_t  func_66(uint32_t  p_67, union U0  p_68, struct S1 * p_2740);
union U0  func_69(uint32_t  p_70, uint8_t  p_71, int32_t  p_72, struct S1 * p_2740);
uint32_t  func_73(int32_t  p_74, uint32_t * p_75, int8_t  p_76, int64_t * p_77, uint8_t * p_78, struct S1 * p_2740);
int8_t  func_79(uint32_t * p_80, struct S1 * p_2740);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2740->g_comm_values p_2740->g_16 p_2740->g_18 p_2740->g_49 p_2740->l_comm_values p_2740->g_65 p_2740->g_59 p_2740->g_97 p_2740->g_99 p_2740->g_124 p_2740->g_120 p_2740->g_121 p_2740->g_118 p_2740->g_164 p_2740->g_184 p_2740->g_191 p_2740->g_223 p_2740->g_246 p_2740->g_185 p_2740->g_260 p_2740->g_288 p_2740->g_322 p_2740->g_380 p_2740->g_386 p_2740->g_435 p_2740->g_453 p_2740->g_457 p_2740->g_510 p_2740->g_517 p_2740->g_522 p_2740->g_459 p_2740->g_562 p_2740->g_476 p_2740->g_514 p_2740->g_619 p_2740->g_626 p_2740->g_621 p_2740->g_629 p_2740->g_362 p_2740->g_510.f0 p_2740->g_656 p_2740->g_969 p_2740->g_916 p_2740->g_793 p_2740->g_772 p_2740->g_792 p_2740->g_884 p_2740->g_701 p_2740->g_1140 p_2740->g_682 p_2740->g_1141 p_2740->g_930 p_2740->g_1337 p_2740->g_936 p_2740->g_1760 p_2740->g_1815 p_2740->g_1816 p_2740->g_620 p_2740->g_883 p_2740->g_1295 p_2740->g_2122 p_2740->g_2038 p_2740->g_2165 p_2740->g_2176 p_2740->g_2186 p_2740->g_2187 p_2740->g_2295 p_2740->g_2320 p_2740->g_2347 p_2740->g_745 p_2740->g_2370 p_2740->g_454 p_2740->g_2453 p_2740->g_2348 p_2740->g_2483 p_2740->g_655 p_2740->g_2504 p_2740->g_873 p_2740->g_2505 p_2740->g_2506 p_2740->g_1279 p_2740->g_1280 p_2740->g_1281 p_2740->g_2507 p_2740->g_985 p_2740->g_1310 p_2740->g_984 p_2740->g_2346 p_2740->g_2704
 * writes: p_2740->g_18 p_2740->g_49 p_2740->g_59 p_2740->g_65 p_2740->g_16 p_2740->g_97 p_2740->g_99 p_2740->g_124 p_2740->g_191 p_2740->g_223 p_2740->g_120 p_2740->g_185 p_2740->g_118 p_2740->g_320 p_2740->g_322 p_2740->g_362 p_2740->g_121 p_2740->g_380 p_2740->g_386 p_2740->g_435 p_2740->g_458 p_2740->g_476 p_2740->g_517 p_2740->g_514 p_2740->g_560 p_2740->g_457 p_2740->g_637 p_2740->g_655 p_2740->g_656 p_2740->g_682 p_2740->g_916 p_2740->g_793 p_2740->g_930 p_2740->g_701 p_2740->g_629 p_2740->g_936 p_2740->g_1295 p_2740->g_2122 p_2740->g_2155 p_2740->g_2186 p_2740->g_1310 p_2740->g_873 p_2740->g_884 p_2740->g_1816 p_2740->g_164 p_2740->g_2319 p_2740->g_2342 p_2740->g_984 p_2740->g_2346 p_2740->g_2347 p_2740->g_2348 p_2740->g_2370 p_2740->g_969 p_2740->g_2421 p_2740->g_2483 p_2740->g_2320 p_2740->g_745 p_2740->g_1264 p_2740->g_985 p_2740->g_621 p_2740->g_2730
 */
int32_t  func_1(struct S1 * p_2740)
{ /* block id: 4 */
    int64_t l_8 = 1L;
    uint8_t l_2331 = 0x8BL;
    int32_t l_2338 = 0x250311C4L;
    uint64_t *l_2341 = &p_2740->g_2342;
    int8_t *l_2343 = &p_2740->g_984;
    int32_t l_2344 = 0x4A9529E3L;
    uint16_t *l_2345 = &p_2740->g_2346;
    int32_t l_2349 = 0x292C22B0L;
    int8_t l_2683[10][4][6] = {{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}},{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}},{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}},{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}},{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}},{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}},{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}},{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}},{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}},{{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L},{0x24L,0L,0x00L,0x36L,0x44L,0L}}};
    uint8_t l_2706 = 0x09L;
    int32_t *l_2738 = &p_2740->g_457;
    int32_t *l_2739[1];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_2739[i] = &p_2740->g_936;
    if ((p_2740->g_comm_values[p_2740->tid] & (+func_2((safe_lshift_func_uint8_t_u_s(0xFBL, ((l_2349 = (+(((*p_2740->g_772) = ((func_6(l_8, p_2740) < (5UL && (p_2740->g_2348 = (l_2331 >= ((((safe_mul_func_uint16_t_u_u((p_2740->g_2347 |= ((*l_2345) = (safe_rshift_func_int8_t_s_u(((l_2344 = (l_2331 != ((*l_2343) = ((safe_mul_func_uint8_t_u_u(((((l_2338 = GROUP_DIVERGE(2, 1)) , (((((l_2338 >= ((*l_2341) = (((safe_rshift_func_int8_t_s_s(p_2740->g_2320, 0)) <= 0x19DD450AL) > 0UL))) | l_8) ^ l_2338) || l_2331) , l_2331)) || p_2740->g_510[3][0].f0) , l_2331), 0x18L)) & l_2331)))) && (-10L)), 0)))), l_2331)) | l_2331) , l_8) , p_2740->g_745))))) | 0x49DFL)) | 0x405CFC0919BC3646L))) , (**p_2740->g_883)))), p_2740))))
    { /* block id: 1364 */
        uint64_t l_2665 = 0xA315014E698989CAL;
        int8_t l_2684 = (-10L);
        for (p_2740->g_629 = 0; (p_2740->g_629 < 32); ++p_2740->g_629)
        { /* block id: 1367 */
            int32_t l_2662 = 8L;
            int32_t *l_2663 = (void*)0;
            int32_t *l_2664[2];
            int64_t *l_2681[2];
            int64_t l_2682 = (-1L);
            int i;
            for (i = 0; i < 2; i++)
                l_2664[i] = &l_2349;
            for (i = 0; i < 2; i++)
                l_2681[i] = &p_2740->g_435;
            --l_2665;
            l_2683[4][2][0] = ((&p_2740->g_16 == (void*)0) || (((safe_sub_func_int32_t_s_s(l_2349, (l_2338 = ((((safe_div_func_uint8_t_u_u(0UL, (((l_2682 = (((**p_2740->g_1279) != ((((safe_rshift_func_uint8_t_u_s(0x7DL, 5)) , (safe_div_func_uint16_t_u_u(((((*p_2740->g_1815) = l_2665) >= (l_2338 != (l_2344 = ((safe_unary_minus_func_uint16_t_u((((((*p_2740->g_459) = (safe_add_func_int64_t_s_s((((l_2338 || p_2740->g_1310) == 0L) > l_2665), l_2665))) , (*p_2740->g_2038)) ^ 0xCCACL) >= 0x3F8B7CE9L))) <= 0x0C051B8FL)))) != l_2665), l_2331))) ^ FAKE_DIVERGE(p_2740->global_0_offset, get_global_id(0), 10)) , (void*)0)) && (**p_2740->g_883))) && (*p_2740->g_459)) && l_2349))) == 0x581D2753L) == l_2349) | 0x11F5L)))) , l_2664[1]) != &l_2349));
            l_2349 ^= 0x6BB1B385L;
            (*p_2740->g_288) = l_2663;
        }
        (*p_2740->g_969) = (l_2684 >= 0x17B56CCAL);
    }
    else
    { /* block id: 1379 */
        uint64_t *l_2695 = &p_2740->g_517;
        int32_t l_2705[3][1][3] = {{{0x2726F9B2L,0x2726F9B2L,0x2726F9B2L}},{{0x2726F9B2L,0x2726F9B2L,0x2726F9B2L}},{{0x2726F9B2L,0x2726F9B2L,0x2726F9B2L}}};
        int32_t l_2731 = (-1L);
        int i, j, k;
        for (p_2740->g_984 = 0; (p_2740->g_984 <= 0); p_2740->g_984 += 1)
        { /* block id: 1382 */
            uint64_t l_2687 = 1UL;
            uint8_t *l_2688 = (void*)0;
            uint8_t *l_2689 = (void*)0;
            uint8_t *l_2690 = &l_2331;
            int32_t *l_2707 = &p_2740->g_2320;
            union U0 *l_2735 = &p_2740->g_510[3][0];
            (*l_2707) &= ((safe_mul_func_int8_t_s_s(((((*l_2690) &= l_2687) || ((((safe_div_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2740->local_1_offset, get_local_id(1), 10), l_2349)), GROUP_DIVERGE(1, 1))) , (void*)0) != l_2695) <= ((((1UL | 0x7306L) , (safe_add_func_int16_t_s_s((((safe_div_func_uint16_t_u_u(((*l_2345)++), l_2338)) , (((~(+(safe_sub_func_uint8_t_u_u((((((*p_2740->g_626) = (p_2740->g_2704 , l_2705[2][0][1])) ^ GROUP_DIVERGE(0, 1)) && 0x7F451492L) == 0L), l_2687)))) == l_2705[0][0][0]) , 0x6E41L)) && 0x592DL), l_2683[7][2][2]))) <= 0UL) && (*p_2740->g_1815)))) & l_2706), l_2687)) , 2L);
            for (p_2740->g_2346 = 0; (p_2740->g_2346 <= 0); p_2740->g_2346 += 1)
            { /* block id: 1389 */
                int64_t *l_2714[2];
                int32_t l_2715 = 0x25ED4DDDL;
                uint16_t *l_2720 = &p_2740->g_682;
                uint32_t *l_2727 = &p_2740->g_985;
                uint32_t *l_2728 = &p_2740->g_873[1];
                uint32_t *l_2729 = &p_2740->g_2730;
                int32_t *l_2732 = &l_2349;
                int32_t *l_2733 = &l_2705[2][0][1];
                union U0 *l_2736 = &p_2740->g_2704;
                int i, j;
                for (i = 0; i < 2; i++)
                    l_2714[i] = &p_2740->g_435;
                (***p_2740->g_2505) = l_2707;
                (*l_2732) &= (p_2740->g_476[p_2740->g_984][(p_2740->g_984 + 2)] <= ((safe_add_func_int64_t_s_s((((p_2740->g_476[p_2740->g_984][(p_2740->g_984 + 1)] == ((safe_add_func_int64_t_s_s((l_2715 &= (safe_sub_func_int32_t_s_s(((**p_2740->g_2507) = (*l_2707)), GROUP_DIVERGE(1, 1)))), (GROUP_DIVERGE(0, 1) > (((((++(*p_2740->g_459)) != ((safe_sub_func_uint16_t_u_u(((*l_2720) ^= (*p_2740->g_1815)), 0x6304L)) == ((safe_sub_func_uint32_t_u_u(((*l_2729) = ((*l_2728) = (safe_mod_func_uint32_t_u_u((((*p_2740->g_772) > 0x0C480A1764C9508CL) , ((*l_2727) = (((*p_2740->g_1815) <= (safe_lshift_func_int16_t_s_s(((FAKE_DIVERGE(p_2740->global_2_offset, get_global_id(2), 10) & (0xFB2CL ^ (*p_2740->g_1815))) | 0x4D36C54AL), 15))) <= (**p_2740->g_883)))), 1UL)))), p_2740->g_476[p_2740->g_984][(p_2740->g_984 + 2)])) == 0x3E84L))) , l_2705[2][0][2]) < (*p_2740->g_884)) >= (*p_2740->g_1815))))) , (*l_2707))) & l_2331) , l_2731), l_2705[0][0][0])) & l_2705[2][0][1]));
                for (p_2740->g_191 = 0; (p_2740->g_191 <= 1); p_2740->g_191 += 1)
                { /* block id: 1401 */
                    (***p_2740->g_2505) = (void*)0;
                    for (l_2349 = 0; (l_2349 >= 0); l_2349 -= 1)
                    { /* block id: 1405 */
                        int32_t **l_2734 = &l_2733;
                        (***p_2740->g_2505) = ((*l_2734) = l_2733);
                        l_2736 = l_2735;
                    }
                    return (*l_2707);
                }
                for (p_2740->g_118 = 6; (p_2740->g_118 >= 2); p_2740->g_118 -= 1)
                { /* block id: 1414 */
                    int32_t l_2737 = 0x7F1C627EL;
                    return l_2737;
                }
            }
        }
        l_2738 = &l_2349;
    }
    (*p_2740->g_2507) = &l_2338;
    l_2738 = l_2739[0];
    return (*l_2738);
}


/* ------------------------------------------ */
/* 
 * reads : p_2740->g_969 p_2740->g_884 p_2740->g_701 p_2740->g_2370 p_2740->g_1141 p_2740->g_121 p_2740->g_59 p_2740->g_620 p_2740->g_1140 p_2740->g_1815 p_2740->g_1816 p_2740->g_772 p_2740->g_476 p_2740->g_453 p_2740->g_454 p_2740->g_2295 p_2740->g_883 p_2740->g_2453 p_2740->g_2038 p_2740->g_18 p_2740->g_626 p_2740->g_2348 p_2740->g_930 p_2740->g_2483 p_2740->g_655 p_2740->g_2320 p_2740->g_2504 p_2740->g_457 p_2740->g_49 p_2740->g_459 p_2740->g_682 p_2740->g_97 p_2740->g_916 p_2740->g_873 p_2740->g_65 p_2740->g_191 p_2740->g_2505 p_2740->g_2506 p_2740->g_1279 p_2740->g_1280 p_2740->g_1281 p_2740->g_2507 p_2740->g_793 p_2740->g_985 p_2740->g_288 p_2740->g_517 p_2740->g_510.f0 p_2740->g_322
 * writes: p_2740->g_916 p_2740->g_322 p_2740->g_59 p_2740->g_517 p_2740->g_2186 p_2740->g_2370 p_2740->g_120 p_2740->g_969 p_2740->g_793 p_2740->g_2421 p_2740->g_362 p_2740->g_435 p_2740->g_121 p_2740->g_99 p_2740->g_1816 p_2740->g_2348 p_2740->g_930 p_2740->g_386 p_2740->g_2483 p_2740->g_560 p_2740->g_2320 p_2740->g_745 p_2740->g_1264 p_2740->g_49 p_2740->g_682 p_2740->g_97 p_2740->g_476 p_2740->g_873 p_2740->g_65 p_2740->g_191 p_2740->g_124 p_2740->g_985 p_2740->g_185
 */
uint32_t  func_2(int8_t  p_3, struct S1 * p_2740)
{ /* block id: 1165 */
    int8_t **l_2351 = (void*)0;
    int8_t ***l_2350 = &l_2351;
    int8_t ***l_2353 = &l_2351;
    int8_t ****l_2352 = &l_2353;
    int32_t l_2354 = 0L;
    union U0 l_2384 = {0x06623E423A54D176L};
    int32_t l_2418 = 0x1DF287F9L;
    uint8_t ****l_2428 = &p_2740->g_320[0];
    int32_t ****l_2478 = &p_2740->g_2186;
    uint8_t l_2519 = 0xB3L;
    uint32_t *l_2534 = &p_2740->g_873[7];
    uint32_t *l_2535[3][1];
    uint32_t *l_2538 = &p_2740->g_97;
    int32_t l_2541 = (-3L);
    uint8_t *l_2542 = (void*)0;
    uint8_t *l_2543 = &l_2519;
    int16_t l_2550 = 0x170AL;
    uint8_t ****l_2557 = &p_2740->g_320[1];
    uint8_t *l_2560 = &p_2740->g_65;
    int32_t l_2601[1];
    uint32_t l_2611[9];
    int32_t l_2615 = 0x21D45558L;
    uint8_t *****l_2621 = &l_2557;
    uint8_t ******l_2620 = &l_2621;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_2535[i][j] = &p_2740->g_873[9];
    }
    for (i = 0; i < 1; i++)
        l_2601[i] = 9L;
    for (i = 0; i < 9; i++)
        l_2611[i] = 0x785375A3L;
lbl_2389:
    (*p_2740->g_969) = ((l_2354 = (l_2350 != ((*l_2352) = &l_2351))) & 0x16D8A703L);
    for (p_2740->g_322 = 0; (p_2740->g_322 <= 1); p_2740->g_322 += 1)
    { /* block id: 1171 */
        int32_t l_2365 = 0L;
        int32_t **l_2379 = &p_2740->g_793;
        int32_t ***l_2385 = &l_2379;
        int32_t l_2388 = 1L;
        int64_t l_2403 = 0x282DE6746414B256L;
        uint8_t ****l_2417 = &p_2740->g_320[0];
        uint8_t *****l_2416 = &l_2417;
        uint8_t ******l_2415 = &l_2416;
        uint32_t l_2468 = 0xE0124567L;
        uint16_t l_2469 = 0x141AL;
        int32_t l_2488 = 0x4DEB069CL;
        int32_t *l_2493 = &l_2488;
        (*p_2740->g_969) = 0x4A12D063L;
        for (p_2740->g_59 = 0; (p_2740->g_59 <= 1); p_2740->g_59 += 1)
        { /* block id: 1175 */
            int32_t **l_2377 = &p_2740->g_793;
            int32_t l_2382 = 0x00F6ABB0L;
            int32_t l_2383 = 0x6B6A8FB6L;
            uint8_t l_2396 = 0x34L;
            uint32_t l_2400 = 0xAC68343BL;
            int32_t l_2458 = 0x0CB9DB35L;
            int64_t l_2485[8][3] = {{6L,0x5E673F6401ECBC08L,0L},{6L,0x5E673F6401ECBC08L,0L},{6L,0x5E673F6401ECBC08L,0L},{6L,0x5E673F6401ECBC08L,0L},{6L,0x5E673F6401ECBC08L,0L},{6L,0x5E673F6401ECBC08L,0L},{6L,0x5E673F6401ECBC08L,0L},{6L,0x5E673F6401ECBC08L,0L}};
            union U0 *l_2492 = (void*)0;
            int32_t *****l_2503[6][4] = {{&l_2478,&l_2478,&l_2478,&l_2478},{&l_2478,&l_2478,&l_2478,&l_2478},{&l_2478,&l_2478,&l_2478,&l_2478},{&l_2478,&l_2478,&l_2478,&l_2478},{&l_2478,&l_2478,&l_2478,&l_2478},{&l_2478,&l_2478,&l_2478,&l_2478}};
            int i, j;
            for (p_2740->g_517 = 0; (p_2740->g_517 <= 8); p_2740->g_517 += 1)
            { /* block id: 1178 */
                int32_t ****l_2355 = (void*)0;
                int32_t ****l_2356 = &p_2740->g_2186;
                uint32_t *****l_2372 = &p_2740->g_2370;
                int32_t ***l_2378[8];
                uint32_t *l_2380 = (void*)0;
                uint32_t *l_2381[7] = {&p_2740->g_59,&p_2740->g_873[8],&p_2740->g_59,&p_2740->g_59,&p_2740->g_873[8],&p_2740->g_59,&p_2740->g_59};
                uint8_t *l_2459[1];
                int32_t ****l_2477 = (void*)0;
                int i;
                for (i = 0; i < 8; i++)
                    l_2378[i] = &p_2740->g_2187[2];
                for (i = 0; i < 1; i++)
                    l_2459[i] = &l_2396;
                if ((((*l_2356) = (void*)0) != ((l_2354 = (safe_mod_func_int16_t_s_s(((safe_sub_func_uint8_t_u_u((!(safe_add_func_int64_t_s_s((~(((*p_2740->g_884) && 8L) || (safe_div_func_int32_t_s_s(l_2365, (safe_mod_func_int64_t_s_s(((~FAKE_DIVERGE(p_2740->group_1_offset, get_group_id(1), 10)) != (((3UL | p_3) > (((*l_2372) = p_2740->g_2370) != ((((safe_add_func_uint32_t_u_u((l_2382 = (safe_sub_func_uint64_t_u_u((((l_2377 = l_2377) == l_2379) != (*p_2740->g_1141)), p_3))), l_2383)) , l_2384) , 65532UL) , (void*)0))) , l_2354)), p_3)))))), 0L))), l_2354)) > 0x388DA758L), 1L))) , l_2385)))
                { /* block id: 1184 */
                    for (p_2740->g_120 = 1; (p_2740->g_120 >= 0); p_2740->g_120 -= 1)
                    { /* block id: 1187 */
                        volatile int32_t **l_2386 = (void*)0;
                        volatile int32_t **l_2387 = &p_2740->g_969;
                        int i;
                        (*l_2387) = p_2740->g_620[p_2740->g_59];
                        return p_3;
                    }
                    if (l_2388)
                    { /* block id: 1191 */
                        return p_3;
                    }
                    else
                    { /* block id: 1193 */
                        if (l_2388)
                            goto lbl_2389;
                    }
                }
                else
                { /* block id: 1196 */
                    int64_t l_2398 = 0x1AE86E73642250B6L;
                    int32_t l_2399 = 0x65A90CAFL;
                    int8_t *****l_2414 = &l_2352;
                    uint8_t *l_2460[5][8][4] = {{{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322}},{{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322}},{{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322}},{{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322}},{{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322},{&p_2740->g_322,&l_2396,(void*)0,&p_2740->g_322}}};
                    int64_t *l_2467[2];
                    int32_t *****l_2476[8][10][3] = {{{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355}},{{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355}},{{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355}},{{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355}},{{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355}},{{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355}},{{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355}},{{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355},{&l_2355,&l_2356,&l_2355}}};
                    int16_t *l_2479 = &p_2740->g_2348;
                    int8_t l_2480 = (-1L);
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_2467[i] = &p_2740->g_362;
                    (**l_2385) = (void*)0;
                    if (p_3)
                    { /* block id: 1198 */
                        int32_t l_2392 = 0x095068A1L;
                        int32_t l_2393 = 0x3555016AL;
                        int32_t l_2397[10] = {(-4L),0x171CD43BL,0x24E314E1L,0x171CD43BL,(-4L),(-4L),0x171CD43BL,0x24E314E1L,0x171CD43BL,(-4L)};
                        int8_t *****l_2412 = &l_2352;
                        int8_t ******l_2413 = &l_2412;
                        int i;
                        (*p_2740->g_969) = (l_2354 = (l_2393 = (l_2382 = (safe_lshift_func_uint16_t_u_s((!FAKE_DIVERGE(p_2740->global_2_offset, get_global_id(2), 10)), l_2392)))));
                        l_2418 &= (((((((((p_2740->g_620[p_2740->g_59] == (void*)0) || (safe_add_func_uint16_t_u_u(((l_2396 = l_2392) && (++l_2400)), (l_2403 || (safe_div_func_int64_t_s_s((safe_mul_func_uint16_t_u_u(0x7B24L, (safe_sub_func_uint8_t_u_u((p_3 , FAKE_DIVERGE(p_2740->global_0_offset, get_global_id(0), 10)), ((((l_2354 = p_3) & (((65530UL || ((((safe_rshift_func_int8_t_s_u((((((*l_2413) = l_2412) != l_2414) < 0xBED2L) && 0xAF24DBB8L), 7)) ^ p_3) | p_3) <= p_3)) | (**p_2740->g_1140)) | (*p_2740->g_1815))) , 7UL) > 1UL))))), (*p_2740->g_772))))))) , (void*)0) == l_2415) , (-5L)) , p_3) <= l_2384.f0) >= 4294967288UL) , p_3);
                    }
                    else
                    { /* block id: 1208 */
                        int64_t *l_2420 = &p_2740->g_386;
                        int64_t **l_2419[6][7][6] = {{{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420}},{{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420}},{{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420}},{{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420}},{{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420}},{{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420},{&l_2420,&l_2420,(void*)0,&l_2420,(void*)0,&l_2420}}};
                        int64_t *l_2435 = &p_2740->g_362;
                        int64_t *l_2436 = (void*)0;
                        int64_t *l_2437 = &p_2740->g_435;
                        int32_t l_2438 = 0x5DAE5411L;
                        int i, j, k;
                        l_2438 = ((((p_2740->g_2421[1] = &p_2740->g_386) != &p_2740->g_386) <= (safe_rshift_func_int16_t_s_u((safe_sub_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(p_3, (((((**l_2415) = l_2428) != (*p_2740->g_453)) > l_2418) ^ ((*l_2437) = (safe_add_func_int64_t_s_s(((*l_2435) = ((***p_2740->g_2295) ^ (safe_mod_func_uint64_t_u_u(((p_3 < (safe_rshift_func_uint16_t_u_u(0x71EDL, 9))) < l_2399), 0xA1EA6EB077D1D343L)))), FAKE_DIVERGE(p_2740->group_2_offset, get_group_id(2), 10))))))), 1L)), 9))) | 0x8EL);
                        l_2399 = p_3;
                        l_2383 &= ((*p_2740->g_626) = (safe_add_func_int64_t_s_s(((safe_lshift_func_uint16_t_u_s(((l_2418 , (safe_sub_func_int32_t_s_s((safe_sub_func_int32_t_s_s(l_2438, 1L)), (safe_mul_func_uint8_t_u_u((safe_add_func_int16_t_s_s(((*p_2740->g_2038) = (safe_lshift_func_uint8_t_u_u((((p_2740->g_2453[0][0][1] , (1L < ((safe_mod_func_uint64_t_u_u(l_2438, (*p_2740->g_772))) , (l_2354 & (((FAKE_DIVERGE(p_2740->group_1_offset, get_group_id(1), 10) < ((safe_rshift_func_uint16_t_u_s((l_2458 ^ 1L), 4)) >= p_3)) , l_2459[0]) != l_2460[0][4][1]))))) ^ (*p_2740->g_884)) , l_2398), GROUP_DIVERGE(2, 1)))), (*p_2740->g_1815))), p_3))))) , l_2438), p_2740->g_18)) != (*p_2740->g_884)), 0x536FF42A2B2E422EL)));
                        return p_3;
                    }
                    l_2354 = ((0x3CL >= (**p_2740->g_883)) , ((safe_div_func_int8_t_s_s(((((safe_mod_func_uint32_t_u_u(((FAKE_DIVERGE(p_2740->local_0_offset, get_local_id(0), 10) <= (safe_div_func_int64_t_s_s((p_3 | ((!((*l_2479) ^= (((-9L) | (&l_2384 == &l_2384)) >= ((l_2468 |= p_3) ^ (l_2469 == ((safe_rshift_func_uint16_t_u_s(((*p_2740->g_1815) = (safe_sub_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((l_2478 = (l_2477 = &p_2740->g_2186)) == (void*)0), 0UL)), 0L))), (*p_2740->g_2038))) , (-7L))))))) | l_2480)), 0x725BF8AD4E4D2FACL))) < p_2740->g_930), (-1L))) || p_3) , 0UL) || p_3), 0x8EL)) > p_3));
                }
            }
            for (l_2383 = 8; (l_2383 >= 0); l_2383 -= 1)
            { /* block id: 1230 */
                for (p_2740->g_930 = 4; (p_2740->g_930 >= 0); p_2740->g_930 -= 1)
                { /* block id: 1233 */
                    return p_3;
                }
                return p_3;
            }
            for (p_2740->g_386 = 6; (p_2740->g_386 >= 3); p_2740->g_386 -= 1)
            { /* block id: 1240 */
                int32_t *l_2501 = &p_2740->g_457;
                for (p_2740->g_120 = 0; (p_2740->g_120 <= 4); p_2740->g_120 += 1)
                { /* block id: 1243 */
                    uint64_t l_2489 = 0x1FAA47D2EC24EE6BL;
                    if ((safe_mul_func_uint8_t_u_u(0x3CL, 0x0BL)))
                    { /* block id: 1244 */
                        int16_t ****l_2484 = &p_2740->g_2483;
                        l_2383 |= (l_2485[4][1] = (((*l_2484) = p_2740->g_2483) != &p_2740->g_1140));
                    }
                    else
                    { /* block id: 1248 */
                        int32_t *l_2486 = &p_2740->g_2320;
                        int32_t *l_2487[3][1];
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_2487[i][j] = &l_2354;
                        }
                        l_2489++;
                        (*p_2740->g_655) = l_2492;
                        (*l_2377) = l_2493;
                    }
                }
                for (p_2740->g_2320 = 3; (p_2740->g_2320 <= 8); p_2740->g_2320 += 1)
                { /* block id: 1256 */
                    uint64_t l_2502 = 0x277D4DC081325807L;
                    int32_t l_2510 = (-6L);
                    for (p_3 = 0; (p_3 <= 8); p_3 += 1)
                    { /* block id: 1259 */
                        uint32_t l_2494 = 4294967295UL;
                        return l_2494;
                    }
                    if (p_3)
                        continue;
                    for (p_2740->g_745 = 0; p_2740->g_745 < 1; p_2740->g_745 += 1)
                    {
                        p_2740->g_1264[p_2740->g_745] = &p_2740->g_1262[3][3];
                    }
                    (*l_2493) |= ((((safe_mod_func_uint16_t_u_u(((void*)0 != l_2501), l_2502)) && (l_2503[4][0] == p_2740->g_2504)) >= ((safe_lshift_func_uint16_t_u_u((--(*p_2740->g_1815)), 11)) > (((*l_2501) > ((*p_2740->g_884) , (safe_sub_func_int64_t_s_s(p_3, (safe_rshift_func_int16_t_s_u(0x01B3L, l_2502)))))) , (*p_2740->g_884)))) != 0x186C5E69L);
                }
                (*p_2740->g_969) = (!(*l_2501));
                if (l_2354)
                    continue;
            }
            if (p_3)
                break;
        }
        for (p_2740->g_49 = 0; (p_2740->g_49 <= 1); p_2740->g_49 += 1)
        { /* block id: 1274 */
            (*p_2740->g_969) = (safe_rshift_func_int16_t_s_u(l_2519, 4));
            if (l_2418)
                goto lbl_2389;
        }
        for (p_2740->g_2348 = 0; (p_2740->g_2348 <= 4); p_2740->g_2348 += 1)
        { /* block id: 1280 */
            (*l_2379) = &l_2418;
            return (*p_2740->g_459);
        }
        for (p_2740->g_682 = 1; (p_2740->g_682 <= 4); p_2740->g_682 += 1)
        { /* block id: 1286 */
            return (*p_2740->g_459);
        }
    }
    (*p_2740->g_969) |= (safe_sub_func_uint32_t_u_u(((safe_mod_func_uint64_t_u_u((l_2519 , ((*p_2740->g_772) |= (((*p_2740->g_1815)++) > (safe_sub_func_uint16_t_u_u(l_2519, (p_3 | ((safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s((((*p_2740->g_459)++) >= (l_2418 & l_2418)), (l_2354 = ((((l_2534 = l_2534) != l_2535[2][0]) > 0x2C656128634EA124L) , (((safe_add_func_uint64_t_u_u(((((++(*l_2538)) , ((!l_2541) && (-5L))) , (*p_2740->g_884)) >= GROUP_DIVERGE(0, 1)), 9L)) , l_2541) , p_3))))), p_3)) && p_3))))))), 0x2E42B0E42C6CCA28L)) || (*p_2740->g_1815)), l_2519));
    if ((((*l_2543) &= p_3) < ((safe_sub_func_uint64_t_u_u((((((((*l_2560) ^= (safe_sub_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(4294967291UL, (--(*l_2534)))), (safe_rshift_func_int16_t_s_u((((safe_sub_func_int16_t_s_s((l_2428 != (l_2557 = l_2428)), (*p_2740->g_2038))) < ((void*)0 != &p_2740->g_1262[4][0])) , (*p_2740->g_2038)), ((safe_mod_func_uint32_t_u_u(0xC4CC3051L, p_3)) , (*p_2740->g_1815))))))) & 0x56L) == FAKE_DIVERGE(p_2740->local_1_offset, get_local_id(1), 10)) > 0UL) > p_3) > l_2550), l_2541)) , 0x0FL)))
    { /* block id: 1301 */
        union U0 **l_2572 = &p_2740->g_560;
        int32_t l_2573 = (-9L);
        int32_t l_2591 = 0L;
        int32_t l_2600 = 0x2EEFAD97L;
        int32_t l_2602 = 0x57DFE00AL;
        int32_t l_2603[10];
        uint32_t l_2604[4][1] = {{1UL},{1UL},{1UL},{1UL}};
        int i, j;
        for (i = 0; i < 10; i++)
            l_2603[i] = 9L;
        for (p_2740->g_191 = 7; (p_2740->g_191 >= 0); p_2740->g_191 -= 1)
        { /* block id: 1304 */
            uint64_t l_2561[6][3][10] = {{{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL}},{{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL}},{{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL}},{{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL}},{{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL}},{{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL},{0x5AF233014DDA7528L,8UL,1UL,0xCCDF3C00098C4E59L,0x5AF233014DDA7528L,18446744073709551615UL,8UL,0x8E8E947889BA0D2FL,0xCCDF3C00098C4E59L,18446744073709551615UL}}};
            uint8_t l_2568 = 255UL;
            int i, j, k;
            ++l_2561[0][2][3];
            for (p_2740->g_124 = 0; (p_2740->g_124 >= 59); p_2740->g_124++)
            { /* block id: 1308 */
                union U0 ***l_2571[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_2571[i] = &p_2740->g_655;
                if ((((safe_rshift_func_int16_t_s_u((!p_3), 15)) && l_2568) > (p_3 ^ (safe_mul_func_int8_t_s_s((((void*)0 == (**p_2740->g_2504)) ^ ((((((void*)0 != &p_2740->g_2187[9]) <= ((((*p_2740->g_772) & ((l_2572 = &p_2740->g_560) != (**p_2740->g_1279))) < 0xBDA7B8C8D204B47DL) || l_2573)) < 0x7E33L) , p_3) , (*p_2740->g_772))), (*p_2740->g_884))))))
                { /* block id: 1310 */
                    (***p_2740->g_2505) = &l_2573;
                }
                else
                { /* block id: 1312 */
                    int i, j;
                    (*p_2740->g_2507) = &l_2573;
                    if ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((FAKE_DIVERGE(p_2740->local_1_offset, get_local_id(1), 10) < ((*p_2740->g_772) = 0UL)), (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(0x01F7L, (safe_mul_func_int16_t_s_s((*p_2740->g_1141), (!((safe_mul_func_uint8_t_u_u(l_2573, p_3)) || p_3)))))), (safe_sub_func_uint16_t_u_u(65529UL, (*p_2740->g_2038))))))), (((safe_mod_func_uint16_t_u_u((*p_2740->g_1815), 0x58F2L)) & 0x82AC728E87D0A125L) & p_3))))
                    { /* block id: 1315 */
                        if ((**p_2740->g_2507))
                            break;
                    }
                    else
                    { /* block id: 1317 */
                        int32_t *l_2590 = (void*)0;
                        (**p_2740->g_2506) = l_2590;
                    }
                    if (l_2591)
                        break;
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_2740->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 6)), permutations[(safe_mod_func_uint32_t_u_u(2UL, 10))][(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))]));
                }
            }
        }
        for (p_2740->g_985 = 26; (p_2740->g_985 > 40); p_2740->g_985 = safe_add_func_uint64_t_u_u(p_2740->g_985, 4))
        { /* block id: 1329 */
            int32_t **l_2594 = &p_2740->g_793;
            int32_t l_2595[5] = {0x2DD63482L,0x2DD63482L,0x2DD63482L,0x2DD63482L,0x2DD63482L};
            int32_t *l_2596 = (void*)0;
            int32_t *l_2597 = &l_2418;
            int32_t *l_2598 = &l_2595[2];
            int32_t *l_2599[8] = {&l_2595[2],&l_2595[2],&l_2595[2],&l_2595[2],&l_2595[2],&l_2595[2],&l_2595[2],&l_2595[2]};
            uint8_t *****l_2619 = (void*)0;
            uint8_t ******l_2618 = &l_2619;
            int32_t l_2622 = 0x06E5E727L;
            int i;
            (*p_2740->g_288) = ((*l_2594) = (void*)0);
            l_2604[0][0]++;
            for (p_2740->g_517 = 2; (p_2740->g_517 <= 7); p_2740->g_517 += 1)
            { /* block id: 1335 */
                int64_t l_2609 = 0x63DC20562A3BC412L;
                int32_t l_2612 = 0x2CF7B02AL;
                uint32_t *l_2638 = &p_2740->g_97;
                for (p_2740->g_97 = 0; (p_2740->g_97 <= 7); p_2740->g_97 += 1)
                { /* block id: 1338 */
                    uint8_t l_2610 = 0x46L;
                    int32_t *l_2616[10][2];
                    int32_t l_2617 = 0x4DA262DAL;
                    int i, j;
                    for (i = 0; i < 10; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_2616[i][j] = (void*)0;
                    }
                    (*p_2740->g_626) = (safe_div_func_uint8_t_u_u(l_2609, (p_3 , l_2610)));
                    l_2612 = l_2611[7];
                    if (((0L ^ (((l_2617 = (l_2604[0][0] | l_2615)) , l_2618) == l_2620)) >= (l_2622 <= (0x14F755FEB7743C96L && (0x724EL <= ((*p_2740->g_1815)--))))))
                    { /* block id: 1343 */
                        return p_3;
                    }
                    else
                    { /* block id: 1345 */
                        uint16_t l_2631 = 65530UL;
                        (*l_2598) = (safe_lshift_func_int8_t_s_u((*p_2740->g_884), (safe_mul_func_int16_t_s_s((**p_2740->g_1140), (((safe_sub_func_uint16_t_u_u((l_2631 && ((*l_2560) &= ((safe_div_func_int32_t_s_s((p_3 | (((safe_div_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(p_3, (l_2638 != ((safe_rshift_func_uint8_t_u_s(l_2604[0][0], (((safe_mul_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((p_2740->g_510[3][0].f0 , FAKE_DIVERGE(p_2740->local_0_offset, get_local_id(0), 10)), l_2631)) , l_2612), 0UL)) && 0x4A7F6FECE31E9782L) && p_3))) , (void*)0)))), (-3L))) >= p_3) > 0x4EA74A48L)), (*l_2598))) || l_2604[1][0]))), p_3)) , p_3) | l_2602)))));
                    }
                    (*p_2740->g_969) = ((~((*p_2740->g_1815) &= 0xF25DL)) || p_3);
                }
            }
        }
        (**p_2740->g_2506) = (((safe_mod_func_uint64_t_u_u(((p_3 ^ (safe_lshift_func_uint16_t_u_u(((p_3 >= (safe_div_func_uint8_t_u_u(((18446744073709551606UL || (safe_sub_func_uint8_t_u_u((((*p_2740->g_772)--) ^ ((p_3 || ((safe_mod_func_uint32_t_u_u((*p_2740->g_459), ((l_2603[4] &= (p_3 , (safe_mod_func_int16_t_s_s(((*p_2740->g_1815) , ((void*)0 != &l_2603[8])), 0x6EBEL)))) || FAKE_DIVERGE(p_2740->group_2_offset, get_group_id(2), 10)))) > 0x68210CB0L)) > p_3)), 0x62L))) != l_2591), l_2604[0][0]))) , (*p_2740->g_1815)), l_2604[0][0]))) ^ p_3), 18446744073709551608UL)) || 0x4DL) , &l_2418);
    }
    else
    { /* block id: 1357 */
        int32_t *l_2659 = (void*)0;
        (*p_2740->g_969) = (l_2615 = (-4L));
        if (p_2740->g_49)
            goto lbl_2389;
        (***p_2740->g_2505) = l_2659;
    }
    return l_2601[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2740->g_16 p_2740->g_18 p_2740->g_comm_values p_2740->g_49 p_2740->l_comm_values p_2740->g_65 p_2740->g_59 p_2740->g_97 p_2740->g_99 p_2740->g_124 p_2740->g_120 p_2740->g_121 p_2740->g_118 p_2740->g_164 p_2740->g_184 p_2740->g_191 p_2740->g_223 p_2740->g_246 p_2740->g_185 p_2740->g_260 p_2740->g_288 p_2740->g_322 p_2740->g_380 p_2740->g_386 p_2740->g_435 p_2740->g_453 p_2740->g_457 p_2740->g_510 p_2740->g_517 p_2740->g_522 p_2740->g_459 p_2740->g_562 p_2740->g_476 p_2740->g_514 p_2740->g_619 p_2740->g_626 p_2740->g_621 p_2740->g_629 p_2740->g_362 p_2740->g_510.f0 p_2740->g_656 p_2740->g_969 p_2740->g_916 p_2740->g_793 p_2740->g_772 p_2740->g_792 p_2740->g_884 p_2740->g_701 p_2740->g_1140 p_2740->g_682 p_2740->g_1141 p_2740->g_930 p_2740->g_1337 p_2740->g_936 p_2740->g_1760 p_2740->g_1815 p_2740->g_1816 p_2740->g_620 p_2740->g_883 p_2740->g_1295 p_2740->g_2122 p_2740->g_2038 p_2740->g_2165 p_2740->g_2176 p_2740->g_2186 p_2740->g_2187 p_2740->g_2295
 * writes: p_2740->g_18 p_2740->g_49 p_2740->g_59 p_2740->g_65 p_2740->g_16 p_2740->g_97 p_2740->g_99 p_2740->g_124 p_2740->g_191 p_2740->g_223 p_2740->g_120 p_2740->g_185 p_2740->g_118 p_2740->g_320 p_2740->g_322 p_2740->g_362 p_2740->g_121 p_2740->g_380 p_2740->g_386 p_2740->g_435 p_2740->g_458 p_2740->g_476 p_2740->g_517 p_2740->g_514 p_2740->g_560 p_2740->g_457 p_2740->g_637 p_2740->g_655 p_2740->g_656 p_2740->g_682 p_2740->g_916 p_2740->g_793 p_2740->g_930 p_2740->g_701 p_2740->g_629 p_2740->g_936 p_2740->g_1295 p_2740->g_2122 p_2740->g_2155 p_2740->g_2186 p_2740->g_1310 p_2740->g_873 p_2740->g_884 p_2740->g_1816 p_2740->g_164 p_2740->g_2319
 */
uint32_t  func_6(uint32_t  p_7, struct S1 * p_2740)
{ /* block id: 5 */
    uint8_t *l_17 = &p_2740->g_18;
    int32_t l_38 = 0x3C775623L;
    uint8_t *l_47 = (void*)0;
    uint8_t *l_48 = (void*)0;
    int64_t *l_52 = (void*)0;
    int64_t *l_53 = (void*)0;
    int64_t *l_54 = (void*)0;
    int64_t *l_55 = (void*)0;
    int64_t *l_56 = (void*)0;
    int32_t l_57 = 0x4BB0F55FL;
    uint32_t *l_58[8][3][7] = {{{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,(void*)0,(void*)0,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}}};
    uint8_t *l_60 = (void*)0;
    uint8_t *l_61 = (void*)0;
    uint8_t *l_62 = (void*)0;
    uint8_t *l_63 = (void*)0;
    uint8_t *l_64 = &p_2740->g_65;
    union U0 l_1680 = {0x2179F2CD1F9723F9L};
    int32_t *l_1681 = &p_2740->g_930;
    int32_t l_1682[3][8][6] = {{{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L}},{{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L}},{{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L},{0x37093063L,0L,(-10L),0x01B8DE32L,0x0B77E78CL,0L}}};
    int16_t l_1683 = 0x2BFBL;
    int i, j, k;
    (*p_2740->g_969) = (func_9(((safe_rshift_func_uint16_t_u_s(0x076FL, 10)) , (((*l_17) &= p_2740->g_16) || ((*p_2740->g_884) = ((l_17 != (((*l_1681) ^= ((l_1680 = func_19(func_22((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(p_2740->g_comm_values[p_2740->tid], p_2740->g_18)), (safe_add_func_int64_t_s_s(((((*l_64) ^= ((p_2740->g_59 = (safe_lshift_func_int8_t_s_u(((safe_mod_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(p_2740->g_16, ((l_38 , (void*)0) == ((safe_sub_func_uint8_t_u_u((((l_57 = (safe_lshift_func_int16_t_s_s(((safe_mod_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s((--p_2740->g_49), 1)), p_2740->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))])) && p_7), 8))) ^ l_38) , p_2740->g_comm_values[p_2740->tid]), p_2740->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))])) , (void*)0)))), 1UL)) & (-1L)), GROUP_DIVERGE(0, 1)))) && p_7)) <= 0xD9L) , (-10L)), (-4L))))), p_2740->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))], l_38, p_2740), l_64, p_2740)) , p_7)) , l_64)) , l_38)))), l_38, l_1682[1][4][1], l_1683, p_2740) && l_1683);
    return l_1680.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_2740->g_514 p_2740->g_459 p_2740->g_59 p_2740->g_16 p_2740->g_1141 p_2740->g_121 p_2740->g_1337 p_2740->g_969 p_2740->g_772 p_2740->g_380 p_2740->g_476 p_2740->g_936 p_2740->g_1140 p_2740->g_97 p_2740->g_362 p_2740->g_1760 p_2740->g_916 p_2740->g_457 p_2740->g_124 p_2740->g_626 p_2740->g_99 p_2740->g_629 p_2740->g_18 p_2740->g_1815 p_2740->g_1816 p_2740->g_619 p_2740->g_620 p_2740->g_621 p_2740->g_883 p_2740->g_884 p_2740->g_701 p_2740->g_120 p_2740->g_1295 p_2740->g_2122 p_2740->g_2038 p_2740->g_2165 p_2740->g_223 p_2740->g_2176 p_2740->g_2186 p_2740->g_2187 p_2740->g_185 p_2740->g_2295 p_2740->g_517
 * writes: p_2740->g_59 p_2740->g_916 p_2740->g_476 p_2740->g_380 p_2740->g_362 p_2740->g_435 p_2740->g_517 p_2740->g_793 p_2740->g_457 p_2740->g_124 p_2740->g_185 p_2740->g_629 p_2740->g_514 p_2740->g_18 p_2740->g_936 p_2740->g_120 p_2740->g_1295 p_2740->g_2122 p_2740->g_121 p_2740->g_320 p_2740->g_2155 p_2740->g_99 p_2740->g_2186 p_2740->g_682 p_2740->g_930 p_2740->g_1310 p_2740->g_873 p_2740->g_884 p_2740->g_1816 p_2740->g_701 p_2740->g_164 p_2740->g_2319
 */
uint32_t  func_9(int64_t  p_10, uint8_t  p_11, uint64_t  p_12, uint64_t  p_13, struct S1 * p_2740)
{ /* block id: 806 */
    uint8_t l_1691[3];
    int32_t l_1702 = (-8L);
    int32_t l_1722 = 0x37EB227EL;
    uint8_t ******l_1732 = (void*)0;
    int16_t **l_1747 = (void*)0;
    int32_t l_1790 = (-4L);
    int32_t l_1791 = 1L;
    int32_t l_1792 = (-5L);
    int32_t l_1793 = 0x748F09A1L;
    uint32_t l_1794 = 1UL;
    int32_t *l_1828 = &l_1722;
    int8_t **l_1932 = &p_2740->g_884;
    int8_t ***l_1931 = &l_1932;
    int8_t ****l_1930 = &l_1931;
    int16_t l_1933[1];
    int32_t l_1953 = (-3L);
    int32_t l_1954 = 0x50D72C88L;
    int32_t l_1957 = 0x245F7FF7L;
    int32_t l_1978 = 0x412B7F15L;
    int32_t **l_2034 = &l_1828;
    int32_t ***l_2033[9][7][4] = {{{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034}},{{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034}},{{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034}},{{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034}},{{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034}},{{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034}},{{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034}},{{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034}},{{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034},{&l_2034,&l_2034,&l_2034,&l_2034}}};
    int16_t **l_2086 = &p_2740->g_2038;
    int16_t l_2096 = 1L;
    int8_t l_2114 = 6L;
    uint8_t ***l_2149[7][5][7] = {{{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164}},{{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164}},{{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164}},{{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164}},{{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164}},{{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164}},{{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164},{(void*)0,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,(void*)0,&p_2740->g_164,&p_2740->g_164}}};
    uint32_t **l_2162 = &p_2740->g_459;
    uint32_t ****l_2208 = &p_2740->g_2155;
    uint8_t l_2211 = 0xF2L;
    uint32_t ****l_2217 = &p_2740->g_2155;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1691[i] = 0xA2L;
    for (i = 0; i < 1; i++)
        l_1933[i] = 0x7C31L;
    if ((safe_sub_func_uint32_t_u_u(((*p_2740->g_459) = ((p_2740->g_514 ^ ((safe_unary_minus_func_int16_t_s((safe_rshift_func_uint8_t_u_s((safe_sub_func_int64_t_s_s(l_1691[0], ((safe_div_func_uint32_t_u_u((*p_2740->g_459), (l_1691[2] , 0x14B24943L))) | 8L))), ((p_2740->g_16 > GROUP_DIVERGE(2, 1)) , (safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(l_1691[2], ((safe_div_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(l_1691[0], l_1691[2])), (*p_2740->g_459))) , (*p_2740->g_1141)))), 0x1870AE57L))))))) ^ p_2740->g_1337)) , l_1702)), p_11)))
    { /* block id: 808 */
        uint32_t *l_1737 = &p_2740->g_873[7];
        uint8_t *l_1741[9][9][1] = {{{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629}},{{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629}},{{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629}},{{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629}},{{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629}},{{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629}},{{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629}},{{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629}},{{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629},{&p_2740->g_629}}};
        uint8_t **l_1740 = &l_1741[1][8][0];
        int32_t l_1746 = (-5L);
        uint64_t l_1748 = 0x2C5014B096E22CF5L;
        int32_t **l_1781[7];
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_1781[i] = &p_2740->g_185;
        for (p_2740->g_59 = (-24); (p_2740->g_59 >= 43); p_2740->g_59 = safe_add_func_uint8_t_u_u(p_2740->g_59, 9))
        { /* block id: 811 */
            uint32_t l_1721 = 8UL;
            int16_t *l_1731 = &p_2740->g_380;
            int32_t *l_1753 = &l_1746;
            (*p_2740->g_969) = (0xA5L >= ((safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((p_10 && p_2740->g_59), 0)), (p_11 ^= GROUP_DIVERGE(1, 1)))), p_2740->g_16)) || ((safe_div_func_int64_t_s_s(0x1632A936EE63853CL, (((p_2740->g_1337 , (safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(0UL, 9)), (safe_lshift_func_int16_t_s_u(l_1721, (l_1722 = 0x37BFL)))))) <= p_13) ^ 0x95L))) >= l_1702)));
            (*p_2740->g_969) = (safe_mod_func_int64_t_s_s(((+1UL) , ((safe_mod_func_uint16_t_u_u((~(0x1854L || ((((*p_2740->g_772) = FAKE_DIVERGE(p_2740->local_2_offset, get_local_id(2), 10)) && ((((safe_div_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(((*l_1731) &= (-1L)), ((((l_1732 != (((safe_mod_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u((l_1737 == (void*)0), ((safe_sub_func_uint64_t_u_u(((*p_2740->g_772) ^= (((((void*)0 == l_1740) >= ((safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s(l_1721, l_1691[1])), 0x3446L)) , l_1691[2])) & FAKE_DIVERGE(p_2740->global_0_offset, get_global_id(0), 10)) == 0xF304DE0CL)), p_2740->g_936)) ^ l_1691[2]))), GROUP_DIVERGE(1, 1))) > 7L) , l_1732)) & p_13) , p_11) | l_1746))), 0x6C99L)) , l_1747) != (void*)0) == l_1748)) , (**p_2740->g_1140)))), p_2740->g_59)) & p_11)), p_2740->g_97));
            for (p_2740->g_362 = 9; (p_2740->g_362 < (-28)); p_2740->g_362 = safe_sub_func_int16_t_s_s(p_2740->g_362, 6))
            { /* block id: 821 */
                int8_t l_1758[7] = {0L,0L,0L,0L,0L,0L,0L};
                int32_t *l_1759 = &p_2740->g_457;
                int i;
                if (p_10)
                    break;
                for (p_2740->g_435 = (-2); (p_2740->g_435 <= 18); p_2740->g_435 = safe_add_func_int16_t_s_s(p_2740->g_435, 5))
                { /* block id: 825 */
                    int32_t l_1761[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1761[i] = 0x36CE3A33L;
                    l_1753 = l_1753;
                    for (p_2740->g_517 = (-26); (p_2740->g_517 >= 54); p_2740->g_517 = safe_add_func_int64_t_s_s(p_2740->g_517, 7))
                    { /* block id: 829 */
                        (*l_1753) = (safe_lshift_func_uint16_t_u_u((*l_1753), 10));
                        (*l_1753) ^= l_1758[0];
                    }
                    (*p_2740->g_1760) = l_1759;
                    (*p_2740->g_969) &= l_1761[0];
                }
            }
            return p_11;
        }
        for (p_2740->g_362 = 0; (p_2740->g_362 >= 6); p_2740->g_362 = safe_add_func_int32_t_s_s(p_2740->g_362, 7))
        { /* block id: 841 */
            uint64_t **l_1767 = &p_2740->g_772;
            uint64_t ***l_1766 = &l_1767;
            int32_t l_1768 = (-1L);
            uint64_t *l_1775[9] = {&p_2740->g_49,&p_2740->g_49,&p_2740->g_49,&p_2740->g_49,&p_2740->g_49,&p_2740->g_49,&p_2740->g_49,&p_2740->g_49,&p_2740->g_49};
            int64_t l_1780 = 0x27EFCE43D15F3A9EL;
            int i;
            (*p_2740->g_969) |= ((safe_mul_func_uint8_t_u_u(l_1748, ((l_1766 != (void*)0) , (65535UL ^ 65526UL)))) , l_1768);
            for (p_2740->g_457 = 2; (p_2740->g_457 >= 0); p_2740->g_457 -= 1)
            { /* block id: 845 */
                int32_t **l_1769 = &p_2740->g_793;
                (*l_1769) = &l_1768;
                return p_12;
            }
            (*p_2740->g_969) = (safe_unary_minus_func_int32_t_s(((safe_lshift_func_int8_t_s_u((8L & (((((safe_mul_func_uint16_t_u_u(((8L >= l_1748) && (l_1722 = (p_2740->g_124 |= (l_1768 = ((***l_1766) = FAKE_DIVERGE(p_2740->local_2_offset, get_local_id(2), 10)))))), (safe_add_func_uint8_t_u_u(((((((safe_mod_func_int64_t_s_s(0x66F3E47C4725B42BL, l_1748)) , (void*)0) == (void*)0) & ((l_1746 & p_13) | l_1780)) > p_12) & l_1691[2]), p_10)))) , &p_2740->g_185) == l_1781[6]) || 0x4EBFL) <= (*p_2740->g_1141))), GROUP_DIVERGE(0, 1))) , (*p_2740->g_626))));
        }
    }
    else
    { /* block id: 855 */
        int32_t *l_1782[3];
        int32_t **l_1783 = &p_2740->g_185;
        int64_t **l_1893 = (void*)0;
        int8_t l_1948 = 0x2DL;
        uint32_t l_1959 = 0x34AE3EBCL;
        int8_t ****l_1964 = &l_1931;
        int8_t ***l_1972 = &l_1932;
        uint8_t *l_1976 = &l_1691[1];
        uint32_t *l_1980 = &p_2740->g_97;
        uint32_t **l_1979 = &l_1980;
        uint64_t **l_1997 = (void*)0;
        union U0 l_2037 = {0x66D87DB79ABCFF49L};
        int32_t l_2069 = (-5L);
        int16_t **l_2087 = &p_2740->g_2038;
        uint16_t l_2090 = 65528UL;
        int32_t l_2099 = 0x160770FFL;
        int i;
        for (i = 0; i < 3; i++)
            l_1782[i] = &p_2740->g_99[4][1][1];
lbl_1798:
        (*l_1783) = l_1782[1];
        for (p_2740->g_629 = 0; (p_2740->g_629 <= 4); p_2740->g_629 += 1)
        { /* block id: 859 */
            int32_t l_1788 = 0x42304F0DL;
            int32_t l_1789[4][8][5] = {{{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L}},{{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L}},{{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L}},{{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L},{0x3166510DL,0x595AF446L,0x595AF446L,0x3166510DL,1L}}};
            uint32_t **l_1834 = &p_2740->g_459;
            int32_t l_1875 = (-8L);
            uint32_t *l_1901 = &p_2740->g_97;
            uint32_t **l_1900 = &l_1901;
            union U0 l_1902 = {18446744073709551615UL};
            int i, j, k;
            for (p_2740->g_514 = 0; (p_2740->g_514 >= 0); p_2740->g_514 -= 1)
            { /* block id: 862 */
                int32_t l_1784 = 0L;
                int32_t l_1785 = (-10L);
                int32_t l_1786 = 0x04B50375L;
                int32_t l_1787 = 0L;
                int32_t *l_1802 = &l_1789[2][3][2];
                int i;
                --l_1794;
                for (p_2740->g_457 = 0; (p_2740->g_457 >= 0); p_2740->g_457 -= 1)
                { /* block id: 866 */
                    int32_t *l_1797 = &l_1785;
                    for (p_2740->g_18 = 0; (p_2740->g_18 <= 0); p_2740->g_18 += 1)
                    { /* block id: 869 */
                        int i;
                        (*l_1783) = (p_10 , l_1782[(p_2740->g_18 + 1)]);
                        (*l_1783) = l_1782[p_2740->g_457];
                    }
                    for (p_2740->g_18 = 0; (p_2740->g_18 <= 0); p_2740->g_18 += 1)
                    { /* block id: 875 */
                        (*l_1783) = &l_1786;
                        (*l_1783) = &l_1790;
                    }
                    for (l_1791 = 0; (l_1791 <= 4); l_1791 += 1)
                    { /* block id: 881 */
                        uint8_t l_1799 = 0x80L;
                        (*l_1783) = l_1797;
                        if (p_2740->g_97)
                            goto lbl_1798;
                        --l_1799;
                        (*l_1783) = l_1802;
                    }
                }
            }
        }
        for (p_2740->g_380 = 0; (p_2740->g_380 > (-23)); p_2740->g_380 = safe_sub_func_int16_t_s_s(p_2740->g_380, 7))
        { /* block id: 941 */
            int64_t l_1925 = 1L;
            int32_t *l_1941 = &l_1790;
            int32_t l_1945 = 0x5688D87FL;
            int32_t l_1955 = (-1L);
            int32_t l_1956 = (-1L);
            int32_t l_1958 = 0x01D831E6L;
            uint8_t *l_1969 = &l_1691[2];
            union U0 l_1977 = {0x2DD409CA74F4FE58L};
            int16_t *l_2003 = &p_2740->g_380;
            union U0 ***l_2040[6] = {&p_2740->g_655,&p_2740->g_656,&p_2740->g_655,&p_2740->g_655,&p_2740->g_656,&p_2740->g_655};
            union U0 ****l_2039 = &l_2040[4];
            uint32_t l_2100 = 0xD515CC21L;
            int i;
            if ((safe_rshift_func_uint16_t_u_u(((+1L) ^ (safe_mod_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_2740->group_0_offset, get_group_id(0), 10), ((*l_1828) = 0UL))), (safe_sub_func_int64_t_s_s((safe_lshift_func_int16_t_s_u((safe_sub_func_int8_t_s_s((((safe_sub_func_uint16_t_u_u(p_13, ((++(*p_2740->g_459)) && ((*p_2740->g_1815) ^ ((safe_mul_func_uint8_t_u_u(((((l_1925 , l_1925) >= l_1925) | (l_1792 = ((*p_2740->g_459) = 0x5521D434L))) || ((**p_2740->g_619) , p_12)), 0x36L)) <= p_13))))) , l_1930) == (void*)0), l_1933[0])), 15)), 0L))))), 15)))
            { /* block id: 946 */
                for (p_2740->g_936 = 0; (p_2740->g_936 > 20); p_2740->g_936 = safe_add_func_uint8_t_u_u(p_2740->g_936, 3))
                { /* block id: 949 */
                    uint16_t l_1936 = 0x8907L;
                    l_1936--;
                    if (p_2740->g_629)
                        goto lbl_1798;
                }
                (*l_1828) = (safe_mod_func_uint8_t_u_u(p_10, (**p_2740->g_883)));
            }
            else
            { /* block id: 954 */
                int32_t *l_1942 = &l_1790;
                int32_t l_1947 = 8L;
                int32_t l_1950 = 0x2BC383A0L;
                int32_t l_1951[9][6][4] = {{{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L}},{{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L}},{{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L}},{{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L}},{{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L}},{{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L}},{{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L}},{{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L}},{{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L},{7L,0x76158AD9L,(-1L),0x0AE1FC73L}}};
                int i, j, k;
                l_1942 = l_1941;
                for (p_2740->g_120 = 0; (p_2740->g_120 == 25); p_2740->g_120 = safe_add_func_uint32_t_u_u(p_2740->g_120, 6))
                { /* block id: 958 */
                    int32_t l_1946[10];
                    int32_t l_1949 = (-9L);
                    int32_t l_1952 = 0x4FEDECF5L;
                    int i;
                    for (i = 0; i < 10; i++)
                        l_1946[i] = 8L;
                    l_1959++;
                }
                for (l_1925 = 0; (l_1925 != (-9)); --l_1925)
                { /* block id: 963 */
                    int8_t *****l_1965 = (void*)0;
                    int8_t *****l_1966 = &l_1964;
                    uint32_t *l_1973 = &l_1794;
                    (*l_1942) &= ((((*l_1828) = (&l_1931 == ((*l_1966) = l_1964))) != ((safe_add_func_uint16_t_u_u((l_1969 == (void*)0), ((0x11D7L && (safe_add_func_int8_t_s_s((((l_1977 , 0x895AL) , 0xB77CL) && p_13), l_1978))) < p_12))) , p_13)) , (-1L));
                    (*l_1828) = 0x7EF8089FL;
                    (*p_2740->g_969) = (l_1979 == (void*)0);
                    for (l_1945 = (-13); (l_1945 == 24); l_1945 = safe_add_func_uint8_t_u_u(l_1945, 7))
                    { /* block id: 972 */
                        (*l_1828) &= p_10;
                        if ((*p_2740->g_969))
                            continue;
                    }
                }
            }
            for (p_2740->g_514 = 0; (p_2740->g_514 != (-14)); p_2740->g_514 = safe_sub_func_uint8_t_u_u(p_2740->g_514, 5))
            { /* block id: 980 */
                int32_t l_2006 = 8L;
                int16_t *l_2036[9] = {&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121};
                union U0 l_2043 = {0xD906534CE701334AL};
                int32_t l_2060 = 0L;
                int8_t *l_2068 = &l_1948;
                int32_t l_2097 = (-2L);
                int32_t l_2098[7][2][9] = {{{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}}};
                int i, j, k;
                (1 + 1);
            }
        }
        (*l_1783) = (*l_2034);
    }
    for (p_2740->g_1295 = 0; (p_2740->g_1295 <= 4); p_2740->g_1295 += 1)
    { /* block id: 1047 */
        uint8_t l_2103[9] = {0xADL,1UL,0xADL,0xADL,1UL,0xADL,0xADL,1UL,0xADL};
        int32_t l_2106 = 0x0411B79DL;
        int32_t l_2107 = 0x6560A73FL;
        int8_t l_2108 = 0x02L;
        int32_t l_2109 = (-9L);
        int32_t l_2110 = 9L;
        int32_t l_2111 = 0x4DC41FD9L;
        int32_t l_2112 = 0x4F5AA05DL;
        int32_t l_2113 = 0x79531DEFL;
        int32_t l_2115 = 0x3BC1846EL;
        int32_t l_2116 = 1L;
        int32_t l_2117 = 0x1DBFA2F9L;
        int32_t l_2118 = 1L;
        int32_t l_2119 = 0x0A331708L;
        int32_t l_2120 = 0x3FDF2DC1L;
        int32_t l_2121[1];
        uint8_t *******l_2147[1][7][7] = {{{&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732},{&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732},{&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732},{&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732},{&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732},{&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732},{&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732,&l_1732}}};
        union U0 l_2150 = {0x7C478769263B3E49L};
        uint8_t l_2180 = 255UL;
        int8_t l_2185[3];
        uint32_t ****l_2216 = &p_2740->g_2155;
        uint64_t **l_2245[1];
        int32_t ***l_2248 = &p_2740->g_2187[9];
        uint32_t *l_2262 = &p_2740->g_97;
        int64_t l_2285 = 0x7DD93EADBCF66C92L;
        int64_t *l_2286 = &p_2740->g_386;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_2121[i] = 1L;
        for (i = 0; i < 3; i++)
            l_2185[i] = (-3L);
        for (i = 0; i < 1; i++)
            l_2245[i] = &p_2740->g_772;
        l_2103[5]--;
        l_2106 = 0x54E33A6CL;
        p_2740->g_2122[0][7][0]--;
        (**l_2034) &= l_2107;
        for (p_2740->g_514 = 4; (p_2740->g_514 >= 0); p_2740->g_514 -= 1)
        { /* block id: 1054 */
            uint32_t l_2135[10][7] = {{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL},{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL},{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL},{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL},{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL},{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL},{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL},{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL},{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL},{1UL,0UL,1UL,0UL,0x27851ED0L,1UL,0UL}};
            int64_t *l_2136 = &p_2740->g_362;
            uint8_t ***l_2148 = &p_2740->g_164;
            uint32_t ***l_2154 = &p_2740->g_458[7];
            uint32_t ****l_2153[5][8][6] = {{{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154}},{{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154}},{{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154}},{{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154}},{{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154},{(void*)0,&l_2154,&l_2154,(void*)0,&l_2154,&l_2154}}};
            int8_t l_2163[3][5][6] = {{{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)}},{{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)}},{{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)},{0x33L,0x33L,(-7L),(-1L),0x2CL,(-1L)}}};
            uint64_t ***l_2164 = (void*)0;
            int32_t l_2212 = 0x0546D85FL;
            uint8_t *l_2224 = &l_1691[0];
            int32_t l_2230 = 0x3BC850E0L;
            union U0 l_2244[8][6] = {{{0UL},{0UL},{0x38EC8A2884712A33L},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0x38EC8A2884712A33L},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0x38EC8A2884712A33L},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0x38EC8A2884712A33L},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0x38EC8A2884712A33L},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0x38EC8A2884712A33L},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0x38EC8A2884712A33L},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0x38EC8A2884712A33L},{0UL},{0UL},{0UL}}};
            int32_t l_2323 = 0x7034A106L;
            int i, j, k;
            (*l_1828) &= (safe_div_func_int64_t_s_s(((p_11 >= p_12) && ((safe_div_func_int8_t_s_s(l_2118, (**p_2740->g_883))) || ((+(safe_add_func_uint16_t_u_u((safe_div_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u((((*l_2136) = l_2135[7][2]) > (safe_sub_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u(((**l_2086) = 0x4A87L), (safe_div_func_int8_t_s_s(p_11, 0xD7L)))), p_11))), p_11)) , l_2117), p_13)), 1L))) & p_13))), l_2112));
            l_2109 &= (safe_sub_func_uint64_t_u_u(((*p_2740->g_772) = (safe_sub_func_int8_t_s_s((*p_2740->g_884), (**p_2740->g_883)))), (p_12 >= (((*p_2740->g_2038) &= (l_2147[0][3][2] != &p_2740->g_1243)) || (l_2148 != (p_2740->g_320[0] = l_2149[0][2][1]))))));
            if (((((l_2150 , ((safe_mod_func_uint64_t_u_u(l_2103[5], GROUP_DIVERGE(0, 1))) , p_10)) , (((l_2109 = ((*p_2740->g_2038) |= ((((((+(&p_2740->g_458[7] != (p_2740->g_2155 = &p_2740->g_458[7]))) && ((*l_2136) = p_12)) & l_2135[7][2]) != (safe_div_func_uint8_t_u_u((p_11 = (safe_rshift_func_uint16_t_u_u(((safe_add_func_int16_t_s_s((((**l_2034) = (((l_2113 = (l_2162 == (void*)0)) >= 6UL) || p_12)) ^ p_13), p_11)) , p_11), (*p_2740->g_1815)))), l_2103[4]))) <= 18446744073709551608UL) <= l_2163[0][1][3]))) & 0xC08DL) , l_2164)) == p_2740->g_2165) && (-2L)))
            { /* block id: 1069 */
                int64_t *l_2175 = &p_2740->g_362;
                int32_t l_2177 = 0x4F43482BL;
                for (l_2108 = 0; (l_2108 >= 0); l_2108 -= 1)
                { /* block id: 1072 */
                    union U0 l_2174 = {1UL};
                    uint16_t *l_2209 = &p_2740->g_682;
                    int32_t *l_2210 = &p_2740->g_930;
                    int i, j, k;
                    l_2121[l_2108] = (((safe_mod_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(p_2740->g_223[(l_2108 + 4)], (safe_div_func_int32_t_s_s((p_2740->g_99[(p_2740->g_1295 + 1)][p_2740->g_1295][(l_2108 + 7)] ^= (((safe_mul_func_uint16_t_u_u((l_2150 , (l_2174 , ((l_2121[l_2108] < (((l_2175 == p_2740->g_2176[0][2]) | l_2121[l_2108]) , (l_2177 , ((safe_add_func_uint8_t_u_u(0xE3L, l_2163[0][1][3])) >= l_2180)))) && p_11))), l_2177)) && 0x0CL) | p_11)), (*l_1828))))), l_2174.f0)) & l_2135[7][2]) & p_12);
                    (**l_2034) = ((safe_add_func_int64_t_s_s(0x213F65977C529044L, (((0xFC389E0AL | ((!GROUP_DIVERGE(1, 1)) != l_2111)) & (0x2CL != (safe_sub_func_int64_t_s_s(p_11, ((((l_2185[2] > ((p_2740->g_2186 = (GROUP_DIVERGE(0, 1) , p_2740->g_2186)) != &p_2740->g_792)) , ((*p_2740->g_772) , (*p_2740->g_1815))) && p_11) > p_11))))) == 0xCA3CFAA44792A7B3L))) , p_13);
                    l_2212 &= ((safe_add_func_int64_t_s_s((((safe_rshift_func_int16_t_s_s(((*p_2740->g_1815) & ((*p_2740->g_2038) >= ((safe_rshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_u((**p_2740->g_883), (FAKE_DIVERGE(p_2740->group_1_offset, get_group_id(1), 10) ^ (p_11 &= p_13)))), 2)) < (*l_1828)))), ((safe_mod_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s(0x827AL, (~(safe_mul_func_int8_t_s_s(((((*l_2210) = (((p_10 | ((safe_mod_func_uint16_t_u_u(((*l_2209) = (safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(((GROUP_DIVERGE(2, 1) != (&p_2740->g_2155 == l_2208)) > 0x7E71CC03L), 6)), l_2177))), FAKE_DIVERGE(p_2740->global_1_offset, get_global_id(1), 10))) <= 0x6E0FF88FC330AEBBL)) >= l_2177) | l_2163[0][0][0])) , (*p_2740->g_2038)) >= l_2121[l_2108]), l_2177))))), 5L)) < (*p_2740->g_884)))) || (*p_2740->g_884)) > p_12), l_2211)) && (**p_2740->g_883));
                    for (p_2740->g_1310 = 0; p_2740->g_1310 < 10; p_2740->g_1310 += 1)
                    {
                        p_2740->g_873[p_2740->g_1310] = 0x40C40D8DL;
                    }
                }
            }
            else
            { /* block id: 1083 */
                uint8_t l_2213 = 1UL;
                return l_2213;
            }
            if ((((safe_mul_func_int16_t_s_s((*p_2740->g_1141), GROUP_DIVERGE(0, 1))) , p_10) , (((l_2216 == l_2217) <= (safe_add_func_uint32_t_u_u(p_13, (safe_mul_func_uint16_t_u_u((((safe_mod_func_uint8_t_u_u((((l_2106 = p_13) <= ((l_2224 = &p_11) != &p_11)) & p_12), p_11)) ^ 0x6B9FL) > 0xDA87189EL), (*p_2740->g_1815)))))) >= p_10)))
            { /* block id: 1088 */
                uint32_t l_2225[3][9][3] = {{{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L}},{{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L}},{{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L},{0x43D3039AL,0xFD5CF70BL,0x03CBCB42L}}};
                int i, j, k;
                (*p_2740->g_969) ^= l_2135[7][5];
                (**l_2034) &= (((l_2225[0][2][2] || (**p_2740->g_883)) , p_13) == ((**l_2162) = (*p_2740->g_459)));
            }
            else
            { /* block id: 1092 */
                int8_t *l_2226 = &p_2740->g_701;
                int32_t l_2227 = 1L;
                int32_t l_2228 = 9L;
                int32_t l_2229 = 7L;
                uint32_t l_2231 = 0xE1A63A71L;
                l_2120 ^= (((**l_1931) = l_2226) != &l_2185[2]);
                --l_2231;
                (*l_1828) = 0x376DF177L;
                if (p_10)
                    break;
            }
            for (p_2740->g_120 = 0; (p_2740->g_120 <= 4); p_2740->g_120 += 1)
            { /* block id: 1101 */
                int8_t l_2234 = 0x6FL;
                uint64_t ***l_2243 = (void*)0;
                uint64_t **l_2247 = &p_2740->g_772;
                int32_t *l_2264 = &l_1793;
                uint8_t **l_2270 = &l_2224;
                int64_t l_2299[5][1] = {{0x28C40FE08873CDE5L},{0x28C40FE08873CDE5L},{0x28C40FE08873CDE5L},{0x28C40FE08873CDE5L},{0x28C40FE08873CDE5L}};
                int32_t l_2318[2];
                int i, j;
                for (i = 0; i < 2; i++)
                    l_2318[i] = 4L;
                for (p_2740->g_682 = 0; (p_2740->g_682 <= 4); p_2740->g_682 += 1)
                { /* block id: 1104 */
                    return l_2234;
                }
                for (p_2740->g_59 = 1; (p_2740->g_59 <= 4); p_2740->g_59 += 1)
                { /* block id: 1109 */
                    uint64_t ***l_2246 = &l_2245[0];
                    uint16_t l_2269 = 65535UL;
                    uint8_t **l_2271[6][6][2] = {{{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224}},{{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224}},{{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224}},{{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224}},{{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224}},{{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224},{&l_2224,&l_2224}}};
                    int8_t ***l_2293[4][9][1] = {{{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932}},{{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932}},{{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932}},{{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932},{&l_1932}}};
                    uint32_t *l_2317 = &l_2135[7][2];
                    int32_t l_2324 = 0x157EC87FL;
                    uint16_t l_2325 = 0xC1B3L;
                    int i, j, k;
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_2740->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 6)), permutations[(safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_2740->global_0_offset, get_global_id(0), 10), 10))][(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))]));
                    p_2740->g_99[(p_2740->g_1295 + 1)][p_2740->g_514][p_2740->g_1295] = p_11;
                    if (((*p_2740->g_969) <= (l_2234 & ((p_10 = ((((safe_div_func_int64_t_s_s(0x59EF8C94D68D3CEBL, (safe_mul_func_int8_t_s_s((*p_2740->g_884), (safe_rshift_func_uint16_t_u_u(((((--p_12) , p_2740->g_2165) == l_2243) ^ (p_11 || ((l_2244[6][4] , (((*l_2246) = l_2245[0]) == l_2247)) >= (*p_2740->g_2038)))), l_2121[0])))))) , p_11) , p_10) <= l_2230)) | p_13))))
                    { /* block id: 1117 */
                        if (l_2115)
                            break;
                        if (p_11)
                            continue;
                        if (l_2121[0])
                            break;
                        (*p_2740->g_969) = (((*p_2740->g_1815) , 65535UL) && (((l_2248 != &p_2740->g_2187[9]) >= ((safe_mul_func_uint16_t_u_u(9UL, ((safe_div_func_int32_t_s_s(0x22B8D20EL, (-8L))) < (*p_2740->g_772)))) || ((((((((safe_rshift_func_int8_t_s_u((-10L), 6)) >= p_10) , (void*)0) != (void*)0) , p_12) > p_12) | 0L) > (-6L)))) == p_12));
                    }
                    else
                    { /* block id: 1122 */
                        int32_t l_2263[3][2] = {{0x6C2A3C25L,0x5731839FL},{0x6C2A3C25L,0x5731839FL},{0x6C2A3C25L,0x5731839FL}};
                        int i, j, k;
                        (*l_1828) ^= (safe_lshift_func_int8_t_s_u((((*p_2740->g_1815) |= (safe_unary_minus_func_uint8_t_u((p_2740->g_99[(p_2740->g_1295 + 1)][p_2740->g_514][p_2740->g_1295] <= (safe_add_func_uint8_t_u_u(l_2212, (l_1828 != l_2262))))))) & l_2263[2][0]), 0));
                        l_2264 = (**l_2248);
                    }
                    if (((!(safe_rshift_func_uint16_t_u_s((((safe_mod_func_int16_t_s_s((((void*)0 != &l_1930) & ((*l_1828) = (((***l_1931) &= l_2269) >= ((l_2163[0][1][3] < ((((*l_2148) = l_2270) == l_2271[0][3][0]) | (((safe_mod_func_int32_t_s_s(((&p_11 == (*l_2270)) ^ (safe_lshift_func_uint8_t_u_s((((*p_2740->g_1815) = ((safe_unary_minus_func_uint32_t_u(((safe_div_func_int32_t_s_s((safe_mod_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_u(((safe_lshift_func_uint8_t_u_u(p_13, (**l_2034))) != p_2740->g_99[(p_2740->g_1295 + 1)][p_2740->g_514][p_2740->g_1295]), 0)) != p_10), p_13)), 0x255C0BEEL)) || (-5L)))) , p_10)) <= 0UL), 7))), 0x6B94CA93L)) & 4UL) , p_11))) || p_11)))), l_2285)) , (void*)0) != l_2286), 0))) , 0L))
                    { /* block id: 1131 */
                        uint32_t **l_2294 = &l_2262;
                        int32_t l_2298 = 1L;
                        (*l_1828) &= (~((safe_rshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_s((l_2269 ^ (safe_div_func_uint8_t_u_u(p_10, (~((l_2299[3][0] = (GROUP_DIVERGE(1, 1) > (((l_2293[2][0][0] != ((l_2294 != (void*)0) , p_2740->g_2295)) || (safe_sub_func_int8_t_s_s(0x69L, (p_10 ^ GROUP_DIVERGE(2, 1))))) & (l_2298 , p_10)))) , (***p_2740->g_2295)))))), 2)), p_10)) || (*p_2740->g_772)));
                    }
                    else
                    { /* block id: 1134 */
                        uint32_t l_2300 = 4294967295UL;
                        int32_t l_2321 = 1L;
                        int32_t l_2322[5] = {0x4F8D4325L,0x4F8D4325L,0x4F8D4325L,0x4F8D4325L,0x4F8D4325L};
                        int i;
                        (*l_1828) = 0x387CC211L;
                        ++l_2300;
                        (*p_2740->g_969) &= (p_2740->g_2319 = ((**l_2034) = ((safe_div_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((~p_11), p_11)), (safe_add_func_uint16_t_u_u((((l_2300 & (l_2318[0] ^= (safe_mul_func_uint8_t_u_u((p_12 || (safe_mod_func_int64_t_s_s(p_10, ((*p_2740->g_772) = (safe_sub_func_int8_t_s_s(p_11, (safe_rshift_func_uint8_t_u_s((l_2264 != l_2317), 4)))))))), (FAKE_DIVERGE(p_2740->group_1_offset, get_group_id(1), 10) ^ p_10))))) & 0x31BF1852L) == FAKE_DIVERGE(p_2740->global_1_offset, get_global_id(1), 10)), p_12)))) >= 0x28E878EF0DAF1D0DL)));
                        --l_2325;
                    }
                }
            }
        }
    }
    for (p_2740->g_517 = 8; (p_2740->g_517 <= 52); ++p_2740->g_517)
    { /* block id: 1150 */
        uint8_t l_2330 = 0x6FL;
        return l_2330;
    }
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_2740->g_792 p_2740->g_884 p_2740->g_701 p_2740->g_1140 p_2740->g_682 p_2740->g_793 p_2740->g_59 p_2740->g_476 p_2740->g_288 p_2740->g_185 p_2740->g_65 p_2740->g_1141 p_2740->g_121 p_2740->g_386
 * writes: p_2740->g_793 p_2740->g_682 p_2740->g_457 p_2740->g_386
 */
union U0  func_19(int8_t  p_20, uint8_t * p_21, struct S1 * p_2740)
{ /* block id: 546 */
    int32_t l_1132 = 0x5DAFEE0DL;
    uint16_t l_1133 = 7UL;
    int32_t **l_1148 = &p_2740->g_793;
    int32_t ***l_1147 = &l_1148;
    int32_t l_1203 = 0x42F9E0B2L;
    int32_t l_1205 = 0L;
    int32_t l_1206 = 9L;
    int32_t l_1208 = 0x4EB1CA95L;
    int32_t l_1215 = 0x6C3F52D1L;
    int32_t l_1217 = 0x509F6751L;
    int32_t l_1218 = 0x6FA47041L;
    int32_t l_1220 = 0x5350A1EDL;
    int32_t l_1222 = 1L;
    int8_t l_1285 = 0x07L;
    int16_t *l_1329 = &p_2740->g_380;
    int16_t **l_1328 = &l_1329;
    int32_t **l_1351 = (void*)0;
    uint8_t ****l_1353 = &p_2740->g_320[0];
    uint8_t *****l_1352 = &l_1353;
    int8_t l_1429 = 0x13L;
    uint8_t *******l_1471 = &p_2740->g_1243;
    int32_t l_1484 = 0x0914EEECL;
    int32_t l_1485 = 0x5F5345DCL;
    union U0 l_1492 = {0x32ADE8EC54FFF79CL};
    int8_t l_1515[9] = {9L,9L,9L,9L,9L,9L,9L,9L,9L};
    uint32_t **l_1541 = (void*)0;
    int32_t *l_1560[8][5] = {{&l_1484,&l_1208,&l_1484,&l_1484,&l_1208},{&l_1484,&l_1208,&l_1484,&l_1484,&l_1208},{&l_1484,&l_1208,&l_1484,&l_1484,&l_1208},{&l_1484,&l_1208,&l_1484,&l_1484,&l_1208},{&l_1484,&l_1208,&l_1484,&l_1484,&l_1208},{&l_1484,&l_1208,&l_1484,&l_1484,&l_1208},{&l_1484,&l_1208,&l_1484,&l_1484,&l_1208},{&l_1484,&l_1208,&l_1484,&l_1484,&l_1208}};
    int32_t l_1602 = (-7L);
    uint32_t *l_1651 = &p_2740->g_97;
    uint32_t **l_1650 = &l_1651;
    int32_t l_1670 = 0x18AEEE18L;
    int16_t l_1675 = 0x643AL;
    int i, j;
    if (l_1132)
    { /* block id: 547 */
        int32_t *l_1134[3];
        int32_t **l_1135[1][2];
        uint8_t *****l_1137 = (void*)0;
        uint8_t ******l_1136 = &l_1137;
        uint16_t *l_1144 = &p_2740->g_682;
        int i, j;
        for (i = 0; i < 3; i++)
            l_1134[i] = &p_2740->g_457;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
                l_1135[i][j] = &p_2740->g_793;
        }
        l_1132 = (l_1133 , l_1133);
        (*p_2740->g_792) = l_1134[1];
        l_1132 |= (((*p_2740->g_884) & ((l_1136 != ((safe_mod_func_int64_t_s_s(((p_2740->g_1140 != (void*)0) >= (safe_rshift_func_int8_t_s_s((((--(*l_1144)) < (l_1147 == (void*)0)) >= 1L), 0))), ((safe_mod_func_uint16_t_u_u(((***l_1147) = (safe_mul_func_int8_t_s_s(((0L && ((safe_rshift_func_int8_t_s_s(((0x6A34L >= 65535UL) | (-1L)), 4)) , 0UL)) == p_20), (*p_2740->g_884)))), p_2740->g_59)) & 0x099307D4L))) , &l_1137)) | p_2740->g_476[0][2])) != p_20);
        (*l_1148) = (*p_2740->g_288);
    }
    else
    { /* block id: 554 */
        int32_t l_1187 = 0x14E4A82CL;
        int32_t l_1199 = 0x3AEFAE05L;
        int32_t l_1204 = (-1L);
        int32_t l_1210 = 0x736249F1L;
        int32_t l_1211 = 2L;
        int32_t l_1216 = 0L;
        int32_t l_1219 = (-7L);
        int32_t l_1221 = 0x610D8401L;
        int32_t l_1223[7][8][4] = {{{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L}},{{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L}},{{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L}},{{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L}},{{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L}},{{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L}},{{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L},{0x26507A81L,0x4B8F6BC6L,0x6FE9E1AEL,1L}}};
        uint16_t l_1224 = 65535UL;
        int64_t *l_1241 = &p_2740->g_386;
        uint8_t l_1296 = 0xDBL;
        uint32_t l_1327 = 5UL;
        uint32_t l_1338 = 0xCF3ED417L;
        int32_t l_1354 = 0x39A6E262L;
        union U0 l_1474 = {0UL};
        int8_t l_1481 = 0x33L;
        int32_t l_1482 = 9L;
        int8_t **l_1549 = &p_2740->g_884;
        int8_t ***l_1548 = &l_1549;
        int8_t ****l_1547[4] = {&l_1548,&l_1548,&l_1548,&l_1548};
        uint32_t l_1552 = 0x603B544CL;
        uint8_t *l_1580 = &p_2740->g_629;
        uint8_t **l_1579 = &l_1580;
        int32_t l_1600 = (-5L);
        int32_t *l_1607[1][5] = {{&l_1205,&l_1205,&l_1205,&l_1205,&l_1205}};
        uint32_t **l_1652 = &l_1651;
        int i, j, k;
        (1 + 1);
    }
    for (l_1218 = (-24); (l_1218 < 3); ++l_1218)
    { /* block id: 790 */
        int32_t l_1665 = 0x30276843L;
        uint16_t *l_1668[4][1] = {{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682}};
        int32_t l_1669 = 0x3992E257L;
        int32_t l_1676[5][4] = {{0x3FE6F891L,0x2BB0A8DBL,0x2BB0A8DBL,0x3FE6F891L},{0x3FE6F891L,0x2BB0A8DBL,0x2BB0A8DBL,0x3FE6F891L},{0x3FE6F891L,0x2BB0A8DBL,0x2BB0A8DBL,0x3FE6F891L},{0x3FE6F891L,0x2BB0A8DBL,0x2BB0A8DBL,0x3FE6F891L},{0x3FE6F891L,0x2BB0A8DBL,0x2BB0A8DBL,0x3FE6F891L}};
        int32_t *l_1677 = (void*)0;
        int i, j;
        (*l_1148) = (*p_2740->g_792);
        l_1676[1][1] |= ((safe_rshift_func_uint8_t_u_u((((safe_mul_func_int8_t_s_s(((l_1665 == ((safe_mul_func_uint16_t_u_u((l_1669 = 65535UL), (l_1670 ^= (FAKE_DIVERGE(p_2740->group_0_offset, get_group_id(0), 10) , (0x46L <= (*p_21)))))) && GROUP_DIVERGE(1, 1))) != p_20), (safe_add_func_uint64_t_u_u(((safe_mul_func_int16_t_s_s((*p_2740->g_1141), 65535UL)) > (p_20 , l_1675)), 1UL)))) > (*p_21)) || 1L), (*p_21))) | (-5L));
        (**l_1147) = l_1677;
    }
    for (p_2740->g_386 = (-8); (p_2740->g_386 != (-10)); --p_2740->g_386)
    { /* block id: 799 */
        return l_1492;
    }
    return l_1492;
}


/* ------------------------------------------ */
/* 
 * reads : p_2740->g_65 p_2740->g_59 p_2740->g_16 p_2740->g_18 p_2740->g_comm_values p_2740->g_97 p_2740->g_99 p_2740->g_124 p_2740->g_120 p_2740->g_49 p_2740->g_121 p_2740->g_118 p_2740->g_164 p_2740->g_184 p_2740->g_191 p_2740->g_223 p_2740->l_comm_values p_2740->g_246 p_2740->g_185 p_2740->g_260 p_2740->g_288 p_2740->g_322 p_2740->g_380 p_2740->g_386 p_2740->g_435 p_2740->g_453 p_2740->g_457 p_2740->g_510 p_2740->g_517 p_2740->g_522 p_2740->g_459 p_2740->g_562 p_2740->g_476 p_2740->g_514 p_2740->g_619 p_2740->g_626 p_2740->g_621 p_2740->g_629 p_2740->g_362 p_2740->g_510.f0 p_2740->g_656 p_2740->g_969 p_2740->g_916 p_2740->g_793 p_2740->g_772
 * writes: p_2740->g_59 p_2740->g_16 p_2740->g_18 p_2740->g_97 p_2740->g_99 p_2740->g_124 p_2740->g_49 p_2740->g_191 p_2740->g_223 p_2740->g_120 p_2740->g_185 p_2740->g_118 p_2740->g_320 p_2740->g_322 p_2740->g_362 p_2740->g_121 p_2740->g_380 p_2740->g_386 p_2740->g_435 p_2740->g_458 p_2740->g_476 p_2740->g_517 p_2740->g_514 p_2740->g_560 p_2740->g_457 p_2740->g_637 p_2740->g_655 p_2740->g_656 p_2740->g_682 p_2740->g_916
 */
int8_t  func_22(int32_t  p_23, int16_t  p_24, uint32_t  p_25, struct S1 * p_2740)
{ /* block id: 11 */
    int8_t *l_513 = &p_2740->g_514;
    int8_t **l_515 = (void*)0;
    int8_t **l_516 = &l_513;
    int8_t *l_518[10] = {&p_2740->g_514,&p_2740->g_514,&p_2740->g_514,&p_2740->g_514,&p_2740->g_514,&p_2740->g_514,&p_2740->g_514,&p_2740->g_514,&p_2740->g_514,&p_2740->g_514};
    int32_t l_519[5];
    int32_t l_520 = 0x763EC314L;
    uint32_t *l_521 = &p_2740->g_59;
    uint64_t *l_1120 = &p_2740->g_124;
    int32_t *l_1121 = &p_2740->g_99[1][3][1];
    int32_t *l_1122 = &l_519[0];
    int32_t *l_1123 = &p_2740->g_99[1][1][4];
    int32_t *l_1124 = &l_520;
    int32_t *l_1125 = (void*)0;
    int32_t *l_1126 = &p_2740->g_457;
    int32_t *l_1127 = &p_2740->g_936;
    int32_t *l_1128[7] = {&p_2740->g_99[1][3][1],&p_2740->g_936,&p_2740->g_99[1][3][1],&p_2740->g_99[1][3][1],&p_2740->g_936,&p_2740->g_99[1][3][1],&p_2740->g_99[1][3][1]};
    uint8_t l_1129 = 246UL;
    int i;
    for (i = 0; i < 5; i++)
        l_519[i] = (-7L);
    (*p_2740->g_969) = (((*l_1120) = ((*p_2740->g_772) = func_66(p_23, func_69(func_73(p_2740->g_65, ((0x2D85L != (((func_79(&p_2740->g_59, p_2740) != (safe_add_func_int8_t_s_s((l_519[4] &= (p_2740->g_514 = (p_2740->g_510[3][0] , (safe_sub_func_int64_t_s_s((p_2740->g_517 |= (((*l_516) = l_513) != &p_2740->g_514)), (((-1L) < 249UL) >= p_2740->g_65)))))), 0L))) != p_24) != l_520)) , l_521), p_23, p_2740->g_522, l_518[7], p_2740), l_520, p_2740->g_comm_values[p_2740->tid], p_2740), p_2740))) , p_24);
    (*p_2740->g_793) |= 0x63CDE370L;
    ++l_1129;
    return p_24;
}


/* ------------------------------------------ */
/* 
 * reads : p_2740->g_510.f0 p_2740->g_656 p_2740->g_969 p_2740->g_916 p_2740->g_793 p_2740->g_772 p_2740->g_476
 * writes: p_2740->g_682 p_2740->g_121 p_2740->g_185 p_2740->g_560 p_2740->g_99
 */
uint64_t  func_66(uint32_t  p_67, union U0  p_68, struct S1 * p_2740)
{ /* block id: 530 */
    uint64_t l_1101[4] = {0x31378405CAD1F1FAL,0x31378405CAD1F1FAL,0x31378405CAD1F1FAL,0x31378405CAD1F1FAL};
    uint16_t *l_1114[8][8][1] = {{{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682}},{{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682}},{{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682}},{{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682}},{{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682}},{{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682}},{{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682}},{{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682},{&p_2740->g_682}}};
    int32_t l_1115 = 3L;
    int32_t l_1116[10];
    int16_t *l_1117 = (void*)0;
    int32_t l_1118[9][10] = {{0x54FEE4DBL,0x54FEE4DBL,9L,(-1L),(-5L),(-1L),9L,0x54FEE4DBL,0x54FEE4DBL,9L},{0x54FEE4DBL,0x54FEE4DBL,9L,(-1L),(-5L),(-1L),9L,0x54FEE4DBL,0x54FEE4DBL,9L},{0x54FEE4DBL,0x54FEE4DBL,9L,(-1L),(-5L),(-1L),9L,0x54FEE4DBL,0x54FEE4DBL,9L},{0x54FEE4DBL,0x54FEE4DBL,9L,(-1L),(-5L),(-1L),9L,0x54FEE4DBL,0x54FEE4DBL,9L},{0x54FEE4DBL,0x54FEE4DBL,9L,(-1L),(-5L),(-1L),9L,0x54FEE4DBL,0x54FEE4DBL,9L},{0x54FEE4DBL,0x54FEE4DBL,9L,(-1L),(-5L),(-1L),9L,0x54FEE4DBL,0x54FEE4DBL,9L},{0x54FEE4DBL,0x54FEE4DBL,9L,(-1L),(-5L),(-1L),9L,0x54FEE4DBL,0x54FEE4DBL,9L},{0x54FEE4DBL,0x54FEE4DBL,9L,(-1L),(-5L),(-1L),9L,0x54FEE4DBL,0x54FEE4DBL,9L},{0x54FEE4DBL,0x54FEE4DBL,9L,(-1L),(-5L),(-1L),9L,0x54FEE4DBL,0x54FEE4DBL,9L}};
    int32_t **l_1119 = &p_2740->g_185;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_1116[i] = 6L;
    (*l_1119) = ((safe_mod_func_uint16_t_u_u((l_1101[2] == (p_2740->g_510[3][0].f0 | (safe_mod_func_uint64_t_u_u((((safe_lshift_func_uint8_t_u_u((l_1118[4][4] = (((safe_rshift_func_uint16_t_u_s(0UL, (p_2740->g_121 = ((safe_rshift_func_int16_t_s_u((safe_sub_func_int8_t_s_s(l_1101[2], ((void*)0 != &p_2740->g_362))), 12)) == (l_1116[5] ^= (l_1115 ^= (l_1101[2] >= (p_68.f0 , (safe_mul_func_uint16_t_u_u((p_2740->g_682 = (p_67 <= GROUP_DIVERGE(2, 1))), p_68.f0)))))))))) >= l_1101[2]) , GROUP_DIVERGE(2, 1))), 4)) , l_1101[1]) , l_1115), p_68.f0)))), l_1101[1])) , (void*)0);
    (*p_2740->g_656) = &p_68;
    (*p_2740->g_793) = (*p_2740->g_969);
    return (*p_2740->g_772);
}


/* ------------------------------------------ */
/* 
 * reads : p_2740->g_185 p_2740->g_191 p_2740->g_514 p_2740->g_121 p_2740->g_223 p_2740->g_59 p_2740->g_99 p_2740->g_510 p_2740->g_120 p_2740->g_362 p_2740->g_184 p_2740->g_124 p_2740->g_476 p_2740->g_386 p_2740->g_562 p_2740->g_288 p_2740->g_322 p_2740->g_457 p_2740->g_459 p_2740->g_517
 * writes: p_2740->g_59 p_2740->g_99 p_2740->g_191 p_2740->g_514 p_2740->g_121 p_2740->g_120 p_2740->g_362 p_2740->g_655 p_2740->g_656 p_2740->g_476 p_2740->g_49 p_2740->g_682 p_2740->g_322 p_2740->g_457 p_2740->g_380
 */
union U0  func_69(uint32_t  p_70, uint8_t  p_71, int32_t  p_72, struct S1 * p_2740)
{ /* block id: 308 */
    int32_t *l_646 = (void*)0;
    int64_t l_668 = 0x3429E6664E678AFBL;
    int32_t l_686 = 8L;
    int32_t l_695[3];
    uint32_t l_702 = 0UL;
    uint16_t *l_709 = &p_2740->g_682;
    uint8_t *****l_716 = (void*)0;
    uint8_t ******l_717 = &l_716;
    uint8_t *****l_718 = (void*)0;
    uint32_t l_723 = 4294967294UL;
    uint8_t *l_724 = (void*)0;
    uint8_t *l_725 = &p_2740->g_322;
    int32_t *l_726 = &l_695[2];
    uint8_t l_741 = 250UL;
    int8_t l_790 = 0x38L;
    uint64_t **l_811[4][9] = {{&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772},{&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772},{&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772},{&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772,&p_2740->g_772}};
    union U0 l_823 = {0xB4326D363BBF2E91L};
    union U0 l_835 = {1UL};
    uint16_t l_900 = 0x6080L;
    uint16_t l_965 = 1UL;
    uint8_t l_972 = 250UL;
    int16_t l_981 = 0x289DL;
    uint16_t l_1047[4][2][3] = {{{0x35A0L,0x1A42L,0x1A42L},{0x35A0L,0x1A42L,0x1A42L}},{{0x35A0L,0x1A42L,0x1A42L},{0x35A0L,0x1A42L,0x1A42L}},{{0x35A0L,0x1A42L,0x1A42L},{0x35A0L,0x1A42L,0x1A42L}},{{0x35A0L,0x1A42L,0x1A42L},{0x35A0L,0x1A42L,0x1A42L}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_695[i] = 0x665E15EFL;
    if (((*p_2740->g_185) = (safe_add_func_int16_t_s_s(1L, p_70))))
    { /* block id: 310 */
        int64_t l_647 = 0L;
        uint16_t *l_681 = &p_2740->g_682;
        union U0 ***l_683 = &p_2740->g_656;
        union U0 ****l_684 = &l_683;
        for (p_2740->g_191 = 25; (p_2740->g_191 >= (-17)); p_2740->g_191 = safe_sub_func_uint8_t_u_u(p_2740->g_191, 9))
        { /* block id: 313 */
            int16_t l_643 = 0x40E6L;
            uint16_t l_678 = 0UL;
            if (p_70)
                break;
            if (l_643)
                break;
            for (p_72 = 6; (p_72 >= 2); p_72 -= 1)
            { /* block id: 318 */
                int32_t *l_645 = &p_2740->g_99[1][3][1];
                for (p_2740->g_514 = 0; (p_2740->g_514 <= 4); p_2740->g_514 += 1)
                { /* block id: 321 */
                    int64_t l_644 = 0x69B1E0D65594852BL;
                    int i, j;
                    for (p_2740->g_121 = 0; (p_2740->g_121 <= 4); p_2740->g_121 += 1)
                    { /* block id: 324 */
                        int i;
                        (*p_2740->g_185) ^= (GROUP_DIVERGE(1, 1) < p_2740->g_223[p_2740->g_121]);
                        if (l_644)
                            continue;
                        l_646 = l_645;
                    }
                    return p_2740->g_510[p_2740->g_514][p_2740->g_514];
                }
                for (p_2740->g_120 = 0; (p_2740->g_120 <= 7); p_2740->g_120 += 1)
                { /* block id: 333 */
                    uint32_t l_648 = 0xDC917392L;
                    union U0 **l_653 = &p_2740->g_560;
                    union U0 **l_657[1][4];
                    int32_t l_658 = 0x6C12BF9DL;
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_657[i][j] = &p_2740->g_560;
                    }
                    for (p_2740->g_362 = 0; (p_2740->g_362 <= 7); p_2740->g_362 += 1)
                    { /* block id: 336 */
                        int16_t *l_649 = &l_643;
                        int32_t l_650 = (-1L);
                        union U0 ***l_654[2];
                        uint64_t *l_667 = &p_2740->g_476[0][2];
                        int32_t *l_669 = &p_2740->g_99[1][2][0];
                        int32_t *l_670 = (void*)0;
                        int32_t *l_671 = &p_2740->g_99[1][3][1];
                        int32_t *l_672 = &p_2740->g_99[1][3][1];
                        int32_t *l_673 = &p_2740->g_457;
                        int32_t *l_674 = &p_2740->g_99[4][1][0];
                        int32_t *l_675 = (void*)0;
                        int32_t *l_676 = &p_2740->g_99[1][3][1];
                        int32_t *l_677[3];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_654[i] = &l_653;
                        for (i = 0; i < 3; i++)
                            l_677[i] = &p_2740->g_99[1][3][1];
                        (**p_2740->g_184) |= ((+((*l_649) = (l_648 ^= l_647))) | (((&p_2740->g_121 != (void*)0) | l_650) ^ (((p_71 = ((safe_sub_func_int8_t_s_s(p_72, (p_71 , 8L))) != (((l_653 = (p_2740->g_655 = l_653)) != (l_657[0][1] = (p_2740->g_656 = &p_2740->g_560))) , 0xC19208FCL))) & 0L) && l_658)));
                        l_650 = ((safe_mod_func_uint64_t_u_u((p_71 < ((safe_add_func_uint32_t_u_u(0x199D34ECL, (l_648 , 6L))) & (p_2740->g_124 < ((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_2740->global_2_offset, get_global_id(2), 10), (l_647 & (safe_lshift_func_int8_t_s_u((p_2740->g_223[0] , ((p_2740->g_49 = ((*l_667) |= (((*l_645) == p_2740->g_223[0]) , 0x441CB8131122F08EL))) ^ p_2740->g_386)), 1))))) , 0x123F4C71A94523FAL)))), p_2740->g_120)) && (**p_2740->g_562));
                        if ((**p_2740->g_288))
                            continue;
                        ++l_678;
                    }
                }
            }
        }
        (*p_2740->g_185) |= ((0x1FF6L >= (l_668 >= (((*l_681) = p_2740->g_223[1]) >= (((*l_684) = l_683) != &p_2740->g_655)))) , 0x2EE732E6L);
    }
    else
    { /* block id: 357 */
        int32_t *l_685 = &p_2740->g_457;
        int32_t *l_687 = &p_2740->g_99[5][1][5];
        int32_t *l_688 = &p_2740->g_99[5][2][1];
        int32_t *l_689 = &p_2740->g_457;
        int32_t *l_690 = &p_2740->g_457;
        int32_t l_691 = 4L;
        int32_t *l_692 = &p_2740->g_99[3][3][3];
        int32_t *l_693 = &l_691;
        int32_t *l_694 = &p_2740->g_99[5][3][7];
        int32_t *l_696 = &p_2740->g_99[4][1][1];
        int32_t *l_697 = (void*)0;
        int32_t l_698 = 0x586DC7B4L;
        int32_t *l_699[3];
        int16_t l_700 = 0x4775L;
        int i;
        for (i = 0; i < 3; i++)
            l_699[i] = (void*)0;
        (*p_2740->g_185) = 0x2C5C3202L;
        ++l_702;
    }
    (*l_726) |= ((safe_lshift_func_int16_t_s_s(0x238BL, 8)) , (safe_add_func_int32_t_s_s((**p_2740->g_288), ((((*l_725) = (((0x16E8C530C30861E0L >= 18446744073709551609UL) , ((void*)0 != l_709)) != (safe_rshift_func_int16_t_s_s(((safe_mod_func_int32_t_s_s((safe_mul_func_int16_t_s_s(((l_718 = ((*l_717) = l_716)) != (void*)0), (safe_add_func_uint8_t_u_u(((((safe_sub_func_uint16_t_u_u((((*l_709) = p_2740->g_121) ^ 0x902DL), p_2740->g_322)) & 0UL) && p_2740->g_457) == l_668), l_723)))), (*p_2740->g_459))) >= p_70), 12)))) && 0x7BL) < p_71))));
    for (p_2740->g_457 = 19; (p_2740->g_457 < (-2)); --p_2740->g_457)
    { /* block id: 368 */
        int16_t l_733 = 0x07DDL;
        int16_t *l_740 = &p_2740->g_380;
        int32_t *l_742 = &l_686;
        uint32_t *l_753 = &p_2740->g_97;
        uint32_t **l_752 = &l_753;
        int8_t *l_767 = &p_2740->g_120;
        int32_t l_822 = 0x357E075FL;
        union U0 l_836[5][1][7] = {{{{18446744073709551615UL},{0xABAB70C000D67ECAL},{0xABAB70C000D67ECAL},{18446744073709551615UL},{0x381CFE884469CB81L},{0x600C74CE4A68CD23L},{0x600C74CE4A68CD23L}}},{{{18446744073709551615UL},{0xABAB70C000D67ECAL},{0xABAB70C000D67ECAL},{18446744073709551615UL},{0x381CFE884469CB81L},{0x600C74CE4A68CD23L},{0x600C74CE4A68CD23L}}},{{{18446744073709551615UL},{0xABAB70C000D67ECAL},{0xABAB70C000D67ECAL},{18446744073709551615UL},{0x381CFE884469CB81L},{0x600C74CE4A68CD23L},{0x600C74CE4A68CD23L}}},{{{18446744073709551615UL},{0xABAB70C000D67ECAL},{0xABAB70C000D67ECAL},{18446744073709551615UL},{0x381CFE884469CB81L},{0x600C74CE4A68CD23L},{0x600C74CE4A68CD23L}}},{{{18446744073709551615UL},{0xABAB70C000D67ECAL},{0xABAB70C000D67ECAL},{18446744073709551615UL},{0x381CFE884469CB81L},{0x600C74CE4A68CD23L},{0x600C74CE4A68CD23L}}}};
        int64_t *l_837[3][7] = {{&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386},{&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386},{&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386,&p_2740->g_386}};
        uint8_t **l_975 = &l_725;
        uint8_t **l_983 = &l_724;
        uint8_t ***l_982 = &l_983;
        uint32_t l_998 = 1UL;
        int32_t l_1043 = (-1L);
        int32_t l_1044 = (-5L);
        int32_t l_1095 = 0L;
        int i, j, k;
        (*p_2740->g_185) = (p_2740->g_517 != (((*p_2740->g_288) == &p_2740->g_457) && (safe_rshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s(l_733, ((safe_add_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((*p_2740->g_459), (((safe_mul_func_uint16_t_u_u(p_2740->g_457, ((*l_740) = p_2740->g_223[1]))) && (l_733 , l_733)) >= (*p_2740->g_185)))), p_70)) , l_741))), 4))));
    }
    return l_823;
}


/* ------------------------------------------ */
/* 
 * reads : p_2740->g_185 p_2740->g_459 p_2740->g_97 p_2740->g_comm_values p_2740->g_99 p_2740->g_59 p_2740->g_184 p_2740->g_124 p_2740->g_65 p_2740->l_comm_values p_2740->g_562 p_2740->g_49 p_2740->g_517 p_2740->g_476 p_2740->g_514 p_2740->g_16 p_2740->g_619 p_2740->g_288 p_2740->g_626 p_2740->g_621 p_2740->g_629 p_2740->g_386
 * writes: p_2740->g_59 p_2740->g_99 p_2740->g_435 p_2740->g_120 p_2740->g_121 p_2740->g_560 p_2740->g_185 p_2740->g_49 p_2740->g_517 p_2740->g_514 p_2740->g_97 p_2740->g_457 p_2740->g_637
 */
uint32_t  func_73(int32_t  p_74, uint32_t * p_75, int8_t  p_76, int64_t * p_77, uint8_t * p_78, struct S1 * p_2740)
{ /* block id: 240 */
    int64_t l_523 = 0x0C07224B889EF809L;
    uint32_t *l_524 = &p_2740->g_97;
    uint8_t l_527[8][4][6] = {{{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L}},{{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L}},{{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L}},{{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L}},{{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L}},{{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L}},{{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L}},{{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L},{255UL,2UL,0xD4L,0xD3L,0xC9L,0xC9L}}};
    uint64_t *l_533 = &p_2740->g_476[0][1];
    int64_t **l_561 = &p_2740->g_522;
    int32_t l_574 = 0x5AE5FD19L;
    int32_t l_604 = 0x13C7BF6AL;
    int32_t l_606[3];
    int8_t l_625 = 0x0BL;
    int32_t *l_630 = &p_2740->g_457;
    int16_t *l_633[8][2][9] = {{{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121},{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121}},{{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121},{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121}},{{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121},{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121}},{{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121},{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121}},{{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121},{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121}},{{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121},{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121}},{{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121},{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121}},{{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121},{&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121,&p_2740->g_380,&p_2740->g_380,&p_2740->g_121,&p_2740->g_121,&p_2740->g_121}}};
    uint32_t ***l_636 = (void*)0;
    int32_t *l_638 = &l_604;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_606[i] = 0x34B35848L;
    if (((*p_2740->g_185) = (&p_76 == (l_523 , &p_2740->g_514))))
    { /* block id: 242 */
        int32_t l_530 = 0x6152829EL;
        int64_t *l_534 = &p_2740->g_435;
        uint64_t l_535 = 0x5E64B7DCB4638740L;
        union U0 *l_559 = &p_2740->g_510[1][0];
        union U0 **l_558[3][1];
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_558[i][j] = &l_559;
        }
        if ((((((((void*)0 == l_524) == (((((((((safe_div_func_uint32_t_u_u(((*p_2740->g_459) = (4294967295UL != l_527[4][1][3])), ((safe_sub_func_int16_t_s_s(l_530, p_2740->g_97)) , (safe_mod_func_uint16_t_u_u(((l_530 == (l_527[5][0][4] || ((((*l_534) = (l_533 != (void*)0)) , 0x6DDDCC6BL) ^ l_523))) <= 0x1CL), 0x2730L))))) <= (-2L)) <= l_535) >= GROUP_DIVERGE(0, 1)) == p_2740->g_comm_values[p_2740->tid]) , 4294967295UL) , p_76) <= 4294967287UL) < l_523)) & l_530) , 0x67L) >= p_2740->g_99[3][1][3]) && 0x39A9L))
        { /* block id: 245 */
            return l_527[4][1][3];
        }
        else
        { /* block id: 247 */
            int64_t l_553 = (-1L);
            int8_t *l_554 = &p_2740->g_120;
            uint16_t *l_555 = (void*)0;
            int16_t *l_556 = &p_2740->g_121;
            int32_t *l_557 = &p_2740->g_99[1][3][1];
            (*l_557) ^= (safe_add_func_int32_t_s_s((l_523 ^ (safe_lshift_func_int16_t_s_s(((*l_556) = (safe_unary_minus_func_uint16_t_u((l_530 = (safe_add_func_int8_t_s_s((safe_mod_func_int8_t_s_s(((*l_554) = (0x242331B6L <= ((*p_75) , (((safe_lshift_func_uint16_t_u_s((((safe_mul_func_int16_t_s_s((l_524 != (*p_2740->g_184)), ((safe_lshift_func_uint16_t_u_u((0x5F2CL || l_530), 4)) > ((safe_div_func_uint32_t_u_u(l_530, (l_553 | p_76))) && p_2740->g_124)))) < p_2740->g_65) || 0UL), 0)) < 1UL) > (*p_75))))), 7L)), p_2740->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))])))))), 4))), p_76));
        }
        p_2740->g_560 = &p_2740->g_510[2][4];
    }
    else
    { /* block id: 254 */
        int32_t *l_564 = &p_2740->g_457;
        if ((l_561 != &p_2740->g_522))
        { /* block id: 255 */
            (*p_2740->g_562) = p_75;
        }
        else
        { /* block id: 257 */
            int32_t **l_563 = &p_2740->g_185;
            int32_t l_569 = 0x1C5040C9L;
            uint16_t l_581[8][3][8] = {{{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL}},{{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL}},{{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL}},{{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL}},{{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL}},{{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL}},{{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL}},{{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL},{65530UL,0x0204L,0x080DL,65530UL,1UL,65528UL,65528UL,1UL}}};
            int32_t l_607[10][6][4] = {{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}},{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}},{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}},{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}},{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}},{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}},{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}},{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}},{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}},{{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L},{0x270AC426L,0x6DF4D43BL,(-1L),0L}}};
            uint64_t l_609 = 0x7B420C86B98067A6L;
            int i, j, k;
            l_564 = ((*l_563) = (p_74 , p_75));
            for (p_2740->g_49 = 0; (p_2740->g_49 < 40); ++p_2740->g_49)
            { /* block id: 262 */
                uint64_t l_576 = 18446744073709551615UL;
                int8_t *l_587 = &p_2740->g_120;
                int8_t **l_586 = &l_587;
                uint32_t **l_588 = &l_524;
                int32_t l_602 = (-4L);
                for (p_2740->g_517 = 17; (p_2740->g_517 > 40); p_2740->g_517 = safe_add_func_uint32_t_u_u(p_2740->g_517, 6))
                { /* block id: 265 */
                    uint32_t **l_589 = &l_524;
                    int32_t l_601 = 0x3DABBFB5L;
                    int32_t l_605 = 0x4C0141ADL;
                    int32_t l_608 = 0x7F1683DEL;
                    for (p_2740->g_59 = 0; (p_2740->g_59 <= 3); p_2740->g_59 += 1)
                    { /* block id: 268 */
                        int32_t *l_570 = &p_2740->g_99[3][0][6];
                        int32_t *l_571 = &p_2740->g_457;
                        int32_t *l_572 = &p_2740->g_99[1][3][1];
                        int32_t *l_573 = &l_569;
                        int32_t *l_575 = (void*)0;
                        ++l_576;
                        (*l_563) = (*l_563);
                        if (p_76)
                            continue;
                    }
                    if (p_76)
                    { /* block id: 273 */
                        if ((*p_2740->g_185))
                            break;
                        if ((**p_2740->g_184))
                            continue;
                    }
                    else
                    { /* block id: 276 */
                        uint16_t l_594 = 7UL;
                        int32_t l_595 = 0x3CEBF29FL;
                        int32_t *l_596 = &l_574;
                        (*l_596) ^= (safe_lshift_func_int16_t_s_s(((l_581[4][2][5] >= (safe_add_func_uint32_t_u_u((safe_add_func_uint8_t_u_u(((1UL < (((((0xACEA2326L <= ((void*)0 != l_586)) | (((l_588 == l_589) < l_576) > (safe_rshift_func_uint8_t_u_s((((safe_sub_func_int64_t_s_s(p_2740->g_476[0][2], l_594)) > l_595) , (*p_78)), 7)))) != l_594) ^ (**l_563)) , 1UL)) & 0x15204567D09328D4L), p_74)), l_576))) & 0x46L), p_2740->g_16));
                        (*l_563) = (*p_2740->g_562);
                    }
                    for (p_2740->g_514 = 0; (p_2740->g_514 < (-7)); p_2740->g_514 = safe_sub_func_int64_t_s_s(p_2740->g_514, 8))
                    { /* block id: 282 */
                        int32_t *l_599 = &p_2740->g_99[3][4][3];
                        int32_t *l_600[10][1][9] = {{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}},{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}},{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}},{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}},{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}},{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}},{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}},{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}},{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}},{{(void*)0,&p_2740->g_457,(void*)0,&p_2740->g_99[4][4][1],&p_2740->g_457,&p_2740->g_99[4][4][1],(void*)0,&p_2740->g_457,(void*)0}}};
                        int16_t l_603 = (-10L);
                        uint32_t l_618 = 4294967289UL;
                        int16_t l_624 = 0L;
                        int i, j, k;
                        l_609--;
                        if ((*l_564))
                            continue;
                        l_605 ^= ((l_606[2] >= (((**l_589) ^= (safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s((((((*l_599) == l_618) <= (!(p_2740->g_619 == &p_2740->g_620[1]))) != ((safe_rshift_func_int16_t_s_s((-6L), l_624)) & (*p_78))) || 0UL), p_76)), 6))) , l_576)) , (**p_2740->g_184));
                        l_606[0] = (**p_2740->g_288);
                    }
                }
            }
            (*p_2740->g_185) |= l_625;
            (*p_2740->g_626) ^= (**l_563);
        }
        for (l_604 = 17; (l_604 == 7); l_604 = safe_sub_func_uint8_t_u_u(l_604, 7))
        { /* block id: 296 */
            return p_2740->g_621;
        }
        (*l_564) = (**p_2740->g_184);
    }
    (*l_630) = ((*p_2740->g_185) = p_2740->g_629);
    (*l_638) |= ((*p_2740->g_185) = ((0x204EL == p_2740->g_386) || (((safe_lshift_func_int16_t_s_s(((((*l_630) = (((((void*)0 != &l_524) | (((void*)0 != l_633[2][1][7]) , (safe_div_func_int64_t_s_s((((p_2740->g_637 = &l_524) == &l_524) & 0x6A132BF30B224D2DL), 0x647330CA36F0D4BDL)))) > p_74) & p_74)) , p_2740->g_65) , (-6L)), 5)) , (*p_75)) == 0x4A8782D8L)));
    return p_76;
}


/* ------------------------------------------ */
/* 
 * reads : p_2740->g_16 p_2740->g_65 p_2740->g_comm_values p_2740->g_59 p_2740->g_99 p_2740->g_18 p_2740->g_124 p_2740->g_120 p_2740->g_49 p_2740->g_121 p_2740->g_118 p_2740->g_164 p_2740->g_184 p_2740->g_191 p_2740->g_223 p_2740->l_comm_values p_2740->g_246 p_2740->g_185 p_2740->g_260 p_2740->g_288 p_2740->g_97 p_2740->g_322 p_2740->g_380 p_2740->g_386 p_2740->g_435 p_2740->g_453 p_2740->g_457
 * writes: p_2740->g_59 p_2740->g_16 p_2740->g_18 p_2740->g_97 p_2740->g_99 p_2740->g_124 p_2740->g_49 p_2740->g_191 p_2740->g_223 p_2740->g_320 p_2740->g_120 p_2740->g_185 p_2740->g_118 p_2740->g_322 p_2740->g_362 p_2740->g_121 p_2740->g_380 p_2740->g_386 p_2740->g_435 p_2740->g_458 p_2740->g_476
 */
int8_t  func_79(uint32_t * p_80, struct S1 * p_2740)
{ /* block id: 12 */
    int16_t l_95 = 0x3588L;
    int32_t l_110 = 0x4D5B4F6FL;
    int32_t l_122 = 0x2BDE1DBEL;
    int32_t l_123 = 0x25BE4CFFL;
    uint8_t *l_169[8][6] = {{&p_2740->g_18,&p_2740->g_65,&p_2740->g_65,(void*)0,&p_2740->g_65,&p_2740->g_65},{&p_2740->g_18,&p_2740->g_65,&p_2740->g_65,(void*)0,&p_2740->g_65,&p_2740->g_65},{&p_2740->g_18,&p_2740->g_65,&p_2740->g_65,(void*)0,&p_2740->g_65,&p_2740->g_65},{&p_2740->g_18,&p_2740->g_65,&p_2740->g_65,(void*)0,&p_2740->g_65,&p_2740->g_65},{&p_2740->g_18,&p_2740->g_65,&p_2740->g_65,(void*)0,&p_2740->g_65,&p_2740->g_65},{&p_2740->g_18,&p_2740->g_65,&p_2740->g_65,(void*)0,&p_2740->g_65,&p_2740->g_65},{&p_2740->g_18,&p_2740->g_65,&p_2740->g_65,(void*)0,&p_2740->g_65,&p_2740->g_65},{&p_2740->g_18,&p_2740->g_65,&p_2740->g_65,(void*)0,&p_2740->g_65,&p_2740->g_65}};
    uint8_t **l_168 = &l_169[3][5];
    int32_t l_197 = 0x3EDBEB42L;
    int32_t l_200 = 0x7D3FCBE2L;
    int32_t l_201 = 0L;
    int16_t l_202 = (-2L);
    int32_t l_203 = 0x41575F16L;
    int32_t l_207 = 0L;
    int32_t l_208 = 0x2DA57ACDL;
    int32_t l_209 = 0x38553062L;
    int32_t l_210[2][9][5] = {{{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L}},{{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L},{(-1L),(-6L),0x4A6850D6L,(-1L),0x013976E8L}}};
    uint16_t l_211 = 0x676EL;
    uint32_t l_234 = 0xF69CBD4EL;
    uint8_t ***l_243 = &p_2740->g_164;
    uint8_t ****l_242 = &l_243;
    uint32_t *l_255 = (void*)0;
    uint32_t *l_256[9][4][7] = {{{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}},{{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59},{&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,&p_2740->g_59,(void*)0,&p_2740->g_59,&p_2740->g_59}}};
    uint8_t l_257 = 0xEAL;
    int32_t **l_292[2][7][10] = {{{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185}},{{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185},{(void*)0,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,&p_2740->g_185,(void*)0,(void*)0,&p_2740->g_185}}};
    uint16_t l_306[7] = {0xED4CL,0xC0B0L,0xED4CL,0xED4CL,0xC0B0L,0xED4CL,0xED4CL};
    int64_t **l_314 = (void*)0;
    uint64_t l_328 = 0x49729E21BC243568L;
    int8_t l_336[1][9] = {{0x18L,0x18L,0x18L,0x18L,0x18L,0x18L,0x18L,0x18L,0x18L}};
    int64_t l_353 = 0x38160F2ACB0AA02AL;
    int32_t **l_389 = &p_2740->g_185;
    uint16_t l_399 = 1UL;
    int16_t l_462 = 0x4838L;
    uint32_t l_488[3][4];
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
            l_488[i][j] = 0xC11F58ACL;
    }
lbl_401:
    for (p_2740->g_59 = (-15); (p_2740->g_59 < 26); p_2740->g_59 = safe_add_func_uint8_t_u_u(p_2740->g_59, 1))
    { /* block id: 15 */
        uint32_t l_83 = 1UL;
        int64_t l_84[7] = {0x516E9DE470D16AAEL,0x516E9DE470D16AAEL,0x516E9DE470D16AAEL,0x516E9DE470D16AAEL,0x516E9DE470D16AAEL,0x516E9DE470D16AAEL,0x516E9DE470D16AAEL};
        int8_t l_91 = 5L;
        uint32_t *l_107 = (void*)0;
        int32_t l_131 = 0x3C1BAF1AL;
        int32_t l_140 = 0x286EBCD7L;
        uint8_t *l_157 = &p_2740->g_18;
        uint8_t **l_166[1];
        uint8_t ***l_170[8];
        int32_t l_194 = 0x0F7B8AB5L;
        int32_t l_195 = 0x25E5B53FL;
        int32_t l_196 = (-4L);
        int32_t l_198 = 0x1175DF6FL;
        int32_t l_199 = 0x3D5DE6A0L;
        int32_t l_204 = 0x68C0CF1EL;
        int32_t l_205[10] = {6L,(-2L),6L,6L,(-2L),6L,6L,(-2L),6L,6L};
        int32_t l_206 = (-1L);
        uint8_t l_237[2];
        int i;
        for (i = 0; i < 1; i++)
            l_166[i] = (void*)0;
        for (i = 0; i < 8; i++)
            l_170[i] = &p_2740->g_164;
        for (i = 0; i < 2; i++)
            l_237[i] = 0UL;
        if (l_83)
        { /* block id: 16 */
            uint32_t l_92 = 0x85DC571EL;
            uint32_t *l_96[2];
            int32_t *l_98[4][9] = {{&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3],&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3],&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3]},{&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3],&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3],&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3]},{&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3],&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3],&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3]},{&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3],&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3],&p_2740->g_99[0][4][3],&p_2740->g_99[1][3][1],&p_2740->g_99[0][4][3]}};
            int i, j;
            for (i = 0; i < 2; i++)
                l_96[i] = &p_2740->g_97;
            for (p_2740->g_16 = 0; (p_2740->g_16 <= 6); p_2740->g_16 += 1)
            { /* block id: 19 */
                for (p_2740->g_18 = 1; (p_2740->g_18 <= 6); p_2740->g_18 += 1)
                { /* block id: 22 */
                    int i;
                    return l_84[p_2740->g_16];
                }
            }
            p_2740->g_99[1][3][1] = (((p_2740->g_65 < ((safe_sub_func_uint64_t_u_u((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_2740->group_0_offset, get_group_id(0), 10), ((p_2740->g_65 > l_83) || ((p_2740->g_97 = (safe_div_func_int8_t_s_s((l_91 &= (0x2DL && p_2740->g_65)), (l_92 | ((4UL != ((safe_sub_func_uint32_t_u_u(((+l_92) <= 0x03L), 0x29EDD65EL)) && 0x211AD519L)) == l_95))))) , p_2740->g_comm_values[p_2740->tid])))), l_95)) , 0L)) >= p_2740->g_59) ^ 4294967291UL);
        }
        else
        { /* block id: 29 */
            int64_t l_109 = (-8L);
            int32_t l_119 = (-1L);
            int32_t l_148 = 0x7CAD9AABL;
            uint8_t *l_155 = (void*)0;
            uint8_t **l_167[5] = {&l_157,&l_157,&l_157,&l_157,&l_157};
            int32_t *l_176 = (void*)0;
            int32_t *l_192[3][6];
            int32_t l_193[10];
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 6; j++)
                    l_192[i][j] = (void*)0;
            }
            for (i = 0; i < 10; i++)
                l_193[i] = 0x36FB27EFL;
            for (p_2740->g_97 = 0; (p_2740->g_97 <= 4); p_2740->g_97 += 1)
            { /* block id: 32 */
                int64_t *l_106 = &l_84[3];
                uint8_t *l_108[5][6][2] = {{{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65}},{{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65}},{{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65}},{{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65}},{{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65},{&p_2740->g_65,&p_2740->g_65}}};
                int32_t l_117 = (-1L);
                int32_t *l_147 = &l_119;
                int i, j, k;
                l_131 = (p_2740->g_99[1][3][1] | (((((safe_rshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((((*l_106) = 1L) >= (~((void*)0 != l_107))), (p_2740->g_18--))), ((l_109 || (safe_rshift_func_int16_t_s_s(p_2740->g_99[1][4][0], (((safe_div_func_int8_t_s_s(((l_117 , (p_2740->g_124++)) >= ((((safe_add_func_uint64_t_u_u((((safe_add_func_uint8_t_u_u(l_91, ((l_117 > p_2740->g_comm_values[p_2740->tid]) , FAKE_DIVERGE(p_2740->group_0_offset, get_group_id(0), 10)))) && p_2740->g_99[1][3][1]) > p_2740->g_99[4][4][4]), p_2740->g_120)) , 0xCF4EC59EFA1EB4E8L) , l_83) != FAKE_DIVERGE(p_2740->global_1_offset, get_global_id(1), 10))), l_117)) , (void*)0) != &p_2740->g_65)))) , (-1L)))), p_2740->g_16)) , l_84[2]) >= l_122) & 0x57DDL) <= l_110));
                l_148 &= ((*l_147) = ((~(safe_mul_func_uint16_t_u_u(l_109, ((l_106 != (void*)0) , (!(((*l_106) = (((safe_div_func_int8_t_s_s((((safe_lshift_func_int16_t_s_s((l_131 = l_95), (l_140 = 0x76F1L))) || ((safe_sub_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_s((p_2740->g_59 | 18446744073709551610UL), ((safe_div_func_int16_t_s_s(((p_2740->g_49 , (0x1DL ^ 0x30L)) , 0x2303L), l_123)) , l_95))) < 3UL), FAKE_DIVERGE(p_2740->local_0_offset, get_local_id(0), 10))) == p_2740->g_121)) >= p_2740->g_120), l_117)) || 0UL) <= 65535UL)) || 1UL)))))) != l_122));
                return p_2740->g_99[3][0][4];
            }
            for (l_91 = 2; (l_91 == (-2)); --l_91)
            { /* block id: 46 */
                uint8_t **l_156 = &l_155;
                uint8_t ***l_165[5] = {&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164,&p_2740->g_164};
                int64_t *l_183 = (void*)0;
                int32_t l_190 = 0L;
                int i;
                if ((safe_sub_func_int8_t_s_s(((safe_add_func_int32_t_s_s(p_2740->g_118, (((((*l_156) = l_155) != l_157) != 2UL) > (safe_lshift_func_int16_t_s_s((((void*)0 != &p_2740->g_99[1][4][5]) ^ (safe_mod_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((l_166[0] = p_2740->g_164) != (l_168 = l_167[1])), (&p_2740->g_164 == l_170[1]))), FAKE_DIVERGE(p_2740->local_2_offset, get_local_id(2), 10)))), p_2740->g_comm_values[p_2740->tid]))))) , 0x0BL), 0L)))
                { /* block id: 50 */
                    return l_131;
                }
                else
                { /* block id: 52 */
                    int32_t *l_175[8][1];
                    int8_t l_186 = 5L;
                    int i, j;
                    for (i = 0; i < 8; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_175[i][j] = (void*)0;
                    }
                    if (l_148)
                        break;
                    if (l_119)
                        break;
                    for (p_2740->g_124 = (-8); (p_2740->g_124 == 37); p_2740->g_124++)
                    { /* block id: 57 */
                        int32_t *l_174[8][2];
                        int32_t **l_173[6][5] = {{&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[2][1]},{&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[2][1]},{&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[2][1]},{&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[2][1]},{&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[2][1]},{&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[1][0],&l_174[2][1]}};
                        uint64_t *l_179 = &p_2740->g_49;
                        int8_t *l_189 = &l_186;
                        int i, j;
                        for (i = 0; i < 8; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_174[i][j] = &l_119;
                        }
                        l_175[3][0] = &l_123;
                        l_176 = &p_2740->g_99[3][0][1];
                        p_2740->g_191 |= (((((safe_mul_func_int8_t_s_s(((((((*l_179) &= ((*p_80) , FAKE_DIVERGE(p_2740->global_0_offset, get_global_id(0), 10))) < ((safe_unary_minus_func_int16_t_s(((safe_rshift_func_uint8_t_u_u(p_2740->g_comm_values[p_2740->tid], (l_183 == (void*)0))) <= (p_2740->g_184 != (((-1L) | ((*l_189) = (l_186 || ((p_2740->g_99[1][3][1] || 0UL) <= 255UL)))) , (void*)0))))) != p_2740->g_59)) > 0xFE24L) | l_131) < p_2740->g_99[1][3][1]), p_2740->g_59)) , 0UL) <= l_190) , l_84[4]) != (-1L));
                    }
                }
            }
            l_211--;
        }
        for (l_122 = 0; (l_122 < 21); l_122++)
        { /* block id: 70 */
            int32_t *l_216 = &l_206;
            int32_t *l_217 = &l_197;
            int32_t *l_218 = &l_196;
            int32_t *l_219 = (void*)0;
            int32_t *l_220 = &p_2740->g_99[4][1][0];
            int32_t *l_221 = &p_2740->g_99[1][3][1];
            int32_t *l_222[9][5] = {{&l_207,&l_201,&l_140,&l_201,&l_207},{&l_207,&l_201,&l_140,&l_201,&l_207},{&l_207,&l_201,&l_140,&l_201,&l_207},{&l_207,&l_201,&l_140,&l_201,&l_207},{&l_207,&l_201,&l_140,&l_201,&l_207},{&l_207,&l_201,&l_140,&l_201,&l_207},{&l_207,&l_201,&l_140,&l_201,&l_207},{&l_207,&l_201,&l_140,&l_201,&l_207},{&l_207,&l_201,&l_140,&l_201,&l_207}};
            int i, j;
            p_2740->g_223[0]--;
            if ((*l_216))
                continue;
        }
        for (l_197 = (-11); (l_197 < (-28)); --l_197)
        { /* block id: 76 */
            int32_t *l_228 = &l_200;
            int32_t *l_229 = &l_110;
            int32_t *l_230 = &l_210[0][7][1];
            int32_t *l_231 = (void*)0;
            int32_t *l_232 = &l_123;
            int32_t *l_233[6][7][6] = {{{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110}},{{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110}},{{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110}},{{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110}},{{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110}},{{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110},{&p_2740->g_99[1][3][1],&l_209,(void*)0,&l_198,&l_210[0][7][1],&l_110}}};
            int i, j, k;
            --l_234;
            return l_237[1];
        }
        return l_208;
    }
    (*p_2740->g_185) = (safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u((p_2740->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))] < (((*l_242) = &p_2740->g_164) == &l_168)), (safe_div_func_uint64_t_u_u(((p_2740->g_246 < (safe_rshift_func_int8_t_s_s(((0x0EE490C01ED3C886L > 0xE8DBD7867C112E13L) & ((safe_lshift_func_uint16_t_u_s(((safe_sub_func_uint8_t_u_u(l_203, l_201)) , GROUP_DIVERGE(2, 1)), ((p_2740->g_120 = (((l_256[7][0][2] = l_255) == &p_2740->g_59) != l_110)) || l_257))) < 1L)), l_197))) , l_257), l_207)))), 4));
    for (p_2740->g_16 = 19; (p_2740->g_16 > 30); ++p_2740->g_16)
    { /* block id: 88 */
        int16_t l_287 = (-2L);
        uint16_t *l_317[1][7];
        int32_t l_318 = 0x51F7F17DL;
        int16_t l_319 = 6L;
        uint64_t *l_321 = &p_2740->g_124;
        union U0 l_325 = {0xB09333DFFFF5785DL};
        uint8_t ****l_329 = (void*)0;
        uint16_t l_337 = 0UL;
        int16_t *l_338[3];
        uint8_t ***l_339 = (void*)0;
        int32_t l_357 = 0x2DEEA46FL;
        uint32_t *l_361 = &p_2740->g_59;
        int8_t *l_409 = &l_336[0][5];
        int32_t l_489 = 0x44C0F7F4L;
        uint8_t l_492 = 0xF8L;
        uint32_t *l_504 = &p_2740->g_97;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 7; j++)
                l_317[i][j] = (void*)0;
        }
        for (i = 0; i < 3; i++)
            l_338[i] = &l_95;
        for (l_197 = 0; (l_197 <= 1); l_197 += 1)
        { /* block id: 91 */
            int32_t l_269 = 0x5F4A1A8CL;
            int32_t l_313 = 0x6E97D0D1L;
            if ((*p_2740->g_185))
                break;
            (*p_2740->g_260) = (*p_2740->g_184);
            for (p_2740->g_118 = 0; (p_2740->g_118 <= 5); p_2740->g_118 += 1)
            { /* block id: 96 */
                int32_t **l_261 = &p_2740->g_185;
                int i, j, k;
                (*l_261) = l_256[(l_197 + 3)][(l_197 + 1)][p_2740->g_118];
                (*p_2740->g_184) = p_80;
            }
            for (p_2740->g_18 = 0; (p_2740->g_18 <= 1); p_2740->g_18 += 1)
            { /* block id: 102 */
                int32_t *l_286 = &l_209;
                int32_t l_304 = 0L;
                int32_t l_305[3][8] = {{0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL},{0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL},{0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL,0x08FEF3BAL}};
                int i, j, k;
                for (l_202 = 5; (l_202 >= 0); l_202 -= 1)
                { /* block id: 105 */
                    int8_t l_278 = 0x21L;
                    uint16_t *l_289 = &l_211;
                    int16_t l_303 = 1L;
                    int i, j, k;
                    for (p_2740->g_120 = 0; (p_2740->g_120 <= 5); p_2740->g_120 += 1)
                    { /* block id: 108 */
                        int16_t *l_264 = &l_95;
                        uint16_t *l_283 = (void*)0;
                        uint16_t *l_284 = &l_211;
                        int32_t *l_285 = &l_110;
                        int i, j, k;
                        l_210[p_2740->g_18][p_2740->g_18][(p_2740->g_18 + 2)] = l_210[l_197][(p_2740->g_18 + 7)][l_197];
                        (*p_2740->g_185) &= ((safe_add_func_uint16_t_u_u((6L == ((*l_264) = p_2740->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))])), (safe_mod_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(p_2740->g_comm_values[p_2740->tid], 0x42FBL)), l_269)))) & (p_2740->g_65 < l_269));
                        (*l_285) ^= (safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(p_2740->g_223[2], (l_256[(p_2740->g_18 + 7)][p_2740->g_18][(l_197 + 2)] != (((safe_mod_func_uint16_t_u_u(((*l_284) = (8UL <= (safe_div_func_uint64_t_u_u((l_278 < ((safe_div_func_uint64_t_u_u(l_210[p_2740->g_18][p_2740->g_18][(p_2740->g_18 + 2)], p_2740->g_49)) == ((safe_lshift_func_int8_t_s_s(0x4CL, 3)) >= ((*p_80) , (*p_2740->g_185))))), l_123)))), l_123)) ^ (*p_80)) , (void*)0)))), FAKE_DIVERGE(p_2740->group_2_offset, get_group_id(2), 10)));
                        l_286 = (*p_2740->g_184);
                    }
                    l_287 = ((*p_2740->g_185) = (l_210[l_197][(p_2740->g_18 + 6)][(p_2740->g_18 + 1)] = l_210[p_2740->g_18][(l_202 + 1)][(p_2740->g_18 + 2)]));
                    (*p_2740->g_288) = (*p_2740->g_260);
                    l_305[2][3] ^= ((((*l_289)--) || ((void*)0 != l_292[1][5][0])) <= ((safe_mul_func_int16_t_s_s((1UL & ((-1L) ^ 0x50L)), (safe_add_func_uint64_t_u_u((safe_div_func_uint64_t_u_u(((-1L) || ((safe_div_func_int32_t_s_s((255UL && l_269), ((l_303 ^= ((++(*p_80)) > FAKE_DIVERGE(p_2740->global_1_offset, get_global_id(1), 10))) ^ (l_304 = 0x18F3286DL)))) >= 0x36CE7804CDDC7E76L)), p_2740->g_223[3])), 0L)))) , p_2740->g_59));
                }
                for (p_2740->g_97 = 0; (p_2740->g_97 <= 5); p_2740->g_97 += 1)
                { /* block id: 128 */
                    return p_2740->g_121;
                }
                --l_306[4];
                l_313 |= (l_269 , (!((*p_2740->g_185) = (l_269 > ((l_287 >= (safe_mul_func_int16_t_s_s(0L, (255UL && (0x848DL < (0x0DL ^ ((*l_286) >= (((((((p_2740->g_59 , p_2740->g_18) , 0x70L) & p_2740->g_246) , 0x1C910E2130E7721EL) <= 0x38310BF789BA3D90L) < p_2740->g_121) , p_2740->g_97)))))))) ^ l_269)))));
            }
        }
        l_314 = (void*)0;
        p_2740->g_322 &= (((((**p_2740->g_288) != (safe_lshift_func_uint16_t_u_u(((((l_318 = 65535UL) < l_287) , l_319) & 4294967289UL), 3))) < (((p_2740->g_320[0] = &p_2740->g_164) != ((p_2740->g_121 , ((!p_2740->g_120) >= (&p_2740->g_49 == l_321))) , &p_2740->g_164)) , p_2740->g_191)) >= GROUP_DIVERGE(1, 1)) == p_2740->g_49);
        if (((!(safe_mod_func_uint8_t_u_u((&p_2740->g_164 == (((0x7EL > ((l_287 , l_325) , ((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_2740->local_1_offset, get_local_id(1), 10), l_328)) == ((&p_2740->g_320[7] != (l_287 , l_329)) , (l_318 = (((FAKE_DIVERGE(p_2740->group_0_offset, get_group_id(0), 10) , (safe_mod_func_int8_t_s_s(((+(safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u((p_2740->g_99[1][3][1] , (*p_80)), (-1L))), p_2740->g_49))) < (-1L)), l_336[0][5]))) > (*p_80)) >= l_337)))))) , 1UL) , l_339)), l_325.f0))) == p_2740->g_120))
        { /* block id: 141 */
            int32_t l_340 = (-5L);
            int8_t *l_354 = &p_2740->g_120;
            int8_t *l_355 = (void*)0;
            int8_t *l_356 = &l_336[0][5];
            int32_t l_358 = 1L;
            uint32_t *l_360 = &p_2740->g_97;
            l_358 &= (l_340 && ((p_2740->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))] <= ((**p_2740->g_260) >= ((((safe_lshift_func_uint8_t_u_u(0x6BL, 7)) , (l_340 || l_287)) == (l_357 |= (safe_lshift_func_int16_t_s_s((~(-6L)), (safe_rshift_func_int8_t_s_s(((*l_356) = ((*l_354) = (l_319 >= (safe_sub_func_uint64_t_u_u(((safe_mul_func_int16_t_s_s((((safe_mul_func_int8_t_s_s(((l_353 ^= l_318) || p_2740->g_121), l_340)) <= l_340) != 4294967295UL), FAKE_DIVERGE(p_2740->group_0_offset, get_group_id(0), 10))) ^ p_2740->g_97), 0x2254CA6F1A25314AL))))), 6)))))) & 0x786EL))) != 0xF76353EB0D0D0FC8L));
            if ((**p_2740->g_184))
            { /* block id: 147 */
                int32_t l_359 = 0x6A1EED2AL;
                uint8_t ****l_378 = &l_339;
                (*p_2740->g_185) = ((((~(~(GROUP_DIVERGE(0, 1) == p_2740->g_49))) <= ((l_359 > ((&p_2740->g_97 != ((1L | l_359) , l_360)) && ((l_358 = (((l_337 | (((p_2740->g_362 = (((&p_2740->g_59 == l_361) ^ l_319) | p_2740->g_99[1][3][1])) , 0x3D6CF642716E362FL) && p_2740->g_18)) < 0x63ABD0DBL) , FAKE_DIVERGE(p_2740->local_2_offset, get_local_id(2), 10))) || p_2740->g_49))) <= 2L)) && l_340) > 0x5CL);
                for (p_2740->g_59 = 0; (p_2740->g_59 == 51); p_2740->g_59 = safe_add_func_int32_t_s_s(p_2740->g_59, 6))
                { /* block id: 153 */
                    uint8_t ****l_376 = &l_243;
                    uint8_t *****l_377[10] = {&l_329,&l_329,&l_329,&l_329,&l_329,&l_329,&l_329,&l_329,&l_329,&l_329};
                    int32_t l_379 = 0x6BFE14A0L;
                    int i;
                    (*p_2740->g_288) = (*p_2740->g_288);
                    l_379 = (l_359 ^ ((p_2740->g_246 != (safe_rshift_func_uint8_t_u_u((((*l_360) = l_340) , ((safe_div_func_int64_t_s_s(p_2740->g_59, (safe_add_func_uint16_t_u_u(((l_357 = 0xE5L) == ((p_2740->g_380 |= ((safe_unary_minus_func_uint16_t_u((((safe_rshift_func_int16_t_s_u((p_2740->g_121 = ((safe_div_func_uint16_t_u_u(((((((l_340 , l_376) == (l_378 = &p_2740->g_320[0])) , 0xE1ECC352L) >= (*p_80)) , l_358) , 4UL), p_2740->g_99[1][3][1])) , l_379)), p_2740->g_18)) || 4294967295UL) ^ 255UL))) && FAKE_DIVERGE(p_2740->group_0_offset, get_group_id(0), 10))) ^ GROUP_DIVERGE(2, 1))), l_359)))) == 0x038BL)), 4))) >= 0x3A26144DL));
                }
            }
            else
            { /* block id: 162 */
                int8_t l_383 = 0x16L;
                uint8_t *****l_384[3][8][2] = {{{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329}},{{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329}},{{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329},{&l_329,&l_329}}};
                int64_t *l_385 = &p_2740->g_386;
                int64_t *l_398[4][5] = {{&p_2740->g_362,&p_2740->g_362,&p_2740->g_362,&p_2740->g_362,&p_2740->g_362},{&p_2740->g_362,&p_2740->g_362,&p_2740->g_362,&p_2740->g_362,&p_2740->g_362},{&p_2740->g_362,&p_2740->g_362,&p_2740->g_362,&p_2740->g_362,&p_2740->g_362},{&p_2740->g_362,&p_2740->g_362,&p_2740->g_362,&p_2740->g_362,&p_2740->g_362}};
                int32_t l_400 = 0x7D5054C0L;
                int i, j, k;
                l_400 = ((**l_389) = (((safe_lshift_func_uint16_t_u_u(((((~((0x121BCEF0L & (l_383 & ((&p_2740->g_320[7] != (l_242 = &p_2740->g_320[0])) , (((*l_385) = p_2740->g_223[0]) , (safe_mul_func_int8_t_s_s(0L, (l_389 == ((l_399 = ((((((safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((l_340 , (safe_rshift_func_int16_t_s_u((safe_sub_func_uint32_t_u_u(l_358, (-5L))), l_357))), l_358)), p_2740->g_16)) >= (**l_389)) | p_2740->g_223[0]) , (void*)0) != &p_2740->g_99[1][3][1]) , 0x2EBEC1EA12EFCB46L)) , l_389)))))))) , 0xA1732A1AL)) > p_2740->g_97) , l_319) < 0xDCL), FAKE_DIVERGE(p_2740->global_1_offset, get_global_id(1), 10))) <= l_358) > (*p_2740->g_185)));
            }
            if ((**p_2740->g_288))
                continue;
            if (p_2740->g_124)
                goto lbl_401;
        }
        else
        { /* block id: 171 */
            int8_t *l_408 = &l_336[0][0];
            int8_t **l_407[1];
            int32_t l_410[10] = {0x561E1661L,1L,1L,1L,0x561E1661L,0x561E1661L,1L,1L,1L,0x561E1661L};
            uint16_t l_436 = 65528UL;
            uint32_t *l_501[4][8][3] = {{{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97}},{{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97}},{{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97}},{{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97},{&p_2740->g_97,&p_2740->g_97,&p_2740->g_97}}};
            uint8_t l_507 = 4UL;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_407[i] = &l_408;
            for (l_209 = 0; (l_209 == 1); ++l_209)
            { /* block id: 174 */
                uint32_t l_404 = 0xF4302C69L;
                --l_404;
            }
            (*p_2740->g_185) = (((*l_321) = (&p_2740->g_120 != (l_409 = (void*)0))) | l_410[0]);
            if (((safe_rshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(0x3E9DL, ((FAKE_DIVERGE(p_2740->group_0_offset, get_group_id(0), 10) && (safe_lshift_func_int8_t_s_u((l_287 == ((!(p_2740->g_435 ^= ((((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 1)) >= (p_2740->g_362 = (((safe_lshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s((+(safe_add_func_int64_t_s_s(((((void*)0 == l_321) < ((safe_sub_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s(l_287, 15)), ((((safe_rshift_func_int8_t_s_u(0x27L, (**l_389))) , (safe_mul_func_uint8_t_u_u((**l_389), ((safe_add_func_int64_t_s_s((!((0x779E51BCL < l_319) != (**l_389))), p_2740->g_97)) , p_2740->g_18)))) | l_325.f0) && (-2L)))) != 1L)) && 0UL), 0x287D27402765F314L))), p_2740->g_223[1])), 5)) , 0x5E5AL) | 65526UL))) <= p_2740->g_386) ^ l_287))) ^ (**l_389))), l_319))) && p_2740->g_191))), (**l_389))) | l_436))
            { /* block id: 182 */
                uint64_t l_450 = 18446744073709551608UL;
                if (l_436)
                { /* block id: 183 */
                    uint64_t l_456 = 0x58956D07593F388EL;
                    for (l_207 = 0; (l_207 == 24); l_207 = safe_add_func_int64_t_s_s(l_207, 7))
                    { /* block id: 186 */
                        int64_t *l_447 = &p_2740->g_435;
                        uint32_t **l_451 = &l_256[7][0][2];
                        uint32_t **l_452[10];
                        int32_t l_455 = 0x4E3FE185L;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_452[i] = &l_255;
                        p_2740->g_458[7] = ((safe_lshift_func_int8_t_s_u((safe_add_func_int16_t_s_s(0x6421L, (safe_add_func_int8_t_s_s(((((p_2740->g_223[2] & (((safe_sub_func_int32_t_s_s((((*l_447) = p_2740->g_120) , ((((safe_add_func_uint8_t_u_u(l_450, (((((*l_447) = ((((((*l_451) = (void*)0) == (p_80 = &p_2740->g_59)) < (((p_2740->g_453 == (void*)0) , p_2740->g_65) || (-10L))) != p_2740->g_124) == l_455)) && l_456) < 0x20D6CCDCL) >= p_2740->g_124))) , l_450) , p_2740->g_59) == 18446744073709551615UL)), (*p_2740->g_185))) ^ p_2740->g_65) & p_2740->g_457)) != (-5L)) , 0x92DDEBF94C7C0082L) , 0x74L), l_410[0])))), 7)) , &l_361);
                        return l_455;
                    }
                }
                else
                { /* block id: 194 */
                    (**l_389) ^= 0x097AF00CL;
                    for (p_2740->g_120 = (-16); (p_2740->g_120 == (-27)); p_2740->g_120 = safe_sub_func_uint16_t_u_u(p_2740->g_120, 2))
                    { /* block id: 198 */
                        (**l_389) |= l_462;
                        if ((**l_389))
                            break;
                    }
                }
                return p_2740->g_49;
            }
            else
            { /* block id: 204 */
                union U0 l_469 = {0x76A79062E5DA5D3AL};
                int32_t l_483 = (-9L);
                uint32_t **l_502 = (void*)0;
                uint32_t **l_503[7][2] = {{&l_501[1][0][0],(void*)0},{&l_501[1][0][0],(void*)0},{&l_501[1][0][0],(void*)0},{&l_501[1][0][0],(void*)0},{&l_501[1][0][0],(void*)0},{&l_501[1][0][0],(void*)0},{&l_501[1][0][0],(void*)0}};
                int i, j;
                for (p_2740->g_97 = 0; (p_2740->g_97 > 50); p_2740->g_97 = safe_add_func_uint8_t_u_u(p_2740->g_97, 8))
                { /* block id: 207 */
                    for (l_287 = 0; (l_287 >= 0); l_287 -= 1)
                    { /* block id: 210 */
                        int i;
                        return p_2740->g_223[(l_287 + 3)];
                    }
                    for (p_2740->g_118 = 8; (p_2740->g_118 >= 3); p_2740->g_118 -= 1)
                    { /* block id: 215 */
                        (*p_2740->g_185) |= 0x65BABE10L;
                    }
                    (*p_2740->g_185) = l_410[0];
                }
                l_489 = ((*p_2740->g_185) = (safe_lshift_func_uint16_t_u_u(p_2740->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2740->tid, 6))], (safe_sub_func_uint32_t_u_u(((l_325 , p_80) == ((l_469 = l_469) , l_361)), ((((safe_add_func_uint64_t_u_u((GROUP_DIVERGE(1, 1) <= (safe_sub_func_uint8_t_u_u((l_319 >= (l_410[7] = ((((safe_lshift_func_int16_t_s_u(l_410[3], (p_2740->g_476[0][2] = l_337))) && (safe_add_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_s((l_357 = (l_318 = ((++(*l_321)) > (safe_mul_func_int8_t_s_s((l_483 && GROUP_DIVERGE(0, 1)), l_483))))), p_2740->g_457)), 4)) ^ 9L), 0x0D5EL))) | 1L) == l_488[0][0]))), l_325.f0))), l_287)) < 0x4CL) != 0x54F9D468L) , l_436))))));
                if ((**p_2740->g_288))
                    continue;
                (*p_2740->g_185) = (p_2740->g_120 < ((safe_mod_func_int64_t_s_s((l_492 != (safe_mod_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((l_483 |= (safe_rshift_func_uint16_t_u_s(((void*)0 == &p_2740->g_386), (((safe_lshift_func_int8_t_s_s((((l_504 = l_501[1][0][0]) != &p_2740->g_97) <= ((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), l_507)) ^ ((((-1L) || (**l_389)) || l_436) & (-1L)))), l_319)) && (**p_2740->g_260)) | (-1L))))), l_436)), l_410[1]))), l_469.f0)) < (-4L)));
            }
        }
    }
    return p_2740->g_16;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[6];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 6; i++)
            l_comm_values[i] = 1;
    struct S1 c_2741;
    struct S1* p_2740 = &c_2741;
    struct S1 c_2742 = {
        4UL, // p_2740->g_16
        253UL, // p_2740->g_18
        1UL, // p_2740->g_49
        0xE0855BBBL, // p_2740->g_59
        0xCFL, // p_2740->g_65
        1UL, // p_2740->g_97
        {{{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L}},{{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L}},{{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L}},{{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L}},{{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L}},{{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L},{3L,0x4A15F1EEL,0x73237F32L,0x54BE8D2CL,0L,1L,2L,0x49C3B7D0L}}}, // p_2740->g_99
        5L, // p_2740->g_118
        0x36L, // p_2740->g_120
        1L, // p_2740->g_121
        18446744073709551615UL, // p_2740->g_124
        (void*)0, // p_2740->g_164
        &p_2740->g_99[1][4][7], // p_2740->g_185
        &p_2740->g_185, // p_2740->g_184
        0x63A59E25L, // p_2740->g_191
        {0x9C716773L,0x9C716773L,0x9C716773L,0x9C716773L,0x9C716773L}, // p_2740->g_223
        0x6FF626B8L, // p_2740->g_246
        &p_2740->g_185, // p_2740->g_260
        &p_2740->g_185, // p_2740->g_288
        {(void*)0,&p_2740->g_164,(void*)0,(void*)0,&p_2740->g_164,(void*)0,(void*)0,&p_2740->g_164}, // p_2740->g_320
        0xEDL, // p_2740->g_322
        0x1D09711BB0F3B926L, // p_2740->g_362
        0x3DCCL, // p_2740->g_380
        0x4FC25F2C366AFFA9L, // p_2740->g_386
        9L, // p_2740->g_435
        (void*)0, // p_2740->g_454
        &p_2740->g_454, // p_2740->g_453
        5L, // p_2740->g_457
        &p_2740->g_59, // p_2740->g_459
        {&p_2740->g_459,&p_2740->g_459,&p_2740->g_459,&p_2740->g_459,&p_2740->g_459,&p_2740->g_459,&p_2740->g_459,&p_2740->g_459,&p_2740->g_459}, // p_2740->g_458
        {{0x5B3B6C23B9AD4781L,0x5B3B6C23B9AD4781L,0x5B3B6C23B9AD4781L}}, // p_2740->g_476
        {{{2UL},{2UL},{0xAF08957B4F540A2BL},{0xEE2A1BF850789F4DL},{18446744073709551615UL},{0xEE2A1BF850789F4DL}},{{2UL},{2UL},{0xAF08957B4F540A2BL},{0xEE2A1BF850789F4DL},{18446744073709551615UL},{0xEE2A1BF850789F4DL}},{{2UL},{2UL},{0xAF08957B4F540A2BL},{0xEE2A1BF850789F4DL},{18446744073709551615UL},{0xEE2A1BF850789F4DL}},{{2UL},{2UL},{0xAF08957B4F540A2BL},{0xEE2A1BF850789F4DL},{18446744073709551615UL},{0xEE2A1BF850789F4DL}},{{2UL},{2UL},{0xAF08957B4F540A2BL},{0xEE2A1BF850789F4DL},{18446744073709551615UL},{0xEE2A1BF850789F4DL}}}, // p_2740->g_510
        (-1L), // p_2740->g_514
        0x0C59F98BB139AC28L, // p_2740->g_517
        (void*)0, // p_2740->g_522
        (void*)0, // p_2740->g_560
        &p_2740->g_185, // p_2740->g_562
        0x925E54B4L, // p_2740->g_621
        {&p_2740->g_621,&p_2740->g_621}, // p_2740->g_620
        &p_2740->g_620[0], // p_2740->g_619
        &p_2740->g_99[0][2][5], // p_2740->g_626
        8UL, // p_2740->g_629
        (void*)0, // p_2740->g_637
        &p_2740->g_560, // p_2740->g_655
        &p_2740->g_560, // p_2740->g_656
        1UL, // p_2740->g_682
        0x3BL, // p_2740->g_701
        0x5728CFF3EBD5A5BEL, // p_2740->g_745
        &p_2740->g_476[0][1], // p_2740->g_772
        (void*)0, // p_2740->g_791
        &p_2740->g_99[1][3][1], // p_2740->g_793
        &p_2740->g_793, // p_2740->g_792
        {4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL}, // p_2740->g_873
        &p_2740->g_701, // p_2740->g_884
        &p_2740->g_884, // p_2740->g_883
        8L, // p_2740->g_916
        (-1L), // p_2740->g_930
        0x85851049L, // p_2740->g_934
        0x60A85A5EL, // p_2740->g_936
        &p_2740->g_916, // p_2740->g_969
        (-1L), // p_2740->g_984
        0xB9C63F41L, // p_2740->g_985
        (void*)0, // p_2740->g_999
        {{(void*)0,&p_2740->g_185,&p_2740->g_185},{(void*)0,&p_2740->g_185,&p_2740->g_185},{(void*)0,&p_2740->g_185,&p_2740->g_185},{(void*)0,&p_2740->g_185,&p_2740->g_185},{(void*)0,&p_2740->g_185,&p_2740->g_185},{(void*)0,&p_2740->g_185,&p_2740->g_185},{(void*)0,&p_2740->g_185,&p_2740->g_185},{(void*)0,&p_2740->g_185,&p_2740->g_185},{(void*)0,&p_2740->g_185,&p_2740->g_185}}, // p_2740->g_1003
        &p_2740->g_121, // p_2740->g_1141
        &p_2740->g_1141, // p_2740->g_1140
        (void*)0, // p_2740->g_1243
        &p_2740->g_930, // p_2740->g_1263
        {{&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263},{&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263},{&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263},{&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263},{&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263},{&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263},{&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263},{&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263},{&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263,&p_2740->g_1263}}, // p_2740->g_1262
        {&p_2740->g_1262[3][3]}, // p_2740->g_1264
        {{{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]}},{{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]}},{{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]}},{{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]}},{{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]}},{{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]}},{{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]},{&p_2740->g_1262[3][3]}}}, // p_2740->g_1265
        (void*)0, // p_2740->g_1282
        &p_2740->g_1282, // p_2740->g_1281
        &p_2740->g_1281, // p_2740->g_1280
        &p_2740->g_1280, // p_2740->g_1279
        8L, // p_2740->g_1295
        0x02A3FBCEL, // p_2740->g_1310
        (-2L), // p_2740->g_1337
        (void*)0, // p_2740->g_1343
        0UL, // p_2740->g_1486
        &p_2740->g_793, // p_2740->g_1760
        65528UL, // p_2740->g_1816
        &p_2740->g_1816, // p_2740->g_1815
        &p_2740->g_121, // p_2740->g_2038
        {{{0x2DL,0L},{0x2DL,0L}},{{0x2DL,0L},{0x2DL,0L}},{{0x2DL,0L},{0x2DL,0L}},{{0x2DL,0L},{0x2DL,0L}},{{0x2DL,0L},{0x2DL,0L}},{{0x2DL,0L},{0x2DL,0L}},{{0x2DL,0L},{0x2DL,0L}}}, // p_2740->g_2089
        {{{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL}},{{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL},{4294967287UL}}}, // p_2740->g_2122
        &p_2740->g_458[7], // p_2740->g_2155
        (void*)0, // p_2740->g_2165
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2740->g_2176
        {&p_2740->g_185,&p_2740->g_185,&p_2740->g_185,&p_2740->g_185,&p_2740->g_185,&p_2740->g_185,&p_2740->g_185,&p_2740->g_185,&p_2740->g_185,&p_2740->g_185}, // p_2740->g_2187
        &p_2740->g_2187[9], // p_2740->g_2186
        &p_2740->g_883, // p_2740->g_2295
        0x68L, // p_2740->g_2319
        8L, // p_2740->g_2320
        18446744073709551610UL, // p_2740->g_2342
        0xA7E4L, // p_2740->g_2346
        6L, // p_2740->g_2347
        0x5586L, // p_2740->g_2348
        &p_2740->g_637, // p_2740->g_2371
        &p_2740->g_2371, // p_2740->g_2370
        {&p_2740->g_386,&p_2740->g_386}, // p_2740->g_2421
        {{{0L,0L,0x524EA8E5C578D276L},{0L,0L,0x524EA8E5C578D276L}},{{0L,0L,0x524EA8E5C578D276L},{0L,0L,0x524EA8E5C578D276L}},{{0L,0L,0x524EA8E5C578D276L},{0L,0L,0x524EA8E5C578D276L}}}, // p_2740->g_2453
        (void*)0, // p_2740->g_2483
        &p_2740->g_793, // p_2740->g_2507
        &p_2740->g_2507, // p_2740->g_2506
        &p_2740->g_2506, // p_2740->g_2505
        &p_2740->g_2505, // p_2740->g_2504
        {1UL}, // p_2740->g_2704
        0x9BB8B4F0L, // p_2740->g_2730
        sequence_input[get_global_id(0)], // p_2740->global_0_offset
        sequence_input[get_global_id(1)], // p_2740->global_1_offset
        sequence_input[get_global_id(2)], // p_2740->global_2_offset
        sequence_input[get_local_id(0)], // p_2740->local_0_offset
        sequence_input[get_local_id(1)], // p_2740->local_1_offset
        sequence_input[get_local_id(2)], // p_2740->local_2_offset
        sequence_input[get_group_id(0)], // p_2740->group_0_offset
        sequence_input[get_group_id(1)], // p_2740->group_1_offset
        sequence_input[get_group_id(2)], // p_2740->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 6)), permutations[0][get_linear_local_id()])), // p_2740->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2741 = c_2742;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2740);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2740->g_16, "p_2740->g_16", print_hash_value);
    transparent_crc(p_2740->g_18, "p_2740->g_18", print_hash_value);
    transparent_crc(p_2740->g_49, "p_2740->g_49", print_hash_value);
    transparent_crc(p_2740->g_59, "p_2740->g_59", print_hash_value);
    transparent_crc(p_2740->g_65, "p_2740->g_65", print_hash_value);
    transparent_crc(p_2740->g_97, "p_2740->g_97", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_2740->g_99[i][j][k], "p_2740->g_99[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2740->g_118, "p_2740->g_118", print_hash_value);
    transparent_crc(p_2740->g_120, "p_2740->g_120", print_hash_value);
    transparent_crc(p_2740->g_121, "p_2740->g_121", print_hash_value);
    transparent_crc(p_2740->g_124, "p_2740->g_124", print_hash_value);
    transparent_crc(p_2740->g_191, "p_2740->g_191", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2740->g_223[i], "p_2740->g_223[i]", print_hash_value);

    }
    transparent_crc(p_2740->g_246, "p_2740->g_246", print_hash_value);
    transparent_crc(p_2740->g_322, "p_2740->g_322", print_hash_value);
    transparent_crc(p_2740->g_362, "p_2740->g_362", print_hash_value);
    transparent_crc(p_2740->g_380, "p_2740->g_380", print_hash_value);
    transparent_crc(p_2740->g_386, "p_2740->g_386", print_hash_value);
    transparent_crc(p_2740->g_435, "p_2740->g_435", print_hash_value);
    transparent_crc(p_2740->g_457, "p_2740->g_457", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2740->g_476[i][j], "p_2740->g_476[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_2740->g_510[i][j].f0, "p_2740->g_510[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2740->g_514, "p_2740->g_514", print_hash_value);
    transparent_crc(p_2740->g_517, "p_2740->g_517", print_hash_value);
    transparent_crc(p_2740->g_621, "p_2740->g_621", print_hash_value);
    transparent_crc(p_2740->g_629, "p_2740->g_629", print_hash_value);
    transparent_crc(p_2740->g_682, "p_2740->g_682", print_hash_value);
    transparent_crc(p_2740->g_701, "p_2740->g_701", print_hash_value);
    transparent_crc(p_2740->g_745, "p_2740->g_745", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2740->g_873[i], "p_2740->g_873[i]", print_hash_value);

    }
    transparent_crc(p_2740->g_916, "p_2740->g_916", print_hash_value);
    transparent_crc(p_2740->g_930, "p_2740->g_930", print_hash_value);
    transparent_crc(p_2740->g_934, "p_2740->g_934", print_hash_value);
    transparent_crc(p_2740->g_936, "p_2740->g_936", print_hash_value);
    transparent_crc(p_2740->g_984, "p_2740->g_984", print_hash_value);
    transparent_crc(p_2740->g_985, "p_2740->g_985", print_hash_value);
    transparent_crc(p_2740->g_1295, "p_2740->g_1295", print_hash_value);
    transparent_crc(p_2740->g_1310, "p_2740->g_1310", print_hash_value);
    transparent_crc(p_2740->g_1337, "p_2740->g_1337", print_hash_value);
    transparent_crc(p_2740->g_1486, "p_2740->g_1486", print_hash_value);
    transparent_crc(p_2740->g_1816, "p_2740->g_1816", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2740->g_2089[i][j][k], "p_2740->g_2089[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2740->g_2122[i][j][k], "p_2740->g_2122[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2740->g_2319, "p_2740->g_2319", print_hash_value);
    transparent_crc(p_2740->g_2320, "p_2740->g_2320", print_hash_value);
    transparent_crc(p_2740->g_2342, "p_2740->g_2342", print_hash_value);
    transparent_crc(p_2740->g_2346, "p_2740->g_2346", print_hash_value);
    transparent_crc(p_2740->g_2347, "p_2740->g_2347", print_hash_value);
    transparent_crc(p_2740->g_2348, "p_2740->g_2348", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2740->g_2453[i][j][k], "p_2740->g_2453[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2740->g_2704.f0, "p_2740->g_2704.f0", print_hash_value);
    transparent_crc(p_2740->g_2730, "p_2740->g_2730", print_hash_value);
    transparent_crc(p_2740->l_comm_values[get_linear_local_id()], "p_2740->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2740->g_comm_values[get_linear_group_id() * 6 + get_linear_local_id()], "p_2740->g_comm_values[get_linear_group_id() * 6 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
