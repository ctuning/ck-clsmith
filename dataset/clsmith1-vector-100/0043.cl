// ---fake_divergence -g 34,75,1 -l 2,5,1
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


// Seed: 43

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile VECTOR(int32_t, 8) g_2;
    int64_t g_13;
    VECTOR(uint16_t, 16) g_18;
    VECTOR(int8_t, 2) g_52;
    uint32_t g_58;
    uint64_t g_87;
    VECTOR(uint8_t, 4) g_105;
    uint32_t g_109;
    VECTOR(uint16_t, 2) g_117;
    int16_t g_137[8];
    uint8_t g_140;
    int32_t g_142[9];
    VECTOR(int8_t, 8) g_171;
    int64_t g_184;
    int64_t *g_183;
    VECTOR(uint8_t, 4) g_202;
    uint64_t g_207;
    VECTOR(int32_t, 16) g_210;
    VECTOR(int32_t, 8) g_211;
    VECTOR(int32_t, 2) g_219;
    int64_t g_258;
    int32_t *g_261;
    uint16_t *g_287[6];
    uint16_t g_297;
    uint16_t g_358;
    VECTOR(int32_t, 16) g_381;
    VECTOR(int32_t, 4) g_386;
    int32_t g_394;
    uint64_t g_397;
    VECTOR(uint32_t, 4) g_410;
    VECTOR(int64_t, 8) g_489;
    VECTOR(uint16_t, 16) g_501;
    VECTOR(uint16_t, 8) g_503;
    VECTOR(uint16_t, 16) g_504;
    uint8_t *g_516[2];
    VECTOR(int32_t, 16) g_538;
    VECTOR(int32_t, 2) g_554;
    VECTOR(int32_t, 8) g_559;
    VECTOR(int16_t, 4) g_566;
    VECTOR(uint8_t, 16) g_630;
    VECTOR(int8_t, 8) g_664;
    VECTOR(int8_t, 4) g_665;
    VECTOR(int8_t, 4) g_668;
    int16_t *g_696;
    int16_t **g_695[10][6][4];
    uint8_t **g_709[2];
    volatile int8_t *g_712;
    VECTOR(uint16_t, 4) g_743;
    int8_t g_786;
    int32_t *g_797;
    uint8_t g_812;
    int32_t ** volatile g_828;
    uint32_t **g_834;
    uint32_t *** volatile g_833;
    VECTOR(uint16_t, 2) g_838;
    VECTOR(uint16_t, 4) g_842;
    uint64_t *g_846;
    VECTOR(int64_t, 4) g_850;
    volatile VECTOR(int64_t, 16) g_851;
    volatile VECTOR(int64_t, 16) g_852;
    volatile uint32_t g_861;
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
uint16_t  func_1(struct S0 * p_873);
uint16_t  func_9(int32_t  p_10, uint64_t  p_11, int32_t  p_12, struct S0 * p_873);
int64_t  func_14(uint32_t  p_15, struct S0 * p_873);
uint32_t  func_31(uint16_t * p_32, int16_t  p_33, uint8_t  p_34, uint32_t  p_35, struct S0 * p_873);
uint16_t * func_36(uint16_t * p_37, int32_t  p_38, uint16_t * p_39, int8_t  p_40, int32_t  p_41, struct S0 * p_873);
uint16_t * func_42(uint32_t  p_43, int64_t  p_44, uint32_t  p_45, uint16_t * p_46, struct S0 * p_873);
int64_t  func_56(uint32_t  p_57, struct S0 * p_873);
int32_t * func_63(uint16_t * p_64, uint64_t  p_65, int8_t  p_66, struct S0 * p_873);
uint16_t * func_67(uint16_t * p_68, struct S0 * p_873);
uint32_t  func_69(uint16_t  p_70, int8_t  p_71, uint32_t  p_72, uint16_t * p_73, int64_t  p_74, struct S0 * p_873);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_873->g_2 p_873->g_13 p_873->g_18 p_873->g_52 p_873->g_58 p_873->g_109 p_873->g_184 p_873->g_142 p_873->g_137 p_873->g_219 p_873->g_258 p_873->g_287 p_873->g_297 p_873->g_211 p_873->g_202 p_873->g_261 p_873->g_210 p_873->g_207 p_873->g_538 p_873->g_87 p_873->g_630 p_873->g_183 p_873->g_566 p_873->g_358 p_873->g_559 p_873->g_664 p_873->g_665 p_873->g_668 p_873->g_381 p_873->g_712 p_873->g_489 p_873->g_504 p_873->g_743 p_873->g_501 p_873->g_812 p_873->g_797 p_873->g_828 p_873->g_833 p_873->g_838 p_873->g_842 p_873->g_846 p_873->g_850 p_873->g_851 p_873->g_852 p_873->g_861 p_873->g_696 p_873->g_386
 * writes: p_873->g_58 p_873->g_87 p_873->g_109 p_873->g_258 p_873->g_142 p_873->g_261 p_873->g_137 p_873->g_117 p_873->g_184 p_873->g_297 p_873->g_211 p_873->g_207 p_873->g_538 p_873->g_358 p_873->g_695 p_873->g_709 p_873->g_52 p_873->g_786 p_873->g_797 p_873->g_812 p_873->g_834 p_873->g_846
 */
uint16_t  func_1(struct S0 * p_873)
{ /* block id: 4 */
    int32_t l_3 = 0x72A8358BL;
    int32_t l_791 = (-1L);
    uint32_t *l_794 = (void*)0;
    uint32_t *l_795 = (void*)0;
    int32_t l_811 = (-4L);
    uint16_t *l_815 = &p_873->g_297;
    int16_t *l_822 = &p_873->g_137[5];
    uint8_t l_823 = 0xDAL;
    uint32_t ***l_845 = &p_873->g_834;
    uint64_t **l_847 = &p_873->g_846;
    VECTOR(int64_t, 16) l_853 = (VECTOR(int64_t, 16))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), (-8L)), (-8L)), (-8L), (-10L), (-8L), (VECTOR(int64_t, 2))((-10L), (-8L)), (VECTOR(int64_t, 2))((-10L), (-8L)), (-10L), (-8L), (-10L), (-8L));
    VECTOR(uint16_t, 8) l_860 = (VECTOR(uint16_t, 8))(0x64F8L, (VECTOR(uint16_t, 4))(0x64F8L, (VECTOR(uint16_t, 2))(0x64F8L, 0x1097L), 0x1097L), 0x1097L, 0x64F8L, 0x1097L);
    uint32_t l_862 = 4294967286UL;
    int32_t l_863[6][2][6] = {{{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L},{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L}},{{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L},{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L}},{{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L},{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L}},{{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L},{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L}},{{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L},{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L}},{{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L},{0x08BD3AD3L,0x516684ACL,0x13FCF2E2L,4L,0x516684ACL,4L}}};
    uint32_t l_864 = 1UL;
    int32_t *l_865 = (void*)0;
    int32_t l_866 = 0x5CC5C0A3L;
    int32_t *l_867[5][8];
    int32_t l_868 = 0x30CD4506L;
    uint64_t l_869 = 0x3F868E9A740A3FB9L;
    int8_t l_872 = 0x68L;
    int i, j, k;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
            l_867[i][j] = (void*)0;
    }
    if ((((VECTOR(int32_t, 16))(p_873->g_2.s2526041736107150)).s1 || l_3))
    { /* block id: 5 */
        uint32_t l_4 = 0x0BC5021CL;
        return l_4;
    }
    else
    { /* block id: 7 */
        VECTOR(uint32_t, 2) l_777 = (VECTOR(uint32_t, 2))(0x7EC6E0EBL, 0x594FA917L);
        VECTOR(int8_t, 16) l_778 = (VECTOR(int8_t, 16))(0x1DL, (VECTOR(int8_t, 4))(0x1DL, (VECTOR(int8_t, 2))(0x1DL, 9L), 9L), 9L, 0x1DL, 9L, (VECTOR(int8_t, 2))(0x1DL, 9L), (VECTOR(int8_t, 2))(0x1DL, 9L), 0x1DL, 9L, 0x1DL, 9L);
        VECTOR(int8_t, 8) l_779 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x77L), 0x77L), 0x77L, (-1L), 0x77L);
        int32_t *l_789 = (void*)0;
        int32_t *l_790[8];
        uint64_t **l_816 = (void*)0;
        uint64_t *l_818 = &p_873->g_397;
        uint64_t **l_817 = &l_818;
        uint64_t *l_819 = &p_873->g_87;
        int32_t l_824 = 0x3E4B3B7EL;
        int i;
        for (i = 0; i < 8; i++)
            l_790[i] = (void*)0;
        p_873->g_142[5] = (p_873->g_2.s4 ^ (((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 13)), func_9(((p_873->g_13 != func_14(l_3, p_873)) | ((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(l_777.yyyy)), ((VECTOR(uint32_t, 8))(((!((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0L, 0x65L)).yyyx)).wyxwxwww, ((VECTOR(int8_t, 4))(l_778.sdba6)).ywyxywxz))).s3175063765353641, ((VECTOR(int8_t, 8))(l_779.s16621114)).s4437600222521132))).s4) || (safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((p_873->g_786 = (safe_rshift_func_uint8_t_u_s(l_3, 6))), (safe_mod_func_int32_t_s_s((~(l_791 ^= p_873->g_504.sf)), (safe_sub_func_uint16_t_u_u((l_794 == l_795), 0x2003L)))))), 0x0BL))), ((VECTOR(uint32_t, 2))(0x3C2FF1CFL)), ((VECTOR(uint32_t, 2))(0x614E5743L)), 4294967290UL, 0xF8B29034L, 0xD904AEF7L)).hi))).z), p_873->g_668.y, l_3, p_873))) && p_873->g_58) , GROUP_DIVERGE(1, 1)));
        --p_873->g_812;
        p_873->g_797 = func_63(l_815, ((*l_819) = ((((*l_817) = &p_873->g_87) != (l_791 , &p_873->g_397)) != (((VECTOR(uint64_t, 4))(18446744073709551615UL, 18446744073709551606UL, 1UL, 0UL)).z ^ l_811))), ((safe_add_func_int32_t_s_s(((((l_822 = (((void*)0 == &p_873->g_709[0]) , l_815)) != l_815) != 1UL) | l_823), (*p_873->g_261))) ^ l_791), p_873);
        if (((*p_873->g_797) = 0x70FFA4D4L))
        { /* block id: 336 */
            uint32_t l_829 = 0x98245FB1L;
            int32_t *l_832 = (void*)0;
            if ((l_824 ^= (!(*p_873->g_797))))
            { /* block id: 338 */
                int32_t l_825 = (-1L);
                return l_825;
            }
            else
            { /* block id: 340 */
                for (p_873->g_109 = 0; (p_873->g_109 != 29); p_873->g_109++)
                { /* block id: 343 */
                    return l_3;
                }
                (*p_873->g_828) = &p_873->g_142[5];
            }
            --l_829;
            (*p_873->g_828) = l_832;
        }
        else
        { /* block id: 350 */
            int16_t l_835 = 0x5371L;
            (*p_873->g_833) = &l_795;
            return l_835;
        }
    }
    (*p_873->g_797) = (*p_873->g_797);
    l_866 ^= (0x79A632B2E40C3E6DL ^ (safe_mul_func_uint16_t_u_u(((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(p_873->g_838.yxxyxyxx)).s4344375171575024)).sf <= ((*p_873->g_696) = (((safe_unary_minus_func_int8_t_s(((safe_mod_func_int32_t_s_s((l_863[5][0][5] ^= (((*l_815) = ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 4))(p_873->g_842.zxzy)).zxyxyzzzxwwwwwww, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x6B45L, 0xF833L)).yyxxxxxx)).s5622130602022132, ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 4))((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 16))(0x2CB3L, 0x36F9L, (((p_873->g_501.sd , l_845) == &p_873->g_834) <= (((*l_847) = p_873->g_846) != &p_873->g_207)), (safe_lshift_func_uint8_t_u_s(((((((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(p_873->g_850.xwyyzxzyxzwxywwx)).even)).s42, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_873->g_851.s2d)), 0x54BF750FAC07A989L, 7L)), 0x6E512ABB0841D946L, 0L, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 8))(p_873->g_852.sdfe7a122)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(0x3FB33FFB548815D6L, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(l_853.s8abe4d1f)).s76)), 0x46B5F55654446231L, 0x03036E245E65E074L)), ((VECTOR(int64_t, 8))(0x36D3A71FE721E3F5L, (safe_div_func_int16_t_s_s(((((safe_sub_func_uint64_t_u_u((l_853.se & (*p_873->g_797)), ((*p_873->g_183) = (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_860.s0417)).z, (!l_860.s6)))))) == 0x608B0F81L) || p_873->g_861) | l_853.s9), l_823)), 0x26CCD4934334601CL, 1L, 0x279F2B502ED09E40L, 1L, 6L, 0L)).hi))).even)), ((VECTOR(int64_t, 4))(1L)), 6L)))).even)).zwyzzxzz)).s3420046343602300, ((VECTOR(int64_t, 16))(0x22EE003FC304FDF1L))))).sc87e)).even)).xxxyyxyx))).s72)), l_853.s2, 0x5FA65C0A832215E2L, (*p_873->g_183), 1L, 0x20BBBC868752011BL, ((VECTOR(int64_t, 2))(1L)), (-5L))).sdf))).xyyxxxyx, ((VECTOR(int64_t, 8))(0x18C6B27D762DFD1AL))))).s76)).odd & l_811) , l_3) > l_823) ^ l_823) < (*p_873->g_696)) || l_862), p_873->g_18.s4)), 0x3000L, l_823, l_791, 0x2E0BL, 0x74A3L, l_853.s0, (*p_873->g_696), (*p_873->g_696), 0x7CAAL, 0x3BADL, 7L, 0x6EF4L)).s4, 0x4DC8L)), ((VECTOR(uint16_t, 2))(7UL)), 65527UL)).even, ((VECTOR(uint16_t, 2))(65535UL))))).xyxxxxyyyyyyyxyx))).s67))).odd) | l_3)), l_860.s2)) != 18446744073709551615UL))) , p_873->g_386.w) , 0x2D74L))) , l_823), l_864)));
    --l_869;
    return l_872;
}


