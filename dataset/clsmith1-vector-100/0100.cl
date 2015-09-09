// ---fake_divergence -g 89,83,1 -l 89,1,1
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


// Seed: 100

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
   volatile uint32_t  f1;
   int8_t  f2;
   uint32_t  f3;
};

struct S1 {
    volatile int32_t g_7;
    volatile int32_t g_10[1][2][2];
    volatile int32_t g_11;
    volatile int32_t *g_9[4];
    volatile VECTOR(uint64_t, 8) g_16;
    int64_t g_20;
    int16_t g_23;
    int64_t g_45;
    int64_t *g_44;
    VECTOR(int16_t, 2) g_48;
    VECTOR(int16_t, 2) g_49;
    VECTOR(int16_t, 4) g_50;
    uint16_t g_57;
    uint64_t g_59;
    VECTOR(int16_t, 4) g_60;
    VECTOR(uint32_t, 16) g_94;
    VECTOR(int32_t, 16) g_95;
    VECTOR(int32_t, 4) g_99;
    VECTOR(int32_t, 16) g_100;
    VECTOR(int16_t, 4) g_102;
    VECTOR(int32_t, 16) g_104;
    uint64_t g_109;
    uint64_t g_113[7][7][5];
    VECTOR(int32_t, 4) g_114;
    VECTOR(int32_t, 16) g_116;
    VECTOR(uint16_t, 4) g_119;
    VECTOR(int64_t, 2) g_123;
    uint8_t g_129;
    uint8_t g_131;
    int32_t g_133;
    int8_t g_136[10][1][3];
    uint32_t g_138;
    int32_t *g_146;
    int64_t **g_148;
    int64_t **g_154;
    int64_t ***g_153;
    VECTOR(int64_t, 4) g_161;
    VECTOR(int8_t, 4) g_183;
    VECTOR(uint16_t, 8) g_188;
    VECTOR(int8_t, 2) g_193;
    uint32_t g_196;
    uint32_t g_244;
    VECTOR(int32_t, 16) g_296;
    VECTOR(uint32_t, 2) g_314;
    int32_t *g_330;
    int32_t * volatile *g_329[2][2];
    uint16_t g_343;
    VECTOR(uint16_t, 8) g_354;
    VECTOR(int32_t, 8) g_358;
    VECTOR(int32_t, 8) g_368;
    VECTOR(uint32_t, 2) g_370;
    int16_t *g_373;
    uint8_t g_374;
    uint8_t g_406;
    VECTOR(int8_t, 16) g_413;
    VECTOR(int16_t, 4) g_416;
    int64_t ***g_447;
    int32_t ** volatile g_450;
    volatile VECTOR(int64_t, 2) g_474;
    VECTOR(int16_t, 4) g_485;
    VECTOR(int16_t, 4) g_486;
    volatile VECTOR(uint32_t, 16) g_519;
    volatile uint32_t g_549;
    volatile uint32_t *g_548;
    volatile uint32_t ** volatile g_547;
    volatile struct S0 g_570;
    volatile struct S0 *g_569;
    volatile struct S0 ** volatile g_571;
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
uint16_t  func_1(struct S1 * p_572);
int32_t * func_2(int32_t * p_3, int8_t  p_4, struct S1 * p_572);
int64_t  func_24(uint32_t  p_25, int64_t  p_26, int32_t  p_27, struct S1 * p_572);
int8_t  func_32(int32_t  p_33, int32_t  p_34, struct S1 * p_572);
uint8_t  func_37(uint32_t  p_38, int64_t  p_39, int32_t * p_40, struct S1 * p_572);
int32_t * func_41(int64_t  p_42, uint64_t  p_43, struct S1 * p_572);
uint64_t  func_68(uint16_t * p_69, struct S1 * p_572);
int32_t * func_72(int64_t  p_73, int8_t  p_74, uint64_t  p_75, uint32_t  p_76, struct S1 * p_572);
int64_t  func_79(uint32_t  p_80, uint64_t  p_81, uint8_t  p_82, uint64_t  p_83, struct S1 * p_572);
int64_t ** func_87(uint32_t  p_88, int32_t  p_89, struct S1 * p_572);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_572->g_7 p_572->g_9 p_572->g_16 p_572->g_23 p_572->g_44 p_572->g_48 p_572->g_49 p_572->g_50 p_572->g_57 p_572->g_60 p_572->g_59 p_572->g_94 p_572->g_95 p_572->g_99 p_572->g_100 p_572->g_102 p_572->g_104 p_572->g_109 p_572->g_114 p_572->g_116 p_572->g_45 p_572->g_119 p_572->g_123 p_572->g_138 p_572->g_131 p_572->g_153 p_572->g_154 p_572->g_161 p_572->g_183 p_572->g_188 p_572->g_193 p_572->g_129 p_572->g_244 p_572->g_146 p_572->g_196 p_572->g_343 p_572->g_406 p_572->g_413 p_572->g_416 p_572->g_358 p_572->g_314 p_572->g_450 p_572->g_20 p_572->g_474 p_572->g_485 p_572->g_486 p_572->g_519 p_572->g_136 p_572->g_547 p_572->g_133 p_572->g_11 p_572->g_569 p_572->g_571
 * writes: p_572->g_20 p_572->g_57 p_572->g_59 p_572->g_109 p_572->g_113 p_572->g_129 p_572->g_131 p_572->g_133 p_572->g_138 p_572->g_146 p_572->g_148 p_572->g_119 p_572->g_196 p_572->g_99 p_572->g_9 p_572->g_114 p_572->g_50 p_572->g_48 p_572->g_100 p_572->g_45 p_572->g_329 p_572->g_343 p_572->g_116 p_572->g_104 p_572->g_183 p_572->g_406 p_572->g_193 p_572->g_153 p_572->g_447 p_572->g_188 p_572->g_23 p_572->g_368 p_572->g_123 p_572->g_569
 */
uint16_t  func_1(struct S1 * p_572)
{ /* block id: 4 */
    int32_t *l_5 = (void*)0;
    VECTOR(int16_t, 2) l_8 = (VECTOR(int16_t, 2))(1L, 0x55FAL);
    int32_t **l_451[1][6][6] = {{{&l_5,&p_572->g_146,&p_572->g_146,&p_572->g_146,&l_5,&l_5},{&l_5,&p_572->g_146,&p_572->g_146,&p_572->g_146,&l_5,&l_5},{&l_5,&p_572->g_146,&p_572->g_146,&p_572->g_146,&l_5,&l_5},{&l_5,&p_572->g_146,&p_572->g_146,&p_572->g_146,&l_5,&l_5},{&l_5,&p_572->g_146,&p_572->g_146,&p_572->g_146,&l_5,&l_5},{&l_5,&p_572->g_146,&p_572->g_146,&p_572->g_146,&l_5,&l_5}}};
    VECTOR(int8_t, 8) l_467 = (VECTOR(int8_t, 8))(0x28L, (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, (-3L)), (-3L)), (-3L), 0x28L, (-3L));
    VECTOR(int32_t, 8) l_470 = (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x0B694E82L), 0x0B694E82L), 0x0B694E82L, (-2L), 0x0B694E82L);
    uint64_t *l_489 = &p_572->g_113[5][3][3];
    uint32_t l_566[7] = {0x870A57BEL,4294967295UL,0x870A57BEL,0x870A57BEL,4294967295UL,0x870A57BEL,0x870A57BEL};
    int i, j, k;
    (*p_572->g_450) = func_2(l_5, (safe_unary_minus_func_uint8_t_u(((-8L) == (p_572->g_7 <= ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(l_8.xyxxxyxyxyyxxyyx)).sb239)).hi))), (int16_t)(p_572->g_9[2] != l_5)))), (-10L), 0x35F7L)).y)))), p_572);
    for (p_572->g_57 = 0; (p_572->g_57 == 54); p_572->g_57 = safe_add_func_int32_t_s_s(p_572->g_57, 4))
    { /* block id: 151 */
        int32_t *l_463 = (void*)0;
        uint8_t *l_468 = (void*)0;
        VECTOR(uint32_t, 8) l_496 = (VECTOR(uint32_t, 8))(0xB7153E91L, (VECTOR(uint32_t, 4))(0xB7153E91L, (VECTOR(uint32_t, 2))(0xB7153E91L, 0x610FF13CL), 0x610FF13CL), 0x610FF13CL, 0xB7153E91L, 0x610FF13CL);
        int32_t l_514 = 0x50406534L;
        int32_t **l_550[3];
        int32_t l_560 = (-5L);
        int32_t l_561 = 0L;
        int32_t l_562 = 0x151B54B9L;
        int32_t l_563 = 0L;
        int32_t l_564 = 0x62703E74L;
        VECTOR(int32_t, 8) l_565 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4886904FL), 0x4886904FL), 0x4886904FL, 1L, 0x4886904FL);
        int i;
        for (i = 0; i < 3; i++)
            l_550[i] = (void*)0;
        for (p_572->g_343 = 12; (p_572->g_343 <= 42); ++p_572->g_343)
        { /* block id: 154 */
            int64_t l_464 = 0x2A4E067BA0C65605L;
            VECTOR(int32_t, 4) l_471 = (VECTOR(int32_t, 4))(0x585ADDF6L, (VECTOR(int32_t, 2))(0x585ADDF6L, 0x273F7EA4L), 0x273F7EA4L);
            uint32_t l_509 = 0UL;
            int32_t l_510 = (-1L);
            int32_t *l_539 = (void*)0;
            int i;
            for (p_572->g_20 = 0; (p_572->g_20 >= (-9)); p_572->g_20--)
            { /* block id: 157 */
                uint32_t l_469 = 0xB315905DL;
                uint64_t *l_491[7][8][4] = {{{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]}},{{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]}},{{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]}},{{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]}},{{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]}},{{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]}},{{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]},{(void*)0,&p_572->g_59,(void*)0,&p_572->g_113[5][2][0]}}};
                uint64_t **l_490 = &l_491[3][0][1];
                uint16_t *l_497 = (void*)0;
                uint16_t *l_498 = (void*)0;
                uint16_t *l_499 = (void*)0;
                uint16_t *l_500 = (void*)0;
                uint16_t *l_501 = (void*)0;
                uint16_t *l_502 = (void*)0;
                uint16_t *l_503 = (void*)0;
                uint16_t *l_504 = (void*)0;
                uint16_t *l_505 = (void*)0;
                uint16_t *l_506 = (void*)0;
                uint16_t *l_507[8] = {&p_572->g_343,&p_572->g_57,&p_572->g_343,&p_572->g_343,&p_572->g_57,&p_572->g_343,&p_572->g_343,&p_572->g_57};
                int16_t *l_508 = (void*)0;
                int32_t l_557 = 0x19F8E531L;
                int i, j, k;
                for (p_572->g_109 = 0; (p_572->g_109 >= 41); p_572->g_109 = safe_add_func_int64_t_s_s(p_572->g_109, 6))
                { /* block id: 160 */
                    for (p_572->g_45 = 0; (p_572->g_45 != (-4)); --p_572->g_45)
                    { /* block id: 163 */
                        int32_t *l_462 = (void*)0;
                        l_463 = ((*p_572->g_450) = l_462);
                    }
                    l_463 = (*p_572->g_450);
                }
                l_469 = (l_464 && (safe_add_func_uint8_t_u_u((3L <= ((VECTOR(int8_t, 4))(l_467.s6426)).w), ((void*)0 != l_468))));
                if ((l_510 ^= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_470.s63)).xyyxyyyyyyxyyyxx)).sf1)).yyyyyxyyxxyxyyyy, ((VECTOR(int32_t, 4))(l_471.wxww)).yxxwwxyyxxwwxxxx))).even, (int32_t)(safe_rshift_func_uint16_t_u_s((((VECTOR(int64_t, 8))(p_572->g_474.yyyxyxxx)).s6 & (safe_sub_func_int32_t_s_s((p_572->g_60.x ^ ((p_572->g_119.y > ((safe_div_func_int8_t_s_s(p_572->g_57, 0x7AL)) && (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(4294967292UL, ((VECTOR(uint32_t, 4))((0xC8A6L < (p_572->g_50.y = (safe_mul_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 2))(p_572->g_485.zx)).yyxyyyyx, ((VECTOR(int16_t, 2))(0x36CCL, 0x0BA5L)).xxyyxxyy, ((VECTOR(int16_t, 8))(p_572->g_486.zywyxyxz))))).s6, (((GROUP_DIVERGE(2, 1) , (safe_mul_func_uint8_t_u_u((l_489 != ((*l_490) = &p_572->g_109)), (safe_div_func_uint16_t_u_u((p_572->g_188.s4 = (((safe_add_func_uint64_t_u_u(l_469, ((*p_572->g_44) = ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(1L, 1L)).yyyy)).z))) , (((VECTOR(uint32_t, 4))(l_496.s1511)).w , p_572->g_116.s6)) || (**p_572->g_154))), p_572->g_193.y))))) , l_469) || FAKE_DIVERGE(p_572->group_0_offset, get_group_id(0), 10)))), l_471.y)), l_464)))), 4294967287UL, 0UL, 4294967295UL)), ((VECTOR(uint32_t, 2))(0xD33932CEL)), 4294967290UL)), 3UL, ((VECTOR(uint32_t, 2))(1UL)), 4294967295UL, 0UL, l_471.y, 0x04303B5AL, 1UL)).sc < l_471.w))) > p_572->g_49.x)), l_496.s6))), 4)), (int32_t)l_509))).s0067540750771042)).sf))
                { /* block id: 175 */
                    int16_t l_532[9][6][4] = {{{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)}},{{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)}},{{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)}},{{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)}},{{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)}},{{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)}},{{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)}},{{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)}},{{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)},{(-1L),0x4A4CL,0x7E0CL,(-1L)}}};
                    uint16_t l_533 = 0xE8DEL;
                    uint32_t l_542 = 1UL;
                    int64_t *l_558 = &l_464;
                    int32_t l_559 = 0x2A9E7166L;
                    int i, j, k;
                    for (l_469 = 5; (l_469 < 26); l_469 = safe_add_func_int8_t_s_s(l_469, 5))
                    { /* block id: 178 */
                        int8_t l_513 = (-1L);
                        int8_t *l_534 = &l_513;
                        int32_t l_535 = 0x6375BD8EL;
                        int16_t *l_536 = (void*)0;
                        int16_t *l_537 = &p_572->g_23;
                        int32_t l_538[5] = {0x7C61FD44L,0x7C61FD44L,0x7C61FD44L,0x7C61FD44L,0x7C61FD44L};
                        int i;
                        l_514 = l_513;
                        l_539 = ((safe_add_func_uint64_t_u_u((p_572->g_109 != (safe_add_func_int16_t_s_s(((*l_537) = (((((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(0xABD556D9L, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(p_572->g_519.sebcd)).yxyzzzzy)).s62)), 9UL, 0xA11A70A8L)), 4294967295UL, 4294967295UL, 4294967295UL)).s4423616322101125)).sf , (((*l_534) = (safe_add_func_int32_t_s_s(0x42A1A3E3L, ((safe_div_func_uint16_t_u_u((l_469 , (l_513 | 0x3009699E280FC81DL)), (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0UL, 4294967295UL)).yxxx)).z | 1L))) < ((*p_572->g_44) &= (((((safe_div_func_int8_t_s_s((safe_add_func_int32_t_s_s((safe_mod_func_uint16_t_u_u((l_510 = (safe_mod_func_int8_t_s_s((l_469 <= ((l_469 <= (l_532[8][5][1] , p_572->g_358.s6)) , 0xF196L)), p_572->g_100.sb))), p_572->g_136[9][0][1])), l_464)), p_572->g_193.y)) != (-4L)) & l_533) && l_469) || FAKE_DIVERGE(p_572->group_0_offset, get_group_id(0), 10))))))) >= l_535)) ^ 0x54D19C48L) < FAKE_DIVERGE(p_572->local_1_offset, get_local_id(1), 10)) , p_572->g_100.sc) == l_535)), l_469))), l_538[1])) , (*p_572->g_450));
                        l_539 = (*p_572->g_450);
                    }
                    l_559 = ((((safe_add_func_int16_t_s_s(l_542, (safe_rshift_func_int8_t_s_u((((((void*)0 != p_572->g_547) || (p_572->g_109 = (((void*)0 == l_550[1]) < l_469))) ^ ((*p_572->g_44) < ((*l_558) = (p_572->g_123.y = (((safe_div_func_int32_t_s_s((p_572->g_368.s7 = ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(0L, (-10L))).xyyy, ((VECTOR(int32_t, 16))((-9L), (safe_add_func_int64_t_s_s(l_510, (safe_sub_func_uint16_t_u_u((l_557 < p_572->g_133), 65534UL)))), ((VECTOR(int32_t, 2))(0L)), 0x2E4C4BF1L, ((VECTOR(int32_t, 8))(0x39865746L)), ((VECTOR(int32_t, 2))(0x0A9BE195L)), 0x5BCB29F8L)).sa606))).xywzyzzy)).s7607170460377052)).sc19f, ((VECTOR(int32_t, 4))(0x7364A34CL))))).z), l_557)) != 0UL) ^ l_532[3][3][2]))))) , l_533), p_572->g_188.s7)))) , p_572->g_11) , 0x23A1L) > p_572->g_161.x);
                }
                else
                { /* block id: 192 */
                    l_514 &= 1L;
                }
            }
            if (l_496.s5)
                continue;
            (*p_572->g_450) = (*p_572->g_450);
            ++l_566[3];
        }
    }
    (*p_572->g_571) = p_572->g_569;
    return p_572->g_358.s4;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_16 p_572->g_23 p_572->g_44 p_572->g_48 p_572->g_49 p_572->g_50 p_572->g_57 p_572->g_60 p_572->g_59 p_572->g_94 p_572->g_95 p_572->g_99 p_572->g_100 p_572->g_102 p_572->g_104 p_572->g_109 p_572->g_114 p_572->g_116 p_572->g_45 p_572->g_119 p_572->g_123 p_572->g_138 p_572->g_131 p_572->g_153 p_572->g_154 p_572->g_161 p_572->g_183 p_572->g_188 p_572->g_193 p_572->g_129 p_572->g_9 p_572->g_244 p_572->g_146 p_572->g_196 p_572->g_343 p_572->g_406 p_572->g_413 p_572->g_416 p_572->g_358 p_572->g_314 p_572->g_450
 * writes: p_572->g_20 p_572->g_57 p_572->g_59 p_572->g_109 p_572->g_113 p_572->g_129 p_572->g_131 p_572->g_133 p_572->g_138 p_572->g_146 p_572->g_148 p_572->g_119 p_572->g_196 p_572->g_99 p_572->g_9 p_572->g_114 p_572->g_50 p_572->g_48 p_572->g_100 p_572->g_45 p_572->g_329 p_572->g_343 p_572->g_116 p_572->g_104 p_572->g_183 p_572->g_406 p_572->g_193 p_572->g_153 p_572->g_447
 */
