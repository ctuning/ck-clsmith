// ---fake_divergence -g 1,1,7069 -l 1,1,1
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


// Seed: 62

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int64_t g_2;
    int32_t g_4;
    int32_t * volatile g_3[9];
    int16_t g_18;
    int32_t *g_54;
    int32_t **g_53;
    int32_t g_59;
    int64_t g_67;
    int8_t g_79;
    uint16_t g_100[1][1];
    int16_t g_102;
    int32_t * volatile g_120[3];
    int32_t * volatile g_121;
    int64_t g_150[8][1];
    uint8_t g_154[2][6][6];
    uint16_t g_156[1];
    int8_t * volatile g_173;
    int8_t * volatile * volatile g_172;
    int8_t * volatile * volatile * volatile g_174;
    uint64_t g_181;
    volatile int16_t g_197[6][1][4];
    volatile int8_t * volatile * volatile *g_235;
    int16_t g_246;
    int32_t g_269;
    uint64_t g_271[4];
    uint64_t g_274;
    int32_t g_278;
    int16_t g_279;
    uint32_t g_338;
    uint32_t g_401[2];
    uint32_t g_415;
    volatile uint32_t g_473;
    int64_t *g_476;
    int32_t g_511;
    volatile int16_t g_515;
    uint32_t g_516;
    int8_t ***g_564;
    int16_t *g_571;
    int64_t **g_583[4][8];
    int64_t *** volatile g_582;
    uint8_t g_609;
    int32_t * volatile g_613;
    int32_t * volatile * volatile g_665;
    volatile int8_t g_708;
    int32_t * volatile * volatile g_770;
    int32_t * volatile * volatile g_771[3][7][3];
    uint64_t g_820[2][3];
    int32_t g_850[5][8];
    volatile uint32_t * volatile g_857;
    volatile uint32_t * volatile * volatile g_856[1];
    uint64_t *g_867;
    int64_t g_873;
    uint32_t g_887;
    int32_t * volatile g_890;
    int32_t * volatile g_892;
    int32_t * volatile g_934;
    uint32_t * volatile g_965;
    uint32_t * volatile *g_964;
    uint32_t * volatile **g_963;
    int64_t *g_1118;
    uint64_t ***g_1144;
    int64_t g_1179;
    uint64_t *g_1217;
    uint64_t *g_1218;
    int64_t g_1235[7][6][6];
    int64_t *g_1289;
    volatile int16_t g_1297;
    volatile int64_t g_1299[1][3][6];
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
int32_t  func_1(struct S0 * p_1314);
int32_t ** func_12(int32_t * p_13, int32_t  p_14, uint32_t  p_15, int32_t  p_16, uint32_t  p_17, struct S0 * p_1314);
int64_t  func_21(int32_t ** p_22, struct S0 * p_1314);
int32_t ** func_23(int8_t  p_24, int64_t  p_25, int32_t * p_26, uint32_t  p_27, uint32_t  p_28, struct S0 * p_1314);
uint32_t  func_31(int32_t * p_32, int32_t ** p_33, int32_t  p_34, int32_t * p_35, uint32_t  p_36, struct S0 * p_1314);
uint16_t  func_37(int32_t ** p_38, uint32_t  p_39, struct S0 * p_1314);
int32_t ** func_40(int32_t ** p_41, int16_t  p_42, struct S0 * p_1314);
int64_t  func_43(int64_t  p_44, struct S0 * p_1314);
int32_t ** func_46(int32_t ** p_47, struct S0 * p_1314);
int32_t ** func_48(int32_t * p_49, struct S0 * p_1314);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1314->g_2 p_1314->g_4 p_1314->g_18 p_1314->g_54 p_1314->g_53 p_1314->g_571 p_1314->g_338 p_1314->g_867 p_1314->g_665 p_1314->g_613 p_1314->g_278
 * writes: p_1314->g_4 p_1314->g_18 p_1314->g_54 p_1314->g_53 p_1314->g_102 p_1314->g_271
 */
