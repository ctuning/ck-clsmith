// ---fake_divergence -g 23,40,6 -l 1,10,3
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


// Seed: 77

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
};

union U1 {
   volatile uint8_t  f0;
   volatile int32_t  f1;
   volatile uint32_t  f2;
};

struct S2 {
    int8_t g_17;
    int8_t *g_16;
    int16_t g_40;
    VECTOR(uint64_t, 16) g_52;
    uint16_t g_56[2];
    int16_t g_69;
    int16_t *g_68;
    int64_t g_73[4];
    int32_t * volatile g_74;
    int32_t g_77;
    int32_t * volatile g_76[3];
    int32_t * volatile g_78;
    volatile VECTOR(uint64_t, 8) g_80;
    int8_t **g_91;
    int8_t ***g_90;
    VECTOR(int16_t, 2) g_98;
    volatile VECTOR(uint64_t, 8) g_99;
    int32_t g_111[10][2];
    int16_t **g_116;
    int16_t *** volatile g_115;
    VECTOR(uint64_t, 2) g_125;
    VECTOR(uint16_t, 8) g_131;
    volatile VECTOR(uint8_t, 16) g_138;
    volatile VECTOR(uint8_t, 4) g_139;
    VECTOR(uint8_t, 4) g_141;
    struct S0 g_146;
    VECTOR(uint32_t, 8) g_212;
    VECTOR(uint64_t, 2) g_237;
    int32_t g_244;
    union U1 g_248;
    volatile VECTOR(uint32_t, 16) g_296;
    struct S0 * volatile g_304;
    uint64_t g_306;
    int8_t *** volatile g_309;
    volatile uint64_t *g_312;
    VECTOR(uint8_t, 16) g_325;
    struct S0 *g_331;
    int32_t g_341;
    VECTOR(uint8_t, 4) g_349;
    volatile int8_t g_354;
    union U1 g_357;
    int16_t g_360;
    uint32_t g_375[10][5][5];
    int32_t * volatile g_378[3];
    volatile VECTOR(int8_t, 2) g_408;
    union U1 g_452;
    struct S0 * volatile g_468[6][9][4];
    struct S0 **g_511;
    struct S0 *** volatile g_510;
    VECTOR(uint64_t, 8) g_524;
    volatile VECTOR(int8_t, 16) g_569;
    volatile VECTOR(int16_t, 4) g_588;
    int8_t ***g_594;
    int32_t g_606;
    VECTOR(int8_t, 4) g_612;
    struct S0 ** volatile *g_682;
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
uint64_t  func_1(struct S2 * p_684);
uint8_t  func_6(int8_t * p_7, int8_t * p_8, int64_t  p_9, struct S2 * p_684);
int8_t * func_10(int8_t * p_11, int32_t  p_12, int8_t * p_13, int8_t * p_14, int32_t  p_15, struct S2 * p_684);
uint32_t  func_20(struct S0  p_21, int8_t * p_22, struct S2 * p_684);
struct S0  func_23(int8_t * p_24, int8_t * p_25, int8_t  p_26, int8_t * p_27, int8_t * p_28, struct S2 * p_684);
uint32_t  func_31(int8_t * p_32, struct S2 * p_684);
int8_t * func_33(int64_t  p_34, struct S2 * p_684);
int8_t  func_41(int8_t * p_42, uint32_t  p_43, struct S2 * p_684);
struct S0  func_46(uint64_t  p_47, uint32_t  p_48, uint32_t  p_49, struct S2 * p_684);
uint16_t  func_57(uint32_t  p_58, struct S2 * p_684);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_684->g_16 p_684->g_17 p_684->g_52 p_684->g_56 p_684->g_68 p_684->g_78 p_684->g_77 p_684->g_80 p_684->g_111 p_684->g_115 p_684->g_125 p_684->g_131 p_684->g_138 p_684->g_139 p_684->g_141 p_684->g_98 p_684->g_146 p_684->g_69 p_684->g_91 p_684->g_73 p_684->g_40 p_684->g_212 p_684->g_237 p_684->g_244 p_684->g_248 p_684->g_248.f0 p_684->g_296 p_684->g_304 p_684->g_306 p_684->g_309 p_684->g_312 p_684->g_325 p_684->g_341 p_684->g_349 p_684->g_354 p_684->g_357 p_684->g_360 p_684->g_452 p_684->g_510 p_684->g_524 p_684->g_569 p_684->g_588 p_684->g_99 p_684->g_612 p_684->g_682
 * writes: p_684->g_40 p_684->g_56 p_684->g_69 p_684->g_73 p_684->g_77 p_684->g_90 p_684->g_111 p_684->g_116 p_684->g_17 p_684->g_212 p_684->g_146.f0 p_684->g_141 p_684->g_52 p_684->g_146 p_684->g_306 p_684->g_244 p_684->g_91 p_684->g_331 p_684->g_375 p_684->g_378 p_684->g_74 p_684->g_360 p_684->g_511 p_684->g_349 p_684->g_524 p_684->g_594 p_684->g_131 p_684->g_341
 */
uint64_t  func_1(struct S2 * p_684)
{ /* block id: 4 */
    int8_t l_4 = 0x42L;
    int8_t *l_5 = &l_4;
    VECTOR(uint8_t, 16) l_348 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xE1L), 0xE1L), 0xE1L, 1UL, 0xE1L, (VECTOR(uint8_t, 2))(1UL, 0xE1L), (VECTOR(uint8_t, 2))(1UL, 0xE1L), 1UL, 0xE1L, 1UL, 0xE1L);
    VECTOR(uint8_t, 4) l_350 = (VECTOR(uint8_t, 4))(0xF1L, (VECTOR(uint8_t, 2))(0xF1L, 0xF8L), 0xF8L);
    VECTOR(int8_t, 8) l_353 = (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x7EL), 0x7EL), 0x7EL, (-4L), 0x7EL);
    int32_t l_635 = 0L;
    int8_t l_644 = 0x70L;
    int64_t l_655 = (-7L);
    VECTOR(int32_t, 4) l_656 = (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 1L), 1L);
    VECTOR(uint32_t, 8) l_657 = (VECTOR(uint32_t, 8))(0x127F652FL, (VECTOR(uint32_t, 4))(0x127F652FL, (VECTOR(uint32_t, 2))(0x127F652FL, 1UL), 1UL), 1UL, 0x127F652FL, 1UL);
    VECTOR(int8_t, 4) l_675 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L);
    int i;
    if ((((*l_5) = (safe_rshift_func_uint8_t_u_u(l_4, 0))) == func_6(func_10(p_684->g_16, (safe_lshift_func_int16_t_s_u((p_684->g_17 , ((func_20(func_23(((safe_rshift_func_int16_t_s_s((func_31(func_33(p_684->g_17, p_684), p_684) , ((((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 4))(l_348.sb310)).wzxxyzzxywzyxyxw, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(8UL, 0UL)).yyxyxyxy)).s3713615031646742, ((VECTOR(uint8_t, 16))(p_684->g_349.yyxxywyzxxyywxyz)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_350.zx)).yyxyxxyy)).s4371055605565135))).sd903)).odd)).xyyyxyyyxxyxyyxy))).s90, ((VECTOR(uint8_t, 4))(254UL, ((VECTOR(uint8_t, 2))(0UL, 0xABL)), 0x56L)).even, ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(0UL, 0UL, ((VECTOR(uint8_t, 2))(0xA4L, 253UL)), (p_684->g_111[0][1] < ((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(l_353.s55)), ((VECTOR(int8_t, 4))(0x74L, (-5L), 0x49L, 5L)).even))).xyyx)).w, (4UL < l_348.sd))) && l_350.x)), ((VECTOR(uint8_t, 2))(0x04L)), 0xBAL, 255UL, 255UL, l_348.sd, 0xFBL, p_684->g_80.s7, p_684->g_237.y, 1UL, 0UL)))).scd4e, ((VECTOR(uint8_t, 4))(250UL)), ((VECTOR(uint8_t, 4))(0UL))))).even)).yxxxyxyx, (uint8_t)p_684->g_296.s0))).s64))).yxxx)), p_684->g_237.y, p_684->g_354, 0xE8L, 0x22L)).s0256162107463115, ((VECTOR(uint8_t, 16))(0x9CL)), ((VECTOR(uint8_t, 16))(0x73L))))).se && l_348.s4) && p_684->g_125.y)), l_353.s1)) , l_5), p_684->g_16, p_684->g_131.s6, p_684->g_16, p_684->g_16, p_684), p_684->g_16, p_684) , (void*)0) == p_684->g_16)), 0)), l_5, l_5, l_353.s4, p_684), l_5, l_350.w, p_684)))
    { /* block id: 199 */
        uint64_t *l_617 = &p_684->g_306;
        int8_t ****l_618 = &p_684->g_594;
        int8_t ****l_620 = &p_684->g_90;
        int8_t *****l_619 = &l_620;
        int32_t l_631 = 0x6D07FD8AL;
        int16_t *l_634 = &p_684->g_360;
        int32_t *l_636 = &p_684->g_111[0][0];
        (*l_636) = ((safe_add_func_uint64_t_u_u((0UL & (((VECTOR(int8_t, 4))(p_684->g_612.yxyz)).x & (!(((((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s((&p_684->g_306 == l_617), (l_618 != ((*l_619) = &p_684->g_594)))), ((safe_sub_func_int32_t_s_s((safe_mod_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((l_635 = ((*l_634) = ((*p_684->g_68) |= ((((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(((-1L) <= l_631), (p_684->g_131.s1 = (safe_add_func_int32_t_s_s(l_631, (p_684->g_569.sc >= l_353.s6)))))), 0)) , 0UL) >= 0x6EF36737L) , l_631)))), l_350.z)), l_350.x)), l_631)) > FAKE_DIVERGE(p_684->group_0_offset, get_group_id(0), 10)))) >= p_684->g_524.s4) , &l_634) != &p_684->g_68) | l_353.s5)))), p_684->g_237.y)) ^ 0xDDFDCD39L);
        (*l_636) = l_4;
    }
    else
    { /* block id: 207 */
        int64_t l_641 = 0x343A1D5284CA6400L;
        int32_t l_642 = 0x463147EDL;
        int32_t l_652 = 0x025EAEBEL;
        int32_t l_653 = (-1L);
        int32_t l_654[6];
        int i;
        for (i = 0; i < 6; i++)
            l_654[i] = 0x138432BCL;
        for (p_684->g_341 = (-22); (p_684->g_341 == 24); ++p_684->g_341)
        { /* block id: 210 */
            int32_t *l_639 = &p_684->g_111[3][0];
            int32_t *l_640 = &p_684->g_606;
            int32_t *l_643 = &p_684->g_111[4][1];
            int32_t *l_645 = (void*)0;
            int32_t *l_646 = (void*)0;
            int32_t *l_647 = (void*)0;
            int32_t *l_648 = &p_684->g_111[7][0];
            int32_t *l_649 = &p_684->g_606;
            int32_t *l_650 = &l_642;
            int32_t *l_651[9] = {&p_684->g_77,&p_684->g_77,&p_684->g_77,&p_684->g_77,&p_684->g_77,&p_684->g_77,&p_684->g_77,&p_684->g_77,&p_684->g_77};
            int i;
            --l_657.s3;
            return p_684->g_237.x;
        }
        return l_652;
    }
    for (p_684->g_306 = 0; (p_684->g_306 == 13); p_684->g_306 = safe_add_func_int16_t_s_s(p_684->g_306, 4))
    { /* block id: 218 */
        uint16_t *l_669 = &p_684->g_56[1];
        int16_t **l_672 = &p_684->g_68;
        int32_t l_680 = (-3L);
        int32_t *l_683 = &p_684->g_77;
        (*l_683) = (safe_div_func_int8_t_s_s(((safe_unary_minus_func_uint64_t_u((safe_mod_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u((++(*l_669)), ((l_672 != &p_684->g_68) & (safe_div_func_int32_t_s_s(((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_675.yy)), 6L, 1L)).z & (safe_lshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 4))(((l_680 || (safe_unary_minus_func_int64_t_s(((void*)0 != &p_684->g_360)))) <= (*p_684->g_16)), (p_684->g_139.x & (((p_684->g_682 != (void*)0) <= 8UL) < 0x51L)), 0x21B7L, 0x226BL)).xyzxzxyz, ((VECTOR(int16_t, 8))(0x13F2L)), ((VECTOR(int16_t, 8))((-1L)))))).s6, l_680)), l_675.z))) , l_353.s2), p_684->g_325.sa))))) > l_655), l_675.z)))) || 4L), 9L));
    }
    return l_350.z;
}


