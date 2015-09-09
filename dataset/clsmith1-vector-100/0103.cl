// ---fake_divergence -g 48,89,1 -l 3,1,1
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


// Seed: 103

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint8_t g_11;
    uint8_t g_15;
    volatile VECTOR(int32_t, 16) g_23;
    uint8_t *g_58[4][7];
    uint8_t **g_57;
    int32_t g_68;
    int32_t g_71;
    uint64_t g_75;
    VECTOR(int8_t, 16) g_82;
    VECTOR(int8_t, 8) g_83;
    VECTOR(uint8_t, 4) g_87;
    uint64_t g_95;
    uint32_t g_97;
    uint8_t g_102;
    int16_t g_120;
    uint32_t g_126;
    VECTOR(int32_t, 4) g_131;
    VECTOR(int32_t, 4) g_132;
    VECTOR(int32_t, 16) g_133;
    int32_t *g_141;
    VECTOR(int8_t, 8) g_150;
    VECTOR(uint8_t, 16) g_163;
    VECTOR(int16_t, 2) g_214;
    uint16_t g_227;
    VECTOR(uint8_t, 8) g_242;
    int8_t *g_244;
    VECTOR(int64_t, 16) g_250;
    VECTOR(int32_t, 4) g_255;
    int32_t g_256;
    VECTOR(uint8_t, 16) g_268;
    VECTOR(uint8_t, 8) g_269;
    VECTOR(uint8_t, 2) g_270;
    VECTOR(int8_t, 8) g_271;
    VECTOR(int8_t, 2) g_290;
    uint8_t *g_322;
    VECTOR(int32_t, 4) g_323;
    VECTOR(int64_t, 4) g_352;
    VECTOR(int64_t, 8) g_353;
    VECTOR(uint8_t, 16) g_380;
    volatile int64_t g_435;
    volatile int64_t *g_434;
    VECTOR(int16_t, 2) g_449;
    VECTOR(int16_t, 8) g_450;
    volatile VECTOR(int32_t, 8) g_506;
    VECTOR(int32_t, 2) g_508;
    VECTOR(int64_t, 2) g_545;
    VECTOR(int32_t, 16) g_551;
    VECTOR(uint8_t, 2) g_556;
    uint16_t g_566;
    uint16_t * volatile g_572;
    uint16_t * volatile * volatile g_571;
    volatile VECTOR(int16_t, 4) g_615;
    VECTOR(uint8_t, 2) g_621;
    VECTOR(uint16_t, 2) g_624;
    VECTOR(int8_t, 4) g_637;
    uint32_t g_653;
    int32_t g_663;
    int16_t g_674;
    int32_t ** volatile g_675[6][6];
    int32_t ** volatile g_676;
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
uint64_t  func_1(struct S0 * p_677);
int8_t  func_3(int16_t  p_4, struct S0 * p_677);
uint32_t  func_5(int16_t  p_6, struct S0 * p_677);
uint32_t  func_26(int32_t  p_27, uint8_t * p_28, struct S0 * p_677);
uint32_t  func_29(uint8_t * p_30, uint8_t * p_31, uint8_t * p_32, uint32_t  p_33, struct S0 * p_677);
uint8_t * func_34(uint8_t * p_35, uint8_t * p_36, int32_t  p_37, uint16_t  p_38, struct S0 * p_677);
uint8_t * func_40(uint8_t ** p_41, struct S0 * p_677);
uint8_t ** func_42(int64_t  p_43, uint8_t ** p_44, uint8_t * p_45, struct S0 * p_677);
int64_t  func_46(uint32_t  p_47, struct S0 * p_677);
int32_t  func_50(int16_t  p_51, uint8_t ** p_52, uint8_t ** p_53, int32_t  p_54, uint8_t ** p_55, struct S0 * p_677);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_677->g_11 p_677->g_15 p_677->g_23 p_677->g_57 p_677->g_58 p_677->g_75 p_677->g_68 p_677->g_82 p_677->g_87 p_677->g_71 p_677->g_97 p_677->g_102 p_677->g_83 p_677->g_126 p_677->g_133 p_677->g_132 p_677->g_141 p_677->g_95 p_677->g_268 p_677->g_269 p_677->g_270 p_677->g_271 p_677->g_244 p_677->g_290 p_677->g_131 p_677->g_322 p_677->g_323 p_677->g_214 p_677->g_227 p_677->g_163 p_677->g_256 p_677->g_434 p_677->g_449 p_677->g_450 p_677->g_120 p_677->g_255 p_677->g_353 p_677->g_506 p_677->g_508 p_677->g_545 p_677->g_551 p_677->g_556 p_677->g_566 p_677->g_571 p_677->g_615 p_677->g_621 p_677->g_352 p_677->g_624 p_677->g_572 p_677->g_653 p_677->g_674 p_677->g_676
 * writes: p_677->g_15 p_677->g_58 p_677->g_68 p_677->g_71 p_677->g_75 p_677->g_95 p_677->g_97 p_677->g_102 p_677->g_120 p_677->g_126 p_677->g_141 p_677->g_244 p_677->g_133 p_677->g_271 p_677->g_227 p_677->g_214 p_677->g_323 p_677->g_255 p_677->g_11 p_677->g_290 p_677->g_637 p_677->g_131 p_677->g_663 p_677->g_674
 */
uint64_t  func_1(struct S0 * p_677)
{ /* block id: 4 */
    int8_t l_2 = (-7L);
    VECTOR(uint8_t, 8) l_12 = (VECTOR(uint8_t, 8))(0x54L, (VECTOR(uint8_t, 4))(0x54L, (VECTOR(uint8_t, 2))(0x54L, 6UL), 6UL), 6UL, 0x54L, 6UL);
    uint8_t *l_13 = (void*)0;
    uint8_t *l_14 = &p_677->g_15;
    VECTOR(uint8_t, 4) l_16 = (VECTOR(uint8_t, 4))(0x51L, (VECTOR(uint8_t, 2))(0x51L, 0x2FL), 0x2FL);
    uint8_t **l_39 = &l_13;
    uint8_t *l_489 = (void*)0;
    uint8_t *l_490[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int32_t, 4) l_491 = (VECTOR(int32_t, 4))(0x19867ACAL, (VECTOR(int32_t, 2))(0x19867ACAL, 0L), 0L);
    int32_t *l_668 = (void*)0;
    int32_t *l_669 = (void*)0;
    int32_t *l_670 = (void*)0;
    int32_t *l_671 = &p_677->g_71;
    int32_t *l_672 = (void*)0;
    int32_t *l_673[6];
    int i;
    for (i = 0; i < 6; i++)
        l_673[i] = (void*)0;
    p_677->g_674 &= (p_677->g_133.s4 = ((*l_671) = ((((l_2 , l_2) , (func_3((func_5((0x78L <= (safe_rshift_func_uint8_t_u_u(((*l_14) |= (safe_mul_func_int8_t_s_s(p_677->g_11, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_12.s1312344566340443)).s0b)))).lo))), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 4))(0x38L, 254UL, 0xEBL, 0xD3L)).odd, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(251UL, ((VECTOR(uint8_t, 4))(l_16.zwxz)), ((safe_div_func_uint64_t_u_u(p_677->g_11, (safe_lshift_func_uint16_t_u_u(0xA335L, 2)))) == (l_491.z = ((safe_lshift_func_int16_t_s_s((((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_677->g_23.sfc)))))))).yyyx)), 0x639956A2L, 1L, 0x69376522L)).s4 ^ ((safe_rshift_func_uint16_t_u_u((func_26((l_12.s5 && (((((func_29(func_34(((*l_39) = l_13), func_40(func_42(func_46((~(l_2 >= p_677->g_11)), p_677), &l_14, p_677->g_322, p_677), p_677), p_677->g_214.y, p_677->g_131.x, p_677), l_14, &p_677->g_11, p_677->g_268.sd, p_677) ^ p_677->g_83.s2) < l_12.s3) || p_677->g_256) ^ 0x7CB8L) > l_12.s7)), l_14, p_677) | p_677->g_87.x), 13)) > p_677->g_353.s0)), p_677->g_353.s4)) > (*p_677->g_322)))), ((VECTOR(uint8_t, 2))(0x93L)), l_16.z, ((VECTOR(uint8_t, 4))(255UL)), 0xB8L, 255UL, 1UL)).s9d)).xyxx)).hi))).yxxxxyxxyyyxxyyx)).odd)).s6))), p_677) , p_677->g_653), p_677) == l_16.y)) , 1L) != p_677->g_621.x)));
    (*p_677->g_676) = &p_677->g_71;
    return p_677->g_674;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_256
 * writes: p_677->g_97 p_677->g_663
 */
int8_t  func_3(int16_t  p_4, struct S0 * p_677)
{ /* block id: 303 */
    uint32_t *l_657 = &p_677->g_97;
    int32_t *l_662 = &p_677->g_663;
    VECTOR(int8_t, 2) l_664 = (VECTOR(int8_t, 2))(0x41L, 0x52L);
    int32_t l_667 = 0x03B64796L;
    int i;
    l_667 = (safe_sub_func_uint8_t_u_u(((safe_unary_minus_func_int32_t_s(p_4)) , ((((*l_657) = p_677->g_256) || (safe_mod_func_int32_t_s_s((((safe_sub_func_uint32_t_u_u(((((*l_662) = 0x717F805EL) , l_662) == &p_677->g_97), (0x578FL <= p_4))) ^ 0x78704F8DA38A97A0L) , (((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 4))(l_664.xxxy)), ((VECTOR(int8_t, 2))((-10L), 0x42L)).xxyx))).x && (safe_div_func_int8_t_s_s((((1UL ^ 0x34AC4B367C7A5A91L) , l_664.y) > (-1L)), p_4)))), 0xB8FB067FL))) || l_664.y)), (-1L)));
    return l_667;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_97 p_677->g_11 p_677->g_71 p_677->g_75 p_677->g_506 p_677->g_508 p_677->g_449 p_677->g_15 p_677->g_141 p_677->g_68 p_677->g_227 p_677->g_163 p_677->g_545 p_677->g_131 p_677->g_450 p_677->g_551 p_677->g_95 p_677->g_556 p_677->g_290 p_677->g_566 p_677->g_126 p_677->g_214 p_677->g_571 p_677->g_270 p_677->g_615 p_677->g_621 p_677->g_352 p_677->g_624 p_677->g_572 p_677->g_323
 * writes: p_677->g_97 p_677->g_11 p_677->g_71 p_677->g_75 p_677->g_68 p_677->g_141 p_677->g_227 p_677->g_95 p_677->g_120 p_677->g_290 p_677->g_126 p_677->g_637 p_677->g_131
 */
