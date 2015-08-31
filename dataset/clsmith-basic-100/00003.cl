// ---fake_divergence -g 1,1,1 -l 1,1,1
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


// Seed: 3

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   int16_t  f1;
   uint16_t  f2;
   int32_t  f3;
   int32_t  f4;
   int32_t  f5;
   uint32_t  f6;
   int32_t  f7;
   volatile int8_t  f8;
   volatile int32_t  f9;
};

struct S1 {
   volatile uint16_t  f0;
   uint32_t  f1;
   uint16_t  f2;
   struct S0  f3;
   uint64_t  f4;
   int8_t  f5;
   uint32_t  f6;
};

struct S2 {
   volatile int32_t  f0;
   volatile uint32_t  f1;
   uint8_t  f2;
};

struct S3 {
   struct S1  f0;
   uint64_t  f1;
   volatile int16_t  f2;
   int32_t  f3;
};

struct S4 {
   int8_t  f0;
   uint32_t  f1;
   int64_t  f2;
   int32_t  f3;
};

struct S5 {
    int32_t g_2;
    int32_t g_5;
    int32_t g_19;
    int32_t g_36;
    int32_t g_43[5];
    struct S4 g_55;
    struct S0 g_66;
    uint8_t g_74;
    volatile struct S2 g_77;
    uint64_t g_79;
    int32_t *g_90;
    int32_t ** volatile g_89;
    struct S3 g_92;
    volatile uint64_t g_107;
    volatile uint64_t * volatile g_106;
    volatile uint64_t * volatile *g_105;
    volatile uint64_t * volatile ** volatile g_108;
    volatile uint64_t * volatile ** volatile g_109[8][2];
    uint32_t g_151;
    struct S4 g_153;
    int64_t g_158[2];
    struct S3 g_167[1];
    int32_t *g_189;
    struct S0 g_194;
    volatile struct S0 g_197;
    struct S4 * volatile g_240;
    volatile struct S2 g_268[7];
    volatile struct S2 * volatile g_269;
    struct S2 g_273[5];
    volatile struct S0 g_276[6];
    int32_t ** volatile g_278;
    struct S1 g_288;
    struct S1 g_300[7];
    int16_t g_310[2][10];
    volatile struct S0 g_327;
    volatile struct S0 *g_352;
    volatile struct S0 ** volatile g_351;
    volatile struct S2 g_357[3];
    int32_t **g_407;
    int32_t *** volatile g_406;
    struct S2 g_431;
    struct S2 *g_430;
    struct S2 g_434[9];
    struct S2 *g_433;
    volatile uint16_t *g_438;
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
int64_t  func_1(struct S5 * p_447);
int32_t * func_8(int64_t  p_9, uint32_t  p_10, uint32_t  p_11, struct S4  p_12, struct S5 * p_447);
int32_t  func_15(int32_t  p_16, uint64_t  p_17, struct S5 * p_447);
uint64_t  func_20(int32_t * p_21, uint32_t  p_22, int32_t  p_23, uint16_t  p_24, struct S5 * p_447);
int32_t * func_26(uint8_t  p_27, uint32_t  p_28, struct S4  p_29, struct S4  p_30, uint32_t  p_31, struct S5 * p_447);
struct S4  func_32(int32_t  p_33, struct S5 * p_447);
int64_t  func_38(uint32_t  p_39, int32_t * p_40, struct S5 * p_447);
int32_t  func_44(int32_t * p_45, int32_t  p_46, int32_t * p_47, int32_t * p_48, struct S5 * p_447);
int32_t * func_49(int32_t  p_50, int32_t * p_51, uint32_t  p_52, struct S4  p_53, int64_t  p_54, struct S5 * p_447);
struct S3 * func_56(int8_t  p_57, int32_t * p_58, int32_t * p_59, int64_t  p_60, int32_t  p_61, struct S5 * p_447);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_447->g_2 p_447->g_19 p_447->g_5 p_447->g_36 p_447->g_43 p_447->g_55 p_447->g_66 p_447->g_77 p_447->g_89 p_447->g_105 p_447->g_90 p_447->g_74 p_447->g_92.f1 p_447->g_153 p_447->g_92.f0.f3.f0 p_447->g_158 p_447->g_92.f3 p_447->g_167 p_447->g_92.f0.f2 p_447->g_151 p_447->g_194 p_447->g_197 p_447->g_278 p_447->g_288 p_447->g_92.f0.f3.f3 p_447->g_300 p_447->g_92.f0.f4 p_447->g_310 p_447->g_189 p_447->g_79 p_447->g_327 p_447->g_106 p_447->g_107 p_447->g_351 p_447->g_357 p_447->g_273.f2 p_447->g_406 p_447->g_268.f1 p_447->g_430 p_447->g_433 p_447->g_438 p_447->g_431.f2
 * writes: p_447->g_2 p_447->g_5 p_447->g_19 p_447->g_43 p_447->g_74 p_447->g_66.f2 p_447->g_90 p_447->g_92.f1 p_447->g_105 p_447->g_92.f0.f3.f1 p_447->g_77.f0 p_447->g_92.f0.f3.f9 p_447->g_109 p_447->g_92.f0.f4 p_447->g_55.f1 p_447->g_158 p_447->g_66.f5 p_447->g_55.f2 p_447->g_92.f0.f3.f3 p_447->g_66.f1 p_447->g_92.f0.f0 p_447->g_66.f6 p_447->g_189 p_447->g_167.f0.f3.f5 p_447->g_66 p_447->g_153.f1 p_447->g_300.f3.f4 p_447->g_167.f3 p_447->g_167.f1 p_447->g_300.f3.f3 p_447->g_273.f2 p_447->g_352 p_447->g_288.f3.f6 p_447->g_288.f4 p_447->g_327.f5 p_447->g_194.f1 p_447->g_407 p_447->g_288.f3.f1 p_447->g_55.f0 p_447->g_430 p_447->g_433 p_447->g_431.f2
 */
int64_t  func_1(struct S5 * p_447)
{ /* block id: 4 */
    int64_t l_162 = (-2L);
    struct S4 l_311 = {0L,4UL,0x08DDEFBBDF446996L,1L};
    int32_t l_371 = 6L;
    int32_t l_372 = 0x7B9FA781L;
    int32_t l_374[8][1][9] = {{{0x14318855L,1L,0x243AA115L,(-4L),5L,0x0C2293C4L,0x4A29DF43L,0x243AA115L,0x63C02B24L}},{{0x14318855L,1L,0x243AA115L,(-4L),5L,0x0C2293C4L,0x4A29DF43L,0x243AA115L,0x63C02B24L}},{{0x14318855L,1L,0x243AA115L,(-4L),5L,0x0C2293C4L,0x4A29DF43L,0x243AA115L,0x63C02B24L}},{{0x14318855L,1L,0x243AA115L,(-4L),5L,0x0C2293C4L,0x4A29DF43L,0x243AA115L,0x63C02B24L}},{{0x14318855L,1L,0x243AA115L,(-4L),5L,0x0C2293C4L,0x4A29DF43L,0x243AA115L,0x63C02B24L}},{{0x14318855L,1L,0x243AA115L,(-4L),5L,0x0C2293C4L,0x4A29DF43L,0x243AA115L,0x63C02B24L}},{{0x14318855L,1L,0x243AA115L,(-4L),5L,0x0C2293C4L,0x4A29DF43L,0x243AA115L,0x63C02B24L}},{{0x14318855L,1L,0x243AA115L,(-4L),5L,0x0C2293C4L,0x4A29DF43L,0x243AA115L,0x63C02B24L}}};
    uint32_t l_378 = 0xCBBC0675L;
    int32_t l_413 = (-1L);
    uint16_t l_415 = 0xDA62L;
    int i, j, k;
    for (p_447->g_2 = (-21); (p_447->g_2 <= (-10)); p_447->g_2 = safe_add_func_uint8_t_u_u(p_447->g_2, 1))
    { /* block id: 7 */
        int32_t l_25 = 0x151BB35BL;
        int64_t *l_343 = &l_162;
        uint32_t *l_348 = &l_311.f1;
        uint8_t *l_349 = &p_447->g_273[3].f2;
        uint8_t *l_350 = &p_447->g_74;
        for (p_447->g_5 = 0; (p_447->g_5 >= 8); ++p_447->g_5)
        { /* block id: 10 */
            int32_t *l_18 = &p_447->g_19;
            int32_t *l_35[1][2][7] = {{{&p_447->g_36,(void*)0,&p_447->g_36,(void*)0,&p_447->g_36,&p_447->g_36,(void*)0},{&p_447->g_36,(void*)0,&p_447->g_36,(void*)0,&p_447->g_36,&p_447->g_36,(void*)0}}};
            int16_t l_37 = 0x5D51L;
            struct S4 l_161 = {0x1BL,4UL,0x13782F4E6B69ECCDL,-1L};
            int32_t **l_340 = &l_18;
            int i, j, k;
            (*p_447->g_89) = ((*l_340) = func_8((safe_sub_func_int32_t_s_s(((((~func_15(((*l_18) &= p_447->g_2), func_20((l_25 , func_26(p_447->g_2, p_447->g_2, func_32((l_37 = ((safe_unary_minus_func_uint16_t_u(FAKE_DIVERGE(p_447->global_0_offset, get_global_id(0), 10))) <= (+(&l_25 != &l_25)))), p_447), l_161, ((-5L) == l_162), p_447)), l_162, l_25, l_25, p_447), p_447)) , p_447->g_197.f5) , l_162) | l_162), p_447->g_194.f2)), l_162, p_447->g_79, l_311, p_447));
        }
        (*p_447->g_351) = ((((*l_350) = (0x17A3E5DFL > (((*l_349) = (l_25 ^ (5L ^ (((safe_sub_func_int64_t_s_s(((*l_343) = (((*p_447->g_90) = 0x6386B8EAL) , l_311.f2)), ((safe_add_func_uint32_t_u_u(3UL, (safe_rshift_func_uint16_t_u_s(l_311.f2, 9)))) <= ((!(p_447->g_158[0] != (((*l_348) = FAKE_DIVERGE(p_447->global_1_offset, get_global_id(1), 10)) >= ((l_25 >= l_311.f2) >= 0x76B996CDL)))) >= (*p_447->g_106))))) > p_447->g_300[6].f3.f0) , GROUP_DIVERGE(1, 1))))) , 0UL))) <= FAKE_DIVERGE(p_447->global_1_offset, get_global_id(1), 10)) , &p_447->g_197);
    }
    for (p_447->g_288.f3.f6 = 28; (p_447->g_288.f3.f6 == 44); p_447->g_288.f3.f6 = safe_add_func_uint32_t_u_u(p_447->g_288.f3.f6, 6))
    { /* block id: 179 */
        uint16_t l_367 = 0xF431L;
        int32_t l_370[5][7] = {{(-4L),(-8L),(-1L),0x163F55FFL,0x7274A17FL,(-4L),0x163F55FFL},{(-4L),(-8L),(-1L),0x163F55FFL,0x7274A17FL,(-4L),0x163F55FFL},{(-4L),(-8L),(-1L),0x163F55FFL,0x7274A17FL,(-4L),0x163F55FFL},{(-4L),(-8L),(-1L),0x163F55FFL,0x7274A17FL,(-4L),0x163F55FFL},{(-4L),(-8L),(-1L),0x163F55FFL,0x7274A17FL,(-4L),0x163F55FFL}};
        int64_t l_373[3][9][1] = {{{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L}},{{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L}},{{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L},{0x4BF593E0B7A38470L}}};
        uint8_t l_441[6][9] = {{0UL,0UL,0x89L,0x78L,0x3DL,255UL,0xB6L,0x49L,0xB6L},{0UL,0UL,0x89L,0x78L,0x3DL,255UL,0xB6L,0x49L,0xB6L},{0UL,0UL,0x89L,0x78L,0x3DL,255UL,0xB6L,0x49L,0xB6L},{0UL,0UL,0x89L,0x78L,0x3DL,255UL,0xB6L,0x49L,0xB6L},{0UL,0UL,0x89L,0x78L,0x3DL,255UL,0xB6L,0x49L,0xB6L},{0UL,0UL,0x89L,0x78L,0x3DL,255UL,0xB6L,0x49L,0xB6L}};
        int i, j, k;
        for (p_447->g_288.f4 = 0; (p_447->g_288.f4 <= 40); p_447->g_288.f4 = safe_add_func_int32_t_s_s(p_447->g_288.f4, 1))
        { /* block id: 182 */
            int32_t *l_368 = &p_447->g_288.f3.f5;
            int32_t *l_369[4][3][9] = {{{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4},{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4},{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4}},{{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4},{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4},{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4}},{{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4},{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4},{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4}},{{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4},{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4},{&p_447->g_167[0].f0.f3.f4,&p_447->g_300[6].f3.f4,&p_447->g_300[6].f3.f5,&p_447->g_167[0].f0.f3.f5,(void*)0,&p_447->g_167[0].f0.f3.f5,&p_447->g_300[6].f3.f5,&p_447->g_300[6].f3.f4,&p_447->g_167[0].f0.f3.f4}}};
            uint16_t l_375 = 0x9DFFL;
            int i, j, k;
            l_367 |= ((p_447->g_357[1] , p_447->g_300[6].f3.f4) > (((0x4B6EL | 1UL) == (safe_unary_minus_func_uint32_t_u(((p_447->g_55 , (0xE0AC27BFL >= ((safe_mul_func_uint16_t_u_u(1UL, (safe_add_func_int8_t_s_s((safe_add_func_uint32_t_u_u(p_447->g_300[6].f3.f4, ((*p_447->g_90) = ((safe_div_func_int16_t_s_s(0x0686L, p_447->g_167[0].f3)) , (*p_447->g_90))))), p_447->g_300[6].f4)))) || p_447->g_288.f4))) , 0UL)))) < 0L));
            ++l_375;
            if ((*l_368))
                break;
            l_378--;
        }
        for (l_311.f1 = 0; (l_311.f1 < 35); l_311.f1 = safe_add_func_int64_t_s_s(l_311.f1, 4))
        { /* block id: 191 */
            uint64_t *l_392 = &p_447->g_92.f0.f4;
            int32_t l_414 = 0x65395E7CL;
            struct S3 *l_445[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_446[4][7][2] = {{{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L}},{{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L}},{{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L}},{{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L},{8L,0L}}};
            int i, j, k;
            for (p_447->g_92.f1 = 0; (p_447->g_92.f1 <= 1); p_447->g_92.f1 += 1)
            { /* block id: 194 */
                uint8_t *l_389 = &p_447->g_273[3].f2;
                uint64_t *l_393 = &p_447->g_167[0].f0.f4;
                int32_t *l_402 = (void*)0;
                int32_t *l_403 = &p_447->g_66.f4;
                int32_t *l_404[5] = {&p_447->g_167[0].f0.f3.f3,&p_447->g_167[0].f0.f3.f3,&p_447->g_167[0].f0.f3.f3,&p_447->g_167[0].f0.f3.f3,&p_447->g_167[0].f0.f3.f3};
                int i;
                p_447->g_327.f5 = (p_447->g_92.f0.f3.f3 = ((*l_403) = ((safe_add_func_uint8_t_u_u(p_447->g_158[p_447->g_92.f1], (p_447->g_158[p_447->g_92.f1] > ((safe_mul_func_uint16_t_u_u(2UL, (safe_rshift_func_uint8_t_u_u((--(*l_389)), p_447->g_158[p_447->g_92.f1])))) , (l_392 != l_393))))) >= (safe_div_func_uint64_t_u_u((p_447->g_158[p_447->g_92.f1] | (safe_mul_func_uint16_t_u_u(p_447->g_158[p_447->g_92.f1], (safe_mul_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(((((*p_447->g_90) = (**p_447->g_278)) <= p_447->g_194.f6) & p_447->g_158[p_447->g_92.f1]), GROUP_DIVERGE(2, 1))), 4L))))), p_447->g_310[0][8])))));
                for (p_447->g_194.f1 = 0; (p_447->g_194.f1 <= 1); p_447->g_194.f1 += 1)
                { /* block id: 202 */
                    int64_t l_405 = 0x5D65B87D6A88A9FBL;
                    (*p_447->g_90) &= l_405;
                    (*p_447->g_406) = &l_403;
                }
            }
            l_370[3][6] = (safe_add_func_int32_t_s_s(0x230F8AD1L, (safe_mul_func_int8_t_s_s((-7L), p_447->g_268[1].f1))));
            for (p_447->g_288.f3.f1 = 0; (p_447->g_288.f3.f1 <= 1); p_447->g_288.f3.f1 += 1)
            { /* block id: 210 */
                int32_t *l_412[7][5] = {{&l_371,&p_447->g_2,&p_447->g_43[2],&p_447->g_2,&l_371},{&l_371,&p_447->g_2,&p_447->g_43[2],&p_447->g_2,&l_371},{&l_371,&p_447->g_2,&p_447->g_43[2],&p_447->g_2,&l_371},{&l_371,&p_447->g_2,&p_447->g_43[2],&p_447->g_2,&l_371},{&l_371,&p_447->g_2,&p_447->g_43[2],&p_447->g_2,&l_371},{&l_371,&p_447->g_2,&p_447->g_43[2],&p_447->g_2,&l_371},{&l_371,&p_447->g_2,&p_447->g_43[2],&p_447->g_2,&l_371}};
                int8_t *l_424 = (void*)0;
                int8_t *l_425 = &p_447->g_55.f0;
                struct S2 **l_432 = &p_447->g_430;
                struct S2 **l_435 = &p_447->g_433;
                uint8_t *l_442 = (void*)0;
                uint8_t *l_443 = &p_447->g_431.f2;
                int64_t *l_444 = &p_447->g_158[1];
                int i, j;
                ++l_415;
                l_446[1][3][1] |= ((safe_div_func_int8_t_s_s(p_447->g_167[0].f0.f3.f2, (p_447->g_300[6].f1 & (safe_div_func_int32_t_s_s(((safe_add_func_int8_t_s_s((((((((*p_447->g_106) == (((GROUP_DIVERGE(1, 1) >= ((*l_425) = l_414)) <= (((*l_444) ^= ((safe_mul_func_int8_t_s_s((safe_add_func_int16_t_s_s((((*l_432) = p_447->g_430) == ((*l_435) = p_447->g_433)), (safe_mul_func_int16_t_s_s((p_447->g_288.f3.f1 ^ ((*l_443) ^= ((p_447->g_438 != (((safe_mul_func_uint16_t_u_u((l_370[3][6] != l_370[1][2]), 0x2706L)) , p_447->g_288.f3.f3) , p_447->g_438)) & l_441[3][2]))), l_413)))), 0x84L)) && l_414)) , l_311.f0)) ^ 0UL)) && p_447->g_66.f7) | l_414) != l_414) , l_445[0]) != (void*)0), 1UL)) & l_414), l_370[3][3]))))) , (**p_447->g_89));
            }
        }
    }
    return l_311.f1;
}


