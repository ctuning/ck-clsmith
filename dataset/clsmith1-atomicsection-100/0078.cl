// --atomics 28 ---fake_divergence -g 94,40,2 -l 1,20,2
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


// Seed: 78

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int64_t  f1;
   volatile int32_t  f2;
   int32_t  f3;
   uint32_t  f4;
   volatile int32_t  f5;
   int32_t  f6;
   uint32_t  f7;
   volatile int64_t  f8;
   int32_t  f9;
};

union U1 {
   struct S0  f0;
   uint32_t  f1;
   int64_t  f2;
};

struct S2 {
    int32_t g_4;
    int32_t g_6;
    int32_t * volatile g_5;
    uint64_t g_21;
    volatile uint8_t g_85[3];
    volatile union U1 g_106;
    int32_t g_116;
    int32_t *g_138;
    int8_t g_148;
    uint32_t g_150;
    volatile struct S0 g_156;
    volatile struct S0 g_161;
    int64_t g_170;
    int64_t g_172[4][1];
    uint32_t g_174[5][7];
    int32_t ** volatile g_175;
    struct S0 g_212;
    struct S0 * volatile g_213;
    volatile union U1 g_215;
    uint16_t g_220;
    int32_t * volatile g_240;
    int8_t g_256;
    volatile int16_t g_258;
    int16_t g_267;
    struct S0 g_268;
    volatile int32_t g_278;
    uint32_t g_280;
    int32_t * volatile g_286[7];
    int64_t * volatile * volatile g_288;
    int32_t **g_299;
    int32_t ***g_298[1];
    volatile struct S0 g_334;
    int32_t **g_346;
    struct S0 g_348[5][5][8];
    struct S0 * volatile g_350;
    int32_t * volatile g_352[3][3][6];
    struct S0 g_354;
    volatile struct S0 g_385;
    struct S0 g_397;
    uint64_t g_399;
    int32_t * volatile g_402;
    uint32_t *g_420[9][5][5];
    uint32_t ** volatile g_419;
    struct S0 * volatile g_440;
    uint8_t g_475[1][10];
    volatile uint32_t g_482;
    volatile uint32_t * volatile g_481;
    volatile uint32_t * volatile *g_480;
    volatile uint32_t * volatile **g_479;
    int16_t g_518;
    volatile struct S0 g_595;
    int32_t g_598[7][5];
    uint32_t g_625;
    volatile struct S0 g_634;
    int64_t *g_642;
    volatile union U1 g_663;
    int32_t ***g_686;
    int32_t ****g_685;
    volatile union U1 g_740[7][1][6];
    uint32_t g_749;
    int64_t * volatile *g_796[4][4];
    int64_t * volatile **g_795;
    volatile struct S0 g_830;
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
uint64_t  func_1(struct S2 * p_856);
int32_t * func_7(int32_t  p_8, int32_t * p_9, int64_t  p_10, struct S2 * p_856);
int32_t * func_11(int32_t * p_12, int32_t * p_13, uint64_t  p_14, int32_t * p_15, uint32_t  p_16, struct S2 * p_856);
int32_t * func_17(int32_t * p_18, struct S2 * p_856);
int32_t  func_57(uint64_t  p_58, int64_t  p_59, int32_t * p_60, int32_t * p_61, struct S2 * p_856);
struct S0  func_62(uint64_t  p_63, uint32_t  p_64, int32_t * p_65, uint64_t  p_66, int32_t * p_67, struct S2 * p_856);
uint64_t  func_68(uint32_t  p_69, int32_t * p_70, struct S2 * p_856);
int32_t * func_71(uint32_t  p_72, uint16_t  p_73, struct S2 * p_856);
int64_t  func_74(int32_t  p_75, int32_t * p_76, int32_t * p_77, int32_t * p_78, struct S2 * p_856);
int32_t * func_87(uint16_t  p_88, int32_t * p_89, int64_t  p_90, int32_t * p_91, int32_t * p_92, struct S2 * p_856);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_856->g_5 p_856->g_6 p_856->g_4 p_856->g_21 p_856->g_85 p_856->g_106 p_856->g_106.f0.f6 p_856->g_106.f0.f7 p_856->g_106.f0.f0 p_856->g_150 p_856->g_156 p_856->g_161 p_856->g_138 p_856->g_116 p_856->g_170 p_856->g_174 p_856->g_175 p_856->g_212 p_856->g_213 p_856->g_172 p_856->g_215 p_856->g_220 p_856->g_240 p_856->g_267 p_856->g_280 p_856->g_288 p_856->g_298 p_856->g_268.f7 p_856->g_334 p_856->g_346 p_856->g_348 p_856->g_354 p_856->g_106.f0.f8 p_856->g_385 p_856->g_268.f3 p_856->g_148 p_856->g_397 p_856->g_268.f1 p_856->g_268.f6 p_856->g_268.f0 p_856->g_402 p_856->g_419 p_856->g_440 p_856->g_475 p_856->g_479 p_856->g_685 p_856->g_686 p_856->g_795 p_856->g_796 p_856->g_642 p_856->g_215.f0.f1 p_856->g_830 p_856->g_399
 * writes: p_856->g_4 p_856->g_6 p_856->g_21 p_856->g_116 p_856->g_138 p_856->g_148 p_856->g_170 p_856->g_172 p_856->g_174 p_856->g_212 p_856->g_150 p_856->g_220 p_856->g_267 p_856->g_268 p_856->g_280 p_856->g_288 p_856->g_298 p_856->g_299 p_856->g_278 p_856->g_354 p_856->g_348.f9 p_856->g_399 p_856->g_397.f9 p_856->g_348 p_856->g_475 p_856->g_397.f3 p_856->g_397.f1 p_856->g_397.f6 p_856->g_397.f7
 */
uint64_t  func_1(struct S2 * p_856)
{ /* block id: 4 */
    int64_t l_2 = 0x04CCB63E8E1B8814L;
    int32_t *l_3 = &p_856->g_4;
    int64_t **l_798[6][10] = {{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,(void*)0,(void*)0,&p_856->g_642,(void*)0,(void*)0},{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,(void*)0,(void*)0,&p_856->g_642,(void*)0,(void*)0},{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,(void*)0,(void*)0,&p_856->g_642,(void*)0,(void*)0},{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,(void*)0,(void*)0,&p_856->g_642,(void*)0,(void*)0},{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,(void*)0,(void*)0,&p_856->g_642,(void*)0,(void*)0},{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642,(void*)0,(void*)0,&p_856->g_642,(void*)0,(void*)0}};
    int64_t ***l_797 = &l_798[0][2];
    int32_t l_828 = 0x39F2EA84L;
    uint8_t l_831[1];
    int i, j;
    for (i = 0; i < 1; i++)
        l_831[i] = 0x5BL;
    (*p_856->g_5) &= ((*l_3) = l_2);
    (***p_856->g_685) = func_7((*l_3), func_11(l_3, ((*l_3) , func_17(&p_856->g_6, p_856)), (*l_3), l_3, p_856->g_4, p_856), (*l_3), p_856);
    for (p_856->g_397.f3 = 0; (p_856->g_397.f3 >= 0); p_856->g_397.f3 -= 1)
    { /* block id: 426 */
        uint32_t **l_774 = &p_856->g_420[5][1][3];
        uint32_t ***l_773 = &l_774;
        int32_t l_779 = 0x14D7EAC0L;
        int64_t *l_839 = &p_856->g_172[2][0];
        for (p_856->g_397.f1 = 0; (p_856->g_397.f1 <= 2); p_856->g_397.f1 += 1)
        { /* block id: 429 */
            uint32_t l_780 = 4294967295UL;
            int32_t l_805 = 0x282CCD54L;
            int64_t *l_822 = &p_856->g_172[2][0];
            int64_t *l_823 = &p_856->g_170;
            int32_t *l_832 = &p_856->g_268.f9;
            int i, j;
            (*l_3) = (((safe_add_func_uint16_t_u_u((safe_unary_minus_func_uint32_t_u(p_856->g_475[p_856->g_397.f3][(p_856->g_397.f1 + 2)])), (GROUP_DIVERGE(2, 1) < (((safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(((safe_rshift_func_int8_t_s_u((safe_add_func_int16_t_s_s(p_856->g_397.f6, ((void*)0 != l_773))), 7)) ^ (!((((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_856->group_1_offset, get_group_id(1), 10), (((safe_lshift_func_int16_t_s_s((l_779 || l_780), ((p_856->g_475[p_856->g_397.f3][(p_856->g_397.f1 + 2)] ^ (~((safe_div_func_int8_t_s_s(((((safe_add_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s((l_780 , ((safe_unary_minus_func_int16_t_s(p_856->g_348[0][1][7].f9)) && (*l_3))), l_779)), l_779)) <= 0x8F3BL) ^ l_779), 0x31L)) >= 0xF17DL) , 0xC3L) >= p_856->g_334.f0), l_780)) >= 0x2E84236FAC18A822L))) , l_779))) | 1UL) == p_856->g_397.f1))) , (-1L)) != 0xA2E92982C440D7B6L) == (*l_3)))), 2)), p_856->g_475[p_856->g_397.f3][(p_856->g_397.f1 + 2)])) , (*l_3)) == l_780)))) < 0xA06ED3F8L) >= 0L);
            for (p_856->g_116 = 0; (p_856->g_116 >= 0); p_856->g_116 -= 1)
            { /* block id: 433 */
                uint64_t l_790 = 18446744073709551607UL;
                uint32_t **l_809 = &p_856->g_420[5][1][3];
                uint16_t *l_824[4];
                int32_t l_825 = 0L;
                int32_t *l_829 = &p_856->g_116;
                int i;
                for (i = 0; i < 4; i++)
                    l_824[i] = &p_856->g_220;
                for (p_856->g_397.f6 = 2; (p_856->g_397.f6 >= 0); p_856->g_397.f6 -= 1)
                { /* block id: 436 */
                    int64_t ****l_799 = &l_797;
                    uint64_t *l_802 = (void*)0;
                    uint64_t *l_803 = &p_856->g_399;
                    int16_t *l_804[8] = {&p_856->g_518,&p_856->g_518,&p_856->g_518,&p_856->g_518,&p_856->g_518,&p_856->g_518,&p_856->g_518,&p_856->g_518};
                    int32_t l_806 = 0x777DB22BL;
                    int i, j, k;
                    if (l_790)
                        break;
                    l_779 ^= 0x7EC243AFL;
                    if (((0L < (((void*)0 != &l_780) > p_856->g_334.f4)) & (safe_add_func_int16_t_s_s((l_805 ^= (0xCC0865DAL < (((*l_803) = (GROUP_DIVERGE(0, 1) , ((p_856->g_795 == ((*l_799) = l_797)) >= (!(safe_rshift_func_int8_t_s_u(4L, 4)))))) & ((*l_3) == (***p_856->g_795))))), l_806))))
                    { /* block id: 442 */
                        return p_856->g_215.f0.f1;
                    }
                    else
                    { /* block id: 444 */
                        uint16_t *l_810 = (void*)0;
                        uint16_t *l_811 = (void*)0;
                        uint16_t *l_812 = &p_856->g_220;
                        int32_t **l_813 = &l_3;
                        (*l_813) = ((*p_856->g_346) = (**p_856->g_686));
                        return l_790;
                    }
                }
                l_832 = ((*p_856->g_346) = func_7(((*l_3) = (((!3L) || (FAKE_DIVERGE(p_856->global_2_offset, get_global_id(2), 10) , 65529UL)) & (safe_mod_func_int16_t_s_s((p_856->g_830 , l_831[0]), (*l_829))))), l_3, (*l_829), p_856));
            }
            if (l_779)
                break;
            for (p_856->g_354.f3 = 0; (p_856->g_354.f3 <= 0); p_856->g_354.f3 += 1)
            { /* block id: 462 */
                struct S0 *l_834[1];
                struct S0 **l_833 = &l_834[0];
                int16_t *l_848 = &p_856->g_267;
                int32_t l_851 = 1L;
                int32_t l_852 = (-4L);
                int i;
                for (i = 0; i < 1; i++)
                    l_834[i] = &p_856->g_268;
                if ((*l_3))
                    break;
                (**p_856->g_686) = (void*)0;
                (*l_833) = (void*)0;
                l_852 ^= (l_779 ^= (safe_mod_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(p_856->g_475[0][6], (0x1B98795A7870F012L >= ((l_839 == (void*)0) || (***p_856->g_795))))), (safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(0x8EL, (safe_add_func_int8_t_s_s(p_856->g_830.f0, (((*l_848) = (safe_lshift_func_uint8_t_u_s(p_856->g_397.f1, 3))) > (safe_mod_func_uint8_t_u_u(l_851, l_851))))))), (*l_3))))));
            }
        }
        if (l_779)
            continue;
        (**p_856->g_686) = func_17(l_3, p_856);
        for (p_856->g_397.f7 = 0; (p_856->g_397.f7 <= 0); p_856->g_397.f7 += 1)
        { /* block id: 475 */
            (**p_856->g_346) &= (*p_856->g_240);
            for (p_856->g_170 = 0; (p_856->g_170 >= 0); p_856->g_170 -= 1)
            { /* block id: 479 */
                uint64_t *l_853 = (void*)0;
                (****p_856->g_685) ^= (-1L);
                (***p_856->g_685) = func_7(((p_856->g_399++) , (**p_856->g_175)), &l_779, (***p_856->g_795), p_856);
                if ((**p_856->g_175))
                    break;
            }
        }
    }
    return p_856->g_354.f5;
}


