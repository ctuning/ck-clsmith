// --atomics 87 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 18,20,22 -l 6,20,2
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

__constant uint32_t permutations[10][240] = {
{55,42,84,234,196,138,136,217,15,33,145,223,140,133,76,204,238,61,49,209,154,75,73,224,172,35,69,108,123,177,142,124,168,102,186,64,85,100,160,206,46,114,67,56,164,104,220,80,127,219,92,27,50,106,97,103,236,150,213,94,121,159,226,65,17,171,202,203,122,95,4,44,21,173,5,222,182,90,24,205,188,52,237,169,239,170,201,162,126,99,20,230,193,82,157,155,211,11,184,96,68,190,41,19,233,110,146,208,144,117,71,179,191,60,53,48,66,212,30,36,187,128,167,197,32,147,57,12,29,119,163,7,215,113,174,74,134,151,120,109,26,8,149,207,62,141,194,81,18,153,227,9,105,130,228,23,231,78,31,139,158,38,25,166,86,198,176,40,229,129,77,125,45,115,148,88,58,87,137,116,180,107,70,235,192,6,118,34,132,165,3,14,175,195,72,10,200,156,0,2,1,221,210,59,189,199,98,183,225,91,216,22,111,131,39,13,178,93,112,135,63,83,89,161,152,47,28,214,51,43,143,181,232,16,101,54,218,37,79,185}, // permutation 0
{62,26,9,217,218,104,178,208,146,223,95,219,98,97,82,141,224,21,239,205,184,52,100,189,125,96,166,135,7,168,71,24,101,51,57,207,66,31,186,54,72,169,237,83,88,221,37,154,109,182,60,120,75,44,197,183,162,18,127,212,142,194,122,65,160,191,86,187,6,136,87,50,77,5,38,79,150,148,138,181,143,107,230,27,1,35,157,227,195,155,94,215,117,172,163,203,177,216,69,49,4,110,204,176,53,196,81,11,228,48,123,226,10,126,147,234,43,131,112,222,33,188,129,153,174,171,144,0,114,63,76,13,238,20,156,25,124,118,132,46,233,170,8,59,193,139,115,151,214,210,23,201,102,15,70,34,158,130,235,40,73,12,61,116,145,164,41,39,175,190,55,30,173,167,105,85,211,137,16,93,80,99,92,74,89,68,213,199,14,192,56,78,108,128,140,36,165,32,152,2,3,119,231,58,64,42,229,161,84,67,111,202,45,180,134,236,220,200,198,133,29,103,225,149,47,179,19,209,232,91,90,28,159,106,22,113,121,17,185,206}, // permutation 1
{97,83,19,59,126,204,87,146,213,234,179,78,196,75,33,62,117,57,48,207,140,226,209,0,71,224,227,103,46,159,185,104,110,199,193,135,91,76,49,63,145,90,5,88,79,137,188,108,82,6,190,184,171,86,161,20,123,133,29,3,144,149,168,122,119,112,153,127,94,43,58,67,17,24,192,167,139,37,208,96,121,18,40,176,210,12,148,84,124,183,212,151,15,22,166,134,41,160,72,73,142,215,131,163,228,89,136,38,80,85,50,14,233,66,23,68,36,21,8,201,102,9,217,106,55,61,154,178,60,181,158,64,132,150,100,202,116,118,236,107,189,93,180,51,11,31,198,238,173,194,7,170,2,200,114,77,203,1,113,4,130,186,216,165,205,223,239,214,129,191,115,26,222,32,218,169,13,157,35,143,28,111,34,81,65,220,45,95,92,120,128,138,70,125,225,69,156,219,105,30,52,47,27,42,221,162,10,101,206,141,197,152,195,232,231,39,54,56,187,147,98,164,99,230,211,16,109,182,229,177,53,155,44,74,174,25,172,235,237,175}, // permutation 2
{25,204,208,130,224,12,88,15,162,59,99,119,215,147,223,49,226,61,79,227,196,107,229,141,187,18,214,102,145,218,76,98,207,94,112,74,190,201,142,42,194,217,159,3,235,120,53,96,172,210,27,45,85,178,124,126,125,238,170,100,121,66,234,71,104,5,40,20,169,84,92,146,7,9,22,176,180,206,106,128,62,138,77,158,148,166,127,57,225,29,233,103,113,205,51,69,134,118,78,192,13,46,221,213,183,86,144,200,58,52,4,1,36,122,17,143,156,198,199,0,171,154,8,26,163,129,153,228,168,47,193,14,236,111,39,164,68,219,80,21,50,82,81,232,175,132,188,31,67,10,83,167,116,72,139,41,137,32,152,28,109,135,220,212,19,54,222,165,44,114,131,181,73,55,211,151,136,38,90,75,157,160,150,63,216,91,34,179,185,37,117,101,70,97,110,140,16,64,30,209,186,155,23,149,33,60,230,93,105,133,95,184,177,189,203,11,161,35,202,123,231,24,237,191,2,108,195,56,6,48,182,43,115,174,65,89,197,87,173,239}, // permutation 3
{18,117,161,232,152,51,119,194,136,33,87,56,61,43,138,83,0,190,15,208,62,20,16,157,121,144,165,238,191,206,234,5,47,112,31,104,131,26,80,7,228,92,145,110,64,188,82,71,210,202,159,53,204,77,13,60,129,200,48,179,50,100,52,19,36,141,111,150,1,193,195,69,223,9,115,205,177,180,98,140,192,67,153,135,23,221,217,108,237,148,235,133,134,233,29,41,49,182,21,74,81,78,171,149,90,126,8,170,167,2,38,181,213,102,79,176,97,96,86,143,124,70,160,84,209,196,54,224,63,46,122,65,123,42,211,12,101,34,37,183,118,76,107,17,197,109,158,142,154,58,172,89,212,3,120,218,219,44,94,231,227,151,39,199,186,40,155,11,59,166,14,66,229,57,28,73,168,4,127,75,147,162,174,216,164,93,226,222,85,187,114,173,25,230,236,128,99,220,32,88,113,45,30,24,68,163,91,139,130,156,106,27,185,189,105,239,146,175,132,6,55,198,10,169,214,203,103,95,22,35,137,215,207,178,201,184,225,72,116,125}, // permutation 4
{41,62,100,194,14,183,150,36,35,39,64,89,44,0,126,156,120,226,153,61,24,179,166,27,191,137,168,32,160,91,187,195,236,203,47,12,80,231,21,131,118,163,146,8,134,28,171,155,161,154,217,172,151,230,182,90,66,117,109,169,78,218,119,34,97,92,10,237,113,45,15,5,138,58,225,177,9,133,212,52,73,174,40,184,149,71,125,185,129,38,211,209,198,159,206,76,173,43,81,216,17,115,23,2,60,204,228,33,207,3,112,67,53,104,98,220,37,239,110,208,147,83,165,55,224,1,176,30,214,121,148,186,192,170,189,167,46,123,70,107,108,18,4,162,188,114,69,238,49,178,202,51,6,65,87,135,111,20,116,26,140,180,227,19,102,201,210,29,197,75,7,144,130,22,200,79,141,82,94,106,190,16,175,11,13,142,42,25,127,48,205,219,143,181,63,103,233,101,77,145,57,54,213,99,88,234,139,196,105,229,157,215,136,96,223,235,221,124,85,50,72,74,86,68,193,128,232,152,199,132,95,122,222,59,158,56,93,84,164,31}, // permutation 5
{20,142,124,72,164,161,207,179,81,41,206,73,214,36,232,3,213,11,145,40,172,219,125,101,233,92,24,177,149,90,212,50,238,76,74,211,111,184,188,167,9,198,42,118,128,2,78,39,140,22,100,210,66,133,31,236,53,61,159,83,6,180,152,57,103,55,89,106,44,45,127,5,17,107,95,144,162,47,27,146,58,139,21,51,197,192,218,176,4,182,190,187,65,33,104,178,189,115,91,209,64,109,166,19,174,68,117,221,204,121,175,105,80,116,102,87,235,171,122,46,112,215,98,183,26,120,194,85,67,157,7,56,239,123,237,130,150,234,169,132,165,228,52,138,137,170,0,13,75,208,193,32,48,37,230,99,202,216,108,35,62,131,148,153,173,77,222,223,135,143,110,229,43,88,28,16,191,25,86,154,1,97,225,82,70,23,155,93,226,141,126,12,200,29,231,119,94,79,54,185,156,158,14,71,201,60,59,49,160,203,134,205,15,84,38,163,8,195,113,114,136,199,69,224,18,30,151,196,96,34,220,10,147,63,186,227,168,181,129,217}, // permutation 6
{104,119,181,222,154,93,196,41,87,227,83,182,183,27,21,58,118,73,176,184,237,194,200,221,225,43,228,60,39,188,180,169,45,42,103,95,53,47,67,54,31,68,62,151,76,88,114,55,110,210,202,133,124,153,5,89,18,10,138,211,8,218,135,19,189,79,217,150,191,177,48,109,233,82,187,69,215,130,239,111,146,16,80,61,220,97,139,113,190,85,20,74,65,24,168,121,36,52,22,213,212,37,12,131,2,140,209,170,136,198,77,152,33,78,40,57,25,117,214,161,84,35,174,155,107,90,3,178,236,230,192,32,123,120,30,234,66,91,63,75,129,46,49,175,216,172,105,165,148,185,34,145,207,160,44,144,108,224,238,162,14,102,6,235,106,195,186,206,141,193,226,26,137,142,159,9,223,11,179,197,4,115,28,166,100,163,132,126,15,56,98,92,157,116,199,171,1,201,71,59,128,203,29,122,229,149,99,219,125,173,232,127,13,64,51,94,143,101,147,205,158,7,96,156,17,81,50,204,231,38,208,86,70,23,112,167,0,72,134,164}, // permutation 7
{108,194,72,150,89,162,71,119,20,234,218,225,90,200,212,140,106,204,16,188,180,69,127,142,208,224,96,44,93,121,40,181,0,133,84,82,219,128,216,60,168,157,205,117,236,34,79,58,123,170,185,153,217,155,74,61,110,9,201,198,10,31,165,43,1,215,15,3,52,221,230,169,45,63,231,29,115,207,196,48,38,92,235,138,154,183,148,146,19,228,103,232,192,125,190,85,156,107,161,57,54,104,209,222,206,211,26,94,83,49,172,5,124,229,13,78,135,152,23,122,214,53,111,70,164,120,149,76,11,39,87,28,166,237,55,132,176,238,8,77,239,88,131,42,191,75,66,171,226,141,98,62,22,177,114,158,213,7,101,25,189,126,136,151,12,46,99,91,67,139,2,160,137,100,81,210,47,41,95,167,33,184,68,21,37,105,50,187,112,36,175,193,6,195,27,202,32,223,35,14,220,159,80,186,174,143,65,163,233,4,86,56,30,227,197,113,147,203,102,118,199,144,17,179,97,130,18,145,24,178,129,73,173,64,134,51,182,59,109,116}, // permutation 8
{167,74,188,139,67,200,149,134,50,162,93,60,213,224,212,63,204,193,105,31,219,137,70,223,91,143,89,39,97,116,20,157,55,15,5,2,68,130,51,194,69,65,29,156,24,170,168,33,48,207,117,216,136,75,54,141,112,179,107,125,114,225,215,61,84,128,183,3,109,190,11,172,23,43,30,146,111,90,192,199,166,180,7,222,25,113,82,159,233,52,56,197,41,120,22,182,88,221,232,76,161,37,153,148,35,26,86,8,38,104,83,228,198,220,187,34,14,0,124,57,99,77,202,64,211,152,66,229,236,145,121,19,131,44,18,126,102,195,186,27,155,81,80,203,144,78,239,184,96,100,178,46,147,32,201,40,71,103,205,16,62,238,169,231,135,176,227,49,140,98,95,9,36,163,165,173,235,154,175,133,210,94,45,106,59,85,87,42,53,127,28,196,218,108,174,118,214,72,151,6,177,150,181,158,47,129,1,189,21,206,217,115,101,138,171,10,164,132,234,12,58,230,209,226,79,185,119,122,191,92,208,73,4,13,160,110,17,123,142,237} // permutation 9
};

