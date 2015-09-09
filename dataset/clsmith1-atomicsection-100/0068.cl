// --atomics 69 ---fake_divergence -g 41,71,3 -l 41,1,1
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


// Seed: 68

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   volatile uint8_t  f1;
   volatile uint32_t  f2;
};

struct S1 {
    volatile int32_t g_3;
    volatile int32_t g_4;
    int32_t g_5[1];
    uint32_t g_34[4];
    uint64_t g_38;
    int32_t g_50[7];
    uint64_t g_81;
    uint8_t g_83[9][2];
    uint64_t *g_84;
    int64_t g_116;
    struct S0 g_117[10][8];
    uint16_t g_153;
    volatile struct S0 g_159[7][8];
    int32_t ** volatile g_176;
    struct S0 g_191[5];
    struct S0 g_192[4][1];
    struct S0 g_259;
    volatile struct S0 g_260[7][5];
    int8_t g_264[7];
    int32_t g_266[6][5][3];
    int32_t *g_287[9][3][9];
    volatile struct S0 g_289;
    struct S0 g_290;
    uint32_t g_304;
    struct S0 *g_307;
    int16_t g_324[3];
    int32_t g_336;
    uint8_t g_342;
    uint64_t g_345;
    int32_t * volatile g_348;
    int32_t *g_365;
    struct S0 g_378[9];
    int32_t **g_396[9][3];
    int32_t ** volatile g_407;
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
uint8_t  func_1(struct S1 * p_408);
int32_t * func_6(int32_t * p_7, int32_t * p_8, int32_t  p_9, uint32_t  p_10, struct S1 * p_408);
int32_t * func_11(int32_t * p_12, int32_t  p_13, int64_t  p_14, int32_t * p_15, int32_t * p_16, struct S1 * p_408);
int32_t * func_17(int32_t * p_18, int32_t  p_19, struct S1 * p_408);
int32_t * func_21(int16_t  p_22, struct S1 * p_408);
int16_t  func_23(int32_t  p_24, struct S1 * p_408);
int32_t * func_39(uint32_t  p_40, uint64_t * p_41, struct S1 * p_408);
int32_t * func_52(int32_t ** p_53, int32_t * p_54, uint64_t  p_55, struct S1 * p_408);
int32_t * func_56(int32_t ** p_57, struct S1 * p_408);
uint64_t  func_58(uint64_t * p_59, uint64_t  p_60, int64_t  p_61, uint64_t * p_62, struct S1 * p_408);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_408->g_5 p_408->g_3 p_408->g_34 p_408->g_38 p_408->g_81 p_408->g_84 p_408->g_159 p_408->g_290 p_408->g_192.f0 p_408->g_50 p_408->g_264 p_408->g_287 p_408->g_260.f1 p_408->g_266 p_408->g_324 p_408->g_345 p_408->g_348 p_408->g_336 p_408->g_365 p_408->g_83 p_408->g_307 p_408->g_342 p_408->g_116 p_408->g_407
 * writes: p_408->g_5 p_408->g_34 p_408->g_38 p_408->g_81 p_408->g_50 p_408->g_83 p_408->g_287 p_408->g_289 p_408->g_153 p_408->g_117 p_408->g_3 p_408->g_4 p_408->g_191 p_408->g_304 p_408->g_307 p_408->g_336 p_408->g_259.f0 p_408->g_345 p_408->g_264 p_408->g_396 p_408->g_365
 */
uint8_t  func_1(struct S1 * p_408)
{ /* block id: 4 */
    int32_t l_2[5][1][8] = {{{7L,0x58BAC04EL,0x14C405B4L,1L,0x14C405B4L,0x58BAC04EL,7L,0x4990069FL}},{{7L,0x58BAC04EL,0x14C405B4L,1L,0x14C405B4L,0x58BAC04EL,7L,0x4990069FL}},{{7L,0x58BAC04EL,0x14C405B4L,1L,0x14C405B4L,0x58BAC04EL,7L,0x4990069FL}},{{7L,0x58BAC04EL,0x14C405B4L,1L,0x14C405B4L,0x58BAC04EL,7L,0x4990069FL}},{{7L,0x58BAC04EL,0x14C405B4L,1L,0x14C405B4L,0x58BAC04EL,7L,0x4990069FL}}};
    int32_t *l_20 = (void*)0;
    int64_t *l_373 = &p_408->g_116;
    int32_t l_405 = 0x136BE72DL;
    int32_t **l_406 = (void*)0;
    int i, j, k;
    for (p_408->g_5[0] = 0; (p_408->g_5[0] <= 0); p_408->g_5[0] += 1)
    { /* block id: 7 */
        int32_t **l_337 = &p_408->g_287[0][2][4];
        uint32_t *l_338 = &p_408->g_259.f0;
        uint8_t *l_341 = &p_408->g_342;
        uint64_t *l_344 = &p_408->g_345;
        uint64_t **l_343 = &l_344;
        int32_t **l_347[3][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t ***l_346 = &l_347[2][1];
        int64_t *l_376 = &p_408->g_116;
        uint8_t l_392 = 0x8EL;
        int i, j;
        (*l_337) = func_6(func_11(((*l_337) = func_17(l_20, p_408->g_5[0], p_408)), p_408->g_290.f0, (p_408->g_266[2][1][2] , (((*l_346) = ((((*l_343) = ((((*l_338) = 0UL) >= ((safe_div_func_uint16_t_u_u(0xED78L, ((((p_408->g_324[0] , l_341) != &p_408->g_342) < (-8L)) || p_408->g_264[0]))) ^ l_2[3][0][1])) , p_408->g_84)) != &p_408->g_345) , &l_20)) != &l_20)), &p_408->g_5[0], &p_408->g_5[0], p_408), &p_408->g_5[0], l_2[3][0][1], p_408->g_324[2], p_408);
        for (p_408->g_345 = 0; (p_408->g_345 <= 0); p_408->g_345 += 1)
        { /* block id: 212 */
            int64_t **l_370 = (void*)0;
            int64_t *l_372 = (void*)0;
            int64_t **l_371 = &l_372;
            int64_t *l_375 = (void*)0;
            int64_t **l_374[4][6] = {{&l_375,&l_375,&l_375,&l_375,&l_375,&l_375},{&l_375,&l_375,&l_375,&l_375,&l_375,&l_375},{&l_375,&l_375,&l_375,&l_375,&l_375,&l_375},{&l_375,&l_375,&l_375,&l_375,&l_375,&l_375}};
            struct S0 *l_377 = &p_408->g_378[5];
            int32_t l_391 = (-2L);
            int32_t l_393 = 0x64FD58C5L;
            int i, j;
            if ((*p_408->g_348))
                break;
            l_393 = ((((p_408->g_3 && (safe_div_func_uint8_t_u_u((((*l_371) = &p_408->g_116) == (l_376 = (l_373 = l_344))), 1UL))) >= p_408->g_83[6][0]) & (p_408->g_307 == l_377)) > ((safe_mul_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((p_408->g_264[1] = ((safe_div_func_int32_t_s_s((((p_408->g_153 = (safe_rshift_func_uint8_t_u_u((0UL != (safe_lshift_func_int16_t_s_u(((safe_lshift_func_uint8_t_u_u(l_391, 0)) < 0x176BL), l_2[0][0][7]))), 6))) ^ p_408->g_266[2][2][1]) , l_392), l_391)) & FAKE_DIVERGE(p_408->global_0_offset, get_global_id(0), 10))), p_408->g_192[3][0].f0)), (-1L))) >= p_408->g_38));
            for (p_408->g_336 = 0; (p_408->g_336 <= 0); p_408->g_336 += 1)
            { /* block id: 222 */
                return p_408->g_324[2];
            }
        }
    }
    (*p_408->g_407) = func_39((((l_2[0][0][7] && l_2[2][0][4]) && ((p_408->g_396[2][1] = &l_20) == &l_20)) & (safe_lshift_func_int8_t_s_s(((p_408->g_266[2][2][1] < ((safe_sub_func_int8_t_s_s((safe_mod_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s((p_408->g_342 > l_2[2][0][1]), 0x19L)) >= l_405), p_408->g_260[6][4].f1)), (-1L))) || p_408->g_116)) | l_405), p_408->g_324[0]))), l_373, p_408);
    return p_408->g_5[0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_6(int32_t * p_7, int32_t * p_8, int32_t  p_9, uint32_t  p_10, struct S1 * p_408)
{ /* block id: 206 */
    uint64_t *l_366 = &p_408->g_345;
    int32_t *l_367[10] = {&p_408->g_50[6],(void*)0,&p_408->g_50[6],&p_408->g_50[6],(void*)0,&p_408->g_50[6],&p_408->g_50[6],(void*)0,&p_408->g_50[6],&p_408->g_50[6]};
    int i;
    p_9 = (l_366 != l_366);
    return l_367[6];
}


/* ------------------------------------------ */
/* 
 * reads : p_408->g_81 p_408->g_345 p_408->g_50 p_408->g_348 p_408->g_336 p_408->g_159 p_408->g_290 p_408->g_365
 * writes: p_408->g_81 p_408->g_345 p_408->g_336 p_408->g_289 p_408->g_153 p_408->g_38 p_408->g_117 p_408->g_3 p_408->g_4 p_408->g_83 p_408->g_191 p_408->g_287 p_408->g_50
 */
int32_t * func_11(int32_t * p_12, int32_t  p_13, int64_t  p_14, int32_t * p_15, int32_t * p_16, struct S1 * p_408)
{ /* block id: 175 */
    int32_t l_354 = 0x77423A52L;
    uint64_t *l_359 = &p_408->g_345;
    uint64_t **l_358[1][8];
    int32_t *l_360 = (void*)0;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
            l_358[i][j] = &l_359;
    }
    for (p_408->g_81 = 0; (p_408->g_81 <= 6); p_408->g_81 += 1)
    { /* block id: 178 */
        int32_t l_350 = 0x15929E0DL;
        int32_t l_353 = (-1L);
        uint64_t l_355 = 0xACB4DB1A413F0ADCL;
        int i;
        for (p_408->g_345 = 0; (p_408->g_345 <= 2); p_408->g_345 += 1)
        { /* block id: 181 */
            int i;
            (*p_408->g_348) &= p_408->g_50[(p_408->g_345 + 3)];
            for (p_14 = 0; (p_14 <= 2); p_14 += 1)
            { /* block id: 185 */
                int32_t *l_349 = &p_408->g_50[(p_408->g_345 + 3)];
                int32_t *l_351 = &p_408->g_50[5];
                int32_t *l_352[10];
                int i;
                for (i = 0; i < 10; i++)
                    l_352[i] = &p_408->g_50[p_408->g_81];
                ++l_355;
            }
        }
        l_360 = (p_408->g_287[5][1][3] = func_52(&p_16, p_12, ((void*)0 == l_358[0][6]), p_408));
        (*p_408->g_348) &= (safe_rshift_func_uint8_t_u_u(p_408->g_50[p_408->g_81], 5));
        (*p_12) &= (*p_408->g_348);
        for (l_350 = 2; (l_350 >= 0); l_350 -= 1)
        { /* block id: 195 */
            int32_t *l_363[4];
            int32_t **l_364 = &l_363[3];
            int i;
            for (i = 0; i < 4; i++)
                l_363[i] = &p_408->g_50[4];
            (*l_364) = l_363[3];
            for (p_14 = 0; (p_14 <= 7); p_14 += 1)
            { /* block id: 199 */
                int i, j, k;
                if ((**l_364))
                    break;
                return p_16;
            }
        }
    }
    return p_408->g_365;
}


