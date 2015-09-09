// --atomics 13 ---fake_divergence -g 71,29,3 -l 71,1,1
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


// Seed: 72

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint64_t  f0;
   volatile int64_t  f1;
   uint32_t  f2;
   uint32_t  f3;
   volatile int32_t  f4;
   volatile int8_t  f5;
   uint8_t  f6;
   volatile int16_t  f7;
   int16_t  f8;
};

struct S1 {
   volatile uint16_t  f0;
   uint32_t  f1;
   uint32_t  f2;
   volatile int16_t  f3;
   int32_t  f4;
};

union U2 {
   struct S0  f0;
   struct S1  f1;
};

struct S3 {
    int32_t g_15[1];
    int32_t *g_14;
    uint8_t g_42[9];
    uint16_t g_70;
    int8_t g_72;
    int32_t g_79;
    int32_t *g_78;
    int32_t * volatile g_80;
    int16_t g_83;
    int32_t g_85;
    uint8_t *g_86;
    int32_t g_105;
    uint64_t g_172;
    union U2 *g_173;
    union U2 g_175;
    uint8_t g_196[4];
    uint32_t g_217;
    uint64_t g_220;
    volatile int32_t g_221;
    uint64_t g_224;
    uint8_t g_226;
    int8_t g_227[10];
    int64_t g_273;
    struct S1 g_277;
    struct S1 * volatile g_278[7];
    struct S1 * volatile g_279[5];
    volatile struct S0 g_281;
    struct S0 g_309;
    struct S0 *g_311;
    struct S0 ** volatile g_310;
    volatile union U2 g_353[4];
    volatile union U2 * volatile g_352[2][10][5];
    union U2 g_355;
    union U2 g_356;
    union U2 g_357;
    union U2 g_358;
    struct S1 g_380;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
};


/* --- FORWARD DECLARATIONS --- */
int64_t  func_1(struct S3 * p_396);
int32_t * func_2(int32_t * p_3, int64_t  p_4, int32_t  p_5, uint32_t  p_6, int32_t * p_7, struct S3 * p_396);
int32_t * func_8(int32_t * p_9, int32_t * p_10, int32_t * p_11, int32_t  p_12, int32_t * p_13, struct S3 * p_396);
int32_t * func_16(int32_t * p_17, struct S3 * p_396);
int32_t * func_18(int64_t  p_19, uint32_t  p_20, int64_t  p_21, int32_t  p_22, struct S3 * p_396);
int8_t  func_25(int32_t  p_26, struct S3 * p_396);
int32_t * func_30(int64_t  p_31, uint16_t  p_32, uint32_t  p_33, int64_t  p_34, uint64_t  p_35, struct S3 * p_396);
uint16_t  func_54(int32_t  p_55, int32_t  p_56, uint8_t * p_57, uint16_t  p_58, struct S3 * p_396);
int32_t * func_90(uint8_t * p_91, int8_t  p_92, uint32_t  p_93, int32_t  p_94, int64_t  p_95, struct S3 * p_396);
int32_t  func_97(int16_t * p_98, int16_t * p_99, uint32_t  p_100, int32_t * p_101, struct S3 * p_396);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_396->g_14 p_396->g_15 p_396->g_42 p_396->g_80 p_396->g_70 p_396->g_85 p_396->g_86 p_396->g_72 p_396->g_173 p_396->g_175.f0.f4 p_396->g_175.f0.f3 p_396->g_175.f0.f8 p_396->g_172 p_396->g_83 p_396->g_78 p_396->g_79 p_396->g_175.f0.f5 p_396->g_196 p_396->g_175.f0.f1 p_396->g_221 p_396->g_224 p_396->g_226 p_396->g_175.f0.f6 p_396->g_227 p_396->g_277 p_396->g_281 p_396->g_273 p_396->g_310 p_396->g_309.f4 p_396->g_309.f5 p_396->g_217 p_396->g_175.f1.f4 p_396->g_352 p_396->g_175.f1.f1 p_396->g_356.f0.f8 p_396->g_309.f2 p_396->g_380 p_396->g_357.f0.f4 p_396->g_355.f0.f6 p_396->g_309.f8
 * writes: p_396->g_42 p_396->g_78 p_396->g_79 p_396->g_83 p_396->g_85 p_396->g_15 p_396->g_72 p_396->g_105 p_396->g_172 p_396->g_196 p_396->g_217 p_396->g_220 p_396->g_226 p_396->g_227 p_396->g_175.f1 p_396->g_281 p_396->g_273 p_396->g_311 p_396->g_277.f4 p_396->g_277.f1 p_396->g_70 p_396->g_309.f2 p_396->g_309.f3 p_396->g_356.f0.f3 p_396->g_14
 */
