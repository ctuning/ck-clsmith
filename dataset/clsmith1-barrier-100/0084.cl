// ---fake_divergence ---inter_thread_comm -g 65,51,3 -l 13,3,1
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

__constant uint32_t permutations[10][39] = {
{17,0,20,38,19,23,27,24,12,9,6,35,26,21,18,15,37,7,25,8,3,36,1,22,30,4,14,29,10,28,33,2,32,13,16,11,31,5,34}, // permutation 0
{14,22,8,23,24,28,35,6,10,30,2,15,36,27,25,37,26,20,0,21,32,31,38,29,12,11,9,5,34,17,33,4,18,3,19,13,1,7,16}, // permutation 1
{9,14,2,4,32,1,31,7,28,35,6,20,0,15,13,29,17,26,37,23,38,16,10,3,24,18,21,33,34,30,25,22,27,11,5,8,36,19,12}, // permutation 2
{18,17,33,2,23,35,4,14,20,28,15,34,16,6,9,10,32,11,21,5,31,27,25,0,3,1,29,22,7,12,8,19,24,30,38,13,26,36,37}, // permutation 3
{29,21,30,18,25,1,31,10,27,38,37,28,4,3,33,6,22,7,9,20,13,19,15,16,5,35,24,11,32,12,2,0,34,8,23,36,17,26,14}, // permutation 4
{1,24,15,25,9,23,8,38,33,4,10,14,6,19,20,18,22,32,35,37,16,36,31,28,30,2,0,12,21,5,7,26,27,29,17,13,34,3,11}, // permutation 5
{29,12,30,33,9,5,35,21,18,6,20,23,32,34,37,16,38,11,26,3,14,36,28,7,15,4,19,25,10,22,31,17,27,2,8,0,1,24,13}, // permutation 6
{26,8,5,4,35,10,33,9,12,28,2,17,7,15,11,32,23,16,27,20,13,0,38,34,22,31,37,6,30,36,21,1,29,18,24,3,25,19,14}, // permutation 7
{37,36,27,26,18,38,14,7,28,31,32,16,21,5,3,4,11,1,29,33,10,22,23,13,12,9,25,6,2,35,30,15,34,17,19,0,8,24,20}, // permutation 8
{14,33,4,36,35,17,23,20,22,9,19,28,3,7,18,16,27,15,13,8,38,31,26,29,32,6,0,10,11,2,30,37,24,25,5,21,34,12,1} // permutation 9
};

// Seed: 84

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
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
uint32_t  func_1(struct S1 * p_4);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_4->l_comm_values
 * writes: p_4->g_3
 */
uint32_t  func_1(struct S1 * p_4)
{ /* block id: 4 */
    int32_t *l_2[5][2][8] = {{{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3},{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3}},{{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3},{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3}},{{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3},{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3}},{{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3},{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3}},{{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3},{&p_4->g_3,&p_4->g_3,(void*)0,(void*)0,&p_4->g_3,&p_4->g_3,&p_4->g_3,&p_4->g_3}}};
    int i, j, k;
    p_4->g_3 = 8L;
    return p_4->l_comm_values[(safe_mod_func_uint32_t_u_u(p_4->tid, 39))];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[39];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 39; i++)
            l_comm_values[i] = 1;
    struct S1 c_5;
    struct S1* p_4 = &c_5;
    struct S1 c_6 = {
        (-7L), // p_4->g_3
        sequence_input[get_global_id(0)], // p_4->global_0_offset
        sequence_input[get_global_id(1)], // p_4->global_1_offset
        sequence_input[get_global_id(2)], // p_4->global_2_offset
        sequence_input[get_local_id(0)], // p_4->local_0_offset
        sequence_input[get_local_id(1)], // p_4->local_1_offset
        sequence_input[get_local_id(2)], // p_4->local_2_offset
        sequence_input[get_group_id(0)], // p_4->group_0_offset
        sequence_input[get_group_id(1)], // p_4->group_1_offset
        sequence_input[get_group_id(2)], // p_4->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 39)), permutations[0][get_linear_local_id()])), // p_4->tid
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
    transparent_crc(p_4->g_comm_values[get_linear_group_id() * 39 + get_linear_local_id()], "p_4->g_comm_values[get_linear_group_id() * 39 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
