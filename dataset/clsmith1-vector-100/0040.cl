// ---fake_divergence -g 75,17,1 -l 25,1,1
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


// Seed: 40

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

union U1 {
   volatile int8_t * volatile  f0;
   int64_t  f1;
   volatile int8_t  f2;
   uint64_t  f3;
};

struct S2 {
    int32_t g_2;
    int32_t g_6;
    volatile VECTOR(uint16_t, 2) g_20;
    VECTOR(uint16_t, 16) g_21;
    VECTOR(uint32_t, 4) g_22;
    volatile uint8_t g_30[10][8];
    int8_t g_32;
    VECTOR(int32_t, 16) g_35;
    VECTOR(int32_t, 16) g_66;
    VECTOR(int32_t, 2) g_68;
    VECTOR(int32_t, 4) g_71;
    VECTOR(int32_t, 4) g_72;
    uint8_t g_111;
    VECTOR(uint8_t, 16) g_119;
    VECTOR(uint8_t, 4) g_120;
    VECTOR(int64_t, 4) g_129;
    volatile union U0 g_133;
    volatile union U0 *g_132;
    volatile int32_t g_141;
    volatile int32_t *g_140;
    VECTOR(uint8_t, 4) g_175;
    int8_t g_186[6];
    int32_t *g_202[5];
    uint32_t g_237;
    union U0 g_248;
    union U1 g_285;
    uint32_t g_287;
    int8_t g_289;
    int8_t *g_288;
    int16_t g_290;
    int32_t g_294;
    int32_t g_296;
    VECTOR(uint16_t, 16) g_326;
    VECTOR(uint16_t, 2) g_327;
    VECTOR(int32_t, 8) g_338;
    volatile VECTOR(int32_t, 8) g_339;
    VECTOR(uint32_t, 16) g_340;
    volatile uint16_t * volatile g_341[1][8];
    VECTOR(int32_t, 16) g_344;
    VECTOR(int16_t, 16) g_365;
    int64_t g_380[2][10][8];
    volatile VECTOR(uint8_t, 2) g_389;
    volatile VECTOR(uint64_t, 16) g_397;
    uint64_t g_422;
    int32_t ** volatile g_426;
    union U1 *g_431;
    union U1 ** volatile g_430;
    union U1 g_435;
    VECTOR(uint16_t, 2) g_439;
    VECTOR(uint16_t, 16) g_441;
    VECTOR(uint16_t, 2) g_442;
    VECTOR(int32_t, 2) g_444;
    VECTOR(int32_t, 8) g_445;
    int32_t ** volatile g_454;
    int32_t ** volatile g_455;
    uint8_t g_475;
    volatile VECTOR(uint16_t, 2) g_483;
    volatile VECTOR(uint16_t, 8) g_484;
    volatile uint32_t g_496;
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
int16_t  func_1(struct S2 * p_499);
int32_t  func_11(uint8_t  p_12, int32_t * p_13, uint64_t  p_14, int8_t * p_15, int32_t  p_16, struct S2 * p_499);
uint32_t  func_23(int32_t * p_24, int8_t * p_25, struct S2 * p_499);
int8_t * func_26(uint16_t  p_27, uint64_t  p_28, int8_t * p_29, struct S2 * p_499);
uint8_t  func_39(uint64_t  p_40, int8_t * p_41, uint32_t  p_42, struct S2 * p_499);
uint8_t  func_45(uint32_t  p_46, int8_t * p_47, int32_t * p_48, struct S2 * p_499);
union U1  func_49(int32_t * p_50, uint32_t  p_51, int16_t  p_52, int32_t * p_53, int64_t  p_54, struct S2 * p_499);
uint32_t  func_55(int8_t * p_56, uint64_t  p_57, int32_t  p_58, int32_t  p_59, struct S2 * p_499);
int8_t * func_60(int8_t * p_61, struct S2 * p_499);
uint16_t  func_62(int64_t  p_63, struct S2 * p_499);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_499->g_2 p_499->g_6 p_499->g_289 p_499->g_35 p_499->g_119 p_499->g_341 p_499->g_186 p_499->g_296 p_499->g_380 p_499->g_71 p_499->g_21 p_499->g_287 p_499->g_288 p_499->g_426 p_499->g_430 p_499->g_435 p_499->g_68 p_499->g_455 p_499->g_340 p_499->g_483 p_499->g_484 p_499->g_141 p_499->g_431 p_499->g_285 p_499->g_422 p_499->g_496 p_499->g_22 p_499->g_441
 * writes: p_499->g_2 p_499->g_290 p_499->g_6 p_499->g_202 p_499->g_119 p_499->g_175 p_499->g_327 p_499->g_380 p_499->g_285.f3 p_499->g_422 p_499->g_365 p_499->g_431 p_499->g_296 p_499->g_435.f3
 */
int16_t  func_1(struct S2 * p_499)
{ /* block id: 4 */
    uint32_t l_8[6][3] = {{0UL,0x714FFD81L,0x24B54114L},{0UL,0x714FFD81L,0x24B54114L},{0UL,0x714FFD81L,0x24B54114L},{0UL,0x714FFD81L,0x24B54114L},{0UL,0x714FFD81L,0x24B54114L},{0UL,0x714FFD81L,0x24B54114L}};
    int8_t *l_31 = &p_499->g_32;
    int32_t l_343 = 8L;
    VECTOR(int32_t, 8) l_408 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x000E9CAAL), 0x000E9CAAL), 0x000E9CAAL, (-4L), 0x000E9CAAL);
    int32_t *l_453[1];
    VECTOR(uint16_t, 2) l_481 = (VECTOR(uint16_t, 2))(7UL, 65532UL);
    VECTOR(uint16_t, 16) l_482 = (VECTOR(uint16_t, 16))(0x7F3EL, (VECTOR(uint16_t, 4))(0x7F3EL, (VECTOR(uint16_t, 2))(0x7F3EL, 0UL), 0UL), 0UL, 0x7F3EL, 0UL, (VECTOR(uint16_t, 2))(0x7F3EL, 0UL), (VECTOR(uint16_t, 2))(0x7F3EL, 0UL), 0x7F3EL, 0UL, 0x7F3EL, 0UL);
    VECTOR(uint16_t, 16) l_485 = (VECTOR(uint16_t, 16))(0x0C8CL, (VECTOR(uint16_t, 4))(0x0C8CL, (VECTOR(uint16_t, 2))(0x0C8CL, 65531UL), 65531UL), 65531UL, 0x0C8CL, 65531UL, (VECTOR(uint16_t, 2))(0x0C8CL, 65531UL), (VECTOR(uint16_t, 2))(0x0C8CL, 65531UL), 0x0C8CL, 65531UL, 0x0C8CL, 65531UL);
    int16_t l_486 = (-1L);
    VECTOR(uint16_t, 2) l_487 = (VECTOR(uint16_t, 2))(65535UL, 0xE77AL);
    VECTOR(int64_t, 2) l_488 = (VECTOR(int64_t, 2))((-1L), 0x17996BC1231A33DEL);
    VECTOR(int64_t, 16) l_489 = (VECTOR(int64_t, 16))(0x144906D70F24B66CL, (VECTOR(int64_t, 4))(0x144906D70F24B66CL, (VECTOR(int64_t, 2))(0x144906D70F24B66CL, 0x44B3D836D237B978L), 0x44B3D836D237B978L), 0x44B3D836D237B978L, 0x144906D70F24B66CL, 0x44B3D836D237B978L, (VECTOR(int64_t, 2))(0x144906D70F24B66CL, 0x44B3D836D237B978L), (VECTOR(int64_t, 2))(0x144906D70F24B66CL, 0x44B3D836D237B978L), 0x144906D70F24B66CL, 0x44B3D836D237B978L, 0x144906D70F24B66CL, 0x44B3D836D237B978L);
    VECTOR(int64_t, 8) l_490 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x686848ACCC10CCB0L), 0x686848ACCC10CCB0L), 0x686848ACCC10CCB0L, 1L, 0x686848ACCC10CCB0L);
    union U1 **l_493[2][2] = {{&p_499->g_431,&p_499->g_431},{&p_499->g_431,&p_499->g_431}};
    uint64_t *l_497 = &p_499->g_435.f3;
    int8_t l_498 = 0x09L;
    int i, j;
    for (i = 0; i < 1; i++)
        l_453[i] = (void*)0;
    for (p_499->g_2 = (-14); (p_499->g_2 == 21); p_499->g_2 = safe_add_func_int64_t_s_s(p_499->g_2, 8))
    { /* block id: 7 */
        int32_t *l_5 = &p_499->g_6;
        int32_t *l_7[3][2][6] = {{{&p_499->g_2,&p_499->g_2,(void*)0,&p_499->g_2,(void*)0,&p_499->g_2},{&p_499->g_2,&p_499->g_2,(void*)0,&p_499->g_2,(void*)0,&p_499->g_2}},{{&p_499->g_2,&p_499->g_2,(void*)0,&p_499->g_2,(void*)0,&p_499->g_2},{&p_499->g_2,&p_499->g_2,(void*)0,&p_499->g_2,(void*)0,&p_499->g_2}},{{&p_499->g_2,&p_499->g_2,(void*)0,&p_499->g_2,(void*)0,&p_499->g_2},{&p_499->g_2,&p_499->g_2,(void*)0,&p_499->g_2,(void*)0,&p_499->g_2}}};
        VECTOR(uint16_t, 8) l_19 = (VECTOR(uint16_t, 8))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0xE3D4L), 0xE3D4L), 0xE3D4L, 5UL, 0xE3D4L);
        int8_t *l_307 = &p_499->g_289;
        VECTOR(int32_t, 16) l_350 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-10L)), (-10L)), (-10L), (-1L), (-10L), (VECTOR(int32_t, 2))((-1L), (-10L)), (VECTOR(int32_t, 2))((-1L), (-10L)), (-1L), (-10L), (-1L), (-10L));
        int64_t **l_351 = (void*)0;
        uint32_t l_417 = 0xB47BB124L;
        VECTOR(int64_t, 16) l_466 = (VECTOR(int64_t, 16))(7L, (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, (-8L)), (-8L)), (-8L), 7L, (-8L), (VECTOR(int64_t, 2))(7L, (-8L)), (VECTOR(int64_t, 2))(7L, (-8L)), 7L, (-8L), 7L, (-8L));
        int i, j, k;
        l_8[1][1]--;
        if (func_11(p_499->g_2, l_5, (safe_sub_func_int64_t_s_s((p_499->g_6 || p_499->g_6), (p_499->g_6 || ((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 2))(0x5900B088L, 4294967295UL)).xyyx, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 16))(l_19.s7526426324463021)).s1721, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_499->g_20.yyxy)), (*l_5), 0x161EL, 0UL, 65535UL)).odd))).wzzwzwzz, ((VECTOR(uint16_t, 4))(p_499->g_21.s7c8a)).wzzwwyww))).s74)).yyyy, ((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(p_499->g_22.zz)))).xxyy))), (uint32_t)func_23(&p_499->g_6, func_26(((2L != ((p_499->g_6 ^ p_499->g_21.se) < p_499->g_30[2][1])) != 0x53CCL), p_499->g_22.w, l_31, p_499), p_499))))))).w))), l_307, p_499->g_289, p_499))
        { /* block id: 119 */
            VECTOR(uint32_t, 4) l_337 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x77F682C8L), 0x77F682C8L);
            int32_t l_381[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            uint64_t l_409[4][10] = {{0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L},{0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L},{0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L},{0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L,0x2EB57416A1671531L,0xE297A11BA649B206L,0xE297A11BA649B206L}};
            int i, j;
            for (p_499->g_290 = 0; (p_499->g_290 <= (-22)); --p_499->g_290)
            { /* block id: 122 */
                int8_t *l_334 = &p_499->g_186[1];
                int32_t l_342 = 0x08FF482BL;
                uint16_t l_382 = 0x6A4DL;
                l_343 = ((*l_5) |= (((safe_div_func_uint32_t_u_u(((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0x0251L, 0x3BA9L)), 65535UL, 0xE846L, 65534UL, ((VECTOR(uint16_t, 2))(p_499->g_326.s41)), ((VECTOR(uint16_t, 2))(p_499->g_327.yy)).lo, (safe_lshift_func_uint8_t_u_u(((3UL >= (((safe_rshift_func_int8_t_s_s((l_334 == &p_499->g_289), 3)) <= 0x590B8538L) <= l_8[1][1])) ^ (safe_mod_func_uint16_t_u_u(((void*)0 == &p_499->g_202[4]), ((l_8[1][0] > ((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_337.zy)).yyyxyxxxyyxxxyyx)).odd, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(int32_t, 16))(p_499->g_338.s1341766466336413)).s99ce, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(p_499->g_339.s41127614)).lo))))))).yzxzyzxx)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(3UL, 4294967295UL)).xxxxyyxy))))).s2460374447637652)).s50b9, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 4))(p_499->g_340.sf41f)).yyzxzyww, ((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 4))((p_499->g_22.z = ((p_499->g_341[0][1] != (void*)0) <= 0x7BL)), ((VECTOR(uint32_t, 2))(0xF1A4E1B7L)), 0x610D1F65L))))).wwywxxzx))))).s66)).yxxy))))).z) && GROUP_DIVERGE(2, 1))))), l_342)), 0x9E2CL, ((VECTOR(uint16_t, 2))(0x3297L)), ((VECTOR(uint16_t, 2))(0x394EL)), 65530UL, 5UL)).sfbba)).x == l_342) , 0xC4DD5E1CL), 0x4292EECCL)) | p_499->g_35.s2) , l_8[1][1]));
                if ((l_342 , ((VECTOR(int32_t, 8))(p_499->g_344.s5d15d4a3)).s3))
                { /* block id: 126 */
                    int32_t **l_345 = &p_499->g_202[4];
                    uint16_t *l_357 = (void*)0;
                    (*l_345) = &p_499->g_294;
                    for (l_342 = 0; (l_342 < 10); l_342 = safe_add_func_int32_t_s_s(l_342, 4))
                    { /* block id: 130 */
                        int64_t ***l_352 = &l_351;
                        uint8_t *l_358[6];
                        uint32_t *l_359 = (void*)0;
                        uint32_t *l_360[1];
                        VECTOR(uint32_t, 4) l_368 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL);
                        int8_t **l_369 = &l_334;
                        int8_t **l_370 = (void*)0;
                        int8_t **l_371 = (void*)0;
                        int8_t **l_372 = &p_499->g_288;
                        int32_t l_373 = 4L;
                        uint16_t *l_374 = (void*)0;
                        uint16_t *l_375 = (void*)0;
                        uint16_t *l_376[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int64_t *l_377 = &p_499->g_285.f1;
                        int64_t *l_378 = &p_499->g_285.f1;
                        int64_t *l_379[5][7][7] = {{{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]}},{{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]}},{{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]}},{{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]}},{{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]},{(void*)0,&p_499->g_380[1][7][0],&p_499->g_380[0][3][3],(void*)0,&p_499->g_380[0][2][2],&p_499->g_380[0][3][3],&p_499->g_380[0][3][3]}}};
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_358[i] = &p_499->g_111;
                        for (i = 0; i < 1; i++)
                            l_360[i] = &p_499->g_287;
                        (*l_5) = (safe_mul_func_uint16_t_u_u((!l_337.x), (((VECTOR(int32_t, 8))(l_350.s5fa71856)).s4 > 0x2284AD1BL)));
                        (*l_352) = l_351;
                        l_381[4] &= ((p_499->g_380[0][6][4] &= (((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0UL, 1UL)))).hi , (0x3AL > ((((p_499->g_327.x = (safe_mod_func_uint32_t_u_u(((((((((*l_5) < (safe_mod_func_uint8_t_u_u(((l_357 != ((!((p_499->g_175.y = (p_499->g_119.se &= l_8[3][1])) < ((VECTOR(uint8_t, 16))(250UL, ((p_499->g_22.z = GROUP_DIVERGE(2, 1)) < (safe_mul_func_int8_t_s_s((p_499->g_32 = (safe_mul_func_int16_t_s_s(((l_343 , ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(p_499->g_365.se5669a18)).s11)))).odd) < (safe_rshift_func_uint8_t_u_s(p_499->g_340.s6, ((((VECTOR(uint32_t, 8))(l_368.wzywzzwz)).s4 > (l_373 = (((*l_372) = ((*l_369) = func_60(func_60(l_31, p_499), p_499))) != (void*)0))) >= 18446744073709551615UL)))), 0x0162L))), (*l_5)))), ((VECTOR(uint8_t, 4))(0xF6L)), ((VECTOR(uint8_t, 8))(5UL)), 255UL, 0x77L)).s3)) , p_499->g_341[0][5])) ^ 0x37L), p_499->g_289))) ^ p_499->g_186[1]) , p_499->g_186[5]) ^ l_368.z) , GROUP_DIVERGE(0, 1)) , p_499->g_296) , 4294967295UL), l_342))) && FAKE_DIVERGE(p_499->local_1_offset, get_local_id(1), 10)) & l_368.z) || l_8[2][1])))) , l_368.w);
                    }
                    if (l_382)
                        continue;
                }
                else
                { /* block id: 145 */
                    int8_t l_390[10][5][5] = {{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}},{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}},{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}},{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}},{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}},{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}},{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}},{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}},{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}},{{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L},{0x13L,0x1CL,0x56L,0x3FL,7L}}};
                    uint8_t *l_398 = (void*)0;
                    uint8_t *l_399[3][9][8] = {{{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_499->g_111,&p_499->g_111,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                    int32_t l_400 = (-1L);
                    int32_t l_401 = 2L;
                    int32_t l_402 = (-1L);
                    uint32_t *l_405 = &l_8[5][0];
                    int i, j, k;
                    l_381[0] = ((safe_lshift_func_int16_t_s_u(l_381[6], 12)) == ((FAKE_DIVERGE(p_499->local_0_offset, get_local_id(0), 10) >= (safe_div_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 4))(p_499->g_389.xxyy)).lo, ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 4))(((p_499->g_129.z , ((l_390[8][3][4] == ((*l_5) = (safe_sub_func_int16_t_s_s((l_337.w | ((safe_mul_func_int8_t_s_s((safe_div_func_uint64_t_u_u(((*l_5) , p_499->g_71.z), ((VECTOR(uint64_t, 2))(p_499->g_397.se1)).odd)), (++p_499->g_111))) != ((*l_405) = p_499->g_21.s7))), 0x6B8DL)))) <= l_390[6][2][4])) < l_342), ((VECTOR(uint8_t, 2))(0UL)), 249UL)), ((VECTOR(uint8_t, 4))(0UL))))).hi))))).lo >= p_499->g_71.w) < FAKE_DIVERGE(p_499->group_0_offset, get_group_id(0), 10)), p_499->g_21.s5)), p_499->g_287))) > (-10L)));
                }
            }
            for (l_343 = 7; (l_343 > (-28)); l_343 = safe_sub_func_uint64_t_u_u(l_343, 8))
            { /* block id: 154 */
                l_409[0][6]++;
            }
        }
        else
        { /* block id: 157 */
            int32_t l_412 = 0L;
            uint64_t *l_420 = &p_499->g_285.f3;
            uint64_t *l_421[6][7] = {{&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422},{&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422},{&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422},{&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422},{&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422},{&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422,&p_499->g_422}};
            VECTOR(uint16_t, 8) l_423 = (VECTOR(uint16_t, 8))(0x4229L, (VECTOR(uint16_t, 4))(0x4229L, (VECTOR(uint16_t, 2))(0x4229L, 0x3790L), 0x3790L), 0x3790L, 0x4229L, 0x3790L);
            int32_t l_436 = 0x3DCBAC6DL;
            VECTOR(uint16_t, 16) l_440 = (VECTOR(uint16_t, 16))(0x1C80L, (VECTOR(uint16_t, 4))(0x1C80L, (VECTOR(uint16_t, 2))(0x1C80L, 1UL), 1UL), 1UL, 0x1C80L, 1UL, (VECTOR(uint16_t, 2))(0x1C80L, 1UL), (VECTOR(uint16_t, 2))(0x1C80L, 1UL), 0x1C80L, 1UL, 0x1C80L, 1UL);
            int32_t l_450 = 0x181B4B69L;
            int i, j;
            if (l_412)
                break;
            if (((safe_mod_func_uint16_t_u_u(((safe_sub_func_uint8_t_u_u((p_499->g_2 ^ l_417), l_412)) && (safe_mul_func_int8_t_s_s((((p_499->g_422 = ((*l_5) & (((*l_420) = FAKE_DIVERGE(p_499->local_2_offset, get_local_id(2), 10)) , ((*l_420) = 1UL)))) , p_499->g_35.sb) != ((((VECTOR(uint16_t, 8))(l_423.s60134022)).s3 <= (p_499->g_365.se = (0x4FFFL || 0L))) <= ((l_423.s2 > (*p_499->g_288)) && 18446744073709551615UL))), 1L))), 0x3F02L)) || 0x9D47L))
            { /* block id: 163 */
                uint16_t l_427 = 0x44DEL;
                VECTOR(int32_t, 4) l_428 = (VECTOR(int32_t, 4))(0x475B2411L, (VECTOR(int32_t, 2))(0x475B2411L, 0x5751CA85L), 0x5751CA85L);
                int i;
                for (p_499->g_6 = (-25); (p_499->g_6 <= (-9)); ++p_499->g_6)
                { /* block id: 166 */
                    union U1 *l_429 = &p_499->g_285;
                    int32_t l_432 = 8L;
                    (*p_499->g_426) = &p_499->g_294;
                    l_428.w ^= l_427;
                    (*p_499->g_430) = l_429;
                    if (l_432)
                        break;
                }
            }
            else
            { /* block id: 172 */
                uint16_t l_443 = 0xD26AL;
                l_450 = (safe_lshift_func_uint16_t_u_s((p_499->g_435 , l_436), ((safe_lshift_func_uint16_t_u_u((*l_5), ((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 2))(5UL, 65535UL)).xyyyxyyyyyyyxyyy, ((VECTOR(uint16_t, 16))(65526UL, 0xFD45L, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(p_499->g_439.yxyx)).lo, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x0319L, 8UL)), 0x3388L, 0x1086L, ((VECTOR(uint16_t, 4))(65535UL, 65532UL, 0x2EADL, 1UL)))).s71))))).yyyyxxyxyyyxxyyy)).s8, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_440.s02b4d48066eeebb1)).s16ca)), ((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(p_499->g_441.sa709dbc24ca3521b)).s63)).yyxx, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_499->g_442.yxyx)), ((l_440.sc != (((p_499->g_66.s7 != l_443) | (((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_499->g_444.yxxyyyxxyyxyxyxx)))).sbc36, ((VECTOR(int32_t, 4))(0x53ADA38DL, ((VECTOR(int32_t, 2))((-1L), 2L)), (-3L)))))).even, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(p_499->g_445.s06552035)).lo))).xzwwzxwz)).s40))).even > 0xE17FB814L)) >= 0x52021BF6022152B6L)) || (safe_sub_func_int32_t_s_s((safe_rshift_func_int8_t_s_u((&p_499->g_431 != (void*)0), 5)), 0x30AEC8BBL))), ((VECTOR(uint16_t, 2))(7UL)), 65535UL)))).s7065545022442766, ((VECTOR(uint16_t, 16))(65528UL))))).sc7)).xyyx, ((VECTOR(uint16_t, 4))(65531UL))))).wxyxzyzyyxxxwzyy, ((VECTOR(uint16_t, 16))(0x3B03L))))).s53)).xxyy))), ((VECTOR(uint16_t, 2))(7UL)), 0x4F14L, 65535UL, 0xEE14L))))).s5)) < GROUP_DIVERGE(2, 1))));
                return p_499->g_68.y;
            }
        }
        for (p_499->g_296 = 13; (p_499->g_296 <= 25); ++p_499->g_296)
        { /* block id: 179 */
            int16_t l_460 = 0x6651L;
            VECTOR(int8_t, 16) l_461 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int8_t, 2))(1L, (-1L)), (VECTOR(int8_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
            int64_t *l_469 = (void*)0;
            int64_t *l_470 = (void*)0;
            int64_t *l_471 = (void*)0;
            int64_t *l_472 = (void*)0;
            int64_t *l_473 = (void*)0;
            int64_t *l_474 = (void*)0;
            int32_t **l_476 = &l_453[0];
            int i;
            (*p_499->g_455) = l_453[0];
            (*l_5) = (safe_sub_func_int64_t_s_s(((((safe_rshift_func_uint16_t_u_s((l_460 | p_499->g_186[1]), 9)) && ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_461.se5)).xyyxxxxx)).s2) < l_461.s9) < (safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u(65532UL, ((9UL & p_499->g_71.z) || ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_466.sadcd47ba)), ((VECTOR(int64_t, 4))(((safe_sub_func_int64_t_s_s(((void*)0 != &p_499->g_132), ((p_499->g_475 &= (p_499->g_129.z &= (0x5250L <= p_499->g_120.w))) && p_499->g_22.w))) && p_499->g_338.s0), (*l_5), 0x05A883EC8D5C5474L, 0x7F2A28210E46619DL)), (*l_5), p_499->g_20.y, 0x365AE4756166D079L, 1L)).even, ((VECTOR(int64_t, 8))((-1L)))))).s6245745231512012)).s0))), p_499->g_340.s5))), l_460));
            (*l_476) = &l_343;
        }
    }
    l_498 = (((-1L) & (safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 8))(l_481.yyxxxxyx)), ((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 8))(l_482.s390ad78b))))).even, ((VECTOR(uint16_t, 4))(p_499->g_483.yyyy)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(p_499->g_484.s42737504)).s4716461630613376)).sb5d5))).wzwxwxww, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(65533UL, 65527UL)).xyyxxyxx))))), ((VECTOR(uint16_t, 16))(l_485.s4dfb78801cd48bdf)).lo))).hi, ((VECTOR(uint16_t, 4))(l_486, ((VECTOR(uint16_t, 2))(0xF3DAL, 0x7387L)), 0xB560L))))).xxxzxzywyzzyzywy, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_487.yy)))).yxxyxyxxyxyyyxyx))))).s1, 2)), ((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(l_488.yxyxxyyy)).s54, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(l_489.sf4)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(p_499->g_141, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0L, 1L)).xxxxxyyx)).hi)), ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(l_490.s66601247)).lo)), (int64_t)(safe_div_func_uint16_t_u_u((&p_499->g_431 != l_493[0][1]), (safe_sub_func_int16_t_s_s((254UL >= ((((*l_497) = ((((*p_499->g_431) , p_499->g_422) , ((~p_499->g_496) | p_499->g_68.y)) && 65535UL)) ^ 0x26FBA4AF07C3E2A0L) <= p_499->g_22.z)), p_499->g_21.s1))))))).lo, ((VECTOR(int64_t, 2))((-1L)))))), 0x320333AD958023BEL)).odd)).even))).yxyyyyyx)).s23, ((VECTOR(int64_t, 2))((-7L)))))).yyxy, ((VECTOR(int64_t, 4))(3L))))), (-1L), 0L, 0x0CDF987A8E5D40CAL)).s1, 18446744073709551615UL))) ^ p_499->g_441.sc);
    return p_499->g_68.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_499->g_21 p_499->g_6 p_499->g_285 p_499->g_288 p_499->g_289 p_499->g_72
 * writes: p_499->g_6
 */
