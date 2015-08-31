// ---fake_divergence -g 1,1,8411 -l 1,1,1
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


// Seed: 74

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_12;
    uint8_t g_19;
    VECTOR(int16_t, 4) g_22;
    VECTOR(uint8_t, 4) g_43;
    int32_t g_53;
    int32_t *g_52;
    VECTOR(uint32_t, 16) g_57;
    VECTOR(uint32_t, 16) g_58;
    VECTOR(uint8_t, 16) g_69;
    volatile VECTOR(uint8_t, 8) g_72;
    VECTOR(uint16_t, 2) g_121;
    int64_t g_139;
    int32_t g_157[3];
    int32_t * volatile g_156;
    int32_t ** volatile g_158;
    uint32_t g_161;
    volatile VECTOR(int64_t, 16) g_164;
    volatile VECTOR(int64_t, 16) g_168;
    volatile VECTOR(int64_t, 16) g_169;
    volatile VECTOR(int64_t, 4) g_172;
    VECTOR(int64_t, 16) g_173;
    VECTOR(int64_t, 2) g_174;
    uint64_t g_177[1];
    int64_t g_178;
    int32_t ** volatile g_179;
    int32_t ** volatile g_190;
    int32_t g_193;
    int32_t *g_192;
    VECTOR(int32_t, 2) g_213;
    int32_t ** volatile g_215;
    VECTOR(int16_t, 4) g_242;
    VECTOR(int8_t, 4) g_282;
    volatile uint8_t *g_321;
    VECTOR(int32_t, 8) g_326;
    int32_t g_359[7];
    VECTOR(int32_t, 8) g_364;
    volatile int64_t *g_371;
    volatile int64_t ** volatile g_370[10];
    int32_t g_378;
    int32_t ** volatile g_380;
    int32_t * volatile g_424;
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
int8_t  func_1(struct S0 * p_426);
int8_t  func_2(uint64_t  p_3, int16_t  p_4, int64_t  p_5, uint16_t  p_6, struct S0 * p_426);
uint16_t  func_15(uint8_t  p_16, int32_t  p_17, int64_t  p_18, struct S0 * p_426);
int8_t  func_28(int32_t  p_29, int16_t  p_30, uint32_t  p_31, int64_t  p_32, int8_t  p_33, struct S0 * p_426);
VECTOR(uint8_t, 16)  func_37(int8_t  p_38, uint16_t  p_39, int64_t  p_40, uint64_t  p_41, struct S0 * p_426);
int32_t * func_44(uint64_t  p_45, int32_t * p_46, int32_t * p_47, int32_t * p_48, struct S0 * p_426);
uint64_t  func_49(int32_t * p_50, int8_t  p_51, struct S0 * p_426);
int32_t  func_80(uint32_t  p_81, int32_t * p_82, struct S0 * p_426);
int32_t * func_91(uint32_t * p_92, uint32_t  p_93, int32_t  p_94, uint32_t  p_95, uint64_t  p_96, struct S0 * p_426);
uint32_t * func_97(uint32_t * p_98, int32_t  p_99, uint32_t * p_100, int32_t * p_101, int64_t  p_102, struct S0 * p_426);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_426->g_22 p_426->g_43 p_426->g_52 p_426->g_57 p_426->g_58 p_426->g_69 p_426->g_72 p_426->g_53 p_426->g_121 p_426->g_139 p_426->g_156 p_426->g_157 p_426->g_158 p_426->g_161 p_426->g_164 p_426->g_168 p_426->g_169 p_426->g_172 p_426->g_173 p_426->g_174 p_426->g_178 p_426->g_179 p_426->g_190 p_426->g_192 p_426->g_193 p_426->g_213 p_426->g_215 p_426->g_177 p_426->g_242 p_426->g_282 p_426->g_321 p_426->g_370 p_426->g_364 p_426->g_380 p_426->g_424 p_426->g_19 p_426->g_326
 * writes: p_426->g_12 p_426->g_19 p_426->g_58 p_426->g_53 p_426->g_57 p_426->g_52 p_426->g_139 p_426->g_157 p_426->g_177 p_426->g_178 p_426->g_192 p_426->g_193 p_426->g_69 p_426->g_370 p_426->g_174 p_426->g_378 p_426->g_173 p_426->g_242
 */
int8_t  func_1(struct S0 * p_426)
{ /* block id: 4 */
    int32_t l_9[4];
    VECTOR(int16_t, 8) l_23 = (VECTOR(int16_t, 8))(0x7F59L, (VECTOR(int16_t, 4))(0x7F59L, (VECTOR(int16_t, 2))(0x7F59L, (-1L)), (-1L)), (-1L), 0x7F59L, (-1L));
    uint16_t l_34 = 0UL;
    uint16_t l_372 = 0UL;
    uint32_t *l_373 = (void*)0;
    uint32_t *l_374 = (void*)0;
    uint32_t *l_375 = (void*)0;
    uint16_t l_376 = 0x84ADL;
    int32_t *l_377[4][5] = {{(void*)0,&p_426->g_378,&p_426->g_378,(void*)0,(void*)0},{(void*)0,&p_426->g_378,&p_426->g_378,(void*)0,(void*)0},{(void*)0,&p_426->g_378,&p_426->g_378,(void*)0,(void*)0},{(void*)0,&p_426->g_378,&p_426->g_378,(void*)0,(void*)0}};
    int32_t l_379 = 0x42B1D567L;
    int64_t *l_395 = &p_426->g_178;
    int64_t *l_396 = (void*)0;
    int64_t *l_397 = (void*)0;
    int64_t *l_398[2][2][1] = {{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}}};
    int32_t l_425 = 5L;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_9[i] = 0x149CEC79L;
    l_425 = (func_2(((safe_rshift_func_int16_t_s_s(l_9[0], 3)) == (p_426->g_12 = (safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_426->local_1_offset, get_local_id(1), 10), l_9[0])))), ((p_426->g_173.s7 = ((*l_395) = (safe_mul_func_uint16_t_u_u(func_15((p_426->g_19 = FAKE_DIVERGE(p_426->local_1_offset, get_local_id(1), 10)), (l_379 &= (p_426->g_378 = ((l_376 = (((safe_mul_func_int16_t_s_s((!((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(p_426->g_22.zyxxzyzwxwyzyxzz)).s00, (int16_t)p_426->g_22.x))) && ((VECTOR(int16_t, 8))(l_23.s40062555)).s50))).lo), (safe_div_func_int16_t_s_s((((p_426->g_22.w , p_426->g_22.y) != l_23.s0) && ((p_426->g_174.x = (((p_426->g_22.x >= (safe_rshift_func_int8_t_s_s(func_28(p_426->g_22.w, p_426->g_22.x, p_426->g_22.y, l_34, l_23.s1, p_426), l_9[0]))) != l_9[1]) ^ l_372)) | l_9[2])), p_426->g_43.z)))) < p_426->g_43.y) < l_9[0])) != p_426->g_364.s6))), l_34, p_426), p_426->g_22.w)))) <= l_9[0]), p_426->g_121.x, l_23.s2, p_426) & p_426->g_326.s6);
    return l_376;
}


/* ------------------------------------------ */
/* 
 * reads : p_426->g_177 p_426->g_57 p_426->g_321 p_426->g_172 p_426->g_424 p_426->g_19
 * writes: p_426->g_242 p_426->g_177 p_426->g_157
 */
