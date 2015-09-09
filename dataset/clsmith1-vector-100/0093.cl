// ---fake_divergence -g 47,20,8 -l 1,10,4
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


// Seed: 93

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    volatile int32_t g_2;
    volatile int32_t g_3[3][8][2];
    int32_t g_4;
    volatile int32_t g_7;
    int32_t g_8;
    int32_t g_12;
    uint32_t g_19;
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
uint8_t  func_1(struct S1 * p_22);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_22->g_4 p_22->g_8 p_22->g_19 p_22->g_2
 * writes: p_22->g_4 p_22->g_8 p_22->g_19
 */
uint8_t  func_1(struct S1 * p_22)
{ /* block id: 4 */
    int8_t l_15 = (-8L);
    VECTOR(int32_t, 2) l_18 = (VECTOR(int32_t, 2))((-9L), 0x37C50821L);
    int i;
    for (p_22->g_4 = 0; (p_22->g_4 >= (-23)); p_22->g_4--)
    { /* block id: 7 */
        int32_t l_16 = (-1L);
        int32_t l_17[7][10] = {{0x1097D93CL,0x6341F56AL,8L,9L,0x7181E214L,9L,8L,0x6341F56AL,0x1097D93CL,0x2D11E758L},{0x1097D93CL,0x6341F56AL,8L,9L,0x7181E214L,9L,8L,0x6341F56AL,0x1097D93CL,0x2D11E758L},{0x1097D93CL,0x6341F56AL,8L,9L,0x7181E214L,9L,8L,0x6341F56AL,0x1097D93CL,0x2D11E758L},{0x1097D93CL,0x6341F56AL,8L,9L,0x7181E214L,9L,8L,0x6341F56AL,0x1097D93CL,0x2D11E758L},{0x1097D93CL,0x6341F56AL,8L,9L,0x7181E214L,9L,8L,0x6341F56AL,0x1097D93CL,0x2D11E758L},{0x1097D93CL,0x6341F56AL,8L,9L,0x7181E214L,9L,8L,0x6341F56AL,0x1097D93CL,0x2D11E758L},{0x1097D93CL,0x6341F56AL,8L,9L,0x7181E214L,9L,8L,0x6341F56AL,0x1097D93CL,0x2D11E758L}};
        int i, j;
        for (p_22->g_8 = 0; (p_22->g_8 <= 13); p_22->g_8 = safe_add_func_int32_t_s_s(p_22->g_8, 3))
        { /* block id: 10 */
            int32_t *l_11 = &p_22->g_12;
            int32_t *l_13 = &p_22->g_12;
            int32_t *l_14[2][6][1] = {{{&p_22->g_4},{&p_22->g_4},{&p_22->g_4},{&p_22->g_4},{&p_22->g_4},{&p_22->g_4}},{{&p_22->g_4},{&p_22->g_4},{&p_22->g_4},{&p_22->g_4},{&p_22->g_4},{&p_22->g_4}}};
            int i, j, k;
            ++p_22->g_19;
            if (l_16)
                break;
            return p_22->g_2;
        }
    }
    return p_22->g_19;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_23;
    struct S1* p_22 = &c_23;
    struct S1 c_24 = {
        0x7BC75286L, // p_22->g_2
        {{{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L}},{{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L}},{{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L},{2L,2L}}}, // p_22->g_3
        0x0EC01E6EL, // p_22->g_4
        0L, // p_22->g_7
        (-1L), // p_22->g_8
        0x1FDBD017L, // p_22->g_12
        0x380B773BL, // p_22->g_19
        sequence_input[get_global_id(0)], // p_22->global_0_offset
        sequence_input[get_global_id(1)], // p_22->global_1_offset
        sequence_input[get_global_id(2)], // p_22->global_2_offset
        sequence_input[get_local_id(0)], // p_22->local_0_offset
        sequence_input[get_local_id(1)], // p_22->local_1_offset
        sequence_input[get_local_id(2)], // p_22->local_2_offset
        sequence_input[get_group_id(0)], // p_22->group_0_offset
        sequence_input[get_group_id(1)], // p_22->group_1_offset
        sequence_input[get_group_id(2)], // p_22->group_2_offset
    };
    c_23 = c_24;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_22);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_22->g_2, "p_22->g_2", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_22->g_3[i][j][k], "p_22->g_3[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_22->g_4, "p_22->g_4", print_hash_value);
    transparent_crc(p_22->g_7, "p_22->g_7", print_hash_value);
    transparent_crc(p_22->g_8, "p_22->g_8", print_hash_value);
    transparent_crc(p_22->g_12, "p_22->g_12", print_hash_value);
    transparent_crc(p_22->g_19, "p_22->g_19", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
