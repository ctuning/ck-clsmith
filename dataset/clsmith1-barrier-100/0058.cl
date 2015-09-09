// ---fake_divergence ---inter_thread_comm -g 88,2,20 -l 2,2,5
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

__constant uint32_t permutations[10][20] = {
{14,16,2,6,11,10,12,18,3,9,7,5,13,1,17,0,19,8,4,15}, // permutation 0
{8,10,14,16,6,11,17,1,7,2,4,18,9,13,0,15,5,3,19,12}, // permutation 1
{15,11,2,13,8,17,3,16,7,18,6,5,12,9,4,19,0,10,14,1}, // permutation 2
{17,13,8,18,14,7,3,16,11,9,15,19,10,2,5,12,0,1,6,4}, // permutation 3
{15,4,18,19,7,2,14,11,1,9,10,17,8,0,13,16,12,3,5,6}, // permutation 4
{12,10,18,7,17,14,9,3,19,11,5,13,6,1,16,8,15,2,0,4}, // permutation 5
{3,5,16,4,1,19,2,11,8,18,15,14,12,6,0,9,13,17,10,7}, // permutation 6
{5,0,13,8,14,7,1,10,11,9,15,17,3,6,2,19,4,16,12,18}, // permutation 7
{5,19,4,10,13,12,9,8,3,18,7,15,16,6,2,1,11,0,14,17}, // permutation 8
{4,0,3,17,6,15,12,10,19,9,13,2,16,5,18,1,14,11,8,7} // permutation 9
};

// Seed: 58

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
   volatile uint64_t  f1;
   uint64_t  f2;
   volatile uint32_t  f3;
};

