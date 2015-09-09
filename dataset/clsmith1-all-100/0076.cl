// --atomics 56 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 53,87,1 -l 53,3,1
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

__constant uint32_t permutations[10][159] = {
{94,26,61,16,117,77,123,54,121,86,133,71,108,129,56,109,39,134,92,75,64,96,6,145,50,106,100,28,74,18,152,118,73,131,156,7,116,137,82,122,58,132,87,2,89,40,148,51,153,37,102,10,127,35,60,81,29,97,45,144,57,88,68,41,158,63,149,19,115,103,20,44,42,130,22,90,14,79,99,150,13,138,126,136,4,31,36,140,105,49,101,139,72,0,142,15,5,107,62,70,38,76,85,67,135,80,23,91,48,69,155,46,83,120,112,47,55,12,1,143,53,3,30,25,111,21,78,17,33,9,147,146,27,113,43,157,65,98,119,93,95,8,52,114,34,66,11,151,32,110,104,59,84,141,128,24,125,154,124}, // permutation 0
{1,7,94,19,97,62,27,2,96,83,68,77,3,103,104,0,17,132,80,153,75,150,18,143,59,148,37,86,55,15,61,29,49,109,25,140,69,127,128,41,31,113,117,82,36,66,89,85,90,112,123,110,70,12,9,60,120,64,84,81,11,157,32,14,152,111,122,5,76,116,21,119,115,20,10,34,26,48,16,139,87,71,74,142,145,129,30,146,54,102,135,23,79,99,47,88,50,126,108,45,121,151,4,118,137,33,95,141,92,93,44,40,134,106,13,24,101,39,63,158,105,52,28,131,136,78,38,53,114,138,91,56,58,51,100,42,130,155,6,65,35,149,107,67,154,144,125,156,22,8,72,124,98,133,147,43,57,46,73}, // permutation 1
{73,61,77,62,107,28,112,153,41,158,152,75,123,122,29,154,44,114,33,19,95,52,37,26,84,85,145,133,65,141,135,2,78,105,150,101,83,9,100,106,45,136,102,87,8,51,56,117,63,42,151,94,30,143,36,91,89,131,116,59,32,53,108,156,27,67,120,86,22,54,38,58,43,34,137,0,128,124,142,90,92,18,72,10,96,130,21,46,47,140,98,125,88,79,146,4,66,24,20,93,23,35,109,139,14,68,99,48,119,12,134,60,1,76,147,157,115,16,155,104,144,129,31,50,127,138,118,5,111,55,81,40,74,110,15,80,3,71,103,121,57,70,7,64,149,82,13,17,25,148,39,97,113,69,132,11,49,126,6}, // permutation 2
{21,66,94,146,61,106,140,121,129,26,55,155,88,65,44,33,139,16,56,5,1,43,103,87,148,42,149,0,108,154,91,124,151,123,18,80,119,93,113,60,41,25,40,150,82,135,79,98,12,47,84,153,101,147,136,131,156,28,133,23,27,7,10,137,110,90,63,59,105,36,107,17,111,142,85,114,46,52,3,31,13,9,48,19,58,128,86,158,92,69,120,127,89,126,49,100,109,32,97,132,78,125,130,74,99,122,68,4,38,53,20,37,30,73,138,144,96,157,15,72,102,112,118,51,145,70,45,34,143,117,71,81,29,57,115,75,104,14,116,77,83,24,152,11,6,50,134,141,76,35,64,95,67,62,2,54,8,22,39}, // permutation 3
{78,93,52,95,32,99,26,108,128,135,126,43,0,53,79,152,86,60,100,69,125,46,110,106,143,156,10,104,3,89,123,155,23,154,34,64,7,33,130,129,70,27,12,118,31,144,141,67,47,73,20,63,16,49,103,68,37,97,147,38,81,29,87,85,4,91,105,2,102,109,6,18,98,35,116,40,148,11,45,84,77,48,134,50,62,112,158,22,83,151,96,76,17,88,145,74,39,19,80,120,57,131,121,55,9,124,42,127,82,149,117,13,58,75,61,25,36,133,14,59,137,122,157,8,28,5,1,142,51,65,101,56,114,71,66,111,119,15,44,92,24,41,146,138,94,136,90,21,132,153,150,30,107,115,54,140,72,113,139}, // permutation 4
{140,145,44,108,19,97,107,111,52,142,143,88,136,17,41,152,31,70,3,59,9,104,127,2,36,113,116,93,73,42,16,56,66,22,133,14,6,34,39,15,132,25,53,26,89,110,33,64,74,57,35,95,156,11,83,79,148,43,60,128,28,71,100,153,4,82,38,151,62,8,0,114,67,146,139,29,125,149,1,45,105,48,96,87,37,7,61,106,20,32,144,58,77,117,49,30,101,54,130,112,115,40,65,137,75,129,135,119,122,157,94,154,124,150,155,86,141,147,24,85,76,84,5,91,21,69,81,51,23,102,72,138,55,80,134,46,131,18,118,63,50,158,99,92,13,10,78,103,12,27,47,90,68,123,121,126,109,120,98}, // permutation 5
{24,90,144,130,152,141,121,142,140,10,22,13,64,102,89,113,79,17,44,42,61,100,86,114,63,32,93,132,57,97,156,70,20,62,98,154,49,2,85,105,48,147,92,52,75,16,120,8,53,46,71,94,37,157,146,84,30,67,18,36,35,145,27,110,66,116,117,51,106,101,33,127,1,11,138,47,68,39,5,41,14,155,31,135,143,111,131,12,95,0,137,128,21,80,126,58,125,65,40,74,45,150,83,50,23,96,15,29,6,73,139,103,108,112,55,9,123,134,76,43,28,25,3,115,149,4,119,38,124,69,87,54,122,60,158,82,107,136,151,59,133,19,26,78,104,91,118,56,88,7,148,109,99,81,77,72,34,129,153}, // permutation 6
{109,53,58,137,76,82,65,51,67,91,29,38,84,152,36,15,110,142,113,8,45,127,41,28,32,22,147,118,96,19,24,2,68,148,39,43,79,7,12,92,66,14,155,120,6,26,138,90,101,132,44,105,72,114,117,100,143,73,131,77,86,119,21,106,130,88,133,112,154,103,108,99,116,62,87,13,57,85,93,46,115,42,61,16,153,156,52,48,129,5,20,102,104,124,70,64,9,63,47,151,59,75,83,126,31,34,121,144,3,1,111,0,158,135,27,139,11,157,10,56,107,94,81,35,55,95,146,78,89,128,33,49,18,60,98,123,37,23,30,125,50,140,134,17,80,149,97,69,145,122,71,54,25,74,136,141,150,40,4}, // permutation 7
{84,20,89,158,100,109,108,144,36,61,16,116,106,60,138,23,152,129,120,24,28,0,6,17,2,79,80,146,74,38,72,32,111,92,87,140,118,76,81,27,123,50,115,65,137,133,99,156,143,114,1,52,154,34,128,112,25,117,85,88,157,30,105,101,15,18,121,49,63,139,55,11,135,67,40,142,62,73,37,103,5,124,42,3,44,43,69,29,14,64,82,110,126,145,71,119,155,104,77,58,134,10,132,57,47,75,56,136,12,78,13,131,90,70,39,41,141,35,151,46,53,48,147,122,45,26,153,22,9,33,96,86,125,98,102,54,93,107,127,130,150,7,148,66,113,4,91,21,68,19,8,51,94,59,31,95,149,97,83}, // permutation 8
{85,142,93,131,55,70,80,147,120,103,56,117,82,84,133,67,158,157,52,100,88,54,40,3,144,34,5,15,50,35,32,139,155,25,10,79,17,72,91,49,89,69,127,151,90,128,145,96,141,65,98,41,38,95,156,14,1,33,135,130,63,2,114,68,121,11,66,102,81,126,150,74,57,111,8,6,47,58,39,152,61,51,12,42,146,140,73,97,43,31,148,64,0,92,59,122,36,149,108,112,115,27,86,48,83,44,23,77,30,154,99,75,19,153,110,60,76,94,22,129,4,138,105,18,109,7,13,37,71,101,16,134,87,143,45,29,78,125,53,124,46,116,136,104,107,113,21,119,28,9,132,137,26,123,24,62,106,118,20} // permutation 9
};

