// --atomics 81 ---fake_divergence -g 56,5,9 -l 4,1,9
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


// Seed: 7

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile int16_t  f1;
   int32_t  f2;
   uint16_t  f3;
   volatile int32_t  f4;
};

struct S1 {
    int32_t g_6;
    uint8_t g_12[9][5][5];
    volatile int32_t g_13;
    int32_t g_14;
    int8_t g_26;
    int32_t g_33;
    volatile struct S0 g_34[7];
    int8_t g_59;
    int64_t g_68[9];
    uint16_t g_72;
    struct S0 g_74;
    struct S0 *g_73;
    uint8_t g_83;
    struct S0 **g_109;
    struct S0 *** volatile g_108[9];
    struct S0 *** volatile g_110;
    volatile struct S0 g_113;
    uint64_t g_117;
    int32_t g_119;
    volatile uint8_t g_126;
    struct S0 ** volatile g_130;
    int16_t g_156;
    int64_t g_158;
    volatile int32_t *g_166;
    int32_t g_170;
    volatile int16_t g_171;
    volatile int8_t g_172;
    volatile uint16_t g_181;
    int32_t *g_185;
    int32_t ** volatile g_184;
    struct S0 g_186;
    struct S0 g_187;
    int16_t *g_258[7][6];
    int32_t g_267;
    volatile struct S0 g_268;
    volatile struct S0 g_269;
    uint32_t g_289;
    int32_t ** volatile g_292;
    struct S0 g_322;
    struct S0 * volatile g_323;
    uint32_t g_332;
    uint8_t *g_363[4];
    uint8_t **g_362;
    uint8_t *** volatile g_361;
    int32_t ** volatile g_418;
    volatile uint16_t g_420;
    volatile struct S0 g_428[5];
    volatile struct S0 g_429;
    int32_t ** volatile g_461;
    struct S0 *g_464;
    struct S0 ** volatile g_463;
    int32_t * volatile g_492;
    int32_t * volatile g_493[8];
    struct S0 g_497;
    int64_t *g_500;
    int64_t *g_501;
    uint64_t g_513;
    int32_t ** volatile g_550;
    uint32_t g_556;
    int8_t *g_619[4][9];
    int8_t * volatile *g_618;
    struct S0 * volatile *g_625[9];
    struct S0 * volatile ** volatile g_624;
    struct S0 * volatile ** volatile g_626;
    struct S0 * volatile **g_627;
    struct S0 * volatile ** volatile *g_623[9][8][2];
    int64_t **g_697;
    uint32_t g_703;
    int32_t ** volatile g_762;
    uint32_t g_786;
    volatile struct S0 g_787;
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
uint8_t  func_1(struct S1 * p_827);
int32_t * func_2(uint32_t  p_3, struct S1 * p_827);
int32_t  func_7(int64_t  p_8, struct S1 * p_827);
int32_t  func_10(int8_t  p_11, struct S1 * p_827);
int32_t * func_15(uint32_t  p_16, uint64_t  p_17, int16_t  p_18, uint32_t  p_19, int32_t * p_20, struct S1 * p_827);
uint16_t  func_28(int32_t  p_29, struct S1 * p_827);
struct S0 * func_36(uint32_t  p_37, uint8_t  p_38, int16_t  p_39, int32_t * p_40, uint64_t  p_41, struct S1 * p_827);
int8_t  func_44(uint64_t  p_45, int32_t  p_46, struct S0 * p_47, int32_t  p_48, int8_t  p_49, struct S1 * p_827);
uint16_t  func_50(struct S0 * p_51, uint32_t  p_52, struct S1 * p_827);
struct S0 * func_53(uint32_t  p_54, int8_t * p_55, struct S1 * p_827);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_827->g_6 p_827->g_13 p_827->g_33 p_827->g_34 p_827->g_59 p_827->g_73 p_827->g_74.f2 p_827->g_83 p_827->g_74.f3 p_827->g_72 p_827->g_74.f4 p_827->g_110 p_827->g_12 p_827->g_113 p_827->g_119 p_827->g_126 p_827->g_130 p_827->g_181 p_827->g_184 p_827->g_117 p_827->g_156 p_827->g_186 p_827->g_74.f1 p_827->g_172 p_827->g_185 p_827->g_14 p_827->g_74.f0 p_827->g_170 p_827->g_268 p_827->g_289 p_827->g_187.f2 p_827->g_292 p_827->g_187.f0 p_827->g_269.f1 p_827->g_322 p_827->g_332 p_827->g_269.f4 p_827->g_361 p_827->g_420 p_827->g_428 p_827->g_429.f2 p_827->g_461 p_827->g_463 p_827->g_269.f0 p_827->g_267 p_827->g_158 p_827->g_497 p_827->g_500 p_827->g_464 p_827->g_74 p_827->g_550 p_827->g_556 p_827->g_26 p_827->g_68 p_827->g_501 p_827->g_269.f3 p_827->g_618 p_827->g_623 p_827->g_697 p_827->g_703 p_827->g_269.f2 p_827->g_626 p_827->g_625 p_827->g_787
 * writes: p_827->g_14 p_827->g_26 p_827->g_33 p_827->g_34 p_827->g_68 p_827->g_72 p_827->g_83 p_827->g_74.f3 p_827->g_74.f4 p_827->g_109 p_827->g_117 p_827->g_119 p_827->g_126 p_827->g_73 p_827->g_12 p_827->g_156 p_827->g_74.f0 p_827->g_13 p_827->g_166 p_827->g_181 p_827->g_185 p_827->g_187 p_827->g_74.f2 p_827->g_186.f0 p_827->g_258 p_827->g_59 p_827->g_158 p_827->g_267 p_827->g_269 p_827->g_289 p_827->g_74 p_827->g_322.f0 p_827->g_362 p_827->g_186.f2 p_827->g_170 p_827->g_420 p_827->g_429 p_827->g_186.f3 p_827->g_322.f2 p_827->g_464 p_827->g_500 p_827->g_501 p_827->g_332 p_827->g_556 p_827->g_703 p_827->g_786
 */
uint8_t  func_1(struct S1 * p_827)
{ /* block id: 4 */
    int64_t l_9 = 0x74C38B6B0E1B1B55L;
    int64_t *l_499 = &l_9;
    int64_t **l_498[8][10][3] = {{{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499}},{{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499}},{{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499}},{{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499}},{{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499}},{{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499}},{{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499}},{{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499},{&l_499,(void*)0,&l_499}}};
    int32_t l_502 = 0x2E1EDD34L;
    uint8_t *l_548 = &p_827->g_12[5][4][4];
    int32_t *l_549 = (void*)0;
    uint16_t *l_554 = &p_827->g_186.f0;
    uint32_t l_566 = 0x50AE2CDAL;
    int32_t l_567 = (-1L);
    int32_t l_672 = 0L;
    int32_t l_677 = 0x15AC7D2EL;
    int16_t l_710 = 0x20D4L;
    uint64_t l_721 = 0xE83052363E54EF9CL;
    uint8_t l_758 = 0xA9L;
    int8_t l_769[2];
    int32_t l_800 = 0L;
    int32_t l_803 = (-1L);
    int64_t l_805 = 0x63FB7F5AA10A5F74L;
    int32_t l_808 = 0x7F5BAC6BL;
    int32_t l_810 = 0x601D4EEBL;
    int32_t *l_818 = &p_827->g_119;
    int32_t *l_819[6];
    uint32_t l_820 = 0x34CB6CC2L;
    int16_t l_823 = 0x5E8DL;
    uint8_t l_824 = 0x80L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_769[i] = 0x37L;
    for (i = 0; i < 6; i++)
        l_819[i] = &p_827->g_119;
    (*p_827->g_184) = func_2(((safe_sub_func_int16_t_s_s(((p_827->g_6 & ((func_7(l_9, p_827) , ((*l_499) = (&l_9 == (p_827->g_501 = (p_827->g_500 = (p_827->g_497 , &l_9)))))) == (p_827->g_332 > (p_827->g_6 <= l_502)))) == 0x25A581FAL), p_827->g_6)) , FAKE_DIVERGE(p_827->group_0_offset, get_group_id(0), 10)), p_827);
    if (((+(((**p_827->g_463) , func_15(p_827->g_420, (p_827->g_33 & (l_502 &= ((&p_827->g_158 != (void*)0) > (~((void*)0 != l_548))))), l_9, (p_827->g_497.f3 , p_827->g_14), l_549, p_827)) == l_549)) | 0x7C99L))
    { /* block id: 320 */
        int32_t **l_551[5][6][6] = {{{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549}},{{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549}},{{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549}},{{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549}},{{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549},{&l_549,&l_549,(void*)0,&l_549,&l_549,&l_549}}};
        int32_t ***l_552 = &l_551[3][0][5];
        uint16_t *l_553 = &p_827->g_72;
        uint32_t *l_555 = &p_827->g_556;
        int8_t *l_559 = &p_827->g_26;
        uint32_t l_605 = 1UL;
        int32_t l_637[3];
        int32_t l_662[4][8][5] = {{{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)}},{{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)}},{{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)}},{{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)},{0x3673E4C5L,(-1L),0x470FDDC1L,0x470FDDC1L,(-1L)}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_637[i] = 0x7A14C54DL;
        (*p_827->g_550) = &l_502;
        (*l_552) = l_551[0][0][4];
        if (((**p_827->g_292) > (p_827->g_267 &= ((((((l_553 = &p_827->g_72) == (l_554 = &p_827->g_72)) , &p_827->g_59) != l_548) && (((((++(*l_555)) , 254UL) & ((*l_559) = p_827->g_26)) || 1UL) , (safe_mod_func_uint64_t_u_u((safe_add_func_int32_t_s_s((((safe_sub_func_uint8_t_u_u((((*l_548) = ((((p_827->g_119 , 0UL) <= p_827->g_68[7]) | p_827->g_33) ^ GROUP_DIVERGE(2, 1))) & 2UL), FAKE_DIVERGE(p_827->local_1_offset, get_local_id(1), 10))) > l_566) , 0x3DB09762L), p_827->g_556)), l_567)))) != p_827->g_74.f2))))
        { /* block id: 329 */
            uint32_t l_570 = 0xFD0BA594L;
            int32_t *l_630 = &p_827->g_33;
            uint8_t *l_638 = &p_827->g_83;
            int32_t l_639 = 0x7026EA37L;
            for (p_827->g_74.f2 = 9; (p_827->g_74.f2 != 1); p_827->g_74.f2--)
            { /* block id: 332 */
                struct S0 **l_595 = &p_827->g_464;
                int32_t l_621[6];
                uint64_t l_628 = 0xB9ECE949759AFA7BL;
                int i;
                for (i = 0; i < 6; i++)
                    l_621[i] = 1L;
                ++l_570;
                if ((atomic_inc(&p_827->g_atomic_input[81 * get_linear_group_id() + 18]) == 0))
                { /* block id: 335 */
                    uint64_t l_573 = 1UL;
                    struct S0 l_587 = {0x12C1L,-1L,0x3FADCD5DL,0x8076L,0x0E62DF6BL};/* VOLATILE GLOBAL l_587 */
                    struct S0 *l_586[5][4][6] = {{{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587}},{{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587}},{{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587}},{{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587}},{{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587},{&l_587,&l_587,&l_587,&l_587,(void*)0,&l_587}}};
                    struct S0 *l_588 = (void*)0;
                    int i, j, k;
                    if ((l_573 , 4L))
                    { /* block id: 336 */
                        uint32_t l_574 = 0UL;
                        int32_t l_577 = 0x7EDF6237L;
                        int64_t l_578 = (-10L);
                        uint32_t l_579 = 1UL;
                        int32_t *l_580 = &l_577;
                        l_574++;
                        l_577 = (l_579 ^= (l_578 |= l_577));
                        l_580 = (void*)0;
                    }
                    else
                    { /* block id: 342 */
                        uint32_t l_581 = 0UL;
                        uint64_t l_584[7][6][6] = {{{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL}},{{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL}},{{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL}},{{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL}},{{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL}},{{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL}},{{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL},{0x6E4AB97384BF9C8AL,0x4839C18A09179CCEL,4UL,0x6E4AB97384BF9C8AL,0xB48356B416F26F37L,4UL}}};
                        uint8_t l_585 = 0x98L;
                        int i, j, k;
                        --l_581;
                        l_585 ^= l_584[2][4][4];
                    }
                    l_588 = l_586[1][1][2];
                    for (l_587.f0 = 0; (l_587.f0 > 42); l_587.f0 = safe_add_func_int64_t_s_s(l_587.f0, 2))
                    { /* block id: 349 */
                        int64_t l_591 = (-6L);
                        l_587.f4 ^= l_591;
                    }
                    unsigned int result = 0;
                    result += l_573;
                    result += l_587.f0;
                    result += l_587.f1;
                    result += l_587.f2;
                    result += l_587.f3;
                    result += l_587.f4;
                    atomic_add(&p_827->g_special_values[81 * get_linear_group_id() + 18], result);
                }
                else
                { /* block id: 352 */
                    (1 + 1);
                }
                if ((**p_827->g_550))
                { /* block id: 355 */
                    uint32_t l_592 = 4294967291UL;
                    for (p_827->g_156 = 2; (p_827->g_156 >= 0); p_827->g_156 -= 1)
                    { /* block id: 358 */
                        struct S0 ***l_596 = &l_595;
                        ++l_592;
                        (*p_827->g_461) = (*p_827->g_550);
                        (*l_596) = l_595;
                    }
                }
                else
                { /* block id: 363 */
                    uint8_t l_620 = 0xA9L;
                    int32_t *l_629 = &l_621[1];
                    for (p_827->g_322.f0 = 18; (p_827->g_322.f0 > 30); ++p_827->g_322.f0)
                    { /* block id: 366 */
                        int16_t *l_606[2];
                        int32_t l_607[1];
                        uint64_t *l_622 = &p_827->g_117;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_606[i] = (void*)0;
                        for (i = 0; i < 1; i++)
                            l_607[i] = 0x0737F792L;
                        l_630 = func_15(((safe_mul_func_uint16_t_u_u((~((((((*p_827->g_501) = 0x2AFB3A784D3506CBL) ^ ((l_607[0] = (safe_sub_func_uint64_t_u_u(p_827->g_269.f3, (safe_lshift_func_int16_t_s_s(l_605, l_566))))) == ((*l_554) |= (safe_mod_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((((*p_827->g_185) |= (safe_sub_func_int32_t_s_s((((safe_mul_func_int16_t_s_s(((((safe_sub_func_int64_t_s_s(((void*)0 != p_827->g_618), l_620)) != ((l_570 == ((*l_622) = (p_827->g_322.f0 != l_621[4]))) , 0x687B5E29060863C5L)) , (void*)0) == p_827->g_623[0][6][1]), l_570)) || 0xF409L) != 0L), GROUP_DIVERGE(2, 1)))) != l_621[4]), l_620)), 0x7A5158FF38EA3C53L))))) , 0x738848D1L) , l_607[0]) != p_827->g_322.f3)), p_827->g_74.f2)) | l_621[0]), l_621[5], l_628, l_621[4], l_629, p_827);
                        return l_607[0];
                    }
                }
                l_639 ^= ((((safe_lshift_func_uint8_t_u_u(((p_827->g_113.f3 < (*l_630)) | ((safe_lshift_func_uint16_t_u_s(((*l_554) = (l_621[2] > (&p_827->g_12[2][1][4] == l_548))), 6)) == (safe_mul_func_uint8_t_u_u((((*l_630) == (((1UL ^ (+(l_637[1] >= l_621[4]))) , l_638) != l_638)) == p_827->g_497.f2), (*l_630))))), 3)) , (*l_630)) ^ p_827->g_187.f0) <= (*l_630));
            }
        }
        else
        { /* block id: 379 */
            int32_t *l_647 = &p_827->g_6;
            int8_t l_657 = 1L;
            for (p_827->g_14 = 0; (p_827->g_14 < 4); p_827->g_14 = safe_add_func_uint16_t_u_u(p_827->g_14, 8))
            { /* block id: 382 */
                uint16_t l_649 = 0xA3D5L;
                int32_t *l_656 = &p_827->g_267;
                for (p_827->g_119 = 0; (p_827->g_119 == (-28)); p_827->g_119 = safe_sub_func_int16_t_s_s(p_827->g_119, 3))
                { /* block id: 385 */
                    int32_t *l_648 = &l_502;
                    int32_t *l_655 = &p_827->g_33;
                    for (p_827->g_72 = (-4); (p_827->g_72 != 35); p_827->g_72 = safe_add_func_int8_t_s_s(p_827->g_72, 2))
                    { /* block id: 388 */
                        int32_t *l_646 = &l_502;
                        l_647 = l_646;
                        l_648 = (*p_827->g_461);
                        --l_649;
                    }
                    for (p_827->g_322.f0 = 14; (p_827->g_322.f0 >= 54); p_827->g_322.f0++)
                    { /* block id: 395 */
                        uint8_t l_654 = 0x0EL;
                        return l_654;
                    }
                    l_655 = ((*p_827->g_550) = (*p_827->g_184));
                }
                l_549 = (l_656 = &l_502);
                l_647 = (*p_827->g_184);
                (*p_827->g_185) = l_657;
            }
        }
        (*p_827->g_185) ^= ((safe_mod_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(l_662[1][6][2], 7)), ((~1L) || p_827->g_428[4].f2))) < (+(-1L)));
    }
    else
    { /* block id: 408 */
        int32_t l_665 = (-9L);
        int16_t **l_666 = &p_827->g_258[3][2];
        int16_t *l_668 = &p_827->g_156;
        int16_t **l_667 = &l_668;
        int32_t l_669 = 1L;
        int8_t *l_678[4];
        int32_t l_679[10][2] = {{0x2B8B10E2L,0x1302BDC8L},{0x2B8B10E2L,0x1302BDC8L},{0x2B8B10E2L,0x1302BDC8L},{0x2B8B10E2L,0x1302BDC8L},{0x2B8B10E2L,0x1302BDC8L},{0x2B8B10E2L,0x1302BDC8L},{0x2B8B10E2L,0x1302BDC8L},{0x2B8B10E2L,0x1302BDC8L},{0x2B8B10E2L,0x1302BDC8L},{0x2B8B10E2L,0x1302BDC8L}};
        int64_t l_767 = (-10L);
        uint8_t l_770 = 255UL;
        uint8_t l_778 = 5UL;
        int i, j;
        for (i = 0; i < 4; i++)
            l_678[i] = &p_827->g_59;
        (*p_827->g_185) = ((((safe_div_func_int16_t_s_s(l_665, (-5L))) , ((((((((*l_666) = (void*)0) == ((*l_667) = &p_827->g_156)) , (l_669 = p_827->g_68[6])) || ((**p_827->g_550) , (((safe_sub_func_uint8_t_u_u(l_672, (l_679[5][0] ^= (safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(l_665, 7)), l_677))))) && 0x0945L) ^ l_669))) <= l_566) < 247UL) , &p_827->g_258[3][5])) == (void*)0) && l_679[5][0]);
        for (p_827->g_117 = 0; (p_827->g_117 <= 3); p_827->g_117 += 1)
        { /* block id: 416 */
            int8_t l_688 = 0x75L;
            int32_t l_692 = (-2L);
            int32_t l_733 = (-5L);
            struct S0 **l_757 = &p_827->g_73;
            int32_t l_765 = 0x35D1B3D5L;
            int32_t l_766[8][7] = {{0x49DCE7C3L,0x39177C6DL,1L,0x39177C6DL,0x49DCE7C3L,0x49DCE7C3L,0x39177C6DL},{0x49DCE7C3L,0x39177C6DL,1L,0x39177C6DL,0x49DCE7C3L,0x49DCE7C3L,0x39177C6DL},{0x49DCE7C3L,0x39177C6DL,1L,0x39177C6DL,0x49DCE7C3L,0x49DCE7C3L,0x39177C6DL},{0x49DCE7C3L,0x39177C6DL,1L,0x39177C6DL,0x49DCE7C3L,0x49DCE7C3L,0x39177C6DL},{0x49DCE7C3L,0x39177C6DL,1L,0x39177C6DL,0x49DCE7C3L,0x49DCE7C3L,0x39177C6DL},{0x49DCE7C3L,0x39177C6DL,1L,0x39177C6DL,0x49DCE7C3L,0x49DCE7C3L,0x39177C6DL},{0x49DCE7C3L,0x39177C6DL,1L,0x39177C6DL,0x49DCE7C3L,0x49DCE7C3L,0x39177C6DL},{0x49DCE7C3L,0x39177C6DL,1L,0x39177C6DL,0x49DCE7C3L,0x49DCE7C3L,0x39177C6DL}};
            int i, j;
            for (l_9 = 6; (l_9 >= 0); l_9 -= 1)
            { /* block id: 419 */
                uint16_t l_689 = 0UL;
                if ((atomic_inc(&p_827->l_atomic_input[66]) == 5))
                { /* block id: 421 */
                    int32_t l_681 = (-6L);
                    int32_t *l_680[4][1][6];
                    int32_t *l_682 = &l_681;
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 6; k++)
                                l_680[i][j][k] = &l_681;
                        }
                    }
                    l_682 = l_680[1][0][0];
                    unsigned int result = 0;
                    result += l_681;
                    atomic_add(&p_827->l_special_values[66], result);
                }
                else
                { /* block id: 423 */
                    (1 + 1);
                }
                for (l_677 = 4; (l_677 >= 0); l_677 -= 1)
                { /* block id: 428 */
                    uint8_t **l_685 = &p_827->g_363[1];
                    int32_t l_702[4];
                    uint32_t *l_716 = &p_827->g_703;
                    uint32_t *l_719 = (void*)0;
                    uint32_t *l_720 = &p_827->g_332;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_702[i] = 3L;
                    for (p_827->g_119 = 0; (p_827->g_119 <= 1); p_827->g_119 += 1)
                    { /* block id: 431 */
                        int32_t l_713[1];
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_713[i] = 0x7A092505L;
                        l_679[l_9][p_827->g_119] = (safe_add_func_uint64_t_u_u(((void*)0 == l_685), (0x3BL == (l_689 ^= (9L > ((l_679[p_827->g_117][p_827->g_119] , (l_679[3][0] | (safe_mul_func_uint16_t_u_u((l_688 | 4L), 0x2775L)))) | p_827->g_181))))));
                        (*p_827->g_185) = (safe_mul_func_uint8_t_u_u(((+0x7883F2BEL) ^ ((((l_692 = 0L) <= (l_665 = ((safe_add_func_int32_t_s_s((safe_lshift_func_int16_t_s_u((l_679[p_827->g_117][p_827->g_119] = (p_827->g_697 != (void*)0)), (safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((l_702[1] | p_827->g_703), (safe_lshift_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_u(((safe_lshift_func_int16_t_s_s(((((p_827->g_158 = ((l_710 ^ (l_689 , (safe_mod_func_uint8_t_u_u(1UL, l_689)))) == p_827->g_74.f3)) , p_827->g_269.f2) , l_688) != 0x78F2B09DL), 15)) | l_713[0]), l_702[3])) & 0x0B67L) != l_713[0]), l_689)))), l_688)))), p_827->g_322.f2)) | 0x5A91L))) , l_713[0]) && (-1L))), l_669));
                    }
                    (*p_827->g_185) = (((p_827->g_34[l_677] , &p_827->g_108[4]) != (void*)0) , ((safe_mul_func_int8_t_s_s(0x35L, (((*l_720) = (++(*l_716))) , l_665))) & 0xB437L));
                }
            }
            l_721++;
            if ((**p_827->g_292))
            { /* block id: 446 */
                for (p_827->g_33 = 3; (p_827->g_33 >= 0); p_827->g_33 -= 1)
                { /* block id: 449 */
                    uint64_t l_726[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                    int i;
                    for (l_9 = 1; (l_9 <= 4); l_9 += 1)
                    { /* block id: 452 */
                        uint64_t l_724[6][10][2] = {{{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL}},{{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL}},{{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL}},{{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL}},{{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL}},{{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL},{0xE19F75A66136C70AL,0xE19F75A66136C70AL}}};
                        int32_t l_725 = 0x2DAC3B09L;
                        int i, j, k;
                        l_725 = l_724[2][2][1];
                    }
                    for (p_827->g_186.f3 = 1; (p_827->g_186.f3 <= 6); p_827->g_186.f3 += 1)
                    { /* block id: 457 */
                        l_692 = l_726[5];
                    }
                }
                return l_710;
            }
            else
            { /* block id: 462 */
                int32_t l_734 = (-2L);
                uint16_t l_759[6][6];
                int32_t l_768 = (-1L);
                int32_t l_792 = 0x6947C755L;
                int32_t l_794 = 0x48C8EF27L;
                int32_t l_796 = 1L;
                int32_t l_798 = (-1L);
                int32_t l_801 = 0L;
                int32_t l_802 = 0x72A5CC30L;
                int32_t l_804 = 0x0A61F8ECL;
                int32_t l_806 = 1L;
                int32_t l_807[4][2][7] = {{{0x62124DFEL,0x7FAAC0EEL,0L,5L,0L,5L,0L},{0x62124DFEL,0x7FAAC0EEL,0L,5L,0L,5L,0L}},{{0x62124DFEL,0x7FAAC0EEL,0L,5L,0L,5L,0L},{0x62124DFEL,0x7FAAC0EEL,0L,5L,0L,5L,0L}},{{0x62124DFEL,0x7FAAC0EEL,0L,5L,0L,5L,0L},{0x62124DFEL,0x7FAAC0EEL,0L,5L,0L,5L,0L}},{{0x62124DFEL,0x7FAAC0EEL,0L,5L,0L,5L,0L},{0x62124DFEL,0x7FAAC0EEL,0L,5L,0L,5L,0L}}};
                uint64_t l_814 = 18446744073709551615UL;
                int16_t l_817 = 0x63B7L;
                int i, j, k;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 6; j++)
                        l_759[i][j] = 1UL;
                }
                if (((***p_827->g_626) , ((l_669 ^ ((*l_548) = (l_692 = (l_688 && (safe_div_func_uint64_t_u_u(p_827->g_269.f0, (safe_div_func_int32_t_s_s(((*p_827->g_185) = (*p_827->g_185)), 0x5AF21016L)))))))) && ((((*l_554) = (safe_mul_func_uint64_t_u_u(l_665, ((l_733 = l_665) , (((l_734 | l_692) , (void*)0) == (void*)0))))) || (-10L)) , l_734))))
                { /* block id: 468 */
                    int64_t l_754 = 0x6FF3652517446239L;
                    int32_t *l_761 = &l_692;
                    if ((atomic_inc(&p_827->l_atomic_input[76]) == 4))
                    { /* block id: 470 */
                        int32_t l_736 = 0x46CB9035L;
                        int32_t *l_735 = &l_736;
                        int32_t *l_737 = &l_736;
                        int32_t *l_738 = &l_736;
                        int32_t *l_739 = &l_736;
                        int16_t l_740 = 0x3D63L;
                        uint32_t l_741[9][1][2] = {{{0UL,0UL}},{{0UL,0UL}},{{0UL,0UL}},{{0UL,0UL}},{{0UL,0UL}},{{0UL,0UL}},{{0UL,0UL}},{{0UL,0UL}},{{0UL,0UL}}};
                        int32_t l_744[10];
                        uint8_t l_745[5][1] = {{0xC9L},{0xC9L},{0xC9L},{0xC9L},{0xC9L}};
                        int i, j, k;
                        for (i = 0; i < 10; i++)
                            l_744[i] = 0x278836D2L;
                        l_737 = l_735;
                        l_739 = l_738;
                        l_741[7][0][0]--;
                        --l_745[4][0];
                        unsigned int result = 0;
                        result += l_736;
                        result += l_740;
                        int l_741_i0, l_741_i1, l_741_i2;
                        for (l_741_i0 = 0; l_741_i0 < 9; l_741_i0++) {
                            for (l_741_i1 = 0; l_741_i1 < 1; l_741_i1++) {
                                for (l_741_i2 = 0; l_741_i2 < 2; l_741_i2++) {
                                    result += l_741[l_741_i0][l_741_i1][l_741_i2];
                                }
                            }
                        }
                        int l_744_i0;
                        for (l_744_i0 = 0; l_744_i0 < 10; l_744_i0++) {
                            result += l_744[l_744_i0];
                        }
                        int l_745_i0, l_745_i1;
                        for (l_745_i0 = 0; l_745_i0 < 5; l_745_i0++) {
                            for (l_745_i1 = 0; l_745_i1 < 1; l_745_i1++) {
                                result += l_745[l_745_i0][l_745_i1];
                            }
                        }
                        atomic_add(&p_827->l_special_values[76], result);
                    }
                    else
                    { /* block id: 475 */
                        (1 + 1);
                    }
                    (*p_827->g_185) ^= (-9L);
                    (*p_827->g_185) ^= (l_734 < ((((**l_667) = ((l_665 , (safe_add_func_uint64_t_u_u((p_827->g_186.f3 , (safe_lshift_func_uint16_t_u_u(((0x49L == ((*l_548) = ((safe_mod_func_int16_t_s_s(((l_688 & (l_754 < (safe_mul_func_int8_t_s_s((0x8BL | ((((void*)0 == l_757) , &p_827->g_171) != (void*)0)), l_665)))) >= l_754), p_827->g_497.f4)) & l_758))) < l_734), l_734))), l_759[4][2]))) > 0x000B7603L)) & p_827->g_117) >= 1L));
                    for (p_827->g_322.f2 = 3; (p_827->g_322.f2 >= 0); p_827->g_322.f2 -= 1)
                    { /* block id: 484 */
                        int32_t l_760 = 0x0E0427DCL;
                        int32_t **l_763 = &l_761;
                        int i;
                        if (l_760)
                            break;
                        (*l_763) = l_761;
                    }
                }
                else
                { /* block id: 488 */
                    int32_t *l_764[10][3] = {{&p_827->g_6,&p_827->g_6,&p_827->g_14},{&p_827->g_6,&p_827->g_6,&p_827->g_14},{&p_827->g_6,&p_827->g_6,&p_827->g_14},{&p_827->g_6,&p_827->g_6,&p_827->g_14},{&p_827->g_6,&p_827->g_6,&p_827->g_14},{&p_827->g_6,&p_827->g_6,&p_827->g_14},{&p_827->g_6,&p_827->g_6,&p_827->g_14},{&p_827->g_6,&p_827->g_6,&p_827->g_14},{&p_827->g_6,&p_827->g_6,&p_827->g_14},{&p_827->g_6,&p_827->g_6,&p_827->g_14}};
                    int i, j;
                    --l_770;
                    for (p_827->g_289 = 0; (p_827->g_289 <= 6); p_827->g_289 += 1)
                    { /* block id: 492 */
                        uint32_t l_773[10][6][2] = {{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL},{4294967295UL,4294967295UL}}};
                        int i, j, k;
                        return l_773[8][2][0];
                    }
                    for (p_827->g_186.f2 = 3; (p_827->g_186.f2 >= 0); p_827->g_186.f2 -= 1)
                    { /* block id: 497 */
                        uint8_t l_781 = 3UL;
                        uint8_t *l_782 = &p_827->g_83;
                        uint64_t *l_785[8] = {&l_721,&l_721,&l_721,&l_721,&l_721,&l_721,&l_721,&l_721};
                        int i;
                        (*p_827->g_185) = (!(safe_lshift_func_int16_t_s_u((l_766[3][0] = ((((safe_div_func_uint8_t_u_u(((*l_548) = (++l_778)), (l_692 ^= ((*l_782) ^= l_781)))) , (0x74L < 0x5BL)) , (((1UL >= (l_665 && (l_767 <= (((+(safe_mod_func_uint16_t_u_u(p_827->g_268.f2, ((0x08C66868F0EBBC5EL > (p_827->g_786 = (&p_827->g_267 != &p_827->g_267))) | p_827->g_59)))) <= FAKE_DIVERGE(p_827->global_2_offset, get_global_id(2), 10)) | p_827->g_158)))) != l_781) , p_827->g_787)) , l_679[5][0])), 1)));
                    }
                    (*p_827->g_185) = 0x261EA435L;
                }
                if (l_778)
                    continue;
                for (l_733 = 3; (l_733 >= 0); l_733 -= 1)
                { /* block id: 511 */
                    int32_t l_791 = 0L;
                    int32_t l_793 = 0x54A02E2EL;
                    int8_t l_797 = 0x2BL;
                    int32_t l_799 = 0x44D8FB0BL;
                    int32_t l_809 = (-1L);
                    int32_t l_811 = (-1L);
                    int32_t l_813 = (-1L);
                    for (l_721 = 0; (l_721 <= 3); l_721 += 1)
                    { /* block id: 514 */
                        int32_t *l_788 = &p_827->g_119;
                        int32_t *l_789 = &l_768;
                        int32_t *l_790[4][6] = {{&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0]},{&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0]},{&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0]},{&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0],&l_679[5][0]}};
                        int32_t l_795 = 0L;
                        int32_t l_812 = (-1L);
                        int i, j;
                        (*p_827->g_185) = (**p_827->g_550);
                        ++l_814;
                        return l_817;
                    }
                    for (p_827->g_72 = 0; (p_827->g_72 <= 3); p_827->g_72 += 1)
                    { /* block id: 521 */
                        return l_692;
                    }
                }
            }
        }
    }
    --l_820;
    ++l_824;
    return (*l_818);
}


