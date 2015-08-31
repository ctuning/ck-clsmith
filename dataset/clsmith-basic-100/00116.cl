// ---fake_divergence -g 4,9,67 -l 4,3,1
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
struct S0 {
   uint8_t  f0;
   int32_t  f1;
   uint64_t  f2;
   volatile uint32_t  f3;
   uint16_t  f4;
   int32_t  f5;
   int16_t  f6;
   int32_t  f7;
   int32_t  f8;
   uint64_t  f9;
};

struct S1 {
   int32_t  f0;
   volatile int32_t  f1;
   struct S0  f2;
};

struct S2 {
    int16_t g_10;
    struct S1 g_23[4];
    struct S1 *g_22;
    struct S1 g_44;
    uint64_t g_57;
    int32_t g_60;
    int32_t *g_61;
    struct S1 *g_65;
    struct S1 ** volatile g_64;
    int8_t g_70[7][6][5];
    int32_t * volatile g_71[2];
    int32_t g_102;
    volatile struct S0 g_103[5];
    volatile int32_t * volatile g_116;
    volatile struct S0 g_144;
    volatile struct S0 g_154;
    int64_t g_166;
    volatile uint16_t g_184;
    volatile uint16_t *g_183;
    volatile struct S0 g_194[4];
    struct S0 g_201;
    volatile struct S0 g_202;
    int8_t g_250;
    uint32_t g_264[8];
    int32_t **g_275;
    int32_t ** volatile * volatile g_274;
    uint16_t *g_280;
    uint16_t **g_279;
    volatile struct S0 *g_324;
    int32_t *g_338;
    int64_t g_342;
    struct S1 g_345[2];
    struct S0 *g_394;
    struct S0 ** volatile g_393;
    struct S1 ** volatile g_396;
    struct S1 ** volatile g_397;
    struct S1 **g_503[6];
    struct S1 ***g_502;
    int32_t g_523;
    int16_t g_554;
    struct S1 g_606;
    volatile struct S0 g_646;
    int64_t g_680;
    int32_t g_693;
    volatile int16_t * volatile g_709;
    volatile int16_t * volatile *g_708;
    struct S1 ** volatile g_714;
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
int64_t  func_1(struct S2 * p_722);
int16_t  func_4(uint64_t  p_5, uint32_t  p_6, int64_t  p_7, uint32_t  p_8, uint16_t  p_9, struct S2 * p_722);
struct S1 * func_12(struct S1 * p_13, struct S1 * p_14, struct S2 * p_722);
struct S1 * func_15(uint64_t  p_16, struct S1 * p_17, int8_t  p_18, int64_t  p_19, struct S1 * p_20, struct S2 * p_722);
struct S1  func_26(int32_t  p_27, struct S1 * p_28, int64_t  p_29, struct S2 * p_722);
int32_t  func_31(struct S1 * p_32, int32_t  p_33, int32_t * p_34, struct S2 * p_722);
int32_t  func_37(int32_t  p_38, struct S2 * p_722);
int32_t  func_39(uint32_t  p_40, struct S2 * p_722);
int16_t  func_45(int32_t * p_46, struct S2 * p_722);
int32_t * func_47(int64_t  p_48, struct S2 * p_722);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_722->g_10 p_722->g_22 p_722->g_23.f0 p_722->g_44 p_722->g_23.f2.f7 p_722->g_23.f2.f1 p_722->g_64 p_722->g_23.f2.f4 p_722->g_60 p_722->g_70 p_722->g_23.f2.f2 p_722->g_71 p_722->g_102 p_722->g_103 p_722->g_116 p_722->g_23.f2.f8 p_722->g_23.f2.f0 p_722->g_23 p_722->g_144 p_722->g_154 p_722->g_166 p_722->g_183 p_722->g_194 p_722->g_201 p_722->g_202 p_722->g_57 p_722->g_264 p_722->g_274 p_722->g_279 p_722->g_65 p_722->g_275 p_722->g_61 p_722->g_345 p_722->g_184 p_722->g_393 p_722->g_502 p_722->g_523 p_722->g_250 p_722->g_342 p_722->g_503 p_722->g_606 p_722->g_646 p_722->g_324 p_722->g_708 p_722->g_714 p_722->g_709
 * writes: p_722->g_23.f2.f8 p_722->g_22 p_722->g_23.f2.f4 p_722->g_57 p_722->g_61 p_722->g_44.f2.f8 p_722->g_44.f2.f5 p_722->g_60 p_722->g_102 p_722->g_44.f2.f6 p_722->g_166 p_722->g_70 p_722->g_23.f2.f6 p_722->g_44.f2.f4 p_722->g_44.f2.f2 p_722->g_71 p_722->g_250 p_722->g_264 p_722->g_23 p_722->g_201.f1 p_722->g_201.f2 p_722->g_44.f2.f0 p_722->g_324 p_722->g_338 p_722->g_342 p_722->g_44.f2.f7 p_722->g_280 p_722->g_394 p_722->g_65 p_722->g_345.f2.f0 p_722->g_201.f7 p_722->g_103 p_722->g_502 p_722->g_523 p_722->g_554 p_722->g_201.f6 p_722->g_194 p_722->g_680
 */
int64_t  func_1(struct S2 * p_722)
{ /* block id: 4 */
    uint64_t l_11 = 0UL;
    int32_t *l_721 = &p_722->g_523;
    (*l_721) = (~(safe_rshift_func_int16_t_s_s(func_4(p_722->g_10, p_722->g_10, l_11, (p_722->g_10 , p_722->g_10), p_722->g_10, p_722), (safe_mul_func_int16_t_s_s(p_722->g_44.f2.f9, (safe_rshift_func_int16_t_s_u((0UL || p_722->g_44.f0), FAKE_DIVERGE(p_722->global_1_offset, get_global_id(1), 10))))))));
    return (*l_721);
}


/* ------------------------------------------ */
/* 
 * reads : p_722->g_22 p_722->g_23.f0 p_722->g_44 p_722->g_23.f2.f7 p_722->g_23.f2.f1 p_722->g_10 p_722->g_64 p_722->g_23.f2.f4 p_722->g_60 p_722->g_70 p_722->g_23.f2.f2 p_722->g_71 p_722->g_102 p_722->g_103 p_722->g_116 p_722->g_23.f2.f8 p_722->g_23.f2.f0 p_722->g_23 p_722->g_144 p_722->g_154 p_722->g_166 p_722->g_183 p_722->g_194 p_722->g_201 p_722->g_202 p_722->g_57 p_722->g_264 p_722->g_274 p_722->g_279 p_722->g_65 p_722->g_275 p_722->g_61 p_722->g_345 p_722->g_184 p_722->g_393 p_722->g_502 p_722->g_523 p_722->g_250 p_722->g_342 p_722->g_503 p_722->g_606 p_722->g_646 p_722->g_324 p_722->g_708 p_722->g_714 p_722->g_709
 * writes: p_722->g_23.f2.f8 p_722->g_22 p_722->g_23.f2.f4 p_722->g_57 p_722->g_61 p_722->g_44.f2.f8 p_722->g_44.f2.f5 p_722->g_60 p_722->g_102 p_722->g_44.f2.f6 p_722->g_166 p_722->g_70 p_722->g_23.f2.f6 p_722->g_44.f2.f4 p_722->g_44.f2.f2 p_722->g_71 p_722->g_250 p_722->g_264 p_722->g_23 p_722->g_201.f1 p_722->g_201.f2 p_722->g_44.f2.f0 p_722->g_324 p_722->g_338 p_722->g_342 p_722->g_44.f2.f7 p_722->g_280 p_722->g_394 p_722->g_65 p_722->g_345.f2.f0 p_722->g_201.f7 p_722->g_103 p_722->g_502 p_722->g_523 p_722->g_554 p_722->g_201.f6 p_722->g_194 p_722->g_680
 */
int16_t  func_4(uint64_t  p_5, uint32_t  p_6, int64_t  p_7, uint32_t  p_8, uint16_t  p_9, struct S2 * p_722)
{ /* block id: 5 */
    int16_t l_21[9] = {0x55BEL,0x55BEL,0x55BEL,0x55BEL,0x55BEL,0x55BEL,0x55BEL,0x55BEL,0x55BEL};
    int32_t l_24 = (-1L);
    struct S1 *l_25[1][1];
    struct S1 **l_713 = (void*)0;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_25[i][j] = &p_722->g_23[1];
    }
    (*p_722->g_714) = func_12(func_15(l_21[8], p_722->g_22, l_24, l_21[8], l_25[0][0], p_722), l_25[0][0], p_722);
    for (p_722->g_44.f2.f0 = 0; (p_722->g_44.f2.f0 >= 24); p_722->g_44.f2.f0 = safe_add_func_int64_t_s_s(p_722->g_44.f2.f0, 8))
    { /* block id: 341 */
        return (*p_722->g_709);
    }
    return l_21[8];
}


/* ------------------------------------------ */
/* 
 * reads : p_722->g_44.f2.f1 p_722->g_23.f2.f3 p_722->g_345.f2.f1 p_722->g_646 p_722->g_324 p_722->g_275 p_722->g_201.f2 p_722->g_166 p_722->g_201.f6 p_722->g_44.f2.f9 p_722->g_44.f2.f4 p_722->g_502 p_722->g_708 p_722->g_23.f2.f0
 * writes: p_722->g_502 p_722->g_194 p_722->g_103 p_722->g_61 p_722->g_201.f2 p_722->g_166 p_722->g_264 p_722->g_201.f6 p_722->g_680 p_722->g_44.f2.f4
 */