// Seed: 94

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S3 {
    int32_t g_3;
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
int64_t  func_1(struct S3 * p_11);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_1(struct S3 * p_11)
{ /* block id: 4 */
    int32_t *l_2 = &p_11->g_3;
    int32_t *l_4 = &p_11->g_3;
    int32_t *l_5 = &p_11->g_3;
    int32_t *l_6[9][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    VECTOR(uint64_t, 8) l_7 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 1UL, 18446744073709551615UL);
    int8_t l_10 = 1L;
    int i, j, k;
    l_7.s4++;
    return l_10;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[240];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 240; i++)
            l_comm_values[i] = 1;
    struct S3 c_12;
    struct S3* p_11 = &c_12;
    struct S3 c_13 = {
        0x588D0D3FL, // p_11->g_3
        0, // p_11->v_collective
        sequence_input[get_global_id(0)], // p_11->global_0_offset
        sequence_input[get_global_id(1)], // p_11->global_1_offset
        sequence_input[get_global_id(2)], // p_11->global_2_offset
        sequence_input[get_local_id(0)], // p_11->local_0_offset
        sequence_input[get_local_id(1)], // p_11->local_1_offset
        sequence_input[get_local_id(2)], // p_11->local_2_offset
        sequence_input[get_group_id(0)], // p_11->group_0_offset
        sequence_input[get_group_id(1)], // p_11->group_1_offset
        sequence_input[get_group_id(2)], // p_11->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 240)), permutations[0][get_linear_local_id()])), // p_11->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_12 = c_13;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_11);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_11->g_3, "p_11->g_3", print_hash_value);
    transparent_crc(p_11->v_collective, "p_11->v_collective", print_hash_value);
    transparent_crc(p_11->l_comm_values[get_linear_local_id()], "p_11->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_11->g_comm_values[get_linear_group_id() * 240 + get_linear_local_id()], "p_11->g_comm_values[get_linear_group_id() * 240 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
