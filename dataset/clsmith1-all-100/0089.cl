// --atomics 11 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 65,62,2 -l 1,31,2
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

__constant uint32_t permutations[10][62] = {
{1,30,35,40,19,14,8,37,10,51,61,49,26,23,13,50,21,28,5,16,12,0,48,38,17,24,20,60,47,52,11,27,34,29,43,36,42,25,57,59,4,3,55,9,7,15,45,31,2,32,44,22,33,18,41,58,56,39,54,53,6,46}, // permutation 0
{15,61,48,8,43,18,19,34,21,26,37,35,6,41,44,49,46,38,51,33,40,4,47,54,52,5,11,7,16,20,22,32,27,58,17,24,55,3,59,13,23,60,0,36,45,50,9,30,56,57,14,53,31,12,39,28,10,2,25,1,29,42}, // permutation 1
{24,51,11,44,56,53,28,47,17,21,54,6,26,29,13,43,19,27,38,48,1,16,35,40,23,32,58,61,7,39,22,42,9,46,60,20,14,0,5,12,36,49,18,33,30,37,41,8,4,45,25,15,55,57,59,10,3,31,52,2,50,34}, // permutation 2
{13,51,39,31,27,52,30,2,50,55,32,22,43,54,11,20,61,5,41,35,59,19,7,37,10,49,26,58,60,46,42,25,15,18,48,45,16,44,36,38,14,3,17,8,56,23,47,53,24,40,29,4,12,28,34,9,1,57,6,33,0,21}, // permutation 3
{27,24,49,10,43,9,33,59,46,52,55,28,21,34,35,32,29,3,31,16,22,50,14,41,61,0,45,57,39,15,47,8,6,17,48,38,42,60,26,58,53,11,5,7,19,44,36,51,40,12,13,18,1,25,4,30,37,20,2,54,56,23}, // permutation 4
{9,58,42,2,26,36,21,7,56,49,37,30,39,10,38,61,46,16,25,53,33,31,51,0,5,43,14,12,15,24,45,59,18,8,20,4,27,29,11,55,41,34,19,6,50,32,52,47,44,13,1,23,48,22,57,54,3,60,35,40,17,28}, // permutation 5
{33,38,15,46,27,47,37,19,45,14,34,25,24,49,61,51,4,8,54,23,41,21,16,10,39,32,7,52,48,55,50,58,5,40,56,9,18,12,31,57,28,59,43,20,13,35,0,30,26,6,22,44,36,17,11,29,53,1,42,60,3,2}, // permutation 6
{10,49,41,7,31,44,42,16,57,47,1,22,5,18,6,58,53,26,48,60,24,56,28,37,14,15,12,23,54,27,4,46,43,13,61,59,25,3,17,45,30,9,2,38,35,8,20,29,11,36,34,50,33,52,40,19,0,39,55,32,21,51}, // permutation 7
{29,26,14,1,45,13,7,12,9,18,2,33,54,35,47,4,36,49,5,44,3,23,28,10,48,56,27,8,17,15,43,50,6,32,34,30,55,11,19,57,40,59,38,24,20,58,42,60,31,0,25,46,16,41,52,39,53,22,21,61,51,37}, // permutation 8
{22,31,24,53,45,5,2,20,10,43,16,40,58,46,50,1,49,42,0,29,14,35,37,9,17,47,11,13,57,32,61,3,4,60,28,12,15,36,56,48,41,6,27,8,54,25,33,59,34,7,55,30,18,38,19,21,44,39,23,26,51,52} // permutation 9
};

// Seed: 89

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint8_t g_3;
    volatile uint8_t g_6;
    volatile uint8_t *g_5[9];
    int32_t g_8[1];
    int32_t g_10;
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
uint64_t  func_1(struct S0 * p_15);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_15->g_5 p_15->g_6 p_15->g_10 p_15->g_3 p_15->l_comm_values p_15->g_8
 * writes: p_15->g_3 p_15->g_8 p_15->g_10
 */
uint64_t  func_1(struct S0 * p_15)
{ /* block id: 4 */
    uint8_t *l_2 = &p_15->g_3;
    uint16_t l_4 = 0x4DC9L;
    uint8_t l_7[7];
    int32_t *l_9[9] = {&p_15->g_10,&p_15->g_10,&p_15->g_10,&p_15->g_10,&p_15->g_10,&p_15->g_10,&p_15->g_10,&p_15->g_10,&p_15->g_10};
    int i;
    for (i = 0; i < 7; i++)
        l_7[i] = 1UL;
    p_15->g_10 &= (!((l_4 &= ((*l_2) = 255UL)) == ((p_15->g_5[0] != (void*)0) & (l_7[5] < (p_15->g_8[0] = p_15->g_6)))));
    p_15->g_10 = 0L;
    for (p_15->g_3 = 1; (p_15->g_3 < 35); ++p_15->g_3)
    { /* block id: 12 */
        for (l_4 = (-4); (l_4 >= 15); l_4 = safe_add_func_uint64_t_u_u(l_4, 1))
        { /* block id: 15 */
            return p_15->l_comm_values[(safe_mod_func_uint32_t_u_u(p_15->tid, 62))];
        }
    }
    return p_15->g_8[0];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[62];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 62; i++)
            l_comm_values[i] = 1;
    struct S0 c_16;
    struct S0* p_15 = &c_16;
    struct S0 c_17 = {
        6UL, // p_15->g_3
        1UL, // p_15->g_6
        {&p_15->g_6,&p_15->g_6,&p_15->g_6,&p_15->g_6,&p_15->g_6,&p_15->g_6,&p_15->g_6,&p_15->g_6,&p_15->g_6}, // p_15->g_5
        {0x2DB8E964L}, // p_15->g_8
        7L, // p_15->g_10
        0, // p_15->v_collective
        sequence_input[get_global_id(0)], // p_15->global_0_offset
        sequence_input[get_global_id(1)], // p_15->global_1_offset
        sequence_input[get_global_id(2)], // p_15->global_2_offset
        sequence_input[get_local_id(0)], // p_15->local_0_offset
        sequence_input[get_local_id(1)], // p_15->local_1_offset
        sequence_input[get_local_id(2)], // p_15->local_2_offset
        sequence_input[get_group_id(0)], // p_15->group_0_offset
        sequence_input[get_group_id(1)], // p_15->group_1_offset
        sequence_input[get_group_id(2)], // p_15->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 62)), permutations[0][get_linear_local_id()])), // p_15->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_16 = c_17;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_15);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_15->g_3, "p_15->g_3", print_hash_value);
    transparent_crc(p_15->g_6, "p_15->g_6", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_15->g_8[i], "p_15->g_8[i]", print_hash_value);

    }
    transparent_crc(p_15->g_10, "p_15->g_10", print_hash_value);
    transparent_crc(p_15->v_collective, "p_15->v_collective", print_hash_value);
    transparent_crc(p_15->l_comm_values[get_linear_local_id()], "p_15->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_15->g_comm_values[get_linear_group_id() * 62 + get_linear_local_id()], "p_15->g_comm_values[get_linear_group_id() * 62 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
