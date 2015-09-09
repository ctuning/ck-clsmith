// ---fake_divergence ---inter_thread_comm -g 85,94,1 -l 1,47,1
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

__constant uint32_t permutations[10][47] = {
{9,23,17,8,30,20,12,42,36,37,40,16,22,29,46,41,45,32,11,5,1,28,7,0,35,6,43,18,15,26,4,31,27,19,44,14,24,2,34,25,13,39,10,21,3,33,38}, // permutation 0
{9,24,8,17,1,2,18,30,31,42,0,33,16,40,11,45,26,35,12,44,15,13,21,38,10,27,20,36,37,5,6,23,7,19,3,22,46,28,43,32,41,39,25,29,14,4,34}, // permutation 1
{15,34,19,32,38,1,2,8,44,22,11,37,29,10,42,26,9,46,43,4,33,31,18,17,3,20,6,12,36,28,14,13,30,45,27,41,24,23,35,16,21,39,40,5,7,25,0}, // permutation 2
{32,3,19,42,45,1,18,41,23,4,29,31,16,14,36,20,40,2,11,44,33,34,9,37,13,39,17,7,28,10,30,15,27,6,22,24,46,25,5,0,35,38,21,8,12,26,43}, // permutation 3
{38,28,44,34,42,0,24,1,18,4,5,13,2,17,32,43,29,21,35,41,11,23,31,45,46,26,37,14,27,9,6,12,25,22,33,8,20,19,16,7,39,3,15,36,30,40,10}, // permutation 4
{3,9,28,17,12,25,45,42,14,18,34,39,21,35,4,2,7,5,29,6,23,37,22,30,13,31,33,44,41,38,40,1,8,10,20,11,15,27,0,43,32,46,16,24,19,26,36}, // permutation 5
{16,31,13,19,12,21,30,34,26,39,44,3,14,40,20,9,36,24,15,10,35,11,46,28,42,27,0,6,7,18,29,37,17,25,43,32,1,8,45,41,2,22,33,4,38,23,5}, // permutation 6
{1,26,13,4,12,32,5,30,10,44,7,46,36,0,23,42,37,24,35,6,8,2,27,18,40,15,22,16,9,20,38,43,17,31,25,33,19,11,45,41,28,34,39,3,21,14,29}, // permutation 7
{38,33,0,3,31,25,45,6,35,12,1,14,23,9,7,2,26,44,36,22,18,4,41,29,16,11,15,30,40,46,43,24,42,20,8,28,32,27,34,5,39,21,19,37,10,13,17}, // permutation 8
{22,37,17,40,25,27,8,32,42,38,41,31,4,9,46,33,36,28,13,30,14,26,1,24,2,21,20,10,35,45,7,18,29,39,44,34,15,6,3,12,5,23,11,19,43,16,0} // permutation 9
};

// Seed: 1

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int8_t  f0;
   int64_t  f1;
   uint32_t  f2;
   uint8_t  f3;
   int16_t  f4;
   int8_t  f5;
   int32_t  f6;
   uint32_t  f7;
   int16_t  f8;
};

union U1 {
   struct S0  f0;
   int64_t  f1;
   uint16_t  f2;
};

union U2 {
   volatile int8_t * volatile  f0;
   volatile uint32_t  f1;
   uint32_t  f2;
   int32_t  f3;
};

struct S3 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    int32_t g_4;
    volatile int32_t g_7;
    volatile int32_t g_8;
    int32_t g_9;
    int32_t g_32[1];
    int32_t *g_42[3];
    uint16_t g_44;
    volatile union U1 g_65;
    int32_t g_67;
    int32_t g_68[9][9];
    int32_t g_69;
    union U1 g_74;
    union U1 g_75[8];
    int32_t g_94;
    volatile int32_t g_108;
    int32_t g_109;
    volatile int8_t g_110;
    int32_t g_111;
    volatile int32_t g_112;
    volatile uint32_t g_113[9][5];
    int32_t *g_116;
    uint64_t g_126;
    uint64_t g_130[8][9];
    int8_t g_137;
    int32_t ** volatile g_142;
    union U1 g_155;
    uint64_t *g_156;
    volatile struct S0 g_161;
    uint16_t g_181;
    volatile union U2 g_200[4][1];
    uint64_t g_216;
    int16_t g_219[2];
    uint64_t g_224;
    struct S0 g_253;
    volatile int32_t g_267;
    uint16_t *g_299[4][3];
    uint16_t **g_298[1];
    int32_t * volatile g_317[7][5];
    uint32_t *g_319;
    volatile union U1 g_323;
    int32_t ** volatile g_361;
    int32_t ** volatile g_364;
    union U2 g_386;
    union U2 *g_387;
    union U1 g_436;
    struct S0 g_440[10][4];
    int16_t **g_445;
    int32_t g_465;
    volatile union U1 g_506;
    union U1 g_507;
    union U2 g_526;
    int32_t **g_542;
    int32_t ***g_541;
    volatile union U1 g_544;
    volatile int32_t *g_548;
    union U1 g_571;
    uint16_t **g_572;
    struct S0 g_604;
    uint64_t **g_640;
    uint64_t ***g_639;
    struct S0 g_706;
    struct S0 g_777;
    struct S0 *g_776;
    volatile struct S0 g_781;
    struct S0 g_785;
    struct S0 g_883;
    union U1 g_901;
    volatile union U1 g_909;
    struct S0 g_917;
    union U1 g_925;
    int64_t g_983;
    int16_t g_1002;
    volatile struct S0 g_1064;
    int64_t *g_1066;
    int64_t * volatile *g_1065;
    int32_t g_1072;
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
int32_t  func_1(struct S3 * p_1076);
int32_t * func_12(uint8_t  p_13, uint64_t  p_14, int32_t  p_15, int8_t  p_16, struct S3 * p_1076);
int32_t ** func_23(int32_t ** p_24, int32_t  p_25, int8_t * p_26, int32_t ** p_27, struct S3 * p_1076);
int8_t * func_33(int32_t ** p_34, int16_t  p_35, struct S3 * p_1076);
int32_t ** func_36(int32_t * p_37, uint16_t  p_38, int8_t * p_39, int32_t * p_40, int32_t ** p_41, struct S3 * p_1076);
int8_t * func_47(uint16_t * p_48, struct S3 * p_1076);
uint16_t * func_49(int64_t  p_50, int16_t  p_51, int64_t  p_52, uint16_t  p_53, struct S3 * p_1076);
struct S0  func_54(uint16_t * p_55, int32_t  p_56, uint16_t  p_57, uint16_t * p_58, struct S3 * p_1076);
uint16_t * func_59(int32_t * p_60, uint32_t  p_61, int32_t  p_62, struct S3 * p_1076);
int32_t * func_63(int32_t * p_64, struct S3 * p_1076);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1076->g_4 p_1076->g_9 p_1076->g_74.f1 p_1076->g_181 p_1076->g_116 p_1076->g_901.f0.f8 p_1076->g_901.f0.f2 p_1076->g_604.f1 p_1076->g_67 p_1076->g_94 p_1076->g_142 p_1076->g_68 p_1076->g_541 p_1076->g_542 p_1076->g_917.f1 p_1076->g_1064 p_1076->g_1065 p_1076->g_156 p_1076->g_126 p_1076->g_42 p_1076->g_548 p_1076->g_161.f4 p_1076->g_917.f3
 * writes: p_1076->g_4 p_1076->g_9 p_1076->g_74.f1 p_1076->g_181 p_1076->g_94 p_1076->g_67 p_1076->g_901.f0.f8 p_1076->g_68 p_1076->g_155.f1 p_1076->g_319 p_1076->g_116 p_1076->g_917.f1 p_1076->g_8
 */
int32_t  func_1(struct S3 * p_1076)
{ /* block id: 4 */
    uint64_t l_17 = 7UL;
    int16_t l_1047[1][5];
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
            l_1047[i][j] = (-8L);
    }
    for (p_1076->g_4 = 0; (p_1076->g_4 == 3); p_1076->g_4++)
    { /* block id: 7 */
        uint64_t l_18[10][1][4] = {{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}},{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}},{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}},{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}},{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}},{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}},{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}},{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}},{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}},{{0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L,0xAA2D34CAA8E55A44L}}};
        int i, j, k;
        for (p_1076->g_9 = 0; (p_1076->g_9 < 0); p_1076->g_9++)
        { /* block id: 10 */
            uint64_t l_1044 = 1UL;
            (1 + 1);
        }
        if (l_17)
            continue;
        return l_18[7][0][2];
    }
    for (p_1076->g_74.f1 = 20; (p_1076->g_74.f1 <= 27); p_1076->g_74.f1 = safe_add_func_uint64_t_u_u(p_1076->g_74.f1, 1))
    { /* block id: 570 */
        int32_t *l_1048 = &p_1076->g_67;
        for (p_1076->g_181 = 0; (p_1076->g_181 <= 2); p_1076->g_181 += 1)
        { /* block id: 573 */
            return l_17;
        }
        if (((*l_1048) = (l_1047[0][2] , ((*p_1076->g_116) = l_17))))
        { /* block id: 578 */
            int8_t l_1061[6][10][4] = {{{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L}},{{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L}},{{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L}},{{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L}},{{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L}},{{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L},{0x31L,0x7AL,0x19L,0L}}};
            int i, j, k;
            for (p_1076->g_901.f0.f8 = 0; (p_1076->g_901.f0.f8 == 27); p_1076->g_901.f0.f8++)
            { /* block id: 581 */
                int32_t l_1051 = 0x48091CBAL;
                (*p_1076->g_116) |= ((((65535UL != l_1051) , (safe_rshift_func_int16_t_s_u((p_1076->g_901.f0.f2 , 2L), l_1047[0][2]))) >= (l_1051 & ((safe_rshift_func_uint8_t_u_s(p_1076->g_604.f1, (safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (GROUP_DIVERGE(1, 1) && (*l_1048)))))) > l_1051))) & (-4L));
                (**p_1076->g_541) = func_63(func_63((*p_1076->g_142), p_1076), p_1076);
            }
            for (p_1076->g_917.f1 = 16; (p_1076->g_917.f1 == (-29)); p_1076->g_917.f1 = safe_sub_func_uint8_t_u_u(p_1076->g_917.f1, 4))
            { /* block id: 587 */
                int32_t *l_1060 = &p_1076->g_67;
                l_1060 = func_63((*p_1076->g_542), p_1076);
                return (*l_1060);
            }
            return l_1061[1][4][0];
        }
        else
        { /* block id: 592 */
            int32_t l_1070 = 0x49BCA9F4L;
            int32_t *l_1071 = &p_1076->g_1072;
            (**p_1076->g_541) = (void*)0;
            if ((safe_mul_func_int16_t_s_s((*l_1048), 0x2E14L)))
            { /* block id: 594 */
                return l_1047[0][2];
            }
            else
            { /* block id: 596 */
                uint32_t l_1067 = 0xAF262CA1L;
                int64_t ***l_1073 = (void*)0;
                int64_t **l_1075 = &p_1076->g_1066;
                int64_t ***l_1074 = &l_1075;
                (*p_1076->g_548) = (p_1076->g_1064 , (p_1076->g_1065 != ((*l_1074) = ((((((((((*p_1076->g_156) > l_1067) && (0x4A8CF138EEE3B5BFL | (safe_sub_func_uint32_t_u_u(0xB52E4BA7L, (l_1070 >= l_1070))))) == (((p_1076->g_42[1] != l_1071) , l_1070) && l_1067)) != l_1047[0][2]) > FAKE_DIVERGE(p_1076->local_2_offset, get_local_id(2), 10)) && 0UL) , 8L) , (*l_1048)) , &p_1076->g_1066))));
                return p_1076->g_161.f4;
            }
        }
    }
    return p_1076->g_917.f3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1076->g_42 p_1076->g_44 p_1076->g_65 p_1076->g_67 p_1076->g_116 p_1076->g_68 p_1076->g_94 p_1076->g_142 p_1076->g_253.f7 p_1076->g_323 p_1076->g_219 p_1076->g_74.f0.f5 p_1076->g_75.f0.f2 p_1076->g_137 p_1076->g_126 p_1076->g_436 p_1076->g_74.f0.f2 p_1076->g_445 p_1076->g_253.f1 p_1076->g_436.f0 p_1076->g_253.f5 p_1076->g_387 p_1076->g_386 p_1076->g_440.f6 p_1076->g_130 p_1076->g_75.f0 p_1076->g_113 p_1076->g_156 p_1076->g_506 p_1076->g_507 p_1076->g_507.f0.f3 p_1076->g_526 p_1076->g_181 p_1076->g_541 p_1076->g_544 p_1076->g_548 p_1076->g_440.f3 p_1076->g_323.f0.f0 p_1076->g_253.f6 p_1076->g_571 p_1076->g_571.f0.f4 p_1076->g_8 p_1076->g_542 p_1076->g_507.f0.f2 p_1076->g_604 p_1076->g_440.f7 p_1076->g_506.f0.f2 p_1076->g_571.f0.f3 p_1076->g_639 p_1076->g_440.f2 p_1076->g_507.f0.f6 p_1076->g_224 p_1076->l_comm_values p_1076->g_440.f5 p_1076->g_706 p_1076->g_436.f2 p_1076->g_155.f0.f3 p_1076->g_440.f1 p_1076->g_161.f1 p_1076->g_776 p_1076->g_69 p_1076->g_781 p_1076->g_777.f5 p_1076->g_925.f0 p_1076->g_317 p_1076->g_571.f0.f8 p_1076->g_917.f8 p_1076->g_364 p_1076->g_507.f0.f1
 * writes: p_1076->g_32 p_1076->g_44 p_1076->g_67 p_1076->g_68 p_1076->g_155.f1 p_1076->g_319 p_1076->g_94 p_1076->g_116 p_1076->g_126 p_1076->g_445 p_1076->g_253.f1 p_1076->g_74.f2 p_1076->g_440.f6 p_1076->g_74.f0.f7 p_1076->g_155.f0.f3 p_1076->g_75.f0.f4 p_1076->g_130 p_1076->g_436.f0.f7 p_1076->g_507.f0.f3 p_1076->g_181 p_1076->g_541 p_1076->g_548 p_1076->g_440.f3 p_1076->g_137 p_1076->g_75.f0.f3 p_1076->g_298 p_1076->g_572 p_1076->g_571.f0.f4 p_1076->g_8 p_1076->g_507.f0.f2 p_1076->g_216 p_1076->g_436.f0 p_1076->g_440.f7 p_1076->g_571.f0.f3 p_1076->g_155.f0.f5 p_1076->g_253.f8 p_1076->g_436.f2 p_1076->g_253.f5 p_1076->g_440.f5 p_1076->g_604.f3 p_1076->g_440.f1 p_1076->g_74.f0.f1 p_1076->g_161.f4 p_1076->g_604.f6 p_1076->g_604.f4 p_1076->g_75.f0.f5 p_1076->g_69 p_1076->g_777 p_1076->g_604.f7 p_1076->g_706.f6 p_1076->g_74.f0.f2 p_1076->g_917.f8
 */