int8_t  func_2(uint64_t  p_3, int16_t  p_4, int64_t  p_5, uint16_t  p_6, struct S0 * p_426)
{ /* block id: 124 */
    int16_t *l_405 = (void*)0;
    int32_t l_406 = 0x2976F1D1L;
    uint32_t *l_407 = (void*)0;
    uint32_t *l_408 = (void*)0;
    uint32_t *l_409 = (void*)0;
    uint32_t *l_410 = (void*)0;
    uint32_t *l_411 = (void*)0;
    uint32_t *l_412 = (void*)0;
    uint32_t *l_413[7][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
    uint64_t *l_416 = &p_426->g_177[0];
    int32_t l_417 = 0x5B179AACL;
    uint16_t *l_418 = (void*)0;
    int8_t *l_421 = (void*)0;
    int8_t **l_422 = &l_421;
    int32_t l_423 = 0x7E3B0A91L;
    int i, j;
    (*p_426->g_424) = (safe_div_func_int32_t_s_s((l_423 = (l_417 = (((safe_rshift_func_int16_t_s_s((GROUP_DIVERGE(2, 1) < 2UL), (p_426->g_242.y = (1UL <= p_3)))) >= (((l_406 = l_406) < ((VECTOR(int32_t, 4))(0L, 0x3200AD6FL, 0L, 0x46B37F59L)).w) > ((safe_mul_func_uint16_t_u_u((((*l_416) &= 0x77ABA84B95E49E2BL) > p_426->g_57.sc), (p_6 ^= l_417))) == (safe_rshift_func_int16_t_s_s((((*l_422) = (((l_417 , l_418) != l_418) , l_421)) != p_426->g_321), p_426->g_172.w))))) ^ l_417))), 0x6BC840CFL));
    return p_426->g_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_426->g_190 p_426->g_52 p_426->g_380 p_426->g_53
 * writes: p_426->g_52
 */
uint16_t  func_15(uint8_t  p_16, int32_t  p_17, int64_t  p_18, struct S0 * p_426)
{ /* block id: 118 */
    int32_t *l_381 = &p_426->g_53;
    int32_t *l_382 = (void*)0;
    int32_t *l_383 = &p_426->g_157[0];
    int32_t *l_384 = &p_426->g_193;
    int32_t *l_385 = &p_426->g_157[2];
    int32_t *l_386 = (void*)0;
    int32_t l_387 = (-1L);
    int32_t *l_388 = &p_426->g_157[0];
    int32_t l_389 = (-10L);
    int32_t *l_390 = &p_426->g_157[0];
    int32_t *l_391[6][9] = {{&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53},{&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53},{&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53},{&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53},{&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53},{&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53,&p_426->g_53}};
    uint32_t l_392 = 0x98B6F7EEL;
    int i, j;
    (*p_426->g_380) = (*p_426->g_190);
    ++l_392;
    return (*l_381);
}


/* ------------------------------------------ */
/* 
 * reads : p_426->g_22 p_426->g_43 p_426->g_52 p_426->g_57 p_426->g_58 p_426->g_69 p_426->g_72 p_426->g_53 p_426->g_121 p_426->g_139 p_426->g_156 p_426->g_157 p_426->g_158 p_426->g_161 p_426->g_164 p_426->g_168 p_426->g_169 p_426->g_172 p_426->g_173 p_426->g_174 p_426->g_178 p_426->g_179 p_426->g_190 p_426->g_192 p_426->g_193 p_426->g_213 p_426->g_215 p_426->g_177 p_426->g_242 p_426->g_282 p_426->g_321 p_426->g_370
 * writes: p_426->g_58 p_426->g_53 p_426->g_57 p_426->g_52 p_426->g_139 p_426->g_157 p_426->g_177 p_426->g_178 p_426->g_192 p_426->g_193 p_426->g_69 p_426->g_370
 */
int8_t  func_28(int32_t  p_29, int16_t  p_30, uint32_t  p_31, int64_t  p_32, int8_t  p_33, struct S0 * p_426)
{ /* block id: 7 */
    int8_t l_42 = 0x52L;
    int32_t *l_194 = &p_426->g_193;
    int64_t l_351 = 7L;
    int32_t **l_354 = &p_426->g_192;
    int32_t ***l_353 = &l_354;
    if ((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(func_37(l_42, (0x580EL || p_31), (p_32 = 0x7A0B2B0402AD9236L), p_426->g_22.y, p_426))).s3, l_42)))
    { /* block id: 11 */
        uint8_t l_54 = 0xF4L;
        int32_t **l_195 = &p_426->g_192;
        int32_t *l_196[9][8][2] = {{{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193}},{{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193}},{{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193}},{{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193}},{{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193}},{{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193}},{{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193}},{{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193}},{{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193},{(void*)0,&p_426->g_193}}};
        uint16_t *l_290 = (void*)0;
        uint16_t *l_291 = (void*)0;
        uint16_t *l_292 = (void*)0;
        uint16_t *l_293 = (void*)0;
        uint16_t *l_294 = (void*)0;
        uint16_t *l_295[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t ***l_298 = &l_195;
        int32_t **l_299 = &l_196[7][6][0];
        uint64_t *l_303[10][6] = {{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]},{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]},{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]},{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]},{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]},{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]},{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]},{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]},{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]},{(void*)0,&p_426->g_177[0],(void*)0,&p_426->g_177[0],&p_426->g_177[0],&p_426->g_177[0]}};
        int64_t *l_312 = (void*)0;
        int64_t *l_313 = (void*)0;
        int64_t *l_314 = (void*)0;
        int64_t *l_315 = (void*)0;
        int64_t *l_316 = &p_426->g_178;
        int i, j, k;
        (*l_195) = func_44(func_49(p_426->g_52, l_54, p_426), ((*l_195) = (l_194 = p_426->g_192)), &p_426->g_193, l_196[0][0][1], p_426);
        (*l_195) = (*p_426->g_158);
    }
    else
    { /* block id: 88 */
        uint32_t l_348 = 4294967295UL;
        int32_t ***l_355 = &l_354;
        uint32_t *l_369[1];
        uint32_t **l_368 = &l_369[0];
        int i;
        for (i = 0; i < 1; i++)
            l_369[i] = (void*)0;
        for (p_30 = (-7); (p_30 == 26); p_30++)
        { /* block id: 91 */
            VECTOR(int32_t, 4) l_327 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x25EA8C49L), 0x25EA8C49L);
            int16_t *l_340 = (void*)0;
            int16_t *l_341 = (void*)0;
            int16_t *l_342 = (void*)0;
            int16_t *l_343 = (void*)0;
            int16_t *l_344 = (void*)0;
            int16_t *l_345 = (void*)0;
            int16_t *l_346 = (void*)0;
            int16_t *l_347 = (void*)0;
            int64_t *l_349 = (void*)0;
            int64_t *l_350 = (void*)0;
            int32_t l_352 = 0x1E4E1AF7L;
            uint16_t *l_356 = (void*)0;
            uint16_t *l_357[4][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            uint64_t *l_358 = &p_426->g_177[0];
            uint32_t *l_360 = (void*)0;
            uint32_t *l_361[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i, j;
            if (((*l_194) = (safe_add_func_uint64_t_u_u((((p_426->g_57.s4 = ((((p_426->g_321 == (void*)0) > (safe_add_func_int64_t_s_s((((((((GROUP_DIVERGE(2, 1) <= 0UL) ^ ((((*l_194) > ((VECTOR(uint16_t, 16))((+(safe_lshift_func_int16_t_s_s((((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(p_426->g_326.s0756752446270171)), ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_327.yx)), 0x228A678AL, 0x1B41CF9AL)), (int32_t)(p_29 = (safe_mod_func_uint32_t_u_u((safe_div_func_uint64_t_u_u((p_426->g_359[5] = ((safe_rshift_func_int16_t_s_s(8L, (+p_426->g_58.sc))) , ((*l_358) = (safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(p_33, 7)), (p_426->g_121.y &= (safe_add_func_uint16_t_u_u(((((((!(l_327.w |= (0x93757472L <= ((l_348 = p_32) , 1UL)))) >= l_351) & (**p_426->g_158)) < l_352) , l_353) != l_355), p_426->g_58.sd)))))))), p_30)), (*l_194))))))).odd & ((VECTOR(int32_t, 2))(1L))))).yxxxxyxxyxxyyxyy || ((VECTOR(int32_t, 16))(0x38006D5AL))))), ((VECTOR(int32_t, 16))(7L))))).s5 | 6UL), p_33))), p_426->g_359[5], 0x30ABL, 0UL, ((VECTOR(uint16_t, 4))(0xD50CL)), 0xF836L, p_32, ((VECTOR(uint16_t, 2))(0UL)), 0UL, ((VECTOR(uint16_t, 2))(0x8D7CL)), 0x9B31L)).s2) , l_327.w) || p_30)) != 1L) || p_426->g_57.s5) < p_33) , &p_32) == (void*)0), (***l_353)))) ^ FAKE_DIVERGE(p_426->global_1_offset, get_global_id(1), 10)) <= 0xFDL)) >= (***l_355)) || 0x06L), p_30))))
            { /* block id: 100 */
                (*l_354) = &p_29;
                return p_426->g_164.s6;
            }
            else
            { /* block id: 103 */
                int16_t l_365 = 8L;
                (*p_426->g_192) |= ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(0x3DC4E0A8L, (safe_div_func_uint32_t_u_u((p_426->g_282.w || p_426->g_43.w), (*p_426->g_52))), (-1L), (-1L))).xzxwzzyzzzwzwxww, ((VECTOR(int32_t, 4))(p_426->g_364.s5755)).yxxwwwyzyyzwwxzx))).sb;
                (**l_355) = (l_365 , &p_29);
            }
            l_352 &= (0x4D5EL < (safe_lshift_func_uint16_t_u_u((***l_355), 1)));
        }
        (*l_194) ^= (((*l_368) = p_426->g_52) != l_194);
    }
    p_426->g_370[1] = p_426->g_370[1];
    return p_426->g_57.s3;
}


