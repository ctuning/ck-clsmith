// --atomics 56 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 42,11,7 -l 2,1,1
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{1,0}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{1,0}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 115

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int64_t  f0;
};

struct S1 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    int32_t g_4;
    int32_t g_9;
    int32_t * volatile g_8[4];
    int32_t * volatile g_10;
    volatile VECTOR(uint16_t, 2) g_42;
    VECTOR(uint8_t, 4) g_59;
    VECTOR(uint8_t, 8) g_62;
    VECTOR(uint8_t, 2) g_64;
    VECTOR(int32_t, 8) g_73;
    VECTOR(int32_t, 16) g_78;
    VECTOR(int32_t, 8) g_81;
    int32_t *g_90;
    int32_t **g_89;
    VECTOR(uint16_t, 16) g_102;
    uint8_t g_109;
    int16_t g_111;
    uint32_t g_114;
    int16_t *g_125;
    VECTOR(int32_t, 16) g_128;
    int32_t g_156;
    int8_t g_158;
    union U0 g_192;
    union U0 ** volatile g_199;
    VECTOR(int32_t, 2) g_206;
    uint64_t g_212;
    VECTOR(uint16_t, 4) g_215;
    int32_t *g_219[3][8];
    VECTOR(int32_t, 8) g_239;
    uint64_t g_241;
    union U0 g_250;
    VECTOR(uint8_t, 2) g_278;
    VECTOR(uint8_t, 16) g_279;
    VECTOR(uint8_t, 8) g_281;
    VECTOR(uint16_t, 2) g_282;
    union U0 g_293;
    union U0 g_296;
    uint32_t g_312[8][8];
    union U0 g_316;
    union U0 g_318;
    uint32_t g_320;
    int8_t *g_382;
    uint64_t * volatile g_395;
    uint64_t * volatile * volatile g_394;
    uint32_t v_collective;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S1 * p_407);
int32_t ** func_11(int32_t * p_12, int32_t * p_13, uint32_t  p_14, int64_t  p_15, int32_t * p_16, struct S1 * p_407);
int32_t * func_17(int32_t ** p_18, uint64_t  p_19, int32_t ** p_20, struct S1 * p_407);
int32_t ** func_23(int64_t  p_24, int32_t ** p_25, int32_t ** p_26, int16_t  p_27, struct S1 * p_407);
int64_t  func_34(uint64_t  p_35, uint64_t  p_36, int32_t ** p_37, struct S1 * p_407);
int8_t  func_49(int16_t  p_50, int32_t * p_51, uint32_t  p_52, struct S1 * p_407);
uint16_t  func_55(int32_t * p_56, int32_t ** p_57, int32_t  p_58, struct S1 * p_407);
int8_t  func_65(int32_t * p_66, int32_t  p_67, struct S1 * p_407);
int32_t * func_68(int16_t  p_69, uint64_t  p_70, int64_t  p_71, int32_t ** p_72, struct S1 * p_407);
uint16_t  func_84(uint32_t  p_85, int32_t ** p_86, int32_t ** p_87, uint64_t  p_88, struct S1 * p_407);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_407->g_4 p_407->l_comm_values p_407->g_10 p_407->g_9 p_407->g_42 p_407->g_59 p_407->g_62 p_407->g_64 p_407->g_73 p_407->g_78 p_407->g_81 p_407->g_89 p_407->g_comm_values p_407->g_102 p_407->g_90 p_407->g_114 p_407->g_128 p_407->g_109 p_407->g_111 p_407->g_192 p_407->g_206 p_407->g_212 p_407->g_215 p_407->g_219 p_407->g_250 p_407->g_293 p_407->g_125
 * writes: p_407->g_4 p_407->g_9 p_407->g_comm_values p_407->g_109 p_407->g_114 p_407->g_125 p_407->g_156 p_407->g_158 p_407->g_90 p_407->g_212 p_407->g_73 p_407->g_215 p_407->g_102 p_407->g_312 p_407->g_320 p_407->g_111 p_407->g_382 p_407->g_394
 */
uint64_t  func_1(struct S1 * p_407)
{ /* block id: 4 */
    int32_t *l_22 = &p_407->g_9;
    int32_t **l_21 = &l_22;
    int8_t *l_157 = &p_407->g_158;
    int32_t **l_181 = &p_407->g_90;
    int32_t ***l_399 = &l_181;
    int32_t *l_400 = &p_407->g_4;
    int32_t *l_401 = (void*)0;
    int32_t *l_402[1][3];
    VECTOR(int32_t, 16) l_403 = (VECTOR(int32_t, 16))(0x24EB3885L, (VECTOR(int32_t, 4))(0x24EB3885L, (VECTOR(int32_t, 2))(0x24EB3885L, (-4L)), (-4L)), (-4L), 0x24EB3885L, (-4L), (VECTOR(int32_t, 2))(0x24EB3885L, (-4L)), (VECTOR(int32_t, 2))(0x24EB3885L, (-4L)), 0x24EB3885L, (-4L), 0x24EB3885L, (-4L));
    uint32_t l_404 = 3UL;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_402[i][j] = &p_407->g_4;
    }
    for (p_407->g_4 = 0; (p_407->g_4 < (-18)); p_407->g_4 = safe_sub_func_int16_t_s_s(p_407->g_4, 7))
    { /* block id: 7 */
        VECTOR(uint64_t, 8) l_7 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 1UL), 1UL, 18446744073709551615UL, 1UL);
        int i;
        (*p_407->g_10) |= (((((VECTOR(uint64_t, 16))(l_7.s2124563200600760)).s8 , p_407->l_comm_values[(safe_mod_func_uint32_t_u_u(p_407->tid, 2))]) > 3UL) && 1L);
    }
    (*l_399) = func_11((FAKE_DIVERGE(p_407->group_2_offset, get_group_id(2), 10) , func_17(l_21, p_407->l_comm_values[(safe_mod_func_uint32_t_u_u(p_407->tid, 2))], func_23(((safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s((((VECTOR(int64_t, 16))((-1L), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))((safe_div_func_int16_t_s_s((-1L), FAKE_DIVERGE(p_407->group_0_offset, get_group_id(0), 10))), (+func_34(p_407->g_9, ((safe_mul_func_int16_t_s_s((p_407->g_4 || (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 4))(0xE177L, 0xE311L, 0UL, 4UL)).wwyxyxywyxwyyxxx, ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 16))(p_407->g_42.yyyyxyxxyxxyxyyx)), ((VECTOR(uint16_t, 4))(65526UL, (safe_rshift_func_int8_t_s_s(p_407->l_comm_values[(safe_mod_func_uint32_t_u_u(p_407->tid, 2))], ((*l_157) = (safe_mul_func_int16_t_s_s((safe_sub_func_int8_t_s_s(func_49(p_407->g_42.x, &p_407->g_4, (safe_mul_func_int16_t_s_s(((func_55((*l_21), &l_22, p_407->g_4, p_407) <= (**l_21)) , (*l_22)), (*l_22))), p_407), FAKE_DIVERGE(p_407->local_1_offset, get_local_id(1), 10))), 0x67CBL))))), 0x0D12L, 0UL)).xwzwxywzwzwwxzzw, ((VECTOR(uint16_t, 16))(1UL)))))))).s5, (-8L)))), 5UL)) , (*l_22)), &p_407->g_90, p_407)), 0x71DC7110EE4AD0ADL, 0x19AD6DE816B7C13EL)).yywzyzwz)).s0011613110266074, ((VECTOR(int64_t, 16))(0x35DDD6B6EAE9B237L))))).lo)), 0x594232A31CB770F6L, ((VECTOR(int64_t, 2))(0L)), 0L, 0x4F28B1D9B135E689L, 0x015623E7828D20C3L, 1L)).s2 || (**l_21)), 0UL)), 0UL)) | (-1L)), &p_407->g_90, l_181, p_407->g_73.s2, p_407), p_407)), p_407->g_219[2][2], p_407->g_128.sb, p_407->g_102.s7, (*l_21), p_407);
    l_404++;
    return (*l_400);
}


/* ------------------------------------------ */
/* 
 * reads : p_407->g_78 p_407->g_4 p_407->g_10 p_407->g_9 p_407->g_114 p_407->g_250 p_407->g_206 p_407->g_293 p_407->g_212 p_407->g_125
 * writes: p_407->g_212 p_407->g_9 p_407->g_215 p_407->g_102 p_407->g_114 p_407->g_312 p_407->g_320 p_407->g_4 p_407->g_111 p_407->g_382 p_407->g_394
 */