int32_t * func_12(uint8_t  p_13, uint64_t  p_14, int32_t  p_15, int8_t  p_16, struct S3 * p_1076)
{ /* block id: 12 */
    int32_t *l_29 = (void*)0;
    int32_t **l_28 = &l_29;
    int32_t *l_30 = (void*)0;
    int32_t *l_31 = &p_1076->g_32[0];
    uint16_t *l_43 = &p_1076->g_44;
    int8_t l_322[3];
    int32_t ***l_1042 = &l_28;
    int32_t *l_1043 = (void*)0;
    int i;
    for (i = 0; i < 3; i++)
        l_322[i] = 1L;
    (*l_1042) = func_23(l_28, ((*l_31) = p_16), func_33(func_36(p_1076->g_42[1], ((*l_43)--), func_47(func_49((func_54(func_59(((*p_1076->g_142) = func_63((p_1076->g_65 , (*l_28)), p_1076)), p_1076->g_253.f7, (safe_mod_func_uint16_t_u_u(((void*)0 == l_29), l_322[1])), p_1076), p_13, p_14, l_43, p_1076) , p_13), p_1076->g_253.f5, p_14, p_16, p_1076), p_1076), (*l_28), p_1076->g_542, p_1076), p_14, p_1076), &l_29, p_1076);
    return l_1043;
}


/* ------------------------------------------ */
/* 
 * reads : p_1076->g_436.f0.f8 p_1076->g_541 p_1076->g_542 p_1076->g_116 p_1076->g_777.f5 p_1076->g_925.f0 p_1076->g_317 p_1076->g_156 p_1076->g_571.f0.f8 p_1076->g_94 p_1076->g_917.f8 p_1076->g_364 p_1076->g_507.f0.f1
 * writes: p_1076->g_436.f0.f8 p_1076->g_116 p_1076->g_917.f8 p_1076->g_126 p_1076->g_298 p_1076->g_74.f0.f2
 */
int32_t ** func_23(int32_t ** p_24, int32_t  p_25, int8_t * p_26, int32_t ** p_27, struct S3 * p_1076)
{ /* block id: 471 */
    uint8_t l_805[7][4] = {{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}};
    int32_t l_829 = 5L;
    int32_t l_843 = 0x7E163F8CL;
    int32_t l_844 = 0x244B211CL;
    int32_t l_846 = 0L;
    int32_t l_848 = 0x750CCB48L;
    int32_t l_851 = 3L;
    int32_t l_852 = 0x4D452E28L;
    int32_t l_853 = 0x5EB74F8DL;
    int32_t l_854 = 0x1CAA6A23L;
    int32_t l_855[6][4] = {{0x544932D0L,9L,7L,0x2AC25672L},{0x544932D0L,9L,7L,0x2AC25672L},{0x544932D0L,9L,7L,0x2AC25672L},{0x544932D0L,9L,7L,0x2AC25672L},{0x544932D0L,9L,7L,0x2AC25672L},{0x544932D0L,9L,7L,0x2AC25672L}};
    uint32_t l_856 = 4294967295UL;
    int32_t l_874 = 0L;
    int64_t *l_897 = &p_1076->g_785.f1;
    uint32_t **l_908 = &p_1076->g_319;
    int32_t *l_916 = (void*)0;
    int64_t l_950 = (-5L);
    int32_t l_953 = 0L;
    int64_t l_956 = 1L;
    uint16_t l_957 = 65533UL;
    uint64_t l_981 = 0UL;
    int64_t *l_982 = &p_1076->g_983;
    uint8_t *l_988 = &p_1076->g_253.f3;
    int64_t l_1005 = 0x669C64EDF85A1EDEL;
    int8_t l_1014[7] = {(-8L),0x20L,(-8L),(-8L),0x20L,(-8L),(-8L)};
    int32_t ****l_1019 = &p_1076->g_541;
    int16_t *l_1022 = &p_1076->g_917.f8;
    struct S0 *l_1023 = &p_1076->g_925.f0;
    int32_t l_1038[3][4][8] = {{{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)},{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)},{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)},{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)}},{{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)},{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)},{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)},{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)}},{{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)},{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)},{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)},{(-1L),0x2F67F32CL,(-1L),0L,0x4BAB80DFL,0x5621579BL,0x784EF0E7L,(-1L)}}};
    uint16_t ***l_1039 = &p_1076->g_298[0];
    uint16_t **l_1040 = (void*)0;
    uint32_t *l_1041 = &p_1076->g_74.f0.f2;
    int i, j, k;
    for (p_1076->g_436.f0.f8 = 1; (p_1076->g_436.f0.f8 <= 7); p_1076->g_436.f0.f8 += 1)
    { /* block id: 474 */
        int32_t *l_806 = &p_1076->g_526.f3;
        int32_t *l_817 = &p_1076->g_604.f6;
        uint16_t ***l_824 = &p_1076->g_572;
        int32_t *l_825 = &p_1076->g_32[0];
        uint32_t *l_826 = &p_1076->g_571.f0.f2;
        uint8_t *l_827 = (void*)0;
        uint8_t *l_828 = &p_1076->g_74.f0.f3;
        struct S0 *l_830 = &p_1076->g_777;
        int8_t l_840 = 0x0AL;
        int32_t l_845 = 0x42ADD860L;
        int32_t l_847 = 0x79D52093L;
        int32_t l_849 = 0x37488154L;
        int32_t l_850[5][5] = {{0x46528A2EL,0x2A065F8DL,9L,0x6BCD1D0FL,0x2A065F8DL},{0x46528A2EL,0x2A065F8DL,9L,0x6BCD1D0FL,0x2A065F8DL},{0x46528A2EL,0x2A065F8DL,9L,0x6BCD1D0FL,0x2A065F8DL},{0x46528A2EL,0x2A065F8DL,9L,0x6BCD1D0FL,0x2A065F8DL},{0x46528A2EL,0x2A065F8DL,9L,0x6BCD1D0FL,0x2A065F8DL}};
        int16_t l_879 = 0x17B7L;
        uint64_t ***l_896 = &p_1076->g_640;
        int32_t l_949 = (-4L);
        int i, j;
        (1 + 1);
    }
    (**p_1076->g_541) = &l_874;
    (***p_1076->g_541) = (safe_rshift_func_int8_t_s_s(((~l_1005) < p_25), (((safe_lshift_func_uint8_t_u_s(((safe_sub_func_int8_t_s_s((((((((safe_add_func_int32_t_s_s(5L, (safe_mod_func_int8_t_s_s((l_1014[6] <= ((safe_rshift_func_int8_t_s_s(((void*)0 != &p_1076->g_216), (GROUP_DIVERGE(1, 1) || ((safe_sub_func_uint8_t_u_u(((l_1019 == l_1019) || ((*l_1022) = (safe_sub_func_uint32_t_u_u(0x49FCCEB2L, (****l_1019))))), (****l_1019))) , (-10L))))) ^ (*p_26))), (-1L))))) , &p_1076->g_440[5][0]) != l_1023) == p_25) , p_25) < FAKE_DIVERGE(p_1076->local_1_offset, get_local_id(1), 10)) >= 0x86L), FAKE_DIVERGE(p_1076->local_0_offset, get_local_id(0), 10))) ^ (****l_1019)), 5)) | p_25) , (****l_1019))));
    l_855[3][2] &= (safe_lshift_func_int16_t_s_u(((((safe_mul_func_int16_t_s_s((((*l_1041) = (((*l_1023) , (((****l_1019) < ((safe_lshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((safe_add_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((((((*l_1039) = ((((*p_1076->g_116) == ((safe_sub_func_int16_t_s_s(((0x17AFBD30L & (p_1076->g_317[0][0] != ((l_916 != l_916) , l_916))) ^ ((*p_1076->g_156) = p_25)), 0UL)) == p_1076->g_571.f0.f8)) , l_1038[0][3][1]) , &p_1076->g_299[2][2])) != l_1040) == p_25) || p_1076->g_94), p_1076->g_917.f8)), (****l_1019))) != (*p_1076->g_116)), p_25)), 13)) || (**p_1076->g_364))) <= (****l_1019))) || (****l_1019))) <= (***p_1076->g_541)), p_1076->g_507.f0.f1)) == p_25) >= (*p_1076->g_116)) || GROUP_DIVERGE(0, 1)), p_25));
    return p_24;
}


/* ------------------------------------------ */
/* 
 * reads : p_1076->g_604.f7 p_1076->g_706.f6 p_1076->g_116 p_1076->g_541 p_1076->g_542
 * writes: p_1076->g_604.f7 p_1076->g_706.f6 p_1076->g_74.f0.f2 p_1076->g_116
 */
int8_t * func_33(int32_t ** p_34, int16_t  p_35, struct S3 * p_1076)
{ /* block id: 419 */
    uint8_t l_784 = 0x72L;
    int32_t *l_799 = &p_1076->g_507.f0.f6;
    int32_t **l_798 = &l_799;
    int8_t *l_800 = &p_1076->g_777.f5;
    for (p_1076->g_604.f7 = 20; (p_1076->g_604.f7 != 34); p_1076->g_604.f7 = safe_add_func_uint16_t_u_u(p_1076->g_604.f7, 6))
    { /* block id: 422 */
        uint32_t l_788 = 0x9F7E765DL;
        uint8_t *l_793 = &p_1076->g_777.f3;
        for (p_1076->g_706.f6 = 0; (p_1076->g_706.f6 <= 2); p_1076->g_706.f6 += 1)
        { /* block id: 425 */
            int32_t *l_794 = &p_1076->g_111;
            for (p_1076->g_74.f0.f2 = 0; (p_1076->g_74.f0.f2 <= 2); p_1076->g_74.f0.f2 += 1)
            { /* block id: 428 */
                (*p_34) = (*p_34);
            }
        }
    }
    (*l_798) = ((**p_1076->g_541) = (p_35 , (*p_34)));
    return l_800;
}


