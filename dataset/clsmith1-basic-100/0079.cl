// ---fake_divergence -g 12,93,1 -l 3,3,1
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


// Seed: 79

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int64_t  f0;
   uint8_t  f1;
   int64_t  f2;
   int32_t  f3;
   int8_t  f4;
   volatile int32_t  f5;
   int64_t  f6;
   uint32_t  f7;
   volatile uint64_t  f8;
};

struct S1 {
    volatile int32_t g_7;
    int16_t g_22;
    uint32_t g_24;
    int32_t g_45;
    uint32_t g_47[2];
    uint32_t g_52;
    int32_t g_55[5];
    uint8_t g_67;
    uint16_t g_83[3][2];
    int16_t g_93;
    int32_t g_113[8];
    int16_t g_121;
    volatile uint16_t g_123;
    volatile uint16_t *g_122;
    int32_t g_138;
    int32_t *g_151[10][7];
    uint64_t g_179;
    struct S0 *g_183[3];
    int8_t g_208;
    uint32_t g_237;
    struct S0 g_263[10][6][3];
    struct S0 g_322;
    struct S0 g_323;
    struct S0 g_324[5];
    struct S0 g_325;
    struct S0 g_326;
    int64_t *g_367;
    uint32_t *g_372;
    uint64_t g_459;
    uint8_t *g_495;
    uint8_t * volatile *g_494[7][5][6];
    struct S0 g_538;
    int8_t g_557;
    volatile int32_t * volatile * volatile *g_567;
    int16_t g_628;
    struct S0 g_667;
    uint64_t * volatile g_680;
    uint64_t * volatile * volatile g_679;
    uint64_t * volatile * volatile *g_678[3][3];
    int32_t g_687[6];
    int32_t ***g_720;
    uint8_t g_742;
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
int64_t  func_1(struct S1 * p_743);
int32_t  func_2(uint64_t  p_3, int64_t  p_4, uint16_t  p_5, uint32_t  p_6, struct S1 * p_743);
int8_t  func_13(int64_t  p_14, uint64_t  p_15, struct S1 * p_743);
struct S0 * func_32(uint64_t  p_33, uint32_t  p_34, int32_t  p_35, uint32_t * p_36, struct S1 * p_743);
uint32_t * func_40(uint32_t  p_41, struct S1 * p_743);
uint32_t  func_42(int32_t * p_43, struct S1 * p_743);
int32_t  func_48(uint32_t * p_49, uint32_t  p_50, struct S1 * p_743);
uint32_t * func_70(uint8_t  p_71, struct S1 * p_743);
int32_t  func_95(uint32_t  p_96, int32_t  p_97, int32_t  p_98, int32_t  p_99, struct S1 * p_743);
int32_t * func_102(int32_t  p_103, int64_t  p_104, int16_t * p_105, int32_t  p_106, uint64_t  p_107, struct S1 * p_743);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_743->g_7 p_743->g_22 p_743->g_24 p_743->g_45 p_743->g_47 p_743->g_55 p_743->g_67 p_743->g_121 p_743->g_122 p_743->g_52 p_743->g_113 p_743->g_138 p_743->g_179 p_743->g_183 p_743->g_93 p_743->g_263.f0 p_743->g_326.f1 p_743->g_324.f2 p_743->g_326.f6 p_743->g_323.f1 p_743->g_237 p_743->g_323.f6 p_743->g_324.f6 p_743->g_83 p_743->g_326.f0 p_743->g_325.f1 p_743->g_325.f4 p_743->g_367 p_743->g_323.f3 p_743->g_325.f0 p_743->g_263.f6 p_743->g_323.f2 p_743->g_323.f7 p_743->g_208 p_743->g_325.f7 p_743->g_326.f3 p_743->g_459 p_743->g_322.f2 p_743->g_494 p_743->g_495 p_743->g_325.f3 p_743->g_263.f4 p_743->g_322.f0 p_743->g_538.f3 p_743->g_324.f1 p_743->g_538.f2 p_743->g_322.f1 p_743->g_557 p_743->g_538.f0 p_743->g_567 p_743->g_324.f4 p_743->g_372 p_743->g_322.f4 p_743->g_324.f3 p_743->g_323.f4 p_743->g_628 p_743->g_538.f1 p_743->g_326.f2 p_743->g_678 p_743->g_687 p_743->g_322.f7 p_743->g_324.f7 p_743->g_538.f4 p_743->g_325.f5 p_743->g_742
 * writes: p_743->g_24 p_743->g_45 p_743->g_47 p_743->g_55 p_743->g_67 p_743->g_83 p_743->g_93 p_743->g_113 p_743->g_121 p_743->g_138 p_743->g_52 p_743->g_151 p_743->g_179 p_743->g_208 p_743->g_237 p_743->g_22 p_743->g_326.f6 p_743->g_323.f6 p_743->g_325.f1 p_743->g_372 p_743->g_324.f6 p_743->g_263.f6 p_743->g_323.f2 p_743->g_324.f4 p_743->g_459 p_743->g_263.f1 p_743->g_324.f1 p_743->g_322.f1 p_743->g_495 p_743->g_263.f0 p_743->g_367 p_743->g_538.f1 p_743->g_687 p_743->g_322.f4 p_743->g_720 p_743->g_742
 */
int64_t  func_1(struct S1 * p_743)
{ /* block id: 4 */
    uint32_t *l_23 = &p_743->g_24;
    int32_t l_29[6][7][5] = {{{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L}},{{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L}},{{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L}},{{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L}},{{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L}},{{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L},{8L,1L,0x3E74FD57L,1L,8L}}};
    int32_t *l_30 = &l_29[3][3][1];
    int64_t l_716 = 0x7B14865E44062E47L;
    int i, j, k;
    p_743->g_742 ^= func_2((p_743->g_7 , (safe_unary_minus_func_uint8_t_u(0x78L))), (safe_mod_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(0x7AL, 0x5FL)), func_13(((((*l_30) = (((((0x49L & ((safe_lshift_func_int8_t_s_u(((safe_sub_func_int8_t_s_s((0x7219A6FDL >= (+(safe_add_func_uint8_t_u_u(p_743->g_22, ((++(*l_23)) != (safe_mod_func_uint16_t_u_u(((l_23 != (void*)0) , l_29[2][5][0]), l_29[2][5][0]))))))), p_743->g_22)) < l_29[2][5][0]), l_29[2][5][0])) >= FAKE_DIVERGE(p_743->local_0_offset, get_local_id(0), 10))) || l_29[0][1][0]) && p_743->g_22) >= 0L) & (-5L))) >= 1UL) , (*l_30)), p_743->g_22, p_743))), p_743->g_325.f3, l_716, p_743);
    return (*p_743->g_367);
}


/* ------------------------------------------ */
/* 
 * reads : p_743->g_325.f5 p_743->g_538.f3 p_743->g_322.f0 p_743->g_495 p_743->g_324.f1 p_743->g_322.f1
 * writes: p_743->g_720
 */
