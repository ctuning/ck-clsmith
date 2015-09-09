// ---fake_divergence -g 64,22,2 -l 2,22,2
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


// Seed: 42

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int32_t g_11;
    int32_t g_16;
    uint8_t g_17[3];
    uint32_t g_49;
    int32_t g_83;
    int32_t *g_82;
    uint64_t g_95;
    uint64_t g_96[9][10][2];
    int64_t g_98;
    int8_t g_100;
    int32_t g_106;
    volatile int32_t g_107;
    volatile int64_t g_108;
    volatile uint16_t g_109[10][10];
    int16_t g_122;
    uint16_t g_124[10];
    int32_t * volatile g_126[2];
    int32_t * volatile g_127;
    int32_t * volatile g_128;
    uint32_t g_134;
    int8_t g_185;
    uint64_t g_229[5];
    int32_t ** volatile g_231;
    int64_t g_246;
    int16_t g_288;
    volatile int8_t * volatile *g_292;
    uint64_t *g_307;
    uint64_t * volatile * volatile g_306[9];
    uint32_t g_313;
    uint8_t *g_336[10];
    int32_t *g_403[2];
    int32_t ** volatile g_402;
    volatile uint8_t g_410[2];
    int32_t ** volatile g_501;
    int32_t * volatile g_543;
    uint8_t g_549;
    int32_t ** volatile g_637[1][1][2];
    int32_t ** volatile g_640;
    int32_t ***g_651;
    int8_t g_655;
    int32_t ** volatile g_704;
    uint32_t g_709;
    volatile int16_t g_750[1][6][1];
    volatile int16_t * volatile g_749;
    volatile int16_t * volatile * volatile g_748;
    volatile int16_t * volatile * volatile * volatile g_747[5];
    uint32_t *g_768;
    volatile uint64_t g_797;
    volatile uint64_t *g_796[10];
    volatile uint64_t **g_795;
    volatile uint64_t ** volatile * volatile g_794;
    volatile uint64_t ** volatile * volatile *g_793;
    int8_t *g_821;
    int8_t **g_820;
    volatile int16_t * volatile *g_842;
    volatile int16_t * volatile **g_841;
    volatile int8_t g_853;
    int32_t * volatile g_892;
    int32_t * volatile *g_891;
    int32_t ** volatile g_895;
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
uint8_t  func_1(struct S0 * p_898);
int32_t * func_21(uint32_t  p_22, uint32_t  p_23, struct S0 * p_898);
int32_t  func_26(uint64_t  p_27, uint64_t  p_28, int32_t  p_29, int8_t  p_30, struct S0 * p_898);
int16_t  func_34(uint64_t  p_35, struct S0 * p_898);
int32_t  func_38(uint8_t  p_39, int64_t  p_40, int64_t  p_41, int64_t  p_42, struct S0 * p_898);
int64_t  func_43(int32_t * p_44, struct S0 * p_898);
int32_t * func_45(uint32_t  p_46, int32_t  p_47, struct S0 * p_898);
uint64_t  func_56(int32_t  p_57, int64_t  p_58, struct S0 * p_898);
uint32_t  func_61(int32_t * p_62, uint16_t  p_63, int32_t * p_64, struct S0 * p_898);
int8_t  func_76(uint64_t  p_77, struct S0 * p_898);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_898->g_2 p_898->g_17 p_898->g_655 p_898->g_410 p_898->g_821 p_898->g_853 p_898->g_549 p_898->g_543 p_898->g_83 p_898->g_82 p_898->g_313 p_898->g_307 p_898->g_229 p_898->g_108 p_898->g_122 p_898->g_288 p_898->g_891 p_898->g_820 p_898->g_124 p_898->g_895 p_898->g_231 p_898->g_402
 * writes: p_898->g_2 p_898->g_17 p_898->g_11 p_898->g_83 p_898->g_313 p_898->g_229 p_898->g_288 p_898->g_403
 */
uint8_t  func_1(struct S0 * p_898)
{ /* block id: 4 */
    uint64_t l_20 = 1UL;
    int32_t **l_896[9] = {&p_898->g_82,&p_898->g_82,&p_898->g_82,&p_898->g_82,&p_898->g_82,&p_898->g_82,&p_898->g_82,&p_898->g_82,&p_898->g_82};
    uint32_t l_897 = 0x8F30EB41L;
    int i;
    for (p_898->g_2 = 0; (p_898->g_2 == 12); p_898->g_2 = safe_add_func_int16_t_s_s(p_898->g_2, 4))
    { /* block id: 7 */
        int32_t *l_5 = &p_898->g_2;
        int32_t **l_6 = (void*)0;
        int32_t **l_7 = &l_5;
        (*l_7) = l_5;
    }
    for (p_898->g_2 = 6; (p_898->g_2 <= 20); p_898->g_2 = safe_add_func_uint16_t_u_u(p_898->g_2, 8))
    { /* block id: 12 */
        int32_t *l_10 = &p_898->g_11;
        int32_t *l_12 = (void*)0;
        int32_t *l_13 = (void*)0;
        int32_t *l_14 = &p_898->g_11;
        int32_t *l_15[5][5][9] = {{{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2}},{{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2}},{{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2}},{{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2}},{{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2},{&p_898->g_2,&p_898->g_2,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_11,&p_898->g_2,&p_898->g_2}}};
        int i, j, k;
        ++p_898->g_17[1];
        return l_20;
    }
    (*p_898->g_402) = func_21(l_20, l_20, p_898);
    return l_897;
}


