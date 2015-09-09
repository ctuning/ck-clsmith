// --atomics 50 ---fake_divergence -g 52,6,16 -l 1,6,2
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


// Seed: 34

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   uint64_t  f1;
   uint16_t  f2;
   volatile int8_t  f3;
   volatile int16_t  f4;
   uint32_t  f5;
   int64_t  f6;
   volatile uint32_t  f7;
};

union U1 {
   int16_t  f0;
   volatile int16_t  f1;
};

union U2 {
   int16_t  f0;
   volatile int8_t * volatile  f1;
   int64_t  f2;
};

union U3 {
   int32_t  f0;
};

struct S4 {
    int32_t g_2;
    int8_t g_16;
    int8_t *g_32;
    volatile uint8_t g_59[2][7][2];
    int64_t g_77[4][10];
    volatile int64_t g_79;
    volatile int64_t * volatile g_78;
    int32_t *g_83;
    int32_t ** volatile g_82;
    int16_t g_98;
    int32_t g_101;
    uint32_t g_104;
    int16_t g_117;
    uint64_t g_141[3][2][2];
    uint32_t g_144;
    volatile uint64_t g_147;
    uint64_t g_158;
    int8_t g_190;
    uint16_t g_193;
    volatile struct S0 g_196[6][10];
    volatile struct S0 g_198[2];
    int32_t * volatile g_201;
    int32_t * volatile g_202;
    int32_t * volatile g_203;
    union U1 g_224;
    union U2 g_238;
    union U2 *g_240;
    union U2 ** volatile g_239;
    int32_t g_258;
    volatile struct S0 g_261;
    volatile struct S0 g_262[1];
    union U2 g_266;
    volatile union U3 g_268;
    volatile union U3 * volatile g_267;
    volatile union U3 g_277;
    volatile union U3 * volatile g_276;
    volatile union U3 g_279;
    volatile union U3 *g_278;
    volatile union U3 * volatile *g_275[9][5][5];
    struct S0 g_283[5][10];
    int8_t g_325;
    int32_t g_349;
    struct S0 g_401;
    struct S0 g_402;
    int32_t g_404[5];
    int32_t * volatile g_406;
    union U3 g_430[2];
    uint8_t g_432;
    struct S0 * volatile g_478;
    struct S0 * volatile g_496;
    volatile union U2 g_502;
    int32_t * volatile *g_512;
    int32_t ** volatile g_518;
    uint8_t g_617;
    volatile union U1 g_640;
    int64_t g_654;
    union U2 g_658;
    int64_t g_661;
    int64_t g_663;
    int32_t ** volatile g_696;
    union U2 ** volatile g_711;
    volatile struct S0 g_712;
    volatile struct S0 * volatile g_713[10][10][1];
    volatile struct S0 g_719;
    volatile struct S0 g_757;
    volatile struct S0 g_759;
    volatile uint32_t g_760;
    int32_t ** volatile g_761;
    int32_t ** volatile g_763;
    int32_t ** volatile g_764;
    volatile int16_t g_785;
    union U2 g_830;
    struct S0 g_857[5];
    struct S0 * volatile g_858;
    int32_t ** volatile g_901;
    union U1 g_913;
    union U1 g_915;
    uint16_t g_978;
    int32_t ** volatile g_979;
    int32_t ** volatile g_1027;
    uint64_t *g_1035;
    uint64_t **g_1034;
    uint64_t *** volatile g_1033;
    uint8_t g_1086;
    int32_t * volatile g_1087;
    volatile union U2 g_1114;
    union U1 g_1132;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
union U1  func_1(struct S4 * p_1133);
int32_t  func_6(int8_t * p_7, uint32_t  p_8, struct S4 * p_1133);
int8_t * func_9(uint32_t  p_10, struct S4 * p_1133);
uint8_t  func_11(int8_t * p_12, int8_t * p_13, int32_t  p_14, struct S4 * p_1133);
int8_t * func_17(int32_t  p_18, int8_t  p_19, struct S4 * p_1133);
int8_t  func_26(int8_t * p_27, uint64_t  p_28, union U3  p_29, int8_t * p_30, int8_t * p_31, struct S4 * p_1133);
int16_t  func_38(uint32_t  p_39, int8_t * p_40, uint32_t  p_41, uint64_t  p_42, struct S4 * p_1133);
int8_t * func_43(int8_t * p_44, int8_t * p_45, struct S4 * p_1133);
int8_t * func_46(uint64_t  p_47, int32_t  p_48, int8_t * p_49, struct S4 * p_1133);
uint32_t  func_64(uint64_t  p_65, int32_t * p_66, int32_t  p_67, uint32_t  p_68, int8_t * p_69, struct S4 * p_1133);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1133->g_2 p_1133->g_32 p_1133->g_59 p_1133->g_78 p_1133->g_16 p_1133->g_82 p_1133->g_77 p_1133->g_101 p_1133->g_104 p_1133->g_98 p_1133->g_141 p_1133->g_144 p_1133->g_147 p_1133->g_158 p_1133->g_83 p_1133->g_117 p_1133->g_190 p_1133->g_193 p_1133->g_196 p_1133->g_203 p_1133->g_224 p_1133->g_239 p_1133->g_258 p_1133->g_261 p_1133->g_266 p_1133->g_267 p_1133->g_275 p_1133->g_278 p_1133->g_283.f2 p_1133->g_224.f0 p_1133->g_240 p_1133->g_283.f5 p_1133->g_325 p_1133->g_198 p_1133->g_349 p_1133->g_401 p_1133->g_406 p_1133->g_79 p_1133->g_402.f5 p_1133->g_404 p_1133->g_478 p_1133->g_283 p_1133->g_496 p_1133->g_502 p_1133->g_512 p_1133->g_518 p_1133->g_277.f0 p_1133->g_432 p_1133->g_617 p_1133->g_262.f7 p_1133->g_640 p_1133->g_266.f0 p_1133->g_658 p_1133->g_661 p_1133->g_430.f0 p_1133->g_696 p_1133->g_901 p_1133->g_402.f2 p_1133->g_857.f6 p_1133->g_761 p_1133->g_279 p_1133->g_857.f1 p_1133->g_857.f2 p_1133->g_978 p_1133->g_979 p_1133->g_763 p_1133->g_757.f5 p_1133->g_1033 p_1133->g_658.f0 p_1133->g_915.f0 p_1133->g_1086 p_1133->g_1087 p_1133->g_402.f1 p_1133->g_262.f1 p_1133->g_402.f6 p_1133->g_1114 p_1133->g_1132
 * writes: p_1133->g_2 p_1133->g_59 p_1133->g_77 p_1133->g_83 p_1133->g_98 p_1133->g_101 p_1133->g_104 p_1133->g_117 p_1133->g_141 p_1133->g_144 p_1133->g_147 p_1133->g_158 p_1133->g_190 p_1133->g_193 p_1133->g_198 p_1133->g_16 p_1133->g_240 p_1133->g_258 p_1133->g_262 p_1133->g_267 p_1133->g_283.f2 p_1133->g_325 p_1133->g_349 p_1133->g_402 p_1133->g_404 p_1133->g_401.f5 p_1133->g_432 p_1133->g_283 p_1133->g_512 p_1133->g_202 p_1133->g_617 p_1133->g_654 p_1133->g_661 p_1133->g_663 p_1133->g_430.f0 p_1133->g_401.f1 p_1133->g_401.f6 p_1133->g_857.f1 p_1133->g_857 p_1133->g_224.f0 p_1133->g_915.f0 p_1133->g_401.f2 p_1133->g_913.f0 p_1133->g_1034 p_1133->g_1086 p_1133->g_401.f4 p_1133->g_757.f1 p_1133->g_759.f3
 */
union U1  func_1(struct S4 * p_1133)
{ /* block id: 4 */
    uint32_t l_33 = 2UL;
    int8_t *l_50 = &p_1133->g_16;
    union U3 l_984 = {1L};
    int32_t l_1113 = 0L;
    int64_t *l_1122[7][4];
    int64_t **l_1121 = &l_1122[3][1];
    int64_t **l_1123 = &l_1122[3][0];
    uint64_t ***l_1126 = &p_1133->g_1034;
    int16_t *l_1127 = &p_1133->g_224.f0;
    uint64_t l_1130 = 1UL;
    int32_t *l_1131[5];
    int i, j;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
            l_1122[i][j] = &p_1133->g_654;
    }
    for (i = 0; i < 5; i++)
        l_1131[i] = &p_1133->g_349;
    for (p_1133->g_2 = 7; (p_1133->g_2 < (-24)); p_1133->g_2 = safe_sub_func_int64_t_s_s(p_1133->g_2, 8))
    { /* block id: 7 */
        uint16_t l_5 = 0x369BL;
        int8_t *l_15[4][2];
        int8_t *l_324 = &p_1133->g_325;
        int32_t *l_993[10][7][3] = {{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}},{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}},{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}},{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}},{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}},{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}},{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}},{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}},{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}},{{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101},{(void*)0,&l_984.f0,&p_1133->g_101}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 2; j++)
                l_15[i][j] = &p_1133->g_16;
        }
        if (l_5)
            break;
        l_1113 |= func_6(func_9(((func_11(l_15[2][1], func_17((l_984.f0 = (safe_mod_func_uint32_t_u_u((!(safe_sub_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(func_26(p_1133->g_32, ((l_33 != (safe_sub_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(func_38(l_5, func_43(func_46(((l_50 == &p_1133->g_16) == (&p_1133->g_16 == (void*)0)), ((safe_div_func_uint16_t_u_u(l_33, l_33)) & p_1133->g_2), &p_1133->g_16, p_1133), l_324, p_1133), l_5, p_1133->g_857[1].f2, p_1133), l_33)), 1UL))) > p_1133->g_857[1].f2), l_984, l_15[0][0], l_50, p_1133), l_33)), GROUP_DIVERGE(1, 1)))), l_33))), l_33, p_1133), l_33, p_1133) && p_1133->g_757.f5) > (-2L)), p_1133), p_1133->g_658.f0, p_1133);
    }
    (*p_1133->g_406) = ((((!(p_1133->g_1114 , (((safe_mul_func_int8_t_s_s((l_984.f0 ^ ((safe_div_func_int64_t_s_s(0x7588009CB3D60E3DL, ((safe_mul_func_uint16_t_u_u(((l_1121 == (p_1133->g_283[0][5].f1 , l_1123)) == (safe_add_func_int16_t_s_s(((*l_1127) |= (l_1126 == &p_1133->g_1034)), (safe_lshift_func_uint16_t_u_u(p_1133->g_77[1][5], 15))))), 0UL)) , (*p_1133->g_78)))) > l_1113)), l_1113)) != p_1133->g_1086) & 0x5E34CCF36B16CA34L))) >= l_984.f0) ^ l_1130) && l_1113);
    return p_1133->g_1132;
}


/* ------------------------------------------ */
/* 
 * reads : p_1133->g_98 p_1133->g_915.f0 p_1133->g_196 p_1133->g_203 p_1133->g_193 p_1133->g_1086 p_1133->g_258 p_1133->g_1087 p_1133->g_404 p_1133->g_32 p_1133->g_16 p_1133->g_402.f1 p_1133->g_190 p_1133->g_261.f1 p_1133->g_262.f1 p_1133->g_402.f6 p_1133->g_401.f6 p_1133->g_401.f1
 * writes: p_1133->g_98 p_1133->g_402.f5 p_1133->g_190 p_1133->g_915.f0 p_1133->g_158 p_1133->g_101 p_1133->g_193 p_1133->g_258 p_1133->g_404 p_1133->g_1086 p_1133->g_402.f1 p_1133->g_401.f4 p_1133->g_757.f1 p_1133->g_759.f3 p_1133->g_59 p_1133->g_16
 */
