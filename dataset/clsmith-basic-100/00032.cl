// ---fake_divergence -g 4531,1,2 -l 23,1,1
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


// Seed: 32

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int64_t  f0;
   uint32_t  f1;
   int64_t  f2;
   int32_t  f3;
   volatile uint64_t  f4;
   uint8_t  f5;
};

struct S1 {
   uint64_t  f0;
};

struct S2 {
    int32_t g_8;
    int32_t g_11;
    volatile int32_t ** volatile g_25;
    int32_t *g_51;
    int32_t **g_50;
    uint8_t g_66;
    int32_t g_79;
    volatile uint8_t g_84[1][7][5];
    int16_t g_90[1][4];
    struct S0 g_107;
    struct S0 * volatile g_108;
    volatile uint8_t g_121;
    int32_t g_127[10][7][3];
    struct S0 g_147;
    int32_t **g_183;
    uint32_t g_186;
    volatile struct S1 g_192;
    int32_t g_194[6];
    int32_t *g_199;
    int32_t **g_198[8];
    uint64_t g_208;
    uint16_t g_224;
    int16_t g_246[8];
    int8_t g_268;
    uint64_t g_283;
    int64_t * volatile g_284;
    struct S0 * volatile *g_330;
    struct S0 * volatile * volatile *g_329;
    volatile struct S0 g_349;
    volatile struct S0 * volatile g_350[10];
    volatile struct S0 g_351;
    int32_t *g_390;
    int32_t ** volatile g_389[6][9];
    int32_t ** volatile g_391[1];
    struct S0 g_415;
    struct S0 *g_414;
    int64_t *g_432;
    int32_t ***g_463;
    int32_t ***g_465;
    int32_t ***g_466;
    struct S0 g_473;
    struct S0 g_474;
    volatile int64_t g_497;
    volatile int64_t *g_496;
    int64_t g_499;
    struct S0 **g_531;
    struct S0 ***g_530;
    volatile uint32_t g_554;
    int8_t g_599;
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
uint16_t  func_1(struct S2 * p_616);
uint8_t  func_4(int32_t  p_5, int64_t  p_6, uint64_t  p_7, struct S2 * p_616);
uint8_t  func_13(int32_t * p_14, int32_t  p_15, int32_t ** p_16, uint8_t  p_17, int32_t ** p_18, struct S2 * p_616);
int32_t * func_19(struct S1  p_20, int32_t * p_21, int32_t ** p_22, uint16_t  p_23, struct S2 * p_616);
int32_t * func_26(uint32_t  p_27, int8_t  p_28, struct S2 * p_616);
int32_t  func_33(int32_t  p_34, uint16_t  p_35, int64_t  p_36, struct S2 * p_616);
uint16_t  func_37(int32_t  p_38, int32_t ** p_39, uint16_t  p_40, int32_t * p_41, struct S2 * p_616);
int32_t ** func_42(int32_t * p_43, struct S2 * p_616);
int32_t * func_46(int32_t ** p_47, uint8_t  p_48, int8_t  p_49, struct S2 * p_616);
int32_t ** func_54(int32_t  p_55, uint32_t  p_56, int32_t * p_57, int32_t  p_58, struct S2 * p_616);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_616->g_8 p_616->g_11 p_616->g_25 p_616->g_50 p_616->g_66 p_616->g_84 p_616->g_90 p_616->g_51 p_616->g_107 p_616->g_108 p_616->g_121 p_616->g_79 p_616->g_147 p_616->g_127 p_616->g_186 p_616->g_192 p_616->g_194 p_616->g_198 p_616->g_199 p_616->g_463 p_616->g_415.f5 p_616->g_530 p_616->g_283 p_616->g_224 p_616->g_554 p_616->g_268 p_616->g_415.f1 p_616->g_390 p_616->g_183 p_616->g_473.f1 p_616->g_349.f3 p_616->g_208 p_616->g_415.f3
 * writes: p_616->g_8 p_616->g_50 p_616->g_66 p_616->g_84 p_616->g_90 p_616->g_107 p_616->g_121 p_616->g_79 p_616->g_51 p_616->g_127 p_616->g_183 p_616->g_186 p_616->g_192 p_616->g_147.f3 p_616->g_415.f5 p_616->g_11 p_616->g_530 p_616->g_283 p_616->g_554 p_616->g_224 p_616->g_268 p_616->g_599 p_616->g_473.f1
 */
uint16_t  func_1(struct S2 * p_616)
{ /* block id: 4 */
    uint32_t l_9 = 0xBDA7FE64L;
    int32_t l_550 = 0x0CCDD66BL;
    int32_t l_553 = 0x714E09C1L;
    uint32_t l_564[2];
    int32_t l_582 = (-8L);
    uint64_t **l_590 = (void*)0;
    int32_t ***l_595 = &p_616->g_198[7];
    uint32_t *l_596 = (void*)0;
    int8_t *l_597 = &p_616->g_268;
    int8_t *l_598 = &p_616->g_599;
    uint32_t *l_608 = &p_616->g_473.f1;
    struct S0 ****l_611 = &p_616->g_530;
    struct S1 l_614 = {0x2D229C357133053DL};
    uint16_t *l_615 = &p_616->g_224;
    int i;
    for (i = 0; i < 2; i++)
        l_564[i] = 0UL;
    if ((safe_mul_func_uint8_t_u_u(func_4(p_616->g_8, p_616->g_8, l_9, p_616), p_616->g_224)))
    { /* block id: 248 */
        int32_t *l_551[5][7] = {{&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_11,&l_550,&l_550,&p_616->g_11},{&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_11,&l_550,&l_550,&p_616->g_11},{&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_11,&l_550,&l_550,&p_616->g_11},{&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_11,&l_550,&l_550,&p_616->g_11},{&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_127[8][0][1],&p_616->g_11,&l_550,&l_550,&p_616->g_11}};
        int32_t l_552 = 0x377DE0AAL;
        int i, j;
        p_616->g_554++;
    }
    else
    { /* block id: 250 */
        struct S1 l_557 = {18446744073709551615UL};
        int32_t *l_562 = &p_616->g_79;
        uint16_t l_563 = 0UL;
        int32_t l_581 = (-9L);
        int32_t l_583 = 1L;
        int32_t l_584 = 0x193036E1L;
        (*p_616->g_50) = (**p_616->g_463);
        for (p_616->g_224 = (-17); (p_616->g_224 == 20); ++p_616->g_224)
        { /* block id: 254 */
            int8_t *l_575 = &p_616->g_268;
            uint32_t *l_576 = &p_616->g_186;
            struct S0 ***l_577 = &p_616->g_531;
            struct S0 ****l_578 = (void*)0;
            int32_t l_579 = 0x05DCED26L;
            int32_t *l_580[3][6] = {{&l_579,&l_579,&l_553,&p_616->g_79,&p_616->g_127[4][3][0],&p_616->g_79},{&l_579,&l_579,&l_553,&p_616->g_79,&p_616->g_127[4][3][0],&p_616->g_79},{&l_579,&l_579,&l_553,&p_616->g_79,&p_616->g_127[4][3][0],&p_616->g_79}};
            uint64_t l_585 = 0x18B083D4E5F5EAC6L;
            int i, j;
            (*p_616->g_390) ^= (((safe_rshift_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u(((((safe_sub_func_int8_t_s_s((p_616->g_192 , ((*l_575) |= ((p_616->g_79 & (-3L)) | 0UL))), (l_576 == (void*)0))) , (*l_562)) , (l_577 != (p_616->g_530 = &p_616->g_531))) >= l_579), p_616->g_415.f1)) ^ p_616->g_107.f3), 0)) , (void*)0) != (void*)0);
            --l_585;
        }
    }
    for (p_616->g_107.f1 = 0; (p_616->g_107.f1 > 49); p_616->g_107.f1 = safe_add_func_uint8_t_u_u(p_616->g_107.f1, 3))
    { /* block id: 263 */
        uint64_t *l_592 = (void*)0;
        uint64_t **l_591[2][4][7];
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 4; j++)
            {
                for (k = 0; k < 7; k++)
                    l_591[i][j][k] = &l_592;
            }
        }
        l_591[1][2][3] = l_590;
        (*p_616->g_183) = &l_550;
    }
    (***l_595) = ((((*l_598) = ((*l_597) |= (!(safe_sub_func_int16_t_s_s(p_616->g_147.f1, ((+(p_616->g_186 |= (l_595 != (void*)0))) , (***l_595))))))) > (safe_mul_func_uint8_t_u_u(((safe_div_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 0)), 0x43B0L)) != (safe_sub_func_uint32_t_u_u((++(*l_608)), ((void*)0 != l_611)))), (((safe_lshift_func_uint16_t_u_s((l_614 , ((*l_615) = (((***l_595) > p_616->g_349.f3) , p_616->g_208))), p_616->g_415.f3)) , &l_608) != (void*)0)))) | 4UL);
    return (***l_595);
}


