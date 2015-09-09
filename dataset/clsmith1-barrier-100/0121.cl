// ---fake_divergence ---inter_thread_comm -g 13,74,4 -l 1,37,2
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

__constant uint32_t permutations[10][74] = {
{11,50,52,30,14,28,60,59,17,1,45,16,26,12,2,7,19,34,66,36,58,8,44,68,54,69,55,38,72,43,53,3,23,13,63,18,47,48,31,35,25,0,4,40,42,22,62,64,33,6,21,20,46,5,57,29,49,70,61,41,65,39,15,56,73,71,9,37,51,32,10,27,24,67}, // permutation 0
{19,67,55,22,9,28,18,2,26,68,61,17,25,6,3,44,39,20,7,43,65,59,48,53,16,8,30,54,32,52,41,14,0,5,50,4,57,1,71,72,47,15,60,56,27,45,42,46,36,31,69,49,33,62,35,11,24,10,66,21,64,13,51,29,58,34,37,63,70,23,38,73,40,12}, // permutation 1
{62,51,38,6,21,18,28,14,25,19,69,1,37,60,10,27,39,71,35,46,11,42,29,41,64,30,70,22,8,3,57,15,26,31,44,9,67,72,2,47,63,16,56,68,65,45,54,20,0,55,32,7,12,17,34,40,59,73,24,48,52,33,49,66,43,5,23,61,4,13,53,58,50,36}, // permutation 2
{44,0,9,63,26,55,17,29,46,37,31,36,45,72,39,1,53,32,47,35,14,61,28,66,19,11,23,15,30,27,64,25,54,73,67,7,50,62,21,56,70,60,52,3,42,68,65,2,34,71,51,57,6,40,8,13,48,5,10,38,20,4,69,24,33,22,43,41,18,58,49,59,12,16}, // permutation 3
{68,26,22,58,30,20,12,15,46,42,14,8,39,72,60,27,45,59,9,32,5,25,35,64,17,10,37,24,57,6,50,66,36,3,29,61,28,34,31,19,63,47,21,67,43,55,73,52,40,33,4,70,62,54,49,7,1,23,53,48,71,56,38,11,16,0,65,18,69,2,44,51,41,13}, // permutation 4
{57,0,48,24,55,67,37,41,56,65,7,16,44,17,15,31,72,52,34,50,35,49,63,5,66,43,13,42,68,46,21,9,36,54,69,47,4,8,18,32,60,30,38,3,6,58,62,64,27,53,14,20,51,73,19,29,40,25,45,71,59,23,22,61,1,33,39,28,26,12,70,11,10,2}, // permutation 5
{25,3,61,6,7,41,65,17,21,31,20,15,23,55,58,0,51,63,67,43,26,19,56,8,42,71,57,16,60,13,28,14,66,18,4,27,62,72,22,33,50,64,5,53,1,30,2,44,54,59,35,52,9,10,29,46,36,47,12,49,48,24,37,38,32,70,45,69,11,68,73,40,39,34}, // permutation 6
{51,31,12,73,24,47,38,17,48,56,3,72,71,13,70,1,40,57,67,0,45,61,26,52,54,34,66,23,41,35,65,59,4,14,2,42,64,29,44,10,9,19,5,60,39,58,62,46,8,33,43,21,68,63,69,20,25,37,11,18,53,36,55,28,30,27,7,50,15,6,16,32,49,22}, // permutation 7
{73,23,5,56,25,21,26,13,55,18,68,39,41,22,60,6,49,71,14,29,57,20,51,50,43,70,69,30,58,66,1,11,40,2,27,45,63,65,48,33,9,15,47,37,0,59,16,61,32,52,46,31,42,35,19,67,53,72,62,17,7,3,28,8,24,64,38,34,54,36,10,44,4,12}, // permutation 8
{22,35,16,52,73,5,68,15,53,45,34,46,42,66,62,63,21,72,40,24,65,7,50,17,25,55,6,54,36,13,59,70,1,41,23,2,43,58,47,0,14,69,8,31,30,18,26,38,4,39,37,67,60,33,71,44,48,49,19,11,51,56,20,29,27,57,10,28,32,64,61,3,9,12} // permutation 9
};

// Seed: 121

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int64_t  f0;
   uint64_t  f1;
   int16_t  f2;
   uint32_t  f3;
   int64_t  f4;
   int32_t  f5;
   int32_t  f6;
   int32_t  f7;
   volatile uint8_t  f8;
};