struct S2 {
    volatile int32_t g_2;
    int32_t g_3[5][4][6];
    uint64_t g_17;
    uint16_t g_20;
    int32_t g_21;
    uint16_t g_41;
    uint16_t *g_40;
    int32_t g_59;
    uint64_t g_62;
    volatile int32_t g_67;
    volatile int32_t *g_66;
    volatile int32_t **g_65;
    int32_t *g_78;
    uint16_t g_81;
    int8_t g_117;
    uint32_t g_121;
    uint32_t g_176;
    uint8_t g_199;
    uint8_t g_208;
    int16_t g_230;
    uint8_t g_236;
    struct S0 g_257;
    struct S0 g_258;
    struct S0 *g_256[5];
    int32_t g_299;
    uint32_t g_341;
    int32_t *g_369;
    int64_t g_376[10];
    uint32_t g_380;
    int64_t *g_393;
    int32_t g_454;
    int32_t g_475;
    uint32_t *g_488;
    int8_t g_519;
    int64_t g_520;
    int8_t g_521;
    uint8_t g_522;
    uint16_t g_526;
    int16_t g_528;
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
int32_t  func_1(struct S2 * p_529);
uint16_t  func_22(uint16_t * p_23, uint8_t  p_24, uint16_t * p_25, int64_t  p_26, struct S2 * p_529);
uint16_t * func_27(uint32_t  p_28, struct S2 * p_529);
int32_t  func_29(int32_t * p_30, struct S2 * p_529);
int64_t  func_31(int32_t * p_32, struct S2 * p_529);
int32_t * func_34(int16_t  p_35, uint64_t  p_36, int32_t  p_37, int32_t  p_38, uint16_t * p_39, struct S2 * p_529);
uint16_t * func_45(uint16_t  p_46, int64_t  p_47, uint16_t * p_48, struct S2 * p_529);
int16_t  func_68(uint16_t * p_69, struct S2 * p_529);
int32_t ** func_70(int32_t ** p_71, int64_t  p_72, uint32_t  p_73, uint64_t  p_74, struct S2 * p_529);
int32_t ** func_75(int64_t  p_76, struct S2 * p_529);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_529->g_3
 * writes: p_529->g_3
 */
int32_t  func_1(struct S2 * p_529)
{ /* block id: 4 */
    int32_t *l_33 = &p_529->g_3[2][1][5];
    uint16_t *l_525 = &p_529->g_526;
    for (p_529->g_3[2][1][5] = (-22); (p_529->g_3[2][1][5] < (-13)); p_529->g_3[2][1][5] = safe_add_func_int32_t_s_s(p_529->g_3[2][1][5], 4))
    { /* block id: 7 */
        volatile int32_t *l_6 = &p_529->g_2;
        uint16_t *l_18 = (void*)0;
        uint16_t *l_19 = &p_529->g_20;
        int32_t l_44[1][9][6] = {{{0x2E8B5A47L,0x538770CEL,0x538770CEL,0x2E8B5A47L,0L,0L},{0x2E8B5A47L,0x538770CEL,0x538770CEL,0x2E8B5A47L,0L,0L},{0x2E8B5A47L,0x538770CEL,0x538770CEL,0x2E8B5A47L,0L,0L},{0x2E8B5A47L,0x538770CEL,0x538770CEL,0x2E8B5A47L,0L,0L},{0x2E8B5A47L,0x538770CEL,0x538770CEL,0x2E8B5A47L,0L,0L},{0x2E8B5A47L,0x538770CEL,0x538770CEL,0x2E8B5A47L,0L,0L},{0x2E8B5A47L,0x538770CEL,0x538770CEL,0x2E8B5A47L,0L,0L},{0x2E8B5A47L,0x538770CEL,0x538770CEL,0x2E8B5A47L,0L,0L},{0x2E8B5A47L,0x538770CEL,0x538770CEL,0x2E8B5A47L,0L,0L}}};
        int64_t l_51 = 0x600B46F9F1111919L;
        uint16_t *l_56[4] = {&p_529->g_41,&p_529->g_41,&p_529->g_41,&p_529->g_41};
        int i, j, k;
        l_6 = &p_529->g_2;
    }
    return (*l_33);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_22(uint16_t * p_23, uint8_t  p_24, uint16_t * p_25, int64_t  p_26, struct S2 * p_529)
{ /* block id: 267 */
    int8_t l_527[1][7] = {{0x04L,0x04L,0x04L,0x04L,0x04L,0x04L,0x04L}};
    int i, j;
    return l_527[0][1];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t * func_27(uint32_t  p_28, struct S2 * p_529)
{ /* block id: 265 */
    return &p_529->g_81;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_41 p_529->g_176 p_529->g_59 p_529->g_376 p_529->g_81 p_529->g_230 p_529->g_117 p_529->g_454 p_529->g_208 p_529->l_comm_values p_529->g_236 p_529->g_475 p_529->g_199 p_529->g_40 p_529->g_121 p_529->g_62 p_529->g_488 p_529->g_341 p_529->g_393 p_529->g_522
 * writes: p_529->g_176 p_529->g_258.f0 p_529->g_454 p_529->g_208 p_529->g_380 p_529->g_117 p_529->g_236 p_529->g_59 p_529->g_488 p_529->g_199 p_529->g_230 p_529->g_522
 */
int32_t  func_29(int32_t * p_30, struct S2 * p_529)
{ /* block id: 222 */
    uint32_t *l_427[6] = {&p_529->g_176,&p_529->g_176,&p_529->g_176,&p_529->g_176,&p_529->g_176,&p_529->g_176};
    int32_t l_428 = 0L;
    int32_t l_429 = 0x29F5D849L;
    int32_t l_430 = (-1L);
    uint32_t l_433 = 0UL;
    uint64_t *l_440[8] = {&p_529->g_257.f2,&p_529->g_257.f2,&p_529->g_257.f2,&p_529->g_257.f2,&p_529->g_257.f2,&p_529->g_257.f2,&p_529->g_257.f2,&p_529->g_257.f2};
    uint64_t l_451 = 1UL;
    int32_t l_452 = 0L;
    int32_t *l_453 = &p_529->g_454;
    int16_t l_480 = 0x799BL;
    int16_t *l_515 = &p_529->g_230;
    int32_t *l_516 = (void*)0;
    int32_t *l_517 = &l_429;
    int32_t *l_518[9][9][3] = {{{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]}},{{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]}},{{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]}},{{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]}},{{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]}},{{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]}},{{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]}},{{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]}},{{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]},{&p_529->g_454,(void*)0,&p_529->g_3[2][1][5]}}};
    int i, j, k;
    (*l_453) |= ((((safe_unary_minus_func_int16_t_s(p_529->g_41)) < (((((((p_529->g_258.f0 = ((((safe_div_func_int32_t_s_s(((++p_529->g_176) <= (((l_433 <= ((*p_30) >= (&p_529->g_369 != (void*)0))) & (((safe_mul_func_uint16_t_u_u((((safe_mod_func_int16_t_s_s(((l_430 &= l_428) , ((safe_sub_func_uint32_t_u_u((l_452 ^= (safe_div_func_int32_t_s_s((safe_add_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_s((safe_div_func_int16_t_s_s(l_429, l_428)), l_430)) , l_451), FAKE_DIVERGE(p_529->global_0_offset, get_global_id(0), 10))), p_529->g_376[3]))), 1UL)) >= l_429)), l_429)) < p_529->g_81) == l_429), p_529->g_81)) > l_433) & l_428)) || l_429)), (*p_30))) , p_529->g_230) > (*p_30)) >= p_529->g_117)) & p_529->g_376[4]) > 0x15F3L) | (*p_30)) > 0x9BL) && (-10L)) & 0x08742B6D261E464BL)) <= l_429) != l_429);
    for (l_452 = 0; (l_452 >= (-29)); --l_452)
    { /* block id: 230 */
        int32_t *l_457[10] = {&p_529->g_454,&p_529->g_59,&p_529->g_454,&p_529->g_454,&p_529->g_59,&p_529->g_454,&p_529->g_454,&p_529->g_59,&p_529->g_454,&p_529->g_454};
        int8_t l_481[6] = {0x6FL,0x6FL,0x6FL,0x6FL,0x6FL,0x6FL};
        int64_t **l_493 = &p_529->g_393;
        int i;
        for (p_529->g_208 = 1; (p_529->g_208 <= 5); p_529->g_208 += 1)
        { /* block id: 233 */
            int32_t **l_458 = (void*)0;
            int32_t **l_459 = &l_457[9];
            (*l_459) = (p_30 = l_457[9]);
            for (p_529->g_380 = 3; (p_529->g_380 <= 9); p_529->g_380 += 1)
            { /* block id: 238 */
                int8_t *l_460[7][2][5] = {{{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0},{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0}},{{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0},{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0}},{{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0},{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0}},{{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0},{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0}},{{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0},{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0}},{{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0},{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0}},{{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0},{&p_529->g_258.f0,&p_529->g_258.f0,&p_529->g_257.f0,&p_529->g_117,(void*)0}}};
                int32_t l_461 = 0x229BD187L;
                uint8_t *l_468 = &p_529->g_236;
                int64_t *l_476 = (void*)0;
                int64_t *l_477 = (void*)0;
                int64_t *l_478 = (void*)0;
                int64_t *l_479[5];
                uint8_t *l_494 = &p_529->g_199;
                int32_t l_495[1][8] = {{0x5473A0A9L,0x5473A0A9L,0x5473A0A9L,0x5473A0A9L,0x5473A0A9L,0x5473A0A9L,0x5473A0A9L,0x5473A0A9L}};
                int32_t l_496 = (-7L);
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_479[i] = (void*)0;
                l_461 = ((p_529->g_117 = 0x1CL) ^ 0x32L);
                (*p_30) = (safe_sub_func_int64_t_s_s(0x25FE8DCF1E9E9CDCL, ((p_529->g_376[p_529->g_208] & (((l_461 = (safe_lshift_func_uint8_t_u_s((p_529->g_376[(p_529->g_208 + 3)] , (safe_mod_func_int16_t_s_s(p_529->g_376[3], p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 20))]))), 7))) , (((l_480 = (((((p_529->g_376[(p_529->g_208 + 3)] , (!((*l_468)++))) != (((p_529->g_376[(p_529->g_208 + 3)] <= ((((((safe_div_func_uint64_t_u_u(0UL, (safe_mod_func_uint8_t_u_u((p_529->g_475 >= (-1L)), 0x2CL)))) & 0x34FE0ED6515E152BL) < (-2L)) , (*l_453)) == p_529->g_199) , p_529->g_376[p_529->g_208])) == (*l_453)) && p_529->g_199)) , 0x0A67D6D302679E98L) , p_529->g_376[p_529->g_208]) && (-4L))) >= l_461) >= p_529->g_475)) , l_481[0])) >= 6L)));
                l_496 |= (0xF2L == ((0x32897F30L > (~p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 20))])) <= ((l_495[0][2] &= (~(safe_add_func_int8_t_s_s(((safe_div_func_uint16_t_u_u((((p_529->g_488 = (l_427[p_529->g_208] = l_457[5])) == &p_529->g_380) , (*p_529->g_40)), ((safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((((*l_494) = ((*l_468) = (((*l_453) == 1L) < (l_461 = ((void*)0 != l_493))))) || 254UL), GROUP_DIVERGE(0, 1))), (*l_453))) , (*l_453)))) , p_529->g_121), 0x17L)))) > (*l_453))));
            }
            if ((*p_30))
                break;
            for (p_529->g_454 = 5; (p_529->g_454 >= 0); p_529->g_454 -= 1)
            { /* block id: 256 */
                return (*p_30);
            }
        }
    }
    (*l_517) &= (((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_529->global_0_offset, get_global_id(0), 10), (p_529->g_62 < (safe_mul_func_int16_t_s_s(((((safe_sub_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_u(((*p_529->g_488) & (*p_529->g_488)), 10)) <= (((+((*p_529->g_40) || (((*p_529->g_393) , (p_529->g_230 , ((safe_mul_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u(((safe_div_func_int16_t_s_s(0x1645L, ((*l_515) ^= (safe_mod_func_uint32_t_u_u(((*l_453) & ((safe_mul_func_int16_t_s_s(p_529->g_454, (-1L))) >= (*l_453))), (*l_453)))))) , 0x6CE3BF7D173D7CD2L), p_529->g_376[3])) == 0x7DL), (*l_453))) && (*l_453)))) >= 0x4F2B00F4L))) >= (*l_453)) > 4UL)), 0x20ECF0C196969434L)) , GROUP_DIVERGE(2, 1)) > 0x108BCE0CL) != (-1L)), (*l_453)))))) || (*l_453)) != (*l_453));
    --p_529->g_522;
    return (*p_30);
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_comm_values
 * writes:
 */