int64_t  func_1(struct S3 * p_396)
{ /* block id: 4 */
    int64_t l_27 = 0x495761BE360DE574L;
    uint16_t *l_81[5];
    int16_t *l_82 = &p_396->g_83;
    int32_t *l_84 = &p_396->g_85;
    int32_t **l_228 = &p_396->g_78;
    int32_t *l_283[4];
    int32_t l_306 = 0x0E8DD6AAL;
    int i;
    for (i = 0; i < 5; i++)
        l_81[i] = &p_396->g_70;
    for (i = 0; i < 4; i++)
        l_283[i] = (void*)0;
    (*l_228) = func_2(func_8(p_396->g_14, ((*l_228) = func_16(func_18((safe_add_func_int16_t_s_s(p_396->g_15[0], ((*l_82) = (func_25(l_27, p_396) >= (!(&p_396->g_70 == l_81[0])))))), l_27, (func_54(((*l_84) |= 0x559CE790L), p_396->g_70, p_396->g_86, l_27, p_396) <= p_396->g_70), l_27, p_396), p_396)), p_396->g_14, p_396->g_175.f0.f8, p_396->g_14, p_396), p_396->g_70, p_396->g_70, l_27, p_396->g_14, p_396);
    if ((l_283[0] != (void*)0))
    { /* block id: 182 */
        int8_t *l_284 = &p_396->g_227[4];
        int32_t l_291 = 0x3F432456L;
        int32_t l_305 = (-1L);
        int64_t *l_307[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int i, j;
        (**l_228) = ((p_396->g_273 = (((*l_284) = 0x19L) , (safe_add_func_int32_t_s_s(((safe_mod_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((((**l_228) & (l_291 = p_396->g_83)) > (((safe_div_func_int8_t_s_s(((safe_div_func_int32_t_s_s((-4L), (safe_mod_func_uint32_t_u_u(((&p_396->g_277 == (void*)0) <= ((!((**l_228) > (p_396->g_273 , ((safe_rshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s((((safe_unary_minus_func_int8_t_s(2L)) , 0x7924L) || l_305), (-5L))), p_396->g_42[8])) , 0UL)))) != l_305)), p_396->g_42[8])))) | l_305), (**l_228))) != l_305) || (**l_228))), (**l_228))), (**l_228))) && (**l_228)), l_306)))) < (-4L));
    }
    else
    { /* block id: 187 */
        struct S0 *l_308 = &p_396->g_309;
        int32_t l_333 = 0L;
        int32_t *l_348 = &p_396->g_85;
        int32_t l_363 = 0x101EFC0FL;
        (*p_396->g_14) |= (*p_396->g_80);
        (*p_396->g_14) ^= (*p_396->g_80);
        (*p_396->g_78) = (**l_228);
        for (p_396->g_83 = 0; (p_396->g_83 <= 9); p_396->g_83 += 1)
        { /* block id: 193 */
            uint8_t l_330 = 0x96L;
            int32_t l_336 = (-1L);
            uint32_t *l_340 = &p_396->g_277.f1;
            int32_t l_347[7][6][4] = {{{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L}},{{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L}},{{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L}},{{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L}},{{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L}},{{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L}},{{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L},{1L,(-1L),(-2L),0x6BA0FE35L}}};
            int32_t *l_349 = &p_396->g_277.f4;
            int i, j, k;
            (*p_396->g_310) = l_308;
            for (l_306 = 0; (l_306 <= 3); l_306 += 1)
            { /* block id: 197 */
                int32_t l_314 = 0x268C0C08L;
                uint8_t *l_317 = &p_396->g_42[8];
                uint64_t *l_328 = &p_396->g_220;
                int64_t *l_329 = &p_396->g_273;
                struct S0 **l_331 = &p_396->g_311;
                int32_t *l_332 = &p_396->g_277.f4;
                int32_t l_334 = 0x092A878CL;
                int32_t l_335[5][7] = {{1L,1L,0x79CFFEB1L,0x3B586226L,0x76BCFA40L,0x053D6C6DL,0x3228F538L},{1L,1L,0x79CFFEB1L,0x3B586226L,0x76BCFA40L,0x053D6C6DL,0x3228F538L},{1L,1L,0x79CFFEB1L,0x3B586226L,0x76BCFA40L,0x053D6C6DL,0x3228F538L},{1L,1L,0x79CFFEB1L,0x3B586226L,0x76BCFA40L,0x053D6C6DL,0x3228F538L},{1L,1L,0x79CFFEB1L,0x3B586226L,0x76BCFA40L,0x053D6C6DL,0x3228F538L}};
                int i, j;
                l_336 |= (l_335[3][4] = (18446744073709551615UL != (safe_lshift_func_uint8_t_u_s(l_314, (safe_add_func_uint8_t_u_u(((((*l_332) = ((p_396->g_277.f3 , ((++(*l_317)) | (((!(l_314 >= ((((*p_396->g_78) = (p_396->g_175.f1.f4 &= (((safe_lshift_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_s((p_396->g_309.f4 || ((safe_lshift_func_uint16_t_u_u(l_314, (l_81[0] == &p_396->g_83))) , (~(l_330 = ((*l_329) |= (((~((*l_328) = (safe_lshift_func_uint8_t_u_u(((void*)0 != &p_396->g_14), 4)))) , (**l_228)) | p_396->g_309.f5)))))), 5)) <= p_396->g_217) < (**l_228)), p_396->g_277.f4)) , l_331) == &p_396->g_311))) ^ 0x3885F111L) , (**l_228)))) || 0L) & 0L))) != p_396->g_277.f2)) >= 0x41199389L) || l_333), l_334))))));
            }
            (*l_349) &= (0x6A71BACAL >= (((safe_unary_minus_func_uint32_t_u((safe_mod_func_uint32_t_u_u(((*l_340) = p_396->g_281.f4), (((((((p_396->g_227[1] != (safe_mul_func_int8_t_s_s(p_396->g_227[1], (safe_rshift_func_int8_t_s_s(0x42L, (((&l_306 == (void*)0) & (safe_rshift_func_int8_t_s_u(((((&p_396->g_70 == &p_396->g_70) <= l_336) ^ (**l_228)) > 0x4EDDF625L), 0))) , l_333)))))) && 0x79819D07L) ^ l_347[3][5][0]) & 0x7F65B8D7L) > l_333) == (**l_228)) , p_396->g_175.f1.f4))))) , l_348) != &l_347[0][0][0]));
            for (p_396->g_70 = 3; (p_396->g_70 <= 9); p_396->g_70 += 1)
            { /* block id: 212 */
                uint64_t l_371 = 0xF2544A887ACA5FBAL;
                int32_t **l_377[9] = {&l_84,&l_84,&l_84,&l_84,&l_84,&l_84,&l_84,&l_84,&l_84};
                int32_t l_394 = 0L;
                int i;
                for (p_396->g_309.f2 = 0; (p_396->g_309.f2 <= 9); p_396->g_309.f2 += 1)
                { /* block id: 215 */
                    int32_t l_370 = (-1L);
                    int32_t *l_374[1][4][7] = {{{&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0]},{&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0]},{&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0]},{&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0],&l_347[3][5][0]}}};
                    int i, j, k;
                    for (p_396->g_309.f3 = 1; (p_396->g_309.f3 <= 9); p_396->g_309.f3 += 1)
                    { /* block id: 218 */
                        union U2 *l_354[9] = {&p_396->g_355,&p_396->g_355,&p_396->g_355,&p_396->g_355,&p_396->g_355,&p_396->g_355,&p_396->g_355,&p_396->g_355,&p_396->g_355};
                        int i;
                        (**l_228) = ((safe_mul_func_int8_t_s_s(1L, ((~(*p_396->g_14)) > ((p_396->g_352[1][2][1] != l_354[4]) & ((!(safe_mod_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(l_363, (safe_sub_func_int32_t_s_s((&p_396->g_105 == &p_396->g_105), ((safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((l_370 <= (0UL >= 0UL)), (*l_349))), GROUP_DIVERGE(1, 1))) >= p_396->g_175.f1.f1))))), p_396->g_356.f0.f8))) & (*p_396->g_78)))))) && l_371);
                    }
                    for (p_396->g_356.f0.f3 = 0; (p_396->g_356.f0.f3 <= 9); p_396->g_356.f0.f3 += 1)
                    { /* block id: 223 */
                        int32_t *l_375 = &p_396->g_85;
                        int32_t **l_376 = &l_283[0];
                        uint64_t *l_393 = &p_396->g_220;
                        int32_t l_395[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_395[i] = (-1L);
                        (*l_349) |= (safe_mul_func_uint16_t_u_u(((l_374[0][2][2] == ((*l_376) = l_375)) < (p_396->g_227[p_396->g_309.f2] &= ((void*)0 == l_377[0]))), (safe_add_func_int8_t_s_s(((l_370 | ((p_396->g_380 , ((((safe_sub_func_int8_t_s_s(((!GROUP_DIVERGE(2, 1)) == (safe_rshift_func_uint16_t_u_s(((((safe_mod_func_int16_t_s_s((safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(l_370, ((safe_rshift_func_uint16_t_u_s((p_396->g_357.f0.f4 || (l_394 ^= ((*l_393) = (0x2EL || 0xAEL)))), 13)) | (**l_228)))), p_396->g_355.f0.f6)), l_395[0])) , (-7L)) , 0x71C1E499L) != GROUP_DIVERGE(0, 1)), l_395[0]))), p_396->g_309.f8)) && l_363) > 0x229CL) , p_396->g_277.f0)) , (**l_228))) | p_396->g_309.f8), l_371))));
                        (*l_349) = 1L;
                    }
                }
                p_396->g_14 = ((*l_228) = &p_396->g_15[0]);
            }
        }
    }
    return (**l_228);
}


