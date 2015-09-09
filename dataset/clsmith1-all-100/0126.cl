// --atomics 49 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 14,32,4 -l 1,32,4
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

__constant uint32_t permutations[10][128] = {
{14,25,15,9,112,118,94,11,101,96,22,63,12,102,35,105,82,0,127,31,60,77,78,80,84,86,36,4,27,69,110,116,89,66,70,121,49,62,104,24,54,37,28,92,30,2,45,81,125,50,3,33,124,114,115,111,39,29,113,47,87,76,79,117,106,109,44,65,18,1,57,34,95,52,46,38,83,43,93,42,41,122,98,72,19,85,90,17,73,13,74,119,58,32,21,48,8,16,100,5,123,51,68,126,23,97,120,7,103,40,88,71,64,107,20,56,26,6,67,108,99,10,53,91,59,75,61,55}, // permutation 0
{6,47,9,59,32,60,3,108,37,30,49,62,112,14,67,103,17,70,114,123,85,86,19,98,115,89,27,25,26,91,46,99,101,20,35,33,61,127,90,68,15,53,42,21,8,12,40,118,66,116,39,52,83,64,51,122,44,81,2,113,77,1,38,50,56,23,11,43,94,80,72,4,22,82,57,105,125,65,31,120,41,16,10,107,54,102,5,79,100,73,34,93,87,48,124,76,13,84,71,96,24,7,119,36,75,0,69,74,121,109,97,63,110,92,117,55,88,58,104,78,95,126,45,28,111,29,18,106}, // permutation 1
{124,13,59,84,120,41,11,101,126,38,122,104,5,56,94,110,86,90,89,20,25,24,39,63,7,47,33,118,45,83,6,53,114,54,52,61,32,46,107,68,64,50,9,55,62,78,116,36,43,91,60,115,119,80,1,12,65,14,74,105,75,10,37,70,4,17,3,73,21,92,81,31,71,99,28,66,30,29,121,97,57,112,79,58,113,67,8,108,35,16,98,72,22,42,93,123,49,111,27,100,40,51,19,0,18,85,82,96,48,88,76,127,109,23,2,106,77,34,117,95,15,69,102,103,87,26,125,44}, // permutation 2
{95,28,102,48,10,112,67,40,127,65,19,52,85,113,117,120,30,49,7,61,50,64,92,56,57,114,84,75,46,43,104,58,98,1,94,121,122,11,24,119,83,101,81,23,55,107,16,116,8,0,6,59,82,14,90,26,72,70,99,123,80,73,124,87,106,15,63,93,47,108,78,54,115,33,68,89,66,45,2,71,125,29,31,53,22,109,13,4,20,27,103,5,100,105,111,37,25,60,21,41,62,35,77,74,39,126,34,32,118,86,9,12,91,42,44,3,17,38,18,69,110,36,96,97,88,76,51,79}, // permutation 3
{29,12,90,6,2,27,109,47,20,62,59,80,73,30,42,53,17,112,8,10,38,3,25,124,40,119,19,96,116,114,91,65,63,94,120,61,21,125,89,5,76,74,122,60,92,115,46,7,83,82,84,58,81,24,93,54,87,105,88,70,55,108,106,64,23,103,43,33,68,13,66,121,32,111,99,26,69,14,75,71,72,50,86,22,98,107,110,49,36,44,52,67,15,101,39,78,41,18,48,34,4,1,127,77,85,100,79,51,31,123,37,16,104,35,95,9,126,117,102,11,0,28,57,56,113,45,97,118}, // permutation 4
{99,55,0,82,97,98,3,29,84,80,101,26,70,48,104,51,86,116,127,31,11,18,87,6,109,5,41,21,120,44,92,25,90,68,13,60,33,118,126,42,22,46,15,75,103,102,76,108,112,45,65,24,4,1,58,2,100,124,53,28,27,7,50,81,79,9,73,72,110,12,113,122,107,74,83,8,34,40,30,106,66,77,115,49,56,47,59,16,57,114,117,52,94,95,105,78,85,37,32,36,89,69,35,61,54,125,64,43,121,71,17,14,19,10,93,123,91,20,88,23,38,119,62,96,111,67,39,63}, // permutation 5
{93,119,21,30,54,58,45,81,39,75,57,100,23,104,91,98,67,50,15,108,46,101,16,47,17,74,33,121,7,41,111,3,115,99,56,14,61,12,84,64,68,86,38,105,8,83,31,49,82,42,34,43,127,11,24,19,124,37,107,60,9,55,92,109,102,90,13,70,27,71,36,113,66,0,72,79,53,62,122,28,76,63,97,120,95,69,2,85,117,25,48,106,32,87,65,22,44,18,116,51,10,20,59,110,1,73,114,94,5,77,103,118,78,96,26,88,112,123,40,29,89,35,4,6,125,126,52,80}, // permutation 6
{29,74,94,51,19,15,9,57,5,55,54,100,81,127,76,22,103,82,67,39,85,77,14,102,91,63,62,111,92,52,70,125,28,90,35,122,44,75,40,72,124,31,66,23,121,7,13,97,27,37,36,18,50,61,93,71,45,110,17,84,42,80,1,88,104,20,8,79,119,34,3,41,64,101,78,26,89,95,25,16,116,21,113,87,56,120,86,4,69,98,46,115,12,60,33,106,117,30,118,47,108,73,114,109,123,58,99,10,68,48,38,126,32,105,0,107,24,11,53,59,96,83,43,49,65,112,2,6}, // permutation 7
{92,38,7,32,106,51,96,45,113,9,6,24,35,115,97,73,55,79,122,109,76,74,60,21,20,67,15,93,119,87,19,16,85,27,42,125,36,34,78,68,25,120,77,118,23,8,70,102,110,124,53,11,116,56,105,33,84,72,52,22,14,114,104,5,126,4,54,111,121,28,57,40,112,41,61,117,88,0,37,63,83,13,39,101,107,94,86,26,81,123,103,89,75,69,90,43,98,66,91,71,49,64,108,3,46,18,58,100,47,17,10,62,1,30,59,99,82,48,65,127,2,12,44,31,80,95,29,50}, // permutation 8
{117,9,4,27,121,127,18,33,73,125,23,95,96,92,58,50,67,35,79,42,90,60,114,111,3,28,126,109,26,113,51,53,41,91,69,122,100,74,105,65,101,97,89,118,14,84,24,11,107,85,49,103,15,120,56,37,59,119,2,0,76,5,43,108,115,124,39,48,57,29,54,106,19,20,55,13,34,17,38,99,75,110,98,104,10,52,1,72,102,123,81,82,25,80,62,78,45,16,86,64,93,77,40,61,87,46,7,8,88,47,83,30,112,21,36,66,63,12,31,6,22,44,71,116,70,94,68,32} // permutation 9
};