int32_t  func_2(uint64_t  p_3, int64_t  p_4, uint16_t  p_5, uint32_t  p_6, struct S1 * p_743)
{ /* block id: 336 */
    int32_t **l_719[5] = {&p_743->g_151[4][4],&p_743->g_151[4][4],&p_743->g_151[4][4],&p_743->g_151[4][4],&p_743->g_151[4][4]};
    int32_t ***l_718[1];
    int32_t ****l_717[7][4] = {{&l_718[0],&l_718[0],&l_718[0],&l_718[0]},{&l_718[0],&l_718[0],&l_718[0],&l_718[0]},{&l_718[0],&l_718[0],&l_718[0],&l_718[0]},{&l_718[0],&l_718[0],&l_718[0],&l_718[0]},{&l_718[0],&l_718[0],&l_718[0],&l_718[0]},{&l_718[0],&l_718[0],&l_718[0],&l_718[0]},{&l_718[0],&l_718[0],&l_718[0],&l_718[0]}};
    uint64_t *l_735 = (void*)0;
    uint64_t **l_734 = &l_735;
    uint64_t ***l_733 = &l_734;
    int8_t l_740 = 0x3AL;
    uint64_t l_741 = 1UL;
    int i, j;
    for (i = 0; i < 1; i++)
        l_718[i] = &l_719[1];
    l_740 ^= ((p_743->g_720 = (void*)0) == ((safe_mul_func_int8_t_s_s(((safe_div_func_int64_t_s_s(p_3, (safe_add_func_int64_t_s_s((safe_sub_func_int16_t_s_s(p_6, p_743->g_325.f5)), (FAKE_DIVERGE(p_743->local_2_offset, get_local_id(2), 10) & 0x7A039D78C6DC40E0L))))) & ((safe_lshift_func_int16_t_s_s(((FAKE_DIVERGE(p_743->local_0_offset, get_local_id(0), 10) < (safe_add_func_int8_t_s_s((p_6 < (((((void*)0 != l_733) & GROUP_DIVERGE(1, 1)) >= (((safe_mul_func_int8_t_s_s(((~((GROUP_DIVERGE(1, 1) && ((void*)0 != &l_718[0])) || p_743->g_538.f3)) == 0xE98FL), 0x5DL)) && FAKE_DIVERGE(p_743->global_2_offset, get_global_id(2), 10)) >= 0x13L)) , 0L)), (-1L)))) >= p_4), p_743->g_322.f0)) <= 0x38L)), (*p_743->g_495))) , (void*)0));
    l_741 &= 0x5853C76EL;
    return p_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_743->g_24 p_743->g_22 p_743->g_45 p_743->g_47 p_743->g_55 p_743->g_67 p_743->g_121 p_743->g_122 p_743->g_52 p_743->g_113 p_743->g_138 p_743->g_179 p_743->g_183 p_743->g_93 p_743->g_263.f0 p_743->g_326.f1 p_743->g_324.f2 p_743->g_323.f1 p_743->g_237 p_743->g_323.f6 p_743->g_324.f6 p_743->g_83 p_743->g_326.f0 p_743->g_325.f4 p_743->g_367 p_743->g_323.f3 p_743->g_325.f0 p_743->g_326.f6 p_743->g_263.f6 p_743->g_323.f2 p_743->g_323.f7 p_743->g_208 p_743->g_325.f1 p_743->g_325.f7 p_743->g_326.f3 p_743->g_459 p_743->g_322.f2 p_743->g_494 p_743->g_495 p_743->g_325.f3 p_743->g_263.f4 p_743->g_322.f0 p_743->g_538.f3 p_743->g_324.f1 p_743->g_538.f2 p_743->g_322.f1 p_743->g_557 p_743->g_538.f0 p_743->g_567 p_743->g_324.f4 p_743->g_372 p_743->g_322.f4 p_743->g_324.f3 p_743->g_323.f4 p_743->g_628 p_743->g_538.f1 p_743->g_326.f2 p_743->g_678 p_743->g_687 p_743->g_322.f7 p_743->g_324.f7 p_743->g_538.f4
 * writes: p_743->g_24 p_743->g_45 p_743->g_47 p_743->g_55 p_743->g_67 p_743->g_83 p_743->g_93 p_743->g_113 p_743->g_121 p_743->g_138 p_743->g_52 p_743->g_151 p_743->g_179 p_743->g_208 p_743->g_237 p_743->g_22 p_743->g_326.f6 p_743->g_323.f6 p_743->g_325.f1 p_743->g_372 p_743->g_324.f6 p_743->g_263.f6 p_743->g_323.f2 p_743->g_324.f4 p_743->g_459 p_743->g_263.f1 p_743->g_324.f1 p_743->g_322.f1 p_743->g_495 p_743->g_263.f0 p_743->g_367 p_743->g_538.f1 p_743->g_687 p_743->g_322.f4
 */
int8_t  func_13(int64_t  p_14, uint64_t  p_15, struct S1 * p_743)
{ /* block id: 7 */
    uint8_t l_31 = 0x61L;
    int32_t l_265 = 1L;
    int32_t l_286 = 1L;
    int32_t l_287 = 1L;
    int32_t l_288 = 0L;
    int32_t l_291 = 9L;
    int64_t l_293 = 1L;
    int32_t l_294[2][1];
    uint8_t **l_318 = (void*)0;
    uint16_t l_348 = 65535UL;
    uint8_t *l_365 = &l_31;
    uint64_t *l_414 = (void*)0;
    uint64_t *l_469 = &p_743->g_459;
    uint32_t *l_478 = &p_743->g_325.f7;
    int32_t l_525 = 0L;
    uint8_t l_594[3];
    uint16_t l_598 = 65526UL;
    int32_t *l_599 = (void*)0;
    int32_t **l_689[1];
    int32_t ***l_688 = &l_689[0];
    int32_t l_713[3];
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_294[i][j] = 4L;
    }
    for (i = 0; i < 3; i++)
        l_594[i] = 255UL;
    for (i = 0; i < 1; i++)
        l_689[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_713[i] = 0x15A018FFL;
    if (l_31)
    { /* block id: 8 */
        uint32_t *l_37 = &p_743->g_24;
        uint32_t *l_46 = &p_743->g_47[0];
        struct S0 *l_262[8];
        int i;
        for (i = 0; i < 8; i++)
            l_262[i] = &p_743->g_263[2][1][2];
        l_262[0] = func_32(l_31, (++(*l_37)), p_743->g_22, func_40(((*l_46) |= func_42(l_37, p_743)), p_743), p_743);
    }
    else
    { /* block id: 123 */
        int32_t *l_264[7][9] = {{&p_743->g_55[2],&p_743->g_138,(void*)0,&p_743->g_55[2],&p_743->g_55[0],(void*)0,(void*)0,&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[2],&p_743->g_138,(void*)0,&p_743->g_55[2],&p_743->g_55[0],(void*)0,(void*)0,&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[2],&p_743->g_138,(void*)0,&p_743->g_55[2],&p_743->g_55[0],(void*)0,(void*)0,&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[2],&p_743->g_138,(void*)0,&p_743->g_55[2],&p_743->g_55[0],(void*)0,(void*)0,&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[2],&p_743->g_138,(void*)0,&p_743->g_55[2],&p_743->g_55[0],(void*)0,(void*)0,&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[2],&p_743->g_138,(void*)0,&p_743->g_55[2],&p_743->g_55[0],(void*)0,(void*)0,&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[2],&p_743->g_138,(void*)0,&p_743->g_55[2],&p_743->g_55[0],(void*)0,(void*)0,&p_743->g_55[0],&p_743->g_55[2]}};
        int8_t l_292 = 1L;
        uint32_t l_295 = 4294967289UL;
        uint8_t *l_310[2][10] = {{&l_31,&p_743->g_67,&p_743->g_67,&p_743->g_67,&l_31,&l_31,&p_743->g_67,&p_743->g_67,&p_743->g_67,&l_31},{&l_31,&p_743->g_67,&p_743->g_67,&p_743->g_67,&l_31,&l_31,&p_743->g_67,&p_743->g_67,&p_743->g_67,&l_31}};
        uint32_t *l_355 = (void*)0;
        uint8_t *l_366 = &p_743->g_323.f1;
        int i, j;
        for (p_743->g_93 = 0; p_743->g_93 < 8; p_743->g_93 += 1)
        {
            p_743->g_113[p_743->g_93] = 0L;
        }
lbl_375:
        if ((l_265 = l_31))
        { /* block id: 126 */
            uint32_t l_274[6][9] = {{0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL},{0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL},{0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL},{0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL},{0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL},{0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL,0x13C8FD3FL,0x8AE4827AL,0x13C8FD3FL}};
            int32_t l_276 = 0x043E7B37L;
            int32_t l_277 = 0x4133B341L;
            int32_t l_284 = 0x0BEB40F5L;
            int32_t l_289[6][9][1] = {{{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L}},{{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L}},{{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L}},{{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L}},{{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L}},{{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L},{0x04E8EFF7L}}};
            uint8_t **l_317 = &l_310[1][5];
            int i, j, k;
lbl_271:
            for (p_15 = (-23); (p_15 == 7); p_15 = safe_add_func_uint16_t_u_u(p_15, 2))
            { /* block id: 129 */
                uint32_t l_270 = 0x16005261L;
                l_270 = (safe_rshift_func_int16_t_s_u((p_14 >= p_743->g_55[1]), 0));
                if (l_31)
                    goto lbl_271;
            }
            for (p_743->g_24 = (-17); (p_743->g_24 <= 28); p_743->g_24 = safe_add_func_uint16_t_u_u(p_743->g_24, 6))
            { /* block id: 135 */
                uint8_t l_275 = 0xF2L;
                int32_t l_278[1];
                uint8_t **l_311 = &l_310[1][9];
                int16_t *l_312 = &p_743->g_121;
                struct S0 *l_321[2][10] = {{(void*)0,(void*)0,&p_743->g_323,(void*)0,&p_743->g_326,(void*)0,&p_743->g_323,(void*)0,(void*)0,&p_743->g_323},{(void*)0,(void*)0,&p_743->g_323,(void*)0,&p_743->g_326,(void*)0,&p_743->g_323,(void*)0,(void*)0,&p_743->g_323}};
                int64_t *l_327 = &l_293;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_278[i] = 0x729D56DCL;
                l_274[5][7] = (p_14 >= p_743->g_45);
                if ((l_275 = p_14))
                { /* block id: 138 */
                    uint64_t l_282 = 0xE4D71671EE6F18C9L;
                    int32_t **l_283 = &p_743->g_151[6][0];
                    int32_t l_285 = 0x18069FB5L;
                    int32_t l_290[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_290[i] = 0x0FC13AE1L;
                    l_277 = (+l_276);
                    if ((l_278[0] = (-5L)))
                    { /* block id: 141 */
                        l_277 = 0x5250E97BL;
                        l_282 = (p_15 && (safe_sub_func_int8_t_s_s((safe_unary_minus_func_uint32_t_u(p_14)), l_31)));
                        if (l_31)
                            break;
                    }
                    else
                    { /* block id: 145 */
                        l_265 |= (&p_743->g_151[3][2] != (GROUP_DIVERGE(2, 1) , &p_743->g_151[6][0]));
                        l_278[0] = (-10L);
                    }
                    (*l_283) = func_70((0x0BL & p_743->g_52), p_743);
                    ++l_295;
                }
                else
                { /* block id: 151 */
                    return l_276;
                }
                l_278[0] = (((*l_312) = (safe_rshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_u(((&p_743->g_151[6][0] == (void*)0) , 8UL), (safe_add_func_int16_t_s_s((safe_div_func_int16_t_s_s(p_743->g_52, ((!p_743->g_179) & (l_289[0][6][0] &= (((safe_mul_func_uint16_t_u_u(p_14, p_743->g_263[2][1][2].f0)) && (((*l_311) = l_310[0][4]) != &p_743->g_67)) && (-9L)))))), p_743->g_113[3])))) > l_275), 0x8DL)), p_743->g_113[6]))) , 0x5D9C9554L);
                l_289[4][7][0] |= (safe_mod_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((&p_743->g_67 != (((p_743->g_121 = (p_14 > 0x02L)) , (l_317 == l_318)) , l_310[0][4])), (safe_sub_func_uint16_t_u_u(((void*)0 == l_321[1][6]), (((*l_327) = p_743->g_179) >= l_275))))) >= 1UL), 0x49L));
            }
            l_294[1][0] |= (p_743->g_326.f1 != (safe_rshift_func_int16_t_s_u(p_743->g_324[3].f2, 0)));
        }
        else
        { /* block id: 163 */
            uint32_t l_340 = 4294967295UL;
            int16_t l_347 = 4L;
            int16_t *l_349 = &l_347;
            int64_t *l_350 = &p_743->g_323.f6;
            int32_t l_351 = 0x6E573C37L;
            for (p_743->g_326.f6 = 0; (p_743->g_326.f6 <= (-20)); p_743->g_326.f6 = safe_sub_func_int8_t_s_s(p_743->g_326.f6, 9))
            { /* block id: 166 */
                return p_15;
            }
            l_351 = (safe_rshift_func_uint8_t_u_s((p_743->g_323.f1 , (~(((safe_add_func_int64_t_s_s(((*l_350) &= (safe_rshift_func_uint16_t_u_s((safe_add_func_int16_t_s_s(((*l_349) = ((+(l_288 , (p_15 | 0xF8L))) , ((l_340 , (((safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((0x1CB84BD6L <= ((((((((p_15 <= (((safe_sub_func_uint16_t_u_u(p_743->g_323.f1, (252UL <= p_14))) >= p_743->g_237) < p_14)) , 0x64L) != l_347) >= l_348) != p_15) | 251UL) >= 0x05L) < p_15)) != 6UL), 4)), p_743->g_24)) >= p_14) || 0x3D2AL)) >= p_15))), (-9L))), 6))), p_743->g_324[3].f6)) | p_743->g_83[0][0]) | p_743->g_326.f0))), 2));
        }
        for (p_743->g_325.f1 = 0; (p_743->g_325.f1 >= 28); p_743->g_325.f1++)
        { /* block id: 175 */
            uint32_t **l_354[5][1];
            uint8_t **l_364[8] = {&l_310[0][4],(void*)0,&l_310[0][4],&l_310[0][4],(void*)0,&l_310[0][4],&l_310[0][4],(void*)0};
            int64_t *l_370 = &p_743->g_326.f6;
            int16_t l_371 = (-2L);
            int32_t l_373 = 0x35DA1DD3L;
            int32_t l_374 = 0x4D727D8FL;
            int i, j;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 1; j++)
                    l_354[i][j] = (void*)0;
            }
            l_374 = (l_294[1][0] = (l_373 = ((l_355 = &p_743->g_237) != (p_743->g_372 = func_102((safe_add_func_int32_t_s_s((safe_div_func_int32_t_s_s((l_291 = (((safe_div_func_int16_t_s_s((safe_add_func_uint64_t_u_u(1UL, (1L | FAKE_DIVERGE(p_743->group_2_offset, get_group_id(2), 10)))), p_743->g_325.f4)) | (((l_310[0][4] = (l_365 = l_310[0][6])) != (l_366 = l_366)) || ((p_743->g_367 == (((safe_mul_func_int8_t_s_s(((void*)0 == &l_365), 250UL)) ^ FAKE_DIVERGE(p_743->global_0_offset, get_global_id(0), 10)) , l_370)) , p_743->g_323.f3))) , 0x2326F1ABL)), l_371)), l_31)), p_743->g_325.f0, &p_743->g_22, l_293, p_15, p_743)))));
            l_265 = l_373;
            if (l_371)
                goto lbl_375;
        }
    }
    for (p_743->g_93 = 0; (p_743->g_93 < 25); p_743->g_93 = safe_add_func_int64_t_s_s(p_743->g_93, 3))
    { /* block id: 191 */
        uint64_t *l_382 = (void*)0;
        uint64_t *l_383 = &p_743->g_179;
        uint16_t *l_384 = (void*)0;
        int64_t *l_387 = (void*)0;
        int64_t *l_388 = &p_743->g_263[2][1][2].f6;
        int32_t l_389 = 0x6A67A99AL;
        int32_t *l_390 = &l_286;
        int16_t *l_413 = &p_743->g_22;
        int8_t *l_426 = (void*)0;
        int64_t *l_450 = &l_293;
        int32_t l_463 = 0x549BC28FL;
        int32_t ***l_568[6];
        uint32_t **l_578 = &l_478;
        uint64_t **l_632 = &l_469;
        int32_t *l_707[5] = {&l_288,&l_288,&l_288,&l_288,&l_288};
        int i;
        for (i = 0; i < 6; i++)
            l_568[i] = (void*)0;
        (*l_390) = ((safe_lshift_func_int8_t_s_u(((void*)0 == &p_743->g_151[6][0]), ((((safe_mod_func_int64_t_s_s(0x22F0221615BC1CEFL, ((*l_388) &= ((((*p_743->g_367) = (p_743->g_326.f6 && ((*p_743->g_367) < ((*l_383) ^= 5UL)))) >= ((((void*)0 == l_384) || (safe_sub_func_int32_t_s_s(p_14, p_14))) > 0x4C4C92B0F0AC6990L)) ^ p_14)))) , FAKE_DIVERGE(p_743->global_0_offset, get_global_id(0), 10)) , (void*)0) != (void*)0))) && l_389);
        if (((l_288 &= ((((safe_lshift_func_int8_t_s_u((((-1L) > (p_15 & ((safe_rshift_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u((safe_mod_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((l_265 == (safe_mul_func_int16_t_s_s(((safe_div_func_int32_t_s_s((safe_lshift_func_int8_t_s_u(p_743->g_55[3], ((((((((((*l_413) ^= ((p_15 , ((((safe_rshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u(0x9EEFL, ((*p_743->g_367) < ((safe_mul_func_uint16_t_u_u(0xFA95L, p_14)) == (*l_390))))), 14)) , l_387) != p_743->g_367) == (*l_390))) , p_743->g_24)) , (void*)0) == (void*)0) || p_14) , p_15) ^ (*l_390)) && p_15) , l_414) == &p_743->g_179))), 4294967292UL)) , p_14), (-1L)))), 1)), l_31)), p_743->g_323.f1)) , l_286), 13)) && l_31))) , p_743->g_55[2]), FAKE_DIVERGE(p_743->local_2_offset, get_local_id(2), 10))) , l_287) && p_14) < FAKE_DIVERGE(p_743->group_0_offset, get_group_id(0), 10))) <= (*l_390)))
        { /* block id: 198 */
            uint64_t l_425[3];
            uint32_t **l_502[8][2][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}}};
            int32_t l_526 = 0x5604DBAAL;
            uint32_t l_530 = 6UL;
            uint8_t *l_560 = &p_743->g_324[3].f1;
            int16_t *l_608 = &p_743->g_121;
            uint16_t l_698 = 65534UL;
            int64_t *l_709[7];
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_425[i] = 0xC5F6E89759DFCCB9L;
            for (i = 0; i < 7; i++)
                l_709[i] = &p_743->g_324[3].f6;
            for (p_743->g_323.f2 = 4; (p_743->g_323.f2 >= 0); p_743->g_323.f2 -= 1)
            { /* block id: 201 */
                int8_t *l_421 = (void*)0;
                uint16_t *l_422 = &l_348;
                int64_t *l_451[2];
                int32_t l_462 = 0L;
                int8_t l_481 = 0L;
                uint8_t *l_558 = &l_31;
                uint8_t **l_559 = &l_558;
                int32_t *l_561 = &l_525;
                uint32_t *l_562 = &p_743->g_52;
                int32_t **l_566 = &l_390;
                int32_t ***l_565 = &l_566;
                int64_t l_569[7] = {0x7DB7C8F3D0CEE7E0L,0x39F2492573088E6BL,0x7DB7C8F3D0CEE7E0L,0x7DB7C8F3D0CEE7E0L,0x39F2492573088E6BL,0x7DB7C8F3D0CEE7E0L,0x7DB7C8F3D0CEE7E0L};
                int i;
                for (i = 0; i < 2; i++)
                    l_451[i] = &p_743->g_263[2][1][2].f6;
                for (p_743->g_138 = 4; (p_743->g_138 >= 0); p_743->g_138 -= 1)
                { /* block id: 204 */
                    int i;
                    return p_743->g_55[p_743->g_323.f2];
                }
                if (((!(&p_743->g_208 != (void*)0)) == (safe_lshift_func_uint8_t_u_u(((p_743->g_55[p_743->g_323.f2] , ((safe_div_func_uint8_t_u_u((((safe_add_func_int64_t_s_s(((*p_743->g_367) = ((p_743->g_55[p_743->g_323.f2] < (l_421 != ((l_425[2] = ((*l_422)--)) , l_426))) < p_743->g_323.f6)), (safe_div_func_uint64_t_u_u(5UL, (((void*)0 != &l_389) || l_286))))) == 0x77A7L) && 1UL), p_15)) >= p_743->g_323.f7)) , 8UL), p_15))))
                { /* block id: 210 */
                    uint16_t l_441 = 0x2AB4L;
                    int32_t **l_442 = (void*)0;
                    int32_t *l_443 = &l_265;
                    int8_t *l_452 = &p_743->g_324[3].f4;
                    uint32_t *l_455 = (void*)0;
                    uint64_t *l_458 = &p_743->g_459;
                    uint64_t **l_468[2][1][9] = {{{&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458}},{{&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458}}};
                    uint32_t *l_479 = (void*)0;
                    uint32_t *l_480 = &p_743->g_24;
                    int32_t *l_482 = &p_743->g_55[p_743->g_323.f2];
                    int i, j, k;
                    for (l_348 = 0; (l_348 <= 4); l_348 += 1)
                    { /* block id: 213 */
                        return p_743->g_55[p_743->g_323.f2];
                    }
                    l_443 = ((safe_lshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s(p_743->g_208, (~((((((-10L) ^ (safe_rshift_func_int8_t_s_u((safe_sub_func_uint16_t_u_u(p_15, p_743->g_325.f1)), 5))) > (0L & ((safe_mod_func_int8_t_s_s((((((((*l_390) = p_743->g_325.f7) , (safe_div_func_uint32_t_u_u(((GROUP_DIVERGE(1, 1) , p_15) , p_14), (p_743->g_326.f3 && l_425[2])))) != p_743->g_325.f4) , p_743->g_326.f1) , p_743->g_55[1]) & l_441), p_743->g_326.f1)) ^ (-1L)))) || (-1L)) , l_425[2]) > p_14)))) <= (*p_743->g_367)), 8)) , (void*)0);
                    l_463 = (l_462 &= ((safe_lshift_func_int16_t_s_u(((safe_mul_func_uint16_t_u_u(p_743->g_113[0], ((p_743->g_55[p_743->g_323.f2] <= (-1L)) <= (safe_mul_func_uint16_t_u_u(((l_450 = &l_293) != l_451[0]), (((*l_452) = p_14) >= (safe_add_func_int32_t_s_s((((p_743->g_52 &= p_743->g_237) , ((safe_rshift_func_int16_t_s_s((((*l_458) &= 0x5AE07524C9C2EAFBL) , ((p_743->g_263[2][1][2].f1 = (safe_div_func_int32_t_s_s(((FAKE_DIVERGE(p_743->local_2_offset, get_local_id(2), 10) <= ((*l_390) , l_265)) || p_14), p_743->g_55[0]))) != p_15)), p_743->g_263[2][1][2].f6)) < p_743->g_121)) > FAKE_DIVERGE(p_743->global_2_offset, get_global_id(2), 10)), p_14)))))))) ^ 0x3160L), (*l_390))) & (-4L)));
                    (*l_482) ^= (safe_add_func_uint32_t_u_u((l_293 != (safe_rshift_func_int16_t_s_s((((((*l_452) = (-8L)) != ((((*l_390) &= (p_14 > (-1L))) , (p_743->g_83[1][0] | (&p_15 == (l_469 = (void*)0)))) & l_31)) > (safe_sub_func_int64_t_s_s((safe_add_func_int64_t_s_s((safe_lshift_func_int16_t_s_u((safe_sub_func_int8_t_s_s((((*l_480) = ((void*)0 == l_478)) == l_481), l_31)), 8)), (*p_743->g_367))), (*p_743->g_367)))) ^ 0xDAL), 0))), p_743->g_263[2][1][2].f0));
                }
                else
                { /* block id: 230 */
                    uint32_t **l_487 = &p_743->g_372;
                    int32_t l_492 = 0x50BADD7EL;
                    uint8_t **l_493[3];
                    int32_t *l_503 = &l_294[0][0];
                    struct S0 *l_537 = &p_743->g_538;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_493[i] = (void*)0;
                    (*l_503) |= (((p_15 || ((safe_mod_func_uint64_t_u_u((p_743->g_179 = 0x49BBB35694B5A915L), (safe_mod_func_uint16_t_u_u((l_487 != (((safe_add_func_uint32_t_u_u((p_743->g_322.f2 < (((safe_lshift_func_int8_t_s_u((~(l_492 ^ (l_493[2] != p_743->g_494[1][2][5]))), 1)) != p_743->g_322.f2) | (((((safe_mod_func_uint8_t_u_u(((*p_743->g_495) = ((safe_div_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((&l_390 != (void*)0), (-1L))), p_743->g_263[2][1][2].f6)) , 0UL)), l_425[1])) && (*l_390)) & p_15) && p_15) , (-1L)))), p_743->g_325.f3)) , p_14) , l_502[0][1][1])), p_743->g_326.f0)))) , 5UL)) , l_492) | 1L);
                    for (p_743->g_52 = 23; (p_743->g_52 < 38); p_743->g_52 = safe_add_func_int16_t_s_s(p_743->g_52, 2))
                    { /* block id: 236 */
                        uint32_t l_512 = 4UL;
                        l_526 = (((*p_743->g_495) = (0UL | GROUP_DIVERGE(0, 1))) | ((p_743->g_67 > ((safe_lshift_func_uint16_t_u_s((--(*l_422)), 6)) != (((((0xBAL < (safe_sub_func_uint64_t_u_u(p_743->g_263[2][1][2].f4, (l_287 = (l_512 || (l_288 && ((*l_503) = ((safe_lshift_func_int16_t_s_s((~(safe_rshift_func_uint8_t_u_s(((safe_div_func_int32_t_s_s((-1L), (((((l_525 = (((((safe_add_func_int16_t_s_s(((*l_413) = p_743->g_22), (safe_add_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), ((*l_383) = (safe_mod_func_int32_t_s_s(p_743->g_55[p_743->g_323.f2], p_743->g_263[2][1][2].f6))))))) != (*l_503)) && p_743->g_55[3]) , p_15) == 8UL)) < 0x394E4E0EL) | p_743->g_208) > p_743->g_322.f0) & 4294967289UL))) == p_743->g_47[0]), p_743->g_326.f6))), 3)) , (-4L))))))))) == (*l_390)) > p_14) | l_286) && 0x0AL))) , p_14));
                        (*l_390) |= ((((-2L) && p_15) | (safe_unary_minus_func_int64_t_s((GROUP_DIVERGE(0, 1) , (-6L))))) == ((safe_sub_func_uint8_t_u_u(l_530, ((safe_mul_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u((p_15 >= (safe_rshift_func_int16_t_s_s(p_743->g_323.f2, ((*l_413) = ((l_537 != p_743->g_183[2]) ^ (p_743->g_538.f3 , p_743->g_324[3].f1)))))), 0xB485L)) < GROUP_DIVERGE(2, 1)) ^ 0x7A2DCC9DL), p_743->g_538.f2)) == p_14))) && p_743->g_55[p_743->g_323.f2]));
                        if (p_14)
                            break;
                    }
                }
                (*l_561) = ((safe_sub_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(0xF10E7567L, ((0x5CF23553L >= (((*l_450) &= ((*p_743->g_367) = (-1L))) != (safe_mod_func_int8_t_s_s((((safe_div_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (*p_743->g_495))) > ((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u((((*l_390) = l_462) , (((*l_390) = p_14) ^ p_743->g_323.f7)), (((safe_lshift_func_int16_t_s_u((l_425[1] & (((*l_559) = ((((((&p_743->g_24 == (void*)0) == 0L) | 0x9775L) <= p_743->g_557) ^ 0x7AB155B9L) , l_558)) != l_560)), p_15)) > 0x42430F28F05CAF74L) && FAKE_DIVERGE(p_743->global_0_offset, get_global_id(0), 10)))), 3)), 0x0DCCL)) == l_294[1][0])) , p_743->g_67), p_15)))) < l_294[0][0]))), p_743->g_538.f0)) == l_425[2]);
                (*l_561) |= ((((p_14 <= (((*l_562)--) > (!p_743->g_324[3].f6))) | l_348) & l_425[1]) , ((((8L < (((*l_565) = &l_561) != ((p_14 == ((*l_383) = (p_743->g_567 != l_568[2]))) , &p_743->g_151[6][0]))) , 0x2EBAL) > 0x2E9CL) | l_569[6]));
            }
            for (p_743->g_326.f6 = 0; (p_743->g_326.f6 <= 2); p_743->g_326.f6 += 1)
            { /* block id: 263 */
                int8_t *l_592 = &p_743->g_324[3].f4;
                uint64_t *l_593 = &l_425[2];
                uint32_t *l_595 = &p_743->g_24;
                uint64_t **l_619 = &l_383;
                int32_t *l_629 = &p_743->g_45;
                uint32_t l_681 = 4294967294UL;
                uint32_t l_693[2][9] = {{9UL,0xF58B421BL,9UL,9UL,0xF58B421BL,9UL,9UL,0xF58B421BL,9UL},{9UL,0xF58B421BL,9UL,9UL,0xF58B421BL,9UL,9UL,0xF58B421BL,9UL}};
                int32_t *l_714 = &l_265;
                int i, j;
                (*l_390) &= (safe_rshift_func_int16_t_s_u(((p_743->g_113[(p_743->g_326.f6 + 2)] || l_425[p_743->g_326.f6]) , (l_288 = (safe_div_func_uint8_t_u_u(l_425[p_743->g_326.f6], 0x2EL)))), 3));
                (*l_390) = ((safe_rshift_func_int8_t_s_u(((((((safe_mod_func_uint16_t_u_u((!(((((l_578 == (void*)0) & ((((safe_lshift_func_uint16_t_u_s(0xFC53L, 11)) <= (0x51L == (safe_sub_func_uint32_t_u_u(0x7AD84D7FL, (((((((safe_unary_minus_func_int16_t_s((((*l_593) = (safe_rshift_func_uint8_t_u_s((*p_743->g_495), ((*l_592) = ((safe_div_func_uint32_t_u_u((((*l_383) ^= (safe_mul_func_uint16_t_u_u(p_743->g_83[0][0], (p_743->g_67 ^ ((l_526 == p_743->g_324[3].f4) | p_14))))) <= (*p_743->g_367)), l_425[p_743->g_326.f6])) == l_291))))) == l_594[1]))) , (*p_743->g_372)) , l_595) != l_595) , p_15) , 0x1BD3F99DL) > 0x313775C8L))))) ^ 0x35A52DE9FC544BF9L) && l_294[1][0])) < 0x57F5L) , l_425[p_743->g_326.f6]) , p_743->g_322.f4)), 0xD02EL)) , l_425[p_743->g_326.f6]) == 5L) , p_15) < (*p_743->g_367)) <= p_15), p_15)) >= 0UL);
                p_743->g_151[6][0] = func_102(p_743->g_93, ((p_743->g_495 = l_560) != (((((safe_add_func_uint16_t_u_u(p_743->g_323.f1, l_598)) > p_743->g_121) | ((l_599 = &l_265) == &p_743->g_55[2])) <= (safe_sub_func_int32_t_s_s(((*l_390) = (safe_rshift_func_uint8_t_u_u((safe_add_func_int64_t_s_s(l_425[p_743->g_326.f6], ((safe_mul_func_int16_t_s_s(1L, p_14)) , p_743->g_324[3].f3))), 6))), p_14))) , l_426)), l_608, l_288, p_14, p_743);
                if ((safe_rshift_func_int8_t_s_u((safe_sub_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((p_743->g_326.f6 ^ (((*l_592) = p_743->g_459) >= ((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 3L)) , (((((((0xC8C15A8C0C845C0CL > (safe_mul_func_int16_t_s_s(((p_15 < ((void*)0 == l_595)) | (((((((*l_619) = &p_743->g_179) != (void*)0) < p_14) , (void*)0) == (void*)0) > (*l_599))), p_15))) <= p_14) && p_743->g_323.f4) , &p_743->g_47[0]) == (void*)0) < 0x52L) | p_14)))), 9L)), p_14)), GROUP_DIVERGE(1, 1))))
                { /* block id: 276 */
                    int64_t *l_620 = &p_743->g_263[2][1][2].f0;
                    int64_t **l_623[4][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                    int i, j;
                    (*l_599) = (((*l_620) = 0x590B15A27EDC83E4L) , (safe_lshift_func_uint16_t_u_u((0x840D23E6A15D6CF7L & (l_530 < ((*l_592) = ((p_743->g_183[p_743->g_326.f6] == ((((p_743->g_367 = p_743->g_367) != l_387) <= (safe_mul_func_uint8_t_u_u(((*p_743->g_495) |= GROUP_DIVERGE(0, 1)), 0x47L))) , ((safe_div_func_uint8_t_u_u((p_14 == p_743->g_628), 0xAEL)) , p_743->g_183[2]))) & p_743->g_263[2][1][2].f6)))), 15)));
                    l_629 = &p_743->g_113[3];
                    for (p_743->g_538.f1 = 0; (p_743->g_538.f1 <= 2); p_743->g_538.f1 += 1)
                    { /* block id: 285 */
                        uint64_t **l_630 = (void*)0;
                        uint64_t ***l_631[5][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                        int i, j;
                        l_632 = l_630;
                    }
                    (*l_390) = (safe_div_func_int32_t_s_s((*l_629), (((*l_413) = 0L) ^ ((safe_sub_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((((((safe_lshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_u(((safe_unary_minus_func_uint16_t_u((0x672DFB2EEA22F176L > (safe_sub_func_uint32_t_u_u(p_743->g_324[3].f6, ((((6UL < (p_743->g_52 >= ((*p_743->g_495) > (p_743->g_67 ^ (~(safe_unary_minus_func_int16_t_s((((((safe_sub_func_int32_t_s_s((((((~((safe_rshift_func_uint16_t_u_u(((safe_sub_func_uint8_t_u_u(((p_14 == p_743->g_263[2][1][2].f6) || 1UL), GROUP_DIVERGE(0, 1))) == 4294967295UL), 12)) >= 0x01L)) < p_743->g_263[2][1][2].f6) > p_743->g_323.f2) < GROUP_DIVERGE(0, 1)) >= FAKE_DIVERGE(p_743->group_1_offset, get_group_id(1), 10)), 0x541E479FL)) , &p_743->g_372) == (void*)0) , l_620) == (void*)0)))))))) , 0x02CEL) ^ p_15) <= 0UL)))))) && 0xA2L), 5)), (*p_743->g_495))) ^ 7L) , p_743->g_324[3].f3) & p_743->g_325.f1) <= (-5L)), 6)), p_14)) , p_15))));
                }
                else
                { /* block id: 290 */
                    int8_t l_665[4];
                    struct S0 *l_666[3][1];
                    struct S0 **l_668 = &l_666[1][0];
                    int32_t ***l_690[1][1][7];
                    uint32_t l_694 = 0xA4158CFAL;
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_665[i] = 0L;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_666[i][j] = &p_743->g_667;
                    }
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 7; k++)
                                l_690[i][j][k] = &l_689[0];
                        }
                    }
                    l_629 = func_102(p_14, (p_14 , (((safe_div_func_uint16_t_u_u(p_743->g_538.f1, (safe_mul_func_int16_t_s_s((((safe_lshift_func_int8_t_s_s((((safe_sub_func_int8_t_s_s(((safe_sub_func_uint64_t_u_u((p_743->g_326.f2 == ((l_665[1] = ((*p_743->g_367) = (0x1A29BC787EDE978EL != ((*l_578) != (p_743->g_372 = l_599))))) > l_530)), 9L)) >= (*p_743->g_495)), 0x3FL)) && p_743->g_628) ^ 0xFC4D6DB0L), p_15)) | p_743->g_459) > 18446744073709551614UL), p_15)))) , l_478) == (void*)0)), &p_743->g_22, p_15, p_14, p_743);
                    if (((+(p_743->g_183[2] != ((*l_668) = l_666[2][0]))) == p_14))
                    { /* block id: 296 */
                        int64_t l_675 = 0x30BA6B0514795606L;
                        int32_t l_684 = 0L;
                        if ((*l_629))
                            break;
                        p_743->g_151[6][0] = func_102((((safe_add_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((p_14 , (safe_mod_func_uint8_t_u_u(((*l_629) = (((*l_599) || (((((0x77DA02B564A1ACF2L > l_675) & (l_526 , (((*l_413) = ((*l_608) &= (safe_mul_func_int16_t_s_s((l_681 &= (p_743->g_678[0][0] != p_743->g_678[1][2])), ((safe_add_func_uint16_t_u_u((((*l_390) ^= (((l_684 = (*p_743->g_372)) , ((*l_599) = (safe_add_func_int16_t_s_s(((p_743->g_687[2] ^= (+0x7BEAF455L)) , p_14), 65535UL)))) <= l_675)) , l_684), p_14)) ^ l_675))))) == p_15))) , l_688) != l_690[0][0][3]) > p_743->g_113[5])) && p_743->g_326.f6)), p_743->g_326.f1))), p_743->g_326.f0)), (*p_743->g_495))) , (void*)0) != &l_593), p_743->g_325.f1, &p_743->g_628, p_14, p_743->g_322.f7, p_743);
                        p_743->g_151[6][0] = func_102(p_15, (*l_629), l_608, (p_14 & ((p_743->g_324[3].f7 >= (((void*)0 != &l_526) == ((((((((safe_add_func_int16_t_s_s(p_14, p_14)) <= p_743->g_538.f4) >= 255UL) == p_14) || 0x45L) , &l_598) != (void*)0) , 1L))) >= l_693[1][1])), p_14, p_743);
                        l_694--;
                    }
                    else
                    { /* block id: 309 */
                        int32_t *l_697 = &p_743->g_113[0];
                        l_697 = &p_743->g_138;
                        if (l_698)
                            continue;
                        (*l_629) = (l_425[2] <= ((((*l_388) = ((2L < (!(p_15 , (safe_lshift_func_uint8_t_u_u((l_426 != l_592), 0))))) & (*l_697))) , ((*l_560) ^= (safe_rshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((l_707[3] != (void*)0), ((safe_unary_minus_func_int64_t_s(1L)) == p_743->g_326.f6))), p_743->g_323.f7)))) && 0x29L));
                        (*l_390) ^= p_14;
                    }
                    (*l_629) &= (p_743->g_24 & (l_709[0] == &l_293));
                    for (p_743->g_322.f4 = 0; (p_743->g_322.f4 != 23); p_743->g_322.f4 = safe_add_func_uint8_t_u_u(p_743->g_322.f4, 6))
                    { /* block id: 320 */
                        uint64_t l_712 = 1UL;
                        l_713[2] = (l_712 ^= (*l_629));
                        if (p_15)
                            continue;
                        l_714 = &l_526;
                        (*l_629) &= (0UL ^ 0UL);
                    }
                }
            }
            if (p_15)
                break;
            p_743->g_151[6][0] = &l_526;
        }
        else
        { /* block id: 331 */
            int8_t l_715 = (-9L);
            return l_715;
        }
    }
    return p_743->g_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_743->g_121 p_743->g_138 p_743->g_52 p_743->g_47 p_743->g_67 p_743->g_183
 * writes: p_743->g_151 p_743->g_121 p_743->g_83 p_743->g_208 p_743->g_237 p_743->g_22 p_743->g_55
 */