/* ------------------------------------------ */
/* 
 * reads : p_616->g_11 p_616->g_25 p_616->g_8 p_616->g_50 p_616->g_66 p_616->g_84 p_616->g_90 p_616->g_51 p_616->g_107 p_616->g_108 p_616->g_121 p_616->g_79 p_616->g_147 p_616->g_127 p_616->g_186 p_616->g_192 p_616->g_194 p_616->g_198 p_616->g_199 p_616->g_463 p_616->g_415.f5 p_616->g_530 p_616->g_283
 * writes: p_616->g_8 p_616->g_50 p_616->g_66 p_616->g_84 p_616->g_90 p_616->g_107 p_616->g_121 p_616->g_79 p_616->g_51 p_616->g_127 p_616->g_183 p_616->g_186 p_616->g_192 p_616->g_147.f3 p_616->g_415.f5 p_616->g_11 p_616->g_530 p_616->g_283
 */
uint8_t  func_4(int32_t  p_5, int64_t  p_6, uint64_t  p_7, struct S2 * p_616)
{ /* block id: 5 */
    int32_t *l_10[4][4];
    int32_t **l_12 = &l_10[2][3];
    struct S1 l_24 = {0x894FF5452FA814B1L};
    int32_t *l_193[5] = {&p_616->g_194[0],&p_616->g_194[0],&p_616->g_194[0],&p_616->g_194[0],&p_616->g_194[0]};
    int32_t l_195 = 0x05CFCB85L;
    int64_t *l_196 = &p_616->g_107.f2;
    int32_t l_526[4] = {0x7DFF8641L,0x7DFF8641L,0x7DFF8641L,0x7DFF8641L};
    uint8_t *l_528 = &p_616->g_415.f5;
    uint32_t l_529 = 4294967295UL;
    struct S0 ****l_532 = &p_616->g_530;
    struct S0 ***l_534[4][8] = {{&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531},{&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531},{&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531},{&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531,&p_616->g_531}};
    struct S0 ****l_533 = &l_534[0][2];
    int16_t l_546 = 3L;
    uint32_t l_547[3][5][2] = {{{4294967293UL,5UL},{4294967293UL,5UL},{4294967293UL,5UL},{4294967293UL,5UL},{4294967293UL,5UL}},{{4294967293UL,5UL},{4294967293UL,5UL},{4294967293UL,5UL},{4294967293UL,5UL},{4294967293UL,5UL}},{{4294967293UL,5UL},{4294967293UL,5UL},{4294967293UL,5UL},{4294967293UL,5UL},{4294967293UL,5UL}}};
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
            l_10[i][j] = &p_616->g_11;
    }
    (*l_12) = l_10[2][3];
    (**l_12) = (FAKE_DIVERGE(p_616->group_1_offset, get_group_id(1), 10) , ((p_616->g_11 & ((((*l_528) |= func_13(func_19(l_24, (((void*)0 == p_616->g_25) , func_26((**l_12), ((safe_mod_func_int16_t_s_s((safe_mod_func_int64_t_s_s(((*l_196) = (((l_195 |= func_33(p_6, func_37((**l_12), (p_5 , func_42((*l_12), p_616)), p_5, &p_616->g_11, p_616), p_6, p_616)) , (**l_12)) | GROUP_DIVERGE(1, 1))), p_7)), p_7)) & p_616->g_194[0]), p_616)), p_616->g_198[7], (**l_12), p_616), l_526[0], (*p_616->g_463), p_6, &l_10[2][3], p_616)) , l_529) & p_6)) != 0x00L));
    (***p_616->g_463) = (((*l_533) = ((*l_532) = p_616->g_530)) != &p_616->g_531);
    for (p_616->g_283 = 0; (p_616->g_283 < 19); p_616->g_283++)
    { /* block id: 244 */
        int16_t l_537 = 5L;
        int32_t l_538 = 0x0FBD244EL;
        int32_t l_539 = 0x3C7C0536L;
        int32_t l_540 = 0x52142A84L;
        int32_t l_541 = 1L;
        int32_t l_542 = 0x277C0CB2L;
        int32_t l_543 = (-4L);
        int32_t l_544[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
        int32_t l_545 = 0x15BC6344L;
        int i;
        l_547[1][2][1]--;
    }
    return p_616->g_90[0][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_616->g_11
 * writes:
 */
uint8_t  func_13(int32_t * p_14, int32_t  p_15, int32_t ** p_16, uint8_t  p_17, int32_t ** p_18, struct S2 * p_616)
{ /* block id: 234 */
    int16_t l_527 = 9L;
    l_527 = (**p_18);
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_616->g_79 p_616->g_147.f3 p_616->g_199
 * writes: p_616->g_127 p_616->g_79 p_616->g_147.f3
 */
int32_t * func_19(struct S1  p_20, int32_t * p_21, int32_t ** p_22, uint16_t  p_23, struct S2 * p_616)
{ /* block id: 71 */
    int32_t *l_202 = &p_616->g_79;
    int64_t *l_250 = &p_616->g_147.f2;
    uint16_t l_266 = 0x2C68L;
    int32_t l_290 = 0x491F2F87L;
    int32_t l_291 = 0x0C6C9B1DL;
    int32_t l_294 = 4L;
    int32_t l_296[8][3][5] = {{{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L}},{{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L}},{{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L}},{{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L}},{{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L}},{{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L}},{{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L}},{{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L},{9L,9L,(-10L),0L,4L}}};
    int64_t *l_303 = &p_616->g_147.f2;
    struct S1 l_348 = {0UL};
    struct S0 *l_356 = (void*)0;
    int32_t ***l_464 = (void*)0;
    uint8_t l_500 = 255UL;
    int32_t l_506 = 0x1D7E9ABDL;
    uint32_t *l_525 = &p_616->g_474.f1;
    int i, j, k;
    (*l_202) ^= ((*p_21) = (safe_rshift_func_uint16_t_u_u(0UL, 10)));
    for (p_616->g_147.f3 = 0; (p_616->g_147.f3 <= 7); p_616->g_147.f3 += 1)
    { /* block id: 76 */
        int64_t l_247[4][9][5] = {{{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)}},{{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)}},{{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)}},{{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)},{0L,(-4L),(-7L),0L,(-7L)}}};
        uint64_t *l_253 = &p_616->g_208;
        int64_t l_288 = 0x617F145D16D59C3AL;
        int8_t l_293 = 0x38L;
        int32_t l_368 = (-4L);
        int32_t l_375[9];
        int16_t l_379 = 0x4B80L;
        uint32_t l_386[5];
        int16_t l_403 = 1L;
        int32_t l_438 = 1L;
        uint8_t l_439 = 249UL;
        uint64_t l_508 = 0UL;
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_375[i] = (-1L);
        for (i = 0; i < 5; i++)
            l_386[i] = 4294967289UL;
        (1 + 1);
    }
    return (*p_22);
}


