// ---fake_divergence ---inter_thread_comm -g 41,71,3 -l 41,1,1
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

__constant uint32_t permutations[10][41] = {
{1,39,0,26,7,20,25,27,5,35,8,32,40,23,28,31,33,38,17,30,37,24,3,16,18,9,22,12,34,10,2,13,6,21,36,29,14,15,11,4,19}, // permutation 0
{31,22,19,8,28,26,30,16,15,37,39,5,36,24,34,13,9,38,14,23,33,17,10,18,4,7,12,0,1,2,27,40,21,29,11,25,3,6,20,35,32}, // permutation 1
{5,31,17,29,23,19,2,36,30,4,25,27,3,16,38,21,39,7,32,22,28,35,1,18,14,20,8,34,33,15,9,13,11,12,0,37,6,40,24,10,26}, // permutation 2
{40,26,20,34,24,33,7,4,19,1,38,39,2,9,28,21,32,29,15,0,10,11,17,30,36,13,22,23,18,3,12,25,6,8,5,14,35,31,27,37,16}, // permutation 3
{30,16,8,24,34,13,29,20,17,9,0,38,15,12,1,4,18,6,40,33,19,11,3,31,27,35,28,23,5,14,2,21,32,26,22,39,37,10,36,25,7}, // permutation 4
{25,35,34,23,20,2,30,12,18,3,0,31,15,36,9,21,17,40,7,13,38,28,10,39,4,1,32,16,19,26,24,37,6,33,22,11,27,8,29,5,14}, // permutation 5
{26,13,19,3,23,8,25,18,20,28,29,10,5,37,33,14,21,7,40,39,9,12,22,0,35,2,34,32,15,4,17,1,11,30,16,27,24,38,6,36,31}, // permutation 6
{7,12,18,38,2,37,8,30,6,20,9,36,28,39,29,1,26,3,31,4,5,10,14,15,21,27,22,34,24,33,11,0,16,13,17,32,23,35,19,25,40}, // permutation 7
{9,11,22,16,3,36,15,14,2,30,35,13,7,18,37,33,38,29,23,17,28,19,20,8,40,26,0,24,6,25,10,21,4,12,1,39,34,27,32,5,31}, // permutation 8
{2,28,13,4,32,14,1,6,17,12,35,5,8,36,29,24,20,19,37,9,27,15,0,25,21,23,31,22,18,26,3,10,39,34,33,11,7,30,38,16,40} // permutation 9
};

// Seed: 68

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
   uint8_t  f1;
};

struct S3 {
    int32_t g_4;
    int32_t * volatile g_3;
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
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S3 * p_7);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_7->g_3
 * writes: p_7->g_4
 */
uint32_t  func_1(struct S3 * p_7)
{ /* block id: 4 */
    uint64_t l_2[2][6][9] = {{{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L}},{{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L},{0UL,0x6F49C23EDB39523DL,0xEB2391CB4E76AB2AL,0x6F49C23EDB39523DL,0UL,0x47C9D5FAC12265E3L,0x1342F3D47941CE3CL,0x78213AF72B5725D3L,0xA5B0420410224968L}}};
    struct S0 l_5 = {-1L,0xDCL};
    struct S0 *l_6 = &l_5;
    int i, j, k;
    (*p_7->g_3) = l_2[1][2][5];
    (*l_6) = l_5;
    return l_5.f0;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local int64_t l_comm_values[41];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 41; i++)
            l_comm_values[i] = 1;
    struct S3 c_8;
    struct S3* p_7 = &c_8;
    struct S3 c_9 = {
        1L, // p_7->g_4
        &p_7->g_4, // p_7->g_3
        sequence_input[get_global_id(0)], // p_7->global_0_offset
        sequence_input[get_global_id(1)], // p_7->global_1_offset
        sequence_input[get_global_id(2)], // p_7->global_2_offset
        sequence_input[get_local_id(0)], // p_7->local_0_offset
        sequence_input[get_local_id(1)], // p_7->local_1_offset
        sequence_input[get_local_id(2)], // p_7->local_2_offset
        sequence_input[get_group_id(0)], // p_7->group_0_offset
        sequence_input[get_group_id(1)], // p_7->group_1_offset
        sequence_input[get_group_id(2)], // p_7->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 41)), permutations[0][get_linear_local_id()])), // p_7->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_8 = c_9;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_7);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_7->g_4, "p_7->g_4", print_hash_value);
    transparent_crc(p_7->l_comm_values[get_linear_local_id()], "p_7->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_7->g_comm_values[get_linear_group_id() * 41 + get_linear_local_id()], "p_7->g_comm_values[get_linear_group_id() * 41 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
