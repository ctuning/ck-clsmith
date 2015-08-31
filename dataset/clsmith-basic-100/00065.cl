// ---fake_divergence -g 1282,2,2 -l 2,1,1
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


// Seed: 65

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S2 {
    uint32_t g_4[6];
    int32_t g_6[7];
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
int8_t  func_1(struct S2 * p_7);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_7->g_4 p_7->g_6
 * writes: p_7->g_6
 */
int8_t  func_1(struct S2 * p_7)
{ /* block id: 4 */
    int32_t *l_5 = &p_7->g_6[4];
    (*l_5) ^= (safe_mod_func_int32_t_s_s(p_7->g_4[5], p_7->g_4[5]));
    return (*l_5);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S2 c_8;
    struct S2* p_7 = &c_8;
    struct S2 c_9 = {
        {0x250DB856L,0x250DB856L,0x250DB856L,0x250DB856L,0x250DB856L,0x250DB856L}, // p_7->g_4
        {0x789328A0L,0x2B000CD9L,0x789328A0L,0x789328A0L,0x2B000CD9L,0x789328A0L,0x789328A0L}, // p_7->g_6
        sequence_input[get_global_id(0)], // p_7->global_0_offset
        sequence_input[get_global_id(1)], // p_7->global_1_offset
        sequence_input[get_global_id(2)], // p_7->global_2_offset
        sequence_input[get_local_id(0)], // p_7->local_0_offset
        sequence_input[get_local_id(1)], // p_7->local_1_offset
        sequence_input[get_local_id(2)], // p_7->local_2_offset
        sequence_input[get_group_id(0)], // p_7->group_0_offset
        sequence_input[get_group_id(1)], // p_7->group_1_offset
        sequence_input[get_group_id(2)], // p_7->group_2_offset
    };
    c_8 = c_9;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_7);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_7->g_4[i], "p_7->g_4[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_7->g_6[i], "p_7->g_6[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