/* ------------------------------------------ */
/* 
 * reads : p_827->g_59 p_827->g_12 p_827->g_13 p_827->g_332 p_827->g_420 p_827->g_500 p_827->g_14 p_827->g_170
 * writes: p_827->g_119 p_827->g_13 p_827->g_166 p_827->g_185 p_827->g_332
 */
int32_t * func_2(uint32_t  p_3, struct S1 * p_827)
{ /* block id: 302 */
    int16_t *l_507[8];
    int32_t l_508[2];
    struct S0 ***l_510 = (void*)0;
    struct S0 ****l_509 = &l_510;
    int32_t l_511 = 0x3A5C8D76L;
    uint64_t *l_512[1];
    int32_t l_514[9] = {0x42A730C3L,0x42A730C3L,0x42A730C3L,0x42A730C3L,0x42A730C3L,0x42A730C3L,0x42A730C3L,0x42A730C3L,0x42A730C3L};
    uint32_t l_515[4];
    int64_t l_518 = 0L;
    int32_t **l_519 = &p_827->g_185;
    int16_t l_526 = (-9L);
    int8_t *l_543 = (void*)0;
    int32_t *l_547 = &p_827->g_33;
    int i;
    for (i = 0; i < 8; i++)
        l_507[i] = &p_827->g_156;
    for (i = 0; i < 2; i++)
        l_508[i] = (-6L);
    for (i = 0; i < 1; i++)
        l_512[i] = &p_827->g_513;
    for (i = 0; i < 4; i++)
        l_515[i] = 0x5C7AB5B5L;
    (*l_519) = (FAKE_DIVERGE(p_827->global_2_offset, get_global_id(2), 10) , func_15(((safe_add_func_int64_t_s_s((safe_lshift_func_int16_t_s_s(p_3, (l_508[0] = 0x01C7L))), p_3)) <= (l_509 != &l_510)), (l_518 = (--l_515[2])), (p_3 , p_3), p_3, ((*l_519) = func_15(p_3, l_511, p_3, p_827->g_59, &l_514[3], p_827)), p_827));
    for (p_827->g_332 = 0; (p_827->g_332 >= 3); p_827->g_332 = safe_add_func_uint16_t_u_u(p_827->g_332, 3))
    { /* block id: 310 */
        uint32_t l_527 = 1UL;
        uint8_t **l_528 = &p_827->g_363[1];
        int32_t *l_541 = (void*)0;
        int32_t *l_542[9] = {&l_508[0],&l_508[0],&l_508[0],&l_508[0],&l_508[0],&l_508[0],&l_508[0],&l_508[0],&l_508[0]};
        int8_t *l_544[9] = {&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26};
        int i;
        l_511 = ((~((safe_sub_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((l_508[1] = ((((l_526 < ((p_3 | l_527) > ((void*)0 == l_528))) | ((safe_rshift_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(p_3, ((l_514[3] = ((safe_add_func_int64_t_s_s(((safe_lshift_func_int8_t_s_u((p_827->g_420 , (0x23ADL & l_514[8])), p_3)) , (*p_827->g_500)), 0xDA0E53CFA320A57DL)) <= p_3)) & 0xCC9AB72BL))), p_3)), 7)) ^ p_827->g_14), p_827->g_170)) <= p_3)) , l_543) == l_544[7])), 3)), l_518)) , l_511)) < 0x2C09766265B6BB65L);
        if (p_3)
            break;
    }
    l_508[0] = (safe_rshift_func_uint16_t_u_u((+FAKE_DIVERGE(p_827->local_2_offset, get_local_id(2), 10)), 8));
    return l_547;
}


