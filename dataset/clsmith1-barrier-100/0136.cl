// ---fake_divergence ---inter_thread_comm -g 67,1,43 -l 67,1,1
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

__constant uint32_t permutations[10][67] = {
{7,41,29,59,1,42,14,18,56,19,22,25,30,38,17,33,51,58,31,34,52,12,53,54,57,21,61,3,44,64,35,9,62,39,8,5,6,66,16,28,55,15,13,11,27,32,24,43,65,45,0,63,49,10,60,23,48,26,46,37,50,2,36,47,20,4,40}, // permutation 0
{46,33,44,39,25,54,45,31,7,12,0,32,28,62,47,34,2,27,19,52,42,20,40,10,21,13,26,11,43,16,56,29,9,61,55,6,4,15,14,51,66,63,59,8,53,17,49,65,58,50,24,36,22,38,3,57,35,41,60,37,18,30,5,48,64,23,1}, // permutation 1
{60,50,58,11,45,53,22,55,1,36,44,20,7,42,18,65,2,10,5,9,3,13,43,19,31,47,66,38,34,61,56,28,46,37,57,25,41,54,64,4,32,48,35,21,39,27,33,63,59,15,0,40,29,8,51,30,14,49,26,23,24,17,12,62,52,6,16}, // permutation 2
{18,31,20,33,12,5,11,53,26,40,47,63,9,32,29,42,64,22,21,3,19,17,65,60,30,37,38,10,28,6,44,56,45,62,8,34,14,48,4,51,1,36,13,58,2,55,57,43,46,59,15,16,54,24,52,41,50,23,27,49,66,0,35,39,61,7,25}, // permutation 3
{15,21,43,49,53,0,17,60,41,38,6,2,18,23,46,35,44,39,8,34,54,63,33,29,51,36,12,5,25,52,37,26,1,13,58,45,47,57,56,14,28,55,24,19,64,3,16,10,65,27,61,59,42,32,4,66,48,31,7,11,40,62,50,9,20,30,22}, // permutation 4
{45,57,1,23,20,5,25,18,36,17,47,38,56,39,54,27,30,42,35,9,15,22,62,13,43,4,59,29,63,7,31,14,34,44,46,66,33,51,50,55,65,64,12,58,10,41,49,53,61,26,3,40,8,28,32,52,24,60,2,21,37,11,48,6,19,16,0}, // permutation 5
{20,52,59,34,29,23,42,1,15,14,33,64,49,27,40,9,56,38,58,4,35,26,22,62,6,7,19,32,13,65,63,31,60,57,16,25,55,44,46,2,17,30,41,28,11,45,24,43,61,51,54,10,12,53,39,0,3,50,48,8,18,37,36,5,47,66,21}, // permutation 6
{40,54,39,21,57,47,10,41,23,42,30,62,35,38,3,19,58,22,13,9,50,6,32,60,17,7,26,53,59,33,51,24,20,18,34,48,0,63,11,46,43,31,2,61,37,4,16,27,66,8,64,12,29,55,45,28,1,25,14,44,56,15,36,52,49,5,65}, // permutation 7
{1,9,13,43,6,54,0,14,17,33,65,62,56,48,59,53,8,45,58,37,47,25,60,34,55,61,29,31,24,38,66,10,7,41,39,3,52,11,12,42,15,23,16,5,26,2,30,57,44,28,35,51,50,49,36,18,64,4,20,22,40,19,21,32,46,63,27}, // permutation 8
{19,2,57,61,60,3,32,24,21,7,15,20,66,44,11,40,23,17,39,38,45,37,30,49,27,28,41,14,5,33,26,1,62,9,43,18,29,16,12,25,36,13,22,54,64,52,6,42,63,34,58,8,51,65,10,31,48,0,35,50,4,55,59,56,46,53,47} // permutation 9
};

// Seed: 136

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    uint32_t g_4;
    volatile uint8_t g_8;
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
uint16_t  func_1(struct S0 * p_11);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_11->g_4 p_11->g_8 p_11->g_comm_values
 * writes: p_11->g_4 p_11->g_8
 */
uint16_t  func_1(struct S0 * p_11)
{ /* block id: 4 */
    int32_t *l_2[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_7 = 0L;
    int i;
    --p_11->g_4;
    --p_11->g_8;
    return p_11->g_comm_values[p_11->tid];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[67];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 67; i++)
            l_comm_values[i] = 1;
    struct S0 c_12;
    struct S0* p_11 = &c_12;
    struct S0 c_13 = {
        1L, // p_11->g_3
        0xD26EC17EL, // p_11->g_4
        0x4FL, // p_11->g_8
        sequence_input[get_global_id(0)], // p_11->global_0_offset
        sequence_input[get_global_id(1)], // p_11->global_1_offset
        sequence_input[get_global_id(2)], // p_11->global_2_offset
        sequence_input[get_local_id(0)], // p_11->local_0_offset
        sequence_input[get_local_id(1)], // p_11->local_1_offset
        sequence_input[get_local_id(2)], // p_11->local_2_offset
        sequence_input[get_group_id(0)], // p_11->group_0_offset
        sequence_input[get_group_id(1)], // p_11->group_1_offset
        sequence_input[get_group_id(2)], // p_11->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 67)), permutations[0][get_linear_local_id()])), // p_11->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_12 = c_13;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_11);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_11->g_3, "p_11->g_3", print_hash_value);
    transparent_crc(p_11->g_4, "p_11->g_4", print_hash_value);
    transparent_crc(p_11->g_8, "p_11->g_8", print_hash_value);
    transparent_crc(p_11->l_comm_values[get_linear_local_id()], "p_11->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_11->g_comm_values[get_linear_group_id() * 67 + get_linear_local_id()], "p_11->g_comm_values[get_linear_group_id() * 67 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
