// ---fake_divergence ---inter_thread_comm -g 29,66,4 -l 1,11,4
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

__constant uint32_t permutations[10][44] = {
{4,34,22,9,29,2,19,15,10,7,17,5,8,3,1,39,13,32,24,18,33,23,37,28,25,0,27,16,36,14,6,35,12,40,41,26,43,31,21,11,20,30,38,42}, // permutation 0
{31,34,24,10,6,38,23,5,39,14,2,18,22,7,11,29,28,42,41,3,27,43,37,25,20,36,13,26,4,40,12,9,16,17,33,30,15,32,35,1,19,21,0,8}, // permutation 1
{31,15,17,14,11,21,36,19,5,33,42,12,38,41,16,43,28,35,23,2,26,39,4,25,22,24,34,13,6,32,18,29,1,0,3,10,20,7,27,9,37,8,30,40}, // permutation 2
{42,20,23,24,14,30,18,22,4,11,31,43,10,29,5,28,13,38,2,7,16,15,40,3,36,1,37,27,33,17,19,32,8,34,6,41,39,25,0,12,9,35,21,26}, // permutation 3
{17,20,19,25,34,33,37,21,16,41,28,18,15,22,42,39,11,30,5,6,35,31,36,1,24,43,40,4,23,7,10,12,14,2,0,9,32,29,8,3,13,27,26,38}, // permutation 4
{17,16,36,20,39,25,4,0,3,9,14,2,38,23,32,24,30,11,40,31,34,19,18,29,35,27,13,5,15,7,6,42,26,33,8,37,21,43,22,12,10,1,28,41}, // permutation 5
{25,33,38,5,13,26,34,42,30,37,21,27,19,31,22,32,14,6,10,16,36,18,24,9,41,23,15,29,35,8,3,1,28,39,0,7,4,20,11,2,12,43,17,40}, // permutation 6
{13,39,18,33,16,25,34,28,42,37,12,5,19,27,43,30,36,24,38,8,7,17,6,23,32,14,40,31,10,22,21,3,4,15,1,11,29,9,0,2,35,41,26,20}, // permutation 7
{2,15,23,24,7,37,25,10,18,38,36,26,1,32,14,34,21,31,17,20,22,3,6,33,28,5,16,9,12,41,11,39,29,40,0,19,13,42,27,8,4,30,35,43}, // permutation 8
{12,40,43,35,42,5,21,33,28,19,24,11,18,34,30,20,14,3,38,31,0,15,8,10,27,16,41,2,17,9,32,4,26,29,37,25,6,23,1,7,13,22,36,39} // permutation 9
};

// Seed: 65

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   uint32_t  f1;
   uint32_t  f2;
   int64_t  f3;
   int16_t  f4;
};