uint32_t  func_5(int16_t  p_6, struct S0 * p_677)
{ /* block id: 244 */
    uint64_t l_498 = 0xA5A581FA7C76EA27L;
    int32_t l_580 = 0x42D0E14FL;
    int32_t l_583 = 0x47FDF331L;
    int32_t l_584 = 0L;
    int32_t l_586 = 0x76247D9AL;
    int16_t l_593 = 0x25C1L;
    int32_t l_596 = 1L;
    int32_t l_597 = 1L;
    int32_t l_601 = (-1L);
    int32_t l_605 = 0x69432A6FL;
    int32_t l_607 = (-1L);
    VECTOR(int16_t, 2) l_616 = (VECTOR(int16_t, 2))(3L, 0x796FL);
    VECTOR(uint64_t, 2) l_629 = (VECTOR(uint64_t, 2))(0x5F946CEE1080DC3AL, 18446744073709551615UL);
    uint64_t *l_634 = &p_677->g_75;
    uint64_t **l_633[9];
    uint32_t l_639 = 0UL;
    uint32_t *l_640 = (void*)0;
    int32_t **l_651[9] = {&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141};
    uint8_t l_652 = 0xA2L;
    int i;
    for (i = 0; i < 9; i++)
        l_633[i] = &l_634;
    for (p_677->g_97 = 0; (p_677->g_97 <= 18); p_677->g_97++)
    { /* block id: 247 */
        int32_t *l_494 = &p_677->g_68;
        int32_t *l_495 = &p_677->g_68;
        int32_t *l_496 = (void*)0;
        int32_t *l_497 = &p_677->g_71;
        int8_t **l_536 = &p_677->g_244;
        int32_t l_575 = (-1L);
        int16_t l_577 = 0x07FAL;
        int32_t l_582 = 0x6B8435B7L;
        uint32_t l_587[4] = {0xC10D14D1L,0xC10D14D1L,0xC10D14D1L,0xC10D14D1L};
        int32_t l_592 = 0x5E4EB84EL;
        int32_t l_594 = 0x76BBE7C6L;
        int32_t l_595 = 0x59F94F40L;
        int32_t l_598 = 8L;
        int32_t l_599 = 0x1EAEF45FL;
        int32_t l_600 = (-1L);
        int32_t l_602 = 0L;
        int32_t l_603 = 3L;
        VECTOR(int32_t, 2) l_604 = (VECTOR(int32_t, 2))(0L, 0x2BCBAE3DL);
        int32_t l_606[9] = {0x1A1F7AB2L,0x1A1F7AB2L,0x1A1F7AB2L,0x1A1F7AB2L,0x1A1F7AB2L,0x1A1F7AB2L,0x1A1F7AB2L,0x1A1F7AB2L,0x1A1F7AB2L};
        uint64_t l_608[7];
        VECTOR(uint8_t, 2) l_622 = (VECTOR(uint8_t, 2))(1UL, 255UL);
        VECTOR(int32_t, 16) l_630 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x32E923DEL), 0x32E923DEL), 0x32E923DEL, (-4L), 0x32E923DEL, (VECTOR(int32_t, 2))((-4L), 0x32E923DEL), (VECTOR(int32_t, 2))((-4L), 0x32E923DEL), (-4L), 0x32E923DEL, (-4L), 0x32E923DEL);
        int i;
        for (i = 0; i < 7; i++)
            l_608[i] = 18446744073709551612UL;
        --l_498;
        for (p_677->g_11 = 0; (p_677->g_11 != 21); p_677->g_11 = safe_add_func_int64_t_s_s(p_677->g_11, 8))
        { /* block id: 251 */
            int8_t l_503 = 1L;
            VECTOR(int32_t, 2) l_507 = (VECTOR(int32_t, 2))(1L, 0x73066533L);
            VECTOR(int32_t, 16) l_509 = (VECTOR(int32_t, 16))(0x2F4FDC2AL, (VECTOR(int32_t, 4))(0x2F4FDC2AL, (VECTOR(int32_t, 2))(0x2F4FDC2AL, 0x0C32C5D2L), 0x0C32C5D2L), 0x0C32C5D2L, 0x2F4FDC2AL, 0x0C32C5D2L, (VECTOR(int32_t, 2))(0x2F4FDC2AL, 0x0C32C5D2L), (VECTOR(int32_t, 2))(0x2F4FDC2AL, 0x0C32C5D2L), 0x2F4FDC2AL, 0x0C32C5D2L, 0x2F4FDC2AL, 0x0C32C5D2L);
            VECTOR(int8_t, 2) l_511 = (VECTOR(int8_t, 2))(0x27L, 0x5AL);
            VECTOR(uint32_t, 4) l_523 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xB2C55190L), 0xB2C55190L);
            uint16_t *l_559 = &p_677->g_227;
            uint16_t **l_558 = &l_559;
            uint32_t *l_623 = &l_587[2];
            int16_t *l_635 = &l_577;
            uint32_t *l_636[4];
            int i;
            for (i = 0; i < 4; i++)
                l_636[i] = (void*)0;
            if (p_6)
                break;
            (*l_497) &= l_503;
            for (p_677->g_75 = (-13); (p_677->g_75 > 57); ++p_677->g_75)
            { /* block id: 256 */
                VECTOR(int32_t, 8) l_510 = (VECTOR(int32_t, 8))(0x461FB75EL, (VECTOR(int32_t, 4))(0x461FB75EL, (VECTOR(int32_t, 2))(0x461FB75EL, (-4L)), (-4L)), (-4L), 0x461FB75EL, (-4L));
                int32_t l_581[8] = {(-3L),0x0B43B126L,(-3L),(-3L),0x0B43B126L,(-3L),(-3L),0x0B43B126L};
                int32_t *l_590 = &l_586;
                int32_t *l_591[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_591[i] = (void*)0;
                if (((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_677->g_506.s71)))), ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(l_507.xyyyxxxy)).hi, ((VECTOR(int32_t, 2))((-10L), 0x11EFF09AL)).xxyx))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_677->g_508.xx)).xyyxyyyxxxyxyxxy)).odd)).s40, ((VECTOR(int32_t, 16))(l_509.s0319e91c9c31d752)).sde))))).xxyy))), (-10L), 7L)).s47, ((VECTOR(int32_t, 8))(l_510.s16776100)).s04))).lo)
                { /* block id: 257 */
                    int64_t l_519 = 0x4B7116BC9A1764A3L;
                    VECTOR(int32_t, 8) l_552 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
                    int i;
                    (*l_494) = (((VECTOR(uint8_t, 8))(255UL, ((((VECTOR(int8_t, 16))(l_511.xyyyyyxxxyyyxyxy)).s6 != l_510.s4) <= (safe_rshift_func_uint16_t_u_u(p_677->g_449.x, 14))), 0xDDL, ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 8))(0x27L, l_507.y, 252UL, FAKE_DIVERGE(p_677->group_2_offset, get_group_id(2), 10), 1UL, (((safe_div_func_uint32_t_u_u((0UL < (p_6 || p_6)), (safe_unary_minus_func_int64_t_s((+(-1L)))))) ^ ((safe_mod_func_uint64_t_u_u((l_507.y , p_677->g_15), 0x6B5F0A4D8FB16E74L)) || p_6)) | 0x0A4CL), 0xAAL, 0x67L)).odd, ((VECTOR(uint8_t, 4))(0UL))))), ((VECTOR(uint8_t, 4))(0x0EL))))), 255UL)).s2 | 0xF3L);
                    if (l_519)
                    { /* block id: 259 */
                        int32_t **l_520 = &p_677->g_141;
                        VECTOR(int8_t, 16) l_528 = (VECTOR(int8_t, 16))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x07L), 0x07L), 0x07L, 7L, 0x07L, (VECTOR(int8_t, 2))(7L, 0x07L), (VECTOR(int8_t, 2))(7L, 0x07L), 7L, 0x07L, 7L, 0x07L);
                        int8_t *l_529 = (void*)0;
                        int8_t *l_530 = (void*)0;
                        int8_t *l_531 = (void*)0;
                        int8_t *l_532 = (void*)0;
                        int8_t *l_533 = &l_503;
                        uint16_t *l_537 = (void*)0;
                        uint16_t *l_538 = &p_677->g_227;
                        int64_t *l_546 = (void*)0;
                        int i;
                        (*l_520) = &p_677->g_68;
                        (*l_495) = (safe_add_func_int32_t_s_s(((*p_677->g_141) > 4294967295UL), ((((VECTOR(uint32_t, 16))(l_523.zxxyzwzwxwwyzxxx)).s1 >= (((safe_lshift_func_int8_t_s_s(((*l_533) = ((VECTOR(int8_t, 16))(l_528.sb07fd7d7b458defb)).s3), (~(safe_lshift_func_int16_t_s_s((0x78270315ABDA36EBL != l_498), 0))))) == (l_536 == ((--(*l_538)) , &p_677->g_244))) , (safe_rshift_func_int16_t_s_s((FAKE_DIVERGE(p_677->group_2_offset, get_group_id(2), 10) > (p_677->g_163.s0 && (safe_sub_func_int64_t_s_s(((((l_507.x &= (l_510.s7 = ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(p_677->g_545.xyyx)).lo)))).lo)) | ((safe_mul_func_int8_t_s_s((((((0x09EC7B7414839DB0L >= (safe_sub_func_uint64_t_u_u(l_498, 0xF4B20657CEA76723L))) & 65533UL) , 0x3122AE26L) , 255UL) != l_511.y), p_6)) , FAKE_DIVERGE(p_677->global_1_offset, get_global_id(1), 10))) == FAKE_DIVERGE(p_677->group_0_offset, get_group_id(0), 10)) | p_677->g_131.z), p_677->g_450.s4)))), 1)))) == p_6)));
                        return (*l_497);
                    }
                    else
                    { /* block id: 267 */
                        (*l_495) = ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(p_677->g_551.se670)).xyzzxxwx, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(l_552.s51013154)).s24))).yyxyyxyx))).s3;
                        (*l_495) = 0x0F8A6D13L;
                    }
                    (*l_495) |= l_519;
                    if (p_6)
                        break;
                }
                else
                { /* block id: 273 */
                    uint16_t l_570 = 65534UL;
                    int32_t l_576 = 8L;
                    int32_t l_578 = 0x0775228CL;
                    int32_t l_579 = 0x33694093L;
                    int32_t l_585 = 0x1CCA2326L;
                    for (p_677->g_95 = (-15); (p_677->g_95 < 35); ++p_677->g_95)
                    { /* block id: 276 */
                        int16_t *l_555 = &p_677->g_120;
                        VECTOR(uint8_t, 2) l_557 = (VECTOR(uint8_t, 2))(250UL, 0x46L);
                        uint32_t *l_569 = &p_677->g_126;
                        int32_t l_573 = (-8L);
                        int32_t *l_574[3][4][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                        int i, j, k;
                        (*l_495) = ((((*l_555) = p_677->g_131.x) > ((p_6 , ((VECTOR(uint8_t, 8))((l_509.s8 = ((VECTOR(uint8_t, 4))(p_677->g_556.yyyy)).x), 0UL, ((VECTOR(uint8_t, 4))(l_557.xyxy)), 254UL, 255UL)).s3) , (((p_6 && (p_6 ^ (((GROUP_DIVERGE(2, 1) || (p_677->g_290.y ^= ((void*)0 == &p_677->g_75))) & (l_558 != ((safe_sub_func_uint16_t_u_u((((*l_569) &= (safe_add_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_s((((((p_677->g_566 || ((safe_lshift_func_int8_t_s_u(((p_6 | 4L) , p_6), FAKE_DIVERGE(p_677->global_1_offset, get_global_id(1), 10))) , p_6)) < p_6) || 0x7F08CFB0E0FCBE4BL) ^ p_6) , 0L), 4)) ^ 0x1889864A3E023E0FL), 1UL))) , p_677->g_214.y), l_570)) , p_677->g_571))) | l_498))) != 1UL) , 0xBB46L))) ^ p_6);
                        l_587[3]--;
                        if (p_677->g_270.x)
                            continue;
                        if (l_584)
                            break;
                    }
                }
                l_608[5]++;
                if (l_511.x)
                    continue;
                (*l_497) |= p_6;
            }
            (*l_497) = ((safe_sub_func_uint32_t_u_u(((safe_sub_func_int16_t_s_s((!(*l_497)), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 4))(0x78BEL, 0x71C7L, (-1L), 0L)).xxwyzwwwwwywyyyz, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_677->g_615.xy)).yyxyxyyy)).s7527440561231304))).even, ((VECTOR(int16_t, 4))(l_616.yyyx)).yzxyxyyz))).s7077334605522771)).s5)) & (p_6 != (safe_add_func_int32_t_s_s(l_509.s0, (p_677->g_637.y = (((safe_mod_func_uint8_t_u_u(((((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 2))(p_677->g_621.yy)).yyyyxyxxyyyyxxxx, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_622.xx)), 0UL, 0x4CL)).yzywwxzzxzxzyxxx))).s5 | ((((*l_623) = p_677->g_352.x) <= (l_507.y &= (((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 4))(p_677->g_624.xyxx)).xxxwxzxx, (uint16_t)((l_586 = ((safe_rshift_func_int16_t_s_s(((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(1UL, 0xE26C9F664D8CC153L)))).hi, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_629.yxxxxyyy)).s1165031133011517)).even)).s5)) || (0x21DBL != ((*l_635) = (((((VECTOR(int32_t, 8))(0x646B5DE3L, 0x60B809ADL, 0x036B556EL, 0x0343A9A5L, 0x2F3E495BL, ((VECTOR(int32_t, 16))(l_630.s326a5ff566bc0f19)).s4, (-1L), (-1L))).s1 & 0x7A5BFC54L) && (safe_sub_func_uint16_t_u_u((((void*)0 != l_633[3]) > (-1L)), 0x6192L))) & 65535UL)))), p_6)) , 65535UL)) | 0x74B6L), (uint16_t)p_6))).s4362631353641705, ((VECTOR(uint16_t, 16))(3UL))))).sc != p_677->g_131.w))) < p_6)) | p_6), GROUP_DIVERGE(1, 1))) <= p_677->g_270.y) > 0L)))))), FAKE_DIVERGE(p_677->local_2_offset, get_local_id(2), 10))) , (-1L));
        }
    }
    p_677->g_131.x ^= ((*p_677->g_572) == (((safe_unary_minus_func_int8_t_s(l_584)) != ((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 16))(((*l_634) &= l_639), (((void*)0 != l_640) ^ p_6), ((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((safe_mod_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u((+((safe_sub_func_int64_t_s_s((-7L), 0x6E1BFB031EA6E9ACL)) <= (l_652 = (((safe_sub_func_uint32_t_u_u(l_583, 4294967292UL)) , (void*)0) != l_651[3])))), 2)), p_677->g_323.y)), p_6)) <= p_6), 0x97C6BC3BL, ((VECTOR(uint32_t, 2))(0xB0112297L)), p_677->g_214.y, 0x8910146CL, 0xD88737E8L, 4294967295UL)).odd)), ((VECTOR(uint32_t, 4))(0xDC7331C1L))))).odd, ((VECTOR(uint64_t, 2))(1UL))))).yyxx, ((VECTOR(uint64_t, 4))(9UL))))).w, 0x97318A724C00A9AEL, 0x7D75325AE8EEB277L, 1UL, p_6, ((VECTOR(uint64_t, 2))(0UL)), 1UL, GROUP_DIVERGE(2, 1), 18446744073709551612UL, 0xA658B42312954289L, p_677->g_450.s0, 0UL, 0xD141EB8390638480L)), ((VECTOR(uint64_t, 16))(0xB4CAFA011AA4A348L))))).sc) , 1UL));
    return p_677->g_615.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_268 p_677->g_434 p_677->g_97 p_677->g_449 p_677->g_450 p_677->g_120 p_677->g_141 p_677->g_95 p_677->g_68 p_677->g_323 p_677->g_322 p_677->g_11 p_677->g_244 p_677->g_255 p_677->g_163
 * writes: p_677->g_141 p_677->g_227 p_677->g_97 p_677->g_120 p_677->g_95 p_677->g_68 p_677->g_323 p_677->g_255
 */
