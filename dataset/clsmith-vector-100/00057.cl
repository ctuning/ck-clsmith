// ---fake_divergence -g 2329,2,2 -l 17,1,1
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


// Seed: 57

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   uint32_t  f1;
   uint32_t  f2;
   uint64_t  f3;
};

struct S1 {
   uint32_t  f0;
   volatile int32_t  f1;
   volatile int32_t  f2;
   volatile struct S0  f3;
   int32_t  f4;
   int64_t  f5;
};

struct S2 {
    int32_t g_3;
    int32_t *g_2;
    int32_t *g_5;
    struct S1 g_6;
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
struct S1  func_1(struct S2 * p_7);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_7->g_2 p_7->g_6
 * writes: p_7->g_2 p_7->g_5
 */
struct S1  func_1(struct S2 * p_7)
{ /* block id: 4 */
    int32_t **l_4 = &p_7->g_2;
    p_7->g_5 = ((*l_4) = p_7->g_2);
    return p_7->g_6;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int ;
    struct S2 c_8;
    struct S2* p_7 = &c_8;
    struct S2 c_9 = {
        1L, // p_7->g_3
        &p_7->g_3, // p_7->g_2
        &p_7->g_3, // p_7->g_5
        {0UL,0x3CCD2466L,0x1F08664AL,{0x1600D549L,0xE623B470L,0xBA87A5EAL,0xB5D1CB6A7F4EA14CL},0x530C4E2BL,0x5F40E13F5E3D1AA1L}, // p_7->g_6
        sequence_input[get_global_id(0)], // p_7->global_0_offset
        sequence_input[get_global_id(1)], // p_7->global_1_offset
        sequence_input[get_global_id(2)], // p_7->global_2_offset
        sequence_input[get_local_id(0)], // p_7->local_0_offset
        sequence_input[get_local_id(1)], // p_7->local_1_offset
        sequence_input[get_local_id(2)], // p_7->local_2_offset
        sequence_input[get_group_id(0)], // p_7->group_0_offset
        sequence_input[get_group_id(1)], // p_7->group_1_offset
        sequence_input[get_group_id(2)], // p_7->group_2_offset
    };
    c_8 = c_9;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_7);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_7->g_3, "p_7->g_3", print_hash_value);
    transparent_crc(p_7->g_6.f0, "p_7->g_6.f0", print_hash_value);
    transparent_crc(p_7->g_6.f1, "p_7->g_6.f1", print_hash_value);
    transparent_crc(p_7->g_6.f2, "p_7->g_6.f2", print_hash_value);
    transparent_crc(p_7->g_6.f3.f0, "p_7->g_6.f3.f0", print_hash_value);
    transparent_crc(p_7->g_6.f3.f1, "p_7->g_6.f3.f1", print_hash_value);
    transparent_crc(p_7->g_6.f3.f2, "p_7->g_6.f3.f2", print_hash_value);
    transparent_crc(p_7->g_6.f3.f3, "p_7->g_6.f3.f3", print_hash_value);
    transparent_crc(p_7->g_6.f4, "p_7->g_6.f4", print_hash_value);
    transparent_crc(p_7->g_6.f5, "p_7->g_6.f5", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
