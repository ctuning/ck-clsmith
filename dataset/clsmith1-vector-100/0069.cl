// ---fake_divergence -g 11,24,30 -l 1,3,5
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


// Seed: 69

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint8_t  f0;
   int32_t  f1;
   uint8_t  f2;
   uint32_t  f3;
   int64_t  f4;
};

struct S1 {
    int32_t g_3;
    volatile uint8_t g_5[10][3];
    int32_t g_8;
    volatile uint16_t g_9;
    struct S0 g_24;
    int32_t g_36;
    struct S0 g_81;
    uint32_t g_101;
    volatile uint16_t g_113;
    int16_t g_116;
    volatile uint8_t g_117;
    struct S0 g_122;
    struct S0 *g_121;
    int32_t g_125[8];
    VECTOR(int16_t, 8) g_141;
    volatile VECTOR(int16_t, 4) g_142;
    int32_t *g_161;
    int32_t ** volatile g_160[2];
    int32_t ** volatile g_162;
    int32_t ** volatile g_164;
    uint16_t g_179;
    int32_t ** volatile g_184;
    VECTOR(uint8_t, 4) g_191;
    int8_t g_195;
    int64_t g_197[3];
    VECTOR(int8_t, 2) g_222;
    uint16_t g_229;
    uint8_t *g_240;
    uint8_t *g_243[1][4];
    VECTOR(uint16_t, 2) g_244;
    VECTOR(uint8_t, 8) g_327;
    VECTOR(uint8_t, 8) g_339;
    uint64_t g_346;
    uint64_t g_356[9][7][4];
    uint64_t g_358;
    volatile VECTOR(int16_t, 16) g_400;
    volatile int16_t g_410;
    volatile int16_t * volatile g_409;
    volatile int16_t * volatile *g_408;
    uint16_t *g_412;
    VECTOR(int16_t, 8) g_422;
    VECTOR(int16_t, 8) g_429;
    uint64_t g_433;
    volatile uint64_t g_436;
    uint64_t g_443;
    int32_t g_444;
    int32_t ** volatile g_446;
    VECTOR(uint64_t, 2) g_461;
    int16_t *g_467;
    int8_t *g_473[3][5][10];
    int8_t **g_472[4][5][10];
    VECTOR(int32_t, 16) g_480;
    VECTOR(uint32_t, 16) g_481;
    uint64_t *g_491[3][8][1];
    int32_t *g_497[6];
    int64_t *g_505[5][5];
    int64_t **g_504;
    int64_t *** volatile g_503;
    volatile VECTOR(int32_t, 4) g_512;
    uint32_t g_522;
    int32_t g_575[4][8][8];
    uint16_t g_585;
    volatile uint64_t g_606;
    volatile uint64_t *g_605;
    volatile uint64_t * volatile *g_604;
    int16_t **g_607;
    uint16_t g_612;
    VECTOR(int32_t, 4) g_619;
    volatile uint32_t g_648;
    uint64_t *g_669;
    struct S0 ** volatile g_717[8];
    struct S0 ** volatile g_719[2];
    struct S0 ** volatile g_720;
    VECTOR(uint8_t, 2) g_732;
    uint16_t g_742;
    VECTOR(int32_t, 8) g_750;
    volatile VECTOR(int32_t, 2) g_751;
    volatile int64_t g_755;
    VECTOR(uint32_t, 16) g_763;
    volatile VECTOR(int8_t, 4) g_764;
    VECTOR(uint32_t, 2) g_793;
    volatile VECTOR(uint64_t, 4) g_799;
    volatile VECTOR(int8_t, 2) g_829;
    volatile VECTOR(uint16_t, 16) g_910;
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
int32_t  func_1(struct S1 * p_926);
int32_t * func_14(uint64_t  p_15, uint32_t  p_16, int64_t  p_17, struct S1 * p_926);
uint64_t  func_18(struct S0  p_19, uint64_t  p_20, int32_t * p_21, uint64_t  p_22, int32_t  p_23, struct S1 * p_926);
int32_t * func_27(uint16_t  p_28, uint32_t  p_29, struct S1 * p_926);
int32_t * func_32(int32_t  p_33, struct S1 * p_926);
uint8_t  func_46(struct S0 * p_47, int16_t  p_48, uint32_t  p_49, struct S1 * p_926);
struct S0 * func_50(uint64_t  p_51, int32_t  p_52, struct S1 * p_926);
uint64_t  func_53(uint16_t  p_54, uint32_t  p_55, uint64_t  p_56, uint64_t  p_57, struct S0 * p_58, struct S1 * p_926);
struct S0  func_59(struct S0 * p_60, int8_t  p_61, int64_t  p_62, uint32_t  p_63, struct S1 * p_926);
struct S0 * func_64(uint32_t  p_65, uint32_t  p_66, struct S0 * p_67, struct S0 * p_68, uint32_t  p_69, struct S1 * p_926);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_926->g_5 p_926->g_9 p_926->g_3 p_926->g_122.f1 p_926->g_240 p_926->g_122.f0 p_926->g_125
 * writes: p_926->g_5 p_926->g_9 p_926->g_3 p_926->g_122.f1 p_926->g_125
 */
int32_t  func_1(struct S1 * p_926)
{ /* block id: 4 */
    int32_t *l_2 = &p_926->g_3;
    int32_t *l_4[5][10][1] = {{{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3}},{{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3}},{{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3}},{{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3}},{{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3},{&p_926->g_3}}};
    VECTOR(int16_t, 16) l_421 = (VECTOR(int16_t, 16))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0x4559L), 0x4559L), 0x4559L, 5L, 0x4559L, (VECTOR(int16_t, 2))(5L, 0x4559L), (VECTOR(int16_t, 2))(5L, 0x4559L), 5L, 0x4559L, 5L, 0x4559L);
    int64_t *l_464 = &p_926->g_197[1];
    int8_t l_506 = (-1L);
    VECTOR(int32_t, 8) l_511 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x09057679L), 0x09057679L), 0x09057679L, 9L, 0x09057679L);
    uint64_t l_551 = 18446744073709551613UL;
    int32_t l_564 = (-1L);
    uint8_t l_576 = 0x5EL;
    int32_t *l_584 = &p_926->g_125[6];
    uint64_t l_610 = 1UL;
    int8_t **l_644[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_654 = 0xCEL;
    uint64_t *l_667 = &p_926->g_443;
    struct S0 *l_710[9] = {&p_926->g_122,&p_926->g_122,&p_926->g_122,&p_926->g_122,&p_926->g_122,&p_926->g_122,&p_926->g_122,&p_926->g_122,&p_926->g_122};
    uint32_t l_716 = 4294967288UL;
    int64_t l_802 = (-6L);
    int32_t l_805 = 0x619BFBE3L;
    struct S0 **l_825 = &l_710[3];
    int64_t *l_831 = &l_802;
    uint64_t l_836 = 0x7E3CBAD9E02D7A6BL;
    int64_t l_868 = 0x53E970D6CC9BDF8EL;
    uint16_t l_898 = 1UL;
    int16_t l_900 = 0x50EAL;
    uint16_t l_914 = 0x27B5L;
    int i, j, k;
    --p_926->g_5[4][1];
    --p_926->g_9;
    for (p_926->g_3 = (-17); (p_926->g_3 >= 25); p_926->g_3 = safe_add_func_int16_t_s_s(p_926->g_3, 4))
    { /* block id: 9 */
        struct S0 *l_25 = &p_926->g_24;
        int64_t l_26 = 0x42506ED55C59C3F9L;
        uint64_t *l_432 = &p_926->g_433;
        uint64_t *l_442 = &p_926->g_443;
        int32_t **l_445 = (void*)0;
        int32_t **l_447[2];
        VECTOR(int64_t, 4) l_477 = (VECTOR(int64_t, 4))(0x3EEC09278D82571EL, (VECTOR(int64_t, 2))(0x3EEC09278D82571EL, 1L), 1L);
        uint32_t l_501 = 4294967293UL;
        int8_t l_507 = 0x1FL;
        uint8_t l_508 = 0x8DL;
        uint32_t l_574[4];
        int32_t l_577 = 6L;
        int16_t l_634 = 0x3E5FL;
        int64_t l_637 = 0x146A25FD652ABF23L;
        int8_t **l_645 = (void*)0;
        int32_t l_651[9][2] = {{0x219660D2L,0x219660D2L},{0x219660D2L,0x219660D2L},{0x219660D2L,0x219660D2L},{0x219660D2L,0x219660D2L},{0x219660D2L,0x219660D2L},{0x219660D2L,0x219660D2L},{0x219660D2L,0x219660D2L},{0x219660D2L,0x219660D2L},{0x219660D2L,0x219660D2L}};
        VECTOR(int64_t, 4) l_698 = (VECTOR(int64_t, 4))(0x2E8A659EA630B805L, (VECTOR(int64_t, 2))(0x2E8A659EA630B805L, 0L), 0L);
        VECTOR(uint64_t, 2) l_708 = (VECTOR(uint64_t, 2))(1UL, 0UL);
        int8_t l_826 = 0x1AL;
        int64_t *l_830[6][4] = {{(void*)0,(void*)0,&p_926->g_197[2],&p_926->g_197[0]},{(void*)0,(void*)0,&p_926->g_197[2],&p_926->g_197[0]},{(void*)0,(void*)0,&p_926->g_197[2],&p_926->g_197[0]},{(void*)0,(void*)0,&p_926->g_197[2],&p_926->g_197[0]},{(void*)0,(void*)0,&p_926->g_197[2],&p_926->g_197[0]},{(void*)0,(void*)0,&p_926->g_197[2],&p_926->g_197[0]}};
        int32_t **l_893 = &p_926->g_497[5];
        uint64_t l_899 = 0x70776B84B8F8E4FBL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_447[i] = &l_2;
        for (i = 0; i < 4; i++)
            l_574[i] = 0x25406784L;
        (1 + 1);
    }
    for (p_926->g_122.f1 = 0; (p_926->g_122.f1 > 23); p_926->g_122.f1++)
    { /* block id: 381 */
        uint32_t l_925 = 0UL;
        (*l_584) ^= (((VECTOR(uint8_t, 2))(0x06L, 255UL)).hi != (*p_926->g_240));
        for (l_576 = 0; (l_576 != 39); l_576 = safe_add_func_uint8_t_u_u(l_576, 1))
        { /* block id: 385 */
            (*l_584) &= (l_925 <= ((VECTOR(uint32_t, 2))(8UL, 0x47C94737L)).hi);
        }
        if ((*l_584))
            break;
    }
    return (*l_584);
}