int32_t ** func_11(int32_t * p_12, int32_t * p_13, uint32_t  p_14, int64_t  p_15, int32_t * p_16, struct S1 * p_407)
{ /* block id: 73 */
    int8_t l_220 = 0x13L;
    int32_t l_221 = (-1L);
    int32_t l_222 = 0x4238DDEAL;
    int32_t l_223 = 0x0091C4B4L;
    int32_t *l_224 = &p_407->g_4;
    int32_t *l_225 = (void*)0;
    int32_t *l_226[9][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    int16_t l_227[3][6] = {{0x3CDAL,0x1DFEL,0x34D3L,0x1DFEL,0x3CDAL,0x3CDAL},{0x3CDAL,0x1DFEL,0x34D3L,0x1DFEL,0x3CDAL,0x3CDAL},{0x3CDAL,0x1DFEL,0x34D3L,0x1DFEL,0x3CDAL,0x3CDAL}};
    VECTOR(uint32_t, 2) l_228 = (VECTOR(uint32_t, 2))(6UL, 0UL);
    uint64_t *l_240 = &p_407->g_241;
    VECTOR(uint64_t, 2) l_276 = (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL);
    int i, j, k;
    l_228.x++;
    for (l_222 = 0; (l_222 != 2); l_222 = safe_add_func_int8_t_s_s(l_222, 6))
    { /* block id: 77 */
        uint8_t l_235[7] = {0xA5L,0xA5L,0xA5L,0xA5L,0xA5L,0xA5L,0xA5L};
        uint64_t *l_238 = &p_407->g_212;
        int32_t l_248 = (-4L);
        uint16_t *l_249[9];
        int32_t l_302 = 0x568B1410L;
        union U0 *l_317 = &p_407->g_318;
        int32_t l_352 = (-1L);
        int32_t l_353 = 0x1042D97AL;
        int32_t l_354 = 0L;
        int32_t l_356 = 0x01DCDA5BL;
        int32_t l_357 = 0L;
        int32_t l_358 = 0x4FF4DAF7L;
        int32_t l_359 = 1L;
        int32_t l_360 = (-1L);
        int32_t l_361[4];
        int32_t l_362 = (-1L);
        int8_t *l_380[4];
        int i;
        for (i = 0; i < 9; i++)
            l_249[i] = (void*)0;
        for (i = 0; i < 4; i++)
            l_361[i] = 0x4C59F2D8L;
        for (i = 0; i < 4; i++)
            l_380[i] = &l_220;
        if ((safe_rshift_func_uint16_t_u_u((p_407->g_102.sb = ((((-2L) >= (p_407->g_215.x = ((((l_235[4] = p_407->g_78.s2) | (safe_add_func_uint16_t_u_u(((((((*l_238) = (*l_224)) == ((((*p_407->g_10) = ((VECTOR(int32_t, 4))(p_407->g_239.s3234)).y) < ((void*)0 == l_240)) , (safe_mul_func_uint16_t_u_u((p_14 | (p_15 , ((safe_sub_func_int16_t_s_s(0x4DA5L, (safe_add_func_int32_t_s_s((*p_16), p_407->g_114)))) || 0L))), p_15)))) , p_15) , l_240) != l_240), p_14))) == l_248) < 0x78L))) , p_407->g_250) , p_14)), (*l_224))))
        { /* block id: 83 */
            VECTOR(int32_t, 2) l_264 = (VECTOR(int32_t, 2))((-1L), 0L);
            VECTOR(int8_t, 4) l_288 = (VECTOR(int8_t, 4))(0x50L, (VECTOR(int8_t, 2))(0x50L, 0x46L), 0x46L);
            union U0 *l_295 = &p_407->g_296;
            union U0 **l_294 = &l_295;
            int32_t l_355 = 0x138D25DFL;
            uint64_t l_363 = 1UL;
            uint16_t *l_375 = (void*)0;
            int i;
            for (p_14 = (-30); (p_14 < 19); p_14 = safe_add_func_int64_t_s_s(p_14, 6))
            { /* block id: 86 */
                uint8_t l_253 = 250UL;
                VECTOR(int32_t, 4) l_263 = (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x5BFE666BL), 0x5BFE666BL);
                VECTOR(uint64_t, 4) l_277 = (VECTOR(uint64_t, 4))(3UL, (VECTOR(uint64_t, 2))(3UL, 1UL), 1UL);
                union U0 *l_292 = &p_407->g_293;
                union U0 **l_291 = &l_292;
                uint16_t *l_313 = (void*)0;
                int i;
                if (l_253)
                    break;
                for (p_407->g_114 = (-6); (p_407->g_114 == 7); p_407->g_114++)
                { /* block id: 90 */
                    uint32_t l_256 = 1UL;
                    VECTOR(uint8_t, 8) l_280 = (VECTOR(uint8_t, 8))(0x83L, (VECTOR(uint8_t, 4))(0x83L, (VECTOR(uint8_t, 2))(0x83L, 1UL), 1UL), 1UL, 0x83L, 1UL);
                    VECTOR(uint16_t, 8) l_283 = (VECTOR(uint16_t, 8))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0xA2A0L), 0xA2A0L), 0xA2A0L, 5UL, 0xA2A0L);
                    int32_t l_300 = 4L;
                    uint16_t *l_314 = (void*)0;
                    int i;
                    if ((p_407->g_206.y && GROUP_DIVERGE(0, 1)))
                    { /* block id: 91 */
                        (*p_407->g_10) = (-1L);
                    }
                    else
                    { /* block id: 93 */
                        VECTOR(uint64_t, 16) l_275 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xD06CCCDE69651BAFL), 0xD06CCCDE69651BAFL), 0xD06CCCDE69651BAFL, 0UL, 0xD06CCCDE69651BAFL, (VECTOR(uint64_t, 2))(0UL, 0xD06CCCDE69651BAFL), (VECTOR(uint64_t, 2))(0UL, 0xD06CCCDE69651BAFL), 0UL, 0xD06CCCDE69651BAFL, 0UL, 0xD06CCCDE69651BAFL);
                        int64_t *l_284 = (void*)0;
                        int64_t *l_285 = (void*)0;
                        int64_t *l_286 = (void*)0;
                        int64_t *l_287 = (void*)0;
                        int8_t *l_297 = &p_407->g_158;
                        int64_t *l_298 = (void*)0;
                        int8_t *l_299[8][5] = {{(void*)0,(void*)0,&l_220,(void*)0,(void*)0},{(void*)0,(void*)0,&l_220,(void*)0,(void*)0},{(void*)0,(void*)0,&l_220,(void*)0,(void*)0},{(void*)0,(void*)0,&l_220,(void*)0,(void*)0},{(void*)0,(void*)0,&l_220,(void*)0,(void*)0},{(void*)0,(void*)0,&l_220,(void*)0,(void*)0},{(void*)0,(void*)0,&l_220,(void*)0,(void*)0},{(void*)0,(void*)0,&l_220,(void*)0,(void*)0}};
                        int32_t l_301 = 1L;
                        int32_t *l_311 = (void*)0;
                        union U0 *l_315 = &p_407->g_316;
                        uint32_t *l_319 = &p_407->g_320;
                        int i, j;
                        l_256++;
                        l_302 &= (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(FAKE_DIVERGE(p_407->local_2_offset, get_local_id(2), 10), ((VECTOR(uint16_t, 2))(0xA9C3L, 5UL)), p_15, 0UL, ((((((p_407->g_2 ^ (((safe_mod_func_int8_t_s_s(((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_263.xyzy)).hi)).xxxy, ((VECTOR(int32_t, 16))(l_264.yyxxxyxyyyyyxxyx)).s8bf8, ((VECTOR(int32_t, 4))((safe_add_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(((l_301 ^= ((safe_rshift_func_int8_t_s_u(p_14, 0)) <= (safe_rshift_func_uint16_t_u_u(((l_300 = ((l_263.y = (GROUP_DIVERGE(2, 1) != (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 8))(l_275.s285cc0a6)).hi, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 4))(0x5B929BF5E580FF98L, ((VECTOR(int64_t, 2))(0L, 0x10AA2A39980F8B89L)), 0x28AC36FA807CF47DL)), ((VECTOR(int64_t, 2))((-6L), 0L)).xyxx))).yzxxzwxxywwwxxzy)))).s4007))).xxzwyywwxxwxwxww, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_276.yyxxxxxx)).s44)).yyyxyxxyyyyxxxyy, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_277.wz)).xyxxxxxx)).s5057344143746727))).odd)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(0x148CAC0E5ED78ABCL, ((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),uint32_t,((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(0x12L, 0x64L)), ((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 4))(p_407->g_278.yxyx)).zwyzwxzz, ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 16))(p_407->g_279.sd181f86e53ab5639)).s00, ((VECTOR(uint8_t, 2))(0UL, 1UL))))).yyyy, ((VECTOR(uint8_t, 4))(l_280.s6000)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(p_407->g_281.s54)), (uint8_t)FAKE_DIVERGE(p_407->local_0_offset, get_local_id(0), 10))))))), 0xC1L, 0UL)).wzzxwwxz)).even))).xxwzzwzy))).s15))).yyyyyxxyyxyxyyxy)), ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(p_407->g_282.yyyy)).wyyxyxzzwxwxzxww)).sdf, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_283.s36631670)))).s21))).xxxyxxxyyxyxyxyy))).lo, ((VECTOR(uint32_t, 16))(((p_15 = 0x6211D9316D462ED2L) , ((((p_15 &= p_14) & (-10L)) < (((VECTOR(int8_t, 4))(l_288.wxxw)).w > ((*l_297) = ((((((((((safe_lshift_func_int16_t_s_u((GROUP_DIVERGE(0, 1) || (((*p_16) = (p_14 <= p_407->g_62.s6)) >= l_248)), l_280.s7)) & p_14) ^ 0x4CL) , l_291) == l_294) , p_407->g_9) == p_14) & 65527UL) , p_14) | 3L)))) != p_407->g_215.w)), l_277.y, 0UL, ((VECTOR(uint32_t, 2))(6UL)), p_407->g_239.s5, 1UL, ((VECTOR(uint32_t, 8))(1UL)), 1UL)).lo))).s0566360425072156, (uint32_t)0x9FACFA59L, (uint32_t)0x339D4CE3L))).sfa5a, ((VECTOR(uint32_t, 4))(1UL))))), p_14, 0xF1AD761C21A81BEDL, 0x79E6492BC32E0F25L)).s12)).yyyxxyyy))).s26)).xyxyyxyyyyyyyxxx))).even, ((VECTOR(uint64_t, 8))(18446744073709551615UL))))).s4, l_256)))) || p_407->g_282.y)) != p_14), 15)))) , p_407->g_9), l_235[4])), 0x7184L)), l_277.w, 0x370A0AF8L, 3L))))).zyywxzzx, (int32_t)l_288.x))).s54, ((VECTOR(int32_t, 2))(6L))))), (-2L), l_235[1], l_275.s0, 0x02DDE9B5L, 1L, (-1L), (-4L), l_264.x, ((VECTOR(int32_t, 4))(0x0EB03056L)), 0x1E30CE32L, 0x7D0A8F54L)).sa <= 0x2160E4DBL) , 0x1CL), 0x70L)) > 0UL) || p_14)) , l_275.s8) & 0xBECD6239L) , FAKE_DIVERGE(p_407->local_0_offset, get_local_id(0), 10)) ^ 0xD5C2A6F27BFFC607L) , 6UL), l_301, ((VECTOR(uint16_t, 2))(65535UL)), l_301, ((VECTOR(uint16_t, 4))(0x49CAL)), 0xBEEEL, 1UL)).sc, l_235[2]));
                        (*l_224) = ((((*l_238) &= (((*l_319) = (safe_sub_func_uint16_t_u_u((p_407->g_293 , (safe_sub_func_uint16_t_u_u(l_235[4], (((p_407->g_312[7][1] = (safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s(p_15, 0)), 3))) , l_313) != l_314)))), ((((l_315 == l_317) > (!(p_14 ^ ((VECTOR(uint64_t, 4))(p_14, ((VECTOR(uint64_t, 2))(18446744073709551612UL)), 0x6145129C315FBF44L)).z))) && 0x526F9ECA9D2B799BL) == (-2L))))) ^ (-1L))) , p_14) , 0L);
                    }
                    if ((atomic_inc(&p_407->l_atomic_input[43]) == 3))
                    { /* block id: 109 */
                        int32_t l_321 = 9L;
                        int8_t l_322 = 0x0AL;
                        int64_t l_323 = 0x0838CC4E9E0B5857L;
                        uint32_t l_324 = 0x056AD7C2L;
                        l_322 &= l_321;
                        l_324 = l_323;
                        unsigned int result = 0;
                        result += l_321;
                        result += l_322;
                        result += l_323;
                        result += l_324;
                        atomic_add(&p_407->l_special_values[43], result);
                    }
                    else
                    { /* block id: 112 */
                        (1 + 1);
                    }
                }
            }
            if (l_288.y)
                break;
            for (p_407->g_212 = 0; (p_407->g_212 <= 47); p_407->g_212 = safe_add_func_uint32_t_u_u(p_407->g_212, 1))
            { /* block id: 120 */
                uint8_t l_327 = 0x8FL;
                int32_t l_349 = 5L;
                int32_t l_350 = 0x032D5CDFL;
                int32_t l_351[1][2][8] = {{{0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L}}};
                int i, j, k;
                --l_327;
                if ((atomic_inc(&p_407->g_atomic_input[56 * get_linear_group_id() + 55]) == 0))
                { /* block id: 123 */
                    uint32_t l_330 = 4294967295UL;
                    uint8_t l_331 = 0xD9L;
                    int32_t l_333 = 6L;
                    int32_t *l_332 = &l_333;
                    int32_t *l_334 = &l_333;
                    int32_t *l_335[9];
                    int32_t *l_336 = &l_333;
                    int32_t *l_337 = &l_333;
                    int32_t *l_338 = &l_333;
                    int32_t l_339 = 0x49CF7E32L;
                    int i;
                    for (i = 0; i < 9; i++)
                        l_335[i] = &l_333;
                    l_331 = l_330;
                    l_338 = (l_337 = (l_336 = (l_335[3] = (l_334 = l_332))));
                    l_339 ^= 0x3BC05ED1L;
                    for (l_333 = 0; (l_333 > (-18)); l_333 = safe_sub_func_uint64_t_u_u(l_333, 2))
                    { /* block id: 133 */
                        uint64_t l_342 = 0xE2920541EF07C688L;
                        uint64_t l_345 = 0x5164C391C15D862DL;
                        uint16_t l_346 = 65530UL;
                        int64_t l_347 = (-1L);
                        uint32_t l_348 = 0x9ACDD26DL;
                        ++l_342;
                        l_346 ^= l_345;
                        l_348 = l_347;
                    }
                    unsigned int result = 0;
                    result += l_330;
                    result += l_331;
                    result += l_333;
                    result += l_339;
                    atomic_add(&p_407->g_special_values[56 * get_linear_group_id() + 55], result);
                }
                else
                { /* block id: 138 */
                    (1 + 1);
                }
                l_363--;
            }
            for (p_407->g_111 = (-8); (p_407->g_111 == 15); p_407->g_111 = safe_add_func_uint32_t_u_u(p_407->g_111, 5))
            { /* block id: 145 */
                int8_t l_383 = 6L;
                for (p_407->g_212 = 0; (p_407->g_212 > 22); ++p_407->g_212)
                { /* block id: 148 */
                    uint16_t **l_374 = &l_249[1];
                    int8_t **l_381[6][2][4] = {{{&l_380[0],&l_380[0],&l_380[0],&l_380[0]},{&l_380[0],&l_380[0],&l_380[0],&l_380[0]}},{{&l_380[0],&l_380[0],&l_380[0],&l_380[0]},{&l_380[0],&l_380[0],&l_380[0],&l_380[0]}},{{&l_380[0],&l_380[0],&l_380[0],&l_380[0]},{&l_380[0],&l_380[0],&l_380[0],&l_380[0]}},{{&l_380[0],&l_380[0],&l_380[0],&l_380[0]},{&l_380[0],&l_380[0],&l_380[0],&l_380[0]}},{{&l_380[0],&l_380[0],&l_380[0],&l_380[0]},{&l_380[0],&l_380[0],&l_380[0],&l_380[0]}},{{&l_380[0],&l_380[0],&l_380[0],&l_380[0]},{&l_380[0],&l_380[0],&l_380[0],&l_380[0]}}};
                    int i, j, k;
                    (*l_224) = (*l_224);
                    atomic_and(&p_407->g_atomic_reduction[get_linear_group_id()], ((safe_rshift_func_int8_t_s_s((+(safe_lshift_func_int16_t_s_s(((((*l_374) = p_407->g_125) != l_375) <= (safe_mod_func_int16_t_s_s(((((safe_rshift_func_uint16_t_u_u(p_14, ((p_407->g_382 = l_380[3]) != &p_407->g_158))) || (l_383 == (safe_mod_func_uint16_t_u_u(65535UL, (safe_mul_func_int16_t_s_s(6L, (safe_lshift_func_int16_t_s_s((safe_div_func_int32_t_s_s(l_235[0], 2L)), 8)))))))) >= p_14) == FAKE_DIVERGE(p_407->local_2_offset, get_local_id(2), 10)), 0x066EL))), p_15))), l_383)) , 0x1E247A07L) + get_linear_global_id());
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_407->v_collective += p_407->g_atomic_reduction[get_linear_group_id()];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                }
                (*l_224) |= 0L;
                return &p_407->g_90;
            }
        }
        else
        { /* block id: 157 */
            for (l_359 = 20; (l_359 <= (-28)); --l_359)
            { /* block id: 160 */
                int32_t l_396 = 0x513C861EL;
                (*l_224) = (~(p_15 > (-4L)));
                p_407->g_394 = (void*)0;
                if (l_396)
                    continue;
            }
            (*p_16) = 0x081849D7L;
        }
        for (l_354 = 0; (l_354 < (-6)); l_354 = safe_sub_func_uint64_t_u_u(l_354, 7))
        { /* block id: 169 */
            l_362 &= (*p_16);
        }
    }
    return &p_407->g_219[2][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_407->g_89 p_407->g_comm_values p_407->g_206 p_407->g_9 p_407->g_42 p_407->g_212 p_407->g_81 p_407->g_215 p_407->g_73 p_407->g_219
 * writes: p_407->g_90 p_407->g_9 p_407->g_212 p_407->g_73
 */
int32_t * func_17(int32_t ** p_18, uint64_t  p_19, int32_t ** p_20, struct S1 * p_407)
{ /* block id: 65 */
    union U0 *l_198 = &p_407->g_192;
    int32_t *l_200 = (void*)0;
    VECTOR(int32_t, 4) l_205 = (VECTOR(int32_t, 4))(0x35B7D9B9L, (VECTOR(int32_t, 2))(0x35B7D9B9L, (-10L)), (-10L));
    VECTOR(int32_t, 16) l_207 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 1L), 1L), 1L, (-10L), 1L, (VECTOR(int32_t, 2))((-10L), 1L), (VECTOR(int32_t, 2))((-10L), 1L), (-10L), 1L, (-10L), 1L);
    VECTOR(int32_t, 8) l_208 = (VECTOR(int32_t, 8))(0x13820914L, (VECTOR(int32_t, 4))(0x13820914L, (VECTOR(int32_t, 2))(0x13820914L, 0x1F01B2A3L), 0x1F01B2A3L), 0x1F01B2A3L, 0x13820914L, 0x1F01B2A3L);
    uint64_t *l_211 = &p_407->g_212;
    int64_t *l_216[2][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_217[9] = {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)};
    int32_t *l_218[3][5] = {{(void*)0,&p_407->g_4,(void*)0,&p_407->g_4,(void*)0},{(void*)0,&p_407->g_4,(void*)0,&p_407->g_4,(void*)0},{(void*)0,&p_407->g_4,(void*)0,&p_407->g_4,(void*)0}};
    int i, j;
    l_198 = l_198;
    (*p_407->g_89) = l_200;
    (**p_18) = (p_407->g_comm_values[p_407->tid] >= 1L);
    p_407->g_73.s2 |= (safe_div_func_uint64_t_u_u((+((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(9L, 0x5F25A9B1L)).yyxyyxxyyxyxyyxx, ((VECTOR(int32_t, 4))(l_205.wxyz)).xxwxzywxyxyxyxzz, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(p_407->g_206.xy)).xxxxxyyy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_207.s126355d4))))))), ((VECTOR(int32_t, 8))(l_208.s62472411))))).s62)).yyyyxyxyxxxyxxyy))).sd, (**p_18))) > (safe_lshift_func_uint8_t_u_s(p_407->g_42.y, 4)))), (l_217[2] = (((++(*l_211)) ^ p_407->g_81.s5) & (((VECTOR(uint16_t, 4))(p_407->g_215.zyxy)).z == 65528UL)))));
    return p_407->g_219[1][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_407->g_4 p_407->g_192 p_407->g_81 p_407->g_42 p_407->g_90
 * writes: p_407->g_4 p_407->g_9
 */
int32_t ** func_23(int64_t  p_24, int32_t ** p_25, int32_t ** p_26, int16_t  p_27, struct S1 * p_407)
{ /* block id: 58 */
    int32_t *l_188[9] = {&p_407->g_156,&p_407->g_156,&p_407->g_156,&p_407->g_156,&p_407->g_156,&p_407->g_156,&p_407->g_156,&p_407->g_156,&p_407->g_156};
    int32_t l_197 = 0x7E96F0F6L;
    int i;
    for (p_407->g_4 = 0; (p_407->g_4 >= 5); p_407->g_4 = safe_add_func_int16_t_s_s(p_407->g_4, 6))
    { /* block id: 61 */
        int16_t l_191 = 0x665DL;
        (**p_25) = (safe_mod_func_int8_t_s_s((((safe_rshift_func_int16_t_s_u((l_188[7] != (void*)0), 2)) , 0L) <= (safe_rshift_func_int8_t_s_s(0x3BL, 3))), (((l_191 < p_24) , p_407->g_192) , (safe_sub_func_uint8_t_u_u((l_191 | (safe_sub_func_uint64_t_u_u((((l_197 > l_191) > p_407->g_81.s5) <= p_407->g_42.x), 0x8B836DEE6B636FBCL))), GROUP_DIVERGE(1, 1))))));
    }
    return &p_407->g_90;
}


/* ------------------------------------------ */
/* 
 * reads : p_407->g_90 p_407->g_9 p_407->g_89
 * writes: p_407->g_9
 */
int64_t  func_34(uint64_t  p_35, uint64_t  p_36, int32_t ** p_37, struct S1 * p_407)
{ /* block id: 47 */
    int32_t *l_159 = &p_407->g_9;
    int32_t l_160 = 0x3FDF3A0AL;
    int32_t *l_161 = (void*)0;
    int32_t *l_162 = (void*)0;
    int32_t *l_163 = &p_407->g_9;
    int32_t *l_164 = &p_407->g_9;
    int32_t *l_165 = &p_407->g_9;
    int32_t *l_166 = (void*)0;
    int32_t *l_167 = (void*)0;
    int32_t *l_168[8][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint64_t l_169[4][6] = {{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL}};
    int64_t l_176 = 0x77A83E0F458CBF98L;
    int32_t l_177 = 0x3B1DB585L;
    uint32_t l_178 = 4294967295UL;
    int i, j;
    l_169[2][1]--;
    (**p_37) = (**p_37);
    for (p_407->g_9 = 0; (p_407->g_9 <= 9); p_407->g_9 = safe_add_func_int32_t_s_s(p_407->g_9, 8))
    { /* block id: 52 */
        int32_t *l_174 = (void*)0;
        int32_t l_175 = 0x04894F32L;
        l_174 = (*p_407->g_89);
        l_175 = (*p_407->g_90);
    }
    l_178--;
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_407->g_90 p_407->g_9 p_407->g_62 p_407->g_78 p_407->g_81
 * writes: p_407->g_156
 */
int8_t  func_49(int16_t  p_50, int32_t * p_51, uint32_t  p_52, struct S1 * p_407)
{ /* block id: 40 */
    int8_t l_148 = 1L;
    int32_t *l_155 = &p_407->g_156;
    int i, j;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_407->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[(safe_mod_func_uint32_t_u_u((safe_sub_func_int64_t_s_s((safe_div_func_int16_t_s_s((l_148 > (((p_50 == (!(*p_407->g_90))) > (l_148 > (safe_sub_func_uint8_t_u_u(((&p_50 != &p_407->g_111) | (safe_mul_func_uint16_t_u_u((&p_407->g_114 == &p_407->g_114), (safe_rshift_func_int8_t_s_u((((*l_155) = p_407->g_62.s6) , 0x35L), 7))))), p_407->g_78.sb)))) == 0x0305L)), p_52)), p_407->g_81.s5)), 10))][(safe_mod_func_uint32_t_u_u(p_407->tid, 2))]));
    return l_148;
}


/* ------------------------------------------ */
/* 
 * reads : p_407->g_59 p_407->g_62 p_407->g_64 p_407->g_9 p_407->g_73 p_407->g_78 p_407->g_81 p_407->g_89 p_407->g_comm_values p_407->g_102 p_407->g_90 p_407->l_comm_values p_407->g_114 p_407->g_4 p_407->g_128 p_407->g_109 p_407->g_111
 * writes: p_407->g_comm_values p_407->g_109 p_407->g_114 p_407->g_125 p_407->g_4
 */
uint16_t  func_55(int32_t * p_56, int32_t ** p_57, int32_t  p_58, struct S1 * p_407)
{ /* block id: 10 */
    VECTOR(uint8_t, 4) l_60 = (VECTOR(uint8_t, 4))(0x56L, (VECTOR(uint8_t, 2))(0x56L, 0x5EL), 0x5EL);
    VECTOR(uint8_t, 2) l_61 = (VECTOR(uint8_t, 2))(1UL, 2UL);
    VECTOR(uint8_t, 2) l_63 = (VECTOR(uint8_t, 2))(0UL, 0x9AL);
    VECTOR(int32_t, 16) l_74 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
    uint16_t l_75 = 1UL;
    VECTOR(int32_t, 4) l_76 = (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, (-6L)), (-6L));
    VECTOR(int32_t, 16) l_77 = (VECTOR(int32_t, 16))(0x5BF905AFL, (VECTOR(int32_t, 4))(0x5BF905AFL, (VECTOR(int32_t, 2))(0x5BF905AFL, 4L), 4L), 4L, 0x5BF905AFL, 4L, (VECTOR(int32_t, 2))(0x5BF905AFL, 4L), (VECTOR(int32_t, 2))(0x5BF905AFL, 4L), 0x5BF905AFL, 4L, 0x5BF905AFL, 4L);
    VECTOR(int32_t, 4) l_79 = (VECTOR(int32_t, 4))(0x33832395L, (VECTOR(int32_t, 2))(0x33832395L, (-1L)), (-1L));
    VECTOR(int32_t, 8) l_80 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
    uint32_t *l_141 = (void*)0;
    uint32_t *l_142 = &p_407->g_114;
    int32_t l_143 = 0x75414D47L;
    int i;
    l_143 |= (l_76.z = ((((l_79.z = (((*l_142) = (((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 2))(0xDAL, 0UL)).yxxx, ((VECTOR(uint8_t, 2))(6UL, 9UL)).yxxx, ((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_407->g_59.yzxw)).xxwwzyxz)).odd, ((VECTOR(uint8_t, 2))(l_60.yx)).xxyx))).zwxxwyxzxyzywyyz)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(l_61.yyxyxyxx)).s03, ((VECTOR(uint8_t, 4))(p_407->g_62.s1242)).odd, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_63.xyyxxxyyyxxyxyxx)).s78)).yyyxxxyxxyyyyxyy)).s1464)).odd))), 0x14L, 0x8BL)).xzzywxzxxxxxwyxw, ((VECTOR(uint8_t, 16))(p_407->g_64.yyxyyxxyyxxxxxxy))))).s1398))).y != (+func_65(func_68(((1UL <= (((VECTOR(int32_t, 8))((**p_57), ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_407->g_73.s44704232)).s2040222561717623)).even, ((VECTOR(int32_t, 8))(l_74.s950224c6)), ((VECTOR(int32_t, 8))(l_74.s1, ((VECTOR(int32_t, 4))(l_75, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_76.zzyw)).lo))))))))), 0x5226059BL)), ((VECTOR(int32_t, 2))(l_77.s33)), 1L))))).lo, ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(p_407->g_78.sc0487cc540edc169)), ((VECTOR(int32_t, 16))(l_79.xyyxxxxwxwxxxwxw)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_80.s15)), 0x0A6DD691L, 0x39066996L)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(p_407->g_81.s77616514)))), (safe_add_func_uint16_t_u_u(func_84((0x72FD6C9D3DA59200L <= p_407->g_64.y), p_407->g_89, &p_56, l_80.s1, p_407), p_58)), 5L, 0x5F2429B4L, 0x5912EB57L))))).s571c))), 0x0AC094E5L, 0x78AA4109L, 4L)).s1 || (**p_407->g_89))) , 0x2679L), p_407->g_81.s5, p_58, &p_407->g_90, p_407), l_61.x, p_407)))) > p_407->l_comm_values[(safe_mod_func_uint32_t_u_u(p_407->tid, 2))])) , p_58) == 0x7A57FA402CE18DB7L) <= p_407->g_73.s3));
    return p_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_407->g_109 p_407->g_111
 * writes: p_407->g_109
 */