struct S1 * func_12(struct S1 * p_13, struct S1 * p_14, struct S2 * p_722)
{ /* block id: 307 */
    int32_t l_611 = (-4L);
    struct S1 ***l_618[5];
    struct S1 ****l_619 = &p_722->g_502;
    int32_t l_623 = 0L;
    int32_t l_627 = (-8L);
    int32_t l_637 = 0L;
    int32_t l_638 = 1L;
    int32_t l_639[5];
    int8_t l_641 = (-2L);
    int32_t l_642 = 0x3B7A9D92L;
    uint8_t l_643 = 0xC5L;
    uint64_t *l_676 = &p_722->g_57;
    int32_t l_677 = 6L;
    int16_t l_689 = 0x0B91L;
    int32_t l_690[8];
    struct S1 *l_700 = (void*)0;
    struct S1 ***l_701 = &p_722->g_503[1];
    int32_t *l_712 = &l_638;
    int i;
    for (i = 0; i < 5; i++)
        l_618[i] = &p_722->g_503[1];
    for (i = 0; i < 5; i++)
        l_639[i] = 0x70CBADC6L;
    for (i = 0; i < 8; i++)
        l_690[i] = 0x59B7A9FFL;
    if ((safe_div_func_int8_t_s_s((l_611 == (safe_rshift_func_int8_t_s_s((((safe_lshift_func_int8_t_s_u(((l_611 <= ((~(-1L)) , (safe_add_func_int32_t_s_s(1L, l_611)))) && l_611), (((*l_619) = l_618[1]) != &p_722->g_396))) & l_611) == p_722->g_44.f2.f1), l_611))), 0x39L)))
    { /* block id: 309 */
        int64_t l_620[9] = {0x10AB1D9E4203570FL,0x10AB1D9E4203570FL,0x10AB1D9E4203570FL,0x10AB1D9E4203570FL,0x10AB1D9E4203570FL,0x10AB1D9E4203570FL,0x10AB1D9E4203570FL,0x10AB1D9E4203570FL,0x10AB1D9E4203570FL};
        int32_t *l_621 = &p_722->g_523;
        int32_t *l_622 = &p_722->g_60;
        int32_t *l_624 = &p_722->g_523;
        int32_t *l_625 = (void*)0;
        int32_t l_626[10] = {0L,2L,0x685D69A4L,2L,0L,0L,2L,0x685D69A4L,2L,0L};
        int32_t *l_628 = &l_626[9];
        int32_t *l_629 = (void*)0;
        int32_t *l_630 = &p_722->g_60;
        int32_t *l_631 = &l_623;
        int32_t *l_632 = &p_722->g_60;
        int32_t *l_633 = (void*)0;
        int32_t *l_634 = &p_722->g_523;
        int32_t *l_635 = &p_722->g_102;
        int32_t *l_636[7][6][1] = {{{&l_627},{&l_627},{&l_627},{&l_627},{&l_627},{&l_627}},{{&l_627},{&l_627},{&l_627},{&l_627},{&l_627},{&l_627}},{{&l_627},{&l_627},{&l_627},{&l_627},{&l_627},{&l_627}},{{&l_627},{&l_627},{&l_627},{&l_627},{&l_627},{&l_627}},{{&l_627},{&l_627},{&l_627},{&l_627},{&l_627},{&l_627}},{{&l_627},{&l_627},{&l_627},{&l_627},{&l_627},{&l_627}},{{&l_627},{&l_627},{&l_627},{&l_627},{&l_627},{&l_627}}};
        int32_t l_640 = 9L;
        int i, j, k;
        l_643++;
        (*p_722->g_324) = (((p_722->g_23[3].f2.f3 , p_722->g_345[0].f2.f1) , 0x6697E879180E73ACL) , p_722->g_646);
        (*p_722->g_275) = &l_623;
    }
    else
    { /* block id: 313 */
        int32_t *l_649[10][9] = {{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102},{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102},{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102},{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102},{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102},{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102},{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102},{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102},{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102},{&l_639[1],&p_722->g_60,&l_637,&l_627,&l_639[3],&l_627,&p_722->g_523,&l_627,&p_722->g_102}};
        uint32_t l_681 = 0xFD005EB1L;
        int32_t l_686[1];
        int32_t l_691 = (-7L);
        int16_t l_692 = 0x4E6EL;
        uint8_t l_695 = 0x8BL;
        int i, j;
        for (i = 0; i < 1; i++)
            l_686[i] = 0x5A05BD40L;
        for (p_722->g_201.f2 = (-30); (p_722->g_201.f2 != 27); p_722->g_201.f2++)
        { /* block id: 316 */
            uint8_t l_660[8] = {253UL,253UL,253UL,253UL,253UL,253UL,253UL,253UL};
            int32_t l_682 = 1L;
            int32_t l_683 = 0x2EBBF027L;
            int32_t l_684 = 1L;
            int32_t l_685 = 0x3E48881EL;
            int32_t l_687 = 0x209C00C1L;
            int32_t l_688[3];
            int64_t l_694 = 0x6D28B1A6C5F50E49L;
            int i;
            for (i = 0; i < 3; i++)
                l_688[i] = 4L;
            (*p_722->g_275) = l_649[5][2];
            for (p_722->g_166 = 4; (p_722->g_166 >= 0); p_722->g_166 -= 1)
            { /* block id: 320 */
                uint32_t *l_661 = &p_722->g_264[0];
                uint64_t *l_674 = (void*)0;
                uint64_t **l_675[5];
                int16_t *l_678 = &p_722->g_201.f6;
                int64_t *l_679 = &p_722->g_680;
                int i;
                for (i = 0; i < 5; i++)
                    l_675[i] = &l_674;
                l_681 &= ((((((((FAKE_DIVERGE(p_722->group_2_offset, get_group_id(2), 10) , ((*l_679) = (safe_sub_func_uint16_t_u_u((safe_div_func_int64_t_s_s(l_639[p_722->g_166], (safe_lshift_func_int8_t_s_s(((safe_mod_func_int8_t_s_s(p_722->g_646.f3, (safe_add_func_int32_t_s_s(l_660[2], (((*l_661) = 0xFBF9410AL) == (safe_add_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(((safe_lshift_func_int16_t_s_s(((0x60L || (-1L)) <= ((safe_mod_func_int64_t_s_s((safe_mod_func_int16_t_s_s(((*l_678) &= (safe_rshift_func_uint8_t_u_u((l_661 != ((((l_660[2] ^ ((l_676 = l_674) == (void*)0)) == 0xF1648F6AEBBCE096L) ^ l_660[6]) , (void*)0)), l_677))), l_660[0])), l_639[p_722->g_166])) < 1L)), 11)) || l_660[2]), l_660[2])), p_722->g_44.f2.f9))))))) , l_660[2]), 3)))), 0x2E5EL)))) > 5UL) <= l_639[p_722->g_166]) != 0UL) || l_642) <= FAKE_DIVERGE(p_722->global_0_offset, get_global_id(0), 10)) != l_639[p_722->g_166]) , l_639[p_722->g_166]);
            }
            l_695++;
        }
    }
    for (p_722->g_44.f2.f4 = 12; (p_722->g_44.f2.f4 == 19); ++p_722->g_44.f2.f4)
    { /* block id: 332 */
        if (l_690[6])
            break;
        return l_700;
    }
    (*l_712) = (((l_701 != (*l_619)) , (safe_div_func_int32_t_s_s(l_639[1], (safe_mod_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s(((void*)0 == p_722->g_708), (+(safe_sub_func_uint8_t_u_u(((void*)0 != &l_676), (l_689 | (l_643 < 0x533BL))))))) <= p_722->g_23[3].f2.f0), l_639[1]))))) , l_642);
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_722->g_23.f0 p_722->g_44 p_722->g_23.f2.f7 p_722->g_23.f2.f1 p_722->g_10 p_722->g_64 p_722->g_23.f2.f4 p_722->g_60 p_722->g_70 p_722->g_23.f2.f2 p_722->g_71 p_722->g_102 p_722->g_103 p_722->g_116 p_722->g_23.f2.f8 p_722->g_23.f2.f0 p_722->g_23 p_722->g_144 p_722->g_154 p_722->g_166 p_722->g_183 p_722->g_194 p_722->g_201 p_722->g_202 p_722->g_57 p_722->g_264 p_722->g_274 p_722->g_279 p_722->g_65 p_722->g_275 p_722->g_61 p_722->g_345 p_722->g_184 p_722->g_393 p_722->g_502 p_722->g_523 p_722->g_250 p_722->g_342 p_722->g_503 p_722->g_606
 * writes: p_722->g_23.f2.f8 p_722->g_22 p_722->g_23.f2.f4 p_722->g_57 p_722->g_61 p_722->g_44.f2.f8 p_722->g_44.f2.f5 p_722->g_60 p_722->g_102 p_722->g_44.f2.f6 p_722->g_166 p_722->g_70 p_722->g_23.f2.f6 p_722->g_44.f2.f4 p_722->g_44.f2.f2 p_722->g_71 p_722->g_250 p_722->g_264 p_722->g_23 p_722->g_201.f1 p_722->g_201.f2 p_722->g_44.f2.f0 p_722->g_324 p_722->g_338 p_722->g_342 p_722->g_44.f2.f7 p_722->g_280 p_722->g_394 p_722->g_65 p_722->g_345.f2.f0 p_722->g_201.f7 p_722->g_103 p_722->g_502 p_722->g_523 p_722->g_554 p_722->g_201.f6
 */
struct S1 * func_15(uint64_t  p_16, struct S1 * p_17, int8_t  p_18, int64_t  p_19, struct S1 * p_20, struct S2 * p_722)
{ /* block id: 6 */
    int32_t *l_30 = &p_722->g_23[3].f2.f8;
    int32_t l_607 = (-1L);
    int32_t l_608 = 0x00D94C0FL;
    (*p_17) = func_26(((*l_30) = 0x7882D778L), p_20, p_18, p_722);
    l_608 &= l_607;
    return (**p_722->g_502);
}


/* ------------------------------------------ */
/* 
 * reads : p_722->g_23.f0 p_722->g_44 p_722->g_23.f2.f7 p_722->g_23.f2.f1 p_722->g_10 p_722->g_64 p_722->g_23.f2.f4 p_722->g_60 p_722->g_70 p_722->g_23.f2.f2 p_722->g_71 p_722->g_102 p_722->g_103 p_722->g_116 p_722->g_23.f2.f8 p_722->g_23.f2.f0 p_722->g_23 p_722->g_144 p_722->g_154 p_722->g_166 p_722->g_183 p_722->g_194 p_722->g_201 p_722->g_202 p_722->g_57 p_722->g_264 p_722->g_274 p_722->g_279 p_722->g_65 p_722->g_275 p_722->g_61 p_722->g_345 p_722->g_184 p_722->g_393 p_722->g_502 p_722->g_523 p_722->g_250 p_722->g_342 p_722->g_503 p_722->g_606
 * writes: p_722->g_22 p_722->g_23.f2.f4 p_722->g_57 p_722->g_61 p_722->g_44.f2.f8 p_722->g_44.f2.f5 p_722->g_60 p_722->g_102 p_722->g_44.f2.f6 p_722->g_166 p_722->g_70 p_722->g_23.f2.f6 p_722->g_44.f2.f4 p_722->g_44.f2.f2 p_722->g_71 p_722->g_250 p_722->g_264 p_722->g_23 p_722->g_201.f1 p_722->g_201.f2 p_722->g_44.f2.f0 p_722->g_324 p_722->g_338 p_722->g_342 p_722->g_44.f2.f7 p_722->g_280 p_722->g_394 p_722->g_65 p_722->g_345.f2.f0 p_722->g_201.f7 p_722->g_103 p_722->g_502 p_722->g_523 p_722->g_554 p_722->g_201.f6
 */