struct S1 {
    int32_t g_3;
    int16_t g_26;
    uint64_t g_54[7];
    int32_t *g_56;
    int32_t ** volatile g_55;
    uint16_t g_71;
    uint16_t g_84;
    int16_t g_107;
    uint32_t g_110[10];
    uint8_t g_117;
    int16_t g_132;
    int64_t g_133[9];
    volatile int32_t g_142;
    volatile uint32_t g_144[8][9][3];
    uint32_t g_165;
    int32_t g_166;
    int32_t ** volatile g_169[5][1][10];
    int32_t ** volatile g_170[4];
    int8_t * volatile * volatile g_171;
    int16_t g_231;
    struct S0 g_288;
    struct S0 g_292;
    struct S0 * volatile g_291;
    int32_t g_297;
    int32_t * volatile g_296;
    int8_t g_343;
    volatile uint8_t g_419;
    int64_t g_425;
    volatile int8_t g_449;
    int32_t ** volatile g_481;
    int8_t *g_518;
    int8_t **g_517;
    int8_t ***g_516;
    int8_t g_549[9][7][4];
    uint64_t *** volatile g_581;
    uint64_t *g_584[4];
    uint64_t **g_583;
    uint64_t *** volatile g_582[3][1][9];
    uint64_t *** volatile g_585;
    uint8_t g_612;
    volatile uint8_t g_645;
    int64_t g_669[9][7][4];
    int32_t g_670;
    int32_t g_672;
    uint8_t *g_681;
    int16_t *g_720;
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
struct S0  func_1(struct S1 * p_747);
uint64_t  func_4(int64_t  p_5, struct S1 * p_747);
int8_t  func_9(int32_t  p_10, uint32_t  p_11, struct S1 * p_747);
int32_t * func_12(int32_t * p_13, uint16_t  p_14, uint32_t  p_15, int32_t * p_16, int32_t  p_17, struct S1 * p_747);
int32_t * func_18(int32_t  p_19, struct S1 * p_747);
uint16_t  func_27(uint32_t  p_28, int16_t  p_29, uint32_t  p_30, struct S1 * p_747);
int32_t  func_31(int32_t  p_32, struct S1 * p_747);
int64_t  func_33(int32_t * p_34, uint8_t  p_35, uint32_t  p_36, int32_t * p_37, uint64_t  p_38, struct S1 * p_747);
int32_t * func_39(uint64_t  p_40, int32_t * p_41, int8_t  p_42, int32_t  p_43, struct S1 * p_747);
uint8_t  func_47(uint64_t  p_48, uint64_t  p_49, int32_t * p_50, uint64_t  p_51, struct S1 * p_747);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_747->g_3 p_747->g_291 p_747->g_292
 * writes: p_747->g_3
 */
struct S0  func_1(struct S1 * p_747)
{ /* block id: 4 */
    uint16_t l_2[3];
    int32_t l_667 = 8L;
    int8_t l_686 = (-10L);
    int32_t l_687[7][8][4] = {{{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L}},{{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L}},{{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L}},{{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L}},{{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L}},{{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L}},{{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L},{1L,0x3DA2ECD9L,0x3DA2ECD9L,1L}}};
    uint32_t l_688 = 1UL;
    int16_t *l_719[3];
    int32_t l_744 = (-1L);
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_2[i] = 1UL;
    for (i = 0; i < 3; i++)
        l_719[i] = &p_747->g_26;
    for (p_747->g_3 = 2; (p_747->g_3 >= 0); p_747->g_3 -= 1)
    { /* block id: 7 */
        int64_t *l_668 = &p_747->g_669[7][2][2];
        int32_t *l_671 = &p_747->g_672;
        uint8_t *l_680 = &p_747->g_612;
        uint8_t **l_679[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t *l_682 = &p_747->g_231;
        int32_t l_685[1][10][2] = {{{(-7L),0x1DE7873BL},{(-7L),0x1DE7873BL},{(-7L),0x1DE7873BL},{(-7L),0x1DE7873BL},{(-7L),0x1DE7873BL},{(-7L),0x1DE7873BL},{(-7L),0x1DE7873BL},{(-7L),0x1DE7873BL},{(-7L),0x1DE7873BL},{(-7L),0x1DE7873BL}}};
        int32_t l_740 = 0x0E79F575L;
        int i, j, k;
        (1 + 1);
    }
    return (*p_747->g_291);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_4(int64_t  p_5, struct S1 * p_747)
{ /* block id: 350 */
    int64_t l_661 = 0x11212B879AC0B571L;
    return l_661;
}


/* ------------------------------------------ */
/* 
 * reads : p_747->g_26 p_747->g_comm_values p_747->g_3 p_747->g_55 p_747->g_54 p_747->g_56 p_747->g_84 p_747->g_71 p_747->g_107 p_747->g_110 p_747->g_117 p_747->g_132 p_747->g_133 p_747->g_144 p_747->g_165 p_747->g_166 p_747->g_171 p_747->l_comm_values p_747->g_231 p_747->g_288 p_747->g_291 p_747->g_296 p_747->g_343 p_747->g_292.f1 p_747->g_297 p_747->g_419 p_747->g_292.f0 p_747->g_292.f3 p_747->g_425 p_747->g_481 p_747->g_449 p_747->g_292.f4 p_747->g_516 p_747->g_292 p_747->g_585 p_747->g_517 p_747->g_518
 * writes: p_747->g_26 p_747->g_54 p_747->g_56 p_747->g_71 p_747->g_84 p_747->g_107 p_747->g_110 p_747->g_117 p_747->g_132 p_747->g_133 p_747->g_144 p_747->g_165 p_747->g_166 p_747->g_288 p_747->g_292 p_747->g_297 p_747->g_343 p_747->g_419 p_747->g_55 p_747->g_425 p_747->g_231 p_747->g_516 p_747->g_583
 */
int8_t  func_9(int32_t  p_10, uint32_t  p_11, struct S1 * p_747)
{ /* block id: 8 */
    int32_t *l_44 = &p_747->g_3;
    int8_t *l_342[9][5] = {{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343}};
    int32_t *l_344 = &p_747->g_297;
    int16_t l_658[5][9] = {{0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL},{0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL},{0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL},{0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL},{0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL,0x065EL,(-9L),0x065EL}};
    int32_t **l_660 = &l_344;
    int i, j;
    (*l_660) = func_12(func_18((safe_sub_func_int8_t_s_s((safe_sub_func_int8_t_s_s(((**p_747->g_517) = (((((safe_sub_func_uint32_t_u_u(7UL, (p_747->g_26 ^= 0x7BE2D3D4L))) , func_27(p_11, (func_31((func_33(func_39((l_44 != l_44), (((p_747->g_comm_values[p_747->tid] , ((*l_344) = ((p_747->g_343 &= (safe_add_func_uint8_t_u_u(func_47(p_747->g_comm_values[p_747->tid], p_747->g_26, l_44, p_11, p_747), (-9L)))) | 0x53L))) <= p_10) , (*p_747->g_55)), (*l_44), p_11, p_747), p_11, p_10, l_344, p_11, p_747) > GROUP_DIVERGE(0, 1)), p_747) , p_747->g_133[1]), p_747->g_231, p_747)) && FAKE_DIVERGE(p_747->global_0_offset, get_global_id(0), 10)) <= p_11) <= 0x7967E5B2L)), p_11)), p_10)), p_747), l_658[4][6], (*l_44), l_344, p_11, p_747);
    return (***p_747->g_516);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_12(int32_t * p_13, uint16_t  p_14, uint32_t  p_15, int32_t * p_16, int32_t  p_17, struct S1 * p_747)
{ /* block id: 346 */
    int32_t *l_659 = &p_747->g_3;
    return l_659;
}


/* ------------------------------------------ */
/* 
 * reads : p_747->g_54 p_747->g_71 p_747->g_55
 * writes: p_747->g_117 p_747->g_71 p_747->g_56
 */
int32_t * func_18(int32_t  p_19, struct S1 * p_747)
{ /* block id: 328 */
    uint32_t *l_598 = &p_747->g_110[4];
    uint32_t **l_597 = &l_598;
    uint8_t *l_599 = &p_747->g_117;
    int32_t l_600 = 0x45E67B40L;
    uint16_t *l_605 = &p_747->g_71;
    struct S0 l_610 = {0x54667BE5L,0x765C689EL,6UL,-1L,1L};
    uint8_t *l_611[9] = {&p_747->g_612,&p_747->g_612,&p_747->g_612,&p_747->g_612,&p_747->g_612,&p_747->g_612,&p_747->g_612,&p_747->g_612,&p_747->g_612};
    int32_t l_613[1];
    int32_t l_614 = 0x08A929EBL;
    int32_t *l_617[1][9][10] = {{{&l_614,&l_600,&p_747->g_297,&p_747->g_3,&l_600,&p_747->g_3,&p_747->g_297,&l_600,&l_614,&p_747->g_297},{&l_614,&l_600,&p_747->g_297,&p_747->g_3,&l_600,&p_747->g_3,&p_747->g_297,&l_600,&l_614,&p_747->g_297},{&l_614,&l_600,&p_747->g_297,&p_747->g_3,&l_600,&p_747->g_3,&p_747->g_297,&l_600,&l_614,&p_747->g_297},{&l_614,&l_600,&p_747->g_297,&p_747->g_3,&l_600,&p_747->g_3,&p_747->g_297,&l_600,&l_614,&p_747->g_297},{&l_614,&l_600,&p_747->g_297,&p_747->g_3,&l_600,&p_747->g_3,&p_747->g_297,&l_600,&l_614,&p_747->g_297},{&l_614,&l_600,&p_747->g_297,&p_747->g_3,&l_600,&p_747->g_3,&p_747->g_297,&l_600,&l_614,&p_747->g_297},{&l_614,&l_600,&p_747->g_297,&p_747->g_3,&l_600,&p_747->g_3,&p_747->g_297,&l_600,&l_614,&p_747->g_297},{&l_614,&l_600,&p_747->g_297,&p_747->g_3,&l_600,&p_747->g_3,&p_747->g_297,&l_600,&l_614,&p_747->g_297},{&l_614,&l_600,&p_747->g_297,&p_747->g_3,&l_600,&p_747->g_3,&p_747->g_297,&l_600,&l_614,&p_747->g_297}}};
    int32_t *l_618 = &p_747->g_297;
    int32_t l_629[8] = {0x03FA2440L,0x03FA2440L,0x03FA2440L,0x03FA2440L,0x03FA2440L,0x03FA2440L,0x03FA2440L,0x03FA2440L};
    int32_t l_630 = 0x64E40EE1L;
    int64_t l_632[10][4][5] = {{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}},{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}},{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}},{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}},{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}},{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}},{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}},{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}},{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}},{{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)},{0x08B9629562F19B61L,0x4E53FD21F79FC48FL,0x412B5F62F0C26F32L,0x4E6CD0D21892D23BL,(-8L)}}};
    int32_t **l_636[5][2][1] = {{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}}};
    int32_t *l_637 = &l_613[0];
    int32_t *l_638 = &l_613[0];
    int32_t *l_639 = &p_747->g_297;
    int32_t l_640 = 0L;
    uint32_t *l_653 = &p_747->g_110[8];
    uint64_t *l_654 = &p_747->g_54[1];
    int32_t *l_655 = (void*)0;
    int32_t *l_656 = &l_600;
    int32_t *l_657 = (void*)0;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_613[i] = 0x71453390L;
    if ((safe_sub_func_uint64_t_u_u((safe_mod_func_int16_t_s_s((safe_div_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(((((((*l_599) = (((*l_597) = &p_747->g_110[4]) != (FAKE_DIVERGE(p_747->local_0_offset, get_local_id(0), 10) , &p_747->g_110[3]))) && p_747->g_54[1]) < l_600) , ((safe_rshift_func_uint8_t_u_s(((void*)0 == &p_747->g_583), 2)) || p_19)) & ((l_614 |= (safe_rshift_func_uint16_t_u_u(((*l_605)--), (p_19 == (((safe_sub_func_uint8_t_u_u((l_613[0] = (((l_610 , p_19) , l_605) != l_605)), l_610.f3)) , (void*)0) != l_605))))) < p_19)), (-1L))), 65527UL)), GROUP_DIVERGE(0, 1))), p_19)))
    { /* block id: 334 */
        int32_t *l_615 = &l_600;
        int32_t *l_616[2];
        int i;
        for (i = 0; i < 2; i++)
            l_616[i] = &l_614;
        return l_618;
    }
    else
    { /* block id: 336 */
        int32_t l_619 = 0x028EBBA5L;
        int32_t l_620 = 0L;
        int32_t l_621 = 0x60DDCD88L;
        int32_t l_622 = 0x6C45F31FL;
        int32_t l_623 = (-8L);
        int32_t l_624 = 0L;
        int32_t l_625 = 0x17C8872BL;
        int32_t l_626 = 0x20919F7EL;
        int32_t l_627 = 1L;
        int32_t l_628[10][2][9] = {{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}},{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}},{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}},{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}},{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}},{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}},{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}},{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}},{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}},{{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L},{0L,0L,0L,(-1L),0x6D605C7BL,0x16DE756DL,3L,0L,1L}}};
        int8_t l_631 = 0x4BL;
        uint8_t l_633 = 1UL;
        int i, j, k;
        l_633--;
    }
    l_637 = (void*)0;
    l_656 = ((*p_747->g_55) = l_655);
    return l_657;
}


/* ------------------------------------------ */
/* 
 * reads : p_747->g_288.f1 p_747->g_449 p_747->g_231 p_747->g_117 p_747->g_288.f0 p_747->g_292.f4 p_747->g_288.f2 p_747->g_165 p_747->g_133 p_747->g_288.f3 p_747->g_3 p_747->g_516 p_747->g_292.f3 p_747->g_297 p_747->g_292 p_747->g_585 p_747->g_26
 * writes: p_747->g_84 p_747->g_231 p_747->g_117 p_747->g_297 p_747->g_165 p_747->g_107 p_747->g_516 p_747->g_292.f4 p_747->g_26 p_747->g_292.f1 p_747->g_71 p_747->g_288.f3 p_747->g_583
 */
