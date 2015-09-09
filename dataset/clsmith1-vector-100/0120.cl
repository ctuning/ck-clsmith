// ---fake_divergence -g 43,21,3 -l 43,1,1
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


// Seed: 120

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    int32_t g_3[7];
    int32_t g_7[5][7][7];
    int32_t *g_12;
    int32_t **g_11;
    VECTOR(uint64_t, 8) g_19;
    VECTOR(uint64_t, 16) g_67;
    VECTOR(int64_t, 8) g_71;
    uint32_t g_118;
    int8_t g_119;
    int32_t g_151;
    volatile int64_t g_153;
    volatile int64_t * volatile g_152;
    int8_t g_203[6];
    int16_t g_211;
    int32_t g_225;
    volatile VECTOR(uint64_t, 16) g_229;
    volatile VECTOR(uint64_t, 8) g_230;
    VECTOR(uint32_t, 2) g_246;
    uint16_t g_255[1][7][5];
    int32_t *g_281;
    int32_t ** volatile g_280[1][3];
    uint8_t g_292;
    int64_t g_295;
    volatile VECTOR(uint16_t, 16) g_297;
    int32_t ** volatile g_326;
    VECTOR(uint32_t, 16) g_340;
    VECTOR(uint32_t, 8) g_342;
    int32_t ** volatile g_354[7];
    int32_t ** volatile g_356;
    int32_t ** volatile g_357;
    VECTOR(int32_t, 2) g_378;
    VECTOR(uint16_t, 4) g_391;
    VECTOR(int8_t, 16) g_404;
    volatile VECTOR(int8_t, 4) g_405;
    VECTOR(int8_t, 2) g_407;
    VECTOR(int8_t, 2) g_411;
    uint32_t *g_430;
    uint32_t **g_429;
    uint32_t *** volatile g_428;
    volatile int32_t *g_486;
    volatile int32_t * volatile *g_485;
    int16_t g_538;
    volatile VECTOR(int8_t, 2) g_559;
    VECTOR(uint64_t, 8) g_589;
    volatile VECTOR(uint16_t, 2) g_619;
    VECTOR(int32_t, 16) g_629;
    VECTOR(uint16_t, 8) g_664;
    VECTOR(uint8_t, 2) g_665;
    int32_t g_682;
    int32_t * volatile g_689[8];
    volatile uint32_t g_715;
    volatile uint32_t * volatile g_714;
    volatile uint32_t * volatile * volatile g_713;
    volatile uint32_t * volatile * volatile * volatile g_712;
    VECTOR(int64_t, 16) g_722;
    VECTOR(int64_t, 2) g_724;
    VECTOR(int64_t, 8) g_725;
    volatile VECTOR(int64_t, 2) g_745;
    int16_t g_778[7][3][1];
    int32_t g_786;
    VECTOR(uint32_t, 2) g_799;
    volatile int64_t g_807;
    volatile int64_t *g_806;
    volatile int64_t **g_805;
    volatile VECTOR(int64_t, 4) g_820;
    uint32_t g_825[2][9];
    volatile VECTOR(int8_t, 4) g_842;
    VECTOR(uint16_t, 16) g_855;
    int64_t *g_884[3];
    int64_t **g_883;
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
int32_t  func_1(struct S0 * p_888);
int32_t ** func_9(int32_t ** p_10, struct S0 * p_888);
int32_t  func_13(uint32_t  p_14, uint32_t  p_15, int64_t  p_16, uint64_t  p_17, struct S0 * p_888);
uint64_t  func_24(int32_t * p_25, int32_t * p_26, int8_t  p_27, int64_t  p_28, uint64_t  p_29, struct S0 * p_888);
int64_t  func_30(uint64_t  p_31, uint16_t  p_32, int64_t  p_33, int32_t * p_34, struct S0 * p_888);
int64_t  func_37(int64_t  p_38, int32_t ** p_39, struct S0 * p_888);
uint32_t  func_40(uint32_t  p_41, struct S0 * p_888);
uint32_t  func_42(int64_t  p_43, int64_t  p_44, uint64_t  p_45, uint32_t  p_46, struct S0 * p_888);
int32_t * func_49(int8_t  p_50, uint64_t  p_51, int32_t * p_52, struct S0 * p_888);
int32_t * func_54(int32_t  p_55, uint8_t  p_56, struct S0 * p_888);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_888->g_3 p_888->g_7 p_888->g_11 p_888->g_12 p_888->g_19 p_888->g_67 p_888->g_71 p_888->g_2 p_888->g_118 p_888->g_119 p_888->g_152 p_888->g_151 p_888->g_153 p_888->g_211 p_888->g_225 p_888->g_255 p_888->g_295 p_888->g_297 p_888->g_246 p_888->g_292 p_888->g_229 p_888->g_340 p_888->g_342 p_888->g_281 p_888->g_357 p_888->g_391 p_888->g_404 p_888->g_405 p_888->g_407 p_888->g_411 p_888->g_428 p_888->g_378 p_888->g_485 p_888->g_230 p_888->g_559 p_888->g_589 p_888->g_203 p_888->g_619 p_888->g_629 p_888->g_538 p_888->g_664 p_888->g_665 p_888->g_682 p_888->g_712 p_888->g_725 p_888->g_786 p_888->g_799 p_888->g_713 p_888->g_714 p_888->g_715 p_888->g_805 p_888->g_883 p_888->g_724
 * writes: p_888->g_3 p_888->g_7 p_888->g_12 p_888->g_119 p_888->g_118 p_888->g_71 p_888->g_203 p_888->g_225 p_888->g_255 p_888->g_295 p_888->g_246 p_888->g_292 p_888->g_211 p_888->g_281 p_888->g_151 p_888->g_429 p_888->g_538 p_888->g_486 p_888->g_722 p_888->g_786 p_888->g_19 p_888->g_589 p_888->g_825 p_888->g_883 p_888->g_11
 */
int32_t  func_1(struct S0 * p_888)
{ /* block id: 4 */
    int64_t l_8 = 0x758D911ACA8B1460L;
    int32_t ***l_886 = (void*)0;
    int32_t ***l_887 = &p_888->g_11;
    for (p_888->g_3[2] = 0; (p_888->g_3[2] >= (-11)); p_888->g_3[2]--)
    { /* block id: 7 */
        int32_t *l_6 = &p_888->g_7[0][4][3];
        (*l_6) ^= 1L;
        (*l_6) &= 0x7D5B4499L;
        if (l_8)
            continue;
        return p_888->g_3[2];
    }
    (*l_887) = func_9(p_888->g_11, p_888);
    return p_888->g_724.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_12 p_888->g_19 p_888->g_7 p_888->g_11 p_888->g_3 p_888->g_67 p_888->g_71 p_888->g_2 p_888->g_118 p_888->g_119 p_888->g_152 p_888->g_151 p_888->g_153 p_888->g_211 p_888->g_225 p_888->g_255 p_888->g_295 p_888->g_297 p_888->g_246 p_888->g_292 p_888->g_229 p_888->g_340 p_888->g_342 p_888->g_281 p_888->g_357 p_888->g_391 p_888->g_404 p_888->g_405 p_888->g_407 p_888->g_411 p_888->g_428 p_888->g_378 p_888->g_485 p_888->g_230 p_888->g_559 p_888->g_589 p_888->g_203 p_888->g_619 p_888->g_629 p_888->g_538 p_888->g_664 p_888->g_665 p_888->g_682 p_888->g_712 p_888->g_725 p_888->g_786 p_888->g_799 p_888->g_713 p_888->g_714 p_888->g_715 p_888->g_805 p_888->g_883
 * writes: p_888->g_12 p_888->g_119 p_888->g_118 p_888->g_3 p_888->g_71 p_888->g_203 p_888->g_225 p_888->g_255 p_888->g_295 p_888->g_246 p_888->g_292 p_888->g_211 p_888->g_281 p_888->g_151 p_888->g_429 p_888->g_538 p_888->g_486 p_888->g_722 p_888->g_786 p_888->g_19 p_888->g_589 p_888->g_825 p_888->g_883
 */
int32_t ** func_9(int32_t ** p_10, struct S0 * p_888)
{ /* block id: 13 */
    VECTOR(uint64_t, 16) l_18 = (VECTOR(uint64_t, 16))(0xFCF39588DFEF28EDL, (VECTOR(uint64_t, 4))(0xFCF39588DFEF28EDL, (VECTOR(uint64_t, 2))(0xFCF39588DFEF28EDL, 7UL), 7UL), 7UL, 0xFCF39588DFEF28EDL, 7UL, (VECTOR(uint64_t, 2))(0xFCF39588DFEF28EDL, 7UL), (VECTOR(uint64_t, 2))(0xFCF39588DFEF28EDL, 7UL), 0xFCF39588DFEF28EDL, 7UL, 0xFCF39588DFEF28EDL, 7UL);
    VECTOR(uint64_t, 16) l_20 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x475AC3517D3E8228L), 0x475AC3517D3E8228L), 0x475AC3517D3E8228L, 1UL, 0x475AC3517D3E8228L, (VECTOR(uint64_t, 2))(1UL, 0x475AC3517D3E8228L), (VECTOR(uint64_t, 2))(1UL, 0x475AC3517D3E8228L), 1UL, 0x475AC3517D3E8228L, 1UL, 0x475AC3517D3E8228L);
    uint32_t *l_763 = &p_888->g_118;
    int32_t l_784[6][3] = {{0L,(-1L),(-1L)},{0L,(-1L),(-1L)},{0L,(-1L),(-1L)},{0L,(-1L),(-1L)},{0L,(-1L),(-1L)},{0L,(-1L),(-1L)}};
    int32_t *l_785 = &p_888->g_786;
    uint64_t *l_789 = (void*)0;
    uint64_t *l_790[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t *l_803 = &p_888->g_292;
    int32_t l_804 = 0L;
    VECTOR(uint32_t, 4) l_837 = (VECTOR(uint32_t, 4))(0x8D0FB562L, (VECTOR(uint32_t, 2))(0x8D0FB562L, 0xE0574A1EL), 0xE0574A1EL);
    int32_t *l_864 = &p_888->g_151;
    VECTOR(int32_t, 16) l_871 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
    int i, j;
    (*p_10) = (*p_10);
    (*l_785) &= (l_784[1][1] = (func_13((((((((((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_18.sf4)).xyxyyxxxxyxyxxyy)).s47, ((VECTOR(uint64_t, 2))(1UL, 0UL))))), ((VECTOR(uint64_t, 8))(p_888->g_19.s36733055)).s01))).hi , ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x047E08A84A000286L, 0x26950E6E27DFDEEAL)).yyyx)), 1L, 0L, 0x734C2E3979D795BCL, 0x118CD8B12ACF1929L)).s3) || (p_888->g_7[0][4][3] && 248UL)) & FAKE_DIVERGE(p_888->group_1_offset, get_group_id(1), 10)) ^ (((VECTOR(uint64_t, 8))(l_20.sf8f04b74)).s6 > (safe_unary_minus_func_int16_t_s((safe_mod_func_uint32_t_u_u((~((*l_763) = (func_24((*p_888->g_11), (*p_888->g_11), l_18.sf, func_30((safe_sub_func_int64_t_s_s(func_37((((*p_888->g_12) , func_40(func_42(p_888->g_7[3][4][6], p_888->g_19.s3, (((safe_lshift_func_uint8_t_u_s(l_20.s1, p_888->g_19.s2)) , l_18.sd) != l_18.sf), l_18.s3, p_888), p_888)) | l_18.s6), p_10, p_888), 9L)), l_18.sc, l_20.sf, (*p_888->g_11), p_888), p_888->g_19.s3, p_888) || l_20.sb))), p_888->g_682)))))) , l_20.sb) , l_20.s7) , 0x5DA296A0L), l_20.sc, l_18.s6, l_20.sf, p_888) , 2L));
    l_784[4][2] ^= ((((*l_785) >= (safe_mod_func_uint64_t_u_u(((p_888->g_19.s7 |= 0xF6E522A33BD916EAL) > (*l_785)), (safe_div_func_int16_t_s_s((0L != ((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))((safe_add_func_uint64_t_u_u((p_888->g_589.s2 = (l_804 ^= ((safe_mod_func_int8_t_s_s((safe_div_func_uint32_t_u_u((*l_785), ((VECTOR(uint32_t, 4))(p_888->g_799.yyxy)).y)), ((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x41L, 0x37L)), 0x7BL, ((((safe_unary_minus_func_int32_t_s(((safe_add_func_uint8_t_u_u(((*l_803) = ((*l_785) & (((VECTOR(uint64_t, 2))(7UL, 0x89A6FC4797DB1B6BL)).odd ^ p_888->g_203[0]))), ((((*l_785) < 0xC4C4L) < (**p_888->g_713)) , (*l_785)))) <= (*l_785)))) != 0x80B0EAE8202CEB9EL) == 0UL) == (*l_785)), p_888->g_407.x, ((VECTOR(int8_t, 2))(1L)), 0x23L)).s05))).odd)) ^ 0L))), 18446744073709551613UL)), ((VECTOR(uint64_t, 2))(0xF29CB9DD4AF02312L)), 18446744073709551615UL)), 8UL, 0x8B34E9FC04F6D772L, 0xB6A2B3E7D3CC916DL, 18446744073709551614UL, 0UL, (*l_785), 0x4C25AAE40BE015E0L, 18446744073709551615UL, 0x2DC42524FFC63C50L, 0xA405231CC2DC97C3L, 0UL, 18446744073709551613UL)))), ((VECTOR(uint64_t, 16))(0x89F1521855F673D5L)), ((VECTOR(uint64_t, 16))(0xC2A93833D904C9C6L))))).s3), (*l_785)))))) , &p_888->g_152) == p_888->g_805);
    if ((*l_785))
    { /* block id: 280 */
        uint16_t l_856 = 0xB7D8L;
        for (p_888->g_786 = 0; (p_888->g_786 < (-29)); --p_888->g_786)
        { /* block id: 283 */
            VECTOR(int16_t, 4) l_826 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x1546L), 0x1546L);
            int i;
            for (p_888->g_292 = 0; (p_888->g_292 != 40); ++p_888->g_292)
            { /* block id: 286 */
                uint64_t **l_844 = &l_789;
                uint64_t ***l_843 = &l_844;
                int32_t l_845 = 0x3FB0194EL;
                uint16_t l_850 = 65535UL;
                for (p_888->g_225 = 18; (p_888->g_225 == (-13)); --p_888->g_225)
                { /* block id: 289 */
                    uint32_t l_823 = 0x1C217219L;
                    uint8_t l_863 = 254UL;
                    for (p_888->g_295 = 0; (p_888->g_295 < (-10)); --p_888->g_295)
                    { /* block id: 292 */
                        uint32_t *l_824 = &p_888->g_825[1][6];
                        int32_t l_827[7][5][6] = {{{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)}},{{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)}},{{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)}},{{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)}},{{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)}},{{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)}},{{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)},{0x3E6AE0D7L,(-1L),(-1L),0x381B1C8AL,0x381B1C8AL,(-1L)}}};
                        int32_t l_830 = 0x64CEB39DL;
                        int i, j, k;
                        (*p_888->g_281) |= (safe_mul_func_uint16_t_u_u(65535UL, (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(p_888->g_820.wzwzxwyywwyyxxzy)).s32)).xyyy)).z, (&p_888->g_151 != (void*)0)))));
                        (*p_888->g_281) = ((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-5L), (-1L))).xxxx)).x, p_888->g_295)) , ((-2L) > (((*l_763) = ((((*l_824) = (l_823 ^ ((void*)0 != l_785))) , l_826.w) != (l_827[1][2][0] = l_827[4][4][1]))) & (safe_sub_func_int32_t_s_s(l_830, (safe_rshift_func_int8_t_s_u(1L, 0)))))));
                        l_827[4][4][1] &= (safe_add_func_int32_t_s_s(((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(l_837.wxxywyywzzyzwyyw)).s72)).lo, 4294967289UL)) || ((safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(p_888->g_842.yzxwzzwxyyzzyxzy)).s0, (l_843 != (void*)0))), (l_845 | (p_888->g_19.s5 >= (safe_mod_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((l_850--) ^ ((safe_mul_func_uint16_t_u_u((((VECTOR(uint16_t, 8))(p_888->g_855.s564a8fe3)).s2 ^ p_888->g_589.s4), l_856)) & (safe_mul_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((0x5ED7L != ((safe_rshift_func_int16_t_s_u(p_888->g_342.s1, 6)) || l_863)), 0x083428E4L)), GROUP_DIVERGE(2, 1))))), 0L)), l_856)))))) < (*p_888->g_281))), l_823));
                    }
                    (*p_888->g_11) = &l_845;
                    (*p_888->g_12) = (**p_10);
                }
            }
        }
    }
    else
    { /* block id: 306 */
        uint64_t **l_876 = &l_790[7];
        int32_t l_879 = 1L;
        int32_t *l_881 = &p_888->g_151;
        int32_t **l_880 = &l_881;
        int64_t **l_882 = (void*)0;
        int64_t ***l_885 = &p_888->g_883;
        (*p_888->g_281) |= ((l_864 = (GROUP_DIVERGE(2, 1) , &p_888->g_151)) != ((*l_880) = &p_888->g_151));
        (*p_888->g_281) |= (l_882 == ((*l_885) = p_888->g_883));
    }
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_281 p_888->g_151 p_888->g_11 p_888->g_378
 * writes: p_888->g_3 p_888->g_151 p_888->g_12
 */
