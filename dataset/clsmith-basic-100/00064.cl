// ---fake_divergence -g 2,1,3779 -l 1,1,1
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


// Seed: 64

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int64_t g_3;
    int32_t * volatile g_4;
    int32_t * volatile * volatile g_5;
    int32_t g_10;
    volatile uint16_t g_22;
    uint32_t g_50;
    int64_t g_52[9];
    int32_t **g_55;
    uint16_t g_57;
    uint16_t g_62;
    uint64_t g_74;
    int8_t g_85;
    uint64_t g_87;
    int16_t g_89;
    volatile uint64_t g_142;
    volatile uint64_t * volatile g_141;
    int8_t g_166;
    int8_t *g_165;
    int32_t *g_173;
    int32_t ** volatile g_172;
    int32_t ** volatile g_175;
    int64_t *g_188;
    int32_t ** volatile g_192[8];
    int32_t ** volatile g_193;
    uint64_t g_201;
    int32_t g_203;
    int32_t *g_202;
    uint64_t g_209;
    int32_t * volatile g_274[4][4];
    uint8_t g_299;
    uint64_t *g_379;
    uint8_t g_390;
    uint16_t *g_419;
    uint16_t *g_425[7][6];
    uint16_t **g_424;
    int32_t g_452;
    uint16_t g_487;
    uint32_t g_496;
    uint32_t *g_544;
    uint8_t *g_551;
    uint32_t g_575;
    volatile uint64_t * volatile *g_590;
    volatile uint64_t g_626;
    int8_t **g_709;
    int32_t * volatile g_711[4][4][8];
    int32_t * volatile g_712;
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
uint64_t  func_1(struct S0 * p_713);
int64_t  func_27(int64_t  p_28, int64_t  p_29, uint16_t  p_30, int32_t ** p_31, int32_t * p_32, struct S0 * p_713);
int8_t  func_63(int32_t * p_64, uint32_t  p_65, int32_t  p_66, struct S0 * p_713);
int32_t * func_67(uint64_t  p_68, int32_t  p_69, uint16_t  p_70, uint16_t  p_71, int32_t * p_72, struct S0 * p_713);
int64_t  func_104(uint64_t  p_105, uint64_t  p_106, int32_t  p_107, uint32_t * p_108, int32_t  p_109, struct S0 * p_713);
uint64_t  func_116(uint16_t  p_117, struct S0 * p_713);
int32_t ** func_121(int16_t  p_122, struct S0 * p_713);
int32_t * func_123(int16_t  p_124, int32_t * p_125, uint64_t  p_126, int64_t  p_127, struct S0 * p_713);
int32_t * func_134(int32_t * p_135, int32_t  p_136, int16_t  p_137, struct S0 * p_713);
int64_t  func_149(int32_t  p_150, uint64_t * p_151, int8_t  p_152, struct S0 * p_713);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_713->g_3 p_713->g_4 p_713->g_5 p_713->g_22 p_713->g_10 p_713->g_52 p_713->g_55 p_713->g_57 p_713->g_379 p_713->g_209
 * writes: p_713->g_4 p_713->g_3 p_713->g_22 p_713->g_10 p_713->g_50 p_713->g_52 p_713->g_57
 */
