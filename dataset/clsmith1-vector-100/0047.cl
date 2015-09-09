// ---fake_divergence -g 16,81,2 -l 2,81,1
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


// Seed: 47

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3[4];
    int32_t *g_4;
    volatile VECTOR(uint16_t, 4) g_9;
    int32_t g_11;
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
uint32_t  func_1(struct S0 * p_12);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_12->g_9 p_12->g_3 p_12->g_11
 * writes: p_12->g_4 p_12->g_3 p_12->g_11
 */
uint32_t  func_1(struct S0 * p_12)
{ /* block id: 4 */
    int32_t *l_2 = &p_12->g_3[2];
    int32_t *l_10 = &p_12->g_11;
    p_12->g_4 = l_2;
    (*l_10) ^= ((*l_2) = ((safe_mul_func_uint8_t_u_u(0xA5L, (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(p_12->g_9.xzwx)).y, p_12->g_3[2])))) & p_12->g_3[0]));
    return (*l_10);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S0 c_13;
    struct S0* p_12 = &c_13;
    struct S0 c_14 = {
        {(-1L),(-1L),(-1L),(-1L)}, // p_12->g_3
        (void*)0, // p_12->g_4
        (VECTOR(uint16_t, 4))(0x6544L, (VECTOR(uint16_t, 2))(0x6544L, 65529UL), 65529UL), // p_12->g_9
        0x7425F5F9L, // p_12->g_11
        sequence_input[get_global_id(0)], // p_12->global_0_offset
        sequence_input[get_global_id(1)], // p_12->global_1_offset
        sequence_input[get_global_id(2)], // p_12->global_2_offset
        sequence_input[get_local_id(0)], // p_12->local_0_offset
        sequence_input[get_local_id(1)], // p_12->local_1_offset
        sequence_input[get_local_id(2)], // p_12->local_2_offset
        sequence_input[get_group_id(0)], // p_12->group_0_offset
        sequence_input[get_group_id(1)], // p_12->group_1_offset
        sequence_input[get_group_id(2)], // p_12->group_2_offset
    };
    c_13 = c_14;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_12);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_12->g_3[i], "p_12->g_3[i]", print_hash_value);

    }
    transparent_crc(p_12->g_9.x, "p_12->g_9.x", print_hash_value);
    transparent_crc(p_12->g_9.y, "p_12->g_9.y", print_hash_value);
    transparent_crc(p_12->g_9.z, "p_12->g_9.z", print_hash_value);
    transparent_crc(p_12->g_9.w, "p_12->g_9.w", print_hash_value);
    transparent_crc(p_12->g_11, "p_12->g_11", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
