// ---fake_divergence ---inter_thread_comm -g 27,16,4 -l 9,1,2
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

__constant uint32_t permutations[10][18] = {
{12,9,14,13,4,5,6,7,1,0,10,11,3,17,15,16,8,2}, // permutation 0
{2,13,5,3,16,7,15,1,9,17,6,4,0,12,14,8,10,11}, // permutation 1
{9,7,8,5,10,11,15,6,17,2,4,16,3,12,13,14,0,1}, // permutation 2
{5,11,7,16,4,12,9,13,10,2,3,17,6,14,8,15,1,0}, // permutation 3
{4,15,9,10,7,3,6,1,11,16,13,2,14,12,5,0,8,17}, // permutation 4
{1,15,11,12,0,6,16,2,9,5,13,17,10,4,3,14,8,7}, // permutation 5
{17,13,10,9,12,14,3,15,0,6,5,7,1,16,2,4,8,11}, // permutation 6
{17,3,15,0,12,9,5,2,1,4,8,11,13,7,6,16,14,10}, // permutation 7
{2,12,17,8,3,6,10,13,1,14,4,7,11,0,15,5,9,16}, // permutation 8
{15,2,0,16,14,3,11,13,6,8,5,7,4,10,17,9,12,1} // permutation 9
};

// Seed: 13

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
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
uint32_t  func_1(struct S0 * p_4);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_4->l_comm_values
 * writes: p_4->g_3
 */
uint32_t  func_1(struct S0 * p_4)
{ /* block id: 4 */
    int16_t l_2[8] = {0x7CB5L,0x7CB5L,0x7CB5L,0x7CB5L,0x7CB5L,0x7CB5L,0x7CB5L,0x7CB5L};
    int i;
    for (p_4->g_3 = 0; p_4->g_3 < 8; p_4->g_3 += 1)
    {
        l_2[p_4->g_3] = 0x5688L;
    }
    return p_4->l_comm_values[(safe_mod_func_uint32_t_u_u(p_4->tid, 18))];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[18];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 18; i++)
            l_comm_values[i] = 1;
    struct S0 c_5;
    struct S0* p_4 = &c_5;
    struct S0 c_6 = {
        0L, // p_4->g_3
        sequence_input[get_global_id(0)], // p_4->global_0_offset
        sequence_input[get_global_id(1)], // p_4->global_1_offset
        sequence_input[get_global_id(2)], // p_4->global_2_offset
        sequence_input[get_local_id(0)], // p_4->local_0_offset
        sequence_input[get_local_id(1)], // p_4->local_1_offset
        sequence_input[get_local_id(2)], // p_4->local_2_offset
        sequence_input[get_group_id(0)], // p_4->group_0_offset
        sequence_input[get_group_id(1)], // p_4->group_1_offset
        sequence_input[get_group_id(2)], // p_4->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 18)), permutations[0][get_linear_local_id()])), // p_4->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_5 = c_6;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_4);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_4->g_3, "p_4->g_3", print_hash_value);
    transparent_crc(p_4->l_comm_values[get_linear_local_id()], "p_4->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_4->g_comm_values[get_linear_group_id() * 18 + get_linear_local_id()], "p_4->g_comm_values[get_linear_group_id() * 18 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