/* ------------------------------------------ */
/* 
 * reads : p_898->g_17 p_898->g_2 p_898->g_655 p_898->g_410 p_898->g_821 p_898->g_853 p_898->g_549 p_898->g_543 p_898->g_83 p_898->g_82 p_898->g_313 p_898->g_307 p_898->g_229 p_898->g_108 p_898->g_122 p_898->g_288 p_898->g_891 p_898->g_820 p_898->g_124 p_898->g_895 p_898->g_231
 * writes: p_898->g_11 p_898->g_83 p_898->g_313 p_898->g_229 p_898->g_288 p_898->g_403
 */
int32_t * func_21(uint32_t  p_22, uint32_t  p_23, struct S0 * p_898)
{ /* block id: 16 */
    int32_t *l_33 = (void*)0;
    int32_t l_894 = (-7L);
    for (p_23 = 20; (p_23 <= 57); p_23 = safe_add_func_uint8_t_u_u(p_23, 1))
    { /* block id: 19 */
        uint8_t l_31 = 0xFCL;
        int32_t *l_32 = &p_898->g_11;
        if (p_22)
            break;
        l_894 &= func_26((((0x1919L < (l_31 <= (l_32 == l_33))) == (p_898->g_17[0] >= ((p_898->g_2 > func_34(p_898->g_17[2], p_898)) != p_22))) , p_898->g_655), p_898->g_410[1], p_22, (*p_898->g_821), p_898);
        if (p_22)
            continue;
        (*p_898->g_895) = &l_894;
    }
    return (*p_898->g_231);
}


/* ------------------------------------------ */
/* 
 * reads : p_898->g_853 p_898->g_549 p_898->g_543 p_898->g_83 p_898->g_82 p_898->g_313 p_898->g_307 p_898->g_229 p_898->g_108 p_898->g_122 p_898->g_288 p_898->g_891 p_898->g_820 p_898->g_821 p_898->g_655 p_898->g_124
 * writes: p_898->g_83 p_898->g_313 p_898->g_229 p_898->g_288
 */
int32_t  func_26(uint64_t  p_27, uint64_t  p_28, int32_t  p_29, int8_t  p_30, struct S0 * p_898)
{ /* block id: 459 */
    uint8_t *l_858[10][4][5] = {{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}},{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}},{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}},{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}},{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}},{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}},{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}},{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}},{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}},{{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549},{&p_898->g_17[1],(void*)0,&p_898->g_549,(void*)0,&p_898->g_549}}};
    int32_t l_859 = 0x6A3C9944L;
    int16_t **l_863 = (void*)0;
    int16_t ***l_862[6][6] = {{&l_863,&l_863,&l_863,&l_863,&l_863,&l_863},{&l_863,&l_863,&l_863,&l_863,&l_863,&l_863},{&l_863,&l_863,&l_863,&l_863,&l_863,&l_863},{&l_863,&l_863,&l_863,&l_863,&l_863,&l_863},{&l_863,&l_863,&l_863,&l_863,&l_863,&l_863},{&l_863,&l_863,&l_863,&l_863,&l_863,&l_863}};
    int32_t l_864 = 9L;
    int32_t l_865 = 0x2BEC0736L;
    uint32_t *l_868 = &p_898->g_313;
    int32_t l_871 = 0x27EE70FBL;
    int64_t *l_882 = &p_898->g_246;
    int32_t ****l_885 = &p_898->g_651;
    int32_t **l_890[10][1];
    int64_t l_893 = 0x3BB645F6B836AA0AL;
    int i, j, k;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_890[i][j] = (void*)0;
    }
    l_865 ^= (safe_unary_minus_func_int64_t_s(((((((safe_mul_func_int16_t_s_s((0x35L >= (safe_mul_func_uint16_t_u_u(0UL, p_898->g_853))), ((0UL | (safe_rshift_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), 0x94L)) && (l_859 &= (6L ^ (~0x203592011D1583ABL)))), (l_864 = ((0x40DDL > ((safe_mod_func_uint16_t_u_u(((void*)0 == l_862[3][4]), p_28)) & p_27)) >= p_30))))) , p_898->g_549))) >= 1L) , p_29) | 0x7B7FL) || 0x3855686AL) , 0L)));
    (*p_898->g_82) = (*p_898->g_543);
    (*p_898->g_82) = (safe_div_func_uint32_t_u_u(((*l_868)--), (l_871 = p_30)));
    (*p_898->g_82) &= (safe_div_func_uint64_t_u_u(((1L || ((*p_898->g_307) = 0x2FA2DAD3077710B3L)) , (safe_mod_func_uint64_t_u_u((*p_898->g_307), ((safe_mul_func_uint16_t_u_u((~(((((safe_lshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_s(((void*)0 == l_882), (l_865 ^= (safe_mod_func_int16_t_s_s((p_898->g_288 = ((!(((void*)0 != l_885) < (l_871 = 9L))) , (safe_add_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(p_898->g_108, p_898->g_122)), p_898->g_288)))), p_27))))), 12)) , l_890[0][0]) == p_898->g_891) || p_27) == p_28)), l_893)) || (**p_898->g_820))))), p_898->g_124[7]));
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_898->g_11
 */
