// ---atomic_reductions ---fake_divergence -g 52,6,16 -l 1,6,2
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
union U0 {
   uint32_t  f0;
   int64_t  f1;
   volatile int8_t  f2;
};

struct S1 {
    int32_t g_2;
    int32_t g_5;
    uint32_t g_12;
    int32_t g_18;
    int8_t g_22;
    volatile union U0 g_73;
    int8_t g_75;
    int32_t g_77[9][9];
    volatile int16_t g_83[1][4];
    union U0 g_88;
    uint64_t g_93[6][6][4];
    int32_t g_105[3][7];
    uint16_t g_108[9][7][4];
    int64_t g_110[9];
    int16_t g_111;
    volatile uint64_t g_130;
    volatile uint64_t * volatile g_129;
    volatile uint64_t * volatile *g_128;
    uint32_t g_132;
    uint16_t g_134[9];
    uint8_t g_140;
    int32_t *g_174;
    int32_t g_199;
    int32_t *g_198;
    int32_t g_200[5][10];
    int64_t g_216;
    uint32_t g_220[3][8];
    union U0 g_253[3];
    uint32_t g_260;
    int16_t g_261;
    int32_t ** volatile g_283[10];
    int8_t *g_342[6][2][2];
    int8_t ** volatile g_341;
    int32_t g_344;
    int32_t g_375;
    int32_t g_384;
    int8_t g_389[1][4][3];
    uint16_t g_390;
    int8_t g_417;
    int32_t * volatile g_427;
    int64_t *g_432;
    int64_t * volatile *g_431;
    int64_t * volatile * volatile * volatile g_430;
    uint32_t g_538;
    uint32_t *g_537;
    int32_t ** volatile g_539;
    volatile union U0 g_587;
    volatile int8_t *g_598;
    volatile int8_t **g_597[4][6];
    volatile int8_t ***g_596;
    uint64_t g_635;
    uint32_t *g_636;
    int32_t * volatile g_638[2][6][6];
    int8_t g_641;
    int8_t *g_640;
    uint32_t g_656;
    int64_t g_687;
    uint8_t g_692;
    uint32_t g_694;
    int32_t g_697;
    int32_t g_699;
    volatile uint32_t g_731;
    int16_t g_748;
    int32_t ** volatile g_750;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
int8_t  func_1(struct S1 * p_754);
uint32_t  func_13(int32_t  p_14, uint32_t  p_15, struct S1 * p_754);
int8_t  func_29(int8_t * p_30, int32_t  p_31, int32_t  p_32, int32_t * p_33, int8_t * p_34, struct S1 * p_754);
int32_t  func_35(uint8_t  p_36, uint32_t  p_37, int32_t  p_38, struct S1 * p_754);
int32_t  func_41(uint32_t  p_42, int32_t * p_43, int32_t * p_44, struct S1 * p_754);
int32_t * func_45(int32_t * p_46, int32_t  p_47, int64_t  p_48, int8_t * p_49, int32_t  p_50, struct S1 * p_754);
int64_t  func_51(int32_t * p_52, int32_t  p_53, int32_t  p_54, int64_t  p_55, struct S1 * p_754);
int32_t * func_56(int32_t * p_57, uint64_t  p_58, int32_t * p_59, struct S1 * p_754);
int32_t  func_60(uint32_t  p_61, uint64_t  p_62, uint64_t  p_63, uint64_t  p_64, struct S1 * p_754);
uint8_t  func_68(int64_t  p_69, int8_t * p_70, struct S1 * p_754);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_754->g_2 p_754->g_341 p_754->g_342 p_754->g_636 p_754->g_88.f0 p_754->g_640 p_754->g_431 p_754->g_432 p_754->g_216 p_754->g_174 p_754->g_344 p_754->g_77 p_754->g_537 p_754->g_538 p_754->g_5 p_754->g_748 p_754->g_750 p_754->g_641
 * writes: p_754->g_2 p_754->g_5 p_754->g_641 p_754->g_748 p_754->g_174
 */
int8_t  func_1(struct S1 * p_754)
{ /* block id: 4 */
    uint64_t l_16 = 18446744073709551611UL;
    int32_t *l_732[8][9][3] = {{{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697}},{{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697}},{{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697}},{{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697}},{{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697}},{{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697}},{{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697}},{{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697},{&p_754->g_18,&p_754->g_5,&p_754->g_697}}};
    uint32_t l_746 = 0x8FBD4995L;
    uint32_t l_747[3];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_747[i] = 4294967287UL;
    for (p_754->g_2 = 0; (p_754->g_2 != (-3)); p_754->g_2 = safe_sub_func_int64_t_s_s(p_754->g_2, 1))
    { /* block id: 7 */
        int8_t l_693 = 0x53L;
        int8_t *l_735 = &p_754->g_417;
        uint64_t *l_736 = &l_16;
        uint32_t l_745 = 0UL;
        int32_t *l_749 = &p_754->g_344;
        for (p_754->g_5 = 0; (p_754->g_5 < 1); p_754->g_5 = safe_add_func_int64_t_s_s(p_754->g_5, 3))
        { /* block id: 10 */
            int64_t *l_686 = &p_754->g_687;
            int32_t l_688 = 0x0194AE75L;
            uint8_t *l_691 = &p_754->g_692;
            int32_t *l_695 = &l_688;
            int16_t *l_696 = (void*)0;
            int32_t *l_698[7][7][5];
            int32_t **l_700 = &p_754->g_174;
            uint16_t *l_709 = &p_754->g_390;
            uint16_t **l_708 = &l_709;
            uint16_t ***l_707 = &l_708;
            int32_t *l_722 = (void*)0;
            int32_t **l_721 = &l_722;
            int32_t *l_730 = &p_754->g_200[3][8];
            int32_t **l_729 = &l_730;
            int i, j, k;
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 7; j++)
                {
                    for (k = 0; k < 5; k++)
                        l_698[i][j][k] = &p_754->g_699;
                }
            }
            (1 + 1);
        }
        p_754->g_5 &= ((~((((*p_754->g_640) = ((l_735 = (*p_754->g_341)) != ((*p_754->g_636) , &l_693))) > (l_736 == &p_754->g_93[0][3][3])) > (l_693 != ((0x06L >= (safe_sub_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u((((safe_rshift_func_int8_t_s_u(l_745, (((0x5FL <= l_746) & l_747[2]) <= (**p_754->g_431)))) > l_745) && (-1L)), l_745)), l_745))) < (*p_754->g_174))))) ^ (*p_754->g_537));
        p_754->g_748 |= (*p_754->g_174);
        (*p_754->g_750) = l_749;
    }
    for (p_754->g_5 = 0; (p_754->g_5 != (-11)); --p_754->g_5)
    { /* block id: 307 */
        int32_t l_753 = 1L;
        return l_753;
    }
    return (*p_754->g_640);
}


