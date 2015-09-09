// ---fake_divergence -g 39,73,3 -l 39,1,1
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


// Seed: 16

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int64_t  f0;
   volatile int64_t  f1;
   volatile uint64_t  f2;
};

union U1 {
   volatile int64_t  f0;
   volatile int64_t  f1;
   int32_t  f2;
};

union U2 {
   volatile int64_t  f0;
   int64_t  f1;
   uint32_t  f2;
   uint64_t  f3;
   int32_t  f4;
};

struct S3 {
    volatile int32_t g_3;
    int32_t g_5;
    uint32_t g_8[4];
    int32_t g_50;
    uint64_t g_53;
    uint64_t **g_58;
    uint64_t *** volatile g_57[10][4];
    uint64_t *** volatile g_59;
    volatile int32_t g_67;
    volatile int32_t g_68;
    volatile int32_t g_69[10];
    volatile int32_t g_70;
    int32_t g_71;
    int32_t *g_73;
    int32_t ** volatile g_72;
    int32_t * volatile g_74;
    uint8_t g_92[6];
    int64_t g_94;
    uint32_t g_100;
    union U2 g_118;
    int8_t g_129;
    int8_t g_133;
    uint32_t g_135[3];
    int64_t g_153;
    volatile union U0 g_188;
    volatile union U0 g_206;
    int8_t g_216;
    uint64_t g_219;
    uint32_t g_227;
    uint16_t g_233;
    int16_t g_260;
    int8_t *g_301;
    int8_t **g_300;
    union U1 g_305;
    uint16_t g_311;
    volatile int16_t g_332;
    uint32_t g_370;
    int32_t g_373;
    volatile union U0 g_405;
    union U1 g_433;
    volatile union U1 g_437;
    int32_t g_465;
    volatile union U2 g_476[4];
    uint32_t g_528;
    volatile union U0 g_531;
    volatile union U1 g_598;
    uint64_t ****g_614;
    uint64_t *****g_613;
    int16_t g_637;
    int32_t * volatile g_648;
    volatile int64_t *g_652;
    volatile int64_t * volatile *g_651;
    uint8_t g_675;
    int32_t ** volatile g_713;
    volatile uint32_t g_734[5];
    volatile uint32_t g_735;
    volatile uint32_t * volatile g_733[6][7][3];
    volatile uint32_t * volatile *g_732[6];
    int64_t g_755;
    uint16_t g_757;
    int32_t ** volatile g_762;
    union U0 g_782;
    union U0 *g_783;
    uint32_t *g_793;
    uint32_t *g_834;
    int32_t * volatile g_838;
    int32_t **g_856;
    int32_t ***g_855[7][5][7];
    int32_t ** volatile g_894;
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
uint32_t  func_1(struct S3 * p_917);
int32_t  func_11(int32_t * p_12, int32_t  p_13, int32_t * p_14, int32_t * p_15, int32_t * p_16, struct S3 * p_917);
int32_t  func_17(uint16_t  p_18, int32_t * p_19, uint32_t  p_20, int32_t * p_21, int32_t * p_22, struct S3 * p_917);
int32_t * func_23(uint32_t  p_24, int32_t * p_25, uint32_t  p_26, struct S3 * p_917);
uint32_t  func_27(int32_t * p_28, uint64_t  p_29, struct S3 * p_917);
int32_t * func_30(int32_t * p_31, struct S3 * p_917);
int32_t * func_32(uint16_t  p_33, struct S3 * p_917);
int16_t  func_37(uint64_t * p_38, uint64_t * p_39, struct S3 * p_917);
uint64_t * func_40(uint64_t * p_41, struct S3 * p_917);
uint64_t * func_42(int32_t  p_43, struct S3 * p_917);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_917->g_8 p_917->g_5 p_917->g_3 p_917->g_50 p_917->g_53 p_917->g_59 p_917->g_72 p_917->g_94 p_917->g_73 p_917->g_71 p_917->g_100 p_917->g_69 p_917->g_118 p_917->g_135 p_917->g_92 p_917->g_153 p_917->g_133 p_917->g_118.f1 p_917->g_118.f4 p_917->g_188 p_917->g_206 p_917->g_219 p_917->g_233 p_917->g_129 p_917->g_300 p_917->g_305 p_917->g_260 p_917->g_216 p_917->g_332 p_917->g_227 p_917->g_301 p_917->g_206.f0 p_917->g_405 p_917->g_370 p_917->g_433 p_917->g_437 p_917->g_476 p_917->g_311 p_917->g_476.f0 p_917->g_67 p_917->g_433.f0 p_917->g_373 p_917->g_528 p_917->g_531 p_917->g_437.f0 p_917->g_465 p_917->g_188.f0 p_917->g_894
 * writes: p_917->g_3 p_917->g_8 p_917->g_50 p_917->g_53 p_917->g_58 p_917->g_71 p_917->g_73 p_917->g_92 p_917->g_94 p_917->g_100 p_917->g_129 p_917->g_135 p_917->g_118.f4 p_917->g_153 p_917->g_118.f1 p_917->g_219 p_917->g_227 p_917->g_233 p_917->g_260 p_917->g_300 p_917->g_311 p_917->g_370 p_917->g_373 p_917->g_465 p_917->g_68 p_917->g_528 p_917->g_783 p_917->g_5
 */
uint32_t  func_1(struct S3 * p_917)
{ /* block id: 4 */
    uint64_t l_2[4] = {0x565E08CCCDDD1D8FL,0x565E08CCCDDD1D8FL,0x565E08CCCDDD1D8FL,0x565E08CCCDDD1D8FL};
    int32_t *l_4 = &p_917->g_5;
    int32_t *l_6 = (void*)0;
    int32_t *l_7[4];
    uint64_t *l_34 = &l_2[1];
    int16_t l_61 = 0x1250L;
    int32_t **l_543 = &l_6;
    int32_t *l_890 = &p_917->g_5;
    int32_t *l_891 = &p_917->g_5;
    int32_t *l_895 = &p_917->g_5;
    int i;
    for (i = 0; i < 4; i++)
        l_7[i] = &p_917->g_5;
    for (p_917->g_3 = 0; p_917->g_3 < 4; p_917->g_3 += 1)
    {
        l_2[p_917->g_3] = 4UL;
    }
    p_917->g_8[1]++;
    p_917->g_3 ^= p_917->g_5;
    (*l_4) = func_11(l_4, func_17((*l_4), func_23(func_27((p_917->g_8[1] , ((0x628EL != (l_7[0] == ((*l_543) = func_30(func_32((((*l_34) = (p_917->g_8[3] | 0x3BL)) < ((safe_add_func_uint64_t_u_u((func_37(l_34, func_40(func_42(p_917->g_3, p_917), p_917), p_917) == (*l_4)), l_61)) <= p_917->g_8[1])), p_917), p_917)))) , (*l_543))), p_917->g_216, p_917), l_4, (*l_4), p_917), (*l_4), l_890, l_891, p_917), l_895, l_890, l_895, p_917);
    return (*l_895);
}


/* ------------------------------------------ */
/* 
 * reads : p_917->g_300 p_917->g_301 p_917->g_8 p_917->g_260 p_917->g_5 p_917->g_73 p_917->g_373
 * writes: p_917->g_233 p_917->g_783 p_917->g_260 p_917->g_373 p_917->g_5
 */
int32_t  func_11(int32_t * p_12, int32_t  p_13, int32_t * p_14, int32_t * p_15, int32_t * p_16, struct S3 * p_917)
{ /* block id: 407 */
    int8_t *l_902[10] = {(void*)0,&p_917->g_129,(void*)0,(void*)0,&p_917->g_129,(void*)0,(void*)0,&p_917->g_129,(void*)0,(void*)0};
    int32_t **l_909 = &p_917->g_73;
    uint16_t *l_910 = (void*)0;
    uint16_t *l_911 = &p_917->g_233;
    union U0 **l_914 = &p_917->g_783;
    int32_t l_915 = 3L;
    int16_t *l_916 = &p_917->g_260;
    int i;
    (*p_16) = ((*p_917->g_73) = ((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(((safe_mod_func_int32_t_s_s((l_902[4] == (*p_917->g_300)), 0x2EC808C7L)) <= ((safe_mod_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), ((*l_916) = (((l_909 = l_909) != (void*)0) & ((((*l_911) = p_917->g_8[3]) < (safe_mod_func_uint64_t_u_u((((*l_914) = &p_917->g_782) == (void*)0), (4UL | l_915)))) != p_917->g_260))))) || FAKE_DIVERGE(p_917->global_0_offset, get_global_id(0), 10)), l_915)), l_915)) <= l_915)), l_915)) | 0x47L), l_915)) , (*p_12)));
    return (**l_909);
}