/* ------------------------------------------ */
/* 
 * reads : p_426->g_43
 * writes:
 */
VECTOR(uint8_t, 16)  func_37(int8_t  p_38, uint16_t  p_39, int64_t  p_40, uint64_t  p_41, struct S0 * p_426)
{ /* block id: 9 */
    return p_426->g_43.wwzzywxyzwwxzzxx;
}


/* ------------------------------------------ */
/* 
 * reads : p_426->g_193 p_426->g_158 p_426->g_213 p_426->g_215 p_426->g_192 p_426->g_52 p_426->g_177 p_426->g_57 p_426->g_242 p_426->g_178 p_426->g_157 p_426->g_72 p_426->g_53 p_426->g_58 p_426->g_282 p_426->g_169
 * writes: p_426->g_193 p_426->g_52 p_426->g_192 p_426->g_69 p_426->g_177
 */
int32_t * func_44(uint64_t  p_45, int32_t * p_46, int32_t * p_47, int32_t * p_48, struct S0 * p_426)
{ /* block id: 46 */
    int16_t l_197 = (-7L);
    uint64_t *l_207 = &p_426->g_177[0];
    uint64_t **l_206 = &l_207;
    uint32_t l_208 = 2UL;
    int32_t l_219 = 0x2B346613L;
    int32_t l_221 = 1L;
    int32_t l_224 = 0x5F3AC245L;
    int32_t l_225 = (-2L);
    int32_t l_226 = 1L;
    int32_t l_227 = 0x5002750AL;
    int32_t l_228 = 0x4985221FL;
    int32_t l_229 = (-1L);
    VECTOR(int32_t, 8) l_230 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    int16_t l_231 = (-6L);
    uint32_t l_232[8];
    VECTOR(int8_t, 2) l_251 = (VECTOR(int8_t, 2))((-1L), 7L);
    uint32_t *l_256 = (void*)0;
    uint32_t l_271 = 0x23BF89DEL;
    uint32_t *l_272 = &l_271;
    uint8_t l_273[3];
    uint8_t l_274 = 1UL;
    uint8_t *l_277 = &l_273[2];
    int8_t *l_288 = (void*)0;
    int16_t *l_289 = &l_231;
    int i;
    for (i = 0; i < 8; i++)
        l_232[i] = 8UL;
    for (i = 0; i < 3; i++)
        l_273[i] = 255UL;
    if ((((l_197 , (void*)0) == (void*)0) < ((+(0x5BAFL >= l_197)) != ((safe_div_func_int8_t_s_s((((p_426->g_193 >= (safe_mod_func_int16_t_s_s((p_45 , 0L), (safe_mul_func_uint8_t_u_u((+((((*l_206) = &p_45) == &p_45) & 0x456694A0AEEF7D3CL)), l_208))))) , l_197) && 0L), GROUP_DIVERGE(0, 1))) < p_45))))
    { /* block id: 48 */
        int32_t *l_214 = &p_426->g_157[0];
        int32_t *l_220 = &p_426->g_157[0];
        int32_t *l_222[2][6][5] = {{{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219}},{{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219},{&l_219,&l_219,&l_219,&l_219,&l_219}}};
        int32_t l_223 = (-5L);
        int i, j, k;
        for (p_426->g_193 = 0; (p_426->g_193 < (-3)); p_426->g_193 = safe_sub_func_uint32_t_u_u(p_426->g_193, 9))
        { /* block id: 51 */
            int32_t **l_211 = (void*)0;
            int32_t **l_212[4];
            int i;
            for (i = 0; i < 4; i++)
                l_212[i] = &p_426->g_52;
            (*p_426->g_158) = (void*)0;
        }
        if (((0UL <= 0x34L) , ((*p_47) |= ((VECTOR(int32_t, 2))(p_426->g_213.yy)).hi)))
        { /* block id: 55 */
            int32_t **l_218 = &l_214;
            (*p_426->g_215) = l_214;
            for (l_197 = 0; (l_197 > 20); ++l_197)
            { /* block id: 59 */
                (*p_426->g_215) = (void*)0;
            }
            (*l_218) = func_97(p_426->g_192, p_45, p_426->g_52, p_48, p_45, p_426);
        }
        else
        { /* block id: 63 */
            return p_46;
        }
        --l_232[7];
    }
    else
    { /* block id: 67 */
        uint64_t *l_239 = &p_426->g_177[0];
        int32_t l_243 = 0x55AF62C8L;
        uint16_t *l_246[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        (*p_426->g_192) = ((safe_mul_func_uint8_t_u_u(((p_426->g_177[0] & p_426->g_57.s9) , ((safe_mod_func_uint16_t_u_u(((((*l_206) = l_239) != ((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 8))(p_426->g_242.zwywxzyw)).s2, 2)) , (l_243 , &p_45))) && p_426->g_178), l_226)) , p_45)), (safe_sub_func_int64_t_s_s((~((l_224 ^= (p_426->g_157[0] , p_45)) & l_243)), 0x0CAC3623F3E8B011L)))) < (-1L));
    }
    (*p_47) = ((safe_rshift_func_int8_t_s_u(((p_45 | (safe_mod_func_int8_t_s_s((p_45 , ((VECTOR(int8_t, 16))(0x43L, ((VECTOR(int8_t, 8))(l_251.yxxxxxyy)), (safe_mod_func_int16_t_s_s(0x0475L, (safe_rshift_func_int16_t_s_u(0x2EB7L, FAKE_DIVERGE(p_426->local_1_offset, get_local_id(1), 10))))), 0x35L, ((0x07L && (!((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x2DL, 0x05L)), (l_256 != (void*)0), (p_426->g_69.s0 = (safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(255UL, (safe_lshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((safe_sub_func_int32_t_s_s((p_426->g_157[0] , ((((*l_272) = (safe_lshift_func_int8_t_s_s((l_271 <= p_45), p_426->g_72.s5))) ^ 0x9CA03AC8L) & l_273[2])), 0x0C50B6E6L)) | p_45), p_426->g_53)), 13)), 0xA1L, ((VECTOR(uint8_t, 4))(0x70L)), ((VECTOR(uint8_t, 8))(255UL)), 249UL)).sc03e - ((VECTOR(uint8_t, 4))(0UL))))).xwzyzzww + ((VECTOR(uint8_t, 8))(0x82L))))).s3, p_426->g_58.sa))), l_274, ((VECTOR(uint8_t, 2))(0UL)), 255UL)).s0)) , p_45), 0x39L, ((VECTOR(int8_t, 2))(0x56L)), 0x60L)).s6), 0x98L))) , 0x0AL), 5)) && 0x87L);
    (*p_46) = (((*l_277) ^= 0x7AL) | ((safe_add_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(18446744073709551615UL, (((**l_206) = ((((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 16))(p_426->g_282.yxzyyzwwxxzwyxxy)), (int8_t)(safe_unary_minus_func_uint16_t_u((((void*)0 == p_48) || (((safe_mul_func_int16_t_s_s((l_232[1] > (safe_lshift_func_int16_t_s_s(0x131BL, ((*l_289) = (l_251.y != (0xC4L & (l_230.s3 ^= ((l_227 , l_224) != l_271)))))))), 0x2899L)) >= 0x0E7DE106B63F3A5DL) <= (*p_46))))), (int8_t)p_45))).seb81, ((VECTOR(int8_t, 4))(0x4BL))))).hi != ((VECTOR(int8_t, 2))(0L))))).yyxxyxxy, ((VECTOR(int8_t, 8))(7L)), ((VECTOR(int8_t, 8))(0x4AL))))).s6 == FAKE_DIVERGE(p_426->group_0_offset, get_group_id(0), 10)) , 1UL)) < p_426->g_169.s7))), p_426->g_57.s1)) == p_426->g_242.x));
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_426->g_57 p_426->g_58 p_426->g_43 p_426->g_69 p_426->g_72 p_426->g_22 p_426->g_52 p_426->g_53 p_426->g_121 p_426->g_139 p_426->g_156 p_426->g_157 p_426->g_158 p_426->g_161 p_426->g_164 p_426->g_168 p_426->g_169 p_426->g_172 p_426->g_173 p_426->g_174 p_426->g_178 p_426->g_179 p_426->g_190
 * writes: p_426->g_58 p_426->g_53 p_426->g_57 p_426->g_52 p_426->g_139 p_426->g_157 p_426->g_177 p_426->g_178
 */