int32_t  func_6(int8_t * p_7, uint32_t  p_8, struct S4 * p_1133)
{ /* block id: 638 */
    int8_t l_1037 = 0x4AL;
    int32_t *l_1085 = &p_1133->g_404[4];
    uint8_t *l_1090[2];
    int32_t *l_1105 = &p_1133->g_101;
    int32_t *l_1106[3][6] = {{&p_1133->g_258,&p_1133->g_2,&p_1133->g_258,&p_1133->g_258,&p_1133->g_2,&p_1133->g_258},{&p_1133->g_258,&p_1133->g_2,&p_1133->g_258,&p_1133->g_258,&p_1133->g_2,&p_1133->g_258},{&p_1133->g_258,&p_1133->g_2,&p_1133->g_258,&p_1133->g_258,&p_1133->g_2,&p_1133->g_258}};
    int8_t l_1107 = 0x57L;
    int64_t l_1108 = 0x6EDBC8B8F291A30FL;
    int8_t l_1109[3][6] = {{1L,1L,(-1L),0x73L,(-9L),0x73L},{1L,1L,(-1L),0x73L,(-9L),0x73L},{1L,1L,(-1L),0x73L,(-9L),0x73L}};
    uint64_t l_1110 = 0x92C99F8A0003B101L;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1090[i] = &p_1133->g_617;
    for (p_1133->g_98 = 5; (p_1133->g_98 >= 1); p_1133->g_98 -= 1)
    { /* block id: 641 */
        uint16_t l_1047[2];
        int8_t l_1083[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int32_t *l_1084 = &p_1133->g_258;
        int i;
        for (i = 0; i < 2; i++)
            l_1047[i] = 0x966BL;
        for (p_1133->g_402.f5 = 0; (p_1133->g_402.f5 <= 4); p_1133->g_402.f5 += 1)
        { /* block id: 644 */
            if (l_1037)
                break;
            for (p_1133->g_190 = 0; (p_1133->g_190 <= 4); p_1133->g_190 += 1)
            { /* block id: 648 */
                int32_t *l_1038 = &p_1133->g_404[0];
                int32_t *l_1039 = &p_1133->g_430[0].f0;
                int32_t *l_1040 = &p_1133->g_258;
                int32_t *l_1041 = &p_1133->g_404[3];
                int32_t *l_1042 = &p_1133->g_258;
                int32_t *l_1043 = &p_1133->g_101;
                int32_t *l_1044 = &p_1133->g_101;
                int32_t *l_1045 = &p_1133->g_404[2];
                int32_t *l_1046 = &p_1133->g_258;
                ++l_1047[1];
            }
        }
        for (p_1133->g_915.f0 = 0; (p_1133->g_915.f0 <= 4); p_1133->g_915.f0 += 1)
        { /* block id: 654 */
            if ((atomic_inc(&p_1133->l_atomic_input[37]) == 2))
            { /* block id: 656 */
                int32_t l_1050 = 7L;
                for (l_1050 = 1; (l_1050 <= 4); l_1050 += 1)
                { /* block id: 659 */
                    int32_t l_1051 = 0x4CF8CF10L;
                    uint8_t l_1055 = 252UL;
                    for (l_1051 = 5; (l_1051 >= 0); l_1051 -= 1)
                    { /* block id: 662 */
                        int32_t l_1053 = 0x2B72084DL;
                        int32_t *l_1052 = &l_1053;
                        int32_t *l_1054 = &l_1053;
                        l_1054 = l_1052;
                    }
                    l_1055--;
                    for (l_1055 = 0; (l_1055 <= 5); l_1055 += 1)
                    { /* block id: 668 */
                        uint32_t l_1058[8] = {1UL,0x72C16632L,1UL,1UL,0x72C16632L,1UL,1UL,0x72C16632L};
                        uint8_t l_1059[9][6][1] = {{{0xADL},{0xADL},{0xADL},{0xADL},{0xADL},{0xADL}},{{0xADL},{0xADL},{0xADL},{0xADL},{0xADL},{0xADL}},{{0xADL},{0xADL},{0xADL},{0xADL},{0xADL},{0xADL}},{{0xADL},{0xADL},{0xADL},{0xADL},{0xADL},{0xADL}},{{0xADL},{0xADL},{0xADL},{0xADL},{0xADL},{0xADL}},{{0xADL},{0xADL},{0xADL},{0xADL},{0xADL},{0xADL}},{{0xADL},{0xADL},{0xADL},{0xADL},{0xADL},{0xADL}},{{0xADL},{0xADL},{0xADL},{0xADL},{0xADL},{0xADL}},{{0xADL},{0xADL},{0xADL},{0xADL},{0xADL},{0xADL}}};
                        uint32_t l_1060[10];
                        int i, j, k;
                        for (i = 0; i < 10; i++)
                            l_1060[i] = 0x3DBA5F2AL;
                        l_1059[6][0][0] |= (l_1051 = l_1058[6]);
                        l_1051 |= l_1060[2];
                    }
                }
                for (l_1050 = 4; (l_1050 >= 0); l_1050 -= 1)
                { /* block id: 676 */
                    int32_t l_1061 = 0L;
                    uint64_t l_1075 = 0x19B631F46FCA66B2L;
                    for (l_1061 = 0; (l_1061 <= 4); l_1061 += 1)
                    { /* block id: 679 */
                        uint64_t l_1062 = 0UL;
                        uint8_t l_1063 = 0x5AL;
                        int32_t l_1064 = 0x23CDE506L;
                        int8_t l_1065 = (-8L);
                        int32_t l_1066 = 1L;
                        l_1063 ^= l_1062;
                        l_1065 = (l_1064 = 0L);
                        l_1066 ^= 0x3523BEB7L;
                    }
                    for (l_1061 = 0; (l_1061 <= 4); l_1061 += 1)
                    { /* block id: 687 */
                        int16_t l_1067 = 0x49F1L;
                        int32_t *l_1068 = (void*)0;
                        int32_t l_1069 = 0x0BE87D54L;
                        uint32_t l_1070 = 4294967295UL;
                        volatile struct S0 l_1071[6][10][2] = {{{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}}},{{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}}},{{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}}},{{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}}},{{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}}},{{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}},{{9UL,6UL,65535UL,0x2EL,2L,0x61BD6F7AL,0L,6UL},{0UL,1UL,8UL,0x54L,2L,4294967289UL,0x05E67DD7309CC708L,0xB0C48E79L}}}};
                        uint32_t l_1072 = 0x622AD264L;
                        int32_t l_1073 = (-6L);
                        uint64_t l_1074 = 0x5CDAAB82E2D72926L;
                        int i, j, k;
                        l_1068 = (l_1067 , (void*)0);
                        l_1071[5][6][0] = ((FAKE_DIVERGE(p_1133->local_0_offset, get_local_id(0), 10) , (FAKE_DIVERGE(p_1133->local_0_offset, get_local_id(0), 10) , (l_1069 , l_1070))) , p_1133->g_196[p_1133->g_915.f0][(p_1133->g_915.f0 + 3)]);
                        l_1074 ^= (l_1073 = l_1072);
                    }
                    l_1075--;
                }
                unsigned int result = 0;
                result += l_1050;
                atomic_add(&p_1133->l_special_values[37], result);
            }
            else
            { /* block id: 695 */
                (1 + 1);
            }
            for (p_1133->g_158 = 0; (p_1133->g_158 <= 5); p_1133->g_158 += 1)
            { /* block id: 700 */
                uint64_t l_1078 = 0xF7E7A01526467087L;
                l_1078--;
                return l_1078;
            }
        }
        (*p_1133->g_203) = (safe_add_func_int64_t_s_s(p_8, l_1083[3]));
        l_1085 = l_1084;
        for (p_1133->g_193 = 0; (p_1133->g_193 <= 4); p_1133->g_193 += 1)
        { /* block id: 709 */
            int16_t l_1103[9][9] = {{0x4962L,(-9L),0x7115L,(-1L),0L,(-1L),0x09ABL,0x16E0L,0x09ABL},{0x4962L,(-9L),0x7115L,(-1L),0L,(-1L),0x09ABL,0x16E0L,0x09ABL},{0x4962L,(-9L),0x7115L,(-1L),0L,(-1L),0x09ABL,0x16E0L,0x09ABL},{0x4962L,(-9L),0x7115L,(-1L),0L,(-1L),0x09ABL,0x16E0L,0x09ABL},{0x4962L,(-9L),0x7115L,(-1L),0L,(-1L),0x09ABL,0x16E0L,0x09ABL},{0x4962L,(-9L),0x7115L,(-1L),0L,(-1L),0x09ABL,0x16E0L,0x09ABL},{0x4962L,(-9L),0x7115L,(-1L),0L,(-1L),0x09ABL,0x16E0L,0x09ABL},{0x4962L,(-9L),0x7115L,(-1L),0L,(-1L),0x09ABL,0x16E0L,0x09ABL},{0x4962L,(-9L),0x7115L,(-1L),0L,(-1L),0x09ABL,0x16E0L,0x09ABL}};
            int i, j;
            (*l_1084) = p_1133->g_1086;
            (*p_1133->g_1087) &= ((*l_1085) >= p_8);
            for (p_1133->g_1086 = 0; (p_1133->g_1086 <= 5); p_1133->g_1086 += 1)
            { /* block id: 714 */
                uint64_t *l_1091 = &p_1133->g_402.f1;
                int64_t l_1092[8] = {0x1921358B1A5B099DL,0x20E40CC9B1921CF7L,0x1921358B1A5B099DL,0x1921358B1A5B099DL,0x20E40CC9B1921CF7L,0x1921358B1A5B099DL,0x1921358B1A5B099DL,0x20E40CC9B1921CF7L};
                int64_t *l_1094 = &l_1092[6];
                int64_t **l_1093 = &l_1094;
                int32_t l_1104 = 6L;
                int i, j;
                (*l_1085) = ((~(p_8 , ((p_1133->g_196[p_1133->g_98][p_1133->g_98] , (safe_lshift_func_int16_t_s_s((l_1090[1] == &p_1133->g_59[1][4][0]), 15))) == ((((*p_1133->g_32) || ((((((*l_1091) |= (*l_1085)) != ((l_1092[6] | (((*l_1085) , (void*)0) != l_1093)) & FAKE_DIVERGE(p_1133->group_2_offset, get_group_id(2), 10))) >= (-10L)) & p_1133->g_190) , (*p_1133->g_32))) != p_8) >= (-10L))))) , 0x780E0CCCL);
                for (p_1133->g_401.f4 = 0; p_1133->g_401.f4 < 2; p_1133->g_401.f4 += 1)
                {
                    for (p_1133->g_757.f1 = 0; p_1133->g_757.f1 < 7; p_1133->g_757.f1 += 1)
                    {
                        for (p_1133->g_759.f3 = 0; p_1133->g_759.f3 < 2; p_1133->g_759.f3 += 1)
                        {
                            p_1133->g_59[p_1133->g_401.f4][p_1133->g_757.f1][p_1133->g_759.f3] = 247UL;
                        }
                    }
                }
                (*l_1084) ^= p_1133->g_196[p_1133->g_98][p_1133->g_98].f3;
                l_1104 ^= ((*l_1084) = ((((safe_mul_func_int8_t_s_s(((*l_1085) > p_1133->g_261.f1), p_8)) , (((safe_mul_func_int32_t_s_s((*l_1084), ((GROUP_DIVERGE(0, 1) , (safe_div_func_uint64_t_u_u((((0x117122B0L || ((((*p_1133->g_32) = ((p_8 ^ (*l_1084)) != ((void*)0 == l_1091))) >= p_1133->g_262[0].f1) & p_1133->g_402.f6)) == p_1133->g_401.f6) == p_1133->g_401.f1), 0x380A9ABBEEF41F2BL))) != 0xFDL))) , l_1092[6]) && p_8)) | l_1103[7][5]) >= p_8));
            }
        }
    }
    --l_1110;
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1133->g_401.f2 p_1133->g_913.f0 p_1133->g_1033
 * writes: p_1133->g_401.f2 p_1133->g_83 p_1133->g_913.f0 p_1133->g_1034
 */
int8_t * func_9(uint32_t  p_10, struct S4 * p_1133)
{ /* block id: 624 */
    uint8_t l_1023 = 255UL;
    int32_t *l_1026 = (void*)0;
    int32_t **l_1028 = &p_1133->g_83;
    uint64_t *l_1032[10] = {&p_1133->g_402.f1,&p_1133->g_401.f1,&p_1133->g_402.f1,&p_1133->g_401.f1,&p_1133->g_402.f1,&p_1133->g_402.f1,&p_1133->g_401.f1,&p_1133->g_402.f1,&p_1133->g_401.f1,&p_1133->g_402.f1};
    uint64_t **l_1031 = &l_1032[8];
    int8_t *l_1036 = &p_1133->g_325;
    int i;
    for (p_1133->g_401.f2 = (-30); (p_1133->g_401.f2 <= 20); p_1133->g_401.f2++)
    { /* block id: 627 */
        ++l_1023;
    }
    (*l_1028) = l_1026;
    (*l_1028) = (void*)0;
    for (p_1133->g_913.f0 = 0; (p_1133->g_913.f0 != 23); p_1133->g_913.f0 = safe_add_func_int16_t_s_s(p_1133->g_913.f0, 1))
    { /* block id: 634 */
        (*p_1133->g_1033) = l_1031;
    }
    return l_1036;
}


/* ------------------------------------------ */
/* 
 * reads : p_1133->g_915.f0 p_1133->g_901 p_1133->g_518 p_1133->g_83 p_1133->g_82
 * writes: p_1133->g_915.f0 p_1133->g_661 p_1133->g_83
 */