/* ------------------------------------------ */
/* 
 * reads : p_917->g_894 p_917->g_373
 * writes: p_917->g_73
 */
int32_t  func_17(uint16_t  p_18, int32_t * p_19, uint32_t  p_20, int32_t * p_21, int32_t * p_22, struct S3 * p_917)
{ /* block id: 404 */
    int32_t *l_892 = &p_917->g_373;
    int32_t **l_893 = (void*)0;
    (*p_917->g_894) = l_892;
    return (*l_892);
}


/* ------------------------------------------ */
/* 
 * reads : p_917->g_465 p_917->g_301 p_917->g_133 p_917->g_73 p_917->g_188.f0 p_917->g_71 p_917->g_50 p_917->g_227 p_917->g_92 p_917->g_370
 * writes: p_917->g_100 p_917->g_71 p_917->g_50 p_917->g_227
 */
int32_t * func_23(uint32_t  p_24, int32_t * p_25, uint32_t  p_26, struct S3 * p_917)
{ /* block id: 264 */
    uint32_t *l_569 = &p_917->g_100;
    int32_t l_578 = (-4L);
    int8_t l_591 = 1L;
    int32_t l_592 = 9L;
    int8_t **l_593 = (void*)0;
    int32_t l_678 = 6L;
    int32_t l_682 = 6L;
    int32_t l_683 = 0x66C872F3L;
    int32_t l_687 = 0x038F2F17L;
    int32_t l_689 = 0x70617BF0L;
    int32_t l_690[3][10][2] = {{{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L}},{{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L}},{{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L},{0x556E7B42L,0x613594A7L}}};
    uint16_t l_708 = 0x6816L;
    uint16_t l_739[7];
    uint8_t l_740 = 0UL;
    int32_t **l_853 = &p_917->g_73;
    int32_t ***l_852 = &l_853;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_739[i] = 0xC971L;
    (*p_917->g_73) = (((*l_569) = (safe_add_func_uint64_t_u_u((!p_26), (GROUP_DIVERGE(1, 1) , p_917->g_465)))) != (safe_lshift_func_int8_t_s_s((*p_917->g_301), 5)));
    (*p_917->g_73) = ((((safe_div_func_int16_t_s_s((p_26 > ((l_592 &= ((safe_lshift_func_uint8_t_u_s(1UL, (((safe_sub_func_int32_t_s_s(l_578, 4294967291UL)) >= p_917->g_188.f0) >= ((l_578 , (((safe_rshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s((+(GROUP_DIVERGE(1, 1) || (l_578 , ((safe_add_func_int32_t_s_s((*p_917->g_73), (safe_sub_func_int8_t_s_s(((safe_sub_func_int32_t_s_s(((((void*)0 == &p_917->g_370) , p_24) == 1UL), 0x9E67C7FCL)) <= 0xD42C570CL), l_591)))) <= GROUP_DIVERGE(0, 1))))), 1L)), p_917->g_227)), 0)) , p_917->g_92[3]) | p_917->g_370)) | 0UL)))) > p_24)) || FAKE_DIVERGE(p_917->group_2_offset, get_group_id(2), 10))), GROUP_DIVERGE(0, 1))) > l_578) , l_593) == (void*)0);
    for (p_917->g_227 = 0; (p_917->g_227 <= 2); p_917->g_227 = safe_add_func_uint8_t_u_u(p_917->g_227, 9))
    { /* block id: 271 */
        uint64_t *****l_618 = &p_917->g_614;
        int32_t l_624 = 0x6ED38946L;
        int32_t l_679 = 0L;
        int32_t l_680 = 1L;
        int32_t l_681[2][7];
        int8_t l_691 = (-1L);
        uint32_t **l_730 = &l_569;
        uint32_t ***l_731 = &l_730;
        int32_t *l_736 = &l_682;
        union U2 *l_737 = (void*)0;
        int64_t *l_738[8] = {&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94};
        uint64_t *l_741 = &p_917->g_118.f3;
        int32_t *l_742[5][7][7] = {{{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465}},{{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465}},{{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465}},{{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465}},{{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465},{&p_917->g_465,&p_917->g_465,&p_917->g_465,&p_917->g_465,(void*)0,&p_917->g_465,&p_917->g_465}}};
        union U0 *l_781 = &p_917->g_782;
        int32_t ***l_858[7][4][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 7; j++)
                l_681[i][j] = 0x75E7712FL;
        }
        (1 + 1);
    }
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_917->g_260 p_917->g_437.f0 p_917->g_227 p_917->g_219 p_917->g_118 p_917->g_528 p_917->g_373 p_917->g_69 p_917->g_216 p_917->g_71 p_917->g_50
 * writes: p_917->g_260 p_917->g_233 p_917->g_53 p_917->g_71 p_917->g_50
 */
uint32_t  func_27(int32_t * p_28, uint64_t  p_29, struct S3 * p_917)
{ /* block id: 253 */
    uint16_t l_548 = 65535UL;
    int32_t l_550 = (-1L);
    for (p_917->g_260 = 3; (p_917->g_260 >= 0); p_917->g_260 -= 1)
    { /* block id: 256 */
        int32_t *l_549[10];
        int32_t l_563 = 1L;
        uint16_t *l_564 = (void*)0;
        uint16_t *l_565 = &p_917->g_233;
        uint64_t *l_566 = &p_917->g_53;
        int i;
        for (i = 0; i < 10; i++)
            l_549[i] = &p_917->g_465;
        (*p_28) &= (safe_mul_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u((((((l_548 ^ ((*l_566) = ((l_550 = p_917->g_437.f0) , ((safe_div_func_uint64_t_u_u(p_29, 1UL)) , ((((safe_mul_func_uint16_t_u_u(((safe_div_func_uint32_t_u_u(p_917->g_227, (safe_rshift_func_uint8_t_u_s(((safe_add_func_int8_t_s_s(p_29, p_917->g_219)) <= (p_917->g_118 , (((safe_mod_func_uint16_t_u_u(((*l_565) = (!(l_563 ^= p_29))), p_29)) && FAKE_DIVERGE(p_917->global_1_offset, get_global_id(1), 10)) >= 0x5D1E2277L))), p_29)))) == p_917->g_528), p_917->g_373)) , p_917->g_69[2]) , &p_917->g_73) != (void*)0))))) && 0UL) != p_917->g_216) , 0x2C116031L) || l_550), p_917->g_260)) , p_29), (-1L)));
    }
    return l_548;
}


/* ------------------------------------------ */
/* 
 * reads : p_917->g_531 p_917->g_5 p_917->g_71 p_917->g_50 p_917->g_3 p_917->g_8 p_917->g_373 p_917->g_72 p_917->g_73 p_917->g_528
 * writes: p_917->g_260 p_917->g_50 p_917->g_373
 */
int32_t * func_30(int32_t * p_31, struct S3 * p_917)
{ /* block id: 248 */
    int16_t *l_532 = &p_917->g_260;
    uint64_t *l_533 = &p_917->g_219;
    int32_t l_540 = 5L;
    uint32_t l_541 = 1UL;
    int32_t *l_542 = &p_917->g_373;
    (*l_542) &= (((FAKE_DIVERGE(p_917->group_1_offset, get_group_id(1), 10) | ((((*l_532) = (0x55L != (p_917->g_531 , 8UL))) , func_42((*p_31), p_917)) != l_533)) & (safe_mul_func_uint16_t_u_u((((((safe_lshift_func_int8_t_s_u((((&p_31 == (void*)0) != (safe_mod_func_int16_t_s_s(l_540, l_540))) != 255UL), l_540)) && l_540) | 0x30F560C3L) < l_541) <= 0UL), p_917->g_5))) && 9L);
    return (*p_917->g_72);
}


