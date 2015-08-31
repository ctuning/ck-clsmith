// ---fake_divergence -g 1,1,8209 -l 1,1,1
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


// Seed: 22

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int32_t  f0;
   int32_t  f1;
   volatile int32_t  f2;
   uint32_t  f3;
   int32_t  f4;
   uint64_t  f5;
   volatile uint32_t  f6;
   volatile int64_t  f7;
   volatile int64_t  f8;
   int16_t  f9;
};

struct S1 {
    uint64_t g_3[7][2][5];
    volatile int8_t g_18[6];
    uint8_t g_23;
    uint64_t g_51;
    uint64_t *g_50;
    volatile int32_t *g_61;
    int32_t g_68[7][3];
    uint64_t **g_110;
    uint64_t g_116;
    uint64_t g_119;
    int8_t g_123[2][2][2];
    volatile int32_t ** volatile *g_156;
    int8_t g_174;
    uint32_t g_177;
    uint64_t ***g_206;
    uint16_t g_207;
    int32_t g_214;
    uint8_t g_246;
    int32_t **g_264;
    int32_t ***g_263[3][4];
    int16_t g_275;
    int64_t g_321;
    uint16_t g_358[5];
    volatile int16_t g_392;
    volatile int16_t *g_391;
    volatile int16_t **g_390;
    volatile struct S0 g_398;
    volatile struct S0 g_399;
    volatile struct S0 g_400;
    volatile struct S0 g_401;
    volatile struct S0 g_402;
    volatile struct S0 g_403;
    volatile struct S0 g_404;
    volatile struct S0 g_405;
    volatile struct S0 g_406;
    volatile struct S0 g_407;
    volatile struct S0 g_408;
    volatile struct S0 g_409;
    volatile struct S0 g_410;
    volatile struct S0 *g_397[8][8];
    int8_t *g_418;
    volatile struct S0 g_427[5];
    volatile uint16_t g_506[5][9];
    volatile uint16_t * volatile g_505;
    volatile uint16_t * volatile *g_504;
    struct S0 g_540;
    struct S0 *g_539;
    struct S0 g_543;
    volatile int32_t ****g_551;
    volatile int32_t **** volatile *g_550;
    uint64_t g_587;
    uint64_t *g_586;
    struct S0 g_625;
    int32_t g_711;
    struct S0 g_712;
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
struct S0  func_1(struct S1 * p_713);
uint8_t  func_5(uint64_t  p_6, uint8_t  p_7, uint32_t  p_8, uint64_t * p_9, int64_t  p_10, struct S1 * p_713);
uint8_t  func_21(uint8_t  p_22, struct S1 * p_713);
int32_t  func_24(uint64_t * p_25, int32_t  p_26, struct S1 * p_713);
uint64_t * func_27(uint64_t * p_28, uint64_t * p_29, uint64_t * p_30, uint64_t * p_31, struct S1 * p_713);
uint64_t * func_32(uint64_t * p_33, uint32_t  p_34, uint64_t * p_35, int32_t  p_36, uint64_t  p_37, struct S1 * p_713);
uint64_t * func_38(uint64_t * p_39, uint64_t  p_40, struct S1 * p_713);
int32_t  func_44(uint64_t * p_45, int64_t  p_46, uint64_t * p_47, int32_t  p_48, uint32_t  p_49, struct S1 * p_713);
int64_t  func_52(uint8_t  p_53, uint32_t  p_54, int32_t  p_55, uint16_t  p_56, struct S1 * p_713);
int64_t  func_57(uint64_t * p_58, struct S1 * p_713);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_713->g_18 p_713->g_23 p_713->g_50 p_713->g_61 p_713->g_51 p_713->g_68 p_713->g_116 p_713->g_123 p_713->g_110 p_713->g_119 p_713->g_156 p_713->g_177 p_713->g_174 p_713->g_207 p_713->g_214 p_713->g_263 p_713->g_275 p_713->g_246 p_713->g_358 p_713->g_539 p_713->g_543.f4 p_713->g_550 p_713->g_540.f3 p_713->g_543.f1 p_713->g_543.f5 p_713->g_543.f3 p_713->g_586 p_713->g_418 p_713->g_540.f1 p_713->g_540.f4 p_713->g_540.f5 p_713->g_625.f1 p_713->g_625.f4 p_713->g_321 p_713->g_543.f9 p_713->g_625.f5 p_713->g_625.f9 p_713->g_711 p_713->g_712
 * writes: p_713->g_3 p_713->g_61 p_713->g_51 p_713->g_68 p_713->g_110 p_713->g_116 p_713->g_119 p_713->g_123 p_713->g_23 p_713->g_174 p_713->g_177 p_713->g_206 p_713->g_214 p_713->g_246 p_713->g_263 p_713->g_275 p_713->g_539 p_713->g_543.f3 p_713->g_50 p_713->g_540.f1 p_713->g_207 p_713->g_625.f1 p_713->g_358 p_713->g_321 p_713->g_540.f5 p_713->g_543.f5 p_713->g_711
 */
struct S0  func_1(struct S1 * p_713)
{ /* block id: 4 */
    uint64_t *l_2 = &p_713->g_3[1][1][4];
    int32_t l_4 = 0x6E49CE57L;
    int32_t *l_710[5] = {&p_713->g_711,&p_713->g_711,&p_713->g_711,&p_713->g_711,&p_713->g_711};
    int i;
    p_713->g_711 ^= ((0x67L < (((*l_2) = 0xA32FD2D1A4E66596L) , l_4)) <= ((((l_4 ^ func_5(((safe_mul_func_int8_t_s_s(((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_unary_minus_func_uint16_t_u(p_713->g_18[1])), (safe_div_func_uint8_t_u_u(l_4, func_21(p_713->g_23, p_713))))), (safe_div_func_uint8_t_u_u((&p_713->g_587 == &p_713->g_587), l_4)))) ^ p_713->g_543.f1), p_713->g_543.f9)) <= p_713->g_543.f5), p_713->g_543.f5, p_713->g_543.f9, l_2, l_4, p_713)) != l_4) < l_4) == p_713->g_625.f9));
    return p_713->g_712;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_246 p_713->g_625.f5 p_713->g_418 p_713->g_174 p_713->g_116 p_713->g_625.f1
 * writes: p_713->g_246 p_713->g_174 p_713->g_540.f5 p_713->g_116 p_713->g_543.f5
 */