uint8_t  func_11(int8_t * p_12, int8_t * p_13, int32_t  p_14, struct S4 * p_1133)
{ /* block id: 609 */
    uint32_t l_1018[4];
    int i;
    for (i = 0; i < 4; i++)
        l_1018[i] = 0UL;
    for (p_1133->g_915.f0 = 1; (p_1133->g_915.f0 >= (-7)); p_1133->g_915.f0--)
    { /* block id: 612 */
        for (p_1133->g_661 = (-4); (p_1133->g_661 > (-25)); p_1133->g_661 = safe_sub_func_uint32_t_u_u(p_1133->g_661, 7))
        { /* block id: 615 */
            int32_t *l_1006 = &p_1133->g_349;
            int32_t *l_1007 = &p_1133->g_404[0];
            int32_t l_1008 = 0x64AD483DL;
            int32_t *l_1009 = &p_1133->g_404[0];
            int32_t *l_1010 = &p_1133->g_258;
            int32_t *l_1011 = (void*)0;
            int32_t *l_1012 = (void*)0;
            int32_t *l_1013 = (void*)0;
            int32_t *l_1014 = &p_1133->g_349;
            int32_t *l_1015 = &p_1133->g_258;
            int32_t *l_1016 = &p_1133->g_101;
            int32_t *l_1017[4][5][2];
            int i, j, k;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 5; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_1017[i][j][k] = &p_1133->g_404[0];
                }
            }
            ++l_1018[3];
            (*p_1133->g_901) = &p_14;
            if ((**p_1133->g_518))
                continue;
            (*p_1133->g_82) = (*p_1133->g_82);
        }
        if (p_14)
            continue;
    }
    return l_1018[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1133->g_224.f0
 * writes: p_1133->g_224.f0
 */
int8_t * func_17(int32_t  p_18, int8_t  p_19, struct S4 * p_1133)
{ /* block id: 600 */
    int16_t l_998 = 1L;
    int32_t *l_999 = (void*)0;
    int32_t **l_1000 = (void*)0;
    int32_t **l_1001 = &l_999;
    for (p_1133->g_224.f0 = 0; (p_1133->g_224.f0 >= (-1)); p_1133->g_224.f0--)
    { /* block id: 603 */
        int8_t **l_997 = (void*)0;
        int8_t ***l_996 = &l_997;
        (*l_996) = &p_1133->g_32;
        if (l_998)
            break;
    }
    (*l_1001) = l_999;
    return &p_1133->g_190;
}


/* ------------------------------------------ */
/* 
 * reads : p_1133->g_32 p_1133->g_16
 * writes: p_1133->g_857
 */
int8_t  func_26(int8_t * p_27, uint64_t  p_28, union U3  p_29, int8_t * p_30, int8_t * p_31, struct S4 * p_1133)
{ /* block id: 585 */
    if ((atomic_inc(&p_1133->l_atomic_input[13]) == 3))
    { /* block id: 587 */
        int32_t l_985 = 0x70333D59L;
        int64_t l_992 = 0x6E66CEE591EAC2BBL;
        for (l_985 = 0; l_985 < 5; l_985 += 1)
        {
            struct S0 tmp = {{0x4CECL,0xFC46D90EFFC5D580L,0x0BC7L,1L,0L,0x6781AFA0L,4L,0xD7210371L}};
            p_1133->g_857[l_985] = tmp;
        }
        for (l_985 = 0; (l_985 == (-9)); l_985 = safe_sub_func_uint32_t_u_u(l_985, 3))
        { /* block id: 591 */
            int32_t l_988 = 0x756B9256L;
            uint32_t l_989 = 4294967295UL;
            --l_989;
        }
        l_992 ^= 0x56270BA4L;
        unsigned int result = 0;
        result += l_985;
        result += l_992;
        atomic_add(&p_1133->l_special_values[13], result);
    }
    else
    { /* block id: 595 */
        (1 + 1);
    }
    return (*p_1133->g_32);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_38(uint32_t  p_39, int8_t * p_40, uint32_t  p_41, uint64_t  p_42, struct S4 * p_1133)
{ /* block id: 583 */
    int8_t l_983 = 0x48L;
    return l_983;
}


/* ------------------------------------------ */
/* 
 * reads : p_1133->g_325 p_1133->g_203 p_1133->g_101 p_1133->g_283.f5 p_1133->g_196.f7 p_1133->g_283.f2 p_1133->g_141 p_1133->g_258 p_1133->g_198 p_1133->g_349 p_1133->g_401 p_1133->g_406 p_1133->g_78 p_1133->g_79 p_1133->g_278 p_1133->g_2 p_1133->g_193 p_1133->g_402.f5 p_1133->g_404 p_1133->g_478 p_1133->g_283 p_1133->g_496 p_1133->g_158 p_1133->g_502 p_1133->g_512 p_1133->g_518 p_1133->g_277.f0 p_1133->g_190 p_1133->g_16 p_1133->g_32 p_1133->g_104 p_1133->g_240 p_1133->g_224.f0 p_1133->g_432 p_1133->g_617 p_1133->g_262.f7 p_1133->g_261.f6 p_1133->g_82 p_1133->g_640 p_1133->g_144 p_1133->g_266.f0 p_1133->g_77 p_1133->g_658 p_1133->g_661 p_1133->g_430.f0 p_1133->g_696 p_1133->g_901 p_1133->g_196.f4 p_1133->g_402.f2 p_1133->g_83 p_1133->g_857.f6 p_1133->g_761 p_1133->g_279 p_1133->g_857.f1 p_1133->g_857.f2 p_1133->g_978 p_1133->g_979 p_1133->g_763
 * writes: p_1133->g_325 p_1133->g_98 p_1133->g_144 p_1133->g_258 p_1133->g_101 p_1133->g_283.f2 p_1133->g_190 p_1133->g_349 p_1133->g_402 p_1133->g_404 p_1133->g_401.f5 p_1133->g_432 p_1133->g_83 p_1133->g_283 p_1133->g_158 p_1133->g_512 p_1133->g_202 p_1133->g_77 p_1133->g_16 p_1133->g_117 p_1133->g_617 p_1133->g_654 p_1133->g_661 p_1133->g_663 p_1133->g_430.f0 p_1133->g_401.f1 p_1133->g_401.f6 p_1133->g_141 p_1133->g_857.f1
 */
int8_t * func_43(int8_t * p_44, int8_t * p_45, struct S4 * p_1133)
{ /* block id: 188 */
    uint32_t l_339[5];
    int32_t l_433 = 5L;
    int32_t l_453 = 0x1E884A58L;
    int32_t l_459 = 6L;
    int32_t l_464 = 0x066B903DL;
    int32_t l_467[4];
    uint16_t *l_533 = &p_1133->g_402.f2;
    int64_t *l_622 = &p_1133->g_77[0][4];
    int8_t *l_627 = &p_1133->g_190;
    uint32_t *l_647[8][2];
    uint32_t *l_652 = (void*)0;
    union U2 **l_659 = (void*)0;
    uint16_t l_670 = 0xAB80L;
    uint8_t *l_671[9][9][3] = {{{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617}},{{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617}},{{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617}},{{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617}},{{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617}},{{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617}},{{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617}},{{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617}},{{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617},{&p_1133->g_432,&p_1133->g_432,&p_1133->g_617}}};
    int32_t *l_672 = (void*)0;
    int32_t *l_673 = &p_1133->g_430[0].f0;
    uint64_t l_786 = 0xABF4756CB8A74191L;
    union U1 *l_813 = &p_1133->g_224;
    int32_t l_922 = 0x1BD74B37L;
    uint32_t l_952 = 0UL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_339[i] = 0x250D3C97L;
    for (i = 0; i < 4; i++)
        l_467[i] = 0x1303C9F1L;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
            l_647[i][j] = &p_1133->g_104;
    }
    for (p_1133->g_325 = 0; (p_1133->g_325 > (-9)); p_1133->g_325--)
    { /* block id: 191 */
        uint32_t l_347 = 0xB52AA74DL;
        int16_t *l_359 = &p_1133->g_117;
        union U3 *l_429[2];
        union U2 **l_434 = &p_1133->g_240;
        uint32_t l_441 = 1UL;
        int32_t l_449 = 0x7ABCA3F5L;
        int32_t l_450 = 0x6DB2D02CL;
        int32_t l_451 = 9L;
        int32_t l_454 = 9L;
        int32_t l_455 = 0x42E491F4L;
        int32_t l_457 = 9L;
        int32_t l_460 = 7L;
        int32_t l_461 = 1L;
        int32_t l_465 = (-5L);
        int32_t l_470 = 0x09EE8C58L;
        uint64_t *l_544 = &p_1133->g_141[2][1][0];
        int8_t *l_630 = &p_1133->g_16;
        int i;
        for (i = 0; i < 2; i++)
            l_429[i] = &p_1133->g_430[0];
        for (p_1133->g_98 = 0; (p_1133->g_98 == 16); ++p_1133->g_98)
        { /* block id: 194 */
            union U3 *l_340 = (void*)0;
            int32_t l_343 = 1L;
            uint16_t l_344[4];
            int32_t l_350 = 6L;
            int i;
            for (i = 0; i < 4; i++)
                l_344[i] = 0xF4CAL;
            if ((*p_1133->g_203))
                break;
            for (p_1133->g_144 = 0; (p_1133->g_144 == 3); p_1133->g_144 = safe_add_func_int32_t_s_s(p_1133->g_144, 9))
            { /* block id: 198 */
                struct S0 *l_332[5][2][10] = {{{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0},{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0},{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0},{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0},{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0}},{{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0},{(void*)0,(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0,&p_1133->g_283[0][5],&p_1133->g_283[0][5],&p_1133->g_283[0][5],(void*)0}}};
                int32_t *l_341 = &p_1133->g_258;
                int32_t *l_342 = &p_1133->g_101;
                int32_t *l_348[9] = {&p_1133->g_349,&p_1133->g_349,&p_1133->g_349,&p_1133->g_349,&p_1133->g_349,&p_1133->g_349,&p_1133->g_349,&p_1133->g_349,&p_1133->g_349};
                int i, j, k;
                l_350 |= (((l_332[2][1][8] == (void*)0) <= (safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1133->local_0_offset, get_local_id(0), 10), (safe_div_func_int64_t_s_s((((*l_342) = ((*l_341) = (safe_sub_func_uint64_t_u_u((~l_339[4]), ((void*)0 != l_340))))) <= l_343), l_344[0]))))) >= (safe_sub_func_int32_t_s_s((l_347 = l_344[1]), (l_344[1] & 0x8FC71B94F09773C7L))));
            }
        }
        if (l_347)
        { /* block id: 205 */
            uint16_t *l_362 = &p_1133->g_283[0][5].f2;
            int32_t *l_363 = &p_1133->g_258;
            int8_t *l_399 = (void*)0;
            (*l_363) |= (((safe_lshift_func_int16_t_s_s(l_339[4], p_1133->g_283[0][5].f5)) | (safe_lshift_func_uint16_t_u_u((((*l_362) = ((~((&p_1133->g_198[1] == (void*)0) != ((safe_add_func_uint64_t_u_u((((((((safe_rshift_func_int16_t_s_u(((l_339[4] ^ 0x0C42L) <= (~(((l_359 != (void*)0) > ((safe_sub_func_int16_t_s_s(p_1133->g_196[2][5].f7, FAKE_DIVERGE(p_1133->local_0_offset, get_local_id(0), 10))) || l_339[4])) <= 1L))), 15)) != 1UL) | 0x549BL) ^ p_1133->g_283[0][5].f2) != l_347) >= l_347) & (*p_45)), p_1133->g_141[0][0][0])) > l_339[2]))) != 0x68362BCBL)) ^ 0x3812L), 3))) > FAKE_DIVERGE(p_1133->local_0_offset, get_local_id(0), 10));
            for (p_1133->g_190 = 0; (p_1133->g_190 > 24); p_1133->g_190 = safe_add_func_uint8_t_u_u(p_1133->g_190, 1))
            { /* block id: 210 */
                if ((atomic_inc(&p_1133->l_atomic_input[14]) == 3))
                { /* block id: 212 */
                    int32_t l_366 = 1L;
                    int16_t l_384 = 1L;
                    uint32_t l_387 = 0UL;
                    uint32_t *l_386 = &l_387;
                    uint32_t **l_385 = &l_386;
                    uint32_t **l_388 = &l_386;
                    uint32_t **l_389 = &l_386;
                    for (l_366 = 0; (l_366 <= 1); l_366 += 1)
                    { /* block id: 215 */
                        uint32_t l_367 = 4294967295UL;
                        int16_t l_368[9] = {0x1746L,0x68B7L,0x1746L,0x1746L,0x68B7L,0x1746L,0x1746L,0x68B7L,0x1746L};
                        uint32_t l_369 = 1UL;
                        uint64_t l_370[7] = {0xDCCD0DA9D683EA0AL,0x831E0D733A2C6373L,0xDCCD0DA9D683EA0AL,0xDCCD0DA9D683EA0AL,0x831E0D733A2C6373L,0xDCCD0DA9D683EA0AL,0xDCCD0DA9D683EA0AL};
                        union U1 l_371 = {5L};/* VOLATILE GLOBAL l_371 */
                        union U3 l_373 = {0x1B4DE27BL};
                        union U3 *l_372[2][4][5] = {{{&l_373,&l_373,&l_373,&l_373,&l_373},{&l_373,&l_373,&l_373,&l_373,&l_373},{&l_373,&l_373,&l_373,&l_373,&l_373},{&l_373,&l_373,&l_373,&l_373,&l_373}},{{&l_373,&l_373,&l_373,&l_373,&l_373},{&l_373,&l_373,&l_373,&l_373,&l_373},{&l_373,&l_373,&l_373,&l_373,&l_373},{&l_373,&l_373,&l_373,&l_373,&l_373}}};
                        union U3 *l_374 = (void*)0;
                        int8_t l_375 = 0x0AL;
                        uint16_t l_376[8][3] = {{0x8732L,0x40BDL,0x8732L},{0x8732L,0x40BDL,0x8732L},{0x8732L,0x40BDL,0x8732L},{0x8732L,0x40BDL,0x8732L},{0x8732L,0x40BDL,0x8732L},{0x8732L,0x40BDL,0x8732L},{0x8732L,0x40BDL,0x8732L},{0x8732L,0x40BDL,0x8732L}};
                        int16_t l_379 = 1L;
                        int64_t l_380 = 2L;
                        uint8_t l_381 = 0x66L;
                        int i, j, k;
                        l_369 = (l_368[3] = l_367);
                        l_374 = (l_372[1][3][4] = (l_370[2] , (p_1133->g_198[l_366] , (l_371 , (void*)0))));
                        --l_376[4][1];
                        --l_381;
                    }
                    l_384 = 0x26466EB9L;
                    l_389 = (l_388 = l_385);
                    for (l_384 = (-29); (l_384 >= (-19)); l_384 = safe_add_func_uint8_t_u_u(l_384, 2))
                    { /* block id: 228 */
                        uint8_t l_392 = 0UL;
                        uint8_t l_393[9] = {0x89L,0xAEL,0x89L,0x89L,0xAEL,0x89L,0x89L,0xAEL,0x89L};
                        uint32_t l_396 = 5UL;
                        int i;
                        l_366 = l_392;
                        --l_393[6];
                        --l_396;
                    }
                    unsigned int result = 0;
                    result += l_366;
                    result += l_384;
                    result += l_387;
                    atomic_add(&p_1133->l_special_values[14], result);
                }
                else
                { /* block id: 233 */
                    (1 + 1);
                }
                return l_399;
            }
        }
        else
        { /* block id: 238 */
            uint64_t l_405[3][5] = {{18446744073709551615UL,0UL,0x5EC4223FD998B90FL,0UL,18446744073709551615UL},{18446744073709551615UL,0UL,0x5EC4223FD998B90FL,0UL,18446744073709551615UL},{18446744073709551615UL,0UL,0x5EC4223FD998B90FL,0UL,18446744073709551615UL}};
            uint8_t l_412 = 1UL;
            int16_t l_417[3];
            int32_t l_456 = 1L;
            int32_t l_462 = 8L;
            int32_t l_468[8] = {0x1882173AL,0x3C76CDB3L,0x1882173AL,0x1882173AL,0x3C76CDB3L,0x1882173AL,0x1882173AL,0x3C76CDB3L};
            uint16_t *l_509 = &p_1133->g_402.f2;
            int8_t l_541 = 0x17L;
            int64_t l_581 = 0L;
            uint32_t *l_600 = &p_1133->g_104;
            uint8_t *l_609 = (void*)0;
            uint8_t *l_610 = &p_1133->g_432;
            int64_t *l_613 = &p_1133->g_77[0][4];
            uint8_t *l_616 = &p_1133->g_617;
            int32_t *l_618 = &l_462;
            int i, j;
            for (i = 0; i < 3; i++)
                l_417[i] = 0x6910L;
            for (p_1133->g_258 = 4; (p_1133->g_258 >= 0); p_1133->g_258 -= 1)
            { /* block id: 241 */
                int64_t l_411 = 0x66F914F2E69DD275L;
                int32_t *l_415 = (void*)0;
                int32_t l_416 = (-4L);
                int32_t l_418 = (-1L);
                uint8_t *l_431[6] = {&l_412,&l_412,&l_412,&l_412,&l_412,&l_412};
                int32_t *l_435 = &p_1133->g_404[0];
                int32_t l_463 = (-1L);
                int32_t l_466 = (-1L);
                int32_t l_471 = 0L;
                int32_t l_472 = (-1L);
                uint64_t l_479[3];
                int16_t *l_507[2];
                int i;
                for (i = 0; i < 3; i++)
                    l_479[i] = 8UL;
                for (i = 0; i < 2; i++)
                    l_507[i] = &p_1133->g_238.f0;
                for (p_1133->g_349 = 0; (p_1133->g_349 <= 1); p_1133->g_349 += 1)
                { /* block id: 244 */
                    int32_t *l_400 = &p_1133->g_101;
                    int32_t *l_403 = &p_1133->g_404[0];
                    int i, j, k;
                    (*l_400) |= p_1133->g_141[(p_1133->g_349 + 1)][p_1133->g_349][p_1133->g_349];
                    p_1133->g_402 = p_1133->g_401;
                    (*l_403) = ((*l_400) = p_1133->g_141[(p_1133->g_349 + 1)][p_1133->g_349][p_1133->g_349]);
                }
                for (p_1133->g_401.f5 = 0; (p_1133->g_401.f5 <= 4); p_1133->g_401.f5 += 1)
                { /* block id: 252 */
                    (*p_1133->g_406) &= l_405[1][4];
                }
                (*l_435) &= (((safe_mod_func_int32_t_s_s((l_418 = ((safe_div_func_uint32_t_u_u(l_411, l_412)) & ((safe_sub_func_int32_t_s_s((l_416 = l_405[0][4]), l_417[2])) & l_347))), l_339[2])) > (&p_1133->g_240 != ((safe_add_func_uint16_t_u_u((!((safe_div_func_uint64_t_u_u((((p_1133->g_432 = (((+(*p_1133->g_78)) <= (FAKE_DIVERGE(p_1133->local_1_offset, get_local_id(1), 10) != (((safe_sub_func_uint32_t_u_u((safe_add_func_int16_t_s_s((p_1133->g_278 != l_429[1]), p_1133->g_2)), 0x457FDE84L)) >= 18446744073709551606UL) <= p_1133->g_193))) > (*p_45))) > 0L) >= l_339[4]), 0x0B40B7054F3D1165L)) != l_433)), p_1133->g_402.f5)) , l_434))) ^ 0x3C2DL);
                if (l_347)
                { /* block id: 259 */
                    int8_t l_452 = (-9L);
                    int32_t l_458 = 0x0E617BD3L;
                    int32_t l_469 = 0x47176433L;
                    int32_t **l_477 = &p_1133->g_83;
                    if ((atomic_inc(&p_1133->l_atomic_input[20]) == 1))
                    { /* block id: 261 */
                        union U1 l_436 = {0L};/* VOLATILE GLOBAL l_436 */
                        uint32_t l_437 = 0UL;
                        int32_t l_438 = 0x7BE99FF0L;
                        struct S0 l_439 = {65535UL,18446744073709551615UL,65535UL,0x4FL,-1L,4294967295UL,0x1A5965D1A0559B99L,0x8C3FB1A5L};/* VOLATILE GLOBAL l_439 */
                        struct S0 l_440 = {65535UL,0x3C1DFE091AB2BD73L,65532UL,0x5FL,0L,4294967295UL,0x404381999DC37D7DL,4294967293UL};/* VOLATILE GLOBAL l_440 */
                        l_440 = ((l_438 = (l_436 , l_437)) , l_439);
                        unsigned int result = 0;
                        result += l_436.f0;
                        result += l_436.f1;
                        result += l_437;
                        result += l_438;
                        result += l_439.f0;
                        result += l_439.f1;
                        result += l_439.f2;
                        result += l_439.f3;
                        result += l_439.f4;
                        result += l_439.f5;
                        result += l_439.f6;
                        result += l_439.f7;
                        result += l_440.f0;
                        result += l_440.f1;
                        result += l_440.f2;
                        result += l_440.f3;
                        result += l_440.f4;
                        result += l_440.f5;
                        result += l_440.f6;
                        result += l_440.f7;
                        atomic_add(&p_1133->l_special_values[20], result);
                    }
                    else
                    { /* block id: 264 */
                        (1 + 1);
                    }
                    for (l_411 = 4; (l_411 >= 0); l_411 -= 1)
                    { /* block id: 269 */
                        int8_t l_444 = 0x65L;
                        int32_t *l_445 = &p_1133->g_404[1];
                        int32_t *l_446 = &p_1133->g_349;
                        int32_t *l_447 = &p_1133->g_404[3];
                        int32_t *l_448[7] = {&l_418,&l_418,&l_418,&l_418,&l_418,&l_418,&l_418};
                        uint8_t l_473 = 0x6DL;
                        int32_t **l_476 = &l_446;
                        int i;
                        l_441++;
                        --l_473;
                        (*l_476) = &l_460;
                    }
                    (*l_477) = &l_458;
                    (*p_1133->g_478) = p_1133->g_401;
                }
                else
                { /* block id: 276 */
                    uint16_t l_490 = 3UL;
                    struct S0 *l_494 = (void*)0;
                    struct S0 *l_495 = (void*)0;
                    uint64_t l_510 = 0x3AF7C65D6733D278L;
                    int16_t *l_511 = &p_1133->g_117;
                    for (l_471 = 0; (l_471 <= 4); l_471 += 1)
                    { /* block id: 279 */
                        l_479[1]++;
                        return &p_1133->g_190;
                    }
                    (*l_435) ^= (safe_lshift_func_int16_t_s_u((((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1133->global_2_offset, get_global_id(2), 10), (-2L))) , 1L) >= GROUP_DIVERGE(2, 1)), (l_347 <= (safe_mod_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(l_467[3], l_490)), (safe_unary_minus_func_int32_t_s((0x4ABDA1194D3E2F91L == (((safe_lshift_func_uint16_t_u_u((((+p_1133->g_79) <= (*p_45)) || (((0x9C0902FAL && l_339[3]) < l_465) & FAKE_DIVERGE(p_1133->group_1_offset, get_group_id(1), 10))), 14)) >= 9L) , l_433)))))))));
                    (*p_1133->g_496) = (*p_1133->g_478);
                    for (p_1133->g_158 = 0; (p_1133->g_158 <= 2); p_1133->g_158 += 1)
                    { /* block id: 287 */
                        uint32_t *l_499 = &p_1133->g_402.f5;
                        int16_t *l_508 = &l_417[2];
                        int i, j;
                        p_1133->g_512 = (((p_1133->g_404[1] |= ((&p_1133->g_117 == ((safe_add_func_uint32_t_u_u(((0x3663L | l_405[p_1133->g_158][p_1133->g_258]) , ((*l_499)--)), ((p_1133->g_502 , (safe_sub_func_uint8_t_u_u((safe_add_func_int64_t_s_s((l_507[0] != l_508), ((*p_1133->g_496) , 0UL))), (l_507[1] != l_509)))) , l_510))) , l_511)) > l_405[p_1133->g_158][p_1133->g_258])) & 4294967286UL) , &p_1133->g_202);
                        (*p_1133->g_512) = l_499;
                    }
                }
            }
            for (l_451 = (-23); (l_451 == (-25)); --l_451)
            { /* block id: 297 */
                int64_t l_515 = (-7L);
                int32_t l_534 = 1L;
                int8_t l_579 = 0x47L;
                int16_t l_580 = 0x23ACL;
                if (((*p_1133->g_478) , l_515))
                { /* block id: 298 */
                    for (l_461 = 0; (l_461 < 10); l_461++)
                    { /* block id: 301 */
                        (*p_1133->g_518) = &l_467[3];
                        return &p_1133->g_190;
                    }
                    l_534 |= (p_1133->g_401.f0 < ((safe_add_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_s((p_1133->g_277.f0 , (safe_mul_func_int16_t_s_s((safe_unary_minus_func_int32_t_s(l_515)), 0x2744L))), 4)) >= (safe_unary_minus_func_int8_t_s((*p_44)))), 3UL)) , (l_449 |= (safe_sub_func_int64_t_s_s(0x362F99C8B4FEE1EEL, (p_1133->g_77[0][4] = (safe_sub_func_int64_t_s_s((*p_1133->g_78), ((safe_lshift_func_uint8_t_u_u(((void*)0 != l_533), 1)) , p_1133->g_193)))))))));
                }
                else
                { /* block id: 308 */
                    uint16_t l_553 = 1UL;
                    int32_t *l_557 = &l_534;
                    for (p_1133->g_432 = 0; (p_1133->g_432 != 47); p_1133->g_432++)
                    { /* block id: 311 */
                        uint64_t **l_545 = &l_544;
                        uint64_t *l_550 = &l_405[2][0];
                        int32_t l_556[5] = {0x6C672739L,0x6C672739L,0x6C672739L,0x6C672739L,0x6C672739L};
                        int i;
                        l_534 |= (safe_div_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((l_541 != ((safe_rshift_func_int16_t_s_s((((((((*l_545) = l_544) != (void*)0) ^ (safe_add_func_int16_t_s_s((safe_add_func_uint64_t_u_u(l_454, (l_553 = (--(*l_550))))), (p_1133->g_101 < (safe_lshift_func_int8_t_s_u(((*p_1133->g_32) = (*p_1133->g_32)), (0x20A4L != (p_1133->g_325 ^ (((((p_1133->g_104 != (-4L)) & l_556[4]) <= GROUP_DIVERGE(0, 1)) <= GROUP_DIVERGE(1, 1)) >= l_433))))))))) && l_450) <= 1L) == 1L), 12)) <= 0xFED9E7D3L)), l_470)), p_1133->g_401.f0));
                    }
                    (*l_557) &= 1L;
                    if (l_451)
                        break;
                    (*l_557) = (*l_557);
                }
                for (l_456 = 0; (l_456 <= 1); l_456 += 1)
                { /* block id: 324 */
                    return &p_1133->g_325;
                }
                l_456 |= ((safe_div_func_uint64_t_u_u((GROUP_DIVERGE(1, 1) == (safe_rshift_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s(l_515, (0x64CFL & (GROUP_DIVERGE(1, 1) , 0x659CL)))) & ((*l_359) = (0xD85A2944CECB13F8L == ((safe_mod_func_int32_t_s_s(((safe_mod_func_uint64_t_u_u(l_515, l_515)) | (safe_div_func_uint32_t_u_u((((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1133->group_0_offset, get_group_id(0), 10), ((safe_lshift_func_uint16_t_u_u(((*l_533) = p_1133->g_198[1].f4), ((p_1133->g_141[0][0][1] || (safe_lshift_func_uint16_t_u_u((safe_unary_minus_func_uint32_t_u((((void*)0 != p_1133->g_240) | l_579))), l_339[4]))) & l_580))) ^ 1L))) ^ l_459) > p_1133->g_141[1][0][0]), l_580))), 0x88B93832L)) || l_347)))), 6)) | l_433), l_581))), p_1133->g_224.f0)) <= 0xDC8784B8DE718F57L);
            }
            (*l_618) = (safe_mod_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_s((!((*p_44) = (safe_lshift_func_uint16_t_u_s((((l_412 > l_459) == (safe_mul_func_int16_t_s_s((~((p_1133->g_198[1].f7 != (safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((l_600 != l_600), (safe_rshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((safe_mod_func_int8_t_s_s((safe_div_func_int64_t_s_s(((*l_613) = ((l_433 > ((*l_610)--)) , l_453)), ((safe_sub_func_uint8_t_u_u((((((*l_616) ^= (((((void*)0 == &p_1133->g_98) , 250UL) && (*p_45)) | l_412)) >= 246UL) || l_453) , l_449), GROUP_DIVERGE(0, 1))) , l_470))), (*p_45))) > l_462), 8L)), l_454)))) | l_339[4]), 5)), l_459))) >= 0L)), 0L))) && p_1133->g_262[0].f7), l_468[7])))), 7)) || l_339[1]), 0x068B464EL));
            if ((l_450 , (*l_618)))
            { /* block id: 336 */
                int64_t **l_621[1][4] = {{(void*)0,(void*)0,(void*)0,(void*)0}};
                int32_t l_623 = 0x523BE6D6L;
                int32_t **l_624[4];
                int i, j;
                for (i = 0; i < 4; i++)
                    l_624[i] = (void*)0;
                if ((*l_618))
                    break;
                l_623 = (safe_mul_func_int16_t_s_s(((((l_622 = &p_1133->g_77[1][0]) != &p_1133->g_77[3][8]) , l_429[0]) != (void*)0), p_1133->g_261.f6));
                (*p_1133->g_82) = &l_464;
            }
            else
            { /* block id: 341 */
                uint16_t l_635 = 65535UL;
                for (p_1133->g_349 = 0; (p_1133->g_349 >= 17); p_1133->g_349++)
                { /* block id: 344 */
                    return l_627;
                }
                (*l_618) ^= ((safe_div_func_int32_t_s_s(((((l_630 == (void*)0) , 0x1275505BL) <= 0UL) & (safe_rshift_func_int16_t_s_s(((((+((l_339[3] , FAKE_DIVERGE(p_1133->group_2_offset, get_group_id(2), 10)) < (safe_add_func_int64_t_s_s(l_635, (safe_rshift_func_uint8_t_u_u((!(safe_div_func_int32_t_s_s((p_1133->g_640 , (p_1133->g_401.f3 ^ (l_464 &= ((((*p_1133->g_32) = (*p_45)) <= l_459) && 0x1B24E61BD9FEBDBCL)))), p_1133->g_144))), 4)))))) | 0x4696L) , 0L) | (-1L)), p_1133->g_617))), l_450)) & p_1133->g_190);
                if ((*l_618))
                    break;
            }
        }
    }
    for (p_1133->g_158 = (-23); (p_1133->g_158 > 46); p_1133->g_158 = safe_add_func_int16_t_s_s(p_1133->g_158, 2))
    { /* block id: 356 */
        uint64_t l_644 = 0xC55567BF165ADE96L;
        uint32_t *l_648[1][5];
        uint32_t **l_649 = &l_648[0][0];
        uint32_t *l_651 = (void*)0;
        uint32_t **l_650[9];
        int64_t *l_653 = &p_1133->g_654;
        int32_t l_655 = 0x416E6EADL;
        int64_t *l_660 = &p_1133->g_661;
        int64_t *l_662 = &p_1133->g_663;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
                l_648[i][j] = &p_1133->g_401.f5;
        }
        for (i = 0; i < 9; i++)
            l_650[i] = &l_651;
        l_459 |= ((4UL == ((((*p_44) = (safe_unary_minus_func_uint8_t_u(p_1133->g_266.f0))) , (!(l_644 != (l_655 = (safe_add_func_int64_t_s_s(0x3348A702F3983FE0L, ((*l_653) = ((*l_622) |= (l_433 & (l_647[6][1] != (l_652 = ((*l_649) = l_648[0][2])))))))))))) ^ l_464)) >= (safe_sub_func_int64_t_s_s(((*l_662) = ((*l_660) |= ((p_1133->g_658 , l_659) == &p_1133->g_240))), p_1133->g_224.f0)));
    }
    (*l_673) &= (!((l_467[3] , (safe_div_func_uint8_t_u_u((l_453 &= (l_459 = ((safe_mul_func_int8_t_s_s(((*p_1133->g_32) = (*p_1133->g_32)), (((safe_mul_func_uint8_t_u_u((((((void*)0 != &p_1133->g_193) && 3L) | l_464) ^ (l_433 >= l_670)), l_339[2])) , (void*)0) != (void*)0))) > p_1133->g_277.f0))), (*p_45)))) , (-4L)));
    for (p_1133->g_401.f1 = 0; (p_1133->g_401.f1 <= 4); p_1133->g_401.f1 += 1)
    { /* block id: 373 */
        union U2 *l_710 = &p_1133->g_658;
        int32_t l_733 = (-1L);
        int64_t **l_736[3][5] = {{&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,&l_622,&l_622}};
        int32_t l_750 = 0x2C846A09L;
        int32_t l_751[7] = {0x42E669ACL,(-10L),0x42E669ACL,0x42E669ACL,(-10L),0x42E669ACL,0x42E669ACL};
        int8_t *l_756 = &p_1133->g_325;
        int32_t *l_825 = &l_453;
        int8_t l_839 = (-1L);
        union U1 *l_914 = &p_1133->g_915;
        int64_t l_951[1][8][2] = {{{7L,0x114056A652C4DC5BL},{7L,0x114056A652C4DC5BL},{7L,0x114056A652C4DC5BL},{7L,0x114056A652C4DC5BL},{7L,0x114056A652C4DC5BL},{7L,0x114056A652C4DC5BL},{7L,0x114056A652C4DC5BL},{7L,0x114056A652C4DC5BL}}};
        int i, j, k;
        for (p_1133->g_401.f5 = 0; (p_1133->g_401.f5 <= 4); p_1133->g_401.f5 += 1)
        { /* block id: 376 */
            int16_t l_693 = 4L;
            int64_t **l_735 = &l_622;
            int32_t l_743 = 8L;
            int32_t l_745[1];
            int32_t *l_774 = (void*)0;
            int32_t *l_775 = &p_1133->g_404[2];
            int32_t *l_776 = &l_464;
            int32_t *l_777 = &l_733;
            int32_t *l_778 = &p_1133->g_349;
            int32_t *l_779 = (void*)0;
            int32_t *l_780 = &p_1133->g_101;
            int32_t *l_781 = &p_1133->g_349;
            int32_t *l_782 = &l_464;
            int32_t *l_783[4][4] = {{&l_467[3],&p_1133->g_404[4],&l_467[3],&l_467[3]},{&l_467[3],&p_1133->g_404[4],&l_467[3],&l_467[3]},{&l_467[3],&p_1133->g_404[4],&l_467[3],&l_467[3]},{&l_467[3],&p_1133->g_404[4],&l_467[3],&l_467[3]}};
            int64_t l_784 = 0L;
            uint64_t l_856[8] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
            int i, j;
            for (i = 0; i < 1; i++)
                l_745[i] = 1L;
            (1 + 1);
        }
        (*p_1133->g_696) = &l_453;
        (*p_1133->g_901) = &l_467[3];
        for (p_1133->g_117 = 4; (p_1133->g_117 >= 1); p_1133->g_117 -= 1)
        { /* block id: 536 */
            int32_t **l_902 = &l_673;
            union U1 *l_912 = &p_1133->g_913;
            int32_t l_917 = (-4L);
            int32_t l_942[4];
            int i;
            for (i = 0; i < 4; i++)
                l_942[i] = (-6L);
            (*l_902) = (void*)0;
            for (p_1133->g_401.f6 = 4; (p_1133->g_401.f6 >= 0); p_1133->g_401.f6 -= 1)
            { /* block id: 540 */
                uint32_t l_905 = 0x6B75C00BL;
                int16_t *l_916[1];
                int32_t ***l_918 = &l_902;
                int32_t l_934 = 0x04BCF38CL;
                int32_t l_945 = 1L;
                int32_t l_946 = 0x6C2592C7L;
                int32_t l_947 = 0x68BD38A5L;
                int8_t l_948 = 0x1FL;
                int32_t l_949 = 9L;
                int32_t l_950[8] = {0x48FB2D1BL,0x48FB2D1BL,0x48FB2D1BL,0x48FB2D1BL,0x48FB2D1BL,0x48FB2D1BL,0x48FB2D1BL,0x48FB2D1BL};
                int i;
                for (i = 0; i < 1; i++)
                    l_916[i] = &p_1133->g_658.f0;
                l_733 ^= (safe_add_func_uint8_t_u_u((p_1133->g_617 = (((*p_1133->g_83) = ((p_1133->g_196[2][5].f4 != l_905) , (safe_add_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((p_1133->g_640 , (p_1133->g_432 = ((&p_1133->g_406 == ((*l_918) = ((((*l_825) ^= FAKE_DIVERGE(p_1133->group_1_offset, get_group_id(1), 10)) || ((((((*l_825) ^ ((*p_1133->g_32) & (((*p_1133->g_32) | (safe_mul_func_int16_t_s_s((((l_917 = ((((p_1133->g_77[2][7] = (*p_1133->g_78)) & (l_912 != l_914)) < 6UL) ^ (*p_45))) < 0x9233L) != p_1133->g_224.f0), (*l_825)))) != p_1133->g_402.f2))) && 0x419EL) , (*p_1133->g_78)) <= l_905) ^ p_1133->g_141[2][1][0])) , (void*)0))) || 1UL))), 3)), 4L)))) , p_1133->g_857[1].f6)), l_339[4]));
                for (l_917 = 0; (l_917 <= 4); l_917 += 1)
                { /* block id: 551 */
                    uint32_t l_919 = 1UL;
                    uint64_t *l_933[8][6] = {{&p_1133->g_402.f1,&l_786,&p_1133->g_141[2][1][0],(void*)0,&l_786,(void*)0},{&p_1133->g_402.f1,&l_786,&p_1133->g_141[2][1][0],(void*)0,&l_786,(void*)0},{&p_1133->g_402.f1,&l_786,&p_1133->g_141[2][1][0],(void*)0,&l_786,(void*)0},{&p_1133->g_402.f1,&l_786,&p_1133->g_141[2][1][0],(void*)0,&l_786,(void*)0},{&p_1133->g_402.f1,&l_786,&p_1133->g_141[2][1][0],(void*)0,&l_786,(void*)0},{&p_1133->g_402.f1,&l_786,&p_1133->g_141[2][1][0],(void*)0,&l_786,(void*)0},{&p_1133->g_402.f1,&l_786,&p_1133->g_141[2][1][0],(void*)0,&l_786,(void*)0},{&p_1133->g_402.f1,&l_786,&p_1133->g_141[2][1][0],(void*)0,&l_786,(void*)0}};
                    int32_t l_943 = 0x46F12F3EL;
                    int32_t l_944[3][2][1];
                    uint8_t *l_971 = (void*)0;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 2; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_944[i][j][k] = 0x3DE28141L;
                        }
                    }
                    for (p_1133->g_258 = 0; (p_1133->g_258 <= 4); p_1133->g_258 += 1)
                    { /* block id: 554 */
                        return p_45;
                    }
                    for (p_1133->g_158 = 1; (p_1133->g_158 <= 4); p_1133->g_158 += 1)
                    { /* block id: 559 */
                        l_919 = (**p_1133->g_761);
                        (*p_1133->g_83) |= (safe_mod_func_int64_t_s_s(l_922, 4L));
                        (*l_825) &= (-1L);
                    }
                    if ((safe_sub_func_uint32_t_u_u(((65535UL >= (&p_1133->g_224 != ((safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u((&p_1133->g_198[1] != (void*)0), FAKE_DIVERGE(p_1133->global_2_offset, get_global_id(2), 10))), ((*p_1133->g_278) , (safe_add_func_uint64_t_u_u((p_1133->g_141[2][0][0] = ((*p_1133->g_32) > (*p_1133->g_32))), (0x3102B3E4L && (((p_1133->g_857[1].f1--) <= (*p_1133->g_78)) != (*l_825)))))))) , (void*)0))) || 18446744073709551614UL), (*p_1133->g_83))))
                    { /* block id: 566 */
                        int32_t *l_937 = &l_733;
                        int32_t *l_938 = &l_464;
                        int32_t *l_939 = &l_922;
                        int32_t *l_940 = &p_1133->g_349;
                        int32_t *l_941[1][10] = {{&p_1133->g_101,&p_1133->g_101,&p_1133->g_101,&p_1133->g_101,&p_1133->g_101,&p_1133->g_101,&p_1133->g_101,&p_1133->g_101,&p_1133->g_101,&p_1133->g_101}};
                        uint8_t *l_972 = &p_1133->g_617;
                        int32_t l_977 = 0x046AA6E9L;
                        int i, j;
                        if ((**p_1133->g_82))
                            break;
                        --l_952;
                        (*p_1133->g_979) = ((safe_mul_func_uint8_t_u_u(p_1133->g_262[0].f7, (((((*p_45) |= ((safe_add_func_int32_t_s_s(((*l_938) = (*l_937)), (safe_lshift_func_int16_t_s_s(p_1133->g_224.f0, p_1133->g_857[1].f1)))) <= (p_1133->g_158 >= (safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(((safe_div_func_uint32_t_u_u(((((l_971 != (l_972 = (void*)0)) || ((p_1133->g_144--) | ((((safe_add_func_int64_t_s_s(p_1133->g_857[1].f2, 0x4F08E4B698BA581CL)) & p_1133->g_2) ^ p_1133->g_2) | (*p_1133->g_32)))) && l_977) ^ l_950[3]), FAKE_DIVERGE(p_1133->local_2_offset, get_local_id(2), 10))) , p_1133->g_978), (*p_1133->g_32))), (*p_1133->g_32))), 1)), p_1133->g_190))))) >= GROUP_DIVERGE(2, 1)) || p_1133->g_857[1].f1) >= 0x54CE48A531357B91L))) , (*p_1133->g_82));
                    }
                    else
                    { /* block id: 574 */
                        int32_t l_982 = 0L;
                        (*p_1133->g_83) ^= ((safe_rshift_func_uint8_t_u_s(l_982, 7)) == (*l_825));
                    }
                }
                (*l_825) = (**p_1133->g_763);
            }
        }
    }
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_1133->g_59 p_1133->g_78 p_1133->g_16 p_1133->g_82 p_1133->g_2 p_1133->g_77 p_1133->g_101 p_1133->g_104 p_1133->g_98 p_1133->g_32 p_1133->g_141 p_1133->g_144 p_1133->g_147 p_1133->g_158 p_1133->g_83 p_1133->g_117 p_1133->g_190 p_1133->g_193 p_1133->g_196 p_1133->g_203 p_1133->g_224 p_1133->g_239 p_1133->g_258 p_1133->g_261 p_1133->g_266 p_1133->g_267 p_1133->g_275 p_1133->g_278 p_1133->g_283.f2 p_1133->g_224.f0 p_1133->g_240
 * writes: p_1133->g_59 p_1133->g_77 p_1133->g_83 p_1133->g_98 p_1133->g_101 p_1133->g_104 p_1133->g_117 p_1133->g_141 p_1133->g_144 p_1133->g_147 p_1133->g_158 p_1133->g_190 p_1133->g_193 p_1133->g_198 p_1133->g_16 p_1133->g_240 p_1133->g_258 p_1133->g_262 p_1133->g_267 p_1133->g_283.f2
 */