/* ------------------------------------------ */
/* 
 * reads : p_1076->g_542 p_1076->g_781 p_1076->g_776 p_1076->g_541
 * writes: p_1076->g_116 p_1076->g_777
 */
int32_t ** func_36(int32_t * p_37, uint16_t  p_38, int8_t * p_39, int32_t * p_40, int32_t ** p_41, struct S3 * p_1076)
{ /* block id: 414 */
    int32_t *l_780[2][4][5] = {{{&p_1076->g_706.f6,&p_1076->g_507.f0.f6,&p_1076->g_440[5][0].f6,&p_1076->g_777.f6,&p_1076->g_253.f6},{&p_1076->g_706.f6,&p_1076->g_507.f0.f6,&p_1076->g_440[5][0].f6,&p_1076->g_777.f6,&p_1076->g_253.f6},{&p_1076->g_706.f6,&p_1076->g_507.f0.f6,&p_1076->g_440[5][0].f6,&p_1076->g_777.f6,&p_1076->g_253.f6},{&p_1076->g_706.f6,&p_1076->g_507.f0.f6,&p_1076->g_440[5][0].f6,&p_1076->g_777.f6,&p_1076->g_253.f6}},{{&p_1076->g_706.f6,&p_1076->g_507.f0.f6,&p_1076->g_440[5][0].f6,&p_1076->g_777.f6,&p_1076->g_253.f6},{&p_1076->g_706.f6,&p_1076->g_507.f0.f6,&p_1076->g_440[5][0].f6,&p_1076->g_777.f6,&p_1076->g_253.f6},{&p_1076->g_706.f6,&p_1076->g_507.f0.f6,&p_1076->g_440[5][0].f6,&p_1076->g_777.f6,&p_1076->g_253.f6},{&p_1076->g_706.f6,&p_1076->g_507.f0.f6,&p_1076->g_440[5][0].f6,&p_1076->g_777.f6,&p_1076->g_253.f6}}};
    int i, j, k;
    (*p_1076->g_542) = l_780[1][2][3];
    (*p_1076->g_542) = l_780[0][1][0];
    (*p_1076->g_776) = p_1076->g_781;
    return (*p_1076->g_541);
}


/* ------------------------------------------ */
/* 
 * reads : p_1076->g_507.f0.f2 p_1076->g_506.f0.f2 p_1076->g_604 p_1076->g_440.f7 p_1076->g_571.f0.f3 p_1076->g_639 p_1076->g_181 p_1076->g_75.f0.f2 p_1076->g_440.f2 p_1076->g_507.f0.f6 p_1076->g_224 p_1076->g_68 p_1076->l_comm_values p_1076->g_156 p_1076->g_126 p_1076->g_253.f5 p_1076->g_440.f5 p_1076->g_507.f0.f3 p_1076->g_706 p_1076->g_436.f2 p_1076->g_155.f0.f3 p_1076->g_571.f0.f4 p_1076->g_440.f1 p_1076->g_548 p_1076->g_8 p_1076->g_542 p_1076->g_116 p_1076->g_161.f1 p_1076->g_776 p_1076->g_75.f0.f5 p_1076->g_69
 * writes: p_1076->g_507.f0.f2 p_1076->g_216 p_1076->g_436.f0 p_1076->g_440.f7 p_1076->g_571.f0.f3 p_1076->g_155.f0.f5 p_1076->g_253.f8 p_1076->g_436.f2 p_1076->g_181 p_1076->g_68 p_1076->g_253.f5 p_1076->g_440.f5 p_1076->g_155.f0.f3 p_1076->g_571.f0.f4 p_1076->g_137 p_1076->g_604.f3 p_1076->g_8 p_1076->g_440.f1 p_1076->g_74.f0.f1 p_1076->g_116 p_1076->g_161.f4 p_1076->g_298 p_1076->g_604.f6 p_1076->g_604.f4 p_1076->g_75.f0.f5 p_1076->g_69
 */
