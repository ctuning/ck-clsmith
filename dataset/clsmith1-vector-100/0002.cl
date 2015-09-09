// ---fake_divergence -g 4,46,50 -l 4,1,2
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


// Seed: 2

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_11;
    uint64_t g_22;
    volatile VECTOR(int32_t, 4) g_56;
    int8_t g_69;
    uint16_t g_87;
    uint16_t g_94;
    uint16_t *g_93;
    uint32_t g_98[8];
    int64_t g_110;
    uint32_t g_121;
    uint32_t g_124;
    uint64_t g_125;
    int32_t g_128;
    uint8_t g_136[3];
    int32_t *g_139;
    int32_t *g_141;
    uint16_t g_144[6];
    int32_t **g_148;
    int16_t g_177;
    volatile VECTOR(int32_t, 16) g_182;
    VECTOR(int8_t, 4) g_189;
    int32_t ** volatile g_203[1][3];
    int32_t ** volatile g_204;
    int32_t g_206[6][5];
    int32_t ** volatile g_213;
    VECTOR(uint64_t, 16) g_219;
    VECTOR(uint32_t, 8) g_229;
    int64_t * volatile g_242;
    int64_t * volatile *g_241[1];
    uint8_t g_244;
    uint8_t * volatile g_243;
    volatile VECTOR(uint8_t, 16) g_311;
    VECTOR(int64_t, 8) g_364;
    volatile VECTOR(int64_t, 4) g_368;
    volatile VECTOR(uint16_t, 16) g_394;
    volatile VECTOR(int64_t, 2) g_414;
    volatile VECTOR(int64_t, 8) g_418;
    int8_t g_432;
    int32_t ** volatile g_440;
    uint8_t g_445;
    volatile VECTOR(uint16_t, 8) g_475;
    VECTOR(uint16_t, 16) g_479;
    volatile VECTOR(uint16_t, 8) g_480;
    volatile VECTOR(uint16_t, 2) g_482;
    volatile VECTOR(int64_t, 2) g_495;
    volatile VECTOR(uint64_t, 16) g_517;
    int16_t g_532[4][1];
    volatile uint16_t g_533;
    VECTOR(int32_t, 2) g_537;
    volatile VECTOR(uint64_t, 2) g_546;
    uint32_t g_550;
    volatile VECTOR(uint32_t, 4) g_554;
    volatile VECTOR(uint8_t, 8) g_578;
    int32_t ** volatile g_591;
    VECTOR(uint32_t, 8) g_615;
    int16_t *g_639;
    int16_t ** volatile g_638;
    int64_t g_641;
    VECTOR(int32_t, 8) g_703;
    volatile VECTOR(int32_t, 16) g_704;
    VECTOR(uint16_t, 8) g_728;
    VECTOR(int8_t, 2) g_774;
    uint8_t *g_781;
    uint8_t **g_780;
    uint8_t ***g_779[1][6][8];
    VECTOR(int32_t, 4) g_788;
    VECTOR(uint32_t, 2) g_796;
    VECTOR(uint64_t, 2) g_803;
    volatile VECTOR(uint32_t, 4) g_838;
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
uint64_t  func_1(struct S0 * p_860);
int16_t  func_2(uint32_t  p_3, uint64_t  p_4, struct S0 * p_860);
uint16_t  func_24(uint32_t  p_25, int32_t * p_26, struct S0 * p_860);
uint64_t * func_27(int8_t  p_28, int32_t * p_29, uint64_t  p_30, struct S0 * p_860);
int32_t * func_37(int16_t  p_38, uint32_t  p_39, int8_t  p_40, int16_t  p_41, int64_t  p_42, struct S0 * p_860);
uint64_t  func_48(uint64_t * p_49, int32_t * p_50, int32_t  p_51, struct S0 * p_860);
uint64_t * func_52(int16_t  p_53, struct S0 * p_860);
int32_t  func_65(uint64_t * p_66, struct S0 * p_860);
int32_t * func_72(int32_t * p_73, uint8_t  p_74, uint8_t  p_75, int32_t * p_76, struct S0 * p_860);
uint16_t  func_88(int32_t * p_89, uint16_t * p_90, int32_t * p_91, uint16_t * p_92, struct S0 * p_860);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_860->g_11 p_860->g_22 p_860->g_56 p_860->g_69 p_860->g_93 p_860->g_98 p_860->g_124 p_860->g_125 p_860->g_94 p_860->g_110 p_860->g_136 p_860->g_144 p_860->g_141 p_860->g_128 p_860->g_177 p_860->g_182 p_860->g_189 p_860->g_139 p_860->g_204 p_860->g_206 p_860->g_213 p_860->g_219 p_860->g_229 p_860->g_241 p_860->g_243 p_860->g_244 p_860->g_445 p_860->g_788 p_860->g_796 p_860->g_803 p_860->g_87 p_860->g_591 p_860->g_479 p_860->g_639 p_860->g_532 p_860->g_121 p_860->g_838 p_860->g_780 p_860->g_781 p_860->g_703 p_860->g_432 p_860->g_440
 * writes: p_860->g_22 p_860->g_11 p_860->g_87 p_860->g_94 p_860->g_69 p_860->g_121 p_860->g_124 p_860->g_128 p_860->g_136 p_860->g_139 p_860->g_141 p_860->g_144 p_860->g_148 p_860->g_177 p_860->g_125 p_860->g_244 p_860->g_445 p_860->g_532 p_860->g_206 p_860->g_703
 */
uint64_t  func_1(struct S0 * p_860)
{ /* block id: 4 */
    int32_t l_5[5][8][3] = {{{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL}},{{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL}},{{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL}},{{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL}},{{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL},{0x5C6EFF3DL,0x5A23E86FL,0x5C6EFF3DL}}};
    int64_t *l_857 = &p_860->g_110;
    int64_t **l_856 = &l_857;
    uint64_t l_858 = 0xB9C8B94FE420C48FL;
    int32_t *l_859 = &p_860->g_206[3][4];
    int i, j, k;
    l_858 = (((func_2(l_5[4][6][2], l_5[4][7][1], p_860) >= (p_860->g_432 >= (((*l_856) = &p_860->g_110) != &p_860->g_110))) , 1UL) >= l_5[4][6][2]);
    (*p_860->g_440) = l_859;
    return (*l_859);
}


/* ------------------------------------------ */
/* 
 * reads : p_860->g_11 p_860->g_22 p_860->g_56 p_860->g_69 p_860->g_93 p_860->g_98 p_860->g_124 p_860->g_125 p_860->g_94 p_860->g_110 p_860->g_136 p_860->g_144 p_860->g_141 p_860->g_128 p_860->g_177 p_860->g_182 p_860->g_189 p_860->g_139 p_860->g_204 p_860->g_206 p_860->g_213 p_860->g_219 p_860->g_229 p_860->g_241 p_860->g_243 p_860->g_244 p_860->g_445 p_860->g_788 p_860->g_796 p_860->g_803 p_860->g_87 p_860->g_591 p_860->g_479 p_860->g_639 p_860->g_532 p_860->g_121 p_860->g_838 p_860->g_780 p_860->g_781 p_860->g_703
 * writes: p_860->g_22 p_860->g_11 p_860->g_87 p_860->g_94 p_860->g_69 p_860->g_121 p_860->g_124 p_860->g_128 p_860->g_136 p_860->g_139 p_860->g_141 p_860->g_144 p_860->g_148 p_860->g_177 p_860->g_125 p_860->g_244 p_860->g_445 p_860->g_532 p_860->g_206 p_860->g_703
 */
int16_t  func_2(uint32_t  p_3, uint64_t  p_4, struct S0 * p_860)
{ /* block id: 5 */
    uint16_t l_20 = 1UL;
    uint64_t *l_21 = &p_860->g_22;
    int32_t l_23 = 0L;
    int8_t l_43 = (-7L);
    int32_t l_44 = 0L;
    int32_t **l_441 = &p_860->g_141;
    int32_t *l_442 = &l_44;
    uint8_t *l_443 = (void*)0;
    uint8_t *l_444 = &p_860->g_445;
    uint64_t **l_789 = &l_21;
    for (p_3 = 4; (p_3 < 26); p_3 = safe_add_func_int32_t_s_s(p_3, 3))
    { /* block id: 8 */
        uint16_t l_15 = 0UL;
        for (p_4 = (-23); (p_4 > 26); p_4 = safe_add_func_int16_t_s_s(p_4, 7))
        { /* block id: 11 */
            int32_t *l_10 = &p_860->g_11;
            int32_t *l_12 = &p_860->g_11;
            int32_t *l_13 = (void*)0;
            int32_t *l_14[8] = {&p_860->g_11,&p_860->g_11,&p_860->g_11,&p_860->g_11,&p_860->g_11,&p_860->g_11,&p_860->g_11,&p_860->g_11};
            int i;
            ++l_15;
        }
    }
    p_860->g_703.s6 |= (0x402DA3C3L != (safe_add_func_int16_t_s_s(l_20, ((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 2))(1UL, 2UL)), (uint16_t)((l_23 &= ((p_4 >= ((p_860->g_11 <= ((*l_21) ^= 3UL)) || 0x10L)) == 65535UL)) , func_24(((((*l_789) = func_27((((safe_div_func_int32_t_s_s((safe_lshift_func_int16_t_s_u(((safe_mod_func_uint8_t_u_u(1UL, ((*l_444) &= ((((*l_441) = func_37(p_4, l_23, l_43, p_4, l_44, p_860)) == l_442) >= p_860->g_98[4])))) , p_860->g_125), p_860->g_189.w)), p_860->g_189.w)) ^ p_860->g_98[4]) >= (*l_442)), &l_44, p_860->g_229.s0, p_860)) == (void*)0) > p_3), &p_860->g_206[5][1], p_860))))).hi)));
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_860->g_139 p_860->g_128 p_860->g_796 p_860->g_803 p_860->g_87 p_860->g_591 p_860->g_93 p_860->g_94 p_860->g_479 p_860->g_639 p_860->g_532 p_860->g_121 p_860->g_124 p_860->g_206 p_860->g_838 p_860->g_780 p_860->g_781 p_860->g_244
 * writes: p_860->g_128 p_860->g_532 p_860->g_124 p_860->g_206 p_860->g_94 p_860->g_244
 */