uint32_t  func_26(int32_t  p_27, uint8_t * p_28, struct S0 * p_677)
{ /* block id: 185 */
    VECTOR(uint64_t, 16) l_422 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xC6F839D1DCC962D9L), 0xC6F839D1DCC962D9L), 0xC6F839D1DCC962D9L, 1UL, 0xC6F839D1DCC962D9L, (VECTOR(uint64_t, 2))(1UL, 0xC6F839D1DCC962D9L), (VECTOR(uint64_t, 2))(1UL, 0xC6F839D1DCC962D9L), 1UL, 0xC6F839D1DCC962D9L, 1UL, 0xC6F839D1DCC962D9L);
    uint64_t *l_429 = &p_677->g_75;
    uint64_t **l_430 = &l_429;
    VECTOR(uint32_t, 8) l_431 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL);
    int32_t **l_433[10] = {&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141,&p_677->g_141};
    uint16_t *l_454 = &p_677->g_227;
    int i;
lbl_487:
    if (((p_677->g_268.s5 ^ (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),uint64_t,((VECTOR(uint64_t, 4))(l_422.saf33)), (uint64_t)p_677->g_163.s4, (uint64_t)(safe_lshift_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((!l_422.sa) >= (p_677->g_163.sb <= (((*l_430) = l_429) != (void*)0))), l_422.sb)), (((((p_27 != ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(l_431.s3226306215332444))))))).scd)).yyxx)), l_431.s4, ((VECTOR(uint32_t, 2))(4294967286UL)), 0x221E961FL)).s2) ^ p_677->g_11) < p_27) && 1L) >= p_27)))))).even)))).even < l_431.s2)) > l_422.s7))
    { /* block id: 187 */
        int32_t **l_432 = &p_677->g_141;
        (*l_432) = &p_677->g_68;
    }
    else
    { /* block id: 189 */
        int64_t l_438[8] = {4L,4L,4L,4L,4L,4L,4L,4L};
        uint16_t *l_441 = &p_677->g_227;
        int32_t **l_442 = &p_677->g_141;
        int32_t l_443 = 0x6C619F9CL;
        VECTOR(int16_t, 2) l_451 = (VECTOR(int16_t, 2))(6L, 0x2F27L);
        VECTOR(int32_t, 16) l_457 = (VECTOR(int32_t, 16))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x63AA6185L), 0x63AA6185L), 0x63AA6185L, 7L, 0x63AA6185L, (VECTOR(int32_t, 2))(7L, 0x63AA6185L), (VECTOR(int32_t, 2))(7L, 0x63AA6185L), 7L, 0x63AA6185L, 7L, 0x63AA6185L);
        int i;
lbl_456:
        l_443 &= (l_433[3] == ((((void*)0 != p_677->g_434) == (safe_rshift_func_uint16_t_u_u(((*l_441) = ((l_438[1] < (!((~l_438[1]) | (l_429 == l_429)))) != (safe_mul_func_int8_t_s_s(((0x7EL | 0x28L) <= p_27), GROUP_DIVERGE(1, 1))))), p_27))) , l_442));
        (*l_442) = &p_27;
        for (p_677->g_97 = 0; (p_677->g_97 > 42); p_677->g_97++)
        { /* block id: 195 */
            int64_t l_448 = 0L;
            int16_t *l_452 = (void*)0;
            int16_t *l_453 = &p_677->g_120;
            uint16_t **l_455 = &l_441;
            int32_t l_458 = 0L;
            if ((safe_rshift_func_uint16_t_u_u((((-7L) > ((l_448 |= (&p_677->g_227 != (void*)0)) || ((**l_442) = (((*l_453) ^= ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 4))(p_677->g_449.yyxx)).even, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 2))(p_677->g_450.s67)), ((VECTOR(int16_t, 4))(l_451.xxxy)).even))))), 1L, 7L)).even))).even) || 65527UL)))) | (l_452 == ((*l_455) = l_454))), 3)))
            { /* block id: 200 */
                if (p_677->g_97)
                    goto lbl_456;
                (*p_677->g_141) &= 0x5D31548FL;
            }
            else
            { /* block id: 203 */
                l_458 ^= ((VECTOR(int32_t, 16))(l_457.s7ede482c3c418190)).s0;
            }
        }
    }
    for (p_677->g_95 = 0; (p_677->g_95 > 11); ++p_677->g_95)
    { /* block id: 210 */
        int8_t l_478 = 0x04L;
        int32_t l_479 = 2L;
        int64_t l_488 = 0x06054BB99AE4ED05L;
        for (p_677->g_68 = 3; (p_677->g_68 >= (-12)); --p_677->g_68)
        { /* block id: 213 */
            int16_t l_463 = 0x1EE8L;
            uint64_t *l_475[4][5][3] = {{{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75}},{{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75}},{{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75}},{{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75},{&p_677->g_95,&p_677->g_95,&p_677->g_75}}};
            uint16_t l_476 = 65535UL;
            int32_t l_480 = 0x075A7863L;
            int32_t l_481 = 0L;
            int i, j, k;
            l_463 |= (p_677->g_323.x &= (*p_677->g_141));
            for (p_27 = 11; (p_27 != (-14)); p_27 = safe_sub_func_uint8_t_u_u(p_27, 5))
            { /* block id: 218 */
                int32_t l_470 = 0x6BCD65C0L;
                int64_t *l_473[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_474[9] = {0x2D957EADL,0L,0x2D957EADL,0x2D957EADL,0L,0x2D957EADL,0x2D957EADL,0L,0x2D957EADL};
                VECTOR(int32_t, 2) l_477 = (VECTOR(int32_t, 2))(0L, 0x1839FB64L);
                int i;
                if (l_463)
                    break;
                if ((((safe_rshift_func_uint8_t_u_u((0xD04FC797B08F0D12L || (safe_lshift_func_int16_t_s_s(((((&p_677->g_75 != ((0x93L & ((VECTOR(uint8_t, 8))(0UL, (((((&p_677->g_227 == &p_677->g_227) ^ l_470) , ((VECTOR(int32_t, 2))(5L, 0x6D7FC82BL)).odd) , &p_27) != &p_27), 0x47L, ((safe_rshift_func_int8_t_s_s(((l_470 |= p_27) < 0xBEA43B761C147F5CL), l_474[7])) > (*p_677->g_322)), 0UL, l_463, 0xCAL, 0x48L)).s5) , l_475[1][3][2])) , (void*)0) == p_677->g_244) != l_476), p_677->g_449.x))), 3)) ^ p_677->g_68) != p_27))
                { /* block id: 221 */
                    l_478 |= ((VECTOR(int32_t, 2))(l_477.yx)).lo;
                    if (l_474[8])
                        break;
                    if ((*p_677->g_141))
                        break;
                    p_677->g_255.z ^= (&p_677->g_120 == &p_677->g_120);
                }
                else
                { /* block id: 226 */
                    VECTOR(uint16_t, 4) l_482 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x7DA3L), 0x7DA3L);
                    int i;
                    ++l_482.z;
                    for (l_480 = 0; (l_480 < 0); l_480++)
                    { /* block id: 230 */
                        return p_27;
                    }
                }
                if (l_480)
                    goto lbl_487;
                return l_481;
            }
        }
        p_677->g_255.y &= (*p_677->g_141);
        if (l_488)
            continue;
    }
    (*p_677->g_141) = (*p_677->g_141);
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_102 p_677->g_57 p_677->g_58 p_677->g_95 p_677->g_227 p_677->g_11 p_677->g_163 p_677->g_141 p_677->g_71 p_677->g_322 p_677->g_268
 * writes: p_677->g_102 p_677->g_141 p_677->g_95 p_677->g_227 p_677->g_71 p_677->g_120 p_677->g_214 p_677->g_68
 */
