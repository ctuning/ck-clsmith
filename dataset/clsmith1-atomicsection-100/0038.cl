// --atomics 93 ---fake_divergence -g 34,64,2 -l 1,1,2
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


// Seed: 38

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   int64_t  f1;
   uint16_t  f2;
   volatile int32_t  f3;
};

struct S1 {
   int64_t  f0;
   int16_t  f1;
   volatile int32_t  f2;
   int64_t  f3;
   volatile int8_t  f4;
};

struct S2 {
   uint64_t  f0;
};

struct S3 {
   uint32_t  f0;
   uint8_t  f1;
   volatile uint64_t  f2;
   uint32_t  f3;
};

struct S4 {
    volatile int32_t g_2;
    int32_t g_3[2];
    uint32_t g_17;
    struct S2 g_27;
    int8_t g_28[9];
    uint32_t g_35[9][9][3];
    uint32_t *g_34;
    int32_t g_74;
    uint32_t g_109[4];
    int16_t g_111;
    int32_t g_114;
    int32_t g_119;
    int16_t g_155[8][1][7];
    uint8_t g_156;
    uint32_t g_167;
    uint64_t g_174;
    uint64_t *g_173;
    int32_t *g_221[6];
    int32_t **g_220[5];
    int32_t **g_222;
    uint16_t g_236;
    uint16_t g_281;
    int64_t g_301[4][1][7];
    struct S3 g_372;
    int64_t g_420;
    uint64_t **g_464;
    uint64_t **g_465;
    int8_t g_758;
    struct S0 g_767[5];
    struct S0 *g_766;
    struct S0 g_770;
    struct S0 *g_769;
    int8_t g_798;
    int32_t * volatile g_808[9][4][3];
    int32_t * volatile g_809;
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
uint32_t  func_1(struct S4 * p_811);
int32_t * func_6(int64_t  p_7, uint32_t  p_8, int32_t * p_9, struct S4 * p_811);
uint64_t  func_19(int32_t  p_20, int32_t * p_21, struct S4 * p_811);
int32_t * func_22(uint32_t  p_23, int64_t  p_24, uint16_t  p_25, struct S2  p_26, struct S4 * p_811);
int32_t * func_29(uint8_t  p_30, uint32_t * p_31, uint32_t  p_32, int32_t * p_33, struct S4 * p_811);
uint8_t  func_41(uint32_t  p_42, uint64_t  p_43, int32_t * p_44, struct S4 * p_811);
uint32_t  func_45(int64_t  p_46, uint32_t * p_47, int32_t * p_48, struct S4 * p_811);
int32_t  func_51(uint64_t  p_52, uint32_t * p_53, uint32_t * p_54, struct S4 * p_811);
int64_t  func_61(uint32_t  p_62, struct S4 * p_811);
int16_t  func_83(int8_t  p_84, int8_t * p_85, int32_t ** p_86, uint8_t  p_87, struct S4 * p_811);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_811->g_3 p_811->g_2 p_811->g_27 p_811->g_222 p_811->g_221 p_811->g_155 p_811->g_111 p_811->g_766 p_811->g_769 p_811->g_770.f1 p_811->g_420 p_811->g_34 p_811->g_35 p_811->g_767.f2 p_811->g_798 p_811->g_770.f2 p_811->g_301 p_811->g_167 p_811->g_174 p_811->g_119
 * writes: p_811->g_3 p_811->g_17 p_811->g_420 p_811->g_28 p_811->g_758 p_811->g_766 p_811->g_74 p_811->g_221 p_811->g_798 p_811->g_155 p_811->g_119
 */
uint32_t  func_1(struct S4 * p_811)
{ /* block id: 4 */
    int32_t *l_14 = &p_811->g_3[1];
    int32_t l_787 = (-1L);
    int64_t *l_797[5] = {&p_811->g_420,&p_811->g_420,&p_811->g_420,&p_811->g_420,&p_811->g_420};
    int16_t *l_803 = &p_811->g_155[5][0][2];
    int32_t *l_810 = &p_811->g_119;
    int i;
    for (p_811->g_3[0] = 10; (p_811->g_3[0] == 20); p_811->g_3[0] = safe_add_func_uint8_t_u_u(p_811->g_3[0], 1))
    { /* block id: 7 */
        int32_t *l_15 = &p_811->g_3[0];
        uint32_t *l_16 = &p_811->g_17;
        uint32_t l_18 = 0x483BBB66L;
        int32_t *l_780 = &p_811->g_3[0];
        int32_t *l_782 = (void*)0;
        int32_t *l_783 = &p_811->g_74;
        int32_t l_784 = 5L;
        int32_t *l_785 = (void*)0;
        int32_t *l_786[4];
        uint32_t l_788 = 0UL;
        int i;
        for (i = 0; i < 4; i++)
            l_786[i] = &l_784;
        (*p_811->g_222) = func_6((safe_lshift_func_int8_t_s_s((((safe_lshift_func_int16_t_s_s((l_14 != (((*l_14) > (0xB44ADCA1A1F05067L & p_811->g_2)) , l_15)), 1)) && ((*l_16) = 0UL)) > (l_18 && (func_19(p_811->g_3[0], func_22((+p_811->g_3[1]), (*l_14), p_811->g_3[0], p_811->g_27, p_811), p_811) ^ 0x711D91B1D5D43C72L))), 0)), (*p_811->g_34), l_780, p_811);
        --l_788;
    }
    (*l_810) |= (safe_sub_func_int16_t_s_s(((safe_mod_func_int64_t_s_s((p_811->g_798 &= (p_811->g_420 , ((*l_14) = (safe_lshift_func_uint8_t_u_u(0xF8L, 6))))), 18446744073709551613UL)) > p_811->g_35[8][8][1]), (safe_rshift_func_int16_t_s_u(((*l_803) = (0L >= (p_811->g_770.f2 != p_811->g_301[3][0][5]))), (safe_add_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(p_811->g_167, p_811->g_174)), (*p_811->g_34)))))));
    return (*l_14);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_6(int64_t  p_7, uint32_t  p_8, int32_t * p_9, struct S4 * p_811)
{ /* block id: 516 */
    int32_t *l_781[1][3];
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_781[i][j] = &p_811->g_119;
    }
    return l_781[0][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_811->g_420 p_811->g_155 p_811->g_111 p_811->g_766 p_811->g_769 p_811->g_770.f1 p_811->g_34 p_811->g_35 p_811->g_767.f2
 * writes: p_811->g_420 p_811->g_28 p_811->g_758 p_811->g_766 p_811->g_74
 */
uint64_t  func_19(int32_t  p_20, int32_t * p_21, struct S4 * p_811)
{ /* block id: 505 */
    uint8_t l_765 = 255UL;
    for (p_811->g_420 = 0; (p_811->g_420 > 1); ++p_811->g_420)
    { /* block id: 508 */
        int8_t *l_755 = &p_811->g_28[5];
        int8_t *l_756 = (void*)0;
        int8_t *l_757[7] = {&p_811->g_758,&p_811->g_758,&p_811->g_758,&p_811->g_758,&p_811->g_758,&p_811->g_758,&p_811->g_758};
        struct S0 **l_768 = &p_811->g_766;
        int32_t l_777 = 0x254B7F96L;
        int32_t l_778 = 3L;
        int32_t *l_779 = &p_811->g_74;
        int i;
        (*l_779) = (p_811->g_155[4][0][0] == ((((safe_rshift_func_int8_t_s_u((l_777 = ((safe_rshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((((safe_sub_func_int64_t_s_s(((p_811->g_758 = ((*l_755) = (-5L))) == 0x67L), ((safe_mul_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s((FAKE_DIVERGE(p_811->local_0_offset, get_local_id(0), 10) != ((safe_mul_func_int16_t_s_s(p_811->g_111, l_765)) <= (((*l_768) = p_811->g_766) == p_811->g_769))), 4)) == (p_811->g_770.f1 , ((safe_add_func_uint64_t_u_u(((safe_div_func_int16_t_s_s((safe_mul_func_int8_t_s_s(p_20, p_20)), p_811->g_420)) , 0xB79479F377F6A5B4L), 0x171A3C36A143EA4EL)) != (*p_811->g_34)))), p_20)) > (-1L)))) ^ l_777) || p_811->g_767[3].f2), p_20)), 9)), 4)) & 2UL)), FAKE_DIVERGE(p_811->local_0_offset, get_local_id(0), 10))) >= l_778) && (-1L)) >= (*p_811->g_34)));
    }
    return l_765;
}


/* ------------------------------------------ */
/* 
 * reads : p_811->g_222 p_811->g_221
 * writes:
 */
int32_t * func_22(uint32_t  p_23, int64_t  p_24, uint16_t  p_25, struct S2  p_26, struct S4 * p_811)
{ /* block id: 9 */
    int32_t *l_38 = &p_811->g_3[0];
    int32_t **l_729[6][2] = {{(void*)0,&l_38},{(void*)0,&l_38},{(void*)0,&l_38},{(void*)0,&l_38},{(void*)0,&l_38},{(void*)0,&l_38}};
    int32_t **l_730 = &l_38;
    int64_t l_733 = 0x57719D1B028312E8L;
    int8_t *l_741[9] = {&p_811->g_28[6],&p_811->g_28[0],&p_811->g_28[6],&p_811->g_28[6],&p_811->g_28[0],&p_811->g_28[6],&p_811->g_28[6],&p_811->g_28[0],&p_811->g_28[6]};
    int8_t **l_740 = &l_741[5];
    int i, j;
    for (p_26.f0 = 2; (p_26.f0 <= 8); p_26.f0 += 1)
    { /* block id: 12 */
        int32_t l_268 = (-1L);
        uint32_t *l_269 = &p_811->g_35[0][0][1];
        int16_t *l_625 = &p_811->g_111;
        int32_t ***l_731 = &p_811->g_222;
        int32_t ***l_732 = &p_811->g_220[3];
        uint8_t *l_736 = (void*)0;
        uint8_t *l_737 = &p_811->g_372.f1;
        int8_t **l_742 = (void*)0;
        int i;
        (1 + 1);
    }
    return (*p_811->g_222);
}


/* ------------------------------------------ */
/* 
 * reads : p_811->g_28 p_811->g_301
 * writes: p_811->g_301 p_811->g_155 p_811->g_221
 */