/* ------------------------------------------ */
/* 
 * reads : p_684->g_212 p_684->g_569 p_684->g_588 p_684->g_141 p_684->g_99 p_684->g_138 p_684->g_349 p_684->g_111
 * writes: p_684->g_524 p_684->g_594 p_684->g_111
 */
uint8_t  func_6(int8_t * p_7, int8_t * p_8, int64_t  p_9, struct S2 * p_684)
{ /* block id: 191 */
    VECTOR(int8_t, 16) l_564 = (VECTOR(int8_t, 16))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x25L), 0x25L), 0x25L, 4L, 0x25L, (VECTOR(int8_t, 2))(4L, 0x25L), (VECTOR(int8_t, 2))(4L, 0x25L), 4L, 0x25L, 4L, 0x25L);
    struct S0 *l_565 = &p_684->g_146;
    struct S0 *l_566[1];
    uint64_t *l_567[10][6][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    VECTOR(int8_t, 8) l_568 = (VECTOR(int8_t, 8))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 3L), 3L), 3L, (-5L), 3L);
    VECTOR(uint16_t, 16) l_585 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xC6F8L), 0xC6F8L), 0xC6F8L, 1UL, 0xC6F8L, (VECTOR(uint16_t, 2))(1UL, 0xC6F8L), (VECTOR(uint16_t, 2))(1UL, 0xC6F8L), 1UL, 0xC6F8L, 1UL, 0xC6F8L);
    int32_t l_586 = (-1L);
    VECTOR(int16_t, 8) l_587 = (VECTOR(int16_t, 8))(4L, (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 0x6AF9L), 0x6AF9L), 0x6AF9L, 4L, 0x6AF9L);
    int8_t ****l_593[3][2][6] = {{{&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90},{&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90}},{{&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90},{&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90}},{{&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90},{&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90,&p_684->g_90}}};
    int32_t l_595 = 1L;
    int32_t *l_596 = &p_684->g_111[5][1];
    int32_t *l_597 = &l_586;
    int32_t *l_598 = &p_684->g_111[1][0];
    int32_t *l_599 = &p_684->g_77;
    int32_t *l_600 = &l_595;
    int32_t *l_601 = &p_684->g_111[9][0];
    int32_t *l_602 = (void*)0;
    int32_t *l_603 = &p_684->g_77;
    int32_t *l_604 = &l_595;
    int32_t *l_605[6];
    uint8_t l_607 = 0xB4L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_566[i] = &p_684->g_146;
    for (i = 0; i < 6; i++)
        l_605[i] = &l_595;
    (*l_596) ^= (safe_sub_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u((((((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 16))(0x42L, 0x13L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_564.s3956)).lo)), (((l_565 = l_565) == l_566[0]) == (p_684->g_524.s0 = p_684->g_212.s4)), ((VECTOR(int8_t, 2))(l_568.s04)).lo, (-1L), 0L, 1L, 0x6EL, 0x3DL, ((VECTOR(int8_t, 4))(0x4EL, (-3L), 0x24L, 1L)), 0x7FL)).even, ((VECTOR(int8_t, 8))(p_684->g_569.sf0b8d1c6))))).hi, (int8_t)(safe_rshift_func_uint16_t_u_s(((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_684->local_1_offset, get_local_id(1), 10), (safe_unary_minus_func_uint32_t_u(0x8F635866L)))) && (((safe_lshift_func_int16_t_s_u((safe_mod_func_int32_t_s_s(l_568.s5, (safe_sub_func_int32_t_s_s(1L, (safe_lshift_func_uint8_t_u_s((((l_595 &= (safe_mod_func_uint64_t_u_u(((((VECTOR(uint16_t, 16))(l_585.s7b0919d2f8d7abfb)).s7 != (l_586 , ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 8))(l_587.s73621676)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(p_684->g_588.xzxx)))).yyyxyyzy))).s76, (int16_t)((((~(((~((safe_lshift_func_int16_t_s_s(l_585.s5, ((safe_add_func_uint8_t_u_u(((p_684->g_594 = &p_684->g_91) == (void*)0), l_585.s7)) >= l_586))) , 1UL)) == l_568.s5) > p_9)) <= l_587.s6) | 6L) & p_684->g_141.y)))).yxyxxxxxyyyxyxxx)).hi)).s6)) , 0xB8DA57372766B81BL), p_9))) , l_587.s6) == 4294967288UL), 0)))))), 6)) | 0x05L) , p_684->g_99.s4)), l_586))))), (int8_t)l_595))).y <= p_9) && p_684->g_138.s3) ^ p_9), l_568.s5)) ^ p_684->g_349.z), p_9)), p_9)), 0x5AL));
    ++l_607;
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_684->g_510 p_684->g_349 p_684->g_524 p_684->g_312 p_684->g_69 p_684->g_40
 * writes: p_684->g_511 p_684->g_349 p_684->g_69 p_684->g_40
 */
int8_t * func_10(int8_t * p_11, int32_t  p_12, int8_t * p_13, int8_t * p_14, int32_t  p_15, struct S2 * p_684)
{ /* block id: 164 */
    struct S0 **l_509 = &p_684->g_331;
    int32_t l_518 = 6L;
    int32_t l_539 = 0x28E888D9L;
    uint8_t l_540 = 0UL;
    int32_t l_551 = 0x5130F7B4L;
    int32_t l_552[5][9][4] = {{{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)}},{{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)}},{{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)}},{{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)}},{{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)},{(-1L),0x32920495L,0L,(-4L)}}};
    int i, j, k;
    (*p_684->g_510) = l_509;
    for (p_15 = 0; (p_15 != 14); p_15++)
    { /* block id: 168 */
        uint8_t *l_519 = (void*)0;
        uint64_t *l_527 = (void*)0;
        uint64_t *l_528 = (void*)0;
        uint64_t *l_529 = (void*)0;
        uint64_t *l_530 = (void*)0;
        uint64_t *l_531 = (void*)0;
        int32_t l_532[7][5] = {{0L,0x6EF5BCB8L,0x095E9CFFL,(-5L),0x095E9CFFL},{0L,0x6EF5BCB8L,0x095E9CFFL,(-5L),0x095E9CFFL},{0L,0x6EF5BCB8L,0x095E9CFFL,(-5L),0x095E9CFFL},{0L,0x6EF5BCB8L,0x095E9CFFL,(-5L),0x095E9CFFL},{0L,0x6EF5BCB8L,0x095E9CFFL,(-5L),0x095E9CFFL},{0L,0x6EF5BCB8L,0x095E9CFFL,(-5L),0x095E9CFFL},{0L,0x6EF5BCB8L,0x095E9CFFL,(-5L),0x095E9CFFL}};
        uint64_t *l_533[6][8][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        int32_t *l_538[5];
        uint32_t l_553 = 0x85243FD9L;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_538[i] = (void*)0;
        if (((((((p_684->g_349.x &= (safe_rshift_func_uint8_t_u_u(l_518, 7))) >= (-1L)) & (safe_mod_func_int16_t_s_s((((safe_sub_func_int32_t_s_s((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(p_684->g_524.s7342)).lo)).lo , (safe_sub_func_uint64_t_u_u((l_532[6][0] = 0x98E227741655B606L), ((VECTOR(uint64_t, 2))(0xE285A9A7C15D36D8L, 18446744073709551615UL)).even))), (p_684->g_312 != l_533[4][2][1]))) > (safe_sub_func_uint16_t_u_u(l_518, GROUP_DIVERGE(0, 1)))) && (l_539 &= (safe_add_func_uint64_t_u_u((&p_684->g_91 == &p_684->g_91), l_532[6][0])))), 1L))) & l_540) & p_12) | 0L))
        { /* block id: 172 */
            for (p_684->g_69 = 0; (p_684->g_69 > (-17)); p_684->g_69 = safe_sub_func_int64_t_s_s(p_684->g_69, 8))
            { /* block id: 175 */
                if (p_12)
                    break;
            }
        }
        else
        { /* block id: 178 */
            int16_t l_545 = 0x0D39L;
            int32_t l_546 = 0L;
            int32_t l_547 = 0x6C6FEE97L;
            int32_t l_548 = (-1L);
            int32_t l_549 = 0x49066CDBL;
            VECTOR(int32_t, 8) l_550 = (VECTOR(int32_t, 8))(0x631BFDAAL, (VECTOR(int32_t, 4))(0x631BFDAAL, (VECTOR(int32_t, 2))(0x631BFDAAL, 0x3431EB5BL), 0x3431EB5BL), 0x3431EB5BL, 0x631BFDAAL, 0x3431EB5BL);
            int i;
            for (p_684->g_40 = 0; (p_684->g_40 != (-4)); p_684->g_40--)
            { /* block id: 181 */
                if (l_545)
                    break;
            }
            l_553--;
            if (l_551)
                break;
            l_548 &= (p_15 | FAKE_DIVERGE(p_684->local_2_offset, get_local_id(2), 10));
        }
        return p_14;
    }
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_684->g_40 p_684->g_125 p_684->g_244 p_684->g_77 p_684->g_452 p_684->g_98 p_684->g_111 p_684->g_16 p_684->g_17 p_684->g_78 p_684->g_360 p_684->g_212
 * writes: p_684->g_40 p_684->g_244 p_684->g_146 p_684->g_378 p_684->g_77 p_684->g_74 p_684->g_56 p_684->g_360 p_684->g_111
 */
