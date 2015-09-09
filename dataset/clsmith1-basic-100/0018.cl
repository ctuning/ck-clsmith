// ---fake_divergence -g 28,26,2 -l 4,26,2
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


// Seed: 18

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U2 {
   volatile int64_t  f0;
};

struct S3 {
    volatile int8_t g_11;
    volatile int8_t * volatile g_10;
    int8_t g_15[1][9][7];
    int8_t *g_14;
    uint32_t g_18;
    int32_t g_26;
    int32_t g_29;
    uint64_t g_30[9];
    union U2 g_31[7][8][3];
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
union U2  func_1(struct S3 * p_32);
int8_t  func_6(int8_t * p_7, int8_t  p_8, struct S3 * p_32);
uint8_t  func_21(uint32_t  p_22, int64_t  p_23, struct S3 * p_32);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_32->g_10 p_32->g_14 p_32->g_15 p_32->g_18 p_32->g_30 p_32->g_31
 * writes: p_32->g_18 p_32->g_26 p_32->g_29 p_32->g_15 p_32->g_30
 */
union U2  func_1(struct S3 * p_32)
{ /* block id: 4 */
    int8_t *l_9 = (void*)0;
    int8_t *l_13 = (void*)0;
    int8_t **l_12 = &l_13;
    uint32_t *l_16 = (void*)0;
    uint32_t *l_17 = &p_32->g_18;
    int32_t l_24 = (-8L);
    uint8_t *l_28 = (void*)0;
    p_32->g_30[3] &= (safe_mul_func_int8_t_s_s(((*p_32->g_14) = (safe_lshift_func_uint16_t_u_s(2UL, (func_6(l_9, ((p_32->g_10 != (((*l_17) |= ((((*l_12) = l_9) == p_32->g_14) | p_32->g_15[0][1][6])) , &p_32->g_15[0][3][3])) & (safe_rshift_func_uint8_t_u_u(p_32->g_15[0][7][3], ((p_32->g_29 = (func_21(p_32->g_15[0][7][3], l_24, p_32) == p_32->g_15[0][7][3])) && l_24)))), p_32) & p_32->g_15[0][7][3])))), l_24));
    return p_32->g_31[4][7][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_32->g_14 p_32->g_15
 * writes:
 */
int8_t  func_6(int8_t * p_7, int8_t  p_8, struct S3 * p_32)
{ /* block id: 11 */
    return (*p_32->g_14);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_32->g_26
 */
uint8_t  func_21(uint32_t  p_22, int64_t  p_23, struct S3 * p_32)
{ /* block id: 7 */
    int32_t *l_25 = &p_32->g_26;
    int16_t l_27 = 1L;
    (*l_25) = (&p_32->g_15[0][7][3] != (void*)0);
    return l_27;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_33;
    struct S3* p_32 = &c_33;
    struct S3 c_34 = {
        (-1L), // p_32->g_11
        &p_32->g_11, // p_32->g_10
        {{{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L}}}, // p_32->g_15
        &p_32->g_15[0][7][3], // p_32->g_14
        0x92F1E5C8L, // p_32->g_18
        (-1L), // p_32->g_26
        0x04365721L, // p_32->g_29
        {0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL}, // p_32->g_30
        {{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}}}, // p_32->g_31
        sequence_input[get_global_id(0)], // p_32->global_0_offset
        sequence_input[get_global_id(1)], // p_32->global_1_offset
        sequence_input[get_global_id(2)], // p_32->global_2_offset
        sequence_input[get_local_id(0)], // p_32->local_0_offset
        sequence_input[get_local_id(1)], // p_32->local_1_offset
        sequence_input[get_local_id(2)], // p_32->local_2_offset
        sequence_input[get_group_id(0)], // p_32->group_0_offset
        sequence_input[get_group_id(1)], // p_32->group_1_offset
        sequence_input[get_group_id(2)], // p_32->group_2_offset
    };
    c_33 = c_34;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_32);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_32->g_11, "p_32->g_11", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_32->g_15[i][j][k], "p_32->g_15[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_32->g_18, "p_32->g_18", print_hash_value);
    transparent_crc(p_32->g_26, "p_32->g_26", print_hash_value);
    transparent_crc(p_32->g_29, "p_32->g_29", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_32->g_30[i], "p_32->g_30[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_32->g_31[i][j][k].f0, "p_32->g_31[i][j][k].f0", print_hash_value);

            }
        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
