// --atomics 18 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 27,57,1 -l 27,1,1
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

__constant uint32_t permutations[10][27] = {
{18,11,9,16,10,13,15,26,7,2,23,24,25,17,22,4,6,14,20,1,19,21,0,5,8,12,3}, // permutation 0
{12,3,26,5,20,14,8,15,0,24,22,2,13,10,23,16,9,25,17,19,6,18,1,21,11,7,4}, // permutation 1
{1,15,18,3,11,26,12,25,16,19,5,14,23,13,20,7,8,6,9,10,24,22,21,0,17,2,4}, // permutation 2
{8,23,10,11,22,4,13,5,1,3,7,19,20,0,2,17,25,24,12,26,6,15,9,21,14,16,18}, // permutation 3
{25,3,22,15,26,18,1,7,9,17,21,20,2,13,24,12,16,5,6,8,10,19,0,14,23,11,4}, // permutation 4
{14,19,10,16,18,22,1,0,4,9,5,13,17,24,26,7,8,6,23,20,3,21,12,15,2,25,11}, // permutation 5
{5,3,7,9,4,24,21,12,16,22,8,14,13,19,0,25,6,15,11,20,18,1,2,17,26,10,23}, // permutation 6
{18,22,20,16,26,0,11,21,13,25,17,1,24,23,19,6,3,2,7,14,12,15,8,10,9,4,5}, // permutation 7
{14,12,24,18,6,21,17,16,1,9,19,3,11,13,7,4,8,15,25,2,0,20,22,26,5,10,23}, // permutation 8
{24,26,8,21,14,19,13,6,2,12,18,0,23,11,9,7,3,4,10,5,25,1,17,22,20,16,15} // permutation 9
};

// Seed: 8

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S3 {
    int32_t g_3;
    int32_t g_5;
    int32_t * volatile g_4;
    int32_t * volatile g_6;
    int8_t g_15;
    int8_t *g_14[9];
    int64_t g_27[9];
    int16_t g_29;
    int32_t * volatile g_30;
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
int32_t  func_1(struct S3 * p_32);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_32->g_comm_values p_32->g_4 p_32->g_5 p_32->g_6 p_32->g_14 p_32->g_3 p_32->g_29 p_32->g_27 p_32->g_15 p_32->g_30
 * writes: p_32->g_3 p_32->g_5 p_32->g_27 p_32->g_29
 */
int32_t  func_1(struct S3 * p_32)
{ /* block id: 4 */
    int32_t *l_2 = &p_32->g_3;
    int32_t l_9 = (-1L);
    VECTOR(int64_t, 4) l_16 = (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0x709E149CFF29C214L), 0x709E149CFF29C214L);
    int32_t l_19 = (-2L);
    int32_t *l_25 = &p_32->g_5;
    int32_t **l_24 = &l_25;
    int64_t *l_26 = &p_32->g_27[5];
    int16_t *l_28 = &p_32->g_29;
    uint32_t l_31 = 0UL;
    int i;
    (*p_32->g_4) = (((*l_2) = 0x199D94B4L) , p_32->g_comm_values[p_32->tid]);
    (*p_32->g_6) = (*p_32->g_4);
    (*p_32->g_30) = (18446744073709551615UL || ((safe_rshift_func_uint8_t_u_s(l_9, 7)) == (safe_mod_func_uint32_t_u_u((((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 2))(0xB5411457L, 9UL)).yxyxyxyxyxyyyyyy, ((VECTOR(uint32_t, 16))((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 8))(0x5741311E2DB80EBBL, 7L, ((void*)0 != p_32->g_14[6]), 0x009B4AF7BDD48407L, 0x4FD52280335900B0L, (-9L), 0x0DB8846B51F0EF2FL, (-1L))).s0336263547526426, ((VECTOR(int64_t, 16))(l_16.wyzwzwywwwxzyyzy))))).se, ((safe_lshift_func_int16_t_s_u(((*l_28) ^= (l_19 || ((((*l_26) = (safe_add_func_int64_t_s_s(0x26ADD33D73C12D49L, (safe_rshift_func_int16_t_s_u((((*l_24) = &l_9) != &p_32->g_5), p_32->g_3))))) , &p_32->g_15) != &p_32->g_15))), 15)) != p_32->g_comm_values[p_32->tid]))), (**l_24), 1UL, ((VECTOR(uint32_t, 4))(0x51992420L)), 4294967288UL, 0x662B132DL, 0xB2D863E3L, ((VECTOR(uint32_t, 2))(4294967288UL)), p_32->g_27[5], 0xF9898791L, 4294967295UL, 5UL))))).sa <= (*p_32->g_4)), p_32->g_15))));
    return l_31;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[27];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 27; i++)
            l_comm_values[i] = 1;
    struct S3 c_33;
    struct S3* p_32 = &c_33;
    struct S3 c_34 = {
        (-1L), // p_32->g_3
        0x26EC17E5L, // p_32->g_5
        &p_32->g_5, // p_32->g_4
        &p_32->g_5, // p_32->g_6
        (-4L), // p_32->g_15
        {&p_32->g_15,&p_32->g_15,&p_32->g_15,&p_32->g_15,&p_32->g_15,&p_32->g_15,&p_32->g_15,&p_32->g_15,&p_32->g_15}, // p_32->g_14
        {0x520C3D8D58945CB2L,0x520C3D8D58945CB2L,0x520C3D8D58945CB2L,0x520C3D8D58945CB2L,0x520C3D8D58945CB2L,0x520C3D8D58945CB2L,0x520C3D8D58945CB2L,0x520C3D8D58945CB2L,0x520C3D8D58945CB2L}, // p_32->g_27
        (-10L), // p_32->g_29
        &p_32->g_5, // p_32->g_30
        0, // p_32->v_collective
        sequence_input[get_global_id(0)], // p_32->global_0_offset
        sequence_input[get_global_id(1)], // p_32->global_1_offset
        sequence_input[get_global_id(2)], // p_32->global_2_offset
        sequence_input[get_local_id(0)], // p_32->local_0_offset
        sequence_input[get_local_id(1)], // p_32->local_1_offset
        sequence_input[get_local_id(2)], // p_32->local_2_offset
        sequence_input[get_group_id(0)], // p_32->group_0_offset
        sequence_input[get_group_id(1)], // p_32->group_1_offset
        sequence_input[get_group_id(2)], // p_32->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 27)), permutations[0][get_linear_local_id()])), // p_32->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_33 = c_34;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_32);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_32->g_3, "p_32->g_3", print_hash_value);
    transparent_crc(p_32->g_5, "p_32->g_5", print_hash_value);
    transparent_crc(p_32->g_15, "p_32->g_15", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_32->g_27[i], "p_32->g_27[i]", print_hash_value);

    }
    transparent_crc(p_32->g_29, "p_32->g_29", print_hash_value);
    transparent_crc(p_32->v_collective, "p_32->v_collective", print_hash_value);
    transparent_crc(p_32->l_comm_values[get_linear_local_id()], "p_32->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_32->g_comm_values[get_linear_group_id() * 27 + get_linear_local_id()], "p_32->g_comm_values[get_linear_group_id() * 27 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