int32_t * func_29(uint8_t  p_30, uint32_t * p_31, uint32_t  p_32, int32_t * p_33, struct S4 * p_811)
{ /* block id: 392 */
    if ((atomic_inc(&p_811->l_atomic_input[6]) == 2))
    { /* block id: 394 */
        int32_t l_626 = 9L;
        int32_t l_627[2][1][2] = {{{0L,0L}},{{0L,0L}}};
        int32_t l_628 = 0x32DA47BFL;
        int8_t *l_677 = (void*)0;
        int8_t **l_676 = &l_677;
        int8_t **l_678 = &l_677;
        int8_t **l_679 = &l_677;
        int8_t **l_680 = &l_677;
        int i, j, k;
        for (l_626 = 0; l_626 < 4; l_626 += 1)
        {
            for (l_627[0][0][1] = 0; l_627[0][0][1] < 1; l_627[0][0][1] += 1)
            {
                for (l_628 = 0; l_628 < 7; l_628 += 1)
                {
                    p_811->g_301[l_626][l_627[0][0][1]][l_628] = 0x7FE1C4F3AEBCEBD0L;
                }
            }
        }
        for (l_627[1][0][0] = 7; (l_627[1][0][0] != 10); l_627[1][0][0] = safe_add_func_uint16_t_u_u(l_627[1][0][0], 6))
        { /* block id: 398 */
            int32_t l_631 = 0L;
            int32_t l_632 = 0x2BF7DF2EL;
            int32_t l_633[6];
            uint32_t l_634 = 4294967295UL;
            int32_t *l_637 = &l_631;
            int32_t *l_638[9][2][2] = {{{&l_631,&l_632},{&l_631,&l_632}},{{&l_631,&l_632},{&l_631,&l_632}},{{&l_631,&l_632},{&l_631,&l_632}},{{&l_631,&l_632},{&l_631,&l_632}},{{&l_631,&l_632},{&l_631,&l_632}},{{&l_631,&l_632},{&l_631,&l_632}},{{&l_631,&l_632},{&l_631,&l_632}},{{&l_631,&l_632},{&l_631,&l_632}},{{&l_631,&l_632},{&l_631,&l_632}}};
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_633[i] = 0x2299FFD0L;
            ++l_634;
            l_638[2][1][1] = l_637;
            for (l_632 = 0; (l_632 <= 0); l_632 += 1)
            { /* block id: 403 */
                int64_t l_658 = 0x0334CD7F2AA4B7ABL;
                int i;
                (*l_637) = p_811->g_28[(l_632 + 7)];
                if (p_811->g_28[(l_632 + 5)])
                { /* block id: 405 */
                    int32_t l_639 = 0L;
                    int32_t l_640 = (-1L);
                    int32_t l_641 = 0x77331141L;
                    uint8_t l_642 = 9UL;
                    for (l_639 = 0; l_639 < 8; l_639 += 1)
                    {
                        for (l_640 = 0; l_640 < 1; l_640 += 1)
                        {
                            for (l_641 = 0; l_641 < 7; l_641 += 1)
                            {
                                p_811->g_155[l_639][l_640][l_641] = 0x7E9FL;
                            }
                        }
                    }
                    if (l_642)
                    { /* block id: 407 */
                        int32_t l_643 = 0x60AF58C8L;
                        int32_t *l_644 = (void*)0;
                        uint64_t l_645[4][5] = {{0x125B649391138061L,0x125B649391138061L,0x125B649391138061L,0x125B649391138061L,0x125B649391138061L},{0x125B649391138061L,0x125B649391138061L,0x125B649391138061L,0x125B649391138061L,0x125B649391138061L},{0x125B649391138061L,0x125B649391138061L,0x125B649391138061L,0x125B649391138061L,0x125B649391138061L},{0x125B649391138061L,0x125B649391138061L,0x125B649391138061L,0x125B649391138061L,0x125B649391138061L}};
                        int16_t l_648 = 0x6E36L;
                        int64_t l_649[6][6] = {{6L,0x3C3070BD34D7BBE1L,1L,0x6C99761205213CFDL,1L,0x3C3070BD34D7BBE1L},{6L,0x3C3070BD34D7BBE1L,1L,0x6C99761205213CFDL,1L,0x3C3070BD34D7BBE1L},{6L,0x3C3070BD34D7BBE1L,1L,0x6C99761205213CFDL,1L,0x3C3070BD34D7BBE1L},{6L,0x3C3070BD34D7BBE1L,1L,0x6C99761205213CFDL,1L,0x3C3070BD34D7BBE1L},{6L,0x3C3070BD34D7BBE1L,1L,0x6C99761205213CFDL,1L,0x3C3070BD34D7BBE1L},{6L,0x3C3070BD34D7BBE1L,1L,0x6C99761205213CFDL,1L,0x3C3070BD34D7BBE1L}};
                        int i, j;
                        p_811->g_221[(l_632 + 4)] = (l_638[5][0][0] = (l_643 , l_644));
                        l_645[0][3]++;
                        l_649[2][5] = l_648;
                    }
                    else
                    { /* block id: 412 */
                        int32_t l_651[9][5];
                        int32_t *l_650 = &l_651[3][2];
                        int i, j;
                        for (i = 0; i < 9; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_651[i][j] = 0x3A9E9D2EL;
                        }
                        l_638[2][1][1] = (l_650 = l_650);
                    }
                    for (l_642 = 1; (l_642 <= 5); l_642 += 1)
                    { /* block id: 418 */
                        uint32_t l_652 = 0x5C65652AL;
                        int i, j, k;
                        l_652 |= p_811->g_301[(l_632 + 1)][l_632][(l_632 + 5)];
                    }
                }
                else
                { /* block id: 421 */
                    struct S0 *l_653 = (void*)0;
                    int16_t l_654[8] = {0L,0x5EEFL,0L,0L,0x5EEFL,0L,0L,0x5EEFL};
                    uint16_t l_655[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_655[i] = 65535UL;
                    p_811->g_221[(l_632 + 4)] = (l_638[6][0][0] = (void*)0);
                    l_653 = (void*)0;
                    --l_655[2];
                }
                (*l_637) &= l_658;
                (*l_637) = (-8L);
                for (l_658 = 5; (l_658 >= 0); l_658 -= 1)
                { /* block id: 431 */
                    int32_t l_659 = 0x0AE5C679L;
                    struct S2 l_675 = {0x63F5869917F1A260L};
                    for (l_659 = 0; (l_659 <= 0); l_659 += 1)
                    { /* block id: 434 */
                        int32_t l_660 = (-7L);
                        int32_t *l_661[7][3] = {{&l_660,&l_660,&l_660},{&l_660,&l_660,&l_660},{&l_660,&l_660,&l_660},{&l_660,&l_660,&l_660},{&l_660,&l_660,&l_660},{&l_660,&l_660,&l_660},{&l_660,&l_660,&l_660}};
                        uint16_t l_662 = 0x4BD6L;
                        uint8_t l_665 = 0x78L;
                        int i, j, k;
                        p_811->g_221[(l_632 + 4)] = ((l_660 = p_811->g_301[l_632][l_659][(l_632 + 2)]) , l_661[2][0]);
                        --l_662;
                        l_665 &= p_811->g_301[(l_632 + 1)][l_659][(l_659 + 4)];
                    }
                    for (l_659 = 5; (l_659 >= 0); l_659 -= 1)
                    { /* block id: 442 */
                        uint32_t l_666 = 0x54CDE59FL;
                        uint32_t l_669 = 0x10588B0BL;
                        uint32_t l_670 = 0x1E0A69CDL;
                        int32_t l_674[1][7] = {{0x06FBE607L,0x06FBE607L,0x06FBE607L,0x06FBE607L,0x06FBE607L,0x06FBE607L,0x06FBE607L}};
                        int32_t *l_673[10][2][2] = {{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}},{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}},{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}},{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}},{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}},{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}},{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}},{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}},{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}},{{&l_674[0][6],&l_674[0][0]},{&l_674[0][6],&l_674[0][0]}}};
                        int i, j, k;
                        ++l_666;
                        l_669 |= 0x10D5ED99L;
                        --l_670;
                        p_811->g_221[(l_632 + 4)] = l_673[3][0][0];
                    }
                    l_675 = l_675;
                }
            }
        }
        l_680 = (l_679 = (l_678 = l_676));
        for (l_626 = (-4); (l_626 <= 23); l_626 = safe_add_func_int64_t_s_s(l_626, 5))
        { /* block id: 457 */
            int32_t l_683 = 0x72A769D9L;
            for (l_683 = 0; (l_683 == 2); ++l_683)
            { /* block id: 460 */
                int32_t l_686[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_686[i] = 1L;
                if (l_686[2])
                { /* block id: 461 */
                    int32_t l_688 = 0x6D466781L;
                    int32_t *l_687 = &l_688;
                    l_687 = (void*)0;
                }
                else
                { /* block id: 463 */
                    int32_t l_689 = 1L;
                    uint32_t l_700 = 0x6FA86F32L;
                    int32_t l_701 = 0x1193AC87L;
                    for (l_689 = 16; (l_689 > (-13)); l_689 = safe_sub_func_int16_t_s_s(l_689, 1))
                    { /* block id: 466 */
                        int64_t l_692 = 0x05A61D2693EBBCFFL;
                        int64_t l_693 = (-1L);
                        uint32_t l_694 = 0xBD6EFA89L;
                        int32_t l_698 = 0x0163427FL;
                        int32_t *l_697 = &l_698;
                        int32_t *l_699 = &l_698;
                        l_694++;
                        l_699 = l_697;
                    }
                    if ((l_700 , l_701))
                    { /* block id: 470 */
                        int32_t l_702 = (-1L);
                        int32_t *l_703 = &l_702;
                        int32_t *l_704 = &l_702;
                        int32_t *l_705 = (void*)0;
                        struct S2 l_706 = {0UL};
                        struct S2 l_707 = {18446744073709551615UL};
                        int32_t *l_708 = &l_702;
                        int32_t *l_709 = &l_702;
                        int16_t l_710[3][2] = {{0x65C7L,0x65C7L},{0x65C7L,0x65C7L},{0x65C7L,0x65C7L}};
                        uint32_t l_711 = 9UL;
                        struct S2 l_712 = {0xE989B70193C0F511L};
                        struct S2 l_713[5] = {{0x1B6A6F55CBDE3B52L},{0x1B6A6F55CBDE3B52L},{0x1B6A6F55CBDE3B52L},{0x1B6A6F55CBDE3B52L},{0x1B6A6F55CBDE3B52L}};
                        int i, j;
                        l_705 = (l_702 , (l_704 = (l_703 = (void*)0)));
                        l_709 = ((l_707 = l_706) , l_708);
                        l_627[0][0][0] &= (l_710[0][0] , l_711);
                        l_713[4] = l_712;
                    }
                    else
                    { /* block id: 478 */
                        int32_t l_715[9][10][2] = {{{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL}},{{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL}},{{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL}},{{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL}},{{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL}},{{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL}},{{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL}},{{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL}},{{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL},{(-1L),0x6535A75CL}}};
                        int32_t *l_714 = &l_715[6][4][1];
                        int32_t *l_716[2];
                        struct S1 l_718[5][7][7] = {{{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}}},{{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}}},{{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}}},{{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}}},{{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}},{{-1L,1L,1L,0x0D16514123436313L,0x5EL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0L,0x1912L,0x2BC2CD4EL,0L,-1L},{0x1359AC5F94A30182L,0x3ED2L,0L,0x71998E45581FFA7CL,0x1BL},{0x42C79ED2406BB833L,0x053FL,0L,-10L,0x00L}}}};
                        struct S1 *l_717 = &l_718[0][3][1];
                        struct S1 l_720 = {0L,0L,0x20DD06BBL,0L,1L};/* VOLATILE GLOBAL l_720 */
                        struct S1 *l_719 = &l_720;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_716[i] = &l_715[6][4][1];
                        l_716[0] = l_714;
                        l_701 ^= (l_686[2] ^= (l_627[0][0][1] ^= (-4L)));
                        l_719 = l_717;
                    }
                    for (l_700 = 1; (l_700 <= 5); l_700 += 1)
                    { /* block id: 487 */
                        uint8_t l_721 = 1UL;
                        int i;
                        l_686[2] = l_721;
                    }
                }
            }
        }
        unsigned int result = 0;
        result += l_626;
        int l_627_i0, l_627_i1, l_627_i2;
        for (l_627_i0 = 0; l_627_i0 < 2; l_627_i0++) {
            for (l_627_i1 = 0; l_627_i1 < 1; l_627_i1++) {
                for (l_627_i2 = 0; l_627_i2 < 2; l_627_i2++) {
                    result += l_627[l_627_i0][l_627_i1][l_627_i2];
                }
            }
        }
        result += l_628;
        atomic_add(&p_811->l_special_values[6], result);
    }
    else
    { /* block id: 493 */
        (1 + 1);
    }
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_811->g_74 p_811->g_281 p_811->g_173 p_811->g_174 p_811->g_222 p_811->g_221 p_811->g_35 p_811->g_3 p_811->g_372.f3 p_811->g_155
 * writes: p_811->g_74 p_811->g_111 p_811->g_464 p_811->g_465
 */