uint64_t  func_1(struct S0 * p_713)
{ /* block id: 4 */
    uint32_t l_2 = 4294967291UL;
    int32_t l_21 = 1L;
    int16_t l_61 = 0x40CFL;
    uint64_t *l_73 = &p_713->g_74;
    int8_t *l_83 = (void*)0;
    int8_t *l_84[4][9] = {{&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85},{&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85},{&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85},{&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85,&p_713->g_85}};
    uint64_t *l_86 = &p_713->g_87;
    uint32_t l_88 = 4294967287UL;
    int64_t *l_90 = &p_713->g_52[4];
    int32_t l_576[7][10] = {{0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L},{0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L},{0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L},{0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L},{0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L},{0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L},{0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L,0x2F3BFA72L}};
    uint32_t l_577[5][7][2] = {{{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL}},{{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL}},{{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL}},{{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL}},{{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL},{0x5C32991BL,4UL}}};
    int32_t l_660 = 0x21D7C041L;
    int32_t l_661 = 0x461DDE30L;
    int16_t l_662 = 2L;
    uint16_t l_663[10][8] = {{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL},{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL},{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL},{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL},{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL},{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL},{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL},{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL},{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL},{3UL,0xF098L,0x1897L,1UL,3UL,0x088BL,0xF098L,0UL}};
    uint64_t l_693[2];
    uint32_t l_700[4][3][6] = {{{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L},{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L},{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L}},{{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L},{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L},{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L}},{{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L},{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L},{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L}},{{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L},{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L},{0UL,0UL,0UL,0x64A190C8L,4294967286UL,0x64A190C8L}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_693[i] = 9UL;
    if ((l_2 == p_713->g_3))
    { /* block id: 5 */
        uint32_t l_11 = 1UL;
        int8_t l_16 = 0x1FL;
        int32_t l_17 = 0x5D013D0BL;
        int32_t l_19 = 0x77904128L;
        int32_t l_20 = 0x6A4C5706L;
        int32_t *l_42 = (void*)0;
        int32_t **l_41 = &l_42;
        (*p_713->g_5) = p_713->g_4;
        for (p_713->g_3 = 0; (p_713->g_3 > (-18)); p_713->g_3 = safe_sub_func_int8_t_s_s(p_713->g_3, 1))
        { /* block id: 9 */
            int32_t *l_8 = (void*)0;
            int32_t *l_9 = &p_713->g_10;
            int32_t *l_14 = &p_713->g_10;
            int32_t *l_15[7][8] = {{(void*)0,&p_713->g_10,&p_713->g_10,&p_713->g_10,(void*)0,(void*)0,&p_713->g_10,&p_713->g_10},{(void*)0,&p_713->g_10,&p_713->g_10,&p_713->g_10,(void*)0,(void*)0,&p_713->g_10,&p_713->g_10},{(void*)0,&p_713->g_10,&p_713->g_10,&p_713->g_10,(void*)0,(void*)0,&p_713->g_10,&p_713->g_10},{(void*)0,&p_713->g_10,&p_713->g_10,&p_713->g_10,(void*)0,(void*)0,&p_713->g_10,&p_713->g_10},{(void*)0,&p_713->g_10,&p_713->g_10,&p_713->g_10,(void*)0,(void*)0,&p_713->g_10,&p_713->g_10},{(void*)0,&p_713->g_10,&p_713->g_10,&p_713->g_10,(void*)0,(void*)0,&p_713->g_10,&p_713->g_10},{(void*)0,&p_713->g_10,&p_713->g_10,&p_713->g_10,(void*)0,(void*)0,&p_713->g_10,&p_713->g_10}};
            int8_t l_18 = 3L;
            uint32_t *l_49 = &p_713->g_50;
            int64_t *l_51 = (void*)0;
            int8_t *l_53 = &l_16;
            int8_t *l_54 = &l_18;
            int i, j;
            l_11--;
            p_713->g_22++;
            for (l_17 = 0; (l_17 != 6); l_17 = safe_add_func_int8_t_s_s(l_17, 1))
            { /* block id: 14 */
                (*l_9) = l_16;
            }
            (*l_9) = (func_27(((safe_rshift_func_uint8_t_u_s(p_713->g_3, ((safe_sub_func_uint64_t_u_u(18446744073709551610UL, (GROUP_DIVERGE(1, 1) | (safe_lshift_func_uint16_t_u_u(p_713->g_10, 8))))) , ((*l_54) = (safe_add_func_int16_t_s_s(((l_41 != (void*)0) == (((*l_53) = ((safe_lshift_func_uint16_t_u_s(((p_713->g_52[4] &= ((p_713->g_10 < (safe_mul_func_int16_t_s_s(0x0DD0L, ((safe_mod_func_uint16_t_u_u((1UL >= (+((*l_49) = FAKE_DIVERGE(p_713->local_0_offset, get_local_id(0), 10)))), 0x0230L)) > (*l_14))))) , p_713->g_3)) | 0x598C6833686A8E7EL), p_713->g_3)) , p_713->g_52[1])) < 1UL)), (-1L))))))) , p_713->g_52[1]), l_2, p_713->g_3, p_713->g_55, &p_713->g_10, p_713) ^ 1UL);
        }
    }
    else
    { /* block id: 26 */
        int32_t l_60[7][10] = {{(-3L),(-4L),0x25693CDBL,(-8L),(-4L),(-8L),0x25693CDBL,(-4L),(-3L),(-3L)},{(-3L),(-4L),0x25693CDBL,(-8L),(-4L),(-8L),0x25693CDBL,(-4L),(-3L),(-3L)},{(-3L),(-4L),0x25693CDBL,(-8L),(-4L),(-8L),0x25693CDBL,(-4L),(-3L),(-3L)},{(-3L),(-4L),0x25693CDBL,(-8L),(-4L),(-8L),0x25693CDBL,(-4L),(-3L),(-3L)},{(-3L),(-4L),0x25693CDBL,(-8L),(-4L),(-8L),0x25693CDBL,(-4L),(-3L),(-3L)},{(-3L),(-4L),0x25693CDBL,(-8L),(-4L),(-8L),0x25693CDBL,(-4L),(-3L),(-3L)},{(-3L),(-4L),0x25693CDBL,(-8L),(-4L),(-8L),0x25693CDBL,(-4L),(-3L),(-3L)}};
        int i, j;
        return l_60[5][2];
    }
    return (*p_713->g_379);
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_57
 * writes: p_713->g_57
 */
int64_t  func_27(int64_t  p_28, int64_t  p_29, uint16_t  p_30, int32_t ** p_31, int32_t * p_32, struct S0 * p_713)
{ /* block id: 21 */
    int32_t *l_56[5];
    int i;
    for (i = 0; i < 5; i++)
        l_56[i] = (void*)0;
    --p_713->g_57;
    return p_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_50 p_713->g_424 p_713->g_425 p_713->g_62 p_713->g_57 p_713->g_141 p_713->g_142 p_713->g_487 p_713->g_202 p_713->g_203 p_713->g_10 p_713->g_74 p_713->g_85 p_713->g_3
 * writes: p_713->g_50 p_713->g_487 p_713->g_496 p_713->g_203 p_713->g_10
 */
int8_t  func_63(int32_t * p_64, uint32_t  p_65, int32_t  p_66, struct S0 * p_713)
{ /* block id: 171 */
    uint8_t *l_484 = (void*)0;
    int32_t l_497 = (-1L);
    uint32_t l_498 = 4294967295UL;
    int32_t l_535 = 0x14D49893L;
    int32_t l_536[3];
    uint64_t l_537 = 0xB22A6021E605D80BL;
    int i;
    for (i = 0; i < 3; i++)
        l_536[i] = 0x5EB12A47L;
    for (p_713->g_50 = 0; (p_713->g_50 != 30); p_713->g_50 = safe_add_func_uint64_t_u_u(p_713->g_50, 3))
    { /* block id: 174 */
        int32_t l_485 = 1L;
        uint16_t *l_486 = &p_713->g_487;
        uint32_t *l_494 = (void*)0;
        uint32_t *l_495 = &p_713->g_496;
        int64_t *l_519 = (void*)0;
        uint64_t l_520 = 0x76E3ECBAD0B91B8AL;
        int8_t *l_521[3][1][9] = {{{&p_713->g_85,(void*)0,(void*)0,(void*)0,&p_713->g_85,&p_713->g_85,(void*)0,(void*)0,(void*)0}},{{&p_713->g_85,(void*)0,(void*)0,(void*)0,&p_713->g_85,&p_713->g_85,(void*)0,(void*)0,(void*)0}},{{&p_713->g_85,(void*)0,(void*)0,(void*)0,&p_713->g_85,&p_713->g_85,(void*)0,(void*)0,(void*)0}}};
        int32_t l_522 = 0x3DC220F8L;
        int32_t l_523 = 1L;
        int32_t *l_524 = &p_713->g_203;
        int32_t *l_525 = &l_497;
        int32_t *l_526 = &l_523;
        int32_t *l_527 = &l_522;
        int32_t *l_528 = (void*)0;
        int32_t *l_529 = (void*)0;
        int32_t *l_530 = &l_523;
        int32_t *l_531 = &p_713->g_203;
        int32_t *l_532 = &l_497;
        int32_t l_533 = 0x73748A15L;
        int32_t *l_534[4][7] = {{&p_713->g_10,&p_713->g_10,&p_713->g_203,&l_523,&p_713->g_203,&l_523,&p_713->g_203},{&p_713->g_10,&p_713->g_10,&p_713->g_203,&l_523,&p_713->g_203,&l_523,&p_713->g_203},{&p_713->g_10,&p_713->g_10,&p_713->g_203,&l_523,&p_713->g_203,&l_523,&p_713->g_203},{&p_713->g_10,&p_713->g_10,&p_713->g_203,&l_523,&p_713->g_203,&l_523,&p_713->g_203}};
        int i, j, k;
        l_497 = (((**p_713->g_424) == (!(255UL <= ((safe_add_func_uint64_t_u_u((*p_713->g_141), ((safe_mod_func_uint8_t_u_u((p_65 || ((~(safe_sub_func_uint16_t_u_u((l_484 != (void*)0), (++(*l_486))))) > ((safe_sub_func_int32_t_s_s((*p_64), ((*p_713->g_202) ^= (p_66 == (safe_div_func_uint32_t_u_u(((*l_495) = 1UL), l_497)))))) , 0UL))), (-3L))) != l_485))) < 0L)))) != 7UL);
        l_523 = (l_498 , (((1UL < ((safe_mod_func_int16_t_s_s(((((l_522 |= (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((l_485 != p_713->g_74), (+GROUP_DIVERGE(2, 1)))), (safe_mul_func_uint16_t_u_u(((((safe_add_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(((safe_rshift_func_int8_t_s_s(0x41L, 7)) > (0x03L <= (safe_mod_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((((void*)0 == &p_713->g_165) <= (l_519 == &p_713->g_52[4])), 4)), p_713->g_85)))), 0x5E33FEA3F2CECCD9L)), 255UL)) == p_713->g_142) , GROUP_DIVERGE(1, 1)) > l_520), p_65))))) || 0UL) , 8L) != 0x5BAE4D30L), p_713->g_3)) < p_66)) | p_65) < 0UL));
        l_537++;
    }
    (*p_713->g_202) &= (*p_64);
    return p_66;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_87 p_713->g_52 p_713->g_85 p_713->g_57 p_713->g_62 p_713->g_22 p_713->g_10 p_713->g_141 p_713->g_55 p_713->g_3 p_713->g_142 p_713->g_166 p_713->g_172 p_713->g_175 p_713->g_5 p_713->g_4 p_713->g_89 p_713->g_201 p_713->g_202 p_713->g_173 p_713->g_209 p_713->g_203 p_713->g_299 p_713->g_424 p_713->g_425
 * writes: p_713->g_87 p_713->g_74 p_713->g_85 p_713->g_57 p_713->g_10 p_713->g_165 p_713->g_173 p_713->g_188 p_713->g_201 p_713->g_50 p_713->g_202 p_713->g_299 p_713->g_203 p_713->g_419 p_713->g_89 p_713->g_3
 */