struct S1  func_26(int32_t  p_27, struct S1 * p_28, int64_t  p_29, struct S2 * p_722)
{ /* block id: 8 */
    struct S1 **l_35 = (void*)0;
    struct S1 **l_36[6][6][7] = {{{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0}},{{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0}},{{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0}},{{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0}},{{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0}},{{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0},{&p_722->g_22,&p_722->g_22,(void*)0,&p_722->g_22,&p_722->g_22,&p_722->g_22,(void*)0}}};
    int32_t *l_522 = &p_722->g_523;
    int8_t l_561 = 1L;
    int16_t *l_605 = (void*)0;
    int i, j, k;
    (*l_522) &= func_31((p_722->g_22 = (void*)0), func_37(p_722->g_23[3].f0, p_722), &p_27, p_722);
    for (p_722->g_44.f2.f0 = (-18); (p_722->g_44.f2.f0 != 4); ++p_722->g_44.f2.f0)
    { /* block id: 279 */
        uint8_t l_530 = 251UL;
        uint32_t *l_545 = &p_722->g_264[0];
        uint64_t l_552 = 0x492D1C6FF8191C89L;
        int8_t *l_553[3];
        int i;
        for (i = 0; i < 3; i++)
            l_553[i] = &p_722->g_70[4][5][3];
        (*l_522) = ((*l_522) && (safe_add_func_int8_t_s_s((p_722->g_250 , ((safe_mul_func_int16_t_s_s(((l_530 ^ l_530) == (GROUP_DIVERGE(0, 1) != (safe_add_func_int8_t_s_s(0x75L, (p_722->g_554 = (((safe_sub_func_int64_t_s_s((((((safe_sub_func_uint8_t_u_u((p_722->g_345[0].f1 , (safe_mod_func_int64_t_s_s(((((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(((*l_545) ^= 0x7DDCEFB9L), ((safe_mul_func_int8_t_s_s(((safe_mod_func_int64_t_s_s((safe_mul_func_int8_t_s_s((*l_522), p_27)), (*l_522))) , p_29), l_530)) , 4294967289UL))), l_552)), l_552)) , l_530) ^ l_530) | 0x2B12L), (*l_522)))), 0x53L)) & 1UL) , (*l_522)) <= l_530) == (-9L)), l_552)) >= p_722->g_10) < l_552)))))), p_29)) != p_29)), p_27)));
    }
    for (p_722->g_342 = (-11); (p_722->g_342 != 3); ++p_722->g_342)
    { /* block id: 286 */
        uint64_t l_566 = 0x94B842D3CFC43ED7L;
        int64_t *l_571 = &p_722->g_166;
        int32_t l_572 = (-1L);
        int32_t **l_579[10][4] = {{(void*)0,&l_522,&l_522,(void*)0},{(void*)0,&l_522,&l_522,(void*)0},{(void*)0,&l_522,&l_522,(void*)0},{(void*)0,&l_522,&l_522,(void*)0},{(void*)0,&l_522,&l_522,(void*)0},{(void*)0,&l_522,&l_522,(void*)0},{(void*)0,&l_522,&l_522,(void*)0},{(void*)0,&l_522,&l_522,(void*)0},{(void*)0,&l_522,&l_522,(void*)0},{(void*)0,&l_522,&l_522,(void*)0}};
        int8_t *l_580 = (void*)0;
        int8_t *l_581 = (void*)0;
        int8_t *l_582 = (void*)0;
        int8_t *l_583 = (void*)0;
        int8_t *l_584 = &p_722->g_70[4][5][3];
        int32_t *l_593[4][1][9] = {{{&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5}},{{&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5}},{{&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5}},{{&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f5,&p_722->g_23[3].f2.f1,&p_722->g_23[3].f2.f5}}};
        int i, j, k;
        l_572 ^= (safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(p_29, (*l_522))), (l_561 , (safe_sub_func_int64_t_s_s((p_27 != ((l_566 > (((*l_522) ^ (((l_566 > ((*l_571) ^= ((safe_lshift_func_int8_t_s_s(0x55L, (safe_add_func_uint64_t_u_u(((p_29 , p_29) , p_27), 0UL)))) != 0L))) <= 0x14A7L) != p_27)) >= 1L)) <= FAKE_DIVERGE(p_722->local_0_offset, get_local_id(0), 10))), 18446744073709551611UL)))));
        (***p_722->g_502) = (*p_28);
        if (((safe_div_func_uint32_t_u_u(p_722->g_194[0].f8, (((((((safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(((p_722->g_201.f4 & p_27) & (((p_29 , l_579[3][3]) != (void*)0) , (((*p_722->g_502) != (((*l_584) = (p_27 , p_722->g_166)) , (*p_722->g_502))) <= p_722->g_44.f2.f6))), p_27)), (*l_522))) & p_722->g_264[5]) && (-4L)) == 0x8A39C683L) , p_722->g_201.f5) >= GROUP_DIVERGE(1, 1)) && (*l_522)))) != p_722->g_345[0].f2.f8))
        { /* block id: 291 */
            return (***p_722->g_502);
        }
        else
        { /* block id: 293 */
            uint16_t l_601 = 65534UL;
            for (p_722->g_201.f6 = 0; (p_722->g_201.f6 <= 3); p_722->g_201.f6 += 1)
            { /* block id: 296 */
                uint8_t l_600 = 0x8BL;
                uint64_t l_602 = 0UL;
                l_602 |= (safe_add_func_int16_t_s_s(((((safe_add_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u(p_722->g_103[0].f6, (safe_add_func_uint8_t_u_u((*l_522), p_27)))) , (*p_722->g_183)), ((((((((void*)0 != l_593[0][0][5]) && p_722->g_264[6]) && (safe_lshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s((safe_add_func_int64_t_s_s(p_29, l_600)), 5)), l_601))) == GROUP_DIVERGE(2, 1)) , p_722->g_345[0].f2.f8) < p_722->g_250) | 0x49AAL))) ^ p_27) < p_722->g_44.f2.f2) > l_601), l_601));
            }
        }
        (*l_522) = (safe_div_func_int8_t_s_s(((0x3AA0E04FL && ((-6L) >= (*p_722->g_183))) | (p_722->g_201.f1 , ((l_605 = (void*)0) != (void*)0))), GROUP_DIVERGE(0, 1)));
    }
    return p_722->g_606;
}


/* ------------------------------------------ */
/* 
 * reads : p_722->g_102 p_722->g_201.f2
 * writes: p_722->g_102 p_722->g_201.f2
 */
int32_t  func_31(struct S1 * p_32, int32_t  p_33, int32_t * p_34, struct S2 * p_722)
{ /* block id: 268 */
    int32_t l_518 = 0x6841BC75L;
    int32_t *l_519 = &p_722->g_102;
    (*l_519) ^= l_518;
    for (p_722->g_201.f2 = 0; (p_722->g_201.f2 <= 29); p_722->g_201.f2 = safe_add_func_uint8_t_u_u(p_722->g_201.f2, 5))
    { /* block id: 272 */
        return (*l_519);
    }
    return (*l_519);
}


/* ------------------------------------------ */
/* 
 * reads : p_722->g_44 p_722->g_23.f2.f7 p_722->g_23.f2.f1 p_722->g_10 p_722->g_64 p_722->g_23.f2.f4 p_722->g_60 p_722->g_70 p_722->g_23.f2.f2 p_722->g_71 p_722->g_102 p_722->g_103 p_722->g_116 p_722->g_23.f2.f8 p_722->g_23.f2.f0 p_722->g_23 p_722->g_144 p_722->g_154 p_722->g_166 p_722->g_183 p_722->g_194 p_722->g_201 p_722->g_202 p_722->g_57 p_722->g_264 p_722->g_274 p_722->g_279 p_722->g_65 p_722->g_275 p_722->g_61 p_722->g_345 p_722->g_184 p_722->g_393 p_722->g_502
 * writes: p_722->g_23.f2.f4 p_722->g_57 p_722->g_61 p_722->g_44.f2.f8 p_722->g_44.f2.f5 p_722->g_60 p_722->g_102 p_722->g_44.f2.f6 p_722->g_166 p_722->g_70 p_722->g_23.f2.f6 p_722->g_44.f2.f4 p_722->g_44.f2.f2 p_722->g_71 p_722->g_250 p_722->g_264 p_722->g_23 p_722->g_201.f1 p_722->g_201.f2 p_722->g_44.f2.f0 p_722->g_324 p_722->g_338 p_722->g_342 p_722->g_44.f2.f7 p_722->g_280 p_722->g_394 p_722->g_65 p_722->g_345.f2.f0 p_722->g_201.f7 p_722->g_103 p_722->g_502
 */