/* ------------------------------------------ */
/* 
 * reads : p_856->g_213 p_856->g_212 p_856->g_440 p_856->g_354.f0 p_856->g_475 p_856->g_479 p_856->g_685 p_856->g_686 p_856->g_346 p_856->g_138
 * writes: p_856->g_348 p_856->g_354.f0 p_856->g_475 p_856->g_212.f3
 */
int32_t * func_7(int32_t  p_8, int32_t * p_9, int64_t  p_10, struct S2 * p_856)
{ /* block id: 270 */
    int64_t *l_448 = (void*)0;
    int64_t **l_447 = &l_448;
    int32_t l_451 = 9L;
    int32_t l_477 = 0x62EDEB2AL;
    int64_t l_478 = 0x3F99D743234F3E96L;
    int8_t *l_544 = (void*)0;
    uint16_t l_547 = 4UL;
    int8_t l_548 = (-6L);
    uint8_t l_552 = 255UL;
    int32_t l_621 = (-1L);
    int32_t l_622 = 0x3D59E653L;
    int32_t l_668 = 0x777DE8B7L;
    int32_t **l_679 = &p_856->g_138;
    int32_t ****l_688[3][4] = {{&p_856->g_686,&p_856->g_686,&p_856->g_686,&p_856->g_686},{&p_856->g_686,&p_856->g_686,&p_856->g_686,&p_856->g_686},{&p_856->g_686,&p_856->g_686,&p_856->g_686,&p_856->g_686}};
    int32_t ****l_760 = &p_856->g_298[0];
    int i, j;
    (*p_856->g_440) = (*p_856->g_213);
    for (p_856->g_354.f0 = 21; (p_856->g_354.f0 == 15); p_856->g_354.f0--)
    { /* block id: 274 */
        int64_t *l_446 = &p_856->g_170;
        int64_t **l_445 = &l_446;
        int32_t l_471[3][3][2] = {{{0x5EC234D5L,0x3E15F4B9L},{0x5EC234D5L,0x3E15F4B9L},{0x5EC234D5L,0x3E15F4B9L}},{{0x5EC234D5L,0x3E15F4B9L},{0x5EC234D5L,0x3E15F4B9L},{0x5EC234D5L,0x3E15F4B9L}},{{0x5EC234D5L,0x3E15F4B9L},{0x5EC234D5L,0x3E15F4B9L},{0x5EC234D5L,0x3E15F4B9L}}};
        uint8_t *l_474 = &p_856->g_475[0][9];
        int32_t l_476 = 1L;
        int32_t *l_483 = &p_856->g_212.f3;
        int32_t *l_488 = &p_856->g_4;
        int64_t ***l_489 = &l_447;
        uint64_t l_577 = 0x4ABA78A0C35F48A2L;
        int64_t l_643 = 6L;
        int32_t ***l_694 = &l_679;
        uint32_t l_695 = 3UL;
        uint8_t l_729 = 9UL;
        uint32_t *l_748[9] = {&p_856->g_749,&p_856->g_749,&p_856->g_749,&p_856->g_749,&p_856->g_749,&p_856->g_749,&p_856->g_749,&p_856->g_749,&p_856->g_749};
        int32_t *****l_758 = (void*)0;
        int32_t *****l_759[9][10][2] = {{{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0}},{{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0}},{{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0}},{{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0}},{{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0}},{{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0}},{{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0}},{{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0}},{{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0},{&l_688[2][1],(void*)0}}};
        uint16_t *l_761 = &p_856->g_220;
        int i, j, k;
        (*l_483) &= (safe_div_func_int8_t_s_s(((((((((~((l_447 = l_445) != (void*)0)) == ((safe_lshift_func_int16_t_s_s(l_451, ((+l_451) || ((safe_add_func_uint8_t_u_u(((l_477 = ((safe_lshift_func_int16_t_s_s((safe_div_func_int32_t_s_s(((safe_unary_minus_func_int8_t_s((safe_div_func_uint64_t_u_u((safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(((*l_474) ^= (safe_div_func_uint16_t_u_u((safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s(l_471[2][0][0], GROUP_DIVERGE(2, 1))), (safe_rshift_func_int8_t_s_u(l_451, 2)))), p_10))), p_10)), l_476)), 2UL)))) , l_471[2][0][0]), p_10)), 9)) <= 0L)) ^ l_471[2][1][1]), p_8)) ^ 1UL)))) >= p_8)) && p_856->g_212.f5) && l_478) == 5UL) , (void*)0) == p_856->g_479) & 4294967287UL), l_471[0][0][0]));
    }
    return (***p_856->g_685);
}


/* ------------------------------------------ */
/* 
 * reads : p_856->g_346 p_856->g_138
 * writes: p_856->g_138 p_856->g_6
 */
int32_t * func_11(int32_t * p_12, int32_t * p_13, uint64_t  p_14, int32_t * p_15, uint32_t  p_16, struct S2 * p_856)
{ /* block id: 266 */
    int32_t ***l_438 = &p_856->g_346;
    int32_t l_439 = 0x33150227L;
    (*p_856->g_346) = (void*)0;
    (*p_13) = (safe_mod_func_uint64_t_u_u((safe_mod_func_int32_t_s_s(0x6908EE8FL, p_16)), (p_16 , (safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_856->local_1_offset, get_local_id(1), 10), (safe_mod_func_uint32_t_u_u((&p_856->g_175 == l_438), l_439)))))));
    return (**l_438);
}


/* ------------------------------------------ */
/* 
 * reads : p_856->g_6 p_856->g_21 p_856->g_85 p_856->g_4 p_856->g_106 p_856->g_106.f0.f6 p_856->g_106.f0.f7 p_856->g_106.f0.f0 p_856->g_150 p_856->g_156 p_856->g_161 p_856->g_138 p_856->g_116 p_856->g_170 p_856->g_174 p_856->g_175 p_856->g_212 p_856->g_213 p_856->g_172 p_856->g_215 p_856->g_220 p_856->g_240 p_856->g_267 p_856->g_280 p_856->g_288 p_856->g_298 p_856->g_268.f7 p_856->g_334 p_856->g_346 p_856->g_348 p_856->g_354 p_856->g_106.f0.f8 p_856->g_385 p_856->g_268.f3 p_856->g_148 p_856->g_397 p_856->g_268.f1 p_856->g_268.f6 p_856->g_268.f0 p_856->g_402 p_856->g_419
 * writes: p_856->g_6 p_856->g_21 p_856->g_116 p_856->g_138 p_856->g_148 p_856->g_170 p_856->g_172 p_856->g_174 p_856->g_212 p_856->g_150 p_856->g_220 p_856->g_267 p_856->g_268 p_856->g_280 p_856->g_288 p_856->g_298 p_856->g_299 p_856->g_278 p_856->g_354 p_856->g_348.f9 p_856->g_399 p_856->g_397.f9
 */
