// ---fake_divergence ---inter_thread_comm -g 100,77,1 -l 20,7,1
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

__constant uint32_t permutations[10][140] = {
{33,15,86,73,88,4,46,100,113,72,109,71,65,31,118,21,114,13,26,79,49,7,58,125,41,87,120,16,63,83,47,70,108,8,81,77,112,136,94,102,9,84,68,131,95,24,12,111,128,89,48,55,61,23,130,5,2,92,97,62,69,37,78,123,64,51,39,30,126,99,25,50,139,127,110,54,117,98,106,66,104,60,20,38,124,137,75,53,103,27,29,32,22,1,3,56,42,45,19,93,133,116,18,34,80,43,107,10,76,135,134,101,57,74,119,96,121,122,132,67,105,138,82,14,91,115,59,129,36,40,17,28,6,0,35,11,90,85,44,52}, // permutation 0
{124,0,66,18,122,58,37,43,81,95,71,87,22,31,137,135,25,34,114,40,44,48,113,6,15,63,36,14,105,10,89,77,72,118,131,73,47,106,12,85,11,128,83,2,80,53,16,29,107,84,9,51,49,61,68,50,136,70,42,26,39,52,35,17,24,62,56,133,132,54,28,117,82,41,98,76,127,75,20,86,104,4,69,45,32,78,99,96,57,33,108,93,102,112,139,100,94,125,123,88,134,7,67,46,8,109,60,101,19,116,130,79,92,1,74,27,111,55,129,13,90,138,59,97,64,119,120,115,110,23,21,65,91,5,38,121,126,30,3,103}, // permutation 1
{48,10,43,41,50,81,136,133,32,18,65,71,104,131,20,8,121,90,109,39,22,113,5,138,134,132,77,3,0,30,125,59,83,102,31,91,55,111,7,108,64,97,60,80,129,119,98,1,89,4,29,53,115,69,101,45,28,127,120,62,13,79,124,107,123,72,87,37,17,67,78,21,58,84,110,52,15,76,135,24,47,25,9,54,34,137,14,33,73,49,100,57,42,112,106,85,139,94,16,6,96,68,40,88,46,38,114,2,51,66,128,26,70,92,117,44,61,93,116,27,105,126,95,118,122,63,11,36,19,103,56,82,35,75,86,74,130,12,99,23}, // permutation 2
{103,37,15,56,42,86,102,66,133,139,41,25,116,12,137,2,112,36,76,129,32,134,47,45,5,118,52,9,6,110,10,29,88,69,53,51,72,130,7,31,73,105,0,4,20,90,85,131,16,40,121,28,136,97,135,104,101,107,1,33,98,91,26,120,62,106,24,8,96,114,77,39,49,22,67,63,46,38,30,124,21,57,74,54,79,81,119,93,18,138,99,109,127,132,92,44,115,60,125,61,48,108,50,87,64,58,13,3,27,83,17,19,55,11,95,123,65,128,84,75,43,70,113,59,122,89,68,94,100,71,117,80,82,126,78,111,14,34,35,23}, // permutation 3
{97,135,7,1,101,44,88,59,49,102,42,27,43,48,90,96,76,30,64,110,120,18,115,118,65,112,139,109,89,82,54,111,67,75,52,47,123,124,56,13,41,132,11,2,20,86,22,46,73,128,32,39,81,28,106,38,17,121,0,8,21,80,14,107,3,95,100,94,53,60,6,103,129,4,29,25,40,133,119,78,114,125,68,91,87,15,50,98,63,34,99,136,19,116,77,55,131,36,16,5,113,57,12,79,51,92,24,70,126,84,72,93,83,66,122,138,85,134,71,137,62,61,31,74,10,45,26,33,104,108,58,117,105,9,37,130,127,69,35,23}, // permutation 4
{89,106,43,108,35,52,105,64,103,69,26,62,44,111,127,102,114,124,21,78,85,122,90,82,131,98,66,13,97,128,41,40,51,99,137,54,55,115,75,14,93,92,60,8,95,15,100,77,63,53,30,28,79,73,94,6,121,84,36,133,76,107,57,39,38,10,80,12,70,72,101,45,112,88,74,2,134,1,46,136,4,118,58,19,42,20,96,18,34,138,3,109,104,23,83,126,47,11,50,123,5,125,56,91,86,33,119,120,31,37,130,61,16,71,25,135,0,132,17,67,139,81,129,59,68,32,48,65,24,29,113,9,110,27,117,116,49,7,87,22}, // permutation 5
{120,17,33,60,99,57,31,81,27,6,35,114,119,19,132,21,85,137,90,46,28,136,93,54,24,125,15,131,87,34,67,116,9,63,112,122,78,30,29,32,47,48,40,104,103,110,66,96,18,135,76,113,80,107,92,11,16,109,14,25,1,20,23,52,88,89,138,105,62,73,55,64,70,12,38,0,10,45,106,123,82,98,108,121,133,75,111,127,39,4,44,2,86,118,22,41,97,139,115,56,3,134,71,77,53,130,5,124,43,51,72,61,69,128,37,117,65,126,95,50,26,79,36,13,42,91,101,68,59,8,58,49,102,83,129,100,74,84,94,7}, // permutation 6
{82,65,59,66,124,42,31,139,33,51,8,97,98,81,131,115,67,88,76,9,61,90,92,60,110,27,29,74,38,87,4,96,55,106,21,34,35,5,18,39,71,0,119,23,3,123,134,57,77,32,22,69,91,50,72,44,129,80,75,130,118,64,138,79,17,41,52,54,136,58,68,26,2,37,93,43,99,36,135,49,1,113,105,126,78,128,100,10,30,16,40,125,25,14,48,109,104,6,122,127,19,94,47,116,132,53,121,73,137,103,46,107,117,13,86,62,7,89,20,56,112,11,84,28,133,101,108,120,114,63,85,70,45,95,15,24,102,12,83,111}, // permutation 7
{87,57,82,129,1,92,53,134,61,51,75,83,40,126,39,114,69,106,38,6,88,60,70,36,25,93,123,59,86,16,33,49,29,76,48,128,80,118,139,99,19,108,27,54,85,8,44,120,84,81,3,23,109,95,21,119,56,43,98,117,52,2,37,64,13,97,79,127,9,101,103,102,91,116,20,46,41,12,18,58,68,42,65,107,72,22,138,4,111,32,94,100,17,26,122,0,90,28,110,112,55,5,10,124,96,135,113,67,45,50,133,104,34,131,115,30,47,125,66,11,78,63,62,24,73,136,132,121,35,71,31,130,15,77,105,137,74,14,89,7}, // permutation 8
{32,59,139,94,126,38,65,15,87,77,72,53,18,19,17,7,49,45,108,29,60,68,122,33,34,25,80,114,135,137,2,91,78,104,22,97,24,5,67,47,42,125,128,4,83,52,103,127,51,81,95,123,61,107,44,74,41,55,64,11,9,79,113,43,16,30,89,56,121,84,48,27,88,70,96,82,129,133,124,112,110,62,36,26,50,99,93,54,105,66,111,39,3,14,98,35,76,116,37,86,138,28,115,134,109,31,131,12,92,1,73,71,10,100,101,130,13,69,57,20,40,102,21,8,119,6,118,75,120,58,46,63,23,132,136,90,0,85,106,117} // permutation 9
};

