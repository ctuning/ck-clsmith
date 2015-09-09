// --atomics 99 ---fake_divergence -g 59,84,2 -l 1,14,2
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


// Seed: 101

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
};

struct S1 {
    int32_t g_3[10][5];
    int32_t g_4;
    volatile int32_t g_5;
    int32_t g_6;
    uint32_t g_31;
    uint8_t g_35[4][4][8];
    uint8_t g_57;
    uint32_t g_63;
    struct S0 g_81;
    int32_t g_83;
    volatile int64_t g_84;
    int16_t g_85;
    uint64_t g_86;
    int32_t ** volatile g_91;
    volatile int64_t g_97[2];
    volatile uint16_t g_98;
    volatile int32_t g_118;
    uint32_t *g_129;
    uint32_t **g_128;
    int8_t g_164[5];
    volatile int64_t g_165;
    int32_t ** volatile g_195;
    volatile uint8_t * volatile * volatile g_196;
    uint16_t g_218;
    uint64_t g_219;
    int32_t *g_223;
    int32_t ** volatile g_222[1][9];
    int32_t ** volatile g_224;
    int32_t ** volatile g_225[6];
    int16_t *g_229[5];
    int16_t **g_228;
    int16_t *** volatile g_227;
    uint8_t *g_245;
    uint8_t **g_244;
    uint8_t ***g_243;
    uint16_t g_257[1][9];
    uint64_t g_282[7][6];
    struct S0 g_292;
    struct S0 g_295;
    int64_t g_323;
    int32_t g_328;
    int32_t * volatile g_327[10][1][8];
    int32_t * volatile g_329;
    volatile int16_t *g_334;
    volatile int16_t **g_333;
    volatile int16_t ** volatile * volatile g_332[6];
    int32_t * volatile g_344;
    int32_t * volatile g_369[3][10][2];
    int32_t * volatile g_370[1];
    struct S0 * volatile g_497;
    volatile int64_t *g_691;
    volatile int64_t **g_690[9][8];
    int32_t g_694;
    uint32_t g_714;
    int32_t * volatile g_733;
    volatile uint8_t g_752;
    uint32_t g_780;
    int32_t ** volatile g_928;
    int32_t * volatile g_937;
    uint32_t g_948[9];
    int32_t *g_953;
    int32_t *g_964[4][9][5];
    int32_t **g_963;
    int64_t g_967;
    int64_t *g_982;
    uint8_t g_1006;
    volatile uint16_t g_1031;
    uint16_t *g_1038;
    uint16_t **g_1037;
    int32_t g_1041;
    struct S0 * volatile g_1056;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
int64_t  func_1(struct S1 * p_1058);
int32_t * func_7(int8_t  p_8, int32_t * p_9, int16_t  p_10, int32_t * p_11, int32_t * p_12, struct S1 * p_1058);
uint8_t  func_23(uint32_t  p_24, struct S1 * p_1058);
int16_t  func_37(int32_t  p_38, int32_t  p_39, int32_t * p_40, struct S1 * p_1058);
uint64_t  func_41(uint32_t  p_42, int8_t  p_43, uint64_t  p_44, int16_t  p_45, struct S1 * p_1058);
struct S0  func_49(struct S0  p_50, uint32_t  p_51, int32_t * p_52, struct S1 * p_1058);
struct S0  func_53(uint8_t * p_54, int16_t  p_55, struct S1 * p_1058);
int16_t  func_65(uint32_t * p_66, uint8_t * p_67, int32_t  p_68, uint8_t  p_69, struct S1 * p_1058);
uint8_t * func_72(uint32_t ** p_73, int64_t  p_74, int64_t  p_75, uint32_t ** p_76, int64_t  p_77, struct S1 * p_1058);
uint32_t ** func_78(uint8_t * p_79, struct S0  p_80, struct S1 * p_1058);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1058->g_3 p_1058->g_4 p_1058->g_6 p_1058->g_714 p_1058->g_292 p_1058->g_84 p_1058->g_227 p_1058->g_228 p_1058->g_229 p_1058->g_85 p_1058->g_218 p_1058->g_245 p_1058->g_57 p_1058->g_780 p_1058->g_219 p_1058->g_223 p_1058->g_83 p_1058->g_35 p_1058->g_1006 p_1058->g_63 p_1058->g_1031 p_1058->g_1037 p_1058->g_733 p_1058->g_1041 p_1058->g_1038 p_1058->g_31 p_1058->g_1056 p_1058->g_691 p_1058->g_165
 * writes: p_1058->g_3 p_1058->g_4 p_1058->g_6 p_1058->g_714 p_1058->g_982 p_1058->g_81.f0 p_1058->g_85 p_1058->g_780 p_1058->g_219 p_1058->g_83 p_1058->g_35 p_1058->g_1006 p_1058->g_164 p_1058->g_292.f0 p_1058->g_31 p_1058->g_292
 */
int64_t  func_1(struct S1 * p_1058)
{ /* block id: 4 */
    int16_t l_2[4] = {0x4A2CL,0x4A2CL,0x4A2CL,0x4A2CL};
    uint8_t *l_48 = (void*)0;
    int32_t l_969 = 0L;
    int64_t *l_981 = &p_1058->g_967;
    int64_t l_987[6] = {0x7FC4364B9AD729F2L,0x7FC4364B9AD729F2L,0x7FC4364B9AD729F2L,0x7FC4364B9AD729F2L,0x7FC4364B9AD729F2L,0x7FC4364B9AD729F2L};
    int8_t l_1001 = 0x2EL;
    uint32_t *l_1002 = &p_1058->g_714;
    int64_t l_1014 = 0x32B371B566DB9DD6L;
    int8_t l_1030 = (-1L);
    uint32_t l_1033 = 8UL;
    int32_t l_1057 = 0x0570CA10L;
    int i;
    for (p_1058->g_3[2][0] = 3; (p_1058->g_3[2][0] >= 0); p_1058->g_3[2][0] -= 1)
    { /* block id: 7 */
        uint16_t l_783 = 0UL;
        int32_t **l_965 = &p_1058->g_964[0][0][3];
        for (p_1058->g_4 = 3; (p_1058->g_4 >= 0); p_1058->g_4 -= 1)
        { /* block id: 10 */
            int32_t l_36[9] = {3L,0x02F744EDL,3L,3L,0x02F744EDL,3L,3L,0x02F744EDL,3L};
            int32_t **l_962 = (void*)0;
            int i;
            for (p_1058->g_6 = 3; (p_1058->g_6 >= 0); p_1058->g_6 -= 1)
            { /* block id: 13 */
                uint8_t *l_34 = &p_1058->g_35[1][1][1];
                int32_t **l_955 = &p_1058->g_223;
                int64_t *l_966 = &p_1058->g_967;
                int32_t *l_968 = &p_1058->g_3[1][2];
                int i;
                (1 + 1);
            }
        }
    }
    for (p_1058->g_714 = 0; (p_1058->g_714 != 9); p_1058->g_714 = safe_add_func_int64_t_s_s(p_1058->g_714, 1))
    { /* block id: 637 */
        uint8_t l_972 = 2UL;
        return l_972;
    }
    if ((safe_add_func_uint16_t_u_u((((p_1058->g_292 , (void*)0) != (void*)0) > ((**p_1058->g_228) = (((safe_mul_func_uint16_t_u_u((p_1058->g_81.f0 = (safe_mul_func_int8_t_s_s((((((p_1058->g_982 = l_981) != (((((safe_lshift_func_int8_t_s_u(((safe_add_func_uint32_t_u_u(((0x3C920B55D6107983L && (p_1058->g_84 || l_987[5])) , (l_2[2] <= ((((1L & 4UL) >= l_987[3]) , (***p_1058->g_227)) != (-1L)))), 0xDBD53318L)) != p_1058->g_218), (*p_1058->g_245))) > l_2[1]) , l_987[5]) | 1L) , l_981)) >= (-3L)) || 0x3CDA8A8E9A06E079L) >= 0x6538A75613CC5E7DL), 0xA1L))), l_2[1])) ^ 0x3558L) < 0x068BB33FL))), 65533UL)))
    { /* block id: 643 */
        int32_t *l_988[10] = {&p_1058->g_6,&p_1058->g_83,&p_1058->g_83,&p_1058->g_83,&p_1058->g_6,&p_1058->g_6,&p_1058->g_83,&p_1058->g_83,&p_1058->g_83,&p_1058->g_6};
        int32_t l_1003 = 0x3D86BCEBL;
        uint8_t *l_1011 = &p_1058->g_1006;
        uint16_t *l_1036 = &p_1058->g_292.f0;
        uint16_t **l_1035 = &l_1036;
        int32_t l_1053 = 0x29D8CD92L;
        int i;
        for (p_1058->g_780 = 0; (p_1058->g_780 <= 0); p_1058->g_780 += 1)
        { /* block id: 646 */
            int32_t **l_989 = &l_988[1];
            int32_t l_1054[8];
            int i;
            for (i = 0; i < 8; i++)
                l_1054[i] = 5L;
            (*l_989) = l_988[6];
            for (p_1058->g_219 = 0; (p_1058->g_219 <= 1); p_1058->g_219 += 1)
            { /* block id: 650 */
                int32_t l_998 = 5L;
                uint8_t *l_1004 = &p_1058->g_35[3][3][6];
                uint8_t *l_1005 = &p_1058->g_1006;
                int32_t **l_1044 = &l_988[6];
                l_969 = (p_1058->g_85 || (p_1058->g_164[3] = (((*l_1005) &= ((4UL || 5L) , ((*l_1004) |= ((safe_sub_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), ((safe_rshift_func_uint8_t_u_u(l_998, 5)) < (+((l_969 , l_987[5]) | ((*p_1058->g_223) &= (((0x6D93D1C484588031L ^ ((safe_add_func_uint32_t_u_u(l_1001, (l_1002 != (void*)0))) & l_2[3])) < l_1003) > p_1058->g_4))))))), (*p_1058->g_245))), l_998)) ^ FAKE_DIVERGE(p_1058->local_1_offset, get_local_id(1), 10))))) | p_1058->g_218)));
                for (l_998 = 7; (l_998 >= 0); l_998 -= 1)
                { /* block id: 658 */
                    int8_t *l_1032[5] = {&p_1058->g_164[1],&p_1058->g_164[1],&p_1058->g_164[1],&p_1058->g_164[1],&p_1058->g_164[1]};
                    int32_t l_1034 = 1L;
                    int i;
                    l_969 &= ((((((p_1058->g_85 >= GROUP_DIVERGE(2, 1)) && (safe_mod_func_uint8_t_u_u((safe_mod_func_int16_t_s_s(((void*)0 == l_1011), (((safe_div_func_int32_t_s_s(((**l_989) = l_1014), ((*l_1002)++))) ^ (safe_mul_func_uint16_t_u_u((l_1014 < p_1058->g_63), ((((safe_unary_minus_func_int8_t_s(0L)) && ((((safe_mul_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((l_1033 ^= (((safe_sub_func_uint16_t_u_u((((0x6EEAL > (-6L)) , l_1030) >= 0x3929L), l_998)) >= p_1058->g_219) || p_1058->g_1031)), 7)), l_2[0])), (**p_1058->g_228))) <= l_1034) , (-9L)) < 18446744073709551615UL)) , l_1035) != p_1058->g_1037)))) && (-1L)))), 1L))) & p_1058->g_85) != 0x7B266E9E34CA5C34L) <= l_1014) , (*p_1058->g_733));
                    l_1053 ^= ((safe_div_func_uint16_t_u_u(((*p_1058->g_1038) = p_1058->g_1041), (safe_div_func_int16_t_s_s(((l_1034 , l_998) , ((((l_1044 != (void*)0) <= (((**l_1044) != (+(safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((safe_add_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s((0L | 9UL), l_1034)) , l_1014), FAKE_DIVERGE(p_1058->local_1_offset, get_local_id(1), 10))), p_1058->g_57)), (**l_1044))))) < 0x65L)) > (-2L)) ^ (**l_1044))), (**p_1058->g_228))))) | l_2[2]);
                    if ((**l_989))
                        continue;
                }
                for (l_1030 = 7; (l_1030 >= 0); l_1030 -= 1)
                { /* block id: 669 */
                    int i, j, k;
                    (**l_1044) = (-3L);
                }
                l_1054[1] ^= (**l_989);
            }
            (**l_989) = ((void*)0 != &p_1058->g_292);
            for (p_1058->g_31 = 0; (p_1058->g_31 <= 7); p_1058->g_31 += 1)
            { /* block id: 677 */
                struct S0 l_1055 = {65530UL};
                (*p_1058->g_1056) = l_1055;
            }
        }
        return l_1057;
    }
    else
    { /* block id: 682 */
        return (*p_1058->g_691);
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_953
 * writes:
 */
int32_t * func_7(int8_t  p_8, int32_t * p_9, int16_t  p_10, int32_t * p_11, int32_t * p_12, struct S1 * p_1058)
{ /* block id: 622 */
    int32_t *l_954[3];
    int i;
    for (i = 0; i < 3; i++)
        l_954[i] = &p_1058->g_328;
    p_9 = p_1058->g_953;
    return l_954[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_694 p_1058->g_81.f0 p_1058->g_244 p_1058->g_245 p_1058->g_57 p_1058->g_691 p_1058->g_165 p_1058->g_323 p_1058->g_86 p_1058->g_328 p_1058->g_97 p_1058->g_83 p_1058->g_928 p_1058->g_937 p_1058->g_35 p_1058->g_948
 * writes: p_1058->g_694 p_1058->g_81.f0 p_1058->g_57 p_1058->g_328 p_1058->g_323 p_1058->g_218 p_1058->g_86 p_1058->g_714 p_1058->g_219 p_1058->g_85 p_1058->g_83 p_1058->g_223 p_1058->g_948
 */
uint8_t  func_23(uint32_t  p_24, struct S1 * p_1058)
{ /* block id: 512 */
    int32_t l_799 = (-1L);
    struct S0 *l_804 = &p_1058->g_292;
    int32_t *l_822 = &p_1058->g_694;
    int32_t **l_821 = &l_822;
    int16_t **l_882[7] = {&p_1058->g_229[1],&p_1058->g_229[1],&p_1058->g_229[1],&p_1058->g_229[1],&p_1058->g_229[1],&p_1058->g_229[1],&p_1058->g_229[1]};
    int32_t l_897 = 1L;
    int32_t l_898 = (-1L);
    int32_t l_918 = (-1L);
    int32_t l_919 = 1L;
    int32_t l_922[10][2][6] = {{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}},{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}},{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}},{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}},{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}},{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}},{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}},{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}},{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}},{{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL},{0x4E03A36AL,0x2C9CFF98L,0x19B13F16L,7L,0x397A54DBL,0x4E03A36AL}}};
    uint32_t **l_936[2][5] = {{&p_1058->g_129,&p_1058->g_129,&p_1058->g_129,&p_1058->g_129,&p_1058->g_129},{&p_1058->g_129,&p_1058->g_129,&p_1058->g_129,&p_1058->g_129,&p_1058->g_129}};
    uint16_t *l_939[10][6] = {{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0},{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0},{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0},{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0},{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0},{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0},{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0},{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0},{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0},{&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0,&p_1058->g_295.f0}};
    uint16_t **l_938[4][8][3] = {{{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0}},{{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0}},{{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0}},{{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0},{&l_939[5][0],&l_939[5][0],(void*)0}}};
    int64_t *l_946 = &p_1058->g_323;
    uint32_t *l_947 = &p_1058->g_948[2];
    uint64_t l_951 = 0xBAF2283E39606880L;
    int32_t *l_952 = &p_1058->g_83;
    int i, j, k;
    for (p_1058->g_694 = 0; (p_1058->g_694 != 11); ++p_1058->g_694)
    { /* block id: 515 */
        int32_t l_788[2];
        struct S0 *l_805 = &p_1058->g_295;
        int32_t *l_806 = &p_1058->g_328;
        int64_t *l_815 = &p_1058->g_323;
        uint16_t *l_816 = &p_1058->g_218;
        int32_t l_817 = 0x4748DF8CL;
        uint64_t *l_818 = &p_1058->g_86;
        int32_t **l_819 = (void*)0;
        int16_t **l_881 = &p_1058->g_229[4];
        int i;
        for (i = 0; i < 2; i++)
            l_788[i] = 1L;
        if ((+(safe_lshift_func_int8_t_s_s(((((*l_818) ^= ((((((~(0x0862L >= (++p_1058->g_81.f0))) <= (safe_div_func_uint16_t_u_u(l_788[1], (((safe_div_func_uint8_t_u_u(((((safe_sub_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(l_799, (safe_add_func_int32_t_s_s(((((*l_806) = ((FAKE_DIVERGE(p_1058->global_0_offset, get_global_id(0), 10) > (((--(**p_1058->g_244)) >= l_799) , l_799)) < (l_804 == l_805))) >= (((*l_816) = (safe_rshift_func_int16_t_s_u(((safe_rshift_func_uint16_t_u_s((((safe_mod_func_int64_t_s_s(((*l_815) ^= (((safe_mul_func_int16_t_s_s((0x374CL >= ((GROUP_DIVERGE(1, 1) || ((((p_24 & l_799) < p_24) & l_799) >= 9L)) & 1UL)), p_24)) != 65535UL) != (*p_1058->g_691))), 0x3F5E8814E74E52A5L)) > 0x7B92AE4EL) && 0x06B55FECL), l_799)) == 0xBDL), 5))) & FAKE_DIVERGE(p_1058->group_2_offset, get_group_id(2), 10))) , 0x39BA959BL), 0x5F325018L)))) , p_24), l_799)) > p_24) > p_24) , p_24), l_799)) <= 0L) , p_24)))) || (**p_1058->g_244)) != l_799) && l_817) & 249UL)) >= 0x1A5EB12093EB3492L) & GROUP_DIVERGE(1, 1)), p_24))))
        { /* block id: 522 */
            int32_t ***l_820[9][7][1] = {{{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819}},{{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819}},{{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819}},{{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819}},{{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819}},{{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819}},{{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819}},{{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819}},{{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819},{&l_819}}};
            int i, j, k;
            (*l_806) = p_24;
            l_821 = l_819;
        }
        else
        { /* block id: 525 */
            int16_t l_883 = (-3L);
            int32_t ***l_888[7];
            int16_t l_890 = 4L;
            int32_t l_896[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int i;
            for (i = 0; i < 7; i++)
                l_888[i] = (void*)0;
            (*l_806) = ((((l_799 = (safe_lshift_func_uint8_t_u_s(((safe_add_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(((void*)0 != &p_1058->g_129), (safe_mod_func_uint8_t_u_u((**p_1058->g_244), 0xBEL)))), 0x24A4F408L)) , (!(**p_1058->g_244))), (safe_sub_func_uint8_t_u_u((((-7L) < (safe_mod_func_int16_t_s_s((safe_mod_func_int64_t_s_s(l_799, (safe_sub_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((safe_rshift_func_int16_t_s_u(0x1DFBL, (*l_806))), p_24)), FAKE_DIVERGE(p_1058->global_2_offset, get_global_id(2), 10))))), p_24))) <= p_24), 1UL))))) , p_24) <= GROUP_DIVERGE(1, 1)) , l_799);
            if ((atomic_inc(&p_1058->g_atomic_input[99 * get_linear_group_id() + 2]) == 0))
            { /* block id: 529 */
                int32_t l_843 = 5L;
                uint16_t l_866 = 65535UL;
                int16_t l_867 = 0x30B7L;
                int16_t l_868 = 0x4F8AL;
                for (l_843 = 0; (l_843 <= 1); l_843 += 1)
                { /* block id: 532 */
                    int32_t l_844 = 0x15B4D304L;
                    for (l_844 = 0; (l_844 <= 1); l_844 += 1)
                    { /* block id: 535 */
                        int64_t l_845[9][8][3] = {{{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L}},{{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L}},{{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L}},{{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L}},{{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L}},{{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L}},{{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L}},{{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L}},{{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L},{(-1L),0x56AFC90CCA8F12F5L,0x77059E12F5D49F36L}}};
                        int i, j, k;
                        l_845[8][7][2] = 6L;
                    }
                    for (l_844 = 1; (l_844 >= 0); l_844 -= 1)
                    { /* block id: 540 */
                        int32_t *l_846 = (void*)0;
                        int32_t l_848[4][5] = {{(-3L),0x12CA712DL,0x12CA712DL,(-3L),(-3L)},{(-3L),0x12CA712DL,0x12CA712DL,(-3L),(-3L)},{(-3L),0x12CA712DL,0x12CA712DL,(-3L),(-3L)},{(-3L),0x12CA712DL,0x12CA712DL,(-3L),(-3L)}};
                        int32_t *l_847 = &l_848[1][3];
                        int32_t *l_849 = &l_848[1][3];
                        struct S0 l_850 = {0x89E5L};
                        struct S0 l_851 = {1UL};
                        volatile uint8_t l_852 = 255UL;/* VOLATILE GLOBAL l_852 */
                        int i, j;
                        l_847 = l_846;
                        l_849 = (void*)0;
                        l_851 = l_850;
                        l_852 = p_1058->g_97[l_844];
                    }
                    for (l_844 = 1; (l_844 >= 0); l_844 -= 1)
                    { /* block id: 548 */
                        int32_t l_853[5] = {0L,0L,0L,0L,0L};
                        int32_t l_854 = 0x6FF12DE7L;
                        int64_t l_855 = 0x597EE5A13C83F671L;
                        uint32_t l_856 = 0x070F0971L;
                        int32_t l_857 = (-1L);
                        int16_t l_858[2][1];
                        uint32_t l_859[9][1][3];
                        struct S0 l_860 = {65528UL};
                        struct S0 l_861 = {65527UL};
                        int32_t l_862 = 0L;
                        uint32_t l_863 = 3UL;
                        uint64_t l_864 = 0x139097F133036F19L;
                        uint32_t l_865 = 0UL;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_858[i][j] = (-4L);
                        }
                        for (i = 0; i < 9; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 3; k++)
                                    l_859[i][j][k] = 0x29D64D85L;
                            }
                        }
                        l_856 = (l_855 = (l_853[3] , l_854));
                        l_859[5][0][2] ^= (l_858[0][0] &= (l_857 = 0x527049F6L));
                        l_861 = l_860;
                        l_865 ^= (l_864 = (l_863 = l_862));
                    }
                }
                l_867 = l_866;
                l_843 = l_868;
                unsigned int result = 0;
                result += l_843;
                result += l_866;
                result += l_867;
                result += l_868;
                atomic_add(&p_1058->g_special_values[99 * get_linear_group_id() + 2], result);
            }
            else
            { /* block id: 562 */
                (1 + 1);
            }
            for (p_1058->g_86 = 20; (p_1058->g_86 > 40); ++p_1058->g_86)
            { /* block id: 567 */
                uint32_t l_891 = 9UL;
                int32_t l_899[8] = {0x7FB88EF0L,0x5E9681A0L,0x7FB88EF0L,0x7FB88EF0L,0x5E9681A0L,0x7FB88EF0L,0x7FB88EF0L,0x5E9681A0L};
                int16_t **l_911 = (void*)0;
                int i;
                for (p_1058->g_714 = 0; (p_1058->g_714 <= 23); p_1058->g_714++)
                { /* block id: 570 */
                    int8_t *l_889 = (void*)0;
                    uint32_t l_900 = 0xBE976301L;
                    int32_t *l_903 = &p_1058->g_3[4][0];
                    l_788[0] |= (safe_add_func_uint64_t_u_u((p_24 & (-7L)), (*l_806)));
                }
                for (p_1058->g_219 = 0; (p_1058->g_219 > 51); p_1058->g_219++)
                { /* block id: 585 */
                    int64_t l_916 = 0x0E112FF34AC9112CL;
                    int32_t l_917 = (-4L);
                    int32_t l_920 = (-9L);
                    int32_t l_921 = 0x1D5392ECL;
                    uint32_t l_923 = 0x0A2BC506L;
                    for (p_1058->g_85 = 0; (p_1058->g_85 > 20); p_1058->g_85 = safe_add_func_int16_t_s_s(p_1058->g_85, 9))
                    { /* block id: 588 */
                        int16_t **l_909 = (void*)0;
                        int16_t ***l_910 = &l_882[0];
                        int32_t l_912 = 0x7B4D2E84L;
                        int32_t *l_913 = &l_817;
                        int32_t *l_914 = &p_1058->g_83;
                        int32_t *l_915[4][1][1] = {{{&l_899[7]}},{{&l_899[7]}},{{&l_899[7]}},{{&l_899[7]}}};
                        int i, j, k;
                        l_912 &= (((*l_910) = l_909) != l_911);
                        --l_923;
                        l_896[6] ^= ((*l_806) ^= ((*l_914) ^= p_24));
                    }
                    for (l_799 = 0; (l_799 >= (-11)); l_799 = safe_sub_func_int8_t_s_s(l_799, 4))
                    { /* block id: 598 */
                        return l_917;
                    }
                    for (p_1058->g_57 = 2; (p_1058->g_57 <= 6); p_1058->g_57 += 1)
                    { /* block id: 603 */
                        if (l_896[6])
                            break;
                        (*p_1058->g_928) = &l_896[2];
                    }
                }
                if ((atomic_inc(&p_1058->g_atomic_input[99 * get_linear_group_id() + 16]) == 9))
                { /* block id: 609 */
                    int32_t l_929[8][6] = {{(-8L),(-8L),1L,0x33CAD6EAL,(-1L),(-9L)},{(-8L),(-8L),1L,0x33CAD6EAL,(-1L),(-9L)},{(-8L),(-8L),1L,0x33CAD6EAL,(-1L),(-9L)},{(-8L),(-8L),1L,0x33CAD6EAL,(-1L),(-9L)},{(-8L),(-8L),1L,0x33CAD6EAL,(-1L),(-9L)},{(-8L),(-8L),1L,0x33CAD6EAL,(-1L),(-9L)},{(-8L),(-8L),1L,0x33CAD6EAL,(-1L),(-9L)},{(-8L),(-8L),1L,0x33CAD6EAL,(-1L),(-9L)}};
                    int16_t l_930 = 0x1680L;
                    int16_t l_931[7] = {0x2339L,0x2339L,0x2339L,0x2339L,0x2339L,0x2339L,0x2339L};
                    int16_t l_932 = 0x575DL;
                    uint64_t l_933 = 1UL;
                    int i, j;
                    l_933--;
                    unsigned int result = 0;
                    int l_929_i0, l_929_i1;
                    for (l_929_i0 = 0; l_929_i0 < 8; l_929_i0++) {
                        for (l_929_i1 = 0; l_929_i1 < 6; l_929_i1++) {
                            result += l_929[l_929_i0][l_929_i1];
                        }
                    }
                    result += l_930;
                    int l_931_i0;
                    for (l_931_i0 = 0; l_931_i0 < 7; l_931_i0++) {
                        result += l_931[l_931_i0];
                    }
                    result += l_932;
                    result += l_933;
                    atomic_add(&p_1058->g_special_values[99 * get_linear_group_id() + 16], result);
                }
                else
                { /* block id: 611 */
                    (1 + 1);
                }
            }
        }
        if (l_922[1][1][1])
            break;
    }
    (*p_1058->g_937) |= ((void*)0 == l_936[1][3]);
    (*l_952) &= (FAKE_DIVERGE(p_1058->local_2_offset, get_local_id(2), 10) , (((l_922[7][0][4] == ((void*)0 != l_938[2][6][0])) && (safe_rshift_func_uint16_t_u_s(p_1058->g_35[1][1][1], 3))) ^ (((safe_mul_func_int16_t_s_s(((safe_mod_func_int32_t_s_s((l_946 != (void*)0), (((--(*l_947)) , l_897) | (p_1058->g_328 , p_1058->g_81.f0)))) || l_951), (-1L))) , l_951) > p_24)));
    return (**p_1058->g_244);
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_85 p_1058->g_292.f0 p_1058->g_128 p_1058->g_129 p_1058->g_57 p_1058->g_295.f0 p_1058->g_733 p_1058->g_323 p_1058->g_4 p_1058->g_752 p_1058->g_328 p_1058->g_3 p_1058->g_97 p_1058->g_218 p_1058->g_244 p_1058->g_245 p_1058->g_63 p_1058->g_780
 * writes: p_1058->g_85 p_1058->g_714 p_1058->g_328 p_1058->g_83 p_1058->g_323 p_1058->g_164 p_1058->g_57 p_1058->g_63 p_1058->g_780
 */
