// ---atomic_reductions ---fake_divergence -g 83,16,3 -l 1,16,3
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


// Seed: 117

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S2 {
    volatile int8_t *g_6[5][2];
    uint8_t g_16;
    uint16_t g_20;
    int8_t g_21;
    int32_t g_24;
    int32_t * volatile g_23;
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
uint16_t  func_1(struct S2 * p_25);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_25->g_6 p_25->g_16 p_25->g_23
 * writes: p_25->g_20 p_25->g_21 p_25->g_24
 */
uint16_t  func_1(struct S2 * p_25)
{ /* block id: 4 */
    int8_t l_7 = 0x5CL;
    uint16_t *l_19 = &p_25->g_20;
    uint16_t l_22 = 0x0A7FL;
    (*p_25->g_23) = (safe_mod_func_int8_t_s_s((~(p_25->g_21 = (safe_div_func_int8_t_s_s((((p_25->g_6[4][1] == p_25->g_6[3][0]) >= l_7) >= ((l_7 >= ((*l_19) = (safe_add_func_int16_t_s_s((safe_div_func_uint64_t_u_u(((((safe_add_func_int64_t_s_s((&l_7 == p_25->g_6[4][1]), (safe_add_func_int16_t_s_s(p_25->g_16, (safe_sub_func_int64_t_s_s((l_7 , (l_7 <= l_7)), 7UL)))))) ^ l_7) == p_25->g_16) < 0x6728L), p_25->g_16)), l_7)))) <= l_7)), 6UL)))), l_22));
    return p_25->g_16;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_26;
    struct S2* p_25 = &c_26;
    struct S2 c_27 = {
        {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}, // p_25->g_6
        0x52L, // p_25->g_16
        3UL, // p_25->g_20
        (-8L), // p_25->g_21
        0x2D8E65DDL, // p_25->g_24
        &p_25->g_24, // p_25->g_23
        0, // p_25->v_collective
        sequence_input[get_global_id(0)], // p_25->global_0_offset
        sequence_input[get_global_id(1)], // p_25->global_1_offset
        sequence_input[get_global_id(2)], // p_25->global_2_offset
        sequence_input[get_local_id(0)], // p_25->local_0_offset
        sequence_input[get_local_id(1)], // p_25->local_1_offset
        sequence_input[get_local_id(2)], // p_25->local_2_offset
        sequence_input[get_group_id(0)], // p_25->group_0_offset
        sequence_input[get_group_id(1)], // p_25->group_1_offset
        sequence_input[get_group_id(2)], // p_25->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_26 = c_27;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_25);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_25->g_16, "p_25->g_16", print_hash_value);
    transparent_crc(p_25->g_20, "p_25->g_20", print_hash_value);
    transparent_crc(p_25->g_21, "p_25->g_21", print_hash_value);
    transparent_crc(p_25->g_24, "p_25->g_24", print_hash_value);
    transparent_crc(p_25->v_collective, "p_25->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