uint8_t  func_5(uint64_t  p_6, uint8_t  p_7, uint32_t  p_8, uint64_t * p_9, int64_t  p_10, struct S1 * p_713)
{ /* block id: 327 */
    uint32_t l_685[9][2] = {{0xE4FA8F25L,1UL},{0xE4FA8F25L,1UL},{0xE4FA8F25L,1UL},{0xE4FA8F25L,1UL},{0xE4FA8F25L,1UL},{0xE4FA8F25L,1UL},{0xE4FA8F25L,1UL},{0xE4FA8F25L,1UL},{0xE4FA8F25L,1UL}};
    uint8_t *l_702 = (void*)0;
    uint8_t **l_703 = (void*)0;
    uint8_t **l_704 = &l_702;
    uint64_t *l_705 = &p_713->g_540.f5;
    uint64_t *l_706 = &p_713->g_116;
    int32_t l_707 = 0x2A7EA088L;
    uint64_t l_708[1];
    int32_t l_709[3][4] = {{0x6C424B7DL,0x6C424B7DL,0x6C424B7DL,0x6C424B7DL},{0x6C424B7DL,0x6C424B7DL,0x6C424B7DL,0x6C424B7DL},{0x6C424B7DL,0x6C424B7DL,0x6C424B7DL,0x6C424B7DL}};
    int i, j;
    for (i = 0; i < 1; i++)
        l_708[i] = 0UL;
    l_685[0][0] = p_6;
    l_709[1][1] |= (safe_mul_func_int8_t_s_s(((((safe_lshift_func_int8_t_s_u(((&p_10 != ((((safe_rshift_func_int8_t_s_s((l_685[7][1] > (p_10 >= (((safe_mul_func_uint8_t_u_u(l_685[0][0], (p_713->g_246 &= p_7))) & ((p_713->g_625.f5 || (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int8_t_s(((*p_713->g_418) ^= p_6))), (l_707 = (((((safe_add_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_int8_t_s(((l_685[8][0] , ((+GROUP_DIVERGE(2, 1)) >= (p_713->g_543.f5 = ((*l_706) |= ((*l_705) = (((*l_704) = l_702) != &p_713->g_23)))))) < 0x02CCE38EL))), 9UL)), l_685[0][0])) < p_6) || l_685[0][0]) , 0xD9AEC4BDL) != 0x3005DF64L))))) , (*p_713->g_418))) , p_6))), 6)) >= p_8) , l_707) , &p_10)) & 18446744073709551615UL), l_685[0][0])) ^ l_708[0]) ^ 4294967290UL) > p_713->g_625.f1), p_10));
    return l_685[4][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_50 p_713->g_61 p_713->g_51 p_713->g_68 p_713->g_23 p_713->g_116 p_713->g_123 p_713->g_110 p_713->g_119 p_713->g_156 p_713->g_177 p_713->g_174 p_713->g_207 p_713->g_214 p_713->g_263 p_713->g_275 p_713->g_246 p_713->g_358 p_713->g_539 p_713->g_543.f4 p_713->g_550 p_713->g_540.f3 p_713->g_543.f1 p_713->g_543.f5 p_713->g_543.f3 p_713->g_586 p_713->g_418 p_713->g_540.f1 p_713->g_540.f4 p_713->g_540.f5 p_713->g_625.f1 p_713->g_625.f4 p_713->g_321
 * writes: p_713->g_61 p_713->g_51 p_713->g_68 p_713->g_110 p_713->g_116 p_713->g_119 p_713->g_123 p_713->g_23 p_713->g_174 p_713->g_177 p_713->g_206 p_713->g_214 p_713->g_246 p_713->g_263 p_713->g_275 p_713->g_539 p_713->g_543.f3 p_713->g_50 p_713->g_540.f1 p_713->g_207 p_713->g_625.f1 p_713->g_358 p_713->g_321
 */
uint8_t  func_21(uint8_t  p_22, struct S1 * p_713)
{ /* block id: 6 */
    uint32_t l_41 = 0xF7F1C74FL;
    uint64_t *l_59 = &p_713->g_51;
    uint64_t ***l_205 = &p_713->g_110;
    uint64_t l_578 = 18446744073709551615UL;
    uint64_t **l_585 = &p_713->g_50;
    int32_t *l_637[6];
    int i;
    for (i = 0; i < 6; i++)
        l_637[i] = &p_713->g_625.f4;
    p_713->g_625.f1 ^= func_24(func_27(((*l_585) = func_32(func_38((((l_41 , ((safe_sub_func_int32_t_s_s((((GROUP_DIVERGE(2, 1) > (func_44(p_713->g_50, func_52(l_41, p_22, (func_57(l_59, p_713) , ((p_713->g_206 = l_205) == (void*)0)), p_713->g_207, p_713), p_713->g_50, l_41, p_713->g_207, p_713) , p_22)) != 0x62B45F76L) != 0x0BB09E189E4F0613L), p_22)) && l_41)) | 0x7AL) , (void*)0), p_713->g_358[4], p_713), p_22, l_59, l_578, p_713->g_543.f1, p_713)), p_713->g_586, l_59, &p_713->g_587, p_713), p_22, p_713);
    for (p_713->g_119 = 0; (p_713->g_119 == 50); p_713->g_119 = safe_add_func_int32_t_s_s(p_713->g_119, 1))
    { /* block id: 308 */
        int32_t ***l_640 = &p_713->g_264;
        int32_t l_641 = 0x73F3806EL;
        int32_t l_653 = 1L;
        int32_t l_659 = 0x523F644DL;
        int32_t l_662 = 0L;
        int32_t l_663 = 0x4AFE64A4L;
        int32_t l_664 = (-1L);
        int32_t l_666 = (-1L);
        int32_t l_667 = 6L;
        int32_t l_668 = 0x41CCACB7L;
        int32_t l_670 = 0x1754DE86L;
        int32_t l_671 = 0x380BB808L;
        uint8_t l_675[6][1][2];
        int16_t **l_676 = (void*)0;
        uint8_t *l_679 = &p_713->g_246;
        int16_t *l_680 = &p_713->g_275;
        int i, j, k;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_675[i][j][k] = 0x65L;
            }
        }
        l_641 = ((void*)0 == l_640);
        for (p_713->g_174 = 0; (p_713->g_174 > 7); ++p_713->g_174)
        { /* block id: 312 */
            uint16_t *l_644 = &p_713->g_358[1];
            int32_t l_649 = 0x5F30B813L;
            int32_t l_652 = 0x1C50B6D0L;
            int32_t l_654 = 0L;
            int32_t l_655 = 0x51751D9FL;
            int32_t l_656 = 4L;
            int32_t l_657 = 0x3E441DE0L;
            int32_t l_658 = (-1L);
            int32_t l_660 = 0x3C6888A9L;
            int32_t l_661 = 7L;
            int32_t l_665[6][7] = {{(-2L),0L,0L,3L,0L,3L,0L},{(-2L),0L,0L,3L,0L,3L,0L},{(-2L),0L,0L,3L,0L,3L,0L},{(-2L),0L,0L,3L,0L,3L,0L},{(-2L),0L,0L,3L,0L,3L,0L},{(-2L),0L,0L,3L,0L,3L,0L}};
            int8_t l_669[9][9][3] = {{{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L}},{{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L}},{{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L}},{{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L}},{{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L}},{{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L}},{{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L}},{{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L}},{{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L},{6L,(-6L),2L}}};
            uint8_t l_672 = 1UL;
            int i, j, k;
            l_637[4] = l_637[1];
            l_649 = ((((*l_644) |= p_713->g_177) != 0x0013L) == (p_713->g_540.f5 <= (safe_mod_func_int64_t_s_s(((safe_div_func_uint64_t_u_u((0UL | l_649), p_22)) & 0x7C0FL), (safe_lshift_func_int8_t_s_u((*p_713->g_418), 1))))));
            --l_672;
            l_665[4][4] = l_675[5][0][0];
        }
        l_659 ^= ((((l_676 == l_676) <= p_713->g_543.f3) & ((safe_lshift_func_uint8_t_u_u(((*l_679) = (!p_22)), p_713->g_119)) , ((*l_680) |= (p_713->g_543.f3 == p_22)))) <= (safe_mul_func_int8_t_s_s((((p_22 || ((*p_713->g_418) = (((((p_713->g_321 |= p_713->g_625.f4) || 0UL) >= p_22) & p_713->g_540.f4) & 0x7800L))) <= p_713->g_207) , (*p_713->g_418)), p_713->g_177)));
        return p_22;
    }
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_540.f1
 * writes:
 */