int32_t  func_37(int32_t  p_38, struct S2 * p_722)
{ /* block id: 10 */
    uint8_t l_41 = 255UL;
    int32_t *l_74[1];
    int32_t **l_77 = &p_722->g_61;
    uint16_t *l_95 = (void*)0;
    int32_t l_109 = 0x78403924L;
    int32_t l_145 = (-4L);
    int32_t l_148[9][1] = {{0x5910F30DL},{0x5910F30DL},{0x5910F30DL},{0x5910F30DL},{0x5910F30DL},{0x5910F30DL},{0x5910F30DL},{0x5910F30DL},{0x5910F30DL}};
    int16_t l_206 = 0x4E5CL;
    int64_t l_216 = 0x78BC2A5C8606CE88L;
    int32_t ***l_309 = &p_722->g_275;
    uint64_t l_310 = 9UL;
    uint16_t l_311[8][5][6] = {{{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L}},{{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L}},{{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L}},{{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L}},{{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L}},{{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L}},{{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L}},{{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L},{65531UL,0UL,0UL,0x3C0FL,0x3C67L,0x3C67L}}};
    uint64_t *l_377 = &l_310;
    int8_t l_380 = 0x37L;
    struct S0 *l_392[7][10] = {{&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2},{&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2},{&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2},{&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2},{&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2},{&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2},{&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2,&p_722->g_44.f2,&p_722->g_23[3].f2,&p_722->g_23[3].f2}};
    uint8_t l_422 = 0x62L;
    int16_t *l_494[5][9][1] = {{{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6}},{{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6}},{{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6}},{{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6}},{{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6},{&p_722->g_345[0].f2.f6}}};
    int32_t *l_497 = &l_148[4][0];
    struct S1 **l_501 = &p_722->g_65;
    struct S1 ***l_500 = &l_501;
    struct S1 ****l_504 = &p_722->g_502;
    int32_t l_517 = 0x00752BE8L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_74[i] = &p_722->g_23[3].f0;
    if ((((func_39(l_41, p_722) >= l_41) , (((p_722->g_71[1] != l_74[0]) , (p_38 != 0L)) & (p_38 == (l_77 != (void*)0)))) && 18446744073709551609UL))
    { /* block id: 34 */
        uint16_t *l_94 = (void*)0;
        uint16_t l_99 = 0xE94DL;
        uint16_t *l_107 = &p_722->g_23[3].f2.f4;
        int32_t *l_108[7][10] = {{(void*)0,&p_722->g_102,&p_722->g_102,(void*)0,&p_722->g_60,&p_722->g_60,&p_722->g_60,&p_722->g_60,(void*)0,&p_722->g_102},{(void*)0,&p_722->g_102,&p_722->g_102,(void*)0,&p_722->g_60,&p_722->g_60,&p_722->g_60,&p_722->g_60,(void*)0,&p_722->g_102},{(void*)0,&p_722->g_102,&p_722->g_102,(void*)0,&p_722->g_60,&p_722->g_60,&p_722->g_60,&p_722->g_60,(void*)0,&p_722->g_102},{(void*)0,&p_722->g_102,&p_722->g_102,(void*)0,&p_722->g_60,&p_722->g_60,&p_722->g_60,&p_722->g_60,(void*)0,&p_722->g_102},{(void*)0,&p_722->g_102,&p_722->g_102,(void*)0,&p_722->g_60,&p_722->g_60,&p_722->g_60,&p_722->g_60,(void*)0,&p_722->g_102},{(void*)0,&p_722->g_102,&p_722->g_102,(void*)0,&p_722->g_60,&p_722->g_60,&p_722->g_60,&p_722->g_60,(void*)0,&p_722->g_102},{(void*)0,&p_722->g_102,&p_722->g_102,(void*)0,&p_722->g_60,&p_722->g_60,&p_722->g_60,&p_722->g_60,(void*)0,&p_722->g_102}};
        uint32_t l_149 = 4294967291UL;
        int32_t ***l_294 = &l_77;
        int i, j;
lbl_282:
        for (p_722->g_60 = 0; (p_722->g_60 >= 5); p_722->g_60 = safe_add_func_int32_t_s_s(p_722->g_60, 4))
        { /* block id: 37 */
            uint16_t **l_96 = &l_95;
            int32_t l_100 = 8L;
            int32_t *l_101 = &p_722->g_102;
            struct S1 **l_104 = &p_722->g_65;
            struct S1 **l_106 = (void*)0;
            struct S1 ***l_105 = &l_106;
            (*l_101) ^= (((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (((safe_add_func_int64_t_s_s((safe_mod_func_uint8_t_u_u(p_722->g_44.f2.f9, (safe_sub_func_int64_t_s_s(((!0x3A185DD0L) >= (safe_sub_func_int64_t_s_s(((p_38 != (((((safe_sub_func_int8_t_s_s(p_38, (FAKE_DIVERGE(p_722->local_2_offset, get_local_id(2), 10) | (safe_div_func_int16_t_s_s((l_94 != ((*l_96) = l_95)), p_722->g_44.f2.f7))))) >= (0L < (safe_rshift_func_uint8_t_u_s(((((0x05A5C68BL >= 0xED831605L) , 0x504EC7D9L) , l_99) >= GROUP_DIVERGE(1, 1)), p_38)))) | 65535UL) != p_38) || l_100)) | 0xB36999CFFFDCFAA0L), p_722->g_23[3].f2.f7))), p_722->g_44.f2.f4)))), 4L)) > l_99) | p_722->g_23[3].f2.f2))) > p_38) & 0L);
            p_38 &= ((65535UL ^ FAKE_DIVERGE(p_722->global_0_offset, get_global_id(0), 10)) | (*l_101));
            (*l_101) &= (l_95 == (((p_722->g_103[0] , l_104) == ((*l_105) = l_104)) , l_107));
        }
        if ((l_109 = 0x401494EEL))
        { /* block id: 45 */
            uint8_t l_110 = 255UL;
            int32_t l_111 = (-10L);
            int32_t l_141 = 0x373F3D56L;
            int64_t *l_175 = &p_722->g_166;
            int8_t *l_178 = &p_722->g_70[6][4][4];
            int16_t *l_199 = (void*)0;
            int16_t *l_200 = &p_722->g_10;
            int32_t l_207 = (-4L);
            int32_t l_208 = 1L;
            int32_t l_209 = 0L;
            int32_t l_210[1];
            int i;
            for (i = 0; i < 1; i++)
                l_210[i] = (-10L);
            for (p_38 = 3; (p_38 >= 0); p_38 -= 1)
            { /* block id: 48 */
                uint64_t l_117 = 0x2D1E09291A3040ACL;
                l_111 ^= l_110;
                for (l_109 = 4; (l_109 >= 2); l_109 -= 1)
                { /* block id: 52 */
                    int16_t *l_132 = &p_722->g_44.f2.f6;
                    int32_t l_146 = 0x6B9614A2L;
                    int64_t l_147 = 0x08732A64952B119DL;
                    int32_t ***l_150 = &l_77;
                    int i, j;
                    l_117 = (safe_sub_func_uint64_t_u_u(0x043DD9BAFC729903L, (p_38 <= (safe_mod_func_uint64_t_u_u(((void*)0 == p_722->g_116), p_38)))));
                    l_108[(l_109 + 2)][(l_109 + 1)] = func_47(((safe_div_func_int64_t_s_s(p_722->g_103[0].f5, (((((0x5517A028L > (safe_div_func_int32_t_s_s((p_38 & p_722->g_23[3].f2.f8), ((p_722->g_44.f2.f5 < p_722->g_23[3].f2.f8) & 0x476EL)))) , 0x6834DD0C7240D87DL) > ((safe_mul_func_int8_t_s_s(p_722->g_44.f2.f9, p_38)) != p_722->g_44.f2.f4)) ^ p_722->g_60) , 0x7CE5ED3885CE25C6L))) , 0x42405EA537F39B1BL), p_722);
                    if ((((*l_150) = ((l_149 &= ((safe_sub_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(0xC6L, (((l_148[4][0] &= (l_147 = (((*l_132) = 9L) == (1L == (l_146 = (l_145 = (safe_add_func_int16_t_s_s(0x1A2AL, ((safe_mul_func_int16_t_s_s((((p_722->g_23[3].f2.f0 , ((safe_rshift_func_int8_t_s_u((l_141 ^ (l_111 = (p_722->g_23[p_38] , (p_38 == ((safe_sub_func_uint32_t_u_u((p_722->g_144 , FAKE_DIVERGE(p_722->global_0_offset, get_global_id(0), 10)), p_38)) || l_117))))), p_38)) , p_38)) <= 0x4CB03ED47F7B9D44L) >= 0x1C5965C8L), p_38)) && p_38))))))))) > p_722->g_44.f0) <= l_117))), p_722->g_102)), 9UL)) == 0x5C7D3D4D40C0448FL)) , (void*)0)) != &p_722->g_61))
                    { /* block id: 63 */
                        return p_38;
                    }
                    else
                    { /* block id: 65 */
                        uint32_t l_151 = 0x6463BC80L;
                        return l_151;
                    }
                }
                for (l_141 = 3; (l_141 >= 0); l_141 -= 1)
                { /* block id: 71 */
                    int64_t *l_165 = &p_722->g_166;
                    l_111 &= (safe_rshift_func_uint16_t_u_u((p_722->g_154 , ((((p_722->g_103[0].f5 ^ (+(p_38 != (((safe_lshift_func_int16_t_s_s(2L, (((safe_rshift_func_int16_t_s_u(p_722->g_44.f2.f5, ((safe_mod_func_int32_t_s_s((l_145 != (((*l_165) = (safe_lshift_func_int16_t_s_s((0x6987L & FAKE_DIVERGE(p_722->global_0_offset, get_global_id(0), 10)), 1))) || (safe_lshift_func_int8_t_s_s(((safe_mod_func_int8_t_s_s((safe_mul_func_int8_t_s_s(0x65L, ((p_38 , &p_38) == l_108[6][7]))), GROUP_DIVERGE(1, 1))) , 0x5DL), 1)))), l_117)) , GROUP_DIVERGE(2, 1)))) == p_722->g_44.f0) & 0UL))) , p_722->g_44.f2.f7) , p_38)))) > 0x74F38DF079757A99L) ^ p_38) <= 0xCCF519E8L)), FAKE_DIVERGE(p_722->local_0_offset, get_local_id(0), 10)));
                }
            }
            l_111 = (p_38 = (-5L));
            p_722->g_102 |= ((((p_722->g_144.f7 , p_722->g_154.f8) > (safe_sub_func_uint8_t_u_u((l_110 , (((*l_175) |= 0x06556C0729C8DF18L) | ((safe_add_func_int32_t_s_s(0x00BD4355L, (((*l_178) = 6L) <= (((safe_add_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(l_110, (p_722->g_183 != l_95))), l_141)) != p_722->g_23[3].f0) <= p_722->g_23[3].f2.f8)))) , 1L))), 0x09L))) , p_38) > p_38);
            for (l_141 = 3; (l_141 >= 0); l_141 -= 1)
            { /* block id: 83 */
                int16_t *l_204 = &p_722->g_201.f6;
                int16_t **l_203 = &l_204;
                int32_t l_205 = 0x45157222L;
                l_206 = (safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(p_722->g_23[3].f2.f9, (((((safe_div_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u((safe_unary_minus_func_int16_t_s((p_722->g_23[3].f2.f6 |= (p_722->g_194[0] , (safe_mul_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(((p_38 , (l_200 = (l_199 = l_95))) == ((*l_203) = (p_722->g_201 , (p_722->g_202 , l_94)))), 3)), (GROUP_DIVERGE(1, 1) < (l_205 , ((p_38 <= p_722->g_23[3].f2.f9) && 0UL))))))))), p_722->g_44.f2.f4)), l_141)) > 0xCEBA578FL) | p_722->g_44.f2.f6) > 0x46D1L) == l_205))), l_205));
                l_111 ^= l_110;
                for (l_41 = 0; (l_41 <= 3); l_41 += 1)
                { /* block id: 92 */
                    uint32_t l_211 = 1UL;
                    l_211++;
                }
                for (p_722->g_102 = 0; (p_722->g_102 <= 0); p_722->g_102 += 1)
                { /* block id: 97 */
                    int32_t l_214 = 5L;
                    int16_t l_215 = 0x54A7L;
                    int32_t l_217 = 0x228D94D3L;
                    int32_t l_218 = 0x1D26CC64L;
                    int32_t l_219 = (-2L);
                    int32_t l_220 = 1L;
                    int32_t l_221[2][2] = {{6L,6L},{6L,6L}};
                    uint64_t l_222 = 0xC3B89E9367079259L;
                    int i, j;
                    if (p_38)
                        break;
                    l_222++;
                    l_205 ^= p_38;
                }
            }
        }
        else
        { /* block id: 103 */
            uint8_t l_227 = 0xC2L;
            uint32_t l_239 = 0xCC1EB9CAL;
            int32_t *l_270 = &l_109;
            uint16_t **l_281 = &l_107;
            for (p_722->g_44.f2.f4 = 5; (p_722->g_44.f2.f4 != 10); p_722->g_44.f2.f4 = safe_add_func_uint8_t_u_u(p_722->g_44.f2.f4, 1))
            { /* block id: 106 */
                int16_t l_231 = 4L;
                uint32_t l_247 = 0xEA661446L;
                int32_t l_267[10][2] = {{0L,0x739FC392L},{0L,0x739FC392L},{0L,0x739FC392L},{0L,0x739FC392L},{0L,0x739FC392L},{0L,0x739FC392L},{0L,0x739FC392L},{0L,0x739FC392L},{0L,0x739FC392L},{0L,0x739FC392L}};
                uint16_t l_269[4];
                int32_t ***l_276 = &p_722->g_275;
                int i, j;
                for (i = 0; i < 4; i++)
                    l_269[i] = 65535UL;
                l_227--;
                if (l_227)
                    break;
                for (p_722->g_44.f2.f2 = 0; (p_722->g_44.f2.f2 <= 1); p_722->g_44.f2.f2 += 1)
                { /* block id: 111 */
                    int32_t * volatile *l_230 = &p_722->g_71[1];
                    int8_t *l_238 = &p_722->g_70[5][1][2];
                    uint64_t *l_246 = &p_722->g_57;
                    int8_t *l_248 = (void*)0;
                    int8_t *l_249 = &p_722->g_250;
                    int i;
                    (*l_230) = p_722->g_71[p_722->g_44.f2.f2];
                    if (l_231)
                        continue;
                    if ((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((0xD930L <= 7L) != (safe_sub_func_int8_t_s_s(((*l_238) = p_38), (l_239 <= (((-1L) ^ (safe_div_func_int8_t_s_s(((*l_249) = ((4294967295UL || (((safe_rshift_func_uint8_t_u_u((p_722->g_194[0].f3 >= (((((*l_107) &= 0x6AAFL) <= (((*l_246) ^= (p_38 > 0x38A1492CL)) != (-1L))) , 6L) , 0x39E2747CA086378EL)), l_247)) >= p_722->g_201.f2) != l_239)) & 65528UL)), 4UL))) , p_38))))) | p_722->g_102), p_38)), 0L)))
                    { /* block id: 118 */
                        uint32_t *l_263 = &p_722->g_264[0];
                        int32_t l_268 = 1L;
                        l_269[1] |= (p_38 || ((safe_lshift_func_uint16_t_u_u((p_722->g_144 , GROUP_DIVERGE(1, 1)), p_722->g_44.f2.f6)) , (((safe_mul_func_int8_t_s_s(((((*l_238) &= p_722->g_154.f7) <= ((safe_mul_func_int16_t_s_s(0x238CL, (l_247 < ((safe_div_func_uint32_t_u_u(p_722->g_201.f2, (~(0x5825DFE9L | (safe_rshift_func_int16_t_s_u((((safe_mul_func_uint32_t_u_u((l_267[2][0] = ((*l_263)++)), (((1L <= l_239) <= l_268) <= p_38))) ^ 0L) ^ p_722->g_23[3].f2.f1), GROUP_DIVERGE(2, 1))))))) < p_38)))) , p_722->g_44.f2.f2)) && p_38), 0xC3L)) > 0UL) , 0x044F614CF04D7CD6L)));
                        if (p_38)
                            break;
                        if (l_268)
                            continue;
                    }
                    else
                    { /* block id: 125 */
                        uint64_t l_273 = 18446744073709551608UL;
                        l_270 = &p_722->g_102;
                        p_722->g_71[1] = func_47((safe_mod_func_uint8_t_u_u(l_267[2][0], l_273)), p_722);
                        (*l_77) = &p_722->g_102;
                    }
                }
                (*l_270) &= ((p_722->g_274 != l_276) != (safe_add_func_uint8_t_u_u((l_270 != &p_722->g_264[1]), ((l_281 = p_722->g_279) != (void*)0))));
            }
            if (p_722->g_201.f5)
                goto lbl_282;
            l_148[0][0] |= ((((*l_270) < p_38) ^ (safe_add_func_uint64_t_u_u(p_38, ((8L >= (safe_unary_minus_func_int8_t_s(p_38))) <= p_38)))) != ((p_722->g_201.f0 <= (safe_mul_func_uint8_t_u_u((safe_add_func_int64_t_s_s(((p_722->g_194[0].f2 == ((safe_div_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(0xC24FL, p_722->g_23[3].f0)), 65529UL)) , p_722->g_201.f2)) > 18446744073709551615UL), 0xF2CCEC2E8C3F7E89L)), (*l_270)))) != p_38));
            (*l_77) = (void*)0;
        }
        if ((((((p_722->g_23[3].f2 , (void*)0) == ((*l_294) = (p_38 , &p_722->g_61))) > (0x30E8BE36C76A17E3L < ((safe_rshift_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_u(p_38, 5)) > (safe_lshift_func_uint16_t_u_s((((safe_lshift_func_int8_t_s_u((safe_add_func_uint8_t_u_u(((p_722->g_70[4][5][3] & (safe_add_func_int16_t_s_s((((((((safe_rshift_func_uint16_t_u_s(p_38, ((l_309 != l_309) , l_310))) , p_722->g_102) && p_38) , p_38) < l_216) & p_38) | p_722->g_44.f2.f9), (-1L)))) <= p_38), p_38)), 0)) ^ p_38) != p_722->g_60), l_311[5][3][3]))) , p_38), p_38)) , p_38))) , (-6L)) , p_38))
        { /* block id: 139 */
            (*p_722->g_65) = (**p_722->g_64);
        }
        else
        { /* block id: 141 */
            for (p_722->g_201.f1 = 23; (p_722->g_201.f1 >= (-29)); p_722->g_201.f1--)
            { /* block id: 144 */
                int8_t l_316[7] = {0x61L,0x43L,0x61L,0x61L,0x43L,0x61L,0x61L};
                int i;
                for (p_722->g_250 = 3; (p_722->g_250 >= 0); p_722->g_250 -= 1)
                { /* block id: 147 */
                    (**l_309) = func_47(p_38, p_722);
                }
                p_38 = ((safe_lshift_func_uint8_t_u_u(l_316[2], 1)) >= p_38);
                (*l_77) = (*p_722->g_275);
                if (p_38)
                    continue;
            }
            for (p_722->g_201.f2 = 0; (p_722->g_201.f2 <= 4); p_722->g_201.f2 += 1)
            { /* block id: 156 */
                uint32_t l_317 = 1UL;
                --l_317;
                return p_38;
            }
            return p_38;
        }
        for (p_722->g_44.f2.f0 = 0; (p_722->g_44.f2.f0 < 48); ++p_722->g_44.f2.f0)
        { /* block id: 164 */
            return p_38;
        }
    }
    else
    { /* block id: 167 */
        volatile struct S0 *l_323 = &p_722->g_202;
        volatile struct S0 **l_322[10][2][2] = {{{&l_323,&l_323},{&l_323,&l_323}},{{&l_323,&l_323},{&l_323,&l_323}},{{&l_323,&l_323},{&l_323,&l_323}},{{&l_323,&l_323},{&l_323,&l_323}},{{&l_323,&l_323},{&l_323,&l_323}},{{&l_323,&l_323},{&l_323,&l_323}},{{&l_323,&l_323},{&l_323,&l_323}},{{&l_323,&l_323},{&l_323,&l_323}},{{&l_323,&l_323},{&l_323,&l_323}},{{&l_323,&l_323},{&l_323,&l_323}}};
        int32_t *l_337[3][9][6] = {{{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]}},{{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]}},{{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]},{&l_145,&p_722->g_102,&l_148[4][0],&l_145,&l_145,&l_148[4][0]}}};
        int32_t **l_336[1][7];
        int64_t *l_341 = &p_722->g_342;
        uint16_t *l_359 = (void*)0;
        int32_t ***l_437 = (void*)0;
        int8_t l_467 = (-1L);
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 7; j++)
                l_336[i][j] = &l_337[0][0][3];
        }