/* ------------------------------------------ */
/* 
 * reads : p_616->g_127
 * writes: p_616->g_127
 */
int32_t * func_26(uint32_t  p_27, int8_t  p_28, struct S2 * p_616)
{ /* block id: 68 */
    int32_t *l_197 = &p_616->g_127[8][0][1];
    (*l_197) &= (-10L);
    return l_197;
}


/* ------------------------------------------ */
/* 
 * reads : p_616->g_8 p_616->g_186 p_616->g_50 p_616->g_51 p_616->g_11 p_616->g_84 p_616->g_90 p_616->g_192 p_616->g_127
 * writes: p_616->g_8 p_616->g_183 p_616->g_186 p_616->g_84 p_616->g_51 p_616->g_192
 */
int32_t  func_33(int32_t  p_34, uint16_t  p_35, int64_t  p_36, struct S2 * p_616)
{ /* block id: 55 */
    int16_t l_180[6][10] = {{0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L},{0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L},{0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L},{0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L},{0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L},{0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L,0x6A89L}};
    int32_t ***l_184 = &p_616->g_50;
    int32_t *l_191 = &p_616->g_127[0][2][1];
    int i, j;
    for (p_616->g_8 = 0; (p_616->g_8 < (-18)); p_616->g_8--)
    { /* block id: 58 */
        uint16_t l_179[6][10] = {{0xFD3FL,0x11DFL,0x133EL,65532UL,0xD4AAL,0xFD3FL,65532UL,0x910CL,65532UL,0xFD3FL},{0xFD3FL,0x11DFL,0x133EL,65532UL,0xD4AAL,0xFD3FL,65532UL,0x910CL,65532UL,0xFD3FL},{0xFD3FL,0x11DFL,0x133EL,65532UL,0xD4AAL,0xFD3FL,65532UL,0x910CL,65532UL,0xFD3FL},{0xFD3FL,0x11DFL,0x133EL,65532UL,0xD4AAL,0xFD3FL,65532UL,0x910CL,65532UL,0xFD3FL},{0xFD3FL,0x11DFL,0x133EL,65532UL,0xD4AAL,0xFD3FL,65532UL,0x910CL,65532UL,0xFD3FL},{0xFD3FL,0x11DFL,0x133EL,65532UL,0xD4AAL,0xFD3FL,65532UL,0x910CL,65532UL,0xFD3FL}};
        int32_t **l_181 = (void*)0;
        int32_t ***l_182[5];
        uint32_t *l_185 = &p_616->g_186;
        int i, j;
        for (i = 0; i < 5; i++)
            l_182[i] = &p_616->g_50;
        l_191 = ((**l_184) = func_46(((safe_add_func_int8_t_s_s(l_179[0][0], l_180[0][3])) , func_54(((l_181 != (p_616->g_183 = &p_616->g_51)) , ((void*)0 != l_184)), (++(*l_185)), (*p_616->g_50), (safe_lshift_func_int8_t_s_u(0L, ((*p_616->g_51) , 5UL))), p_616)), p_35, p_616->g_90[0][2], p_616));
    }
    p_616->g_192 = p_616->g_192;
    return (*l_191);
}