uint16_t  func_24(uint32_t  p_25, int32_t * p_26, struct S0 * p_860)
{ /* block id: 287 */
    VECTOR(int32_t, 2) l_790 = (VECTOR(int32_t, 2))(0x6768C9C3L, 0x5045FF7EL);
    VECTOR(int8_t, 8) l_795 = (VECTOR(int8_t, 8))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x70L), 0x70L), 0x70L, 0x05L, 0x70L);
    int64_t *l_805[6][4][5] = {{{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0}},{{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0}},{{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0}},{{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0}},{{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0}},{{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0},{&p_860->g_110,&p_860->g_110,&p_860->g_110,(void*)0,(void*)0}}};
    int64_t **l_804 = &l_805[2][1][2];
    int8_t *l_826[8];
    int64_t **l_827 = &l_805[2][1][2];
    int64_t ***l_828 = &l_827;
    int32_t l_829 = 0L;
    uint32_t *l_830 = &p_860->g_124;
    int32_t l_841 = 0x26163D03L;
    int32_t l_842 = 0x112B8295L;
    int32_t l_843 = 0x7DACAA3EL;
    uint64_t *l_851 = &p_860->g_125;
    uint64_t **l_850[4] = {&l_851,&l_851,&l_851,&l_851};
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_826[i] = &p_860->g_432;
    (*p_860->g_139) ^= ((VECTOR(int32_t, 8))(l_790.xxyyxyyy)).s0;
    if (p_860->g_128)
        goto lbl_831;
lbl_831:
    (*p_26) ^= (safe_mul_func_int16_t_s_s((((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_795.s3620)).odd)).yyyyyyyxyxxyxyxy))).s1, 0)) == ((*l_830) ^= (((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(p_860->g_796.yyxxyyxx)).s3223627531123605)).s9 < (l_829 = ((safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_s((((((((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(p_860->g_803.yxyy)).odd)).xyyyxxyyyxxxxxxy)).s9227)).w, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 2))((-1L), 0x27E0C181C8D2FC97L)).xyyy))).xywxyyzz)).s0)) ^ (l_804 == ((*l_828) = ((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint32_t_u_u((((p_25 <= ((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(((((*p_860->g_639) |= ((safe_rshift_func_uint16_t_u_s((l_795.s3 == p_860->g_87), 1)) && ((l_790.y = ((p_25 == 9L) <= ((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), p_25)) || (safe_rshift_func_int16_t_s_u(p_25, ((safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((safe_div_func_uint16_t_u_u(65535UL, l_795.s1)) & p_25), (**p_860->g_591))), (*p_860->g_93))) == p_860->g_479.sc)))))) >= l_795.s7))) >= p_25) && l_795.s3), p_25)), p_25)) <= 0x225DL)) > 0L) , 0UL), p_860->g_128)), 14)) , l_827)))) && l_795.s2) <= 0xF640L) != l_795.s0) != l_795.s6) || 0xDE6D295FL), p_860->g_121)), l_795.s6)) != 8UL))) > p_25) != 0x34C030BDL))) >= 0L), l_795.s3));
    (*p_860->g_139) |= (0xCDL & (l_790.x > (l_829 = (safe_mul_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((((1L <= l_829) ^ FAKE_DIVERGE(p_860->group_1_offset, get_group_id(1), 10)) < (l_843 ^= (l_842 = ((((l_790.y > (-4L)) || (safe_rshift_func_int8_t_s_s((-1L), 4))) >= (((VECTOR(uint32_t, 16))(p_860->g_838.zyxzzxyyxxzxwyxx)).se != (safe_mod_func_uint8_t_u_u((l_841 &= ((((**p_860->g_780) = (((*p_860->g_93) = ((VECTOR(uint16_t, 8))(0x602FL, p_25, 65535UL, ((VECTOR(uint16_t, 4))(65535UL)), 65529UL)).s4) == (*p_860->g_639))) <= (-10L)) > l_795.s6)), l_795.s5)))) | 0x7848L)))), p_860->g_479.sc)), p_25)))));
    l_841 |= (safe_sub_func_uint32_t_u_u((((-10L) | 4L) | (safe_mul_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((((l_850[3] == (((*p_860->g_639) |= ((((--(*l_830)) & (((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0L, 1L)).yxxxxxyxxyxxyxxy)))).s77)).odd || (((safe_rshift_func_uint16_t_u_s(((*p_26) > l_829), (((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))((((*p_860->g_139) != (l_830 != &p_860->g_98[5])) | (((l_795.s7 < 0x6A8B99F6L) , (*p_860->g_93)) != (*p_860->g_93))), 0x00L, ((VECTOR(int8_t, 4))((-1L))), ((VECTOR(int8_t, 8))((-8L))), (-6L), (-8L))).s85)).lo ^ l_795.s4))) != GROUP_DIVERGE(2, 1)) != (*p_860->g_781)))) == 0x2FC0L) <= l_842)) , &l_851)) <= p_25) , 8L), p_25)), p_25))), (*p_26)));
    return (*p_860->g_93);
}


/* ------------------------------------------ */
/* 
 * reads : p_860->g_11 p_860->g_244 p_860->g_788 p_860->g_139 p_860->g_128
 * writes: p_860->g_11 p_860->g_244 p_860->g_128
 */
uint64_t * func_27(int8_t  p_28, int32_t * p_29, uint64_t  p_30, struct S0 * p_860)
{ /* block id: 149 */
    uint16_t l_448 = 0xE5FCL;
    int32_t l_457 = 0x35163988L;
    int32_t l_459[2][3] = {{6L,6L,6L},{6L,6L,6L}};
    int8_t l_460 = 0x52L;
    uint64_t l_461[2];
    uint8_t *l_470 = &p_860->g_136[0];
    uint8_t **l_469 = &l_470;
    VECTOR(uint16_t, 4) l_477 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 9UL), 9UL);
    VECTOR(uint16_t, 8) l_478 = (VECTOR(uint16_t, 8))(0xA945L, (VECTOR(uint16_t, 4))(0xA945L, (VECTOR(uint16_t, 2))(0xA945L, 8UL), 8UL), 8UL, 0xA945L, 8UL);
    int16_t *l_487 = (void*)0;
    int16_t **l_486 = &l_487;
    VECTOR(int8_t, 4) l_558 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x78L), 0x78L);
    int64_t *l_602 = &p_860->g_110;
    uint32_t l_627[8][1][8] = {{{0xFE9E5F17L,4294967287UL,0UL,6UL,4294967287UL,6UL,0UL,4294967287UL}},{{0xFE9E5F17L,4294967287UL,0UL,6UL,4294967287UL,6UL,0UL,4294967287UL}},{{0xFE9E5F17L,4294967287UL,0UL,6UL,4294967287UL,6UL,0UL,4294967287UL}},{{0xFE9E5F17L,4294967287UL,0UL,6UL,4294967287UL,6UL,0UL,4294967287UL}},{{0xFE9E5F17L,4294967287UL,0UL,6UL,4294967287UL,6UL,0UL,4294967287UL}},{{0xFE9E5F17L,4294967287UL,0UL,6UL,4294967287UL,6UL,0UL,4294967287UL}},{{0xFE9E5F17L,4294967287UL,0UL,6UL,4294967287UL,6UL,0UL,4294967287UL}},{{0xFE9E5F17L,4294967287UL,0UL,6UL,4294967287UL,6UL,0UL,4294967287UL}}};
    int32_t l_656 = (-7L);
    VECTOR(int16_t, 2) l_697 = (VECTOR(int16_t, 2))(0x10F3L, 0x3896L);
    VECTOR(int32_t, 2) l_701 = (VECTOR(int32_t, 2))((-7L), (-1L));
    VECTOR(int32_t, 4) l_705 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x2E4B9F8FL), 0x2E4B9F8FL);
    VECTOR(int16_t, 8) l_764 = (VECTOR(int16_t, 8))(0x04DEL, (VECTOR(int16_t, 4))(0x04DEL, (VECTOR(int16_t, 2))(0x04DEL, 2L), 2L), 2L, 0x04DEL, 2L);
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_461[i] = 0xF31FDDB663367640L;
    l_448 = ((*p_29) = (safe_rshift_func_int8_t_s_u(0x6CL, 7)));
    for (p_860->g_11 = (-11); (p_860->g_11 <= (-25)); --p_860->g_11)
    { /* block id: 154 */
        int32_t *l_451 = &p_860->g_128;
        int32_t l_452[10][9][2] = {{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}},{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}},{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}},{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}},{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}},{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}},{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}},{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}},{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}},{{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)},{0x4A8E7D91L,(-1L)}}};
        int32_t *l_453 = &l_452[5][0][1];
        int32_t *l_454 = &p_860->g_206[5][2];
        int32_t *l_455 = &l_452[7][3][0];
        int32_t *l_456 = (void*)0;
        int32_t *l_458[7][8][4] = {{{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128}},{{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128}},{{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128}},{{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128}},{{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128}},{{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128}},{{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128},{&p_860->g_128,(void*)0,&p_860->g_128,&p_860->g_128}}};
        VECTOR(uint16_t, 16) l_474 = (VECTOR(uint16_t, 16))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 1UL), 1UL), 1UL, 65528UL, 1UL, (VECTOR(uint16_t, 2))(65528UL, 1UL), (VECTOR(uint16_t, 2))(65528UL, 1UL), 65528UL, 1UL, 65528UL, 1UL);
        VECTOR(uint16_t, 16) l_481 = (VECTOR(uint16_t, 16))(0xF0F0L, (VECTOR(uint16_t, 4))(0xF0F0L, (VECTOR(uint16_t, 2))(0xF0F0L, 65535UL), 65535UL), 65535UL, 0xF0F0L, 65535UL, (VECTOR(uint16_t, 2))(0xF0F0L, 65535UL), (VECTOR(uint16_t, 2))(0xF0F0L, 65535UL), 0xF0F0L, 65535UL, 0xF0F0L, 65535UL);
        VECTOR(uint16_t, 4) l_483 = (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 0x6C4FL), 0x6C4FL);
        uint8_t *l_547 = &p_860->g_136[0];
        uint64_t *l_566 = (void*)0;
        int32_t *l_592 = &l_457;
        int32_t **l_616 = &l_458[0][7][3];
        int64_t l_626 = 6L;
        uint32_t l_657[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
        int8_t *l_661 = (void*)0;
        int i, j, k;
        l_461[0]--;
    }
    for (p_860->g_244 = 0; (p_860->g_244 == 12); p_860->g_244++)
    { /* block id: 232 */
        uint32_t l_675[7][3] = {{0x9B1CD00CL,4294967295UL,0x9B1CD00CL},{0x9B1CD00CL,4294967295UL,0x9B1CD00CL},{0x9B1CD00CL,4294967295UL,0x9B1CD00CL},{0x9B1CD00CL,4294967295UL,0x9B1CD00CL},{0x9B1CD00CL,4294967295UL,0x9B1CD00CL},{0x9B1CD00CL,4294967295UL,0x9B1CD00CL},{0x9B1CD00CL,4294967295UL,0x9B1CD00CL}};
        VECTOR(int32_t, 2) l_706 = (VECTOR(int32_t, 2))(0x06311F93L, (-8L));
        VECTOR(uint16_t, 2) l_716 = (VECTOR(uint16_t, 2))(65531UL, 2UL);
        uint32_t *l_741[3];
        uint8_t ***l_783[1][3];
        int64_t *l_785 = &p_860->g_110;
        int i, j;
        for (i = 0; i < 3; i++)
            l_741[i] = &p_860->g_124;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 3; j++)
                l_783[i][j] = (void*)0;
        }
        (1 + 1);
    }
    (*p_860->g_139) |= ((1L || l_457) == ((VECTOR(int32_t, 4))(p_860->g_788.wwxz)).z);
    return &p_860->g_125;
}


