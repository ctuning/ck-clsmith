// ---fake_divergence ---inter_thread_comm -g 19,41,11 -l 19,1,1
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

__constant uint32_t permutations[10][19] = {
{9,16,0,5,10,11,7,2,14,17,4,18,1,15,6,13,8,12,3}, // permutation 0
{3,0,11,7,6,4,14,13,12,2,10,1,15,17,9,5,16,8,18}, // permutation 1
{5,2,8,1,12,14,10,13,0,3,18,17,15,6,16,11,7,9,4}, // permutation 2
{18,15,0,11,17,10,16,13,7,6,4,3,9,14,5,12,8,2,1}, // permutation 3
{10,0,14,12,11,3,15,16,5,17,8,4,1,13,18,7,6,2,9}, // permutation 4
{8,4,0,10,16,17,18,7,14,9,11,1,15,5,3,2,12,6,13}, // permutation 5
{2,4,15,11,16,13,18,1,7,14,0,10,5,9,12,8,17,6,3}, // permutation 6
{14,17,6,11,4,0,2,13,3,15,16,12,9,10,7,18,1,8,5}, // permutation 7
{1,17,12,3,18,2,5,9,7,13,8,4,16,10,15,14,6,0,11}, // permutation 8
{14,0,13,1,18,8,16,7,17,6,10,15,9,5,12,11,2,4,3} // permutation 9
};

// Seed: 104

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S3 {
    int32_t g_3[2][4];
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
uint32_t  func_1(struct S3 * p_4);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_4->g_comm_values p_4->g_3
 * writes: p_4->g_3
 */
uint32_t  func_1(struct S3 * p_4)
{ /* block id: 4 */
    int32_t *l_2 = &p_4->g_3[1][1];
    (*l_2) = p_4->g_comm_values[p_4->tid];
    return (*l_2);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local int64_t l_comm_values[19];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 19; i++)
            l_comm_values[i] = 1;
    struct S3 c_5;
    struct S3* p_4 = &c_5;
    struct S3 c_6 = {
        {{0x21AC4888L,0x21AC4888L,0x21AC4888L,0x21AC4888L},{0x21AC4888L,0x21AC4888L,0x21AC4888L,0x21AC4888L}}, // p_4->g_3
        sequence_input[get_global_id(0)], // p_4->global_0_offset
        sequence_input[get_global_id(1)], // p_4->global_1_offset
        sequence_input[get_global_id(2)], // p_4->global_2_offset
        sequence_input[get_local_id(0)], // p_4->local_0_offset
        sequence_input[get_local_id(1)], // p_4->local_1_offset
        sequence_input[get_local_id(2)], // p_4->local_2_offset
        sequence_input[get_group_id(0)], // p_4->group_0_offset
        sequence_input[get_group_id(1)], // p_4->group_1_offset
        sequence_input[get_group_id(2)], // p_4->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 19)), permutations[0][get_linear_local_id()])), // p_4->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_5 = c_6;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_4);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_4->g_3[i][j], "p_4->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4->l_comm_values[get_linear_local_id()], "p_4->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_4->g_comm_values[get_linear_group_id() * 19 + get_linear_local_id()], "p_4->g_comm_values[get_linear_group_id() * 19 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