int32_t  func_11(uint8_t  p_12, int32_t * p_13, uint64_t  p_14, int8_t * p_15, int32_t  p_16, struct S2 * p_499)
{ /* block id: 114 */
    VECTOR(int16_t, 8) l_308 = (VECTOR(int16_t, 8))(0x3F0AL, (VECTOR(int16_t, 4))(0x3F0AL, (VECTOR(int16_t, 2))(0x3F0AL, 0x02E7L), 0x02E7L), 0x02E7L, 0x3F0AL, 0x02E7L);
    VECTOR(int16_t, 2) l_309 = (VECTOR(int16_t, 2))((-1L), (-7L));
    uint32_t *l_312 = &p_499->g_287;
    int64_t *l_317[4][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t l_318 = 0x5A75L;
    int8_t l_321 = 1L;
    int i, j;
    p_16 = ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 2))(l_308.s76)).yyyyxxxxyyxxyyyy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_309.xx)), 1L, 0x4132L)).zyxzyxxxwwzwywwx))).sa0)), 0x477AL, (safe_sub_func_int8_t_s_s(((l_312 != ((p_499->g_21.s2 >= (((safe_rshift_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((+4294967293UL), (((l_318 = 4L) ^ (l_309.x <= (((*p_13) = (*p_13)) | ((l_321 || (l_309.x <= (p_499->g_285 , 0UL))) < 0L)))) && 0x3263864AL))), (*p_499->g_288))) && p_499->g_72.y) < p_14)) , &p_499->g_287)) == l_309.x), l_309.y)), ((VECTOR(int16_t, 4))(0x4A38L)))).s0535474144714116, ((VECTOR(uint16_t, 16))(3UL))))).s9;
    return l_309.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_499->g_296 p_499->g_6 p_499->g_248.f0
 * writes: p_499->g_296
 */