/* ------------------------------------------ */
/* 
 * reads : p_873->g_207 p_873->g_183 p_873->g_184
 * writes: p_873->g_261 p_873->g_797 p_873->g_207
 */
uint16_t  func_9(int32_t  p_10, uint64_t  p_11, int32_t  p_12, struct S0 * p_873)
{ /* block id: 318 */
    uint64_t *l_801 = &p_873->g_87;
    uint8_t l_806 = 255UL;
    VECTOR(int8_t, 16) l_809 = (VECTOR(int8_t, 16))(0x50L, (VECTOR(int8_t, 4))(0x50L, (VECTOR(int8_t, 2))(0x50L, 0x26L), 0x26L), 0x26L, 0x50L, 0x26L, (VECTOR(int8_t, 2))(0x50L, 0x26L), (VECTOR(int8_t, 2))(0x50L, 0x26L), 0x50L, 0x26L, 0x50L, 0x26L);
    int i;
    if (p_12)
    { /* block id: 319 */
        int32_t **l_796[9] = {&p_873->g_261,&p_873->g_261,&p_873->g_261,&p_873->g_261,&p_873->g_261,&p_873->g_261,&p_873->g_261,&p_873->g_261,&p_873->g_261};
        uint64_t *l_798 = &p_873->g_87;
        uint64_t **l_799 = (void*)0;
        uint64_t **l_800 = &l_798;
        uint64_t *l_810 = &p_873->g_207;
        int i;
        p_873->g_797 = (p_873->g_261 = &p_873->g_142[5]);
        p_10 ^= ((((*l_800) = l_798) != l_801) > (safe_add_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(l_806, p_11)) & (safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 2))(252UL, 0x8FL)).yyyyyxxx, ((VECTOR(uint8_t, 2))(5UL, 1UL)).yxyxyxxy))).odd)), 0UL, ((VECTOR(uint8_t, 2))(0xEAL, 0UL)), 0xDAL)).s3, ((((VECTOR(int8_t, 4))(l_809.s76ec)).y > ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))((((+0x58C3A147L) & 1UL) < ((*l_810) ^= 6UL)), ((VECTOR(int8_t, 2))(0x4CL, (-1L))), ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 4))(((*p_873->g_183) <= p_11), 0x08L, 0x4BL, 0x17L)), (int8_t)p_873->g_184))), 0x4CL, ((VECTOR(int8_t, 2))(0x23L)), ((VECTOR(int8_t, 2))(0L)), 0L, 0x2FL, 0x34L, 0x67L)).s342e)).x) == FAKE_DIVERGE(p_873->local_0_offset, get_local_id(0), 10))))), 0x1DA3L)));
    }
    else
    { /* block id: 325 */
        return p_11;
    }
    return l_806;
}


/* ------------------------------------------ */
/* 
 * reads : p_873->g_18 p_873->g_13 p_873->g_52 p_873->g_58 p_873->g_109 p_873->g_184 p_873->g_142 p_873->g_137 p_873->g_219 p_873->g_258 p_873->g_287 p_873->g_297 p_873->g_211 p_873->g_202 p_873->g_261 p_873->g_210 p_873->g_207 p_873->g_538 p_873->g_87 p_873->g_630 p_873->g_183 p_873->g_566 p_873->g_358 p_873->g_559 p_873->g_664 p_873->g_665 p_873->g_668 p_873->g_381 p_873->g_712 p_873->g_489 p_873->g_504 p_873->g_743 p_873->g_501
 * writes: p_873->g_58 p_873->g_87 p_873->g_109 p_873->g_258 p_873->g_142 p_873->g_261 p_873->g_137 p_873->g_117 p_873->g_184 p_873->g_297 p_873->g_211 p_873->g_207 p_873->g_538 p_873->g_358 p_873->g_695 p_873->g_709 p_873->g_52
 */
int64_t  func_14(uint32_t  p_15, struct S0 * p_873)
{ /* block id: 8 */
    VECTOR(uint64_t, 16) l_25 = (VECTOR(uint64_t, 16))(0xE9A5A165F5C9B8DBL, (VECTOR(uint64_t, 4))(0xE9A5A165F5C9B8DBL, (VECTOR(uint64_t, 2))(0xE9A5A165F5C9B8DBL, 0UL), 0UL), 0UL, 0xE9A5A165F5C9B8DBL, 0UL, (VECTOR(uint64_t, 2))(0xE9A5A165F5C9B8DBL, 0UL), (VECTOR(uint64_t, 2))(0xE9A5A165F5C9B8DBL, 0UL), 0xE9A5A165F5C9B8DBL, 0UL, 0xE9A5A165F5C9B8DBL, 0UL);
    uint16_t *l_28 = (void*)0;
    uint16_t *l_29 = (void*)0;
    int32_t l_30 = 0L;
    VECTOR(int8_t, 4) l_51 = (VECTOR(int8_t, 4))(0x67L, (VECTOR(int8_t, 2))(0x67L, 0x3AL), 0x3AL);
    VECTOR(int8_t, 2) l_53 = (VECTOR(int8_t, 2))(0x51L, (-4L));
    VECTOR(int8_t, 4) l_54 = (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), (-1L)), (-1L));
    VECTOR(int8_t, 8) l_55 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x70L), 0x70L), 0x70L, 1L, 0x70L);
    uint16_t **l_697 = &l_29;
    int32_t *l_767 = (void*)0;
    int32_t *l_768 = (void*)0;
    int32_t *l_769 = (void*)0;
    int32_t *l_770 = (void*)0;
    int32_t *l_771 = (void*)0;
    int32_t *l_772 = (void*)0;
    int32_t *l_773 = (void*)0;
    int32_t *l_774 = (void*)0;
    int32_t *l_775 = (void*)0;
    int32_t l_776 = (-3L);
    int i;
    l_776 &= (safe_mod_func_uint64_t_u_u(((((VECTOR(uint16_t, 16))(0UL, 65534UL, 0UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_873->g_18.s3b)), 1UL, 0x5D17L)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(0xCE34L, 65535UL, 65530UL, 3UL)).hi)), 0UL, (safe_add_func_int64_t_s_s((safe_sub_func_uint32_t_u_u((safe_add_func_uint64_t_u_u((+((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_25.sc3)).xyxxyxyyyxyxxxyx)).s4), ((safe_lshift_func_int16_t_s_u(p_15, (l_30 = 0xAFDDL))) <= func_31(func_36(l_28, l_25.s2, ((*l_697) = func_42(p_873->g_13, ((safe_mod_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 8))(l_25.sd, ((VECTOR(int8_t, 4))(l_51.wxww)), ((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_873->g_52.yy)).yxxyxyyx)).odd, ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 4))(0x03L, 0x18L, (-1L), 0x79L)), ((VECTOR(int8_t, 16))(l_53.xxyyyyxxyyxyxxxy)).sd333)))))).lo, ((VECTOR(int8_t, 2))(l_54.zz))))), 0x39L)), ((VECTOR(int8_t, 4))(l_55.s2351)).zzwzyyzx))).s5, p_873->g_13)) > (func_56(p_15, p_873) ^ l_25.s3)), l_53.y)) , l_55.s1), p_873->g_18.s0, l_28, p_873)), p_873->g_381.s2, p_15, p_873), l_51.y, l_54.z, l_54.z, p_873)))), l_55.s1)), 0xA910D681EDCC0832L)), ((VECTOR(uint16_t, 2))(65535UL)), 0xFD6CL, 1UL)), 0x9AE6L)).se && p_15) ^ l_51.y), GROUP_DIVERGE(2, 1)));
    return (*p_873->g_183);
}


/* ------------------------------------------ */
/* 
 * reads : p_873->g_261 p_873->g_211
 * writes: p_873->g_142 p_873->g_211
 */
