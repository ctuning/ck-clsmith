// --atomics 34 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 16,10,16 -l 1,5,2
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

__constant uint32_t permutations[10][10] = {
{5,9,3,7,4,1,0,8,2,6}, // permutation 0
{9,0,7,8,1,4,2,6,5,3}, // permutation 1
{7,0,5,9,6,8,3,1,4,2}, // permutation 2
{6,5,9,8,1,3,2,0,7,4}, // permutation 3
{1,3,2,8,0,5,6,7,9,4}, // permutation 4
{8,7,4,3,6,0,1,5,9,2}, // permutation 5
{2,0,8,7,5,3,6,1,4,9}, // permutation 6
{9,6,8,7,0,5,3,4,1,2}, // permutation 7
{1,2,0,4,9,8,7,5,6,3}, // permutation 8
{1,6,3,7,2,0,4,5,8,9} // permutation 9
};

// Seed: 10

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t *g_2;
    int32_t g_6;
    int32_t *g_5[5];
    int32_t ** volatile g_4;
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
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_32);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_32->g_2 p_32->g_4 p_32->g_5
 * writes: p_32->g_2 p_32->g_5
 */
int32_t  func_1(struct S0 * p_32)
{ /* block id: 4 */
    int32_t **l_3 = &p_32->g_2;
    int32_t l_31 = (-1L);
    (*p_32->g_4) = ((*l_3) = p_32->g_2);
    if ((atomic_inc(&p_32->g_atomic_input[34 * get_linear_group_id() + 19]) == 1))
    { /* block id: 8 */
        VECTOR(int64_t, 4) l_7 = (VECTOR(int64_t, 4))(0x4EC79E672CA3C0BFL, (VECTOR(int64_t, 2))(0x4EC79E672CA3C0BFL, 0x223371247ADF1ADBL), 0x223371247ADF1ADBL);
        VECTOR(int64_t, 16) l_8 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int64_t, 2))(1L, (-1L)), (VECTOR(int64_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
        VECTOR(int64_t, 16) l_9 = (VECTOR(int64_t, 16))(0x01874DA8628405CEL, (VECTOR(int64_t, 4))(0x01874DA8628405CEL, (VECTOR(int64_t, 2))(0x01874DA8628405CEL, 4L), 4L), 4L, 0x01874DA8628405CEL, 4L, (VECTOR(int64_t, 2))(0x01874DA8628405CEL, 4L), (VECTOR(int64_t, 2))(0x01874DA8628405CEL, 4L), 0x01874DA8628405CEL, 4L, 0x01874DA8628405CEL, 4L);
        uint8_t l_10[9][4] = {{248UL,248UL,254UL,0x84L},{248UL,248UL,254UL,0x84L},{248UL,248UL,254UL,0x84L},{248UL,248UL,254UL,0x84L},{248UL,248UL,254UL,0x84L},{248UL,248UL,254UL,0x84L},{248UL,248UL,254UL,0x84L},{248UL,248UL,254UL,0x84L},{248UL,248UL,254UL,0x84L}};
        int16_t l_11 = 0x6C13L;
        int64_t l_12 = 0x59E62B56095DBC2AL;
        int64_t l_13 = 0x2C3EFC167656540FL;
        uint32_t l_14 = 4294967293UL;
        VECTOR(int64_t, 4) l_15 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x45DB0FF846C8C5CEL), 0x45DB0FF846C8C5CEL);
        uint8_t l_16 = 0xFAL;
        int32_t l_17 = 0x0402AD92L;
        int32_t l_18 = (-4L);
        uint32_t l_19 = 4294967290UL;
        int32_t l_20 = (-1L);
        uint8_t l_21 = 7UL;
        int i, j;
        if ((((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 8))(l_7.zwxxxzyw)), ((VECTOR(int64_t, 2))(0x0D658EDFE012D2C8L, 0L)).xyyxyyyy, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 16))(l_8.s4cf592758e92eda8)), ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 2))(l_9.sbd)).xxxyxxyx, ((VECTOR(int64_t, 16))((l_11 = l_10[1][1]), 0x06255D580090AE73L, l_12, 0x3870004DDC87778EL, ((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))(l_13, 2L, l_14, 0x4071E9942C3B03C3L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_15.xx)), (-5L), (-1L))), 0L, ((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((-1L), 0x73BBA684A08DEB25L)).xxyxyyyx)))).s42, (int64_t)(((l_17 |= l_16) , l_18) , (l_19 |= (-1L))), (int64_t)l_20))), 1L, l_21, ((VECTOR(int64_t, 2))((-1L))), 0x4E2495621847726BL)).even))), (-1L), ((VECTOR(int64_t, 2))(0x2AEAFD71021F5EB7L)), 0x64F6128B293C34F9L)).odd))).s0310026652752174))).s5c)).xyxyxxxx, ((VECTOR(int64_t, 8))(0x382AEC7F5175D1B3L))))).odd))).xzzyywwxyzzzzwzz)).s1e, ((VECTOR(int64_t, 2))(0x61E4171B3FE78DE6L)), ((VECTOR(int64_t, 2))(1L))))))).yxxyyyyy))).lo))).x , 0x28543B57L))
        { /* block id: 12 */
            int64_t l_22 = 0x79B6842A457AFC49L;
            int32_t l_23 = 0x012106DFL;
            int16_t l_24 = 0L;
            uint32_t l_25 = 1UL;
            l_18 = (l_22 , l_23);
            ++l_25;
        }
        else
        { /* block id: 15 */
            uint16_t l_28 = 0x1351L;
            uint64_t l_29 = 18446744073709551608UL;
            int16_t l_30[4][2] = {{8L,8L},{8L,8L},{8L,8L},{8L,8L}};
            int i, j;
            l_30[3][0] &= ((l_28 = FAKE_DIVERGE(p_32->global_2_offset, get_global_id(2), 10)) , l_29);
        }
        unsigned int result = 0;
        result += l_7.w;
        result += l_7.z;
        result += l_7.y;
        result += l_7.x;
        result += l_8.sf;
        result += l_8.se;
        result += l_8.sd;
        result += l_8.sc;
        result += l_8.sb;
        result += l_8.sa;
        result += l_8.s9;
        result += l_8.s8;
        result += l_8.s7;
        result += l_8.s6;
        result += l_8.s5;
        result += l_8.s4;
        result += l_8.s3;
        result += l_8.s2;
        result += l_8.s1;
        result += l_8.s0;
        result += l_9.sf;
        result += l_9.se;
        result += l_9.sd;
        result += l_9.sc;
        result += l_9.sb;
        result += l_9.sa;
        result += l_9.s9;
        result += l_9.s8;
        result += l_9.s7;
        result += l_9.s6;
        result += l_9.s5;
        result += l_9.s4;
        result += l_9.s3;
        result += l_9.s2;
        result += l_9.s1;
        result += l_9.s0;
        int l_10_i0, l_10_i1;
        for (l_10_i0 = 0; l_10_i0 < 9; l_10_i0++) {
            for (l_10_i1 = 0; l_10_i1 < 4; l_10_i1++) {
                result += l_10[l_10_i0][l_10_i1];
            }
        }
        result += l_11;
        result += l_12;
        result += l_13;
        result += l_14;
        result += l_15.w;
        result += l_15.z;
        result += l_15.y;
        result += l_15.x;
        result += l_16;
        result += l_17;
        result += l_18;
        result += l_19;
        result += l_20;
        result += l_21;
        atomic_add(&p_32->g_special_values[34 * get_linear_group_id() + 19], result);
    }
    else
    { /* block id: 19 */
        (1 + 1);
    }
    (*l_3) = (*p_32->g_4);
    return l_31;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[10];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 10; i++)
            l_comm_values[i] = 1;
    struct S0 c_33;
    struct S0* p_32 = &c_33;
    struct S0 c_34 = {
        (void*)0, // p_32->g_2
        6L, // p_32->g_6
        {&p_32->g_6,&p_32->g_6,&p_32->g_6,&p_32->g_6,&p_32->g_6}, // p_32->g_5
        &p_32->g_5[4], // p_32->g_4
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
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 10)), permutations[0][get_linear_local_id()])), // p_32->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
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
    transparent_crc(p_32->g_6, "p_32->g_6", print_hash_value);
    transparent_crc(p_32->v_collective, "p_32->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 34; i++)
            transparent_crc(p_32->g_special_values[i + 34 * get_linear_group_id()], "p_32->g_special_values[i + 34 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_32->l_comm_values[get_linear_local_id()], "p_32->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_32->g_comm_values[get_linear_group_id() * 10 + get_linear_local_id()], "p_32->g_comm_values[get_linear_group_id() * 10 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