int32_t  func_24(uint64_t * p_25, int32_t  p_26, struct S1 * p_713)
{ /* block id: 301 */
    uint16_t l_632 = 65528UL;
    int32_t *l_635 = &p_713->g_540.f1;
    int32_t **l_636 = &l_635;
    l_632++;
    (*l_636) = l_635;
    return (**l_636);
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_116 p_713->g_418 p_713->g_174 p_713->g_123 p_713->g_540.f1 p_713->g_540.f4 p_713->g_540.f5
 * writes: p_713->g_540.f1 p_713->g_207
 */
uint64_t * func_27(uint64_t * p_28, uint64_t * p_29, uint64_t * p_30, uint64_t * p_31, struct S1 * p_713)
{ /* block id: 293 */
    uint64_t l_588[3];
    int32_t ****l_592 = (void*)0;
    int32_t *****l_591 = &l_592;
    uint16_t *l_593[4][2][1] = {{{&p_713->g_207},{&p_713->g_207}},{{&p_713->g_207},{&p_713->g_207}},{{&p_713->g_207},{&p_713->g_207}},{{&p_713->g_207},{&p_713->g_207}}};
    int32_t l_594 = 0x36AD2CF1L;
    uint64_t l_597 = 18446744073709551607UL;
    int16_t l_598 = 1L;
    int32_t *l_599 = &p_713->g_540.f1;
    int32_t *l_600[3];
    int8_t l_601 = 0x34L;
    int64_t l_602 = 0x1CF17BFF7E2D3CA4L;
    int32_t l_603 = 0x2293C366L;
    int8_t l_604 = 0x0BL;
    uint32_t l_605 = 4294967295UL;
    struct S0 *l_624 = &p_713->g_625;
    uint64_t l_626 = 1UL;
    int32_t l_627 = 1L;
    uint16_t l_628 = 0x47BBL;
    uint64_t *l_631 = &p_713->g_587;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_588[i] = 0UL;
    for (i = 0; i < 3; i++)
        l_600[i] = &p_713->g_543.f1;
    (*l_599) = ((l_588[2] <= (safe_sub_func_uint32_t_u_u((((void*)0 != l_591) | ((l_594 = 0x97C8L) , ((safe_rshift_func_uint8_t_u_s((((p_713->g_116 > (0UL <= l_597)) | l_588[0]) , ((p_30 == (void*)0) == 0L)), (*p_713->g_418))) >= (*p_713->g_418)))), l_598))) || 18446744073709551615UL);
    l_605++;
    l_626 |= (((safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s((-4L), (*p_713->g_418))), (safe_div_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_u((p_713->g_207 = p_713->g_123[1][0][0]), ((void*)0 != (*l_591)))) || (safe_sub_func_int64_t_s_s(0L, ((safe_mod_func_int16_t_s_s(1L, ((safe_div_func_int8_t_s_s((safe_mod_func_uint8_t_u_u(((l_624 == l_624) , 1UL), 0x07L)), 0x59L)) & GROUP_DIVERGE(0, 1)))) , (*l_599))))), p_713->g_540.f4)))) != (*p_713->g_418)) >= p_713->g_540.f5);
    l_628++;
    return l_631;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t * func_32(uint64_t * p_33, uint32_t  p_34, uint64_t * p_35, int32_t  p_36, uint64_t  p_37, struct S1 * p_713)
{ /* block id: 287 */
    int32_t *l_579 = (void*)0;
    int32_t l_580 = 1L;
    int32_t *l_581[5][8] = {{&p_713->g_540.f1,(void*)0,&p_713->g_543.f1,&p_713->g_68[3][1],&p_713->g_543.f1,(void*)0,&p_713->g_540.f1,(void*)0},{&p_713->g_540.f1,(void*)0,&p_713->g_543.f1,&p_713->g_68[3][1],&p_713->g_543.f1,(void*)0,&p_713->g_540.f1,(void*)0},{&p_713->g_540.f1,(void*)0,&p_713->g_543.f1,&p_713->g_68[3][1],&p_713->g_543.f1,(void*)0,&p_713->g_540.f1,(void*)0},{&p_713->g_540.f1,(void*)0,&p_713->g_543.f1,&p_713->g_68[3][1],&p_713->g_543.f1,(void*)0,&p_713->g_540.f1,(void*)0},{&p_713->g_540.f1,(void*)0,&p_713->g_543.f1,&p_713->g_68[3][1],&p_713->g_543.f1,(void*)0,&p_713->g_540.f1,(void*)0}};
    uint32_t l_582 = 0xCB28BC0CL;
    int32_t **l_583 = &l_581[0][0];
    uint64_t *l_584 = &p_713->g_51;
    int i, j;
    l_582 = (l_580 = 0L);
    (*l_583) = (void*)0;
    return l_584;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_68 p_713->g_116 p_713->g_539 p_713->g_543.f4 p_713->g_214 p_713->g_550 p_713->g_540.f3 p_713->g_543.f1 p_713->g_543.f5 p_713->g_543.f3 p_713->g_246
 * writes: p_713->g_68 p_713->g_116 p_713->g_539 p_713->g_214 p_713->g_543.f3 p_713->g_246
 */
uint64_t * func_38(uint64_t * p_39, uint64_t  p_40, struct S1 * p_713)
{ /* block id: 252 */
    int32_t *l_527 = &p_713->g_68[3][0];
    int32_t *l_528[1][7][5] = {{{(void*)0,(void*)0,&p_713->g_68[4][1],&p_713->g_68[3][1],&p_713->g_68[3][2]},{(void*)0,(void*)0,&p_713->g_68[4][1],&p_713->g_68[3][1],&p_713->g_68[3][2]},{(void*)0,(void*)0,&p_713->g_68[4][1],&p_713->g_68[3][1],&p_713->g_68[3][2]},{(void*)0,(void*)0,&p_713->g_68[4][1],&p_713->g_68[3][1],&p_713->g_68[3][2]},{(void*)0,(void*)0,&p_713->g_68[4][1],&p_713->g_68[3][1],&p_713->g_68[3][2]},{(void*)0,(void*)0,&p_713->g_68[4][1],&p_713->g_68[3][1],&p_713->g_68[3][2]},{(void*)0,(void*)0,&p_713->g_68[4][1],&p_713->g_68[3][1],&p_713->g_68[3][2]}}};
    int32_t l_529[1][7][3] = {{{0x63B4E40CL,(-9L),0x46E608CEL},{0x63B4E40CL,(-9L),0x46E608CEL},{0x63B4E40CL,(-9L),0x46E608CEL},{0x63B4E40CL,(-9L),0x46E608CEL},{0x63B4E40CL,(-9L),0x46E608CEL},{0x63B4E40CL,(-9L),0x46E608CEL},{0x63B4E40CL,(-9L),0x46E608CEL}}};
    int32_t l_530[3];
    uint8_t l_531 = 1UL;
    int32_t l_536 = 0x54F156F2L;
    uint64_t ***l_549 = &p_713->g_110;
    struct S0 **l_561 = &p_713->g_539;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_530[i] = 0x09EBCAF7L;
    ++l_531;
    for (l_531 = 0; (l_531 < 37); l_531++)
    { /* block id: 256 */
        struct S0 *l_542 = &p_713->g_543;
        uint8_t l_546 = 0x02L;
        int32_t l_553 = 7L;
        int32_t l_556 = 0x766ECE08L;
        int32_t l_557[8][4][4] = {{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}}};
        uint16_t l_558 = 65535UL;
        int i, j, k;
        (*l_527) &= l_536;
        for (p_713->g_116 = 0; (p_713->g_116 != 42); ++p_713->g_116)
        { /* block id: 260 */
            struct S0 **l_541 = &p_713->g_539;
            int32_t *l_552[9][5] = {{&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214},{&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214},{&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214},{&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214},{&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214},{&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214},{&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214},{&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214},{&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214,&p_713->g_214}};
            int32_t l_554 = 0x270297F3L;
            int32_t l_555[1];
            int i, j;
            for (i = 0; i < 1; i++)
                l_555[i] = (-6L);
            l_542 = ((*l_541) = p_713->g_539);
            (*l_527) |= ((safe_mul_func_uint16_t_u_u((l_546 <= ((safe_mul_func_uint8_t_u_u(((((p_713->g_543.f4 , (p_713->g_214 = ((l_549 == (void*)0) ^ (p_713->g_214 || (p_713->g_550 != &p_713->g_551))))) , ((4294967292UL > ((0xCFBCAD9E54426700L & p_713->g_540.f3) ^ p_713->g_543.f1)) <= p_40)) & p_713->g_543.f5) | 3L), p_40)) >= p_40)), 1L)) || 0UL);
            if (p_40)
                break;
            --l_558;
        }
    }
    (*l_561) = p_713->g_539;
    for (p_713->g_543.f3 = 0; (p_713->g_543.f3 < 11); p_713->g_543.f3++)
    { /* block id: 272 */
        uint64_t l_566 = 18446744073709551609UL;
        int8_t *l_567 = &p_713->g_174;
        int8_t **l_568 = &l_567;
        int32_t l_571[10][5][3] = {{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}},{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}},{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}},{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}},{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}},{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}},{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}},{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}},{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}},{{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L},{0x4BE74D71L,0x1731ADFBL,0x09BE2F48L}}};
        int i, j, k;
        if ((safe_rshift_func_uint16_t_u_s(((~l_566) , (((*l_568) = l_567) != &p_713->g_123[1][0][0])), 10)))
        { /* block id: 274 */
            uint64_t *l_577 = &p_713->g_51;
            for (p_713->g_246 = 0; (p_713->g_246 == 52); ++p_713->g_246)
            { /* block id: 277 */
                uint8_t l_572[3];
                int32_t *l_575 = &p_713->g_543.f4;
                int32_t **l_576 = &l_528[0][2][2];
                int i;
                for (i = 0; i < 3; i++)
                    l_572[i] = 0x02L;
                l_572[0]--;
                (*l_576) = l_575;
            }
            return l_577;
        }
        else
        { /* block id: 282 */
            return p_39;
        }
    }
    return &p_713->g_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_214 p_713->g_116 p_713->g_68 p_713->g_23 p_713->g_263 p_713->g_275 p_713->g_246 p_713->g_177 p_713->g_207 p_713->g_123 p_713->g_358 p_713->g_51
 * writes: p_713->g_23 p_713->g_246 p_713->g_263 p_713->g_275 p_713->g_177 p_713->g_123
 */
int32_t  func_44(uint64_t * p_45, int64_t  p_46, uint64_t * p_47, int32_t  p_48, uint32_t  p_49, struct S1 * p_713)
{ /* block id: 122 */
    int32_t l_244 = 6L;
    int32_t l_251 = (-1L);
    uint8_t *l_262 = &p_713->g_23;
    int32_t ****l_265 = &p_713->g_263[2][3];
    int32_t ***l_267 = &p_713->g_264;
    int32_t ****l_266 = &l_267;
    int16_t *l_274 = &p_713->g_275;
    uint64_t *l_306 = (void*)0;
    uint64_t **l_305[9][10] = {{&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306},{&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306},{&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306},{&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306},{&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306},{&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306},{&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306},{&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306},{&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306,&l_306}};
    int16_t l_319 = (-1L);
    int32_t l_344 = 0L;
    int32_t l_345 = 0x06E96323L;
    int32_t l_346 = 0x65736E5AL;
    int32_t l_347 = (-1L);
    int32_t l_348 = 1L;
    uint32_t l_349[10];
    int16_t l_419 = 0L;
    uint64_t l_425 = 18446744073709551615UL;
    int32_t l_440[2][2];
    uint32_t l_443 = 0xB16CA4A1L;
    uint32_t l_454[6][4][2] = {{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}}};
    int32_t *l_526 = &l_244;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_349[i] = 5UL;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_440[i][j] = 0x7F250103L;
    }