int16_t  func_37(int32_t  p_38, int32_t  p_39, int32_t * p_40, struct S1 * p_1058)
{ /* block id: 484 */
    int64_t *l_726[6][7][5] = {{{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323}},{{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323}},{{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323}},{{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323}},{{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323}},{{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323},{&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323,&p_1058->g_323}}};
    int32_t l_729 = 0x373D3741L;
    int32_t l_730 = 1L;
    int64_t ***l_742 = (void*)0;
    int32_t l_760 = 2L;
    struct S0 *l_777 = &p_1058->g_292;
    struct S0 **l_776 = &l_777;
    int i, j, k;
    for (p_1058->g_85 = 0; (p_1058->g_85 != (-8)); p_1058->g_85 = safe_sub_func_int8_t_s_s(p_1058->g_85, 2))
    { /* block id: 487 */
        struct S0 *l_707 = &p_1058->g_295;
        struct S0 **l_706 = &l_707;
        int64_t *l_713[3];
        uint32_t *l_717 = (void*)0;
        int32_t l_718[6][3] = {{6L,0x4DEFE83DL,0x31F5EDC4L},{6L,0x4DEFE83DL,0x31F5EDC4L},{6L,0x4DEFE83DL,0x31F5EDC4L},{6L,0x4DEFE83DL,0x31F5EDC4L},{6L,0x4DEFE83DL,0x31F5EDC4L},{6L,0x4DEFE83DL,0x31F5EDC4L}};
        int32_t l_719 = 0x6AA2FA96L;
        int64_t **l_728 = &l_726[1][1][2];
        int64_t ***l_727 = &l_728;
        int64_t l_731 = 0x66EC26B5B72E5A32L;
        int32_t *l_732 = &p_1058->g_328;
        int i, j;
        for (i = 0; i < 3; i++)
            l_713[i] = (void*)0;
        l_719 = (safe_mul_func_uint8_t_u_u(p_38, ((+(safe_lshift_func_int16_t_s_u(((((l_706 != (void*)0) && (safe_unary_minus_func_int16_t_s((l_718[1][2] = (safe_mod_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((p_1058->g_292.f0 && p_39), (((((p_1058->g_714 = p_1058->g_85) , &p_1058->g_370[0]) != &p_1058->g_369[2][4][1]) & FAKE_DIVERGE(p_1058->local_0_offset, get_local_id(0), 10)) > (safe_mod_func_int64_t_s_s((l_717 != (*p_1058->g_128)), l_718[1][2]))))), l_718[1][0])))))) | 0x6691C79B88C9AF32L) > p_1058->g_57), p_1058->g_295.f0))) & 0x81AE2441L)));
        (*p_1058->g_733) = ((*l_732) = ((((safe_mod_func_int64_t_s_s(((0xC802119589AC03E8L && (l_729 = ((safe_lshift_func_uint16_t_u_s(65535UL, ((safe_rshift_func_int16_t_s_s((((l_726[1][3][3] != (p_39 , l_726[1][3][3])) < (p_39 , 0x49L)) >= (((((&l_726[5][1][2] == ((*l_727) = &l_726[3][4][0])) == l_719) < p_38) && p_38) <= 1UL)), l_718[5][0])) || 1UL))) | l_729))) >= l_730), l_731)) >= p_38) ^ 0x4C47E9BDL) >= 0xC2370FABL));
        p_40 = &l_730;
    }
    for (p_1058->g_323 = (-29); (p_1058->g_323 != 12); ++p_1058->g_323)
    { /* block id: 499 */
        int64_t **l_741[8];
        int64_t ***l_740 = &l_741[7];
        int64_t ***l_743 = &l_741[3];
        int32_t l_753 = 0x5539EEB4L;
        int32_t *l_754[5][1][2];
        int8_t *l_757 = &p_1058->g_164[4];
        int16_t ***l_761[9] = {(void*)0,&p_1058->g_228,(void*)0,(void*)0,&p_1058->g_228,(void*)0,(void*)0,&p_1058->g_228,(void*)0};
        int16_t ***l_763 = &p_1058->g_228;
        int16_t ****l_762 = &l_763;
        struct S0 *l_775 = &p_1058->g_295;
        struct S0 **l_774 = &l_775;
        uint32_t *l_778 = (void*)0;
        uint32_t *l_779 = &p_1058->g_63;
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_741[i] = &l_726[3][6][3];
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_754[i][j][k] = &p_1058->g_328;
            }
        }
        p_1058->g_328 ^= (safe_sub_func_uint64_t_u_u(1UL, ((((p_1058->g_164[4] = (~((&p_1058->g_295 != (((((safe_mul_func_uint16_t_u_u(((l_740 != (l_743 = l_742)) > (p_39 , p_1058->g_4)), ((safe_lshift_func_int16_t_s_u(((safe_add_func_uint8_t_u_u(254UL, (safe_rshift_func_int16_t_s_s(((GROUP_DIVERGE(1, 1) > (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), 1UL))) || 0UL), p_39)))) > 1UL), 13)) , p_39))) <= (-1L)) >= FAKE_DIVERGE(p_1058->group_1_offset, get_group_id(1), 10)) <= p_1058->g_752) , (void*)0)) , p_38))) , l_753) && l_729) , 18446744073709551615UL)));
        l_730 = ((safe_add_func_int8_t_s_s(((*l_757) = p_39), FAKE_DIVERGE(p_1058->group_2_offset, get_group_id(2), 10))) == p_39);
        p_39 = (((*l_779) |= (safe_mul_func_uint8_t_u_u(((**p_1058->g_244) &= (!((l_760 == (((void*)0 == l_726[1][3][3]) <= (((+(p_1058->g_3[2][0] , (l_761[0] != ((*l_762) = l_761[0])))) , (safe_add_func_uint32_t_u_u(0xE2CF51AFL, (safe_lshift_func_uint8_t_u_s((((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(((((safe_rshift_func_uint8_t_u_u(((l_774 == l_776) == l_760), p_38)) == l_729) <= p_38) ^ (-1L)), l_730)), p_1058->g_97[0])) | 0x29L) || p_1058->g_218), p_38))))) <= 2L))) < (*p_40)))), 0x34L))) <= 0x3869A9C3L);
        p_1058->g_780++;
    }
    return l_760;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_81 p_1058->g_86 p_1058->g_63 p_1058->g_57 p_1058->g_98 p_1058->g_4 p_1058->g_85 p_1058->g_83 p_1058->g_97 p_1058->g_128 p_1058->g_118 p_1058->g_3 p_1058->g_165 p_1058->g_91 p_1058->g_6 p_1058->g_164 p_1058->g_196 p_1058->g_227 p_1058->g_223 p_1058->g_218 p_1058->g_219 p_1058->g_129 p_1058->g_257 p_1058->g_329 p_1058->g_243 p_1058->g_332 p_1058->g_344 p_1058->g_282 p_1058->g_5 p_1058->g_295 p_1058->g_292.f0 p_1058->g_245 p_1058->g_328 p_1058->g_690 p_1058->g_229
 * writes: p_1058->g_86 p_1058->g_63 p_1058->g_57 p_1058->g_98 p_1058->g_81.f0 p_1058->g_85 p_1058->g_83 p_1058->g_164 p_1058->g_196 p_1058->g_218 p_1058->g_219 p_1058->g_228 p_1058->g_243 p_1058->g_223 p_1058->g_257 p_1058->g_292 p_1058->g_295 p_1058->g_323 p_1058->g_328 p_1058->g_282 p_1058->g_370 p_1058->g_694
 */
