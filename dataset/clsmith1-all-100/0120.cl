// --atomics 34 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 43,21,3 -l 43,1,1
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

__constant uint32_t permutations[10][43] = {
{20,34,17,36,41,1,13,23,11,27,12,28,8,16,37,26,15,39,31,22,18,14,40,7,6,33,19,24,2,30,21,5,10,25,35,4,38,42,29,9,32,0,3}, // permutation 0
{5,2,18,11,21,12,39,26,25,1,10,27,37,32,9,41,16,30,36,31,6,38,7,22,19,17,35,34,15,24,8,14,0,33,20,13,42,3,4,28,29,40,23}, // permutation 1
{17,37,38,10,23,28,33,7,2,11,6,42,25,32,30,21,16,40,4,12,24,13,36,3,31,34,22,27,41,15,39,26,8,29,0,20,5,9,19,18,35,1,14}, // permutation 2
{40,18,31,24,28,27,17,37,1,38,13,12,0,19,29,39,22,36,32,35,30,21,8,2,33,10,5,14,15,9,4,7,6,25,23,20,3,26,41,42,16,11,34}, // permutation 3
{27,30,23,42,34,40,33,29,21,7,28,17,5,38,26,19,14,8,6,22,25,3,41,12,15,32,37,36,20,35,39,11,13,2,31,9,10,18,1,24,16,4,0}, // permutation 4
{38,13,35,26,1,16,6,39,19,32,9,11,18,25,29,7,34,14,37,31,17,36,23,24,0,42,41,28,3,21,4,20,5,22,2,10,33,30,12,8,15,40,27}, // permutation 5
{1,14,22,30,31,15,13,26,37,35,18,29,11,25,28,27,24,9,34,38,19,3,7,33,32,39,21,4,16,0,5,12,42,17,2,40,41,8,10,23,6,36,20}, // permutation 6
{24,26,6,22,20,30,8,2,3,29,34,5,19,14,21,36,11,0,35,7,25,18,16,39,9,40,38,41,32,12,10,23,13,28,42,37,31,1,15,17,4,27,33}, // permutation 7
{41,11,19,3,2,28,17,4,32,10,42,0,24,9,40,8,13,18,39,37,29,16,31,23,1,26,15,6,22,34,33,20,12,7,30,35,14,25,21,5,27,38,36}, // permutation 8
{34,6,7,35,5,13,0,25,11,20,15,10,30,24,22,41,17,38,9,18,27,31,8,21,14,33,40,12,3,4,36,28,16,32,23,1,26,2,29,42,19,37,39} // permutation 9
};

// Seed: 120

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S2 {
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
uint64_t  func_1(struct S2 * p_3);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_1(struct S2 * p_3)
{ /* block id: 4 */
    uint64_t l_2 = 0x62E08974B666A756L;
    return l_2;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[43];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 43; i++)
            l_comm_values[i] = 1;
    struct S2 c_4;
    struct S2* p_3 = &c_4;
    struct S2 c_5 = {
        0, // p_3->v_collective
        sequence_input[get_global_id(0)], // p_3->global_0_offset
        sequence_input[get_global_id(1)], // p_3->global_1_offset
        sequence_input[get_global_id(2)], // p_3->global_2_offset
        sequence_input[get_local_id(0)], // p_3->local_0_offset
        sequence_input[get_local_id(1)], // p_3->local_1_offset
        sequence_input[get_local_id(2)], // p_3->local_2_offset
        sequence_input[get_group_id(0)], // p_3->group_0_offset
        sequence_input[get_group_id(1)], // p_3->group_1_offset
        sequence_input[get_group_id(2)], // p_3->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 43)), permutations[0][get_linear_local_id()])), // p_3->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_4 = c_5;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_3);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_3->v_collective, "p_3->v_collective", print_hash_value);
    transparent_crc(p_3->l_comm_values[get_linear_local_id()], "p_3->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_3->g_comm_values[get_linear_group_id() * 43 + get_linear_local_id()], "p_3->g_comm_values[get_linear_group_id() * 43 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