/* ------------------------------------------ */
/* 
 * reads : p_396->g_277 p_396->g_281
 * writes: p_396->g_175.f1 p_396->g_281
 */
int32_t * func_2(int32_t * p_3, int64_t  p_4, int32_t  p_5, uint32_t  p_6, int32_t * p_7, struct S3 * p_396)
{ /* block id: 177 */
    struct S1 *l_280 = &p_396->g_175.f1;
    int32_t *l_282[6] = {&p_396->g_79,&p_396->g_79,&p_396->g_79,&p_396->g_79,&p_396->g_79,&p_396->g_79};
    int i;
    (*l_280) = p_396->g_277;
    p_396->g_281 = p_396->g_281;
    return l_282[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_396->g_196 p_396->g_227 p_396->g_175.f0.f6
 * writes:
 */
int32_t * func_8(int32_t * p_9, int32_t * p_10, int32_t * p_11, int32_t  p_12, int32_t * p_13, struct S3 * p_396)
{ /* block id: 118 */
    int64_t *l_272[5][5][10] = {{{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0}},{{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0}},{{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0}},{{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0}},{{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0},{&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,&p_396->g_273,(void*)0}}};
    int64_t l_274 = 0x5770AF4F9BA95C35L;
    int32_t l_275 = 0x48781A7FL;
    int32_t *l_276 = &p_396->g_79;
    int i, j, k;
    if ((atomic_inc(&p_396->l_atomic_input[5]) == 1))
    { /* block id: 120 */
        union U2 l_229 = {{0xC2756E31945D7D14L,0L,0UL,0x533681B2L,-3L,0x65L,1UL,3L,-8L}};/* VOLATILE GLOBAL l_229 */
        int32_t l_230 = 0x59579318L;
        int8_t l_243 = 0x5EL;
        l_230 = (l_229 , 0x317A308BL);
        for (l_230 = 3; (l_230 >= 0); l_230 -= 1)
        { /* block id: 124 */
            int32_t l_231 = 0x7C20C0B1L;
            uint64_t l_232[2][8] = {{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}};
            int16_t l_235 = 0x3D49L;
            int8_t l_236 = 0L;
            uint16_t l_237 = 0x576CL;
            int32_t l_239 = 0x1B9E970FL;
            int32_t *l_238 = &l_239;
            int32_t *l_240 = &l_239;
            int32_t *l_241 = (void*)0;
            int32_t *l_242 = &l_239;
            int i, j;
            --l_232[1][2];
            l_229.f0.f4 = (l_236 &= (l_235 &= 1L));
            l_242 = (l_241 = (p_396->g_196[l_230] , (l_240 = (l_237 , l_238))));
        }
        if (l_243)
        { /* block id: 133 */
            int32_t l_244 = 0x2F0F2488L;
            int32_t *l_245 = &l_244;
            int32_t *l_246 = &l_244;
            uint32_t l_254 = 3UL;
            l_246 = (l_244 , l_245);
            for (l_244 = 0; (l_244 < (-27)); l_244 = safe_sub_func_uint64_t_u_u(l_244, 3))
            { /* block id: 137 */
                int32_t l_249 = 0x27235E59L;
                int16_t l_250 = 6L;
                int64_t l_251 = 0x1B66BC57D9547022L;
                int64_t l_252[1][2][4];
                uint64_t l_253 = 0x5BF4506700EAA7C0L;
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 2; j++)
                    {
                        for (k = 0; k < 4; k++)
                            l_252[i][j][k] = 0x6CEB42ADA26107CEL;
                    }
                }
                l_253 &= ((l_250 ^= l_249) , (l_252[0][1][0] |= l_251));
            }
            if ((l_230 &= l_254))
            { /* block id: 143 */
                int32_t l_255[10][10] = {{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)},{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)},{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)},{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)},{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)},{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)},{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)},{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)},{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)},{(-9L),0x3A547C4CL,1L,1L,0x3A547C4CL,1L,1L,0x3A547C4CL,(-9L),(-9L)}};
                uint64_t l_256 = 0xD4DA4FF01ADFF825L;
                int i, j;
                (*l_245) |= (l_256 = l_255[9][3]);
                for (l_255[9][3] = 7; (l_255[9][3] >= 1); l_255[9][3] -= 1)
                { /* block id: 148 */
                    int32_t l_257[10][5][1] = {{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}},{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}},{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}},{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}},{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}},{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}},{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}},{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}},{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}},{{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L},{0x134A2F95L}}};
                    int i, j, k;
                    for (l_257[1][2][0] = 9; (l_257[1][2][0] >= 0); l_257[1][2][0] -= 1)
                    { /* block id: 151 */
                        int64_t l_258 = 0L;
                        uint16_t l_259 = 3UL;
                        int i;
                        (*l_245) = p_396->g_227[l_255[9][3]];
                        l_259 &= ((*l_245) = l_258);
                        l_246 = (void*)0;
                    }
                    for (l_257[1][2][0] = 6; (l_257[1][2][0] >= 1); l_257[1][2][0] -= 1)
                    { /* block id: 159 */
                        uint16_t l_260 = 0xE27DL;
                        (*l_245) |= l_260;
                    }
                }
            }
            else
            { /* block id: 163 */
                int32_t *l_261 = (void*)0;
                l_246 = l_261;
            }
        }
        else
        { /* block id: 166 */
            int16_t l_262 = 0x269CL;
            int8_t l_263 = 0x46L;
            int8_t l_264 = 0L;
            int32_t l_265 = 0x31E70AF4L;
            uint16_t l_266 = 0x6DCCL;
            struct S0 l_269[5] = {{0x878FDA2760C76813L,7L,5UL,4294967288UL,0x7047D995L,0x5BL,0x2AL,1L,-1L},{0x878FDA2760C76813L,7L,5UL,4294967288UL,0x7047D995L,0x5BL,0x2AL,1L,-1L},{0x878FDA2760C76813L,7L,5UL,4294967288UL,0x7047D995L,0x5BL,0x2AL,1L,-1L},{0x878FDA2760C76813L,7L,5UL,4294967288UL,0x7047D995L,0x5BL,0x2AL,1L,-1L},{0x878FDA2760C76813L,7L,5UL,4294967288UL,0x7047D995L,0x5BL,0x2AL,1L,-1L}};
            int i;
            l_229.f0.f4 ^= (-1L);
            --l_266;
            l_229.f0 = l_269[0];
        }
        unsigned int result = 0;
        result += l_229.f0.f0;
        result += l_229.f0.f1;
        result += l_229.f0.f2;
        result += l_229.f0.f3;
        result += l_229.f0.f4;
        result += l_229.f0.f5;
        result += l_229.f0.f6;
        result += l_229.f0.f7;
        result += l_229.f0.f8;
        result += l_229.f1.f0;
        result += l_229.f1.f1;
        result += l_229.f1.f2;
        result += l_229.f1.f3;
        result += l_229.f1.f4;
        result += l_230;
        result += l_243;
        atomic_add(&p_396->l_special_values[5], result);
    }
    else
    { /* block id: 171 */
        (1 + 1);
    }
    l_275 = ((l_274 = (safe_lshift_func_uint16_t_u_u(p_396->g_175.f0.f6, 4))) <= 18446744073709551614UL);
    return l_276;
}