/* ------------------------------------------ */
/* 
 * reads : p_926->g_162 p_926->g_161
 * writes:
 */
int32_t * func_14(uint64_t  p_15, uint32_t  p_16, int64_t  p_17, struct S1 * p_926)
{ /* block id: 144 */
    return (*p_926->g_162);
}


/* ------------------------------------------ */
/* 
 * reads : p_926->g_436 p_926->g_327
 * writes: p_926->g_436
 */
uint64_t  func_18(struct S0  p_19, uint64_t  p_20, int32_t * p_21, uint64_t  p_22, int32_t  p_23, struct S1 * p_926)
{ /* block id: 139 */
    int32_t *l_434 = &p_926->g_125[5];
    int32_t *l_435[7][4] = {{&p_926->g_125[6],(void*)0,&p_926->g_125[6],&p_926->g_125[6]},{&p_926->g_125[6],(void*)0,&p_926->g_125[6],&p_926->g_125[6]},{&p_926->g_125[6],(void*)0,&p_926->g_125[6],&p_926->g_125[6]},{&p_926->g_125[6],(void*)0,&p_926->g_125[6],&p_926->g_125[6]},{&p_926->g_125[6],(void*)0,&p_926->g_125[6],&p_926->g_125[6]},{&p_926->g_125[6],(void*)0,&p_926->g_125[6],&p_926->g_125[6]},{&p_926->g_125[6],(void*)0,&p_926->g_125[6],&p_926->g_125[6]}};
    uint64_t l_439 = 18446744073709551615UL;
    int i, j;
    ++p_926->g_436;
    ++l_439;
    return p_926->g_327.s1;
}


/* ------------------------------------------ */
/* 
 * reads : p_926->g_5 p_926->g_36 p_926->g_8 p_926->g_3 p_926->g_81.f0 p_926->g_81.f4 p_926->g_113 p_926->g_117 p_926->g_121 p_926->g_125 p_926->g_122.f0 p_926->g_101 p_926->g_81.f2 p_926->g_81.f1 p_926->g_122.f3 p_926->g_162 p_926->g_164 p_926->g_122 p_926->g_179 p_926->g_184 p_926->g_142 p_926->g_161 p_926->g_116 p_926->g_195 p_926->g_197 p_926->g_9 p_926->g_222 p_926->g_229 p_926->g_81.f3 p_926->g_141 p_926->g_240 p_926->g_327 p_926->g_339 p_926->g_244 p_926->g_408 p_926->g_191
 * writes: p_926->g_81.f1 p_926->g_36 p_926->g_81.f2 p_926->g_113 p_926->g_117 p_926->g_125 p_926->g_116 p_926->g_81.f0 p_926->g_161 p_926->g_122 p_926->g_179 p_926->g_195 p_926->g_197 p_926->g_229 p_926->g_243 p_926->g_222 p_926->g_101 p_926->g_346 p_926->g_356 p_926->g_358
 */
int32_t * func_27(uint16_t  p_28, uint32_t  p_29, struct S1 * p_926)
{ /* block id: 11 */
    uint32_t l_34 = 0xE69ED994L;
    uint8_t **l_300 = (void*)0;
    VECTOR(int32_t, 4) l_303 = (VECTOR(int32_t, 4))(0x7F09B90EL, (VECTOR(int32_t, 2))(0x7F09B90EL, (-1L)), (-1L));
    int16_t *l_308 = (void*)0;
    int16_t **l_307 = &l_308;
    int32_t l_331 = 0x38C9CE29L;
    int32_t l_332 = 0x6E497319L;
    struct S0 l_387 = {1UL,-1L,0x09L,0x58B86F09L,6L};
    int i;
    for (p_29 = (-3); (p_29 < 50); ++p_29)
    { /* block id: 14 */
        int32_t **l_299 = &p_926->g_161;
        int16_t l_311 = 0x0DC2L;
        uint64_t l_336[9] = {0xCBDF80C4930CA31DL,1UL,0xCBDF80C4930CA31DL,0xCBDF80C4930CA31DL,1UL,0xCBDF80C4930CA31DL,0xCBDF80C4930CA31DL,1UL,0xCBDF80C4930CA31DL};
        int32_t l_341 = 0L;
        uint8_t *l_354 = &p_926->g_81.f2;
        uint32_t l_359 = 8UL;
        int i;
        (*l_299) = func_32(l_34, p_926);
        (*p_926->g_161) ^= (&p_926->g_240 != l_300);
        for (p_926->g_122.f3 = 0; (p_926->g_122.f3 >= 56); p_926->g_122.f3 = safe_add_func_int32_t_s_s(p_926->g_122.f3, 5))
        { /* block id: 95 */
            int16_t *l_305[7];
            int16_t **l_304 = &l_305[6];
            int32_t l_328 = 0x6480F206L;
            int32_t l_330 = 0L;
            int32_t l_334 = 2L;
            int32_t l_335 = (-1L);
            uint8_t *l_355 = (void*)0;
            int8_t l_360 = 0x29L;
            uint32_t *l_407 = &p_926->g_101;
            int32_t *l_411[3];
            int i;
            for (i = 0; i < 7; i++)
                l_305[i] = &p_926->g_116;
            for (i = 0; i < 3; i++)
                l_411[i] = &p_926->g_36;
            if (((VECTOR(int32_t, 4))(l_303.xyxz)).w)
            { /* block id: 96 */
                int16_t ***l_306[4];
                uint32_t l_319[4][5][3] = {{{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L}},{{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L}},{{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L}},{{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L}}};
                uint16_t *l_320 = &p_926->g_179;
                uint8_t *l_329[1];
                int32_t l_333 = 0x6002D6E0L;
                int64_t *l_340 = &p_926->g_197[2];
                uint64_t *l_344 = &l_336[0];
                uint64_t *l_345 = &p_926->g_346;
                VECTOR(int16_t, 4) l_353 = (VECTOR(int16_t, 4))(0x089AL, (VECTOR(int16_t, 2))(0x089AL, 0x4490L), 0x4490L);
                uint64_t *l_357 = &p_926->g_358;
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_306[i] = &l_304;
                for (i = 0; i < 1; i++)
                    l_329[i] = &p_926->g_81.f0;
                l_307 = l_304;
                l_330 = (safe_lshift_func_int8_t_s_u(l_311, (l_341 = ((0x14L ^ p_28) >= (+(1UL & (((VECTOR(uint16_t, 4))(((safe_unary_minus_func_uint8_t_u((!l_303.w))) <= ((+(FAKE_DIVERGE(p_926->group_0_offset, get_group_id(0), 10) & (((*l_340) = ((safe_mod_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(65535UL, ((*l_320) = l_319[0][0][1]))), (+(GROUP_DIVERGE(1, 1) != p_28)))) >= (((**l_299) = (safe_add_func_int32_t_s_s((safe_add_func_uint8_t_u_u((++(*p_926->g_240)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_926->g_327.s3714054105336034)).se720)), (++l_336[0]), 248UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 4))(p_926->g_339.s4624)), ((VECTOR(uint8_t, 16))(8UL, ((p_926->g_101 , 0UL) >= p_926->g_244.y), ((VECTOR(uint8_t, 8))(0x4EL)), ((VECTOR(uint8_t, 2))(1UL)), 255UL, ((VECTOR(uint8_t, 2))(1UL)), 252UL)).sc216, ((VECTOR(uint8_t, 4))(0x79L))))).lo)), 0x74L, 0x64L)))), ((VECTOR(uint8_t, 4))(1UL)), 1UL, 0xCEL)).s1)), p_29))) <= (-1L)))) >= l_331))) < l_319[0][1][2])), l_303.x, 0xEA74L, 0x1DE9L)).x == l_303.z)))))));
                (**l_299) ^= l_333;
                (*p_926->g_161) = ((((safe_div_func_int16_t_s_s(((l_333 = (((*l_344) = p_28) < ((*l_345) = (~p_28)))) > (safe_mod_func_uint64_t_u_u(((*l_357) = (((void*)0 != &p_28) < (p_926->g_356[7][5][2] = ((VECTOR(uint64_t, 16))(((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))(((void*)0 == &l_334), (-4L), 8L, ((VECTOR(int16_t, 8))(l_353.yxzywwwz)).s2, ((VECTOR(int16_t, 2))((-1L), (-5L))), 0x493AL, (-3L))).s2, GROUP_DIVERGE(0, 1))) ^ ((**p_926->g_184) < ((-4L) != (l_354 == l_355)))), 0xE9CC7936F8114C7DL, p_29, ((VECTOR(uint64_t, 4))(0UL)), l_335, 18446744073709551614UL, ((VECTOR(uint64_t, 2))(0xD67468DFB35ACF67L)), FAKE_DIVERGE(p_926->global_2_offset, get_global_id(2), 10), l_319[1][1][0], 1UL, 0xC7DFE44C7B6337EDL, 3UL)).sf))), l_359))), l_360)) < l_34) , &p_926->g_243[0][0]) == &l_355);
            }
            else
            { /* block id: 112 */
                uint32_t l_365 = 4294967294UL;
                uint32_t *l_366 = &l_359;
                VECTOR(uint64_t, 2) l_376 = (VECTOR(uint64_t, 2))(0xEF45B0738AC595C2L, 2UL);
                int32_t l_385 = 0L;
                int i;
                (**l_299) |= (0x4D6BL >= (((*l_366) = (!((((safe_lshift_func_int16_t_s_u(0x33ECL, 15)) & p_926->g_8) < ((void*)0 != &p_926->g_116)) & (safe_mod_func_uint32_t_u_u((p_926->g_101 = (&p_926->g_161 == (((~0x9670F25AL) ^ l_365) , (void*)0))), 5UL))))) | l_303.x));
                for (p_926->g_122.f0 = (-29); (p_926->g_122.f0 <= 57); p_926->g_122.f0 = safe_add_func_int8_t_s_s(p_926->g_122.f0, 1))
                { /* block id: 118 */
                    struct S0 l_383[9][6][4] = {{{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}}},{{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}}},{{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}}},{{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}}},{{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}}},{{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}}},{{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}}},{{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}}},{{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}},{{2UL,0x538B94E0L,0xD3L,0x59968347L,0x21A43EE4E511B85BL},{0x8DL,2L,247UL,0UL,0x5C55755A7F1D6DDFL},{0xECL,2L,255UL,4294967291UL,1L},{0x57L,-8L,0UL,0xBEF6AE49L,0x5013BA0803C78678L}}}};
                    int i, j, k;
                    if (l_328)
                    { /* block id: 119 */
                        uint64_t l_369 = 0x1966ADCC8B484295L;
                        uint64_t *l_377[9] = {&p_926->g_358,&p_926->g_358,&p_926->g_358,&p_926->g_358,&p_926->g_358,&p_926->g_358,&p_926->g_358,&p_926->g_358,&p_926->g_358};
                        uint16_t *l_378[9][10] = {{(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0},{(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0},{(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0},{(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0},{(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0},{(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0},{(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0},{(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0},{(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0,&p_926->g_179,(void*)0,(void*)0}};
                        int32_t *l_384 = &l_332;
                        int32_t *l_386 = &l_335;
                        int i, j;
                        if ((**p_926->g_164))
                            break;
                        (*l_386) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((void*)0 == &p_926->g_240), ((l_385 = ((((l_369 != p_29) , 0x345F09B3L) || (safe_div_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_u((safe_add_func_int64_t_s_s((((VECTOR(int32_t, 2))((-1L), (-7L))).lo , p_926->g_356[7][5][2]), ((**l_299) = ((VECTOR(uint64_t, 16))(l_376.yyyxyyxxyyxxxxxx)).s0))), (p_28 &= ((*l_307) == &p_926->g_116)))), (safe_lshift_func_uint16_t_u_s(((safe_div_func_int32_t_s_s(((*l_384) = ((l_383[7][3][3] , l_331) , p_29)), l_303.w)) , 0xB469L), 13))))) , 1L)) == 0x7D0FBBC8L), 0x5B6913A9L, 1L, p_28, (**p_926->g_184), ((VECTOR(int32_t, 8))((-1L))), 1L, 0x22A5E9BBL)).sf3)).yyxx)).x;
                    }
                    else
                    { /* block id: 126 */
                        (**l_299) |= ((VECTOR(int32_t, 2))(1L, 0x25559433L)).odd;
                        l_387 = (*p_926->g_121);
                    }
                }
                if (l_331)
                    continue;
            }
            l_331 &= (safe_rshift_func_int16_t_s_s((~(GROUP_DIVERGE(0, 1) >= (((safe_lshift_func_int16_t_s_s((p_28 < GROUP_DIVERGE(1, 1)), 15)) , ((!(((safe_rshift_func_int16_t_s_s(((((0x08L != (((safe_mod_func_uint8_t_u_u(((safe_div_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(p_926->g_400.sad)).yyyyyxxyxyxxxxxx)).odd)).s7 == 0x53C1L), (**l_299))), (*p_926->g_240))) != (safe_add_func_uint64_t_u_u((((((safe_mul_func_uint16_t_u_u(((p_29 != (*p_926->g_240)) == (3UL <= (safe_mod_func_uint32_t_u_u((((*l_407) = l_303.y) && (*p_926->g_161)), p_28)))), p_29)) || 1L) , p_926->g_408) != &l_308) && (**l_299)), p_926->g_8))), l_330)) , p_28) <= l_360)) > l_328) , p_926->g_191.x) , (**l_299)), p_926->g_122.f0)) != 0xA30EL) , 0xD2872760EF3DE385L)) , (*p_926->g_184))) != (void*)0))), 3));
        }
    }
    return (*p_926->g_184);
}


