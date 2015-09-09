// ---fake_divergence -g 76,86,1 -l 1,86,1
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


// Seed: 50

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   int16_t  f1;
   int64_t  f2;
};

union U1 {
   uint64_t  f0;
   volatile int16_t  f1;
   uint16_t  f2;
};

struct S2 {
    int64_t g_2[7][4][7];
    volatile int32_t g_3;
    int32_t g_4;
    volatile int32_t g_5;
    int32_t g_6;
    int16_t g_44;
    int32_t g_57;
    int32_t g_67;
    uint16_t g_69;
    volatile int32_t g_80;
    int32_t g_81;
    union U0 g_87;
    int32_t g_109[8];
    int32_t * volatile g_108;
    volatile int32_t *g_113;
    int8_t g_119;
    uint16_t g_122;
    volatile union U0 g_124;
    volatile union U0 *g_123;
    int16_t g_165;
    uint8_t g_167;
    uint8_t g_170;
    int64_t g_227;
    uint32_t g_231[2];
    int32_t *g_233;
    int32_t ** volatile g_232;
    uint16_t g_257;
    uint8_t g_260;
    uint32_t *g_261;
    uint64_t g_266;
    int32_t * volatile g_281[6];
    int32_t * volatile g_282;
    uint64_t g_310;
    volatile int16_t g_311[9][2];
    int32_t * volatile g_314;
    uint16_t g_315;
    volatile union U1 g_335[4];
    int64_t g_356;
    int64_t g_360;
    volatile int16_t g_364;
    volatile int16_t *g_363;
    volatile int16_t **g_362[1][4];
    volatile int32_t ** volatile g_374[6][3][7];
    union U0 *g_392;
    int32_t g_443;
    uint32_t g_447[1][3];
    uint32_t g_448[10];
    int32_t *g_463[6];
    int32_t ** volatile g_465;
    int32_t * volatile g_488;
    volatile union U1 g_536;
    int32_t ** volatile g_539;
    union U1 g_544;
    union U1 *g_543;
    volatile union U1 g_550;
    int16_t *g_608;
    int16_t **g_607;
    uint64_t g_666[6];
    union U0 g_724;
    int64_t g_729;
    union U0 **g_741;
    union U0 **g_744;
    uint64_t g_799;
    uint8_t g_809;
    int32_t ** volatile g_811;
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
int32_t  func_1(struct S2 * p_812);
int32_t  func_11(uint32_t  p_12, int64_t  p_13, int16_t  p_14, int32_t  p_15, int64_t  p_16, struct S2 * p_812);
int64_t  func_18(int32_t  p_19, int32_t  p_20, uint32_t  p_21, uint32_t  p_22, int32_t  p_23, struct S2 * p_812);
int64_t  func_30(int32_t  p_31, int32_t  p_32, uint32_t  p_33, uint32_t  p_34, int64_t  p_35, struct S2 * p_812);
uint8_t  func_37(uint32_t  p_38, int16_t  p_39, uint32_t  p_40, int64_t  p_41, struct S2 * p_812);
int8_t  func_50(uint8_t  p_51, int16_t  p_52, struct S2 * p_812);
int32_t  func_53(int32_t  p_54, struct S2 * p_812);
int32_t * func_58(int32_t * p_59, uint64_t  p_60, int32_t * p_61, struct S2 * p_812);
uint8_t  func_64(int32_t * p_65, struct S2 * p_812);
union U0 * func_97(int32_t * p_98, union U0 * p_99, union U0 * p_100, struct S2 * p_812);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_812->g_4 p_812->g_108 p_812->g_109
 * writes: p_812->g_4
 */
int32_t  func_1(struct S2 * p_812)
{ /* block id: 4 */
    int8_t l_36 = (-1L);
    uint32_t l_42 = 0xD7279364L;
    int16_t *l_605[8][9][1] = {{{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44}},{{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44}},{{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44}},{{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44}},{{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44}},{{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44}},{{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44}},{{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44},{&p_812->g_44}}};
    int16_t **l_604 = &l_605[6][7][0];
    uint8_t l_618 = 0x6AL;
    int32_t *l_622 = &p_812->g_6;
    int32_t *l_623 = &p_812->g_109[1];
    int32_t l_624 = 0x58FEF0D4L;
    uint32_t l_625 = 1UL;
    union U0 l_633 = {0x60D09F8EL};
    uint16_t *l_645[8][2] = {{&p_812->g_257,&p_812->g_257},{&p_812->g_257,&p_812->g_257},{&p_812->g_257,&p_812->g_257},{&p_812->g_257,&p_812->g_257},{&p_812->g_257,&p_812->g_257},{&p_812->g_257,&p_812->g_257},{&p_812->g_257,&p_812->g_257},{&p_812->g_257,&p_812->g_257}};
    uint64_t l_691 = 0x296F6364CCC6D10EL;
    int16_t l_766 = 0x6A89L;
    int8_t *l_787 = &l_36;
    int8_t **l_786 = &l_787;
    int i, j, k;
    for (p_812->g_4 = 0; (p_812->g_4 <= 3); p_812->g_4 += 1)
    { /* block id: 7 */
        uint16_t l_485 = 8UL;
        int64_t *l_583[8] = {&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360};
        int32_t l_594[6][5] = {{0x02A37BECL,(-2L),0x02A37BECL,0x02A37BECL,(-2L)},{0x02A37BECL,(-2L),0x02A37BECL,0x02A37BECL,(-2L)},{0x02A37BECL,(-2L),0x02A37BECL,0x02A37BECL,(-2L)},{0x02A37BECL,(-2L),0x02A37BECL,0x02A37BECL,(-2L)},{0x02A37BECL,(-2L),0x02A37BECL,0x02A37BECL,(-2L)},{0x02A37BECL,(-2L),0x02A37BECL,0x02A37BECL,(-2L)}};
        int16_t *l_628 = &p_812->g_165;
        int32_t l_664 = 0x2595318EL;
        int32_t *l_747[6] = {(void*)0,&l_624,(void*)0,(void*)0,&l_624,(void*)0};
        int32_t l_767 = (-4L);
        uint32_t l_784 = 0xAE480CD1L;
        uint32_t *l_785[3];
        uint32_t l_807 = 4294967291UL;
        uint64_t l_808 = 18446744073709551615UL;
        int i, j;
        for (i = 0; i < 3; i++)
            l_785[i] = &p_812->g_447[0][2];
        (1 + 1);
    }
    return (*p_812->g_108);
}


/* ------------------------------------------ */
/* 
 * reads : p_812->g_109 p_812->g_67 p_812->g_81 p_812->g_443 p_812->g_266 p_812->g_311 p_812->g_57 p_812->g_448 p_812->g_108 p_812->g_463 p_812->g_6 p_812->g_2 p_812->g_536 p_812->g_69 p_812->g_465 p_812->g_539 p_812->g_314 p_812->g_282 p_812->g_544.f0 p_812->g_87.f1 p_812->g_447 p_812->g_550 p_812->g_356
 * writes: p_812->g_109 p_812->g_81 p_812->g_67 p_812->g_87.f0 p_812->g_443 p_812->g_57 p_812->g_266 p_812->g_122 p_812->g_44 p_812->g_69 p_812->g_310 p_812->g_227 p_812->g_463 p_812->g_2 p_812->g_257 p_812->g_170 p_812->g_392 p_812->g_165 p_812->g_233 p_812->g_87.f2 p_812->g_543 p_812->g_544.f0 p_812->g_87.f1 p_812->g_356
 */
int32_t  func_11(uint32_t  p_12, int64_t  p_13, int16_t  p_14, int32_t  p_15, int64_t  p_16, struct S2 * p_812)
{ /* block id: 221 */
    int32_t *l_486 = &p_812->g_109[0];
    int32_t *l_487 = &p_812->g_81;
    int32_t *l_489 = &p_812->g_67;
    uint32_t *l_492 = &p_812->g_87.f0;
    int32_t l_493 = (-7L);
    union U0 *l_509 = &p_812->g_87;
    int32_t l_565 = 0x0D606F1CL;
    int32_t l_567[8];
    int i;
    for (i = 0; i < 8; i++)
        l_567[i] = 0L;
    (*l_489) = ((*l_487) = ((*l_486) |= (p_16 ^ p_12)));
    (*l_489) = ((4294967288UL >= ((safe_mod_func_int32_t_s_s(1L, ((*l_492) = ((*l_487) = FAKE_DIVERGE(p_812->local_2_offset, get_local_id(2), 10))))) && ((*l_489) < ((18446744073709551615UL | (p_15 && (*l_487))) , l_493)))) || p_13);
    for (p_812->g_443 = 1; (p_812->g_443 >= 0); p_812->g_443 -= 1)
    { /* block id: 230 */
        int32_t l_497[1];
        int32_t l_499 = 0L;
        union U0 *l_510 = (void*)0;
        uint16_t *l_527 = &p_812->g_257;
        int i;
        for (i = 0; i < 1; i++)
            l_497[i] = 4L;
        for (p_812->g_57 = 9; (p_812->g_57 >= 0); p_812->g_57 -= 1)
        { /* block id: 233 */
            uint8_t l_500 = 0xF8L;
            union U0 l_506[3] = {{5UL},{5UL},{5UL}};
            int32_t l_508[6] = {0x35FD5A45L,0x35FD5A45L,0x35FD5A45L,0x35FD5A45L,0x35FD5A45L,0x35FD5A45L};
            int32_t l_533[10] = {0x610713CDL,0x610713CDL,0x610713CDL,0x610713CDL,0x610713CDL,0x610713CDL,0x610713CDL,0x610713CDL,0x610713CDL,0x610713CDL};
            int i;
            for (p_812->g_266 = 0; (p_812->g_266 <= 1); p_812->g_266 += 1)
            { /* block id: 236 */
                uint16_t *l_496[7] = {&p_812->g_257,&p_812->g_257,&p_812->g_257,&p_812->g_257,&p_812->g_257,&p_812->g_257,&p_812->g_257};
                int32_t l_498 = 1L;
                union U0 l_505 = {0UL};
                int16_t *l_507 = &p_812->g_44;
                int i;
                for (p_812->g_122 = 3; (p_812->g_122 <= 9); p_812->g_122 += 1)
                { /* block id: 239 */
                    int i, j;
                    if (p_812->g_311[(p_812->g_266 + 6)][p_812->g_443])
                        break;
                    (*l_487) = ((*l_489) = (-6L));
                }
                l_508[0] = ((safe_add_func_uint16_t_u_u((--l_500), p_812->g_448[p_812->g_57])) && ((safe_mul_func_int16_t_s_s(((l_506[2] = l_505) , ((18446744073709551615UL && FAKE_DIVERGE(p_812->global_1_offset, get_global_id(1), 10)) , ((*l_507) = p_812->g_448[(p_812->g_443 + 2)]))), p_812->g_448[(p_812->g_443 + 1)])) | GROUP_DIVERGE(1, 1)));
                if (p_15)
                    continue;
            }
            if (p_15)
                break;
            l_510 = l_509;
            for (p_812->g_69 = 0; (p_812->g_69 <= 1); p_812->g_69 += 1)
            { /* block id: 254 */
                uint8_t l_516 = 252UL;
                uint8_t l_528 = 0xC0L;
                union U1 *l_542 = (void*)0;
                int32_t l_547[5][10][5] = {{{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L}},{{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L}},{{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L}},{{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L}},{{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L},{0L,(-1L),0x346340EBL,0x6F71F2B9L,0x38450111L}}};
                int i, j, k;
                for (p_812->g_310 = 0; (p_812->g_310 <= 1); p_812->g_310 += 1)
                { /* block id: 257 */
                    uint16_t *l_526[4];
                    int64_t *l_531 = &p_812->g_2[6][3][5];
                    int8_t *l_532[5][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
                    uint8_t *l_534 = &p_812->g_170;
                    uint8_t *l_535 = &l_516;
                    union U0 **l_537 = &p_812->g_392;
                    int16_t *l_538 = &p_812->g_165;
                    int32_t **l_540 = &p_812->g_463[4];
                    int32_t **l_541 = &p_812->g_233;
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_526[i] = &p_812->g_257;
                    for (p_812->g_227 = 0; (p_812->g_227 <= 1); p_812->g_227 += 1)
                    { /* block id: 260 */
                        int32_t **l_511 = &p_812->g_463[4];
                        uint16_t *l_522 = &p_812->g_122;
                        uint8_t *l_523[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_523[i] = &p_812->g_170;
                        (*l_511) = &l_493;
                        (*l_487) = (safe_mod_func_uint32_t_u_u((l_516 != ((safe_rshift_func_uint16_t_u_u(65531UL, (safe_unary_minus_func_int8_t_s(((safe_add_func_uint16_t_u_u(((*l_522) = 0UL), ((1UL && (l_523[0] == (((safe_add_func_uint32_t_u_u(p_14, ((((((l_527 = l_526[3]) != (void*)0) , l_522) == (void*)0) & (*p_812->g_108)) ^ GROUP_DIVERGE(1, 1)))) != p_812->g_81) , (void*)0))) & l_528))) , p_812->g_67))))) < (**l_511))), 0x21CB5944L));
                    }
                    if ((l_508[2] = (((((*l_538) = ((l_508[0] , 0x548C56D4L) > ((((safe_sub_func_uint16_t_u_u((((*l_531) = p_812->g_2[5][0][0]) | FAKE_DIVERGE(p_812->global_1_offset, get_global_id(1), 10)), ((*l_527) = (&p_812->g_57 != &p_15)))) , (l_533[7] = 0x60L)) <= ((*l_535) = ((*l_534) = FAKE_DIVERGE(p_812->local_1_offset, get_local_id(1), 10)))) <= ((((p_812->g_536 , ((*l_537) = l_510)) == (void*)0) == l_528) ^ 0L)))) >= p_812->g_69) , &l_499) == (void*)0)))
                    { /* block id: 274 */
                        (*p_812->g_539) = (*p_812->g_465);
                        (*l_489) = (*p_812->g_314);
                    }
                    else
                    { /* block id: 277 */
                        return (*l_486);
                    }
                    (*l_489) = ((void*)0 == &p_14);
                    (*l_541) = ((*l_540) = (*p_812->g_465));
                }
                for (p_812->g_87.f2 = 1; (p_812->g_87.f2 >= 0); p_812->g_87.f2 -= 1)
                { /* block id: 286 */
                    p_812->g_543 = l_542;
                    if ((*p_812->g_282))
                        break;
                    if (l_497[0])
                        break;
                    l_547[1][9][4] = (safe_mod_func_int8_t_s_s((-5L), p_16));
                }
            }
        }
        if (p_13)
            break;
        for (p_812->g_57 = 1; (p_812->g_57 >= 0); p_812->g_57 -= 1)
        { /* block id: 297 */
            int i, j;
            (*l_486) &= 0L;
            if (p_812->g_311[(p_812->g_57 + 5)][p_812->g_443])
                continue;
        }
    }
    for (p_812->g_266 = 0; (p_812->g_266 <= 0); p_812->g_266 += 1)
    { /* block id: 304 */
        uint8_t l_558 = 1UL;
        int32_t l_561 = 0L;
        int32_t l_566 = 0x5071AE0DL;
        if (p_16)
            break;
        (*l_489) &= (&l_509 == (void*)0);
        (*l_487) = (*l_489);
        for (p_812->g_544.f0 = 0; (p_812->g_544.f0 <= 0); p_812->g_544.f0 += 1)
        { /* block id: 310 */
            uint32_t l_568 = 0xAF0C8403L;
            for (p_812->g_87.f1 = 3; (p_812->g_87.f1 >= 0); p_812->g_87.f1 -= 1)
            { /* block id: 313 */
                int i, j;
                return p_812->g_447[p_812->g_544.f0][(p_812->g_544.f0 + 2)];
            }
            for (p_16 = 0; (p_16 <= 0); p_16 += 1)
            { /* block id: 318 */
                int32_t *l_562 = &p_812->g_109[0];
                int32_t *l_563 = &l_493;
                int32_t *l_564[2][8] = {{&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4]},{&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4],&p_812->g_109[4]}};
                int i, j;
                (*l_489) |= (((((safe_mul_func_int64_t_s_s(0x06C888549322263EL, ((p_812->g_550 , p_812->g_447[p_16][(p_812->g_266 + 2)]) <= 0x3F8DA135L))) && (safe_sub_func_int64_t_s_s((0xD8045B99B50B8E3CL && p_812->g_447[p_16][(p_812->g_544.f0 + 1)]), (safe_unary_minus_func_int8_t_s(0x40L))))) , l_492) == (void*)0) <= p_812->g_447[p_16][(p_812->g_544.f0 + 1)]);
                for (p_812->g_356 = 0; (p_812->g_356 == (-2)); p_812->g_356--)
                { /* block id: 322 */
                    int32_t *l_556 = (void*)0;
                    int32_t *l_557[2][7] = {{&p_812->g_109[0],&p_812->g_109[0],&p_812->g_4,(void*)0,&l_493,(void*)0,&p_812->g_4},{&p_812->g_109[0],&p_812->g_109[0],&p_812->g_4,(void*)0,&l_493,(void*)0,&p_812->g_4}};
                    int i, j;
                    l_558--;
                    return (*p_812->g_314);
                }
                l_568--;
                (*l_487) ^= (*p_812->g_314);
            }
            return p_16;
        }
    }
    return (*p_812->g_282);
}


/* ------------------------------------------ */
/* 
 * reads : p_812->g_227 p_812->g_165 p_812->g_81 p_812->g_257 p_812->g_463 p_812->g_465 p_812->g_6 p_812->g_67 p_812->g_232 p_812->g_122 p_812->g_109
 * writes: p_812->g_87.f1 p_812->g_165 p_812->g_67 p_812->g_463 p_812->g_233 p_812->g_266 p_812->g_122
 */
int64_t  func_18(int32_t  p_19, int32_t  p_20, uint32_t  p_21, uint32_t  p_22, int32_t  p_23, struct S2 * p_812)
{ /* block id: 194 */
    int32_t l_449 = 0x540B2483L;
    int16_t *l_452 = &p_812->g_87.f1;
    int16_t *l_453 = &p_812->g_165;
    int32_t *l_461 = &p_812->g_67;
    int32_t l_462[3][1];
    int8_t *l_478 = &p_812->g_119;
    uint16_t *l_480[7] = {&p_812->g_122,&p_812->g_122,&p_812->g_122,&p_812->g_122,&p_812->g_122,&p_812->g_122,&p_812->g_122};
    uint16_t **l_479 = &l_480[4];
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_462[i][j] = (-1L);
    }
    p_23 &= p_22;
    p_23 = l_449;
    if (((safe_rshift_func_uint16_t_u_u(((((*l_453) ^= ((*l_452) = (!(+(p_812->g_227 != 0x66D7L))))) & p_22) || ((safe_rshift_func_int8_t_s_s((safe_add_func_int32_t_s_s(((safe_unary_minus_func_int8_t_s(((p_812->g_81 == p_812->g_257) >= ((-4L) >= ((*l_461) = p_22))))) <= (p_21 >= 65531UL)), FAKE_DIVERGE(p_812->local_0_offset, get_local_id(0), 10))), 2)) == 0x2A40AB47427F0A37L)), l_462[1][0])) >= p_22))
    { /* block id: 200 */
        int32_t **l_464 = &l_461;
        (*p_812->g_465) = ((*l_464) = p_812->g_463[4]);
    }
    else
    { /* block id: 203 */
        int8_t *l_476 = &p_812->g_119;
        int32_t l_484 = 0L;
        for (p_21 = 0; (p_21 >= 27); ++p_21)
        { /* block id: 206 */
            int32_t *l_471 = (void*)0;
            int8_t **l_477 = &l_476;
            uint64_t *l_481 = &p_812->g_266;
            (*l_461) &= ((-1L) <= p_812->g_6);
            for (p_20 = 17; (p_20 <= 16); --p_20)
            { /* block id: 210 */
                int8_t l_470 = 0x46L;
                return l_470;
            }
            (*p_812->g_232) = l_471;
            l_449 |= ((safe_rshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s((((((*l_477) = l_476) != l_478) > p_20) ^ ((void*)0 != &p_812->g_266)), ((((((((*l_481) = ((void*)0 != l_479)) > ((++(**l_479)) <= ((&p_812->g_119 == (l_484 , &p_812->g_119)) >= p_812->g_257))) , 0xAB7779B2L) , p_23) != l_484) >= (*l_461)) && 1L))), p_812->g_109[5])) , 1L);
        }
    }
    return (*l_461);
}