lbl_376:
        p_722->g_324 = &p_722->g_194[0];
        p_722->g_60 |= ((p_38 = (safe_add_func_int32_t_s_s((safe_lshift_func_int8_t_s_u(0x1AL, p_722->g_154.f9)), (((safe_add_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(0x3888L, (safe_mod_func_uint32_t_u_u(((safe_unary_minus_func_uint32_t_u((((*l_77) == (p_722->g_338 = (*p_722->g_275))) ^ (p_38 != p_38)))) == (((*l_341) = (safe_mul_func_uint16_t_u_u(p_38, ((p_722->g_166 < p_38) >= p_38)))) , p_38)), p_722->g_44.f2.f1)))), 3UL)) & 0xE5L) | p_38)))) != 0UL);
        for (p_722->g_44.f2.f7 = 17; (p_722->g_44.f2.f7 == (-9)); --p_722->g_44.f2.f7)
        { /* block id: 175 */
            uint32_t l_357[4][4][3] = {{{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L}},{{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L}},{{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L}},{{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L},{0x7EE452DAL,0UL,0xEE8B1620L}}};
            uint16_t *l_358 = (void*)0;
            int8_t *l_368 = &p_722->g_250;
            int32_t l_418 = 1L;
            uint64_t l_448 = 1UL;
            int32_t **l_464 = &l_337[2][3][4];
            int i, j, k;
            if (((p_722->g_345[0] , (safe_mul_func_uint16_t_u_u(((~((*l_368) = (safe_unary_minus_func_uint32_t_u(((safe_div_func_uint8_t_u_u(((safe_mod_func_int32_t_s_s((safe_sub_func_uint64_t_u_u(p_722->g_154.f8, ((safe_mul_func_int8_t_s_s((-1L), ((l_357[0][3][0] , ((*p_722->g_279) = l_358)) == l_359))) & (((safe_lshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s((((safe_rshift_func_int16_t_s_u(p_38, 12)) & (((safe_mul_func_uint8_t_u_u(p_722->g_345[0].f2.f1, (p_722->g_44.f2.f7 || 7UL))) , p_38) <= l_357[0][3][0])) , p_38), l_357[2][3][1])), p_38)) && p_38) & p_38)))), FAKE_DIVERGE(p_722->local_2_offset, get_local_id(2), 10))) > p_722->g_23[3].f2.f4), l_357[0][3][0])) & 1L))))) >= 0x5CL), p_38))) != 0UL))
            { /* block id: 178 */
                uint64_t l_371 = 0xE9E95144E22A99AAL;
                uint16_t l_387 = 0x56CAL;
                int32_t l_390 = 0x5F23EA01L;
                if (l_357[0][3][0])
                { /* block id: 179 */
                    int64_t *l_385 = (void*)0;
                    int64_t *l_386[7][5] = {{(void*)0,&l_216,(void*)0,(void*)0,&l_216},{(void*)0,&l_216,(void*)0,(void*)0,&l_216},{(void*)0,&l_216,(void*)0,(void*)0,&l_216},{(void*)0,&l_216,(void*)0,(void*)0,&l_216},{(void*)0,&l_216,(void*)0,(void*)0,&l_216},{(void*)0,&l_216,(void*)0,(void*)0,&l_216},{(void*)0,&l_216,(void*)0,(void*)0,&l_216}};
                    int i, j;
                    p_38 = (safe_mod_func_uint16_t_u_u(0xB0F5L, (*p_722->g_183)));
                    l_371--;
                    for (p_722->g_201.f1 = (-8); (p_722->g_201.f1 < 20); p_722->g_201.f1 = safe_add_func_int8_t_s_s(p_722->g_201.f1, 3))
                    { /* block id: 184 */
                        if (p_38)
                            break;
                        if (l_216)
                            goto lbl_376;
                        return l_371;
                    }
                    (*p_722->g_275) = func_47((l_387 = ((((l_377 = l_341) == (void*)0) | p_38) ^ (((safe_sub_func_uint32_t_u_u(l_380, (safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(l_357[0][3][0], 4)), 0x0FEDL)))) <= 0x5B0BL) || 0L))), p_722);
                }
                else
                { /* block id: 192 */
                    for (l_216 = 18; (l_216 < 15); l_216 = safe_sub_func_uint8_t_u_u(l_216, 2))
                    { /* block id: 195 */
                        int16_t l_391[6];
                        int i;
                        for (i = 0; i < 6; i++)
                            l_391[i] = 0x3251L;
                        l_390 |= p_38;
                        return l_391[2];
                    }
                    (*p_722->g_393) = l_392[0][6];
                    (**l_309) = (**p_722->g_274);
                }
                if (p_38)
                    break;
            }
            else
            { /* block id: 203 */
                struct S1 *l_395 = &p_722->g_23[2];
                int32_t ***l_414 = &l_336[0][1];
                int32_t l_438[5] = {0x7805BE1DL,0x7805BE1DL,0x7805BE1DL,0x7805BE1DL,0x7805BE1DL};
                uint32_t l_441 = 0x97026589L;
                int64_t *l_482 = &p_722->g_342;
                uint8_t *l_487 = &p_722->g_345[0].f2.f0;
                int i;
                (*p_722->g_64) = (l_395 = (*p_722->g_64));
                if (l_357[0][3][0])
                { /* block id: 206 */
                    uint32_t l_420 = 4294967295UL;
                    int32_t l_421 = (-1L);
                    for (p_722->g_166 = (-13); (p_722->g_166 != 16); p_722->g_166 = safe_add_func_uint16_t_u_u(p_722->g_166, 1))
                    { /* block id: 209 */
                        struct S0 *l_404 = &p_722->g_44.f2;
                        int32_t l_417 = 0x21AC5278L;
                        uint32_t *l_419 = &p_722->g_264[0];
                        l_421 = (safe_rshift_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u(((*l_419) |= (((void*)0 != l_404) == (safe_mod_func_int8_t_s_s(((*l_368) = (l_418 = (safe_div_func_int32_t_s_s((((safe_mod_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u((safe_unary_minus_func_int8_t_s(((((p_38 = (-1L)) || (GROUP_DIVERGE(2, 1) , ((&p_722->g_275 == l_414) || ((((*p_722->g_183) || (((*l_377) = 0x1A3034DEAB7AC8ABL) ^ (safe_add_func_uint8_t_u_u(0UL, (((l_357[0][3][0] != 0x6D2647F9DD7FCD8DL) ^ p_38) || p_722->g_194[0].f2))))) & p_38) , FAKE_DIVERGE(p_722->global_2_offset, get_global_id(2), 10))))) && l_417) || 0x2A26C4026778AA14L))), p_722->g_201.f7)), p_722->g_44.f0)) || 0x17F1L) >= l_417), 0xD2233501L)))), GROUP_DIVERGE(1, 1))))), FAKE_DIVERGE(p_722->group_0_offset, get_group_id(0), 10))) >= 0x76A5L) >= 9UL), l_420));
                        if (l_422)
                            continue;
                        (*p_722->g_65) = (**p_722->g_64);
                    }
                    l_421 |= l_420;
                    for (p_722->g_44.f2.f5 = (-5); (p_722->g_44.f2.f5 >= 19); p_722->g_44.f2.f5++)
                    { /* block id: 222 */
                        uint32_t *l_435 = &p_722->g_264[0];
                        int32_t l_436 = 7L;
                        if (p_38)
                            break;
                        l_418 &= (GROUP_DIVERGE(2, 1) >= (((safe_lshift_func_uint8_t_u_s((p_722->g_201.f9 && (*p_722->g_183)), (~(safe_div_func_int8_t_s_s((0x4399L == ((p_38 = 0x61C60A6BL) && ((safe_sub_func_int64_t_s_s((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((p_38 > (((*l_435) = FAKE_DIVERGE(p_722->global_0_offset, get_global_id(0), 10)) && ((p_722->g_44.f2.f0 > ((p_722->g_102 |= l_421) ^ (((((l_436 || ((l_437 = &p_722->g_275) != (void*)0)) | p_722->g_201.f5) , l_421) >= l_357[0][3][0]) != 6UL))) | l_421))), 7)), p_38)), p_722->g_345[0].f2.f7)) && l_436))), l_438[3]))))) < (-7L)) != 0x62L));
                        if (l_421)
                            break;
                    }
                }
                else
                { /* block id: 231 */
                    uint8_t l_463 = 9UL;
                    int32_t l_466 = (-7L);
                    for (l_216 = (-6); (l_216 < (-25)); l_216 = safe_sub_func_int16_t_s_s(l_216, 3))
                    { /* block id: 234 */
                        --l_441;
                    }
                    for (l_310 = 2; (l_310 <= 44); l_310++)
                    { /* block id: 239 */
                        struct S1 *l_446 = &p_722->g_345[0];
                        struct S1 **l_447 = &l_395;
                        int16_t *l_465 = &p_722->g_44.f2.f6;
                        (*l_447) = l_446;
                        if (p_38)
                            continue;
                        if (l_448)
                            continue;
                        p_722->g_102 ^= (safe_mul_func_uint16_t_u_u(((p_722->g_44.f2.f1 >= (safe_mul_func_int16_t_s_s((p_722->g_144.f6 , ((-1L) <= (-10L))), (safe_sub_func_int8_t_s_s((-1L), ((l_466 = ((*l_465) = (((safe_lshift_func_uint16_t_u_s((!((void*)0 != &p_38)), 12)) > (~(((safe_mod_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u(p_38, 7)), (safe_sub_func_uint16_t_u_u((p_38 ^ 0x46L), l_463)))) , l_464) != &p_722->g_338))) & l_463))) , FAKE_DIVERGE(p_722->group_2_offset, get_group_id(2), 10))))))) || p_722->g_23[3].f2.f7), p_38));
                    }
                    l_467 = p_38;
                }
                (*l_464) = func_47((((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint8_t_u_u(p_722->g_44.f2.f9, FAKE_DIVERGE(p_722->group_2_offset, get_group_id(2), 10))), 0)) & p_722->g_44.f2.f3) == (safe_mod_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(((p_722->g_264[2] && (((safe_mul_func_int16_t_s_s((GROUP_DIVERGE(2, 1) <= ((l_482 == &p_722->g_342) && ((safe_mod_func_uint64_t_u_u(((*l_377) = (safe_lshift_func_uint8_t_u_u(((*l_487) &= 0x38L), ((void*)0 == &p_722->g_280)))), 0x56E0DF71E8DFCD4AL)) >= p_38))), FAKE_DIVERGE(p_722->local_0_offset, get_local_id(0), 10))) >= 0L) && (-1L))) < 0x0F4AC224L), p_38)), p_38))), p_722);
                for (p_722->g_201.f2 = 10; (p_722->g_201.f2 == 7); p_722->g_201.f2 = safe_sub_func_int8_t_s_s(p_722->g_201.f2, 3))
                { /* block id: 254 */
                    for (p_722->g_201.f7 = 0; p_722->g_201.f7 < 5; p_722->g_201.f7 += 1)
                    {
                        struct S0 tmp = {0x32L,-6L,4UL,1UL,0xB312L,0x0FA6DCCBL,0x0FBEL,0x054A292BL,7L,4UL};
                        p_722->g_103[p_722->g_201.f7] = tmp;
                    }
                }
            }
        }
        (*p_722->g_275) = func_47((p_722->g_154.f1 | 0x10D017E9L), p_722);
    }
    p_38 = ((safe_div_func_int8_t_s_s((+(safe_mod_func_int16_t_s_s((l_109 |= p_722->g_44.f2.f0), (p_722->g_44.f2.f6 ^= ((safe_sub_func_int16_t_s_s((((*l_497) &= (+p_38)) | ((((((safe_rshift_func_uint16_t_u_u(((((((*p_722->g_279) = &l_311[5][3][3]) != &l_311[5][3][3]) , l_500) != (((((*l_504) = p_722->g_502) == &l_501) || (safe_sub_func_int64_t_s_s((safe_sub_func_int16_t_s_s((safe_mod_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((((safe_add_func_int16_t_s_s(((safe_sub_func_int16_t_s_s((l_311[5][2][2] < (((~(((65535UL == (-2L)) , GROUP_DIVERGE(2, 1)) == p_38)) == p_722->g_202.f6) >= 0x3A46C5FB1D5A6DEDL)), p_722->g_10)) == 248UL), GROUP_DIVERGE(2, 1))) > p_722->g_70[4][5][3]) > p_722->g_201.f8), p_38)), p_722->g_44.f2.f5)), p_722->g_44.f0)), 0x061C8603803B6722L))) , &p_722->g_503[2])) ^ 0x5450L), FAKE_DIVERGE(p_722->group_0_offset, get_group_id(0), 10))) < p_38) , p_722->g_154.f0) , p_38) == p_722->g_201.f6) > p_38)), 0UL)) <= l_517))))), FAKE_DIVERGE(p_722->local_2_offset, get_local_id(2), 10))) , 9L);
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_722->g_44 p_722->g_23.f2.f7 p_722->g_23.f2.f1 p_722->g_10 p_722->g_64 p_722->g_23.f2.f4 p_722->g_60 p_722->g_70 p_722->g_23.f2.f2
 * writes: p_722->g_23.f2.f4 p_722->g_57 p_722->g_61 p_722->g_44.f2.f8 p_722->g_44.f2.f5
 */
