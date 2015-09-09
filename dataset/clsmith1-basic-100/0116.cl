// ---fake_divergence -g 13,63,5 -l 13,7,1
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


// Seed: 116

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

union U1 {
   int32_t  f0;
   int8_t  f1;
   volatile int8_t * f2;
};

union U2 {
   int8_t * f0;
   int32_t  f1;
   int8_t * f2;
   uint32_t  f3;
   int16_t  f4;
};

struct S3 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    int32_t g_4[9];
    int32_t g_8;
    union U2 g_20;
    int8_t g_32;
    int8_t *g_31;
    uint64_t g_33[5][3][2];
    int32_t *g_49;
    int32_t ** volatile g_48;
    int32_t g_53;
    int32_t g_55;
    int32_t *g_84;
    int32_t **g_83;
    int16_t g_114;
    int16_t g_117;
    uint16_t g_131;
    uint64_t g_132;
    uint32_t g_134;
    int16_t g_135[7];
    int8_t g_136;
    uint8_t g_171;
    int64_t g_175[6];
    uint32_t g_176;
    uint8_t g_183[1];
    int8_t g_186;
    uint8_t g_190[7];
    int8_t g_194;
    union U0 g_195;
    union U1 g_196[4];
    int64_t g_226[7][6];
    int32_t g_271;
    int8_t g_311;
    int64_t g_312;
    volatile uint32_t g_313;
    uint64_t *g_349;
    volatile int8_t g_354;
    int64_t g_363[5];
    volatile int8_t g_417[1][1];
    int8_t g_419;
    uint16_t g_420;
    int64_t * volatile g_426[3][5];
    union U0 *g_437[6][3][10];
    union U0 ** volatile g_436;
    union U1 *g_503;
    union U1 * volatile * volatile g_502;
    uint8_t g_528[8][5][6];
    int32_t * volatile g_595;
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
int32_t  func_1(struct S3 * p_608);
union U0  func_14(union U2  p_15, uint8_t  p_16, int64_t  p_17, uint64_t  p_18, int32_t  p_19, struct S3 * p_608);
uint8_t  func_21(uint64_t  p_22, union U2  p_23, int32_t  p_24, int64_t  p_25, int16_t  p_26, struct S3 * p_608);
int64_t  func_29(int8_t * p_30, struct S3 * p_608);
uint8_t  func_43(int32_t * p_44, struct S3 * p_608);
int32_t * func_45(int8_t * p_46, struct S3 * p_608);
int8_t  func_56(int32_t ** p_57, int8_t * p_58, union U0  p_59, union U1  p_60, struct S3 * p_608);
union U0  func_63(uint64_t  p_64, struct S3 * p_608);
int32_t  func_65(int8_t  p_66, int32_t ** p_67, int64_t  p_68, int32_t ** p_69, int8_t * p_70, struct S3 * p_608);
int32_t ** func_72(int8_t * p_73, int32_t ** p_74, uint32_t  p_75, int32_t * p_76, uint64_t  p_77, struct S3 * p_608);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_608->g_4 p_608->g_3 p_608->g_20 p_608->g_31 p_608->g_32 p_608->g_134 p_608->g_83 p_608->g_363 p_608->g_48 p_608->g_49 p_608->g_420 p_608->g_186 p_608->g_131 p_608->g_53 p_608->g_171 p_608->g_528 p_608->g_595 p_608->g_175 p_608->g_226 p_608->g_194 p_608->g_417 p_608->g_271 p_608->g_502 p_608->g_503 p_608->g_196 p_608->g_312
 * writes: p_608->g_4 p_608->g_32 p_608->g_134 p_608->g_83 p_608->g_84 p_608->g_53
 */
