// --atomics 30 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 89,42,2 -l 1,21,2
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

__constant uint32_t permutations[10][42] = {
{39,34,24,13,0,18,41,36,29,20,40,5,23,19,26,27,10,25,21,28,8,14,30,38,31,7,2,33,4,6,37,22,1,9,16,35,17,32,3,11,12,15}, // permutation 0
{35,22,15,29,2,28,39,30,7,26,1,40,10,11,4,21,38,18,3,31,32,33,36,8,37,17,14,19,25,6,9,0,13,41,12,34,24,23,16,20,27,5}, // permutation 1
{17,35,15,25,12,1,9,33,37,36,30,18,41,14,26,8,13,29,0,27,6,23,19,5,3,21,34,7,40,2,31,16,32,22,10,4,11,28,38,24,39,20}, // permutation 2
{6,3,22,9,24,37,31,4,5,32,18,21,12,36,23,20,1,26,7,25,39,8,28,35,14,29,33,2,27,10,41,40,0,17,38,11,30,15,13,19,16,34}, // permutation 3
{41,18,31,20,23,36,6,4,3,32,33,40,9,39,14,2,27,29,15,26,17,19,7,37,38,11,1,22,25,8,28,0,12,35,16,21,34,5,13,24,10,30}, // permutation 4
{9,34,2,8,6,23,22,13,40,1,17,5,26,4,14,31,11,32,24,29,15,33,41,37,39,16,3,12,21,7,28,35,36,20,27,38,0,18,19,30,10,25}, // permutation 5
{6,16,9,20,40,4,1,13,24,28,25,26,2,30,8,3,22,34,14,35,23,0,7,38,41,11,21,27,17,19,10,39,18,29,31,32,5,15,33,37,12,36}, // permutation 6
{19,7,27,35,24,25,41,20,13,34,37,11,38,5,21,33,39,26,1,31,2,3,10,8,36,15,16,6,32,17,29,28,4,14,9,22,18,12,23,40,0,30}, // permutation 7
{29,26,39,28,5,38,7,18,35,3,27,36,4,20,14,13,15,22,8,31,40,25,24,0,2,33,9,12,6,1,41,19,23,30,34,21,10,37,16,17,11,32}, // permutation 8
{32,41,26,1,24,2,31,30,27,9,35,14,10,40,34,5,20,11,38,36,22,33,21,28,18,15,17,13,0,3,39,19,37,12,4,16,29,7,8,6,23,25} // permutation 9
};

// Seed: 105

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   uint16_t  f1;
   uint8_t  f2;
   int32_t  f3;
   volatile int16_t  f4;
   uint32_t  f5;
   volatile int32_t  f6;
   uint64_t  f7;
   uint8_t  f8;
};

struct S1 {
   volatile int32_t  f0;
   uint64_t  f1;
   volatile int16_t  f2;
   int64_t  f3;
   volatile uint64_t  f4;
   int32_t  f5;
   volatile uint32_t  f6;
   volatile uint8_t  f7;
   volatile int32_t  f8;
   uint64_t  f9;
};

struct S2 {
   uint32_t  f0;
   uint16_t  f1;
   uint64_t  f2;
};

union U3 {
   uint8_t  f0;
   struct S1  f1;
   volatile int64_t  f2;
   volatile int8_t * f3;
};

union U4 {
   int32_t  f0;
   volatile int8_t  f1;
   volatile struct S2  f2;
};

union U5 {
   int8_t * f0;
};

