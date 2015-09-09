// ---atomic_reductions ---fake_divergence -g 29,7,49 -l 29,1,7
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


// Seed: 60

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    volatile int32_t g_2[4][3][2];
    int32_t g_3;
    volatile int32_t g_6;
    volatile int32_t g_7[8][10];
    volatile int32_t g_8;
    volatile int32_t g_9[6];
    volatile int32_t g_10;
    int32_t g_11;
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
uint32_t  func_1(struct S1 * p_26);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_26->g_3 p_26->g_11 p_26->g_9
 * writes: p_26->g_3 p_26->g_11
 */
uint32_t  func_1(struct S1 * p_26)
{ /* block id: 4 */
    int16_t l_18[4];
    int32_t *l_19 = (void*)0;
    int32_t *l_20 = &p_26->g_3;
    int32_t *l_21 = (void*)0;
    int32_t *l_22[2][6] = {{&p_26->g_11,&p_26->g_11,&p_26->g_11,&p_26->g_11,&p_26->g_11,&p_26->g_11},{&p_26->g_11,&p_26->g_11,&p_26->g_11,&p_26->g_11,&p_26->g_11,&p_26->g_11}};
    uint8_t l_23 = 0xB8L;
    int i, j;
    for (i = 0; i < 4; i++)
        l_18[i] = 1L;
    for (p_26->g_3 = 0; (p_26->g_3 == (-11)); p_26->g_3 = safe_sub_func_uint16_t_u_u(p_26->g_3, 1))
    { /* block id: 7 */
        uint32_t l_16 = 9UL;
        uint32_t l_17 = 0xFEAF86F2L;
        for (p_26->g_11 = 0; (p_26->g_11 <= (-16)); --p_26->g_11)
        { /* block id: 10 */
            volatile int32_t *l_15[3];
            volatile int32_t **l_14 = &l_15[1];
            int i;
            for (i = 0; i < 3; i++)
                l_15[i] = (void*)0;
            (*l_14) = &p_26->g_8;
            if (l_16)
                break;
        }
        if (l_17)
            break;
    }
    (*l_20) |= l_18[3];
    l_23++;
    return p_26->g_9[3];
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S1 c_27;
    struct S1* p_26 = &c_27;
    struct S1 c_28 = {
        {{{(-3L),0L},{(-3L),0L},{(-3L),0L}},{{(-3L),0L},{(-3L),0L},{(-3L),0L}},{{(-3L),0L},{(-3L),0L},{(-3L),0L}},{{(-3L),0L},{(-3L),0L},{(-3L),0L}}}, // p_26->g_2
        0x3FC88EB9L, // p_26->g_3
        (-1L), // p_26->g_6
        {{0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L},{0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L},{0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L},{0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L},{0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L},{0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L},{0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L},{0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L,0x2A165420L,0L,0L}}, // p_26->g_7
        0L, // p_26->g_8
        {0x1DCEE34EL,0x1DCEE34EL,0x1DCEE34EL,0x1DCEE34EL,0x1DCEE34EL,0x1DCEE34EL}, // p_26->g_9
        (-7L), // p_26->g_10
        (-8L), // p_26->g_11
        0, // p_26->v_collective
        sequence_input[get_global_id(0)], // p_26->global_0_offset
        sequence_input[get_global_id(1)], // p_26->global_1_offset
        sequence_input[get_global_id(2)], // p_26->global_2_offset
        sequence_input[get_local_id(0)], // p_26->local_0_offset
        sequence_input[get_local_id(1)], // p_26->local_1_offset
        sequence_input[get_local_id(2)], // p_26->local_2_offset
        sequence_input[get_group_id(0)], // p_26->group_0_offset
        sequence_input[get_group_id(1)], // p_26->group_1_offset
        sequence_input[get_group_id(2)], // p_26->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_27 = c_28;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_26);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_26->g_2[i][j][k], "p_26->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_26->g_3, "p_26->g_3", print_hash_value);
    transparent_crc(p_26->g_6, "p_26->g_6", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_26->g_7[i][j], "p_26->g_7[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_26->g_8, "p_26->g_8", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_26->g_9[i], "p_26->g_9[i]", print_hash_value);

    }
    transparent_crc(p_26->g_10, "p_26->g_10", print_hash_value);
    transparent_crc(p_26->g_11, "p_26->g_11", print_hash_value);
    transparent_crc(p_26->v_collective, "p_26->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