int8_t  func_65(int32_t * p_66, int32_t  p_67, struct S1 * p_407)
{ /* block id: 26 */
    int64_t l_129 = (-1L);
    int32_t *l_130[6][1][8] = {{{&p_407->g_4,&p_407->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_407->g_4}},{{&p_407->g_4,&p_407->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_407->g_4}},{{&p_407->g_4,&p_407->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_407->g_4}},{{&p_407->g_4,&p_407->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_407->g_4}},{{&p_407->g_4,&p_407->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_407->g_4}},{{&p_407->g_4,&p_407->g_4,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_407->g_4}}};
    int8_t l_131 = 0L;
    int16_t l_132 = 0x69AEL;
    uint16_t l_133[2][4] = {{0x830AL,65531UL,0x830AL,0x830AL},{0x830AL,65531UL,0x830AL,0x830AL}};
    int i, j, k;
    --l_133[1][3];
    for (p_407->g_109 = 0; (p_407->g_109 < 6); p_407->g_109++)
    { /* block id: 30 */
        uint64_t l_138 = 0x20862D8E3CAC0894L;
        --l_138;
        return p_67;
    }
    return p_407->g_111;
}


/* ------------------------------------------ */
/* 
 * reads : p_407->l_comm_values p_407->g_114 p_407->g_78 p_407->g_81 p_407->g_89 p_407->g_90 p_407->g_9 p_407->g_4 p_407->g_128
 * writes: p_407->g_109 p_407->g_114 p_407->g_125 p_407->g_4
 */
