// ---fake_divergence -g 2,1,3987 -l 2,1,9
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


// Seed: 45

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int64_t  f1;
   int32_t  f2;
   uint32_t  f3;
   int32_t  f4;
   uint64_t  f5;
   uint64_t  f6;
};

struct S1 {
   volatile int8_t  f0;
   int8_t  f1;
};

struct S2 {
   volatile uint64_t  f0;
   int64_t  f1;
   uint8_t  f2;
   volatile uint16_t  f3;
   uint8_t  f4;
   int32_t  f5;
};

struct S3 {
   uint64_t  f0;
   uint16_t  f1;
   volatile int64_t  f2;
   uint16_t  f3;
   uint64_t  f4;
   int64_t  f5;
};

struct S4 {
    uint64_t g_10;
    int32_t g_38;
    int32_t *g_37;
    uint16_t g_45;
    int8_t g_50[9];
    volatile uint16_t g_64;
    struct S0 *g_67;
    struct S0 ** volatile g_68;
    struct S0 g_70;
    int32_t **g_72;
    int32_t *** volatile g_71;
    int16_t g_83;
    uint8_t g_85[7];
    VECTOR(uint64_t, 4) g_109;
    VECTOR(uint64_t, 2) g_120;
    struct S0 **g_126;
    struct S0 g_138;
    VECTOR(int16_t, 2) g_169;
    uint32_t g_172;
    int64_t g_174;
    VECTOR(int8_t, 2) g_186;
    volatile VECTOR(uint64_t, 8) g_198;
    volatile VECTOR(uint32_t, 8) g_199;
    int64_t g_208;
    int16_t g_209;
    VECTOR(int32_t, 16) g_213;
    volatile VECTOR(int32_t, 16) g_214;
    VECTOR(uint16_t, 8) g_229;
    struct S3 g_234;
    struct S3 g_236;
    int32_t *g_245;
    int32_t ***g_256;
    int32_t ****g_255;
    int32_t *****g_254;
    struct S3 g_288;
    volatile VECTOR(uint64_t, 4) g_293;
    volatile VECTOR(uint32_t, 2) g_296;
    volatile VECTOR(uint32_t, 16) g_300;
    VECTOR(int32_t, 4) g_304;
    VECTOR(uint32_t, 8) g_307;
    VECTOR(uint32_t, 16) g_308;
    VECTOR(uint32_t, 8) g_309;
    volatile VECTOR(int8_t, 16) g_335;
    volatile uint8_t g_349;
    volatile uint8_t * volatile g_348;
    volatile uint8_t * volatile *g_347;
    struct S2 g_350[3];
    int64_t g_362[4];
    uint32_t g_363;
    VECTOR(uint16_t, 4) g_382;
    VECTOR(int16_t, 4) g_384;
    VECTOR(int16_t, 16) g_388;
    uint16_t * volatile g_399;
    uint16_t * volatile *g_398;
    volatile VECTOR(uint16_t, 2) g_406;
    VECTOR(int16_t, 4) g_411;
    volatile VECTOR(uint16_t, 4) g_413;
    VECTOR(int16_t, 8) g_414;
    VECTOR(uint16_t, 4) g_415;
    uint16_t g_416;
    uint32_t g_431;
    VECTOR(int32_t, 2) g_441;
    volatile struct S1 g_460[9][4];
    int64_t *g_480;
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
int16_t  func_1(struct S4 * p_489);
uint64_t  func_4(uint32_t  p_5, int64_t  p_6, uint8_t  p_7, int32_t  p_8, uint16_t  p_9, struct S4 * p_489);
int32_t  func_14(uint64_t  p_15, uint16_t  p_16, struct S4 * p_489);
uint64_t  func_17(struct S0  p_18, uint32_t  p_19, int8_t  p_20, uint32_t  p_21, int64_t  p_22, struct S4 * p_489);
struct S0  func_23(int64_t  p_24, int16_t  p_25, int8_t  p_26, int8_t  p_27, struct S4 * p_489);
int32_t * func_30(int32_t * p_31, struct S0  p_32, struct S4 * p_489);
int32_t * func_33(int32_t * p_34, uint32_t  p_35, uint32_t  p_36, struct S4 * p_489);
int32_t ** func_51(uint16_t * p_52, int64_t  p_53, int32_t * p_54, struct S4 * p_489);
int32_t * func_55(int32_t * p_56, struct S4 * p_489);
struct S0  func_75(int32_t  p_76, uint16_t * p_77, uint32_t  p_78, struct S4 * p_489);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_489->g_10 p_489->g_37 p_489->g_38 p_489->g_45 p_489->g_64 p_489->g_67 p_489->g_71 p_489->g_70.f1 p_489->g_120 p_489->g_109 p_489->g_50 p_489->g_70.f6 p_489->g_72 p_489->g_85 p_489->g_169 p_489->g_172 p_489->g_70.f2 p_489->g_186 p_489->g_198 p_489->g_199 p_489->g_138.f4 p_489->g_213 p_489->g_214 p_489->g_208 p_489->g_229 p_489->g_236 p_489->g_245 p_489->g_138.f1 p_489->g_234.f0 p_489->g_234.f1 p_489->g_138.f3 p_489->g_255 p_489->g_256 p_489->g_138.f2 p_489->g_138.f0 p_489->g_288 p_489->g_293 p_489->g_296 p_489->g_300 p_489->g_304 p_489->g_307 p_489->g_308 p_489->g_309 p_489->g_209 p_489->g_70.f5 p_489->g_138.f6 p_489->g_70.f4 p_489->g_335 p_489->g_347 p_489->g_348 p_489->g_349 p_489->g_350 p_489->g_174 p_489->g_363 p_489->g_382 p_489->g_384 p_489->g_388 p_489->g_398 p_489->g_406 p_489->g_411 p_489->g_413 p_489->g_414 p_489->g_415 p_489->g_70.f0 p_489->g_416 p_489->g_126 p_489->g_460 p_489->g_399 p_489->g_234.f3 p_489->g_480
 * writes: p_489->g_38 p_489->g_45 p_489->g_50 p_489->g_64 p_489->g_72 p_489->g_70.f1 p_489->g_138.f5 p_489->g_172 p_489->g_174 p_489->g_85 p_489->g_37 p_489->g_186 p_489->g_208 p_489->g_209 p_489->g_138.f4 p_489->g_229 p_489->g_214 p_489->g_254 p_489->g_236.f3 p_489->g_138.f6 p_489->g_70.f4 p_489->g_288.f5 p_489->g_363 p_489->g_67 p_489->g_288.f0 p_489->g_70.f5 p_489->g_234.f5 p_489->g_255 p_489->g_213 p_489->g_234.f1 p_489->g_441
 */
int16_t  func_1(struct S4 * p_489)
{ /* block id: 4 */
    uint16_t l_13 = 0x9CA3L;
    int32_t l_323 = 0x1DD08DC8L;
    VECTOR(uint32_t, 4) l_331 = (VECTOR(uint32_t, 4))(0x9CDCDCEDL, (VECTOR(uint32_t, 2))(0x9CDCDCEDL, 4UL), 4UL);
    uint32_t l_423 = 4294967290UL;
    uint32_t *l_430 = &p_489->g_431;
    VECTOR(int32_t, 8) l_449 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x3EBD3577L), 0x3EBD3577L), 0x3EBD3577L, 5L, 0x3EBD3577L);
    int32_t ***l_451 = &p_489->g_72;
    uint8_t *l_474 = &p_489->g_85[3];
    uint8_t **l_473 = &l_474;
    int16_t l_477 = 0x7F8BL;
    int16_t l_488 = 0x7BDEL;
    int i;
    if ((safe_lshift_func_uint8_t_u_u(((5L != (p_489->g_138.f6 |= func_4(p_489->g_10, (safe_lshift_func_int16_t_s_u(p_489->g_10, 15)), l_13, func_14(func_17(func_23(p_489->g_10, p_489->g_10, (safe_add_func_int8_t_s_s((-3L), l_13)), (0x19L < 1UL), p_489), p_489->g_138.f2, l_13, p_489->g_138.f0, l_13, p_489), p_489->g_70.f5, p_489), p_489->g_236.f4, p_489))) > l_13), p_489->g_70.f6)))
    { /* block id: 116 */
        int32_t *l_324 = (void*)0;
        (***p_489->g_256) &= (-1L);
        l_323 ^= l_13;
        (***p_489->g_255) = l_324;
    }
    else
    { /* block id: 120 */
        struct S0 l_346 = {0x4BFB1699L,0x5877BF354BF82385L,1L,0xBE993A4DL,0x1CFCA34DL,18446744073709551610UL,18446744073709551615UL};
        uint8_t l_352 = 0x76L;
        uint32_t l_374 = 4294967292UL;
        VECTOR(int16_t, 8) l_389 = (VECTOR(int16_t, 8))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 0x0D76L), 0x0D76L), 0x0D76L, (-6L), 0x0D76L);
        int32_t l_417 = 0x2D7C5E2DL;
        VECTOR(uint16_t, 8) l_418 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x9872L), 0x9872L), 0x9872L, 1UL, 0x9872L);
        uint64_t *l_426[3][8] = {{&p_489->g_288.f0,&p_489->g_138.f5,&p_489->g_288.f0,&p_489->g_138.f5,&p_489->g_288.f0,&p_489->g_288.f0,&p_489->g_138.f5,&p_489->g_288.f0},{&p_489->g_288.f0,&p_489->g_138.f5,&p_489->g_288.f0,&p_489->g_138.f5,&p_489->g_288.f0,&p_489->g_288.f0,&p_489->g_138.f5,&p_489->g_288.f0},{&p_489->g_288.f0,&p_489->g_138.f5,&p_489->g_288.f0,&p_489->g_138.f5,&p_489->g_288.f0,&p_489->g_288.f0,&p_489->g_138.f5,&p_489->g_288.f0}};
        int32_t ***l_429 = &p_489->g_72;
        VECTOR(int16_t, 2) l_432 = (VECTOR(int16_t, 2))(0x7F4FL, 1L);
        struct S0 l_450 = {0x0B0E00B5L,0x22B0EFEB69883FE6L,1L,9UL,0x7DD806E8L,0x09868400043235EDL,18446744073709551607UL};
        uint64_t l_478 = 0xC4A2FE5B48709B2FL;
        int32_t l_487[3][4][7] = {{{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L},{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L},{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L},{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L}},{{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L},{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L},{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L},{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L}},{{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L},{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L},{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L},{0x3E343133L,0L,0x4B1B3938L,0L,0x4B1B3938L,0L,0x3E343133L}}};
        int i, j, k;
        for (p_489->g_70.f4 = 0; (p_489->g_70.f4 >= 15); p_489->g_70.f4 = safe_add_func_int16_t_s_s(p_489->g_70.f4, 6))
        { /* block id: 123 */
            return p_489->g_199.s1;
        }
        for (p_489->g_38 = (-11); (p_489->g_38 != (-27)); p_489->g_38 = safe_sub_func_int64_t_s_s(p_489->g_38, 2))
        { /* block id: 128 */
            int16_t l_334[8][10][2] = {{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}}};
            int8_t *l_344 = &p_489->g_50[7];
            struct S0 l_345 = {0x540D90A0L,0x011AAD2C1BF2CFC2L,-8L,0x916993E9L,0x01E8A26FL,0x731D47110B1D1FD6L,0xC1DC576CB143FF0CL};
            int32_t l_351 = 0L;
            int32_t l_366 = 0x38B8B2C4L;
            uint16_t l_377 = 1UL;
            VECTOR(uint16_t, 4) l_412 = (VECTOR(uint16_t, 4))(0x1648L, (VECTOR(uint16_t, 2))(0x1648L, 0xFC2AL), 0xFC2AL);
            int i, j, k;
            if ((((~((VECTOR(int64_t, 2))(1L, 4L)).lo) >= (safe_add_func_int8_t_s_s(((((((VECTOR(uint16_t, 2))(0UL, 0xD882L)).odd & FAKE_DIVERGE(p_489->group_2_offset, get_group_id(2), 10)) >= ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(min(((VECTOR(uint32_t, 16))(l_331.yxxwwwzyyzwyywxy)).hi, (uint32_t)((safe_sub_func_uint8_t_u_u((GROUP_DIVERGE(1, 1) > l_334[2][2][1]), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_489->g_335.s20acf930)), (safe_rshift_func_uint8_t_u_s(p_489->g_198.s7, 1)), 1L, (safe_add_func_int32_t_s_s((safe_sub_func_int8_t_s_s((((safe_rshift_func_int8_t_s_u(((*l_344) = p_489->g_172), ((l_351 = ((VECTOR(int32_t, 16))(0x20D84745L, (l_345 , (l_346 , (((((p_489->g_347 == &p_489->g_348) | ((*p_489->g_348) || (l_345.f1 < 0xFE0B815DL))) , p_489->g_350[0]) , 0xB05BL) <= p_489->g_309.s3))), 0x60F2C445L, ((VECTOR(int32_t, 2))((-3L))), ((VECTOR(int32_t, 4))(0x19536F7FL)), ((VECTOR(int32_t, 2))(2L)), 0x266E282DL, 1L, 0x7B6BC49FL, 0x5458C395L, 1L)).sc) >= p_489->g_288.f1))) , l_331.y) < (***p_489->g_256)), l_331.z)), (*p_489->g_245))), ((VECTOR(int8_t, 4))((-1L))), 1L)).s3)) >= 4294967290UL)))) | ((VECTOR(uint32_t, 8))(0xE572716CL))))).s3) >= p_489->g_174) && l_352), p_489->g_213.sc))) <= l_352))
            { /* block id: 131 */
                (***p_489->g_255) = &l_351;
            }
            else
            { /* block id: 133 */
                int32_t *l_359 = &p_489->g_38;
                VECTOR(uint16_t, 16) l_392 = (VECTOR(uint16_t, 16))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0UL), 0UL), 0UL, 65526UL, 0UL, (VECTOR(uint16_t, 2))(65526UL, 0UL), (VECTOR(uint16_t, 2))(65526UL, 0UL), 65526UL, 0UL, 65526UL, 0UL);
                int i;
                for (l_351 = 25; (l_351 >= 12); l_351 = safe_sub_func_uint32_t_u_u(l_351, 3))
                { /* block id: 136 */
                    uint16_t *l_360 = &p_489->g_45;
                    uint32_t *l_361[3][1][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}}};
                    VECTOR(uint16_t, 2) l_383 = (VECTOR(uint16_t, 2))(0xFD5FL, 3UL);
                    VECTOR(uint16_t, 16) l_393 = (VECTOR(uint16_t, 16))(0x6497L, (VECTOR(uint16_t, 4))(0x6497L, (VECTOR(uint16_t, 2))(0x6497L, 0x1878L), 0x1878L), 0x1878L, 0x6497L, 0x1878L, (VECTOR(uint16_t, 2))(0x6497L, 0x1878L), (VECTOR(uint16_t, 2))(0x6497L, 0x1878L), 0x6497L, 0x1878L, 0x6497L, 0x1878L);
                    int32_t l_394 = 0L;
                    int i, j, k;
                    for (p_489->g_288.f5 = 0; (p_489->g_288.f5 == (-5)); p_489->g_288.f5--)
                    { /* block id: 139 */
                        return p_489->g_300.s5;
                    }
                    if ((safe_mod_func_int32_t_s_s((((*l_360) = (l_359 != (**p_489->g_256))) >= l_345.f5), (--p_489->g_363))))
                    { /* block id: 144 */
                        int32_t *l_367 = &l_323;
                        int32_t *l_368 = &l_366;
                        int32_t *l_369 = (void*)0;
                        int32_t *l_370 = &l_366;
                        int32_t *l_371 = (void*)0;
                        int32_t *l_372 = &l_366;
                        int32_t *l_373 = &l_323;
                        VECTOR(int8_t, 16) l_387 = (VECTOR(int8_t, 16))(0x56L, (VECTOR(int8_t, 4))(0x56L, (VECTOR(int8_t, 2))(0x56L, 0L), 0L), 0L, 0x56L, 0L, (VECTOR(int8_t, 2))(0x56L, 0L), (VECTOR(int8_t, 2))(0x56L, 0L), 0x56L, 0L, 0x56L, 0L);
                        int i;
                        ++l_374;
                        l_394 ^= ((l_377 | (**p_489->g_347)) || (safe_sub_func_int32_t_s_s((p_489->g_304.x && ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))((+((VECTOR(uint16_t, 16))(p_489->g_382.zywzwyxyzxyxwyzx)).s2b04))) + ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(7UL, 0x0F20L)), ((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(l_383.yy)).yxyx ^ ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 16))((-5L), (-8L), 0x3B7DL, ((VECTOR(int16_t, 4))(p_489->g_384.xzwz)), ((**p_489->g_347) >= p_489->g_70.f6), l_346.f0, 0L, ((VECTOR(int16_t, 2))((-1L), 1L)), ((*l_367) && (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(0L, 0x1DL)).xxxxyyxx && ((VECTOR(int8_t, 4))(l_387.s9dee)).wwzywwwy))).s1, 6))), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 4))(5L, p_489->g_288.f1, 6L, 0L)).hi, ((VECTOR(int16_t, 2))(p_489->g_388.sc9))))), 0x5269L, 0x4928L)).wxyyxxyz, ((VECTOR(int16_t, 8))(0x5CE8L, ((VECTOR(int16_t, 2))(l_389.s37)), (((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 2))(l_392.s66)).yxxyyxyy, ((VECTOR(uint16_t, 8))(l_393.sc0187fd4)), ((VECTOR(uint16_t, 16))(p_489->g_350[0].f4, 1UL, 65528UL, ((VECTOR(uint16_t, 2))(0UL)), 0x2916L, ((VECTOR(uint16_t, 2))(0x0852L)), 65535UL, ((VECTOR(uint16_t, 4))(0x5856L)), l_351, 0x4A63L, 0x53CFL)).lo))).s60 - ((VECTOR(uint16_t, 2))(0x91B9L))))).even < p_489->g_198.s5), p_489->g_349, ((VECTOR(int16_t, 2))((-1L))), 0x16BDL))))).s02 && ((VECTOR(int16_t, 2))((-3L)))))), (-7L))).s73, ((VECTOR(int16_t, 2))((-1L)))))).xxyx))).yxzzxxxy, ((VECTOR(uint16_t, 8))(65527UL))))), ((VECTOR(uint16_t, 4))(0x671AL)), 65528UL, 1UL)).s2bb0, ((VECTOR(uint16_t, 4))(0x71B6L)), ((VECTOR(uint16_t, 4))(0UL)))))))).x), p_489->g_288.f4)));
                    }
                    else
                    { /* block id: 147 */
                        uint16_t **l_397[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_397[i] = &l_360;
                        l_417 = (((l_345 , ((*l_344) = 0L)) <= (safe_mod_func_int16_t_s_s((l_397[5] == p_489->g_398), (safe_div_func_int16_t_s_s((!(safe_mod_func_uint32_t_u_u(l_389.s2, (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_489->group_1_offset, get_group_id(1), 10), ((&l_323 != &l_323) | (((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 8))(p_489->g_406.yyyxyxyx)).s7465676155122371, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 8))(p_489->g_411.xwxwywwy)).s15))), 0x6FACL, 8UL)).yxyyywxwwwwzwyzy, ((VECTOR(uint16_t, 8))((-((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(l_412.wyyxzzyz)).s26 | ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 16))(p_489->g_413.yyxwwzwywxyxzwwz)).s8cad, ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(0xA3AEL, ((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 8))(p_489->g_414.s23247156)).s67))), 0UL, 65535UL, ((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 16))(p_489->g_415.xywxwwxwzyzxzxzz)).s7d, (uint16_t)(!65532UL)))).yxyxxyxy, ((VECTOR(uint16_t, 16))(((l_334[6][9][1] >= p_489->g_70.f0) <= 1UL), ((VECTOR(uint16_t, 2))(0xEC57L)), 0xC04BL, ((VECTOR(uint16_t, 2))(0x0A76L)), ((VECTOR(uint16_t, 8))(65526UL)), 65528UL, 0xA2FFL)).even))), ((VECTOR(uint16_t, 2))(0x005CL)), 0xB91DL)).s3c, ((VECTOR(uint16_t, 2))(0UL)), ((VECTOR(uint16_t, 2))(6UL))))), ((VECTOR(uint16_t, 2))(0UL))))).yyyx))).hi))).yxyyyxyy))).s2300540100140300))).sd4f6, ((VECTOR(uint16_t, 4))(0xDA81L))))) + ((VECTOR(uint16_t, 4))(65535UL))))) + ((VECTOR(uint16_t, 4))(0x8B5DL))))).xxzzwwyyxzxwwxyz))).sc != 0x7D40L))))))), (*l_359)))))) & p_489->g_416);
                        if ((*p_489->g_37))
                            continue;
                        if ((***p_489->g_71))
                            break;
                    }
                }
                (*p_489->g_126) = (*p_489->g_126);
            }
            return l_346.f0;
        }
        (*p_489->g_37) ^= ((((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 16))(l_418.s2256364163475126)).sf2, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(0x1C69L, FAKE_DIVERGE(p_489->group_1_offset, get_group_id(1), 10), 0UL, 0xAE76L)), 65535UL, 0x084CL, 0UL, 65535UL)).s11))).odd ^ ((safe_sub_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(l_423, (safe_sub_func_uint8_t_u_u(((+(p_489->g_288.f0 = 18446744073709551611UL)) , l_331.z), (safe_mul_func_int16_t_s_s((((l_323 = (l_429 == l_429)) , p_489->g_37) == (l_430 = func_55((*p_489->g_72), p_489))), (((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 8))(l_432.yyxxyxxx)).odd, (int16_t)0x5531L))).z || 0L))))))), l_331.x)) | p_489->g_172)) ^ 0xCA62081C1CD64F70L);
        for (l_346.f5 = 4; (l_346.f5 > 52); ++l_346.f5)
        { /* block id: 164 */
            int32_t *l_438 = &l_417;
            VECTOR(int32_t, 4) l_457 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0FE94F16L), 0x0FE94F16L);
            int64_t *l_479 = &p_489->g_362[3];
            int i;
            for (p_489->g_70.f5 = (-6); (p_489->g_70.f5 <= 51); p_489->g_70.f5 = safe_add_func_int64_t_s_s(p_489->g_70.f5, 6))
            { /* block id: 167 */
                int64_t *l_437 = &p_489->g_234.f5;
                VECTOR(uint16_t, 4) l_444 = (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0UL), 0UL);
                uint8_t l_456 = 251UL;
                int i;
                (*p_489->g_72) = (((*l_437) = p_489->g_308.sa) , l_438);
                (*l_438) &= (*p_489->g_245);
                l_457.x = ((safe_mod_func_int32_t_s_s((l_449.s0 = ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(p_489->g_441.yxyxxyxx)).s52, ((VECTOR(int32_t, 16))((***p_489->g_71), (safe_mul_func_uint16_t_u_u((*l_438), (((VECTOR(uint16_t, 16))(l_444.yxwxyyzzxxyxzyyw)).sf != (safe_lshift_func_uint16_t_u_s((safe_mod_func_uint64_t_u_u(18446744073709551608UL, p_489->g_172)), 3))))), 0x6FAFC24DL, ((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 8))(l_449.s63071463)).hi))), ((((((((l_450 , (l_451 = l_451)) == ((*p_489->g_255) = (*p_489->g_255))) || ((safe_lshift_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(((***l_429) = (p_489->g_138.f0 ^ (p_489->g_70.f6 <= (-9L)))), p_489->g_300.s1)), 15)) < p_489->g_70.f0)) , l_444.x) || l_444.z) == 1L) , (*p_489->g_348)) <= l_456), ((VECTOR(int32_t, 4))((-8L))), 0x0FBCAD63L, ((VECTOR(int32_t, 2))(0L)), 0x45EE7571L)).sc8, ((VECTOR(int32_t, 2))(0x583F8B78L))))).xyxxxyyx, (int32_t)0x506EF295L, (int32_t)0x0E917D68L))), ((VECTOR(int32_t, 8))(4L))))) && ((VECTOR(int32_t, 8))(0L))))).s3767002603005166, ((VECTOR(int32_t, 16))(0x76D924F2L)), ((VECTOR(int32_t, 16))(1L))))).sa397 ^ ((VECTOR(int32_t, 4))(0L))))).z), 4294967288UL)) & l_331.w);
            }
            l_457.y &= (0UL ^ (safe_mul_func_uint16_t_u_u((p_489->g_460[6][0] , (safe_lshift_func_uint16_t_u_s((**p_489->g_398), (+(8UL || ((p_489->g_109.x , (safe_div_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s(((!(65535UL != (safe_mod_func_uint16_t_u_u((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))((((l_473 != (void*)0) | ((*l_438) = ((*l_479) = ((VECTOR(int64_t, 16))((((VECTOR(int8_t, 16))((-5L), (safe_mul_func_int16_t_s_s((p_489->g_304.y , p_489->g_415.z), l_477)), p_489->g_172, 0x55L, 0x5AL, ((VECTOR(int8_t, 2))(1L)), ((VECTOR(int8_t, 2))((-7L))), (-5L), 0x24L, (-3L), 0x66L, ((VECTOR(int8_t, 2))(5L)), (-1L))).sc || 0L), 0L, (-10L), 1L, 0x3AF1DDFFB25A9972L, l_478, (-1L), (***l_429), ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 2))(4L)), p_489->g_411.w, ((VECTOR(int64_t, 2))((-4L))), 0x007AE015F75C708BL)).s9))) || (***l_451)), ((VECTOR(uint8_t, 4))(255UL)), ((VECTOR(uint8_t, 2))(0x65L)), 1UL)).s4273610351106124 + ((VECTOR(uint8_t, 16))(0UL))))).sc0 + ((VECTOR(uint8_t, 2))(1UL))))), 254UL, 255UL)).z , (***l_429)), p_489->g_309.s7)))) < 0UL), p_489->g_120.x)), 0x7D13C24EB43536D7L))) || p_489->g_234.f3)))))), p_489->g_309.s5)));
            if (((void*)0 == p_489->g_480))
            { /* block id: 180 */
                return p_489->g_138.f2;
            }
            else
            { /* block id: 182 */
                int32_t *****l_481 = &p_489->g_255;
                int32_t *l_486[2][9] = {{&l_417,&l_323,&l_417,&l_417,&l_323,&l_417,&l_417,&l_323,&l_417},{&l_417,&l_323,&l_417,&l_417,&l_323,&l_417,&l_417,&l_323,&l_417}};
                int i, j;
                if ((*l_438))
                    break;
                l_487[2][3][6] |= ((((*l_481) = &l_451) == &p_489->g_71) <= ((**p_489->g_398) = (safe_lshift_func_int16_t_s_s((*l_438), (~((p_489->g_138.f2 == ((*l_438) , (((l_323 ^= (p_489->g_213.sa &= ((*p_489->g_245) = (((safe_mod_func_int8_t_s_s(((1UL || (*l_438)) , 0x30L), p_489->g_229.s3)) ^ p_489->g_413.z) <= 0xDC3795ADL)))) > GROUP_DIVERGE(0, 1)) , (*l_438)))) | l_389.s5))))));
                if ((*p_489->g_245))
                    break;
                if ((***l_451))
                    break;
            }
            p_489->g_441.y = ((***p_489->g_256) = 0x3344F51EL);
        }
    }
    (*p_489->g_245) &= l_13;
    (*p_489->g_245) &= l_488;
    return p_489->g_138.f1;
}