/* ------------------------------------------ */
/* 
 * reads : p_917->g_8 p_917->g_72 p_917->g_50 p_917->g_53 p_917->g_94 p_917->g_73 p_917->g_71 p_917->g_100 p_917->g_69 p_917->g_118 p_917->g_135 p_917->g_92 p_917->g_153 p_917->g_133 p_917->g_118.f1 p_917->g_188 p_917->g_118.f4 p_917->g_206 p_917->g_219 p_917->g_233 p_917->g_129 p_917->g_300 p_917->g_305 p_917->g_260 p_917->g_216 p_917->g_332 p_917->g_227 p_917->g_301 p_917->g_206.f0 p_917->g_405 p_917->g_370 p_917->g_433 p_917->g_437 p_917->g_5 p_917->g_476 p_917->g_311 p_917->g_476.f0 p_917->g_67 p_917->g_433.f0 p_917->g_373 p_917->g_528
 * writes: p_917->g_53 p_917->g_50 p_917->g_71 p_917->g_73 p_917->g_92 p_917->g_94 p_917->g_100 p_917->g_129 p_917->g_135 p_917->g_118.f4 p_917->g_153 p_917->g_118.f1 p_917->g_219 p_917->g_227 p_917->g_233 p_917->g_260 p_917->g_300 p_917->g_311 p_917->g_370 p_917->g_373 p_917->g_465 p_917->g_8 p_917->g_68 p_917->g_528
 */
int32_t * func_32(uint16_t  p_33, struct S3 * p_917)
{ /* block id: 25 */
    int16_t l_62 = (-9L);
    int32_t l_96 = 0x63CEA876L;
    int8_t *l_132 = &p_917->g_133;
    uint64_t *l_144 = &p_917->g_53;
    uint64_t **l_143 = &l_144;
    int32_t l_178 = 0x6085BB83L;
    int32_t *l_204 = &p_917->g_50;
    int8_t l_264[7];
    int32_t l_265 = 1L;
    int32_t l_266 = 0x6DD2B928L;
    int32_t l_267 = 0x6449F472L;
    int32_t l_268 = (-1L);
    int32_t l_270 = 0x6284A5F7L;
    int32_t l_271 = 0x34BA4E07L;
    int32_t l_275 = (-1L);
    int32_t l_276 = 0x5559AC1AL;
    int32_t l_277 = 0L;
    uint8_t l_278 = 0xF4L;
    uint8_t l_372 = 247UL;
    int32_t l_408 = (-9L);
    uint16_t l_422 = 0xB03EL;
    uint32_t *l_424 = &p_917->g_100;
    uint32_t **l_423[2][1][8] = {{{&l_424,&l_424,&l_424,&l_424,(void*)0,&l_424,&l_424,&l_424}},{{&l_424,&l_424,&l_424,&l_424,(void*)0,&l_424,&l_424,&l_424}}};
    int32_t **l_430 = &l_204;
    int32_t ***l_429[4][1][5] = {{{&l_430,&l_430,&l_430,&l_430,&l_430}},{{&l_430,&l_430,&l_430,&l_430,&l_430}},{{&l_430,&l_430,&l_430,&l_430,&l_430}},{{&l_430,&l_430,&l_430,&l_430,&l_430}}};
    uint64_t ***l_432[1][8][8] = {{{(void*)0,&p_917->g_58,&l_143,&p_917->g_58,&l_143,&p_917->g_58,(void*)0,&l_143},{(void*)0,&p_917->g_58,&l_143,&p_917->g_58,&l_143,&p_917->g_58,(void*)0,&l_143},{(void*)0,&p_917->g_58,&l_143,&p_917->g_58,&l_143,&p_917->g_58,(void*)0,&l_143},{(void*)0,&p_917->g_58,&l_143,&p_917->g_58,&l_143,&p_917->g_58,(void*)0,&l_143},{(void*)0,&p_917->g_58,&l_143,&p_917->g_58,&l_143,&p_917->g_58,(void*)0,&l_143},{(void*)0,&p_917->g_58,&l_143,&p_917->g_58,&l_143,&p_917->g_58,(void*)0,&l_143},{(void*)0,&p_917->g_58,&l_143,&p_917->g_58,&l_143,&p_917->g_58,(void*)0,&l_143},{(void*)0,&p_917->g_58,&l_143,&p_917->g_58,&l_143,&p_917->g_58,(void*)0,&l_143}}};
    uint64_t ****l_431 = &l_432[0][6][6];
    int8_t l_472[3];
    int16_t l_524[10][9] = {{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)},{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)},{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)},{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)},{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)},{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)},{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)},{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)},{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)},{(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L),0x4CA3L,0x4CA3L,(-1L),(-1L)}};
    int8_t l_525[5];
    int32_t l_526[1];
    int64_t l_527 = (-1L);
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_264[i] = 8L;
    for (i = 0; i < 3; i++)
        l_472[i] = 0x26L;
    for (i = 0; i < 5; i++)
        l_525[i] = 0x3AL;
    for (i = 0; i < 1; i++)
        l_526[i] = 0L;