int16_t  func_34(uint64_t  p_35, struct S0 * p_898)
{ /* block id: 21 */
    int32_t l_497 = (-1L);
    int64_t *l_546 = &p_898->g_246;
    int32_t *l_547 = &p_898->g_83;
    uint8_t *l_548 = &p_898->g_549;
    uint64_t l_575 = 18446744073709551615UL;
    int32_t l_599 = (-6L);
    int32_t l_656 = 0L;
    int32_t l_659[5][9][3] = {{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}},{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}},{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}},{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}},{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}}};
    uint8_t l_697 = 255UL;
    int16_t *l_706 = &p_898->g_288;
    int16_t **l_705 = &l_706;
    uint8_t l_725 = 0xACL;
    uint32_t l_776 = 9UL;
    int32_t l_806 = 0x106E5FDDL;
    int8_t l_845 = (-1L);
    int i, j, k;
    for (p_898->g_11 = 0; (p_898->g_11 <= 3); p_898->g_11 = safe_add_func_uint64_t_u_u(p_898->g_11, 6))
    { /* block id: 24 */
        uint32_t *l_48 = &p_898->g_49;
        int32_t l_50 = 0x7C499936L;
        (1 + 1);
    }
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_898->g_288 p_898->g_402 p_898->g_403 p_898->g_501 p_898->g_100 p_898->g_109 p_898->g_229 p_898->g_82 p_898->g_313 p_898->g_246 p_898->g_128 p_898->g_83
 * writes: p_898->g_288 p_898->g_100 p_898->g_82 p_898->g_106 p_898->g_313 p_898->g_246 p_898->g_83 p_898->g_403
 */
int32_t  func_38(uint8_t  p_39, int64_t  p_40, int64_t  p_41, int64_t  p_42, struct S0 * p_898)
{ /* block id: 256 */
    int64_t l_507 = (-2L);
    int32_t l_508[2][4][2];
    int32_t l_510 = 1L;
    uint32_t l_512 = 0x40E1F32FL;
    uint32_t *l_515[3];
    int32_t *l_520[2];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
                l_508[i][j][k] = 0x3442C536L;
        }
    }
    for (i = 0; i < 3; i++)
        l_515[i] = &p_898->g_49;
    for (i = 0; i < 2; i++)
        l_520[i] = &l_510;
    for (p_898->g_288 = 0; (p_898->g_288 <= 4); p_898->g_288 += 1)
    { /* block id: 259 */
        uint16_t l_498 = 65535UL;
        int32_t l_502 = 2L;
        int32_t l_504 = (-1L);
        int32_t l_505 = 0x1A8D9B2FL;
        int32_t l_506[4][6][1] = {{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}}};
        int i, j, k;
        l_498--;
        for (p_898->g_100 = 4; (p_898->g_100 >= 0); p_898->g_100 -= 1)
        { /* block id: 263 */
            int32_t *l_503[4] = {&p_898->g_83,&p_898->g_83,&p_898->g_83,&p_898->g_83};
            int32_t l_509[8][6] = {{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)}};
            int32_t l_511 = 0x4994C722L;
            uint16_t *l_516 = (void*)0;
            uint16_t *l_517 = &l_498;
            int i, j;
            (*p_898->g_501) = (*p_898->g_402);
            l_512++;
            (*p_898->g_82) = (((l_515[1] = l_515[2]) == (void*)0) >= ((p_898->g_109[(p_898->g_100 + 3)][(p_898->g_288 + 3)] ^ ((*l_517) = 0x000FL)) | p_898->g_229[p_898->g_100]));
            for (p_898->g_313 = 0; (p_898->g_313 <= 9); p_898->g_313 += 1)
            { /* block id: 271 */
                return l_507;
            }
        }
        for (p_898->g_246 = 9; (p_898->g_246 >= 0); p_898->g_246 -= 1)
        { /* block id: 277 */
            return l_502;
        }
        for (l_504 = 9; (l_504 >= 0); l_504 -= 1)
        { /* block id: 282 */
            uint32_t l_518 = 4294967295UL;
            int32_t *l_519[6] = {&l_506[1][5][0],(void*)0,&l_506[1][5][0],&l_506[1][5][0],(void*)0,&l_506[1][5][0]};
            int i;
            if ((*p_898->g_128))
                break;
            l_508[1][1][0] |= l_518;
            return l_506[0][0][0];
        }
    }
    (*p_898->g_128) = ((**p_898->g_402) = (!l_507));
    for (l_507 = 0; (l_507 >= (-3)); l_507 = safe_sub_func_int32_t_s_s(l_507, 5))
    { /* block id: 292 */
        int16_t l_523 = 0x2FD2L;
        int8_t *l_529 = &p_898->g_100;
        uint16_t *l_540[10] = {&p_898->g_124[2],&p_898->g_124[2],&p_898->g_124[2],&p_898->g_124[2],&p_898->g_124[2],&p_898->g_124[2],&p_898->g_124[2],&p_898->g_124[2],&p_898->g_124[2],&p_898->g_124[2]};
        int32_t *l_541 = &p_898->g_83;
        int32_t **l_542 = &p_898->g_403[0];
        int i;
        (*l_542) = l_541;
    }
    return p_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_898->g_185 p_898->g_313 p_898->g_307 p_898->g_96 p_898->g_95
 * writes: p_898->g_185 p_898->g_229 p_898->g_106 p_898->g_83 p_898->g_95
 */