int32_t * func_67(uint64_t  p_68, int32_t  p_69, uint16_t  p_70, uint16_t  p_71, int32_t * p_72, struct S0 * p_713)
{ /* block id: 36 */
    int32_t l_93 = (-4L);
    int32_t **l_205 = &p_713->g_202;
    int64_t **l_308[9][5] = {{&p_713->g_188,(void*)0,&p_713->g_188,&p_713->g_188,&p_713->g_188},{&p_713->g_188,(void*)0,&p_713->g_188,&p_713->g_188,&p_713->g_188},{&p_713->g_188,(void*)0,&p_713->g_188,&p_713->g_188,&p_713->g_188},{&p_713->g_188,(void*)0,&p_713->g_188,&p_713->g_188,&p_713->g_188},{&p_713->g_188,(void*)0,&p_713->g_188,&p_713->g_188,&p_713->g_188},{&p_713->g_188,(void*)0,&p_713->g_188,&p_713->g_188,&p_713->g_188},{&p_713->g_188,(void*)0,&p_713->g_188,&p_713->g_188,&p_713->g_188},{&p_713->g_188,(void*)0,&p_713->g_188,&p_713->g_188,&p_713->g_188},{&p_713->g_188,(void*)0,&p_713->g_188,&p_713->g_188,&p_713->g_188}};
    int32_t l_331[1][1];
    int64_t l_397 = 1L;
    uint64_t *l_439 = (void*)0;
    uint16_t *l_470 = &p_713->g_57;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_331[i][j] = 0x28EFB1D9L;
    }
    for (p_713->g_87 = (-1); (p_713->g_87 != 19); p_713->g_87 = safe_add_func_uint8_t_u_u(p_713->g_87, 9))
    { /* block id: 39 */
        uint64_t l_118 = 0x43A1FAE61DEDA819L;
        int32_t *l_325 = &p_713->g_203;
        int32_t l_335 = 0x0AD91350L;
        int32_t l_337 = 0x5ED74E0BL;
        int32_t l_338 = 0x366C52A4L;
        int32_t l_341 = 0x7ED956FEL;
        int32_t l_343 = 0x10BD9C6BL;
        int32_t l_344 = 1L;
        int32_t l_345 = 0L;
        int32_t l_352 = (-2L);
        int32_t l_353 = (-1L);
        int32_t l_354 = 0x3A066C90L;
        int32_t l_355[6] = {0x745A0EEAL,0x745A0EEAL,0x745A0EEAL,0x745A0EEAL,0x745A0EEAL,0x745A0EEAL};
        uint8_t l_400 = 1UL;
        uint16_t *l_462 = (void*)0;
        uint16_t **l_463 = &p_713->g_419;
        uint16_t *l_472 = &p_713->g_57;
        uint16_t **l_471 = &l_472;
        int16_t *l_473 = &p_713->g_89;
        int i;
        if (l_93)
        { /* block id: 40 */
            return p_72;
        }
        else
        { /* block id: 42 */
            int32_t l_110 = 1L;
            int32_t l_210 = 0x189BE62DL;
            int32_t l_334 = 1L;
            int32_t l_346 = 5L;
            int32_t l_350[3];
            uint16_t l_357[7][9] = {{0xDAAAL,0xBFE3L,1UL,0x25E5L,4UL,0xDAAAL,0x25E5L,0x1F96L,0x25E5L},{0xDAAAL,0xBFE3L,1UL,0x25E5L,4UL,0xDAAAL,0x25E5L,0x1F96L,0x25E5L},{0xDAAAL,0xBFE3L,1UL,0x25E5L,4UL,0xDAAAL,0x25E5L,0x1F96L,0x25E5L},{0xDAAAL,0xBFE3L,1UL,0x25E5L,4UL,0xDAAAL,0x25E5L,0x1F96L,0x25E5L},{0xDAAAL,0xBFE3L,1UL,0x25E5L,4UL,0xDAAAL,0x25E5L,0x1F96L,0x25E5L},{0xDAAAL,0xBFE3L,1UL,0x25E5L,4UL,0xDAAAL,0x25E5L,0x1F96L,0x25E5L},{0xDAAAL,0xBFE3L,1UL,0x25E5L,4UL,0xDAAAL,0x25E5L,0x1F96L,0x25E5L}};
            int64_t *l_364 = &p_713->g_52[6];
            uint64_t *l_376[3][2][5] = {{{&p_713->g_87,&p_713->g_87,(void*)0,&p_713->g_87,&p_713->g_209},{&p_713->g_87,&p_713->g_87,(void*)0,&p_713->g_87,&p_713->g_209}},{{&p_713->g_87,&p_713->g_87,(void*)0,&p_713->g_87,&p_713->g_209},{&p_713->g_87,&p_713->g_87,(void*)0,&p_713->g_87,&p_713->g_209}},{{&p_713->g_87,&p_713->g_87,(void*)0,&p_713->g_87,&p_713->g_209},{&p_713->g_87,&p_713->g_87,(void*)0,&p_713->g_87,&p_713->g_209}}};
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_350[i] = 0x2D0B17C0L;
            for (p_69 = 16; (p_69 <= 24); ++p_69)
            { /* block id: 45 */
                uint64_t *l_102 = (void*)0;
                uint64_t *l_103 = &p_713->g_74;
                uint32_t *l_206 = &p_713->g_50;
                uint64_t *l_207 = (void*)0;
                uint64_t *l_208[5];
                int64_t **l_309 = &p_713->g_188;
                int32_t l_320 = (-1L);
                int32_t l_329 = 0x347BCCF2L;
                int32_t l_333 = 0x3F128C11L;
                int32_t l_336 = 6L;
                int32_t l_339 = 0x3F6BD6B7L;
                int32_t l_340 = 0x52869FD2L;
                int32_t l_342 = 0x4915D709L;
                int32_t l_349 = 1L;
                int32_t l_351[5] = {1L,1L,1L,1L,1L};
                uint64_t *l_437 = &p_713->g_87;
                uint64_t **l_438 = &l_207;
                int i;
                for (i = 0; i < 5; i++)
                    l_208[i] = &p_713->g_209;
                (*p_72) &= ((p_68 ^ ((p_71 > (((p_713->g_52[4] && ((safe_mod_func_int64_t_s_s((p_713->g_299 ^= (safe_mul_func_int8_t_s_s((&p_68 == ((safe_mod_func_uint64_t_u_u(((*l_103) = p_71), func_104(l_110, (l_210 |= (safe_unary_minus_func_uint16_t_u((safe_rshift_func_int16_t_s_s((((*l_206) = func_27((p_71 && p_713->g_87), (safe_rshift_func_uint16_t_u_u(((((~func_116(l_118, p_713)) == p_68) > 0UL) > p_68), 7)), l_93, l_205, &p_713->g_203, p_713)) <= p_713->g_3), p_69))))), l_110, p_72, p_713->g_52[6], p_713))) , (void*)0)), (-2L)))), p_713->g_209)) ^ p_713->g_52[4])) == GROUP_DIVERGE(0, 1)) , 0xD309L)) ^ 0x33C1874894D46530L)) == p_70);
            }
            for (l_335 = 4; (l_335 >= 0); l_335 -= 1)
            { /* block id: 153 */
                uint16_t l_453 = 0x1D00L;
                if (l_453)
                    break;
            }
            for (p_713->g_74 = 0; (p_713->g_74 <= 22); p_713->g_74++)
            { /* block id: 158 */
                return p_72;
            }
            (*l_325) = (*p_72);
        }
        if ((**l_205))
            break;
        l_331[0][0] |= (((~((void*)0 != l_205)) && (((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s(((**p_713->g_424) == ((**l_205) < (((*p_713->g_202) , (safe_rshift_func_int8_t_s_s(((-1L) && (((*l_463) = l_462) != ((safe_sub_func_int64_t_s_s((p_713->g_3 = (safe_add_func_int64_t_s_s((((((*l_473) &= (safe_mul_func_uint8_t_u_u((l_470 == ((*l_471) = (void*)0)), p_713->g_3))) & (*l_325)) == p_713->g_52[0]) || 1UL), (**l_205)))), (*l_325))) , &p_71))), (*l_325)))) , (*p_72)))), (**l_205))), p_71)) & p_68) == p_713->g_22)) <= p_713->g_166);
    }
    return p_72;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_175 p_713->g_173 p_713->g_202 p_713->g_10 p_713->g_22 p_713->g_209 p_713->g_52 p_713->g_62 p_713->g_57 p_713->g_89 p_713->g_85 p_713->g_141 p_713->g_142 p_713->g_203
 * writes: p_713->g_202 p_713->g_10 p_713->g_57 p_713->g_201
 */
