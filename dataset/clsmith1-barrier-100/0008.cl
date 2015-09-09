// ---fake_divergence ---inter_thread_comm -g 27,57,1 -l 27,1,1
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

__constant uint32_t permutations[10][27] = {
{4,16,7,3,18,10,20,1,19,11,9,14,15,0,24,5,13,22,23,25,6,26,12,17,8,2,21}, // permutation 0
{18,11,9,16,10,13,15,26,7,2,23,24,25,17,22,4,6,14,20,1,19,21,0,5,8,12,3}, // permutation 1
{12,3,26,5,20,14,8,15,0,24,22,2,13,10,23,16,9,25,17,19,6,18,1,21,11,7,4}, // permutation 2
{1,15,18,3,11,26,12,25,16,19,5,14,23,13,20,7,8,6,9,10,24,22,21,0,17,2,4}, // permutation 3
{8,23,10,11,22,4,13,5,1,3,7,19,20,0,2,17,25,24,12,26,6,15,9,21,14,16,18}, // permutation 4
{25,3,22,15,26,18,1,7,9,17,21,20,2,13,24,12,16,5,6,8,10,19,0,14,23,11,4}, // permutation 5
{14,19,10,16,18,22,1,0,4,9,5,13,17,24,26,7,8,6,23,20,3,21,12,15,2,25,11}, // permutation 6
{5,3,7,9,4,24,21,12,16,22,8,14,13,19,0,25,6,15,11,20,18,1,2,17,26,10,23}, // permutation 7
{18,22,20,16,26,0,11,21,13,25,17,1,24,23,19,6,3,2,7,14,12,15,8,10,9,4,5}, // permutation 8
{14,12,24,18,6,21,17,16,1,9,19,3,11,13,7,4,8,15,25,2,0,20,22,26,5,10,23} // permutation 9
};

// Seed: 8

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
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
uint32_t  func_1(struct S0 * p_2);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2->g_comm_values
 * writes:
 */
uint32_t  func_1(struct S0 * p_2)
{ /* block id: 4 */
    return p_2->g_comm_values[p_2->tid];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[27];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 27; i++)
            l_comm_values[i] = 1;
    struct S0 c_3;
    struct S0* p_2 = &c_3;
    struct S0 c_4 = {
        sequence_input[get_global_id(0)], // p_2->global_0_offset
        sequence_input[get_global_id(1)], // p_2->global_1_offset
        sequence_input[get_global_id(2)], // p_2->global_2_offset
        sequence_input[get_local_id(0)], // p_2->local_0_offset
        sequence_input[get_local_id(1)], // p_2->local_1_offset
        sequence_input[get_local_id(2)], // p_2->local_2_offset
        sequence_input[get_group_id(0)], // p_2->group_0_offset
        sequence_input[get_group_id(1)], // p_2->group_1_offset
        sequence_input[get_group_id(2)], // p_2->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 27)), permutations[0][get_linear_local_id()])), // p_2->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_3 = c_4;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2->l_comm_values[get_linear_local_id()], "p_2->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2->g_comm_values[get_linear_group_id() * 27 + get_linear_local_id()], "p_2->g_comm_values[get_linear_group_id() * 27 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