int32_t  func_1(struct S3 * p_608)
{ /* block id: 4 */
    uint32_t l_11[3];
    uint16_t *l_592 = &p_608->g_131;
    union U0 l_593 = {1UL};
    union U2 l_594[9] = {{0},{0},{0},{0},{0},{0},{0},{0},{0}};
    int32_t *l_598 = &p_608->g_271;
    int32_t ***l_601 = &p_608->g_83;
    uint8_t *l_606 = (void*)0;
    int8_t l_607 = 0x52L;
    int i;
    for (i = 0; i < 3; i++)
        l_11[i] = 0UL;
    for (p_608->g_4[0] = 28; (p_608->g_4[0] >= 29); p_608->g_4[0]++)
    { /* block id: 7 */
        int32_t *l_7 = &p_608->g_8;
        int32_t *l_9 = &p_608->g_8;
        int32_t *l_10[2];
        int i;
        for (i = 0; i < 2; i++)
            l_10[i] = &p_608->g_8;
        l_11[1]--;
        l_598 = ((p_608->g_3 , func_14(p_608->g_20, func_21((safe_mod_func_uint16_t_u_u((0xE197E7C14AB653B1L > ((func_29(p_608->g_31, p_608) & (p_608->g_131 < (safe_rshift_func_uint16_t_u_u((l_592 == (l_593 , &p_608->g_420)), p_608->g_53)))) > l_11[1])), 4L)), l_594[7], (*p_608->g_49), p_608->g_171, p_608->g_528[4][2][4], p_608), p_608->g_175[4], p_608->g_226[3][2], p_608->g_194, p_608)) , (void*)0);
        return p_608->g_417[0][0];
    }
    (**l_601) = func_45((((safe_mod_func_int16_t_s_s(((*l_598) | (l_601 != (void*)0)), ((((safe_div_func_int32_t_s_s(((*l_598) , ((*l_598) ^ ((*l_598) != (safe_mod_func_int64_t_s_s(((((**p_608->g_502) , l_606) == &p_608->g_190[1]) | 4294967295UL), (*l_598)))))), 4294967289UL)) & FAKE_DIVERGE(p_608->local_2_offset, get_local_id(2), 10)) == l_607) ^ p_608->g_363[3]))) , 0x16357C6F3322481FL) , &p_608->g_311), p_608);
    return p_608->g_312;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
union U0  func_14(union U2  p_15, uint8_t  p_16, int64_t  p_17, uint64_t  p_18, int32_t  p_19, struct S3 * p_608)
{ /* block id: 343 */
    int32_t *l_596[7];
    union U0 l_597[7] = {{0x4E56962FL},{0x4E56962FL},{0x4E56962FL},{0x4E56962FL},{0x4E56962FL},{0x4E56962FL},{0x4E56962FL}};
    int i;
    for (i = 0; i < 7; i++)
        l_596[i] = (void*)0;
    l_596[5] = func_45(&p_608->g_311, p_608);
    return l_597[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_608->g_48 p_608->g_49 p_608->g_4 p_608->g_595
 * writes: p_608->g_53
 */
uint8_t  func_21(uint64_t  p_22, union U2  p_23, int32_t  p_24, int64_t  p_25, int16_t  p_26, struct S3 * p_608)
{ /* block id: 340 */
    (*p_608->g_595) = (**p_608->g_48);
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads : p_608->g_32 p_608->g_134 p_608->g_83 p_608->g_363 p_608->g_48 p_608->g_49 p_608->g_420 p_608->g_186
 * writes: p_608->g_32 p_608->g_134 p_608->g_83 p_608->g_84
 */
int64_t  func_29(int8_t * p_30, struct S3 * p_608)
{ /* block id: 9 */
    int32_t *l_62 = &p_608->g_4[8];
    int32_t **l_61 = &l_62;
    int8_t l_229 = (-8L);
    uint16_t l_254 = 1UL;
    uint8_t l_256 = 0UL;
    uint16_t l_278 = 0xFC81L;
    int32_t l_305 = 3L;
    int32_t l_308[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
    uint64_t *l_350 = (void*)0;
    uint16_t l_361 = 0xBAE5L;
    union U1 l_403 = {0x7B15D3C8L};
    int16_t *l_425 = &p_608->g_135[5];
    union U0 l_435 = {4294967287UL};
    union U2 l_567[3][6][5] = {{{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}}}};
    uint32_t l_585 = 0x27E426FDL;
    int16_t l_589 = 0x315EL;
    int i, j, k;
    for (p_608->g_32 = 1; (p_608->g_32 >= 0); p_608->g_32 -= 1)
    { /* block id: 12 */
        uint32_t l_34 = 4294967295UL;
        int32_t l_227 = (-1L);
        int32_t l_231 = 1L;
        uint16_t l_284 = 0xEA07L;
        int64_t *l_296 = (void*)0;
        int32_t l_303[9] = {0x43BC1766L,0x43BC1766L,0x43BC1766L,0x43BC1766L,0x43BC1766L,0x43BC1766L,0x43BC1766L,0x43BC1766L,0x43BC1766L};
        uint8_t *l_339[8][1][1];
        uint32_t l_364 = 0x083AC8DAL;
        uint64_t **l_429 = &l_350;
        int i, j, k;
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 1; k++)
                    l_339[i][j][k] = &p_608->g_171;
            }
        }
        (1 + 1);
    }
    (*l_61) = func_45(&p_608->g_136, p_608);
    for (p_608->g_134 = 0; (p_608->g_134 <= 3); p_608->g_134 += 1)
    { /* block id: 334 */
        uint64_t l_581 = 0x92E91C4905720556L;
        int8_t *l_582[7];
        int32_t ***l_586 = &l_61;
        uint64_t l_587 = 0x30F9EFD261E3F99CL;
        union U2 *l_588 = &l_567[2][1][2];
        int i;
        for (i = 0; i < 7; i++)
            l_582[i] = &p_608->g_136;
        l_588 = ((safe_mod_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((&p_608->g_49 == ((safe_rshift_func_int8_t_s_s(l_581, 6)) , func_72(l_582[2], func_72(p_30, func_72(&p_608->g_32, (p_608->g_83 = ((*l_586) = func_72(&p_608->g_136, &l_62, (safe_lshift_func_int8_t_s_s((*p_30), 6)), func_45(&p_608->g_311, p_608), l_585, p_608))), l_581, &l_308[4], p_608->g_363[0], p_608), l_587, (*p_608->g_48), p_608->g_420, p_608), l_587, &p_608->g_8, p_608->g_186, p_608))), 1)), l_585)) , (void*)0);
    }
    return l_589;
}