int8_t * func_46(uint64_t  p_47, int32_t  p_48, int8_t * p_49, struct S4 * p_1133)
{ /* block id: 9 */
    uint64_t l_53[3];
    int32_t l_54[9][9] = {{0x25036FFEL,1L,1L,0x17092FF8L,1L,1L,0x25036FFEL,(-7L),(-1L)},{0x25036FFEL,1L,1L,0x17092FF8L,1L,1L,0x25036FFEL,(-7L),(-1L)},{0x25036FFEL,1L,1L,0x17092FF8L,1L,1L,0x25036FFEL,(-7L),(-1L)},{0x25036FFEL,1L,1L,0x17092FF8L,1L,1L,0x25036FFEL,(-7L),(-1L)},{0x25036FFEL,1L,1L,0x17092FF8L,1L,1L,0x25036FFEL,(-7L),(-1L)},{0x25036FFEL,1L,1L,0x17092FF8L,1L,1L,0x25036FFEL,(-7L),(-1L)},{0x25036FFEL,1L,1L,0x17092FF8L,1L,1L,0x25036FFEL,(-7L),(-1L)},{0x25036FFEL,1L,1L,0x17092FF8L,1L,1L,0x25036FFEL,(-7L),(-1L)},{0x25036FFEL,1L,1L,0x17092FF8L,1L,1L,0x25036FFEL,(-7L),(-1L)}};
    union U3 l_70[3] = {{0x7AF23098L},{0x7AF23098L},{0x7AF23098L}};
    int32_t l_73[7][1] = {{1L},{1L},{1L},{1L},{1L},{1L},{1L}};
    int32_t *l_163 = &l_54[2][3];
    uint64_t l_164 = 3UL;
    int8_t *l_180 = &p_1133->g_16;
    union U3 *l_200[7] = {&l_70[1],&l_70[1],&l_70[1],&l_70[1],&l_70[1],&l_70[1],&l_70[1]};
    union U3 **l_199 = &l_200[2];
    uint16_t l_234 = 0x5410L;
    int32_t *l_257 = (void*)0;
    int64_t l_260[4] = {0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L};
    struct S0 *l_282 = &p_1133->g_283[0][5];
    int32_t l_304 = 0x09D21890L;
    int i, j;
    for (i = 0; i < 3; i++)
        l_53[i] = 18446744073709551615UL;
    for (p_47 = 0; (p_47 <= 2); p_47 += 1)
    { /* block id: 12 */
        int32_t *l_55 = &l_54[8][3];
        int32_t *l_56 = (void*)0;
        int32_t *l_57 = &l_54[2][7];
        int32_t *l_58[9] = {&p_1133->g_2,&l_54[1][0],&p_1133->g_2,&p_1133->g_2,&l_54[1][0],&p_1133->g_2,&p_1133->g_2,&l_54[1][0],&p_1133->g_2};
        int8_t l_134 = 0L;
        int i;
        --p_1133->g_59[1][1][1];
        for (p_48 = 2; (p_48 >= 0); p_48 -= 1)
        { /* block id: 16 */
            int64_t *l_74 = (void*)0;
            int64_t *l_75 = (void*)0;
            int64_t *l_76 = &p_1133->g_77[0][4];
            int32_t *l_80 = &l_70[2].f0;
            int32_t l_131 = 9L;
            volatile struct S0 *l_197[6];
            int i;
            for (i = 0; i < 6; i++)
                l_197[i] = (void*)0;
            if ((safe_sub_func_uint32_t_u_u(l_53[p_47], func_64((l_70[2] , (((*l_76) = (safe_rshift_func_uint16_t_u_u(((*l_55) == (l_73[1][0] < (&p_1133->g_2 == &p_1133->g_2))), p_48))) != ((void*)0 != p_1133->g_78))), l_80, l_73[1][0], p_1133->g_16, &p_1133->g_16, p_1133))))
            { /* block id: 28 */
                uint16_t l_136 = 0x18BDL;
                int32_t l_153 = 0x2DED1DAFL;
                int32_t l_154 = 0x0C423CDDL;
                int32_t l_155 = 0L;
                int32_t l_156 = 1L;
                int32_t l_157 = (-1L);
                int32_t **l_161 = &l_58[2];
                int32_t **l_162 = &l_56;
                int16_t *l_187 = &p_1133->g_117;
                uint32_t *l_191 = &p_1133->g_144;
                int i;
                for (p_1133->g_98 = 2; (p_1133->g_98 >= 0); p_1133->g_98 -= 1)
                { /* block id: 31 */
                    int64_t l_102 = (-10L);
                    uint32_t *l_103 = &p_1133->g_104;
                    int16_t *l_115 = (void*)0;
                    int16_t *l_116 = &p_1133->g_117;
                    int32_t l_130 = (-2L);
                    int32_t l_133 = 1L;
                    int32_t l_135 = 0x1996A1BCL;
                    int i;
                    (*l_55) = (((*l_103) &= l_102) && (safe_mul_func_int16_t_s_s(((((+((-1L) ^ p_48)) , p_1133->g_59[1][3][0]) , ((safe_rshift_func_int16_t_s_s(((*l_116) = (p_1133->g_16 , (((!(-5L)) , (safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1133->group_0_offset, get_group_id(0), 10), 8))) == (safe_mul_func_int8_t_s_s((-8L), (0x306F5C0CD63D7C5FL <= ((*l_76) = ((safe_mod_func_int64_t_s_s(((0x449F9AD4046E41CAL || p_47) < p_1133->g_16), p_47)) & p_1133->g_101)))))))), 13)) , 0x4FDB33FCL)) & p_48), p_1133->g_16)));
                    if ((safe_mod_func_int16_t_s_s((18446744073709551615UL && (safe_lshift_func_uint8_t_u_s(((((safe_mul_func_uint8_t_u_u(((l_70[p_1133->g_98] , &p_1133->g_117) == ((~(((safe_rshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((*l_103) = (safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), l_70[p_1133->g_98].f0))), 0x0326E311L)), 14)) , l_53[0]) < 0xC1F71C78L)) , &p_1133->g_98)), (((p_47 <= p_1133->g_16) || 18446744073709551615UL) || 0x15L))) <= 0UL) | l_54[8][5]) & p_47), (*p_1133->g_32)))), p_1133->g_59[1][1][1])))
                    { /* block id: 37 */
                        int64_t l_132[3];
                        int32_t l_139 = 0x29ED7CD5L;
                        int32_t l_140 = 0x185DEA65L;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_132[i] = 0x37B1B4A57D0CF733L;
                        l_136++;
                        --p_1133->g_141[2][1][0];
                        --p_1133->g_144;
                    }
                    else
                    { /* block id: 41 */
                        int8_t l_150 = 0L;
                        int32_t l_151 = (-2L);
                        int32_t l_152[2][4][5] = {{{(-1L),(-1L),(-9L),0L,0x1DCDCBB9L},{(-1L),(-1L),(-9L),0L,0x1DCDCBB9L},{(-1L),(-1L),(-9L),0L,0x1DCDCBB9L},{(-1L),(-1L),(-9L),0L,0x1DCDCBB9L}},{{(-1L),(-1L),(-9L),0L,0x1DCDCBB9L},{(-1L),(-1L),(-9L),0L,0x1DCDCBB9L},{(-1L),(-1L),(-9L),0L,0x1DCDCBB9L},{(-1L),(-1L),(-9L),0L,0x1DCDCBB9L}}};
                        int i, j, k;
                        p_1133->g_147--;
                        if (l_150)
                            continue;
                        p_1133->g_158--;
                    }
                }
                l_163 = ((*l_162) = ((*l_161) = (*p_1133->g_82)));
                l_164 = (**p_1133->g_82);
                if ((l_73[1][0] = ((safe_add_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((safe_rshift_func_uint8_t_u_u(248UL, 2)) || ((*l_56) == (safe_div_func_int8_t_s_s((((*l_80) = (((p_47 ^ ((*l_191) &= ((((p_1133->g_190 |= ((+(safe_mod_func_int64_t_s_s((1L > ((+(safe_rshift_func_uint8_t_u_s((safe_unary_minus_func_int8_t_s(((l_53[p_47] = FAKE_DIVERGE(p_1133->local_1_offset, get_local_id(1), 10)) && ((((void*)0 == l_180) && (p_47 , ((safe_div_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u(((safe_rshift_func_int16_t_s_s(((*l_187) |= 1L), 11)) < ((*l_55) = (((safe_sub_func_uint32_t_u_u(p_1133->g_59[1][1][1], (*l_163))) , 0xDE322FC8A481CA0FL) == (**l_161)))), p_1133->g_141[2][1][0])), GROUP_DIVERGE(2, 1))) ^ 0x09DB10C3L))) <= (*l_163))))), 1))) >= (*p_1133->g_32))), p_1133->g_77[0][4]))) > 0x6CBF89ECF18C14CAL)) , 0x999481441D509144L) < (**l_162)) && (*l_163)))) > 0xE65B295318BE7EDEL) & 0UL)) ^ p_48), 0xFFL)))))), p_1133->g_77[0][4])), 0UL)) | p_47)))
                { /* block id: 58 */
                    int16_t l_192 = 0x59A2L;
                    ++p_1133->g_193;
                }
                else
                { /* block id: 60 */
                    return &p_1133->g_16;
                }
            }
            else
            { /* block id: 63 */
                return p_49;
            }
            p_1133->g_198[1] = p_1133->g_196[2][5];
        }
        if (p_47)
            continue;
    }
    (*l_199) = &l_70[2];
    for (p_1133->g_16 = 0; (p_1133->g_16 <= 1); p_1133->g_16 += 1)
    { /* block id: 73 */
        uint8_t l_213 = 0UL;
        int64_t *l_226 = (void*)0;
        int32_t **l_228[10][5] = {{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163},{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163},{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163},{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163},{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163},{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163},{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163},{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163},{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163},{&p_1133->g_83,&l_163,&p_1133->g_83,&p_1133->g_83,&l_163}};
        int64_t l_263 = 0L;
        uint16_t l_265 = 65532UL;
        int8_t *l_320[2];
        int i, j;
        for (i = 0; i < 2; i++)
            l_320[i] = &p_1133->g_16;
        (*p_1133->g_203) = p_48;
        for (p_1133->g_144 = 0; (p_1133->g_144 <= 1); p_1133->g_144 += 1)
        { /* block id: 77 */
            int32_t *l_204 = &l_73[4][0];
            int32_t **l_205 = &p_1133->g_83;
            int64_t *l_225 = &p_1133->g_77[0][2];
            union U3 **l_229 = &l_200[2];
            int32_t l_230 = 0L;
            int32_t l_232 = 0x7EAE6993L;
            (*l_205) = l_204;
            for (p_1133->g_190 = 0; (p_1133->g_190 <= 1); p_1133->g_190 += 1)
            { /* block id: 81 */
                int32_t *l_206 = &l_54[1][0];
                int32_t l_248 = 0x4B785A8AL;
                int64_t *l_249[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                (*l_205) = l_206;
                for (p_1133->g_98 = 0; (p_1133->g_98 <= 6); p_1133->g_98 += 1)
                { /* block id: 85 */
                    int32_t l_207 = 0x47899EEEL;
                    int32_t **l_227[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_227[i] = &l_163;
                    (*l_204) = (*l_206);
                    for (p_48 = 1; (p_48 >= 0); p_48 -= 1)
                    { /* block id: 89 */
                        int32_t *l_208 = &l_73[1][0];
                        int32_t *l_209 = (void*)0;
                        int32_t *l_210 = &l_54[1][0];
                        int32_t *l_211 = &l_73[1][0];
                        int32_t *l_212[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_212[i] = &p_1133->g_101;
                        if (p_47)
                            break;
                        if (p_48)
                            break;
                        ++l_213;
                    }
                    (**l_205) = (safe_lshift_func_int16_t_s_s((l_206 == (void*)0), (safe_sub_func_int32_t_s_s(((safe_mul_func_int16_t_s_s((safe_add_func_int8_t_s_s(0L, (p_1133->g_224 , (l_225 != l_226)))), (((((l_227[0] != (((*p_1133->g_32) | (p_47 || 0x65207D73L)) , l_228[8][1])) , &l_200[p_1133->g_144]) != l_229) == p_47) || p_1133->g_104))) > (*p_1133->g_32)), GROUP_DIVERGE(1, 1)))));
                }
                for (p_1133->g_101 = 0; (p_1133->g_101 <= 1); p_1133->g_101 += 1)
                { /* block id: 98 */
                    int64_t l_243 = 0L;
                    uint64_t *l_244 = &p_1133->g_141[1][0][0];
                    uint8_t *l_247[3];
                    int32_t l_252 = 0x164357ABL;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_247[i] = &l_213;
                    for (p_1133->g_193 = 0; (p_1133->g_193 <= 1); p_1133->g_193 += 1)
                    { /* block id: 101 */
                        int8_t l_231 = 0x2FL;
                        int32_t l_233 = 0x2524D29CL;
                        union U2 *l_237 = &p_1133->g_238;
                        --l_234;
                        (*l_205) = (void*)0;
                        (*p_1133->g_239) = l_237;
                    }
                }
                p_1133->g_258 &= ((*l_204) ^= (0x4E5F5F17L != ((*l_206) | (*p_1133->g_203))));
            }
            for (p_48 = 0; (p_48 <= 1); p_48 += 1)
            { /* block id: 136 */
                int8_t *l_259 = &p_1133->g_16;
                return l_259;
            }
        }
        l_260[2] ^= 0x6435A719L;
        p_1133->g_262[0] = p_1133->g_261;
        for (p_47 = 0; (p_47 <= 1); p_47 += 1)
        { /* block id: 144 */
            uint16_t l_264 = 0x8377L;
            volatile union U3 * volatile *l_269 = &p_1133->g_267;
            uint16_t *l_298 = &l_234;
            int16_t *l_299 = (void*)0;
            int16_t *l_300 = &p_1133->g_117;
            int32_t l_301[3][4] = {{0x713C25BEL,0x713C25BEL,0x713C25BEL,0x713C25BEL},{0x713C25BEL,0x713C25BEL,0x713C25BEL,0x713C25BEL},{0x713C25BEL,0x713C25BEL,0x713C25BEL,0x713C25BEL}};
            uint16_t *l_302 = &p_1133->g_283[0][5].f2;
            uint32_t l_303 = 3UL;
            int i, j;
            (*p_1133->g_203) = ((l_265 = (l_264 = l_263)) & (-7L));
            (*l_269) = (p_1133->g_266 , p_1133->g_267);
            (*p_1133->g_203) = p_48;
            if ((safe_mod_func_int32_t_s_s((p_1133->g_258 &= (*p_1133->g_203)), (safe_rshift_func_int8_t_s_u((((-1L) > (safe_unary_minus_func_uint16_t_u(((l_264 , p_1133->g_275[4][1][2]) != &l_200[3])))) < ((((((safe_mul_func_uint8_t_u_u((((void*)0 == l_282) && (((safe_lshift_func_int8_t_s_u((safe_add_func_int32_t_s_s((((safe_sub_func_int8_t_s_s(((safe_div_func_int32_t_s_s(((safe_rshift_func_uint16_t_u_s(((*l_302) ^= (safe_div_func_uint32_t_u_u(((((l_301[2][1] = ((*l_300) = (((((safe_lshift_func_uint16_t_u_u(l_264, ((*l_298) &= (((((p_1133->g_278 != (void*)0) > (*p_49)) && l_264) || p_1133->g_98) >= 1L)))) & p_1133->g_77[0][4]) < FAKE_DIVERGE(p_1133->global_1_offset, get_global_id(1), 10)) >= p_48) | 0xB5L))) != 2L) >= p_48) != 6UL), 8UL))), 3)) , 0x5FC46E63L), p_1133->g_224.f0)) <= p_1133->g_141[1][1][1]), p_1133->g_144)) , (*p_49)) || GROUP_DIVERGE(2, 1)), p_47)), 5)) || l_301[1][1]) && (*p_1133->g_32))), GROUP_DIVERGE(0, 1))) || (*p_49)) ^ l_264) == l_303) , l_304) , (*p_1133->g_32))), 6)))))
            { /* block id: 155 */
                union U2 **l_305[2][8][2] = {{{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240}},{{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240},{&p_1133->g_240,&p_1133->g_240}}};
                int i, j, k;
                (*p_1133->g_239) = (*p_1133->g_239);
            }
            else
            { /* block id: 157 */
                uint64_t l_313 = 5UL;
                int32_t l_316 = 1L;
                if (p_48)
                { /* block id: 158 */
                    return &p_1133->g_16;
                }
                else
                { /* block id: 160 */
                    uint8_t l_317 = 0UL;
                    if (l_264)
                        break;
                    if ((safe_rshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s(0x0AB89E95L, (safe_mul_func_int8_t_s_s((*p_1133->g_32), (&p_1133->g_193 != (void*)0))))), 1)))
                    { /* block id: 162 */
                        uint32_t l_312[1][6] = {{1UL,1UL,1UL,1UL,1UL,1UL}};
                        int i, j;
                        l_312[0][0] = 0x7F19FA5CL;
                        l_313--;
                        if (p_47)
                            break;
                    }
                    else
                    { /* block id: 166 */
                        l_317++;
                        return p_49;
                    }
                    if (l_313)
                        continue;
                }
                return l_320[0];
            }
            for (p_1133->g_144 = 0; (p_1133->g_144 <= 1); p_1133->g_144 += 1)
            { /* block id: 176 */
                uint64_t l_321 = 0UL;
                if (l_321)
                    break;
                return &p_1133->g_190;
            }
        }
    }
    for (p_1133->g_101 = 0; (p_1133->g_101 != (-16)); p_1133->g_101 = safe_sub_func_int64_t_s_s(p_1133->g_101, 2))
    { /* block id: 184 */
        return l_180;
    }
    return p_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_1133->g_82 p_1133->g_2 p_1133->g_77 p_1133->g_59 p_1133->g_101
 * writes: p_1133->g_83 p_1133->g_98 p_1133->g_101
 */
uint32_t  func_64(uint64_t  p_65, int32_t * p_66, int32_t  p_67, uint32_t  p_68, int8_t * p_69, struct S4 * p_1133)
{ /* block id: 18 */
    int32_t *l_81 = &p_1133->g_2;
    (*p_1133->g_82) = l_81;
    for (p_67 = 0; (p_67 > 16); p_67 = safe_add_func_uint16_t_u_u(p_67, 1))
    { /* block id: 22 */
        int64_t *l_90 = (void*)0;
        int16_t *l_97 = &p_1133->g_98;
        int32_t **l_99 = &l_81;
        int32_t *l_100 = &p_1133->g_101;
        (*l_100) ^= (((*l_81) | ((!((((-8L) | (!GROUP_DIVERGE(2, 1))) == ((safe_div_func_uint32_t_u_u((GROUP_DIVERGE(1, 1) == ((((void*)0 != p_66) != ((-1L) == ((((*l_81) & ((((((void*)0 != l_90) || (safe_sub_func_uint64_t_u_u(((safe_rshift_func_int8_t_s_u(((safe_rshift_func_int16_t_s_s(((*l_97) = ((void*)0 != &p_1133->g_16)), p_1133->g_77[0][1])) > p_1133->g_77[2][2]), 3)) != 0x05C2614AL), 18446744073709551615UL))) , l_99) != (void*)0) != (*l_81))) <= 0x69DCL) ^ (*l_81)))) ^ p_1133->g_59[1][6][0])), (*p_66))) <= 0x25L)) | 1L)) , 0L)) > p_1133->g_77[0][1]);
        return p_1133->g_77[1][8];
    }
    return (*l_81);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[50];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 50; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[50];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 50; i++)
            l_special_values[i] = 0;
    struct S4 c_1134;
    struct S4* p_1133 = &c_1134;
    struct S4 c_1135 = {
        0x66D058A8L, // p_1133->g_2
        0x15L, // p_1133->g_16
        &p_1133->g_16, // p_1133->g_32
        {{{4UL,0UL},{4UL,0UL},{4UL,0UL},{4UL,0UL},{4UL,0UL},{4UL,0UL},{4UL,0UL}},{{4UL,0UL},{4UL,0UL},{4UL,0UL},{4UL,0UL},{4UL,0UL},{4UL,0UL},{4UL,0UL}}}, // p_1133->g_59
        {{9L,0x33464EB7F0427242L,9L,9L,0x33464EB7F0427242L,9L,9L,0x33464EB7F0427242L,9L,9L},{9L,0x33464EB7F0427242L,9L,9L,0x33464EB7F0427242L,9L,9L,0x33464EB7F0427242L,9L,9L},{9L,0x33464EB7F0427242L,9L,9L,0x33464EB7F0427242L,9L,9L,0x33464EB7F0427242L,9L,9L},{9L,0x33464EB7F0427242L,9L,9L,0x33464EB7F0427242L,9L,9L,0x33464EB7F0427242L,9L,9L}}, // p_1133->g_77
        0x546375426BEC1606L, // p_1133->g_79
        &p_1133->g_79, // p_1133->g_78
        (void*)0, // p_1133->g_83
        &p_1133->g_83, // p_1133->g_82
        0x44EEL, // p_1133->g_98
        0x621CC8E0L, // p_1133->g_101
        0UL, // p_1133->g_104
        (-2L), // p_1133->g_117
        {{{0x7CABE74A42B1B449L,0x7CABE74A42B1B449L},{0x7CABE74A42B1B449L,0x7CABE74A42B1B449L}},{{0x7CABE74A42B1B449L,0x7CABE74A42B1B449L},{0x7CABE74A42B1B449L,0x7CABE74A42B1B449L}},{{0x7CABE74A42B1B449L,0x7CABE74A42B1B449L},{0x7CABE74A42B1B449L,0x7CABE74A42B1B449L}}}, // p_1133->g_141
        2UL, // p_1133->g_144
        0xE1BD5518D9D7C220L, // p_1133->g_147
        0x7E331B442378E477L, // p_1133->g_158
        0L, // p_1133->g_190
        0UL, // p_1133->g_193
        {{{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L}},{{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L}},{{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L}},{{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L}},{{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L}},{{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L},{0xAF06L,18446744073709551614UL,65535UL,1L,0x46C9L,0x6DC5B995L,0x0313BAA9240DAAB1L,0xC8202B18L}}}, // p_1133->g_196
        {{65531UL,1UL,0UL,0x00L,0x189EL,0xD151B085L,0L,0xEE6007DAL},{65531UL,1UL,0UL,0x00L,0x189EL,0xD151B085L,0L,0xEE6007DAL}}, // p_1133->g_198
        (void*)0, // p_1133->g_201
        (void*)0, // p_1133->g_202
        &p_1133->g_101, // p_1133->g_203
        {0L}, // p_1133->g_224
        {0x5273L}, // p_1133->g_238
        (void*)0, // p_1133->g_240
        &p_1133->g_240, // p_1133->g_239
        (-9L), // p_1133->g_258
        {0xF0B1L,0x0B9EC8A6BBCBD33CL,65535UL,0x2EL,-1L,4294967295UL,0x3876D62126B8E5C9L,0xA56468F9L}, // p_1133->g_261
        {{65534UL,1UL,1UL,1L,0x5CEDL,2UL,-1L,5UL}}, // p_1133->g_262
        {0x77D9L}, // p_1133->g_266
        {-1L}, // p_1133->g_268
        &p_1133->g_268, // p_1133->g_267
        {0x09BF68E0L}, // p_1133->g_277
        &p_1133->g_277, // p_1133->g_276
        {0x70E9D857L}, // p_1133->g_279
        &p_1133->g_279, // p_1133->g_278
        {{{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278}},{{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278}},{{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278}},{{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278}},{{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278}},{{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278}},{{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278}},{{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278}},{{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278},{(void*)0,&p_1133->g_278,(void*)0,(void*)0,&p_1133->g_278}}}, // p_1133->g_275
        {{{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL}},{{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL}},{{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL}},{{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL}},{{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{0x1366L,1UL,0xE403L,0x40L,0L,0xC6C41B18L,0x5C0AC00EDD46B2D1L,0xC9CADE45L},{0xC97BL,0x3E73F408891F53D3L,65533UL,-4L,0x788EL,4294967290UL,-1L,4294967295UL},{0x58E9L,0x002CAED80145DC0BL,0x29D7L,0x55L,1L,0x31FB828BL,-1L,1UL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL},{4UL,9UL,65534UL,-8L,0x1752L,4294967295UL,0L,0xDA247D1CL}}}, // p_1133->g_283
        0x58L, // p_1133->g_325
        8L, // p_1133->g_349
        {65535UL,0x5561B8B1E9E68F76L,0x67B6L,1L,0x063EL,0x298D6119L,-6L,0xEDBB6623L}, // p_1133->g_401
        {0x079AL,18446744073709551615UL,9UL,0x44L,0x708EL,0x182C1FF8L,0x2B30C8E3E57D41B5L,4294967287UL}, // p_1133->g_402
        {1L,1L,1L,1L,1L}, // p_1133->g_404
        &p_1133->g_349, // p_1133->g_406
        {{0x12B3CD86L},{0x12B3CD86L}}, // p_1133->g_430
        8UL, // p_1133->g_432
        &p_1133->g_283[1][0], // p_1133->g_478
        &p_1133->g_283[0][5], // p_1133->g_496
        {0L}, // p_1133->g_502
        (void*)0, // p_1133->g_512
        &p_1133->g_83, // p_1133->g_518
        249UL, // p_1133->g_617
        {0x2A55L}, // p_1133->g_640
        (-8L), // p_1133->g_654
        {0L}, // p_1133->g_658
        0x46D6C4DF26C3CB23L, // p_1133->g_661
        0x1E238FC01245FFACL, // p_1133->g_663
        &p_1133->g_83, // p_1133->g_696
        &p_1133->g_240, // p_1133->g_711
        {0x4DEAL,18446744073709551615UL,0x0BE7L,-1L,0x1E8BL,0xE87A6C7FL,0x28B570551EAFBC1CL,4294967295UL}, // p_1133->g_712
        {{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}},{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}},{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}},{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}},{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}},{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}},{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}},{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}},{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}},{{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]},{&p_1133->g_196[2][5]}}}, // p_1133->g_713
        {0UL,0x3F23300E1B164917L,0x06B7L,1L,0x797AL,0xD9598406L,1L,0x0CAB9314L}, // p_1133->g_719
        {0x6FE5L,18446744073709551615UL,0xA7D1L,0L,-8L,0xE8A147A0L,0x5397428A870C12C9L,0x947AB87EL}, // p_1133->g_757
        {65532UL,0x61096E8437BD3E93L,1UL,0x2AL,0x6E7DL,0x26E777F8L,0x67249A8723354EB2L,4UL}, // p_1133->g_759
        4294967287UL, // p_1133->g_760
        &p_1133->g_83, // p_1133->g_761
        &p_1133->g_83, // p_1133->g_763
        (void*)0, // p_1133->g_764
        (-10L), // p_1133->g_785
        {0L}, // p_1133->g_830
        {{0xD791L,3UL,7UL,0x1CL,0x701CL,0xA9C1BA02L,1L,0xCD61FEE9L},{0xD791L,3UL,7UL,0x1CL,0x701CL,0xA9C1BA02L,1L,0xCD61FEE9L},{0xD791L,3UL,7UL,0x1CL,0x701CL,0xA9C1BA02L,1L,0xCD61FEE9L},{0xD791L,3UL,7UL,0x1CL,0x701CL,0xA9C1BA02L,1L,0xCD61FEE9L},{0xD791L,3UL,7UL,0x1CL,0x701CL,0xA9C1BA02L,1L,0xCD61FEE9L}}, // p_1133->g_857
        &p_1133->g_857[1], // p_1133->g_858
        &p_1133->g_83, // p_1133->g_901
        {0x4A6AL}, // p_1133->g_913
        {1L}, // p_1133->g_915
        65535UL, // p_1133->g_978
        &p_1133->g_83, // p_1133->g_979
        (void*)0, // p_1133->g_1027
        (void*)0, // p_1133->g_1035
        &p_1133->g_1035, // p_1133->g_1034
        &p_1133->g_1034, // p_1133->g_1033
        0x30L, // p_1133->g_1086
        &p_1133->g_404[2], // p_1133->g_1087
        {-2L}, // p_1133->g_1114
        {1L}, // p_1133->g_1132
        sequence_input[get_global_id(0)], // p_1133->global_0_offset
        sequence_input[get_global_id(1)], // p_1133->global_1_offset
        sequence_input[get_global_id(2)], // p_1133->global_2_offset
        sequence_input[get_local_id(0)], // p_1133->local_0_offset
        sequence_input[get_local_id(1)], // p_1133->local_1_offset
        sequence_input[get_local_id(2)], // p_1133->local_2_offset
        sequence_input[get_group_id(0)], // p_1133->group_0_offset
        sequence_input[get_group_id(1)], // p_1133->group_1_offset
        sequence_input[get_group_id(2)], // p_1133->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1134 = c_1135;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1133);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1133->g_2, "p_1133->g_2", print_hash_value);
    transparent_crc(p_1133->g_16, "p_1133->g_16", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1133->g_59[i][j][k], "p_1133->g_59[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1133->g_77[i][j], "p_1133->g_77[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1133->g_79, "p_1133->g_79", print_hash_value);
    transparent_crc(p_1133->g_98, "p_1133->g_98", print_hash_value);
    transparent_crc(p_1133->g_101, "p_1133->g_101", print_hash_value);
    transparent_crc(p_1133->g_104, "p_1133->g_104", print_hash_value);
    transparent_crc(p_1133->g_117, "p_1133->g_117", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1133->g_141[i][j][k], "p_1133->g_141[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1133->g_144, "p_1133->g_144", print_hash_value);
    transparent_crc(p_1133->g_147, "p_1133->g_147", print_hash_value);
    transparent_crc(p_1133->g_158, "p_1133->g_158", print_hash_value);
    transparent_crc(p_1133->g_190, "p_1133->g_190", print_hash_value);
    transparent_crc(p_1133->g_193, "p_1133->g_193", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1133->g_196[i][j].f0, "p_1133->g_196[i][j].f0", print_hash_value);
            transparent_crc(p_1133->g_196[i][j].f1, "p_1133->g_196[i][j].f1", print_hash_value);
            transparent_crc(p_1133->g_196[i][j].f2, "p_1133->g_196[i][j].f2", print_hash_value);
            transparent_crc(p_1133->g_196[i][j].f3, "p_1133->g_196[i][j].f3", print_hash_value);
            transparent_crc(p_1133->g_196[i][j].f4, "p_1133->g_196[i][j].f4", print_hash_value);
            transparent_crc(p_1133->g_196[i][j].f5, "p_1133->g_196[i][j].f5", print_hash_value);
            transparent_crc(p_1133->g_196[i][j].f6, "p_1133->g_196[i][j].f6", print_hash_value);
            transparent_crc(p_1133->g_196[i][j].f7, "p_1133->g_196[i][j].f7", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1133->g_198[i].f0, "p_1133->g_198[i].f0", print_hash_value);
        transparent_crc(p_1133->g_198[i].f1, "p_1133->g_198[i].f1", print_hash_value);
        transparent_crc(p_1133->g_198[i].f2, "p_1133->g_198[i].f2", print_hash_value);
        transparent_crc(p_1133->g_198[i].f3, "p_1133->g_198[i].f3", print_hash_value);
        transparent_crc(p_1133->g_198[i].f4, "p_1133->g_198[i].f4", print_hash_value);
        transparent_crc(p_1133->g_198[i].f5, "p_1133->g_198[i].f5", print_hash_value);
        transparent_crc(p_1133->g_198[i].f6, "p_1133->g_198[i].f6", print_hash_value);
        transparent_crc(p_1133->g_198[i].f7, "p_1133->g_198[i].f7", print_hash_value);

    }
    transparent_crc(p_1133->g_224.f0, "p_1133->g_224.f0", print_hash_value);
    transparent_crc(p_1133->g_238.f0, "p_1133->g_238.f0", print_hash_value);
    transparent_crc(p_1133->g_258, "p_1133->g_258", print_hash_value);
    transparent_crc(p_1133->g_261.f0, "p_1133->g_261.f0", print_hash_value);
    transparent_crc(p_1133->g_261.f1, "p_1133->g_261.f1", print_hash_value);
    transparent_crc(p_1133->g_261.f2, "p_1133->g_261.f2", print_hash_value);
    transparent_crc(p_1133->g_261.f3, "p_1133->g_261.f3", print_hash_value);
    transparent_crc(p_1133->g_261.f4, "p_1133->g_261.f4", print_hash_value);
    transparent_crc(p_1133->g_261.f5, "p_1133->g_261.f5", print_hash_value);
    transparent_crc(p_1133->g_261.f6, "p_1133->g_261.f6", print_hash_value);
    transparent_crc(p_1133->g_261.f7, "p_1133->g_261.f7", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1133->g_262[i].f0, "p_1133->g_262[i].f0", print_hash_value);
        transparent_crc(p_1133->g_262[i].f1, "p_1133->g_262[i].f1", print_hash_value);
        transparent_crc(p_1133->g_262[i].f2, "p_1133->g_262[i].f2", print_hash_value);
        transparent_crc(p_1133->g_262[i].f3, "p_1133->g_262[i].f3", print_hash_value);
        transparent_crc(p_1133->g_262[i].f4, "p_1133->g_262[i].f4", print_hash_value);
        transparent_crc(p_1133->g_262[i].f5, "p_1133->g_262[i].f5", print_hash_value);
        transparent_crc(p_1133->g_262[i].f6, "p_1133->g_262[i].f6", print_hash_value);
        transparent_crc(p_1133->g_262[i].f7, "p_1133->g_262[i].f7", print_hash_value);

    }
    transparent_crc(p_1133->g_266.f0, "p_1133->g_266.f0", print_hash_value);
    transparent_crc(p_1133->g_268.f0, "p_1133->g_268.f0", print_hash_value);
    transparent_crc(p_1133->g_277.f0, "p_1133->g_277.f0", print_hash_value);
    transparent_crc(p_1133->g_279.f0, "p_1133->g_279.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1133->g_283[i][j].f0, "p_1133->g_283[i][j].f0", print_hash_value);
            transparent_crc(p_1133->g_283[i][j].f1, "p_1133->g_283[i][j].f1", print_hash_value);
            transparent_crc(p_1133->g_283[i][j].f2, "p_1133->g_283[i][j].f2", print_hash_value);
            transparent_crc(p_1133->g_283[i][j].f3, "p_1133->g_283[i][j].f3", print_hash_value);
            transparent_crc(p_1133->g_283[i][j].f4, "p_1133->g_283[i][j].f4", print_hash_value);
            transparent_crc(p_1133->g_283[i][j].f5, "p_1133->g_283[i][j].f5", print_hash_value);
            transparent_crc(p_1133->g_283[i][j].f6, "p_1133->g_283[i][j].f6", print_hash_value);
            transparent_crc(p_1133->g_283[i][j].f7, "p_1133->g_283[i][j].f7", print_hash_value);

        }
    }
    transparent_crc(p_1133->g_325, "p_1133->g_325", print_hash_value);
    transparent_crc(p_1133->g_349, "p_1133->g_349", print_hash_value);
    transparent_crc(p_1133->g_401.f0, "p_1133->g_401.f0", print_hash_value);
    transparent_crc(p_1133->g_401.f1, "p_1133->g_401.f1", print_hash_value);
    transparent_crc(p_1133->g_401.f2, "p_1133->g_401.f2", print_hash_value);
    transparent_crc(p_1133->g_401.f3, "p_1133->g_401.f3", print_hash_value);
    transparent_crc(p_1133->g_401.f4, "p_1133->g_401.f4", print_hash_value);
    transparent_crc(p_1133->g_401.f5, "p_1133->g_401.f5", print_hash_value);
    transparent_crc(p_1133->g_401.f6, "p_1133->g_401.f6", print_hash_value);
    transparent_crc(p_1133->g_401.f7, "p_1133->g_401.f7", print_hash_value);
    transparent_crc(p_1133->g_402.f0, "p_1133->g_402.f0", print_hash_value);
    transparent_crc(p_1133->g_402.f1, "p_1133->g_402.f1", print_hash_value);
    transparent_crc(p_1133->g_402.f2, "p_1133->g_402.f2", print_hash_value);
    transparent_crc(p_1133->g_402.f3, "p_1133->g_402.f3", print_hash_value);
    transparent_crc(p_1133->g_402.f4, "p_1133->g_402.f4", print_hash_value);
    transparent_crc(p_1133->g_402.f5, "p_1133->g_402.f5", print_hash_value);
    transparent_crc(p_1133->g_402.f6, "p_1133->g_402.f6", print_hash_value);
    transparent_crc(p_1133->g_402.f7, "p_1133->g_402.f7", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1133->g_404[i], "p_1133->g_404[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1133->g_430[i].f0, "p_1133->g_430[i].f0", print_hash_value);

    }
    transparent_crc(p_1133->g_432, "p_1133->g_432", print_hash_value);
    transparent_crc(p_1133->g_502.f0, "p_1133->g_502.f0", print_hash_value);
    transparent_crc(p_1133->g_617, "p_1133->g_617", print_hash_value);
    transparent_crc(p_1133->g_640.f0, "p_1133->g_640.f0", print_hash_value);
    transparent_crc(p_1133->g_654, "p_1133->g_654", print_hash_value);
    transparent_crc(p_1133->g_658.f0, "p_1133->g_658.f0", print_hash_value);
    transparent_crc(p_1133->g_661, "p_1133->g_661", print_hash_value);
    transparent_crc(p_1133->g_663, "p_1133->g_663", print_hash_value);
    transparent_crc(p_1133->g_712.f0, "p_1133->g_712.f0", print_hash_value);
    transparent_crc(p_1133->g_712.f1, "p_1133->g_712.f1", print_hash_value);
    transparent_crc(p_1133->g_712.f2, "p_1133->g_712.f2", print_hash_value);
    transparent_crc(p_1133->g_712.f3, "p_1133->g_712.f3", print_hash_value);
    transparent_crc(p_1133->g_712.f4, "p_1133->g_712.f4", print_hash_value);
    transparent_crc(p_1133->g_712.f5, "p_1133->g_712.f5", print_hash_value);
    transparent_crc(p_1133->g_712.f6, "p_1133->g_712.f6", print_hash_value);
    transparent_crc(p_1133->g_712.f7, "p_1133->g_712.f7", print_hash_value);
    transparent_crc(p_1133->g_719.f0, "p_1133->g_719.f0", print_hash_value);
    transparent_crc(p_1133->g_719.f1, "p_1133->g_719.f1", print_hash_value);
    transparent_crc(p_1133->g_719.f2, "p_1133->g_719.f2", print_hash_value);
    transparent_crc(p_1133->g_719.f3, "p_1133->g_719.f3", print_hash_value);
    transparent_crc(p_1133->g_719.f4, "p_1133->g_719.f4", print_hash_value);
    transparent_crc(p_1133->g_719.f5, "p_1133->g_719.f5", print_hash_value);
    transparent_crc(p_1133->g_719.f6, "p_1133->g_719.f6", print_hash_value);
    transparent_crc(p_1133->g_719.f7, "p_1133->g_719.f7", print_hash_value);
    transparent_crc(p_1133->g_757.f0, "p_1133->g_757.f0", print_hash_value);
    transparent_crc(p_1133->g_757.f1, "p_1133->g_757.f1", print_hash_value);
    transparent_crc(p_1133->g_757.f2, "p_1133->g_757.f2", print_hash_value);
    transparent_crc(p_1133->g_757.f3, "p_1133->g_757.f3", print_hash_value);
    transparent_crc(p_1133->g_757.f4, "p_1133->g_757.f4", print_hash_value);
    transparent_crc(p_1133->g_757.f5, "p_1133->g_757.f5", print_hash_value);
    transparent_crc(p_1133->g_757.f6, "p_1133->g_757.f6", print_hash_value);
    transparent_crc(p_1133->g_757.f7, "p_1133->g_757.f7", print_hash_value);
    transparent_crc(p_1133->g_759.f0, "p_1133->g_759.f0", print_hash_value);
    transparent_crc(p_1133->g_759.f1, "p_1133->g_759.f1", print_hash_value);
    transparent_crc(p_1133->g_759.f2, "p_1133->g_759.f2", print_hash_value);
    transparent_crc(p_1133->g_759.f3, "p_1133->g_759.f3", print_hash_value);
    transparent_crc(p_1133->g_759.f4, "p_1133->g_759.f4", print_hash_value);
    transparent_crc(p_1133->g_759.f5, "p_1133->g_759.f5", print_hash_value);
    transparent_crc(p_1133->g_759.f6, "p_1133->g_759.f6", print_hash_value);
    transparent_crc(p_1133->g_759.f7, "p_1133->g_759.f7", print_hash_value);
    transparent_crc(p_1133->g_760, "p_1133->g_760", print_hash_value);
    transparent_crc(p_1133->g_785, "p_1133->g_785", print_hash_value);
    transparent_crc(p_1133->g_830.f0, "p_1133->g_830.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1133->g_857[i].f0, "p_1133->g_857[i].f0", print_hash_value);
        transparent_crc(p_1133->g_857[i].f1, "p_1133->g_857[i].f1", print_hash_value);
        transparent_crc(p_1133->g_857[i].f2, "p_1133->g_857[i].f2", print_hash_value);
        transparent_crc(p_1133->g_857[i].f3, "p_1133->g_857[i].f3", print_hash_value);
        transparent_crc(p_1133->g_857[i].f4, "p_1133->g_857[i].f4", print_hash_value);
        transparent_crc(p_1133->g_857[i].f5, "p_1133->g_857[i].f5", print_hash_value);
        transparent_crc(p_1133->g_857[i].f6, "p_1133->g_857[i].f6", print_hash_value);
        transparent_crc(p_1133->g_857[i].f7, "p_1133->g_857[i].f7", print_hash_value);

    }
    transparent_crc(p_1133->g_913.f0, "p_1133->g_913.f0", print_hash_value);
    transparent_crc(p_1133->g_915.f0, "p_1133->g_915.f0", print_hash_value);
    transparent_crc(p_1133->g_978, "p_1133->g_978", print_hash_value);
    transparent_crc(p_1133->g_1086, "p_1133->g_1086", print_hash_value);
    transparent_crc(p_1133->g_1114.f0, "p_1133->g_1114.f0", print_hash_value);
    transparent_crc(p_1133->g_1132.f0, "p_1133->g_1132.f0", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 50; i++)
            transparent_crc(p_1133->g_special_values[i + 50 * get_linear_group_id()], "p_1133->g_special_values[i + 50 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 50; i++)
            transparent_crc(p_1133->l_special_values[i], "p_1133->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