struct S6 {
    volatile int32_t g_2;
    int32_t g_3;
    VECTOR(int8_t, 4) g_22;
    int8_t *g_53;
    int32_t g_56;
    uint8_t g_66;
    int32_t *g_71;
    int32_t ** volatile g_70;
    struct S1 g_84;
    uint64_t g_86[7];
    uint32_t g_109;
    int32_t ** volatile g_112;
    uint64_t **g_115;
    int32_t ** volatile g_117;
    volatile uint32_t g_131[10];
    union U3 g_138;
    union U3 *g_137;
    union U3 ** volatile g_139;
    volatile VECTOR(uint64_t, 16) g_187;
    VECTOR(int32_t, 4) g_201;
    int16_t g_205;
    int32_t ** volatile g_206;
    int8_t *g_207;
    volatile VECTOR(int8_t, 16) g_210;
    VECTOR(int16_t, 16) g_220;
    int32_t * volatile g_224;
    union U3 g_230[4][7][3];
    VECTOR(int64_t, 8) g_237;
    uint32_t g_263;
    int32_t * volatile g_264;
    struct S0 g_267[8];
    struct S0 *g_266;
    struct S0 *g_270;
    struct S0 ** volatile g_269[8][7][4];
    struct S0 ** volatile g_271[10];
    union U5 g_276;
    volatile VECTOR(int32_t, 16) g_289;
    VECTOR(int32_t, 4) g_291;
    uint64_t *g_307;
    volatile VECTOR(int64_t, 8) g_312;
    VECTOR(int8_t, 16) g_319;
    VECTOR(uint8_t, 16) g_321;
    volatile VECTOR(uint8_t, 2) g_334;
    volatile VECTOR(int64_t, 2) g_341;
    struct S2 g_344;
    union U4 g_352;
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
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
union U4  func_1(struct S6 * p_353);
int32_t * func_6(int16_t  p_7, union U5  p_8, struct S6 * p_353);
uint8_t  func_11(int8_t * p_12, uint32_t  p_13, uint32_t  p_14, int16_t  p_15, uint16_t  p_16, struct S6 * p_353);
int8_t * func_17(int8_t * p_18, int32_t  p_19, uint64_t  p_20, struct S6 * p_353);
int32_t  func_23(uint32_t  p_24, int64_t  p_25, struct S6 * p_353);
int8_t * func_34(uint32_t  p_35, int8_t * p_36, int8_t * p_37, struct S6 * p_353);
int8_t * func_39(union U5  p_40, int8_t  p_41, int64_t  p_42, struct S6 * p_353);
union U5  func_43(int32_t * p_44, uint64_t  p_45, int32_t  p_46, struct S6 * p_353);
int32_t * func_47(int8_t * p_48, uint32_t  p_49, int8_t * p_50, int64_t  p_51, uint64_t  p_52, struct S6 * p_353);
int8_t * func_79(uint32_t  p_80, struct S6 * p_353);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_353->g_3 p_353->g_53 p_353->g_2 p_353->g_56 p_353->g_comm_values p_353->g_66 p_353->g_70 p_353->g_84 p_353->g_86 p_353->g_71 p_353->g_22 p_353->g_112 p_353->g_115 p_353->g_131 p_353->g_137 p_353->g_139 p_353->g_205 p_353->g_206 p_353->g_207 p_353->g_138.f0 p_353->g_230 p_353->g_201 p_353->g_237 p_353->g_263 p_353->g_266 p_353->g_276 p_353->g_210 p_353->g_289 p_353->g_291 p_353->g_307 p_353->g_312 p_353->g_230.f0 p_353->g_319 p_353->g_321 p_353->g_187 p_353->g_334 p_353->g_267.f1 p_353->g_341 p_353->g_344 p_353->g_352
 * writes: p_353->g_3 p_353->g_2 p_353->g_56 p_353->g_66 p_353->g_71 p_353->g_86 p_353->g_53 p_353->g_84.f1 p_353->g_84.f3 p_353->g_109 p_353->g_115 p_353->g_131 p_353->g_137 p_353->g_201 p_353->g_266 p_353->g_84.f5 p_353->g_22 p_353->g_84.f9 p_353->g_291
 */
union U4  func_1(struct S6 * p_353)
{ /* block id: 4 */
    uint16_t l_38 = 0xFE24L;
    int8_t *l_144 = (void*)0;
    uint32_t l_245 = 0x672D5C51L;
    uint32_t l_273 = 4294967288UL;
    int32_t l_275 = (-1L);
    int32_t *l_281 = (void*)0;
    int32_t *l_283[1];
    int16_t l_284 = 1L;
    int8_t l_285[2][10][8] = {{{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL}},{{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL},{0x59L,0x4EL,0x59L,0x59L,0x4EL,0x59L,0x59L,0x4EL}}};
    uint32_t l_286[5][4][2] = {{{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL}},{{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL}},{{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL}},{{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL}},{{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL},{0xF5A5815AL,0UL}}};
    VECTOR(int32_t, 8) l_290 = (VECTOR(int32_t, 8))(0x3D1E3544L, (VECTOR(int32_t, 4))(0x3D1E3544L, (VECTOR(int32_t, 2))(0x3D1E3544L, 0x1CE6E52AL), 0x1CE6E52AL), 0x1CE6E52AL, 0x3D1E3544L, 0x1CE6E52AL);
    VECTOR(int32_t, 4) l_292 = (VECTOR(int32_t, 4))(0x7CEFCBEEL, (VECTOR(int32_t, 2))(0x7CEFCBEEL, (-1L)), (-1L));
    struct S0 *l_295 = &p_353->g_267[2];
    int32_t l_298 = (-9L);
    uint64_t *l_301 = &p_353->g_84.f9;
    uint64_t **l_302 = &l_301;
    uint64_t **l_303 = (void*)0;
    uint64_t **l_304 = (void*)0;
    uint64_t *l_306[3];
    uint64_t **l_305 = &l_306[1];
    uint64_t *l_308 = (void*)0;
    uint64_t *l_309[9] = {&p_353->g_230[1][4][0].f1.f1,&p_353->g_230[1][4][0].f1.f1,&p_353->g_230[1][4][0].f1.f1,&p_353->g_230[1][4][0].f1.f1,&p_353->g_230[1][4][0].f1.f1,&p_353->g_230[1][4][0].f1.f1,&p_353->g_230[1][4][0].f1.f1,&p_353->g_230[1][4][0].f1.f1,&p_353->g_230[1][4][0].f1.f1};
    uint32_t l_313 = 4294967295UL;
    VECTOR(int8_t, 8) l_331 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
    VECTOR(int64_t, 16) l_340 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-2L)), (-2L)), (-2L), 0L, (-2L), (VECTOR(int64_t, 2))(0L, (-2L)), (VECTOR(int64_t, 2))(0L, (-2L)), 0L, (-2L), 0L, (-2L));
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_283[i] = &p_353->g_56;
    for (i = 0; i < 3; i++)
        l_306[i] = &p_353->g_267[5].f7;
    for (p_353->g_3 = (-1); (p_353->g_3 < 5); p_353->g_3++)
    { /* block id: 7 */
        int8_t *l_21 = (void*)0;
        int32_t l_30[5] = {0x7AFBF261L,0x7AFBF261L,0x7AFBF261L,0x7AFBF261L,0x7AFBF261L};
        int8_t *l_31 = (void*)0;
        int8_t *l_32 = (void*)0;
        int8_t *l_33[8];
        int32_t l_244 = 1L;
        int16_t *l_274[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint32_t l_282 = 0x3ACA40FAL;
        int i;
        for (i = 0; i < 8; i++)
            l_33[i] = (void*)0;
        l_281 = func_6(((l_275 = ((safe_sub_func_uint8_t_u_u(func_11(func_17(l_21, func_23((safe_mul_func_int16_t_s_s((((safe_rshift_func_int8_t_s_s((l_30[1] = l_30[1]), 3)) , func_34(l_38, func_39(func_43(func_47(p_353->g_53, p_353->g_3, p_353->g_53, l_30[1], p_353->g_2, p_353), p_353->g_56, p_353->g_comm_values[p_353->tid], p_353), l_38, l_30[1], p_353), l_144, p_353)) != p_353->g_207), p_353->g_138.f0)), l_38, p_353), l_38, p_353), l_244, p_353->g_237.s2, l_245, l_244, p_353), l_273)) , 1L)) >= l_273), p_353->g_276, p_353);
        if (l_244)
            break;
        (*l_281) = l_282;
    }
    --l_286[1][1][0];
    if (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_353->g_289.s47)), ((VECTOR(int32_t, 2))(l_290.s64)), ((VECTOR(int32_t, 2))(p_353->g_291.wx)), (+((void*)0 != l_281)), 0x0A0C153BL, 5L, 0x403E6935L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_292.xzxy)), (safe_rshift_func_int8_t_s_s((l_295 == l_295), (safe_mod_func_int8_t_s_s((p_353->g_22.x |= l_298), ((((FAKE_DIVERGE(p_353->global_2_offset, get_global_id(2), 10) | (safe_mod_func_uint64_t_u_u((p_353->g_84.f9 = ((p_353->g_3 |= p_353->g_237.s3) , (((*l_305) = ((*l_302) = l_301)) == p_353->g_307))), (safe_mod_func_uint16_t_u_u((((((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(0x7F5871EF909DA0BEL, 0x453C8C6DA9406C51L, 0x1B4292269C85C02CL, ((VECTOR(int64_t, 2))(p_353->g_312.s62)), (-4L), (-1L), 0x7127D6F1AB553806L)))).s3555201627271200)), ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))(4L, ((void*)0 != p_353->g_307), l_313, (-1L), (-10L), ((VECTOR(int64_t, 8))(0L)), ((VECTOR(int64_t, 2))(0x1DC035A220A624B7L)), 1L)).s90, ((VECTOR(int64_t, 2))(0x6119511A08FE13AFL))))).xyxyyxxxyyyyyxyy))).s7 <= FAKE_DIVERGE(p_353->local_2_offset, get_local_id(2), 10)) <= p_353->g_230[1][4][0].f0) & 0x14L), 0x71C0L))))) != 0x43D9L) && p_353->g_84.f2) , GROUP_DIVERGE(2, 1)))))), 0x70DA58D7L, 1L, 0x1319029AL)).s4113662725230626)).sc26a)), (-7L), (-3L))).s3)
    { /* block id: 129 */
        uint32_t l_314 = 0x1C5D0E3DL;
        uint8_t *l_320 = (void*)0;
        uint64_t ***l_326 = &l_305;
        int32_t l_327 = 0x47E49756L;
        ++l_314;
        l_327 = ((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 16))(p_353->g_319.sc13ed9309ccd8f38)).sd, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))((l_320 != &p_353->g_66), 0xA5L, ((VECTOR(uint8_t, 4))(p_353->g_321.s41a9)), 246UL, 0UL)).odd)).y)) >= (l_314 < ((safe_div_func_uint32_t_u_u(l_314, 1UL)) > (FAKE_DIVERGE(p_353->global_2_offset, get_global_id(2), 10) == (&p_353->g_307 != ((*l_326) = &l_306[1]))))));
        for (l_245 = 13; (l_245 == 34); ++l_245)
        { /* block id: 135 */
            p_353->g_291.x = 0x6CABFE7EL;
        }
    }
    else
    { /* block id: 138 */
        VECTOR(int16_t, 8) l_330 = (VECTOR(int16_t, 8))(0x7A9CL, (VECTOR(int16_t, 4))(0x7A9CL, (VECTOR(int16_t, 2))(0x7A9CL, 0x57AAL), 0x57AAL), 0x57AAL, 0x7A9CL, 0x57AAL);
        int64_t **l_335 = (void*)0;
        int64_t **l_336 = (void*)0;
        int64_t **l_337 = (void*)0;
        int64_t *l_339 = &p_353->g_84.f3;
        int64_t **l_338 = &l_339;
        uint32_t l_349 = 0xCAAA5692L;
        int64_t l_350 = 0x40C62F0825A34808L;
        int32_t *l_351 = (void*)0;
        int i;
        p_353->g_56 ^= (l_350 = (((VECTOR(int16_t, 4))(l_330.s3542)).x >= (((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(l_331.s3203)).xyyzywwz, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x28L, (-5L))).xxxx)), (-8L), (safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(abs(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 2))(0UL, 0xECL)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(3UL, 1UL)), p_353->g_187.s9, ((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(p_353->g_334.xx)))).xyyyyxyyyyxyyxxy))).s560c, ((VECTOR(uint8_t, 4))(0xEEL, ((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(0UL, 0UL, 253UL, (0x2A0EL < (((*l_338) = p_353->g_307) != (((((VECTOR(int64_t, 4))(l_340.sdc15)).y <= ((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),VECTOR(int64_t, 8),((VECTOR(int64_t, 8))(0x5980E95B98186256L, p_353->g_267[5].f1, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(p_353->g_341.xyxxxxxy)).odd, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))((-3L), 0x1EBC6118E1C49AC0L)))).yyxx))).zxxxwzwx, ((VECTOR(int64_t, 2))((-1L), 0x53F7C42D481B4DE4L)).yxxyxxyx, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))((0xC72C7614L || (safe_div_func_int64_t_s_s((p_353->g_344 , (safe_mod_func_int32_t_s_s(l_330.s1, l_330.s0))), (safe_mul_func_uint8_t_u_u((0xECB472EFL ^ p_353->g_131[8]), p_353->g_321.s9))))), 0x07AC7BC0C030AABBL, 0x2D91BA6AE79508E7L, 0x0084D41BEAE02E96L)).zyxxwxzx, ((VECTOR(int64_t, 8))(8L))))).even)).zzzxyywz))).hi)), 0x444520D7E9BD64D9L, 0x1A7F52D36825FD7FL)), ((VECTOR(int64_t, 8))((-6L))), ((VECTOR(int64_t, 8))(0x5E9E4BCE580E0F3BL))))).s5) != p_353->g_201.w) , p_353->g_307))), ((VECTOR(uint8_t, 2))(0xBBL)), 247UL, ((VECTOR(uint8_t, 2))(0xB5L)), ((VECTOR(uint8_t, 2))(250UL)), p_353->g_263, 0x72L, l_349, 0xA9L, 0xCEL)).s58e7)).hi, ((VECTOR(uint8_t, 2))(0x81L))))).xxyyxyyx)).s6360016555147532, ((VECTOR(uint8_t, 16))(0x7EL))))).s8, 0x13L, 0UL)), ((VECTOR(uint8_t, 4))(0xABL))))), ((VECTOR(uint8_t, 8))(4UL)), 0x4BL)))).s4f))).xyyxxxxxxyyyxxxx)).lo, ((VECTOR(uint8_t, 8))(0x72L))))))).s4242066561233464))).sf, FAKE_DIVERGE(p_353->local_1_offset, get_local_id(1), 10))), (-4L), 0x58L)), ((VECTOR(int8_t, 8))(0x17L))))).s7 < l_330.s0)));
        l_351 = l_351;
    }
    return p_353->g_352;
}


