// ---fake_divergence ---inter_thread_comm -g 94,40,2 -l 1,20,2
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

__constant uint32_t permutations[10][40] = {
{8,32,11,7,16,18,31,4,21,34,6,33,15,24,10,14,2,25,1,12,13,23,30,28,19,22,3,27,20,0,5,9,26,17,39,29,38,35,37,36}, // permutation 0
{27,7,13,38,18,8,37,15,39,20,22,34,26,33,4,19,21,23,14,0,31,32,28,11,3,10,36,16,6,24,30,1,17,12,9,25,35,5,2,29}, // permutation 1
{22,32,16,8,17,38,21,10,24,33,2,9,39,29,1,27,5,15,25,19,37,12,23,30,4,13,7,14,26,11,34,18,31,36,20,6,0,3,35,28}, // permutation 2
{21,35,24,3,19,2,9,22,11,36,29,4,10,30,33,15,37,28,0,7,1,20,6,31,17,38,23,18,39,14,16,5,12,34,32,8,25,26,13,27}, // permutation 3
{19,31,25,2,1,34,5,35,7,0,13,26,16,15,8,12,29,18,37,4,30,21,32,39,33,9,3,28,20,38,24,6,23,14,22,17,10,11,27,36}, // permutation 4
{20,0,16,39,36,5,26,34,8,30,25,33,38,21,1,19,12,29,7,31,23,22,2,28,27,10,18,37,11,32,17,13,35,9,15,4,6,14,3,24}, // permutation 5
{13,27,20,34,36,0,23,29,15,26,17,30,21,39,6,8,9,32,16,14,3,24,5,7,33,11,38,37,12,25,31,18,2,10,22,35,28,4,1,19}, // permutation 6
{19,17,27,33,3,9,22,2,31,14,5,24,36,21,28,13,4,23,38,8,26,39,35,25,34,37,29,10,30,7,16,1,32,12,18,6,20,0,11,15}, // permutation 7
{24,25,23,30,7,10,0,1,36,9,35,8,29,19,11,16,12,4,6,21,13,17,14,26,3,18,38,37,34,33,5,28,22,32,15,2,20,39,27,31}, // permutation 8
{37,30,25,15,21,12,39,32,9,19,6,24,33,18,14,13,38,5,4,26,17,34,1,0,31,10,8,11,28,36,35,22,7,3,23,29,2,27,20,16} // permutation 9
};

// Seed: 78

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    int32_t g_3;
    int32_t g_4;
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
int64_t  func_1(struct S1 * p_6);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_6->g_comm_values p_6->g_4
 * writes: p_6->g_3 p_6->g_4
 */
int64_t  func_1(struct S1 * p_6)
{ /* block id: 4 */
    uint8_t l_2[6][9] = {{0x5DL,246UL,0xA6L,0xB7L,246UL,0xB7L,0xA6L,246UL,0x5DL},{0x5DL,246UL,0xA6L,0xB7L,246UL,0xB7L,0xA6L,246UL,0x5DL},{0x5DL,246UL,0xA6L,0xB7L,246UL,0xB7L,0xA6L,246UL,0x5DL},{0x5DL,246UL,0xA6L,0xB7L,246UL,0xB7L,0xA6L,246UL,0x5DL},{0x5DL,246UL,0xA6L,0xB7L,246UL,0xB7L,0xA6L,246UL,0x5DL},{0x5DL,246UL,0xA6L,0xB7L,246UL,0xB7L,0xA6L,246UL,0x5DL}};
    int32_t *l_5[5][10] = {{&p_6->g_3,&p_6->g_4,(void*)0,&p_6->g_3,&p_6->g_4,&p_6->g_3,(void*)0,&p_6->g_4,&p_6->g_3,(void*)0},{&p_6->g_3,&p_6->g_4,(void*)0,&p_6->g_3,&p_6->g_4,&p_6->g_3,(void*)0,&p_6->g_4,&p_6->g_3,(void*)0},{&p_6->g_3,&p_6->g_4,(void*)0,&p_6->g_3,&p_6->g_4,&p_6->g_3,(void*)0,&p_6->g_4,&p_6->g_3,(void*)0},{&p_6->g_3,&p_6->g_4,(void*)0,&p_6->g_3,&p_6->g_4,&p_6->g_3,(void*)0,&p_6->g_4,&p_6->g_3,(void*)0},{&p_6->g_3,&p_6->g_4,(void*)0,&p_6->g_3,&p_6->g_4,&p_6->g_3,(void*)0,&p_6->g_4,&p_6->g_3,(void*)0}};
    int i, j;
    for (p_6->g_3 = 0; p_6->g_3 < 6; p_6->g_3 += 1)
    {
        for (p_6->g_4 = 0; p_6->g_4 < 9; p_6->g_4 += 1)
        {
            l_2[p_6->g_3][p_6->g_4] = 251UL;
        }
    }
    p_6->g_4 = p_6->g_comm_values[p_6->tid];
    return p_6->g_4;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[40];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 40; i++)
            l_comm_values[i] = 1;
    struct S1 c_7;
    struct S1* p_6 = &c_7;
    struct S1 c_8 = {
        0x4CB63E8EL, // p_6->g_3
        (-1L), // p_6->g_4
        sequence_input[get_global_id(0)], // p_6->global_0_offset
        sequence_input[get_global_id(1)], // p_6->global_1_offset
        sequence_input[get_global_id(2)], // p_6->global_2_offset
        sequence_input[get_local_id(0)], // p_6->local_0_offset
        sequence_input[get_local_id(1)], // p_6->local_1_offset
        sequence_input[get_local_id(2)], // p_6->local_2_offset
        sequence_input[get_group_id(0)], // p_6->group_0_offset
        sequence_input[get_group_id(1)], // p_6->group_1_offset
        sequence_input[get_group_id(2)], // p_6->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 40)), permutations[0][get_linear_local_id()])), // p_6->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_7 = c_8;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_6);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_6->g_3, "p_6->g_3", print_hash_value);
    transparent_crc(p_6->g_4, "p_6->g_4", print_hash_value);
    transparent_crc(p_6->l_comm_values[get_linear_local_id()], "p_6->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_6->g_comm_values[get_linear_group_id() * 40 + get_linear_local_id()], "p_6->g_comm_values[get_linear_group_id() * 40 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
