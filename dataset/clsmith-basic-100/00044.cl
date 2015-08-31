// ---fake_divergence -g 6,21,1 -l 1,1,1
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


// Seed: 44

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    int32_t g_3[4];
    uint64_t g_4[2];
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
int64_t  func_1(struct S1 * p_9);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_9->g_3 p_9->g_4
 * writes: p_9->g_3 p_9->g_4
 */
int64_t  func_1(struct S1 * p_9)
{ /* block id: 4 */
    uint32_t l_2[9];
    int32_t l_5 = 0L;
    int16_t l_6 = 0x782BL;
    int i;
    for (i = 0; i < 9; i++)
        l_2[i] = 4294967290UL;
    for (p_9->g_3[1] = 8; (p_9->g_3[1] >= 1); p_9->g_3[1] -= 1)
    { /* block id: 7 */
        int i;
        p_9->g_4[0] ^= l_2[p_9->g_3[1]];
        l_5 &= 0L;
    }
    l_5 = (+0x10FECAFEL);
    l_5 = ((++p_9->g_4[0]) | p_9->g_3[1]);
    return p_9->g_3[1];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S1 c_10;
    struct S1* p_9 = &c_10;
    struct S1 c_11 = {
        {0x4FE04822L,0x4FE04822L,0x4FE04822L,0x4FE04822L}, // p_9->g_3
        {18446744073709551615UL,18446744073709551615UL}, // p_9->g_4
        sequence_input[get_global_id(0)], // p_9->global_0_offset
        sequence_input[get_global_id(1)], // p_9->global_1_offset
        sequence_input[get_global_id(2)], // p_9->global_2_offset
        sequence_input[get_local_id(0)], // p_9->local_0_offset
        sequence_input[get_local_id(1)], // p_9->local_1_offset
        sequence_input[get_local_id(2)], // p_9->local_2_offset
        sequence_input[get_group_id(0)], // p_9->group_0_offset
        sequence_input[get_group_id(1)], // p_9->group_1_offset
        sequence_input[get_group_id(2)], // p_9->group_2_offset
    };
    c_10 = c_11;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_9);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_9->g_3[i], "p_9->g_3[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_9->g_4[i], "p_9->g_4[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