struct S0 * func_32(uint64_t  p_33, uint32_t  p_34, int32_t  p_35, uint32_t * p_36, struct S1 * p_743)
{ /* block id: 74 */
    int32_t **l_189 = &p_743->g_151[6][2];
    int32_t l_209 = 0x352631F3L;
    int32_t l_216 = 0x1DC5B5BAL;
    int32_t l_217 = (-9L);
    int32_t l_218 = 0L;
    int32_t l_219 = 1L;
    int32_t l_220 = 0x7196D43CL;
    int32_t l_221[9];
    uint32_t l_222 = 4294967295UL;
    uint32_t l_250 = 0x9899C459L;
    int32_t *l_252 = &p_743->g_55[4];
    uint32_t l_259 = 0x14E06629L;
    int i;
    for (i = 0; i < 9; i++)
        l_221[i] = 0x4A303420L;
    (*l_189) = p_36;
    for (p_743->g_121 = 18; (p_743->g_121 > 27); p_743->g_121++)
    { /* block id: 78 */
        uint64_t l_202 = 0xA33BAAAF899989E6L;
        uint32_t l_203 = 0UL;
        uint16_t *l_206 = &p_743->g_83[0][0];
        int8_t *l_207 = &p_743->g_208;
        int32_t *l_210 = &p_743->g_55[0];
        int32_t l_211 = 8L;
        int32_t *l_212 = &p_743->g_138;
        int32_t *l_213 = (void*)0;
        int32_t *l_214 = &l_211;
        int32_t *l_215[1];
        int32_t l_258 = 0x2252D0A6L;
        int i;
        for (i = 0; i < 1; i++)
            l_215[i] = &l_211;
        l_209 = ((((safe_rshift_func_int8_t_s_s(((*l_207) = (+(p_743->g_138 , ((safe_mod_func_uint32_t_u_u((*p_36), (safe_rshift_func_int16_t_s_u(((safe_sub_func_uint64_t_u_u((safe_div_func_int32_t_s_s(l_202, l_202)), (p_743->g_47[0] && 0x14L))) , l_203), FAKE_DIVERGE(p_743->global_1_offset, get_global_id(1), 10))))) < (safe_sub_func_uint32_t_u_u((((*l_206) = (0xAD0C03D5BD352715L != p_743->g_67)) > 1UL), p_743->g_47[0])))))), l_202)) && l_203) <= FAKE_DIVERGE(p_743->local_1_offset, get_local_id(1), 10)) ^ l_202);
        l_222--;
        if (p_35)
        { /* block id: 83 */
            uint32_t l_227 = 0x01EBF44BL;
            for (p_34 = 1; (p_34 <= 4); p_34 += 1)
            { /* block id: 86 */
                int32_t l_225 = 0x135F3ACBL;
                int32_t l_226[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_226[i] = 0x7731CCDAL;
                l_227--;
            }
        }
        else
        { /* block id: 89 */
            uint32_t *l_236 = &p_743->g_237;
            int32_t l_242 = 0x5A177585L;
            int16_t *l_249 = &p_743->g_22;
            if ((0x09F6058DL || (((safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u(((0xC981L & ((((((safe_sub_func_uint32_t_u_u(0xD7A3F9EBL, (~4294967295UL))) , ((*l_236) = FAKE_DIVERGE(p_743->group_0_offset, get_group_id(0), 10))) , ((~(safe_lshift_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(l_242, (&p_743->g_208 != (void*)0))) == ((FAKE_DIVERGE(p_743->global_0_offset, get_global_id(0), 10) < 0x0BL) >= (safe_mul_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s(((*l_249) = (safe_mul_func_int16_t_s_s(p_33, p_33))), l_250)) | p_33), p_33)))), p_743->g_47[0]))) , l_242)) | 0UL) > p_743->g_138) > 0L)) , 0x80E8L), 13)), 4294967295UL)) != p_743->g_121) >= p_34)))
            { /* block id: 92 */
                for (l_202 = 0; (l_202 <= 2); l_202 += 1)
                { /* block id: 95 */
                    int32_t *l_251 = &l_221[1];
                    int i;
                    if (l_221[(l_202 + 5)])
                        break;
                    (*l_189) = l_251;
                    for (l_242 = 0; (l_242 <= 2); l_242 += 1)
                    { /* block id: 100 */
                        (*l_189) = l_252;
                    }
                }
            }
            else
            { /* block id: 104 */
                uint16_t l_255 = 65535UL;
                for (l_216 = 6; (l_216 == 4); l_216 = safe_sub_func_int64_t_s_s(l_216, 1))
                { /* block id: 107 */
                    for (p_33 = 0; (p_33 <= 7); p_33 += 1)
                    { /* block id: 110 */
                        int i;
                        ++l_255;
                        (*l_189) = &p_743->g_113[p_33];
                    }
                }
                (*l_189) = p_36;
                (*l_252) = l_258;
            }
        }
        l_259--;
    }
    return p_743->g_183[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_743->g_47 p_743->g_45 p_743->g_22 p_743->g_55 p_743->g_67 p_743->g_121 p_743->g_122 p_743->g_52 p_743->g_113 p_743->g_138 p_743->g_179 p_743->g_183 p_743->g_93
 * writes: p_743->g_45 p_743->g_55 p_743->g_67 p_743->g_83 p_743->g_93 p_743->g_113 p_743->g_121 p_743->g_138 p_743->g_52 p_743->g_151 p_743->g_179 p_743->g_47
 */
uint32_t * func_40(uint32_t  p_41, struct S1 * p_743)
{ /* block id: 14 */
    uint32_t *l_51[6];
    int32_t *l_54 = &p_743->g_55[0];
    int32_t *l_56 = &p_743->g_55[0];
    int32_t *l_57 = &p_743->g_55[0];
    int32_t *l_58 = &p_743->g_45;
    int32_t *l_59 = &p_743->g_55[0];
    int32_t *l_60 = &p_743->g_55[3];
    int32_t *l_61 = &p_743->g_45;
    int32_t *l_62[9][5][5] = {{{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]}},{{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]}},{{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]}},{{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]}},{{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]}},{{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]}},{{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]}},{{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]}},{{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]},{&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[0],&p_743->g_55[2]}}};
    uint32_t l_63 = 4294967294UL;
    uint8_t *l_66 = &p_743->g_67;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_51[i] = &p_743->g_52;
    (*l_54) |= func_48((((p_743->g_47[0] <= 0UL) & (p_743->g_45 , 1UL)) , l_51[4]), p_743->g_22, p_743);
    l_63++;
    (*l_54) = (&l_63 != ((++(*l_66)) , func_70((++(*l_66)), p_743)));
    return &p_743->g_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_743->g_45
 * writes: p_743->g_45
 */