/* ------------------------------------------ */
/* 
 * reads : p_616->g_66 p_616->g_79 p_616->g_8 p_616->g_147 p_616->g_90 p_616->g_107.f5 p_616->g_50 p_616->g_51 p_616->g_84 p_616->g_11 p_616->g_127 p_616->g_107.f1
 * writes: p_616->g_66 p_616->g_79 p_616->g_8 p_616->g_107 p_616->g_84 p_616->g_51 p_616->g_127
 */
uint16_t  func_37(int32_t  p_38, int32_t ** p_39, uint16_t  p_40, int32_t * p_41, struct S2 * p_616)
{ /* block id: 35 */
    int16_t l_131 = 0x3B92L;
    int32_t l_133 = 0x539C2E69L;
    int32_t l_135 = 2L;
    int32_t l_136 = 6L;
    int32_t l_137 = (-1L);
    int32_t l_138 = 0x62E2A71EL;
    int32_t l_140[1];
    struct S0 *l_156 = &p_616->g_147;
    int i;
    for (i = 0; i < 1; i++)
        l_140[i] = 1L;
    for (p_616->g_66 = 0; (p_616->g_66 <= 0); p_616->g_66 += 1)
    { /* block id: 38 */
        int64_t l_130 = (-1L);
        int32_t l_132 = 0x3FB6B4A2L;
        int32_t l_134 = 1L;
        int32_t l_139 = (-1L);
        int32_t l_141[6][1] = {{0x655B79E8L},{0x655B79E8L},{0x655B79E8L},{0x655B79E8L},{0x655B79E8L},{0x655B79E8L}};
        int32_t l_142 = 0x5EB179A8L;
        int64_t l_143 = 0x3C767B023839C749L;
        int i, j;
        for (p_616->g_79 = 0; (p_616->g_79 <= 0); p_616->g_79 += 1)
        { /* block id: 41 */
            int32_t *l_126 = &p_616->g_127[8][0][1];
            int32_t *l_128 = &p_616->g_127[3][6][0];
            int32_t *l_129[2];
            uint32_t l_144 = 0xB94B598FL;
            int i;
            for (i = 0; i < 2; i++)
                l_129[i] = &p_616->g_127[8][0][1];
            l_144++;
            for (p_616->g_8 = 0; (p_616->g_8 >= 0); p_616->g_8 -= 1)
            { /* block id: 45 */
                struct S0 *l_148 = &p_616->g_107;
                struct S1 l_149[2] = {{0x6F621B4F9A3E397DL},{0x6F621B4F9A3E397DL}};
                int i, j;
                (*l_148) = p_616->g_147;
                (*p_39) = func_46(func_54((((!((l_149[1] , (safe_rshift_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s(p_616->g_90[p_616->g_79][(p_616->g_66 + 1)], (safe_div_func_uint16_t_u_u(p_616->g_147.f2, (((void*)0 == l_156) ^ (p_40 && 0x52C7L)))))) != p_38), 2))) && 18446744073709551608UL)) & p_38) , l_132), p_616->g_107.f5, (*p_616->g_50), l_149[1].f0, p_616), p_38, p_616->g_90[0][3], p_616);
                if ((**p_39))
                    continue;
            }
            p_616->g_127[8][0][1] = ((safe_lshift_func_int16_t_s_s((safe_sub_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_u(((void*)0 != &p_41), ((safe_div_func_uint8_t_u_u((((safe_div_func_uint16_t_u_u(((((((0x47L != l_132) & (safe_mod_func_int64_t_s_s(((((**p_616->g_50) && 0x219A2165L) <= (((void*)0 != &p_616->g_51) ^ ((safe_add_func_int64_t_s_s((safe_div_func_uint8_t_u_u((~((0x00BC6D34L || FAKE_DIVERGE(p_616->global_0_offset, get_global_id(0), 10)) && 0x08L)), p_38)), FAKE_DIVERGE(p_616->local_1_offset, get_local_id(1), 10))) , p_40))) | l_140[0]), l_138))) | p_616->g_90[0][1]) | (*l_126)) && p_616->g_107.f1) >= l_135), p_616->g_84[0][1][0])) > p_616->g_79) ^ p_616->g_147.f2), 8L)) <= 0x17463E53FBDC8010L))), 6)), l_131)), p_40)) , (*p_616->g_51));
        }
        return l_134;
    }
    return p_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_616->g_8 p_616->g_50 p_616->g_11 p_616->g_66 p_616->g_84 p_616->g_90 p_616->g_51 p_616->g_107 p_616->g_108 p_616->g_121
 * writes: p_616->g_8 p_616->g_50 p_616->g_66 p_616->g_84 p_616->g_90 p_616->g_107 p_616->g_121
 */