/* ------------------------------------------ */
/* 
 * reads : p_408->g_3 p_408->g_5 p_408->g_34 p_408->g_38 p_408->g_81 p_408->g_84 p_408->g_159 p_408->g_290 p_408->g_192.f0 p_408->g_50 p_408->g_264 p_408->g_287 p_408->g_153 p_408->g_260.f1
 * writes: p_408->g_34 p_408->g_38 p_408->g_81 p_408->g_50 p_408->g_83 p_408->g_287 p_408->g_289 p_408->g_153 p_408->g_117 p_408->g_3 p_408->g_4 p_408->g_191 p_408->g_304 p_408->g_307 p_408->g_336
 */
int32_t * func_17(int32_t * p_18, int32_t  p_19, struct S1 * p_408)
{ /* block id: 8 */
    uint32_t l_27 = 4294967289UL;
    int32_t l_30 = 0x51FD9AB8L;
    uint32_t *l_33 = &p_408->g_34[0];
    uint64_t *l_37 = &p_408->g_38;
    int32_t **l_332 = &p_408->g_287[0][2][4];
    int32_t *l_333 = &p_408->g_50[6];
    int32_t *l_334 = (void*)0;
    int32_t *l_335 = &p_408->g_336;
    (*l_335) = ((*l_333) = (((*l_332) = func_21(func_23((safe_mul_func_uint16_t_u_u(l_27, (p_19 , (((*l_37) |= ((p_408->g_3 & (FAKE_DIVERGE(p_408->global_1_offset, get_global_id(1), 10) <= 0x72FA5D8720725FC1L)) & (((p_408->g_5[0] < ((safe_mod_func_uint8_t_u_u(l_30, p_19)) | (p_19 , (safe_lshift_func_uint16_t_u_s(((((*l_33)++) && l_30) != (-1L)), p_408->g_5[0]))))) ^ l_30) && p_408->g_34[0]))) , 0x12A7L)))), p_408), p_408)) != &p_408->g_5[0]));
    return &p_408->g_50[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_408->g_159 p_408->g_290 p_408->g_287 p_408->g_153 p_408->g_260.f1
 * writes: p_408->g_289 p_408->g_153 p_408->g_38 p_408->g_117 p_408->g_3 p_408->g_4 p_408->g_83 p_408->g_191 p_408->g_287 p_408->g_50
 */
int32_t * func_21(int16_t  p_22, struct S1 * p_408)
{ /* block id: 154 */
    int32_t *l_308 = &p_408->g_50[3];
    int32_t **l_309[2][3] = {{&p_408->g_287[0][2][4],&p_408->g_287[0][2][4],&p_408->g_287[0][2][4]},{&p_408->g_287[0][2][4],&p_408->g_287[0][2][4],&p_408->g_287[0][2][4]}};
    int8_t l_310 = 0x7CL;
    uint32_t l_311[5][8][6] = {{{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L}},{{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L}},{{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L}},{{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L}},{{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L},{0xFCE2443AL,0x806CCE8BL,0xAEFCE2A1L,4294967295UL,1UL,0xDAF02A73L}}};
    int32_t *l_331[6][3][1] = {{{&p_408->g_5[0]},{&p_408->g_5[0]},{&p_408->g_5[0]}},{{&p_408->g_5[0]},{&p_408->g_5[0]},{&p_408->g_5[0]}},{{&p_408->g_5[0]},{&p_408->g_5[0]},{&p_408->g_5[0]}},{{&p_408->g_5[0]},{&p_408->g_5[0]},{&p_408->g_5[0]}},{{&p_408->g_5[0]},{&p_408->g_5[0]},{&p_408->g_5[0]}},{{&p_408->g_5[0]},{&p_408->g_5[0]},{&p_408->g_5[0]}}};
    int i, j, k;
    p_408->g_287[4][1][3] = func_52(&p_408->g_287[0][2][4], l_308, p_22, p_408);
    l_311[3][4][1]--;
    for (p_408->g_153 = 15; (p_408->g_153 != 59); p_408->g_153 = safe_add_func_uint16_t_u_u(p_408->g_153, 6))
    { /* block id: 159 */
        int64_t *l_316[8] = {&p_408->g_116,&p_408->g_116,&p_408->g_116,&p_408->g_116,&p_408->g_116,&p_408->g_116,&p_408->g_116,&p_408->g_116};
        int64_t **l_317 = &l_316[4];
        int32_t l_322 = 0x029C1A4BL;
        int16_t *l_323[3][5][1] = {{{&p_408->g_324[2]},{&p_408->g_324[2]},{&p_408->g_324[2]},{&p_408->g_324[2]},{&p_408->g_324[2]}},{{&p_408->g_324[2]},{&p_408->g_324[2]},{&p_408->g_324[2]},{&p_408->g_324[2]},{&p_408->g_324[2]}},{{&p_408->g_324[2]},{&p_408->g_324[2]},{&p_408->g_324[2]},{&p_408->g_324[2]},{&p_408->g_324[2]}}};
        uint32_t *l_326[6] = {&p_408->g_117[7][1].f0,(void*)0,&p_408->g_117[7][1].f0,&p_408->g_117[7][1].f0,(void*)0,&p_408->g_117[7][1].f0};
        uint32_t **l_325 = &l_326[4];
        int32_t l_329 = 1L;
        int32_t l_330 = 0L;
        int i, j, k;
        l_330 |= ((*l_308) = ((&p_408->g_116 != ((*l_317) = l_316[4])) ^ ((p_22 == (((safe_mul_func_int16_t_s_s((p_22 , ((l_322 , (l_322 |= p_22)) | ((void*)0 == l_325))), ((safe_div_func_uint16_t_u_u((p_22 , 8UL), l_329)) , p_22))) | 4294967295UL) || 0xA5A8L)) != p_408->g_260[6][4].f1)));
        return &p_408->g_5[0];
    }
    return l_331[5][2][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_408->g_3 p_408->g_5 p_408->g_81 p_408->g_34 p_408->g_84 p_408->g_159 p_408->g_290 p_408->g_192.f0 p_408->g_50 p_408->g_264 p_408->g_287
 * writes: p_408->g_38 p_408->g_81 p_408->g_50 p_408->g_83 p_408->g_287 p_408->g_289 p_408->g_153 p_408->g_117 p_408->g_3 p_408->g_4 p_408->g_191 p_408->g_304 p_408->g_307
 */
int16_t  func_23(int32_t  p_24, struct S1 * p_408)
{ /* block id: 11 */
    int32_t **l_46 = (void*)0;
    int32_t *l_48 = &p_408->g_5[0];
    int32_t **l_47[7];
    int32_t *l_49 = &p_408->g_50[6];
    uint64_t *l_64[8][6] = {{&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38},{&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38},{&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38},{&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38},{&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38},{&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38},{&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38},{&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38,&p_408->g_38}};
    uint64_t **l_63 = &l_64[7][0];
    uint64_t *l_79 = &p_408->g_38;
    uint64_t *l_80 = &p_408->g_81;
    uint8_t *l_82 = &p_408->g_83[4][1];
    struct S0 *l_305 = &p_408->g_117[1][7];
    struct S0 **l_306[5];
    int i, j;
    for (i = 0; i < 7; i++)
        l_47[i] = &l_48;
    for (i = 0; i < 5; i++)
        l_306[i] = &l_305;
    p_408->g_287[0][2][4] = func_39((safe_mod_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(((l_49 = (void*)0) == ((safe_unary_minus_func_uint8_t_u(0x1AL)) , func_52(&l_48, (p_408->g_287[3][2][1] = func_56((func_58(((*l_63) = &p_408->g_38), (safe_div_func_uint16_t_u_u(((p_24 != (((*l_82) = ((safe_lshift_func_int8_t_s_s((safe_div_func_uint64_t_u_u(((safe_mod_func_int32_t_s_s((p_408->g_50[6] = (safe_div_func_uint64_t_u_u((safe_div_func_int16_t_s_s((((p_408->g_3 == 4294967287UL) || (((*l_80) &= ((((*l_79) = (safe_rshift_func_int8_t_s_u((*l_48), 7))) , 9L) ^ p_408->g_3)) || p_408->g_5[0])) && p_24), 0x3D52L)), (-7L)))), p_24)) , 18446744073709551615UL), p_408->g_34[2])), 6)) && p_24)) ^ p_408->g_34[0])) != p_24), p_24)), p_24, p_408->g_84, p_408) , (void*)0), p_408)), p_24, p_408))), p_24)), 1L)), p_408->g_84, p_408);
    p_408->g_307 = l_305;
    return p_24;
}


/* ------------------------------------------ */
/* 
 * reads : p_408->g_192.f0 p_408->g_50 p_408->g_3 p_408->g_264 p_408->g_287
 * writes: p_408->g_287 p_408->g_304 p_408->g_50
 */
int32_t * func_39(uint32_t  p_40, uint64_t * p_41, struct S1 * p_408)
{ /* block id: 144 */
    int32_t *l_296 = &p_408->g_50[1];
    int32_t **l_297 = &p_408->g_287[0][2][4];
    int32_t *l_299[10];
    int32_t **l_298 = &l_299[1];
    int32_t l_300[5][1];
    int i, j;
    for (i = 0; i < 10; i++)
        l_299[i] = &p_408->g_50[6];
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_300[i][j] = 0x0BDE0D46L;
    }
    (*l_296) = (safe_add_func_int32_t_s_s((l_300[2][0] ^= (p_408->g_192[3][0].f0 ^ (l_296 == ((*l_298) = ((*l_297) = ((*l_296) , l_296)))))), (safe_mul_func_int16_t_s_s((0xAF96L || (p_408->g_3 == p_40)), ((p_40 , ((GROUP_DIVERGE(0, 1) != (p_408->g_304 = (safe_unary_minus_func_int8_t_s(p_40)))) <= p_40)) , p_408->g_264[0])))));
    return (*l_297);
}


/* ------------------------------------------ */
/* 
 * reads : p_408->g_159 p_408->g_290 p_408->g_287
 * writes: p_408->g_289 p_408->g_153 p_408->g_38 p_408->g_117 p_408->g_3 p_408->g_4 p_408->g_83 p_408->g_191
 */
int32_t * func_52(int32_t ** p_53, int32_t * p_54, uint64_t  p_55, struct S1 * p_408)
{ /* block id: 138 */
    struct S0 *l_291 = &p_408->g_191[0];
    p_408->g_289 = p_408->g_159[5][5];
    for (p_408->g_153 = 0; p_408->g_153 < 10; p_408->g_153 += 1)
    {
        for (p_408->g_38 = 0; p_408->g_38 < 8; p_408->g_38 += 1)
        {
            struct S0 tmp = {{0x3579D285L,249UL,0x7F623BDBL}};
            p_408->g_117[p_408->g_153][p_408->g_38] = tmp;
        }
    }
    for (p_408->g_3 = 0; p_408->g_3 < 9; p_408->g_3 += 1)
    {
        for (p_408->g_4 = 0; p_408->g_4 < 2; p_408->g_4 += 1)
        {
            p_408->g_83[p_408->g_3][p_408->g_4] = 247UL;
        }
    }
    (*l_291) = p_408->g_290;
    return (*p_53);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_408->g_287
 */
int32_t * func_56(int32_t ** p_57, struct S1 * p_408)
{ /* block id: 133 */
    int32_t *l_284 = &p_408->g_5[0];
    int32_t **l_285[2][3][5];
    int32_t *l_286 = (void*)0;
    int32_t *l_288 = &p_408->g_50[1];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 5; k++)
                l_285[i][j][k] = &l_284;
        }
    }
    l_286 = l_284;
    p_408->g_287[0][2][4] = &p_408->g_5[0];
    return l_288;
}