/* ------------------------------------------ */
/* 
 * reads : p_447->g_327 p_447->g_288.f4 p_447->g_89 p_447->g_90 p_447->g_288.f3.f2 p_447->g_300.f3.f6 p_447->g_194.f3
 * writes: p_447->g_300.f3.f4 p_447->g_167.f3 p_447->g_167.f1 p_447->g_300.f3.f3
 */
int32_t * func_8(int64_t  p_9, uint32_t  p_10, uint32_t  p_11, struct S4  p_12, struct S5 * p_447)
{ /* block id: 160 */
    int32_t *l_312 = &p_447->g_66.f5;
    int32_t *l_313 = &p_447->g_194.f5;
    int32_t *l_314 = &p_447->g_167[0].f3;
    int32_t *l_315 = &p_447->g_300[6].f3.f3;
    int32_t *l_316 = &p_447->g_288.f3.f5;
    int32_t l_317 = (-10L);
    int32_t l_318[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int32_t *l_319 = &p_447->g_92.f0.f3.f3;
    int32_t *l_320 = &p_447->g_300[6].f3.f4;
    int32_t *l_321[9][6][4] = {{{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5}},{{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5}},{{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5}},{{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5}},{{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5}},{{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5}},{{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5}},{{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5}},{{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5},{&p_447->g_19,&p_447->g_300[6].f3.f3,&p_447->g_92.f0.f3.f3,&p_447->g_66.f5}}};
    int16_t l_322 = 0x2391L;
    int32_t l_323 = 0x17BF2BF7L;
    uint64_t l_324 = 0UL;
    int32_t *l_338[2][5][4] = {{{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]},{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]},{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]},{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]},{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]}},{{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]},{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]},{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]},{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]},{&p_447->g_194.f5,&p_447->g_288.f3.f4,&p_447->g_66.f4,&p_447->g_43[3]}}};
    uint64_t *l_339 = &p_447->g_167[0].f1;
    int i, j, k;
    l_324++;
    (*l_315) = (p_447->g_327 , (safe_sub_func_uint8_t_u_u((1L > (3L || (&p_447->g_310[0][8] != (((*l_339) = (((*l_314) = ((safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s((((safe_add_func_uint8_t_u_u((((!((*l_320) = p_9)) & (248UL | ((p_447->g_288.f4 , (*p_447->g_89)) != l_338[1][2][2]))) <= p_447->g_288.f3.f2), FAKE_DIVERGE(p_447->group_1_offset, get_group_id(1), 10))) , 0L) != p_447->g_300[6].f3.f6), p_447->g_194.f3)), 6)), 0x78DFL)) > 0x7E45L)) & p_11)) , &l_322)))), 0x1AL)));
    return (*p_447->g_89);
}