uint32_t  func_23(int32_t * p_24, int8_t * p_25, struct S2 * p_499)
{ /* block id: 106 */
    uint8_t l_306 = 0x5AL;
    for (p_499->g_296 = 5; (p_499->g_296 != 13); p_499->g_296++)
    { /* block id: 109 */
        if ((*p_24))
            break;
        if (l_306)
            continue;
    }
    return p_499->g_248.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_499->g_35 p_499->g_30 p_499->g_66 p_499->g_68 p_499->g_71 p_499->g_72 p_499->g_6 p_499->g_21 p_499->g_2 p_499->g_111 p_499->g_119 p_499->g_120 p_499->g_22 p_499->g_129 p_499->g_32 p_499->g_132 p_499->g_175 p_499->g_285 p_499->g_287 p_499->g_288 p_499->g_290 p_499->g_289 p_499->g_294 p_499->g_296
 * writes: p_499->g_32 p_499->g_35 p_499->g_111 p_499->g_66 p_499->g_68 p_499->g_140 p_499->g_186 p_499->g_202 p_499->g_237 p_499->g_287 p_499->g_290 p_499->g_285.f3 p_499->g_294 p_499->g_296
 */
int8_t * func_26(uint16_t  p_27, uint64_t  p_28, int8_t * p_29, struct S2 * p_499)
{ /* block id: 9 */
    VECTOR(int32_t, 8) l_36 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, (-9L)), (-9L)), (-9L), 8L, (-9L));
    int8_t l_273 = 0x54L;
    uint32_t l_274 = 9UL;
    int8_t l_275[10][4][3] = {{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}},{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}},{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}},{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}},{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}},{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}},{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}},{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}},{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}},{{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L},{0x4FL,0x7BL,0x71L}}};
    uint32_t *l_286 = &p_499->g_287;
    uint64_t *l_291 = &p_499->g_285.f3;
    uint16_t *l_293 = (void*)0;
    int32_t *l_295 = &p_499->g_296;
    int32_t *l_297 = &p_499->g_294;
    int32_t *l_298 = (void*)0;
    int32_t *l_299 = (void*)0;
    int32_t *l_300[1];
    VECTOR(uint16_t, 8) l_301 = (VECTOR(uint16_t, 8))(0xB1A6L, (VECTOR(uint16_t, 4))(0xB1A6L, (VECTOR(uint16_t, 2))(0xB1A6L, 8UL), 8UL), 8UL, 0xB1A6L, 8UL);
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_300[i] = (void*)0;
    (*l_295) |= (((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(p_499->g_35.s8987)))).yywyzwyyywzzxxzx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_36.s11165101)).s01)).xyyxxxxxxyxyxyyx))).s0a)).even, l_36.s6)) && (p_499->g_294 |= (safe_mod_func_uint8_t_u_u(func_39((safe_mod_func_int8_t_s_s((((*l_286) = (((*l_291) = (p_499->g_290 &= (func_45(((*l_286) ^= (func_49(&p_499->g_2, func_55(func_60((((l_36.s1 = (p_499->g_30[7][1] == (func_62(l_36.s1, p_499) > (safe_sub_func_int8_t_s_s(((safe_div_func_int32_t_s_s(p_27, (safe_rshift_func_int8_t_s_s((safe_div_func_int32_t_s_s(0x3845AE73L, l_36.s2)), 5)))) , (safe_add_func_int8_t_s_s(((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 8))(1L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(0x10452E68BA36459BL, 0x4C74B2B3B975298BL, 0L, (-1L), p_499->g_22.w, l_36.s2, l_36.s0, l_36.s1, l_273, 1L, 0x1F151CA1DB9EDBCDL, ((VECTOR(int64_t, 4))(0x7710792D11FC3DF9L)), (-10L))).s165b)), 1L, 6L, 0x2952D9A9B5964913L)), ((VECTOR(int64_t, 8))(0x734205D212E9CEC5L))))).s20)), 0x38FE2853FEF32754L, 0x1EEE6B0D0AC69299L)).y, l_274)) != 2UL), 0L))), l_275[5][2][0]))))) < p_499->g_6) , (void*)0), p_499), p_499->g_6, p_499->g_119.s6, p_28, p_499), p_499->g_120.y, &p_499->g_6, l_275[3][2][0], p_499) , 4294967287UL)), p_499->g_288, l_286, p_499) && (*p_29)))) , 0x988B22D7L)) && l_275[7][1][0]), (*p_499->g_288))), &p_499->g_289, p_28, p_499), p_27)))) && (*p_499->g_288));
    ++l_301.s6;
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_499->g_202
 */