uint16_t  func_27(uint32_t  p_28, int16_t  p_29, uint32_t  p_30, struct S1 * p_747)
{ /* block id: 257 */
    int32_t *l_482 = &p_747->g_297;
    int32_t **l_483 = &l_482;
    int16_t *l_488 = &p_747->g_231;
    uint8_t *l_489 = &p_747->g_117;
    int32_t l_522 = 0x409B02FBL;
    int32_t l_523[3][6] = {{0x69B3F246L,0x6BCD18B3L,(-1L),0x6BCD18B3L,0x69B3F246L,0x69B3F246L},{0x69B3F246L,0x6BCD18B3L,(-1L),0x6BCD18B3L,0x69B3F246L,0x69B3F246L},{0x69B3F246L,0x6BCD18B3L,(-1L),0x6BCD18B3L,0x69B3F246L,0x69B3F246L}};
    struct S0 *l_553 = &p_747->g_292;
    int i, j;
    (*l_483) = l_482;
    if (((safe_div_func_int16_t_s_s(((+((*l_489) ^= (((p_747->g_84 = (safe_rshift_func_int16_t_s_u(p_747->g_288.f1, p_747->g_449))) == ((*l_488) |= p_30)) | ((p_28 ^ (((&p_747->g_56 == &p_747->g_56) , l_489) == (void*)0)) ^ 0UL)))) >= p_28), 65535UL)) && p_747->g_288.f0))
    { /* block id: 262 */
        uint64_t l_499 = 0xC8A15D8FE355048BL;
        int32_t l_501 = 0x0430DB92L;
        int32_t l_515 = 1L;
        int8_t ***l_520 = &p_747->g_517;
        (*l_482) = (safe_add_func_uint8_t_u_u(p_747->g_292.f4, ((p_747->g_231 && (p_747->g_288.f2 < 0x1FL)) , p_28)));
        for (p_747->g_165 = 0; (p_747->g_165 <= 8); p_747->g_165 += 1)
        { /* block id: 266 */
            uint8_t *l_498[2][1][1];
            int8_t *l_500[2];
            int32_t l_514 = 0x1FB031F4L;
            int8_t ****l_519 = &p_747->g_516;
            int i, j, k;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_498[i][j][k] = (void*)0;
                }
            }
            for (i = 0; i < 2; i++)
                l_500[i] = &p_747->g_343;
            (*l_482) |= (safe_add_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(((((*l_519) = ((p_747->g_133[2] , (((l_499 = (--(*l_489))) ^ (l_501 = p_747->g_288.f3)) == (safe_mul_func_int16_t_s_s((p_747->g_107 = (p_747->g_231 ^= (0x6EL < (p_28 && (((safe_lshift_func_int16_t_s_s(0x488FL, 1)) <= (safe_rshift_func_int8_t_s_u((p_747->g_133[5] , ((GROUP_DIVERGE(2, 1) , (safe_sub_func_int64_t_s_s(0x529F1E7466D492B1L, (((safe_add_func_int32_t_s_s((((((safe_mul_func_uint16_t_u_u((((l_514 , (p_747->g_133[0] , 0x05D855CEDE1F16ACL)) ^ p_30) == p_747->g_3), 0L)) < 3UL) < p_747->g_288.f0) < l_514) != p_28), 4294967294UL)) <= 0UL) ^ 3UL)))) , p_29)), 3))) > p_30))))), l_515)))) , p_747->g_516)) != l_520) != 0UL), p_747->g_292.f3)), p_30));
        }
    }
    else
    { /* block id: 275 */
        int32_t *l_521[1][1][6] = {{{&p_747->g_297,&p_747->g_297,&p_747->g_297,&p_747->g_297,&p_747->g_297,&p_747->g_297}}};
        uint8_t l_524 = 0xA9L;
        uint16_t l_539 = 0x2728L;
        uint64_t *l_578 = &p_747->g_54[1];
        uint64_t **l_577 = &l_578;
        int i, j, k;
        l_524++;
lbl_586:
        for (p_747->g_297 = 0; (p_747->g_297 <= 0); ++p_747->g_297)
        { /* block id: 279 */
            uint32_t l_529 = 0x22046781L;
            int32_t *l_536[8][10][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int i, j, k;
            l_529++;
            for (p_747->g_292.f4 = 0; (p_747->g_292.f4 > (-15)); p_747->g_292.f4--)
            { /* block id: 283 */
                (*l_483) = (*l_483);
                for (p_29 = 0; (p_29 > 19); p_29++)
                { /* block id: 287 */
                    l_536[7][9][0] = (*l_483);
                }
            }
            for (p_747->g_26 = 0; (p_747->g_26 < 4); p_747->g_26 = safe_add_func_uint16_t_u_u(p_747->g_26, 8))
            { /* block id: 293 */
                l_539++;
            }
        }
        for (p_747->g_117 = 10; (p_747->g_117 == 42); p_747->g_117 = safe_add_func_uint32_t_u_u(p_747->g_117, 5))
        { /* block id: 299 */
            int8_t *l_548 = &p_747->g_549[3][6][1];
            uint16_t l_550 = 7UL;
            int32_t *l_554 = &l_523[0][4];
            (1 + 1);
        }
        for (p_747->g_292.f1 = 0; (p_747->g_292.f1 <= 42); p_747->g_292.f1++)
        { /* block id: 316 */
            struct S0 **l_569 = (void*)0;
            uint16_t *l_570 = (void*)0;
            uint16_t *l_571 = &p_747->g_71;
            int64_t *l_576 = &p_747->g_288.f3;
            uint64_t ***l_579 = (void*)0;
            uint64_t ***l_580 = (void*)0;
            (**l_483) ^= (safe_sub_func_int64_t_s_s((p_29 && ((*l_553) , p_747->g_292.f1)), (!(safe_mul_func_uint16_t_u_u(((*l_571) = (l_569 == &p_747->g_291)), ((safe_rshift_func_int16_t_s_s(p_747->g_133[0], ((safe_mod_func_int64_t_s_s(((*l_576) = (+(((*l_553) , ((l_570 = (void*)0) == (void*)0)) , 8L))), 0x48573EF26607FF3EL)) , 0x63AEL))) != GROUP_DIVERGE(1, 1)))))));
            (*p_747->g_585) = l_577;
            if (p_747->g_165)
                goto lbl_586;
        }
    }
    (*l_483) = (*l_483);
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_747->g_292.f1 p_747->g_133 p_747->g_288.f3 p_747->g_296 p_747->g_297 p_747->g_55 p_747->g_419 p_747->g_292.f0 p_747->g_110 p_747->g_144 p_747->g_292.f3 p_747->g_26 p_747->g_425 p_747->g_481
 * writes: p_747->g_292.f1 p_747->g_292.f3 p_747->g_292.f2 p_747->g_56 p_747->g_132 p_747->g_419 p_747->g_55 p_747->g_292.f0 p_747->g_297 p_747->g_425 p_747->g_288
 */
int32_t  func_31(int32_t  p_32, struct S1 * p_747)
{ /* block id: 192 */
    struct S0 l_376 = {0x0BE902A8L,4294967295UL,0UL,-1L,0x20ECL};
    int32_t l_377 = 9L;
    int32_t *l_403 = &p_747->g_297;
    int32_t l_412[5] = {0x29A70162L,0x29A70162L,0x29A70162L,0x29A70162L,0x29A70162L};
    int32_t l_413[7];
    uint32_t l_460[1];
    uint32_t l_464 = 1UL;
    int16_t *l_477 = &p_747->g_132;
    uint32_t *l_480 = &l_460[0];
    int i;
    for (i = 0; i < 7; i++)
        l_413[i] = 0L;
    for (i = 0; i < 1; i++)
        l_460[i] = 1UL;
    for (p_747->g_292.f1 = 0; (p_747->g_292.f1 <= 0); p_747->g_292.f1 += 1)
    { /* block id: 195 */
        int32_t **l_375[2][3][7];
        uint8_t l_378 = 6UL;
        int32_t **l_423 = &p_747->g_56;
        int16_t l_446 = 1L;
        struct S0 l_447 = {-1L,0x94B680EEL,0xF3DB7550L,0x3C937CF0BBCD5209L,1L};
        int64_t l_456[4][6] = {{7L,0x757464505375B085L,0x757464505375B085L,7L,7L,0x757464505375B085L},{7L,0x757464505375B085L,0x757464505375B085L,7L,7L,0x757464505375B085L},{7L,0x757464505375B085L,0x757464505375B085L,7L,7L,0x757464505375B085L},{7L,0x757464505375B085L,0x757464505375B085L,7L,7L,0x757464505375B085L}};
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 3; j++)
            {
                for (k = 0; k < 7; k++)
                    l_375[i][j][k] = (void*)0;
            }
        }
        for (p_747->g_292.f3 = 0; (p_747->g_292.f3 >= 0); p_747->g_292.f3 -= 1)
        { /* block id: 198 */
            struct S0 *l_382 = (void*)0;
            struct S0 **l_381 = &l_382;
            int32_t l_384[6];
            int16_t l_402 = 0x3372L;
            int32_t *l_422 = &p_747->g_297;
            int8_t l_424 = 0x6FL;
            int i;
            for (i = 0; i < 6; i++)
                l_384[i] = 0x2D2676F9L;
            l_377 = (safe_rshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u((l_375[0][2][3] == (l_376 , &p_747->g_56)), 0)) <= (~(p_747->g_133[(p_747->g_292.f1 + 8)] <= 2UL))), p_747->g_133[(p_747->g_292.f1 + 6)])), (((p_747->g_288.f3 , ((((p_32 | 0UL) && p_747->g_133[(p_747->g_292.f1 + 6)]) && p_747->g_133[(p_747->g_292.f1 + 8)]) , &p_747->g_231)) == &p_747->g_132) != p_32)));
            --l_378;
            (*l_381) = (void*)0;
            for (l_376.f4 = 6; (l_376.f4 >= 0); l_376.f4 -= 1)
            { /* block id: 204 */
                uint16_t *l_383[5][7] = {{&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71},{&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71},{&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71},{&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71},{&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71,&p_747->g_71}};
                struct S0 **l_401[10] = {&l_382,&l_382,&l_382,&l_382,&l_382,&l_382,&l_382,&l_382,&l_382,&l_382};
                int32_t l_417 = (-5L);
                int32_t l_418 = (-2L);
                int32_t *l_433 = &p_747->g_3;
                int8_t *l_436[2][10][2] = {{{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424}},{{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424},{&l_424,&l_424}}};
                struct S0 l_448 = {0x10DA61B8L,0x5F66C8AFL,0xFD6C5854L,8L,-3L};
                int32_t l_450 = (-5L);
                int32_t l_451 = 0x699A4875L;
                int32_t l_452 = 0x53D08544L;
                int32_t l_454 = 0L;
                int32_t l_455 = 0x619E78EFL;
                int32_t l_459[6][2][2] = {{{(-8L),0x6D9CE5A0L},{(-8L),0x6D9CE5A0L}},{{(-8L),0x6D9CE5A0L},{(-8L),0x6D9CE5A0L}},{{(-8L),0x6D9CE5A0L},{(-8L),0x6D9CE5A0L}},{{(-8L),0x6D9CE5A0L},{(-8L),0x6D9CE5A0L}},{{(-8L),0x6D9CE5A0L},{(-8L),0x6D9CE5A0L}},{{(-8L),0x6D9CE5A0L},{(-8L),0x6D9CE5A0L}}};
                int i, j, k;
                l_377 = 0x4AB76CD8L;
                for (p_747->g_292.f2 = 0; (p_747->g_292.f2 <= 0); p_747->g_292.f2 += 1)
                { /* block id: 208 */
                    return p_32;
                }
                if (((l_384[0] = p_32) , (((+p_32) & 0L) | (safe_div_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(1UL, (FAKE_DIVERGE(p_747->local_1_offset, get_local_id(1), 10) != p_32))), (safe_mod_func_uint64_t_u_u((((safe_sub_func_int8_t_s_s(((safe_sub_func_int32_t_s_s((safe_mul_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(((-1L) <= (((((p_32 , (l_401[3] == l_401[5])) , &l_382) == (void*)0) >= l_402) , 0UL)), 1UL)) || 0x35L), 6UL)), (*p_747->g_296))) , p_747->g_133[(p_747->g_292.f1 + 6)]), 1L)) == FAKE_DIVERGE(p_747->global_1_offset, get_global_id(1), 10)) & 1L), FAKE_DIVERGE(p_747->local_0_offset, get_local_id(0), 10))))))))
                { /* block id: 212 */
                    int32_t *l_404 = &l_384[0];
                    int32_t l_405 = 0x6648F4F1L;
                    int32_t l_407 = 0x5871D8B3L;
                    int32_t l_411 = 0x396FF2EBL;
                    int32_t l_414 = 0x74D82FE0L;
                    int32_t l_416[4][6][4] = {{{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L}},{{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L}},{{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L}},{{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L},{0L,0x4AEAEEC1L,0x1CDC7BFCL,0x4AEAEEC1L}}};
                    int i, j, k;
                    (*p_747->g_55) = (l_403 = &l_377);
                    for (p_747->g_132 = 0; (p_747->g_132 <= 6); p_747->g_132 += 1)
                    { /* block id: 217 */
                        int16_t l_406 = 0L;
                        int32_t l_408 = 0x6FB86D64L;
                        int32_t l_409 = 9L;
                        int32_t l_410 = 0x77C1CED1L;
                        int32_t l_415 = (-5L);
                        l_404 = &l_377;
                        if ((*l_404))
                            break;
                        p_747->g_419--;
                        return p_32;
                    }
                    l_422 = &l_412[4];
                    if (p_32)
                        break;
                }
                else
                { /* block id: 225 */
                    uint32_t l_426 = 0x4F955292L;
                    p_747->g_55 = l_423;
                    l_426--;
                }
                for (p_747->g_292.f0 = 1; (p_747->g_292.f0 <= 6); p_747->g_292.f0 += 1)
                { /* block id: 231 */
                    int16_t l_445 = (-1L);
                    int32_t l_453 = 0x3AAB625AL;
                    int32_t l_457 = 4L;
                    int32_t l_458 = 1L;
                    int i;
                    l_384[0] = ((safe_add_func_uint64_t_u_u((safe_add_func_int8_t_s_s(((l_413[(p_747->g_292.f1 + 6)] , &l_384[3]) != (p_747->g_110[1] , l_433)), (p_747->g_144[7][3][0] , (safe_add_func_int16_t_s_s(((l_436[1][0][1] != l_436[1][0][1]) < (p_32 >= (safe_rshift_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_747->global_2_offset, get_global_id(2), 10), ((((((safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s(((*l_403) = l_445), p_32)), p_32)) , p_747->g_288.f3) , p_32) && p_32) > 0x2D400F4E07492FAFL) , p_747->g_26))), 6)))), 0x69C8L))))), l_446)) , 0x04714A1DL);
                    l_448 = l_447;
                    for (p_747->g_425 = 6; (p_747->g_425 >= 2); p_747->g_425 -= 1)
                    { /* block id: 237 */
                        p_747->g_288 = l_447;
                    }
                    --l_460[0];
                }
            }
        }
        for (p_747->g_292.f3 = 2; (p_747->g_292.f3 <= 6); p_747->g_292.f3 += 1)
        { /* block id: 246 */
            uint8_t l_463 = 0x3CL;
            return l_463;
        }
        if ((*l_403))
            break;
    }
    l_464 ^= p_32;
    (*p_747->g_481) = &l_412[0];
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_747->g_133
 * writes:
 */