/* ------------------------------------------ */
/* 
 * reads : p_860->g_22 p_860->g_56 p_860->g_69 p_860->g_11 p_860->g_93 p_860->g_98 p_860->g_124 p_860->g_125 p_860->g_94 p_860->g_110 p_860->g_136 p_860->g_144 p_860->g_141 p_860->g_128 p_860->g_177 p_860->g_182 p_860->g_189 p_860->g_139 p_860->g_204 p_860->g_206 p_860->g_213 p_860->g_219 p_860->g_229 p_860->g_241 p_860->g_243 p_860->g_244
 * writes: p_860->g_11 p_860->g_87 p_860->g_94 p_860->g_69 p_860->g_121 p_860->g_124 p_860->g_128 p_860->g_136 p_860->g_139 p_860->g_141 p_860->g_144 p_860->g_148 p_860->g_177 p_860->g_125 p_860->g_244
 */
int32_t * func_37(int16_t  p_38, uint32_t  p_39, int8_t  p_40, int16_t  p_41, int64_t  p_42, struct S0 * p_860)
{ /* block id: 17 */
    int16_t l_47 = 3L;
    int32_t *l_205[10][8] = {{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]},{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]},{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]},{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]},{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]},{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]},{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]},{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]},{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]},{(void*)0,&p_860->g_206[5][1],&p_860->g_206[4][3],&p_860->g_206[3][0],&p_860->g_206[0][3],(void*)0,(void*)0,&p_860->g_206[0][3]}};
    int32_t l_211[5] = {0x658A0C07L,0x658A0C07L,0x658A0C07L,0x658A0C07L,0x658A0C07L};
    VECTOR(int8_t, 16) l_235 = (VECTOR(int8_t, 16))(0x19L, (VECTOR(int8_t, 4))(0x19L, (VECTOR(int8_t, 2))(0x19L, 0x1DL), 0x1DL), 0x1DL, 0x19L, 0x1DL, (VECTOR(int8_t, 2))(0x19L, 0x1DL), (VECTOR(int8_t, 2))(0x19L, 0x1DL), 0x19L, 0x1DL, 0x19L, 0x1DL);
    uint32_t l_247 = 0xB8D93B70L;
    uint8_t *l_248 = &p_860->g_244;
    VECTOR(int32_t, 8) l_250 = (VECTOR(int32_t, 8))(0x5F5F1789L, (VECTOR(int32_t, 4))(0x5F5F1789L, (VECTOR(int32_t, 2))(0x5F5F1789L, 0x2D20B73EL), 0x2D20B73EL), 0x2D20B73EL, 0x5F5F1789L, 0x2D20B73EL);
    uint64_t l_251 = 18446744073709551615UL;
    int8_t l_252[10][3][8] = {{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}},{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}},{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}},{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}},{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}},{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}},{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}},{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}},{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}},{{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L},{0x0AL,0x3FL,1L,0x12L,1L,0x3FL,0x0AL,4L}}};
    VECTOR(uint64_t, 2) l_267 = (VECTOR(uint64_t, 2))(0x4E4066CF73A63B41L, 0xA2B01615A0E331D9L);
    int16_t *l_268 = &p_860->g_177;
    int32_t l_272[1][1];
    int8_t *l_301 = &p_860->g_69;
    uint16_t l_337 = 2UL;
    VECTOR(int64_t, 4) l_365 = (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), (-1L)), (-1L));
    int64_t l_386[5][3][3] = {{{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL}},{{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL}},{{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL}},{{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL}},{{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL},{9L,0x75379B794B8BD5CAL,0x2F1588C48387506DL}}};
    uint32_t l_433[2];
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_272[i][j] = 0x45736F65L;
    }
    for (i = 0; i < 2; i++)
        l_433[i] = 4294967295UL;
    l_211[1] = (safe_mul_func_uint8_t_u_u(p_860->g_22, (l_47 <= (((func_48(func_52((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 2))(p_860->g_56.xz)).hi, (safe_mul_func_int16_t_s_s(((safe_add_func_int32_t_s_s((safe_add_func_uint64_t_u_u(((((VECTOR(uint32_t, 2))(7UL, 4294967295UL)).hi , ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(1UL, 0x8A21DEC74357240EL)), 0x136B80555F25AD92L, 3UL)).y) , 1UL), p_41)), ((l_47 , (safe_mod_func_uint64_t_u_u(0x56A9E5FAF1BECDE8L, 0x0B9DB5DF1D979388L))) == func_65(((safe_mul_func_uint8_t_u_u((p_860->g_69 | l_47), l_47)) , (void*)0), p_860)))) != 0UL), 0xB016L)))), p_860), l_205[0][0], p_860->g_206[5][1], p_860) && p_860->g_182.se) && p_860->g_182.s0) != p_40))));
    if (p_41)
    { /* block id: 57 */
        int32_t *l_212[3];
        int32_t **l_214 = &l_212[0];
        int i;
        for (i = 0; i < 3; i++)
            l_212[i] = &p_860->g_206[5][1];
        (*p_860->g_139) ^= (-4L);
        (*p_860->g_213) = l_212[0];
        (*l_214) = l_205[6][1];
        (*l_214) = (*l_214);
    }
    else
    { /* block id: 62 */
        uint8_t *l_220 = (void*)0;
        int32_t l_232 = 9L;
        VECTOR(uint32_t, 16) l_238 = (VECTOR(uint32_t, 16))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0UL), 0UL), 0UL, 4294967290UL, 0UL, (VECTOR(uint32_t, 2))(4294967290UL, 0UL), (VECTOR(uint32_t, 2))(4294967290UL, 0UL), 4294967290UL, 0UL, 4294967290UL, 0UL);
        uint64_t *l_249 = &p_860->g_125;
        int8_t *l_253 = (void*)0;
        int8_t *l_254[9] = {&l_252[2][0][4],&p_860->g_69,&l_252[2][0][4],&l_252[2][0][4],&p_860->g_69,&l_252[2][0][4],&l_252[2][0][4],&p_860->g_69,&l_252[2][0][4]};
        int32_t l_258 = 4L;
        int i;
        (*p_860->g_139) &= (safe_add_func_int32_t_s_s((0x32L == 0x72L), (((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(p_860->g_219.seed2)).z, (p_38 & (--p_860->g_136[1])))) | p_860->g_144[0]) >= (p_40 &= ((((safe_add_func_uint8_t_u_u((((*l_248) = ((safe_mul_func_int16_t_s_s((~(safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(p_860->g_229.s44045136)).s4, (+(safe_lshift_func_int16_t_s_u(l_232, 10)))))), (safe_add_func_int16_t_s_s(((((VECTOR(int8_t, 8))(l_235.sf522524d)).s2 ^ (safe_div_func_uint16_t_u_u(((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_238.sa8c77241)))).s4 ^ ((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 16))(4294967295UL, ((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))((safe_sub_func_uint64_t_u_u(((((*l_249) ^= ((p_860->g_241[0] == (void*)0) ^ (p_860->g_243 == (((((VECTOR(int8_t, 16))((safe_mul_func_int16_t_s_s(1L, 9UL)), 0L, ((VECTOR(int8_t, 2))(1L)), 0x53L, 0L, 0x6DL, l_247, 0L, l_238.s2, p_860->g_189.y, (-1L), ((VECTOR(int8_t, 2))((-1L))), 0x22L, (-3L))).sf , (-1L)) , p_860->g_229.s4) , l_248)))) ^ 18446744073709551615UL) && p_39), l_238.s9)), 0x112C0037L, ((VECTOR(uint32_t, 4))(0UL)), 2UL, p_860->g_182.s7, 0xF2DC3F20L, p_39, ((VECTOR(uint32_t, 2))(0x6C9BF8E6L)), 0xB5B6B9B8L, p_39, 0x89FC940DL, 1UL)))).hi, ((VECTOR(uint32_t, 8))(4294967286UL))))), 0x05A429E2L, ((VECTOR(uint32_t, 2))(4294967295UL)), 4294967295UL, ((VECTOR(uint32_t, 2))(1UL)), 0UL)).even, ((VECTOR(uint32_t, 8))(0xCAA26552L))))).s4) != l_250.s2), 0x647AL))) | p_38), p_39)))) , (*p_860->g_243))) && 0L), l_251)) , p_39) & l_252[2][0][4]) > p_42)))));
        for (p_860->g_125 = (-16); (p_860->g_125 >= 1); p_860->g_125++)
        { /* block id: 70 */
            int32_t *l_257 = &p_860->g_206[3][4];
            l_257 = l_205[7][0];
        }
        l_258 = (l_232 = ((*p_860->g_139) = l_238.sc));
    }
    for (p_860->g_124 = (-16); (p_860->g_124 > 37); p_860->g_124++)
    { /* block id: 79 */
        int16_t **l_269 = &l_268;
        uint64_t *l_270 = (void*)0;
        int32_t l_271 = (-1L);
        uint8_t *l_275 = &p_860->g_136[0];
        VECTOR(int8_t, 8) l_313 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 9L), 9L), 9L, 0L, 9L);
        int32_t l_324 = 0x51EA8057L;
        int32_t l_326 = 0x795636F1L;
        int32_t l_328 = 0L;
        int32_t l_331 = (-1L);
        int32_t l_333 = 0x219117F1L;
        int32_t *l_343 = &p_860->g_11;
        int64_t *l_352 = &p_860->g_110;
        int64_t **l_351 = &l_352;
        int64_t ***l_350 = &l_351;
        VECTOR(int64_t, 8) l_367 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x45F02C2562DD2E46L), 0x45F02C2562DD2E46L), 0x45F02C2562DD2E46L, 1L, 0x45F02C2562DD2E46L);
        int32_t l_381 = 0x78949A61L;
        uint8_t l_435 = 0x07L;
        int32_t l_439 = 1L;
        int i;
        (1 + 1);
    }
    (*p_860->g_139) |= (-6L);
    return l_205[0][0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_48(uint64_t * p_49, int32_t * p_50, int32_t  p_51, struct S0 * p_860)
{ /* block id: 53 */
    int64_t *l_208 = &p_860->g_110;
    int64_t **l_207 = &l_208;
    int64_t ***l_209 = &l_207;
    int32_t l_210 = 0x776B1AF0L;
    (*l_209) = l_207;
    return l_210;
}


/* ------------------------------------------ */
/* 
 * reads : p_860->g_141 p_860->g_128 p_860->g_144 p_860->g_98 p_860->g_177 p_860->g_182 p_860->g_189 p_860->g_93 p_860->g_94 p_860->g_136 p_860->g_110 p_860->g_139 p_860->g_204
 * writes: p_860->g_177 p_860->g_124 p_860->g_141
 */
uint64_t * func_52(int16_t  p_53, struct S0 * p_860)
{ /* block id: 43 */
    int8_t l_153 = 0x2CL;
    VECTOR(uint8_t, 2) l_168 = (VECTOR(uint8_t, 2))(255UL, 1UL);
    VECTOR(uint8_t, 4) l_169 = (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 0xE9L), 0xE9L);
    int16_t *l_176 = &p_860->g_177;
    int16_t l_178 = 0x5B42L;
    int32_t *l_179 = (void*)0;
    VECTOR(int8_t, 8) l_190 = (VECTOR(int8_t, 8))(0x1AL, (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, 0x2EL), 0x2EL), 0x2EL, 0x1AL, 0x2EL);
    VECTOR(uint8_t, 4) l_194 = (VECTOR(uint8_t, 4))(0xD5L, (VECTOR(uint8_t, 2))(0xD5L, 0x1AL), 0x1AL);
    uint64_t *l_197 = &p_860->g_22;
    int32_t l_202 = 0x5B11B79EL;
    int i;
    if ((((p_860->g_124 = (((!((safe_add_func_uint16_t_u_u(0x7338L, 65529UL)) < (safe_add_func_int64_t_s_s(l_153, ((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))((safe_sub_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((safe_mod_func_uint16_t_u_u(1UL, (safe_rshift_func_uint16_t_u_u(((*p_860->g_141) <= (-1L)), ((VECTOR(uint16_t, 4))((safe_add_func_uint64_t_u_u(p_860->g_144[1], p_860->g_98[3])), ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(65534UL, ((VECTOR(uint16_t, 2))(0x3F6BL, 0x85DEL)), 65529UL)))).even))), 6UL)).z)))), (safe_add_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(254UL, ((VECTOR(uint8_t, 2))(0x32L, 247UL)), ((VECTOR(uint8_t, 2))(3UL, 0x78L)).even, ((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_168.yx)), 0x2BL, 254UL)).hi, ((VECTOR(uint8_t, 2))(l_169.ww))))).xxxxxyyy, (uint8_t)(safe_mod_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((~(safe_mul_func_int16_t_s_s(((*l_176) |= (-10L)), p_53))), l_178)), FAKE_DIVERGE(p_860->group_0_offset, get_group_id(0), 10)))))).hi, ((VECTOR(uint8_t, 4))(255UL))))))).s6, l_169.y)), p_860->g_98[7])))), 0x54L)), 1L, 2L, (-1L), ((VECTOR(int32_t, 4))(0x25B65589L)))).s02)).xyxyyyxxxxxxxxyy, ((VECTOR(uint32_t, 16))(0x6A1DD2CEL))))).s5)))) == 0UL) , 8UL)) || 4294967295UL) , l_168.y))
    { /* block id: 46 */
        uint32_t l_193[7];
        int32_t *l_200[3];
        uint8_t l_201 = 0x63L;
        int i;
        for (i = 0; i < 7; i++)
            l_193[i] = 4294967295UL;
        for (i = 0; i < 3; i++)
            l_200[i] = &p_860->g_11;
        p_860->g_141 = l_179;
        l_202 &= ((safe_add_func_int32_t_s_s((p_53 < ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))((((VECTOR(int32_t, 4))(p_860->g_182.s23cd)).y | ((l_168.y < FAKE_DIVERGE(p_860->global_0_offset, get_global_id(0), 10)) & ((safe_sub_func_int32_t_s_s((safe_mod_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_860->g_189.xzzz)).zzwzzyyxwxwyxxyw)).sbc)).xyyyxyyx, ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_190.s5121)).yzyxzzzyyzwwzzyy)).s96, ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 16))((safe_sub_func_int8_t_s_s(l_193[0], ((VECTOR(uint8_t, 16))(l_194.yxzxywwzwwwzzzwz)).sf)), p_53, 0L, (safe_mod_func_uint16_t_u_u((((void*)0 != l_197) >= (((*p_860->g_93) == (safe_add_func_uint16_t_u_u(((void*)0 == l_200[1]), 0xBEA8L))) <= p_53)), (*p_860->g_93))), 0x65L, ((VECTOR(int8_t, 4))(0x7DL)), p_860->g_136[0], p_860->g_136[2], p_53, p_860->g_110, p_53, (-4L), 0L)).even))).s6117366151415164)))).hi, ((VECTOR(int8_t, 8))(0x40L)), ((VECTOR(int8_t, 8))(1L))))).hi, (int8_t)0L))).odd))).yxyxyyyxxxxxxyxy, (int8_t)p_53))), ((VECTOR(int8_t, 16))(5L))))).lo, ((VECTOR(int8_t, 8))(0L))))).s02))))), 0x06L, 5UL)).even)), 0x11L, 0x82L)).wxyzyzwyxwwwxzxy, (uint8_t)GROUP_DIVERGE(0, 1)))).s2, 7)), p_53)), (*p_860->g_139))) <= l_201))), ((VECTOR(uint16_t, 4))(0xEB5FL)), 0x340CL, (*p_860->g_93), ((VECTOR(uint16_t, 4))(0UL)), 0x1283L, (*p_860->g_93), ((VECTOR(uint16_t, 2))(1UL)), 6UL)).s26fc)).y), (-1L))) ^ (-10L));
    }
    else
    { /* block id: 49 */
        (*p_860->g_204) = &p_860->g_128;
    }
    return &p_860->g_125;
}