uint32_t  func_20(struct S0  p_21, int8_t * p_22, struct S2 * p_684)
{ /* block id: 115 */
    uint64_t l_389[4][8] = {{0xC055AC6CE3A1D830L,8UL,8UL,0xC055AC6CE3A1D830L,0xC055AC6CE3A1D830L,8UL,8UL,0xC055AC6CE3A1D830L},{0xC055AC6CE3A1D830L,8UL,8UL,0xC055AC6CE3A1D830L,0xC055AC6CE3A1D830L,8UL,8UL,0xC055AC6CE3A1D830L},{0xC055AC6CE3A1D830L,8UL,8UL,0xC055AC6CE3A1D830L,0xC055AC6CE3A1D830L,8UL,8UL,0xC055AC6CE3A1D830L},{0xC055AC6CE3A1D830L,8UL,8UL,0xC055AC6CE3A1D830L,0xC055AC6CE3A1D830L,8UL,8UL,0xC055AC6CE3A1D830L}};
    VECTOR(int16_t, 2) l_392 = (VECTOR(int16_t, 2))(0x6006L, 5L);
    int16_t ***l_397 = &p_684->g_116;
    int16_t ***l_399 = &p_684->g_116;
    uint16_t *l_423 = &p_684->g_56[1];
    int32_t l_425 = 5L;
    int32_t *l_428 = &p_684->g_244;
    int32_t *l_429 = &p_684->g_77;
    int32_t *l_430 = &p_684->g_77;
    int32_t *l_431 = &p_684->g_111[5][1];
    int32_t *l_432 = &p_684->g_111[6][1];
    int32_t *l_433 = &p_684->g_111[0][0];
    int32_t *l_434 = &p_684->g_77;
    int32_t *l_435 = &p_684->g_111[6][0];
    int32_t *l_436[7][7][4] = {{{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425}},{{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425}},{{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425}},{{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425}},{{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425}},{{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425}},{{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425},{&l_425,&p_684->g_244,&p_684->g_111[7][0],&l_425}}};
    int32_t l_437 = 0x674276C7L;
    uint16_t l_438 = 0x98A9L;
    int8_t *l_461 = &p_684->g_17;
    int64_t l_467 = 0x305023B0A0897EA1L;
    int32_t l_485 = 0x7EE2F9BFL;
    uint32_t l_504[6] = {0xDEB85D08L,0xDEB85D08L,0xDEB85D08L,0xDEB85D08L,0xDEB85D08L,0xDEB85D08L};
    int i, j, k;
    for (p_684->g_40 = 22; (p_684->g_40 >= 20); p_684->g_40 = safe_sub_func_uint64_t_u_u(p_684->g_40, 1))
    { /* block id: 118 */
        int32_t *l_382 = (void*)0;
        int32_t *l_383 = &p_684->g_111[5][1];
        int32_t *l_384 = &p_684->g_111[6][1];
        int32_t *l_385 = (void*)0;
        int32_t l_386[3];
        int32_t *l_387 = (void*)0;
        int32_t *l_388 = (void*)0;
        int16_t ****l_398 = &l_397;
        uint64_t *l_415 = (void*)0;
        uint64_t *l_416 = &l_389[0][4];
        uint32_t *l_424[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        struct S0 *l_426 = &p_684->g_146;
        int32_t **l_427 = &l_385;
        int i;
        for (i = 0; i < 3; i++)
            l_386[i] = (-7L);
        ++l_389[0][4];
        p_684->g_244 |= ((p_21.f0 == ((((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 2))(l_392.yy)).yxxxxxxx, (int16_t)((((safe_sub_func_uint32_t_u_u((safe_mod_func_int64_t_s_s(p_21.f0, FAKE_DIVERGE(p_684->global_2_offset, get_global_id(2), 10))), (((*l_398) = l_397) == l_399))) | (safe_add_func_int16_t_s_s((((safe_rshift_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(p_684->g_408.xyxxyxxy)))).s2, 0x40L)), (safe_add_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x65E8L, 0x2829L)), 2UL, 65535UL)).y, (((((VECTOR(int16_t, 4))(0x572FL, ((l_425 = (((*l_416) |= 0UL) | ((safe_sub_func_uint32_t_u_u(l_392.x, (GROUP_DIVERGE(1, 1) == (safe_add_func_int64_t_s_s((*l_383), (((safe_lshift_func_int8_t_s_u(((+(~(l_423 == &p_684->g_56[1]))) < 0x450D06786BF23B99L), p_21.f0)) , p_684->g_98.y) <= p_684->g_141.y)))))) <= l_392.x))) <= p_21.f0), 0x76F9L, (-7L))).y > p_21.f0) < p_684->g_341) | p_684->g_98.y))) ^ p_684->g_125.x) < (-2L)), p_21.f0)) , FAKE_DIVERGE(p_684->group_0_offset, get_group_id(0), 10)), p_21.f0)))) ^ (*p_22)), 12)) | 0UL) || 3L), l_392.x))) == l_392.x) || 0x1235D882L)))), 1L, 0L, (*l_384), 0x359CL, 0x5CEDL, ((VECTOR(int16_t, 2))(0x6D00L)), 1L)), ((VECTOR(int16_t, 16))(0x1E79L))))).lo)).lo, ((VECTOR(int16_t, 4))((-9L)))))).z >= p_684->g_40) > p_21.f0)) > p_684->g_125.x);
        (*l_426) = p_21;
        p_684->g_378[0] = ((*l_427) = &l_425);
    }
    --l_438;
    for (p_684->g_77 = 0; (p_684->g_77 <= 6); p_684->g_77 = safe_add_func_uint32_t_u_u(p_684->g_77, 3))
    { /* block id: 131 */
        uint16_t l_466[6] = {0x8940L,0x8940L,0x8940L,0x8940L,0x8940L,0x8940L};
        int32_t l_486 = (-1L);
        int8_t *l_487 = &p_684->g_146.f0;
        int32_t l_488 = (-8L);
        int8_t l_489 = (-7L);
        int32_t l_490 = 0L;
        int32_t l_491 = (-3L);
        int32_t l_492 = 0L;
        int32_t l_493 = 0x4F54CD4FL;
        int32_t l_494 = (-2L);
        int32_t l_495 = 0x059D558FL;
        int32_t l_496 = (-6L);
        int32_t l_497 = 0x34506EF2L;
        int32_t l_498 = 0x6821A35EL;
        int32_t l_499 = 0x5FAF835EL;
        int32_t l_500 = 0x636299D5L;
        int32_t l_501 = 0L;
        VECTOR(int32_t, 8) l_502 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L));
        int16_t l_503 = (-4L);
        int i;
        for (p_684->g_244 = 9; (p_684->g_244 >= 21); p_684->g_244 = safe_add_func_int64_t_s_s(p_684->g_244, 1))
        { /* block id: 134 */
            int32_t **l_445[8][6][1] = {{{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]}},{{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]}},{{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]}},{{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]}},{{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]}},{{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]}},{{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]}},{{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]},{&l_436[5][6][2]}}};
            int8_t **l_455 = (void*)0;
            int8_t *l_457 = &p_684->g_17;
            int8_t **l_456 = &l_457;
            int8_t *l_459 = &p_684->g_17;
            int8_t **l_458 = &l_459;
            int8_t **l_460[2];
            struct S0 l_469[2][4][9] = {{{{5L},{-1L},{-1L},{0x6FL},{-1L},{-1L},{5L},{0x2CL},{0x56L}},{{5L},{-1L},{-1L},{0x6FL},{-1L},{-1L},{5L},{0x2CL},{0x56L}},{{5L},{-1L},{-1L},{0x6FL},{-1L},{-1L},{5L},{0x2CL},{0x56L}},{{5L},{-1L},{-1L},{0x6FL},{-1L},{-1L},{5L},{0x2CL},{0x56L}}},{{{5L},{-1L},{-1L},{0x6FL},{-1L},{-1L},{5L},{0x2CL},{0x56L}},{{5L},{-1L},{-1L},{0x6FL},{-1L},{-1L},{5L},{0x2CL},{0x56L}},{{5L},{-1L},{-1L},{0x6FL},{-1L},{-1L},{5L},{0x2CL},{0x56L}},{{5L},{-1L},{-1L},{0x6FL},{-1L},{-1L},{5L},{0x2CL},{0x56L}}}};
            uint16_t *l_480 = (void*)0;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_460[i] = (void*)0;
            p_684->g_74 = &p_684->g_111[6][1];
            if (((((safe_mul_func_uint16_t_u_u(((void*)0 == &p_684->g_68), (safe_mul_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(((p_684->g_452 , ((safe_rshift_func_uint16_t_u_s(0xC018L, 15)) || ((p_22 = ((*l_458) = ((*l_456) = (void*)0))) != l_461))) ^ ((((p_21.f0 & (p_684->g_98.x <= ((safe_rshift_func_uint16_t_u_u(((*l_423) = (safe_div_func_int64_t_s_s((0x76EF841CL > p_684->g_125.y), 6UL))), l_466[5])) >= p_684->g_111[6][1]))) , (*l_435)) != 0x5B5BCAB6L) ^ 0x34L)), (*p_684->g_16))), l_466[5])))) || l_467) | FAKE_DIVERGE(p_684->global_0_offset, get_global_id(0), 10)) , l_466[5]))
            { /* block id: 140 */
                int64_t l_472 = 0L;
                int32_t l_473 = 0x6E0DDC29L;
                int32_t l_474 = (-8L);
                if ((*p_684->g_78))
                    break;
                l_469[1][2][7] = p_21;
                for (p_684->g_360 = 17; (p_684->g_360 != (-30)); p_684->g_360--)
                { /* block id: 145 */
                    uint64_t l_475 = 0x0068A6B85538C8D3L;
                    l_475--;
                }
                (*l_432) &= l_472;
            }
            else
            { /* block id: 149 */
                l_469[1][2][8] = p_21;
                l_486 |= ((*l_431) = (p_21.f0 < (((&p_684->g_378[0] == (p_684->g_212.s7 , ((safe_lshift_func_int8_t_s_s(((l_480 == (void*)0) , ((p_22 == (void*)0) < (safe_sub_func_uint64_t_u_u((((safe_lshift_func_uint8_t_u_u(p_21.f0, (*l_430))) >= p_21.f0) < GROUP_DIVERGE(0, 1)), l_485)))), (*p_684->g_16))) , (void*)0))) == p_21.f0) < 0x3C41C267L)));
                (*l_432) = ((void*)0 == l_487);
                (*l_435) = 7L;
            }
            (*l_432) = (*l_430);
        }
        l_504[5]++;
        (*l_435) ^= (safe_add_func_int32_t_s_s(0x64790B43L, l_466[5]));
        if ((*p_684->g_78))
            continue;
    }
    (*l_431) |= (*l_430);
    return p_21.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_684->g_357 p_684->g_360 p_684->g_73 p_684->g_68 p_684->g_69 p_684->g_80 p_684->g_78 p_684->g_304 p_684->g_146
 * writes: p_684->g_375 p_684->g_212 p_684->g_77
 */