lbl_172:
    l_62 &= p_917->g_8[1];
    for (l_62 = 0; (l_62 == (-21)); l_62--)
    { /* block id: 29 */
        int32_t *l_139[1];
        int32_t l_151[5][3][5] = {{{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL}},{{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL}},{{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL}},{{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL}},{{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL},{1L,0x3EB6FFE1L,0x3EB6FFE1L,1L,0x77DDD3BAL}}};
        uint32_t l_180 = 0xC164ED75L;
        int64_t *l_238[8] = {&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94,&p_917->g_94};
        int32_t l_263 = 0x3579935AL;
        int32_t l_273 = 0x278D98D9L;
        int8_t **l_306 = &p_917->g_301;
        uint64_t ***l_320 = &p_917->g_58;
        int32_t l_339 = 0x1A7B9ABFL;
        int16_t *l_367[8] = {&p_917->g_260,&p_917->g_260,&p_917->g_260,&p_917->g_260,&p_917->g_260,&p_917->g_260,&p_917->g_260,&p_917->g_260};
        int32_t **l_426 = &l_139[0];
        int32_t ***l_425 = &l_426;
        int32_t ****l_434 = (void*)0;
        int32_t ****l_435 = &l_429[0][0][1];
        int32_t ****l_436 = &l_425;
        uint64_t ****l_438 = (void*)0;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_139[i] = &p_917->g_71;
        for (p_33 = 0; (p_33 != 9); p_33 = safe_add_func_uint64_t_u_u(p_33, 1))
        { /* block id: 32 */
            uint16_t l_75 = 0x3A0DL;
            uint64_t *l_82[1][3][9] = {{{&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53},{&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53},{&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53,&p_917->g_53}}};
            int32_t **l_88 = &p_917->g_73;
            int32_t l_177 = 0x1FCEB6DBL;
            int32_t l_179 = 0x1070625BL;
            int i, j, k;
            for (p_917->g_53 = 0; (p_917->g_53 <= 3); p_917->g_53 += 1)
            { /* block id: 35 */
                uint8_t l_95 = 0x0EL;
                uint8_t l_113[9][1][9] = {{{0x66L,0x52L,0x8DL,9UL,249UL,0x55L,0x66L,0xB0L,0x87L}},{{0x66L,0x52L,0x8DL,9UL,249UL,0x55L,0x66L,0xB0L,0x87L}},{{0x66L,0x52L,0x8DL,9UL,249UL,0x55L,0x66L,0xB0L,0x87L}},{{0x66L,0x52L,0x8DL,9UL,249UL,0x55L,0x66L,0xB0L,0x87L}},{{0x66L,0x52L,0x8DL,9UL,249UL,0x55L,0x66L,0xB0L,0x87L}},{{0x66L,0x52L,0x8DL,9UL,249UL,0x55L,0x66L,0xB0L,0x87L}},{{0x66L,0x52L,0x8DL,9UL,249UL,0x55L,0x66L,0xB0L,0x87L}},{{0x66L,0x52L,0x8DL,9UL,249UL,0x55L,0x66L,0xB0L,0x87L}},{{0x66L,0x52L,0x8DL,9UL,249UL,0x55L,0x66L,0xB0L,0x87L}}};
                uint64_t **l_146 = &l_144;
                int32_t l_168 = 0x41F251F0L;
                int i, j, k;
                for (p_917->g_50 = 3; (p_917->g_50 >= 0); p_917->g_50 -= 1)
                { /* block id: 38 */
                    int i;
                    for (p_917->g_71 = 0; (p_917->g_71 <= 3); p_917->g_71 += 1)
                    { /* block id: 41 */
                        int i;
                        (*p_917->g_72) = &p_917->g_71;
                        if (p_917->g_8[p_917->g_50])
                            break;
                    }
                    l_75 ^= p_917->g_8[p_917->g_53];
                }
                for (l_75 = 0; (l_75 <= 3); l_75 += 1)
                { /* block id: 49 */
                    uint64_t *l_83 = &p_917->g_53;
                    uint8_t *l_91 = &p_917->g_92[4];
                    int64_t *l_93 = &p_917->g_94;
                    int32_t l_127 = 0L;
                    int8_t *l_128 = &p_917->g_129;
                    int16_t *l_134[8][1];
                    int i, j;
                    for (i = 0; i < 8; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_134[i][j] = (void*)0;
                    }
                    l_96 &= ((p_917->g_8[l_75] != (safe_add_func_int64_t_s_s((((safe_lshift_func_int8_t_s_s((((((((*l_93) &= ((safe_mod_func_uint32_t_u_u((l_82[0][1][5] == (l_75 , l_83)), (((safe_mul_func_uint16_t_u_u(p_33, (safe_add_func_int8_t_s_s(p_917->g_8[1], ((*l_91) = ((l_88 == &p_917->g_73) == (safe_mul_func_uint8_t_u_u(p_917->g_8[l_75], 0x18L)))))))) >= FAKE_DIVERGE(p_917->global_1_offset, get_global_id(1), 10)) & FAKE_DIVERGE(p_917->local_0_offset, get_local_id(0), 10)))) || p_33)) | 0x3C438EE533B9E22AL) | (**l_88)) & (**p_917->g_72)) & p_33) != p_917->g_71), l_95)) | (*p_917->g_73)) ^ p_33), p_33))) && l_95);
                    for (p_917->g_94 = 3; (p_917->g_94 >= 0); p_917->g_94 -= 1)
                    { /* block id: 55 */
                        uint32_t *l_99 = &p_917->g_100;
                        int32_t *l_109 = (void*)0;
                        int32_t *l_110 = &l_96;
                        int32_t *l_111 = &l_96;
                        int32_t *l_112[5][9][5] = {{{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50}},{{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50}},{{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50}},{{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50}},{{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50},{&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50,&p_917->g_50}}};
                        int i, j, k;
                        (*p_917->g_73) = (0x35L > (safe_add_func_int64_t_s_s(((0UL != ((*l_99) |= (p_917->g_8[p_917->g_53] < p_33))) , (safe_lshift_func_uint16_t_u_u((p_917->g_100 & ((0xE453FC63L != ((safe_div_func_uint8_t_u_u(p_917->g_8[2], (l_95 || (safe_mul_func_uint16_t_u_u(p_917->g_69[7], (-10L)))))) || FAKE_DIVERGE(p_917->local_0_offset, get_local_id(0), 10))) == 253UL)), 14))), p_33)));
                        l_113[4][0][6]--;
                    }
                    (**l_88) = (safe_sub_func_int32_t_s_s(p_917->g_8[l_75], ((((p_917->g_135[2] &= (p_917->g_118 , ((safe_rshift_func_int8_t_s_s(((*l_128) = (safe_sub_func_int32_t_s_s(p_33, (l_127 = (((**l_88) & (safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_917->local_2_offset, get_local_id(2), 10), 7))) || (l_62 >= (safe_add_func_int32_t_s_s((p_917->g_71 >= l_62), (*p_917->g_73))))))))), 0)) <= (safe_div_func_int16_t_s_s(((void*)0 != l_132), 1L))))) ^ p_33) > GROUP_DIVERGE(1, 1)) || 0x20B4DDF1L)));
                    for (p_917->g_118.f4 = 0; (p_917->g_118.f4 <= 3); p_917->g_118.f4 += 1)
                    { /* block id: 66 */
                        int32_t *l_138 = (void*)0;
                        uint64_t **l_142 = &l_83;
                        uint64_t ***l_145[1][1][9] = {{{&l_143,&l_143,&l_143,&l_143,&l_143,&l_143,&l_143,&l_143,&l_143}}};
                        int64_t *l_152 = &p_917->g_153;
                        union U2 *l_155 = &p_917->g_118;
                        union U2 **l_154 = &l_155;
                        int i, j, k;
                        (**l_88) = ((((safe_sub_func_int64_t_s_s((p_33 & (GROUP_DIVERGE(0, 1) , ((*l_93) = ((l_139[0] = l_138) == (*p_917->g_72))))), ((safe_rshift_func_int16_t_s_s(((((*l_152) = (((l_142 != (l_146 = l_143)) >= (safe_sub_func_uint32_t_u_u((safe_sub_func_int16_t_s_s((((&p_917->g_73 != &l_138) > (l_151[1][1][4] & (0x53L && p_917->g_135[2]))) != l_62), p_917->g_92[1])), p_33))) , p_33)) == 7L) < l_96), 11)) ^ p_33))) != p_917->g_92[4]) , p_33) <= (-5L));
                        (*l_154) = (void*)0;
                        (**l_88) = ((safe_div_func_int64_t_s_s(((*l_93) = (safe_sub_func_uint64_t_u_u((1L | FAKE_DIVERGE(p_917->global_2_offset, get_global_id(2), 10)), p_917->g_135[0]))), (0xBF28D7A2L ^ ((((((((*l_128) = p_917->g_153) ^ (safe_add_func_int32_t_s_s(l_127, (((+p_917->g_8[l_75]) != (safe_mod_func_int16_t_s_s(((safe_rshift_func_int16_t_s_u(p_917->g_69[9], 6)) != ((((safe_rshift_func_uint8_t_u_u(0UL, 7)) , &l_142) != &p_917->g_58) , p_33)), 0xCDE9L))) ^ 0x44L)))) || l_168) & p_33) >= 0xB4L) != 0xB5L) & p_917->g_8[l_75])))) == p_917->g_133);
                        if ((**p_917->g_72))
                            continue;
                    }
                }
                for (p_917->g_118.f1 = 0; (p_917->g_118.f1 <= 3); p_917->g_118.f1 += 1)
                { /* block id: 81 */
                    int32_t *l_176[6] = {&p_917->g_71,(void*)0,&p_917->g_71,&p_917->g_71,(void*)0,&p_917->g_71};
                    int i;
                    (1 + 1);
                }
            }
        }
        for (p_917->g_53 = 0; (p_917->g_53 >= 18); p_917->g_53 = safe_add_func_uint64_t_u_u(p_917->g_53, 4))
        { /* block id: 103 */
            int32_t l_190[8][2] = {{0x1BA30310L,3L},{0x1BA30310L,3L},{0x1BA30310L,3L},{0x1BA30310L,3L},{0x1BA30310L,3L},{0x1BA30310L,3L},{0x1BA30310L,3L},{0x1BA30310L,3L}};
            uint64_t *l_193 = &p_917->g_53;
            uint64_t *l_195 = (void*)0;
            uint8_t *l_207 = (void*)0;
            uint64_t **l_243 = &l_195;
            uint64_t **l_245[3][10][7] = {{{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0}},{{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0}},{{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0},{(void*)0,&l_193,(void*)0,(void*)0,&l_193,(void*)0,(void*)0}}};
            int64_t l_269 = 1L;
            int32_t l_272 = 0x729780F7L;
            int32_t l_274 = 0x342A22D0L;
            int32_t l_281 = 0L;
            uint32_t l_282 = 4294967295UL;
            int16_t l_326[1][8][4] = {{{1L,0x0FA9L,0x20C1L,0x0FA9L},{1L,0x0FA9L,0x20C1L,0x0FA9L},{1L,0x0FA9L,0x20C1L,0x0FA9L},{1L,0x0FA9L,0x20C1L,0x0FA9L},{1L,0x0FA9L,0x20C1L,0x0FA9L},{1L,0x0FA9L,0x20C1L,0x0FA9L},{1L,0x0FA9L,0x20C1L,0x0FA9L},{1L,0x0FA9L,0x20C1L,0x0FA9L}}};
            int16_t l_340 = 0x3676L;
            int8_t ***l_368 = &l_306;
            uint64_t ****l_396 = (void*)0;
            int i, j, k;
            for (p_917->g_71 = 3; (p_917->g_71 >= 0); p_917->g_71 -= 1)
            { /* block id: 106 */
                if (l_62)
                    goto lbl_172;
            }
            if (p_33)
            { /* block id: 109 */
                uint8_t l_185[7] = {0xF1L,249UL,0xF1L,0xF1L,249UL,0xF1L,0xF1L};
                int32_t **l_200[6] = {&l_139[0],&l_139[0],&l_139[0],&l_139[0],&l_139[0],&l_139[0]};
                int8_t *l_250 = &p_917->g_129;
                int i;
                for (p_917->g_118.f4 = 0; (p_917->g_118.f4 <= 0); p_917->g_118.f4 += 1)
                { /* block id: 112 */
                    uint64_t ***l_189 = &p_917->g_58;
                    int64_t *l_237 = &p_917->g_94;
                    int64_t **l_236 = &l_237;
                    uint64_t ***l_241 = &p_917->g_58;
                    uint64_t ***l_242[3];
                    uint64_t **l_244 = &l_144;
                    int8_t *l_249 = &p_917->g_133;
                    int8_t **l_248[3];
                    int16_t *l_259 = &p_917->g_260;
                    int32_t l_261 = 0x53CCBC9EL;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_242[i] = &l_143;
                    for (i = 0; i < 3; i++)
                        l_248[i] = &l_249;
                    if (l_185[3])
                    { /* block id: 113 */
                        l_190[4][1] ^= ((safe_sub_func_int32_t_s_s((l_96 = (p_917->g_188 , p_33)), (((-1L) ^ (18446744073709551615UL < ((1UL == (l_189 != (void*)0)) , p_33))) , 0x006B9A27L))) > p_33);
                    }
                    else
                    { /* block id: 116 */
                        uint64_t **l_194 = &l_193;
                        int32_t ***l_201 = &l_200[5];
                        int32_t **l_203 = &l_139[p_917->g_118.f4];
                        int32_t ***l_202 = &l_203;
                        int32_t *l_205 = &p_917->g_71;
                        uint64_t *l_217 = (void*)0;
                        uint64_t *l_218 = &p_917->g_219;
                        int16_t *l_224 = (void*)0;
                        int16_t *l_225 = (void*)0;
                        int16_t *l_226[10][3][7] = {{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}},{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}},{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}},{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}},{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}},{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}},{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}},{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}},{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}},{{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62},{&l_62,&l_62,&l_62,(void*)0,(void*)0,(void*)0,&l_62}}};
                        int8_t *l_228 = &p_917->g_129;
                        uint32_t *l_232 = &p_917->g_135[1];
                        uint32_t **l_231 = &l_232;
                        int i, j, k;
                        l_139[p_917->g_118.f4] = &l_151[1][1][4];
                        (*p_917->g_73) = (((((safe_add_func_uint16_t_u_u((((((*l_194) = ((*l_143) = l_193)) != l_195) , l_96) || p_33), FAKE_DIVERGE(p_917->group_1_offset, get_group_id(1), 10))) <= l_185[2]) == ((*p_917->g_73) != 0x09FFE99AL)) == (safe_rshift_func_uint8_t_u_u(((p_917->g_92[4] ^= (safe_sub_func_uint8_t_u_u((((*l_201) = l_200[5]) != ((*l_202) = &l_139[p_917->g_118.f4])), 0x12L))) || 0x40L), 2))) <= l_185[1]);
                        l_205 = (p_33 , (l_139[p_917->g_118.f4] = l_204));
                        p_917->g_233 ^= (p_917->g_133 > (((p_917->g_206 , l_207) != ((safe_rshift_func_int8_t_s_s((((*p_917->g_73) = ((safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(0x776FL, 13)), ((*l_228) = (!(+(+(p_917->g_94 && (((*l_218)++) & (safe_add_func_int16_t_s_s((p_917->g_227 = 0x1181L), 1L)))))))))) , (18446744073709551607UL > (((safe_lshift_func_uint16_t_u_s((((*l_231) = (void*)0) == (void*)0), p_917->g_8[1])) >= 0xC8AD6DF7L) | p_33)))) ^ 0UL), p_917->g_153)) , (void*)0)) == p_33));
                    }
                    l_261 ^= (safe_rshift_func_int16_t_s_s(((GROUP_DIVERGE(1, 1) , ((*l_259) = ((p_917->g_129 && ((((((*l_204) = p_33) , ((*l_236) = (void*)0)) != l_238[7]) < (safe_rshift_func_uint16_t_u_u(((l_243 = &l_195) != (l_245[1][6][3] = l_244)), ((safe_mod_func_int32_t_s_s((l_132 != (l_250 = (void*)0)), (safe_lshift_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_u((+FAKE_DIVERGE(p_917->global_1_offset, get_global_id(1), 10)), ((void*)0 != l_238[7]))), 8)) <= 65535UL), FAKE_DIVERGE(p_917->global_0_offset, get_global_id(0), 10))), p_33)))) > l_190[6][0])))) && 0UL)) || p_33))) == 0UL), 0));
                    if ((*p_917->g_73))
                        break;
                }
            }
            else
            { /* block id: 142 */
                int32_t *l_262[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_262[i] = &l_151[2][1][4];
                l_262[1] = (*p_917->g_72);
                l_278++;
            }
            l_282++;
            for (l_276 = 0; (l_276 <= 2); l_276 += 1)
            { /* block id: 149 */
                int8_t *l_285 = &l_264[6];
                uint64_t ***l_323 = &l_245[1][6][3];
                int32_t l_327 = 0x4C62C782L;
                int32_t l_374[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_374[i] = 5L;
                if ((l_285 == &l_264[6]))
                { /* block id: 150 */
                    int8_t ***l_302 = (void*)0;
                    int8_t ***l_303 = (void*)0;
                    int8_t ***l_304 = &p_917->g_300;
                    uint16_t *l_307 = &p_917->g_233;
                    uint16_t *l_310 = &p_917->g_311;
                    uint64_t ***l_321 = &p_917->g_58;
                    uint64_t ****l_322 = &l_321;
                    int32_t l_324 = 0x1CD59E5DL;
                    int8_t l_325 = 0x03L;
                    int32_t l_409[4] = {0x0F266B38L,0x0F266B38L,0x0F266B38L,0x0F266B38L};
                    int i;
                    if ((!(safe_lshift_func_int16_t_s_u((safe_sub_func_uint64_t_u_u((((safe_lshift_func_int8_t_s_u((((safe_lshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s((safe_mul_func_uint16_t_u_u(((*l_310) = ((safe_mod_func_uint16_t_u_u((((*l_304) = p_917->g_300) != (p_917->g_305 , l_306)), p_917->g_153)) , (++(*l_307)))), (GROUP_DIVERGE(0, 1) == (((((safe_add_func_int8_t_s_s(4L, (((safe_div_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((((p_33 , l_320) == (l_323 = ((*l_322) = l_321))) != l_324), (*p_917->g_73))), l_325)) <= 0xB5D2E638L), (*p_917->g_73))) | 0L) , l_325))) | 1L) <= p_917->g_8[1]) , (*p_917->g_73)) != 0x71E6D9B8L)))), 18446744073709551615UL)), p_917->g_8[2])) , GROUP_DIVERGE(0, 1)) , l_326[0][4][0]), p_917->g_260)) || l_326[0][4][0]) >= p_33), 0x4BFCE7E004E41395L)), p_917->g_216))))
                    { /* block id: 156 */
                        if (p_917->g_71)
                            goto lbl_172;
                    }
                    else
                    { /* block id: 158 */
                        int32_t l_341 = 8L;
                        uint32_t *l_369 = &p_917->g_370;
                        uint32_t *l_371[10] = {&p_917->g_100,&p_917->g_100,&p_917->g_100,&p_917->g_100,&p_917->g_100,&p_917->g_100,&p_917->g_100,&p_917->g_100,&p_917->g_100,&p_917->g_100};
                        int i;
                        l_341 ^= (((p_33 == (l_327 = 0x425FA9EE565B0724L)) , ((safe_sub_func_int32_t_s_s(((*p_917->g_73) = ((safe_mod_func_int64_t_s_s(((p_917->g_332 != (safe_mul_func_int16_t_s_s((-10L), (((((*l_204) && ((safe_rshift_func_uint8_t_u_u(((void*)0 != &p_917->g_300), 6)) && (safe_add_func_int32_t_s_s((l_339 || (*p_917->g_73)), l_327)))) != 0x782F0279FFE74566L) && l_325) != 0x7010L)))) == p_917->g_260), 0x12FE5C71616FBDB8L)) , p_33)), 0x046EECE6L)) | p_917->g_227)) , l_340);
                        l_374[0] ^= ((p_917->g_71 && ((safe_unary_minus_func_int16_t_s((l_270 ^= ((((p_917->g_373 = (p_917->g_135[2] , ((safe_lshift_func_uint16_t_u_s(((GROUP_DIVERGE(2, 1) != ((safe_div_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (safe_rshift_func_int8_t_s_s((safe_mod_func_int16_t_s_s((safe_add_func_uint8_t_u_u(9UL, ((safe_mod_func_uint64_t_u_u((((*l_204) = (((*l_369) = (&p_917->g_300 == (((((6L > (safe_mul_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((p_33 == ((((FAKE_DIVERGE(p_917->global_2_offset, get_global_id(2), 10) < ((p_917->g_135[l_276] = (!((p_33 && (safe_mod_func_int64_t_s_s((safe_sub_func_uint8_t_u_u((p_917->g_92[4] = l_324), (l_367[2] != &p_917->g_260))), p_33))) ^ (-1L)))) < 9UL)) , 5UL) >= GROUP_DIVERGE(1, 1)) || 1L)), l_326[0][4][0])), (-1L)))) ^ (**p_917->g_300)) & p_33) != 0x3A14C7D38188DBC3L) , l_368))) , l_340)) | l_265), p_33)) >= l_190[1][1]))), p_917->g_206.f0)), 5)))) <= l_325)) , p_33), l_372)) > p_917->g_8[1]))) <= l_341) >= p_917->g_153) && FAKE_DIVERGE(p_917->local_2_offset, get_local_id(2), 10))))) >= 0L)) >= 0x79L);
                    }
                    (*p_917->g_73) = (safe_rshift_func_int16_t_s_s(6L, p_917->g_332));
                    for (p_917->g_153 = 20; (p_917->g_153 <= 18); p_917->g_153 = safe_sub_func_int8_t_s_s(p_917->g_153, 4))
                    { /* block id: 173 */
                        union U2 *l_379 = &p_917->g_118;
                        union U2 **l_380 = &l_379;
                        int32_t l_395 = 0L;
                        uint64_t *****l_397 = &l_322;
                        (*l_380) = l_379;
                        if (l_324)
                            goto lbl_172;
                        l_267 &= ((safe_rshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(l_326[0][4][0], p_33)), (safe_div_func_int64_t_s_s(0x3A5869DE72941B8CL, (safe_lshift_func_int16_t_s_u((((*l_397) = (((safe_mod_func_uint32_t_u_u(((safe_mod_func_uint16_t_u_u((((*l_204) != l_340) < ((((*p_917->g_301) , p_917->g_305) , (safe_lshift_func_int16_t_s_u(((&p_917->g_301 == &p_917->g_301) == p_33), l_269))) >= l_395)), (*l_204))) && FAKE_DIVERGE(p_917->group_1_offset, get_group_id(1), 10)), 4294967292UL)) & 1L) , l_396)) == &l_320), 15)))))) <= p_917->g_129);
                        l_409[0] ^= (l_395 = (l_324 &= ((*p_917->g_73) ^= (safe_rshift_func_int16_t_s_s((0x16A3DB87L != (((((!(safe_mul_func_int16_t_s_s((safe_unary_minus_func_int16_t_s(((safe_lshift_func_int8_t_s_u(l_327, 7)) != l_374[4]))), ((p_33 , &l_238[7]) != (((p_917->g_405 , (((safe_rshift_func_int16_t_s_u(p_33, (0xEDD1L ^ ((l_408 = p_33) != p_33)))) >= p_917->g_69[(l_276 + 6)]) & p_917->g_370)) == p_33) , (void*)0))))) , 0x47L) | l_326[0][6][2]) , l_325) == p_33)), 1)))));
                    }
                    return (*p_917->g_72);
                }
                else
                { /* block id: 185 */
                    for (p_917->g_227 = 0; (p_917->g_227 <= 2); p_917->g_227 += 1)
                    { /* block id: 188 */
                        if (p_33)
                            break;
                        if ((*p_917->g_73))
                            continue;
                    }
                    (*l_204) = ((((p_33 < (0x2B074A68DBB830A5L | (safe_rshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s((l_327 = (((((safe_add_func_uint32_t_u_u(l_374[0], ((safe_rshift_func_int8_t_s_u(((*l_285) = l_340), 6)) | (safe_add_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((&p_917->g_370 == (void*)0), l_422)), ((p_33 | (p_33 ^ (-9L))) < (*p_917->g_73))))))) >= p_33) | p_33) == (*p_917->g_301)) & 0x757C9443L)), 0L)), 10)))) , (void*)0) == l_423[1][0][1]) , 0x5F8C4AC0L);
                }
            }
        }
        (*p_917->g_73) = ((p_917->g_188 , l_425) != ((safe_lshift_func_int8_t_s_s((~0L), 0)) , l_429[3][0][1]));
        l_96 = ((l_431 != (l_438 = (p_917->g_433 , (((*l_204) = (((*l_436) = ((*l_435) = &l_430)) == &l_430)) , (p_917->g_437 , &l_432[0][6][6]))))) , ((0x0FEC1CD9L == (safe_div_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((l_238[1] != l_144), p_917->g_92[4])) >= FAKE_DIVERGE(p_917->global_2_offset, get_global_id(2), 10)), p_917->g_69[9]))) , (****l_436)));
    }
    for (l_266 = 0; (l_266 <= 6); l_266 += 1)
    { /* block id: 207 */
        uint8_t l_443 = 0x91L;
        int32_t l_444 = 0L;
        int32_t l_445[10] = {0x3844ACF8L,8L,0x3844ACF8L,0x3844ACF8L,8L,0x3844ACF8L,0x3844ACF8L,8L,0x3844ACF8L,0x3844ACF8L};
        int8_t l_477 = 4L;
        uint64_t **l_509[9][4][7] = {{{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0}},{{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0}},{{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0}},{{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0}},{{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0}},{{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0}},{{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0}},{{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0}},{{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0},{(void*)0,&l_144,(void*)0,&l_144,&l_144,&l_144,(void*)0}}};
        uint64_t **l_510 = &l_144;
        uint16_t *l_519 = &p_917->g_311;
        int i, j, k;
        if (((**l_430) |= l_443))
        { /* block id: 209 */
            uint8_t l_446 = 0xF1L;
            int32_t l_463 = 0x46DAC0E3L;
            ++l_446;
            l_444 &= l_446;
            l_444 = (safe_rshift_func_uint8_t_u_s((((void*)0 == &p_917->g_74) , ((-1L) ^ (p_917->g_332 , ((safe_div_func_int8_t_s_s(p_33, l_446)) != (+p_917->g_5))))), (safe_mod_func_int32_t_s_s((p_917->g_118.f4 = ((((**l_430) |= (safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((l_463 ^= (safe_lshift_func_uint16_t_u_s((safe_mod_func_uint8_t_u_u(0x3FL, 0x39L)), p_917->g_233))) , p_33), FAKE_DIVERGE(p_917->global_0_offset, get_global_id(0), 10))), 1))) & l_446) >= (**p_917->g_300))), 0x2C47D877L))));
        }
        else
        { /* block id: 216 */
            l_444 = ((*p_917->g_73) = p_33);
        }
        for (p_917->g_94 = 6; (p_917->g_94 >= 0); p_917->g_94 -= 1)
        { /* block id: 222 */
            int32_t *l_464 = &p_917->g_465;
            uint8_t *l_470 = &l_372;
            uint16_t *l_471 = &p_917->g_233;
            int32_t l_473[2][7];
            uint32_t l_492[6][1][8] = {{{1UL,1UL,0xDF65B01AL,0x54C37D6EL,2UL,0x54C37D6EL,0xDF65B01AL,1UL}},{{1UL,1UL,0xDF65B01AL,0x54C37D6EL,2UL,0x54C37D6EL,0xDF65B01AL,1UL}},{{1UL,1UL,0xDF65B01AL,0x54C37D6EL,2UL,0x54C37D6EL,0xDF65B01AL,1UL}},{{1UL,1UL,0xDF65B01AL,0x54C37D6EL,2UL,0x54C37D6EL,0xDF65B01AL,1UL}},{{1UL,1UL,0xDF65B01AL,0x54C37D6EL,2UL,0x54C37D6EL,0xDF65B01AL,1UL}},{{1UL,1UL,0xDF65B01AL,0x54C37D6EL,2UL,0x54C37D6EL,0xDF65B01AL,1UL}}};
            uint32_t *l_498 = &p_917->g_8[1];
            uint32_t l_502 = 9UL;
            int i, j, k;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 7; j++)
                    l_473[i][j] = 0x063BA7BFL;
            }
            (**l_430) = ((p_33 , ((((*l_464) = (&p_917->g_58 != (void*)0)) , ((safe_mod_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((((((((*l_470) = 0x76L) <= ((p_33 > (((*l_471) |= p_917->g_135[0]) <= l_472[1])) || (l_473[0][4] = ((*l_144) &= p_33)))) & (safe_lshift_func_int8_t_s_u((l_264[p_917->g_94] = ((p_917->g_476[0] , (void*)0) != l_464)), 1))) != l_477) ^ 0x0EL) && GROUP_DIVERGE(0, 1)), GROUP_DIVERGE(0, 1))), p_917->g_311)) | p_917->g_260)) >= FAKE_DIVERGE(p_917->local_1_offset, get_local_id(1), 10))) < p_33);
            if (((safe_mod_func_uint8_t_u_u((GROUP_DIVERGE(1, 1) , (p_33 != 0L)), (safe_mod_func_int32_t_s_s((safe_div_func_int8_t_s_s((**p_917->g_300), p_917->g_92[2])), (safe_rshift_func_int8_t_s_u((((safe_rshift_func_int16_t_s_u(((safe_div_func_int8_t_s_s((l_264[p_917->g_94] = l_492[2][0][7]), (safe_sub_func_int8_t_s_s(((((((*l_498) |= (p_917->g_100 | (safe_unary_minus_func_int16_t_s(((((+0x4D249AC5L) | (safe_add_func_uint32_t_u_u(p_33, p_917->g_94))) & l_492[5][0][2]) & 1UL))))) , p_917->g_476[0].f0) || (*l_204)) == (*l_204)) ^ 0x6294L), GROUP_DIVERGE(2, 1))))) , p_917->g_216), 8)) && p_33) || p_917->g_67), l_473[0][4])))))) || p_917->g_206.f0))
            { /* block id: 232 */
                int32_t *l_499 = &p_917->g_5;
                return l_499;
            }
            else
            { /* block id: 234 */
                int8_t l_500[1][10] = {{0x68L,0x68L,0x68L,0x68L,0x68L,0x68L,0x68L,0x68L,0x68L,0x68L}};
                int32_t l_501[9] = {0x63F30827L,0x63F30827L,0x63F30827L,0x63F30827L,0x63F30827L,0x63F30827L,0x63F30827L,0x63F30827L,0x63F30827L};
                int i, j;
                l_502--;
            }
            (*l_430) = (p_917->g_135[2] , (*p_917->g_72));
            if ((*p_917->g_73))
                continue;
        }
        p_917->g_68 = ((safe_sub_func_uint8_t_u_u((((**l_430) = ((&l_132 != (void*)0) || (safe_sub_func_int16_t_s_s(p_33, ((-8L) && ((l_509[6][3][2] = l_509[6][3][2]) != l_510)))))) >= (safe_sub_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(0xC5L, (((safe_lshift_func_uint16_t_u_s(((((((safe_mul_func_int16_t_s_s(p_917->g_433.f0, ((*l_519) ^= GROUP_DIVERGE(0, 1)))) | (GROUP_DIVERGE(2, 1) >= (safe_sub_func_uint16_t_u_u(((l_445[8] = ((safe_lshift_func_int16_t_s_s((0xFF28D7DDL && (-6L)), l_444)) < p_917->g_260)) && FAKE_DIVERGE(p_917->global_2_offset, get_global_id(2), 10)), p_33)))) , p_917->g_219) , p_33) | l_443) , p_33), 5)) || 0x4B9B0143L) ^ l_477))), l_443))), l_444)) >= p_917->g_373);
    }
    --p_917->g_528;
    return (*p_917->g_72);
}


