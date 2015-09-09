// ---fake_divergence ---inter_thread_comm -g 89,42,2 -l 1,21,2
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
{16,8,29,32,23,11,14,30,7,6,12,5,25,39,37,2,41,18,40,15,22,26,31,3,34,27,21,38,33,0,10,28,4,9,1,35,20,24,17,19,13,36}, // permutation 0
{39,34,24,13,0,18,41,36,29,20,40,5,23,19,26,27,10,25,21,28,8,14,30,38,31,7,2,33,4,6,37,22,1,9,16,35,17,32,3,11,12,15}, // permutation 1
{35,22,15,29,2,28,39,30,7,26,1,40,10,11,4,21,38,18,3,31,32,33,36,8,37,17,14,19,25,6,9,0,13,41,12,34,24,23,16,20,27,5}, // permutation 2
{17,35,15,25,12,1,9,33,37,36,30,18,41,14,26,8,13,29,0,27,6,23,19,5,3,21,34,7,40,2,31,16,32,22,10,4,11,28,38,24,39,20}, // permutation 3
{6,3,22,9,24,37,31,4,5,32,18,21,12,36,23,20,1,26,7,25,39,8,28,35,14,29,33,2,27,10,41,40,0,17,38,11,30,15,13,19,16,34}, // permutation 4
{41,18,31,20,23,36,6,4,3,32,33,40,9,39,14,2,27,29,15,26,17,19,7,37,38,11,1,22,25,8,28,0,12,35,16,21,34,5,13,24,10,30}, // permutation 5
{9,34,2,8,6,23,22,13,40,1,17,5,26,4,14,31,11,32,24,29,15,33,41,37,39,16,3,12,21,7,28,35,36,20,27,38,0,18,19,30,10,25}, // permutation 6
{6,16,9,20,40,4,1,13,24,28,25,26,2,30,8,3,22,34,14,35,23,0,7,38,41,11,21,27,17,19,10,39,18,29,31,32,5,15,33,37,12,36}, // permutation 7
{19,7,27,35,24,25,41,20,13,34,37,11,38,5,21,33,39,26,1,31,2,3,10,8,36,15,16,6,32,17,29,28,4,14,9,22,18,12,23,40,0,30}, // permutation 8
{29,26,39,28,5,38,7,18,35,3,27,36,4,20,14,13,15,22,8,31,40,25,24,0,2,33,9,12,6,1,41,19,23,30,34,21,10,37,16,17,11,32} // permutation 9
};

// Seed: 105

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S2 {
    int32_t g_4;
    int32_t * volatile g_3;
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
uint64_t  func_1(struct S2 * p_6);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_6->g_3 p_6->g_4
 * writes: p_6->g_4
 */
uint64_t  func_1(struct S2 * p_6)
{ /* block id: 4 */
    uint8_t l_5 = 0x16L;
    (*p_6->g_3) ^= (safe_unary_minus_func_uint16_t_u(GROUP_DIVERGE(2, 1)));
    return l_5;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[42];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 42; i++)
            l_comm_values[i] = 1;
    struct S2 c_7;
    struct S2* p_6 = &c_7;
    struct S2 c_8 = {
        0x572276B8L, // p_6->g_4
        &p_6->g_4, // p_6->g_3
        sequence_input[get_global_id(0)], // p_6->global_0_offset
        sequence_input[get_global_id(1)], // p_6->global_1_offset
        sequence_input[get_global_id(2)], // p_6->global_2_offset
        sequence_input[get_local_id(0)], // p_6->local_0_offset
        sequence_input[get_local_id(1)], // p_6->local_1_offset
        sequence_input[get_local_id(2)], // p_6->local_2_offset
        sequence_input[get_group_id(0)], // p_6->group_0_offset
        sequence_input[get_group_id(1)], // p_6->group_1_offset
        sequence_input[get_group_id(2)], // p_6->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 42)), permutations[0][get_linear_local_id()])), // p_6->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_7 = c_8;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_6);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_6->g_4, "p_6->g_4", print_hash_value);
    transparent_crc(p_6->l_comm_values[get_linear_local_id()], "p_6->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_6->g_comm_values[get_linear_group_id() * 42 + get_linear_local_id()], "p_6->g_comm_values[get_linear_group_id() * 42 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
