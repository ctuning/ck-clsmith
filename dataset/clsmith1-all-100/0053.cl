// --atomics 48 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 87,44,2 -l 3,22,2
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

__constant uint32_t permutations[10][132] = {
{93,62,79,3,110,122,119,6,35,22,54,97,94,45,99,128,29,57,21,124,27,75,52,73,68,70,18,43,9,103,72,11,16,106,24,77,4,23,120,59,87,55,58,7,114,25,28,127,86,89,39,53,84,126,37,44,34,71,36,5,116,112,48,31,14,1,107,90,46,69,20,42,111,38,2,47,8,108,74,41,50,105,66,65,104,88,85,131,15,32,0,17,76,100,101,12,51,96,26,56,115,19,49,113,92,118,67,61,64,129,123,98,63,81,125,82,117,95,10,80,13,102,130,78,33,109,40,121,30,60,91,83}, // permutation 0
{28,19,87,34,102,41,109,24,6,114,66,85,47,80,90,18,110,9,104,11,15,20,81,3,1,16,94,115,59,70,95,57,93,78,108,86,48,105,17,88,39,98,5,60,49,111,89,7,53,26,97,37,32,72,42,36,84,73,10,129,101,23,35,64,43,92,65,75,122,54,30,14,38,25,76,50,45,126,103,107,58,123,27,120,118,8,130,40,99,69,31,4,44,62,61,29,79,77,74,56,131,63,67,128,116,125,83,55,22,106,82,100,21,119,71,33,113,127,117,0,112,2,12,46,13,96,91,52,68,124,121,51}, // permutation 1
{87,34,65,37,104,56,30,61,15,80,114,69,55,85,14,82,111,116,27,95,19,40,117,35,1,66,89,129,100,62,21,2,106,67,123,57,41,23,76,113,131,79,36,54,53,108,126,17,96,86,101,10,38,105,22,73,16,4,60,124,107,70,97,29,83,9,118,20,115,84,42,24,71,0,98,92,81,32,6,52,43,5,7,130,112,63,125,39,93,3,78,33,50,26,120,45,91,74,110,121,11,59,44,51,72,68,90,88,46,12,31,49,128,48,103,109,77,13,18,58,28,25,64,75,8,102,94,127,119,47,99,122}, // permutation 2
{121,47,105,110,82,10,93,119,126,14,124,111,43,16,118,115,22,52,38,102,78,122,21,32,41,63,48,83,53,4,131,114,69,91,100,40,72,89,113,68,25,80,28,64,3,123,106,56,66,77,130,116,65,86,74,76,8,87,20,103,6,19,75,36,112,49,92,33,98,13,61,50,1,35,88,27,5,30,31,94,24,11,125,108,79,18,60,45,29,85,99,109,57,101,0,107,15,67,59,104,117,84,73,129,96,37,2,128,54,97,70,90,51,7,42,9,23,62,12,81,120,26,55,44,127,95,71,46,34,58,39,17}, // permutation 3
{34,24,119,126,109,16,85,23,5,40,21,65,31,49,110,33,74,0,13,106,56,117,86,100,47,54,3,95,14,123,127,99,71,22,18,46,51,64,70,120,67,88,37,25,59,107,29,113,76,6,36,116,84,42,131,39,7,41,57,27,72,83,73,98,94,60,122,52,53,112,115,50,4,38,26,15,82,111,44,10,66,11,125,8,28,101,43,118,92,20,130,35,80,79,105,93,55,2,91,129,97,75,90,89,32,103,61,77,30,87,62,17,104,48,9,114,1,81,108,68,63,45,12,58,78,121,128,69,124,19,96,102}, // permutation 4
{122,9,116,73,45,92,80,62,43,40,98,56,50,57,95,15,17,34,74,36,71,107,51,49,55,78,46,61,110,20,5,129,54,37,123,42,87,105,10,70,64,120,117,52,44,128,94,2,68,16,58,4,0,115,121,106,6,77,26,30,111,89,48,84,96,85,14,35,66,112,28,124,100,114,76,27,11,18,7,12,25,81,82,33,69,108,113,130,109,29,79,75,126,21,83,93,97,86,103,104,39,63,60,72,41,99,13,91,8,125,24,67,23,65,131,118,22,90,32,88,3,47,127,1,101,119,19,31,102,59,38,53}, // permutation 5
{119,35,33,69,20,17,82,62,120,12,70,56,1,74,53,130,93,39,87,127,13,110,28,95,22,46,92,75,80,72,42,50,27,11,114,123,15,24,19,73,83,122,16,30,34,100,115,76,109,40,54,126,29,113,89,65,101,9,103,47,97,48,111,36,14,2,124,8,81,108,98,128,25,106,102,117,43,125,79,44,23,5,49,18,0,71,84,37,96,55,4,121,129,91,63,60,104,61,52,67,68,41,64,88,112,51,32,77,90,66,6,7,57,26,10,38,116,31,21,3,107,85,78,86,99,118,59,131,105,94,45,58}, // permutation 6
{88,54,42,44,34,48,38,80,107,19,12,113,106,103,128,86,24,71,99,68,130,45,93,98,95,92,18,85,28,20,4,23,73,40,66,61,84,8,21,81,14,119,78,3,123,121,47,127,100,53,57,101,59,94,30,39,56,79,31,125,75,82,6,50,126,74,5,52,43,36,70,62,67,63,37,41,105,91,55,109,32,129,111,7,10,89,96,118,27,112,33,58,72,2,114,0,29,35,97,25,16,65,1,116,124,102,15,64,104,13,51,17,77,22,117,46,87,69,120,76,108,49,122,26,83,131,90,9,60,11,110,115}, // permutation 7
{123,89,72,117,18,96,9,21,80,60,7,104,14,64,86,49,61,83,79,95,38,84,15,122,113,114,127,69,46,111,0,57,19,102,35,81,70,62,50,109,77,87,71,55,118,76,5,110,63,120,97,103,28,23,92,78,42,43,59,45,66,52,85,131,44,98,119,100,129,82,116,56,88,125,27,53,36,47,126,10,75,58,1,112,101,99,67,39,106,105,2,121,37,16,8,54,130,26,94,25,3,24,91,29,6,31,40,73,51,115,12,30,13,107,90,4,20,34,17,74,93,11,33,65,68,32,124,108,128,22,48,41}, // permutation 8
{128,29,40,9,75,20,49,113,34,55,61,84,114,71,102,46,41,100,33,130,42,50,126,21,69,78,48,12,110,6,51,122,39,81,118,4,72,124,7,32,120,27,24,53,63,54,68,97,58,14,56,59,36,57,125,77,30,106,111,10,15,90,86,70,16,83,96,119,93,37,60,117,74,43,26,92,38,52,73,35,79,99,31,107,91,85,47,22,66,11,121,64,101,8,80,103,105,82,129,18,67,109,76,17,0,115,89,23,1,25,116,62,28,127,19,88,65,87,44,98,5,13,45,131,94,3,95,104,112,2,123,108} // permutation 9
};