uint32_t  func_31(uint16_t * p_32, int16_t  p_33, uint8_t  p_34, uint32_t  p_35, struct S0 * p_873)
{ /* block id: 310 */
    int16_t l_763 = 1L;
    int32_t *l_764 = (void*)0;
    int32_t *l_765 = (void*)0;
    int32_t *l_766[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    p_873->g_211.s3 &= ((*p_873->g_261) = (8L != l_763));
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_873->g_712 p_873->g_489 p_873->g_183 p_873->g_184 p_873->g_109 p_873->g_358 p_873->g_538 p_873->g_504 p_873->g_261 p_873->g_142 p_873->g_559 p_873->g_743 p_873->g_501 p_873->g_52
 * writes: p_873->g_709 p_873->g_207 p_873->g_538 p_873->g_695 p_873->g_58 p_873->g_261 p_873->g_142 p_873->g_211 p_873->g_184 p_873->g_52
 */
uint16_t * func_36(uint16_t * p_37, int32_t  p_38, uint16_t * p_39, int8_t  p_40, int32_t  p_41, struct S0 * p_873)
{ /* block id: 292 */
    uint32_t l_698 = 1UL;
    uint8_t **l_707[9][9] = {{&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0]},{&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0]},{&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0]},{&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0]},{&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0]},{&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0]},{&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0]},{&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0]},{&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[1],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0],&p_873->g_516[0]}};
    uint8_t ***l_708[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int16_t, 16) l_719 = (VECTOR(int16_t, 16))(0x5D71L, (VECTOR(int16_t, 4))(0x5D71L, (VECTOR(int16_t, 2))(0x5D71L, 0x3E78L), 0x3E78L), 0x3E78L, 0x5D71L, 0x3E78L, (VECTOR(int16_t, 2))(0x5D71L, 0x3E78L), (VECTOR(int16_t, 2))(0x5D71L, 0x3E78L), 0x5D71L, 0x3E78L, 0x5D71L, 0x3E78L);
    int32_t l_720 = 0x0A48C3BCL;
    uint8_t ***l_721 = &l_707[1][3];
    uint64_t *l_722 = &p_873->g_207;
    uint16_t *l_723 = (void*)0;
    int32_t **l_724 = (void*)0;
    int32_t **l_725[8][3] = {{(void*)0,&p_873->g_261,&p_873->g_261},{(void*)0,&p_873->g_261,&p_873->g_261},{(void*)0,&p_873->g_261,&p_873->g_261},{(void*)0,&p_873->g_261,&p_873->g_261},{(void*)0,&p_873->g_261,&p_873->g_261},{(void*)0,&p_873->g_261,&p_873->g_261},{(void*)0,&p_873->g_261,&p_873->g_261},{(void*)0,&p_873->g_261,&p_873->g_261}};
    VECTOR(uint64_t, 16) l_728 = (VECTOR(uint64_t, 16))(0x64FB80F84E6901E6L, (VECTOR(uint64_t, 4))(0x64FB80F84E6901E6L, (VECTOR(uint64_t, 2))(0x64FB80F84E6901E6L, 3UL), 3UL), 3UL, 0x64FB80F84E6901E6L, 3UL, (VECTOR(uint64_t, 2))(0x64FB80F84E6901E6L, 3UL), (VECTOR(uint64_t, 2))(0x64FB80F84E6901E6L, 3UL), 0x64FB80F84E6901E6L, 3UL, 0x64FB80F84E6901E6L, 3UL);
    int32_t l_733 = 0x1C81D7D4L;
    uint16_t l_734 = 1UL;
    VECTOR(int64_t, 8) l_746 = (VECTOR(int64_t, 8))(0x6C26E85146F568DCL, (VECTOR(int64_t, 4))(0x6C26E85146F568DCL, (VECTOR(int64_t, 2))(0x6C26E85146F568DCL, 0x30DA42D8074EAD94L), 0x30DA42D8074EAD94L), 0x30DA42D8074EAD94L, 0x6C26E85146F568DCL, 0x30DA42D8074EAD94L);
    VECTOR(int64_t, 16) l_747 = (VECTOR(int64_t, 16))(0x4BAE24828C3E1611L, (VECTOR(int64_t, 4))(0x4BAE24828C3E1611L, (VECTOR(int64_t, 2))(0x4BAE24828C3E1611L, 0x35B2626660E3D658L), 0x35B2626660E3D658L), 0x35B2626660E3D658L, 0x4BAE24828C3E1611L, 0x35B2626660E3D658L, (VECTOR(int64_t, 2))(0x4BAE24828C3E1611L, 0x35B2626660E3D658L), (VECTOR(int64_t, 2))(0x4BAE24828C3E1611L, 0x35B2626660E3D658L), 0x4BAE24828C3E1611L, 0x35B2626660E3D658L, 0x4BAE24828C3E1611L, 0x35B2626660E3D658L);
    VECTOR(int64_t, 2) l_748 = (VECTOR(int64_t, 2))(2L, 0x11ED2293272D93E6L);
    VECTOR(int64_t, 16) l_749 = (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0x6E820F4E35A7C2B5L), 0x6E820F4E35A7C2B5L), 0x6E820F4E35A7C2B5L, (-8L), 0x6E820F4E35A7C2B5L, (VECTOR(int64_t, 2))((-8L), 0x6E820F4E35A7C2B5L), (VECTOR(int64_t, 2))((-8L), 0x6E820F4E35A7C2B5L), (-8L), 0x6E820F4E35A7C2B5L, (-8L), 0x6E820F4E35A7C2B5L);
    VECTOR(int64_t, 16) l_750 = (VECTOR(int64_t, 16))(0x2538F052E536323DL, (VECTOR(int64_t, 4))(0x2538F052E536323DL, (VECTOR(int64_t, 2))(0x2538F052E536323DL, 0x295746EA12A3D9CCL), 0x295746EA12A3D9CCL), 0x295746EA12A3D9CCL, 0x2538F052E536323DL, 0x295746EA12A3D9CCL, (VECTOR(int64_t, 2))(0x2538F052E536323DL, 0x295746EA12A3D9CCL), (VECTOR(int64_t, 2))(0x2538F052E536323DL, 0x295746EA12A3D9CCL), 0x2538F052E536323DL, 0x295746EA12A3D9CCL, 0x2538F052E536323DL, 0x295746EA12A3D9CCL);
    VECTOR(int64_t, 2) l_751 = (VECTOR(int64_t, 2))(0x2B8BA286F04DC355L, 0x46D78A4155D21FC1L);
    VECTOR(uint16_t, 2) l_754 = (VECTOR(uint16_t, 2))(0xF208L, 0xD9EBL);
    int16_t *l_755 = (void*)0;
    uint32_t *l_756 = &l_698;
    uint32_t l_757 = 0xFF821B38L;
    int8_t *l_758 = (void*)0;
    int8_t *l_759 = (void*)0;
    int8_t *l_760 = (void*)0;
    int8_t *l_761 = (void*)0;
    int8_t *l_762 = (void*)0;
    int i, j;
    p_873->g_261 = func_63(func_42(l_698, (safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((+(safe_add_func_int8_t_s_s(((((*l_722) = (((p_873->g_709[1] = l_707[5][6]) != &p_873->g_516[0]) >= (safe_lshift_func_int16_t_s_u(((p_873->g_712 != ((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0xFCL, 0UL, 248UL, 1UL)), 0xE5L, 0xA7L, 255UL, 0UL)).s1 != (((safe_mod_func_uint64_t_u_u((((l_720 = (((((l_698 , (((((safe_lshift_func_uint16_t_u_s(0xE57EL, (((((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_719.s49cca6ba)).s4531751374465304)).s5 & (&p_873->g_287[4] != &p_39)) , 0x25BCDCF2F71C0C93L) , p_41) >= p_40) , 0x196DL))) || 1UL) , p_873->g_489.s1) || (*p_873->g_183)) > 255UL)) , 0xB55505A3987FA2F6L) | p_41) || l_698) || p_38)) < l_698) < 0xEDCBE45D2E612538L), p_38)) , l_721) != (void*)0)) , p_873->g_712)) , l_720), 1)))) && l_720) ^ 0xEFB311EFL), p_873->g_109))), l_719.se)), 1L)), (*p_39))), l_698, l_723, p_873), l_719.sc, p_873->g_504.sc, p_873);
    if ((safe_rshift_func_int8_t_s_u((((VECTOR(uint64_t, 8))(l_728.s82ee56bb)).s6 , ((safe_add_func_uint32_t_u_u(0xE959EDAAL, ((*p_873->g_261) || (safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_873->global_2_offset, get_global_id(2), 10), p_38))))) == l_733)), (4294967295UL <= p_873->g_559.s2))))
    { /* block id: 297 */
        l_734--;
    }
    else
    { /* block id: 299 */
        uint16_t l_739 = 0x364EL;
        p_873->g_211.s1 = ((*p_873->g_261) = ((*p_39) > ((safe_lshift_func_uint8_t_u_s((l_739 = (+(FAKE_DIVERGE(p_873->local_0_offset, get_local_id(0), 10) , p_40))), 7)) && l_739)));
    }
    (*p_873->g_261) ^= ((p_873->g_52.x |= ((safe_unary_minus_func_int8_t_s(((safe_sub_func_uint16_t_u_u((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 2))(p_873->g_743.xz)).xxyx))).even)))).even >= 0x090EL), (((safe_div_func_uint64_t_u_u(18446744073709551611UL, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 2))(l_746.s43)).xxyx, ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(l_747.s94)).xxxyxxyx, ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_748.yyyyxxyy)))).s24))).xyyy, ((VECTOR(int64_t, 8))(0x2E7CFBC14AB60256L, ((VECTOR(int64_t, 4))((-9L), 0x5AA29ACFFD71D19FL, 0x605B53621C3C9998L, (-1L))), 1L, 5L, 0x51F148C21510E2D8L)).hi, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_749.sae0dff2ce19cf3c6)).s0e)).yxxx)).wyyzwxyxxzxwzyyz)).se506))).xyzwzxxx))).even, ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 8))(l_750.sa80fb338)), ((VECTOR(int64_t, 16))(l_751.xxyxyyxxyxxyyxxy)).hi))).s43, (int64_t)((*p_873->g_183) = ((l_757 = (((p_873->g_501.s1 , p_873->g_504.s5) , (!((*l_756) = (safe_add_func_uint16_t_u_u((+((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))((0xFE0AEE326B229153L != ((*p_39) && (0x71AA4F5B02892677L <= (-1L)))), 3UL, ((VECTOR(uint16_t, 2))(l_754.xx)), ((void*)0 == l_755), ((VECTOR(uint16_t, 4))(9UL)), 0xC54BL, ((VECTOR(uint16_t, 4))(0x692FL)), 0x0A1EL, 0xBC28L)).hi)).hi, ((VECTOR(uint16_t, 4))(65529UL))))).y), 65534UL))))) != p_41)) < p_38))))).yxyyyxxx, ((VECTOR(int64_t, 8))(0x610559BBF0A55058L))))).odd))))).xzzyyywwxwwwxyww)).sd)) , 0x77L) == 0x0EL))) >= 0L))) && 250UL)) != GROUP_DIVERGE(1, 1));
    return &p_873->g_358;
}


/* ------------------------------------------ */
/* 
 * reads : p_873->g_538
 * writes: p_873->g_538 p_873->g_695
 */
uint16_t * func_42(uint32_t  p_43, int64_t  p_44, uint32_t  p_45, uint16_t * p_46, struct S0 * p_873)
{ /* block id: 287 */
    int32_t *l_692 = (void*)0;
    int16_t **l_693 = (void*)0;
    int16_t ***l_694[7];
    int i;
    for (i = 0; i < 7; i++)
        l_694[i] = (void*)0;
    p_873->g_538.sf ^= p_45;
    p_873->g_695[4][4][1] = l_693;
    return &p_873->g_358;
}


/* ------------------------------------------ */
/* 
 * reads : p_873->g_58 p_873->g_18 p_873->g_52 p_873->g_109 p_873->g_13 p_873->g_184 p_873->g_142 p_873->g_137 p_873->g_219 p_873->g_258 p_873->g_287 p_873->g_297 p_873->g_211 p_873->g_202 p_873->g_261 p_873->g_210 p_873->g_207 p_873->g_538 p_873->g_87 p_873->g_630 p_873->g_183 p_873->g_566 p_873->g_358 p_873->g_559 p_873->g_664 p_873->g_665 p_873->g_668
 * writes: p_873->g_58 p_873->g_87 p_873->g_109 p_873->g_258 p_873->g_142 p_873->g_261 p_873->g_137 p_873->g_117 p_873->g_184 p_873->g_297 p_873->g_211 p_873->g_207 p_873->g_538 p_873->g_358
 */