/* ------------------------------------------ */
/* 
 * reads : p_754->g_5 p_754->g_18 p_754->g_22 p_754->g_2 p_754->g_73 p_754->g_88 p_754->g_93 p_754->g_77 p_754->g_105 p_754->g_108 p_754->g_110 p_754->g_88.f0 p_754->g_83 p_754->g_128 p_754->g_134 p_754->g_140 p_754->g_88.f1 p_754->g_174 p_754->g_129 p_754->g_199 p_754->g_220 p_754->g_341 p_754->g_344 p_754->g_75 p_754->g_132 p_754->g_200 p_754->g_390 p_754->g_389 p_754->g_260 p_754->g_375 p_754->g_198 p_754->g_261 p_754->g_427 p_754->g_430 p_754->g_384 p_754->g_216 p_754->g_130 p_754->g_539 p_754->g_431 p_754->g_432 p_754->g_538 p_754->g_587 p_754->g_596 p_754->g_417 p_754->g_640 p_754->g_656 p_754->g_641
 * writes: p_754->g_18 p_754->g_22 p_754->g_93 p_754->g_105 p_754->g_77 p_754->g_108 p_754->g_110 p_754->g_111 p_754->g_88.f0 p_754->g_75 p_754->g_132 p_754->g_134 p_754->g_140 p_754->g_88.f1 p_754->g_216 p_754->g_260 p_754->g_261 p_754->g_253.f1 p_754->g_344 p_754->g_342 p_754->g_174 p_754->g_375 p_754->g_390 p_754->g_389 p_754->g_417 p_754->g_384 p_754->g_198 p_754->g_537 p_754->g_635 p_754->g_636 p_754->g_656
 */
uint32_t  func_13(int32_t  p_14, uint32_t  p_15, struct S1 * p_754)
{ /* block id: 11 */
    int32_t *l_17 = &p_754->g_18;
    int8_t *l_21[1];
    uint8_t l_564 = 3UL;
    int i;
    for (i = 0; i < 1; i++)
        l_21[i] = &p_754->g_22;
    (*l_17) ^= p_754->g_5;
    (*l_17) = ((((p_754->g_22 ^= (*l_17)) | ((!(safe_lshift_func_uint8_t_u_u((!(safe_sub_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(func_29(l_21[0], p_14, func_35(((((((!(+0x99843334ADC6F79BL)) , 65535UL) & (safe_add_func_int32_t_s_s(func_41(p_14, l_17, func_45(l_17, (func_51(func_56(l_17, p_754->g_2, &p_754->g_5, p_754), (*p_754->g_198), p_14, p_754->g_200[0][7], p_754) && 0x3B71875B53FB0488L), p_754->g_200[1][6], l_21[0], p_754->g_199, p_754), p_754), p_754->g_538))) || (*l_17)) & p_754->g_5) < l_564), (*l_17), p_14, p_754), l_17, p_754->g_640, p_754), 3)), 0x9FL))), FAKE_DIVERGE(p_754->local_0_offset, get_local_id(0), 10)))) <= p_754->g_220[0][1])) , GROUP_DIVERGE(2, 1)) || p_754->g_2);
    return (*l_17);
}


/* ------------------------------------------ */
/* 
 * reads : p_754->g_656 p_754->g_641
 * writes: p_754->g_656 p_754->g_77
 */
int8_t  func_29(int8_t * p_30, int32_t  p_31, int32_t  p_32, int32_t * p_33, int8_t * p_34, struct S1 * p_754)
{ /* block id: 279 */
    int8_t l_642 = 1L;
    int32_t *l_643 = &p_754->g_77[6][2];
    int32_t *l_644 = &p_754->g_77[2][2];
    int32_t *l_645 = &p_754->g_77[6][8];
    int32_t *l_646 = &p_754->g_344;
    int32_t *l_647 = &p_754->g_77[6][8];
    int32_t *l_648 = &p_754->g_77[6][8];
    int32_t *l_649 = (void*)0;
    int32_t *l_650 = &p_754->g_77[6][8];
    int32_t *l_651 = &p_754->g_77[6][8];
    int32_t *l_652 = &p_754->g_77[1][2];
    int32_t *l_653 = &p_754->g_77[5][0];
    int32_t *l_654[9] = {&p_754->g_2,&p_754->g_77[8][5],&p_754->g_2,&p_754->g_2,&p_754->g_77[8][5],&p_754->g_2,&p_754->g_2,&p_754->g_77[8][5],&p_754->g_2};
    int32_t l_655 = 0x6CBEE498L;
    int64_t l_661 = 0x69FC2498E008AAB2L;
    int i;
    p_754->g_656--;
    (*l_647) = (safe_lshift_func_uint8_t_u_u(l_661, 2));
    return (*p_34);
}


/* ------------------------------------------ */
/* 
 * reads : p_754->g_261 p_754->g_587 p_754->g_105 p_754->g_83 p_754->g_596 p_754->g_220 p_754->g_431 p_754->g_432 p_754->g_93 p_754->g_140 p_754->g_390 p_754->g_88.f1 p_754->g_260 p_754->g_134 p_754->g_538 p_754->g_5 p_754->g_384 p_754->g_417 p_754->g_2 p_754->g_129 p_754->g_130 p_754->g_77
 * writes: p_754->g_261 p_754->g_216 p_754->g_88.f1 p_754->g_260 p_754->g_384 p_754->g_253.f1 p_754->g_93 p_754->g_635 p_754->g_140 p_754->g_636 p_754->g_77
 */
