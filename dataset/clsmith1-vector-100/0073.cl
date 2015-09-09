// ---fake_divergence -g 41,82,2 -l 1,41,2
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


// Seed: 73

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S6 {
    int32_t g_3[6];
    int32_t *g_14[7][3][10];
    int32_t ** volatile g_13;
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
uint64_t  func_1(struct S6 * p_15);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_15->g_13 p_15->g_3
 * writes: p_15->g_14
 */
uint64_t  func_1(struct S6 * p_15)
{ /* block id: 4 */
    int32_t *l_2 = &p_15->g_3[4];
    int32_t *l_4 = &p_15->g_3[4];
    int32_t *l_5 = &p_15->g_3[2];
    int32_t l_6[4][3] = {{0x3061ECE3L,0x3061ECE3L,0x3061ECE3L},{0x3061ECE3L,0x3061ECE3L,0x3061ECE3L},{0x3061ECE3L,0x3061ECE3L,0x3061ECE3L},{0x3061ECE3L,0x3061ECE3L,0x3061ECE3L}};
    int32_t *l_7 = &p_15->g_3[4];
    int32_t *l_8 = &l_6[1][1];
    int32_t *l_9[3];
    uint32_t l_10 = 4294967295UL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_9[i] = &p_15->g_3[4];
    l_10--;
    (*p_15->g_13) = &l_6[1][2];
    return p_15->g_3[4];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S6 c_16;
    struct S6* p_15 = &c_16;
    struct S6 c_17 = {
        {0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L}, // p_15->g_3
        {{{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]}},{{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]}},{{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]}},{{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]}},{{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]}},{{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]}},{{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]},{(void*)0,(void*)0,(void*)0,&p_15->g_3[1],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[4],&p_15->g_3[2],&p_15->g_3[4],&p_15->g_3[4]}}}, // p_15->g_14
        &p_15->g_14[4][2][7], // p_15->g_13
        sequence_input[get_global_id(0)], // p_15->global_0_offset
        sequence_input[get_global_id(1)], // p_15->global_1_offset
        sequence_input[get_global_id(2)], // p_15->global_2_offset
        sequence_input[get_local_id(0)], // p_15->local_0_offset
        sequence_input[get_local_id(1)], // p_15->local_1_offset
        sequence_input[get_local_id(2)], // p_15->local_2_offset
        sequence_input[get_group_id(0)], // p_15->group_0_offset
        sequence_input[get_group_id(1)], // p_15->group_1_offset
        sequence_input[get_group_id(2)], // p_15->group_2_offset
    };
    c_16 = c_17;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_15);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_15->g_3[i], "p_15->g_3[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
