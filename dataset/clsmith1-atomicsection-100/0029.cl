// --atomics 72 ---fake_divergence -g 51,48,4 -l 3,8,1
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


// Seed: 29

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int8_t  f1;
   int64_t  f2;
};

struct S1 {
    uint32_t g_26[5];
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S1 * p_27);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_27->g_26
 * writes:
 */
uint32_t  func_1(struct S1 * p_27)
{ /* block id: 4 */
    int8_t l_3[5] = {6L,6L,6L,6L,6L};
    int i;
    if ((atomic_inc(&p_27->g_atomic_input[72 * get_linear_group_id() + 10]) == 0))
    { /* block id: 6 */
        uint16_t l_2 = 0x0FE1L;
        if (l_2)
        { /* block id: 7 */
            int32_t l_4 = (-8L);
            for (l_4 = 4; (l_4 >= 0); l_4 -= 1)
            { /* block id: 10 */
                int32_t *l_5 = (void*)0;
                int32_t l_7[2][9][4] = {{{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL}},{{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL},{(-1L),5L,0x193C1DE6L,0x7E44142BL}}};
                int32_t *l_6 = &l_7[1][3][2];
                int i, j, k;
                l_6 = (l_5 = (void*)0);
                for (l_7[1][3][2] = 0; (l_7[1][3][2] <= 1); l_7[1][3][2] += 1)
                { /* block id: 15 */
                    int64_t l_8 = 4L;
                    uint32_t l_9[4] = {2UL,2UL,2UL,2UL};
                    int i;
                    l_9[0] |= (l_8 = l_3[(l_7[1][3][2] + 1)]);
                    for (l_8 = 0; (l_8 <= 4); l_8 += 1)
                    { /* block id: 20 */
                        int32_t l_10 = 0x67AB6CE1L;
                        uint64_t l_11[6];
                        int32_t l_12 = 0x1C90E69CL;
                        uint8_t l_13 = 0x3CL;
                        struct S0 l_14 = {0x44184EB3L,0x0AL,0L};
                        struct S0 l_15 = {0x4E10B49FL,0x37L,0x26243A5D8D34108FL};
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_11[i] = 1UL;
                        l_13 ^= ((l_12 = (l_7[l_7[1][3][2]][(l_4 + 1)][(l_7[1][3][2] + 1)] , (l_11[5] = l_10))) , 0x1532955FL);
                        l_15 = l_14;
                    }
                }
                for (l_7[1][3][2] = 0; (l_7[1][3][2] <= 4); l_7[1][3][2] += 1)
                { /* block id: 29 */
                    int8_t l_16 = (-2L);
                    uint32_t l_17 = 4294967295UL;
                    int32_t **l_20 = (void*)0;
                    int32_t l_23[4];
                    int32_t *l_22 = &l_23[1];
                    int32_t **l_21[3][3][2];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_23[i] = 0x4628AEA3L;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 3; j++)
                        {
                            for (k = 0; k < 2; k++)
                                l_21[i][j][k] = &l_22;
                        }
                    }
                    l_17++;
                    l_6 = (void*)0;
                    l_21[0][2][1] = (l_20 = l_20);
                }
            }
        }
        else
        { /* block id: 36 */
            int32_t l_24 = 1L;
            int32_t l_25 = (-1L);
            l_25 ^= l_24;
        }
        unsigned int result = 0;
        result += l_2;
        atomic_add(&p_27->g_special_values[72 * get_linear_group_id() + 10], result);
    }
    else
    { /* block id: 39 */
        (1 + 1);
    }
    return p_27->g_26[0];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i;
    struct S1 c_28;
    struct S1* p_27 = &c_28;
    struct S1 c_29 = {
        {8UL,8UL,8UL,8UL,8UL}, // p_27->g_26
        sequence_input[get_global_id(0)], // p_27->global_0_offset
        sequence_input[get_global_id(1)], // p_27->global_1_offset
        sequence_input[get_global_id(2)], // p_27->global_2_offset
        sequence_input[get_local_id(0)], // p_27->local_0_offset
        sequence_input[get_local_id(1)], // p_27->local_1_offset
        sequence_input[get_local_id(2)], // p_27->local_2_offset
        sequence_input[get_group_id(0)], // p_27->group_0_offset
        sequence_input[get_group_id(1)], // p_27->group_1_offset
        sequence_input[get_group_id(2)], // p_27->group_2_offset
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_28 = c_29;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_27);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_27->g_26[i], "p_27->g_26[i]", print_hash_value);

    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 72; i++)
            transparent_crc(p_27->g_special_values[i + 72 * get_linear_group_id()], "p_27->g_special_values[i + 72 * get_linear_group_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