int64_t  func_43(int32_t * p_44, struct S0 * p_898)
{ /* block id: 163 */
    int32_t **l_315 = &p_898->g_82;
    uint64_t *l_319 = &p_898->g_95;
    int32_t l_327 = 0x37871E8FL;
    int16_t *l_344 = &p_898->g_288;
    int32_t l_385 = 9L;
    int32_t l_397 = 0x08E9BBEAL;
    int32_t l_415[2][1];
    int16_t l_434 = 0x7D1BL;
    uint16_t *l_481 = (void*)0;
    int8_t l_490 = 0x2CL;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_415[i][j] = 5L;
    }
    for (p_898->g_185 = 0; (p_898->g_185 != (-2)); p_898->g_185--)
    { /* block id: 166 */
        int32_t ***l_314 = (void*)0;
        uint64_t *l_320 = &p_898->g_95;
        int32_t *l_321 = &p_898->g_106;
        int32_t *l_322 = &p_898->g_83;
        (*l_322) = (0UL | (p_898->g_313 , ((((void*)0 == l_314) < ((~(&p_898->g_126[1] == l_315)) , (~(((*p_898->g_307) = 0x53D9A7A357069F22L) | (safe_lshift_func_int8_t_s_u((safe_unary_minus_func_int64_t_s(p_898->g_96[4][7][0])), 6)))))) , ((*l_321) = ((l_319 != l_320) > 253UL)))));
    }
    for (p_898->g_95 = 3; (p_898->g_95 > 7); ++p_898->g_95)
    { /* block id: 173 */
        uint8_t **l_337 = &p_898->g_336[0];
        uint8_t l_340 = 255UL;
        int8_t *l_347 = (void*)0;
        int8_t **l_346 = &l_347;
        int32_t l_358 = 0x194CD54BL;
        int32_t l_383 = 0x1840CDF6L;
        int32_t l_408 = 1L;
        uint64_t **l_484[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t *l_491[4];
        int16_t **l_492[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_493 = &l_408;
        int i;
        for (i = 0; i < 4; i++)
            l_491[i] = &p_898->g_122;
        (1 + 1);
    }
    for (l_327 = 0; (l_327 <= (-22)); l_327--)
    { /* block id: 252 */
        uint64_t l_496 = 18446744073709551612UL;
        if (l_496)
            break;
    }
    return l_385;
}


/* ------------------------------------------ */
/* 
 * reads : p_898->g_16 p_898->g_2 p_898->g_83 p_898->g_82 p_898->g_100 p_898->g_109 p_898->g_95 p_898->g_11 p_898->g_49 p_898->g_122 p_898->g_96 p_898->g_127 p_898->g_106 p_898->g_128 p_898->g_17 p_898->g_134 p_898->g_107 p_898->g_124 p_898->g_229 p_898->g_231 p_898->g_98 p_898->g_246 p_898->g_292 p_898->g_306
 * writes: p_898->g_82 p_898->g_95 p_898->g_96 p_898->g_98 p_898->g_100 p_898->g_109 p_898->g_122 p_898->g_124 p_898->g_106 p_898->g_83 p_898->g_134 p_898->g_49 p_898->g_16 p_898->g_185 p_898->g_229 p_898->g_246 p_898->g_288
 */
int32_t * func_45(uint32_t  p_46, int32_t  p_47, struct S0 * p_898)
{ /* block id: 26 */
    int32_t *l_65[7];
    uint32_t *l_133 = &p_898->g_134;
    int8_t l_135 = 0x05L;
    uint8_t l_136 = 0x82L;
    int32_t *l_137 = &p_898->g_2;
    uint64_t l_198 = 0x0E1254D81AA495B3L;
    uint64_t *l_226 = (void*)0;
    uint64_t **l_225 = &l_226;
    uint64_t ***l_224 = &l_225;
    int8_t *l_265 = &l_135;
    int8_t **l_264 = &l_265;
    int16_t l_310 = (-6L);
    int i;
    for (i = 0; i < 7; i++)
        l_65[i] = &p_898->g_11;
    if ((((safe_lshift_func_int8_t_s_s((safe_sub_func_int8_t_s_s(((((0xD7CCL | (safe_unary_minus_func_uint64_t_u((func_56(p_47, ((p_898->g_16 != (safe_mod_func_uint32_t_u_u(func_61(l_65[3], ((p_46 , (safe_mod_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s(((safe_lshift_func_int8_t_s_u(((p_898->g_2 & (safe_mul_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_u(func_76(p_47, p_898), 0)) | (((*l_133) ^= (((safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((~p_898->g_17[0]), p_898->g_17[1])) == 1L), p_47)) && p_898->g_2) != 0xEE9C46A301C7F311L)) || p_898->g_17[1])), p_898->g_2))) != 65527UL), p_47)) ^ l_135), 4)) , l_136), p_47))) && 0x28A0557642EFCB15L), l_137, p_898), 0x61E38285L))) <= p_46), p_898) & 0x0B1CBCA9DBBE3BBBL)))) || FAKE_DIVERGE(p_898->group_1_offset, get_group_id(1), 10)) && p_46) > p_47), p_47)), 1)) >= p_898->g_2) | p_898->g_16))
    { /* block id: 59 */
        uint8_t l_177 = 1UL;
        int32_t l_181 = (-8L);
        uint64_t *l_201 = &p_898->g_96[6][8][0];
        uint64_t *l_204 = (void*)0;
        uint64_t *l_205 = &p_898->g_95;
        int8_t *l_227 = &p_898->g_185;
        uint64_t *l_228 = &p_898->g_229[3];
        uint16_t l_230 = 65534UL;
        uint32_t l_267 = 0x44E22DBBL;
lbl_248:
        for (p_898->g_134 = 0; (p_898->g_134 <= 1); p_898->g_134 += 1)
        { /* block id: 62 */
            uint64_t *l_172[4] = {&p_898->g_95,&p_898->g_95,&p_898->g_95,&p_898->g_95};
            uint64_t **l_171 = &l_172[0];
            int32_t l_180 = 0L;
            int32_t l_182 = 0x12886F20L;
            int32_t l_186 = 0x5F1D7F75L;
            uint64_t l_188 = 0x75A03A189BEC7C54L;
            int i;
            for (p_898->g_49 = 0; (p_898->g_49 <= 1); p_898->g_49 += 1)
            { /* block id: 65 */
                uint64_t ***l_173 = &l_171;
                int32_t l_176 = 0x49473A2EL;
                int32_t l_184 = 0L;
                (*l_173) = l_171;
                for (p_898->g_16 = 1; (p_898->g_16 >= 0); p_898->g_16 -= 1)
                { /* block id: 69 */
                    int32_t l_174 = (-9L);
                    int32_t l_175 = (-1L);
                    int32_t l_183 = 0x377E2E7FL;
                    int32_t l_187 = (-1L);
                    uint32_t l_191[4][4][2] = {{{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L}},{{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L}},{{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L}},{{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L}}};
                    int i, j, k;
                    --l_177;
                    l_188++;
                    l_191[2][2][0]--;
                }
            }
            return &p_898->g_2;
        }
        if ((((safe_lshift_func_int16_t_s_u((((safe_mod_func_int64_t_s_s(((l_198 | (safe_unary_minus_func_int8_t_s(l_177))) < (safe_unary_minus_func_uint64_t_u(p_47))), ((*l_205) &= ((*l_201)--)))) != (l_230 ^= ((*l_228) |= (((((safe_div_func_uint64_t_u_u(((safe_mod_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(((((safe_rshift_func_uint8_t_u_s(((safe_mod_func_uint32_t_u_u((((void*)0 == l_137) < (0xE982L < ((((safe_lshift_func_int8_t_s_s(((*l_227) = ((safe_lshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((((0xBDL && ((void*)0 != l_224)) || p_898->g_100) == 18446744073709551613UL), p_46)), p_46)), 6)) , p_47)), l_177)) < l_181) | l_181) , 0xA390L))), p_898->g_109[7][1])) <= l_177), p_898->g_122)) & 0x41L) >= p_898->g_124[8]) >= GROUP_DIVERGE(0, 1)), 5)), p_898->g_122)) > p_46), p_898->g_16)) , 0x29968E2C016A6488L) != p_898->g_134) <= 247UL) || l_177)))) <= l_181), GROUP_DIVERGE(2, 1))) <= p_898->g_49) && 2L))
        { /* block id: 82 */
            int32_t *l_244 = &p_898->g_11;
            int32_t l_263 = (-5L);
            (*p_898->g_231) = &l_181;
            for (l_136 = 0; (l_136 > 33); l_136++)
            { /* block id: 86 */
                uint16_t *l_253[2][1];
                int32_t l_258 = 0x74CD0BB9L;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_253[i][j] = &p_898->g_124[4];
                }
                for (p_898->g_122 = (-15); (p_898->g_122 <= (-5)); p_898->g_122++)
                { /* block id: 89 */
                    int32_t *l_240 = &p_898->g_16;
                    uint8_t *l_243 = &l_177;
                    (*p_898->g_82) = (l_65[4] != l_133);
                    (*p_898->g_82) = (safe_mod_func_uint16_t_u_u(p_47, (safe_mul_func_int16_t_s_s(p_47, (1L && ((((*l_240) = p_898->g_134) , (FAKE_DIVERGE(p_898->local_2_offset, get_local_id(2), 10) || (!((&p_898->g_100 == (void*)0) & (safe_add_func_int16_t_s_s(l_230, ((~((((*l_243) &= p_898->g_109[6][4]) < (~p_47)) != p_898->g_83)) <= 0xE784L))))))) < 0xEE72L))))));
                    (*p_898->g_127) = 1L;
                    for (p_898->g_106 = 4; (p_898->g_106 >= 0); p_898->g_106 -= 1)
                    { /* block id: 97 */
                        return l_244;
                    }
                }
                for (l_198 = 0; (l_198 <= 1); l_198 += 1)
                { /* block id: 103 */
                    int64_t *l_245 = &p_898->g_246;
                    int i;
                    p_898->g_83 |= (((*l_245) = (p_898->g_124[l_198] || p_898->g_124[(l_198 + 6)])) , (**p_898->g_231));
                    if (l_230)
                        continue;
                    for (l_135 = 0; (l_135 <= 9); l_135 += 1)
                    { /* block id: 109 */
                        int32_t *l_247 = (void*)0;
                        return l_247;
                    }
                    for (p_898->g_16 = 0; (p_898->g_16 <= 1); p_898->g_16 += 1)
                    { /* block id: 114 */
                        if (l_177)
                            goto lbl_248;
                        if ((*l_244))
                            continue;
                    }
                }
                l_263 = (((l_181 = (safe_lshift_func_int8_t_s_u(p_898->g_229[3], 0))) , p_47) >= (safe_mul_func_uint16_t_u_u((++p_898->g_124[8]), ((safe_rshift_func_uint16_t_u_u(((p_898->g_16 && ((((l_258 = p_46) >= (((void*)0 != &p_898->g_109[7][1]) >= (((*l_201) = (((safe_mod_func_uint64_t_u_u(0x9ED9BC621D0DC95DL, p_46)) != (safe_lshift_func_int8_t_s_u(p_47, p_898->g_95))) , l_230)) > 1UL))) == FAKE_DIVERGE(p_898->global_1_offset, get_global_id(1), 10)) & p_47)) || p_898->g_229[1]), 8)) != FAKE_DIVERGE(p_898->group_1_offset, get_group_id(1), 10)))));
            }
        }
        else
        { /* block id: 125 */
            int8_t **l_266 = &l_265;
            int32_t l_291 = 0L;
            l_266 = l_264;
            l_267++;
            for (p_898->g_122 = 0; (p_898->g_122 != 6); ++p_898->g_122)
            { /* block id: 130 */
                uint64_t l_280 = 0x989D3A3C46B0DBF9L;
                int16_t *l_287 = &p_898->g_288;
                uint32_t *l_289 = &l_267;
                uint32_t **l_290 = &l_289;
                int32_t l_293 = 0x4F099D6DL;
                l_293 = ((p_47 & (safe_mod_func_uint32_t_u_u((safe_mod_func_int64_t_s_s((safe_lshift_func_int8_t_s_s((((((p_898->g_98 || l_280) == l_280) > (((safe_add_func_uint32_t_u_u(((*l_133) = (p_898->g_83 < (((((l_230 , ((p_47 && (safe_rshift_func_int16_t_s_s(((((((safe_mul_func_int16_t_s_s(((*l_287) = p_898->g_246), (((*l_290) = l_289) != (void*)0))) , 65533UL) , p_898->g_229[3]) || l_291) , p_898->g_292) != (void*)0), l_291))) & p_898->g_246)) == FAKE_DIVERGE(p_898->local_2_offset, get_local_id(2), 10)) != 0x55FA5ECB414F5B9CL) == (-5L)) < (*l_137)))), (*l_137))) < p_47) < l_230)) , l_291) >= p_46), p_46)), p_898->g_124[5])), (*l_137)))) <= 65535UL);
                for (p_898->g_246 = 2; (p_898->g_246 <= 9); p_898->g_246 += 1)
                { /* block id: 137 */
                    int32_t l_294 = 0x18AF615FL;
                    int i, j;
                    l_294 ^= (p_898->g_109[p_898->g_246][p_898->g_246] , (&p_898->g_17[0] != &p_898->g_17[1]));
                }
            }
            for (l_136 = (-28); (l_136 <= 29); l_136++)
            { /* block id: 143 */
                uint32_t l_297 = 0UL;
                if (p_47)
                    break;
                ++l_297;
                l_181 = p_46;
            }
        }
        for (p_898->g_16 = 0; (p_898->g_16 > (-19)); p_898->g_16--)
        { /* block id: 151 */
            (*p_898->g_128) = ((&p_898->g_108 != (void*)0) ^ (FAKE_DIVERGE(p_898->local_0_offset, get_local_id(0), 10) != ((void*)0 != p_898->g_306[0])));
        }
    }
    else
    { /* block id: 154 */
        for (p_898->g_16 = (-7); (p_898->g_16 == (-5)); p_898->g_16 = safe_add_func_int64_t_s_s(p_898->g_16, 5))
        { /* block id: 157 */
            return l_65[4];
        }
    }
    l_310 &= 8L;
    return l_65[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_898->g_134 p_898->g_107 p_898->g_11 p_898->g_95 p_898->g_106
 * writes: p_898->g_134
 */
uint64_t  func_56(int32_t  p_57, int64_t  p_58, struct S0 * p_898)
{ /* block id: 54 */
    int32_t l_143 = 0x34AC4052L;
    uint32_t *l_144 = &p_898->g_134;
    int16_t l_155[5][8] = {{1L,1L,(-1L),1L,0L,1L,(-1L),1L},{1L,1L,(-1L),1L,0L,1L,(-1L),1L},{1L,1L,(-1L),1L,0L,1L,(-1L),1L},{1L,1L,(-1L),1L,0L,1L,(-1L),1L},{1L,1L,(-1L),1L,0L,1L,(-1L),1L}};
    int8_t *l_156 = (void*)0;
    int8_t *l_157 = (void*)0;
    int32_t l_158[1];
    int64_t l_163 = 0L;
    int32_t l_170 = (-1L);
    int i, j;
    for (i = 0; i < 1; i++)
        l_158[i] = (-1L);
    l_170 ^= ((++(*l_144)) < ((safe_div_func_int64_t_s_s(((safe_sub_func_uint8_t_u_u((FAKE_DIVERGE(p_898->global_1_offset, get_global_id(1), 10) | (safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(((l_143 <= 0x73432FECL) && (l_158[0] ^= l_155[0][0])), 6)), (safe_rshift_func_uint16_t_u_s(l_143, (((safe_mul_func_int16_t_s_s((-2L), 3L)) || 255UL) && (l_163 ^ (((safe_lshift_func_uint16_t_u_s((safe_mod_func_int16_t_s_s((safe_add_func_int8_t_s_s((((((!p_898->g_107) , 1UL) , (void*)0) != l_144) < p_57), 0xADL)), p_898->g_11)), p_898->g_95)) , 0xAD1FF961L) , l_155[0][0])))))))), 1L)) <= 0x6AL), 18446744073709551615UL)) != p_898->g_106));
    return p_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_898->g_128 p_898->g_83 p_898->g_122 p_898->g_106 p_898->g_11
 * writes: p_898->g_106
 */
