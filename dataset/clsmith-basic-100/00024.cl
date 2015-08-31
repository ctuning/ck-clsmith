// ---fake_divergence -g 67,5,10 -l 1,1,1
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


// Seed: 24

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3[9][4];
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
uint32_t  func_1(struct S0 * p_19);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_19->g_3
 * writes:
 */
uint32_t  func_1(struct S0 * p_19)
{ /* block id: 4 */
    int32_t *l_2 = &p_19->g_3[3][1];
    int32_t *l_4 = &p_19->g_3[1][1];
    int32_t l_5[3];
    int32_t *l_6 = &p_19->g_3[6][0];
    int32_t *l_7 = &p_19->g_3[3][1];
    int32_t *l_8 = &l_5[2];
    int32_t *l_9 = &l_5[0];
    int32_t *l_10 = &l_5[2];
    int32_t *l_11 = &p_19->g_3[8][0];
    int32_t *l_12 = &l_5[0];
    int32_t *l_13 = &l_5[2];
    int32_t *l_14[6][4] = {{&p_19->g_3[2][3],&l_5[2],&l_5[2],&p_19->g_3[2][3]},{&p_19->g_3[2][3],&l_5[2],&l_5[2],&p_19->g_3[2][3]},{&p_19->g_3[2][3],&l_5[2],&l_5[2],&p_19->g_3[2][3]},{&p_19->g_3[2][3],&l_5[2],&l_5[2],&p_19->g_3[2][3]},{&p_19->g_3[2][3],&l_5[2],&l_5[2],&p_19->g_3[2][3]},{&p_19->g_3[2][3],&l_5[2],&l_5[2],&p_19->g_3[2][3]}};
    uint32_t l_15 = 7UL;
    int32_t **l_18 = &l_6;
    int i, j;
    for (i = 0; i < 3; i++)
        l_5[i] = 0x3BA20B95L;
    ++l_15;
    (*l_18) = &l_5[2];
    return (*l_7);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S0 c_20;
    struct S0* p_19 = &c_20;
    struct S0 c_21 = {
        {{0x7A5C62E0L,0x7A5C62E0L,0x3666A756L,0x398070ADL},{0x7A5C62E0L,0x7A5C62E0L,0x3666A756L,0x398070ADL},{0x7A5C62E0L,0x7A5C62E0L,0x3666A756L,0x398070ADL},{0x7A5C62E0L,0x7A5C62E0L,0x3666A756L,0x398070ADL},{0x7A5C62E0L,0x7A5C62E0L,0x3666A756L,0x398070ADL},{0x7A5C62E0L,0x7A5C62E0L,0x3666A756L,0x398070ADL},{0x7A5C62E0L,0x7A5C62E0L,0x3666A756L,0x398070ADL},{0x7A5C62E0L,0x7A5C62E0L,0x3666A756L,0x398070ADL},{0x7A5C62E0L,0x7A5C62E0L,0x3666A756L,0x398070ADL}}, // p_19->g_3
        sequence_input[get_global_id(0)], // p_19->global_0_offset
        sequence_input[get_global_id(1)], // p_19->global_1_offset
        sequence_input[get_global_id(2)], // p_19->global_2_offset
        sequence_input[get_local_id(0)], // p_19->local_0_offset
        sequence_input[get_local_id(1)], // p_19->local_1_offset
        sequence_input[get_local_id(2)], // p_19->local_2_offset
        sequence_input[get_group_id(0)], // p_19->group_0_offset
        sequence_input[get_group_id(1)], // p_19->group_1_offset
        sequence_input[get_group_id(2)], // p_19->group_2_offset
    };
    c_20 = c_21;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_19);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_19->g_3[i][j], "p_19->g_3[i][j]", print_hash_value);

        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
