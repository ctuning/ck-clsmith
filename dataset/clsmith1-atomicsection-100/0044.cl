// --atomics 9 ---fake_divergence -g 5,75,1 -l 5,3,1
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
    int32_t g_3;
    int32_t *g_2;
    int32_t g_8;
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
uint64_t  func_1(struct S1 * p_10);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_10->g_2 p_10->g_3 p_10->g_8
 * writes: p_10->g_2 p_10->g_3 p_10->g_8
 */
uint64_t  func_1(struct S1 * p_10)
{ /* block id: 4 */
    int32_t **l_4 = &p_10->g_2;
    int32_t l_9[6][6] = {{0x213EC752L,0x7E8B0D19L,0x60566A92L,0x7E8B0D19L,0x213EC752L,0x213EC752L},{0x213EC752L,0x7E8B0D19L,0x60566A92L,0x7E8B0D19L,0x213EC752L,0x213EC752L},{0x213EC752L,0x7E8B0D19L,0x60566A92L,0x7E8B0D19L,0x213EC752L,0x213EC752L},{0x213EC752L,0x7E8B0D19L,0x60566A92L,0x7E8B0D19L,0x213EC752L,0x213EC752L},{0x213EC752L,0x7E8B0D19L,0x60566A92L,0x7E8B0D19L,0x213EC752L,0x213EC752L},{0x213EC752L,0x7E8B0D19L,0x60566A92L,0x7E8B0D19L,0x213EC752L,0x213EC752L}};
    int i, j;
    (*l_4) = p_10->g_2;
    for (p_10->g_3 = 19; (p_10->g_3 < (-7)); p_10->g_3 = safe_sub_func_int64_t_s_s(p_10->g_3, 1))
    { /* block id: 8 */
        int32_t *l_7 = &p_10->g_8;
        (*l_7) &= (*p_10->g_2);
        return (*l_7);
    }
    (**l_4) = l_9[1][2];
    return p_10->g_3;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int ;
    struct S1 c_11;
    struct S1* p_10 = &c_11;
    struct S1 c_12 = {
        1L, // p_10->g_3
        &p_10->g_3, // p_10->g_2
        1L, // p_10->g_8
        sequence_input[get_global_id(0)], // p_10->global_0_offset
        sequence_input[get_global_id(1)], // p_10->global_1_offset
        sequence_input[get_global_id(2)], // p_10->global_2_offset
        sequence_input[get_local_id(0)], // p_10->local_0_offset
        sequence_input[get_local_id(1)], // p_10->local_1_offset
        sequence_input[get_local_id(2)], // p_10->local_2_offset
        sequence_input[get_group_id(0)], // p_10->group_0_offset
        sequence_input[get_group_id(1)], // p_10->group_1_offset
        sequence_input[get_group_id(2)], // p_10->group_2_offset
    };
    c_11 = c_12;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_10);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_10->g_3, "p_10->g_3", print_hash_value);
    transparent_crc(p_10->g_8, "p_10->g_8", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