uint32_t  func_61(int32_t * p_62, uint16_t  p_63, int32_t * p_64, struct S0 * p_898)
{ /* block id: 49 */
    int32_t *l_140 = &p_898->g_106;
    int32_t **l_141[5];
    uint16_t l_142[8] = {1UL,65535UL,1UL,1UL,65535UL,1UL,1UL,65535UL};
    int i;
    for (i = 0; i < 5; i++)
        l_141[i] = &l_140;
    (*l_140) &= (safe_mul_func_uint8_t_u_u(((*p_898->g_128) | p_898->g_122), (-2L)));
    (*l_140) ^= (*p_62);
    p_64 = p_62;
    return l_142[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_898->g_83 p_898->g_16 p_898->g_2 p_898->g_82 p_898->g_100 p_898->g_109 p_898->g_95 p_898->g_11 p_898->g_49 p_898->g_122 p_898->g_96 p_898->g_127 p_898->g_106 p_898->g_128
 * writes: p_898->g_82 p_898->g_95 p_898->g_96 p_898->g_98 p_898->g_100 p_898->g_109 p_898->g_122 p_898->g_124 p_898->g_106 p_898->g_83
 */
int8_t  func_76(uint64_t  p_77, struct S0 * p_898)
{ /* block id: 27 */
    uint32_t l_86 = 0xE24EB764L;
    int32_t **l_91 = &p_898->g_82;
    int32_t **l_93 = &p_898->g_82;
    int32_t l_99 = 0L;
    int32_t l_102 = 0L;
    int32_t l_103 = 0x2E73AF25L;
    int32_t l_104 = 0x17764D01L;
    int32_t l_105[3][1];
    uint32_t l_118 = 0x69E21D65L;
    int16_t *l_121 = &p_898->g_122;
    int64_t *l_123[4][10][6] = {{{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98}},{{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98}},{{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98}},{{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98},{(void*)0,(void*)0,&p_898->g_98,&p_898->g_98,&p_898->g_98,&p_898->g_98}}};
    int32_t *l_125 = (void*)0;
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_105[i][j] = (-1L);
    }
    for (p_77 = 21; (p_77 >= 40); p_77 = safe_add_func_int64_t_s_s(p_77, 2))
    { /* block id: 30 */
        int32_t *l_80 = &p_898->g_2;
        int32_t **l_81[10][3][1] = {{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}}};
        int32_t ***l_92 = &l_91;
        uint64_t *l_94[8][9][3] = {{{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95}},{{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95}},{{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95}},{{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95}},{{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95}},{{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95}},{{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95}},{{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95},{&p_898->g_95,&p_898->g_95,&p_898->g_95}}};
        int64_t *l_97 = &p_898->g_98;
        int32_t *l_101 = &p_898->g_11;
        int i, j, k;
        p_898->g_82 = l_80;
        p_898->g_100 |= (l_99 = (p_898->g_83 & (((safe_div_func_uint64_t_u_u(l_86, (safe_mul_func_int8_t_s_s((p_898->g_16 > ((p_898->g_2 < (GROUP_DIVERGE(1, 1) >= ((~(((p_77 != (-9L)) , ((&p_898->g_82 != (((*l_97) = ((p_898->g_96[6][8][0] = (p_898->g_95 = (safe_sub_func_int32_t_s_s((((*l_92) = l_91) == l_93), (**l_93))))) | (**l_93))) , l_91)) && FAKE_DIVERGE(p_898->local_0_offset, get_local_id(0), 10))) >= 0x3B62L)) || p_898->g_83))) || p_77)), (**l_93))))) != (**l_93)) < (**l_93))));
        (*l_91) = l_101;
        --p_898->g_109[7][1];
    }
    (*p_898->g_127) |= ((p_898->g_124[8] = (safe_div_func_uint32_t_u_u(((safe_mod_func_int64_t_s_s(p_898->g_95, (p_898->g_98 = (safe_add_func_int16_t_s_s(((l_118 < (safe_rshift_func_int16_t_s_s(p_898->g_11, 5))) >= p_77), ((((((0xAC5FL > ((((*l_121) &= p_898->g_49) | p_77) && 5UL)) < 0x1000718B624CAB1FL) == (*p_898->g_82)) , (void*)0) != &l_91) <= 1UL)))))) >= (**l_91)), p_898->g_96[6][4][1]))) | (**l_93));
    for (p_898->g_98 = 0; p_898->g_98 < 10; p_898->g_98 += 1)
    {
        p_898->g_124[p_898->g_98] = 4UL;
    }
    (*p_898->g_128) = (*p_898->g_82);
    return p_898->g_2;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_899;
    struct S0* p_898 = &c_899;
    struct S0 c_900 = {
        (-5L), // p_898->g_2
        0x479E672CL, // p_898->g_11
        0x46C8C5CEL, // p_898->g_16
        {255UL,255UL,255UL}, // p_898->g_17
        4294967295UL, // p_898->g_49
        0x13CBC919L, // p_898->g_83
        &p_898->g_83, // p_898->g_82
        0xF5ABE080F98811FBL, // p_898->g_95
        {{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}}}, // p_898->g_96
        0x2F053B50BCEF8620L, // p_898->g_98
        0L, // p_898->g_100
        0x1C2FEE76L, // p_898->g_106
        (-10L), // p_898->g_107
        0L, // p_898->g_108
        {{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL}}, // p_898->g_109
        0x1351L, // p_898->g_122
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_898->g_124
        {&p_898->g_106,&p_898->g_106}, // p_898->g_126
        &p_898->g_106, // p_898->g_127
        &p_898->g_83, // p_898->g_128
        4294967290UL, // p_898->g_134
        0x3BL, // p_898->g_185
        {0UL,0UL,0UL,0UL,0UL}, // p_898->g_229
        &p_898->g_82, // p_898->g_231
        0L, // p_898->g_246
        0L, // p_898->g_288
        (void*)0, // p_898->g_292
        &p_898->g_229[3], // p_898->g_307
        {&p_898->g_307,&p_898->g_307,&p_898->g_307,&p_898->g_307,&p_898->g_307,&p_898->g_307,&p_898->g_307,&p_898->g_307,&p_898->g_307}, // p_898->g_306
        0x9E86540BL, // p_898->g_313
        {&p_898->g_17[1],(void*)0,&p_898->g_17[1],&p_898->g_17[1],(void*)0,&p_898->g_17[1],&p_898->g_17[1],(void*)0,&p_898->g_17[1],&p_898->g_17[1]}, // p_898->g_336
        {&p_898->g_106,&p_898->g_106}, // p_898->g_403
        &p_898->g_403[0], // p_898->g_402
        {9UL,9UL}, // p_898->g_410
        &p_898->g_82, // p_898->g_501
        &p_898->g_83, // p_898->g_543
        255UL, // p_898->g_549
        {{{&p_898->g_403[0],&p_898->g_403[0]}}}, // p_898->g_637
        (void*)0, // p_898->g_640
        (void*)0, // p_898->g_651
        0x0DL, // p_898->g_655
        &p_898->g_82, // p_898->g_704
        0x54E4AD30L, // p_898->g_709
        {{{0x36E3L},{0x36E3L},{0x36E3L},{0x36E3L},{0x36E3L},{0x36E3L}}}, // p_898->g_750
        &p_898->g_750[0][5][0], // p_898->g_749
        &p_898->g_749, // p_898->g_748
        {&p_898->g_748,&p_898->g_748,&p_898->g_748,&p_898->g_748,&p_898->g_748}, // p_898->g_747
        &p_898->g_709, // p_898->g_768
        0xAE4D9088C3DBB9F8L, // p_898->g_797
        {&p_898->g_797,&p_898->g_797,&p_898->g_797,&p_898->g_797,&p_898->g_797,&p_898->g_797,&p_898->g_797,&p_898->g_797,&p_898->g_797,&p_898->g_797}, // p_898->g_796
        &p_898->g_796[8], // p_898->g_795
        &p_898->g_795, // p_898->g_794
        &p_898->g_794, // p_898->g_793
        &p_898->g_655, // p_898->g_821
        &p_898->g_821, // p_898->g_820
        (void*)0, // p_898->g_842
        &p_898->g_842, // p_898->g_841
        (-4L), // p_898->g_853
        &p_898->g_16, // p_898->g_892
        &p_898->g_892, // p_898->g_891
        &p_898->g_403[0], // p_898->g_895
        sequence_input[get_global_id(0)], // p_898->global_0_offset
        sequence_input[get_global_id(1)], // p_898->global_1_offset
        sequence_input[get_global_id(2)], // p_898->global_2_offset
        sequence_input[get_local_id(0)], // p_898->local_0_offset
        sequence_input[get_local_id(1)], // p_898->local_1_offset
        sequence_input[get_local_id(2)], // p_898->local_2_offset
        sequence_input[get_group_id(0)], // p_898->group_0_offset
        sequence_input[get_group_id(1)], // p_898->group_1_offset
        sequence_input[get_group_id(2)], // p_898->group_2_offset
    };
    c_899 = c_900;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_898);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_898->g_2, "p_898->g_2", print_hash_value);
    transparent_crc(p_898->g_11, "p_898->g_11", print_hash_value);
    transparent_crc(p_898->g_16, "p_898->g_16", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_898->g_17[i], "p_898->g_17[i]", print_hash_value);

    }
    transparent_crc(p_898->g_49, "p_898->g_49", print_hash_value);
    transparent_crc(p_898->g_83, "p_898->g_83", print_hash_value);
    transparent_crc(p_898->g_95, "p_898->g_95", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_898->g_96[i][j][k], "p_898->g_96[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_898->g_98, "p_898->g_98", print_hash_value);
    transparent_crc(p_898->g_100, "p_898->g_100", print_hash_value);
    transparent_crc(p_898->g_106, "p_898->g_106", print_hash_value);
    transparent_crc(p_898->g_107, "p_898->g_107", print_hash_value);
    transparent_crc(p_898->g_108, "p_898->g_108", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_898->g_109[i][j], "p_898->g_109[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_898->g_122, "p_898->g_122", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_898->g_124[i], "p_898->g_124[i]", print_hash_value);

    }
    transparent_crc(p_898->g_134, "p_898->g_134", print_hash_value);
    transparent_crc(p_898->g_185, "p_898->g_185", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_898->g_229[i], "p_898->g_229[i]", print_hash_value);

    }
    transparent_crc(p_898->g_246, "p_898->g_246", print_hash_value);
    transparent_crc(p_898->g_288, "p_898->g_288", print_hash_value);
    transparent_crc(p_898->g_313, "p_898->g_313", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_898->g_410[i], "p_898->g_410[i]", print_hash_value);

    }
    transparent_crc(p_898->g_549, "p_898->g_549", print_hash_value);
    transparent_crc(p_898->g_655, "p_898->g_655", print_hash_value);
    transparent_crc(p_898->g_709, "p_898->g_709", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_898->g_750[i][j][k], "p_898->g_750[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_898->g_797, "p_898->g_797", print_hash_value);
    transparent_crc(p_898->g_853, "p_898->g_853", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