/* ------------------------------------------ */
/* 
 * reads : p_489->g_71 p_489->g_72 p_489->g_37 p_489->g_236.f2
 * writes: p_489->g_38
 */
uint64_t  func_4(uint32_t  p_5, int64_t  p_6, uint8_t  p_7, int32_t  p_8, uint16_t  p_9, struct S4 * p_489)
{ /* block id: 112 */
    (***p_489->g_71) = (GROUP_DIVERGE(0, 1) , 0L);
    return p_489->g_236.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_489->g_255 p_489->g_256 p_489->g_72 p_489->g_37 p_489->g_38
 * writes: p_489->g_37
 */
int32_t  func_14(uint64_t  p_15, uint16_t  p_16, struct S4 * p_489)
{ /* block id: 109 */
    int32_t *l_322 = &p_489->g_38;
    (***p_489->g_255) = l_322;
    return (**p_489->g_72);
}


/* ------------------------------------------ */
/* 
 * reads : p_489->g_288 p_489->g_293 p_489->g_296 p_489->g_300 p_489->g_304 p_489->g_307 p_489->g_308 p_489->g_309 p_489->g_236.f4 p_489->g_138.f0 p_489->g_209 p_489->g_72 p_489->g_37
 * writes: p_489->g_209 p_489->g_38
 */
uint64_t  func_17(struct S0  p_18, uint32_t  p_19, int8_t  p_20, uint32_t  p_21, int64_t  p_22, struct S4 * p_489)
{ /* block id: 104 */
    VECTOR(uint64_t, 16) l_291 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xBC484CA713AE3CD8L), 0xBC484CA713AE3CD8L), 0xBC484CA713AE3CD8L, 0UL, 0xBC484CA713AE3CD8L, (VECTOR(uint64_t, 2))(0UL, 0xBC484CA713AE3CD8L), (VECTOR(uint64_t, 2))(0UL, 0xBC484CA713AE3CD8L), 0UL, 0xBC484CA713AE3CD8L, 0UL, 0xBC484CA713AE3CD8L);
    VECTOR(uint64_t, 2) l_292 = (VECTOR(uint64_t, 2))(8UL, 18446744073709551608UL);
    VECTOR(uint32_t, 16) l_297 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967286UL), 4294967286UL), 4294967286UL, 1UL, 4294967286UL, (VECTOR(uint32_t, 2))(1UL, 4294967286UL), (VECTOR(uint32_t, 2))(1UL, 4294967286UL), 1UL, 4294967286UL, 1UL, 4294967286UL);
    VECTOR(int32_t, 2) l_303 = (VECTOR(int32_t, 2))(0x00039F4CL, 0x6F50F31CL);
    VECTOR(int32_t, 16) l_305 = (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x2E0BDE48L), 0x2E0BDE48L), 0x2E0BDE48L, 4L, 0x2E0BDE48L, (VECTOR(int32_t, 2))(4L, 0x2E0BDE48L), (VECTOR(int32_t, 2))(4L, 0x2E0BDE48L), 4L, 0x2E0BDE48L, 4L, 0x2E0BDE48L);
    VECTOR(uint32_t, 16) l_306 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xE0D04261L), 0xE0D04261L), 0xE0D04261L, 4294967295UL, 0xE0D04261L, (VECTOR(uint32_t, 2))(4294967295UL, 0xE0D04261L), (VECTOR(uint32_t, 2))(4294967295UL, 0xE0D04261L), 4294967295UL, 0xE0D04261L, 4294967295UL, 0xE0D04261L);
    VECTOR(uint32_t, 2) l_312 = (VECTOR(uint32_t, 2))(1UL, 4294967286UL);
    int16_t *l_319 = &p_489->g_209;
    int32_t l_320 = 0x723AE28DL;
    uint64_t l_321 = 0x61C3B31209D42BEFL;
    int i;
    l_321 ^= ((**p_489->g_72) = (p_489->g_288 , (((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(l_291.s226c8784a21cff75)) + ((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 16))(l_292.yyyyxxxxyxxxxxxy)).s18, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(p_489->g_293.yzwyyxyx)).s4, (safe_add_func_uint8_t_u_u(((void*)0 != &p_489->g_255), p_18.f0)), 0xDF6CA31212EB65FCL, 0x96F3F8F0CFB5D877L)).hi))).yxxyxyyx, ((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 2))(p_489->g_296.xy)), ((VECTOR(uint32_t, 8))(l_297.s52a50666)).s62))).xxyxyyxxxxyyyxxx, ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(p_489->g_300.sec)).yxyyxxxxyyyxxxyy + ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(l_303.yyyyyyxy)).even, ((VECTOR(int32_t, 2))(p_489->g_304.zx)).xxyx))), ((VECTOR(int32_t, 2))(l_305.sc7)).xxyy))).xyxwzzywxzwwzyyw + ((VECTOR(uint32_t, 16))((~((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))((+((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(l_306.s7e67eb7f53882f06)).odd & ((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 8))(p_489->g_307.s47060701)).lo, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_489->g_308.s8b)), 4294967295UL, 0x6100E7AAL))))).xxxyyzxz))).s4632150305603320))).even, ((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 4))(p_489->g_309.s3447)).hi, ((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(l_312.yxyyyyxx)).s5002434161614610 - ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(0x675F7C2EL, 8UL)).xyxyxxxx >> ((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 16))(65527UL, (p_489->g_236.f4 | l_292.x), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((void*)0 == &p_18) | (((*l_319) &= p_489->g_138.f0) ^ 65535UL)), l_297.s9, 0x1D62L, 0xD24CL)).even | ((VECTOR(uint16_t, 2))(1UL))))).xyyy * ((VECTOR(uint16_t, 4))(65530UL))))), 5UL, l_303.x, 0x6BD8L, GROUP_DIVERGE(1, 1), 1UL, l_306.sc, p_18.f3, ((VECTOR(uint16_t, 2))(65533UL)), 0xF103L)), ((VECTOR(uint16_t, 16))(1UL))))).hi))).s73, ((VECTOR(uint32_t, 2))(0x3B4997CFL)), ((VECTOR(uint32_t, 2))(0x824F1799L))))).yyxxyxyxxyxxyxxx + ((VECTOR(uint32_t, 16))(0x955FC9F1L))))).odd ^ ((VECTOR(uint32_t, 8))(2UL))))).lo, ((VECTOR(uint32_t, 4))(0xD5766EEEL))))), ((VECTOR(uint32_t, 8))(0x3FDBF1C4L)), ((VECTOR(uint32_t, 2))(4294967287UL)), 0xD72F7DF2L, 0xC66B220CL))))).s7741, (uint32_t)l_320))).hi, ((VECTOR(uint32_t, 2))(4294967291UL))))).yyxxxxyx, ((VECTOR(uint32_t, 8))(0UL))))), ((VECTOR(uint32_t, 8))(0xC32EE872L))))).s0, 0UL, 0x29BCD768L, p_19, 0x9102AE3DL, ((VECTOR(uint32_t, 2))(0UL)), 6UL)).s6343165612370400, ((VECTOR(uint32_t, 16))(1UL))))))))))))))))).odd))).s5644272146464200))).sf <= p_489->g_288.f4) && 0x67L) > l_306.se)));
    return p_18.f3;
}


