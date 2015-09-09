// --atomics 86 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 84,85,1 -l 6,5,1
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

__constant uint32_t permutations[10][30] = {
{29,25,1,7,19,21,24,26,5,6,27,9,8,12,2,11,10,14,13,0,22,16,4,28,18,15,17,20,3,23}, // permutation 0
{2,14,28,27,8,4,10,29,21,15,7,12,3,6,26,16,25,13,0,19,20,5,18,22,1,17,23,24,11,9}, // permutation 1
{15,7,8,14,19,24,16,28,1,18,12,23,2,5,20,21,13,4,11,25,6,22,26,9,27,17,3,10,29,0}, // permutation 2
{6,28,29,9,4,19,18,0,11,25,14,7,16,8,20,12,2,10,23,17,5,27,15,26,3,22,21,24,13,1}, // permutation 3
{18,7,3,4,9,24,28,16,13,23,25,6,21,20,19,29,8,17,5,11,27,22,14,2,1,26,12,10,0,15}, // permutation 4
{11,2,13,19,27,10,12,20,14,24,1,9,5,0,29,4,16,6,8,17,25,18,23,26,22,3,15,7,28,21}, // permutation 5
{10,9,1,27,21,4,17,15,13,26,16,12,22,8,28,29,5,0,23,14,19,7,20,6,2,3,18,24,25,11}, // permutation 6
{12,21,25,24,9,18,27,16,10,13,29,17,26,8,6,20,28,2,23,0,11,7,1,15,14,3,22,19,5,4}, // permutation 7
{25,9,6,13,2,8,5,11,21,19,16,4,7,27,17,24,28,10,1,3,29,23,26,12,0,20,15,22,14,18}, // permutation 8
{14,0,7,22,21,29,1,4,11,19,28,8,10,5,3,13,24,15,26,27,25,6,23,17,16,9,18,12,20,2} // permutation 9
};

// Seed: 127

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint16_t  f0;
   uint32_t  f1;
   int32_t  f2;
   uint64_t  f3;
   int8_t  f4;
   int32_t  f5;
   uint64_t  f6;
};

struct S1 {
    int32_t g_6;
    int32_t * volatile g_5;
    volatile struct S0 g_7;
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
uint64_t  func_1(struct S1 * p_9);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_9->g_5 p_9->g_6 p_9->g_7 p_9->g_comm_values
 * writes: p_9->g_6 p_9->g_7
 */
uint64_t  func_1(struct S1 * p_9)
{ /* block id: 4 */
    int32_t *l_3 = (void*)0;
    int32_t **l_2 = &l_3;
    uint16_t l_4 = 1UL;
    volatile struct S0 *l_8[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    (*l_2) = (void*)0;
    (*p_9->g_5) |= l_4;
    p_9->g_7 = p_9->g_7;
    return p_9->g_comm_values[p_9->tid];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[30];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 30; i++)
            l_comm_values[i] = 1;
    struct S1 c_10;
    struct S1* p_9 = &c_10;
    struct S1 c_11 = {
        0x51AD67A4L, // p_9->g_6
        &p_9->g_6, // p_9->g_5
        {0x64E6L,0UL,0x0F7E7308L,0x4727CAD7D711E7BFL,6L,0x2CFF8EE1L,0x11023DCDF5EF889AL}, // p_9->g_7
        0, // p_9->v_collective
        sequence_input[get_global_id(0)], // p_9->global_0_offset
        sequence_input[get_global_id(1)], // p_9->global_1_offset
        sequence_input[get_global_id(2)], // p_9->global_2_offset
        sequence_input[get_local_id(0)], // p_9->local_0_offset
        sequence_input[get_local_id(1)], // p_9->local_1_offset
        sequence_input[get_local_id(2)], // p_9->local_2_offset
        sequence_input[get_group_id(0)], // p_9->group_0_offset
        sequence_input[get_group_id(1)], // p_9->group_1_offset
        sequence_input[get_group_id(2)], // p_9->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[0][get_linear_local_id()])), // p_9->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_10 = c_11;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_9);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_9->g_6, "p_9->g_6", print_hash_value);
    transparent_crc(p_9->g_7.f0, "p_9->g_7.f0", print_hash_value);
    transparent_crc(p_9->g_7.f1, "p_9->g_7.f1", print_hash_value);
    transparent_crc(p_9->g_7.f2, "p_9->g_7.f2", print_hash_value);
    transparent_crc(p_9->g_7.f3, "p_9->g_7.f3", print_hash_value);
    transparent_crc(p_9->g_7.f4, "p_9->g_7.f4", print_hash_value);
    transparent_crc(p_9->g_7.f5, "p_9->g_7.f5", print_hash_value);
    transparent_crc(p_9->g_7.f6, "p_9->g_7.f6", print_hash_value);
    transparent_crc(p_9->v_collective, "p_9->v_collective", print_hash_value);
    transparent_crc(p_9->l_comm_values[get_linear_local_id()], "p_9->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_9->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()], "p_9->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