/* ------------------------------------------ */
/* 
 * reads : p_812->g_69 p_812->g_44 p_812->g_57 p_812->g_87.f0 p_812->g_108 p_812->g_109 p_812->g_6 p_812->g_122 p_812->g_67 p_812->g_2 p_812->g_113 p_812->g_3 p_812->g_119 p_812->g_170 p_812->g_167 p_812->g_87 p_812->g_80 p_812->g_165 p_812->g_231 p_812->g_232 p_812->g_87.f2 p_812->g_4 p_812->g_261 p_812->g_282 p_812->g_81 p_812->g_311 p_812->g_314 p_812->g_310 p_812->g_315 p_812->g_257 p_812->g_335 p_812->g_362 p_812->g_227 p_812->g_266 p_812->g_363 p_812->g_364 p_812->g_356
 * writes: p_812->g_57 p_812->g_69 p_812->g_44 p_812->g_67 p_812->g_81 p_812->g_87.f0 p_812->g_109 p_812->g_113 p_812->g_87.f1 p_812->g_122 p_812->g_123 p_812->g_3 p_812->g_119 p_812->g_165 p_812->g_167 p_812->g_87 p_812->g_227 p_812->g_231 p_812->g_233 p_812->g_170 p_812->g_260 p_812->g_266 p_812->g_257 p_812->g_310 p_812->g_315 p_812->g_356 p_812->g_392 p_812->g_80
 */
