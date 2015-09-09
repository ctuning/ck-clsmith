// ---fake_divergence ---inter_thread_comm -g 98,68,1 -l 7,17,1
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

__constant uint32_t permutations[10][119] = {
{91,68,56,109,46,59,27,17,25,66,84,5,95,86,88,105,94,75,8,34,69,106,41,54,110,74,99,33,32,2,61,85,20,108,6,112,83,16,7,82,29,9,28,78,13,89,72,36,87,81,50,114,73,64,1,40,45,90,111,92,53,43,58,60,51,52,15,102,0,22,49,93,12,104,116,47,39,98,63,57,117,103,107,48,80,30,26,14,115,21,19,76,100,70,23,97,3,24,44,96,10,55,65,18,31,37,35,38,62,113,11,77,79,118,101,67,4,42,71}, // permutation 0
{116,110,21,28,88,90,49,35,72,96,14,27,39,83,74,114,47,11,52,31,23,118,106,67,92,101,41,48,1,117,80,8,66,32,64,77,16,99,2,29,107,71,76,42,60,84,4,46,97,75,59,20,70,30,5,103,61,105,7,44,112,0,58,113,25,89,94,95,104,56,10,65,86,82,34,93,62,33,36,108,53,109,98,18,73,40,45,9,78,79,51,24,19,55,115,81,102,68,3,111,85,54,37,22,26,13,38,91,15,69,6,57,12,100,43,63,17,87,50}, // permutation 1
{90,23,114,111,18,72,85,4,19,33,31,37,34,58,56,13,108,89,104,22,45,93,68,115,14,95,41,61,75,81,105,109,38,118,40,80,35,27,1,49,79,48,78,52,53,24,54,29,25,55,98,32,66,101,116,88,64,77,100,3,11,74,76,83,71,117,8,94,39,82,17,112,92,12,91,6,84,28,43,47,97,42,2,44,9,15,57,16,62,5,10,26,107,103,21,65,59,99,86,73,51,96,110,69,67,46,70,113,30,63,106,7,102,87,0,36,50,60,20}, // permutation 2
{7,80,56,54,45,86,51,59,22,17,92,9,53,111,25,103,20,38,19,36,102,73,44,110,70,62,40,85,31,41,79,34,60,75,1,76,93,30,67,21,63,107,10,37,108,28,65,82,14,118,72,47,6,105,100,71,43,57,99,2,11,0,104,90,13,42,95,48,8,112,68,35,46,24,84,106,55,114,101,77,32,74,52,49,115,97,33,3,89,26,50,39,23,18,87,4,29,12,117,94,16,91,98,116,15,69,96,27,64,109,61,83,66,78,58,5,88,81,113}, // permutation 3
{113,5,15,93,2,41,26,95,61,31,103,13,18,69,57,83,68,74,91,101,86,21,64,30,75,96,82,9,79,77,73,63,25,87,62,67,116,80,3,43,7,40,24,100,38,111,112,29,49,52,81,11,45,99,56,19,66,92,107,36,22,88,14,76,97,34,104,53,55,90,105,58,46,65,51,117,20,70,16,39,47,118,106,0,78,35,85,23,71,27,32,114,50,54,102,4,72,89,59,17,60,109,10,28,94,1,115,44,84,48,6,42,98,33,108,8,12,37,110}, // permutation 4
{79,26,42,32,85,12,72,31,110,111,19,94,117,27,49,115,74,53,50,75,109,17,73,78,9,99,105,88,116,40,118,114,64,11,10,66,59,108,91,83,90,62,101,51,69,1,30,63,3,20,92,86,93,82,67,8,58,39,104,87,43,41,60,107,84,38,96,44,29,35,103,81,61,37,113,95,70,76,33,68,80,56,57,34,7,65,4,6,97,89,21,18,77,15,5,48,112,23,98,52,106,100,55,54,25,36,46,16,13,102,0,47,28,24,71,45,2,22,14}, // permutation 5
{36,100,59,102,60,79,42,88,3,117,10,14,35,77,46,70,39,5,86,11,30,107,58,72,65,62,78,25,0,101,29,44,66,13,61,4,1,94,91,115,32,98,90,118,40,93,114,33,24,52,109,106,67,105,68,103,73,28,26,18,27,20,82,85,87,19,96,111,23,108,41,81,80,50,64,63,113,7,37,55,95,53,8,48,54,84,92,12,16,9,97,49,112,47,51,43,56,83,2,89,57,17,116,34,38,69,74,45,31,22,6,71,110,21,99,76,104,15,75}, // permutation 6
{7,114,107,2,36,20,29,96,61,31,81,79,60,105,57,80,55,84,98,76,46,45,27,34,32,91,93,12,116,103,73,75,41,51,53,16,88,102,65,49,58,85,17,100,71,5,118,106,40,68,22,83,33,9,35,15,59,86,89,39,14,90,28,109,48,13,47,10,63,38,8,92,87,74,56,43,50,77,82,67,115,44,64,21,24,95,42,66,62,97,18,11,4,23,94,112,37,26,3,70,1,19,25,6,69,30,99,0,78,101,104,117,110,54,52,111,108,72,113}, // permutation 7
{61,86,46,18,87,53,36,30,29,72,109,84,89,98,108,59,38,95,100,42,20,6,92,63,70,1,82,104,41,114,4,14,26,105,17,27,35,73,68,11,88,106,69,47,74,103,49,10,113,5,93,54,79,57,117,77,64,2,23,80,12,110,85,22,19,9,51,65,96,40,13,32,83,62,55,16,33,25,97,90,76,75,56,50,71,107,116,0,111,24,112,15,78,58,8,31,99,66,60,118,39,67,91,44,101,102,34,94,43,45,37,7,3,115,28,52,21,48,81}, // permutation 8
{84,85,33,98,83,95,92,28,23,100,51,32,4,63,49,94,1,99,42,19,103,37,82,0,38,36,50,14,48,112,40,114,31,47,101,110,21,34,54,76,108,67,71,75,43,3,109,2,8,66,113,12,89,115,22,72,73,13,111,96,11,91,27,45,26,74,62,41,118,86,106,65,57,107,116,58,35,56,24,7,104,97,93,15,88,6,55,64,117,70,5,25,78,52,44,17,18,61,60,79,77,20,53,69,39,105,80,46,68,59,87,9,16,102,29,10,90,81,30} // permutation 9
};

