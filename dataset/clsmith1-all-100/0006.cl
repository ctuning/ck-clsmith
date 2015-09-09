// --atomics 46 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 86,52,2 -l 1,13,2
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

__constant uint32_t permutations[10][26] = {
{1,24,12,21,9,13,25,16,14,0,20,10,3,22,17,4,2,19,5,15,18,6,7,23,8,11}, // permutation 0
{17,2,25,18,15,8,11,21,9,10,19,23,1,24,20,13,7,12,22,6,4,5,3,14,16,0}, // permutation 1
{2,21,25,5,11,10,23,7,8,6,14,17,15,24,22,16,0,12,20,3,13,9,4,19,1,18}, // permutation 2
{16,10,21,3,17,14,22,9,7,24,0,4,8,25,5,23,1,20,12,11,19,18,13,2,15,6}, // permutation 3
{1,17,3,16,4,14,6,11,21,5,8,10,23,7,25,2,0,18,20,12,13,19,22,24,9,15}, // permutation 4
{10,11,14,18,24,1,25,23,22,3,9,2,19,15,16,0,17,4,21,6,5,8,7,12,13,20}, // permutation 5
{3,11,17,1,4,0,7,12,14,13,8,21,5,20,23,2,16,18,19,24,9,10,6,22,25,15}, // permutation 6
{14,24,22,0,15,9,3,4,11,2,12,20,13,5,23,21,8,1,6,7,25,10,17,16,18,19}, // permutation 7
{8,24,19,18,9,16,10,1,13,4,3,25,22,2,6,20,23,14,0,11,17,5,12,21,15,7}, // permutation 8
{18,6,19,23,0,2,22,17,21,1,16,11,13,10,20,9,7,8,14,25,15,3,5,4,24,12} // permutation 9
};

// Seed: 6

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S3 {
    int8_t g_8;
    int32_t g_16;
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
int64_t  func_1(struct S3 * p_22);
int8_t * func_9(int8_t * p_10, int32_t  p_11, int32_t  p_12, int32_t  p_13, struct S3 * p_22);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_22->g_comm_values p_22->g_16 p_22->l_comm_values p_22->g_8
 * writes: p_22->g_16
 */
int64_t  func_1(struct S3 * p_22)
{ /* block id: 4 */
    uint16_t l_2 = 0x6957L;
    int8_t *l_7 = &p_22->g_8;
    int8_t **l_18 = &l_7;
    int8_t *l_19[10][5][1] = {{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}},{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}},{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}},{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}},{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}},{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}},{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}},{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}},{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}},{{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8},{&p_22->g_8}}};
    int32_t *l_20 = (void*)0;
    int32_t *l_21 = &p_22->g_16;
    int i, j, k;
    (*l_21) = ((l_2 >= (safe_lshift_func_int16_t_s_s(((0x4B64B5C6F8B8AE50L ^ (safe_mod_func_uint64_t_u_u((((l_7 != (void*)0) || ((((*l_18) = func_9(&p_22->g_8, p_22->g_comm_values[p_22->tid], p_22->g_comm_values[p_22->tid], l_2, p_22)) != l_19[1][1][0]) == p_22->g_comm_values[p_22->tid])) && p_22->l_comm_values[(safe_mod_func_uint32_t_u_u(p_22->tid, 26))]), p_22->g_comm_values[p_22->tid]))) && l_2), p_22->g_8))) && l_2);
    return p_22->g_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_22->g_16
 * writes: p_22->g_16
 */
int8_t * func_9(int8_t * p_10, int32_t  p_11, int32_t  p_12, int32_t  p_13, struct S3 * p_22)
{ /* block id: 5 */
    VECTOR(int32_t, 16) l_14 = (VECTOR(int32_t, 16))(0x26E8F591L, (VECTOR(int32_t, 4))(0x26E8F591L, (VECTOR(int32_t, 2))(0x26E8F591L, 0x5DB74A71L), 0x5DB74A71L), 0x5DB74A71L, 0x26E8F591L, 0x5DB74A71L, (VECTOR(int32_t, 2))(0x26E8F591L, 0x5DB74A71L), (VECTOR(int32_t, 2))(0x26E8F591L, 0x5DB74A71L), 0x26E8F591L, 0x5DB74A71L, 0x26E8F591L, 0x5DB74A71L);
    int32_t *l_15 = &p_22->g_16;
    int8_t *l_17[8][10][2] = {{{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0}},{{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0}},{{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0}},{{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0}},{{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0}},{{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0}},{{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0}},{{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0},{&p_22->g_8,(void*)0}}};
    int i, j, k;
    (*l_15) ^= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_14.sa6e483bb)).s36)).even;
    return l_17[4][8][1];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[26];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 26; i++)
            l_comm_values[i] = 1;
    struct S3 c_23;
    struct S3* p_22 = &c_23;
    struct S3 c_24 = {
        4L, // p_22->g_8
        8L, // p_22->g_16
        0, // p_22->v_collective
        sequence_input[get_global_id(0)], // p_22->global_0_offset
        sequence_input[get_global_id(1)], // p_22->global_1_offset
        sequence_input[get_global_id(2)], // p_22->global_2_offset
        sequence_input[get_local_id(0)], // p_22->local_0_offset
        sequence_input[get_local_id(1)], // p_22->local_1_offset
        sequence_input[get_local_id(2)], // p_22->local_2_offset
        sequence_input[get_group_id(0)], // p_22->group_0_offset
        sequence_input[get_group_id(1)], // p_22->group_1_offset
        sequence_input[get_group_id(2)], // p_22->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 26)), permutations[0][get_linear_local_id()])), // p_22->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_23 = c_24;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_22);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_22->g_8, "p_22->g_8", print_hash_value);
    transparent_crc(p_22->g_16, "p_22->g_16", print_hash_value);
    transparent_crc(p_22->v_collective, "p_22->v_collective", print_hash_value);
    transparent_crc(p_22->l_comm_values[get_linear_local_id()], "p_22->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_22->g_comm_values[get_linear_group_id() * 26 + get_linear_local_id()], "p_22->g_comm_values[get_linear_group_id() * 26 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