int32_t * func_17(int32_t * p_18, struct S2 * p_856)
{ /* block id: 7 */
    int8_t l_19[8] = {1L,(-10L),1L,1L,(-10L),1L,1L,(-10L)};
    int32_t *l_363 = &p_856->g_348[0][1][7].f9;
    int i;
    for (p_856->g_6 = 7; (p_856->g_6 >= 0); p_856->g_6 -= 1)
    { /* block id: 10 */
        int32_t *l_20[2];
        int i;
        for (i = 0; i < 2; i++)
            l_20[i] = (void*)0;
        p_856->g_21 ^= (&p_856->g_6 != l_20[1]);
        for (p_856->g_21 = 0; (p_856->g_21 <= 7); p_856->g_21 += 1)
        { /* block id: 14 */
            uint32_t l_54 = 4294967287UL;
            int32_t l_86 = 6L;
            int32_t *l_362 = &p_856->g_6;
            uint64_t *l_398 = &p_856->g_399;
            int16_t *l_400 = &p_856->g_267;
            int32_t l_429 = 0x134EA43CL;
            int i;
            if ((atomic_inc(&p_856->g_atomic_input[28 * get_linear_group_id() + 15]) == 8))
            { /* block id: 16 */
                int32_t l_22 = 0x7B88CDF8L;
                for (l_22 = 0; (l_22 <= 7); l_22 += 1)
                { /* block id: 19 */
                    int32_t l_23 = 0x11920B24L;
                    uint32_t l_32 = 0xCC885CB6L;
                    for (l_23 = 0; (l_23 <= 1); l_23 += 1)
                    { /* block id: 22 */
                        struct S0 l_24[7] = {{0x2F8DC70EL,0L,1L,-2L,0xDFCE9586L,0x33883FAAL,0L,1UL,0L,3L},{-1L,0x5A6A44F34D89BB64L,0x48F43836L,-1L,0xCCFDEF05L,0x6082ADE8L,0x393B3BBBL,0x531EAA47L,0x6CFB861A7160C637L,-7L},{0x2F8DC70EL,0L,1L,-2L,0xDFCE9586L,0x33883FAAL,0L,1UL,0L,3L},{0x2F8DC70EL,0L,1L,-2L,0xDFCE9586L,0x33883FAAL,0L,1UL,0L,3L},{-1L,0x5A6A44F34D89BB64L,0x48F43836L,-1L,0xCCFDEF05L,0x6082ADE8L,0x393B3BBBL,0x531EAA47L,0x6CFB861A7160C637L,-7L},{0x2F8DC70EL,0L,1L,-2L,0xDFCE9586L,0x33883FAAL,0L,1UL,0L,3L},{0x2F8DC70EL,0L,1L,-2L,0xDFCE9586L,0x33883FAAL,0L,1UL,0L,3L}};
                        struct S0 l_25 = {-9L,0x12DB22C08F497C31L,0x7647CF28L,-2L,2UL,-4L,0x1F317735L,0UL,9L,0x5DA78404L};/* VOLATILE GLOBAL l_25 */
                        uint32_t l_26 = 0x3C3A871DL;
                        struct S0 l_27 = {0x7A4ED9E6L,2L,0x05A9EE2BL,0x0743585FL,4294967295UL,0L,0x7F61739BL,0x5F37D796L,0x1900F1D91A4AC155L,2L};/* VOLATILE GLOBAL l_27 */
                        struct S0 l_28 = {0x66FFBA24L,0x739A3A415DBE4B24L,1L,0x4E821FD1L,4294967293UL,0L,1L,0x15778C4BL,0L,0x37316A37L};/* VOLATILE GLOBAL l_28 */
                        uint32_t l_29[2][8][5] = {{{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL}},{{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL},{0x4EA093EAL,0x4EA093EAL,5UL,0x02B236EDL,1UL}}};
                        int i, j, k;
                        l_25 = l_24[1];
                        l_28 = ((l_26 |= l_19[p_856->g_21]) , l_27);
                        l_29[0][4][1]++;
                    }
                    for (l_23 = 0; l_23 < 8; l_23 += 1)
                    {
                        l_19[l_23] = (-9L);
                    }
                    if ((l_32 = (GROUP_DIVERGE(1, 1) , (-1L))))
                    { /* block id: 30 */
                        int32_t l_33 = 1L;
                        uint32_t l_34 = 6UL;
                        l_23 |= (l_33 ^= 1L);
                        l_34--;
                        l_23 = 4L;
                    }
                    else
                    { /* block id: 35 */
                        int64_t l_37[4][4][9] = {{{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)}},{{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)}},{{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)}},{{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)},{(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L),0x2349D53036CC05FDL,0x2349D53036CC05FDL,(-7L),(-7L)}}};
                        int i, j, k;
                        l_37[3][3][5] = (l_23 = (l_19[l_22] , 0L));
                    }
                }
                for (l_22 = 2; (l_22 <= 7); l_22 += 1)
                { /* block id: 42 */
                    int32_t l_39 = 0x2B755D73L;
                    int32_t *l_38 = &l_39;
                    int32_t *l_40 = &l_39;
                    int32_t *l_41 = &l_39;
                    int16_t l_42 = 6L;
                    uint8_t l_43 = 0x25L;
                    l_41 = (l_40 = l_38);
                    l_43--;
                    for (l_39 = 0; (l_39 <= 7); l_39 += 1)
                    { /* block id: 48 */
                        struct S0 l_46 = {0x5F5DB90CL,0L,0x3EF0B8C2L,6L,0x205A567AL,0x325B5FE4L,-9L,0x49914032L,0x2DE0B6AD74ACFC83L,0x047C6531L};/* VOLATILE GLOBAL l_46 */
                        union U1 l_47[7][3] = {{{{0x09A04A83L,0x69465D988D0130CBL,0x1ED58CDBL,0x028A08A7L,0xD01A8FC3L,0x797B59C6L,8L,0x33B6E2EDL,0x36A152264B8EAE7AL,0x4857036BL}},{{0x563F1C15L,9L,1L,1L,4294967295UL,0x7BE71502L,6L,0x59534E3AL,0x584858447AD0ED66L,4L}},{{-10L,0x13D8BF8503667010L,-1L,-8L,0xF0A2812AL,0x5494579CL,0x2F16C98AL,0x76184417L,0x0C4AEE0EB6C92F55L,0L}}},{{{0x09A04A83L,0x69465D988D0130CBL,0x1ED58CDBL,0x028A08A7L,0xD01A8FC3L,0x797B59C6L,8L,0x33B6E2EDL,0x36A152264B8EAE7AL,0x4857036BL}},{{0x563F1C15L,9L,1L,1L,4294967295UL,0x7BE71502L,6L,0x59534E3AL,0x584858447AD0ED66L,4L}},{{-10L,0x13D8BF8503667010L,-1L,-8L,0xF0A2812AL,0x5494579CL,0x2F16C98AL,0x76184417L,0x0C4AEE0EB6C92F55L,0L}}},{{{0x09A04A83L,0x69465D988D0130CBL,0x1ED58CDBL,0x028A08A7L,0xD01A8FC3L,0x797B59C6L,8L,0x33B6E2EDL,0x36A152264B8EAE7AL,0x4857036BL}},{{0x563F1C15L,9L,1L,1L,4294967295UL,0x7BE71502L,6L,0x59534E3AL,0x584858447AD0ED66L,4L}},{{-10L,0x13D8BF8503667010L,-1L,-8L,0xF0A2812AL,0x5494579CL,0x2F16C98AL,0x76184417L,0x0C4AEE0EB6C92F55L,0L}}},{{{0x09A04A83L,0x69465D988D0130CBL,0x1ED58CDBL,0x028A08A7L,0xD01A8FC3L,0x797B59C6L,8L,0x33B6E2EDL,0x36A152264B8EAE7AL,0x4857036BL}},{{0x563F1C15L,9L,1L,1L,4294967295UL,0x7BE71502L,6L,0x59534E3AL,0x584858447AD0ED66L,4L}},{{-10L,0x13D8BF8503667010L,-1L,-8L,0xF0A2812AL,0x5494579CL,0x2F16C98AL,0x76184417L,0x0C4AEE0EB6C92F55L,0L}}},{{{0x09A04A83L,0x69465D988D0130CBL,0x1ED58CDBL,0x028A08A7L,0xD01A8FC3L,0x797B59C6L,8L,0x33B6E2EDL,0x36A152264B8EAE7AL,0x4857036BL}},{{0x563F1C15L,9L,1L,1L,4294967295UL,0x7BE71502L,6L,0x59534E3AL,0x584858447AD0ED66L,4L}},{{-10L,0x13D8BF8503667010L,-1L,-8L,0xF0A2812AL,0x5494579CL,0x2F16C98AL,0x76184417L,0x0C4AEE0EB6C92F55L,0L}}},{{{0x09A04A83L,0x69465D988D0130CBL,0x1ED58CDBL,0x028A08A7L,0xD01A8FC3L,0x797B59C6L,8L,0x33B6E2EDL,0x36A152264B8EAE7AL,0x4857036BL}},{{0x563F1C15L,9L,1L,1L,4294967295UL,0x7BE71502L,6L,0x59534E3AL,0x584858447AD0ED66L,4L}},{{-10L,0x13D8BF8503667010L,-1L,-8L,0xF0A2812AL,0x5494579CL,0x2F16C98AL,0x76184417L,0x0C4AEE0EB6C92F55L,0L}}},{{{0x09A04A83L,0x69465D988D0130CBL,0x1ED58CDBL,0x028A08A7L,0xD01A8FC3L,0x797B59C6L,8L,0x33B6E2EDL,0x36A152264B8EAE7AL,0x4857036BL}},{{0x563F1C15L,9L,1L,1L,4294967295UL,0x7BE71502L,6L,0x59534E3AL,0x584858447AD0ED66L,4L}},{{-10L,0x13D8BF8503667010L,-1L,-8L,0xF0A2812AL,0x5494579CL,0x2F16C98AL,0x76184417L,0x0C4AEE0EB6C92F55L,0L}}}};
                        uint64_t l_48 = 18446744073709551612UL;
                        uint16_t l_49 = 0x53D0L;
                        int i, j;
                        l_48 ^= (l_46 , (l_47[2][1] , (-5L)));
                        l_41 = (void*)0;
                        l_49++;
                    }
                    for (l_39 = 0; (l_39 <= 7); l_39 += 1)
                    { /* block id: 55 */
                        int32_t l_52 = 0x48848039L;
                        uint64_t l_53[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_53[i] = 0x1E54E034D0585325L;
                        l_52 &= (l_19[l_22] , 0x7035F287L);
                        l_52 &= (l_19[l_39] , l_53[2]);
                    }
                }
                unsigned int result = 0;
                result += l_22;
                atomic_add(&p_856->g_special_values[28 * get_linear_group_id() + 15], result);
            }
            else
            { /* block id: 60 */
                (1 + 1);
            }
            l_54--;
            l_429 = ((*l_363) = func_57(l_19[p_856->g_21], l_19[p_856->g_21], (p_18 = ((((*l_400) = (((*l_398) = (func_62(func_68(l_19[5], func_71((0x7EL != (((func_74((safe_lshift_func_uint8_t_u_s(((l_19[p_856->g_21] | (safe_mul_func_uint16_t_u_u(l_54, (((((-1L) >= (safe_mul_func_int8_t_s_s(p_856->g_85[0], l_86))) > 0x2FF8L) > p_856->g_4) == p_856->g_21)))) || l_86), 7)), &p_856->g_4, &p_856->g_6, p_18, p_856) <= 0xAE09A5A0DD6895FEL) < l_19[1]) > l_86)), l_54, p_856), p_856), l_19[0], l_362, l_19[3], l_363, p_856) , 0x243F6C005F33A944L)) || (*l_362))) | 0x5D4AL) , p_18)), l_362, p_856));
        }
    }
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_856->g_268.f1 p_856->g_268.f6 p_856->g_85 p_856->g_212.f3 p_856->g_268.f0 p_856->g_174 p_856->g_402 p_856->g_161.f1 p_856->g_6 p_856->g_397.f9 p_856->g_419
 * writes: p_856->g_268.f1 p_856->g_268.f6 p_856->g_212.f3 p_856->g_268.f0 p_856->g_348.f9 p_856->g_397.f9
 */