/* ------------------------------------------ */
/* 
 * reads : p_926->g_5 p_926->g_36 p_926->g_81.f1 p_926->g_8 p_926->g_81.f4 p_926->g_9 p_926->g_81.f0 p_926->g_3 p_926->g_113 p_926->g_117 p_926->g_121 p_926->g_125 p_926->g_141 p_926->g_142 p_926->g_122.f3 p_926->g_122.f2 p_926->g_122.f0 p_926->g_101 p_926->g_81.f2 p_926->g_162 p_926->g_164 p_926->g_122 p_926->g_179 p_926->g_184 p_926->g_161 p_926->g_191 p_926->g_116 p_926->g_195 p_926->g_197 p_926->g_222 p_926->g_229 p_926->g_81.f3 p_926->g_240 p_926->g_244
 * writes: p_926->g_81.f1 p_926->g_36 p_926->g_101 p_926->g_81.f2 p_926->g_113 p_926->g_117 p_926->g_125 p_926->g_116 p_926->g_81.f0 p_926->g_161 p_926->g_122 p_926->g_179 p_926->g_195 p_926->g_197 p_926->g_229 p_926->g_243 p_926->g_222
 */
int32_t * func_32(int32_t  p_33, struct S1 * p_926)
{ /* block id: 15 */
    int32_t *l_35 = &p_926->g_36;
    int32_t *l_37 = (void*)0;
    int32_t *l_38 = (void*)0;
    int32_t *l_39 = &p_926->g_36;
    int32_t *l_40 = (void*)0;
    uint64_t l_41 = 0UL;
    VECTOR(uint32_t, 16) l_74 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967286UL), 4294967286UL), 4294967286UL, 0UL, 4294967286UL, (VECTOR(uint32_t, 2))(0UL, 4294967286UL), (VECTOR(uint32_t, 2))(0UL, 4294967286UL), 0UL, 4294967286UL, 0UL, 4294967286UL);
    VECTOR(uint64_t, 8) l_75 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551611UL), 18446744073709551611UL), 18446744073709551611UL, 18446744073709551615UL, 18446744073709551611UL);
    struct S0 *l_80 = &p_926->g_81;
    VECTOR(uint32_t, 16) l_84 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 6UL), 6UL), 6UL, 1UL, 6UL, (VECTOR(uint32_t, 2))(1UL, 6UL), (VECTOR(uint32_t, 2))(1UL, 6UL), 1UL, 6UL, 1UL, 6UL);
    uint16_t l_88 = 1UL;
    int32_t **l_297[6];
    int32_t *l_298[8][7] = {{(void*)0,&p_926->g_36,&p_926->g_3,&p_926->g_36,(void*)0,(void*)0,&p_926->g_36},{(void*)0,&p_926->g_36,&p_926->g_3,&p_926->g_36,(void*)0,(void*)0,&p_926->g_36},{(void*)0,&p_926->g_36,&p_926->g_3,&p_926->g_36,(void*)0,(void*)0,&p_926->g_36},{(void*)0,&p_926->g_36,&p_926->g_3,&p_926->g_36,(void*)0,(void*)0,&p_926->g_36},{(void*)0,&p_926->g_36,&p_926->g_3,&p_926->g_36,(void*)0,(void*)0,&p_926->g_36},{(void*)0,&p_926->g_36,&p_926->g_3,&p_926->g_36,(void*)0,(void*)0,&p_926->g_36},{(void*)0,&p_926->g_36,&p_926->g_3,&p_926->g_36,(void*)0,(void*)0,&p_926->g_36},{(void*)0,&p_926->g_36,&p_926->g_3,&p_926->g_36,(void*)0,(void*)0,&p_926->g_36}};
    int i, j;
    for (i = 0; i < 6; i++)
        l_297[i] = &l_39;
    l_41--;
    l_298[7][3] = ((safe_mul_func_uint8_t_u_u(func_46(func_50(func_53(p_33, (func_59(func_64(p_926->g_5[4][1], ((p_926->g_36 && (safe_add_func_uint32_t_u_u((*l_35), ((VECTOR(uint32_t, 2))(l_74.sd2)).hi))) > (((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_75.s36310435)).s3460336123341640)).s9 != (safe_mul_func_int8_t_s_s(0x6DL, ((safe_sub_func_int8_t_s_s(3L, (l_80 != (((VECTOR(uint64_t, 16))(0x1A38AD7B59016633L, (safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(l_84.s76)).lo, 0x1DC99B0BL)), 0x997376B242CFF427L, 0x2CD4B48EDA297315L, p_33, ((VECTOR(uint64_t, 8))(0UL)), ((VECTOR(uint64_t, 2))(18446744073709551611UL)), 0xEDF2CFEAA3CE9D1BL)).sb , l_80)))) ^ (*l_35))))) , l_80) != &p_926->g_81)), &p_926->g_81, l_80, p_33, p_926), l_88, p_926->g_8, p_33, p_926) , p_926->g_81.f0), p_33, p_33, p_926->g_121, p_926), p_33, p_926), p_926->g_81.f3, p_926->g_141.s6, p_926), p_33)) , (*p_926->g_162));
    (*l_39) = p_33;
    return (*p_926->g_184);
}


/* ------------------------------------------ */
/* 
 * reads : p_926->g_240 p_926->g_244 p_926->g_141 p_926->g_122.f0 p_926->g_81.f2 p_926->g_122.f3 p_926->g_161 p_926->g_121 p_926->g_81.f4 p_926->g_191 p_926->g_116 p_926->g_125 p_926->g_101 p_926->g_164
 * writes: p_926->g_243 p_926->g_122.f0 p_926->g_222 p_926->g_125 p_926->g_122 p_926->g_197 p_926->g_101
 */