uint8_t  func_41(uint32_t  p_42, uint64_t  p_43, int32_t * p_44, struct S4 * p_811)
{ /* block id: 204 */
    uint16_t l_451 = 65535UL;
    struct S2 l_454 = {18446744073709551610UL};
    uint8_t *l_458[8] = {&p_811->g_156,&p_811->g_372.f1,&p_811->g_156,&p_811->g_156,&p_811->g_372.f1,&p_811->g_156,&p_811->g_156,&p_811->g_372.f1};
    int32_t l_459 = (-5L);
    int16_t *l_460 = &p_811->g_111;
    uint32_t l_461 = 0UL;
    uint64_t **l_463 = &p_811->g_173;
    uint64_t ***l_462[6];
    int i;
    for (i = 0; i < 6; i++)
        l_462[i] = &l_463;
    for (p_811->g_74 = (-25); (p_811->g_74 < (-27)); p_811->g_74--)
    { /* block id: 207 */
        uint64_t l_450 = 0x793FA9E70B9254E2L;
        (*p_44) &= (~l_450);
        return p_811->g_281;
    }
    l_451 |= (*p_44);
    p_811->g_465 = (p_811->g_464 = ((safe_mod_func_uint8_t_u_u(((l_454 , (l_454.f0 , l_454.f0)) < ((((((safe_lshift_func_uint8_t_u_u((~((*p_811->g_173) | (safe_unary_minus_func_uint32_t_u(p_811->g_281)))), (l_459 = ((&p_811->g_27 == &p_811->g_27) , l_451)))) & (((*l_460) = 0x10B3L) && l_461)) != l_454.f0) , 0UL) , GROUP_DIVERGE(0, 1)) , (**p_811->g_222))), p_811->g_372.f3)) , &p_811->g_173));
    if ((atomic_inc(&p_811->l_atomic_input[29]) == 6))
    { /* block id: 217 */
        int32_t l_466 = 0x2F378B94L;
        for (l_466 = 2; (l_466 >= 0); l_466 -= 1)
        { /* block id: 220 */
            int32_t l_467 = (-1L);
            int32_t l_468 = 0x4287E6B9L;
            int32_t l_469 = (-5L);
            uint16_t l_470 = 0x6C7CL;
            int16_t l_471 = 0x37BDL;
            int32_t l_472 = 0x18C2C62BL;
            int16_t l_473 = 1L;
            l_473 ^= (l_472 = (((l_468 = l_467) , l_469) , (l_471 &= l_470)));
            for (l_472 = 2; (l_472 >= 0); l_472 -= 1)
            { /* block id: 227 */
                uint32_t l_474 = 0x78786B0FL;
                int8_t l_475 = 0x7CL;
                uint16_t l_476 = 0x4C45L;
                l_468 = (l_469 |= l_474);
                l_476++;
                for (l_476 = 0; (l_476 <= 0); l_476 += 1)
                { /* block id: 233 */
                    int32_t l_479 = 0x29FD75BCL;
                    for (l_479 = 0; (l_479 >= 0); l_479 -= 1)
                    { /* block id: 236 */
                        uint64_t l_480 = 0x35977F893AB07864L;
                        struct S2 l_481 = {0xFAC8A0B1FB4913EBL};
                        struct S2 l_482 = {18446744073709551607UL};
                        struct S3 l_484 = {0xD3046DA3L,0xD3L,0x5BF0497E50DF66DEL,0x9F1DB8E8L};/* VOLATILE GLOBAL l_484 */
                        struct S3 *l_483 = &l_484;
                        struct S3 l_486[1][10] = {{{0x15C14BFAL,255UL,18446744073709551615UL,0xBCEBEFCDL},{0x9A8EF091L,0x5AL,1UL,0x2421495CL},{0x15C14BFAL,255UL,18446744073709551615UL,0xBCEBEFCDL},{0x15C14BFAL,255UL,18446744073709551615UL,0xBCEBEFCDL},{0x9A8EF091L,0x5AL,1UL,0x2421495CL},{0x15C14BFAL,255UL,18446744073709551615UL,0xBCEBEFCDL},{0x15C14BFAL,255UL,18446744073709551615UL,0xBCEBEFCDL},{0x9A8EF091L,0x5AL,1UL,0x2421495CL},{0x15C14BFAL,255UL,18446744073709551615UL,0xBCEBEFCDL},{0x15C14BFAL,255UL,18446744073709551615UL,0xBCEBEFCDL}}};
                        struct S3 *l_485[1];
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_485[i] = &l_486[0][5];
                        l_469 ^= l_480;
                        l_482 = (l_481 = l_481);
                        l_485[0] = (l_483 = (void*)0);
                    }
                }
            }
        }
        for (l_466 = 0; (l_466 < (-22)); l_466 = safe_sub_func_int8_t_s_s(l_466, 9))
        { /* block id: 248 */
            int32_t l_489 = 0L;
            uint16_t l_490 = 0x45FBL;
            uint32_t l_491 = 0xF8D3DD3FL;
            uint8_t l_492 = 3UL;
            int16_t l_493[3];
            int64_t l_494 = 0x7212DF36B078E373L;
            uint64_t l_495[1][6][5] = {{{0UL,0xD35B60EA2C054240L,0UL,0UL,0xD35B60EA2C054240L},{0UL,0xD35B60EA2C054240L,0UL,0UL,0xD35B60EA2C054240L},{0UL,0xD35B60EA2C054240L,0UL,0UL,0xD35B60EA2C054240L},{0UL,0xD35B60EA2C054240L,0UL,0UL,0xD35B60EA2C054240L},{0UL,0xD35B60EA2C054240L,0UL,0UL,0xD35B60EA2C054240L},{0UL,0xD35B60EA2C054240L,0UL,0UL,0xD35B60EA2C054240L}}};
            uint64_t l_496 = 0x32BDED5EE398F5E1L;
            uint64_t l_497 = 18446744073709551606UL;
            uint32_t l_498 = 4294967291UL;
            uint32_t l_499 = 0x27400BFCL;
            uint32_t l_500 = 4UL;
            uint32_t l_501 = 4294967295UL;
            uint16_t l_502 = 0xCC80L;
            int32_t l_503[5] = {1L,1L,1L,1L,1L};
            int32_t l_504 = 0x0AB21028L;
            int64_t l_588[10] = {1L,(-7L),(-6L),(-7L),1L,1L,(-7L),(-6L),(-7L),1L};
            int32_t l_589 = (-6L);
            uint16_t l_590[10][3][1] = {{{0xCB3BL},{0xCB3BL},{0xCB3BL}},{{0xCB3BL},{0xCB3BL},{0xCB3BL}},{{0xCB3BL},{0xCB3BL},{0xCB3BL}},{{0xCB3BL},{0xCB3BL},{0xCB3BL}},{{0xCB3BL},{0xCB3BL},{0xCB3BL}},{{0xCB3BL},{0xCB3BL},{0xCB3BL}},{{0xCB3BL},{0xCB3BL},{0xCB3BL}},{{0xCB3BL},{0xCB3BL},{0xCB3BL}},{{0xCB3BL},{0xCB3BL},{0xCB3BL}},{{0xCB3BL},{0xCB3BL},{0xCB3BL}}};
            int32_t l_591[6] = {3L,3L,3L,3L,3L,3L};
            int64_t l_592 = 0x08712375C305175DL;
            int8_t l_593[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
            struct S2 l_594 = {0x02BA42FC8B1BB89EL};
            uint8_t l_595 = 0xCAL;
            uint32_t l_596[3];
            uint8_t l_597 = 253UL;
            int32_t l_598 = 0x74BECFBCL;
            int8_t l_599 = 0x09L;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_493[i] = 0L;
            for (i = 0; i < 3; i++)
                l_596[i] = 0x33CE1135L;
            l_504 &= ((l_490 = l_489) , (l_503[2] |= (((l_498 = (l_497 = ((((l_491 , (l_493[2] ^= l_492)) , (l_494 , l_495[0][3][0])) , 0x3A61L) , (l_496 , 0x2FL)))) , ((l_500 = l_499) , l_501)) , l_502)));
            for (l_491 = 0; (l_491 > 45); l_491 = safe_add_func_int32_t_s_s(l_491, 1))
            { /* block id: 258 */
                uint16_t l_507 = 0xC3ECL;
                uint16_t l_508 = 0UL;
                int64_t l_511 = 0x50863AA6C696A2A7L;
                int64_t *l_510 = &l_511;
                int64_t **l_509 = &l_510;
                int64_t **l_512 = (void*)0;
                int64_t **l_513 = &l_510;
                int32_t l_515 = (-3L);
                int32_t *l_514[7][1][2];
                int32_t *l_516 = &l_515;
                int i, j, k;
                for (i = 0; i < 7; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_514[i][j][k] = &l_515;
                    }
                }
                l_513 = (l_512 = (l_507 , (l_508 , l_509)));
                l_503[2] = 2L;
                l_516 = (l_514[1][0][1] = (void*)0);
            }
            for (l_499 = 0; (l_499 <= 0); l_499 += 1)
            { /* block id: 267 */
                struct S2 l_517 = {0xDEE8FF116AD3868BL};
                int32_t l_535 = (-1L);
                int8_t l_536[4][5][10] = {{{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL}},{{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL}},{{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL}},{{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL},{(-10L),0x3AL,0x6EL,0x4AL,0x3AL,6L,0x36L,0x36L,6L,0x3AL}}};
                int8_t l_537[9] = {0x74L,0x74L,0x74L,0x74L,0x74L,0x74L,0x74L,0x74L,0x74L};
                uint16_t l_538 = 9UL;
                int i, j, k;
                l_517 = l_517;
                for (l_517.f0 = 1; (l_517.f0 <= 7); l_517.f0 += 1)
                { /* block id: 271 */
                    int32_t l_518 = 0x1D3F3D24L;
                    for (l_518 = 0; (l_518 >= 0); l_518 -= 1)
                    { /* block id: 274 */
                        int32_t l_520 = 0L;
                        int32_t *l_519 = &l_520;
                        uint32_t l_521 = 0x08A267F2L;
                        struct S2 l_522 = {0x30C439706E02A590L};
                        struct S2 l_523 = {0x9DE2C09355D67F0AL};
                        struct S2 l_524 = {18446744073709551615UL};
                        int16_t l_525 = (-1L);
                        uint16_t l_526 = 0x2155L;
                        uint16_t l_527 = 0xDC82L;
                        int32_t l_530 = (-2L);
                        struct S2 l_531 = {0UL};
                        struct S2 l_532 = {18446744073709551615UL};
                        l_519 = l_519;
                        l_524 = (l_523 = (l_521 , l_522));
                        l_532 = ((l_525 , (l_526 , (l_494 = (l_527 , ((l_490++) , l_530))))) , l_531);
                    }
                    l_518 ^= 4L;
                    for (l_518 = 0; (l_518 <= 0); l_518 += 1)
                    { /* block id: 285 */
                        struct S2 l_533 = {4UL};
                        struct S2 l_534 = {3UL};
                        l_534 = l_533;
                    }
                }
                l_538++;
                for (l_537[5] = 0; (l_537[5] >= 0); l_537[5] -= 1)
                { /* block id: 292 */
                    uint8_t l_541[6][4] = {{0x7EL,1UL,0x7EL,0x7EL},{0x7EL,1UL,0x7EL,0x7EL},{0x7EL,1UL,0x7EL,0x7EL},{0x7EL,1UL,0x7EL,0x7EL},{0x7EL,1UL,0x7EL,0x7EL},{0x7EL,1UL,0x7EL,0x7EL}};
                    int64_t l_542 = (-1L);
                    int i, j;
                    l_489 = l_541[0][3];
                    if (l_542)
                    { /* block id: 294 */
                        struct S2 l_543 = {0x9E26D52023B69F65L};
                        struct S2 l_544 = {18446744073709551607UL};
                        int32_t l_545 = 0x7DEFACEAL;
                        uint64_t l_546[2];
                        int32_t *l_547 = (void*)0;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_546[i] = 1UL;
                        l_543 = (l_544 = (l_517 = l_543));
                        l_546[0] ^= l_545;
                        l_547 = (void*)0;
                    }
                    else
                    { /* block id: 300 */
                        int32_t l_548[9][1] = {{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}};
                        int i, j;
                        l_503[3] = l_548[6][0];
                    }
                    for (l_541[5][0] = 0; (l_541[5][0] <= 7); l_541[5][0] += 1)
                    { /* block id: 305 */
                        int64_t l_549 = 0x60C4F633D6C0F59BL;
                        int64_t l_550 = 0x26D95FD035F5984CL;
                        int16_t l_551 = (-1L);
                        uint16_t l_552 = 0xA14DL;
                        int32_t l_556 = 0L;
                        int32_t *l_555 = &l_556;
                        int32_t *l_557 = &l_556;
                        ++l_552;
                        l_504 = 0x06AB464DL;
                        l_557 = l_555;
                    }
                    for (l_541[2][1] = 0; (l_541[2][1] <= 0); l_541[2][1] += 1)
                    { /* block id: 312 */
                        uint8_t l_558 = 0xDBL;
                        uint8_t l_559[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_559[i] = 0xF6L;
                        l_559[1] ^= l_558;
                    }
                }
                for (l_538 = 0; (l_538 <= 0); l_538 += 1)
                { /* block id: 318 */
                    uint16_t l_560 = 0UL;
                    uint32_t l_572 = 0x87C7F6C2L;
                    uint16_t l_573 = 0x7D08L;
                    if (l_560)
                    { /* block id: 319 */
                        uint16_t l_561 = 65534UL;
                        l_561++;
                    }
                    else
                    { /* block id: 321 */
                        int32_t l_565 = (-4L);
                        int32_t *l_564 = &l_565;
                        int32_t *l_566 = &l_565;
                        struct S2 l_567 = {1UL};
                        struct S2 l_568 = {18446744073709551606UL};
                        uint16_t l_569 = 65533UL;
                        struct S2 l_570 = {9UL};
                        l_566 = l_564;
                        l_517 = (((l_568 = l_567) , (l_536[3][2][6] |= l_569)) , l_570);
                    }
                    for (l_560 = 0; (l_560 <= 0); l_560 += 1)
                    { /* block id: 329 */
                        uint32_t l_571 = 9UL;
                        l_504 = l_571;
                    }
                    l_504 = l_572;
                    if (l_573)
                    { /* block id: 333 */
                        uint32_t l_574 = 0xAC5786ECL;
                        l_574--;
                    }
                    else
                    { /* block id: 335 */
                        uint32_t l_577 = 0x4387DB89L;
                        int32_t l_578 = 8L;
                        int16_t l_579 = 5L;
                        int32_t l_580 = 0x687B4F94L;
                        struct S2 l_581 = {7UL};
                        uint8_t l_582 = 9UL;
                        int8_t l_583 = (-6L);
                        uint32_t l_584[9][4][7] = {{{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L}},{{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L}},{{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L}},{{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L}},{{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L}},{{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L}},{{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L}},{{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L}},{{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L},{0xBAE2C0CBL,0xBAE2C0CBL,0xA0E8CB08L,0x9F73C69CL,1UL,0x9F73C69CL,0xA0E8CB08L}}};
                        int32_t l_585 = 0L;
                        int64_t l_586[4];
                        struct S2 l_587 = {18446744073709551608UL};
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_586[i] = 0x76AE9000739EA18FL;
                        l_503[4] = ((l_578 &= l_577) , ((l_579 , 0x5F74DBE3L) , 0x045E3C16L));
                        l_580 = 0x14F38F2EL;
                        l_581 = l_581;
                        l_517 = (((l_584[3][0][4] = (l_582 , l_583)) , ((l_585 , 0x9272B65D93255C6DL) , (l_500 = l_586[0]))) , l_587);
                    }
                }
            }
            if ((l_599 = (l_598 |= (l_588[8] , ((l_590[1][1][0] = l_589) , (((l_591[4] , l_592) , (l_593[5] , l_594)) , (l_595 , (l_597 &= (l_596[0] , (-1L))))))))))
            { /* block id: 350 */
                uint8_t l_600 = 0x84L;
                uint8_t l_601[10][4] = {{0x53L,0x53L,2UL,0xFDL},{0x53L,0x53L,2UL,0xFDL},{0x53L,0x53L,2UL,0xFDL},{0x53L,0x53L,2UL,0xFDL},{0x53L,0x53L,2UL,0xFDL},{0x53L,0x53L,2UL,0xFDL},{0x53L,0x53L,2UL,0xFDL},{0x53L,0x53L,2UL,0xFDL},{0x53L,0x53L,2UL,0xFDL},{0x53L,0x53L,2UL,0xFDL}};
                uint32_t l_602[7];
                uint8_t l_603 = 246UL;
                uint32_t l_604 = 0x8FD61381L;
                int16_t l_605 = 0x3BF8L;
                int32_t l_607 = 0x47FBBBF4L;
                int32_t *l_606[4] = {&l_607,&l_607,&l_607,&l_607};
                struct S2 l_622 = {0x7F6741D53A394C9FL};
                int i, j;
                for (i = 0; i < 7; i++)
                    l_602[i] = 0x7A7B4074L;
                l_503[3] &= (((l_600 , l_601[0][3]) , (l_602[4] , l_603)) , ((l_597 = l_604) , (l_605 = 1L)));
                l_606[2] = (void*)0;
                for (l_605 = 0; (l_605 < 22); l_605++)
                { /* block id: 357 */
                    int32_t l_610[10] = {0x5D115BE0L,0x5D115BE0L,0x5D115BE0L,0x5D115BE0L,0x5D115BE0L,0x5D115BE0L,0x5D115BE0L,0x5D115BE0L,0x5D115BE0L,0x5D115BE0L};
                    int32_t l_620[10] = {0x4A64098DL,0x10A1887BL,0x4A64098DL,0x4A64098DL,0x10A1887BL,0x4A64098DL,0x4A64098DL,0x10A1887BL,0x4A64098DL,0x4A64098DL};
                    uint16_t l_621 = 1UL;
                    int i;
                    for (l_610[1] = 6; (l_610[1] > (-23)); l_610[1]--)
                    { /* block id: 360 */
                        uint32_t l_613 = 4294967295UL;
                        int8_t l_614 = (-1L);
                        int32_t l_615 = 0x234E18AEL;
                        int16_t l_616 = 0L;
                        uint16_t l_617 = 65535UL;
                        int32_t *l_618[6][4] = {{&l_615,&l_615,&l_615,&l_615},{&l_615,&l_615,&l_615,&l_615},{&l_615,&l_615,&l_615,&l_615},{&l_615,&l_615,&l_615,&l_615},{&l_615,&l_615,&l_615,&l_615},{&l_615,&l_615,&l_615,&l_615}};
                        int32_t *l_619 = (void*)0;
                        int i, j;
                        l_613 ^= (-1L);
                        l_619 = (l_614 , (((l_616 = l_615) , l_617) , l_618[3][1]));
                    }
                    l_621 &= l_620[2];
                    l_610[1] &= (-1L);
                }
                l_594 = l_622;
            }
            else
            { /* block id: 369 */
                int32_t l_623 = 0x339A49AFL;
                for (l_623 = 0; (l_623 >= 0); l_623 -= 1)
                { /* block id: 372 */
                    int i;
                    l_589 = l_588[(l_623 + 4)];
                    for (l_588[(l_623 + 4)] = 0; (l_588[(l_623 + 4)] >= 0); l_588[(l_623 + 4)] -= 1)
                    { /* block id: 376 */
                        int8_t l_624 = 0x51L;
                        int i;
                        l_624 |= l_588[(l_588[(l_623 + 4)] + 8)];
                    }
                    for (l_588[(l_623 + 4)] = 0; (l_588[(l_623 + 4)] <= 0); l_588[(l_623 + 4)] += 1)
                    { /* block id: 381 */
                        int i, j, k;
                        l_589 &= p_811->g_155[l_623][l_623][(l_588[(l_623 + 4)] + 6)];
                    }
                }
            }
        }
        unsigned int result = 0;
        result += l_466;
        atomic_add(&p_811->l_special_values[29], result);
    }
    else
    { /* block id: 387 */
        (1 + 1);
    }
    return p_811->g_35[8][8][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_811->g_236 p_811->g_35 p_811->g_109 p_811->g_119 p_811->g_114 p_811->g_173 p_811->g_174 p_811->g_3 p_811->g_167 p_811->g_156 p_811->g_222 p_811->g_221 p_811->g_27 p_811->g_372.f3 p_811->g_74 p_811->g_372.f1 p_811->g_111
 * writes: p_811->g_155 p_811->g_35 p_811->g_156 p_811->g_281 p_811->g_167 p_811->g_74 p_811->g_119 p_811->g_28 p_811->g_301 p_811->g_114 p_811->g_221 p_811->g_236 p_811->g_27 p_811->g_111 p_811->g_420 p_811->g_174
 */
uint32_t  func_45(int64_t  p_46, uint32_t * p_47, int32_t * p_48, struct S4 * p_811)
{ /* block id: 104 */
    int16_t *l_270 = &p_811->g_155[5][0][2];
    int32_t l_271 = (-1L);
    uint64_t *l_276[5][7][7] = {{{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174}},{{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174}},{{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174}},{{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174}},{{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174},{(void*)0,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174,&p_811->g_174}}};
    uint8_t *l_277 = (void*)0;
    uint8_t *l_278 = &p_811->g_156;
    uint16_t *l_279 = (void*)0;
    uint16_t *l_280 = &p_811->g_281;
    uint32_t *l_294 = &p_811->g_167;
    uint32_t **l_293[7][9];
    int32_t l_302 = 0x64BAFBCAL;
    int32_t l_367[10] = {0L,0x468E787BL,0L,0L,0x468E787BL,0L,0L,0x468E787BL,0L,0L};
    struct S2 l_394 = {0xFBB8F9924089EBD8L};
    int8_t l_404 = 0x0FL;
    int32_t l_405 = 0L;
    int64_t l_408 = 0x312A204C59201076L;
    uint64_t l_409[6][9] = {{0x7F4B41BA9506EB00L,0x8695234D1C0B6F4EL,0x9E4853E7A9092769L,1UL,0x9E4853E7A9092769L,0x8695234D1C0B6F4EL,0x7F4B41BA9506EB00L,0xC62D8CD8AD79E376L,0xEC07BF87E581DF5CL},{0x7F4B41BA9506EB00L,0x8695234D1C0B6F4EL,0x9E4853E7A9092769L,1UL,0x9E4853E7A9092769L,0x8695234D1C0B6F4EL,0x7F4B41BA9506EB00L,0xC62D8CD8AD79E376L,0xEC07BF87E581DF5CL},{0x7F4B41BA9506EB00L,0x8695234D1C0B6F4EL,0x9E4853E7A9092769L,1UL,0x9E4853E7A9092769L,0x8695234D1C0B6F4EL,0x7F4B41BA9506EB00L,0xC62D8CD8AD79E376L,0xEC07BF87E581DF5CL},{0x7F4B41BA9506EB00L,0x8695234D1C0B6F4EL,0x9E4853E7A9092769L,1UL,0x9E4853E7A9092769L,0x8695234D1C0B6F4EL,0x7F4B41BA9506EB00L,0xC62D8CD8AD79E376L,0xEC07BF87E581DF5CL},{0x7F4B41BA9506EB00L,0x8695234D1C0B6F4EL,0x9E4853E7A9092769L,1UL,0x9E4853E7A9092769L,0x8695234D1C0B6F4EL,0x7F4B41BA9506EB00L,0xC62D8CD8AD79E376L,0xEC07BF87E581DF5CL},{0x7F4B41BA9506EB00L,0x8695234D1C0B6F4EL,0x9E4853E7A9092769L,1UL,0x9E4853E7A9092769L,0x8695234D1C0B6F4EL,0x7F4B41BA9506EB00L,0xC62D8CD8AD79E376L,0xEC07BF87E581DF5CL}};
    uint32_t l_421 = 1UL;
    uint32_t l_435 = 7UL;
    int i, j, k;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
            l_293[i][j] = &l_294;
    }
    if ((l_271 = (((((*l_270) = p_811->g_236) && p_46) <= ((p_46 , p_46) <= ((*l_280) = (((*p_47) |= 4294967295UL) > ((((p_811->g_109[2] && l_271) , ((((safe_mul_func_int8_t_s_s((safe_div_func_uint64_t_u_u((((*l_278) = (l_276[2][2][6] != (void*)0)) >= p_811->g_119), p_46)), p_811->g_119)) && l_271) ^ p_46) , p_811->g_114)) | (*p_811->g_173)) > p_811->g_109[2]))))) <= p_811->g_3[0])))
    { /* block id: 110 */
        int8_t l_286 = (-1L);
        int64_t *l_299 = (void*)0;
        int64_t *l_300[1][7] = {{&p_811->g_301[3][0][5],(void*)0,&p_811->g_301[3][0][5],&p_811->g_301[3][0][5],(void*)0,&p_811->g_301[3][0][5],&p_811->g_301[3][0][5]}};
        int8_t *l_303 = (void*)0;
        int8_t *l_304[2];
        int32_t l_305[2][6][1];
        int32_t *l_306 = &p_811->g_114;
        int32_t *l_337 = &l_271;
        int32_t *l_338 = &l_271;
        int32_t *l_339[10] = {&p_811->g_114,&l_302,&p_811->g_74,&l_302,&p_811->g_114,&p_811->g_114,&l_302,&p_811->g_74,&l_302,&p_811->g_114};
        uint32_t l_340 = 0x0D7941CDL;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_304[i] = (void*)0;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 1; k++)
                    l_305[i][j][k] = 1L;
            }
        }
        for (p_811->g_167 = 0; (p_811->g_167 > 13); p_811->g_167++)
        { /* block id: 113 */
            int16_t *l_287 = &p_811->g_111;
            int32_t l_292 = (-10L);
            for (p_811->g_74 = 0; (p_811->g_74 > (-2)); p_811->g_74 = safe_sub_func_uint64_t_u_u(p_811->g_74, 1))
            { /* block id: 116 */
                int16_t **l_288 = (void*)0;
                int16_t **l_289 = (void*)0;
                int16_t **l_290 = &l_270;
                int32_t *l_291 = &l_271;
                if (l_286)
                    break;
                (*l_291) &= (&p_811->g_155[5][0][2] != ((*l_290) = l_287));
                for (p_811->g_119 = 0; p_811->g_119 < 9; p_811->g_119 += 1)
                {
                    p_811->g_28[p_811->g_119] = 0x5EL;
                }
            }
            l_271 ^= l_292;
        }
        (*l_306) = ((((*l_278) = (p_811->g_156 | l_286)) > (l_305[1][1][0] = (p_811->g_28[6] = ((((((((((((p_46 , l_293[4][7]) != &p_47) != p_811->g_167) , 0x5E378C8CL) < ((safe_add_func_uint32_t_u_u((&p_811->g_28[8] == ((p_811->g_301[3][0][5] = (l_271 |= ((((safe_mod_func_uint64_t_u_u(0xAB868E2F51524634L, l_286)) & p_46) , p_46) , p_811->g_3[0]))) , (void*)0)), 0x33EA5518L)) >= 4294967295UL)) , 0x3705L) < l_302) || (*p_48)) | p_46) <= (-1L)) , (*p_48)) ^ l_286)))) ^ 0x33L);
        for (p_811->g_114 = 6; (p_811->g_114 != 20); p_811->g_114++)
        { /* block id: 132 */
            if ((atomic_inc(&p_811->g_atomic_input[93 * get_linear_group_id() + 69]) == 7))
            { /* block id: 134 */
                int32_t l_310 = 0x1C09D9CEL;
                int32_t *l_309 = &l_310;
                int32_t *l_311 = &l_310;
                int32_t *l_312 = &l_310;
                int32_t l_313 = 0x38604469L;
                l_312 = (l_311 = l_309);
                l_313 = (-1L);
                for (l_310 = 0; (l_310 <= 4); l_310 += 1)
                { /* block id: 140 */
                    int32_t l_314 = (-1L);
                    uint16_t l_315 = 0x06CBL;
                    int8_t l_316 = (-1L);
                    uint16_t l_317 = 3UL;
                    uint16_t l_321 = 0x8925L;
                    struct S3 l_323 = {4294967289UL,255UL,0x16409956FB4428B0L,5UL};/* VOLATILE GLOBAL l_323 */
                    struct S3 *l_322 = &l_323;
                    struct S3 l_325[8][10][3] = {{{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}}},{{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}}},{{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}}},{{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}}},{{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}}},{{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}}},{{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}}},{{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}},{{0x6365F0ABL,252UL,0x26790ED09D8D0A3EL,0x33E6D1F9L},{0x4D49AD83L,0x09L,0x1EE4678E7F8176E4L,0x3C7EC9C1L},{4294967287UL,0xD4L,0x9802F6E727C3F0ADL,0x424A25B0L}}}};
                    struct S3 *l_324 = &l_325[2][5][2];
                    struct S3 l_327 = {0xE802F9AFL,0xDFL,0UL,0x6088D385L};/* VOLATILE GLOBAL l_327 */
                    struct S3 l_328 = {0xADA17A87L,0x11L,0xFF33B2AC8EA3E985L,4294967290UL};/* VOLATILE GLOBAL l_328 */
                    struct S3 *l_326[8] = {&l_328,(void*)0,&l_328,&l_328,(void*)0,&l_328,&l_328,(void*)0};
                    int i, j, k;
                    l_314 = l_314;
                    l_314 = ((l_315 ^= 9L) , (l_316 , (l_313 = l_317)));
                    for (l_315 = 0; (l_315 <= 4); l_315 += 1)
                    { /* block id: 147 */
                        uint32_t l_318[10];
                        int32_t l_320 = 3L;
                        int32_t *l_319 = &l_320;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_318[i] = 0xE90F8A7AL;
                        l_319 = ((l_318[3] &= FAKE_DIVERGE(p_811->local_2_offset, get_local_id(2), 10)) , (l_309 = (void*)0));
                    }
                    l_326[5] = ((((l_321 , 9L) , 0x6C06545EL) , 0x0094L) , (l_324 = l_322));
                    for (l_325[2][5][2].f1 = 1; (l_325[2][5][2].f1 <= 4); l_325[2][5][2].f1 += 1)
                    { /* block id: 156 */
                        int8_t l_329[4][10] = {{(-3L),(-8L),3L,4L,(-8L),4L,3L,(-8L),(-3L),(-3L)},{(-3L),(-8L),3L,4L,(-8L),4L,3L,(-8L),(-3L),(-3L)},{(-3L),(-8L),3L,4L,(-8L),4L,3L,(-8L),(-3L),(-3L)},{(-3L),(-8L),3L,4L,(-8L),4L,3L,(-8L),(-3L),(-3L)}};
                        int32_t *l_330 = (void*)0;
                        uint8_t l_331 = 249UL;
                        uint16_t l_332 = 0xD130L;
                        struct S2 l_333 = {18446744073709551614UL};
                        struct S2 l_334[8][6][2] = {{{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}}},{{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}}},{{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}}},{{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}}},{{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}}},{{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}}},{{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}}},{{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}},{{0x424F0DD814FB9CD5L},{0UL}}}};
                        uint8_t l_335 = 253UL;
                        int32_t l_336 = 0x75B7889BL;
                        int i, j, k;
                        l_311 = (l_329[3][5] , l_330);
                        l_313 = l_331;
                        l_336 = ((l_332 , (l_334[1][5][0] = l_333)) , l_335);
                    }
                }
                unsigned int result = 0;
                result += l_310;
                result += l_313;
                atomic_add(&p_811->g_special_values[93 * get_linear_group_id() + 69], result);
            }
            else
            { /* block id: 163 */
                (1 + 1);
            }
            return p_46;
        }
        l_340++;
    }
    else
    { /* block id: 169 */
        uint64_t l_353 = 0UL;
        int16_t l_366 = 0x4AC9L;
        struct S3 *l_371 = &p_811->g_372;
        struct S2 l_387 = {18446744073709551610UL};
        int8_t *l_388[9];
        uint8_t l_389 = 1UL;
        int32_t l_390 = 0x6FAD5F02L;
        int32_t l_391[8][9][3] = {{{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L}},{{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L}},{{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L}},{{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L}},{{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L}},{{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L}},{{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L}},{{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L},{0L,0x7AB8D0D7L,0L}}};
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_388[i] = &p_811->g_28[7];
        l_367[2] ^= ((safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s(p_811->g_109[2], (safe_mul_func_uint16_t_u_u(l_302, p_46)))), (safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_811->global_0_offset, get_global_id(0), 10), ((l_353 & (-10L)) ^ (safe_mod_func_uint32_t_u_u((safe_sub_func_int8_t_s_s((l_271 , p_811->g_109[2]), (safe_sub_func_uint16_t_u_u(((*l_280) = (safe_mul_func_uint8_t_u_u((p_46 , (safe_mul_func_int16_t_s_s((safe_add_func_int64_t_s_s((l_353 ^ p_46), FAKE_DIVERGE(p_811->local_2_offset, get_local_id(2), 10))), FAKE_DIVERGE(p_811->local_0_offset, get_local_id(0), 10)))), 0UL))), l_353)))), l_366))))))), 0x535647788956F821L)) , 0x06C3EFA7L);
        l_391[5][1][1] = (((!((**p_811->g_222) == ((safe_unary_minus_func_uint16_t_u((((safe_div_func_int64_t_s_s((l_371 == (void*)0), (l_390 |= (safe_mod_func_int64_t_s_s(((safe_add_func_int8_t_s_s((l_389 = (l_302 != ((p_811->g_28[3] = ((safe_lshift_func_int8_t_s_u(p_46, 5)) ^ ((((safe_mod_func_uint16_t_u_u(((0x7876177223381966L | (l_367[7] |= (safe_div_func_uint16_t_u_u(((l_270 = l_280) == l_279), (safe_sub_func_uint32_t_u_u((safe_add_func_uint8_t_u_u(((l_387 = p_811->g_27) , 249UL), (-6L))), 4294967295UL)))))) > l_302), 6L)) < (*p_811->g_173)) , p_46) >= 0x47472B2021810280L))) && p_811->g_372.f3))), 0xEBL)) | (-9L)), p_46))))) | p_46) ^ 0x151A34B9L))) ^ p_811->g_74))) , l_389) < 1L);
    }
    (*p_811->g_222) = (*p_811->g_222);
    for (p_811->g_236 = 0; (p_811->g_236 != 18); p_811->g_236++)
    { /* block id: 183 */
        struct S2 *l_395 = &l_394;
        struct S2 *l_396 = &p_811->g_27;
        int32_t *l_397 = &l_367[2];
        int32_t *l_398 = &l_302;
        int32_t *l_399 = &l_367[2];
        int32_t *l_400 = (void*)0;
        int32_t *l_401 = &l_302;
        int32_t *l_402 = &p_811->g_74;
        int32_t *l_403[5];
        int32_t l_406 = 0x2EFFAAB6L;
        int8_t l_407 = (-1L);
        int i;
        for (i = 0; i < 5; i++)
            l_403[i] = (void*)0;
        (*l_396) = ((*l_395) = l_394);
        l_409[5][8]--;
    }
    if ((((safe_rshift_func_uint8_t_u_s(((safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((0xF7L == (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_811->local_0_offset, get_local_id(0), 10), (((p_811->g_420 = ((*l_270) = 0x2196L)) | 5L) <= ((((*p_811->g_173) = (8UL & l_421)) <= (safe_mul_func_int16_t_s_s(((p_46 || ((l_408 < (*p_48)) | ((((p_47 != (void*)0) ^ p_811->g_236) <= 0x553A53AFL) ^ l_409[1][6]))) >= 0UL), (-1L)))) | (**p_811->g_222)))))), 0x13L)), p_46)) | p_46), p_811->g_372.f1)) != 65526UL) > 0x5CF5D54BL))
    { /* block id: 191 */
        uint16_t l_426 = 2UL;
        int32_t l_427 = 0x74353DB9L;
        int32_t *l_428 = &p_811->g_114;
        int32_t *l_429 = &l_367[1];
        int32_t *l_430 = &p_811->g_74;
        int32_t *l_431 = (void*)0;
        int32_t *l_432 = &l_302;
        int32_t *l_433[6][3];
        int32_t l_434 = 0x4F19FA7DL;
        int i, j;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 3; j++)
                l_433[i][j] = &p_811->g_119;
        }
        if ((atomic_inc(&p_811->g_atomic_input[93 * get_linear_group_id() + 74]) == 0))
        { /* block id: 193 */
            int32_t l_424 = 0x5E16D389L;
            int16_t l_425 = 0x542AL;
            l_425 = l_424;
            unsigned int result = 0;
            result += l_424;
            result += l_425;
            atomic_add(&p_811->g_special_values[93 * get_linear_group_id() + 74], result);
        }
        else
        { /* block id: 195 */
            (1 + 1);
        }
        l_426 = (*p_48);
        l_435++;
    }
    else
    { /* block id: 200 */
        int32_t *l_438 = &p_811->g_119;
        int32_t l_439[3][8][3] = {{{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL}},{{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL}},{{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL},{0x5FE5AC88L,0x5FE5AC88L,0x146269CCL}}};
        int32_t *l_440 = &l_367[2];
        int32_t *l_441 = &p_811->g_74;
        int32_t *l_442 = (void*)0;
        int32_t *l_443 = &l_302;
        int32_t *l_444[9][5] = {{&p_811->g_3[0],&l_439[2][1][2],&l_367[2],&l_367[2],&l_367[2]},{&p_811->g_3[0],&l_439[2][1][2],&l_367[2],&l_367[2],&l_367[2]},{&p_811->g_3[0],&l_439[2][1][2],&l_367[2],&l_367[2],&l_367[2]},{&p_811->g_3[0],&l_439[2][1][2],&l_367[2],&l_367[2],&l_367[2]},{&p_811->g_3[0],&l_439[2][1][2],&l_367[2],&l_367[2],&l_367[2]},{&p_811->g_3[0],&l_439[2][1][2],&l_367[2],&l_367[2],&l_367[2]},{&p_811->g_3[0],&l_439[2][1][2],&l_367[2],&l_367[2],&l_367[2]},{&p_811->g_3[0],&l_439[2][1][2],&l_367[2],&l_367[2],&l_367[2]},{&p_811->g_3[0],&l_439[2][1][2],&l_367[2],&l_367[2],&l_367[2]}};
        uint32_t l_445 = 0UL;
        int i, j, k;
        l_445--;
    }
    return p_811->g_111;
}