/* ------------------------------------------ */
/* 
 * reads : p_408->g_81
 * writes: p_408->g_81
 */
uint64_t  func_58(uint64_t * p_59, uint64_t  p_60, int64_t  p_61, uint64_t * p_62, struct S1 * p_408)
{ /* block id: 18 */
    int16_t l_85 = 0x4A32L;
    int32_t *l_86 = (void*)0;
    int32_t *l_87 = &p_408->g_50[6];
    int32_t *l_88 = &p_408->g_50[6];
    int32_t *l_89 = &p_408->g_50[3];
    int32_t *l_90 = &p_408->g_50[6];
    int32_t *l_91[10];
    uint64_t l_92 = 4UL;
    uint8_t *l_118 = &p_408->g_83[4][1];
    uint32_t *l_123[8][7][2] = {{{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]}},{{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]}},{{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]}},{{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]}},{{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]}},{{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]}},{{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]}},{{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]},{&p_408->g_34[1],&p_408->g_34[0]}}};
    uint32_t **l_122 = &l_123[0][6][1];
    uint16_t l_172 = 65533UL;
    int64_t l_274 = 0x2187997543864813L;
    int32_t l_279 = 2L;
    int32_t l_280 = 0x162812FEL;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_91[i] = &p_408->g_50[6];
    l_92++;
    for (p_408->g_81 = 0; (p_408->g_81 <= 3); p_408->g_81 += 1)
    { /* block id: 22 */
        int16_t l_95 = 0x5EC3L;
        uint32_t *l_137 = (void*)0;
        int32_t l_161[5][8] = {{0L,0L,0x5431BED7L,0x73122300L,0x2C72209DL,(-3L),(-5L),0x5D068715L},{0L,0L,0x5431BED7L,0x73122300L,0x2C72209DL,(-3L),(-5L),0x5D068715L},{0L,0L,0x5431BED7L,0x73122300L,0x2C72209DL,(-3L),(-5L),0x5D068715L},{0L,0L,0x5431BED7L,0x73122300L,0x2C72209DL,(-3L),(-5L),0x5D068715L},{0L,0L,0x5431BED7L,0x73122300L,0x2C72209DL,(-3L),(-5L),0x5D068715L}};
        int32_t l_215[10][1] = {{0x4D836B3EL},{0x4D836B3EL},{0x4D836B3EL},{0x4D836B3EL},{0x4D836B3EL},{0x4D836B3EL},{0x4D836B3EL},{0x4D836B3EL},{0x4D836B3EL},{0x4D836B3EL}};
        uint32_t l_217 = 4294967286UL;
        uint64_t l_236[9] = {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL};
        uint64_t **l_254 = &p_408->g_84;
        int32_t l_267 = 0x2EFFB6EFL;
        int i, j;
        (1 + 1);
    }
    for (l_172 = 0; (l_172 != 46); l_172 = safe_add_func_uint16_t_u_u(l_172, 1))
    { /* block id: 129 */
        int64_t l_270 = 0x251E6BD7F7FB4EBCL;
        int32_t l_271 = 0L;
        int32_t l_272 = 0x2B156025L;
        int32_t l_273 = 1L;
        int32_t l_275 = 0x3CACBB11L;
        int32_t l_276 = 0L;
        int32_t l_277 = 0x41A58AE6L;
        int32_t l_278[5];
        uint32_t l_281 = 0x633FF123L;
        int i;
        for (i = 0; i < 5; i++)
            l_278[i] = 0x6F03B199L;
        ++l_281;
    }
    return p_60;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_409;
    struct S1* p_408 = &c_409;
    struct S1 c_410 = {
        0x391CB4E7L, // p_408->g_3
        0x2AEE5A98L, // p_408->g_4
        {0x28B35EDAL}, // p_408->g_5
        {0x7DC23988L,0x7DC23988L,0x7DC23988L,0x7DC23988L}, // p_408->g_34
        0x4ACA62E26A8ACDD1L, // p_408->g_38
        {0x47C9A7B2L,0x47C9A7B2L,0x47C9A7B2L,0x47C9A7B2L,0x47C9A7B2L,0x47C9A7B2L,0x47C9A7B2L}, // p_408->g_50
        18446744073709551610UL, // p_408->g_81
        {{0x85L,0x85L},{0x85L,0x85L},{0x85L,0x85L},{0x85L,0x85L},{0x85L,0x85L},{0x85L,0x85L},{0x85L,0x85L},{0x85L,0x85L},{0x85L,0x85L}}, // p_408->g_83
        (void*)0, // p_408->g_84
        0x23D3ABBA7F7E758AL, // p_408->g_116
        {{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}},{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}},{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}},{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}},{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}},{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}},{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}},{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}},{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}},{{4294967294UL,0x66L,4294967290UL},{7UL,0x8AL,0x343BB5AFL},{1UL,0UL,0xF0F6D163L},{0x193D3ABDL,3UL,1UL},{4294967293UL,255UL,0xBF1A1B61L},{0x84C52037L,255UL,0xCF876E49L},{0x84C52037L,255UL,0xCF876E49L},{4294967293UL,255UL,0xBF1A1B61L}}}, // p_408->g_117
        65535UL, // p_408->g_153
        {{{5UL,0xECL,3UL},{5UL,0xECL,3UL},{0x4F392A45L,0xE7L,4294967290UL},{0xDABA5DBCL,1UL,0x04BDE13CL},{0xAB2A123FL,255UL,4294967292UL},{4UL,250UL,0xA6551CA7L},{4294967295UL,253UL,0x60035E63L},{1UL,255UL,1UL}},{{5UL,0xECL,3UL},{5UL,0xECL,3UL},{0x4F392A45L,0xE7L,4294967290UL},{0xDABA5DBCL,1UL,0x04BDE13CL},{0xAB2A123FL,255UL,4294967292UL},{4UL,250UL,0xA6551CA7L},{4294967295UL,253UL,0x60035E63L},{1UL,255UL,1UL}},{{5UL,0xECL,3UL},{5UL,0xECL,3UL},{0x4F392A45L,0xE7L,4294967290UL},{0xDABA5DBCL,1UL,0x04BDE13CL},{0xAB2A123FL,255UL,4294967292UL},{4UL,250UL,0xA6551CA7L},{4294967295UL,253UL,0x60035E63L},{1UL,255UL,1UL}},{{5UL,0xECL,3UL},{5UL,0xECL,3UL},{0x4F392A45L,0xE7L,4294967290UL},{0xDABA5DBCL,1UL,0x04BDE13CL},{0xAB2A123FL,255UL,4294967292UL},{4UL,250UL,0xA6551CA7L},{4294967295UL,253UL,0x60035E63L},{1UL,255UL,1UL}},{{5UL,0xECL,3UL},{5UL,0xECL,3UL},{0x4F392A45L,0xE7L,4294967290UL},{0xDABA5DBCL,1UL,0x04BDE13CL},{0xAB2A123FL,255UL,4294967292UL},{4UL,250UL,0xA6551CA7L},{4294967295UL,253UL,0x60035E63L},{1UL,255UL,1UL}},{{5UL,0xECL,3UL},{5UL,0xECL,3UL},{0x4F392A45L,0xE7L,4294967290UL},{0xDABA5DBCL,1UL,0x04BDE13CL},{0xAB2A123FL,255UL,4294967292UL},{4UL,250UL,0xA6551CA7L},{4294967295UL,253UL,0x60035E63L},{1UL,255UL,1UL}},{{5UL,0xECL,3UL},{5UL,0xECL,3UL},{0x4F392A45L,0xE7L,4294967290UL},{0xDABA5DBCL,1UL,0x04BDE13CL},{0xAB2A123FL,255UL,4294967292UL},{4UL,250UL,0xA6551CA7L},{4294967295UL,253UL,0x60035E63L},{1UL,255UL,1UL}}}, // p_408->g_159
        (void*)0, // p_408->g_176
        {{0UL,0UL,4294967295UL},{0UL,0UL,4294967295UL},{0UL,0UL,4294967295UL},{0UL,0UL,4294967295UL},{0UL,0UL,4294967295UL}}, // p_408->g_191
        {{{1UL,0xC8L,0x1AC3CE05L}},{{1UL,0xC8L,0x1AC3CE05L}},{{1UL,0xC8L,0x1AC3CE05L}},{{1UL,0xC8L,0x1AC3CE05L}}}, // p_408->g_192
        {0UL,0xF4L,0xB99A6A31L}, // p_408->g_259
        {{{0UL,1UL,0x229F8BE1L},{0x14620883L,6UL,0UL},{0x14620883L,6UL,0UL},{0UL,1UL,0x229F8BE1L},{0UL,1UL,0x229F8BE1L}},{{0UL,1UL,0x229F8BE1L},{0x14620883L,6UL,0UL},{0x14620883L,6UL,0UL},{0UL,1UL,0x229F8BE1L},{0UL,1UL,0x229F8BE1L}},{{0UL,1UL,0x229F8BE1L},{0x14620883L,6UL,0UL},{0x14620883L,6UL,0UL},{0UL,1UL,0x229F8BE1L},{0UL,1UL,0x229F8BE1L}},{{0UL,1UL,0x229F8BE1L},{0x14620883L,6UL,0UL},{0x14620883L,6UL,0UL},{0UL,1UL,0x229F8BE1L},{0UL,1UL,0x229F8BE1L}},{{0UL,1UL,0x229F8BE1L},{0x14620883L,6UL,0UL},{0x14620883L,6UL,0UL},{0UL,1UL,0x229F8BE1L},{0UL,1UL,0x229F8BE1L}},{{0UL,1UL,0x229F8BE1L},{0x14620883L,6UL,0UL},{0x14620883L,6UL,0UL},{0UL,1UL,0x229F8BE1L},{0UL,1UL,0x229F8BE1L}},{{0UL,1UL,0x229F8BE1L},{0x14620883L,6UL,0UL},{0x14620883L,6UL,0UL},{0UL,1UL,0x229F8BE1L},{0UL,1UL,0x229F8BE1L}}}, // p_408->g_260
        {8L,8L,8L,8L,8L,8L,8L}, // p_408->g_264
        {{{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L}},{{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L}},{{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L}},{{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L}},{{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L}},{{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L},{0x7A6978B2L,0x46D35928L,1L}}}, // p_408->g_266
        {{{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]}},{{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]}},{{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]}},{{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]}},{{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]}},{{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]}},{{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]}},{{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]}},{{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]},{&p_408->g_50[5],&p_408->g_5[0],&p_408->g_5[0],&p_408->g_50[0],&p_408->g_5[0],&p_408->g_50[6],&p_408->g_50[1],&p_408->g_5[0],&p_408->g_50[1]}}}, // p_408->g_287
        {0xBD0906C6L,255UL,0x0C490DDEL}, // p_408->g_289
        {2UL,0xE7L,7UL}, // p_408->g_290
        7UL, // p_408->g_304
        &p_408->g_192[3][0], // p_408->g_307
        {0L,0L,0L}, // p_408->g_324
        0x60AFD0ADL, // p_408->g_336
        0x7CL, // p_408->g_342
        0UL, // p_408->g_345
        &p_408->g_336, // p_408->g_348
        (void*)0, // p_408->g_365
        {{4294967295UL,1UL,0x168FF8E2L},{4294967295UL,1UL,0x168FF8E2L},{4294967295UL,1UL,0x168FF8E2L},{4294967295UL,1UL,0x168FF8E2L},{4294967295UL,1UL,0x168FF8E2L},{4294967295UL,1UL,0x168FF8E2L},{4294967295UL,1UL,0x168FF8E2L},{4294967295UL,1UL,0x168FF8E2L},{4294967295UL,1UL,0x168FF8E2L}}, // p_408->g_378
        {{&p_408->g_365,&p_408->g_365,(void*)0},{&p_408->g_365,&p_408->g_365,(void*)0},{&p_408->g_365,&p_408->g_365,(void*)0},{&p_408->g_365,&p_408->g_365,(void*)0},{&p_408->g_365,&p_408->g_365,(void*)0},{&p_408->g_365,&p_408->g_365,(void*)0},{&p_408->g_365,&p_408->g_365,(void*)0},{&p_408->g_365,&p_408->g_365,(void*)0},{&p_408->g_365,&p_408->g_365,(void*)0}}, // p_408->g_396
        &p_408->g_365, // p_408->g_407
        sequence_input[get_global_id(0)], // p_408->global_0_offset
        sequence_input[get_global_id(1)], // p_408->global_1_offset
        sequence_input[get_global_id(2)], // p_408->global_2_offset
        sequence_input[get_local_id(0)], // p_408->local_0_offset
        sequence_input[get_local_id(1)], // p_408->local_1_offset
        sequence_input[get_local_id(2)], // p_408->local_2_offset
        sequence_input[get_group_id(0)], // p_408->group_0_offset
        sequence_input[get_group_id(1)], // p_408->group_1_offset
        sequence_input[get_group_id(2)], // p_408->group_2_offset
    };
    c_409 = c_410;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_408);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_408->g_3, "p_408->g_3", print_hash_value);
    transparent_crc(p_408->g_4, "p_408->g_4", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_408->g_5[i], "p_408->g_5[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_408->g_34[i], "p_408->g_34[i]", print_hash_value);

    }
    transparent_crc(p_408->g_38, "p_408->g_38", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_408->g_50[i], "p_408->g_50[i]", print_hash_value);

    }
    transparent_crc(p_408->g_81, "p_408->g_81", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_408->g_83[i][j], "p_408->g_83[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_408->g_116, "p_408->g_116", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_408->g_117[i][j].f0, "p_408->g_117[i][j].f0", print_hash_value);
            transparent_crc(p_408->g_117[i][j].f1, "p_408->g_117[i][j].f1", print_hash_value);
            transparent_crc(p_408->g_117[i][j].f2, "p_408->g_117[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_408->g_153, "p_408->g_153", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_408->g_159[i][j].f0, "p_408->g_159[i][j].f0", print_hash_value);
            transparent_crc(p_408->g_159[i][j].f1, "p_408->g_159[i][j].f1", print_hash_value);
            transparent_crc(p_408->g_159[i][j].f2, "p_408->g_159[i][j].f2", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_408->g_191[i].f0, "p_408->g_191[i].f0", print_hash_value);
        transparent_crc(p_408->g_191[i].f1, "p_408->g_191[i].f1", print_hash_value);
        transparent_crc(p_408->g_191[i].f2, "p_408->g_191[i].f2", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_408->g_192[i][j].f0, "p_408->g_192[i][j].f0", print_hash_value);
            transparent_crc(p_408->g_192[i][j].f1, "p_408->g_192[i][j].f1", print_hash_value);
            transparent_crc(p_408->g_192[i][j].f2, "p_408->g_192[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_408->g_259.f0, "p_408->g_259.f0", print_hash_value);
    transparent_crc(p_408->g_259.f1, "p_408->g_259.f1", print_hash_value);
    transparent_crc(p_408->g_259.f2, "p_408->g_259.f2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_408->g_260[i][j].f0, "p_408->g_260[i][j].f0", print_hash_value);
            transparent_crc(p_408->g_260[i][j].f1, "p_408->g_260[i][j].f1", print_hash_value);
            transparent_crc(p_408->g_260[i][j].f2, "p_408->g_260[i][j].f2", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_408->g_264[i], "p_408->g_264[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_408->g_266[i][j][k], "p_408->g_266[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_408->g_289.f0, "p_408->g_289.f0", print_hash_value);
    transparent_crc(p_408->g_289.f1, "p_408->g_289.f1", print_hash_value);
    transparent_crc(p_408->g_289.f2, "p_408->g_289.f2", print_hash_value);
    transparent_crc(p_408->g_290.f0, "p_408->g_290.f0", print_hash_value);
    transparent_crc(p_408->g_290.f1, "p_408->g_290.f1", print_hash_value);
    transparent_crc(p_408->g_290.f2, "p_408->g_290.f2", print_hash_value);
    transparent_crc(p_408->g_304, "p_408->g_304", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_408->g_324[i], "p_408->g_324[i]", print_hash_value);

    }
    transparent_crc(p_408->g_336, "p_408->g_336", print_hash_value);
    transparent_crc(p_408->g_342, "p_408->g_342", print_hash_value);
    transparent_crc(p_408->g_345, "p_408->g_345", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_408->g_378[i].f0, "p_408->g_378[i].f0", print_hash_value);
        transparent_crc(p_408->g_378[i].f1, "p_408->g_378[i].f1", print_hash_value);
        transparent_crc(p_408->g_378[i].f2, "p_408->g_378[i].f2", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