/* ------------------------------------------ */
/* 
 * reads : p_447->g_66.f2 p_447->g_278 p_447->g_90 p_447->g_288 p_447->g_167.f0 p_447->g_197.f6 p_447->g_92.f0.f3.f3 p_447->g_66.f7 p_447->g_36 p_447->g_55 p_447->g_66 p_447->g_77 p_447->g_89 p_447->g_105 p_447->g_43 p_447->g_74 p_447->g_300 p_447->g_158 p_447->g_92.f0.f4 p_447->g_310 p_447->g_189
 * writes: p_447->g_66.f2 p_447->g_90 p_447->g_153.f1 p_447->g_74 p_447->g_92.f1 p_447->g_105 p_447->g_43 p_447->g_158
 */
int32_t  func_15(int32_t  p_16, uint64_t  p_17, struct S5 * p_447)
{ /* block id: 89 */
    uint64_t l_201 = 0UL;
    struct S3 *l_224 = &p_447->g_92;
    int32_t **l_230 = (void*)0;
    int16_t *l_235 = &p_447->g_92.f0.f3.f1;
    struct S2 *l_275 = (void*)0;
    int64_t l_285 = 0x3AA83157B272C45AL;
    int32_t l_289 = (-1L);
    uint32_t *l_294[3];
    int32_t l_295 = 0x053EE0A4L;
    uint8_t l_296 = 255UL;
    int32_t **l_297 = &p_447->g_90;
    int64_t *l_301 = &p_447->g_158[0];
    uint8_t *l_308 = &l_296;
    int8_t l_309[2];
    int i;
    for (i = 0; i < 3; i++)
        l_294[i] = &p_447->g_153.f1;
    for (i = 0; i < 2; i++)
        l_309[i] = 1L;
    for (p_447->g_66.f2 = 0; (p_447->g_66.f2 == 41); p_447->g_66.f2 = safe_add_func_uint16_t_u_u(p_447->g_66.f2, 5))
    { /* block id: 92 */
        uint8_t l_210 = 6UL;
        int32_t **l_229[1];
        int32_t ***l_228 = &l_229[0];
        uint64_t *l_231 = &p_447->g_167[0].f0.f4;
        int8_t l_232 = 0L;
        uint16_t *l_233[4][2];
        int16_t *l_234 = &p_447->g_66.f1;
        uint32_t l_251[9][4] = {{4294967288UL,0x36820CABL,4294967288UL,4294967288UL},{4294967288UL,0x36820CABL,4294967288UL,4294967288UL},{4294967288UL,0x36820CABL,4294967288UL,4294967288UL},{4294967288UL,0x36820CABL,4294967288UL,4294967288UL},{4294967288UL,0x36820CABL,4294967288UL,4294967288UL},{4294967288UL,0x36820CABL,4294967288UL,4294967288UL},{4294967288UL,0x36820CABL,4294967288UL,4294967288UL},{4294967288UL,0x36820CABL,4294967288UL,4294967288UL},{4294967288UL,0x36820CABL,4294967288UL,4294967288UL}};
        int i, j;
        for (i = 0; i < 1; i++)
            l_229[i] = &p_447->g_90;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 2; j++)
                l_233[i][j] = &p_447->g_167[0].f0.f2;
        }
        (1 + 1);
    }
    (*p_447->g_278) = &p_16;
    (*l_297) = func_49((safe_mul_func_int8_t_s_s((safe_sub_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(0x3EBEL, GROUP_DIVERGE(2, 1))), ((*p_447->g_90) = (l_285 > 0UL)))), ((safe_sub_func_int16_t_s_s((!0x26F6L), ((p_447->g_288 , p_447->g_167[0].f0) , p_447->g_197.f6))) & (l_289 == (((safe_div_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(((p_447->g_153.f1 = ((((((l_295 = p_447->g_92.f0.f3.f3) & p_17) > 8L) , l_296) > p_17) , 0xAAB91710L)) >= 0x89BC40DEL), 7)), 1L)) , p_447->g_288.f3.f6) || p_447->g_66.f7))))), &p_447->g_2, p_447->g_36, p_447->g_55, p_17, p_447);
    (*p_447->g_90) = (safe_add_func_uint64_t_u_u((p_447->g_300[6] , (((&l_224 == &l_224) < (((*l_301) ^= 1L) <= ((safe_rshift_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((p_447->g_66.f8 || p_447->g_288.f3.f0), (p_16 = (((&l_296 == &l_296) , ((((((((*l_308) ^= ((((!(**l_297)) || p_447->g_300[6].f3.f5) | (**l_297)) > 0L)) & p_447->g_300[6].f5) && l_309[1]) , l_235) == (void*)0) , 1UL) | p_447->g_92.f0.f4)) && p_447->g_310[0][8])))), 14)) && (**p_447->g_89)))) != 9L)), p_17));
    return (*p_447->g_189);
}


