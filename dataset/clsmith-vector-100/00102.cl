// ---fake_divergence -g 1,9,153 -l 1,3,51
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


// Seed: 102

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   volatile uint32_t  f1;
   int64_t  f2;
   volatile uint64_t  f3;
   int64_t  f4;
};

struct S2 {
    struct S0 g_2;
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
uint16_t  func_1(struct S2 * p_4);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_4->g_2
 * writes: p_4->g_2
 */
uint16_t  func_1(struct S2 * p_4)
{ /* block id: 4 */
    struct S0 *l_3[1];
    int i;
    for (i = 0; i < 1; i++)
        l_3[i] = &p_4->g_2;
    p_4->g_2 = p_4->g_2;
    return p_4->g_2.f4;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int ;
    struct S2 c_5;
    struct S2* p_4 = &c_5;
    struct S2 c_6 = {
        {0x173BF38CL,4294967294UL,0x2FA4AD744D0289A6L,0x5768819570A50B5FL,0x3101AAE4B9A733E3L}, // p_4->g_2
        sequence_input[get_global_id(0)], // p_4->global_0_offset
        sequence_input[get_global_id(1)], // p_4->global_1_offset
        sequence_input[get_global_id(2)], // p_4->global_2_offset
        sequence_input[get_local_id(0)], // p_4->local_0_offset
        sequence_input[get_local_id(1)], // p_4->local_1_offset
        sequence_input[get_local_id(2)], // p_4->local_2_offset
        sequence_input[get_group_id(0)], // p_4->group_0_offset
        sequence_input[get_group_id(1)], // p_4->group_1_offset
        sequence_input[get_group_id(2)], // p_4->group_2_offset
    };
    c_5 = c_6;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_4);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_4->g_2.f0, "p_4->g_2.f0", print_hash_value);
    transparent_crc(p_4->g_2.f1, "p_4->g_2.f1", print_hash_value);
    transparent_crc(p_4->g_2.f2, "p_4->g_2.f2", print_hash_value);
    transparent_crc(p_4->g_2.f3, "p_4->g_2.f3", print_hash_value);
    transparent_crc(p_4->g_2.f4, "p_4->g_2.f4", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
