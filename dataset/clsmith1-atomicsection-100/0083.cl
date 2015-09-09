// --atomics 9 ---fake_divergence -g 94,51,1 -l 2,1,1
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


// Seed: 83

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U1 {
   int64_t  f0;
   int8_t  f1;
};

struct S2 {
    union U1 g_3;
    int32_t g_6;
    volatile uint32_t g_7;
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
int32_t  func_1(struct S2 * p_11);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_11->g_7 p_11->g_6 p_11->g_3.f0
 * writes: p_11->g_7
 */
int32_t  func_1(struct S2 * p_11)
{ /* block id: 4 */
    union U1 *l_2[8] = {&p_11->g_3,&p_11->g_3,&p_11->g_3,&p_11->g_3,&p_11->g_3,&p_11->g_3,&p_11->g_3,&p_11->g_3};
    union U1 **l_4 = &l_2[6];
    int32_t *l_5[7][7][5] = {{{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6}},{{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6}},{{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6}},{{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6}},{{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6}},{{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6}},{{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6},{&p_11->g_6,(void*)0,&p_11->g_6,&p_11->g_6,&p_11->g_6}}};
    uint64_t l_10 = 18446744073709551611UL;
    int i, j, k;
    (*l_4) = l_2[7];
    p_11->g_7++;
    l_10 = (p_11->g_6 <= 0L);
    return p_11->g_3.f0;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int ;
    struct S2 c_12;
    struct S2* p_11 = &c_12;
    struct S2 c_13 = {
        {0x37161AB6EC79CF18L}, // p_11->g_3
        8L, // p_11->g_6
        0xE35D5D90L, // p_11->g_7
        sequence_input[get_global_id(0)], // p_11->global_0_offset
        sequence_input[get_global_id(1)], // p_11->global_1_offset
        sequence_input[get_global_id(2)], // p_11->global_2_offset
        sequence_input[get_local_id(0)], // p_11->local_0_offset
        sequence_input[get_local_id(1)], // p_11->local_1_offset
        sequence_input[get_local_id(2)], // p_11->local_2_offset
        sequence_input[get_group_id(0)], // p_11->group_0_offset
        sequence_input[get_group_id(1)], // p_11->group_1_offset
        sequence_input[get_group_id(2)], // p_11->group_2_offset
    };
    c_12 = c_13;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_11);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_11->g_3.f0, "p_11->g_3.f0", print_hash_value);
    transparent_crc(p_11->g_6, "p_11->g_6", print_hash_value);
    transparent_crc(p_11->g_7, "p_11->g_7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