int32_t  func_35(uint8_t  p_36, uint32_t  p_37, int32_t  p_38, struct S1 * p_754)
{ /* block id: 249 */
    uint32_t l_568 = 0xC098166FL;
    uint32_t l_599[4] = {0xCD8308F9L,0xCD8308F9L,0xCD8308F9L,0xCD8308F9L};
    int32_t l_604 = 0x2B33C57FL;
    uint64_t *l_632 = (void*)0;
    uint64_t *l_633 = &p_754->g_93[0][5][2];
    uint64_t *l_634 = &p_754->g_635;
    uint32_t *l_637 = &p_754->g_220[0][1];
    int32_t *l_639 = &p_754->g_77[8][5];
    int i;
    for (p_754->g_261 = 0; (p_754->g_261 == 9); p_754->g_261++)
    { /* block id: 252 */
        int32_t *l_567[7] = {&p_754->g_344,&p_754->g_344,&p_754->g_344,&p_754->g_344,&p_754->g_344,&p_754->g_344,&p_754->g_344};
        int64_t *l_600 = &p_754->g_253[0].f1;
        int64_t *l_601 = &p_754->g_253[0].f1;
        int64_t *l_602 = &p_754->g_88.f1;
        int8_t *l_603[3][1];
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_603[i][j] = &p_754->g_417;
        }
        ++l_568;
        if ((safe_add_func_int8_t_s_s((l_604 |= (((*l_602) |= ((safe_rshift_func_int16_t_s_s((((safe_mod_func_uint64_t_u_u((p_37 != ((l_568 , (l_568 | FAKE_DIVERGE(p_754->group_2_offset, get_group_id(2), 10))) , (((safe_add_func_uint16_t_u_u((FAKE_DIVERGE(p_754->local_1_offset, get_local_id(1), 10) == ((safe_rshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s(((((safe_add_func_int16_t_s_s(((safe_add_func_uint64_t_u_u((p_754->g_587 , (safe_add_func_uint64_t_u_u(0x8DD7DF42E41BBC82L, ((p_38 , (l_568 , (((**p_754->g_431) = (safe_div_func_uint16_t_u_u((FAKE_DIVERGE(p_754->local_1_offset, get_local_id(1), 10) , p_754->g_105[0][2]), (safe_mod_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u((((((void*)0 != &p_754->g_537) && p_36) | (-6L)) ^ p_754->g_83[0][0]), GROUP_DIVERGE(0, 1))) , (void*)0) != p_754->g_596), p_754->g_220[2][7]))))) < p_38))) <= p_38)))), p_754->g_93[0][3][3])) , p_38), l_599[3])) || l_599[1]) && 0x58A2C891L) < GROUP_DIVERGE(0, 1)), p_754->g_140)), 10)) != (-4L))), p_754->g_390)) > p_37) <= p_36))), p_36)) == FAKE_DIVERGE(p_754->group_0_offset, get_group_id(0), 10)) | 8L), p_38)) == 0x52EDL)) > 18446744073709551615UL)), p_38)))
        { /* block id: 257 */
            l_604 = (-2L);
        }
        else
        { /* block id: 259 */
            uint16_t l_611 = 65535UL;
            for (p_754->g_260 = 0; (p_754->g_260 < 31); p_754->g_260 = safe_add_func_uint8_t_u_u(p_754->g_260, 4))
            { /* block id: 262 */
                int32_t l_620 = 0x0C6FA19AL;
                uint8_t l_625 = 248UL;
                int32_t *l_626 = &p_754->g_384;
                int32_t l_627 = 0x24DF6378L;
                l_620 = (safe_sub_func_int32_t_s_s((safe_add_func_int8_t_s_s((!((l_604 = (-1L)) ^ 251UL)), l_611)), ((((*l_600) = (safe_lshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_u(p_754->g_134[6], (7UL || (safe_mod_func_uint64_t_u_u(((l_620 <= ((safe_mul_func_uint16_t_u_u((safe_add_func_int8_t_s_s(l_611, (+(((*l_626) |= ((p_36 , (((l_625 | p_38) && p_38) <= p_754->g_538)) || p_754->g_5)) , 0x6DL)))), p_754->g_83[0][3])) , l_627)) || 0x0061DAC437827727L), 1UL))))), p_754->g_417))) >= p_754->g_2) > p_37)));
            }
            if (l_599[3])
                break;
            if (p_37)
                continue;
        }
    }
    (*l_639) = (((((*l_634) = ((*l_633) |= (safe_rshift_func_uint8_t_u_u(p_754->g_220[0][1], 6)))) , (((p_754->g_140 &= 0xCCL) , ((*l_633) ^= (*p_754->g_129))) || ((-6L) ^ l_599[2]))) > ((p_754->g_636 = &p_754->g_220[1][7]) == l_637)) && p_754->g_390);
    return (*l_639);
}


/* ------------------------------------------ */
/* 
 * reads : p_754->g_128 p_754->g_129 p_754->g_130 p_754->g_539 p_754->g_75 p_754->g_18 p_754->g_430 p_754->g_431 p_754->g_432 p_754->g_216 p_754->g_344 p_754->g_5
 * writes: p_754->g_537 p_754->g_174
 */
int32_t  func_41(uint32_t  p_42, int32_t * p_43, int32_t * p_44, struct S1 * p_754)
{ /* block id: 240 */
    uint32_t *l_536 = &p_754->g_12;
    uint32_t **l_535[10][5][2] = {{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}},{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}},{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}},{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}},{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}},{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}},{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}},{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}},{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}},{{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536},{&l_536,&l_536}}};
    int32_t l_542 = (-1L);
    int32_t l_543[7] = {1L,1L,1L,1L,1L,1L,1L};
    uint32_t l_544 = 0xE761B991L;
    int32_t l_563[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
    int i, j, k;
    if (((safe_add_func_uint16_t_u_u(p_42, (safe_lshift_func_int8_t_s_s(p_42, 4)))) && (((p_754->g_537 = (void*)0) != (void*)0) >= (**p_754->g_128))))
    { /* block id: 242 */
        (*p_754->g_539) = l_536;
    }
    else
    { /* block id: 244 */
        int32_t *l_540 = &p_754->g_344;
        int32_t *l_541[1];
        int32_t **l_558 = &p_754->g_198;
        int32_t ***l_557 = &l_558;
        int i;
        for (i = 0; i < 1; i++)
            l_541[i] = &p_754->g_77[3][7];
        ++l_544;
        l_563[5] &= ((p_754->g_75 , l_544) || ((safe_mod_func_uint64_t_u_u(((*p_43) > ((safe_mul_func_int16_t_s_s(((safe_div_func_int32_t_s_s(((((l_557 == &l_558) , (safe_lshift_func_uint8_t_u_s((p_42 ^ (((+((l_542 , ((0xB96FD2C1BA00E87CL >= (!(safe_div_func_int32_t_s_s((p_42 , (*p_43)), FAKE_DIVERGE(p_754->local_1_offset, get_local_id(1), 10))))) <= l_543[0])) < (***p_754->g_430))) , GROUP_DIVERGE(0, 1)) >= 0x42DDL)), l_542))) <= 0x1B24E61BL) & 0xBCL), p_754->g_18)) & 0xC69667A9E7B15D6EL), p_42)) >= (-3L))), (*l_540))) != 0x62188E8F2B11FDA2L));
    }
    return (*p_44);
}


/* ------------------------------------------ */
/* 
 * reads : p_754->g_384 p_754->g_390 p_754->g_77 p_754->g_216
 * writes: p_754->g_384 p_754->g_390 p_754->g_198 p_754->g_77 p_754->g_216
 */
