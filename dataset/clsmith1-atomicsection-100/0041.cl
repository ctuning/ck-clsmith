// --atomics 59 ---fake_divergence -g 93,70,1 -l 1,35,1
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


// Seed: 41

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   int64_t  f1;
   int16_t  f2;
   uint64_t  f3;
   volatile int16_t  f4;
   int64_t  f5;
   volatile int8_t  f6;
   volatile int32_t  f7;
   uint8_t  f8;
};

struct S1 {
   volatile uint32_t  f0;
   uint8_t  f1;
};

union U2 {
   int8_t * volatile  f0;
};

struct S3 {
    int64_t g_3;
    int8_t g_12;
    struct S0 g_15[6][5][6];
    int8_t *g_76;
    int8_t **g_75;
    int16_t g_83;
    int16_t g_85;
    int32_t g_87;
    volatile uint8_t g_88;
    int16_t *g_98;
    uint32_t g_104;
    uint16_t g_109;
    volatile union U2 g_113;
    int64_t g_114;
    uint64_t g_134;
    int16_t g_140;
    volatile uint64_t *g_150;
    volatile struct S0 g_152;
    int32_t g_153;
    union U2 g_164;
    int32_t g_207;
    uint64_t g_219;
    volatile struct S1 g_225;
    uint64_t g_234;
    struct S1 g_250;
    union U2 g_324;
    int8_t * volatile * volatile g_330;
    int8_t * volatile * volatile *g_329;
    int8_t * volatile * volatile ** volatile g_328[6];
    int32_t ** volatile g_334;
    int32_t *g_336;
    int32_t ** volatile g_335;
    volatile uint32_t * volatile g_350;
    volatile uint32_t * volatile *g_349;
    uint8_t g_363;
    int64_t **g_368;
    int64_t * volatile g_373;
    int64_t * volatile *g_372;
    uint32_t g_378;
    uint16_t g_399[6];
    struct S1 g_402;
    struct S1 g_412;
    int32_t g_424;
    int16_t g_441;
    union U2 *g_448;
    union U2 ** volatile g_447;
    struct S1 g_459;
    struct S1 g_460;
    int32_t ** volatile g_461;
    int32_t ** volatile g_462;
    volatile int32_t g_513;
    volatile uint16_t g_515;
    uint32_t *g_531;
    uint32_t g_554;
    int64_t * volatile ** volatile g_570;
    int32_t g_581;
    volatile int8_t g_582;
    volatile int64_t g_583;
    volatile int64_t g_584;
    volatile struct S0 g_591;
    int32_t ** volatile g_604;
    struct S1 *g_644;
    struct S1 ** volatile g_643;
    int8_t g_664[8][1];
    volatile int32_t g_699;
    int64_t g_700[6][2];
    int64_t g_701;
    int16_t g_702;
    volatile int64_t g_704[2];
    uint8_t g_706[5];
    struct S0 *g_711[9][1];
    struct S0 ** volatile g_710;
    struct S0 g_719;
    struct S0 g_720;
    volatile int8_t g_724;
    uint64_t *** volatile g_729;
    uint32_t g_733;
    uint64_t *g_753;
    uint64_t **g_752;
    int32_t *g_760;
    int32_t ** volatile g_759[1];
    int32_t ** volatile g_761[2];
    int32_t ** volatile g_762;
    int32_t ** volatile g_763;
    int32_t ** volatile g_764;
    struct S0 g_765;
    struct S0 g_766[9][6];
    int32_t ** volatile g_793;
    volatile struct S1 g_800[9][9];
    volatile struct S1 * volatile g_801;
    volatile struct S0 g_802;
    volatile struct S0 * volatile g_803;
    volatile struct S1 g_807;
    struct S1 g_839;
    struct S0 g_858[5][6];
    struct S1 g_914;
    volatile struct S1 g_920;
    struct S1 g_964;
    int32_t * volatile g_1019;
    int32_t * volatile g_1040[7][5];
    int32_t * volatile g_1041;
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
int64_t  func_1(struct S3 * p_1042);
uint8_t  func_6(uint64_t  p_7, uint32_t  p_8, int8_t * p_9, struct S3 * p_1042);
int32_t  func_13(uint32_t  p_14, struct S3 * p_1042);
int64_t  func_25(int8_t * p_26, struct S3 * p_1042);
int8_t *** func_34(int64_t * p_35, uint8_t  p_36, int8_t *** p_37, struct S3 * p_1042);
int64_t * func_38(int64_t  p_39, uint32_t  p_40, struct S3 * p_1042);
int64_t  func_41(int64_t  p_42, struct S3 * p_1042);
int16_t  func_56(int32_t  p_57, int64_t * p_58, int8_t * p_59, struct S3 * p_1042);
int64_t * func_60(int32_t  p_61, int8_t * p_62, int32_t  p_63, int8_t * p_64, uint64_t  p_65, struct S3 * p_1042);
int8_t  func_70(int8_t ** p_71, int64_t  p_72, int16_t  p_73, int32_t  p_74, struct S3 * p_1042);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1042->g_3 p_1042->g_12 p_1042->g_87 p_1042->g_554 p_1042->g_336 p_1042->g_219 p_1042->g_531 p_1042->g_104 p_1042->g_570 p_1042->g_461 p_1042->g_591 p_1042->g_152.f7 p_1042->g_581 p_1042->g_250.f1 p_1042->g_604 p_1042->g_412.f1 p_1042->g_76 p_1042->g_372 p_1042->g_373 p_1042->g_114 p_1042->g_460.f1 p_1042->g_643 p_1042->g_152.f4 p_1042->g_664 p_1042->g_207 p_1042->g_83 p_1042->g_234 p_1042->g_98 p_1042->g_706 p_1042->g_710 p_1042->g_719 p_1042->g_733 p_1042->g_711 p_1042->g_752 p_1042->g_134 p_1042->g_109 p_1042->g_764 p_1042->g_765 p_1042->g_760 p_1042->g_753 p_1042->g_793 p_1042->g_441 p_1042->g_800 p_1042->g_801 p_1042->g_802 p_1042->g_803 p_1042->g_807 p_1042->g_720.f1 p_1042->g_644 p_1042->g_766.f7 p_1042->g_858 p_1042->g_225 p_1042->g_399 p_1042->g_462 p_1042->g_914 p_1042->g_448 p_1042->g_324 p_1042->g_920 p_1042->g_75 p_1042->g_702 p_1042->g_964 p_1042->g_1019 p_1042->g_1041
 * writes: p_1042->g_12 p_1042->g_87 p_1042->g_554 p_1042->g_207 p_1042->g_372 p_1042->g_114 p_1042->g_219 p_1042->g_336 p_1042->g_412.f1 p_1042->g_644 p_1042->g_104 p_1042->g_664 p_1042->g_234 p_1042->g_402.f1 p_1042->g_85 p_1042->g_706 p_1042->g_711 p_1042->g_250.f1 p_1042->g_720 p_1042->g_733 p_1042->g_752 p_1042->g_109 p_1042->g_760 p_1042->g_766 p_1042->g_83 p_1042->g_134 p_1042->g_441 p_1042->g_225 p_1042->g_802 p_1042->g_399 p_1042->g_719.f2 p_1042->g_719.f0 p_1042->g_378 p_1042->g_700 p_1042->g_424 p_1042->g_701 p_1042->g_460.f1 p_1042->g_765.f8 p_1042->g_98 p_1042->g_765.f2 p_1042->g_140 p_1042->g_702 p_1042->g_581
 */
int64_t  func_1(struct S3 * p_1042)
{ /* block id: 4 */
    int64_t *l_2[6] = {&p_1042->g_3,&p_1042->g_3,&p_1042->g_3,&p_1042->g_3,&p_1042->g_3,&p_1042->g_3};
    int32_t l_4[8][4];
    int32_t l_5[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int32_t l_10 = (-1L);
    int8_t *l_11[8][1] = {{&p_1042->g_12},{&p_1042->g_12},{&p_1042->g_12},{&p_1042->g_12},{&p_1042->g_12},{&p_1042->g_12},{&p_1042->g_12},{&p_1042->g_12}};
    uint64_t **l_1020[3];
    uint64_t **l_1022 = &p_1042->g_753;
    int32_t l_1030 = (-1L);
    int64_t l_1031 = 1L;
    int8_t ***l_1039 = &p_1042->g_75;
    int i, j;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
            l_4[i][j] = 7L;
    }
    for (i = 0; i < 3; i++)
        l_1020[i] = (void*)0;
    if (((l_4[4][3] = (!5L)) >= (((l_5[4] = 0x1B9849B76EEA5306L) , p_1042->g_3) > func_6((!0x885DC1B6EAB3CF81L), l_10, l_11[4][0], p_1042))))
    { /* block id: 589 */
        uint64_t ***l_1021 = &l_1020[1];
        int32_t *l_1023 = &p_1042->g_207;
        int32_t *l_1024 = (void*)0;
        int32_t *l_1025 = &l_5[4];
        int32_t *l_1026[1][2];
        int32_t l_1027 = (-7L);
        int16_t l_1028[8] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
        int16_t l_1029 = 8L;
        uint32_t l_1032 = 0x28B72BF9L;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
                l_1026[i][j] = &l_5[0];
        }
        (*l_1023) ^= (((*l_1021) = l_1020[0]) != l_1022);
        l_1032++;
    }
    else
    { /* block id: 593 */
        int32_t **l_1038 = &p_1042->g_760;
        if ((atomic_inc(&p_1042->l_atomic_input[38]) == 8))
        { /* block id: 595 */
            int8_t l_1035 = 6L;
            int8_t l_1036 = 0x16L;
            int32_t l_1037 = (-4L);
            l_1035 ^= 0x2E556922L;
            l_1037 ^= (l_1036 = 0x1012ECDAL);
            unsigned int result = 0;
            result += l_1035;
            result += l_1036;
            result += l_1037;
            atomic_add(&p_1042->l_special_values[38], result);
        }
        else
        { /* block id: 599 */
            (1 + 1);
        }
        (*l_1038) = (*p_1042->g_793);
        return (**p_1042->g_372);
    }
    (*p_1042->g_1041) = (l_1039 != (void*)0);
    return (**p_1042->g_372);
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_12 p_1042->g_3 p_1042->g_87 p_1042->g_554 p_1042->g_336 p_1042->g_219 p_1042->g_531 p_1042->g_104 p_1042->g_570 p_1042->g_461 p_1042->g_591 p_1042->g_152.f7 p_1042->g_581 p_1042->g_250.f1 p_1042->g_604 p_1042->g_412.f1 p_1042->g_76 p_1042->g_372 p_1042->g_373 p_1042->g_114 p_1042->g_460.f1 p_1042->g_643 p_1042->g_152.f4 p_1042->g_664 p_1042->g_207 p_1042->g_83 p_1042->g_234 p_1042->g_98 p_1042->g_706 p_1042->g_710 p_1042->g_719 p_1042->g_733 p_1042->g_711 p_1042->g_752 p_1042->g_134 p_1042->g_109 p_1042->g_764 p_1042->g_765 p_1042->g_760 p_1042->g_753 p_1042->g_793 p_1042->g_441 p_1042->g_800 p_1042->g_801 p_1042->g_802 p_1042->g_803 p_1042->g_807 p_1042->g_720.f1 p_1042->g_644 p_1042->g_766.f7 p_1042->g_858 p_1042->g_225 p_1042->g_399 p_1042->g_462 p_1042->g_914 p_1042->g_448 p_1042->g_324 p_1042->g_920 p_1042->g_75 p_1042->g_702 p_1042->g_964 p_1042->g_1019
 * writes: p_1042->g_12 p_1042->g_87 p_1042->g_554 p_1042->g_207 p_1042->g_372 p_1042->g_114 p_1042->g_219 p_1042->g_336 p_1042->g_412.f1 p_1042->g_644 p_1042->g_104 p_1042->g_664 p_1042->g_234 p_1042->g_402.f1 p_1042->g_85 p_1042->g_706 p_1042->g_711 p_1042->g_250.f1 p_1042->g_720 p_1042->g_733 p_1042->g_752 p_1042->g_109 p_1042->g_760 p_1042->g_766 p_1042->g_83 p_1042->g_134 p_1042->g_441 p_1042->g_225 p_1042->g_802 p_1042->g_399 p_1042->g_719.f2 p_1042->g_719.f0 p_1042->g_378 p_1042->g_700 p_1042->g_424 p_1042->g_701 p_1042->g_460.f1 p_1042->g_765.f8 p_1042->g_98 p_1042->g_765.f2 p_1042->g_140 p_1042->g_702 p_1042->g_581
 */
uint8_t  func_6(uint64_t  p_7, uint32_t  p_8, int8_t * p_9, struct S3 * p_1042)
{ /* block id: 7 */
    uint8_t l_769 = 0UL;
    union U2 **l_786[10];
    int32_t *l_792 = &p_1042->g_87;
    int32_t l_818[8][1][8] = {{{0x692100EDL,0x51C17E24L,0x7EE3C3D2L,0x51C17E24L,0x692100EDL,0x692100EDL,0x51C17E24L,0x7EE3C3D2L}},{{0x692100EDL,0x51C17E24L,0x7EE3C3D2L,0x51C17E24L,0x692100EDL,0x692100EDL,0x51C17E24L,0x7EE3C3D2L}},{{0x692100EDL,0x51C17E24L,0x7EE3C3D2L,0x51C17E24L,0x692100EDL,0x692100EDL,0x51C17E24L,0x7EE3C3D2L}},{{0x692100EDL,0x51C17E24L,0x7EE3C3D2L,0x51C17E24L,0x692100EDL,0x692100EDL,0x51C17E24L,0x7EE3C3D2L}},{{0x692100EDL,0x51C17E24L,0x7EE3C3D2L,0x51C17E24L,0x692100EDL,0x692100EDL,0x51C17E24L,0x7EE3C3D2L}},{{0x692100EDL,0x51C17E24L,0x7EE3C3D2L,0x51C17E24L,0x692100EDL,0x692100EDL,0x51C17E24L,0x7EE3C3D2L}},{{0x692100EDL,0x51C17E24L,0x7EE3C3D2L,0x51C17E24L,0x692100EDL,0x692100EDL,0x51C17E24L,0x7EE3C3D2L}},{{0x692100EDL,0x51C17E24L,0x7EE3C3D2L,0x51C17E24L,0x692100EDL,0x692100EDL,0x51C17E24L,0x7EE3C3D2L}}};
    uint32_t l_832 = 0xF0DB6B9EL;
    union U2 **l_915 = &p_1042->g_448;
    int16_t *l_934 = &p_1042->g_140;
    int32_t *l_938 = &l_818[0][0][1];
    int32_t l_956 = 0x0140E55DL;
    uint64_t l_961 = 0x731446F62ADCCF96L;
    uint64_t l_988 = 0x9A8A608E241596EAL;
    int64_t *l_1017 = &p_1042->g_701;
    int64_t **l_1016 = &l_1017;
    int16_t l_1018 = 1L;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_786[i] = &p_1042->g_448;
    if (func_13(p_8, p_1042))
    { /* block id: 451 */
        uint64_t ***l_780 = &p_1042->g_752;
        int32_t l_791 = 0L;
        uint32_t l_797 = 4294967289UL;
        uint64_t *l_804[10] = {&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234};
        uint16_t *l_808 = &p_1042->g_399[0];
        int32_t *l_811 = &l_791;
        int i;
        p_1042->g_766[1][3] = p_1042->g_765;
        for (p_1042->g_83 = 0; (p_1042->g_83 < 19); p_1042->g_83 = safe_add_func_int16_t_s_s(p_1042->g_83, 9))
        { /* block id: 455 */
            union U2 **l_785 = &p_1042->g_448;
            union U2 ***l_784 = &l_785;
            int32_t **l_789 = (void*)0;
            int8_t *l_790 = &p_1042->g_664[1][0];
            (*p_1042->g_760) |= l_769;
            l_791 &= (safe_mod_func_int32_t_s_s(((((safe_rshift_func_uint8_t_u_u(((safe_add_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(1UL, 11)), p_7)) & (*p_9)), (1L ^ ((((*l_790) = (safe_mod_func_uint64_t_u_u((l_780 != (((***l_780) = (GROUP_DIVERGE(1, 1) >= (safe_unary_minus_func_uint16_t_u((p_7 , (safe_sub_func_uint64_t_u_u(((((*l_784) = &p_1042->g_448) == l_786[6]) || (safe_div_func_uint32_t_u_u(((l_789 == (void*)0) & 5UL), (*p_1042->g_760)))), p_8))))))) , &p_1042->g_752)), 0x17FC576D84EEEDE9L))) ^ 254UL) <= FAKE_DIVERGE(p_1042->group_2_offset, get_group_id(2), 10))))) > (*p_9)) , (-8L)) < 0x6B93L), p_8));
            (*p_1042->g_793) = l_792;
            for (p_1042->g_441 = (-16); (p_1042->g_441 >= (-6)); p_1042->g_441 = safe_add_func_uint16_t_u_u(p_1042->g_441, 1))
            { /* block id: 464 */
                uint8_t l_796 = 0xFBL;
                if (l_796)
                    break;
                l_797--;
                (*p_1042->g_801) = p_1042->g_800[6][2];
            }
        }
        (*p_1042->g_803) = p_1042->g_802;
        (*l_811) &= (((l_804[4] != &p_7) || (((safe_rshift_func_int16_t_s_u((&p_1042->g_752 != &p_1042->g_752), 4)) >= (((((((p_1042->g_807 , ((*l_808) = 0x6BC2L)) >= 0x3AD9L) | (+((safe_add_func_uint64_t_u_u((*l_792), (*l_792))) , (*l_792)))) == FAKE_DIVERGE(p_1042->local_0_offset, get_local_id(0), 10)) >= (*p_1042->g_531)) >= 0xD6F3E07FL) , GROUP_DIVERGE(2, 1))) < 0x5C2389FAL)) == (*l_792));
    }
    else
    { /* block id: 473 */
        uint8_t l_814[9];
        int32_t *l_828 = &l_818[6][0][7];
        int32_t l_830[5];
        int32_t *l_902[7][7] = {{&l_830[4],&l_830[2],&l_830[0],&p_1042->g_87,&l_830[2],&p_1042->g_87,&l_830[0]},{&l_830[4],&l_830[2],&l_830[0],&p_1042->g_87,&l_830[2],&p_1042->g_87,&l_830[0]},{&l_830[4],&l_830[2],&l_830[0],&p_1042->g_87,&l_830[2],&p_1042->g_87,&l_830[0]},{&l_830[4],&l_830[2],&l_830[0],&p_1042->g_87,&l_830[2],&p_1042->g_87,&l_830[0]},{&l_830[4],&l_830[2],&l_830[0],&p_1042->g_87,&l_830[2],&p_1042->g_87,&l_830[0]},{&l_830[4],&l_830[2],&l_830[0],&p_1042->g_87,&l_830[2],&p_1042->g_87,&l_830[0]},{&l_830[4],&l_830[2],&l_830[0],&p_1042->g_87,&l_830[2],&p_1042->g_87,&l_830[0]}};
        struct S0 **l_908 = &p_1042->g_711[0][0];
        union U2 ***l_911 = &l_786[6];
        union U2 **l_913 = &p_1042->g_448;
        union U2 ***l_912 = &l_913;
        uint8_t *l_918 = &p_1042->g_765.f8;
        uint8_t *l_919 = &p_1042->g_766[1][3].f8;
        uint8_t l_921 = 1UL;
        int i, j;
        for (i = 0; i < 9; i++)
            l_814[i] = 0xC2L;
        for (i = 0; i < 5; i++)
            l_830[i] = 6L;
        for (p_1042->g_719.f2 = 5; (p_1042->g_719.f2 >= 0); p_1042->g_719.f2 -= 1)
        { /* block id: 476 */
            uint64_t l_812 = 0x77804DB6055656FCL;
            int32_t l_815 = 2L;
            struct S1 *l_826 = &p_1042->g_412;
            int32_t l_831 = 0L;
            int32_t *l_842 = &l_830[2];
            uint8_t l_895[7][3][5] = {{{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L}},{{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L}},{{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L}},{{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L}},{{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L}},{{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L}},{{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L},{0xDDL,0xDDL,7UL,0x25L,0x77L}}};
            int i, j, k;
            for (p_1042->g_719.f0 = 0; (p_1042->g_719.f0 <= 5); p_1042->g_719.f0 += 1)
            { /* block id: 479 */
                uint32_t l_819 = 4294967295UL;
                struct S1 **l_827[3][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                int i, j;
                for (p_8 = 0; (p_8 <= 1); p_8 += 1)
                { /* block id: 482 */
                    int32_t *l_816 = &p_1042->g_581;
                    int32_t *l_817[6][4] = {{&p_1042->g_207,&p_1042->g_87,&l_815,&p_1042->g_207},{&p_1042->g_207,&p_1042->g_87,&l_815,&p_1042->g_207},{&p_1042->g_207,&p_1042->g_87,&l_815,&p_1042->g_207},{&p_1042->g_207,&p_1042->g_87,&l_815,&p_1042->g_207},{&p_1042->g_207,&p_1042->g_87,&l_815,&p_1042->g_207},{&p_1042->g_207,&p_1042->g_87,&l_815,&p_1042->g_207}};
                    int i, j;
                    for (p_1042->g_720.f8 = 0; (p_1042->g_720.f8 <= 5); p_1042->g_720.f8 += 1)
                    { /* block id: 485 */
                        int32_t l_813[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_813[i] = 0x13171238L;
                        (*p_1042->g_760) = (l_813[2] ^= (l_812 ^ l_812));
                    }
                    for (p_1042->g_234 = 0; (p_1042->g_234 <= 0); p_1042->g_234 += 1)
                    { /* block id: 491 */
                        return l_814[8];
                    }
                    if (p_8)
                        break;
                    --l_819;
                }
                (*l_792) |= (safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s((((*p_1042->g_643) = l_826) != (void*)0), 4)), ((*p_1042->g_531) |= p_8)));
            }
            l_828 = (void*)0;
            if ((p_8 > 0x28BBL))
            { /* block id: 502 */
                int32_t *l_829[4] = {&l_818[7][0][7],&l_818[7][0][7],&l_818[7][0][7],&l_818[7][0][7]};
                int i;
                l_832--;
                for (p_1042->g_378 = 0; (p_1042->g_378 <= 1); p_1042->g_378 += 1)
                { /* block id: 506 */
                    int i;
                    if (l_814[(p_1042->g_719.f2 + 2)])
                        break;
                }
            }
            else
            { /* block id: 509 */
                int64_t *l_837 = &p_1042->g_700[3][0];
                struct S1 *l_838 = &p_1042->g_839;
                int32_t *l_840 = &p_1042->g_424;
                int32_t l_845 = (-1L);
                int32_t l_849 = 0x27080FEDL;
                int32_t l_851[2][4][4] = {{{0x12E0CC3FL,0x6AC63D80L,0L,0x6AC63D80L},{0x12E0CC3FL,0x6AC63D80L,0L,0x6AC63D80L},{0x12E0CC3FL,0x6AC63D80L,0L,0x6AC63D80L},{0x12E0CC3FL,0x6AC63D80L,0L,0x6AC63D80L}},{{0x12E0CC3FL,0x6AC63D80L,0L,0x6AC63D80L},{0x12E0CC3FL,0x6AC63D80L,0L,0x6AC63D80L},{0x12E0CC3FL,0x6AC63D80L,0L,0x6AC63D80L},{0x12E0CC3FL,0x6AC63D80L,0L,0x6AC63D80L}}};
                int i, j, k;
                if (((p_7 > (-5L)) ^ (safe_lshift_func_uint8_t_u_s(0x30L, ((p_1042->g_720.f1 , (((((((*l_837) = ((**p_1042->g_372) &= p_7)) , (*p_1042->g_643)) != l_838) , ((*l_840) = p_1042->g_719.f7)) , (0xF0CBL == p_8)) < 0x15L)) > p_8)))))
                { /* block id: 513 */
                    int32_t **l_841[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_841[i] = (void*)0;
                    l_842 = (void*)0;
                    l_830[0] &= p_7;
                    for (p_1042->g_701 = 4; (p_1042->g_701 >= 0); p_1042->g_701 -= 1)
                    { /* block id: 518 */
                        uint8_t *l_848[7][7][5] = {{{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8}},{{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8}},{{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8}},{{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8}},{{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8}},{{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8}},{{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8},{&p_1042->g_706[3],&l_814[8],&p_1042->g_459.f1,&p_1042->g_706[1],&p_1042->g_720.f8}}};
                        int32_t l_850[2][6] = {{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L}};
                        uint16_t l_856 = 6UL;
                        int i, j, k;
                        (*p_1042->g_760) = (p_1042->g_766[1][3].f7 || (safe_add_func_uint16_t_u_u(((l_845 ^= (*l_792)) || p_8), ((0x16L || (p_1042->g_460.f1--)) != (l_850[1][5] != ((p_8 >= (p_7 , ((safe_div_func_uint32_t_u_u(((p_8 < 0x27572F9AE43AB9E1L) <= p_7), p_7)) , p_8))) ^ l_856))))));
                        return p_7;
                    }
                }
                else
                { /* block id: 524 */
                    uint64_t *l_857 = &p_1042->g_234;
                    uint8_t *l_875 = &p_1042->g_765.f8;
                    int16_t *l_878[5];
                    int32_t l_879 = 0x6EC42696L;
                    uint64_t *l_880 = &l_812;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_878[i] = &p_1042->g_765.f2;
                    (*p_1042->g_760) ^= (((*l_857) = p_8) , ((p_1042->g_858[1][5] , ((3UL | (safe_mod_func_int16_t_s_s((safe_rshift_func_int8_t_s_u((((*l_880) = ((safe_mul_func_uint16_t_u_u(((+(((((p_8 , (safe_lshift_func_uint16_t_u_s((((((*p_1042->g_801) , (((*p_1042->g_753) ^= (safe_mul_func_uint8_t_u_u((0x6EB6L | (safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1042->local_2_offset, get_local_id(2), 10), 11))), ((p_7 >= (0x3988L & (safe_div_func_uint8_t_u_u(((p_1042->g_399[p_1042->g_719.f2]++) | (((*l_875)--) & ((p_1042->g_98 = l_878[1]) == (void*)0))), l_830[4])))) && p_8)))) >= p_7)) ^ (*l_842)) == 0x827DL) , 0x51EDL), l_851[1][3][3]))) != 0x70L) > l_879) , p_8) && p_7)) > (*p_1042->g_531)), p_7)) , FAKE_DIVERGE(p_1042->group_0_offset, get_group_id(0), 10))) <= l_879), 1)), GROUP_DIVERGE(2, 1)))) < (*l_842))) , p_7));
                }
                for (p_1042->g_765.f8 = 0; (p_1042->g_765.f8 <= 0); p_1042->g_765.f8 += 1)
                { /* block id: 535 */
                    int64_t l_883 = 7L;
                    uint64_t *l_898 = &l_812;
                    uint64_t *l_899 = (void*)0;
                    uint64_t *l_900 = (void*)0;
                    int32_t **l_901[9] = {&p_1042->g_760,&p_1042->g_760,&p_1042->g_760,&p_1042->g_760,&p_1042->g_760,&p_1042->g_760,&p_1042->g_760,&p_1042->g_760,&p_1042->g_760};
                    int i;
                    for (p_1042->g_378 = 1; (p_1042->g_378 <= 5); p_1042->g_378 += 1)
                    { /* block id: 538 */
                        int i;
                        l_818[1][0][4] ^= (*l_792);
                    }
                    (*p_1042->g_462) = (l_902[0][0] = ((p_7 && (safe_add_func_uint32_t_u_u((l_883 <= (safe_sub_func_uint64_t_u_u((safe_unary_minus_func_int32_t_s(p_8)), (safe_rshift_func_uint8_t_u_s((((-1L) < 0x317CAA49ADE30E52L) < (--p_1042->g_399[(p_1042->g_765.f8 + 5)])), (((safe_sub_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u(l_895[4][0][3], (!(safe_rshift_func_int16_t_s_u(p_8, (FAKE_DIVERGE(p_1042->local_2_offset, get_local_id(2), 10) != ((*l_898) ^= (*p_1042->g_753)))))))), (((p_1042->g_219 ^= ((18446744073709551610UL == l_883) < (***p_1042->g_570))) > l_883) != p_8))) , l_851[0][2][1]) , 2L)))))), p_8))) , &l_851[0][2][3]));
                }
            }
            for (p_1042->g_134 = 0; (p_1042->g_134 <= 0); p_1042->g_134 += 1)
            { /* block id: 550 */
                int32_t l_903 = 0L;
                int32_t l_904[3];
                uint64_t l_905 = 0x756B0B650AF0E0BFL;
                int i;
                for (i = 0; i < 3; i++)
                    l_904[i] = 1L;
                --l_905;
            }
        }
        l_921 &= (p_7 ^ (l_908 != (((safe_mul_func_uint16_t_u_u((((*l_912) = ((*l_911) = &p_1042->g_448)) != ((p_1042->g_914 , (*p_1042->g_448)) , l_915)), (safe_div_func_uint32_t_u_u((p_8 || ((*p_1042->g_760) &= (((*p_1042->g_98) = (((*l_919) = ((*l_918) = p_1042->g_858[1][5].f5)) || (*p_1042->g_76))) != (*l_792)))), 4294967295UL)))) , p_1042->g_920) , &p_1042->g_711[0][0])));
    }
    if ((safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((safe_sub_func_int8_t_s_s(((*l_792) = ((*p_9) ^= (((l_934 != l_934) | (*l_792)) & ((safe_unary_minus_func_int64_t_s((***p_1042->g_570))) & (*l_792))))), (&p_1042->g_581 != &l_818[1][0][4]))), 15)), ((((*l_938) = (+(safe_add_func_uint32_t_u_u((*p_1042->g_531), (*p_1042->g_531))))) >= p_8) || 0x0D35FACD1694A46EL))), p_7)), 7)), 0x05L)))
    { /* block id: 565 */
        int32_t **l_939[3][7] = {{&p_1042->g_760,(void*)0,&p_1042->g_336,(void*)0,&p_1042->g_760,&p_1042->g_760,(void*)0},{&p_1042->g_760,(void*)0,&p_1042->g_336,(void*)0,&p_1042->g_760,&p_1042->g_760,(void*)0},{&p_1042->g_760,(void*)0,&p_1042->g_336,(void*)0,&p_1042->g_760,&p_1042->g_760,(void*)0}};
        int i, j;
        (*l_792) &= ((void*)0 == &p_1042->g_363);
        (*p_1042->g_764) = (void*)0;
        (*l_792) = (FAKE_DIVERGE(p_1042->group_1_offset, get_group_id(1), 10) , p_7);
    }
    else
    { /* block id: 569 */
        uint8_t l_940 = 7UL;
        int8_t ***l_944 = &p_1042->g_75;
        int8_t ****l_943[10][1][10] = {{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}},{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}},{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}},{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}},{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}},{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}},{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}},{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}},{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}},{{&l_944,&l_944,&l_944,&l_944,(void*)0,&l_944,&l_944,&l_944,&l_944,&l_944}}};
        int32_t l_945 = 0x7DB655BDL;
        int32_t l_953 = 0x071E45BAL;
        int32_t l_954 = 0L;
        int32_t l_955 = 0x5269439FL;
        int32_t l_957 = 3L;
        int32_t l_958 = 0L;
        int32_t l_959 = 0x078A4202L;
        int32_t l_960 = 0x05D8C7BFL;
        int32_t l_987[2][2][6] = {{{0x3FC54C0AL,0x3FC54C0AL,1L,0x1E439C1FL,0x322F581EL,0x1E439C1FL},{0x3FC54C0AL,0x3FC54C0AL,1L,0x1E439C1FL,0x322F581EL,0x1E439C1FL}},{{0x3FC54C0AL,0x3FC54C0AL,1L,0x1E439C1FL,0x322F581EL,0x1E439C1FL},{0x3FC54C0AL,0x3FC54C0AL,1L,0x1E439C1FL,0x322F581EL,0x1E439C1FL}}};
        int64_t *l_994 = &p_1042->g_3;
        int64_t **l_993 = &l_994;
        uint8_t l_997 = 0xAFL;
        int i, j, k;
        if (((l_940 | (0x34L < ((((safe_mul_func_int16_t_s_s(p_7, (p_1042->g_858[1][5].f4 , ((l_943[9][0][3] == (void*)0) , (((l_945 ^= (*p_9)) < GROUP_DIVERGE(1, 1)) & ((--(**p_1042->g_752)) || ((**p_1042->g_372) = (safe_div_func_int16_t_s_s(((*l_934) = (*l_792)), p_7))))))))) , p_7) & 0x1D38813B71494CF4L) && (**p_1042->g_764)))) != (**p_1042->g_75)))
        { /* block id: 574 */
            int32_t *l_950 = &p_1042->g_87;
            int32_t *l_951 = &p_1042->g_581;
            int32_t *l_952[4][6] = {{(void*)0,&l_945,&p_1042->g_207,&l_945,&l_945,&l_945},{(void*)0,&l_945,&p_1042->g_207,&l_945,&l_945,&l_945},{(void*)0,&l_945,&p_1042->g_207,&l_945,&l_945,&l_945},{(void*)0,&l_945,&p_1042->g_207,&l_945,&l_945,&l_945}};
            int i, j;
            ++l_961;
        }
        else
        { /* block id: 576 */
            int32_t *l_966 = &l_955;
            int32_t *l_967 = &p_1042->g_207;
            int32_t *l_968 = &l_955;
            int32_t *l_969 = &p_1042->g_581;
            int32_t *l_970 = &l_953;
            int32_t *l_971 = &l_955;
            int32_t *l_972 = &l_956;
            int32_t *l_973 = &l_818[1][0][4];
            int32_t l_974 = 0x7F48A573L;
            int32_t *l_975 = &l_974;
            int32_t *l_976 = &l_953;
            int32_t *l_977 = &l_957;
            int32_t *l_978 = &l_959;
            int32_t *l_979 = &l_955;
            int32_t *l_980 = (void*)0;
            int32_t *l_981 = &l_953;
            int32_t *l_982 = &p_1042->g_581;
            int32_t *l_983 = &l_960;
            int32_t *l_984 = (void*)0;
            int32_t *l_985[5];
            int32_t l_986 = 0L;
            int i;
            for (i = 0; i < 5; i++)
                l_985[i] = &l_955;
            for (p_1042->g_702 = 1; (p_1042->g_702 <= 5); p_1042->g_702 += 1)
            { /* block id: 579 */
                int32_t **l_965 = &l_938;
                (*l_965) = (p_1042->g_964 , (*p_1042->g_793));
            }
            l_988++;
        }
        (*p_1042->g_1019) &= (safe_lshift_func_int8_t_s_s(((0x19352F09L >= (l_993 == ((safe_mul_func_int16_t_s_s(l_997, 0UL)) , ((safe_sub_func_int32_t_s_s(((!(safe_mod_func_int32_t_s_s((l_987[0][0][2] = ((safe_rshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((safe_add_func_uint8_t_u_u((*l_938), ((***l_944) = (safe_mod_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((((safe_rshift_func_uint8_t_u_s((*l_938), (*p_9))) ^ p_7) < (safe_rshift_func_uint8_t_u_u(l_955, 3))), 0x1FCBL)), 254UL))))), l_958)), p_7)) != p_8)), p_8))) ^ 0x4F37L), 0L)) , l_1016)))) == p_7), l_1018));
    }
    return p_1042->g_591.f3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_12 p_1042->g_3 p_1042->g_87 p_1042->g_554 p_1042->g_336 p_1042->g_219 p_1042->g_531 p_1042->g_104 p_1042->g_570 p_1042->g_461 p_1042->g_591 p_1042->g_152.f7 p_1042->g_581 p_1042->g_250.f1 p_1042->g_604 p_1042->g_412.f1 p_1042->g_76 p_1042->g_372 p_1042->g_373 p_1042->g_114 p_1042->g_460.f1 p_1042->g_643 p_1042->g_152.f4 p_1042->g_664 p_1042->g_207 p_1042->g_83 p_1042->g_234 p_1042->g_98 p_1042->g_706 p_1042->g_710 p_1042->g_719 p_1042->g_733 p_1042->g_711 p_1042->g_752 p_1042->g_134 p_1042->g_109 p_1042->g_764
 * writes: p_1042->g_12 p_1042->g_87 p_1042->g_554 p_1042->g_207 p_1042->g_372 p_1042->g_114 p_1042->g_219 p_1042->g_336 p_1042->g_412.f1 p_1042->g_644 p_1042->g_104 p_1042->g_664 p_1042->g_234 p_1042->g_402.f1 p_1042->g_85 p_1042->g_706 p_1042->g_711 p_1042->g_250.f1 p_1042->g_720 p_1042->g_733 p_1042->g_752 p_1042->g_109 p_1042->g_760
 */