/* ------------------------------------------ */
/* 
 * reads : p_353->g_84.f5 p_353->g_210 p_353->g_56
 * writes: p_353->g_84.f5 p_353->g_56
 */
int32_t * func_6(int16_t  p_7, union U5  p_8, struct S6 * p_353)
{ /* block id: 111 */
    int32_t *l_280 = &p_353->g_56;
    for (p_353->g_84.f5 = 0; (p_353->g_84.f5 == 22); p_353->g_84.f5 = safe_add_func_uint64_t_u_u(p_353->g_84.f5, 7))
    { /* block id: 114 */
        int32_t *l_279 = &p_353->g_56;
        return l_279;
    }
    (*l_280) &= (p_7 <= p_353->g_210.s3);
    return l_280;
}


/* ------------------------------------------ */
/* 
 * reads : p_353->g_109 p_353->g_66 p_353->g_2 p_353->g_263 p_353->g_56 p_353->g_266
 * writes: p_353->g_109 p_353->g_53 p_353->g_2 p_353->g_71 p_353->g_56 p_353->g_266
 */
uint8_t  func_11(int8_t * p_12, uint32_t  p_13, uint32_t  p_14, int16_t  p_15, uint16_t  p_16, struct S6 * p_353)
{ /* block id: 101 */
    union U5 l_246[5][2][7] = {{{{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0}}}};
    int32_t l_247 = 3L;
    union U3 *l_250 = &p_353->g_230[2][5][0];
    uint32_t *l_251 = &p_353->g_109;
    VECTOR(int32_t, 2) l_256 = (VECTOR(int32_t, 2))(0L, 8L);
    int8_t **l_258 = &p_353->g_207;
    int8_t ***l_257 = &l_258;
    int8_t **l_259 = &p_353->g_53;
    int32_t **l_260 = &p_353->g_71;
    int32_t *l_265 = &p_353->g_56;
    struct S0 **l_268 = &p_353->g_266;
    struct S0 *l_272 = &p_353->g_267[4];
    int i, j, k;
    (*l_260) = func_47(((*l_259) = func_39(l_246[0][0][5], l_247, (safe_add_func_uint8_t_u_u((((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 4))(0x6032L, ((VECTOR(int16_t, 2))(1L, (-2L))), 0x5465L)).lo, ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(0x6921L, (((void*)0 != l_250) <= (l_247 & ((*l_251)++))), 5L, ((safe_add_func_int32_t_s_s(p_13, (l_247 == p_353->g_66))) < ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_256.xy)).xyxxyyxx)).hi)).y), 0x496CL, (((*l_257) = &p_353->g_53) == &p_353->g_53), 0L, (-4L))).even))).odd))), 0x32B3L, 0x1961L)))).y >= p_14) , (void*)0) == (void*)0), 0x0CL)), p_353)), p_353->g_2, p_12, l_256.y, l_256.x, p_353);
    (*l_265) &= (safe_rshift_func_int8_t_s_s(p_353->g_263, p_13));
    l_272 = ((*l_268) = p_353->g_266);
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_353->g_230 p_353->g_237 p_353->g_205 p_353->g_109 p_353->g_66 p_353->g_201 p_353->g_56 p_353->g_207
 * writes: p_353->g_138.f0 p_353->g_201 p_353->g_56
 */
int8_t * func_17(int8_t * p_18, int32_t  p_19, uint64_t  p_20, struct S6 * p_353)
{ /* block id: 94 */
    VECTOR(int8_t, 2) l_231 = (VECTOR(int8_t, 2))(0x69L, (-6L));
    VECTOR(uint16_t, 16) l_234 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 7UL), 7UL), 7UL, 1UL, 7UL, (VECTOR(uint16_t, 2))(1UL, 7UL), (VECTOR(uint16_t, 2))(1UL, 7UL), 1UL, 7UL, 1UL, 7UL);
    int16_t *l_235 = (void*)0;
    int16_t *l_236 = (void*)0;
    uint8_t *l_240 = &p_353->g_138.f0;
    VECTOR(int64_t, 2) l_241 = (VECTOR(int64_t, 2))((-10L), 0x494974D66F8ED4CEL);
    int32_t l_242 = 0x55A96B93L;
    int32_t *l_243[6][8] = {{&p_353->g_3,(void*)0,&p_353->g_56,(void*)0,&p_353->g_3,&p_353->g_3,(void*)0,&p_353->g_56},{&p_353->g_3,(void*)0,&p_353->g_56,(void*)0,&p_353->g_3,&p_353->g_3,(void*)0,&p_353->g_56},{&p_353->g_3,(void*)0,&p_353->g_56,(void*)0,&p_353->g_3,&p_353->g_3,(void*)0,&p_353->g_56},{&p_353->g_3,(void*)0,&p_353->g_56,(void*)0,&p_353->g_3,&p_353->g_3,(void*)0,&p_353->g_56},{&p_353->g_3,(void*)0,&p_353->g_56,(void*)0,&p_353->g_3,&p_353->g_3,(void*)0,&p_353->g_56},{&p_353->g_3,(void*)0,&p_353->g_56,(void*)0,&p_353->g_3,&p_353->g_3,(void*)0,&p_353->g_56}};
    int i, j;
    p_353->g_56 |= (p_353->g_201.z ^= (safe_div_func_uint32_t_u_u(7UL, (safe_add_func_int32_t_s_s(((0x1178L ^ p_20) , ((p_353->g_230[1][4][0] , ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 4))(l_231.xxxy)), ((VECTOR(int8_t, 2))(0x08L, 0x62L)).yyxy))))).x) | (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_234.s40ec2147)).s4, (((l_235 = l_235) != l_236) >= ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(p_353->g_237.s4670)), ((safe_lshift_func_int16_t_s_u(l_231.y, 6)) && ((*l_240) = GROUP_DIVERGE(1, 1))), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_241.yxyx)))).ywwxxyxzxxwyyywz)).lo)), ((p_353->g_205 , ((l_242 = ((p_353->g_109 && 0x6FE5L) , (-1L))) != p_353->g_66)) & 0xDDA8L), (-1L), 0x237D89BF5A4B3DB9L)).s09, ((VECTOR(int64_t, 2))((-6L)))))), (int64_t)p_20))), 0x36AC659F6053C3B6L, 0x79E4AB8E737CADD6L)).y))))), (-1L))))));
    return p_353->g_207;
}


/* ------------------------------------------ */
/* 
 * reads : p_353->g_210 p_353->g_86 p_353->g_220 p_353->g_84.f3 p_353->g_2 p_353->g_comm_values
 * writes: p_353->g_2 p_353->g_201
 */