int32_t  func_57(uint64_t  p_58, int64_t  p_59, int32_t * p_60, int32_t * p_61, struct S2 * p_856)
{ /* block id: 236 */
    uint8_t l_427[3][6] = {{0xBBL,5UL,0xBBL,0xBBL,5UL,0xBBL},{0xBBL,5UL,0xBBL,0xBBL,5UL,0xBBL},{0xBBL,5UL,0xBBL,0xBBL,5UL,0xBBL}};
    int i, j;
    for (p_856->g_268.f1 = 2; (p_856->g_268.f1 >= 0); p_856->g_268.f1 -= 1)
    { /* block id: 239 */
        int32_t l_403 = 0L;
        int16_t *l_417[8] = {&p_856->g_267,&p_856->g_267,&p_856->g_267,&p_856->g_267,&p_856->g_267,&p_856->g_267,&p_856->g_267,&p_856->g_267};
        int16_t **l_416 = &l_417[1];
        int32_t *l_428 = &p_856->g_212.f3;
        int i;
        for (p_856->g_268.f6 = 4; (p_856->g_268.f6 >= 0); p_856->g_268.f6 -= 1)
        { /* block id: 242 */
            uint32_t ** volatile l_422 = &p_856->g_420[7][1][2];/* VOLATILE GLOBAL l_422 */
            int i;
            if (p_856->g_85[p_856->g_268.f1])
                break;
            for (p_856->g_212.f3 = 0; (p_856->g_212.f3 <= 4); p_856->g_212.f3 += 1)
            { /* block id: 246 */
                uint64_t l_401 = 18446744073709551615UL;
                uint32_t ** volatile *l_421[10] = {&p_856->g_419,&p_856->g_419,&p_856->g_419,&p_856->g_419,&p_856->g_419,&p_856->g_419,&p_856->g_419,&p_856->g_419,&p_856->g_419,&p_856->g_419};
                int i;
                for (p_856->g_268.f0 = 0; (p_856->g_268.f0 <= 0); p_856->g_268.f0 += 1)
                { /* block id: 249 */
                    int64_t *l_409 = (void*)0;
                    int64_t **l_408 = &l_409;
                    uint64_t l_414[8];
                    int32_t *l_418 = &p_856->g_397.f9;
                    int i, j;
                    for (i = 0; i < 8; i++)
                        l_414[i] = 8UL;
                    (*p_856->g_402) = (p_856->g_174[p_856->g_212.f3][(p_856->g_268.f1 + 2)] , l_401);
                    (*l_418) &= ((l_403 & p_856->g_85[p_856->g_268.f1]) && (safe_lshift_func_uint8_t_u_u(0UL, (((((0xF0L == ((safe_lshift_func_uint16_t_u_u(((((p_856->g_161.f1 , &p_59) != ((*l_408) = &p_59)) >= (safe_lshift_func_int8_t_s_u((safe_div_func_uint8_t_u_u((l_414[7] & (safe_unary_minus_func_uint32_t_u(p_856->g_6))), l_414[2])), p_59))) , 0xD666L), p_58)) == p_59)) , l_416) != &l_417[0]) < 0xD73ED2B4L) && l_401))));
                    return (*p_61);
                }
                l_422 = p_856->g_419;
            }
        }
        (*l_428) |= (safe_rshift_func_int16_t_s_u(p_856->g_85[p_856->g_268.f1], (safe_rshift_func_uint8_t_u_u(l_427[0][1], p_856->g_268.f1))));
    }
    return l_427[0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_856->g_354.f9 p_856->g_385 p_856->g_172 p_856->g_268.f3 p_856->g_148 p_856->g_212.f9 p_856->g_348.f9 p_856->g_397
 * writes: p_856->g_172 p_856->g_348.f9
 */
struct S0  func_62(uint64_t  p_63, uint32_t  p_64, int32_t * p_65, uint64_t  p_66, int32_t * p_67, struct S2 * p_856)
{ /* block id: 217 */
    int8_t *l_364 = &p_856->g_256;
    int32_t l_365 = 0x3449557AL;
    int16_t l_366[10][3] = {{0x4771L,1L,0x4771L},{0x4771L,1L,0x4771L},{0x4771L,1L,0x4771L},{0x4771L,1L,0x4771L},{0x4771L,1L,0x4771L},{0x4771L,1L,0x4771L},{0x4771L,1L,0x4771L},{0x4771L,1L,0x4771L},{0x4771L,1L,0x4771L},{0x4771L,1L,0x4771L}};
    int16_t *l_368 = &l_366[5][0];
    int16_t **l_367 = &l_368;
    int64_t *l_386 = &p_856->g_172[2][0];
    int64_t *l_387[4] = {&p_856->g_170,&p_856->g_170,&p_856->g_170,&p_856->g_170};
    int32_t l_388 = 0L;
    int32_t l_389 = 0L;
    int i, j;
    (*p_67) &= (l_389 = (((l_365 = (l_364 != &p_856->g_256)) & l_366[5][0]) >= ((((*l_367) = &l_366[5][0]) != &l_366[5][0]) > ((safe_add_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((!(safe_mul_func_uint8_t_u_u((p_856->g_354.f9 , ((safe_sub_func_int16_t_s_s(((l_388 = ((*l_386) = (~(((((l_366[0][0] >= (safe_div_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_u((safe_sub_func_int8_t_s_s((p_856->g_385 , (((p_64 == 18446744073709551614UL) || 3L) == 0L)), l_366[9][0])), p_856->g_172[2][0])), 3)), 0x2042791AL))) == p_64) && l_366[5][0]) , (-1L)) <= p_66)))) & p_856->g_268.f3), l_366[9][1])) , 7UL)), p_63))), p_856->g_148)), p_856->g_212.f9)) && p_66))));
    (*p_67) = (safe_lshift_func_int8_t_s_s(0x09L, 7));
    if ((atomic_inc(&p_856->l_atomic_input[11]) == 0))
    { /* block id: 226 */
        int32_t l_393 = (-1L);
        int32_t *l_392 = &l_393;
        int32_t *l_394 = &l_393;
        int8_t l_395 = 0x64L;
        int16_t l_396 = (-5L);
        l_394 = l_392;
        l_396 ^= l_395;
        unsigned int result = 0;
        result += l_393;
        result += l_395;
        result += l_396;
        atomic_add(&p_856->l_special_values[11], result);
    }
    else
    { /* block id: 229 */
        (1 + 1);
    }
    return p_856->g_397;
}


/* ------------------------------------------ */
/* 
 * reads : p_856->g_348 p_856->g_213 p_856->g_354 p_856->g_106 p_856->g_106.f0.f8 p_856->g_346 p_856->g_156.f9
 * writes: p_856->g_212.f5 p_856->g_278 p_856->g_174 p_856->g_212 p_856->g_354 p_856->g_138
 */
uint64_t  func_68(uint32_t  p_69, int32_t * p_70, struct S2 * p_856)
{ /* block id: 204 */
    int16_t l_347 = 0x77B3L;
    int32_t l_353 = 0x32A21D33L;
    struct S0 *l_355 = &p_856->g_354;
    uint32_t *l_358[9][9][1] = {{{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4}},{{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4}},{{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4}},{{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4}},{{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4}},{{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4}},{{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4}},{{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4}},{{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4},{&p_856->g_348[0][1][7].f4}}};
    int32_t l_359[5] = {(-9L),(-9L),(-9L),(-9L),(-9L)};
    int16_t *l_360[10];
    int8_t l_361 = 0x2BL;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_360[i] = (void*)0;
    for (p_856->g_212.f5 = 0; p_856->g_212.f5 < 5; p_856->g_212.f5 += 1)
    {
        for (p_856->g_278 = 0; p_856->g_278 < 7; p_856->g_278 += 1)
        {
            p_856->g_174[p_856->g_212.f5][p_856->g_278] = 4294967295UL;
        }
    }
    if (l_347)
    { /* block id: 206 */
        struct S0 *l_349 = (void*)0;
        int32_t l_351 = 0x6D994CA1L;
        (*p_856->g_213) = p_856->g_348[0][1][7];
        l_353 = l_351;
    }
    else
    { /* block id: 209 */
        return l_353;
    }
    (*l_355) = p_856->g_354;
    (*p_856->g_346) = ((((l_353 = (l_353 ^ (((safe_lshift_func_int8_t_s_s(((((p_856->g_106 , 1UL) == (l_353 | p_69)) == p_69) && (l_359[0] = l_353)), 0)) & ((void*)0 == p_70)) | 0x925A17CDL))) > l_361) , p_856->g_106.f0.f8) , (void*)0);
    return p_856->g_156.f9;
}


/* ------------------------------------------ */
/* 
 * reads : p_856->g_212.f4 p_856->g_85 p_856->g_298 p_856->g_268.f7 p_856->g_267 p_856->g_174 p_856->g_4 p_856->g_172 p_856->g_175 p_856->g_138 p_856->g_334 p_856->g_212.f1 p_856->g_212.f3 p_856->g_346 p_856->g_240
 * writes: p_856->g_212.f4 p_856->g_298 p_856->g_267 p_856->g_268.f4 p_856->g_268.f3 p_856->g_299 p_856->g_212.f9
 */
int32_t * func_71(uint32_t  p_72, uint16_t  p_73, struct S2 * p_856)
{ /* block id: 176 */
    int32_t ***l_301[9][7][4] = {{{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299}},{{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299}},{{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299}},{{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299}},{{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299}},{{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299}},{{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299}},{{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299}},{{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299},{&p_856->g_299,&p_856->g_299,&p_856->g_299,&p_856->g_299}}};
    int64_t *l_309 = &p_856->g_172[0][0];
    uint32_t l_310 = 6UL;
    int i, j, k;
    for (p_856->g_212.f4 = 0; (p_856->g_212.f4 <= 0); p_856->g_212.f4 += 1)
    { /* block id: 179 */
        int32_t l_290 = 0x232693A1L;
        int16_t l_297 = 0L;
        int32_t ****l_300 = &p_856->g_298[0];
        int16_t *l_308 = &p_856->g_267;
        uint32_t *l_311 = &p_856->g_268.f4;
        int32_t l_312 = (-1L);
        int32_t l_315[10][2] = {{(-9L),0L},{(-9L),0L},{(-9L),0L},{(-9L),0L},{(-9L),0L},{(-9L),0L},{(-9L),0L},{(-9L),0L},{(-9L),0L},{(-9L),0L}};
        int16_t l_317[4];
        uint64_t l_318[5][3][3] = {{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}},{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}},{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}},{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}},{{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L},{0x05A20F86562BBE92L,0UL,0x05A20F86562BBE92L}}};
        uint32_t l_323 = 1UL;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_317[i] = 0x306BL;
        l_290 = (l_312 &= (p_856->g_85[p_856->g_212.f4] && (p_856->g_85[(p_856->g_212.f4 + 2)] ^ (((*l_311) = (l_290 == ((safe_lshift_func_int8_t_s_u((((void*)0 != &p_856->g_267) > ((safe_mul_func_uint8_t_u_u((safe_add_func_int8_t_s_s((((((((FAKE_DIVERGE(p_856->global_0_offset, get_global_id(0), 10) , l_297) , (((*l_300) = p_856->g_298[0]) != l_301[7][5][3])) >= (safe_add_func_uint16_t_u_u((((((safe_mul_func_int16_t_s_s((((((*l_308) = (safe_lshift_func_int8_t_s_s((((0x7471809871574A50L & 0x5F8173595C2A0DEEL) != p_856->g_268.f7) & p_856->g_267), p_72))) , l_309) != l_309) < 0x4C16A207L), p_856->g_174[2][3])) == 0x3EL) == FAKE_DIVERGE(p_856->local_2_offset, get_local_id(2), 10)) == p_73) <= p_72), p_72))) , 18446744073709551615UL) && p_856->g_4) | p_856->g_4) | 7UL), 0x06L)), p_856->g_174[4][5])) > l_290)), 5)) | l_310))) && p_856->g_172[1][0]))));
        for (p_856->g_268.f4 = 0; (p_856->g_268.f4 <= 4); p_856->g_268.f4 += 1)
        { /* block id: 187 */
            int32_t l_313 = (-5L);
            int32_t l_314[2];
            int32_t l_316 = (-7L);
            int i;
            for (i = 0; i < 2; i++)
                l_314[i] = 0L;
            --l_318[1][1][1];
            for (p_856->g_268.f3 = 0; (p_856->g_268.f3 <= 4); p_856->g_268.f3 += 1)
            { /* block id: 191 */
                int32_t *l_321 = &l_314[0];
                l_321 = (*p_856->g_175);
            }
        }
        for (p_856->g_268.f3 = 6; (p_856->g_268.f3 >= 0); p_856->g_268.f3 -= 1)
        { /* block id: 197 */
            int32_t l_322 = 0x5EB0F938L;
            uint16_t *l_343 = &p_856->g_220;
            uint8_t l_344 = 0x55L;
            int32_t **l_345 = &p_856->g_138;
            int i, j;
            --l_323;
            (*p_856->g_240) = ((0UL & ((void*)0 != &p_856->g_172[(p_856->g_212.f4 + 2)][p_856->g_212.f4])) & (safe_div_func_int64_t_s_s(((((**l_300) = ((0L != ((safe_sub_func_int8_t_s_s((~p_856->g_174[4][3]), ((safe_lshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((p_856->g_334 , ((GROUP_DIVERGE(1, 1) <= (((safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((((safe_rshift_func_int16_t_s_u(p_856->g_334.f7, 0)) , l_343) == (void*)0), 0x6DL)) >= p_73), p_856->g_212.f1)), l_344)) , p_856->g_334.f3) , p_72)) & p_856->g_212.f3)), FAKE_DIVERGE(p_856->global_2_offset, get_global_id(2), 10))), 12)) & 1L))) && p_72)) , l_345)) != p_856->g_346) < GROUP_DIVERGE(2, 1)), 0x12C1C057FAE9AD4CL)));
        }
    }
    return (*p_856->g_175);
}


/* ------------------------------------------ */
/* 
 * reads : p_856->g_85 p_856->g_106 p_856->g_21 p_856->g_106.f0.f6 p_856->g_4 p_856->g_6 p_856->g_106.f0.f7 p_856->g_106.f0.f0 p_856->g_150 p_856->g_156 p_856->g_161 p_856->g_138 p_856->g_116 p_856->g_170 p_856->g_174 p_856->g_175 p_856->g_212 p_856->g_213 p_856->g_172 p_856->g_215 p_856->g_220 p_856->g_240 p_856->g_267 p_856->g_280 p_856->g_288
 * writes: p_856->g_116 p_856->g_138 p_856->g_148 p_856->g_170 p_856->g_172 p_856->g_174 p_856->g_212 p_856->g_150 p_856->g_220 p_856->g_267 p_856->g_268 p_856->g_280 p_856->g_288
 */