uint8_t  func_39(uint64_t  p_40, int8_t * p_41, uint32_t  p_42, struct S2 * p_499)
{ /* block id: 99 */
    int32_t l_292 = (-10L);
    p_499->g_202[2] = &p_499->g_6;
    return l_292;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_45(uint32_t  p_46, int8_t * p_47, int32_t * p_48, struct S2 * p_499)
{ /* block id: 94 */
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_499->g_285
 * writes:
 */
union U1  func_49(int32_t * p_50, uint32_t  p_51, int16_t  p_52, int32_t * p_53, int64_t  p_54, struct S2 * p_499)
{ /* block id: 91 */
    return p_499->g_285;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_55(int8_t * p_56, uint64_t  p_57, int32_t  p_58, int32_t  p_59, struct S2 * p_499)
{ /* block id: 88 */
    int32_t *l_281 = &p_499->g_6;
    int32_t **l_282[2][8][5] = {{{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281}},{{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281},{&p_499->g_202[4],(void*)0,&p_499->g_202[4],&l_281,&l_281}}};
    int32_t *l_283 = (void*)0;
    VECTOR(int64_t, 8) l_284 = (VECTOR(int64_t, 8))(0x402ED1102B47CCF5L, (VECTOR(int64_t, 4))(0x402ED1102B47CCF5L, (VECTOR(int64_t, 2))(0x402ED1102B47CCF5L, 0x2750C409C2E319DAL), 0x2750C409C2E319DAL), 0x2750C409C2E319DAL, 0x402ED1102B47CCF5L, 0x2750C409C2E319DAL);
    int i, j, k;
    l_283 = l_281;
    return l_284.s3;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_60(int8_t * p_61, struct S2 * p_499)
{ /* block id: 84 */
    int32_t *l_276[2];
    uint32_t l_277 = 0x3390E5CAL;
    int8_t *l_280 = &p_499->g_186[1];
    int i;
    for (i = 0; i < 2; i++)
        l_276[i] = (void*)0;
    l_276[0] = l_276[0];
    l_277++;
    return l_280;
}


/* ------------------------------------------ */
/* 
 * reads : p_499->g_66 p_499->g_68 p_499->g_71 p_499->g_72 p_499->g_6 p_499->g_21 p_499->g_2 p_499->g_35 p_499->g_111 p_499->g_119 p_499->g_120 p_499->g_22 p_499->g_129 p_499->g_32 p_499->g_132 p_499->g_175
 * writes: p_499->g_32 p_499->g_35 p_499->g_111 p_499->g_66 p_499->g_68 p_499->g_140 p_499->g_186 p_499->g_202 p_499->g_237
 */
uint16_t  func_62(int64_t  p_63, struct S2 * p_499)
{ /* block id: 10 */
    VECTOR(int32_t, 2) l_67 = (VECTOR(int32_t, 2))(0L, 1L);
    VECTOR(uint8_t, 16) l_114 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xFDL), 0xFDL), 0xFDL, 1UL, 0xFDL, (VECTOR(uint8_t, 2))(1UL, 0xFDL), (VECTOR(uint8_t, 2))(1UL, 0xFDL), 1UL, 0xFDL, 1UL, 0xFDL);
    int16_t l_115 = 1L;
    uint8_t *l_116 = (void*)0;
    VECTOR(uint16_t, 2) l_161 = (VECTOR(uint16_t, 2))(0xAE1DL, 0x5002L);
    uint8_t l_172[7] = {0xB4L,0x66L,0xB4L,0xB4L,0x66L,0xB4L,0xB4L};
    VECTOR(uint32_t, 8) l_193 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
    int32_t *l_201 = (void*)0;
    int8_t l_216 = 0x3FL;
    uint8_t l_217 = 0x42L;
    uint32_t l_221 = 4294967294UL;
    uint16_t l_229 = 0UL;
    int32_t *l_236[4][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    union U0 *l_247[2];
    union U0 **l_246 = &l_247[1];
    uint16_t *l_249 = &l_229;
    union U0 *l_250 = &p_499->g_248;
    int64_t *l_251 = (void*)0;
    int64_t *l_252 = (void*)0;
    int64_t *l_253 = (void*)0;
    int64_t *l_254 = (void*)0;
    int64_t *l_255 = (void*)0;
    int64_t *l_256[3];
    uint64_t l_257 = 0x49FCB02DF14B8F8CL;
    uint64_t l_258 = 1UL;
    uint32_t *l_259 = &l_221;
    uint32_t l_260 = 0x2E24881AL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_247[i] = &p_499->g_248;
    for (i = 0; i < 3; i++)
        l_256[i] = (void*)0;
    if (p_63)
    { /* block id: 11 */
        VECTOR(int32_t, 2) l_64 = (VECTOR(int32_t, 2))((-4L), (-9L));
        VECTOR(int32_t, 8) l_65 = (VECTOR(int32_t, 8))(0x7D735AE5L, (VECTOR(int32_t, 4))(0x7D735AE5L, (VECTOR(int32_t, 2))(0x7D735AE5L, 0x1AD701FBL), 0x1AD701FBL), 0x1AD701FBL, 0x7D735AE5L, 0x1AD701FBL);
        VECTOR(int32_t, 8) l_69 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x45A0AE89L), 0x45A0AE89L), 0x45A0AE89L, 1L, 0x45A0AE89L);
        VECTOR(int32_t, 8) l_70 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-10L)), (-10L)), (-10L), 0L, (-10L));
        union U0 l_91[4] = {{0x8FC9099BL},{0x8FC9099BL},{0x8FC9099BL},{0x8FC9099BL}};
        union U0 *l_92 = &l_91[3];
        VECTOR(uint32_t, 8) l_95 = (VECTOR(uint32_t, 8))(0xDF6318FFL, (VECTOR(uint32_t, 4))(0xDF6318FFL, (VECTOR(uint32_t, 2))(0xDF6318FFL, 1UL), 1UL), 1UL, 0xDF6318FFL, 1UL);
        int8_t *l_100 = &p_499->g_32;
        int32_t *l_101 = (void*)0;
        int32_t *l_102 = (void*)0;
        int32_t *l_103 = (void*)0;
        int32_t *l_104[7][6] = {{(void*)0,(void*)0,&p_499->g_6,(void*)0,&p_499->g_6,(void*)0},{(void*)0,(void*)0,&p_499->g_6,(void*)0,&p_499->g_6,(void*)0},{(void*)0,(void*)0,&p_499->g_6,(void*)0,&p_499->g_6,(void*)0},{(void*)0,(void*)0,&p_499->g_6,(void*)0,&p_499->g_6,(void*)0},{(void*)0,(void*)0,&p_499->g_6,(void*)0,&p_499->g_6,(void*)0},{(void*)0,(void*)0,&p_499->g_6,(void*)0,&p_499->g_6,(void*)0},{(void*)0,(void*)0,&p_499->g_6,(void*)0,&p_499->g_6,(void*)0}};
        uint8_t *l_109 = (void*)0;
        uint8_t *l_110 = &p_499->g_111;
        volatile union U0 *l_136 = (void*)0;
        VECTOR(uint8_t, 4) l_137 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL);
        VECTOR(uint8_t, 4) l_160 = (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 247UL), 247UL);
        int i, j;
        p_499->g_35.sa ^= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_64.yy)), 8L, 0x7078C3FCL)).zzzxxyyyxzwyxxxx, ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(0x01C31070L, 0x7732C352L)).xxyyyyyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(l_65.s03)), ((VECTOR(int32_t, 16))((-1L), ((VECTOR(int32_t, 2))(p_499->g_66.s65)), 0x2A19D8D7L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_67.xyyxxxyx)).s21)).yxxyyyyx)), (-7L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x74372BB1L, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(p_499->g_68.yyyxxyyyxxyyxxyx)).s3f, ((VECTOR(int32_t, 8))(l_69.s17566132)).s10))).yyxxyyxx)).lo, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x5195E1C3L, (-1L))).xxyyyyxy)).odd))), ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(9L, 0x2899D3D8L, 0x79387245L, p_499->g_66.s6, 0x4B4F9107L, ((VECTOR(int32_t, 2))(0x3F623BA0L, 0x0899A862L)), (-8L))).s65)).xyyxyyxy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_70.s7155646444544755)).s0f)).even, 1L, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(p_499->g_71.yxwyzzyx)).s56, ((VECTOR(int32_t, 2))(p_499->g_72.wz))))), ((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s(1L, ((safe_div_func_int32_t_s_s((safe_lshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((safe_add_func_uint32_t_u_u(((void*)0 == &p_499->g_6), (safe_sub_func_uint8_t_u_u((((*l_92) = l_91[2]) , 0xE0L), (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(l_95.s54554111)).s0, p_499->g_6)))))), (safe_rshift_func_int8_t_s_s(l_69.s2, 0)))), (safe_div_func_uint32_t_u_u((!(((*l_100) = p_499->g_21.s3) > p_499->g_68.x)), p_499->g_21.s7)))), 8)), 2)), (-1L))) > p_63))), 0x77L)) < p_499->g_2), l_67.x, 0x24BAAF50L, 0x6B93D755L)).s32)).yxyxxyyy))), ((VECTOR(int32_t, 2))(0x4D183246L)), 0x67C2D953L)).s66)), 0x2900EB00L)).sd6))).yyxyxyyx))))).s5217605413016202))).sb2)).xyyy, ((VECTOR(int32_t, 4))(8L))))).zzwyxxxyzwywywzx)).s2;
        if (p_63)
            goto lbl_121;