/* ------------------------------------------ */
/* 
 * reads : p_396->g_72 p_396->g_42 p_396->g_173 p_396->g_15 p_396->g_175.f0.f4 p_396->g_85 p_396->g_175.f0.f3 p_396->g_175.f0.f8 p_396->g_172 p_396->g_83 p_396->g_78 p_396->g_79 p_396->g_175.f0.f5 p_396->g_196 p_396->g_14 p_396->g_175.f0.f1 p_396->g_221 p_396->g_224 p_396->g_226 p_396->g_175.f0.f6 p_396->g_80 p_396->g_227
 * writes: p_396->g_72 p_396->g_42 p_396->g_105 p_396->g_172 p_396->g_79 p_396->g_196 p_396->g_15 p_396->g_217 p_396->g_220 p_396->g_226 p_396->g_227
 */
int32_t * func_16(int32_t * p_17, struct S3 * p_396)
{ /* block id: 28 */
    int16_t l_102[10];
    uint16_t *l_109 = &p_396->g_70;
    int32_t *l_181[2];
    uint8_t l_200 = 0x8FL;
    uint8_t l_203 = 6UL;
    uint16_t l_208[5] = {0x2C0EL,0x2C0EL,0x2C0EL,0x2C0EL,0x2C0EL};
    uint32_t *l_216[3][10][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3},{(void*)0,(void*)0,(void*)0,(void*)0,&p_396->g_175.f0.f3,(void*)0,(void*)0,&p_396->g_175.f0.f3}}};
    int64_t l_218 = 0x30773BA691A8147CL;
    uint64_t *l_219[5] = {&p_396->g_220,&p_396->g_220,&p_396->g_220,&p_396->g_220,&p_396->g_220};
    uint8_t *l_222[9][9] = {{&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203},{&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203},{&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203},{&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203},{&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203},{&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203},{&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203},{&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203},{&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203}};
    int16_t l_223 = 1L;
    uint32_t l_225 = 0x2E177147L;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_102[i] = (-10L);
    for (i = 0; i < 2; i++)
        l_181[i] = (void*)0;
    for (p_396->g_72 = 13; (p_396->g_72 == 9); p_396->g_72 = safe_sub_func_uint64_t_u_u(p_396->g_72, 3))
    { /* block id: 31 */
        uint8_t *l_103 = &p_396->g_42[2];
        int32_t l_104[3];
        int16_t *l_106 = (void*)0;
        int32_t **l_110[5];
        int32_t l_179 = 0L;
        uint32_t l_194 = 0xEF0F45DDL;
        uint8_t *l_195 = &p_396->g_196[0];
        uint16_t l_197 = 0xB90FL;
        uint32_t l_198 = 1UL;
        int8_t l_199[8] = {0x04L,0x04L,0x04L,0x04L,0x04L,0x04L,0x04L,0x04L};
        int i;
        for (i = 0; i < 3; i++)
            l_104[i] = 1L;
        for (i = 0; i < 5; i++)
            l_110[i] = &p_396->g_78;
        l_181[0] = func_90(&p_396->g_42[7], (safe_unary_minus_func_int32_t_s(func_97(&p_396->g_83, (l_106 = ((((*l_103) |= l_102[5]) < (p_396->g_105 = l_104[2])) , (void*)0)), (safe_mul_func_uint16_t_u_u((l_109 != (void*)0), l_104[1])), (p_17 = &p_396->g_79), p_396))), p_396->g_85, l_179, p_396->g_175.f0.f3, p_396);
        (*p_396->g_78) = ((((*l_103) = (l_198 = (safe_mod_func_uint64_t_u_u(((safe_lshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s((p_396->g_175.f0.f8 ^ (safe_mul_func_int8_t_s_s(((p_396->g_172 , 4294967295UL) , (1L < p_396->g_83)), (p_396->g_42[3] <= ((((0x0A6B184CL | (safe_add_func_int32_t_s_s(((*p_396->g_78) && (+(((*l_195) = (safe_mod_func_uint32_t_u_u(((p_396->g_175.f0.f5 , (-4L)) , p_396->g_175.f0.f3), l_194))) != l_197))), 0xBBAD3B4EL))) ^ (*p_396->g_78)) || p_396->g_196[3]) , p_396->g_196[0]))))), 0xFF75L)), p_396->g_175.f0.f3)) != (*p_396->g_78)), p_396->g_172)))) > l_199[7]) == 0x9A68L);
        if ((*p_396->g_14))
            break;
    }
    p_396->g_227[1] ^= (l_200 && (((*p_396->g_80) = (p_396->g_85 | ((*p_396->g_14) = (safe_div_func_int64_t_s_s((l_203 ^ (p_396->g_226 |= (&l_109 == ((safe_div_func_int8_t_s_s((((((safe_rshift_func_uint8_t_u_s(l_208[0], 4)) || ((safe_unary_minus_func_int16_t_s((safe_mul_func_uint8_t_u_u((l_223 = ((((((p_396->g_175.f0.f1 & p_396->g_15[0]) || (((safe_div_func_uint64_t_u_u((p_396->g_220 = (((~(*p_17)) & FAKE_DIVERGE(p_396->local_0_offset, get_local_id(0), 10)) && ((p_396->g_217 = 0x1DE0336CL) <= l_218))), p_396->g_85)) > p_396->g_15[0]) < 0x1F22465FA9602BA4L)) , (*p_17)) ^ p_396->g_196[3]) || p_396->g_221) <= p_396->g_196[0])), p_396->g_224)))) & 0x173F10C4547A68E1L)) , p_396->g_72) , 18446744073709551615UL) ^ p_396->g_224), l_225)) , (void*)0)))), p_396->g_175.f0.f6))))) | 0x772B18EEL));
    return l_216[2][1][4];
}