int64_t  func_30(int32_t  p_31, int32_t  p_32, uint32_t  p_33, uint32_t  p_34, int64_t  p_35, struct S2 * p_812)
{ /* block id: 16 */
    uint16_t l_55 = 0xD9E1L;
    int32_t *l_56 = &p_812->g_57;
    uint64_t *l_265 = &p_812->g_266;
    uint32_t l_279[5][1][10] = {{{4294967293UL,4294967293UL,0x53B6EB93L,0x6EC8D345L,0x27E5E998L,0x6EC8D345L,0x53B6EB93L,4294967293UL,4294967293UL,0x53B6EB93L}},{{4294967293UL,4294967293UL,0x53B6EB93L,0x6EC8D345L,0x27E5E998L,0x6EC8D345L,0x53B6EB93L,4294967293UL,4294967293UL,0x53B6EB93L}},{{4294967293UL,4294967293UL,0x53B6EB93L,0x6EC8D345L,0x27E5E998L,0x6EC8D345L,0x53B6EB93L,4294967293UL,4294967293UL,0x53B6EB93L}},{{4294967293UL,4294967293UL,0x53B6EB93L,0x6EC8D345L,0x27E5E998L,0x6EC8D345L,0x53B6EB93L,4294967293UL,4294967293UL,0x53B6EB93L}},{{4294967293UL,4294967293UL,0x53B6EB93L,0x6EC8D345L,0x27E5E998L,0x6EC8D345L,0x53B6EB93L,4294967293UL,4294967293UL,0x53B6EB93L}}};
    int16_t *l_316 = &p_812->g_165;
    int32_t l_320 = 0x368615E9L;
    volatile int32_t *l_375 = &p_812->g_3;
    int8_t l_386 = 1L;
    int32_t l_390 = (-2L);
    union U0 *l_404 = &p_812->g_87;
    uint32_t l_441 = 0xF9BF1DC8L;
    int i, j, k;
    p_812->g_315 ^= (safe_mod_func_int8_t_s_s(func_50((p_34 , ((p_35 | ((GROUP_DIVERGE(2, 1) >= (((((*l_265) = (func_53(((*l_56) = l_55), p_812) == p_812->g_4)) < (safe_mod_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((0x6867B30FL > (safe_rshift_func_int8_t_s_u(((safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s(((safe_lshift_func_int8_t_s_u((-1L), (p_812->g_4 == (((!(((&p_812->g_4 != (void*)0) , 0x45L) & p_31)) || 0x42C101E7L) || (-1L))))) || l_55), p_34)), p_32)) < p_812->g_6), 1))), l_279[4][0][7])), 5L))) >= p_34) != 65535UL)) < p_812->g_4)) & p_33)), l_279[4][0][7], p_812), p_31));
    l_320 = ((&p_812->g_119 != (void*)0) == ((((p_33 , l_316) == (void*)0) ^ p_812->g_257) | ((((safe_sub_func_uint8_t_u_u(p_35, (((safe_unary_minus_func_uint64_t_u(0xA46BA99FDA0DB310L)) , 0x2CF594EBL) & l_279[3][0][4]))) < l_279[4][0][7]) >= p_32) >= p_812->g_122)));
