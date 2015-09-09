// ---atomic_reductions ---fake_divergence -g 57,15,9 -l 19,1,9
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


// Seed: 12

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    volatile uint16_t g_14;
    uint32_t v_collective;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
int16_t  func_1(struct S0 * p_17);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_17->g_14 p_17->g_3
 * writes: p_17->g_14
 */
int16_t  func_1(struct S0 * p_17)
{ /* block id: 4 */
    int32_t *l_2 = &p_17->g_3;
    int32_t *l_4 = (void*)0;
    int32_t *l_5 = &p_17->g_3;
    int32_t *l_6 = &p_17->g_3;
    int32_t *l_7 = (void*)0;
    int32_t *l_8 = &p_17->g_3;
    int32_t *l_9 = &p_17->g_3;
    int32_t *l_10 = &p_17->g_3;
    int32_t *l_11 = &p_17->g_3;
    int32_t *l_12 = &p_17->g_3;
    int32_t *l_13[10][1] = {{&p_17->g_3},{&p_17->g_3},{&p_17->g_3},{&p_17->g_3},{&p_17->g_3},{&p_17->g_3},{&p_17->g_3},{&p_17->g_3},{&p_17->g_3},{&p_17->g_3}};
    int i, j;
    p_17->g_14++;
    return (*l_8);
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_18;
    struct S0* p_17 = &c_18;
    struct S0 c_19 = {
        (-7L), // p_17->g_3
        65528UL, // p_17->g_14
        0, // p_17->v_collective
        sequence_input[get_global_id(0)], // p_17->global_0_offset
        sequence_input[get_global_id(1)], // p_17->global_1_offset
        sequence_input[get_global_id(2)], // p_17->global_2_offset
        sequence_input[get_local_id(0)], // p_17->local_0_offset
        sequence_input[get_local_id(1)], // p_17->local_1_offset
        sequence_input[get_local_id(2)], // p_17->local_2_offset
        sequence_input[get_group_id(0)], // p_17->group_0_offset
        sequence_input[get_group_id(1)], // p_17->group_1_offset
        sequence_input[get_group_id(2)], // p_17->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_18 = c_19;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_17);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_17->g_3, "p_17->g_3", print_hash_value);
    transparent_crc(p_17->g_14, "p_17->g_14", print_hash_value);
    transparent_crc(p_17->v_collective, "p_17->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