int32_t * func_45(int32_t * p_46, int32_t  p_47, int64_t  p_48, int8_t * p_49, int32_t  p_50, struct S1 * p_754)
{ /* block id: 186 */
    int32_t *l_438 = &p_754->g_77[0][4];
    int32_t *l_448 = &p_754->g_105[2][5];
    int8_t l_475 = (-1L);
    int32_t l_481[2][1];
    int32_t *l_529 = &p_754->g_5;
    int32_t *l_530[3];
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_481[i][j] = 0x41D39124L;
    }
    for (i = 0; i < 3; i++)
        l_530[i] = &p_754->g_5;
    for (p_754->g_384 = 19; (p_754->g_384 > 3); p_754->g_384 = safe_sub_func_int64_t_s_s(p_754->g_384, 6))
    { /* block id: 189 */
        int32_t *l_439 = &p_754->g_77[1][3];
        l_439 = l_438;
    }
    for (p_754->g_390 = 0; (p_754->g_390 <= 18); ++p_754->g_390)
    { /* block id: 194 */
        int32_t **l_444 = &p_754->g_198;
        int32_t **l_445 = (void*)0;
        int32_t *l_447 = &p_754->g_199;
        int32_t **l_446[9] = {(void*)0,&l_447,(void*)0,(void*)0,&l_447,(void*)0,(void*)0,&l_447,(void*)0};
        int32_t l_449 = 0x7FB5EEB3L;
        int64_t l_468 = (-2L);
        int32_t l_482 = 0x46727392L;
        uint8_t l_521 = 0x25L;
        int i;
        (*l_438) &= (safe_div_func_int64_t_s_s((0x66FE5E8F94AE7ECFL | 0x0866C02960442D28L), ((((0x9C0902FAL && (0x96L & p_50)) < FAKE_DIVERGE(p_754->group_1_offset, get_group_id(1), 10)) & ((((p_50 , 0x8CD3L) , ((*l_444) = p_46)) != (l_448 = &p_754->g_199)) < p_754->g_384)) , l_449)));
        for (p_754->g_216 = (-6); (p_754->g_216 != (-14)); p_754->g_216 = safe_sub_func_int64_t_s_s(p_754->g_216, 4))
        { /* block id: 200 */
            int32_t ***l_452 = &l_445;
            int32_t l_467[4] = {0x526F1D96L,0x526F1D96L,0x526F1D96L,0x526F1D96L};
            int8_t *l_469 = &p_754->g_75;
            uint32_t l_483 = 4294967295UL;
            int64_t l_513[2][5] = {{0x6B3F9513E9CCB2E9L,0x2E3296E90D9EEE9BL,1L,0x2E3296E90D9EEE9BL,0x6B3F9513E9CCB2E9L},{0x6B3F9513E9CCB2E9L,0x2E3296E90D9EEE9BL,1L,0x2E3296E90D9EEE9BL,0x6B3F9513E9CCB2E9L}};
            int i, j;
            if (l_449)
                break;
        }
        return l_529;
    }
    return l_530[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_754->g_261 p_754->g_427 p_754->g_390 p_754->g_430 p_754->g_5
 * writes: p_754->g_261 p_754->g_77
 */
int64_t  func_51(int32_t * p_52, int32_t  p_53, int32_t  p_54, int64_t  p_55, struct S1 * p_754)
{ /* block id: 181 */
    uint32_t l_425 = 4294967287UL;
    int16_t *l_426 = (void*)0;
    uint64_t l_435[3];
    int i;
    for (i = 0; i < 3; i++)
        l_435[i] = 8UL;
    (*p_754->g_427) = ((safe_lshift_func_uint8_t_u_s((p_55 <= FAKE_DIVERGE(p_754->global_2_offset, get_global_id(2), 10)), 4)) , (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_754->local_2_offset, get_local_id(2), 10), (p_754->g_261 |= l_425))));
    (*p_754->g_427) = (safe_sub_func_int32_t_s_s((l_425 && p_754->g_390), (((p_754->g_430 == (((*p_52) < (safe_sub_func_uint8_t_u_u(l_435[1], 0UL))) , &p_754->g_431)) , 8UL) > 0x0FFDL)));
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_754->g_73 p_754->g_88 p_754->g_93 p_754->g_77 p_754->g_105 p_754->g_108 p_754->g_110 p_754->g_88.f0 p_754->g_83 p_754->g_128 p_754->g_134 p_754->g_140 p_754->g_2 p_754->g_88.f1 p_754->g_174 p_754->g_129 p_754->g_199 p_754->g_220 p_754->g_341 p_754->g_344 p_754->g_75 p_754->g_132 p_754->g_200 p_754->g_390 p_754->g_389 p_754->g_260 p_754->g_375
 * writes: p_754->g_93 p_754->g_105 p_754->g_77 p_754->g_108 p_754->g_110 p_754->g_111 p_754->g_88.f0 p_754->g_75 p_754->g_132 p_754->g_134 p_754->g_140 p_754->g_88.f1 p_754->g_216 p_754->g_260 p_754->g_261 p_754->g_253.f1 p_754->g_344 p_754->g_342 p_754->g_174 p_754->g_375 p_754->g_390 p_754->g_389 p_754->g_417
 */
int32_t * func_56(int32_t * p_57, uint64_t  p_58, int32_t * p_59, struct S1 * p_754)
{ /* block id: 14 */
    uint32_t l_65 = 0x6C7E7C0CL;
    int8_t *l_74 = &p_754->g_75;
    int64_t l_138 = 0L;
    uint8_t *l_139 = &p_754->g_140;
    int32_t *l_343 = &p_754->g_344;
    int32_t l_349 = 0x56B36725L;
    uint8_t *l_353[10][10][2] = {{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}},{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}},{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}},{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}},{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}},{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}},{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}},{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}},{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}},{{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140},{&p_754->g_140,&p_754->g_140}}};
    int16_t l_354[3];
    uint32_t *l_364 = &p_754->g_12;
    uint32_t l_376[4][2] = {{0UL,0x788C1678L},{0UL,0x788C1678L},{0UL,0x788C1678L},{0UL,0x788C1678L}};
    uint32_t l_418 = 0xDDFE50AFL;
    uint16_t l_419 = 9UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_354[i] = 0x6910L;
    (*l_343) ^= (func_60(l_65, l_65, (safe_sub_func_uint8_t_u_u(func_68(((safe_rshift_func_uint8_t_u_s(p_58, 3)) , (p_754->g_73 , l_65)), l_74, p_754), (((0x96AF810BL < (safe_mul_func_uint8_t_u_u(((*l_139) |= l_138), 0x98L))) >= p_754->g_2) == l_65))), p_58, p_754) & 0x13F9ECF2L);
    for (p_754->g_75 = 0; (p_754->g_75 != (-8)); p_754->g_75 = safe_sub_func_uint32_t_u_u(p_754->g_75, 1))
    { /* block id: 147 */
        int8_t **l_350 = &p_754->g_342[3][1][0];
        int32_t l_377[5][2][7] = {{{1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L}},{{1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L}},{{1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L}},{{1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L}},{{1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L}}};
        int32_t l_387 = 0x59527E8FL;
        int i, j, k;
        l_349 ^= (((65535UL ^ 0UL) > ((safe_mod_func_uint16_t_u_u(p_754->g_199, 0x1F6EL)) || (*l_343))) ^ (!(*l_343)));
        if ((p_58 <= ((l_139 == ((*l_350) = l_139)) | 0x12L)))
        { /* block id: 150 */
            int32_t *l_351[3][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int32_t **l_352 = &p_754->g_174;
            int i, j;
            (*l_352) = l_351[1][8];
            (*l_343) = (-1L);
            (*l_343) = ((&p_754->g_140 != l_353[9][9][0]) , l_354[2]);
            return p_59;
        }
        else
        { /* block id: 155 */
            int32_t l_361 = 0x7ACD481DL;
            uint32_t **l_365 = &l_364;
            int32_t l_366[10][3] = {{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L},{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L},{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L},{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L},{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L},{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L},{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L},{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L},{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L},{0x17A2AB3DL,0x17A2AB3DL,0x4DEF5D37L}};
            int64_t *l_373 = (void*)0;
            int64_t *l_374 = &p_754->g_110[8];
            uint16_t *l_378[10][6] = {{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]},{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]},{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]},{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]},{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]},{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]},{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]},{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]},{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]},{&p_754->g_134[8],&p_754->g_108[2][3][3],&p_754->g_108[6][0][2],&p_754->g_108[2][3][3],&p_754->g_134[8],&p_754->g_134[8]}};
            int64_t *l_380 = &p_754->g_88.f1;
            int64_t **l_379 = &l_380;
            int64_t ***l_381 = &l_379;
            int i, j;
            (*l_381) = ((p_754->g_108[2][3][3] = (p_754->g_132 != (!((safe_div_func_uint64_t_u_u(((safe_div_func_uint8_t_u_u((p_754->g_375 = (((+l_361) <= (((*l_374) = (safe_mod_func_uint16_t_u_u(0xB78CL, ((l_366[4][2] = (((((*l_365) = l_364) == (void*)0) | p_754->g_110[8]) ^ (p_754->g_110[8] & p_58))) , (safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((p_754->g_140 = (GROUP_DIVERGE(2, 1) >= (*l_343))), GROUP_DIVERGE(2, 1))), 12)), 3)))))) , p_754->g_200[1][6])) > (*l_343))), p_58)) >= l_376[2][1]), l_377[2][1][4])) != 3UL)))) , l_379);
            for (p_754->g_132 = 0; (p_754->g_132 >= 40); p_754->g_132++)
            { /* block id: 165 */
                uint32_t *l_385 = (void*)0;
                uint32_t *l_386[7] = {&l_376[0][1],&l_376[0][1],&l_376[0][1],&l_376[0][1],&l_376[0][1],&l_376[0][1],&l_376[0][1]};
                int32_t l_388[9] = {0x7EE927DCL,0x7EE927DCL,0x7EE927DCL,0x7EE927DCL,0x7EE927DCL,0x7EE927DCL,0x7EE927DCL,0x7EE927DCL,0x7EE927DCL};
                int8_t *l_411 = (void*)0;
                int8_t *l_412 = &p_754->g_389[0][0][1];
                int64_t *l_420 = &l_138;
                int i;
                (*p_754->g_174) ^= ((--p_754->g_390) || (((((safe_add_func_int8_t_s_s((l_366[4][2] = (safe_div_func_uint16_t_u_u(l_366[4][2], (safe_lshift_func_int8_t_s_u((3UL < (safe_sub_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s((0x7892L & (safe_mul_func_uint8_t_u_u(p_58, ((safe_div_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((((l_388[0] != ((safe_lshift_func_int8_t_s_u((GROUP_DIVERGE(0, 1) < ((***l_381) = p_58)), 3)) < ((*l_412) &= l_366[0][1]))) != (((*l_420) = (((GROUP_DIVERGE(1, 1) > (((safe_add_func_uint64_t_u_u(((safe_add_func_uint8_t_u_u(0xDAL, (p_754->g_417 = (l_361 = ((*l_139) &= ((*l_343) = ((*l_343) > 1UL))))))) | 0xD102L), l_366[4][2])) && l_418) == 1L)) & l_419) & p_58)) , 0x09L)) <= GROUP_DIVERGE(2, 1)), p_754->g_260)), 8UL)) | p_58)))), 0x3AL)) | p_58), p_754->g_83[0][0]))), p_754->g_375))))), p_58)) >= 0x29L) , 0x512CA628L) , GROUP_DIVERGE(2, 1)) , l_377[3][0][5]));
            }
            return p_59;
        }
    }
    return p_59;
}