int32_t  func_13(uint32_t  p_14, struct S3 * p_1042)
{ /* block id: 8 */
    uint64_t l_16 = 18446744073709551615UL;
    int8_t *l_27 = &p_1042->g_12;
    int64_t *l_564 = &p_1042->g_114;
    int64_t **l_563[9] = {&l_564,(void*)0,&l_564,&l_564,(void*)0,&l_564,&l_564,(void*)0,&l_564};
    int32_t l_573 = 0x0242BD37L;
    int32_t l_574 = 1L;
    int32_t l_575 = 6L;
    int32_t l_576 = 2L;
    int32_t l_577 = (-1L);
    int32_t l_578 = (-5L);
    int32_t l_579 = 0L;
    int32_t l_580 = 0x376CC454L;
    int32_t l_585[3];
    uint16_t l_586 = 0x2D17L;
    int32_t **l_617 = &p_1042->g_336;
    struct S1 *l_642[5][2][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1042->g_459,&p_1042->g_460,(void*)0,(void*)0,&p_1042->g_412}}};
    uint64_t l_648 = 1UL;
    struct S0 *l_709 = (void*)0;
    int32_t *l_749 = (void*)0;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_585[i] = 8L;
    for (p_1042->g_12 = 4; (p_1042->g_12 >= 0); p_1042->g_12 -= 1)
    { /* block id: 11 */
        return l_16;
    }
    if ((safe_div_func_uint32_t_u_u((((p_1042->g_3 , (safe_rshift_func_uint16_t_u_s((0x3AA6587CEBA9940DL < p_1042->g_3), 7))) || ((~(safe_sub_func_int64_t_s_s(p_14, (safe_add_func_uint16_t_u_u(((func_25(l_27, p_1042) >= ((FAKE_DIVERGE(p_1042->local_0_offset, get_local_id(0), 10) , 0xE9CFL) ^ 0x9C79L)) && l_16), GROUP_DIVERGE(0, 1)))))) == p_14)) , 0x36765892L), GROUP_DIVERGE(2, 1))))
    { /* block id: 333 */
        int64_t *l_561 = &p_1042->g_114;
        int64_t **l_560 = &l_561;
        int64_t ***l_562[9] = {&l_560,&l_560,&l_560,&l_560,&l_560,&l_560,&l_560,&l_560,&l_560};
        int32_t l_565 = 0x6009E965L;
        int16_t *l_568 = &p_1042->g_83;
        int32_t *l_569 = &l_565;
        int i;
        (*l_569) = ((((*p_1042->g_336) = p_14) > ((safe_sub_func_uint32_t_u_u(((l_16 | ((l_563[1] = l_560) == &p_1042->g_373)) >= l_565), ((safe_add_func_uint64_t_u_u((l_568 != l_568), (((l_565 && p_1042->g_219) , (void*)0) != (void*)0))) <= FAKE_DIVERGE(p_1042->local_1_offset, get_local_id(1), 10)))) != 0x70A8L)) & (*p_1042->g_531));
        (*p_1042->g_570) = &p_1042->g_373;
        (**p_1042->g_461) = ((*l_569) ^= (-1L));
    }
    else
    { /* block id: 340 */
        int32_t *l_571 = &p_1042->g_87;
        int32_t *l_572[8];
        uint64_t *l_602[9] = {&p_1042->g_134,&p_1042->g_134,&p_1042->g_134,&p_1042->g_134,&p_1042->g_134,&p_1042->g_134,&p_1042->g_134,&p_1042->g_134,&p_1042->g_134};
        int8_t *l_654 = &p_1042->g_12;
        int i;
        for (i = 0; i < 8; i++)
            l_572[i] = &p_1042->g_207;
        l_586--;
        if (((safe_div_func_uint64_t_u_u((l_580 = (p_1042->g_591 , ((&l_586 != &l_586) | (p_1042->g_152.f7 > ((safe_lshift_func_uint8_t_u_u((((l_576 &= ((*l_564) = (safe_div_func_int8_t_s_s((*l_571), (safe_sub_func_int64_t_s_s((p_1042->g_581 > p_1042->g_554), p_14)))))) <= ((((safe_sub_func_int64_t_s_s(((safe_sub_func_uint64_t_u_u((p_1042->g_219 = l_580), GROUP_DIVERGE(1, 1))) < p_14), p_1042->g_250.f1)) , (void*)0) != l_602[7]) , p_14)) == p_14), 4)) <= p_14))))), 0x1F947B7CCDED6F3FL)) , l_579))
        { /* block id: 346 */
            int32_t *l_603 = &l_580;
            (*p_1042->g_604) = l_603;
            for (p_1042->g_412.f1 = 0; (p_1042->g_412.f1 <= 10); ++p_1042->g_412.f1)
            { /* block id: 350 */
                int16_t l_626 = 0x323EL;
                (*l_571) |= (safe_div_func_int16_t_s_s((((*p_1042->g_76) == p_14) || (safe_div_func_int8_t_s_s(0x7EL, (((**p_1042->g_372) | ((*l_603) = 0UL)) ^ (safe_lshift_func_int16_t_s_s(0x24A5L, (safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(0x03L, 3)), ((&l_572[5] == l_617) >= p_14))))))))), 0x1439L));
                for (p_1042->g_87 = (-10); (p_1042->g_87 < (-9)); ++p_1042->g_87)
                { /* block id: 355 */
                    uint32_t l_639[4][6] = {{7UL,0x9FC7257DL,4294967295UL,0x9FC7257DL,7UL,7UL},{7UL,0x9FC7257DL,4294967295UL,0x9FC7257DL,7UL,7UL},{7UL,0x9FC7257DL,4294967295UL,0x9FC7257DL,7UL,7UL},{7UL,0x9FC7257DL,4294967295UL,0x9FC7257DL,7UL,7UL}};
                    int i, j;
                    for (l_579 = (-16); (l_579 == 5); l_579++)
                    { /* block id: 358 */
                        (*l_617) = ((!p_14) , (*p_1042->g_604));
                        return p_14;
                    }
                    l_577 |= ((safe_lshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((GROUP_DIVERGE(1, 1) , (l_626 & (safe_sub_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u(((safe_div_func_uint8_t_u_u((FAKE_DIVERGE(p_1042->global_2_offset, get_global_id(2), 10) != p_14), (safe_div_func_int64_t_s_s((*p_1042->g_373), ((*l_603) = p_14))))) || (*l_603)), 11)) || GROUP_DIVERGE(1, 1)), 3)), p_14)))) && (l_639[2][2] = (((void*)0 == (*l_617)) | 0L))), p_1042->g_460.f1)), 2)) && 0xDC70L);
                }
                (**l_617) = p_14;
                for (l_575 = 14; (l_575 == (-8)); l_575 = safe_sub_func_uint16_t_u_u(l_575, 9))
                { /* block id: 369 */
                    (*p_1042->g_643) = l_642[0][0][2];
                }
            }
        }
        else
        { /* block id: 373 */
            uint64_t l_647 = 18446744073709551613UL;
            int8_t *l_653 = &p_1042->g_12;
            int8_t *l_663 = &p_1042->g_664[0][0];
            int8_t l_665 = 0x28L;
            int32_t l_668[5] = {0x0656C47FL,0x0656C47FL,0x0656C47FL,0x0656C47FL,0x0656C47FL};
            int i;
            for (p_1042->g_104 = 13; (p_1042->g_104 == 9); p_1042->g_104 = safe_sub_func_uint8_t_u_u(p_1042->g_104, 6))
            { /* block id: 376 */
                (*l_571) &= (l_647 == 8L);
            }
            (*l_571) &= ((0xA94C9475L >= l_648) , 0x5187E8A6L);
            if ((safe_add_func_int8_t_s_s(((((((safe_rshift_func_uint8_t_u_u(((p_14 && ((1L == ((((void*)0 == &l_648) && ((p_1042->g_219 |= (l_653 == l_654)) != (safe_mul_func_uint16_t_u_u((((p_14 | (((((safe_add_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(l_647, ((*l_663) |= (((p_1042->g_152.f4 < p_14) < 0x101CC9A7L) == (*p_1042->g_76))))), (*p_1042->g_336))) , GROUP_DIVERGE(1, 1)) | l_665) > (*p_1042->g_531)) < 0UL)) <= GROUP_DIVERGE(1, 1)) == (**l_617)), p_14)))) != p_14)) <= FAKE_DIVERGE(p_1042->group_2_offset, get_group_id(2), 10))) == (*l_571)), 4)) < p_14) >= p_14) & p_1042->g_87) != 0x5A37666FEFCA54E0L) & p_14), p_14)))
            { /* block id: 382 */
                int32_t l_666 = 0L;
                int32_t l_667[10][3] = {{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL},{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL},{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL},{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL},{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL},{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL},{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL},{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL},{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL},{0x408E21E7L,0x5B0CCB6FL,0x119F4BCCL}};
                uint32_t l_669[6] = {0x54187F4FL,0x7BE844F1L,0x54187F4FL,0x54187F4FL,0x7BE844F1L,0x54187F4FL};
                uint8_t *l_677[6][5] = {{&p_1042->g_402.f1,&p_1042->g_250.f1,&p_1042->g_402.f1,&p_1042->g_402.f1,&p_1042->g_250.f1},{&p_1042->g_402.f1,&p_1042->g_250.f1,&p_1042->g_402.f1,&p_1042->g_402.f1,&p_1042->g_250.f1},{&p_1042->g_402.f1,&p_1042->g_250.f1,&p_1042->g_402.f1,&p_1042->g_402.f1,&p_1042->g_250.f1},{&p_1042->g_402.f1,&p_1042->g_250.f1,&p_1042->g_402.f1,&p_1042->g_402.f1,&p_1042->g_250.f1},{&p_1042->g_402.f1,&p_1042->g_250.f1,&p_1042->g_402.f1,&p_1042->g_402.f1,&p_1042->g_250.f1},{&p_1042->g_402.f1,&p_1042->g_250.f1,&p_1042->g_402.f1,&p_1042->g_402.f1,&p_1042->g_250.f1}};
                int i, j;
                ++l_669[3];
                (*l_571) ^= (((((l_668[4] <= p_14) >= ((safe_unary_minus_func_uint64_t_u(p_14)) , ((safe_mul_func_int16_t_s_s(1L, ((safe_add_func_uint8_t_u_u((p_1042->g_412.f1 = l_665), (safe_rshift_func_int8_t_s_s((safe_sub_func_int64_t_s_s((((**l_617) = (((((((((0x1AL <= (l_666 &= 0L)) < (2UL & 6UL)) | p_14) != 1UL) == 0UL) != 2L) , p_14) , (void*)0) != &l_586)) | GROUP_DIVERGE(2, 1)), (*p_1042->g_373))), p_14)))) < 18446744073709551613UL))) > p_14))) >= 0x60BC0C1C11E6C19BL) > p_1042->g_83) , (**l_617));
            }
            else
            { /* block id: 388 */
                int32_t l_695[3];
                uint64_t **l_730 = &l_602[5];
                int i;
                for (i = 0; i < 3; i++)
                    l_695[i] = 5L;
                for (p_1042->g_234 = 0; (p_1042->g_234 <= 7); p_1042->g_234 += 1)
                { /* block id: 391 */
                    uint16_t l_688[7][7] = {{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL}};
                    uint8_t *l_693 = &p_1042->g_402.f1;
                    uint16_t *l_694[7] = {&l_688[4][4],&l_688[4][4],&l_688[4][4],&l_688[4][4],&l_688[4][4],&l_688[4][4],&l_688[4][4]};
                    int32_t l_698 = 0x1C5848E7L;
                    int32_t l_703 = 4L;
                    int i, j;
                    (**l_617) ^= ((l_695[1] = (p_14 < (((((void*)0 == &p_1042->g_363) || (safe_add_func_uint64_t_u_u((((safe_mul_func_uint16_t_u_u(0x5685L, ((safe_lshift_func_uint16_t_u_s(l_688[4][4], ((*p_1042->g_98) = (((*l_693) = (safe_mul_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((+(0L == (FAKE_DIVERGE(p_1042->group_2_offset, get_group_id(2), 10) , p_1042->g_581))), (((*l_571) = ((*l_564) = (**p_1042->g_372))) == (&p_1042->g_76 != &p_1042->g_76)))), 0L))) ^ GROUP_DIVERGE(2, 1))))) & p_14))) , l_668[4]) , 0UL), p_1042->g_83))) != 8L) > l_688[6][2]))) < (-4L));
                    for (p_1042->g_114 = 7; (p_1042->g_114 >= 2); p_1042->g_114 -= 1)
                    { /* block id: 400 */
                        int32_t l_696 = 0x069FED3EL;
                        int32_t l_697 = (-2L);
                        int32_t l_705[9] = {0x38975510L,0x38975510L,0x38975510L,0x38975510L,0x38975510L,0x38975510L,0x38975510L,0x38975510L,0x38975510L};
                        int i;
                        p_1042->g_706[1]++;
                    }
                    if (p_14)
                        continue;
                }
                (*p_1042->g_710) = l_709;
                if ((safe_div_func_uint32_t_u_u(0x94FE2D1EL, (**l_617))))
                { /* block id: 406 */
                    uint64_t l_714 = 18446744073709551612UL;
                    uint32_t l_725 = 0x073048D2L;
                    l_714++;
                    for (p_1042->g_250.f1 = 0; (p_1042->g_250.f1 == 52); p_1042->g_250.f1++)
                    { /* block id: 410 */
                        p_1042->g_720 = p_1042->g_719;
                    }
                    for (p_14 = 23; (p_14 == 31); ++p_14)
                    { /* block id: 415 */
                        int8_t l_723 = 0x36L;
                        l_725--;
                    }
                    (*l_617) = (*p_1042->g_461);
                }
                else
                { /* block id: 419 */
                    struct S1 **l_736 = &l_642[3][0][4];
                    int32_t l_748 = 0x21F80CE1L;
                    if (l_668[4])
                    { /* block id: 420 */
                        uint64_t **l_728 = &l_602[7];
                        int32_t l_731 = 3L;
                        int32_t l_732[4][1];
                        int i, j;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_732[i][j] = (-1L);
                        }
                        l_730 = l_728;
                        --p_1042->g_733;
                    }
                    else
                    { /* block id: 423 */
                        (**p_1042->g_461) = ((l_736 != &p_1042->g_644) <= (safe_add_func_int8_t_s_s((((*p_1042->g_98) = ((safe_mul_func_int16_t_s_s(p_14, p_1042->g_719.f7)) != (p_1042->g_711[0][0] == p_1042->g_711[0][0]))) | p_14), 0x1BL)));
                    }
                    (*l_617) = (void*)0;
                    (*l_617) = &l_668[0];
                    if ((**l_617))
                    { /* block id: 429 */
                        return p_14;
                    }
                    else
                    { /* block id: 431 */
                        uint16_t l_743 = 0UL;
                        uint64_t ***l_754 = &p_1042->g_752;
                        (*l_571) |= ((*p_1042->g_336) = (safe_mul_func_int16_t_s_s(((*p_1042->g_98) = l_743), p_14)));
                        (*p_1042->g_336) = ((safe_add_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(0xF3L, 2)), ((l_748 | ((void*)0 != l_749)) , (0x5DBBL <= (safe_lshift_func_int16_t_s_s((((((((*l_754) = p_1042->g_752) != (void*)0) , p_14) | (safe_add_func_uint64_t_u_u((0x0296L & 3UL), l_647))) | p_14) > p_1042->g_134), 11)))))) || FAKE_DIVERGE(p_1042->group_0_offset, get_group_id(0), 10));
                        return l_695[0];
                    }
                }
                for (p_1042->g_109 = 6; (p_1042->g_109 != 30); p_1042->g_109 = safe_add_func_int64_t_s_s(p_1042->g_109, 1))
                { /* block id: 442 */
                    return p_14;
                }
            }
        }
        (*p_1042->g_764) = ((*l_617) = l_572[5]);
    }
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_12 p_1042->g_87 p_1042->g_554
 * writes: p_1042->g_12 p_1042->g_87 p_1042->g_554
 */