uint32_t  func_29(uint8_t * p_30, uint8_t * p_31, uint8_t * p_32, uint32_t  p_33, struct S0 * p_677)
{ /* block id: 161 */
    uint64_t l_397 = 18446744073709551608UL;
    uint16_t *l_401[2][3][5] = {{{&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227},{&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227},{&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227}},{{&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227},{&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227},{&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227,&p_677->g_227}}};
    int32_t l_411 = 0L;
    int16_t *l_416 = &p_677->g_120;
    int16_t *l_417[4][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
    int32_t *l_420 = (void*)0;
    int32_t *l_421 = &p_677->g_68;
    int i, j, k;
    for (p_677->g_102 = 0; (p_677->g_102 != 11); p_677->g_102 = safe_add_func_uint32_t_u_u(p_677->g_102, 2))
    { /* block id: 164 */
        int32_t *l_391[3][4][3];
        int32_t **l_392 = &p_677->g_141;
        VECTOR(int64_t, 8) l_394 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L));
        uint16_t *l_412 = &p_677->g_227;
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 4; j++)
            {
                for (k = 0; k < 3; k++)
                    l_391[i][j][k] = &p_677->g_71;
            }
        }
        (*l_392) = l_391[2][3][2];
        if (p_33)
            break;
        if ((((*p_677->g_57) == (void*)0) < 0x5DC4L))
        { /* block id: 167 */
            int64_t l_393 = 0x57EBC09C6A1D650FL;
            return l_393;
        }
        else
        { /* block id: 169 */
            int16_t l_398[3][10][1] = {{{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L}},{{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L}},{{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L},{0x00A1L}}};
            uint64_t *l_402[9];
            int32_t l_403 = 0x742FC1B8L;
            int32_t l_404 = 1L;
            uint16_t *l_413 = &p_677->g_227;
            int i, j, k;
            for (i = 0; i < 9; i++)
                l_402[i] = (void*)0;
            (**l_392) = (((0x728551E7B29B7377L >= ((VECTOR(int64_t, 2))(l_394.s37)).even) , func_34(p_32, (*p_677->g_57), (safe_lshift_func_uint16_t_u_s(l_397, 10)), (l_403 = ((l_398[2][8][0] , (((-1L) & (~(((safe_lshift_func_uint8_t_u_u((l_401[1][1][3] == (((l_411 = (((((--p_677->g_95) & (safe_sub_func_uint64_t_u_u((((((p_677->g_227 &= l_404) & ((0x98L ^ (*p_30)) < l_397)) == p_677->g_163.s5) <= p_33) <= p_677->g_163.sd), 0x264CBDEEEB8CCF52L))) > 1UL) > (**l_392)) ^ 0x45440E11L)) != (*p_677->g_322)) , l_412)), (*p_32))) | 0UL) > 2L))) , p_33)) <= p_677->g_268.sd)), p_677)) == (void*)0);
            if ((*p_677->g_141))
                continue;
            if (l_403)
                break;
            (*p_677->g_141) = (~(((l_413 = &p_677->g_227) == (void*)0) , p_33));
        }
    }
    (*l_421) = (safe_div_func_int16_t_s_s((p_677->g_214.y = ((*l_416) = p_677->g_163.s2)), (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(18446744073709551615UL, 0x2D178D8AB6327CC1L)).hi, p_677->g_163.sc))));
    return p_677->g_268.s4;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t * func_34(uint8_t * p_35, uint8_t * p_36, int32_t  p_37, uint16_t  p_38, struct S0 * p_677)
{ /* block id: 159 */
    return p_36;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_322
 * writes:
 */
uint8_t * func_40(uint8_t ** p_41, struct S0 * p_677)
{ /* block id: 157 */
    return (*p_41);
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_323 p_677->g_102
 * writes: p_677->g_71 p_677->g_102
 */
uint8_t ** func_42(int64_t  p_43, uint8_t ** p_44, uint8_t * p_45, struct S0 * p_677)
{ /* block id: 107 */
    int32_t *l_324 = (void*)0;
    int32_t *l_325 = &p_677->g_71;
    int32_t l_339 = 0x24457819L;
    (*l_325) = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(p_677->g_323.xxwzwyxx)))).s1;
    for (p_677->g_102 = (-23); (p_677->g_102 >= 54); ++p_677->g_102)
    { /* block id: 111 */
        int32_t *l_336[2];
        uint8_t **l_338 = &p_677->g_58[0][1];
        int32_t l_366 = (-1L);
        uint32_t l_368[9][5][5] = {{{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L}},{{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L}},{{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L}},{{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L}},{{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L}},{{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L}},{{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L}},{{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L}},{{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L},{0xD4D02FFBL,0xD990BC95L,4294967294UL,0xAB0EA905L,0xFE6D46F1L}}};
        int32_t **l_385 = (void*)0;
        int32_t **l_386 = (void*)0;
        int32_t **l_387 = &l_325;
        uint8_t ***l_388 = &l_338;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_336[i] = &p_677->g_71;
        (1 + 1);
    }
    return &p_677->g_322;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_11 p_677->g_57 p_677->g_58 p_677->g_75 p_677->g_68 p_677->g_82 p_677->g_87 p_677->g_71 p_677->g_97 p_677->g_102 p_677->g_83 p_677->g_126 p_677->g_133 p_677->g_132 p_677->g_141 p_677->g_95 p_677->g_268 p_677->g_269 p_677->g_270 p_677->g_271 p_677->g_244 p_677->g_290 p_677->g_131
 * writes: p_677->g_58 p_677->g_68 p_677->g_71 p_677->g_75 p_677->g_95 p_677->g_97 p_677->g_102 p_677->g_120 p_677->g_126 p_677->g_141 p_677->g_244 p_677->g_133 p_677->g_271
 */
int64_t  func_46(uint32_t  p_47, struct S0 * p_677)
{ /* block id: 7 */
    uint8_t *l_62 = &p_677->g_11;
    int32_t *l_138[1];
    uint8_t **l_200 = &p_677->g_58[0][1];
    VECTOR(int64_t, 4) l_251 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 2L), 2L);
    int16_t l_254 = 0x7FD3L;
    VECTOR(uint8_t, 16) l_267 = (VECTOR(uint8_t, 16))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 1UL), 1UL), 1UL, 7UL, 1UL, (VECTOR(uint8_t, 2))(7UL, 1UL), (VECTOR(uint8_t, 2))(7UL, 1UL), 7UL, 1UL, 7UL, 1UL);
    VECTOR(int8_t, 2) l_273 = (VECTOR(int8_t, 2))(4L, 5L);
    int8_t *l_291 = (void*)0;
    int8_t *l_292 = (void*)0;
    int8_t *l_293 = (void*)0;
    uint64_t l_294 = 0x6A3F8C589242FC26L;
    int64_t l_295[2][2];
    int8_t *l_296 = (void*)0;
    int8_t *l_297 = (void*)0;
    int8_t *l_298 = (void*)0;
    int8_t *l_299 = (void*)0;
    int8_t *l_300[9][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint64_t *l_303 = &l_294;
    uint32_t l_316 = 0UL;
    int32_t l_321 = 0x2C8177F6L;
    int i, j;
    for (i = 0; i < 1; i++)
        l_138[i] = (void*)0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_295[i][j] = 0x7B9D552DC8CDFEB0L;
    }
    for (p_47 = (-15); (p_47 < 30); p_47 = safe_add_func_uint64_t_u_u(p_47, 9))
    { /* block id: 10 */
        int64_t l_56 = (-8L);
        uint8_t **l_59 = &p_677->g_58[0][1];
        int32_t l_63 = 0x114AC9FDL;
        int32_t *l_130 = &p_677->g_68;
        uint64_t l_202 = 1UL;
        (*l_130) = func_50(p_677->g_11, ((p_677->g_11 == l_56) , p_677->g_57), l_59, (((l_63 = ((safe_mul_func_uint16_t_u_u(p_677->g_11, 0xBA82L)) >= ((4294967291UL && FAKE_DIVERGE(p_677->group_0_offset, get_group_id(0), 10)) , ((((*p_677->g_57) = (*p_677->g_57)) != l_62) == p_677->g_11)))) >= 0x4923L) , p_677->g_11), &l_62, p_677);
        if (p_47)
            break;
        if (((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(p_677->g_131.xxyx)).yxzwwzyy)).s75))), 1L, 7L)))).even, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_677->g_132.wwwyxyyy)).s12)), 9L, 0x18B08B8FL)).wzzxwzwy))).s34, ((VECTOR(int32_t, 2))((-1L), 0x0E3505F3L))))).xyxy, ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 4))(0L, (*l_130), 8L, 0x37DAF6EEL)).xywyyzyxwyxxzzwx, ((VECTOR(int32_t, 8))(p_677->g_133.sdcc94966)).s3207277315307524))).s1c33))).x)
        { /* block id: 53 */
            int32_t l_136 = (-1L);
            (*l_130) |= (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(0xB1L, 0x8FL)))).even, 6));
            return l_136;
        }
        else
        { /* block id: 56 */
            int32_t **l_137[1][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            VECTOR(int8_t, 8) l_162 = (VECTOR(int8_t, 8))(0x03L, (VECTOR(int8_t, 4))(0x03L, (VECTOR(int8_t, 2))(0x03L, (-1L)), (-1L)), (-1L), 0x03L, (-1L));
            VECTOR(uint8_t, 2) l_164 = (VECTOR(uint8_t, 2))(0x78L, 0x90L);
            VECTOR(uint8_t, 8) l_165 = (VECTOR(uint8_t, 8))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 255UL), 255UL), 255UL, 8UL, 255UL);
            VECTOR(uint64_t, 2) l_211 = (VECTOR(uint64_t, 2))(0x71FE1FC20E1E6137L, 0x823A7359817176E7L);
            int i, j;
            l_138[0] = &p_677->g_68;
            for (p_677->g_75 = 0; (p_677->g_75 > 15); ++p_677->g_75)
            { /* block id: 60 */
                uint8_t *l_155 = &p_677->g_102;
                uint8_t *l_168 = (void*)0;
                uint8_t *l_169 = (void*)0;
                uint8_t *l_170 = (void*)0;
                uint8_t *l_171 = (void*)0;
                uint8_t *l_172 = (void*)0;
                int32_t l_173 = 1L;
                p_677->g_141 = &l_63;
                (*l_130) = (!((p_47 , (safe_mul_func_uint16_t_u_u((255UL <= ((safe_sub_func_uint32_t_u_u(((safe_sub_func_int64_t_s_s((((safe_sub_func_int8_t_s_s(p_47, (((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_677->g_150.s31)).xyyxyxxyxyyxyxyx)).s6 || 0x05L))) >= (safe_mul_func_uint8_t_u_u(((*l_155) = (safe_add_func_int64_t_s_s(p_47, p_677->g_11))), 0x83L))) >= ((safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((((VECTOR(int8_t, 2))((-1L), 0x53L)).even == (GROUP_DIVERGE(0, 1) ^ ((FAKE_DIVERGE(p_677->local_2_offset, get_local_id(2), 10) && ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_162.s7105)).odd)).odd) < p_677->g_133.s1))) , ((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_677->g_163.s7f31)).xzwwxzwz)).s4753467255527051)).s1b, ((VECTOR(uint8_t, 16))(l_164.xyxxyyxxxxyyxxxy)).sbb, ((VECTOR(uint8_t, 16))(l_165.s3512163675604714)).s4f))).even), (((safe_div_func_uint8_t_u_u((l_173 &= 0x45L), GROUP_DIVERGE(1, 1))) ^ 0x1164L) >= p_47))), p_677->g_87.w)), 6)) < 0x56EEL)), p_47)) , p_677->g_132.z), (*p_677->g_141))) > p_677->g_11)), 8UL))) || 0L));
                if (p_47)
                { /* block id: 65 */
                    uint64_t *l_188[3][8] = {{&p_677->g_95,(void*)0,&p_677->g_95,&p_677->g_95,(void*)0,&p_677->g_95,&p_677->g_95,(void*)0},{&p_677->g_95,(void*)0,&p_677->g_95,&p_677->g_95,(void*)0,&p_677->g_95,&p_677->g_95,(void*)0},{&p_677->g_95,(void*)0,&p_677->g_95,&p_677->g_95,(void*)0,&p_677->g_95,&p_677->g_95,(void*)0}};
                    uint8_t ***l_199[9] = {&p_677->g_57,&p_677->g_57,&p_677->g_57,&p_677->g_57,&p_677->g_57,&p_677->g_57,&p_677->g_57,&p_677->g_57,&p_677->g_57};
                    int16_t *l_201 = &p_677->g_120;
                    uint16_t *l_226 = &p_677->g_227;
                    int32_t l_228 = (-1L);
                    int32_t l_229 = 0x6984A78FL;
                    int32_t **l_230 = &l_138[0];
                    int i, j;
                    (*p_677->g_141) &= (safe_mul_func_uint8_t_u_u(((~(safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(p_677->g_68, (safe_lshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((((*l_130) = 1UL) , (((*l_201) |= (0x7D6FL ^ ((((safe_rshift_func_int16_t_s_u((safe_div_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(p_47, GROUP_DIVERGE(2, 1))), (p_677->g_83.s1 = p_47))))), ((l_200 = l_59) == ((*l_130) , &p_677->g_58[3][5])))) , &p_677->g_58[0][1]) == &p_677->g_58[3][1]) == p_47))) == p_677->g_132.x)), p_677->g_82.s1)), l_173)), 3)), (-1L))), l_202)), 0L, 0x0CL, 0x17L, p_47, 0x3DL, 0x55L)).s0, 2))) , p_47), 0x89L));
                    (*l_130) = (safe_add_func_int32_t_s_s((safe_div_func_int8_t_s_s((p_47 || p_47), (((*p_677->g_141) || p_47) & (safe_add_func_int16_t_s_s((safe_add_func_uint8_t_u_u((((*l_201) = (((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_211.xx)))), 9UL, 0x50F382EBA428A3EDL, (safe_lshift_func_uint8_t_u_s((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(p_677->g_214.yyyx)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((-1L), (-1L), (p_677->g_214.x = (safe_unary_minus_func_uint16_t_u(((safe_sub_func_uint8_t_u_u((GROUP_DIVERGE(2, 1) , (((((safe_mod_func_uint64_t_u_u(((l_228 = ((safe_mul_func_int8_t_s_s(1L, 1UL)) > (safe_mul_func_uint16_t_u_u(((*l_226) = (safe_div_func_uint8_t_u_u(0UL, 0x20L))), ((void*)0 != &p_677->g_120))))) | p_677->g_163.s7), l_229)) && p_677->g_163.sf) != p_47) , p_47) ^ l_229)), 6L)) ^ 1UL)))), 9L, (-1L), ((VECTOR(int16_t, 2))((-7L))), 0x63C3L)).s27)), p_677->g_95, p_47, ((VECTOR(int16_t, 2))(5L)), 0x7439L, ((VECTOR(int16_t, 2))(1L)), (-1L), 0x7C1CL, (-1L))).sb & 0UL), p_47)), 0UL, 0xBF05D6A4A3CB0796L, ((VECTOR(uint64_t, 2))(0x5F8E45F190557B0DL)), ((VECTOR(uint64_t, 4))(0xF687C1ADAD2F0B0CL)), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 18446744073709551614UL)).s8 , l_230) == &p_677->g_141) <= p_47)) > p_47), p_47)), p_47))))), p_47));
                    (*l_230) = &l_173;
                }
                else
                { /* block id: 77 */
                    (*p_677->g_141) = (*p_677->g_141);
                }
                (*p_677->g_141) = (*p_677->g_141);
            }
        }
        l_138[0] = &l_63;
    }
    for (p_677->g_95 = (-19); (p_677->g_95 >= 34); p_677->g_95 = safe_add_func_int16_t_s_s(p_677->g_95, 9))
    { /* block id: 87 */
        VECTOR(uint8_t, 4) l_241 = (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0x88L), 0x88L);
        int8_t **l_243[3];
        uint8_t *l_245[10];
        int64_t l_246 = 1L;
        VECTOR(uint32_t, 8) l_249 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xFE7E0747L), 0xFE7E0747L), 0xFE7E0747L, 4294967295UL, 0xFE7E0747L);
        uint64_t *l_257 = &p_677->g_75;
        int32_t l_264 = 0x709F02BEL;
        VECTOR(int8_t, 16) l_272 = (VECTOR(int8_t, 16))(0x6DL, (VECTOR(int8_t, 4))(0x6DL, (VECTOR(int8_t, 2))(0x6DL, (-1L)), (-1L)), (-1L), 0x6DL, (-1L), (VECTOR(int8_t, 2))(0x6DL, (-1L)), (VECTOR(int8_t, 2))(0x6DL, (-1L)), 0x6DL, (-1L), 0x6DL, (-1L));
        int16_t *l_282 = &p_677->g_120;
        int16_t *l_289 = &l_254;
        int i;
        for (i = 0; i < 3; i++)
            l_243[i] = (void*)0;
        for (i = 0; i < 10; i++)
            l_245[i] = (void*)0;
        l_264 = (0x32FD4F28L ^ (safe_div_func_int16_t_s_s((safe_div_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(l_241.xw)).xxyxyxxx, (uint8_t)(p_677->g_133.s7 <= p_677->g_132.z)))))).s7577762433524732)).s1e, ((VECTOR(uint8_t, 2))(p_677->g_242.s14))))).even, ((l_246 = ((p_677->g_244 = p_677->g_58[0][1]) != l_62)) & p_47))), (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 4))(l_249.s2722)), ((VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL)).yxxx))).yzzxwxwzzyywxxwy, ((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 4))(p_677->g_250.se255)).odd, ((VECTOR(int64_t, 4))(l_251.wxyw)).hi))).yxyyxxyx, (int64_t)((((p_677->g_227 = ((safe_lshift_func_uint8_t_u_u(l_254, 5)) || (GROUP_DIVERGE(2, 1) | (p_677->g_256 = ((VECTOR(int32_t, 8))(p_677->g_255.wxywzyxy)).s1)))) >= (p_677->g_126 ^ (--(*l_257)))) , (safe_add_func_int16_t_s_s((safe_div_func_uint16_t_u_u((0x15A1C812790765E2L == (-1L)), 1UL)), p_677->g_255.z))) != p_47)))), ((VECTOR(int64_t, 8))((-1L)))))).s6754562267076151, ((VECTOR(uint64_t, 16))(0x12A8F30D59EE195EL))))).s1, 1L)))), p_47)), 0xE331L)));
        if (p_677->g_82.s7)
            break;
        l_264 &= p_47;
        p_677->g_133.sb ^= (safe_add_func_uint32_t_u_u(((l_241.z , ((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_267.scba7c000d35b4687)).sbf)).xyxxyxyx, ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(p_677->g_268.s35)).xxyx, ((VECTOR(uint8_t, 2))(p_677->g_269.s24)).yxxy))).zxxwyyyz, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 8))(8UL, ((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 16))(p_677->g_270.xxyxxyxxyyxxxyyx)).sa9, ((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 4))(p_677->g_271.s4352)), ((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 2))(0x58L, 0x1DL))))).yyxyxyyx, ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(l_272.s573083cf00721254)).s8a50, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 8))(l_273.yyxxyyyx)), (int8_t)((safe_lshift_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((l_245[7] == ((*l_200) = (*l_200))), (((~(safe_div_func_int8_t_s_s(((~(safe_rshift_func_uint16_t_u_s((0xA2538BBCL == 0UL), ((*l_282) = p_677->g_269.s4)))) <= ((*l_289) = (GROUP_DIVERGE(0, 1) & (safe_mul_func_uint8_t_u_u((p_677->g_244 != (void*)0), (safe_add_func_int8_t_s_s((safe_add_func_uint64_t_u_u((((l_245[2] != (void*)0) && p_47) >= 2UL), p_47)), p_47))))))), GROUP_DIVERGE(1, 1)))) && 0UL) , 0x5DL))) <= p_677->g_68) <= 1UL), 6)) | p_47)))).even))), 0x34L, 0x13L, 0x2DL, 6L)).s37)).xyxy))).zxyxwyxw, ((VECTOR(int8_t, 8))((-9L)))))).odd))).zxxxxxzx, ((VECTOR(uint8_t, 8))(246UL))))).s54, ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(0xE2L))))).xyyyyxyx, ((VECTOR(uint8_t, 8))(246UL)), ((VECTOR(uint8_t, 8))(1UL))))).s06))), ((VECTOR(uint8_t, 2))(4UL))))), ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(0x98L))))), 247UL, l_249.s0, FAKE_DIVERGE(p_677->local_0_offset, get_local_id(0), 10), 0xFAL, 1UL)).s1463030745361736, ((VECTOR(uint8_t, 16))(0xF1L))))).s45)).yxxx)))).wyxwyxww))).hi, ((VECTOR(uint8_t, 4))(0UL)), ((VECTOR(uint8_t, 4))(0x5FL))))).zwwxxxwwzzxxzwxx, ((VECTOR(uint8_t, 16))(249UL)), ((VECTOR(uint8_t, 16))(0xF3L))))).s2) != p_47), p_47));
    }
    p_677->g_133.s1 = (((((p_677->g_271.s5 &= (l_295[0][0] = (+(+(l_294 = ((VECTOR(int8_t, 8))((-3L), 0x38L, 0x2AL, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_677->g_290.xy)), 0L, (-6L))), 0L)).s4))))) , (safe_sub_func_uint64_t_u_u(((*l_303)--), (safe_lshift_func_int8_t_s_u((safe_div_func_int64_t_s_s((safe_mul_func_int16_t_s_s((65533UL | (&p_677->g_71 != &p_677->g_68)), ((((0x25CEL || p_47) & ((((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u((l_316 <= ((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (~(((!((safe_mod_func_uint16_t_u_u(((0x721ED154L || (((~((0xA67FB14B8DF6ADCCL == p_677->g_131.w) != 65526UL)) == p_677->g_83.s2) & p_677->g_133.s4)) , p_677->g_270.x), (-1L))) | 2UL)) != p_47) == p_47)))) , (-1L))), 2)), 0L)) & p_677->g_97) || p_47) == GROUP_DIVERGE(2, 1))) && p_677->g_133.sf) ^ 3L))), p_677->g_11)), 2))))) != p_677->g_269.s1) == p_677->g_11) , l_321);
    return p_677->g_83.s4;
}