int64_t  func_31(int32_t * p_32, struct S2 * p_529)
{ /* block id: 12 */
    return p_529->g_comm_values[p_529->tid];
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_comm_values p_529->g_59 p_529->g_3 p_529->g_62 p_529->g_65 p_529->g_81 p_529->g_78 p_529->l_comm_values p_529->g_117 p_529->g_121 p_529->g_40 p_529->g_41 p_529->g_66 p_529->g_176 p_529->g_199 p_529->g_208 p_529->g_236 p_529->g_256 p_529->g_257.f2 p_529->g_230 p_529->g_258.f2 p_529->g_258.f0 p_529->g_341 p_529->g_257.f0 p_529->g_376 p_529->g_380 p_529->g_369
 * writes: p_529->g_59 p_529->g_62 p_529->g_78 p_529->g_81 p_529->g_117 p_529->g_121 p_529->g_66 p_529->g_176 p_529->g_199 p_529->g_208 p_529->g_230 p_529->g_236 p_529->l_comm_values p_529->g_256 p_529->g_41 p_529->g_299 p_529->g_258.f0 p_529->g_369 p_529->g_257.f0 p_529->g_376 p_529->g_380 p_529->g_393 p_529->g_341
 */
int32_t * func_34(int16_t  p_35, uint64_t  p_36, int32_t  p_37, int32_t  p_38, uint16_t * p_39, struct S2 * p_529)
{ /* block id: 19 */
    int32_t *l_57 = &p_529->g_3[2][1][5];
    int32_t *l_58 = &p_529->g_59;
    int32_t **l_195 = &l_57;
    int32_t ***l_194 = &l_195;
    uint16_t *l_196 = (void*)0;
    uint64_t l_423[3];
    int i;
    for (i = 0; i < 3; i++)
        l_423[i] = 1UL;
    (*l_58) ^= func_31(l_57, p_529);
    p_529->g_62 &= ((safe_add_func_int16_t_s_s((*l_57), p_529->g_59)) >= 0x69E9L);
    p_37 = (safe_lshift_func_uint8_t_u_u((p_529->g_65 == &l_57), (((((((p_38 < func_68((l_196 = func_45((p_37 <= (((((*l_194) = func_70(func_75(p_529->g_comm_values[p_529->tid], p_529), ((safe_mul_func_int16_t_s_s(0x4E07L, (safe_mod_func_uint16_t_u_u((safe_unary_minus_func_uint64_t_u(((l_58 == (p_38 , (void*)0)) != p_529->g_59))), p_38)))) & FAKE_DIVERGE(p_529->local_0_offset, get_local_id(0), 10)), (*l_57), p_36, p_529)) == (void*)0) > (*p_39)) , p_529->g_3[2][3][4])), p_529->g_3[4][2][0], &p_529->g_41, p_529)), p_529)) > 0x65L) ^ p_529->g_3[2][1][5]) > p_529->g_3[2][1][5]) != 0x02L) > FAKE_DIVERGE(p_529->local_2_offset, get_local_id(2), 10)) , p_529->g_59)));
    l_423[0] = p_37;
    return &p_529->g_59;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t * func_45(uint16_t  p_46, int64_t  p_47, uint16_t * p_48, struct S2 * p_529)
{ /* block id: 15 */
    int32_t *l_53 = &p_529->g_3[3][1][0];
    int32_t **l_52 = &l_53;
    int32_t *l_55[8];
    int32_t **l_54 = &l_55[7];
    int i;
    for (i = 0; i < 8; i++)
        l_55[i] = (void*)0;
    (*l_54) = ((*l_52) = (void*)0);
    return &p_529->g_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_199 p_529->g_176 p_529->g_117 p_529->g_59 p_529->g_62 p_529->g_208 p_529->g_40 p_529->g_41 p_529->g_81 p_529->g_65 p_529->g_66 p_529->g_121 p_529->g_236 p_529->g_comm_values p_529->l_comm_values p_529->g_256 p_529->g_257.f2 p_529->g_258.f2 p_529->g_230 p_529->g_3 p_529->g_258.f0 p_529->g_341 p_529->g_257.f0 p_529->g_376 p_529->g_380 p_529->g_369
 * writes: p_529->g_199 p_529->g_117 p_529->g_59 p_529->g_62 p_529->g_208 p_529->g_81 p_529->g_230 p_529->g_78 p_529->g_236 p_529->l_comm_values p_529->g_256 p_529->g_41 p_529->g_299 p_529->g_258.f0 p_529->g_66 p_529->g_369 p_529->g_257.f0 p_529->g_376 p_529->g_380 p_529->g_393 p_529->g_341
 */
int16_t  func_68(uint16_t * p_69, struct S2 * p_529)
{ /* block id: 88 */
    int32_t *l_197 = &p_529->g_59;
    int32_t *l_198[3][6] = {{&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59},{&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59},{&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59}};
    int32_t **l_222[8][3][1] = {{{&l_197},{&l_197},{&l_197}},{{&l_197},{&l_197},{&l_197}},{{&l_197},{&l_197},{&l_197}},{{&l_197},{&l_197},{&l_197}},{{&l_197},{&l_197},{&l_197}},{{&l_197},{&l_197},{&l_197}},{{&l_197},{&l_197},{&l_197}},{{&l_197},{&l_197},{&l_197}}};
    int32_t ***l_221 = &l_222[3][1][0];
    int32_t *l_233[8][5] = {{(void*)0,&p_529->g_3[2][1][5],(void*)0,&p_529->g_3[2][1][5],(void*)0},{(void*)0,&p_529->g_3[2][1][5],(void*)0,&p_529->g_3[2][1][5],(void*)0},{(void*)0,&p_529->g_3[2][1][5],(void*)0,&p_529->g_3[2][1][5],(void*)0},{(void*)0,&p_529->g_3[2][1][5],(void*)0,&p_529->g_3[2][1][5],(void*)0},{(void*)0,&p_529->g_3[2][1][5],(void*)0,&p_529->g_3[2][1][5],(void*)0},{(void*)0,&p_529->g_3[2][1][5],(void*)0,&p_529->g_3[2][1][5],(void*)0},{(void*)0,&p_529->g_3[2][1][5],(void*)0,&p_529->g_3[2][1][5],(void*)0},{(void*)0,&p_529->g_3[2][1][5],(void*)0,&p_529->g_3[2][1][5],(void*)0}};
    uint16_t *l_254[5][10] = {{(void*)0,(void*)0,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,(void*)0,(void*)0,&p_529->g_81},{(void*)0,(void*)0,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,(void*)0,(void*)0,&p_529->g_81},{(void*)0,(void*)0,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,(void*)0,(void*)0,&p_529->g_81},{(void*)0,(void*)0,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,(void*)0,(void*)0,&p_529->g_81},{(void*)0,(void*)0,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,&p_529->g_81,(void*)0,(void*)0,&p_529->g_81}};
    int8_t l_300 = 0x42L;
    uint8_t *l_405 = (void*)0;
    int64_t *l_419 = &p_529->g_376[8];
    int i, j, k;
    p_529->g_199++;
    if (p_529->g_176)
    { /* block id: 90 */
        uint32_t l_211 = 0x3B2C5943L;
        for (p_529->g_199 = 0; (p_529->g_199 != 33); ++p_529->g_199)
        { /* block id: 93 */
            for (p_529->g_117 = 2; (p_529->g_117 >= 0); p_529->g_117 -= 1)
            { /* block id: 96 */
                int8_t *l_204[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                (*l_197) &= ((void*)0 != l_204[2]);
            }
            for (p_529->g_62 = 0; (p_529->g_62 == 60); ++p_529->g_62)
            { /* block id: 101 */
                int16_t l_207 = 1L;
                p_529->g_208--;
            }
        }
        return l_211;
    }
    else
    { /* block id: 106 */
        int32_t l_231 = 0x52146C8CL;
        int64_t l_234 = 0x71915A3E27E76A63L;
        int32_t l_235 = (-5L);
        int64_t *l_255[9][2] = {{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234}};
        struct S0 **l_259 = &p_529->g_256[3];
        uint16_t l_262 = 0x9EC7L;
        int32_t l_263[4][7][3] = {{{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L}},{{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L}},{{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L}},{{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L},{0x7F5B4925L,0x079FF855L,6L}}};
        int32_t ***l_329[4][8] = {{&l_222[4][0][0],&l_222[4][0][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[4][0][0]},{&l_222[4][0][0],&l_222[4][0][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[4][0][0]},{&l_222[4][0][0],&l_222[4][0][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[4][0][0]},{&l_222[4][0][0],&l_222[4][0][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[3][1][0],&l_222[4][0][0]}};
        uint32_t l_373 = 0UL;
        uint32_t l_390 = 3UL;
        int64_t *l_391 = &p_529->g_376[4];
        uint64_t l_396 = 0UL;
        uint32_t l_402[6][3] = {{4294967295UL,4294967295UL,0x709AE374L},{4294967295UL,4294967295UL,0x709AE374L},{4294967295UL,4294967295UL,0x709AE374L},{4294967295UL,4294967295UL,0x709AE374L},{4294967295UL,4294967295UL,0x709AE374L},{4294967295UL,4294967295UL,0x709AE374L}};
        uint8_t *l_406 = &p_529->g_199;
        int32_t *l_418 = &p_529->g_299;
        uint32_t l_421[5];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_421[i] = 7UL;
        for (p_529->g_199 = (-9); (p_529->g_199 < 25); p_529->g_199++)
        { /* block id: 109 */
            uint8_t *l_220 = &p_529->g_208;
            uint16_t *l_227[4][3] = {{&p_529->g_41,&p_529->g_81,&p_529->g_41},{&p_529->g_41,&p_529->g_81,&p_529->g_41},{&p_529->g_41,&p_529->g_81,&p_529->g_41},{&p_529->g_41,&p_529->g_81,&p_529->g_41}};
            int16_t *l_228 = (void*)0;
            int16_t *l_229 = &p_529->g_230;
            int32_t l_232 = 0L;
            int i, j;
            (*l_197) = (l_235 &= (((((p_529->g_59 , (safe_sub_func_int64_t_s_s(((void*)0 != &l_198[2][0]), (((*p_529->g_40) && ((((((safe_add_func_int64_t_s_s(((safe_div_func_uint64_t_u_u(((((((*l_220) = GROUP_DIVERGE(1, 1)) ^ ((&p_529->g_81 != p_69) , (((*l_229) = (l_221 == ((((safe_mod_func_uint16_t_u_u(((safe_div_func_uint16_t_u_u((p_529->g_81 ^= (*p_529->g_40)), (p_529->g_117 , 0xCFB2L))) , GROUP_DIVERGE(2, 1)), (*p_529->g_40))) && 5UL) != p_529->g_62) , &l_222[1][2][0]))) <= l_231))) <= p_529->g_41) == GROUP_DIVERGE(0, 1)) ^ 0x0D8A3B9CL), l_232)) >= l_231), l_232)) >= l_231) > 0x77E7D222L) , l_233[1][0]) != (*p_529->g_65)) != l_232)) <= p_529->g_121)))) | l_231) && 0x01364F4DC61A7D02L) <= (*p_69)) == l_234));
            if (p_529->g_199)
                goto lbl_239;
        }
        (**l_221) = (void*)0;
lbl_239:
        p_529->g_236--;
        if ((0x1D3BL & ((safe_add_func_int64_t_s_s((safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((safe_div_func_int16_t_s_s((p_529->g_comm_values[p_529->tid] <= (((safe_rshift_func_uint8_t_u_s((safe_mod_func_int32_t_s_s(((((p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 20))] |= ((*p_529->g_40) | (((-6L) >= (p_69 == l_254[3][8])) < l_235))) , ((((((*l_259) = p_529->g_256[1]) == ((safe_rshift_func_uint8_t_u_u(((((*p_69) = (*p_69)) != p_529->g_199) >= l_234), p_529->g_117)) , (void*)0)) && l_262) > l_231) < p_529->g_117)) , (void*)0) == &p_529->g_230), l_262)), 7)) , GROUP_DIVERGE(1, 1)) <= p_529->g_199)), 0x15A3L)) != 6L), GROUP_DIVERGE(0, 1))), l_263[0][2][0])), p_529->g_257.f2)) , (*p_529->g_40))))
        { /* block id: 122 */
            uint32_t l_277[2];
            int32_t l_304 = 0x5966B01AL;
            int32_t *l_338 = &p_529->g_299;
            int8_t l_365 = 0x14L;
            int32_t *l_368 = &l_235;
            int64_t *l_377 = &p_529->g_376[0];
            int16_t l_379 = (-1L);
            uint8_t *l_389 = (void*)0;
            int i;
            for (i = 0; i < 2; i++)
                l_277[i] = 9UL;
lbl_363:
            for (p_529->g_230 = (-6); (p_529->g_230 >= (-4)); p_529->g_230 = safe_add_func_uint32_t_u_u(p_529->g_230, 2))
            { /* block id: 125 */
                int64_t l_266 = 0x2A3BE4C5A7F0FC9FL;
                return l_266;
            }
            for (l_262 = (-9); (l_262 <= 3); l_262++)
            { /* block id: 130 */
                int32_t l_293[6][3][9] = {{{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL}},{{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL}},{{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL}},{{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL}},{{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL}},{{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL},{5L,0x642E423DL,(-1L),8L,2L,(-1L),6L,(-1L),0x40EE888FL}}};
                int32_t l_385 = 0L;
                int i, j, k;
                if ((safe_add_func_int32_t_s_s((((((safe_div_func_int32_t_s_s((safe_sub_func_int32_t_s_s(0x22FD7D86L, 0x3BCEE9B8L)), 0x1C57563AL)) != p_529->g_59) < (safe_mul_func_uint8_t_u_u(p_529->g_62, 1L))) | 0x7FL) ^ 0UL), l_277[1])))
                { /* block id: 131 */
                    uint32_t l_290 = 0x8D941ABEL;
                    int32_t *l_298 = &p_529->g_299;
                    uint8_t *l_301 = (void*)0;
                    int16_t *l_302 = &p_529->g_230;
                    int32_t l_303 = 0L;
                    uint64_t l_340 = 0xDB512F2BDF8E17AAL;
                    uint8_t l_362[4][7] = {{0x62L,0x62L,1UL,251UL,255UL,251UL,1UL},{0x62L,0x62L,1UL,251UL,255UL,251UL,1UL},{0x62L,0x62L,1UL,251UL,255UL,251UL,1UL},{0x62L,0x62L,1UL,251UL,255UL,251UL,1UL}};
                    int i, j;
                    if ((((p_529->g_258.f2 | ((safe_lshift_func_uint16_t_u_s((l_304 |= (((safe_lshift_func_uint8_t_u_u(((~(l_303 = ((safe_lshift_func_int16_t_s_s(((*l_302) = (safe_rshift_func_uint16_t_u_u((safe_div_func_int16_t_s_s(p_529->g_62, (*p_529->g_40))), (safe_mod_func_uint8_t_u_u(l_290, (safe_add_func_int16_t_s_s(((l_293[0][1][1] && ((l_235 = ((l_290 < ((((((safe_mul_func_uint8_t_u_u(p_529->g_117, (l_263[2][4][1] = (((1UL < (safe_rshift_func_uint16_t_u_s((((*l_298) = (p_529->g_230 & 65535UL)) , (*p_69)), l_262))) || p_529->g_41) != l_277[1])))) & p_529->g_257.f2) && l_300) | p_529->g_258.f2) >= l_290) || l_277[1])) == FAKE_DIVERGE(p_529->group_0_offset, get_group_id(0), 10))) | GROUP_DIVERGE(2, 1))) , l_293[2][2][3]), (*p_529->g_40)))))))), 9)) & l_277[0]))) , l_290), l_290)) , l_263[3][0][0]) || (*p_69))), l_262)) ^ l_290)) > l_290) < (*p_69)))
                    { /* block id: 138 */
                        uint32_t l_305 = 0x25A7C1E2L;
                        l_305 = l_234;
                    }
                    else
                    { /* block id: 140 */
                        int32_t l_326 = (-1L);
                        int8_t *l_339 = &p_529->g_258.f0;
                        l_340 &= (((*l_339) ^= (safe_sub_func_int64_t_s_s(((safe_rshift_func_int8_t_s_u(((safe_rshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_s(l_234, 5)), (l_277[1] , (safe_rshift_func_uint8_t_u_s((safe_mod_func_uint16_t_u_u((((p_529->g_3[2][1][5] != (safe_mul_func_uint8_t_u_u((p_529->g_199 |= (((safe_sub_func_int16_t_s_s(((safe_div_func_int8_t_s_s((((l_293[4][0][7] , l_326) >= (safe_sub_func_uint64_t_u_u((((void*)0 != l_329[3][7]) , ((-1L) == (safe_sub_func_uint16_t_u_u((((safe_sub_func_int32_t_s_s((safe_sub_func_uint8_t_u_u((safe_div_func_int8_t_s_s((-8L), p_529->g_230)), (-8L))), l_293[1][2][5])) , l_338) != (void*)0), 0x1E99L)))), l_277[1]))) < p_529->g_236), 0xDDL)) || p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 20))]), 0x0611L)) ^ l_326) , l_277[1])), FAKE_DIVERGE(p_529->global_1_offset, get_global_id(1), 10)))) , 0x02CD53D4L) , (*p_529->g_40)), (*p_69))), 3))))) < 1UL), 4)) <= 0xDAL), p_529->g_121))) == 0L);
                    }
                    (**l_221) = &l_304;
                    if (p_529->g_341)
                        break;
                    if ((safe_div_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u(p_529->g_258.f0, (safe_sub_func_int8_t_s_s((+(safe_sub_func_int16_t_s_s(((+((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_u(p_529->g_257.f0, 1)) || (safe_div_func_int64_t_s_s(l_293[1][0][0], (((*p_529->g_40) ^ (*p_69)) ^ (((*p_529->g_65) != (void*)0) & (((l_303 = (safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(l_277[1], FAKE_DIVERGE(p_529->group_2_offset, get_group_id(2), 10))), p_529->g_62))) & p_529->g_41) != (-1L))))))), (*p_529->g_40))) <= 0L)) == l_293[0][1][1]), 65535UL))), (-3L))))), l_362[2][3])), 1UL)))
                    { /* block id: 148 */
                        (**l_221) = &l_303;
                        if (l_362[2][3])
                            break;
                        if (l_231)
                            goto lbl_363;
                    }
                    else
                    { /* block id: 152 */
                        int32_t l_364 = 0x4DDF6A90L;
                        if (l_364)
                            break;
                        if (l_293[0][1][1])
                            break;
                    }
                }
                else
                { /* block id: 156 */
                    uint32_t l_370 = 0xD210D425L;
                    if (l_365)
                        break;
                    for (l_304 = (-12); (l_304 == 26); l_304++)
                    { /* block id: 160 */
                        p_529->g_59 &= p_529->g_341;
                        (*p_529->g_65) = (*p_529->g_65);
                        p_529->g_369 = ((**l_221) = (l_368 = (void*)0));
                    }
                    l_370++;
                }
                for (p_529->g_199 = 0; (p_529->g_199 <= 4); p_529->g_199 += 1)
                { /* block id: 171 */
                    (**l_221) = &l_293[0][1][1];
                    for (p_529->g_236 = 0; (p_529->g_236 <= 2); p_529->g_236 += 1)
                    { /* block id: 175 */
                        int i, j, k;
                        return l_263[(p_529->g_236 + 1)][(p_529->g_199 + 1)][p_529->g_236];
                    }
                }
                if (l_373)
                { /* block id: 179 */
                    int32_t l_374 = 1L;
                    uint8_t *l_388 = &p_529->g_208;
                    int64_t **l_392 = (void*)0;
                    uint64_t *l_394 = (void*)0;
                    uint64_t *l_395 = &p_529->g_62;
                    for (p_529->g_257.f0 = 0; (p_529->g_257.f0 >= 0); p_529->g_257.f0 -= 1)
                    { /* block id: 182 */
                        int64_t *l_375 = &p_529->g_376[3];
                        int32_t l_378 = 0x6C1B9383L;
                        int i, j;
                        l_293[4][2][7] = (~(((*l_375) &= l_374) , ((void*)0 != l_377)));
                        --p_529->g_380;
                        if (l_374)
                            continue;
                        return p_529->g_258.f2;
                    }
                    l_385 ^= (safe_sub_func_uint8_t_u_u((l_293[2][1][1] | 0x663FB575L), l_293[3][2][8]));
                    l_304 |= (l_293[0][1][1] >= 0UL);
                    l_396 &= (safe_sub_func_int64_t_s_s((((p_69 != p_69) <= (l_388 != l_389)) != (~l_390)), ((*l_395) ^= (((void*)0 != l_255[5][1]) < ((*l_388) |= ((p_529->g_393 = l_391) != l_377))))));
                }
                else
                { /* block id: 195 */
                    uint32_t l_400 = 0x45E41835L;
                    for (p_529->g_341 = 0; (p_529->g_341 < 11); p_529->g_341 = safe_add_func_uint32_t_u_u(p_529->g_341, 8))
                    { /* block id: 198 */
                        int16_t *l_399[4];
                        int32_t l_401 = 0x65924FA6L;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_399[i] = (void*)0;
                        l_293[0][1][1] = ((void*)0 != &p_69);
                        l_401 = ((0x6B45L ^ (l_400 = (((*l_259) = p_529->g_256[1]) == (void*)0))) , l_400);
                        return l_400;
                    }
                    if (l_385)
                        continue;
                }
            }
            p_529->g_59 = 0x3FED448EL;
        }
        else
        { /* block id: 209 */
            uint64_t l_413 = 18446744073709551615UL;
            int32_t l_420 = (-1L);
            int32_t l_422[3][3][1];
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_422[i][j][k] = 0x657E0D27L;
                }
            }
            --l_402[5][0];
            (*p_529->g_369) ^= (((&p_529->g_256[1] == l_259) , l_405) != l_406);
            l_422[0][1][0] ^= ((safe_sub_func_int64_t_s_s(((((safe_lshift_func_int16_t_s_u(((((safe_mul_func_uint8_t_u_u(l_413, p_529->g_376[3])) || (((((p_529->g_341 , p_529->g_258.f2) < (((*p_529->g_369) |= l_413) , (safe_rshift_func_int16_t_s_s(l_413, 3)))) | (safe_rshift_func_uint16_t_u_u((*p_529->g_40), (l_420 ^= (((l_413 >= FAKE_DIVERGE(p_529->group_1_offset, get_group_id(1), 10)) != ((((l_197 == l_418) , l_419) == (void*)0) | FAKE_DIVERGE(p_529->local_2_offset, get_local_id(2), 10))) & l_413))))) , (void*)0) == (*l_259))) , l_420) , l_421[1]), 7)) < l_413) != 0xEAL) || 9L), p_529->g_62)) >= GROUP_DIVERGE(1, 1));
            p_529->g_369 = &l_422[0][1][0];
        }
    }
    return p_529->g_176;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_78 p_529->g_59 p_529->g_62 p_529->l_comm_values p_529->g_81 p_529->g_117 p_529->g_3 p_529->g_121 p_529->g_40 p_529->g_41 p_529->g_65 p_529->g_66 p_529->g_176
 * writes: p_529->g_117 p_529->g_59 p_529->g_62 p_529->g_121 p_529->g_78 p_529->g_81 p_529->g_66 p_529->g_176
 */
