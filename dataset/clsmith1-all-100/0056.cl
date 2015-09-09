// --atomics 70 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 47,49,3 -l 47,1,1
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

__constant uint32_t permutations[10][47] = {
{33,44,26,3,46,34,9,2,17,32,31,13,20,37,5,18,23,28,36,41,39,22,30,6,40,19,38,15,14,21,42,35,25,16,0,43,8,11,24,12,7,1,45,27,10,29,4}, // permutation 0
{1,15,41,20,40,38,42,8,43,26,22,46,36,45,34,24,35,33,16,23,29,37,19,11,30,44,3,25,14,6,13,32,21,27,12,10,7,5,28,2,39,17,9,0,31,18,4}, // permutation 1
{16,14,1,34,19,23,8,6,11,10,3,36,32,43,15,37,4,21,13,35,40,17,18,26,20,25,7,27,45,38,29,12,30,46,2,39,24,44,28,5,41,31,22,33,0,42,9}, // permutation 2
{23,4,5,0,28,41,16,35,17,20,6,2,11,15,13,44,22,34,30,46,19,33,42,24,25,12,7,18,37,36,26,9,40,39,21,27,1,14,29,43,3,31,10,45,32,38,8}, // permutation 3
{32,21,18,0,22,41,14,16,44,9,28,11,35,6,3,40,39,46,38,4,37,45,8,10,5,12,24,20,42,43,13,7,33,26,36,23,27,29,1,2,17,19,15,30,25,34,31}, // permutation 4
{14,12,27,25,37,0,16,13,22,42,44,8,36,45,29,5,17,11,1,23,26,3,35,21,7,40,20,6,41,4,19,2,28,43,9,15,10,18,32,34,46,24,39,38,30,31,33}, // permutation 5
{14,27,12,42,16,30,33,3,13,34,2,43,24,41,1,23,21,15,25,4,17,22,37,7,40,9,18,36,38,44,35,29,20,32,28,46,11,0,45,31,19,39,5,6,8,10,26}, // permutation 6
{15,14,18,27,25,42,35,24,22,37,8,17,0,21,43,40,4,29,32,2,6,26,19,36,3,9,28,20,11,1,41,34,44,30,16,31,45,10,12,38,13,23,39,5,46,33,7}, // permutation 7
{5,15,31,21,30,2,7,39,34,16,4,3,18,14,37,41,17,19,23,46,43,45,24,20,28,42,6,44,0,12,35,11,33,29,38,10,22,26,13,8,40,27,25,1,36,9,32}, // permutation 8
{30,20,29,33,31,2,19,18,16,15,45,25,23,44,36,22,10,8,42,7,26,3,11,0,1,41,34,32,27,43,28,24,46,6,5,9,14,37,13,12,38,39,40,35,17,4,21} // permutation 9
};

// Seed: 56

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint32_t v_collective;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
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


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[47];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 47; i++)
            l_comm_values[i] = 1;
    struct S0 c_3;
    struct S0* p_2 = &c_3;
    struct S0 c_4 = {
        0, // p_2->v_collective
        sequence_input[get_global_id(0)], // p_2->global_0_offset
        sequence_input[get_global_id(1)], // p_2->global_1_offset
        sequence_input[get_global_id(2)], // p_2->global_2_offset
        sequence_input[get_local_id(0)], // p_2->local_0_offset
        sequence_input[get_local_id(1)], // p_2->local_1_offset
        sequence_input[get_local_id(2)], // p_2->local_2_offset
        sequence_input[get_group_id(0)], // p_2->group_0_offset
        sequence_input[get_group_id(1)], // p_2->group_1_offset
        sequence_input[get_group_id(2)], // p_2->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 47)), permutations[0][get_linear_local_id()])), // p_2->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_3 = c_4;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2->v_collective, "p_2->v_collective", print_hash_value);
    transparent_crc(p_2->l_comm_values[get_linear_local_id()], "p_2->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2->g_comm_values[get_linear_group_id() * 47 + get_linear_local_id()], "p_2->g_comm_values[get_linear_group_id() * 47 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