uint64_t  func_49(int32_t * p_50, int8_t  p_51, struct S0 * p_426)
{ /* block id: 12 */
    VECTOR(uint32_t, 4) l_59 = (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 6UL), 6UL);
    VECTOR(uint32_t, 16) l_60 = (VECTOR(uint32_t, 16))(0x76FC58ACL, (VECTOR(uint32_t, 4))(0x76FC58ACL, (VECTOR(uint32_t, 2))(0x76FC58ACL, 0x4484A863L), 0x4484A863L), 0x4484A863L, 0x76FC58ACL, 0x4484A863L, (VECTOR(uint32_t, 2))(0x76FC58ACL, 0x4484A863L), (VECTOR(uint32_t, 2))(0x76FC58ACL, 0x4484A863L), 0x76FC58ACL, 0x4484A863L, 0x76FC58ACL, 0x4484A863L);
    VECTOR(uint8_t, 4) l_73 = (VECTOR(uint8_t, 4))(0x01L, (VECTOR(uint8_t, 2))(0x01L, 0xB2L), 0xB2L);
    VECTOR(uint8_t, 2) l_76 = (VECTOR(uint8_t, 2))(0xA0L, 0x77L);
    uint32_t l_79 = 4294967286UL;
    uint32_t *l_83 = (void*)0;
    uint32_t *l_84[2];
    int32_t l_85 = (-1L);
    int32_t l_86 = 0x0CF2F289L;
    int32_t l_87 = 1L;
    int32_t l_88 = 0L;
    uint32_t *l_103[4];
    int8_t l_110 = (-4L);
    VECTOR(int64_t, 2) l_162 = (VECTOR(int64_t, 2))(0L, 0x62BAD161D8D22D33L);
    VECTOR(int64_t, 4) l_163 = (VECTOR(int64_t, 4))(0x557642EFCB156993L, (VECTOR(int64_t, 2))(0x557642EFCB156993L, 0x7BC6739B9925D8BBL), 0x7BC6739B9925D8BBL);
    VECTOR(int64_t, 2) l_165 = (VECTOR(int64_t, 2))(0L, 0x528A0D4A109FDD9FL);
    VECTOR(int64_t, 16) l_166 = (VECTOR(int64_t, 16))(0x68622381DE4584C0L, (VECTOR(int64_t, 4))(0x68622381DE4584C0L, (VECTOR(int64_t, 2))(0x68622381DE4584C0L, 0L), 0L), 0L, 0x68622381DE4584C0L, 0L, (VECTOR(int64_t, 2))(0x68622381DE4584C0L, 0L), (VECTOR(int64_t, 2))(0x68622381DE4584C0L, 0L), 0x68622381DE4584C0L, 0L, 0x68622381DE4584C0L, 0L);
    VECTOR(int64_t, 4) l_167 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x724E05431A1AE95AL), 0x724E05431A1AE95AL);
    VECTOR(int64_t, 4) l_170 = (VECTOR(int64_t, 4))(0x1AEFDAD2A3BAFCB3L, (VECTOR(int64_t, 2))(0x1AEFDAD2A3BAFCB3L, 0x279D215A4DA50BC8L), 0x279D215A4DA50BC8L);
    VECTOR(int64_t, 2) l_171 = (VECTOR(int64_t, 2))((-4L), 0x54FC8DD5CAA87885L);
    int16_t l_175 = 1L;
    uint64_t *l_176 = &p_426->g_177[0];
    int32_t l_183 = 0x3894EB69L;
    int32_t l_184[4];
    uint64_t l_185 = 0x83A5459D30CC3955L;
    int i;
    for (i = 0; i < 2; i++)
        l_84[i] = &l_79;
    for (i = 0; i < 4; i++)
        l_103[i] = (void*)0;
    for (i = 0; i < 4; i++)
        l_184[i] = 0x36697B6FL;
    (*p_426->g_158) = ((((((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(abs(((VECTOR(uint32_t, 16))(p_426->g_57.s2e9d3b05e2623ee1)).hi))) + ((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL)).yxxy, ((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 2))(p_426->g_58.s41)).yyyx, ((VECTOR(uint32_t, 16))(l_59.wxwywzxxzzxywzwx)).s4999)))))).wzyzyyzz))).s10, ((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 16))(l_60.s074c89aed293e35f)).s20, (uint32_t)(safe_div_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_426->group_0_offset, get_group_id(0), 10), p_426->g_43.w)) ^ (((VECTOR(int32_t, 4))((0xE0L && (safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(p_426->g_69.sc45d1882)).s05 & ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 2))(p_426->g_72.s74)), ((VECTOR(uint8_t, 8))(l_73.yzyxzyxy)).s27, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(l_76.xyyx)).wzxyzxxy >> ((VECTOR(uint8_t, 8))(8))))).s4215257434176401 | ((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 8))(abs(((VECTOR(int8_t, 8))(2L, 0x1BL, (((safe_rshift_func_uint8_t_u_u(p_426->g_22.x, l_79)) && l_73.w) & l_59.y), 0x35L, (((l_88 = func_80((p_426->g_58.se--), func_91(func_97(l_103[1], (0x2718AF62F62330F0L && (0x88L & p_426->g_43.x)), p_426->g_52, &p_426->g_53, l_59.z, p_426), p_51, l_110, l_73.z, l_59.x, p_426), p_426)) , l_79) & p_426->g_43.z), 0x46L, 7L, 0x5FL))))).s3600465156443447))).se3, ((VECTOR(uint8_t, 2))(2UL))))).xxyx, (uint8_t)p_426->g_43.z, (uint8_t)1UL))).yyxwxxwwyyywzywz))).s6b, ((VECTOR(uint8_t, 2))(0UL)))))))), 0UL, 1UL)).wywxzzww | ((VECTOR(uint8_t, 8))(0x0AL))))).s2765350741271040, ((VECTOR(uint8_t, 16))(7UL))))).s3b02, ((VECTOR(uint8_t, 4))(255UL))))) + ((VECTOR(uint8_t, 4))(252UL))))), ((VECTOR(uint8_t, 4))(246UL)), ((VECTOR(uint8_t, 4))(0xDFL))))).even))).lo, 2)), l_76.y))), ((VECTOR(int32_t, 2))((-2L))), 0x322F5C3AL)).z != l_76.x)), p_426->g_121.y))))), ((VECTOR(uint32_t, 4))(4294967288UL)), 0xE14A350FL, 3UL)).lo, ((VECTOR(uint32_t, 4))(0xAC6BCD61L)), ((VECTOR(uint32_t, 4))(0xF5433B4EL))))).odd))).even , l_87) == 9UL) > l_60.s0) , &p_426->g_157[0]);
    (*p_426->g_179) = func_91(p_426->g_52, p_51, (~(safe_mod_func_uint64_t_u_u(((*l_176) = (p_51 > ((p_426->g_161 <= (((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),int64_t,((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(0L, 0x6599F55FBD205344L)) != ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(l_162.xxyy)) && ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(l_163.wwyyxzywxxxxyzxw)).even == ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(p_426->g_164.s2d)).yxxyxyyx == ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(0x1E382851A426486CL, 0x3A8E694F7BBAF5E3L)) && ((VECTOR(int64_t, 2))(l_165.xy))))).yyyxxyxx))).s41, ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(l_166.sb5a9)).lo < ((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(l_167.yzzxyyzwwzxyxwxx)).s04b5, ((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 2))(0x2429CABE6A2B58D0L, 0x75BA9DFC485CD221L)).yyyyxxyxxxxxxxxx, ((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 2))(p_426->g_168.s4b)).xyyyxyyy, ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 8))(p_426->g_169.sa87b3a4d)).s1433012310455443, ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 16))(l_170.xwzwwzxxyzwwyxxz)).lo, ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(l_171.xyxyyyyyxyxyyyxx)).s27b4 >= ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(p_426->g_172.wzzwxyzyzyzwzzyz)).sd5 && ((VECTOR(int64_t, 2))(p_426->g_173.s4d))))).xyxy))).xwyxwxzy, ((VECTOR(int64_t, 4))((&p_50 == &p_426->g_52), ((VECTOR(int64_t, 2))(p_426->g_174.xx)), 7L)).yzyxwwyw)))))) ^ ((VECTOR(int64_t, 8))(l_175, ((VECTOR(int64_t, 2))(6L, 0x1411A3A22F7D754DL)), (((void*)0 != p_426->g_52) && 1UL), l_76.y, 0x2E5C04B26ACF6593L, 0x2B5B6C6E20C9473AL, 0x64CDA43A824C425AL))))).s6131556436261123 & ((VECTOR(int64_t, 16))(0x32489128E19375ECL)))))))).odd, ((VECTOR(int64_t, 8))(4L))))))))))) || ((VECTOR(int64_t, 8))(1L))))).s3333657773033521, ((VECTOR(int64_t, 16))((-10L))))))))).s04bd, ((VECTOR(int64_t, 4))(0L))))).even))), (int64_t)p_51))) && ((VECTOR(int64_t, 2))(0x0A758AB5E4248502L))))).yyyxyyxy == ((VECTOR(int64_t, 8))(0x086F20A964B1B77EL))))).s26))).yyyx && ((VECTOR(int64_t, 4))(0x436F7E94529B3CD3L))))).odd && ((VECTOR(int64_t, 2))((-10L)))))).yxyxxxxx && ((VECTOR(int64_t, 8))(0x06DAFEFF6F5AAAE0L)))))))).hi))).even))).xyxx, (int64_t)p_51, (int64_t)p_51))), ((VECTOR(int64_t, 4))(0x7EBAF8E3876213B6L))))).lo && ((VECTOR(int64_t, 2))(0x43BF84625BB9092BL))))), ((VECTOR(int64_t, 2))(1L))))).hi == 0x1D7F75DE9916C91CL)) == l_162.y))), l_171.x))), p_51, p_426->g_178, p_426);
    for (p_426->g_178 = (-10); (p_426->g_178 < 4); p_426->g_178++)
    { /* block id: 34 */
        int32_t *l_182[6] = {&l_85,&p_426->g_53,&l_85,&l_85,&p_426->g_53,&l_85};
        int i;
        l_185++;
        for (p_51 = (-5); (p_51 == 20); ++p_51)
        { /* block id: 38 */
            int64_t l_191 = 0x647660EA5D856827L;
            (*p_426->g_190) = (*p_426->g_179);
            return l_191;
        }
    }
    return p_426->g_69.sd;
}