int64_t  func_25(int8_t * p_26, struct S3 * p_1042)
{ /* block id: 14 */
    int32_t *l_206 = &p_1042->g_207;
    int8_t *l_215[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t **l_214 = &l_215[2];
    int32_t l_471 = 1L;
    int32_t l_486 = 0x465D814DL;
    int32_t l_487[9][10][2] = {{{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L}},{{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L}},{{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L}},{{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L}},{{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L}},{{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L}},{{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L}},{{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L}},{{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L},{(-4L),0x0D3437E9L}}};
    struct S1 *l_493 = &p_1042->g_459;
    uint32_t l_544 = 5UL;
    uint16_t l_557 = 65535UL;
    int i, j, k;
    for (p_1042->g_12 = 0; (p_1042->g_12 <= 4); p_1042->g_12 += 1)
    { /* block id: 17 */
        int8_t ***l_28 = (void*)0;
        int8_t ***l_29 = (void*)0;
        int8_t ***l_30 = (void*)0;
        int8_t *l_33 = &p_1042->g_12;
        int8_t **l_32 = &l_33;
        int8_t ***l_31 = &l_32;
        int32_t l_43 = (-1L);
        int32_t l_216 = 0x328790D6L;
        uint64_t *l_217 = (void*)0;
        uint64_t *l_218 = &p_1042->g_219;
        int8_t l_220 = (-1L);
        int8_t ****l_468 = &l_28;
        int32_t *l_469 = (void*)0;
        int32_t *l_470[10] = {&l_216,&l_43,&l_216,&l_216,&l_43,&l_216,&l_216,&l_43,&l_216,&l_216};
        union U2 *l_522[3][8] = {{&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164},{&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164},{&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164,&p_1042->g_164}};
        int i, j;
        (*l_31) = (void*)0;
    }
    for (p_1042->g_87 = (-4); (p_1042->g_87 >= (-16)); p_1042->g_87 = safe_sub_func_uint8_t_u_u(p_1042->g_87, 1))
    { /* block id: 324 */
        int32_t l_552 = (-8L);
        int32_t l_553 = 2L;
        for (l_471 = (-9); (l_471 >= 9); l_471 = safe_add_func_int8_t_s_s(l_471, 7))
        { /* block id: 327 */
            int32_t *l_551[7][6] = {{&l_471,&p_1042->g_87,&l_486,&p_1042->g_207,&p_1042->g_87,&p_1042->g_207},{&l_471,&p_1042->g_87,&l_486,&p_1042->g_207,&p_1042->g_87,&p_1042->g_207},{&l_471,&p_1042->g_87,&l_486,&p_1042->g_207,&p_1042->g_87,&p_1042->g_207},{&l_471,&p_1042->g_87,&l_486,&p_1042->g_207,&p_1042->g_87,&p_1042->g_207},{&l_471,&p_1042->g_87,&l_486,&p_1042->g_207,&p_1042->g_87,&p_1042->g_207},{&l_471,&p_1042->g_87,&l_486,&p_1042->g_207,&p_1042->g_87,&p_1042->g_207},{&l_471,&p_1042->g_87,&l_486,&p_1042->g_207,&p_1042->g_87,&p_1042->g_207}};
            int i, j;
            --p_1042->g_554;
        }
        return l_553;
    }
    return l_557;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_349 p_1042->g_234 p_1042->g_104 p_1042->g_372 p_1042->g_250.f1 p_1042->g_3 p_1042->g_152.f6 p_1042->g_399 p_1042->g_402 p_1042->g_412 p_1042->g_114 p_1042->g_447 p_1042->g_459 p_1042->g_461 p_1042->g_335 p_1042->g_336 p_1042->g_462 p_1042->g_424
 * writes: p_1042->g_234 p_1042->g_104 p_1042->g_363 p_1042->g_250.f1 p_1042->g_368 p_1042->g_378 p_1042->g_399 p_1042->g_336 p_1042->g_424 p_1042->g_114 p_1042->g_441 p_1042->g_153 p_1042->g_448 p_1042->g_460
 */
int8_t *** func_34(int64_t * p_35, uint8_t  p_36, int8_t *** p_37, struct S3 * p_1042)
{ /* block id: 146 */
    uint32_t **l_348 = (void*)0;
    int32_t l_351[1][1];
    int32_t *l_352 = &l_351[0][0];
    uint16_t l_359[3];
    int8_t ***l_386 = &p_1042->g_75;
    uint32_t *l_442[9] = {&p_1042->g_104,&p_1042->g_104,&p_1042->g_104,&p_1042->g_104,&p_1042->g_104,&p_1042->g_104,&p_1042->g_104,&p_1042->g_104,&p_1042->g_104};
    int16_t l_443 = 0x5C7BL;
    int16_t l_453[5];
    uint16_t l_464 = 0x2009L;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_351[i][j] = 9L;
    }
    for (i = 0; i < 3; i++)
        l_359[i] = 6UL;
    for (i = 0; i < 5; i++)
        l_453[i] = 1L;
    (*l_352) = ((l_348 != p_1042->g_349) | l_351[0][0]);
    for (p_1042->g_234 = 0; (p_1042->g_234 <= 5); p_1042->g_234 += 1)
    { /* block id: 150 */
        int8_t l_360[8][3] = {{(-1L),0x48L,4L},{(-1L),0x48L,4L},{(-1L),0x48L,4L},{(-1L),0x48L,4L},{(-1L),0x48L,4L},{(-1L),0x48L,4L},{(-1L),0x48L,4L},{(-1L),0x48L,4L}};
        int32_t l_365 = 0x41CF8291L;
        int64_t *l_381 = &p_1042->g_114;
        int64_t **l_380[5][7][2] = {{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}},{{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381},{&l_381,&l_381}}};
        int32_t l_395 = 0x5338EAC8L;
        int32_t l_405 = 0x345A668DL;
        int32_t l_439 = 0x2840EFFDL;
        int8_t ***l_440 = &p_1042->g_75;
        int i, j, k;
        for (p_1042->g_104 = 0; (p_1042->g_104 <= 0); p_1042->g_104 += 1)
        { /* block id: 153 */
            uint8_t *l_364 = &p_1042->g_250.f1;
            int64_t **l_366 = (void*)0;
            int64_t l_406 = 6L;
            int32_t l_444 = 0x48E6ABA4L;
            uint32_t l_446 = 0x04064618L;
            int i, j;
            if (l_351[p_1042->g_104][p_1042->g_104])
                break;
            if ((safe_div_func_int16_t_s_s((~((((l_365 = ((safe_rshift_func_uint8_t_u_s(((*l_364) = ((p_1042->g_363 = (safe_mod_func_int64_t_s_s((l_351[p_1042->g_104][p_1042->g_104] == (((l_351[p_1042->g_104][p_1042->g_104] && l_359[1]) != ((((0UL || p_36) != l_360[6][0]) , (p_36 == l_351[p_1042->g_104][p_1042->g_104])) && (safe_mod_func_int32_t_s_s((p_36 | 0x514FD3A77E88413FL), l_360[3][0])))) <= p_1042->g_234)), 0x3BC2A8D072CA4206L))) < 0x42BE3EC5L)), (*l_352))) >= 0xD6L)) > 0x62F0L) <= 0x48L) , p_36)), 9UL)))
            { /* block id: 158 */
                uint8_t l_374 = 0x7FL;
                int32_t *l_389 = &l_351[0][0];
                int32_t **l_403 = &p_1042->g_336;
                for (l_365 = 0; (l_365 >= 0); l_365 -= 1)
                { /* block id: 161 */
                    int i, j;
                    for (p_1042->g_250.f1 = 0; (p_1042->g_250.f1 <= 0); p_1042->g_250.f1 += 1)
                    { /* block id: 164 */
                        int64_t ***l_367[9];
                        uint32_t *l_377 = &p_1042->g_378;
                        uint8_t *l_379 = &p_1042->g_363;
                        int i, j;
                        for (i = 0; i < 9; i++)
                            l_367[i] = &l_366;
                        l_351[p_1042->g_104][l_365] |= 9L;
                        l_351[p_1042->g_250.f1][p_1042->g_250.f1] = ((p_1042->g_368 = l_366) == (((*l_379) = (safe_unary_minus_func_uint32_t_u(((safe_sub_func_uint16_t_u_u(((void*)0 != p_1042->g_372), (l_374 >= (safe_add_func_uint16_t_u_u(65535UL, (p_36 , p_36)))))) , ((*l_377) = 0xBBE68C75L))))) , l_380[4][3][0]));
                    }
                    l_351[l_365][l_365] |= l_374;
                    if (((*p_35) == (safe_lshift_func_uint16_t_u_u(((((((safe_add_func_int32_t_s_s(((void*)0 == &p_1042->g_368), 5L)) , p_37) == l_386) , ((*l_352) <= (l_351[l_365][l_365] >= (l_360[5][0] < 0xD81D241AFD9003B1L)))) > (*l_352)) > 0L), p_1042->g_152.f6))))
                    { /* block id: 172 */
                        int32_t **l_390 = &l_389;
                        struct S1 *l_392 = (void*)0;
                        struct S1 **l_391 = &l_392;
                        int32_t *l_393 = &l_351[l_365][l_365];
                        int32_t *l_394 = &l_351[0][0];
                        int32_t *l_396 = &p_1042->g_207;
                        int32_t *l_397 = (void*)0;
                        int32_t *l_398[10][10] = {{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0},{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0},{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0},{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0},{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0},{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0},{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0},{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0},{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0},{&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&l_351[0][0],&p_1042->g_87,&p_1042->g_207,&l_351[0][0],&l_351[l_365][l_365],&p_1042->g_207,(void*)0}};
                        int i, j;
                        (*l_390) = l_389;
                        if (p_36)
                            break;
                        (*l_391) = (void*)0;
                        p_1042->g_399[0]++;
                    }
                    else
                    { /* block id: 177 */
                        (*l_389) = 0L;
                    }
                }
                (*l_403) = (p_1042->g_402 , (void*)0);
                if ((*l_352))
                    continue;
            }
            else
            { /* block id: 183 */
                int32_t *l_404[3];
                uint32_t l_407 = 0x37BA222CL;
                int32_t *l_423 = &p_1042->g_424;
                int8_t *l_445 = (void*)0;
                int i;
                for (i = 0; i < 3; i++)
                    l_404[i] = &p_1042->g_207;
                l_407++;
                (*l_352) = (safe_add_func_int16_t_s_s(0x54D8L, (((p_1042->g_412 , (**p_37)) == ((safe_unary_minus_func_uint16_t_u((((safe_rshift_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s(((l_444 |= (((safe_unary_minus_func_uint64_t_u(0x08508379130E3D8EL)) || (safe_lshift_func_int8_t_s_u(((((*l_423) = 0x2980BCB6L) , (safe_lshift_func_int8_t_s_s(((((safe_mul_func_uint16_t_u_u(0x3CB2L, (((p_1042->g_441 = ((((*l_381) |= ((((*l_423) = (-10L)) , ((p_1042->g_402.f1 < ((safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), ((p_1042->g_378 = (safe_div_func_uint32_t_u_u(((l_440 = ((safe_add_func_int64_t_s_s(((safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((l_439 & (*p_35)), p_36)), 0x96EFB332L)) == p_1042->g_402.f1), 7L)) , p_37)) == l_386), (*l_352)))) && 0xAD74E896L))) , 0x61L)) && 0x0634L)) >= p_36)) | 0x35D429D187583BF9L) , l_360[0][1])) || (*p_35)) > 0x49L))) < l_395) , &p_1042->g_104) != l_442[0]), p_36))) , l_351[p_1042->g_104][p_1042->g_104]), 3))) , l_443)) < 0x5E6FE816L), 5)) >= p_1042->g_412.f1), l_395)) ^ p_36), l_351[p_1042->g_104][p_1042->g_104])) >= p_36) ^ (*l_352)))) , l_445)) == l_446)));
                for (p_1042->g_153 = 0; (p_1042->g_153 <= 5); p_1042->g_153 += 1)
                { /* block id: 195 */
                    uint32_t l_452 = 9UL;
                    for (l_365 = 5; (l_365 >= 0); l_365 -= 1)
                    { /* block id: 198 */
                        (*p_1042->g_447) = &p_1042->g_324;
                    }
                    if (((safe_unary_minus_func_int32_t_s((safe_rshift_func_int8_t_s_s((l_452 = l_351[p_1042->g_104][p_1042->g_104]), 0)))) , ((*l_352) |= p_36)))
                    { /* block id: 203 */
                        int32_t l_456 = 0x1FEC34AEL;
                        if (l_444)
                            break;
                        (*l_352) &= (&l_444 == ((++(*l_364)) , &l_351[0][0]));
                        l_456 ^= (*l_352);
                    }
                    else
                    { /* block id: 208 */
                        int32_t **l_457 = &p_1042->g_336;
                        int32_t *l_458 = &l_351[p_1042->g_104][p_1042->g_104];
                        l_458 = ((*l_457) = &l_444);
                    }
                    return l_386;
                }
                if (p_36)
                    break;
            }
            p_1042->g_460 = p_1042->g_459;
            for (l_446 = 0; (l_446 <= 5); l_446 += 1)
            { /* block id: 219 */
                (*p_1042->g_461) = &l_365;
                (*p_1042->g_462) = (*p_1042->g_335);
                return &p_1042->g_75;
            }
        }
        return &p_1042->g_75;
    }
    for (p_1042->g_424 = 0; (p_1042->g_424 <= 8); p_1042->g_424 += 1)
    { /* block id: 229 */
        int32_t *l_463[2];
        int32_t **l_467 = &l_463[1];
        int i;
        for (i = 0; i < 2; i++)
            l_463[i] = &l_351[0][0];
        --l_464;
        (*l_467) = l_442[p_1042->g_424];
    }
    return &p_1042->g_75;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_150 p_1042->g_225 p_1042->g_83 p_1042->g_87 p_1042->g_234 p_1042->g_250 p_1042->g_152.f4 p_1042->g_140 p_1042->g_104 p_1042->g_324 p_1042->g_153 p_1042->g_85 p_1042->g_134 p_1042->g_328 p_1042->g_335 p_1042->g_207
 * writes: p_1042->g_140 p_1042->g_207 p_1042->g_104 p_1042->g_87 p_1042->g_336
 */