/* ------------------------------------------ */
/* 
 * reads : p_917->g_59
 * writes: p_917->g_58
 */
int16_t  func_37(uint64_t * p_38, uint64_t * p_39, struct S3 * p_917)
{ /* block id: 22 */
    uint8_t l_60 = 254UL;
    (*p_917->g_59) = &p_38;
    return l_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_917->g_53
 * writes: p_917->g_53 p_917->g_3
 */
uint64_t * func_40(uint64_t * p_41, struct S3 * p_917)
{ /* block id: 14 */
    int64_t l_54[1][7][2] = {{{0x08375F08A7CF5EE2L,(-1L)},{0x08375F08A7CF5EE2L,(-1L)},{0x08375F08A7CF5EE2L,(-1L)},{0x08375F08A7CF5EE2L,(-1L)},{0x08375F08A7CF5EE2L,(-1L)},{0x08375F08A7CF5EE2L,(-1L)},{0x08375F08A7CF5EE2L,(-1L)}}};
    int32_t *l_55[9][1][8] = {{{&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5}},{{&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5}},{{&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5}},{{&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5}},{{&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5}},{{&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5}},{{&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5}},{{&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5}},{{&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5,&p_917->g_5}}};
    uint64_t *l_56 = &p_917->g_53;
    int i, j, k;
    for (p_917->g_53 = 0; (p_917->g_53 <= 0); p_917->g_53 += 1)
    { /* block id: 17 */
        return p_41;
    }
    p_917->g_3 = 0x2220C99DL;
    return l_56;
}


/* ------------------------------------------ */
/* 
 * reads : p_917->g_3 p_917->g_8 p_917->g_50
 * writes: p_917->g_50
 */
uint64_t * func_42(int32_t  p_43, struct S3 * p_917)
{ /* block id: 9 */
    int32_t l_48[10][10] = {{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L},{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L},{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L},{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L},{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L},{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L},{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L},{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L},{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L},{0x15DD6864L,5L,0x04E0BBE0L,(-1L),0x2CD0AB83L,0x4A727646L,0x15DD6864L,0x55833AEDL,1L,1L}};
    int32_t *l_49[10][9] = {{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0},{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0},{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0},{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0},{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0},{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0},{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0},{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0},{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0},{&p_917->g_5,&p_917->g_50,&p_917->g_5,(void*)0,&p_917->g_5,&p_917->g_5,(void*)0,&p_917->g_5,(void*)0}};
    int32_t *l_51 = (void*)0;
    uint64_t *l_52 = &p_917->g_53;
    int i, j;
    p_917->g_50 |= (safe_add_func_uint16_t_u_u(((safe_div_func_int8_t_s_s((-6L), p_917->g_3)) == p_43), (0x630DE2FDL != (p_917->g_8[0] ^ l_48[1][7]))));
    l_49[9][8] = (l_51 = l_49[9][8]);
    return l_52;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_918;
    struct S3* p_917 = &c_918;
    struct S3 c_919 = {
        0x205B2906L, // p_917->g_3
        2L, // p_917->g_5
        {0x31C587C7L,0x31C587C7L,0x31C587C7L,0x31C587C7L}, // p_917->g_8
        0x3E4A9FF1L, // p_917->g_50
        0UL, // p_917->g_53
        (void*)0, // p_917->g_58
        {{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58},{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58},{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58},{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58},{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58},{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58},{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58},{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58},{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58},{&p_917->g_58,&p_917->g_58,&p_917->g_58,&p_917->g_58}}, // p_917->g_57
        &p_917->g_58, // p_917->g_59
        6L, // p_917->g_67
        0x0B8566A4L, // p_917->g_68
        {0x599A0A08L,0x599A0A08L,0x599A0A08L,0x599A0A08L,0x599A0A08L,0x599A0A08L,0x599A0A08L,0x599A0A08L,0x599A0A08L,0x599A0A08L}, // p_917->g_69
        0x3C214255L, // p_917->g_70
        0x7FF35779L, // p_917->g_71
        &p_917->g_50, // p_917->g_73
        &p_917->g_73, // p_917->g_72
        (void*)0, // p_917->g_74
        {255UL,0UL,255UL,255UL,0UL,255UL}, // p_917->g_92
        1L, // p_917->g_94
        4294967287UL, // p_917->g_100
        {0x08413730F596B175L}, // p_917->g_118
        1L, // p_917->g_129
        0x51L, // p_917->g_133
        {0x5CB47B8EL,0x5CB47B8EL,0x5CB47B8EL}, // p_917->g_135
        6L, // p_917->g_153
        {8L}, // p_917->g_188
        {1L}, // p_917->g_206
        1L, // p_917->g_216
        0UL, // p_917->g_219
        0x5DB38199L, // p_917->g_227
        65531UL, // p_917->g_233
        6L, // p_917->g_260
        &p_917->g_133, // p_917->g_301
        &p_917->g_301, // p_917->g_300
        {0x1EC15FA3F534664DL}, // p_917->g_305
        0x27C2L, // p_917->g_311
        0x5CB6L, // p_917->g_332
        0xD2866269L, // p_917->g_370
        0x477A69A3L, // p_917->g_373
        {3L}, // p_917->g_405
        {0x086C669DC92CF7FCL}, // p_917->g_433
        {0x76F7FDB96DCF8277L}, // p_917->g_437
        (-1L), // p_917->g_465
        {{0x77CB0488DA91FBFDL},{0x77CB0488DA91FBFDL},{0x77CB0488DA91FBFDL},{0x77CB0488DA91FBFDL}}, // p_917->g_476
        0x095D906CL, // p_917->g_528
        {0L}, // p_917->g_531
        {-8L}, // p_917->g_598
        (void*)0, // p_917->g_614
        &p_917->g_614, // p_917->g_613
        0x797AL, // p_917->g_637
        &p_917->g_373, // p_917->g_648
        &p_917->g_476[0].f0, // p_917->g_652
        &p_917->g_652, // p_917->g_651
        0x91L, // p_917->g_675
        &p_917->g_73, // p_917->g_713
        {1UL,1UL,1UL,1UL,1UL}, // p_917->g_734
        0x526CB3D4L, // p_917->g_735
        {{{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]}},{{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]}},{{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]}},{{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]}},{{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]}},{{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]},{&p_917->g_734[0],&p_917->g_735,&p_917->g_734[0]}}}, // p_917->g_733
        {&p_917->g_733[2][4][2],&p_917->g_733[2][4][2],&p_917->g_733[2][4][2],&p_917->g_733[2][4][2],&p_917->g_733[2][4][2],&p_917->g_733[2][4][2]}, // p_917->g_732
        (-3L), // p_917->g_755
        1UL, // p_917->g_757
        &p_917->g_73, // p_917->g_762
        {0L}, // p_917->g_782
        &p_917->g_782, // p_917->g_783
        &p_917->g_370, // p_917->g_793
        (void*)0, // p_917->g_834
        &p_917->g_373, // p_917->g_838
        (void*)0, // p_917->g_856
        {{{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856}},{{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856}},{{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856}},{{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856}},{{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856}},{{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856}},{{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856},{(void*)0,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856,&p_917->g_856}}}, // p_917->g_855
        &p_917->g_73, // p_917->g_894
        sequence_input[get_global_id(0)], // p_917->global_0_offset
        sequence_input[get_global_id(1)], // p_917->global_1_offset
        sequence_input[get_global_id(2)], // p_917->global_2_offset
        sequence_input[get_local_id(0)], // p_917->local_0_offset
        sequence_input[get_local_id(1)], // p_917->local_1_offset
        sequence_input[get_local_id(2)], // p_917->local_2_offset
        sequence_input[get_group_id(0)], // p_917->group_0_offset
        sequence_input[get_group_id(1)], // p_917->group_1_offset
        sequence_input[get_group_id(2)], // p_917->group_2_offset
    };
    c_918 = c_919;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_917);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_917->g_3, "p_917->g_3", print_hash_value);
    transparent_crc(p_917->g_5, "p_917->g_5", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_917->g_8[i], "p_917->g_8[i]", print_hash_value);

    }
    transparent_crc(p_917->g_50, "p_917->g_50", print_hash_value);
    transparent_crc(p_917->g_53, "p_917->g_53", print_hash_value);
    transparent_crc(p_917->g_67, "p_917->g_67", print_hash_value);
    transparent_crc(p_917->g_68, "p_917->g_68", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_917->g_69[i], "p_917->g_69[i]", print_hash_value);

    }
    transparent_crc(p_917->g_70, "p_917->g_70", print_hash_value);
    transparent_crc(p_917->g_71, "p_917->g_71", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_917->g_92[i], "p_917->g_92[i]", print_hash_value);

    }
    transparent_crc(p_917->g_94, "p_917->g_94", print_hash_value);
    transparent_crc(p_917->g_100, "p_917->g_100", print_hash_value);
    transparent_crc(p_917->g_129, "p_917->g_129", print_hash_value);
    transparent_crc(p_917->g_133, "p_917->g_133", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_917->g_135[i], "p_917->g_135[i]", print_hash_value);

    }
    transparent_crc(p_917->g_153, "p_917->g_153", print_hash_value);
    transparent_crc(p_917->g_188.f0, "p_917->g_188.f0", print_hash_value);
    transparent_crc(p_917->g_206.f0, "p_917->g_206.f0", print_hash_value);
    transparent_crc(p_917->g_216, "p_917->g_216", print_hash_value);
    transparent_crc(p_917->g_219, "p_917->g_219", print_hash_value);
    transparent_crc(p_917->g_227, "p_917->g_227", print_hash_value);
    transparent_crc(p_917->g_233, "p_917->g_233", print_hash_value);
    transparent_crc(p_917->g_260, "p_917->g_260", print_hash_value);
    transparent_crc(p_917->g_305.f0, "p_917->g_305.f0", print_hash_value);
    transparent_crc(p_917->g_311, "p_917->g_311", print_hash_value);
    transparent_crc(p_917->g_332, "p_917->g_332", print_hash_value);
    transparent_crc(p_917->g_370, "p_917->g_370", print_hash_value);
    transparent_crc(p_917->g_373, "p_917->g_373", print_hash_value);
    transparent_crc(p_917->g_405.f0, "p_917->g_405.f0", print_hash_value);
    transparent_crc(p_917->g_433.f0, "p_917->g_433.f0", print_hash_value);
    transparent_crc(p_917->g_437.f0, "p_917->g_437.f0", print_hash_value);
    transparent_crc(p_917->g_465, "p_917->g_465", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_917->g_476[i].f0, "p_917->g_476[i].f0", print_hash_value);

    }
    transparent_crc(p_917->g_528, "p_917->g_528", print_hash_value);
    transparent_crc(p_917->g_531.f0, "p_917->g_531.f0", print_hash_value);
    transparent_crc(p_917->g_598.f0, "p_917->g_598.f0", print_hash_value);
    transparent_crc(p_917->g_637, "p_917->g_637", print_hash_value);
    transparent_crc(p_917->g_675, "p_917->g_675", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_917->g_734[i], "p_917->g_734[i]", print_hash_value);

    }
    transparent_crc(p_917->g_735, "p_917->g_735", print_hash_value);
    transparent_crc(p_917->g_755, "p_917->g_755", print_hash_value);
    transparent_crc(p_917->g_757, "p_917->g_757", print_hash_value);
    transparent_crc(p_917->g_782.f0, "p_917->g_782.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