int32_t ** func_42(int32_t * p_43, struct S2 * p_616)
{ /* block id: 7 */
    uint32_t l_59[2];
    int32_t *l_77 = (void*)0;
    int32_t **l_87 = &l_77;
    uint8_t *l_104 = &p_616->g_66;
    int32_t l_105 = 0x14FBAEB3L;
    int32_t l_120 = 0x69F9EEF7L;
    int i;
    for (i = 0; i < 2; i++)
        l_59[i] = 4294967295UL;
    for (p_616->g_8 = 23; (p_616->g_8 < (-2)); --p_616->g_8)
    { /* block id: 10 */
        int32_t ***l_52 = (void*)0;
        int32_t ***l_53 = &p_616->g_50;
        uint8_t *l_64 = (void*)0;
        uint8_t *l_65 = &p_616->g_66;
        int32_t **l_88 = &p_616->g_51;
        int16_t *l_89 = &p_616->g_90[0][3];
        uint16_t l_91 = 65535UL;
        int64_t l_106 = 0x3A09B9819055545BL;
        int32_t l_111 = 0x4D26467EL;
        int32_t l_114 = 8L;
        int32_t l_119 = 0L;
        p_43 = func_46(((*l_53) = p_616->g_50), ((((*l_89) |= ((l_87 = func_54((l_59[0] , (safe_sub_func_uint32_t_u_u(p_616->g_11, ((((safe_lshift_func_uint8_t_u_u((++(*l_65)), 7)) , l_59[0]) , &p_43) == &p_43)))), p_616->g_11, ((((p_616->g_8 | ((safe_mul_func_uint8_t_u_u(((safe_div_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(((safe_add_func_int8_t_s_s((((void*)0 != l_77) ^ (-1L)), FAKE_DIVERGE(p_616->local_2_offset, get_local_id(2), 10))) >= p_616->g_8), p_616->g_8)), p_616->g_11)) , 0x7FL), p_616->g_8)) , p_616->g_8)) > (*p_43)) || 1L) , p_43), (*p_43), p_616)) != l_88)) & l_91) ^ 0xB8AEA20016C6A45DL), p_616->g_8, p_616);
        if ((safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u((***l_53), (((safe_rshift_func_uint16_t_u_u((((((safe_mul_func_int8_t_s_s((-1L), ((((safe_sub_func_uint32_t_u_u(((0x81L && (0x18L & 0x1CL)) , 0x72F777BDL), (safe_mul_func_int16_t_s_s((0x2DDEL != (l_64 != l_104)), p_616->g_90[0][2])))) < p_616->g_90[0][2]) == p_616->g_8) & p_616->g_90[0][2]))) != l_105) ^ 0x4E2C6914L) < 255UL) ^ p_616->g_90[0][2]), 1)) & l_106) | (-1L)))), 255UL)))
        { /* block id: 21 */
            int32_t l_110 = 0L;
            int32_t *l_112 = &l_111;
            int32_t *l_113 = &p_616->g_79;
            int32_t *l_115 = (void*)0;
            int32_t *l_116 = &l_111;
            int32_t *l_117 = &l_114;
            int32_t *l_118[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            (*p_616->g_108) = p_616->g_107;
            l_110 |= (safe_unary_minus_func_int8_t_s(p_616->g_107.f4));
            p_616->g_121++;
            for (l_105 = 0; (l_105 >= (-23)); --l_105)
            { /* block id: 27 */
                return &p_616->g_51;
            }
        }
        else
        { /* block id: 30 */
            if ((**l_87))
                break;
        }
    }
    return &p_616->g_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_616->g_50 p_616->g_51
 * writes:
 */
