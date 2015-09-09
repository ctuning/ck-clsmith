// --atomics 15 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 6,56,10 -l 1,8,10
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

__constant uint32_t permutations[10][80] = {
{1,14,42,29,49,70,53,8,37,32,13,6,38,62,21,68,57,72,24,61,12,63,59,43,67,50,77,3,34,27,66,5,76,30,17,19,75,26,31,16,28,7,78,52,58,20,73,56,11,71,44,35,36,55,51,10,18,40,4,47,25,0,39,45,9,60,65,15,64,2,41,23,22,69,46,48,79,54,74,33}, // permutation 0
{32,58,34,4,17,20,49,14,11,59,8,29,55,45,35,19,15,9,16,21,65,50,43,61,66,13,79,56,33,75,5,10,46,44,6,71,76,28,1,41,7,73,40,64,18,36,69,25,67,3,60,77,12,0,37,68,47,57,53,22,74,48,31,78,51,63,72,23,54,2,27,52,42,62,38,24,70,39,26,30}, // permutation 1
{17,56,75,10,69,58,46,70,60,72,53,39,26,0,18,40,73,1,54,20,23,7,25,77,64,31,33,37,14,36,43,71,6,21,9,55,76,48,67,78,42,65,62,34,27,47,63,45,3,66,51,59,15,24,4,74,49,2,38,41,32,22,79,11,5,44,16,68,57,12,29,13,28,19,30,61,50,52,35,8}, // permutation 2
{76,27,15,2,0,40,35,61,6,36,57,75,66,64,43,32,48,3,69,4,19,23,54,42,39,11,52,13,73,68,56,67,31,62,53,49,12,14,79,78,59,20,33,60,28,26,10,18,17,50,25,16,1,46,71,8,41,38,58,29,44,34,9,22,63,45,65,70,37,24,30,47,5,7,74,77,21,72,55,51}, // permutation 3
{73,76,43,59,35,14,27,79,78,39,65,3,47,1,9,51,53,77,34,32,15,28,7,48,64,61,55,40,20,17,72,52,22,62,46,37,63,31,33,16,0,57,71,45,70,18,10,44,21,68,29,25,5,24,6,50,8,75,11,54,19,60,30,13,4,66,2,49,74,67,26,56,12,36,58,23,69,38,42,41}, // permutation 4
{5,15,46,11,21,59,20,13,73,50,68,58,0,65,62,78,33,12,29,61,79,67,38,17,74,77,53,24,31,9,45,8,2,47,71,10,41,4,42,56,16,54,23,37,36,57,1,39,7,70,76,14,40,3,28,48,60,52,35,64,63,34,27,26,69,18,43,66,44,51,72,75,49,6,32,30,22,19,25,55}, // permutation 5
{61,67,19,31,45,33,77,72,48,20,73,58,29,51,38,3,59,47,54,7,32,4,1,11,24,36,40,57,60,50,0,5,21,79,28,64,66,74,52,78,34,63,15,62,71,65,68,13,70,41,42,12,75,23,76,25,9,56,43,55,14,22,26,30,8,39,35,6,17,49,53,2,69,37,10,16,27,18,44,46}, // permutation 6
{42,73,8,78,18,21,64,47,75,3,58,44,61,15,45,71,67,41,69,34,38,35,79,43,39,49,53,27,24,31,33,23,10,37,0,14,29,36,50,52,5,46,17,66,2,48,20,77,62,70,30,22,4,40,32,28,1,19,11,6,68,55,57,63,7,60,51,9,56,72,76,54,25,59,12,13,74,26,65,16}, // permutation 7
{4,68,20,76,3,46,34,38,56,35,26,14,16,39,5,24,2,41,28,0,10,53,19,30,36,78,69,71,42,63,40,43,18,58,70,13,1,15,52,57,49,67,72,22,77,50,45,66,27,55,79,37,61,65,75,44,9,74,6,33,23,8,73,17,59,7,48,25,32,47,29,21,11,64,60,12,54,62,51,31}, // permutation 8
{47,13,45,55,70,18,12,71,60,62,34,76,23,10,61,73,54,49,74,31,24,33,26,28,6,35,77,19,79,51,16,20,66,0,3,30,46,15,64,69,57,38,17,42,58,5,67,65,22,9,63,78,50,27,37,59,4,11,75,56,25,36,48,52,44,40,8,29,72,1,21,41,43,68,53,14,32,7,2,39} // permutation 9
};

// Seed: 86

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    int8_t g_6[9][5];
    VECTOR(uint32_t, 8) g_9;
    int32_t g_13;
    int8_t g_15;
    int32_t g_19[7][8];
    uint32_t v_collective;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S1 * p_20);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_20->l_comm_values p_20->g_9 p_20->g_6 p_20->g_15 p_20->g_19
 * writes: p_20->g_13 p_20->g_15 p_20->g_19
 */
