// --atomics 69 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 41,71,3 -l 41,1,1
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
{31,22,19,8,28,26,30,16,15,37,39,5,36,24,34,13,9,38,14,23,33,17,10,18,4,7,12,0,1,2,27,40,21,29,11,25,3,6,20,35,32}, // permutation 0
{5,31,17,29,23,19,2,36,30,4,25,27,3,16,38,21,39,7,32,22,28,35,1,18,14,20,8,34,33,15,9,13,11,12,0,37,6,40,24,10,26}, // permutation 1
{40,26,20,34,24,33,7,4,19,1,38,39,2,9,28,21,32,29,15,0,10,11,17,30,36,13,22,23,18,3,12,25,6,8,5,14,35,31,27,37,16}, // permutation 2
{30,16,8,24,34,13,29,20,17,9,0,38,15,12,1,4,18,6,40,33,19,11,3,31,27,35,28,23,5,14,2,21,32,26,22,39,37,10,36,25,7}, // permutation 3
{25,35,34,23,20,2,30,12,18,3,0,31,15,36,9,21,17,40,7,13,38,28,10,39,4,1,32,16,19,26,24,37,6,33,22,11,27,8,29,5,14}, // permutation 4
{26,13,19,3,23,8,25,18,20,28,29,10,5,37,33,14,21,7,40,39,9,12,22,0,35,2,34,32,15,4,17,1,11,30,16,27,24,38,6,36,31}, // permutation 5
{7,12,18,38,2,37,8,30,6,20,9,36,28,39,29,1,26,3,31,4,5,10,14,15,21,27,22,34,24,33,11,0,16,13,17,32,23,35,19,25,40}, // permutation 6
{9,11,22,16,3,36,15,14,2,30,35,13,7,18,37,33,38,29,23,17,28,19,20,8,40,26,0,24,6,25,10,21,4,12,1,39,34,27,32,5,31}, // permutation 7
{2,28,13,4,32,14,1,6,17,12,35,5,8,36,29,24,20,19,37,9,27,15,0,25,21,23,31,22,18,26,3,10,39,34,33,11,7,30,38,16,40}, // permutation 8
{31,12,37,10,29,33,1,25,8,14,27,11,17,4,15,30,22,0,7,38,2,35,5,32,39,6,18,40,34,3,26,9,36,28,16,19,24,23,21,13,20} // permutation 9
};

// Seed: 68

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   volatile uint8_t  f1;
   volatile uint32_t  f2;
};