struct S0  func_23(int8_t * p_24, int8_t * p_25, int8_t  p_26, int8_t * p_27, int8_t * p_28, struct S2 * p_684)
{ /* block id: 109 */
    int16_t **l_368 = &p_684->g_68;
    VECTOR(uint64_t, 4) l_371 = (VECTOR(uint64_t, 4))(0x0A6F1ECEA6689E25L, (VECTOR(uint64_t, 2))(0x0A6F1ECEA6689E25L, 0x6A8EDB6B819464EEL), 0x6A8EDB6B819464EEL);
    int32_t l_372 = (-1L);
    uint32_t *l_373 = (void*)0;
    uint32_t *l_374 = &p_684->g_375[2][2][2];
    uint32_t *l_376 = (void*)0;
    uint32_t *l_377[1][6];
    int32_t *l_379[4] = {&p_684->g_111[1][1],&p_684->g_111[1][1],&p_684->g_111[1][1],&p_684->g_111[1][1]};
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
            l_377[i][j] = (void*)0;
    }
    (*p_684->g_78) = ((safe_lshift_func_uint8_t_u_s(((p_684->g_357 , (p_684->g_212.s6 = (safe_mul_func_uint8_t_u_u(p_684->g_360, (safe_unary_minus_func_uint64_t_u(((safe_add_func_int16_t_s_s(((safe_mod_func_int64_t_s_s(p_684->g_73[3], (safe_rshift_func_uint16_t_u_s(((void*)0 != l_368), (safe_sub_func_int16_t_s_s(4L, ((((*l_374) = (((l_372 = (!(((VECTOR(uint64_t, 16))(l_371.zyzwywzzyxyywzwz)).sa == 0x57B2FF83F7DA681AL))) ^ (l_371.w , (l_371.w <= l_371.x))) | p_26)) , 1L) ^ l_371.y))))))) & l_371.w), (*p_684->g_68))) > l_371.w))))))) || 0x62AC34DFL), 4)) || p_684->g_80.s2);
    return (*p_684->g_304);
}


/* ------------------------------------------ */
/* 
 * reads : p_684->g_52 p_684->g_56 p_684->g_68 p_684->g_16 p_684->g_17 p_684->g_78 p_684->g_77 p_684->g_80 p_684->g_111 p_684->g_115 p_684->g_125 p_684->g_131 p_684->g_138 p_684->g_139 p_684->g_141 p_684->g_98 p_684->g_146 p_684->g_69 p_684->g_91 p_684->g_73 p_684->g_40 p_684->g_212 p_684->g_248.f0 p_684->g_237 p_684->g_296 p_684->g_304 p_684->g_306 p_684->g_244 p_684->g_309 p_684->g_248 p_684->g_312 p_684->g_325 p_684->g_341
 * writes: p_684->g_40 p_684->g_56 p_684->g_69 p_684->g_73 p_684->g_77 p_684->g_90 p_684->g_111 p_684->g_116 p_684->g_17 p_684->g_212 p_684->g_141 p_684->g_52 p_684->g_146 p_684->g_306 p_684->g_244 p_684->g_91 p_684->g_331
 */