// Seed: 71

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S3 {
    int32_t g_3;
    int32_t * volatile g_2[10];
    int32_t * volatile g_4;
    volatile int32_t g_13;
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
int16_t  func_1(struct S3 * p_17);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_17->g_comm_values
 * writes: p_17->g_3
 */
int16_t  func_1(struct S3 * p_17)
{ /* block id: 4 */
    int32_t *l_5 = &p_17->g_3;
    int32_t *l_6 = (void*)0;
    int32_t *l_7 = &p_17->g_3;
    int32_t *l_8 = &p_17->g_3;
    int32_t l_9[3];
    int32_t *l_10 = (void*)0;
    int32_t *l_11 = &l_9[1];
    int32_t *l_12[2];
    uint16_t l_14[9][1] = {{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}};
    int i, j;
    for (i = 0; i < 3; i++)
        l_9[i] = 1L;
    for (i = 0; i < 2; i++)
        l_12[i] = &l_9[1];
    (*l_5) = p_17->g_comm_values[p_17->tid];
    l_14[6][0]++;
    return p_17->g_comm_values[p_17->tid];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[140];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 140; i++)
            l_comm_values[i] = 1;
    struct S3 c_18;
    struct S3* p_17 = &c_18;
    struct S3 c_19 = {
        (-1L), // p_17->g_3
        {&p_17->g_3,&p_17->g_3,(void*)0,&p_17->g_3,&p_17->g_3,&p_17->g_3,&p_17->g_3,(void*)0,&p_17->g_3,&p_17->g_3}, // p_17->g_2
        (void*)0, // p_17->g_4
        0x60A421E0L, // p_17->g_13
        sequence_input[get_global_id(0)], // p_17->global_0_offset
        sequence_input[get_global_id(1)], // p_17->global_1_offset
        sequence_input[get_global_id(2)], // p_17->global_2_offset
        sequence_input[get_local_id(0)], // p_17->local_0_offset
        sequence_input[get_local_id(1)], // p_17->local_1_offset
        sequence_input[get_local_id(2)], // p_17->local_2_offset
        sequence_input[get_group_id(0)], // p_17->group_0_offset
        sequence_input[get_group_id(1)], // p_17->group_1_offset
        sequence_input[get_group_id(2)], // p_17->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 140)), permutations[0][get_linear_local_id()])), // p_17->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_18 = c_19;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_17);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_17->g_3, "p_17->g_3", print_hash_value);
    transparent_crc(p_17->g_13, "p_17->g_13", print_hash_value);
    transparent_crc(p_17->l_comm_values[get_linear_local_id()], "p_17->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_17->g_comm_values[get_linear_group_id() * 140 + get_linear_local_id()], "p_17->g_comm_values[get_linear_group_id() * 140 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