int64_t  func_74(int32_t  p_75, int32_t * p_76, int32_t * p_77, int32_t * p_78, struct S2 * p_856)
{ /* block id: 64 */
    int32_t *l_94 = &p_856->g_4;
    int32_t **l_93 = &l_94;
    int32_t *l_95 = &p_856->g_4;
    int32_t l_246[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int32_t **l_283 = &l_94;
    int i;
    (*l_93) = func_87(p_856->g_85[1], ((*l_93) = (FAKE_DIVERGE(p_856->global_0_offset, get_global_id(0), 10) , p_78)), p_75, ((l_95 != p_77) , p_77), &p_856->g_4, p_856);
    for (p_856->g_116 = 0; (p_856->g_116 >= 0); p_856->g_116 -= 1)
    { /* block id: 131 */
        struct S0 *l_214 = &p_856->g_212;
        int64_t *l_225 = (void*)0;
        int32_t l_249[9] = {0x5CD98A26L,(-3L),0x5CD98A26L,0x5CD98A26L,(-3L),0x5CD98A26L,0x5CD98A26L,(-3L),0x5CD98A26L};
        int32_t **l_285 = &l_95;
        int i;
        (*p_856->g_213) = p_856->g_212;
        for (p_856->g_212.f3 = 2; (p_856->g_212.f3 >= 0); p_856->g_212.f3 -= 1)
        { /* block id: 135 */
            uint32_t l_237 = 0x504EA7FFL;
            int32_t l_238 = 0x20B80E0AL;
            int32_t l_242 = 0x746E8A0CL;
            int32_t l_243 = (-4L);
            int32_t l_248 = (-1L);
            int8_t l_251 = (-1L);
            int32_t l_252 = 0L;
            int32_t l_253 = 1L;
            int32_t l_255 = 3L;
            int32_t l_257 = (-1L);
            int64_t * volatile * volatile *l_289 = &p_856->g_288;
            for (p_856->g_212.f6 = 0; (p_856->g_212.f6 <= 0); p_856->g_212.f6 += 1)
            { /* block id: 138 */
                uint16_t l_239[5][3][6] = {{{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL}},{{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL}},{{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL}},{{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL}},{{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL},{0xFEC8L,4UL,0x1C82L,4UL,0xFEC8L,0x3D5FL}}};
                int32_t l_247 = 0x32E0A6E4L;
                int32_t l_250[1];
                int8_t l_279 = 0x20L;
                int32_t ***l_284 = &l_283;
                int32_t *l_287 = (void*)0;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_250[i] = 0x76F03E3EL;
                for (p_856->g_150 = 0; (p_856->g_150 <= 0); p_856->g_150 += 1)
                { /* block id: 141 */
                    int32_t l_245 = (-1L);
                    int32_t l_254[7] = {0x6F5EFCACL,0x6F5EFCACL,0x6F5EFCACL,0x6F5EFCACL,0x6F5EFCACL,0x6F5EFCACL,0x6F5EFCACL};
                    int i, j;
                    if (p_856->g_172[(p_856->g_116 + 1)][p_856->g_150])
                    { /* block id: 142 */
                        int i;
                        if (p_856->g_85[(p_856->g_150 + 1)])
                            break;
                        if (p_856->g_85[p_856->g_212.f6])
                            continue;
                    }
                    else
                    { /* block id: 145 */
                        uint16_t *l_218 = (void*)0;
                        uint16_t *l_219 = &p_856->g_220;
                        int32_t **l_234 = &l_94;
                        int32_t *l_241 = &l_238;
                        int32_t *l_244[6] = {&l_242,&l_242,&l_242,&l_242,&l_242,&l_242};
                        uint32_t l_259 = 0x45F9A831L;
                        uint32_t l_262 = 0x1EA357FDL;
                        int16_t *l_265 = (void*)0;
                        int16_t *l_266 = &p_856->g_267;
                        int i;
                        (*p_856->g_240) = ((l_214 != (p_856->g_215 , l_214)) & ((((l_238 &= ((safe_sub_func_uint16_t_u_u((--(*l_219)), GROUP_DIVERGE(1, 1))) != ((GROUP_DIVERGE(0, 1) < (0UL != ((void*)0 == l_225))) == (safe_mod_func_int64_t_s_s(p_856->g_212.f9, (safe_div_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u((l_234 != ((safe_div_func_uint32_t_u_u((p_856->g_172[2][0] == 0xD78C674DL), p_856->g_116)) , &p_77)), p_856->g_212.f7)) != 0x2F530F20L), l_237)), p_856->g_212.f4))))))) || l_239[1][1][2]) & l_239[1][2][5]) == p_75));
                        l_259++;
                        l_262++;
                        (*l_241) = (((*l_266) |= (l_254[5] , (65535UL && l_245))) , 0x296B655EL);
                    }
                    p_856->g_212.f9 &= ((p_856->g_215 , (p_75 || l_245)) , l_249[1]);
                    p_856->g_268 = (*p_856->g_213);
                }
                for (p_856->g_268.f1 = 2; (p_856->g_268.f1 >= 0); p_856->g_268.f1 -= 1)
                { /* block id: 159 */
                    int32_t *l_269 = &l_248;
                    int32_t *l_270 = &l_257;
                    int32_t *l_271 = &l_243;
                    int32_t *l_272 = (void*)0;
                    int32_t l_273[1];
                    int32_t *l_274 = &l_250[0];
                    int32_t *l_275 = &l_242;
                    int32_t *l_276 = &l_247;
                    int32_t *l_277[10][1][9] = {{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}},{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}},{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}},{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}},{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}},{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}},{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}},{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}},{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}},{{&l_248,&l_246[6],&l_247,&l_250[0],&l_246[6],&l_250[0],&l_247,&l_246[6],&l_248}}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_273[i] = 0x5B204A98L;
                    ++p_856->g_280;
                    return p_856->g_172[(p_856->g_116 + 3)][p_856->g_212.f6];
                }
                l_285 = ((*l_284) = l_283);
                l_246[8] = (!(~0x47FD2C6CL));
            }
            for (p_856->g_212.f6 = 0; (p_856->g_212.f6 <= 2); p_856->g_212.f6 += 1)
            { /* block id: 169 */
                int i, j;
                return p_856->g_172[p_856->g_116][p_856->g_116];
            }
            (*l_289) = p_856->g_288;
        }
    }
    return p_75;
}


/* ------------------------------------------ */
/* 
 * reads : p_856->g_106 p_856->g_21 p_856->g_106.f0.f6 p_856->g_4 p_856->g_6 p_856->g_106.f0.f7 p_856->g_106.f0.f0 p_856->g_150 p_856->g_156 p_856->g_161 p_856->g_138 p_856->g_116 p_856->g_170 p_856->g_174 p_856->g_175
 * writes: p_856->g_116 p_856->g_138 p_856->g_148 p_856->g_170 p_856->g_172 p_856->g_174
 */