int32_t * func_2(int32_t * p_3, int8_t  p_4, struct S1 * p_572)
{ /* block id: 5 */
    int16_t l_17 = 3L;
    int64_t *l_18 = (void*)0;
    int64_t *l_19 = &p_572->g_20;
    int16_t l_448 = 0x2ECFL;
    uint32_t l_449 = 4294967291UL;
    l_449 = ((safe_mul_func_int16_t_s_s(((safe_sub_func_int64_t_s_s(p_4, ((((VECTOR(uint64_t, 4))(p_572->g_16.s1525)).w | ((*l_19) = l_17)) < (safe_add_func_uint16_t_u_u(p_572->g_23, ((p_572->g_23 >= (((func_24((safe_div_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(3L, (p_572->g_183.w = (FAKE_DIVERGE(p_572->global_1_offset, get_global_id(1), 10) > func_32((safe_lshift_func_uint8_t_u_u(((l_17 , (func_37((+p_4), p_572->g_23, func_41(((p_572->g_44 != l_18) , 0x2CA62E26A8ACDD1FL), p_4, p_572), p_572) && 5L)) , l_17), GROUP_DIVERGE(0, 1))), l_17, p_572))))), p_4)), l_17, p_4, p_572) >= 6UL) & p_572->g_314.y) , l_448)) & p_4)))))) < l_448), p_4)) > l_17);
    (*p_572->g_450) = p_3;
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_406 p_572->g_413 p_572->g_183 p_572->g_193 p_572->g_57 p_572->g_416 p_572->g_343 p_572->g_131 p_572->g_358 p_572->g_116
 * writes: p_572->g_406 p_572->g_193 p_572->g_57 p_572->g_343 p_572->g_131 p_572->g_153 p_572->g_447 p_572->g_116
 */
int64_t  func_24(uint32_t  p_25, int64_t  p_26, int32_t  p_27, struct S1 * p_572)
{ /* block id: 126 */
    int32_t *l_389 = (void*)0;
    int32_t *l_390 = (void*)0;
    int32_t *l_391 = (void*)0;
    int32_t l_392[10] = {0x60643AB7L,0x60643AB7L,0x60643AB7L,0x60643AB7L,0x60643AB7L,0x60643AB7L,0x60643AB7L,0x60643AB7L,0x60643AB7L,0x60643AB7L};
    int32_t *l_393 = (void*)0;
    int32_t *l_394 = (void*)0;
    int32_t *l_395 = (void*)0;
    int32_t *l_396 = &l_392[1];
    int32_t *l_397 = (void*)0;
    int32_t *l_398 = (void*)0;
    int32_t *l_399 = &l_392[2];
    int32_t *l_400 = &l_392[1];
    int32_t *l_401 = (void*)0;
    int32_t *l_402 = &l_392[4];
    int32_t *l_403[6];
    int8_t l_404 = (-1L);
    int64_t l_405 = 0L;
    VECTOR(uint8_t, 2) l_414 = (VECTOR(uint8_t, 2))(0xA5L, 0UL);
    uint16_t *l_415 = &p_572->g_57;
    VECTOR(int32_t, 4) l_429 = (VECTOR(int32_t, 4))(0x6CECE008L, (VECTOR(int32_t, 2))(0x6CECE008L, 0x5750870CL), 0x5750870CL);
    VECTOR(int32_t, 2) l_430 = (VECTOR(int32_t, 2))(0x3F6CA24FL, (-1L));
    VECTOR(uint16_t, 2) l_437 = (VECTOR(uint16_t, 2))(0UL, 0xD5A5L);
    uint8_t *l_440[6] = {(void*)0,&p_572->g_374,(void*)0,(void*)0,&p_572->g_374,(void*)0};
    int64_t ****l_443 = &p_572->g_153;
    int64_t ***l_444 = (void*)0;
    int64_t ****l_445 = (void*)0;
    int64_t ****l_446 = &l_444;
    int i;
    for (i = 0; i < 6; i++)
        l_403[i] = (void*)0;
    ++p_572->g_406;
    (*l_402) = (((*l_415) ^= (safe_div_func_int8_t_s_s((p_572->g_193.x ^= (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(p_572->g_413.s6a0f)).x, p_572->g_183.x))), ((VECTOR(uint8_t, 16))(l_414.xxxxyxxxxyxyyyxx)).sd))) ^ ((VECTOR(int16_t, 16))(p_572->g_416.yxyyxxwwwwzxwzzw)).s3);
    for (p_572->g_343 = (-24); (p_572->g_343 == 34); p_572->g_343++)
    { /* block id: 133 */
        uint32_t l_419[1][7];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 7; j++)
                l_419[i][j] = 0xF7B10AB9L;
        }
        p_27 = (l_419[0][4] &= ((*l_396) ^= p_27));
    }
    p_572->g_116.se |= (safe_sub_func_int64_t_s_s((safe_sub_func_int8_t_s_s(((safe_mod_func_int8_t_s_s(p_27, (safe_rshift_func_int16_t_s_s((+(safe_unary_minus_func_uint32_t_u((((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_429.yzxwzzzy)).s5401741215762144)), ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(p_572->g_183.z, ((VECTOR(int32_t, 2))(l_430.xx)), 0x762AB61DL, 0x162CB79FL, 0x30FAB002L, 0x3F88C295L, 0x75E1F897L)), ((VECTOR(int32_t, 16))((safe_add_func_int32_t_s_s(((safe_add_func_uint64_t_u_u(p_26, p_25)) >= 0x2C6FL), (safe_rshift_func_int16_t_s_s(0x1BACL, 2)))), (-4L), (((VECTOR(uint16_t, 16))(((*l_415) = ((VECTOR(uint16_t, 2))(l_437.yy)).lo), (safe_rshift_func_uint8_t_u_s((--p_572->g_131), 1)), 0x9EA6L, (((*l_443) = &p_572->g_148) != (p_572->g_447 = ((*l_446) = l_444))), 0x1A22L, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(65531UL, 65535UL, ((VECTOR(uint16_t, 8))(0x892DL)), 65531UL, ((VECTOR(uint16_t, 2))(0x7D2EL)), ((VECTOR(uint16_t, 2))(0x3C5CL)), 65532UL)).sdf64)), 6UL, 0x3490L, ((VECTOR(uint16_t, 4))(0x04D3L)), 65529UL)).s3 & GROUP_DIVERGE(1, 1)), (*l_396), p_27, p_572->g_358.s2, ((VECTOR(int32_t, 2))(0x72F8FF0AL)), ((VECTOR(int32_t, 2))(0x7BBB6FA4L)), ((VECTOR(int32_t, 4))(0x7279D20FL)), 0x49474F03L, (-4L))).hi))).odd, ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 4))(0x4D099631L))))), ((VECTOR(int32_t, 4))(0x407579A6L))))).xzxywwyzxxyywyxy))))))).even, ((VECTOR(int32_t, 8))((-4L))), ((VECTOR(int32_t, 8))(0x287B7348L))))).s0 , p_27)))), 5)))) , p_26), p_26)), (-1L)));
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_50
 * writes:
 */
