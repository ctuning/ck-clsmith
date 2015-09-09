// --atomics 56 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 4,46,50 -l 4,1,2
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

__constant uint32_t permutations[10][8] = {
{5,0,2,4,7,1,3,6}, // permutation 0
{4,0,7,5,1,3,6,2}, // permutation 1
{3,4,5,1,2,7,0,6}, // permutation 2
{7,0,2,4,3,5,1,6}, // permutation 3
{4,7,0,3,5,6,1,2}, // permutation 4
{1,7,3,4,6,0,5,2}, // permutation 5
{7,2,4,5,3,0,6,1}, // permutation 6
{4,6,1,0,5,2,7,3}, // permutation 7
{1,7,5,0,4,3,6,2}, // permutation 8
{6,3,0,7,1,4,5,2} // permutation 9
};

// Seed: 2

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S2 {
    volatile int16_t g_3[9][8];
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
    uint32_t tid;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S2 * p_4);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_4->g_3
 */
uint32_t  func_1(struct S2 * p_4)
{ /* block id: 4 */
    VECTOR(int32_t, 4) l_2 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L);
    int i;
    p_4->g_3[5][3] = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_2.zzzyxyxzxwyzzwzx)).s6f)).hi;
    return l_2.w;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[8];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 8; i++)
            l_comm_values[i] = 1;
    struct S2 c_5;
    struct S2* p_4 = &c_5;
    struct S2 c_6 = {
        {{0x1E19L,(-6L),0x378AL,0x105BL,0x19C9L,0x19C9L,0x105BL,0x378AL},{0x1E19L,(-6L),0x378AL,0x105BL,0x19C9L,0x19C9L,0x105BL,0x378AL},{0x1E19L,(-6L),0x378AL,0x105BL,0x19C9L,0x19C9L,0x105BL,0x378AL},{0x1E19L,(-6L),0x378AL,0x105BL,0x19C9L,0x19C9L,0x105BL,0x378AL},{0x1E19L,(-6L),0x378AL,0x105BL,0x19C9L,0x19C9L,0x105BL,0x378AL},{0x1E19L,(-6L),0x378AL,0x105BL,0x19C9L,0x19C9L,0x105BL,0x378AL},{0x1E19L,(-6L),0x378AL,0x105BL,0x19C9L,0x19C9L,0x105BL,0x378AL},{0x1E19L,(-6L),0x378AL,0x105BL,0x19C9L,0x19C9L,0x105BL,0x378AL},{0x1E19L,(-6L),0x378AL,0x105BL,0x19C9L,0x19C9L,0x105BL,0x378AL}}, // p_4->g_3
        0, // p_4->v_collective
        sequence_input[get_global_id(0)], // p_4->global_0_offset
        sequence_input[get_global_id(1)], // p_4->global_1_offset
        sequence_input[get_global_id(2)], // p_4->global_2_offset
        sequence_input[get_local_id(0)], // p_4->local_0_offset
        sequence_input[get_local_id(1)], // p_4->local_1_offset
        sequence_input[get_local_id(2)], // p_4->local_2_offset
        sequence_input[get_group_id(0)], // p_4->group_0_offset
        sequence_input[get_group_id(1)], // p_4->group_1_offset
        sequence_input[get_group_id(2)], // p_4->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 8)), permutations[0][get_linear_local_id()])), // p_4->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_5 = c_6;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_4);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_4->g_3[i][j], "p_4->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_4->v_collective, "p_4->v_collective", print_hash_value);
    transparent_crc(p_4->l_comm_values[get_linear_local_id()], "p_4->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_4->g_comm_values[get_linear_group_id() * 8 + get_linear_local_id()], "p_4->g_comm_values[get_linear_group_id() * 8 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