uint64_t  func_41(uint32_t  p_42, int8_t  p_43, uint64_t  p_44, int16_t  p_45, struct S1 * p_1058)
{ /* block id: 16 */
    uint8_t *l_56 = &p_1058->g_57;
    int32_t *l_60 = (void*)0;
    uint32_t *l_61 = (void*)0;
    uint32_t *l_62[3][3] = {{&p_1058->g_63,&p_1058->g_63,&p_1058->g_63},{&p_1058->g_63,&p_1058->g_63,&p_1058->g_63},{&p_1058->g_63,&p_1058->g_63,&p_1058->g_63}};
    int32_t l_64 = 0x459CADFDL;
    uint32_t **l_70 = &l_62[2][0];
    uint32_t **l_71 = &l_61;
    struct S0 *l_498 = &p_1058->g_295;
    int32_t l_500 = 0L;
    int32_t l_501[2];
    uint32_t l_503[1];
    int64_t *l_583[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_587 = &l_500;
    int32_t *l_588 = &l_501[0];
    int32_t *l_589[9];
    int32_t l_590 = (-1L);
    int32_t l_591[4];
    uint8_t l_592 = 0x4EL;
    int16_t ***l_597 = &p_1058->g_228;
    int16_t ***l_598 = &p_1058->g_228;
    int16_t ***l_599 = &p_1058->g_228;
    int16_t ***l_600 = &p_1058->g_228;
    int16_t **l_601 = &p_1058->g_229[1];
    int16_t **l_602 = &p_1058->g_229[1];
    uint32_t l_642 = 4294967295UL;
    int i, j;
    for (i = 0; i < 2; i++)
        l_501[i] = 0L;
    for (i = 0; i < 1; i++)
        l_503[i] = 0xD43EC584L;
    for (i = 0; i < 9; i++)
        l_589[i] = &l_64;
    for (i = 0; i < 4; i++)
        l_591[i] = 0x4AAB2018L;
    (*l_498) = func_49(func_53(l_56, ((FAKE_DIVERGE(p_1058->local_2_offset, get_local_id(2), 10) != ((l_64 = (safe_div_func_uint32_t_u_u((&p_1058->g_3[2][0] == l_60), p_45))) > 0x066FA41DL)) , func_65(((*l_71) = ((*l_70) = l_62[2][0])), func_72(func_78(l_56, (GROUP_DIVERGE(2, 1) , p_1058->g_81), p_1058), p_1058->g_6, p_1058->g_4, &p_1058->g_129, p_1058->g_3[2][0], p_1058), p_45, p_1058->g_3[2][0], p_1058)), p_1058), p_44, &p_1058->g_6, p_1058);
    for (p_1058->g_83 = 0; (p_1058->g_83 >= 0); p_1058->g_83 -= 1)
    { /* block id: 321 */
        int32_t *l_499[2][2][4] = {{{&p_1058->g_3[3][2],&l_64,&l_64,&p_1058->g_3[3][2]},{&p_1058->g_3[3][2],&l_64,&l_64,&p_1058->g_3[3][2]}},{{&p_1058->g_3[3][2],&l_64,&l_64,&p_1058->g_3[3][2]},{&p_1058->g_3[3][2],&l_64,&l_64,&p_1058->g_3[3][2]}}};
        int16_t l_502 = 0x7474L;
        int64_t **l_584[2][10][5] = {{{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]}},{{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]},{(void*)0,&l_583[1],&l_583[3],(void*)0,&l_583[0]}}};
        uint8_t l_585 = 255UL;
        int16_t *l_586 = &p_1058->g_85;
        int i, j, k;
        --l_503[0];
        if ((atomic_inc(&p_1058->g_atomic_input[99 * get_linear_group_id() + 69]) == 3))
        { /* block id: 324 */
            int32_t l_506 = 1L;
            uint32_t l_545[5] = {0x83977CD6L,0x83977CD6L,0x83977CD6L,0x83977CD6L,0x83977CD6L};
            int i;
            for (l_506 = 0; (l_506 >= 0); l_506 -= 1)
            { /* block id: 327 */
                int8_t l_507 = 4L;
                uint32_t l_508 = 0x52E7C1CEL;
                int64_t l_509[1];
                int32_t l_542 = 0x5754A440L;
                int32_t *l_541 = &l_542;
                int32_t *l_543 = &l_542;
                int32_t *l_544 = &l_542;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_509[i] = 0x4453A6D93444D775L;
                l_507 = p_1058->g_257[l_506][(l_506 + 7)];
                if ((l_509[0] |= (l_508 |= 5L)))
                { /* block id: 331 */
                    int32_t l_510 = (-9L);
                    struct S0 l_518 = {0x3E1FL};
                    struct S0 l_519 = {0x810CL};
                    uint32_t l_520 = 4294967294UL;
                    for (l_510 = 1; (l_510 >= 0); l_510 -= 1)
                    { /* block id: 334 */
                        uint32_t l_511[7] = {0x04E3F198L,0x04E3F198L,0x04E3F198L,0x04E3F198L,0x04E3F198L,0x04E3F198L,0x04E3F198L};
                        int32_t l_513 = 0x53ABB9C8L;
                        int32_t *l_512[10] = {&l_513,&l_513,&l_513,&l_513,&l_513,&l_513,&l_513,&l_513,&l_513,&l_513};
                        int32_t l_514 = 0x39D9542BL;
                        int64_t l_515 = 1L;
                        struct S0 l_516[2][6][5] = {{{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}}},{{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}},{{0x2B84L},{65528UL},{0UL},{0x2B84L},{0x4869L}}}};
                        struct S0 l_517 = {65535UL};
                        int i, j, k;
                        l_512[4] = (l_511[0] , (void*)0);
                        l_517 = ((l_515 ^= l_514) , l_516[1][3][3]);
                    }
                    l_519 = l_518;
                    if (l_520)
                    { /* block id: 340 */
                        int16_t l_521 = 0x06BFL;
                        uint64_t l_522[1][3];
                        int32_t l_523 = 0x50EA1D86L;
                        uint8_t l_524 = 1UL;
                        int32_t l_525 = 0x6BBA72BCL;
                        uint64_t l_526 = 1UL;
                        uint8_t l_527 = 0x04L;
                        uint16_t l_528 = 0UL;
                        uint32_t l_529 = 0x22F351CAL;
                        int32_t *l_530 = &l_523;
                        int64_t l_531 = (-1L);
                        int32_t *l_532[1][6][2] = {{{&l_523,&l_523},{&l_523,&l_523},{&l_523,&l_523},{&l_523,&l_523},{&l_523,&l_523},{&l_523,&l_523}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_522[i][j] = 0xE31AD03B4629F6EBL;
                        }
                        l_510 &= ((l_523 |= (l_522[0][1] &= l_521)) , l_524);
                        l_525 = (-1L);
                        p_1058->g_370[l_506] = (((l_527 = l_526) , (l_529 = l_528)) , l_530);
                        p_1058->g_370[l_506] = (l_531 , l_532[0][0][0]);
                    }
                    else
                    { /* block id: 349 */
                        uint16_t l_533[10][3] = {{0xDAB2L,0x6B97L,0xDAB2L},{0xDAB2L,0x6B97L,0xDAB2L},{0xDAB2L,0x6B97L,0xDAB2L},{0xDAB2L,0x6B97L,0xDAB2L},{0xDAB2L,0x6B97L,0xDAB2L},{0xDAB2L,0x6B97L,0xDAB2L},{0xDAB2L,0x6B97L,0xDAB2L},{0xDAB2L,0x6B97L,0xDAB2L},{0xDAB2L,0x6B97L,0xDAB2L},{0xDAB2L,0x6B97L,0xDAB2L}};
                        int i, j;
                        l_510 = l_533[8][1];
                    }
                }
                else
                { /* block id: 352 */
                    int32_t l_534 = 3L;
                    l_534 = 0L;
                    for (l_534 = 24; (l_534 >= (-10)); l_534--)
                    { /* block id: 356 */
                        int64_t l_537 = 0x3EEC09278D82571EL;
                        uint32_t l_538[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_538[i] = 0x5D16A322L;
                        l_538[0]++;
                    }
                }
                l_544 = (l_543 = l_541);
            }
            if (l_545[0])
            { /* block id: 363 */
                int32_t l_546 = 0x6652B564L;
                int8_t l_547 = 1L;
                int64_t l_548 = 0x7D35780D8E23CCB2L;
                int32_t l_565 = 0x1CBC9DA2L;
                uint8_t l_566 = 0x17L;
                uint8_t l_567 = 0x21L;
                struct S0 l_569[5][6] = {{{65535UL},{0xF042L},{65535UL},{65535UL},{0xF042L},{65535UL}},{{65535UL},{0xF042L},{65535UL},{65535UL},{0xF042L},{65535UL}},{{65535UL},{0xF042L},{65535UL},{65535UL},{0xF042L},{65535UL}},{{65535UL},{0xF042L},{65535UL},{65535UL},{0xF042L},{65535UL}},{{65535UL},{0xF042L},{65535UL},{65535UL},{0xF042L},{65535UL}}};
                struct S0 *l_568 = &l_569[4][3];
                struct S0 *l_570[9] = {&l_569[4][3],&l_569[4][3],&l_569[4][3],&l_569[4][3],&l_569[4][3],&l_569[4][3],&l_569[4][3],&l_569[4][3],&l_569[4][3]};
                int i, j;
                l_548 ^= ((l_547 |= l_546) , (l_506 &= 0x5C234D1EL));
                for (l_547 = 17; (l_547 != 1); l_547 = safe_sub_func_uint64_t_u_u(l_547, 9))
                { /* block id: 369 */
                    int32_t l_551 = 1L;
                    for (l_551 = 1; (l_551 <= 5); l_551 += 1)
                    { /* block id: 372 */
                        int32_t l_553 = 0x1DEB6DD3L;
                        int32_t *l_552 = &l_553;
                        int32_t *l_554[3];
                        int32_t l_555[6] = {0x059FB749L,0x059FB749L,0x059FB749L,0x059FB749L,0x059FB749L,0x059FB749L};
                        int32_t l_556 = (-1L);
                        int64_t l_557[5];
                        int8_t l_558 = 0x7CL;
                        int64_t l_559[9][5] = {{0x520D883374FBBF28L,0x520D883374FBBF28L,0x0DACD21FAC75EFC5L,0x76A8B75AF4E75696L,0x11CB46CBE53F5E36L},{0x520D883374FBBF28L,0x520D883374FBBF28L,0x0DACD21FAC75EFC5L,0x76A8B75AF4E75696L,0x11CB46CBE53F5E36L},{0x520D883374FBBF28L,0x520D883374FBBF28L,0x0DACD21FAC75EFC5L,0x76A8B75AF4E75696L,0x11CB46CBE53F5E36L},{0x520D883374FBBF28L,0x520D883374FBBF28L,0x0DACD21FAC75EFC5L,0x76A8B75AF4E75696L,0x11CB46CBE53F5E36L},{0x520D883374FBBF28L,0x520D883374FBBF28L,0x0DACD21FAC75EFC5L,0x76A8B75AF4E75696L,0x11CB46CBE53F5E36L},{0x520D883374FBBF28L,0x520D883374FBBF28L,0x0DACD21FAC75EFC5L,0x76A8B75AF4E75696L,0x11CB46CBE53F5E36L},{0x520D883374FBBF28L,0x520D883374FBBF28L,0x0DACD21FAC75EFC5L,0x76A8B75AF4E75696L,0x11CB46CBE53F5E36L},{0x520D883374FBBF28L,0x520D883374FBBF28L,0x0DACD21FAC75EFC5L,0x76A8B75AF4E75696L,0x11CB46CBE53F5E36L},{0x520D883374FBBF28L,0x520D883374FBBF28L,0x0DACD21FAC75EFC5L,0x76A8B75AF4E75696L,0x11CB46CBE53F5E36L}};
                        int16_t l_560 = 5L;
                        uint32_t l_561 = 4294967291UL;
                        int32_t l_564 = (-1L);
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_554[i] = &l_553;
                        for (i = 0; i < 5; i++)
                            l_557[i] = 0x76862EC4D8D8920BL;
                        l_506 ^= 8L;
                        l_554[2] = l_552;
                        l_506 = ((l_564 = (l_561++)) , p_1058->g_257[p_1058->g_83][(l_551 + 2)]);
                    }
                }
                l_567 &= (l_566 = (l_506 &= l_565));
                l_570[4] = (l_568 = (void*)0);
            }
            else
            { /* block id: 385 */
                int32_t l_572 = 6L;
                int32_t *l_571 = &l_572;
                l_571 = (void*)0;
            }
            unsigned int result = 0;
            result += l_506;
            int l_545_i0;
            for (l_545_i0 = 0; l_545_i0 < 5; l_545_i0++) {
                result += l_545[l_545_i0];
            }
            atomic_add(&p_1058->g_special_values[99 * get_linear_group_id() + 69], result);
        }
        else
        { /* block id: 388 */
            (1 + 1);
        }
        for (l_64 = 1; (l_64 >= 0); l_64 -= 1)
        { /* block id: 393 */
            int32_t **l_573 = &l_499[1][1][2];
            int i;
            (*l_573) = (void*)0;
            return p_1058->g_97[l_64];
        }
        (*p_1058->g_344) ^= ((safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1058->local_0_offset, get_local_id(0), 10) & (safe_lshift_func_int16_t_s_s((((p_1058->g_292.f0 , &p_1058->g_243) != ((safe_lshift_func_uint8_t_u_u(((*p_1058->g_245) = (0x0B10890B29E48AACL && GROUP_DIVERGE(0, 1))), 5)) , &p_1058->g_243)) || p_43), ((*l_586) &= (safe_add_func_int8_t_s_s(p_42, ((safe_unary_minus_func_int8_t_s(((l_583[0] = l_583[0]) != (p_43 , &p_1058->g_165)))) | l_585))))))), 0L)) , p_43);
    }
    l_592++;
    if ((safe_rshift_func_uint8_t_u_s(((l_601 = (void*)0) == l_602), 7)))
    { /* block id: 404 */
        struct S0 l_603 = {65527UL};
        int32_t l_604 = 0L;
        (*l_498) = func_49(func_49(func_49(l_603, ((*l_61) = p_43), &l_64, p_1058), p_44, &l_501[1], p_1058), ((p_43 != l_604) <= p_1058->g_165), &l_591[2], p_1058);
        return l_603.f0;
    }
    else
    { /* block id: 408 */
        int8_t l_622 = 6L;
        struct S0 l_624 = {65535UL};
        int16_t **l_641[9][1] = {{&p_1058->g_229[3]},{&p_1058->g_229[3]},{&p_1058->g_229[3]},{&p_1058->g_229[3]},{&p_1058->g_229[3]},{&p_1058->g_229[3]},{&p_1058->g_229[3]},{&p_1058->g_229[3]},{&p_1058->g_229[3]}};
        uint32_t *l_645[2];
        int32_t l_665 = 0x0582208AL;
        int64_t *l_695 = &p_1058->g_323;
        int32_t l_699 = (-1L);
        int i, j;
        for (i = 0; i < 2; i++)
            l_645[i] = &p_1058->g_63;
        for (p_1058->g_218 = 0; (p_1058->g_218 <= 4); p_1058->g_218 += 1)
        { /* block id: 411 */
            int32_t l_611 = (-1L);
            uint64_t *l_612 = &p_1058->g_282[4][5];
            uint64_t *l_613 = &p_1058->g_219;
            uint64_t l_623 = 0xCD2759FCDFB5200BL;
            (*l_588) ^= (((**l_70) ^= (0x0FC4BF825F1D6685L ^ ((safe_sub_func_uint16_t_u_u(65535UL, (safe_div_func_int32_t_s_s((safe_div_func_int64_t_s_s((((l_611 , p_43) == (-7L)) & (((*l_613) ^= (p_1058->g_86 &= ((*l_612) = (p_42 , l_611)))) ^ FAKE_DIVERGE(p_1058->local_0_offset, get_local_id(0), 10))), (safe_rshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s(((GROUP_DIVERGE(0, 1) <= (safe_div_func_uint32_t_u_u((0x5348D72D8F0A214AL == ((safe_mod_func_int32_t_s_s(0x1E75443EL, l_622)) ^ l_623)), 4294967295UL))) > 0x121FA8FCL), l_622)), 1)))), l_623)))) < 0L))) ^ p_42);
            (*l_498) = l_624;
        }
        for (p_44 = 0; (p_44 <= 1); p_44 += 1)
        { /* block id: 421 */
            uint32_t *l_646 = &p_1058->g_63;
            int32_t l_692 = 0x5E6419A6L;
            int32_t l_698 = (-2L);
            int i;
            l_501[p_44] = ((p_43 = 0x45L) ^ p_1058->g_328);
            if (l_501[p_44])
                continue;
            if ((*l_588))
            { /* block id: 425 */
                int32_t l_625 = 0x3F861017L;
                if (l_625)
                    break;
            }
            else
            { /* block id: 427 */
                uint16_t l_630 = 1UL;
                uint32_t *l_647 = (void*)0;
                for (l_592 = 0; (l_592 <= 0); l_592 += 1)
                { /* block id: 430 */
                    int i, j;
                    return p_1058->g_257[l_592][(p_44 + 7)];
                }
                (*l_587) ^= (safe_rshift_func_int8_t_s_u((((*p_1058->g_128) != ((*l_70) = (*l_71))) < (l_630 >= (safe_mod_func_int8_t_s_s((safe_mod_func_int32_t_s_s((((safe_div_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((l_642 = (l_641[6][0] == (void*)0)), 0xE369L)), (((0x7715L || (safe_lshift_func_int16_t_s_u(0x2C2DL, 11))) >= (l_645[0] != (*p_1058->g_128))) & FAKE_DIVERGE(p_1058->group_1_offset, get_group_id(1), 10)))), l_630)) & 0x6BL) < 0xAB76C8654775D194L), p_43)), 1L)))), p_44));
                (*l_587) |= (l_646 != (l_647 = (*p_1058->g_128)));
            }
            for (p_43 = 0; (p_43 >= 0); p_43 -= 1)
            { /* block id: 441 */
                uint32_t l_660[4][4] = {{4294967295UL,0x9F509BFBL,0x7E6D164EL,0x9F509BFBL},{4294967295UL,0x9F509BFBL,0x7E6D164EL,0x9F509BFBL},{4294967295UL,0x9F509BFBL,0x7E6D164EL,0x9F509BFBL},{4294967295UL,0x9F509BFBL,0x7E6D164EL,0x9F509BFBL}};
                int i, j;
                for (l_64 = 0; (l_64 <= 1); l_64 += 1)
                { /* block id: 444 */
                    uint32_t l_648[9] = {0x54A1E27DL,0x54A1E27DL,0x54A1E27DL,0x54A1E27DL,0x54A1E27DL,0x54A1E27DL,0x54A1E27DL,0x54A1E27DL,0x54A1E27DL};
                    int32_t l_651 = 0x43920F32L;
                    int32_t l_652 = (-1L);
                    int32_t l_653 = 0x3AC38EF1L;
                    int i;
                    for (p_45 = 0; (p_45 <= 1); p_45 += 1)
                    { /* block id: 447 */
                        --l_648[6];
                    }
                    for (p_1058->g_63 = 0; (p_1058->g_63 <= 0); p_1058->g_63 += 1)
                    { /* block id: 452 */
                        uint64_t l_654 = 9UL;
                        --l_654;
                    }
                }
                if ((safe_add_func_int64_t_s_s((-1L), (p_1058->g_323 = (-1L)))))
                { /* block id: 457 */
                    int i, j;
                    if (p_1058->g_257[p_43][(p_44 + 1)])
                        break;
                }
                else
                { /* block id: 459 */
                    int i, j;
                    l_501[p_44] |= p_1058->g_257[p_43][(p_44 + 7)];
                }
                for (p_45 = 0; (p_45 <= 0); p_45 += 1)
                { /* block id: 464 */
                    int8_t *l_688 = &p_1058->g_164[0];
                    int32_t l_689 = 0x594FE75FL;
                    int32_t *l_693 = &p_1058->g_694;
                    int64_t *l_696 = &p_1058->g_323;
                    int8_t *l_697[10][10] = {{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622},{&l_622,&l_622,&l_622,(void*)0,&l_622,&l_622,&l_622,&l_622,&l_622,&l_622}};
                    int i, j;
                    for (l_622 = 0; (l_622 <= 0); l_622 += 1)
                    { /* block id: 467 */
                        int32_t * volatile *l_659 = &l_589[2];
                        l_659 = &p_1058->g_369[1][5][0];
                        l_660[1][1]++;
                    }
                    l_699 |= (safe_rshift_func_uint16_t_u_u((p_1058->g_292.f0 | (+((l_665 ^= GROUP_DIVERGE(2, 1)) ^ (safe_div_func_int32_t_s_s(((l_698 &= (((safe_mul_func_uint16_t_u_u((((((((*l_693) = (safe_mul_func_int16_t_s_s(0x1AA3L, (safe_lshift_func_int16_t_s_s(((**l_602) = ((safe_add_func_uint64_t_u_u(((((safe_lshift_func_int8_t_s_u((l_689 = (l_660[1][1] != ((safe_sub_func_int8_t_s_s(((*l_588) = (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), (safe_div_func_int16_t_s_s((((((((((p_42 , (*p_1058->g_128)) != ((!l_624.f0) , (void*)0)) && ((((*l_688) = (safe_mod_func_int16_t_s_s(0x6BE9L, (safe_div_func_int32_t_s_s(p_44, FAKE_DIVERGE(p_1058->group_0_offset, get_group_id(0), 10)))))) <= 255UL) , (-1L))) || p_1058->g_257[0][0]) < p_44) <= (-4L)) & p_43) < p_44) , l_622), p_45))))), 250UL)) == p_1058->g_257[0][7]))), 0)) , &l_583[0]) == p_1058->g_690[7][3]) , FAKE_DIVERGE(p_1058->global_0_offset, get_global_id(0), 10)), l_660[3][2])) < 0x6B2CL)), l_692))))) , p_1058->g_85) | 0x244CL) , l_695) != l_696) > p_42), 1UL)) & 0x3CED3D8D8B709BA9L) | p_44)) && 0x10L), l_622))))), p_1058->g_3[0][0]));
                }
            }
        }
    }
    return p_1058->g_83;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_295
 * writes:
 */