int64_t  func_104(uint64_t  p_105, uint64_t  p_106, int32_t  p_107, uint32_t * p_108, int32_t  p_109, struct S0 * p_713)
{ /* block id: 76 */
    int32_t **l_211 = &p_713->g_202;
    uint32_t l_236[10][6][4] = {{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}},{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}},{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}},{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}},{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}},{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}},{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}},{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}},{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}},{{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL},{0xE959A60EL,4294967288UL,0xC81BC87AL,0xD09D160DL}}};
    int8_t *l_267[9][10][2] = {{{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0}},{{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0}},{{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0}},{{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0}},{{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0}},{{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0}},{{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0}},{{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0}},{{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0},{&p_713->g_85,(void*)0}}};
    int16_t l_273 = (-1L);
    int32_t l_276 = 1L;
    uint16_t l_294 = 0xBF0DL;
    int32_t l_297 = 0x48DCC073L;
    int32_t *l_298 = &l_276;
    int i, j, k;
    (*l_211) = (*p_713->g_175);
    if ((*p_713->g_202))
    { /* block id: 78 */
        uint64_t l_243[1];
        int32_t *l_275[4][9] = {{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203}};
        int i, j;
        for (i = 0; i < 1; i++)
            l_243[i] = 0xEBCBE0442374C872L;
        for (p_109 = 0; (p_109 == 4); ++p_109)
        { /* block id: 81 */
            uint16_t *l_218 = &p_713->g_57;
            int32_t l_224 = 0L;
            int8_t *l_225 = &p_713->g_166;
            int16_t l_254 = (-1L);
            (1 + 1);
        }
        l_276 = ((safe_add_func_int64_t_s_s(7L, (safe_div_func_int32_t_s_s((l_243[0] > (safe_mod_func_int64_t_s_s((l_243[0] < (safe_div_func_int16_t_s_s(((0x4E5ABEBFL == ((*p_713->g_173) = ((safe_mod_func_int16_t_s_s(((((0x025E57FDL | ((void*)0 == l_267[1][7][1])) || ((((safe_unary_minus_func_uint64_t_u(0xC702A8841FF7031DL)) > ((safe_rshift_func_int16_t_s_s((safe_div_func_uint16_t_u_u(((p_107 ^ l_273) <= 1UL), p_106)), l_243[0])) < p_713->g_22)) , 2L) == (**l_211))) && p_713->g_209) < p_106), 65531UL)) , l_243[0]))) <= p_713->g_52[8]), p_713->g_62))), p_107))), (-1L))))) != p_106);
    }
    else
    { /* block id: 92 */
        int64_t *l_282 = &p_713->g_3;
        int32_t l_285[9][4][4] = {{{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)}},{{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)}},{{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)}},{{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)}},{{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)}},{{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)}},{{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)}},{{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)}},{{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)},{(-7L),0x5D38E617L,(-7L),(-7L)}}};
        uint16_t *l_286 = &p_713->g_57;
        int16_t *l_289[2][9] = {{&l_273,&l_273,&l_273,&p_713->g_89,&l_273,&p_713->g_89,&l_273,&l_273,&l_273},{&l_273,&l_273,&l_273,&p_713->g_89,&l_273,&p_713->g_89,&l_273,&l_273,&l_273}};
        uint64_t *l_295 = (void*)0;
        uint64_t *l_296[1];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_296[i] = &p_713->g_201;
        (**l_211) = (safe_rshift_func_uint8_t_u_s((**l_211), p_105));
        l_297 = (((safe_sub_func_int16_t_s_s((safe_unary_minus_func_uint16_t_u((l_282 == l_282))), ((safe_mul_func_int16_t_s_s((((((*l_286)++) ^ ((**l_211) = p_713->g_89)) , ((**l_211) == 255UL)) , p_109), (((p_713->g_85 , 0x5D0078BCC8813077L) ^ ((p_713->g_201 = ((safe_add_func_uint32_t_u_u((((((safe_rshift_func_uint16_t_u_u(((&l_267[1][7][1] == (void*)0) < 0xDD8E95D1L), GROUP_DIVERGE(2, 1))) < 0x773235E0E7B4870FL) <= 0x4EL) >= 9UL) | GROUP_DIVERGE(1, 1)), l_294)) && l_236[2][2][2])) <= (*p_713->g_141))) | FAKE_DIVERGE(p_713->global_2_offset, get_global_id(2), 10)))) , (**l_211)))) & p_713->g_203) ^ p_713->g_85);
    }
    (*l_298) |= (**l_211);
    return p_713->g_89;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_85 p_713->g_52 p_713->g_57 p_713->g_62 p_713->g_22 p_713->g_10 p_713->g_141 p_713->g_55 p_713->g_3 p_713->g_142 p_713->g_166 p_713->g_172 p_713->g_175 p_713->g_5 p_713->g_4 p_713->g_89 p_713->g_201 p_713->g_202
 * writes: p_713->g_85 p_713->g_57 p_713->g_10 p_713->g_165 p_713->g_173 p_713->g_188 p_713->g_201
 */