int32_t ** func_70(int32_t ** p_71, int64_t  p_72, uint32_t  p_73, uint64_t  p_74, struct S2 * p_529)
{ /* block id: 26 */
    int32_t l_95 = 0x021F8E69L;
    int64_t l_120[9] = {0x60EE8D33E78ED21FL,(-9L),0x60EE8D33E78ED21FL,0x60EE8D33E78ED21FL,(-9L),0x60EE8D33E78ED21FL,0x60EE8D33E78ED21FL,(-9L),0x60EE8D33E78ED21FL};
    int8_t *l_154 = &p_529->g_117;
    struct S0 *l_158 = (void*)0;
    int32_t l_172 = 0x34C76B8CL;
    int32_t l_173[7] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
    uint16_t **l_191[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int64_t *l_192 = (void*)0;
    int32_t *l_193 = &p_529->g_59;
    int i;
    if ((**p_71))
    { /* block id: 27 */
        uint16_t **l_93 = (void*)0;
        uint64_t l_94[7][8] = {{0x74835F01DA63D7FDL,4UL,3UL,18446744073709551615UL,3UL,4UL,0x74835F01DA63D7FDL,0xF8E450752D6847A7L},{0x74835F01DA63D7FDL,4UL,3UL,18446744073709551615UL,3UL,4UL,0x74835F01DA63D7FDL,0xF8E450752D6847A7L},{0x74835F01DA63D7FDL,4UL,3UL,18446744073709551615UL,3UL,4UL,0x74835F01DA63D7FDL,0xF8E450752D6847A7L},{0x74835F01DA63D7FDL,4UL,3UL,18446744073709551615UL,3UL,4UL,0x74835F01DA63D7FDL,0xF8E450752D6847A7L},{0x74835F01DA63D7FDL,4UL,3UL,18446744073709551615UL,3UL,4UL,0x74835F01DA63D7FDL,0xF8E450752D6847A7L},{0x74835F01DA63D7FDL,4UL,3UL,18446744073709551615UL,3UL,4UL,0x74835F01DA63D7FDL,0xF8E450752D6847A7L},{0x74835F01DA63D7FDL,4UL,3UL,18446744073709551615UL,3UL,4UL,0x74835F01DA63D7FDL,0xF8E450752D6847A7L}};
        uint32_t l_115[6][10] = {{4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL},{4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL},{4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL},{4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL},{4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL},{4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL,0x0C02A0D8L,4294967287UL,4294967287UL}};
        int i, j;
        for (p_73 = (-26); (p_73 >= 46); p_73++)
        { /* block id: 30 */
            uint16_t **l_91[8][7] = {{&p_529->g_40,&p_529->g_40,&p_529->g_40,(void*)0,(void*)0,(void*)0,&p_529->g_40},{&p_529->g_40,&p_529->g_40,&p_529->g_40,(void*)0,(void*)0,(void*)0,&p_529->g_40},{&p_529->g_40,&p_529->g_40,&p_529->g_40,(void*)0,(void*)0,(void*)0,&p_529->g_40},{&p_529->g_40,&p_529->g_40,&p_529->g_40,(void*)0,(void*)0,(void*)0,&p_529->g_40},{&p_529->g_40,&p_529->g_40,&p_529->g_40,(void*)0,(void*)0,(void*)0,&p_529->g_40},{&p_529->g_40,&p_529->g_40,&p_529->g_40,(void*)0,(void*)0,(void*)0,&p_529->g_40},{&p_529->g_40,&p_529->g_40,&p_529->g_40,(void*)0,(void*)0,(void*)0,&p_529->g_40},{&p_529->g_40,&p_529->g_40,&p_529->g_40,(void*)0,(void*)0,(void*)0,&p_529->g_40}};
            uint16_t ***l_92[3];
            int i, j;
            for (i = 0; i < 3; i++)
                l_92[i] = &l_91[6][4];
            l_93 = l_91[6][4];
        }
        for (p_73 = 1; (p_73 <= 6); p_73 += 1)
        { /* block id: 35 */
            int32_t l_110 = (-8L);
            int8_t *l_116 = &p_529->g_117;
            (*p_529->g_78) = (l_95 , ((safe_mod_func_int8_t_s_s(p_529->g_62, ((((safe_rshift_func_int8_t_s_u((l_95 || ((safe_rshift_func_int8_t_s_u(((*l_116) |= (safe_div_func_uint32_t_u_u((p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 20))] , (safe_div_func_uint8_t_u_u(((((+(!(safe_div_func_int32_t_s_s(0x2BF61A38L, ((p_74 , l_110) || (l_110 = 0x5EL)))))) || (safe_mod_func_int64_t_s_s((((((safe_mul_func_int16_t_s_s((((&p_529->g_41 != &p_529->g_81) >= l_115[2][8]) < l_110), 0x388EL)) <= l_95) >= l_94[5][7]) != 0x27889C38L) < l_95), p_529->g_59))) ^ 6L) , l_110), 255UL))), p_529->g_81))), 7)) <= p_529->g_3[2][1][5])), 3)) , (-7L)) <= (-3L)) , l_110))) || 18446744073709551615UL));
            (**p_71) = l_95;
            if ((**p_71))
                break;
            for (p_529->g_62 = 0; (p_529->g_62 <= 6); p_529->g_62 += 1)
            { /* block id: 43 */
                int32_t *l_118 = &p_529->g_59;
                int32_t *l_119[2][3][1] = {{{&p_529->g_3[2][1][5]},{&p_529->g_3[2][1][5]},{&p_529->g_3[2][1][5]}},{{&p_529->g_3[2][1][5]},{&p_529->g_3[2][1][5]},{&p_529->g_3[2][1][5]}}};
                int i, j, k;
                ++p_529->g_121;
            }
        }
    }
    else
    { /* block id: 47 */
        uint8_t l_155 = 0xDCL;
        for (p_529->g_121 = (-25); (p_529->g_121 > 4); p_529->g_121 = safe_add_func_int32_t_s_s(p_529->g_121, 5))
        { /* block id: 50 */
            return &p_529->g_78;
        }
        for (l_95 = 0; (l_95 <= (-10)); --l_95)
        { /* block id: 55 */
            int32_t *l_143 = &p_529->g_59;
            int32_t *l_167 = &p_529->g_59;
            int32_t *l_168 = (void*)0;
            int32_t *l_169 = &p_529->g_59;
            int32_t *l_170 = &p_529->g_59;
            int32_t *l_171 = (void*)0;
            int32_t *l_174 = &l_173[5];
            int32_t *l_175[1][5] = {{&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59,&p_529->g_59}};
            int i, j;
            for (p_529->g_62 = 0; (p_529->g_62 == 52); ++p_529->g_62)
            { /* block id: 58 */
                int16_t l_142 = 0x2AD7L;
                int32_t **l_166 = &p_529->g_78;
                if (((*p_529->g_78) = (safe_rshift_func_int16_t_s_u(((p_529->g_121 <= ((l_120[7] <= p_74) < 0x770368F862678A40L)) , (safe_lshift_func_uint8_t_u_s((!(safe_add_func_int8_t_s_s(0x60L, p_529->g_62))), ((((safe_add_func_uint8_t_u_u(((**p_71) >= ((((safe_div_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_s(((((0x3CL || p_73) | p_529->g_59) & l_120[0]) != p_529->g_121), p_74)) & 0x1466F024E21FBFD4L), p_72)) > l_142) == (-9L)) || 0L)), 0UL)) ^ 0x09L) || p_529->g_121) == 0x1C975FB2L)))), 10))))
                { /* block id: 60 */
                    int32_t **l_157 = &l_143;
                    int32_t ***l_156 = &l_157;
                    (*p_71) = l_143;
                    if ((((*l_156) = func_75(((safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(((safe_mul_func_uint16_t_u_u((&p_529->g_81 == (p_73 , func_45((*l_143), (0x34ED2CB2754EA53DL | ((l_95 >= ((~(*p_529->g_40)) , (p_72 ^ (((safe_lshift_func_int8_t_s_s((safe_sub_func_int64_t_s_s((((void*)0 == l_154) , (-4L)), l_142)), 3)) || GROUP_DIVERGE(0, 1)) > l_155)))) , p_72)), &p_529->g_41, p_529))), (*p_529->g_40))) & 3UL), l_155)), (*l_143))) != GROUP_DIVERGE(1, 1)), p_529)) != &p_529->g_66))
                    { /* block id: 63 */
                        struct S0 **l_159 = &l_158;
                        int32_t **l_160 = (void*)0;
                        (*l_159) = l_158;
                        return l_160;
                    }
                    else
                    { /* block id: 66 */
                        (*p_529->g_65) = (*p_529->g_65);
                        (**l_156) = l_143;
                        if ((*p_529->g_78))
                            continue;
                    }
                }
                else
                { /* block id: 71 */
                    int64_t *l_165 = &l_120[8];
                    (*p_529->g_78) = (safe_mod_func_int64_t_s_s(((*l_165) = (safe_lshift_func_uint8_t_u_u((p_529->g_121 != (*l_143)), 3))), l_155));
                    return l_166;
                }
            }
            p_529->g_176++;
            if ((**p_71))
                break;
        }
        (*p_71) = &l_172;
    }
    (*l_193) = (0x0A576ED2L && ((((safe_sub_func_uint64_t_u_u(p_74, p_72)) , ((safe_add_func_int64_t_s_s((l_172 &= ((((0xCBB3L < (((safe_lshift_func_int8_t_s_u((&l_173[6] != (void*)0), (l_173[3] = (safe_mul_func_int16_t_s_s(((l_95 < (((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(((void*)0 != l_191[0]), l_173[1])), p_74)) == p_72) > p_529->g_62)) != l_173[1]), (*p_529->g_40)))))) != 8L) < 0xD47A3A9A028DDFECL)) , 0x11L) == p_529->g_3[2][1][5]) < p_72)), 0x8D4A7C34602AEC4BL)) < 65533UL)) ^ p_74) , 0xF8AFCD1AL));
    return &p_529->g_78;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_81
 * writes: p_529->g_78 p_529->g_81
 */