/* ------------------------------------------ */
/* 
 * reads : p_608->g_48 p_608->g_8 p_608->g_4 p_608->g_53
 * writes: p_608->g_49 p_608->g_8 p_608->g_53
 */
uint8_t  func_43(int32_t * p_44, struct S3 * p_608)
{ /* block id: 16 */
    int16_t l_54[6][4] = {{(-6L),0x08EDL,0x68BDL,0x08EDL},{(-6L),0x08EDL,0x68BDL,0x08EDL},{(-6L),0x08EDL,0x68BDL,0x08EDL},{(-6L),0x08EDL,0x68BDL,0x08EDL},{(-6L),0x08EDL,0x68BDL,0x08EDL},{(-6L),0x08EDL,0x68BDL,0x08EDL}};
    int i, j;
    (*p_608->g_48) = func_45(&p_608->g_32, p_608);
    for (p_608->g_8 = (-10); (p_608->g_8 > 29); p_608->g_8 = safe_add_func_uint8_t_u_u(p_608->g_8, 1))
    { /* block id: 22 */
        int32_t l_52[6] = {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)};
        int i;
        l_52[0] = (*p_44);
        for (p_608->g_53 = 1; (p_608->g_53 >= 0); p_608->g_53 -= 1)
        { /* block id: 26 */
            return p_608->g_8;
        }
        if (l_54[4][2])
            break;
    }
    return l_54[4][2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_45(int8_t * p_46, struct S3 * p_608)
{ /* block id: 17 */
    int32_t *l_47[2];
    int i;
    for (i = 0; i < 2; i++)
        l_47[i] = (void*)0;
    return l_47[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_608->g_32
 * writes:
 */
int8_t  func_56(int32_t ** p_57, int8_t * p_58, union U0  p_59, union U1  p_60, struct S3 * p_608)
{ /* block id: 105 */
    int32_t l_199 = 9L;
    for (p_59.f0 = (-6); (p_59.f0 < 16); p_59.f0 = safe_add_func_int8_t_s_s(p_59.f0, 7))
    { /* block id: 108 */
        (*p_57) = func_45(&p_608->g_194, p_608);
        return (*p_58);
    }
    return l_199;
}


/* ------------------------------------------ */
/* 
 * reads : p_608->g_33 p_608->g_83 p_608->g_32 p_608->g_4 p_608->g_131 p_608->g_132 p_608->g_136 p_608->g_134 p_608->g_84 p_608->g_114 p_608->g_171 p_608->g_176 p_608->g_183 p_608->g_190 p_608->g_195
 * writes: p_608->g_114 p_608->g_117 p_608->g_131 p_608->g_132 p_608->g_134 p_608->g_135 p_608->g_136 p_608->g_33 p_608->g_171 p_608->g_176 p_608->g_183 p_608->g_190 p_608->g_194
 */
union U0  func_63(uint64_t  p_64, struct S3 * p_608)
{ /* block id: 33 */
    uint8_t l_71 = 246UL;
    int32_t *l_79 = &p_608->g_4[8];
    int32_t **l_78 = &l_79;
    int8_t *l_80 = &p_608->g_32;
    int64_t l_85 = 5L;
    int32_t l_193 = 0x658B699BL;
    p_608->g_194 = (l_193 = func_65((l_71 = 0x62L), func_72(&p_608->g_32, l_78, ((0x7882D778L ^ p_64) >= 0x759721CB4F50F898L), func_45(l_80, p_608), p_608->g_33[3][2][0], p_608), l_85, l_78, l_80, p_608));
    return p_608->g_195;
}


/* ------------------------------------------ */
/* 
 * reads : p_608->g_32 p_608->g_4 p_608->g_33 p_608->g_131 p_608->g_132 p_608->g_136 p_608->g_134 p_608->g_84 p_608->g_114 p_608->g_171 p_608->g_176 p_608->g_183 p_608->g_190
 * writes: p_608->g_114 p_608->g_117 p_608->g_131 p_608->g_132 p_608->g_134 p_608->g_135 p_608->g_136 p_608->g_33 p_608->g_171 p_608->g_176 p_608->g_183 p_608->g_190
 */
int32_t  func_65(int8_t  p_66, int32_t ** p_67, int64_t  p_68, int32_t ** p_69, int8_t * p_70, struct S3 * p_608)
{ /* block id: 38 */
    int32_t *l_86 = &p_608->g_4[4];
    int8_t *l_87 = (void*)0;
    uint32_t l_88 = 0xD5AA0404L;
    int8_t l_91[5] = {(-3L),(-3L),(-3L),(-3L),(-3L)};
    union U1 l_92 = {-1L};
    int32_t l_93 = 1L;
    int16_t *l_115 = (void*)0;
    int16_t *l_116 = &p_608->g_117;
    uint16_t *l_129 = (void*)0;
    uint16_t *l_130 = &p_608->g_131;
    int i;
    (*p_69) = l_86;
    l_93 ^= ((((((l_87 != &p_66) != l_88) ^ (l_91[3] = (p_66 | (safe_lshift_func_uint16_t_u_s(((*p_70) || 0xD2L), (p_608->g_32 < 0x66EEL)))))) | (+(GROUP_DIVERGE(2, 1) <= (((((0x377BC7A9L || (*l_86)) | 0xC1L) , l_92) , (-1L)) <= (**p_69))))) || p_68) && (*p_70));
    if ((((((p_608->g_132 |= (safe_mod_func_int8_t_s_s(((!(safe_lshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_608->local_0_offset, get_local_id(0), 10), (safe_add_func_uint8_t_u_u((((*l_130) ^= ((p_608->g_33[1][2][1] ^ ((*p_70) >= (((((p_608->g_4[4] != ((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u((safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((*l_86), ((l_92 , (safe_rshift_func_int8_t_s_s((((*l_116) = (p_608->g_114 = (*l_86))) | ((safe_unary_minus_func_int32_t_s(((safe_sub_func_int64_t_s_s((p_66 , ((safe_mul_func_uint16_t_u_u((*l_86), (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s(((*l_86) & (*p_70)), 7)), (*l_86))), 6)))) , 1L)), (*l_86))) ^ (**p_69)))) && (*l_86))), (*l_86)))) || 0x01L))), p_608->g_4[6])), 0)) >= (*l_86)), (*l_86))) >= 0x9845791CL)) & p_66) | p_608->g_32) == GROUP_DIVERGE(1, 1)) ^ (*l_86)))) > (*l_86))) ^ 1UL), p_608->g_4[8])))), 2))) != 0x6B03130811D2751BL), p_66))) != (*l_86)) , p_68) , (-6L)) , (*l_86)))
    { /* block id: 46 */
        int32_t *l_133[9][7] = {{&l_93,&l_93,&p_608->g_4[0],&l_93,&l_93,&l_93,&p_608->g_4[0]},{&l_93,&l_93,&p_608->g_4[0],&l_93,&l_93,&l_93,&p_608->g_4[0]},{&l_93,&l_93,&p_608->g_4[0],&l_93,&l_93,&l_93,&p_608->g_4[0]},{&l_93,&l_93,&p_608->g_4[0],&l_93,&l_93,&l_93,&p_608->g_4[0]},{&l_93,&l_93,&p_608->g_4[0],&l_93,&l_93,&l_93,&p_608->g_4[0]},{&l_93,&l_93,&p_608->g_4[0],&l_93,&l_93,&l_93,&p_608->g_4[0]},{&l_93,&l_93,&p_608->g_4[0],&l_93,&l_93,&l_93,&p_608->g_4[0]},{&l_93,&l_93,&p_608->g_4[0],&l_93,&l_93,&l_93,&p_608->g_4[0]},{&l_93,&l_93,&p_608->g_4[0],&l_93,&l_93,&l_93,&p_608->g_4[0]}};
        int i, j;
        p_608->g_136 = (p_608->g_135[5] = (p_608->g_134 = (0x2C64L <= (*l_86))));
    }
    else
    { /* block id: 50 */
        uint64_t *l_152 = &p_608->g_33[4][1][0];
        int32_t l_153 = 0x4C697D3CL;
        int8_t *l_154 = &l_91[3];
        int32_t *l_155[9][7][4] = {{{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0}},{{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0}},{{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0}},{{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0}},{{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0}},{{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0}},{{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0}},{{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0}},{{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0},{&l_93,&l_93,(void*)0,(void*)0}}};
        int16_t *l_165[8][6][3] = {{{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]}},{{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]}},{{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]}},{{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]}},{{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]}},{{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]}},{{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]}},{{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]},{&p_608->g_117,(void*)0,&p_608->g_135[5]}}};
        int16_t l_184 = 1L;
        int i, j, k;
        l_93 = ((p_608->g_4[8] >= (safe_sub_func_int64_t_s_s((safe_div_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((*p_70), 6)), (((*l_154) ^= (((((((*l_116) = (safe_mod_func_int32_t_s_s((safe_unary_minus_func_uint32_t_u((safe_mul_func_int8_t_s_s(((FAKE_DIVERGE(p_608->group_2_offset, get_group_id(2), 10) || (safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), p_608->g_136)), (p_608->g_4[0] && ((l_92 , p_608->g_134) == (l_130 != l_115)))))) <= (((*l_152) = p_608->g_132) >= 3L)), l_153)))), p_608->g_4[0]))) && 0x94B0L) , FAKE_DIVERGE(p_608->global_1_offset, get_global_id(1), 10)) < (*p_608->g_84)) || p_608->g_132) | 0x0364B399L)) ^ 0x24L))), p_68))) , (**p_69));
        for (p_68 = 27; (p_68 <= 27); p_68++)
        { /* block id: 57 */
            uint32_t l_158 = 0x22102788L;
            uint8_t *l_170 = &p_608->g_171;
            int32_t l_187 = 8L;
            l_158 = 9L;
            l_93 &= (safe_rshift_func_int8_t_s_u((safe_add_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u(((((&p_608->g_114 == l_165[0][4][1]) , ((((*l_170) = (safe_mod_func_int16_t_s_s(p_68, GROUP_DIVERGE(1, 1)))) || l_158) | ((safe_rshift_func_int8_t_s_s((l_158 == p_66), (((&p_608->g_33[2][1][0] != &p_608->g_33[4][0][0]) && (0x5DL >= p_608->g_136)) ^ 0L))) == 0x3F5253A83723A680L))) <= p_68) != 250UL), p_68)), (-1L))), p_66));
            if ((*l_86))
                break;
            for (l_88 = 0; (l_88 <= 3); l_88 += 1)
            { /* block id: 64 */
                int32_t l_188[9][8][2] = {{{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L}},{{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L}},{{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L}},{{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L}},{{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L}},{{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L}},{{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L}},{{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L}},{{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L},{0x4C30774EL,0L}}};
                int i, j, k;
                for (p_608->g_114 = 1; (p_608->g_114 >= 0); p_608->g_114 -= 1)
                { /* block id: 67 */
                    int32_t l_174[1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_174[i] = 2L;
                    for (p_608->g_171 = 0; (p_608->g_171 <= 3); p_608->g_171 += 1)
                    { /* block id: 70 */
                        int i, j, k;
                        return p_608->g_33[(p_608->g_171 + 1)][p_608->g_114][p_608->g_114];
                    }
                    ++p_608->g_176;
                    p_608->g_183[0] ^= (safe_mod_func_uint32_t_u_u((((void*)0 != &p_608->g_33[p_608->g_114][p_608->g_114][p_608->g_114]) && p_608->g_32), ((safe_lshift_func_uint8_t_u_s(p_66, 3)) | p_68)));
                    for (p_608->g_171 = 0; (p_608->g_171 <= 3); p_608->g_171 += 1)
                    { /* block id: 77 */
                        int32_t l_185 = 0x01792AF5L;
                        int32_t l_189 = (-10L);
                        int i, j, k;
                        l_184 = (**p_69);
                        p_608->g_190[1]++;
                        return (*p_608->g_84);
                    }
                }
                for (p_608->g_114 = 3; (p_608->g_114 >= 0); p_608->g_114 -= 1)
                { /* block id: 85 */
                    return (*l_86);
                }
                for (p_608->g_134 = 0; (p_608->g_134 <= 3); p_608->g_134 += 1)
                { /* block id: 90 */
                    int i, j, k;
                    for (l_153 = 3; (l_153 >= 0); l_153 -= 1)
                    { /* block id: 93 */
                        return l_158;
                    }
                    l_155[(p_608->g_134 + 3)][p_608->g_134][p_608->g_134] = func_45(&p_608->g_136, p_608);
                }
            }
        }
    }
    return (**p_67);
}