uint64_t  func_116(uint16_t  p_117, struct S0 * p_713)
{ /* block id: 47 */
    int32_t **l_119 = (void*)0;
    int32_t l_120 = (-10L);
    int8_t l_199 = 4L;
    uint64_t *l_200 = &p_713->g_201;
    int32_t l_204 = (-1L);
    l_204 &= ((l_119 != l_119) != func_27(p_117, p_117, ((l_119 == (l_120 , func_121(p_117, p_713))) && ((*l_200) &= (!(((safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(l_199, 7)), p_117)) , GROUP_DIVERGE(2, 1)) | 0x3DC7L)))), l_119, p_713->g_202, p_713));
    return (*p_713->g_141);
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_85 p_713->g_52 p_713->g_57 p_713->g_62 p_713->g_22 p_713->g_10 p_713->g_141 p_713->g_55 p_713->g_3 p_713->g_142 p_713->g_166 p_713->g_172 p_713->g_175 p_713->g_5 p_713->g_4 p_713->g_89
 * writes: p_713->g_85 p_713->g_57 p_713->g_10 p_713->g_165 p_713->g_173 p_713->g_188
 */
int32_t ** func_121(int16_t  p_122, struct S0 * p_713)
{ /* block id: 48 */
    int32_t *l_131 = &p_713->g_10;
    int8_t l_178 = 0x3BL;
    int64_t *l_185[8][10][3] = {{{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3}},{{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3}},{{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3}},{{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3}},{{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3}},{{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3}},{{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3}},{{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3},{&p_713->g_52[4],&p_713->g_52[4],&p_713->g_3}}};
    int64_t *l_187[1][10] = {{&p_713->g_52[2],&p_713->g_3,&p_713->g_52[2],&p_713->g_52[2],&p_713->g_3,&p_713->g_52[2],&p_713->g_52[2],&p_713->g_3,&p_713->g_52[2],&p_713->g_52[2]}};
    int64_t **l_186[4][6] = {{&l_185[6][0][2],&l_185[7][5][1],&l_185[7][5][1],&l_185[6][1][2],&l_185[7][5][1],&l_185[7][5][1]},{&l_185[6][0][2],&l_185[7][5][1],&l_185[7][5][1],&l_185[6][1][2],&l_185[7][5][1],&l_185[7][5][1]},{&l_185[6][0][2],&l_185[7][5][1],&l_185[7][5][1],&l_185[6][1][2],&l_185[7][5][1],&l_185[7][5][1]},{&l_185[6][0][2],&l_185[7][5][1],&l_185[7][5][1],&l_185[6][1][2],&l_185[7][5][1],&l_185[7][5][1]}};
    uint32_t l_191[1][1][1];
    int32_t **l_194 = &p_713->g_173;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_191[i][j][k] = 5UL;
        }
    }
    for (p_713->g_85 = 3; (p_713->g_85 <= 8); p_713->g_85 += 1)
    { /* block id: 51 */
        int32_t **l_130 = (void*)0;
        int i;
        (*p_713->g_175) = func_123((((p_713->g_52[p_713->g_85] , func_27(p_713->g_52[p_713->g_85], p_713->g_52[p_713->g_85], (safe_mul_func_uint16_t_u_u(p_713->g_52[p_713->g_85], GROUP_DIVERGE(0, 1))), l_130, l_131, p_713)) <= FAKE_DIVERGE(p_713->local_2_offset, get_local_id(2), 10)) , (safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), p_713->g_52[4]))), func_134(l_131, p_122, p_713->g_62, p_713), p_713->g_22, (*l_131), p_713);
    }
    (*l_131) = (safe_rshift_func_uint16_t_u_u((l_178 && (safe_add_func_uint16_t_u_u(((*p_713->g_5) == l_131), (safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((*l_131), (l_185[7][5][1] != (p_713->g_188 = l_185[6][1][2])))), FAKE_DIVERGE(p_713->local_2_offset, get_local_id(2), 10)))))), (((safe_sub_func_uint64_t_u_u(l_191[0][0][0], (l_185[7][5][1] != (((void*)0 == &p_713->g_166) , l_185[7][5][1])))) == p_713->g_89) > (*l_131))));
    (*l_194) = l_131;
    return &p_713->g_173;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_10 p_713->g_141 p_713->g_55 p_713->g_62 p_713->g_57 p_713->g_52 p_713->g_3 p_713->g_142 p_713->g_166 p_713->g_172
 * writes: p_713->g_10 p_713->g_57 p_713->g_165 p_713->g_173
 */