/* ------------------------------------------ */
/* 
 * reads : p_754->g_88.f1 p_754->g_105 p_754->g_174 p_754->g_93 p_754->g_77 p_754->g_128 p_754->g_129 p_754->g_199 p_754->g_108 p_754->g_220 p_754->g_134 p_754->g_341
 * writes: p_754->g_88.f1 p_754->g_140 p_754->g_77 p_754->g_216 p_754->g_75 p_754->g_260 p_754->g_261 p_754->g_108 p_754->g_253.f1
 */
int32_t  func_60(uint32_t  p_61, uint64_t  p_62, uint64_t  p_63, uint64_t  p_64, struct S1 * p_754)
{ /* block id: 46 */
    uint32_t l_167[10] = {0x12F7A823L,7UL,0xC79DE541L,7UL,0x12F7A823L,0x12F7A823L,7UL,0xC79DE541L,7UL,0x12F7A823L};
    int32_t l_185 = 0x6005B643L;
    int8_t l_234 = (-9L);
    int8_t *l_298 = &p_754->g_75;
    int8_t **l_297[7];
    int8_t ***l_296 = &l_297[6];
    int64_t *l_312[9] = {&p_754->g_110[8],&p_754->g_110[8],&p_754->g_110[8],&p_754->g_110[8],&p_754->g_110[8],&p_754->g_110[8],&p_754->g_110[8],&p_754->g_110[8],&p_754->g_110[8]};
    int32_t l_332[7] = {3L,3L,3L,3L,3L,3L,3L};
    uint32_t l_334 = 0UL;
    int64_t *l_337 = &p_754->g_253[0].f1;
    int8_t ***l_338 = &l_297[6];
    int8_t **l_340[2];
    int8_t ***l_339 = &l_340[0];
    int i;
    for (i = 0; i < 7; i++)
        l_297[i] = &l_298;
    for (i = 0; i < 2; i++)
        l_340[i] = &l_298;
    for (p_754->g_88.f1 = 0; (p_754->g_88.f1 <= (-19)); p_754->g_88.f1--)
    { /* block id: 49 */
        uint64_t *l_158 = &p_754->g_93[0][3][3];
        uint64_t **l_157 = &l_158;
        int32_t l_170 = 0x7B2DB857L;
        int32_t *l_284 = &l_170;
        int8_t *l_295 = &l_234;
        int8_t **l_294 = &l_295;
        int8_t ***l_293 = &l_294;
        uint8_t l_309 = 8UL;
        int32_t *l_330 = &p_754->g_77[7][6];
        int32_t *l_331[8];
        int8_t l_333 = (-10L);
        int i;
        for (i = 0; i < 8; i++)
            l_331[i] = (void*)0;
        for (p_61 = 0; (p_61 <= 2); p_61 += 1)
        { /* block id: 52 */
            int16_t l_172 = 0x64B7L;
            int32_t *l_178 = &p_754->g_77[4][4];
            int8_t l_191 = 0L;
            int8_t **l_224 = (void*)0;
            for (p_63 = 0; (p_63 <= 2); p_63 += 1)
            { /* block id: 55 */
                uint8_t l_205 = 255UL;
                int i, j;
                if (p_754->g_105[p_61][(p_61 + 4)])
                    break;
                for (p_62 = 0; (p_62 <= 2); p_62 += 1)
                { /* block id: 59 */
                    int i, j;
                    atomic_min(&p_754->l_atomic_reduction[0], ((safe_lshift_func_uint16_t_u_s(((&p_754->g_129 != &p_754->g_129) & (&p_754->g_5 != &p_754->g_77[8][0])), (safe_lshift_func_int16_t_s_u(p_754->g_105[p_61][(p_62 + 1)], 9)))) , (0x714B218C28FC6314L <= p_61)));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_754->v_collective += p_754->l_atomic_reduction[0];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                }
                for (p_754->g_140 = 0; (p_754->g_140 <= 2); p_754->g_140 += 1)
                { /* block id: 64 */
                    uint64_t ***l_159 = &l_157;
                    int32_t *l_166 = &p_754->g_77[6][8];
                    int32_t l_186 = 0x0EF3B876L;
                    uint64_t l_201 = 1UL;
                    int64_t *l_215 = &p_754->g_216;
                    int32_t **l_217 = &p_754->g_174;
                    int16_t *l_218 = (void*)0;
                    int i;
                    (1 + 1);
                }
            }
        }
        for (p_62 = 0; (p_62 >= 33); p_62++)
        { /* block id: 108 */
            uint16_t l_268[7];
            int32_t l_306 = (-8L);
            int32_t l_307 = 1L;
            int i;
            for (i = 0; i < 7; i++)
                l_268[i] = 0x4865L;
            (*p_754->g_174) = l_170;
            (*p_754->g_174) = (safe_lshift_func_uint8_t_u_u(l_170, (safe_mul_func_uint16_t_u_u(p_754->g_93[0][3][3], l_268[0]))));
            for (p_754->g_216 = (-2); (p_754->g_216 < 5); p_754->g_216 = safe_add_func_uint32_t_u_u(p_754->g_216, 8))
            { /* block id: 113 */
                uint16_t l_280 = 0UL;
                int8_t ***l_299 = (void*)0;
                int32_t l_301 = 0L;
                int32_t l_308 = 0x352AA74DL;
                int64_t *l_313 = &p_754->g_110[3];
                uint16_t *l_328 = &p_754->g_108[2][3][3];
                int32_t *l_329 = &l_185;
                for (p_754->g_75 = (-28); (p_754->g_75 < (-1)); p_754->g_75++)
                { /* block id: 116 */
                    uint16_t *l_290 = &p_754->g_108[1][6][1];
                    uint16_t **l_289 = &l_290;
                    int16_t *l_300 = (void*)0;
                    int32_t *l_302 = &l_185;
                    int32_t *l_303 = (void*)0;
                    int32_t *l_304 = &l_170;
                    int32_t *l_305[9] = {&p_754->g_2,(void*)0,&p_754->g_2,&p_754->g_2,(void*)0,&p_754->g_2,&p_754->g_2,(void*)0,&p_754->g_2};
                    int i;
                    for (p_754->g_260 = (-28); (p_754->g_260 == 11); p_754->g_260 = safe_add_func_int32_t_s_s(p_754->g_260, 9))
                    { /* block id: 119 */
                        int32_t *l_275 = &p_754->g_77[0][8];
                        int32_t *l_276 = &p_754->g_77[8][8];
                        int32_t *l_277 = &l_170;
                        int32_t *l_278 = &l_170;
                        int32_t *l_279[5][7][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        int i, j, k;
                        ++l_280;
                        if ((*p_754->g_174))
                            continue;
                        l_284 = &p_754->g_77[6][8];
                    }
                    (*p_754->g_174) = (safe_sub_func_int8_t_s_s(0x11L, (safe_mul_func_int16_t_s_s((&p_754->g_108[2][3][3] == ((*l_289) = (void*)0)), (((&p_64 == (void*)0) <= p_61) , (safe_lshift_func_int16_t_s_u(((p_754->g_261 = ((l_296 = l_293) == l_299)) < 0xD27FL), l_301)))))));
                    --l_309;
                    (*l_302) = (0x8FL != (l_312[2] == l_313));
                }
                (*l_329) |= (((safe_lshift_func_int16_t_s_s(l_307, p_754->g_93[0][3][3])) | (safe_lshift_func_uint16_t_u_u((((*l_328) = ((~(((*p_754->g_128) == &p_754->g_93[0][3][3]) != (((p_754->g_199 > (p_754->g_108[8][0][1] >= (GROUP_DIVERGE(1, 1) >= ((safe_add_func_uint64_t_u_u((((((((safe_rshift_func_int16_t_s_u((((*l_284) ^ (safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((((l_158 != l_312[1]) , l_268[6]) == p_754->g_220[0][1]), (*l_284))), l_280))) <= 1L), 15)) != 1UL) | 0x549BL) ^ p_754->g_108[2][3][3]) != (*l_284)) >= l_306) & p_62), p_754->g_134[1])) > (-1L))))) || p_754->g_134[3]) >= p_63))) != p_62)) ^ 0x1243L), FAKE_DIVERGE(p_754->local_0_offset, get_local_id(0), 10)))) > FAKE_DIVERGE(p_754->global_1_offset, get_global_id(1), 10));
            }
        }
        (*l_284) = 1L;
        l_334--;
    }
    (*p_754->g_174) &= (((*l_337) = ((void*)0 == &p_754->g_75)) || GROUP_DIVERGE(2, 1));
    (*p_754->g_174) = (((*l_339) = ((*l_338) = (void*)0)) != p_754->g_341);
    return p_63;
}


