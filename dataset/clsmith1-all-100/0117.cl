// --atomics 17 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 83,16,3 -l 1,16,3
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

__constant uint32_t permutations[10][48] = {
{7,25,39,17,37,38,45,44,23,33,11,43,30,3,47,36,19,10,21,26,20,41,4,9,34,18,42,24,40,8,32,35,46,13,31,16,27,22,2,6,15,12,1,28,29,14,5,0}, // permutation 0
{39,22,34,30,28,40,17,5,33,31,27,45,4,46,21,43,23,38,29,6,0,19,16,9,8,10,32,2,42,36,15,24,11,14,18,47,12,20,35,25,3,13,7,1,41,26,44,37}, // permutation 1
{27,33,43,14,44,22,24,17,6,30,15,41,20,35,42,7,8,29,4,46,23,10,16,34,39,21,36,3,2,40,37,18,0,9,19,32,12,5,25,11,47,45,26,13,28,31,38,1}, // permutation 2
{18,16,38,29,25,26,15,31,37,20,12,36,28,30,5,41,46,10,17,9,3,40,22,1,35,24,44,39,23,34,13,4,42,33,2,45,0,32,21,8,47,19,14,7,27,11,43,6}, // permutation 3
{16,24,21,5,45,0,1,12,42,46,31,44,36,15,22,29,14,37,7,19,40,17,38,9,3,34,47,33,27,8,18,35,39,23,32,28,30,26,10,43,2,13,25,6,4,20,41,11}, // permutation 4
{7,9,34,38,5,27,1,18,45,41,37,8,12,6,10,2,26,36,44,30,46,25,22,23,3,19,15,17,21,13,24,0,33,20,14,11,35,42,47,43,40,31,4,32,28,16,39,29}, // permutation 5
{43,15,34,39,45,28,9,23,40,11,37,6,14,41,38,29,13,10,24,0,4,33,19,42,12,5,1,7,2,17,36,3,8,26,16,22,20,35,21,32,46,18,30,47,31,44,27,25}, // permutation 6
{6,4,32,30,12,39,9,11,42,18,27,14,22,36,17,38,28,13,15,25,46,41,20,45,19,26,10,2,24,8,33,0,44,37,16,34,23,21,40,29,7,5,31,3,43,47,35,1}, // permutation 7
{47,23,19,38,7,20,31,22,41,34,33,24,45,37,42,17,15,36,4,40,3,26,21,43,28,27,13,14,2,11,5,25,44,16,30,1,8,35,32,39,9,12,18,10,46,29,0,6}, // permutation 8
{27,37,30,26,0,13,35,2,40,10,34,12,46,44,24,15,4,42,32,19,6,14,45,33,38,11,5,36,7,39,17,29,9,21,47,23,8,16,18,31,41,25,43,20,22,3,1,28} // permutation 9
};

// Seed: 117

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   uint32_t  f1;
   uint32_t  f2;
   int16_t  f3;
   uint32_t  f4;
};

union U2 {
   int8_t  f0;
   int8_t * f1;
   volatile int32_t  f2;
   uint16_t  f3;
   int16_t  f4;
};

struct S3 {
    volatile struct S0 g_3;
    volatile struct S0 *g_2[6][4];
    volatile int32_t g_5;
    int32_t g_6[1];
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
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S3 * p_47);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_47->g_2 p_47->g_6 p_47->g_3.f2
 * writes: p_47->g_6
 */