/* ------------------------------------------ */
/* 
 * reads : p_489->g_37 p_489->g_10 p_489->g_38 p_489->g_45 p_489->g_64 p_489->g_67 p_489->g_71 p_489->g_70.f1 p_489->g_120 p_489->g_109 p_489->g_50 p_489->g_70.f6 p_489->g_72 p_489->g_85 p_489->g_169 p_489->g_172 p_489->g_70.f2 p_489->g_186 p_489->g_198 p_489->g_199 p_489->g_138.f4 p_489->g_213 p_489->g_214 p_489->g_208 p_489->g_229 p_489->g_236 p_489->g_245 p_489->g_138.f1 p_489->g_234.f0 p_489->g_234.f1 p_489->g_138.f3 p_489->g_255 p_489->g_256
 * writes: p_489->g_38 p_489->g_45 p_489->g_50 p_489->g_64 p_489->g_72 p_489->g_70.f1 p_489->g_138.f5 p_489->g_172 p_489->g_174 p_489->g_85 p_489->g_37 p_489->g_186 p_489->g_208 p_489->g_209 p_489->g_138.f4 p_489->g_229 p_489->g_214 p_489->g_254 p_489->g_236.f3
 */
struct S0  func_23(int64_t  p_24, int16_t  p_25, int8_t  p_26, int8_t  p_27, struct S4 * p_489)
{ /* block id: 5 */
    int64_t l_39 = 0x79F9F4AEC701401CL;
    struct S0 l_235 = {0x2DA45977L,-2L,0L,0xDFD42932L,1L,0x6B361E43FC740E43L,18446744073709551607UL};
    int32_t *l_246 = &p_489->g_38;
    int32_t ***l_253[7] = {&p_489->g_72,&p_489->g_72,&p_489->g_72,&p_489->g_72,&p_489->g_72,&p_489->g_72,&p_489->g_72};
    int32_t ****l_252[5] = {&l_253[4],&l_253[4],&l_253[4],&l_253[4],&l_253[4]};
    int32_t *****l_251 = &l_252[3];
    VECTOR(int64_t, 4) l_272 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L));
    struct S0 ***l_283 = &p_489->g_126;
    int i;
    l_246 = (GROUP_DIVERGE(1, 1) , func_30(func_33(p_489->g_37, l_39, p_489->g_10, p_489), l_235, p_489));
    if (((p_489->g_254 = ((safe_div_func_uint32_t_u_u(0UL, (safe_add_func_int16_t_s_s(0x2D00L, p_26)))) , l_251)) == &l_252[4]))
    { /* block id: 94 */
        VECTOR(uint32_t, 2) l_267 = (VECTOR(uint32_t, 2))(0UL, 4294967295UL);
        VECTOR(uint64_t, 8) l_270 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551611UL), 18446744073709551611UL), 18446744073709551611UL, 18446744073709551615UL, 18446744073709551611UL);
        VECTOR(uint64_t, 16) l_271 = (VECTOR(uint64_t, 16))(18446744073709551608UL, (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x898BB63FFE5A35B0L), 0x898BB63FFE5A35B0L), 0x898BB63FFE5A35B0L, 18446744073709551608UL, 0x898BB63FFE5A35B0L, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x898BB63FFE5A35B0L), (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x898BB63FFE5A35B0L), 18446744073709551608UL, 0x898BB63FFE5A35B0L, 18446744073709551608UL, 0x898BB63FFE5A35B0L);
        uint16_t **l_278 = (void*)0;
        uint16_t *l_280 = &p_489->g_45;
        uint16_t **l_279 = &l_280;
        int64_t *l_281 = (void*)0;
        int64_t *l_282 = &p_489->g_174;
        int16_t *l_284[6][1][2] = {{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}}};
        int i, j, k;
        (****p_489->g_255) = (safe_add_func_int64_t_s_s((p_489->g_138.f1 > ((((safe_lshift_func_uint8_t_u_s(((safe_sub_func_uint16_t_u_u((p_489->g_236.f3 = (safe_add_func_uint8_t_u_u(((((((VECTOR(uint32_t, 4))(l_267.yyxx)).x < (-1L)) < (p_489->g_234.f0 > (4L < (1L <= ((((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_270.s65)), 0xDD903581B5EB7728L, 1UL)).hi))).yyxyxyyxxxyyxyxy, ((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 16))(l_271.sbf8c4f9a4b633b7f)), ((VECTOR(uint64_t, 2))(0x22B2C214BE47F3CAL, 8UL)).xxxyxxxxyxyyxyxx)))))), ((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 16))(l_272.wwxxzwyxyxyzzzww)).hi, ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(((*l_282) = (safe_unary_minus_func_uint64_t_u((safe_sub_func_uint32_t_u_u((p_26 && (p_26 == ((safe_sub_func_int64_t_s_s(((((8L == ((((*l_279) = &p_489->g_45) != (void*)0) < p_489->g_138.f1)) | 1L) == p_24) <= l_271.sf), GROUP_DIVERGE(0, 1))) , 1L))), p_489->g_236.f4))))), 0L, 0x1E7DE2E0F4BE20EFL, ((VECTOR(int64_t, 8))(0x3DE434C83E2762CEL)), p_489->g_234.f1, (-1L), ((VECTOR(int64_t, 2))(0x1AF55DAAE100CF8CL)), 1L)).odd | ((VECTOR(int64_t, 8))((-5L)))))).s34 ^ ((VECTOR(int64_t, 2))(0x78934DF7DAA8D77FL))))).xxyxxyxyyxxxxyxy && ((VECTOR(int64_t, 16))(7L))))).lo, ((VECTOR(int64_t, 8))(0L))))).s7670013770251101 && ((VECTOR(int64_t, 16))(0x1EB0DDA2389F4B7CL))))).odd))).s0151064660177237))).sea + ((VECTOR(uint64_t, 2))(1UL))))).xxxxxxxy, ((VECTOR(uint64_t, 8))(0x1083BA983BBF3BCAL)), ((VECTOR(uint64_t, 8))(0UL))))).s3 , &p_489->g_126) == l_283))))) , &p_489->g_83) != l_284[2][0][1]), p_26))), 0x77DAL)) > p_489->g_199.s3), 1)) , p_489->g_236.f5) >= p_489->g_70.f1) > p_489->g_109.w)), p_489->g_138.f3));
    }
    else
    { /* block id: 99 */
        uint32_t l_285 = 4294967295UL;
        l_285--;
    }
    (*p_489->g_37) = 0x0CFBBEBAL;
    return l_235;
}