/* ------------------------------------------ */
/* 
 * reads : p_447->g_197 p_447->g_90
 * writes: p_447->g_43
 */
uint64_t  func_20(int32_t * p_21, uint32_t  p_22, int32_t  p_23, uint16_t  p_24, struct S5 * p_447)
{ /* block id: 86 */
    uint8_t l_198 = 0xB0L;
    (*p_447->g_90) = (p_447->g_197 , (l_198 <= (0x6DL || 3UL)));
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_447->g_55.f2 p_447->g_66.f6 p_447->g_43 p_447->g_90 p_447->g_92.f3 p_447->g_167 p_447->g_158 p_447->g_89 p_447->g_92.f0.f2 p_447->g_153.f3 p_447->g_66 p_447->g_77 p_447->g_105 p_447->g_74 p_447->g_151 p_447->g_153.f2 p_447->g_194
 * writes: p_447->g_55.f2 p_447->g_92.f0.f3.f3 p_447->g_66.f1 p_447->g_92.f0.f0 p_447->g_109 p_447->g_66.f6 p_447->g_43 p_447->g_158 p_447->g_189 p_447->g_74 p_447->g_66.f2 p_447->g_90 p_447->g_92.f1 p_447->g_105 p_447->g_167.f0.f3.f5 p_447->g_66
 */
int32_t * func_26(uint8_t  p_27, uint32_t  p_28, struct S4  p_29, struct S4  p_30, uint32_t  p_31, struct S5 * p_447)
{ /* block id: 62 */
    uint64_t l_164 = 2UL;
    int32_t *l_192 = &p_447->g_55.f3;
    for (p_447->g_55.f2 = 3; (p_447->g_55.f2 >= 0); p_447->g_55.f2 -= 1)
    { /* block id: 65 */
        int32_t *l_187 = &p_447->g_36;
        struct S0 *l_195 = (void*)0;
        struct S0 *l_196 = &p_447->g_66;
        for (p_447->g_92.f0.f3.f3 = 4; (p_447->g_92.f0.f3.f3 >= 0); p_447->g_92.f0.f3.f3 -= 1)
        { /* block id: 68 */
            int64_t l_183 = 9L;
            int32_t **l_184 = (void*)0;
            for (p_447->g_66.f1 = 0; p_447->g_66.f1 < 8; p_447->g_66.f1 += 1)
            {
                for (p_447->g_92.f0.f0 = 0; p_447->g_92.f0.f0 < 2; p_447->g_92.f0.f0 += 1)
                {
                    p_447->g_109[p_447->g_66.f1][p_447->g_92.f0.f0] = &p_447->g_105;
                }
            }
            for (p_447->g_66.f6 = 0; (p_447->g_66.f6 <= 4); p_447->g_66.f6 += 1)
            { /* block id: 72 */
                int32_t l_163 = 1L;
                int64_t *l_168 = &p_447->g_158[0];
                int32_t **l_188[10][8] = {{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0},{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0},{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0},{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0},{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0},{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0},{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0},{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0},{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0},{(void*)0,(void*)0,&l_187,&l_187,&l_187,&l_187,&l_187,(void*)0}};
                int32_t *l_193 = &p_447->g_167[0].f0.f3.f5;
                int i, j;
                l_164++;
                (*p_447->g_90) = p_447->g_43[p_447->g_66.f6];
                (*p_447->g_90) = ((p_30.f0 > 0x6FL) >= (p_447->g_92.f3 & (p_447->g_167[0] , (p_30.f1 > ((*l_168) &= p_447->g_43[p_447->g_66.f6])))));
                (*l_193) = (safe_div_func_uint64_t_u_u((((safe_lshift_func_uint8_t_u_u(250UL, 1)) ^ 0L) < (0x357EL >= (~((safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(p_28, (safe_div_func_int32_t_s_s(((safe_add_func_uint8_t_u_u((l_183 > (l_184 != (void*)0)), (safe_mul_func_int16_t_s_s(((p_447->g_189 = l_187) == (l_192 = func_49((safe_lshift_func_int8_t_s_s((-10L), 2)), (*p_447->g_89), p_447->g_92.f0.f2, p_30, p_447->g_153.f3, p_447))), 0x87D1L)))) <= l_164), l_164)))), 15)), p_447->g_151)) & l_163)))), p_447->g_153.f2));
            }
        }
        (*l_196) = (l_164 , p_447->g_194);
        if (p_29.f2)
            continue;
    }
    return (*p_447->g_89);
}


/* ------------------------------------------ */
/* 
 * reads : p_447->g_5 p_447->g_36 p_447->g_43 p_447->g_55 p_447->g_66 p_447->g_77 p_447->g_89 p_447->g_92.f1 p_447->g_105 p_447->g_90 p_447->g_74 p_447->g_92.f0.f3.f1 p_447->g_92.f0.f4 p_447->g_153 p_447->g_92.f0.f3.f0 p_447->g_158
 * writes: p_447->g_43 p_447->g_74 p_447->g_66.f2 p_447->g_90 p_447->g_92.f1 p_447->g_105 p_447->g_92.f0.f3.f1 p_447->g_77.f0 p_447->g_92.f0.f3.f9 p_447->g_109 p_447->g_92.f0.f4 p_447->g_55.f1 p_447->g_158 p_447->g_66.f5
 */
struct S4  func_32(int32_t  p_33, struct S5 * p_447)
{ /* block id: 13 */
    int32_t *l_41[5][9] = {{&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2},{&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2},{&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2},{&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2},{&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2,&p_447->g_2}};
    struct S4 l_160 = {0L,0x7B885A69L,-1L,-1L};
    int i, j;
    p_447->g_43[3] = ((func_38(p_447->g_5, l_41[2][6], p_447) != ((l_160 , l_41[2][6]) != l_41[2][6])) <= p_447->g_66.f3);
    return l_160;
}