uint64_t  func_1(struct S3 * p_47)
{ /* block id: 4 */
    volatile struct S0 *l_4 = &p_47->g_3;
    l_4 = p_47->g_2[0][3];
    for (p_47->g_6[0] = 8; (p_47->g_6[0] != (-19)); p_47->g_6[0] = safe_sub_func_int64_t_s_s(p_47->g_6[0], 1))
    { /* block id: 8 */
        if ((atomic_inc(&p_47->g_atomic_input[17 * get_linear_group_id() + 14]) == 1))
        { /* block id: 10 */
            int32_t l_9 = 1L;
            int16_t l_10 = 6L;
            int32_t *l_11[5][1][7] = {{{&l_9,&l_9,&l_9,&l_9,&l_9,&l_9,&l_9}},{{&l_9,&l_9,&l_9,&l_9,&l_9,&l_9,&l_9}},{{&l_9,&l_9,&l_9,&l_9,&l_9,&l_9,&l_9}},{{&l_9,&l_9,&l_9,&l_9,&l_9,&l_9,&l_9}},{{&l_9,&l_9,&l_9,&l_9,&l_9,&l_9,&l_9}}};
            int32_t *l_12 = (void*)0;
            int32_t *l_13 = &l_9;
            int i, j, k;
            l_10 = (l_9 &= 1L);
            l_13 = (l_12 = l_11[1][0][4]);
            for (l_10 = 0; (l_10 >= (-17)); l_10--)
            { /* block id: 17 */
                int32_t l_16 = 0x0C0E0752L;
                int32_t l_39 = 0L;
                for (l_16 = (-7); (l_16 == (-6)); ++l_16)
                { /* block id: 20 */
                    union U2 l_19 = {0x57L};/* VOLATILE GLOBAL l_19 */
                    int32_t l_20 = 8L;
                    uint8_t l_21 = 0xA2L;
                    uint16_t l_22 = 65535UL;
                    union U2 *l_35 = &l_19;
                    union U2 *l_36 = &l_19;
                    union U2 *l_37 = &l_19;
                    VECTOR(uint16_t, 16) l_38 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), (VECTOR(uint16_t, 2))(0UL, 65535UL), 0UL, 65535UL, 0UL, 65535UL);
                    int i;
                    (*l_12) |= (l_19 , l_20);
                    if ((l_22 &= l_21))
                    { /* block id: 23 */
                        uint32_t l_23 = 0xDFCC86F8L;
                        uint32_t l_26 = 0xD40A7FCCL;
                        l_23--;
                        ++l_26;
                    }
                    else
                    { /* block id: 26 */
                        struct S0 l_29 = {-1L,0xB71808ADL,4294967295UL,-4L,0x34E2E0F6L};
                        struct S0 l_30 = {-5L,0UL,0xF12AFBCAL,0x26E1L,1UL};
                        VECTOR(uint64_t, 16) l_31 = (VECTOR(uint64_t, 16))(0x8E20B4584502E46AL, (VECTOR(uint64_t, 4))(0x8E20B4584502E46AL, (VECTOR(uint64_t, 2))(0x8E20B4584502E46AL, 0xDAD24015E1B460D5L), 0xDAD24015E1B460D5L), 0xDAD24015E1B460D5L, 0x8E20B4584502E46AL, 0xDAD24015E1B460D5L, (VECTOR(uint64_t, 2))(0x8E20B4584502E46AL, 0xDAD24015E1B460D5L), (VECTOR(uint64_t, 2))(0x8E20B4584502E46AL, 0xDAD24015E1B460D5L), 0x8E20B4584502E46AL, 0xDAD24015E1B460D5L, 0x8E20B4584502E46AL, 0xDAD24015E1B460D5L);
                        int8_t **l_34[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_34[i] = (void*)0;
                        l_30 = l_29;
                        l_31.s4++;
                        l_34[0] = (void*)0;
                    }
                    l_37 = (l_36 = (l_35 = (void*)0));
                    (*l_12) &= l_38.sa;
                }
                if (l_39)
                { /* block id: 36 */
                    uint32_t l_40 = 0xBDC590CBL;
                    (*l_12) &= l_40;
                }
                else
                { /* block id: 38 */
                    struct S0 l_41 = {6L,4294967294UL,0x575E7E8EL,0L,0x95C8F381L};
                    struct S0 l_42 = {1L,4294967295UL,0x207E8793L,0x3104L,1UL};
                    int32_t l_43 = (-1L);
                    int8_t l_44 = 1L;
                    int32_t l_45 = 0L;
                    int8_t l_46 = 4L;
                    l_42 = l_41;
                    (*l_13) |= (l_46 = (((l_43 ^= (-9L)) , l_44) , l_45));
                }
            }
            unsigned int result = 0;
            result += l_9;
            result += l_10;
            atomic_add(&p_47->g_special_values[17 * get_linear_group_id() + 14], result);
        }
        else
        { /* block id: 45 */
            (1 + 1);
        }
    }
    return p_47->g_3.f2;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[48];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 48; i++)
            l_comm_values[i] = 1;
    struct S3 c_48;
    struct S3* p_47 = &c_48;
    struct S3 c_49 = {
        {0x0B9DBEA5L,0x23FA3A92L,0UL,0L,4294967295UL}, // p_47->g_3
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_47->g_2
        1L, // p_47->g_5
        {0x1CD329B3L}, // p_47->g_6
        0, // p_47->v_collective
        sequence_input[get_global_id(0)], // p_47->global_0_offset
        sequence_input[get_global_id(1)], // p_47->global_1_offset
        sequence_input[get_global_id(2)], // p_47->global_2_offset
        sequence_input[get_local_id(0)], // p_47->local_0_offset
        sequence_input[get_local_id(1)], // p_47->local_1_offset
        sequence_input[get_local_id(2)], // p_47->local_2_offset
        sequence_input[get_group_id(0)], // p_47->group_0_offset
        sequence_input[get_group_id(1)], // p_47->group_1_offset
        sequence_input[get_group_id(2)], // p_47->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 48)), permutations[0][get_linear_local_id()])), // p_47->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_48 = c_49;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_47);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_47->g_3.f0, "p_47->g_3.f0", print_hash_value);
    transparent_crc(p_47->g_3.f1, "p_47->g_3.f1", print_hash_value);
    transparent_crc(p_47->g_3.f2, "p_47->g_3.f2", print_hash_value);
    transparent_crc(p_47->g_3.f3, "p_47->g_3.f3", print_hash_value);
    transparent_crc(p_47->g_3.f4, "p_47->g_3.f4", print_hash_value);
    transparent_crc(p_47->g_5, "p_47->g_5", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_47->g_6[i], "p_47->g_6[i]", print_hash_value);

    }
    transparent_crc(p_47->v_collective, "p_47->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 17; i++)
            transparent_crc(p_47->g_special_values[i + 17 * get_linear_group_id()], "p_47->g_special_values[i + 17 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_47->l_comm_values[get_linear_local_id()], "p_47->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_47->g_comm_values[get_linear_group_id() * 48 + get_linear_local_id()], "p_47->g_comm_values[get_linear_group_id() * 48 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
