// --atomics 46 ---fake_divergence -g 86,52,2 -l 1,13,2
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


// Seed: 6

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
   uint32_t  f1;
   int32_t  f2;
   uint32_t  f3;
   int32_t  f4;
   int64_t  f5;
};

struct S3 {
    int8_t g_8;
    int8_t *g_27;
    int32_t g_29;
    int32_t * volatile g_28[3];
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
int64_t  func_1(struct S3 * p_34);
int8_t * func_9(int8_t * p_10, int32_t  p_11, int32_t  p_12, int32_t  p_13, struct S3 * p_34);
uint64_t  func_14(int8_t * p_15, int32_t  p_16, int8_t * p_17, int8_t * p_18, struct S3 * p_34);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_34->g_8
 * writes: p_34->g_27
 */
int64_t  func_1(struct S3 * p_34)
{ /* block id: 4 */
    uint16_t l_2 = 0x6957L;
    int8_t *l_7 = &p_34->g_8;
    int32_t *l_30 = (void*)0;
    int32_t *l_31[8][7] = {{&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29},{&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29},{&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29},{&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29},{&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29},{&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29},{&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29},{&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29,&p_34->g_29}};
    uint32_t l_32[10][9][2] = {{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}},{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}},{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}},{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}},{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}},{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}},{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}},{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}},{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}},{{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL},{6UL,6UL}}};
    int16_t l_33 = (-1L);
    int i, j, k;
    l_32[5][4][0] = ((l_2 >= (safe_lshift_func_int16_t_s_s(((0x4B64B5C6F8B8AE50L ^ (safe_mod_func_uint64_t_u_u((((l_7 != (void*)0) || (((p_34->g_27 = func_9(&p_34->g_8, p_34->g_8, (l_2 & func_14(((safe_div_func_int32_t_s_s(l_2, ((p_34->g_8 <= l_2) & p_34->g_8))) , &p_34->g_8), p_34->g_8, l_7, l_7, p_34)), p_34->g_8, p_34)) != &p_34->g_8) == l_2)) && 18446744073709551615UL), p_34->g_8))) && p_34->g_8), p_34->g_8))) && l_2);
    return l_33;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_9(int8_t * p_10, int32_t  p_11, int32_t  p_12, int32_t  p_13, struct S3 * p_34)
{ /* block id: 12 */
    if ((atomic_inc(&p_34->g_atomic_input[46 * get_linear_group_id() + 34]) == 3))
    { /* block id: 14 */
        struct S0 l_25 = {0xE630971CF717C925L,4294967295UL,0x32D748AEL,0x511904E2L,-1L,0x4983CA307758A8CEL};
        struct S0 l_26 = {0x4F2D89188B9ABC19L,4294967295UL,0x69A4575FL,9UL,-7L,0x7DA6603FA8B742D6L};
        l_26 = l_25;
        unsigned int result = 0;
        result += l_25.f0;
        result += l_25.f1;
        result += l_25.f2;
        result += l_25.f3;
        result += l_25.f4;
        result += l_25.f5;
        result += l_26.f0;
        result += l_26.f1;
        result += l_26.f2;
        result += l_26.f3;
        result += l_26.f4;
        result += l_26.f5;
        atomic_add(&p_34->g_special_values[46 * get_linear_group_id() + 34], result);
    }
    else
    { /* block id: 16 */
        (1 + 1);
    }
    return &p_34->g_8;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_14(int8_t * p_15, int32_t  p_16, int8_t * p_17, int8_t * p_18, struct S3 * p_34)
{ /* block id: 5 */
    uint32_t l_24 = 4294967288UL;
    for (p_16 = (-2); (p_16 < (-25)); p_16 = safe_sub_func_uint8_t_u_u(p_16, 1))
    { /* block id: 8 */
        int16_t l_23 = (-7L);
        if (l_23)
            break;
    }
    return l_24;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i;
    struct S3 c_35;
    struct S3* p_34 = &c_35;
    struct S3 c_36 = {
        4L, // p_34->g_8
        &p_34->g_8, // p_34->g_27
        0x161DFA23L, // p_34->g_29
        {&p_34->g_29,&p_34->g_29,&p_34->g_29}, // p_34->g_28
        sequence_input[get_global_id(0)], // p_34->global_0_offset
        sequence_input[get_global_id(1)], // p_34->global_1_offset
        sequence_input[get_global_id(2)], // p_34->global_2_offset
        sequence_input[get_local_id(0)], // p_34->local_0_offset
        sequence_input[get_local_id(1)], // p_34->local_1_offset
        sequence_input[get_local_id(2)], // p_34->local_2_offset
        sequence_input[get_group_id(0)], // p_34->group_0_offset
        sequence_input[get_group_id(1)], // p_34->group_1_offset
        sequence_input[get_group_id(2)], // p_34->group_2_offset
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_35 = c_36;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_34);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_34->g_8, "p_34->g_8", print_hash_value);
    transparent_crc(p_34->g_29, "p_34->g_29", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 46; i++)
            transparent_crc(p_34->g_special_values[i + 46 * get_linear_group_id()], "p_34->g_special_values[i + 46 * get_linear_group_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
