// ---fake_divergence ---inter_thread_comm -g 53,46,2 -l 1,23,2
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

__constant uint32_t permutations[10][46] = {
{22,36,21,7,11,26,20,37,34,43,17,35,44,8,16,23,3,33,32,9,19,38,1,5,10,40,24,25,45,12,31,18,28,13,0,30,39,14,41,4,42,15,6,27,29,2}, // permutation 0
{13,35,15,18,43,38,34,42,45,16,39,4,7,1,3,0,2,8,27,28,20,9,26,24,29,30,19,31,21,41,5,12,11,33,44,17,10,40,22,14,25,6,37,23,36,32}, // permutation 1
{27,11,8,18,39,13,40,4,9,25,10,38,19,12,14,3,44,28,32,34,45,5,17,36,16,42,31,20,6,37,22,30,15,21,43,7,0,26,33,2,35,23,24,41,1,29}, // permutation 2
{1,19,26,29,20,15,5,18,22,23,40,13,21,6,3,32,41,35,25,44,12,45,31,39,42,8,36,37,28,9,24,4,27,10,43,38,7,14,33,30,0,16,11,2,17,34}, // permutation 3
{12,19,20,21,9,26,18,15,2,11,0,33,17,16,14,44,43,13,38,8,34,41,10,29,35,37,23,45,4,22,28,30,40,5,42,31,25,3,6,1,39,32,36,7,24,27}, // permutation 4
{21,38,45,33,0,15,35,32,28,14,6,13,34,43,41,7,1,42,19,26,37,10,16,8,29,23,9,12,22,39,20,18,44,31,11,30,36,40,24,4,5,17,25,27,2,3}, // permutation 5
{21,40,33,44,18,39,29,41,31,10,36,34,15,26,12,6,43,0,42,17,30,20,37,38,28,13,11,23,16,24,45,8,25,22,2,3,1,35,14,19,5,27,7,4,32,9}, // permutation 6
{23,35,38,41,25,21,7,10,39,29,45,31,4,36,34,0,28,32,26,12,16,13,5,30,43,33,3,19,44,6,18,42,1,37,14,2,24,22,40,27,11,8,9,17,20,15}, // permutation 7
{43,3,4,38,22,17,6,35,18,28,21,34,5,20,1,15,24,33,45,23,19,41,40,42,39,12,32,36,31,37,25,7,29,0,14,8,27,44,9,30,2,10,11,13,16,26}, // permutation 8
{20,40,35,10,43,32,13,37,17,21,45,31,7,6,1,25,14,33,42,4,18,26,24,38,9,3,11,15,22,12,36,30,27,39,44,23,16,28,29,19,5,2,41,8,34,0} // permutation 9
};

// Seed: 81

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2[3];
    volatile int32_t g_3;
    int32_t g_4[1];
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
int32_t  func_1(struct S0 * p_9);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_9->g_4 p_9->l_comm_values p_9->g_2
 * writes: p_9->g_4 p_9->g_2
 */
int32_t  func_1(struct S0 * p_9)
{ /* block id: 4 */
    int32_t *l_8 = &p_9->g_4[0];
    for (p_9->g_4[0] = 0; (p_9->g_4[0] < (-27)); p_9->g_4[0] = safe_sub_func_uint8_t_u_u(p_9->g_4[0], 1))
    { /* block id: 7 */
        uint32_t l_7 = 4294967293UL;
        p_9->g_2[1] = p_9->l_comm_values[(safe_mod_func_uint32_t_u_u(p_9->tid, 46))];
        if (l_7)
            break;
    }
    p_9->g_2[1] &= ((*l_8) = 0x30DE9BF9L);
    return (*l_8);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[46];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 46; i++)
            l_comm_values[i] = 1;
    struct S0 c_10;
    struct S0* p_9 = &c_10;
    struct S0 c_11 = {
        {0x7AD95E17L,0x7AD95E17L,0x7AD95E17L}, // p_9->g_2
        (-3L), // p_9->g_3
        {0x17F0A290L}, // p_9->g_4
        sequence_input[get_global_id(0)], // p_9->global_0_offset
        sequence_input[get_global_id(1)], // p_9->global_1_offset
        sequence_input[get_global_id(2)], // p_9->global_2_offset
        sequence_input[get_local_id(0)], // p_9->local_0_offset
        sequence_input[get_local_id(1)], // p_9->local_1_offset
        sequence_input[get_local_id(2)], // p_9->local_2_offset
        sequence_input[get_group_id(0)], // p_9->group_0_offset
        sequence_input[get_group_id(1)], // p_9->group_1_offset
        sequence_input[get_group_id(2)], // p_9->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 46)), permutations[0][get_linear_local_id()])), // p_9->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_10 = c_11;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_9);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_9->g_2[i], "p_9->g_2[i]", print_hash_value);

    }
    transparent_crc(p_9->g_3, "p_9->g_3", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_9->g_4[i], "p_9->g_4[i]", print_hash_value);

    }
    transparent_crc(p_9->l_comm_values[get_linear_local_id()], "p_9->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_9->g_comm_values[get_linear_group_id() * 46 + get_linear_local_id()], "p_9->g_comm_values[get_linear_group_id() * 46 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