/* ------------------------------------------ */
/* 
 * reads : p_426->g_121 p_426->g_22 p_426->g_52 p_426->g_53 p_426->g_139 p_426->g_69 p_426->g_156 p_426->g_157
 * writes: p_426->g_57 p_426->g_52 p_426->g_139 p_426->g_53 p_426->g_157
 */
int32_t  func_80(uint32_t  p_81, int32_t * p_82, struct S0 * p_426)
{ /* block id: 20 */
    VECTOR(uint8_t, 8) l_116 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 251UL), 251UL), 251UL, 1UL, 251UL);
    VECTOR(uint16_t, 4) l_119 = (VECTOR(uint16_t, 4))(0x9FC7L, (VECTOR(uint16_t, 2))(0x9FC7L, 0x0C9FL), 0x0C9FL);
    VECTOR(uint16_t, 2) l_120 = (VECTOR(uint16_t, 2))(65527UL, 0xDC41L);
    uint32_t *l_128 = (void*)0;
    uint32_t *l_129 = (void*)0;
    uint16_t l_130 = 65535UL;
    int8_t l_133 = 0x7FL;
    VECTOR(int16_t, 2) l_134 = (VECTOR(int16_t, 2))((-5L), (-1L));
    int64_t *l_138[9][7] = {{(void*)0,(void*)0,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139},{(void*)0,(void*)0,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139},{(void*)0,(void*)0,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139},{(void*)0,(void*)0,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139},{(void*)0,(void*)0,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139},{(void*)0,(void*)0,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139},{(void*)0,(void*)0,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139},{(void*)0,(void*)0,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139},{(void*)0,(void*)0,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139,&p_426->g_139}};
    VECTOR(uint32_t, 8) l_148 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x8DB39B42L), 0x8DB39B42L), 0x8DB39B42L, 1UL, 0x8DB39B42L);
    VECTOR(uint32_t, 16) l_149 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 1UL), 1UL, 4294967295UL, 1UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 4294967295UL, 1UL, 4294967295UL, 1UL);
    int32_t l_154 = 0x0213BFE5L;
    int32_t l_155[3];
    int i, j;
    for (i = 0; i < 3; i++)
        l_155[i] = 0x5E7E56D9L;
    p_426->g_52 = func_97(((!(safe_mod_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(0xFFAEL, 0x203CL, 1UL, l_116.s7, 1UL, 1UL, ((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(0xE41FL, 65535UL)).xxxyxyyyxyyxyyxx + ((VECTOR(uint16_t, 4))(l_119.wwyy)).xzxyyxyxzzzwyyyx))).s8d3d, ((VECTOR(uint16_t, 8))(l_120.yxyxyxyx)).hi))), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(p_426->g_121.yxxxxxxyxxyxyyyy)).s73 & ((VECTOR(uint16_t, 2))(4UL, 0xFB2FL))))), 65533UL, 8UL)), 7UL, 65535UL)).s7, (safe_sub_func_int16_t_s_s(p_81, ((safe_lshift_func_int8_t_s_s((safe_add_func_uint32_t_u_u((p_426->g_57.sb = ((FAKE_DIVERGE(p_426->global_1_offset, get_global_id(1), 10) , 0x3859457360C0ABB7L) == (((void*)0 != &p_426->g_53) >= ((((l_128 == &p_81) , (l_119.z , 0xC4E49CAF053B50BCL)) | p_81) && l_119.w)))), l_119.x)), l_130)) ^ p_426->g_121.y))))), p_426->g_22.x))) , &p_81), p_81, p_426->g_52, p_82, p_426->g_22.z, p_426);
    (*p_426->g_156) ^= ((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(0x207DL, 1L, 1L, (l_133 , ((VECTOR(int16_t, 4))(l_134.yxxy)).w), (((((((safe_unary_minus_func_uint8_t_u((safe_mod_func_int64_t_s_s((((p_426->g_53 , ((VECTOR(int64_t, 4))(0x60B4B7F8BE070EAEL, (p_426->g_139 &= (&p_426->g_53 == p_82)), 0x2F25C912EA93CC3EL, (-1L))).x) , (!((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u(p_81, (((l_154 = ((safe_lshift_func_int8_t_s_u((((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 4))((+((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(l_148.s65112000)).s14 + ((VECTOR(uint32_t, 8))(l_149.sce82fddf)).s44))).xyxx))).zxywzzzz))).s3 < (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0L, 0x31F86349L)), ((~(safe_div_func_int32_t_s_s(((safe_div_func_int32_t_s_s(l_119.z, (+((*p_426->g_52) = (FAKE_DIVERGE(p_426->global_1_offset, get_global_id(1), 10) == (p_81 , (0x118C22C6L && (*p_82)))))))) , (*p_426->g_52)), l_116.s0))) <= (-7L)), ((VECTOR(int32_t, 2))(0x7BDA2250L)), 0x4DF11EF4L, (*p_426->g_52), l_133, 0x3055D875L, ((VECTOR(int32_t, 2))((-4L))), l_133, (-3L), ((VECTOR(int32_t, 2))(4L)), 0x1113C7C5L)).sa92d && ((VECTOR(int32_t, 4))((-6L)))))).lo, ((VECTOR(int32_t, 2))(0x37E2C827L))))), 1L, (-7L))).x | 1L)), 2)) > l_120.y)) < p_81) >= l_155[1]))), 2)) == 0x98L))) != 0x12158B1AF397C00CL), p_426->g_69.s6)))) , p_82) == p_82) ^ 1L) , 5UL) , l_129) != (void*)0), l_133, 0L, 1L)).s3, p_426->g_121.x)) || p_81);
    return p_81;
}