/* ------------------------------------------ */
/* 
 * reads : p_860->g_11 p_860->g_93 p_860->g_98 p_860->g_124 p_860->g_125 p_860->g_94 p_860->g_110 p_860->g_136 p_860->g_144
 * writes: p_860->g_11 p_860->g_87 p_860->g_94 p_860->g_69 p_860->g_121 p_860->g_124 p_860->g_128 p_860->g_136 p_860->g_139 p_860->g_141 p_860->g_144 p_860->g_148
 */
int32_t  func_65(uint64_t * p_66, struct S0 * p_860)
{ /* block id: 18 */
    int32_t *l_77 = &p_860->g_11;
    uint64_t *l_85 = &p_860->g_22;
    int32_t *l_142 = &p_860->g_11;
    int32_t *l_143[3];
    int32_t ***l_147[5];
    int i;
    for (i = 0; i < 3; i++)
        l_143[i] = &p_860->g_128;
    for (i = 0; i < 5; i++)
        l_147[i] = (void*)0;
    for (p_860->g_11 = 0; (p_860->g_11 > (-28)); p_860->g_11 = safe_sub_func_uint32_t_u_u(p_860->g_11, 1))
    { /* block id: 21 */
        int32_t l_84 = 9L;
        uint16_t *l_86 = &p_860->g_87;
        uint16_t *l_95 = &p_860->g_94;
        VECTOR(int32_t, 8) l_129 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x0FB7EBE1L), 0x0FB7EBE1L), 0x0FB7EBE1L, 1L, 0x0FB7EBE1L);
        int32_t **l_140[7][1][8] = {{{&l_77,&l_77,(void*)0,(void*)0,&l_77,(void*)0,(void*)0,&l_77}},{{&l_77,&l_77,(void*)0,(void*)0,&l_77,(void*)0,(void*)0,&l_77}},{{&l_77,&l_77,(void*)0,(void*)0,&l_77,(void*)0,(void*)0,&l_77}},{{&l_77,&l_77,(void*)0,(void*)0,&l_77,(void*)0,(void*)0,&l_77}},{{&l_77,&l_77,(void*)0,(void*)0,&l_77,(void*)0,(void*)0,&l_77}},{{&l_77,&l_77,(void*)0,(void*)0,&l_77,(void*)0,(void*)0,&l_77}},{{&l_77,&l_77,(void*)0,(void*)0,&l_77,(void*)0,(void*)0,&l_77}}};
        int i, j, k;
        p_860->g_141 = (p_860->g_139 = func_72(l_77, (safe_div_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0x47E9L, 65532UL)).lo, 5)) , l_84) | (!(((*l_86) = (l_85 == &p_860->g_22)) > (l_129.s5 &= func_88(l_77, p_860->g_93, (p_860->g_11 , &p_860->g_11), l_95, p_860))))), p_860->g_110)), (*l_77), &p_860->g_11, p_860));
    }
    p_860->g_144[1]++;
    p_860->g_148 = &l_77;
    return (*l_142);
}