struct S1 {
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
uint8_t  func_1(struct S1 * p_156);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_156->l_comm_values
 * writes:
 */
uint8_t  func_1(struct S1 * p_156)
{ /* block id: 4 */
    if ((atomic_inc(&p_156->g_atomic_input[69 * get_linear_group_id() + 61]) == 3))
    { /* block id: 6 */
        int32_t l_2 = 0x0FC558BAL;
        int64_t l_155 = 0x25E49070C8B1AC3CL;
        for (l_2 = 0; (l_2 > 10); l_2 = safe_add_func_int8_t_s_s(l_2, 1))
        { /* block id: 9 */
            int32_t *l_5 = (void*)0;
            l_5 = (void*)0;
        }
        for (l_2 = 24; (l_2 < 20); l_2 = safe_sub_func_int16_t_s_s(l_2, 1))
        { /* block id: 14 */
            VECTOR(int16_t, 16) l_8 = (VECTOR(int16_t, 16))(0x0CC2L, (VECTOR(int16_t, 4))(0x0CC2L, (VECTOR(int16_t, 2))(0x0CC2L, (-1L)), (-1L)), (-1L), 0x0CC2L, (-1L), (VECTOR(int16_t, 2))(0x0CC2L, (-1L)), (VECTOR(int16_t, 2))(0x0CC2L, (-1L)), 0x0CC2L, (-1L), 0x0CC2L, (-1L));
            int32_t l_10 = (-4L);
            int32_t *l_9[1][4][2] = {{{&l_10,&l_10},{&l_10,&l_10},{&l_10,&l_10},{&l_10,&l_10}}};
            int32_t *l_11[4][9][7] = {{{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10}},{{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10}},{{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10}},{{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10},{&l_10,&l_10,&l_10,&l_10,&l_10,&l_10,&l_10}}};
            int32_t l_12 = 0x64BA8B35L;
            int32_t l_13 = 0x59C45C1DL;
            uint32_t l_14 = 0x8213AF72L;
            int8_t l_17 = (-7L);
            int i, j, k;
            l_11[2][2][5] = (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_8.sa8)).xyxx)).w , l_9[0][2][1]);
            l_14++;
            if (l_17)
            { /* block id: 17 */
                int32_t l_18 = 0x42F3D479L;
                uint64_t l_31 = 6UL;
                int8_t l_32 = 0x62L;
                if (l_18)
                { /* block id: 18 */
                    int32_t l_19[7][10] = {{0L,0x3CB5AF9FL,0x64D8D955L,0x4BFCF419L,0x6F49C23EL,0x1A8551B3L,0x1A8551B3L,0x6F49C23EL,0x4BFCF419L,0x64D8D955L},{0L,0x3CB5AF9FL,0x64D8D955L,0x4BFCF419L,0x6F49C23EL,0x1A8551B3L,0x1A8551B3L,0x6F49C23EL,0x4BFCF419L,0x64D8D955L},{0L,0x3CB5AF9FL,0x64D8D955L,0x4BFCF419L,0x6F49C23EL,0x1A8551B3L,0x1A8551B3L,0x6F49C23EL,0x4BFCF419L,0x64D8D955L},{0L,0x3CB5AF9FL,0x64D8D955L,0x4BFCF419L,0x6F49C23EL,0x1A8551B3L,0x1A8551B3L,0x6F49C23EL,0x4BFCF419L,0x64D8D955L},{0L,0x3CB5AF9FL,0x64D8D955L,0x4BFCF419L,0x6F49C23EL,0x1A8551B3L,0x1A8551B3L,0x6F49C23EL,0x4BFCF419L,0x64D8D955L},{0L,0x3CB5AF9FL,0x64D8D955L,0x4BFCF419L,0x6F49C23EL,0x1A8551B3L,0x1A8551B3L,0x6F49C23EL,0x4BFCF419L,0x64D8D955L},{0L,0x3CB5AF9FL,0x64D8D955L,0x4BFCF419L,0x6F49C23EL,0x1A8551B3L,0x1A8551B3L,0x6F49C23EL,0x4BFCF419L,0x64D8D955L}};
                    int i, j;
                    for (l_19[2][9] = 0; (l_19[2][9] > (-18)); l_19[2][9]--)
                    { /* block id: 21 */
                        uint32_t l_22 = 0x90638325L;
                        int32_t l_27 = 4L;
                        int32_t *l_26 = &l_27;
                        int32_t **l_25 = &l_26;
                        int32_t **l_28 = &l_26;
                        --l_22;
                        l_28 = l_25;
                    }
                }
                else
                { /* block id: 25 */
                    int32_t l_29 = 0x4A737B78L;
                    uint16_t l_30 = 0UL;
                    l_30 = (l_29 , (-1L));
                }
                l_32 = l_31;
            }
            else
            { /* block id: 29 */
                VECTOR(int8_t, 16) l_33 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x71L), 0x71L), 0x71L, (-1L), 0x71L, (VECTOR(int8_t, 2))((-1L), 0x71L), (VECTOR(int8_t, 2))((-1L), 0x71L), (-1L), 0x71L, (-1L), 0x71L);
                int16_t l_34 = 5L;
                uint8_t l_35 = 5UL;
                int i;
                if ((l_35 &= (l_34 |= (l_33.s0 = 0x7AD54077L))))
                { /* block id: 33 */
                    VECTOR(int32_t, 16) l_36 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-2L)), (-2L)), (-2L), 1L, (-2L), (VECTOR(int32_t, 2))(1L, (-2L)), (VECTOR(int32_t, 2))(1L, (-2L)), 1L, (-2L), 1L, (-2L));
                    uint16_t l_37 = 2UL;
                    int32_t l_38 = 0L;
                    int64_t l_39 = 0x597B6EB5C50EC319L;
                    uint32_t l_40 = 0x43232AF7L;
                    uint32_t l_43 = 4294967294UL;
                    int i;
                    l_37 &= ((VECTOR(int32_t, 8))(l_36.s012777fc)).s3;
                    l_40--;
                    if (l_43)
                    { /* block id: 36 */
                        uint8_t l_44 = 255UL;
                        int32_t l_48[9][7] = {{(-1L),(-2L),(-2L),(-1L),(-1L),(-2L),(-2L)},{(-1L),(-2L),(-2L),(-1L),(-1L),(-2L),(-2L)},{(-1L),(-2L),(-2L),(-1L),(-1L),(-2L),(-2L)},{(-1L),(-2L),(-2L),(-1L),(-1L),(-2L),(-2L)},{(-1L),(-2L),(-2L),(-1L),(-1L),(-2L),(-2L)},{(-1L),(-2L),(-2L),(-1L),(-1L),(-2L),(-2L)},{(-1L),(-2L),(-2L),(-1L),(-1L),(-2L),(-2L)},{(-1L),(-2L),(-2L),(-1L),(-1L),(-2L),(-2L)},{(-1L),(-2L),(-2L),(-1L),(-1L),(-2L),(-2L)}};
                        int32_t *l_47 = &l_48[7][2];
                        int8_t l_49 = (-1L);
                        uint32_t l_50 = 4294967295UL;
                        int8_t l_51 = 0x13L;
                        int i, j;
                        ++l_44;
                        l_11[3][2][0] = l_47;
                        l_50 &= ((*l_47) = l_49);
                        (*l_47) ^= l_51;
                    }
                    else
                    { /* block id: 42 */
                        uint64_t l_52 = 18446744073709551615UL;
                        uint8_t l_53 = 0xB0L;
                        int32_t l_54 = 1L;
                        uint16_t l_55[4];
                        VECTOR(int8_t, 2) l_56 = (VECTOR(int8_t, 2))(0x49L, 1L);
                        VECTOR(int32_t, 16) l_57 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x0CB415C8L), 0x0CB415C8L), 0x0CB415C8L, (-10L), 0x0CB415C8L, (VECTOR(int32_t, 2))((-10L), 0x0CB415C8L), (VECTOR(int32_t, 2))((-10L), 0x0CB415C8L), (-10L), 0x0CB415C8L, (-10L), 0x0CB415C8L);
                        uint16_t l_58[2];
                        int64_t l_59 = (-9L);
                        VECTOR(int8_t, 16) l_60 = (VECTOR(int8_t, 16))(0x67L, (VECTOR(int8_t, 4))(0x67L, (VECTOR(int8_t, 2))(0x67L, 0x1BL), 0x1BL), 0x1BL, 0x67L, 0x1BL, (VECTOR(int8_t, 2))(0x67L, 0x1BL), (VECTOR(int8_t, 2))(0x67L, 0x1BL), 0x67L, 0x1BL, 0x67L, 0x1BL);
                        VECTOR(uint64_t, 2) l_61 = (VECTOR(uint64_t, 2))(0UL, 0x443EFFA934127882L);
                        uint16_t l_62[1];
                        int32_t l_63 = 0x7325EC3EL;
                        uint32_t l_64 = 0x1191D719L;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_55[i] = 0x2604L;
                        for (i = 0; i < 2; i++)
                            l_58[i] = 3UL;
                        for (i = 0; i < 1; i++)
                            l_62[i] = 65535UL;
                        l_54 = ((l_8.s1 = l_52) , (l_53 = 9L));
                        l_64 ^= (((l_55[1] , ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(0x1BL, 9L)))).yxyyxxxyxxyyxxyy)))))), ((VECTOR(int8_t, 4))(l_56.yyxy)).zyyxyywyzxyxyzzz, ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(1L, (((VECTOR(int32_t, 2))(l_57.s55)).lo , 0x38L), 1L, (l_33.s3 = (l_58[0] , (l_59 , 5L))), ((VECTOR(int8_t, 4))(l_60.se98d)))))).hi, (int8_t)(-1L)))).yxwxwyzyzywwzywy))).se) , (l_62[0] ^= ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_61.yx)).xxyxxyxyxxxxyxyy)).sb)) , l_63);
                        l_9[0][2][1] = (void*)0;
                    }
                    for (l_37 = 0; (l_37 != 40); l_37 = safe_add_func_uint16_t_u_u(l_37, 1))
                    { /* block id: 53 */
                        VECTOR(int32_t, 2) l_67 = (VECTOR(int32_t, 2))(0x4CD07D1FL, (-1L));
                        int32_t l_68 = (-1L);
                        int32_t l_69 = 0x52902D4EL;
                        int32_t l_70 = 9L;
                        VECTOR(int32_t, 8) l_71 = (VECTOR(int32_t, 8))(0x152CE29BL, (VECTOR(int32_t, 4))(0x152CE29BL, (VECTOR(int32_t, 2))(0x152CE29BL, (-10L)), (-10L)), (-10L), 0x152CE29BL, (-10L));
                        uint16_t l_72 = 0UL;
                        VECTOR(int32_t, 4) l_73 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5F730A6AL), 0x5F730A6AL);
                        VECTOR(int32_t, 2) l_74 = (VECTOR(int32_t, 2))(0x6B2300A9L, (-3L));
                        int8_t l_75 = 0x4DL;
                        VECTOR(int32_t, 4) l_76 = (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), (-6L)), (-6L));
                        VECTOR(int32_t, 4) l_77 = (VECTOR(int32_t, 4))(0x380995AFL, (VECTOR(int32_t, 2))(0x380995AFL, (-6L)), (-6L));
                        int32_t l_78 = 0L;
                        VECTOR(int32_t, 2) l_79 = (VECTOR(int32_t, 2))((-1L), (-2L));
                        VECTOR(int32_t, 16) l_80 = (VECTOR(int32_t, 16))(0x24ECE64CL, (VECTOR(int32_t, 4))(0x24ECE64CL, (VECTOR(int32_t, 2))(0x24ECE64CL, 0x425D2621L), 0x425D2621L), 0x425D2621L, 0x24ECE64CL, 0x425D2621L, (VECTOR(int32_t, 2))(0x24ECE64CL, 0x425D2621L), (VECTOR(int32_t, 2))(0x24ECE64CL, 0x425D2621L), 0x24ECE64CL, 0x425D2621L, 0x24ECE64CL, 0x425D2621L);
                        int32_t l_81 = 0x3141CCEBL;
                        uint8_t l_82 = 0xD3L;
                        uint8_t l_85 = 0x64L;
                        VECTOR(int16_t, 2) l_86 = (VECTOR(int16_t, 2))(0x6D5BL, 7L);
                        int8_t l_87 = 0L;
                        VECTOR(int16_t, 8) l_88 = (VECTOR(int16_t, 8))(0x33B7L, (VECTOR(int16_t, 4))(0x33B7L, (VECTOR(int16_t, 2))(0x33B7L, 1L), 1L), 1L, 0x33B7L, 1L);
                        uint32_t l_89[5] = {0x8F8F025CL,0x8F8F025CL,0x8F8F025CL,0x8F8F025CL,0x8F8F025CL};
                        int32_t l_90 = 1L;
                        uint32_t l_91 = 0xC1DEFFE8L;
                        int i;
                        l_9[0][2][1] = (void*)0;
                        l_11[2][7][1] = (l_9[0][0][1] = (void*)0);
                        l_68 = (l_67.x = ((VECTOR(int32_t, 8))(l_67.yxyyyyyy)).s1);
                        l_81 &= ((VECTOR(int32_t, 16))(0x60CE0BB6L, (l_70 = l_69), ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(0x2BBA7F7EL, ((VECTOR(int32_t, 2))(l_71.s26)), 5L)), ((VECTOR(int32_t, 16))(0x4792CDF4L, l_72, 0x26045FF6L, 0x0A95D680L, ((VECTOR(int32_t, 8))(l_73.yyzxzwzy)), ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_74.xxyxyyyyyyyyxyxy)).odd)).hi)).yywwyyzwwzyxzxxx)).sc520, ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 2))(0x076E496EL, 1L)).xyxyyxyxyyxxyxyy, (int32_t)l_75))).sf194, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(4L, 0x1797D0E0L)))).yxxx))).w, 0x16660493L, 2L, 0L)).s2087))).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(0x4E31A558L, ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_76.yxywxxzxwzzwxwzy)))).odd, ((VECTOR(int32_t, 8))(l_77.yyyxwxwx))))), l_78, 0x5E10BBF0L, (-7L), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(9L, (-1L))).yyxx)), ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_79.xy)), 0x7D739AC8L, ((VECTOR(int32_t, 8))(l_80.sd558a6d5)), (-9L), ((l_82--) , ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(l_85, ((VECTOR(int16_t, 4))(l_86.xxyx)), l_87, 0x7E42L, 0x69BDL)).s42, ((VECTOR(int16_t, 2))(l_88.s30))))).xxxxyyxx, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(65535UL, l_89[0], 65529UL, 65535UL)).wyyzxxxx))))).s23)).lo), (GROUP_DIVERGE(1, 1) , l_90), 0x10E1A7F2L, 0x4526E093L)).se1fd, ((VECTOR(int32_t, 4))(0x0D460205L))))))), ((VECTOR(int32_t, 8))(0x360E2682L))))).s1152313300343256, ((VECTOR(int32_t, 16))(0L))))).odd)).lo, ((VECTOR(int32_t, 4))(0x514B5F72L))))))))).s5835)).odd))), l_91, ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 2))(0x5D027D66L)), 5L)).sa;
                    }
                }
                else
                { /* block id: 63 */
                    int8_t l_92 = 1L;
                    if (l_92)
                    { /* block id: 64 */
                        uint32_t l_93 = 0x33F92C7FL;
                        uint32_t l_94 = 0x4A2DA50CL;
                        int64_t l_95 = 4L;
                        uint32_t l_96 = 0xB1779622L;
                        int16_t l_97[10];
                        VECTOR(int64_t, 8) l_98 = (VECTOR(int64_t, 8))(0x5C1886F3FE561D20L, (VECTOR(int64_t, 4))(0x5C1886F3FE561D20L, (VECTOR(int64_t, 2))(0x5C1886F3FE561D20L, 0x3011AC9FAB1CF0A5L), 0x3011AC9FAB1CF0A5L), 0x3011AC9FAB1CF0A5L, 0x5C1886F3FE561D20L, 0x3011AC9FAB1CF0A5L);
                        struct S0 l_99 = {1UL,249UL,0xF293FBD4L};/* VOLATILE GLOBAL l_99 */
                        struct S0 l_100 = {0x27E77908L,0xCFL,0UL};/* VOLATILE GLOBAL l_100 */
                        uint64_t l_101[2][5];
                        uint8_t l_104 = 0x76L;
                        int32_t l_106 = 0x622FAA98L;
                        int32_t *l_105 = &l_106;
                        int i, j;
                        for (i = 0; i < 10; i++)
                            l_97[i] = (-4L);
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_101[i][j] = 0x753EC00BEEA7B122L;
                        }
                        l_9[0][3][1] = (void*)0;
                        l_100 = (((l_93 , 0x38EE3FE4L) , (((l_34 ^= (((VECTOR(uint16_t, 2))(0x70DEL, 65535UL)).hi , (l_96 &= ((l_94 , 0x43EAL) , l_95)))) , l_97[1]) , (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_98.s3324256771327222)).even)).even)).z , 0x0109A6A1L))) , l_99);
                        --l_101[0][1];
                        l_11[2][2][5] = (l_104 , l_105);
                    }
                    else
                    { /* block id: 71 */
                        uint8_t l_107 = 5UL;
                        uint64_t l_108 = 0x6B1698A3390C0CC1L;
                        l_108 = l_107;
                    }
                }
                for (l_33.sc = 0; (l_33.sc <= 23); l_33.sc = safe_add_func_uint8_t_u_u(l_33.sc, 1))
                { /* block id: 77 */
                    int64_t l_111 = 0L;
                    int32_t l_112 = (-1L);
                    uint32_t l_113 = 4294967288UL;
                    uint16_t l_116 = 0x2BB3L;
                    VECTOR(uint32_t, 4) l_119 = (VECTOR(uint32_t, 4))(0x9919FE58L, (VECTOR(uint32_t, 2))(0x9919FE58L, 4294967287UL), 4294967287UL);
                    VECTOR(uint32_t, 8) l_120 = (VECTOR(uint32_t, 8))(0xE8BE43F0L, (VECTOR(uint32_t, 4))(0xE8BE43F0L, (VECTOR(uint32_t, 2))(0xE8BE43F0L, 1UL), 1UL), 1UL, 0xE8BE43F0L, 1UL);
                    VECTOR(uint32_t, 16) l_121 = (VECTOR(uint32_t, 16))(9UL, (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 0xC417BC72L), 0xC417BC72L), 0xC417BC72L, 9UL, 0xC417BC72L, (VECTOR(uint32_t, 2))(9UL, 0xC417BC72L), (VECTOR(uint32_t, 2))(9UL, 0xC417BC72L), 9UL, 0xC417BC72L, 9UL, 0xC417BC72L);
                    VECTOR(uint32_t, 2) l_122 = (VECTOR(uint32_t, 2))(9UL, 0xD848D3DAL);
                    VECTOR(uint32_t, 16) l_123 = (VECTOR(uint32_t, 16))(0x4D5399E5L, (VECTOR(uint32_t, 4))(0x4D5399E5L, (VECTOR(uint32_t, 2))(0x4D5399E5L, 0UL), 0UL), 0UL, 0x4D5399E5L, 0UL, (VECTOR(uint32_t, 2))(0x4D5399E5L, 0UL), (VECTOR(uint32_t, 2))(0x4D5399E5L, 0UL), 0x4D5399E5L, 0UL, 0x4D5399E5L, 0UL);
                    VECTOR(uint32_t, 8) l_124 = (VECTOR(uint32_t, 8))(0xB900DAA4L, (VECTOR(uint32_t, 4))(0xB900DAA4L, (VECTOR(uint32_t, 2))(0xB900DAA4L, 6UL), 6UL), 6UL, 0xB900DAA4L, 6UL);
                    VECTOR(uint32_t, 8) l_125 = (VECTOR(uint32_t, 8))(0xA4DADB69L, (VECTOR(uint32_t, 4))(0xA4DADB69L, (VECTOR(uint32_t, 2))(0xA4DADB69L, 4294967290UL), 4294967290UL), 4294967290UL, 0xA4DADB69L, 4294967290UL);
                    uint32_t l_126 = 4294967295UL;
                    VECTOR(uint32_t, 2) l_127 = (VECTOR(uint32_t, 2))(0xE036E825L, 4294967293UL);
                    uint64_t l_128 = 0x109F51DABA5DBC7CL;
                    VECTOR(uint32_t, 16) l_129 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x11BDEC8BL), 0x11BDEC8BL), 0x11BDEC8BL, 4294967295UL, 0x11BDEC8BL, (VECTOR(uint32_t, 2))(4294967295UL, 0x11BDEC8BL), (VECTOR(uint32_t, 2))(4294967295UL, 0x11BDEC8BL), 4294967295UL, 0x11BDEC8BL, 4294967295UL, 0x11BDEC8BL);
                    VECTOR(uint32_t, 4) l_130 = (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 0x9BE9E0A6L), 0x9BE9E0A6L);
                    int64_t l_131 = 5L;
                    int32_t l_132 = 0x09DD6967L;
                    uint8_t l_133[7] = {0x37L,0xBFL,0x37L,0x37L,0xBFL,0x37L,0x37L};
                    int32_t l_134[10] = {0x2C358F46L,1L,0x2C358F46L,0x2C358F46L,1L,0x2C358F46L,0x2C358F46L,1L,0x2C358F46L,0x2C358F46L};
                    int8_t l_135 = 1L;
                    int16_t l_136 = 0x23D8L;
                    int32_t l_137 = 0x7422AACBL;
                    uint32_t l_138 = 0x19A6AD73L;
                    int32_t l_139 = 1L;
                    int64_t l_140[3];
                    int16_t l_141 = 0x3068L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_140[i] = 0x3C0282D23503C882L;
                    l_113++;
                    l_116--;
                    l_112 |= ((l_141 ^= ((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 4))(l_119.xwyy)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 4))(l_120.s3556)).hi, ((VECTOR(uint32_t, 16))(l_121.s429456bcad55b1a0)).s45))), 5UL, 0x2E08F322L, 0UL, 0x970B7025L, 0x70B0F04EL, 0x97FD67A2L, 0xF268CC48L, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_122.yyyx)), ((VECTOR(uint32_t, 2))(l_123.s36)), 0x9111B8B9L, 0xEDA0BE55L)).hi, ((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 4))(l_124.s1113)).even))), ((VECTOR(uint32_t, 8))(l_125.s72632401)).s71))).yyxy, ((VECTOR(uint32_t, 16))(l_126, 0x79449671L, ((VECTOR(uint32_t, 4))(0x15F63DABL, 0x45AC62A2L, 0x11651A26L, 3UL)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0x8A6C423DL, 0x51E6A045L)), 0xE5196A25L, 4294967289UL)), 0UL, ((VECTOR(uint32_t, 4))(1UL, ((VECTOR(uint32_t, 2))(l_127.xy)), 4294967288UL)), 0xB5F74D8AL)).sa762))).xzyxxywxxzxzzwzz)).sdc)), (l_128 , FAKE_DIVERGE(p_156->local_0_offset, get_local_id(0), 10)), 0xB1F33D14L, 0xD9186F8BL, 4294967290UL, 0UL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(0x2F87E497L, ((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_129.s57ba)).yxxxxwxzwxywyyyz)).odd, ((VECTOR(uint32_t, 2))(l_130.zx)).yxxxxyyx, ((VECTOR(uint32_t, 16))(0x9171F469L, 4UL, l_131, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 8))(65535UL, 0x18C7L, 65535UL, GROUP_DIVERGE(0, 1), 1UL, 0xF690L, 0x4B9FL, 0x94E3L)).s63, ((VECTOR(uint16_t, 16))(0x6731L, ((VECTOR(uint16_t, 4))(65535UL, 65531UL, 1UL, 65535UL)), (((l_133[6] &= l_132) , l_134[6]) , GROUP_DIVERGE(2, 1)), l_135, 0x2E5FL, l_136, ((VECTOR(uint16_t, 2))(0UL)), 0xC89EL, 65535UL, l_137, 65535UL, 0xFC6AL)).s77))), 1UL, 0x04F09486L, ((VECTOR(uint32_t, 8))(0xAAB667D2L)), ((VECTOR(uint32_t, 2))(0x0D558BC8L)), 4294967295UL, 0x4AD1FBBAL)).s7c))), l_138, 0x51A5E322L, ((VECTOR(uint32_t, 2))(0x7E302831L)), 1UL, 0x1D8F3208L)), ((VECTOR(uint32_t, 4))(4294967290UL)), 8UL)).odd))).s43, ((VECTOR(uint32_t, 2))(0x056FA72FL))))).xyyxyxxy)).s72, ((VECTOR(uint32_t, 2))(0UL))))).yxxxxyxyxyxxyxyy)).s4e03, ((VECTOR(uint32_t, 4))(0xA3E34102L))))), 2UL, 0x949A0C9DL, 0x35C9623FL)).s3667705254603733)).sf9)), l_139, ((VECTOR(uint32_t, 4))(0xF59D7E22L)), 4294967295UL, 0x4F516043L)).s8, 0xFDB1AD61L, l_140[2], 0x5D252147L, 0xC4373212L, 0UL, 4294967287UL)).s65)), ((VECTOR(uint32_t, 2))(1UL))))).xxxx)), ((VECTOR(uint32_t, 4))(1UL)), ((VECTOR(uint32_t, 4))(0UL))))).yyxwwwyx)).hi))).z) , (-10L));
                    for (l_136 = (-24); (l_136 <= 21); l_136 = safe_add_func_uint16_t_u_u(l_136, 6))
                    { /* block id: 85 */
                        int32_t l_145 = (-2L);
                        int32_t *l_144 = &l_145;
                        int32_t *l_146 = &l_145;
                        l_146 = l_144;
                    }
                }
                for (l_33.s5 = 8; (l_33.s5 <= 29); l_33.s5 = safe_add_func_uint64_t_u_u(l_33.s5, 1))
                { /* block id: 91 */
                    uint16_t l_149[8][6][4] = {{{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L}},{{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L}},{{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L}},{{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L}},{{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L}},{{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L}},{{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L}},{{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L},{0xEE91L,0xEE91L,0x731BL,0x3E81L}}};
                    int32_t l_151 = (-3L);
                    int32_t *l_150 = &l_151;
                    int i, j, k;
                    l_11[3][3][3] = ((l_149[4][4][2] , 0x33C7FF32E4EA202BL) , l_150);
                    for (l_149[4][4][2] = 0; (l_149[4][4][2] == 13); l_149[4][4][2] = safe_add_func_int8_t_s_s(l_149[4][4][2], 9))
                    { /* block id: 95 */
                        int32_t l_154 = 0x71BF990CL;
                        (*l_150) ^= l_154;
                    }
                }
            }
        }
        l_2 = l_155;
        unsigned int result = 0;
        result += l_2;
        result += l_155;
        atomic_add(&p_156->g_special_values[69 * get_linear_group_id() + 61], result);
    }
    else
    { /* block id: 102 */
        (1 + 1);
    }
    return p_156->l_comm_values[(safe_mod_func_uint32_t_u_u(p_156->tid, 41))];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[41];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 41; i++)
            l_comm_values[i] = 1;
    struct S1 c_157;
    struct S1* p_156 = &c_157;
    struct S1 c_158 = {
        0, // p_156->v_collective
        sequence_input[get_global_id(0)], // p_156->global_0_offset
        sequence_input[get_global_id(1)], // p_156->global_1_offset
        sequence_input[get_global_id(2)], // p_156->global_2_offset
        sequence_input[get_local_id(0)], // p_156->local_0_offset
        sequence_input[get_local_id(1)], // p_156->local_1_offset
        sequence_input[get_local_id(2)], // p_156->local_2_offset
        sequence_input[get_group_id(0)], // p_156->group_0_offset
        sequence_input[get_group_id(1)], // p_156->group_1_offset
        sequence_input[get_group_id(2)], // p_156->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 41)), permutations[0][get_linear_local_id()])), // p_156->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_157 = c_158;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_156);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_156->v_collective, "p_156->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 69; i++)
            transparent_crc(p_156->g_special_values[i + 69 * get_linear_group_id()], "p_156->g_special_values[i + 69 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_156->l_comm_values[get_linear_local_id()], "p_156->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_156->g_comm_values[get_linear_group_id() * 41 + get_linear_local_id()], "p_156->g_comm_values[get_linear_group_id() * 41 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
