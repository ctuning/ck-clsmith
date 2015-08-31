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
    VECTOR(int32_t, 8) g_7;
    VECTOR(int32_t, 16) g_13;
    int32_t * volatile g_14;
    int32_t *g_17[8];
    int32_t ** volatile g_16;
    int32_t *g_22;
    int32_t ** volatile g_21[9];
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
int64_t  func_1(struct S1 * p_24);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_24->g_7 p_24->g_16
 * writes: p_24->g_17 p_24->g_22
 */
int64_t  func_1(struct S1 * p_24)
{ /* block id: 4 */
    uint64_t l_2 = 9UL;
    int32_t l_5 = 0L;
    int32_t *l_6 = (void*)0;
    int32_t *l_8 = (void*)0;
    int32_t l_9 = 1L;
    l_9 = ((VECTOR(int32_t, 8))((-1L), (-6L), 0x022B1658L, (-1L), (l_2 == (5L == (safe_rshift_func_uint8_t_u_u(l_5, 0)))), ((VECTOR(int32_t, 2))(0x0566A927L, 0x3EC752F6L)), (-2L))).s7;
    for (l_9 = 0; (l_9 <= (-24)); l_9 = safe_sub_func_uint64_t_u_u(l_9, 5))
    { /* block id: 8 */
        int32_t *l_12 = (void*)0;
        int32_t l_15 = 0x04EDC022L;
        l_15 &= p_24->g_7.s7;
        (*p_24->g_16) = &l_15;
    }
    for (l_9 = 5; (l_9 >= 11); ++l_9)
    { /* block id: 14 */
        int32_t **l_20 = &p_24->g_17[3];
        int32_t **l_23 = &p_24->g_22;
        (*l_23) = ((*l_20) = &l_9);
    }
    return p_24->g_7.s7;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S1 c_25;
    struct S1* p_24 = &c_25;
    struct S1 c_26 = {
        (VECTOR(int32_t, 8))(0x229EDCA8L, (VECTOR(int32_t, 4))(0x229EDCA8L, (VECTOR(int32_t, 2))(0x229EDCA8L, 0L), 0L), 0L, 0x229EDCA8L, 0L), // p_24->g_7
        (VECTOR(int32_t, 16))(0x79E3D3B0L, (VECTOR(int32_t, 4))(0x79E3D3B0L, (VECTOR(int32_t, 2))(0x79E3D3B0L, 0x2A05D762L), 0x2A05D762L), 0x2A05D762L, 0x79E3D3B0L, 0x2A05D762L, (VECTOR(int32_t, 2))(0x79E3D3B0L, 0x2A05D762L), (VECTOR(int32_t, 2))(0x79E3D3B0L, 0x2A05D762L), 0x79E3D3B0L, 0x2A05D762L, 0x79E3D3B0L, 0x2A05D762L), // p_24->g_13
        (void*)0, // p_24->g_14
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_24->g_17
        &p_24->g_17[1], // p_24->g_16
        (void*)0, // p_24->g_22
        {&p_24->g_22,&p_24->g_22,&p_24->g_22,&p_24->g_22,&p_24->g_22,&p_24->g_22,&p_24->g_22,&p_24->g_22,&p_24->g_22}, // p_24->g_21
        sequence_input[get_global_id(0)], // p_24->global_0_offset
        sequence_input[get_global_id(1)], // p_24->global_1_offset
        sequence_input[get_global_id(2)], // p_24->global_2_offset
        sequence_input[get_local_id(0)], // p_24->local_0_offset
        sequence_input[get_local_id(1)], // p_24->local_1_offset
        sequence_input[get_local_id(2)], // p_24->local_2_offset
        sequence_input[get_group_id(0)], // p_24->group_0_offset
        sequence_input[get_group_id(1)], // p_24->group_1_offset
        sequence_input[get_group_id(2)], // p_24->group_2_offset
    };
    c_25 = c_26;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_24);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_24->g_7.s0, "p_24->g_7.s0", print_hash_value);
    transparent_crc(p_24->g_7.s1, "p_24->g_7.s1", print_hash_value);
    transparent_crc(p_24->g_7.s2, "p_24->g_7.s2", print_hash_value);
    transparent_crc(p_24->g_7.s3, "p_24->g_7.s3", print_hash_value);
    transparent_crc(p_24->g_7.s4, "p_24->g_7.s4", print_hash_value);
    transparent_crc(p_24->g_7.s5, "p_24->g_7.s5", print_hash_value);
    transparent_crc(p_24->g_7.s6, "p_24->g_7.s6", print_hash_value);
    transparent_crc(p_24->g_7.s7, "p_24->g_7.s7", print_hash_value);
    transparent_crc(p_24->g_13.s0, "p_24->g_13.s0", print_hash_value);
    transparent_crc(p_24->g_13.s1, "p_24->g_13.s1", print_hash_value);
    transparent_crc(p_24->g_13.s2, "p_24->g_13.s2", print_hash_value);
    transparent_crc(p_24->g_13.s3, "p_24->g_13.s3", print_hash_value);
    transparent_crc(p_24->g_13.s4, "p_24->g_13.s4", print_hash_value);
    transparent_crc(p_24->g_13.s5, "p_24->g_13.s5", print_hash_value);
    transparent_crc(p_24->g_13.s6, "p_24->g_13.s6", print_hash_value);
    transparent_crc(p_24->g_13.s7, "p_24->g_13.s7", print_hash_value);
    transparent_crc(p_24->g_13.s8, "p_24->g_13.s8", print_hash_value);
    transparent_crc(p_24->g_13.s9, "p_24->g_13.s9", print_hash_value);
    transparent_crc(p_24->g_13.sa, "p_24->g_13.sa", print_hash_value);
    transparent_crc(p_24->g_13.sb, "p_24->g_13.sb", print_hash_value);
    transparent_crc(p_24->g_13.sc, "p_24->g_13.sc", print_hash_value);
    transparent_crc(p_24->g_13.sd, "p_24->g_13.sd", print_hash_value);
    transparent_crc(p_24->g_13.se, "p_24->g_13.se", print_hash_value);
    transparent_crc(p_24->g_13.sf, "p_24->g_13.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