int64_t  func_33(int32_t * p_34, uint8_t  p_35, uint32_t  p_36, int32_t * p_37, uint64_t  p_38, struct S1 * p_747)
{ /* block id: 190 */
    return p_747->g_133[8];
}


/* ------------------------------------------ */
/* 
 * reads : p_747->g_291 p_747->g_288.f1 p_747->g_292.f1 p_747->g_56 p_747->g_3 p_747->g_110
 * writes: p_747->g_292 p_747->g_56
 */
int32_t * func_39(uint64_t  p_40, int32_t * p_41, int8_t  p_42, int32_t  p_43, struct S1 * p_747)
{ /* block id: 185 */
    uint8_t l_348 = 0x5FL;
    struct S0 l_355 = {7L,0UL,0x03A05312L,0x44BD882704FFF948L,0x47ECL};
    int8_t *l_364[6][4] = {{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343},{&p_747->g_343,&p_747->g_343,&p_747->g_343,&p_747->g_343}};
    int32_t l_365[2][3] = {{(-4L),0x51B1D076L,(-4L)},{(-4L),0x51B1D076L,(-4L)}};
    uint64_t l_366[10] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
    int32_t **l_367 = &p_747->g_56;
    int32_t *l_368 = &p_747->g_3;
    int i, j;
    (*l_367) = (((safe_lshift_func_int16_t_s_u(p_40, ((safe_unary_minus_func_int32_t_s((l_348 ^ (safe_sub_func_int8_t_s_s(((safe_div_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((!(((*p_747->g_291) = l_355) , (2UL && (((safe_div_func_int8_t_s_s((l_365[0][1] = (((-1L) <= FAKE_DIVERGE(p_747->local_0_offset, get_local_id(0), 10)) != (p_40 < ((safe_sub_func_uint16_t_u_u((!p_43), (1UL <= (((~(safe_rshift_func_uint8_t_u_s(((void*)0 == &p_747->g_171), p_42))) , (-10L)) < p_747->g_288.f1)))) == p_747->g_292.f1)))), p_747->g_292.f1)) , l_366[9]) | l_366[9])))), 0x443DL)), (*p_747->g_56))) , (-1L)), p_747->g_110[1]))))) ^ 0x1DF2DCF23DB8272EL))) & 0x00L) , &p_43);
    return l_368;
}