int8_t  func_32(int32_t  p_33, int32_t  p_34, struct S1 * p_572)
{ /* block id: 122 */
    int32_t *l_382 = (void*)0;
    int32_t *l_383[4];
    int16_t l_384 = 0x7520L;
    int32_t l_385 = (-1L);
    uint8_t l_386 = 255UL;
    int i;
    for (i = 0; i < 4; i++)
        l_383[i] = (void*)0;
    l_386++;
    return p_572->g_50.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_196
 * writes:
 */
uint8_t  func_37(uint32_t  p_38, int64_t  p_39, int32_t * p_40, struct S1 * p_572)
{ /* block id: 120 */
    return p_572->g_196;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_48 p_572->g_49 p_572->g_50 p_572->g_57 p_572->g_60 p_572->g_59 p_572->g_23 p_572->g_94 p_572->g_95 p_572->g_99 p_572->g_100 p_572->g_102 p_572->g_104 p_572->g_109 p_572->g_114 p_572->g_116 p_572->g_44 p_572->g_45 p_572->g_119 p_572->g_123 p_572->g_138 p_572->g_131 p_572->g_153 p_572->g_154 p_572->g_161 p_572->g_183 p_572->g_188 p_572->g_193 p_572->g_129 p_572->g_9 p_572->g_244 p_572->g_146 p_572->g_196 p_572->g_343
 * writes: p_572->g_57 p_572->g_59 p_572->g_109 p_572->g_113 p_572->g_129 p_572->g_131 p_572->g_133 p_572->g_138 p_572->g_146 p_572->g_148 p_572->g_119 p_572->g_196 p_572->g_99 p_572->g_9 p_572->g_114 p_572->g_50 p_572->g_48 p_572->g_100 p_572->g_45 p_572->g_329 p_572->g_343 p_572->g_116 p_572->g_104
 */
int32_t * func_41(int64_t  p_42, uint64_t  p_43, struct S1 * p_572)
{ /* block id: 7 */
    VECTOR(int8_t, 2) l_46 = (VECTOR(int8_t, 2))(3L, 1L);
    VECTOR(uint8_t, 8) l_47 = (VECTOR(uint8_t, 8))(0x3FL, (VECTOR(uint8_t, 4))(0x3FL, (VECTOR(uint8_t, 2))(0x3FL, 0xCEL), 0xCEL), 0xCEL, 0x3FL, 0xCEL);
    VECTOR(int16_t, 4) l_51 = (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x3613L), 0x3613L);
    VECTOR(int16_t, 16) l_52 = (VECTOR(int16_t, 16))(0x67A0L, (VECTOR(int16_t, 4))(0x67A0L, (VECTOR(int16_t, 2))(0x67A0L, 0L), 0L), 0L, 0x67A0L, 0L, (VECTOR(int16_t, 2))(0x67A0L, 0L), (VECTOR(int16_t, 2))(0x67A0L, 0L), 0x67A0L, 0L, 0x67A0L, 0L);
    VECTOR(int16_t, 2) l_53 = (VECTOR(int16_t, 2))(0x5B4CL, 0x578FL);
    VECTOR(int16_t, 8) l_54 = (VECTOR(int16_t, 8))(0x0D92L, (VECTOR(int16_t, 4))(0x0D92L, (VECTOR(int16_t, 2))(0x0D92L, (-5L)), (-5L)), (-5L), 0x0D92L, (-5L));
    VECTOR(int16_t, 8) l_55 = (VECTOR(int16_t, 8))(0x105CL, (VECTOR(int16_t, 4))(0x105CL, (VECTOR(int16_t, 2))(0x105CL, (-4L)), (-4L)), (-4L), 0x105CL, (-4L));
    uint16_t *l_56[8] = {&p_572->g_57,&p_572->g_57,&p_572->g_57,&p_572->g_57,&p_572->g_57,&p_572->g_57,&p_572->g_57,&p_572->g_57};
    uint64_t *l_58 = &p_572->g_59;
    int32_t l_61 = 0x3FC8A300L;
    VECTOR(int16_t, 2) l_62 = (VECTOR(int16_t, 2))((-1L), 0x0D6AL);
    VECTOR(uint32_t, 16) l_65 = (VECTOR(uint32_t, 16))(0x34F21D6FL, (VECTOR(uint32_t, 4))(0x34F21D6FL, (VECTOR(uint32_t, 2))(0x34F21D6FL, 0x8DFB1A91L), 0x8DFB1A91L), 0x8DFB1A91L, 0x34F21D6FL, 0x8DFB1A91L, (VECTOR(uint32_t, 2))(0x34F21D6FL, 0x8DFB1A91L), (VECTOR(uint32_t, 2))(0x34F21D6FL, 0x8DFB1A91L), 0x34F21D6FL, 0x8DFB1A91L, 0x34F21D6FL, 0x8DFB1A91L);
    int64_t l_339 = 0x74C842035C2B326AL;
    int64_t l_342 = (-1L);
    int32_t *l_344 = (void*)0;
    int32_t *l_345 = (void*)0;
    int32_t *l_346[5];
    int32_t ***l_347 = (void*)0;
    int32_t **l_349[8][7];
    int32_t ***l_348 = &l_349[7][3];
    VECTOR(uint32_t, 2) l_369 = (VECTOR(uint32_t, 2))(0x89AD27CDL, 0xDFFC63BEL);
    int16_t *l_372 = (void*)0;
    int16_t **l_371[1];
    int8_t l_375 = 0x0BL;
    uint32_t *l_376 = (void*)0;
    uint32_t *l_377 = &p_572->g_196;
    uint32_t l_378 = 4UL;
    uint8_t *l_379 = &p_572->g_129;
    int16_t l_380[8][6] = {{(-3L),0x6EF5L,(-3L),(-3L),0x6EF5L,(-3L)},{(-3L),0x6EF5L,(-3L),(-3L),0x6EF5L,(-3L)},{(-3L),0x6EF5L,(-3L),(-3L),0x6EF5L,(-3L)},{(-3L),0x6EF5L,(-3L),(-3L),0x6EF5L,(-3L)},{(-3L),0x6EF5L,(-3L),(-3L),0x6EF5L,(-3L)},{(-3L),0x6EF5L,(-3L),(-3L),0x6EF5L,(-3L)},{(-3L),0x6EF5L,(-3L),(-3L),0x6EF5L,(-3L)},{(-3L),0x6EF5L,(-3L),(-3L),0x6EF5L,(-3L)}};
    int32_t *l_381[3];
    int i, j;
    for (i = 0; i < 5; i++)
        l_346[i] = (void*)0;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
            l_349[i][j] = &l_344;
    }
    for (i = 0; i < 1; i++)
        l_371[i] = &l_372;
    for (i = 0; i < 3; i++)
        l_381[i] = (void*)0;
    p_572->g_116.se = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(0x3EBFL, 0x028EL)), ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 8))(l_46.yxyxxyxy)).lo, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_47.s7245)).zywzwzyw)).odd))).even))).yxyy, ((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 4))(p_572->g_48.yxyy)).zwzwzwyz))))).s42, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 16))(p_572->g_49.yxxxyyxxyyxyxxxx)).sa1ae, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(p_572->g_50.yxyxzxwyywwyzxwx)).even)).even))).even, ((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 8))(l_51.zxxxzywx)).s6103016531445111, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 4))(l_52.sb52f)).yxzzyxzzxzzxzzzx))))), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(l_53.yy)), ((VECTOR(int16_t, 4))(l_54.s7573)).odd))).yyyx)).wwwwzzwz)).s1700257707123137))).odd, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(l_55.s22)).yyyyxxxy, (int16_t)((p_572->g_50.x == (p_572->g_57 &= GROUP_DIVERGE(0, 1))) <= ((*l_58) = p_42))))).hi)).wwwwxxwz, ((VECTOR(int16_t, 16))(p_572->g_60.xwxxwxwyzwyyzyyw)).hi))).s67, ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x3EBDL, 1L)), ((VECTOR(int16_t, 8))(l_61, p_43, 0x1E6AL, 0x44BDL, 1L, ((VECTOR(int16_t, 2))(l_62.xy)), 1L)), ((VECTOR(int16_t, 2))((-1L), (-1L))), ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((-3L), 0x5C85L)).odd, (((safe_add_func_uint8_t_u_u((((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 2))(l_65.s64)), ((VECTOR(uint32_t, 4))((safe_div_func_uint16_t_u_u((p_572->g_343 ^= (func_68(&p_572->g_57, p_572) , ((l_339 || (safe_lshift_func_uint8_t_u_u(l_342, (((p_42 , &l_61) != &l_61) & p_572->g_48.y)))) & p_43))), l_47.s6)), 0xA60374C5L, 4UL, 0x2E4B7865L)).lo, ((VECTOR(uint32_t, 2))(0x8E736708L))))).lo & l_52.sc), p_572->g_188.s5)) , 4294967289UL) < p_572->g_102.w), 0x35ABL, l_51.y, ((VECTOR(int16_t, 2))(0x0B9AL)), 0x3F7DL, 0x5E9CL)).hi, ((VECTOR(int16_t, 4))(0x0F8DL))))))).sfe0a)), ((VECTOR(int16_t, 4))(0x38D5L))))).odd)).yyxy, ((VECTOR(int16_t, 4))(0x147AL))))).xwyzwxww, ((VECTOR(int16_t, 8))((-1L)))))).s67)).xyyxxyyy, ((VECTOR(int16_t, 8))(0x1C94L))))).s24)))))))).xxyyxxxyxyyyxxxy, ((VECTOR(int16_t, 16))(0x6AB1L)), ((VECTOR(int16_t, 16))(1L))))).scc43))).wyzwwxwz, ((VECTOR(uint16_t, 8))(0xF2ADL))))).s20)), 0x3E460AEEL, 4L)).x;
    (*l_348) = &l_344;
    p_572->g_104.sa = p_42;
    p_572->g_146 = (**l_348);
    return l_381[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_23 p_572->g_119 p_572->g_138 p_572->g_44 p_572->g_45 p_572->g_153 p_572->g_154 p_572->g_104 p_572->g_102 p_572->g_59 p_572->g_116 p_572->g_129 p_572->g_99 p_572->g_9 p_572->g_60 p_572->g_161 p_572->g_95 p_572->g_244 p_572->g_146 p_572->g_123 p_572->g_94 p_572->g_100 p_572->g_109 p_572->g_114 p_572->g_57 p_572->g_131 p_572->g_50 p_572->g_48 p_572->g_183 p_572->g_188 p_572->g_193 p_572->g_196
 * writes: p_572->g_59 p_572->g_138 p_572->g_131 p_572->g_146 p_572->g_148 p_572->g_119 p_572->g_99 p_572->g_9 p_572->g_57 p_572->g_114 p_572->g_50 p_572->g_48 p_572->g_129 p_572->g_100 p_572->g_196 p_572->g_109 p_572->g_45 p_572->g_329 p_572->g_113 p_572->g_133
 */
uint64_t  func_68(uint16_t * p_69, struct S1 * p_572)
{ /* block id: 10 */
    uint8_t l_86 = 0xA1L;
    int32_t l_250 = 0x1A180EDBL;
    int64_t l_274 = 0x7C90E5C9369EFC3EL;
    int32_t l_275[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
    int64_t **l_291 = &p_572->g_44;
    VECTOR(uint32_t, 2) l_313 = (VECTOR(uint32_t, 2))(1UL, 1UL);
    VECTOR(uint8_t, 4) l_332 = (VECTOR(uint8_t, 4))(0x6CL, (VECTOR(uint8_t, 2))(0x6CL, 253UL), 253UL);
    int i;
lbl_331:
    for (p_572->g_59 = 0; (p_572->g_59 >= 44); p_572->g_59++)
    { /* block id: 13 */
        int16_t l_84 = 0x0C50L;
        uint64_t l_85[4][1];
        int64_t ***l_155[8][4] = {{&p_572->g_154,&p_572->g_154,&p_572->g_154,&p_572->g_154},{&p_572->g_154,&p_572->g_154,&p_572->g_154,&p_572->g_154},{&p_572->g_154,&p_572->g_154,&p_572->g_154,&p_572->g_154},{&p_572->g_154,&p_572->g_154,&p_572->g_154,&p_572->g_154},{&p_572->g_154,&p_572->g_154,&p_572->g_154,&p_572->g_154},{&p_572->g_154,&p_572->g_154,&p_572->g_154,&p_572->g_154},{&p_572->g_154,&p_572->g_154,&p_572->g_154,&p_572->g_154},{&p_572->g_154,&p_572->g_154,&p_572->g_154,&p_572->g_154}};
        int64_t ***l_156 = &p_572->g_154;
        int32_t **l_245 = &p_572->g_146;
        int32_t l_253 = 0L;
        int32_t l_265[1];
        uint32_t *l_280[9];
        uint32_t **l_279[2][2][6] = {{{(void*)0,&l_280[5],(void*)0,(void*)0,&l_280[5],(void*)0},{(void*)0,&l_280[5],(void*)0,(void*)0,&l_280[5],(void*)0}},{{(void*)0,&l_280[5],(void*)0,(void*)0,&l_280[5],(void*)0},{(void*)0,&l_280[5],(void*)0,(void*)0,&l_280[5],(void*)0}}};
        uint32_t ***l_281 = (void*)0;
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 1; j++)
                l_85[i][j] = 9UL;
        }
        for (i = 0; i < 1; i++)
            l_265[i] = 0x1D81151BL;
        for (i = 0; i < 9; i++)
            l_280[i] = (void*)0;
        if (((((*l_245) = func_72(p_572->g_23, (((safe_mod_func_int64_t_s_s(((func_79(l_84, l_85[1][0], l_86, l_84, p_572) > (safe_div_func_uint32_t_u_u(((l_155[2][3] = p_572->g_153) == l_156), 1UL))) && (***p_572->g_153)), p_572->g_104.sf)) == 9UL) ^ 0x6BL), p_572->g_102.y, l_86, p_572)) == (void*)0) < l_86))
        { /* block id: 68 */
            uint32_t l_246 = 0UL;
            if (l_246)
                break;
        }
        else
        { /* block id: 70 */
            uint64_t *l_249 = &p_572->g_113[5][2][0];
            int32_t l_254 = 0x3EEE2655L;
            int32_t l_273[1][8][10] = {{{0L,0L,1L,0x4ABC96BDL,0x74D38FDDL,0x4ABC96BDL,1L,0L,0L,1L},{0L,0L,1L,0x4ABC96BDL,0x74D38FDDL,0x4ABC96BDL,1L,0L,0L,1L},{0L,0L,1L,0x4ABC96BDL,0x74D38FDDL,0x4ABC96BDL,1L,0L,0L,1L},{0L,0L,1L,0x4ABC96BDL,0x74D38FDDL,0x4ABC96BDL,1L,0L,0L,1L},{0L,0L,1L,0x4ABC96BDL,0x74D38FDDL,0x4ABC96BDL,1L,0L,0L,1L},{0L,0L,1L,0x4ABC96BDL,0x74D38FDDL,0x4ABC96BDL,1L,0L,0L,1L},{0L,0L,1L,0x4ABC96BDL,0x74D38FDDL,0x4ABC96BDL,1L,0L,0L,1L},{0L,0L,1L,0x4ABC96BDL,0x74D38FDDL,0x4ABC96BDL,1L,0L,0L,1L}}};
            int i, j, k;
            if ((safe_lshift_func_int16_t_s_u(0x4D9EL, 8)))
            { /* block id: 71 */
                int32_t *l_251[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_251[i] = (void*)0;
                p_572->g_100.s3 = (p_572->g_116.s5 ^ (!((l_249 != (void*)0) , ((+l_250) > 18446744073709551608UL))));
            }
            else
            { /* block id: 73 */
                int32_t *l_252 = (void*)0;
                int32_t *l_255 = &l_254;
                int32_t *l_256 = &l_250;
                int32_t *l_257 = &l_250;
                int32_t *l_258 = &l_254;
                int32_t *l_259 = (void*)0;
                int32_t *l_260 = (void*)0;
                int32_t *l_261 = (void*)0;
                int32_t *l_262 = (void*)0;
                int32_t *l_263 = (void*)0;
                int32_t *l_264 = &l_253;
                int32_t *l_266 = &l_265[0];
                int32_t *l_267 = (void*)0;
                int32_t *l_268 = (void*)0;
                int32_t *l_269 = &l_254;
                int32_t *l_270 = &l_265[0];
                int32_t *l_271 = &l_250;
                int32_t *l_272[10] = {&l_265[0],&l_265[0],&l_265[0],&l_265[0],&l_265[0],&l_265[0],&l_265[0],&l_265[0],&l_265[0],&l_265[0]};
                uint32_t l_276 = 4294967295UL;
                int i;
                l_276++;
            }
            return l_86;
        }
        l_279[1][0][4] = l_279[0][0][3];
    }
    for (p_572->g_196 = 0; (p_572->g_196 >= 23); p_572->g_196++)
    { /* block id: 82 */
        int64_t l_286[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
        int64_t **l_292 = &p_572->g_44;
        int64_t ***l_297 = &p_572->g_148;
        int32_t l_305 = 0x25883090L;
        int32_t l_322 = 3L;
        int32_t *l_333[8][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
        uint16_t l_335 = 0xC1A6L;
        int32_t **l_338 = &p_572->g_146;
        int i, j;
        for (l_86 = 0; (l_86 >= 36); ++l_86)
        { /* block id: 85 */
            int32_t l_293 = 0x2BA1AC1AL;
            int32_t *l_294 = &p_572->g_133;
            int32_t *l_295 = (void*)0;
            uint32_t *l_298 = (void*)0;
            int32_t l_299 = 0x0B5903BBL;
            int32_t *l_300 = (void*)0;
            int32_t *l_301 = (void*)0;
            int32_t *l_302 = (void*)0;
            int32_t *l_303 = (void*)0;
            int32_t *l_304 = (void*)0;
            l_305 |= ((!l_286[2]) , (((((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 4))(0L, ((VECTOR(int8_t, 2))(9L, (-1L))), 0x2BL)).hi))).even <= (safe_mul_func_int8_t_s_s(((!((VECTOR(int32_t, 16))(0x6F0A4284L, ((VECTOR(int32_t, 2))(1L, (-1L))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((((safe_div_func_uint8_t_u_u(((FAKE_DIVERGE(p_572->group_0_offset, get_group_id(0), 10) ^ ((VECTOR(int32_t, 4))(l_275[5], 1L, 1L, 1L)).z) != (l_299 = ((((l_291 != l_292) != (!(l_293 > (((((p_572->g_296.s8 = ((*l_294) = l_293)) , &p_572->g_148) == ((0x79CE596C879CBFC6L & (l_286[1] >= 0L)) , l_297)) <= l_293) , 0x3579L)))) <= l_293) , l_293))), p_572->g_102.z)) < 0x6FF27BE7L) != l_286[4]) != (*p_69)), ((VECTOR(int32_t, 2))(0L)), (-8L), (-6L), (-1L), 0x7FB66839L, 0x2DB96242L)).odd)).even)), ((VECTOR(int32_t, 4))(1L)), 0x50B2A8E6L, l_286[1], 0L, ((VECTOR(int32_t, 2))(1L)), 1L, 0x7856E487L)).s8) , 0x68L), p_572->g_99.x))) != l_275[7]) && 1L));
        }
        for (p_572->g_109 = 0; (p_572->g_109 >= 12); p_572->g_109 = safe_add_func_int8_t_s_s(p_572->g_109, 1))
        { /* block id: 93 */
            VECTOR(uint32_t, 2) l_312 = (VECTOR(uint32_t, 2))(0x07DE155AL, 1UL);
            int32_t *l_334[4][2] = {{&l_275[5],&l_275[5]},{&l_275[5],&l_275[5]},{&l_275[5],&l_275[5]},{&l_275[5],&l_275[5]}};
            int i, j;
            for (p_572->g_45 = 24; (p_572->g_45 <= 15); --p_572->g_45)
            { /* block id: 96 */
                uint8_t l_321[9] = {0x89L,0x89L,0x89L,0x89L,0x89L,0x89L,0x89L,0x89L,0x89L};
                int32_t *l_323 = (void*)0;
                int32_t *l_324 = (void*)0;
                int32_t *l_325 = &l_275[8];
                int32_t *l_328 = &p_572->g_133;
                int32_t **l_327 = &l_328;
                int32_t ***l_326[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                (*l_325) &= (((safe_add_func_uint16_t_u_u(p_572->g_119.w, ((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 4))(l_312.yxyx)).zywwwzxw, ((VECTOR(uint32_t, 16))(l_313.yyyxyyyxyyyxxyxy)).even))).s67)).xyxyyxyx, ((VECTOR(uint32_t, 2))(p_572->g_314.xx)).xyyxyyyy))).lo, (uint32_t)(safe_add_func_int64_t_s_s((**p_572->g_154), (4294967286UL <= (p_572->g_136[9][0][1] >= ((safe_mul_func_uint16_t_u_u(l_313.y, ((((void*)0 != &p_572->g_133) >= 65527UL) > l_321[6]))) >= 0xEE1FDABA2F5ED9FBL)))))))))).x , l_312.x) , l_322))) > FAKE_DIVERGE(p_572->global_2_offset, get_global_id(2), 10)) & p_572->g_123.y);
                p_572->g_329[1][0] = (l_305 , (void*)0);
                if (p_572->g_59)
                    goto lbl_331;
                (*l_325) |= (((((VECTOR(uint8_t, 2))(l_332.xx)).even > ((VECTOR(uint8_t, 2))(255UL, 0xEFL)).lo) , l_333[0][1]) == &p_572->g_133);
            }
            if (l_86)
                break;
            l_335--;
        }
        (*l_338) = &l_275[5];
    }
    return l_332.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_59 p_572->g_161 p_572->g_99 p_572->g_50 p_572->g_102 p_572->g_48 p_572->g_116 p_572->g_183 p_572->g_153 p_572->g_154 p_572->g_44 p_572->g_45 p_572->g_188 p_572->g_193 p_572->g_104 p_572->g_129 p_572->g_138 p_572->g_9 p_572->g_60 p_572->g_119 p_572->g_95 p_572->g_244 p_572->g_146
 * writes: p_572->g_119 p_572->g_196 p_572->g_99 p_572->g_9 p_572->g_57 p_572->g_114 p_572->g_50 p_572->g_48 p_572->g_129
 */