int32_t ** func_75(int64_t  p_76, struct S2 * p_529)
{ /* block id: 22 */
    int32_t *l_77 = &p_529->g_59;
    int32_t *l_79 = &p_529->g_59;
    int32_t *l_80 = &p_529->g_59;
    p_529->g_78 = l_77;
    p_529->g_81--;
    return &p_529->g_78;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[20];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 20; i++)
            l_comm_values[i] = 1;
    struct S2 c_530;
    struct S2* p_529 = &c_530;
    struct S2 c_531 = {
        0x6EB6B9DDL, // p_529->g_2
        {{{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L}},{{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L}},{{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L}},{{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L}},{{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L},{4L,4L,(-7L),0x6AA29C14L,0x234C865BL,0x6AA29C14L}}}, // p_529->g_3
        9UL, // p_529->g_17
        0x392FL, // p_529->g_20
        0x26FF609DL, // p_529->g_21
        6UL, // p_529->g_41
        &p_529->g_41, // p_529->g_40
        0x586A0230L, // p_529->g_59
        1UL, // p_529->g_62
        0L, // p_529->g_67
        &p_529->g_67, // p_529->g_66
        &p_529->g_66, // p_529->g_65
        &p_529->g_59, // p_529->g_78
        0UL, // p_529->g_81
        0x23L, // p_529->g_117
        1UL, // p_529->g_121
        4294967292UL, // p_529->g_176
        0xE3L, // p_529->g_199
        0xD8L, // p_529->g_208
        1L, // p_529->g_230
        0x5BL, // p_529->g_236
        {0x4BL,1UL,1UL,0x5C242C3BL}, // p_529->g_257
        {0x04L,0UL,18446744073709551615UL,0UL}, // p_529->g_258
        {&p_529->g_257,&p_529->g_257,&p_529->g_257,&p_529->g_257,&p_529->g_257}, // p_529->g_256
        (-1L), // p_529->g_299
        0xBBF8BFF3L, // p_529->g_341
        &p_529->g_59, // p_529->g_369
        {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)}, // p_529->g_376
        0xFC97EE69L, // p_529->g_380
        &p_529->g_376[4], // p_529->g_393
        1L, // p_529->g_454
        (-8L), // p_529->g_475
        &p_529->g_341, // p_529->g_488
        (-4L), // p_529->g_519
        0x72E0C895F459A42DL, // p_529->g_520
        0x17L, // p_529->g_521
        255UL, // p_529->g_522
        0x6FCCL, // p_529->g_526
        5L, // p_529->g_528
        sequence_input[get_global_id(0)], // p_529->global_0_offset
        sequence_input[get_global_id(1)], // p_529->global_1_offset
        sequence_input[get_global_id(2)], // p_529->global_2_offset
        sequence_input[get_local_id(0)], // p_529->local_0_offset
        sequence_input[get_local_id(1)], // p_529->local_1_offset
        sequence_input[get_local_id(2)], // p_529->local_2_offset
        sequence_input[get_group_id(0)], // p_529->group_0_offset
        sequence_input[get_group_id(1)], // p_529->group_1_offset
        sequence_input[get_group_id(2)], // p_529->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 20)), permutations[0][get_linear_local_id()])), // p_529->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_530 = c_531;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_529);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_529->g_2, "p_529->g_2", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_529->g_3[i][j][k], "p_529->g_3[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_529->g_17, "p_529->g_17", print_hash_value);
    transparent_crc(p_529->g_20, "p_529->g_20", print_hash_value);
    transparent_crc(p_529->g_21, "p_529->g_21", print_hash_value);
    transparent_crc(p_529->g_41, "p_529->g_41", print_hash_value);
    transparent_crc(p_529->g_59, "p_529->g_59", print_hash_value);
    transparent_crc(p_529->g_62, "p_529->g_62", print_hash_value);
    transparent_crc(p_529->g_67, "p_529->g_67", print_hash_value);
    transparent_crc(p_529->g_81, "p_529->g_81", print_hash_value);
    transparent_crc(p_529->g_117, "p_529->g_117", print_hash_value);
    transparent_crc(p_529->g_121, "p_529->g_121", print_hash_value);
    transparent_crc(p_529->g_176, "p_529->g_176", print_hash_value);
    transparent_crc(p_529->g_199, "p_529->g_199", print_hash_value);
    transparent_crc(p_529->g_208, "p_529->g_208", print_hash_value);
    transparent_crc(p_529->g_230, "p_529->g_230", print_hash_value);
    transparent_crc(p_529->g_236, "p_529->g_236", print_hash_value);
    transparent_crc(p_529->g_257.f0, "p_529->g_257.f0", print_hash_value);
    transparent_crc(p_529->g_257.f1, "p_529->g_257.f1", print_hash_value);
    transparent_crc(p_529->g_257.f2, "p_529->g_257.f2", print_hash_value);
    transparent_crc(p_529->g_257.f3, "p_529->g_257.f3", print_hash_value);
    transparent_crc(p_529->g_258.f0, "p_529->g_258.f0", print_hash_value);
    transparent_crc(p_529->g_258.f1, "p_529->g_258.f1", print_hash_value);
    transparent_crc(p_529->g_258.f2, "p_529->g_258.f2", print_hash_value);
    transparent_crc(p_529->g_258.f3, "p_529->g_258.f3", print_hash_value);
    transparent_crc(p_529->g_299, "p_529->g_299", print_hash_value);
    transparent_crc(p_529->g_341, "p_529->g_341", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_529->g_376[i], "p_529->g_376[i]", print_hash_value);

    }
    transparent_crc(p_529->g_380, "p_529->g_380", print_hash_value);
    transparent_crc(p_529->g_454, "p_529->g_454", print_hash_value);
    transparent_crc(p_529->g_475, "p_529->g_475", print_hash_value);
    transparent_crc(p_529->g_519, "p_529->g_519", print_hash_value);
    transparent_crc(p_529->g_520, "p_529->g_520", print_hash_value);
    transparent_crc(p_529->g_521, "p_529->g_521", print_hash_value);
    transparent_crc(p_529->g_522, "p_529->g_522", print_hash_value);
    transparent_crc(p_529->g_526, "p_529->g_526", print_hash_value);
    transparent_crc(p_529->g_528, "p_529->g_528", print_hash_value);
    transparent_crc(p_529->l_comm_values[get_linear_local_id()], "p_529->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_529->g_comm_values[get_linear_group_id() * 20 + get_linear_local_id()], "p_529->g_comm_values[get_linear_group_id() * 20 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