/* ------------------------------------------ */
/* 
 * reads : p_827->g_13 p_827->g_33 p_827->g_34 p_827->g_6 p_827->g_59 p_827->g_73 p_827->g_74.f2 p_827->g_83 p_827->g_74.f3 p_827->g_72 p_827->g_74.f4 p_827->g_110 p_827->g_12 p_827->g_113 p_827->g_119 p_827->g_126 p_827->g_130 p_827->g_181 p_827->g_184 p_827->g_117 p_827->g_156 p_827->g_186 p_827->g_74.f1 p_827->g_172 p_827->g_185 p_827->g_14 p_827->g_74.f0 p_827->g_170 p_827->g_268 p_827->g_289 p_827->g_187.f2 p_827->g_292 p_827->g_187.f0 p_827->g_269.f1 p_827->g_322 p_827->g_332 p_827->g_269.f4 p_827->g_361 p_827->g_420 p_827->g_428 p_827->g_429.f2 p_827->g_461 p_827->g_463 p_827->g_269.f0 p_827->g_267 p_827->g_158
 * writes: p_827->g_14 p_827->g_26 p_827->g_33 p_827->g_34 p_827->g_68 p_827->g_72 p_827->g_83 p_827->g_74.f3 p_827->g_74.f4 p_827->g_109 p_827->g_117 p_827->g_119 p_827->g_126 p_827->g_73 p_827->g_12 p_827->g_156 p_827->g_74.f0 p_827->g_13 p_827->g_166 p_827->g_181 p_827->g_185 p_827->g_187 p_827->g_74.f2 p_827->g_186.f0 p_827->g_258 p_827->g_59 p_827->g_158 p_827->g_267 p_827->g_269 p_827->g_289 p_827->g_74 p_827->g_322.f0 p_827->g_362 p_827->g_186.f2 p_827->g_170 p_827->g_420 p_827->g_429 p_827->g_186.f3 p_827->g_322.f2 p_827->g_464
 */