int32_t  func_23(uint32_t  p_24, int64_t  p_25, struct S6 * p_353)
{ /* block id: 90 */
    VECTOR(uint16_t, 2) l_211 = (VECTOR(uint16_t, 2))(0x95E0L, 0UL);
    VECTOR(int16_t, 16) l_221 = (VECTOR(int16_t, 16))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x00B7L), 0x00B7L), 0x00B7L, (-5L), 0x00B7L, (VECTOR(int16_t, 2))((-5L), 0x00B7L), (VECTOR(int16_t, 2))((-5L), 0x00B7L), (-5L), 0x00B7L, (-5L), 0x00B7L);
    union U5 l_222 = {0};
    int8_t *l_223 = (void*)0;
    int32_t *l_225[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    p_353->g_201.z = ((safe_lshift_func_uint8_t_u_u((p_24 != ((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 4))(0L, 0x20L, 0x64L, 0x28L)).zyzxyzyw, ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_353->g_210.sb36e)))))), (l_211.x = p_24), 0x5EL, (safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(l_211.y, (safe_mul_func_uint8_t_u_u(l_211.y, (safe_mul_func_uint16_t_u_u(p_353->g_86[1], ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(p_353->g_220.sdf)).yyxxyxyx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))(l_221.s2b))))), (-9L), 0x67E5L)))).wyzwxywz))).s6)))))), 7)), 0x14L, (((~(l_221.s0 | (((l_222 , func_47((l_221.se , (void*)0), l_221.s7, l_223, l_211.x, p_353->g_84.f3, p_353)) != (void*)0) > p_353->g_comm_values[p_353->tid]))) | 0x6A6B4D2BL) > 1UL), 7L, ((VECTOR(int8_t, 4))(1L)), 0x10L, 0x5AL)).sc231, ((VECTOR(int8_t, 4))(0x4EL))))).zxyyzzxx))).s4), 0)) | p_25);
    return p_353->g_84.f3;
}


/* ------------------------------------------ */
/* 
 * reads : p_353->g_187 p_353->g_53 p_353->g_201 p_353->g_84.f5 p_353->g_205 p_353->g_206
 * writes: p_353->g_56 p_353->g_71
 */
int8_t * func_34(uint32_t  p_35, int8_t * p_36, int8_t * p_37, struct S6 * p_353)
{ /* block id: 48 */
    uint16_t l_188[4];
    uint64_t *l_189[3];
    int32_t l_190 = 0x7A9B2710L;
    VECTOR(uint16_t, 4) l_193 = (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0x23E8L), 0x23E8L);
    VECTOR(int64_t, 4) l_194 = (VECTOR(int64_t, 4))(0x15A1ACACCE184C6DL, (VECTOR(int64_t, 2))(0x15A1ACACCE184C6DL, 0x722F541D52DF08DBL), 0x722F541D52DF08DBL);
    VECTOR(int32_t, 2) l_202 = (VECTOR(int32_t, 2))(1L, 1L);
    int32_t *l_203 = &p_353->g_56;
    int16_t *l_204[10][7][3] = {{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}},{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}},{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}},{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}},{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}},{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}},{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}},{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}},{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}},{{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205},{&p_353->g_205,&p_353->g_205,&p_353->g_205}}};
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_188[i] = 65535UL;
    for (i = 0; i < 3; i++)
        l_189[i] = &p_353->g_138.f1.f1;
    if ((atomic_inc(&p_353->g_atomic_input[30 * get_linear_group_id() + 1]) == 2))
    { /* block id: 50 */
        uint64_t l_145 = 18446744073709551614UL;
        if (l_145)
        { /* block id: 51 */
            VECTOR(uint32_t, 4) l_146 = (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 0x059E374CL), 0x059E374CL);
            VECTOR(uint32_t, 8) l_147 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967289UL), 4294967289UL), 4294967289UL, 0UL, 4294967289UL);
            uint32_t l_148 = 0xCC00A57CL;
            uint32_t l_149 = 4294967292UL;
            int16_t l_150 = 0x4A24L;
            VECTOR(int16_t, 2) l_170 = (VECTOR(int16_t, 2))(0x6E7EL, 1L);
            int64_t l_171 = (-5L);
            uint64_t l_172 = 18446744073709551612UL;
            int32_t l_174 = 0x26FC9A26L;
            int32_t *l_173 = &l_174;
            int32_t *l_175[3][8][9] = {{{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174}},{{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174}},{{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174},{&l_174,&l_174,(void*)0,&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174}}};
            VECTOR(int32_t, 2) l_176 = (VECTOR(int32_t, 2))(0x0AA57C4AL, (-1L));
            VECTOR(int8_t, 16) l_177 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x22L), 0x22L), 0x22L, 0L, 0x22L, (VECTOR(int8_t, 2))(0L, 0x22L), (VECTOR(int8_t, 2))(0L, 0x22L), 0L, 0x22L, 0L, 0x22L);
            int i, j, k;
            l_150 &= (l_149 = (((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 2))(l_146.wx)), ((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0x8EFF3EB3L, 0x88B3BDE5L)))).yxxxyyxyxyxyxxyx)).s493e, ((VECTOR(uint32_t, 2))(l_147.s15)).xyyy))).odd))).even , l_148));
            for (l_150 = 0; (l_150 > 20); l_150 = safe_add_func_int64_t_s_s(l_150, 5))
            { /* block id: 56 */
                int32_t l_153 = 1L;
                uint64_t l_162 = 0xEA61EF3BD0473034L;
                uint64_t l_163 = 5UL;
                int32_t *l_168 = (void*)0;
                int32_t *l_169 = &l_153;
                for (l_153 = 0; (l_153 == (-9)); l_153 = safe_sub_func_uint32_t_u_u(l_153, 5))
                { /* block id: 59 */
                    uint64_t l_156 = 0x151272D65887891BL;
                    int16_t l_157 = (-4L);
                    int16_t l_158 = 0x7529L;
                    int32_t *l_159 = (void*)0;
                    int32_t l_161 = 0x5084BBD9L;
                    int32_t *l_160 = &l_161;
                    l_157 ^= l_156;
                    l_158 = 0x4EB716F4L;
                    l_160 = l_159;
                }
                l_163 = l_162;
                for (l_153 = (-11); (l_153 == (-24)); l_153--)
                { /* block id: 67 */
                    struct S0 l_166 = {0x6E9E258EL,0xF13FL,0UL,0x5CABCBA9L,-1L,1UL,0x4A34AA79L,0UL,0xAEL};/* VOLATILE GLOBAL l_166 */
                    struct S0 l_167 = {-1L,0x40DBL,6UL,0x770A445FL,6L,0x1C7F1A52L,-1L,0UL,0xA7L};/* VOLATILE GLOBAL l_167 */
                    l_167 = l_166;
                }
                l_169 = l_168;
            }
            l_175[2][4][8] = ((l_172 = (l_171 = ((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(0x3200L, 0x5B8BL, 0x2A5AL, 0x4F38L)))).wwwyyxxyzyxxywwx, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_170.xyyxyxxyyyxxyxxy))))))).sa)) , l_173);
            l_177.sf ^= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_176.yyxyxyyx)).s20)).lo;
        }
        else
        { /* block id: 76 */
            int32_t l_179 = 0x10D2FA85L;
            int32_t *l_178 = &l_179;
            int32_t *l_180 = &l_179;
            int32_t *l_181 = (void*)0;
            int32_t *l_182 = &l_179;
            l_180 = (l_178 = (void*)0);
            l_182 = l_181;
        }
        unsigned int result = 0;
        result += l_145;
        atomic_add(&p_353->g_special_values[30 * get_linear_group_id() + 1], result);
    }
    else
    { /* block id: 81 */
        (1 + 1);
    }
    (*p_353->g_206) = (((safe_add_func_uint64_t_u_u((safe_div_func_int32_t_s_s((((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 2))(p_353->g_187.sbe)).yxxx))), 0xF56C5408E814CF41L, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((l_190 &= ((l_188[3] , p_353->g_53) != (void*)0)), 18446744073709551615UL, 18446744073709551615UL, 0x60856D30ABCD8AEFL)), (safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_193.wy)), 0x5E98L, 65535UL)).z, 8)), (l_190 = l_193.z), 0UL, 0xA88920E447501276L)).s76)).yxyx)).y, 0UL, 1UL)).s6 <= ((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 2))(l_194.yz)).xyxyxyxxyxyxxyyy, (int64_t)(safe_add_func_uint8_t_u_u((1UL > ((l_202.x = (safe_rshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(0xCFDCL, (((*l_203) = ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x4EC993FBL, 2L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_353->g_201.wxwyxzxw)).s46)), ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))((-1L), 0L)), ((VECTOR(int32_t, 8))(l_202.yxxyxxxx)).s41))), 0x1EE0A34BL, 7L)), ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(0x6DEC4028L, 0x7020C033L, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_202.x, p_35, 1L, ((VECTOR(int32_t, 4))(0x1661A5A5L)), ((VECTOR(int32_t, 8))(0x6E1C351EL)), 1L)))).s8e)), 0x17682999L, 0x29258A53L)), (int32_t)p_35))), 0x0F4C23C4L, ((VECTOR(int32_t, 8))(1L)), 0x1ACD293EL)).sdd8f)))).zxzzzwzxzwwzzzwy, ((VECTOR(int32_t, 16))(0x06CC4AA5L)), ((VECTOR(int32_t, 16))((-6L)))))).se310)).yxyxzxzz, ((VECTOR(int32_t, 8))(5L)), ((VECTOR(int32_t, 8))((-4L)))))), 0x0B9419DEL, ((VECTOR(int32_t, 2))(0L)), (-1L), ((VECTOR(int32_t, 4))(0x1E71E300L)))).s60, ((VECTOR(int32_t, 2))((-1L)))))).yxxyxxxx, ((VECTOR(int32_t, 8))(0x7FCC7CFDL)), ((VECTOR(int32_t, 8))(6L)))))))).s7073167546314127)).s79, (int32_t)p_35))).even) | 0x5D7338BBL))), 7))) >= p_353->g_84.f5)), l_193.y))))).s3) ^ p_353->g_205) == 1UL), l_194.w)), l_193.x)) && 0x2C7BL) , &l_190);
    return p_353->g_53;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_39(union U5  p_40, int8_t  p_41, int64_t  p_42, struct S6 * p_353)
{ /* block id: 46 */
    int8_t *l_143 = (void*)0;
    return l_143;
}