/* ------------------------------------------ */
/* 
 * reads : p_396->g_14 p_396->g_15
 * writes: p_396->g_15
 */
int32_t * func_18(int64_t  p_19, uint32_t  p_20, int64_t  p_21, int32_t  p_22, struct S3 * p_396)
{ /* block id: 24 */
    int32_t *l_87 = &p_396->g_15[0];
    (*p_396->g_14) |= p_19;
    (*p_396->g_14) = 5L;
    return l_87;
}


/* ------------------------------------------ */
/* 
 * reads : p_396->g_15 p_396->g_42 p_396->g_14 p_396->g_80 p_396->g_70
 * writes: p_396->g_42 p_396->g_78 p_396->g_79
 */
int8_t  func_25(int32_t  p_26, struct S3 * p_396)
{ /* block id: 5 */
    uint8_t l_36[2][2] = {{1UL,1UL},{1UL,1UL}};
    int32_t l_38 = 0x1DDA8DB8L;
    int32_t l_45 = 0x636717B3L;
    int i, j;
    for (p_26 = 0; (p_26 == 7); p_26 = safe_add_func_int16_t_s_s(p_26, 3))
    { /* block id: 8 */
        uint16_t *l_37 = (void*)0;
        uint8_t *l_41[3];
        int32_t l_43 = 1L;
        int32_t l_44[4];
        uint32_t l_65 = 4294967293UL;
        int32_t *l_77 = &l_44[2];
        int32_t **l_76[2][4] = {{&l_77,&l_77,&l_77,&l_77},{&l_77,&l_77,&l_77,&l_77}};
        int i, j;
        for (i = 0; i < 3; i++)
            l_41[i] = &p_396->g_42[8];
        for (i = 0; i < 4; i++)
            l_44[i] = (-5L);
        p_396->g_78 = func_30(p_396->g_15[0], (l_38 = l_36[0][1]), (safe_lshift_func_uint8_t_u_s((p_396->g_42[6]++), 2)), (((p_26 | ((safe_div_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(l_45, p_26)), (safe_mul_func_uint16_t_u_u(((((func_54((safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_s(1L, 13)), ((l_44[1] = (safe_rshift_func_uint8_t_u_u((+FAKE_DIVERGE(p_396->global_0_offset, get_global_id(0), 10)), l_45))) > l_65))), ((safe_add_func_uint8_t_u_u(l_43, l_36[0][1])) , p_26), &l_36[0][1], p_26, p_396) || p_396->g_15[0]) & l_65) ^ p_26) >= (-4L)), 0x1810L)))) | p_26)) , p_26) , 2L), p_26, p_396);
    }
    (*p_396->g_80) = l_36[1][1];
    return p_396->g_70;
}


/* ------------------------------------------ */
/* 
 * reads : p_396->g_14 p_396->g_15
 * writes:
 */