// Seed: 76

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int32_t  f0;
   uint64_t  f1;
   int16_t  f2;
};

struct S1 {
    int32_t g_4;
    VECTOR(int32_t, 16) g_8;
    VECTOR(uint64_t, 8) g_11;
    volatile int32_t g_15;
    volatile int32_t *g_14;
    union U0 g_17[7][6];
    int8_t g_19;
    int8_t g_21;
    int64_t g_27;
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
int32_t  func_1(struct S1 * p_28);
union U0  func_12(int64_t  p_13, struct S1 * p_28);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_28->l_comm_values p_28->g_comm_values p_28->g_11 p_28->g_14 p_28->g_15 p_28->g_17 p_28->g_19 p_28->g_27
 * writes: p_28->g_4 p_28->g_8 p_28->g_15 p_28->g_19 p_28->g_21 p_28->l_comm_values p_28->g_27
 */
int32_t  func_1(struct S1 * p_28)
{ /* block id: 4 */
    VECTOR(uint16_t, 2) l_5 = (VECTOR(uint16_t, 2))(0x38DDL, 0xAD37L);
    int32_t *l_6 = (void*)0;
    int32_t *l_7[7][9][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
    int8_t *l_18 = &p_28->g_19;
    int8_t *l_20 = &p_28->g_21;
    int64_t *l_22 = (void*)0;
    int64_t *l_23 = (void*)0;
    int64_t *l_24 = (void*)0;
    int64_t *l_25[3][2][1] = {{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}}};
    uint8_t l_26 = 1UL;
    int i, j, k;
    p_28->g_8.s8 = (p_28->l_comm_values[(safe_mod_func_uint32_t_u_u(p_28->tid, 159))] & (safe_div_func_uint8_t_u_u(((p_28->g_4 = p_28->g_comm_values[p_28->tid]) < ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_5.xx)).xxyyxyxxxyxxyxyy)).s9), GROUP_DIVERGE(0, 1))));
    p_28->g_27 |= (p_28->g_8.s8 = ((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(p_28->g_11.s5222)).x, (p_28->l_comm_values[(safe_mod_func_uint32_t_u_u(p_28->tid, 159))] = (0xC8L & (func_12((l_7[2][0][0] != p_28->g_14), p_28) , ((*l_20) = ((*l_18) |= (p_28->l_comm_values[(safe_mod_func_uint32_t_u_u(p_28->tid, 159))] , p_28->g_15)))))))) , (((p_28->g_11.s6 & ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))((3UL != l_26), 0x6A24D72531C418A4L, ((VECTOR(uint64_t, 2))(1UL)), ((VECTOR(uint64_t, 2))(0x6AC6D51E7DF7C478L)), 8UL, 0xB3E4958F93B69C79L)).hi)))).x) , 0x05L) | 255UL)));
    return (*p_28->g_14);
}