// Seed: 126

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
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
uint64_t  func_1(struct S0 * p_8);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_8->g_3
 * writes: p_8->g_3
 */
uint64_t  func_1(struct S0 * p_8)
{ /* block id: 4 */
    uint64_t l_7 = 1UL;
    for (p_8->g_3 = 23; (p_8->g_3 > 20); p_8->g_3 = safe_sub_func_uint8_t_u_u(p_8->g_3, 1))
    { /* block id: 7 */
        int32_t l_6 = 3L;
        return l_6;
    }
    return l_7;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[128];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 128; i++)
            l_comm_values[i] = 1;
    struct S0 c_9;
    struct S0* p_8 = &c_9;
    struct S0 c_10 = {
        0x3606DE71L, // p_8->g_2
        0x73EB905DL, // p_8->g_3
        0, // p_8->v_collective
        sequence_input[get_global_id(0)], // p_8->global_0_offset
        sequence_input[get_global_id(1)], // p_8->global_1_offset
        sequence_input[get_global_id(2)], // p_8->global_2_offset
        sequence_input[get_local_id(0)], // p_8->local_0_offset
        sequence_input[get_local_id(1)], // p_8->local_1_offset
        sequence_input[get_local_id(2)], // p_8->local_2_offset
        sequence_input[get_group_id(0)], // p_8->group_0_offset
        sequence_input[get_group_id(1)], // p_8->group_1_offset
        sequence_input[get_group_id(2)], // p_8->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 128)), permutations[0][get_linear_local_id()])), // p_8->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_9 = c_10;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_8);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_8->g_2, "p_8->g_2", print_hash_value);
    transparent_crc(p_8->g_3, "p_8->g_3", print_hash_value);
    transparent_crc(p_8->v_collective, "p_8->v_collective", print_hash_value);
    transparent_crc(p_8->l_comm_values[get_linear_local_id()], "p_8->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_8->g_comm_values[get_linear_group_id() * 128 + get_linear_local_id()], "p_8->g_comm_values[get_linear_group_id() * 128 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