int32_t * func_87(uint16_t  p_88, int32_t * p_89, int64_t  p_90, int32_t * p_91, int32_t * p_92, struct S2 * p_856)
{ /* block id: 66 */
    uint32_t l_111 = 0x0EE5EE18L;
    uint16_t l_114 = 0xFB72L;
    int32_t *l_115 = &p_856->g_116;
    int32_t l_149 = 0x5D41F0D6L;
    uint32_t l_153 = 0xD3434037L;
    (*l_115) = ((((((safe_rshift_func_int8_t_s_u((((safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u((safe_sub_func_int8_t_s_s(((safe_mod_func_int8_t_s_s((p_856->g_106 , (2UL | (p_856->g_21 && ((safe_sub_func_int8_t_s_s(((p_88 , p_856->g_106.f0.f6) | (safe_lshift_func_uint8_t_u_s(p_856->g_21, 0))), FAKE_DIVERGE(p_856->local_2_offset, get_local_id(2), 10))) > l_111)))), GROUP_DIVERGE(0, 1))) != ((safe_mod_func_uint32_t_u_u((+l_111), 9UL)) | 4294967295UL)), p_90)), 8L)), l_111)) | p_856->g_4) ^ (*p_89)), l_114)) <= l_114) < p_856->g_6) | p_856->g_6) < p_856->g_6) , l_114);
    for (p_88 = 0; (p_88 > 50); p_88 = safe_add_func_int16_t_s_s(p_88, 2))
    { /* block id: 70 */
        uint32_t l_151 = 2UL;
        int32_t l_152 = (-5L);
        for (p_856->g_116 = 0; (p_856->g_116 <= 27); p_856->g_116 = safe_add_func_int32_t_s_s(p_856->g_116, 5))
        { /* block id: 73 */
            int16_t l_143[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
            int32_t *l_155 = &p_856->g_6;
            int i;
            for (l_114 = 25; (l_114 >= 29); ++l_114)
            { /* block id: 76 */
                int32_t **l_154 = &p_856->g_138;
                int16_t *l_168 = &l_143[2];
                int64_t *l_169 = &p_856->g_170;
                int64_t *l_171 = &p_856->g_172[2][0];
                int32_t *l_173[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_173[i] = &l_149;
                for (p_90 = (-8); (p_90 != (-22)); p_90 = safe_sub_func_uint8_t_u_u(p_90, 1))
                { /* block id: 79 */
                    int32_t **l_135 = &l_115;
                    int32_t *l_137 = &p_856->g_6;
                    int32_t **l_136[10][10][2] = {{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}},{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}},{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}},{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}},{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}},{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}},{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}},{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}},{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}},{{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137},{&l_137,&l_137}}};
                    int16_t *l_146 = &l_143[7];
                    int8_t *l_147 = &p_856->g_148;
                    int i, j, k;
                    l_153 |= ((~(l_152 = (safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_u((18446744073709551609UL == ((*p_92) >= (((p_856->g_138 = ((*l_135) = (void*)0)) != ((safe_mod_func_uint8_t_u_u(((((*l_147) = (((void*)0 != p_89) <= (p_856->g_106.f0.f7 , (((*l_146) = ((safe_sub_func_uint32_t_u_u(l_143[7], (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_856->global_2_offset, get_global_id(2), 10), (l_143[7] & (~p_856->g_4)))))) ^ GROUP_DIVERGE(0, 1))) , p_90)))) == p_856->g_21) || p_88), l_149)) , (void*)0)) , (-3L)))), 0)) , p_856->g_106.f0.f0), p_856->g_150)) != l_151), l_151)), p_88)))) | l_151);
                    return &p_856->g_6;
                }
                (*l_154) = p_92;
                p_856->g_174[2][3] |= (((0xC3L <= ((void*)0 != l_155)) & (p_856->g_156 , (((*l_171) = ((*l_169) |= (safe_rshift_func_int16_t_s_s(((*l_168) = ((safe_lshift_func_int16_t_s_u((&p_856->g_148 != (p_856->g_161 , &p_856->g_148)), ((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((~(safe_mul_func_int8_t_s_s((((*p_856->g_138) , ((l_152 > p_856->g_116) , p_88)) < 0x40C6L), (**l_154)))), (*l_155))), p_90)) , p_856->g_21))) >= p_88)), 3)))) <= (-5L)))) >= p_856->g_6);
            }
        }
        (*p_856->g_175) = p_92;
        if ((atomic_inc(&p_856->g_atomic_input[28 * get_linear_group_id() + 17]) == 5))
        { /* block id: 97 */
            uint32_t l_176 = 0xFD5BABCDL;
            uint16_t l_177 = 0UL;
            int32_t l_179 = 0x5AC3371AL;
            int32_t *l_178 = &l_179;
            int32_t *l_180 = (void*)0;
            int8_t l_181[8][6] = {{0x4EL,(-6L),0x32L,0x60L,(-6L),0x60L},{0x4EL,(-6L),0x32L,0x60L,(-6L),0x60L},{0x4EL,(-6L),0x32L,0x60L,(-6L),0x60L},{0x4EL,(-6L),0x32L,0x60L,(-6L),0x60L},{0x4EL,(-6L),0x32L,0x60L,(-6L),0x60L},{0x4EL,(-6L),0x32L,0x60L,(-6L),0x60L},{0x4EL,(-6L),0x32L,0x60L,(-6L),0x60L},{0x4EL,(-6L),0x32L,0x60L,(-6L),0x60L}};
            uint8_t l_204 = 1UL;
            int32_t *l_205 = (void*)0;
            int32_t *l_206 = &l_179;
            int64_t l_207 = (-1L);
            uint32_t l_208 = 4294967292UL;
            uint32_t l_209 = 0UL;
            uint64_t l_210 = 18446744073709551615UL;
            int8_t l_211 = 0L;
            int i, j;
            l_180 = ((l_177 = l_176) , (l_178 = (void*)0));
            if (l_181[7][2])
            { /* block id: 101 */
                if ((l_179 = 0x37458410L))
                { /* block id: 103 */
                    struct S0 l_182 = {0x766C544AL,0x050D8D78F5A50C07L,1L,0L,0x9B0C404CL,0x01E72512L,0x262BF9C2L,4294967295UL,0x2DDA9A1731C75E04L,0x4180A0B4L};/* VOLATILE GLOBAL l_182 */
                    struct S0 l_183 = {0x3C25FB43L,1L,0L,0x0E098A7AL,0x5CE14288L,7L,0L,0UL,5L,0x59E3981AL};/* VOLATILE GLOBAL l_183 */
                    struct S0 l_184 = {1L,1L,0x247F78DDL,-1L,0x5A0D80B1L,-1L,0x1B42E5B4L,1UL,0x2C011F5A4215E306L,0L};/* VOLATILE GLOBAL l_184 */
                    int32_t l_185 = 8L;
                    int32_t l_186 = (-9L);
                    uint32_t l_187 = 0x7C293D81L;
                    l_183 = l_182;
                    l_182 = l_184;
                    l_187++;
                }
                else
                { /* block id: 107 */
                    int32_t l_190 = 0x04657D04L;
                    for (l_190 = 0; (l_190 < 27); l_190 = safe_add_func_int8_t_s_s(l_190, 2))
                    { /* block id: 110 */
                        int64_t l_193 = (-1L);
                        int8_t l_194[6];
                        int8_t l_195 = 0x66L;
                        uint32_t l_196[1];
                        struct S0 l_199[3] = {{0x0241CAF9L,0x6448613141716AC2L,1L,0x07EE75AFL,0x6B099175L,7L,-10L,9UL,1L,0L},{0x0241CAF9L,0x6448613141716AC2L,1L,0x07EE75AFL,0x6B099175L,7L,-10L,9UL,1L,0L},{0x0241CAF9L,0x6448613141716AC2L,1L,0x07EE75AFL,0x6B099175L,7L,-10L,9UL,1L,0L}};
                        struct S0 l_200 = {-1L,3L,0x21B8DFF5L,-1L,0x689631A3L,1L,-1L,0xBFCD3BDFL,2L,0x6EAE4453L};/* VOLATILE GLOBAL l_200 */
                        int64_t l_201[1][8] = {{5L,1L,5L,5L,1L,5L,5L,1L}};
                        int64_t l_202[1][6][9] = {{{0x0B5C55E803D2FD9BL,0x0B5C55E803D2FD9BL,(-1L),2L,(-4L),9L,0x4347F6A0CE1D5CE0L,(-9L),0x4347F6A0CE1D5CE0L},{0x0B5C55E803D2FD9BL,0x0B5C55E803D2FD9BL,(-1L),2L,(-4L),9L,0x4347F6A0CE1D5CE0L,(-9L),0x4347F6A0CE1D5CE0L},{0x0B5C55E803D2FD9BL,0x0B5C55E803D2FD9BL,(-1L),2L,(-4L),9L,0x4347F6A0CE1D5CE0L,(-9L),0x4347F6A0CE1D5CE0L},{0x0B5C55E803D2FD9BL,0x0B5C55E803D2FD9BL,(-1L),2L,(-4L),9L,0x4347F6A0CE1D5CE0L,(-9L),0x4347F6A0CE1D5CE0L},{0x0B5C55E803D2FD9BL,0x0B5C55E803D2FD9BL,(-1L),2L,(-4L),9L,0x4347F6A0CE1D5CE0L,(-9L),0x4347F6A0CE1D5CE0L},{0x0B5C55E803D2FD9BL,0x0B5C55E803D2FD9BL,(-1L),2L,(-4L),9L,0x4347F6A0CE1D5CE0L,(-9L),0x4347F6A0CE1D5CE0L}}};
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_194[i] = 0L;
                        for (i = 0; i < 1; i++)
                            l_196[i] = 0x45326B0DL;
                        l_196[0]++;
                        l_200 = l_199[0];
                        l_202[0][0][0] = (l_201[0][4] = 0x3211AB2AL);
                    }
                    l_180 = (void*)0;
                }
            }
            else
            { /* block id: 118 */
                int32_t *l_203 = (void*)0;
                l_178 = l_203;
            }
            l_206 = (l_204 , l_205);
            l_211 = ((l_207 , 0L) , (l_208 , (l_209 , l_210)));
            unsigned int result = 0;
            result += l_176;
            result += l_177;
            result += l_179;
            int l_181_i0, l_181_i1;
            for (l_181_i0 = 0; l_181_i0 < 8; l_181_i0++) {
                for (l_181_i1 = 0; l_181_i1 < 6; l_181_i1++) {
                    result += l_181[l_181_i0][l_181_i1];
                }
            }
            result += l_204;
            result += l_207;
            result += l_208;
            result += l_209;
            result += l_210;
            result += l_211;
            atomic_add(&p_856->g_special_values[28 * get_linear_group_id() + 17], result);
        }
        else
        { /* block id: 123 */
            (1 + 1);
        }
    }
    return (*p_856->g_175);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[28];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 28; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[28];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 28; i++)
            l_special_values[i] = 0;
    struct S2 c_857;
    struct S2* p_856 = &c_857;
    struct S2 c_858 = {
        3L, // p_856->g_4
        1L, // p_856->g_6
        &p_856->g_6, // p_856->g_5
        1UL, // p_856->g_21
        {0xB8L,0xB8L,0xB8L}, // p_856->g_85
        {{0L,0x61070539346761F4L,1L,-5L,0x201156ABL,0x30F8655CL,-9L,0UL,-3L,1L}}, // p_856->g_106
        0x70E80B64L, // p_856->g_116
        (void*)0, // p_856->g_138
        0x63L, // p_856->g_148
        4294967295UL, // p_856->g_150
        {-6L,0x5CBF6C0B2D7C546DL,0x7D0ED01FL,0x25330C45L,0x50431255L,1L,-1L,4294967292UL,0x776ED50CF4A1DDCEL,0x3E5DABCDL}, // p_856->g_156
        {0x34DBD4ECL,0x56AC2A144F9DCC43L,0x63176584L,0x6B070705L,0UL,0x7724B863L,0x797BA1A1L,0xDF4364D3L,0x0EF4BC92DBE5E4B7L,0x50DD5D19L}, // p_856->g_161
        0L, // p_856->g_170
        {{(-5L)},{(-5L)},{(-5L)},{(-5L)}}, // p_856->g_172
        {{0x11036F43L,0x11036F43L,0x50D66DC1L,4294967288UL,0x8EDBD198L,4294967288UL,0x50D66DC1L},{0x11036F43L,0x11036F43L,0x50D66DC1L,4294967288UL,0x8EDBD198L,4294967288UL,0x50D66DC1L},{0x11036F43L,0x11036F43L,0x50D66DC1L,4294967288UL,0x8EDBD198L,4294967288UL,0x50D66DC1L},{0x11036F43L,0x11036F43L,0x50D66DC1L,4294967288UL,0x8EDBD198L,4294967288UL,0x50D66DC1L},{0x11036F43L,0x11036F43L,0x50D66DC1L,4294967288UL,0x8EDBD198L,4294967288UL,0x50D66DC1L}}, // p_856->g_174
        &p_856->g_138, // p_856->g_175
        {0x6BC50D10L,0x0E37E6B1B2DD2EF5L,1L,0x73A6DB63L,0x8C6F954EL,0x6FA8E486L,0L,0xDE4736B5L,0x4BD3B3BA48C5682BL,0x1454B698L}, // p_856->g_212
        &p_856->g_212, // p_856->g_213
        {{1L,-1L,-1L,-7L,0UL,-1L,6L,1UL,1L,0x12A38A6AL}}, // p_856->g_215
        0xB624L, // p_856->g_220
        &p_856->g_212.f9, // p_856->g_240
        0x63L, // p_856->g_256
        0L, // p_856->g_258
        4L, // p_856->g_267
        {0x6DAA46B1L,-2L,0x67931884L,1L,0UL,0x15C97F00L,0L,1UL,0L,0x5E713FECL}, // p_856->g_268
        0x421C1DE4L, // p_856->g_278
        4294967292UL, // p_856->g_280
        {&p_856->g_268.f9,&p_856->g_268.f9,&p_856->g_268.f9,&p_856->g_268.f9,&p_856->g_268.f9,&p_856->g_268.f9,&p_856->g_268.f9}, // p_856->g_286
        (void*)0, // p_856->g_288
        (void*)0, // p_856->g_299
        {&p_856->g_299}, // p_856->g_298
        {0L,0L,0x5134C11CL,6L,4294967286UL,-8L,0L,4294967295UL,0x6D6917B319BF8E11L,-1L}, // p_856->g_334
        &p_856->g_138, // p_856->g_346
        {{{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}}},{{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}}},{{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}}},{{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}}},{{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}},{{1L,0x33FFB6A3B96E0091L,1L,1L,0x6E5B2CB9L,0x7E344B6EL,0x25F15EB5L,0xC272563FL,-1L,2L},{0L,0x11C2F0C8EC3341C2L,0x56D65BEAL,0x2D9CB721L,4294967287UL,0x30A9951BL,-7L,0xB887A22CL,1L,0x56C975CAL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{0x39D6A1B4L,0L,-1L,0x0AD66061L,0x7C123EA1L,0x50F041ADL,-7L,0xDB909375L,-6L,0x5503FE43L},{-4L,3L,0x1FBF0726L,0x72E95A49L,0x90F9DC89L,-1L,1L,0x47352B2BL,1L,0x62454DDDL},{0x45C5EFA1L,0x342120BC1B79115FL,0x1086ACC2L,1L,0x01A24DBEL,1L,0L,0x21E599BFL,-1L,0x0049BF5FL}}}}, // p_856->g_348
        (void*)0, // p_856->g_350
        {{{&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3},{&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3},{&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3}},{{&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3},{&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3},{&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3}},{{&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3},{&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3},{&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3,&p_856->g_268.f3}}}, // p_856->g_352
        {0x7949D494L,1L,-7L,0x3FC4AD73L,0x57566FCEL,0L,-1L,0x12C24D16L,0x0D6255BF40001EDCL,-1L}, // p_856->g_354
        {0x7D611595L,1L,0x6D6733CBL,-1L,1UL,0x00E98D28L,0x739FEC05L,0x7E5F1A6FL,0L,0L}, // p_856->g_385
        {0L,0x65843A4F517A7377L,0x55330C97L,0x65F6D063L,8UL,-1L,0x3747141DL,0x9BA2C0EFL,0x1838C15AA2BE1665L,-3L}, // p_856->g_397
        18446744073709551615UL, // p_856->g_399
        &p_856->g_348[0][1][7].f9, // p_856->g_402
        {{{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280}},{{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280}},{{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280}},{{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280}},{{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280}},{{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280}},{{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280}},{{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280}},{{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280},{&p_856->g_280,&p_856->g_268.f4,&p_856->g_268.f4,&p_856->g_348[0][1][7].f4,&p_856->g_280}}}, // p_856->g_420
        &p_856->g_420[5][1][3], // p_856->g_419
        &p_856->g_348[0][0][1], // p_856->g_440
        {{0UL,248UL,0UL,0UL,248UL,0UL,0UL,248UL,0UL,0UL}}, // p_856->g_475
        4294967289UL, // p_856->g_482
        &p_856->g_482, // p_856->g_481
        &p_856->g_481, // p_856->g_480
        &p_856->g_480, // p_856->g_479
        0x1E51L, // p_856->g_518
        {0L,-4L,0L,0x43B21B82L,0x7668AD30L,0x2235F986L,0x144B4C01L,4294967295UL,0L,-1L}, // p_856->g_595
        {{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L},{0L,(-7L),(-7L),0L,0L}}, // p_856->g_598
        0xD7D64FB7L, // p_856->g_625
        {0x637B3B2BL,-4L,0x348C95E3L,0x07BBC146L,1UL,1L,-6L,2UL,-1L,0x32218187L}, // p_856->g_634
        &p_856->g_172[2][0], // p_856->g_642
        {{2L,-2L,-2L,0x4B5CE583L,0xA2CCE452L,0x250A718BL,0x2EF34487L,0x56ADAA84L,5L,0x7B896215L}}, // p_856->g_663
        &p_856->g_346, // p_856->g_686
        &p_856->g_686, // p_856->g_685
        {{{{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{4L,-4L,0x2B409C53L,-1L,8UL,0L,0x7E04A7FAL,0x4A17264AL,2L,0x7661B772L}},{{6L,0x042D220CCB5142BAL,-1L,0x7BC3126DL,0x4E70D6A0L,6L,0x31F2D4FEL,0xC85B5A06L,0x2D50E2FA4E09FB14L,0L}}}},{{{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{4L,-4L,0x2B409C53L,-1L,8UL,0L,0x7E04A7FAL,0x4A17264AL,2L,0x7661B772L}},{{6L,0x042D220CCB5142BAL,-1L,0x7BC3126DL,0x4E70D6A0L,6L,0x31F2D4FEL,0xC85B5A06L,0x2D50E2FA4E09FB14L,0L}}}},{{{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{4L,-4L,0x2B409C53L,-1L,8UL,0L,0x7E04A7FAL,0x4A17264AL,2L,0x7661B772L}},{{6L,0x042D220CCB5142BAL,-1L,0x7BC3126DL,0x4E70D6A0L,6L,0x31F2D4FEL,0xC85B5A06L,0x2D50E2FA4E09FB14L,0L}}}},{{{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{4L,-4L,0x2B409C53L,-1L,8UL,0L,0x7E04A7FAL,0x4A17264AL,2L,0x7661B772L}},{{6L,0x042D220CCB5142BAL,-1L,0x7BC3126DL,0x4E70D6A0L,6L,0x31F2D4FEL,0xC85B5A06L,0x2D50E2FA4E09FB14L,0L}}}},{{{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{4L,-4L,0x2B409C53L,-1L,8UL,0L,0x7E04A7FAL,0x4A17264AL,2L,0x7661B772L}},{{6L,0x042D220CCB5142BAL,-1L,0x7BC3126DL,0x4E70D6A0L,6L,0x31F2D4FEL,0xC85B5A06L,0x2D50E2FA4E09FB14L,0L}}}},{{{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{4L,-4L,0x2B409C53L,-1L,8UL,0L,0x7E04A7FAL,0x4A17264AL,2L,0x7661B772L}},{{6L,0x042D220CCB5142BAL,-1L,0x7BC3126DL,0x4E70D6A0L,6L,0x31F2D4FEL,0xC85B5A06L,0x2D50E2FA4E09FB14L,0L}}}},{{{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{-1L,1L,0x75E1F0ECL,2L,0xAA616934L,8L,0x5AEC6ABEL,0x2538E6D9L,-2L,1L}},{{0x2D7E10EBL,0x3930FBD8BD37BB3AL,0x1F8604E9L,0x7B45B5E7L,4UL,-10L,8L,4294967295UL,5L,-10L}},{{4L,-4L,0x2B409C53L,-1L,8UL,0L,0x7E04A7FAL,0x4A17264AL,2L,0x7661B772L}},{{6L,0x042D220CCB5142BAL,-1L,0x7BC3126DL,0x4E70D6A0L,6L,0x31F2D4FEL,0xC85B5A06L,0x2D50E2FA4E09FB14L,0L}}}}}, // p_856->g_740
        5UL, // p_856->g_749
        {{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642},{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642},{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642},{&p_856->g_642,&p_856->g_642,&p_856->g_642,&p_856->g_642}}, // p_856->g_796
        &p_856->g_796[2][1], // p_856->g_795
        {2L,0L,-8L,0x316920FAL,1UL,0x3E06513DL,-1L,0x61ACD885L,0x487B20B9C71C4022L,0L}, // p_856->g_830
        sequence_input[get_global_id(0)], // p_856->global_0_offset
        sequence_input[get_global_id(1)], // p_856->global_1_offset
        sequence_input[get_global_id(2)], // p_856->global_2_offset
        sequence_input[get_local_id(0)], // p_856->local_0_offset
        sequence_input[get_local_id(1)], // p_856->local_1_offset
        sequence_input[get_local_id(2)], // p_856->local_2_offset
        sequence_input[get_group_id(0)], // p_856->group_0_offset
        sequence_input[get_group_id(1)], // p_856->group_1_offset
        sequence_input[get_group_id(2)], // p_856->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_857 = c_858;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_856);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_856->g_4, "p_856->g_4", print_hash_value);
    transparent_crc(p_856->g_6, "p_856->g_6", print_hash_value);
    transparent_crc(p_856->g_21, "p_856->g_21", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_856->g_85[i], "p_856->g_85[i]", print_hash_value);

    }
    transparent_crc(p_856->g_106.f0.f0, "p_856->g_106.f0.f0", print_hash_value);
    transparent_crc(p_856->g_106.f0.f1, "p_856->g_106.f0.f1", print_hash_value);
    transparent_crc(p_856->g_106.f0.f2, "p_856->g_106.f0.f2", print_hash_value);
    transparent_crc(p_856->g_106.f0.f3, "p_856->g_106.f0.f3", print_hash_value);
    transparent_crc(p_856->g_106.f0.f4, "p_856->g_106.f0.f4", print_hash_value);
    transparent_crc(p_856->g_106.f0.f5, "p_856->g_106.f0.f5", print_hash_value);
    transparent_crc(p_856->g_106.f0.f6, "p_856->g_106.f0.f6", print_hash_value);
    transparent_crc(p_856->g_106.f0.f7, "p_856->g_106.f0.f7", print_hash_value);
    transparent_crc(p_856->g_106.f0.f8, "p_856->g_106.f0.f8", print_hash_value);
    transparent_crc(p_856->g_106.f0.f9, "p_856->g_106.f0.f9", print_hash_value);
    transparent_crc(p_856->g_116, "p_856->g_116", print_hash_value);
    transparent_crc(p_856->g_148, "p_856->g_148", print_hash_value);
    transparent_crc(p_856->g_150, "p_856->g_150", print_hash_value);
    transparent_crc(p_856->g_156.f0, "p_856->g_156.f0", print_hash_value);
    transparent_crc(p_856->g_156.f1, "p_856->g_156.f1", print_hash_value);
    transparent_crc(p_856->g_156.f2, "p_856->g_156.f2", print_hash_value);
    transparent_crc(p_856->g_156.f3, "p_856->g_156.f3", print_hash_value);
    transparent_crc(p_856->g_156.f4, "p_856->g_156.f4", print_hash_value);
    transparent_crc(p_856->g_156.f5, "p_856->g_156.f5", print_hash_value);
    transparent_crc(p_856->g_156.f6, "p_856->g_156.f6", print_hash_value);
    transparent_crc(p_856->g_156.f7, "p_856->g_156.f7", print_hash_value);
    transparent_crc(p_856->g_156.f8, "p_856->g_156.f8", print_hash_value);
    transparent_crc(p_856->g_156.f9, "p_856->g_156.f9", print_hash_value);
    transparent_crc(p_856->g_161.f0, "p_856->g_161.f0", print_hash_value);
    transparent_crc(p_856->g_161.f1, "p_856->g_161.f1", print_hash_value);
    transparent_crc(p_856->g_161.f2, "p_856->g_161.f2", print_hash_value);
    transparent_crc(p_856->g_161.f3, "p_856->g_161.f3", print_hash_value);
    transparent_crc(p_856->g_161.f4, "p_856->g_161.f4", print_hash_value);
    transparent_crc(p_856->g_161.f5, "p_856->g_161.f5", print_hash_value);
    transparent_crc(p_856->g_161.f6, "p_856->g_161.f6", print_hash_value);
    transparent_crc(p_856->g_161.f7, "p_856->g_161.f7", print_hash_value);
    transparent_crc(p_856->g_161.f8, "p_856->g_161.f8", print_hash_value);
    transparent_crc(p_856->g_161.f9, "p_856->g_161.f9", print_hash_value);
    transparent_crc(p_856->g_170, "p_856->g_170", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_856->g_172[i][j], "p_856->g_172[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_856->g_174[i][j], "p_856->g_174[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_856->g_212.f0, "p_856->g_212.f0", print_hash_value);
    transparent_crc(p_856->g_212.f1, "p_856->g_212.f1", print_hash_value);
    transparent_crc(p_856->g_212.f2, "p_856->g_212.f2", print_hash_value);
    transparent_crc(p_856->g_212.f3, "p_856->g_212.f3", print_hash_value);
    transparent_crc(p_856->g_212.f4, "p_856->g_212.f4", print_hash_value);
    transparent_crc(p_856->g_212.f5, "p_856->g_212.f5", print_hash_value);
    transparent_crc(p_856->g_212.f6, "p_856->g_212.f6", print_hash_value);
    transparent_crc(p_856->g_212.f7, "p_856->g_212.f7", print_hash_value);
    transparent_crc(p_856->g_212.f8, "p_856->g_212.f8", print_hash_value);
    transparent_crc(p_856->g_212.f9, "p_856->g_212.f9", print_hash_value);
    transparent_crc(p_856->g_215.f0.f0, "p_856->g_215.f0.f0", print_hash_value);
    transparent_crc(p_856->g_215.f0.f1, "p_856->g_215.f0.f1", print_hash_value);
    transparent_crc(p_856->g_215.f0.f2, "p_856->g_215.f0.f2", print_hash_value);
    transparent_crc(p_856->g_215.f0.f3, "p_856->g_215.f0.f3", print_hash_value);
    transparent_crc(p_856->g_215.f0.f4, "p_856->g_215.f0.f4", print_hash_value);
    transparent_crc(p_856->g_215.f0.f5, "p_856->g_215.f0.f5", print_hash_value);
    transparent_crc(p_856->g_215.f0.f6, "p_856->g_215.f0.f6", print_hash_value);
    transparent_crc(p_856->g_215.f0.f7, "p_856->g_215.f0.f7", print_hash_value);
    transparent_crc(p_856->g_215.f0.f8, "p_856->g_215.f0.f8", print_hash_value);
    transparent_crc(p_856->g_215.f0.f9, "p_856->g_215.f0.f9", print_hash_value);
    transparent_crc(p_856->g_220, "p_856->g_220", print_hash_value);
    transparent_crc(p_856->g_256, "p_856->g_256", print_hash_value);
    transparent_crc(p_856->g_258, "p_856->g_258", print_hash_value);
    transparent_crc(p_856->g_267, "p_856->g_267", print_hash_value);
    transparent_crc(p_856->g_268.f0, "p_856->g_268.f0", print_hash_value);
    transparent_crc(p_856->g_268.f1, "p_856->g_268.f1", print_hash_value);
    transparent_crc(p_856->g_268.f2, "p_856->g_268.f2", print_hash_value);
    transparent_crc(p_856->g_268.f3, "p_856->g_268.f3", print_hash_value);
    transparent_crc(p_856->g_268.f4, "p_856->g_268.f4", print_hash_value);
    transparent_crc(p_856->g_268.f5, "p_856->g_268.f5", print_hash_value);
    transparent_crc(p_856->g_268.f6, "p_856->g_268.f6", print_hash_value);
    transparent_crc(p_856->g_268.f7, "p_856->g_268.f7", print_hash_value);
    transparent_crc(p_856->g_268.f8, "p_856->g_268.f8", print_hash_value);
    transparent_crc(p_856->g_268.f9, "p_856->g_268.f9", print_hash_value);
    transparent_crc(p_856->g_278, "p_856->g_278", print_hash_value);
    transparent_crc(p_856->g_280, "p_856->g_280", print_hash_value);
    transparent_crc(p_856->g_334.f0, "p_856->g_334.f0", print_hash_value);
    transparent_crc(p_856->g_334.f1, "p_856->g_334.f1", print_hash_value);
    transparent_crc(p_856->g_334.f2, "p_856->g_334.f2", print_hash_value);
    transparent_crc(p_856->g_334.f3, "p_856->g_334.f3", print_hash_value);
    transparent_crc(p_856->g_334.f4, "p_856->g_334.f4", print_hash_value);
    transparent_crc(p_856->g_334.f5, "p_856->g_334.f5", print_hash_value);
    transparent_crc(p_856->g_334.f6, "p_856->g_334.f6", print_hash_value);
    transparent_crc(p_856->g_334.f7, "p_856->g_334.f7", print_hash_value);
    transparent_crc(p_856->g_334.f8, "p_856->g_334.f8", print_hash_value);
    transparent_crc(p_856->g_334.f9, "p_856->g_334.f9", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_856->g_348[i][j][k].f0, "p_856->g_348[i][j][k].f0", print_hash_value);
                transparent_crc(p_856->g_348[i][j][k].f1, "p_856->g_348[i][j][k].f1", print_hash_value);
                transparent_crc(p_856->g_348[i][j][k].f2, "p_856->g_348[i][j][k].f2", print_hash_value);
                transparent_crc(p_856->g_348[i][j][k].f3, "p_856->g_348[i][j][k].f3", print_hash_value);
                transparent_crc(p_856->g_348[i][j][k].f4, "p_856->g_348[i][j][k].f4", print_hash_value);
                transparent_crc(p_856->g_348[i][j][k].f5, "p_856->g_348[i][j][k].f5", print_hash_value);
                transparent_crc(p_856->g_348[i][j][k].f6, "p_856->g_348[i][j][k].f6", print_hash_value);
                transparent_crc(p_856->g_348[i][j][k].f7, "p_856->g_348[i][j][k].f7", print_hash_value);
                transparent_crc(p_856->g_348[i][j][k].f8, "p_856->g_348[i][j][k].f8", print_hash_value);
                transparent_crc(p_856->g_348[i][j][k].f9, "p_856->g_348[i][j][k].f9", print_hash_value);

            }
        }
    }
    transparent_crc(p_856->g_354.f0, "p_856->g_354.f0", print_hash_value);
    transparent_crc(p_856->g_354.f1, "p_856->g_354.f1", print_hash_value);
    transparent_crc(p_856->g_354.f2, "p_856->g_354.f2", print_hash_value);
    transparent_crc(p_856->g_354.f3, "p_856->g_354.f3", print_hash_value);
    transparent_crc(p_856->g_354.f4, "p_856->g_354.f4", print_hash_value);
    transparent_crc(p_856->g_354.f5, "p_856->g_354.f5", print_hash_value);
    transparent_crc(p_856->g_354.f6, "p_856->g_354.f6", print_hash_value);
    transparent_crc(p_856->g_354.f7, "p_856->g_354.f7", print_hash_value);
    transparent_crc(p_856->g_354.f8, "p_856->g_354.f8", print_hash_value);
    transparent_crc(p_856->g_354.f9, "p_856->g_354.f9", print_hash_value);
    transparent_crc(p_856->g_385.f0, "p_856->g_385.f0", print_hash_value);
    transparent_crc(p_856->g_385.f1, "p_856->g_385.f1", print_hash_value);
    transparent_crc(p_856->g_385.f2, "p_856->g_385.f2", print_hash_value);
    transparent_crc(p_856->g_385.f3, "p_856->g_385.f3", print_hash_value);
    transparent_crc(p_856->g_385.f4, "p_856->g_385.f4", print_hash_value);
    transparent_crc(p_856->g_385.f5, "p_856->g_385.f5", print_hash_value);
    transparent_crc(p_856->g_385.f6, "p_856->g_385.f6", print_hash_value);
    transparent_crc(p_856->g_385.f7, "p_856->g_385.f7", print_hash_value);
    transparent_crc(p_856->g_385.f8, "p_856->g_385.f8", print_hash_value);
    transparent_crc(p_856->g_385.f9, "p_856->g_385.f9", print_hash_value);
    transparent_crc(p_856->g_397.f0, "p_856->g_397.f0", print_hash_value);
    transparent_crc(p_856->g_397.f1, "p_856->g_397.f1", print_hash_value);
    transparent_crc(p_856->g_397.f2, "p_856->g_397.f2", print_hash_value);
    transparent_crc(p_856->g_397.f3, "p_856->g_397.f3", print_hash_value);
    transparent_crc(p_856->g_397.f4, "p_856->g_397.f4", print_hash_value);
    transparent_crc(p_856->g_397.f5, "p_856->g_397.f5", print_hash_value);
    transparent_crc(p_856->g_397.f6, "p_856->g_397.f6", print_hash_value);
    transparent_crc(p_856->g_397.f7, "p_856->g_397.f7", print_hash_value);
    transparent_crc(p_856->g_397.f8, "p_856->g_397.f8", print_hash_value);
    transparent_crc(p_856->g_397.f9, "p_856->g_397.f9", print_hash_value);
    transparent_crc(p_856->g_399, "p_856->g_399", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_856->g_475[i][j], "p_856->g_475[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_856->g_482, "p_856->g_482", print_hash_value);
    transparent_crc(p_856->g_518, "p_856->g_518", print_hash_value);
    transparent_crc(p_856->g_595.f0, "p_856->g_595.f0", print_hash_value);
    transparent_crc(p_856->g_595.f1, "p_856->g_595.f1", print_hash_value);
    transparent_crc(p_856->g_595.f2, "p_856->g_595.f2", print_hash_value);
    transparent_crc(p_856->g_595.f3, "p_856->g_595.f3", print_hash_value);
    transparent_crc(p_856->g_595.f4, "p_856->g_595.f4", print_hash_value);
    transparent_crc(p_856->g_595.f5, "p_856->g_595.f5", print_hash_value);
    transparent_crc(p_856->g_595.f6, "p_856->g_595.f6", print_hash_value);
    transparent_crc(p_856->g_595.f7, "p_856->g_595.f7", print_hash_value);
    transparent_crc(p_856->g_595.f8, "p_856->g_595.f8", print_hash_value);
    transparent_crc(p_856->g_595.f9, "p_856->g_595.f9", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_856->g_598[i][j], "p_856->g_598[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_856->g_625, "p_856->g_625", print_hash_value);
    transparent_crc(p_856->g_634.f0, "p_856->g_634.f0", print_hash_value);
    transparent_crc(p_856->g_634.f1, "p_856->g_634.f1", print_hash_value);
    transparent_crc(p_856->g_634.f2, "p_856->g_634.f2", print_hash_value);
    transparent_crc(p_856->g_634.f3, "p_856->g_634.f3", print_hash_value);
    transparent_crc(p_856->g_634.f4, "p_856->g_634.f4", print_hash_value);
    transparent_crc(p_856->g_634.f5, "p_856->g_634.f5", print_hash_value);
    transparent_crc(p_856->g_634.f6, "p_856->g_634.f6", print_hash_value);
    transparent_crc(p_856->g_634.f7, "p_856->g_634.f7", print_hash_value);
    transparent_crc(p_856->g_634.f8, "p_856->g_634.f8", print_hash_value);
    transparent_crc(p_856->g_634.f9, "p_856->g_634.f9", print_hash_value);
    transparent_crc(p_856->g_663.f0.f0, "p_856->g_663.f0.f0", print_hash_value);
    transparent_crc(p_856->g_663.f0.f1, "p_856->g_663.f0.f1", print_hash_value);
    transparent_crc(p_856->g_663.f0.f2, "p_856->g_663.f0.f2", print_hash_value);
    transparent_crc(p_856->g_663.f0.f3, "p_856->g_663.f0.f3", print_hash_value);
    transparent_crc(p_856->g_663.f0.f4, "p_856->g_663.f0.f4", print_hash_value);
    transparent_crc(p_856->g_663.f0.f5, "p_856->g_663.f0.f5", print_hash_value);
    transparent_crc(p_856->g_663.f0.f6, "p_856->g_663.f0.f6", print_hash_value);
    transparent_crc(p_856->g_663.f0.f7, "p_856->g_663.f0.f7", print_hash_value);
    transparent_crc(p_856->g_663.f0.f8, "p_856->g_663.f0.f8", print_hash_value);
    transparent_crc(p_856->g_663.f0.f9, "p_856->g_663.f0.f9", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_856->g_740[i][j][k].f0.f0, "p_856->g_740[i][j][k].f0.f0", print_hash_value);
                transparent_crc(p_856->g_740[i][j][k].f0.f1, "p_856->g_740[i][j][k].f0.f1", print_hash_value);
                transparent_crc(p_856->g_740[i][j][k].f0.f2, "p_856->g_740[i][j][k].f0.f2", print_hash_value);
                transparent_crc(p_856->g_740[i][j][k].f0.f3, "p_856->g_740[i][j][k].f0.f3", print_hash_value);
                transparent_crc(p_856->g_740[i][j][k].f0.f4, "p_856->g_740[i][j][k].f0.f4", print_hash_value);
                transparent_crc(p_856->g_740[i][j][k].f0.f5, "p_856->g_740[i][j][k].f0.f5", print_hash_value);
                transparent_crc(p_856->g_740[i][j][k].f0.f6, "p_856->g_740[i][j][k].f0.f6", print_hash_value);
                transparent_crc(p_856->g_740[i][j][k].f0.f7, "p_856->g_740[i][j][k].f0.f7", print_hash_value);
                transparent_crc(p_856->g_740[i][j][k].f0.f8, "p_856->g_740[i][j][k].f0.f8", print_hash_value);
                transparent_crc(p_856->g_740[i][j][k].f0.f9, "p_856->g_740[i][j][k].f0.f9", print_hash_value);

            }
        }
    }
    transparent_crc(p_856->g_749, "p_856->g_749", print_hash_value);
    transparent_crc(p_856->g_830.f0, "p_856->g_830.f0", print_hash_value);
    transparent_crc(p_856->g_830.f1, "p_856->g_830.f1", print_hash_value);
    transparent_crc(p_856->g_830.f2, "p_856->g_830.f2", print_hash_value);
    transparent_crc(p_856->g_830.f3, "p_856->g_830.f3", print_hash_value);
    transparent_crc(p_856->g_830.f4, "p_856->g_830.f4", print_hash_value);
    transparent_crc(p_856->g_830.f5, "p_856->g_830.f5", print_hash_value);
    transparent_crc(p_856->g_830.f6, "p_856->g_830.f6", print_hash_value);
    transparent_crc(p_856->g_830.f7, "p_856->g_830.f7", print_hash_value);
    transparent_crc(p_856->g_830.f8, "p_856->g_830.f8", print_hash_value);
    transparent_crc(p_856->g_830.f9, "p_856->g_830.f9", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 28; i++)
            transparent_crc(p_856->g_special_values[i + 28 * get_linear_group_id()], "p_856->g_special_values[i + 28 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 28; i++)
            transparent_crc(p_856->l_special_values[i], "p_856->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