int32_t  func_13(uint32_t  p_14, uint32_t  p_15, int64_t  p_16, uint64_t  p_17, struct S0 * p_888)
{ /* block id: 259 */
    VECTOR(int32_t, 8) l_764 = (VECTOR(int32_t, 8))(0x01B89156L, (VECTOR(int32_t, 4))(0x01B89156L, (VECTOR(int32_t, 2))(0x01B89156L, 0x780D05ADL), 0x780D05ADL), 0x780D05ADL, 0x01B89156L, 0x780D05ADL);
    int32_t l_775 = 1L;
    int32_t l_776[8] = {0x649A32F9L,0x649A32F9L,0x649A32F9L,0x649A32F9L,0x649A32F9L,0x649A32F9L,0x649A32F9L,0x649A32F9L};
    int64_t l_779[10][1];
    int32_t l_780[10][10] = {{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL},{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL},{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL},{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL},{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL},{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL},{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL},{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL},{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL},{0L,0L,0x6B111BBEL,0x76DC2BE7L,0x21FEC769L,0x76DC2BE7L,0x6B111BBEL,0L,0L,0x6B111BBEL}};
    int i, j;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_779[i][j] = 0x79670DBA87A95862L;
    }
    (*p_888->g_281) = ((VECTOR(int32_t, 4))(l_764.s6427)).w;
    for (p_15 = (-9); (p_15 >= 37); p_15++)
    { /* block id: 263 */
        return p_14;
    }
    for (p_888->g_151 = 0; (p_888->g_151 != 14); p_888->g_151 = safe_add_func_uint64_t_u_u(p_888->g_151, 3))
    { /* block id: 268 */
        int16_t l_769 = 0x3ED6L;
        int32_t l_770[6][4][6] = {{{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L}},{{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L}},{{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L}},{{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L}},{{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L}},{{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L},{0x3D265DA2L,0L,0x3D265DA2L,0x3D265DA2L,0L,0x3D265DA2L}}};
        int32_t *l_771 = (void*)0;
        int32_t *l_772 = (void*)0;
        int32_t *l_773 = &p_888->g_682;
        int32_t *l_774[7] = {&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3]};
        int16_t l_777 = 0x1C84L;
        uint16_t l_781 = 1UL;
        int i, j, k;
        --l_781;
    }
    (*p_888->g_11) = &l_780[8][7];
    return p_888->g_378.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_664 p_888->g_665 p_888->g_3 p_888->g_246 p_888->g_682 p_888->g_404 p_888->g_281 p_888->g_225 p_888->g_485 p_888->g_255 p_888->g_712 p_888->g_19 p_888->g_11 p_888->g_12 p_888->g_357 p_888->g_378 p_888->g_725 p_888->g_629
 * writes: p_888->g_118 p_888->g_538 p_888->g_225 p_888->g_486 p_888->g_151 p_888->g_255 p_888->g_203 p_888->g_3 p_888->g_12 p_888->g_295 p_888->g_722
 */
uint64_t  func_24(int32_t * p_25, int32_t * p_26, int8_t  p_27, int64_t  p_28, uint64_t  p_29, struct S0 * p_888)
{ /* block id: 218 */
    VECTOR(uint8_t, 16) l_666 = (VECTOR(uint8_t, 16))(0x04L, (VECTOR(uint8_t, 4))(0x04L, (VECTOR(uint8_t, 2))(0x04L, 253UL), 253UL), 253UL, 0x04L, 253UL, (VECTOR(uint8_t, 2))(0x04L, 253UL), (VECTOR(uint8_t, 2))(0x04L, 253UL), 0x04L, 253UL, 0x04L, 253UL);
    VECTOR(uint8_t, 4) l_667 = (VECTOR(uint8_t, 4))(0xD4L, (VECTOR(uint8_t, 2))(0xD4L, 253UL), 253UL);
    VECTOR(int16_t, 8) l_668 = (VECTOR(int16_t, 8))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x714EL), 0x714EL), 0x714EL, (-7L), 0x714EL);
    VECTOR(int16_t, 2) l_669 = (VECTOR(int16_t, 2))(0x3287L, 1L);
    uint32_t *l_676 = &p_888->g_118;
    uint64_t l_681 = 0x2C19FCBA3E51AAE4L;
    int16_t *l_683 = (void*)0;
    int16_t *l_684 = (void*)0;
    int16_t *l_685 = &p_888->g_538;
    uint16_t l_686 = 65535UL;
    uint32_t *l_687 = (void*)0;
    int32_t l_688 = 0x452D622CL;
    int32_t *l_690 = (void*)0;
    int32_t *l_691 = (void*)0;
    int32_t *l_692[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(uint32_t, 16) l_693 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), 4294967295UL, 0UL, 4294967295UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 0UL, 4294967295UL, 0UL, 4294967295UL);
    int32_t ***l_694 = &p_888->g_11;
    int32_t ****l_695 = &l_694;
    uint32_t l_696 = 0x8D0AF645L;
    VECTOR(int64_t, 4) l_721 = (VECTOR(int64_t, 4))(0x3357FE724599F570L, (VECTOR(int64_t, 2))(0x3357FE724599F570L, (-2L)), (-2L));
    uint64_t *l_761 = (void*)0;
    uint64_t **l_760 = &l_761;
    uint64_t **l_762 = &l_761;
    int i;
    l_693.s4 ^= ((+FAKE_DIVERGE(p_888->group_0_offset, get_group_id(0), 10)) < ((safe_sub_func_uint32_t_u_u(0xC7E7E728L, (l_688 = (((safe_sub_func_uint16_t_u_u((!((VECTOR(uint16_t, 4))(p_888->g_664.s6513)).x), (((*l_685) = ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 2))(0x79L, (-1L))).yxxxxyyy, ((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_888->g_665.xy)), 1UL, 0xBCL)).wwzxyyzw, ((VECTOR(uint8_t, 16))(l_666.sa19035f3022545cf)).even))), ((VECTOR(uint8_t, 8))(l_667.wzyxyxxw)))))))).s52)).yyxy)).odd)), (int16_t)0x3075L))).yyyyyyxyyxxxyyyy, ((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))((0x2C44L && ((VECTOR(int16_t, 16))(l_668.s0235757277053454)).s3), 0x67A5L, 0x5A1FL, 0x3AD1L)).even)).xxyy, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_669.yy)), 0x3C8EL, 0x5022L, (safe_mod_func_int8_t_s_s(p_29, (-1L))), (safe_mul_func_uint8_t_u_u(l_667.z, (safe_mul_func_int8_t_s_s((((VECTOR(uint8_t, 2))(7UL, 255UL)).even & (FAKE_DIVERGE(p_888->group_2_offset, get_group_id(2), 10) && ((*l_676) = l_667.z))), (safe_sub_func_int32_t_s_s((((safe_div_func_int16_t_s_s((((*p_25) , ((VECTOR(uint64_t, 8))(0x8BDBF91EB6FBAF7CL, 18446744073709551615UL, 0x3540E25F48D79BAAL, 0UL, l_668.s7, 0UL, 0xC1605E7377295FCBL, 18446744073709551607UL)).s1) ^ GROUP_DIVERGE(2, 1)), p_888->g_3[1])) , l_681) <= (-3L)), 1UL)))))), ((VECTOR(int16_t, 2))(0x703EL)), p_888->g_246.x, (-1L), p_888->g_682, l_669.x, (-7L), (-10L), 0x6B86L, 0x3FE3L)).sd5db, ((VECTOR(int16_t, 4))(0x3474L))))).wwzyxyzxywyyxyzw, ((VECTOR(int16_t, 16))(0x06F2L))))).scb)).yxyxxxyyxxxxyxyy)).sc) & p_888->g_404.s0))) < 0x7A6FB259BF357ED3L) ^ l_686)))) >= p_29));
    l_696 &= ((*p_26) || ((*p_888->g_281) <= (&p_888->g_280[0][1] == ((*l_695) = l_694))));
    for (p_29 = 0; (p_29 <= 38); ++p_29)
    { /* block id: 227 */
        return p_29;
    }
    for (p_888->g_225 = 0; (p_888->g_225 >= (-10)); p_888->g_225--)
    { /* block id: 232 */
        uint32_t ***l_716 = (void*)0;
        VECTOR(int64_t, 2) l_723 = (VECTOR(int64_t, 2))(1L, 0x7FA692B646BBBF4DL);
        int32_t l_734 = 0x0AB78DAAL;
        int32_t l_756 = 0x75E9DA7AL;
        int i;
        (*p_888->g_485) = (void*)0;
        for (p_888->g_151 = 0; (p_888->g_151 > (-17)); --p_888->g_151)
        { /* block id: 236 */
            uint16_t *l_707 = &p_888->g_255[0][2][4];
            uint32_t **l_728 = &l_687;
            uint8_t *l_729 = (void*)0;
            uint8_t *l_730 = (void*)0;
            uint8_t *l_731 = (void*)0;
            uint8_t *l_732 = (void*)0;
            uint8_t *l_733[3][1];
            int8_t *l_735 = &p_888->g_203[1];
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_733[i][j] = (void*)0;
            }
            (*p_888->g_281) = (safe_lshift_func_int8_t_s_u((((safe_div_func_int32_t_s_s((((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 8))(8L, ((VECTOR(int16_t, 2))(0x4B71L, 0x57C3L)), 0x3FDCL, (p_888->g_292 || p_27), 0x7E13L, 3L, 2L))))).s7 == ((*l_707)++)), (GROUP_DIVERGE(1, 1) | (p_27 && ((*l_735) = (safe_lshift_func_uint8_t_u_s((p_888->g_712 != l_716), (((-9L) < (safe_add_func_uint8_t_u_u((l_734 |= (safe_rshift_func_int8_t_s_s((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(0x59969E15E8E78E66L, ((VECTOR(int64_t, 2))(l_721.xw)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(p_888->g_722.s87)))).yxyyxyyx)).s4, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 8))(l_723.yxyyxxyy)), ((VECTOR(int64_t, 4))(p_888->g_724.yyxx)).wyzzxxyy))).even)))).s03)), (-4L), (-1L))), 0x49CE6CEC0CD670A4L, 0x1F4E74D8F0A99BD4L, 1L, ((VECTOR(int64_t, 16))(p_888->g_725.s5702356107437024)).s6, ((VECTOR(int64_t, 2))(1L, 1L)), (((***l_694) , ((safe_add_func_int32_t_s_s((((l_728 == l_728) | (***l_694)) < 0x73ABL), 0x24F1807AL)) >= l_723.y)) && p_28), ((VECTOR(int64_t, 4))(0x684ED80651AE4AB2L)), 0x685FCB9C23EF2FBEL)))).s34)).yxxyyxxxyxyyyxyy)).sd > p_888->g_19.s3), p_29))), 255UL))) <= 65535UL)))))))) & l_723.y) == l_723.x), 5));
            (**l_694) = p_25;
            (****l_695) = 0x5E46A645L;
        }
        (***l_694) = (**p_888->g_357);
        for (p_888->g_295 = 0; (p_888->g_295 < (-17)); p_888->g_295 = safe_sub_func_int32_t_s_s(p_888->g_295, 2))
        { /* block id: 247 */
            int64_t *l_738 = (void*)0;
            int64_t *l_739 = (void*)0;
            int64_t *l_740 = (void*)0;
            int64_t *l_741 = (void*)0;
            int64_t *l_742[1][8][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            VECTOR(uint16_t, 16) l_754 = (VECTOR(uint16_t, 16))(0x5094L, (VECTOR(uint16_t, 4))(0x5094L, (VECTOR(uint16_t, 2))(0x5094L, 0UL), 0UL), 0UL, 0x5094L, 0UL, (VECTOR(uint16_t, 2))(0x5094L, 0UL), (VECTOR(uint16_t, 2))(0x5094L, 0UL), 0x5094L, 0UL, 0x5094L, 0UL);
            uint16_t *l_755 = &p_888->g_255[0][3][0];
            uint64_t *l_758 = (void*)0;
            uint64_t **l_757 = &l_758;
            uint64_t ***l_759[4];
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_759[i] = &l_757;
            l_756 = ((l_734 = (p_888->g_722.s4 = p_28)) , ((p_888->g_378.x >= (((****l_695) = (safe_div_func_int64_t_s_s(((VECTOR(int64_t, 2))(p_888->g_745.yy)).odd, 0x7AD30ED89BF70FECL))) && (safe_mul_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_u((((safe_mul_func_int8_t_s_s(0x4BL, (((((safe_sub_func_int64_t_s_s((p_29 , p_29), ((((*l_755) = ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_754.s1b8f)))).x) | l_756) >= ((l_760 = l_757) == (l_762 = &l_761))))) || l_723.x) && p_29) > 0x2530B50CL) <= p_888->g_725.s2))) | (-9L)) > l_723.x), 7)) , p_29) > p_29), 0x03L)))) || (*p_26)));
        }
    }
    return p_888->g_629.sa;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_11 p_888->g_12 p_888->g_3 p_888->g_378 p_888->g_589 p_888->g_411 p_888->g_203 p_888->g_619 p_888->g_342 p_888->g_225 p_888->g_629 p_888->g_357 p_888->g_281 p_888->g_152 p_888->g_153 p_888->g_538 p_888->g_118
 * writes: p_888->g_255 p_888->g_3 p_888->g_292 p_888->g_118
 */