/* ------------------------------------------ */
/* 
 * reads : p_747->g_3 p_747->g_55 p_747->g_54 p_747->g_56 p_747->g_comm_values p_747->g_84 p_747->g_71 p_747->g_107 p_747->g_110 p_747->g_117 p_747->g_132 p_747->g_133 p_747->g_144 p_747->g_165 p_747->g_166 p_747->g_171 p_747->l_comm_values p_747->g_231 p_747->g_26 p_747->g_288 p_747->g_291 p_747->g_296
 * writes: p_747->g_54 p_747->g_56 p_747->g_71 p_747->g_84 p_747->g_107 p_747->g_110 p_747->g_117 p_747->g_132 p_747->g_133 p_747->g_144 p_747->g_165 p_747->g_166 p_747->g_288 p_747->g_292 p_747->g_297 p_747->g_26
 */
uint8_t  func_47(uint64_t  p_48, uint64_t  p_49, int32_t * p_50, uint64_t  p_51, struct S1 * p_747)
{ /* block id: 10 */
    int32_t *l_52 = &p_747->g_3;
    uint64_t *l_53 = &p_747->g_54[0];
    int8_t l_57 = (-4L);
    int32_t l_82 = 0L;
    int32_t l_83 = 0x5C27B9F0L;
    uint16_t *l_105 = &p_747->g_84;
    int8_t *l_135[10] = {&l_57,&l_57,&l_57,&l_57,&l_57,&l_57,&l_57,&l_57,&l_57,&l_57};
    int32_t l_214 = 4L;
    int32_t l_216[7][9][4] = {{{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)}},{{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)}},{{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)}},{{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)}},{{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)}},{{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)}},{{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)},{2L,4L,0x3CAB004AL,(-10L)}}};
    struct S0 l_234 = {2L,0x3F386992L,8UL,0x59BE98C5AC05FD57L,0x64F3L};
    uint64_t l_304 = 0x4B730C5E3A8EF332L;
    int i, j, k;
