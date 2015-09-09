// --atomics 72 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 51,48,4 -l 3,8,1
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

__constant uint32_t permutations[10][24] = {
{17,0,23,19,5,7,16,13,12,4,6,3,22,18,9,14,10,1,15,21,2,8,11,20}, // permutation 0
{22,19,18,21,3,6,9,23,7,11,2,4,0,10,14,5,15,13,8,12,20,1,17,16}, // permutation 1
{11,10,18,4,7,12,14,17,3,22,13,16,8,5,23,19,15,2,0,1,6,20,9,21}, // permutation 2
{2,9,11,5,22,16,19,18,14,0,21,12,6,23,1,10,17,7,13,4,15,8,20,3}, // permutation 3
{21,19,18,10,20,3,4,22,16,11,5,15,13,17,2,7,12,0,9,23,14,1,8,6}, // permutation 4
{9,4,2,1,5,13,15,0,11,3,8,17,18,7,16,19,14,20,21,10,22,23,12,6}, // permutation 5
{9,21,2,11,6,14,17,20,15,1,0,10,12,18,7,4,23,13,19,16,5,22,8,3}, // permutation 6
{1,8,21,11,6,0,15,23,12,2,4,10,22,14,13,5,17,9,16,3,20,19,7,18}, // permutation 7
{13,17,10,6,5,19,8,21,14,4,9,20,2,7,23,3,1,18,15,16,11,12,0,22}, // permutation 8
{14,13,12,7,16,23,9,17,2,11,0,3,10,15,6,21,18,1,8,22,4,19,5,20} // permutation 9
};

// Seed: 29

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int8_t  f1;
   int64_t  f2;
};

struct S1 {
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
uint32_t  func_1(struct S1 * p_49);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_1(struct S1 * p_49)
{ /* block id: 4 */
    uint32_t l_48 = 4294967289UL;
    if ((atomic_inc(&p_49->g_atomic_input[72 * get_linear_group_id() + 10]) == 0))
    { /* block id: 6 */
        uint16_t l_2 = 0x0FE1L;
        if (l_2)
        { /* block id: 7 */
            int8_t l_3 = 0x63L;
            int8_t l_4 = (-8L);
            l_4 &= l_3;
        }
        else
        { /* block id: 9 */
            int32_t l_5 = 0x44279C41L;
            int64_t l_34 = 1L;
            for (l_5 = (-21); (l_5 <= 28); ++l_5)
            { /* block id: 12 */
                int32_t l_8 = 0L;
                uint8_t l_29 = 255UL;
                int32_t *l_32 = (void*)0;
                int32_t *l_33 = &l_8;
                if (l_8)
                { /* block id: 13 */
                    struct S0 l_9 = {-3L,0x3DL,0L};
                    struct S0 l_10 = {-8L,0x66L,0x39C7C6F1FDBD0176L};
                    int32_t *l_11 = &l_10.f0;
                    int32_t *l_12[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_12[i] = &l_9.f0;
                    l_10 = l_9;
                    l_12[1] = l_11;
                }
                else
                { /* block id: 16 */
                    int32_t l_13 = 1L;
                    int64_t l_18 = 1L;
                    int32_t *l_19 = (void*)0;
                    int32_t *l_20 = &l_13;
                    int32_t l_21 = 0x3A5E0B2FL;
                    int8_t l_22 = 0L;
                    int8_t l_23 = 0x1CL;
                    int8_t l_24 = 1L;
                    int64_t l_25 = 0x17CD9532955F1BB1L;
                    uint8_t l_26 = 0x3CL;
                    for (l_13 = 0; (l_13 == 5); ++l_13)
                    { /* block id: 19 */
                        int16_t l_16 = 0x60CDL;
                        int8_t l_17 = 0x35L;
                        l_17 ^= (l_8 = l_16);
                    }
                    l_20 = ((GROUP_DIVERGE(1, 1) , l_18) , l_19);
                    --l_26;
                }
                l_29++;
                l_33 = (l_32 = (void*)0);
            }
            if (l_34)
            { /* block id: 30 */
                uint32_t l_35 = 0UL;
                int32_t l_36 = 0L;
                int32_t l_37 = (-8L);
                int32_t *l_38[5];
                int32_t *l_39 = &l_37;
                int32_t **l_40 = (void*)0;
                int32_t **l_41[5][6];
                uint32_t l_42 = 1UL;
                uint64_t l_43 = 0x74D2AD05B3B6AC89L;
                uint32_t l_44 = 4294967293UL;
                int64_t l_45 = 1L;
                int i, j;
                for (i = 0; i < 5; i++)
                    l_38[i] = &l_37;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 6; j++)
                        l_41[i][j] = &l_38[0];
                }
                l_5 = (((l_35 , l_36) , 0x37D660F181E21435L) , l_37);
                l_39 = l_38[0];
                l_41[1][2] = (l_40 = l_40);
                l_45 = (l_44 = (l_43 = (l_42 , (l_5 = 0x5CCEB8A0L))));
            }
            else
            { /* block id: 39 */
                int32_t l_47 = (-10L);
                int32_t *l_46 = &l_47;
                l_46 = (void*)0;
            }
        }
        unsigned int result = 0;
        result += l_2;
        atomic_add(&p_49->g_special_values[72 * get_linear_group_id() + 10], result);
    }
    else
    { /* block id: 43 */
        (1 + 1);
    }
    return l_48;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[24];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 24; i++)
            l_comm_values[i] = 1;
    struct S1 c_50;
    struct S1* p_49 = &c_50;
    struct S1 c_51 = {
        0, // p_49->v_collective
        sequence_input[get_global_id(0)], // p_49->global_0_offset
        sequence_input[get_global_id(1)], // p_49->global_1_offset
        sequence_input[get_global_id(2)], // p_49->global_2_offset
        sequence_input[get_local_id(0)], // p_49->local_0_offset
        sequence_input[get_local_id(1)], // p_49->local_1_offset
        sequence_input[get_local_id(2)], // p_49->local_2_offset
        sequence_input[get_group_id(0)], // p_49->group_0_offset
        sequence_input[get_group_id(1)], // p_49->group_1_offset
        sequence_input[get_group_id(2)], // p_49->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 24)), permutations[0][get_linear_local_id()])), // p_49->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_50 = c_51;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_49);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_49->v_collective, "p_49->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 72; i++)
            transparent_crc(p_49->g_special_values[i + 72 * get_linear_group_id()], "p_49->g_special_values[i + 72 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_49->l_comm_values[get_linear_local_id()], "p_49->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_49->g_comm_values[get_linear_group_id() * 24 + get_linear_local_id()], "p_49->g_comm_values[get_linear_group_id() * 24 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
