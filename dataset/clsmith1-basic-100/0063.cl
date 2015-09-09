// ---fake_divergence -g 40,13,8 -l 1,1,2
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


// Seed: 63

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    volatile int32_t g_2;
    int64_t g_8;
    uint32_t g_12;
    int16_t g_21;
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
int64_t  func_1(struct S1 * p_25);
uint8_t  func_3(uint32_t  p_4, int64_t  p_5, uint64_t  p_6, uint64_t  p_7, struct S1 * p_25);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_25->g_2 p_25->g_8 p_25->g_12 p_25->g_21
 * writes: p_25->g_12
 */
int64_t  func_1(struct S1 * p_25)
{ /* block id: 4 */
    uint32_t *l_11 = &p_25->g_12;
    int32_t l_19 = (-2L);
    int16_t *l_20[2];
    uint32_t l_22 = 0UL;
    int32_t *l_24 = &l_19;
    int i;
    for (i = 0; i < 2; i++)
        l_20[i] = &p_25->g_21;
    (*l_24) = (p_25->g_2 < ((func_3(p_25->g_8, ((safe_sub_func_uint32_t_u_u(((*l_11)--), ((p_25->g_8 , (p_25->g_8 & ((p_25->g_8 < p_25->g_8) , (safe_mod_func_int16_t_s_s((l_19 = (((p_25->g_8 , 4294967292UL) , (((safe_div_func_uint8_t_u_u(p_25->g_8, l_19)) && l_19) ^ 0x2E75507304677319L)) , l_19)), 65535UL))))) && p_25->g_21))) , p_25->g_8), l_22, l_22, p_25) >= p_25->g_21) | p_25->g_21));
    return p_25->g_8;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_3(uint32_t  p_4, int64_t  p_5, uint64_t  p_6, uint64_t  p_7, struct S1 * p_25)
{ /* block id: 7 */
    uint32_t l_23[8][8] = {{0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L},{0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L},{0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L},{0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L},{0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L},{0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L},{0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L},{0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L,0x095D7C15L}};
    int i, j;
    return l_23[1][3];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int ;
    struct S1 c_26;
    struct S1* p_25 = &c_26;
    struct S1 c_27 = {
        0x7402E31DL, // p_25->g_2
        2L, // p_25->g_8
        0xF7E7308FL, // p_25->g_12
        0x5EC4L, // p_25->g_21
        sequence_input[get_global_id(0)], // p_25->global_0_offset
        sequence_input[get_global_id(1)], // p_25->global_1_offset
        sequence_input[get_global_id(2)], // p_25->global_2_offset
        sequence_input[get_local_id(0)], // p_25->local_0_offset
        sequence_input[get_local_id(1)], // p_25->local_1_offset
        sequence_input[get_local_id(2)], // p_25->local_2_offset
        sequence_input[get_group_id(0)], // p_25->group_0_offset
        sequence_input[get_group_id(1)], // p_25->group_1_offset
        sequence_input[get_group_id(2)], // p_25->group_2_offset
    };
    c_26 = c_27;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_25);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_25->g_2, "p_25->g_2", print_hash_value);
    transparent_crc(p_25->g_8, "p_25->g_8", print_hash_value);
    transparent_crc(p_25->g_12, "p_25->g_12", print_hash_value);
    transparent_crc(p_25->g_21, "p_25->g_21", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