int64_t  func_30(uint64_t  p_31, uint16_t  p_32, int64_t  p_33, int32_t * p_34, struct S0 * p_888)
{ /* block id: 196 */
    uint8_t l_575 = 0x62L;
    uint64_t *l_590 = (void*)0;
    uint64_t *l_591 = (void*)0;
    uint64_t *l_592 = (void*)0;
    uint64_t *l_593 = (void*)0;
    uint64_t *l_594 = (void*)0;
    int32_t l_595[3];
    VECTOR(uint8_t, 16) l_598 = (VECTOR(uint8_t, 16))(251UL, (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 255UL), 255UL), 255UL, 251UL, 255UL, (VECTOR(uint8_t, 2))(251UL, 255UL), (VECTOR(uint8_t, 2))(251UL, 255UL), 251UL, 255UL, 251UL, 255UL);
    int32_t ***l_615 = &p_888->g_11;
    VECTOR(int32_t, 2) l_616 = (VECTOR(int32_t, 2))(0L, 0x75CC43BCL);
    VECTOR(int32_t, 2) l_630 = (VECTOR(int32_t, 2))(0x66F75D25L, (-10L));
    uint64_t **l_647 = &l_592;
    uint64_t ***l_646 = &l_647;
    int i;
    for (i = 0; i < 3; i++)
        l_595[i] = (-1L);
    if ((safe_rshift_func_int8_t_s_u(((safe_add_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (safe_add_func_int32_t_s_s((safe_div_func_int32_t_s_s((**p_888->g_11), FAKE_DIVERGE(p_888->group_2_offset, get_group_id(2), 10))), l_575)))) ^ (safe_mul_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_s((((safe_add_func_int8_t_s_s((safe_unary_minus_func_uint32_t_u((((l_575 , (((((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s((65535UL ^ (((p_888->g_378.x <= ((safe_sub_func_uint64_t_u_u((l_595[0] = ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_888->g_589.s65)), 1UL, 1UL)).w), 0xE8B0C46922789842L)) >= (safe_div_func_int8_t_s_s(p_888->g_411.y, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(0x7AL, 255UL)), ((VECTOR(uint8_t, 4))(l_598.s92a7)).odd))).lo)))) , &l_575) == &l_575)), p_888->g_203[0])), 0x0A98L)) , 65526UL) ^ 0x79C2L) < l_598.s1) >= 0x5E11L)) | GROUP_DIVERGE(2, 1)) <= l_598.s7))), l_598.s4)) >= 65529UL) != 0x01C8D4CAA40496CFL), 5)) > p_33), 0UL))), 2)))
    { /* block id: 198 */
        int32_t ***l_608 = (void*)0;
        int32_t ****l_607 = &l_608;
        int32_t ***l_609[2];
        VECTOR(uint8_t, 8) l_614 = (VECTOR(uint8_t, 8))(0xC8L, (VECTOR(uint8_t, 4))(0xC8L, (VECTOR(uint8_t, 2))(0xC8L, 255UL), 255UL), 255UL, 0xC8L, 255UL);
        uint16_t *l_624 = (void*)0;
        uint16_t *l_625 = &p_888->g_255[0][6][2];
        int8_t l_626 = (-1L);
        uint32_t l_627 = 0x6D24D4ADL;
        uint8_t *l_628 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_609[i] = &p_888->g_11;
        l_595[0] |= ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(0x7D535CE8L, 0L, ((VECTOR(int32_t, 4))(0x5033B67DL, (safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((0L || (((VECTOR(uint8_t, 2))(255UL, 0UL)).hi && (p_888->g_292 = ((safe_lshift_func_uint16_t_u_s(((safe_mod_func_int32_t_s_s(((((*l_607) = (void*)0) != l_609[0]) , (safe_rshift_func_int8_t_s_u((((0x656EL && ((safe_lshift_func_uint8_t_u_s((((VECTOR(uint8_t, 8))(l_614.s60052651)).s5 && (l_615 == ((*l_607) = &p_888->g_11))), 7)) , ((((((***l_615) = ((((VECTOR(int32_t, 8))(l_616.yxxxxxxy)).s3 & (((safe_add_func_uint32_t_u_u((((VECTOR(uint16_t, 16))(p_888->g_619.yyxyyxyxyxxxyxyx)).s5 , p_33), (safe_mod_func_uint16_t_u_u(((*l_625) = (safe_sub_func_uint32_t_u_u(p_31, (*p_34)))), (***l_615))))) , 0xA15CCC47L) & l_626)) || p_888->g_342.s1)) , GROUP_DIVERGE(0, 1)) == p_888->g_225) >= (-1L)) || p_33))) , (void*)0) != (void*)0), 1))), p_31)) < p_33), p_31)) & l_627)))), 65526UL)), p_32)), 7L, 0x4B15D929L)), (-4L), 0x223C9C4FL)).s5324111575751420)).hi, ((VECTOR(int32_t, 8))(0x5CCD758FL))))).s1;
    }
    else
    { /* block id: 205 */
        uint64_t **l_645 = &l_591;
        uint64_t ***l_644 = &l_645;
        int32_t l_648 = 1L;
        int32_t *l_649 = (void*)0;
        int32_t *l_650 = (void*)0;
        int32_t *l_651 = (void*)0;
        int32_t *l_652 = (void*)0;
        int32_t *l_653 = (void*)0;
        int32_t *l_654 = &l_595[0];
        int32_t *l_655[7] = {&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3],&p_888->g_7[0][4][3]};
        int i;
        l_616.y |= ((*l_654) = ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(p_888->g_629.s9925)).odd, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_630.yy)), (*p_34), 0x7BFB5432L, ((VECTOR(int32_t, 2))(0x5176FAB4L, 0x2ACDBE73L)), 0x63F5842EL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(((*p_888->g_281) = ((safe_unary_minus_func_int64_t_s((safe_mul_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((((((((-9L) < (-2L)) && (((safe_mul_func_int16_t_s_s((l_648 = (safe_mul_func_uint16_t_u_u(p_888->g_411.x, (safe_sub_func_int8_t_s_s(((**p_888->g_357) , (((l_644 != l_646) ^ (-1L)) , ((!(*p_888->g_152)) <= (-3L)))), p_888->g_378.y))))), GROUP_DIVERGE(1, 1))) || (*p_888->g_152)) ^ 0xAEL)) & (***l_615)) && p_888->g_203[0]) > p_32) <= (*p_34)), 6)), FAKE_DIVERGE(p_888->local_0_offset, get_local_id(0), 10))) | p_888->g_538), 65535UL)))) && 0x75F2L)), 0x5D1E200CL, 0L, 0L)).even, ((VECTOR(int32_t, 2))(2L))))))), (*p_34), ((VECTOR(int32_t, 2))((-4L))), 0x09C80E5AL, ((VECTOR(int32_t, 2))(1L)), 0x2A9DA3E7L)).odd, ((VECTOR(int32_t, 8))(1L))))).lo)).xzxxzxzzwxxwzywx)).sc0)).xxxy)).even))).lo);
    }
    for (p_888->g_118 = 0; (p_888->g_118 >= 42); ++p_888->g_118)
    { /* block id: 213 */
        p_34 = (**l_615);
        (***l_615) = 0x506242E5L;
    }
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_281 p_888->g_12 p_888->g_3 p_888->g_11 p_888->g_292 p_888->g_230 p_888->g_295 p_888->g_246 p_888->g_67 p_888->g_19 p_888->g_71 p_888->g_119 p_888->g_118 p_888->g_152 p_888->g_151 p_888->g_153 p_888->g_211 p_888->g_7 p_888->g_225 p_888->g_2 p_888->g_255 p_888->g_297 p_888->g_559 p_888->g_342
 * writes: p_888->g_3 p_888->g_292 p_888->g_151 p_888->g_119 p_888->g_118 p_888->g_71 p_888->g_203 p_888->g_225 p_888->g_255
 */
int64_t  func_37(int64_t  p_38, int32_t ** p_39, struct S0 * p_888)
{ /* block id: 162 */
    uint64_t **l_489 = (void*)0;
    uint64_t ***l_490 = &l_489;
    uint64_t *l_492 = (void*)0;
    uint64_t **l_491 = &l_492;
    int32_t l_493 = 6L;
    int32_t *l_504 = (void*)0;
    int16_t l_510 = 0x2EEFL;
    int32_t l_517 = 0L;
    int32_t l_519 = 0x6A15F2B1L;
    int32_t l_527 = (-1L);
    int32_t l_528 = 0L;
    int32_t l_533[7][5] = {{0x335A44D1L,0x05DC7832L,0x05DC7832L,0x335A44D1L,(-10L)},{0x335A44D1L,0x05DC7832L,0x05DC7832L,0x335A44D1L,(-10L)},{0x335A44D1L,0x05DC7832L,0x05DC7832L,0x335A44D1L,(-10L)},{0x335A44D1L,0x05DC7832L,0x05DC7832L,0x335A44D1L,(-10L)},{0x335A44D1L,0x05DC7832L,0x05DC7832L,0x335A44D1L,(-10L)},{0x335A44D1L,0x05DC7832L,0x05DC7832L,0x335A44D1L,(-10L)},{0x335A44D1L,0x05DC7832L,0x05DC7832L,0x335A44D1L,(-10L)}};
    int64_t l_551 = 0x0EA9371F0434EF41L;
    int32_t *l_566 = &p_888->g_225;
    int32_t **l_565 = &l_566;
    int i, j;
    if (((*p_888->g_281) = (((*l_490) = l_489) == l_491)))
    { /* block id: 165 */
        int8_t l_502 = 0x7FL;
        VECTOR(uint8_t, 8) l_507 = (VECTOR(uint8_t, 8))(0xFDL, (VECTOR(uint8_t, 4))(0xFDL, (VECTOR(uint8_t, 2))(0xFDL, 0xBEL), 0xBEL), 0xBEL, 0xFDL, 0xBEL);
        int32_t l_525 = 1L;
        int32_t l_526 = 0x4EB7C534L;
        int32_t l_535 = (-2L);
        int32_t l_539 = 0x7B99F0B1L;
        int32_t l_540 = 0x1B0BDCCAL;
        int32_t l_541[9] = {0x327CF0D0L,0x4D13471BL,0x327CF0D0L,0x327CF0D0L,0x4D13471BL,0x327CF0D0L,0x327CF0D0L,0x4D13471BL,0x327CF0D0L};
        int32_t l_542 = 0L;
        int32_t l_543 = 4L;
        int32_t l_546[9] = {0x0197485CL,0x0197485CL,0x0197485CL,0x0197485CL,0x0197485CL,0x0197485CL,0x0197485CL,0x0197485CL,0x0197485CL};
        int i;
        (*p_888->g_12) = (l_493 = (**p_39));
        (**p_888->g_11) = l_493;
        for (p_888->g_292 = 10; (p_888->g_292 > 11); p_888->g_292 = safe_add_func_uint8_t_u_u(p_888->g_292, 6))
        { /* block id: 171 */
            int32_t l_503 = 0x472C2554L;
            int32_t l_529 = 0x58F8F363L;
            int32_t l_532 = 1L;
            int32_t l_536 = 0x2126F0A5L;
            int32_t l_537 = 0L;
            int32_t l_545 = (-1L);
            int32_t l_547[7][3][3] = {{{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)}},{{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)}},{{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)}},{{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)}},{{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)}},{{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)}},{{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)},{0x4C8E1087L,0x62F8FB0EL,(-2L)}}};
            int i, j, k;
            for (p_888->g_151 = 0; (p_888->g_151 > (-16)); --p_888->g_151)
            { /* block id: 174 */
                uint32_t l_500 = 9UL;
                int8_t *l_501 = (void*)0;
                int32_t l_530 = 1L;
                int32_t l_531 = 0x62DC218FL;
                int32_t l_534[1][6] = {{0x209FC66CL,0x209FC66CL,0x209FC66CL,0x209FC66CL,0x209FC66CL,0x209FC66CL}};
                VECTOR(uint32_t, 16) l_548 = (VECTOR(uint32_t, 16))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 0x078AB5C1L), 0x078AB5C1L), 0x078AB5C1L, 4294967287UL, 0x078AB5C1L, (VECTOR(uint32_t, 2))(4294967287UL, 0x078AB5C1L), (VECTOR(uint32_t, 2))(4294967287UL, 0x078AB5C1L), 4294967287UL, 0x078AB5C1L, 4294967287UL, 0x078AB5C1L);
                int i, j;
                (*p_888->g_12) ^= (0x3CBFB67708A54655L || ((safe_mul_func_int16_t_s_s((l_500 = p_888->g_230.s6), (p_38 != (l_502 |= (l_493 = p_38))))) != l_503));
                l_504 = (p_888->g_295 , func_54((**p_39), p_888->g_246.x, p_888));
                (*p_888->g_12) = (l_502 , ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((-10L), (18446744073709551615UL && (p_38 >= ((safe_sub_func_int64_t_s_s((0xC368L || ((((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_507.s32)), 0xB1L, 0x36L)), (uint8_t)(+(((l_503 |= 0xCC3844E5L) != (safe_mul_func_int8_t_s_s((l_510 == 0x6658EF33L), l_502))) ^ (safe_rshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s((((l_507.s3 == (*p_888->g_152)) , p_888->g_297.s5) ^ p_38), p_38)), p_38))))))).y & p_888->g_3[5]) | p_38)), 0x5032A5C62BF658F8L)) & l_502))), (-1L), ((VECTOR(int32_t, 4))((-1L))), 0x3B5620F9L)).s03, ((VECTOR(int32_t, 2))(0x2A4C4491L))))).hi);
                for (l_493 = (-27); (l_493 == (-28)); --l_493)
                { /* block id: 184 */
                    int32_t *l_518 = &l_503;
                    int32_t *l_520 = (void*)0;
                    int32_t *l_521 = (void*)0;
                    int32_t *l_522 = &p_888->g_3[2];
                    int32_t *l_523 = &l_517;
                    int32_t *l_524[2];
                    int32_t l_544 = (-1L);
                    int i;
                    for (i = 0; i < 2; i++)
                        l_524[i] = &p_888->g_3[0];
                    l_548.sc--;
                }
            }
        }
    }
    else
    { /* block id: 189 */
        int32_t l_554 = 0x5AD45566L;
        uint16_t *l_562[1];
        int32_t l_563[7][3][7] = {{{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L}},{{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L}},{{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L}},{{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L}},{{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L}},{{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L}},{{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L},{0L,1L,0x3E332836L,0x2118CC53L,1L,0x4AE0702FL,0L}}};
        int32_t *l_564 = &p_888->g_225;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_562[i] = &p_888->g_255[0][3][3];
        (*p_888->g_12) = ((l_551 || p_888->g_292) && ((((*l_564) = (0x47A9B4B6L < (safe_add_func_int16_t_s_s((l_554 , (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), (safe_mul_func_uint8_t_u_u(p_38, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_888->g_559.yy)), 0x47L, (-2L))).y))))), ((((safe_add_func_uint16_t_u_u((l_563[4][0][0] = ((l_554 ^ (p_38 & ((GROUP_DIVERGE(1, 1) , GROUP_DIVERGE(1, 1)) <= (*p_888->g_281)))) && (p_888->g_119 , (-7L)))), p_888->g_246.x)) , p_888->g_342.s5) > 0x3B9650C116BFF4D9L) , l_527))))) , l_554) < l_554));
    }
    l_565 = (void*)0;
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_151 p_888->g_225 p_888->g_67 p_888->g_292 p_888->g_118 p_888->g_428 p_888->g_340 p_888->g_12 p_888->g_3 p_888->g_152 p_888->g_153 p_888->g_378 p_888->g_404 p_888->g_281 p_888->g_485
 * writes: p_888->g_151 p_888->g_225 p_888->g_292 p_888->g_118 p_888->g_429 p_888->g_3
 */