/* ------------------------------------------ */
/* 
 * reads : p_353->g_2 p_353->g_56 p_353->g_66 p_353->g_53 p_353->g_70 p_353->g_84 p_353->g_86 p_353->g_71 p_353->g_comm_values p_353->g_22 p_353->g_112 p_353->g_109 p_353->g_115 p_353->g_131 p_353->g_137 p_353->g_139
 * writes: p_353->g_56 p_353->g_66 p_353->g_2 p_353->g_71 p_353->g_86 p_353->g_53 p_353->g_84.f1 p_353->g_84.f3 p_353->g_109 p_353->g_115 p_353->g_131 p_353->g_137
 */
union U5  func_43(int32_t * p_44, uint64_t  p_45, int32_t  p_46, struct S6 * p_353)
{ /* block id: 12 */
    uint64_t l_57 = 0x140AE7762969FBC0L;
    int32_t l_62 = (-10L);
    int32_t l_63 = 0x7BAE54FDL;
    int8_t *l_94[8][2][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint32_t l_96 = 0x3F9E7EE7L;
    int64_t *l_97 = &p_353->g_84.f3;
    VECTOR(uint8_t, 2) l_102 = (VECTOR(uint8_t, 2))(255UL, 0x6EL);
    int8_t *l_110[9][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t **l_111 = (void*)0;
    uint32_t l_134[2][8] = {{0xE754895CL,0UL,0xE754895CL,0xE754895CL,0UL,0xE754895CL,0xE754895CL,0UL},{0xE754895CL,0UL,0xE754895CL,0xE754895CL,0UL,0xE754895CL,0xE754895CL,0UL}};
    int8_t *l_140 = (void*)0;
    union U5 l_142 = {0};
    int i, j, k;
    if (l_57)
    { /* block id: 13 */
        int32_t *l_58 = &p_353->g_56;
        int32_t *l_59 = (void*)0;
        int32_t *l_60 = (void*)0;
        int32_t *l_61 = &p_353->g_56;
        int32_t *l_64 = &l_63;
        int32_t *l_65[2];
        int8_t *l_69 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_65[i] = &p_353->g_56;
        (*l_58) &= p_353->g_2;
        ++p_353->g_66;
        (*p_353->g_70) = func_47(p_353->g_53, (l_63 ^ (!p_46)), l_69, (p_46 | p_45), p_353->g_2, p_353);
    }
    else
    { /* block id: 17 */
        int8_t *l_81 = (void*)0;
        uint64_t *l_85 = &p_353->g_86[2];
        int32_t *l_89[5][10] = {{&p_353->g_3,&p_353->g_3,&p_353->g_56,&p_353->g_56,&l_62,&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_3,&p_353->g_56},{&p_353->g_3,&p_353->g_3,&p_353->g_56,&p_353->g_56,&l_62,&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_3,&p_353->g_56},{&p_353->g_3,&p_353->g_3,&p_353->g_56,&p_353->g_56,&l_62,&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_3,&p_353->g_56},{&p_353->g_3,&p_353->g_3,&p_353->g_56,&p_353->g_56,&l_62,&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_3,&p_353->g_56},{&p_353->g_3,&p_353->g_3,&p_353->g_56,&p_353->g_56,&l_62,&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_3,&p_353->g_56}};
        int8_t **l_93 = &p_353->g_53;
        uint64_t *l_95 = &p_353->g_84.f1;
        int i, j;
        l_96 = (safe_div_func_uint64_t_u_u(((*l_95) = (safe_add_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u(p_45, (safe_unary_minus_func_int32_t_s((p_353->g_56 = (((*l_93) = func_79(((((VECTOR(uint8_t, 4))(0x7FL, ((l_81 == l_81) > (p_353->g_53 == p_353->g_53)), 255UL, 0xD3L)).y & (((safe_add_func_int64_t_s_s((p_353->g_84 , (((++(*l_85)) , (*p_353->g_70)) == l_89[4][8])), (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_353->group_1_offset, get_group_id(1), 10), p_353->g_84.f5)))) | p_46) , p_353->g_84.f2)) <= l_57), p_353)) != l_94[5][0][8])))))), p_353->g_comm_values[p_353->tid]))), 0x25B7CC70ECFAE2F6L));
    }
    (*p_353->g_112) = func_47((((7L < (((*l_97) = l_62) && (p_353->g_66 != p_45))) <= (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(0xADL, (safe_rshift_func_uint16_t_u_u(l_63, 15)), 0xC9L, 0x68L, 3UL, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(l_102.xyxxyyxy)))), (((safe_lshift_func_uint8_t_u_s((safe_add_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(p_353->g_84.f6, (p_353->g_109 = (0xBAL | (!9L))))), FAKE_DIVERGE(p_353->group_0_offset, get_group_id(0), 10))), 1)) > (p_45 , l_63)) < 0x2A0F7998L), 1UL, 0x8FL)).se, l_63))) , l_94[5][0][8]), l_96, l_110[8][4], p_353->g_66, p_353->g_22.w, p_353);
    for (p_353->g_109 = 27; (p_353->g_109 == 39); p_353->g_109++)
    { /* block id: 31 */
        uint64_t ***l_116 = &p_353->g_115;
        int32_t **l_118 = &p_353->g_71;
        int32_t *l_119 = (void*)0;
        VECTOR(uint32_t, 16) l_120 = (VECTOR(uint32_t, 16))(0x74C5A945L, (VECTOR(uint32_t, 4))(0x74C5A945L, (VECTOR(uint32_t, 2))(0x74C5A945L, 6UL), 6UL), 6UL, 0x74C5A945L, 6UL, (VECTOR(uint32_t, 2))(0x74C5A945L, 6UL), (VECTOR(uint32_t, 2))(0x74C5A945L, 6UL), 0x74C5A945L, 6UL, 0x74C5A945L, 6UL);
        int i;
        (*l_116) = p_353->g_115;
        (*l_118) = &p_46;
        l_120.s0++;
    }
    for (p_353->g_109 = 0; (p_353->g_109 == 46); p_353->g_109++)
    { /* block id: 38 */
        int32_t *l_125 = (void*)0;
        int32_t *l_126 = &l_62;
        int32_t *l_127 = &l_63;
        int32_t *l_128 = &l_63;
        int32_t *l_129 = (void*)0;
        int32_t *l_130[1];
        int8_t **l_141 = &l_110[6][4];
        int i;
        for (i = 0; i < 1; i++)
            l_130[i] = (void*)0;
        ++p_353->g_131[8];
        ++l_134[1][0];
        (*p_353->g_139) = p_353->g_137;
        (*l_128) = (65527UL || (l_140 != ((*l_141) = l_94[5][0][8])));
    }
    return l_142;
}


