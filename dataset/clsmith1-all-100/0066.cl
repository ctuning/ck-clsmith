// --atomics 44 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 100,18,4 -l 5,6,1
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
{9,0,23,22,8,26,28,24,1,11,7,17,14,10,5,16,4,29,3,2,12,21,13,18,15,19,6,25,20,27}, // permutation 0
{20,25,7,3,5,8,28,6,1,14,19,24,23,17,11,21,29,15,10,13,12,2,4,26,18,16,9,27,22,0}, // permutation 1
{9,22,12,15,3,27,18,13,7,24,10,14,25,4,21,11,20,23,1,28,2,0,5,17,29,26,19,8,16,6}, // permutation 2
{9,2,12,29,1,22,28,10,25,4,5,27,13,20,17,16,18,8,21,6,3,15,26,0,19,14,24,7,23,11}, // permutation 3
{21,13,25,15,6,10,17,2,14,0,5,20,3,12,18,11,29,27,16,9,23,8,26,19,22,24,4,7,1,28}, // permutation 4
{22,29,6,0,1,4,8,17,25,21,27,10,3,15,9,18,13,23,11,2,7,14,20,28,24,26,16,12,5,19}, // permutation 5
{11,4,16,29,8,7,23,1,15,20,24,25,27,22,28,9,0,2,6,5,13,10,12,21,18,19,14,17,3,26}, // permutation 6
{11,17,14,21,10,9,5,25,24,2,20,16,0,15,18,8,13,28,6,23,1,27,29,7,3,4,26,19,12,22}, // permutation 7
{14,6,11,26,3,9,28,25,21,10,5,2,23,13,0,22,12,4,16,15,20,29,24,19,27,1,17,7,8,18}, // permutation 8
{5,26,8,28,22,20,19,6,0,11,16,17,9,27,14,3,12,1,23,18,13,25,7,21,24,15,29,10,4,2} // permutation 9
};

// Seed: 66

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_4;
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
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S0 * p_24);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_24->l_comm_values
 * writes:
 */
uint32_t  func_1(struct S0 * p_24)
{ /* block id: 4 */
    int32_t *l_3 = &p_24->g_4;
    int32_t **l_2 = &l_3;
    (*l_2) = (void*)0;
    if ((atomic_inc(&p_24->l_atomic_input[34]) == 1))
    { /* block id: 7 */
        uint32_t l_5 = 0UL;
        int8_t l_6 = 0x22L;
        uint64_t l_14 = 0xD1C58BDFADF62858L;
        int16_t l_15 = 1L;
        int32_t l_16 = 0x7C7008B1L;
        int32_t l_23 = 0L;
        l_6 = l_5;
        for (l_5 = 0; (l_5 >= 34); l_5 = safe_add_func_uint16_t_u_u(l_5, 5))
        { /* block id: 11 */
            int8_t l_9 = 1L;
            int8_t l_10 = 0x7BL;
            uint64_t l_11 = 0x3DE0369BD697E780L;
            --l_11;
        }
        if (((GROUP_DIVERGE(2, 1) , (l_15 |= l_14)) , l_16))
        { /* block id: 15 */
            int32_t l_17 = 0x4A5EA964L;
            int16_t l_21[10];
            uint32_t l_22 = 1UL;
            int i;
            for (i = 0; i < 10; i++)
                l_21[i] = 0L;
            for (l_17 = 0; (l_17 > (-13)); --l_17)
            { /* block id: 18 */
                uint64_t l_20 = 0xC279A20B28787D63L;
                l_16 = l_20;
            }
            l_22 = (l_16 = l_21[4]);
        }
        else
        { /* block id: 23 */
            l_16 = 0x4CD20446L;
        }
        l_23 ^= (-1L);
        unsigned int result = 0;
        result += l_5;
        result += l_6;
        result += l_14;
        result += l_15;
        result += l_16;
        result += l_23;
        atomic_add(&p_24->l_special_values[34], result);
    }
    else
    { /* block id: 27 */
        (1 + 1);
    }
    (*l_2) = &p_24->g_4;
    return p_24->l_comm_values[(safe_mod_func_uint32_t_u_u(p_24->tid, 30))];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_input[44];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 44; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[44];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 44; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[30];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 30; i++)
            l_comm_values[i] = 1;
    struct S0 c_25;
    struct S0* p_24 = &c_25;
    struct S0 c_26 = {
        (-3L), // p_24->g_4
        0, // p_24->v_collective
        sequence_input[get_global_id(0)], // p_24->global_0_offset
        sequence_input[get_global_id(1)], // p_24->global_1_offset
        sequence_input[get_global_id(2)], // p_24->global_2_offset
        sequence_input[get_local_id(0)], // p_24->local_0_offset
        sequence_input[get_local_id(1)], // p_24->local_1_offset
        sequence_input[get_local_id(2)], // p_24->local_2_offset
        sequence_input[get_group_id(0)], // p_24->group_0_offset
        sequence_input[get_group_id(1)], // p_24->group_1_offset
        sequence_input[get_group_id(2)], // p_24->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[0][get_linear_local_id()])), // p_24->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_25 = c_26;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_24);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_24->g_4, "p_24->g_4", print_hash_value);
    transparent_crc(p_24->v_collective, "p_24->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 44; i++)
            transparent_crc(p_24->l_special_values[i], "p_24->l_special_values[i]", print_hash_value);
    transparent_crc(p_24->l_comm_values[get_linear_local_id()], "p_24->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_24->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()], "p_24->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