/* ------------------------------------------ */
/* 
 * reads : p_608->g_83
 * writes: p_608->g_84
 */
int32_t ** func_72(int8_t * p_73, int32_t ** p_74, uint32_t  p_75, int32_t * p_76, uint64_t  p_77, struct S3 * p_608)
{ /* block id: 35 */
    int32_t *l_82[2];
    int32_t **l_81[3];
    int i;
    for (i = 0; i < 2; i++)
        l_82[i] = &p_608->g_4[0];
    for (i = 0; i < 3; i++)
        l_81[i] = &l_82[0];
    (*p_74) = func_45(&p_608->g_32, p_608);
    return p_608->g_83;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_609;
    struct S3* p_608 = &c_609;
    struct S3 c_610 = {
        0x5534BF8FL, // p_608->g_2
        1L, // p_608->g_3
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_608->g_4
        0x320E32CFL, // p_608->g_8
        {0}, // p_608->g_20
        0x08L, // p_608->g_32
        &p_608->g_32, // p_608->g_31
        {{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}},{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}},{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}},{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}},{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}}}, // p_608->g_33
        &p_608->g_4[0], // p_608->g_49
        &p_608->g_49, // p_608->g_48
        0x2489AFFFL, // p_608->g_53
        9L, // p_608->g_55
        &p_608->g_4[0], // p_608->g_84
        &p_608->g_84, // p_608->g_83
        1L, // p_608->g_114
        2L, // p_608->g_117
        0x46B9L, // p_608->g_131
        0xD69833782E33F915L, // p_608->g_132
        0x9F139C94L, // p_608->g_134
        {(-1L),0x6BEAL,(-1L),(-1L),0x6BEAL,(-1L),(-1L)}, // p_608->g_135
        1L, // p_608->g_136
        9UL, // p_608->g_171
        {0L,0L,0L,0L,0L,0L}, // p_608->g_175
        0UL, // p_608->g_176
        {0xFCL}, // p_608->g_183
        (-1L), // p_608->g_186
        {255UL,255UL,255UL,255UL,255UL,255UL,255UL}, // p_608->g_190
        0x31L, // p_608->g_194
        {0xF4821EC3L}, // p_608->g_195
        {{9L},{9L},{9L},{9L}}, // p_608->g_196
        {{0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L,0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L},{0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L,0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L},{0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L,0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L},{0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L,0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L},{0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L,0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L},{0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L,0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L},{0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L,0x2224D5146EA9A466L,0x7551003BBAB025D6L,0x2224D5146EA9A466L}}, // p_608->g_226
        (-6L), // p_608->g_271
        5L, // p_608->g_311
        0x2C3C9639DA54A31DL, // p_608->g_312
        0UL, // p_608->g_313
        (void*)0, // p_608->g_349
        1L, // p_608->g_354
        {0L,0L,0L,0L,0L}, // p_608->g_363
        {{0x42L}}, // p_608->g_417
        1L, // p_608->g_419
        0x5825L, // p_608->g_420
        {{&p_608->g_363[0],(void*)0,&p_608->g_363[1],(void*)0,&p_608->g_363[0]},{&p_608->g_363[0],(void*)0,&p_608->g_363[1],(void*)0,&p_608->g_363[0]},{&p_608->g_363[0],(void*)0,&p_608->g_363[1],(void*)0,&p_608->g_363[0]}}, // p_608->g_426
        {{{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0}},{{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0}},{{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0}},{{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0}},{{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0}},{{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0},{&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,(void*)0,&p_608->g_195,&p_608->g_195,&p_608->g_195,(void*)0}}}, // p_608->g_437
        &p_608->g_437[4][2][5], // p_608->g_436
        &p_608->g_196[2], // p_608->g_503
        &p_608->g_503, // p_608->g_502
        {{{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL}},{{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL}},{{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL}},{{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL}},{{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL}},{{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL}},{{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL}},{{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL},{0x92L,247UL,0x68L,0UL,0x58L,1UL}}}, // p_608->g_528
        &p_608->g_53, // p_608->g_595
        sequence_input[get_global_id(0)], // p_608->global_0_offset
        sequence_input[get_global_id(1)], // p_608->global_1_offset
        sequence_input[get_global_id(2)], // p_608->global_2_offset
        sequence_input[get_local_id(0)], // p_608->local_0_offset
        sequence_input[get_local_id(1)], // p_608->local_1_offset
        sequence_input[get_local_id(2)], // p_608->local_2_offset
        sequence_input[get_group_id(0)], // p_608->group_0_offset
        sequence_input[get_group_id(1)], // p_608->group_1_offset
        sequence_input[get_group_id(2)], // p_608->group_2_offset
    };
    c_609 = c_610;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_608);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_608->g_2, "p_608->g_2", print_hash_value);
    transparent_crc(p_608->g_3, "p_608->g_3", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_608->g_4[i], "p_608->g_4[i]", print_hash_value);

    }
    transparent_crc(p_608->g_8, "p_608->g_8", print_hash_value);
    transparent_crc(p_608->g_32, "p_608->g_32", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_608->g_33[i][j][k], "p_608->g_33[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_608->g_53, "p_608->g_53", print_hash_value);
    transparent_crc(p_608->g_55, "p_608->g_55", print_hash_value);
    transparent_crc(p_608->g_114, "p_608->g_114", print_hash_value);
    transparent_crc(p_608->g_117, "p_608->g_117", print_hash_value);
    transparent_crc(p_608->g_131, "p_608->g_131", print_hash_value);
    transparent_crc(p_608->g_132, "p_608->g_132", print_hash_value);
    transparent_crc(p_608->g_134, "p_608->g_134", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_608->g_135[i], "p_608->g_135[i]", print_hash_value);

    }
    transparent_crc(p_608->g_136, "p_608->g_136", print_hash_value);
    transparent_crc(p_608->g_171, "p_608->g_171", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_608->g_175[i], "p_608->g_175[i]", print_hash_value);

    }
    transparent_crc(p_608->g_176, "p_608->g_176", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_608->g_183[i], "p_608->g_183[i]", print_hash_value);

    }
    transparent_crc(p_608->g_186, "p_608->g_186", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_608->g_190[i], "p_608->g_190[i]", print_hash_value);

    }
    transparent_crc(p_608->g_194, "p_608->g_194", print_hash_value);
    transparent_crc(p_608->g_195.f0, "p_608->g_195.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_608->g_196[i].f0, "p_608->g_196[i].f0", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_608->g_226[i][j], "p_608->g_226[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_608->g_271, "p_608->g_271", print_hash_value);
    transparent_crc(p_608->g_311, "p_608->g_311", print_hash_value);
    transparent_crc(p_608->g_312, "p_608->g_312", print_hash_value);
    transparent_crc(p_608->g_313, "p_608->g_313", print_hash_value);
    transparent_crc(p_608->g_354, "p_608->g_354", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_608->g_363[i], "p_608->g_363[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_608->g_417[i][j], "p_608->g_417[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_608->g_419, "p_608->g_419", print_hash_value);
    transparent_crc(p_608->g_420, "p_608->g_420", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_608->g_528[i][j][k], "p_608->g_528[i][j][k]", print_hash_value);

            }
        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