// Seed: 53

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
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
uint16_t  func_1(struct S0 * p_10);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_10->g_comm_values
 * writes:
 */
uint16_t  func_1(struct S0 * p_10)
{ /* block id: 4 */
    int32_t *l_2 = &p_10->g_3;
    int32_t l_4 = 0x3B11ACCBL;
    int32_t *l_5 = (void*)0;
    int32_t *l_6 = &p_10->g_3;
    uint16_t l_7 = 0UL;
    l_7++;
    return p_10->g_comm_values[p_10->tid];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[132];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 132; i++)
            l_comm_values[i] = 1;
    struct S0 c_11;
    struct S0* p_10 = &c_11;
    struct S0 c_12 = {
        0x031E42A4L, // p_10->g_3
        0, // p_10->v_collective
        sequence_input[get_global_id(0)], // p_10->global_0_offset
        sequence_input[get_global_id(1)], // p_10->global_1_offset
        sequence_input[get_global_id(2)], // p_10->global_2_offset
        sequence_input[get_local_id(0)], // p_10->local_0_offset
        sequence_input[get_local_id(1)], // p_10->local_1_offset
        sequence_input[get_local_id(2)], // p_10->local_2_offset
        sequence_input[get_group_id(0)], // p_10->group_0_offset
        sequence_input[get_group_id(1)], // p_10->group_1_offset
        sequence_input[get_group_id(2)], // p_10->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 132)), permutations[0][get_linear_local_id()])), // p_10->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_11 = c_12;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_10);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_10->g_3, "p_10->g_3", print_hash_value);
    transparent_crc(p_10->v_collective, "p_10->v_collective", print_hash_value);
    transparent_crc(p_10->l_comm_values[get_linear_local_id()], "p_10->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_10->g_comm_values[get_linear_group_id() * 132 + get_linear_local_id()], "p_10->g_comm_values[get_linear_group_id() * 132 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