int32_t * func_68(int16_t  p_69, uint64_t  p_70, int64_t  p_71, int32_t ** p_72, struct S1 * p_407)
{ /* block id: 15 */
    int64_t l_104[10][10] = {{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)},{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)},{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)},{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)},{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)},{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)},{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)},{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)},{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)},{(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)}};
    VECTOR(int32_t, 4) l_107 = (VECTOR(int32_t, 4))(0x7A02E7B8L, (VECTOR(int32_t, 2))(0x7A02E7B8L, 0x61874A80L), 0x61874A80L);
    int16_t *l_108 = (void*)0;
    int16_t *l_110[1][2][7];
    VECTOR(uint16_t, 2) l_112 = (VECTOR(uint16_t, 2))(0x2CC1L, 7UL);
    uint32_t *l_113 = &p_407->g_114;
    VECTOR(uint32_t, 4) l_115 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xCAD771BCL), 0xCAD771BCL);
    VECTOR(uint32_t, 4) l_116 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL);
    VECTOR(uint32_t, 16) l_117 = (VECTOR(uint32_t, 16))(0xAD852026L, (VECTOR(uint32_t, 4))(0xAD852026L, (VECTOR(uint32_t, 2))(0xAD852026L, 0xB60554FBL), 0xB60554FBL), 0xB60554FBL, 0xAD852026L, 0xB60554FBL, (VECTOR(uint32_t, 2))(0xAD852026L, 0xB60554FBL), (VECTOR(uint32_t, 2))(0xAD852026L, 0xB60554FBL), 0xAD852026L, 0xB60554FBL, 0xAD852026L, 0xB60554FBL);
    VECTOR(int8_t, 16) l_120 = (VECTOR(int8_t, 16))(0x15L, (VECTOR(int8_t, 4))(0x15L, (VECTOR(int8_t, 2))(0x15L, 6L), 6L), 6L, 0x15L, 6L, (VECTOR(int8_t, 2))(0x15L, 6L), (VECTOR(int8_t, 2))(0x15L, 6L), 0x15L, 6L, 0x15L, 6L);
    int8_t l_126[10][3][4] = {{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}},{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}},{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}},{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}},{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}},{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}},{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}},{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}},{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}},{{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)},{0x74L,0x17L,0x02L,(-2L)}}};
    int32_t *l_127 = &p_407->g_4;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
                l_110[i][j][k] = &p_407->g_111;
        }
    }
    (*l_127) = (l_104[3][8] ^ (((safe_sub_func_int64_t_s_s(2L, (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_107.zxywzwwzyxxzxxzy)).s34)).xxyxxyxxxxxyxyxy)).lo)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))((((((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(p_69, (p_407->l_comm_values[(safe_mod_func_uint32_t_u_u(p_407->tid, 2))] > ((p_407->g_109 = p_70) > (p_69 = 0x189FL))), 9L, 0x43DAF87FBE72DC73L)).lo)).yxxyyxyyxxxyxxxy)), ((VECTOR(int64_t, 2))(1L, (-1L))).yyyyyxyxxxyyxyyx))).s14)), (((*l_113) = ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 4))(l_112.xxyy)).even, ((VECTOR(uint16_t, 2))(4UL, 65528UL))))).lo) && ((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(l_115.wxxzyxww)).s76)), 1UL, ((VECTOR(uint32_t, 2))(l_116.wx)), ((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(1UL, 4294967294UL)).yyyxyxxy)).s6555563750566130, ((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(7UL, 1UL)).yyyxxxxxyxyyxxyy)).hi)))).s03, ((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 2))(9UL, 9UL)), ((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 16))(l_117.sd3ac5977f73882f6)).sef, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0xDE08EF47L, 0xC5593A3FL)), 0x87705A97L, (++(*l_113)), ((VECTOR(uint32_t, 8))(4294967295UL, ((VECTOR(uint32_t, 4))(0x0E0AF864L, 4294967295UL, 0x6B05D7DFL, 4294967288UL)), (((VECTOR(int8_t, 2))(l_120.s4c)).lo , (~(safe_sub_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_s((&p_69 != (p_407->g_125 = (void*)0)), 11)) && 0x38AF2192L), 0xA8L)))), 0x1F90EDD5L, 1UL)), p_407->g_78.sd, l_126[7][1][3], 0xAF555DEFL, 0x1F71B9F5L)).sdd))), ((VECTOR(uint32_t, 2))(0xF592D988L))))).xxxy)).zyyzzyzz, ((VECTOR(uint32_t, 8))(1UL))))).s0262437247221707, ((VECTOR(uint32_t, 16))(1UL))))).s82))), ((VECTOR(uint32_t, 2))(0xEF36B230L))))).xxxyxyxxyxxyxxxy, ((VECTOR(uint32_t, 16))(4294967295UL)))))))).s15, ((VECTOR(uint32_t, 2))(0xB6DA70A4L))))), p_407->g_81.s1, 0xDFF98C69L, ((VECTOR(uint32_t, 2))(0x4486B936L)), 0xBFC7E325L, ((VECTOR(uint32_t, 4))(4294967290UL)))), ((VECTOR(uint32_t, 16))(9UL)), ((VECTOR(uint32_t, 16))(4294967286UL))))).sc), ((VECTOR(int64_t, 2))(0x34891D5C63F2865CL)), ((VECTOR(int64_t, 2))(0x313965C3E68F2E05L)), 1L, ((VECTOR(int64_t, 4))((-1L))), 0x2BE2F300D2E18EF8L, ((VECTOR(int64_t, 2))(0x3D683B573FAD3D24L)), 0x621FC311CE4DD9FAL)).odd)).s1 , p_407->g_78.s3) , (void*)0) == &l_104[3][8]) >= l_126[0][1][2]) < 0x5AF4E678L), (-3L), 2L, (-6L))))).ywxzzywzzyzyzzyy, (int32_t)l_116.w))).sbc)).xyyyxyxx))).s7236323505541642)).odd)).s7 >= (**p_407->g_89)))) == 0x06818F9B38B2FA42L) > l_126[1][2][2]));
    (*l_127) = (-3L);
    (*l_127) &= (-9L);
    (*l_127) |= ((VECTOR(int32_t, 2))(p_407->g_128.s58)).lo;
    return l_127;
}