int32_t  func_1(struct S0 * p_1314)
{ /* block id: 4 */
    int32_t *l_5 = &p_1314->g_4;
    int32_t *l_6 = &p_1314->g_4;
    int32_t **l_7 = &l_6;
    int32_t ***l_1307 = &p_1314->g_53;
    int16_t l_1308 = (-6L);
    int16_t l_1309 = 0x6D2BL;
    uint32_t l_1310 = 0x124C6F7DL;
    int32_t l_1311 = (-1L);
    uint64_t ****l_1313 = &p_1314->g_1144;
    (*l_5) = p_1314->g_2;
    l_1311 ^= (((((*l_7) = l_6) == (((p_1314->g_4 ^ 0x34746A1CL) <= ((((*p_1314->g_867) = (safe_lshift_func_int16_t_s_s(((*p_1314->g_571) = (safe_sub_func_int32_t_s_s((&l_5 != ((*l_1307) = func_12(&p_1314->g_4, p_1314->g_2, p_1314->g_2, (*l_5), p_1314->g_18, p_1314))), 4294967295UL))), p_1314->g_338))) && (*l_5)) , l_1308)) , (*p_1314->g_665))) > l_1309) <= l_1310);
    l_1311 = ((*l_6) , (((safe_unary_minus_func_uint16_t_u(1UL)) || (-3L)) , ((*l_6) = (&p_1314->g_1144 != (p_1314->g_278 , l_1313)))));
    return (**l_7);
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_18 p_1314->g_4 p_1314->g_54 p_1314->g_53
 * writes: p_1314->g_18 p_1314->g_54
 */
int32_t ** func_12(int32_t * p_13, int32_t  p_14, uint32_t  p_15, int32_t  p_16, uint32_t  p_17, struct S0 * p_1314)
{ /* block id: 7 */
    int64_t l_98 = 0L;
    int32_t l_1017 = 0x355B5C6DL;
    int32_t l_1019[6][6] = {{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)}};
    uint32_t l_1049 = 0x4315A1EEL;
    uint64_t *l_1088 = &p_1314->g_181;
    int64_t **l_1109[8] = {&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476};
    int8_t ****l_1148 = &p_1314->g_564;
    int32_t **l_1150 = &p_1314->g_54;
    uint32_t l_1154 = 3UL;
    uint64_t l_1243 = 0x1B905977271A0C6DL;
    int16_t l_1264[8] = {0x2DC2L,(-9L),0x2DC2L,0x2DC2L,(-9L),0x2DC2L,0x2DC2L,(-9L)};
    uint8_t *l_1265 = &p_1314->g_609;
    int32_t l_1273 = 5L;
    uint8_t l_1300 = 254UL;
    int i, j;
    for (p_1314->g_18 = (-24); (p_1314->g_18 >= (-6)); p_1314->g_18 = safe_add_func_int8_t_s_s(p_1314->g_18, 3))
    { /* block id: 10 */
        int32_t l_45 = 0L;
        int32_t **l_281 = &p_1314->g_54;
        int64_t ***l_947 = &p_1314->g_583[2][5];
        for (p_14 = 8; (p_14 >= 0); p_14 -= 1)
        { /* block id: 13 */
            uint16_t *l_99[5] = {&p_1314->g_100[0][0],&p_1314->g_100[0][0],&p_1314->g_100[0][0],&p_1314->g_100[0][0],&p_1314->g_100[0][0]};
            int16_t *l_101[10] = {&p_1314->g_102,&p_1314->g_102,&p_1314->g_102,&p_1314->g_102,&p_1314->g_102,&p_1314->g_102,&p_1314->g_102,&p_1314->g_102,&p_1314->g_102,&p_1314->g_102};
            int32_t l_378 = 3L;
            int64_t ***l_948[5] = {&p_1314->g_583[2][4],&p_1314->g_583[2][4],&p_1314->g_583[2][4],&p_1314->g_583[2][4],&p_1314->g_583[2][4]};
            int8_t *l_960 = &p_1314->g_79;
            int i;
            if ((*p_13))
                break;
        }
    }
    for (p_15 = 21; (p_15 <= 39); ++p_15)
    { /* block id: 490 */
        int32_t *l_973[10] = {&p_1314->g_59,&p_1314->g_59,&p_1314->g_59,&p_1314->g_59,&p_1314->g_59,&p_1314->g_59,&p_1314->g_59,&p_1314->g_59,&p_1314->g_59,&p_1314->g_59};
        int8_t **l_979 = (void*)0;
        int8_t *l_981 = (void*)0;
        int8_t **l_980 = &l_981;
        int8_t *l_982[9] = {&p_1314->g_79,&p_1314->g_79,&p_1314->g_79,&p_1314->g_79,&p_1314->g_79,&p_1314->g_79,&p_1314->g_79,&p_1314->g_79,&p_1314->g_79};
        int64_t *l_994[6] = {&p_1314->g_150[5][0],&l_98,&p_1314->g_150[5][0],&p_1314->g_150[5][0],&l_98,&p_1314->g_150[5][0]};
        int64_t *l_996 = &p_1314->g_150[5][0];
        uint64_t l_1149[8] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
        uint32_t l_1184 = 4294967295UL;
        int64_t l_1298[8][2] = {{0x0EB32EDC86FCDD00L,0x0EB32EDC86FCDD00L},{0x0EB32EDC86FCDD00L,0x0EB32EDC86FCDD00L},{0x0EB32EDC86FCDD00L,0x0EB32EDC86FCDD00L},{0x0EB32EDC86FCDD00L,0x0EB32EDC86FCDD00L},{0x0EB32EDC86FCDD00L,0x0EB32EDC86FCDD00L},{0x0EB32EDC86FCDD00L,0x0EB32EDC86FCDD00L},{0x0EB32EDC86FCDD00L,0x0EB32EDC86FCDD00L},{0x0EB32EDC86FCDD00L,0x0EB32EDC86FCDD00L}};
        int i, j;
        if (l_98)
            break;
    }
    p_16 = (**l_1150);
    (*p_1314->g_53) = &p_16;
    return &p_1314->g_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_516 p_1314->g_53 p_1314->g_54 p_1314->g_278
 * writes: p_1314->g_516 p_1314->g_54 p_1314->g_278
 */
int64_t  func_21(int32_t ** p_22, struct S0 * p_1314)
{ /* block id: 251 */
    int32_t l_524[5] = {0x7C2D0B0BL,0x7C2D0B0BL,0x7C2D0B0BL,0x7C2D0B0BL,0x7C2D0B0BL};
    int8_t l_527[8] = {0x4CL,0x4CL,0x4CL,0x4CL,0x4CL,0x4CL,0x4CL,0x4CL};
    uint32_t *l_535[10] = {&p_1314->g_401[0],&p_1314->g_401[0],&p_1314->g_401[0],&p_1314->g_401[0],&p_1314->g_401[0],&p_1314->g_401[0],&p_1314->g_401[0],&p_1314->g_401[0],&p_1314->g_401[0],&p_1314->g_401[0]};
    int16_t *l_570 = &p_1314->g_102;
    uint32_t l_615 = 0UL;
    int32_t l_674 = 0x74383B28L;
    int32_t l_707 = 0L;
    int64_t l_709 = 0x3689E427FE5E037CL;
    uint16_t l_710 = 1UL;
    int32_t * volatile l_772 = &p_1314->g_278;/* VOLATILE GLOBAL l_772 */
    int32_t *l_788 = &l_524[2];
    uint16_t l_822[9];
    int32_t l_824 = 0x06AFF212L;
    uint32_t **l_853 = &l_535[5];
    int i;
    for (i = 0; i < 9; i++)
        l_822[i] = 0x1843L;
    for (p_1314->g_516 = 0; (p_1314->g_516 != 44); p_1314->g_516 = safe_add_func_int64_t_s_s(p_1314->g_516, 3))
    { /* block id: 254 */
        uint32_t *l_525 = (void*)0;
        uint32_t *l_526 = (void*)0;
        int32_t l_528[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
        uint32_t **l_536 = &l_535[6];
        uint16_t *l_539 = (void*)0;
        int32_t l_540 = 0L;
        uint8_t *l_560 = &p_1314->g_154[0][3][5];
        int8_t **l_563 = (void*)0;
        int8_t ***l_562[4];
        int32_t l_610[1][5];
        int16_t l_679 = 0x0BA4L;
        uint16_t l_785 = 0x20ABL;
        uint64_t *l_818 = &p_1314->g_271[2];
        int8_t l_842 = 0x40L;
        uint32_t l_843 = 4294967293UL;
        int i, j;
        for (i = 0; i < 4; i++)
            l_562[i] = &l_563;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
                l_610[i][j] = 8L;
        }
        (1 + 1);
    }
    (*p_1314->g_53) = &l_524[4];
    (*p_22) = &l_524[0];
    (*l_772) ^= (**p_22);
    return (*l_772);
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_102 p_1314->g_156 p_1314->g_271 p_1314->g_4 p_1314->g_269 p_1314->g_3 p_1314->g_53 p_1314->g_154 p_1314->g_54 p_1314->g_401 p_1314->g_150 p_1314->g_473 p_1314->g_274 p_1314->g_181 p_1314->g_2 p_1314->g_197 p_1314->g_476 p_1314->g_67 p_1314->g_511 p_1314->g_516
 * writes: p_1314->g_100 p_1314->g_2 p_1314->g_401 p_1314->g_271 p_1314->g_269 p_1314->g_3 p_1314->g_279 p_1314->g_154 p_1314->g_54 p_1314->g_473 p_1314->g_246 p_1314->g_476 p_1314->g_150 p_1314->g_67 p_1314->g_511 p_1314->g_415 p_1314->g_515
 */
int32_t ** func_23(int8_t  p_24, int64_t  p_25, int32_t * p_26, uint32_t  p_27, uint32_t  p_28, struct S0 * p_1314)
{ /* block id: 182 */
    uint32_t l_387 = 0UL;
    uint16_t *l_388 = &p_1314->g_100[0][0];
    int8_t *l_398 = &p_1314->g_79;
    int8_t **l_397 = &l_398;
    int8_t ***l_396 = &l_397;
    int8_t ****l_395 = &l_396;
    int32_t l_399 = (-1L);
    uint32_t *l_400[9][6] = {{&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1]},{&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1]},{&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1]},{&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1]},{&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1]},{&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1]},{&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1]},{&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1]},{&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1],&p_1314->g_401[1]}};
    int32_t l_402 = 0x1FEA2120L;
    uint64_t *l_403 = &p_1314->g_271[1];
    int16_t *l_404[5];
    int32_t l_405 = 3L;
    int32_t l_406 = (-1L);
    int32_t l_447[2][10] = {{(-1L),(-1L),0x0586A4F1L,0x37497E68L,(-5L),0x37497E68L,0x0586A4F1L,(-1L),(-1L),0x0586A4F1L},{(-1L),(-1L),0x0586A4F1L,0x37497E68L,(-5L),0x37497E68L,0x0586A4F1L,(-1L),(-1L),0x0586A4F1L}};
    uint8_t l_517 = 0x89L;
    int i, j;
    for (i = 0; i < 5; i++)
        l_404[i] = &p_1314->g_102;
    if ((l_406 |= ((+(((p_1314->g_102 && (l_405 |= (+(((+(safe_mod_func_uint8_t_u_u((safe_add_func_int64_t_s_s(p_28, p_1314->g_156[0])), (safe_mul_func_int16_t_s_s(p_25, ((safe_sub_func_uint32_t_u_u(((((*l_388) = (l_387 > FAKE_DIVERGE(p_1314->local_2_offset, get_local_id(2), 10))) , 0UL) | ((*l_403) ^= ((p_1314->g_401[1] = (safe_add_func_uint32_t_u_u((l_402 = ((safe_mul_func_uint16_t_u_u(l_387, l_387)) , (safe_div_func_int64_t_s_s((l_399 = (p_1314->g_2 = (l_395 != &l_396))), l_387)))), 0x557BBE89L))) ^ 0xBAFCFDFDL))), (*p_26))) > p_27)))))) && 0x4AL) > l_387)))) , 0L) < 0UL)) < 4294967289UL)))
    { /* block id: 191 */
        int32_t **l_407 = &p_1314->g_54;
        l_406 &= 0L;
        return l_407;
    }
    else
    { /* block id: 194 */
        int32_t **l_410 = &p_1314->g_54;
        uint32_t l_412 = 0UL;
        int32_t l_438 = 0x720E64BFL;
        int32_t l_442 = 0L;
        int32_t l_444 = 1L;
        int32_t l_445 = 0x0975EC5DL;
        int32_t l_448 = 0x0395C168L;
        int32_t l_452[6] = {6L,6L,6L,6L,6L,6L};
        int8_t l_512 = 1L;
        int i;
        for (p_28 = 11; (p_28 > 47); p_28++)
        { /* block id: 197 */
            uint32_t l_430 = 4294967286UL;
            int32_t l_432 = 1L;
            int32_t l_435 = 0x460CDC5DL;
            int32_t l_441 = 0x5F97EA1EL;
            int32_t l_443 = 0x4C0B949EL;
            int32_t l_446 = 0x57154D09L;
            int32_t l_449 = 0x29278574L;
            int32_t l_450 = 1L;
            int32_t l_454 = 1L;
            int32_t l_456 = 0L;
            int32_t l_464 = 1L;
            int32_t l_470 = 0x584251EFL;
            int32_t l_471 = 2L;
            int32_t l_472 = 0x1E25248CL;
            for (p_1314->g_269 = 8; (p_1314->g_269 >= 3); p_1314->g_269 -= 1)
            { /* block id: 200 */
                uint8_t l_429[9][3][2] = {{{0x2FL,255UL},{0x2FL,255UL},{0x2FL,255UL}},{{0x2FL,255UL},{0x2FL,255UL},{0x2FL,255UL}},{{0x2FL,255UL},{0x2FL,255UL},{0x2FL,255UL}},{{0x2FL,255UL},{0x2FL,255UL},{0x2FL,255UL}},{{0x2FL,255UL},{0x2FL,255UL},{0x2FL,255UL}},{{0x2FL,255UL},{0x2FL,255UL},{0x2FL,255UL}},{{0x2FL,255UL},{0x2FL,255UL},{0x2FL,255UL}},{{0x2FL,255UL},{0x2FL,255UL},{0x2FL,255UL}},{{0x2FL,255UL},{0x2FL,255UL},{0x2FL,255UL}}};
                int32_t l_437 = 0x5442C60AL;
                int32_t l_451 = 0x4D0144CDL;
                int32_t l_453 = 0x0A38562DL;
                int32_t l_455 = (-1L);
                int32_t l_457 = (-1L);
                int32_t l_459 = (-8L);
                int32_t l_460 = (-6L);
                int32_t l_463 = (-5L);
                int32_t l_465 = 0x4DFC1889L;
                int32_t l_466 = 0x0F2AA4A1L;
                int32_t l_467 = 4L;
                int32_t l_468 = 0x4C3E66ADL;
                int32_t l_469[9][2] = {{0x068E2ABDL,5L},{0x068E2ABDL,5L},{0x068E2ABDL,5L},{0x068E2ABDL,5L},{0x068E2ABDL,5L},{0x068E2ABDL,5L},{0x068E2ABDL,5L},{0x068E2ABDL,5L},{0x068E2ABDL,5L}};
                int i, j, k;
                for (l_405 = 3; (l_405 >= 0); l_405 -= 1)
                { /* block id: 203 */
                    int32_t l_458 = 0x57C5B49FL;
                    int32_t l_461 = 0L;
                    int32_t l_462[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_462[i] = 0x2147518CL;
                    p_1314->g_3[p_1314->g_269] = p_1314->g_3[p_1314->g_269];
                    for (p_1314->g_279 = 0; (p_1314->g_279 <= 0); p_1314->g_279 += 1)
                    { /* block id: 207 */
                        int i;
                        p_1314->g_3[p_1314->g_269] = p_1314->g_3[p_1314->g_269];
                        return l_410;
                    }
                    for (l_406 = 0; (l_406 <= 3); l_406 += 1)
                    { /* block id: 213 */
                        uint8_t *l_413 = &p_1314->g_154[0][3][5];
                        uint32_t *l_414[10][3][2] = {{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}},{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}},{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}},{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}},{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}},{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}},{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}},{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}},{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}},{{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415},{&p_1314->g_415,&p_1314->g_415}}};
                        int32_t *l_417 = (void*)0;
                        int32_t **l_416 = &l_417;
                        int8_t l_418 = 0x32L;
                        int32_t *l_431 = &l_402;
                        int32_t *l_433 = &p_1314->g_278;
                        int32_t *l_434 = &p_1314->g_59;
                        int32_t *l_436 = &l_432;
                        int32_t *l_439 = &p_1314->g_59;
                        int32_t *l_440[4][1][3] = {{{&l_432,&l_432,&l_432}},{{&l_432,&l_432,&l_432}},{{&l_432,&l_432,&l_432}},{{&l_432,&l_432,&l_432}}};
                        int i, j, k;
                        p_1314->g_3[(l_405 + 4)] = p_1314->g_3[p_1314->g_269];
                        (*l_416) = ((*p_1314->g_53) = (((*l_413) = ((safe_unary_minus_func_int8_t_s(p_28)) >= l_412)) , ((p_27 |= 0xD8D64C39L) , l_400[(l_405 + 1)][l_406])));
                        (*l_431) ^= ((l_418 ^ FAKE_DIVERGE(p_1314->global_1_offset, get_global_id(1), 10)) , ((safe_add_func_uint64_t_u_u((safe_div_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((p_24 , (-5L)), 1)), ((((safe_lshift_func_int8_t_s_s((safe_div_func_int64_t_s_s(((p_25 ^ (p_1314->g_154[0][3][0] | (**l_410))) <= (((+((void*)0 != &p_1314->g_3[p_1314->g_269])) != (l_430 = (l_429[6][0][0] = 0x5633L))) <= p_1314->g_150[5][0])), 1UL)), p_25)) , p_1314->g_401[0]) , FAKE_DIVERGE(p_1314->group_1_offset, get_group_id(1), 10)) ^ GROUP_DIVERGE(2, 1)))), 0x91BCEE16E1ACF838L)) <= (**l_410)));
                        p_1314->g_473++;
                    }
                    if (l_471)
                        break;
                }
                for (p_1314->g_246 = 0; (p_1314->g_246 <= 3); p_1314->g_246 += 1)
                { /* block id: 228 */
                    int16_t l_479 = 0x4CEEL;
                    int32_t l_480[6][6] = {{1L,0x37FB6AB5L,0x37FB6AB5L,1L,0x5B3631E3L,0x02F43B28L},{1L,0x37FB6AB5L,0x37FB6AB5L,1L,0x5B3631E3L,0x02F43B28L},{1L,0x37FB6AB5L,0x37FB6AB5L,1L,0x5B3631E3L,0x02F43B28L},{1L,0x37FB6AB5L,0x37FB6AB5L,1L,0x5B3631E3L,0x02F43B28L},{1L,0x37FB6AB5L,0x37FB6AB5L,1L,0x5B3631E3L,0x02F43B28L},{1L,0x37FB6AB5L,0x37FB6AB5L,1L,0x5B3631E3L,0x02F43B28L}};
                    int32_t *l_481 = (void*)0;
                    int32_t *l_482 = &l_456;
                    int i, j;
                    l_437 = ((&p_1314->g_2 != (p_1314->g_476 = &p_1314->g_150[2][0])) <= (safe_sub_func_uint16_t_u_u((p_1314->g_274 == (4294967289UL | p_1314->g_274)), l_479)));
                    l_480[4][2] |= (**p_1314->g_53);
                    (*l_482) &= 0L;
                }
                p_1314->g_3[p_1314->g_269] = p_1314->g_3[p_1314->g_269];
            }
            for (p_1314->g_269 = 1; (p_1314->g_269 <= 4); p_1314->g_269 += 1)
            { /* block id: 238 */
                uint8_t *l_485 = &p_1314->g_154[0][5][1];
                int32_t l_486[5] = {0x7AB0B3BAL,0x7AB0B3BAL,0x7AB0B3BAL,0x7AB0B3BAL,0x7AB0B3BAL};
                int32_t l_507 = 0L;
                uint8_t *l_508 = (void*)0;
                uint8_t *l_509 = (void*)0;
                uint8_t *l_510[10][1] = {{&p_1314->g_154[1][1][1]},{&p_1314->g_154[1][1][1]},{&p_1314->g_154[1][1][1]},{&p_1314->g_154[1][1][1]},{&p_1314->g_154[1][1][1]},{&p_1314->g_154[1][1][1]},{&p_1314->g_154[1][1][1]},{&p_1314->g_154[1][1][1]},{&p_1314->g_154[1][1][1]},{&p_1314->g_154[1][1][1]}};
                uint32_t *l_513 = &p_1314->g_415;
                int8_t ***l_514[2];
                int i, j;
                for (i = 0; i < 2; i++)
                    l_514[i] = &l_397;
                l_486[1] = (1UL == (safe_sub_func_int64_t_s_s(((((((!(((void*)0 != l_485) > (*p_26))) , 18446744073709551615UL) ^ l_441) >= p_1314->g_181) , &p_1314->g_274) == ((((((*p_26) ^ 4L) ^ (*p_1314->g_54)) | p_27) || p_1314->g_2) , (void*)0)), p_24)));
                p_1314->g_515 = (((((((p_1314->g_269 , (((*l_513) = ((safe_div_func_uint16_t_u_u(((p_1314->g_197[5][0][2] <= (safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1314->global_0_offset, get_global_id(0), 10), (safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((**l_410), 0x28L)), p_25)), (safe_add_func_int64_t_s_s(((safe_add_func_int8_t_s_s(p_1314->g_154[0][3][5], (safe_lshift_func_uint8_t_u_u((p_1314->g_511 |= (((*p_1314->g_476) ^= (p_27 ^ ((*l_403) = (safe_mod_func_uint16_t_u_u(((safe_mod_func_int8_t_s_s((((((void*)0 != &l_486[1]) < 0xED2EL) ^ p_28) && p_1314->g_181), p_25)) && p_25), l_507))))) , 3UL)), 7)))) > l_512), l_450))))))) , l_486[4]), l_472)) & p_24)) , l_514[0])) == l_514[0]) ^ l_486[1]) || (**l_410)) , l_399) | 0L) , 1L);
            }
        }
        l_517 = p_1314->g_516;
    }
    l_399 &= (p_27 != (0xCDE3L != (safe_mul_func_int32_t_s_s(l_517, (!p_28)))));
    return &p_1314->g_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_181 p_1314->g_121 p_1314->g_2 p_1314->g_4 p_1314->g_269 p_1314->g_279 p_1314->g_150 p_1314->g_59 p_1314->g_154 p_1314->g_100 p_1314->g_271 p_1314->g_79 p_1314->g_197 p_1314->g_338 p_1314->g_274 p_1314->g_67
 * writes: p_1314->g_181 p_1314->g_59 p_1314->g_2 p_1314->g_269 p_1314->g_338 p_1314->g_278 p_1314->g_67
 */