lbl_439:
    for (p_812->g_67 = 0; (p_812->g_67 > (-30)); p_812->g_67 = safe_sub_func_uint16_t_u_u(p_812->g_67, 5))
    { /* block id: 120 */
        int32_t l_355 = 0x44338563L;
        int32_t l_366 = 0x3D2FAB76L;
        for (p_812->g_310 = 0; (p_812->g_310 <= 7); p_812->g_310 += 1)
        { /* block id: 123 */
            int64_t *l_352 = (void*)0;
            int8_t *l_357 = &p_812->g_119;
            int64_t *l_358 = &p_812->g_87.f2;
            int64_t *l_359[8] = {&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360,&p_812->g_360};
            int16_t **l_361 = &l_316;
            uint8_t *l_365 = &p_812->g_167;
            int i;
            p_31 = (safe_add_func_int32_t_s_s((p_812->g_109[p_812->g_310] = (safe_mod_func_uint64_t_u_u(1UL, (safe_add_func_int64_t_s_s(((safe_add_func_uint32_t_u_u((p_812->g_109[p_812->g_310] <= (safe_div_func_int16_t_s_s((((*l_365) = (+(safe_div_func_int64_t_s_s(((((p_812->g_335[2] , ((l_355 = ((*l_358) = (safe_div_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(p_35, (((*l_316) = p_812->g_122) , (safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((((((*l_357) |= (p_812->g_356 = (safe_rshift_func_int16_t_s_s((((safe_sub_func_int64_t_s_s(((safe_lshift_func_uint16_t_u_u(((void*)0 == l_352), ((!p_34) , (safe_mod_func_uint32_t_u_u(0x881E8CD3L, p_32))))) , 0x005390F69E3C95EAL), l_355)) != GROUP_DIVERGE(0, 1)) < l_55), 8)))) || p_34) == l_355) != 0x5F09L), p_812->g_6)), 2)), GROUP_DIVERGE(2, 1)))))), l_355)))) , l_361)) != p_812->g_362[0][3]) , l_355) , 9L), p_812->g_109[p_812->g_310])))) == p_812->g_44), 0xE79BL))), p_812->g_109[p_812->g_310])) || l_279[1][0][0]), l_366))))), p_34));
            return p_812->g_170;
        }
        for (p_812->g_44 = 0; (p_812->g_44 > (-19)); p_812->g_44 = safe_sub_func_int64_t_s_s(p_812->g_44, 7))
        { /* block id: 136 */
            int32_t *l_369 = &p_812->g_109[0];
            (*l_369) |= p_33;
            return l_279[2][0][3];
        }
        for (p_812->g_227 = 0; (p_812->g_227 >= (-17)); p_812->g_227 = safe_sub_func_int8_t_s_s(p_812->g_227, 5))
        { /* block id: 142 */
            uint32_t *l_379 = &l_279[2][0][7];
            int64_t *l_388 = &p_812->g_356;
            int64_t **l_387 = &l_388;
            int32_t l_389 = 0x7DC2EC3AL;
            for (l_55 = 0; (l_55 == 28); l_55 = safe_add_func_uint32_t_u_u(l_55, 2))
            { /* block id: 145 */
                return p_812->g_227;
            }
            l_375 = &p_812->g_80;
            p_31 = (safe_unary_minus_func_int64_t_s((l_390 = (((l_379 != (void*)0) & ((0x60L == ((safe_sub_func_int32_t_s_s((l_320 |= ((!(safe_sub_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s(l_386, p_34)), ((p_35 & ((((p_32 , &p_812->g_2[5][1][0]) == ((*l_387) = &p_812->g_227)) == p_35) >= 65535UL)) > (*l_375))))) | 0x29199F79172D43E7L)), l_389)) , FAKE_DIVERGE(p_812->global_0_offset, get_global_id(0), 10))) >= p_812->g_266)) || (*p_812->g_108)))));
        }
    }
    for (p_812->g_356 = 0; (p_812->g_356 >= 0); p_812->g_356 -= 1)
    { /* block id: 157 */
        union U0 *l_391 = &p_812->g_87;
        int32_t l_434 = 0x49F0B17DL;
        p_812->g_392 = l_391;
        for (p_32 = 0; (p_32 <= 0); p_32 += 1)
        { /* block id: 161 */
            union U0 **l_397 = (void*)0;
            union U0 **l_398 = &l_391;
            int32_t l_399 = 0x328DC470L;
            uint8_t l_415 = 0x90L;
            uint16_t *l_416 = &p_812->g_315;
            int32_t l_435 = 0x2BD29416L;
            uint64_t l_436 = 18446744073709551606UL;
            int8_t l_440[5] = {0x07L,0x07L,0x07L,0x07L,0x07L};
            int i;
            (*l_375) = ((safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((*l_398) = &p_812->g_87) != ((l_399 < (safe_sub_func_uint64_t_u_u(p_31, (safe_rshift_func_int8_t_s_s(0x6AL, p_812->g_170))))) , l_404)), (safe_div_func_uint16_t_u_u(((*l_416) = (((3L != FAKE_DIVERGE(p_812->group_0_offset, get_group_id(0), 10)) != ((((p_812->g_87.f1 = (safe_add_func_int8_t_s_s((((safe_lshift_func_int16_t_s_u(((*l_316) |= p_32), 5)) , ((((safe_lshift_func_int16_t_s_s((safe_div_func_uint16_t_u_u(p_31, (*p_812->g_363))), 11)) && p_812->g_170) == 0x5517F5C9L) || (*l_375))) < 0x979334A3F60B6609L), p_812->g_170))) >= p_31) , 0x34L) , l_415)) , 1UL)), p_812->g_81)))), p_812->g_257)) | p_35);
            l_399 |= 0x7825D801L;
            for (p_812->g_87.f0 = 0; (p_812->g_87.f0 <= 0); p_812->g_87.f0 += 1)
            { /* block id: 170 */
                int8_t l_428 = 0x66L;
                int32_t l_429 = 0x658848EEL;
                int32_t l_430 = 0x4BD1EF2FL;
                int32_t l_431 = 0x517607EDL;
                int32_t l_432 = 1L;
                int32_t l_433 = (-4L);
                for (l_320 = 0; (l_320 <= 0); l_320 += 1)
                { /* block id: 173 */
                    int32_t **l_417 = &p_812->g_233;
                    int64_t *l_424 = &p_812->g_227;
                    int32_t *l_427[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_427[i] = &p_812->g_109[0];
                    (*l_417) = func_58(((*l_417) = &l_320), p_812->g_81, func_58(&l_320, ((((safe_lshift_func_int16_t_s_u(((safe_lshift_func_int16_t_s_s((((p_812->g_122 & (*l_375)) >= (safe_mul_func_uint8_t_u_u(((void*)0 == l_424), (safe_mod_func_int64_t_s_s((p_812->g_227 = l_279[0][0][6]), (-6L)))))) | p_812->g_119), 3)) <= 0x49B0L), 10)) , p_33) > p_34) || p_34), &p_812->g_67, p_812), p_812);
                    --l_436;
                }
                if (p_812->g_67)
                    goto lbl_439;
            }
            (*l_375) |= 4L;
            for (p_812->g_122 = 0; (p_812->g_122 <= 0); p_812->g_122 += 1)
            { /* block id: 184 */
                (*l_375) = 0x73D1AF90L;
                (*l_375) &= l_440[2];
            }
        }
    }
    return l_441;
}