uint64_t  func_1(struct S1 * p_20)
{ /* block id: 4 */
    uint64_t l_2 = 0xEA41449C9FB37B04L;
    int8_t *l_5 = &p_20->g_6[1][1];
    VECTOR(uint32_t, 2) l_10 = (VECTOR(uint32_t, 2))(2UL, 0x76FBFCC0L);
    uint32_t l_11 = 0x2D9CAAF7L;
    int8_t *l_12 = &p_20->g_6[7][3];
    int32_t *l_14 = (void*)0;
    int i;
    p_20->g_15 = (p_20->g_13 = (l_2 != (safe_mod_func_int16_t_s_s(((l_2 , (((((((((void*)0 == l_5) , 0xCC254292978D8EF0L) | p_20->l_comm_values[(safe_mod_func_uint32_t_u_u(p_20->tid, 80))]) < (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 2))(p_20->g_9.s66))))), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_10.yy)).xxyyyyxxxxyyxyxx)).odd)).s2332655564760113, ((VECTOR(uint32_t, 4))(((l_10.y && (!l_2)) && l_10.x), ((VECTOR(uint32_t, 2))(0UL)), 0xF47F28A9L)).yzyzyyxyzwxzxzzy))).s34)), 0xEABA4A2CL, 0xB81F947FL, 0x41ADF890L, 0x5FC0266DL)), ((VECTOR(uint32_t, 4))(0x8C6A8663L)), l_11, 5UL, 0x49CE5708L, 0x0D0E101EL)).hi)).s6003701457720704, ((VECTOR(uint32_t, 16))(5UL))))), ((VECTOR(uint32_t, 16))(0x7A501900L))))).s3, (-1L)))) >= l_11) , l_5) != l_12) || p_20->g_6[5][3])) & l_11), 0xC38DL))));
    for (p_20->g_15 = 0; (p_20->g_15 == 24); p_20->g_15++)
    { /* block id: 9 */
        int32_t *l_18 = &p_20->g_19[6][6];
        (*l_18) ^= (p_20->g_15 == FAKE_DIVERGE(p_20->group_1_offset, get_group_id(1), 10));
    }
    return p_20->g_6[1][1];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[80];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 80; i++)
            l_comm_values[i] = 1;
    struct S1 c_21;
    struct S1* p_20 = &c_21;
    struct S1 c_22 = {
        {{0x67L,(-8L),1L,(-8L),0x67L},{0x67L,(-8L),1L,(-8L),0x67L},{0x67L,(-8L),1L,(-8L),0x67L},{0x67L,(-8L),1L,(-8L),0x67L},{0x67L,(-8L),1L,(-8L),0x67L},{0x67L,(-8L),1L,(-8L),0x67L},{0x67L,(-8L),1L,(-8L),0x67L},{0x67L,(-8L),1L,(-8L),0x67L},{0x67L,(-8L),1L,(-8L),0x67L}}, // p_20->g_6
        (VECTOR(uint32_t, 8))(0x9FA553FCL, (VECTOR(uint32_t, 4))(0x9FA553FCL, (VECTOR(uint32_t, 2))(0x9FA553FCL, 1UL), 1UL), 1UL, 0x9FA553FCL, 1UL), // p_20->g_9
        0x0B036C86L, // p_20->g_13
        0x5BL, // p_20->g_15
        {{9L,9L,0L,0x3D571E95L,0x1E5F9C6AL,0x3D571E95L,0L,9L},{9L,9L,0L,0x3D571E95L,0x1E5F9C6AL,0x3D571E95L,0L,9L},{9L,9L,0L,0x3D571E95L,0x1E5F9C6AL,0x3D571E95L,0L,9L},{9L,9L,0L,0x3D571E95L,0x1E5F9C6AL,0x3D571E95L,0L,9L},{9L,9L,0L,0x3D571E95L,0x1E5F9C6AL,0x3D571E95L,0L,9L},{9L,9L,0L,0x3D571E95L,0x1E5F9C6AL,0x3D571E95L,0L,9L},{9L,9L,0L,0x3D571E95L,0x1E5F9C6AL,0x3D571E95L,0L,9L}}, // p_20->g_19
        0, // p_20->v_collective
        sequence_input[get_global_id(0)], // p_20->global_0_offset
        sequence_input[get_global_id(1)], // p_20->global_1_offset
        sequence_input[get_global_id(2)], // p_20->global_2_offset
        sequence_input[get_local_id(0)], // p_20->local_0_offset
        sequence_input[get_local_id(1)], // p_20->local_1_offset
        sequence_input[get_local_id(2)], // p_20->local_2_offset
        sequence_input[get_group_id(0)], // p_20->group_0_offset
        sequence_input[get_group_id(1)], // p_20->group_1_offset
        sequence_input[get_group_id(2)], // p_20->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 80)), permutations[0][get_linear_local_id()])), // p_20->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_21 = c_22;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_20);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_20->g_6[i][j], "p_20->g_6[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_20->g_9.s0, "p_20->g_9.s0", print_hash_value);
    transparent_crc(p_20->g_9.s1, "p_20->g_9.s1", print_hash_value);
    transparent_crc(p_20->g_9.s2, "p_20->g_9.s2", print_hash_value);
    transparent_crc(p_20->g_9.s3, "p_20->g_9.s3", print_hash_value);
    transparent_crc(p_20->g_9.s4, "p_20->g_9.s4", print_hash_value);
    transparent_crc(p_20->g_9.s5, "p_20->g_9.s5", print_hash_value);
    transparent_crc(p_20->g_9.s6, "p_20->g_9.s6", print_hash_value);
    transparent_crc(p_20->g_9.s7, "p_20->g_9.s7", print_hash_value);
    transparent_crc(p_20->g_13, "p_20->g_13", print_hash_value);
    transparent_crc(p_20->g_15, "p_20->g_15", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_20->g_19[i][j], "p_20->g_19[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_20->v_collective, "p_20->v_collective", print_hash_value);
    transparent_crc(p_20->l_comm_values[get_linear_local_id()], "p_20->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_20->g_comm_values[get_linear_group_id() * 80 + get_linear_local_id()], "p_20->g_comm_values[get_linear_group_id() * 80 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