uint32_t  func_31(int32_t * p_32, int32_t ** p_33, int32_t  p_34, int32_t * p_35, uint32_t  p_36, struct S0 * p_1314)
{ /* block id: 141 */
    int64_t l_286 = 0x65621D0C6E348D3EL;
    int32_t l_299 = 0x0D2C7DCDL;
    int32_t l_300[2][8] = {{7L,0x0682BDF8L,(-3L),0x0682BDF8L,7L,7L,0x0682BDF8L,(-3L)},{7L,0x0682BDF8L,(-3L),0x0682BDF8L,7L,7L,0x0682BDF8L,(-3L)}};
    int8_t l_308[5][8][6] = {{{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)}},{{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)}},{{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)}},{{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)}},{{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)},{9L,0x74L,0x1AL,0x3FL,(-4L),(-1L)}}};
    int64_t l_325 = 1L;
    int32_t *l_369 = &p_1314->g_269;
    int32_t *l_370[4] = {&p_1314->g_278,&p_1314->g_278,&p_1314->g_278,&p_1314->g_278};
    uint64_t l_371[1];
    uint8_t l_374 = 248UL;
    int16_t l_377 = 1L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_371[i] = 18446744073709551606UL;
    for (p_1314->g_181 = (-12); (p_1314->g_181 > 43); p_1314->g_181 = safe_add_func_uint64_t_u_u(p_1314->g_181, 2))
    { /* block id: 144 */
        int32_t l_289[6][2] = {{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}};
        int32_t l_292 = 0L;
        int32_t l_298 = 0L;
        int32_t l_301 = 1L;
        int32_t l_302 = 0x6B6975B6L;
        int32_t l_303 = 0x30C2D3A3L;
        int32_t l_304 = 0x5BC6D1B6L;
        int32_t l_305 = 0x485EE6CBL;
        int32_t l_306 = 0x0B42B693L;
        int32_t l_307[3];
        uint32_t l_309[7] = {0x3CE3962BL,0xF75007F9L,0x3CE3962BL,0x3CE3962BL,0xF75007F9L,0x3CE3962BL,0x3CE3962BL};
        uint32_t l_312 = 0xF53A8C21L;
        uint16_t *l_333 = (void*)0;
        uint16_t *l_334[4] = {&p_1314->g_156[0],&p_1314->g_156[0],&p_1314->g_156[0],&p_1314->g_156[0]};
        uint16_t l_365 = 0xFBB4L;
        int i, j;
        for (i = 0; i < 3; i++)
            l_307[i] = 0x5B3398E5L;
        (*p_1314->g_121) = (safe_add_func_int64_t_s_s(0x2261CC5E2536E0C4L, l_286));
        for (p_1314->g_2 = 17; (p_1314->g_2 >= 19); p_1314->g_2 = safe_add_func_int8_t_s_s(p_1314->g_2, 6))
        { /* block id: 148 */
            int32_t *l_290 = &p_1314->g_278;
            int32_t *l_291 = &p_1314->g_269;
            int32_t *l_293 = &p_1314->g_269;
            int32_t l_294 = 4L;
            int32_t *l_295 = &l_292;
            int32_t *l_296 = &p_1314->g_278;
            int32_t *l_297[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            --l_309[1];
            ++l_312;
            (*l_293) |= (*p_35);
        }
        if ((+((safe_mod_func_uint32_t_u_u(p_36, (((safe_mod_func_uint64_t_u_u((((((safe_lshift_func_uint16_t_u_s(((l_307[0] || (p_1314->g_279 <= ((safe_rshift_func_uint16_t_u_s((l_300[0][3] = ((~(((l_308[1][1][1] && p_1314->g_150[2][0]) & ((((safe_mod_func_uint64_t_u_u(l_325, (safe_add_func_uint64_t_u_u((safe_unary_minus_func_uint16_t_u(((safe_sub_func_int64_t_s_s((p_34 == (safe_rshift_func_uint8_t_u_s((0xE4L | 0UL), 2))), 18446744073709551615UL)) , p_34))), p_36)))) || 7UL) , p_1314->g_2) , l_308[1][6][3])) , (*p_1314->g_121))) <= l_308[1][1][1])), p_1314->g_154[1][5][5])) == l_286))) != p_34), 4)) || p_1314->g_100[0][0]) != p_1314->g_150[5][0]) <= p_34) || FAKE_DIVERGE(p_1314->local_2_offset, get_local_id(2), 10)), p_34)) && p_1314->g_271[0]) || l_306))) , 0L)))
        { /* block id: 154 */
            int32_t *l_335 = &l_307[0];
            (*l_335) = (p_1314->g_79 <= 0x6003L);
        }
        else
        { /* block id: 156 */
            uint32_t l_345 = 0x3E6A64C0L;
            int32_t l_346 = 0x104C3FD4L;
            int32_t l_347[4] = {0x29D06EE5L,0x29D06EE5L,0x29D06EE5L,0x29D06EE5L};
            int i;
            l_347[2] |= (l_300[0][3] &= ((p_1314->g_197[1][0][0] ^ (FAKE_DIVERGE(p_1314->local_2_offset, get_local_id(2), 10) >= ((p_1314->g_338 &= (p_1314->g_100[0][0] && (0L || 0x3BL))) && (safe_rshift_func_uint16_t_u_s(9UL, (p_1314->g_59 >= ((((l_345 = ((((safe_mul_func_uint8_t_u_u((p_1314->g_154[0][1][2] == 0x50ECL), ((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), 18446744073709551611UL)) , p_34))) && p_1314->g_100[0][0]) || 0L) && l_305)) ^ p_1314->g_274) | p_1314->g_269) , (*p_35)))))))) == l_346));
        }
        for (l_292 = 0; (l_292 == 18); l_292 = safe_add_func_uint64_t_u_u(l_292, 5))
        { /* block id: 164 */
            int32_t **l_355[2];
            int64_t *l_366 = (void*)0;
            int64_t *l_367 = &p_1314->g_67;
            int64_t *l_368 = &p_1314->g_2;
            int i;
            for (i = 0; i < 2; i++)
                l_355[i] = &p_1314->g_54;
            for (p_1314->g_2 = (-2); (p_1314->g_2 == 1); p_1314->g_2 = safe_add_func_int8_t_s_s(p_1314->g_2, 4))
            { /* block id: 167 */
                int32_t *l_352 = &p_1314->g_278;
                (*l_352) = (-1L);
                if ((*p_32))
                    continue;
            }
            l_302 = (l_299 = ((*p_1314->g_121) = ((0x7D3F875BAF3513F0L >= (((*l_368) = ((*l_367) ^= ((safe_sub_func_uint8_t_u_u((l_355[0] == (void*)0), (p_1314->g_4 , (safe_sub_func_int32_t_s_s((((l_298 = p_34) && p_34) <= ((((safe_unary_minus_func_int16_t_s((safe_mul_func_uint8_t_u_u((p_1314->g_279 | (safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(p_1314->g_181, (p_1314->g_59 == p_34))) ^ p_1314->g_150[3][0]), p_34))), p_1314->g_154[0][5][4])))) <= l_365) != (-7L)) >= 0xA6L)), FAKE_DIVERGE(p_1314->group_1_offset, get_group_id(1), 10)))))) && FAKE_DIVERGE(p_1314->global_1_offset, get_global_id(1), 10)))) < 0x6786BAD744F6EB2CL)) && 1UL)));
        }
    }
    l_371[0]++;
    l_374++;
    return l_377;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_37(int32_t ** p_38, uint32_t  p_39, struct S0 * p_1314)
{ /* block id: 139 */
    uint8_t l_280[8][1][3] = {{{9UL,0xFBL,9UL}},{{9UL,0xFBL,9UL}},{{9UL,0xFBL,9UL}},{{9UL,0xFBL,9UL}},{{9UL,0xFBL,9UL}},{{9UL,0xFBL,9UL}},{{9UL,0xFBL,9UL}},{{9UL,0xFBL,9UL}}};
    int i, j, k;
    return l_280[3][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_67
 * writes: p_1314->g_67
 */
int32_t ** func_40(int32_t ** p_41, int16_t  p_42, struct S0 * p_1314)
{ /* block id: 30 */
    uint32_t l_108[5];
    int32_t l_118 = 0x33C04BDEL;
    uint32_t l_168 = 0x72AC288FL;
    int16_t *l_192 = &p_1314->g_102;
    int32_t l_193 = 0x445FBFB9L;
    int8_t *l_196 = &p_1314->g_79;
    int8_t **l_195[8] = {(void*)0,&l_196,(void*)0,(void*)0,&l_196,(void*)0,(void*)0,&l_196};
    int8_t ***l_194 = &l_195[3];
    int64_t l_232 = 9L;
    uint8_t l_272 = 9UL;
    uint16_t l_277[4][5][1] = {{{0x62D5L},{0x62D5L},{0x62D5L},{0x62D5L},{0x62D5L}},{{0x62D5L},{0x62D5L},{0x62D5L},{0x62D5L},{0x62D5L}},{{0x62D5L},{0x62D5L},{0x62D5L},{0x62D5L},{0x62D5L}},{{0x62D5L},{0x62D5L},{0x62D5L},{0x62D5L},{0x62D5L}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_108[i] = 0x7CEEFDE0L;
    for (p_1314->g_67 = 0; (p_1314->g_67 >= 0); p_1314->g_67 -= 1)
    { /* block id: 33 */
        int16_t *l_105[5][7][1] = {{{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102}},{{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102}},{{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102}},{{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102}},{{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102},{&p_1314->g_102}}};
        int32_t l_109 = 0L;
        int32_t *l_119 = &l_109;
        int32_t l_161 = 0L;
        int32_t l_162 = 0x005AE8A6L;
        int i, j, k;
        (1 + 1);
    }
    return &p_1314->g_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_18
 * writes:
 */
int64_t  func_43(int64_t  p_44, struct S0 * p_1314)
{ /* block id: 15 */
    return p_1314->g_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_2 p_1314->g_4 p_1314->g_59 p_1314->g_18
 * writes: p_1314->g_79
 */
int32_t ** func_46(int32_t ** p_47, struct S0 * p_1314)
{ /* block id: 20 */
    int16_t l_57 = 3L;
    int32_t l_66[5] = {0x74B9EFECL,0x74B9EFECL,0x74B9EFECL,0x74B9EFECL,0x74B9EFECL};
    int32_t **l_85 = &p_1314->g_54;
    int i;
    if ((safe_mul_func_int8_t_s_s((p_1314->g_2 , ((l_57 , (void*)0) != (void*)0)), p_1314->g_4)))
    { /* block id: 21 */
        int32_t *l_58 = &p_1314->g_59;
        int32_t *l_60 = (void*)0;
        int32_t *l_61 = &p_1314->g_59;
        int32_t *l_62 = &p_1314->g_59;
        int32_t *l_63 = &p_1314->g_59;
        int32_t *l_64 = (void*)0;
        int32_t *l_65[3];
        uint64_t l_68 = 8UL;
        int i;
        for (i = 0; i < 3; i++)
            l_65[i] = &p_1314->g_59;
        l_68++;
    }
    else
    { /* block id: 23 */
        int32_t l_75[7] = {0x2BC15DB8L,0x2BC15DB8L,0x2BC15DB8L,0x2BC15DB8L,0x2BC15DB8L,0x2BC15DB8L,0x2BC15DB8L};
        int8_t *l_78 = &p_1314->g_79;
        int32_t l_84 = 0x07CD7C51L;
        int i;
        l_84 &= (!((safe_lshift_func_uint16_t_u_u(l_66[1], 11)) != ((((((safe_sub_func_int8_t_s_s(l_75[4], (l_75[3] , ((*l_78) = ((safe_sub_func_int64_t_s_s(l_66[1], l_66[1])) , p_1314->g_59))))) == l_75[6]) , ((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(l_75[4], p_1314->g_18)), (-1L))) & 255UL)) > l_75[6]) | 0x56AA3FDDL) || 0xF51ED022C1C42294L)));
    }
    return l_85;
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_53
 * writes:
 */
int32_t ** func_48(int32_t * p_49, struct S0 * p_1314)
{ /* block id: 17 */
    int32_t l_50 = (-8L);
    int32_t *l_52 = &p_1314->g_4;
    int32_t **l_51 = &l_52;
    (*p_49) = l_50;
    return p_1314->g_53;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1315;
    struct S0* p_1314 = &c_1315;
    struct S0 c_1316 = {
        (-1L), // p_1314->g_2
        0x11738AB6L, // p_1314->g_4
        {&p_1314->g_4,&p_1314->g_4,&p_1314->g_4,&p_1314->g_4,&p_1314->g_4,&p_1314->g_4,&p_1314->g_4,&p_1314->g_4,&p_1314->g_4}, // p_1314->g_3
        0x778DL, // p_1314->g_18
        &p_1314->g_4, // p_1314->g_54
        &p_1314->g_54, // p_1314->g_53
        0x39622CFBL, // p_1314->g_59
        2L, // p_1314->g_67
        1L, // p_1314->g_79
        {{0xFDF8L}}, // p_1314->g_100
        (-1L), // p_1314->g_102
        {&p_1314->g_59,&p_1314->g_59,&p_1314->g_59}, // p_1314->g_120
        &p_1314->g_59, // p_1314->g_121
        {{0x15ECA5D8F89870F3L},{0x15ECA5D8F89870F3L},{0x15ECA5D8F89870F3L},{0x15ECA5D8F89870F3L},{0x15ECA5D8F89870F3L},{0x15ECA5D8F89870F3L},{0x15ECA5D8F89870F3L},{0x15ECA5D8F89870F3L}}, // p_1314->g_150
        {{{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L}},{{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L},{1UL,0x38L,1UL,0x23L,255UL,0x23L}}}, // p_1314->g_154
        {0xBA58L}, // p_1314->g_156
        &p_1314->g_79, // p_1314->g_173
        &p_1314->g_173, // p_1314->g_172
        &p_1314->g_172, // p_1314->g_174
        0x70E7266255C8574BL, // p_1314->g_181
        {{{(-9L),0x1DE2L,0x229CL,0x1DE2L}},{{(-9L),0x1DE2L,0x229CL,0x1DE2L}},{{(-9L),0x1DE2L,0x229CL,0x1DE2L}},{{(-9L),0x1DE2L,0x229CL,0x1DE2L}},{{(-9L),0x1DE2L,0x229CL,0x1DE2L}},{{(-9L),0x1DE2L,0x229CL,0x1DE2L}}}, // p_1314->g_197
        (void*)0, // p_1314->g_235
        6L, // p_1314->g_246
        9L, // p_1314->g_269
        {18446744073709551606UL,18446744073709551606UL,18446744073709551606UL,18446744073709551606UL}, // p_1314->g_271
        0xD608B5A751367170L, // p_1314->g_274
        (-1L), // p_1314->g_278
        0x00D0L, // p_1314->g_279
        0UL, // p_1314->g_338
        {1UL,1UL}, // p_1314->g_401
        4294967291UL, // p_1314->g_415
        0x90BA02CAL, // p_1314->g_473
        &p_1314->g_67, // p_1314->g_476
        0x7F5D59ACL, // p_1314->g_511
        0x041FL, // p_1314->g_515
        4UL, // p_1314->g_516
        (void*)0, // p_1314->g_564
        &p_1314->g_102, // p_1314->g_571
        {{&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476},{&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476},{&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476},{&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476,&p_1314->g_476}}, // p_1314->g_583
        &p_1314->g_583[2][5], // p_1314->g_582
        255UL, // p_1314->g_609
        &p_1314->g_269, // p_1314->g_613
        &p_1314->g_613, // p_1314->g_665
        1L, // p_1314->g_708
        (void*)0, // p_1314->g_770
        {{{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]}},{{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]}},{{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]},{&p_1314->g_613,&p_1314->g_54,&p_1314->g_3[1]}}}, // p_1314->g_771
        {{0UL,0UL,0UL},{0UL,0UL,0UL}}, // p_1314->g_820
        {{0x5A6CE8D6L,(-1L),0L,0x249A16F0L,(-2L),0x5A6CE8D6L,0x249A16F0L,0x1DF5B2E3L},{0x5A6CE8D6L,(-1L),0L,0x249A16F0L,(-2L),0x5A6CE8D6L,0x249A16F0L,0x1DF5B2E3L},{0x5A6CE8D6L,(-1L),0L,0x249A16F0L,(-2L),0x5A6CE8D6L,0x249A16F0L,0x1DF5B2E3L},{0x5A6CE8D6L,(-1L),0L,0x249A16F0L,(-2L),0x5A6CE8D6L,0x249A16F0L,0x1DF5B2E3L},{0x5A6CE8D6L,(-1L),0L,0x249A16F0L,(-2L),0x5A6CE8D6L,0x249A16F0L,0x1DF5B2E3L}}, // p_1314->g_850
        &p_1314->g_473, // p_1314->g_857
        {&p_1314->g_857}, // p_1314->g_856
        &p_1314->g_271[0], // p_1314->g_867
        8L, // p_1314->g_873
        1UL, // p_1314->g_887
        (void*)0, // p_1314->g_890
        &p_1314->g_269, // p_1314->g_892
        &p_1314->g_278, // p_1314->g_934
        &p_1314->g_401[0], // p_1314->g_965
        &p_1314->g_965, // p_1314->g_964
        &p_1314->g_964, // p_1314->g_963
        &p_1314->g_873, // p_1314->g_1118
        (void*)0, // p_1314->g_1144
        (-1L), // p_1314->g_1179
        &p_1314->g_820[0][0], // p_1314->g_1217
        &p_1314->g_820[1][0], // p_1314->g_1218
        {{{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L}},{{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L}},{{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L}},{{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L}},{{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L}},{{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L}},{{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L},{(-6L),(-1L),1L,0x0B1B43DB99554376L,(-1L),0x5E3B161D70F81454L}}}, // p_1314->g_1235
        &p_1314->g_873, // p_1314->g_1289
        (-1L), // p_1314->g_1297
        {{{0L,1L,1L,0L,0L,1L},{0L,1L,1L,0L,0L,1L},{0L,1L,1L,0L,0L,1L}}}, // p_1314->g_1299
        sequence_input[get_global_id(0)], // p_1314->global_0_offset
        sequence_input[get_global_id(1)], // p_1314->global_1_offset
        sequence_input[get_global_id(2)], // p_1314->global_2_offset
        sequence_input[get_local_id(0)], // p_1314->local_0_offset
        sequence_input[get_local_id(1)], // p_1314->local_1_offset
        sequence_input[get_local_id(2)], // p_1314->local_2_offset
        sequence_input[get_group_id(0)], // p_1314->group_0_offset
        sequence_input[get_group_id(1)], // p_1314->group_1_offset
        sequence_input[get_group_id(2)], // p_1314->group_2_offset
    };
    c_1315 = c_1316;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1314);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1314->g_2, "p_1314->g_2", print_hash_value);
    transparent_crc(p_1314->g_4, "p_1314->g_4", print_hash_value);
    transparent_crc(p_1314->g_18, "p_1314->g_18", print_hash_value);
    transparent_crc(p_1314->g_59, "p_1314->g_59", print_hash_value);
    transparent_crc(p_1314->g_67, "p_1314->g_67", print_hash_value);
    transparent_crc(p_1314->g_79, "p_1314->g_79", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1314->g_100[i][j], "p_1314->g_100[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1314->g_102, "p_1314->g_102", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1314->g_150[i][j], "p_1314->g_150[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1314->g_154[i][j][k], "p_1314->g_154[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1314->g_156[i], "p_1314->g_156[i]", print_hash_value);

    }
    transparent_crc(p_1314->g_181, "p_1314->g_181", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1314->g_197[i][j][k], "p_1314->g_197[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1314->g_246, "p_1314->g_246", print_hash_value);
    transparent_crc(p_1314->g_269, "p_1314->g_269", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1314->g_271[i], "p_1314->g_271[i]", print_hash_value);

    }
    transparent_crc(p_1314->g_274, "p_1314->g_274", print_hash_value);
    transparent_crc(p_1314->g_278, "p_1314->g_278", print_hash_value);
    transparent_crc(p_1314->g_279, "p_1314->g_279", print_hash_value);
    transparent_crc(p_1314->g_338, "p_1314->g_338", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1314->g_401[i], "p_1314->g_401[i]", print_hash_value);

    }
    transparent_crc(p_1314->g_415, "p_1314->g_415", print_hash_value);
    transparent_crc(p_1314->g_473, "p_1314->g_473", print_hash_value);
    transparent_crc(p_1314->g_511, "p_1314->g_511", print_hash_value);
    transparent_crc(p_1314->g_515, "p_1314->g_515", print_hash_value);
    transparent_crc(p_1314->g_516, "p_1314->g_516", print_hash_value);
    transparent_crc(p_1314->g_609, "p_1314->g_609", print_hash_value);
    transparent_crc(p_1314->g_708, "p_1314->g_708", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1314->g_820[i][j], "p_1314->g_820[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1314->g_850[i][j], "p_1314->g_850[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1314->g_873, "p_1314->g_873", print_hash_value);
    transparent_crc(p_1314->g_887, "p_1314->g_887", print_hash_value);
    transparent_crc(p_1314->g_1179, "p_1314->g_1179", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1314->g_1235[i][j][k], "p_1314->g_1235[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1314->g_1297, "p_1314->g_1297", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1314->g_1299[i][j][k], "p_1314->g_1299[i][j][k]", print_hash_value);

            }
        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
