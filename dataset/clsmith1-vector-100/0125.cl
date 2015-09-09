// ---fake_divergence -g 95,80,1 -l 5,40,1
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


// Seed: 125

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S5 {
    int8_t g_9;
    int8_t *g_8;
    int8_t **g_7[1][1][9];
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
uint16_t  func_1(struct S5 * p_18);
int8_t ** func_2(uint8_t  p_3, int8_t ** p_4, int64_t  p_5, struct S5 * p_18);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_18->g_7 p_18->g_9
 * writes: p_18->g_9 p_18->g_7
 */
uint16_t  func_1(struct S5 * p_18)
{ /* block id: 4 */
    uint32_t l_6[7];
    int8_t ***l_17 = &p_18->g_7[0][0][4];
    int i;
    for (i = 0; i < 7; i++)
        l_6[i] = 0x6F1860ECL;
    (*l_17) = func_2(l_6[6], p_18->g_7[0][0][4], p_18->g_9, p_18);
    return l_6[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_18->g_9
 * writes: p_18->g_9
 */
int8_t ** func_2(uint8_t  p_3, int8_t ** p_4, int64_t  p_5, struct S5 * p_18)
{ /* block id: 5 */
    int8_t **l_16 = &p_18->g_8;
    for (p_18->g_9 = 0; (p_18->g_9 <= 18); p_18->g_9++)
    { /* block id: 8 */
        uint32_t l_12 = 0xBD0176DFL;
        int8_t **l_15[6][2] = {{&p_18->g_8,&p_18->g_8},{&p_18->g_8,&p_18->g_8},{&p_18->g_8,&p_18->g_8},{&p_18->g_8,&p_18->g_8},{&p_18->g_8,&p_18->g_8},{&p_18->g_8,&p_18->g_8}};
        int i, j;
        l_12--;
        return l_15[5][0];
    }
    p_4 = p_4;
    return l_16;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S5 c_19;
    struct S5* p_18 = &c_19;
    struct S5 c_20 = {
        0x35L, // p_18->g_9
        &p_18->g_9, // p_18->g_8
        {{{&p_18->g_8,&p_18->g_8,&p_18->g_8,&p_18->g_8,&p_18->g_8,&p_18->g_8,&p_18->g_8,&p_18->g_8,&p_18->g_8}}}, // p_18->g_7
        sequence_input[get_global_id(0)], // p_18->global_0_offset
        sequence_input[get_global_id(1)], // p_18->global_1_offset
        sequence_input[get_global_id(2)], // p_18->global_2_offset
        sequence_input[get_local_id(0)], // p_18->local_0_offset
        sequence_input[get_local_id(1)], // p_18->local_1_offset
        sequence_input[get_local_id(2)], // p_18->local_2_offset
        sequence_input[get_group_id(0)], // p_18->group_0_offset
        sequence_input[get_group_id(1)], // p_18->group_1_offset
        sequence_input[get_group_id(2)], // p_18->group_2_offset
    };
    c_19 = c_20;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_18);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_18->g_9, "p_18->g_9", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