struct S0  func_49(struct S0  p_50, uint32_t  p_51, int32_t * p_52, struct S1 * p_1058)
{ /* block id: 202 */
    int32_t *l_488 = &p_1058->g_328;
    int32_t *l_489 = &p_1058->g_328;
    int32_t *l_490 = &p_1058->g_328;
    int32_t *l_491 = &p_1058->g_83;
    int32_t l_492 = 0x3C8FA5B6L;
    int32_t *l_493[2][7][1] = {{{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4}},{{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4},{&p_1058->g_4}}};
    uint32_t l_494 = 0x3DD651E1L;
    int i, j, k;
    if ((atomic_inc(&p_1058->g_atomic_input[99 * get_linear_group_id() + 79]) == 3))
    { /* block id: 204 */
        int32_t l_372[8][7] = {{0x5B6DF4DFL,0x5B6DF4DFL,0x39AEACB0L,0x11FE580DL,1L,0x11FE580DL,0x39AEACB0L},{0x5B6DF4DFL,0x5B6DF4DFL,0x39AEACB0L,0x11FE580DL,1L,0x11FE580DL,0x39AEACB0L},{0x5B6DF4DFL,0x5B6DF4DFL,0x39AEACB0L,0x11FE580DL,1L,0x11FE580DL,0x39AEACB0L},{0x5B6DF4DFL,0x5B6DF4DFL,0x39AEACB0L,0x11FE580DL,1L,0x11FE580DL,0x39AEACB0L},{0x5B6DF4DFL,0x5B6DF4DFL,0x39AEACB0L,0x11FE580DL,1L,0x11FE580DL,0x39AEACB0L},{0x5B6DF4DFL,0x5B6DF4DFL,0x39AEACB0L,0x11FE580DL,1L,0x11FE580DL,0x39AEACB0L},{0x5B6DF4DFL,0x5B6DF4DFL,0x39AEACB0L,0x11FE580DL,1L,0x11FE580DL,0x39AEACB0L},{0x5B6DF4DFL,0x5B6DF4DFL,0x39AEACB0L,0x11FE580DL,1L,0x11FE580DL,0x39AEACB0L}};
        int64_t l_411 = 0x7278040863DF6AF8L;
        int16_t l_412 = 0x1A6AL;
        int8_t l_413[4][9][7] = {{{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L}},{{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L}},{{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L}},{{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L},{0x1BL,(-1L),0x10L,0x1BL,0x41L,0x21L,0x21L}}};
        int32_t *l_486 = (void*)0;
        int32_t *l_487[8][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int i, j, k;
        for (l_372[2][4] = (-16); (l_372[2][4] < 0); l_372[2][4] = safe_add_func_uint8_t_u_u(l_372[2][4], 1))
        { /* block id: 207 */
            int32_t l_375 = 1L;
            int32_t l_410 = 0L;
            for (l_375 = 0; (l_375 <= (-28)); l_375--)
            { /* block id: 210 */
                uint32_t l_378 = 0xF3DF8534L;
                if (l_378)
                { /* block id: 211 */
                    int16_t l_379 = 0x6E6DL;
                    uint32_t l_380 = 0x7334E1DDL;
                    int32_t l_382 = 0L;
                    int32_t *l_381 = &l_382;
                    l_381 = (l_379 , (l_380 , (void*)0));
                    for (l_380 = 17; (l_380 > 57); l_380 = safe_add_func_uint32_t_u_u(l_380, 5))
                    { /* block id: 215 */
                        int32_t l_385 = 0x068C0A9DL;
                        uint32_t l_386 = 4294967287UL;
                        l_386++;
                    }
                }
                else
                { /* block id: 218 */
                    int8_t l_389 = 0x3CL;
                    int32_t l_390 = 0x28A62245L;
                    uint64_t l_391 = 0x55F2326032137EBBL;
                    struct S0 l_392 = {65528UL};
                    struct S0 l_393 = {0x15C4L};
                    int32_t *l_394 = &l_390;
                    int32_t *l_395 = (void*)0;
                    int32_t *l_407 = &l_390;
                    int32_t *l_408 = &l_390;
                    int32_t *l_409 = (void*)0;
                    l_393 = ((l_390 = l_389) , ((l_391 , 1UL) , l_392));
                    l_395 = l_394;
                    for (l_390 = 10; (l_390 == (-28)); l_390 = safe_sub_func_uint8_t_u_u(l_390, 4))
                    { /* block id: 224 */
                        int64_t l_398 = 0x48B77A7664853EBDL;
                        uint16_t l_399 = 4UL;
                        uint16_t l_402 = 0x1BC5L;
                        uint64_t l_403 = 4UL;
                        uint32_t l_404[1];
                        int8_t l_405 = 0x16L;
                        int32_t l_406[5][3][3] = {{{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L}},{{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L}},{{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L}},{{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L}},{{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L},{0x4D03BD8BL,0x78884F4CL,9L}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_404[i] = 0UL;
                        ++l_399;
                        l_406[0][1][2] |= ((l_403 = l_402) , (l_404[0] , l_405));
                    }
                    l_409 = (FAKE_DIVERGE(p_1058->group_1_offset, get_group_id(1), 10) , (l_408 = (l_407 = (void*)0)));
                }
            }
            l_375 |= l_410;
        }
        if ((l_413[1][2][0] = (l_411 , (l_412 |= 3L))))
        { /* block id: 238 */
            int32_t l_414 = 0x391CC9CBL;
            for (l_414 = (-4); (l_414 < (-3)); ++l_414)
            { /* block id: 241 */
                uint16_t l_419 = 1UL;
                uint16_t *l_418[2];
                uint16_t **l_417 = &l_418[0];
                uint16_t **l_420 = (void*)0;
                uint16_t **l_421 = &l_418[0];
                uint8_t l_428 = 0xCBL;
                uint32_t l_429 = 1UL;
                uint8_t l_430 = 0UL;
                int32_t l_432[3];
                int32_t *l_431[10][3] = {{&l_432[0],&l_432[1],&l_432[0]},{&l_432[0],&l_432[1],&l_432[0]},{&l_432[0],&l_432[1],&l_432[0]},{&l_432[0],&l_432[1],&l_432[0]},{&l_432[0],&l_432[1],&l_432[0]},{&l_432[0],&l_432[1],&l_432[0]},{&l_432[0],&l_432[1],&l_432[0]},{&l_432[0],&l_432[1],&l_432[0]},{&l_432[0],&l_432[1],&l_432[0]},{&l_432[0],&l_432[1],&l_432[0]}};
                int i, j;
                for (i = 0; i < 2; i++)
                    l_418[i] = &l_419;
                for (i = 0; i < 3; i++)
                    l_432[i] = 0x24928264L;
                l_421 = (l_420 = l_417);
                for (l_419 = 20; (l_419 != 23); l_419 = safe_add_func_uint64_t_u_u(l_419, 2))
                { /* block id: 246 */
                    int8_t l_424 = 0x36L;
                    uint8_t l_425 = 255UL;
                    l_425++;
                }
                l_431[6][0] = ((l_430 = (l_429 |= l_428)) , (void*)0);
            }
            for (l_414 = (-13); (l_414 != (-10)); ++l_414)
            { /* block id: 255 */
                int8_t l_435[5] = {0x7EL,0x7EL,0x7EL,0x7EL,0x7EL};
                int32_t l_437 = (-1L);
                int32_t *l_436[2][10][8] = {{{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437}},{{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437},{&l_437,(void*)0,(void*)0,&l_437,&l_437,&l_437,&l_437,&l_437}}};
                int32_t *l_438 = (void*)0;
                int i, j, k;
                l_438 = ((l_411 = l_435[4]) , l_436[0][8][0]);
                for (l_435[4] = 5; (l_435[4] >= 0); l_435[4] -= 1)
                { /* block id: 260 */
                    int16_t l_439[10] = {0x594FL,0x594FL,0x594FL,0x594FL,0x594FL,0x594FL,0x594FL,0x594FL,0x594FL,0x594FL};
                    int i;
                    l_439[6] = 0x4A36648CL;
                    for (l_439[0] = 5; (l_439[0] >= 0); l_439[0] -= 1)
                    { /* block id: 264 */
                        uint16_t l_440 = 5UL;
                        uint32_t l_441 = 0xC231B38EL;
                        uint16_t l_442 = 1UL;
                        uint8_t l_443 = 0x76L;
                        uint64_t l_444 = 18446744073709551612UL;
                        int32_t l_446 = 0L;
                        int32_t *l_445 = &l_446;
                        int32_t *l_447 = &l_446;
                        l_440 = 1L;
                        l_442 = l_441;
                        l_444 |= l_443;
                        l_447 = (l_438 = (l_436[0][8][0] = l_445));
                    }
                    for (l_439[3] = 0; (l_439[3] <= 5); l_439[3] += 1)
                    { /* block id: 274 */
                        int64_t l_448 = 0L;
                        uint64_t l_449[3][1];
                        int32_t l_450 = 0x5CF934ABL;
                        int16_t l_451 = 0L;
                        int32_t l_452 = 0L;
                        uint64_t l_453 = 18446744073709551615UL;
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_449[i][j] = 0x8BFF18C845F36645L;
                        }
                        l_450 = (l_449[0][0] |= l_448);
                        l_453++;
                    }
                    for (l_439[8] = 5; (l_439[8] >= 0); l_439[8] -= 1)
                    { /* block id: 281 */
                        uint16_t l_456 = 4UL;
                        uint32_t l_457 = 0UL;
                        int64_t l_458 = 2L;
                        uint8_t l_459 = 0UL;
                        int8_t l_460 = 0x42L;
                        int64_t l_461 = 5L;
                        int32_t l_462 = 0x4590E7ABL;
                        int8_t l_463 = (-4L);
                        int8_t l_464 = 0x7BL;
                        int8_t l_465 = 0x40L;
                        uint16_t l_466 = 0UL;
                        uint16_t l_469 = 1UL;
                        int32_t l_470 = 0x1A3E9E91L;
                        uint32_t l_471 = 0xE6A3BF0CL;
                        uint8_t l_472[5] = {1UL,1UL,1UL,1UL,1UL};
                        int i;
                        l_459 = (((l_456 = 0x678E5789L) , l_457) , (l_458 &= 0x180AF87DL));
                        l_461 |= l_460;
                        --l_466;
                        l_472[4] = (l_469 , (l_471 ^= l_470));
                    }
                }
                l_372[5][6] &= 1L;
                for (l_435[0] = 26; (l_435[0] == 10); l_435[0] = safe_sub_func_int16_t_s_s(l_435[0], 6))
                { /* block id: 294 */
                    int32_t l_476 = 0x3A5D9CD9L;
                    int32_t *l_475[7][9] = {{&l_476,&l_476,&l_476,&l_476,(void*)0,(void*)0,&l_476,&l_476,&l_476},{&l_476,&l_476,&l_476,&l_476,(void*)0,(void*)0,&l_476,&l_476,&l_476},{&l_476,&l_476,&l_476,&l_476,(void*)0,(void*)0,&l_476,&l_476,&l_476},{&l_476,&l_476,&l_476,&l_476,(void*)0,(void*)0,&l_476,&l_476,&l_476},{&l_476,&l_476,&l_476,&l_476,(void*)0,(void*)0,&l_476,&l_476,&l_476},{&l_476,&l_476,&l_476,&l_476,(void*)0,(void*)0,&l_476,&l_476,&l_476},{&l_476,&l_476,&l_476,&l_476,(void*)0,(void*)0,&l_476,&l_476,&l_476}};
                    int i, j;
                    l_436[1][7][4] = (void*)0;
                    l_436[0][8][0] = (l_475[0][7] = ((l_411 &= 0x4E29CCF33A95A35DL) , l_475[6][2]));
                }
            }
        }
        else
        { /* block id: 301 */
            uint8_t l_477 = 0x8EL;
            uint64_t l_478 = 0xC6C433ED1D1D9E5EL;
            struct S0 l_479[5] = {{0xD7AFL},{0xD7AFL},{0xD7AFL},{0xD7AFL},{0xD7AFL}};
            struct S0 l_480 = {0xED1CL};
            struct S0 l_481 = {0xFDA6L};
            struct S0 l_482 = {1UL};
            int i;
            l_372[5][6] = l_477;
            l_482 = (l_478 , (l_481 = (l_480 = l_479[2])));
            for (l_478 = (-9); (l_478 != 6); l_478 = safe_add_func_uint64_t_u_u(l_478, 8))
            { /* block id: 308 */
                uint16_t l_485 = 65534UL;
                l_372[5][2] = l_485;
            }
        }
        l_487[2][1] = l_486;
        unsigned int result = 0;
        int l_372_i0, l_372_i1;
        for (l_372_i0 = 0; l_372_i0 < 8; l_372_i0++) {
            for (l_372_i1 = 0; l_372_i1 < 7; l_372_i1++) {
                result += l_372[l_372_i0][l_372_i1];
            }
        }
        result += l_411;
        result += l_412;
        int l_413_i0, l_413_i1, l_413_i2;
        for (l_413_i0 = 0; l_413_i0 < 4; l_413_i0++) {
            for (l_413_i1 = 0; l_413_i1 < 9; l_413_i1++) {
                for (l_413_i2 = 0; l_413_i2 < 7; l_413_i2++) {
                    result += l_413[l_413_i0][l_413_i1][l_413_i2];
                }
            }
        }
        atomic_add(&p_1058->g_special_values[99 * get_linear_group_id() + 79], result);
    }
    else
    { /* block id: 313 */
        (1 + 1);
    }
    --l_494;
    return p_1058->g_295;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_282 p_1058->g_81.f0 p_1058->g_86 p_1058->g_5
 * writes: p_1058->g_282 p_1058->g_219 p_1058->g_86 p_1058->g_295
 */
struct S0  func_53(uint8_t * p_54, int16_t  p_55, struct S1 * p_1058)
{ /* block id: 192 */
    struct S0 l_346[6][3][2] = {{{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}}},{{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}}},{{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}}},{{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}}},{{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}}},{{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}},{{0x1B1CL},{0xA7DBL}}}};
    uint64_t *l_349[2][10] = {{&p_1058->g_282[2][2],&p_1058->g_86,&p_1058->g_282[2][2],&p_1058->g_282[2][2],&p_1058->g_86,&p_1058->g_282[2][2],&p_1058->g_282[2][2],&p_1058->g_86,&p_1058->g_282[2][2],&p_1058->g_282[2][2]},{&p_1058->g_282[2][2],&p_1058->g_86,&p_1058->g_282[2][2],&p_1058->g_282[2][2],&p_1058->g_86,&p_1058->g_282[2][2],&p_1058->g_282[2][2],&p_1058->g_86,&p_1058->g_282[2][2],&p_1058->g_282[2][2]}};
    int32_t l_350[1];
    int32_t l_367 = 3L;
    int32_t l_368 = (-4L);
    int32_t l_371 = 1L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_350[i] = 0x66DB7AEBL;
    l_371 = (l_346[1][0][0] , (l_368 = (l_367 ^= (safe_rshift_func_uint16_t_u_u(((++p_1058->g_282[0][3]) ^ ((((0L > ((4294967295UL | (safe_add_func_uint32_t_u_u((((((safe_mod_func_uint8_t_u_u(((-1L) || (safe_lshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_s((18446744073709551615UL == ((safe_rshift_func_int16_t_s_u((p_1058->g_81.f0 >= l_346[1][0][0].f0), 5)) <= (p_1058->g_86 ^= (safe_lshift_func_int16_t_s_s(((0x19A4992157995CF1L ^ (((l_350[0] = (p_1058->g_219 = (((safe_add_func_int64_t_s_s(p_55, l_346[1][0][0].f0)) <= 0UL) || 2L))) | p_55) , p_55)) || l_346[1][0][0].f0), p_55))))), l_346[1][0][0].f0)), FAKE_DIVERGE(p_1058->local_1_offset, get_local_id(1), 10)))), FAKE_DIVERGE(p_1058->group_1_offset, get_group_id(1), 10))) == l_346[1][0][0].f0) , p_55) & l_346[1][0][0].f0) && 0x06L), p_55))) != 0xAE93L)) | l_346[1][0][0].f0) != 0x5F2890A5CC0DA838L) <= p_1058->g_5)), 5)))));
    p_1058->g_295 = l_346[1][0][0];
    return l_346[1][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_57 p_1058->g_223 p_1058->g_86 p_1058->g_4 p_1058->g_218 p_1058->g_85 p_1058->g_81.f0 p_1058->g_219 p_1058->g_83 p_1058->g_128 p_1058->g_129 p_1058->g_257 p_1058->g_164 p_1058->g_63 p_1058->g_81 p_1058->g_97 p_1058->g_3 p_1058->g_329 p_1058->g_243 p_1058->g_332 p_1058->g_344
 * writes: p_1058->g_83 p_1058->g_243 p_1058->g_85 p_1058->g_223 p_1058->g_81.f0 p_1058->g_219 p_1058->g_257 p_1058->g_63 p_1058->g_86 p_1058->g_292 p_1058->g_295 p_1058->g_218 p_1058->g_323 p_1058->g_328
 */
int16_t  func_65(uint32_t * p_66, uint8_t * p_67, int32_t  p_68, uint8_t  p_69, struct S1 * p_1058)
{ /* block id: 107 */
    uint8_t *l_241 = &p_1058->g_57;
    uint8_t **l_240 = &l_241;
    uint8_t ***l_239 = &l_240;
    uint8_t ****l_242[7][2][5] = {{{&l_239,&l_239,&l_239,&l_239,&l_239},{&l_239,&l_239,&l_239,&l_239,&l_239}},{{&l_239,&l_239,&l_239,&l_239,&l_239},{&l_239,&l_239,&l_239,&l_239,&l_239}},{{&l_239,&l_239,&l_239,&l_239,&l_239},{&l_239,&l_239,&l_239,&l_239,&l_239}},{{&l_239,&l_239,&l_239,&l_239,&l_239},{&l_239,&l_239,&l_239,&l_239,&l_239}},{{&l_239,&l_239,&l_239,&l_239,&l_239},{&l_239,&l_239,&l_239,&l_239,&l_239}},{{&l_239,&l_239,&l_239,&l_239,&l_239},{&l_239,&l_239,&l_239,&l_239,&l_239}},{{&l_239,&l_239,&l_239,&l_239,&l_239},{&l_239,&l_239,&l_239,&l_239,&l_239}}};
    int32_t l_250 = (-1L);
    int8_t *l_251 = &p_1058->g_164[3];
    int16_t **l_271 = &p_1058->g_229[1];
    int32_t l_277 = (-1L);
    int32_t **l_321 = &p_1058->g_223;
    int64_t l_325 = 0x6401372DB749B4CDL;
    uint8_t l_326 = 0x54L;
    struct S0 *l_331 = &p_1058->g_292;
    struct S0 **l_330 = &l_331;
    int i, j, k;
    if ((safe_mod_func_uint16_t_u_u((((((safe_add_func_uint64_t_u_u(p_68, (((*p_1058->g_223) = (!((p_69 |= (*p_67)) == 0UL))) <= (((safe_mod_func_uint32_t_u_u((((p_1058->g_243 = l_239) == &p_1058->g_196) , 2UL), (safe_mul_func_uint16_t_u_u(p_1058->g_86, (safe_rshift_func_int8_t_s_u(((5UL && (l_250 & p_1058->g_4)) == GROUP_DIVERGE(1, 1)), 7)))))) , l_251) != l_241)))) | 0x78910EDCCFC09306L) , (-1L)) > l_250) | 0xA0L), p_1058->g_218)))
    { /* block id: 111 */
        int16_t *l_264 = (void*)0;
        int32_t l_276 = 0x16371041L;
        int32_t *l_296[8][4] = {{&p_1058->g_3[2][0],&p_1058->g_83,&p_1058->g_83,&p_1058->g_3[2][0]},{&p_1058->g_3[2][0],&p_1058->g_83,&p_1058->g_83,&p_1058->g_3[2][0]},{&p_1058->g_3[2][0],&p_1058->g_83,&p_1058->g_83,&p_1058->g_3[2][0]},{&p_1058->g_3[2][0],&p_1058->g_83,&p_1058->g_83,&p_1058->g_3[2][0]},{&p_1058->g_3[2][0],&p_1058->g_83,&p_1058->g_83,&p_1058->g_3[2][0]},{&p_1058->g_3[2][0],&p_1058->g_83,&p_1058->g_83,&p_1058->g_3[2][0]},{&p_1058->g_3[2][0],&p_1058->g_83,&p_1058->g_83,&p_1058->g_3[2][0]},{&p_1058->g_3[2][0],&p_1058->g_83,&p_1058->g_83,&p_1058->g_3[2][0]}};
        uint64_t l_297[4][8][1];
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 8; j++)
            {
                for (k = 0; k < 1; k++)
                    l_297[i][j][k] = 3UL;
            }
        }
        for (p_1058->g_85 = 0; (p_1058->g_85 <= 1); p_1058->g_85 += 1)
        { /* block id: 114 */
            int32_t **l_252 = &p_1058->g_223;
            int i;
            (*l_252) = p_66;
            for (p_1058->g_81.f0 = 0; (p_1058->g_81.f0 <= 5); p_1058->g_81.f0 += 1)
            { /* block id: 118 */
                int16_t l_274 = 1L;
                uint32_t l_275 = 0x0B34B949L;
                (*l_252) = &l_250;
                for (p_1058->g_219 = 0; (p_1058->g_219 <= 1); p_1058->g_219 += 1)
                { /* block id: 122 */
                    int i, j, k;
                    if (p_68)
                        break;
                    for (p_68 = 0; (p_68 <= 5); p_68 += 1)
                    { /* block id: 126 */
                        (*p_1058->g_223) &= ((p_68 <= (safe_rshift_func_int8_t_s_s(p_1058->g_83, ((GROUP_DIVERGE(2, 1) < GROUP_DIVERGE(0, 1)) == p_68)))) | ((((*p_1058->g_128) == (void*)0) , (!18446744073709551608UL)) , 0x8BC31AB23EFC6D46L));
                    }
                    l_277 &= ((safe_add_func_int32_t_s_s(((p_1058->g_257[0][0] |= (FAKE_DIVERGE(p_1058->local_1_offset, get_local_id(1), 10) , (0xC8C0L || (-4L)))) | (safe_div_func_uint32_t_u_u(((-8L) || ((safe_mod_func_int32_t_s_s(((safe_mul_func_int8_t_s_s(((void*)0 == l_264), (safe_mul_func_uint8_t_u_u((safe_add_func_int64_t_s_s((safe_mod_func_int64_t_s_s(((-2L) > ((!((void*)0 == l_271)) >= ((safe_lshift_func_uint16_t_u_s((((*p_67) != l_274) > p_1058->g_4), 15)) != p_1058->g_164[2]))), l_250)), l_275)), p_1058->g_83)))) , l_276), p_68)) != 0x4EA6FC00449A5E17L)), (*p_66)))), 0x25A927A8L)) && p_1058->g_257[0][8]);
                    for (p_1058->g_63 = 0; (p_1058->g_63 <= 1); p_1058->g_63 += 1)
                    { /* block id: 133 */
                        int8_t l_278 = 0x41L;
                        uint64_t *l_279 = (void*)0;
                        uint64_t *l_280 = &p_1058->g_86;
                        uint64_t *l_281[9];
                        int32_t *l_289 = &p_1058->g_83;
                        int i;
                        for (i = 0; i < 9; i++)
                            l_281[i] = &p_1058->g_282[2][4];
                        (*l_289) |= (((*p_67) , (l_277 |= (l_250 = ((*l_280) = l_278)))) ^ ((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1058->local_1_offset, get_local_id(1), 10), (l_278 != 0x664EA76DC1EBD941L))) < (safe_add_func_int16_t_s_s((safe_add_func_uint16_t_u_u(p_1058->g_257[0][7], ((void*)0 == &p_67))), p_69))));
                        if (p_68)
                            continue;
                        if (l_274)
                            continue;
                    }
                }
                for (l_275 = 0; (l_275 <= 1); l_275 += 1)
                { /* block id: 144 */
                    struct S0 *l_291 = &p_1058->g_292;
                    struct S0 *l_293 = (void*)0;
                    struct S0 *l_294 = &p_1058->g_295;
                    for (p_1058->g_63 = 0; (p_1058->g_63 <= 5); p_1058->g_63 += 1)
                    { /* block id: 147 */
                        uint32_t l_290[2][9][8] = {{{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L}},{{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L},{0x00DD4813L,0x9BABF24EL,0x2995D316L,4UL,0x2995D316L,0x9BABF24EL,0x00DD4813L,0x1FAF7DA5L}}};
                        int i, j, k;
                        if (l_290[1][7][4])
                            break;
                    }
                    (*l_294) = ((*l_291) = p_1058->g_81);
                }
            }
        }
        (*p_1058->g_223) = 0L;
        --l_297[3][3][0];
    }
    else
    { /* block id: 157 */
        int8_t l_310 = 1L;
        uint16_t *l_317 = (void*)0;
        uint16_t *l_318 = &p_1058->g_257[0][5];
        int64_t *l_322 = &p_1058->g_323;
        uint32_t l_324[9][10] = {{4294967295UL,0x1E11F3F1L,0x01B4DF1BL,0x17C4DEB6L,0x01B4DF1BL,0x1E11F3F1L,4294967295UL,0x0AAF9E48L,0x3FC22944L,0x3FC22944L},{4294967295UL,0x1E11F3F1L,0x01B4DF1BL,0x17C4DEB6L,0x01B4DF1BL,0x1E11F3F1L,4294967295UL,0x0AAF9E48L,0x3FC22944L,0x3FC22944L},{4294967295UL,0x1E11F3F1L,0x01B4DF1BL,0x17C4DEB6L,0x01B4DF1BL,0x1E11F3F1L,4294967295UL,0x0AAF9E48L,0x3FC22944L,0x3FC22944L},{4294967295UL,0x1E11F3F1L,0x01B4DF1BL,0x17C4DEB6L,0x01B4DF1BL,0x1E11F3F1L,4294967295UL,0x0AAF9E48L,0x3FC22944L,0x3FC22944L},{4294967295UL,0x1E11F3F1L,0x01B4DF1BL,0x17C4DEB6L,0x01B4DF1BL,0x1E11F3F1L,4294967295UL,0x0AAF9E48L,0x3FC22944L,0x3FC22944L},{4294967295UL,0x1E11F3F1L,0x01B4DF1BL,0x17C4DEB6L,0x01B4DF1BL,0x1E11F3F1L,4294967295UL,0x0AAF9E48L,0x3FC22944L,0x3FC22944L},{4294967295UL,0x1E11F3F1L,0x01B4DF1BL,0x17C4DEB6L,0x01B4DF1BL,0x1E11F3F1L,4294967295UL,0x0AAF9E48L,0x3FC22944L,0x3FC22944L},{4294967295UL,0x1E11F3F1L,0x01B4DF1BL,0x17C4DEB6L,0x01B4DF1BL,0x1E11F3F1L,4294967295UL,0x0AAF9E48L,0x3FC22944L,0x3FC22944L},{4294967295UL,0x1E11F3F1L,0x01B4DF1BL,0x17C4DEB6L,0x01B4DF1BL,0x1E11F3F1L,4294967295UL,0x0AAF9E48L,0x3FC22944L,0x3FC22944L}};
        struct S0 **l_341 = &l_331;
        int i, j;
        for (p_1058->g_85 = (-1); (p_1058->g_85 > (-1)); p_1058->g_85++)
        { /* block id: 160 */
            struct S0 *l_303 = &p_1058->g_81;
            struct S0 **l_302 = &l_303;
            (*l_302) = &p_1058->g_81;
            for (p_1058->g_218 = 0; (p_1058->g_218 >= 54); p_1058->g_218 = safe_add_func_uint32_t_u_u(p_1058->g_218, 1))
            { /* block id: 164 */
                for (p_1058->g_219 = (-26); (p_1058->g_219 > 52); ++p_1058->g_219)
                { /* block id: 167 */
                    if (p_68)
                        break;
                }
            }
        }
        (*p_1058->g_329) = (safe_add_func_uint8_t_u_u(l_310, (safe_lshift_func_uint16_t_u_s((((safe_mod_func_uint32_t_u_u(((*p_66) = ((l_325 &= (((safe_sub_func_uint16_t_u_u(((((~(((*l_318) = (p_1058->g_83 >= (p_68 < (*p_1058->g_223)))) | (GROUP_DIVERGE(2, 1) != 0x38CDL))) >= (l_310 , FAKE_DIVERGE(p_1058->local_0_offset, get_local_id(0), 10))) > l_250) , (((safe_sub_func_int8_t_s_s((((**l_321) = (+(((+((+((*l_322) = (((l_310 && 0x7BCABF82L) , l_321) == (void*)0))) ^ p_1058->g_97[0])) ^ 0x651ACF54L) >= 0x5BL))) <= 1L), l_310)) || l_324[6][1]) | p_68)), l_310)) < l_324[6][1]) ^ l_324[6][1])) || 1L)), l_326)) || p_1058->g_164[1]) <= p_1058->g_3[8][4]), p_68))));
        if ((l_330 != ((((((***p_1058->g_243) , p_1058->g_332[1]) == (void*)0) != (safe_mod_func_int8_t_s_s((&p_67 == &p_67), (safe_add_func_uint16_t_u_u(((*p_67) >= (safe_sub_func_uint64_t_u_u((&p_1058->g_328 == ((*l_321) = (void*)0)), l_324[1][5]))), 0L))))) & (*p_66)) , l_341)))
        { /* block id: 179 */
            for (l_250 = 1; (l_250 < 18); ++l_250)
            { /* block id: 182 */
                int16_t l_345 = 3L;
                (*p_1058->g_344) = p_68;
                if (l_345)
                    break;
            }
        }
        else
        { /* block id: 186 */
            return p_69;
        }
        return p_69;
    }
    return p_68;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_164 p_1058->g_165 p_1058->g_83 p_1058->g_57 p_1058->g_196 p_1058->g_86 p_1058->g_3 p_1058->g_6 p_1058->g_4 p_1058->g_97 p_1058->g_227
 * writes: p_1058->g_81.f0 p_1058->g_196 p_1058->g_85 p_1058->g_218 p_1058->g_219 p_1058->g_228
 */