int64_t  func_56(uint32_t  p_57, struct S0 * p_873)
{ /* block id: 10 */
    uint8_t l_75 = 0UL;
    int32_t l_82 = 1L;
    VECTOR(uint16_t, 2) l_92 = (VECTOR(uint16_t, 2))(65533UL, 65529UL);
    int32_t l_108 = 1L;
    uint16_t *l_110 = (void*)0;
    VECTOR(uint32_t, 16) l_620 = (VECTOR(uint32_t, 16))(4294967291UL, (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 6UL), 6UL), 6UL, 4294967291UL, 6UL, (VECTOR(uint32_t, 2))(4294967291UL, 6UL), (VECTOR(uint32_t, 2))(4294967291UL, 6UL), 4294967291UL, 6UL, 4294967291UL, 6UL);
    uint64_t *l_627 = &p_873->g_207;
    uint64_t **l_626 = &l_627;
    int32_t l_629 = 0L;
    VECTOR(uint8_t, 8) l_631 = (VECTOR(uint8_t, 8))(0x65L, (VECTOR(uint8_t, 4))(0x65L, (VECTOR(uint8_t, 2))(0x65L, 0xF9L), 0xF9L), 0xF9L, 0x65L, 0xF9L);
    uint16_t l_638 = 65535UL;
    VECTOR(int16_t, 16) l_649 = (VECTOR(int16_t, 16))(0x6F48L, (VECTOR(int16_t, 4))(0x6F48L, (VECTOR(int16_t, 2))(0x6F48L, 0x3E8FL), 0x3E8FL), 0x3E8FL, 0x6F48L, 0x3E8FL, (VECTOR(int16_t, 2))(0x6F48L, 0x3E8FL), (VECTOR(int16_t, 2))(0x6F48L, 0x3E8FL), 0x6F48L, 0x3E8FL, 0x6F48L, 0x3E8FL);
    VECTOR(int64_t, 4) l_656 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x5062CEE765C71A48L), 0x5062CEE765C71A48L);
    int16_t l_659 = 0x1168L;
    uint64_t l_660 = 8UL;
    VECTOR(int8_t, 4) l_667 = (VECTOR(int8_t, 4))(0x54L, (VECTOR(int8_t, 2))(0x54L, 0x75L), 0x75L);
    int i;
    ++p_873->g_58;
    for (p_57 = 0; (p_57 <= 22); p_57 = safe_add_func_uint64_t_u_u(p_57, 7))
    { /* block id: 14 */
        int32_t l_84 = 0x0FFEA059L;
        uint64_t *l_85 = (void*)0;
        uint64_t *l_86 = &p_873->g_87;
        VECTOR(uint8_t, 2) l_90 = (VECTOR(uint8_t, 2))(0x51L, 0xE0L);
        VECTOR(uint8_t, 4) l_91 = (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 0xE1L), 0xE1L);
        uint8_t *l_98 = (void*)0;
        uint8_t *l_99 = (void*)0;
        uint8_t *l_100 = (void*)0;
        uint8_t *l_101 = (void*)0;
        uint8_t *l_102 = (void*)0;
        uint8_t *l_103 = (void*)0;
        uint8_t *l_104 = (void*)0;
        int32_t l_106[1];
        uint8_t *l_107 = (void*)0;
        int32_t **l_613 = &p_873->g_261;
        int32_t ***l_614 = &l_613;
        int i;
        for (i = 0; i < 1; i++)
            l_106[i] = 0x070B1DE0L;
        (*l_613) = func_63(func_67((func_69((!((l_75 = ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0L, 0x50L)).yxxx)).x) == (safe_mod_func_uint8_t_u_u(0x0FL, (p_873->g_109 ^= (safe_div_func_int16_t_s_s((((*l_86) = (safe_lshift_func_uint8_t_u_s(l_82, (safe_unary_minus_func_int64_t_s(l_84))))) , (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))((l_108 = (l_82 = ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 2))(1UL, 2UL)).xxxxxyxyyyyxxyyx, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 16))(l_90.xxxxxyyyyxyxyyxy)).s3f04, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 2))(l_91.yy)).xyyx, (uint8_t)(((VECTOR(uint16_t, 8))(l_92.yxyyyyxy)).s6 && ((safe_rshift_func_uint8_t_u_s(((l_84 = (safe_unary_minus_func_uint64_t_u(18446744073709551614UL))) , (l_84 &= (safe_rshift_func_int16_t_s_s(p_57, l_91.w)))), 3)) , (((VECTOR(uint8_t, 8))(p_873->g_105.xwzxzwzw)).s1 && (l_106[0] == l_92.y)))), (uint8_t)250UL))), 0x4FL, p_873->g_13, 0x20L, ((VECTOR(uint8_t, 4))(0x97L)), 4UL, 255UL, p_873->g_18.s1, 0x28L, 255UL)).sbcd9, ((VECTOR(uint8_t, 4))(1UL))))).xyxwxzxyywwxwxyw))))).sd9eb)).wzwyzxxx, (uint8_t)p_57))).s5, GROUP_DIVERGE(0, 1), 0UL, 1UL, 0xE9L, p_873->g_52.y, ((VECTOR(uint8_t, 8))(0xB7L)), 0x42L, 1UL)), ((VECTOR(uint8_t, 16))(0x53L)), ((VECTOR(uint8_t, 16))(1UL))))).s69, ((VECTOR(uint8_t, 2))(253UL))))).odd)), GROUP_DIVERGE(2, 1), ((VECTOR(uint8_t, 4))(0x40L)), 0x0CL, 248UL)).hi)).y, p_873->g_18.s9))), p_873->g_52.x))))))), p_873->g_18.s3, p_57, l_110, p_57, p_873) , l_110), p_873), p_873->g_210.s5, p_873->g_13, p_873);
        (*l_614) = l_613;
        p_873->g_261 = &p_873->g_142[2];
    }
    for (p_873->g_87 = 10; (p_873->g_87 == 60); p_873->g_87 = safe_add_func_uint8_t_u_u(p_873->g_87, 5))
    { /* block id: 261 */
        uint64_t **l_625 = (void*)0;
        int32_t l_633 = 8L;
        VECTOR(int8_t, 4) l_669 = (VECTOR(int8_t, 4))(0x3EL, (VECTOR(int8_t, 2))(0x3EL, 1L), 1L);
        int32_t *l_687 = (void*)0;
        int32_t *l_688 = (void*)0;
        int32_t *l_689 = &p_873->g_142[2];
        int32_t **l_690 = (void*)0;
        int32_t **l_691 = &l_688;
        int i;
        for (l_75 = (-6); (l_75 < 53); l_75 = safe_add_func_uint64_t_u_u(l_75, 9))
        { /* block id: 264 */
            int32_t l_619 = 0x3E969F71L;
            uint64_t ***l_628 = &l_626;
            uint8_t *l_632[1][9][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int32_t *l_634 = (void*)0;
            int32_t *l_635 = (void*)0;
            int32_t *l_636 = (void*)0;
            int32_t l_637[7] = {0x5E69CB6AL,0x5E69CB6AL,0x5E69CB6AL,0x5E69CB6AL,0x5E69CB6AL,0x5E69CB6AL,0x5E69CB6AL};
            int64_t **l_658[1][10][8] = {{{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183},{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183},{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183},{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183},{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183},{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183},{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183},{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183},{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183},{&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183,&p_873->g_183}}};
            VECTOR(int8_t, 8) l_666 = (VECTOR(int8_t, 8))(0x0CL, (VECTOR(int8_t, 4))(0x0CL, (VECTOR(int8_t, 2))(0x0CL, 0x59L), 0x59L), 0x59L, 0x0CL, 0x59L);
            VECTOR(uint8_t, 4) l_676 = (VECTOR(uint8_t, 4))(0xCFL, (VECTOR(uint8_t, 2))(0xCFL, 246UL), 246UL);
            int32_t *l_685 = &l_108;
            int i, j, k;
            if (((l_619 != ((((VECTOR(uint32_t, 4))(l_620.sdce0)).w < (l_637[4] = ((safe_add_func_int16_t_s_s((safe_div_func_uint8_t_u_u((l_633 |= ((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 2))(1UL, 0x64L)).xxxxxxyx, ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(254UL, 0x07L, 255UL, 8UL)), ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 2))(255UL, 0x09L)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0xD0L, 2UL)), 250UL, 0x2EL)).even)).xyxyyxyx, (uint8_t)(l_620.s8 >= (l_625 == ((*l_628) = l_626))), (uint8_t)l_629))), ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_873->g_630.see)), 0UL, 1UL)))).hi, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_631.s4144130705353124)).s6c)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))(GROUP_DIVERGE(2, 1), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0xEFL, 0xABL)).yxxx)), 255UL, 0x28L, 0xD8L)), ((VECTOR(uint8_t, 8))(254UL, (0x0612060B8A6C267EL <= ((*p_873->g_183) = (p_57 , ((((l_619 , p_57) , 0x6DL) > p_57) < l_619)))), ((VECTOR(uint8_t, 2))(0UL)), 0xD9L, 3UL, 0x1DL, 247UL))))).even)).hi))), 7UL, 255UL)).lo))), ((VECTOR(uint8_t, 2))(0xEEL)), 0xD4L, 248UL, 7UL, 0x64L)), ((VECTOR(uint8_t, 16))(0x30L))))))).s82, ((VECTOR(uint8_t, 2))(0x34L))))).yxxxyxxyxyxyyyxx, ((VECTOR(uint8_t, 16))(0UL))))).s2199))).ywwxzxwz))).s4), p_873->g_566.x)), 0xFB5AL)) != 0x3BA06BE5007FB849L))) >= 255UL)) != l_638))
            { /* block id: 269 */
                if (p_873->g_202.z)
                    break;
                return p_57;
            }
            else
            { /* block id: 272 */
                int32_t **l_639 = &l_634;
                uint16_t *l_646 = &p_873->g_358;
                VECTOR(int16_t, 8) l_657 = (VECTOR(int16_t, 8))(0x4FDAL, (VECTOR(int16_t, 4))(0x4FDAL, (VECTOR(int16_t, 2))(0x4FDAL, 0x0C65L), 0x0C65L), 0x0C65L, 0x4FDAL, 0x0C65L);
                int8_t *l_670 = (void*)0;
                int8_t *l_671[5];
                int32_t l_686 = 0x5DF1E097L;
                int i;
                for (i = 0; i < 5; i++)
                    l_671[i] = (void*)0;
                (*l_639) = &l_108;
                (*l_634) = (safe_rshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(0UL, ((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 16))((-1L), ((--(*l_646)) || p_57), 0x0AEAL, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_649.s3740392d)).s4653663151050322)), ((VECTOR(int16_t, 8))(0x1B1CL, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((-10L), p_873->g_202.y, 0x199DL, (safe_add_func_uint32_t_u_u(p_873->g_559.s7, ((safe_add_func_uint16_t_u_u(p_57, p_57)) , (1UL || ((*p_873->g_183) && ((*l_627) |= (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 4))(l_656.wyzx)).z, p_873->g_210.sf)))))))), ((VECTOR(int16_t, 2))(2L, 0x5D78L)), 8L, 0x5434L)).s21)), 0L, 0x2D63L)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_657.s56)).yxyxxyxyyyxyyyyx)).s13)), 8L)).s1765114656507252))).s8175)).zxyyyyzzxwxzwwwx))).sd6bf)), 7L, (((l_658[0][8][5] != &p_873->g_183) >= 1UL) & l_659), ((VECTOR(int16_t, 4))(1L)), 0L, 0x604FL, (-1L))).s65))).yyxxxyxx, ((VECTOR(uint16_t, 8))(1UL))))).odd, ((VECTOR(uint16_t, 4))(2UL))))), ((VECTOR(uint16_t, 2))(0x0581L)), 0x20CBL)).s3, 9)), 15)), l_660));
                l_686 = ((safe_unary_minus_func_uint16_t_u((p_873->g_137[2] | ((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(1L, 0x79L, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(p_873->g_664.s41)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(1L, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 4))(p_873->g_665.xxxy)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_666.s14462003)).even)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(5L, 0x48L, 0x28L, 0L)).zyyxyxyz)).even)).hi)).yyyy))).odd, ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 8))(4L, 0x06L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(1L, 0L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_667.xzxy)).hi)).odd, ((VECTOR(int8_t, 4))(p_873->g_668.xxzw)), 0x7FL)).lo, ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 2))(l_669.xy)).xyyxyxxx))).lo, ((VECTOR(int8_t, 16))((-1L), ((**l_639) = p_57), 1L, p_57, 0x05L, 0x2CL, (((safe_sub_func_int32_t_s_s((safe_rshift_func_int8_t_s_u((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_676.xw)).xyyyyxyyxxyyyyyx)).s70)))).xyxyyyyy)).s3 < (l_633 = l_82)), (((safe_sub_func_int32_t_s_s(p_57, (safe_div_func_int64_t_s_s((GROUP_DIVERGE(0, 1) || (((safe_sub_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(((*l_646) |= ((void*)0 != l_685)), p_57)), p_57)) || p_57) || 0xEF60F93CL)), (*p_873->g_183))))) || 0L) ^ p_57))), (-1L))) >= l_669.y) & 0x15431CD2L), p_57, p_873->g_219.y, p_873->g_538.s9, 1L, 0L, ((VECTOR(int8_t, 2))(0L)), 0x3FL, 2L)).s0b80))).even)), ((VECTOR(int8_t, 2))(0x07L)), 1L, 0x3CL)), ((VECTOR(int8_t, 8))(1L))))).s26, ((VECTOR(int8_t, 2))((-5L)))))), (-6L))), 0x1DL, p_873->g_18.sf, 5L, 0x78L)).s1250514326770507)).s62, ((VECTOR(int8_t, 2))(1L))))))).xyyx)).hi))), 0x7DL, 7L, 0x47L, 9L)).s0, 1)) >= p_873->g_297)))) , p_57);
            }
        }
        (*l_689) |= ((GROUP_DIVERGE(1, 1) ^ 0x4DC873DEL) | p_57);
        (*l_691) = &l_633;
    }
    return (*p_873->g_183);
}


/* ------------------------------------------ */
/* 
 * reads : p_873->g_58 p_873->g_207 p_873->g_538
 * writes: p_873->g_58 p_873->g_207 p_873->g_538
 */