/* ------------------------------------------ */
/* 
 * reads : p_489->g_236 p_489->g_72 p_489->g_37 p_489->g_64 p_489->g_38 p_489->g_214 p_489->g_245
 * writes: p_489->g_64 p_489->g_37 p_489->g_214
 */
int32_t * func_30(int32_t * p_31, struct S0  p_32, struct S4 * p_489)
{ /* block id: 86 */
    int32_t *l_237 = (void*)0;
    int32_t *l_238 = &p_489->g_38;
    int32_t *l_239[10][10][2] = {{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}},{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}},{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}},{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}},{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}},{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}},{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}},{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}},{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}},{{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38},{&p_489->g_38,&p_489->g_38}}};
    int8_t l_240 = 0x5BL;
    uint32_t l_241 = 0UL;
    int i, j, k;
    (*p_489->g_72) = func_55((p_489->g_236 , (*p_489->g_72)), p_489);
    if (p_489->g_236.f5)
        goto lbl_244;
lbl_244:
    l_241++;
    p_489->g_214.s6 &= (**p_489->g_72);
    return p_489->g_245;
}


/* ------------------------------------------ */
/* 
 * reads : p_489->g_10 p_489->g_38 p_489->g_45 p_489->g_64 p_489->g_67 p_489->g_71 p_489->g_37 p_489->g_120 p_489->g_109 p_489->g_50 p_489->g_70.f6 p_489->g_72 p_489->g_85 p_489->g_169 p_489->g_172 p_489->g_70.f2 p_489->g_186 p_489->g_198 p_489->g_199 p_489->g_138.f4 p_489->g_213 p_489->g_214 p_489->g_208 p_489->g_70.f1 p_489->g_229
 * writes: p_489->g_38 p_489->g_45 p_489->g_50 p_489->g_64 p_489->g_72 p_489->g_70.f1 p_489->g_138.f5 p_489->g_172 p_489->g_174 p_489->g_85 p_489->g_37 p_489->g_186 p_489->g_208 p_489->g_209 p_489->g_138.f4 p_489->g_229
 */
int32_t * func_33(int32_t * p_34, uint32_t  p_35, uint32_t  p_36, struct S4 * p_489)
{ /* block id: 6 */
    int32_t *l_57 = &p_489->g_38;
    int32_t ***l_148 = &p_489->g_72;
    int32_t ****l_149 = &l_148;
    int32_t ***l_151 = &p_489->g_72;
    int32_t ****l_150 = &l_151;
    int8_t l_152[7][2] = {{0x08L,0x08L},{0x08L,0x08L},{0x08L,0x08L},{0x08L,0x08L},{0x08L,0x08L},{0x08L,0x08L},{0x08L,0x08L}};
    int32_t ***l_156[10][3][2] = {{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}},{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}},{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}},{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}},{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}},{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}},{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}},{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}},{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}},{{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0},{&p_489->g_72,(void*)0}}};
    int32_t ****l_155[7] = {&l_156[9][0][1],&l_156[6][1][0],&l_156[9][0][1],&l_156[9][0][1],&l_156[6][1][0],&l_156[9][0][1],&l_156[9][0][1]};
    int32_t ****l_158 = &l_156[3][1][0];
    int32_t *****l_157 = &l_158;
    uint16_t l_159 = 5UL;
    VECTOR(uint16_t, 16) l_166 = (VECTOR(uint16_t, 16))(0xE5C3L, (VECTOR(uint16_t, 4))(0xE5C3L, (VECTOR(uint16_t, 2))(0xE5C3L, 65534UL), 65534UL), 65534UL, 0xE5C3L, 65534UL, (VECTOR(uint16_t, 2))(0xE5C3L, 65534UL), (VECTOR(uint16_t, 2))(0xE5C3L, 65534UL), 0xE5C3L, 65534UL, 0xE5C3L, 65534UL);
    VECTOR(uint64_t, 2) l_170 = (VECTOR(uint64_t, 2))(0x5E14DD746744D27DL, 0xE9D5C39C69A8B32BL);
    struct S0 l_175 = {0x5596D7DCL,-8L,-1L,0UL,0x29B80D4FL,0x0CD836393F6DBDABL,0x79B5F31F8F648F5DL};
    VECTOR(uint64_t, 2) l_197 = (VECTOR(uint64_t, 2))(0xCBB8D6C72585D44CL, 0xE1C250E55875A123L);
    VECTOR(int64_t, 4) l_204 = (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 0x522ABE0106499F25L), 0x522ABE0106499F25L);
    VECTOR(uint64_t, 16) l_205 = (VECTOR(uint64_t, 16))(0x6A1E6C3D03F822C6L, (VECTOR(uint64_t, 4))(0x6A1E6C3D03F822C6L, (VECTOR(uint64_t, 2))(0x6A1E6C3D03F822C6L, 0xEDA1FC9DC17768C4L), 0xEDA1FC9DC17768C4L), 0xEDA1FC9DC17768C4L, 0x6A1E6C3D03F822C6L, 0xEDA1FC9DC17768C4L, (VECTOR(uint64_t, 2))(0x6A1E6C3D03F822C6L, 0xEDA1FC9DC17768C4L), (VECTOR(uint64_t, 2))(0x6A1E6C3D03F822C6L, 0xEDA1FC9DC17768C4L), 0x6A1E6C3D03F822C6L, 0xEDA1FC9DC17768C4L, 0x6A1E6C3D03F822C6L, 0xEDA1FC9DC17768C4L);
    int32_t l_207 = (-5L);
    VECTOR(int64_t, 8) l_218 = (VECTOR(int64_t, 8))(0x42F0818798A2A8A8L, (VECTOR(int64_t, 4))(0x42F0818798A2A8A8L, (VECTOR(int64_t, 2))(0x42F0818798A2A8A8L, 0L), 0L), 0L, 0x42F0818798A2A8A8L, 0L);
    VECTOR(int64_t, 2) l_219 = (VECTOR(int64_t, 2))(0x0151E4F78FD8D3F9L, 0x6AB82EBD33D6C251L);
    VECTOR(int64_t, 2) l_220 = (VECTOR(int64_t, 2))(1L, 0x04AF34483748E387L);
    int32_t l_224 = (-7L);
    int i, j, k;
lbl_160:
    for (p_36 = 0; (p_36 >= 5); p_36++)
    { /* block id: 9 */
        uint16_t *l_44[5][2] = {{&p_489->g_45,&p_489->g_45},{&p_489->g_45,&p_489->g_45},{&p_489->g_45,&p_489->g_45},{&p_489->g_45,&p_489->g_45},{&p_489->g_45,&p_489->g_45}};
        int32_t l_46 = 1L;
        uint32_t *l_49 = (void*)0;
        struct S0 l_139 = {0x3DBE8D7CL,-6L,-1L,5UL,1L,1UL,18446744073709551615UL};
        int i, j;
        (*p_34) |= (safe_rshift_func_uint8_t_u_s(p_489->g_10, 6));
        (*p_489->g_71) = ((p_489->g_50[3] = (FAKE_DIVERGE(p_489->group_2_offset, get_group_id(2), 10) ^ (p_489->g_45++))) , func_51(l_44[4][0], p_35, func_55(l_57, p_489), p_489));
        (*p_489->g_37) ^= l_46;
        for (p_489->g_70.f1 = 18; (p_489->g_70.f1 < (-11)); p_489->g_70.f1--)
        { /* block id: 24 */
            int16_t *l_81 = (void*)0;
            int16_t *l_82 = &p_489->g_83;
            uint8_t *l_84 = &p_489->g_85[3];
            int32_t l_86 = (-1L);
            VECTOR(uint8_t, 16) l_89 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x0FL), 0x0FL), 0x0FL, 1UL, 0x0FL, (VECTOR(uint8_t, 2))(1UL, 0x0FL), (VECTOR(uint8_t, 2))(1UL, 0x0FL), 1UL, 0x0FL, 1UL, 0x0FL);
            struct S0 *l_136 = (void*)0;
            struct S0 *l_137 = &p_489->g_138;
            int32_t *l_140 = (void*)0;
            int32_t *l_141 = &l_46;
            int i;
            (1 + 1);
        }
    }