int8_t * func_47(uint16_t * p_48, struct S3 * p_1076)
{ /* block id: 308 */
    int64_t l_636 = 0x2DE5E30173DEC68DL;
    int32_t l_642 = 0L;
    uint64_t ***l_643[8][5] = {{&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640},{&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640},{&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640},{&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640},{&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640},{&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640},{&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640},{&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640,&p_1076->g_640}};
    int32_t l_649[5];
    int8_t *l_779[2];
    int i, j;
    for (i = 0; i < 5; i++)
        l_649[i] = (-1L);
    for (i = 0; i < 2; i++)
        l_779[i] = &p_1076->g_75[0].f0.f5;
    for (p_1076->g_507.f0.f2 = (-29); (p_1076->g_507.f0.f2 > 4); ++p_1076->g_507.f0.f2)
    { /* block id: 311 */
        int32_t l_584 = 0x7F52B0EFL;
        uint16_t *l_588 = &p_1076->g_181;
        int32_t ***l_603[1];
        int32_t l_648 = 0x2EDF812DL;
        int32_t l_651 = 0x4B6F6DB3L;
        uint32_t l_688 = 0x25F002D8L;
        uint64_t *l_704 = &p_1076->g_224;
        int64_t *l_753[4][6][7] = {{{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636}},{{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636}},{{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636}},{{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636},{&p_1076->g_706.f1,&p_1076->g_571.f0.f1,&p_1076->g_75[0].f0.f1,&p_1076->g_604.f1,&p_1076->g_440[5][0].f1,&p_1076->g_75[0].f0.f1,&l_636}}};
        int64_t **l_752 = &l_753[1][4][5];
        int8_t *l_756 = &p_1076->g_75[0].f0.f5;
        int16_t *l_775 = &p_1076->g_604.f4;
        uint32_t l_778 = 4294967295UL;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_603[i] = &p_1076->g_542;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1076->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 47)), permutations[(safe_mod_func_uint32_t_u_u((l_584 , p_1076->g_506.f0.f2), 10))][(safe_mod_func_uint32_t_u_u(p_1076->tid, 47))]));
        for (p_1076->g_216 = 0; (p_1076->g_216 >= 10); p_1076->g_216 = safe_add_func_uint16_t_u_u(p_1076->g_216, 4))
        { /* block id: 317 */
            uint8_t l_587 = 0UL;
            int16_t *l_593 = &p_1076->g_571.f0.f4;
            uint8_t *l_598 = &p_1076->g_74.f0.f3;
            struct S0 *l_605 = &p_1076->g_436.f0;
            uint8_t *l_615 = &p_1076->g_571.f0.f3;
            int64_t *l_635[5][6][1] = {{{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1}},{{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1}},{{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1}},{{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1}},{{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1},{&p_1076->g_507.f0.f1}}};
            uint64_t ***l_641 = &p_1076->g_640;
            uint32_t l_645 = 0UL;
            int8_t *l_646 = &p_1076->g_155.f0.f5;
            int32_t l_647 = (-2L);
            int16_t *l_650 = &p_1076->g_253.f8;
            uint16_t l_652 = 1UL;
            int32_t l_709 = 0L;
            uint32_t l_718 = 0x20B11D57L;
            int i, j, k;
            (*l_605) = p_1076->g_604;
            if (((safe_lshift_func_int16_t_s_u(((((p_1076->g_440[5][0].f7--) , ((((*l_650) = (safe_unary_minus_func_uint8_t_u((safe_div_func_int32_t_s_s(((safe_rshift_func_int8_t_s_s((((((*l_615) ^= 255UL) & (safe_sub_func_uint8_t_u_u((~(safe_mul_func_uint8_t_u_u((safe_unary_minus_func_uint16_t_u((safe_div_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((l_587 != (safe_sub_func_int8_t_s_s((!((((safe_add_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u((18446744073709551613UL ^ (safe_rshift_func_uint16_t_u_s(((l_636 = (-1L)) <= (((l_647 = ((safe_div_func_int8_t_s_s((((l_641 = p_1076->g_639) == (l_642 , l_643[3][4])) < 0x18L), ((*l_646) = (safe_unary_minus_func_int32_t_s((((((l_645 == l_642) < 0x0917L) || (*p_48)) == 0x1DL) == 1UL)))))) ^ l_587)) < 0UL) != 0x40ADL)), 5))), 0x7681L)) | l_645), p_1076->g_75[0].f0.f2)) | l_642) ^ 4294967286UL) <= l_642)), l_587))) >= 65535UL), (-1L))), p_1076->g_440[5][0].f2)) == 0UL), l_587)))), p_1076->g_507.f0.f6))), (-3L)))) ^ 0x13BD3CD3L) & l_648), l_649[0])) > l_645), p_1076->g_224))))) != l_651) & 0UL)) ^ 0xB05BL) <= l_652), 5)) > 0x117E6D4CL))
            { /* block id: 328 */
                uint8_t l_685 = 246UL;
                int32_t l_705 = 0x412FF9E8L;
                int32_t l_707[2];
                int32_t l_708 = 5L;
                uint32_t l_710 = 4294967289UL;
                int i;
                for (i = 0; i < 2; i++)
                    l_707[i] = 1L;
                for (l_647 = 0; (l_647 >= 29); ++l_647)
                { /* block id: 331 */
                    int32_t l_676 = 0x074F5562L;
                    int32_t l_687[6] = {1L,1L,1L,1L,1L,1L};
                    int i;
                    for (p_1076->g_436.f2 = 24; (p_1076->g_436.f2 <= 23); p_1076->g_436.f2 = safe_sub_func_int8_t_s_s(p_1076->g_436.f2, 5))
                    { /* block id: 334 */
                        int16_t l_657[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_657[i] = 1L;
                        if (l_657[5])
                            break;
                    }
                    for (l_651 = 2; (l_651 <= 8); l_651 += 1)
                    { /* block id: 339 */
                        uint64_t *l_686 = &p_1076->g_130[5][0];
                        int32_t l_689 = 0x015CAE4BL;
                        int8_t *l_690 = &p_1076->g_253.f5;
                        int8_t *l_691 = &p_1076->g_440[5][0].f5;
                        int i, j;
                        if (p_1076->g_68[l_651][l_651])
                            break;
                        l_689 = ((safe_mod_func_uint8_t_u_u((+(safe_sub_func_uint64_t_u_u(((safe_sub_func_int64_t_s_s((safe_sub_func_int8_t_s_s((((!(safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((((7L == 0L) <= (safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((((*l_588) = l_676) <= p_1076->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1076->tid, 47))]), ((*l_691) &= ((*l_690) |= (((((((250UL && 0L) >= (p_1076->g_68[l_651][l_651] &= ((!0x6CF6L) && ((safe_mul_func_int8_t_s_s(((l_687[2] = (!((safe_rshift_func_int16_t_s_s((((safe_mod_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(l_587, ((l_685 , (void*)0) == l_686))), l_676)) , GROUP_DIVERGE(1, 1)) , l_676), l_685)) , 8L))) <= (*p_1076->g_156)), l_676)) > (-2L))))) <= (-2L)) <= l_688) < 2UL) != 0xD853L) | l_689))))), GROUP_DIVERGE(0, 1)))) >= 0x7AL), 7)), l_642)), l_645))) | l_689) & p_1076->g_604.f6), GROUP_DIVERGE(1, 1))), (*p_1076->g_156))) , 1UL), p_1076->g_507.f0.f3))), l_636)) , l_685);
                    }
                }
                (*l_605) = p_1076->g_706;
                ++l_710;
            }
            else
            { /* block id: 353 */
                int32_t l_717 = 0x2FF8CE0EL;
                for (p_1076->g_436.f2 = (-8); (p_1076->g_436.f2 > 33); p_1076->g_436.f2++)
                { /* block id: 356 */
                    int32_t l_715 = 9L;
                    int32_t l_716[10] = {(-2L),(-1L),(-9L),(-1L),(-2L),(-2L),(-1L),(-9L),(-1L),(-2L)};
                    int i;
                    ++l_718;
                    return &p_1076->g_137;
                }
            }
        }
        for (p_1076->g_155.f0.f3 = 0; (p_1076->g_155.f0.f3 <= 4); p_1076->g_155.f0.f3 += 1)
        { /* block id: 364 */
            uint8_t l_730 = 255UL;
            int32_t l_737[2];
            int i;
            for (i = 0; i < 2; i++)
                l_737[i] = 0x7DBC3AA9L;
            for (p_1076->g_571.f0.f4 = 0; (p_1076->g_571.f0.f4 <= 1); p_1076->g_571.f0.f4 += 1)
            { /* block id: 367 */
                uint64_t **l_731 = &p_1076->g_156;
                int32_t l_732 = 0x42C0A026L;
                int32_t *l_755 = &p_1076->g_111;
                int i, j;
                for (p_1076->g_137 = 4; (p_1076->g_137 >= 0); p_1076->g_137 -= 1)
                { /* block id: 370 */
                    for (p_1076->g_604.f3 = 0; (p_1076->g_604.f3 <= 3); p_1076->g_604.f3 += 1)
                    { /* block id: 373 */
                        int8_t *l_721[9][4][1] = {{{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5}},{{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5}},{{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5}},{{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5}},{{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5}},{{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5}},{{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5}},{{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5}},{{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5},{&p_1076->g_75[0].f0.f5}}};
                        int i, j, k;
                        return l_721[2][0][0];
                    }
                }
                if ((safe_add_func_int8_t_s_s((~(safe_lshift_func_uint16_t_u_u((l_649[(p_1076->g_571.f0.f4 + 2)] || (((FAKE_DIVERGE(p_1076->local_2_offset, get_local_id(2), 10) != (l_649[p_1076->g_571.f0.f4] || (safe_add_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((l_730 || l_730), (((((void*)0 == l_731) ^ 0xABFD112BL) , ((l_649[4] = 4L) > (p_1076->g_440[5][0].f1 > 0xC9L))) & l_732))), 3L)))) ^ l_732) , 18446744073709551615UL)), l_730))), 0x8CL)))
                { /* block id: 378 */
                    (*p_1076->g_548) |= l_730;
                }
                else
                { /* block id: 380 */
                    uint8_t *l_738 = &p_1076->g_74.f0.f3;
                    uint8_t *l_739 = &p_1076->g_604.f3;
                    int32_t l_748 = (-7L);
                    int64_t *l_749 = &p_1076->g_440[5][0].f1;
                    (*p_1076->g_548) = (((safe_rshift_func_int16_t_s_s(l_730, (safe_add_func_int8_t_s_s(0L, p_1076->g_604.f7)))) < ((l_737[1] = l_649[(p_1076->g_571.f0.f4 + 2)]) || l_737[1])) != ((--(*l_739)) && ((safe_mod_func_int64_t_s_s((l_649[p_1076->g_571.f0.f4] != (!(!((safe_mod_func_int8_t_s_s(l_649[(p_1076->g_571.f0.f4 + 2)], 0x29L)) || ((((*l_749) ^= (((l_748 >= 65529UL) < GROUP_DIVERGE(2, 1)) != 0xCCL)) <= l_732) != 18446744073709551615UL))))), 1UL)) , l_730)));
                    if (l_737[1])
                        break;
                    for (p_1076->g_74.f0.f1 = 1; (p_1076->g_74.f0.f1 >= 0); p_1076->g_74.f0.f1 -= 1)
                    { /* block id: 388 */
                        int64_t **l_750 = &l_749;
                        int64_t ***l_751[4][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
                        int32_t l_754 = 0x4009C00DL;
                        int i, j;
                        l_752 = l_750;
                        (*p_1076->g_542) = &l_737[1];
                        (**p_1076->g_542) = l_754;
                        return &p_1076->g_137;
                    }
                    l_755 = &l_642;
                }
                for (p_1076->g_161.f4 = 0; p_1076->g_161.f4 < 1; p_1076->g_161.f4 += 1)
                {
                    p_1076->g_298[p_1076->g_161.f4] = (void*)0;
                }
            }
            for (p_1076->g_604.f6 = 0; (p_1076->g_604.f6 <= 4); p_1076->g_604.f6 += 1)
            { /* block id: 400 */
                for (l_636 = 0; (l_636 >= 0); l_636 -= 1)
                { /* block id: 403 */
                    int i;
                    if (l_737[1])
                        break;
                }
            }
            return l_756;
        }
        p_1076->g_69 ^= (safe_rshift_func_uint16_t_u_u((p_1076->g_161.f1 , (*p_48)), (l_649[3] && (safe_div_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u(((((l_649[3] && ((+((*l_756) &= (safe_mod_func_int16_t_s_s((p_1076->g_706.f2 >= (((safe_mod_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((safe_mod_func_uint64_t_u_u(((((safe_lshift_func_int8_t_s_u((0x351D2F47L ^ ((safe_lshift_func_int16_t_s_u(((*l_775) = l_649[3]), 15)) > 0L)), (p_1076->g_776 == (void*)0))) , (void*)0) == &p_1076->g_445) | 251UL), 18446744073709551614UL)), 6)), l_642)) > p_1076->g_224) < l_649[0])), (*p_48))))) >= p_1076->g_68[8][5])) , p_1076->g_507.f0.f6) , l_778) > 8L), 247UL)), l_649[0])))));
    }
    return l_779[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1076->g_387 p_1076->g_386 p_1076->g_126 p_1076->g_440.f6 p_1076->g_130 p_1076->g_75.f0 p_1076->g_436.f0.f7 p_1076->g_94 p_1076->g_113 p_1076->g_156 p_1076->g_67 p_1076->g_506 p_1076->g_507 p_1076->g_507.f0.f3 p_1076->g_526 p_1076->g_181 p_1076->g_541 p_1076->g_544 p_1076->g_548 p_1076->g_440.f3 p_1076->g_323.f0.f0 p_1076->g_436 p_1076->g_253.f6 p_1076->g_253.f1 p_1076->g_571 p_1076->g_571.f0.f4 p_1076->g_8 p_1076->g_542
 * writes: p_1076->g_67 p_1076->g_126 p_1076->g_440.f6 p_1076->g_74.f0.f7 p_1076->g_155.f0.f3 p_1076->g_75.f0.f4 p_1076->g_130 p_1076->g_436.f0.f7 p_1076->g_94 p_1076->g_507.f0.f3 p_1076->g_181 p_1076->g_541 p_1076->g_548 p_1076->g_440.f3 p_1076->g_137 p_1076->g_75.f0.f3 p_1076->g_253.f1 p_1076->g_298 p_1076->g_572 p_1076->g_571.f0.f4 p_1076->g_8 p_1076->g_116
 */
uint16_t * func_49(int64_t  p_50, int16_t  p_51, int64_t  p_52, uint16_t  p_53, struct S3 * p_1076)
{ /* block id: 231 */
    int8_t l_463 = 1L;
    int32_t *l_464 = &p_1076->g_465;
    int32_t *l_466 = &p_1076->g_67;
    uint16_t *l_505 = &p_1076->g_181;
    int32_t l_532 = (-1L);
    int8_t l_535 = 0x46L;
    int32_t ***l_545 = &p_1076->g_542;
    (*l_466) = ((*p_1076->g_387) , (safe_sub_func_uint16_t_u_u(l_463, (l_464 != (void*)0))));
    for (p_1076->g_126 = 0; (p_1076->g_126 >= 47); p_1076->g_126 = safe_add_func_uint8_t_u_u(p_1076->g_126, 8))
    { /* block id: 235 */
        int16_t **l_469 = (void*)0;
        int16_t *l_471 = (void*)0;
        int16_t **l_470 = &l_471;
        int32_t *l_474 = &p_1076->g_440[5][0].f6;
        int32_t l_501 = 0x3A9E9EC5L;
        uint64_t *l_512 = &p_1076->g_130[6][8];
        int32_t *l_513 = &p_1076->g_94;
        uint8_t *l_514 = &p_1076->g_507.f0.f3;
        int16_t ***l_529 = &l_469;
        uint32_t *l_562 = &p_1076->g_440[5][0].f2;
        if (((*l_466) = (&p_51 == ((*l_470) = (void*)0))))
        { /* block id: 238 */
            int64_t l_482 = 0x5FE70636930A452EL;
            uint32_t l_498 = 0xB6F482C7L;
            int32_t l_504[1][2];
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_504[i][j] = 0x76D6983EL;
            }
            for (p_1076->g_74.f0.f7 = 0; (p_1076->g_74.f0.f7 != 8); ++p_1076->g_74.f0.f7)
            { /* block id: 241 */
                int32_t **l_475 = &l_466;
                uint8_t *l_491 = &p_1076->g_155.f0.f3;
                int16_t *l_494 = (void*)0;
                int16_t *l_495 = &p_1076->g_75[0].f0.f4;
                uint64_t *l_496 = (void*)0;
                uint64_t *l_497 = &p_1076->g_130[0][3];
                int i, j;
                (*l_475) = l_474;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1076->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 47)), permutations[(safe_mod_func_uint32_t_u_u((((((*l_497) = (safe_mod_func_uint64_t_u_u(((*l_466) = (safe_sub_func_int32_t_s_s(((*l_474) && 8L), ((safe_sub_func_int64_t_s_s((l_482 != (((*l_495) = ((safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(p_1076->g_130[7][2], (safe_sub_func_uint32_t_u_u((p_1076->g_75[0].f0 , (safe_add_func_uint8_t_u_u(((*l_491) = 4UL), (safe_add_func_int16_t_s_s(((l_474 != (void*)0) , (**l_475)), (-1L)))))), (-1L))))), (*l_466))) & p_53)) == (*l_474))), p_50)) <= 1UL)))), p_53))) && (-10L)) <= l_498) >= p_51), 10))][(safe_mod_func_uint32_t_u_u(p_1076->tid, 47))]));
                (*l_475) = (*l_475);
                if (p_53)
                    break;
            }
            for (p_1076->g_436.f0.f7 = 0; (p_1076->g_436.f0.f7 <= 51); p_1076->g_436.f0.f7++)
            { /* block id: 255 */
                int32_t *l_502 = &p_1076->g_4;
                for (p_1076->g_94 = 4; (p_1076->g_94 >= 0); p_1076->g_94 -= 1)
                { /* block id: 258 */
                    int32_t **l_503 = &l_502;
                    int i, j;
                    l_501 = ((*l_466) = p_1076->g_113[p_1076->g_94][p_1076->g_94]);
                    (*l_503) = l_502;
                }
                l_504[0][0] ^= l_482;
                (*l_466) = p_51;
            }
        }
        else
        { /* block id: 266 */
            return l_505;
        }
        (*l_513) ^= ((0xD5BF106EL > (l_505 == l_471)) < (((((((*p_1076->g_156) ^ p_50) == (*l_466)) , (p_1076->g_506 , (p_1076->g_507 , ((safe_lshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(((*l_512) = GROUP_DIVERGE(2, 1)), p_52)), (*l_474))) | p_52)))) != (*l_466)) & 0x5E37L) >= 7UL));
        (*l_513) |= (p_52 != ((*l_514) &= (*l_474)));
        if ((*l_513))
        { /* block id: 273 */
            uint32_t l_519[3][10] = {{1UL,0UL,1UL,0UL,1UL,1UL,0UL,1UL,0UL,1UL},{1UL,0UL,1UL,0UL,1UL,1UL,0UL,1UL,0UL,1UL},{1UL,0UL,1UL,0UL,1UL,1UL,0UL,1UL,0UL,1UL}};
            int8_t *l_520 = (void*)0;
            int8_t *l_521[3];
            uint64_t l_530 = 0x78DDB6D94D2A762BL;
            uint32_t *l_531[7] = {&p_1076->g_75[0].f0.f2,(void*)0,&p_1076->g_75[0].f0.f2,&p_1076->g_75[0].f0.f2,(void*)0,&p_1076->g_75[0].f0.f2,&p_1076->g_75[0].f0.f2};
            int32_t l_538 = (-10L);
            int32_t ****l_543 = &p_1076->g_541;
            int32_t ****l_546 = &l_545;
            uint16_t ***l_547 = &p_1076->g_298[0];
            uint8_t *l_558[7][2] = {{&p_1076->g_440[5][0].f3,&p_1076->g_440[5][0].f3},{&p_1076->g_440[5][0].f3,&p_1076->g_440[5][0].f3},{&p_1076->g_440[5][0].f3,&p_1076->g_440[5][0].f3},{&p_1076->g_440[5][0].f3,&p_1076->g_440[5][0].f3},{&p_1076->g_440[5][0].f3,&p_1076->g_440[5][0].f3},{&p_1076->g_440[5][0].f3,&p_1076->g_440[5][0].f3},{&p_1076->g_440[5][0].f3,&p_1076->g_440[5][0].f3}};
            uint32_t **l_561 = &p_1076->g_319;
            int64_t *l_567 = &p_1076->g_74.f0.f1;
            int64_t *l_568 = (void*)0;
            int64_t *l_569 = &p_1076->g_253.f1;
            int i, j;
            for (i = 0; i < 3; i++)
                l_521[i] = &p_1076->g_507.f0.f5;
            (*l_513) = (safe_add_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(l_519[2][1], (l_532 ^= (((*l_505) ^= ((((*l_466) = p_51) >= (safe_div_func_uint16_t_u_u(0xEBECL, (p_53 & (safe_mul_func_uint8_t_u_u((l_519[2][1] <= (((((!(p_1076->g_526 , 0x21DAL)) ^ (safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_1076->global_1_offset, get_global_id(1), 10), (GROUP_DIVERGE(0, 1) | ((l_529 = &p_1076->g_445) == (p_50 , &l_469)))))) | (*p_1076->g_156)) && 0x27L) || l_519[2][1])), (-1L))))))) <= l_530)) && p_53)))), 255UL));
            p_1076->g_548 = ((safe_lshift_func_int8_t_s_s((!l_535), ((safe_mul_func_int16_t_s_s((l_538 = 0L), l_530)) == (safe_mul_func_uint8_t_u_u((((*l_543) = p_1076->g_541) == ((*l_546) = (p_1076->g_544 , l_545))), ((*l_514) |= ((void*)0 != l_547))))))) , p_1076->g_548);
            (*l_474) = (((*l_569) ^= ((--(*l_514)) ^ (((*l_466) >= (safe_unary_minus_func_int64_t_s((safe_lshift_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((safe_add_func_uint8_t_u_u(((*l_513) = (--p_1076->g_440[5][0].f3)), (0L <= 0UL))) <= (0x49L >= 255UL)), (p_1076->g_75[0].f0.f3 &= (((p_1076->g_548 == (l_562 = l_464)) == ((p_1076->g_323.f0.f0 && ((p_1076->g_137 = (((((((safe_sub_func_int32_t_s_s((+(safe_add_func_uint16_t_u_u((p_1076->g_436 , p_50), 1L))), p_50)) < 0L) > (*l_466)) < 0x5982D05961A097BDL) | 65527UL) & p_52) && (*p_1076->g_156))) < p_1076->g_67)) , p_53)) < 0xF0F3A51AA5282ADFL)))), p_1076->g_253.f6))))) < 0x039A7DA5L))) , p_52);
        }
        else
        { /* block id: 292 */
            uint16_t ***l_570 = &p_1076->g_298[0];
            int32_t *l_575 = (void*)0;
            (*l_474) ^= (!((*l_513) = (((*l_570) = &p_1076->g_299[2][2]) == (p_1076->g_572 = (p_1076->g_571 , &l_505)))));
            for (p_1076->g_571.f0.f4 = (-29); (p_1076->g_571.f0.f4 < 10); p_1076->g_571.f0.f4 = safe_add_func_uint8_t_u_u(p_1076->g_571.f0.f4, 3))
            { /* block id: 299 */
                (*p_1076->g_548) &= p_53;
                (*p_1076->g_542) = &l_501;
            }
            return l_505;
        }
    }
    (*l_466) = (safe_mod_func_int64_t_s_s((((safe_lshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(1L, 0)), (&p_1076->g_465 != (void*)0))) <= FAKE_DIVERGE(p_1076->local_0_offset, get_local_id(0), 10)) >= GROUP_DIVERGE(2, 1)), 0x0252AF3082987BC6L));
    return l_505;
}


