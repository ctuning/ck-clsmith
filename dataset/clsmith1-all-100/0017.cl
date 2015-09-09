// --atomics 83 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 57,74,2 -l 1,37,2
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

__constant uint32_t permutations[10][74] = {
{57,40,51,45,25,36,47,71,52,38,68,34,30,33,28,48,55,29,22,0,21,64,19,42,9,1,61,5,15,49,2,54,53,3,16,73,12,50,8,72,11,43,41,59,37,62,23,4,44,39,7,67,65,70,18,46,27,60,32,66,6,56,69,14,63,17,13,20,35,10,26,31,24,58}, // permutation 0
{47,52,61,38,1,40,25,19,55,17,13,68,28,23,41,59,71,58,72,51,49,60,33,44,37,32,7,2,42,34,56,26,11,24,18,46,12,66,43,0,6,73,35,48,14,39,3,16,67,62,57,30,5,9,36,54,63,4,27,65,69,29,21,53,45,31,8,15,22,50,70,10,64,20}, // permutation 1
{56,14,66,18,27,57,55,67,31,71,19,22,4,54,28,63,33,42,50,3,69,25,8,16,72,26,24,47,70,29,21,58,49,11,34,13,2,37,52,39,1,43,68,41,10,45,51,73,60,59,65,32,20,36,38,48,62,6,44,30,64,53,17,23,12,15,40,61,7,46,0,5,9,35}, // permutation 2
{68,59,62,15,2,48,24,49,44,55,34,67,64,71,42,35,46,18,36,21,38,52,6,63,61,13,5,40,39,65,4,10,43,28,53,23,8,25,26,1,22,54,32,3,57,14,73,9,45,72,27,37,51,16,29,31,33,58,69,41,30,19,11,17,60,7,56,20,70,47,12,0,50,66}, // permutation 3
{35,24,14,20,56,37,73,28,69,62,22,48,42,61,23,15,46,13,53,63,58,45,59,49,44,51,40,11,27,30,72,71,5,4,17,41,12,29,1,43,6,7,55,54,8,0,67,60,19,34,18,33,47,52,50,32,65,38,10,39,36,70,64,26,66,2,21,9,16,3,68,57,25,31}, // permutation 4
{29,10,73,23,4,22,1,56,5,35,63,40,14,48,50,28,7,58,54,53,17,70,68,69,0,6,45,8,43,44,65,33,16,67,11,59,66,62,2,19,9,72,38,55,12,34,47,51,36,15,25,46,24,32,21,20,37,42,57,61,41,60,64,71,3,49,39,31,52,27,13,18,26,30}, // permutation 5
{15,37,33,51,71,57,1,47,34,10,50,65,16,55,67,27,62,52,7,26,32,43,20,11,58,22,14,60,44,69,41,12,29,70,45,2,54,30,4,5,13,31,40,28,53,0,19,39,66,64,49,68,72,18,59,56,9,23,8,48,38,36,24,3,6,46,73,42,61,21,35,63,17,25}, // permutation 6
{44,0,16,45,72,51,13,43,73,32,34,22,55,17,21,26,63,1,37,38,62,6,18,12,14,3,41,65,64,50,28,68,11,57,56,52,35,61,31,70,66,48,42,4,33,19,29,39,5,69,27,36,67,71,20,24,25,10,30,15,59,7,46,23,54,53,58,47,9,40,49,2,8,60}, // permutation 7
{61,30,68,63,73,56,50,31,29,23,12,36,59,37,64,49,5,51,57,58,53,11,14,35,1,40,47,34,54,67,9,24,8,45,65,71,2,60,16,39,22,69,19,15,41,21,62,32,66,44,17,27,72,26,28,20,4,46,55,43,6,38,0,42,7,10,48,70,25,13,52,18,33,3}, // permutation 8
{28,12,32,22,25,56,17,65,8,9,63,45,24,29,48,15,27,69,66,1,57,26,34,55,16,72,51,47,53,30,23,44,73,64,36,41,33,39,62,35,67,52,7,40,13,10,54,4,11,31,2,38,61,50,60,59,18,14,20,42,49,43,37,3,0,21,46,5,71,68,58,6,70,19} // permutation 9
};

// Seed: 17

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    int32_t g_3;
    uint8_t g_12;
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
uint32_t  func_1(struct S1 * p_15);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_15->g_12
 * writes: p_15->g_12
 */
uint32_t  func_1(struct S1 * p_15)
{ /* block id: 4 */
    int32_t *l_2 = &p_15->g_3;
    int32_t *l_4 = &p_15->g_3;
    int32_t *l_5 = &p_15->g_3;
    int32_t *l_6 = &p_15->g_3;
    int32_t *l_7 = &p_15->g_3;
    int32_t *l_8 = &p_15->g_3;
    int32_t *l_9 = &p_15->g_3;
    int32_t *l_10 = &p_15->g_3;
    int32_t *l_11[9] = {&p_15->g_3,&p_15->g_3,&p_15->g_3,&p_15->g_3,&p_15->g_3,&p_15->g_3,&p_15->g_3,&p_15->g_3,&p_15->g_3};
    int i;
    p_15->g_12++;
    return p_15->g_12;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_comm_values[i] = 1;
    struct S1 c_16;
    struct S1* p_15 = &c_16;
    struct S1 c_17 = {
        0x70A290BEL, // p_15->g_3
        8UL, // p_15->g_12
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
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 74)), permutations[0][get_linear_local_id()])), // p_15->tid
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
    transparent_crc(p_15->g_12, "p_15->g_12", print_hash_value);
    transparent_crc(p_15->v_collective, "p_15->v_collective", print_hash_value);
    transparent_crc(p_15->l_comm_values[get_linear_local_id()], "p_15->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_15->g_comm_values[get_linear_group_id() * 74 + get_linear_local_id()], "p_15->g_comm_values[get_linear_group_id() * 74 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