int32_t * func_46(int32_t ** p_47, uint8_t  p_48, int8_t  p_49, struct S2 * p_616)
{ /* block id: 18 */
    return (*p_616->g_50);
}


/* ------------------------------------------ */
/* 
 * reads : p_616->g_84
 * writes: p_616->g_84
 */
int32_t ** func_54(int32_t  p_55, uint32_t  p_56, int32_t * p_57, int32_t  p_58, struct S2 * p_616)
{ /* block id: 13 */
    int32_t *l_78 = &p_616->g_79;
    int32_t *l_80 = &p_616->g_79;
    int32_t *l_81 = &p_616->g_79;
    int32_t *l_82 = &p_616->g_79;
    int32_t *l_83[6][7] = {{&p_616->g_11,&p_616->g_79,&p_616->g_11,(void*)0,&p_616->g_79,(void*)0,&p_616->g_11},{&p_616->g_11,&p_616->g_79,&p_616->g_11,(void*)0,&p_616->g_79,(void*)0,&p_616->g_11},{&p_616->g_11,&p_616->g_79,&p_616->g_11,(void*)0,&p_616->g_79,(void*)0,&p_616->g_11},{&p_616->g_11,&p_616->g_79,&p_616->g_11,(void*)0,&p_616->g_79,(void*)0,&p_616->g_11},{&p_616->g_11,&p_616->g_79,&p_616->g_11,(void*)0,&p_616->g_79,(void*)0,&p_616->g_11},{&p_616->g_11,&p_616->g_79,&p_616->g_11,(void*)0,&p_616->g_79,(void*)0,&p_616->g_11}};
    int i, j;
    p_616->g_84[0][1][0]++;
    return &p_616->g_51;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_617;
    struct S2* p_616 = &c_617;
    struct S2 c_618 = {
        0x45559507L, // p_616->g_8
        (-1L), // p_616->g_11
        (void*)0, // p_616->g_25
        &p_616->g_11, // p_616->g_51
        &p_616->g_51, // p_616->g_50
        0xFEL, // p_616->g_66
        0x19D5C01CL, // p_616->g_79
        {{{255UL,0xAEL,255UL,255UL,0xAEL},{255UL,0xAEL,255UL,255UL,0xAEL},{255UL,0xAEL,255UL,255UL,0xAEL},{255UL,0xAEL,255UL,255UL,0xAEL},{255UL,0xAEL,255UL,255UL,0xAEL},{255UL,0xAEL,255UL,255UL,0xAEL},{255UL,0xAEL,255UL,255UL,0xAEL}}}, // p_616->g_84
        {{0x0EC4L,0x0EC4L,0x0EC4L,0x0EC4L}}, // p_616->g_90
        {1L,0x2358462BL,0x54EFE8F334EEA40FL,0x304FC3DDL,0x68C87B4EC1833B1DL,255UL}, // p_616->g_107
        &p_616->g_107, // p_616->g_108
        0x86L, // p_616->g_121
        {{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}},{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}},{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}},{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}},{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}},{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}},{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}},{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}},{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}},{{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L},{0x1EE9290BL,0x20AB37EAL,1L}}}, // p_616->g_127
        {0x73549B09EDA30AC0L,2UL,-7L,0x3788430CL,0x75795804E8CAA09BL,0x6BL}, // p_616->g_147
        &p_616->g_51, // p_616->g_183
        0x61E81591L, // p_616->g_186
        {0x0D31FF24D7E94F4AL}, // p_616->g_192
        {0x61E40C4DL,(-1L),0x61E40C4DL,0x61E40C4DL,(-1L),0x61E40C4DL}, // p_616->g_194
        &p_616->g_11, // p_616->g_199
        {&p_616->g_199,&p_616->g_199,&p_616->g_199,&p_616->g_199,&p_616->g_199,&p_616->g_199,&p_616->g_199,&p_616->g_199}, // p_616->g_198
        0xFC4D6C543C7B79E9L, // p_616->g_208
        0x136CL, // p_616->g_224
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_616->g_246
        0L, // p_616->g_268
        0x14C40C3B2E693293L, // p_616->g_283
        &p_616->g_107.f2, // p_616->g_284
        (void*)0, // p_616->g_330
        &p_616->g_330, // p_616->g_329
        {0x00426B1E962D3FBAL,0x5CA382A8L,1L,0x11A237E6L,0x2FBBF1C53AE2FDA7L,0x49L}, // p_616->g_349
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_616->g_350
        {7L,7UL,0x759706343A8D199BL,-9L,0x45E3DE9200326CECL,255UL}, // p_616->g_351
        &p_616->g_127[6][1][1], // p_616->g_390
        {{&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390},{&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390},{&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390},{&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390},{&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390},{&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390,&p_616->g_390}}, // p_616->g_389
        {&p_616->g_390}, // p_616->g_391
        {0x2D68A61375C96C76L,0x8D7D62A6L,0x0220E7C56A331635L,0x15DC25C0L,0UL,255UL}, // p_616->g_415
        &p_616->g_415, // p_616->g_414
        &p_616->g_107.f2, // p_616->g_432
        &p_616->g_198[3], // p_616->g_463
        &p_616->g_198[1], // p_616->g_465
        (void*)0, // p_616->g_466
        {0x64382FE3FA74FE00L,0xC8829DF6L,0x468C47A08A38368AL,0x06DC91FEL,0x6223D4FAA9C2377AL,0xE1L}, // p_616->g_473
        {0L,4294967295UL,0x444947A9E6469B5EL,0x45E57118L,3UL,0x71L}, // p_616->g_474
        1L, // p_616->g_497
        &p_616->g_497, // p_616->g_496
        0x24E663835BEE56A3L, // p_616->g_499
        &p_616->g_414, // p_616->g_531
        &p_616->g_531, // p_616->g_530
        4294967295UL, // p_616->g_554
        0x5FL, // p_616->g_599
        sequence_input[get_global_id(0)], // p_616->global_0_offset
        sequence_input[get_global_id(1)], // p_616->global_1_offset
        sequence_input[get_global_id(2)], // p_616->global_2_offset
        sequence_input[get_local_id(0)], // p_616->local_0_offset
        sequence_input[get_local_id(1)], // p_616->local_1_offset
        sequence_input[get_local_id(2)], // p_616->local_2_offset
        sequence_input[get_group_id(0)], // p_616->group_0_offset
        sequence_input[get_group_id(1)], // p_616->group_1_offset
        sequence_input[get_group_id(2)], // p_616->group_2_offset
    };
    c_617 = c_618;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_616);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_616->g_8, "p_616->g_8", print_hash_value);
    transparent_crc(p_616->g_11, "p_616->g_11", print_hash_value);
    transparent_crc(p_616->g_66, "p_616->g_66", print_hash_value);
    transparent_crc(p_616->g_79, "p_616->g_79", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_616->g_84[i][j][k], "p_616->g_84[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_616->g_90[i][j], "p_616->g_90[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_616->g_107.f0, "p_616->g_107.f0", print_hash_value);
    transparent_crc(p_616->g_107.f1, "p_616->g_107.f1", print_hash_value);
    transparent_crc(p_616->g_107.f2, "p_616->g_107.f2", print_hash_value);
    transparent_crc(p_616->g_107.f3, "p_616->g_107.f3", print_hash_value);
    transparent_crc(p_616->g_107.f4, "p_616->g_107.f4", print_hash_value);
    transparent_crc(p_616->g_107.f5, "p_616->g_107.f5", print_hash_value);
    transparent_crc(p_616->g_121, "p_616->g_121", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_616->g_127[i][j][k], "p_616->g_127[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_616->g_147.f0, "p_616->g_147.f0", print_hash_value);
    transparent_crc(p_616->g_147.f1, "p_616->g_147.f1", print_hash_value);
    transparent_crc(p_616->g_147.f2, "p_616->g_147.f2", print_hash_value);
    transparent_crc(p_616->g_147.f3, "p_616->g_147.f3", print_hash_value);
    transparent_crc(p_616->g_147.f4, "p_616->g_147.f4", print_hash_value);
    transparent_crc(p_616->g_147.f5, "p_616->g_147.f5", print_hash_value);
    transparent_crc(p_616->g_186, "p_616->g_186", print_hash_value);
    transparent_crc(p_616->g_192.f0, "p_616->g_192.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_616->g_194[i], "p_616->g_194[i]", print_hash_value);

    }
    transparent_crc(p_616->g_208, "p_616->g_208", print_hash_value);
    transparent_crc(p_616->g_224, "p_616->g_224", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_616->g_246[i], "p_616->g_246[i]", print_hash_value);

    }
    transparent_crc(p_616->g_268, "p_616->g_268", print_hash_value);
    transparent_crc(p_616->g_283, "p_616->g_283", print_hash_value);
    transparent_crc(p_616->g_349.f0, "p_616->g_349.f0", print_hash_value);
    transparent_crc(p_616->g_349.f1, "p_616->g_349.f1", print_hash_value);
    transparent_crc(p_616->g_349.f2, "p_616->g_349.f2", print_hash_value);
    transparent_crc(p_616->g_349.f3, "p_616->g_349.f3", print_hash_value);
    transparent_crc(p_616->g_349.f4, "p_616->g_349.f4", print_hash_value);
    transparent_crc(p_616->g_349.f5, "p_616->g_349.f5", print_hash_value);
    transparent_crc(p_616->g_351.f0, "p_616->g_351.f0", print_hash_value);
    transparent_crc(p_616->g_351.f1, "p_616->g_351.f1", print_hash_value);
    transparent_crc(p_616->g_351.f2, "p_616->g_351.f2", print_hash_value);
    transparent_crc(p_616->g_351.f3, "p_616->g_351.f3", print_hash_value);
    transparent_crc(p_616->g_351.f4, "p_616->g_351.f4", print_hash_value);
    transparent_crc(p_616->g_351.f5, "p_616->g_351.f5", print_hash_value);
    transparent_crc(p_616->g_415.f0, "p_616->g_415.f0", print_hash_value);
    transparent_crc(p_616->g_415.f1, "p_616->g_415.f1", print_hash_value);
    transparent_crc(p_616->g_415.f2, "p_616->g_415.f2", print_hash_value);
    transparent_crc(p_616->g_415.f3, "p_616->g_415.f3", print_hash_value);
    transparent_crc(p_616->g_415.f4, "p_616->g_415.f4", print_hash_value);
    transparent_crc(p_616->g_415.f5, "p_616->g_415.f5", print_hash_value);
    transparent_crc(p_616->g_473.f0, "p_616->g_473.f0", print_hash_value);
    transparent_crc(p_616->g_473.f1, "p_616->g_473.f1", print_hash_value);
    transparent_crc(p_616->g_473.f2, "p_616->g_473.f2", print_hash_value);
    transparent_crc(p_616->g_473.f3, "p_616->g_473.f3", print_hash_value);
    transparent_crc(p_616->g_473.f4, "p_616->g_473.f4", print_hash_value);
    transparent_crc(p_616->g_473.f5, "p_616->g_473.f5", print_hash_value);
    transparent_crc(p_616->g_474.f0, "p_616->g_474.f0", print_hash_value);
    transparent_crc(p_616->g_474.f1, "p_616->g_474.f1", print_hash_value);
    transparent_crc(p_616->g_474.f2, "p_616->g_474.f2", print_hash_value);
    transparent_crc(p_616->g_474.f3, "p_616->g_474.f3", print_hash_value);
    transparent_crc(p_616->g_474.f4, "p_616->g_474.f4", print_hash_value);
    transparent_crc(p_616->g_474.f5, "p_616->g_474.f5", print_hash_value);
    transparent_crc(p_616->g_497, "p_616->g_497", print_hash_value);
    transparent_crc(p_616->g_499, "p_616->g_499", print_hash_value);
    transparent_crc(p_616->g_554, "p_616->g_554", print_hash_value);
    transparent_crc(p_616->g_599, "p_616->g_599", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