int32_t  func_7(int64_t  p_8, struct S1 * p_827)
{ /* block id: 5 */
    int32_t *l_494 = &p_827->g_33;
    uint8_t **l_495[3];
    uint8_t ***l_496 = &l_495[0];
    int i;
    for (i = 0; i < 3; i++)
        l_495[i] = (void*)0;
    (*l_494) = func_10(p_8, p_827);
    (*l_494) ^= 0x7CE8C952L;
    (*l_496) = l_495[0];
    return (*l_494);
}


/* ------------------------------------------ */
/* 
 * reads : p_827->g_13 p_827->g_33 p_827->g_34 p_827->g_6 p_827->g_59 p_827->g_73 p_827->g_74.f2 p_827->g_83 p_827->g_74.f3 p_827->g_72 p_827->g_74.f4 p_827->g_110 p_827->g_12 p_827->g_113 p_827->g_119 p_827->g_126 p_827->g_130 p_827->g_181 p_827->g_184 p_827->g_117 p_827->g_156 p_827->g_186 p_827->g_74.f1 p_827->g_172 p_827->g_185 p_827->g_14 p_827->g_74.f0 p_827->g_170 p_827->g_268 p_827->g_289 p_827->g_187.f2 p_827->g_292 p_827->g_187.f0 p_827->g_269.f1 p_827->g_322 p_827->g_332 p_827->g_269.f4 p_827->g_361 p_827->g_420 p_827->g_428 p_827->g_429.f2 p_827->g_461 p_827->g_463 p_827->g_269.f0 p_827->g_267 p_827->g_158
 * writes: p_827->g_14 p_827->g_26 p_827->g_33 p_827->g_34 p_827->g_68 p_827->g_72 p_827->g_83 p_827->g_74.f3 p_827->g_74.f4 p_827->g_109 p_827->g_117 p_827->g_119 p_827->g_126 p_827->g_73 p_827->g_12 p_827->g_156 p_827->g_74.f0 p_827->g_13 p_827->g_166 p_827->g_181 p_827->g_185 p_827->g_187 p_827->g_74.f2 p_827->g_186.f0 p_827->g_258 p_827->g_59 p_827->g_158 p_827->g_267 p_827->g_269 p_827->g_289 p_827->g_74 p_827->g_322.f0 p_827->g_362 p_827->g_186.f2 p_827->g_170 p_827->g_420 p_827->g_429 p_827->g_186.f3 p_827->g_322.f2 p_827->g_464
 */
