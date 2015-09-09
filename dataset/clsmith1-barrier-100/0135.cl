// ---fake_divergence ---inter_thread_comm -g 96,49,1 -l 6,7,1
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

__constant uint32_t permutations[10][42] = {
{40,2,3,15,31,10,26,5,22,20,28,1,6,39,9,0,4,23,33,12,7,35,25,24,30,38,17,36,41,34,32,37,8,19,13,21,14,29,11,27,16,18}, // permutation 0
{33,31,2,34,21,6,12,11,14,29,17,1,24,22,19,27,3,40,5,35,39,23,26,20,7,18,30,38,41,37,4,28,0,9,16,15,10,25,36,8,13,32}, // permutation 1
{9,27,28,6,20,30,35,3,36,39,1,4,25,8,23,0,17,11,33,41,14,40,38,19,34,12,21,22,5,37,32,31,29,13,18,24,10,2,15,16,26,7}, // permutation 2
{41,30,17,0,12,21,36,18,7,10,9,16,20,38,31,37,19,33,5,2,4,1,14,22,13,29,15,28,23,11,3,8,32,26,39,6,25,34,24,27,40,35}, // permutation 3
{19,4,18,34,39,1,38,13,12,37,2,16,20,10,25,33,5,41,24,21,11,29,15,22,26,3,7,8,31,9,17,23,40,30,14,36,6,35,27,32,0,28}, // permutation 4
{27,10,8,25,34,21,18,12,32,0,36,39,6,16,3,11,19,5,9,17,28,13,33,24,35,7,2,38,14,23,31,30,15,20,4,40,29,37,41,26,22,1}, // permutation 5
{7,4,12,14,22,31,27,34,41,33,17,24,32,37,23,13,5,30,6,25,2,18,11,3,29,39,1,20,26,35,38,15,21,16,28,10,8,9,40,0,19,36}, // permutation 6
{3,13,30,12,35,31,2,8,10,19,36,25,14,32,38,28,29,16,6,18,9,4,23,7,40,37,22,24,21,20,39,27,41,26,15,34,33,11,17,1,5,0}, // permutation 7
{7,40,23,33,12,0,39,3,30,20,35,31,32,21,4,2,15,6,8,28,14,27,19,17,34,1,9,16,10,24,11,5,18,29,36,37,25,13,22,26,38,41}, // permutation 8
{15,39,6,8,17,2,28,22,14,34,41,38,26,7,21,35,1,32,37,31,19,11,5,0,18,30,23,3,36,16,40,24,4,20,13,25,33,12,27,9,29,10} // permutation 9
};

// Seed: 135

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S2 {
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
uint32_t  func_1(struct S2 * p_3);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_1(struct S2 * p_3)
{ /* block id: 4 */
    int32_t l_2 = 6L;
    return l_2;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[42];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 42; i++)
            l_comm_values[i] = 1;
    struct S2 c_4;
    struct S2* p_3 = &c_4;
    struct S2 c_5 = {
        sequence_input[get_global_id(0)], // p_3->global_0_offset
        sequence_input[get_global_id(1)], // p_3->global_1_offset
        sequence_input[get_global_id(2)], // p_3->global_2_offset
        sequence_input[get_local_id(0)], // p_3->local_0_offset
        sequence_input[get_local_id(1)], // p_3->local_1_offset
        sequence_input[get_local_id(2)], // p_3->local_2_offset
        sequence_input[get_group_id(0)], // p_3->group_0_offset
        sequence_input[get_group_id(1)], // p_3->group_1_offset
        sequence_input[get_group_id(2)], // p_3->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 42)), permutations[0][get_linear_local_id()])), // p_3->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_4 = c_5;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_3);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_3->l_comm_values[get_linear_local_id()], "p_3->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_3->g_comm_values[get_linear_group_id() * 42 + get_linear_local_id()], "p_3->g_comm_values[get_linear_group_id() * 42 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