/* ------------------------------------------ */
/* 
 * reads : p_447->g_36 p_447->g_43 p_447->g_55 p_447->g_66 p_447->g_77 p_447->g_89 p_447->g_92.f1 p_447->g_105 p_447->g_90 p_447->g_74 p_447->g_92.f0.f3.f1 p_447->g_92.f0.f4 p_447->g_5 p_447->g_153 p_447->g_92.f0.f3.f0 p_447->g_158
 * writes: p_447->g_43 p_447->g_74 p_447->g_66.f2 p_447->g_90 p_447->g_92.f1 p_447->g_105 p_447->g_92.f0.f3.f1 p_447->g_77.f0 p_447->g_92.f0.f3.f9 p_447->g_109 p_447->g_92.f0.f4 p_447->g_55.f1 p_447->g_158 p_447->g_66.f5
 */
int64_t  func_38(uint32_t  p_39, int32_t * p_40, struct S5 * p_447)
{ /* block id: 14 */
    int32_t *l_42 = &p_447->g_43[3];
    uint16_t l_119 = 1UL;
    int16_t *l_132 = &p_447->g_92.f0.f3.f1;
    uint8_t *l_140 = (void*)0;
    uint8_t *l_141 = (void*)0;
    uint8_t *l_142 = &p_447->g_74;
    uint32_t *l_143 = &p_447->g_55.f1;
    uint32_t *l_150[6][5] = {{&p_447->g_151,&p_447->g_151,(void*)0,&p_447->g_151,&p_447->g_151},{&p_447->g_151,&p_447->g_151,(void*)0,&p_447->g_151,&p_447->g_151},{&p_447->g_151,&p_447->g_151,(void*)0,&p_447->g_151,&p_447->g_151},{&p_447->g_151,&p_447->g_151,(void*)0,&p_447->g_151,&p_447->g_151},{&p_447->g_151,&p_447->g_151,(void*)0,&p_447->g_151,&p_447->g_151},{&p_447->g_151,&p_447->g_151,(void*)0,&p_447->g_151,&p_447->g_151}};
    int32_t l_152 = 0x1DA1C919L;
    uint64_t *l_154 = &p_447->g_92.f1;
    uint64_t *l_156 = &p_447->g_79;
    uint64_t **l_155[4] = {&l_156,&l_156,&l_156,&l_156};
    int64_t *l_157 = &p_447->g_158[0];
    int32_t *l_159 = &p_447->g_66.f5;
    int i, j;
    (*l_42) = p_447->g_36;
    l_119 |= func_44(func_49((0x14FC6BF2L >= p_447->g_43[1]), l_42, p_447->g_43[3], p_447->g_55, p_39, p_447), p_39, l_42, l_42, p_447);
    (*p_447->g_90) = p_39;
    (*l_159) ^= ((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s(((*l_157) |= (safe_sub_func_int64_t_s_s((((0x73L <= (safe_div_func_int64_t_s_s((safe_mod_func_uint32_t_u_u((((*l_132) = 3L) >= ((**p_447->g_89) > ((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((~((*l_154) = (safe_unary_minus_func_uint16_t_u((safe_mul_func_int16_t_s_s(((*l_42) , (7UL > (safe_div_func_uint32_t_u_u(((*l_143) = (255UL ^ ((*l_142) = GROUP_DIVERGE(0, 1)))), (safe_lshift_func_int16_t_s_s((p_39 , (GROUP_DIVERGE(0, 1) ^ ((*l_42) , ((safe_lshift_func_uint8_t_u_s((((l_152 = ((safe_add_func_uint8_t_u_u(p_447->g_5, 0x25L)) < p_39)) , p_447->g_153) , (*l_42)), p_447->g_92.f0.f3.f0)) , (-7L))))), 5)))))), p_39)))))) , (*l_42)))) > GROUP_DIVERGE(0, 1)))), 0x70AB67BEL)), (*l_42)))) , l_155[1]) == &l_156), 0x4D857577104E18E7L))), p_447->g_66.f4)), 0xD4L)) > (*l_42));
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_447->g_92.f0.f3.f1 p_447->g_43 p_447->g_92.f0.f4 p_447->g_92.f1 p_447->g_90
 * writes: p_447->g_92.f0.f3.f1 p_447->g_77.f0 p_447->g_92.f0.f3.f9 p_447->g_109 p_447->g_92.f0.f4 p_447->g_43
 */
int32_t  func_44(int32_t * p_45, int32_t  p_46, int32_t * p_47, int32_t * p_48, struct S5 * p_447)
{ /* block id: 37 */
    for (p_447->g_92.f0.f3.f1 = 23; (p_447->g_92.f0.f3.f1 < 13); p_447->g_92.f0.f3.f1 = safe_sub_func_uint16_t_u_u(p_447->g_92.f0.f3.f1, 1))
    { /* block id: 40 */
        for (p_447->g_77.f0 = 0; p_447->g_77.f0 < 8; p_447->g_77.f0 += 1)
        {
            for (p_447->g_92.f0.f3.f9 = 0; p_447->g_92.f0.f3.f9 < 2; p_447->g_92.f0.f3.f9 += 1)
            {
                p_447->g_109[p_447->g_77.f0][p_447->g_92.f0.f3.f9] = &p_447->g_105;
            }
        }
        if ((*p_47))
            continue;
        for (p_447->g_92.f0.f4 = 0; (p_447->g_92.f0.f4 == 39); ++p_447->g_92.f0.f4)
        { /* block id: 45 */
            (*p_447->g_90) = (1L < p_447->g_92.f1);
        }
    }
    return (*p_47);
}


/* ------------------------------------------ */
/* 
 * reads : p_447->g_66 p_447->g_77 p_447->g_89 p_447->g_92.f1 p_447->g_105 p_447->g_90 p_447->g_43 p_447->g_74
 * writes: p_447->g_74 p_447->g_66.f2 p_447->g_90 p_447->g_92.f1 p_447->g_105 p_447->g_43
 */