int32_t  func_10(int8_t  p_11, struct S1 * p_827)
{ /* block id: 6 */
    uint64_t l_153 = 0xC79E369C8CF9179FL;
    int32_t l_160[4][5][6] = {{{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)}},{{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)}},{{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)}},{{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)},{(-10L),0x6195176AL,(-10L),(-10L),0x6195176AL,(-10L)}}};
    int32_t l_178 = 0x49B77D7FL;
    int32_t l_179 = 0L;
    int32_t l_180 = 9L;
    uint8_t *l_201 = &p_827->g_12[0][4][4];
    uint8_t *l_203 = (void*)0;
    uint8_t l_290 = 4UL;
    int64_t *l_304 = &p_827->g_68[5];
    int8_t l_310 = (-2L);
    uint32_t *l_342 = &p_827->g_289;
    uint32_t l_359 = 4294967295UL;
    uint16_t l_364 = 0xD829L;
    struct S0 *l_462[3];
    uint32_t l_488 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_462[i] = &p_827->g_74;
    for (p_11 = 4; (p_11 >= 1); p_11 -= 1)
    { /* block id: 9 */
        uint32_t l_23 = 0UL;
        int64_t *l_157 = &p_827->g_158;
        int32_t *l_161[8][9][3] = {{{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0}},{{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0}},{{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0}},{{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0}},{{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0}},{{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0}},{{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0}},{{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0},{&p_827->g_6,&p_827->g_6,(void*)0}}};
        struct S0 **l_239 = &p_827->g_73;
        int16_t *l_256 = &p_827->g_156;
        uint16_t l_325[8] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
        uint16_t l_337 = 65528UL;
        int i, j, k;
        for (p_827->g_14 = 3; (p_827->g_14 >= 0); p_827->g_14 -= 1)
        { /* block id: 12 */
            int8_t *l_24 = (void*)0;
            int8_t *l_25 = &p_827->g_26;
            int32_t *l_27 = (void*)0;
            int16_t *l_154 = (void*)0;
            int16_t *l_155 = &p_827->g_156;
            uint16_t *l_159 = &p_827->g_74.f0;
            int32_t l_177[10][2][2] = {{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}},{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}},{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}},{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}},{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}},{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}},{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}},{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}},{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}},{{0x1741CF09L,0x6FD15D32L},{0x1741CF09L,0x6FD15D32L}}};
            struct S0 **l_191 = &p_827->g_73;
            struct S0 ****l_237 = (void*)0;
            uint8_t l_266 = 5UL;
            int i, j, k;
            l_27 = func_15(p_11, p_11, ((safe_mod_func_int8_t_s_s(((((*l_25) = l_23) ^ (((l_27 == l_27) ^ (func_28(p_827->g_13, p_827) < ((*l_159) = ((((((*l_155) = ((-1L) && (safe_rshift_func_uint16_t_u_s(l_153, p_11)))) , &p_11) == (void*)0) , l_157) != (void*)0)))) & p_827->g_59)) != 65535UL), 1UL)) , (-8L)), l_160[3][4][1], l_161[6][0][0], p_827);
            --p_827->g_181;
            (*p_827->g_184) = &l_180;
            for (p_827->g_117 = 0; (p_827->g_117 <= 4); p_827->g_117 += 1)
            { /* block id: 81 */
                int16_t l_190 = 0x3CC8L;
                int32_t *l_259 = &p_827->g_6;
                for (p_827->g_156 = 4; (p_827->g_156 >= 0); p_827->g_156 -= 1)
                { /* block id: 84 */
                    uint8_t **l_202 = &l_201;
                    uint8_t *l_204 = &p_827->g_12[0][3][0];
                    int32_t l_205 = (-9L);
                    uint16_t *l_206 = &p_827->g_187.f3;
                    struct S0 **l_207 = &p_827->g_73;
                    p_827->g_187 = p_827->g_186;
                    (*p_827->g_185) = (0x151BL == (l_190 > (FAKE_DIVERGE(p_827->global_2_offset, get_global_id(2), 10) > ((l_191 == ((safe_sub_func_uint16_t_u_u((p_827->g_74.f1 , (((safe_lshift_func_uint16_t_u_u(l_190, 11)) != (safe_unary_minus_func_int8_t_s(((((*l_25) = (((((((safe_mul_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((((0x606FL <= (((*l_202) = l_201) == (l_204 = l_203))) & p_11) ^ p_827->g_186.f0), p_11)), 0x1EC4L)) > l_205) && l_190) != p_11) , p_11) ^ p_11) <= 18446744073709551615UL)) , l_206) == &p_827->g_181)))) <= p_827->g_172)), GROUP_DIVERGE(1, 1))) , l_207)) == p_11))));
                    if ((atomic_inc(&p_827->l_atomic_input[53]) == 7))
                    { /* block id: 91 */
                        uint32_t l_208[2];
                        uint16_t l_209 = 1UL;
                        uint32_t l_210 = 1UL;
                        uint16_t l_211 = 0x2B19L;
                        uint16_t l_212[6][4][4] = {{{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL}},{{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL}},{{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL}},{{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL}},{{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL}},{{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL},{0x6C5AL,0x6C5AL,0x6CBFL,1UL}}};
                        struct S0 l_213 = {3UL,-1L,0x3F2CD2CCL,0xE2D7L,-1L};/* VOLATILE GLOBAL l_213 */
                        struct S0 l_214[4] = {{65535UL,0x7D44L,0L,0UL,0x69B678CBL},{65535UL,0x7D44L,0L,0UL,0x69B678CBL},{65535UL,0x7D44L,0L,0UL,0x69B678CBL},{65535UL,0x7D44L,0L,0UL,0x69B678CBL}};
                        uint32_t l_215 = 0x69989336L;
                        int32_t l_217 = (-1L);
                        int32_t *l_216[3];
                        int32_t *l_218 = (void*)0;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_208[i] = 2UL;
                        for (i = 0; i < 3; i++)
                            l_216[i] = &l_217;
                        l_212[2][0][2] ^= (l_208[1] , (l_209 , (l_211 = l_210)));
                        l_214[2] = l_213;
                        l_215 = (-6L);
                        l_218 = l_216[1];
                        unsigned int result = 0;
                        int l_208_i0;
                        for (l_208_i0 = 0; l_208_i0 < 2; l_208_i0++) {
                            result += l_208[l_208_i0];
                        }
                        result += l_209;
                        result += l_210;
                        result += l_211;
                        int l_212_i0, l_212_i1, l_212_i2;
                        for (l_212_i0 = 0; l_212_i0 < 6; l_212_i0++) {
                            for (l_212_i1 = 0; l_212_i1 < 4; l_212_i1++) {
                                for (l_212_i2 = 0; l_212_i2 < 4; l_212_i2++) {
                                    result += l_212[l_212_i0][l_212_i1][l_212_i2];
                                }
                            }
                        }
                        result += l_213.f0;
                        result += l_213.f1;
                        result += l_213.f2;
                        result += l_213.f3;
                        result += l_213.f4;
                        int l_214_i0;
                        for (l_214_i0 = 0; l_214_i0 < 4; l_214_i0++) {
                            result += l_214[l_214_i0].f0;
                            result += l_214[l_214_i0].f1;
                            result += l_214[l_214_i0].f2;
                            result += l_214[l_214_i0].f3;
                            result += l_214[l_214_i0].f4;
                        }
                        result += l_215;
                        result += l_217;
                        atomic_add(&p_827->l_special_values[53], result);
                    }
                    else
                    { /* block id: 97 */
                        (1 + 1);
                    }
                }
                for (p_827->g_156 = 0; (p_827->g_156 <= 4); p_827->g_156 += 1)
                { /* block id: 103 */
                    int64_t l_233 = 0x657B9D552DC8CDFEL;
                    for (l_180 = 0; (l_180 <= 8); l_180 += 1)
                    { /* block id: 106 */
                        int i, j, k;
                        l_179 = (!l_160[p_827->g_14][p_11][p_11]);
                    }
                    for (p_827->g_74.f2 = 0; (p_827->g_74.f2 <= 6); p_827->g_74.f2 += 1)
                    { /* block id: 111 */
                        int16_t *l_234 = &l_190;
                        int32_t l_238 = 1L;
                        int i, j, k;
                        (*p_827->g_185) = ((p_11 < (safe_div_func_uint8_t_u_u((p_11 & 4294967289UL), (safe_add_func_uint16_t_u_u((((*l_25) = (((((18446744073709551608UL <= GROUP_DIVERGE(0, 1)) < p_11) == (safe_lshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u(((((safe_add_func_uint64_t_u_u(((((safe_lshift_func_uint16_t_u_s(((GROUP_DIVERGE(0, 1) , (p_827->g_12[(p_11 + 2)][p_827->g_156][p_827->g_117] ^= (safe_mul_func_uint16_t_u_u(l_233, ((*l_234) = l_233))))) ^ (safe_lshift_func_uint8_t_u_s(1UL, 5))), p_11)) == p_827->g_34[6].f4) == GROUP_DIVERGE(2, 1)) < 1UL), FAKE_DIVERGE(p_827->local_2_offset, get_local_id(2), 10))) , (void*)0) == l_237) && p_11), l_233)), 5))) > l_238) || p_11)) , p_827->g_12[(p_11 + 2)][p_827->g_156][p_827->g_117]), p_11))))) != 0x6C84EBD323E343D0L);
                        (*p_827->g_185) |= (l_239 != (void*)0);
                        (*p_827->g_185) = (safe_unary_minus_func_uint16_t_u(((*l_159) = (++p_827->g_186.f0))));
                        if (p_11)
                            break;
                    }
                }
                for (p_827->g_74.f0 = 0; (p_827->g_74.f0 <= 4); p_827->g_74.f0 += 1)
                { /* block id: 125 */
                    int16_t **l_257[7][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                    uint16_t *l_287 = &p_827->g_186.f0;
                    uint32_t *l_288[2];
                    uint32_t l_291[4] = {0x934D0153L,0x934D0153L,0x934D0153L,0x934D0153L};
                    int64_t l_293 = 0x5AC13ECC06DEEFBDL;
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_288[i] = &p_827->g_289;
                    p_827->g_269 = ((safe_unary_minus_func_uint32_t_u((p_827->g_267 = (safe_sub_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(0x0157L, (GROUP_DIVERGE(1, 1) | (&p_827->g_171 != (p_827->g_258[3][5] = l_256))))) ^ ((0xA56F86E5E8F52763L && ((p_827->g_59 = p_827->g_74.f0) <= ((FAKE_DIVERGE(p_827->local_2_offset, get_local_id(2), 10) , ((l_259 != l_259) > ((p_827->g_117 , ((*l_157) = ((~((((safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((!l_178), p_11)), p_11)), p_827->g_170)) == 0x19CB918FL) < p_11) | 2L)) == (*l_259)))) || 0x0DF6ADCC6596B18BL))) <= l_266))) , 0x059E2F2E827D0824L)), p_827->g_83)), (*l_259))), p_11)), 0x20C4L))))) , p_827->g_268);
                    (*p_827->g_292) = func_15(((p_827->g_74.f0 , p_11) | ((0UL | ((*l_25) = 0L)) || (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_u((((((((safe_add_func_int16_t_s_s(((*l_256) = ((safe_lshift_func_int16_t_s_s(p_11, (((((~(p_827->g_289 &= (p_11 >= (safe_rshift_func_int16_t_s_s(((p_827->g_268.f3 , (safe_rshift_func_int16_t_s_u((-1L), ((*l_287) = ((safe_unary_minus_func_int8_t_s(((9UL >= (*l_259)) && 0x77615831L))) != p_11))))) || p_827->g_186.f3), p_11))))) >= l_160[0][2][1]) != p_11) != p_827->g_170) < p_827->g_187.f2))) > 0L)), p_11)) , l_290) , (void*)0) != &p_827->g_258[3][5]) == l_153) != p_11) != l_178), 9)) , p_827->g_12[7][2][2]) , p_827->g_186.f1), p_827->g_59)), FAKE_DIVERGE(p_827->local_2_offset, get_local_id(2), 10))))), p_11, l_291[3], p_11, &p_827->g_119, p_827);
                    return l_293;
                }
            }
        }
        for (p_827->g_187.f0 = 0; (p_827->g_187.f0 <= 4); p_827->g_187.f0 += 1)
        { /* block id: 142 */
            int8_t l_309[6];
            uint32_t *l_315 = (void*)0;
            uint32_t *l_316 = &p_827->g_289;
            uint64_t *l_321 = &l_153;
            int i;
            for (i = 0; i < 6; i++)
                l_309[i] = 0x3BL;
            (*p_827->g_185) &= (safe_mod_func_int64_t_s_s((p_11 <= (safe_div_func_int64_t_s_s((safe_div_func_uint16_t_u_u(((p_11 , (FAKE_DIVERGE(p_827->local_2_offset, get_local_id(2), 10) >= (0x321CA8D19DE4D5F4L < (safe_add_func_uint8_t_u_u((p_827->g_170 || ((void*)0 != l_304)), (safe_mul_func_uint16_t_u_u((!((safe_add_func_uint16_t_u_u(p_11, 1UL)) | ((void*)0 != l_256))), l_309[3]))))))) || p_827->g_269.f1), p_11)), 0x51EEC7222330D613L))), l_178));
            (*p_827->g_292) = func_15(l_310, p_827->g_187.f2, ((safe_mul_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((0L && (((*l_316) = GROUP_DIVERGE(2, 1)) == (safe_lshift_func_int16_t_s_u(((void*)0 != &p_827->g_156), 6)))), 2)) == p_827->g_268.f3), ((l_309[3] < (p_11 != (safe_lshift_func_int8_t_s_u((((*l_321) = p_11) >= 7L), p_11)))) >= FAKE_DIVERGE(p_827->global_0_offset, get_global_id(0), 10)))) < 1L), p_11, &p_827->g_119, p_827);
            for (p_827->g_72 = 0; (p_827->g_72 <= 4); p_827->g_72 += 1)
            { /* block id: 149 */
                struct S0 *l_324 = &p_827->g_74;
                (*l_324) = p_827->g_322;
            }
            return l_325[6];
        }
        for (l_310 = 0; (l_310 <= 4); l_310 += 1)
        { /* block id: 156 */
            return l_310;
        }
        for (p_827->g_74.f3 = 0; (p_827->g_74.f3 <= 4); p_827->g_74.f3 += 1)
        { /* block id: 161 */
            uint16_t *l_328 = &p_827->g_322.f0;
            int32_t l_331 = 0x1D188F84L;
            uint8_t **l_360 = &l_203;
            l_179 = (((0xECL >= (safe_add_func_int64_t_s_s((((++(*l_328)) >= l_331) , (p_827->g_332 ^ ((*p_827->g_185) = (-9L)))), (l_331 != (safe_lshift_func_uint8_t_u_u(p_11, (safe_sub_func_uint64_t_u_u(1UL, (l_337 & (~p_827->g_269.f4)))))))))) ^ p_11) == 5L);
            (*l_239) = func_36(p_11, (((((*l_201)--) < l_180) > 0x2639L) != (safe_rshift_func_uint16_t_u_s((0x14L || (l_342 == &p_827->g_289)), (safe_lshift_func_uint16_t_u_u(2UL, (((+((~p_827->g_332) , (l_179 |= (safe_sub_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((((safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_s((safe_div_func_uint32_t_u_u(p_827->g_186.f3, p_11)), l_359)), l_180)) || p_11) <= p_827->g_117), p_827->g_170)), l_178)), p_11)), l_180))))) != p_11) & 0x79L)))))), p_11, (*p_827->g_292), l_331, p_827);
            for (p_827->g_83 = 0; (p_827->g_83 <= 4); p_827->g_83 += 1)
            { /* block id: 170 */
                (*p_827->g_361) = l_360;
                return l_364;
            }
        }
        for (p_827->g_119 = 3; (p_827->g_119 >= 0); p_827->g_119 -= 1)
        { /* block id: 177 */
            int64_t l_423 = 0x6224F4A21B06277BL;
            struct S0 ***l_459 = &p_827->g_109;
            struct S0 ****l_458 = &l_459;
            if ((atomic_inc(&p_827->g_atomic_input[81 * get_linear_group_id() + 62]) == 5))
            { /* block id: 179 */
                int32_t l_365 = 0L;
                for (l_365 = 1; (l_365 <= 6); l_365 += 1)
                { /* block id: 182 */
                    int32_t l_366[4][6][2] = {{{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L}},{{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L}},{{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L}},{{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L},{0L,0x4205E852L}}};
                    int64_t l_381[2];
                    int32_t l_382 = (-1L);
                    uint64_t l_383 = 0xC1E5B7791C913729L;
                    uint8_t l_384 = 253UL;
                    uint64_t l_385 = 0xD8FB6CBFD63BAE20L;
                    int8_t l_388 = 0x69L;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_381[i] = 0x1BD3FC8E0ECB7D06L;
                    for (l_366[2][2][0] = 0; (l_366[2][2][0] <= 4); l_366[2][2][0] += 1)
                    { /* block id: 185 */
                        int32_t l_367 = (-10L);
                        int8_t l_368[9][6] = {{(-6L),(-1L),6L,6L,(-1L),6L},{(-6L),(-1L),6L,6L,(-1L),6L},{(-6L),(-1L),6L,6L,(-1L),6L},{(-6L),(-1L),6L,6L,(-1L),6L},{(-6L),(-1L),6L,6L,(-1L),6L},{(-6L),(-1L),6L,6L,(-1L),6L},{(-6L),(-1L),6L,6L,(-1L),6L},{(-6L),(-1L),6L,6L,(-1L),6L},{(-6L),(-1L),6L,6L,(-1L),6L}};
                        int8_t l_369 = 0x13L;
                        uint16_t l_370[9] = {0xE3E3L,0xE3E3L,0xE3E3L,0xE3E3L,0xE3E3L,0xE3E3L,0xE3E3L,0xE3E3L,0xE3E3L};
                        uint32_t l_373 = 0x73678ECBL;
                        int8_t l_374 = 0L;
                        int64_t l_375 = 0L;
                        int32_t l_376 = (-5L);
                        uint64_t l_377[4] = {0xF1913D5D53D6BB16L,0xF1913D5D53D6BB16L,0xF1913D5D53D6BB16L,0xF1913D5D53D6BB16L};
                        uint16_t l_378 = 0x2F58L;
                        struct S0 l_379 = {0UL,0x4EBFL,0x5927678EL,65530UL,5L};/* VOLATILE GLOBAL l_379 */
                        struct S0 l_380[5] = {{5UL,0x36E7L,0x05CF5D29L,65534UL,0x0FED1DD2L},{5UL,0x36E7L,0x05CF5D29L,65534UL,0x0FED1DD2L},{5UL,0x36E7L,0x05CF5D29L,65534UL,0x0FED1DD2L},{5UL,0x36E7L,0x05CF5D29L,65534UL,0x0FED1DD2L},{5UL,0x36E7L,0x05CF5D29L,65534UL,0x0FED1DD2L}};
                        int i, j, k;
                        l_367 &= 0L;
                        ++l_370[5];
                        l_380[0] = (p_827->g_12[(l_365 + 1)][p_827->g_119][p_11] , ((l_373 , l_374) , ((l_375 , (l_377[1] = l_376)) , (l_378 , l_379))));
                    }
                    l_384 = ((l_381[1] &= 0L) , (l_383 |= l_382));
                    ++l_385;
                    if (l_388)
                    { /* block id: 195 */
                        int8_t l_389[2][6][6] = {{{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)}},{{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)},{0x64L,0x64L,(-1L),0x28L,(-1L),(-8L)}}};
                        int32_t l_390 = (-9L);
                        uint16_t l_391 = 0x0585L;
                        int32_t *l_394[9] = {&l_390,&l_390,&l_390,&l_390,&l_390,&l_390,&l_390,&l_390,&l_390};
                        int16_t l_395 = (-1L);
                        struct S0 l_396[8][1][3] = {{{{0x33D4L,-3L,9L,0x1863L,0x55C354A9L},{0xD151L,2L,0x19EFCE50L,0UL,0x08600725L},{1UL,0x03C4L,0x245170DFL,0UL,0x7BDCC68BL}}},{{{0x33D4L,-3L,9L,0x1863L,0x55C354A9L},{0xD151L,2L,0x19EFCE50L,0UL,0x08600725L},{1UL,0x03C4L,0x245170DFL,0UL,0x7BDCC68BL}}},{{{0x33D4L,-3L,9L,0x1863L,0x55C354A9L},{0xD151L,2L,0x19EFCE50L,0UL,0x08600725L},{1UL,0x03C4L,0x245170DFL,0UL,0x7BDCC68BL}}},{{{0x33D4L,-3L,9L,0x1863L,0x55C354A9L},{0xD151L,2L,0x19EFCE50L,0UL,0x08600725L},{1UL,0x03C4L,0x245170DFL,0UL,0x7BDCC68BL}}},{{{0x33D4L,-3L,9L,0x1863L,0x55C354A9L},{0xD151L,2L,0x19EFCE50L,0UL,0x08600725L},{1UL,0x03C4L,0x245170DFL,0UL,0x7BDCC68BL}}},{{{0x33D4L,-3L,9L,0x1863L,0x55C354A9L},{0xD151L,2L,0x19EFCE50L,0UL,0x08600725L},{1UL,0x03C4L,0x245170DFL,0UL,0x7BDCC68BL}}},{{{0x33D4L,-3L,9L,0x1863L,0x55C354A9L},{0xD151L,2L,0x19EFCE50L,0UL,0x08600725L},{1UL,0x03C4L,0x245170DFL,0UL,0x7BDCC68BL}}},{{{0x33D4L,-3L,9L,0x1863L,0x55C354A9L},{0xD151L,2L,0x19EFCE50L,0UL,0x08600725L},{1UL,0x03C4L,0x245170DFL,0UL,0x7BDCC68BL}}}};
                        struct S0 l_397 = {1UL,0x10FBL,0x1F766BB9L,0x7761L,0x3FB22C8DL};/* VOLATILE GLOBAL l_397 */
                        int i, j, k;
                        --l_391;
                        l_394[1] = (void*)0;
                        l_397 = (l_395 , l_396[5][0][0]);
                    }
                    else
                    { /* block id: 199 */
                        int32_t *l_398 = (void*)0;
                        uint16_t l_399 = 0xBA10L;
                        int32_t l_400 = 0x130A0457L;
                        l_398 = (void*)0;
                        l_366[2][2][0] |= (l_400 &= l_399);
                    }
                }
                for (l_365 = 0; (l_365 <= 4); l_365 += 1)
                { /* block id: 207 */
                    int16_t l_401 = 0x427BL;
                    int64_t l_402 = 1L;
                    uint8_t l_403 = 0xA5L;
                    l_403--;
                }
                for (l_365 = 0; (l_365 <= 4); l_365 += 1)
                { /* block id: 212 */
                    int32_t l_406 = 4L;
                    uint64_t l_415[7][9] = {{0x429DE32E2BC6C3C0L,6UL,0UL,5UL,0UL,6UL,0x429DE32E2BC6C3C0L,0x0F91D3F03F9184D6L,0x54E5B90E0EAA6FD4L},{0x429DE32E2BC6C3C0L,6UL,0UL,5UL,0UL,6UL,0x429DE32E2BC6C3C0L,0x0F91D3F03F9184D6L,0x54E5B90E0EAA6FD4L},{0x429DE32E2BC6C3C0L,6UL,0UL,5UL,0UL,6UL,0x429DE32E2BC6C3C0L,0x0F91D3F03F9184D6L,0x54E5B90E0EAA6FD4L},{0x429DE32E2BC6C3C0L,6UL,0UL,5UL,0UL,6UL,0x429DE32E2BC6C3C0L,0x0F91D3F03F9184D6L,0x54E5B90E0EAA6FD4L},{0x429DE32E2BC6C3C0L,6UL,0UL,5UL,0UL,6UL,0x429DE32E2BC6C3C0L,0x0F91D3F03F9184D6L,0x54E5B90E0EAA6FD4L},{0x429DE32E2BC6C3C0L,6UL,0UL,5UL,0UL,6UL,0x429DE32E2BC6C3C0L,0x0F91D3F03F9184D6L,0x54E5B90E0EAA6FD4L},{0x429DE32E2BC6C3C0L,6UL,0UL,5UL,0UL,6UL,0x429DE32E2BC6C3C0L,0x0F91D3F03F9184D6L,0x54E5B90E0EAA6FD4L}};
                    int i, j;
                    for (l_406 = 4; (l_406 >= 0); l_406 -= 1)
                    { /* block id: 215 */
                        int32_t l_408 = 8L;
                        int32_t *l_407 = &l_408;
                        int32_t l_409 = 0x40E1191EL;
                        int8_t l_410 = 0L;
                        int16_t l_411 = 0L;
                        uint32_t l_412 = 0xD9073EF5L;
                        l_407 = (void*)0;
                        l_410 = (l_409 = 0x7F6759E2L);
                        --l_412;
                    }
                    l_415[4][8]++;
                }
                unsigned int result = 0;
                result += l_365;
                atomic_add(&p_827->g_special_values[81 * get_linear_group_id() + 62], result);
            }
            else
            { /* block id: 223 */
                (1 + 1);
            }
            for (p_827->g_156 = 4; (p_827->g_156 >= 0); p_827->g_156 -= 1)
            { /* block id: 228 */
                uint64_t l_425 = 0x365100CFA2386A4DL;
                for (p_827->g_186.f2 = 3; (p_827->g_186.f2 >= 0); p_827->g_186.f2 -= 1)
                { /* block id: 231 */
                    int32_t **l_419[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_419[i] = &l_161[5][3][1];
                    for (p_827->g_170 = 3; (p_827->g_170 >= 0); p_827->g_170 -= 1)
                    { /* block id: 234 */
                        int i;
                        return l_325[p_827->g_119];
                    }
                    l_161[6][0][0] = (*p_827->g_184);
                    for (l_290 = 0; (l_290 <= 5); l_290 += 1)
                    { /* block id: 240 */
                        ++p_827->g_420;
                    }
                    for (p_827->g_267 = 1; (p_827->g_267 <= 5); p_827->g_267 += 1)
                    { /* block id: 245 */
                        int32_t l_424 = 0x7BD41CAFL;
                        ++l_425;
                        l_161[5][2][0] = &l_178;
                    }
                }
                p_827->g_429 = p_827->g_428[4];
            }
            for (p_827->g_187.f0 = 0; (p_827->g_187.f0 <= 4); p_827->g_187.f0 += 1)
            { /* block id: 254 */
                uint8_t l_431 = 0UL;
                int32_t *l_460 = &p_827->g_267;
                uint32_t l_465 = 0xE859CFC3L;
                for (p_827->g_74.f2 = 0; (p_827->g_74.f2 <= 4); p_827->g_74.f2 += 1)
                { /* block id: 257 */
                    for (p_827->g_170 = 0; (p_827->g_170 <= 4); p_827->g_170 += 1)
                    { /* block id: 260 */
                        int32_t **l_430 = &l_161[6][0][0];
                        (**p_827->g_184) ^= (-1L);
                        (*l_430) = &l_180;
                    }
                    return l_431;
                }
                for (l_337 = 0; (l_337 <= 4); l_337 += 1)
                { /* block id: 268 */
                    uint16_t l_449[7][9][1] = {{{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL}},{{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL}},{{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL}},{{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL}},{{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL}},{{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL}},{{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL},{0xD29AL}}};
                    int8_t *l_455 = (void*)0;
                    int8_t *l_456 = (void*)0;
                    int8_t *l_457 = &l_310;
                    int32_t l_489 = (-4L);
                    int8_t *l_490 = (void*)0;
                    int8_t *l_491 = &p_827->g_26;
                    int i, j, k;
                    (*p_827->g_185) |= (safe_lshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((p_827->g_12[(p_11 + 4)][(p_827->g_119 + 1)][l_337] |= ((safe_unary_minus_func_int8_t_s((safe_mul_func_int16_t_s_s(l_431, (((((safe_mod_func_uint16_t_u_u((p_827->g_186.f3 = (((*l_256) = p_11) || ((p_11 , (safe_mul_func_uint8_t_u_u(((0x7C9EEF1CL >= (safe_mod_func_int8_t_s_s(p_11, (l_449[4][1][0] ^ 0x03L)))) <= (0UL & (safe_unary_minus_func_int16_t_s((((safe_sub_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((*l_457) = l_290), p_827->g_429.f2)), p_11)) , (void*)0) != l_458))))), l_290))) == p_827->g_14))), FAKE_DIVERGE(p_827->group_2_offset, get_group_id(2), 10))) , FAKE_DIVERGE(p_827->group_1_offset, get_group_id(1), 10)) , 0x26E38EAFA2BA30FDL) != FAKE_DIVERGE(p_827->group_0_offset, get_group_id(0), 10)) > p_11))))) == p_11)), l_431)), 2UL)), p_11));
                    for (p_827->g_322.f2 = 0; (p_827->g_322.f2 <= 3); p_827->g_322.f2 += 1)
                    { /* block id: 276 */
                        int i, j, k;
                        (*p_827->g_185) |= ((-5L) ^ (+p_827->g_12[p_827->g_119][p_827->g_187.f0][p_11]));
                        (*p_827->g_461) = l_460;
                        (*p_827->g_463) = ((*l_239) = l_462[2]);
                        return l_465;
                    }
                    p_827->g_14 ^= (((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_827->global_1_offset, get_global_id(1), 10), 3)) >= (l_290 < (safe_mul_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(((p_11 && (((((65531UL & l_449[6][4][0]) < (p_827->g_269.f0 >= ((*p_827->g_185) = l_180))) , (safe_rshift_func_uint16_t_u_s((safe_sub_func_int8_t_s_s((((*l_491) = (0x72D957EAD8BA1437L ^ (l_489 ^= ((*l_157) ^= ((safe_add_func_uint64_t_u_u((safe_add_func_int32_t_s_s(((safe_div_func_int8_t_s_s(l_449[2][2][0], ((*l_457) |= (((safe_sub_func_int64_t_s_s((((((((!(safe_div_func_int64_t_s_s((safe_div_func_int16_t_s_s((p_11 && p_827->g_72), l_423)), p_827->g_267))) < p_11) < 0x530D260DL) < p_827->g_12[(p_11 + 4)][(p_827->g_119 + 1)][l_337]) & GROUP_DIVERGE(2, 1)) < (**p_827->g_292)) & FAKE_DIVERGE(p_827->group_0_offset, get_group_id(0), 10)), 0x5B011652A006CE61L)) && p_827->g_268.f0) || l_488)))) & 0xE02123E1L), p_11)), l_423)) > 0x30L))))) == 6L), 1UL)), l_423))) , (-8L)) < p_11)) && 1L), 0x3A4AL)), p_11)))) < 0x46L);
                }
                return l_423;
            }
        }
    }
    return l_160[1][2][4];
}