int32_t * func_30(int64_t  p_31, uint16_t  p_32, uint32_t  p_33, int64_t  p_34, uint64_t  p_35, struct S3 * p_396)
{ /* block id: 14 */
    uint16_t *l_69 = &p_396->g_70;
    int8_t *l_71[6][4] = {{&p_396->g_72,&p_396->g_72,&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72,&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72,&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72,&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72,&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72,&p_396->g_72,&p_396->g_72}};
    int32_t l_73 = (-2L);
    int32_t l_74 = 0x088A0E7BL;
    int32_t *l_75 = &l_73;
    int i, j;
    l_74 = (((*p_396->g_14) == (&p_32 == l_69)) || (l_73 &= (GROUP_DIVERGE(1, 1) , ((*p_396->g_14) < (*p_396->g_14)))));
    return &p_396->g_15[0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_54(int32_t  p_55, int32_t  p_56, uint8_t * p_57, uint16_t  p_58, struct S3 * p_396)
{ /* block id: 12 */
    int16_t l_68 = 0L;
    return l_68;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_90(uint8_t * p_91, int8_t  p_92, uint32_t  p_93, int32_t  p_94, int64_t  p_95, struct S3 * p_396)
{ /* block id: 100 */
    int32_t *l_180[1];
    int i;
    for (i = 0; i < 1; i++)
        l_180[i] = &p_396->g_79;
    return l_180[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_396->g_42 p_396->g_72 p_396->g_173 p_396->g_15 p_396->g_175.f0.f4
 * writes: p_396->g_172 p_396->g_79
 */
int32_t  func_97(int16_t * p_98, int16_t * p_99, uint32_t  p_100, int32_t * p_101, struct S3 * p_396)
{ /* block id: 36 */
    uint32_t l_168 = 0x6211E331L;
    uint64_t *l_171 = &p_396->g_172;
    union U2 *l_174[8] = {&p_396->g_175,&p_396->g_175,&p_396->g_175,&p_396->g_175,&p_396->g_175,&p_396->g_175,&p_396->g_175,&p_396->g_175};
    int8_t *l_176 = &p_396->g_72;
    int8_t *l_177[6][2] = {{&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72},{&p_396->g_72,&p_396->g_72}};
    int8_t **l_178 = &l_177[1][1];
    int i, j;
    if ((atomic_inc(&p_396->l_atomic_input[6]) == 7))
    { /* block id: 38 */
        int16_t l_111 = 0x5417L;
        int8_t l_112[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
        uint8_t l_113 = 0UL;
        int16_t l_160 = 0L;
        int8_t l_161[5];
        int8_t l_162 = 0L;
        uint32_t l_163 = 4294967286UL;
        int i;
        for (i = 0; i < 5; i++)
            l_161[i] = 0x75L;
        l_113++;
        for (l_111 = (-17); (l_111 == (-8)); l_111 = safe_add_func_int8_t_s_s(l_111, 4))
        { /* block id: 42 */
            uint16_t l_118[8][1][1] = {{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}}};
            int8_t l_119 = 0x7DL;
            int i, j, k;
            l_119 |= l_118[4][0][0];
            for (l_119 = 0; (l_119 >= 0); l_119 -= 1)
            { /* block id: 46 */
                int32_t l_121 = 0x7D6112DDL;
                int32_t *l_120 = &l_121;
                int32_t *l_122 = &l_121;
                uint64_t l_129 = 0x50322C85E55DFC96L;
                uint8_t l_130[3][3][9] = {{{0UL,255UL,0UL,0UL,255UL,0UL,0UL,255UL,0UL},{0UL,255UL,0UL,0UL,255UL,0UL,0UL,255UL,0UL},{0UL,255UL,0UL,0UL,255UL,0UL,0UL,255UL,0UL}},{{0UL,255UL,0UL,0UL,255UL,0UL,0UL,255UL,0UL},{0UL,255UL,0UL,0UL,255UL,0UL,0UL,255UL,0UL},{0UL,255UL,0UL,0UL,255UL,0UL,0UL,255UL,0UL}},{{0UL,255UL,0UL,0UL,255UL,0UL,0UL,255UL,0UL},{0UL,255UL,0UL,0UL,255UL,0UL,0UL,255UL,0UL},{0UL,255UL,0UL,0UL,255UL,0UL,0UL,255UL,0UL}}};
                int i, j, k;
                l_122 = (l_120 = (void*)0);
                for (l_121 = 0; (l_121 <= 0); l_121 += 1)
                { /* block id: 51 */
                    int32_t l_123 = 0x7F9F6C92L;
                    uint16_t l_128 = 0xFE4DL;
                    int i, j, k;
                    for (l_123 = 0; (l_123 <= 0); l_123 += 1)
                    { /* block id: 54 */
                        int32_t l_124 = 0x7B129D73L;
                        union U2 l_126 = {{2UL,0x3BD83FE2F772B8ADL,0xEA0260ADL,1UL,0x08FC9099L,0x4BL,0x37L,5L,0L}};/* VOLATILE GLOBAL l_126 */
                        union U2 *l_125 = &l_126;
                        union U2 *l_127 = (void*)0;
                        int i;
                        l_124 = p_396->g_42[(l_119 + 7)];
                        l_127 = l_125;
                    }
                    l_128 &= (l_123 ^= l_118[(l_121 + 6)][l_119][l_119]);
                }
                l_129 &= 0x1FA4E93FL;
                l_130[2][0][3] &= p_396->g_42[l_119];
                for (l_130[0][0][4] = 0; (l_130[0][0][4] <= 8); l_130[0][0][4] += 1)
                { /* block id: 65 */
                    int32_t l_131 = (-1L);
                    uint64_t l_144 = 18446744073709551615UL;
                    uint32_t l_159 = 0UL;
                    for (l_131 = 0; (l_131 <= 8); l_131 += 1)
                    { /* block id: 68 */
                        uint32_t l_132[5][7] = {{0xE2794C0DL,1UL,7UL,0x39397282L,7UL,1UL,0xE2794C0DL},{0xE2794C0DL,1UL,7UL,0x39397282L,7UL,1UL,0xE2794C0DL},{0xE2794C0DL,1UL,7UL,0x39397282L,7UL,1UL,0xE2794C0DL},{0xE2794C0DL,1UL,7UL,0x39397282L,7UL,1UL,0xE2794C0DL},{0xE2794C0DL,1UL,7UL,0x39397282L,7UL,1UL,0xE2794C0DL}};
                        int8_t l_133 = 0x1FL;
                        int16_t l_134 = 5L;
                        int32_t l_135 = 0x3D223BFCL;
                        uint16_t l_138 = 0xF1A5L;
                        uint16_t *l_137 = &l_138;
                        uint16_t **l_136 = &l_137;
                        uint16_t **l_139 = &l_137;
                        int64_t l_140 = 0x07E53E2A5121EC5DL;
                        uint32_t l_141 = 0xAEDDA491L;
                        uint64_t l_142 = 2UL;
                        int32_t l_143 = (-10L);
                        int i, j;
                        l_121 &= 0x24BAAF50L;
                        l_121 = ((l_132[1][5] , l_133) , 0L);
                        l_139 = ((l_135 = l_134) , l_136);
                        l_143 ^= ((l_141 = l_140) , l_142);
                    }
                    l_122 = (void*)0;
                    if (l_144)
                    { /* block id: 77 */
                        int32_t l_146 = 0L;
                        int32_t *l_145[4];
                        uint8_t l_147[1][5];
                        int32_t l_150 = (-1L);
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_145[i] = &l_146;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_147[i][j] = 0xFEL;
                        }
                        l_145[2] = l_145[2];
                        --l_147[0][3];
                        l_131 &= l_150;
                    }
                    else
                    { /* block id: 81 */
                        uint32_t l_151 = 4294967294UL;
                        uint32_t l_152 = 0x995DD102L;
                        int32_t l_154 = 1L;
                        int32_t *l_153 = &l_154;
                        uint8_t l_155 = 0xA9L;
                        uint16_t l_156 = 7UL;
                        l_152 |= l_151;
                        l_122 = l_153;
                        (*l_122) &= l_155;
                        l_156++;
                    }
                    l_131 = l_159;
                }
            }
        }
        l_163++;
        unsigned int result = 0;
        result += l_111;
        int l_112_i0;
        for (l_112_i0 = 0; l_112_i0 < 9; l_112_i0++) {
            result += l_112[l_112_i0];
        }
        result += l_113;
        result += l_160;
        int l_161_i0;
        for (l_161_i0 = 0; l_161_i0 < 5; l_161_i0++) {
            result += l_161[l_161_i0];
        }
        result += l_162;
        result += l_163;
        atomic_add(&p_396->l_special_values[6], result);
    }
    else
    { /* block id: 92 */
        (1 + 1);
    }
    (*p_101) = ((p_396->g_42[8] < p_396->g_72) & (safe_mul_func_int16_t_s_s((GROUP_DIVERGE(0, 1) >= (((((l_168 & ((((*l_171) = (safe_rshift_func_int16_t_s_s(l_168, 14))) , p_396->g_173) != l_174[6])) > l_168) > ((((l_176 = l_176) == ((*l_178) = l_177[1][1])) & p_396->g_15[0]) >= (-1L))) | p_396->g_175.f0.f4) < p_100)), 0x374AL)));
    return l_168;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[13];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 13; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[13];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 13; i++)
            l_special_values[i] = 0;
    struct S3 c_397;
    struct S3* p_396 = &c_397;
    struct S3 c_398 = {
        {1L}, // p_396->g_15
        &p_396->g_15[0], // p_396->g_14
        {6UL,0x52L,6UL,6UL,0x52L,6UL,6UL,0x52L,6UL}, // p_396->g_42
        65534UL, // p_396->g_70
        0x7BL, // p_396->g_72
        3L, // p_396->g_79
        &p_396->g_79, // p_396->g_78
        &p_396->g_79, // p_396->g_80
        0x24BDL, // p_396->g_83
        2L, // p_396->g_85
        (void*)0, // p_396->g_86
        8L, // p_396->g_105
        0xDC2E7BD33CEA4A79L, // p_396->g_172
        (void*)0, // p_396->g_173
        {{0x68C23FB85D134699L,0x1ABEDA80D186C8CCL,1UL,0x6F9DF61DL,2L,2L,1UL,-10L,1L}}, // p_396->g_175
        {255UL,255UL,255UL,255UL}, // p_396->g_196
        0x2CC52EBEL, // p_396->g_217
        0xADF10BACB65B9F8BL, // p_396->g_220
        4L, // p_396->g_221
        0xDD9B939D7BC268F2L, // p_396->g_224
        0xE9L, // p_396->g_226
        {0x2FL,0x2CL,0x56L,0x2CL,0x2FL,0x2FL,0x2CL,0x56L,0x2CL,0x2FL}, // p_396->g_227
        1L, // p_396->g_273
        {0xC249L,0x5B31BB59L,4294967292UL,0x112EL,0x4B51DA38L}, // p_396->g_277
        {&p_396->g_277,&p_396->g_277,&p_396->g_277,&p_396->g_277,&p_396->g_277,&p_396->g_277,&p_396->g_277}, // p_396->g_278
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_396->g_279
        {18446744073709551607UL,0x0403408B0A408D92L,0x2716DB55L,0UL,-1L,0x50L,1UL,-1L,0x2A8FL}, // p_396->g_281
        {0x446925B1CE934E2DL,3L,7UL,4294967295UL,0L,0x4DL,9UL,8L,0x25CEL}, // p_396->g_309
        &p_396->g_309, // p_396->g_311
        &p_396->g_311, // p_396->g_310
        {{{0x34E38E9378FC522BL,4L,0xE426B522L,0xBA9DB8B5L,0x7B8F472CL,-8L,255UL,4L,-1L}},{{0x34E38E9378FC522BL,4L,0xE426B522L,0xBA9DB8B5L,0x7B8F472CL,-8L,255UL,4L,-1L}},{{0x34E38E9378FC522BL,4L,0xE426B522L,0xBA9DB8B5L,0x7B8F472CL,-8L,255UL,4L,-1L}},{{0x34E38E9378FC522BL,4L,0xE426B522L,0xBA9DB8B5L,0x7B8F472CL,-8L,255UL,4L,-1L}}}, // p_396->g_353
        {{{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]}},{{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]},{(void*)0,&p_396->g_353[3],(void*)0,&p_396->g_353[3],&p_396->g_353[3]}}}, // p_396->g_352
        {{1UL,0x7D40FB0CFA7A62F4L,4294967286UL,4294967289UL,4L,1L,4UL,0x2863L,0x4604L}}, // p_396->g_355
        {{18446744073709551606UL,-8L,0xF51F510DL,0UL,0x67B2451EL,0x51L,0xBFL,0x7B71L,-1L}}, // p_396->g_356
        {{0x4EBCE35BBA301228L,0x4A0DB158A97BCDC0L,4294967286UL,0xADA652AFL,1L,-1L,0xADL,0x3A18L,0x52D2L}}, // p_396->g_357
        {{0x74138C168379605CL,0x12122A5402AA8A24L,0UL,0x201D1230L,0x360FB0E2L,1L,0x16L,0x3C2BL,0L}}, // p_396->g_358
        {65530UL,4294967295UL,0UL,0L,0x17D60034L}, // p_396->g_380
        sequence_input[get_global_id(0)], // p_396->global_0_offset
        sequence_input[get_global_id(1)], // p_396->global_1_offset
        sequence_input[get_global_id(2)], // p_396->global_2_offset
        sequence_input[get_local_id(0)], // p_396->local_0_offset
        sequence_input[get_local_id(1)], // p_396->local_1_offset
        sequence_input[get_local_id(2)], // p_396->local_2_offset
        sequence_input[get_group_id(0)], // p_396->group_0_offset
        sequence_input[get_group_id(1)], // p_396->group_1_offset
        sequence_input[get_group_id(2)], // p_396->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
    };
    c_397 = c_398;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_396);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_396->g_15[i], "p_396->g_15[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_396->g_42[i], "p_396->g_42[i]", print_hash_value);

    }
    transparent_crc(p_396->g_70, "p_396->g_70", print_hash_value);
    transparent_crc(p_396->g_72, "p_396->g_72", print_hash_value);
    transparent_crc(p_396->g_79, "p_396->g_79", print_hash_value);
    transparent_crc(p_396->g_83, "p_396->g_83", print_hash_value);
    transparent_crc(p_396->g_85, "p_396->g_85", print_hash_value);
    transparent_crc(p_396->g_105, "p_396->g_105", print_hash_value);
    transparent_crc(p_396->g_172, "p_396->g_172", print_hash_value);
    transparent_crc(p_396->g_175.f1.f0, "p_396->g_175.f1.f0", print_hash_value);
    transparent_crc(p_396->g_175.f1.f1, "p_396->g_175.f1.f1", print_hash_value);
    transparent_crc(p_396->g_175.f1.f2, "p_396->g_175.f1.f2", print_hash_value);
    transparent_crc(p_396->g_175.f1.f3, "p_396->g_175.f1.f3", print_hash_value);
    transparent_crc(p_396->g_175.f1.f4, "p_396->g_175.f1.f4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_396->g_196[i], "p_396->g_196[i]", print_hash_value);

    }
    transparent_crc(p_396->g_217, "p_396->g_217", print_hash_value);
    transparent_crc(p_396->g_220, "p_396->g_220", print_hash_value);
    transparent_crc(p_396->g_221, "p_396->g_221", print_hash_value);
    transparent_crc(p_396->g_224, "p_396->g_224", print_hash_value);
    transparent_crc(p_396->g_226, "p_396->g_226", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_396->g_227[i], "p_396->g_227[i]", print_hash_value);

    }
    transparent_crc(p_396->g_273, "p_396->g_273", print_hash_value);
    transparent_crc(p_396->g_277.f0, "p_396->g_277.f0", print_hash_value);
    transparent_crc(p_396->g_277.f1, "p_396->g_277.f1", print_hash_value);
    transparent_crc(p_396->g_277.f2, "p_396->g_277.f2", print_hash_value);
    transparent_crc(p_396->g_277.f3, "p_396->g_277.f3", print_hash_value);
    transparent_crc(p_396->g_277.f4, "p_396->g_277.f4", print_hash_value);
    transparent_crc(p_396->g_281.f0, "p_396->g_281.f0", print_hash_value);
    transparent_crc(p_396->g_281.f1, "p_396->g_281.f1", print_hash_value);
    transparent_crc(p_396->g_281.f2, "p_396->g_281.f2", print_hash_value);
    transparent_crc(p_396->g_281.f3, "p_396->g_281.f3", print_hash_value);
    transparent_crc(p_396->g_281.f4, "p_396->g_281.f4", print_hash_value);
    transparent_crc(p_396->g_281.f5, "p_396->g_281.f5", print_hash_value);
    transparent_crc(p_396->g_281.f6, "p_396->g_281.f6", print_hash_value);
    transparent_crc(p_396->g_281.f7, "p_396->g_281.f7", print_hash_value);
    transparent_crc(p_396->g_281.f8, "p_396->g_281.f8", print_hash_value);
    transparent_crc(p_396->g_309.f0, "p_396->g_309.f0", print_hash_value);
    transparent_crc(p_396->g_309.f1, "p_396->g_309.f1", print_hash_value);
    transparent_crc(p_396->g_309.f2, "p_396->g_309.f2", print_hash_value);
    transparent_crc(p_396->g_309.f3, "p_396->g_309.f3", print_hash_value);
    transparent_crc(p_396->g_309.f4, "p_396->g_309.f4", print_hash_value);
    transparent_crc(p_396->g_309.f5, "p_396->g_309.f5", print_hash_value);
    transparent_crc(p_396->g_309.f6, "p_396->g_309.f6", print_hash_value);
    transparent_crc(p_396->g_309.f7, "p_396->g_309.f7", print_hash_value);
    transparent_crc(p_396->g_309.f8, "p_396->g_309.f8", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_396->g_353[i].f0.f0, "p_396->g_353[i].f0.f0", print_hash_value);
        transparent_crc(p_396->g_353[i].f0.f1, "p_396->g_353[i].f0.f1", print_hash_value);
        transparent_crc(p_396->g_353[i].f0.f2, "p_396->g_353[i].f0.f2", print_hash_value);
        transparent_crc(p_396->g_353[i].f0.f3, "p_396->g_353[i].f0.f3", print_hash_value);
        transparent_crc(p_396->g_353[i].f0.f4, "p_396->g_353[i].f0.f4", print_hash_value);
        transparent_crc(p_396->g_353[i].f0.f5, "p_396->g_353[i].f0.f5", print_hash_value);
        transparent_crc(p_396->g_353[i].f0.f6, "p_396->g_353[i].f0.f6", print_hash_value);
        transparent_crc(p_396->g_353[i].f0.f7, "p_396->g_353[i].f0.f7", print_hash_value);
        transparent_crc(p_396->g_353[i].f0.f8, "p_396->g_353[i].f0.f8", print_hash_value);

    }
    transparent_crc(p_396->g_355.f0.f0, "p_396->g_355.f0.f0", print_hash_value);
    transparent_crc(p_396->g_355.f0.f1, "p_396->g_355.f0.f1", print_hash_value);
    transparent_crc(p_396->g_355.f0.f2, "p_396->g_355.f0.f2", print_hash_value);
    transparent_crc(p_396->g_355.f0.f3, "p_396->g_355.f0.f3", print_hash_value);
    transparent_crc(p_396->g_355.f0.f4, "p_396->g_355.f0.f4", print_hash_value);
    transparent_crc(p_396->g_355.f0.f5, "p_396->g_355.f0.f5", print_hash_value);
    transparent_crc(p_396->g_355.f0.f6, "p_396->g_355.f0.f6", print_hash_value);
    transparent_crc(p_396->g_355.f0.f7, "p_396->g_355.f0.f7", print_hash_value);
    transparent_crc(p_396->g_355.f0.f8, "p_396->g_355.f0.f8", print_hash_value);
    transparent_crc(p_396->g_356.f0.f0, "p_396->g_356.f0.f0", print_hash_value);
    transparent_crc(p_396->g_356.f0.f1, "p_396->g_356.f0.f1", print_hash_value);
    transparent_crc(p_396->g_356.f0.f2, "p_396->g_356.f0.f2", print_hash_value);
    transparent_crc(p_396->g_356.f0.f3, "p_396->g_356.f0.f3", print_hash_value);
    transparent_crc(p_396->g_356.f0.f4, "p_396->g_356.f0.f4", print_hash_value);
    transparent_crc(p_396->g_356.f0.f5, "p_396->g_356.f0.f5", print_hash_value);
    transparent_crc(p_396->g_356.f0.f6, "p_396->g_356.f0.f6", print_hash_value);
    transparent_crc(p_396->g_356.f0.f7, "p_396->g_356.f0.f7", print_hash_value);
    transparent_crc(p_396->g_356.f0.f8, "p_396->g_356.f0.f8", print_hash_value);
    transparent_crc(p_396->g_357.f0.f0, "p_396->g_357.f0.f0", print_hash_value);
    transparent_crc(p_396->g_357.f0.f1, "p_396->g_357.f0.f1", print_hash_value);
    transparent_crc(p_396->g_357.f0.f2, "p_396->g_357.f0.f2", print_hash_value);
    transparent_crc(p_396->g_357.f0.f3, "p_396->g_357.f0.f3", print_hash_value);
    transparent_crc(p_396->g_357.f0.f4, "p_396->g_357.f0.f4", print_hash_value);
    transparent_crc(p_396->g_357.f0.f5, "p_396->g_357.f0.f5", print_hash_value);
    transparent_crc(p_396->g_357.f0.f6, "p_396->g_357.f0.f6", print_hash_value);
    transparent_crc(p_396->g_357.f0.f7, "p_396->g_357.f0.f7", print_hash_value);
    transparent_crc(p_396->g_357.f0.f8, "p_396->g_357.f0.f8", print_hash_value);
    transparent_crc(p_396->g_358.f0.f0, "p_396->g_358.f0.f0", print_hash_value);
    transparent_crc(p_396->g_358.f0.f1, "p_396->g_358.f0.f1", print_hash_value);
    transparent_crc(p_396->g_358.f0.f2, "p_396->g_358.f0.f2", print_hash_value);
    transparent_crc(p_396->g_358.f0.f3, "p_396->g_358.f0.f3", print_hash_value);
    transparent_crc(p_396->g_358.f0.f4, "p_396->g_358.f0.f4", print_hash_value);
    transparent_crc(p_396->g_358.f0.f5, "p_396->g_358.f0.f5", print_hash_value);
    transparent_crc(p_396->g_358.f0.f6, "p_396->g_358.f0.f6", print_hash_value);
    transparent_crc(p_396->g_358.f0.f7, "p_396->g_358.f0.f7", print_hash_value);
    transparent_crc(p_396->g_358.f0.f8, "p_396->g_358.f0.f8", print_hash_value);
    transparent_crc(p_396->g_380.f0, "p_396->g_380.f0", print_hash_value);
    transparent_crc(p_396->g_380.f1, "p_396->g_380.f1", print_hash_value);
    transparent_crc(p_396->g_380.f2, "p_396->g_380.f2", print_hash_value);
    transparent_crc(p_396->g_380.f3, "p_396->g_380.f3", print_hash_value);
    transparent_crc(p_396->g_380.f4, "p_396->g_380.f4", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 13; i++)
            transparent_crc(p_396->l_special_values[i], "p_396->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