/* ------------------------------------------ */
/* 
 * reads : p_811->g_35 p_811->g_27.f0 p_811->g_28 p_811->g_3 p_811->g_74 p_811->g_111 p_811->g_119 p_811->g_109 p_811->g_114 p_811->g_156 p_811->g_167 p_811->g_173 p_811->g_155 p_811->g_222 p_811->g_221
 * writes: p_811->g_28 p_811->g_27.f0 p_811->g_74 p_811->g_109 p_811->g_114 p_811->g_119 p_811->g_156 p_811->g_167 p_811->g_220 p_811->g_236 p_811->g_221
 */
int32_t  func_51(uint64_t  p_52, uint32_t * p_53, uint32_t * p_54, struct S4 * p_811)
{ /* block id: 14 */
    int32_t l_67 = 0x58348F9EL;
    int8_t *l_68 = &p_811->g_28[6];
    uint32_t l_77 = 0xB81C666DL;
    int32_t l_112 = 1L;
    int64_t l_138 = 0L;
    int32_t l_149 = 0L;
    int32_t l_152 = 0x48BB85DCL;
    int32_t l_153[3][8] = {{9L,(-1L),(-1L),9L,9L,(-1L),(-1L),9L},{9L,(-1L),(-1L),9L,9L,(-1L),(-1L),9L},{9L,(-1L),(-1L),9L,9L,(-1L),(-1L),9L}};
    int16_t l_165[3][8] = {{0x356AL,0x5B37L,0x5B37L,0x356AL,0x356AL,0x5B37L,0x5B37L,0x356AL},{0x356AL,0x5B37L,0x5B37L,0x356AL,0x356AL,0x5B37L,0x5B37L,0x356AL},{0x356AL,0x5B37L,0x5B37L,0x356AL,0x356AL,0x5B37L,0x5B37L,0x356AL}};
    int32_t l_199[5][6][8] = {{{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L}},{{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L}},{{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L}},{{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L}},{{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L},{0x01C82AA6L,0x134282E3L,1L,(-6L),0x04555042L,0x264947CCL,0x264947CCL,0x04555042L}}};
    int32_t **l_219 = (void*)0;
    uint32_t *l_261 = (void*)0;
    uint32_t **l_260 = &l_261;
    uint64_t l_266 = 18446744073709551610UL;
    int16_t *l_267 = &l_165[0][5];
    int i, j, k;
    if ((safe_sub_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(3UL, (safe_mod_func_int64_t_s_s(func_61(p_52, p_811), ((safe_lshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u(((&p_811->g_3[0] == (func_61(l_67, p_811) , (void*)0)) < ((l_67 , ((*l_68) = (0x5785L || l_67))) ^ l_67)), p_811->g_35[1][7][2])), 8)) , l_67))))), p_52)))
    { /* block id: 18 */
        int32_t *l_80 = &p_811->g_74;
        int8_t *l_88[3];
        uint8_t l_108 = 249UL;
        int32_t l_150 = (-5L);
        int32_t l_151 = (-3L);
        int32_t l_154[1][8] = {{0x5C9A5513L,0x5C9A5513L,0x5C9A5513L,0x5C9A5513L,0x5C9A5513L,0x5C9A5513L,0x5C9A5513L,0x5C9A5513L}};
        uint64_t l_162 = 0x7F2CB1EAEA306168L;
        uint64_t *l_172 = &l_162;
        struct S2 l_194 = {0x6210C82DC3F19709L};
        uint32_t l_206[6] = {4294967295UL,0x7BD2AB77L,4294967295UL,4294967295UL,0x7BD2AB77L,4294967295UL};
        int i, j;
        for (i = 0; i < 3; i++)
            l_88[i] = &p_811->g_28[6];
        if ((p_52 == p_811->g_27.f0))
        { /* block id: 19 */
            int32_t **l_89 = &l_80;
            uint64_t l_113 = 0xE32D400D3BC806AAL;
            for (p_52 = (-7); (p_52 != 43); p_52++)
            { /* block id: 22 */
                int16_t *l_110[4] = {&p_811->g_111,&p_811->g_111,&p_811->g_111,&p_811->g_111};
                int32_t *l_118 = &p_811->g_119;
                uint8_t l_122 = 0x3BL;
                int8_t l_134 = 0x2FL;
                uint8_t *l_141 = (void*)0;
                uint8_t *l_142 = &l_122;
                int32_t *l_145 = (void*)0;
                int32_t *l_146 = (void*)0;
                int32_t *l_147 = (void*)0;
                int i;
                for (l_67 = 23; (l_67 >= (-7)); --l_67)
                { /* block id: 25 */
                    int32_t *l_79 = &p_811->g_3[0];
                    int32_t **l_78[6] = {&l_79,&l_79,&l_79,&l_79,&l_79,&l_79};
                    int i;
                    for (p_811->g_27.f0 = 0; (p_811->g_27.f0 <= 8); p_811->g_27.f0 += 1)
                    { /* block id: 28 */
                        int32_t *l_73 = &p_811->g_74;
                        int i;
                        (*l_73) = p_811->g_28[p_811->g_27.f0];
                    }
                    for (p_811->g_74 = (-26); (p_811->g_74 >= (-9)); ++p_811->g_74)
                    { /* block id: 33 */
                        return l_77;
                    }
                    if (p_52)
                        continue;
                    l_80 = p_53;
                }
                (*l_118) |= (safe_div_func_int64_t_s_s(((p_52 , (func_83(p_811->g_28[1], l_88[2], l_89, (p_811->g_114 = (((safe_lshift_func_uint16_t_u_s(l_77, 13)) && (((safe_lshift_func_int8_t_s_u(((safe_add_func_int32_t_s_s((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_811->global_0_offset, get_global_id(0), 10), (safe_rshift_func_int8_t_s_s((l_67 = ((((*l_80) , (((l_67 | (((safe_rshift_func_uint8_t_u_u(p_811->g_3[0], (safe_mul_func_int8_t_s_s((safe_add_func_int32_t_s_s(((l_112 = (p_811->g_109[2] = (safe_rshift_func_int16_t_s_s(0x0D6EL, l_108)))) >= p_811->g_35[5][4][2]), 0x09DF947BL)), p_811->g_35[8][8][1])))) != (**l_89)) & p_52)) || p_52) < l_113)) & (*l_80)) ^ p_52)), 4)))), (*p_53))) > 4294967295UL), 4)) >= p_52) < 0x53715829L)) || p_811->g_111)), p_811) <= p_52)) || p_52), p_811->g_3[0]));
                for (p_811->g_74 = (-25); (p_811->g_74 > (-12)); p_811->g_74 = safe_add_func_int32_t_s_s(p_811->g_74, 9))
                { /* block id: 49 */
                    int16_t *l_125 = &p_811->g_111;
                    int8_t **l_126 = &l_88[2];
                    int32_t l_129 = 0x6026B9DDL;
                    uint64_t *l_137 = &l_113;
                    (*l_118) ^= ((p_811->g_109[2] >= (--l_122)) > (l_125 != (((((+(((*l_126) = l_68) != &p_811->g_28[4])) , (safe_mul_func_int16_t_s_s((-10L), l_129))) ^ ((safe_div_func_int64_t_s_s(((safe_add_func_uint8_t_u_u(l_134, (safe_sub_func_uint64_t_u_u(((*l_137) |= FAKE_DIVERGE(p_811->group_1_offset, get_group_id(1), 10)), (((*l_80) | (+p_811->g_114)) , (**l_89)))))) , p_811->g_3[1]), l_138)) | 18446744073709551609UL)) , p_811->g_114) , (void*)0)));
                }
                (*l_118) = (p_811->g_114 ^= ((0L >= 4294967286UL) & ((safe_rshift_func_int8_t_s_u(p_811->g_28[0], 5)) || (((p_52 != ((((*l_80) , ((((*l_142) ^= (p_52 , (p_52 || 0x0BL))) >= (safe_lshift_func_int8_t_s_s(((((void*)0 != &l_134) , p_811->g_27.f0) | p_52), 6))) >= (*p_53))) || 5L) != p_52)) < (*l_118)) & p_811->g_3[1]))));
            }
        }
        else
        { /* block id: 59 */
            int32_t *l_148[8][7] = {{&p_811->g_3[0],&p_811->g_3[0],(void*)0,&p_811->g_119,&p_811->g_119,&p_811->g_119,&p_811->g_3[0]},{&p_811->g_3[0],&p_811->g_3[0],(void*)0,&p_811->g_119,&p_811->g_119,&p_811->g_119,&p_811->g_3[0]},{&p_811->g_3[0],&p_811->g_3[0],(void*)0,&p_811->g_119,&p_811->g_119,&p_811->g_119,&p_811->g_3[0]},{&p_811->g_3[0],&p_811->g_3[0],(void*)0,&p_811->g_119,&p_811->g_119,&p_811->g_119,&p_811->g_3[0]},{&p_811->g_3[0],&p_811->g_3[0],(void*)0,&p_811->g_119,&p_811->g_119,&p_811->g_119,&p_811->g_3[0]},{&p_811->g_3[0],&p_811->g_3[0],(void*)0,&p_811->g_119,&p_811->g_119,&p_811->g_119,&p_811->g_3[0]},{&p_811->g_3[0],&p_811->g_3[0],(void*)0,&p_811->g_119,&p_811->g_119,&p_811->g_119,&p_811->g_3[0]},{&p_811->g_3[0],&p_811->g_3[0],(void*)0,&p_811->g_119,&p_811->g_119,&p_811->g_119,&p_811->g_3[0]}};
            int i, j;
            --p_811->g_156;
            if ((p_811->g_114 ^ 1UL))
            { /* block id: 61 */
                int8_t l_159 = 0x55L;
                int8_t l_160 = 0x06L;
                int32_t l_161 = 0x31A2BFF1L;
                int32_t l_166 = 0x2B6AA699L;
                l_162--;
                --p_811->g_167;
                p_811->g_74 = (0x1CL > (safe_unary_minus_func_int64_t_s(l_159)));
            }
            else
            { /* block id: 65 */
                int32_t **l_171 = &l_80;
                (*l_171) = &p_811->g_74;
            }
        }
        if ((((*l_172) = (!(((*l_68) &= l_153[2][0]) == ((void*)0 == &l_88[2])))) , (l_153[2][0] |= p_811->g_27.f0)))
        { /* block id: 72 */
            int32_t *l_175[5];
            int i;
            for (i = 0; i < 5; i++)
                l_175[i] = &p_811->g_119;
            l_112 |= (p_811->g_173 == &p_52);
        }
        else
        { /* block id: 74 */
            uint16_t l_184 = 0x6E90L;
            int32_t *l_195 = &l_154[0][2];
            int32_t *l_196 = &l_67;
            int32_t *l_197 = &l_154[0][2];
            int32_t *l_198 = &p_811->g_114;
            int32_t *l_200 = &l_149;
            int32_t *l_201 = &l_67;
            int32_t *l_202 = &l_154[0][4];
            int32_t *l_203 = (void*)0;
            int32_t *l_204 = (void*)0;
            int32_t *l_205[4][6];
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 6; j++)
                    l_205[i][j] = (void*)0;
            }
            p_811->g_74 = (safe_add_func_uint32_t_u_u(((~(((safe_sub_func_int8_t_s_s((FAKE_DIVERGE(p_811->global_0_offset, get_global_id(0), 10) ^ p_52), (safe_rshift_func_int8_t_s_s(p_811->g_35[2][1][1], (l_165[0][3] & (l_184 ^ (((((safe_mod_func_int32_t_s_s((safe_mod_func_uint32_t_u_u((p_52 , (&p_811->g_35[8][8][1] != &p_811->g_167)), ((safe_div_func_uint32_t_u_u((*p_54), (safe_lshift_func_int8_t_s_s((safe_unary_minus_func_uint64_t_u(l_165[0][3])), 6)))) , FAKE_DIVERGE(p_811->local_2_offset, get_local_id(2), 10)))), l_77)) <= (-4L)) , l_194) , 251UL) > (*l_80)))))))) , l_165[0][5]) ^ 2UL)) == GROUP_DIVERGE(0, 1)), p_811->g_167));
            l_206[2]--;
        }
    }
    else
    { /* block id: 78 */
        int32_t *l_209 = &p_811->g_114;
        int32_t **l_223 = &p_811->g_221[2];
        uint64_t l_232[3];
        uint16_t *l_235[9][3][7] = {{{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236}},{{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236}},{{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236}},{{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236}},{{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236}},{{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236}},{{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236}},{{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236}},{{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236},{&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236,&p_811->g_236}}};
        int32_t l_237 = 0x488B0BA4L;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_232[i] = 0x4EDC10B8B5B80E2FL;
        (*l_209) = ((0x011547D271012672L & p_52) && GROUP_DIVERGE(1, 1));
        if ((65535UL == (l_237 = (+((safe_unary_minus_func_uint64_t_u(0xCCF639D2416B469BL)) && ((~(l_67 = (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u((p_811->g_155[5][0][2] ^ (l_153[2][0] <= (safe_mod_func_int8_t_s_s(((~((p_811->g_220[4] = l_219) != (l_223 = p_811->g_222))) > (((safe_mul_func_int8_t_s_s((safe_div_func_int8_t_s_s(((*l_68) &= (GROUP_DIVERGE(0, 1) > (**p_811->g_222))), ((safe_mod_func_int32_t_s_s(((*l_209) = ((safe_sub_func_uint64_t_u_u(l_232[0], (safe_rshift_func_uint16_t_u_s((((p_52 | p_52) != p_811->g_119) ^ (*l_209)), 13)))) <= (*l_209))), p_52)) || 0x369C6162L))), p_52)) > p_52) <= 0x06D749BB18506245L)), p_811->g_167)))), 8)), p_52)))) == (-8L)))))))
        { /* block id: 86 */
            int32_t **l_240 = &l_209;
            (*l_240) = ((safe_mul_func_int16_t_s_s((-4L), ((p_811->g_236 = p_811->g_119) , 0x2436L))) , ((*p_811->g_222) = (*p_811->g_222)));
        }
        else
        { /* block id: 90 */
            if ((atomic_inc(&p_811->l_atomic_input[19]) == 0))
            { /* block id: 92 */
                int8_t l_241 = (-9L);
                int32_t l_242 = 0x1BA98011L;
                uint32_t l_243[10][5][5] = {{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}},{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}},{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}},{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}},{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}},{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}},{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}},{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}},{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}},{{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL},{0x401FB3B3L,0x28BFCDF9L,0xC09B0707L,0xBDBE4718L,4294967290UL}}};
                int i, j, k;
                l_243[1][1][0]++;
                unsigned int result = 0;
                result += l_241;
                result += l_242;
                int l_243_i0, l_243_i1, l_243_i2;
                for (l_243_i0 = 0; l_243_i0 < 10; l_243_i0++) {
                    for (l_243_i1 = 0; l_243_i1 < 5; l_243_i1++) {
                        for (l_243_i2 = 0; l_243_i2 < 5; l_243_i2++) {
                            result += l_243[l_243_i0][l_243_i1][l_243_i2];
                        }
                    }
                }
                atomic_add(&p_811->l_special_values[19], result);
            }
            else
            { /* block id: 94 */
                (1 + 1);
            }
        }
    }
    (*p_811->g_222) = p_54;
    l_149 = ((p_53 == p_53) || (safe_sub_func_uint32_t_u_u(0UL, (((safe_mod_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s((((safe_mod_func_uint8_t_u_u((((*l_267) &= (safe_mul_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((&l_77 == ((*l_260) = &p_811->g_35[8][8][1])), (GROUP_DIVERGE(2, 1) == (((void*)0 != &p_811->g_174) >= ((p_811->g_109[2] == (safe_lshift_func_int8_t_s_u((((((safe_lshift_func_uint8_t_u_s(p_52, l_266)) >= (-4L)) , l_77) && 18446744073709551611UL) , p_811->g_35[1][5][0]), 3))) , p_52))))) >= p_811->g_119), p_52))) && GROUP_DIVERGE(0, 1)), p_52)) || l_112) <= p_52), p_52)) < p_811->g_155[5][0][2]), p_811->g_109[0])) > l_152), p_811->g_109[1])) , 0x5551144CL) & 0x6B08F537L))));
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_811->g_35
 * writes:
 */