lbl_210:
    (*p_489->g_37) = (safe_mul_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u(((*l_57) | (((safe_sub_func_uint32_t_u_u((((*l_149) = l_148) != ((*l_150) = &p_489->g_72)), ((((l_152[6][0] | ((p_489->g_120.x > (-1L)) != 4294967295UL)) & (safe_add_func_uint8_t_u_u(((l_155[4] = l_150) == ((*l_157) = &l_156[9][0][1])), p_489->g_109.w))) && p_489->g_50[6]) <= p_489->g_120.y))) , 0xBA2FB8516656B126L) < p_489->g_109.x)), 1UL)), l_159));
    if ((*p_34))
    { /* block id: 47 */
        VECTOR(int32_t, 16) l_161 = (VECTOR(int32_t, 16))(0x203F3C9CL, (VECTOR(int32_t, 4))(0x203F3C9CL, (VECTOR(int32_t, 2))(0x203F3C9CL, 0x72A1A335L), 0x72A1A335L), 0x72A1A335L, 0x203F3C9CL, 0x72A1A335L, (VECTOR(int32_t, 2))(0x203F3C9CL, 0x72A1A335L), (VECTOR(int32_t, 2))(0x203F3C9CL, 0x72A1A335L), 0x203F3C9CL, 0x72A1A335L, 0x203F3C9CL, 0x72A1A335L);
        uint16_t *l_167 = &p_489->g_45;
        VECTOR(int16_t, 4) l_168 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L);
        struct S0 **l_171 = &p_489->g_67;
        int64_t *l_173 = &p_489->g_174;
        struct S0 *l_176 = &l_175;
        uint8_t *l_178 = &p_489->g_85[5];
        uint8_t **l_177 = &l_178;
        uint8_t *l_180 = &p_489->g_85[0];
        uint8_t **l_179 = &l_180;
        uint8_t *l_181 = (void*)0;
        uint8_t *l_182 = &p_489->g_85[3];
        int32_t l_183[1][10][5] = {{{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L},{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L},{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L},{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L},{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L},{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L},{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L},{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L},{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L},{0x5C1AFD6CL,6L,5L,0x5C1AFD6CL,5L}}};
        VECTOR(uint16_t, 8) l_191 = (VECTOR(uint16_t, 8))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 6UL), 6UL), 6UL, 65533UL, 6UL);
        int32_t ****l_192[3][8][7] = {{{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]}},{{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]}},{{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]},{&l_151,&l_151,&l_156[3][0][0],&l_151,&l_156[6][2][1],&l_156[3][0][1],&l_156[4][2][1]}}};
        int8_t *l_206[5][8] = {{(void*)0,(void*)0,&p_489->g_50[7],(void*)0,(void*)0,(void*)0,&p_489->g_50[7],(void*)0},{(void*)0,(void*)0,&p_489->g_50[7],(void*)0,(void*)0,(void*)0,&p_489->g_50[7],(void*)0},{(void*)0,(void*)0,&p_489->g_50[7],(void*)0,(void*)0,(void*)0,&p_489->g_50[7],(void*)0},{(void*)0,(void*)0,&p_489->g_50[7],(void*)0,(void*)0,(void*)0,&p_489->g_50[7],(void*)0},{(void*)0,(void*)0,&p_489->g_50[7],(void*)0,(void*)0,(void*)0,&p_489->g_50[7],(void*)0}};
        int i, j, k;
        (****l_150) = (p_489->g_70.f6 || 0x58L);
        if (l_159)
            goto lbl_160;
        l_183[0][6][1] &= ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((***p_489->g_71), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_161.s96)), (p_35 , ((****l_150) , (((((safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_489->global_1_offset, get_global_id(1), 10), (((*l_182) = (((((*l_179) = ((*l_177) = ((+(p_489->g_138.f5 = ((*p_34) < ((safe_add_func_uint16_t_u_u(((*l_167) = ((VECTOR(uint16_t, 8))(l_166.sc6c6cd64)).s4), p_489->g_85[5])) >= p_489->g_70.f6)))) , (((*l_176) = (((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(l_168.xwwz)) | ((VECTOR(int16_t, 8))(p_489->g_169.yyyxyyxy)).even))), (((VECTOR(uint64_t, 2))(l_170.xx)).even , (((*l_173) = ((VECTOR(int64_t, 8))((-6L), p_489->g_10, 0x161DA0AB2DEA74B1L, (p_489->g_172 &= ((void*)0 != l_171)), p_489->g_70.f2, p_489->g_64, 0L, 6L)).s1) == 0xFFC17BC80E76C451L)), 0x5EB2L, (-1L), 0x6DE8L, (-1L), ((VECTOR(int16_t, 4))(0x5DECL)), ((VECTOR(int16_t, 2))(0x6C22L)), 0x725CL)).s5 > l_168.z) , 0x99ECL) , l_175)) , (void*)0)))) != (void*)0) != l_161.s3) && p_35)) && l_161.s9))) != p_35) == l_161.sd) , l_168.x) ^ p_489->g_10))), l_161.sf, 0x2C81C4ECL, 0L, 0x33B23CB6L, 1L)).hi == ((VECTOR(int32_t, 4))(2L))))), 1L, 9L, 0x22332C2AL)).s7041171636720127 && ((VECTOR(int32_t, 16))(1L))))).s3d, (int32_t)(*p_489->g_37)))).odd;
        (*l_57) ^= (p_36 && (safe_div_func_int16_t_s_s((FAKE_DIVERGE(p_489->group_1_offset, get_group_id(1), 10) , ((~((((p_489->g_209 = ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(p_489->g_186.xyxyyyyx)) && ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(0x48L, (-5L))).yyxyyyxx & ((VECTOR(int8_t, 2))(0x18L, 9L)).yxxxyxyx))).s47, (int8_t)(p_489->g_208 = (safe_add_func_int32_t_s_s(0x64AE3036L, (safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(0x18L, ((((VECTOR(uint16_t, 8))(l_191.s46317246)).s4 , l_192[2][1][6]) != &p_489->g_71), (0x36L > (p_34 != ((**l_148) = (***l_149)))), ((VECTOR(uint8_t, 2))(0x5CL, 0x68L)), 1UL, 0x6AL, 3UL)).s3, (((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 2))((+((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 2))(0x2006AEBFF18D2C75L, 0x425D969002E63217L)), ((VECTOR(uint64_t, 8))(l_197.xxxyyxxy)).s53, ((VECTOR(uint64_t, 4))(p_489->g_198.s1540)).lo)))))).yxxyxyyy, ((VECTOR(uint64_t, 2))(6UL, 0x42438CE79D492683L)).yxxxxyxx, ((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 8))(p_489->g_199.s10755554)).s23, ((VECTOR(uint32_t, 2))(1UL, 0UL))))).xyxxyxyy))).odd + ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(abs(((VECTOR(int64_t, 8))(l_204.zwwwwxzx)).s2753666705547010))) + ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_205.s90)), 0x9B7E73054497D976L, ((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 2))(0x2B7B236801FAD3C5L, 0UL)).yyxx, ((VECTOR(uint64_t, 4))(((GROUP_DIVERGE(0, 1) , (p_489->g_186.x ^= (p_489->g_50[3] |= p_36))) > p_35), ((VECTOR(uint64_t, 2))(0xB886E6CA25EC3FAAL)), 0xD2B0E516BA491E4CL))))), 4UL)).s0571301510232636))).s4b43 + ((VECTOR(uint64_t, 4))(0x71930937FBBC769EL)))))))), ((VECTOR(uint64_t, 4))(0x3F1A1F52BABF6958L)))) * ((VECTOR(uint64_t, 8))(18446744073709551613UL))))).s2445734213665622))).sa & l_207))))))))).xyxy, ((VECTOR(int8_t, 4))(1L))))).zwzzxzxx))) && ((VECTOR(int8_t, 8))(1L))))).s4603754745551065 | ((VECTOR(int8_t, 16))(0x77L))))), ((VECTOR(int8_t, 16))(0x40L)), ((VECTOR(int8_t, 16))(0L))))) > ((VECTOR(int8_t, 16))(1L))))).s4) | p_36) && p_36) , p_489->g_138.f4)) < GROUP_DIVERGE(0, 1))), (-5L))));
    }
    else
    { /* block id: 65 */
        int32_t l_227 = (-1L);
        if (p_489->g_138.f4)
            goto lbl_210;
        if (p_489->g_172)
            goto lbl_160;
        for (p_489->g_138.f4 = 0; (p_489->g_138.f4 <= (-20)); p_489->g_138.f4 = safe_sub_func_uint8_t_u_u(p_489->g_138.f4, 1))
        { /* block id: 70 */
            uint16_t *l_215 = &l_159;
            VECTOR(int64_t, 4) l_221 = (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x6C54CD77756C69EDL), 0x6C54CD77756C69EDL);
            uint16_t *l_225 = (void*)0;
            uint16_t *l_226 = &p_489->g_45;
            int16_t *l_228 = &p_489->g_209;
            int i;
            (**l_148) = (**p_489->g_71);
            p_489->g_229.s4 &= ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(p_489->g_213.s03)).xyyx, ((VECTOR(int32_t, 4))(p_489->g_214.sa8b2)), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((!((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))((-4L), 1L)).xyyxyxxx))).s56))) && ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(((*p_489->g_37) = ((***p_489->g_71) , (((*l_228) = ((((*l_215) = p_36) | (((safe_sub_func_int8_t_s_s((((VECTOR(uint8_t, 16))(((((((VECTOR(int8_t, 2))(0x2DL, 0x61L)).lo , (((*l_226) = (((-1L) || ((p_489->g_120.y || ((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(l_218.s2055227743053567)).s19 && ((VECTOR(int64_t, 2))(0x375F4EF1C2AC4045L, (-1L)))))).xxyxyyxxxyyyxyyy, ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 4))(l_219.yxyx)).odd, ((VECTOR(int64_t, 8))(l_220.yxyxyyyx)).s63))).xxyx, ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 2))(7L, 3L)).yxxyxyyx, ((VECTOR(int64_t, 16))(l_221.zwzxwyxywzxwywxz)).lo))).odd))).wxwxyyxw > ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 8))((-5L), 0L, (-2L), (p_36 == (((~(0xED22EAF4L && (safe_mul_func_int16_t_s_s(((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(((1UL > p_489->g_38) != ((l_224 > p_35) , (***p_489->g_71))), ((VECTOR(int8_t, 2))(0L)), 0x3EL)).odd && ((VECTOR(int8_t, 2))(0L))))).odd >= l_221.y) >= p_489->g_208), p_489->g_85[2])))) || p_35) && FAKE_DIVERGE(p_489->group_2_offset, get_group_id(2), 10))), 0x28C9D4E104320FEFL, p_489->g_120.x, 1L, 0x603086386802A82EL)).lo, ((VECTOR(int64_t, 4))(1L))))).yzwyyxyw))).odd, ((VECTOR(int64_t, 4))(1L))))).yzyzywwyxwxywwzw)))))).s5f, (int64_t)p_489->g_85[3]))).xxxy >= ((VECTOR(int64_t, 4))(0x4DD96B38B31F9E2EL))))).wzwzwxzxzzyyxwyy, ((VECTOR(int64_t, 16))(0x7F86269F678E49E4L))))))))))).s5b ^ ((VECTOR(int64_t, 2))(4L))))).yyyxxyxx, ((VECTOR(int64_t, 8))(0x743318F5E2BB6A2AL))))).s3434157673602124, ((VECTOR(int64_t, 16))(0x6DD9175AB73C1A89L))))), ((VECTOR(int64_t, 16))((-2L)))))).hi, (int64_t)p_489->g_70.f1))).s1) ^ p_489->g_172)) , p_489->g_172)) && p_36)) & p_35) | 4294967295UL) >= (**p_489->g_72)), 6UL, ((VECTOR(uint8_t, 2))(0x54L)), ((VECTOR(uint8_t, 2))(2UL)), ((VECTOR(uint8_t, 2))(255UL)), p_489->g_85[3], l_221.y, ((VECTOR(uint8_t, 2))(253UL)), FAKE_DIVERGE(p_489->global_2_offset, get_global_id(2), 10), ((VECTOR(uint8_t, 2))(0xAEL)), 7UL)).s2 & 3L), l_227)) & l_227) , (-1L))) & FAKE_DIVERGE(p_489->group_0_offset, get_group_id(0), 10))) <= p_489->g_10))), ((VECTOR(int32_t, 4))((-7L))), 4L, (-5L), (-3L))).s1641556334437672 & ((VECTOR(int32_t, 16))(0L))))).se99a))), 4L, ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 8))(1L)), (-6L))).s9c))).yyyy))).y;
            for (p_489->g_38 = 0; (p_489->g_38 <= 0); p_489->g_38 = safe_add_func_uint64_t_u_u(p_489->g_38, 1))
            { /* block id: 79 */
                struct S3 *l_233 = &p_489->g_234;
                struct S3 **l_232 = &l_233;
                (*l_232) = (void*)0;
            }
            (****l_149) = l_227;
        }
    }
    return (***l_149);
}


/* ------------------------------------------ */
/* 
 * reads : p_489->g_67
 * writes:
 */