uint8_t * func_72(uint32_t ** p_73, int64_t  p_74, int64_t  p_75, uint32_t ** p_76, int64_t  p_77, struct S1 * p_1058)
{ /* block id: 86 */
    uint32_t l_192 = 0x40D53DA7L;
    int32_t *l_194 = &p_1058->g_83;
    int32_t *l_226 = &p_1058->g_83;
    uint8_t *l_230 = &p_1058->g_57;
    for (p_75 = 9; (p_75 < (-24)); p_75--)
    { /* block id: 89 */
        uint16_t *l_182 = &p_1058->g_81.f0;
        int32_t l_189 = 0L;
        int32_t l_193 = 0x12A14779L;
        volatile uint8_t * volatile * volatile *l_197 = &p_1058->g_196;
        int16_t *l_214[8][3] = {{&p_1058->g_85,&p_1058->g_85,&p_1058->g_85},{&p_1058->g_85,&p_1058->g_85,&p_1058->g_85},{&p_1058->g_85,&p_1058->g_85,&p_1058->g_85},{&p_1058->g_85,&p_1058->g_85,&p_1058->g_85},{&p_1058->g_85,&p_1058->g_85,&p_1058->g_85},{&p_1058->g_85,&p_1058->g_85,&p_1058->g_85},{&p_1058->g_85,&p_1058->g_85,&p_1058->g_85},{&p_1058->g_85,&p_1058->g_85,&p_1058->g_85}};
        int8_t *l_217[8] = {&p_1058->g_164[1],&p_1058->g_164[1],&p_1058->g_164[1],&p_1058->g_164[1],&p_1058->g_164[1],&p_1058->g_164[1],&p_1058->g_164[1],&p_1058->g_164[1]};
        int32_t *l_221 = (void*)0;
        int i, j;
        l_194 = ((((safe_mod_func_uint64_t_u_u(((1UL & (0x8BL || ((safe_add_func_int8_t_s_s(((((p_77 <= (((((l_193 &= (p_77 < ((safe_sub_func_int16_t_s_s((!((((((*l_182) = (p_1058->g_164[1] <= 0x4672L)) ^ ((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint16_t_u_u((((safe_rshift_func_int16_t_s_u(l_189, 4)) != p_75) , (((safe_mod_func_int16_t_s_s(p_75, 0x12BEL)) | 0x80L) > 0x7F7EL)), p_1058->g_165)), 0)) | GROUP_DIVERGE(0, 1))) ^ l_192) == p_74) | 0L)), l_192)) , l_189))) , l_193) >= 4L) & p_77) | 0xCD8053AF338B5EEBL)) , p_75) <= l_189) == 0x7A0E92DA2F8298D6L), p_1058->g_83)) < p_1058->g_57))) > l_189), l_189)) != 0xA84F11E0C926580AL) > 0x45C0E92FD1AC27F1L) , l_194);
        (*l_197) = (p_1058->g_164[1] , p_1058->g_196);
        if ((safe_lshift_func_int8_t_s_s((-2L), (safe_mod_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(0xC57BL, (safe_rshift_func_int16_t_s_s((((((p_1058->g_219 = ((p_74 & p_1058->g_86) | ((safe_add_func_int8_t_s_s(((((safe_lshift_func_uint8_t_u_u(((p_1058->g_218 = (((~(safe_add_func_int8_t_s_s((l_189 = (((-1L) >= ((((safe_add_func_int16_t_s_s(((p_1058->g_85 = 0x7B45L) , l_193), ((*l_182) = l_189))) & ((((safe_mod_func_int64_t_s_s(p_1058->g_3[1][1], p_1058->g_6)) ^ GROUP_DIVERGE(2, 1)) , 0x08C44B1F678A6898L) | 18446744073709551607UL)) , &l_189) == (void*)0)) , 0x4EL)), 0x8FL))) || 2L) , 0x7C61L)) <= p_74), 4)) || p_1058->g_4) == p_74) != p_75), p_75)) || p_1058->g_97[1]))) , (void*)0) == &p_1058->g_164[1]) , 1L) , 1L), 3)))), p_1058->g_83)))))
        { /* block id: 99 */
            int32_t *l_220[7][1][9] = {{{&p_1058->g_6,&l_193,&p_1058->g_83,&l_189,&p_1058->g_3[2][0],&l_193,&p_1058->g_3[3][0],&p_1058->g_83,&l_189}},{{&p_1058->g_6,&l_193,&p_1058->g_83,&l_189,&p_1058->g_3[2][0],&l_193,&p_1058->g_3[3][0],&p_1058->g_83,&l_189}},{{&p_1058->g_6,&l_193,&p_1058->g_83,&l_189,&p_1058->g_3[2][0],&l_193,&p_1058->g_3[3][0],&p_1058->g_83,&l_189}},{{&p_1058->g_6,&l_193,&p_1058->g_83,&l_189,&p_1058->g_3[2][0],&l_193,&p_1058->g_3[3][0],&p_1058->g_83,&l_189}},{{&p_1058->g_6,&l_193,&p_1058->g_83,&l_189,&p_1058->g_3[2][0],&l_193,&p_1058->g_3[3][0],&p_1058->g_83,&l_189}},{{&p_1058->g_6,&l_193,&p_1058->g_83,&l_189,&p_1058->g_3[2][0],&l_193,&p_1058->g_3[3][0],&p_1058->g_83,&l_189}},{{&p_1058->g_6,&l_193,&p_1058->g_83,&l_189,&p_1058->g_3[2][0],&l_193,&p_1058->g_3[3][0],&p_1058->g_83,&l_189}}};
            int i, j, k;
            l_221 = l_220[3][0][5];
        }
        else
        { /* block id: 101 */
            l_226 = l_194;
        }
        (*p_1058->g_227) = &l_214[7][2];
    }
    return l_230;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_86 p_1058->g_63 p_1058->g_57 p_1058->g_98 p_1058->g_4 p_1058->g_81.f0 p_1058->g_85 p_1058->g_83 p_1058->g_97 p_1058->g_128 p_1058->g_118 p_1058->g_3 p_1058->g_165 p_1058->g_91
 * writes: p_1058->g_86 p_1058->g_63 p_1058->g_57 p_1058->g_98 p_1058->g_81.f0 p_1058->g_85 p_1058->g_83 p_1058->g_164
 */