uint32_t  func_31(int8_t * p_32, struct S2 * p_684)
{ /* block id: 8 */
    int16_t *l_39 = &p_684->g_40;
    int8_t *l_45[3][10] = {{(void*)0,&p_684->g_17,(void*)0,&p_684->g_17,(void*)0,(void*)0,&p_684->g_17,(void*)0,&p_684->g_17,(void*)0},{(void*)0,&p_684->g_17,(void*)0,&p_684->g_17,(void*)0,(void*)0,&p_684->g_17,(void*)0,&p_684->g_17,(void*)0},{(void*)0,&p_684->g_17,(void*)0,&p_684->g_17,(void*)0,(void*)0,&p_684->g_17,(void*)0,&p_684->g_17,(void*)0}};
    int8_t **l_44 = &l_45[0][6];
    int32_t l_53 = 0x2E2AD21DL;
    struct S0 l_54 = {0x37L};
    uint16_t *l_55 = &p_684->g_56[1];
    VECTOR(uint64_t, 4) l_63 = (VECTOR(uint64_t, 4))(0xF2B6367AFFF16CE6L, (VECTOR(uint64_t, 2))(0xF2B6367AFFF16CE6L, 1UL), 1UL);
    VECTOR(uint32_t, 4) l_161 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xE28627D2L), 0xE28627D2L);
    int32_t l_173 = (-1L);
    int32_t l_175 = 0x67FF8EE6L;
    int32_t l_178 = 0x2968D202L;
    int32_t l_179 = (-2L);
    int32_t l_181 = 6L;
    int32_t l_182 = 0L;
    int32_t l_185 = 0x3261A169L;
    int32_t l_187 = (-3L);
    int32_t l_188 = (-4L);
    int32_t l_189 = 0x00CD1502L;
    VECTOR(uint64_t, 4) l_236 = (VECTOR(uint64_t, 4))(0xFE1010FD701A3D08L, (VECTOR(uint64_t, 2))(0xFE1010FD701A3D08L, 1UL), 1UL);
    VECTOR(int8_t, 16) l_257 = (VECTOR(int8_t, 16))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x44L), 0x44L), 0x44L, (-4L), 0x44L, (VECTOR(int8_t, 2))((-4L), 0x44L), (VECTOR(int8_t, 2))((-4L), 0x44L), (-4L), 0x44L, (-4L), 0x44L);
    uint8_t l_285 = 0UL;
    uint64_t *l_302 = (void*)0;
    int32_t l_303[7] = {9L,9L,9L,9L,9L,9L,9L};
    int32_t *l_347 = &l_187;
    int i, j;
    if (((safe_div_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((*l_39) = 0x431EL), (~(((*p_32) = ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 8))((-1L), (func_41(((*l_44) = p_32), ((func_46((((*l_55) = (safe_add_func_int32_t_s_s((((VECTOR(uint64_t, 8))(p_684->g_52.s879096a9)).s4 == l_53), (l_54 , l_53)))) || (func_57(((!((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 8))((safe_add_func_uint32_t_u_u((((((void*)0 == &p_684->g_56[1]) && ((VECTOR(uint64_t, 2))(l_63.xx)).lo) == 5UL) | 0x33L), 0x5C2A3DA7L)), 0UL, ((VECTOR(uint8_t, 2))(0UL)), 0x10L, 5UL, 4UL, 0xA9L)).s1141301506131232, ((VECTOR(uint8_t, 16))(252UL))))).s3e85)).yxxwwxyxxzyyzwyx, ((VECTOR(uint16_t, 16))(0UL))))).s5, l_63.z)) <= 1UL)) && l_63.x), p_684) != 0L)), p_684->g_52.s3, p_684->g_17, p_684) , (*p_684->g_68)) < 0x20F7L), p_684) < l_54.f0), (*p_32), 1L, ((VECTOR(int8_t, 4))(0L)))).s77, ((VECTOR(int8_t, 2))(0x20L)), ((VECTOR(int8_t, 2))(8L))))).hi) | 250UL)))), l_53)) & l_54.f0))
    { /* block id: 42 */
        uint16_t l_147[4] = {9UL,9UL,9UL,9UL};
        int i;
        return l_147[0];
    }
    else
    { /* block id: 44 */
        VECTOR(int8_t, 2) l_148 = (VECTOR(int8_t, 2))(0x66L, 1L);
        int64_t *l_163 = &p_684->g_73[3];
        int64_t **l_162 = &l_163;
        int32_t l_177 = 0L;
        int32_t l_180 = 0L;
        int32_t l_183 = 0x2B7FD2DEL;
        int32_t l_184 = 0x4E4574D6L;
        int32_t l_186[6];
        uint8_t l_190 = 0xBBL;
        VECTOR(int16_t, 2) l_199 = (VECTOR(int16_t, 2))((-7L), 0x17CAL);
        uint32_t l_226[3][2];
        VECTOR(uint64_t, 8) l_235 = (VECTOR(uint64_t, 8))(0x89B7E73054497D97L, (VECTOR(uint64_t, 4))(0x89B7E73054497D97L, (VECTOR(uint64_t, 2))(0x89B7E73054497D97L, 7UL), 7UL), 7UL, 0x89B7E73054497D97L, 7UL);
        uint64_t l_249 = 18446744073709551613UL;
        VECTOR(int64_t, 8) l_276 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x25CBCEE99220F0BBL), 0x25CBCEE99220F0BBL), 0x25CBCEE99220F0BBL, 1L, 0x25CBCEE99220F0BBL);
        VECTOR(int16_t, 4) l_311 = (VECTOR(int16_t, 4))(0x1AEDL, (VECTOR(int16_t, 2))(0x1AEDL, 0x295EL), 0x295EL);
        struct S0 *l_327 = &l_54;
        int i, j;
        for (i = 0; i < 6; i++)
            l_186[i] = (-1L);
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_226[i][j] = 0xFAFC6B1EL;
        }
        if ((((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 2))(l_148.xy)).yxyyxxxy))).s5 == ((((*l_55)--) <= l_148.x) < ((&p_684->g_116 != (void*)0) & (((safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((**p_684->g_91), ((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u((((void*)0 == (*l_44)) != l_53), 4)), (safe_add_func_int16_t_s_s((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_161.xx)).yyxyyyxyxyyyxyxx)).se & ((((*l_162) = (void*)0) == &p_684->g_73[3]) & p_684->g_73[2])), l_161.z)))) , l_63.z))), 1)) >= GROUP_DIVERGE(0, 1)) , p_684->g_125.y)))))
        { /* block id: 47 */
            int64_t l_165 = 0x149DF445C6D8CF72L;
            int32_t l_172 = 0x71E60DA4L;
            int32_t l_174 = 0x021DCC64L;
            int32_t l_176[2][7] = {{0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL},{0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL,0x5F3CC42DL}};
            int16_t **l_222 = &l_39;
            VECTOR(uint64_t, 2) l_234 = (VECTOR(uint64_t, 2))(0UL, 0UL);
            VECTOR(uint64_t, 8) l_238 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551613UL), 18446744073709551613UL), 18446744073709551613UL, 1UL, 18446744073709551613UL);
            VECTOR(uint32_t, 16) l_239 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x86E6CA25L), 0x86E6CA25L), 0x86E6CA25L, 1UL, 0x86E6CA25L, (VECTOR(uint32_t, 2))(1UL, 0x86E6CA25L), (VECTOR(uint32_t, 2))(1UL, 0x86E6CA25L), 1UL, 0x86E6CA25L, 1UL, 0x86E6CA25L);
            VECTOR(uint16_t, 2) l_246 = (VECTOR(uint16_t, 2))(0xEF87L, 0UL);
            int i, j;
            if ((l_148.y > 0x9D48E565L))
            { /* block id: 48 */
                int32_t *l_164 = &p_684->g_111[6][1];
                int32_t *l_166 = &p_684->g_77;
                int32_t *l_167 = (void*)0;
                int32_t *l_168 = &p_684->g_111[0][1];
                int32_t *l_169 = &p_684->g_111[7][0];
                int32_t *l_170 = &p_684->g_111[6][1];
                int32_t *l_171[6];
                uint32_t l_193 = 0xDFB89BC2L;
                int i;
                for (i = 0; i < 6; i++)
                    l_171[i] = &p_684->g_111[3][0];
                --l_190;
                --l_193;
            }
            else
            { /* block id: 51 */
                int32_t *l_202[2];
                VECTOR(uint64_t, 4) l_209 = (VECTOR(uint64_t, 4))(0x5FC61F8F8EE2CA6DL, (VECTOR(uint64_t, 2))(0x5FC61F8F8EE2CA6DL, 18446744073709551615UL), 18446744073709551615UL);
                int64_t *l_224 = &p_684->g_73[0];
                VECTOR(uint64_t, 8) l_233 = (VECTOR(uint64_t, 8))(4UL, (VECTOR(uint64_t, 4))(4UL, (VECTOR(uint64_t, 2))(4UL, 3UL), 3UL), 3UL, 4UL, 3UL);
                uint8_t l_283 = 0xC1L;
                int i;
                for (i = 0; i < 2; i++)
                    l_202[i] = &l_186[0];
lbl_284:
                if ((safe_unary_minus_func_int16_t_s(((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_199.yxyyyxxx)).hi)).w, (0x29L >= (func_46(((safe_add_func_uint64_t_u_u((&l_187 == (l_176[0][1] , l_202[1])), (l_190 || 0x73L))) & (safe_lshift_func_int8_t_s_s((p_684->g_40 , (safe_lshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s((((VECTOR(uint64_t, 2))(l_209.zz)).odd && (safe_mod_func_int32_t_s_s((*p_684->g_78), ((VECTOR(uint32_t, 16))(p_684->g_212.s7476640036573017)).sb))), (l_63.x , 6UL))), l_180))), 4))), l_161.y, p_684->g_141.z, p_684) , 1UL)))) & 0x56E0L))))
                { /* block id: 52 */
                    VECTOR(int8_t, 2) l_215 = (VECTOR(int8_t, 2))((-1L), (-1L));
                    uint32_t *l_220 = (void*)0;
                    uint32_t *l_221[4][10][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                    int16_t ***l_223[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_225 = 1L;
                    int i, j, k;
                    l_225 |= ((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_215.yxyxyyxy)).s0, (safe_mod_func_int8_t_s_s(((safe_div_func_uint16_t_u_u(((p_684->g_212.s4 ^= p_684->g_131.s5) == (((*p_684->g_115) = l_222) == &l_39)), (((l_180 , l_224) != l_224) | ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))((-7L), 0x6630L)))))).lo))) || (-2L)), ((GROUP_DIVERGE(1, 1) , (l_215.x < l_172)) , l_176[0][3]))))) , l_199.x);
                    l_226[0][1]--;
                }
                else
                { /* block id: 57 */
                    uint8_t *l_245 = &l_190;
                    int32_t l_247 = 0x04F28E09L;
                    l_189 = (safe_mod_func_uint8_t_u_u(l_189, ((safe_add_func_int32_t_s_s((l_249 = (&l_222 != (((((VECTOR(uint64_t, 2))(l_233.s54)).hi == ((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 2))(l_234.xx)).xxyyxyxyyxyyxyyy, ((VECTOR(uint64_t, 8))(l_235.s57041252)).s3732360017253451))), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_236.wzxy)).yzzwzyxw)).s2320752442250304, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(18446744073709551615UL, 0x350E1C6C223FEB27L)), 1UL, 0x7F54339D3A471546L)).yxzxwzwyyyyzywyw, ((VECTOR(uint64_t, 4))(p_684->g_237.xxxx)).zyyzywwzzxwzxxyy))).lo)).s5450323640405674))).s57, ((VECTOR(uint64_t, 2))(l_238.s23))))).hi) == (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_239.sec3faa92)), (0x1E4C795E8D71B815L && (~(safe_mul_func_uint16_t_u_u((l_239.s6 & ((((safe_div_func_uint8_t_u_u((((((*l_245) &= ((p_684->g_244 >= ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x304DL, 0x220BL)), 0x434BL, (-8L))).w) , 1UL)) != (p_684->g_146.f0 = ((*p_684->g_16) &= 9L))) , (((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 2))(0x7A2BL, 1UL)).yxyxxyxx, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(0xB535L, 0x03E5L, ((VECTOR(uint16_t, 2))(l_246.yx)), ((VECTOR(uint16_t, 4))(l_187, ((VECTOR(uint16_t, 2))(0x8CE6L)), 65532UL))))))))).s5052221041165674, ((VECTOR(uint16_t, 16))(0xD293L))))).s83)).xxxy)).zwxzwzyxwwzzxzxw)).se & l_235.s0) || p_684->g_139.w) , 0UL)) != l_161.w), l_247)) , p_684->g_248) , 2L) || l_148.y)), 0x3167L)))), ((VECTOR(uint32_t, 2))(4294967286UL)), p_684->g_244, 0x977314DBL, p_684->g_212.s4, 0UL, 0x837C6D80L)).sc || FAKE_DIVERGE(p_684->group_1_offset, get_group_id(1), 10))) , &p_684->g_116))), 4294967288UL)) , (**p_684->g_91))));
                    l_174 |= (safe_sub_func_uint16_t_u_u(l_249, p_684->g_248.f0));
                }
                l_176[1][5] = ((*p_684->g_16) > FAKE_DIVERGE(p_684->global_2_offset, get_global_id(2), 10));
                for (l_182 = 1; (l_182 > 19); ++l_182)
                { /* block id: 68 */
                    VECTOR(int8_t, 2) l_256 = (VECTOR(int8_t, 2))(0L, 0x2FL);
                    uint8_t *l_260 = (void*)0;
                    uint64_t *l_269 = (void*)0;
                    uint64_t *l_270 = (void*)0;
                    uint64_t *l_271 = (void*)0;
                    uint64_t *l_272 = (void*)0;
                    uint64_t *l_273 = (void*)0;
                    int i;
                    p_684->g_111[6][1] |= (l_184 ^= ((safe_div_func_uint8_t_u_u(247UL, 1UL)) | (1L && (((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 16))(l_256.yxxxyyxxxyxyyxyx)).s7b90, ((VECTOR(int8_t, 8))(l_257.s88de925b)).even))).y , ((safe_div_func_uint8_t_u_u((--p_684->g_141.z), ((safe_sub_func_int8_t_s_s((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_684->group_0_offset, get_group_id(0), 10), (safe_add_func_uint16_t_u_u(((*l_55) &= ((--p_684->g_52.s1) > ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(0x2BA12FF2C9FE8F8BL, 0L)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(l_276.s00)).xxyxyyyx)).s17))).yyyx)).w)), GROUP_DIVERGE(1, 1))))), GROUP_DIVERGE(1, 1))) & (((p_684->g_17 , (+(safe_mul_func_int8_t_s_s((*p_32), (safe_sub_func_uint16_t_u_u(((p_684->g_146 , (((l_148.x , (((safe_add_func_uint16_t_u_u(l_256.y, (l_187 = (~((*l_39) &= (((((p_684->g_131.s5 != (*p_684->g_78)) > 0x49E45B5AL) ^ l_165) || 5L) && l_175)))))) <= FAKE_DIVERGE(p_684->global_0_offset, get_global_id(0), 10)) || l_283)) > p_684->g_237.x) & FAKE_DIVERGE(p_684->group_1_offset, get_group_id(1), 10))) & l_180), 0x18C5L)))))) == 0L) < (*p_32))))) ^ 0x0B66F2D236859324L)))));
                    if (l_175)
                        goto lbl_284;
                    l_174 = l_285;
                    (*p_684->g_304) = ((safe_sub_func_uint64_t_u_u(0x8E57DCD74454D525L, ((safe_sub_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s((safe_rshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(((((l_303[5] |= ((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(p_684->g_296.s0688)))).x , (p_684->g_237.y & (safe_add_func_int16_t_s_s((((void*)0 != &p_684->g_90) && (0x5EE9L < l_239.s3)), (safe_unary_minus_func_uint64_t_u(FAKE_DIVERGE(p_684->group_0_offset, get_group_id(0), 10))))))) ^ (+((((*l_39) = ((*p_684->g_68) |= 0x3866L)) & (0x0DCBL >= (l_302 == (void*)0))) || p_684->g_125.x)))) | l_256.y) | FAKE_DIVERGE(p_684->group_2_offset, get_group_id(2), 10)) && (-1L)), 0)), 7)), l_165)), FAKE_DIVERGE(p_684->group_0_offset, get_group_id(0), 10))) ^ l_236.w))) , p_684->g_146);
                }
            }
        }
        else
        { /* block id: 84 */
            uint64_t *l_305 = &p_684->g_306;
            int32_t l_310 = 0x0BE0AE21L;
            uint32_t l_332 = 4294967295UL;
            uint8_t *l_345 = &l_285;
            int32_t *l_346[10][6][2] = {{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}},{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}},{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}},{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}},{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}},{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}},{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}},{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}},{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}},{{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53},{(void*)0,&l_53}}};
            int i, j, k;
            (*p_684->g_304) = ((!((*l_305) |= 0x467C8BAF5465FD2DL)) , l_54);
            for (p_684->g_244 = 19; (p_684->g_244 <= 29); p_684->g_244 = safe_add_func_uint16_t_u_u(p_684->g_244, 7))
            { /* block id: 89 */
                int16_t l_319 = 0x3E18L;
                int32_t *l_320 = &l_184;
                struct S0 l_326 = {0x59L};
                struct S0 **l_328 = &l_327;
                struct S0 **l_329 = (void*)0;
                struct S0 **l_330 = (void*)0;
                struct S0 *l_334 = &l_326;
                struct S0 **l_333 = &l_334;
                struct S0 *l_336[5][8][6] = {{{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54}},{{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54}},{{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54}},{{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54}},{{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54},{(void*)0,&l_326,&l_326,(void*)0,(void*)0,&l_54}}};
                struct S0 **l_335 = &l_336[1][7][5];
                int i, j, k;
                (*p_684->g_309) = (l_44 = &p_32);
                (*l_320) |= ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 8))(l_310, ((VECTOR(int16_t, 2))(l_311.xw)), ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(0L, 0x0443L, 0x74B6L, 0L, ((VECTOR(int16_t, 8))(5L, (p_684->g_248 , ((((*p_32) || ((((void*)0 == p_684->g_312) < ((safe_sub_func_uint32_t_u_u((((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), ((safe_add_func_int32_t_s_s(l_319, ((l_186[4] > 0x1646L) , (0x05L != 0x7FL)))) | 5L))) , (***p_684->g_309)) >= l_319), l_310)) & l_310)) < 7L)) | p_684->g_98.x) | p_684->g_73[3])), 1L, 9L, 0L, ((VECTOR(int16_t, 2))((-1L))), 0x350BL)), ((VECTOR(int16_t, 4))(0x78E7L)))).sae02)).lo))), (-8L), 0x481DL, 1L)).even, ((VECTOR(uint16_t, 4))(65532UL))))).even)).xyxyxxxx)).s6605115254245373))).s95)).xxxxxxyx, ((VECTOR(int32_t, 8))(0x4E84F6D5L))))).s2;
                if ((safe_mul_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u(((((VECTOR(uint8_t, 2))(p_684->g_325.s24)).odd & (l_326 , 1L)) | ((*l_55) |= p_684->g_139.x)), (*l_320))) , ((p_684->g_331 = ((*l_328) = l_327)) == ((*l_335) = ((*l_333) = (l_332 , &p_684->g_146))))), ((safe_lshift_func_int16_t_s_u(((*l_320) ^ (safe_sub_func_int16_t_s_s((255UL && p_684->g_341), 0x6A1FL))), 15)) != l_332))))
                { /* block id: 98 */
                    int8_t l_342 = 0x2DL;
                    return l_342;
                }
                else
                { /* block id: 100 */
                    return p_684->g_306;
                }
            }
            (*p_684->g_78) &= (safe_rshift_func_int16_t_s_s((l_345 == (void*)0), 15));
        }
    }
    (*l_347) &= l_54.f0;
    return p_684->g_138.s5;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_33(int64_t  p_34, struct S2 * p_684)
{ /* block id: 6 */
    return &p_684->g_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_684->g_17
 * writes:
 */
int8_t  func_41(int8_t * p_42, uint32_t  p_43, struct S2 * p_684)
{ /* block id: 39 */
    return (*p_42);
}


/* ------------------------------------------ */
/* 
 * reads : p_684->g_68 p_684->g_77 p_684->g_111 p_684->g_115 p_684->g_125 p_684->g_131 p_684->g_78 p_684->g_138 p_684->g_139 p_684->g_141 p_684->g_98 p_684->g_146
 * writes: p_684->g_77 p_684->g_90 p_684->g_69 p_684->g_111 p_684->g_116
 */
struct S0  func_46(uint64_t  p_47, uint32_t  p_48, uint32_t  p_49, struct S2 * p_684)
{ /* block id: 20 */
    int8_t **l_88 = (void*)0;
    int8_t ***l_87 = &l_88;
    int16_t **l_114[7][7][5] = {{{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68}},{{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68}},{{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68}},{{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68}},{{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68}},{{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68}},{{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68},{&p_684->g_68,&p_684->g_68,(void*)0,&p_684->g_68,&p_684->g_68}}};
    int32_t l_121 = (-6L);
    VECTOR(uint16_t, 8) l_128 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x504AL), 0x504AL), 0x504AL, 65535UL, 0x504AL);
    VECTOR(uint8_t, 8) l_132 = (VECTOR(uint8_t, 8))(0x13L, (VECTOR(uint8_t, 4))(0x13L, (VECTOR(uint8_t, 2))(0x13L, 249UL), 249UL), 249UL, 0x13L, 249UL);
    VECTOR(uint8_t, 16) l_135 = (VECTOR(uint8_t, 16))(0xE8L, (VECTOR(uint8_t, 4))(0xE8L, (VECTOR(uint8_t, 2))(0xE8L, 0xB7L), 0xB7L), 0xB7L, 0xE8L, 0xB7L, (VECTOR(uint8_t, 2))(0xE8L, 0xB7L), (VECTOR(uint8_t, 2))(0xE8L, 0xB7L), 0xE8L, 0xB7L, 0xE8L, 0xB7L);
    VECTOR(uint8_t, 8) l_136 = (VECTOR(uint8_t, 8))(0x70L, (VECTOR(uint8_t, 4))(0x70L, (VECTOR(uint8_t, 2))(0x70L, 254UL), 254UL), 254UL, 0x70L, 254UL);
    VECTOR(uint8_t, 2) l_137 = (VECTOR(uint8_t, 2))(0xA0L, 1UL);
    VECTOR(uint8_t, 16) l_140 = (VECTOR(uint8_t, 16))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0xE7L), 0xE7L), 0xE7L, 7UL, 0xE7L, (VECTOR(uint8_t, 2))(7UL, 0xE7L), (VECTOR(uint8_t, 2))(7UL, 0xE7L), 7UL, 0xE7L, 7UL, 0xE7L);
    uint32_t l_144 = 4294967290UL;
    int32_t *l_145 = &p_684->g_111[6][1];
    int i, j, k;
    for (p_49 = 0; (p_49 <= 25); p_49 = safe_add_func_uint64_t_u_u(p_49, 9))
    { /* block id: 23 */
        int32_t *l_86 = &p_684->g_77;
        int8_t ****l_89 = (void*)0;
        int64_t *l_102 = &p_684->g_73[3];
        VECTOR(int16_t, 8) l_109 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x40BAL), 0x40BAL), 0x40BAL, (-1L), 0x40BAL);
        int32_t *l_110 = &p_684->g_111[6][1];
        int i;
        (*l_86) = 0x4CD11DCEL;
        (*l_110) |= ((!(0UL | ((((*p_684->g_68) = (l_87 != (p_684->g_90 = &l_88))) & (safe_lshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s((FAKE_DIVERGE(p_684->global_0_offset, get_global_id(0), 10) & ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(p_684->g_98.yyyyyxyy)).s42)))), p_49, ((((VECTOR(uint64_t, 4))(p_684->g_99.s0241)).w ^ ((*l_102) ^= (safe_lshift_func_int8_t_s_s((*l_86), 5)))) , ((safe_add_func_uint32_t_u_u(((+p_48) != (((safe_rshift_func_int8_t_s_s(((**p_684->g_91) = (**p_684->g_91)), 1)) == ((safe_rshift_func_int16_t_s_u((((VECTOR(int16_t, 4))(l_109.s0537)).y == ((p_48 > p_47) || (*l_86))), 12)) , p_47)) == 65535UL)), 0x4A2822D1L)) , p_49)), p_48, 0x624CL, 0x092CL, (-10L))).s6), 65527UL)), 6)), (*l_86)))) & GROUP_DIVERGE(1, 1)))) , (-1L));
    }
    for (p_684->g_77 = 0; (p_684->g_77 != 4); ++p_684->g_77)
    { /* block id: 33 */
        int32_t *l_117 = &p_684->g_111[6][1];
        int32_t *l_118 = &p_684->g_111[3][1];
        int32_t *l_119 = &p_684->g_111[6][1];
        int32_t l_120[7] = {0L,0L,0L,0L,0L,0L,0L};
        uint8_t l_122 = 0x07L;
        int i;
        (*p_684->g_115) = l_114[1][2][2];
        l_122--;
    }
    (*l_145) = (((VECTOR(uint64_t, 8))(p_684->g_125.yxyyxxxx)).s2 && (((((4UL && l_121) && (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(0x2993L, ((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 4))(l_128.s6047)).zzwzxxxx, (uint16_t)(0x65AADBCCDF9266F0L <= (p_49 , (safe_sub_func_uint64_t_u_u(0UL, 0x6BBF9829FEAD6BFEL)))), (uint16_t)((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 16))(p_684->g_131.s5555260547404424)).sfd1e, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(l_132.s53)), ((VECTOR(uint8_t, 16))(0x39L, ((VECTOR(uint8_t, 2))(0x31L, 0x0CL)).hi, 0xD9L, 0xBFL, (safe_sub_func_int32_t_s_s((*p_684->g_78), (-5L))), ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 2))(l_135.sef)).xxyyyxyxxxyyyyyy, ((VECTOR(uint8_t, 16))(l_136.s1264644473666224))))).s49, ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 4))(l_137.xxyy)).lo, ((VECTOR(uint8_t, 4))(p_684->g_138.s2051)).lo, ((VECTOR(uint8_t, 2))(p_684->g_139.xw))))).xyyxyyxyxxxxxxyx, ((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 8))(l_140.scf914606)).s1362615345301262))).se4))).xyyyyyyyxyyyxyxx))).s5c, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(p_684->g_141.wwxz)).odd))))), (((safe_mod_func_uint8_t_u_u((0xF3C4L >= l_144), 9UL)) , l_135.sa) , 0x09L), ((VECTOR(uint8_t, 2))(0x31L)), ((VECTOR(uint8_t, 2))(255UL)), 0xDEL, l_128.s5, 0xBDL, 0x3CL)).s02))), l_128.s5, ((VECTOR(uint16_t, 2))(3UL)), 0x462EL, 0xC082L, 0x6C68L)).lo))).zzxxzzwz, ((VECTOR(uint16_t, 8))(65527UL)), ((VECTOR(uint16_t, 8))(65535UL))))).s6))).s7, ((VECTOR(uint16_t, 2))(0xBAFFL)), ((VECTOR(uint16_t, 2))(65533UL)), 0x500FL, 1UL)).odd)), p_49, ((VECTOR(uint16_t, 2))(0xCCBCL)), 0x55BBL)).s0, p_47))) ^ 0L) <= p_49) <= p_684->g_98.x));
    return p_684->g_146;
}