/* ------------------------------------------ */
/* 
 * reads : p_407->g_81 p_407->g_comm_values p_407->g_102 p_407->g_78
 * writes: p_407->g_comm_values
 */
uint16_t  func_84(uint32_t  p_85, int32_t ** p_86, int32_t ** p_87, uint64_t  p_88, struct S1 * p_407)
{ /* block id: 11 */
    int64_t *l_95 = (void*)0;
    int64_t *l_96 = (void*)0;
    int64_t *l_97 = (void*)0;
    int64_t *l_98 = (void*)0;
    int64_t *l_99 = (void*)0;
    int64_t *l_100[4];
    VECTOR(uint16_t, 16) l_101 = (VECTOR(uint16_t, 16))(0x47B3L, (VECTOR(uint16_t, 4))(0x47B3L, (VECTOR(uint16_t, 2))(0x47B3L, 0x2D97L), 0x2D97L), 0x2D97L, 0x47B3L, 0x2D97L, (VECTOR(uint16_t, 2))(0x47B3L, 0x2D97L), (VECTOR(uint16_t, 2))(0x47B3L, 0x2D97L), 0x47B3L, 0x2D97L, 0x47B3L, 0x2D97L);
    int32_t l_103 = 0x68587384L;
    int i;
    for (i = 0; i < 4; i++)
        l_100[i] = (void*)0;
    l_103 |= ((safe_add_func_uint16_t_u_u(((safe_sub_func_uint64_t_u_u(p_88, (p_407->g_81.s0 != ((void*)0 == &p_407->g_90)))) == (p_407->g_comm_values[p_407->tid] |= 0x6C9E8DF01DDAC0D4L)), ((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 2))(l_101.s01)).yxxxyyxx, ((VECTOR(uint16_t, 16))(p_407->g_102.s7b97028ad0af0966)).lo))).s3)) , (((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0L, 1L)))).odd , 0x481172E9L));
    return p_407->g_78.s4;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local volatile uint32_t l_atomic_input[56];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 56; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[56];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 56; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S1 c_408;
    struct S1* p_407 = &c_408;
    struct S1 c_409 = {
        1L, // p_407->g_2
        (-9L), // p_407->g_3
        0x36444696L, // p_407->g_4
        7L, // p_407->g_9
        {&p_407->g_9,&p_407->g_9,&p_407->g_9,&p_407->g_9}, // p_407->g_8
        &p_407->g_9, // p_407->g_10
        (VECTOR(uint16_t, 2))(0xCFEBL, 0x5227L), // p_407->g_42
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xECL), 0xECL), // p_407->g_59
        (VECTOR(uint8_t, 8))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0UL), 0UL), 0UL, 7UL, 0UL), // p_407->g_62
        (VECTOR(uint8_t, 2))(0xFFL, 0xA2L), // p_407->g_64
        (VECTOR(int32_t, 8))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0L), 0L), 0L, (-5L), 0L), // p_407->g_73
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 7L), 7L), 7L, 0L, 7L, (VECTOR(int32_t, 2))(0L, 7L), (VECTOR(int32_t, 2))(0L, 7L), 0L, 7L, 0L, 7L), // p_407->g_78
        (VECTOR(int32_t, 8))(0x07144B05L, (VECTOR(int32_t, 4))(0x07144B05L, (VECTOR(int32_t, 2))(0x07144B05L, 0x77E1B1CDL), 0x77E1B1CDL), 0x77E1B1CDL, 0x07144B05L, 0x77E1B1CDL), // p_407->g_81
        &p_407->g_9, // p_407->g_90
        &p_407->g_90, // p_407->g_89
        (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0x60FEL), 0x60FEL), 0x60FEL, 65534UL, 0x60FEL, (VECTOR(uint16_t, 2))(65534UL, 0x60FEL), (VECTOR(uint16_t, 2))(65534UL, 0x60FEL), 65534UL, 0x60FEL, 65534UL, 0x60FEL), // p_407->g_102
        1UL, // p_407->g_109
        0x575EL, // p_407->g_111
        0xA5E5DFA2L, // p_407->g_114
        &p_407->g_111, // p_407->g_125
        (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x27AFFC2EL), 0x27AFFC2EL), 0x27AFFC2EL, (-2L), 0x27AFFC2EL, (VECTOR(int32_t, 2))((-2L), 0x27AFFC2EL), (VECTOR(int32_t, 2))((-2L), 0x27AFFC2EL), (-2L), 0x27AFFC2EL, (-2L), 0x27AFFC2EL), // p_407->g_128
        0x09A1ED7CL, // p_407->g_156
        0x62L, // p_407->g_158
        {0x426AC1B909C929B6L}, // p_407->g_192
        (void*)0, // p_407->g_199
        (VECTOR(int32_t, 2))(0x733D60B0L, (-8L)), // p_407->g_206
        9UL, // p_407->g_212
        (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0xFED1L), 0xFED1L), // p_407->g_215
        {{&p_407->g_9,(void*)0,(void*)0,(void*)0,&p_407->g_9,&p_407->g_9,(void*)0,(void*)0},{&p_407->g_9,(void*)0,(void*)0,(void*)0,&p_407->g_9,&p_407->g_9,(void*)0,(void*)0},{&p_407->g_9,(void*)0,(void*)0,(void*)0,&p_407->g_9,&p_407->g_9,(void*)0,(void*)0}}, // p_407->g_219
        (VECTOR(int32_t, 8))(0x348175F5L, (VECTOR(int32_t, 4))(0x348175F5L, (VECTOR(int32_t, 2))(0x348175F5L, (-1L)), (-1L)), (-1L), 0x348175F5L, (-1L)), // p_407->g_239
        18446744073709551615UL, // p_407->g_241
        {0x4A9CB900DD554D3FL}, // p_407->g_250
        (VECTOR(uint8_t, 2))(0xABL, 255UL), // p_407->g_278
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xC0L), 0xC0L), 0xC0L, 255UL, 0xC0L, (VECTOR(uint8_t, 2))(255UL, 0xC0L), (VECTOR(uint8_t, 2))(255UL, 0xC0L), 255UL, 0xC0L, 255UL, 0xC0L), // p_407->g_279
        (VECTOR(uint8_t, 8))(0xBBL, (VECTOR(uint8_t, 4))(0xBBL, (VECTOR(uint8_t, 2))(0xBBL, 252UL), 252UL), 252UL, 0xBBL, 252UL), // p_407->g_281
        (VECTOR(uint16_t, 2))(0x6A2AL, 9UL), // p_407->g_282
        {0x6A49B33A11C0EB1EL}, // p_407->g_293
        {0x2D36DB7B0FCE825EL}, // p_407->g_296
        {{0UL,0UL,0x3A603E10L,0xB95A4627L,4294967295UL,0xB95A4627L,0x3A603E10L,0UL},{0UL,0UL,0x3A603E10L,0xB95A4627L,4294967295UL,0xB95A4627L,0x3A603E10L,0UL},{0UL,0UL,0x3A603E10L,0xB95A4627L,4294967295UL,0xB95A4627L,0x3A603E10L,0UL},{0UL,0UL,0x3A603E10L,0xB95A4627L,4294967295UL,0xB95A4627L,0x3A603E10L,0UL},{0UL,0UL,0x3A603E10L,0xB95A4627L,4294967295UL,0xB95A4627L,0x3A603E10L,0UL},{0UL,0UL,0x3A603E10L,0xB95A4627L,4294967295UL,0xB95A4627L,0x3A603E10L,0UL},{0UL,0UL,0x3A603E10L,0xB95A4627L,4294967295UL,0xB95A4627L,0x3A603E10L,0UL},{0UL,0UL,0x3A603E10L,0xB95A4627L,4294967295UL,0xB95A4627L,0x3A603E10L,0UL}}, // p_407->g_312
        {0x58AE2442DF312DB5L}, // p_407->g_316
        {0x36308ECABE5F5DC2L}, // p_407->g_318
        4294967295UL, // p_407->g_320
        &p_407->g_158, // p_407->g_382
        &p_407->g_212, // p_407->g_395
        &p_407->g_395, // p_407->g_394
        0, // p_407->v_collective
        sequence_input[get_global_id(0)], // p_407->global_0_offset
        sequence_input[get_global_id(1)], // p_407->global_1_offset
        sequence_input[get_global_id(2)], // p_407->global_2_offset
        sequence_input[get_local_id(0)], // p_407->local_0_offset
        sequence_input[get_local_id(1)], // p_407->local_1_offset
        sequence_input[get_local_id(2)], // p_407->local_2_offset
        sequence_input[get_group_id(0)], // p_407->group_0_offset
        sequence_input[get_group_id(1)], // p_407->group_1_offset
        sequence_input[get_group_id(2)], // p_407->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_407->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_408 = c_409;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_407);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_407->g_2, "p_407->g_2", print_hash_value);
    transparent_crc(p_407->g_3, "p_407->g_3", print_hash_value);
    transparent_crc(p_407->g_4, "p_407->g_4", print_hash_value);
    transparent_crc(p_407->g_9, "p_407->g_9", print_hash_value);
    transparent_crc(p_407->g_42.x, "p_407->g_42.x", print_hash_value);
    transparent_crc(p_407->g_42.y, "p_407->g_42.y", print_hash_value);
    transparent_crc(p_407->g_59.x, "p_407->g_59.x", print_hash_value);
    transparent_crc(p_407->g_59.y, "p_407->g_59.y", print_hash_value);
    transparent_crc(p_407->g_59.z, "p_407->g_59.z", print_hash_value);
    transparent_crc(p_407->g_59.w, "p_407->g_59.w", print_hash_value);
    transparent_crc(p_407->g_62.s0, "p_407->g_62.s0", print_hash_value);
    transparent_crc(p_407->g_62.s1, "p_407->g_62.s1", print_hash_value);
    transparent_crc(p_407->g_62.s2, "p_407->g_62.s2", print_hash_value);
    transparent_crc(p_407->g_62.s3, "p_407->g_62.s3", print_hash_value);
    transparent_crc(p_407->g_62.s4, "p_407->g_62.s4", print_hash_value);
    transparent_crc(p_407->g_62.s5, "p_407->g_62.s5", print_hash_value);
    transparent_crc(p_407->g_62.s6, "p_407->g_62.s6", print_hash_value);
    transparent_crc(p_407->g_62.s7, "p_407->g_62.s7", print_hash_value);
    transparent_crc(p_407->g_64.x, "p_407->g_64.x", print_hash_value);
    transparent_crc(p_407->g_64.y, "p_407->g_64.y", print_hash_value);
    transparent_crc(p_407->g_73.s0, "p_407->g_73.s0", print_hash_value);
    transparent_crc(p_407->g_73.s1, "p_407->g_73.s1", print_hash_value);
    transparent_crc(p_407->g_73.s2, "p_407->g_73.s2", print_hash_value);
    transparent_crc(p_407->g_73.s3, "p_407->g_73.s3", print_hash_value);
    transparent_crc(p_407->g_73.s4, "p_407->g_73.s4", print_hash_value);
    transparent_crc(p_407->g_73.s5, "p_407->g_73.s5", print_hash_value);
    transparent_crc(p_407->g_73.s6, "p_407->g_73.s6", print_hash_value);
    transparent_crc(p_407->g_73.s7, "p_407->g_73.s7", print_hash_value);
    transparent_crc(p_407->g_78.s0, "p_407->g_78.s0", print_hash_value);
    transparent_crc(p_407->g_78.s1, "p_407->g_78.s1", print_hash_value);
    transparent_crc(p_407->g_78.s2, "p_407->g_78.s2", print_hash_value);
    transparent_crc(p_407->g_78.s3, "p_407->g_78.s3", print_hash_value);
    transparent_crc(p_407->g_78.s4, "p_407->g_78.s4", print_hash_value);
    transparent_crc(p_407->g_78.s5, "p_407->g_78.s5", print_hash_value);
    transparent_crc(p_407->g_78.s6, "p_407->g_78.s6", print_hash_value);
    transparent_crc(p_407->g_78.s7, "p_407->g_78.s7", print_hash_value);
    transparent_crc(p_407->g_78.s8, "p_407->g_78.s8", print_hash_value);
    transparent_crc(p_407->g_78.s9, "p_407->g_78.s9", print_hash_value);
    transparent_crc(p_407->g_78.sa, "p_407->g_78.sa", print_hash_value);
    transparent_crc(p_407->g_78.sb, "p_407->g_78.sb", print_hash_value);
    transparent_crc(p_407->g_78.sc, "p_407->g_78.sc", print_hash_value);
    transparent_crc(p_407->g_78.sd, "p_407->g_78.sd", print_hash_value);
    transparent_crc(p_407->g_78.se, "p_407->g_78.se", print_hash_value);
    transparent_crc(p_407->g_78.sf, "p_407->g_78.sf", print_hash_value);
    transparent_crc(p_407->g_81.s0, "p_407->g_81.s0", print_hash_value);
    transparent_crc(p_407->g_81.s1, "p_407->g_81.s1", print_hash_value);
    transparent_crc(p_407->g_81.s2, "p_407->g_81.s2", print_hash_value);
    transparent_crc(p_407->g_81.s3, "p_407->g_81.s3", print_hash_value);
    transparent_crc(p_407->g_81.s4, "p_407->g_81.s4", print_hash_value);
    transparent_crc(p_407->g_81.s5, "p_407->g_81.s5", print_hash_value);
    transparent_crc(p_407->g_81.s6, "p_407->g_81.s6", print_hash_value);
    transparent_crc(p_407->g_81.s7, "p_407->g_81.s7", print_hash_value);
    transparent_crc(p_407->g_102.s0, "p_407->g_102.s0", print_hash_value);
    transparent_crc(p_407->g_102.s1, "p_407->g_102.s1", print_hash_value);
    transparent_crc(p_407->g_102.s2, "p_407->g_102.s2", print_hash_value);
    transparent_crc(p_407->g_102.s3, "p_407->g_102.s3", print_hash_value);
    transparent_crc(p_407->g_102.s4, "p_407->g_102.s4", print_hash_value);
    transparent_crc(p_407->g_102.s5, "p_407->g_102.s5", print_hash_value);
    transparent_crc(p_407->g_102.s6, "p_407->g_102.s6", print_hash_value);
    transparent_crc(p_407->g_102.s7, "p_407->g_102.s7", print_hash_value);
    transparent_crc(p_407->g_102.s8, "p_407->g_102.s8", print_hash_value);
    transparent_crc(p_407->g_102.s9, "p_407->g_102.s9", print_hash_value);
    transparent_crc(p_407->g_102.sa, "p_407->g_102.sa", print_hash_value);
    transparent_crc(p_407->g_102.sb, "p_407->g_102.sb", print_hash_value);
    transparent_crc(p_407->g_102.sc, "p_407->g_102.sc", print_hash_value);
    transparent_crc(p_407->g_102.sd, "p_407->g_102.sd", print_hash_value);
    transparent_crc(p_407->g_102.se, "p_407->g_102.se", print_hash_value);
    transparent_crc(p_407->g_102.sf, "p_407->g_102.sf", print_hash_value);
    transparent_crc(p_407->g_109, "p_407->g_109", print_hash_value);
    transparent_crc(p_407->g_111, "p_407->g_111", print_hash_value);
    transparent_crc(p_407->g_114, "p_407->g_114", print_hash_value);
    transparent_crc(p_407->g_128.s0, "p_407->g_128.s0", print_hash_value);
    transparent_crc(p_407->g_128.s1, "p_407->g_128.s1", print_hash_value);
    transparent_crc(p_407->g_128.s2, "p_407->g_128.s2", print_hash_value);
    transparent_crc(p_407->g_128.s3, "p_407->g_128.s3", print_hash_value);
    transparent_crc(p_407->g_128.s4, "p_407->g_128.s4", print_hash_value);
    transparent_crc(p_407->g_128.s5, "p_407->g_128.s5", print_hash_value);
    transparent_crc(p_407->g_128.s6, "p_407->g_128.s6", print_hash_value);
    transparent_crc(p_407->g_128.s7, "p_407->g_128.s7", print_hash_value);
    transparent_crc(p_407->g_128.s8, "p_407->g_128.s8", print_hash_value);
    transparent_crc(p_407->g_128.s9, "p_407->g_128.s9", print_hash_value);
    transparent_crc(p_407->g_128.sa, "p_407->g_128.sa", print_hash_value);
    transparent_crc(p_407->g_128.sb, "p_407->g_128.sb", print_hash_value);
    transparent_crc(p_407->g_128.sc, "p_407->g_128.sc", print_hash_value);
    transparent_crc(p_407->g_128.sd, "p_407->g_128.sd", print_hash_value);
    transparent_crc(p_407->g_128.se, "p_407->g_128.se", print_hash_value);
    transparent_crc(p_407->g_128.sf, "p_407->g_128.sf", print_hash_value);
    transparent_crc(p_407->g_156, "p_407->g_156", print_hash_value);
    transparent_crc(p_407->g_158, "p_407->g_158", print_hash_value);
    transparent_crc(p_407->g_192.f0, "p_407->g_192.f0", print_hash_value);
    transparent_crc(p_407->g_206.x, "p_407->g_206.x", print_hash_value);
    transparent_crc(p_407->g_206.y, "p_407->g_206.y", print_hash_value);
    transparent_crc(p_407->g_212, "p_407->g_212", print_hash_value);
    transparent_crc(p_407->g_215.x, "p_407->g_215.x", print_hash_value);
    transparent_crc(p_407->g_215.y, "p_407->g_215.y", print_hash_value);
    transparent_crc(p_407->g_215.z, "p_407->g_215.z", print_hash_value);
    transparent_crc(p_407->g_215.w, "p_407->g_215.w", print_hash_value);
    transparent_crc(p_407->g_239.s0, "p_407->g_239.s0", print_hash_value);
    transparent_crc(p_407->g_239.s1, "p_407->g_239.s1", print_hash_value);
    transparent_crc(p_407->g_239.s2, "p_407->g_239.s2", print_hash_value);
    transparent_crc(p_407->g_239.s3, "p_407->g_239.s3", print_hash_value);
    transparent_crc(p_407->g_239.s4, "p_407->g_239.s4", print_hash_value);
    transparent_crc(p_407->g_239.s5, "p_407->g_239.s5", print_hash_value);
    transparent_crc(p_407->g_239.s6, "p_407->g_239.s6", print_hash_value);
    transparent_crc(p_407->g_239.s7, "p_407->g_239.s7", print_hash_value);
    transparent_crc(p_407->g_241, "p_407->g_241", print_hash_value);
    transparent_crc(p_407->g_250.f0, "p_407->g_250.f0", print_hash_value);
    transparent_crc(p_407->g_278.x, "p_407->g_278.x", print_hash_value);
    transparent_crc(p_407->g_278.y, "p_407->g_278.y", print_hash_value);
    transparent_crc(p_407->g_279.s0, "p_407->g_279.s0", print_hash_value);
    transparent_crc(p_407->g_279.s1, "p_407->g_279.s1", print_hash_value);
    transparent_crc(p_407->g_279.s2, "p_407->g_279.s2", print_hash_value);
    transparent_crc(p_407->g_279.s3, "p_407->g_279.s3", print_hash_value);
    transparent_crc(p_407->g_279.s4, "p_407->g_279.s4", print_hash_value);
    transparent_crc(p_407->g_279.s5, "p_407->g_279.s5", print_hash_value);
    transparent_crc(p_407->g_279.s6, "p_407->g_279.s6", print_hash_value);
    transparent_crc(p_407->g_279.s7, "p_407->g_279.s7", print_hash_value);
    transparent_crc(p_407->g_279.s8, "p_407->g_279.s8", print_hash_value);
    transparent_crc(p_407->g_279.s9, "p_407->g_279.s9", print_hash_value);
    transparent_crc(p_407->g_279.sa, "p_407->g_279.sa", print_hash_value);
    transparent_crc(p_407->g_279.sb, "p_407->g_279.sb", print_hash_value);
    transparent_crc(p_407->g_279.sc, "p_407->g_279.sc", print_hash_value);
    transparent_crc(p_407->g_279.sd, "p_407->g_279.sd", print_hash_value);
    transparent_crc(p_407->g_279.se, "p_407->g_279.se", print_hash_value);
    transparent_crc(p_407->g_279.sf, "p_407->g_279.sf", print_hash_value);
    transparent_crc(p_407->g_281.s0, "p_407->g_281.s0", print_hash_value);
    transparent_crc(p_407->g_281.s1, "p_407->g_281.s1", print_hash_value);
    transparent_crc(p_407->g_281.s2, "p_407->g_281.s2", print_hash_value);
    transparent_crc(p_407->g_281.s3, "p_407->g_281.s3", print_hash_value);
    transparent_crc(p_407->g_281.s4, "p_407->g_281.s4", print_hash_value);
    transparent_crc(p_407->g_281.s5, "p_407->g_281.s5", print_hash_value);
    transparent_crc(p_407->g_281.s6, "p_407->g_281.s6", print_hash_value);
    transparent_crc(p_407->g_281.s7, "p_407->g_281.s7", print_hash_value);
    transparent_crc(p_407->g_282.x, "p_407->g_282.x", print_hash_value);
    transparent_crc(p_407->g_282.y, "p_407->g_282.y", print_hash_value);
    transparent_crc(p_407->g_293.f0, "p_407->g_293.f0", print_hash_value);
    transparent_crc(p_407->g_296.f0, "p_407->g_296.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_407->g_312[i][j], "p_407->g_312[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_407->g_316.f0, "p_407->g_316.f0", print_hash_value);
    transparent_crc(p_407->g_318.f0, "p_407->g_318.f0", print_hash_value);
    transparent_crc(p_407->g_320, "p_407->g_320", print_hash_value);
    transparent_crc(p_407->v_collective, "p_407->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 56; i++)
            transparent_crc(p_407->g_special_values[i + 56 * get_linear_group_id()], "p_407->g_special_values[i + 56 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 56; i++)
            transparent_crc(p_407->l_special_values[i], "p_407->l_special_values[i]", print_hash_value);
    transparent_crc(p_407->l_comm_values[get_linear_local_id()], "p_407->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_407->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_407->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