uint32_t  func_40(uint32_t  p_41, struct S0 * p_888)
{ /* block id: 128 */
    VECTOR(int32_t, 8) l_418 = (VECTOR(int32_t, 8))(0x58198939L, (VECTOR(int32_t, 4))(0x58198939L, (VECTOR(int32_t, 2))(0x58198939L, 0x06CD2A6AL), 0x06CD2A6AL), 0x06CD2A6AL, 0x58198939L, 0x06CD2A6AL);
    int32_t l_420[8][5][5] = {{{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL}},{{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL}},{{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL}},{{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL}},{{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL}},{{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL}},{{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL}},{{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL},{(-1L),0x5345CDBFL,(-9L),1L,0x3299E8ACL}}};
    VECTOR(int16_t, 8) l_443 = (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x4AFDL), 0x4AFDL), 0x4AFDL, 7L, 0x4AFDL);
    VECTOR(int16_t, 16) l_446 = (VECTOR(int16_t, 16))(0x0B08L, (VECTOR(int16_t, 4))(0x0B08L, (VECTOR(int16_t, 2))(0x0B08L, (-4L)), (-4L)), (-4L), 0x0B08L, (-4L), (VECTOR(int16_t, 2))(0x0B08L, (-4L)), (VECTOR(int16_t, 2))(0x0B08L, (-4L)), 0x0B08L, (-4L), 0x0B08L, (-4L));
    VECTOR(int16_t, 16) l_447 = (VECTOR(int16_t, 16))(0x3B0CL, (VECTOR(int16_t, 4))(0x3B0CL, (VECTOR(int16_t, 2))(0x3B0CL, 0L), 0L), 0L, 0x3B0CL, 0L, (VECTOR(int16_t, 2))(0x3B0CL, 0L), (VECTOR(int16_t, 2))(0x3B0CL, 0L), 0x3B0CL, 0L, 0x3B0CL, 0L);
    int64_t *l_455 = (void*)0;
    int64_t *l_456 = (void*)0;
    int32_t l_463 = (-8L);
    int32_t **l_487[7][6][1] = {{{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12}},{{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12}},{{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12}},{{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12}},{{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12}},{{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12}},{{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12},{&p_888->g_12}}};
    int32_t *l_488[1];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_488[i] = &l_420[5][4][1];
    for (p_888->g_151 = (-22); (p_888->g_151 == (-5)); ++p_888->g_151)
    { /* block id: 131 */
        int32_t l_421 = 0x7A7D29C3L;
        if (p_41)
            break;
        for (p_888->g_225 = 0; (p_888->g_225 >= (-18)); p_888->g_225 = safe_sub_func_uint16_t_u_u(p_888->g_225, 9))
        { /* block id: 135 */
            uint8_t *l_416[9][7] = {{&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292},{&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292},{&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292},{&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292},{&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292},{&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292},{&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292},{&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292},{&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292,&p_888->g_292,(void*)0,&p_888->g_292}};
            int32_t l_417 = (-7L);
            int32_t l_419 = 0x74CCCD61L;
            int i, j;
            l_417 = (p_888->g_67.sc != (p_888->g_292++));
            if (l_421)
                break;
        }
    }
    for (p_888->g_118 = 18; (p_888->g_118 < 2); p_888->g_118 = safe_sub_func_uint16_t_u_u(p_888->g_118, 1))
    { /* block id: 143 */
        VECTOR(int16_t, 16) l_440 = (VECTOR(int16_t, 16))(0x694AL, (VECTOR(int16_t, 4))(0x694AL, (VECTOR(int16_t, 2))(0x694AL, 1L), 1L), 1L, 0x694AL, 1L, (VECTOR(int16_t, 2))(0x694AL, 1L), (VECTOR(int16_t, 2))(0x694AL, 1L), 0x694AL, 1L, 0x694AL, 1L);
        VECTOR(int16_t, 8) l_441 = (VECTOR(int16_t, 8))(0x4732L, (VECTOR(int16_t, 4))(0x4732L, (VECTOR(int16_t, 2))(0x4732L, 0L), 0L), 0L, 0x4732L, 0L);
        VECTOR(int16_t, 4) l_442 = (VECTOR(int16_t, 4))(0x3216L, (VECTOR(int16_t, 2))(0x3216L, 4L), 4L);
        VECTOR(int16_t, 2) l_444 = (VECTOR(int16_t, 2))(0x30F4L, 0x41EDL);
        VECTOR(int16_t, 2) l_445 = (VECTOR(int16_t, 2))(0x0CB9L, (-2L));
        uint64_t *l_450 = (void*)0;
        uint64_t *l_451 = (void*)0;
        uint64_t *l_452 = (void*)0;
        uint64_t *l_453 = (void*)0;
        uint64_t *l_454 = (void*)0;
        int64_t **l_457 = &l_456;
        uint32_t *l_460 = (void*)0;
        uint32_t *l_461 = (void*)0;
        uint32_t *l_462 = (void*)0;
        int16_t *l_481 = (void*)0;
        int i;
        if (p_41)
        { /* block id: 144 */
            uint32_t *l_427 = (void*)0;
            uint32_t **l_426[4] = {&l_427,&l_427,&l_427,&l_427};
            int32_t ***l_433 = &p_888->g_11;
            int i;
            (*p_888->g_428) = l_426[1];
            (*p_888->g_12) ^= (safe_sub_func_int8_t_s_s(p_888->g_340.s6, ((void*)0 != l_433)));
        }
        else
        { /* block id: 147 */
            if (p_41)
                break;
        }
        if ((safe_sub_func_uint32_t_u_u(((safe_add_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_u(p_41, (((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 8))(l_440.s8a6ef681)), (int16_t)(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 2))(0x7652L, (-1L))).xyyy, ((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_441.s43525372)).even)).xwxxyzxywxxwwzyy, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(4L, (-1L), ((VECTOR(int16_t, 4))(l_442.xzxx)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_443.s04)).xxyx)).zzwyyyzw)), 0x1EC1L, 0x4ED1L)), ((VECTOR(int16_t, 2))(0x724AL, (-4L))).yyxyyyxyxyxxyxyx))).s7cdf)).xwzwzyww)).s6462174236313304)))))), ((VECTOR(int16_t, 16))(l_444.yyyyyxyxxyxxyyyx)), ((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 8))(l_445.yxyxxxxx)).odd, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_446.s64)))).yxxx))).xzzzwwww)))).s57)).xyyyyyyy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(l_447.s9189eab94f431acd)).s9aad)).xzxyxxzx))).s0714616444207723))).sd289)).xxxwxzyyzxxzxzxw)).hi, ((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 8))(((+0x79D7F501L) > (l_463 = ((0L >= ((safe_add_func_uint64_t_u_u((((*p_888->g_152) < (l_420[3][4][0] = 1UL)) >= ((l_455 = l_455) == ((*l_457) = l_456))), ((0L > (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_888->local_1_offset, get_local_id(1), 10), (l_445.x == p_888->g_151)))) != p_41))) || l_418.s4)) || 0x449BA6D8L))), 1L, (-6L), 8L, 3L, (-4L), (-5L), 0x3BBBL)), ((VECTOR(int16_t, 8))(0x07A4L))))), ((VECTOR(int16_t, 8))(0x2E01L)), ((VECTOR(int16_t, 8))(0x1268L)))))))), ((VECTOR(int16_t, 8))(0x68A6L))))).even, (int16_t)p_41)))))), 0x612AL, p_888->g_378.x, 0x1577L, (-1L))).s6 == FAKE_DIVERGE(p_888->group_1_offset, get_group_id(1), 10))))).s4066636415415471)).s50, ((VECTOR(int16_t, 2))(4L))))).yyyyyyyyxyxxxyyx)).s3 != p_41))) & p_888->g_404.sa), (*p_888->g_281))) != 1UL), 0x45DA0001L)))
        { /* block id: 154 */
            VECTOR(uint32_t, 16) l_474 = (VECTOR(uint32_t, 16))(0x6DC593E3L, (VECTOR(uint32_t, 4))(0x6DC593E3L, (VECTOR(uint32_t, 2))(0x6DC593E3L, 0x28CE2040L), 0x28CE2040L), 0x28CE2040L, 0x6DC593E3L, 0x28CE2040L, (VECTOR(uint32_t, 2))(0x6DC593E3L, 0x28CE2040L), (VECTOR(uint32_t, 2))(0x6DC593E3L, 0x28CE2040L), 0x6DC593E3L, 0x28CE2040L, 0x6DC593E3L, 0x28CE2040L);
            int16_t *l_482 = &p_888->g_211;
            int i;
            l_463 = (safe_mod_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(p_41, ((safe_lshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((0x7D23L > ((((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(l_474.se7)), ((VECTOR(uint32_t, 2))(0xE814A99FL, 0x442B08DBL)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((safe_div_func_int8_t_s_s(0x74L, (safe_sub_func_uint8_t_u_u((((((safe_sub_func_int16_t_s_s(((l_481 != l_482) || 0x4224L), (safe_sub_func_int64_t_s_s((-1L), (p_41 , 0x5AD44C66FAF08A24L))))) , p_888->g_485) != (void*)0) && p_41) , GROUP_DIVERGE(1, 1)), 0x09L)))) ^ l_474.sd), ((VECTOR(uint32_t, 2))(4294967295UL)), 0xA2E8CEB5L)).lo)), 0x86AD29E9L, 0xE5ACD3E4L)).even, ((VECTOR(uint32_t, 2))(0UL))))), 4294967295UL, 0xFF54EBF3L)).yyyzzwyzyxwxxwzz)).se460)).lo))), 0UL, l_474.s9, p_41, l_447.s3, 0x766CEE33L, 1UL)).even)).hi)).hi == l_447.se) && 0UL)), 0x69L)), p_41)) || p_41))), 2)), l_474.s4));
        }
        else
        { /* block id: 156 */
            return l_418.s3;
        }
    }
    l_488[0] = &l_420[3][1][0];
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_3 p_888->g_67 p_888->g_71 p_888->g_12 p_888->g_19 p_888->g_7 p_888->g_2 p_888->g_118 p_888->g_119 p_888->g_152 p_888->g_11 p_888->g_151 p_888->g_153 p_888->g_211 p_888->g_225 p_888->g_255 p_888->g_295 p_888->g_297 p_888->g_246 p_888->g_292 p_888->g_229 p_888->g_340 p_888->g_342 p_888->g_281 p_888->g_357 p_888->g_391 p_888->g_404 p_888->g_405 p_888->g_407 p_888->g_411
 * writes: p_888->g_119 p_888->g_118 p_888->g_3 p_888->g_71 p_888->g_203 p_888->g_225 p_888->g_255 p_888->g_295 p_888->g_246 p_888->g_292 p_888->g_211 p_888->g_281
 */