uint8_t  func_46(struct S0 * p_47, int16_t  p_48, uint32_t  p_49, struct S1 * p_926)
{ /* block id: 70 */
    VECTOR(int8_t, 2) l_233 = (VECTOR(int8_t, 2))(8L, 0x2FL);
    int32_t l_238[3];
    uint8_t l_239 = 255UL;
    uint8_t **l_241[6][8][5] = {{{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0}},{{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0}},{{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0}},{{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0}},{{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0}},{{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0},{(void*)0,(void*)0,&p_926->g_240,&p_926->g_240,(void*)0}}};
    uint8_t *l_242[9][2] = {{&p_926->g_81.f0,&p_926->g_81.f0},{&p_926->g_81.f0,&p_926->g_81.f0},{&p_926->g_81.f0,&p_926->g_81.f0},{&p_926->g_81.f0,&p_926->g_81.f0},{&p_926->g_81.f0,&p_926->g_81.f0},{&p_926->g_81.f0,&p_926->g_81.f0},{&p_926->g_81.f0,&p_926->g_81.f0},{&p_926->g_81.f0,&p_926->g_81.f0},{&p_926->g_81.f0,&p_926->g_81.f0}};
    VECTOR(uint64_t, 16) l_249 = (VECTOR(uint64_t, 16))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 2UL, 18446744073709551608UL, (VECTOR(uint64_t, 2))(2UL, 18446744073709551608UL), (VECTOR(uint64_t, 2))(2UL, 18446744073709551608UL), 2UL, 18446744073709551608UL, 2UL, 18446744073709551608UL);
    int8_t l_262 = 1L;
    struct S0 l_263[1][8] = {{{0x92L,3L,0UL,4294967295UL,-1L},{0x92L,3L,0UL,4294967295UL,-1L},{0x92L,3L,0UL,4294967295UL,-1L},{0x92L,3L,0UL,4294967295UL,-1L},{0x92L,3L,0UL,4294967295UL,-1L},{0x92L,3L,0UL,4294967295UL,-1L},{0x92L,3L,0UL,4294967295UL,-1L},{0x92L,3L,0UL,4294967295UL,-1L}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_238[i] = 1L;
    (*p_926->g_161) = ((safe_mul_func_uint8_t_u_u(((((VECTOR(int8_t, 4))(l_233.xxxx)).w > (p_926->g_222.x = ((l_238[0] = (safe_sub_func_int16_t_s_s(l_233.x, (safe_lshift_func_uint8_t_u_s(l_233.y, (l_233.x , 8L)))))) && (((VECTOR(int16_t, 2))(0x5A28L, (-1L))).lo , (((l_239 < ((l_242[4][1] = p_926->g_240) == (p_926->g_243[0][0] = p_926->g_240))) > ((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 8))(p_926->g_244.xyyxyxxx)).s57, (uint16_t)(((safe_rshift_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(l_249.s5e9e7ca1)).s5, ((safe_mul_func_int16_t_s_s(((safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(p_49, (safe_mul_func_uint8_t_u_u(((*p_926->g_240) &= ((((safe_add_func_uint32_t_u_u(l_249.s0, l_233.x)) <= p_926->g_141.s4) > l_262) , p_48)), p_49)))), l_238[1])), p_49)) >= 0x6A94C9F59413205AL), p_926->g_81.f2)) > GROUP_DIVERGE(0, 1)))), p_48)) || l_262) ^ p_926->g_122.f3)))).lo) < GROUP_DIVERGE(1, 1)))))) < 0UL), l_233.y)) , 1L);
    (*p_926->g_121) = l_263[0][3];
    if (p_49)
    { /* block id: 78 */
        int64_t *l_278 = &p_926->g_197[1];
        int32_t l_291 = 0x2587180BL;
        uint32_t *l_292 = &p_926->g_101;
        l_238[0] = ((safe_div_func_int32_t_s_s(((safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_926->global_0_offset, get_global_id(0), 10), (safe_mod_func_int32_t_s_s((safe_div_func_uint32_t_u_u(p_48, ((*l_292) ^= ((safe_add_func_uint64_t_u_u(((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x333F109BE10EBC4DL, 0x546E646427B96491L)).xxyy)).x, (safe_lshift_func_int16_t_s_u((&p_926->g_195 == (void*)0), (((*p_926->g_240) = ((((((*l_278) = ((VECTOR(int64_t, 2))(0x7DCEB12114B6D742L, 0x6CD1DA0B34B949FBL)).hi) ^ p_926->g_81.f4) >= ((VECTOR(int64_t, 16))(((safe_mod_func_int16_t_s_s(p_49, (safe_mul_func_uint8_t_u_u(p_48, (((safe_rshift_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_s((*p_926->g_240), 0)) , p_49) < ((safe_div_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u(p_48, p_49)), p_49)) , l_291)), p_48)) & p_926->g_191.y) & l_263[0][3].f1))))) , p_49), (-4L), ((VECTOR(int64_t, 2))((-1L))), 0L, ((VECTOR(int64_t, 8))(0x6ECCF07D1EFFA761L)), 0x0AA55EECBC77C4A6L, 0x5DB6DB1B38B637A0L, 0x2CF65C6CC0175994L)).s4) || p_926->g_116) , 255UL)) ^ 0L))))) != l_263[0][3].f1), l_233.y)) > (*p_926->g_161))))), l_291)))) ^ l_263[0][3].f0), (**p_926->g_164))) , 5L);
        return p_48;
    }
    else
    { /* block id: 84 */
        int32_t *l_293[4];
        uint16_t l_294 = 0x5165L;
        int i;
        for (i = 0; i < 4; i++)
            l_293[i] = (void*)0;
        l_294++;
    }
    return (*p_926->g_240);
}


/* ------------------------------------------ */
/* 
 * reads : p_926->g_161 p_926->g_125 p_926->g_191 p_926->g_116 p_926->g_195 p_926->g_197 p_926->g_142 p_926->g_122.f4 p_926->g_9 p_926->g_222 p_926->g_36 p_926->g_229
 * writes: p_926->g_161 p_926->g_122.f0 p_926->g_195 p_926->g_197 p_926->g_179 p_926->g_125 p_926->g_116 p_926->g_229
 */