/* ------------------------------------------ */
/* 
 * reads : p_812->g_6
 * writes:
 */
uint8_t  func_37(uint32_t  p_38, int16_t  p_39, uint32_t  p_40, int64_t  p_41, struct S2 * p_812)
{ /* block id: 13 */
    uint64_t l_45 = 1UL;
    --l_45;
    return p_812->g_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_812->g_282 p_812->g_109 p_812->g_6 p_812->g_81 p_812->g_231 p_812->g_170 p_812->g_311 p_812->g_314 p_812->g_310
 * writes: p_812->g_109 p_812->g_257 p_812->g_119 p_812->g_310 p_812->g_81 p_812->g_67
 */
int8_t  func_50(uint8_t  p_51, int16_t  p_52, struct S2 * p_812)
{ /* block id: 105 */
    uint64_t l_280 = 0UL;
    uint64_t *l_291 = (void*)0;
    uint64_t *l_292 = &l_280;
    uint16_t *l_295 = &p_812->g_257;
    int32_t l_298 = 0x0014FFD6L;
    int16_t *l_300[8] = {&p_812->g_44,&p_812->g_44,&p_812->g_44,&p_812->g_44,&p_812->g_44,&p_812->g_44,&p_812->g_44,&p_812->g_44};
    int16_t **l_299 = &l_300[4];
    int8_t *l_308 = &p_812->g_119;
    uint64_t *l_309 = &p_812->g_310;
    int32_t l_312[5];
    int32_t *l_313 = &p_812->g_81;
    int i;
    for (i = 0; i < 5; i++)
        l_312[i] = 1L;
    (*p_812->g_282) |= l_280;
    (*p_812->g_314) = ((safe_unary_minus_func_int32_t_s((p_812->g_6 , (p_812->g_81 , ((*l_313) ^= (((((((*l_309) = (((p_51 || 0x7544L) != (((safe_lshift_func_int8_t_s_u(0x4FL, 4)) == ((l_298 = (safe_mod_func_uint16_t_u_u(((safe_mod_func_uint16_t_u_u(((*l_295) = (safe_unary_minus_func_uint64_t_u((--(*l_292))))), (((safe_sub_func_int32_t_s_s(l_298, ((((*l_299) = &p_812->g_44) == &p_812->g_44) , (safe_add_func_int8_t_s_s(((*l_308) = (safe_unary_minus_func_uint64_t_u(((((((safe_lshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u((0x7DL ^ 0xE7L), GROUP_DIVERGE(0, 1))), 11)) >= p_812->g_231[0]) < 0x2CL) && 0x2AL) <= p_52) ^ p_52)))), p_52))))) && p_52) & p_51))) <= p_812->g_170), p_51))) || l_298)) ^ p_812->g_231[1])) && p_52)) , p_812->g_311[0][0]) ^ l_312[2]) == 0x59L) >= p_812->g_109[1]) , p_51)))))) ^ p_52);
    return p_812->g_310;
}


/* ------------------------------------------ */
/* 
 * reads : p_812->g_69 p_812->g_44 p_812->g_57 p_812->g_87.f0 p_812->g_108 p_812->g_109 p_812->g_6 p_812->g_122 p_812->g_67 p_812->g_2 p_812->g_113 p_812->g_3 p_812->g_119 p_812->g_170 p_812->g_167 p_812->g_87 p_812->g_80 p_812->g_165 p_812->g_231 p_812->g_232 p_812->g_87.f2 p_812->g_4 p_812->g_261
 * writes: p_812->g_69 p_812->g_44 p_812->g_57 p_812->g_67 p_812->g_81 p_812->g_87.f0 p_812->g_109 p_812->g_113 p_812->g_87.f1 p_812->g_122 p_812->g_123 p_812->g_3 p_812->g_119 p_812->g_165 p_812->g_167 p_812->g_87 p_812->g_227 p_812->g_231 p_812->g_233 p_812->g_170 p_812->g_260
 */