uint32_t  func_42(int64_t  p_43, int64_t  p_44, uint64_t  p_45, uint32_t  p_46, struct S0 * p_888)
{ /* block id: 15 */
    uint16_t l_53 = 6UL;
    int32_t l_373 = 0x1FDE669CL;
    int32_t l_382 = 0x36751C90L;
    int32_t ***l_397 = &p_888->g_11;
    int32_t ****l_396 = &l_397;
    int32_t l_400 = 0x2C7AD3C1L;
    int8_t l_401 = 1L;
    VECTOR(int8_t, 8) l_406 = (VECTOR(int8_t, 8))(0x0BL, (VECTOR(int8_t, 4))(0x0BL, (VECTOR(int8_t, 2))(0x0BL, 0L), 0L), 0L, 0x0BL, 0L);
    VECTOR(int8_t, 2) l_408 = (VECTOR(int8_t, 2))(0x36L, 0x74L);
    VECTOR(int8_t, 16) l_409 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int8_t, 2))(0L, 0L), (VECTOR(int8_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
    VECTOR(int8_t, 8) l_410 = (VECTOR(int8_t, 8))(0x75L, (VECTOR(int8_t, 4))(0x75L, (VECTOR(int8_t, 2))(0x75L, (-7L)), (-7L)), (-7L), 0x75L, (-7L));
    int i;
    (*p_888->g_357) = func_49(l_53, l_53, func_54(((l_53 , &p_888->g_12) == &p_888->g_12), p_46, p_888), p_888);
    for (p_888->g_211 = 0; (p_888->g_211 == (-7)); p_888->g_211--)
    { /* block id: 117 */
        uint16_t *l_362 = &l_53;
        uint32_t *l_367 = (void*)0;
        uint32_t *l_368 = (void*)0;
        uint32_t *l_369 = (void*)0;
        uint32_t *l_370 = (void*)0;
        uint32_t *l_371[10][4];
        int32_t l_372 = 1L;
        int32_t l_376 = 0x40E27DA5L;
        int32_t *l_377 = (void*)0;
        int32_t *l_379 = (void*)0;
        int32_t *l_380 = (void*)0;
        int32_t *l_381[5][8][6] = {{{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]}},{{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]}},{{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]}},{{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]}},{{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]},{&l_373,(void*)0,(void*)0,&p_888->g_7[1][6][1],(void*)0,&p_888->g_7[1][6][1]}}};
        uint16_t *l_398 = (void*)0;
        uint16_t *l_399[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i, j, k;
        for (i = 0; i < 10; i++)
        {
            for (j = 0; j < 4; j++)
                l_371[i][j] = (void*)0;
        }
        l_373 = (safe_mod_func_uint64_t_u_u((((*l_362) = p_44) ^ (safe_add_func_uint8_t_u_u((((**p_888->g_11) = ((safe_sub_func_uint64_t_u_u(5UL, p_46)) > (l_372 = GROUP_DIVERGE(2, 1)))) | l_373), (p_45 > ((((safe_sub_func_int32_t_s_s((l_382 &= l_376), (((VECTOR(int16_t, 16))(0x01E5L, (0UL == (safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 2))(p_888->g_391.yz)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))((l_400 ^= (safe_add_func_int64_t_s_s((safe_add_func_int16_t_s_s((((l_396 != (((0x71A94A4FL | 0x6878A801L) | p_43) , (void*)0)) >= 0xC6L) <= 0xAACCL), 0x65C4L)), (*p_888->g_152)))), 0x2870L, ((VECTOR(uint16_t, 8))(0x1212L)), ((VECTOR(uint16_t, 4))(65535UL)), 0x2FF1L, 0x4D93L)).odd)).s1425345651133016)).odd)).s16))), 0xDFCBL, 1UL)), 0x851EL, 8UL, 1UL, 0UL)), ((VECTOR(uint16_t, 8))(0xC539L)), ((VECTOR(uint16_t, 8))(0x9E66L))))).s5, p_46)), 0x12L)), p_888->g_71.s6)), p_888->g_255[0][2][2]))), (-1L), (-1L), p_44, p_888->g_292, (-1L), (-1L), ((VECTOR(int16_t, 2))(0x1A63L)), ((VECTOR(int16_t, 4))((-1L))), 0x4188L, 0L)).s5 <= 0x0F4FL))) && 0x3BEE2011L) && 255UL) == p_46))))), l_401));
        if (p_46)
            break;
    }
    (****l_396) = (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(p_888->g_404.s84e6)).hi, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_888->g_405.yzzwwywz)).s4776447474140651)).lo)))).s72)), ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),VECTOR(int8_t, 16),((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 2))(l_406.s47)).yyxxxyyy, ((VECTOR(int8_t, 4))(p_888->g_407.xxxx)).xwxywxxz))).s17)).xyyyxxyxxxxxyyxx, ((VECTOR(int8_t, 4))(l_408.yxxy)).wyxwxwxxyxyxzwyy, ((VECTOR(int8_t, 16))(l_409.sca8b75b9b0d88744))))).s11fa, ((VECTOR(int8_t, 16))(l_410.s6654026372143571)).s325d))))).xyyyzyzw)).s62, ((VECTOR(int8_t, 2))(p_888->g_411.xx)))))))))))).odd, 8L));
    return p_888->g_3[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_118 p_888->g_12 p_888->g_295 p_888->g_297 p_888->g_246 p_888->g_3 p_888->g_225 p_888->g_292 p_888->g_211 p_888->g_229 p_888->g_340 p_888->g_342 p_888->g_281 p_888->g_67
 * writes: p_888->g_118 p_888->g_3 p_888->g_295 p_888->g_246 p_888->g_225 p_888->g_292 p_888->g_211 p_888->g_281
 */
int32_t * func_49(int8_t  p_50, uint64_t  p_51, int32_t * p_52, struct S0 * p_888)
{ /* block id: 71 */
    int8_t l_270 = (-3L);
    int32_t l_271 = (-1L);
    int32_t l_273[2][2] = {{0x021F33E9L,0x021F33E9L},{0x021F33E9L,0x021F33E9L}};
    int32_t l_274[4][5] = {{(-10L),(-10L),0x13242E56L,0x18096DA2L,0x48F7EA25L},{(-10L),(-10L),0x13242E56L,0x18096DA2L,0x48F7EA25L},{(-10L),(-10L),0x13242E56L,0x18096DA2L,0x48F7EA25L},{(-10L),(-10L),0x13242E56L,0x18096DA2L,0x48F7EA25L}};
    uint16_t *l_293[3];
    uint8_t *l_296 = &p_888->g_292;
    VECTOR(int32_t, 2) l_302 = (VECTOR(int32_t, 2))(0x58309ED0L, 0x0B5572DAL);
    uint64_t *l_351[1];
    int32_t **l_355 = &p_888->g_281;
    int i, j;
    for (i = 0; i < 3; i++)
        l_293[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_351[i] = (void*)0;
lbl_353:
    for (p_888->g_118 = 23; (p_888->g_118 != 5); p_888->g_118--)
    { /* block id: 74 */
        int32_t *l_260 = &p_888->g_3[1];
        int32_t **l_259 = &l_260;
        int32_t *l_261 = &p_888->g_3[6];
        int32_t *l_262 = &p_888->g_3[2];
        int32_t *l_263 = &p_888->g_3[1];
        int32_t *l_264 = (void*)0;
        int32_t *l_265 = &p_888->g_3[2];
        int32_t *l_266 = &p_888->g_3[2];
        int32_t *l_267 = (void*)0;
        int32_t *l_268 = &p_888->g_3[2];
        int32_t *l_269 = &p_888->g_3[2];
        int32_t *l_272[3][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint8_t l_275 = 1UL;
        int i, j;
        (*p_888->g_12) = ((l_259 = (void*)0) == &p_52);
        l_275--;
        return p_52;
    }
    for (p_50 = 12; (p_50 > 1); p_50 = safe_sub_func_uint8_t_u_u(p_50, 2))
    { /* block id: 82 */
        int32_t **l_282[1];
        uint8_t *l_291[8] = {&p_888->g_292,&p_888->g_292,&p_888->g_292,&p_888->g_292,&p_888->g_292,&p_888->g_292,&p_888->g_292,&p_888->g_292};
        int64_t *l_294 = &p_888->g_295;
        VECTOR(int32_t, 8) l_309 = (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 6L), 6L), 6L, 3L, 6L);
        VECTOR(int32_t, 16) l_310 = (VECTOR(int32_t, 16))(0x1B2D3338L, (VECTOR(int32_t, 4))(0x1B2D3338L, (VECTOR(int32_t, 2))(0x1B2D3338L, 0x3486B52AL), 0x3486B52AL), 0x3486B52AL, 0x1B2D3338L, 0x3486B52AL, (VECTOR(int32_t, 2))(0x1B2D3338L, 0x3486B52AL), (VECTOR(int32_t, 2))(0x1B2D3338L, 0x3486B52AL), 0x1B2D3338L, 0x3486B52AL, 0x1B2D3338L, 0x3486B52AL);
        int i;
        for (i = 0; i < 1; i++)
            l_282[i] = &p_888->g_281;
        p_52 = p_52;
        l_271 &= ((VECTOR(int32_t, 4))((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(p_51, 7)), (safe_add_func_int8_t_s_s(((((safe_sub_func_uint8_t_u_u((l_291[7] == (((*l_294) |= (l_293[1] != (void*)0)) , l_296)), (GROUP_DIVERGE(0, 1) != ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(p_50, 0xBA97L, ((VECTOR(uint16_t, 2))(0x5EC5L, 0x85F3L)), l_273[1][1], 0UL, 0xB021L, 65535UL, ((VECTOR(uint16_t, 2))(p_888->g_297.s93)), ((VECTOR(uint16_t, 2))(65528UL, 0UL)), (safe_mod_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((p_888->g_118 > (((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))((-1L), 0x0404EA0CL)).xyxy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_302.yxyyyyxy)))).odd))).y & (safe_rshift_func_int16_t_s_u(((safe_mod_func_uint32_t_u_u((--p_888->g_246.y), ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(l_309.s42)), 0x0BC74A59L)).even, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_310.s1dfcf9e4)).s2531670377432151)).s2b))).xxxy))))), (int32_t)(safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(p_51, p_888->g_118)), p_51))))).xywzyxyyzzywyzzx, ((VECTOR(int32_t, 16))(7L))))).s1)) > GROUP_DIVERGE(0, 1)), p_51)))), 5)), 0x43L)), 0x02B2L, 0UL, 0x7D9FL)).s95)).odd))) , l_274[1][1]) < (*p_888->g_12)) & (*p_52)), 1L)))), ((VECTOR(int32_t, 2))(0x0536C76CL)), 0x0B1F8728L)).y;
    }
    for (p_50 = 0; (p_50 <= (-15)); --p_50)
    { /* block id: 90 */
        VECTOR(uint32_t, 16) l_341 = (VECTOR(uint32_t, 16))(0x46151896L, (VECTOR(uint32_t, 4))(0x46151896L, (VECTOR(uint32_t, 2))(0x46151896L, 0x876D71B7L), 0x876D71B7L), 0x876D71B7L, 0x46151896L, 0x876D71B7L, (VECTOR(uint32_t, 2))(0x46151896L, 0x876D71B7L), (VECTOR(uint32_t, 2))(0x46151896L, 0x876D71B7L), 0x46151896L, 0x876D71B7L, 0x46151896L, 0x876D71B7L);
        int i;
        for (p_888->g_225 = (-23); (p_888->g_225 < 29); ++p_888->g_225)
        { /* block id: 93 */
            uint64_t *l_322 = (void*)0;
            uint64_t **l_321[1][9] = {{&l_322,&l_322,&l_322,&l_322,&l_322,&l_322,&l_322,&l_322,&l_322}};
            int i, j;
            for (p_888->g_292 = 0; (p_888->g_292 <= 27); p_888->g_292 = safe_add_func_int64_t_s_s(p_888->g_292, 1))
            { /* block id: 96 */
                uint64_t ***l_323 = &l_321[0][6];
                (*l_323) = l_321[0][6];
            }
        }
        (*p_888->g_12) |= l_273[0][0];
        for (p_888->g_211 = (-10); (p_888->g_211 < 16); ++p_888->g_211)
        { /* block id: 103 */
            int32_t **l_327 = &p_888->g_281;
            uint16_t l_332 = 65529UL;
            VECTOR(uint8_t, 4) l_335 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 254UL), 254UL);
            int32_t *l_352 = &l_273[0][0];
            int i;
            (*l_327) = p_52;
            (*l_352) ^= (l_271 |= ((**l_327) = ((((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(GROUP_DIVERGE(1, 1), (((safe_sub_func_uint64_t_u_u((((safe_add_func_int32_t_s_s(0L, 4294967290UL)) == p_888->g_229.s6) & l_332), (safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(l_335.wyzy)).z, ((((safe_lshift_func_uint16_t_u_s((safe_add_func_uint32_t_u_u(1UL, ((((((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 16))(p_888->g_340.s876b8aeebaf70949)), ((VECTOR(uint32_t, 16))(l_341.s427db5c1104dd7d9)), ((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(p_888->g_342.s7016)).zwzywwwz)).s7051222060114150)))))).hi)), ((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 16))(((((safe_rshift_func_int16_t_s_u((p_50 || p_888->g_211), 12)) >= (l_302.x <= (safe_sub_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_add_func_uint32_t_u_u(0xE7595150L, l_270)), p_51)), p_51)))) && (**l_327)) == p_888->g_292), ((VECTOR(uint32_t, 2))(0x83E7520BL)), 0UL, 4294967287UL, p_888->g_67.s4, ((VECTOR(uint32_t, 4))(0x683442A8L)), ((VECTOR(uint32_t, 4))(1UL)), 4294967295UL, 0xA35A31E5L)).sb9, ((VECTOR(uint32_t, 2))(0UL)), ((VECTOR(uint32_t, 2))(1UL))))).yxxyyyyx))), ((VECTOR(uint32_t, 8))(0UL)), ((VECTOR(uint32_t, 8))(6UL))))).s4 , (-1L)) , p_888->g_246.y) | p_50) , 4294967290UL))), (**l_327))) , (void*)0) == l_351[0]) ^ l_302.x))))) == p_51) <= (*p_888->g_12)), 0x2FE0L, 0x9ADDL)).zwxzwzyz)), ((VECTOR(uint16_t, 8))(0x1AC0L))))).s4 ^ 0xA11EL) != 0x77L)));
            if (l_270)
                goto lbl_353;
        }
        if (p_888->g_225)
            goto lbl_353;
    }
    (*l_355) = p_52;
    return (*l_355);
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_3 p_888->g_67 p_888->g_71 p_888->g_12 p_888->g_19 p_888->g_7 p_888->g_2 p_888->g_118 p_888->g_119 p_888->g_152 p_888->g_11 p_888->g_151 p_888->g_153 p_888->g_211 p_888->g_225 p_888->g_255
 * writes: p_888->g_119 p_888->g_118 p_888->g_3 p_888->g_71 p_888->g_203 p_888->g_225 p_888->g_255
 */