uint32_t ** func_78(uint8_t * p_79, struct S0  p_80, struct S1 * p_1058)
{ /* block id: 20 */
    int32_t *l_82[8][2] = {{&p_1058->g_6,&p_1058->g_83},{&p_1058->g_6,&p_1058->g_83},{&p_1058->g_6,&p_1058->g_83},{&p_1058->g_6,&p_1058->g_83},{&p_1058->g_6,&p_1058->g_83},{&p_1058->g_6,&p_1058->g_83},{&p_1058->g_6,&p_1058->g_83},{&p_1058->g_6,&p_1058->g_83}};
    uint64_t l_122 = 0x343E278FAA54225DL;
    uint32_t *l_127[7] = {&p_1058->g_63,(void*)0,&p_1058->g_63,&p_1058->g_63,(void*)0,&p_1058->g_63,&p_1058->g_63};
    uint32_t **l_126 = &l_127[4];
    int32_t **l_145 = (void*)0;
    int32_t ***l_144 = &l_145;
    int i, j;
    --p_1058->g_86;
    for (p_1058->g_63 = (-28); (p_1058->g_63 >= 56); p_1058->g_63 = safe_add_func_int64_t_s_s(p_1058->g_63, 2))
    { /* block id: 24 */
        int32_t **l_92 = &l_82[0][0];
        int32_t l_95 = 0x0730FA28L;
        int32_t l_96 = (-1L);
        int16_t l_114 = (-9L);
        (*l_92) = &p_1058->g_83;
        for (p_1058->g_57 = 0; (p_1058->g_57 <= 1); p_1058->g_57 += 1)
        { /* block id: 28 */
            int32_t l_93 = 0x6D7161A1L;
            int32_t l_94 = (-6L);
            int i, j;
            p_1058->g_98--;
        }
        if (p_1058->g_4)
            break;
        for (p_1058->g_81.f0 = (-26); (p_1058->g_81.f0 == 53); p_1058->g_81.f0 = safe_add_func_uint8_t_u_u(p_1058->g_81.f0, 1))
        { /* block id: 34 */
            int8_t l_113 = (-1L);
            int32_t l_116 = 1L;
            int32_t l_119 = 0L;
            int32_t l_121 = 0x210622CDL;
            for (p_1058->g_85 = 0; (p_1058->g_85 == 22); p_1058->g_85++)
            { /* block id: 37 */
                int8_t l_110[9][6] = {{0x1FL,0x1FL,2L,0L,(-7L),0L},{0x1FL,0x1FL,2L,0L,(-7L),0L},{0x1FL,0x1FL,2L,0L,(-7L),0L},{0x1FL,0x1FL,2L,0L,(-7L),0L},{0x1FL,0x1FL,2L,0L,(-7L),0L},{0x1FL,0x1FL,2L,0L,(-7L),0L},{0x1FL,0x1FL,2L,0L,(-7L),0L},{0x1FL,0x1FL,2L,0L,(-7L),0L},{0x1FL,0x1FL,2L,0L,(-7L),0L}};
                int32_t l_120 = 0L;
                uint8_t l_125[10][10] = {{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL},{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL},{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL},{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL},{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL},{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL},{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL},{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL},{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL},{0x4CL,0UL,0xC1L,255UL,1UL,1UL,0xE5L,0xA3L,0xDCL,0xFDL}};
                int i, j;
                for (l_95 = 22; (l_95 != 1); l_95--)
                { /* block id: 40 */
                    int32_t *l_109 = &p_1058->g_83;
                    int32_t l_111 = 1L;
                    int32_t l_115 = 0L;
                    int32_t l_117[8];
                    int i;
                    for (i = 0; i < 8; i++)
                        l_117[i] = 0x4C4CDA38L;
                    for (p_1058->g_57 = (-3); (p_1058->g_57 < 23); p_1058->g_57 = safe_add_func_uint16_t_u_u(p_1058->g_57, 9))
                    { /* block id: 43 */
                        int32_t l_112 = 0L;
                        (*l_92) = (*l_92);
                        if (p_80.f0)
                            break;
                        (*l_109) &= (((*l_92) = l_109) == l_109);
                        l_122++;
                    }
                }
                l_116 = p_1058->g_57;
                for (l_95 = 1; (l_95 >= 0); l_95 -= 1)
                { /* block id: 54 */
                    int i;
                    l_125[2][2] ^= p_1058->g_97[l_95];
                    return p_1058->g_128;
                }
                return &p_1058->g_129;
            }
            for (l_114 = 0; (l_114 == 11); l_114 = safe_add_func_uint32_t_u_u(l_114, 5))
            { /* block id: 62 */
                int32_t **l_138 = (void*)0;
                int32_t ***l_139 = &l_92;
                uint32_t *l_146 = &p_1058->g_63;
                if (p_80.f0)
                    break;
                if ((((safe_lshift_func_uint8_t_u_s((&p_1058->g_57 == (void*)0), (+(safe_sub_func_int64_t_s_s((safe_mul_func_uint16_t_u_u(0x3D22L, ((l_119 != (&l_127[0] == (void*)0)) > (l_138 == ((*l_139) = &l_82[3][1]))))), ((p_1058->g_86 <= 0UL) , GROUP_DIVERGE(0, 1))))))) | p_80.f0) <= l_96))
                { /* block id: 65 */
                    int8_t *l_147 = (void*)0;
                    int8_t *l_148 = &l_113;
                    int8_t *l_163[5][6][5] = {{{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]}},{{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]}},{{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]}},{{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]}},{{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]},{&p_1058->g_164[1],(void*)0,&p_1058->g_164[0],&p_1058->g_164[2],&p_1058->g_164[1]}}};
                    int32_t l_166[6] = {0x28289208L,0x28289208L,0x28289208L,0x28289208L,0x28289208L,0x28289208L};
                    int32_t l_171 = 0x0DCD383CL;
                    int i, j, k;
                    l_116 = (safe_mul_func_int16_t_s_s((p_1058->g_63 , (((safe_add_func_uint8_t_u_u(((((*l_148) = ((l_144 == &l_92) & ((void*)0 == l_146))) >= (safe_mod_func_uint32_t_u_u((((((((((safe_sub_func_int16_t_s_s(((p_80.f0 || (safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(((p_1058->g_118 , (((safe_add_func_uint32_t_u_u(((p_1058->g_164[1] = (safe_add_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((((p_80.f0 == p_1058->g_97[0]) , p_1058->g_86) | 0xB0AAL), 0x0182948BL)), 0x3AL))) <= p_80.f0), 0x683FD957L)) != p_1058->g_3[2][0]) || p_80.f0)) | 0x1DL), (-2L))), p_80.f0))) || p_80.f0), p_1058->g_83)) && 0x66A9L) || p_1058->g_165) <= p_80.f0) || p_80.f0) , &p_1058->g_57) == (void*)0) , &p_1058->g_129) != &l_146), p_1058->g_81.f0))) | GROUP_DIVERGE(2, 1)), l_166[4])) , p_1058->g_91) == (void*)0)), 0xA4E5L));
                    if (p_80.f0)
                        continue;
                    l_171 |= (safe_div_func_uint64_t_u_u(p_1058->g_98, (safe_lshift_func_int16_t_s_s(0x51ADL, l_166[1]))));
                    for (l_95 = 0; (l_95 == 14); ++l_95)
                    { /* block id: 73 */
                        if (l_166[4])
                            break;
                    }
                }
                else
                { /* block id: 76 */
                    return &p_1058->g_129;
                }
                if (p_80.f0)
                    continue;
            }
            p_1058->g_83 = (l_116 |= p_80.f0);
        }
    }
    return &p_1058->g_129;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1059;
    struct S1* p_1058 = &c_1059;
    struct S1 c_1060 = {
        {{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L}}, // p_1058->g_3
        0x086BD085L, // p_1058->g_4
        0x2703D9B9L, // p_1058->g_5
        0x15362DAAL, // p_1058->g_6
        4294967289UL, // p_1058->g_31
        {{{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}},{{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}},{{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}},{{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}}}, // p_1058->g_35
        252UL, // p_1058->g_57
        0xCF62392EL, // p_1058->g_63
        {0x3645L}, // p_1058->g_81
        (-10L), // p_1058->g_83
        0x1D31AB14A3D9B22FL, // p_1058->g_84
        0x6D38L, // p_1058->g_85
        0x0850DA4A23C0F0EFL, // p_1058->g_86
        (void*)0, // p_1058->g_91
        {0x4C67FDB7285802EAL,0x4C67FDB7285802EAL}, // p_1058->g_97
        65533UL, // p_1058->g_98
        0x4E95A61DL, // p_1058->g_118
        (void*)0, // p_1058->g_129
        &p_1058->g_129, // p_1058->g_128
        {5L,5L,5L,5L,5L}, // p_1058->g_164
        (-1L), // p_1058->g_165
        (void*)0, // p_1058->g_195
        (void*)0, // p_1058->g_196
        65535UL, // p_1058->g_218
        18446744073709551608UL, // p_1058->g_219
        &p_1058->g_83, // p_1058->g_223
        {{&p_1058->g_223,&p_1058->g_223,&p_1058->g_223,&p_1058->g_223,&p_1058->g_223,&p_1058->g_223,&p_1058->g_223,&p_1058->g_223,&p_1058->g_223}}, // p_1058->g_222
        (void*)0, // p_1058->g_224
        {&p_1058->g_223,&p_1058->g_223,&p_1058->g_223,&p_1058->g_223,&p_1058->g_223,&p_1058->g_223}, // p_1058->g_225
        {&p_1058->g_85,&p_1058->g_85,&p_1058->g_85,&p_1058->g_85,&p_1058->g_85}, // p_1058->g_229
        &p_1058->g_229[1], // p_1058->g_228
        &p_1058->g_228, // p_1058->g_227
        &p_1058->g_57, // p_1058->g_245
        &p_1058->g_245, // p_1058->g_244
        &p_1058->g_244, // p_1058->g_243
        {{0x8CDBL,0x8CDBL,0x8CDBL,0x8CDBL,0x8CDBL,0x8CDBL,0x8CDBL,0x8CDBL,0x8CDBL}}, // p_1058->g_257
        {{18446744073709551615UL,18446744073709551615UL,18446744073709551614UL,9UL,18446744073709551615UL,3UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551614UL,9UL,18446744073709551615UL,3UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551614UL,9UL,18446744073709551615UL,3UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551614UL,9UL,18446744073709551615UL,3UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551614UL,9UL,18446744073709551615UL,3UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551614UL,9UL,18446744073709551615UL,3UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551614UL,9UL,18446744073709551615UL,3UL}}, // p_1058->g_282
        {0x8BFDL}, // p_1058->g_292
        {0UL}, // p_1058->g_295
        1L, // p_1058->g_323
        0x09BE3DDDL, // p_1058->g_328
        {{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}},{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}},{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}},{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}},{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}},{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}},{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}},{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}},{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}},{{(void*)0,&p_1058->g_6,&p_1058->g_3[2][0],&p_1058->g_328,&p_1058->g_3[2][0],&p_1058->g_6,(void*)0,&p_1058->g_3[1][2]}}}, // p_1058->g_327
        &p_1058->g_328, // p_1058->g_329
        (void*)0, // p_1058->g_334
        &p_1058->g_334, // p_1058->g_333
        {&p_1058->g_333,&p_1058->g_333,&p_1058->g_333,&p_1058->g_333,&p_1058->g_333,&p_1058->g_333}, // p_1058->g_332
        &p_1058->g_328, // p_1058->g_344
        {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}}, // p_1058->g_369
        {&p_1058->g_328}, // p_1058->g_370
        (void*)0, // p_1058->g_497
        &p_1058->g_165, // p_1058->g_691
        {{&p_1058->g_691,&p_1058->g_691,(void*)0,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691},{&p_1058->g_691,&p_1058->g_691,(void*)0,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691},{&p_1058->g_691,&p_1058->g_691,(void*)0,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691},{&p_1058->g_691,&p_1058->g_691,(void*)0,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691},{&p_1058->g_691,&p_1058->g_691,(void*)0,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691},{&p_1058->g_691,&p_1058->g_691,(void*)0,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691},{&p_1058->g_691,&p_1058->g_691,(void*)0,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691},{&p_1058->g_691,&p_1058->g_691,(void*)0,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691},{&p_1058->g_691,&p_1058->g_691,(void*)0,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691,&p_1058->g_691}}, // p_1058->g_690
        0x15AB15B6L, // p_1058->g_694
        4294967291UL, // p_1058->g_714
        &p_1058->g_83, // p_1058->g_733
        0UL, // p_1058->g_752
        1UL, // p_1058->g_780
        &p_1058->g_223, // p_1058->g_928
        &p_1058->g_83, // p_1058->g_937
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1058->g_948
        &p_1058->g_83, // p_1058->g_953
        {{{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694}},{{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694}},{{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694}},{{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694},{&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694,&p_1058->g_694}}}, // p_1058->g_964
        &p_1058->g_964[2][2][2], // p_1058->g_963
        0x0B51DE23BDDCF500L, // p_1058->g_967
        (void*)0, // p_1058->g_982
        248UL, // p_1058->g_1006
        0xF816L, // p_1058->g_1031
        &p_1058->g_292.f0, // p_1058->g_1038
        &p_1058->g_1038, // p_1058->g_1037
        1L, // p_1058->g_1041
        &p_1058->g_292, // p_1058->g_1056
        sequence_input[get_global_id(0)], // p_1058->global_0_offset
        sequence_input[get_global_id(1)], // p_1058->global_1_offset
        sequence_input[get_global_id(2)], // p_1058->global_2_offset
        sequence_input[get_local_id(0)], // p_1058->local_0_offset
        sequence_input[get_local_id(1)], // p_1058->local_1_offset
        sequence_input[get_local_id(2)], // p_1058->local_2_offset
        sequence_input[get_group_id(0)], // p_1058->group_0_offset
        sequence_input[get_group_id(1)], // p_1058->group_1_offset
        sequence_input[get_group_id(2)], // p_1058->group_2_offset
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1059 = c_1060;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1058);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1058->g_3[i][j], "p_1058->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_4, "p_1058->g_4", print_hash_value);
    transparent_crc(p_1058->g_5, "p_1058->g_5", print_hash_value);
    transparent_crc(p_1058->g_6, "p_1058->g_6", print_hash_value);
    transparent_crc(p_1058->g_31, "p_1058->g_31", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1058->g_35[i][j][k], "p_1058->g_35[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1058->g_57, "p_1058->g_57", print_hash_value);
    transparent_crc(p_1058->g_63, "p_1058->g_63", print_hash_value);
    transparent_crc(p_1058->g_81.f0, "p_1058->g_81.f0", print_hash_value);
    transparent_crc(p_1058->g_83, "p_1058->g_83", print_hash_value);
    transparent_crc(p_1058->g_84, "p_1058->g_84", print_hash_value);
    transparent_crc(p_1058->g_85, "p_1058->g_85", print_hash_value);
    transparent_crc(p_1058->g_86, "p_1058->g_86", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1058->g_97[i], "p_1058->g_97[i]", print_hash_value);

    }
    transparent_crc(p_1058->g_98, "p_1058->g_98", print_hash_value);
    transparent_crc(p_1058->g_118, "p_1058->g_118", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1058->g_164[i], "p_1058->g_164[i]", print_hash_value);

    }
    transparent_crc(p_1058->g_165, "p_1058->g_165", print_hash_value);
    transparent_crc(p_1058->g_218, "p_1058->g_218", print_hash_value);
    transparent_crc(p_1058->g_219, "p_1058->g_219", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1058->g_257[i][j], "p_1058->g_257[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1058->g_282[i][j], "p_1058->g_282[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_292.f0, "p_1058->g_292.f0", print_hash_value);
    transparent_crc(p_1058->g_295.f0, "p_1058->g_295.f0", print_hash_value);
    transparent_crc(p_1058->g_323, "p_1058->g_323", print_hash_value);
    transparent_crc(p_1058->g_328, "p_1058->g_328", print_hash_value);
    transparent_crc(p_1058->g_694, "p_1058->g_694", print_hash_value);
    transparent_crc(p_1058->g_714, "p_1058->g_714", print_hash_value);
    transparent_crc(p_1058->g_752, "p_1058->g_752", print_hash_value);
    transparent_crc(p_1058->g_780, "p_1058->g_780", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1058->g_948[i], "p_1058->g_948[i]", print_hash_value);

    }
    transparent_crc(p_1058->g_967, "p_1058->g_967", print_hash_value);
    transparent_crc(p_1058->g_1006, "p_1058->g_1006", print_hash_value);
    transparent_crc(p_1058->g_1031, "p_1058->g_1031", print_hash_value);
    transparent_crc(p_1058->g_1041, "p_1058->g_1041", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 99; i++)
            transparent_crc(p_1058->g_special_values[i + 99 * get_linear_group_id()], "p_1058->g_special_values[i + 99 * get_linear_group_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
