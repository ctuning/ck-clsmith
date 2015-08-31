// ---fake_divergence -g 137,12,1 -l 1,1,1
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


// Seed: 4

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S4 {
    int32_t g_2;
    int8_t g_13;
    int32_t g_15;
    int32_t * volatile g_14;
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
uint32_t  func_1(struct S4 * p_16);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_16->g_2 p_16->g_13 p_16->g_14 p_16->g_15
 * writes: p_16->g_2 p_16->g_15
 */
uint32_t  func_1(struct S4 * p_16)
{ /* block id: 4 */
    uint32_t l_5[4][3] = {{0xFAC12265L,0xFAC12265L,0xFAC12265L},{0xFAC12265L,0xFAC12265L,0xFAC12265L},{0xFAC12265L,0xFAC12265L,0xFAC12265L},{0xFAC12265L,0xFAC12265L,0xFAC12265L}};
    int i, j;
    for (p_16->g_2 = 0; (p_16->g_2 >= 23); p_16->g_2 = safe_add_func_int64_t_s_s(p_16->g_2, 8))
    { /* block id: 7 */
        int8_t *l_12[2][7][10] = {{{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13}},{{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13},{&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13,&p_16->g_13}}};
        int i, j, k;
        if (l_5[3][1])
            break;
        (*p_16->g_14) |= (safe_div_func_int8_t_s_s(0x33L, (safe_mod_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_16->group_0_offset, get_group_id(0), 10), (l_12[0][5][1] == (void*)0))), p_16->g_13))));
        if ((*p_16->g_14))
            break;
    }
    return l_5[0][1];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int ;
    struct S4 c_17;
    struct S4* p_16 = &c_17;
    struct S4 c_18 = {
        0x75F49900L, // p_16->g_2
        3L, // p_16->g_13
        0x3EDB3952L, // p_16->g_15
        &p_16->g_15, // p_16->g_14
        sequence_input[get_global_id(0)], // p_16->global_0_offset
        sequence_input[get_global_id(1)], // p_16->global_1_offset
        sequence_input[get_global_id(2)], // p_16->global_2_offset
        sequence_input[get_local_id(0)], // p_16->local_0_offset
        sequence_input[get_local_id(1)], // p_16->local_1_offset
        sequence_input[get_local_id(2)], // p_16->local_2_offset
        sequence_input[get_group_id(0)], // p_16->group_0_offset
        sequence_input[get_group_id(1)], // p_16->group_1_offset
        sequence_input[get_group_id(2)], // p_16->group_2_offset
    };
    c_17 = c_18;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_16);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_16->g_2, "p_16->g_2", print_hash_value);
    transparent_crc(p_16->g_13, "p_16->g_13", print_hash_value);
    transparent_crc(p_16->g_15, "p_16->g_15", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