/* ------------------------------------------ */
/* 
 * reads : p_677->g_68 p_677->g_71 p_677->g_75 p_677->g_82 p_677->g_83 p_677->g_87 p_677->g_97 p_677->g_102 p_677->g_126
 * writes: p_677->g_68 p_677->g_71 p_677->g_75 p_677->g_95 p_677->g_97 p_677->g_102 p_677->g_120 p_677->g_126
 */
int32_t  func_50(int16_t  p_51, uint8_t ** p_52, uint8_t ** p_53, int32_t  p_54, uint8_t ** p_55, struct S0 * p_677)
{ /* block id: 13 */
    int32_t l_100 = 1L;
    int32_t *l_129 = &p_677->g_71;
    for (p_54 = 4; (p_54 != 17); p_54 = safe_add_func_uint32_t_u_u(p_54, 1))
    { /* block id: 16 */
        VECTOR(int8_t, 16) l_85 = (VECTOR(int8_t, 16))(0x09L, (VECTOR(int8_t, 4))(0x09L, (VECTOR(int8_t, 2))(0x09L, 0x00L), 0x00L), 0x00L, 0x09L, 0x00L, (VECTOR(int8_t, 2))(0x09L, 0x00L), (VECTOR(int8_t, 2))(0x09L, 0x00L), 0x09L, 0x00L, 0x09L, 0x00L);
        int32_t l_93 = 0x5CF39A37L;
        int32_t l_101 = 1L;
        int32_t *l_124 = &l_100;
        int32_t *l_125[8][3][4] = {{{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93}},{{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93}},{{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93}},{{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93}},{{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93}},{{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93}},{{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93}},{{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93},{&p_677->g_71,(void*)0,&l_100,&l_93}}};
        int i, j, k;
        for (p_51 = 0; (p_51 > 7); ++p_51)
        { /* block id: 19 */
            int8_t l_79 = 0x54L;
            int32_t *l_123[7];
            int i;
            for (i = 0; i < 7; i++)
                l_123[i] = &l_100;
            for (p_677->g_68 = (-9); (p_677->g_68 != 8); p_677->g_68 = safe_add_func_int16_t_s_s(p_677->g_68, 1))
            { /* block id: 22 */
                VECTOR(uint8_t, 8) l_86 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
                int16_t *l_119 = &p_677->g_120;
                int32_t l_122[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_122[i] = 1L;
                for (p_677->g_71 = (-9); (p_677->g_71 != 1); p_677->g_71 = safe_add_func_int8_t_s_s(p_677->g_71, 1))
                { /* block id: 25 */
                    uint64_t *l_74 = &p_677->g_75;
                    int32_t *l_78[5][6][3] = {{{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68}},{{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68}},{{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68}},{{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68}},{{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68},{(void*)0,&p_677->g_71,&p_677->g_68}}};
                    VECTOR(int8_t, 4) l_84 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x23L), 0x23L);
                    int8_t l_90 = 5L;
                    int8_t *l_91 = (void*)0;
                    int8_t *l_92 = &l_90;
                    VECTOR(int32_t, 8) l_94 = (VECTOR(int32_t, 8))(0x12FA99DBL, (VECTOR(int32_t, 4))(0x12FA99DBL, (VECTOR(int32_t, 2))(0x12FA99DBL, (-1L)), (-1L)), (-1L), 0x12FA99DBL, (-1L));
                    int32_t l_96 = 0x738CF3A2L;
                    int i, j, k;
                    l_79 = (0L == ((++(*l_74)) <= p_677->g_68));
                    if (((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_677->g_82.sa59a115e)).s2, ((-1L) <= ((l_79 != (l_93 &= (((*l_92) = (((+p_677->g_82.s0) , p_51) | ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 16))(0x7FL, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(p_677->g_83.s1226)).hi)), (-2L), 0x30L)))).even, ((VECTOR(int8_t, 2))(l_84.wx))))), ((VECTOR(int8_t, 8))(0x78L, 0x77L, ((VECTOR(int8_t, 4))(l_85.sc182)), 0x6EL, 0x74L)), ((~p_677->g_83.s7) ^ (-1L)), 0x74L, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))((-1L), 8L)), (int8_t)p_54))), (-7L))), ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 4))(0xD0L, 0x1CL, 0x86L, 0x57L)), ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_86.s46632654)).s64)), ((VECTOR(uint8_t, 4))(p_677->g_87.wzzz)).even))).yyxx))).even, (uint8_t)(safe_mul_func_int16_t_s_s((((l_90 | 1UL) ^ 0x0AL) <= p_677->g_68), 0x3D1AL))))).yxyyyyxyyxyyxxxx))).lo))))), (int16_t)p_51))))).s1)) >= 0xC0L))) && p_677->g_87.z)))) , 0x7AC92380L))
                    { /* block id: 30 */
                        p_677->g_95 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_94.s14033415)))).s2;
                    }
                    else
                    { /* block id: 32 */
                        if (l_96)
                            break;
                        if (p_677->g_71)
                            break;
                        --p_677->g_97;
                    }
                    p_677->g_102++;
                }
                l_122[0] ^= (safe_div_func_uint32_t_u_u((((safe_lshift_func_uint16_t_u_u(l_86.s3, 6)) >= (safe_sub_func_int8_t_s_s(p_677->g_83.s5, l_79))) && (!l_86.s5)), (safe_sub_func_int8_t_s_s((((safe_mul_func_int16_t_s_s(((*l_119) = (safe_lshift_func_uint16_t_u_s(8UL, l_85.s2))), ((safe_unary_minus_func_uint8_t_u(((((VECTOR(uint16_t, 2))(0xE3A5L, 0x1519L)).even && p_54) < (((void*)0 == &l_93) , p_677->g_97)))) || 0x61C4CBDEL))) , GROUP_DIVERGE(2, 1)) && 0xA2E4B197733A1BBBL), l_101))));
                if (l_85.s4)
                    break;
            }
            if (p_677->g_71)
                break;
            p_677->g_68 = 0L;
        }
        --p_677->g_126;
        (*l_124) |= (-1L);
    }
    (*l_129) &= 0L;
    return p_54;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S0 c_678;
    struct S0* p_677 = &c_678;
    struct S0 c_679 = {
        0x33L, // p_677->g_11
        255UL, // p_677->g_15
        (VECTOR(int32_t, 16))(0x0A83AFD4L, (VECTOR(int32_t, 4))(0x0A83AFD4L, (VECTOR(int32_t, 2))(0x0A83AFD4L, (-1L)), (-1L)), (-1L), 0x0A83AFD4L, (-1L), (VECTOR(int32_t, 2))(0x0A83AFD4L, (-1L)), (VECTOR(int32_t, 2))(0x0A83AFD4L, (-1L)), 0x0A83AFD4L, (-1L), 0x0A83AFD4L, (-1L)), // p_677->g_23
        {{&p_677->g_11,&p_677->g_11,&p_677->g_11,(void*)0,&p_677->g_11,&p_677->g_11,&p_677->g_11},{&p_677->g_11,&p_677->g_11,&p_677->g_11,(void*)0,&p_677->g_11,&p_677->g_11,&p_677->g_11},{&p_677->g_11,&p_677->g_11,&p_677->g_11,(void*)0,&p_677->g_11,&p_677->g_11,&p_677->g_11},{&p_677->g_11,&p_677->g_11,&p_677->g_11,(void*)0,&p_677->g_11,&p_677->g_11,&p_677->g_11}}, // p_677->g_58
        &p_677->g_58[0][1], // p_677->g_57
        (-9L), // p_677->g_68
        0x29D242ECL, // p_677->g_71
        18446744073709551613UL, // p_677->g_75
        (VECTOR(int8_t, 16))(0x57L, (VECTOR(int8_t, 4))(0x57L, (VECTOR(int8_t, 2))(0x57L, 0x0BL), 0x0BL), 0x0BL, 0x57L, 0x0BL, (VECTOR(int8_t, 2))(0x57L, 0x0BL), (VECTOR(int8_t, 2))(0x57L, 0x0BL), 0x57L, 0x0BL, 0x57L, 0x0BL), // p_677->g_82
        (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x1EL), 0x1EL), 0x1EL, (-4L), 0x1EL), // p_677->g_83
        (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 1UL), 1UL), // p_677->g_87
        18446744073709551615UL, // p_677->g_95
        0x81C3794EL, // p_677->g_97
        0x81L, // p_677->g_102
        0x7E8BL, // p_677->g_120
        4294967295UL, // p_677->g_126
        (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x0EC7AF4AL), 0x0EC7AF4AL), // p_677->g_131
        (VECTOR(int32_t, 4))(0x370AA81EL, (VECTOR(int32_t, 2))(0x370AA81EL, 4L), 4L), // p_677->g_132
        (VECTOR(int32_t, 16))(0x42CC3DE6L, (VECTOR(int32_t, 4))(0x42CC3DE6L, (VECTOR(int32_t, 2))(0x42CC3DE6L, 0x70479FFEL), 0x70479FFEL), 0x70479FFEL, 0x42CC3DE6L, 0x70479FFEL, (VECTOR(int32_t, 2))(0x42CC3DE6L, 0x70479FFEL), (VECTOR(int32_t, 2))(0x42CC3DE6L, 0x70479FFEL), 0x42CC3DE6L, 0x70479FFEL, 0x42CC3DE6L, 0x70479FFEL), // p_677->g_133
        &p_677->g_68, // p_677->g_141
        (VECTOR(int8_t, 8))(0x1CL, (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 0x44L), 0x44L), 0x44L, 0x1CL, 0x44L), // p_677->g_150
        (VECTOR(uint8_t, 16))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0UL), 0UL), 0UL, 249UL, 0UL, (VECTOR(uint8_t, 2))(249UL, 0UL), (VECTOR(uint8_t, 2))(249UL, 0UL), 249UL, 0UL, 249UL, 0UL), // p_677->g_163
        (VECTOR(int16_t, 2))((-10L), 0x2CC9L), // p_677->g_214
        65526UL, // p_677->g_227
        (VECTOR(uint8_t, 8))(0xE6L, (VECTOR(uint8_t, 4))(0xE6L, (VECTOR(uint8_t, 2))(0xE6L, 248UL), 248UL), 248UL, 0xE6L, 248UL), // p_677->g_242
        (void*)0, // p_677->g_244
        (VECTOR(int64_t, 16))(0x540EE2B266AA3977L, (VECTOR(int64_t, 4))(0x540EE2B266AA3977L, (VECTOR(int64_t, 2))(0x540EE2B266AA3977L, 3L), 3L), 3L, 0x540EE2B266AA3977L, 3L, (VECTOR(int64_t, 2))(0x540EE2B266AA3977L, 3L), (VECTOR(int64_t, 2))(0x540EE2B266AA3977L, 3L), 0x540EE2B266AA3977L, 3L, 0x540EE2B266AA3977L, 3L), // p_677->g_250
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5D0B8CB3L), 0x5D0B8CB3L), // p_677->g_255
        (-8L), // p_677->g_256
        (VECTOR(uint8_t, 16))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0UL), 0UL), 0UL, 7UL, 0UL, (VECTOR(uint8_t, 2))(7UL, 0UL), (VECTOR(uint8_t, 2))(7UL, 0UL), 7UL, 0UL, 7UL, 0UL), // p_677->g_268
        (VECTOR(uint8_t, 8))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0xE7L), 0xE7L), 0xE7L, 246UL, 0xE7L), // p_677->g_269
        (VECTOR(uint8_t, 2))(253UL, 0x9DL), // p_677->g_270
        (VECTOR(int8_t, 8))(0x1DL, (VECTOR(int8_t, 4))(0x1DL, (VECTOR(int8_t, 2))(0x1DL, 0x1DL), 0x1DL), 0x1DL, 0x1DL, 0x1DL), // p_677->g_271
        (VECTOR(int8_t, 2))(0x40L, 1L), // p_677->g_290
        &p_677->g_11, // p_677->g_322
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), // p_677->g_323
        (VECTOR(int64_t, 4))(0x2E064B953AF312F3L, (VECTOR(int64_t, 2))(0x2E064B953AF312F3L, 0L), 0L), // p_677->g_352
        (VECTOR(int64_t, 8))(0x321CA8D19DE4D5F4L, (VECTOR(int64_t, 4))(0x321CA8D19DE4D5F4L, (VECTOR(int64_t, 2))(0x321CA8D19DE4D5F4L, (-1L)), (-1L)), (-1L), 0x321CA8D19DE4D5F4L, (-1L)), // p_677->g_353
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 5UL), 5UL), 5UL, 255UL, 5UL, (VECTOR(uint8_t, 2))(255UL, 5UL), (VECTOR(uint8_t, 2))(255UL, 5UL), 255UL, 5UL, 255UL, 5UL), // p_677->g_380
        (-6L), // p_677->g_435
        &p_677->g_435, // p_677->g_434
        (VECTOR(int16_t, 2))((-10L), 0x7D5FL), // p_677->g_449
        (VECTOR(int16_t, 8))(0x4FBEL, (VECTOR(int16_t, 4))(0x4FBEL, (VECTOR(int16_t, 2))(0x4FBEL, 1L), 1L), 1L, 0x4FBEL, 1L), // p_677->g_450
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x01A9682AL), 0x01A9682AL), 0x01A9682AL, (-1L), 0x01A9682AL), // p_677->g_506
        (VECTOR(int32_t, 2))(1L, 0L), // p_677->g_508
        (VECTOR(int64_t, 2))(0x4B857C2B5F0CE3B6L, (-1L)), // p_677->g_545
        (VECTOR(int32_t, 16))(0x7DF61971L, (VECTOR(int32_t, 4))(0x7DF61971L, (VECTOR(int32_t, 2))(0x7DF61971L, 1L), 1L), 1L, 0x7DF61971L, 1L, (VECTOR(int32_t, 2))(0x7DF61971L, 1L), (VECTOR(int32_t, 2))(0x7DF61971L, 1L), 0x7DF61971L, 1L, 0x7DF61971L, 1L), // p_677->g_551
        (VECTOR(uint8_t, 2))(0x33L, 0xF4L), // p_677->g_556
        0x5E67L, // p_677->g_566
        &p_677->g_566, // p_677->g_572
        &p_677->g_572, // p_677->g_571
        (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 2L), 2L), // p_677->g_615
        (VECTOR(uint8_t, 2))(1UL, 0xEDL), // p_677->g_621
        (VECTOR(uint16_t, 2))(0x1D5FL, 0x9B45L), // p_677->g_624
        (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, 1L), 1L), // p_677->g_637
        0xC7D6294BL, // p_677->g_653
        0L, // p_677->g_663
        0x6C7DL, // p_677->g_674
        {{&p_677->g_141,(void*)0,&p_677->g_141,&p_677->g_141,&p_677->g_141,(void*)0},{&p_677->g_141,(void*)0,&p_677->g_141,&p_677->g_141,&p_677->g_141,(void*)0},{&p_677->g_141,(void*)0,&p_677->g_141,&p_677->g_141,&p_677->g_141,(void*)0},{&p_677->g_141,(void*)0,&p_677->g_141,&p_677->g_141,&p_677->g_141,(void*)0},{&p_677->g_141,(void*)0,&p_677->g_141,&p_677->g_141,&p_677->g_141,(void*)0},{&p_677->g_141,(void*)0,&p_677->g_141,&p_677->g_141,&p_677->g_141,(void*)0}}, // p_677->g_675
        &p_677->g_141, // p_677->g_676
        sequence_input[get_global_id(0)], // p_677->global_0_offset
        sequence_input[get_global_id(1)], // p_677->global_1_offset
        sequence_input[get_global_id(2)], // p_677->global_2_offset
        sequence_input[get_local_id(0)], // p_677->local_0_offset
        sequence_input[get_local_id(1)], // p_677->local_1_offset
        sequence_input[get_local_id(2)], // p_677->local_2_offset
        sequence_input[get_group_id(0)], // p_677->group_0_offset
        sequence_input[get_group_id(1)], // p_677->group_1_offset
        sequence_input[get_group_id(2)], // p_677->group_2_offset
    };
    c_678 = c_679;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_677);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_677->g_11, "p_677->g_11", print_hash_value);
    transparent_crc(p_677->g_15, "p_677->g_15", print_hash_value);
    transparent_crc(p_677->g_23.s0, "p_677->g_23.s0", print_hash_value);
    transparent_crc(p_677->g_23.s1, "p_677->g_23.s1", print_hash_value);
    transparent_crc(p_677->g_23.s2, "p_677->g_23.s2", print_hash_value);
    transparent_crc(p_677->g_23.s3, "p_677->g_23.s3", print_hash_value);
    transparent_crc(p_677->g_23.s4, "p_677->g_23.s4", print_hash_value);
    transparent_crc(p_677->g_23.s5, "p_677->g_23.s5", print_hash_value);
    transparent_crc(p_677->g_23.s6, "p_677->g_23.s6", print_hash_value);
    transparent_crc(p_677->g_23.s7, "p_677->g_23.s7", print_hash_value);
    transparent_crc(p_677->g_23.s8, "p_677->g_23.s8", print_hash_value);
    transparent_crc(p_677->g_23.s9, "p_677->g_23.s9", print_hash_value);
    transparent_crc(p_677->g_23.sa, "p_677->g_23.sa", print_hash_value);
    transparent_crc(p_677->g_23.sb, "p_677->g_23.sb", print_hash_value);
    transparent_crc(p_677->g_23.sc, "p_677->g_23.sc", print_hash_value);
    transparent_crc(p_677->g_23.sd, "p_677->g_23.sd", print_hash_value);
    transparent_crc(p_677->g_23.se, "p_677->g_23.se", print_hash_value);
    transparent_crc(p_677->g_23.sf, "p_677->g_23.sf", print_hash_value);
    transparent_crc(p_677->g_68, "p_677->g_68", print_hash_value);
    transparent_crc(p_677->g_71, "p_677->g_71", print_hash_value);
    transparent_crc(p_677->g_75, "p_677->g_75", print_hash_value);
    transparent_crc(p_677->g_82.s0, "p_677->g_82.s0", print_hash_value);
    transparent_crc(p_677->g_82.s1, "p_677->g_82.s1", print_hash_value);
    transparent_crc(p_677->g_82.s2, "p_677->g_82.s2", print_hash_value);
    transparent_crc(p_677->g_82.s3, "p_677->g_82.s3", print_hash_value);
    transparent_crc(p_677->g_82.s4, "p_677->g_82.s4", print_hash_value);
    transparent_crc(p_677->g_82.s5, "p_677->g_82.s5", print_hash_value);
    transparent_crc(p_677->g_82.s6, "p_677->g_82.s6", print_hash_value);
    transparent_crc(p_677->g_82.s7, "p_677->g_82.s7", print_hash_value);
    transparent_crc(p_677->g_82.s8, "p_677->g_82.s8", print_hash_value);
    transparent_crc(p_677->g_82.s9, "p_677->g_82.s9", print_hash_value);
    transparent_crc(p_677->g_82.sa, "p_677->g_82.sa", print_hash_value);
    transparent_crc(p_677->g_82.sb, "p_677->g_82.sb", print_hash_value);
    transparent_crc(p_677->g_82.sc, "p_677->g_82.sc", print_hash_value);
    transparent_crc(p_677->g_82.sd, "p_677->g_82.sd", print_hash_value);
    transparent_crc(p_677->g_82.se, "p_677->g_82.se", print_hash_value);
    transparent_crc(p_677->g_82.sf, "p_677->g_82.sf", print_hash_value);
    transparent_crc(p_677->g_83.s0, "p_677->g_83.s0", print_hash_value);
    transparent_crc(p_677->g_83.s1, "p_677->g_83.s1", print_hash_value);
    transparent_crc(p_677->g_83.s2, "p_677->g_83.s2", print_hash_value);
    transparent_crc(p_677->g_83.s3, "p_677->g_83.s3", print_hash_value);
    transparent_crc(p_677->g_83.s4, "p_677->g_83.s4", print_hash_value);
    transparent_crc(p_677->g_83.s5, "p_677->g_83.s5", print_hash_value);
    transparent_crc(p_677->g_83.s6, "p_677->g_83.s6", print_hash_value);
    transparent_crc(p_677->g_83.s7, "p_677->g_83.s7", print_hash_value);
    transparent_crc(p_677->g_87.x, "p_677->g_87.x", print_hash_value);
    transparent_crc(p_677->g_87.y, "p_677->g_87.y", print_hash_value);
    transparent_crc(p_677->g_87.z, "p_677->g_87.z", print_hash_value);
    transparent_crc(p_677->g_87.w, "p_677->g_87.w", print_hash_value);
    transparent_crc(p_677->g_95, "p_677->g_95", print_hash_value);
    transparent_crc(p_677->g_97, "p_677->g_97", print_hash_value);
    transparent_crc(p_677->g_102, "p_677->g_102", print_hash_value);
    transparent_crc(p_677->g_120, "p_677->g_120", print_hash_value);
    transparent_crc(p_677->g_126, "p_677->g_126", print_hash_value);
    transparent_crc(p_677->g_131.x, "p_677->g_131.x", print_hash_value);
    transparent_crc(p_677->g_131.y, "p_677->g_131.y", print_hash_value);
    transparent_crc(p_677->g_131.z, "p_677->g_131.z", print_hash_value);
    transparent_crc(p_677->g_131.w, "p_677->g_131.w", print_hash_value);
    transparent_crc(p_677->g_132.x, "p_677->g_132.x", print_hash_value);
    transparent_crc(p_677->g_132.y, "p_677->g_132.y", print_hash_value);
    transparent_crc(p_677->g_132.z, "p_677->g_132.z", print_hash_value);
    transparent_crc(p_677->g_132.w, "p_677->g_132.w", print_hash_value);
    transparent_crc(p_677->g_133.s0, "p_677->g_133.s0", print_hash_value);
    transparent_crc(p_677->g_133.s1, "p_677->g_133.s1", print_hash_value);
    transparent_crc(p_677->g_133.s2, "p_677->g_133.s2", print_hash_value);
    transparent_crc(p_677->g_133.s3, "p_677->g_133.s3", print_hash_value);
    transparent_crc(p_677->g_133.s4, "p_677->g_133.s4", print_hash_value);
    transparent_crc(p_677->g_133.s5, "p_677->g_133.s5", print_hash_value);
    transparent_crc(p_677->g_133.s6, "p_677->g_133.s6", print_hash_value);
    transparent_crc(p_677->g_133.s7, "p_677->g_133.s7", print_hash_value);
    transparent_crc(p_677->g_133.s8, "p_677->g_133.s8", print_hash_value);
    transparent_crc(p_677->g_133.s9, "p_677->g_133.s9", print_hash_value);
    transparent_crc(p_677->g_133.sa, "p_677->g_133.sa", print_hash_value);
    transparent_crc(p_677->g_133.sb, "p_677->g_133.sb", print_hash_value);
    transparent_crc(p_677->g_133.sc, "p_677->g_133.sc", print_hash_value);
    transparent_crc(p_677->g_133.sd, "p_677->g_133.sd", print_hash_value);
    transparent_crc(p_677->g_133.se, "p_677->g_133.se", print_hash_value);
    transparent_crc(p_677->g_133.sf, "p_677->g_133.sf", print_hash_value);
    transparent_crc(p_677->g_150.s0, "p_677->g_150.s0", print_hash_value);
    transparent_crc(p_677->g_150.s1, "p_677->g_150.s1", print_hash_value);
    transparent_crc(p_677->g_150.s2, "p_677->g_150.s2", print_hash_value);
    transparent_crc(p_677->g_150.s3, "p_677->g_150.s3", print_hash_value);
    transparent_crc(p_677->g_150.s4, "p_677->g_150.s4", print_hash_value);
    transparent_crc(p_677->g_150.s5, "p_677->g_150.s5", print_hash_value);
    transparent_crc(p_677->g_150.s6, "p_677->g_150.s6", print_hash_value);
    transparent_crc(p_677->g_150.s7, "p_677->g_150.s7", print_hash_value);
    transparent_crc(p_677->g_163.s0, "p_677->g_163.s0", print_hash_value);
    transparent_crc(p_677->g_163.s1, "p_677->g_163.s1", print_hash_value);
    transparent_crc(p_677->g_163.s2, "p_677->g_163.s2", print_hash_value);
    transparent_crc(p_677->g_163.s3, "p_677->g_163.s3", print_hash_value);
    transparent_crc(p_677->g_163.s4, "p_677->g_163.s4", print_hash_value);
    transparent_crc(p_677->g_163.s5, "p_677->g_163.s5", print_hash_value);
    transparent_crc(p_677->g_163.s6, "p_677->g_163.s6", print_hash_value);
    transparent_crc(p_677->g_163.s7, "p_677->g_163.s7", print_hash_value);
    transparent_crc(p_677->g_163.s8, "p_677->g_163.s8", print_hash_value);
    transparent_crc(p_677->g_163.s9, "p_677->g_163.s9", print_hash_value);
    transparent_crc(p_677->g_163.sa, "p_677->g_163.sa", print_hash_value);
    transparent_crc(p_677->g_163.sb, "p_677->g_163.sb", print_hash_value);
    transparent_crc(p_677->g_163.sc, "p_677->g_163.sc", print_hash_value);
    transparent_crc(p_677->g_163.sd, "p_677->g_163.sd", print_hash_value);
    transparent_crc(p_677->g_163.se, "p_677->g_163.se", print_hash_value);
    transparent_crc(p_677->g_163.sf, "p_677->g_163.sf", print_hash_value);
    transparent_crc(p_677->g_214.x, "p_677->g_214.x", print_hash_value);
    transparent_crc(p_677->g_214.y, "p_677->g_214.y", print_hash_value);
    transparent_crc(p_677->g_227, "p_677->g_227", print_hash_value);
    transparent_crc(p_677->g_242.s0, "p_677->g_242.s0", print_hash_value);
    transparent_crc(p_677->g_242.s1, "p_677->g_242.s1", print_hash_value);
    transparent_crc(p_677->g_242.s2, "p_677->g_242.s2", print_hash_value);
    transparent_crc(p_677->g_242.s3, "p_677->g_242.s3", print_hash_value);
    transparent_crc(p_677->g_242.s4, "p_677->g_242.s4", print_hash_value);
    transparent_crc(p_677->g_242.s5, "p_677->g_242.s5", print_hash_value);
    transparent_crc(p_677->g_242.s6, "p_677->g_242.s6", print_hash_value);
    transparent_crc(p_677->g_242.s7, "p_677->g_242.s7", print_hash_value);
    transparent_crc(p_677->g_250.s0, "p_677->g_250.s0", print_hash_value);
    transparent_crc(p_677->g_250.s1, "p_677->g_250.s1", print_hash_value);
    transparent_crc(p_677->g_250.s2, "p_677->g_250.s2", print_hash_value);
    transparent_crc(p_677->g_250.s3, "p_677->g_250.s3", print_hash_value);
    transparent_crc(p_677->g_250.s4, "p_677->g_250.s4", print_hash_value);
    transparent_crc(p_677->g_250.s5, "p_677->g_250.s5", print_hash_value);
    transparent_crc(p_677->g_250.s6, "p_677->g_250.s6", print_hash_value);
    transparent_crc(p_677->g_250.s7, "p_677->g_250.s7", print_hash_value);
    transparent_crc(p_677->g_250.s8, "p_677->g_250.s8", print_hash_value);
    transparent_crc(p_677->g_250.s9, "p_677->g_250.s9", print_hash_value);
    transparent_crc(p_677->g_250.sa, "p_677->g_250.sa", print_hash_value);
    transparent_crc(p_677->g_250.sb, "p_677->g_250.sb", print_hash_value);
    transparent_crc(p_677->g_250.sc, "p_677->g_250.sc", print_hash_value);
    transparent_crc(p_677->g_250.sd, "p_677->g_250.sd", print_hash_value);
    transparent_crc(p_677->g_250.se, "p_677->g_250.se", print_hash_value);
    transparent_crc(p_677->g_250.sf, "p_677->g_250.sf", print_hash_value);
    transparent_crc(p_677->g_255.x, "p_677->g_255.x", print_hash_value);
    transparent_crc(p_677->g_255.y, "p_677->g_255.y", print_hash_value);
    transparent_crc(p_677->g_255.z, "p_677->g_255.z", print_hash_value);
    transparent_crc(p_677->g_255.w, "p_677->g_255.w", print_hash_value);
    transparent_crc(p_677->g_256, "p_677->g_256", print_hash_value);
    transparent_crc(p_677->g_268.s0, "p_677->g_268.s0", print_hash_value);
    transparent_crc(p_677->g_268.s1, "p_677->g_268.s1", print_hash_value);
    transparent_crc(p_677->g_268.s2, "p_677->g_268.s2", print_hash_value);
    transparent_crc(p_677->g_268.s3, "p_677->g_268.s3", print_hash_value);
    transparent_crc(p_677->g_268.s4, "p_677->g_268.s4", print_hash_value);
    transparent_crc(p_677->g_268.s5, "p_677->g_268.s5", print_hash_value);
    transparent_crc(p_677->g_268.s6, "p_677->g_268.s6", print_hash_value);
    transparent_crc(p_677->g_268.s7, "p_677->g_268.s7", print_hash_value);
    transparent_crc(p_677->g_268.s8, "p_677->g_268.s8", print_hash_value);
    transparent_crc(p_677->g_268.s9, "p_677->g_268.s9", print_hash_value);
    transparent_crc(p_677->g_268.sa, "p_677->g_268.sa", print_hash_value);
    transparent_crc(p_677->g_268.sb, "p_677->g_268.sb", print_hash_value);
    transparent_crc(p_677->g_268.sc, "p_677->g_268.sc", print_hash_value);
    transparent_crc(p_677->g_268.sd, "p_677->g_268.sd", print_hash_value);
    transparent_crc(p_677->g_268.se, "p_677->g_268.se", print_hash_value);
    transparent_crc(p_677->g_268.sf, "p_677->g_268.sf", print_hash_value);
    transparent_crc(p_677->g_269.s0, "p_677->g_269.s0", print_hash_value);
    transparent_crc(p_677->g_269.s1, "p_677->g_269.s1", print_hash_value);
    transparent_crc(p_677->g_269.s2, "p_677->g_269.s2", print_hash_value);
    transparent_crc(p_677->g_269.s3, "p_677->g_269.s3", print_hash_value);
    transparent_crc(p_677->g_269.s4, "p_677->g_269.s4", print_hash_value);
    transparent_crc(p_677->g_269.s5, "p_677->g_269.s5", print_hash_value);
    transparent_crc(p_677->g_269.s6, "p_677->g_269.s6", print_hash_value);
    transparent_crc(p_677->g_269.s7, "p_677->g_269.s7", print_hash_value);
    transparent_crc(p_677->g_270.x, "p_677->g_270.x", print_hash_value);
    transparent_crc(p_677->g_270.y, "p_677->g_270.y", print_hash_value);
    transparent_crc(p_677->g_271.s0, "p_677->g_271.s0", print_hash_value);
    transparent_crc(p_677->g_271.s1, "p_677->g_271.s1", print_hash_value);
    transparent_crc(p_677->g_271.s2, "p_677->g_271.s2", print_hash_value);
    transparent_crc(p_677->g_271.s3, "p_677->g_271.s3", print_hash_value);
    transparent_crc(p_677->g_271.s4, "p_677->g_271.s4", print_hash_value);
    transparent_crc(p_677->g_271.s5, "p_677->g_271.s5", print_hash_value);
    transparent_crc(p_677->g_271.s6, "p_677->g_271.s6", print_hash_value);
    transparent_crc(p_677->g_271.s7, "p_677->g_271.s7", print_hash_value);
    transparent_crc(p_677->g_290.x, "p_677->g_290.x", print_hash_value);
    transparent_crc(p_677->g_290.y, "p_677->g_290.y", print_hash_value);
    transparent_crc(p_677->g_323.x, "p_677->g_323.x", print_hash_value);
    transparent_crc(p_677->g_323.y, "p_677->g_323.y", print_hash_value);
    transparent_crc(p_677->g_323.z, "p_677->g_323.z", print_hash_value);
    transparent_crc(p_677->g_323.w, "p_677->g_323.w", print_hash_value);
    transparent_crc(p_677->g_352.x, "p_677->g_352.x", print_hash_value);
    transparent_crc(p_677->g_352.y, "p_677->g_352.y", print_hash_value);
    transparent_crc(p_677->g_352.z, "p_677->g_352.z", print_hash_value);
    transparent_crc(p_677->g_352.w, "p_677->g_352.w", print_hash_value);
    transparent_crc(p_677->g_353.s0, "p_677->g_353.s0", print_hash_value);
    transparent_crc(p_677->g_353.s1, "p_677->g_353.s1", print_hash_value);
    transparent_crc(p_677->g_353.s2, "p_677->g_353.s2", print_hash_value);
    transparent_crc(p_677->g_353.s3, "p_677->g_353.s3", print_hash_value);
    transparent_crc(p_677->g_353.s4, "p_677->g_353.s4", print_hash_value);
    transparent_crc(p_677->g_353.s5, "p_677->g_353.s5", print_hash_value);
    transparent_crc(p_677->g_353.s6, "p_677->g_353.s6", print_hash_value);
    transparent_crc(p_677->g_353.s7, "p_677->g_353.s7", print_hash_value);
    transparent_crc(p_677->g_380.s0, "p_677->g_380.s0", print_hash_value);
    transparent_crc(p_677->g_380.s1, "p_677->g_380.s1", print_hash_value);
    transparent_crc(p_677->g_380.s2, "p_677->g_380.s2", print_hash_value);
    transparent_crc(p_677->g_380.s3, "p_677->g_380.s3", print_hash_value);
    transparent_crc(p_677->g_380.s4, "p_677->g_380.s4", print_hash_value);
    transparent_crc(p_677->g_380.s5, "p_677->g_380.s5", print_hash_value);
    transparent_crc(p_677->g_380.s6, "p_677->g_380.s6", print_hash_value);
    transparent_crc(p_677->g_380.s7, "p_677->g_380.s7", print_hash_value);
    transparent_crc(p_677->g_380.s8, "p_677->g_380.s8", print_hash_value);
    transparent_crc(p_677->g_380.s9, "p_677->g_380.s9", print_hash_value);
    transparent_crc(p_677->g_380.sa, "p_677->g_380.sa", print_hash_value);
    transparent_crc(p_677->g_380.sb, "p_677->g_380.sb", print_hash_value);
    transparent_crc(p_677->g_380.sc, "p_677->g_380.sc", print_hash_value);
    transparent_crc(p_677->g_380.sd, "p_677->g_380.sd", print_hash_value);
    transparent_crc(p_677->g_380.se, "p_677->g_380.se", print_hash_value);
    transparent_crc(p_677->g_380.sf, "p_677->g_380.sf", print_hash_value);
    transparent_crc(p_677->g_435, "p_677->g_435", print_hash_value);
    transparent_crc(p_677->g_449.x, "p_677->g_449.x", print_hash_value);
    transparent_crc(p_677->g_449.y, "p_677->g_449.y", print_hash_value);
    transparent_crc(p_677->g_450.s0, "p_677->g_450.s0", print_hash_value);
    transparent_crc(p_677->g_450.s1, "p_677->g_450.s1", print_hash_value);
    transparent_crc(p_677->g_450.s2, "p_677->g_450.s2", print_hash_value);
    transparent_crc(p_677->g_450.s3, "p_677->g_450.s3", print_hash_value);
    transparent_crc(p_677->g_450.s4, "p_677->g_450.s4", print_hash_value);
    transparent_crc(p_677->g_450.s5, "p_677->g_450.s5", print_hash_value);
    transparent_crc(p_677->g_450.s6, "p_677->g_450.s6", print_hash_value);
    transparent_crc(p_677->g_450.s7, "p_677->g_450.s7", print_hash_value);
    transparent_crc(p_677->g_506.s0, "p_677->g_506.s0", print_hash_value);
    transparent_crc(p_677->g_506.s1, "p_677->g_506.s1", print_hash_value);
    transparent_crc(p_677->g_506.s2, "p_677->g_506.s2", print_hash_value);
    transparent_crc(p_677->g_506.s3, "p_677->g_506.s3", print_hash_value);
    transparent_crc(p_677->g_506.s4, "p_677->g_506.s4", print_hash_value);
    transparent_crc(p_677->g_506.s5, "p_677->g_506.s5", print_hash_value);
    transparent_crc(p_677->g_506.s6, "p_677->g_506.s6", print_hash_value);
    transparent_crc(p_677->g_506.s7, "p_677->g_506.s7", print_hash_value);
    transparent_crc(p_677->g_508.x, "p_677->g_508.x", print_hash_value);
    transparent_crc(p_677->g_508.y, "p_677->g_508.y", print_hash_value);
    transparent_crc(p_677->g_545.x, "p_677->g_545.x", print_hash_value);
    transparent_crc(p_677->g_545.y, "p_677->g_545.y", print_hash_value);
    transparent_crc(p_677->g_551.s0, "p_677->g_551.s0", print_hash_value);
    transparent_crc(p_677->g_551.s1, "p_677->g_551.s1", print_hash_value);
    transparent_crc(p_677->g_551.s2, "p_677->g_551.s2", print_hash_value);
    transparent_crc(p_677->g_551.s3, "p_677->g_551.s3", print_hash_value);
    transparent_crc(p_677->g_551.s4, "p_677->g_551.s4", print_hash_value);
    transparent_crc(p_677->g_551.s5, "p_677->g_551.s5", print_hash_value);
    transparent_crc(p_677->g_551.s6, "p_677->g_551.s6", print_hash_value);
    transparent_crc(p_677->g_551.s7, "p_677->g_551.s7", print_hash_value);
    transparent_crc(p_677->g_551.s8, "p_677->g_551.s8", print_hash_value);
    transparent_crc(p_677->g_551.s9, "p_677->g_551.s9", print_hash_value);
    transparent_crc(p_677->g_551.sa, "p_677->g_551.sa", print_hash_value);
    transparent_crc(p_677->g_551.sb, "p_677->g_551.sb", print_hash_value);
    transparent_crc(p_677->g_551.sc, "p_677->g_551.sc", print_hash_value);
    transparent_crc(p_677->g_551.sd, "p_677->g_551.sd", print_hash_value);
    transparent_crc(p_677->g_551.se, "p_677->g_551.se", print_hash_value);
    transparent_crc(p_677->g_551.sf, "p_677->g_551.sf", print_hash_value);
    transparent_crc(p_677->g_556.x, "p_677->g_556.x", print_hash_value);
    transparent_crc(p_677->g_556.y, "p_677->g_556.y", print_hash_value);
    transparent_crc(p_677->g_566, "p_677->g_566", print_hash_value);
    transparent_crc(p_677->g_615.x, "p_677->g_615.x", print_hash_value);
    transparent_crc(p_677->g_615.y, "p_677->g_615.y", print_hash_value);
    transparent_crc(p_677->g_615.z, "p_677->g_615.z", print_hash_value);
    transparent_crc(p_677->g_615.w, "p_677->g_615.w", print_hash_value);
    transparent_crc(p_677->g_621.x, "p_677->g_621.x", print_hash_value);
    transparent_crc(p_677->g_621.y, "p_677->g_621.y", print_hash_value);
    transparent_crc(p_677->g_624.x, "p_677->g_624.x", print_hash_value);
    transparent_crc(p_677->g_624.y, "p_677->g_624.y", print_hash_value);
    transparent_crc(p_677->g_637.x, "p_677->g_637.x", print_hash_value);
    transparent_crc(p_677->g_637.y, "p_677->g_637.y", print_hash_value);
    transparent_crc(p_677->g_637.z, "p_677->g_637.z", print_hash_value);
    transparent_crc(p_677->g_637.w, "p_677->g_637.w", print_hash_value);
    transparent_crc(p_677->g_653, "p_677->g_653", print_hash_value);
    transparent_crc(p_677->g_663, "p_677->g_663", print_hash_value);
    transparent_crc(p_677->g_674, "p_677->g_674", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