lbl_278:
    for (p_713->g_23 = (-24); (p_713->g_23 > 43); p_713->g_23++)
    { /* block id: 125 */
        uint8_t *l_245 = &p_713->g_246;
        int32_t l_256 = 0x4244330DL;
        int32_t *l_257[10][5][3] = {{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}},{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}},{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}},{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}},{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}},{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}},{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}},{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}},{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}},{{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]},{&l_256,&l_256,&p_713->g_68[3][1]}}};
        int i, j, k;
        l_251 = (safe_rshift_func_int16_t_s_u((p_713->g_214 & ((safe_rshift_func_uint8_t_u_u(((*l_245) = (l_244 ^= p_46)), (((&p_713->g_110 != &p_713->g_110) & ((safe_mod_func_uint8_t_u_u(248UL, p_713->g_214)) , (safe_mod_func_int32_t_s_s((((+(l_251 ^ 0x6CADL)) , ((safe_sub_func_uint32_t_u_u(((safe_add_func_int16_t_s_s(1L, p_713->g_116)) < l_256), p_49)) > p_713->g_68[3][1])) > p_48), l_256)))) || p_48))) , p_49)), p_46));
    }
    if ((safe_mod_func_int16_t_s_s(((*l_274) &= ((1UL == ((safe_add_func_uint32_t_u_u((((l_244 , ((((*l_262) |= 5UL) , ((0x5DCCL & (+p_48)) | (((*l_266) = ((*l_265) = p_713->g_263[2][3])) != &p_713->g_264))) == (p_46 , ((((safe_mod_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s(p_49, p_46)), 2)), p_46)) >= FAKE_DIVERGE(p_713->group_0_offset, get_group_id(0), 10)) , (void*)0) == l_262)))) , &p_47) != &p_45), 1L)) != p_713->g_68[3][1])) >= p_49)), p_713->g_246)))
    { /* block id: 134 */
        int32_t l_279 = 0x6E9AFB1CL;
        int32_t l_295[1];
        uint16_t *l_301[6][6][3] = {{{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207}},{{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207}},{{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207}},{{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207}},{{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207}},{{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207},{&p_713->g_207,&p_713->g_207,&p_713->g_207}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_295[i] = 0x14B84213L;
        for (l_251 = 0; (l_251 < 2); l_251 = safe_add_func_uint32_t_u_u(l_251, 8))
        { /* block id: 137 */
            return p_713->g_68[5][2];
        }
        if (p_49)
        { /* block id: 140 */
            if (p_713->g_214)
                goto lbl_278;
        }
        else
        { /* block id: 142 */
            uint8_t l_296 = 0xDAL;
            int32_t l_304 = 0x47047FC0L;
            for (p_713->g_246 = 0; (p_713->g_246 <= 2); p_713->g_246 += 1)
            { /* block id: 145 */
                return l_279;
            }
            for (p_713->g_177 = 0; (p_713->g_177 == 50); ++p_713->g_177)
            { /* block id: 150 */
                uint8_t *l_290[6] = {&p_713->g_23,&p_713->g_246,&p_713->g_23,&p_713->g_23,&p_713->g_246,&p_713->g_23};
                int32_t l_291[8][3];
                uint16_t *l_294[8];
                uint16_t **l_302[7][6][3] = {{{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]}},{{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]}},{{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]}},{{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]}},{{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]}},{{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]}},{{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]},{&l_301[2][5][2],(void*)0,&l_294[0]}}};
                int32_t *l_303 = &l_295[0];
                int i, j, k;
                for (i = 0; i < 8; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_291[i][j] = 0x77C8E468L;
                }
                for (i = 0; i < 8; i++)
                    l_294[i] = &p_713->g_207;
                (*l_303) = (safe_add_func_int32_t_s_s((((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(0xA5DCCD83L, ((((void*)0 != l_290[2]) > p_713->g_207) , (l_291[7][2] != (((safe_mod_func_uint16_t_u_u((l_296++), 65527UL)) <= (safe_div_func_int16_t_s_s((8L & (l_294[5] == (l_301[1][4][1] = l_301[2][5][2]))), 0x0966L))) ^ l_291[6][2]))))), 0UL)), p_713->g_68[3][1])) == 0xA35DL) , 0x7A57CA9EL), l_295[0]));
                l_304 = p_49;
            }
        }
        l_305[8][7] = l_305[7][4];
    }
    else
    { /* block id: 158 */
        int8_t *l_307 = &p_713->g_123[1][1][1];
        int32_t *l_308[3];
        int32_t **l_309 = &l_308[2];
        uint8_t l_340 = 0xFCL;
        uint8_t l_369 = 0UL;
        int32_t l_442 = 0x261FC4EDL;
        uint32_t l_496[2][4][6] = {{{0x3FC34F84L,0UL,4294967295UL,0UL,0x3FC34F84L,0x3FC34F84L},{0x3FC34F84L,0UL,4294967295UL,0UL,0x3FC34F84L,0x3FC34F84L},{0x3FC34F84L,0UL,4294967295UL,0UL,0x3FC34F84L,0x3FC34F84L},{0x3FC34F84L,0UL,4294967295UL,0UL,0x3FC34F84L,0x3FC34F84L}},{{0x3FC34F84L,0UL,4294967295UL,0UL,0x3FC34F84L,0x3FC34F84L},{0x3FC34F84L,0UL,4294967295UL,0UL,0x3FC34F84L,0x3FC34F84L},{0x3FC34F84L,0UL,4294967295UL,0UL,0x3FC34F84L,0x3FC34F84L},{0x3FC34F84L,0UL,4294967295UL,0UL,0x3FC34F84L,0x3FC34F84L}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_308[i] = &l_251;
        l_251 |= (((*l_307) ^= ((FAKE_DIVERGE(p_713->local_1_offset, get_local_id(1), 10) , l_262) == (p_713->g_207 , &p_713->g_246))) | p_713->g_23);
        (*l_309) = l_308[2];
        for (p_48 = 1; (p_48 >= 0); p_48 -= 1)
        { /* block id: 164 */
            int32_t *l_314[9] = {(void*)0,&p_713->g_68[3][1],(void*)0,(void*)0,&p_713->g_68[3][1],(void*)0,(void*)0,&p_713->g_68[3][1],(void*)0};
            int64_t *l_320 = &p_713->g_321;
            uint16_t *l_322 = &p_713->g_207;
            int32_t l_362 = 1L;
            int64_t l_386 = 1L;
            int32_t ****l_388 = &l_267;
            volatile struct S0 *l_426 = &p_713->g_427[1];
            uint32_t l_434 = 4294967291UL;
            uint8_t *l_490 = &l_369;
            int i;
            (1 + 1);
        }
    }
    (*l_526) = ((safe_sub_func_int64_t_s_s(((safe_lshift_func_uint16_t_u_u(p_713->g_275, 1)) <= (0x566DL < 65535UL)), p_713->g_358[4])) != p_49);
    return p_713->g_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_174 p_713->g_123 p_713->g_207 p_713->g_119 p_713->g_23
 * writes: p_713->g_174 p_713->g_214 p_713->g_23 p_713->g_68 p_713->g_119 p_713->g_116
 */
int64_t  func_52(uint8_t  p_53, uint32_t  p_54, int32_t  p_55, uint16_t  p_56, struct S1 * p_713)
{ /* block id: 68 */
    int64_t l_212 = (-1L);
    int32_t *l_215[2];
    int i;
    for (i = 0; i < 2; i++)
        l_215[i] = &p_713->g_68[3][1];
    for (p_713->g_174 = 0; (p_713->g_174 == (-12)); p_713->g_174 = safe_sub_func_int16_t_s_s(p_713->g_174, 5))
    { /* block id: 71 */
        int32_t *l_213 = &p_713->g_214;
        int32_t **l_216 = &l_215[0];
        int8_t l_224 = 1L;
        (*l_216) = ((safe_add_func_int8_t_s_s((p_713->g_123[0][0][0] , l_212), 1UL)) , (((*l_213) = 0x59F17BF1L) , l_215[0]));
        if (p_713->g_174)
        { /* block id: 74 */
            if (p_54)
                break;
            for (p_55 = 0; (p_55 <= 1); p_55 += 1)
            { /* block id: 78 */
                uint8_t l_220 = 1UL;
                for (p_713->g_23 = 0; (p_713->g_23 <= 1); p_713->g_23 += 1)
                { /* block id: 81 */
                    int i;
                    p_713->g_68[3][1] = ((void*)0 != l_215[p_55]);
                    for (p_713->g_214 = (-27); (p_713->g_214 < 16); ++p_713->g_214)
                    { /* block id: 85 */
                        uint64_t l_219[5] = {0x575828B78B4E161EL,0x575828B78B4E161EL,0x575828B78B4E161EL,0x575828B78B4E161EL,0x575828B78B4E161EL};
                        int i;
                        if (l_219[2])
                            break;
                        if (l_220)
                            continue;
                        if (p_56)
                            continue;
                    }
                    for (l_212 = 4; (l_212 > 19); l_212 = safe_add_func_uint8_t_u_u(l_212, 7))
                    { /* block id: 92 */
                        return p_55;
                    }
                }
            }
            (*l_216) = &p_55;
        }
        else
        { /* block id: 98 */
            uint8_t l_223 = 0x1CL;
            if (l_223)
                break;
            if (p_55)
                break;
            if (p_713->g_207)
                continue;
            (*l_216) = &p_55;
        }
        for (p_53 = 0; (p_53 <= 1); p_53 += 1)
        { /* block id: 106 */
            int32_t l_234 = (-1L);
            for (p_713->g_119 = 0; (p_713->g_119 <= 1); p_713->g_119 += 1)
            { /* block id: 109 */
                uint8_t *l_225 = &p_713->g_23;
                uint64_t *l_226 = &p_713->g_116;
                int i, j, k;
                (**l_216) = (((*l_225) ^= (p_713->g_123[p_713->g_119][p_53][p_713->g_119] >= (p_53 , (!(p_55 == l_224))))) > (((*l_226) = (p_56 | FAKE_DIVERGE(p_713->local_1_offset, get_local_id(1), 10))) ^ (safe_sub_func_int64_t_s_s(0x397FF54A15C8C227L, (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u(0x0AL)), (((1UL <= (safe_rshift_func_uint16_t_u_s(0x5B61L, l_234))) , (void*)0) != &p_713->g_174)))))));
            }
        }
    }
    for (p_713->g_119 = 0; (p_713->g_119 <= 31); p_713->g_119 = safe_add_func_int16_t_s_s(p_713->g_119, 1))
    { /* block id: 118 */
        uint64_t l_237 = 0x48A5FBA940064E38L;
        if (l_237)
            break;
    }
    return p_713->g_207;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_61 p_713->g_51 p_713->g_68 p_713->g_23 p_713->g_116 p_713->g_123 p_713->g_110 p_713->g_119 p_713->g_156 p_713->g_177 p_713->g_174 p_713->g_50
 * writes: p_713->g_61 p_713->g_51 p_713->g_68 p_713->g_110 p_713->g_116 p_713->g_119 p_713->g_123 p_713->g_23 p_713->g_174 p_713->g_177
 */
int64_t  func_57(uint64_t * p_58, struct S1 * p_713)
{ /* block id: 7 */
    int64_t l_60 = 0x2569FAA33FE686B7L;
    int32_t *l_67[1];
    uint32_t l_85 = 0x5B129247L;
    uint64_t *l_92 = &p_713->g_51;
    uint64_t **l_93 = &l_92;
    int16_t l_94 = (-1L);
    uint64_t l_95[6] = {6UL,0xE435D7CC8F446CBEL,6UL,6UL,0xE435D7CC8F446CBEL,6UL};
    int16_t l_96 = (-1L);
    int16_t l_117 = 0x196AL;
    uint64_t *l_137[8][7] = {{&p_713->g_116,&l_95[3],&l_95[3],&p_713->g_116,&p_713->g_116,&p_713->g_116,&p_713->g_116},{&p_713->g_116,&l_95[3],&l_95[3],&p_713->g_116,&p_713->g_116,&p_713->g_116,&p_713->g_116},{&p_713->g_116,&l_95[3],&l_95[3],&p_713->g_116,&p_713->g_116,&p_713->g_116,&p_713->g_116},{&p_713->g_116,&l_95[3],&l_95[3],&p_713->g_116,&p_713->g_116,&p_713->g_116,&p_713->g_116},{&p_713->g_116,&l_95[3],&l_95[3],&p_713->g_116,&p_713->g_116,&p_713->g_116,&p_713->g_116},{&p_713->g_116,&l_95[3],&l_95[3],&p_713->g_116,&p_713->g_116,&p_713->g_116,&p_713->g_116},{&p_713->g_116,&l_95[3],&l_95[3],&p_713->g_116,&p_713->g_116,&p_713->g_116,&p_713->g_116},{&p_713->g_116,&l_95[3],&l_95[3],&p_713->g_116,&p_713->g_116,&p_713->g_116,&p_713->g_116}};
    int32_t **l_138 = &l_67[0];
    int8_t l_178 = 0L;
    int16_t *l_203 = &l_117;
    uint8_t l_204 = 0x10L;
    int i, j;
    for (i = 0; i < 1; i++)
        l_67[i] = &p_713->g_68[3][1];
    if (l_60)
    { /* block id: 8 */
        volatile int32_t **l_62 = &p_713->g_61;
        int32_t l_70 = 1L;
        (*l_62) = p_713->g_61;
        for (p_713->g_51 = 11; (p_713->g_51 > 56); p_713->g_51 = safe_add_func_int16_t_s_s(p_713->g_51, 6))
        { /* block id: 12 */
            uint32_t l_71 = 0UL;
            for (l_60 = 18; (l_60 <= (-6)); --l_60)
            { /* block id: 15 */
                int32_t *l_69 = &p_713->g_68[3][1];
                l_69 = l_67[0];
                (*l_69) |= 0x5D8998D4L;
                if (p_713->g_68[3][2])
                    break;
            }
            ++l_71;
        }
    }
    else
    { /* block id: 22 */
        int8_t l_74 = 0x17L;
        int32_t l_75 = 0x1A9D0E46L;
        int32_t l_76[7][6][2] = {{{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L}},{{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L}},{{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L}},{{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L}},{{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L}},{{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L}},{{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L},{0L,0x738C1355L}}};
        int32_t l_77 = 0x5C0916D6L;
        int32_t l_78 = 0L;
        int32_t l_79 = 0x381DCF01L;
        int32_t l_80 = 0L;
        int32_t l_81 = 0x6B9B4FE2L;
        int32_t l_82 = 0x51A43B2DL;
        int32_t l_83 = 0x735059ABL;
        int32_t l_84[8][3][8] = {{{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L}},{{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L}},{{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L}},{{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L}},{{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L}},{{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L}},{{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L}},{{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L},{1L,1L,1L,0x20459850L,1L,0x63155DB8L,0x39DC62CBL,0x25C885B3L}}};
        int i, j, k;
        ++l_85;
    }
    l_96 = (safe_add_func_int64_t_s_s((safe_mod_func_uint32_t_u_u((((*l_93) = l_92) != (p_713->g_68[3][1] , (void*)0)), l_94)), (p_713->g_51 | l_95[0])));
    for (l_85 = 0; (l_85 <= 5); l_85 += 1)
    { /* block id: 29 */
        int32_t *l_97 = &p_713->g_68[3][1];
        int32_t **l_98 = (void*)0;
        int32_t **l_99 = &l_67[0];
        uint64_t ***l_108 = (void*)0;
        uint64_t **l_109 = &l_92;
        uint64_t *l_115 = &p_713->g_116;
        uint64_t *l_118 = &p_713->g_119;
        int64_t *l_120 = &l_60;
        int64_t l_121[4] = {(-1L),(-1L),(-1L),(-1L)};
        int8_t *l_122 = &p_713->g_123[0][0][0];
        int32_t l_124 = (-1L);
        int32_t **l_135 = &l_97;
        uint64_t **l_136[3][2][4];
        int32_t ***l_141 = &l_98;
        int32_t l_147[7] = {1L,0x701F0A48L,1L,1L,0x701F0A48L,1L,1L};
        uint32_t l_179[1];
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 4; k++)
                    l_136[i][j][k] = &l_118;
            }
        }
        for (i = 0; i < 1; i++)
            l_179[i] = 0UL;
        (*l_99) = l_97;
        l_124 &= (((safe_mul_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((((*l_122) = (safe_lshift_func_int16_t_s_s((l_95[l_85] > ((*l_120) ^= (safe_rshift_func_int16_t_s_u((((((p_713->g_110 = (l_109 = &p_58)) != (void*)0) != ((((*l_118) = (safe_sub_func_uint8_t_u_u(((0xDFDE9DF1BF41CA89L <= (0x61482281L | (((p_713->g_51 ^ (!(safe_mul_func_uint16_t_u_u(((((*l_97) ^ ((((((p_713->g_51 && ((((+((*l_115) = FAKE_DIVERGE(p_713->global_0_offset, get_global_id(0), 10))) | 0xA48274371E877551L) , 0xFAL) | 1L)) > p_713->g_51) <= l_117) < p_713->g_68[3][1]) , (*l_97)) , p_713->g_23)) | (-10L)) | (*l_97)), 1UL)))) || 4294967295UL) , p_713->g_116))) , 0x0EL), p_713->g_68[1][0]))) ^ 0xBFF233E68E44B7FDL) >= p_713->g_68[3][1])) || p_713->g_68[3][1]) > 0L), 6)))), l_121[1]))) < 0x3AL), (*l_97))), 0x19F7L)) || 0UL) == p_713->g_68[2][0]);
        (*l_135) = ((safe_add_func_int8_t_s_s((((void*)0 == &p_713->g_123[0][0][0]) >= ((l_67[0] = (p_713->g_123[0][0][0] , ((((((p_713->g_68[3][0] >= p_713->g_123[0][1][0]) >= (((65535UL < 0x9A1CL) < (safe_sub_func_uint64_t_u_u((safe_mod_func_int16_t_s_s((((safe_mod_func_int32_t_s_s(((safe_mod_func_int8_t_s_s((+((**l_99) != ((p_58 != (*p_713->g_110)) >= 0x80L))), 253UL)) != 4294967295UL), p_713->g_119)) == 5UL) , 0x215BL), p_713->g_51)), 5L))) , (**l_99))) < p_713->g_116) , p_713->g_51) | (**l_99)) , l_67[0]))) == (void*)0)), l_85)) , &p_713->g_68[5][1]);
        if ((p_58 != (l_137[0][2] = &l_95[0])))
        { /* block id: 41 */
            int32_t ***l_139 = (void*)0;
            int32_t ***l_140 = &l_135;
            int32_t l_149[1][7][10] = {{{(-1L),1L,6L,(-1L),0x6CDF4084L,6L,6L,0x6CDF4084L,(-1L),6L},{(-1L),1L,6L,(-1L),0x6CDF4084L,6L,6L,0x6CDF4084L,(-1L),6L},{(-1L),1L,6L,(-1L),0x6CDF4084L,6L,6L,0x6CDF4084L,(-1L),6L},{(-1L),1L,6L,(-1L),0x6CDF4084L,6L,6L,0x6CDF4084L,(-1L),6L},{(-1L),1L,6L,(-1L),0x6CDF4084L,6L,6L,0x6CDF4084L,(-1L),6L},{(-1L),1L,6L,(-1L),0x6CDF4084L,6L,6L,0x6CDF4084L,(-1L),6L},{(-1L),1L,6L,(-1L),0x6CDF4084L,6L,6L,0x6CDF4084L,(-1L),6L}}};
            int64_t l_180 = 0x09B0128B7AF958F1L;
            int i, j, k;
            (*l_140) = l_138;
            if (((((l_141 = l_140) == l_139) & (&p_713->g_50 != &p_713->g_50)) | (p_713->g_123[0][0][0] >= (((safe_add_func_int32_t_s_s((0x77898805535B230EL ^ (p_713->g_123[0][0][0] , 0xABA3EDC0E5944C72L)), (GROUP_DIVERGE(2, 1) || (safe_lshift_func_uint16_t_u_u((**l_138), FAKE_DIVERGE(p_713->group_1_offset, get_group_id(1), 10)))))) , &p_713->g_119) == p_58))))
            { /* block id: 44 */
                int64_t l_146 = 0x32ECA9E05B609BCAL;
                int32_t l_148 = 0L;
                int32_t l_150 = 0x39248A85L;
                int32_t l_151 = 0x23C11C24L;
                int32_t l_152[10] = {0L,0x211D84C9L,0L,0L,0x211D84C9L,0L,0L,0x211D84C9L,0L,0L};
                uint64_t l_153 = 0x8B5091CF3017F13BL;
                int i;
                l_153--;
                (*l_99) = &p_713->g_68[3][1];
                for (l_148 = 0; l_148 < 2; l_148 += 1)
                {
                    for (p_713->g_23 = 0; p_713->g_23 < 2; p_713->g_23 += 1)
                    {
                        for (l_151 = 0; l_151 < 2; l_151 += 1)
                        {
                            p_713->g_123[l_148][p_713->g_23][l_151] = 0x62L;
                        }
                    }
                }
            }
            else
            { /* block id: 48 */
                int32_t ***l_157 = &l_99;
                int64_t l_181[3][9] = {{0x26BF4DEF939C4FBFL,5L,0x26BF4DEF939C4FBFL,0x26BF4DEF939C4FBFL,5L,0x26BF4DEF939C4FBFL,0x26BF4DEF939C4FBFL,5L,0x26BF4DEF939C4FBFL},{0x26BF4DEF939C4FBFL,5L,0x26BF4DEF939C4FBFL,0x26BF4DEF939C4FBFL,5L,0x26BF4DEF939C4FBFL,0x26BF4DEF939C4FBFL,5L,0x26BF4DEF939C4FBFL},{0x26BF4DEF939C4FBFL,5L,0x26BF4DEF939C4FBFL,0x26BF4DEF939C4FBFL,5L,0x26BF4DEF939C4FBFL,0x26BF4DEF939C4FBFL,5L,0x26BF4DEF939C4FBFL}};
                int i, j;
                (*l_97) = ((p_713->g_156 == (GROUP_DIVERGE(1, 1) , l_157)) >= ((((void*)0 != &p_713->g_61) ^ (((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(p_713->g_116, 4)), GROUP_DIVERGE(1, 1))) > ((safe_rshift_func_int16_t_s_s((p_713->g_123[0][0][1] ^ p_713->g_68[3][1]), (((((((((safe_lshift_func_int16_t_s_s((((safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((((safe_mod_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((p_713->g_174 = ((*l_118) = 0xCF90992C471631DFL)), ((safe_mul_func_int8_t_s_s((p_713->g_177 &= (-7L)), 0x17L)) == p_713->g_123[0][0][0]))), (***l_157))) || p_713->g_174) , (***l_157)) < p_713->g_68[3][0]), (**l_138))), p_713->g_68[3][1])) ^ 0x64BEFD1AL) , 0x5AC7L), l_178)) ^ 65535UL) >= l_179[0]) > 5L) != p_713->g_68[3][1]) , l_180) & (**l_135)) && (***l_140)) & l_181[0][6]))) != (***l_157))) & p_713->g_51)) > (***l_157)));
            }
        }
        else
        { /* block id: 54 */
            uint8_t l_182[8] = {3UL,0x27L,3UL,3UL,0x27L,3UL,3UL,0x27L};
            int i;
            return l_182[2];
        }
        for (p_713->g_116 = 0; (p_713->g_116 <= 2); p_713->g_116 += 1)
        { /* block id: 59 */
            int i, j;
            p_713->g_68[(p_713->g_116 + 3)][p_713->g_116] = ((void*)0 == p_713->g_50);
        }
    }
    l_204 |= (safe_mod_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s((((FAKE_DIVERGE(p_713->global_0_offset, get_global_id(0), 10) , (safe_add_func_int32_t_s_s(((p_713->g_123[0][1][1] = p_713->g_123[0][1][0]) ^ 0x00L), ((0x70L != (safe_add_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((1L | ((*l_203) = (safe_rshift_func_int16_t_s_s(p_713->g_119, ((**l_138) | (safe_add_func_int32_t_s_s(6L, (safe_sub_func_int8_t_s_s((**l_138), (safe_lshift_func_int16_t_s_s(p_713->g_116, 11))))))))))), 9)), p_713->g_68[5][0]))) <= (**l_138))))) >= (**l_138)) , (**l_138)), 0x3EL)), 0x28L)), p_713->g_51));
    return p_713->g_23;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_714;
    struct S1* p_713 = &c_714;
    struct S1 c_715 = {
        {{{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL},{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL}},{{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL},{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL}},{{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL},{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL}},{{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL},{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL}},{{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL},{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL}},{{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL},{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL}},{{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL},{1UL,0x42B8FFD020461302L,0xBB1E5DE2CAEABA4AL,0xB9A31C0A9C5A74D4L,7UL}}}, // p_713->g_3
        {1L,1L,1L,1L,1L,1L}, // p_713->g_18
        0x60L, // p_713->g_23
        0xE05992E414E4A47BL, // p_713->g_51
        &p_713->g_51, // p_713->g_50
        (void*)0, // p_713->g_61
        {{0x697289F1L,0x697289F1L,0x697289F1L},{0x697289F1L,0x697289F1L,0x697289F1L},{0x697289F1L,0x697289F1L,0x697289F1L},{0x697289F1L,0x697289F1L,0x697289F1L},{0x697289F1L,0x697289F1L,0x697289F1L},{0x697289F1L,0x697289F1L,0x697289F1L},{0x697289F1L,0x697289F1L,0x697289F1L}}, // p_713->g_68
        (void*)0, // p_713->g_110
        0x4908DBA9805CD855L, // p_713->g_116
        0x74D01EFD3BF3B362L, // p_713->g_119
        {{{0x68L,0x68L},{0x68L,0x68L}},{{0x68L,0x68L},{0x68L,0x68L}}}, // p_713->g_123
        (void*)0, // p_713->g_156
        0x5CL, // p_713->g_174
        0UL, // p_713->g_177
        &p_713->g_110, // p_713->g_206
        1UL, // p_713->g_207
        0x72957DA9L, // p_713->g_214
        0xD9L, // p_713->g_246
        (void*)0, // p_713->g_264
        {{&p_713->g_264,&p_713->g_264,&p_713->g_264,&p_713->g_264},{&p_713->g_264,&p_713->g_264,&p_713->g_264,&p_713->g_264},{&p_713->g_264,&p_713->g_264,&p_713->g_264,&p_713->g_264}}, // p_713->g_263
        0L, // p_713->g_275
        0L, // p_713->g_321
        {0x00B9L,0x00B9L,0x00B9L,0x00B9L,0x00B9L}, // p_713->g_358
        0x12C6L, // p_713->g_392
        &p_713->g_392, // p_713->g_391
        &p_713->g_391, // p_713->g_390
        {0L,0x340AF6DEL,5L,0x411E0778L,0x5DFC926AL,0x2DFA1F455B020D5BL,0x97DD37DAL,0x659E50DC1D66C300L,3L,0x3100L}, // p_713->g_398
        {0x6D031D48L,0x2498C066L,4L,3UL,-1L,0UL,4294967294UL,0x137B03BD73B93F00L,0x6594C26437566EFBL,2L}, // p_713->g_399
        {0x1D07DF94L,0x4CA926EDL,0x75DF7796L,0UL,-7L,0UL,1UL,1L,0x52B7028BA34BF643L,-1L}, // p_713->g_400
        {1L,9L,-1L,0UL,0x58C4E30DL,1UL,0x78579614L,0x614EF60A16BF027EL,0L,-3L}, // p_713->g_401
        {-8L,0x4D9506A2L,0x52639570L,0x8E79EE25L,0x74C7678AL,0x40562B0E5FF07B80L,4294967295UL,-2L,0x246EA5E9553B120DL,1L}, // p_713->g_402
        {0x1DBC0B57L,9L,1L,0x7526983BL,0x41812C18L,1UL,0x9D7D1AE5L,1L,0x4B1C14E1AA4A55B0L,5L}, // p_713->g_403
        {0x34B9E564L,1L,0x56BABEFBL,2UL,0x74BE78A0L,0x53582A48E448A9F1L,4294967289UL,0x1B2FD699BEDC931FL,-6L,0x108DL}, // p_713->g_404
        {0L,0x365CE95FL,0x6DD95F2AL,0xAFCCBE66L,7L,18446744073709551615UL,0x0DB90EE1L,6L,0x446146A42FF931D2L,0x7857L}, // p_713->g_405
        {0x08BAF308L,-9L,0x2B50DD13L,0xB58B6E54L,0x32BD5BBBL,0x1D20C5E9B8A3B8F9L,0UL,0x23C1ABB5AF5D454EL,-1L,0x1A35L}, // p_713->g_406
        {0x0B4F2ACFL,1L,0x06FD879BL,0xDFB78D9FL,0x21AED2F8L,8UL,4294967295UL,0x4F2BC24AE679BF90L,2L,0x6A2CL}, // p_713->g_407
        {0x543D10CDL,0x6D677B8BL,0x16F6FA5AL,0x26898111L,-9L,0x923E5B786564F05FL,0xD55933D4L,0L,0L,2L}, // p_713->g_408
        {0x6FD3B7E5L,0x31E76D39L,-5L,4294967294UL,1L,0x115A832158F9E6A1L,4294967294UL,7L,1L,0x5346L}, // p_713->g_409
        {-2L,0x06483E3CL,0x642A1327L,1UL,0x140E1DABL,0x59483E7C6B407743L,0xD98311E6L,0x4B63D4F16C0DB6F2L,-1L,0x7E16L}, // p_713->g_410
        {{&p_713->g_402,&p_713->g_400,&p_713->g_409,(void*)0,&p_713->g_410,&p_713->g_402,(void*)0,&p_713->g_405},{&p_713->g_402,&p_713->g_400,&p_713->g_409,(void*)0,&p_713->g_410,&p_713->g_402,(void*)0,&p_713->g_405},{&p_713->g_402,&p_713->g_400,&p_713->g_409,(void*)0,&p_713->g_410,&p_713->g_402,(void*)0,&p_713->g_405},{&p_713->g_402,&p_713->g_400,&p_713->g_409,(void*)0,&p_713->g_410,&p_713->g_402,(void*)0,&p_713->g_405},{&p_713->g_402,&p_713->g_400,&p_713->g_409,(void*)0,&p_713->g_410,&p_713->g_402,(void*)0,&p_713->g_405},{&p_713->g_402,&p_713->g_400,&p_713->g_409,(void*)0,&p_713->g_410,&p_713->g_402,(void*)0,&p_713->g_405},{&p_713->g_402,&p_713->g_400,&p_713->g_409,(void*)0,&p_713->g_410,&p_713->g_402,(void*)0,&p_713->g_405},{&p_713->g_402,&p_713->g_400,&p_713->g_409,(void*)0,&p_713->g_410,&p_713->g_402,(void*)0,&p_713->g_405}}, // p_713->g_397
        &p_713->g_174, // p_713->g_418
        {{0x77DC15F3L,8L,0L,0xFFB7FCD5L,0L,1UL,0xF1B417F2L,0L,3L,9L},{0x77DC15F3L,8L,0L,0xFFB7FCD5L,0L,1UL,0xF1B417F2L,0L,3L,9L},{0x77DC15F3L,8L,0L,0xFFB7FCD5L,0L,1UL,0xF1B417F2L,0L,3L,9L},{0x77DC15F3L,8L,0L,0xFFB7FCD5L,0L,1UL,0xF1B417F2L,0L,3L,9L},{0x77DC15F3L,8L,0L,0xFFB7FCD5L,0L,1UL,0xF1B417F2L,0L,3L,9L}}, // p_713->g_427
        {{0x7559L,65529UL,0x2209L,0xDD86L,1UL,0x7559L,0xDD86L,0x075CL,0xDD86L},{0x7559L,65529UL,0x2209L,0xDD86L,1UL,0x7559L,0xDD86L,0x075CL,0xDD86L},{0x7559L,65529UL,0x2209L,0xDD86L,1UL,0x7559L,0xDD86L,0x075CL,0xDD86L},{0x7559L,65529UL,0x2209L,0xDD86L,1UL,0x7559L,0xDD86L,0x075CL,0xDD86L},{0x7559L,65529UL,0x2209L,0xDD86L,1UL,0x7559L,0xDD86L,0x075CL,0xDD86L}}, // p_713->g_506
        &p_713->g_506[4][3], // p_713->g_505
        &p_713->g_505, // p_713->g_504
        {-1L,0x2BDC9E1CL,0x0E05C359L,4294967291UL,0x017CE9A5L,18446744073709551615UL,8UL,-6L,-6L,0x6D4FL}, // p_713->g_540
        &p_713->g_540, // p_713->g_539
        {0L,0x25147F65L,-1L,0x27588534L,0x4EE4F49FL,18446744073709551615UL,0x2AC4AA81L,0x1EF65B1ED1B4909EL,6L,0x2328L}, // p_713->g_543
        (void*)0, // p_713->g_551
        &p_713->g_551, // p_713->g_550
        18446744073709551606UL, // p_713->g_587
        &p_713->g_587, // p_713->g_586
        {0x5F7FA5BEL,0x05E7C371L,1L,4294967295UL,0x0019863EL,0x5B70111EBBB1F66FL,0xF5F7F33AL,-4L,-4L,1L}, // p_713->g_625
        1L, // p_713->g_711
        {0x440917F3L,-1L,-1L,4294967294UL,2L,0x22463E858CF357B8L,4294967288UL,0x241E5F455E405A59L,0x0B54616F85B00325L,-8L}, // p_713->g_712
        sequence_input[get_global_id(0)], // p_713->global_0_offset
        sequence_input[get_global_id(1)], // p_713->global_1_offset
        sequence_input[get_global_id(2)], // p_713->global_2_offset
        sequence_input[get_local_id(0)], // p_713->local_0_offset
        sequence_input[get_local_id(1)], // p_713->local_1_offset
        sequence_input[get_local_id(2)], // p_713->local_2_offset
        sequence_input[get_group_id(0)], // p_713->group_0_offset
        sequence_input[get_group_id(1)], // p_713->group_1_offset
        sequence_input[get_group_id(2)], // p_713->group_2_offset
    };
    c_714 = c_715;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_713);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_713->g_3[i][j][k], "p_713->g_3[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_713->g_18[i], "p_713->g_18[i]", print_hash_value);

    }
    transparent_crc(p_713->g_23, "p_713->g_23", print_hash_value);
    transparent_crc(p_713->g_51, "p_713->g_51", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_713->g_68[i][j], "p_713->g_68[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_713->g_116, "p_713->g_116", print_hash_value);
    transparent_crc(p_713->g_119, "p_713->g_119", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_713->g_123[i][j][k], "p_713->g_123[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_713->g_174, "p_713->g_174", print_hash_value);
    transparent_crc(p_713->g_177, "p_713->g_177", print_hash_value);
    transparent_crc(p_713->g_207, "p_713->g_207", print_hash_value);
    transparent_crc(p_713->g_214, "p_713->g_214", print_hash_value);
    transparent_crc(p_713->g_246, "p_713->g_246", print_hash_value);
    transparent_crc(p_713->g_275, "p_713->g_275", print_hash_value);
    transparent_crc(p_713->g_321, "p_713->g_321", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_713->g_358[i], "p_713->g_358[i]", print_hash_value);

    }
    transparent_crc(p_713->g_392, "p_713->g_392", print_hash_value);
    transparent_crc(p_713->g_398.f0, "p_713->g_398.f0", print_hash_value);
    transparent_crc(p_713->g_398.f1, "p_713->g_398.f1", print_hash_value);
    transparent_crc(p_713->g_398.f2, "p_713->g_398.f2", print_hash_value);
    transparent_crc(p_713->g_398.f3, "p_713->g_398.f3", print_hash_value);
    transparent_crc(p_713->g_398.f4, "p_713->g_398.f4", print_hash_value);
    transparent_crc(p_713->g_398.f5, "p_713->g_398.f5", print_hash_value);
    transparent_crc(p_713->g_398.f6, "p_713->g_398.f6", print_hash_value);
    transparent_crc(p_713->g_398.f7, "p_713->g_398.f7", print_hash_value);
    transparent_crc(p_713->g_398.f8, "p_713->g_398.f8", print_hash_value);
    transparent_crc(p_713->g_398.f9, "p_713->g_398.f9", print_hash_value);
    transparent_crc(p_713->g_399.f0, "p_713->g_399.f0", print_hash_value);
    transparent_crc(p_713->g_399.f1, "p_713->g_399.f1", print_hash_value);
    transparent_crc(p_713->g_399.f2, "p_713->g_399.f2", print_hash_value);
    transparent_crc(p_713->g_399.f3, "p_713->g_399.f3", print_hash_value);
    transparent_crc(p_713->g_399.f4, "p_713->g_399.f4", print_hash_value);
    transparent_crc(p_713->g_399.f5, "p_713->g_399.f5", print_hash_value);
    transparent_crc(p_713->g_399.f6, "p_713->g_399.f6", print_hash_value);
    transparent_crc(p_713->g_399.f7, "p_713->g_399.f7", print_hash_value);
    transparent_crc(p_713->g_399.f8, "p_713->g_399.f8", print_hash_value);
    transparent_crc(p_713->g_399.f9, "p_713->g_399.f9", print_hash_value);
    transparent_crc(p_713->g_400.f0, "p_713->g_400.f0", print_hash_value);
    transparent_crc(p_713->g_400.f1, "p_713->g_400.f1", print_hash_value);
    transparent_crc(p_713->g_400.f2, "p_713->g_400.f2", print_hash_value);
    transparent_crc(p_713->g_400.f3, "p_713->g_400.f3", print_hash_value);
    transparent_crc(p_713->g_400.f4, "p_713->g_400.f4", print_hash_value);
    transparent_crc(p_713->g_400.f5, "p_713->g_400.f5", print_hash_value);
    transparent_crc(p_713->g_400.f6, "p_713->g_400.f6", print_hash_value);
    transparent_crc(p_713->g_400.f7, "p_713->g_400.f7", print_hash_value);
    transparent_crc(p_713->g_400.f8, "p_713->g_400.f8", print_hash_value);
    transparent_crc(p_713->g_400.f9, "p_713->g_400.f9", print_hash_value);
    transparent_crc(p_713->g_401.f0, "p_713->g_401.f0", print_hash_value);
    transparent_crc(p_713->g_401.f1, "p_713->g_401.f1", print_hash_value);
    transparent_crc(p_713->g_401.f2, "p_713->g_401.f2", print_hash_value);
    transparent_crc(p_713->g_401.f3, "p_713->g_401.f3", print_hash_value);
    transparent_crc(p_713->g_401.f4, "p_713->g_401.f4", print_hash_value);
    transparent_crc(p_713->g_401.f5, "p_713->g_401.f5", print_hash_value);
    transparent_crc(p_713->g_401.f6, "p_713->g_401.f6", print_hash_value);
    transparent_crc(p_713->g_401.f7, "p_713->g_401.f7", print_hash_value);
    transparent_crc(p_713->g_401.f8, "p_713->g_401.f8", print_hash_value);
    transparent_crc(p_713->g_401.f9, "p_713->g_401.f9", print_hash_value);
    transparent_crc(p_713->g_402.f0, "p_713->g_402.f0", print_hash_value);
    transparent_crc(p_713->g_402.f1, "p_713->g_402.f1", print_hash_value);
    transparent_crc(p_713->g_402.f2, "p_713->g_402.f2", print_hash_value);
    transparent_crc(p_713->g_402.f3, "p_713->g_402.f3", print_hash_value);
    transparent_crc(p_713->g_402.f4, "p_713->g_402.f4", print_hash_value);
    transparent_crc(p_713->g_402.f5, "p_713->g_402.f5", print_hash_value);
    transparent_crc(p_713->g_402.f6, "p_713->g_402.f6", print_hash_value);
    transparent_crc(p_713->g_402.f7, "p_713->g_402.f7", print_hash_value);
    transparent_crc(p_713->g_402.f8, "p_713->g_402.f8", print_hash_value);
    transparent_crc(p_713->g_402.f9, "p_713->g_402.f9", print_hash_value);
    transparent_crc(p_713->g_403.f0, "p_713->g_403.f0", print_hash_value);
    transparent_crc(p_713->g_403.f1, "p_713->g_403.f1", print_hash_value);
    transparent_crc(p_713->g_403.f2, "p_713->g_403.f2", print_hash_value);
    transparent_crc(p_713->g_403.f3, "p_713->g_403.f3", print_hash_value);
    transparent_crc(p_713->g_403.f4, "p_713->g_403.f4", print_hash_value);
    transparent_crc(p_713->g_403.f5, "p_713->g_403.f5", print_hash_value);
    transparent_crc(p_713->g_403.f6, "p_713->g_403.f6", print_hash_value);
    transparent_crc(p_713->g_403.f7, "p_713->g_403.f7", print_hash_value);
    transparent_crc(p_713->g_403.f8, "p_713->g_403.f8", print_hash_value);
    transparent_crc(p_713->g_403.f9, "p_713->g_403.f9", print_hash_value);
    transparent_crc(p_713->g_404.f0, "p_713->g_404.f0", print_hash_value);
    transparent_crc(p_713->g_404.f1, "p_713->g_404.f1", print_hash_value);
    transparent_crc(p_713->g_404.f2, "p_713->g_404.f2", print_hash_value);
    transparent_crc(p_713->g_404.f3, "p_713->g_404.f3", print_hash_value);
    transparent_crc(p_713->g_404.f4, "p_713->g_404.f4", print_hash_value);
    transparent_crc(p_713->g_404.f5, "p_713->g_404.f5", print_hash_value);
    transparent_crc(p_713->g_404.f6, "p_713->g_404.f6", print_hash_value);
    transparent_crc(p_713->g_404.f7, "p_713->g_404.f7", print_hash_value);
    transparent_crc(p_713->g_404.f8, "p_713->g_404.f8", print_hash_value);
    transparent_crc(p_713->g_404.f9, "p_713->g_404.f9", print_hash_value);
    transparent_crc(p_713->g_405.f0, "p_713->g_405.f0", print_hash_value);
    transparent_crc(p_713->g_405.f1, "p_713->g_405.f1", print_hash_value);
    transparent_crc(p_713->g_405.f2, "p_713->g_405.f2", print_hash_value);
    transparent_crc(p_713->g_405.f3, "p_713->g_405.f3", print_hash_value);
    transparent_crc(p_713->g_405.f4, "p_713->g_405.f4", print_hash_value);
    transparent_crc(p_713->g_405.f5, "p_713->g_405.f5", print_hash_value);
    transparent_crc(p_713->g_405.f6, "p_713->g_405.f6", print_hash_value);
    transparent_crc(p_713->g_405.f7, "p_713->g_405.f7", print_hash_value);
    transparent_crc(p_713->g_405.f8, "p_713->g_405.f8", print_hash_value);
    transparent_crc(p_713->g_405.f9, "p_713->g_405.f9", print_hash_value);
    transparent_crc(p_713->g_406.f0, "p_713->g_406.f0", print_hash_value);
    transparent_crc(p_713->g_406.f1, "p_713->g_406.f1", print_hash_value);
    transparent_crc(p_713->g_406.f2, "p_713->g_406.f2", print_hash_value);
    transparent_crc(p_713->g_406.f3, "p_713->g_406.f3", print_hash_value);
    transparent_crc(p_713->g_406.f4, "p_713->g_406.f4", print_hash_value);
    transparent_crc(p_713->g_406.f5, "p_713->g_406.f5", print_hash_value);
    transparent_crc(p_713->g_406.f6, "p_713->g_406.f6", print_hash_value);
    transparent_crc(p_713->g_406.f7, "p_713->g_406.f7", print_hash_value);
    transparent_crc(p_713->g_406.f8, "p_713->g_406.f8", print_hash_value);
    transparent_crc(p_713->g_406.f9, "p_713->g_406.f9", print_hash_value);
    transparent_crc(p_713->g_407.f0, "p_713->g_407.f0", print_hash_value);
    transparent_crc(p_713->g_407.f1, "p_713->g_407.f1", print_hash_value);
    transparent_crc(p_713->g_407.f2, "p_713->g_407.f2", print_hash_value);
    transparent_crc(p_713->g_407.f3, "p_713->g_407.f3", print_hash_value);
    transparent_crc(p_713->g_407.f4, "p_713->g_407.f4", print_hash_value);
    transparent_crc(p_713->g_407.f5, "p_713->g_407.f5", print_hash_value);
    transparent_crc(p_713->g_407.f6, "p_713->g_407.f6", print_hash_value);
    transparent_crc(p_713->g_407.f7, "p_713->g_407.f7", print_hash_value);
    transparent_crc(p_713->g_407.f8, "p_713->g_407.f8", print_hash_value);
    transparent_crc(p_713->g_407.f9, "p_713->g_407.f9", print_hash_value);
    transparent_crc(p_713->g_408.f0, "p_713->g_408.f0", print_hash_value);
    transparent_crc(p_713->g_408.f1, "p_713->g_408.f1", print_hash_value);
    transparent_crc(p_713->g_408.f2, "p_713->g_408.f2", print_hash_value);
    transparent_crc(p_713->g_408.f3, "p_713->g_408.f3", print_hash_value);
    transparent_crc(p_713->g_408.f4, "p_713->g_408.f4", print_hash_value);
    transparent_crc(p_713->g_408.f5, "p_713->g_408.f5", print_hash_value);
    transparent_crc(p_713->g_408.f6, "p_713->g_408.f6", print_hash_value);
    transparent_crc(p_713->g_408.f7, "p_713->g_408.f7", print_hash_value);
    transparent_crc(p_713->g_408.f8, "p_713->g_408.f8", print_hash_value);
    transparent_crc(p_713->g_408.f9, "p_713->g_408.f9", print_hash_value);
    transparent_crc(p_713->g_409.f0, "p_713->g_409.f0", print_hash_value);
    transparent_crc(p_713->g_409.f1, "p_713->g_409.f1", print_hash_value);
    transparent_crc(p_713->g_409.f2, "p_713->g_409.f2", print_hash_value);
    transparent_crc(p_713->g_409.f3, "p_713->g_409.f3", print_hash_value);
    transparent_crc(p_713->g_409.f4, "p_713->g_409.f4", print_hash_value);
    transparent_crc(p_713->g_409.f5, "p_713->g_409.f5", print_hash_value);
    transparent_crc(p_713->g_409.f6, "p_713->g_409.f6", print_hash_value);
    transparent_crc(p_713->g_409.f7, "p_713->g_409.f7", print_hash_value);
    transparent_crc(p_713->g_409.f8, "p_713->g_409.f8", print_hash_value);
    transparent_crc(p_713->g_409.f9, "p_713->g_409.f9", print_hash_value);
    transparent_crc(p_713->g_410.f0, "p_713->g_410.f0", print_hash_value);
    transparent_crc(p_713->g_410.f1, "p_713->g_410.f1", print_hash_value);
    transparent_crc(p_713->g_410.f2, "p_713->g_410.f2", print_hash_value);
    transparent_crc(p_713->g_410.f3, "p_713->g_410.f3", print_hash_value);
    transparent_crc(p_713->g_410.f4, "p_713->g_410.f4", print_hash_value);
    transparent_crc(p_713->g_410.f5, "p_713->g_410.f5", print_hash_value);
    transparent_crc(p_713->g_410.f6, "p_713->g_410.f6", print_hash_value);
    transparent_crc(p_713->g_410.f7, "p_713->g_410.f7", print_hash_value);
    transparent_crc(p_713->g_410.f8, "p_713->g_410.f8", print_hash_value);
    transparent_crc(p_713->g_410.f9, "p_713->g_410.f9", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_713->g_427[i].f0, "p_713->g_427[i].f0", print_hash_value);
        transparent_crc(p_713->g_427[i].f1, "p_713->g_427[i].f1", print_hash_value);
        transparent_crc(p_713->g_427[i].f2, "p_713->g_427[i].f2", print_hash_value);
        transparent_crc(p_713->g_427[i].f3, "p_713->g_427[i].f3", print_hash_value);
        transparent_crc(p_713->g_427[i].f4, "p_713->g_427[i].f4", print_hash_value);
        transparent_crc(p_713->g_427[i].f5, "p_713->g_427[i].f5", print_hash_value);
        transparent_crc(p_713->g_427[i].f6, "p_713->g_427[i].f6", print_hash_value);
        transparent_crc(p_713->g_427[i].f7, "p_713->g_427[i].f7", print_hash_value);
        transparent_crc(p_713->g_427[i].f8, "p_713->g_427[i].f8", print_hash_value);
        transparent_crc(p_713->g_427[i].f9, "p_713->g_427[i].f9", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_713->g_506[i][j], "p_713->g_506[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_713->g_540.f0, "p_713->g_540.f0", print_hash_value);
    transparent_crc(p_713->g_540.f1, "p_713->g_540.f1", print_hash_value);
    transparent_crc(p_713->g_540.f2, "p_713->g_540.f2", print_hash_value);
    transparent_crc(p_713->g_540.f3, "p_713->g_540.f3", print_hash_value);
    transparent_crc(p_713->g_540.f4, "p_713->g_540.f4", print_hash_value);
    transparent_crc(p_713->g_540.f5, "p_713->g_540.f5", print_hash_value);
    transparent_crc(p_713->g_540.f6, "p_713->g_540.f6", print_hash_value);
    transparent_crc(p_713->g_540.f7, "p_713->g_540.f7", print_hash_value);
    transparent_crc(p_713->g_540.f8, "p_713->g_540.f8", print_hash_value);
    transparent_crc(p_713->g_540.f9, "p_713->g_540.f9", print_hash_value);
    transparent_crc(p_713->g_543.f0, "p_713->g_543.f0", print_hash_value);
    transparent_crc(p_713->g_543.f1, "p_713->g_543.f1", print_hash_value);
    transparent_crc(p_713->g_543.f2, "p_713->g_543.f2", print_hash_value);
    transparent_crc(p_713->g_543.f3, "p_713->g_543.f3", print_hash_value);
    transparent_crc(p_713->g_543.f4, "p_713->g_543.f4", print_hash_value);
    transparent_crc(p_713->g_543.f5, "p_713->g_543.f5", print_hash_value);
    transparent_crc(p_713->g_543.f6, "p_713->g_543.f6", print_hash_value);
    transparent_crc(p_713->g_543.f7, "p_713->g_543.f7", print_hash_value);
    transparent_crc(p_713->g_543.f8, "p_713->g_543.f8", print_hash_value);
    transparent_crc(p_713->g_543.f9, "p_713->g_543.f9", print_hash_value);
    transparent_crc(p_713->g_587, "p_713->g_587", print_hash_value);
    transparent_crc(p_713->g_625.f0, "p_713->g_625.f0", print_hash_value);
    transparent_crc(p_713->g_625.f1, "p_713->g_625.f1", print_hash_value);
    transparent_crc(p_713->g_625.f2, "p_713->g_625.f2", print_hash_value);
    transparent_crc(p_713->g_625.f3, "p_713->g_625.f3", print_hash_value);
    transparent_crc(p_713->g_625.f4, "p_713->g_625.f4", print_hash_value);
    transparent_crc(p_713->g_625.f5, "p_713->g_625.f5", print_hash_value);
    transparent_crc(p_713->g_625.f6, "p_713->g_625.f6", print_hash_value);
    transparent_crc(p_713->g_625.f7, "p_713->g_625.f7", print_hash_value);
    transparent_crc(p_713->g_625.f8, "p_713->g_625.f8", print_hash_value);
    transparent_crc(p_713->g_625.f9, "p_713->g_625.f9", print_hash_value);
    transparent_crc(p_713->g_711, "p_713->g_711", print_hash_value);
    transparent_crc(p_713->g_712.f0, "p_713->g_712.f0", print_hash_value);
    transparent_crc(p_713->g_712.f1, "p_713->g_712.f1", print_hash_value);
    transparent_crc(p_713->g_712.f2, "p_713->g_712.f2", print_hash_value);
    transparent_crc(p_713->g_712.f3, "p_713->g_712.f3", print_hash_value);
    transparent_crc(p_713->g_712.f4, "p_713->g_712.f4", print_hash_value);
    transparent_crc(p_713->g_712.f5, "p_713->g_712.f5", print_hash_value);
    transparent_crc(p_713->g_712.f6, "p_713->g_712.f6", print_hash_value);
    transparent_crc(p_713->g_712.f7, "p_713->g_712.f7", print_hash_value);
    transparent_crc(p_713->g_712.f8, "p_713->g_712.f8", print_hash_value);
    transparent_crc(p_713->g_712.f9, "p_713->g_712.f9", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