int32_t * func_49(int32_t  p_50, int32_t * p_51, uint32_t  p_52, struct S4  p_53, int64_t  p_54, struct S5 * p_447)
{ /* block id: 16 */
    int64_t l_72 = 1L;
    uint8_t *l_73 = &p_447->g_74;
    uint64_t *l_78[4] = {&p_447->g_79,&p_447->g_79,&p_447->g_79,&p_447->g_79};
    int32_t l_80 = 0L;
    uint16_t *l_81 = &p_447->g_66.f2;
    int64_t *l_82 = &l_72;
    int32_t *l_83 = (void*)0;
    int32_t l_84[3];
    struct S3 *l_94 = &p_447->g_92;
    struct S3 **l_93 = &l_94;
    int32_t *l_95 = &p_447->g_66.f3;
    int32_t *l_96 = &l_84[0];
    int32_t *l_97 = &p_447->g_92.f3;
    int32_t *l_98[9];
    int32_t l_99 = 1L;
    uint16_t l_100 = 0xA607L;
    int i;
    for (i = 0; i < 3; i++)
        l_84[i] = (-6L);
    for (i = 0; i < 9; i++)
        l_98[i] = &p_447->g_43[1];
    (*l_93) = func_56((((*l_82) = (safe_rshift_func_uint8_t_u_s(((~0x9534DD9CL) , (0UL < ((((((*l_81) = (safe_mod_func_uint64_t_u_u(0x954028E04799C819L, (l_80 ^= (p_447->g_66 , ((safe_rshift_func_uint16_t_u_s(((+0x36L) || (safe_rshift_func_uint8_t_u_u(0xE5L, 2))), 13)) <= (safe_unary_minus_func_uint8_t_u((((*l_73) = l_72) ^ (+(((safe_sub_func_uint32_t_u_u((p_447->g_77 , l_72), 0x7B2EC16DL)) > p_52) , 0x5DL))))))))))) ^ 2UL) && GROUP_DIVERGE(2, 1)) , p_54) < p_53.f3))), 6))) == 0x51A88BB409C3C7D9L), &p_447->g_36, l_83, p_53.f3, l_84[1], p_447);
    --l_100;
    for (p_447->g_92.f1 = 28; (p_447->g_92.f1 == 32); p_447->g_92.f1++)
    { /* block id: 29 */
        volatile uint64_t * volatile **l_110 = &p_447->g_105;
        (*l_110) = p_447->g_105;
        (*p_447->g_90) ^= (*l_96);
        (*l_96) = (safe_add_func_uint8_t_u_u((0x656A0368L || 0x12D6D572L), ((*l_73)--)));
        for (p_54 = 0; p_54 < 3; p_54 += 1)
        {
            l_84[p_54] = 0L;
        }
    }
    return l_98[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_447->g_89
 * writes: p_447->g_90
 */
struct S3 * func_56(int8_t  p_57, int32_t * p_58, int32_t * p_59, int64_t  p_60, int32_t  p_61, struct S5 * p_447)
{ /* block id: 21 */
    int32_t *l_85 = &p_447->g_43[1];
    uint16_t l_86 = 0UL;
    struct S3 *l_91 = &p_447->g_92;
    --l_86;
    (*p_447->g_89) = l_85;
    return l_91;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S5 c_448;
    struct S5* p_447 = &c_448;
    struct S5 c_449 = {
        0x1989D221L, // p_447->g_2
        (-8L), // p_447->g_5
        1L, // p_447->g_19
        0x401E07ADL, // p_447->g_36
        {0L,0L,0L,0L,0L}, // p_447->g_43
        {0x11L,0x3D96456CL,0x44FF2D4E203D7E6DL,0x11D69C04L}, // p_447->g_55
        {0x15A2D128L,-5L,0xAEE2L,-1L,0L,1L,0x0DA390E6L,0L,0x59L,1L}, // p_447->g_66
        0x8DL, // p_447->g_74
        {-1L,9UL,255UL}, // p_447->g_77
        18446744073709551607UL, // p_447->g_79
        &p_447->g_43[1], // p_447->g_90
        &p_447->g_90, // p_447->g_89
        {{1UL,0xDAE41605L,0x8955L,{0x485C7020L,0x13F0L,0x01F9L,1L,0x279EC88CL,3L,4294967293UL,0x0E9ECA6AL,-8L,-7L},0x64406D402E0EFCF3L,-3L,4294967295UL},0UL,0x6685L,-2L}, // p_447->g_92
        0UL, // p_447->g_107
        &p_447->g_107, // p_447->g_106
        &p_447->g_106, // p_447->g_105
        (void*)0, // p_447->g_108
        {{&p_447->g_105,&p_447->g_105},{&p_447->g_105,&p_447->g_105},{&p_447->g_105,&p_447->g_105},{&p_447->g_105,&p_447->g_105},{&p_447->g_105,&p_447->g_105},{&p_447->g_105,&p_447->g_105},{&p_447->g_105,&p_447->g_105},{&p_447->g_105,&p_447->g_105}}, // p_447->g_109
        0xA735042EL, // p_447->g_151
        {1L,0xCA8E68CDL,1L,0x54AE3C6CL}, // p_447->g_153
        {0x2A374F6BAD65AA86L,0x2A374F6BAD65AA86L}, // p_447->g_158
        {{{0x8C12L,6UL,65535UL,{0x6C55944BL,0x1AB2L,1UL,4L,-9L,0L,0xA375B8AAL,-1L,0x7FL,-10L},0xBA4FD995B201DBCDL,2L,1UL},0x757B935A7FEA7280L,0x7805L,1L}}, // p_447->g_167
        &p_447->g_55.f3, // p_447->g_189
        {0x763B51E3L,-1L,0x4E52L,0x0B0B8D69L,1L,0x70D94B26L,0xCCF155A4L,0x3EEF275FL,1L,-9L}, // p_447->g_194
        {0xA045BBC9L,5L,0x57B2L,-1L,0x7F10DE08L,0x35EA080EL,7UL,-1L,0x10L,0x358F5AF2L}, // p_447->g_197
        &p_447->g_153, // p_447->g_240
        {{0x58592EA1L,2UL,255UL},{0x58592EA1L,2UL,255UL},{0x58592EA1L,2UL,255UL},{0x58592EA1L,2UL,255UL},{0x58592EA1L,2UL,255UL},{0x58592EA1L,2UL,255UL},{0x58592EA1L,2UL,255UL}}, // p_447->g_268
        &p_447->g_77, // p_447->g_269
        {{0x09E3F49BL,0x9DBA9E3AL,255UL},{0x09E3F49BL,0x9DBA9E3AL,255UL},{0x09E3F49BL,0x9DBA9E3AL,255UL},{0x09E3F49BL,0x9DBA9E3AL,255UL},{0x09E3F49BL,0x9DBA9E3AL,255UL}}, // p_447->g_273
        {{0xD4331722L,-1L,65527UL,1L,0x50EF1309L,0x088932E3L,0UL,1L,0L,-1L},{0xD4331722L,-1L,65527UL,1L,0x50EF1309L,0x088932E3L,0UL,1L,0L,-1L},{0xD4331722L,-1L,65527UL,1L,0x50EF1309L,0x088932E3L,0UL,1L,0L,-1L},{0xD4331722L,-1L,65527UL,1L,0x50EF1309L,0x088932E3L,0UL,1L,0L,-1L},{0xD4331722L,-1L,65527UL,1L,0x50EF1309L,0x088932E3L,0UL,1L,0L,-1L},{0xD4331722L,-1L,65527UL,1L,0x50EF1309L,0x088932E3L,0UL,1L,0L,-1L}}, // p_447->g_276
        &p_447->g_90, // p_447->g_278
        {0UL,0x8CBFA412L,0x9269L,{1UL,1L,0UL,0x77DECB9DL,-9L,-5L,0x713BC4FDL,0x7F257AD2L,-1L,6L},1UL,0x37L,0xD27B8E15L}, // p_447->g_288
        {{0x63ADL,1UL,65535UL,{4294967295UL,-1L,6UL,0x48FAC9DCL,0x4754EABBL,0x76BEEB71L,0x2F189131L,-2L,0x67L,3L},18446744073709551612UL,3L,0x026ABD10L},{0x63ADL,1UL,65535UL,{4294967295UL,-1L,6UL,0x48FAC9DCL,0x4754EABBL,0x76BEEB71L,0x2F189131L,-2L,0x67L,3L},18446744073709551612UL,3L,0x026ABD10L},{0x63ADL,1UL,65535UL,{4294967295UL,-1L,6UL,0x48FAC9DCL,0x4754EABBL,0x76BEEB71L,0x2F189131L,-2L,0x67L,3L},18446744073709551612UL,3L,0x026ABD10L},{0x63ADL,1UL,65535UL,{4294967295UL,-1L,6UL,0x48FAC9DCL,0x4754EABBL,0x76BEEB71L,0x2F189131L,-2L,0x67L,3L},18446744073709551612UL,3L,0x026ABD10L},{0x63ADL,1UL,65535UL,{4294967295UL,-1L,6UL,0x48FAC9DCL,0x4754EABBL,0x76BEEB71L,0x2F189131L,-2L,0x67L,3L},18446744073709551612UL,3L,0x026ABD10L},{0x63ADL,1UL,65535UL,{4294967295UL,-1L,6UL,0x48FAC9DCL,0x4754EABBL,0x76BEEB71L,0x2F189131L,-2L,0x67L,3L},18446744073709551612UL,3L,0x026ABD10L},{0x63ADL,1UL,65535UL,{4294967295UL,-1L,6UL,0x48FAC9DCL,0x4754EABBL,0x76BEEB71L,0x2F189131L,-2L,0x67L,3L},18446744073709551612UL,3L,0x026ABD10L}}, // p_447->g_300
        {{0x3652L,(-1L),0L,0x3352L,(-1L),0x3352L,0L,(-1L),0x3652L,0x3652L},{0x3652L,(-1L),0L,0x3352L,(-1L),0x3352L,0L,(-1L),0x3652L,0x3652L}}, // p_447->g_310
        {0x92D6A286L,-6L,0xA45FL,0L,7L,-1L,0x980B8B4CL,0x30A0D7B0L,1L,0x5DC31DE0L}, // p_447->g_327
        &p_447->g_197, // p_447->g_352
        &p_447->g_352, // p_447->g_351
        {{0x3C91FC8BL,0x11D74782L,0xF6L},{0x3C91FC8BL,0x11D74782L,0xF6L},{0x3C91FC8BL,0x11D74782L,0xF6L}}, // p_447->g_357
        &p_447->g_90, // p_447->g_407
        &p_447->g_407, // p_447->g_406
        {3L,0x1CFE5559L,0x9DL}, // p_447->g_431
        &p_447->g_431, // p_447->g_430
        {{0x172D1850L,0xE8EEDA4CL,0x9DL},{0x172D1850L,0xE8EEDA4CL,0x9DL},{0x172D1850L,0xE8EEDA4CL,0x9DL},{0x172D1850L,0xE8EEDA4CL,0x9DL},{0x172D1850L,0xE8EEDA4CL,0x9DL},{0x172D1850L,0xE8EEDA4CL,0x9DL},{0x172D1850L,0xE8EEDA4CL,0x9DL},{0x172D1850L,0xE8EEDA4CL,0x9DL},{0x172D1850L,0xE8EEDA4CL,0x9DL}}, // p_447->g_434
        &p_447->g_434[1], // p_447->g_433
        (void*)0, // p_447->g_438
        sequence_input[get_global_id(0)], // p_447->global_0_offset
        sequence_input[get_global_id(1)], // p_447->global_1_offset
        sequence_input[get_global_id(2)], // p_447->global_2_offset
        sequence_input[get_local_id(0)], // p_447->local_0_offset
        sequence_input[get_local_id(1)], // p_447->local_1_offset
        sequence_input[get_local_id(2)], // p_447->local_2_offset
        sequence_input[get_group_id(0)], // p_447->group_0_offset
        sequence_input[get_group_id(1)], // p_447->group_1_offset
        sequence_input[get_group_id(2)], // p_447->group_2_offset
    };
    c_448 = c_449;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_447);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_447->g_2, "p_447->g_2", print_hash_value);
    transparent_crc(p_447->g_5, "p_447->g_5", print_hash_value);
    transparent_crc(p_447->g_19, "p_447->g_19", print_hash_value);
    transparent_crc(p_447->g_36, "p_447->g_36", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_447->g_43[i], "p_447->g_43[i]", print_hash_value);

    }
    transparent_crc(p_447->g_55.f0, "p_447->g_55.f0", print_hash_value);
    transparent_crc(p_447->g_55.f1, "p_447->g_55.f1", print_hash_value);
    transparent_crc(p_447->g_55.f2, "p_447->g_55.f2", print_hash_value);
    transparent_crc(p_447->g_55.f3, "p_447->g_55.f3", print_hash_value);
    transparent_crc(p_447->g_66.f0, "p_447->g_66.f0", print_hash_value);
    transparent_crc(p_447->g_66.f1, "p_447->g_66.f1", print_hash_value);
    transparent_crc(p_447->g_66.f2, "p_447->g_66.f2", print_hash_value);
    transparent_crc(p_447->g_66.f3, "p_447->g_66.f3", print_hash_value);
    transparent_crc(p_447->g_66.f4, "p_447->g_66.f4", print_hash_value);
    transparent_crc(p_447->g_66.f5, "p_447->g_66.f5", print_hash_value);
    transparent_crc(p_447->g_66.f6, "p_447->g_66.f6", print_hash_value);
    transparent_crc(p_447->g_66.f7, "p_447->g_66.f7", print_hash_value);
    transparent_crc(p_447->g_66.f8, "p_447->g_66.f8", print_hash_value);
    transparent_crc(p_447->g_66.f9, "p_447->g_66.f9", print_hash_value);
    transparent_crc(p_447->g_74, "p_447->g_74", print_hash_value);
    transparent_crc(p_447->g_77.f0, "p_447->g_77.f0", print_hash_value);
    transparent_crc(p_447->g_77.f1, "p_447->g_77.f1", print_hash_value);
    transparent_crc(p_447->g_77.f2, "p_447->g_77.f2", print_hash_value);
    transparent_crc(p_447->g_79, "p_447->g_79", print_hash_value);
    transparent_crc(p_447->g_92.f0.f0, "p_447->g_92.f0.f0", print_hash_value);
    transparent_crc(p_447->g_92.f0.f1, "p_447->g_92.f0.f1", print_hash_value);
    transparent_crc(p_447->g_92.f0.f2, "p_447->g_92.f0.f2", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f0, "p_447->g_92.f0.f3.f0", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f1, "p_447->g_92.f0.f3.f1", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f2, "p_447->g_92.f0.f3.f2", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f3, "p_447->g_92.f0.f3.f3", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f4, "p_447->g_92.f0.f3.f4", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f5, "p_447->g_92.f0.f3.f5", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f6, "p_447->g_92.f0.f3.f6", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f7, "p_447->g_92.f0.f3.f7", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f8, "p_447->g_92.f0.f3.f8", print_hash_value);
    transparent_crc(p_447->g_92.f0.f3.f9, "p_447->g_92.f0.f3.f9", print_hash_value);
    transparent_crc(p_447->g_92.f0.f4, "p_447->g_92.f0.f4", print_hash_value);
    transparent_crc(p_447->g_92.f0.f5, "p_447->g_92.f0.f5", print_hash_value);
    transparent_crc(p_447->g_92.f0.f6, "p_447->g_92.f0.f6", print_hash_value);
    transparent_crc(p_447->g_92.f1, "p_447->g_92.f1", print_hash_value);
    transparent_crc(p_447->g_92.f2, "p_447->g_92.f2", print_hash_value);
    transparent_crc(p_447->g_92.f3, "p_447->g_92.f3", print_hash_value);
    transparent_crc(p_447->g_107, "p_447->g_107", print_hash_value);
    transparent_crc(p_447->g_151, "p_447->g_151", print_hash_value);
    transparent_crc(p_447->g_153.f0, "p_447->g_153.f0", print_hash_value);
    transparent_crc(p_447->g_153.f1, "p_447->g_153.f1", print_hash_value);
    transparent_crc(p_447->g_153.f2, "p_447->g_153.f2", print_hash_value);
    transparent_crc(p_447->g_153.f3, "p_447->g_153.f3", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_447->g_158[i], "p_447->g_158[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_447->g_167[i].f0.f0, "p_447->g_167[i].f0.f0", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f1, "p_447->g_167[i].f0.f1", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f2, "p_447->g_167[i].f0.f2", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f0, "p_447->g_167[i].f0.f3.f0", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f1, "p_447->g_167[i].f0.f3.f1", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f2, "p_447->g_167[i].f0.f3.f2", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f3, "p_447->g_167[i].f0.f3.f3", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f4, "p_447->g_167[i].f0.f3.f4", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f5, "p_447->g_167[i].f0.f3.f5", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f6, "p_447->g_167[i].f0.f3.f6", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f7, "p_447->g_167[i].f0.f3.f7", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f8, "p_447->g_167[i].f0.f3.f8", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f3.f9, "p_447->g_167[i].f0.f3.f9", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f4, "p_447->g_167[i].f0.f4", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f5, "p_447->g_167[i].f0.f5", print_hash_value);
        transparent_crc(p_447->g_167[i].f0.f6, "p_447->g_167[i].f0.f6", print_hash_value);
        transparent_crc(p_447->g_167[i].f1, "p_447->g_167[i].f1", print_hash_value);
        transparent_crc(p_447->g_167[i].f2, "p_447->g_167[i].f2", print_hash_value);
        transparent_crc(p_447->g_167[i].f3, "p_447->g_167[i].f3", print_hash_value);

    }
    transparent_crc(p_447->g_194.f0, "p_447->g_194.f0", print_hash_value);
    transparent_crc(p_447->g_194.f1, "p_447->g_194.f1", print_hash_value);
    transparent_crc(p_447->g_194.f2, "p_447->g_194.f2", print_hash_value);
    transparent_crc(p_447->g_194.f3, "p_447->g_194.f3", print_hash_value);
    transparent_crc(p_447->g_194.f4, "p_447->g_194.f4", print_hash_value);
    transparent_crc(p_447->g_194.f5, "p_447->g_194.f5", print_hash_value);
    transparent_crc(p_447->g_194.f6, "p_447->g_194.f6", print_hash_value);
    transparent_crc(p_447->g_194.f7, "p_447->g_194.f7", print_hash_value);
    transparent_crc(p_447->g_194.f8, "p_447->g_194.f8", print_hash_value);
    transparent_crc(p_447->g_194.f9, "p_447->g_194.f9", print_hash_value);
    transparent_crc(p_447->g_197.f0, "p_447->g_197.f0", print_hash_value);
    transparent_crc(p_447->g_197.f1, "p_447->g_197.f1", print_hash_value);
    transparent_crc(p_447->g_197.f2, "p_447->g_197.f2", print_hash_value);
    transparent_crc(p_447->g_197.f3, "p_447->g_197.f3", print_hash_value);
    transparent_crc(p_447->g_197.f4, "p_447->g_197.f4", print_hash_value);
    transparent_crc(p_447->g_197.f5, "p_447->g_197.f5", print_hash_value);
    transparent_crc(p_447->g_197.f6, "p_447->g_197.f6", print_hash_value);
    transparent_crc(p_447->g_197.f7, "p_447->g_197.f7", print_hash_value);
    transparent_crc(p_447->g_197.f8, "p_447->g_197.f8", print_hash_value);
    transparent_crc(p_447->g_197.f9, "p_447->g_197.f9", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_447->g_268[i].f0, "p_447->g_268[i].f0", print_hash_value);
        transparent_crc(p_447->g_268[i].f1, "p_447->g_268[i].f1", print_hash_value);
        transparent_crc(p_447->g_268[i].f2, "p_447->g_268[i].f2", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_447->g_273[i].f0, "p_447->g_273[i].f0", print_hash_value);
        transparent_crc(p_447->g_273[i].f1, "p_447->g_273[i].f1", print_hash_value);
        transparent_crc(p_447->g_273[i].f2, "p_447->g_273[i].f2", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_447->g_276[i].f0, "p_447->g_276[i].f0", print_hash_value);
        transparent_crc(p_447->g_276[i].f1, "p_447->g_276[i].f1", print_hash_value);
        transparent_crc(p_447->g_276[i].f2, "p_447->g_276[i].f2", print_hash_value);
        transparent_crc(p_447->g_276[i].f3, "p_447->g_276[i].f3", print_hash_value);
        transparent_crc(p_447->g_276[i].f4, "p_447->g_276[i].f4", print_hash_value);
        transparent_crc(p_447->g_276[i].f5, "p_447->g_276[i].f5", print_hash_value);
        transparent_crc(p_447->g_276[i].f6, "p_447->g_276[i].f6", print_hash_value);
        transparent_crc(p_447->g_276[i].f7, "p_447->g_276[i].f7", print_hash_value);
        transparent_crc(p_447->g_276[i].f8, "p_447->g_276[i].f8", print_hash_value);
        transparent_crc(p_447->g_276[i].f9, "p_447->g_276[i].f9", print_hash_value);

    }
    transparent_crc(p_447->g_288.f0, "p_447->g_288.f0", print_hash_value);
    transparent_crc(p_447->g_288.f1, "p_447->g_288.f1", print_hash_value);
    transparent_crc(p_447->g_288.f2, "p_447->g_288.f2", print_hash_value);
    transparent_crc(p_447->g_288.f3.f0, "p_447->g_288.f3.f0", print_hash_value);
    transparent_crc(p_447->g_288.f3.f1, "p_447->g_288.f3.f1", print_hash_value);
    transparent_crc(p_447->g_288.f3.f2, "p_447->g_288.f3.f2", print_hash_value);
    transparent_crc(p_447->g_288.f3.f3, "p_447->g_288.f3.f3", print_hash_value);
    transparent_crc(p_447->g_288.f3.f4, "p_447->g_288.f3.f4", print_hash_value);
    transparent_crc(p_447->g_288.f3.f5, "p_447->g_288.f3.f5", print_hash_value);
    transparent_crc(p_447->g_288.f3.f6, "p_447->g_288.f3.f6", print_hash_value);
    transparent_crc(p_447->g_288.f3.f7, "p_447->g_288.f3.f7", print_hash_value);
    transparent_crc(p_447->g_288.f3.f8, "p_447->g_288.f3.f8", print_hash_value);
    transparent_crc(p_447->g_288.f3.f9, "p_447->g_288.f3.f9", print_hash_value);
    transparent_crc(p_447->g_288.f4, "p_447->g_288.f4", print_hash_value);
    transparent_crc(p_447->g_288.f5, "p_447->g_288.f5", print_hash_value);
    transparent_crc(p_447->g_288.f6, "p_447->g_288.f6", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_447->g_300[i].f0, "p_447->g_300[i].f0", print_hash_value);
        transparent_crc(p_447->g_300[i].f1, "p_447->g_300[i].f1", print_hash_value);
        transparent_crc(p_447->g_300[i].f2, "p_447->g_300[i].f2", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f0, "p_447->g_300[i].f3.f0", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f1, "p_447->g_300[i].f3.f1", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f2, "p_447->g_300[i].f3.f2", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f3, "p_447->g_300[i].f3.f3", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f4, "p_447->g_300[i].f3.f4", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f5, "p_447->g_300[i].f3.f5", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f6, "p_447->g_300[i].f3.f6", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f7, "p_447->g_300[i].f3.f7", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f8, "p_447->g_300[i].f3.f8", print_hash_value);
        transparent_crc(p_447->g_300[i].f3.f9, "p_447->g_300[i].f3.f9", print_hash_value);
        transparent_crc(p_447->g_300[i].f4, "p_447->g_300[i].f4", print_hash_value);
        transparent_crc(p_447->g_300[i].f5, "p_447->g_300[i].f5", print_hash_value);
        transparent_crc(p_447->g_300[i].f6, "p_447->g_300[i].f6", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_447->g_310[i][j], "p_447->g_310[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_447->g_327.f0, "p_447->g_327.f0", print_hash_value);
    transparent_crc(p_447->g_327.f1, "p_447->g_327.f1", print_hash_value);
    transparent_crc(p_447->g_327.f2, "p_447->g_327.f2", print_hash_value);
    transparent_crc(p_447->g_327.f3, "p_447->g_327.f3", print_hash_value);
    transparent_crc(p_447->g_327.f4, "p_447->g_327.f4", print_hash_value);
    transparent_crc(p_447->g_327.f5, "p_447->g_327.f5", print_hash_value);
    transparent_crc(p_447->g_327.f6, "p_447->g_327.f6", print_hash_value);
    transparent_crc(p_447->g_327.f7, "p_447->g_327.f7", print_hash_value);
    transparent_crc(p_447->g_327.f8, "p_447->g_327.f8", print_hash_value);
    transparent_crc(p_447->g_327.f9, "p_447->g_327.f9", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_447->g_357[i].f0, "p_447->g_357[i].f0", print_hash_value);
        transparent_crc(p_447->g_357[i].f1, "p_447->g_357[i].f1", print_hash_value);
        transparent_crc(p_447->g_357[i].f2, "p_447->g_357[i].f2", print_hash_value);

    }
    transparent_crc(p_447->g_431.f0, "p_447->g_431.f0", print_hash_value);
    transparent_crc(p_447->g_431.f1, "p_447->g_431.f1", print_hash_value);
    transparent_crc(p_447->g_431.f2, "p_447->g_431.f2", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_447->g_434[i].f0, "p_447->g_434[i].f0", print_hash_value);
        transparent_crc(p_447->g_434[i].f1, "p_447->g_434[i].f1", print_hash_value);
        transparent_crc(p_447->g_434[i].f2, "p_447->g_434[i].f2", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