lbl_323:
    if ((((*p_50) > (l_52 == (void*)0)) || ((*l_53) = 0x5B0D6B1F8487B254L)))
    { /* block id: 12 */
        uint32_t l_72[8] = {0xA102A83CL,0xEE7416AFL,0xA102A83CL,0xA102A83CL,0xEE7416AFL,0xA102A83CL,0xA102A83CL,0xEE7416AFL};
        int32_t l_73 = 0x33BE7B8BL;
        int32_t *l_96[7] = {(void*)0,&l_82,(void*)0,(void*)0,&l_82,(void*)0,(void*)0};
        int32_t *l_98[8][1][10] = {{{&p_747->g_3,&l_83,&l_82,&p_747->g_3,&l_82,&l_82,&p_747->g_3,&l_82,&l_83,&p_747->g_3}},{{&p_747->g_3,&l_83,&l_82,&p_747->g_3,&l_82,&l_82,&p_747->g_3,&l_82,&l_83,&p_747->g_3}},{{&p_747->g_3,&l_83,&l_82,&p_747->g_3,&l_82,&l_82,&p_747->g_3,&l_82,&l_83,&p_747->g_3}},{{&p_747->g_3,&l_83,&l_82,&p_747->g_3,&l_82,&l_82,&p_747->g_3,&l_82,&l_83,&p_747->g_3}},{{&p_747->g_3,&l_83,&l_82,&p_747->g_3,&l_82,&l_82,&p_747->g_3,&l_82,&l_83,&p_747->g_3}},{{&p_747->g_3,&l_83,&l_82,&p_747->g_3,&l_82,&l_82,&p_747->g_3,&l_82,&l_83,&p_747->g_3}},{{&p_747->g_3,&l_83,&l_82,&p_747->g_3,&l_82,&l_82,&p_747->g_3,&l_82,&l_83,&p_747->g_3}},{{&p_747->g_3,&l_83,&l_82,&p_747->g_3,&l_82,&l_82,&p_747->g_3,&l_82,&l_83,&p_747->g_3}}};
        int i, j, k;
lbl_91:
        for (p_48 = 0; (p_48 <= 6); p_48 += 1)
        { /* block id: 15 */
            uint32_t l_66 = 0x7F9B64A4L;
            int32_t l_69 = 0x087D1731L;
            for (p_51 = 0; (p_51 <= 6); p_51 += 1)
            { /* block id: 18 */
                uint16_t *l_70 = &p_747->g_71;
                int32_t *l_74 = &l_69;
                int32_t *l_75 = &l_69;
                int32_t *l_76 = (void*)0;
                int32_t *l_77 = (void*)0;
                int32_t *l_78 = &l_69;
                int32_t *l_79 = &l_69;
                int32_t *l_80 = &l_73;
                int32_t *l_81[4][6];
                int i, j;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 6; j++)
                        l_81[i][j] = &l_73;
                }
                (*p_747->g_55) = &p_747->g_3;
                l_72[0] &= ((((p_747->g_54[p_48] , (((0x345464CDL || (l_57 < ((*l_70) = (safe_mul_func_uint16_t_u_u(p_51, (safe_div_func_int8_t_s_s(((!(((safe_mul_func_int16_t_s_s(((void*)0 == &p_747->g_54[6]), ((safe_lshift_func_int16_t_s_u((((l_66 = (**p_747->g_55)) >= (*p_747->g_56)) > (((!(safe_lshift_func_uint16_t_u_u(p_48, (*l_52)))) < 0UL) , (*l_52))), p_747->g_54[5])) != p_51))) , p_747->g_comm_values[p_747->tid]) && p_747->g_comm_values[p_747->tid])) && 0x56L), l_69))))))) ^ l_69) , p_51)) | 0x5DB2L) <= p_747->g_54[5]) & p_49);
                --p_747->g_84;
                if ((**p_747->g_55))
                    continue;
            }
        }
        for (p_747->g_71 = 0; (p_747->g_71 < 23); p_747->g_71 = safe_add_func_uint32_t_u_u(p_747->g_71, 3))
        { /* block id: 29 */
            for (p_747->g_84 = 0; (p_747->g_84 <= 7); p_747->g_84 += 1)
            { /* block id: 32 */
                int i;
                return l_72[p_747->g_84];
            }
        }
        for (p_49 = (-20); (p_49 > 25); ++p_49)
        { /* block id: 38 */
            uint8_t l_111 = 0x28L;
            struct S0 l_116 = {0x4C0ED61DL,0xEE10C307L,0xE446C729L,1L,0x2FFDL};
            int8_t *l_120 = &l_57;
            int32_t l_143[8][5][6] = {{{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L}},{{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L}},{{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L}},{{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L}},{{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L}},{{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L}},{{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L}},{{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L},{0x437AD794L,0x165012FDL,0x437AD794L,0x437AD794L,0x165012FDL,0x437AD794L}}};
            int i, j, k;
            (*p_747->g_55) = p_50;
            if (p_747->g_71)
                goto lbl_91;
            if (((void*)0 != p_50))
            { /* block id: 41 */
                int8_t *l_121[3];
                int32_t l_134 = 0L;
                int64_t *l_138 = (void*)0;
                int64_t *l_139 = &p_747->g_133[5];
                int i, j;
                for (i = 0; i < 3; i++)
                    l_121[i] = &l_57;
                for (p_48 = 22; (p_48 < 29); p_48 = safe_add_func_uint16_t_u_u(p_48, 1))
                { /* block id: 44 */
                    int32_t **l_97[2];
                    int8_t *l_106[9][6] = {{&l_57,&l_57,(void*)0,&l_57,&l_57,&l_57},{&l_57,&l_57,(void*)0,&l_57,&l_57,&l_57},{&l_57,&l_57,(void*)0,&l_57,&l_57,&l_57},{&l_57,&l_57,(void*)0,&l_57,&l_57,&l_57},{&l_57,&l_57,(void*)0,&l_57,&l_57,&l_57},{&l_57,&l_57,(void*)0,&l_57,&l_57,&l_57},{&l_57,&l_57,(void*)0,&l_57,&l_57,&l_57},{&l_57,&l_57,(void*)0,&l_57,&l_57,&l_57},{&l_57,&l_57,(void*)0,&l_57,&l_57,&l_57}};
                    uint32_t *l_108 = (void*)0;
                    uint32_t *l_109 = &p_747->g_110[4];
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_97[i] = &l_52;
                    l_73 = (safe_div_func_uint8_t_u_u((((&l_83 != (l_98[3][0][0] = (l_96[4] = (*p_747->g_55)))) != p_51) > (p_747->g_84 <= (safe_div_func_int64_t_s_s(((p_747->g_54[0] && (safe_mul_func_int8_t_s_s((p_747->g_comm_values[p_747->tid] , (((*l_109) &= (safe_add_func_uint64_t_u_u(((p_747->g_107 &= (((void*)0 != p_50) , ((void*)0 == l_105))) > 0x66L), l_72[0]))) , p_747->g_comm_values[p_747->tid])), p_747->g_54[1]))) && (-1L)), 5UL)))), l_111));
                    return p_49;
                }
                l_134 |= (p_747->g_133[5] = (((((p_747->g_132 |= (((safe_rshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u(p_747->g_84, GROUP_DIVERGE(1, 1))), ((l_116 , ((((++p_747->g_117) < (l_120 != l_121[2])) , p_747->g_54[0]) , (safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((p_50 != (void*)0) | ((safe_add_func_int16_t_s_s(((safe_div_func_uint32_t_u_u(((safe_add_func_uint64_t_u_u(18446744073709551612UL, p_747->g_84)) , FAKE_DIVERGE(p_747->local_0_offset, get_local_id(0), 10)), (*l_52))) == p_48), p_48)) >= 1UL)), p_747->g_71)), l_111)))) , 1UL))) | p_747->g_3) <= GROUP_DIVERGE(1, 1))) | 0x263CL) | p_49) > 4L) & p_51));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_747->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 44)), permutations[(safe_mod_func_uint32_t_u_u(((((l_116 , l_135[6]) != l_121[2]) && ((l_134 < ((safe_lshift_func_uint8_t_u_u(p_51, (4UL || ((*l_139) ^= l_116.f3)))) <= (((void*)0 != p_50) , GROUP_DIVERGE(1, 1)))) == p_747->g_comm_values[p_747->tid])) , 0x75F86E74L), 10))][(safe_mod_func_uint32_t_u_u(p_747->tid, 44))]));
            }
            else
            { /* block id: 60 */
                int32_t l_162 = 0x739273CAL;
                int32_t l_163 = (-10L);
                for (l_57 = 21; (l_57 > 16); l_57--)
                { /* block id: 63 */
                    uint16_t l_153 = 0x7019L;
                    int8_t **l_167[3][7] = {{&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120},{&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120},{&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120}};
                    int i, j;
                    p_747->g_144[5][2][2]--;
                    for (p_747->g_107 = 22; (p_747->g_107 != (-22)); p_747->g_107--)
                    { /* block id: 67 */
                        return p_747->g_107;
                    }
                    if ((l_162 = ((*p_50) ^ (safe_add_func_int32_t_s_s(((safe_lshift_func_uint16_t_u_s(p_747->g_54[5], (((void*)0 != &p_747->g_133[5]) >= (l_153 | ((p_51 == (safe_sub_func_uint16_t_u_u((((l_163 ^= (safe_mul_func_uint8_t_u_u((+(p_48 ^ ((~(safe_mul_func_int8_t_s_s((*l_52), ((safe_div_func_int16_t_s_s((-2L), 0x0D2DL)) > 0x7A8ED5CDA24EF59AL)))) == 0x1388AF46972AC2E0L))), l_162))) && p_48) , 0x1DE3L), l_153))) & p_747->g_144[0][8][1]))))) || 0x2B0BF173L), p_49)))))
                    { /* block id: 72 */
                        int32_t **l_164 = &l_98[7][0][9];
                        if ((*p_50))
                            break;
                        (*l_164) = &l_143[5][2][3];
                        p_747->g_166 |= (p_747->g_165 &= (**p_747->g_55));
                    }
                    else
                    { /* block id: 77 */
                        int8_t ***l_168 = &l_167[0][1];
                        (*l_168) = l_167[0][1];
                    }
                }
            }
            l_96[4] = (*p_747->g_55);
        }
        l_83 &= (p_747->g_171 == &l_135[6]);
    }
    else
    { /* block id: 85 */
        int64_t *l_178 = (void*)0;
        int64_t *l_179 = (void*)0;
        int64_t *l_180 = &p_747->g_133[7];
        uint8_t *l_187[4];
        uint16_t l_188[8][9][3] = {{{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL}},{{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL}},{{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL}},{{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL}},{{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL}},{{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL}},{{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL}},{{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL},{0x856EL,6UL,5UL}}};
        int32_t l_197 = 0x2569A2F9L;
        int32_t l_220 = 0x53434192L;
        int32_t l_221[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
        struct S0 l_235 = {0x20DEA9A4L,0xCD2E62A7L,0UL,0x57B6072370158405L,0x3E70L};
        uint64_t l_320 = 0x8480836A69DA250BL;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_187[i] = &p_747->g_117;
        if (((safe_sub_func_int16_t_s_s((safe_add_func_int64_t_s_s(((*l_180) = ((safe_mul_func_uint16_t_u_u(0x6054L, p_747->g_166)) ^ 4294967286UL)), (safe_rshift_func_uint16_t_u_s((0L < ((FAKE_DIVERGE(p_747->group_2_offset, get_group_id(2), 10) & (safe_mod_func_int8_t_s_s((((safe_div_func_uint8_t_u_u(((l_188[4][2][0] ^= 0x49L) || (l_82 = (safe_div_func_uint8_t_u_u(((l_83 ^= (safe_sub_func_int16_t_s_s((l_188[7][3][1] != ((*l_105) = (0x78L >= ((safe_add_func_int32_t_s_s((*p_747->g_56), (!p_747->g_144[1][5][0]))) , p_49)))), (-1L)))) ^ l_188[6][1][2]), l_188[5][4][0])))), p_747->g_3)) ^ p_747->l_comm_values[(safe_mod_func_uint32_t_u_u(p_747->tid, 44))]) == p_747->l_comm_values[(safe_mod_func_uint32_t_u_u(p_747->tid, 44))]), l_197))) , p_747->g_comm_values[p_747->tid])), p_747->g_132)))), l_197)) == (*p_747->g_56)))
        { /* block id: 91 */
            int32_t l_209 = 0L;
            int32_t l_217 = 0x644F0659L;
            int32_t l_218 = 0L;
            int32_t l_219 = 0x2078140AL;
            int32_t l_222 = 0L;
            int32_t l_223 = 0L;
            int32_t l_224[5][3] = {{0x1D3EF5ECL,0x1D3EF5ECL,0x69E6E954L},{0x1D3EF5ECL,0x1D3EF5ECL,0x69E6E954L},{0x1D3EF5ECL,0x1D3EF5ECL,0x69E6E954L},{0x1D3EF5ECL,0x1D3EF5ECL,0x69E6E954L},{0x1D3EF5ECL,0x1D3EF5ECL,0x69E6E954L}};
            uint64_t l_249 = 18446744073709551613UL;
            int64_t *l_276 = &p_747->g_133[2];
            uint8_t *l_283 = &p_747->g_117;
            int i, j;
            for (l_82 = 0; (l_82 == (-27)); l_82 = safe_sub_func_uint16_t_u_u(l_82, 5))
            { /* block id: 94 */
                int32_t l_202 = (-4L);
                int32_t *l_203 = (void*)0;
                int32_t *l_204 = &l_83;
                int32_t *l_205 = &l_83;
                int32_t *l_206 = &l_197;
                int32_t *l_207 = &l_197;
                int32_t *l_208 = &l_83;
                int32_t *l_210 = &l_83;
                int32_t *l_211 = &l_209;
                int32_t *l_212 = &l_197;
                int32_t *l_213[1][1][2];
                int16_t l_215 = 0x3547L;
                uint32_t l_225 = 0xC1AABA1BL;
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_213[i][j][k] = (void*)0;
                    }
                }
                for (l_197 = 16; (l_197 <= (-2)); l_197--)
                { /* block id: 97 */
                    return l_202;
                }
                l_225++;
                if ((safe_unary_minus_func_uint64_t_u(((safe_sub_func_int64_t_s_s(((*l_180) = l_220), 0x619964F89DE46F39L)) & p_747->g_231))))
                { /* block id: 102 */
                    for (l_202 = 0; (l_202 <= (-5)); --l_202)
                    { /* block id: 105 */
                        return p_51;
                    }
                    l_235 = l_234;
                }
                else
                { /* block id: 109 */
                    int16_t l_250 = (-1L);
                    if ((*p_50))
                        break;
                    (*l_205) |= ((((safe_unary_minus_func_int32_t_s(((*p_50) >= ((safe_add_func_uint8_t_u_u((*l_52), ((0x7F73B421L >= l_209) >= (((*l_180) = p_747->g_144[5][2][2]) , (p_51 , ((safe_mul_func_int8_t_s_s(l_235.f3, ((safe_add_func_int8_t_s_s((((safe_div_func_int32_t_s_s((((safe_sub_func_uint32_t_u_u((l_235.f2 , (safe_mod_func_uint16_t_u_u(p_747->g_71, l_249))), l_188[4][5][1])) , p_48) , (**p_747->g_55)), l_250)) != 18446744073709551612UL) && (*l_207)), p_51)) , p_51))) , p_747->g_26)))))) , 4294967292UL)))) <= p_49) || p_747->g_117) , (-1L));
                }
            }
            if ((&l_220 != ((safe_mod_func_uint64_t_u_u(p_51, (((((l_221[7] || ((safe_rshift_func_int8_t_s_s((safe_div_func_int8_t_s_s(2L, (0x4D15634A3F4E828CL & ((safe_add_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(1UL, ((safe_div_func_int32_t_s_s(0x694800F8L, (*p_747->g_56))) <= ((GROUP_DIVERGE(1, 1) > (-2L)) <= (*l_52))))), p_747->g_165)) | 0UL)))), 0)) , 0L)) | (*l_52)) | l_188[4][2][0]) , l_234) , p_747->g_54[5]))) , &l_221[0])))
            { /* block id: 115 */
                for (p_747->g_165 = 6; (p_747->g_165 < 16); ++p_747->g_165)
                { /* block id: 118 */
                    return p_747->g_3;
                }
                return p_747->g_71;
            }
            else
            { /* block id: 122 */
                int32_t *l_295 = (void*)0;
                if ((safe_rshift_func_uint16_t_u_s(((*l_105) = (((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_747->group_2_offset, get_group_id(2), 10), (p_747->g_3 == ((p_51 && (safe_unary_minus_func_uint8_t_u(p_747->g_107))) | ((safe_rshift_func_int8_t_s_u((safe_sub_func_int8_t_s_s((safe_mod_func_int16_t_s_s((&p_747->g_133[5] == l_276), p_747->g_107)), ((((p_747->g_231 <= (safe_lshift_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(((safe_mod_func_int16_t_s_s((((*l_53) = ((l_187[2] != l_135[6]) < (-4L))) != p_747->g_144[5][2][2]), p_747->g_comm_values[p_747->tid])) == l_224[2][0]), 0x7BD6L)), 2))) < p_49) & p_747->g_3) < p_747->g_133[2]))), 2)) || p_51))))) , l_283) == (void*)0)), 9)))
                { /* block id: 125 */
                    int32_t *l_287 = &l_209;
                    for (l_234.f1 = 0; (l_234.f1 == 22); l_234.f1 = safe_add_func_int32_t_s_s(l_234.f1, 7))
                    { /* block id: 128 */
                        int32_t *l_286 = &l_83;
                        (*l_286) = 0x66013AF1L;
                    }
                    (*l_287) &= (l_235.f2 <= FAKE_DIVERGE(p_747->group_1_offset, get_group_id(1), 10));
                }
                else
                { /* block id: 132 */
                    for (p_747->g_71 = 0; (p_747->g_71 <= 9); p_747->g_71 += 1)
                    { /* block id: 135 */
                        struct S0 *l_289 = &p_747->g_288;
                        struct S0 *l_290 = &l_235;
                        int i;
                        (*p_747->g_291) = ((*l_290) = ((*l_289) = p_747->g_288));
                        (*p_747->g_296) = (p_48 <= ((*p_747->g_55) == ((*l_52) , l_295)));
                        return l_235.f3;
                    }
                }
            }
        }
        else
        { /* block id: 144 */
            int32_t *l_298 = &l_221[0];
            int32_t *l_299 = &l_216[0][3][0];
            int32_t *l_300 = (void*)0;
            int32_t *l_301[9] = {&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82,&l_82};
            int8_t l_302 = 0x48L;
            int8_t l_303 = (-1L);
            int32_t l_317 = (-5L);
            int i;
            l_304++;
            if (l_221[1])
            { /* block id: 146 */
                uint32_t l_307 = 0x3A5E4534L;
                return l_307;
            }
            else
            { /* block id: 148 */
                int16_t l_311 = 0x147AL;
                int32_t l_312 = 0x71ED797AL;
                int32_t l_313 = 0x01CE4B84L;
                int32_t l_314 = 0x4FA25F1CL;
                int32_t l_316[6][6][1] = {{{8L},{8L},{8L},{8L},{8L},{8L}},{{8L},{8L},{8L},{8L},{8L},{8L}},{{8L},{8L},{8L},{8L},{8L},{8L}},{{8L},{8L},{8L},{8L},{8L},{8L}},{{8L},{8L},{8L},{8L},{8L},{8L}},{{8L},{8L},{8L},{8L},{8L},{8L}}};
                int i, j, k;
                if (((*l_299) = 0x289F3CFEL))
                { /* block id: 150 */
                    for (p_48 = (-6); (p_48 != 16); p_48++)
                    { /* block id: 153 */
                        int32_t **l_310 = &l_299;
                        (*p_747->g_291) = l_234;
                        (*l_310) = (*p_747->g_55);
                    }
                    if (l_235.f2)
                        goto lbl_323;
                }
                else
                { /* block id: 157 */
                    int16_t l_315[6] = {6L,6L,6L,6L,6L,6L};
                    int32_t l_318 = 4L;
                    int32_t l_319 = 1L;
                    int i;
                    l_320++;
                    (*l_299) = (+(((*l_53) = (p_747->g_comm_values[p_747->tid] != (*p_50))) ^ l_320));
                }
                return p_48;
            }
        }
    }
    for (l_234.f2 = (-6); (l_234.f2 <= 48); l_234.f2 = safe_add_func_int8_t_s_s(l_234.f2, 6))
    { /* block id: 169 */
        uint16_t *l_329[1];
        int32_t l_332 = 0x2C7B32B1L;
        int16_t *l_333 = &p_747->g_288.f4;
        int16_t *l_334 = (void*)0;
        int16_t *l_335 = &p_747->g_26;
        int8_t **l_336 = &l_135[6];
        int32_t l_337 = 0x434D7620L;
        uint8_t *l_338[1];
        uint32_t l_339 = 0x7DFD5CE5L;
        int32_t l_340 = (-6L);
        int32_t *l_341 = &l_216[0][3][0];
        int i;
        for (i = 0; i < 1; i++)
            l_329[i] = &p_747->g_71;
        for (i = 0; i < 1; i++)
            l_338[i] = &p_747->g_117;
        for (l_83 = 6; (l_83 >= 0); l_83 -= 1)
        { /* block id: 172 */
            int32_t *l_326 = &l_82;
            (*l_326) &= 0L;
        }
        (*l_341) = ((((p_51 >= (l_339 &= (((((safe_rshift_func_int16_t_s_s((p_49 || (((l_329[0] == (void*)0) ^ (safe_lshift_func_uint8_t_u_s(p_48, (l_337 &= ((((((p_48 && (FAKE_DIVERGE(p_747->local_2_offset, get_local_id(2), 10) > (((*l_335) = ((*l_333) = (l_332 = p_49))) > p_51))) <= 254UL) ^ p_747->g_comm_values[p_747->tid]) <= p_48) , (void*)0) == l_336))))) , 0x09L)), p_51)) >= p_747->l_comm_values[(safe_mod_func_uint32_t_u_u(p_747->tid, 44))]) > (*l_52)) , l_332) > p_747->g_107))) | (*l_52)) >= p_51) != l_340);
    }
    return p_49;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[44];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 44; i++)
            l_comm_values[i] = 1;
    struct S1 c_748;
    struct S1* p_747 = &c_748;
    struct S1 c_749 = {
        (-1L), // p_747->g_3
        (-1L), // p_747->g_26
        {0x069719EFCC72FDDDL,8UL,0x069719EFCC72FDDDL,0x069719EFCC72FDDDL,8UL,0x069719EFCC72FDDDL,0x069719EFCC72FDDDL}, // p_747->g_54
        &p_747->g_3, // p_747->g_56
        &p_747->g_56, // p_747->g_55
        2UL, // p_747->g_71
        0x32CCL, // p_747->g_84
        0L, // p_747->g_107
        {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}, // p_747->g_110
        0xA9L, // p_747->g_117
        0x23B8L, // p_747->g_132
        {0x2AB698699BF897C6L,0x2AB698699BF897C6L,0x2AB698699BF897C6L,0x2AB698699BF897C6L,0x2AB698699BF897C6L,0x2AB698699BF897C6L,0x2AB698699BF897C6L,0x2AB698699BF897C6L,0x2AB698699BF897C6L}, // p_747->g_133
        0x010095C9L, // p_747->g_142
        {{{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL}},{{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL}},{{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL}},{{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL}},{{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL}},{{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL}},{{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL}},{{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL},{0x2E7E6B10L,0UL,0x5C7163CAL}}}, // p_747->g_144
        4294967295UL, // p_747->g_165
        0x097C1867L, // p_747->g_166
        {{{(void*)0,(void*)0,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,(void*)0,(void*)0,&p_747->g_56}},{{(void*)0,(void*)0,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,(void*)0,(void*)0,&p_747->g_56}},{{(void*)0,(void*)0,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,(void*)0,(void*)0,&p_747->g_56}},{{(void*)0,(void*)0,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,(void*)0,(void*)0,&p_747->g_56}},{{(void*)0,(void*)0,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56,(void*)0,(void*)0,&p_747->g_56}}}, // p_747->g_169
        {&p_747->g_56,&p_747->g_56,&p_747->g_56,&p_747->g_56}, // p_747->g_170
        (void*)0, // p_747->g_171
        0x175CL, // p_747->g_231
        {0x2A9D3D1FL,0xA900BB5DL,7UL,0x2E636F438B2605AAL,0x5D26L}, // p_747->g_288
        {0x6EBAE752L,2UL,0x4E26DD54L,0L,1L}, // p_747->g_292
        &p_747->g_292, // p_747->g_291
        0x072FF5E7L, // p_747->g_297
        &p_747->g_297, // p_747->g_296
        1L, // p_747->g_343
        0xE7L, // p_747->g_419
        (-1L), // p_747->g_425
        (-1L), // p_747->g_449
        &p_747->g_56, // p_747->g_481
        &p_747->g_343, // p_747->g_518
        &p_747->g_518, // p_747->g_517
        &p_747->g_517, // p_747->g_516
        {{{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL}},{{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL}},{{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL}},{{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL}},{{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL}},{{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL}},{{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL}},{{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL}},{{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL},{0x1FL,9L,(-1L),0x2FL}}}, // p_747->g_549
        (void*)0, // p_747->g_581
        {&p_747->g_54[2],&p_747->g_54[2],&p_747->g_54[2],&p_747->g_54[2]}, // p_747->g_584
        &p_747->g_584[1], // p_747->g_583
        {{{&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583}},{{&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583}},{{&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583,&p_747->g_583}}}, // p_747->g_582
        &p_747->g_583, // p_747->g_585
        255UL, // p_747->g_612
        0x59L, // p_747->g_645
        {{{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L}},{{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L}},{{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L}},{{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L}},{{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L}},{{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L}},{{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L}},{{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L}},{{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L},{0x153136FD6C56F964L,0x5436A803F6A10451L,0x153136FD6C56F964L,0x153136FD6C56F964L}}}, // p_747->g_669
        0x703F57E1L, // p_747->g_670
        0L, // p_747->g_672
        (void*)0, // p_747->g_681
        &p_747->g_107, // p_747->g_720
        sequence_input[get_global_id(0)], // p_747->global_0_offset
        sequence_input[get_global_id(1)], // p_747->global_1_offset
        sequence_input[get_global_id(2)], // p_747->global_2_offset
        sequence_input[get_local_id(0)], // p_747->local_0_offset
        sequence_input[get_local_id(1)], // p_747->local_1_offset
        sequence_input[get_local_id(2)], // p_747->local_2_offset
        sequence_input[get_group_id(0)], // p_747->group_0_offset
        sequence_input[get_group_id(1)], // p_747->group_1_offset
        sequence_input[get_group_id(2)], // p_747->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 44)), permutations[0][get_linear_local_id()])), // p_747->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_748 = c_749;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_747);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_747->g_3, "p_747->g_3", print_hash_value);
    transparent_crc(p_747->g_26, "p_747->g_26", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_747->g_54[i], "p_747->g_54[i]", print_hash_value);

    }
    transparent_crc(p_747->g_71, "p_747->g_71", print_hash_value);
    transparent_crc(p_747->g_84, "p_747->g_84", print_hash_value);
    transparent_crc(p_747->g_107, "p_747->g_107", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_747->g_110[i], "p_747->g_110[i]", print_hash_value);

    }
    transparent_crc(p_747->g_117, "p_747->g_117", print_hash_value);
    transparent_crc(p_747->g_132, "p_747->g_132", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_747->g_133[i], "p_747->g_133[i]", print_hash_value);

    }
    transparent_crc(p_747->g_142, "p_747->g_142", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_747->g_144[i][j][k], "p_747->g_144[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_747->g_165, "p_747->g_165", print_hash_value);
    transparent_crc(p_747->g_166, "p_747->g_166", print_hash_value);
    transparent_crc(p_747->g_231, "p_747->g_231", print_hash_value);
    transparent_crc(p_747->g_288.f0, "p_747->g_288.f0", print_hash_value);
    transparent_crc(p_747->g_288.f1, "p_747->g_288.f1", print_hash_value);
    transparent_crc(p_747->g_288.f2, "p_747->g_288.f2", print_hash_value);
    transparent_crc(p_747->g_288.f3, "p_747->g_288.f3", print_hash_value);
    transparent_crc(p_747->g_288.f4, "p_747->g_288.f4", print_hash_value);
    transparent_crc(p_747->g_292.f0, "p_747->g_292.f0", print_hash_value);
    transparent_crc(p_747->g_292.f1, "p_747->g_292.f1", print_hash_value);
    transparent_crc(p_747->g_292.f2, "p_747->g_292.f2", print_hash_value);
    transparent_crc(p_747->g_292.f3, "p_747->g_292.f3", print_hash_value);
    transparent_crc(p_747->g_292.f4, "p_747->g_292.f4", print_hash_value);
    transparent_crc(p_747->g_297, "p_747->g_297", print_hash_value);
    transparent_crc(p_747->g_343, "p_747->g_343", print_hash_value);
    transparent_crc(p_747->g_419, "p_747->g_419", print_hash_value);
    transparent_crc(p_747->g_425, "p_747->g_425", print_hash_value);
    transparent_crc(p_747->g_449, "p_747->g_449", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_747->g_549[i][j][k], "p_747->g_549[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_747->g_612, "p_747->g_612", print_hash_value);
    transparent_crc(p_747->g_645, "p_747->g_645", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_747->g_669[i][j][k], "p_747->g_669[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_747->g_670, "p_747->g_670", print_hash_value);
    transparent_crc(p_747->g_672, "p_747->g_672", print_hash_value);
    transparent_crc(p_747->l_comm_values[get_linear_local_id()], "p_747->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_747->g_comm_values[get_linear_group_id() * 44 + get_linear_local_id()], "p_747->g_comm_values[get_linear_group_id() * 44 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