/* ------------------------------------------ */
/* 
 * reads : p_684->g_56 p_684->g_68 p_684->g_16 p_684->g_17 p_684->g_78 p_684->g_77 p_684->g_80
 * writes: p_684->g_69 p_684->g_73 p_684->g_77
 */
uint16_t  func_57(uint32_t  p_58, struct S2 * p_684)
{ /* block id: 12 */
    int8_t *l_70[7][4] = {{(void*)0,&p_684->g_17,(void*)0,(void*)0},{(void*)0,&p_684->g_17,(void*)0,(void*)0},{(void*)0,&p_684->g_17,(void*)0,(void*)0},{(void*)0,&p_684->g_17,(void*)0,(void*)0},{(void*)0,&p_684->g_17,(void*)0,(void*)0},{(void*)0,&p_684->g_17,(void*)0,(void*)0},{(void*)0,&p_684->g_17,(void*)0,(void*)0}};
    int32_t l_71 = 0L;
    int64_t *l_72 = &p_684->g_73[3];
    int32_t *l_75 = (void*)0;
    int8_t **l_79[4][8] = {{&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1]},{&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1]},{&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1]},{&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1],&l_70[1][1]}};
    int8_t **l_82 = &l_70[1][3];
    int8_t ***l_81 = &l_82;
    int32_t *l_83 = &l_71;
    int i, j;
    (*p_684->g_78) |= (((*l_72) = (0xD50170A2L > (safe_add_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u((p_684->g_56[1] || (p_684->g_68 == (void*)0)), ((*p_684->g_68) = (l_70[1][1] != (void*)0)))) | 1UL), ((((*p_684->g_16) && ((p_58 | 0x38L) < l_71)) == l_71) <= (-10L)))))) || 9UL);
    (*l_83) &= ((l_79[3][6] = &p_684->g_16) == ((*l_81) = (((((VECTOR(uint64_t, 4))(p_684->g_80.s5336)).z , &p_684->g_77) != &l_71) , (void*)0)));
    return p_58;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_685;
    struct S2* p_684 = &c_685;
    struct S2 c_686 = {
        8L, // p_684->g_17
        &p_684->g_17, // p_684->g_16
        0x59A5L, // p_684->g_40
        (VECTOR(uint64_t, 16))(0x505BC98072F25996L, (VECTOR(uint64_t, 4))(0x505BC98072F25996L, (VECTOR(uint64_t, 2))(0x505BC98072F25996L, 0x0FE1F230B56BF5EEL), 0x0FE1F230B56BF5EEL), 0x0FE1F230B56BF5EEL, 0x505BC98072F25996L, 0x0FE1F230B56BF5EEL, (VECTOR(uint64_t, 2))(0x505BC98072F25996L, 0x0FE1F230B56BF5EEL), (VECTOR(uint64_t, 2))(0x505BC98072F25996L, 0x0FE1F230B56BF5EEL), 0x505BC98072F25996L, 0x0FE1F230B56BF5EEL, 0x505BC98072F25996L, 0x0FE1F230B56BF5EEL), // p_684->g_52
        {0x1753L,0x1753L}, // p_684->g_56
        (-1L), // p_684->g_69
        &p_684->g_69, // p_684->g_68
        {2L,2L,2L,2L}, // p_684->g_73
        (void*)0, // p_684->g_74
        0x5EECC15CL, // p_684->g_77
        {&p_684->g_77,&p_684->g_77,&p_684->g_77}, // p_684->g_76
        &p_684->g_77, // p_684->g_78
        (VECTOR(uint64_t, 8))(0x3DEF23EAFAF4B059L, (VECTOR(uint64_t, 4))(0x3DEF23EAFAF4B059L, (VECTOR(uint64_t, 2))(0x3DEF23EAFAF4B059L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x3DEF23EAFAF4B059L, 18446744073709551615UL), // p_684->g_80
        &p_684->g_16, // p_684->g_91
        &p_684->g_91, // p_684->g_90
        (VECTOR(int16_t, 2))(5L, 1L), // p_684->g_98
        (VECTOR(uint64_t, 8))(0x1004047E6052A731L, (VECTOR(uint64_t, 4))(0x1004047E6052A731L, (VECTOR(uint64_t, 2))(0x1004047E6052A731L, 0x79CC16C4145F50B0L), 0x79CC16C4145F50B0L), 0x79CC16C4145F50B0L, 0x1004047E6052A731L, 0x79CC16C4145F50B0L), // p_684->g_99
        {{0x61F694DFL,0x61F694DFL},{0x61F694DFL,0x61F694DFL},{0x61F694DFL,0x61F694DFL},{0x61F694DFL,0x61F694DFL},{0x61F694DFL,0x61F694DFL},{0x61F694DFL,0x61F694DFL},{0x61F694DFL,0x61F694DFL},{0x61F694DFL,0x61F694DFL},{0x61F694DFL,0x61F694DFL},{0x61F694DFL,0x61F694DFL}}, // p_684->g_111
        &p_684->g_68, // p_684->g_116
        &p_684->g_116, // p_684->g_115
        (VECTOR(uint64_t, 2))(0xA0E0CC22E4BCF314L, 0UL), // p_684->g_125
        (VECTOR(uint16_t, 8))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0UL), 0UL), 0UL, 65532UL, 0UL), // p_684->g_131
        (VECTOR(uint8_t, 16))(254UL, (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 249UL), 249UL), 249UL, 254UL, 249UL, (VECTOR(uint8_t, 2))(254UL, 249UL), (VECTOR(uint8_t, 2))(254UL, 249UL), 254UL, 249UL, 254UL, 249UL), // p_684->g_138
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), // p_684->g_139
        (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 252UL), 252UL), // p_684->g_141
        {4L}, // p_684->g_146
        (VECTOR(uint32_t, 8))(0x9810F85DL, (VECTOR(uint32_t, 4))(0x9810F85DL, (VECTOR(uint32_t, 2))(0x9810F85DL, 0x36438034L), 0x36438034L), 0x36438034L, 0x9810F85DL, 0x36438034L), // p_684->g_212
        (VECTOR(uint64_t, 2))(4UL, 2UL), // p_684->g_237
        0x56E5381FL, // p_684->g_244
        {0xFDL}, // p_684->g_248
        (VECTOR(uint32_t, 16))(0xA972FD26L, (VECTOR(uint32_t, 4))(0xA972FD26L, (VECTOR(uint32_t, 2))(0xA972FD26L, 0UL), 0UL), 0UL, 0xA972FD26L, 0UL, (VECTOR(uint32_t, 2))(0xA972FD26L, 0UL), (VECTOR(uint32_t, 2))(0xA972FD26L, 0UL), 0xA972FD26L, 0UL, 0xA972FD26L, 0UL), // p_684->g_296
        &p_684->g_146, // p_684->g_304
        18446744073709551611UL, // p_684->g_306
        &p_684->g_91, // p_684->g_309
        (void*)0, // p_684->g_312
        (VECTOR(uint8_t, 16))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0x8DL), 0x8DL), 0x8DL, 250UL, 0x8DL, (VECTOR(uint8_t, 2))(250UL, 0x8DL), (VECTOR(uint8_t, 2))(250UL, 0x8DL), 250UL, 0x8DL, 250UL, 0x8DL), // p_684->g_325
        (void*)0, // p_684->g_331
        0x01909621L, // p_684->g_341
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 246UL), 246UL), // p_684->g_349
        0x62L, // p_684->g_354
        {0xAFL}, // p_684->g_357
        0x4978L, // p_684->g_360
        {{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}},{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}},{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}},{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}},{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}},{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}},{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}},{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}},{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}},{{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L},{1UL,0xA4D54C2EL,1UL,4294967295UL,0xFC12C367L}}}, // p_684->g_375
        {&p_684->g_77,&p_684->g_77,&p_684->g_77}, // p_684->g_378
        (VECTOR(int8_t, 2))((-1L), (-6L)), // p_684->g_408
        {3UL}, // p_684->g_452
        {{{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146}},{{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146}},{{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146}},{{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146}},{{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146}},{{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146},{&p_684->g_146,&p_684->g_146,&p_684->g_146,&p_684->g_146}}}, // p_684->g_468
        (void*)0, // p_684->g_511
        &p_684->g_511, // p_684->g_510
        (VECTOR(uint64_t, 8))(0x611170924043607BL, (VECTOR(uint64_t, 4))(0x611170924043607BL, (VECTOR(uint64_t, 2))(0x611170924043607BL, 0x1C39990502B65D8DL), 0x1C39990502B65D8DL), 0x1C39990502B65D8DL, 0x611170924043607BL, 0x1C39990502B65D8DL), // p_684->g_524
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x5DL), 0x5DL), 0x5DL, 1L, 0x5DL, (VECTOR(int8_t, 2))(1L, 0x5DL), (VECTOR(int8_t, 2))(1L, 0x5DL), 1L, 0x5DL, 1L, 0x5DL), // p_684->g_569
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), // p_684->g_588
        &p_684->g_91, // p_684->g_594
        (-5L), // p_684->g_606
        (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0L), 0L), // p_684->g_612
        &p_684->g_511, // p_684->g_682
        sequence_input[get_global_id(0)], // p_684->global_0_offset
        sequence_input[get_global_id(1)], // p_684->global_1_offset
        sequence_input[get_global_id(2)], // p_684->global_2_offset
        sequence_input[get_local_id(0)], // p_684->local_0_offset
        sequence_input[get_local_id(1)], // p_684->local_1_offset
        sequence_input[get_local_id(2)], // p_684->local_2_offset
        sequence_input[get_group_id(0)], // p_684->group_0_offset
        sequence_input[get_group_id(1)], // p_684->group_1_offset
        sequence_input[get_group_id(2)], // p_684->group_2_offset
    };
    c_685 = c_686;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_684);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_684->g_17, "p_684->g_17", print_hash_value);
    transparent_crc(p_684->g_40, "p_684->g_40", print_hash_value);
    transparent_crc(p_684->g_52.s0, "p_684->g_52.s0", print_hash_value);
    transparent_crc(p_684->g_52.s1, "p_684->g_52.s1", print_hash_value);
    transparent_crc(p_684->g_52.s2, "p_684->g_52.s2", print_hash_value);
    transparent_crc(p_684->g_52.s3, "p_684->g_52.s3", print_hash_value);
    transparent_crc(p_684->g_52.s4, "p_684->g_52.s4", print_hash_value);
    transparent_crc(p_684->g_52.s5, "p_684->g_52.s5", print_hash_value);
    transparent_crc(p_684->g_52.s6, "p_684->g_52.s6", print_hash_value);
    transparent_crc(p_684->g_52.s7, "p_684->g_52.s7", print_hash_value);
    transparent_crc(p_684->g_52.s8, "p_684->g_52.s8", print_hash_value);
    transparent_crc(p_684->g_52.s9, "p_684->g_52.s9", print_hash_value);
    transparent_crc(p_684->g_52.sa, "p_684->g_52.sa", print_hash_value);
    transparent_crc(p_684->g_52.sb, "p_684->g_52.sb", print_hash_value);
    transparent_crc(p_684->g_52.sc, "p_684->g_52.sc", print_hash_value);
    transparent_crc(p_684->g_52.sd, "p_684->g_52.sd", print_hash_value);
    transparent_crc(p_684->g_52.se, "p_684->g_52.se", print_hash_value);
    transparent_crc(p_684->g_52.sf, "p_684->g_52.sf", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_684->g_56[i], "p_684->g_56[i]", print_hash_value);

    }
    transparent_crc(p_684->g_69, "p_684->g_69", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_684->g_73[i], "p_684->g_73[i]", print_hash_value);

    }
    transparent_crc(p_684->g_77, "p_684->g_77", print_hash_value);
    transparent_crc(p_684->g_80.s0, "p_684->g_80.s0", print_hash_value);
    transparent_crc(p_684->g_80.s1, "p_684->g_80.s1", print_hash_value);
    transparent_crc(p_684->g_80.s2, "p_684->g_80.s2", print_hash_value);
    transparent_crc(p_684->g_80.s3, "p_684->g_80.s3", print_hash_value);
    transparent_crc(p_684->g_80.s4, "p_684->g_80.s4", print_hash_value);
    transparent_crc(p_684->g_80.s5, "p_684->g_80.s5", print_hash_value);
    transparent_crc(p_684->g_80.s6, "p_684->g_80.s6", print_hash_value);
    transparent_crc(p_684->g_80.s7, "p_684->g_80.s7", print_hash_value);
    transparent_crc(p_684->g_98.x, "p_684->g_98.x", print_hash_value);
    transparent_crc(p_684->g_98.y, "p_684->g_98.y", print_hash_value);
    transparent_crc(p_684->g_99.s0, "p_684->g_99.s0", print_hash_value);
    transparent_crc(p_684->g_99.s1, "p_684->g_99.s1", print_hash_value);
    transparent_crc(p_684->g_99.s2, "p_684->g_99.s2", print_hash_value);
    transparent_crc(p_684->g_99.s3, "p_684->g_99.s3", print_hash_value);
    transparent_crc(p_684->g_99.s4, "p_684->g_99.s4", print_hash_value);
    transparent_crc(p_684->g_99.s5, "p_684->g_99.s5", print_hash_value);
    transparent_crc(p_684->g_99.s6, "p_684->g_99.s6", print_hash_value);
    transparent_crc(p_684->g_99.s7, "p_684->g_99.s7", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_684->g_111[i][j], "p_684->g_111[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_684->g_125.x, "p_684->g_125.x", print_hash_value);
    transparent_crc(p_684->g_125.y, "p_684->g_125.y", print_hash_value);
    transparent_crc(p_684->g_131.s0, "p_684->g_131.s0", print_hash_value);
    transparent_crc(p_684->g_131.s1, "p_684->g_131.s1", print_hash_value);
    transparent_crc(p_684->g_131.s2, "p_684->g_131.s2", print_hash_value);
    transparent_crc(p_684->g_131.s3, "p_684->g_131.s3", print_hash_value);
    transparent_crc(p_684->g_131.s4, "p_684->g_131.s4", print_hash_value);
    transparent_crc(p_684->g_131.s5, "p_684->g_131.s5", print_hash_value);
    transparent_crc(p_684->g_131.s6, "p_684->g_131.s6", print_hash_value);
    transparent_crc(p_684->g_131.s7, "p_684->g_131.s7", print_hash_value);
    transparent_crc(p_684->g_138.s0, "p_684->g_138.s0", print_hash_value);
    transparent_crc(p_684->g_138.s1, "p_684->g_138.s1", print_hash_value);
    transparent_crc(p_684->g_138.s2, "p_684->g_138.s2", print_hash_value);
    transparent_crc(p_684->g_138.s3, "p_684->g_138.s3", print_hash_value);
    transparent_crc(p_684->g_138.s4, "p_684->g_138.s4", print_hash_value);
    transparent_crc(p_684->g_138.s5, "p_684->g_138.s5", print_hash_value);
    transparent_crc(p_684->g_138.s6, "p_684->g_138.s6", print_hash_value);
    transparent_crc(p_684->g_138.s7, "p_684->g_138.s7", print_hash_value);
    transparent_crc(p_684->g_138.s8, "p_684->g_138.s8", print_hash_value);
    transparent_crc(p_684->g_138.s9, "p_684->g_138.s9", print_hash_value);
    transparent_crc(p_684->g_138.sa, "p_684->g_138.sa", print_hash_value);
    transparent_crc(p_684->g_138.sb, "p_684->g_138.sb", print_hash_value);
    transparent_crc(p_684->g_138.sc, "p_684->g_138.sc", print_hash_value);
    transparent_crc(p_684->g_138.sd, "p_684->g_138.sd", print_hash_value);
    transparent_crc(p_684->g_138.se, "p_684->g_138.se", print_hash_value);
    transparent_crc(p_684->g_138.sf, "p_684->g_138.sf", print_hash_value);
    transparent_crc(p_684->g_139.x, "p_684->g_139.x", print_hash_value);
    transparent_crc(p_684->g_139.y, "p_684->g_139.y", print_hash_value);
    transparent_crc(p_684->g_139.z, "p_684->g_139.z", print_hash_value);
    transparent_crc(p_684->g_139.w, "p_684->g_139.w", print_hash_value);
    transparent_crc(p_684->g_141.x, "p_684->g_141.x", print_hash_value);
    transparent_crc(p_684->g_141.y, "p_684->g_141.y", print_hash_value);
    transparent_crc(p_684->g_141.z, "p_684->g_141.z", print_hash_value);
    transparent_crc(p_684->g_141.w, "p_684->g_141.w", print_hash_value);
    transparent_crc(p_684->g_146.f0, "p_684->g_146.f0", print_hash_value);
    transparent_crc(p_684->g_212.s0, "p_684->g_212.s0", print_hash_value);
    transparent_crc(p_684->g_212.s1, "p_684->g_212.s1", print_hash_value);
    transparent_crc(p_684->g_212.s2, "p_684->g_212.s2", print_hash_value);
    transparent_crc(p_684->g_212.s3, "p_684->g_212.s3", print_hash_value);
    transparent_crc(p_684->g_212.s4, "p_684->g_212.s4", print_hash_value);
    transparent_crc(p_684->g_212.s5, "p_684->g_212.s5", print_hash_value);
    transparent_crc(p_684->g_212.s6, "p_684->g_212.s6", print_hash_value);
    transparent_crc(p_684->g_212.s7, "p_684->g_212.s7", print_hash_value);
    transparent_crc(p_684->g_237.x, "p_684->g_237.x", print_hash_value);
    transparent_crc(p_684->g_237.y, "p_684->g_237.y", print_hash_value);
    transparent_crc(p_684->g_244, "p_684->g_244", print_hash_value);
    transparent_crc(p_684->g_248.f0, "p_684->g_248.f0", print_hash_value);
    transparent_crc(p_684->g_296.s0, "p_684->g_296.s0", print_hash_value);
    transparent_crc(p_684->g_296.s1, "p_684->g_296.s1", print_hash_value);
    transparent_crc(p_684->g_296.s2, "p_684->g_296.s2", print_hash_value);
    transparent_crc(p_684->g_296.s3, "p_684->g_296.s3", print_hash_value);
    transparent_crc(p_684->g_296.s4, "p_684->g_296.s4", print_hash_value);
    transparent_crc(p_684->g_296.s5, "p_684->g_296.s5", print_hash_value);
    transparent_crc(p_684->g_296.s6, "p_684->g_296.s6", print_hash_value);
    transparent_crc(p_684->g_296.s7, "p_684->g_296.s7", print_hash_value);
    transparent_crc(p_684->g_296.s8, "p_684->g_296.s8", print_hash_value);
    transparent_crc(p_684->g_296.s9, "p_684->g_296.s9", print_hash_value);
    transparent_crc(p_684->g_296.sa, "p_684->g_296.sa", print_hash_value);
    transparent_crc(p_684->g_296.sb, "p_684->g_296.sb", print_hash_value);
    transparent_crc(p_684->g_296.sc, "p_684->g_296.sc", print_hash_value);
    transparent_crc(p_684->g_296.sd, "p_684->g_296.sd", print_hash_value);
    transparent_crc(p_684->g_296.se, "p_684->g_296.se", print_hash_value);
    transparent_crc(p_684->g_296.sf, "p_684->g_296.sf", print_hash_value);
    transparent_crc(p_684->g_306, "p_684->g_306", print_hash_value);
    transparent_crc(p_684->g_325.s0, "p_684->g_325.s0", print_hash_value);
    transparent_crc(p_684->g_325.s1, "p_684->g_325.s1", print_hash_value);
    transparent_crc(p_684->g_325.s2, "p_684->g_325.s2", print_hash_value);
    transparent_crc(p_684->g_325.s3, "p_684->g_325.s3", print_hash_value);
    transparent_crc(p_684->g_325.s4, "p_684->g_325.s4", print_hash_value);
    transparent_crc(p_684->g_325.s5, "p_684->g_325.s5", print_hash_value);
    transparent_crc(p_684->g_325.s6, "p_684->g_325.s6", print_hash_value);
    transparent_crc(p_684->g_325.s7, "p_684->g_325.s7", print_hash_value);
    transparent_crc(p_684->g_325.s8, "p_684->g_325.s8", print_hash_value);
    transparent_crc(p_684->g_325.s9, "p_684->g_325.s9", print_hash_value);
    transparent_crc(p_684->g_325.sa, "p_684->g_325.sa", print_hash_value);
    transparent_crc(p_684->g_325.sb, "p_684->g_325.sb", print_hash_value);
    transparent_crc(p_684->g_325.sc, "p_684->g_325.sc", print_hash_value);
    transparent_crc(p_684->g_325.sd, "p_684->g_325.sd", print_hash_value);
    transparent_crc(p_684->g_325.se, "p_684->g_325.se", print_hash_value);
    transparent_crc(p_684->g_325.sf, "p_684->g_325.sf", print_hash_value);
    transparent_crc(p_684->g_341, "p_684->g_341", print_hash_value);
    transparent_crc(p_684->g_349.x, "p_684->g_349.x", print_hash_value);
    transparent_crc(p_684->g_349.y, "p_684->g_349.y", print_hash_value);
    transparent_crc(p_684->g_349.z, "p_684->g_349.z", print_hash_value);
    transparent_crc(p_684->g_349.w, "p_684->g_349.w", print_hash_value);
    transparent_crc(p_684->g_354, "p_684->g_354", print_hash_value);
    transparent_crc(p_684->g_357.f0, "p_684->g_357.f0", print_hash_value);
    transparent_crc(p_684->g_360, "p_684->g_360", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_684->g_375[i][j][k], "p_684->g_375[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_684->g_408.x, "p_684->g_408.x", print_hash_value);
    transparent_crc(p_684->g_408.y, "p_684->g_408.y", print_hash_value);
    transparent_crc(p_684->g_452.f0, "p_684->g_452.f0", print_hash_value);
    transparent_crc(p_684->g_524.s0, "p_684->g_524.s0", print_hash_value);
    transparent_crc(p_684->g_524.s1, "p_684->g_524.s1", print_hash_value);
    transparent_crc(p_684->g_524.s2, "p_684->g_524.s2", print_hash_value);
    transparent_crc(p_684->g_524.s3, "p_684->g_524.s3", print_hash_value);
    transparent_crc(p_684->g_524.s4, "p_684->g_524.s4", print_hash_value);
    transparent_crc(p_684->g_524.s5, "p_684->g_524.s5", print_hash_value);
    transparent_crc(p_684->g_524.s6, "p_684->g_524.s6", print_hash_value);
    transparent_crc(p_684->g_524.s7, "p_684->g_524.s7", print_hash_value);
    transparent_crc(p_684->g_569.s0, "p_684->g_569.s0", print_hash_value);
    transparent_crc(p_684->g_569.s1, "p_684->g_569.s1", print_hash_value);
    transparent_crc(p_684->g_569.s2, "p_684->g_569.s2", print_hash_value);
    transparent_crc(p_684->g_569.s3, "p_684->g_569.s3", print_hash_value);
    transparent_crc(p_684->g_569.s4, "p_684->g_569.s4", print_hash_value);
    transparent_crc(p_684->g_569.s5, "p_684->g_569.s5", print_hash_value);
    transparent_crc(p_684->g_569.s6, "p_684->g_569.s6", print_hash_value);
    transparent_crc(p_684->g_569.s7, "p_684->g_569.s7", print_hash_value);
    transparent_crc(p_684->g_569.s8, "p_684->g_569.s8", print_hash_value);
    transparent_crc(p_684->g_569.s9, "p_684->g_569.s9", print_hash_value);
    transparent_crc(p_684->g_569.sa, "p_684->g_569.sa", print_hash_value);
    transparent_crc(p_684->g_569.sb, "p_684->g_569.sb", print_hash_value);
    transparent_crc(p_684->g_569.sc, "p_684->g_569.sc", print_hash_value);
    transparent_crc(p_684->g_569.sd, "p_684->g_569.sd", print_hash_value);
    transparent_crc(p_684->g_569.se, "p_684->g_569.se", print_hash_value);
    transparent_crc(p_684->g_569.sf, "p_684->g_569.sf", print_hash_value);
    transparent_crc(p_684->g_588.x, "p_684->g_588.x", print_hash_value);
    transparent_crc(p_684->g_588.y, "p_684->g_588.y", print_hash_value);
    transparent_crc(p_684->g_588.z, "p_684->g_588.z", print_hash_value);
    transparent_crc(p_684->g_588.w, "p_684->g_588.w", print_hash_value);
    transparent_crc(p_684->g_606, "p_684->g_606", print_hash_value);
    transparent_crc(p_684->g_612.x, "p_684->g_612.x", print_hash_value);
    transparent_crc(p_684->g_612.y, "p_684->g_612.y", print_hash_value);
    transparent_crc(p_684->g_612.z, "p_684->g_612.z", print_hash_value);
    transparent_crc(p_684->g_612.w, "p_684->g_612.w", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