/* ------------------------------------------ */
/* 
 * reads : p_28->g_14 p_28->g_15 p_28->g_17
 * writes: p_28->g_15
 */
union U0  func_12(int64_t  p_13, struct S1 * p_28)
{ /* block id: 7 */
    uint16_t l_16[10] = {0x7495L,0x7495L,0x7495L,0x7495L,0x7495L,0x7495L,0x7495L,0x7495L,0x7495L,0x7495L};
    int i;
    (*p_28->g_14) |= l_16[6];
    return p_28->g_17[0][1];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[159];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 159; i++)
            l_comm_values[i] = 1;
    struct S1 c_29;
    struct S1* p_28 = &c_29;
    struct S1 c_30 = {
        0x2B3B7BEDL, // p_28->g_4
        (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0L), 0L), 0L, 5L, 0L, (VECTOR(int32_t, 2))(5L, 0L), (VECTOR(int32_t, 2))(5L, 0L), 5L, 0L, 5L, 0L), // p_28->g_8
        (VECTOR(uint64_t, 8))(0xC540135D840C9366L, (VECTOR(uint64_t, 4))(0xC540135D840C9366L, (VECTOR(uint64_t, 2))(0xC540135D840C9366L, 0xCDBDB14249AA0F80L), 0xCDBDB14249AA0F80L), 0xCDBDB14249AA0F80L, 0xC540135D840C9366L, 0xCDBDB14249AA0F80L), // p_28->g_11
        (-1L), // p_28->g_15
        &p_28->g_15, // p_28->g_14
        {{{-1L},{0x09347D92L},{0x09347D92L},{-1L},{-1L},{1L}},{{-1L},{0x09347D92L},{0x09347D92L},{-1L},{-1L},{1L}},{{-1L},{0x09347D92L},{0x09347D92L},{-1L},{-1L},{1L}},{{-1L},{0x09347D92L},{0x09347D92L},{-1L},{-1L},{1L}},{{-1L},{0x09347D92L},{0x09347D92L},{-1L},{-1L},{1L}},{{-1L},{0x09347D92L},{0x09347D92L},{-1L},{-1L},{1L}},{{-1L},{0x09347D92L},{0x09347D92L},{-1L},{-1L},{1L}}}, // p_28->g_17
        (-5L), // p_28->g_19
        0x23L, // p_28->g_21
        0L, // p_28->g_27
        0, // p_28->v_collective
        sequence_input[get_global_id(0)], // p_28->global_0_offset
        sequence_input[get_global_id(1)], // p_28->global_1_offset
        sequence_input[get_global_id(2)], // p_28->global_2_offset
        sequence_input[get_local_id(0)], // p_28->local_0_offset
        sequence_input[get_local_id(1)], // p_28->local_1_offset
        sequence_input[get_local_id(2)], // p_28->local_2_offset
        sequence_input[get_group_id(0)], // p_28->group_0_offset
        sequence_input[get_group_id(1)], // p_28->group_1_offset
        sequence_input[get_group_id(2)], // p_28->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 159)), permutations[0][get_linear_local_id()])), // p_28->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_29 = c_30;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_28);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_28->g_4, "p_28->g_4", print_hash_value);
    transparent_crc(p_28->g_8.s0, "p_28->g_8.s0", print_hash_value);
    transparent_crc(p_28->g_8.s1, "p_28->g_8.s1", print_hash_value);
    transparent_crc(p_28->g_8.s2, "p_28->g_8.s2", print_hash_value);
    transparent_crc(p_28->g_8.s3, "p_28->g_8.s3", print_hash_value);
    transparent_crc(p_28->g_8.s4, "p_28->g_8.s4", print_hash_value);
    transparent_crc(p_28->g_8.s5, "p_28->g_8.s5", print_hash_value);
    transparent_crc(p_28->g_8.s6, "p_28->g_8.s6", print_hash_value);
    transparent_crc(p_28->g_8.s7, "p_28->g_8.s7", print_hash_value);
    transparent_crc(p_28->g_8.s8, "p_28->g_8.s8", print_hash_value);
    transparent_crc(p_28->g_8.s9, "p_28->g_8.s9", print_hash_value);
    transparent_crc(p_28->g_8.sa, "p_28->g_8.sa", print_hash_value);
    transparent_crc(p_28->g_8.sb, "p_28->g_8.sb", print_hash_value);
    transparent_crc(p_28->g_8.sc, "p_28->g_8.sc", print_hash_value);
    transparent_crc(p_28->g_8.sd, "p_28->g_8.sd", print_hash_value);
    transparent_crc(p_28->g_8.se, "p_28->g_8.se", print_hash_value);
    transparent_crc(p_28->g_8.sf, "p_28->g_8.sf", print_hash_value);
    transparent_crc(p_28->g_11.s0, "p_28->g_11.s0", print_hash_value);
    transparent_crc(p_28->g_11.s1, "p_28->g_11.s1", print_hash_value);
    transparent_crc(p_28->g_11.s2, "p_28->g_11.s2", print_hash_value);
    transparent_crc(p_28->g_11.s3, "p_28->g_11.s3", print_hash_value);
    transparent_crc(p_28->g_11.s4, "p_28->g_11.s4", print_hash_value);
    transparent_crc(p_28->g_11.s5, "p_28->g_11.s5", print_hash_value);
    transparent_crc(p_28->g_11.s6, "p_28->g_11.s6", print_hash_value);
    transparent_crc(p_28->g_11.s7, "p_28->g_11.s7", print_hash_value);
    transparent_crc(p_28->g_15, "p_28->g_15", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_28->g_17[i][j].f0, "p_28->g_17[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_28->g_19, "p_28->g_19", print_hash_value);
    transparent_crc(p_28->g_21, "p_28->g_21", print_hash_value);
    transparent_crc(p_28->g_27, "p_28->g_27", print_hash_value);
    transparent_crc(p_28->v_collective, "p_28->v_collective", print_hash_value);
    transparent_crc(p_28->l_comm_values[get_linear_local_id()], "p_28->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_28->g_comm_values[get_linear_group_id() * 159 + get_linear_local_id()], "p_28->g_comm_values[get_linear_group_id() * 159 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