/* ------------------------------------------ */
/* 
 * reads : p_827->g_119 p_827->g_12 p_827->g_13
 * writes: p_827->g_119 p_827->g_13 p_827->g_166
 */
int32_t * func_15(uint32_t  p_16, uint64_t  p_17, int16_t  p_18, uint32_t  p_19, int32_t * p_20, struct S1 * p_827)
{ /* block id: 66 */
    int32_t *l_167 = &p_827->g_33;
    int32_t *l_168 = &p_827->g_119;
    int32_t *l_169[9] = {(void*)0,&p_827->g_14,(void*)0,(void*)0,&p_827->g_14,(void*)0,(void*)0,&p_827->g_14,(void*)0};
    uint32_t l_173 = 5UL;
    int32_t *l_176 = (void*)0;
    int i;
    for (p_827->g_119 = 0; (p_827->g_119 != (-26)); --p_827->g_119)
    { /* block id: 69 */
        int32_t *l_164 = (void*)0;
        int32_t *l_165[3][4][4] = {{{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14},{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14},{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14},{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14}},{{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14},{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14},{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14},{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14}},{{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14},{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14},{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14},{&p_827->g_6,&p_827->g_14,&p_827->g_119,&p_827->g_14}}};
        int i, j, k;
        p_827->g_13 &= p_827->g_12[1][1][4];
        return p_20;
    }
    p_827->g_166 = &p_827->g_13;
    l_173++;
    return l_176;
}