int32_t * func_123(int16_t  p_124, int32_t * p_125, uint64_t  p_126, int64_t  p_127, struct S0 * p_713)
{ /* block id: 54 */
    int32_t *l_139 = (void*)0;
    int32_t *l_140 = &p_713->g_10;
    uint32_t l_174 = 4294967295UL;
    (*l_140) |= (-1L);
    (*l_140) = (func_27((p_713->g_141 == (void*)0), ((void*)0 != p_713->g_55), p_713->g_62, p_713->g_55, func_134(l_139, ((0xA5L >= ((0x635580C9BFB87D1EL && 1UL) , 1L)) && p_124), (*l_140), p_713), p_713) > p_713->g_52[0]);
    (*l_140) = ((-1L) < ((safe_lshift_func_uint8_t_u_u((safe_add_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u(p_126, 4)), func_149(p_126, &p_713->g_87, (0x36L && (p_124 , (0x0B3DL <= (((GROUP_DIVERGE(1, 1) , (-1L)) < p_713->g_3) , (*l_140))))), p_713))), 0)) != p_713->g_52[4]));
    (*l_140) = (0xCB63E7769F70AFF5L ^ l_174);
    return p_125;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_134(int32_t * p_135, int32_t  p_136, int16_t  p_137, struct S0 * p_713)
{ /* block id: 52 */
    int32_t *l_138 = (void*)0;
    return l_138;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_141 p_713->g_142 p_713->g_166 p_713->g_10 p_713->g_3 p_713->g_172
 * writes: p_713->g_165 p_713->g_173
 */
int64_t  func_149(int32_t  p_150, uint64_t * p_151, int8_t  p_152, struct S0 * p_713)
{ /* block id: 57 */
    uint64_t l_153 = 1UL;
    int32_t *l_154 = &p_713->g_10;
    int8_t **l_164[2];
    uint16_t l_171[3];
    int i;
    for (i = 0; i < 2; i++)
        l_164[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_171[i] = 0x1E0CL;
    l_153 = p_150;
    (*p_713->g_172) = func_134(func_134(l_154, (&p_713->g_87 == (((safe_div_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s((safe_div_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s((-1L), (safe_unary_minus_func_int16_t_s(((p_713->g_165 = &p_152) != ((*p_713->g_141) , (void*)0)))))) != (safe_add_func_int64_t_s_s((safe_mod_func_uint32_t_u_u((&l_153 == &l_153), p_713->g_166)), (*l_154)))), 0x7E2E2A71EAA7743CL)), l_171[1])), (*l_154))) , 0x1B0CDC420A7EECA0L) , (void*)0)), p_713->g_3, p_713), p_152, p_150, p_713);
    return p_150;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_714;
    struct S0* p_713 = &c_714;
    struct S0 c_715 = {
        (-1L), // p_713->g_3
        (void*)0, // p_713->g_4
        &p_713->g_4, // p_713->g_5
        0x59E2A8D3L, // p_713->g_10
        1UL, // p_713->g_22
        0xCFB11589L, // p_713->g_50
        {1L,1L,1L,1L,1L,1L,1L,1L,1L}, // p_713->g_52
        (void*)0, // p_713->g_55
        0xA54DL, // p_713->g_57
        0xEC44L, // p_713->g_62
        0xBFD1E4559F947EB5L, // p_713->g_74
        1L, // p_713->g_85
        0x633F4C626C4802A3L, // p_713->g_87
        (-7L), // p_713->g_89
        0xD5CE2574B05BB3E8L, // p_713->g_142
        &p_713->g_142, // p_713->g_141
        0x73L, // p_713->g_166
        &p_713->g_166, // p_713->g_165
        (void*)0, // p_713->g_173
        &p_713->g_173, // p_713->g_172
        &p_713->g_173, // p_713->g_175
        (void*)0, // p_713->g_188
        {&p_713->g_173,&p_713->g_173,&p_713->g_173,&p_713->g_173,&p_713->g_173,&p_713->g_173,&p_713->g_173,&p_713->g_173}, // p_713->g_192
        (void*)0, // p_713->g_193
        18446744073709551611UL, // p_713->g_201
        0x170816E1L, // p_713->g_203
        &p_713->g_203, // p_713->g_202
        0xC5D1EC6DD82FEA0AL, // p_713->g_209
        {{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203}}, // p_713->g_274
        1UL, // p_713->g_299
        &p_713->g_209, // p_713->g_379
        1UL, // p_713->g_390
        &p_713->g_57, // p_713->g_419
        {{&p_713->g_62,&p_713->g_57,&p_713->g_57,&p_713->g_62,&p_713->g_57,&p_713->g_62},{&p_713->g_62,&p_713->g_57,&p_713->g_57,&p_713->g_62,&p_713->g_57,&p_713->g_62},{&p_713->g_62,&p_713->g_57,&p_713->g_57,&p_713->g_62,&p_713->g_57,&p_713->g_62},{&p_713->g_62,&p_713->g_57,&p_713->g_57,&p_713->g_62,&p_713->g_57,&p_713->g_62},{&p_713->g_62,&p_713->g_57,&p_713->g_57,&p_713->g_62,&p_713->g_57,&p_713->g_62},{&p_713->g_62,&p_713->g_57,&p_713->g_57,&p_713->g_62,&p_713->g_57,&p_713->g_62},{&p_713->g_62,&p_713->g_57,&p_713->g_57,&p_713->g_62,&p_713->g_57,&p_713->g_62}}, // p_713->g_425
        &p_713->g_425[2][4], // p_713->g_424
        0x115AAF96L, // p_713->g_452
        0x7114L, // p_713->g_487
        0x476E90A6L, // p_713->g_496
        &p_713->g_496, // p_713->g_544
        &p_713->g_299, // p_713->g_551
        0xC45A5D76L, // p_713->g_575
        &p_713->g_141, // p_713->g_590
        1UL, // p_713->g_626
        &p_713->g_165, // p_713->g_709
        {{{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203}},{{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203}},{{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203}},{{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203},{&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203,&p_713->g_203}}}, // p_713->g_711
        &p_713->g_203, // p_713->g_712
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
    transparent_crc(p_713->g_3, "p_713->g_3", print_hash_value);
    transparent_crc(p_713->g_10, "p_713->g_10", print_hash_value);
    transparent_crc(p_713->g_22, "p_713->g_22", print_hash_value);
    transparent_crc(p_713->g_50, "p_713->g_50", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_713->g_52[i], "p_713->g_52[i]", print_hash_value);

    }
    transparent_crc(p_713->g_57, "p_713->g_57", print_hash_value);
    transparent_crc(p_713->g_62, "p_713->g_62", print_hash_value);
    transparent_crc(p_713->g_74, "p_713->g_74", print_hash_value);
    transparent_crc(p_713->g_85, "p_713->g_85", print_hash_value);
    transparent_crc(p_713->g_87, "p_713->g_87", print_hash_value);
    transparent_crc(p_713->g_89, "p_713->g_89", print_hash_value);
    transparent_crc(p_713->g_142, "p_713->g_142", print_hash_value);
    transparent_crc(p_713->g_166, "p_713->g_166", print_hash_value);
    transparent_crc(p_713->g_201, "p_713->g_201", print_hash_value);
    transparent_crc(p_713->g_203, "p_713->g_203", print_hash_value);
    transparent_crc(p_713->g_209, "p_713->g_209", print_hash_value);
    transparent_crc(p_713->g_299, "p_713->g_299", print_hash_value);
    transparent_crc(p_713->g_390, "p_713->g_390", print_hash_value);
    transparent_crc(p_713->g_452, "p_713->g_452", print_hash_value);
    transparent_crc(p_713->g_487, "p_713->g_487", print_hash_value);
    transparent_crc(p_713->g_496, "p_713->g_496", print_hash_value);
    transparent_crc(p_713->g_575, "p_713->g_575", print_hash_value);
    transparent_crc(p_713->g_626, "p_713->g_626", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