struct S0 * func_50(uint64_t  p_51, int32_t  p_52, struct S1 * p_926)
{ /* block id: 60 */
    int32_t *l_185[10];
    int32_t **l_186 = &p_926->g_161;
    int8_t *l_194 = &p_926->g_195;
    int64_t *l_196 = &p_926->g_197[2];
    uint16_t *l_209 = (void*)0;
    uint16_t *l_210[3];
    int64_t l_211[9][3] = {{0x15154DCB419A3F20L,0L,0x70B6039828ED58A8L},{0x15154DCB419A3F20L,0L,0x70B6039828ED58A8L},{0x15154DCB419A3F20L,0L,0x70B6039828ED58A8L},{0x15154DCB419A3F20L,0L,0x70B6039828ED58A8L},{0x15154DCB419A3F20L,0L,0x70B6039828ED58A8L},{0x15154DCB419A3F20L,0L,0x70B6039828ED58A8L},{0x15154DCB419A3F20L,0L,0x70B6039828ED58A8L},{0x15154DCB419A3F20L,0L,0x70B6039828ED58A8L},{0x15154DCB419A3F20L,0L,0x70B6039828ED58A8L}};
    VECTOR(int8_t, 4) l_220 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x24L), 0x24L);
    VECTOR(int8_t, 2) l_221 = (VECTOR(int8_t, 2))((-8L), 0L);
    int16_t *l_227 = (void*)0;
    int16_t *l_228 = &p_926->g_116;
    struct S0 *l_230[5][6] = {{(void*)0,&p_926->g_122,(void*)0,&p_926->g_81,(void*)0,(void*)0},{(void*)0,&p_926->g_122,(void*)0,&p_926->g_81,(void*)0,(void*)0},{(void*)0,&p_926->g_122,(void*)0,&p_926->g_81,(void*)0,(void*)0},{(void*)0,&p_926->g_122,(void*)0,&p_926->g_81,(void*)0,(void*)0},{(void*)0,&p_926->g_122,(void*)0,&p_926->g_81,(void*)0,(void*)0}};
    int i, j;
    for (i = 0; i < 10; i++)
        l_185[i] = &p_926->g_125[0];
    for (i = 0; i < 3; i++)
        l_210[i] = &p_926->g_179;
    (*l_186) = l_185[5];
    (**l_186) = ((safe_mul_func_uint16_t_u_u(((**l_186) == ((((**l_186) , (+(safe_add_func_uint32_t_u_u((((((*l_196) |= (((p_926->g_122.f0 = ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 4))(p_926->g_191.xxyy)).zxzxzyyy))).s50)).lo) <= (safe_sub_func_uint8_t_u_u((**l_186), ((*l_194) &= p_926->g_116)))) && p_52)) == (1L > (((safe_add_func_uint64_t_u_u((((p_926->g_179 = (((safe_add_func_uint32_t_u_u(((safe_div_func_uint64_t_u_u(p_926->g_142.y, (safe_unary_minus_func_int64_t_s(p_52)))) == (safe_lshift_func_int8_t_s_s((safe_add_func_int64_t_s_s(p_926->g_125[5], 2UL)), p_52))), 4294967295UL)) ^ p_52) ^ (*p_926->g_161))) >= p_52) < 0xA7CCL), p_51)) , l_209) != l_210[2]))) >= p_52) || 4294967295UL), (-8L))))) || p_926->g_122.f4) , l_211[8][1])), 9L)) , (**l_186));
    p_926->g_229 &= (safe_add_func_uint16_t_u_u((p_926->g_9 , ((safe_add_func_uint64_t_u_u((safe_add_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_s((**l_186), ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(l_220.xyyyzzyz)).s53, ((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 4))(l_221.yxyy)).wxyywzwz, ((VECTOR(int8_t, 4))(p_926->g_222.yyxx)).ywwxxyyy))).s60))).lo)) || p_52), (safe_sub_func_uint8_t_u_u(((((~p_51) != ((p_51 || 0L) <= ((*l_228) |= p_926->g_36))) , l_194) == &p_926->g_195), FAKE_DIVERGE(p_926->local_0_offset, get_local_id(0), 10))))), p_926->g_222.x)) & 0x75AD00F8L)), p_51));
    return l_230[0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_926->g_125 p_926->g_141 p_926->g_142 p_926->g_122.f3 p_926->g_122.f2 p_926->g_122.f0 p_926->g_81.f4 p_926->g_101 p_926->g_81.f2 p_926->g_81.f1 p_926->g_81.f0 p_926->g_162 p_926->g_164 p_926->g_3 p_926->g_122 p_926->g_179 p_926->g_5 p_926->g_184 p_926->g_81
 * writes: p_926->g_36 p_926->g_125 p_926->g_116 p_926->g_81.f0 p_926->g_161 p_926->g_122 p_926->g_179 p_926->g_81
 */
uint64_t  func_53(uint16_t  p_54, uint32_t  p_55, uint64_t  p_56, uint64_t  p_57, struct S0 * p_58, struct S1 * p_926)
{ /* block id: 35 */
    int32_t *l_123 = &p_926->g_36;
    int32_t *l_124 = &p_926->g_125[5];
    int16_t *l_138 = &p_926->g_116;
    struct S0 l_147 = {0xE8L,0x463ED81AL,1UL,0x942D81DFL,0x2EAEB8C4E8C28246L};
    VECTOR(uint8_t, 16) l_148 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xB8L), 0xB8L), 0xB8L, 0UL, 0xB8L, (VECTOR(uint8_t, 2))(0UL, 0xB8L), (VECTOR(uint8_t, 2))(0UL, 0xB8L), 0UL, 0xB8L, 0UL, 0xB8L);
    VECTOR(int16_t, 2) l_149 = (VECTOR(int16_t, 2))(0x1BC6L, 1L);
    VECTOR(uint8_t, 4) l_150 = (VECTOR(uint8_t, 4))(0x3BL, (VECTOR(uint8_t, 2))(0x3BL, 255UL), 255UL);
    VECTOR(int16_t, 2) l_153 = (VECTOR(int16_t, 2))((-4L), 0x39EDL);
    int8_t l_158 = 1L;
    uint8_t *l_159 = &p_926->g_81.f0;
    int32_t *l_183 = &p_926->g_125[5];
    int i;
    (*l_124) ^= ((*l_123) = ((void*)0 != p_58));
    if ((safe_sub_func_uint64_t_u_u((((*l_123) = (-1L)) != (safe_lshift_func_int8_t_s_u((((safe_lshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u(((*l_159) ^= (safe_add_func_int16_t_s_s((p_56 | ((FAKE_DIVERGE(p_926->local_1_offset, get_local_id(1), 10) , (!(safe_mul_func_int16_t_s_s(((*l_138) = p_55), ((((5UL != (247UL || (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((-1L), 0x4EE2L)).xxxyxyyx)).s12, ((VECTOR(int16_t, 4))(p_926->g_141.s5406)).odd))).xxyyyyyy, ((VECTOR(int16_t, 16))(p_926->g_142.zwzyxzwyzwwxyyzz)).lo))).s4, ((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_s((l_147 , ((VECTOR(uint8_t, 16))(l_148.s11774b49123f8d3d)).sc), ((((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 8))(l_149.xxyxyxyx)).s72))), 65535UL, 0x6B99L, p_55, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(0UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 4))(l_150.wwwy)).xxzzxzzz, ((VECTOR(uint8_t, 16))(1UL, (safe_rshift_func_uint16_t_u_u((((((GROUP_DIVERGE(1, 1) , p_926->g_122.f3) <= ((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_153.xxxyxyxx)).s0666251563320312)).even, ((VECTOR(int16_t, 16))(((safe_sub_func_int64_t_s_s((p_54 && 0L), 0x21466A0411C86B63L)) < 0x7B41E479A4C43A83L), p_57, (-10L), ((VECTOR(int16_t, 4))(0x18B4L)), ((VECTOR(int16_t, 8))(0x4561L)), 0x100DL)).hi))).s2) || GROUP_DIVERGE(2, 1)) , (*l_124)) , 0x39E4L), 1)), ((VECTOR(uint8_t, 2))(0x7BL)), 0UL, 0x69L, GROUP_DIVERGE(2, 1), ((VECTOR(uint8_t, 8))(255UL)), 0x5CL)).lo))))).s70)), 0xC57FL, p_926->g_122.f2, l_158, ((VECTOR(uint16_t, 2))(65532UL)), ((VECTOR(uint16_t, 4))(0x7E25L)), 0xE528L, (*l_124), 0UL, 1UL)).s0e)).xyyyyyxy, ((VECTOR(uint16_t, 8))(0x904AL))))).s12, ((VECTOR(uint16_t, 2))(0xD4F9L))))), 0UL)))).even, ((VECTOR(uint16_t, 4))(0xA669L)), ((VECTOR(uint16_t, 4))(0x85D0L))))).yywxxyxzyxxwwzyw)).s08)).even <= p_926->g_122.f0) < p_55) , p_926->g_81.f4) > p_926->g_101))) > (*l_124)), 6)) , p_926->g_81.f2))))) , 0x2EE5L) && FAKE_DIVERGE(p_926->local_0_offset, get_local_id(0), 10)) , p_926->g_81.f1))))) || 0x4560B182A6E03DA2L)), 0x2867L))), 0)), 9)) < 0x2DL) && p_926->g_122.f3), 0))), 18446744073709551609UL)))
    { /* block id: 41 */
        int16_t l_163[6] = {0x74B7L,0x74B7L,0x74B7L,0x74B7L,0x74B7L,0x74B7L};
        int i;
        (*p_926->g_162) = l_124;
        (*l_124) |= (l_163[3] ^ p_926->g_81.f0);
        (*p_926->g_164) = l_123;
        (*l_123) = ((safe_mod_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(65527UL, 65531UL)).even, 11)), p_926->g_3)) , (-10L));
    }
    else
    { /* block id: 46 */
        int32_t *l_169 = (void*)0;
        if (((*l_124) = (-10L)))
        { /* block id: 48 */
            (*p_58) = (*p_58);
        }
        else
        { /* block id: 50 */
            int32_t **l_170 = &p_926->g_161;
            uint16_t *l_177 = (void*)0;
            uint16_t *l_178 = &p_926->g_179;
            int16_t **l_182 = (void*)0;
            (*l_124) ^= (4294967295UL > 0x0D764150L);
            (*l_170) = l_169;
            l_182 = ((safe_mul_func_uint16_t_u_u(0x969EL, (safe_add_func_int16_t_s_s(0x07F2L, ((safe_mul_func_int16_t_s_s(((void*)0 == &p_926->g_116), (*l_124))) ^ (((p_57 < ((((((((*l_178)++) != p_926->g_5[4][1]) <= ((p_926->g_101 & ((0x5BD7DA9C454E90A0L == p_57) | 0x784CA32801D1818CL)) < FAKE_DIVERGE(p_926->global_2_offset, get_global_id(2), 10))) < 0x70L) , &p_926->g_101) != (void*)0) , p_57)) || 0x3028L) & p_55)))))) , (void*)0);
            (*l_170) = l_123;
        }
    }
    (*p_926->g_184) = ((((void*)0 == &p_926->g_81) & p_54) , l_183);
    return p_926->g_142.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_926->g_81.f4 p_926->g_9 p_926->g_81.f0 p_926->g_36 p_926->g_3 p_926->g_113 p_926->g_117
 * writes: p_926->g_101 p_926->g_36 p_926->g_81.f2 p_926->g_113 p_926->g_117
 */