// Seed: 14

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
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
uint32_t  func_1(struct S0 * p_9);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_9->g_comm_values
 * writes:
 */
uint32_t  func_1(struct S0 * p_9)
{ /* block id: 4 */
    int32_t *l_2 = &p_9->g_3;
    int32_t *l_4 = &p_9->g_3;
    int32_t *l_5[4][8] = {{&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3},{&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3},{&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3},{&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3,&p_9->g_3}};
    uint64_t l_6 = 18446744073709551612UL;
    int i, j;
    l_6--;
    return p_9->g_comm_values[p_9->tid];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[119];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 119; i++)
            l_comm_values[i] = 1;
    struct S0 c_10;
    struct S0* p_9 = &c_10;
    struct S0 c_11 = {
        0x6F9B2CFBL, // p_9->g_3
        sequence_input[get_global_id(0)], // p_9->global_0_offset
        sequence_input[get_global_id(1)], // p_9->global_1_offset
        sequence_input[get_global_id(2)], // p_9->global_2_offset
        sequence_input[get_local_id(0)], // p_9->local_0_offset
        sequence_input[get_local_id(1)], // p_9->local_1_offset
        sequence_input[get_local_id(2)], // p_9->local_2_offset
        sequence_input[get_group_id(0)], // p_9->group_0_offset
        sequence_input[get_group_id(1)], // p_9->group_1_offset
        sequence_input[get_group_id(2)], // p_9->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 119)), permutations[0][get_linear_local_id()])), // p_9->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_10 = c_11;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_9);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_9->g_3, "p_9->g_3", print_hash_value);
    transparent_crc(p_9->l_comm_values[get_linear_local_id()], "p_9->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_9->g_comm_values[get_linear_group_id() * 119 + get_linear_local_id()], "p_9->g_comm_values[get_linear_group_id() * 119 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