/* ------------------------------------------ */
/* 
 * reads : p_754->g_88 p_754->g_93 p_754->g_77 p_754->g_105 p_754->g_108 p_754->g_110 p_754->g_88.f0 p_754->g_83 p_754->g_128 p_754->g_134
 * writes: p_754->g_93 p_754->g_105 p_754->g_77 p_754->g_108 p_754->g_110 p_754->g_111 p_754->g_88.f0 p_754->g_75 p_754->g_132 p_754->g_134
 */
uint8_t  func_68(int64_t  p_69, int8_t * p_70, struct S1 * p_754)
{ /* block id: 15 */
    int32_t *l_76 = &p_754->g_77[6][8];
    int32_t *l_78 = &p_754->g_77[6][8];
    int32_t *l_79 = &p_754->g_77[6][8];
    int32_t *l_80[8] = {&p_754->g_77[6][8],&p_754->g_77[6][8],&p_754->g_77[6][8],&p_754->g_77[6][8],&p_754->g_77[6][8],&p_754->g_77[6][8],&p_754->g_77[6][8],&p_754->g_77[6][8]};
    int16_t l_81 = 0x1C7DL;
    int32_t l_82[10][1] = {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}};
    int8_t l_84 = 0L;
    uint64_t l_85 = 8UL;
    uint8_t l_106[5] = {0xE5L,0xE5L,0xE5L,0xE5L,0xE5L};
    uint64_t **l_131 = (void*)0;
    int i, j;