int64_t  func_61(uint32_t  p_62, struct S4 * p_811)
{ /* block id: 15 */
    return p_811->g_35[8][8][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_811->g_35
 * writes:
 */
int16_t  func_83(int8_t  p_84, int8_t * p_85, int32_t ** p_86, uint8_t  p_87, struct S4 * p_811)
{ /* block id: 43 */
    uint16_t l_115 = 8UL;
    l_115++;
    return p_811->g_35[8][8][1];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[93];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 93; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[93];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 93; i++)
            l_special_values[i] = 0;
    struct S4 c_812;
    struct S4* p_811 = &c_812;
    struct S4 c_813 = {
        0x14173BF3L, // p_811->g_2
        {0x0872FA4AL,0x0872FA4AL}, // p_811->g_3
        0x46E74A6EL, // p_811->g_17
        {0x9A164E62B5009892L}, // p_811->g_27
        {0x1EL,0x1EL,0x1EL,0x1EL,0x1EL,0x1EL,0x1EL,0x1EL,0x1EL}, // p_811->g_28
        {{{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL}},{{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL}},{{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL}},{{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL}},{{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL}},{{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL}},{{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL}},{{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL}},{{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL},{2UL,0UL,0xF141C5ABL}}}, // p_811->g_35
        &p_811->g_35[8][8][1], // p_811->g_34
        0x76A8768DL, // p_811->g_74
        {0x6196426DL,0x6196426DL,0x6196426DL,0x6196426DL}, // p_811->g_109
        0x58D1L, // p_811->g_111
        (-4L), // p_811->g_114
        0x0EDB61D1L, // p_811->g_119
        {{{(-1L),0x0241L,(-4L),(-1L),0x2EA0L,(-4L),(-4L)}},{{(-1L),0x0241L,(-4L),(-1L),0x2EA0L,(-4L),(-4L)}},{{(-1L),0x0241L,(-4L),(-1L),0x2EA0L,(-4L),(-4L)}},{{(-1L),0x0241L,(-4L),(-1L),0x2EA0L,(-4L),(-4L)}},{{(-1L),0x0241L,(-4L),(-1L),0x2EA0L,(-4L),(-4L)}},{{(-1L),0x0241L,(-4L),(-1L),0x2EA0L,(-4L),(-4L)}},{{(-1L),0x0241L,(-4L),(-1L),0x2EA0L,(-4L),(-4L)}},{{(-1L),0x0241L,(-4L),(-1L),0x2EA0L,(-4L),(-4L)}}}, // p_811->g_155
        255UL, // p_811->g_156
        5UL, // p_811->g_167
        1UL, // p_811->g_174
        &p_811->g_174, // p_811->g_173
        {&p_811->g_3[0],&p_811->g_3[1],&p_811->g_3[0],&p_811->g_3[0],&p_811->g_3[1],&p_811->g_3[0]}, // p_811->g_221
        {&p_811->g_221[2],&p_811->g_221[2],&p_811->g_221[2],&p_811->g_221[2],&p_811->g_221[2]}, // p_811->g_220
        &p_811->g_221[4], // p_811->g_222
        1UL, // p_811->g_236
        0x55CBL, // p_811->g_281
        {{{1L,(-5L),1L,1L,(-5L),1L,1L}},{{1L,(-5L),1L,1L,(-5L),1L,1L}},{{1L,(-5L),1L,1L,(-5L),1L,1L}},{{1L,(-5L),1L,1L,(-5L),1L,1L}}}, // p_811->g_301
        {4294967295UL,0xEAL,0x081F2127D038F0C9L,0x56B5A29BL}, // p_811->g_372
        0x08666BFF22C34FD3L, // p_811->g_420
        &p_811->g_173, // p_811->g_464
        &p_811->g_173, // p_811->g_465
        (-4L), // p_811->g_758
        {{0xAF84L,-1L,0xC2D6L,-6L},{0xAF84L,-1L,0xC2D6L,-6L},{0xAF84L,-1L,0xC2D6L,-6L},{0xAF84L,-1L,0xC2D6L,-6L},{0xAF84L,-1L,0xC2D6L,-6L}}, // p_811->g_767
        &p_811->g_767[3], // p_811->g_766
        {0UL,-1L,65535UL,0x36A70C07L}, // p_811->g_770
        &p_811->g_770, // p_811->g_769
        0x79L, // p_811->g_798
        {{{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119}},{{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119}},{{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119}},{{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119}},{{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119}},{{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119}},{{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119}},{{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119}},{{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119},{&p_811->g_114,&p_811->g_119,&p_811->g_119}}}, // p_811->g_808
        (void*)0, // p_811->g_809
        sequence_input[get_global_id(0)], // p_811->global_0_offset
        sequence_input[get_global_id(1)], // p_811->global_1_offset
        sequence_input[get_global_id(2)], // p_811->global_2_offset
        sequence_input[get_local_id(0)], // p_811->local_0_offset
        sequence_input[get_local_id(1)], // p_811->local_1_offset
        sequence_input[get_local_id(2)], // p_811->local_2_offset
        sequence_input[get_group_id(0)], // p_811->group_0_offset
        sequence_input[get_group_id(1)], // p_811->group_1_offset
        sequence_input[get_group_id(2)], // p_811->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_812 = c_813;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_811);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_811->g_2, "p_811->g_2", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_811->g_3[i], "p_811->g_3[i]", print_hash_value);

    }
    transparent_crc(p_811->g_17, "p_811->g_17", print_hash_value);
    transparent_crc(p_811->g_27.f0, "p_811->g_27.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_811->g_28[i], "p_811->g_28[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_811->g_35[i][j][k], "p_811->g_35[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_811->g_74, "p_811->g_74", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_811->g_109[i], "p_811->g_109[i]", print_hash_value);

    }
    transparent_crc(p_811->g_111, "p_811->g_111", print_hash_value);
    transparent_crc(p_811->g_114, "p_811->g_114", print_hash_value);
    transparent_crc(p_811->g_119, "p_811->g_119", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_811->g_155[i][j][k], "p_811->g_155[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_811->g_156, "p_811->g_156", print_hash_value);
    transparent_crc(p_811->g_167, "p_811->g_167", print_hash_value);
    transparent_crc(p_811->g_174, "p_811->g_174", print_hash_value);
    transparent_crc(p_811->g_236, "p_811->g_236", print_hash_value);
    transparent_crc(p_811->g_281, "p_811->g_281", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_811->g_301[i][j][k], "p_811->g_301[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_811->g_372.f0, "p_811->g_372.f0", print_hash_value);
    transparent_crc(p_811->g_372.f1, "p_811->g_372.f1", print_hash_value);
    transparent_crc(p_811->g_372.f2, "p_811->g_372.f2", print_hash_value);
    transparent_crc(p_811->g_372.f3, "p_811->g_372.f3", print_hash_value);
    transparent_crc(p_811->g_420, "p_811->g_420", print_hash_value);
    transparent_crc(p_811->g_758, "p_811->g_758", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_811->g_767[i].f0, "p_811->g_767[i].f0", print_hash_value);
        transparent_crc(p_811->g_767[i].f1, "p_811->g_767[i].f1", print_hash_value);
        transparent_crc(p_811->g_767[i].f2, "p_811->g_767[i].f2", print_hash_value);
        transparent_crc(p_811->g_767[i].f3, "p_811->g_767[i].f3", print_hash_value);

    }
    transparent_crc(p_811->g_770.f0, "p_811->g_770.f0", print_hash_value);
    transparent_crc(p_811->g_770.f1, "p_811->g_770.f1", print_hash_value);
    transparent_crc(p_811->g_770.f2, "p_811->g_770.f2", print_hash_value);
    transparent_crc(p_811->g_770.f3, "p_811->g_770.f3", print_hash_value);
    transparent_crc(p_811->g_798, "p_811->g_798", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 93; i++)
            transparent_crc(p_811->g_special_values[i + 93 * get_linear_group_id()], "p_811->g_special_values[i + 93 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 93; i++)
            transparent_crc(p_811->l_special_values[i], "p_811->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