/* ------------------------------------------ */
/* 
 * reads : p_353->g_2
 * writes: p_353->g_2
 */
int32_t * func_47(int8_t * p_48, uint32_t  p_49, int8_t * p_50, int64_t  p_51, uint64_t  p_52, struct S6 * p_353)
{ /* block id: 9 */
    int32_t *l_54 = (void*)0;
    int32_t *l_55[6][2][4] = {{{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56},{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56}},{{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56},{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56}},{{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56},{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56}},{{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56},{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56}},{{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56},{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56}},{{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56},{&p_353->g_56,&p_353->g_56,&p_353->g_3,&p_353->g_56}}};
    int i, j, k;
    p_353->g_2 &= ((VECTOR(int32_t, 2))((-7L), 0x1D6C8400L)).hi;
    return l_55[1][0][0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_79(uint32_t  p_80, struct S6 * p_353)
{ /* block id: 19 */
    int8_t *l_92[2][8][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int i, j, k;
    return l_92[0][1][3];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[42];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 42; i++)
            l_comm_values[i] = 1;
    struct S6 c_354;
    struct S6* p_353 = &c_354;
    struct S6 c_355 = {
        0x1D1B9849L, // p_353->g_2
        (-1L), // p_353->g_3
        (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 0x38L), 0x38L), // p_353->g_22
        (void*)0, // p_353->g_53
        0x59AF2C67L, // p_353->g_56
        250UL, // p_353->g_66
        (void*)0, // p_353->g_71
        &p_353->g_71, // p_353->g_70
        {0x104CDE8BL,1UL,-8L,0x43015DB4C2A7322EL,0x46EC70922B85AE34L,1L,0x456AA7D8L,7UL,-1L,18446744073709551609UL}, // p_353->g_84
        {0xC884E0B590452CFDL,0xC884E0B590452CFDL,0xC884E0B590452CFDL,0xC884E0B590452CFDL,0xC884E0B590452CFDL,0xC884E0B590452CFDL,0xC884E0B590452CFDL}, // p_353->g_86
        4294967295UL, // p_353->g_109
        &p_353->g_71, // p_353->g_112
        (void*)0, // p_353->g_115
        (void*)0, // p_353->g_117
        {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}, // p_353->g_131
        {0x50L}, // p_353->g_138
        &p_353->g_138, // p_353->g_137
        &p_353->g_137, // p_353->g_139
        (VECTOR(uint64_t, 16))(0xF8107E6F1DCE19F1L, (VECTOR(uint64_t, 4))(0xF8107E6F1DCE19F1L, (VECTOR(uint64_t, 2))(0xF8107E6F1DCE19F1L, 18446744073709551609UL), 18446744073709551609UL), 18446744073709551609UL, 0xF8107E6F1DCE19F1L, 18446744073709551609UL, (VECTOR(uint64_t, 2))(0xF8107E6F1DCE19F1L, 18446744073709551609UL), (VECTOR(uint64_t, 2))(0xF8107E6F1DCE19F1L, 18446744073709551609UL), 0xF8107E6F1DCE19F1L, 18446744073709551609UL, 0xF8107E6F1DCE19F1L, 18446744073709551609UL), // p_353->g_187
        (VECTOR(int32_t, 4))(0x4B609298L, (VECTOR(int32_t, 2))(0x4B609298L, (-1L)), (-1L)), // p_353->g_201
        0x4222L, // p_353->g_205
        &p_353->g_71, // p_353->g_206
        (void*)0, // p_353->g_207
        (VECTOR(int8_t, 16))(0x6DL, (VECTOR(int8_t, 4))(0x6DL, (VECTOR(int8_t, 2))(0x6DL, 0x74L), 0x74L), 0x74L, 0x6DL, 0x74L, (VECTOR(int8_t, 2))(0x6DL, 0x74L), (VECTOR(int8_t, 2))(0x6DL, 0x74L), 0x6DL, 0x74L, 0x6DL, 0x74L), // p_353->g_210
        (VECTOR(int16_t, 16))(0x27DBL, (VECTOR(int16_t, 4))(0x27DBL, (VECTOR(int16_t, 2))(0x27DBL, (-8L)), (-8L)), (-8L), 0x27DBL, (-8L), (VECTOR(int16_t, 2))(0x27DBL, (-8L)), (VECTOR(int16_t, 2))(0x27DBL, (-8L)), 0x27DBL, (-8L), 0x27DBL, (-8L)), // p_353->g_220
        (void*)0, // p_353->g_224
        {{{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}}},{{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}}},{{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}}},{{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}}}}, // p_353->g_230
        (VECTOR(int64_t, 8))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L), // p_353->g_237
        4294967295UL, // p_353->g_263
        (void*)0, // p_353->g_264
        {{0x197CF1A5L,4UL,0x22L,0x58C443C5L,0x6D82L,0x9C450309L,1L,0UL,0UL},{0x197CF1A5L,4UL,0x22L,0x58C443C5L,0x6D82L,0x9C450309L,1L,0UL,0UL},{0x197CF1A5L,4UL,0x22L,0x58C443C5L,0x6D82L,0x9C450309L,1L,0UL,0UL},{0x197CF1A5L,4UL,0x22L,0x58C443C5L,0x6D82L,0x9C450309L,1L,0UL,0UL},{0x197CF1A5L,4UL,0x22L,0x58C443C5L,0x6D82L,0x9C450309L,1L,0UL,0UL},{0x197CF1A5L,4UL,0x22L,0x58C443C5L,0x6D82L,0x9C450309L,1L,0UL,0UL},{0x197CF1A5L,4UL,0x22L,0x58C443C5L,0x6D82L,0x9C450309L,1L,0UL,0UL},{0x197CF1A5L,4UL,0x22L,0x58C443C5L,0x6D82L,0x9C450309L,1L,0UL,0UL}}, // p_353->g_267
        &p_353->g_267[5], // p_353->g_266
        (void*)0, // p_353->g_270
        {{{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270}},{{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270}},{{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270}},{{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270}},{{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270}},{{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270}},{{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270}},{{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270},{&p_353->g_270,&p_353->g_270,(void*)0,&p_353->g_270}}}, // p_353->g_269
        {&p_353->g_270,&p_353->g_270,&p_353->g_270,&p_353->g_270,&p_353->g_270,&p_353->g_270,&p_353->g_270,&p_353->g_270,&p_353->g_270,&p_353->g_270}, // p_353->g_271
        {0}, // p_353->g_276
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x7E83D158L), 0x7E83D158L), 0x7E83D158L, 0L, 0x7E83D158L, (VECTOR(int32_t, 2))(0L, 0x7E83D158L), (VECTOR(int32_t, 2))(0L, 0x7E83D158L), 0L, 0x7E83D158L, 0L, 0x7E83D158L), // p_353->g_289
        (VECTOR(int32_t, 4))(0x31FD80F5L, (VECTOR(int32_t, 2))(0x31FD80F5L, 0x059C735FL), 0x059C735FL), // p_353->g_291
        (void*)0, // p_353->g_307
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x12E1E70DB3380C7EL), 0x12E1E70DB3380C7EL), 0x12E1E70DB3380C7EL, (-1L), 0x12E1E70DB3380C7EL), // p_353->g_312
        (VECTOR(int8_t, 16))(0x62L, (VECTOR(int8_t, 4))(0x62L, (VECTOR(int8_t, 2))(0x62L, 0x4CL), 0x4CL), 0x4CL, 0x62L, 0x4CL, (VECTOR(int8_t, 2))(0x62L, 0x4CL), (VECTOR(int8_t, 2))(0x62L, 0x4CL), 0x62L, 0x4CL, 0x62L, 0x4CL), // p_353->g_319
        (VECTOR(uint8_t, 16))(0x9EL, (VECTOR(uint8_t, 4))(0x9EL, (VECTOR(uint8_t, 2))(0x9EL, 0x23L), 0x23L), 0x23L, 0x9EL, 0x23L, (VECTOR(uint8_t, 2))(0x9EL, 0x23L), (VECTOR(uint8_t, 2))(0x9EL, 0x23L), 0x9EL, 0x23L, 0x9EL, 0x23L), // p_353->g_321
        (VECTOR(uint8_t, 2))(0xECL, 1UL), // p_353->g_334
        (VECTOR(int64_t, 2))((-1L), (-1L)), // p_353->g_341
        {0xD6A7E884L,3UL,0x6EC264D355204E42L}, // p_353->g_344
        {0L}, // p_353->g_352
        0, // p_353->v_collective
        sequence_input[get_global_id(0)], // p_353->global_0_offset
        sequence_input[get_global_id(1)], // p_353->global_1_offset
        sequence_input[get_global_id(2)], // p_353->global_2_offset
        sequence_input[get_local_id(0)], // p_353->local_0_offset
        sequence_input[get_local_id(1)], // p_353->local_1_offset
        sequence_input[get_local_id(2)], // p_353->local_2_offset
        sequence_input[get_group_id(0)], // p_353->group_0_offset
        sequence_input[get_group_id(1)], // p_353->group_1_offset
        sequence_input[get_group_id(2)], // p_353->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 42)), permutations[0][get_linear_local_id()])), // p_353->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_354 = c_355;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_353);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_353->g_2, "p_353->g_2", print_hash_value);
    transparent_crc(p_353->g_3, "p_353->g_3", print_hash_value);
    transparent_crc(p_353->g_22.x, "p_353->g_22.x", print_hash_value);
    transparent_crc(p_353->g_22.y, "p_353->g_22.y", print_hash_value);
    transparent_crc(p_353->g_22.z, "p_353->g_22.z", print_hash_value);
    transparent_crc(p_353->g_22.w, "p_353->g_22.w", print_hash_value);
    transparent_crc(p_353->g_56, "p_353->g_56", print_hash_value);
    transparent_crc(p_353->g_66, "p_353->g_66", print_hash_value);
    transparent_crc(p_353->g_84.f0, "p_353->g_84.f0", print_hash_value);
    transparent_crc(p_353->g_84.f1, "p_353->g_84.f1", print_hash_value);
    transparent_crc(p_353->g_84.f2, "p_353->g_84.f2", print_hash_value);
    transparent_crc(p_353->g_84.f3, "p_353->g_84.f3", print_hash_value);
    transparent_crc(p_353->g_84.f4, "p_353->g_84.f4", print_hash_value);
    transparent_crc(p_353->g_84.f5, "p_353->g_84.f5", print_hash_value);
    transparent_crc(p_353->g_84.f6, "p_353->g_84.f6", print_hash_value);
    transparent_crc(p_353->g_84.f7, "p_353->g_84.f7", print_hash_value);
    transparent_crc(p_353->g_84.f8, "p_353->g_84.f8", print_hash_value);
    transparent_crc(p_353->g_84.f9, "p_353->g_84.f9", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_353->g_86[i], "p_353->g_86[i]", print_hash_value);

    }
    transparent_crc(p_353->g_109, "p_353->g_109", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_353->g_131[i], "p_353->g_131[i]", print_hash_value);

    }
    transparent_crc(p_353->g_138.f0, "p_353->g_138.f0", print_hash_value);
    transparent_crc(p_353->g_187.s0, "p_353->g_187.s0", print_hash_value);
    transparent_crc(p_353->g_187.s1, "p_353->g_187.s1", print_hash_value);
    transparent_crc(p_353->g_187.s2, "p_353->g_187.s2", print_hash_value);
    transparent_crc(p_353->g_187.s3, "p_353->g_187.s3", print_hash_value);
    transparent_crc(p_353->g_187.s4, "p_353->g_187.s4", print_hash_value);
    transparent_crc(p_353->g_187.s5, "p_353->g_187.s5", print_hash_value);
    transparent_crc(p_353->g_187.s6, "p_353->g_187.s6", print_hash_value);
    transparent_crc(p_353->g_187.s7, "p_353->g_187.s7", print_hash_value);
    transparent_crc(p_353->g_187.s8, "p_353->g_187.s8", print_hash_value);
    transparent_crc(p_353->g_187.s9, "p_353->g_187.s9", print_hash_value);
    transparent_crc(p_353->g_187.sa, "p_353->g_187.sa", print_hash_value);
    transparent_crc(p_353->g_187.sb, "p_353->g_187.sb", print_hash_value);
    transparent_crc(p_353->g_187.sc, "p_353->g_187.sc", print_hash_value);
    transparent_crc(p_353->g_187.sd, "p_353->g_187.sd", print_hash_value);
    transparent_crc(p_353->g_187.se, "p_353->g_187.se", print_hash_value);
    transparent_crc(p_353->g_187.sf, "p_353->g_187.sf", print_hash_value);
    transparent_crc(p_353->g_201.x, "p_353->g_201.x", print_hash_value);
    transparent_crc(p_353->g_201.y, "p_353->g_201.y", print_hash_value);
    transparent_crc(p_353->g_201.z, "p_353->g_201.z", print_hash_value);
    transparent_crc(p_353->g_201.w, "p_353->g_201.w", print_hash_value);
    transparent_crc(p_353->g_205, "p_353->g_205", print_hash_value);
    transparent_crc(p_353->g_210.s0, "p_353->g_210.s0", print_hash_value);
    transparent_crc(p_353->g_210.s1, "p_353->g_210.s1", print_hash_value);
    transparent_crc(p_353->g_210.s2, "p_353->g_210.s2", print_hash_value);
    transparent_crc(p_353->g_210.s3, "p_353->g_210.s3", print_hash_value);
    transparent_crc(p_353->g_210.s4, "p_353->g_210.s4", print_hash_value);
    transparent_crc(p_353->g_210.s5, "p_353->g_210.s5", print_hash_value);
    transparent_crc(p_353->g_210.s6, "p_353->g_210.s6", print_hash_value);
    transparent_crc(p_353->g_210.s7, "p_353->g_210.s7", print_hash_value);
    transparent_crc(p_353->g_210.s8, "p_353->g_210.s8", print_hash_value);
    transparent_crc(p_353->g_210.s9, "p_353->g_210.s9", print_hash_value);
    transparent_crc(p_353->g_210.sa, "p_353->g_210.sa", print_hash_value);
    transparent_crc(p_353->g_210.sb, "p_353->g_210.sb", print_hash_value);
    transparent_crc(p_353->g_210.sc, "p_353->g_210.sc", print_hash_value);
    transparent_crc(p_353->g_210.sd, "p_353->g_210.sd", print_hash_value);
    transparent_crc(p_353->g_210.se, "p_353->g_210.se", print_hash_value);
    transparent_crc(p_353->g_210.sf, "p_353->g_210.sf", print_hash_value);
    transparent_crc(p_353->g_220.s0, "p_353->g_220.s0", print_hash_value);
    transparent_crc(p_353->g_220.s1, "p_353->g_220.s1", print_hash_value);
    transparent_crc(p_353->g_220.s2, "p_353->g_220.s2", print_hash_value);
    transparent_crc(p_353->g_220.s3, "p_353->g_220.s3", print_hash_value);
    transparent_crc(p_353->g_220.s4, "p_353->g_220.s4", print_hash_value);
    transparent_crc(p_353->g_220.s5, "p_353->g_220.s5", print_hash_value);
    transparent_crc(p_353->g_220.s6, "p_353->g_220.s6", print_hash_value);
    transparent_crc(p_353->g_220.s7, "p_353->g_220.s7", print_hash_value);
    transparent_crc(p_353->g_220.s8, "p_353->g_220.s8", print_hash_value);
    transparent_crc(p_353->g_220.s9, "p_353->g_220.s9", print_hash_value);
    transparent_crc(p_353->g_220.sa, "p_353->g_220.sa", print_hash_value);
    transparent_crc(p_353->g_220.sb, "p_353->g_220.sb", print_hash_value);
    transparent_crc(p_353->g_220.sc, "p_353->g_220.sc", print_hash_value);
    transparent_crc(p_353->g_220.sd, "p_353->g_220.sd", print_hash_value);
    transparent_crc(p_353->g_220.se, "p_353->g_220.se", print_hash_value);
    transparent_crc(p_353->g_220.sf, "p_353->g_220.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_353->g_230[i][j][k].f0, "p_353->g_230[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_353->g_237.s0, "p_353->g_237.s0", print_hash_value);
    transparent_crc(p_353->g_237.s1, "p_353->g_237.s1", print_hash_value);
    transparent_crc(p_353->g_237.s2, "p_353->g_237.s2", print_hash_value);
    transparent_crc(p_353->g_237.s3, "p_353->g_237.s3", print_hash_value);
    transparent_crc(p_353->g_237.s4, "p_353->g_237.s4", print_hash_value);
    transparent_crc(p_353->g_237.s5, "p_353->g_237.s5", print_hash_value);
    transparent_crc(p_353->g_237.s6, "p_353->g_237.s6", print_hash_value);
    transparent_crc(p_353->g_237.s7, "p_353->g_237.s7", print_hash_value);
    transparent_crc(p_353->g_263, "p_353->g_263", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_353->g_267[i].f0, "p_353->g_267[i].f0", print_hash_value);
        transparent_crc(p_353->g_267[i].f1, "p_353->g_267[i].f1", print_hash_value);
        transparent_crc(p_353->g_267[i].f2, "p_353->g_267[i].f2", print_hash_value);
        transparent_crc(p_353->g_267[i].f3, "p_353->g_267[i].f3", print_hash_value);
        transparent_crc(p_353->g_267[i].f4, "p_353->g_267[i].f4", print_hash_value);
        transparent_crc(p_353->g_267[i].f5, "p_353->g_267[i].f5", print_hash_value);
        transparent_crc(p_353->g_267[i].f6, "p_353->g_267[i].f6", print_hash_value);
        transparent_crc(p_353->g_267[i].f7, "p_353->g_267[i].f7", print_hash_value);
        transparent_crc(p_353->g_267[i].f8, "p_353->g_267[i].f8", print_hash_value);

    }
    transparent_crc(p_353->g_289.s0, "p_353->g_289.s0", print_hash_value);
    transparent_crc(p_353->g_289.s1, "p_353->g_289.s1", print_hash_value);
    transparent_crc(p_353->g_289.s2, "p_353->g_289.s2", print_hash_value);
    transparent_crc(p_353->g_289.s3, "p_353->g_289.s3", print_hash_value);
    transparent_crc(p_353->g_289.s4, "p_353->g_289.s4", print_hash_value);
    transparent_crc(p_353->g_289.s5, "p_353->g_289.s5", print_hash_value);
    transparent_crc(p_353->g_289.s6, "p_353->g_289.s6", print_hash_value);
    transparent_crc(p_353->g_289.s7, "p_353->g_289.s7", print_hash_value);
    transparent_crc(p_353->g_289.s8, "p_353->g_289.s8", print_hash_value);
    transparent_crc(p_353->g_289.s9, "p_353->g_289.s9", print_hash_value);
    transparent_crc(p_353->g_289.sa, "p_353->g_289.sa", print_hash_value);
    transparent_crc(p_353->g_289.sb, "p_353->g_289.sb", print_hash_value);
    transparent_crc(p_353->g_289.sc, "p_353->g_289.sc", print_hash_value);
    transparent_crc(p_353->g_289.sd, "p_353->g_289.sd", print_hash_value);
    transparent_crc(p_353->g_289.se, "p_353->g_289.se", print_hash_value);
    transparent_crc(p_353->g_289.sf, "p_353->g_289.sf", print_hash_value);
    transparent_crc(p_353->g_291.x, "p_353->g_291.x", print_hash_value);
    transparent_crc(p_353->g_291.y, "p_353->g_291.y", print_hash_value);
    transparent_crc(p_353->g_291.z, "p_353->g_291.z", print_hash_value);
    transparent_crc(p_353->g_291.w, "p_353->g_291.w", print_hash_value);
    transparent_crc(p_353->g_312.s0, "p_353->g_312.s0", print_hash_value);
    transparent_crc(p_353->g_312.s1, "p_353->g_312.s1", print_hash_value);
    transparent_crc(p_353->g_312.s2, "p_353->g_312.s2", print_hash_value);
    transparent_crc(p_353->g_312.s3, "p_353->g_312.s3", print_hash_value);
    transparent_crc(p_353->g_312.s4, "p_353->g_312.s4", print_hash_value);
    transparent_crc(p_353->g_312.s5, "p_353->g_312.s5", print_hash_value);
    transparent_crc(p_353->g_312.s6, "p_353->g_312.s6", print_hash_value);
    transparent_crc(p_353->g_312.s7, "p_353->g_312.s7", print_hash_value);
    transparent_crc(p_353->g_319.s0, "p_353->g_319.s0", print_hash_value);
    transparent_crc(p_353->g_319.s1, "p_353->g_319.s1", print_hash_value);
    transparent_crc(p_353->g_319.s2, "p_353->g_319.s2", print_hash_value);
    transparent_crc(p_353->g_319.s3, "p_353->g_319.s3", print_hash_value);
    transparent_crc(p_353->g_319.s4, "p_353->g_319.s4", print_hash_value);
    transparent_crc(p_353->g_319.s5, "p_353->g_319.s5", print_hash_value);
    transparent_crc(p_353->g_319.s6, "p_353->g_319.s6", print_hash_value);
    transparent_crc(p_353->g_319.s7, "p_353->g_319.s7", print_hash_value);
    transparent_crc(p_353->g_319.s8, "p_353->g_319.s8", print_hash_value);
    transparent_crc(p_353->g_319.s9, "p_353->g_319.s9", print_hash_value);
    transparent_crc(p_353->g_319.sa, "p_353->g_319.sa", print_hash_value);
    transparent_crc(p_353->g_319.sb, "p_353->g_319.sb", print_hash_value);
    transparent_crc(p_353->g_319.sc, "p_353->g_319.sc", print_hash_value);
    transparent_crc(p_353->g_319.sd, "p_353->g_319.sd", print_hash_value);
    transparent_crc(p_353->g_319.se, "p_353->g_319.se", print_hash_value);
    transparent_crc(p_353->g_319.sf, "p_353->g_319.sf", print_hash_value);
    transparent_crc(p_353->g_321.s0, "p_353->g_321.s0", print_hash_value);
    transparent_crc(p_353->g_321.s1, "p_353->g_321.s1", print_hash_value);
    transparent_crc(p_353->g_321.s2, "p_353->g_321.s2", print_hash_value);
    transparent_crc(p_353->g_321.s3, "p_353->g_321.s3", print_hash_value);
    transparent_crc(p_353->g_321.s4, "p_353->g_321.s4", print_hash_value);
    transparent_crc(p_353->g_321.s5, "p_353->g_321.s5", print_hash_value);
    transparent_crc(p_353->g_321.s6, "p_353->g_321.s6", print_hash_value);
    transparent_crc(p_353->g_321.s7, "p_353->g_321.s7", print_hash_value);
    transparent_crc(p_353->g_321.s8, "p_353->g_321.s8", print_hash_value);
    transparent_crc(p_353->g_321.s9, "p_353->g_321.s9", print_hash_value);
    transparent_crc(p_353->g_321.sa, "p_353->g_321.sa", print_hash_value);
    transparent_crc(p_353->g_321.sb, "p_353->g_321.sb", print_hash_value);
    transparent_crc(p_353->g_321.sc, "p_353->g_321.sc", print_hash_value);
    transparent_crc(p_353->g_321.sd, "p_353->g_321.sd", print_hash_value);
    transparent_crc(p_353->g_321.se, "p_353->g_321.se", print_hash_value);
    transparent_crc(p_353->g_321.sf, "p_353->g_321.sf", print_hash_value);
    transparent_crc(p_353->g_334.x, "p_353->g_334.x", print_hash_value);
    transparent_crc(p_353->g_334.y, "p_353->g_334.y", print_hash_value);
    transparent_crc(p_353->g_341.x, "p_353->g_341.x", print_hash_value);
    transparent_crc(p_353->g_341.y, "p_353->g_341.y", print_hash_value);
    transparent_crc(p_353->g_344.f0, "p_353->g_344.f0", print_hash_value);
    transparent_crc(p_353->g_344.f1, "p_353->g_344.f1", print_hash_value);
    transparent_crc(p_353->g_344.f2, "p_353->g_344.f2", print_hash_value);
    transparent_crc(p_353->g_352.f0, "p_353->g_352.f0", print_hash_value);
    transparent_crc(p_353->v_collective, "p_353->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 30; i++)
            transparent_crc(p_353->g_special_values[i + 30 * get_linear_group_id()], "p_353->g_special_values[i + 30 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_353->l_comm_values[get_linear_local_id()], "p_353->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_353->g_comm_values[get_linear_group_id() * 42 + get_linear_local_id()], "p_353->g_comm_values[get_linear_group_id() * 42 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