/* ------------------------------------------ */
/* 
 * reads : p_1076->g_436 p_1076->g_74.f0.f2 p_1076->g_445 p_1076->g_253.f1 p_1076->g_94 p_1076->g_436.f0
 * writes: p_1076->g_116 p_1076->g_445 p_1076->g_253.f1 p_1076->g_94 p_1076->g_74.f2
 */
struct S0  func_54(uint16_t * p_55, int32_t  p_56, uint16_t  p_57, uint16_t * p_58, struct S3 * p_1076)
{ /* block id: 213 */
    struct S0 *l_437 = (void*)0;
    struct S0 **l_438 = &l_437;
    struct S0 *l_439 = &p_1076->g_440[5][0];
    int32_t **l_441[2][3][7] = {{{&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116},{&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116},{&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116}},{{&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116},{&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116},{&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116,&p_1076->g_116}}};
    int16_t *l_443[6][4][10] = {{{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8}},{{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8}},{{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8}},{{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8}},{{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8}},{{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8},{&p_1076->g_74.f0.f4,(void*)0,&p_1076->g_75[0].f0.f8,&p_1076->g_253.f4,(void*)0,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f4,&p_1076->g_440[5][0].f8,&p_1076->g_74.f0.f8,&p_1076->g_74.f0.f8}}};
    int16_t **l_442 = &l_443[2][3][2];
    int16_t ***l_444 = &l_442;
    int16_t ***l_446 = &p_1076->g_445;
    int64_t *l_447 = &p_1076->g_155.f0.f1;
    int64_t *l_448 = &p_1076->g_75[0].f1;
    int64_t *l_449 = &p_1076->g_155.f1;
    int64_t *l_450 = (void*)0;
    int64_t *l_451 = (void*)0;
    int64_t *l_452 = &p_1076->g_253.f1;
    int i, j, k;
    p_56 = (safe_div_func_int64_t_s_s(((*l_452) ^= (p_57 && (safe_mul_func_uint16_t_u_u((safe_div_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((p_1076->g_436 , &p_1076->g_253) != (l_439 = ((*l_438) = l_437))), 3)), ((((p_1076->g_116 = &p_56) == &p_56) , (p_1076->g_74.f0.f2 , (((*l_444) = l_442) != ((*l_446) = p_1076->g_445)))) > GROUP_DIVERGE(0, 1)))), p_57)), 0x4600L)))), p_57));
    for (p_1076->g_94 = 24; (p_1076->g_94 != (-16)); p_1076->g_94--)
    { /* block id: 223 */
        uint16_t l_458 = 65535UL;
        for (p_1076->g_74.f2 = 0; (p_1076->g_74.f2 <= 0); p_1076->g_74.f2 += 1)
        { /* block id: 226 */
            int32_t l_455 = 1L;
            int32_t l_456 = 1L;
            int32_t l_457 = 0x6EC1B9CDL;
            l_458--;
        }
    }
    return p_1076->g_436.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1076->g_323 p_1076->g_219 p_1076->g_74.f0.f5 p_1076->g_75.f0.f2 p_1076->g_68 p_1076->g_137 p_1076->g_126
 * writes: p_1076->g_126
 */
uint16_t * func_59(int32_t * p_60, uint32_t  p_61, int32_t  p_62, struct S3 * p_1076)
{ /* block id: 164 */
    int16_t l_330 = (-1L);
    int32_t l_335 = 0x4DC80864L;
    int32_t l_347 = 0L;
    int64_t l_349 = 1L;
    int32_t l_352 = 1L;
    int32_t l_354 = 0x320B32F9L;
    int32_t l_355 = 3L;
    int32_t *l_360 = &l_335;
    int32_t l_380 = 0x26E7CCF2L;
    uint64_t l_382 = 0UL;
    int32_t *l_417 = &l_347;
    int32_t *l_418[6] = {&l_380,&l_355,&l_380,&l_380,&l_355,&l_380};
    uint16_t l_419 = 65535UL;
    uint32_t l_422 = 0x165C183EL;
    uint16_t *l_425 = &p_1076->g_181;
    int i;
    for (p_62 = 0; (p_62 <= 4); p_62 += 1)
    { /* block id: 167 */
        uint64_t *l_328 = &p_1076->g_216;
        int32_t l_329 = 0x7F19A99BL;
        int32_t l_346 = 8L;
        int32_t l_348 = 0x732D7235L;
        int32_t l_350 = 0x5918745FL;
        int32_t l_351 = 0x34658D55L;
        int32_t l_353 = 3L;
        uint8_t l_397 = 0x9DL;
        uint16_t *l_416 = &p_1076->g_181;
        l_329 = (((p_1076->g_323 , p_1076->g_219[0]) ^ ((((((0x093A5E4534EDEDADL | (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s(((((((void*)0 != l_328) | ((l_329 ^ l_330) >= (safe_mod_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((((((l_329 , l_329) ^ l_329) & p_1076->g_74.f0.f5) >= 0x97AEL) ^ p_61) | 255UL), p_1076->g_75[0].f0.f2)), p_61)))) , (void*)0) == (void*)0) , p_61), p_1076->g_68[8][8])), 1))) <= l_329) , 0x69FA13B5L) , 0xD1F78BCFL) , p_61) , p_1076->g_137)) != l_330);
        for (p_1076->g_126 = 0; (p_1076->g_126 <= 4); p_1076->g_126 += 1)
        { /* block id: 171 */
            int32_t *l_336 = &l_335;
            int32_t *l_337 = &p_1076->g_109;
            int32_t *l_338 = (void*)0;
            int32_t *l_339 = (void*)0;
            int32_t *l_340 = &l_329;
            int32_t *l_341 = &p_1076->g_67;
            int32_t *l_342 = &l_329;
            int32_t l_343 = 0x6EAD41A2L;
            int32_t *l_344 = &p_1076->g_68[5][1];
            int32_t *l_345[3];
            uint64_t l_356[1];
            int32_t *l_393[7][3][5] = {{{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111}},{{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111}},{{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111}},{{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111}},{{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111}},{{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111}},{{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111},{&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_74.f0.f6,&p_1076->g_111}}};
            int64_t l_394 = 0L;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_345[i] = &p_1076->g_155.f0.f6;
            for (i = 0; i < 1; i++)
                l_356[i] = 8UL;
            ++l_356[0];
        }
    }
    --l_419;
    ++l_422;
    return l_425;
}


/* ------------------------------------------ */
/* 
 * reads : p_1076->g_67 p_1076->g_116 p_1076->g_68 p_1076->g_94 p_1076->g_142
 * writes: p_1076->g_67 p_1076->g_68 p_1076->g_155.f1 p_1076->g_319 p_1076->g_94
 */