int32_t * func_72(int64_t  p_73, int8_t  p_74, uint64_t  p_75, uint32_t  p_76, struct S1 * p_572)
{ /* block id: 39 */
    int32_t l_172 = 1L;
    uint32_t l_207 = 0x7B78506AL;
    uint16_t l_224 = 0x92C0L;
    if ((p_572->g_59 != ((safe_sub_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s((p_572->g_119.y = (1L != ((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x6459FD89EE913CB2L, 0x3D79FE80386AEEF4L)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))((-1L), 0x71CF87870E3E810FL)).yyxxyyyxyyxxyyyy)).hi, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(p_572->g_161.ywzwzyzy)).s2, ((safe_mod_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((safe_mod_func_int8_t_s_s(((p_572->g_99.x != (safe_sub_func_uint32_t_u_u((((safe_mod_func_uint64_t_u_u(((l_172 || p_572->g_99.w) & ((safe_rshift_func_uint16_t_u_u(p_75, p_572->g_50.w)) < ((&p_572->g_129 != &p_572->g_131) > 0x704DL))), l_172)) , l_172) > GROUP_DIVERGE(0, 1)), p_73))) | l_172), p_572->g_102.w)), p_76)), p_572->g_48.y)) <= 0xF7L), ((VECTOR(int64_t, 2))(3L)), 0x6431DA364DE6C08DL, 1L, 0x7E56959303987118L, p_74, ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 2))(0x1E647D65CAE71CA8L)), 0x1E03DBD97F58E8F7L, l_172, 0x118B2DAAAC5D9CE6L, 0L)).lo))), ((VECTOR(int64_t, 8))(0x27DD988B33238AD5L))))).odd, ((VECTOR(int64_t, 4))(0x03D5683CA587E9C4L))))).odd)), ((VECTOR(int64_t, 2))(5L))))).yyyyxxyxyyyxyyxx, ((VECTOR(int64_t, 16))(1L))))))).sb354)), 1L, 0L)).s3533667251601211, ((VECTOR(int64_t, 16))(2L))))).hi)).s0243147032320237, ((VECTOR(int64_t, 16))(0x12393677515FA486L))))).sa)), l_172)), (-5L))) , 9UL)))
    { /* block id: 41 */
        int16_t l_194 = (-1L);
        int32_t l_201 = 5L;
        int32_t l_202 = (-1L);
        int32_t l_203 = (-2L);
        int32_t l_204 = (-1L);
        int32_t l_205 = 0L;
        int32_t *l_211 = &l_204;
        volatile int32_t **l_212[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(uint32_t, 2) l_223 = (VECTOR(uint32_t, 2))(1UL, 0x9F6F80DFL);
        int i;
lbl_210:
        for (p_74 = 23; (p_74 >= 17); --p_74)
        { /* block id: 44 */
            uint32_t *l_195 = &p_572->g_196;
            int32_t *l_197 = (void*)0;
            int32_t *l_198 = (void*)0;
            int32_t l_199 = 0x5FC2B05FL;
            int32_t *l_200[6][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int64_t l_206[5][1][1] = {{{0x0DD007751AF70A99L}},{{0x0DD007751AF70A99L}},{{0x0DD007751AF70A99L}},{{0x0DD007751AF70A99L}},{{0x0DD007751AF70A99L}}};
            int i, j, k;
            p_572->g_99.w &= (safe_add_func_uint64_t_u_u((p_572->g_116.sf == (safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_572->g_183.xzzx)).wxwyywxyzxyzwzxw)).s0, 3)), (safe_add_func_int32_t_s_s((+((safe_rshift_func_int16_t_s_s((0L <= (l_172 & p_74)), 9)) , ((((((***p_572->g_153) >= (((((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(p_572->g_188.s7223)))).yyyxywxx)).s74, ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 4))((((*l_195) = ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))((p_572->g_102.y >= ((safe_add_func_int8_t_s_s((((safe_lshift_func_int8_t_s_s(p_74, 3)) < ((VECTOR(int8_t, 4))(p_572->g_193.yyyx)).x) > (p_76 , l_194)), 0xA9L)) ^ p_74)), ((VECTOR(uint32_t, 2))(4294967295UL)), 1UL, 4294967291UL, 0UL, 0xFF036B2EL, 0xBB1884F5L)))).s32, ((VECTOR(uint32_t, 2))(0x8F3C6CE5L))))), 0x4FC0DB7EL, 2UL)), (uint32_t)p_75))), 0xF8B99F19L, p_572->g_104.sf, 0x1A137B01L, 4294967288UL)).s7) , l_172), p_572->g_50.z, 65526UL, 1UL)), ((VECTOR(uint16_t, 4))(0x7F28L))))).lo, ((VECTOR(uint16_t, 2))(0x39A3L))))).xyxxxyyy)))).s42, ((VECTOR(uint16_t, 2))(65535UL))))).odd & p_572->g_129) | 4L) || 2UL)) & p_73) , 0xAF7D3FE88EDFA168L) , &p_572->g_133) == l_195))), p_572->g_138))))), l_194));
            if (l_194)
                goto lbl_210;
            ++l_207;
        }
        (*l_211) = l_202;
        p_572->g_9[0] = p_572->g_9[2];
        for (p_75 = 1; (p_75 < 1); p_75 = safe_add_func_int32_t_s_s(p_75, 7))
        { /* block id: 54 */
            int16_t *l_219 = (void*)0;
            int16_t *l_220 = (void*)0;
            int32_t l_221 = 0x31F2CF1AL;
            uint16_t *l_222 = &p_572->g_57;
            (*l_211) = (safe_div_func_uint16_t_u_u(((*l_222) = (GROUP_DIVERGE(2, 1) && (safe_mul_func_int16_t_s_s(1L, (l_221 = (p_572->g_60.w | p_572->g_161.y)))))), l_223.x));
        }
    }
    else
    { /* block id: 59 */
        int32_t *l_225[5][1];
        int16_t *l_240[10][2][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        uint8_t *l_243 = &p_572->g_129;
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_225[i][j] = (void*)0;
        }
        p_572->g_114.w = l_224;
        p_572->g_99.y ^= ((safe_sub_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u((((safe_add_func_int64_t_s_s(((safe_lshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((l_207 & (+(*p_572->g_44))) , p_76))), ((*l_243) = ((safe_lshift_func_int8_t_s_s((safe_add_func_int16_t_s_s((p_572->g_50.z = (-1L)), (p_75 <= (-10L)))), 7)) < (p_572->g_48.x = (p_572->g_102.y != (safe_div_func_uint32_t_u_u(l_172, 7L)))))))) , p_74), 18446744073709551615UL)) && p_572->g_119.w) , FAKE_DIVERGE(p_572->global_0_offset, get_global_id(0), 10)), p_572->g_95.s6)), 1UL)) >= p_572->g_244);
    }
    return p_572->g_146;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_94 p_572->g_95 p_572->g_99 p_572->g_100 p_572->g_102 p_572->g_104 p_572->g_109 p_572->g_114 p_572->g_116 p_572->g_44 p_572->g_45 p_572->g_119 p_572->g_123 p_572->g_59 p_572->g_57 p_572->g_138 p_572->g_131
 * writes: p_572->g_109 p_572->g_113 p_572->g_129 p_572->g_131 p_572->g_133 p_572->g_138 p_572->g_146 p_572->g_148
 */