int32_t  func_53(int32_t  p_54, struct S2 * p_812)
{ /* block id: 18 */
    int16_t l_255 = 9L;
    uint16_t *l_256[8] = {&p_812->g_257,&p_812->g_257,&p_812->g_257,&p_812->g_257,&p_812->g_257,&p_812->g_257,&p_812->g_257,&p_812->g_257};
    int32_t l_258[5][8] = {{0x6413706EL,0x216ACC42L,0x741C8523L,0x216ACC42L,0x6413706EL,0x6413706EL,0x216ACC42L,0x741C8523L},{0x6413706EL,0x216ACC42L,0x741C8523L,0x216ACC42L,0x6413706EL,0x6413706EL,0x216ACC42L,0x741C8523L},{0x6413706EL,0x216ACC42L,0x741C8523L,0x216ACC42L,0x6413706EL,0x6413706EL,0x216ACC42L,0x741C8523L},{0x6413706EL,0x216ACC42L,0x741C8523L,0x216ACC42L,0x6413706EL,0x6413706EL,0x216ACC42L,0x741C8523L},{0x6413706EL,0x216ACC42L,0x741C8523L,0x216ACC42L,0x6413706EL,0x6413706EL,0x216ACC42L,0x741C8523L}};
    uint8_t *l_259 = &p_812->g_260;
    int32_t *l_262 = &p_812->g_4;
    int32_t **l_264 = &l_262;
    int i, j;
    (*l_264) = func_58(((safe_mul_func_int16_t_s_s((func_37(((func_64(&p_812->g_57, p_812) & (safe_mul_func_int8_t_s_s((p_812->g_6 & l_255), p_812->g_6))) < (((*l_259) = (p_812->g_4 > (l_258[3][4] = l_255))) < ((void*)0 == p_812->g_261))), l_255, p_54, l_255, p_812) | p_54), (-9L))) , (void*)0), p_54, l_262, p_812);
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_58(int32_t * p_59, uint64_t  p_60, int32_t * p_61, struct S2 * p_812)
{ /* block id: 99 */
    int32_t *l_263 = (void*)0;
    l_263 = l_263;
    return p_59;
}


/* ------------------------------------------ */
/* 
 * reads : p_812->g_69 p_812->g_87.f0 p_812->g_108 p_812->g_109 p_812->g_6 p_812->g_122 p_812->g_67 p_812->g_2 p_812->g_113 p_812->g_3 p_812->g_57 p_812->g_44 p_812->g_119 p_812->g_170 p_812->g_167 p_812->g_87 p_812->g_80 p_812->g_165 p_812->g_231 p_812->g_232 p_812->g_87.f2 p_812->g_4
 * writes: p_812->g_69 p_812->g_44 p_812->g_57 p_812->g_67 p_812->g_81 p_812->g_87.f0 p_812->g_109 p_812->g_113 p_812->g_87.f1 p_812->g_122 p_812->g_123 p_812->g_3 p_812->g_119 p_812->g_165 p_812->g_167 p_812->g_87 p_812->g_227 p_812->g_231 p_812->g_233 p_812->g_170
 */
uint8_t  func_64(int32_t * p_65, struct S2 * p_812)
{ /* block id: 19 */
    int32_t *l_66 = &p_812->g_67;
    int32_t *l_68[7] = {&p_812->g_67,&p_812->g_67,&p_812->g_67,&p_812->g_67,&p_812->g_67,&p_812->g_67,&p_812->g_67};
    int32_t **l_128 = (void*)0;
    uint16_t *l_183 = &p_812->g_69;
    uint16_t *l_191 = &p_812->g_69;
    int32_t l_200 = 0x6659D938L;
    uint32_t l_214 = 1UL;
    uint64_t l_228 = 18446744073709551609UL;
    uint64_t l_247 = 0xA777E85B639F850FL;
    int i;
lbl_234:
    ++p_812->g_69;
    for (p_812->g_44 = 4; (p_812->g_44 < 15); p_812->g_44 = safe_add_func_uint8_t_u_u(p_812->g_44, 1))
    { /* block id: 23 */
        union U0 *l_86 = &p_812->g_87;
        int32_t l_120[4][8][6] = {{{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L}},{{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L}},{{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L}},{{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L},{0L,8L,(-4L),(-3L),0x56A42CAAL,0x2B24AB74L}}};
        int32_t l_171[5][6] = {{0x1FB6E159L,0x1FB6E159L,2L,0x22CD4613L,0x6BA36B31L,0x22CD4613L},{0x1FB6E159L,0x1FB6E159L,2L,0x22CD4613L,0x6BA36B31L,0x22CD4613L},{0x1FB6E159L,0x1FB6E159L,2L,0x22CD4613L,0x6BA36B31L,0x22CD4613L},{0x1FB6E159L,0x1FB6E159L,2L,0x22CD4613L,0x6BA36B31L,0x22CD4613L},{0x1FB6E159L,0x1FB6E159L,2L,0x22CD4613L,0x6BA36B31L,0x22CD4613L}};
        uint16_t *l_187 = &p_812->g_122;
        uint16_t **l_186 = &l_187;
        uint16_t **l_188 = (void*)0;
        uint16_t *l_190 = &p_812->g_122;
        uint16_t **l_189[5][1] = {{&l_190},{&l_190},{&l_190},{&l_190},{&l_190}};
        uint64_t l_252 = 18446744073709551607UL;
        int i, j, k;
        for (p_812->g_57 = 0; (p_812->g_57 > 19); ++p_812->g_57)
        { /* block id: 26 */
            int32_t *l_101 = &p_812->g_67;
            union U0 *l_117 = (void*)0;
            uint64_t l_162 = 0x70B09ED61E283F7BL;
            for (p_812->g_69 = 9; (p_812->g_69 != 57); ++p_812->g_69)
            { /* block id: 29 */
                int8_t l_159 = 0x47L;
                int32_t l_168 = 0x212F535EL;
                for (p_812->g_67 = 12; (p_812->g_67 != (-8)); p_812->g_67 = safe_sub_func_int16_t_s_s(p_812->g_67, 8))
                { /* block id: 32 */
                    union U0 *l_102 = (void*)0;
                    int32_t **l_127 = &l_101;
                    uint32_t *l_160 = (void*)0;
                    uint32_t *l_161 = &p_812->g_87.f0;
                    int8_t *l_163 = &p_812->g_119;
                    int16_t *l_164 = &p_812->g_165;
                    uint8_t *l_166 = &p_812->g_167;
                    uint8_t *l_169[6] = {(void*)0,&p_812->g_170,(void*)0,(void*)0,&p_812->g_170,(void*)0};
                    uint16_t *l_174[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    for (p_812->g_81 = 0; (p_812->g_81 >= 12); p_812->g_81 = safe_add_func_uint16_t_u_u(p_812->g_81, 2))
                    { /* block id: 35 */
                        int32_t l_92 = 0x74F2DDDEL;
                        union U0 **l_114 = (void*)0;
                        union U0 **l_115 = (void*)0;
                        union U0 **l_116 = &l_102;
                        int8_t *l_118[6] = {&p_812->g_119,&p_812->g_119,&p_812->g_119,&p_812->g_119,&p_812->g_119,&p_812->g_119};
                        int16_t *l_121 = &p_812->g_87.f1;
                        int i;
                        p_812->g_123 = (((safe_div_func_uint8_t_u_u((((void*)0 != l_86) , (safe_add_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_u((l_92 | (~((p_812->g_122 ^= (((*l_121) = (safe_mul_func_int8_t_s_s(((l_120[0][1][0] = (safe_mul_func_int16_t_s_s((((*l_116) = func_97(l_101, l_102, &p_812->g_87, p_812)) != l_117), (l_92 == 0x6120L)))) , p_812->g_6), 7UL))) , l_120[0][1][0])) < (*l_66)))), p_812->g_2[1][2][6])), FAKE_DIVERGE(p_812->local_2_offset, get_local_id(2), 10)))), (-7L))) || GROUP_DIVERGE(2, 1)) , (void*)0);
                        (*p_812->g_113) &= l_92;
                    }
                    (*l_127) = ((safe_mul_func_uint8_t_u_u(((l_127 == l_128) < ((safe_mod_func_uint8_t_u_u((l_120[0][1][0] = (safe_div_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(((((safe_div_func_int8_t_s_s((safe_mul_func_int16_t_s_s((-5L), (safe_mod_func_uint16_t_u_u((p_812->g_2[1][0][0] , ((((safe_mod_func_uint64_t_u_u((safe_rshift_func_int16_t_s_u((((((l_168 = (((*l_166) = (safe_lshift_func_uint8_t_u_u(((p_812->g_57 <= FAKE_DIVERGE(p_812->local_1_offset, get_local_id(1), 10)) && ((safe_div_func_int32_t_s_s((((safe_mul_func_int16_t_s_s((((*l_164) = ((((safe_mul_func_uint8_t_u_u(p_812->g_122, ((*l_163) = (0x00F67D39L || ((((*l_161) = (safe_sub_func_int64_t_s_s(0x70A9E87E310A61F9L, ((safe_div_func_int64_t_s_s(p_812->g_57, l_159)) || 0xBBDA2652L)))) ^ l_162) != p_812->g_44))))) , p_812->g_119) & (-3L)) == 0L)) , 0x0598L), (*l_101))) , (*l_101)) < (*l_101)), 4294967289UL)) , 0x1BBA3292AD2651A9L)), 6))) <= p_812->g_57)) != 0x7FF3L) , 18446744073709551615UL) < l_159) || FAKE_DIVERGE(p_812->local_0_offset, get_local_id(0), 10)), GROUP_DIVERGE(0, 1))), l_120[0][1][0])) ^ p_812->g_6) , (*p_812->g_108)) && l_120[0][1][0])), (-2L))))), 3UL)) & FAKE_DIVERGE(p_812->local_2_offset, get_local_id(2), 10)) ^ l_120[0][1][0]) < p_812->g_122), p_812->g_44)), l_120[0][3][1])), p_812->g_57))), l_171[1][2])) | p_812->g_170)), p_812->g_122)) , p_65);
                    l_120[0][1][0] = (p_812->g_69 >= ((p_812->g_167 & 0x0CL) >= ((p_812->g_122 = 0x17FEL) < (0x50B37558L && 0x64370164L))));
                }
            }
        }
        if ((l_120[0][7][3] = ((safe_mod_func_int32_t_s_s(((((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_812->group_0_offset, get_group_id(0), 10), 6)) ^ ((((safe_sub_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s(((void*)0 == l_183), (safe_sub_func_uint8_t_u_u((((((*l_86) = (*l_86)) , l_183) == (l_191 = ((*l_186) = (void*)0))) > p_812->g_80), (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(p_812->g_170, ((p_812->g_109[3] , (safe_div_func_int8_t_s_s((((safe_lshift_func_int8_t_s_s((*l_66), p_812->g_6)) , 0L) == l_120[1][3][3]), 255UL))) < 0x2D9ED224L))), (*l_66))))))) > 0x6D0EF2AE6F9C14EDL), l_200)) & GROUP_DIVERGE(2, 1)) | (*l_66)) & 1UL)) < l_120[0][1][0]) && 0x28FAL), p_812->g_109[7])) ^ 0x71L)))
        { /* block id: 68 */
            uint64_t l_201 = 0x7E8150FF4D6F5489L;
            return l_201;
        }
        else
        { /* block id: 70 */
            union U0 l_212 = {4294967295UL};
            uint8_t *l_217 = &p_812->g_170;
            uint16_t **l_250 = &l_190;
            for (p_812->g_69 = (-7); (p_812->g_69 >= 57); p_812->g_69 = safe_add_func_int16_t_s_s(p_812->g_69, 1))
            { /* block id: 73 */
                int32_t l_213 = 0x36E13F6EL;
                int64_t *l_226 = &p_812->g_227;
                int8_t *l_229 = &p_812->g_119;
                uint32_t *l_230[3];
                int16_t *l_251 = &p_812->g_87.f1;
                int i;
                for (i = 0; i < 3; i++)
                    l_230[i] = (void*)0;
                if (((((safe_mul_func_uint16_t_u_u((safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((((safe_sub_func_int64_t_s_s((+(((l_212 , l_213) , (p_812->g_170 , p_65)) != ((l_214 & (p_812->g_231[0] |= ((safe_lshift_func_int8_t_s_s(0x70L, (((l_217 == l_217) ^ (((safe_mul_func_int8_t_s_s(((*l_229) = ((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(((((safe_sub_func_int64_t_s_s(((*l_226) = (0UL | l_213)), 0x6AE03A9D77DEF9FAL)) <= (*l_66)) < l_228) == l_213), l_212.f0)), p_812->g_44)) | l_213)), (*l_66))) != p_812->g_6) & p_812->g_44)) == p_812->g_165))) ^ l_212.f0))) , &p_812->g_57))), l_171[2][0])) >= 0x1B3B912DD5A0D50FL) < p_812->g_165) == 0x46L), FAKE_DIVERGE(p_812->global_2_offset, get_global_id(2), 10))), 4UL)), 0x02D6L)) == l_212.f0) != l_212.f0) == 0x2BD5D16FL))
                { /* block id: 77 */
                    if ((*p_812->g_108))
                        break;
                    for (p_812->g_87.f2 = 1; (p_812->g_87.f2 >= 0); p_812->g_87.f2 -= 1)
                    { /* block id: 81 */
                        int i, j;
                        (*p_812->g_232) = &l_213;
                        l_171[(p_812->g_87.f2 + 1)][(p_812->g_87.f2 + 3)] = 0x2EA97A0AL;
                    }
                    if (p_812->g_6)
                        goto lbl_234;
                }
                else
                { /* block id: 86 */
                    (*l_66) = ((safe_mod_func_uint8_t_u_u(((p_812->g_4 , (-1L)) , FAKE_DIVERGE(p_812->local_2_offset, get_local_id(2), 10)), ((*l_217) &= (safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_812->group_0_offset, get_group_id(0), 10), (7L == ((l_212.f0 , l_212.f0) != (safe_add_func_int16_t_s_s((safe_mod_func_int64_t_s_s((1UL < l_212.f0), (safe_add_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(l_247, l_120[1][5][3])), 0xD2L)))), 0L))))))))) , l_213);
                }
                l_171[1][5] &= ((l_213 | ((*l_251) = (((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), 4)) , (void*)0) == l_250))) < l_212.f0);
            }
            (*l_66) = (GROUP_DIVERGE(0, 1) , l_252);
        }
    }
    return p_812->g_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_812->g_87.f0 p_812->g_108 p_812->g_109
 * writes: p_812->g_87.f0 p_812->g_109 p_812->g_113
 */
