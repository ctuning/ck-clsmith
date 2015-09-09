// ---fake_divergence ---inter_thread_comm -g 74,47,1 -l 2,1,1
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{1,0}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{1,0}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 3

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    uint32_t g_8[1][7][6];
    int32_t g_12[5];
    int32_t * volatile g_11;
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
uint32_t  func_1(struct S0 * p_13);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_13->g_8 p_13->g_3 p_13->g_11 p_13->g_comm_values
 * writes: p_13->g_8 p_13->g_3 p_13->g_12
 */
uint32_t  func_1(struct S0 * p_13)
{ /* block id: 4 */
    int32_t *l_2 = &p_13->g_3;
    int32_t *l_4 = &p_13->g_3;
    int32_t *l_5 = &p_13->g_3;
    int32_t *l_6 = &p_13->g_3;
    int32_t *l_7 = &p_13->g_3;
    p_13->g_8[0][6][0]++;
    (*p_13->g_11) = ((*l_4) |= 0x50A4BA31L);
    return p_13->g_comm_values[p_13->tid];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S0 c_14;
    struct S0* p_13 = &c_14;
    struct S0 c_15 = {
        4L, // p_13->g_3
        {{{0x9989D221L,7UL,6UL,4294967289UL,6UL,7UL},{0x9989D221L,7UL,6UL,4294967289UL,6UL,7UL},{0x9989D221L,7UL,6UL,4294967289UL,6UL,7UL},{0x9989D221L,7UL,6UL,4294967289UL,6UL,7UL},{0x9989D221L,7UL,6UL,4294967289UL,6UL,7UL},{0x9989D221L,7UL,6UL,4294967289UL,6UL,7UL},{0x9989D221L,7UL,6UL,4294967289UL,6UL,7UL}}}, // p_13->g_8
        {0L,0L,0L,0L,0L}, // p_13->g_12
        &p_13->g_12[3], // p_13->g_11
        sequence_input[get_global_id(0)], // p_13->global_0_offset
        sequence_input[get_global_id(1)], // p_13->global_1_offset
        sequence_input[get_global_id(2)], // p_13->global_2_offset
        sequence_input[get_local_id(0)], // p_13->local_0_offset
        sequence_input[get_local_id(1)], // p_13->local_1_offset
        sequence_input[get_local_id(2)], // p_13->local_2_offset
        sequence_input[get_group_id(0)], // p_13->group_0_offset
        sequence_input[get_group_id(1)], // p_13->group_1_offset
        sequence_input[get_group_id(2)], // p_13->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_13->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_14 = c_15;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_13);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_13->g_3, "p_13->g_3", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_13->g_8[i][j][k], "p_13->g_8[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_13->g_12[i], "p_13->g_12[i]", print_hash_value);

    }
    transparent_crc(p_13->l_comm_values[get_linear_local_id()], "p_13->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_13->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_13->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