uint32_t  func_42(int32_t * p_43, struct S1 * p_743)
{ /* block id: 10 */
    int32_t *l_44 = &p_743->g_45;
    (*l_44) = 0x04235372L;
    return (*l_44);
}


/* ------------------------------------------ */
/* 
 * reads : p_743->g_45 p_743->g_47
 * writes: p_743->g_45
 */
int32_t  func_48(uint32_t * p_49, uint32_t  p_50, struct S1 * p_743)
{ /* block id: 15 */
    int32_t *l_53 = &p_743->g_45;
    (*l_53) = func_42(l_53, p_743);
    return p_743->g_47[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_743->g_67 p_743->g_55 p_743->g_47 p_743->g_45 p_743->g_121 p_743->g_122 p_743->g_52 p_743->g_113 p_743->g_138 p_743->g_179 p_743->g_183 p_743->g_22 p_743->g_93
 * writes: p_743->g_67 p_743->g_83 p_743->g_93 p_743->g_45 p_743->g_113 p_743->g_121 p_743->g_138 p_743->g_52 p_743->g_151 p_743->g_179 p_743->g_47
 */
uint32_t * func_70(uint8_t  p_71, struct S1 * p_743)
{ /* block id: 22 */
    uint32_t l_75 = 0xA102817AL;
    uint32_t *l_94 = (void*)0;
    uint16_t l_108 = 0x126AL;
    uint32_t l_154 = 1UL;
    uint64_t *l_178 = &p_743->g_179;
    uint16_t *l_182 = &l_108;
    uint32_t *l_184 = &p_743->g_47[0];
    int16_t *l_185 = (void*)0;
    int16_t *l_186[4];
    int32_t l_187 = 0L;
    int32_t *l_188 = &p_743->g_138;
    int i;
    for (i = 0; i < 4; i++)
        l_186[i] = &p_743->g_93;
    for (p_743->g_67 = 0; (p_743->g_67 <= 4); p_743->g_67 += 1)
    { /* block id: 25 */
        int32_t *l_74[2][7][7] = {{{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0}},{{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0},{&p_743->g_45,(void*)0,&p_743->g_55[p_743->g_67],(void*)0,&p_743->g_45,&p_743->g_45,(void*)0}}};
        uint16_t *l_82 = &p_743->g_83[0][0];
        int16_t *l_92 = &p_743->g_93;
        int i, j, k;
        --l_75;
        if ((FAKE_DIVERGE(p_743->global_2_offset, get_global_id(2), 10) , (safe_add_func_int8_t_s_s((p_743->g_55[p_743->g_67] != (safe_mul_func_int16_t_s_s((p_743->g_47[0] < p_743->g_47[0]), ((*l_82) = p_743->g_47[0])))), (safe_mod_func_int64_t_s_s((safe_div_func_uint32_t_u_u((safe_div_func_int16_t_s_s((safe_add_func_int8_t_s_s(((l_75 , (((*l_92) = p_743->g_47[0]) && (&p_743->g_47[0] == l_94))) == (l_154 = func_95((safe_rshift_func_uint16_t_u_s(func_42(func_102(p_743->g_67, p_743->g_67, l_82, l_75, l_108, p_743), p_743), 10)), l_75, p_743->g_47[0], l_108, p_743))), 0x08L)), FAKE_DIVERGE(p_743->global_2_offset, get_global_id(2), 10))), p_71)), 1UL))))))
        { /* block id: 59 */
            uint32_t *l_155[2];
            int i;
            for (i = 0; i < 2; i++)
                l_155[i] = &p_743->g_52;
            if (p_71)
                break;
            return l_155[1];
        }
        else
        { /* block id: 62 */
            uint32_t *l_156 = &p_743->g_52;
            return l_156;
        }
    }
    (*l_188) ^= ((safe_sub_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s((l_187 = (p_743->g_113[4] < (p_71 && (((*l_184) = (safe_rshift_func_uint16_t_u_u((0x23L >= (!(((((safe_rshift_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u(((*l_182) = (p_743->g_55[0] , (safe_lshift_func_int16_t_s_u(p_71, ((safe_div_func_int64_t_s_s(((+((p_743->g_45 < (safe_lshift_func_uint16_t_u_s(p_71, 5))) <= ((((safe_unary_minus_func_uint64_t_u(((*l_178) ^= (safe_rshift_func_int8_t_s_s(l_108, 2))))) || (safe_div_func_uint32_t_u_u(0x50D5A8CBL, p_71))) || p_743->g_113[0]) & p_71))) , p_743->g_52), l_154)) , p_743->g_52))))), (-1L))) ^ 0x69AAEB0CL) >= p_743->g_55[0]), l_75)) , p_743->g_183[2]) == (void*)0) , l_154) ^ GROUP_DIVERGE(1, 1)))), 15))) , l_75)))), p_743->g_22)) , p_743->g_93), p_743->g_67)) , p_71);
    return &p_743->g_52;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_95(uint32_t  p_96, int32_t  p_97, int32_t  p_98, int32_t  p_99, struct S1 * p_743)
{ /* block id: 56 */
    uint8_t l_153 = 0x42L;
    return l_153;
}