int64_t  func_79(uint32_t  p_80, uint64_t  p_81, uint8_t  p_82, uint64_t  p_83, struct S1 * p_572)
{ /* block id: 14 */
    VECTOR(int32_t, 16) l_96 = (VECTOR(int32_t, 16))(0x52087D55L, (VECTOR(int32_t, 4))(0x52087D55L, (VECTOR(int32_t, 2))(0x52087D55L, 0x4CCE31A5L), 0x4CCE31A5L), 0x4CCE31A5L, 0x52087D55L, 0x4CCE31A5L, (VECTOR(int32_t, 2))(0x52087D55L, 0x4CCE31A5L), (VECTOR(int32_t, 2))(0x52087D55L, 0x4CCE31A5L), 0x52087D55L, 0x4CCE31A5L, 0x52087D55L, 0x4CCE31A5L);
    VECTOR(int32_t, 8) l_97 = (VECTOR(int32_t, 8))(0x30505B80L, (VECTOR(int32_t, 4))(0x30505B80L, (VECTOR(int32_t, 2))(0x30505B80L, (-4L)), (-4L)), (-4L), 0x30505B80L, (-4L));
    VECTOR(int32_t, 4) l_98 = (VECTOR(int32_t, 4))(0x15AFD930L, (VECTOR(int32_t, 2))(0x15AFD930L, 0x1C70F4A0L), 0x1C70F4A0L);
    VECTOR(int32_t, 4) l_101 = (VECTOR(int32_t, 4))(0x21D558A6L, (VECTOR(int32_t, 2))(0x21D558A6L, 1L), 1L);
    VECTOR(uint16_t, 8) l_103 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65531UL), 65531UL), 65531UL, 1UL, 65531UL);
    VECTOR(int32_t, 2) l_105 = (VECTOR(int32_t, 2))(0x1F6B8F8FL, 0x5C2D45B9L);
    uint64_t *l_108 = &p_572->g_109;
    uint64_t *l_112 = &p_572->g_113[5][2][0];
    VECTOR(int32_t, 4) l_115 = (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x20BFAB2EL), 0x20BFAB2EL);
    VECTOR(uint16_t, 8) l_120 = (VECTOR(uint16_t, 8))(0xC00AL, (VECTOR(uint16_t, 4))(0xC00AL, (VECTOR(uint16_t, 2))(0xC00AL, 65531UL), 65531UL), 65531UL, 0xC00AL, 65531UL);
    int32_t l_124 = 0x733D140EL;
    int32_t l_127 = 0x0EFA52C4L;
    uint8_t *l_128 = &p_572->g_129;
    uint8_t *l_130 = &p_572->g_131;
    int32_t *l_132 = &p_572->g_133;
    uint32_t l_134 = 0x920C650BL;
    int8_t *l_135[4];
    uint32_t *l_137 = &p_572->g_138;
    int64_t **l_150 = &p_572->g_44;
    int64_t ***l_149 = &l_150;
    int i;
    for (i = 0; i < 4; i++)
        l_135[i] = &p_572->g_136[9][0][1];
    (*l_149) = (p_572->g_148 = func_87(((*l_137) ^= (((VECTOR(int32_t, 2))(0x51F87359L, 0x13D3D183L)).even != ((((((l_105.x = (&p_572->g_45 != ((safe_mod_func_uint16_t_u_u(((safe_add_func_int64_t_s_s(((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 4))(p_572->g_94.s92cd)).even, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-8L), (-1L))).yyyxxxxx)).s21, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_572->g_95.sb615e2be)).s10)), 0x32300A90L)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x3D3B10D6L, 0x09573D52L)), ((VECTOR(int32_t, 4))(6L, (-1L), 9L, 0x44CF876EL)), 8L, 0x1DA9CD7CL)).hi)), 0x54E32F9EL, (-1L), 0x0CDF1940L, ((VECTOR(int32_t, 16))((-6L), ((VECTOR(int32_t, 2))(0x0E0566CBL, 0x16660493L)), ((VECTOR(int32_t, 2))(l_96.s58)), (-1L), ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_97.s2707)).lo, ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_98.wyyzxywxwyyzyxww)))).sf0a6, ((VECTOR(int32_t, 16))(p_572->g_99.xyzxxzyxywxywwyw)).sa6dc))).odd, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_572->g_100.s45)), 0x338A77D7L, (-1L))).even))), 0x7413EFA4L, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_101.yy)).yyxyyyyxyyyyxxyx)).s5e))))), ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(p_572->g_102.yxzy)))).xxxzwwxyywxzwyyz, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_103.s0154655344712010)).s96)).yyxxyxxyyxyxyyxy))).se, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_572->g_104.s465d)), 6L, ((VECTOR(int32_t, 4))(l_105.xyxx)), (safe_mod_func_uint64_t_u_u(((*l_112) = ((*l_108)--)), l_97.s4)), ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(p_572->g_114.wz)).xxyx, ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_115.xxwwzzzyzzzwyxxy)).s970b)).wxzyxwwx, ((VECTOR(int32_t, 16))(p_572->g_116.sd67a201f268cc48a)).hi))).s1732130650715622)).sfd, (int32_t)(((*l_132) = (safe_rshift_func_int16_t_s_s((((*p_572->g_44) & (((*l_130) = ((*l_128) = (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 2))(0xDB93L, 0x8B90L)).xyxx, ((VECTOR(uint16_t, 2))(p_572->g_119.yy)).xxyx))).ywzyzwyxwzzwzxxy, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_120.s4271)), ((((safe_sub_func_uint32_t_u_u((((0x68A6C423DE851E6AL ^ ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(p_572->g_123.xxyxxxxy)).even)).even)), (-7L), 0x5620B5F74D8AA762L)).x) > (((65533UL ^ (l_105.x ^ (l_124 < (((safe_mul_func_int8_t_s_s(0x7EL, (0x392A451E7E789F1AL > 0x711BDEC8B57BA18CL))) ^ p_81) & 0x9E0A6E090A8C73E3L)))) != 255UL) >= l_101.y)) , l_120.s3), l_97.s4)) , l_127) , 0x4B9FL) > 0x36BBL), 0xB673L, 9UL, 0xB125L)).s05, ((VECTOR(uint16_t, 2))(3UL)), ((VECTOR(uint16_t, 2))(65530UL))))), 0x5254L, 0xBED7L)).xwwwwxzyzywzxzxw))))).lo)).s2 >= FAKE_DIVERGE(p_572->local_0_offset, get_local_id(0), 10)))) , l_105.x)) && p_572->g_59), p_80))) , p_572->g_57)))).xyyx, ((VECTOR(int32_t, 4))(0x1C89E38AL)), ((VECTOR(int32_t, 4))((-4L))))))))), 0x50C90199L, 1L)).s42)).xxxx, ((VECTOR(int32_t, 4))(0L))))), 1L, (-7L), 4L, (-1L))).s50, ((VECTOR(int32_t, 2))(2L))))), 0x1A7C4AD1L, 8L)).s7, ((VECTOR(int32_t, 2))((-1L))), 7L, (-6L))).sa2))).xyxx, ((VECTOR(int32_t, 4))(4L)), ((VECTOR(int32_t, 4))((-10L)))))).yyzzzyww)).s5051256322406763)).s0283))).lo))))), 0x49171D8FL, 0x08BFBE81L)), ((VECTOR(uint32_t, 4))(0xC69C3305L))))), p_83, 4294967295UL, 1UL, 0x61A8A250L)).s5 ^ 0x6035A3E3L) & l_115.x), p_572->g_119.y)) , 0x78D2L), l_134)) , &p_572->g_45))) , (void*)0) != &p_83) & 6L) , l_112) == &p_572->g_59))), p_83, p_572));
    return (*p_572->g_44);
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_131
 * writes: p_572->g_131 p_572->g_146
 */
