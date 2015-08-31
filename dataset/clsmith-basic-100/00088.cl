// ---fake_divergence -g 2,1,2447 -l 1,1,1
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


// Seed: 88

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2[1];
    int32_t g_3;
    volatile int32_t g_6;
    int32_t g_7;
    volatile int32_t g_8;
    int8_t g_9;
    volatile uint16_t g_10[9];
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_13);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_13->g_3 p_13->g_2 p_13->g_10 p_13->g_9
 * writes: p_13->g_3 p_13->g_10
 */
int32_t  func_1(struct S0 * p_13)
{ /* block id: 4 */
    int32_t *l_4 = (void*)0;
    int32_t *l_5[2];
    int i;
    for (i = 0; i < 2; i++)
        l_5[i] = &p_13->g_3;
    for (p_13->g_3 = 0; (p_13->g_3 <= 0); p_13->g_3 += 1)
    { /* block id: 7 */
        int i;
        return p_13->g_2[p_13->g_3];
    }
    p_13->g_10[3]++;
    return p_13->g_9;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S0 c_14;
    struct S0* p_13 = &c_14;
    struct S0 c_15 = {
        {(-1L)}, // p_13->g_2
        0x2DE2167FL, // p_13->g_3
        0x0184DCC8L, // p_13->g_6
        5L, // p_13->g_7
        1L, // p_13->g_8
        1L, // p_13->g_9
        {0x8BBDL,0x8838L,0x8BBDL,0x8BBDL,0x8838L,0x8BBDL,0x8BBDL,0x8838L,0x8BBDL}, // p_13->g_10
        sequence_input[get_global_id(0)], // p_13->global_0_offset
        sequence_input[get_global_id(1)], // p_13->global_1_offset
        sequence_input[get_global_id(2)], // p_13->global_2_offset
        sequence_input[get_local_id(0)], // p_13->local_0_offset
        sequence_input[get_local_id(1)], // p_13->local_1_offset
        sequence_input[get_local_id(2)], // p_13->local_2_offset
        sequence_input[get_group_id(0)], // p_13->group_0_offset
        sequence_input[get_group_id(1)], // p_13->group_1_offset
        sequence_input[get_group_id(2)], // p_13->group_2_offset
    };
    c_14 = c_15;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_13);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_13->g_2[i], "p_13->g_2[i]", print_hash_value);

    }
    transparent_crc(p_13->g_3, "p_13->g_3", print_hash_value);
    transparent_crc(p_13->g_6, "p_13->g_6", print_hash_value);
    transparent_crc(p_13->g_7, "p_13->g_7", print_hash_value);
    transparent_crc(p_13->g_8, "p_13->g_8", print_hash_value);
    transparent_crc(p_13->g_9, "p_13->g_9", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_13->g_10[i], "p_13->g_10[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