int64_t * func_38(int64_t  p_39, uint32_t  p_40, struct S3 * p_1042)
{ /* block id: 86 */
    uint32_t *l_228 = (void*)0;
    uint32_t **l_229 = (void*)0;
    uint32_t *l_230 = &p_1042->g_104;
    int32_t l_231 = 0L;
    int8_t *l_232 = &p_1042->g_12;
    uint64_t *l_233[8] = {&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234,&p_1042->g_234};
    int32_t l_235 = (-7L);
    uint32_t l_263 = 0xBCF031B4L;
    uint64_t *l_325 = (void*)0;
    int32_t *l_338 = &p_1042->g_207;
    int32_t *l_339 = &l_231;
    int32_t *l_340 = (void*)0;
    int32_t *l_341 = &p_1042->g_207;
    int32_t *l_342 = &p_1042->g_87;
    int32_t *l_343 = &p_1042->g_87;
    int32_t *l_344[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_345 = 0x58L;
    int i;
    l_235 |= ((4UL == ((safe_mod_func_int64_t_s_s((safe_add_func_int32_t_s_s((p_1042->g_150 != (p_1042->g_225 , l_233[2])), 0x05826A11L)), p_1042->g_83)) & 0x63AFL)) , l_231);
    for (p_40 = 0; (p_40 <= 7); p_40 += 1)
    { /* block id: 91 */
        int8_t ***l_245 = &p_1042->g_75;
        int64_t l_246[7][7][5] = {{{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L}},{{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L}},{{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L}},{{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L}},{{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L}},{{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L}},{{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L},{1L,(-7L),0x127EC23776A21A2EL,(-7L),1L}}};
        int32_t l_264 = 0x5510767AL;
        int64_t *l_291 = &p_1042->g_114;
        int16_t l_337 = 0L;
        int i, j, k;
        for (p_1042->g_140 = 6; (p_1042->g_140 >= 2); p_1042->g_140 -= 1)
        { /* block id: 94 */
            int8_t ****l_242 = (void*)0;
            int8_t ***l_244[2][8][2] = {{{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75}},{{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75},{&p_1042->g_75,&p_1042->g_75}}};
            int8_t ****l_243 = &l_244[0][3][1];
            int32_t l_249 = (-1L);
            int32_t *l_265 = &l_249;
            int16_t l_332 = (-1L);
            int64_t l_333 = 0x0F07ABB56E912156L;
            int i, j, k;
            if (((l_235 |= 0x24L) < ((safe_div_func_uint64_t_u_u((((p_39 < (l_246[2][3][4] = (safe_sub_func_int32_t_s_s((p_40 && (((*l_243) = (void*)0) == l_245)), (GROUP_DIVERGE(2, 1) ^ ((p_1042->g_225.f1 ^ FAKE_DIVERGE(p_1042->local_2_offset, get_local_id(2), 10)) && p_40)))))) | ((safe_rshift_func_int16_t_s_s((0x595EL >= (l_249 , p_1042->g_87)), p_39)) , 7UL)) == p_1042->g_234), FAKE_DIVERGE(p_1042->group_1_offset, get_group_id(1), 10))) & 0L)))
            { /* block id: 98 */
                int32_t l_255 = 0x15847E23L;
                int32_t l_260 = 0x7C73D9B7L;
                l_264 &= (((p_1042->g_250 , (safe_lshift_func_int16_t_s_s((((l_249 == (safe_add_func_uint8_t_u_u((p_1042->g_152.f4 != (-1L)), 8UL))) == l_255) ^ ((0x52A6L < (safe_sub_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((l_260 = FAKE_DIVERGE(p_1042->local_0_offset, get_local_id(0), 10)), ((safe_sub_func_uint8_t_u_u(l_263, ((p_39 != 1L) && l_235))) , 246UL))), l_255))) ^ p_39)), 6))) , 18446744073709551609UL) > p_1042->g_140);
                for (p_1042->g_207 = 7; (p_1042->g_207 >= 0); p_1042->g_207 -= 1)
                { /* block id: 103 */
                    int64_t *l_290 = &l_246[3][5][4];
                    int64_t *l_293 = &p_1042->g_114;
                    int64_t **l_292 = &l_293;
                    l_265 = &l_260;
                    if ((atomic_inc(&p_1042->g_atomic_input[59 * get_linear_group_id() + 20]) == 4))
                    { /* block id: 106 */
                        int8_t l_266[7][2][7] = {{{(-1L),0x67L,1L,9L,0x53L,9L,1L},{(-1L),0x67L,1L,9L,0x53L,9L,1L}},{{(-1L),0x67L,1L,9L,0x53L,9L,1L},{(-1L),0x67L,1L,9L,0x53L,9L,1L}},{{(-1L),0x67L,1L,9L,0x53L,9L,1L},{(-1L),0x67L,1L,9L,0x53L,9L,1L}},{{(-1L),0x67L,1L,9L,0x53L,9L,1L},{(-1L),0x67L,1L,9L,0x53L,9L,1L}},{{(-1L),0x67L,1L,9L,0x53L,9L,1L},{(-1L),0x67L,1L,9L,0x53L,9L,1L}},{{(-1L),0x67L,1L,9L,0x53L,9L,1L},{(-1L),0x67L,1L,9L,0x53L,9L,1L}},{{(-1L),0x67L,1L,9L,0x53L,9L,1L},{(-1L),0x67L,1L,9L,0x53L,9L,1L}}};
                        uint8_t l_267 = 0x9FL;
                        int32_t l_268 = 0x213670C3L;
                        int32_t l_269 = 0x633CEB34L;
                        int16_t l_270 = 0x761BL;
                        int8_t l_271 = 3L;
                        int64_t l_272[2];
                        uint16_t l_273 = 0xE0B9L;
                        uint32_t l_276 = 4294967295UL;
                        int32_t l_277 = (-2L);
                        uint32_t l_278 = 0xA55128AAL;
                        struct S1 l_279 = {0x4089DC33L,255UL};/* VOLATILE GLOBAL l_279 */
                        struct S0 l_281 = {4294967295UL,0x69DAD21F84CADEC8L,-1L,0xAEAD1E694F64F763L,0L,-7L,-10L,0x70DF5E59L,1UL};/* VOLATILE GLOBAL l_281 */
                        struct S0 *l_280 = &l_281;
                        struct S0 *l_282 = &l_281;
                        struct S0 *l_283 = &l_281;
                        uint64_t l_284 = 0x2819EE9381294FCAL;
                        uint8_t l_285 = 6UL;
                        int64_t l_286 = (-1L);
                        uint64_t l_287 = 0xC0765A4977B9727DL;
                        uint32_t l_288[2][5][8] = {{{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}}};
                        int64_t l_289[9] = {0x25807F5871EF909DL,0x25807F5871EF909DL,0x25807F5871EF909DL,0x25807F5871EF909DL,0x25807F5871EF909DL,0x25807F5871EF909DL,0x25807F5871EF909DL,0x25807F5871EF909DL,0x25807F5871EF909DL};
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_272[i] = 9L;
                        l_267 ^= l_266[5][0][1];
                        l_273--;
                        l_283 = (l_282 = (l_280 = (l_276 , (((l_278 = l_277) , l_279) , (void*)0))));
                        l_289[2] = ((l_287 = (l_286 = (l_285 = l_284))) , l_288[1][3][0]);
                        unsigned int result = 0;
                        int l_266_i0, l_266_i1, l_266_i2;
                        for (l_266_i0 = 0; l_266_i0 < 7; l_266_i0++) {
                            for (l_266_i1 = 0; l_266_i1 < 2; l_266_i1++) {
                                for (l_266_i2 = 0; l_266_i2 < 7; l_266_i2++) {
                                    result += l_266[l_266_i0][l_266_i1][l_266_i2];
                                }
                            }
                        }
                        result += l_267;
                        result += l_268;
                        result += l_269;
                        result += l_270;
                        result += l_271;
                        int l_272_i0;
                        for (l_272_i0 = 0; l_272_i0 < 2; l_272_i0++) {
                            result += l_272[l_272_i0];
                        }
                        result += l_273;
                        result += l_276;
                        result += l_277;
                        result += l_278;
                        result += l_279.f0;
                        result += l_279.f1;
                        result += l_281.f0;
                        result += l_281.f1;
                        result += l_281.f2;
                        result += l_281.f3;
                        result += l_281.f4;
                        result += l_281.f5;
                        result += l_281.f6;
                        result += l_281.f7;
                        result += l_281.f8;
                        result += l_284;
                        result += l_285;
                        result += l_286;
                        result += l_287;
                        int l_288_i0, l_288_i1, l_288_i2;
                        for (l_288_i0 = 0; l_288_i0 < 2; l_288_i0++) {
                            for (l_288_i1 = 0; l_288_i1 < 5; l_288_i1++) {
                                for (l_288_i2 = 0; l_288_i2 < 8; l_288_i2++) {
                                    result += l_288[l_288_i0][l_288_i1][l_288_i2];
                                }
                            }
                        }
                        int l_289_i0;
                        for (l_289_i0 = 0; l_289_i0 < 9; l_289_i0++) {
                            result += l_289[l_289_i0];
                        }
                        atomic_add(&p_1042->g_special_values[59 * get_linear_group_id() + 20], result);
                    }
                    else
                    { /* block id: 117 */
                        (1 + 1);
                    }
                    (*l_265) &= ((l_291 = l_290) != ((*l_292) = l_290));
                }
            }
            else
            { /* block id: 124 */
                int64_t l_310[8][8] = {{0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L,6L,0x4CAB275EA591C180L,0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L},{0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L,6L,0x4CAB275EA591C180L,0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L},{0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L,6L,0x4CAB275EA591C180L,0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L},{0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L,6L,0x4CAB275EA591C180L,0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L},{0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L,6L,0x4CAB275EA591C180L,0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L},{0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L,6L,0x4CAB275EA591C180L,0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L},{0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L,6L,0x4CAB275EA591C180L,0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L},{0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L,6L,0x4CAB275EA591C180L,0x4CAB275EA591C180L,6L,0x7005EE34FC9B9BD6L}};
                uint8_t l_311 = 250UL;
                int i, j;
                for (l_235 = 7; (l_235 >= 0); l_235 -= 1)
                { /* block id: 127 */
                    int8_t l_307 = 0x55L;
                    int8_t ****l_331 = (void*)0;
                    for (p_1042->g_104 = 0; (p_1042->g_104 <= 4); p_1042->g_104 += 1)
                    { /* block id: 130 */
                        int32_t *l_294 = (void*)0;
                        int32_t *l_295 = (void*)0;
                        int32_t *l_296 = &p_1042->g_87;
                        int32_t *l_297 = &l_231;
                        int32_t *l_298 = &l_231;
                        int32_t *l_299 = (void*)0;
                        int32_t *l_300 = &p_1042->g_207;
                        int32_t *l_301 = &l_231;
                        int32_t *l_302 = &l_249;
                        int32_t *l_303 = &l_249;
                        int32_t *l_304 = &p_1042->g_87;
                        int32_t *l_305 = &p_1042->g_87;
                        int32_t *l_306 = &p_1042->g_207;
                        int32_t *l_308 = &p_1042->g_87;
                        int32_t *l_309[2];
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_309[i] = &l_231;
                        l_311--;
                        if (l_246[p_1042->g_140][(p_1042->g_104 + 2)][p_1042->g_104])
                            continue;
                        (*l_305) = (l_246[p_1042->g_104][p_1042->g_140][p_1042->g_104] > (safe_div_func_int16_t_s_s((((safe_rshift_func_int8_t_s_s((((safe_mul_func_int16_t_s_s((-7L), (*l_303))) < (safe_add_func_uint64_t_u_u((((safe_mod_func_uint16_t_u_u(p_1042->g_234, (((((((p_39 < ((((((l_233[l_235] = l_233[3]) == (p_1042->g_324 , l_325)) == (safe_sub_func_uint32_t_u_u(((!p_1042->g_153) || 7UL), 0x58B04AFAL))) <= (*l_265)) != p_1042->g_85) | p_39)) >= p_1042->g_134) , p_1042->g_328[2]) != l_331) & 4UL) && l_310[6][0]) ^ 18446744073709551615UL))) >= FAKE_DIVERGE(p_1042->global_1_offset, get_global_id(1), 10)) || l_231), p_1042->g_250.f1))) <= 1L), l_332)) & p_1042->g_85) < l_333), p_40)));
                    }
                    return &p_1042->g_3;
                }
                (*p_1042->g_335) = &l_249;
            }
        }
        if (l_337)
            break;
    }
    (*l_338) ^= l_235;
    --l_345;
    return l_233[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_12 p_1042->g_75 p_1042->g_3 p_1042->g_83 p_1042->g_76 p_1042->g_88 p_1042->g_104 p_1042->g_87 p_1042->g_85 p_1042->g_113 p_1042->g_114 p_1042->g_134 p_1042->g_109 p_1042->g_140 p_1042->g_15 p_1042->g_150 p_1042->g_152 p_1042->g_98 p_1042->g_153 p_1042->g_164
 * writes: p_1042->g_83 p_1042->g_85 p_1042->g_88 p_1042->g_98 p_1042->g_104 p_1042->g_109 p_1042->g_114 p_1042->g_134 p_1042->g_87 p_1042->g_140 p_1042->g_153 p_1042->g_76
 */
int64_t  func_41(int64_t  p_42, struct S3 * p_1042)
{ /* block id: 19 */
    int8_t l_79 = 0L;
    int16_t *l_82 = &p_1042->g_83;
    int16_t *l_84 = &p_1042->g_85;
    int32_t l_177 = 1L;
    uint16_t *l_178 = &p_1042->g_109;
    int32_t *l_179[1][7][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    int8_t l_199 = (-10L);
    uint64_t l_203[5];
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_203[i] = 18446744073709551612UL;
    if ((((safe_add_func_int8_t_s_s((safe_mod_func_int32_t_s_s(((0x5EDCL != (safe_lshift_func_int8_t_s_u(((((-2L) < (safe_mul_func_uint16_t_u_u(((*l_178) = (safe_sub_func_uint16_t_u_u((safe_add_func_int32_t_s_s(0x756C5408L, 0x4CF41705L)), (func_56(p_1042->g_12, func_60((safe_mod_func_uint32_t_u_u((safe_mod_func_int32_t_s_s(p_42, (func_70(p_1042->g_75, (safe_div_func_int16_t_s_s(l_79, ((*l_84) = ((*l_82) ^= ((safe_div_func_int32_t_s_s((p_1042->g_3 & p_1042->g_12), 2L)) >= FAKE_DIVERGE(p_1042->global_0_offset, get_global_id(0), 10)))))), p_42, p_42, p_1042) & (**p_1042->g_75)))), 0x5B1603EDL)), &l_79, l_79, &l_79, p_1042->g_3, p_1042), (*p_1042->g_75), p_1042) & l_177)))), p_42))) > 0x00L) != l_177), 7))) >= l_177), l_177)), p_42)) >= p_1042->g_12) , l_177))
    { /* block id: 73 */
        l_179[0][3][0] = &p_1042->g_87;
        l_179[0][3][1] = &p_1042->g_87;
    }
    else
    { /* block id: 76 */
        int8_t *l_184 = &l_79;
        int32_t l_202 = 1L;
        p_1042->g_87 = (safe_sub_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((((*p_1042->g_75) = &l_79) != l_184), p_42)), ((safe_lshift_func_uint8_t_u_u(p_1042->g_152.f0, (safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u((~(safe_lshift_func_int16_t_s_u(((safe_add_func_int8_t_s_s(((safe_sub_func_int64_t_s_s((p_42 < p_1042->g_87), (safe_lshift_func_int16_t_s_s((~l_199), ((safe_rshift_func_int16_t_s_s(p_1042->g_140, ((*l_84) ^= (l_202 , (-8L))))) & 1L))))) | p_42), l_202)) ^ l_202), 6))), p_1042->g_87)), p_1042->g_109)))) != FAKE_DIVERGE(p_1042->local_0_offset, get_local_id(0), 10))));
    }
    l_203[2]--;
    return p_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_153 p_1042->g_164 p_1042->g_114 p_1042->g_134 p_1042->g_76 p_1042->g_12 p_1042->g_87
 * writes: p_1042->g_153 p_1042->g_87
 */