int32_t  func_39(uint32_t  p_40, struct S2 * p_722)
{ /* block id: 11 */
    uint16_t *l_51 = &p_722->g_23[3].f2.f4;
    int32_t l_54 = 0L;
    uint64_t *l_55 = (void*)0;
    uint64_t *l_56 = &p_722->g_57;
    int64_t l_69[4];
    int32_t *l_72[6] = {(void*)0,&l_54,(void*)0,(void*)0,&l_54,(void*)0};
    int16_t l_73[7][1][2] = {{{0x1756L,(-1L)}},{{0x1756L,(-1L)}},{{0x1756L,(-1L)}},{{0x1756L,(-1L)}},{{0x1756L,(-1L)}},{{0x1756L,(-1L)}},{{0x1756L,(-1L)}}};
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_69[i] = 1L;
    l_73[6][0][1] = (((((-1L) | (safe_mul_func_uint8_t_u_u((p_722->g_44 , (func_45(func_47((FAKE_DIVERGE(p_722->local_0_offset, get_local_id(0), 10) , (safe_add_func_uint8_t_u_u((((*l_51) = p_40) ^ (p_40 | (+(-3L)))), (safe_lshift_func_uint16_t_u_u(p_722->g_44.f1, ((((p_722->g_23[3].f2.f7 != ((*l_56) = (l_54 , p_722->g_23[3].f2.f1))) & p_722->g_10) | l_54) == 0x9DL)))))), p_722), p_722) == GROUP_DIVERGE(1, 1))), l_69[0]))) , p_40) > p_722->g_70[4][5][3]) | p_722->g_23[3].f2.f2);
    return p_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_722->g_44.f2.f8 p_722->g_64 p_722->g_44.f2.f5 p_722->g_23.f2.f4 p_722->g_44.f2.f6 p_722->g_60
 * writes: p_722->g_61 p_722->g_44.f2.f8 p_722->g_44.f2.f5
 */
int16_t  func_45(int32_t * p_46, struct S2 * p_722)
{ /* block id: 17 */
    uint16_t l_62[8][8] = {{0x57FBL,1UL,0x0902L,0x2E29L,0x0902L,1UL,0x57FBL,0xCE29L},{0x57FBL,1UL,0x0902L,0x2E29L,0x0902L,1UL,0x57FBL,0xCE29L},{0x57FBL,1UL,0x0902L,0x2E29L,0x0902L,1UL,0x57FBL,0xCE29L},{0x57FBL,1UL,0x0902L,0x2E29L,0x0902L,1UL,0x57FBL,0xCE29L},{0x57FBL,1UL,0x0902L,0x2E29L,0x0902L,1UL,0x57FBL,0xCE29L},{0x57FBL,1UL,0x0902L,0x2E29L,0x0902L,1UL,0x57FBL,0xCE29L},{0x57FBL,1UL,0x0902L,0x2E29L,0x0902L,1UL,0x57FBL,0xCE29L},{0x57FBL,1UL,0x0902L,0x2E29L,0x0902L,1UL,0x57FBL,0xCE29L}};
    int32_t *l_63 = &p_722->g_60;
    int i, j;
    l_63 = func_47(l_62[5][3], p_722);
    for (p_722->g_44.f2.f8 = 3; (p_722->g_44.f2.f8 >= 0); p_722->g_44.f2.f8 -= 1)
    { /* block id: 21 */
        struct S1 **l_66 = &p_722->g_65;
        int32_t **l_67[8][2] = {{&p_722->g_61,&p_722->g_61},{&p_722->g_61,&p_722->g_61},{&p_722->g_61,&p_722->g_61},{&p_722->g_61,&p_722->g_61},{&p_722->g_61,&p_722->g_61},{&p_722->g_61,&p_722->g_61},{&p_722->g_61,&p_722->g_61},{&p_722->g_61,&p_722->g_61}};
        int i, j;
        l_63 = func_47((p_722->g_64 != l_66), p_722);
        for (p_722->g_44.f2.f5 = 7; (p_722->g_44.f2.f5 >= 1); p_722->g_44.f2.f5 -= 1)
        { /* block id: 25 */
            int16_t l_68 = 0x101EL;
            if (l_68)
                break;
            if (p_722->g_23[3].f2.f4)
                continue;
        }
        return p_722->g_44.f2.f6;
    }
    return (*l_63);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_722->g_61
 */
int32_t * func_47(int64_t  p_48, struct S2 * p_722)
{ /* block id: 14 */
    int32_t *l_59 = &p_722->g_60;
    int32_t **l_58[6][1][4] = {{{&l_59,&l_59,&l_59,&l_59}},{{&l_59,&l_59,&l_59,&l_59}},{{&l_59,&l_59,&l_59,&l_59}},{{&l_59,&l_59,&l_59,&l_59}},{{&l_59,&l_59,&l_59,&l_59}},{{&l_59,&l_59,&l_59,&l_59}}};
    int i, j, k;
    p_722->g_61 = (void*)0;
    return l_59;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_723;
    struct S2* p_722 = &c_723;
    struct S2 c_724 = {
        (-10L), // p_722->g_10
        {{0x2530A9BCL,0x7B5CF1C9L,{0x6BL,0x3D2717F4L,0x39EE491BA6B42BE1L,0x7E7C14ABL,1UL,0x1DAB551FL,0x4C82L,0x04667120L,3L,0xBA6AED1D25BB0866L}},{0x2530A9BCL,0x7B5CF1C9L,{0x6BL,0x3D2717F4L,0x39EE491BA6B42BE1L,0x7E7C14ABL,1UL,0x1DAB551FL,0x4C82L,0x04667120L,3L,0xBA6AED1D25BB0866L}},{0x2530A9BCL,0x7B5CF1C9L,{0x6BL,0x3D2717F4L,0x39EE491BA6B42BE1L,0x7E7C14ABL,1UL,0x1DAB551FL,0x4C82L,0x04667120L,3L,0xBA6AED1D25BB0866L}},{0x2530A9BCL,0x7B5CF1C9L,{0x6BL,0x3D2717F4L,0x39EE491BA6B42BE1L,0x7E7C14ABL,1UL,0x1DAB551FL,0x4C82L,0x04667120L,3L,0xBA6AED1D25BB0866L}}}, // p_722->g_23
        &p_722->g_23[3], // p_722->g_22
        {-9L,-5L,{0x5EL,1L,0x0D4A066EE5324E31L,0xB86553ECL,0x3843L,-5L,0x0DD2L,0x0CC2A30EL,1L,0x75B4C718FE3B64D7L}}, // p_722->g_44
        0xD1CB9B5B590B87A3L, // p_722->g_57
        0x16ED2767L, // p_722->g_60
        (void*)0, // p_722->g_61
        &p_722->g_23[0], // p_722->g_65
        &p_722->g_65, // p_722->g_64
        {{{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)}},{{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)}},{{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)}},{{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)}},{{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)}},{{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)}},{{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)},{4L,0x0FL,1L,1L,(-1L)}}}, // p_722->g_70
        {(void*)0,(void*)0}, // p_722->g_71
        0x6535DD0EL, // p_722->g_102
        {{1UL,0x6D7A34FCL,0xB023FBB9B6F4331DL,0x1E76F382L,0xB4F0L,0L,-3L,-1L,0x3D958CC1L,18446744073709551615UL},{1UL,0x6D7A34FCL,0xB023FBB9B6F4331DL,0x1E76F382L,0xB4F0L,0L,-3L,-1L,0x3D958CC1L,18446744073709551615UL},{1UL,0x6D7A34FCL,0xB023FBB9B6F4331DL,0x1E76F382L,0xB4F0L,0L,-3L,-1L,0x3D958CC1L,18446744073709551615UL},{1UL,0x6D7A34FCL,0xB023FBB9B6F4331DL,0x1E76F382L,0xB4F0L,0L,-3L,-1L,0x3D958CC1L,18446744073709551615UL},{1UL,0x6D7A34FCL,0xB023FBB9B6F4331DL,0x1E76F382L,0xB4F0L,0L,-3L,-1L,0x3D958CC1L,18446744073709551615UL}}, // p_722->g_103
        (void*)0, // p_722->g_116
        {255UL,1L,0xEAB3DE261AEE968AL,4294967295UL,0UL,0x5FCB13B1L,0L,0x093E27F5L,0x76006572L,0xE0859B879C429013L}, // p_722->g_144
        {1UL,0x4317E708L,18446744073709551615UL,4294967287UL,65532UL,-7L,-4L,0L,-6L,18446744073709551612UL}, // p_722->g_154
        0x6D1EDAE9904F228FL, // p_722->g_166
        0x44D5L, // p_722->g_184
        &p_722->g_184, // p_722->g_183
        {{0UL,-6L,0x3E01CBC9E0D287D8L,1UL,0x468BL,0L,0x3E26L,-6L,1L,0xAD8F4186D41BE167L},{0UL,-6L,0x3E01CBC9E0D287D8L,1UL,0x468BL,0L,0x3E26L,-6L,1L,0xAD8F4186D41BE167L},{0UL,-6L,0x3E01CBC9E0D287D8L,1UL,0x468BL,0L,0x3E26L,-6L,1L,0xAD8F4186D41BE167L},{0UL,-6L,0x3E01CBC9E0D287D8L,1UL,0x468BL,0L,0x3E26L,-6L,1L,0xAD8F4186D41BE167L}}, // p_722->g_194
        {247UL,0L,1UL,4294967295UL,0x925FL,0x2A6BB1ACL,0x26A3L,-1L,-1L,0x776AFE39425CAE06L}, // p_722->g_201
        {246UL,0x0C9B08B1L,0xFB1613551652D02CL,4294967295UL,0x1C5CL,1L,1L,-1L,0x17EABC09L,0xB8E1D6876606C33CL}, // p_722->g_202
        8L, // p_722->g_250
        {0xFA723D82L,0xFA723D82L,0xFA723D82L,0xFA723D82L,0xFA723D82L,0xFA723D82L,0xFA723D82L,0xFA723D82L}, // p_722->g_264
        &p_722->g_61, // p_722->g_275
        &p_722->g_275, // p_722->g_274
        &p_722->g_23[3].f2.f4, // p_722->g_280
        &p_722->g_280, // p_722->g_279
        &p_722->g_103[0], // p_722->g_324
        (void*)0, // p_722->g_338
        (-3L), // p_722->g_342
        {{0x0B6239FAL,0x3161EEFCL,{254UL,-1L,0x7C0F9AFFF9B6AF0FL,4294967295UL,65535UL,0x6551544BL,0x6D0BL,0x00E758CCL,0x21DE5EF3L,18446744073709551611UL}},{0x0B6239FAL,0x3161EEFCL,{254UL,-1L,0x7C0F9AFFF9B6AF0FL,4294967295UL,65535UL,0x6551544BL,0x6D0BL,0x00E758CCL,0x21DE5EF3L,18446744073709551611UL}}}, // p_722->g_345
        &p_722->g_44.f2, // p_722->g_394
        &p_722->g_394, // p_722->g_393
        (void*)0, // p_722->g_396
        (void*)0, // p_722->g_397
        {&p_722->g_65,&p_722->g_65,&p_722->g_65,&p_722->g_65,&p_722->g_65,&p_722->g_65}, // p_722->g_503
        &p_722->g_503[1], // p_722->g_502
        (-4L), // p_722->g_523
        0x4D8BL, // p_722->g_554
        {1L,1L,{0x3EL,0x268B1848L,1UL,0xDE3933E4L,65533UL,-5L,9L,0x16E15114L,0x40AC1AEDL,8UL}}, // p_722->g_606
        {0x9BL,0x6B1CAA08L,0UL,0x529FA523L,0xC4D4L,0L,1L,0x2092DCE8L,0L,0x78340C3DA034D433L}, // p_722->g_646
        (-5L), // p_722->g_680
        (-1L), // p_722->g_693
        &p_722->g_144.f6, // p_722->g_709
        &p_722->g_709, // p_722->g_708
        &p_722->g_65, // p_722->g_714
        sequence_input[get_global_id(0)], // p_722->global_0_offset
        sequence_input[get_global_id(1)], // p_722->global_1_offset
        sequence_input[get_global_id(2)], // p_722->global_2_offset
        sequence_input[get_local_id(0)], // p_722->local_0_offset
        sequence_input[get_local_id(1)], // p_722->local_1_offset
        sequence_input[get_local_id(2)], // p_722->local_2_offset
        sequence_input[get_group_id(0)], // p_722->group_0_offset
        sequence_input[get_group_id(1)], // p_722->group_1_offset
        sequence_input[get_group_id(2)], // p_722->group_2_offset
    };
    c_723 = c_724;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_722);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_722->g_10, "p_722->g_10", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_722->g_23[i].f0, "p_722->g_23[i].f0", print_hash_value);
        transparent_crc(p_722->g_23[i].f1, "p_722->g_23[i].f1", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f0, "p_722->g_23[i].f2.f0", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f1, "p_722->g_23[i].f2.f1", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f2, "p_722->g_23[i].f2.f2", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f3, "p_722->g_23[i].f2.f3", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f4, "p_722->g_23[i].f2.f4", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f5, "p_722->g_23[i].f2.f5", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f6, "p_722->g_23[i].f2.f6", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f7, "p_722->g_23[i].f2.f7", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f8, "p_722->g_23[i].f2.f8", print_hash_value);
        transparent_crc(p_722->g_23[i].f2.f9, "p_722->g_23[i].f2.f9", print_hash_value);

    }
    transparent_crc(p_722->g_44.f0, "p_722->g_44.f0", print_hash_value);
    transparent_crc(p_722->g_44.f1, "p_722->g_44.f1", print_hash_value);
    transparent_crc(p_722->g_44.f2.f0, "p_722->g_44.f2.f0", print_hash_value);
    transparent_crc(p_722->g_44.f2.f1, "p_722->g_44.f2.f1", print_hash_value);
    transparent_crc(p_722->g_44.f2.f2, "p_722->g_44.f2.f2", print_hash_value);
    transparent_crc(p_722->g_44.f2.f3, "p_722->g_44.f2.f3", print_hash_value);
    transparent_crc(p_722->g_44.f2.f4, "p_722->g_44.f2.f4", print_hash_value);
    transparent_crc(p_722->g_44.f2.f5, "p_722->g_44.f2.f5", print_hash_value);
    transparent_crc(p_722->g_44.f2.f6, "p_722->g_44.f2.f6", print_hash_value);
    transparent_crc(p_722->g_44.f2.f7, "p_722->g_44.f2.f7", print_hash_value);
    transparent_crc(p_722->g_44.f2.f8, "p_722->g_44.f2.f8", print_hash_value);
    transparent_crc(p_722->g_44.f2.f9, "p_722->g_44.f2.f9", print_hash_value);
    transparent_crc(p_722->g_57, "p_722->g_57", print_hash_value);
    transparent_crc(p_722->g_60, "p_722->g_60", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_722->g_70[i][j][k], "p_722->g_70[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_722->g_102, "p_722->g_102", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_722->g_103[i].f0, "p_722->g_103[i].f0", print_hash_value);
        transparent_crc(p_722->g_103[i].f1, "p_722->g_103[i].f1", print_hash_value);
        transparent_crc(p_722->g_103[i].f2, "p_722->g_103[i].f2", print_hash_value);
        transparent_crc(p_722->g_103[i].f3, "p_722->g_103[i].f3", print_hash_value);
        transparent_crc(p_722->g_103[i].f4, "p_722->g_103[i].f4", print_hash_value);
        transparent_crc(p_722->g_103[i].f5, "p_722->g_103[i].f5", print_hash_value);
        transparent_crc(p_722->g_103[i].f6, "p_722->g_103[i].f6", print_hash_value);
        transparent_crc(p_722->g_103[i].f7, "p_722->g_103[i].f7", print_hash_value);
        transparent_crc(p_722->g_103[i].f8, "p_722->g_103[i].f8", print_hash_value);
        transparent_crc(p_722->g_103[i].f9, "p_722->g_103[i].f9", print_hash_value);

    }
    transparent_crc(p_722->g_144.f0, "p_722->g_144.f0", print_hash_value);
    transparent_crc(p_722->g_144.f1, "p_722->g_144.f1", print_hash_value);
    transparent_crc(p_722->g_144.f2, "p_722->g_144.f2", print_hash_value);
    transparent_crc(p_722->g_144.f3, "p_722->g_144.f3", print_hash_value);
    transparent_crc(p_722->g_144.f4, "p_722->g_144.f4", print_hash_value);
    transparent_crc(p_722->g_144.f5, "p_722->g_144.f5", print_hash_value);
    transparent_crc(p_722->g_144.f6, "p_722->g_144.f6", print_hash_value);
    transparent_crc(p_722->g_144.f7, "p_722->g_144.f7", print_hash_value);
    transparent_crc(p_722->g_144.f8, "p_722->g_144.f8", print_hash_value);
    transparent_crc(p_722->g_144.f9, "p_722->g_144.f9", print_hash_value);
    transparent_crc(p_722->g_154.f0, "p_722->g_154.f0", print_hash_value);
    transparent_crc(p_722->g_154.f1, "p_722->g_154.f1", print_hash_value);
    transparent_crc(p_722->g_154.f2, "p_722->g_154.f2", print_hash_value);
    transparent_crc(p_722->g_154.f3, "p_722->g_154.f3", print_hash_value);
    transparent_crc(p_722->g_154.f4, "p_722->g_154.f4", print_hash_value);
    transparent_crc(p_722->g_154.f5, "p_722->g_154.f5", print_hash_value);
    transparent_crc(p_722->g_154.f6, "p_722->g_154.f6", print_hash_value);
    transparent_crc(p_722->g_154.f7, "p_722->g_154.f7", print_hash_value);
    transparent_crc(p_722->g_154.f8, "p_722->g_154.f8", print_hash_value);
    transparent_crc(p_722->g_154.f9, "p_722->g_154.f9", print_hash_value);
    transparent_crc(p_722->g_166, "p_722->g_166", print_hash_value);
    transparent_crc(p_722->g_184, "p_722->g_184", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_722->g_194[i].f0, "p_722->g_194[i].f0", print_hash_value);
        transparent_crc(p_722->g_194[i].f1, "p_722->g_194[i].f1", print_hash_value);
        transparent_crc(p_722->g_194[i].f2, "p_722->g_194[i].f2", print_hash_value);
        transparent_crc(p_722->g_194[i].f3, "p_722->g_194[i].f3", print_hash_value);
        transparent_crc(p_722->g_194[i].f4, "p_722->g_194[i].f4", print_hash_value);
        transparent_crc(p_722->g_194[i].f5, "p_722->g_194[i].f5", print_hash_value);
        transparent_crc(p_722->g_194[i].f6, "p_722->g_194[i].f6", print_hash_value);
        transparent_crc(p_722->g_194[i].f7, "p_722->g_194[i].f7", print_hash_value);
        transparent_crc(p_722->g_194[i].f8, "p_722->g_194[i].f8", print_hash_value);
        transparent_crc(p_722->g_194[i].f9, "p_722->g_194[i].f9", print_hash_value);

    }
    transparent_crc(p_722->g_201.f0, "p_722->g_201.f0", print_hash_value);
    transparent_crc(p_722->g_201.f1, "p_722->g_201.f1", print_hash_value);
    transparent_crc(p_722->g_201.f2, "p_722->g_201.f2", print_hash_value);
    transparent_crc(p_722->g_201.f3, "p_722->g_201.f3", print_hash_value);
    transparent_crc(p_722->g_201.f4, "p_722->g_201.f4", print_hash_value);
    transparent_crc(p_722->g_201.f5, "p_722->g_201.f5", print_hash_value);
    transparent_crc(p_722->g_201.f6, "p_722->g_201.f6", print_hash_value);
    transparent_crc(p_722->g_201.f7, "p_722->g_201.f7", print_hash_value);
    transparent_crc(p_722->g_201.f8, "p_722->g_201.f8", print_hash_value);
    transparent_crc(p_722->g_201.f9, "p_722->g_201.f9", print_hash_value);
    transparent_crc(p_722->g_202.f0, "p_722->g_202.f0", print_hash_value);
    transparent_crc(p_722->g_202.f1, "p_722->g_202.f1", print_hash_value);
    transparent_crc(p_722->g_202.f2, "p_722->g_202.f2", print_hash_value);
    transparent_crc(p_722->g_202.f3, "p_722->g_202.f3", print_hash_value);
    transparent_crc(p_722->g_202.f4, "p_722->g_202.f4", print_hash_value);
    transparent_crc(p_722->g_202.f5, "p_722->g_202.f5", print_hash_value);
    transparent_crc(p_722->g_202.f6, "p_722->g_202.f6", print_hash_value);
    transparent_crc(p_722->g_202.f7, "p_722->g_202.f7", print_hash_value);
    transparent_crc(p_722->g_202.f8, "p_722->g_202.f8", print_hash_value);
    transparent_crc(p_722->g_202.f9, "p_722->g_202.f9", print_hash_value);
    transparent_crc(p_722->g_250, "p_722->g_250", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_722->g_264[i], "p_722->g_264[i]", print_hash_value);

    }
    transparent_crc(p_722->g_342, "p_722->g_342", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_722->g_345[i].f0, "p_722->g_345[i].f0", print_hash_value);
        transparent_crc(p_722->g_345[i].f1, "p_722->g_345[i].f1", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f0, "p_722->g_345[i].f2.f0", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f1, "p_722->g_345[i].f2.f1", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f2, "p_722->g_345[i].f2.f2", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f3, "p_722->g_345[i].f2.f3", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f4, "p_722->g_345[i].f2.f4", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f5, "p_722->g_345[i].f2.f5", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f6, "p_722->g_345[i].f2.f6", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f7, "p_722->g_345[i].f2.f7", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f8, "p_722->g_345[i].f2.f8", print_hash_value);
        transparent_crc(p_722->g_345[i].f2.f9, "p_722->g_345[i].f2.f9", print_hash_value);

    }
    transparent_crc(p_722->g_523, "p_722->g_523", print_hash_value);
    transparent_crc(p_722->g_554, "p_722->g_554", print_hash_value);
    transparent_crc(p_722->g_606.f0, "p_722->g_606.f0", print_hash_value);
    transparent_crc(p_722->g_606.f1, "p_722->g_606.f1", print_hash_value);
    transparent_crc(p_722->g_606.f2.f0, "p_722->g_606.f2.f0", print_hash_value);
    transparent_crc(p_722->g_606.f2.f1, "p_722->g_606.f2.f1", print_hash_value);
    transparent_crc(p_722->g_606.f2.f2, "p_722->g_606.f2.f2", print_hash_value);
    transparent_crc(p_722->g_606.f2.f3, "p_722->g_606.f2.f3", print_hash_value);
    transparent_crc(p_722->g_606.f2.f4, "p_722->g_606.f2.f4", print_hash_value);
    transparent_crc(p_722->g_606.f2.f5, "p_722->g_606.f2.f5", print_hash_value);
    transparent_crc(p_722->g_606.f2.f6, "p_722->g_606.f2.f6", print_hash_value);
    transparent_crc(p_722->g_606.f2.f7, "p_722->g_606.f2.f7", print_hash_value);
    transparent_crc(p_722->g_606.f2.f8, "p_722->g_606.f2.f8", print_hash_value);
    transparent_crc(p_722->g_606.f2.f9, "p_722->g_606.f2.f9", print_hash_value);
    transparent_crc(p_722->g_646.f0, "p_722->g_646.f0", print_hash_value);
    transparent_crc(p_722->g_646.f1, "p_722->g_646.f1", print_hash_value);
    transparent_crc(p_722->g_646.f2, "p_722->g_646.f2", print_hash_value);
    transparent_crc(p_722->g_646.f3, "p_722->g_646.f3", print_hash_value);
    transparent_crc(p_722->g_646.f4, "p_722->g_646.f4", print_hash_value);
    transparent_crc(p_722->g_646.f5, "p_722->g_646.f5", print_hash_value);
    transparent_crc(p_722->g_646.f6, "p_722->g_646.f6", print_hash_value);
    transparent_crc(p_722->g_646.f7, "p_722->g_646.f7", print_hash_value);
    transparent_crc(p_722->g_646.f8, "p_722->g_646.f8", print_hash_value);
    transparent_crc(p_722->g_646.f9, "p_722->g_646.f9", print_hash_value);
    transparent_crc(p_722->g_680, "p_722->g_680", print_hash_value);
    transparent_crc(p_722->g_693, "p_722->g_693", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