/* ------------------------------------------ */
/* 
 * reads : p_827->g_33 p_827->g_34 p_827->g_6 p_827->g_59 p_827->g_73 p_827->g_74.f2 p_827->g_83 p_827->g_13 p_827->g_74.f3 p_827->g_72 p_827->g_74.f4 p_827->g_110 p_827->g_12 p_827->g_113 p_827->g_119 p_827->g_126 p_827->g_130
 * writes: p_827->g_33 p_827->g_34 p_827->g_68 p_827->g_72 p_827->g_83 p_827->g_74.f3 p_827->g_74.f4 p_827->g_109 p_827->g_117 p_827->g_119 p_827->g_126 p_827->g_73 p_827->g_12
 */
uint16_t  func_28(int32_t  p_29, struct S1 * p_827)
{ /* block id: 14 */
    int8_t *l_58 = &p_827->g_59;
    uint8_t *l_62[1][4];
    int32_t l_63 = 0x259A115EL;
    int32_t *l_66 = &p_827->g_33;
    int64_t *l_67 = &p_827->g_68[5];
    int32_t l_69 = 0x10B0F3EFL;
    uint16_t *l_70 = (void*)0;
    uint16_t *l_71 = &p_827->g_72;
    uint16_t *l_111 = &p_827->g_74.f3;
    struct S0 ***l_131 = &p_827->g_109;
    struct S0 *l_132 = &p_827->g_74;
    struct S0 ***l_142 = &p_827->g_109;
    struct S0 ****l_141 = &l_142;
    int8_t **l_145 = &l_58;
    int8_t *l_147 = &p_827->g_59;
    int8_t **l_146 = &l_147;
    int32_t *l_150 = &p_827->g_119;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
            l_62[i][j] = &p_827->g_12[6][4][2];
    }
    for (p_29 = 0; (p_29 < 21); p_29 = safe_add_func_uint64_t_u_u(p_29, 1))
    { /* block id: 17 */
        int32_t *l_32 = &p_827->g_33;
        volatile struct S0 *l_35 = &p_827->g_34[6];
        (*l_32) ^= 0x2CEBB36EL;
        (*l_35) = p_827->g_34[6];
    }
    (*p_827->g_130) = func_36((safe_rshift_func_int8_t_s_u(func_44(p_827->g_6, (((*l_111) = ((*l_71) = func_50(func_53(((((*l_71) = ((!(safe_add_func_int32_t_s_s(((l_58 == (((((((FAKE_DIVERGE(p_827->local_2_offset, get_local_id(2), 10) ^ (+((safe_sub_func_int8_t_s_s(p_827->g_34[6].f0, (l_63 |= p_29))) , p_827->g_59))) , (safe_lshift_func_int8_t_s_s(((l_66 = &l_63) != ((((*l_67) = (((void*)0 != &l_63) , (p_827->g_59 , p_827->g_6))) , p_29) , &l_63)), 5))) , (*l_66)) == 0x7CL) <= p_29) , 0x3775BA80L) , l_62[0][0])) && (-4L)), l_69))) != l_69)) > p_29) <= 1L), l_62[0][1], p_827), p_827->g_74.f2, p_827))) , p_29), p_827->g_73, p_827->g_12[8][3][3], l_69, p_827), 3)), p_29, p_29, &p_827->g_6, p_827->g_6, p_827);
    (*l_66) = (((-7L) || (p_827->g_12[8][2][3] = (l_131 != ((((void*)0 != l_132) & (GROUP_DIVERGE(0, 1) >= 0x0589FB3FL)) , ((*l_141) = ((((safe_rshift_func_uint16_t_u_s(p_827->g_13, ((~(((void*)0 == &p_827->g_59) != ((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_u((*l_66), 2)) == 9L), p_827->g_12[5][3][4])))) , (*l_66)))) != (*l_66)))) , p_827->g_59) & p_29) , &p_827->g_109)))))) , p_827->g_113.f3);
    (*l_150) &= (safe_mod_func_uint16_t_u_u(((((*l_145) = &p_827->g_59) != ((*l_146) = l_62[0][1])) , ((*l_111)++)), (*l_66)));
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_827->g_113 p_827->g_119 p_827->g_126
 * writes: p_827->g_33 p_827->g_117 p_827->g_119 p_827->g_126
 */