lbl_135:
    l_85--;
    for (l_81 = 6; (l_81 >= 1); l_81 -= 1)
    { /* block id: 19 */
        uint64_t *l_91[10] = {&l_85,&l_85,&l_85,&l_85,&l_85,&l_85,&l_85,&l_85,&l_85,&l_85};
        int32_t l_92[3][3][9] = {{{0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L},{0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L},{0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L}},{{0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L},{0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L},{0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L}},{{0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L},{0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L},{0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L,0x18A4EB99L}}};
        int32_t l_103 = 1L;
        int32_t *l_104 = &p_754->g_105[0][2];
        uint16_t *l_107 = &p_754->g_108[2][3][3];
        int64_t *l_109 = &p_754->g_110[8];
        int i, j, k;
        p_754->g_111 = (((*l_109) &= (p_754->g_88 , (p_69 & ((*l_107) |= (((safe_mod_func_uint64_t_u_u((p_754->g_93[0][3][3]++), l_92[0][0][1])) , (safe_div_func_int8_t_s_s(((p_754->g_77[6][8] = (((p_69 ^ l_92[0][0][1]) > (((((*l_104) |= ((+(safe_mod_func_int64_t_s_s((1L > ((+(safe_rshift_func_uint8_t_u_s((safe_unary_minus_func_int8_t_s(((p_754->g_93[0][3][3] = FAKE_DIVERGE(p_754->local_1_offset, get_local_id(1), 10)) && (l_103 = 2UL)))), 3))) >= 0x4EL)), (p_69 && p_754->g_77[1][7])))) > (-4L))) , GROUP_DIVERGE(1, 1)) < 0x2B10FF70A894EA7FL) && (-10L))) & (*l_78))) ^ l_106[1]), GROUP_DIVERGE(2, 1)))) && 0x09DB10C3L))))) , p_69);
        for (p_754->g_88.f0 = 0; (p_754->g_88.f0 <= 0); p_754->g_88.f0 += 1)
        { /* block id: 30 */
            uint64_t **l_112 = (void*)0;
            uint64_t *l_113 = (void*)0;
            int8_t *l_117 = &l_84;
            int8_t **l_116 = &l_117;
            uint16_t *l_133 = &p_754->g_134[1];
            int i, j;
            p_754->g_77[p_754->g_88.f0][l_81] = ((l_113 = &l_85) == (void*)0);
            if (p_754->g_83[p_754->g_88.f0][(p_754->g_88.f0 + 1)])
                continue;
            (*l_76) = ((!(safe_add_func_int32_t_s_s(0x10FD6D6AL, (((*l_79) ^ GROUP_DIVERGE(1, 1)) < ((p_70 == ((*l_116) = &p_754->g_75)) , (safe_sub_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(247UL, p_69)) != (((safe_div_func_uint32_t_u_u((((*l_133) &= ((*l_107) = (safe_mul_func_int8_t_s_s((p_754->g_132 = ((*l_117) = (((safe_lshift_func_uint16_t_u_s(l_92[2][2][5], (p_754->g_128 != l_131))) && 0xE256FD15697580FFL) , (-8L)))), p_69)))) && p_69), 8L)) , &p_754->g_77[p_754->g_88.f0][l_81]) != &l_92[0][0][1])), p_754->g_77[p_754->g_88.f0][l_81]))))))) , 0L);
            return p_754->g_83[0][0];
        }
    }
    if (l_85)
        goto lbl_135;
    return p_69;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S1 c_755;
    struct S1* p_754 = &c_755;
    struct S1 c_756 = {
        1L, // p_754->g_2
        0x58FB770AL, // p_754->g_5
        4294967291UL, // p_754->g_12
        (-10L), // p_754->g_18
        0x4BL, // p_754->g_22
        {0x04CE9D06L}, // p_754->g_73
        8L, // p_754->g_75
        {{0x7240E601L,0x2F230988L,2L,0x59F7C1AEL,0L,0L,0x59F7C1AEL,2L,0x2F230988L},{0x7240E601L,0x2F230988L,2L,0x59F7C1AEL,0L,0L,0x59F7C1AEL,2L,0x2F230988L},{0x7240E601L,0x2F230988L,2L,0x59F7C1AEL,0L,0L,0x59F7C1AEL,2L,0x2F230988L},{0x7240E601L,0x2F230988L,2L,0x59F7C1AEL,0L,0L,0x59F7C1AEL,2L,0x2F230988L},{0x7240E601L,0x2F230988L,2L,0x59F7C1AEL,0L,0L,0x59F7C1AEL,2L,0x2F230988L},{0x7240E601L,0x2F230988L,2L,0x59F7C1AEL,0L,0L,0x59F7C1AEL,2L,0x2F230988L},{0x7240E601L,0x2F230988L,2L,0x59F7C1AEL,0L,0L,0x59F7C1AEL,2L,0x2F230988L},{0x7240E601L,0x2F230988L,2L,0x59F7C1AEL,0L,0L,0x59F7C1AEL,2L,0x2F230988L},{0x7240E601L,0x2F230988L,2L,0x59F7C1AEL,0L,0L,0x59F7C1AEL,2L,0x2F230988L}}, // p_754->g_77
        {{0x5B38L,0x5B38L,0x5B38L,0x5B38L}}, // p_754->g_83
        {0x3209CDE0L}, // p_754->g_88
        {{{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L}},{{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L}},{{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L}},{{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L}},{{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L}},{{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L},{0xB6558982A7E1DD48L,1UL,0xE15430F98853BCE1L,0xB95470CACEDF7BA1L}}}, // p_754->g_93
        {{0x506F1CB6L,0x5D3BFB39L,(-1L),0x5D3BFB39L,0x506F1CB6L,0x506F1CB6L,0x5D3BFB39L},{0x506F1CB6L,0x5D3BFB39L,(-1L),0x5D3BFB39L,0x506F1CB6L,0x506F1CB6L,0x5D3BFB39L},{0x506F1CB6L,0x5D3BFB39L,(-1L),0x5D3BFB39L,0x506F1CB6L,0x506F1CB6L,0x5D3BFB39L}}, // p_754->g_105
        {{{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL}},{{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL}},{{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL}},{{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL}},{{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL}},{{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL}},{{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL}},{{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL}},{{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL},{65529UL,0UL,1UL,65528UL}}}, // p_754->g_108
        {0x00C1E3CE9E46C906L,0x00C1E3CE9E46C906L,0x00C1E3CE9E46C906L,0x00C1E3CE9E46C906L,0x00C1E3CE9E46C906L,0x00C1E3CE9E46C906L,0x00C1E3CE9E46C906L,0x00C1E3CE9E46C906L,0x00C1E3CE9E46C906L}, // p_754->g_110
        (-6L), // p_754->g_111
        0xF76B87F12E359ED1L, // p_754->g_130
        &p_754->g_130, // p_754->g_129
        &p_754->g_129, // p_754->g_128
        1UL, // p_754->g_132
        {0x43E6L,1UL,0x43E6L,0x43E6L,1UL,0x43E6L,0x43E6L,1UL,0x43E6L}, // p_754->g_134
        2UL, // p_754->g_140
        &p_754->g_77[6][8], // p_754->g_174
        0x32A12DA6L, // p_754->g_199
        &p_754->g_199, // p_754->g_198
        {{(-6L),1L,1L,1L,(-6L),(-6L),1L,1L,1L,(-6L)},{(-6L),1L,1L,1L,(-6L),(-6L),1L,1L,1L,(-6L)},{(-6L),1L,1L,1L,(-6L),(-6L),1L,1L,1L,(-6L)},{(-6L),1L,1L,1L,(-6L),(-6L),1L,1L,1L,(-6L)},{(-6L),1L,1L,1L,(-6L),(-6L),1L,1L,1L,(-6L)}}, // p_754->g_200
        0x631C68CD3A04C8BEL, // p_754->g_216
        {{5UL,1UL,5UL,5UL,1UL,5UL,5UL,1UL},{5UL,1UL,5UL,5UL,1UL,5UL,5UL,1UL},{5UL,1UL,5UL,5UL,1UL,5UL,5UL,1UL}}, // p_754->g_220
        {{0x96BF9411L},{0x96BF9411L},{0x96BF9411L}}, // p_754->g_253
        9UL, // p_754->g_260
        (-7L), // p_754->g_261
        {&p_754->g_174,&p_754->g_174,&p_754->g_174,&p_754->g_174,&p_754->g_174,&p_754->g_174,&p_754->g_174,&p_754->g_174,&p_754->g_174,&p_754->g_174}, // p_754->g_283
        {{{&p_754->g_75,&p_754->g_75},{&p_754->g_75,&p_754->g_75}},{{&p_754->g_75,&p_754->g_75},{&p_754->g_75,&p_754->g_75}},{{&p_754->g_75,&p_754->g_75},{&p_754->g_75,&p_754->g_75}},{{&p_754->g_75,&p_754->g_75},{&p_754->g_75,&p_754->g_75}},{{&p_754->g_75,&p_754->g_75},{&p_754->g_75,&p_754->g_75}},{{&p_754->g_75,&p_754->g_75},{&p_754->g_75,&p_754->g_75}}}, // p_754->g_342
        &p_754->g_342[3][1][1], // p_754->g_341
        0x73764427L, // p_754->g_344
        0x501F6421L, // p_754->g_375
        0x3030C267L, // p_754->g_384
        {{{(-10L),4L,(-10L)},{(-10L),4L,(-10L)},{(-10L),4L,(-10L)},{(-10L),4L,(-10L)}}}, // p_754->g_389
        65527UL, // p_754->g_390
        0x10L, // p_754->g_417
        &p_754->g_77[6][8], // p_754->g_427
        &p_754->g_216, // p_754->g_432
        &p_754->g_432, // p_754->g_431
        &p_754->g_431, // p_754->g_430
        0UL, // p_754->g_538
        &p_754->g_538, // p_754->g_537
        &p_754->g_174, // p_754->g_539
        {9UL}, // p_754->g_587
        (void*)0, // p_754->g_598
        {{&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598},{&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598},{&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598},{&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598,&p_754->g_598}}, // p_754->g_597
        &p_754->g_597[0][3], // p_754->g_596
        0x128E752AE15B302BL, // p_754->g_635
        &p_754->g_88.f0, // p_754->g_636
        {{{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2}},{{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2},{(void*)0,&p_754->g_77[6][8],&p_754->g_5,&p_754->g_2,(void*)0,&p_754->g_2}}}, // p_754->g_638
        (-1L), // p_754->g_641
        &p_754->g_641, // p_754->g_640
        0xDE9731E8L, // p_754->g_656
        0x1745E2367775A61CL, // p_754->g_687
        5UL, // p_754->g_692
        0xC4D219D7L, // p_754->g_694
        0L, // p_754->g_697
        0x2D7BDC42L, // p_754->g_699
        4294967287UL, // p_754->g_731
        0x440CL, // p_754->g_748
        &p_754->g_174, // p_754->g_750
        0, // p_754->v_collective
        sequence_input[get_global_id(0)], // p_754->global_0_offset
        sequence_input[get_global_id(1)], // p_754->global_1_offset
        sequence_input[get_global_id(2)], // p_754->global_2_offset
        sequence_input[get_local_id(0)], // p_754->local_0_offset
        sequence_input[get_local_id(1)], // p_754->local_1_offset
        sequence_input[get_local_id(2)], // p_754->local_2_offset
        sequence_input[get_group_id(0)], // p_754->group_0_offset
        sequence_input[get_group_id(1)], // p_754->group_1_offset
        sequence_input[get_group_id(2)], // p_754->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_755 = c_756;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_754);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_754->g_2, "p_754->g_2", print_hash_value);
    transparent_crc(p_754->g_5, "p_754->g_5", print_hash_value);
    transparent_crc(p_754->g_12, "p_754->g_12", print_hash_value);
    transparent_crc(p_754->g_18, "p_754->g_18", print_hash_value);
    transparent_crc(p_754->g_22, "p_754->g_22", print_hash_value);
    transparent_crc(p_754->g_73.f0, "p_754->g_73.f0", print_hash_value);
    transparent_crc(p_754->g_75, "p_754->g_75", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_754->g_77[i][j], "p_754->g_77[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_754->g_83[i][j], "p_754->g_83[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_754->g_88.f0, "p_754->g_88.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_754->g_93[i][j][k], "p_754->g_93[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_754->g_105[i][j], "p_754->g_105[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_754->g_108[i][j][k], "p_754->g_108[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_754->g_110[i], "p_754->g_110[i]", print_hash_value);

    }
    transparent_crc(p_754->g_111, "p_754->g_111", print_hash_value);
    transparent_crc(p_754->g_130, "p_754->g_130", print_hash_value);
    transparent_crc(p_754->g_132, "p_754->g_132", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_754->g_134[i], "p_754->g_134[i]", print_hash_value);

    }
    transparent_crc(p_754->g_140, "p_754->g_140", print_hash_value);
    transparent_crc(p_754->g_199, "p_754->g_199", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_754->g_200[i][j], "p_754->g_200[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_754->g_216, "p_754->g_216", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_754->g_220[i][j], "p_754->g_220[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_754->g_253[i].f0, "p_754->g_253[i].f0", print_hash_value);

    }
    transparent_crc(p_754->g_260, "p_754->g_260", print_hash_value);
    transparent_crc(p_754->g_261, "p_754->g_261", print_hash_value);
    transparent_crc(p_754->g_344, "p_754->g_344", print_hash_value);
    transparent_crc(p_754->g_375, "p_754->g_375", print_hash_value);
    transparent_crc(p_754->g_384, "p_754->g_384", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_754->g_389[i][j][k], "p_754->g_389[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_754->g_390, "p_754->g_390", print_hash_value);
    transparent_crc(p_754->g_417, "p_754->g_417", print_hash_value);
    transparent_crc(p_754->g_538, "p_754->g_538", print_hash_value);
    transparent_crc(p_754->g_587.f0, "p_754->g_587.f0", print_hash_value);
    transparent_crc(p_754->g_635, "p_754->g_635", print_hash_value);
    transparent_crc(p_754->g_641, "p_754->g_641", print_hash_value);
    transparent_crc(p_754->g_656, "p_754->g_656", print_hash_value);
    transparent_crc(p_754->g_687, "p_754->g_687", print_hash_value);
    transparent_crc(p_754->g_692, "p_754->g_692", print_hash_value);
    transparent_crc(p_754->g_694, "p_754->g_694", print_hash_value);
    transparent_crc(p_754->g_697, "p_754->g_697", print_hash_value);
    transparent_crc(p_754->g_699, "p_754->g_699", print_hash_value);
    transparent_crc(p_754->g_731, "p_754->g_731", print_hash_value);
    transparent_crc(p_754->g_748, "p_754->g_748", print_hash_value);
    transparent_crc(p_754->v_collective, "p_754->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