int32_t * func_63(int32_t * p_64, struct S3 * p_1076)
{ /* block id: 15 */
    int8_t l_66[6][9] = {{(-1L),(-1L),0x46L,0x20L,0x46L,(-1L),(-1L),(-5L),(-1L)},{(-1L),(-1L),0x46L,0x20L,0x46L,(-1L),(-1L),(-5L),(-1L)},{(-1L),(-1L),0x46L,0x20L,0x46L,(-1L),(-1L),(-5L),(-1L)},{(-1L),(-1L),0x46L,0x20L,0x46L,(-1L),(-1L),(-5L),(-1L)},{(-1L),(-1L),0x46L,0x20L,0x46L,(-1L),(-1L),(-5L),(-1L)},{(-1L),(-1L),0x46L,0x20L,0x46L,(-1L),(-1L),(-5L),(-1L)}};
    int32_t *l_79 = &p_1076->g_68[8][5];
    int32_t **l_78 = &l_79;
    int32_t *l_93 = &p_1076->g_94;
    int32_t l_107[4] = {(-1L),(-1L),(-1L),(-1L)};
    uint8_t *l_176 = &p_1076->g_155.f0.f3;
    uint16_t l_240[8] = {0xFE1EL,0xFE1EL,0xFE1EL,0xFE1EL,0xFE1EL,0xFE1EL,0xFE1EL,0xFE1EL};
    uint32_t l_248[2];
    uint64_t *l_261 = (void*)0;
    int i, j;
    for (i = 0; i < 2; i++)
        l_248[i] = 4294967291UL;
    for (p_1076->g_67 = 0; (p_1076->g_67 <= 5); p_1076->g_67 += 1)
    { /* block id: 18 */
        uint32_t l_88 = 0UL;
        int32_t l_97 = 9L;
        int32_t l_98 = 0x29496F13L;
        int32_t l_103[8][7] = {{0L,0L,0x35819B78L,0L,0x0C00D659L,0x2C3304EDL,(-4L)},{0L,0L,0x35819B78L,0L,0x0C00D659L,0x2C3304EDL,(-4L)},{0L,0L,0x35819B78L,0L,0x0C00D659L,0x2C3304EDL,(-4L)},{0L,0L,0x35819B78L,0L,0x0C00D659L,0x2C3304EDL,(-4L)},{0L,0L,0x35819B78L,0L,0x0C00D659L,0x2C3304EDL,(-4L)},{0L,0L,0x35819B78L,0L,0x0C00D659L,0x2C3304EDL,(-4L)},{0L,0L,0x35819B78L,0L,0x0C00D659L,0x2C3304EDL,(-4L)},{0L,0L,0x35819B78L,0L,0x0C00D659L,0x2C3304EDL,(-4L)}};
        int32_t *l_158 = &l_107[2];
        int16_t *l_315 = &p_1076->g_74.f0.f4;
        int i, j;
        for (p_1076->g_68[8][5] = 5; (p_1076->g_68[8][5] >= 0); p_1076->g_68[8][5] -= 1)
        { /* block id: 21 */
            int32_t **l_76 = (void*)0;
            uint8_t l_95 = 1UL;
            int32_t l_101 = 0x2F449D34L;
            int32_t l_104 = 1L;
            int32_t l_105 = 0x4CFB0C79L;
            int32_t l_106[6] = {0x4289D3A1L,(-1L),0x4289D3A1L,0x4289D3A1L,(-1L),0x4289D3A1L};
            uint32_t l_165 = 1UL;
            int8_t l_217 = 0L;
            struct S0 *l_254 = &p_1076->g_75[0].f0;
            uint64_t *l_292 = &p_1076->g_130[0][0];
            int i, j;
            (1 + 1);
        }
        for (p_1076->g_155.f1 = 0; (p_1076->g_155.f1 <= 5); p_1076->g_155.f1 += 1)
        { /* block id: 150 */
            for (l_88 = 0; (l_88 <= 5); l_88 += 1)
            { /* block id: 153 */
                (*l_79) &= ((p_1076->g_116 != (p_1076->g_319 = &l_88)) > ((*l_158) = 0x58996B34L));
                (*p_1076->g_116) |= (&l_66[1][2] != &l_66[2][1]);
            }
        }
    }
    (*l_78) = (*p_1076->g_142);
    return p_64;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local int64_t l_comm_values[47];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 47; i++)
            l_comm_values[i] = 1;
    struct S3 c_1077;
    struct S3* p_1076 = &c_1077;
    struct S3 c_1078 = {
        (-2L), // p_1076->g_2
        0x52250DB8L, // p_1076->g_3
        0x3717BE9FL, // p_1076->g_4
        (-1L), // p_1076->g_7
        (-6L), // p_1076->g_8
        0x1D754057L, // p_1076->g_9
        {0x254981C5L}, // p_1076->g_32
        {(void*)0,(void*)0,(void*)0}, // p_1076->g_42
        0UL, // p_1076->g_44
        {{0x31L,-6L,4294967290UL,249UL,0x31B9L,0L,0x069A3E2BL,0x8CA40452L,0x030AL}}, // p_1076->g_65
        0x6D99275AL, // p_1076->g_67
        {{0L,0L,0x2CCE3044L,8L,0x35841EC3L,0x36352B72L,(-3L),0L,(-3L)},{0L,0L,0x2CCE3044L,8L,0x35841EC3L,0x36352B72L,(-3L),0L,(-3L)},{0L,0L,0x2CCE3044L,8L,0x35841EC3L,0x36352B72L,(-3L),0L,(-3L)},{0L,0L,0x2CCE3044L,8L,0x35841EC3L,0x36352B72L,(-3L),0L,(-3L)},{0L,0L,0x2CCE3044L,8L,0x35841EC3L,0x36352B72L,(-3L),0L,(-3L)},{0L,0L,0x2CCE3044L,8L,0x35841EC3L,0x36352B72L,(-3L),0L,(-3L)},{0L,0L,0x2CCE3044L,8L,0x35841EC3L,0x36352B72L,(-3L),0L,(-3L)},{0L,0L,0x2CCE3044L,8L,0x35841EC3L,0x36352B72L,(-3L),0L,(-3L)},{0L,0L,0x2CCE3044L,8L,0x35841EC3L,0x36352B72L,(-3L),0L,(-3L)}}, // p_1076->g_68
        (-1L), // p_1076->g_69
        {{-4L,0L,0x552D49A3L,0UL,0x7F96L,0L,0x7D1D410AL,0x2D528561L,0x2321L}}, // p_1076->g_74
        {{{-1L,-1L,0xB6EA11B9L,0xB5L,0x327CL,0x58L,0x5C089A47L,0xF190218FL,7L}},{{-1L,-1L,0xB6EA11B9L,0xB5L,0x327CL,0x58L,0x5C089A47L,0xF190218FL,7L}},{{-1L,-1L,0xB6EA11B9L,0xB5L,0x327CL,0x58L,0x5C089A47L,0xF190218FL,7L}},{{-1L,-1L,0xB6EA11B9L,0xB5L,0x327CL,0x58L,0x5C089A47L,0xF190218FL,7L}},{{-1L,-1L,0xB6EA11B9L,0xB5L,0x327CL,0x58L,0x5C089A47L,0xF190218FL,7L}},{{-1L,-1L,0xB6EA11B9L,0xB5L,0x327CL,0x58L,0x5C089A47L,0xF190218FL,7L}},{{-1L,-1L,0xB6EA11B9L,0xB5L,0x327CL,0x58L,0x5C089A47L,0xF190218FL,7L}},{{-1L,-1L,0xB6EA11B9L,0xB5L,0x327CL,0x58L,0x5C089A47L,0xF190218FL,7L}}}, // p_1076->g_75
        0x5C27B9F0L, // p_1076->g_94
        1L, // p_1076->g_108
        1L, // p_1076->g_109
        0x55L, // p_1076->g_110
        0L, // p_1076->g_111
        2L, // p_1076->g_112
        {{0x8A545981L,0x2DAAAAF2L,0x884C6635L,0x86066615L,2UL},{0x8A545981L,0x2DAAAAF2L,0x884C6635L,0x86066615L,2UL},{0x8A545981L,0x2DAAAAF2L,0x884C6635L,0x86066615L,2UL},{0x8A545981L,0x2DAAAAF2L,0x884C6635L,0x86066615L,2UL},{0x8A545981L,0x2DAAAAF2L,0x884C6635L,0x86066615L,2UL},{0x8A545981L,0x2DAAAAF2L,0x884C6635L,0x86066615L,2UL},{0x8A545981L,0x2DAAAAF2L,0x884C6635L,0x86066615L,2UL},{0x8A545981L,0x2DAAAAF2L,0x884C6635L,0x86066615L,2UL},{0x8A545981L,0x2DAAAAF2L,0x884C6635L,0x86066615L,2UL}}, // p_1076->g_113
        &p_1076->g_94, // p_1076->g_116
        0x48EE0A1F665F5ADEL, // p_1076->g_126
        {{0x0249FC326A3C1A26L,0x2F1E5DE67BC55C71L,0xA404EE80DCCF353FL,0xE9EF75D212FF8156L,0x7E8E6B6787CEB110L,18446744073709551607UL,0UL,0x13A31308165012FDL,0x2F1E5DE67BC55C71L},{0x0249FC326A3C1A26L,0x2F1E5DE67BC55C71L,0xA404EE80DCCF353FL,0xE9EF75D212FF8156L,0x7E8E6B6787CEB110L,18446744073709551607UL,0UL,0x13A31308165012FDL,0x2F1E5DE67BC55C71L},{0x0249FC326A3C1A26L,0x2F1E5DE67BC55C71L,0xA404EE80DCCF353FL,0xE9EF75D212FF8156L,0x7E8E6B6787CEB110L,18446744073709551607UL,0UL,0x13A31308165012FDL,0x2F1E5DE67BC55C71L},{0x0249FC326A3C1A26L,0x2F1E5DE67BC55C71L,0xA404EE80DCCF353FL,0xE9EF75D212FF8156L,0x7E8E6B6787CEB110L,18446744073709551607UL,0UL,0x13A31308165012FDL,0x2F1E5DE67BC55C71L},{0x0249FC326A3C1A26L,0x2F1E5DE67BC55C71L,0xA404EE80DCCF353FL,0xE9EF75D212FF8156L,0x7E8E6B6787CEB110L,18446744073709551607UL,0UL,0x13A31308165012FDL,0x2F1E5DE67BC55C71L},{0x0249FC326A3C1A26L,0x2F1E5DE67BC55C71L,0xA404EE80DCCF353FL,0xE9EF75D212FF8156L,0x7E8E6B6787CEB110L,18446744073709551607UL,0UL,0x13A31308165012FDL,0x2F1E5DE67BC55C71L},{0x0249FC326A3C1A26L,0x2F1E5DE67BC55C71L,0xA404EE80DCCF353FL,0xE9EF75D212FF8156L,0x7E8E6B6787CEB110L,18446744073709551607UL,0UL,0x13A31308165012FDL,0x2F1E5DE67BC55C71L},{0x0249FC326A3C1A26L,0x2F1E5DE67BC55C71L,0xA404EE80DCCF353FL,0xE9EF75D212FF8156L,0x7E8E6B6787CEB110L,18446744073709551607UL,0UL,0x13A31308165012FDL,0x2F1E5DE67BC55C71L}}, // p_1076->g_130
        0x3CL, // p_1076->g_137
        &p_1076->g_116, // p_1076->g_142
        {{0L,0x72AC2E06E0E4DEADL,4294967291UL,255UL,0x73CAL,0L,0x58839424L,0UL,8L}}, // p_1076->g_155
        &p_1076->g_126, // p_1076->g_156
        {0x36L,0x2B969A7E2A24FF47L,0x29A21605L,255UL,-1L,0x24L,5L,0xC1653546L,0L}, // p_1076->g_161
        0x9544L, // p_1076->g_181
        {{{0}},{{0}},{{0}},{{0}}}, // p_1076->g_200
        18446744073709551615UL, // p_1076->g_216
        {0x2B74L,0x2B74L}, // p_1076->g_219
        8UL, // p_1076->g_224
        {0x74L,0x3F38699217A759BEL,6UL,6UL,1L,0x57L,0L,1UL,0L}, // p_1076->g_253
        0x738552DDL, // p_1076->g_267
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_1076->g_299
        {&p_1076->g_299[2][2]}, // p_1076->g_298
        {{&p_1076->g_9,&p_1076->g_253.f6,&p_1076->g_69,&p_1076->g_111,&p_1076->g_69},{&p_1076->g_9,&p_1076->g_253.f6,&p_1076->g_69,&p_1076->g_111,&p_1076->g_69},{&p_1076->g_9,&p_1076->g_253.f6,&p_1076->g_69,&p_1076->g_111,&p_1076->g_69},{&p_1076->g_9,&p_1076->g_253.f6,&p_1076->g_69,&p_1076->g_111,&p_1076->g_69},{&p_1076->g_9,&p_1076->g_253.f6,&p_1076->g_69,&p_1076->g_111,&p_1076->g_69},{&p_1076->g_9,&p_1076->g_253.f6,&p_1076->g_69,&p_1076->g_111,&p_1076->g_69},{&p_1076->g_9,&p_1076->g_253.f6,&p_1076->g_69,&p_1076->g_111,&p_1076->g_69}}, // p_1076->g_317
        (void*)0, // p_1076->g_319
        {{0x25L,0x062C70196E379D1EL,8UL,0x8EL,0x6D44L,-5L,0x2FC65EB0L,8UL,0x2C63L}}, // p_1076->g_323
        (void*)0, // p_1076->g_361
        &p_1076->g_116, // p_1076->g_364
        {0}, // p_1076->g_386
        &p_1076->g_386, // p_1076->g_387
        {{1L,0x5E44E6BB63A7AE3BL,0xAC5323B5L,250UL,-1L,0x43L,0x5F4A50E1L,1UL,0x3BF6L}}, // p_1076->g_436
        {{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}},{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}},{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}},{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}},{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}},{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}},{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}},{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}},{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}},{{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{8L,0L,9UL,248UL,-1L,0x32L,0x222B34C7L,1UL,0L},{0x25L,0x739F0B637EF90E53L,0x591AED03L,1UL,-2L,0x74L,-2L,0x31EA9536L,-1L},{0x11L,0x37B7BFCBCAA734B6L,4294967291UL,0UL,1L,0x24L,0L,0x35B350D0L,-1L}}}, // p_1076->g_440
        (void*)0, // p_1076->g_445
        (-4L), // p_1076->g_465
        {{-3L,0x137CF0BBCD5209BDL,7UL,0UL,0x6310L,0L,-4L,0x9520EF9FL,-1L}}, // p_1076->g_506
        {{-1L,0x2C2BE25CDEC84863L,0UL,0UL,4L,0L,0L,4294967287UL,0x075FL}}, // p_1076->g_507
        {0}, // p_1076->g_526
        &p_1076->g_116, // p_1076->g_542
        &p_1076->g_542, // p_1076->g_541
        {{1L,-8L,4294967295UL,0x98L,0L,0x74L,1L,0x1092A640L,-8L}}, // p_1076->g_544
        &p_1076->g_8, // p_1076->g_548
        {{0x66L,0x2FAEF158FA73FF72L,9UL,1UL,0x1EB7L,-1L,-6L,0UL,9L}}, // p_1076->g_571
        (void*)0, // p_1076->g_572
        {-5L,0x48B647FCCDCB510DL,0UL,0UL,-7L,0x65L,-8L,1UL,1L}, // p_1076->g_604
        (void*)0, // p_1076->g_640
        &p_1076->g_640, // p_1076->g_639
        {-1L,0x751163E08EE8A5E7L,8UL,5UL,-1L,-4L,0x721B04BDL,3UL,7L}, // p_1076->g_706
        {0L,0x202FF677C6B4E0B2L,0x9C01697AL,255UL,1L,0x23L,-1L,0x4F377273L,0x5AF3L}, // p_1076->g_777
        &p_1076->g_777, // p_1076->g_776
        {0x2FL,0x1F1C6986A5F9475AL,2UL,246UL,2L,0x63L,-1L,0xC45F31F6L,0L}, // p_1076->g_781
        {6L,0x579D8FA2D0C7093FL,1UL,1UL,-1L,0x3BL,0L,1UL,0x1AEFL}, // p_1076->g_785
        {-1L,0x2C10058A147C6AFCL,4294967295UL,8UL,8L,0L,0x21C02E3FL,1UL,0x527EL}, // p_1076->g_883
        {{0L,4L,1UL,255UL,2L,0x77L,0x4EBC8CB5L,7UL,0x2D0BL}}, // p_1076->g_901
        {{1L,-1L,0UL,9UL,-1L,6L,0x21380E4FL,0x05D920AFL,-1L}}, // p_1076->g_909
        {0x61L,-1L,4294967295UL,250UL,5L,0x44L,1L,1UL,0x5863L}, // p_1076->g_917
        {{0x11L,-10L,4UL,0UL,0L,1L,9L,0x136CF0EBL,0x6345L}}, // p_1076->g_925
        0x78C229520EA834C1L, // p_1076->g_983
        0x4CBAL, // p_1076->g_1002
        {0x55L,0x222A26A5077415EBL,0x5E632668L,0x39L,-1L,0x19L,1L,5UL,0x759CL}, // p_1076->g_1064
        (void*)0, // p_1076->g_1066
        &p_1076->g_1066, // p_1076->g_1065
        0x5AAB2BE5L, // p_1076->g_1072
        sequence_input[get_global_id(0)], // p_1076->global_0_offset
        sequence_input[get_global_id(1)], // p_1076->global_1_offset
        sequence_input[get_global_id(2)], // p_1076->global_2_offset
        sequence_input[get_local_id(0)], // p_1076->local_0_offset
        sequence_input[get_local_id(1)], // p_1076->local_1_offset
        sequence_input[get_local_id(2)], // p_1076->local_2_offset
        sequence_input[get_group_id(0)], // p_1076->group_0_offset
        sequence_input[get_group_id(1)], // p_1076->group_1_offset
        sequence_input[get_group_id(2)], // p_1076->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 47)), permutations[0][get_linear_local_id()])), // p_1076->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1077 = c_1078;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1076);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1076->g_2, "p_1076->g_2", print_hash_value);
    transparent_crc(p_1076->g_3, "p_1076->g_3", print_hash_value);
    transparent_crc(p_1076->g_4, "p_1076->g_4", print_hash_value);
    transparent_crc(p_1076->g_7, "p_1076->g_7", print_hash_value);
    transparent_crc(p_1076->g_8, "p_1076->g_8", print_hash_value);
    transparent_crc(p_1076->g_9, "p_1076->g_9", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1076->g_32[i], "p_1076->g_32[i]", print_hash_value);

    }
    transparent_crc(p_1076->g_44, "p_1076->g_44", print_hash_value);
    transparent_crc(p_1076->g_65.f0.f0, "p_1076->g_65.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_65.f0.f1, "p_1076->g_65.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_65.f0.f2, "p_1076->g_65.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_65.f0.f3, "p_1076->g_65.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_65.f0.f4, "p_1076->g_65.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_65.f0.f5, "p_1076->g_65.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_65.f0.f6, "p_1076->g_65.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_65.f0.f7, "p_1076->g_65.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_65.f0.f8, "p_1076->g_65.f0.f8", print_hash_value);
    transparent_crc(p_1076->g_67, "p_1076->g_67", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1076->g_68[i][j], "p_1076->g_68[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1076->g_69, "p_1076->g_69", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1076->g_75[i].f0.f0, "p_1076->g_75[i].f0.f0", print_hash_value);
        transparent_crc(p_1076->g_75[i].f0.f1, "p_1076->g_75[i].f0.f1", print_hash_value);
        transparent_crc(p_1076->g_75[i].f0.f2, "p_1076->g_75[i].f0.f2", print_hash_value);
        transparent_crc(p_1076->g_75[i].f0.f3, "p_1076->g_75[i].f0.f3", print_hash_value);
        transparent_crc(p_1076->g_75[i].f0.f4, "p_1076->g_75[i].f0.f4", print_hash_value);
        transparent_crc(p_1076->g_75[i].f0.f5, "p_1076->g_75[i].f0.f5", print_hash_value);
        transparent_crc(p_1076->g_75[i].f0.f6, "p_1076->g_75[i].f0.f6", print_hash_value);
        transparent_crc(p_1076->g_75[i].f0.f7, "p_1076->g_75[i].f0.f7", print_hash_value);
        transparent_crc(p_1076->g_75[i].f0.f8, "p_1076->g_75[i].f0.f8", print_hash_value);

    }
    transparent_crc(p_1076->g_94, "p_1076->g_94", print_hash_value);
    transparent_crc(p_1076->g_108, "p_1076->g_108", print_hash_value);
    transparent_crc(p_1076->g_109, "p_1076->g_109", print_hash_value);
    transparent_crc(p_1076->g_110, "p_1076->g_110", print_hash_value);
    transparent_crc(p_1076->g_111, "p_1076->g_111", print_hash_value);
    transparent_crc(p_1076->g_112, "p_1076->g_112", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1076->g_113[i][j], "p_1076->g_113[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1076->g_126, "p_1076->g_126", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1076->g_130[i][j], "p_1076->g_130[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1076->g_137, "p_1076->g_137", print_hash_value);
    transparent_crc(p_1076->g_161.f0, "p_1076->g_161.f0", print_hash_value);
    transparent_crc(p_1076->g_161.f1, "p_1076->g_161.f1", print_hash_value);
    transparent_crc(p_1076->g_161.f2, "p_1076->g_161.f2", print_hash_value);
    transparent_crc(p_1076->g_161.f3, "p_1076->g_161.f3", print_hash_value);
    transparent_crc(p_1076->g_161.f4, "p_1076->g_161.f4", print_hash_value);
    transparent_crc(p_1076->g_161.f5, "p_1076->g_161.f5", print_hash_value);
    transparent_crc(p_1076->g_161.f6, "p_1076->g_161.f6", print_hash_value);
    transparent_crc(p_1076->g_161.f7, "p_1076->g_161.f7", print_hash_value);
    transparent_crc(p_1076->g_161.f8, "p_1076->g_161.f8", print_hash_value);
    transparent_crc(p_1076->g_181, "p_1076->g_181", print_hash_value);
    transparent_crc(p_1076->g_216, "p_1076->g_216", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1076->g_219[i], "p_1076->g_219[i]", print_hash_value);

    }
    transparent_crc(p_1076->g_224, "p_1076->g_224", print_hash_value);
    transparent_crc(p_1076->g_253.f0, "p_1076->g_253.f0", print_hash_value);
    transparent_crc(p_1076->g_253.f1, "p_1076->g_253.f1", print_hash_value);
    transparent_crc(p_1076->g_253.f2, "p_1076->g_253.f2", print_hash_value);
    transparent_crc(p_1076->g_253.f3, "p_1076->g_253.f3", print_hash_value);
    transparent_crc(p_1076->g_253.f4, "p_1076->g_253.f4", print_hash_value);
    transparent_crc(p_1076->g_253.f5, "p_1076->g_253.f5", print_hash_value);
    transparent_crc(p_1076->g_253.f6, "p_1076->g_253.f6", print_hash_value);
    transparent_crc(p_1076->g_253.f7, "p_1076->g_253.f7", print_hash_value);
    transparent_crc(p_1076->g_253.f8, "p_1076->g_253.f8", print_hash_value);
    transparent_crc(p_1076->g_267, "p_1076->g_267", print_hash_value);
    transparent_crc(p_1076->g_323.f0.f0, "p_1076->g_323.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_323.f0.f1, "p_1076->g_323.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_323.f0.f2, "p_1076->g_323.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_323.f0.f3, "p_1076->g_323.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_323.f0.f4, "p_1076->g_323.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_323.f0.f5, "p_1076->g_323.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_323.f0.f6, "p_1076->g_323.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_323.f0.f7, "p_1076->g_323.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_323.f0.f8, "p_1076->g_323.f0.f8", print_hash_value);
    transparent_crc(p_1076->g_436.f0.f0, "p_1076->g_436.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_436.f0.f1, "p_1076->g_436.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_436.f0.f2, "p_1076->g_436.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_436.f0.f3, "p_1076->g_436.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_436.f0.f4, "p_1076->g_436.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_436.f0.f5, "p_1076->g_436.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_436.f0.f6, "p_1076->g_436.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_436.f0.f7, "p_1076->g_436.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_436.f0.f8, "p_1076->g_436.f0.f8", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1076->g_440[i][j].f0, "p_1076->g_440[i][j].f0", print_hash_value);
            transparent_crc(p_1076->g_440[i][j].f1, "p_1076->g_440[i][j].f1", print_hash_value);
            transparent_crc(p_1076->g_440[i][j].f2, "p_1076->g_440[i][j].f2", print_hash_value);
            transparent_crc(p_1076->g_440[i][j].f3, "p_1076->g_440[i][j].f3", print_hash_value);
            transparent_crc(p_1076->g_440[i][j].f4, "p_1076->g_440[i][j].f4", print_hash_value);
            transparent_crc(p_1076->g_440[i][j].f5, "p_1076->g_440[i][j].f5", print_hash_value);
            transparent_crc(p_1076->g_440[i][j].f6, "p_1076->g_440[i][j].f6", print_hash_value);
            transparent_crc(p_1076->g_440[i][j].f7, "p_1076->g_440[i][j].f7", print_hash_value);
            transparent_crc(p_1076->g_440[i][j].f8, "p_1076->g_440[i][j].f8", print_hash_value);

        }
    }
    transparent_crc(p_1076->g_465, "p_1076->g_465", print_hash_value);
    transparent_crc(p_1076->g_506.f0.f0, "p_1076->g_506.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_506.f0.f1, "p_1076->g_506.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_506.f0.f2, "p_1076->g_506.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_506.f0.f3, "p_1076->g_506.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_506.f0.f4, "p_1076->g_506.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_506.f0.f5, "p_1076->g_506.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_506.f0.f6, "p_1076->g_506.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_506.f0.f7, "p_1076->g_506.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_506.f0.f8, "p_1076->g_506.f0.f8", print_hash_value);
    transparent_crc(p_1076->g_507.f0.f0, "p_1076->g_507.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_507.f0.f1, "p_1076->g_507.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_507.f0.f2, "p_1076->g_507.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_507.f0.f3, "p_1076->g_507.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_507.f0.f4, "p_1076->g_507.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_507.f0.f5, "p_1076->g_507.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_507.f0.f6, "p_1076->g_507.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_507.f0.f7, "p_1076->g_507.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_507.f0.f8, "p_1076->g_507.f0.f8", print_hash_value);
    transparent_crc(p_1076->g_544.f0.f0, "p_1076->g_544.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_544.f0.f1, "p_1076->g_544.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_544.f0.f2, "p_1076->g_544.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_544.f0.f3, "p_1076->g_544.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_544.f0.f4, "p_1076->g_544.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_544.f0.f5, "p_1076->g_544.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_544.f0.f6, "p_1076->g_544.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_544.f0.f7, "p_1076->g_544.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_544.f0.f8, "p_1076->g_544.f0.f8", print_hash_value);
    transparent_crc(p_1076->g_571.f0.f0, "p_1076->g_571.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_571.f0.f1, "p_1076->g_571.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_571.f0.f2, "p_1076->g_571.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_571.f0.f3, "p_1076->g_571.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_571.f0.f4, "p_1076->g_571.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_571.f0.f5, "p_1076->g_571.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_571.f0.f6, "p_1076->g_571.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_571.f0.f7, "p_1076->g_571.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_571.f0.f8, "p_1076->g_571.f0.f8", print_hash_value);
    transparent_crc(p_1076->g_604.f0, "p_1076->g_604.f0", print_hash_value);
    transparent_crc(p_1076->g_604.f1, "p_1076->g_604.f1", print_hash_value);
    transparent_crc(p_1076->g_604.f2, "p_1076->g_604.f2", print_hash_value);
    transparent_crc(p_1076->g_604.f3, "p_1076->g_604.f3", print_hash_value);
    transparent_crc(p_1076->g_604.f4, "p_1076->g_604.f4", print_hash_value);
    transparent_crc(p_1076->g_604.f5, "p_1076->g_604.f5", print_hash_value);
    transparent_crc(p_1076->g_604.f6, "p_1076->g_604.f6", print_hash_value);
    transparent_crc(p_1076->g_604.f7, "p_1076->g_604.f7", print_hash_value);
    transparent_crc(p_1076->g_604.f8, "p_1076->g_604.f8", print_hash_value);
    transparent_crc(p_1076->g_706.f0, "p_1076->g_706.f0", print_hash_value);
    transparent_crc(p_1076->g_706.f1, "p_1076->g_706.f1", print_hash_value);
    transparent_crc(p_1076->g_706.f2, "p_1076->g_706.f2", print_hash_value);
    transparent_crc(p_1076->g_706.f3, "p_1076->g_706.f3", print_hash_value);
    transparent_crc(p_1076->g_706.f4, "p_1076->g_706.f4", print_hash_value);
    transparent_crc(p_1076->g_706.f5, "p_1076->g_706.f5", print_hash_value);
    transparent_crc(p_1076->g_706.f6, "p_1076->g_706.f6", print_hash_value);
    transparent_crc(p_1076->g_706.f7, "p_1076->g_706.f7", print_hash_value);
    transparent_crc(p_1076->g_706.f8, "p_1076->g_706.f8", print_hash_value);
    transparent_crc(p_1076->g_777.f0, "p_1076->g_777.f0", print_hash_value);
    transparent_crc(p_1076->g_777.f1, "p_1076->g_777.f1", print_hash_value);
    transparent_crc(p_1076->g_777.f2, "p_1076->g_777.f2", print_hash_value);
    transparent_crc(p_1076->g_777.f3, "p_1076->g_777.f3", print_hash_value);
    transparent_crc(p_1076->g_777.f4, "p_1076->g_777.f4", print_hash_value);
    transparent_crc(p_1076->g_777.f5, "p_1076->g_777.f5", print_hash_value);
    transparent_crc(p_1076->g_777.f6, "p_1076->g_777.f6", print_hash_value);
    transparent_crc(p_1076->g_777.f7, "p_1076->g_777.f7", print_hash_value);
    transparent_crc(p_1076->g_777.f8, "p_1076->g_777.f8", print_hash_value);
    transparent_crc(p_1076->g_781.f0, "p_1076->g_781.f0", print_hash_value);
    transparent_crc(p_1076->g_781.f1, "p_1076->g_781.f1", print_hash_value);
    transparent_crc(p_1076->g_781.f2, "p_1076->g_781.f2", print_hash_value);
    transparent_crc(p_1076->g_781.f3, "p_1076->g_781.f3", print_hash_value);
    transparent_crc(p_1076->g_781.f4, "p_1076->g_781.f4", print_hash_value);
    transparent_crc(p_1076->g_781.f5, "p_1076->g_781.f5", print_hash_value);
    transparent_crc(p_1076->g_781.f6, "p_1076->g_781.f6", print_hash_value);
    transparent_crc(p_1076->g_781.f7, "p_1076->g_781.f7", print_hash_value);
    transparent_crc(p_1076->g_781.f8, "p_1076->g_781.f8", print_hash_value);
    transparent_crc(p_1076->g_785.f0, "p_1076->g_785.f0", print_hash_value);
    transparent_crc(p_1076->g_785.f1, "p_1076->g_785.f1", print_hash_value);
    transparent_crc(p_1076->g_785.f2, "p_1076->g_785.f2", print_hash_value);
    transparent_crc(p_1076->g_785.f3, "p_1076->g_785.f3", print_hash_value);
    transparent_crc(p_1076->g_785.f4, "p_1076->g_785.f4", print_hash_value);
    transparent_crc(p_1076->g_785.f5, "p_1076->g_785.f5", print_hash_value);
    transparent_crc(p_1076->g_785.f6, "p_1076->g_785.f6", print_hash_value);
    transparent_crc(p_1076->g_785.f7, "p_1076->g_785.f7", print_hash_value);
    transparent_crc(p_1076->g_785.f8, "p_1076->g_785.f8", print_hash_value);
    transparent_crc(p_1076->g_883.f0, "p_1076->g_883.f0", print_hash_value);
    transparent_crc(p_1076->g_883.f1, "p_1076->g_883.f1", print_hash_value);
    transparent_crc(p_1076->g_883.f2, "p_1076->g_883.f2", print_hash_value);
    transparent_crc(p_1076->g_883.f3, "p_1076->g_883.f3", print_hash_value);
    transparent_crc(p_1076->g_883.f4, "p_1076->g_883.f4", print_hash_value);
    transparent_crc(p_1076->g_883.f5, "p_1076->g_883.f5", print_hash_value);
    transparent_crc(p_1076->g_883.f6, "p_1076->g_883.f6", print_hash_value);
    transparent_crc(p_1076->g_883.f7, "p_1076->g_883.f7", print_hash_value);
    transparent_crc(p_1076->g_883.f8, "p_1076->g_883.f8", print_hash_value);
    transparent_crc(p_1076->g_901.f0.f0, "p_1076->g_901.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_901.f0.f1, "p_1076->g_901.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_901.f0.f2, "p_1076->g_901.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_901.f0.f3, "p_1076->g_901.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_901.f0.f4, "p_1076->g_901.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_901.f0.f5, "p_1076->g_901.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_901.f0.f6, "p_1076->g_901.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_901.f0.f7, "p_1076->g_901.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_901.f0.f8, "p_1076->g_901.f0.f8", print_hash_value);
    transparent_crc(p_1076->g_909.f0.f0, "p_1076->g_909.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_909.f0.f1, "p_1076->g_909.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_909.f0.f2, "p_1076->g_909.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_909.f0.f3, "p_1076->g_909.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_909.f0.f4, "p_1076->g_909.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_909.f0.f5, "p_1076->g_909.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_909.f0.f6, "p_1076->g_909.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_909.f0.f7, "p_1076->g_909.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_909.f0.f8, "p_1076->g_909.f0.f8", print_hash_value);
    transparent_crc(p_1076->g_917.f0, "p_1076->g_917.f0", print_hash_value);
    transparent_crc(p_1076->g_917.f1, "p_1076->g_917.f1", print_hash_value);
    transparent_crc(p_1076->g_917.f2, "p_1076->g_917.f2", print_hash_value);
    transparent_crc(p_1076->g_917.f3, "p_1076->g_917.f3", print_hash_value);
    transparent_crc(p_1076->g_917.f4, "p_1076->g_917.f4", print_hash_value);
    transparent_crc(p_1076->g_917.f5, "p_1076->g_917.f5", print_hash_value);
    transparent_crc(p_1076->g_917.f6, "p_1076->g_917.f6", print_hash_value);
    transparent_crc(p_1076->g_917.f7, "p_1076->g_917.f7", print_hash_value);
    transparent_crc(p_1076->g_917.f8, "p_1076->g_917.f8", print_hash_value);
    transparent_crc(p_1076->g_925.f0.f0, "p_1076->g_925.f0.f0", print_hash_value);
    transparent_crc(p_1076->g_925.f0.f1, "p_1076->g_925.f0.f1", print_hash_value);
    transparent_crc(p_1076->g_925.f0.f2, "p_1076->g_925.f0.f2", print_hash_value);
    transparent_crc(p_1076->g_925.f0.f3, "p_1076->g_925.f0.f3", print_hash_value);
    transparent_crc(p_1076->g_925.f0.f4, "p_1076->g_925.f0.f4", print_hash_value);
    transparent_crc(p_1076->g_925.f0.f5, "p_1076->g_925.f0.f5", print_hash_value);
    transparent_crc(p_1076->g_925.f0.f6, "p_1076->g_925.f0.f6", print_hash_value);
    transparent_crc(p_1076->g_925.f0.f7, "p_1076->g_925.f0.f7", print_hash_value);
    transparent_crc(p_1076->g_925.f0.f8, "p_1076->g_925.f0.f8", print_hash_value);
    transparent_crc(p_1076->g_983, "p_1076->g_983", print_hash_value);
    transparent_crc(p_1076->g_1002, "p_1076->g_1002", print_hash_value);
    transparent_crc(p_1076->g_1064.f0, "p_1076->g_1064.f0", print_hash_value);
    transparent_crc(p_1076->g_1064.f1, "p_1076->g_1064.f1", print_hash_value);
    transparent_crc(p_1076->g_1064.f2, "p_1076->g_1064.f2", print_hash_value);
    transparent_crc(p_1076->g_1064.f3, "p_1076->g_1064.f3", print_hash_value);
    transparent_crc(p_1076->g_1064.f4, "p_1076->g_1064.f4", print_hash_value);
    transparent_crc(p_1076->g_1064.f5, "p_1076->g_1064.f5", print_hash_value);
    transparent_crc(p_1076->g_1064.f6, "p_1076->g_1064.f6", print_hash_value);
    transparent_crc(p_1076->g_1064.f7, "p_1076->g_1064.f7", print_hash_value);
    transparent_crc(p_1076->g_1064.f8, "p_1076->g_1064.f8", print_hash_value);
    transparent_crc(p_1076->g_1072, "p_1076->g_1072", print_hash_value);
    transparent_crc(p_1076->l_comm_values[get_linear_local_id()], "p_1076->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1076->g_comm_values[get_linear_group_id() * 47 + get_linear_local_id()], "p_1076->g_comm_values[get_linear_group_id() * 47 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