int32_t * func_63(uint16_t * p_64, uint64_t  p_65, int8_t  p_66, struct S0 * p_873)
{ /* block id: 241 */
    int32_t *l_598 = (void*)0;
    int32_t *l_599 = (void*)0;
    int32_t *l_600[9];
    uint16_t l_601 = 7UL;
    int64_t **l_609 = &p_873->g_183;
    int64_t ***l_610 = (void*)0;
    int64_t ***l_611 = &l_609;
    int64_t **l_612 = &p_873->g_183;
    int i;
    for (i = 0; i < 9; i++)
        l_600[i] = &p_873->g_142[5];
    l_601++;
    for (p_873->g_58 = 10; (p_873->g_58 > 34); p_873->g_58 = safe_add_func_uint64_t_u_u(p_873->g_58, 9))
    { /* block id: 245 */
        int32_t *l_608 = &p_873->g_142[1];
        for (p_873->g_207 = 0; (p_873->g_207 >= 20); p_873->g_207 = safe_add_func_uint8_t_u_u(p_873->g_207, 4))
        { /* block id: 248 */
            return l_608;
        }
    }
    p_873->g_538.s2 |= (((*l_611) = l_609) == l_612);
    return l_600[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_873->g_13 p_873->g_184 p_873->g_207 p_873->g_142 p_873->g_137 p_873->g_219 p_873->g_258 p_873->g_18 p_873->g_52 p_873->g_109 p_873->g_183 p_873->g_287 p_873->g_297 p_873->g_211 p_873->g_202 p_873->g_261
 * writes: p_873->g_207 p_873->g_258 p_873->g_142 p_873->g_261 p_873->g_137 p_873->g_109 p_873->g_184 p_873->g_117 p_873->g_297 p_873->g_211
 */
uint16_t * func_67(uint16_t * p_68, struct S0 * p_873)
{ /* block id: 57 */
    int32_t *l_232 = &p_873->g_142[5];
    int32_t *l_233 = &p_873->g_142[4];
    int32_t *l_234 = &p_873->g_142[5];
    int32_t *l_235[6][9][4] = {{{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]}},{{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]}},{{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]}},{{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]}},{{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]}},{{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]},{&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5],&p_873->g_142[5]}}};
    int32_t l_236 = 0x3DDCAA06L;
    int8_t l_237 = 0x77L;
    uint8_t l_238[1];
    VECTOR(uint64_t, 16) l_243 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xA0EE2407592093B7L), 0xA0EE2407592093B7L), 0xA0EE2407592093B7L, 1UL, 0xA0EE2407592093B7L, (VECTOR(uint64_t, 2))(1UL, 0xA0EE2407592093B7L), (VECTOR(uint64_t, 2))(1UL, 0xA0EE2407592093B7L), 1UL, 0xA0EE2407592093B7L, 1UL, 0xA0EE2407592093B7L);
    int64_t *l_246 = &p_873->g_13;
    VECTOR(uint64_t, 8) l_248 = (VECTOR(uint64_t, 8))(0x4329E963DA19F553L, (VECTOR(uint64_t, 4))(0x4329E963DA19F553L, (VECTOR(uint64_t, 2))(0x4329E963DA19F553L, 1UL), 1UL), 1UL, 0x4329E963DA19F553L, 1UL);
    uint64_t *l_249 = (void*)0;
    uint64_t *l_250 = (void*)0;
    uint64_t *l_251[10][6][4] = {{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}},{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}},{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}},{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}},{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}},{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}},{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}},{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}},{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}},{{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207},{&p_873->g_207,(void*)0,(void*)0,&p_873->g_207}}};
    VECTOR(uint64_t, 16) l_252 = (VECTOR(uint64_t, 16))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x7A1D85AB17066281L), 0x7A1D85AB17066281L), 0x7A1D85AB17066281L, 18446744073709551606UL, 0x7A1D85AB17066281L, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x7A1D85AB17066281L), (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x7A1D85AB17066281L), 18446744073709551606UL, 0x7A1D85AB17066281L, 18446744073709551606UL, 0x7A1D85AB17066281L);
    uint32_t l_257 = 1UL;
    int32_t l_308[6][9] = {{0x270523B7L,0L,0x1445CD29L,(-8L),(-1L),0x270523B7L,(-8L),1L,(-8L)},{0x270523B7L,0L,0x1445CD29L,(-8L),(-1L),0x270523B7L,(-8L),1L,(-8L)},{0x270523B7L,0L,0x1445CD29L,(-8L),(-1L),0x270523B7L,(-8L),1L,(-8L)},{0x270523B7L,0L,0x1445CD29L,(-8L),(-1L),0x270523B7L,(-8L),1L,(-8L)},{0x270523B7L,0L,0x1445CD29L,(-8L),(-1L),0x270523B7L,(-8L),1L,(-8L)},{0x270523B7L,0L,0x1445CD29L,(-8L),(-1L),0x270523B7L,(-8L),1L,(-8L)}};
    int16_t l_309 = 0x269EL;
    uint8_t l_310 = 0xD1L;
    int8_t *l_343 = &l_237;
    uint8_t *l_346 = &l_310;
    VECTOR(int32_t, 4) l_380 = (VECTOR(int32_t, 4))(0x64B1ADF6L, (VECTOR(int32_t, 2))(0x64B1ADF6L, 1L), 1L);
    uint8_t l_435[4][1][1] = {{{9UL}},{{9UL}},{{9UL}},{{9UL}}};
    uint64_t l_461 = 0x2FAF3CA840E3108EL;
    int32_t l_465 = 8L;
    VECTOR(int32_t, 16) l_537 = (VECTOR(int32_t, 16))(0x3767CC73L, (VECTOR(int32_t, 4))(0x3767CC73L, (VECTOR(int32_t, 2))(0x3767CC73L, 0x7C5F6175L), 0x7C5F6175L), 0x7C5F6175L, 0x3767CC73L, 0x7C5F6175L, (VECTOR(int32_t, 2))(0x3767CC73L, 0x7C5F6175L), (VECTOR(int32_t, 2))(0x3767CC73L, 0x7C5F6175L), 0x3767CC73L, 0x7C5F6175L, 0x3767CC73L, 0x7C5F6175L);
    VECTOR(uint64_t, 4) l_557 = (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 18446744073709551615UL), 18446744073709551615UL);
    int32_t l_583 = 0x4793E2C2L;
    uint16_t l_592 = 0x064AL;
    VECTOR(int32_t, 2) l_596 = (VECTOR(int32_t, 2))(1L, 0x351D05A4L);
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_238[i] = 0x48L;
    l_238[0]++;
    if (((safe_sub_func_uint32_t_u_u((((((VECTOR(uint64_t, 8))(l_243.sa13daaa1)).s0 , (p_873->g_258 ^= (((((safe_mod_func_uint8_t_u_u((((0x5BL < (p_873->g_13 | (l_246 != &p_873->g_184))) & ((safe_unary_minus_func_uint32_t_u((((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 16))(0x6779688306B9E29AL, p_873->g_184, ((VECTOR(uint64_t, 8))(l_248.s25562774)), 1UL, ((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xEFD9751F804454F9L)), (p_873->g_207 &= 0UL), 0x2FC0732C85794574L, 18446744073709551615UL)), (uint64_t)((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_252.s7e9e9159)).s3536567736467004)).s4))).s5 && p_873->g_184))) & ((*l_233) >= (safe_mod_func_int32_t_s_s(((safe_add_func_int32_t_s_s(0x25E379C5L, p_873->g_137[2])) ^ p_873->g_219.y), 1UL))))) && l_257), 0x36L)) | 18446744073709551615UL) != 0x3167161AF7ADC4FCL) < 1UL) > FAKE_DIVERGE(p_873->local_0_offset, get_local_id(0), 10)))) != p_873->g_18.s5) != (*l_233)), (*l_234))) >= 1L))
    { /* block id: 61 */
        int32_t *l_259 = &p_873->g_142[5];
        int32_t **l_260 = &l_259;
        VECTOR(int8_t, 8) l_266 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x5FL), 0x5FL), 0x5FL, 9L, 0x5FL);
        int16_t *l_269 = &p_873->g_137[2];
        int8_t *l_270 = &l_237;
        uint8_t *l_271 = &l_238[0];
        int32_t l_272 = 0x03642027L;
        int i;
        (*l_234) = 0x3D5961F9L;
        p_873->g_261 = ((*l_260) = l_259);
        l_272 ^= (safe_mul_func_uint8_t_u_u((**l_260), ((*l_271) = (safe_sub_func_int32_t_s_s((p_873->g_184 , ((((((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(l_266.s1173)), ((VECTOR(int8_t, 16))(0x1AL, 0x63L, (safe_mul_func_int16_t_s_s((((*l_269) = (**l_260)) ^ 0x7A96L), ((~0x7F0132B5L) && 0xC3195D9DL))), 5L, 0x27L, 1L, 0x7AL, (*l_234), ((*l_270) = ((void*)0 == &p_873->g_87)), (*l_259), ((VECTOR(int8_t, 2))(0x5EL)), ((VECTOR(int8_t, 2))((-10L))), (-1L), 0L)).sb869, ((VECTOR(int8_t, 4))(1L))))).hi, ((VECTOR(int8_t, 2))(0x2CL))))).yxxyxxyyyxxxxxyx, ((VECTOR(int8_t, 16))(0x78L))))).s7 , (*l_259)) , 1L) | p_873->g_52.y) | (**l_260))), (-5L))))));
    }
    else
    { /* block id: 69 */
        VECTOR(uint16_t, 16) l_275 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x258BL), 0x258BL), 0x258BL, 1UL, 0x258BL, (VECTOR(uint16_t, 2))(1UL, 0x258BL), (VECTOR(uint16_t, 2))(1UL, 0x258BL), 1UL, 0x258BL, 1UL, 0x258BL);
        int8_t *l_278 = (void*)0;
        uint64_t *l_281 = &p_873->g_207;
        int32_t l_291 = 1L;
        int32_t l_292 = 1L;
        int32_t l_300 = 7L;
        int32_t l_301[2][4][10] = {{{0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L,0L,1L,0L,0x697CBFD3L,0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L},{0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L,0L,1L,0L,0x697CBFD3L,0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L},{0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L,0L,1L,0L,0x697CBFD3L,0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L},{0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L,0L,1L,0L,0x697CBFD3L,0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L}},{{0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L,0L,1L,0L,0x697CBFD3L,0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L},{0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L,0L,1L,0L,0x697CBFD3L,0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L},{0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L,0L,1L,0L,0x697CBFD3L,0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L},{0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L,0L,1L,0L,0x697CBFD3L,0x11C3ED7EL,0x11C3ED7EL,0x697CBFD3L}}};
        VECTOR(int64_t, 4) l_302 = (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 0x78F39D724FBE7C8BL), 0x78F39D724FBE7C8BL);
        int16_t l_342 = 0x3D53L;
        int i, j, k;
        for (p_873->g_109 = 0; (p_873->g_109 >= 51); p_873->g_109++)
        { /* block id: 72 */
            int8_t *l_279 = &l_237;
            int8_t *l_280 = &l_237;
            uint64_t **l_282 = (void*)0;
            uint64_t **l_283 = &l_251[2][1][3];
            int32_t l_286 = 0x020E3012L;
            if (((p_873->g_117.x = ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 2))(65529UL, 1UL)).xxyxxyyx, ((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 16))(l_275.sa6a2a6bd14fecf0d)).hi, (uint16_t)((safe_add_func_uint32_t_u_u((((*l_283) = ((0x5EFCL || ((l_279 = l_278) != l_280)) , (((*p_873->g_183) = ((*l_232) <= (-1L))) , l_281))) == &p_873->g_207), l_275.s8)) >= ((safe_div_func_uint16_t_u_u((1L < p_873->g_52.y), l_286)) >= l_286)), (uint16_t)l_286)))))).s5165001227617743)).sc) == l_286))
            { /* block id: 77 */
                return p_873->g_287[4];
            }
            else
            { /* block id: 79 */
                if ((*l_232))
                    break;
            }
        }
        for (p_873->g_184 = 4; (p_873->g_184 < (-19)); p_873->g_184 = safe_sub_func_int32_t_s_s(p_873->g_184, 4))
        { /* block id: 85 */
            int32_t l_290 = 0L;
            int32_t l_293 = 0x4B65FB20L;
            int32_t l_294 = 1L;
            int32_t l_295 = 0x0940D5D8L;
            int32_t l_296 = 0x17BD7970L;
            int32_t l_303 = 0x039C4FD5L;
            int32_t l_304 = (-1L);
            int32_t l_305 = 0x346788B6L;
            int32_t l_306 = 0L;
            int32_t l_307[3][4] = {{(-4L),0x1B6EE818L,0x087AE6E6L,0x1B6EE818L},{(-4L),0x1B6EE818L,0x087AE6E6L,0x1B6EE818L},{(-4L),0x1B6EE818L,0x087AE6E6L,0x1B6EE818L}};
            uint32_t l_315 = 1UL;
            VECTOR(int32_t, 16) l_326 = (VECTOR(int32_t, 16))(0x5BC2BC29L, (VECTOR(int32_t, 4))(0x5BC2BC29L, (VECTOR(int32_t, 2))(0x5BC2BC29L, (-1L)), (-1L)), (-1L), 0x5BC2BC29L, (-1L), (VECTOR(int32_t, 2))(0x5BC2BC29L, (-1L)), (VECTOR(int32_t, 2))(0x5BC2BC29L, (-1L)), 0x5BC2BC29L, (-1L), 0x5BC2BC29L, (-1L));
            int64_t *l_341 = &p_873->g_258;
            int i, j;
            p_873->g_297++;
            l_310--;
            for (l_290 = (-25); (l_290 > 12); l_290 = safe_add_func_uint64_t_u_u(l_290, 9))
            { /* block id: 90 */
                uint8_t l_320[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_320[i] = 3UL;
                if (l_300)
                    break;
                (*l_232) ^= l_315;
                for (l_294 = 4; (l_294 < (-24)); l_294 = safe_sub_func_int32_t_s_s(l_294, 5))
                { /* block id: 95 */
                    uint32_t l_323 = 8UL;
                    if ((safe_mod_func_uint64_t_u_u(p_873->g_184, l_303)))
                    { /* block id: 96 */
                        int8_t *l_331 = &l_237;
                        int32_t l_338 = (-1L);
                        --l_320[2];
                        l_323--;
                        p_873->g_211.s3 &= ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(l_326.s18)).xxxyxxyy, ((VECTOR(int32_t, 4))((((safe_sub_func_int16_t_s_s(((safe_mod_func_int8_t_s_s((-8L), (0x7C7562B4L || ((0L >= ((*l_331) &= l_301[1][1][5])) , (((((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (safe_rshift_func_int8_t_s_u((~((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(6L, ((VECTOR(int64_t, 8))(l_338, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))((((void*)0 != &l_237) & l_323), (p_873->g_258 = (((safe_sub_func_int8_t_s_s((((((l_293 = ((*l_331) = (l_341 == (void*)0))) , p_873->g_137[2]) >= 0xC4L) >= l_304) > p_873->g_18.sd), p_873->g_219.x)) >= 6L) && l_291)), (*p_873->g_183), ((VECTOR(int64_t, 4))(0x55902905DA985751L)), 0L, 0x2993241DAF23DB2AL, ((VECTOR(int64_t, 4))(0x7CDD39037653A62DL)), (*p_873->g_183), (-1L), 1L)).sa7)), (-8L), 0x7C7D234256E0F62CL, 0x5C7F7299C5FB5D7FL, 0x2203EF6716D169DCL, 0x4096A87FF15702E9L)).s0, ((VECTOR(int64_t, 8))(0L)), (*p_873->g_183), ((VECTOR(int64_t, 2))(0x6907BDE3D1F45896L)), ((VECTOR(int64_t, 2))(0x61C81E77B789913DL)), 0x5D945B9C56B4BC14L)).even)).s2, (-1L))) > 0x0A02F65D3B40E072L)), GROUP_DIVERGE(1, 1))))) , 0x5F2AB933L) != l_320[2]) ^ l_323) || (*l_232)))))) != l_323), (-1L))) | p_873->g_142[5]) != l_291), ((VECTOR(int32_t, 2))(1L)), 0x4BE6E71BL)).xzxyzyyw))).s3;
                        if (l_342)
                            continue;
                    }
                    else
                    { /* block id: 105 */
                        (*l_233) = (l_320[2] ^ (p_873->g_258 = l_301[0][3][6]));
                    }
                }
                if (l_301[0][3][6])
                    break;
            }
        }
        return p_68;
    }
    (*p_873->g_261) = (((*l_343) |= (*l_234)) && (255UL || ((*l_346) = (((*l_233) >= (*l_234)) == (safe_mul_func_uint8_t_u_u((0x24L || GROUP_DIVERGE(0, 1)), p_873->g_202.z))))));
    for (l_310 = 0; (l_310 <= 15); l_310++)
    { /* block id: 120 */
        VECTOR(uint32_t, 8) l_349 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x289A5BB3L), 0x289A5BB3L), 0x289A5BB3L, 4294967295UL, 0x289A5BB3L);
        int32_t l_353 = 0x7D3B3E4AL;
        int32_t l_355 = (-7L);
        int32_t l_366 = 0L;
        int32_t **l_383 = &l_234;
        uint64_t *l_384 = (void*)0;
        VECTOR(int32_t, 16) l_388 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
        VECTOR(int32_t, 8) l_400 = (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L);
        uint16_t l_411 = 65526UL;
        int16_t l_456 = 0L;
        uint32_t l_471 = 0x013C20F0L;
        VECTOR(int8_t, 2) l_482 = (VECTOR(int8_t, 2))(0x2BL, 4L);
        VECTOR(uint16_t, 8) l_508 = (VECTOR(uint16_t, 8))(0x8EC1L, (VECTOR(uint16_t, 4))(0x8EC1L, (VECTOR(uint16_t, 2))(0x8EC1L, 0xB329L), 0xB329L), 0xB329L, 0x8EC1L, 0xB329L);
        uint8_t *l_515 = (void*)0;
        uint64_t l_536 = 0xEACB226C6F8C5E71L;
        uint32_t l_543 = 9UL;
        VECTOR(int32_t, 2) l_553 = (VECTOR(int32_t, 2))(0x7F252743L, 0x13B0386FL);
        uint64_t l_570 = 4UL;
        uint64_t l_595 = 1UL;
        int i;
        (1 + 1);
    }
    return &p_873->g_297;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_69(uint16_t  p_70, int8_t  p_71, uint32_t  p_72, uint16_t * p_73, int64_t  p_74, struct S0 * p_873)
{ /* block id: 22 */
    VECTOR(uint16_t, 4) l_113 = (VECTOR(uint16_t, 4))(0xB7DDL, (VECTOR(uint16_t, 2))(0xB7DDL, 65535UL), 65535UL);
    VECTOR(int16_t, 8) l_116 = (VECTOR(int16_t, 8))(0x6232L, (VECTOR(int16_t, 4))(0x6232L, (VECTOR(int16_t, 2))(0x6232L, 0x26E0L), 0x26E0L), 0x26E0L, 0x6232L, 0x26E0L);
    VECTOR(int32_t, 2) l_130 = (VECTOR(int32_t, 2))(0x2AC3FE91L, 0L);
    int64_t l_131[5] = {0x1E42614109486933L,0x1E42614109486933L,0x1E42614109486933L,0x1E42614109486933L,0x1E42614109486933L};
    int64_t *l_132 = (void*)0;
    int64_t *l_133 = (void*)0;
    int64_t *l_134 = &l_131[4];
    uint32_t l_135 = 0xD5E3ED10L;
    int16_t *l_136 = &p_873->g_137[2];
    uint8_t l_138 = 0UL;
    uint8_t *l_139 = &p_873->g_140;
    int32_t *l_141 = &p_873->g_142[5];
    uint32_t l_158 = 0x73AD305CL;
    VECTOR(int8_t, 2) l_170 = (VECTOR(int8_t, 2))(0x01L, 0x68L);
    VECTOR(int8_t, 16) l_172 = (VECTOR(int8_t, 16))(0x1FL, (VECTOR(int8_t, 4))(0x1FL, (VECTOR(int8_t, 2))(0x1FL, (-1L)), (-1L)), (-1L), 0x1FL, (-1L), (VECTOR(int8_t, 2))(0x1FL, (-1L)), (VECTOR(int8_t, 2))(0x1FL, (-1L)), 0x1FL, (-1L), 0x1FL, (-1L));
    int32_t l_226[4][2][2] = {{{0x7F8498B0L,0x184DCA25L},{0x7F8498B0L,0x184DCA25L}},{{0x7F8498B0L,0x184DCA25L},{0x7F8498B0L,0x184DCA25L}},{{0x7F8498B0L,0x184DCA25L},{0x7F8498B0L,0x184DCA25L}},{{0x7F8498B0L,0x184DCA25L},{0x7F8498B0L,0x184DCA25L}}};
    int i, j, k;
    return p_72;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_874;
    struct S0* p_873 = &c_874;
    struct S0 c_875 = {
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_873->g_2
        1L, // p_873->g_13
        (VECTOR(uint16_t, 16))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 65531UL), 65531UL), 65531UL, 65529UL, 65531UL, (VECTOR(uint16_t, 2))(65529UL, 65531UL), (VECTOR(uint16_t, 2))(65529UL, 65531UL), 65529UL, 65531UL, 65529UL, 65531UL), // p_873->g_18
        (VECTOR(int8_t, 2))(0x74L, 0L), // p_873->g_52
        0x870E7C4BL, // p_873->g_58
        0x9E2267C8CEAAF2C4L, // p_873->g_87
        (VECTOR(uint8_t, 4))(0xF7L, (VECTOR(uint8_t, 2))(0xF7L, 0x29L), 0x29L), // p_873->g_105
        4294967295UL, // p_873->g_109
        (VECTOR(uint16_t, 2))(0x9082L, 65535UL), // p_873->g_117
        {0x7FD1L,0x7FD1L,0x7FD1L,0x7FD1L,0x7FD1L,0x7FD1L,0x7FD1L,0x7FD1L}, // p_873->g_137
        0x5EL, // p_873->g_140
        {0x0AEFA70CL,0x0AEFA70CL,0x0AEFA70CL,0x0AEFA70CL,0x0AEFA70CL,0x0AEFA70CL,0x0AEFA70CL,0x0AEFA70CL,0x0AEFA70CL}, // p_873->g_142
        (VECTOR(int8_t, 8))(0x31L, (VECTOR(int8_t, 4))(0x31L, (VECTOR(int8_t, 2))(0x31L, (-7L)), (-7L)), (-7L), 0x31L, (-7L)), // p_873->g_171
        1L, // p_873->g_184
        &p_873->g_184, // p_873->g_183
        (VECTOR(uint8_t, 4))(0x7FL, (VECTOR(uint8_t, 2))(0x7FL, 0x27L), 0x27L), // p_873->g_202
        18446744073709551614UL, // p_873->g_207
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x2A3F7372L), 0x2A3F7372L), 0x2A3F7372L, 1L, 0x2A3F7372L, (VECTOR(int32_t, 2))(1L, 0x2A3F7372L), (VECTOR(int32_t, 2))(1L, 0x2A3F7372L), 1L, 0x2A3F7372L, 1L, 0x2A3F7372L), // p_873->g_210
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_873->g_211
        (VECTOR(int32_t, 2))(0x5D56E283L, 1L), // p_873->g_219
        0x0F8473182B65221DL, // p_873->g_258
        (void*)0, // p_873->g_261
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_873->g_287
        0x0432L, // p_873->g_297
        0x87F7L, // p_873->g_358
        (VECTOR(int32_t, 16))(0x685003A2L, (VECTOR(int32_t, 4))(0x685003A2L, (VECTOR(int32_t, 2))(0x685003A2L, 0x235BFECEL), 0x235BFECEL), 0x235BFECEL, 0x685003A2L, 0x235BFECEL, (VECTOR(int32_t, 2))(0x685003A2L, 0x235BFECEL), (VECTOR(int32_t, 2))(0x685003A2L, 0x235BFECEL), 0x685003A2L, 0x235BFECEL, 0x685003A2L, 0x235BFECEL), // p_873->g_381
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x26F55ADFL), 0x26F55ADFL), // p_873->g_386
        0x50CAE175L, // p_873->g_394
        5UL, // p_873->g_397
        (VECTOR(uint32_t, 4))(0x4A5625F8L, (VECTOR(uint32_t, 2))(0x4A5625F8L, 4294967290UL), 4294967290UL), // p_873->g_410
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x1CA3BC4645EA68C6L), 0x1CA3BC4645EA68C6L), 0x1CA3BC4645EA68C6L, 1L, 0x1CA3BC4645EA68C6L), // p_873->g_489
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), (VECTOR(uint16_t, 2))(0UL, 65535UL), 0UL, 65535UL, 0UL, 65535UL), // p_873->g_501
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x668EL), 0x668EL), 0x668EL, 65535UL, 0x668EL), // p_873->g_503
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x6EC5L), 0x6EC5L), 0x6EC5L, 1UL, 0x6EC5L, (VECTOR(uint16_t, 2))(1UL, 0x6EC5L), (VECTOR(uint16_t, 2))(1UL, 0x6EC5L), 1UL, 0x6EC5L, 1UL, 0x6EC5L), // p_873->g_504
        {&p_873->g_140,&p_873->g_140}, // p_873->g_516
        (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x04A71E08L), 0x04A71E08L), 0x04A71E08L, (-8L), 0x04A71E08L, (VECTOR(int32_t, 2))((-8L), 0x04A71E08L), (VECTOR(int32_t, 2))((-8L), 0x04A71E08L), (-8L), 0x04A71E08L, (-8L), 0x04A71E08L), // p_873->g_538
        (VECTOR(int32_t, 2))(0L, 0x2D12412CL), // p_873->g_554
        (VECTOR(int32_t, 8))(0x6FB0F064L, (VECTOR(int32_t, 4))(0x6FB0F064L, (VECTOR(int32_t, 2))(0x6FB0F064L, 0x1807D42BL), 0x1807D42BL), 0x1807D42BL, 0x6FB0F064L, 0x1807D42BL), // p_873->g_559
        (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 1L), 1L), // p_873->g_566
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 1UL), 1UL), 1UL, 255UL, 1UL, (VECTOR(uint8_t, 2))(255UL, 1UL), (VECTOR(uint8_t, 2))(255UL, 1UL), 255UL, 1UL, 255UL, 1UL), // p_873->g_630
        (VECTOR(int8_t, 8))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-3L)), (-3L)), (-3L), (-3L), (-3L)), // p_873->g_664
        (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x7EL), 0x7EL), // p_873->g_665
        (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, (-1L)), (-1L)), // p_873->g_668
        &p_873->g_137[3], // p_873->g_696
        {{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}},{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}},{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}},{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}},{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}},{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}},{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}},{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}},{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}},{{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696},{&p_873->g_696,&p_873->g_696,&p_873->g_696,&p_873->g_696}}}, // p_873->g_695
        {(void*)0,(void*)0}, // p_873->g_709
        (void*)0, // p_873->g_712
        (VECTOR(uint16_t, 4))(0xFA7CL, (VECTOR(uint16_t, 2))(0xFA7CL, 0xEB99L), 0xEB99L), // p_873->g_743
        (-1L), // p_873->g_786
        (void*)0, // p_873->g_797
        251UL, // p_873->g_812
        &p_873->g_261, // p_873->g_828
        (void*)0, // p_873->g_834
        &p_873->g_834, // p_873->g_833
        (VECTOR(uint16_t, 2))(0x4F31L, 65528UL), // p_873->g_838
        (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 65535UL), 65535UL), // p_873->g_842
        &p_873->g_207, // p_873->g_846
        (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 1L), 1L), // p_873->g_850
        (VECTOR(int64_t, 16))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, (-4L)), (-4L)), (-4L), 3L, (-4L), (VECTOR(int64_t, 2))(3L, (-4L)), (VECTOR(int64_t, 2))(3L, (-4L)), 3L, (-4L), 3L, (-4L)), // p_873->g_851
        (VECTOR(int64_t, 16))(0x5E7444CB77B6363DL, (VECTOR(int64_t, 4))(0x5E7444CB77B6363DL, (VECTOR(int64_t, 2))(0x5E7444CB77B6363DL, 0x77675E844CB864FDL), 0x77675E844CB864FDL), 0x77675E844CB864FDL, 0x5E7444CB77B6363DL, 0x77675E844CB864FDL, (VECTOR(int64_t, 2))(0x5E7444CB77B6363DL, 0x77675E844CB864FDL), (VECTOR(int64_t, 2))(0x5E7444CB77B6363DL, 0x77675E844CB864FDL), 0x5E7444CB77B6363DL, 0x77675E844CB864FDL, 0x5E7444CB77B6363DL, 0x77675E844CB864FDL), // p_873->g_852
        2UL, // p_873->g_861
        sequence_input[get_global_id(0)], // p_873->global_0_offset
        sequence_input[get_global_id(1)], // p_873->global_1_offset
        sequence_input[get_global_id(2)], // p_873->global_2_offset
        sequence_input[get_local_id(0)], // p_873->local_0_offset
        sequence_input[get_local_id(1)], // p_873->local_1_offset
        sequence_input[get_local_id(2)], // p_873->local_2_offset
        sequence_input[get_group_id(0)], // p_873->group_0_offset
        sequence_input[get_group_id(1)], // p_873->group_1_offset
        sequence_input[get_group_id(2)], // p_873->group_2_offset
    };
    c_874 = c_875;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_873);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_873->g_2.s0, "p_873->g_2.s0", print_hash_value);
    transparent_crc(p_873->g_2.s1, "p_873->g_2.s1", print_hash_value);
    transparent_crc(p_873->g_2.s2, "p_873->g_2.s2", print_hash_value);
    transparent_crc(p_873->g_2.s3, "p_873->g_2.s3", print_hash_value);
    transparent_crc(p_873->g_2.s4, "p_873->g_2.s4", print_hash_value);
    transparent_crc(p_873->g_2.s5, "p_873->g_2.s5", print_hash_value);
    transparent_crc(p_873->g_2.s6, "p_873->g_2.s6", print_hash_value);
    transparent_crc(p_873->g_2.s7, "p_873->g_2.s7", print_hash_value);
    transparent_crc(p_873->g_13, "p_873->g_13", print_hash_value);
    transparent_crc(p_873->g_18.s0, "p_873->g_18.s0", print_hash_value);
    transparent_crc(p_873->g_18.s1, "p_873->g_18.s1", print_hash_value);
    transparent_crc(p_873->g_18.s2, "p_873->g_18.s2", print_hash_value);
    transparent_crc(p_873->g_18.s3, "p_873->g_18.s3", print_hash_value);
    transparent_crc(p_873->g_18.s4, "p_873->g_18.s4", print_hash_value);
    transparent_crc(p_873->g_18.s5, "p_873->g_18.s5", print_hash_value);
    transparent_crc(p_873->g_18.s6, "p_873->g_18.s6", print_hash_value);
    transparent_crc(p_873->g_18.s7, "p_873->g_18.s7", print_hash_value);
    transparent_crc(p_873->g_18.s8, "p_873->g_18.s8", print_hash_value);
    transparent_crc(p_873->g_18.s9, "p_873->g_18.s9", print_hash_value);
    transparent_crc(p_873->g_18.sa, "p_873->g_18.sa", print_hash_value);
    transparent_crc(p_873->g_18.sb, "p_873->g_18.sb", print_hash_value);
    transparent_crc(p_873->g_18.sc, "p_873->g_18.sc", print_hash_value);
    transparent_crc(p_873->g_18.sd, "p_873->g_18.sd", print_hash_value);
    transparent_crc(p_873->g_18.se, "p_873->g_18.se", print_hash_value);
    transparent_crc(p_873->g_18.sf, "p_873->g_18.sf", print_hash_value);
    transparent_crc(p_873->g_52.x, "p_873->g_52.x", print_hash_value);
    transparent_crc(p_873->g_52.y, "p_873->g_52.y", print_hash_value);
    transparent_crc(p_873->g_58, "p_873->g_58", print_hash_value);
    transparent_crc(p_873->g_87, "p_873->g_87", print_hash_value);
    transparent_crc(p_873->g_105.x, "p_873->g_105.x", print_hash_value);
    transparent_crc(p_873->g_105.y, "p_873->g_105.y", print_hash_value);
    transparent_crc(p_873->g_105.z, "p_873->g_105.z", print_hash_value);
    transparent_crc(p_873->g_105.w, "p_873->g_105.w", print_hash_value);
    transparent_crc(p_873->g_109, "p_873->g_109", print_hash_value);
    transparent_crc(p_873->g_117.x, "p_873->g_117.x", print_hash_value);
    transparent_crc(p_873->g_117.y, "p_873->g_117.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_873->g_137[i], "p_873->g_137[i]", print_hash_value);

    }
    transparent_crc(p_873->g_140, "p_873->g_140", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_873->g_142[i], "p_873->g_142[i]", print_hash_value);

    }
    transparent_crc(p_873->g_171.s0, "p_873->g_171.s0", print_hash_value);
    transparent_crc(p_873->g_171.s1, "p_873->g_171.s1", print_hash_value);
    transparent_crc(p_873->g_171.s2, "p_873->g_171.s2", print_hash_value);
    transparent_crc(p_873->g_171.s3, "p_873->g_171.s3", print_hash_value);
    transparent_crc(p_873->g_171.s4, "p_873->g_171.s4", print_hash_value);
    transparent_crc(p_873->g_171.s5, "p_873->g_171.s5", print_hash_value);
    transparent_crc(p_873->g_171.s6, "p_873->g_171.s6", print_hash_value);
    transparent_crc(p_873->g_171.s7, "p_873->g_171.s7", print_hash_value);
    transparent_crc(p_873->g_184, "p_873->g_184", print_hash_value);
    transparent_crc(p_873->g_202.x, "p_873->g_202.x", print_hash_value);
    transparent_crc(p_873->g_202.y, "p_873->g_202.y", print_hash_value);
    transparent_crc(p_873->g_202.z, "p_873->g_202.z", print_hash_value);
    transparent_crc(p_873->g_202.w, "p_873->g_202.w", print_hash_value);
    transparent_crc(p_873->g_207, "p_873->g_207", print_hash_value);
    transparent_crc(p_873->g_210.s0, "p_873->g_210.s0", print_hash_value);
    transparent_crc(p_873->g_210.s1, "p_873->g_210.s1", print_hash_value);
    transparent_crc(p_873->g_210.s2, "p_873->g_210.s2", print_hash_value);
    transparent_crc(p_873->g_210.s3, "p_873->g_210.s3", print_hash_value);
    transparent_crc(p_873->g_210.s4, "p_873->g_210.s4", print_hash_value);
    transparent_crc(p_873->g_210.s5, "p_873->g_210.s5", print_hash_value);
    transparent_crc(p_873->g_210.s6, "p_873->g_210.s6", print_hash_value);
    transparent_crc(p_873->g_210.s7, "p_873->g_210.s7", print_hash_value);
    transparent_crc(p_873->g_210.s8, "p_873->g_210.s8", print_hash_value);
    transparent_crc(p_873->g_210.s9, "p_873->g_210.s9", print_hash_value);
    transparent_crc(p_873->g_210.sa, "p_873->g_210.sa", print_hash_value);
    transparent_crc(p_873->g_210.sb, "p_873->g_210.sb", print_hash_value);
    transparent_crc(p_873->g_210.sc, "p_873->g_210.sc", print_hash_value);
    transparent_crc(p_873->g_210.sd, "p_873->g_210.sd", print_hash_value);
    transparent_crc(p_873->g_210.se, "p_873->g_210.se", print_hash_value);
    transparent_crc(p_873->g_210.sf, "p_873->g_210.sf", print_hash_value);
    transparent_crc(p_873->g_211.s0, "p_873->g_211.s0", print_hash_value);
    transparent_crc(p_873->g_211.s1, "p_873->g_211.s1", print_hash_value);
    transparent_crc(p_873->g_211.s2, "p_873->g_211.s2", print_hash_value);
    transparent_crc(p_873->g_211.s3, "p_873->g_211.s3", print_hash_value);
    transparent_crc(p_873->g_211.s4, "p_873->g_211.s4", print_hash_value);
    transparent_crc(p_873->g_211.s5, "p_873->g_211.s5", print_hash_value);
    transparent_crc(p_873->g_211.s6, "p_873->g_211.s6", print_hash_value);
    transparent_crc(p_873->g_211.s7, "p_873->g_211.s7", print_hash_value);
    transparent_crc(p_873->g_219.x, "p_873->g_219.x", print_hash_value);
    transparent_crc(p_873->g_219.y, "p_873->g_219.y", print_hash_value);
    transparent_crc(p_873->g_258, "p_873->g_258", print_hash_value);
    transparent_crc(p_873->g_297, "p_873->g_297", print_hash_value);
    transparent_crc(p_873->g_358, "p_873->g_358", print_hash_value);
    transparent_crc(p_873->g_381.s0, "p_873->g_381.s0", print_hash_value);
    transparent_crc(p_873->g_381.s1, "p_873->g_381.s1", print_hash_value);
    transparent_crc(p_873->g_381.s2, "p_873->g_381.s2", print_hash_value);
    transparent_crc(p_873->g_381.s3, "p_873->g_381.s3", print_hash_value);
    transparent_crc(p_873->g_381.s4, "p_873->g_381.s4", print_hash_value);
    transparent_crc(p_873->g_381.s5, "p_873->g_381.s5", print_hash_value);
    transparent_crc(p_873->g_381.s6, "p_873->g_381.s6", print_hash_value);
    transparent_crc(p_873->g_381.s7, "p_873->g_381.s7", print_hash_value);
    transparent_crc(p_873->g_381.s8, "p_873->g_381.s8", print_hash_value);
    transparent_crc(p_873->g_381.s9, "p_873->g_381.s9", print_hash_value);
    transparent_crc(p_873->g_381.sa, "p_873->g_381.sa", print_hash_value);
    transparent_crc(p_873->g_381.sb, "p_873->g_381.sb", print_hash_value);
    transparent_crc(p_873->g_381.sc, "p_873->g_381.sc", print_hash_value);
    transparent_crc(p_873->g_381.sd, "p_873->g_381.sd", print_hash_value);
    transparent_crc(p_873->g_381.se, "p_873->g_381.se", print_hash_value);
    transparent_crc(p_873->g_381.sf, "p_873->g_381.sf", print_hash_value);
    transparent_crc(p_873->g_386.x, "p_873->g_386.x", print_hash_value);
    transparent_crc(p_873->g_386.y, "p_873->g_386.y", print_hash_value);
    transparent_crc(p_873->g_386.z, "p_873->g_386.z", print_hash_value);
    transparent_crc(p_873->g_386.w, "p_873->g_386.w", print_hash_value);
    transparent_crc(p_873->g_394, "p_873->g_394", print_hash_value);
    transparent_crc(p_873->g_397, "p_873->g_397", print_hash_value);
    transparent_crc(p_873->g_410.x, "p_873->g_410.x", print_hash_value);
    transparent_crc(p_873->g_410.y, "p_873->g_410.y", print_hash_value);
    transparent_crc(p_873->g_410.z, "p_873->g_410.z", print_hash_value);
    transparent_crc(p_873->g_410.w, "p_873->g_410.w", print_hash_value);
    transparent_crc(p_873->g_489.s0, "p_873->g_489.s0", print_hash_value);
    transparent_crc(p_873->g_489.s1, "p_873->g_489.s1", print_hash_value);
    transparent_crc(p_873->g_489.s2, "p_873->g_489.s2", print_hash_value);
    transparent_crc(p_873->g_489.s3, "p_873->g_489.s3", print_hash_value);
    transparent_crc(p_873->g_489.s4, "p_873->g_489.s4", print_hash_value);
    transparent_crc(p_873->g_489.s5, "p_873->g_489.s5", print_hash_value);
    transparent_crc(p_873->g_489.s6, "p_873->g_489.s6", print_hash_value);
    transparent_crc(p_873->g_489.s7, "p_873->g_489.s7", print_hash_value);
    transparent_crc(p_873->g_501.s0, "p_873->g_501.s0", print_hash_value);
    transparent_crc(p_873->g_501.s1, "p_873->g_501.s1", print_hash_value);
    transparent_crc(p_873->g_501.s2, "p_873->g_501.s2", print_hash_value);
    transparent_crc(p_873->g_501.s3, "p_873->g_501.s3", print_hash_value);
    transparent_crc(p_873->g_501.s4, "p_873->g_501.s4", print_hash_value);
    transparent_crc(p_873->g_501.s5, "p_873->g_501.s5", print_hash_value);
    transparent_crc(p_873->g_501.s6, "p_873->g_501.s6", print_hash_value);
    transparent_crc(p_873->g_501.s7, "p_873->g_501.s7", print_hash_value);
    transparent_crc(p_873->g_501.s8, "p_873->g_501.s8", print_hash_value);
    transparent_crc(p_873->g_501.s9, "p_873->g_501.s9", print_hash_value);
    transparent_crc(p_873->g_501.sa, "p_873->g_501.sa", print_hash_value);
    transparent_crc(p_873->g_501.sb, "p_873->g_501.sb", print_hash_value);
    transparent_crc(p_873->g_501.sc, "p_873->g_501.sc", print_hash_value);
    transparent_crc(p_873->g_501.sd, "p_873->g_501.sd", print_hash_value);
    transparent_crc(p_873->g_501.se, "p_873->g_501.se", print_hash_value);
    transparent_crc(p_873->g_501.sf, "p_873->g_501.sf", print_hash_value);
    transparent_crc(p_873->g_503.s0, "p_873->g_503.s0", print_hash_value);
    transparent_crc(p_873->g_503.s1, "p_873->g_503.s1", print_hash_value);
    transparent_crc(p_873->g_503.s2, "p_873->g_503.s2", print_hash_value);
    transparent_crc(p_873->g_503.s3, "p_873->g_503.s3", print_hash_value);
    transparent_crc(p_873->g_503.s4, "p_873->g_503.s4", print_hash_value);
    transparent_crc(p_873->g_503.s5, "p_873->g_503.s5", print_hash_value);
    transparent_crc(p_873->g_503.s6, "p_873->g_503.s6", print_hash_value);
    transparent_crc(p_873->g_503.s7, "p_873->g_503.s7", print_hash_value);
    transparent_crc(p_873->g_504.s0, "p_873->g_504.s0", print_hash_value);
    transparent_crc(p_873->g_504.s1, "p_873->g_504.s1", print_hash_value);
    transparent_crc(p_873->g_504.s2, "p_873->g_504.s2", print_hash_value);
    transparent_crc(p_873->g_504.s3, "p_873->g_504.s3", print_hash_value);
    transparent_crc(p_873->g_504.s4, "p_873->g_504.s4", print_hash_value);
    transparent_crc(p_873->g_504.s5, "p_873->g_504.s5", print_hash_value);
    transparent_crc(p_873->g_504.s6, "p_873->g_504.s6", print_hash_value);
    transparent_crc(p_873->g_504.s7, "p_873->g_504.s7", print_hash_value);
    transparent_crc(p_873->g_504.s8, "p_873->g_504.s8", print_hash_value);
    transparent_crc(p_873->g_504.s9, "p_873->g_504.s9", print_hash_value);
    transparent_crc(p_873->g_504.sa, "p_873->g_504.sa", print_hash_value);
    transparent_crc(p_873->g_504.sb, "p_873->g_504.sb", print_hash_value);
    transparent_crc(p_873->g_504.sc, "p_873->g_504.sc", print_hash_value);
    transparent_crc(p_873->g_504.sd, "p_873->g_504.sd", print_hash_value);
    transparent_crc(p_873->g_504.se, "p_873->g_504.se", print_hash_value);
    transparent_crc(p_873->g_504.sf, "p_873->g_504.sf", print_hash_value);
    transparent_crc(p_873->g_538.s0, "p_873->g_538.s0", print_hash_value);
    transparent_crc(p_873->g_538.s1, "p_873->g_538.s1", print_hash_value);
    transparent_crc(p_873->g_538.s2, "p_873->g_538.s2", print_hash_value);
    transparent_crc(p_873->g_538.s3, "p_873->g_538.s3", print_hash_value);
    transparent_crc(p_873->g_538.s4, "p_873->g_538.s4", print_hash_value);
    transparent_crc(p_873->g_538.s5, "p_873->g_538.s5", print_hash_value);
    transparent_crc(p_873->g_538.s6, "p_873->g_538.s6", print_hash_value);
    transparent_crc(p_873->g_538.s7, "p_873->g_538.s7", print_hash_value);
    transparent_crc(p_873->g_538.s8, "p_873->g_538.s8", print_hash_value);
    transparent_crc(p_873->g_538.s9, "p_873->g_538.s9", print_hash_value);
    transparent_crc(p_873->g_538.sa, "p_873->g_538.sa", print_hash_value);
    transparent_crc(p_873->g_538.sb, "p_873->g_538.sb", print_hash_value);
    transparent_crc(p_873->g_538.sc, "p_873->g_538.sc", print_hash_value);
    transparent_crc(p_873->g_538.sd, "p_873->g_538.sd", print_hash_value);
    transparent_crc(p_873->g_538.se, "p_873->g_538.se", print_hash_value);
    transparent_crc(p_873->g_538.sf, "p_873->g_538.sf", print_hash_value);
    transparent_crc(p_873->g_554.x, "p_873->g_554.x", print_hash_value);
    transparent_crc(p_873->g_554.y, "p_873->g_554.y", print_hash_value);
    transparent_crc(p_873->g_559.s0, "p_873->g_559.s0", print_hash_value);
    transparent_crc(p_873->g_559.s1, "p_873->g_559.s1", print_hash_value);
    transparent_crc(p_873->g_559.s2, "p_873->g_559.s2", print_hash_value);
    transparent_crc(p_873->g_559.s3, "p_873->g_559.s3", print_hash_value);
    transparent_crc(p_873->g_559.s4, "p_873->g_559.s4", print_hash_value);
    transparent_crc(p_873->g_559.s5, "p_873->g_559.s5", print_hash_value);
    transparent_crc(p_873->g_559.s6, "p_873->g_559.s6", print_hash_value);
    transparent_crc(p_873->g_559.s7, "p_873->g_559.s7", print_hash_value);
    transparent_crc(p_873->g_566.x, "p_873->g_566.x", print_hash_value);
    transparent_crc(p_873->g_566.y, "p_873->g_566.y", print_hash_value);
    transparent_crc(p_873->g_566.z, "p_873->g_566.z", print_hash_value);
    transparent_crc(p_873->g_566.w, "p_873->g_566.w", print_hash_value);
    transparent_crc(p_873->g_630.s0, "p_873->g_630.s0", print_hash_value);
    transparent_crc(p_873->g_630.s1, "p_873->g_630.s1", print_hash_value);
    transparent_crc(p_873->g_630.s2, "p_873->g_630.s2", print_hash_value);
    transparent_crc(p_873->g_630.s3, "p_873->g_630.s3", print_hash_value);
    transparent_crc(p_873->g_630.s4, "p_873->g_630.s4", print_hash_value);
    transparent_crc(p_873->g_630.s5, "p_873->g_630.s5", print_hash_value);
    transparent_crc(p_873->g_630.s6, "p_873->g_630.s6", print_hash_value);
    transparent_crc(p_873->g_630.s7, "p_873->g_630.s7", print_hash_value);
    transparent_crc(p_873->g_630.s8, "p_873->g_630.s8", print_hash_value);
    transparent_crc(p_873->g_630.s9, "p_873->g_630.s9", print_hash_value);
    transparent_crc(p_873->g_630.sa, "p_873->g_630.sa", print_hash_value);
    transparent_crc(p_873->g_630.sb, "p_873->g_630.sb", print_hash_value);
    transparent_crc(p_873->g_630.sc, "p_873->g_630.sc", print_hash_value);
    transparent_crc(p_873->g_630.sd, "p_873->g_630.sd", print_hash_value);
    transparent_crc(p_873->g_630.se, "p_873->g_630.se", print_hash_value);
    transparent_crc(p_873->g_630.sf, "p_873->g_630.sf", print_hash_value);
    transparent_crc(p_873->g_664.s0, "p_873->g_664.s0", print_hash_value);
    transparent_crc(p_873->g_664.s1, "p_873->g_664.s1", print_hash_value);
    transparent_crc(p_873->g_664.s2, "p_873->g_664.s2", print_hash_value);
    transparent_crc(p_873->g_664.s3, "p_873->g_664.s3", print_hash_value);
    transparent_crc(p_873->g_664.s4, "p_873->g_664.s4", print_hash_value);
    transparent_crc(p_873->g_664.s5, "p_873->g_664.s5", print_hash_value);
    transparent_crc(p_873->g_664.s6, "p_873->g_664.s6", print_hash_value);
    transparent_crc(p_873->g_664.s7, "p_873->g_664.s7", print_hash_value);
    transparent_crc(p_873->g_665.x, "p_873->g_665.x", print_hash_value);
    transparent_crc(p_873->g_665.y, "p_873->g_665.y", print_hash_value);
    transparent_crc(p_873->g_665.z, "p_873->g_665.z", print_hash_value);
    transparent_crc(p_873->g_665.w, "p_873->g_665.w", print_hash_value);
    transparent_crc(p_873->g_668.x, "p_873->g_668.x", print_hash_value);
    transparent_crc(p_873->g_668.y, "p_873->g_668.y", print_hash_value);
    transparent_crc(p_873->g_668.z, "p_873->g_668.z", print_hash_value);
    transparent_crc(p_873->g_668.w, "p_873->g_668.w", print_hash_value);
    transparent_crc(p_873->g_743.x, "p_873->g_743.x", print_hash_value);
    transparent_crc(p_873->g_743.y, "p_873->g_743.y", print_hash_value);
    transparent_crc(p_873->g_743.z, "p_873->g_743.z", print_hash_value);
    transparent_crc(p_873->g_743.w, "p_873->g_743.w", print_hash_value);
    transparent_crc(p_873->g_786, "p_873->g_786", print_hash_value);
    transparent_crc(p_873->g_812, "p_873->g_812", print_hash_value);
    transparent_crc(p_873->g_838.x, "p_873->g_838.x", print_hash_value);
    transparent_crc(p_873->g_838.y, "p_873->g_838.y", print_hash_value);
    transparent_crc(p_873->g_842.x, "p_873->g_842.x", print_hash_value);
    transparent_crc(p_873->g_842.y, "p_873->g_842.y", print_hash_value);
    transparent_crc(p_873->g_842.z, "p_873->g_842.z", print_hash_value);
    transparent_crc(p_873->g_842.w, "p_873->g_842.w", print_hash_value);
    transparent_crc(p_873->g_850.x, "p_873->g_850.x", print_hash_value);
    transparent_crc(p_873->g_850.y, "p_873->g_850.y", print_hash_value);
    transparent_crc(p_873->g_850.z, "p_873->g_850.z", print_hash_value);
    transparent_crc(p_873->g_850.w, "p_873->g_850.w", print_hash_value);
    transparent_crc(p_873->g_851.s0, "p_873->g_851.s0", print_hash_value);
    transparent_crc(p_873->g_851.s1, "p_873->g_851.s1", print_hash_value);
    transparent_crc(p_873->g_851.s2, "p_873->g_851.s2", print_hash_value);
    transparent_crc(p_873->g_851.s3, "p_873->g_851.s3", print_hash_value);
    transparent_crc(p_873->g_851.s4, "p_873->g_851.s4", print_hash_value);
    transparent_crc(p_873->g_851.s5, "p_873->g_851.s5", print_hash_value);
    transparent_crc(p_873->g_851.s6, "p_873->g_851.s6", print_hash_value);
    transparent_crc(p_873->g_851.s7, "p_873->g_851.s7", print_hash_value);
    transparent_crc(p_873->g_851.s8, "p_873->g_851.s8", print_hash_value);
    transparent_crc(p_873->g_851.s9, "p_873->g_851.s9", print_hash_value);
    transparent_crc(p_873->g_851.sa, "p_873->g_851.sa", print_hash_value);
    transparent_crc(p_873->g_851.sb, "p_873->g_851.sb", print_hash_value);
    transparent_crc(p_873->g_851.sc, "p_873->g_851.sc", print_hash_value);
    transparent_crc(p_873->g_851.sd, "p_873->g_851.sd", print_hash_value);
    transparent_crc(p_873->g_851.se, "p_873->g_851.se", print_hash_value);
    transparent_crc(p_873->g_851.sf, "p_873->g_851.sf", print_hash_value);
    transparent_crc(p_873->g_852.s0, "p_873->g_852.s0", print_hash_value);
    transparent_crc(p_873->g_852.s1, "p_873->g_852.s1", print_hash_value);
    transparent_crc(p_873->g_852.s2, "p_873->g_852.s2", print_hash_value);
    transparent_crc(p_873->g_852.s3, "p_873->g_852.s3", print_hash_value);
    transparent_crc(p_873->g_852.s4, "p_873->g_852.s4", print_hash_value);
    transparent_crc(p_873->g_852.s5, "p_873->g_852.s5", print_hash_value);
    transparent_crc(p_873->g_852.s6, "p_873->g_852.s6", print_hash_value);
    transparent_crc(p_873->g_852.s7, "p_873->g_852.s7", print_hash_value);
    transparent_crc(p_873->g_852.s8, "p_873->g_852.s8", print_hash_value);
    transparent_crc(p_873->g_852.s9, "p_873->g_852.s9", print_hash_value);
    transparent_crc(p_873->g_852.sa, "p_873->g_852.sa", print_hash_value);
    transparent_crc(p_873->g_852.sb, "p_873->g_852.sb", print_hash_value);
    transparent_crc(p_873->g_852.sc, "p_873->g_852.sc", print_hash_value);
    transparent_crc(p_873->g_852.sd, "p_873->g_852.sd", print_hash_value);
    transparent_crc(p_873->g_852.se, "p_873->g_852.se", print_hash_value);
    transparent_crc(p_873->g_852.sf, "p_873->g_852.sf", print_hash_value);
    transparent_crc(p_873->g_861, "p_873->g_861", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