union U0 * func_97(int32_t * p_98, union U0 * p_99, union U0 * p_100, struct S2 * p_812)
{ /* block id: 36 */
    uint32_t l_103[6];
    volatile int32_t **l_110 = (void*)0;
    volatile int32_t *l_112 = &p_812->g_5;
    volatile int32_t **l_111[9] = {&l_112,&l_112,&l_112,&l_112,&l_112,&l_112,&l_112,&l_112,&l_112};
    int i;
    for (i = 0; i < 6; i++)
        l_103[i] = 1UL;
    for (p_812->g_87.f0 = 0; (p_812->g_87.f0 <= 5); p_812->g_87.f0 += 1)
    { /* block id: 39 */
        int i;
        (*p_812->g_108) = (l_103[p_812->g_87.f0] != ((safe_add_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(4UL, (+(l_103[p_812->g_87.f0] & 5L)))), l_103[p_812->g_87.f0])) != (p_98 != (void*)0)));
        if ((*p_812->g_108))
            break;
    }
    p_812->g_113 = &p_812->g_3;
    return &p_812->g_87;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_813;
    struct S2* p_812 = &c_813;
    struct S2 c_814 = {
        {{{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L}},{{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L}},{{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L}},{{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L}},{{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L}},{{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L}},{{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L},{0x695CD1D2A6F9A4D9L,0x5018D303F0244C3FL,0x5018D303F0244C3FL,0x695CD1D2A6F9A4D9L,0L,0x04902314AF12A83AL,6L}}}, // p_812->g_2
        0x4437FFEAL, // p_812->g_3
        (-1L), // p_812->g_4
        1L, // p_812->g_5
        0L, // p_812->g_6
        (-1L), // p_812->g_44
        8L, // p_812->g_57
        8L, // p_812->g_67
        6UL, // p_812->g_69
        (-2L), // p_812->g_80
        (-1L), // p_812->g_81
        {0x3A63A677L}, // p_812->g_87
        {0x2AB991CCL,0x2AB991CCL,0x2AB991CCL,0x2AB991CCL,0x2AB991CCL,0x2AB991CCL,0x2AB991CCL,0x2AB991CCL}, // p_812->g_109
        &p_812->g_109[0], // p_812->g_108
        (void*)0, // p_812->g_113
        0x74L, // p_812->g_119
        65535UL, // p_812->g_122
        {4294967288UL}, // p_812->g_124
        &p_812->g_124, // p_812->g_123
        0x2465L, // p_812->g_165
        0x19L, // p_812->g_167
        0xAFL, // p_812->g_170
        8L, // p_812->g_227
        {0x3C27CBA6L,0x3C27CBA6L}, // p_812->g_231
        (void*)0, // p_812->g_233
        &p_812->g_233, // p_812->g_232
        65534UL, // p_812->g_257
        7UL, // p_812->g_260
        (void*)0, // p_812->g_261
        0xE70040E6F50D0A37L, // p_812->g_266
        {&p_812->g_81,&p_812->g_81,&p_812->g_81,&p_812->g_81,&p_812->g_81,&p_812->g_81}, // p_812->g_281
        &p_812->g_109[0], // p_812->g_282
        18446744073709551615UL, // p_812->g_310
        {{0x73DBL,0x7B7CL},{0x73DBL,0x7B7CL},{0x73DBL,0x7B7CL},{0x73DBL,0x7B7CL},{0x73DBL,0x7B7CL},{0x73DBL,0x7B7CL},{0x73DBL,0x7B7CL},{0x73DBL,0x7B7CL},{0x73DBL,0x7B7CL}}, // p_812->g_311
        &p_812->g_67, // p_812->g_314
        0x0C1FL, // p_812->g_315
        {{0x5A1F3C9A2DE6C3C6L},{0x5A1F3C9A2DE6C3C6L},{0x5A1F3C9A2DE6C3C6L},{0x5A1F3C9A2DE6C3C6L}}, // p_812->g_335
        5L, // p_812->g_356
        0L, // p_812->g_360
        1L, // p_812->g_364
        &p_812->g_364, // p_812->g_363
        {{&p_812->g_363,&p_812->g_363,&p_812->g_363,&p_812->g_363}}, // p_812->g_362
        {{{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0}},{{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0}},{{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0}},{{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0}},{{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0}},{{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0},{(void*)0,&p_812->g_113,(void*)0,(void*)0,&p_812->g_113,(void*)0,(void*)0}}}, // p_812->g_374
        (void*)0, // p_812->g_392
        1L, // p_812->g_443
        {{0x3C2D2860L,0x3C2D2860L,0x3C2D2860L}}, // p_812->g_447
        {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}, // p_812->g_448
        {&p_812->g_6,&p_812->g_6,&p_812->g_6,&p_812->g_6,&p_812->g_6,&p_812->g_6}, // p_812->g_463
        &p_812->g_463[4], // p_812->g_465
        (void*)0, // p_812->g_488
        {18446744073709551608UL}, // p_812->g_536
        &p_812->g_463[0], // p_812->g_539
        {0x26F677F32DC3F6B3L}, // p_812->g_544
        &p_812->g_544, // p_812->g_543
        {1UL}, // p_812->g_550
        (void*)0, // p_812->g_608
        &p_812->g_608, // p_812->g_607
        {0UL,0UL,0UL,0UL,0UL,0UL}, // p_812->g_666
        {1UL}, // p_812->g_724
        (-5L), // p_812->g_729
        &p_812->g_392, // p_812->g_741
        &p_812->g_392, // p_812->g_744
        0x3E1B0524CB07518BL, // p_812->g_799
        8UL, // p_812->g_809
        &p_812->g_463[2], // p_812->g_811
        sequence_input[get_global_id(0)], // p_812->global_0_offset
        sequence_input[get_global_id(1)], // p_812->global_1_offset
        sequence_input[get_global_id(2)], // p_812->global_2_offset
        sequence_input[get_local_id(0)], // p_812->local_0_offset
        sequence_input[get_local_id(1)], // p_812->local_1_offset
        sequence_input[get_local_id(2)], // p_812->local_2_offset
        sequence_input[get_group_id(0)], // p_812->group_0_offset
        sequence_input[get_group_id(1)], // p_812->group_1_offset
        sequence_input[get_group_id(2)], // p_812->group_2_offset
    };
    c_813 = c_814;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_812);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_812->g_2[i][j][k], "p_812->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_812->g_3, "p_812->g_3", print_hash_value);
    transparent_crc(p_812->g_4, "p_812->g_4", print_hash_value);
    transparent_crc(p_812->g_5, "p_812->g_5", print_hash_value);
    transparent_crc(p_812->g_6, "p_812->g_6", print_hash_value);
    transparent_crc(p_812->g_44, "p_812->g_44", print_hash_value);
    transparent_crc(p_812->g_57, "p_812->g_57", print_hash_value);
    transparent_crc(p_812->g_67, "p_812->g_67", print_hash_value);
    transparent_crc(p_812->g_69, "p_812->g_69", print_hash_value);
    transparent_crc(p_812->g_80, "p_812->g_80", print_hash_value);
    transparent_crc(p_812->g_81, "p_812->g_81", print_hash_value);
    transparent_crc(p_812->g_87.f0, "p_812->g_87.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_812->g_109[i], "p_812->g_109[i]", print_hash_value);

    }
    transparent_crc(p_812->g_119, "p_812->g_119", print_hash_value);
    transparent_crc(p_812->g_122, "p_812->g_122", print_hash_value);
    transparent_crc(p_812->g_124.f0, "p_812->g_124.f0", print_hash_value);
    transparent_crc(p_812->g_165, "p_812->g_165", print_hash_value);
    transparent_crc(p_812->g_167, "p_812->g_167", print_hash_value);
    transparent_crc(p_812->g_170, "p_812->g_170", print_hash_value);
    transparent_crc(p_812->g_227, "p_812->g_227", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_812->g_231[i], "p_812->g_231[i]", print_hash_value);

    }
    transparent_crc(p_812->g_257, "p_812->g_257", print_hash_value);
    transparent_crc(p_812->g_260, "p_812->g_260", print_hash_value);
    transparent_crc(p_812->g_266, "p_812->g_266", print_hash_value);
    transparent_crc(p_812->g_310, "p_812->g_310", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_812->g_311[i][j], "p_812->g_311[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_812->g_315, "p_812->g_315", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_812->g_335[i].f0, "p_812->g_335[i].f0", print_hash_value);

    }
    transparent_crc(p_812->g_356, "p_812->g_356", print_hash_value);
    transparent_crc(p_812->g_360, "p_812->g_360", print_hash_value);
    transparent_crc(p_812->g_364, "p_812->g_364", print_hash_value);
    transparent_crc(p_812->g_443, "p_812->g_443", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_812->g_447[i][j], "p_812->g_447[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_812->g_448[i], "p_812->g_448[i]", print_hash_value);

    }
    transparent_crc(p_812->g_536.f0, "p_812->g_536.f0", print_hash_value);
    transparent_crc(p_812->g_544.f0, "p_812->g_544.f0", print_hash_value);
    transparent_crc(p_812->g_550.f0, "p_812->g_550.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_812->g_666[i], "p_812->g_666[i]", print_hash_value);

    }
    transparent_crc(p_812->g_724.f0, "p_812->g_724.f0", print_hash_value);
    transparent_crc(p_812->g_729, "p_812->g_729", print_hash_value);
    transparent_crc(p_812->g_799, "p_812->g_799", print_hash_value);
    transparent_crc(p_812->g_809, "p_812->g_809", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