struct S2 {
    int32_t g_3[3][4];
    volatile int32_t g_12;
    volatile int32_t g_13[1][5];
    volatile int32_t g_14;
    volatile int32_t g_15;
    volatile int32_t g_16;
    int32_t g_17;
    int8_t g_21;
    uint32_t g_22;
    struct S0 g_28;
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
struct S0  func_1(struct S2 * p_29);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_29->g_17 p_29->g_14 p_29->g_22 p_29->g_28
 * writes: p_29->g_17 p_29->g_22
 */
struct S0  func_1(struct S2 * p_29)
{ /* block id: 4 */
    int32_t *l_2 = &p_29->g_3[2][1];
    int32_t *l_4 = &p_29->g_3[2][1];
    int32_t l_5[3][6] = {{0x6B8D9637L,0x6B8D9637L,0L,5L,1L,5L},{0x6B8D9637L,0x6B8D9637L,0L,5L,1L,5L},{0x6B8D9637L,0x6B8D9637L,0L,5L,1L,5L}};
    int32_t *l_6[6] = {&p_29->g_3[2][3],&p_29->g_3[2][3],&p_29->g_3[2][3],&p_29->g_3[2][3],&p_29->g_3[2][3],&p_29->g_3[2][3]};
    uint16_t l_7 = 4UL;
    uint32_t l_25 = 0xBA6EED5AL;
    int i, j;
lbl_18:
    l_7--;
    for (l_7 = 7; (l_7 < 43); ++l_7)
    { /* block id: 8 */
        int32_t l_19[4][10][5] = {{{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L}},{{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L}},{{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L}},{{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L},{0x450D5D74L,0L,0x71E73E4FL,0x5B2EDFD6L,0x20603003L}}};
        int32_t l_20[8][1] = {{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}};
        int i, j, k;
        for (p_29->g_17 = 0; (p_29->g_17 <= 5); p_29->g_17 += 1)
        { /* block id: 11 */
            int i;
            if (p_29->g_14)
                break;
            if (l_7)
                goto lbl_18;
        }
        ++p_29->g_22;
    }
    --l_25;
    return p_29->g_28;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local int64_t l_comm_values[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_comm_values[i] = 1;
    struct S2 c_30;
    struct S2* p_29 = &c_30;
    struct S2 c_31 = {
        {{6L,(-1L),1L,(-1L)},{6L,(-1L),1L,(-1L)},{6L,(-1L),1L,(-1L)}}, // p_29->g_3
        0x737AE9F9L, // p_29->g_12
        {{0x61054D81L,0x61054D81L,0x61054D81L,0x61054D81L,0x61054D81L}}, // p_29->g_13
        0x3FAD0D72L, // p_29->g_14
        0x472B752BL, // p_29->g_15
        (-3L), // p_29->g_16
        0x791F9E6AL, // p_29->g_17
        (-1L), // p_29->g_21
        4294967286UL, // p_29->g_22
        {0L,0x0B645EBEAA1EDCFEL,0x1C1FL,0xE94C9196L,0x530BDFC586C6A208L,0x292D9FAAL,2L,0x435A0028L,0xE5L}, // p_29->g_28
        sequence_input[get_global_id(0)], // p_29->global_0_offset
        sequence_input[get_global_id(1)], // p_29->global_1_offset
        sequence_input[get_global_id(2)], // p_29->global_2_offset
        sequence_input[get_local_id(0)], // p_29->local_0_offset
        sequence_input[get_local_id(1)], // p_29->local_1_offset
        sequence_input[get_local_id(2)], // p_29->local_2_offset
        sequence_input[get_group_id(0)], // p_29->group_0_offset
        sequence_input[get_group_id(1)], // p_29->group_1_offset
        sequence_input[get_group_id(2)], // p_29->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 74)), permutations[0][get_linear_local_id()])), // p_29->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_30 = c_31;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_29);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_29->g_3[i][j], "p_29->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_29->g_12, "p_29->g_12", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_29->g_13[i][j], "p_29->g_13[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_29->g_14, "p_29->g_14", print_hash_value);
    transparent_crc(p_29->g_15, "p_29->g_15", print_hash_value);
    transparent_crc(p_29->g_16, "p_29->g_16", print_hash_value);
    transparent_crc(p_29->g_17, "p_29->g_17", print_hash_value);
    transparent_crc(p_29->g_21, "p_29->g_21", print_hash_value);
    transparent_crc(p_29->g_22, "p_29->g_22", print_hash_value);
    transparent_crc(p_29->g_28.f0, "p_29->g_28.f0", print_hash_value);
    transparent_crc(p_29->g_28.f1, "p_29->g_28.f1", print_hash_value);
    transparent_crc(p_29->g_28.f2, "p_29->g_28.f2", print_hash_value);
    transparent_crc(p_29->g_28.f3, "p_29->g_28.f3", print_hash_value);
    transparent_crc(p_29->g_28.f4, "p_29->g_28.f4", print_hash_value);
    transparent_crc(p_29->g_28.f5, "p_29->g_28.f5", print_hash_value);
    transparent_crc(p_29->g_28.f6, "p_29->g_28.f6", print_hash_value);
    transparent_crc(p_29->g_28.f7, "p_29->g_28.f7", print_hash_value);
    transparent_crc(p_29->g_28.f8, "p_29->g_28.f8", print_hash_value);
    transparent_crc(p_29->l_comm_values[get_linear_local_id()], "p_29->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_29->g_comm_values[get_linear_group_id() * 74 + get_linear_local_id()], "p_29->g_comm_values[get_linear_group_id() * 74 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
