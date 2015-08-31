// ---fake_divergence -g 66,1,17 -l 22,1,1
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


// Seed: 77

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile uint64_t g_2;
    uint64_t g_3;
    int32_t g_9;
    int32_t * volatile g_8;
    volatile VECTOR(uint16_t, 2) g_14;
    uint32_t g_17;
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
int32_t  func_1(struct S0 * p_18);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_18->g_2 p_18->g_3 p_18->g_8 p_18->g_9 p_18->g_14 p_18->g_17
 * writes: p_18->g_3 p_18->g_9 p_18->g_14 p_18->g_17
 */
int32_t  func_1(struct S0 * p_18)
{ /* block id: 4 */
    int8_t l_4 = 0x16L;
    if (p_18->g_2)
    { /* block id: 5 */
        l_4 = (p_18->g_2 >= p_18->g_3);
        for (p_18->g_3 = 17; (p_18->g_3 == 6); --p_18->g_3)
        { /* block id: 9 */
            uint32_t l_7 = 7UL;
            (*p_18->g_8) |= l_7;
        }
    }
    else
    { /* block id: 12 */
        int32_t *l_10 = &p_18->g_9;
        int32_t l_11 = 0x64896E6AL;
        int32_t *l_12 = &p_18->g_9;
        int32_t *l_13[6] = {&p_18->g_9,&p_18->g_9,&p_18->g_9,&p_18->g_9,&p_18->g_9,&p_18->g_9};
        int i;
        ++p_18->g_14.y;
        p_18->g_17 &= (*p_18->g_8);
    }
    return (*p_18->g_8);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S0 c_19;
    struct S0* p_18 = &c_19;
    struct S0 c_20 = {
        1UL, // p_18->g_2
        0xA1E948708EF6B8F3L, // p_18->g_3
        4L, // p_18->g_9
        &p_18->g_9, // p_18->g_8
        (VECTOR(uint16_t, 2))(65534UL, 0x5612L), // p_18->g_14
        0x878ED7C3L, // p_18->g_17
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
    transparent_crc(p_18->g_2, "p_18->g_2", print_hash_value);
    transparent_crc(p_18->g_3, "p_18->g_3", print_hash_value);
    transparent_crc(p_18->g_9, "p_18->g_9", print_hash_value);
    transparent_crc(p_18->g_14.x, "p_18->g_14.x", print_hash_value);
    transparent_crc(p_18->g_14.y, "p_18->g_14.y", print_hash_value);
    transparent_crc(p_18->g_17, "p_18->g_17", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