struct S0 * func_36(uint32_t  p_37, uint8_t  p_38, int16_t  p_39, int32_t * p_40, uint64_t  p_41, struct S1 * p_827)
{ /* block id: 48 */
    int64_t *l_112 = (void*)0;
    int32_t l_114 = 0x6E965D02L;
    int32_t *l_115 = &l_114;
    int32_t *l_116 = &p_827->g_33;
    int32_t *l_118 = &p_827->g_119;
    int32_t *l_120 = &p_827->g_33;
    int32_t *l_121 = &p_827->g_33;
    int32_t *l_122 = (void*)0;
    int32_t *l_123 = (void*)0;
    int32_t *l_124 = &p_827->g_33;
    int32_t *l_125[9] = {&l_114,&l_114,&l_114,&l_114,&l_114,&l_114,&l_114,&l_114,&l_114};
    struct S0 *l_129 = (void*)0;
    int i;
    (*l_118) ^= (p_827->g_117 = ((*l_116) = ((*l_115) = ((l_112 == l_112) ^ (p_827->g_113 , l_114)))));
    p_827->g_126--;
    return l_129;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_44(uint64_t  p_45, int32_t  p_46, struct S0 * p_47, int32_t  p_48, int8_t  p_49, struct S1 * p_827)
{ /* block id: 46 */
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_827->g_83 p_827->g_13 p_827->g_33 p_827->g_34.f0 p_827->g_74.f3 p_827->g_72 p_827->g_74.f4 p_827->g_110
 * writes: p_827->g_83 p_827->g_33 p_827->g_74.f3 p_827->g_74.f4 p_827->g_109
 */
uint16_t  func_50(struct S0 * p_51, uint32_t  p_52, struct S1 * p_827)
{ /* block id: 27 */
    int64_t l_76[7];
    int32_t l_78 = 1L;
    int32_t l_79 = 1L;
    int32_t l_80 = (-4L);
    int32_t l_81 = 0x7A99DB6AL;
    int32_t l_82[10][8][3] = {{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}},{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}},{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}},{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}},{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}},{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}},{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}},{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}},{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}},{{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)},{0L,1L,(-8L)}}};
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_76[i] = (-3L);
    if (p_52)
    { /* block id: 28 */
        int32_t *l_75[8];
        int8_t l_77 = (-1L);
        int i;
        for (i = 0; i < 8; i++)
            l_75[i] = &p_827->g_33;
        p_827->g_83++;
        return p_827->g_13;
    }
    else
    { /* block id: 31 */
        int16_t l_106 = (-8L);
        for (p_827->g_33 = 0; (p_827->g_33 <= 15); p_827->g_33 = safe_add_func_int64_t_s_s(p_827->g_33, 5))
        { /* block id: 34 */
            uint16_t *l_100 = &p_827->g_74.f3;
            int64_t *l_103 = &l_76[6];
            int32_t *l_107 = &l_78;
            (*l_107) |= (p_827->g_34[6].f0 || (l_82[8][4][0] == ((safe_rshift_func_uint8_t_u_s(((~(!(safe_div_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((((p_52 > (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(((l_106 = ((safe_div_func_uint64_t_u_u(((++(*l_100)) , 3UL), ((*l_103) = p_827->g_72))) ^ (safe_add_func_uint64_t_u_u(p_52, p_52)))) >= (l_103 != (void*)0)), 7)), 0x4FL))) >= 0x28F77E60D2C52FFFL) , p_52), 2)), 8UL)))) , FAKE_DIVERGE(p_827->group_0_offset, get_group_id(0), 10)), 3)) > 0L)));
            p_827->g_74.f4 ^= 0L;
        }
        (*p_827->g_110) = &p_51;
    }
    return l_82[8][4][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_827->g_73
 * writes:
 */
struct S0 * func_53(uint32_t  p_54, int8_t * p_55, struct S1 * p_827)
{ /* block id: 25 */
    return p_827->g_73;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[81];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 81; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[81];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 81; i++)
            l_special_values[i] = 0;
    struct S1 c_828;
    struct S1* p_827 = &c_828;
    struct S1 c_829 = {
        (-10L), // p_827->g_6
        {{{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL}},{{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL}},{{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL}},{{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL}},{{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL}},{{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL}},{{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL}},{{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL}},{{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL},{1UL,0xC9L,247UL,5UL,9UL}}}, // p_827->g_12
        (-1L), // p_827->g_13
        (-4L), // p_827->g_14
        0x6AL, // p_827->g_26
        1L, // p_827->g_33
        {{0xC0D6L,5L,0L,0x47FCL,0L},{65533UL,-4L,0x0E9EE194L,0x684AL,-1L},{0xC0D6L,5L,0L,0x47FCL,0L},{0xC0D6L,5L,0L,0x47FCL,0L},{65533UL,-4L,0x0E9EE194L,0x684AL,-1L},{0xC0D6L,5L,0L,0x47FCL,0L},{0xC0D6L,5L,0L,0x47FCL,0L}}, // p_827->g_34
        (-8L), // p_827->g_59
        {0x7630B13CFF85525CL,(-7L),0x7630B13CFF85525CL,0x7630B13CFF85525CL,(-7L),0x7630B13CFF85525CL,0x7630B13CFF85525CL,(-7L),0x7630B13CFF85525CL}, // p_827->g_68
        0UL, // p_827->g_72
        {65535UL,3L,-1L,0xC2A5L,-8L}, // p_827->g_74
        &p_827->g_74, // p_827->g_73
        0xADL, // p_827->g_83
        &p_827->g_73, // p_827->g_109
        {&p_827->g_109,&p_827->g_109,&p_827->g_109,&p_827->g_109,&p_827->g_109,&p_827->g_109,&p_827->g_109,&p_827->g_109,&p_827->g_109}, // p_827->g_108
        &p_827->g_109, // p_827->g_110
        {0xC4B1L,0x19C1L,0L,0x950DL,0x5A684D05L}, // p_827->g_113
        1UL, // p_827->g_117
        2L, // p_827->g_119
        255UL, // p_827->g_126
        &p_827->g_73, // p_827->g_130
        0x3DFBL, // p_827->g_156
        0x3BCEAA71E2FDBF42L, // p_827->g_158
        (void*)0, // p_827->g_166
        (-9L), // p_827->g_170
        6L, // p_827->g_171
        0x73L, // p_827->g_172
        65535UL, // p_827->g_181
        &p_827->g_33, // p_827->g_185
        &p_827->g_185, // p_827->g_184
        {0x741FL,0x52DDL,-1L,0xF6BAL,0x2BE1D481L}, // p_827->g_186
        {65535UL,0x7898L,0x49F28B8FL,1UL,0x1DFFD33DL}, // p_827->g_187
        {{&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156},{&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156},{&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156},{&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156},{&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156},{&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156},{&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156,&p_827->g_156}}, // p_827->g_258
        (-4L), // p_827->g_267
        {0UL,0L,0x19AEA982L,0x5EE2L,0x049D0830L}, // p_827->g_268
        {1UL,0x0E67L,-3L,65535UL,0x01E3DFD9L}, // p_827->g_269
        0x4317772AL, // p_827->g_289
        &p_827->g_185, // p_827->g_292
        {65535UL,0x2D5AL,-1L,0x8C64L,4L}, // p_827->g_322
        (void*)0, // p_827->g_323
        0x86EED4D9L, // p_827->g_332
        {&p_827->g_12[5][0][1],&p_827->g_12[5][0][1],&p_827->g_12[5][0][1],&p_827->g_12[5][0][1]}, // p_827->g_363
        &p_827->g_363[1], // p_827->g_362
        &p_827->g_362, // p_827->g_361
        (void*)0, // p_827->g_418
        0xD9AFL, // p_827->g_420
        {{2UL,8L,0x2642B543L,65530UL,1L},{2UL,8L,0x2642B543L,65530UL,1L},{2UL,8L,0x2642B543L,65530UL,1L},{2UL,8L,0x2642B543L,65530UL,1L},{2UL,8L,0x2642B543L,65530UL,1L}}, // p_827->g_428
        {0x66B6L,0x1E01L,-1L,0x3CD3L,8L}, // p_827->g_429
        &p_827->g_185, // p_827->g_461
        &p_827->g_322, // p_827->g_464
        &p_827->g_464, // p_827->g_463
        (void*)0, // p_827->g_492
        {&p_827->g_33,(void*)0,&p_827->g_33,&p_827->g_33,(void*)0,&p_827->g_33,&p_827->g_33,(void*)0}, // p_827->g_493
        {0xCFEDL,0x3C9BL,0x5A3E7CD0L,0xCF26L,0x4D515E7FL}, // p_827->g_497
        (void*)0, // p_827->g_500
        &p_827->g_158, // p_827->g_501
        0x03310E410B4E7FC8L, // p_827->g_513
        &p_827->g_185, // p_827->g_550
        4294967295UL, // p_827->g_556
        {{&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26},{&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26},{&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26},{&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26,&p_827->g_26}}, // p_827->g_619
        &p_827->g_619[0][2], // p_827->g_618
        {&p_827->g_464,&p_827->g_464,&p_827->g_464,&p_827->g_464,&p_827->g_464,&p_827->g_464,&p_827->g_464,&p_827->g_464,&p_827->g_464}, // p_827->g_625
        &p_827->g_625[7], // p_827->g_624
        &p_827->g_625[7], // p_827->g_626
        (void*)0, // p_827->g_627
        {{{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627}},{{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627}},{{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627}},{{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627}},{{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627}},{{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627}},{{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627}},{{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627}},{{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627},{&p_827->g_627,&p_827->g_627}}}, // p_827->g_623
        &p_827->g_501, // p_827->g_697
        1UL, // p_827->g_703
        (void*)0, // p_827->g_762
        4294967295UL, // p_827->g_786
        {1UL,0L,0x4B896B1CL,0xA7B1L,1L}, // p_827->g_787
        sequence_input[get_global_id(0)], // p_827->global_0_offset
        sequence_input[get_global_id(1)], // p_827->global_1_offset
        sequence_input[get_global_id(2)], // p_827->global_2_offset
        sequence_input[get_local_id(0)], // p_827->local_0_offset
        sequence_input[get_local_id(1)], // p_827->local_1_offset
        sequence_input[get_local_id(2)], // p_827->local_2_offset
        sequence_input[get_group_id(0)], // p_827->group_0_offset
        sequence_input[get_group_id(1)], // p_827->group_1_offset
        sequence_input[get_group_id(2)], // p_827->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_828 = c_829;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_827);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_827->g_6, "p_827->g_6", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_827->g_12[i][j][k], "p_827->g_12[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_827->g_13, "p_827->g_13", print_hash_value);
    transparent_crc(p_827->g_14, "p_827->g_14", print_hash_value);
    transparent_crc(p_827->g_26, "p_827->g_26", print_hash_value);
    transparent_crc(p_827->g_33, "p_827->g_33", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_827->g_34[i].f0, "p_827->g_34[i].f0", print_hash_value);
        transparent_crc(p_827->g_34[i].f1, "p_827->g_34[i].f1", print_hash_value);
        transparent_crc(p_827->g_34[i].f2, "p_827->g_34[i].f2", print_hash_value);
        transparent_crc(p_827->g_34[i].f3, "p_827->g_34[i].f3", print_hash_value);
        transparent_crc(p_827->g_34[i].f4, "p_827->g_34[i].f4", print_hash_value);

    }
    transparent_crc(p_827->g_59, "p_827->g_59", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_827->g_68[i], "p_827->g_68[i]", print_hash_value);

    }
    transparent_crc(p_827->g_72, "p_827->g_72", print_hash_value);
    transparent_crc(p_827->g_74.f0, "p_827->g_74.f0", print_hash_value);
    transparent_crc(p_827->g_74.f1, "p_827->g_74.f1", print_hash_value);
    transparent_crc(p_827->g_74.f2, "p_827->g_74.f2", print_hash_value);
    transparent_crc(p_827->g_74.f3, "p_827->g_74.f3", print_hash_value);
    transparent_crc(p_827->g_74.f4, "p_827->g_74.f4", print_hash_value);
    transparent_crc(p_827->g_83, "p_827->g_83", print_hash_value);
    transparent_crc(p_827->g_113.f0, "p_827->g_113.f0", print_hash_value);
    transparent_crc(p_827->g_113.f1, "p_827->g_113.f1", print_hash_value);
    transparent_crc(p_827->g_113.f2, "p_827->g_113.f2", print_hash_value);
    transparent_crc(p_827->g_113.f3, "p_827->g_113.f3", print_hash_value);
    transparent_crc(p_827->g_113.f4, "p_827->g_113.f4", print_hash_value);
    transparent_crc(p_827->g_117, "p_827->g_117", print_hash_value);
    transparent_crc(p_827->g_119, "p_827->g_119", print_hash_value);
    transparent_crc(p_827->g_126, "p_827->g_126", print_hash_value);
    transparent_crc(p_827->g_156, "p_827->g_156", print_hash_value);
    transparent_crc(p_827->g_158, "p_827->g_158", print_hash_value);
    transparent_crc(p_827->g_170, "p_827->g_170", print_hash_value);
    transparent_crc(p_827->g_171, "p_827->g_171", print_hash_value);
    transparent_crc(p_827->g_172, "p_827->g_172", print_hash_value);
    transparent_crc(p_827->g_181, "p_827->g_181", print_hash_value);
    transparent_crc(p_827->g_186.f0, "p_827->g_186.f0", print_hash_value);
    transparent_crc(p_827->g_186.f1, "p_827->g_186.f1", print_hash_value);
    transparent_crc(p_827->g_186.f2, "p_827->g_186.f2", print_hash_value);
    transparent_crc(p_827->g_186.f3, "p_827->g_186.f3", print_hash_value);
    transparent_crc(p_827->g_186.f4, "p_827->g_186.f4", print_hash_value);
    transparent_crc(p_827->g_187.f0, "p_827->g_187.f0", print_hash_value);
    transparent_crc(p_827->g_187.f1, "p_827->g_187.f1", print_hash_value);
    transparent_crc(p_827->g_187.f2, "p_827->g_187.f2", print_hash_value);
    transparent_crc(p_827->g_187.f3, "p_827->g_187.f3", print_hash_value);
    transparent_crc(p_827->g_187.f4, "p_827->g_187.f4", print_hash_value);
    transparent_crc(p_827->g_267, "p_827->g_267", print_hash_value);
    transparent_crc(p_827->g_268.f0, "p_827->g_268.f0", print_hash_value);
    transparent_crc(p_827->g_268.f1, "p_827->g_268.f1", print_hash_value);
    transparent_crc(p_827->g_268.f2, "p_827->g_268.f2", print_hash_value);
    transparent_crc(p_827->g_268.f3, "p_827->g_268.f3", print_hash_value);
    transparent_crc(p_827->g_268.f4, "p_827->g_268.f4", print_hash_value);
    transparent_crc(p_827->g_269.f0, "p_827->g_269.f0", print_hash_value);
    transparent_crc(p_827->g_269.f1, "p_827->g_269.f1", print_hash_value);
    transparent_crc(p_827->g_269.f2, "p_827->g_269.f2", print_hash_value);
    transparent_crc(p_827->g_269.f3, "p_827->g_269.f3", print_hash_value);
    transparent_crc(p_827->g_269.f4, "p_827->g_269.f4", print_hash_value);
    transparent_crc(p_827->g_289, "p_827->g_289", print_hash_value);
    transparent_crc(p_827->g_322.f0, "p_827->g_322.f0", print_hash_value);
    transparent_crc(p_827->g_322.f1, "p_827->g_322.f1", print_hash_value);
    transparent_crc(p_827->g_322.f2, "p_827->g_322.f2", print_hash_value);
    transparent_crc(p_827->g_322.f3, "p_827->g_322.f3", print_hash_value);
    transparent_crc(p_827->g_322.f4, "p_827->g_322.f4", print_hash_value);
    transparent_crc(p_827->g_332, "p_827->g_332", print_hash_value);
    transparent_crc(p_827->g_420, "p_827->g_420", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_827->g_428[i].f0, "p_827->g_428[i].f0", print_hash_value);
        transparent_crc(p_827->g_428[i].f1, "p_827->g_428[i].f1", print_hash_value);
        transparent_crc(p_827->g_428[i].f2, "p_827->g_428[i].f2", print_hash_value);
        transparent_crc(p_827->g_428[i].f3, "p_827->g_428[i].f3", print_hash_value);
        transparent_crc(p_827->g_428[i].f4, "p_827->g_428[i].f4", print_hash_value);

    }
    transparent_crc(p_827->g_429.f0, "p_827->g_429.f0", print_hash_value);
    transparent_crc(p_827->g_429.f1, "p_827->g_429.f1", print_hash_value);
    transparent_crc(p_827->g_429.f2, "p_827->g_429.f2", print_hash_value);
    transparent_crc(p_827->g_429.f3, "p_827->g_429.f3", print_hash_value);
    transparent_crc(p_827->g_429.f4, "p_827->g_429.f4", print_hash_value);
    transparent_crc(p_827->g_497.f0, "p_827->g_497.f0", print_hash_value);
    transparent_crc(p_827->g_497.f1, "p_827->g_497.f1", print_hash_value);
    transparent_crc(p_827->g_497.f2, "p_827->g_497.f2", print_hash_value);
    transparent_crc(p_827->g_497.f3, "p_827->g_497.f3", print_hash_value);
    transparent_crc(p_827->g_497.f4, "p_827->g_497.f4", print_hash_value);
    transparent_crc(p_827->g_513, "p_827->g_513", print_hash_value);
    transparent_crc(p_827->g_556, "p_827->g_556", print_hash_value);
    transparent_crc(p_827->g_703, "p_827->g_703", print_hash_value);
    transparent_crc(p_827->g_786, "p_827->g_786", print_hash_value);
    transparent_crc(p_827->g_787.f0, "p_827->g_787.f0", print_hash_value);
    transparent_crc(p_827->g_787.f1, "p_827->g_787.f1", print_hash_value);
    transparent_crc(p_827->g_787.f2, "p_827->g_787.f2", print_hash_value);
    transparent_crc(p_827->g_787.f3, "p_827->g_787.f3", print_hash_value);
    transparent_crc(p_827->g_787.f4, "p_827->g_787.f4", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 81; i++)
            transparent_crc(p_827->g_special_values[i + 81 * get_linear_group_id()], "p_827->g_special_values[i + 81 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 81; i++)
            transparent_crc(p_827->l_special_values[i], "p_827->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
