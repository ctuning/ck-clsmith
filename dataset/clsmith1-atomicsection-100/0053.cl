// --atomics 48 ---fake_divergence -g 87,44,2 -l 3,22,2
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


// Seed: 53

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
};


/* --- FORWARD DECLARATIONS --- */
uint16_t  func_1(struct S0 * p_10);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_10->g_3
 * writes:
 */
uint16_t  func_1(struct S0 * p_10)
{ /* block id: 4 */
    int32_t *l_2 = &p_10->g_3;
    int32_t l_4 = 0x3B11ACCBL;
    int32_t *l_5 = (void*)0;
    int32_t *l_6 = &p_10->g_3;
    uint16_t l_7 = 0UL;
    l_7++;
    return p_10->g_3;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int ;
    struct S0 c_11;
    struct S0* p_10 = &c_11;
    struct S0 c_12 = {
        0x031E42A4L, // p_10->g_3
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
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