lbl_121:
        p_499->g_66.sf |= (((((l_67.x = (safe_mod_func_int8_t_s_s(p_63, (safe_add_func_uint8_t_u_u((--(*l_110)), ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((!l_67.y) == p_499->g_21.s6), ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 4))(l_114.s32fa)).even))).xyxyyxyy)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),uint8_t,((VECTOR(uint8_t, 2))(0UL, 1UL)).yyxxxyyxxyxxxyyy, (uint8_t)(((*l_92) , l_115) , (l_116 != l_116)), (uint8_t)(safe_rshift_func_uint8_t_u_u(p_63, 2))))).even)))).sd6, ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 2))(p_499->g_119.sf1)).yxyx, ((VECTOR(uint8_t, 4))(p_499->g_120.wywy))))).even))), 0xBFL)))).hi, ((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(0x72L, ((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 16))(0x76L, 0x1EL, p_63, p_499->g_35.s0, ((VECTOR(uint8_t, 8))(0xB0L)), 0x1EL, ((VECTOR(uint8_t, 2))(0x81L)), 255UL)).s7b, ((VECTOR(uint8_t, 2))(0UL))))), ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 2))(1UL))))), 246UL)), p_499->g_68.y, ((VECTOR(uint8_t, 8))(0xCEL)), p_63, 0x8CL, 1UL)).s85d1, (uint8_t)p_499->g_2, (uint8_t)0x0DL))).lo))).even))))) == 0x1D7ECA506553B860L) , l_67.x) >= p_499->g_2) ^ p_499->g_22.w);
        for (p_63 = 7; (p_63 == (-2)); p_63 = safe_sub_func_uint32_t_u_u(p_63, 6))
        { /* block id: 21 */
            int32_t *l_126[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t **l_127 = &l_104[6][2];
            union U0 **l_128 = &l_92;
            uint8_t *l_130[1][2];
            uint8_t **l_131[7] = {&l_130[0][0],&l_130[0][0],&l_130[0][0],&l_130[0][0],&l_130[0][0],&l_130[0][0],&l_130[0][0]};
            volatile union U0 **l_134 = (void*)0;
            volatile union U0 **l_135 = (void*)0;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_130[i][j] = &p_499->g_111;
            }
            p_499->g_35.se ^= ((safe_sub_func_uint8_t_u_u((l_126[7] != ((*l_127) = l_126[9])), (((p_499->g_68.y = (((((*l_128) = &l_91[3]) == &l_91[2]) , ((*l_100) |= ((p_499->g_129.z ^ p_499->g_72.y) <= (((l_100 != (l_110 = (l_116 = l_130[0][0]))) > l_115) != p_499->g_72.w)))) > 0x69L)) | p_499->g_66.s7) | 0x6E1A2211L))) ^ l_114.s0);
            l_136 = p_499->g_132;
        }
        if (p_499->g_22.y)
        { /* block id: 31 */
            int8_t l_138 = 0x5DL;
            int32_t **l_139[6][1];
            int i, j;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 1; j++)
                    l_139[i][j] = &l_103;
            }
            l_138 &= (((VECTOR(uint8_t, 4))(l_137.wwzy)).z & ((void*)0 == l_116));
            p_499->g_140 = (void*)0;
        }
        else
        { /* block id: 34 */
            int32_t **l_142 = &l_101;
            VECTOR(uint16_t, 4) l_155 = (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0xFD8FL), 0xFD8FL);
            int64_t *l_170 = (void*)0;
            int64_t *l_171 = (void*)0;
            int i;
            (*l_142) = &p_499->g_6;
            l_172[3] |= ((safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((((p_63 = (+((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 8))(0x54B5287A9B704C17L, 0x38545A47AEA757CBL, ((safe_sub_func_int64_t_s_s((((((safe_mul_func_int8_t_s_s((p_63 >= (safe_lshift_func_uint8_t_u_u((p_63 == (((VECTOR(uint16_t, 4))(l_155.yyxw)).w == (((++(*l_110)) ^ (((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(l_160.xx)).hi, ((VECTOR(int8_t, 2))(0x5FL, 0x73L)).even)) > ((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_161.xy)).xyxy)).hi)).yyyyxxxy)).s7 == ((safe_lshift_func_uint16_t_u_u((*l_101), 13)) || (p_499->g_21.s2 != (safe_mul_func_int16_t_s_s(((((void*)0 == p_499->g_132) , (safe_lshift_func_uint8_t_u_u((((safe_mod_func_int64_t_s_s(0x2986392380DBE1DBL, 1UL)) >= 0x3CL) & 0x6A57L), l_67.x))) == l_161.x), 0xBAC2L))))) ^ p_63)) <= l_114.s6)) < (**l_142)))), p_63))), (**l_142))) == 6UL) & 4UL) , p_63) , 0x0D85DCC5815B4C5AL), FAKE_DIVERGE(p_499->group_1_offset, get_group_id(1), 10))) , p_63), 0L, (-6L), p_63, (-10L), 0x347551151F3E8996L)).s52, ((VECTOR(int64_t, 2))(0x52694479903A0161L))))).yxxx)).z)) || p_63) && 0x2E5DL) , p_63), 0x7F40L)), l_114.s3)) | 2UL);
        }
    }
    else
    { /* block id: 40 */
        int32_t *l_174 = &p_499->g_6;
        int32_t **l_173 = &l_174;
        int32_t *l_180 = (void*)0;
        int32_t *l_181 = (void*)0;
        int32_t l_182 = 0x304D1588L;
        int8_t *l_183 = &p_499->g_32;
        int8_t *l_184 = (void*)0;
        int8_t *l_185 = &p_499->g_186[1];
        int32_t *l_187[2][4][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        int32_t l_188 = 0x0DA225B3L;
        int16_t l_215 = 0x19F3L;
        int i, j, k;
        (*l_173) = (p_63 , &p_499->g_6);
        l_188 |= (((((*l_185) = ((*l_183) |= ((p_499->g_111 != ((VECTOR(uint8_t, 8))(p_499->g_175.xyxyxyzy)).s5) | (safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_499->global_2_offset, get_global_id(2), 10), (safe_sub_func_int32_t_s_s(p_63, (l_182 &= l_172[3])))))))) >= p_499->g_68.x) , (((p_63 & 0xC78BEF38L) != p_63) >= (p_63 == 1L))) == p_63);
        if ((safe_rshift_func_int8_t_s_s((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_193.s07577720)))).s1, p_499->g_21.sa)), 0)))
        { /* block id: 46 */
            uint8_t l_198 = 0x40L;
            (*l_173) = &p_499->g_6;
            for (l_115 = 0; (l_115 <= (-21)); l_115 = safe_sub_func_int8_t_s_s(l_115, 1))
            { /* block id: 50 */
                int8_t l_196[8][9] = {{0x48L,0x10L,0x05L,0L,0x05L,0x10L,0x48L,0x56L,(-2L)},{0x48L,0x10L,0x05L,0L,0x05L,0x10L,0x48L,0x56L,(-2L)},{0x48L,0x10L,0x05L,0L,0x05L,0x10L,0x48L,0x56L,(-2L)},{0x48L,0x10L,0x05L,0L,0x05L,0x10L,0x48L,0x56L,(-2L)},{0x48L,0x10L,0x05L,0L,0x05L,0x10L,0x48L,0x56L,(-2L)},{0x48L,0x10L,0x05L,0L,0x05L,0x10L,0x48L,0x56L,(-2L)},{0x48L,0x10L,0x05L,0L,0x05L,0x10L,0x48L,0x56L,(-2L)},{0x48L,0x10L,0x05L,0L,0x05L,0x10L,0x48L,0x56L,(-2L)}};
                VECTOR(int32_t, 2) l_197 = (VECTOR(int32_t, 2))(0x3681B2D8L, 9L);
                int i, j;
                ++l_198;
                (*l_173) = &p_499->g_6;
                l_197.y ^= p_499->g_71.w;
            }
            p_499->g_202[4] = l_201;
            (*l_173) = &p_499->g_6;
        }
        else
        { /* block id: 57 */
            uint32_t l_205 = 0UL;
            int32_t l_206 = 0x1FECEB42L;
            int32_t l_208 = 0x77269C6AL;
            int32_t l_210 = (-8L);
            int32_t l_211[8][7] = {{0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L},{0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L},{0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L},{0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L},{0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L},{0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L},{0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L},{0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L,0x6D159577L}};
            int i, j;
            for (l_188 = 23; (l_188 <= (-16)); l_188--)
            { /* block id: 60 */
                int16_t l_207 = 1L;
                int32_t l_209[10] = {0x5B3FF0B4L,0x32F2F50FL,(-1L),0x32F2F50FL,0x5B3FF0B4L,0x5B3FF0B4L,0x32F2F50FL,(-1L),0x32F2F50FL,0x5B3FF0B4L};
                uint8_t l_212 = 5UL;
                int i;
                if (l_205)
                    break;
                l_212--;
                if (p_499->g_6)
                    goto lbl_220;
            }
lbl_220:
            --l_217;
            l_206 = p_63;
        }
        --l_221;
    }
    for (p_499->g_32 = (-15); (p_499->g_32 != 16); ++p_499->g_32)
    { /* block id: 72 */
        int32_t *l_226[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_227 = 0x71D0AFAAL;
        int16_t l_228[8][5] = {{0L,0x15BDL,0x15BDL,0L,0L},{0L,0x15BDL,0x15BDL,0L,0L},{0L,0x15BDL,0x15BDL,0L,0L},{0L,0x15BDL,0x15BDL,0L,0L},{0L,0x15BDL,0x15BDL,0L,0L},{0L,0x15BDL,0x15BDL,0L,0L},{0L,0x15BDL,0x15BDL,0L,0L},{0L,0x15BDL,0x15BDL,0L,0L}};
        int i, j;
        --l_229;
        if (p_63)
            continue;
    }
    l_260 = ((((((safe_mod_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(4294967291UL, ((*l_259) = (p_499->g_32 || ((p_499->g_237 = 1L) , ((safe_sub_func_uint64_t_u_u(p_63, (l_257 = (safe_rshift_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u((p_499->g_120.y | (((*l_249) &= ((void*)0 != l_246)) && (((*l_246) = (*l_246)) != ((&p_499->g_132 != l_246) , l_250)))), p_499->g_22.z)), GROUP_DIVERGE(2, 1))), 7))))) <= l_258)))))), p_63)) == p_63) > 1UL) | 1L) , 0x2424BF58L) , 0x0068CC3BL);
    return p_63;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_500;
    struct S2* p_499 = &c_500;
    struct S2 c_501 = {
        0x54EA6801L, // p_499->g_2
        0x088999D9L, // p_499->g_6
        (VECTOR(uint16_t, 2))(0xFF29L, 0UL), // p_499->g_20
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint16_t, 2))(1UL, 0UL), (VECTOR(uint16_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_499->g_21
        (VECTOR(uint32_t, 4))(0xDAD4F6C5L, (VECTOR(uint32_t, 2))(0xDAD4F6C5L, 4294967295UL), 4294967295UL), // p_499->g_22
        {{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL},{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL},{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL},{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL},{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL},{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL},{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL},{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL},{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL},{251UL,251UL,251UL,251UL,251UL,251UL,251UL,251UL}}, // p_499->g_30
        0x05L, // p_499->g_32
        (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 7L), 7L), 7L, 4L, 7L, (VECTOR(int32_t, 2))(4L, 7L), (VECTOR(int32_t, 2))(4L, 7L), 4L, 7L, 4L, 7L), // p_499->g_35
        (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x0A60B10FL), 0x0A60B10FL), 0x0A60B10FL, (-3L), 0x0A60B10FL, (VECTOR(int32_t, 2))((-3L), 0x0A60B10FL), (VECTOR(int32_t, 2))((-3L), 0x0A60B10FL), (-3L), 0x0A60B10FL, (-3L), 0x0A60B10FL), // p_499->g_66
        (VECTOR(int32_t, 2))(8L, 0x00F5C685L), // p_499->g_68
        (VECTOR(int32_t, 4))(0x1B63BBBFL, (VECTOR(int32_t, 2))(0x1B63BBBFL, 0x354A90BBL), 0x354A90BBL), // p_499->g_71
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 8L), 8L), // p_499->g_72
        0x50L, // p_499->g_111
        (VECTOR(uint8_t, 16))(0x42L, (VECTOR(uint8_t, 4))(0x42L, (VECTOR(uint8_t, 2))(0x42L, 1UL), 1UL), 1UL, 0x42L, 1UL, (VECTOR(uint8_t, 2))(0x42L, 1UL), (VECTOR(uint8_t, 2))(0x42L, 1UL), 0x42L, 1UL, 0x42L, 1UL), // p_499->g_119
        (VECTOR(uint8_t, 4))(0xA3L, (VECTOR(uint8_t, 2))(0xA3L, 0x1EL), 0x1EL), // p_499->g_120
        (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0x0A961F3FAF8E688BL), 0x0A961F3FAF8E688BL), // p_499->g_129
        {4294967295UL}, // p_499->g_133
        &p_499->g_133, // p_499->g_132
        0x14E436F8L, // p_499->g_141
        &p_499->g_141, // p_499->g_140
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), // p_499->g_175
        {0x3CL,0x68L,0x3CL,0x3CL,0x68L,0x3CL}, // p_499->g_186
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_499->g_202
        0x57BB5EA8L, // p_499->g_237
        {0x017B7A4FL}, // p_499->g_248
        {0}, // p_499->g_285
        0x0F457C36L, // p_499->g_287
        (-1L), // p_499->g_289
        &p_499->g_289, // p_499->g_288
        3L, // p_499->g_290
        0x666F7F35L, // p_499->g_294
        1L, // p_499->g_296
        (VECTOR(uint16_t, 16))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0xF234L), 0xF234L), 0xF234L, 65526UL, 0xF234L, (VECTOR(uint16_t, 2))(65526UL, 0xF234L), (VECTOR(uint16_t, 2))(65526UL, 0xF234L), 65526UL, 0xF234L, 65526UL, 0xF234L), // p_499->g_326
        (VECTOR(uint16_t, 2))(9UL, 0xA405L), // p_499->g_327
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_499->g_338
        (VECTOR(int32_t, 8))(0x689A74B3L, (VECTOR(int32_t, 4))(0x689A74B3L, (VECTOR(int32_t, 2))(0x689A74B3L, 1L), 1L), 1L, 0x689A74B3L, 1L), // p_499->g_339
        (VECTOR(uint32_t, 16))(0x01A2F0B8L, (VECTOR(uint32_t, 4))(0x01A2F0B8L, (VECTOR(uint32_t, 2))(0x01A2F0B8L, 0xC0757CD0L), 0xC0757CD0L), 0xC0757CD0L, 0x01A2F0B8L, 0xC0757CD0L, (VECTOR(uint32_t, 2))(0x01A2F0B8L, 0xC0757CD0L), (VECTOR(uint32_t, 2))(0x01A2F0B8L, 0xC0757CD0L), 0x01A2F0B8L, 0xC0757CD0L, 0x01A2F0B8L, 0xC0757CD0L), // p_499->g_340
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_499->g_341
        (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 1L), 1L), 1L, 5L, 1L, (VECTOR(int32_t, 2))(5L, 1L), (VECTOR(int32_t, 2))(5L, 1L), 5L, 1L, 5L, 1L), // p_499->g_344
        (VECTOR(int16_t, 16))(0x4910L, (VECTOR(int16_t, 4))(0x4910L, (VECTOR(int16_t, 2))(0x4910L, (-6L)), (-6L)), (-6L), 0x4910L, (-6L), (VECTOR(int16_t, 2))(0x4910L, (-6L)), (VECTOR(int16_t, 2))(0x4910L, (-6L)), 0x4910L, (-6L), 0x4910L, (-6L)), // p_499->g_365
        {{{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L}},{{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L},{(-1L),0x684D1038098E5F3DL,0x3F7474D1EC7C141CL,0L,0x1BCF93FCC60565A3L,(-5L),0L,6L}}}, // p_499->g_380
        (VECTOR(uint8_t, 2))(1UL, 246UL), // p_499->g_389
        (VECTOR(uint64_t, 16))(0x001E945587C885D6L, (VECTOR(uint64_t, 4))(0x001E945587C885D6L, (VECTOR(uint64_t, 2))(0x001E945587C885D6L, 0xCE0A81D4268F8A7FL), 0xCE0A81D4268F8A7FL), 0xCE0A81D4268F8A7FL, 0x001E945587C885D6L, 0xCE0A81D4268F8A7FL, (VECTOR(uint64_t, 2))(0x001E945587C885D6L, 0xCE0A81D4268F8A7FL), (VECTOR(uint64_t, 2))(0x001E945587C885D6L, 0xCE0A81D4268F8A7FL), 0x001E945587C885D6L, 0xCE0A81D4268F8A7FL, 0x001E945587C885D6L, 0xCE0A81D4268F8A7FL), // p_499->g_397
        18446744073709551612UL, // p_499->g_422
        &p_499->g_202[1], // p_499->g_426
        &p_499->g_285, // p_499->g_431
        &p_499->g_431, // p_499->g_430
        {0}, // p_499->g_435
        (VECTOR(uint16_t, 2))(0UL, 0x87F3L), // p_499->g_439
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint16_t, 2))(1UL, 0UL), (VECTOR(uint16_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_499->g_441
        (VECTOR(uint16_t, 2))(0x8BE2L, 0x522DL), // p_499->g_442
        (VECTOR(int32_t, 2))(0x29F4502FL, 3L), // p_499->g_444
        (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 5L), 5L), 5L, 4L, 5L), // p_499->g_445
        (void*)0, // p_499->g_454
        &p_499->g_202[4], // p_499->g_455
        0UL, // p_499->g_475
        (VECTOR(uint16_t, 2))(0xA454L, 0x152FL), // p_499->g_483
        (VECTOR(uint16_t, 8))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0x9499L), 0x9499L), 0x9499L, 65526UL, 0x9499L), // p_499->g_484
        4294967295UL, // p_499->g_496
        sequence_input[get_global_id(0)], // p_499->global_0_offset
        sequence_input[get_global_id(1)], // p_499->global_1_offset
        sequence_input[get_global_id(2)], // p_499->global_2_offset
        sequence_input[get_local_id(0)], // p_499->local_0_offset
        sequence_input[get_local_id(1)], // p_499->local_1_offset
        sequence_input[get_local_id(2)], // p_499->local_2_offset
        sequence_input[get_group_id(0)], // p_499->group_0_offset
        sequence_input[get_group_id(1)], // p_499->group_1_offset
        sequence_input[get_group_id(2)], // p_499->group_2_offset
    };
    c_500 = c_501;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_499);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_499->g_2, "p_499->g_2", print_hash_value);
    transparent_crc(p_499->g_6, "p_499->g_6", print_hash_value);
    transparent_crc(p_499->g_20.x, "p_499->g_20.x", print_hash_value);
    transparent_crc(p_499->g_20.y, "p_499->g_20.y", print_hash_value);
    transparent_crc(p_499->g_21.s0, "p_499->g_21.s0", print_hash_value);
    transparent_crc(p_499->g_21.s1, "p_499->g_21.s1", print_hash_value);
    transparent_crc(p_499->g_21.s2, "p_499->g_21.s2", print_hash_value);
    transparent_crc(p_499->g_21.s3, "p_499->g_21.s3", print_hash_value);
    transparent_crc(p_499->g_21.s4, "p_499->g_21.s4", print_hash_value);
    transparent_crc(p_499->g_21.s5, "p_499->g_21.s5", print_hash_value);
    transparent_crc(p_499->g_21.s6, "p_499->g_21.s6", print_hash_value);
    transparent_crc(p_499->g_21.s7, "p_499->g_21.s7", print_hash_value);
    transparent_crc(p_499->g_21.s8, "p_499->g_21.s8", print_hash_value);
    transparent_crc(p_499->g_21.s9, "p_499->g_21.s9", print_hash_value);
    transparent_crc(p_499->g_21.sa, "p_499->g_21.sa", print_hash_value);
    transparent_crc(p_499->g_21.sb, "p_499->g_21.sb", print_hash_value);
    transparent_crc(p_499->g_21.sc, "p_499->g_21.sc", print_hash_value);
    transparent_crc(p_499->g_21.sd, "p_499->g_21.sd", print_hash_value);
    transparent_crc(p_499->g_21.se, "p_499->g_21.se", print_hash_value);
    transparent_crc(p_499->g_21.sf, "p_499->g_21.sf", print_hash_value);
    transparent_crc(p_499->g_22.x, "p_499->g_22.x", print_hash_value);
    transparent_crc(p_499->g_22.y, "p_499->g_22.y", print_hash_value);
    transparent_crc(p_499->g_22.z, "p_499->g_22.z", print_hash_value);
    transparent_crc(p_499->g_22.w, "p_499->g_22.w", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_499->g_30[i][j], "p_499->g_30[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_499->g_32, "p_499->g_32", print_hash_value);
    transparent_crc(p_499->g_35.s0, "p_499->g_35.s0", print_hash_value);
    transparent_crc(p_499->g_35.s1, "p_499->g_35.s1", print_hash_value);
    transparent_crc(p_499->g_35.s2, "p_499->g_35.s2", print_hash_value);
    transparent_crc(p_499->g_35.s3, "p_499->g_35.s3", print_hash_value);
    transparent_crc(p_499->g_35.s4, "p_499->g_35.s4", print_hash_value);
    transparent_crc(p_499->g_35.s5, "p_499->g_35.s5", print_hash_value);
    transparent_crc(p_499->g_35.s6, "p_499->g_35.s6", print_hash_value);
    transparent_crc(p_499->g_35.s7, "p_499->g_35.s7", print_hash_value);
    transparent_crc(p_499->g_35.s8, "p_499->g_35.s8", print_hash_value);
    transparent_crc(p_499->g_35.s9, "p_499->g_35.s9", print_hash_value);
    transparent_crc(p_499->g_35.sa, "p_499->g_35.sa", print_hash_value);
    transparent_crc(p_499->g_35.sb, "p_499->g_35.sb", print_hash_value);
    transparent_crc(p_499->g_35.sc, "p_499->g_35.sc", print_hash_value);
    transparent_crc(p_499->g_35.sd, "p_499->g_35.sd", print_hash_value);
    transparent_crc(p_499->g_35.se, "p_499->g_35.se", print_hash_value);
    transparent_crc(p_499->g_35.sf, "p_499->g_35.sf", print_hash_value);
    transparent_crc(p_499->g_66.s0, "p_499->g_66.s0", print_hash_value);
    transparent_crc(p_499->g_66.s1, "p_499->g_66.s1", print_hash_value);
    transparent_crc(p_499->g_66.s2, "p_499->g_66.s2", print_hash_value);
    transparent_crc(p_499->g_66.s3, "p_499->g_66.s3", print_hash_value);
    transparent_crc(p_499->g_66.s4, "p_499->g_66.s4", print_hash_value);
    transparent_crc(p_499->g_66.s5, "p_499->g_66.s5", print_hash_value);
    transparent_crc(p_499->g_66.s6, "p_499->g_66.s6", print_hash_value);
    transparent_crc(p_499->g_66.s7, "p_499->g_66.s7", print_hash_value);
    transparent_crc(p_499->g_66.s8, "p_499->g_66.s8", print_hash_value);
    transparent_crc(p_499->g_66.s9, "p_499->g_66.s9", print_hash_value);
    transparent_crc(p_499->g_66.sa, "p_499->g_66.sa", print_hash_value);
    transparent_crc(p_499->g_66.sb, "p_499->g_66.sb", print_hash_value);
    transparent_crc(p_499->g_66.sc, "p_499->g_66.sc", print_hash_value);
    transparent_crc(p_499->g_66.sd, "p_499->g_66.sd", print_hash_value);
    transparent_crc(p_499->g_66.se, "p_499->g_66.se", print_hash_value);
    transparent_crc(p_499->g_66.sf, "p_499->g_66.sf", print_hash_value);
    transparent_crc(p_499->g_68.x, "p_499->g_68.x", print_hash_value);
    transparent_crc(p_499->g_68.y, "p_499->g_68.y", print_hash_value);
    transparent_crc(p_499->g_71.x, "p_499->g_71.x", print_hash_value);
    transparent_crc(p_499->g_71.y, "p_499->g_71.y", print_hash_value);
    transparent_crc(p_499->g_71.z, "p_499->g_71.z", print_hash_value);
    transparent_crc(p_499->g_71.w, "p_499->g_71.w", print_hash_value);
    transparent_crc(p_499->g_72.x, "p_499->g_72.x", print_hash_value);
    transparent_crc(p_499->g_72.y, "p_499->g_72.y", print_hash_value);
    transparent_crc(p_499->g_72.z, "p_499->g_72.z", print_hash_value);
    transparent_crc(p_499->g_72.w, "p_499->g_72.w", print_hash_value);
    transparent_crc(p_499->g_111, "p_499->g_111", print_hash_value);
    transparent_crc(p_499->g_119.s0, "p_499->g_119.s0", print_hash_value);
    transparent_crc(p_499->g_119.s1, "p_499->g_119.s1", print_hash_value);
    transparent_crc(p_499->g_119.s2, "p_499->g_119.s2", print_hash_value);
    transparent_crc(p_499->g_119.s3, "p_499->g_119.s3", print_hash_value);
    transparent_crc(p_499->g_119.s4, "p_499->g_119.s4", print_hash_value);
    transparent_crc(p_499->g_119.s5, "p_499->g_119.s5", print_hash_value);
    transparent_crc(p_499->g_119.s6, "p_499->g_119.s6", print_hash_value);
    transparent_crc(p_499->g_119.s7, "p_499->g_119.s7", print_hash_value);
    transparent_crc(p_499->g_119.s8, "p_499->g_119.s8", print_hash_value);
    transparent_crc(p_499->g_119.s9, "p_499->g_119.s9", print_hash_value);
    transparent_crc(p_499->g_119.sa, "p_499->g_119.sa", print_hash_value);
    transparent_crc(p_499->g_119.sb, "p_499->g_119.sb", print_hash_value);
    transparent_crc(p_499->g_119.sc, "p_499->g_119.sc", print_hash_value);
    transparent_crc(p_499->g_119.sd, "p_499->g_119.sd", print_hash_value);
    transparent_crc(p_499->g_119.se, "p_499->g_119.se", print_hash_value);
    transparent_crc(p_499->g_119.sf, "p_499->g_119.sf", print_hash_value);
    transparent_crc(p_499->g_120.x, "p_499->g_120.x", print_hash_value);
    transparent_crc(p_499->g_120.y, "p_499->g_120.y", print_hash_value);
    transparent_crc(p_499->g_120.z, "p_499->g_120.z", print_hash_value);
    transparent_crc(p_499->g_120.w, "p_499->g_120.w", print_hash_value);
    transparent_crc(p_499->g_129.x, "p_499->g_129.x", print_hash_value);
    transparent_crc(p_499->g_129.y, "p_499->g_129.y", print_hash_value);
    transparent_crc(p_499->g_129.z, "p_499->g_129.z", print_hash_value);
    transparent_crc(p_499->g_129.w, "p_499->g_129.w", print_hash_value);
    transparent_crc(p_499->g_133.f0, "p_499->g_133.f0", print_hash_value);
    transparent_crc(p_499->g_141, "p_499->g_141", print_hash_value);
    transparent_crc(p_499->g_175.x, "p_499->g_175.x", print_hash_value);
    transparent_crc(p_499->g_175.y, "p_499->g_175.y", print_hash_value);
    transparent_crc(p_499->g_175.z, "p_499->g_175.z", print_hash_value);
    transparent_crc(p_499->g_175.w, "p_499->g_175.w", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_499->g_186[i], "p_499->g_186[i]", print_hash_value);

    }
    transparent_crc(p_499->g_237, "p_499->g_237", print_hash_value);
    transparent_crc(p_499->g_248.f0, "p_499->g_248.f0", print_hash_value);
    transparent_crc(p_499->g_287, "p_499->g_287", print_hash_value);
    transparent_crc(p_499->g_289, "p_499->g_289", print_hash_value);
    transparent_crc(p_499->g_290, "p_499->g_290", print_hash_value);
    transparent_crc(p_499->g_294, "p_499->g_294", print_hash_value);
    transparent_crc(p_499->g_296, "p_499->g_296", print_hash_value);
    transparent_crc(p_499->g_326.s0, "p_499->g_326.s0", print_hash_value);
    transparent_crc(p_499->g_326.s1, "p_499->g_326.s1", print_hash_value);
    transparent_crc(p_499->g_326.s2, "p_499->g_326.s2", print_hash_value);
    transparent_crc(p_499->g_326.s3, "p_499->g_326.s3", print_hash_value);
    transparent_crc(p_499->g_326.s4, "p_499->g_326.s4", print_hash_value);
    transparent_crc(p_499->g_326.s5, "p_499->g_326.s5", print_hash_value);
    transparent_crc(p_499->g_326.s6, "p_499->g_326.s6", print_hash_value);
    transparent_crc(p_499->g_326.s7, "p_499->g_326.s7", print_hash_value);
    transparent_crc(p_499->g_326.s8, "p_499->g_326.s8", print_hash_value);
    transparent_crc(p_499->g_326.s9, "p_499->g_326.s9", print_hash_value);
    transparent_crc(p_499->g_326.sa, "p_499->g_326.sa", print_hash_value);
    transparent_crc(p_499->g_326.sb, "p_499->g_326.sb", print_hash_value);
    transparent_crc(p_499->g_326.sc, "p_499->g_326.sc", print_hash_value);
    transparent_crc(p_499->g_326.sd, "p_499->g_326.sd", print_hash_value);
    transparent_crc(p_499->g_326.se, "p_499->g_326.se", print_hash_value);
    transparent_crc(p_499->g_326.sf, "p_499->g_326.sf", print_hash_value);
    transparent_crc(p_499->g_327.x, "p_499->g_327.x", print_hash_value);
    transparent_crc(p_499->g_327.y, "p_499->g_327.y", print_hash_value);
    transparent_crc(p_499->g_338.s0, "p_499->g_338.s0", print_hash_value);
    transparent_crc(p_499->g_338.s1, "p_499->g_338.s1", print_hash_value);
    transparent_crc(p_499->g_338.s2, "p_499->g_338.s2", print_hash_value);
    transparent_crc(p_499->g_338.s3, "p_499->g_338.s3", print_hash_value);
    transparent_crc(p_499->g_338.s4, "p_499->g_338.s4", print_hash_value);
    transparent_crc(p_499->g_338.s5, "p_499->g_338.s5", print_hash_value);
    transparent_crc(p_499->g_338.s6, "p_499->g_338.s6", print_hash_value);
    transparent_crc(p_499->g_338.s7, "p_499->g_338.s7", print_hash_value);
    transparent_crc(p_499->g_339.s0, "p_499->g_339.s0", print_hash_value);
    transparent_crc(p_499->g_339.s1, "p_499->g_339.s1", print_hash_value);
    transparent_crc(p_499->g_339.s2, "p_499->g_339.s2", print_hash_value);
    transparent_crc(p_499->g_339.s3, "p_499->g_339.s3", print_hash_value);
    transparent_crc(p_499->g_339.s4, "p_499->g_339.s4", print_hash_value);
    transparent_crc(p_499->g_339.s5, "p_499->g_339.s5", print_hash_value);
    transparent_crc(p_499->g_339.s6, "p_499->g_339.s6", print_hash_value);
    transparent_crc(p_499->g_339.s7, "p_499->g_339.s7", print_hash_value);
    transparent_crc(p_499->g_340.s0, "p_499->g_340.s0", print_hash_value);
    transparent_crc(p_499->g_340.s1, "p_499->g_340.s1", print_hash_value);
    transparent_crc(p_499->g_340.s2, "p_499->g_340.s2", print_hash_value);
    transparent_crc(p_499->g_340.s3, "p_499->g_340.s3", print_hash_value);
    transparent_crc(p_499->g_340.s4, "p_499->g_340.s4", print_hash_value);
    transparent_crc(p_499->g_340.s5, "p_499->g_340.s5", print_hash_value);
    transparent_crc(p_499->g_340.s6, "p_499->g_340.s6", print_hash_value);
    transparent_crc(p_499->g_340.s7, "p_499->g_340.s7", print_hash_value);
    transparent_crc(p_499->g_340.s8, "p_499->g_340.s8", print_hash_value);
    transparent_crc(p_499->g_340.s9, "p_499->g_340.s9", print_hash_value);
    transparent_crc(p_499->g_340.sa, "p_499->g_340.sa", print_hash_value);
    transparent_crc(p_499->g_340.sb, "p_499->g_340.sb", print_hash_value);
    transparent_crc(p_499->g_340.sc, "p_499->g_340.sc", print_hash_value);
    transparent_crc(p_499->g_340.sd, "p_499->g_340.sd", print_hash_value);
    transparent_crc(p_499->g_340.se, "p_499->g_340.se", print_hash_value);
    transparent_crc(p_499->g_340.sf, "p_499->g_340.sf", print_hash_value);
    transparent_crc(p_499->g_344.s0, "p_499->g_344.s0", print_hash_value);
    transparent_crc(p_499->g_344.s1, "p_499->g_344.s1", print_hash_value);
    transparent_crc(p_499->g_344.s2, "p_499->g_344.s2", print_hash_value);
    transparent_crc(p_499->g_344.s3, "p_499->g_344.s3", print_hash_value);
    transparent_crc(p_499->g_344.s4, "p_499->g_344.s4", print_hash_value);
    transparent_crc(p_499->g_344.s5, "p_499->g_344.s5", print_hash_value);
    transparent_crc(p_499->g_344.s6, "p_499->g_344.s6", print_hash_value);
    transparent_crc(p_499->g_344.s7, "p_499->g_344.s7", print_hash_value);
    transparent_crc(p_499->g_344.s8, "p_499->g_344.s8", print_hash_value);
    transparent_crc(p_499->g_344.s9, "p_499->g_344.s9", print_hash_value);
    transparent_crc(p_499->g_344.sa, "p_499->g_344.sa", print_hash_value);
    transparent_crc(p_499->g_344.sb, "p_499->g_344.sb", print_hash_value);
    transparent_crc(p_499->g_344.sc, "p_499->g_344.sc", print_hash_value);
    transparent_crc(p_499->g_344.sd, "p_499->g_344.sd", print_hash_value);
    transparent_crc(p_499->g_344.se, "p_499->g_344.se", print_hash_value);
    transparent_crc(p_499->g_344.sf, "p_499->g_344.sf", print_hash_value);
    transparent_crc(p_499->g_365.s0, "p_499->g_365.s0", print_hash_value);
    transparent_crc(p_499->g_365.s1, "p_499->g_365.s1", print_hash_value);
    transparent_crc(p_499->g_365.s2, "p_499->g_365.s2", print_hash_value);
    transparent_crc(p_499->g_365.s3, "p_499->g_365.s3", print_hash_value);
    transparent_crc(p_499->g_365.s4, "p_499->g_365.s4", print_hash_value);
    transparent_crc(p_499->g_365.s5, "p_499->g_365.s5", print_hash_value);
    transparent_crc(p_499->g_365.s6, "p_499->g_365.s6", print_hash_value);
    transparent_crc(p_499->g_365.s7, "p_499->g_365.s7", print_hash_value);
    transparent_crc(p_499->g_365.s8, "p_499->g_365.s8", print_hash_value);
    transparent_crc(p_499->g_365.s9, "p_499->g_365.s9", print_hash_value);
    transparent_crc(p_499->g_365.sa, "p_499->g_365.sa", print_hash_value);
    transparent_crc(p_499->g_365.sb, "p_499->g_365.sb", print_hash_value);
    transparent_crc(p_499->g_365.sc, "p_499->g_365.sc", print_hash_value);
    transparent_crc(p_499->g_365.sd, "p_499->g_365.sd", print_hash_value);
    transparent_crc(p_499->g_365.se, "p_499->g_365.se", print_hash_value);
    transparent_crc(p_499->g_365.sf, "p_499->g_365.sf", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_499->g_380[i][j][k], "p_499->g_380[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_499->g_389.x, "p_499->g_389.x", print_hash_value);
    transparent_crc(p_499->g_389.y, "p_499->g_389.y", print_hash_value);
    transparent_crc(p_499->g_397.s0, "p_499->g_397.s0", print_hash_value);
    transparent_crc(p_499->g_397.s1, "p_499->g_397.s1", print_hash_value);
    transparent_crc(p_499->g_397.s2, "p_499->g_397.s2", print_hash_value);
    transparent_crc(p_499->g_397.s3, "p_499->g_397.s3", print_hash_value);
    transparent_crc(p_499->g_397.s4, "p_499->g_397.s4", print_hash_value);
    transparent_crc(p_499->g_397.s5, "p_499->g_397.s5", print_hash_value);
    transparent_crc(p_499->g_397.s6, "p_499->g_397.s6", print_hash_value);
    transparent_crc(p_499->g_397.s7, "p_499->g_397.s7", print_hash_value);
    transparent_crc(p_499->g_397.s8, "p_499->g_397.s8", print_hash_value);
    transparent_crc(p_499->g_397.s9, "p_499->g_397.s9", print_hash_value);
    transparent_crc(p_499->g_397.sa, "p_499->g_397.sa", print_hash_value);
    transparent_crc(p_499->g_397.sb, "p_499->g_397.sb", print_hash_value);
    transparent_crc(p_499->g_397.sc, "p_499->g_397.sc", print_hash_value);
    transparent_crc(p_499->g_397.sd, "p_499->g_397.sd", print_hash_value);
    transparent_crc(p_499->g_397.se, "p_499->g_397.se", print_hash_value);
    transparent_crc(p_499->g_397.sf, "p_499->g_397.sf", print_hash_value);
    transparent_crc(p_499->g_422, "p_499->g_422", print_hash_value);
    transparent_crc(p_499->g_439.x, "p_499->g_439.x", print_hash_value);
    transparent_crc(p_499->g_439.y, "p_499->g_439.y", print_hash_value);
    transparent_crc(p_499->g_441.s0, "p_499->g_441.s0", print_hash_value);
    transparent_crc(p_499->g_441.s1, "p_499->g_441.s1", print_hash_value);
    transparent_crc(p_499->g_441.s2, "p_499->g_441.s2", print_hash_value);
    transparent_crc(p_499->g_441.s3, "p_499->g_441.s3", print_hash_value);
    transparent_crc(p_499->g_441.s4, "p_499->g_441.s4", print_hash_value);
    transparent_crc(p_499->g_441.s5, "p_499->g_441.s5", print_hash_value);
    transparent_crc(p_499->g_441.s6, "p_499->g_441.s6", print_hash_value);
    transparent_crc(p_499->g_441.s7, "p_499->g_441.s7", print_hash_value);
    transparent_crc(p_499->g_441.s8, "p_499->g_441.s8", print_hash_value);
    transparent_crc(p_499->g_441.s9, "p_499->g_441.s9", print_hash_value);
    transparent_crc(p_499->g_441.sa, "p_499->g_441.sa", print_hash_value);
    transparent_crc(p_499->g_441.sb, "p_499->g_441.sb", print_hash_value);
    transparent_crc(p_499->g_441.sc, "p_499->g_441.sc", print_hash_value);
    transparent_crc(p_499->g_441.sd, "p_499->g_441.sd", print_hash_value);
    transparent_crc(p_499->g_441.se, "p_499->g_441.se", print_hash_value);
    transparent_crc(p_499->g_441.sf, "p_499->g_441.sf", print_hash_value);
    transparent_crc(p_499->g_442.x, "p_499->g_442.x", print_hash_value);
    transparent_crc(p_499->g_442.y, "p_499->g_442.y", print_hash_value);
    transparent_crc(p_499->g_444.x, "p_499->g_444.x", print_hash_value);
    transparent_crc(p_499->g_444.y, "p_499->g_444.y", print_hash_value);
    transparent_crc(p_499->g_445.s0, "p_499->g_445.s0", print_hash_value);
    transparent_crc(p_499->g_445.s1, "p_499->g_445.s1", print_hash_value);
    transparent_crc(p_499->g_445.s2, "p_499->g_445.s2", print_hash_value);
    transparent_crc(p_499->g_445.s3, "p_499->g_445.s3", print_hash_value);
    transparent_crc(p_499->g_445.s4, "p_499->g_445.s4", print_hash_value);
    transparent_crc(p_499->g_445.s5, "p_499->g_445.s5", print_hash_value);
    transparent_crc(p_499->g_445.s6, "p_499->g_445.s6", print_hash_value);
    transparent_crc(p_499->g_445.s7, "p_499->g_445.s7", print_hash_value);
    transparent_crc(p_499->g_475, "p_499->g_475", print_hash_value);
    transparent_crc(p_499->g_483.x, "p_499->g_483.x", print_hash_value);
    transparent_crc(p_499->g_483.y, "p_499->g_483.y", print_hash_value);
    transparent_crc(p_499->g_484.s0, "p_499->g_484.s0", print_hash_value);
    transparent_crc(p_499->g_484.s1, "p_499->g_484.s1", print_hash_value);
    transparent_crc(p_499->g_484.s2, "p_499->g_484.s2", print_hash_value);
    transparent_crc(p_499->g_484.s3, "p_499->g_484.s3", print_hash_value);
    transparent_crc(p_499->g_484.s4, "p_499->g_484.s4", print_hash_value);
    transparent_crc(p_499->g_484.s5, "p_499->g_484.s5", print_hash_value);
    transparent_crc(p_499->g_484.s6, "p_499->g_484.s6", print_hash_value);
    transparent_crc(p_499->g_484.s7, "p_499->g_484.s7", print_hash_value);
    transparent_crc(p_499->g_496, "p_499->g_496", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