/* ------------------------------------------ */
/* 
 * reads : p_743->g_45 p_743->g_121 p_743->g_122 p_743->g_55 p_743->g_47 p_743->g_52 p_743->g_113 p_743->g_138
 * writes: p_743->g_45 p_743->g_113 p_743->g_121 p_743->g_138 p_743->g_52 p_743->g_151
 */
int32_t * func_102(int32_t  p_103, int64_t  p_104, int16_t * p_105, int32_t  p_106, uint64_t  p_107, struct S1 * p_743)
{ /* block id: 29 */
    uint32_t l_109[9] = {0xE82EF243L,0xE82EF243L,0xE82EF243L,0xE82EF243L,0xE82EF243L,0xE82EF243L,0xE82EF243L,0xE82EF243L,0xE82EF243L};
    int32_t *l_110 = &p_743->g_45;
    int32_t *l_111 = (void*)0;
    int32_t *l_112 = &p_743->g_113[0];
    uint32_t l_135 = 0xC659033EL;
    uint16_t l_136 = 0x50D9L;
    int32_t l_145[10][7] = {{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL},{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL},{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL},{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL},{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL},{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL},{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL},{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL},{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL},{(-1L),0x43FE24BEL,0x637B4EECL,0x43FE24BEL,(-1L),(-1L),0x43FE24BEL}};
    uint32_t l_147 = 0x3E1DE84EL;
    int32_t **l_150[7][9][4] = {{{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112}},{{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112}},{{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112}},{{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112}},{{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112}},{{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112}},{{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112},{&l_112,&l_110,&l_112,&l_112}}};
    int32_t *l_152 = &p_743->g_55[0];
    int i, j, k;
    (*l_112) = ((*l_110) ^= l_109[4]);
    if (p_104)
    { /* block id: 32 */
        uint32_t l_134 = 0x93C24CE6L;
        int32_t **l_139 = &l_112;
        for (p_103 = (-18); (p_103 >= (-10)); ++p_103)
        { /* block id: 35 */
            int16_t *l_120 = &p_743->g_121;
            int32_t *l_137 = &p_743->g_138;
            (*l_137) ^= (safe_mul_func_int16_t_s_s((((((safe_div_func_int64_t_s_s(p_106, p_106)) && 0UL) , ((*l_120) |= (((*l_110) = 0x1B496B13L) ^ (-1L)))) , ((void*)0 == p_743->g_122)) , (((p_743->g_55[0] ^ (safe_div_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(((safe_add_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (((((safe_mod_func_int32_t_s_s(l_134, 0x3B77E5FFL)) ^ p_103) <= p_743->g_55[2]) & 8L) & l_134))), p_743->g_47[0])) | 0x1870L), p_743->g_52)), l_135))) >= l_136) != 0L)), (*l_112)));
            for (p_743->g_52 = 0; (p_743->g_52 <= 8); p_743->g_52 += 1)
            { /* block id: 41 */
                return &p_743->g_138;
            }
        }
        (*l_139) = &p_106;
        (*l_112) = ((*l_110) = (&l_134 == &p_743->g_47[0]));
    }
    else
    { /* block id: 48 */
        int32_t *l_140 = &p_743->g_113[6];
        int32_t *l_141 = &p_743->g_138;
        int32_t *l_142 = &p_743->g_138;
        int32_t *l_143 = &p_743->g_138;
        int32_t *l_144[5] = {&p_743->g_138,&p_743->g_138,&p_743->g_138,&p_743->g_138,&p_743->g_138};
        int32_t l_146 = 0x1ED19117L;
        int i;
        --l_147;
    }
    p_743->g_151[6][0] = (l_111 = &p_743->g_113[0]);
    (*l_110) = ((*l_111) = (*l_112));
    return l_152;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_744;
    struct S1* p_743 = &c_744;
    struct S1 c_745 = {
        0x065925EFL, // p_743->g_7
        (-10L), // p_743->g_22
        0UL, // p_743->g_24
        0x1AC573C0L, // p_743->g_45
        {4UL,4UL}, // p_743->g_47
        0xE6139440L, // p_743->g_52
        {0x558E0D31L,0x558E0D31L,0x558E0D31L,0x558E0D31L,0x558E0D31L}, // p_743->g_55
        0x39L, // p_743->g_67
        {{0x82E3L,65535UL},{0x82E3L,65535UL},{0x82E3L,65535UL}}, // p_743->g_83
        (-1L), // p_743->g_93
        {1L,1L,1L,1L,1L,1L,1L,1L}, // p_743->g_113
        0x3DD4L, // p_743->g_121
        65534UL, // p_743->g_123
        &p_743->g_123, // p_743->g_122
        1L, // p_743->g_138
        {{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0},{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0},{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0},{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0},{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0},{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0},{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0},{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0},{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0},{&p_743->g_113[7],(void*)0,&p_743->g_55[4],(void*)0,&p_743->g_113[7],&p_743->g_113[7],(void*)0}}, // p_743->g_151
        2UL, // p_743->g_179
        {(void*)0,(void*)0,(void*)0}, // p_743->g_183
        1L, // p_743->g_208
        0x13DE211DL, // p_743->g_237
        {{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}},{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}},{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}},{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}},{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}},{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}},{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}},{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}},{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}},{{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}},{{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL},{0x4E52B62957E2A4A3L,246UL,0L,0L,-6L,0x6B044417L,0x78ACBF38DE2D49E9L,0x30FA0B99L,0UL}}}}, // p_743->g_263
        {0x1D473A6E8ACB7A4CL,0xB4L,1L,4L,0x32L,0x4EFEECC2L,0x7E35C650620B81F5L,0xF802E3AFL,0x8633A95CA0F49EA9L}, // p_743->g_322
        {0x01AA66F7E1018A83L,247UL,-1L,-10L,0x69L,0x5A4EE885L,0x78C8CA22181DD4F0L,0x93EFC1DEL,0x43FA797A1178A45FL}, // p_743->g_323
        {{0x7EE16122D1E0E351L,0xE4L,0x6BB217B4EAEF42EDL,-7L,0x06L,0L,4L,0xC4A56A7DL,0xAFAA862ADCA9E4AFL},{0x7EE16122D1E0E351L,0xE4L,0x6BB217B4EAEF42EDL,-7L,0x06L,0L,4L,0xC4A56A7DL,0xAFAA862ADCA9E4AFL},{0x7EE16122D1E0E351L,0xE4L,0x6BB217B4EAEF42EDL,-7L,0x06L,0L,4L,0xC4A56A7DL,0xAFAA862ADCA9E4AFL},{0x7EE16122D1E0E351L,0xE4L,0x6BB217B4EAEF42EDL,-7L,0x06L,0L,4L,0xC4A56A7DL,0xAFAA862ADCA9E4AFL},{0x7EE16122D1E0E351L,0xE4L,0x6BB217B4EAEF42EDL,-7L,0x06L,0L,4L,0xC4A56A7DL,0xAFAA862ADCA9E4AFL}}, // p_743->g_324
        {-2L,1UL,4L,0L,-1L,1L,0x0F9339DDDB8344C8L,1UL,0x418E057126FDA33CL}, // p_743->g_325
        {-9L,0xC8L,0x542B8D876790BB88L,0L,0x7BL,0x3AFEF725L,1L,0xAE68A92CL,9UL}, // p_743->g_326
        &p_743->g_324[3].f6, // p_743->g_367
        &p_743->g_237, // p_743->g_372
        0xA4201D22E258E496L, // p_743->g_459
        &p_743->g_322.f1, // p_743->g_495
        {{{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0}},{{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0}},{{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0}},{{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0}},{{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0}},{{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0}},{{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0},{&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,&p_743->g_495,(void*)0}}}, // p_743->g_494
        {0x7D1F4710967B2B03L,0x85L,0x2340669DE38F64A9L,0x02EBAB67L,1L,-1L,0x27B8834B77566E26L,4294967290UL,0x22BF95697E24455FL}, // p_743->g_538
        1L, // p_743->g_557
        (void*)0, // p_743->g_567
        2L, // p_743->g_628
        {-1L,255UL,-1L,0x75ACD4CEL,0x0FL,0x5404C2ADL,0x3D9E0B162F3D6A7FL,0UL,18446744073709551615UL}, // p_743->g_667
        &p_743->g_459, // p_743->g_680
        &p_743->g_680, // p_743->g_679
        {{&p_743->g_679,&p_743->g_679,&p_743->g_679},{&p_743->g_679,&p_743->g_679,&p_743->g_679},{&p_743->g_679,&p_743->g_679,&p_743->g_679}}, // p_743->g_678
        {0x797FD7D5L,0x797FD7D5L,0x797FD7D5L,0x797FD7D5L,0x797FD7D5L,0x797FD7D5L}, // p_743->g_687
        (void*)0, // p_743->g_720
        0x40L, // p_743->g_742
        sequence_input[get_global_id(0)], // p_743->global_0_offset
        sequence_input[get_global_id(1)], // p_743->global_1_offset
        sequence_input[get_global_id(2)], // p_743->global_2_offset
        sequence_input[get_local_id(0)], // p_743->local_0_offset
        sequence_input[get_local_id(1)], // p_743->local_1_offset
        sequence_input[get_local_id(2)], // p_743->local_2_offset
        sequence_input[get_group_id(0)], // p_743->group_0_offset
        sequence_input[get_group_id(1)], // p_743->group_1_offset
        sequence_input[get_group_id(2)], // p_743->group_2_offset
    };
    c_744 = c_745;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_743);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_743->g_7, "p_743->g_7", print_hash_value);
    transparent_crc(p_743->g_22, "p_743->g_22", print_hash_value);
    transparent_crc(p_743->g_24, "p_743->g_24", print_hash_value);
    transparent_crc(p_743->g_45, "p_743->g_45", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_743->g_47[i], "p_743->g_47[i]", print_hash_value);

    }
    transparent_crc(p_743->g_52, "p_743->g_52", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_743->g_55[i], "p_743->g_55[i]", print_hash_value);

    }
    transparent_crc(p_743->g_67, "p_743->g_67", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_743->g_83[i][j], "p_743->g_83[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_743->g_93, "p_743->g_93", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_743->g_113[i], "p_743->g_113[i]", print_hash_value);

    }
    transparent_crc(p_743->g_121, "p_743->g_121", print_hash_value);
    transparent_crc(p_743->g_123, "p_743->g_123", print_hash_value);
    transparent_crc(p_743->g_138, "p_743->g_138", print_hash_value);
    transparent_crc(p_743->g_179, "p_743->g_179", print_hash_value);
    transparent_crc(p_743->g_208, "p_743->g_208", print_hash_value);
    transparent_crc(p_743->g_237, "p_743->g_237", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_743->g_263[i][j][k].f0, "p_743->g_263[i][j][k].f0", print_hash_value);
                transparent_crc(p_743->g_263[i][j][k].f1, "p_743->g_263[i][j][k].f1", print_hash_value);
                transparent_crc(p_743->g_263[i][j][k].f2, "p_743->g_263[i][j][k].f2", print_hash_value);
                transparent_crc(p_743->g_263[i][j][k].f3, "p_743->g_263[i][j][k].f3", print_hash_value);
                transparent_crc(p_743->g_263[i][j][k].f4, "p_743->g_263[i][j][k].f4", print_hash_value);
                transparent_crc(p_743->g_263[i][j][k].f5, "p_743->g_263[i][j][k].f5", print_hash_value);
                transparent_crc(p_743->g_263[i][j][k].f6, "p_743->g_263[i][j][k].f6", print_hash_value);
                transparent_crc(p_743->g_263[i][j][k].f7, "p_743->g_263[i][j][k].f7", print_hash_value);
                transparent_crc(p_743->g_263[i][j][k].f8, "p_743->g_263[i][j][k].f8", print_hash_value);

            }
        }
    }
    transparent_crc(p_743->g_322.f0, "p_743->g_322.f0", print_hash_value);
    transparent_crc(p_743->g_322.f1, "p_743->g_322.f1", print_hash_value);
    transparent_crc(p_743->g_322.f2, "p_743->g_322.f2", print_hash_value);
    transparent_crc(p_743->g_322.f3, "p_743->g_322.f3", print_hash_value);
    transparent_crc(p_743->g_322.f4, "p_743->g_322.f4", print_hash_value);
    transparent_crc(p_743->g_322.f5, "p_743->g_322.f5", print_hash_value);
    transparent_crc(p_743->g_322.f6, "p_743->g_322.f6", print_hash_value);
    transparent_crc(p_743->g_322.f7, "p_743->g_322.f7", print_hash_value);
    transparent_crc(p_743->g_322.f8, "p_743->g_322.f8", print_hash_value);
    transparent_crc(p_743->g_323.f0, "p_743->g_323.f0", print_hash_value);
    transparent_crc(p_743->g_323.f1, "p_743->g_323.f1", print_hash_value);
    transparent_crc(p_743->g_323.f2, "p_743->g_323.f2", print_hash_value);
    transparent_crc(p_743->g_323.f3, "p_743->g_323.f3", print_hash_value);
    transparent_crc(p_743->g_323.f4, "p_743->g_323.f4", print_hash_value);
    transparent_crc(p_743->g_323.f5, "p_743->g_323.f5", print_hash_value);
    transparent_crc(p_743->g_323.f6, "p_743->g_323.f6", print_hash_value);
    transparent_crc(p_743->g_323.f7, "p_743->g_323.f7", print_hash_value);
    transparent_crc(p_743->g_323.f8, "p_743->g_323.f8", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_743->g_324[i].f0, "p_743->g_324[i].f0", print_hash_value);
        transparent_crc(p_743->g_324[i].f1, "p_743->g_324[i].f1", print_hash_value);
        transparent_crc(p_743->g_324[i].f2, "p_743->g_324[i].f2", print_hash_value);
        transparent_crc(p_743->g_324[i].f3, "p_743->g_324[i].f3", print_hash_value);
        transparent_crc(p_743->g_324[i].f4, "p_743->g_324[i].f4", print_hash_value);
        transparent_crc(p_743->g_324[i].f5, "p_743->g_324[i].f5", print_hash_value);
        transparent_crc(p_743->g_324[i].f6, "p_743->g_324[i].f6", print_hash_value);
        transparent_crc(p_743->g_324[i].f7, "p_743->g_324[i].f7", print_hash_value);
        transparent_crc(p_743->g_324[i].f8, "p_743->g_324[i].f8", print_hash_value);

    }
    transparent_crc(p_743->g_325.f0, "p_743->g_325.f0", print_hash_value);
    transparent_crc(p_743->g_325.f1, "p_743->g_325.f1", print_hash_value);
    transparent_crc(p_743->g_325.f2, "p_743->g_325.f2", print_hash_value);
    transparent_crc(p_743->g_325.f3, "p_743->g_325.f3", print_hash_value);
    transparent_crc(p_743->g_325.f4, "p_743->g_325.f4", print_hash_value);
    transparent_crc(p_743->g_325.f5, "p_743->g_325.f5", print_hash_value);
    transparent_crc(p_743->g_325.f6, "p_743->g_325.f6", print_hash_value);
    transparent_crc(p_743->g_325.f7, "p_743->g_325.f7", print_hash_value);
    transparent_crc(p_743->g_325.f8, "p_743->g_325.f8", print_hash_value);
    transparent_crc(p_743->g_326.f0, "p_743->g_326.f0", print_hash_value);
    transparent_crc(p_743->g_326.f1, "p_743->g_326.f1", print_hash_value);
    transparent_crc(p_743->g_326.f2, "p_743->g_326.f2", print_hash_value);
    transparent_crc(p_743->g_326.f3, "p_743->g_326.f3", print_hash_value);
    transparent_crc(p_743->g_326.f4, "p_743->g_326.f4", print_hash_value);
    transparent_crc(p_743->g_326.f5, "p_743->g_326.f5", print_hash_value);
    transparent_crc(p_743->g_326.f6, "p_743->g_326.f6", print_hash_value);
    transparent_crc(p_743->g_326.f7, "p_743->g_326.f7", print_hash_value);
    transparent_crc(p_743->g_326.f8, "p_743->g_326.f8", print_hash_value);
    transparent_crc(p_743->g_459, "p_743->g_459", print_hash_value);
    transparent_crc(p_743->g_538.f0, "p_743->g_538.f0", print_hash_value);
    transparent_crc(p_743->g_538.f1, "p_743->g_538.f1", print_hash_value);
    transparent_crc(p_743->g_538.f2, "p_743->g_538.f2", print_hash_value);
    transparent_crc(p_743->g_538.f3, "p_743->g_538.f3", print_hash_value);
    transparent_crc(p_743->g_538.f4, "p_743->g_538.f4", print_hash_value);
    transparent_crc(p_743->g_538.f5, "p_743->g_538.f5", print_hash_value);
    transparent_crc(p_743->g_538.f6, "p_743->g_538.f6", print_hash_value);
    transparent_crc(p_743->g_538.f7, "p_743->g_538.f7", print_hash_value);
    transparent_crc(p_743->g_538.f8, "p_743->g_538.f8", print_hash_value);
    transparent_crc(p_743->g_557, "p_743->g_557", print_hash_value);
    transparent_crc(p_743->g_628, "p_743->g_628", print_hash_value);
    transparent_crc(p_743->g_667.f0, "p_743->g_667.f0", print_hash_value);
    transparent_crc(p_743->g_667.f1, "p_743->g_667.f1", print_hash_value);
    transparent_crc(p_743->g_667.f2, "p_743->g_667.f2", print_hash_value);
    transparent_crc(p_743->g_667.f3, "p_743->g_667.f3", print_hash_value);
    transparent_crc(p_743->g_667.f4, "p_743->g_667.f4", print_hash_value);
    transparent_crc(p_743->g_667.f5, "p_743->g_667.f5", print_hash_value);
    transparent_crc(p_743->g_667.f6, "p_743->g_667.f6", print_hash_value);
    transparent_crc(p_743->g_667.f7, "p_743->g_667.f7", print_hash_value);
    transparent_crc(p_743->g_667.f8, "p_743->g_667.f8", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_743->g_687[i], "p_743->g_687[i]", print_hash_value);

    }
    transparent_crc(p_743->g_742, "p_743->g_742", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
