// ---fake_divergence -g 34,64,2 -l 1,1,2
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


// Seed: 38

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    volatile VECTOR(int8_t, 2) g_3;
    VECTOR(uint16_t, 4) g_5;
    int32_t g_7[8];
    int32_t * volatile g_6;
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
int16_t  func_1(struct S1 * p_35);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_35->g_3 p_35->g_5 p_35->g_6 p_35->g_7
 * writes: p_35->g_7
 */
int16_t  func_1(struct S1 * p_35)
{ /* block id: 4 */
    uint32_t l_2[4] = {2UL,2UL,2UL,2UL};
    VECTOR(uint16_t, 8) l_4 = (VECTOR(uint16_t, 8))(0xA733L, (VECTOR(uint16_t, 4))(0xA733L, (VECTOR(uint16_t, 2))(0xA733L, 5UL), 5UL), 5UL, 0xA733L, 5UL);
    int32_t l_9[6][1][9] = {{{0L,0L,0x17312B94L,0x288AF16DL,0x45C3C3AEL,0L,(-8L),0x7E011B55L,(-8L)}},{{0L,0L,0x17312B94L,0x288AF16DL,0x45C3C3AEL,0L,(-8L),0x7E011B55L,(-8L)}},{{0L,0L,0x17312B94L,0x288AF16DL,0x45C3C3AEL,0L,(-8L),0x7E011B55L,(-8L)}},{{0L,0L,0x17312B94L,0x288AF16DL,0x45C3C3AEL,0L,(-8L),0x7E011B55L,(-8L)}},{{0L,0L,0x17312B94L,0x288AF16DL,0x45C3C3AEL,0L,(-8L),0x7E011B55L,(-8L)}},{{0L,0L,0x17312B94L,0x288AF16DL,0x45C3C3AEL,0L,(-8L),0x7E011B55L,(-8L)}}};
    uint8_t l_13 = 0UL;
    VECTOR(int32_t, 8) l_16 = (VECTOR(int32_t, 8))(0x6232C2A4L, (VECTOR(int32_t, 4))(0x6232C2A4L, (VECTOR(int32_t, 2))(0x6232C2A4L, 0x30971CF7L), 0x30971CF7L), 0x30971CF7L, 0x6232C2A4L, 0x30971CF7L);
    int16_t l_21 = (-1L);
    int32_t l_26 = 5L;
    int64_t l_29[4][3] = {{2L,2L,2L},{2L,2L,2L},{2L,2L,2L},{2L,2L,2L}};
    uint32_t l_34 = 0xB81C666DL;
    int i, j, k;
    if (l_2[1])
    { /* block id: 5 */
        int32_t *l_8 = &p_35->g_7[6];
        int32_t *l_10 = &p_35->g_7[6];
        int32_t *l_11 = (void*)0;
        int32_t *l_12[10] = {&l_9[3][0][8],&l_9[3][0][8],&l_9[3][0][8],&l_9[3][0][8],&l_9[3][0][8],&l_9[3][0][8],&l_9[3][0][8],&l_9[3][0][8],&l_9[3][0][8],&l_9[3][0][8]};
        int i;
        (*p_35->g_6) = (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(p_35->g_3.xxxyyxxyxxxyxxyy)).s7688)).y <= (((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 4))(l_4.s6435)).xzwxwxzzyxywxwwx, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(p_35->g_5.xxzwzwzwyzyyzxzz))))))).se ^ p_35->g_5.z));
        (*l_8) = (l_2[2] > (((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x1FL, 0x06L)).yxxxxyyx)).s67)).even == (GROUP_DIVERGE(0, 1) > ((VECTOR(uint64_t, 2))(2UL, 0x046E74A6E8F59172L)).even)));
        l_13++;
    }
    else
    { /* block id: 9 */
        int32_t l_22 = 0x7B996340L;
        int32_t l_23 = 0x7FD326D3L;
        int32_t l_24 = 0x3986B299L;
        int32_t l_25 = 0x6288A3D8L;
        int32_t l_27 = 1L;
        int32_t l_28 = 0L;
        int32_t l_30 = 8L;
        uint32_t l_31 = 6UL;
        (*p_35->g_6) &= ((VECTOR(int32_t, 16))(l_16.s1741257010325740)).sa;
        for (l_13 = 15; (l_13 == 26); l_13 = safe_add_func_int16_t_s_s(l_13, 4))
        { /* block id: 13 */
            int32_t *l_19 = (void*)0;
            int32_t *l_20[3];
            int i;
            for (i = 0; i < 3; i++)
                l_20[i] = &l_9[3][0][8];
            l_31++;
        }
    }
    return l_34;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S1 c_36;
    struct S1* p_35 = &c_36;
    struct S1 c_37 = {
        (VECTOR(int8_t, 2))((-2L), 0L), // p_35->g_3
        (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 1UL), 1UL), // p_35->g_5
        {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)}, // p_35->g_7
        &p_35->g_7[6], // p_35->g_6
        sequence_input[get_global_id(0)], // p_35->global_0_offset
        sequence_input[get_global_id(1)], // p_35->global_1_offset
        sequence_input[get_global_id(2)], // p_35->global_2_offset
        sequence_input[get_local_id(0)], // p_35->local_0_offset
        sequence_input[get_local_id(1)], // p_35->local_1_offset
        sequence_input[get_local_id(2)], // p_35->local_2_offset
        sequence_input[get_group_id(0)], // p_35->group_0_offset
        sequence_input[get_group_id(1)], // p_35->group_1_offset
        sequence_input[get_group_id(2)], // p_35->group_2_offset
    };
    c_36 = c_37;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_35);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_35->g_3.x, "p_35->g_3.x", print_hash_value);
    transparent_crc(p_35->g_3.y, "p_35->g_3.y", print_hash_value);
    transparent_crc(p_35->g_5.x, "p_35->g_5.x", print_hash_value);
    transparent_crc(p_35->g_5.y, "p_35->g_5.y", print_hash_value);
    transparent_crc(p_35->g_5.z, "p_35->g_5.z", print_hash_value);
    transparent_crc(p_35->g_5.w, "p_35->g_5.w", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_35->g_7[i], "p_35->g_7[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