struct S0  func_59(struct S0 * p_60, int8_t  p_61, int64_t  p_62, uint32_t  p_63, struct S1 * p_926)
{ /* block id: 25 */
    int32_t *l_89 = &p_926->g_36;
    int32_t **l_90 = (void*)0;
    int32_t **l_91[5];
    int32_t *l_92 = (void*)0;
    VECTOR(int32_t, 2) l_99 = (VECTOR(int32_t, 2))(0x662B9925L, 0x79A20850L);
    uint32_t *l_100 = &p_926->g_101;
    VECTOR(uint32_t, 8) l_110 = (VECTOR(uint32_t, 8))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 4294967292UL), 4294967292UL), 4294967292UL, 4294967290UL, 4294967292UL);
    uint8_t *l_111 = &p_926->g_81.f2;
    uint32_t l_112 = 0UL;
    struct S0 l_120[6][1] = {{{0xDAL,-8L,0x8FL,0x7FA16697L,1L}},{{0xDAL,-8L,0x8FL,0x7FA16697L,1L}},{{0xDAL,-8L,0x8FL,0x7FA16697L,1L}},{{0xDAL,-8L,0x8FL,0x7FA16697L,1L}},{{0xDAL,-8L,0x8FL,0x7FA16697L,1L}},{{0xDAL,-8L,0x8FL,0x7FA16697L,1L}}};
    int i, j;
    for (i = 0; i < 5; i++)
        l_91[i] = &l_89;
    l_92 = l_89;
    l_112 |= ((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(0x66L, ((VECTOR(int8_t, 2))(1L, 2L)), 0L)))).x, (safe_mod_func_int16_t_s_s(((safe_sub_func_uint8_t_u_u(((*l_111) = (0x567D2F72L < ((*l_89) = ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_99.yxxx)).zwxxwxzw, ((VECTOR(int32_t, 4))(0x11AFF0E9L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(0x4CBEB01BL, ((((VECTOR(uint32_t, 8))(0xE63FD683L, ((*l_100) = p_926->g_81.f4), (safe_mod_func_int64_t_s_s((((void*)0 == &l_89) > p_61), (safe_sub_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(1L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x7A28L, (-1L))))), 0x552AL)).zwwxzxzx)), (int16_t)(safe_sub_func_int16_t_s_s((p_61 , (((*l_100) = ((p_926->g_81.f4 || ((VECTOR(uint32_t, 16))(4294967287UL, 0x4CC67FDBL, p_926->g_9, 0xEA21089BL, ((VECTOR(uint32_t, 8))(l_110.s46615261)), 0UL, p_926->g_81.f0, 0xFA11D7DEL, 0xE08EB45EL)).s8) >= (*l_89))) < p_63)), (*l_92)))))).lo))).wwyzwzxxyyxyywwz)).sc353)).w, 0)), p_62)))), ((VECTOR(uint32_t, 4))(0xB1E0FC07L)), 0x9F99B685L)).s7 , &p_926->g_3) == (void*)0), 1L, (-6L))).even)), 0x4488338CL)).yyzyxwxy))).s3664237543736416, ((VECTOR(int32_t, 16))(0x25129FF9L)), ((VECTOR(int32_t, 16))(0L))))).s45, ((VECTOR(int32_t, 2))(0x7ECA7173L)), ((VECTOR(int32_t, 2))(0x55FA4026L))))).even))), p_926->g_3)) && 0x479B9B32L), p_926->g_81.f0)))) == p_926->g_81.f4);
    --p_926->g_113;
    ++p_926->g_117;
    return l_120[5][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_926->g_81.f1 p_926->g_5 p_926->g_36
 * writes: p_926->g_81.f1 p_926->g_36
 */
struct S0 * func_64(uint32_t  p_65, uint32_t  p_66, struct S0 * p_67, struct S0 * p_68, uint32_t  p_69, struct S1 * p_926)
{ /* block id: 17 */
    for (p_926->g_81.f1 = 0; (p_926->g_81.f1 != 10); p_926->g_81.f1 = safe_add_func_uint32_t_u_u(p_926->g_81.f1, 6))
    { /* block id: 20 */
        int32_t *l_87 = &p_926->g_36;
        (*l_87) &= p_926->g_5[4][1];
        return &p_926->g_81;
    }
    return p_68;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_927;
    struct S1* p_926 = &c_927;
    struct S1 c_928 = {
        0L, // p_926->g_3
        {{247UL,0xF1L,247UL},{247UL,0xF1L,247UL},{247UL,0xF1L,247UL},{247UL,0xF1L,247UL},{247UL,0xF1L,247UL},{247UL,0xF1L,247UL},{247UL,0xF1L,247UL},{247UL,0xF1L,247UL},{247UL,0xF1L,247UL},{247UL,0xF1L,247UL}}, // p_926->g_5
        (-2L), // p_926->g_8
        65535UL, // p_926->g_9
        {0x93L,1L,0x74L,8UL,6L}, // p_926->g_24
        2L, // p_926->g_36
        {1UL,0L,0UL,4294967295UL,-4L}, // p_926->g_81
        0xCC605353L, // p_926->g_101
        0UL, // p_926->g_113
        (-1L), // p_926->g_116
        0x36L, // p_926->g_117
        {1UL,0L,1UL,0UL,-5L}, // p_926->g_122
        &p_926->g_122, // p_926->g_121
        {0x247E73ABL,0x247E73ABL,0x247E73ABL,0x247E73ABL,0x247E73ABL,0x247E73ABL,0x247E73ABL,0x247E73ABL}, // p_926->g_125
        (VECTOR(int16_t, 8))(0x55F7L, (VECTOR(int16_t, 4))(0x55F7L, (VECTOR(int16_t, 2))(0x55F7L, (-1L)), (-1L)), (-1L), 0x55F7L, (-1L)), // p_926->g_141
        (VECTOR(int16_t, 4))(0x22BEL, (VECTOR(int16_t, 2))(0x22BEL, 0x263DL), 0x263DL), // p_926->g_142
        (void*)0, // p_926->g_161
        {&p_926->g_161,&p_926->g_161}, // p_926->g_160
        &p_926->g_161, // p_926->g_162
        &p_926->g_161, // p_926->g_164
        0x2025L, // p_926->g_179
        &p_926->g_161, // p_926->g_184
        (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 4UL), 4UL), // p_926->g_191
        0x6FL, // p_926->g_195
        {0x609CE5FEA347EEFFL,0x609CE5FEA347EEFFL,0x609CE5FEA347EEFFL}, // p_926->g_197
        (VECTOR(int8_t, 2))(0x72L, 0x75L), // p_926->g_222
        6UL, // p_926->g_229
        &p_926->g_122.f0, // p_926->g_240
        {{&p_926->g_81.f2,&p_926->g_81.f2,&p_926->g_81.f2,&p_926->g_81.f2}}, // p_926->g_243
        (VECTOR(uint16_t, 2))(0x6F28L, 0x4123L), // p_926->g_244
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x1FL), 0x1FL), 0x1FL, 1UL, 0x1FL), // p_926->g_327
        (VECTOR(uint8_t, 8))(0xB4L, (VECTOR(uint8_t, 4))(0xB4L, (VECTOR(uint8_t, 2))(0xB4L, 0x6AL), 0x6AL), 0x6AL, 0xB4L, 0x6AL), // p_926->g_339
        18446744073709551615UL, // p_926->g_346
        {{{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L}},{{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L}},{{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L}},{{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L}},{{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L}},{{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L}},{{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L}},{{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L}},{{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L},{0xF40DD39B68071D06L,0x1C56A95073DC19A4L,0x1C56A95073DC19A4L,0xF40DD39B68071D06L}}}, // p_926->g_356
        0UL, // p_926->g_358
        (VECTOR(int16_t, 16))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x7E45L), 0x7E45L), 0x7E45L, 7L, 0x7E45L, (VECTOR(int16_t, 2))(7L, 0x7E45L), (VECTOR(int16_t, 2))(7L, 0x7E45L), 7L, 0x7E45L, 7L, 0x7E45L), // p_926->g_400
        0x1014L, // p_926->g_410
        &p_926->g_410, // p_926->g_409
        &p_926->g_409, // p_926->g_408
        (void*)0, // p_926->g_412
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_926->g_422
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L), 1L, 1L, 1L), // p_926->g_429
        4UL, // p_926->g_433
        9UL, // p_926->g_436
        0xCF7DC32D48C36216L, // p_926->g_443
        (-1L), // p_926->g_444
        (void*)0, // p_926->g_446
        (VECTOR(uint64_t, 2))(0x33E0E552E7C1CEF7L, 18446744073709551606UL), // p_926->g_461
        (void*)0, // p_926->g_467
        {{{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195}},{{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195}},{{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195},{&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195,&p_926->g_195}}}, // p_926->g_473
        {{{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]}},{{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]}},{{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]}},{{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]},{&p_926->g_473[0][4][8],&p_926->g_473[1][2][1],&p_926->g_473[0][3][0],&p_926->g_473[2][0][7],&p_926->g_473[1][0][5],&p_926->g_473[1][2][1],(void*)0,&p_926->g_473[0][4][6],&p_926->g_473[1][2][1],&p_926->g_473[1][2][1]}}}, // p_926->g_472
        (VECTOR(int32_t, 16))(0x7838B5C8L, (VECTOR(int32_t, 4))(0x7838B5C8L, (VECTOR(int32_t, 2))(0x7838B5C8L, 0x04FEB83AL), 0x04FEB83AL), 0x04FEB83AL, 0x7838B5C8L, 0x04FEB83AL, (VECTOR(int32_t, 2))(0x7838B5C8L, 0x04FEB83AL), (VECTOR(int32_t, 2))(0x7838B5C8L, 0x04FEB83AL), 0x7838B5C8L, 0x04FEB83AL, 0x7838B5C8L, 0x04FEB83AL), // p_926->g_480
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 7UL), 7UL), 7UL, 0UL, 7UL, (VECTOR(uint32_t, 2))(0UL, 7UL), (VECTOR(uint32_t, 2))(0UL, 7UL), 0UL, 7UL, 0UL, 7UL), // p_926->g_481
        {{{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358}},{{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358}},{{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358},{&p_926->g_358}}}, // p_926->g_491
        {&p_926->g_36,(void*)0,&p_926->g_36,&p_926->g_36,(void*)0,&p_926->g_36}, // p_926->g_497
        {{&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2]},{&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2]},{&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2]},{&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2]},{&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2],&p_926->g_197[2]}}, // p_926->g_505
        &p_926->g_505[0][3], // p_926->g_504
        &p_926->g_504, // p_926->g_503
        (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0L), 0L), // p_926->g_512
        0x0C70F2E8L, // p_926->g_522
        {{{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L}},{{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L}},{{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L}},{{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L},{(-7L),0x62952493L,0x2B3332F2L,1L,3L,0x579B6DD5L,(-5L),1L}}}, // p_926->g_575
        0xB82BL, // p_926->g_585
        1UL, // p_926->g_606
        &p_926->g_606, // p_926->g_605
        &p_926->g_605, // p_926->g_604
        &p_926->g_467, // p_926->g_607
        0x57C8L, // p_926->g_612
        (VECTOR(int32_t, 4))(0x58F1AEB7L, (VECTOR(int32_t, 2))(0x58F1AEB7L, 0x45900A14L), 0x45900A14L), // p_926->g_619
        0x0BD15F84L, // p_926->g_648
        (void*)0, // p_926->g_669
        {&p_926->g_121,&p_926->g_121,&p_926->g_121,&p_926->g_121,&p_926->g_121,&p_926->g_121,&p_926->g_121,&p_926->g_121}, // p_926->g_717
        {&p_926->g_121,&p_926->g_121}, // p_926->g_719
        &p_926->g_121, // p_926->g_720
        (VECTOR(uint8_t, 2))(0x38L, 0xF8L), // p_926->g_732
        1UL, // p_926->g_742
        (VECTOR(int32_t, 8))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x1E0A7DAEL), 0x1E0A7DAEL), 0x1E0A7DAEL, (-3L), 0x1E0A7DAEL), // p_926->g_750
        (VECTOR(int32_t, 2))(0x7019FF23L, 0x2102B3FBL), // p_926->g_751
        0x260F59FC39931662L, // p_926->g_755
        (VECTOR(uint32_t, 16))(0x86C7D49EL, (VECTOR(uint32_t, 4))(0x86C7D49EL, (VECTOR(uint32_t, 2))(0x86C7D49EL, 0x9AA147F4L), 0x9AA147F4L), 0x9AA147F4L, 0x86C7D49EL, 0x9AA147F4L, (VECTOR(uint32_t, 2))(0x86C7D49EL, 0x9AA147F4L), (VECTOR(uint32_t, 2))(0x86C7D49EL, 0x9AA147F4L), 0x86C7D49EL, 0x9AA147F4L, 0x86C7D49EL, 0x9AA147F4L), // p_926->g_763
        (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, (-1L)), (-1L)), // p_926->g_764
        (VECTOR(uint32_t, 2))(0xBD53318DL, 0x42D3F661L), // p_926->g_793
        (VECTOR(uint64_t, 4))(0xF2FDC828E66ACCCFL, (VECTOR(uint64_t, 2))(0xF2FDC828E66ACCCFL, 0x060F729C1A62DDFCL), 0x060F729C1A62DDFCL), // p_926->g_799
        (VECTOR(int8_t, 2))(0x19L, 0x22L), // p_926->g_829
        (VECTOR(uint16_t, 16))(4UL, (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0xA122L), 0xA122L), 0xA122L, 4UL, 0xA122L, (VECTOR(uint16_t, 2))(4UL, 0xA122L), (VECTOR(uint16_t, 2))(4UL, 0xA122L), 4UL, 0xA122L, 4UL, 0xA122L), // p_926->g_910
        sequence_input[get_global_id(0)], // p_926->global_0_offset
        sequence_input[get_global_id(1)], // p_926->global_1_offset
        sequence_input[get_global_id(2)], // p_926->global_2_offset
        sequence_input[get_local_id(0)], // p_926->local_0_offset
        sequence_input[get_local_id(1)], // p_926->local_1_offset
        sequence_input[get_local_id(2)], // p_926->local_2_offset
        sequence_input[get_group_id(0)], // p_926->group_0_offset
        sequence_input[get_group_id(1)], // p_926->group_1_offset
        sequence_input[get_group_id(2)], // p_926->group_2_offset
    };
    c_927 = c_928;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_926);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_926->g_3, "p_926->g_3", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_926->g_5[i][j], "p_926->g_5[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_926->g_8, "p_926->g_8", print_hash_value);
    transparent_crc(p_926->g_9, "p_926->g_9", print_hash_value);
    transparent_crc(p_926->g_24.f0, "p_926->g_24.f0", print_hash_value);
    transparent_crc(p_926->g_24.f1, "p_926->g_24.f1", print_hash_value);
    transparent_crc(p_926->g_24.f2, "p_926->g_24.f2", print_hash_value);
    transparent_crc(p_926->g_24.f3, "p_926->g_24.f3", print_hash_value);
    transparent_crc(p_926->g_24.f4, "p_926->g_24.f4", print_hash_value);
    transparent_crc(p_926->g_36, "p_926->g_36", print_hash_value);
    transparent_crc(p_926->g_81.f0, "p_926->g_81.f0", print_hash_value);
    transparent_crc(p_926->g_81.f1, "p_926->g_81.f1", print_hash_value);
    transparent_crc(p_926->g_81.f2, "p_926->g_81.f2", print_hash_value);
    transparent_crc(p_926->g_81.f3, "p_926->g_81.f3", print_hash_value);
    transparent_crc(p_926->g_81.f4, "p_926->g_81.f4", print_hash_value);
    transparent_crc(p_926->g_101, "p_926->g_101", print_hash_value);
    transparent_crc(p_926->g_113, "p_926->g_113", print_hash_value);
    transparent_crc(p_926->g_116, "p_926->g_116", print_hash_value);
    transparent_crc(p_926->g_117, "p_926->g_117", print_hash_value);
    transparent_crc(p_926->g_122.f0, "p_926->g_122.f0", print_hash_value);
    transparent_crc(p_926->g_122.f1, "p_926->g_122.f1", print_hash_value);
    transparent_crc(p_926->g_122.f2, "p_926->g_122.f2", print_hash_value);
    transparent_crc(p_926->g_122.f3, "p_926->g_122.f3", print_hash_value);
    transparent_crc(p_926->g_122.f4, "p_926->g_122.f4", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_926->g_125[i], "p_926->g_125[i]", print_hash_value);

    }
    transparent_crc(p_926->g_141.s0, "p_926->g_141.s0", print_hash_value);
    transparent_crc(p_926->g_141.s1, "p_926->g_141.s1", print_hash_value);
    transparent_crc(p_926->g_141.s2, "p_926->g_141.s2", print_hash_value);
    transparent_crc(p_926->g_141.s3, "p_926->g_141.s3", print_hash_value);
    transparent_crc(p_926->g_141.s4, "p_926->g_141.s4", print_hash_value);
    transparent_crc(p_926->g_141.s5, "p_926->g_141.s5", print_hash_value);
    transparent_crc(p_926->g_141.s6, "p_926->g_141.s6", print_hash_value);
    transparent_crc(p_926->g_141.s7, "p_926->g_141.s7", print_hash_value);
    transparent_crc(p_926->g_142.x, "p_926->g_142.x", print_hash_value);
    transparent_crc(p_926->g_142.y, "p_926->g_142.y", print_hash_value);
    transparent_crc(p_926->g_142.z, "p_926->g_142.z", print_hash_value);
    transparent_crc(p_926->g_142.w, "p_926->g_142.w", print_hash_value);
    transparent_crc(p_926->g_179, "p_926->g_179", print_hash_value);
    transparent_crc(p_926->g_191.x, "p_926->g_191.x", print_hash_value);
    transparent_crc(p_926->g_191.y, "p_926->g_191.y", print_hash_value);
    transparent_crc(p_926->g_191.z, "p_926->g_191.z", print_hash_value);
    transparent_crc(p_926->g_191.w, "p_926->g_191.w", print_hash_value);
    transparent_crc(p_926->g_195, "p_926->g_195", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_926->g_197[i], "p_926->g_197[i]", print_hash_value);

    }
    transparent_crc(p_926->g_222.x, "p_926->g_222.x", print_hash_value);
    transparent_crc(p_926->g_222.y, "p_926->g_222.y", print_hash_value);
    transparent_crc(p_926->g_229, "p_926->g_229", print_hash_value);
    transparent_crc(p_926->g_244.x, "p_926->g_244.x", print_hash_value);
    transparent_crc(p_926->g_244.y, "p_926->g_244.y", print_hash_value);
    transparent_crc(p_926->g_327.s0, "p_926->g_327.s0", print_hash_value);
    transparent_crc(p_926->g_327.s1, "p_926->g_327.s1", print_hash_value);
    transparent_crc(p_926->g_327.s2, "p_926->g_327.s2", print_hash_value);
    transparent_crc(p_926->g_327.s3, "p_926->g_327.s3", print_hash_value);
    transparent_crc(p_926->g_327.s4, "p_926->g_327.s4", print_hash_value);
    transparent_crc(p_926->g_327.s5, "p_926->g_327.s5", print_hash_value);
    transparent_crc(p_926->g_327.s6, "p_926->g_327.s6", print_hash_value);
    transparent_crc(p_926->g_327.s7, "p_926->g_327.s7", print_hash_value);
    transparent_crc(p_926->g_339.s0, "p_926->g_339.s0", print_hash_value);
    transparent_crc(p_926->g_339.s1, "p_926->g_339.s1", print_hash_value);
    transparent_crc(p_926->g_339.s2, "p_926->g_339.s2", print_hash_value);
    transparent_crc(p_926->g_339.s3, "p_926->g_339.s3", print_hash_value);
    transparent_crc(p_926->g_339.s4, "p_926->g_339.s4", print_hash_value);
    transparent_crc(p_926->g_339.s5, "p_926->g_339.s5", print_hash_value);
    transparent_crc(p_926->g_339.s6, "p_926->g_339.s6", print_hash_value);
    transparent_crc(p_926->g_339.s7, "p_926->g_339.s7", print_hash_value);
    transparent_crc(p_926->g_346, "p_926->g_346", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_926->g_356[i][j][k], "p_926->g_356[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_926->g_358, "p_926->g_358", print_hash_value);
    transparent_crc(p_926->g_400.s0, "p_926->g_400.s0", print_hash_value);
    transparent_crc(p_926->g_400.s1, "p_926->g_400.s1", print_hash_value);
    transparent_crc(p_926->g_400.s2, "p_926->g_400.s2", print_hash_value);
    transparent_crc(p_926->g_400.s3, "p_926->g_400.s3", print_hash_value);
    transparent_crc(p_926->g_400.s4, "p_926->g_400.s4", print_hash_value);
    transparent_crc(p_926->g_400.s5, "p_926->g_400.s5", print_hash_value);
    transparent_crc(p_926->g_400.s6, "p_926->g_400.s6", print_hash_value);
    transparent_crc(p_926->g_400.s7, "p_926->g_400.s7", print_hash_value);
    transparent_crc(p_926->g_400.s8, "p_926->g_400.s8", print_hash_value);
    transparent_crc(p_926->g_400.s9, "p_926->g_400.s9", print_hash_value);
    transparent_crc(p_926->g_400.sa, "p_926->g_400.sa", print_hash_value);
    transparent_crc(p_926->g_400.sb, "p_926->g_400.sb", print_hash_value);
    transparent_crc(p_926->g_400.sc, "p_926->g_400.sc", print_hash_value);
    transparent_crc(p_926->g_400.sd, "p_926->g_400.sd", print_hash_value);
    transparent_crc(p_926->g_400.se, "p_926->g_400.se", print_hash_value);
    transparent_crc(p_926->g_400.sf, "p_926->g_400.sf", print_hash_value);
    transparent_crc(p_926->g_410, "p_926->g_410", print_hash_value);
    transparent_crc(p_926->g_422.s0, "p_926->g_422.s0", print_hash_value);
    transparent_crc(p_926->g_422.s1, "p_926->g_422.s1", print_hash_value);
    transparent_crc(p_926->g_422.s2, "p_926->g_422.s2", print_hash_value);
    transparent_crc(p_926->g_422.s3, "p_926->g_422.s3", print_hash_value);
    transparent_crc(p_926->g_422.s4, "p_926->g_422.s4", print_hash_value);
    transparent_crc(p_926->g_422.s5, "p_926->g_422.s5", print_hash_value);
    transparent_crc(p_926->g_422.s6, "p_926->g_422.s6", print_hash_value);
    transparent_crc(p_926->g_422.s7, "p_926->g_422.s7", print_hash_value);
    transparent_crc(p_926->g_429.s0, "p_926->g_429.s0", print_hash_value);
    transparent_crc(p_926->g_429.s1, "p_926->g_429.s1", print_hash_value);
    transparent_crc(p_926->g_429.s2, "p_926->g_429.s2", print_hash_value);
    transparent_crc(p_926->g_429.s3, "p_926->g_429.s3", print_hash_value);
    transparent_crc(p_926->g_429.s4, "p_926->g_429.s4", print_hash_value);
    transparent_crc(p_926->g_429.s5, "p_926->g_429.s5", print_hash_value);
    transparent_crc(p_926->g_429.s6, "p_926->g_429.s6", print_hash_value);
    transparent_crc(p_926->g_429.s7, "p_926->g_429.s7", print_hash_value);
    transparent_crc(p_926->g_433, "p_926->g_433", print_hash_value);
    transparent_crc(p_926->g_436, "p_926->g_436", print_hash_value);
    transparent_crc(p_926->g_443, "p_926->g_443", print_hash_value);
    transparent_crc(p_926->g_444, "p_926->g_444", print_hash_value);
    transparent_crc(p_926->g_461.x, "p_926->g_461.x", print_hash_value);
    transparent_crc(p_926->g_461.y, "p_926->g_461.y", print_hash_value);
    transparent_crc(p_926->g_480.s0, "p_926->g_480.s0", print_hash_value);
    transparent_crc(p_926->g_480.s1, "p_926->g_480.s1", print_hash_value);
    transparent_crc(p_926->g_480.s2, "p_926->g_480.s2", print_hash_value);
    transparent_crc(p_926->g_480.s3, "p_926->g_480.s3", print_hash_value);
    transparent_crc(p_926->g_480.s4, "p_926->g_480.s4", print_hash_value);
    transparent_crc(p_926->g_480.s5, "p_926->g_480.s5", print_hash_value);
    transparent_crc(p_926->g_480.s6, "p_926->g_480.s6", print_hash_value);
    transparent_crc(p_926->g_480.s7, "p_926->g_480.s7", print_hash_value);
    transparent_crc(p_926->g_480.s8, "p_926->g_480.s8", print_hash_value);
    transparent_crc(p_926->g_480.s9, "p_926->g_480.s9", print_hash_value);
    transparent_crc(p_926->g_480.sa, "p_926->g_480.sa", print_hash_value);
    transparent_crc(p_926->g_480.sb, "p_926->g_480.sb", print_hash_value);
    transparent_crc(p_926->g_480.sc, "p_926->g_480.sc", print_hash_value);
    transparent_crc(p_926->g_480.sd, "p_926->g_480.sd", print_hash_value);
    transparent_crc(p_926->g_480.se, "p_926->g_480.se", print_hash_value);
    transparent_crc(p_926->g_480.sf, "p_926->g_480.sf", print_hash_value);
    transparent_crc(p_926->g_481.s0, "p_926->g_481.s0", print_hash_value);
    transparent_crc(p_926->g_481.s1, "p_926->g_481.s1", print_hash_value);
    transparent_crc(p_926->g_481.s2, "p_926->g_481.s2", print_hash_value);
    transparent_crc(p_926->g_481.s3, "p_926->g_481.s3", print_hash_value);
    transparent_crc(p_926->g_481.s4, "p_926->g_481.s4", print_hash_value);
    transparent_crc(p_926->g_481.s5, "p_926->g_481.s5", print_hash_value);
    transparent_crc(p_926->g_481.s6, "p_926->g_481.s6", print_hash_value);
    transparent_crc(p_926->g_481.s7, "p_926->g_481.s7", print_hash_value);
    transparent_crc(p_926->g_481.s8, "p_926->g_481.s8", print_hash_value);
    transparent_crc(p_926->g_481.s9, "p_926->g_481.s9", print_hash_value);
    transparent_crc(p_926->g_481.sa, "p_926->g_481.sa", print_hash_value);
    transparent_crc(p_926->g_481.sb, "p_926->g_481.sb", print_hash_value);
    transparent_crc(p_926->g_481.sc, "p_926->g_481.sc", print_hash_value);
    transparent_crc(p_926->g_481.sd, "p_926->g_481.sd", print_hash_value);
    transparent_crc(p_926->g_481.se, "p_926->g_481.se", print_hash_value);
    transparent_crc(p_926->g_481.sf, "p_926->g_481.sf", print_hash_value);
    transparent_crc(p_926->g_512.x, "p_926->g_512.x", print_hash_value);
    transparent_crc(p_926->g_512.y, "p_926->g_512.y", print_hash_value);
    transparent_crc(p_926->g_512.z, "p_926->g_512.z", print_hash_value);
    transparent_crc(p_926->g_512.w, "p_926->g_512.w", print_hash_value);
    transparent_crc(p_926->g_522, "p_926->g_522", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_926->g_575[i][j][k], "p_926->g_575[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_926->g_585, "p_926->g_585", print_hash_value);
    transparent_crc(p_926->g_606, "p_926->g_606", print_hash_value);
    transparent_crc(p_926->g_612, "p_926->g_612", print_hash_value);
    transparent_crc(p_926->g_619.x, "p_926->g_619.x", print_hash_value);
    transparent_crc(p_926->g_619.y, "p_926->g_619.y", print_hash_value);
    transparent_crc(p_926->g_619.z, "p_926->g_619.z", print_hash_value);
    transparent_crc(p_926->g_619.w, "p_926->g_619.w", print_hash_value);
    transparent_crc(p_926->g_648, "p_926->g_648", print_hash_value);
    transparent_crc(p_926->g_732.x, "p_926->g_732.x", print_hash_value);
    transparent_crc(p_926->g_732.y, "p_926->g_732.y", print_hash_value);
    transparent_crc(p_926->g_742, "p_926->g_742", print_hash_value);
    transparent_crc(p_926->g_750.s0, "p_926->g_750.s0", print_hash_value);
    transparent_crc(p_926->g_750.s1, "p_926->g_750.s1", print_hash_value);
    transparent_crc(p_926->g_750.s2, "p_926->g_750.s2", print_hash_value);
    transparent_crc(p_926->g_750.s3, "p_926->g_750.s3", print_hash_value);
    transparent_crc(p_926->g_750.s4, "p_926->g_750.s4", print_hash_value);
    transparent_crc(p_926->g_750.s5, "p_926->g_750.s5", print_hash_value);
    transparent_crc(p_926->g_750.s6, "p_926->g_750.s6", print_hash_value);
    transparent_crc(p_926->g_750.s7, "p_926->g_750.s7", print_hash_value);
    transparent_crc(p_926->g_751.x, "p_926->g_751.x", print_hash_value);
    transparent_crc(p_926->g_751.y, "p_926->g_751.y", print_hash_value);
    transparent_crc(p_926->g_755, "p_926->g_755", print_hash_value);
    transparent_crc(p_926->g_763.s0, "p_926->g_763.s0", print_hash_value);
    transparent_crc(p_926->g_763.s1, "p_926->g_763.s1", print_hash_value);
    transparent_crc(p_926->g_763.s2, "p_926->g_763.s2", print_hash_value);
    transparent_crc(p_926->g_763.s3, "p_926->g_763.s3", print_hash_value);
    transparent_crc(p_926->g_763.s4, "p_926->g_763.s4", print_hash_value);
    transparent_crc(p_926->g_763.s5, "p_926->g_763.s5", print_hash_value);
    transparent_crc(p_926->g_763.s6, "p_926->g_763.s6", print_hash_value);
    transparent_crc(p_926->g_763.s7, "p_926->g_763.s7", print_hash_value);
    transparent_crc(p_926->g_763.s8, "p_926->g_763.s8", print_hash_value);
    transparent_crc(p_926->g_763.s9, "p_926->g_763.s9", print_hash_value);
    transparent_crc(p_926->g_763.sa, "p_926->g_763.sa", print_hash_value);
    transparent_crc(p_926->g_763.sb, "p_926->g_763.sb", print_hash_value);
    transparent_crc(p_926->g_763.sc, "p_926->g_763.sc", print_hash_value);
    transparent_crc(p_926->g_763.sd, "p_926->g_763.sd", print_hash_value);
    transparent_crc(p_926->g_763.se, "p_926->g_763.se", print_hash_value);
    transparent_crc(p_926->g_763.sf, "p_926->g_763.sf", print_hash_value);
    transparent_crc(p_926->g_764.x, "p_926->g_764.x", print_hash_value);
    transparent_crc(p_926->g_764.y, "p_926->g_764.y", print_hash_value);
    transparent_crc(p_926->g_764.z, "p_926->g_764.z", print_hash_value);
    transparent_crc(p_926->g_764.w, "p_926->g_764.w", print_hash_value);
    transparent_crc(p_926->g_793.x, "p_926->g_793.x", print_hash_value);
    transparent_crc(p_926->g_793.y, "p_926->g_793.y", print_hash_value);
    transparent_crc(p_926->g_799.x, "p_926->g_799.x", print_hash_value);
    transparent_crc(p_926->g_799.y, "p_926->g_799.y", print_hash_value);
    transparent_crc(p_926->g_799.z, "p_926->g_799.z", print_hash_value);
    transparent_crc(p_926->g_799.w, "p_926->g_799.w", print_hash_value);
    transparent_crc(p_926->g_829.x, "p_926->g_829.x", print_hash_value);
    transparent_crc(p_926->g_829.y, "p_926->g_829.y", print_hash_value);
    transparent_crc(p_926->g_910.s0, "p_926->g_910.s0", print_hash_value);
    transparent_crc(p_926->g_910.s1, "p_926->g_910.s1", print_hash_value);
    transparent_crc(p_926->g_910.s2, "p_926->g_910.s2", print_hash_value);
    transparent_crc(p_926->g_910.s3, "p_926->g_910.s3", print_hash_value);
    transparent_crc(p_926->g_910.s4, "p_926->g_910.s4", print_hash_value);
    transparent_crc(p_926->g_910.s5, "p_926->g_910.s5", print_hash_value);
    transparent_crc(p_926->g_910.s6, "p_926->g_910.s6", print_hash_value);
    transparent_crc(p_926->g_910.s7, "p_926->g_910.s7", print_hash_value);
    transparent_crc(p_926->g_910.s8, "p_926->g_910.s8", print_hash_value);
    transparent_crc(p_926->g_910.s9, "p_926->g_910.s9", print_hash_value);
    transparent_crc(p_926->g_910.sa, "p_926->g_910.sa", print_hash_value);
    transparent_crc(p_926->g_910.sb, "p_926->g_910.sb", print_hash_value);
    transparent_crc(p_926->g_910.sc, "p_926->g_910.sc", print_hash_value);
    transparent_crc(p_926->g_910.sd, "p_926->g_910.sd", print_hash_value);
    transparent_crc(p_926->g_910.se, "p_926->g_910.se", print_hash_value);
    transparent_crc(p_926->g_910.sf, "p_926->g_910.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