/* ------------------------------------------ */
/* 
 * reads : p_860->g_136
 * writes: p_860->g_136
 */
int32_t * func_72(int32_t * p_73, uint8_t  p_74, uint8_t  p_75, int32_t * p_76, struct S0 * p_860)
{ /* block id: 34 */
    int32_t *l_130 = &p_860->g_128;
    int32_t *l_131 = &p_860->g_128;
    int32_t *l_132 = &p_860->g_128;
    int32_t *l_133 = (void*)0;
    int32_t *l_134 = &p_860->g_128;
    int32_t *l_135[3][4][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    int i, j, k;
    p_860->g_136[0]--;
    return l_131;
}


/* ------------------------------------------ */
/* 
 * reads : p_860->g_98 p_860->g_93 p_860->g_11 p_860->g_124 p_860->g_125 p_860->g_94
 * writes: p_860->g_94 p_860->g_69 p_860->g_121 p_860->g_124 p_860->g_128
 */
uint16_t  func_88(int32_t * p_89, uint16_t * p_90, int32_t * p_91, uint16_t * p_92, struct S0 * p_860)
{ /* block id: 23 */
    int16_t l_107 = (-3L);
    uint64_t *l_108[2];
    int64_t *l_109[7] = {(void*)0,&p_860->g_110,(void*)0,(void*)0,&p_860->g_110,(void*)0,(void*)0};
    int32_t l_111 = (-6L);
    VECTOR(uint16_t, 4) l_112 = (VECTOR(uint16_t, 4))(0x59E9L, (VECTOR(uint16_t, 2))(0x59E9L, 0x621CL), 0x621CL);
    int8_t *l_119 = &p_860->g_69;
    uint32_t *l_120 = &p_860->g_121;
    uint32_t *l_122 = (void*)0;
    uint32_t *l_123 = &p_860->g_124;
    int32_t l_126 = 9L;
    int32_t *l_127[5];
    int i;
    for (i = 0; i < 2; i++)
        l_108[i] = (void*)0;
    for (i = 0; i < 5; i++)
        l_127[i] = &p_860->g_128;
    p_860->g_128 = (safe_mul_func_int8_t_s_s(((((*p_860->g_93) = p_860->g_98[3]) > (0x5AE0A7320B692EDFL <= (((safe_rshift_func_uint8_t_u_s((safe_mod_func_int64_t_s_s((l_111 &= ((safe_mod_func_uint32_t_u_u(l_107, 0xB961AC8BL)) , (&p_860->g_22 == (l_108[0] = l_108[0])))), (l_126 = (((VECTOR(uint16_t, 8))(l_112.zywxzzyx)).s1 ^ ((safe_mod_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((safe_mod_func_int32_t_s_s((*p_91), ((*l_123) |= ((*l_120) = (((l_112.z != FAKE_DIVERGE(p_860->local_2_offset, get_local_id(2), 10)) >= ((((*l_119) = p_860->g_98[5]) > l_112.z) , 0x64EC4FEFL)) & 0UL))))), p_860->g_98[3])) , 0x47DCL) && 0x63BBL), 0x58L)) , p_860->g_125))))), p_860->g_125)) < 0xB865L) == l_112.y))) ^ l_112.x), 0x22L));
    return (*p_90);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_861;
    struct S0* p_860 = &c_861;
    struct S0 c_862 = {
        (-9L), // p_860->g_11
        0x68FAB8D2321210CBL, // p_860->g_22
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), // p_860->g_56
        1L, // p_860->g_69
        0x0CD5L, // p_860->g_87
        0xEF36L, // p_860->g_94
        &p_860->g_94, // p_860->g_93
        {6UL,6UL,6UL,6UL,6UL,6UL,6UL,6UL}, // p_860->g_98
        0L, // p_860->g_110
        4294967292UL, // p_860->g_121
        0x1FEC7F1FL, // p_860->g_124
        0xB2801F5D8E54FB19L, // p_860->g_125
        0L, // p_860->g_128
        {0x8FL,0x8FL,0x8FL}, // p_860->g_136
        &p_860->g_128, // p_860->g_139
        &p_860->g_128, // p_860->g_141
        {0xE0F9L,1UL,0xE0F9L,0xE0F9L,1UL,0xE0F9L}, // p_860->g_144
        &p_860->g_141, // p_860->g_148
        1L, // p_860->g_177
        (VECTOR(int32_t, 16))(0x4AAA0BFBL, (VECTOR(int32_t, 4))(0x4AAA0BFBL, (VECTOR(int32_t, 2))(0x4AAA0BFBL, 1L), 1L), 1L, 0x4AAA0BFBL, 1L, (VECTOR(int32_t, 2))(0x4AAA0BFBL, 1L), (VECTOR(int32_t, 2))(0x4AAA0BFBL, 1L), 0x4AAA0BFBL, 1L, 0x4AAA0BFBL, 1L), // p_860->g_182
        (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, 0x22L), 0x22L), // p_860->g_189
        {{&p_860->g_139,&p_860->g_139,&p_860->g_139}}, // p_860->g_203
        &p_860->g_141, // p_860->g_204
        {{9L,0x5B295318L,0x5B295318L,9L,9L},{9L,0x5B295318L,0x5B295318L,9L,9L},{9L,0x5B295318L,0x5B295318L,9L,9L},{9L,0x5B295318L,0x5B295318L,9L,9L},{9L,0x5B295318L,0x5B295318L,9L,9L},{9L,0x5B295318L,0x5B295318L,9L,9L}}, // p_860->g_206
        &p_860->g_141, // p_860->g_213
        (VECTOR(uint64_t, 16))(0x319A55D285D8708DL, (VECTOR(uint64_t, 4))(0x319A55D285D8708DL, (VECTOR(uint64_t, 2))(0x319A55D285D8708DL, 0xED5134EBF0AE526CL), 0xED5134EBF0AE526CL), 0xED5134EBF0AE526CL, 0x319A55D285D8708DL, 0xED5134EBF0AE526CL, (VECTOR(uint64_t, 2))(0x319A55D285D8708DL, 0xED5134EBF0AE526CL), (VECTOR(uint64_t, 2))(0x319A55D285D8708DL, 0xED5134EBF0AE526CL), 0x319A55D285D8708DL, 0xED5134EBF0AE526CL, 0x319A55D285D8708DL, 0xED5134EBF0AE526CL), // p_860->g_219
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xAB014F3CL), 0xAB014F3CL), 0xAB014F3CL, 4294967295UL, 0xAB014F3CL), // p_860->g_229
        &p_860->g_110, // p_860->g_242
        {&p_860->g_242}, // p_860->g_241
        0x87L, // p_860->g_244
        &p_860->g_244, // p_860->g_243
        (VECTOR(uint8_t, 16))(0x76L, (VECTOR(uint8_t, 4))(0x76L, (VECTOR(uint8_t, 2))(0x76L, 1UL), 1UL), 1UL, 0x76L, 1UL, (VECTOR(uint8_t, 2))(0x76L, 1UL), (VECTOR(uint8_t, 2))(0x76L, 1UL), 0x76L, 1UL, 0x76L, 1UL), // p_860->g_311
        (VECTOR(int64_t, 8))((-7L), (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), (-1L)), (-1L)), (-1L), (-7L), (-1L)), // p_860->g_364
        (VECTOR(int64_t, 4))(0x1AA73F9B96A1A296L, (VECTOR(int64_t, 2))(0x1AA73F9B96A1A296L, 0x0C06625B2EA5B64EL), 0x0C06625B2EA5B64EL), // p_860->g_368
        (VECTOR(uint16_t, 16))(0x2CE1L, (VECTOR(uint16_t, 4))(0x2CE1L, (VECTOR(uint16_t, 2))(0x2CE1L, 0x6F2CL), 0x6F2CL), 0x6F2CL, 0x2CE1L, 0x6F2CL, (VECTOR(uint16_t, 2))(0x2CE1L, 0x6F2CL), (VECTOR(uint16_t, 2))(0x2CE1L, 0x6F2CL), 0x2CE1L, 0x6F2CL, 0x2CE1L, 0x6F2CL), // p_860->g_394
        (VECTOR(int64_t, 2))(0x0E53794E8506630CL, 0x137D397411F6EFB8L), // p_860->g_414
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x6221E7FB5F397EBDL), 0x6221E7FB5F397EBDL), 0x6221E7FB5F397EBDL, 0L, 0x6221E7FB5F397EBDL), // p_860->g_418
        (-1L), // p_860->g_432
        &p_860->g_141, // p_860->g_440
        1UL, // p_860->g_445
        (VECTOR(uint16_t, 8))(0x1F2FL, (VECTOR(uint16_t, 4))(0x1F2FL, (VECTOR(uint16_t, 2))(0x1F2FL, 6UL), 6UL), 6UL, 0x1F2FL, 6UL), // p_860->g_475
        (VECTOR(uint16_t, 16))(0x8D34L, (VECTOR(uint16_t, 4))(0x8D34L, (VECTOR(uint16_t, 2))(0x8D34L, 0x1C3AL), 0x1C3AL), 0x1C3AL, 0x8D34L, 0x1C3AL, (VECTOR(uint16_t, 2))(0x8D34L, 0x1C3AL), (VECTOR(uint16_t, 2))(0x8D34L, 0x1C3AL), 0x8D34L, 0x1C3AL, 0x8D34L, 0x1C3AL), // p_860->g_479
        (VECTOR(uint16_t, 8))(65527UL, (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 1UL), 1UL), 1UL, 65527UL, 1UL), // p_860->g_480
        (VECTOR(uint16_t, 2))(1UL, 65526UL), // p_860->g_482
        (VECTOR(int64_t, 2))((-1L), 3L), // p_860->g_495
        (VECTOR(uint64_t, 16))(0x299352BD7975F351L, (VECTOR(uint64_t, 4))(0x299352BD7975F351L, (VECTOR(uint64_t, 2))(0x299352BD7975F351L, 0x4E61BD9FEBDBCBF8L), 0x4E61BD9FEBDBCBF8L), 0x4E61BD9FEBDBCBF8L, 0x299352BD7975F351L, 0x4E61BD9FEBDBCBF8L, (VECTOR(uint64_t, 2))(0x299352BD7975F351L, 0x4E61BD9FEBDBCBF8L), (VECTOR(uint64_t, 2))(0x299352BD7975F351L, 0x4E61BD9FEBDBCBF8L), 0x299352BD7975F351L, 0x4E61BD9FEBDBCBF8L, 0x299352BD7975F351L, 0x4E61BD9FEBDBCBF8L), // p_860->g_517
        {{(-7L)},{(-7L)},{(-7L)},{(-7L)}}, // p_860->g_532
        0xDA39L, // p_860->g_533
        (VECTOR(int32_t, 2))(0x6AA33F0CL, 0x48E7EB0FL), // p_860->g_537
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x076DC8C3025EBD53L), // p_860->g_546
        0x9A8B5705L, // p_860->g_550
        (VECTOR(uint32_t, 4))(0xE384B01DL, (VECTOR(uint32_t, 2))(0xE384B01DL, 0x455D2C69L), 0x455D2C69L), // p_860->g_554
        (VECTOR(uint8_t, 8))(0xE3L, (VECTOR(uint8_t, 4))(0xE3L, (VECTOR(uint8_t, 2))(0xE3L, 0xEBL), 0xEBL), 0xEBL, 0xE3L, 0xEBL), // p_860->g_578
        &p_860->g_139, // p_860->g_591
        (VECTOR(uint32_t, 8))(0xA027FD3AL, (VECTOR(uint32_t, 4))(0xA027FD3AL, (VECTOR(uint32_t, 2))(0xA027FD3AL, 4294967294UL), 4294967294UL), 4294967294UL, 0xA027FD3AL, 4294967294UL), // p_860->g_615
        &p_860->g_532[3][0], // p_860->g_639
        &p_860->g_639, // p_860->g_638
        0x2717965BCC16F7F0L, // p_860->g_641
        (VECTOR(int32_t, 8))(0x738988FBL, (VECTOR(int32_t, 4))(0x738988FBL, (VECTOR(int32_t, 2))(0x738988FBL, 0x62C6853EL), 0x62C6853EL), 0x62C6853EL, 0x738988FBL, 0x62C6853EL), // p_860->g_703
        (VECTOR(int32_t, 16))(0x205C0999L, (VECTOR(int32_t, 4))(0x205C0999L, (VECTOR(int32_t, 2))(0x205C0999L, 6L), 6L), 6L, 0x205C0999L, 6L, (VECTOR(int32_t, 2))(0x205C0999L, 6L), (VECTOR(int32_t, 2))(0x205C0999L, 6L), 0x205C0999L, 6L, 0x205C0999L, 6L), // p_860->g_704
        (VECTOR(uint16_t, 8))(0xB2F5L, (VECTOR(uint16_t, 4))(0xB2F5L, (VECTOR(uint16_t, 2))(0xB2F5L, 65530UL), 65530UL), 65530UL, 0xB2F5L, 65530UL), // p_860->g_728
        (VECTOR(int8_t, 2))(0x4AL, 0x06L), // p_860->g_774
        &p_860->g_244, // p_860->g_781
        &p_860->g_781, // p_860->g_780
        {{{&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,(void*)0,&p_860->g_780,(void*)0},{&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,(void*)0,&p_860->g_780,(void*)0},{&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,(void*)0,&p_860->g_780,(void*)0},{&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,(void*)0,&p_860->g_780,(void*)0},{&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,(void*)0,&p_860->g_780,(void*)0},{&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,&p_860->g_780,(void*)0,&p_860->g_780,(void*)0}}}, // p_860->g_779
        (VECTOR(int32_t, 4))(0x1D98DE09L, (VECTOR(int32_t, 2))(0x1D98DE09L, 0L), 0L), // p_860->g_788
        (VECTOR(uint32_t, 2))(0UL, 0x945ABDFDL), // p_860->g_796
        (VECTOR(uint64_t, 2))(0xBB4607D8A943BFCAL, 1UL), // p_860->g_803
        (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x935F02F6L), 0x935F02F6L), // p_860->g_838
        sequence_input[get_global_id(0)], // p_860->global_0_offset
        sequence_input[get_global_id(1)], // p_860->global_1_offset
        sequence_input[get_global_id(2)], // p_860->global_2_offset
        sequence_input[get_local_id(0)], // p_860->local_0_offset
        sequence_input[get_local_id(1)], // p_860->local_1_offset
        sequence_input[get_local_id(2)], // p_860->local_2_offset
        sequence_input[get_group_id(0)], // p_860->group_0_offset
        sequence_input[get_group_id(1)], // p_860->group_1_offset
        sequence_input[get_group_id(2)], // p_860->group_2_offset
    };
    c_861 = c_862;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_860);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_860->g_11, "p_860->g_11", print_hash_value);
    transparent_crc(p_860->g_22, "p_860->g_22", print_hash_value);
    transparent_crc(p_860->g_56.x, "p_860->g_56.x", print_hash_value);
    transparent_crc(p_860->g_56.y, "p_860->g_56.y", print_hash_value);
    transparent_crc(p_860->g_56.z, "p_860->g_56.z", print_hash_value);
    transparent_crc(p_860->g_56.w, "p_860->g_56.w", print_hash_value);
    transparent_crc(p_860->g_69, "p_860->g_69", print_hash_value);
    transparent_crc(p_860->g_87, "p_860->g_87", print_hash_value);
    transparent_crc(p_860->g_94, "p_860->g_94", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_860->g_98[i], "p_860->g_98[i]", print_hash_value);

    }
    transparent_crc(p_860->g_110, "p_860->g_110", print_hash_value);
    transparent_crc(p_860->g_121, "p_860->g_121", print_hash_value);
    transparent_crc(p_860->g_124, "p_860->g_124", print_hash_value);
    transparent_crc(p_860->g_125, "p_860->g_125", print_hash_value);
    transparent_crc(p_860->g_128, "p_860->g_128", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_860->g_136[i], "p_860->g_136[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_860->g_144[i], "p_860->g_144[i]", print_hash_value);

    }
    transparent_crc(p_860->g_177, "p_860->g_177", print_hash_value);
    transparent_crc(p_860->g_182.s0, "p_860->g_182.s0", print_hash_value);
    transparent_crc(p_860->g_182.s1, "p_860->g_182.s1", print_hash_value);
    transparent_crc(p_860->g_182.s2, "p_860->g_182.s2", print_hash_value);
    transparent_crc(p_860->g_182.s3, "p_860->g_182.s3", print_hash_value);
    transparent_crc(p_860->g_182.s4, "p_860->g_182.s4", print_hash_value);
    transparent_crc(p_860->g_182.s5, "p_860->g_182.s5", print_hash_value);
    transparent_crc(p_860->g_182.s6, "p_860->g_182.s6", print_hash_value);
    transparent_crc(p_860->g_182.s7, "p_860->g_182.s7", print_hash_value);
    transparent_crc(p_860->g_182.s8, "p_860->g_182.s8", print_hash_value);
    transparent_crc(p_860->g_182.s9, "p_860->g_182.s9", print_hash_value);
    transparent_crc(p_860->g_182.sa, "p_860->g_182.sa", print_hash_value);
    transparent_crc(p_860->g_182.sb, "p_860->g_182.sb", print_hash_value);
    transparent_crc(p_860->g_182.sc, "p_860->g_182.sc", print_hash_value);
    transparent_crc(p_860->g_182.sd, "p_860->g_182.sd", print_hash_value);
    transparent_crc(p_860->g_182.se, "p_860->g_182.se", print_hash_value);
    transparent_crc(p_860->g_182.sf, "p_860->g_182.sf", print_hash_value);
    transparent_crc(p_860->g_189.x, "p_860->g_189.x", print_hash_value);
    transparent_crc(p_860->g_189.y, "p_860->g_189.y", print_hash_value);
    transparent_crc(p_860->g_189.z, "p_860->g_189.z", print_hash_value);
    transparent_crc(p_860->g_189.w, "p_860->g_189.w", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_860->g_206[i][j], "p_860->g_206[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_860->g_219.s0, "p_860->g_219.s0", print_hash_value);
    transparent_crc(p_860->g_219.s1, "p_860->g_219.s1", print_hash_value);
    transparent_crc(p_860->g_219.s2, "p_860->g_219.s2", print_hash_value);
    transparent_crc(p_860->g_219.s3, "p_860->g_219.s3", print_hash_value);
    transparent_crc(p_860->g_219.s4, "p_860->g_219.s4", print_hash_value);
    transparent_crc(p_860->g_219.s5, "p_860->g_219.s5", print_hash_value);
    transparent_crc(p_860->g_219.s6, "p_860->g_219.s6", print_hash_value);
    transparent_crc(p_860->g_219.s7, "p_860->g_219.s7", print_hash_value);
    transparent_crc(p_860->g_219.s8, "p_860->g_219.s8", print_hash_value);
    transparent_crc(p_860->g_219.s9, "p_860->g_219.s9", print_hash_value);
    transparent_crc(p_860->g_219.sa, "p_860->g_219.sa", print_hash_value);
    transparent_crc(p_860->g_219.sb, "p_860->g_219.sb", print_hash_value);
    transparent_crc(p_860->g_219.sc, "p_860->g_219.sc", print_hash_value);
    transparent_crc(p_860->g_219.sd, "p_860->g_219.sd", print_hash_value);
    transparent_crc(p_860->g_219.se, "p_860->g_219.se", print_hash_value);
    transparent_crc(p_860->g_219.sf, "p_860->g_219.sf", print_hash_value);
    transparent_crc(p_860->g_229.s0, "p_860->g_229.s0", print_hash_value);
    transparent_crc(p_860->g_229.s1, "p_860->g_229.s1", print_hash_value);
    transparent_crc(p_860->g_229.s2, "p_860->g_229.s2", print_hash_value);
    transparent_crc(p_860->g_229.s3, "p_860->g_229.s3", print_hash_value);
    transparent_crc(p_860->g_229.s4, "p_860->g_229.s4", print_hash_value);
    transparent_crc(p_860->g_229.s5, "p_860->g_229.s5", print_hash_value);
    transparent_crc(p_860->g_229.s6, "p_860->g_229.s6", print_hash_value);
    transparent_crc(p_860->g_229.s7, "p_860->g_229.s7", print_hash_value);
    transparent_crc(p_860->g_244, "p_860->g_244", print_hash_value);
    transparent_crc(p_860->g_311.s0, "p_860->g_311.s0", print_hash_value);
    transparent_crc(p_860->g_311.s1, "p_860->g_311.s1", print_hash_value);
    transparent_crc(p_860->g_311.s2, "p_860->g_311.s2", print_hash_value);
    transparent_crc(p_860->g_311.s3, "p_860->g_311.s3", print_hash_value);
    transparent_crc(p_860->g_311.s4, "p_860->g_311.s4", print_hash_value);
    transparent_crc(p_860->g_311.s5, "p_860->g_311.s5", print_hash_value);
    transparent_crc(p_860->g_311.s6, "p_860->g_311.s6", print_hash_value);
    transparent_crc(p_860->g_311.s7, "p_860->g_311.s7", print_hash_value);
    transparent_crc(p_860->g_311.s8, "p_860->g_311.s8", print_hash_value);
    transparent_crc(p_860->g_311.s9, "p_860->g_311.s9", print_hash_value);
    transparent_crc(p_860->g_311.sa, "p_860->g_311.sa", print_hash_value);
    transparent_crc(p_860->g_311.sb, "p_860->g_311.sb", print_hash_value);
    transparent_crc(p_860->g_311.sc, "p_860->g_311.sc", print_hash_value);
    transparent_crc(p_860->g_311.sd, "p_860->g_311.sd", print_hash_value);
    transparent_crc(p_860->g_311.se, "p_860->g_311.se", print_hash_value);
    transparent_crc(p_860->g_311.sf, "p_860->g_311.sf", print_hash_value);
    transparent_crc(p_860->g_364.s0, "p_860->g_364.s0", print_hash_value);
    transparent_crc(p_860->g_364.s1, "p_860->g_364.s1", print_hash_value);
    transparent_crc(p_860->g_364.s2, "p_860->g_364.s2", print_hash_value);
    transparent_crc(p_860->g_364.s3, "p_860->g_364.s3", print_hash_value);
    transparent_crc(p_860->g_364.s4, "p_860->g_364.s4", print_hash_value);
    transparent_crc(p_860->g_364.s5, "p_860->g_364.s5", print_hash_value);
    transparent_crc(p_860->g_364.s6, "p_860->g_364.s6", print_hash_value);
    transparent_crc(p_860->g_364.s7, "p_860->g_364.s7", print_hash_value);
    transparent_crc(p_860->g_368.x, "p_860->g_368.x", print_hash_value);
    transparent_crc(p_860->g_368.y, "p_860->g_368.y", print_hash_value);
    transparent_crc(p_860->g_368.z, "p_860->g_368.z", print_hash_value);
    transparent_crc(p_860->g_368.w, "p_860->g_368.w", print_hash_value);
    transparent_crc(p_860->g_394.s0, "p_860->g_394.s0", print_hash_value);
    transparent_crc(p_860->g_394.s1, "p_860->g_394.s1", print_hash_value);
    transparent_crc(p_860->g_394.s2, "p_860->g_394.s2", print_hash_value);
    transparent_crc(p_860->g_394.s3, "p_860->g_394.s3", print_hash_value);
    transparent_crc(p_860->g_394.s4, "p_860->g_394.s4", print_hash_value);
    transparent_crc(p_860->g_394.s5, "p_860->g_394.s5", print_hash_value);
    transparent_crc(p_860->g_394.s6, "p_860->g_394.s6", print_hash_value);
    transparent_crc(p_860->g_394.s7, "p_860->g_394.s7", print_hash_value);
    transparent_crc(p_860->g_394.s8, "p_860->g_394.s8", print_hash_value);
    transparent_crc(p_860->g_394.s9, "p_860->g_394.s9", print_hash_value);
    transparent_crc(p_860->g_394.sa, "p_860->g_394.sa", print_hash_value);
    transparent_crc(p_860->g_394.sb, "p_860->g_394.sb", print_hash_value);
    transparent_crc(p_860->g_394.sc, "p_860->g_394.sc", print_hash_value);
    transparent_crc(p_860->g_394.sd, "p_860->g_394.sd", print_hash_value);
    transparent_crc(p_860->g_394.se, "p_860->g_394.se", print_hash_value);
    transparent_crc(p_860->g_394.sf, "p_860->g_394.sf", print_hash_value);
    transparent_crc(p_860->g_414.x, "p_860->g_414.x", print_hash_value);
    transparent_crc(p_860->g_414.y, "p_860->g_414.y", print_hash_value);
    transparent_crc(p_860->g_418.s0, "p_860->g_418.s0", print_hash_value);
    transparent_crc(p_860->g_418.s1, "p_860->g_418.s1", print_hash_value);
    transparent_crc(p_860->g_418.s2, "p_860->g_418.s2", print_hash_value);
    transparent_crc(p_860->g_418.s3, "p_860->g_418.s3", print_hash_value);
    transparent_crc(p_860->g_418.s4, "p_860->g_418.s4", print_hash_value);
    transparent_crc(p_860->g_418.s5, "p_860->g_418.s5", print_hash_value);
    transparent_crc(p_860->g_418.s6, "p_860->g_418.s6", print_hash_value);
    transparent_crc(p_860->g_418.s7, "p_860->g_418.s7", print_hash_value);
    transparent_crc(p_860->g_432, "p_860->g_432", print_hash_value);
    transparent_crc(p_860->g_445, "p_860->g_445", print_hash_value);
    transparent_crc(p_860->g_475.s0, "p_860->g_475.s0", print_hash_value);
    transparent_crc(p_860->g_475.s1, "p_860->g_475.s1", print_hash_value);
    transparent_crc(p_860->g_475.s2, "p_860->g_475.s2", print_hash_value);
    transparent_crc(p_860->g_475.s3, "p_860->g_475.s3", print_hash_value);
    transparent_crc(p_860->g_475.s4, "p_860->g_475.s4", print_hash_value);
    transparent_crc(p_860->g_475.s5, "p_860->g_475.s5", print_hash_value);
    transparent_crc(p_860->g_475.s6, "p_860->g_475.s6", print_hash_value);
    transparent_crc(p_860->g_475.s7, "p_860->g_475.s7", print_hash_value);
    transparent_crc(p_860->g_479.s0, "p_860->g_479.s0", print_hash_value);
    transparent_crc(p_860->g_479.s1, "p_860->g_479.s1", print_hash_value);
    transparent_crc(p_860->g_479.s2, "p_860->g_479.s2", print_hash_value);
    transparent_crc(p_860->g_479.s3, "p_860->g_479.s3", print_hash_value);
    transparent_crc(p_860->g_479.s4, "p_860->g_479.s4", print_hash_value);
    transparent_crc(p_860->g_479.s5, "p_860->g_479.s5", print_hash_value);
    transparent_crc(p_860->g_479.s6, "p_860->g_479.s6", print_hash_value);
    transparent_crc(p_860->g_479.s7, "p_860->g_479.s7", print_hash_value);
    transparent_crc(p_860->g_479.s8, "p_860->g_479.s8", print_hash_value);
    transparent_crc(p_860->g_479.s9, "p_860->g_479.s9", print_hash_value);
    transparent_crc(p_860->g_479.sa, "p_860->g_479.sa", print_hash_value);
    transparent_crc(p_860->g_479.sb, "p_860->g_479.sb", print_hash_value);
    transparent_crc(p_860->g_479.sc, "p_860->g_479.sc", print_hash_value);
    transparent_crc(p_860->g_479.sd, "p_860->g_479.sd", print_hash_value);
    transparent_crc(p_860->g_479.se, "p_860->g_479.se", print_hash_value);
    transparent_crc(p_860->g_479.sf, "p_860->g_479.sf", print_hash_value);
    transparent_crc(p_860->g_480.s0, "p_860->g_480.s0", print_hash_value);
    transparent_crc(p_860->g_480.s1, "p_860->g_480.s1", print_hash_value);
    transparent_crc(p_860->g_480.s2, "p_860->g_480.s2", print_hash_value);
    transparent_crc(p_860->g_480.s3, "p_860->g_480.s3", print_hash_value);
    transparent_crc(p_860->g_480.s4, "p_860->g_480.s4", print_hash_value);
    transparent_crc(p_860->g_480.s5, "p_860->g_480.s5", print_hash_value);
    transparent_crc(p_860->g_480.s6, "p_860->g_480.s6", print_hash_value);
    transparent_crc(p_860->g_480.s7, "p_860->g_480.s7", print_hash_value);
    transparent_crc(p_860->g_482.x, "p_860->g_482.x", print_hash_value);
    transparent_crc(p_860->g_482.y, "p_860->g_482.y", print_hash_value);
    transparent_crc(p_860->g_495.x, "p_860->g_495.x", print_hash_value);
    transparent_crc(p_860->g_495.y, "p_860->g_495.y", print_hash_value);
    transparent_crc(p_860->g_517.s0, "p_860->g_517.s0", print_hash_value);
    transparent_crc(p_860->g_517.s1, "p_860->g_517.s1", print_hash_value);
    transparent_crc(p_860->g_517.s2, "p_860->g_517.s2", print_hash_value);
    transparent_crc(p_860->g_517.s3, "p_860->g_517.s3", print_hash_value);
    transparent_crc(p_860->g_517.s4, "p_860->g_517.s4", print_hash_value);
    transparent_crc(p_860->g_517.s5, "p_860->g_517.s5", print_hash_value);
    transparent_crc(p_860->g_517.s6, "p_860->g_517.s6", print_hash_value);
    transparent_crc(p_860->g_517.s7, "p_860->g_517.s7", print_hash_value);
    transparent_crc(p_860->g_517.s8, "p_860->g_517.s8", print_hash_value);
    transparent_crc(p_860->g_517.s9, "p_860->g_517.s9", print_hash_value);
    transparent_crc(p_860->g_517.sa, "p_860->g_517.sa", print_hash_value);
    transparent_crc(p_860->g_517.sb, "p_860->g_517.sb", print_hash_value);
    transparent_crc(p_860->g_517.sc, "p_860->g_517.sc", print_hash_value);
    transparent_crc(p_860->g_517.sd, "p_860->g_517.sd", print_hash_value);
    transparent_crc(p_860->g_517.se, "p_860->g_517.se", print_hash_value);
    transparent_crc(p_860->g_517.sf, "p_860->g_517.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_860->g_532[i][j], "p_860->g_532[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_860->g_533, "p_860->g_533", print_hash_value);
    transparent_crc(p_860->g_537.x, "p_860->g_537.x", print_hash_value);
    transparent_crc(p_860->g_537.y, "p_860->g_537.y", print_hash_value);
    transparent_crc(p_860->g_546.x, "p_860->g_546.x", print_hash_value);
    transparent_crc(p_860->g_546.y, "p_860->g_546.y", print_hash_value);
    transparent_crc(p_860->g_550, "p_860->g_550", print_hash_value);
    transparent_crc(p_860->g_554.x, "p_860->g_554.x", print_hash_value);
    transparent_crc(p_860->g_554.y, "p_860->g_554.y", print_hash_value);
    transparent_crc(p_860->g_554.z, "p_860->g_554.z", print_hash_value);
    transparent_crc(p_860->g_554.w, "p_860->g_554.w", print_hash_value);
    transparent_crc(p_860->g_578.s0, "p_860->g_578.s0", print_hash_value);
    transparent_crc(p_860->g_578.s1, "p_860->g_578.s1", print_hash_value);
    transparent_crc(p_860->g_578.s2, "p_860->g_578.s2", print_hash_value);
    transparent_crc(p_860->g_578.s3, "p_860->g_578.s3", print_hash_value);
    transparent_crc(p_860->g_578.s4, "p_860->g_578.s4", print_hash_value);
    transparent_crc(p_860->g_578.s5, "p_860->g_578.s5", print_hash_value);
    transparent_crc(p_860->g_578.s6, "p_860->g_578.s6", print_hash_value);
    transparent_crc(p_860->g_578.s7, "p_860->g_578.s7", print_hash_value);
    transparent_crc(p_860->g_615.s0, "p_860->g_615.s0", print_hash_value);
    transparent_crc(p_860->g_615.s1, "p_860->g_615.s1", print_hash_value);
    transparent_crc(p_860->g_615.s2, "p_860->g_615.s2", print_hash_value);
    transparent_crc(p_860->g_615.s3, "p_860->g_615.s3", print_hash_value);
    transparent_crc(p_860->g_615.s4, "p_860->g_615.s4", print_hash_value);
    transparent_crc(p_860->g_615.s5, "p_860->g_615.s5", print_hash_value);
    transparent_crc(p_860->g_615.s6, "p_860->g_615.s6", print_hash_value);
    transparent_crc(p_860->g_615.s7, "p_860->g_615.s7", print_hash_value);
    transparent_crc(p_860->g_641, "p_860->g_641", print_hash_value);
    transparent_crc(p_860->g_703.s0, "p_860->g_703.s0", print_hash_value);
    transparent_crc(p_860->g_703.s1, "p_860->g_703.s1", print_hash_value);
    transparent_crc(p_860->g_703.s2, "p_860->g_703.s2", print_hash_value);
    transparent_crc(p_860->g_703.s3, "p_860->g_703.s3", print_hash_value);
    transparent_crc(p_860->g_703.s4, "p_860->g_703.s4", print_hash_value);
    transparent_crc(p_860->g_703.s5, "p_860->g_703.s5", print_hash_value);
    transparent_crc(p_860->g_703.s6, "p_860->g_703.s6", print_hash_value);
    transparent_crc(p_860->g_703.s7, "p_860->g_703.s7", print_hash_value);
    transparent_crc(p_860->g_704.s0, "p_860->g_704.s0", print_hash_value);
    transparent_crc(p_860->g_704.s1, "p_860->g_704.s1", print_hash_value);
    transparent_crc(p_860->g_704.s2, "p_860->g_704.s2", print_hash_value);
    transparent_crc(p_860->g_704.s3, "p_860->g_704.s3", print_hash_value);
    transparent_crc(p_860->g_704.s4, "p_860->g_704.s4", print_hash_value);
    transparent_crc(p_860->g_704.s5, "p_860->g_704.s5", print_hash_value);
    transparent_crc(p_860->g_704.s6, "p_860->g_704.s6", print_hash_value);
    transparent_crc(p_860->g_704.s7, "p_860->g_704.s7", print_hash_value);
    transparent_crc(p_860->g_704.s8, "p_860->g_704.s8", print_hash_value);
    transparent_crc(p_860->g_704.s9, "p_860->g_704.s9", print_hash_value);
    transparent_crc(p_860->g_704.sa, "p_860->g_704.sa", print_hash_value);
    transparent_crc(p_860->g_704.sb, "p_860->g_704.sb", print_hash_value);
    transparent_crc(p_860->g_704.sc, "p_860->g_704.sc", print_hash_value);
    transparent_crc(p_860->g_704.sd, "p_860->g_704.sd", print_hash_value);
    transparent_crc(p_860->g_704.se, "p_860->g_704.se", print_hash_value);
    transparent_crc(p_860->g_704.sf, "p_860->g_704.sf", print_hash_value);
    transparent_crc(p_860->g_728.s0, "p_860->g_728.s0", print_hash_value);
    transparent_crc(p_860->g_728.s1, "p_860->g_728.s1", print_hash_value);
    transparent_crc(p_860->g_728.s2, "p_860->g_728.s2", print_hash_value);
    transparent_crc(p_860->g_728.s3, "p_860->g_728.s3", print_hash_value);
    transparent_crc(p_860->g_728.s4, "p_860->g_728.s4", print_hash_value);
    transparent_crc(p_860->g_728.s5, "p_860->g_728.s5", print_hash_value);
    transparent_crc(p_860->g_728.s6, "p_860->g_728.s6", print_hash_value);
    transparent_crc(p_860->g_728.s7, "p_860->g_728.s7", print_hash_value);
    transparent_crc(p_860->g_774.x, "p_860->g_774.x", print_hash_value);
    transparent_crc(p_860->g_774.y, "p_860->g_774.y", print_hash_value);
    transparent_crc(p_860->g_788.x, "p_860->g_788.x", print_hash_value);
    transparent_crc(p_860->g_788.y, "p_860->g_788.y", print_hash_value);
    transparent_crc(p_860->g_788.z, "p_860->g_788.z", print_hash_value);
    transparent_crc(p_860->g_788.w, "p_860->g_788.w", print_hash_value);
    transparent_crc(p_860->g_796.x, "p_860->g_796.x", print_hash_value);
    transparent_crc(p_860->g_796.y, "p_860->g_796.y", print_hash_value);
    transparent_crc(p_860->g_803.x, "p_860->g_803.x", print_hash_value);
    transparent_crc(p_860->g_803.y, "p_860->g_803.y", print_hash_value);
    transparent_crc(p_860->g_838.x, "p_860->g_838.x", print_hash_value);
    transparent_crc(p_860->g_838.y, "p_860->g_838.y", print_hash_value);
    transparent_crc(p_860->g_838.z, "p_860->g_838.z", print_hash_value);
    transparent_crc(p_860->g_838.w, "p_860->g_838.w", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
