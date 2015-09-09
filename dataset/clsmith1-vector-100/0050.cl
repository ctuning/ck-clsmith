// ---fake_divergence -g 76,86,1 -l 1,86,1
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


// Seed: 50

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S2 {
    VECTOR(int32_t, 16) g_3;
    int32_t g_13[9];
    volatile uint32_t g_17;
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
int32_t  func_1(struct S2 * p_20);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_20->g_17 p_20->g_3
 * writes: p_20->g_17
 */
int32_t  func_1(struct S2 * p_20)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_4 = (void*)0;
    int32_t *l_5 = (void*)0;
    int32_t *l_6 = (void*)0;
    int32_t *l_7 = (void*)0;
    int32_t *l_8 = (void*)0;
    int32_t *l_9 = (void*)0;
    int32_t *l_10 = (void*)0;
    int32_t *l_11 = (void*)0;
    int32_t *l_12[3][5][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int16_t l_14 = 0x7743L;
    int8_t l_15 = (-9L);
    int16_t l_16 = 0L;
    int i, j, k;
    ++p_20->g_17;
    return p_20->g_3.s4;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S2 c_21;
    struct S2* p_20 = &c_21;
    struct S2 c_22 = {
        (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x02FF40FCL), 0x02FF40FCL), 0x02FF40FCL, (-7L), 0x02FF40FCL, (VECTOR(int32_t, 2))((-7L), 0x02FF40FCL), (VECTOR(int32_t, 2))((-7L), 0x02FF40FCL), (-7L), 0x02FF40FCL, (-7L), 0x02FF40FCL), // p_20->g_3
        {0x6D26586BL,0x6D26586BL,0x6D26586BL,0x6D26586BL,0x6D26586BL,0x6D26586BL,0x6D26586BL,0x6D26586BL,0x6D26586BL}, // p_20->g_13
        0xC0726272L, // p_20->g_17
        sequence_input[get_global_id(0)], // p_20->global_0_offset
        sequence_input[get_global_id(1)], // p_20->global_1_offset
        sequence_input[get_global_id(2)], // p_20->global_2_offset
        sequence_input[get_local_id(0)], // p_20->local_0_offset
        sequence_input[get_local_id(1)], // p_20->local_1_offset
        sequence_input[get_local_id(2)], // p_20->local_2_offset
        sequence_input[get_group_id(0)], // p_20->group_0_offset
        sequence_input[get_group_id(1)], // p_20->group_1_offset
        sequence_input[get_group_id(2)], // p_20->group_2_offset
    };
    c_21 = c_22;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_20);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_20->g_3.s0, "p_20->g_3.s0", print_hash_value);
    transparent_crc(p_20->g_3.s1, "p_20->g_3.s1", print_hash_value);
    transparent_crc(p_20->g_3.s2, "p_20->g_3.s2", print_hash_value);
    transparent_crc(p_20->g_3.s3, "p_20->g_3.s3", print_hash_value);
    transparent_crc(p_20->g_3.s4, "p_20->g_3.s4", print_hash_value);
    transparent_crc(p_20->g_3.s5, "p_20->g_3.s5", print_hash_value);
    transparent_crc(p_20->g_3.s6, "p_20->g_3.s6", print_hash_value);
    transparent_crc(p_20->g_3.s7, "p_20->g_3.s7", print_hash_value);
    transparent_crc(p_20->g_3.s8, "p_20->g_3.s8", print_hash_value);
    transparent_crc(p_20->g_3.s9, "p_20->g_3.s9", print_hash_value);
    transparent_crc(p_20->g_3.sa, "p_20->g_3.sa", print_hash_value);
    transparent_crc(p_20->g_3.sb, "p_20->g_3.sb", print_hash_value);
    transparent_crc(p_20->g_3.sc, "p_20->g_3.sc", print_hash_value);
    transparent_crc(p_20->g_3.sd, "p_20->g_3.sd", print_hash_value);
    transparent_crc(p_20->g_3.se, "p_20->g_3.se", print_hash_value);
    transparent_crc(p_20->g_3.sf, "p_20->g_3.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_20->g_13[i], "p_20->g_13[i]", print_hash_value);

    }
    transparent_crc(p_20->g_17, "p_20->g_17", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