/* ------------------------------------------ */
/* 
 * reads : p_426->g_52 p_426->g_53 p_426->g_157
 * writes: p_426->g_53 p_426->g_157
 */
int32_t * func_91(uint32_t * p_92, uint32_t  p_93, int32_t  p_94, uint32_t  p_95, uint64_t  p_96, struct S0 * p_426)
{ /* block id: 17 */
    int32_t *l_111 = &p_426->g_53;
    (*p_426->g_52) = (*p_426->g_52);
    return l_111;
}


/* ------------------------------------------ */
/* 
 * reads : p_426->g_52
 * writes:
 */
uint32_t * func_97(uint32_t * p_98, int32_t  p_99, uint32_t * p_100, int32_t * p_101, int64_t  p_102, struct S0 * p_426)
{ /* block id: 14 */
    int32_t *l_104 = &p_426->g_53;
    int32_t *l_105 = &p_426->g_53;
    int32_t *l_106 = &p_426->g_53;
    uint32_t l_107 = 0xF24A8208L;
    l_107--;
    return p_426->g_52;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S0 c_427;
    struct S0* p_426 = &c_427;
    struct S0 c_428 = {
        (-1L), // p_426->g_12
        0x0BL, // p_426->g_19
        (VECTOR(int16_t, 4))(0x0425L, (VECTOR(int16_t, 2))(0x0425L, 1L), 1L), // p_426->g_22
        (VECTOR(uint8_t, 4))(0x96L, (VECTOR(uint8_t, 2))(0x96L, 0x7AL), 0x7AL), // p_426->g_43
        (-8L), // p_426->g_53
        &p_426->g_53, // p_426->g_52
        (VECTOR(uint32_t, 16))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967287UL, 4294967295UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), 4294967287UL, 4294967295UL, 4294967287UL, 4294967295UL), // p_426->g_57
        (VECTOR(uint32_t, 16))(0xB037144DL, (VECTOR(uint32_t, 4))(0xB037144DL, (VECTOR(uint32_t, 2))(0xB037144DL, 0x8543B579L), 0x8543B579L), 0x8543B579L, 0xB037144DL, 0x8543B579L, (VECTOR(uint32_t, 2))(0xB037144DL, 0x8543B579L), (VECTOR(uint32_t, 2))(0xB037144DL, 0x8543B579L), 0xB037144DL, 0x8543B579L, 0xB037144DL, 0x8543B579L), // p_426->g_58
        (VECTOR(uint8_t, 16))(0xF4L, (VECTOR(uint8_t, 4))(0xF4L, (VECTOR(uint8_t, 2))(0xF4L, 0UL), 0UL), 0UL, 0xF4L, 0UL, (VECTOR(uint8_t, 2))(0xF4L, 0UL), (VECTOR(uint8_t, 2))(0xF4L, 0UL), 0xF4L, 0UL, 0xF4L, 0UL), // p_426->g_69
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), 255UL, 1UL, 255UL), // p_426->g_72
        (VECTOR(uint16_t, 2))(0x62CFL, 65535UL), // p_426->g_121
        5L, // p_426->g_139
        {0x71703F93L,0x71703F93L,0x71703F93L}, // p_426->g_157
        &p_426->g_157[0], // p_426->g_156
        &p_426->g_52, // p_426->g_158
        0x1148879AL, // p_426->g_161
        (VECTOR(int64_t, 16))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0x641DE62A7540F12FL), 0x641DE62A7540F12FL), 0x641DE62A7540F12FL, (-5L), 0x641DE62A7540F12FL, (VECTOR(int64_t, 2))((-5L), 0x641DE62A7540F12FL), (VECTOR(int64_t, 2))((-5L), 0x641DE62A7540F12FL), (-5L), 0x641DE62A7540F12FL, (-5L), 0x641DE62A7540F12FL), // p_426->g_164
        (VECTOR(int64_t, 16))((-3L), (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), (-8L)), (-8L)), (-8L), (-3L), (-8L), (VECTOR(int64_t, 2))((-3L), (-8L)), (VECTOR(int64_t, 2))((-3L), (-8L)), (-3L), (-8L), (-3L), (-8L)), // p_426->g_168
        (VECTOR(int64_t, 16))((-9L), (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 0x55A550E5D44BBE2DL), 0x55A550E5D44BBE2DL), 0x55A550E5D44BBE2DL, (-9L), 0x55A550E5D44BBE2DL, (VECTOR(int64_t, 2))((-9L), 0x55A550E5D44BBE2DL), (VECTOR(int64_t, 2))((-9L), 0x55A550E5D44BBE2DL), (-9L), 0x55A550E5D44BBE2DL, (-9L), 0x55A550E5D44BBE2DL), // p_426->g_169
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), // p_426->g_172
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x1878783DA1C2317EL), 0x1878783DA1C2317EL), 0x1878783DA1C2317EL, 0L, 0x1878783DA1C2317EL, (VECTOR(int64_t, 2))(0L, 0x1878783DA1C2317EL), (VECTOR(int64_t, 2))(0L, 0x1878783DA1C2317EL), 0L, 0x1878783DA1C2317EL, 0L, 0x1878783DA1C2317EL), // p_426->g_173
        (VECTOR(int64_t, 2))(0x2E3C54FD3AA2E64EL, 0x6CC9BB9CBAC53C36L), // p_426->g_174
        {0xE296A02216667D68L}, // p_426->g_177
        (-1L), // p_426->g_178
        &p_426->g_52, // p_426->g_179
        &p_426->g_52, // p_426->g_190
        5L, // p_426->g_193
        &p_426->g_193, // p_426->g_192
        (VECTOR(int32_t, 2))(5L, 1L), // p_426->g_213
        &p_426->g_192, // p_426->g_215
        (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, (-3L)), (-3L)), // p_426->g_242
        (VECTOR(int8_t, 4))(0x02L, (VECTOR(int8_t, 2))(0x02L, 0x70L), 0x70L), // p_426->g_282
        (void*)0, // p_426->g_321
        (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x68BBB4E7L), 0x68BBB4E7L), 0x68BBB4E7L, 6L, 0x68BBB4E7L), // p_426->g_326
        {(-8L),0x3419B1ADL,(-8L),(-8L),0x3419B1ADL,(-8L),(-8L)}, // p_426->g_359
        (VECTOR(int32_t, 8))(0x5E9DA915L, (VECTOR(int32_t, 4))(0x5E9DA915L, (VECTOR(int32_t, 2))(0x5E9DA915L, 3L), 3L), 3L, 0x5E9DA915L, 3L), // p_426->g_364
        (void*)0, // p_426->g_371
        {&p_426->g_371,&p_426->g_371,&p_426->g_371,&p_426->g_371,&p_426->g_371,&p_426->g_371,&p_426->g_371,&p_426->g_371,&p_426->g_371,&p_426->g_371}, // p_426->g_370
        (-1L), // p_426->g_378
        &p_426->g_52, // p_426->g_380
        &p_426->g_157[1], // p_426->g_424
        sequence_input[get_global_id(0)], // p_426->global_0_offset
        sequence_input[get_global_id(1)], // p_426->global_1_offset
        sequence_input[get_global_id(2)], // p_426->global_2_offset
        sequence_input[get_local_id(0)], // p_426->local_0_offset
        sequence_input[get_local_id(1)], // p_426->local_1_offset
        sequence_input[get_local_id(2)], // p_426->local_2_offset
        sequence_input[get_group_id(0)], // p_426->group_0_offset
        sequence_input[get_group_id(1)], // p_426->group_1_offset
        sequence_input[get_group_id(2)], // p_426->group_2_offset
    };
    c_427 = c_428;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_426);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_426->g_12, "p_426->g_12", print_hash_value);
    transparent_crc(p_426->g_19, "p_426->g_19", print_hash_value);
    transparent_crc(p_426->g_22.x, "p_426->g_22.x", print_hash_value);
    transparent_crc(p_426->g_22.y, "p_426->g_22.y", print_hash_value);
    transparent_crc(p_426->g_22.z, "p_426->g_22.z", print_hash_value);
    transparent_crc(p_426->g_22.w, "p_426->g_22.w", print_hash_value);
    transparent_crc(p_426->g_43.x, "p_426->g_43.x", print_hash_value);
    transparent_crc(p_426->g_43.y, "p_426->g_43.y", print_hash_value);
    transparent_crc(p_426->g_43.z, "p_426->g_43.z", print_hash_value);
    transparent_crc(p_426->g_43.w, "p_426->g_43.w", print_hash_value);
    transparent_crc(p_426->g_53, "p_426->g_53", print_hash_value);
    transparent_crc(p_426->g_57.s0, "p_426->g_57.s0", print_hash_value);
    transparent_crc(p_426->g_57.s1, "p_426->g_57.s1", print_hash_value);
    transparent_crc(p_426->g_57.s2, "p_426->g_57.s2", print_hash_value);
    transparent_crc(p_426->g_57.s3, "p_426->g_57.s3", print_hash_value);
    transparent_crc(p_426->g_57.s4, "p_426->g_57.s4", print_hash_value);
    transparent_crc(p_426->g_57.s5, "p_426->g_57.s5", print_hash_value);
    transparent_crc(p_426->g_57.s6, "p_426->g_57.s6", print_hash_value);
    transparent_crc(p_426->g_57.s7, "p_426->g_57.s7", print_hash_value);
    transparent_crc(p_426->g_57.s8, "p_426->g_57.s8", print_hash_value);
    transparent_crc(p_426->g_57.s9, "p_426->g_57.s9", print_hash_value);
    transparent_crc(p_426->g_57.sa, "p_426->g_57.sa", print_hash_value);
    transparent_crc(p_426->g_57.sb, "p_426->g_57.sb", print_hash_value);
    transparent_crc(p_426->g_57.sc, "p_426->g_57.sc", print_hash_value);
    transparent_crc(p_426->g_57.sd, "p_426->g_57.sd", print_hash_value);
    transparent_crc(p_426->g_57.se, "p_426->g_57.se", print_hash_value);
    transparent_crc(p_426->g_57.sf, "p_426->g_57.sf", print_hash_value);
    transparent_crc(p_426->g_58.s0, "p_426->g_58.s0", print_hash_value);
    transparent_crc(p_426->g_58.s1, "p_426->g_58.s1", print_hash_value);
    transparent_crc(p_426->g_58.s2, "p_426->g_58.s2", print_hash_value);
    transparent_crc(p_426->g_58.s3, "p_426->g_58.s3", print_hash_value);
    transparent_crc(p_426->g_58.s4, "p_426->g_58.s4", print_hash_value);
    transparent_crc(p_426->g_58.s5, "p_426->g_58.s5", print_hash_value);
    transparent_crc(p_426->g_58.s6, "p_426->g_58.s6", print_hash_value);
    transparent_crc(p_426->g_58.s7, "p_426->g_58.s7", print_hash_value);
    transparent_crc(p_426->g_58.s8, "p_426->g_58.s8", print_hash_value);
    transparent_crc(p_426->g_58.s9, "p_426->g_58.s9", print_hash_value);
    transparent_crc(p_426->g_58.sa, "p_426->g_58.sa", print_hash_value);
    transparent_crc(p_426->g_58.sb, "p_426->g_58.sb", print_hash_value);
    transparent_crc(p_426->g_58.sc, "p_426->g_58.sc", print_hash_value);
    transparent_crc(p_426->g_58.sd, "p_426->g_58.sd", print_hash_value);
    transparent_crc(p_426->g_58.se, "p_426->g_58.se", print_hash_value);
    transparent_crc(p_426->g_58.sf, "p_426->g_58.sf", print_hash_value);
    transparent_crc(p_426->g_69.s0, "p_426->g_69.s0", print_hash_value);
    transparent_crc(p_426->g_69.s1, "p_426->g_69.s1", print_hash_value);
    transparent_crc(p_426->g_69.s2, "p_426->g_69.s2", print_hash_value);
    transparent_crc(p_426->g_69.s3, "p_426->g_69.s3", print_hash_value);
    transparent_crc(p_426->g_69.s4, "p_426->g_69.s4", print_hash_value);
    transparent_crc(p_426->g_69.s5, "p_426->g_69.s5", print_hash_value);
    transparent_crc(p_426->g_69.s6, "p_426->g_69.s6", print_hash_value);
    transparent_crc(p_426->g_69.s7, "p_426->g_69.s7", print_hash_value);
    transparent_crc(p_426->g_69.s8, "p_426->g_69.s8", print_hash_value);
    transparent_crc(p_426->g_69.s9, "p_426->g_69.s9", print_hash_value);
    transparent_crc(p_426->g_69.sa, "p_426->g_69.sa", print_hash_value);
    transparent_crc(p_426->g_69.sb, "p_426->g_69.sb", print_hash_value);
    transparent_crc(p_426->g_69.sc, "p_426->g_69.sc", print_hash_value);
    transparent_crc(p_426->g_69.sd, "p_426->g_69.sd", print_hash_value);
    transparent_crc(p_426->g_69.se, "p_426->g_69.se", print_hash_value);
    transparent_crc(p_426->g_69.sf, "p_426->g_69.sf", print_hash_value);
    transparent_crc(p_426->g_72.s0, "p_426->g_72.s0", print_hash_value);
    transparent_crc(p_426->g_72.s1, "p_426->g_72.s1", print_hash_value);
    transparent_crc(p_426->g_72.s2, "p_426->g_72.s2", print_hash_value);
    transparent_crc(p_426->g_72.s3, "p_426->g_72.s3", print_hash_value);
    transparent_crc(p_426->g_72.s4, "p_426->g_72.s4", print_hash_value);
    transparent_crc(p_426->g_72.s5, "p_426->g_72.s5", print_hash_value);
    transparent_crc(p_426->g_72.s6, "p_426->g_72.s6", print_hash_value);
    transparent_crc(p_426->g_72.s7, "p_426->g_72.s7", print_hash_value);
    transparent_crc(p_426->g_121.x, "p_426->g_121.x", print_hash_value);
    transparent_crc(p_426->g_121.y, "p_426->g_121.y", print_hash_value);
    transparent_crc(p_426->g_139, "p_426->g_139", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_426->g_157[i], "p_426->g_157[i]", print_hash_value);

    }
    transparent_crc(p_426->g_161, "p_426->g_161", print_hash_value);
    transparent_crc(p_426->g_164.s0, "p_426->g_164.s0", print_hash_value);
    transparent_crc(p_426->g_164.s1, "p_426->g_164.s1", print_hash_value);
    transparent_crc(p_426->g_164.s2, "p_426->g_164.s2", print_hash_value);
    transparent_crc(p_426->g_164.s3, "p_426->g_164.s3", print_hash_value);
    transparent_crc(p_426->g_164.s4, "p_426->g_164.s4", print_hash_value);
    transparent_crc(p_426->g_164.s5, "p_426->g_164.s5", print_hash_value);
    transparent_crc(p_426->g_164.s6, "p_426->g_164.s6", print_hash_value);
    transparent_crc(p_426->g_164.s7, "p_426->g_164.s7", print_hash_value);
    transparent_crc(p_426->g_164.s8, "p_426->g_164.s8", print_hash_value);
    transparent_crc(p_426->g_164.s9, "p_426->g_164.s9", print_hash_value);
    transparent_crc(p_426->g_164.sa, "p_426->g_164.sa", print_hash_value);
    transparent_crc(p_426->g_164.sb, "p_426->g_164.sb", print_hash_value);
    transparent_crc(p_426->g_164.sc, "p_426->g_164.sc", print_hash_value);
    transparent_crc(p_426->g_164.sd, "p_426->g_164.sd", print_hash_value);
    transparent_crc(p_426->g_164.se, "p_426->g_164.se", print_hash_value);
    transparent_crc(p_426->g_164.sf, "p_426->g_164.sf", print_hash_value);
    transparent_crc(p_426->g_168.s0, "p_426->g_168.s0", print_hash_value);
    transparent_crc(p_426->g_168.s1, "p_426->g_168.s1", print_hash_value);
    transparent_crc(p_426->g_168.s2, "p_426->g_168.s2", print_hash_value);
    transparent_crc(p_426->g_168.s3, "p_426->g_168.s3", print_hash_value);
    transparent_crc(p_426->g_168.s4, "p_426->g_168.s4", print_hash_value);
    transparent_crc(p_426->g_168.s5, "p_426->g_168.s5", print_hash_value);
    transparent_crc(p_426->g_168.s6, "p_426->g_168.s6", print_hash_value);
    transparent_crc(p_426->g_168.s7, "p_426->g_168.s7", print_hash_value);
    transparent_crc(p_426->g_168.s8, "p_426->g_168.s8", print_hash_value);
    transparent_crc(p_426->g_168.s9, "p_426->g_168.s9", print_hash_value);
    transparent_crc(p_426->g_168.sa, "p_426->g_168.sa", print_hash_value);
    transparent_crc(p_426->g_168.sb, "p_426->g_168.sb", print_hash_value);
    transparent_crc(p_426->g_168.sc, "p_426->g_168.sc", print_hash_value);
    transparent_crc(p_426->g_168.sd, "p_426->g_168.sd", print_hash_value);
    transparent_crc(p_426->g_168.se, "p_426->g_168.se", print_hash_value);
    transparent_crc(p_426->g_168.sf, "p_426->g_168.sf", print_hash_value);
    transparent_crc(p_426->g_169.s0, "p_426->g_169.s0", print_hash_value);
    transparent_crc(p_426->g_169.s1, "p_426->g_169.s1", print_hash_value);
    transparent_crc(p_426->g_169.s2, "p_426->g_169.s2", print_hash_value);
    transparent_crc(p_426->g_169.s3, "p_426->g_169.s3", print_hash_value);
    transparent_crc(p_426->g_169.s4, "p_426->g_169.s4", print_hash_value);
    transparent_crc(p_426->g_169.s5, "p_426->g_169.s5", print_hash_value);
    transparent_crc(p_426->g_169.s6, "p_426->g_169.s6", print_hash_value);
    transparent_crc(p_426->g_169.s7, "p_426->g_169.s7", print_hash_value);
    transparent_crc(p_426->g_169.s8, "p_426->g_169.s8", print_hash_value);
    transparent_crc(p_426->g_169.s9, "p_426->g_169.s9", print_hash_value);
    transparent_crc(p_426->g_169.sa, "p_426->g_169.sa", print_hash_value);
    transparent_crc(p_426->g_169.sb, "p_426->g_169.sb", print_hash_value);
    transparent_crc(p_426->g_169.sc, "p_426->g_169.sc", print_hash_value);
    transparent_crc(p_426->g_169.sd, "p_426->g_169.sd", print_hash_value);
    transparent_crc(p_426->g_169.se, "p_426->g_169.se", print_hash_value);
    transparent_crc(p_426->g_169.sf, "p_426->g_169.sf", print_hash_value);
    transparent_crc(p_426->g_172.x, "p_426->g_172.x", print_hash_value);
    transparent_crc(p_426->g_172.y, "p_426->g_172.y", print_hash_value);
    transparent_crc(p_426->g_172.z, "p_426->g_172.z", print_hash_value);
    transparent_crc(p_426->g_172.w, "p_426->g_172.w", print_hash_value);
    transparent_crc(p_426->g_173.s0, "p_426->g_173.s0", print_hash_value);
    transparent_crc(p_426->g_173.s1, "p_426->g_173.s1", print_hash_value);
    transparent_crc(p_426->g_173.s2, "p_426->g_173.s2", print_hash_value);
    transparent_crc(p_426->g_173.s3, "p_426->g_173.s3", print_hash_value);
    transparent_crc(p_426->g_173.s4, "p_426->g_173.s4", print_hash_value);
    transparent_crc(p_426->g_173.s5, "p_426->g_173.s5", print_hash_value);
    transparent_crc(p_426->g_173.s6, "p_426->g_173.s6", print_hash_value);
    transparent_crc(p_426->g_173.s7, "p_426->g_173.s7", print_hash_value);
    transparent_crc(p_426->g_173.s8, "p_426->g_173.s8", print_hash_value);
    transparent_crc(p_426->g_173.s9, "p_426->g_173.s9", print_hash_value);
    transparent_crc(p_426->g_173.sa, "p_426->g_173.sa", print_hash_value);
    transparent_crc(p_426->g_173.sb, "p_426->g_173.sb", print_hash_value);
    transparent_crc(p_426->g_173.sc, "p_426->g_173.sc", print_hash_value);
    transparent_crc(p_426->g_173.sd, "p_426->g_173.sd", print_hash_value);
    transparent_crc(p_426->g_173.se, "p_426->g_173.se", print_hash_value);
    transparent_crc(p_426->g_173.sf, "p_426->g_173.sf", print_hash_value);
    transparent_crc(p_426->g_174.x, "p_426->g_174.x", print_hash_value);
    transparent_crc(p_426->g_174.y, "p_426->g_174.y", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_426->g_177[i], "p_426->g_177[i]", print_hash_value);

    }
    transparent_crc(p_426->g_178, "p_426->g_178", print_hash_value);
    transparent_crc(p_426->g_193, "p_426->g_193", print_hash_value);
    transparent_crc(p_426->g_213.x, "p_426->g_213.x", print_hash_value);
    transparent_crc(p_426->g_213.y, "p_426->g_213.y", print_hash_value);
    transparent_crc(p_426->g_242.x, "p_426->g_242.x", print_hash_value);
    transparent_crc(p_426->g_242.y, "p_426->g_242.y", print_hash_value);
    transparent_crc(p_426->g_242.z, "p_426->g_242.z", print_hash_value);
    transparent_crc(p_426->g_242.w, "p_426->g_242.w", print_hash_value);
    transparent_crc(p_426->g_282.x, "p_426->g_282.x", print_hash_value);
    transparent_crc(p_426->g_282.y, "p_426->g_282.y", print_hash_value);
    transparent_crc(p_426->g_282.z, "p_426->g_282.z", print_hash_value);
    transparent_crc(p_426->g_282.w, "p_426->g_282.w", print_hash_value);
    transparent_crc(p_426->g_326.s0, "p_426->g_326.s0", print_hash_value);
    transparent_crc(p_426->g_326.s1, "p_426->g_326.s1", print_hash_value);
    transparent_crc(p_426->g_326.s2, "p_426->g_326.s2", print_hash_value);
    transparent_crc(p_426->g_326.s3, "p_426->g_326.s3", print_hash_value);
    transparent_crc(p_426->g_326.s4, "p_426->g_326.s4", print_hash_value);
    transparent_crc(p_426->g_326.s5, "p_426->g_326.s5", print_hash_value);
    transparent_crc(p_426->g_326.s6, "p_426->g_326.s6", print_hash_value);
    transparent_crc(p_426->g_326.s7, "p_426->g_326.s7", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_426->g_359[i], "p_426->g_359[i]", print_hash_value);

    }
    transparent_crc(p_426->g_364.s0, "p_426->g_364.s0", print_hash_value);
    transparent_crc(p_426->g_364.s1, "p_426->g_364.s1", print_hash_value);
    transparent_crc(p_426->g_364.s2, "p_426->g_364.s2", print_hash_value);
    transparent_crc(p_426->g_364.s3, "p_426->g_364.s3", print_hash_value);
    transparent_crc(p_426->g_364.s4, "p_426->g_364.s4", print_hash_value);
    transparent_crc(p_426->g_364.s5, "p_426->g_364.s5", print_hash_value);
    transparent_crc(p_426->g_364.s6, "p_426->g_364.s6", print_hash_value);
    transparent_crc(p_426->g_364.s7, "p_426->g_364.s7", print_hash_value);
    transparent_crc(p_426->g_378, "p_426->g_378", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