int32_t ** func_51(uint16_t * p_52, int64_t  p_53, int32_t * p_54, struct S4 * p_489)
{ /* block id: 17 */
    struct S0 *l_69 = &p_489->g_70;
    l_69 = p_489->g_67;
    return &p_489->g_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_489->g_64
 * writes: p_489->g_64
 */
int32_t * func_55(int32_t * p_56, struct S4 * p_489)
{ /* block id: 13 */
    int32_t *l_58[7];
    int8_t l_59 = 1L;
    int32_t l_60 = 0x4164D14CL;
    uint32_t l_61 = 1UL;
    int i;
    for (i = 0; i < 7; i++)
        l_58[i] = (void*)0;
    l_61--;
    p_489->g_64++;
    return &p_489->g_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_489->g_71 p_489->g_72 p_489->g_37 p_489->g_38 p_489->g_109 p_489->g_50 p_489->g_120 p_489->g_70.f5 p_489->g_70.f1 p_489->g_70.f3 p_489->g_70.f2
 * writes: p_489->g_126 p_489->g_38 p_489->g_37
 */
struct S0  func_75(int32_t  p_76, uint16_t * p_77, uint32_t  p_78, struct S4 * p_489)
{ /* block id: 28 */
    VECTOR(uint8_t, 4) l_98 = (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 1UL), 1UL);
    VECTOR(uint8_t, 4) l_99 = (VECTOR(uint8_t, 4))(0xFFL, (VECTOR(uint8_t, 2))(0xFFL, 0UL), 0UL);
    VECTOR(uint64_t, 16) l_121 = (VECTOR(uint64_t, 16))(0xF9EFA0E0CC22E4BCL, (VECTOR(uint64_t, 4))(0xF9EFA0E0CC22E4BCL, (VECTOR(uint64_t, 2))(0xF9EFA0E0CC22E4BCL, 0x14C7E2165FCA2CADL), 0x14C7E2165FCA2CADL), 0x14C7E2165FCA2CADL, 0xF9EFA0E0CC22E4BCL, 0x14C7E2165FCA2CADL, (VECTOR(uint64_t, 2))(0xF9EFA0E0CC22E4BCL, 0x14C7E2165FCA2CADL), (VECTOR(uint64_t, 2))(0xF9EFA0E0CC22E4BCL, 0x14C7E2165FCA2CADL), 0xF9EFA0E0CC22E4BCL, 0x14C7E2165FCA2CADL, 0xF9EFA0E0CC22E4BCL, 0x14C7E2165FCA2CADL);
    struct S0 **l_124[7][6][6] = {{{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0}},{{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0}},{{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0}},{{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0}},{{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0}},{{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0}},{{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0},{&p_489->g_67,&p_489->g_67,(void*)0,(void*)0,&p_489->g_67,(void*)0}}};
    struct S0 ***l_125 = &l_124[1][2][5];
    struct S0 **l_127 = (void*)0;
    int32_t l_130[7][3] = {{0L,0x6E6AAC49L,0x654A6601L},{0L,0x6E6AAC49L,0x654A6601L},{0L,0x6E6AAC49L,0x654A6601L},{0L,0x6E6AAC49L,0x654A6601L},{0L,0x6E6AAC49L,0x654A6601L},{0L,0x6E6AAC49L,0x654A6601L},{0L,0x6E6AAC49L,0x654A6601L}};
    uint32_t l_131 = 0x6DFF3C42L;
    uint8_t *l_132 = (void*)0;
    uint8_t *l_133 = (void*)0;
    int32_t l_134 = (-6L);
    struct S0 l_135 = {1L,0x4082C06C68AEAC46L,0x32A51B15L,0x7E67BAFFL,8L,5UL,0x500FD4B72C140705L};
    int i, j, k;
    (**p_489->g_72) = (safe_div_func_int32_t_s_s((***p_489->g_71), (+(safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 16))(l_98.wyyzywzywxywwyzy)).s6ec0, ((VECTOR(uint8_t, 16))(5UL, ((VECTOR(uint8_t, 8))(l_99.xyzwxwwx)), ((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 2))(0UL, 0xB3L)).yyyx, ((VECTOR(uint8_t, 2))(0x62L, 254UL)).xyyy))), (l_134 = ((safe_mul_func_int16_t_s_s((safe_unary_minus_func_int8_t_s((((safe_mul_func_uint8_t_u_u(((GROUP_DIVERGE(1, 1) && (safe_lshift_func_int8_t_s_u((safe_mod_func_int8_t_s_s(((((VECTOR(uint64_t, 16))(p_489->g_109.yywzxywyzyyxyyww)).sd == (p_76 | (((p_489->g_50[3] != 7L) & (safe_add_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s(0x3D98L, (safe_div_func_uint32_t_u_u((((safe_mod_func_int16_t_s_s((((l_130[0][1] = (((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(p_489->g_120.xyxy)).zyxxwzwyxxwzzwww + ((VECTOR(uint64_t, 2))(l_121.s0f)).xxyyxyyyxxxxxxyy))).s5 || ((((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),uint32_t,((VECTOR(uint32_t, 2))(2UL, 0x7E36A8F3L)).yxxyxxyxxxyyyyxy, (uint32_t)(safe_sub_func_uint8_t_u_u(((p_489->g_126 = ((*l_125) = l_124[0][4][4])) != l_127), ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))((safe_mod_func_uint32_t_u_u((~(p_76 ^ l_99.y)), (**p_489->g_72))), ((VECTOR(uint8_t, 8))(0xA0L)), 0xB5L, 1UL, 0xE0L, 0xCDL, p_489->g_70.f5, 255UL, 0xA7L)).s59b8, ((VECTOR(uint8_t, 4))(255UL))))).y)), (uint32_t)1UL))).s1 , p_489->g_70.f1) || l_121.sf))) , p_76) ^ p_489->g_120.y), 0xACA0L)) & p_489->g_50[0]) && 0xBCB459AD7A1A6E00L), p_78)))) , l_98.x), l_98.y))) <= FAKE_DIVERGE(p_489->global_0_offset, get_global_id(0), 10)))) , 0L), p_489->g_70.f3)), l_121.s0))) && FAKE_DIVERGE(p_489->group_0_offset, get_group_id(0), 10)), 1UL)) == 0UL) || l_131))), l_99.w)) , 0x80L)), 0x66L, 0UL)).sdf31, ((VECTOR(uint8_t, 4))(1UL))))).y, p_489->g_70.f2)))));
    (*p_489->g_72) = &l_130[6][0];
    return l_135;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S4 c_490;
    struct S4* p_489 = &c_490;
    struct S4 c_491 = {
        0xB051AF7F3E76E5B1L, // p_489->g_10
        0L, // p_489->g_38
        &p_489->g_38, // p_489->g_37
        1UL, // p_489->g_45
        {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)}, // p_489->g_50
        0xECC1L, // p_489->g_64
        (void*)0, // p_489->g_67
        (void*)0, // p_489->g_68
        {0x7A14F829L,0x194516193E9ABA4AL,0x62F045C7L,4294967295UL,1L,0x56AD515890591050L,0UL}, // p_489->g_70
        &p_489->g_37, // p_489->g_72
        &p_489->g_72, // p_489->g_71
        0x20F5L, // p_489->g_83
        {0x92L,0x92L,0x92L,0x92L,0x92L,0x92L,0x92L}, // p_489->g_85
        (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0xDF9DF524304B69D3L), 0xDF9DF524304B69D3L), // p_489->g_109
        (VECTOR(uint64_t, 2))(0xFFC656B39C3AD06FL, 2UL), // p_489->g_120
        &p_489->g_67, // p_489->g_126
        {0x1DCD0C39L,1L,1L,8UL,0L,18446744073709551615UL,1UL}, // p_489->g_138
        (VECTOR(int16_t, 2))(0x0912L, 1L), // p_489->g_169
        0xCFC64E1DL, // p_489->g_172
        0x4574D665B7CE1603L, // p_489->g_174
        (VECTOR(int8_t, 2))(0x69L, 7L), // p_489->g_186
        (VECTOR(uint64_t, 8))(0x956F44BDACFC9155L, (VECTOR(uint64_t, 4))(0x956F44BDACFC9155L, (VECTOR(uint64_t, 2))(0x956F44BDACFC9155L, 0xA5CC4849572ABC80L), 0xA5CC4849572ABC80L), 0xA5CC4849572ABC80L, 0x956F44BDACFC9155L, 0xA5CC4849572ABC80L), // p_489->g_198
        (VECTOR(uint32_t, 8))(0xAFAFC6B1L, (VECTOR(uint32_t, 4))(0xAFAFC6B1L, (VECTOR(uint32_t, 2))(0xAFAFC6B1L, 1UL), 1UL), 1UL, 0xAFAFC6B1L, 1UL), // p_489->g_199
        0x2100304D74A20B93L, // p_489->g_208
        0L, // p_489->g_209
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x3BB5358FL), 0x3BB5358FL), 0x3BB5358FL, 0L, 0x3BB5358FL, (VECTOR(int32_t, 2))(0L, 0x3BB5358FL), (VECTOR(int32_t, 2))(0L, 0x3BB5358FL), 0L, 0x3BB5358FL, 0L, 0x3BB5358FL), // p_489->g_213
        (VECTOR(int32_t, 16))(0x6F87003EL, (VECTOR(int32_t, 4))(0x6F87003EL, (VECTOR(int32_t, 2))(0x6F87003EL, 0x35331CA1L), 0x35331CA1L), 0x35331CA1L, 0x6F87003EL, 0x35331CA1L, (VECTOR(int32_t, 2))(0x6F87003EL, 0x35331CA1L), (VECTOR(int32_t, 2))(0x6F87003EL, 0x35331CA1L), 0x6F87003EL, 0x35331CA1L, 0x6F87003EL, 0x35331CA1L), // p_489->g_214
        (VECTOR(uint16_t, 8))(0xFEE8L, (VECTOR(uint16_t, 4))(0xFEE8L, (VECTOR(uint16_t, 2))(0xFEE8L, 0xDD8FL), 0xDD8FL), 0xDD8FL, 0xFEE8L, 0xDD8FL), // p_489->g_229
        {9UL,0xEE94L,-1L,0x3B84L,18446744073709551609UL,0x3F8062F8696A82E2L}, // p_489->g_234
        {18446744073709551615UL,65534UL,4L,0x2850L,18446744073709551610UL,2L}, // p_489->g_236
        &p_489->g_38, // p_489->g_245
        &p_489->g_72, // p_489->g_256
        &p_489->g_256, // p_489->g_255
        &p_489->g_255, // p_489->g_254
        {0x77E1FF0450EE63D0L,0xBD23L,0x6F21DA734F60C505L,0xFC3EL,0x4CC09B524075B9BCL,-2L}, // p_489->g_288
        (VECTOR(uint64_t, 4))(0xC4E586949954C030L, (VECTOR(uint64_t, 2))(0xC4E586949954C030L, 0xEFFD0515591BA20AL), 0xEFFD0515591BA20AL), // p_489->g_293
        (VECTOR(uint32_t, 2))(0x44AD5A3CL, 0x284EC5B8L), // p_489->g_296
        (VECTOR(uint32_t, 16))(0x3D110F9CL, (VECTOR(uint32_t, 4))(0x3D110F9CL, (VECTOR(uint32_t, 2))(0x3D110F9CL, 0UL), 0UL), 0UL, 0x3D110F9CL, 0UL, (VECTOR(uint32_t, 2))(0x3D110F9CL, 0UL), (VECTOR(uint32_t, 2))(0x3D110F9CL, 0UL), 0x3D110F9CL, 0UL, 0x3D110F9CL, 0UL), // p_489->g_300
        (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x22B49ACCL), 0x22B49ACCL), // p_489->g_304
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL), // p_489->g_307
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL), // p_489->g_308
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x456EE9DBL), 0x456EE9DBL), 0x456EE9DBL, 0UL, 0x456EE9DBL), // p_489->g_309
        (VECTOR(int8_t, 16))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0L), 0L), 0L, 4L, 0L, (VECTOR(int8_t, 2))(4L, 0L), (VECTOR(int8_t, 2))(4L, 0L), 4L, 0L, 4L, 0L), // p_489->g_335
        255UL, // p_489->g_349
        &p_489->g_349, // p_489->g_348
        &p_489->g_348, // p_489->g_347
        {{0x351A61F2432EC6BDL,-1L,0x89L,65527UL,0xD7L,0x2E3EBE48L},{0x351A61F2432EC6BDL,-1L,0x89L,65527UL,0xD7L,0x2E3EBE48L},{0x351A61F2432EC6BDL,-1L,0x89L,65527UL,0xD7L,0x2E3EBE48L}}, // p_489->g_350
        {0x637AD3B3413A022EL,0x637AD3B3413A022EL,0x637AD3B3413A022EL,0x637AD3B3413A022EL}, // p_489->g_362
        2UL, // p_489->g_363
        (VECTOR(uint16_t, 4))(0xC4DFL, (VECTOR(uint16_t, 2))(0xC4DFL, 0xFE82L), 0xFE82L), // p_489->g_382
        (VECTOR(int16_t, 4))(0x22FFL, (VECTOR(int16_t, 2))(0x22FFL, 0x693DL), 0x693DL), // p_489->g_384
        (VECTOR(int16_t, 16))(0x247FL, (VECTOR(int16_t, 4))(0x247FL, (VECTOR(int16_t, 2))(0x247FL, (-9L)), (-9L)), (-9L), 0x247FL, (-9L), (VECTOR(int16_t, 2))(0x247FL, (-9L)), (VECTOR(int16_t, 2))(0x247FL, (-9L)), 0x247FL, (-9L), 0x247FL, (-9L)), // p_489->g_388
        &p_489->g_234.f1, // p_489->g_399
        &p_489->g_399, // p_489->g_398
        (VECTOR(uint16_t, 2))(7UL, 1UL), // p_489->g_406
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-1L)), (-1L)), // p_489->g_411
        (VECTOR(uint16_t, 4))(0xAC8CL, (VECTOR(uint16_t, 2))(0xAC8CL, 0x6B8DL), 0x6B8DL), // p_489->g_413
        (VECTOR(int16_t, 8))(0x253DL, (VECTOR(int16_t, 4))(0x253DL, (VECTOR(int16_t, 2))(0x253DL, (-5L)), (-5L)), (-5L), 0x253DL, (-5L)), // p_489->g_414
        (VECTOR(uint16_t, 4))(0x549DL, (VECTOR(uint16_t, 2))(0x549DL, 7UL), 7UL), // p_489->g_415
        0x8C8DL, // p_489->g_416
        0x5F6E871AL, // p_489->g_431
        (VECTOR(int32_t, 2))(0x2234B32CL, 0x764745A2L), // p_489->g_441
        {{{-7L,0x7EL},{-7L,0x7EL},{-4L,8L},{0x57L,-2L}},{{-7L,0x7EL},{-7L,0x7EL},{-4L,8L},{0x57L,-2L}},{{-7L,0x7EL},{-7L,0x7EL},{-4L,8L},{0x57L,-2L}},{{-7L,0x7EL},{-7L,0x7EL},{-4L,8L},{0x57L,-2L}},{{-7L,0x7EL},{-7L,0x7EL},{-4L,8L},{0x57L,-2L}},{{-7L,0x7EL},{-7L,0x7EL},{-4L,8L},{0x57L,-2L}},{{-7L,0x7EL},{-7L,0x7EL},{-4L,8L},{0x57L,-2L}},{{-7L,0x7EL},{-7L,0x7EL},{-4L,8L},{0x57L,-2L}},{{-7L,0x7EL},{-7L,0x7EL},{-4L,8L},{0x57L,-2L}}}, // p_489->g_460
        &p_489->g_70.f1, // p_489->g_480
        sequence_input[get_global_id(0)], // p_489->global_0_offset
        sequence_input[get_global_id(1)], // p_489->global_1_offset
        sequence_input[get_global_id(2)], // p_489->global_2_offset
        sequence_input[get_local_id(0)], // p_489->local_0_offset
        sequence_input[get_local_id(1)], // p_489->local_1_offset
        sequence_input[get_local_id(2)], // p_489->local_2_offset
        sequence_input[get_group_id(0)], // p_489->group_0_offset
        sequence_input[get_group_id(1)], // p_489->group_1_offset
        sequence_input[get_group_id(2)], // p_489->group_2_offset
    };
    c_490 = c_491;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_489);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_489->g_10, "p_489->g_10", print_hash_value);
    transparent_crc(p_489->g_38, "p_489->g_38", print_hash_value);
    transparent_crc(p_489->g_45, "p_489->g_45", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_489->g_50[i], "p_489->g_50[i]", print_hash_value);

    }
    transparent_crc(p_489->g_64, "p_489->g_64", print_hash_value);
    transparent_crc(p_489->g_70.f0, "p_489->g_70.f0", print_hash_value);
    transparent_crc(p_489->g_70.f1, "p_489->g_70.f1", print_hash_value);
    transparent_crc(p_489->g_70.f2, "p_489->g_70.f2", print_hash_value);
    transparent_crc(p_489->g_70.f3, "p_489->g_70.f3", print_hash_value);
    transparent_crc(p_489->g_70.f4, "p_489->g_70.f4", print_hash_value);
    transparent_crc(p_489->g_70.f5, "p_489->g_70.f5", print_hash_value);
    transparent_crc(p_489->g_70.f6, "p_489->g_70.f6", print_hash_value);
    transparent_crc(p_489->g_83, "p_489->g_83", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_489->g_85[i], "p_489->g_85[i]", print_hash_value);

    }
    transparent_crc(p_489->g_109.x, "p_489->g_109.x", print_hash_value);
    transparent_crc(p_489->g_109.y, "p_489->g_109.y", print_hash_value);
    transparent_crc(p_489->g_109.z, "p_489->g_109.z", print_hash_value);
    transparent_crc(p_489->g_109.w, "p_489->g_109.w", print_hash_value);
    transparent_crc(p_489->g_120.x, "p_489->g_120.x", print_hash_value);
    transparent_crc(p_489->g_120.y, "p_489->g_120.y", print_hash_value);
    transparent_crc(p_489->g_138.f0, "p_489->g_138.f0", print_hash_value);
    transparent_crc(p_489->g_138.f1, "p_489->g_138.f1", print_hash_value);
    transparent_crc(p_489->g_138.f2, "p_489->g_138.f2", print_hash_value);
    transparent_crc(p_489->g_138.f3, "p_489->g_138.f3", print_hash_value);
    transparent_crc(p_489->g_138.f4, "p_489->g_138.f4", print_hash_value);
    transparent_crc(p_489->g_138.f5, "p_489->g_138.f5", print_hash_value);
    transparent_crc(p_489->g_138.f6, "p_489->g_138.f6", print_hash_value);
    transparent_crc(p_489->g_169.x, "p_489->g_169.x", print_hash_value);
    transparent_crc(p_489->g_169.y, "p_489->g_169.y", print_hash_value);
    transparent_crc(p_489->g_172, "p_489->g_172", print_hash_value);
    transparent_crc(p_489->g_174, "p_489->g_174", print_hash_value);
    transparent_crc(p_489->g_186.x, "p_489->g_186.x", print_hash_value);
    transparent_crc(p_489->g_186.y, "p_489->g_186.y", print_hash_value);
    transparent_crc(p_489->g_198.s0, "p_489->g_198.s0", print_hash_value);
    transparent_crc(p_489->g_198.s1, "p_489->g_198.s1", print_hash_value);
    transparent_crc(p_489->g_198.s2, "p_489->g_198.s2", print_hash_value);
    transparent_crc(p_489->g_198.s3, "p_489->g_198.s3", print_hash_value);
    transparent_crc(p_489->g_198.s4, "p_489->g_198.s4", print_hash_value);
    transparent_crc(p_489->g_198.s5, "p_489->g_198.s5", print_hash_value);
    transparent_crc(p_489->g_198.s6, "p_489->g_198.s6", print_hash_value);
    transparent_crc(p_489->g_198.s7, "p_489->g_198.s7", print_hash_value);
    transparent_crc(p_489->g_199.s0, "p_489->g_199.s0", print_hash_value);
    transparent_crc(p_489->g_199.s1, "p_489->g_199.s1", print_hash_value);
    transparent_crc(p_489->g_199.s2, "p_489->g_199.s2", print_hash_value);
    transparent_crc(p_489->g_199.s3, "p_489->g_199.s3", print_hash_value);
    transparent_crc(p_489->g_199.s4, "p_489->g_199.s4", print_hash_value);
    transparent_crc(p_489->g_199.s5, "p_489->g_199.s5", print_hash_value);
    transparent_crc(p_489->g_199.s6, "p_489->g_199.s6", print_hash_value);
    transparent_crc(p_489->g_199.s7, "p_489->g_199.s7", print_hash_value);
    transparent_crc(p_489->g_208, "p_489->g_208", print_hash_value);
    transparent_crc(p_489->g_209, "p_489->g_209", print_hash_value);
    transparent_crc(p_489->g_213.s0, "p_489->g_213.s0", print_hash_value);
    transparent_crc(p_489->g_213.s1, "p_489->g_213.s1", print_hash_value);
    transparent_crc(p_489->g_213.s2, "p_489->g_213.s2", print_hash_value);
    transparent_crc(p_489->g_213.s3, "p_489->g_213.s3", print_hash_value);
    transparent_crc(p_489->g_213.s4, "p_489->g_213.s4", print_hash_value);
    transparent_crc(p_489->g_213.s5, "p_489->g_213.s5", print_hash_value);
    transparent_crc(p_489->g_213.s6, "p_489->g_213.s6", print_hash_value);
    transparent_crc(p_489->g_213.s7, "p_489->g_213.s7", print_hash_value);
    transparent_crc(p_489->g_213.s8, "p_489->g_213.s8", print_hash_value);
    transparent_crc(p_489->g_213.s9, "p_489->g_213.s9", print_hash_value);
    transparent_crc(p_489->g_213.sa, "p_489->g_213.sa", print_hash_value);
    transparent_crc(p_489->g_213.sb, "p_489->g_213.sb", print_hash_value);
    transparent_crc(p_489->g_213.sc, "p_489->g_213.sc", print_hash_value);
    transparent_crc(p_489->g_213.sd, "p_489->g_213.sd", print_hash_value);
    transparent_crc(p_489->g_213.se, "p_489->g_213.se", print_hash_value);
    transparent_crc(p_489->g_213.sf, "p_489->g_213.sf", print_hash_value);
    transparent_crc(p_489->g_214.s0, "p_489->g_214.s0", print_hash_value);
    transparent_crc(p_489->g_214.s1, "p_489->g_214.s1", print_hash_value);
    transparent_crc(p_489->g_214.s2, "p_489->g_214.s2", print_hash_value);
    transparent_crc(p_489->g_214.s3, "p_489->g_214.s3", print_hash_value);
    transparent_crc(p_489->g_214.s4, "p_489->g_214.s4", print_hash_value);
    transparent_crc(p_489->g_214.s5, "p_489->g_214.s5", print_hash_value);
    transparent_crc(p_489->g_214.s6, "p_489->g_214.s6", print_hash_value);
    transparent_crc(p_489->g_214.s7, "p_489->g_214.s7", print_hash_value);
    transparent_crc(p_489->g_214.s8, "p_489->g_214.s8", print_hash_value);
    transparent_crc(p_489->g_214.s9, "p_489->g_214.s9", print_hash_value);
    transparent_crc(p_489->g_214.sa, "p_489->g_214.sa", print_hash_value);
    transparent_crc(p_489->g_214.sb, "p_489->g_214.sb", print_hash_value);
    transparent_crc(p_489->g_214.sc, "p_489->g_214.sc", print_hash_value);
    transparent_crc(p_489->g_214.sd, "p_489->g_214.sd", print_hash_value);
    transparent_crc(p_489->g_214.se, "p_489->g_214.se", print_hash_value);
    transparent_crc(p_489->g_214.sf, "p_489->g_214.sf", print_hash_value);
    transparent_crc(p_489->g_229.s0, "p_489->g_229.s0", print_hash_value);
    transparent_crc(p_489->g_229.s1, "p_489->g_229.s1", print_hash_value);
    transparent_crc(p_489->g_229.s2, "p_489->g_229.s2", print_hash_value);
    transparent_crc(p_489->g_229.s3, "p_489->g_229.s3", print_hash_value);
    transparent_crc(p_489->g_229.s4, "p_489->g_229.s4", print_hash_value);
    transparent_crc(p_489->g_229.s5, "p_489->g_229.s5", print_hash_value);
    transparent_crc(p_489->g_229.s6, "p_489->g_229.s6", print_hash_value);
    transparent_crc(p_489->g_229.s7, "p_489->g_229.s7", print_hash_value);
    transparent_crc(p_489->g_234.f0, "p_489->g_234.f0", print_hash_value);
    transparent_crc(p_489->g_234.f1, "p_489->g_234.f1", print_hash_value);
    transparent_crc(p_489->g_234.f2, "p_489->g_234.f2", print_hash_value);
    transparent_crc(p_489->g_234.f3, "p_489->g_234.f3", print_hash_value);
    transparent_crc(p_489->g_234.f4, "p_489->g_234.f4", print_hash_value);
    transparent_crc(p_489->g_234.f5, "p_489->g_234.f5", print_hash_value);
    transparent_crc(p_489->g_236.f0, "p_489->g_236.f0", print_hash_value);
    transparent_crc(p_489->g_236.f1, "p_489->g_236.f1", print_hash_value);
    transparent_crc(p_489->g_236.f2, "p_489->g_236.f2", print_hash_value);
    transparent_crc(p_489->g_236.f3, "p_489->g_236.f3", print_hash_value);
    transparent_crc(p_489->g_236.f4, "p_489->g_236.f4", print_hash_value);
    transparent_crc(p_489->g_236.f5, "p_489->g_236.f5", print_hash_value);
    transparent_crc(p_489->g_288.f0, "p_489->g_288.f0", print_hash_value);
    transparent_crc(p_489->g_288.f1, "p_489->g_288.f1", print_hash_value);
    transparent_crc(p_489->g_288.f2, "p_489->g_288.f2", print_hash_value);
    transparent_crc(p_489->g_288.f3, "p_489->g_288.f3", print_hash_value);
    transparent_crc(p_489->g_288.f4, "p_489->g_288.f4", print_hash_value);
    transparent_crc(p_489->g_288.f5, "p_489->g_288.f5", print_hash_value);
    transparent_crc(p_489->g_293.x, "p_489->g_293.x", print_hash_value);
    transparent_crc(p_489->g_293.y, "p_489->g_293.y", print_hash_value);
    transparent_crc(p_489->g_293.z, "p_489->g_293.z", print_hash_value);
    transparent_crc(p_489->g_293.w, "p_489->g_293.w", print_hash_value);
    transparent_crc(p_489->g_296.x, "p_489->g_296.x", print_hash_value);
    transparent_crc(p_489->g_296.y, "p_489->g_296.y", print_hash_value);
    transparent_crc(p_489->g_300.s0, "p_489->g_300.s0", print_hash_value);
    transparent_crc(p_489->g_300.s1, "p_489->g_300.s1", print_hash_value);
    transparent_crc(p_489->g_300.s2, "p_489->g_300.s2", print_hash_value);
    transparent_crc(p_489->g_300.s3, "p_489->g_300.s3", print_hash_value);
    transparent_crc(p_489->g_300.s4, "p_489->g_300.s4", print_hash_value);
    transparent_crc(p_489->g_300.s5, "p_489->g_300.s5", print_hash_value);
    transparent_crc(p_489->g_300.s6, "p_489->g_300.s6", print_hash_value);
    transparent_crc(p_489->g_300.s7, "p_489->g_300.s7", print_hash_value);
    transparent_crc(p_489->g_300.s8, "p_489->g_300.s8", print_hash_value);
    transparent_crc(p_489->g_300.s9, "p_489->g_300.s9", print_hash_value);
    transparent_crc(p_489->g_300.sa, "p_489->g_300.sa", print_hash_value);
    transparent_crc(p_489->g_300.sb, "p_489->g_300.sb", print_hash_value);
    transparent_crc(p_489->g_300.sc, "p_489->g_300.sc", print_hash_value);
    transparent_crc(p_489->g_300.sd, "p_489->g_300.sd", print_hash_value);
    transparent_crc(p_489->g_300.se, "p_489->g_300.se", print_hash_value);
    transparent_crc(p_489->g_300.sf, "p_489->g_300.sf", print_hash_value);
    transparent_crc(p_489->g_304.x, "p_489->g_304.x", print_hash_value);
    transparent_crc(p_489->g_304.y, "p_489->g_304.y", print_hash_value);
    transparent_crc(p_489->g_304.z, "p_489->g_304.z", print_hash_value);
    transparent_crc(p_489->g_304.w, "p_489->g_304.w", print_hash_value);
    transparent_crc(p_489->g_307.s0, "p_489->g_307.s0", print_hash_value);
    transparent_crc(p_489->g_307.s1, "p_489->g_307.s1", print_hash_value);
    transparent_crc(p_489->g_307.s2, "p_489->g_307.s2", print_hash_value);
    transparent_crc(p_489->g_307.s3, "p_489->g_307.s3", print_hash_value);
    transparent_crc(p_489->g_307.s4, "p_489->g_307.s4", print_hash_value);
    transparent_crc(p_489->g_307.s5, "p_489->g_307.s5", print_hash_value);
    transparent_crc(p_489->g_307.s6, "p_489->g_307.s6", print_hash_value);
    transparent_crc(p_489->g_307.s7, "p_489->g_307.s7", print_hash_value);
    transparent_crc(p_489->g_308.s0, "p_489->g_308.s0", print_hash_value);
    transparent_crc(p_489->g_308.s1, "p_489->g_308.s1", print_hash_value);
    transparent_crc(p_489->g_308.s2, "p_489->g_308.s2", print_hash_value);
    transparent_crc(p_489->g_308.s3, "p_489->g_308.s3", print_hash_value);
    transparent_crc(p_489->g_308.s4, "p_489->g_308.s4", print_hash_value);
    transparent_crc(p_489->g_308.s5, "p_489->g_308.s5", print_hash_value);
    transparent_crc(p_489->g_308.s6, "p_489->g_308.s6", print_hash_value);
    transparent_crc(p_489->g_308.s7, "p_489->g_308.s7", print_hash_value);
    transparent_crc(p_489->g_308.s8, "p_489->g_308.s8", print_hash_value);
    transparent_crc(p_489->g_308.s9, "p_489->g_308.s9", print_hash_value);
    transparent_crc(p_489->g_308.sa, "p_489->g_308.sa", print_hash_value);
    transparent_crc(p_489->g_308.sb, "p_489->g_308.sb", print_hash_value);
    transparent_crc(p_489->g_308.sc, "p_489->g_308.sc", print_hash_value);
    transparent_crc(p_489->g_308.sd, "p_489->g_308.sd", print_hash_value);
    transparent_crc(p_489->g_308.se, "p_489->g_308.se", print_hash_value);
    transparent_crc(p_489->g_308.sf, "p_489->g_308.sf", print_hash_value);
    transparent_crc(p_489->g_309.s0, "p_489->g_309.s0", print_hash_value);
    transparent_crc(p_489->g_309.s1, "p_489->g_309.s1", print_hash_value);
    transparent_crc(p_489->g_309.s2, "p_489->g_309.s2", print_hash_value);
    transparent_crc(p_489->g_309.s3, "p_489->g_309.s3", print_hash_value);
    transparent_crc(p_489->g_309.s4, "p_489->g_309.s4", print_hash_value);
    transparent_crc(p_489->g_309.s5, "p_489->g_309.s5", print_hash_value);
    transparent_crc(p_489->g_309.s6, "p_489->g_309.s6", print_hash_value);
    transparent_crc(p_489->g_309.s7, "p_489->g_309.s7", print_hash_value);
    transparent_crc(p_489->g_335.s0, "p_489->g_335.s0", print_hash_value);
    transparent_crc(p_489->g_335.s1, "p_489->g_335.s1", print_hash_value);
    transparent_crc(p_489->g_335.s2, "p_489->g_335.s2", print_hash_value);
    transparent_crc(p_489->g_335.s3, "p_489->g_335.s3", print_hash_value);
    transparent_crc(p_489->g_335.s4, "p_489->g_335.s4", print_hash_value);
    transparent_crc(p_489->g_335.s5, "p_489->g_335.s5", print_hash_value);
    transparent_crc(p_489->g_335.s6, "p_489->g_335.s6", print_hash_value);
    transparent_crc(p_489->g_335.s7, "p_489->g_335.s7", print_hash_value);
    transparent_crc(p_489->g_335.s8, "p_489->g_335.s8", print_hash_value);
    transparent_crc(p_489->g_335.s9, "p_489->g_335.s9", print_hash_value);
    transparent_crc(p_489->g_335.sa, "p_489->g_335.sa", print_hash_value);
    transparent_crc(p_489->g_335.sb, "p_489->g_335.sb", print_hash_value);
    transparent_crc(p_489->g_335.sc, "p_489->g_335.sc", print_hash_value);
    transparent_crc(p_489->g_335.sd, "p_489->g_335.sd", print_hash_value);
    transparent_crc(p_489->g_335.se, "p_489->g_335.se", print_hash_value);
    transparent_crc(p_489->g_335.sf, "p_489->g_335.sf", print_hash_value);
    transparent_crc(p_489->g_349, "p_489->g_349", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_489->g_350[i].f0, "p_489->g_350[i].f0", print_hash_value);
        transparent_crc(p_489->g_350[i].f1, "p_489->g_350[i].f1", print_hash_value);
        transparent_crc(p_489->g_350[i].f2, "p_489->g_350[i].f2", print_hash_value);
        transparent_crc(p_489->g_350[i].f3, "p_489->g_350[i].f3", print_hash_value);
        transparent_crc(p_489->g_350[i].f4, "p_489->g_350[i].f4", print_hash_value);
        transparent_crc(p_489->g_350[i].f5, "p_489->g_350[i].f5", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_489->g_362[i], "p_489->g_362[i]", print_hash_value);

    }
    transparent_crc(p_489->g_363, "p_489->g_363", print_hash_value);
    transparent_crc(p_489->g_382.x, "p_489->g_382.x", print_hash_value);
    transparent_crc(p_489->g_382.y, "p_489->g_382.y", print_hash_value);
    transparent_crc(p_489->g_382.z, "p_489->g_382.z", print_hash_value);
    transparent_crc(p_489->g_382.w, "p_489->g_382.w", print_hash_value);
    transparent_crc(p_489->g_384.x, "p_489->g_384.x", print_hash_value);
    transparent_crc(p_489->g_384.y, "p_489->g_384.y", print_hash_value);
    transparent_crc(p_489->g_384.z, "p_489->g_384.z", print_hash_value);
    transparent_crc(p_489->g_384.w, "p_489->g_384.w", print_hash_value);
    transparent_crc(p_489->g_388.s0, "p_489->g_388.s0", print_hash_value);
    transparent_crc(p_489->g_388.s1, "p_489->g_388.s1", print_hash_value);
    transparent_crc(p_489->g_388.s2, "p_489->g_388.s2", print_hash_value);
    transparent_crc(p_489->g_388.s3, "p_489->g_388.s3", print_hash_value);
    transparent_crc(p_489->g_388.s4, "p_489->g_388.s4", print_hash_value);
    transparent_crc(p_489->g_388.s5, "p_489->g_388.s5", print_hash_value);
    transparent_crc(p_489->g_388.s6, "p_489->g_388.s6", print_hash_value);
    transparent_crc(p_489->g_388.s7, "p_489->g_388.s7", print_hash_value);
    transparent_crc(p_489->g_388.s8, "p_489->g_388.s8", print_hash_value);
    transparent_crc(p_489->g_388.s9, "p_489->g_388.s9", print_hash_value);
    transparent_crc(p_489->g_388.sa, "p_489->g_388.sa", print_hash_value);
    transparent_crc(p_489->g_388.sb, "p_489->g_388.sb", print_hash_value);
    transparent_crc(p_489->g_388.sc, "p_489->g_388.sc", print_hash_value);
    transparent_crc(p_489->g_388.sd, "p_489->g_388.sd", print_hash_value);
    transparent_crc(p_489->g_388.se, "p_489->g_388.se", print_hash_value);
    transparent_crc(p_489->g_388.sf, "p_489->g_388.sf", print_hash_value);
    transparent_crc(p_489->g_406.x, "p_489->g_406.x", print_hash_value);
    transparent_crc(p_489->g_406.y, "p_489->g_406.y", print_hash_value);
    transparent_crc(p_489->g_411.x, "p_489->g_411.x", print_hash_value);
    transparent_crc(p_489->g_411.y, "p_489->g_411.y", print_hash_value);
    transparent_crc(p_489->g_411.z, "p_489->g_411.z", print_hash_value);
    transparent_crc(p_489->g_411.w, "p_489->g_411.w", print_hash_value);
    transparent_crc(p_489->g_413.x, "p_489->g_413.x", print_hash_value);
    transparent_crc(p_489->g_413.y, "p_489->g_413.y", print_hash_value);
    transparent_crc(p_489->g_413.z, "p_489->g_413.z", print_hash_value);
    transparent_crc(p_489->g_413.w, "p_489->g_413.w", print_hash_value);
    transparent_crc(p_489->g_414.s0, "p_489->g_414.s0", print_hash_value);
    transparent_crc(p_489->g_414.s1, "p_489->g_414.s1", print_hash_value);
    transparent_crc(p_489->g_414.s2, "p_489->g_414.s2", print_hash_value);
    transparent_crc(p_489->g_414.s3, "p_489->g_414.s3", print_hash_value);
    transparent_crc(p_489->g_414.s4, "p_489->g_414.s4", print_hash_value);
    transparent_crc(p_489->g_414.s5, "p_489->g_414.s5", print_hash_value);
    transparent_crc(p_489->g_414.s6, "p_489->g_414.s6", print_hash_value);
    transparent_crc(p_489->g_414.s7, "p_489->g_414.s7", print_hash_value);
    transparent_crc(p_489->g_415.x, "p_489->g_415.x", print_hash_value);
    transparent_crc(p_489->g_415.y, "p_489->g_415.y", print_hash_value);
    transparent_crc(p_489->g_415.z, "p_489->g_415.z", print_hash_value);
    transparent_crc(p_489->g_415.w, "p_489->g_415.w", print_hash_value);
    transparent_crc(p_489->g_416, "p_489->g_416", print_hash_value);
    transparent_crc(p_489->g_431, "p_489->g_431", print_hash_value);
    transparent_crc(p_489->g_441.x, "p_489->g_441.x", print_hash_value);
    transparent_crc(p_489->g_441.y, "p_489->g_441.y", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_489->g_460[i][j].f0, "p_489->g_460[i][j].f0", print_hash_value);
            transparent_crc(p_489->g_460[i][j].f1, "p_489->g_460[i][j].f1", print_hash_value);

        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