int32_t * func_54(int32_t  p_55, uint8_t  p_56, struct S0 * p_888)
{ /* block id: 16 */
    uint16_t l_59 = 0x9AAEL;
    VECTOR(uint64_t, 16) l_60 = (VECTOR(uint64_t, 16))(18446744073709551610UL, (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 18446744073709551614UL), 18446744073709551614UL), 18446744073709551614UL, 18446744073709551610UL, 18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 18446744073709551614UL), (VECTOR(uint64_t, 2))(18446744073709551610UL, 18446744073709551614UL), 18446744073709551610UL, 18446744073709551614UL, 18446744073709551610UL, 18446744073709551614UL);
    VECTOR(uint64_t, 4) l_61 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 7UL), 7UL);
    int32_t **l_62 = &p_888->g_12;
    int32_t **l_66 = &p_888->g_12;
    int32_t ***l_65 = &l_66;
    VECTOR(uint64_t, 16) l_68 = (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x28AE825D0D300741L), 0x28AE825D0D300741L), 0x28AE825D0D300741L, 18446744073709551611UL, 0x28AE825D0D300741L, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x28AE825D0D300741L), (VECTOR(uint64_t, 2))(18446744073709551611UL, 0x28AE825D0D300741L), 18446744073709551611UL, 0x28AE825D0D300741L, 18446744073709551611UL, 0x28AE825D0D300741L);
    VECTOR(uint64_t, 4) l_69 = (VECTOR(uint64_t, 4))(0xAED54F57EB90776CL, (VECTOR(uint64_t, 2))(0xAED54F57EB90776CL, 0x54D5C1110172C61BL), 0x54D5C1110172C61BL);
    VECTOR(uint64_t, 8) l_70 = (VECTOR(uint64_t, 8))(0x960B3385642B86B6L, (VECTOR(uint64_t, 4))(0x960B3385642B86B6L, (VECTOR(uint64_t, 2))(0x960B3385642B86B6L, 1UL), 1UL), 1UL, 0x960B3385642B86B6L, 1UL);
    int32_t l_74 = 0x6EF4A51DL;
    uint32_t l_94 = 0xB6A2D9A9L;
    VECTOR(uint32_t, 8) l_103 = (VECTOR(uint32_t, 8))(0x3E0D8C1BL, (VECTOR(uint32_t, 4))(0x3E0D8C1BL, (VECTOR(uint32_t, 2))(0x3E0D8C1BL, 0x6B54986CL), 0x6B54986CL), 0x6B54986CL, 0x3E0D8C1BL, 0x6B54986CL);
    int32_t *l_120 = (void*)0;
    int32_t **l_148 = &p_888->g_12;
    int32_t ***l_147[10] = {&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148};
    int64_t l_181 = 4L;
    VECTOR(uint64_t, 4) l_207 = (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 1UL), 1UL);
    uint64_t *l_216 = (void*)0;
    int i;
    if (((safe_rshift_func_uint8_t_u_u(p_55, 6)) ^ ((((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 8))(l_59, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(l_60.s758a71d4)).lo)).xzyxzyywzwwwwwyw)).sb, ((VECTOR(uint64_t, 2))(l_61.xy)), ((p_888->g_3[0] , l_62) != ((*l_65) = ((safe_div_func_int8_t_s_s(0x59L, p_55)) , l_62))), ((VECTOR(uint64_t, 2))(p_888->g_67.s25)), 18446744073709551615UL)).s2016610523453350, ((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 8))(l_68.s8113439b)).s7123274324760647, ((VECTOR(uint64_t, 4))(l_69.wxzx)).xwyxwzzxxyzyyywx))), ((VECTOR(uint64_t, 4))(l_70.s0267)).yyxzwzxwwwxzzzxx))).sb == ((VECTOR(int64_t, 2))(p_888->g_71.s35)).lo) , ((void*)0 == &l_62))))
    { /* block id: 18 */
        int32_t *l_72 = &p_888->g_3[2];
        int32_t l_73 = (-1L);
        int32_t *l_75 = &p_888->g_3[2];
        int32_t *l_76 = &p_888->g_3[2];
        int32_t *l_77 = (void*)0;
        int32_t *l_78 = (void*)0;
        int32_t *l_79 = &p_888->g_3[6];
        int32_t *l_80 = &l_74;
        int32_t *l_81 = &p_888->g_3[0];
        int32_t *l_82 = &p_888->g_3[2];
        int32_t *l_83 = (void*)0;
        int32_t *l_84 = &p_888->g_3[5];
        int32_t *l_85 = &p_888->g_3[2];
        int32_t *l_86 = &l_73;
        int32_t *l_87 = (void*)0;
        int32_t *l_88 = (void*)0;
        int32_t *l_89 = (void*)0;
        int32_t l_90[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
        int32_t *l_91 = &l_74;
        int32_t *l_92 = &l_74;
        int32_t *l_93[2][4][8] = {{{&l_90[3],&l_90[5],(void*)0,&l_90[5],(void*)0,(void*)0,&l_90[5],(void*)0},{&l_90[3],&l_90[5],(void*)0,&l_90[5],(void*)0,(void*)0,&l_90[5],(void*)0},{&l_90[3],&l_90[5],(void*)0,&l_90[5],(void*)0,(void*)0,&l_90[5],(void*)0},{&l_90[3],&l_90[5],(void*)0,&l_90[5],(void*)0,(void*)0,&l_90[5],(void*)0}},{{&l_90[3],&l_90[5],(void*)0,&l_90[5],(void*)0,(void*)0,&l_90[5],(void*)0},{&l_90[3],&l_90[5],(void*)0,&l_90[5],(void*)0,(void*)0,&l_90[5],(void*)0},{&l_90[3],&l_90[5],(void*)0,&l_90[5],(void*)0,(void*)0,&l_90[5],(void*)0},{&l_90[3],&l_90[5],(void*)0,&l_90[5],(void*)0,(void*)0,&l_90[5],(void*)0}}};
        int i, j, k;
        l_94--;
        p_888->g_119 |= (((((((safe_div_func_uint16_t_u_u((p_55 | (safe_div_func_uint64_t_u_u((((~(((safe_lshift_func_uint8_t_u_s((((((VECTOR(uint32_t, 2))(l_103.s35)).hi > (**l_62)) >= (safe_div_func_int16_t_s_s(p_888->g_67.sc, (safe_mod_func_int32_t_s_s(((*l_92) |= (safe_sub_func_uint8_t_u_u((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),uint32_t,((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))((safe_mul_func_int8_t_s_s((0x0C019427022D3B1CL < ((safe_mod_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u((((((*l_86) > p_888->g_19.s4) != (((((p_888->g_19.s2 & ((safe_div_func_int8_t_s_s(0x14L, p_888->g_71.s1)) == p_888->g_7[0][4][3])) , p_888->g_3[2]) , p_888->g_2) ^ (**l_66)) ^ p_55)) , 0x0D59BCE111123652L) < p_888->g_118), p_55)) & (-10L)), p_888->g_3[5])) ^ 0x0161L)), p_56)), ((VECTOR(uint32_t, 2))(0x90C03485L)), 0UL)).zxxwxwzzxzwzwyxz)).s58, (uint32_t)p_56, (uint32_t)p_56))), 0UL, 0UL)).zyywwzyz)).s4 != 0x17B6AFEBL), p_888->g_19.s0))), p_56))))) && p_888->g_67.sc), p_55)) >= GROUP_DIVERGE(2, 1)) , p_56)) && 0x71CBD15FE66233F1L) , GROUP_DIVERGE(2, 1)), p_888->g_71.s1))), p_888->g_67.s7)) != 0x72EEF0ED02C9C021L) , &p_55) == &p_55) <= p_56) && FAKE_DIVERGE(p_888->global_0_offset, get_global_id(0), 10)) < p_56);
        l_120 = &l_73;
    }
    else
    { /* block id: 23 */
        int32_t **l_127 = &l_120;
        uint8_t l_154[6] = {0xA1L,0xA1L,0xA1L,0xA1L,0xA1L,0xA1L};
        VECTOR(uint32_t, 8) l_252 = (VECTOR(uint32_t, 8))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 0x760F319DL), 0x760F319DL), 0x760F319DL, 3UL, 0x760F319DL);
        int i;
        for (p_888->g_118 = 0; (p_888->g_118 <= 57); p_888->g_118++)
        { /* block id: 26 */
            uint64_t *l_128 = (void*)0;
            uint64_t *l_129[4];
            int64_t *l_134[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t ***l_149 = &p_888->g_11;
            int32_t *l_150 = &p_888->g_151;
            VECTOR(uint8_t, 2) l_166 = (VECTOR(uint8_t, 2))(0xC6L, 0x4DL);
            VECTOR(int64_t, 8) l_189 = (VECTOR(int64_t, 8))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, (-1L)), (-1L)), (-1L), 4L, (-1L));
            VECTOR(int64_t, 4) l_190 = (VECTOR(int64_t, 4))(0x1B7CDBE9B9FB7909L, (VECTOR(int64_t, 2))(0x1B7CDBE9B9FB7909L, 0x6084136D5DC852AAL), 0x6084136D5DC852AAL);
            VECTOR(uint8_t, 2) l_204 = (VECTOR(uint8_t, 2))(0xD2L, 251UL);
            uint64_t l_212 = 0xF061EBB8F7548C9AL;
            VECTOR(int32_t, 8) l_215 = (VECTOR(int32_t, 8))(0x00497F3AL, (VECTOR(int32_t, 4))(0x00497F3AL, (VECTOR(int32_t, 2))(0x00497F3AL, 0x55C52C77L), 0x55C52C77L), 0x55C52C77L, 0x00497F3AL, 0x55C52C77L);
            VECTOR(uint32_t, 2) l_247 = (VECTOR(uint32_t, 2))(0x99CC3478L, 4294967295UL);
            int i;
            for (i = 0; i < 4; i++)
                l_129[i] = (void*)0;
            if (((((safe_div_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(0x330FL, (~(((**l_62) = (((*l_65) = l_127) == (p_888->g_19.s4 , &p_888->g_12))) <= (((safe_lshift_func_int16_t_s_s((((safe_div_func_int64_t_s_s((p_888->g_71.s6 = 2L), ((safe_rshift_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((l_134[2] == ((p_56 > (safe_mod_func_int8_t_s_s((((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(1L, (-1L))), (((safe_add_func_int16_t_s_s((~(safe_sub_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((-1L), (((((*l_150) |= ((l_147[3] = &p_888->g_11) != l_149)) , 0xB3C3F1057C5A96FCL) != p_55) ^ p_888->g_2))), p_55))), p_888->g_19.s3)) == 0x5DAD4C5443C59826L) == p_55), 0x0AC7E52DL, 0x75F8C257L, ((VECTOR(int32_t, 2))(1L)), 6L)).s4 , 0x4248L) != p_888->g_19.s4) , p_888->g_118), p_888->g_119))) , p_888->g_152)), p_56)) && p_56), 0)) & l_154[4]))) ^ p_56) , 0x1344L), 15)) != p_888->g_19.s5) & 0x53FF892F54D7D783L))))), 4UL)) ^ 0x4A69D0D3L) , p_888->g_119) || (**l_62)))
            { /* block id: 32 */
                return (*p_888->g_11);
            }
            else
            { /* block id: 34 */
                uint64_t l_161 = 18446744073709551610UL;
                uint8_t *l_182 = &l_154[0];
                int8_t l_213 = (-6L);
                VECTOR(int32_t, 16) l_214 = (VECTOR(int32_t, 16))(0x3A321D59L, (VECTOR(int32_t, 4))(0x3A321D59L, (VECTOR(int32_t, 2))(0x3A321D59L, 0L), 0L), 0L, 0x3A321D59L, 0L, (VECTOR(int32_t, 2))(0x3A321D59L, 0L), (VECTOR(int32_t, 2))(0x3A321D59L, 0L), 0x3A321D59L, 0L, 0x3A321D59L, 0L);
                int32_t *l_228 = &p_888->g_3[2];
                VECTOR(uint32_t, 8) l_250 = (VECTOR(uint32_t, 8))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 5UL), 5UL), 5UL, 5UL, 5UL);
                int i;
                (***l_149) ^= p_56;
                if ((safe_lshift_func_uint8_t_u_u(((*l_182) = ((safe_rshift_func_int16_t_s_u(((p_888->g_151 > (((((safe_mul_func_int16_t_s_s(((p_55 | l_161) == ((safe_lshift_func_uint16_t_u_s((((+p_56) , &p_55) != &p_55), 7)) , (safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 4))(l_166.xxyy)).xxwwzzyy, ((VECTOR(uint8_t, 2))(0x2EL, 0x4CL)).yxxyxyxx))).odd)).w, (p_888->g_19.s5 <= (safe_mul_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(p_55, (safe_mul_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((safe_div_func_int64_t_s_s(((safe_add_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((!1UL) , p_888->g_71.s7), l_181)), p_56)) || 18446744073709551615UL), (*p_888->g_152))), 0x31L)), p_56)))), 6UL))))))), p_56)) , 1L) == p_888->g_67.se) & l_161) ^ l_161)) || p_888->g_119), 5)) <= l_154[4])), p_55)))
                { /* block id: 37 */
                    uint32_t l_195 = 0x42261996L;
                    int8_t *l_202[10] = {(void*)0,&p_888->g_203[2],(void*)0,(void*)0,&p_888->g_203[2],(void*)0,(void*)0,&p_888->g_203[2],(void*)0,(void*)0};
                    uint32_t l_209 = 0xC6216E46L;
                    int16_t *l_210 = &p_888->g_211;
                    int32_t ***l_226 = &p_888->g_11;
                    int i;
                    if ((((((safe_div_func_int32_t_s_s((safe_mod_func_uint32_t_u_u(((safe_div_func_int64_t_s_s(3L, (((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(l_189.s5033361117614426)).s05a8)).zywyyyww, ((VECTOR(int64_t, 2))(l_190.yw)).yxxyyyxx))).s6 ^ (0x6A6AL ^ GROUP_DIVERGE(2, 1))))) < (((safe_rshift_func_int16_t_s_s(((((safe_mod_func_int64_t_s_s(l_195, p_56)) ^ (safe_rshift_func_int8_t_s_s(((safe_div_func_uint16_t_u_u((p_888->g_119 == 0xDA4D15D3D01E5D37L), (safe_mod_func_int32_t_s_s(((((VECTOR(int32_t, 2))(0x7BFA6EBBL, 0x026830DAL)).even , ((p_888->g_203[0] = 0x05L) != ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_204.yyxx)).hi)).lo)) >= ((safe_sub_func_int32_t_s_s(((((VECTOR(uint64_t, 16))(l_207.zzyzxxxxyzyyzyzy)).s9 , ((((VECTOR(int8_t, 16))((-1L), 0x5AL, 0x36L, (-8L), 0x0DL, p_56, 0x4EL, (-10L), (safe_unary_minus_func_int16_t_s(((*l_210) |= (((FAKE_DIVERGE(p_888->global_0_offset, get_global_id(0), 10) == (*p_888->g_12)) < p_56) >= l_209)))), (-1L), ((VECTOR(int8_t, 4))((-10L))), (-10L), 3L)).s0 && FAKE_DIVERGE(p_888->group_1_offset, get_group_id(1), 10)) ^ (*p_888->g_152))) > p_888->g_119), l_195)) & (**l_148))), l_195)))) , p_888->g_211), 7))) <= 0x00EF30843EA2915EL) , l_212), p_55)) > (***l_149)) & FAKE_DIVERGE(p_888->local_1_offset, get_local_id(1), 10))), (*p_888->g_12))), p_888->g_118)) , (*p_888->g_11)) == (*l_62)) , l_213) , p_56))
                    { /* block id: 40 */
                        int32_t *l_223 = (void*)0;
                        int32_t *l_224 = &p_888->g_225;
                        int32_t ****l_227 = &l_147[0];
                        (**l_62) = ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(((void*)0 != &p_56), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_214.sabc0)).xwxxzywxwzxxywzx)).s29)), 0x02DF5F39L, 6L)), ((VECTOR(int32_t, 2))(0x7C717972L, (-1L))), 1L)).s6143325474446773, ((VECTOR(int32_t, 8))(l_215.s01257702)).s5647210366576153))).sd;
                        (**l_62) = (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0x575D8014L, 0x82343345L)).xxxx)).z | p_888->g_7[0][4][1]);
                        (*p_888->g_12) = (((l_216 == (((p_888->g_203[5] = 0x65L) && (safe_rshift_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(((-7L) || (**p_888->g_11)), ((+((*l_224) |= ((***l_149) || (+1UL)))) , (l_226 != ((***l_149) , ((*l_227) = &l_66)))))), 3)) && 4L), 6))) , &l_161)) , 5UL) | (**l_148));
                        if (p_56)
                            break;
                    }
                    else
                    { /* block id: 48 */
                        uint64_t l_231 = 18446744073709551613UL;
                        (**l_62) = (-1L);
                        if ((***l_149))
                            break;
                        (*l_66) = l_228;
                        l_214.sb ^= ((((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 4))(p_888->g_229.s9b7e)).yywywxwxyzzywzwx, ((VECTOR(uint64_t, 2))(p_888->g_230.s74)).yxxyxyxxyyxxyxyy))).sb <= l_231) , ((**p_888->g_11) = p_55));
                    }
                }
                else
                { /* block id: 55 */
                    uint32_t l_234 = 0x3B933D1BL;
                    VECTOR(uint32_t, 16) l_248 = (VECTOR(uint32_t, 16))(0x8E8E59E1L, (VECTOR(uint32_t, 4))(0x8E8E59E1L, (VECTOR(uint32_t, 2))(0x8E8E59E1L, 0xD61C2E07L), 0xD61C2E07L), 0xD61C2E07L, 0x8E8E59E1L, 0xD61C2E07L, (VECTOR(uint32_t, 2))(0x8E8E59E1L, 0xD61C2E07L), (VECTOR(uint32_t, 2))(0x8E8E59E1L, 0xD61C2E07L), 0x8E8E59E1L, 0xD61C2E07L, 0x8E8E59E1L, 0xD61C2E07L);
                    int32_t l_256 = 0x259CD487L;
                    int i;
                    for (p_55 = 17; (p_55 == (-17)); p_55 = safe_sub_func_int64_t_s_s(p_55, 4))
                    { /* block id: 58 */
                        uint32_t l_239 = 4294967295UL;
                        VECTOR(uint32_t, 2) l_249 = (VECTOR(uint32_t, 2))(0x16FD6CFEL, 4294967295UL);
                        uint16_t *l_253 = &l_59;
                        uint16_t *l_254 = &p_888->g_255[0][3][3];
                        int i;
                        l_234--;
                        l_256 ^= (((VECTOR(int16_t, 2))(0x135EL, 6L)).odd && ((safe_rshift_func_uint16_t_u_u(0x1960L, 12)) >= ((*l_254) |= ((*l_253) = ((+l_239) , ((safe_mod_func_int16_t_s_s((-9L), 0xC803L)) , (0x1E53DDB6L || (safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(1UL, 0x430AL, 1UL, 0xB66CL)).w, ((p_888->g_2 & ((safe_mul_func_uint16_t_u_u(((0x67FCE753BC47F2C3L == (((**l_148) = ((l_239 >= GROUP_DIVERGE(2, 1)) && (((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 16))(p_888->g_246.xyxxxyyxxyyyyyxx)).odd, ((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),VECTOR(uint32_t, 16),((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0x0D0EAF78L, 0xEB8E4659L)).xxxx)).zwzzywwy)).s53, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(l_247.yx)))).yyyy, ((VECTOR(uint32_t, 8))(l_248.s62bf705e)).lo, ((VECTOR(uint32_t, 2))(l_249.xy)).xyyx))).xywxxyzz, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(4294967295UL, 4294967289UL)).yxxx)).even)).xyxxxyxy, ((VECTOR(uint32_t, 2))(l_250.s41)).xyyxxyyy))).odd)).yzzyyxxx)).s63)).hi, 5UL, (safe_unary_minus_func_int8_t_s(((+(((VECTOR(uint32_t, 4))(l_252.s4625)).y , 0x5F2F72A917BC99ACL)) != p_56))), 4294967287UL, p_56, p_888->g_119, FAKE_DIVERGE(p_888->group_1_offset, get_group_id(1), 10), 0xAEA6EA95L, p_888->g_119, ((VECTOR(uint32_t, 2))(3UL)), 4294967295UL, ((VECTOR(uint32_t, 2))(0x4988C3F0L)), 4294967294UL, 1UL)).s2e))).yyxyxyxxxyxyyyxy, ((VECTOR(uint32_t, 16))(0xE6465222L)), ((VECTOR(uint32_t, 16))(4294967295UL))))).lo, ((VECTOR(uint32_t, 8))(0xCE8A82D6L))))).s6 , (*l_228)))) ^ l_239)) , 65535UL), p_888->g_67.s0)) && l_234)) && p_55))))))))));
                    }
                    return (*p_888->g_11);
                }
            }
        }
    }
    return (*p_888->g_11);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_889;
    struct S0* p_888 = &c_889;
    struct S0 c_890 = {
        0x60F57A7CL, // p_888->g_2
        {1L,1L,1L,1L,1L,1L,1L}, // p_888->g_3
        {{{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L}},{{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L}},{{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L}},{{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L}},{{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L},{0L,(-1L),(-1L),0L,(-7L),0x2F5BFB66L,5L}}}, // p_888->g_7
        &p_888->g_3[2], // p_888->g_12
        &p_888->g_12, // p_888->g_11
        (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xAB8F5B6EF3BB579AL), 0xAB8F5B6EF3BB579AL), 0xAB8F5B6EF3BB579AL, 0UL, 0xAB8F5B6EF3BB579AL), // p_888->g_19
        (VECTOR(uint64_t, 16))(0x6FA9739A15FBE5B5L, (VECTOR(uint64_t, 4))(0x6FA9739A15FBE5B5L, (VECTOR(uint64_t, 2))(0x6FA9739A15FBE5B5L, 18446744073709551613UL), 18446744073709551613UL), 18446744073709551613UL, 0x6FA9739A15FBE5B5L, 18446744073709551613UL, (VECTOR(uint64_t, 2))(0x6FA9739A15FBE5B5L, 18446744073709551613UL), (VECTOR(uint64_t, 2))(0x6FA9739A15FBE5B5L, 18446744073709551613UL), 0x6FA9739A15FBE5B5L, 18446744073709551613UL, 0x6FA9739A15FBE5B5L, 18446744073709551613UL), // p_888->g_67
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x04370A8D4FF7D934L), 0x04370A8D4FF7D934L), 0x04370A8D4FF7D934L, 1L, 0x04370A8D4FF7D934L), // p_888->g_71
        4294967295UL, // p_888->g_118
        0x4BL, // p_888->g_119
        (-1L), // p_888->g_151
        0L, // p_888->g_153
        &p_888->g_153, // p_888->g_152
        {0x04L,0x04L,0x04L,0x04L,0x04L,0x04L}, // p_888->g_203
        0L, // p_888->g_211
        0x5960F075L, // p_888->g_225
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 6UL), 6UL), 6UL, 1UL, 6UL, (VECTOR(uint64_t, 2))(1UL, 6UL), (VECTOR(uint64_t, 2))(1UL, 6UL), 1UL, 6UL, 1UL, 6UL), // p_888->g_229
        (VECTOR(uint64_t, 8))(18446744073709551614UL, (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 0x2FDAFAEC72D1EA1BL), 0x2FDAFAEC72D1EA1BL), 0x2FDAFAEC72D1EA1BL, 18446744073709551614UL, 0x2FDAFAEC72D1EA1BL), // p_888->g_230
        (VECTOR(uint32_t, 2))(7UL, 0x6111D3FEL), // p_888->g_246
        {{{0xD46DL,65527UL,65535UL,0x1012L,65535UL},{0xD46DL,65527UL,65535UL,0x1012L,65535UL},{0xD46DL,65527UL,65535UL,0x1012L,65535UL},{0xD46DL,65527UL,65535UL,0x1012L,65535UL},{0xD46DL,65527UL,65535UL,0x1012L,65535UL},{0xD46DL,65527UL,65535UL,0x1012L,65535UL},{0xD46DL,65527UL,65535UL,0x1012L,65535UL}}}, // p_888->g_255
        &p_888->g_3[2], // p_888->g_281
        {{&p_888->g_281,&p_888->g_281,&p_888->g_281}}, // p_888->g_280
        0x63L, // p_888->g_292
        (-1L), // p_888->g_295
        (VECTOR(uint16_t, 16))(0x063BL, (VECTOR(uint16_t, 4))(0x063BL, (VECTOR(uint16_t, 2))(0x063BL, 8UL), 8UL), 8UL, 0x063BL, 8UL, (VECTOR(uint16_t, 2))(0x063BL, 8UL), (VECTOR(uint16_t, 2))(0x063BL, 8UL), 0x063BL, 8UL, 0x063BL, 8UL), // p_888->g_297
        (void*)0, // p_888->g_326
        (VECTOR(uint32_t, 16))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0x45FABA86L), 0x45FABA86L), 0x45FABA86L, 4294967290UL, 0x45FABA86L, (VECTOR(uint32_t, 2))(4294967290UL, 0x45FABA86L), (VECTOR(uint32_t, 2))(4294967290UL, 0x45FABA86L), 4294967290UL, 0x45FABA86L, 4294967290UL, 0x45FABA86L), // p_888->g_340
        (VECTOR(uint32_t, 8))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0x5D4B49C6L), 0x5D4B49C6L), 0x5D4B49C6L, 5UL, 0x5D4B49C6L), // p_888->g_342
        {&p_888->g_12,(void*)0,&p_888->g_12,&p_888->g_12,(void*)0,&p_888->g_12,&p_888->g_12}, // p_888->g_354
        (void*)0, // p_888->g_356
        &p_888->g_281, // p_888->g_357
        (VECTOR(int32_t, 2))(0x6F4E6486L, 0x56EF3A2CL), // p_888->g_378
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xA693L), 0xA693L), // p_888->g_391
        (VECTOR(int8_t, 16))(0x01L, (VECTOR(int8_t, 4))(0x01L, (VECTOR(int8_t, 2))(0x01L, 0x1EL), 0x1EL), 0x1EL, 0x01L, 0x1EL, (VECTOR(int8_t, 2))(0x01L, 0x1EL), (VECTOR(int8_t, 2))(0x01L, 0x1EL), 0x01L, 0x1EL, 0x01L, 0x1EL), // p_888->g_404
        (VECTOR(int8_t, 4))(0x01L, (VECTOR(int8_t, 2))(0x01L, 0L), 0L), // p_888->g_405
        (VECTOR(int8_t, 2))(5L, 0x67L), // p_888->g_407
        (VECTOR(int8_t, 2))(0x0DL, (-10L)), // p_888->g_411
        (void*)0, // p_888->g_430
        &p_888->g_430, // p_888->g_429
        &p_888->g_429, // p_888->g_428
        (void*)0, // p_888->g_486
        &p_888->g_486, // p_888->g_485
        0L, // p_888->g_538
        (VECTOR(int8_t, 2))(0x73L, 0x52L), // p_888->g_559
        (VECTOR(uint64_t, 8))(0xE43E305F96895D4CL, (VECTOR(uint64_t, 4))(0xE43E305F96895D4CL, (VECTOR(uint64_t, 2))(0xE43E305F96895D4CL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xE43E305F96895D4CL, 18446744073709551615UL), // p_888->g_589
        (VECTOR(uint16_t, 2))(0x529CL, 0UL), // p_888->g_619
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int32_t, 2))(0L, (-1L)), (VECTOR(int32_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L)), // p_888->g_629
        (VECTOR(uint16_t, 8))(0xEBAAL, (VECTOR(uint16_t, 4))(0xEBAAL, (VECTOR(uint16_t, 2))(0xEBAAL, 0xC0EEL), 0xC0EEL), 0xC0EEL, 0xEBAAL, 0xC0EEL), // p_888->g_664
        (VECTOR(uint8_t, 2))(6UL, 1UL), // p_888->g_665
        (-9L), // p_888->g_682
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_888->g_689
        5UL, // p_888->g_715
        &p_888->g_715, // p_888->g_714
        &p_888->g_714, // p_888->g_713
        &p_888->g_713, // p_888->g_712
        (VECTOR(int64_t, 16))(0x00BEF7A4C00BD590L, (VECTOR(int64_t, 4))(0x00BEF7A4C00BD590L, (VECTOR(int64_t, 2))(0x00BEF7A4C00BD590L, 1L), 1L), 1L, 0x00BEF7A4C00BD590L, 1L, (VECTOR(int64_t, 2))(0x00BEF7A4C00BD590L, 1L), (VECTOR(int64_t, 2))(0x00BEF7A4C00BD590L, 1L), 0x00BEF7A4C00BD590L, 1L, 0x00BEF7A4C00BD590L, 1L), // p_888->g_722
        (VECTOR(int64_t, 2))((-5L), 0x31CD9254AD849FB3L), // p_888->g_724
        (VECTOR(int64_t, 8))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0x3F39F7A66826602CL), 0x3F39F7A66826602CL), 0x3F39F7A66826602CL, (-10L), 0x3F39F7A66826602CL), // p_888->g_725
        (VECTOR(int64_t, 2))(0x074FBEEA0EEC36C7L, 0L), // p_888->g_745
        {{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}},{{1L},{1L},{1L}}}, // p_888->g_778
        0x64E7DC26L, // p_888->g_786
        (VECTOR(uint32_t, 2))(0xDA814CB9L, 2UL), // p_888->g_799
        (-1L), // p_888->g_807
        &p_888->g_807, // p_888->g_806
        &p_888->g_806, // p_888->g_805
        (VECTOR(int64_t, 4))(0x6EEFB617826E36D3L, (VECTOR(int64_t, 2))(0x6EEFB617826E36D3L, 0x545DA1705F0E2C91L), 0x545DA1705F0E2C91L), // p_888->g_820
        {{0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L},{0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L,0xD5C61976L}}, // p_888->g_825
        (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x57L), 0x57L), // p_888->g_842
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), (VECTOR(uint16_t, 2))(65535UL, 1UL), 65535UL, 1UL, 65535UL, 1UL), // p_888->g_855
        {(void*)0,(void*)0,(void*)0}, // p_888->g_884
        &p_888->g_884[2], // p_888->g_883
        sequence_input[get_global_id(0)], // p_888->global_0_offset
        sequence_input[get_global_id(1)], // p_888->global_1_offset
        sequence_input[get_global_id(2)], // p_888->global_2_offset
        sequence_input[get_local_id(0)], // p_888->local_0_offset
        sequence_input[get_local_id(1)], // p_888->local_1_offset
        sequence_input[get_local_id(2)], // p_888->local_2_offset
        sequence_input[get_group_id(0)], // p_888->group_0_offset
        sequence_input[get_group_id(1)], // p_888->group_1_offset
        sequence_input[get_group_id(2)], // p_888->group_2_offset
    };
    c_889 = c_890;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_888);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_888->g_2, "p_888->g_2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_888->g_3[i], "p_888->g_3[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_888->g_7[i][j][k], "p_888->g_7[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_888->g_19.s0, "p_888->g_19.s0", print_hash_value);
    transparent_crc(p_888->g_19.s1, "p_888->g_19.s1", print_hash_value);
    transparent_crc(p_888->g_19.s2, "p_888->g_19.s2", print_hash_value);
    transparent_crc(p_888->g_19.s3, "p_888->g_19.s3", print_hash_value);
    transparent_crc(p_888->g_19.s4, "p_888->g_19.s4", print_hash_value);
    transparent_crc(p_888->g_19.s5, "p_888->g_19.s5", print_hash_value);
    transparent_crc(p_888->g_19.s6, "p_888->g_19.s6", print_hash_value);
    transparent_crc(p_888->g_19.s7, "p_888->g_19.s7", print_hash_value);
    transparent_crc(p_888->g_67.s0, "p_888->g_67.s0", print_hash_value);
    transparent_crc(p_888->g_67.s1, "p_888->g_67.s1", print_hash_value);
    transparent_crc(p_888->g_67.s2, "p_888->g_67.s2", print_hash_value);
    transparent_crc(p_888->g_67.s3, "p_888->g_67.s3", print_hash_value);
    transparent_crc(p_888->g_67.s4, "p_888->g_67.s4", print_hash_value);
    transparent_crc(p_888->g_67.s5, "p_888->g_67.s5", print_hash_value);
    transparent_crc(p_888->g_67.s6, "p_888->g_67.s6", print_hash_value);
    transparent_crc(p_888->g_67.s7, "p_888->g_67.s7", print_hash_value);
    transparent_crc(p_888->g_67.s8, "p_888->g_67.s8", print_hash_value);
    transparent_crc(p_888->g_67.s9, "p_888->g_67.s9", print_hash_value);
    transparent_crc(p_888->g_67.sa, "p_888->g_67.sa", print_hash_value);
    transparent_crc(p_888->g_67.sb, "p_888->g_67.sb", print_hash_value);
    transparent_crc(p_888->g_67.sc, "p_888->g_67.sc", print_hash_value);
    transparent_crc(p_888->g_67.sd, "p_888->g_67.sd", print_hash_value);
    transparent_crc(p_888->g_67.se, "p_888->g_67.se", print_hash_value);
    transparent_crc(p_888->g_67.sf, "p_888->g_67.sf", print_hash_value);
    transparent_crc(p_888->g_71.s0, "p_888->g_71.s0", print_hash_value);
    transparent_crc(p_888->g_71.s1, "p_888->g_71.s1", print_hash_value);
    transparent_crc(p_888->g_71.s2, "p_888->g_71.s2", print_hash_value);
    transparent_crc(p_888->g_71.s3, "p_888->g_71.s3", print_hash_value);
    transparent_crc(p_888->g_71.s4, "p_888->g_71.s4", print_hash_value);
    transparent_crc(p_888->g_71.s5, "p_888->g_71.s5", print_hash_value);
    transparent_crc(p_888->g_71.s6, "p_888->g_71.s6", print_hash_value);
    transparent_crc(p_888->g_71.s7, "p_888->g_71.s7", print_hash_value);
    transparent_crc(p_888->g_118, "p_888->g_118", print_hash_value);
    transparent_crc(p_888->g_119, "p_888->g_119", print_hash_value);
    transparent_crc(p_888->g_151, "p_888->g_151", print_hash_value);
    transparent_crc(p_888->g_153, "p_888->g_153", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_888->g_203[i], "p_888->g_203[i]", print_hash_value);

    }
    transparent_crc(p_888->g_211, "p_888->g_211", print_hash_value);
    transparent_crc(p_888->g_225, "p_888->g_225", print_hash_value);
    transparent_crc(p_888->g_229.s0, "p_888->g_229.s0", print_hash_value);
    transparent_crc(p_888->g_229.s1, "p_888->g_229.s1", print_hash_value);
    transparent_crc(p_888->g_229.s2, "p_888->g_229.s2", print_hash_value);
    transparent_crc(p_888->g_229.s3, "p_888->g_229.s3", print_hash_value);
    transparent_crc(p_888->g_229.s4, "p_888->g_229.s4", print_hash_value);
    transparent_crc(p_888->g_229.s5, "p_888->g_229.s5", print_hash_value);
    transparent_crc(p_888->g_229.s6, "p_888->g_229.s6", print_hash_value);
    transparent_crc(p_888->g_229.s7, "p_888->g_229.s7", print_hash_value);
    transparent_crc(p_888->g_229.s8, "p_888->g_229.s8", print_hash_value);
    transparent_crc(p_888->g_229.s9, "p_888->g_229.s9", print_hash_value);
    transparent_crc(p_888->g_229.sa, "p_888->g_229.sa", print_hash_value);
    transparent_crc(p_888->g_229.sb, "p_888->g_229.sb", print_hash_value);
    transparent_crc(p_888->g_229.sc, "p_888->g_229.sc", print_hash_value);
    transparent_crc(p_888->g_229.sd, "p_888->g_229.sd", print_hash_value);
    transparent_crc(p_888->g_229.se, "p_888->g_229.se", print_hash_value);
    transparent_crc(p_888->g_229.sf, "p_888->g_229.sf", print_hash_value);
    transparent_crc(p_888->g_230.s0, "p_888->g_230.s0", print_hash_value);
    transparent_crc(p_888->g_230.s1, "p_888->g_230.s1", print_hash_value);
    transparent_crc(p_888->g_230.s2, "p_888->g_230.s2", print_hash_value);
    transparent_crc(p_888->g_230.s3, "p_888->g_230.s3", print_hash_value);
    transparent_crc(p_888->g_230.s4, "p_888->g_230.s4", print_hash_value);
    transparent_crc(p_888->g_230.s5, "p_888->g_230.s5", print_hash_value);
    transparent_crc(p_888->g_230.s6, "p_888->g_230.s6", print_hash_value);
    transparent_crc(p_888->g_230.s7, "p_888->g_230.s7", print_hash_value);
    transparent_crc(p_888->g_246.x, "p_888->g_246.x", print_hash_value);
    transparent_crc(p_888->g_246.y, "p_888->g_246.y", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_888->g_255[i][j][k], "p_888->g_255[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_888->g_292, "p_888->g_292", print_hash_value);
    transparent_crc(p_888->g_295, "p_888->g_295", print_hash_value);
    transparent_crc(p_888->g_297.s0, "p_888->g_297.s0", print_hash_value);
    transparent_crc(p_888->g_297.s1, "p_888->g_297.s1", print_hash_value);
    transparent_crc(p_888->g_297.s2, "p_888->g_297.s2", print_hash_value);
    transparent_crc(p_888->g_297.s3, "p_888->g_297.s3", print_hash_value);
    transparent_crc(p_888->g_297.s4, "p_888->g_297.s4", print_hash_value);
    transparent_crc(p_888->g_297.s5, "p_888->g_297.s5", print_hash_value);
    transparent_crc(p_888->g_297.s6, "p_888->g_297.s6", print_hash_value);
    transparent_crc(p_888->g_297.s7, "p_888->g_297.s7", print_hash_value);
    transparent_crc(p_888->g_297.s8, "p_888->g_297.s8", print_hash_value);
    transparent_crc(p_888->g_297.s9, "p_888->g_297.s9", print_hash_value);
    transparent_crc(p_888->g_297.sa, "p_888->g_297.sa", print_hash_value);
    transparent_crc(p_888->g_297.sb, "p_888->g_297.sb", print_hash_value);
    transparent_crc(p_888->g_297.sc, "p_888->g_297.sc", print_hash_value);
    transparent_crc(p_888->g_297.sd, "p_888->g_297.sd", print_hash_value);
    transparent_crc(p_888->g_297.se, "p_888->g_297.se", print_hash_value);
    transparent_crc(p_888->g_297.sf, "p_888->g_297.sf", print_hash_value);
    transparent_crc(p_888->g_340.s0, "p_888->g_340.s0", print_hash_value);
    transparent_crc(p_888->g_340.s1, "p_888->g_340.s1", print_hash_value);
    transparent_crc(p_888->g_340.s2, "p_888->g_340.s2", print_hash_value);
    transparent_crc(p_888->g_340.s3, "p_888->g_340.s3", print_hash_value);
    transparent_crc(p_888->g_340.s4, "p_888->g_340.s4", print_hash_value);
    transparent_crc(p_888->g_340.s5, "p_888->g_340.s5", print_hash_value);
    transparent_crc(p_888->g_340.s6, "p_888->g_340.s6", print_hash_value);
    transparent_crc(p_888->g_340.s7, "p_888->g_340.s7", print_hash_value);
    transparent_crc(p_888->g_340.s8, "p_888->g_340.s8", print_hash_value);
    transparent_crc(p_888->g_340.s9, "p_888->g_340.s9", print_hash_value);
    transparent_crc(p_888->g_340.sa, "p_888->g_340.sa", print_hash_value);
    transparent_crc(p_888->g_340.sb, "p_888->g_340.sb", print_hash_value);
    transparent_crc(p_888->g_340.sc, "p_888->g_340.sc", print_hash_value);
    transparent_crc(p_888->g_340.sd, "p_888->g_340.sd", print_hash_value);
    transparent_crc(p_888->g_340.se, "p_888->g_340.se", print_hash_value);
    transparent_crc(p_888->g_340.sf, "p_888->g_340.sf", print_hash_value);
    transparent_crc(p_888->g_342.s0, "p_888->g_342.s0", print_hash_value);
    transparent_crc(p_888->g_342.s1, "p_888->g_342.s1", print_hash_value);
    transparent_crc(p_888->g_342.s2, "p_888->g_342.s2", print_hash_value);
    transparent_crc(p_888->g_342.s3, "p_888->g_342.s3", print_hash_value);
    transparent_crc(p_888->g_342.s4, "p_888->g_342.s4", print_hash_value);
    transparent_crc(p_888->g_342.s5, "p_888->g_342.s5", print_hash_value);
    transparent_crc(p_888->g_342.s6, "p_888->g_342.s6", print_hash_value);
    transparent_crc(p_888->g_342.s7, "p_888->g_342.s7", print_hash_value);
    transparent_crc(p_888->g_378.x, "p_888->g_378.x", print_hash_value);
    transparent_crc(p_888->g_378.y, "p_888->g_378.y", print_hash_value);
    transparent_crc(p_888->g_391.x, "p_888->g_391.x", print_hash_value);
    transparent_crc(p_888->g_391.y, "p_888->g_391.y", print_hash_value);
    transparent_crc(p_888->g_391.z, "p_888->g_391.z", print_hash_value);
    transparent_crc(p_888->g_391.w, "p_888->g_391.w", print_hash_value);
    transparent_crc(p_888->g_404.s0, "p_888->g_404.s0", print_hash_value);
    transparent_crc(p_888->g_404.s1, "p_888->g_404.s1", print_hash_value);
    transparent_crc(p_888->g_404.s2, "p_888->g_404.s2", print_hash_value);
    transparent_crc(p_888->g_404.s3, "p_888->g_404.s3", print_hash_value);
    transparent_crc(p_888->g_404.s4, "p_888->g_404.s4", print_hash_value);
    transparent_crc(p_888->g_404.s5, "p_888->g_404.s5", print_hash_value);
    transparent_crc(p_888->g_404.s6, "p_888->g_404.s6", print_hash_value);
    transparent_crc(p_888->g_404.s7, "p_888->g_404.s7", print_hash_value);
    transparent_crc(p_888->g_404.s8, "p_888->g_404.s8", print_hash_value);
    transparent_crc(p_888->g_404.s9, "p_888->g_404.s9", print_hash_value);
    transparent_crc(p_888->g_404.sa, "p_888->g_404.sa", print_hash_value);
    transparent_crc(p_888->g_404.sb, "p_888->g_404.sb", print_hash_value);
    transparent_crc(p_888->g_404.sc, "p_888->g_404.sc", print_hash_value);
    transparent_crc(p_888->g_404.sd, "p_888->g_404.sd", print_hash_value);
    transparent_crc(p_888->g_404.se, "p_888->g_404.se", print_hash_value);
    transparent_crc(p_888->g_404.sf, "p_888->g_404.sf", print_hash_value);
    transparent_crc(p_888->g_405.x, "p_888->g_405.x", print_hash_value);
    transparent_crc(p_888->g_405.y, "p_888->g_405.y", print_hash_value);
    transparent_crc(p_888->g_405.z, "p_888->g_405.z", print_hash_value);
    transparent_crc(p_888->g_405.w, "p_888->g_405.w", print_hash_value);
    transparent_crc(p_888->g_407.x, "p_888->g_407.x", print_hash_value);
    transparent_crc(p_888->g_407.y, "p_888->g_407.y", print_hash_value);
    transparent_crc(p_888->g_411.x, "p_888->g_411.x", print_hash_value);
    transparent_crc(p_888->g_411.y, "p_888->g_411.y", print_hash_value);
    transparent_crc(p_888->g_538, "p_888->g_538", print_hash_value);
    transparent_crc(p_888->g_559.x, "p_888->g_559.x", print_hash_value);
    transparent_crc(p_888->g_559.y, "p_888->g_559.y", print_hash_value);
    transparent_crc(p_888->g_589.s0, "p_888->g_589.s0", print_hash_value);
    transparent_crc(p_888->g_589.s1, "p_888->g_589.s1", print_hash_value);
    transparent_crc(p_888->g_589.s2, "p_888->g_589.s2", print_hash_value);
    transparent_crc(p_888->g_589.s3, "p_888->g_589.s3", print_hash_value);
    transparent_crc(p_888->g_589.s4, "p_888->g_589.s4", print_hash_value);
    transparent_crc(p_888->g_589.s5, "p_888->g_589.s5", print_hash_value);
    transparent_crc(p_888->g_589.s6, "p_888->g_589.s6", print_hash_value);
    transparent_crc(p_888->g_589.s7, "p_888->g_589.s7", print_hash_value);
    transparent_crc(p_888->g_619.x, "p_888->g_619.x", print_hash_value);
    transparent_crc(p_888->g_619.y, "p_888->g_619.y", print_hash_value);
    transparent_crc(p_888->g_629.s0, "p_888->g_629.s0", print_hash_value);
    transparent_crc(p_888->g_629.s1, "p_888->g_629.s1", print_hash_value);
    transparent_crc(p_888->g_629.s2, "p_888->g_629.s2", print_hash_value);
    transparent_crc(p_888->g_629.s3, "p_888->g_629.s3", print_hash_value);
    transparent_crc(p_888->g_629.s4, "p_888->g_629.s4", print_hash_value);
    transparent_crc(p_888->g_629.s5, "p_888->g_629.s5", print_hash_value);
    transparent_crc(p_888->g_629.s6, "p_888->g_629.s6", print_hash_value);
    transparent_crc(p_888->g_629.s7, "p_888->g_629.s7", print_hash_value);
    transparent_crc(p_888->g_629.s8, "p_888->g_629.s8", print_hash_value);
    transparent_crc(p_888->g_629.s9, "p_888->g_629.s9", print_hash_value);
    transparent_crc(p_888->g_629.sa, "p_888->g_629.sa", print_hash_value);
    transparent_crc(p_888->g_629.sb, "p_888->g_629.sb", print_hash_value);
    transparent_crc(p_888->g_629.sc, "p_888->g_629.sc", print_hash_value);
    transparent_crc(p_888->g_629.sd, "p_888->g_629.sd", print_hash_value);
    transparent_crc(p_888->g_629.se, "p_888->g_629.se", print_hash_value);
    transparent_crc(p_888->g_629.sf, "p_888->g_629.sf", print_hash_value);
    transparent_crc(p_888->g_664.s0, "p_888->g_664.s0", print_hash_value);
    transparent_crc(p_888->g_664.s1, "p_888->g_664.s1", print_hash_value);
    transparent_crc(p_888->g_664.s2, "p_888->g_664.s2", print_hash_value);
    transparent_crc(p_888->g_664.s3, "p_888->g_664.s3", print_hash_value);
    transparent_crc(p_888->g_664.s4, "p_888->g_664.s4", print_hash_value);
    transparent_crc(p_888->g_664.s5, "p_888->g_664.s5", print_hash_value);
    transparent_crc(p_888->g_664.s6, "p_888->g_664.s6", print_hash_value);
    transparent_crc(p_888->g_664.s7, "p_888->g_664.s7", print_hash_value);
    transparent_crc(p_888->g_665.x, "p_888->g_665.x", print_hash_value);
    transparent_crc(p_888->g_665.y, "p_888->g_665.y", print_hash_value);
    transparent_crc(p_888->g_682, "p_888->g_682", print_hash_value);
    transparent_crc(p_888->g_715, "p_888->g_715", print_hash_value);
    transparent_crc(p_888->g_722.s0, "p_888->g_722.s0", print_hash_value);
    transparent_crc(p_888->g_722.s1, "p_888->g_722.s1", print_hash_value);
    transparent_crc(p_888->g_722.s2, "p_888->g_722.s2", print_hash_value);
    transparent_crc(p_888->g_722.s3, "p_888->g_722.s3", print_hash_value);
    transparent_crc(p_888->g_722.s4, "p_888->g_722.s4", print_hash_value);
    transparent_crc(p_888->g_722.s5, "p_888->g_722.s5", print_hash_value);
    transparent_crc(p_888->g_722.s6, "p_888->g_722.s6", print_hash_value);
    transparent_crc(p_888->g_722.s7, "p_888->g_722.s7", print_hash_value);
    transparent_crc(p_888->g_722.s8, "p_888->g_722.s8", print_hash_value);
    transparent_crc(p_888->g_722.s9, "p_888->g_722.s9", print_hash_value);
    transparent_crc(p_888->g_722.sa, "p_888->g_722.sa", print_hash_value);
    transparent_crc(p_888->g_722.sb, "p_888->g_722.sb", print_hash_value);
    transparent_crc(p_888->g_722.sc, "p_888->g_722.sc", print_hash_value);
    transparent_crc(p_888->g_722.sd, "p_888->g_722.sd", print_hash_value);
    transparent_crc(p_888->g_722.se, "p_888->g_722.se", print_hash_value);
    transparent_crc(p_888->g_722.sf, "p_888->g_722.sf", print_hash_value);
    transparent_crc(p_888->g_724.x, "p_888->g_724.x", print_hash_value);
    transparent_crc(p_888->g_724.y, "p_888->g_724.y", print_hash_value);
    transparent_crc(p_888->g_725.s0, "p_888->g_725.s0", print_hash_value);
    transparent_crc(p_888->g_725.s1, "p_888->g_725.s1", print_hash_value);
    transparent_crc(p_888->g_725.s2, "p_888->g_725.s2", print_hash_value);
    transparent_crc(p_888->g_725.s3, "p_888->g_725.s3", print_hash_value);
    transparent_crc(p_888->g_725.s4, "p_888->g_725.s4", print_hash_value);
    transparent_crc(p_888->g_725.s5, "p_888->g_725.s5", print_hash_value);
    transparent_crc(p_888->g_725.s6, "p_888->g_725.s6", print_hash_value);
    transparent_crc(p_888->g_725.s7, "p_888->g_725.s7", print_hash_value);
    transparent_crc(p_888->g_745.x, "p_888->g_745.x", print_hash_value);
    transparent_crc(p_888->g_745.y, "p_888->g_745.y", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_888->g_778[i][j][k], "p_888->g_778[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_888->g_786, "p_888->g_786", print_hash_value);
    transparent_crc(p_888->g_799.x, "p_888->g_799.x", print_hash_value);
    transparent_crc(p_888->g_799.y, "p_888->g_799.y", print_hash_value);
    transparent_crc(p_888->g_807, "p_888->g_807", print_hash_value);
    transparent_crc(p_888->g_820.x, "p_888->g_820.x", print_hash_value);
    transparent_crc(p_888->g_820.y, "p_888->g_820.y", print_hash_value);
    transparent_crc(p_888->g_820.z, "p_888->g_820.z", print_hash_value);
    transparent_crc(p_888->g_820.w, "p_888->g_820.w", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_888->g_825[i][j], "p_888->g_825[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_888->g_842.x, "p_888->g_842.x", print_hash_value);
    transparent_crc(p_888->g_842.y, "p_888->g_842.y", print_hash_value);
    transparent_crc(p_888->g_842.z, "p_888->g_842.z", print_hash_value);
    transparent_crc(p_888->g_842.w, "p_888->g_842.w", print_hash_value);
    transparent_crc(p_888->g_855.s0, "p_888->g_855.s0", print_hash_value);
    transparent_crc(p_888->g_855.s1, "p_888->g_855.s1", print_hash_value);
    transparent_crc(p_888->g_855.s2, "p_888->g_855.s2", print_hash_value);
    transparent_crc(p_888->g_855.s3, "p_888->g_855.s3", print_hash_value);
    transparent_crc(p_888->g_855.s4, "p_888->g_855.s4", print_hash_value);
    transparent_crc(p_888->g_855.s5, "p_888->g_855.s5", print_hash_value);
    transparent_crc(p_888->g_855.s6, "p_888->g_855.s6", print_hash_value);
    transparent_crc(p_888->g_855.s7, "p_888->g_855.s7", print_hash_value);
    transparent_crc(p_888->g_855.s8, "p_888->g_855.s8", print_hash_value);
    transparent_crc(p_888->g_855.s9, "p_888->g_855.s9", print_hash_value);
    transparent_crc(p_888->g_855.sa, "p_888->g_855.sa", print_hash_value);
    transparent_crc(p_888->g_855.sb, "p_888->g_855.sb", print_hash_value);
    transparent_crc(p_888->g_855.sc, "p_888->g_855.sc", print_hash_value);
    transparent_crc(p_888->g_855.sd, "p_888->g_855.sd", print_hash_value);
    transparent_crc(p_888->g_855.se, "p_888->g_855.se", print_hash_value);
    transparent_crc(p_888->g_855.sf, "p_888->g_855.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