int16_t  func_56(int32_t  p_57, int64_t * p_58, int8_t * p_59, struct S3 * p_1042)
{ /* block id: 65 */
    uint8_t l_175 = 255UL;
    for (p_1042->g_153 = (-10); (p_1042->g_153 < 0); ++p_1042->g_153)
    { /* block id: 68 */
        int64_t **l_171 = (void*)0;
        int32_t l_172 = (-1L);
        int32_t *l_176 = &p_1042->g_87;
        (*l_176) ^= (safe_mul_func_uint8_t_u_u(((safe_div_func_uint8_t_u_u((((safe_add_func_uint64_t_u_u(0xA4B67B459C849AF2L, ((safe_rshift_func_uint8_t_u_s((p_1042->g_164 , ((safe_div_func_int64_t_s_s(p_1042->g_114, (safe_sub_func_uint64_t_u_u(((p_57 >= (safe_add_func_uint8_t_u_u((0xB3B7F8652C308C0DL || ((void*)0 != l_171)), l_172))) < ((safe_div_func_int16_t_s_s(((-4L) > 0L), l_175)) != 0x8E5E1966L)), (-5L))))) == 0x7E0EL)), 2)) > l_175))) & p_1042->g_134) || 1UL), p_57)) < p_57), (*p_1042->g_76)));
    }
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_88 p_1042->g_104 p_1042->g_87 p_1042->g_85 p_1042->g_113 p_1042->g_114 p_1042->g_76 p_1042->g_12 p_1042->g_134 p_1042->g_109 p_1042->g_140 p_1042->g_15 p_1042->g_150 p_1042->g_152 p_1042->g_98 p_1042->g_153
 * writes: p_1042->g_88 p_1042->g_98 p_1042->g_104 p_1042->g_109 p_1042->g_114 p_1042->g_85 p_1042->g_134 p_1042->g_87 p_1042->g_140 p_1042->g_153
 */
int64_t * func_60(int32_t  p_61, int8_t * p_62, int32_t  p_63, int8_t * p_64, uint64_t  p_65, struct S3 * p_1042)
{ /* block id: 24 */
    int32_t *l_86[1][6][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int64_t *l_116 = &p_1042->g_3;
    int8_t **l_130[4];
    int64_t *l_144 = (void*)0;
    int64_t **l_143 = &l_144;
    int64_t *l_146 = (void*)0;
    int64_t **l_145 = &l_146;
    int64_t *l_149 = &p_1042->g_114;
    int16_t l_151[7] = {0x0032L,0x0032L,0x0032L,0x0032L,0x0032L,0x0032L,0x0032L};
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_130[i] = &p_1042->g_76;
    ++p_1042->g_88;
    for (p_63 = 0; (p_63 == (-16)); p_63 = safe_sub_func_int16_t_s_s(p_63, 1))
    { /* block id: 28 */
        int32_t *l_93 = &p_1042->g_87;
        l_93 = &p_1042->g_87;
        for (p_61 = 0; (p_61 != 3); p_61++)
        { /* block id: 32 */
            uint32_t *l_103 = &p_1042->g_104;
            int32_t l_112 = 4L;
            int32_t **l_115[9] = {&l_86[0][1][0],(void*)0,&l_86[0][1][0],&l_86[0][1][0],(void*)0,&l_86[0][1][0],&l_86[0][1][0],(void*)0,&l_86[0][1][0]};
            int i;
            p_1042->g_114 |= (safe_mul_func_uint8_t_u_u(((+((p_63 && (((p_1042->g_98 = (void*)0) != &p_1042->g_83) || ((safe_add_func_uint32_t_u_u((~(safe_rshift_func_int8_t_s_u(0x1CL, (((p_61 , (((*l_103)--) != ((((((p_1042->g_109 = 0x1E71E300L) & GROUP_DIVERGE(0, 1)) == (*l_93)) ^ (((safe_lshift_func_uint16_t_u_u(p_61, l_112)) , (*l_93)) >= p_1042->g_85)) , p_63) >= 0x0422L))) , p_1042->g_113) , 255UL)))), p_63)) >= (*l_93)))) >= 0x6BD7L)) && 2UL), 0x1CL));
            l_86[0][1][0] = &p_1042->g_87;
            if ((*l_93))
                break;
        }
        return l_116;
    }
    for (p_1042->g_85 = (-3); (p_1042->g_85 == 29); ++p_1042->g_85)
    { /* block id: 44 */
        int64_t l_119[5][7][2] = {{{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L}},{{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L}},{{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L}},{{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L}},{{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L},{0x73B058BA22E2F3D0L,0L}}};
        int8_t ***l_122[7][10][3] = {{{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75}},{{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75}},{{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75}},{{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75}},{{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75}},{{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75}},{{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75},{(void*)0,&p_1042->g_75,&p_1042->g_75}}};
        int8_t **l_123 = (void*)0;
        uint64_t *l_133 = &p_1042->g_134;
        int8_t ****l_137 = &l_122[4][4][2];
        uint64_t *l_138 = (void*)0;
        int8_t l_139 = 0x3CL;
        int i, j, k;
        if (l_119[4][3][0])
            break;
        p_63 = (p_65 > ((l_123 = &p_1042->g_76) != (void*)0));
        p_1042->g_140 ^= (!(p_63 = (p_1042->g_87 ^= (safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s((~((~(p_63 , (*p_1042->g_76))) & ((void*)0 == l_130[2]))), (~((*p_64) = ((safe_sub_func_uint64_t_u_u((++(*l_133)), (p_1042->g_114 = ((l_139 = (((+p_1042->g_109) , (void*)0) != ((*l_137) = &l_130[3]))) , (p_1042->g_109 , (-8L)))))) != p_1042->g_85))))), FAKE_DIVERGE(p_1042->local_0_offset, get_local_id(0), 10))))));
    }
    p_1042->g_153 &= ((((*p_62) = (-1L)) & ((((0x616235A8L <= (-1L)) || (p_1042->g_109 = (safe_add_func_int32_t_s_s(((((((+(((l_116 == (p_1042->g_15[4][0][3] , ((*l_145) = ((*l_143) = l_116)))) , l_146) == (((((safe_rshift_func_uint8_t_u_s((((*l_149) = ((p_1042->g_87 &= p_65) , 0x7E807B8652413386L)) > p_1042->g_140), 1)) , 0x1CL) || 0L) & 0x06L) , p_1042->g_150))) && p_61) , l_151[1]) , p_1042->g_152) , p_1042->g_134) & (-1L)), 0x200AAEA3L)))) , p_61) && 0x3F5A4B3DB9095E05L)) <= (*p_1042->g_98));
    return &p_1042->g_114;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_76 p_1042->g_12
 * writes:
 */
int8_t  func_70(int8_t ** p_71, int64_t  p_72, int16_t  p_73, int32_t  p_74, struct S3 * p_1042)
{ /* block id: 22 */
    return (**p_71);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[59];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 59; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[59];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 59; i++)
            l_special_values[i] = 0;
    struct S3 c_1043;
    struct S3* p_1042 = &c_1043;
    struct S3 c_1044 = {
        (-1L), // p_1042->g_3
        1L, // p_1042->g_12
        {{{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}}},{{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}}},{{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}}},{{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}}},{{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}}},{{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}},{{0x80A8980DL,0x3AEBB8FA76005BF0L,0L,0x79E0FDA63E176CBFL,1L,0x317453A37F729B20L,0x46L,0L,0x34L},{0x6A0D05BAL,1L,-8L,18446744073709551614UL,0L,7L,1L,1L,0UL},{0xEB153474L,-8L,0L,0x1D76F079C5DFBC4EL,0x09A5L,-2L,0x59L,5L,0x76L},{0x9F371061L,-4L,0x2D65L,0x87891B7C00FEE9B7L,-8L,-1L,6L,0x3716F4F3L,1UL},{4294967295UL,0x532C91DF6875C0BCL,0x5C98L,0xE575B16568BFC037L,0x333BL,-4L,1L,-4L,0x82L},{0xD9805F63L,0L,-1L,0x77F5592973452C79L,0x732BL,-1L,0x31L,3L,1UL}}}}, // p_1042->g_15
        &p_1042->g_12, // p_1042->g_76
        &p_1042->g_76, // p_1042->g_75
        (-9L), // p_1042->g_83
        0x4CE1L, // p_1042->g_85
        1L, // p_1042->g_87
        0xAAL, // p_1042->g_88
        &p_1042->g_85, // p_1042->g_98
        4294967288UL, // p_1042->g_104
        0xBEABL, // p_1042->g_109
        {0}, // p_1042->g_113
        0x522A03B29E0AF0EFL, // p_1042->g_114
        0xF66142BF08DCBE90L, // p_1042->g_134
        0x5C7BL, // p_1042->g_140
        (void*)0, // p_1042->g_150
        {0x4D66F8EDL,-1L,0x4D61L,18446744073709551606UL,0x1860L,0x75D1723920C041A9L,-1L,-1L,0xA2L}, // p_1042->g_152
        1L, // p_1042->g_153
        {0}, // p_1042->g_164
        0L, // p_1042->g_207
        5UL, // p_1042->g_219
        {0x75927B2CL,0x24L}, // p_1042->g_225
        0xC62E70A77F8E56C4L, // p_1042->g_234
        {4294967295UL,255UL}, // p_1042->g_250
        {0}, // p_1042->g_324
        (void*)0, // p_1042->g_330
        &p_1042->g_330, // p_1042->g_329
        {&p_1042->g_329,&p_1042->g_329,&p_1042->g_329,&p_1042->g_329,&p_1042->g_329,&p_1042->g_329}, // p_1042->g_328
        (void*)0, // p_1042->g_334
        &p_1042->g_207, // p_1042->g_336
        &p_1042->g_336, // p_1042->g_335
        (void*)0, // p_1042->g_350
        &p_1042->g_350, // p_1042->g_349
        0UL, // p_1042->g_363
        (void*)0, // p_1042->g_368
        &p_1042->g_114, // p_1042->g_373
        &p_1042->g_373, // p_1042->g_372
        0xBEB238C0L, // p_1042->g_378
        {0xF38FL,1UL,0xF38FL,0xF38FL,1UL,0xF38FL}, // p_1042->g_399
        {0x879E47B1L,1UL}, // p_1042->g_402
        {0UL,255UL}, // p_1042->g_412
        0x1FB5084BL, // p_1042->g_424
        0L, // p_1042->g_441
        &p_1042->g_324, // p_1042->g_448
        &p_1042->g_448, // p_1042->g_447
        {0x8074F603L,247UL}, // p_1042->g_459
        {0x5C7628B5L,0x00L}, // p_1042->g_460
        &p_1042->g_336, // p_1042->g_461
        &p_1042->g_336, // p_1042->g_462
        2L, // p_1042->g_513
        1UL, // p_1042->g_515
        &p_1042->g_104, // p_1042->g_531
        0xF13335E0L, // p_1042->g_554
        &p_1042->g_372, // p_1042->g_570
        (-1L), // p_1042->g_581
        0L, // p_1042->g_582
        0x34CD4F789A210E63L, // p_1042->g_583
        0L, // p_1042->g_584
        {0xE0245295L,5L,0L,1UL,8L,1L,8L,1L,255UL}, // p_1042->g_591
        &p_1042->g_336, // p_1042->g_604
        (void*)0, // p_1042->g_644
        &p_1042->g_644, // p_1042->g_643
        {{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}}, // p_1042->g_664
        1L, // p_1042->g_699
        {{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}}, // p_1042->g_700
        0x4BEC4E6FB9E57F45L, // p_1042->g_701
        0x2636L, // p_1042->g_702
        {(-1L),(-1L)}, // p_1042->g_704
        {1UL,1UL,1UL,1UL,1UL}, // p_1042->g_706
        {{&p_1042->g_15[1][4][4]},{&p_1042->g_15[1][4][4]},{&p_1042->g_15[1][4][4]},{&p_1042->g_15[1][4][4]},{&p_1042->g_15[1][4][4]},{&p_1042->g_15[1][4][4]},{&p_1042->g_15[1][4][4]},{&p_1042->g_15[1][4][4]},{&p_1042->g_15[1][4][4]}}, // p_1042->g_711
        &p_1042->g_711[0][0], // p_1042->g_710
        {0xFB83C1FFL,0x3950EEAE67DCB610L,0x09DDL,1UL,0x2B9AL,0x081433A3B1CA6490L,0x60L,-9L,0x14L}, // p_1042->g_719
        {1UL,0x4EEC6BC1633F3194L,-10L,18446744073709551613UL,0x3AA1L,-1L,0x3BL,0x6BAF14FEL,0UL}, // p_1042->g_720
        0x78L, // p_1042->g_724
        (void*)0, // p_1042->g_729
        0x4BD8DF66L, // p_1042->g_733
        &p_1042->g_134, // p_1042->g_753
        &p_1042->g_753, // p_1042->g_752
        &p_1042->g_207, // p_1042->g_760
        {&p_1042->g_760}, // p_1042->g_759
        {&p_1042->g_760,&p_1042->g_760}, // p_1042->g_761
        (void*)0, // p_1042->g_762
        (void*)0, // p_1042->g_763
        &p_1042->g_760, // p_1042->g_764
        {1UL,0x02A014165CD6167FL,-1L,4UL,-1L,5L,0x5FL,0x5A2D112FL,0x93L}, // p_1042->g_765
        {{{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{0x03B0963DL,0x0885F4918A928697L,-10L,0x43C43E996AF0F255L,1L,1L,0L,0x60122432L,6UL},{1UL,0L,0x21E2L,3UL,1L,0x51D4EE367588A7B2L,0x5BL,0x0BB53D1BL,247UL},{0xFAEEC5DCL,0x1973821EF35CBB81L,0x5F86L,1UL,0x4D3FL,0x78CBB3F347846831L,0L,2L,255UL},{0xA63406A3L,-1L,0L,0xB9C8DE965D29AA21L,2L,0x34AA9B14E9440F50L,0x07L,-6L,0x30L}},{{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{0x03B0963DL,0x0885F4918A928697L,-10L,0x43C43E996AF0F255L,1L,1L,0L,0x60122432L,6UL},{1UL,0L,0x21E2L,3UL,1L,0x51D4EE367588A7B2L,0x5BL,0x0BB53D1BL,247UL},{0xFAEEC5DCL,0x1973821EF35CBB81L,0x5F86L,1UL,0x4D3FL,0x78CBB3F347846831L,0L,2L,255UL},{0xA63406A3L,-1L,0L,0xB9C8DE965D29AA21L,2L,0x34AA9B14E9440F50L,0x07L,-6L,0x30L}},{{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{0x03B0963DL,0x0885F4918A928697L,-10L,0x43C43E996AF0F255L,1L,1L,0L,0x60122432L,6UL},{1UL,0L,0x21E2L,3UL,1L,0x51D4EE367588A7B2L,0x5BL,0x0BB53D1BL,247UL},{0xFAEEC5DCL,0x1973821EF35CBB81L,0x5F86L,1UL,0x4D3FL,0x78CBB3F347846831L,0L,2L,255UL},{0xA63406A3L,-1L,0L,0xB9C8DE965D29AA21L,2L,0x34AA9B14E9440F50L,0x07L,-6L,0x30L}},{{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{0x03B0963DL,0x0885F4918A928697L,-10L,0x43C43E996AF0F255L,1L,1L,0L,0x60122432L,6UL},{1UL,0L,0x21E2L,3UL,1L,0x51D4EE367588A7B2L,0x5BL,0x0BB53D1BL,247UL},{0xFAEEC5DCL,0x1973821EF35CBB81L,0x5F86L,1UL,0x4D3FL,0x78CBB3F347846831L,0L,2L,255UL},{0xA63406A3L,-1L,0L,0xB9C8DE965D29AA21L,2L,0x34AA9B14E9440F50L,0x07L,-6L,0x30L}},{{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{0x03B0963DL,0x0885F4918A928697L,-10L,0x43C43E996AF0F255L,1L,1L,0L,0x60122432L,6UL},{1UL,0L,0x21E2L,3UL,1L,0x51D4EE367588A7B2L,0x5BL,0x0BB53D1BL,247UL},{0xFAEEC5DCL,0x1973821EF35CBB81L,0x5F86L,1UL,0x4D3FL,0x78CBB3F347846831L,0L,2L,255UL},{0xA63406A3L,-1L,0L,0xB9C8DE965D29AA21L,2L,0x34AA9B14E9440F50L,0x07L,-6L,0x30L}},{{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{0x03B0963DL,0x0885F4918A928697L,-10L,0x43C43E996AF0F255L,1L,1L,0L,0x60122432L,6UL},{1UL,0L,0x21E2L,3UL,1L,0x51D4EE367588A7B2L,0x5BL,0x0BB53D1BL,247UL},{0xFAEEC5DCL,0x1973821EF35CBB81L,0x5F86L,1UL,0x4D3FL,0x78CBB3F347846831L,0L,2L,255UL},{0xA63406A3L,-1L,0L,0xB9C8DE965D29AA21L,2L,0x34AA9B14E9440F50L,0x07L,-6L,0x30L}},{{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{0x03B0963DL,0x0885F4918A928697L,-10L,0x43C43E996AF0F255L,1L,1L,0L,0x60122432L,6UL},{1UL,0L,0x21E2L,3UL,1L,0x51D4EE367588A7B2L,0x5BL,0x0BB53D1BL,247UL},{0xFAEEC5DCL,0x1973821EF35CBB81L,0x5F86L,1UL,0x4D3FL,0x78CBB3F347846831L,0L,2L,255UL},{0xA63406A3L,-1L,0L,0xB9C8DE965D29AA21L,2L,0x34AA9B14E9440F50L,0x07L,-6L,0x30L}},{{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{0x03B0963DL,0x0885F4918A928697L,-10L,0x43C43E996AF0F255L,1L,1L,0L,0x60122432L,6UL},{1UL,0L,0x21E2L,3UL,1L,0x51D4EE367588A7B2L,0x5BL,0x0BB53D1BL,247UL},{0xFAEEC5DCL,0x1973821EF35CBB81L,0x5F86L,1UL,0x4D3FL,0x78CBB3F347846831L,0L,2L,255UL},{0xA63406A3L,-1L,0L,0xB9C8DE965D29AA21L,2L,0x34AA9B14E9440F50L,0x07L,-6L,0x30L}},{{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{4294967295UL,1L,-8L,0xA830336649BB5301L,1L,0L,0x56L,0x1AE4484EL,0x8FL},{0x03B0963DL,0x0885F4918A928697L,-10L,0x43C43E996AF0F255L,1L,1L,0L,0x60122432L,6UL},{1UL,0L,0x21E2L,3UL,1L,0x51D4EE367588A7B2L,0x5BL,0x0BB53D1BL,247UL},{0xFAEEC5DCL,0x1973821EF35CBB81L,0x5F86L,1UL,0x4D3FL,0x78CBB3F347846831L,0L,2L,255UL},{0xA63406A3L,-1L,0L,0xB9C8DE965D29AA21L,2L,0x34AA9B14E9440F50L,0x07L,-6L,0x30L}}}, // p_1042->g_766
        &p_1042->g_760, // p_1042->g_793
        {{{1UL,255UL},{0xA87E707CL,1UL},{0x38B29A64L,0xBBL},{9UL,249UL},{0UL,0UL},{9UL,0UL},{9UL,0UL},{0UL,0UL},{9UL,249UL}},{{1UL,255UL},{0xA87E707CL,1UL},{0x38B29A64L,0xBBL},{9UL,249UL},{0UL,0UL},{9UL,0UL},{9UL,0UL},{0UL,0UL},{9UL,249UL}},{{1UL,255UL},{0xA87E707CL,1UL},{0x38B29A64L,0xBBL},{9UL,249UL},{0UL,0UL},{9UL,0UL},{9UL,0UL},{0UL,0UL},{9UL,249UL}},{{1UL,255UL},{0xA87E707CL,1UL},{0x38B29A64L,0xBBL},{9UL,249UL},{0UL,0UL},{9UL,0UL},{9UL,0UL},{0UL,0UL},{9UL,249UL}},{{1UL,255UL},{0xA87E707CL,1UL},{0x38B29A64L,0xBBL},{9UL,249UL},{0UL,0UL},{9UL,0UL},{9UL,0UL},{0UL,0UL},{9UL,249UL}},{{1UL,255UL},{0xA87E707CL,1UL},{0x38B29A64L,0xBBL},{9UL,249UL},{0UL,0UL},{9UL,0UL},{9UL,0UL},{0UL,0UL},{9UL,249UL}},{{1UL,255UL},{0xA87E707CL,1UL},{0x38B29A64L,0xBBL},{9UL,249UL},{0UL,0UL},{9UL,0UL},{9UL,0UL},{0UL,0UL},{9UL,249UL}},{{1UL,255UL},{0xA87E707CL,1UL},{0x38B29A64L,0xBBL},{9UL,249UL},{0UL,0UL},{9UL,0UL},{9UL,0UL},{0UL,0UL},{9UL,249UL}},{{1UL,255UL},{0xA87E707CL,1UL},{0x38B29A64L,0xBBL},{9UL,249UL},{0UL,0UL},{9UL,0UL},{9UL,0UL},{0UL,0UL},{9UL,249UL}}}, // p_1042->g_800
        &p_1042->g_225, // p_1042->g_801
        {0x0DB0179BL,0x4147A1B0C55105CEL,-7L,0x5A898E23519FE442L,0x2E68L,-7L,-4L,-10L,0UL}, // p_1042->g_802
        &p_1042->g_802, // p_1042->g_803
        {0x99EDB02DL,0xC4L}, // p_1042->g_807
        {0UL,255UL}, // p_1042->g_839
        {{{0xE05D2B19L,0x6CC7C942FB975BE6L,0L,18446744073709551615UL,-7L,0x1D6B2E03AC10B431L,0x17L,0x0B71EA72L,0x6AL},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{0x9E3A9CC2L,1L,0x6286L,9UL,-1L,-1L,0x6DL,9L,255UL},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L}},{{0xE05D2B19L,0x6CC7C942FB975BE6L,0L,18446744073709551615UL,-7L,0x1D6B2E03AC10B431L,0x17L,0x0B71EA72L,0x6AL},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{0x9E3A9CC2L,1L,0x6286L,9UL,-1L,-1L,0x6DL,9L,255UL},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L}},{{0xE05D2B19L,0x6CC7C942FB975BE6L,0L,18446744073709551615UL,-7L,0x1D6B2E03AC10B431L,0x17L,0x0B71EA72L,0x6AL},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{0x9E3A9CC2L,1L,0x6286L,9UL,-1L,-1L,0x6DL,9L,255UL},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L}},{{0xE05D2B19L,0x6CC7C942FB975BE6L,0L,18446744073709551615UL,-7L,0x1D6B2E03AC10B431L,0x17L,0x0B71EA72L,0x6AL},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{0x9E3A9CC2L,1L,0x6286L,9UL,-1L,-1L,0x6DL,9L,255UL},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L}},{{0xE05D2B19L,0x6CC7C942FB975BE6L,0L,18446744073709551615UL,-7L,0x1D6B2E03AC10B431L,0x17L,0x0B71EA72L,0x6AL},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{0x9E3A9CC2L,1L,0x6286L,9UL,-1L,-1L,0x6DL,9L,255UL},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L},{0x411EA899L,0x3E3F17485ECBFD3FL,-7L,0xE5585B4EB7A96522L,0L,1L,0x0FL,0L,0xB2L},{1UL,0L,0x30A4L,0UL,-1L,1L,0x2DL,0L,0x55L}}}, // p_1042->g_858
        {0x1E565F01L,1UL}, // p_1042->g_914
        {0x60C36C41L,247UL}, // p_1042->g_920
        {0x1BA91FA2L,0xD1L}, // p_1042->g_964
        &p_1042->g_581, // p_1042->g_1019
        {{&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581},{&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581},{&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581},{&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581},{&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581},{&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581},{&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581,&p_1042->g_581}}, // p_1042->g_1040
        &p_1042->g_87, // p_1042->g_1041
        sequence_input[get_global_id(0)], // p_1042->global_0_offset
        sequence_input[get_global_id(1)], // p_1042->global_1_offset
        sequence_input[get_global_id(2)], // p_1042->global_2_offset
        sequence_input[get_local_id(0)], // p_1042->local_0_offset
        sequence_input[get_local_id(1)], // p_1042->local_1_offset
        sequence_input[get_local_id(2)], // p_1042->local_2_offset
        sequence_input[get_group_id(0)], // p_1042->group_0_offset
        sequence_input[get_group_id(1)], // p_1042->group_1_offset
        sequence_input[get_group_id(2)], // p_1042->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1043 = c_1044;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1042);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1042->g_3, "p_1042->g_3", print_hash_value);
    transparent_crc(p_1042->g_12, "p_1042->g_12", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1042->g_15[i][j][k].f0, "p_1042->g_15[i][j][k].f0", print_hash_value);
                transparent_crc(p_1042->g_15[i][j][k].f1, "p_1042->g_15[i][j][k].f1", print_hash_value);
                transparent_crc(p_1042->g_15[i][j][k].f2, "p_1042->g_15[i][j][k].f2", print_hash_value);
                transparent_crc(p_1042->g_15[i][j][k].f3, "p_1042->g_15[i][j][k].f3", print_hash_value);
                transparent_crc(p_1042->g_15[i][j][k].f4, "p_1042->g_15[i][j][k].f4", print_hash_value);
                transparent_crc(p_1042->g_15[i][j][k].f5, "p_1042->g_15[i][j][k].f5", print_hash_value);
                transparent_crc(p_1042->g_15[i][j][k].f6, "p_1042->g_15[i][j][k].f6", print_hash_value);
                transparent_crc(p_1042->g_15[i][j][k].f7, "p_1042->g_15[i][j][k].f7", print_hash_value);
                transparent_crc(p_1042->g_15[i][j][k].f8, "p_1042->g_15[i][j][k].f8", print_hash_value);

            }
        }
    }
    transparent_crc(p_1042->g_83, "p_1042->g_83", print_hash_value);
    transparent_crc(p_1042->g_85, "p_1042->g_85", print_hash_value);
    transparent_crc(p_1042->g_87, "p_1042->g_87", print_hash_value);
    transparent_crc(p_1042->g_88, "p_1042->g_88", print_hash_value);
    transparent_crc(p_1042->g_104, "p_1042->g_104", print_hash_value);
    transparent_crc(p_1042->g_109, "p_1042->g_109", print_hash_value);
    transparent_crc(p_1042->g_114, "p_1042->g_114", print_hash_value);
    transparent_crc(p_1042->g_134, "p_1042->g_134", print_hash_value);
    transparent_crc(p_1042->g_140, "p_1042->g_140", print_hash_value);
    transparent_crc(p_1042->g_152.f0, "p_1042->g_152.f0", print_hash_value);
    transparent_crc(p_1042->g_152.f1, "p_1042->g_152.f1", print_hash_value);
    transparent_crc(p_1042->g_152.f2, "p_1042->g_152.f2", print_hash_value);
    transparent_crc(p_1042->g_152.f3, "p_1042->g_152.f3", print_hash_value);
    transparent_crc(p_1042->g_152.f4, "p_1042->g_152.f4", print_hash_value);
    transparent_crc(p_1042->g_152.f5, "p_1042->g_152.f5", print_hash_value);
    transparent_crc(p_1042->g_152.f6, "p_1042->g_152.f6", print_hash_value);
    transparent_crc(p_1042->g_152.f7, "p_1042->g_152.f7", print_hash_value);
    transparent_crc(p_1042->g_152.f8, "p_1042->g_152.f8", print_hash_value);
    transparent_crc(p_1042->g_153, "p_1042->g_153", print_hash_value);
    transparent_crc(p_1042->g_207, "p_1042->g_207", print_hash_value);
    transparent_crc(p_1042->g_219, "p_1042->g_219", print_hash_value);
    transparent_crc(p_1042->g_225.f0, "p_1042->g_225.f0", print_hash_value);
    transparent_crc(p_1042->g_225.f1, "p_1042->g_225.f1", print_hash_value);
    transparent_crc(p_1042->g_234, "p_1042->g_234", print_hash_value);
    transparent_crc(p_1042->g_250.f0, "p_1042->g_250.f0", print_hash_value);
    transparent_crc(p_1042->g_250.f1, "p_1042->g_250.f1", print_hash_value);
    transparent_crc(p_1042->g_363, "p_1042->g_363", print_hash_value);
    transparent_crc(p_1042->g_378, "p_1042->g_378", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1042->g_399[i], "p_1042->g_399[i]", print_hash_value);

    }
    transparent_crc(p_1042->g_402.f0, "p_1042->g_402.f0", print_hash_value);
    transparent_crc(p_1042->g_402.f1, "p_1042->g_402.f1", print_hash_value);
    transparent_crc(p_1042->g_412.f0, "p_1042->g_412.f0", print_hash_value);
    transparent_crc(p_1042->g_412.f1, "p_1042->g_412.f1", print_hash_value);
    transparent_crc(p_1042->g_424, "p_1042->g_424", print_hash_value);
    transparent_crc(p_1042->g_441, "p_1042->g_441", print_hash_value);
    transparent_crc(p_1042->g_459.f0, "p_1042->g_459.f0", print_hash_value);
    transparent_crc(p_1042->g_459.f1, "p_1042->g_459.f1", print_hash_value);
    transparent_crc(p_1042->g_460.f0, "p_1042->g_460.f0", print_hash_value);
    transparent_crc(p_1042->g_460.f1, "p_1042->g_460.f1", print_hash_value);
    transparent_crc(p_1042->g_513, "p_1042->g_513", print_hash_value);
    transparent_crc(p_1042->g_515, "p_1042->g_515", print_hash_value);
    transparent_crc(p_1042->g_554, "p_1042->g_554", print_hash_value);
    transparent_crc(p_1042->g_581, "p_1042->g_581", print_hash_value);
    transparent_crc(p_1042->g_582, "p_1042->g_582", print_hash_value);
    transparent_crc(p_1042->g_583, "p_1042->g_583", print_hash_value);
    transparent_crc(p_1042->g_584, "p_1042->g_584", print_hash_value);
    transparent_crc(p_1042->g_591.f0, "p_1042->g_591.f0", print_hash_value);
    transparent_crc(p_1042->g_591.f1, "p_1042->g_591.f1", print_hash_value);
    transparent_crc(p_1042->g_591.f2, "p_1042->g_591.f2", print_hash_value);
    transparent_crc(p_1042->g_591.f3, "p_1042->g_591.f3", print_hash_value);
    transparent_crc(p_1042->g_591.f4, "p_1042->g_591.f4", print_hash_value);
    transparent_crc(p_1042->g_591.f5, "p_1042->g_591.f5", print_hash_value);
    transparent_crc(p_1042->g_591.f6, "p_1042->g_591.f6", print_hash_value);
    transparent_crc(p_1042->g_591.f7, "p_1042->g_591.f7", print_hash_value);
    transparent_crc(p_1042->g_591.f8, "p_1042->g_591.f8", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1042->g_664[i][j], "p_1042->g_664[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1042->g_699, "p_1042->g_699", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1042->g_700[i][j], "p_1042->g_700[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1042->g_701, "p_1042->g_701", print_hash_value);
    transparent_crc(p_1042->g_702, "p_1042->g_702", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1042->g_704[i], "p_1042->g_704[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1042->g_706[i], "p_1042->g_706[i]", print_hash_value);

    }
    transparent_crc(p_1042->g_719.f0, "p_1042->g_719.f0", print_hash_value);
    transparent_crc(p_1042->g_719.f1, "p_1042->g_719.f1", print_hash_value);
    transparent_crc(p_1042->g_719.f2, "p_1042->g_719.f2", print_hash_value);
    transparent_crc(p_1042->g_719.f3, "p_1042->g_719.f3", print_hash_value);
    transparent_crc(p_1042->g_719.f4, "p_1042->g_719.f4", print_hash_value);
    transparent_crc(p_1042->g_719.f5, "p_1042->g_719.f5", print_hash_value);
    transparent_crc(p_1042->g_719.f6, "p_1042->g_719.f6", print_hash_value);
    transparent_crc(p_1042->g_719.f7, "p_1042->g_719.f7", print_hash_value);
    transparent_crc(p_1042->g_719.f8, "p_1042->g_719.f8", print_hash_value);
    transparent_crc(p_1042->g_720.f0, "p_1042->g_720.f0", print_hash_value);
    transparent_crc(p_1042->g_720.f1, "p_1042->g_720.f1", print_hash_value);
    transparent_crc(p_1042->g_720.f2, "p_1042->g_720.f2", print_hash_value);
    transparent_crc(p_1042->g_720.f3, "p_1042->g_720.f3", print_hash_value);
    transparent_crc(p_1042->g_720.f4, "p_1042->g_720.f4", print_hash_value);
    transparent_crc(p_1042->g_720.f5, "p_1042->g_720.f5", print_hash_value);
    transparent_crc(p_1042->g_720.f6, "p_1042->g_720.f6", print_hash_value);
    transparent_crc(p_1042->g_720.f7, "p_1042->g_720.f7", print_hash_value);
    transparent_crc(p_1042->g_720.f8, "p_1042->g_720.f8", print_hash_value);
    transparent_crc(p_1042->g_724, "p_1042->g_724", print_hash_value);
    transparent_crc(p_1042->g_733, "p_1042->g_733", print_hash_value);
    transparent_crc(p_1042->g_765.f0, "p_1042->g_765.f0", print_hash_value);
    transparent_crc(p_1042->g_765.f1, "p_1042->g_765.f1", print_hash_value);
    transparent_crc(p_1042->g_765.f2, "p_1042->g_765.f2", print_hash_value);
    transparent_crc(p_1042->g_765.f3, "p_1042->g_765.f3", print_hash_value);
    transparent_crc(p_1042->g_765.f4, "p_1042->g_765.f4", print_hash_value);
    transparent_crc(p_1042->g_765.f5, "p_1042->g_765.f5", print_hash_value);
    transparent_crc(p_1042->g_765.f6, "p_1042->g_765.f6", print_hash_value);
    transparent_crc(p_1042->g_765.f7, "p_1042->g_765.f7", print_hash_value);
    transparent_crc(p_1042->g_765.f8, "p_1042->g_765.f8", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1042->g_766[i][j].f0, "p_1042->g_766[i][j].f0", print_hash_value);
            transparent_crc(p_1042->g_766[i][j].f1, "p_1042->g_766[i][j].f1", print_hash_value);
            transparent_crc(p_1042->g_766[i][j].f2, "p_1042->g_766[i][j].f2", print_hash_value);
            transparent_crc(p_1042->g_766[i][j].f3, "p_1042->g_766[i][j].f3", print_hash_value);
            transparent_crc(p_1042->g_766[i][j].f4, "p_1042->g_766[i][j].f4", print_hash_value);
            transparent_crc(p_1042->g_766[i][j].f5, "p_1042->g_766[i][j].f5", print_hash_value);
            transparent_crc(p_1042->g_766[i][j].f6, "p_1042->g_766[i][j].f6", print_hash_value);
            transparent_crc(p_1042->g_766[i][j].f7, "p_1042->g_766[i][j].f7", print_hash_value);
            transparent_crc(p_1042->g_766[i][j].f8, "p_1042->g_766[i][j].f8", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1042->g_800[i][j].f0, "p_1042->g_800[i][j].f0", print_hash_value);
            transparent_crc(p_1042->g_800[i][j].f1, "p_1042->g_800[i][j].f1", print_hash_value);

        }
    }
    transparent_crc(p_1042->g_802.f0, "p_1042->g_802.f0", print_hash_value);
    transparent_crc(p_1042->g_802.f1, "p_1042->g_802.f1", print_hash_value);
    transparent_crc(p_1042->g_802.f2, "p_1042->g_802.f2", print_hash_value);
    transparent_crc(p_1042->g_802.f3, "p_1042->g_802.f3", print_hash_value);
    transparent_crc(p_1042->g_802.f4, "p_1042->g_802.f4", print_hash_value);
    transparent_crc(p_1042->g_802.f5, "p_1042->g_802.f5", print_hash_value);
    transparent_crc(p_1042->g_802.f6, "p_1042->g_802.f6", print_hash_value);
    transparent_crc(p_1042->g_802.f7, "p_1042->g_802.f7", print_hash_value);
    transparent_crc(p_1042->g_802.f8, "p_1042->g_802.f8", print_hash_value);
    transparent_crc(p_1042->g_807.f0, "p_1042->g_807.f0", print_hash_value);
    transparent_crc(p_1042->g_807.f1, "p_1042->g_807.f1", print_hash_value);
    transparent_crc(p_1042->g_839.f0, "p_1042->g_839.f0", print_hash_value);
    transparent_crc(p_1042->g_839.f1, "p_1042->g_839.f1", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1042->g_858[i][j].f0, "p_1042->g_858[i][j].f0", print_hash_value);
            transparent_crc(p_1042->g_858[i][j].f1, "p_1042->g_858[i][j].f1", print_hash_value);
            transparent_crc(p_1042->g_858[i][j].f2, "p_1042->g_858[i][j].f2", print_hash_value);
            transparent_crc(p_1042->g_858[i][j].f3, "p_1042->g_858[i][j].f3", print_hash_value);
            transparent_crc(p_1042->g_858[i][j].f4, "p_1042->g_858[i][j].f4", print_hash_value);
            transparent_crc(p_1042->g_858[i][j].f5, "p_1042->g_858[i][j].f5", print_hash_value);
            transparent_crc(p_1042->g_858[i][j].f6, "p_1042->g_858[i][j].f6", print_hash_value);
            transparent_crc(p_1042->g_858[i][j].f7, "p_1042->g_858[i][j].f7", print_hash_value);
            transparent_crc(p_1042->g_858[i][j].f8, "p_1042->g_858[i][j].f8", print_hash_value);

        }
    }
    transparent_crc(p_1042->g_914.f0, "p_1042->g_914.f0", print_hash_value);
    transparent_crc(p_1042->g_914.f1, "p_1042->g_914.f1", print_hash_value);
    transparent_crc(p_1042->g_920.f0, "p_1042->g_920.f0", print_hash_value);
    transparent_crc(p_1042->g_920.f1, "p_1042->g_920.f1", print_hash_value);
    transparent_crc(p_1042->g_964.f0, "p_1042->g_964.f0", print_hash_value);
    transparent_crc(p_1042->g_964.f1, "p_1042->g_964.f1", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 59; i++)
            transparent_crc(p_1042->g_special_values[i + 59 * get_linear_group_id()], "p_1042->g_special_values[i + 59 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 59; i++)
            transparent_crc(p_1042->l_special_values[i], "p_1042->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