int64_t ** func_87(uint32_t  p_88, int32_t  p_89, struct S1 * p_572)
{ /* block id: 22 */
    int32_t *l_143 = (void*)0;
    for (p_572->g_131 = 15; (p_572->g_131 <= 22); p_572->g_131 = safe_add_func_uint32_t_u_u(p_572->g_131, 7))
    { /* block id: 25 */
        int32_t *l_145 = (void*)0;
        int32_t *l_147 = (void*)0;
        for (p_88 = 0; (p_88 == 17); p_88 = safe_add_func_int32_t_s_s(p_88, 3))
        { /* block id: 28 */
            int32_t **l_144 = &l_143;
            (*l_144) = l_143;
            l_147 = (p_572->g_146 = l_145);
        }
    }
    return &p_572->g_44;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_573;
    struct S1* p_572 = &c_573;
    struct S1 c_574 = {
        9L, // p_572->g_7
        {{{0x35EDADE0L,0x35EDADE0L},{0x35EDADE0L,0x35EDADE0L}}}, // p_572->g_10
        0x78213AF7L, // p_572->g_11
        {&p_572->g_10[0][1][0],&p_572->g_10[0][1][0],&p_572->g_10[0][1][0],&p_572->g_10[0][1][0]}, // p_572->g_9
        (VECTOR(uint64_t, 8))(0xA98CEEF9A8551B32L, (VECTOR(uint64_t, 4))(0xA98CEEF9A8551B32L, (VECTOR(uint64_t, 2))(0xA98CEEF9A8551B32L, 0UL), 0UL), 0UL, 0xA98CEEF9A8551B32L, 0UL), // p_572->g_16
        0x16E2C9BF5E4D8D95L, // p_572->g_20
        0x0410L, // p_572->g_23
        (-10L), // p_572->g_45
        &p_572->g_45, // p_572->g_44
        (VECTOR(int16_t, 2))((-1L), 0x2777L), // p_572->g_48
        (VECTOR(int16_t, 2))(0x550AL, 0L), // p_572->g_49
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x36EBL), 0x36EBL), // p_572->g_50
        0x4AE3L, // p_572->g_57
        0x7EDEBCD59021B0A0L, // p_572->g_59
        (VECTOR(int16_t, 4))(0x0DD3L, (VECTOR(int16_t, 2))(0x0DD3L, (-6L)), (-6L)), // p_572->g_60
        (VECTOR(uint32_t, 16))(0x9BE908AEL, (VECTOR(uint32_t, 4))(0x9BE908AEL, (VECTOR(uint32_t, 2))(0x9BE908AEL, 0x3BB5AF47L), 0x3BB5AF47L), 0x3BB5AF47L, 0x9BE908AEL, 0x3BB5AF47L, (VECTOR(uint32_t, 2))(0x9BE908AEL, 0x3BB5AF47L), (VECTOR(uint32_t, 2))(0x9BE908AEL, 0x3BB5AF47L), 0x9BE908AEL, 0x3BB5AF47L, 0x9BE908AEL, 0x3BB5AF47L), // p_572->g_94
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x5DDBF1A1L), 0x5DDBF1A1L), 0x5DDBF1A1L, 1L, 0x5DDBF1A1L, (VECTOR(int32_t, 2))(1L, 0x5DDBF1A1L), (VECTOR(int32_t, 2))(1L, 0x5DDBF1A1L), 1L, 0x5DDBF1A1L, 1L, 0x5DDBF1A1L), // p_572->g_95
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), // p_572->g_99
        (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, (-2L)), (-2L)), (-2L), 4L, (-2L), (VECTOR(int32_t, 2))(4L, (-2L)), (VECTOR(int32_t, 2))(4L, (-2L)), 4L, (-2L), 4L, (-2L)), // p_572->g_100
        (VECTOR(int16_t, 4))(0x6193L, (VECTOR(int16_t, 2))(0x6193L, (-7L)), (-7L)), // p_572->g_102
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x00028DF6L), 0x00028DF6L), 0x00028DF6L, 0L, 0x00028DF6L, (VECTOR(int32_t, 2))(0L, 0x00028DF6L), (VECTOR(int32_t, 2))(0L, 0x00028DF6L), 0L, 0x00028DF6L, 0L, 0x00028DF6L), // p_572->g_104
        0xAB594DF62E77A0DEL, // p_572->g_109
        {{{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL}},{{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL}},{{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL}},{{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL}},{{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL}},{{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL}},{{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL},{1UL,18446744073709551608UL,0UL,0UL,0xB1F273F2F4379D8BL}}}, // p_572->g_113
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 2L), 2L), // p_572->g_114
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L)), // p_572->g_116
        (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0xDE18L), 0xDE18L), // p_572->g_119
        (VECTOR(int64_t, 2))(0x173B0BAAB2A123F6L, (-3L)), // p_572->g_123
        8UL, // p_572->g_129
        253UL, // p_572->g_131
        0x2EAB2E5FL, // p_572->g_133
        {{{0x2FL,0L,(-2L)}},{{0x2FL,0L,(-2L)}},{{0x2FL,0L,(-2L)}},{{0x2FL,0L,(-2L)}},{{0x2FL,0L,(-2L)}},{{0x2FL,0L,(-2L)}},{{0x2FL,0L,(-2L)}},{{0x2FL,0L,(-2L)}},{{0x2FL,0L,(-2L)}},{{0x2FL,0L,(-2L)}}}, // p_572->g_136
        4294967294UL, // p_572->g_138
        (void*)0, // p_572->g_146
        &p_572->g_44, // p_572->g_148
        &p_572->g_44, // p_572->g_154
        &p_572->g_154, // p_572->g_153
        (VECTOR(int64_t, 4))(0x15DDA2071F149548L, (VECTOR(int64_t, 2))(0x15DDA2071F149548L, 0x1C6687685B39BC73L), 0x1C6687685B39BC73L), // p_572->g_161
        (VECTOR(int8_t, 4))(0x4BL, (VECTOR(int8_t, 2))(0x4BL, 0x6FL), 0x6FL), // p_572->g_183
        (VECTOR(uint16_t, 8))(0x7B2BL, (VECTOR(uint16_t, 4))(0x7B2BL, (VECTOR(uint16_t, 2))(0x7B2BL, 0xB369L), 0xB369L), 0xB369L, 0x7B2BL, 0xB369L), // p_572->g_188
        (VECTOR(int8_t, 2))(0x1FL, 0x7CL), // p_572->g_193
        8UL, // p_572->g_196
        0UL, // p_572->g_244
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x3015F5AFL), 0x3015F5AFL), 0x3015F5AFL, 0L, 0x3015F5AFL, (VECTOR(int32_t, 2))(0L, 0x3015F5AFL), (VECTOR(int32_t, 2))(0L, 0x3015F5AFL), 0L, 0x3015F5AFL, 0L, 0x3015F5AFL), // p_572->g_296
        (VECTOR(uint32_t, 2))(5UL, 0UL), // p_572->g_314
        (void*)0, // p_572->g_330
        {{&p_572->g_330,&p_572->g_330},{&p_572->g_330,&p_572->g_330}}, // p_572->g_329
        0x86D3L, // p_572->g_343
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65528UL), 65528UL), 65528UL, 1UL, 65528UL), // p_572->g_354
        (VECTOR(int32_t, 8))(0x2D0E5574L, (VECTOR(int32_t, 4))(0x2D0E5574L, (VECTOR(int32_t, 2))(0x2D0E5574L, 1L), 1L), 1L, 0x2D0E5574L, 1L), // p_572->g_358
        (VECTOR(int32_t, 8))(0x1C1A4B2BL, (VECTOR(int32_t, 4))(0x1C1A4B2BL, (VECTOR(int32_t, 2))(0x1C1A4B2BL, 0x3C505EC5L), 0x3C505EC5L), 0x3C505EC5L, 0x1C1A4B2BL, 0x3C505EC5L), // p_572->g_368
        (VECTOR(uint32_t, 2))(2UL, 0x0A6EF0F4L), // p_572->g_370
        (void*)0, // p_572->g_373
        0x6AL, // p_572->g_374
        254UL, // p_572->g_406
        (VECTOR(int8_t, 16))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), (-8L)), (-8L)), (-8L), (-6L), (-8L), (VECTOR(int8_t, 2))((-6L), (-8L)), (VECTOR(int8_t, 2))((-6L), (-8L)), (-6L), (-8L), (-6L), (-8L)), // p_572->g_413
        (VECTOR(int16_t, 4))(0x440DL, (VECTOR(int16_t, 2))(0x440DL, 0x6D68L), 0x6D68L), // p_572->g_416
        &p_572->g_154, // p_572->g_447
        &p_572->g_146, // p_572->g_450
        (VECTOR(int64_t, 2))(0L, 5L), // p_572->g_474
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x1C14L), 0x1C14L), // p_572->g_485
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x3D83L), 0x3D83L), // p_572->g_486
        (VECTOR(uint32_t, 16))(0x4C2FAC08L, (VECTOR(uint32_t, 4))(0x4C2FAC08L, (VECTOR(uint32_t, 2))(0x4C2FAC08L, 0x24AACE16L), 0x24AACE16L), 0x24AACE16L, 0x4C2FAC08L, 0x24AACE16L, (VECTOR(uint32_t, 2))(0x4C2FAC08L, 0x24AACE16L), (VECTOR(uint32_t, 2))(0x4C2FAC08L, 0x24AACE16L), 0x4C2FAC08L, 0x24AACE16L, 0x4C2FAC08L, 0x24AACE16L), // p_572->g_519
        0UL, // p_572->g_549
        &p_572->g_549, // p_572->g_548
        &p_572->g_548, // p_572->g_547
        {1UL,0UL,0x2EL,8UL}, // p_572->g_570
        &p_572->g_570, // p_572->g_569
        &p_572->g_569, // p_572->g_571
        sequence_input[get_global_id(0)], // p_572->global_0_offset
        sequence_input[get_global_id(1)], // p_572->global_1_offset
        sequence_input[get_global_id(2)], // p_572->global_2_offset
        sequence_input[get_local_id(0)], // p_572->local_0_offset
        sequence_input[get_local_id(1)], // p_572->local_1_offset
        sequence_input[get_local_id(2)], // p_572->local_2_offset
        sequence_input[get_group_id(0)], // p_572->group_0_offset
        sequence_input[get_group_id(1)], // p_572->group_1_offset
        sequence_input[get_group_id(2)], // p_572->group_2_offset
    };
    c_573 = c_574;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_572);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_572->g_7, "p_572->g_7", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_572->g_10[i][j][k], "p_572->g_10[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_572->g_11, "p_572->g_11", print_hash_value);
    transparent_crc(p_572->g_16.s0, "p_572->g_16.s0", print_hash_value);
    transparent_crc(p_572->g_16.s1, "p_572->g_16.s1", print_hash_value);
    transparent_crc(p_572->g_16.s2, "p_572->g_16.s2", print_hash_value);
    transparent_crc(p_572->g_16.s3, "p_572->g_16.s3", print_hash_value);
    transparent_crc(p_572->g_16.s4, "p_572->g_16.s4", print_hash_value);
    transparent_crc(p_572->g_16.s5, "p_572->g_16.s5", print_hash_value);
    transparent_crc(p_572->g_16.s6, "p_572->g_16.s6", print_hash_value);
    transparent_crc(p_572->g_16.s7, "p_572->g_16.s7", print_hash_value);
    transparent_crc(p_572->g_20, "p_572->g_20", print_hash_value);
    transparent_crc(p_572->g_23, "p_572->g_23", print_hash_value);
    transparent_crc(p_572->g_45, "p_572->g_45", print_hash_value);
    transparent_crc(p_572->g_48.x, "p_572->g_48.x", print_hash_value);
    transparent_crc(p_572->g_48.y, "p_572->g_48.y", print_hash_value);
    transparent_crc(p_572->g_49.x, "p_572->g_49.x", print_hash_value);
    transparent_crc(p_572->g_49.y, "p_572->g_49.y", print_hash_value);
    transparent_crc(p_572->g_50.x, "p_572->g_50.x", print_hash_value);
    transparent_crc(p_572->g_50.y, "p_572->g_50.y", print_hash_value);
    transparent_crc(p_572->g_50.z, "p_572->g_50.z", print_hash_value);
    transparent_crc(p_572->g_50.w, "p_572->g_50.w", print_hash_value);
    transparent_crc(p_572->g_57, "p_572->g_57", print_hash_value);
    transparent_crc(p_572->g_59, "p_572->g_59", print_hash_value);
    transparent_crc(p_572->g_60.x, "p_572->g_60.x", print_hash_value);
    transparent_crc(p_572->g_60.y, "p_572->g_60.y", print_hash_value);
    transparent_crc(p_572->g_60.z, "p_572->g_60.z", print_hash_value);
    transparent_crc(p_572->g_60.w, "p_572->g_60.w", print_hash_value);
    transparent_crc(p_572->g_94.s0, "p_572->g_94.s0", print_hash_value);
    transparent_crc(p_572->g_94.s1, "p_572->g_94.s1", print_hash_value);
    transparent_crc(p_572->g_94.s2, "p_572->g_94.s2", print_hash_value);
    transparent_crc(p_572->g_94.s3, "p_572->g_94.s3", print_hash_value);
    transparent_crc(p_572->g_94.s4, "p_572->g_94.s4", print_hash_value);
    transparent_crc(p_572->g_94.s5, "p_572->g_94.s5", print_hash_value);
    transparent_crc(p_572->g_94.s6, "p_572->g_94.s6", print_hash_value);
    transparent_crc(p_572->g_94.s7, "p_572->g_94.s7", print_hash_value);
    transparent_crc(p_572->g_94.s8, "p_572->g_94.s8", print_hash_value);
    transparent_crc(p_572->g_94.s9, "p_572->g_94.s9", print_hash_value);
    transparent_crc(p_572->g_94.sa, "p_572->g_94.sa", print_hash_value);
    transparent_crc(p_572->g_94.sb, "p_572->g_94.sb", print_hash_value);
    transparent_crc(p_572->g_94.sc, "p_572->g_94.sc", print_hash_value);
    transparent_crc(p_572->g_94.sd, "p_572->g_94.sd", print_hash_value);
    transparent_crc(p_572->g_94.se, "p_572->g_94.se", print_hash_value);
    transparent_crc(p_572->g_94.sf, "p_572->g_94.sf", print_hash_value);
    transparent_crc(p_572->g_95.s0, "p_572->g_95.s0", print_hash_value);
    transparent_crc(p_572->g_95.s1, "p_572->g_95.s1", print_hash_value);
    transparent_crc(p_572->g_95.s2, "p_572->g_95.s2", print_hash_value);
    transparent_crc(p_572->g_95.s3, "p_572->g_95.s3", print_hash_value);
    transparent_crc(p_572->g_95.s4, "p_572->g_95.s4", print_hash_value);
    transparent_crc(p_572->g_95.s5, "p_572->g_95.s5", print_hash_value);
    transparent_crc(p_572->g_95.s6, "p_572->g_95.s6", print_hash_value);
    transparent_crc(p_572->g_95.s7, "p_572->g_95.s7", print_hash_value);
    transparent_crc(p_572->g_95.s8, "p_572->g_95.s8", print_hash_value);
    transparent_crc(p_572->g_95.s9, "p_572->g_95.s9", print_hash_value);
    transparent_crc(p_572->g_95.sa, "p_572->g_95.sa", print_hash_value);
    transparent_crc(p_572->g_95.sb, "p_572->g_95.sb", print_hash_value);
    transparent_crc(p_572->g_95.sc, "p_572->g_95.sc", print_hash_value);
    transparent_crc(p_572->g_95.sd, "p_572->g_95.sd", print_hash_value);
    transparent_crc(p_572->g_95.se, "p_572->g_95.se", print_hash_value);
    transparent_crc(p_572->g_95.sf, "p_572->g_95.sf", print_hash_value);
    transparent_crc(p_572->g_99.x, "p_572->g_99.x", print_hash_value);
    transparent_crc(p_572->g_99.y, "p_572->g_99.y", print_hash_value);
    transparent_crc(p_572->g_99.z, "p_572->g_99.z", print_hash_value);
    transparent_crc(p_572->g_99.w, "p_572->g_99.w", print_hash_value);
    transparent_crc(p_572->g_100.s0, "p_572->g_100.s0", print_hash_value);
    transparent_crc(p_572->g_100.s1, "p_572->g_100.s1", print_hash_value);
    transparent_crc(p_572->g_100.s2, "p_572->g_100.s2", print_hash_value);
    transparent_crc(p_572->g_100.s3, "p_572->g_100.s3", print_hash_value);
    transparent_crc(p_572->g_100.s4, "p_572->g_100.s4", print_hash_value);
    transparent_crc(p_572->g_100.s5, "p_572->g_100.s5", print_hash_value);
    transparent_crc(p_572->g_100.s6, "p_572->g_100.s6", print_hash_value);
    transparent_crc(p_572->g_100.s7, "p_572->g_100.s7", print_hash_value);
    transparent_crc(p_572->g_100.s8, "p_572->g_100.s8", print_hash_value);
    transparent_crc(p_572->g_100.s9, "p_572->g_100.s9", print_hash_value);
    transparent_crc(p_572->g_100.sa, "p_572->g_100.sa", print_hash_value);
    transparent_crc(p_572->g_100.sb, "p_572->g_100.sb", print_hash_value);
    transparent_crc(p_572->g_100.sc, "p_572->g_100.sc", print_hash_value);
    transparent_crc(p_572->g_100.sd, "p_572->g_100.sd", print_hash_value);
    transparent_crc(p_572->g_100.se, "p_572->g_100.se", print_hash_value);
    transparent_crc(p_572->g_100.sf, "p_572->g_100.sf", print_hash_value);
    transparent_crc(p_572->g_102.x, "p_572->g_102.x", print_hash_value);
    transparent_crc(p_572->g_102.y, "p_572->g_102.y", print_hash_value);
    transparent_crc(p_572->g_102.z, "p_572->g_102.z", print_hash_value);
    transparent_crc(p_572->g_102.w, "p_572->g_102.w", print_hash_value);
    transparent_crc(p_572->g_104.s0, "p_572->g_104.s0", print_hash_value);
    transparent_crc(p_572->g_104.s1, "p_572->g_104.s1", print_hash_value);
    transparent_crc(p_572->g_104.s2, "p_572->g_104.s2", print_hash_value);
    transparent_crc(p_572->g_104.s3, "p_572->g_104.s3", print_hash_value);
    transparent_crc(p_572->g_104.s4, "p_572->g_104.s4", print_hash_value);
    transparent_crc(p_572->g_104.s5, "p_572->g_104.s5", print_hash_value);
    transparent_crc(p_572->g_104.s6, "p_572->g_104.s6", print_hash_value);
    transparent_crc(p_572->g_104.s7, "p_572->g_104.s7", print_hash_value);
    transparent_crc(p_572->g_104.s8, "p_572->g_104.s8", print_hash_value);
    transparent_crc(p_572->g_104.s9, "p_572->g_104.s9", print_hash_value);
    transparent_crc(p_572->g_104.sa, "p_572->g_104.sa", print_hash_value);
    transparent_crc(p_572->g_104.sb, "p_572->g_104.sb", print_hash_value);
    transparent_crc(p_572->g_104.sc, "p_572->g_104.sc", print_hash_value);
    transparent_crc(p_572->g_104.sd, "p_572->g_104.sd", print_hash_value);
    transparent_crc(p_572->g_104.se, "p_572->g_104.se", print_hash_value);
    transparent_crc(p_572->g_104.sf, "p_572->g_104.sf", print_hash_value);
    transparent_crc(p_572->g_109, "p_572->g_109", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_572->g_113[i][j][k], "p_572->g_113[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_572->g_114.x, "p_572->g_114.x", print_hash_value);
    transparent_crc(p_572->g_114.y, "p_572->g_114.y", print_hash_value);
    transparent_crc(p_572->g_114.z, "p_572->g_114.z", print_hash_value);
    transparent_crc(p_572->g_114.w, "p_572->g_114.w", print_hash_value);
    transparent_crc(p_572->g_116.s0, "p_572->g_116.s0", print_hash_value);
    transparent_crc(p_572->g_116.s1, "p_572->g_116.s1", print_hash_value);
    transparent_crc(p_572->g_116.s2, "p_572->g_116.s2", print_hash_value);
    transparent_crc(p_572->g_116.s3, "p_572->g_116.s3", print_hash_value);
    transparent_crc(p_572->g_116.s4, "p_572->g_116.s4", print_hash_value);
    transparent_crc(p_572->g_116.s5, "p_572->g_116.s5", print_hash_value);
    transparent_crc(p_572->g_116.s6, "p_572->g_116.s6", print_hash_value);
    transparent_crc(p_572->g_116.s7, "p_572->g_116.s7", print_hash_value);
    transparent_crc(p_572->g_116.s8, "p_572->g_116.s8", print_hash_value);
    transparent_crc(p_572->g_116.s9, "p_572->g_116.s9", print_hash_value);
    transparent_crc(p_572->g_116.sa, "p_572->g_116.sa", print_hash_value);
    transparent_crc(p_572->g_116.sb, "p_572->g_116.sb", print_hash_value);
    transparent_crc(p_572->g_116.sc, "p_572->g_116.sc", print_hash_value);
    transparent_crc(p_572->g_116.sd, "p_572->g_116.sd", print_hash_value);
    transparent_crc(p_572->g_116.se, "p_572->g_116.se", print_hash_value);
    transparent_crc(p_572->g_116.sf, "p_572->g_116.sf", print_hash_value);
    transparent_crc(p_572->g_119.x, "p_572->g_119.x", print_hash_value);
    transparent_crc(p_572->g_119.y, "p_572->g_119.y", print_hash_value);
    transparent_crc(p_572->g_119.z, "p_572->g_119.z", print_hash_value);
    transparent_crc(p_572->g_119.w, "p_572->g_119.w", print_hash_value);
    transparent_crc(p_572->g_123.x, "p_572->g_123.x", print_hash_value);
    transparent_crc(p_572->g_123.y, "p_572->g_123.y", print_hash_value);
    transparent_crc(p_572->g_129, "p_572->g_129", print_hash_value);
    transparent_crc(p_572->g_131, "p_572->g_131", print_hash_value);
    transparent_crc(p_572->g_133, "p_572->g_133", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_572->g_136[i][j][k], "p_572->g_136[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_572->g_138, "p_572->g_138", print_hash_value);
    transparent_crc(p_572->g_161.x, "p_572->g_161.x", print_hash_value);
    transparent_crc(p_572->g_161.y, "p_572->g_161.y", print_hash_value);
    transparent_crc(p_572->g_161.z, "p_572->g_161.z", print_hash_value);
    transparent_crc(p_572->g_161.w, "p_572->g_161.w", print_hash_value);
    transparent_crc(p_572->g_183.x, "p_572->g_183.x", print_hash_value);
    transparent_crc(p_572->g_183.y, "p_572->g_183.y", print_hash_value);
    transparent_crc(p_572->g_183.z, "p_572->g_183.z", print_hash_value);
    transparent_crc(p_572->g_183.w, "p_572->g_183.w", print_hash_value);
    transparent_crc(p_572->g_188.s0, "p_572->g_188.s0", print_hash_value);
    transparent_crc(p_572->g_188.s1, "p_572->g_188.s1", print_hash_value);
    transparent_crc(p_572->g_188.s2, "p_572->g_188.s2", print_hash_value);
    transparent_crc(p_572->g_188.s3, "p_572->g_188.s3", print_hash_value);
    transparent_crc(p_572->g_188.s4, "p_572->g_188.s4", print_hash_value);
    transparent_crc(p_572->g_188.s5, "p_572->g_188.s5", print_hash_value);
    transparent_crc(p_572->g_188.s6, "p_572->g_188.s6", print_hash_value);
    transparent_crc(p_572->g_188.s7, "p_572->g_188.s7", print_hash_value);
    transparent_crc(p_572->g_193.x, "p_572->g_193.x", print_hash_value);
    transparent_crc(p_572->g_193.y, "p_572->g_193.y", print_hash_value);
    transparent_crc(p_572->g_196, "p_572->g_196", print_hash_value);
    transparent_crc(p_572->g_244, "p_572->g_244", print_hash_value);
    transparent_crc(p_572->g_296.s0, "p_572->g_296.s0", print_hash_value);
    transparent_crc(p_572->g_296.s1, "p_572->g_296.s1", print_hash_value);
    transparent_crc(p_572->g_296.s2, "p_572->g_296.s2", print_hash_value);
    transparent_crc(p_572->g_296.s3, "p_572->g_296.s3", print_hash_value);
    transparent_crc(p_572->g_296.s4, "p_572->g_296.s4", print_hash_value);
    transparent_crc(p_572->g_296.s5, "p_572->g_296.s5", print_hash_value);
    transparent_crc(p_572->g_296.s6, "p_572->g_296.s6", print_hash_value);
    transparent_crc(p_572->g_296.s7, "p_572->g_296.s7", print_hash_value);
    transparent_crc(p_572->g_296.s8, "p_572->g_296.s8", print_hash_value);
    transparent_crc(p_572->g_296.s9, "p_572->g_296.s9", print_hash_value);
    transparent_crc(p_572->g_296.sa, "p_572->g_296.sa", print_hash_value);
    transparent_crc(p_572->g_296.sb, "p_572->g_296.sb", print_hash_value);
    transparent_crc(p_572->g_296.sc, "p_572->g_296.sc", print_hash_value);
    transparent_crc(p_572->g_296.sd, "p_572->g_296.sd", print_hash_value);
    transparent_crc(p_572->g_296.se, "p_572->g_296.se", print_hash_value);
    transparent_crc(p_572->g_296.sf, "p_572->g_296.sf", print_hash_value);
    transparent_crc(p_572->g_314.x, "p_572->g_314.x", print_hash_value);
    transparent_crc(p_572->g_314.y, "p_572->g_314.y", print_hash_value);
    transparent_crc(p_572->g_343, "p_572->g_343", print_hash_value);
    transparent_crc(p_572->g_354.s0, "p_572->g_354.s0", print_hash_value);
    transparent_crc(p_572->g_354.s1, "p_572->g_354.s1", print_hash_value);
    transparent_crc(p_572->g_354.s2, "p_572->g_354.s2", print_hash_value);
    transparent_crc(p_572->g_354.s3, "p_572->g_354.s3", print_hash_value);
    transparent_crc(p_572->g_354.s4, "p_572->g_354.s4", print_hash_value);
    transparent_crc(p_572->g_354.s5, "p_572->g_354.s5", print_hash_value);
    transparent_crc(p_572->g_354.s6, "p_572->g_354.s6", print_hash_value);
    transparent_crc(p_572->g_354.s7, "p_572->g_354.s7", print_hash_value);
    transparent_crc(p_572->g_358.s0, "p_572->g_358.s0", print_hash_value);
    transparent_crc(p_572->g_358.s1, "p_572->g_358.s1", print_hash_value);
    transparent_crc(p_572->g_358.s2, "p_572->g_358.s2", print_hash_value);
    transparent_crc(p_572->g_358.s3, "p_572->g_358.s3", print_hash_value);
    transparent_crc(p_572->g_358.s4, "p_572->g_358.s4", print_hash_value);
    transparent_crc(p_572->g_358.s5, "p_572->g_358.s5", print_hash_value);
    transparent_crc(p_572->g_358.s6, "p_572->g_358.s6", print_hash_value);
    transparent_crc(p_572->g_358.s7, "p_572->g_358.s7", print_hash_value);
    transparent_crc(p_572->g_368.s0, "p_572->g_368.s0", print_hash_value);
    transparent_crc(p_572->g_368.s1, "p_572->g_368.s1", print_hash_value);
    transparent_crc(p_572->g_368.s2, "p_572->g_368.s2", print_hash_value);
    transparent_crc(p_572->g_368.s3, "p_572->g_368.s3", print_hash_value);
    transparent_crc(p_572->g_368.s4, "p_572->g_368.s4", print_hash_value);
    transparent_crc(p_572->g_368.s5, "p_572->g_368.s5", print_hash_value);
    transparent_crc(p_572->g_368.s6, "p_572->g_368.s6", print_hash_value);
    transparent_crc(p_572->g_368.s7, "p_572->g_368.s7", print_hash_value);
    transparent_crc(p_572->g_370.x, "p_572->g_370.x", print_hash_value);
    transparent_crc(p_572->g_370.y, "p_572->g_370.y", print_hash_value);
    transparent_crc(p_572->g_374, "p_572->g_374", print_hash_value);
    transparent_crc(p_572->g_406, "p_572->g_406", print_hash_value);
    transparent_crc(p_572->g_413.s0, "p_572->g_413.s0", print_hash_value);
    transparent_crc(p_572->g_413.s1, "p_572->g_413.s1", print_hash_value);
    transparent_crc(p_572->g_413.s2, "p_572->g_413.s2", print_hash_value);
    transparent_crc(p_572->g_413.s3, "p_572->g_413.s3", print_hash_value);
    transparent_crc(p_572->g_413.s4, "p_572->g_413.s4", print_hash_value);
    transparent_crc(p_572->g_413.s5, "p_572->g_413.s5", print_hash_value);
    transparent_crc(p_572->g_413.s6, "p_572->g_413.s6", print_hash_value);
    transparent_crc(p_572->g_413.s7, "p_572->g_413.s7", print_hash_value);
    transparent_crc(p_572->g_413.s8, "p_572->g_413.s8", print_hash_value);
    transparent_crc(p_572->g_413.s9, "p_572->g_413.s9", print_hash_value);
    transparent_crc(p_572->g_413.sa, "p_572->g_413.sa", print_hash_value);
    transparent_crc(p_572->g_413.sb, "p_572->g_413.sb", print_hash_value);
    transparent_crc(p_572->g_413.sc, "p_572->g_413.sc", print_hash_value);
    transparent_crc(p_572->g_413.sd, "p_572->g_413.sd", print_hash_value);
    transparent_crc(p_572->g_413.se, "p_572->g_413.se", print_hash_value);
    transparent_crc(p_572->g_413.sf, "p_572->g_413.sf", print_hash_value);
    transparent_crc(p_572->g_416.x, "p_572->g_416.x", print_hash_value);
    transparent_crc(p_572->g_416.y, "p_572->g_416.y", print_hash_value);
    transparent_crc(p_572->g_416.z, "p_572->g_416.z", print_hash_value);
    transparent_crc(p_572->g_416.w, "p_572->g_416.w", print_hash_value);
    transparent_crc(p_572->g_474.x, "p_572->g_474.x", print_hash_value);
    transparent_crc(p_572->g_474.y, "p_572->g_474.y", print_hash_value);
    transparent_crc(p_572->g_485.x, "p_572->g_485.x", print_hash_value);
    transparent_crc(p_572->g_485.y, "p_572->g_485.y", print_hash_value);
    transparent_crc(p_572->g_485.z, "p_572->g_485.z", print_hash_value);
    transparent_crc(p_572->g_485.w, "p_572->g_485.w", print_hash_value);
    transparent_crc(p_572->g_486.x, "p_572->g_486.x", print_hash_value);
    transparent_crc(p_572->g_486.y, "p_572->g_486.y", print_hash_value);
    transparent_crc(p_572->g_486.z, "p_572->g_486.z", print_hash_value);
    transparent_crc(p_572->g_486.w, "p_572->g_486.w", print_hash_value);
    transparent_crc(p_572->g_519.s0, "p_572->g_519.s0", print_hash_value);
    transparent_crc(p_572->g_519.s1, "p_572->g_519.s1", print_hash_value);
    transparent_crc(p_572->g_519.s2, "p_572->g_519.s2", print_hash_value);
    transparent_crc(p_572->g_519.s3, "p_572->g_519.s3", print_hash_value);
    transparent_crc(p_572->g_519.s4, "p_572->g_519.s4", print_hash_value);
    transparent_crc(p_572->g_519.s5, "p_572->g_519.s5", print_hash_value);
    transparent_crc(p_572->g_519.s6, "p_572->g_519.s6", print_hash_value);
    transparent_crc(p_572->g_519.s7, "p_572->g_519.s7", print_hash_value);
    transparent_crc(p_572->g_519.s8, "p_572->g_519.s8", print_hash_value);
    transparent_crc(p_572->g_519.s9, "p_572->g_519.s9", print_hash_value);
    transparent_crc(p_572->g_519.sa, "p_572->g_519.sa", print_hash_value);
    transparent_crc(p_572->g_519.sb, "p_572->g_519.sb", print_hash_value);
    transparent_crc(p_572->g_519.sc, "p_572->g_519.sc", print_hash_value);
    transparent_crc(p_572->g_519.sd, "p_572->g_519.sd", print_hash_value);
    transparent_crc(p_572->g_519.se, "p_572->g_519.se", print_hash_value);
    transparent_crc(p_572->g_519.sf, "p_572->g_519.sf", print_hash_value);
    transparent_crc(p_572->g_549, "p_572->g_549", print_hash_value);
    transparent_crc(p_572->g_570.f0, "p_572->g_570.f0", print_hash_value);
    transparent_crc(p_572->g_570.f1, "p_572->g_570.f1", print_hash_value);
    transparent_crc(p_572->g_570.f2, "p_572->g_570.f2", print_hash_value);
    transparent_crc(p_572->g_570.f3, "p_572->g_570.f3", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
