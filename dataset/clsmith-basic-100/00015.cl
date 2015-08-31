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


// Seed: 15

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   int8_t * f1;
   int32_t  f2;
};

union U1 {
   int64_t  f0;
   int32_t  f1;
   volatile int32_t  f2;
   volatile int32_t  f3;
};

union U2 {
   int8_t * f0;
};

union U3 {
   volatile int64_t  f0;
   volatile uint64_t  f1;
   int32_t  f2;
   volatile uint64_t  f3;
};

struct S4 {
    int32_t g_2;
    volatile int32_t g_5;
    volatile int32_t g_6;
    int32_t g_7;
    volatile int32_t g_10[5];
    int32_t g_11;
    volatile int8_t g_25;
    volatile int8_t g_26;
    volatile int8_t *g_24[9];
    int8_t g_50;
    int32_t * volatile *g_71;
    int32_t *g_73;
    int32_t **g_72;
    int16_t g_80;
    int32_t g_88[4];
    int16_t g_100;
    uint32_t g_114;
    int8_t g_118[6][9];
    int64_t g_136;
    uint32_t g_138;
    uint8_t g_171;
    uint64_t g_173;
    union U2 g_174;
    int32_t g_175;
    int32_t **g_177;
    uint64_t g_216;
    int32_t g_220;
    uint16_t g_246;
    int32_t ***g_265;
    uint16_t g_284;
    volatile union U3 g_287;
    volatile union U3 *g_286;
    volatile union U3 g_289;
    uint16_t g_329;
    uint16_t g_331;
    uint64_t g_344;
    uint32_t g_364;
    union U1 g_366;
    union U1 g_368;
    union U3 *g_400;
    union U3 g_402;
    union U3 g_403[2];
    union U3 g_404;
    union U3 g_405;
    union U3 g_406;
    union U3 g_407;
    union U3 g_408;
    union U3 g_409;
    union U3 g_410;
    union U3 g_411[4];
    union U3 g_412;
    union U3 g_413;
    union U3 g_414;
    union U3 g_415;
    union U3 g_416;
    union U3 g_417;
    union U3 g_418;
    union U3 g_419;
    union U3 g_420;
    union U3 g_421;
    union U3 g_422;
    union U3 g_423[1];
    int64_t g_435;
    int8_t g_440[1][4][5];
    union U0 g_488;
    union U2 g_507[1][10][1];
    int64_t g_513;
    int32_t *g_520;
    int16_t g_531;
    uint32_t *g_589;
    volatile union U3 g_723[3];
    uint8_t g_772;
    int32_t ** volatile g_779;
    int32_t *g_817[1];
    int32_t ** volatile g_816[8][9][2];
    union U0 *g_823;
    union U0 ** volatile g_822[7];
    union U0 ** volatile g_824;
    int32_t g_868;
    int32_t **g_878;
    int32_t *g_900;
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
uint64_t  func_1(struct S4 * p_907);
int32_t * func_14(uint64_t  p_15, int32_t  p_16, int32_t * p_17, struct S4 * p_907);
int32_t  func_18(uint32_t  p_19, uint32_t  p_20, union U0  p_21, int64_t  p_22, int8_t * p_23, struct S4 * p_907);
int8_t * func_27(int64_t  p_28, int64_t  p_29, int32_t  p_30, struct S4 * p_907);
uint16_t  func_31(int8_t * p_32, uint64_t  p_33, int32_t * p_34, int32_t * p_35, struct S4 * p_907);
int8_t * func_36(int32_t * p_37, int32_t * p_38, int32_t  p_39, int8_t * p_40, struct S4 * p_907);
int32_t * func_41(int32_t * p_42, struct S4 * p_907);
int32_t * func_43(int16_t  p_44, int8_t * p_45, int32_t * p_46, int32_t * p_47, struct S4 * p_907);
int32_t * func_51(int32_t  p_52, struct S4 * p_907);
int32_t  func_54(int32_t * p_55, int8_t * p_56, uint64_t  p_57, int32_t  p_58, struct S4 * p_907);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_907->g_2 p_907->g_10 p_907->g_5 p_907->g_24 p_907->g_11 p_907->g_50 p_907->g_71 p_907->g_72 p_907->g_73 p_907->g_80 p_907->g_7 p_907->g_114 p_907->g_100 p_907->g_118 p_907->g_88 p_907->g_138 p_907->g_174 p_907->g_177 p_907->g_173 p_907->g_175 p_907->g_171 p_907->g_136 p_907->g_220 p_907->g_284 p_907->g_246 p_907->g_216 p_907->g_344 p_907->g_364 p_907->g_265 p_907->g_366.f0 p_907->g_440 p_907->g_507 p_907->g_513 p_907->g_488.f0 p_907->g_400 p_907->g_408.f2 p_907->g_435 p_907->g_417.f2 p_907->g_329 p_907->g_488 p_907->g_531 p_907->g_331 p_907->g_287.f0 p_907->g_286 p_907->g_287 p_907->g_405.f0 p_907->g_779 p_907->g_824 p_907->g_6 p_907->g_868 p_907->g_26 p_907->g_368.f0 p_907->g_411 p_907->g_416.f2 p_907->g_402.f0
 * writes: p_907->g_2 p_907->g_7 p_907->g_11 p_907->g_80 p_907->g_88 p_907->g_114 p_907->g_118 p_907->g_73 p_907->g_50 p_907->g_136 p_907->g_138 p_907->g_171 p_907->g_173 p_907->g_175 p_907->g_72 p_907->g_177 p_907->g_216 p_907->g_220 p_907->g_246 p_907->g_329 p_907->g_265 p_907->g_417.f2 p_907->g_413.f2 p_907->g_435 p_907->g_520 p_907->g_531 p_907->g_408.f2 p_907->g_400 p_907->g_284 p_907->g_100 p_907->g_589 p_907->g_344 p_907->g_414.f2 p_907->g_418.f2 p_907->g_366.f0 p_907->g_440 p_907->g_420.f2 p_907->g_823 p_907->g_513 p_907->g_368.f0 p_907->g_416.f2 p_907->g_878
 */
uint64_t  func_1(struct S4 * p_907)
{ /* block id: 4 */
    int32_t *l_681 = &p_907->g_11;
    int32_t **l_898 = (void*)0;
    int32_t **l_899[2];
    int32_t *l_901[6][9] = {{&p_907->g_7,&p_907->g_88[2],(void*)0,&p_907->g_88[0],(void*)0,&p_907->g_88[2],&p_907->g_7,(void*)0,&p_907->g_11},{&p_907->g_7,&p_907->g_88[2],(void*)0,&p_907->g_88[0],(void*)0,&p_907->g_88[2],&p_907->g_7,(void*)0,&p_907->g_11},{&p_907->g_7,&p_907->g_88[2],(void*)0,&p_907->g_88[0],(void*)0,&p_907->g_88[2],&p_907->g_7,(void*)0,&p_907->g_11},{&p_907->g_7,&p_907->g_88[2],(void*)0,&p_907->g_88[0],(void*)0,&p_907->g_88[2],&p_907->g_7,(void*)0,&p_907->g_11},{&p_907->g_7,&p_907->g_88[2],(void*)0,&p_907->g_88[0],(void*)0,&p_907->g_88[2],&p_907->g_7,(void*)0,&p_907->g_11},{&p_907->g_7,&p_907->g_88[2],(void*)0,&p_907->g_88[0],(void*)0,&p_907->g_88[2],&p_907->g_7,(void*)0,&p_907->g_11}};
    uint32_t l_902 = 0x0C2F086BL;
    union U0 *l_905 = &p_907->g_488;
    union U0 **l_906 = &l_905;
    int i, j;
    for (i = 0; i < 2; i++)
        l_899[i] = &l_681;
    for (p_907->g_2 = 17; (p_907->g_2 != 24); p_907->g_2 = safe_add_func_int64_t_s_s(p_907->g_2, 1))
    { /* block id: 7 */
        uint64_t l_48[3][8][4] = {{{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL}},{{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL}},{{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL},{18446744073709551615UL,5UL,5UL,18446744073709551615UL}}};
        int8_t *l_439 = &p_907->g_440[0][3][3];
        int32_t l_887 = 7L;
        int32_t l_888 = 0L;
        int32_t l_889 = 0x3355EEFAL;
        uint32_t l_890 = 1UL;
        int i, j, k;
        for (p_907->g_7 = (-23); (p_907->g_7 >= 3); p_907->g_7 = safe_add_func_uint8_t_u_u(p_907->g_7, 9))
        { /* block id: 10 */
            int8_t *l_49[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_438 = 0x710FEA08L;
            uint64_t l_677 = 7UL;
            union U0 l_678 = {0x7CCC3086L};
            int i;
            for (p_907->g_11 = 0; (p_907->g_11 <= (-2)); --p_907->g_11)
            { /* block id: 13 */
                int8_t **l_675 = (void*)0;
                int8_t **l_676 = &l_439;
                int32_t l_679[9][5][5] = {{{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)}},{{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)}},{{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)}},{{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)}},{{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)}},{{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)}},{{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)}},{{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)}},{{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)},{0x659AD874L,(-7L),(-1L),0x73A68B1DL,(-1L)}}};
                int16_t *l_873 = &p_907->g_80;
                union U0 *l_895 = &l_678;
                int i, j, k;
                if (p_907->g_10[3])
                    break;
                (*p_907->g_779) = func_14(p_907->g_5, func_18(((p_907->g_24[7] != ((*l_676) = func_27(((-6L) || func_31(func_36(func_41(func_43(l_48[0][3][0], l_49[1], func_51(p_907->g_11, p_907), &p_907->g_2, p_907), p_907), &p_907->g_11, l_438, l_439, p_907), l_438, &p_907->g_11, &l_438, p_907)), p_907->g_11, p_907->g_331, p_907))) > l_677), p_907->g_488.f0, l_678, l_679[2][2][0], &p_907->g_440[0][3][3], p_907), l_681, p_907);
                for (p_907->g_513 = 0; (p_907->g_513 > (-16)); p_907->g_513 = safe_sub_func_int32_t_s_s(p_907->g_513, 9))
                { /* block id: 435 */
                    for (p_907->g_136 = 0; (p_907->g_136 <= 20); p_907->g_136 = safe_add_func_uint8_t_u_u(p_907->g_136, 4))
                    { /* block id: 438 */
                        uint32_t l_874[4][10] = {{3UL,0xE605BC4DL,0xE605BC4DL,3UL,3UL,0xE605BC4DL,0xE605BC4DL,3UL,3UL,0xE605BC4DL},{3UL,0xE605BC4DL,0xE605BC4DL,3UL,3UL,0xE605BC4DL,0xE605BC4DL,3UL,3UL,0xE605BC4DL},{3UL,0xE605BC4DL,0xE605BC4DL,3UL,3UL,0xE605BC4DL,0xE605BC4DL,3UL,3UL,0xE605BC4DL},{3UL,0xE605BC4DL,0xE605BC4DL,3UL,3UL,0xE605BC4DL,0xE605BC4DL,3UL,3UL,0xE605BC4DL}};
                        int i, j;
                        l_874[2][2] = ((void*)0 != l_873);
                        return p_907->g_364;
                    }
                    return p_907->g_26;
                }
                for (p_907->g_368.f0 = 3; (p_907->g_368.f0 >= 0); p_907->g_368.f0 -= 1)
                { /* block id: 446 */
                    for (p_907->g_416.f2 = 0; (p_907->g_416.f2 <= 8); p_907->g_416.f2 += 1)
                    { /* block id: 449 */
                        int32_t **l_877 = &p_907->g_520;
                        int32_t *l_885 = (void*)0;
                        int32_t *l_886[1];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_886[i] = &p_907->g_88[3];
                        (*p_907->g_72) = (((p_907->g_88[p_907->g_368.f0] ^ 0xBE829AC2L) && (safe_mul_func_uint8_t_u_u((p_907->g_118[(p_907->g_368.f0 + 2)][(p_907->g_368.f0 + 5)] != ((FAKE_DIVERGE(p_907->local_0_offset, get_local_id(0), 10) >= ((p_907->g_878 = l_877) != (p_907->g_411[p_907->g_368.f0] , &p_907->g_520))) >= (safe_mod_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s(p_907->g_118[(p_907->g_368.f0 + 1)][p_907->g_368.f0], (~(&p_907->g_118[(p_907->g_368.f0 + 1)][p_907->g_416.f2] == &p_907->g_118[p_907->g_368.f0][p_907->g_416.f2])))), 10)), p_907->g_118[p_907->g_368.f0][p_907->g_416.f2])))), 0UL))) , &p_907->g_88[p_907->g_368.f0]);
                        l_890++;
                    }
                    for (p_907->g_114 = 1; (p_907->g_114 <= 6); p_907->g_114 += 1)
                    { /* block id: 456 */
                        int i, j;
                        p_907->g_88[p_907->g_368.f0] = ((+(((safe_sub_func_uint32_t_u_u(((void*)0 == l_895), ((void*)0 == &p_907->g_531))) || p_907->g_88[p_907->g_368.f0]) < (safe_lshift_func_int16_t_s_s(p_907->g_118[(p_907->g_368.f0 + 2)][(p_907->g_368.f0 + 3)], 14)))) || FAKE_DIVERGE(p_907->global_1_offset, get_global_id(1), 10));
                        if (l_679[2][2][0])
                            continue;
                        (*p_907->g_779) = &p_907->g_88[p_907->g_368.f0];
                        p_907->g_88[p_907->g_368.f0] = (***p_907->g_265);
                    }
                    if ((**p_907->g_72))
                        break;
                }
            }
        }
    }
    (**p_907->g_265) = (*p_907->g_72);
    l_902--;
    (*l_906) = l_905;
    return p_907->g_402.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_907->g_73 p_907->g_88 p_907->g_11 p_907->g_72 p_907->g_418.f2 p_907->g_366.f0 p_907->g_435 p_907->g_171 p_907->g_287.f0 p_907->g_286 p_907->g_287 p_907->g_2 p_907->g_405.f0 p_907->g_265 p_907->g_440 p_907->g_779 p_907->g_138 p_907->g_220 p_907->g_531 p_907->g_118 p_907->g_136 p_907->g_100 p_907->g_420.f2 p_907->g_824 p_907->g_6 p_907->g_868 p_907->g_114
 * writes: p_907->g_88 p_907->g_418.f2 p_907->g_366.f0 p_907->g_171 p_907->g_246 p_907->g_440 p_907->g_400 p_907->g_417.f2 p_907->g_73 p_907->g_138 p_907->g_114 p_907->g_216 p_907->g_100 p_907->g_435 p_907->g_420.f2 p_907->g_823 p_907->g_177 p_907->g_118
 */
int32_t * func_14(uint64_t  p_15, int32_t  p_16, int32_t * p_17, struct S4 * p_907)
{ /* block id: 322 */
    int16_t l_685 = (-10L);
    int32_t l_709 = (-6L);
    int32_t **l_720 = &p_907->g_520;
    int32_t *l_724 = &p_907->g_88[2];
    uint32_t l_769 = 0xC4BF80E3L;
    union U0 *l_777 = &p_907->g_488;
    int32_t l_849[9];
    int64_t l_853 = 1L;
    uint16_t *l_861 = &p_907->g_331;
    uint16_t **l_860 = &l_861;
    uint32_t l_862[5][8] = {{1UL,4294967289UL,1UL,0xF29BBA4FL,4294967289UL,0xF29BBA4FL,1UL,4294967289UL},{1UL,4294967289UL,1UL,0xF29BBA4FL,4294967289UL,0xF29BBA4FL,1UL,4294967289UL},{1UL,4294967289UL,1UL,0xF29BBA4FL,4294967289UL,0xF29BBA4FL,1UL,4294967289UL},{1UL,4294967289UL,1UL,0xF29BBA4FL,4294967289UL,0xF29BBA4FL,1UL,4294967289UL},{1UL,4294967289UL,1UL,0xF29BBA4FL,4294967289UL,0xF29BBA4FL,1UL,4294967289UL}};
    int8_t *l_867 = &p_907->g_118[3][3];
    int i, j;
    for (i = 0; i < 9; i++)
        l_849[i] = 1L;
    if ((*p_907->g_73))
    { /* block id: 323 */
        int32_t l_684[8] = {0x40C845C0L,0x3EFE8C11L,0x40C845C0L,0x40C845C0L,0x3EFE8C11L,0x40C845C0L,0x40C845C0L,0x3EFE8C11L};
        union U1 *l_686[8][9] = {{&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_366,&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_368,(void*)0},{&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_366,&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_368,(void*)0},{&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_366,&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_368,(void*)0},{&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_366,&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_368,(void*)0},{&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_366,&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_368,(void*)0},{&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_366,&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_368,(void*)0},{&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_366,&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_368,(void*)0},{&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_366,&p_907->g_368,&p_907->g_368,&p_907->g_368,&p_907->g_368,(void*)0}};
        int32_t **l_718 = &p_907->g_520;
        int8_t l_721 = (-1L);
        uint32_t **l_743 = (void*)0;
        int64_t l_759 = 0x2BA6B5053E06DE54L;
        uint16_t l_761 = 0xC4EFL;
        int32_t *l_790[5][3] = {{&p_907->g_7,&p_907->g_7,&p_907->g_88[3]},{&p_907->g_7,&p_907->g_7,&p_907->g_88[3]},{&p_907->g_7,&p_907->g_7,&p_907->g_88[3]},{&p_907->g_7,&p_907->g_7,&p_907->g_88[3]},{&p_907->g_7,&p_907->g_7,&p_907->g_88[3]}};
        uint32_t l_812 = 0xA018FFE6L;
        int i, j;
        if (((safe_sub_func_int8_t_s_s(l_684[4], l_684[4])) > ((l_685 , (l_686[4][8] == &p_907->g_366)) , 0x12805F61L)))
        { /* block id: 324 */
            uint64_t *l_700 = &p_907->g_216;
            uint16_t *l_733 = &p_907->g_246;
            int32_t l_734[7][3] = {{2L,3L,0x44107E4BL},{2L,3L,0x44107E4BL},{2L,3L,0x44107E4BL},{2L,3L,0x44107E4BL},{2L,3L,0x44107E4BL},{2L,3L,0x44107E4BL},{2L,3L,0x44107E4BL}};
            int8_t *l_744 = &p_907->g_440[0][2][3];
            uint8_t *l_745 = &p_907->g_171;
            int i, j;
            (**p_907->g_72) = (*p_17);
            for (p_907->g_418.f2 = 11; (p_907->g_418.f2 <= 12); ++p_907->g_418.f2)
            { /* block id: 328 */
                uint64_t *l_689 = &p_907->g_344;
                uint8_t *l_707[5][9];
                int32_t l_708 = 0x4F1BFF17L;
                int64_t l_710[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                int32_t l_711 = 0x2B6039C4L;
                int32_t **l_719[4][9][7] = {{{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520}},{{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520}},{{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520}},{{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520},{(void*)0,(void*)0,(void*)0,&p_907->g_520,&p_907->g_520,&p_907->g_520,&p_907->g_520}}};
                uint32_t *l_722 = (void*)0;
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_707[i][j] = &p_907->g_171;
                }
                l_724 = p_17;
                for (p_907->g_366.f0 = 14; (p_907->g_366.f0 == (-11)); --p_907->g_366.f0)
                { /* block id: 339 */
                    if (l_684[1])
                        break;
                }
            }
            (**p_907->g_72) &= ((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((p_907->g_171 = l_721), 7)), (safe_rshift_func_uint8_t_u_u(0xE4L, (((*l_733) = 0x2C7EL) | (l_734[4][1] = (l_734[4][2] > (safe_lshift_func_int8_t_s_u((6L && l_684[4]), 1))))))))) || ((safe_lshift_func_uint8_t_u_u(((*l_745) ^= (safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_u(((*l_744) = (((p_907->g_435 < (l_743 == (void*)0)) > (*p_17)) , p_15)), 0)), FAKE_DIVERGE(p_907->group_2_offset, get_group_id(2), 10)))), 2)) >= p_907->g_287.f0));
        }
        else
        { /* block id: 349 */
            uint64_t *l_757 = &p_907->g_173;
            int32_t l_765 = 0x18CFC35FL;
            int32_t l_766 = 0x14795606L;
            int32_t l_767 = 0x02D3813BL;
            int32_t l_768 = 0x29CF8675L;
            if ((l_684[4] < 0x1CF9009BL))
            { /* block id: 350 */
                int8_t *l_750 = &p_907->g_440[0][3][3];
                uint64_t **l_758 = &l_757;
                int32_t l_760 = 6L;
                int32_t *l_764[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_764[i] = (void*)0;
                l_761 &= ((*p_907->g_286) , (((safe_mul_func_uint8_t_u_u((safe_add_func_int8_t_s_s((*l_724), ((*l_750) = 0x29L))), p_15)) | (safe_div_func_uint8_t_u_u((0x82A67E97L <= (l_684[4] |= (l_760 = (((void*)0 != &p_907->g_589) , (((safe_div_func_uint16_t_u_u(((((*p_17) >= (((*l_758) = l_757) != (void*)0)) || p_16) & 0x0B5EL), p_907->g_2)) != 0x6841AF4BL) | l_759))))), p_15))) <= p_16));
                for (p_907->g_418.f2 = 0; (p_907->g_418.f2 == 16); ++p_907->g_418.f2)
                { /* block id: 358 */
                    return p_17;
                }
                ++l_769;
            }
            else
            { /* block id: 362 */
                int8_t l_775[10][6][1] = {{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}},{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}},{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}},{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}},{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}},{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}},{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}},{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}},{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}},{{0x63L},{0x63L},{0x63L},{0x63L},{0x63L},{0x63L}}};
                int i, j, k;
                for (p_907->g_366.f0 = 1; (p_907->g_366.f0 >= 0); p_907->g_366.f0 -= 1)
                { /* block id: 365 */
                    int16_t l_776 = 0x6EE7L;
                    (1 + 1);
                }
                (*l_724) ^= (*p_17);
            }
        }
        (*p_907->g_73) = 0x3CD9B7F3L;
        (***p_907->g_265) |= (safe_mod_func_uint16_t_u_u((safe_mod_func_int16_t_s_s(p_907->g_405.f0, p_907->g_2)), (safe_div_func_uint16_t_u_u(p_15, (safe_unary_minus_func_uint32_t_u(l_684[4]))))));
        for (l_721 = 0; (l_721 != 25); l_721 = safe_add_func_uint16_t_u_u(l_721, 5))
        { /* block id: 390 */
            int64_t l_789 = 0x444A64181229F981L;
            union U3 **l_795[5] = {&p_907->g_400,&p_907->g_400,&p_907->g_400,&p_907->g_400,&p_907->g_400};
            int8_t *l_806[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t *l_807 = &p_907->g_88[2];
            int i;
            (*p_907->g_72) = func_43(l_789, func_36(l_790[0][2], (**p_907->g_265), ((safe_div_func_int8_t_s_s(((safe_div_func_uint32_t_u_u(((&p_907->g_405 == (p_907->g_400 = (void*)0)) > (p_16 , (((p_16 > ((safe_mul_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((safe_div_func_uint8_t_u_u((((((((safe_mod_func_int32_t_s_s((((safe_mul_func_int16_t_s_s(((*l_724) , 0x0FC3L), p_907->g_440[0][3][3])) , l_789) , 1L), (**p_907->g_779))) , (*p_17)) && 0x73B247D1L) , p_907->g_220) < p_15) > FAKE_DIVERGE(p_907->local_1_offset, get_local_id(1), 10)) ^ p_15), 6UL)), 0x4089D488EF6633C8L)), (*l_724))) & 4294967294UL)) , &p_907->g_72) != (void*)0))), (*p_17))) >= (-3L)), (*l_724))) | p_907->g_531), l_806[0], p_907), l_807, p_17, p_907);
            if ((*p_17))
                break;
            for (p_907->g_100 = 12; (p_907->g_100 > (-22)); p_907->g_100 = safe_sub_func_uint8_t_u_u(p_907->g_100, 5))
            { /* block id: 396 */
                int32_t *l_818 = &l_709;
                for (p_907->g_435 = 0; (p_907->g_435 > 24); ++p_907->g_435)
                { /* block id: 399 */
                    uint16_t *l_820 = &p_907->g_329;
                    uint16_t **l_819 = &l_820;
                    for (p_907->g_420.f2 = 0; (p_907->g_420.f2 >= 0); p_907->g_420.f2 -= 1)
                    { /* block id: 402 */
                        uint16_t *l_815 = &p_907->g_329;
                        int i, j, k;
                        --l_812;
                    }
                    if ((((*l_819) = &l_761) != (void*)0))
                    { /* block id: 410 */
                        union U0 *l_821 = &p_907->g_488;
                        int32_t ***l_833 = &p_907->g_177;
                        (*p_907->g_824) = l_821;
                        (**p_907->g_72) = (safe_mul_func_int16_t_s_s((safe_div_func_int16_t_s_s(p_16, 1L)), (((*l_807) = (safe_add_func_uint32_t_u_u((((*p_907->g_265) != ((*l_833) = (*p_907->g_265))) | (!0x46D52251L)), (*l_818)))) , ((*l_818) && (p_16 ^ (((safe_rshift_func_int16_t_s_u((safe_add_func_int8_t_s_s((((p_907->g_6 <= p_15) >= 0x4EL) >= p_16), 0x30L)), p_15)) || 1L) , (*p_17)))))));
                    }
                    else
                    { /* block id: 415 */
                        int32_t *l_838 = &p_907->g_88[2];
                        (*l_818) = (*p_907->g_73);
                        (**p_907->g_265) = p_17;
                        (*p_907->g_72) = l_838;
                    }
                    return (*p_907->g_779);
                }
            }
        }
    }
    else
    { /* block id: 424 */
        int32_t *l_839 = &p_907->g_88[2];
        int32_t *l_840 = &p_907->g_88[2];
        int32_t *l_841 = &p_907->g_88[1];
        int32_t *l_842 = &l_709;
        int32_t *l_843 = &p_907->g_88[2];
        int32_t l_844[4];
        int32_t *l_845 = &p_907->g_88[2];
        int32_t *l_846 = &l_844[3];
        int32_t *l_847 = &p_907->g_88[3];
        int32_t *l_848[6] = {&p_907->g_88[2],&p_907->g_88[2],&p_907->g_88[2],&p_907->g_88[2],&p_907->g_88[2],&p_907->g_88[2]};
        uint32_t l_850 = 0UL;
        int i;
        for (i = 0; i < 4; i++)
            l_844[i] = 0x4816BA0AL;
        --l_850;
        return (*p_907->g_779);
    }
    (*p_907->g_73) &= l_853;
    l_849[8] ^= (safe_mod_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((safe_add_func_int64_t_s_s((!p_907->g_171), ((void*)0 != l_860))), (l_862[0][0] , (((safe_mul_func_int16_t_s_s((safe_add_func_int8_t_s_s(((*l_867) = (*l_724)), p_16)), p_907->g_868)) <= p_15) , p_907->g_114)))), (*l_724)));
    return p_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_907->g_265 p_907->g_72 p_907->g_88
 * writes: p_907->g_73
 */
int32_t  func_18(uint32_t  p_19, uint32_t  p_20, union U0  p_21, int64_t  p_22, int8_t * p_23, struct S4 * p_907)
{ /* block id: 319 */
    int32_t *l_680 = &p_907->g_88[1];
    (**p_907->g_265) = l_680;
    return (*l_680);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_27(int64_t  p_28, int64_t  p_29, int32_t  p_30, struct S4 * p_907)
{ /* block id: 315 */
    uint16_t l_671[5][4] = {{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}};
    int8_t *l_674 = (void*)0;
    int i, j;
    --l_671[4][0];
    return l_674;
}


/* ------------------------------------------ */
/* 
 * reads : p_907->g_72 p_907->g_73 p_907->g_11 p_907->g_138 p_907->g_366.f0 p_907->g_171 p_907->g_440 p_907->g_100 p_907->g_265 p_907->g_174 p_907->g_507 p_907->g_513 p_907->g_488.f0 p_907->g_246 p_907->g_50 p_907->g_2 p_907->g_118 p_907->g_136 p_907->g_284 p_907->g_80 p_907->g_114 p_907->g_216 p_907->g_408.f2 p_907->g_400 p_907->g_88 p_907->g_435 p_907->g_417.f2 p_907->g_329 p_907->g_364 p_907->g_344 p_907->g_488 p_907->g_175 p_907->g_531 p_907->g_173 p_907->g_414.f2 p_907->g_220
 * writes: p_907->g_73 p_907->g_171 p_907->g_413.f2 p_907->g_435 p_907->g_136 p_907->g_80 p_907->g_329 p_907->g_138 p_907->g_114 p_907->g_216 p_907->g_246 p_907->g_520 p_907->g_531 p_907->g_408.f2 p_907->g_400 p_907->g_50 p_907->g_284 p_907->g_100 p_907->g_589 p_907->g_344 p_907->g_175 p_907->g_118 p_907->g_173 p_907->g_414.f2
 */
uint16_t  func_31(int8_t * p_32, uint64_t  p_33, int32_t * p_34, int32_t * p_35, struct S4 * p_907)
{ /* block id: 209 */
    uint64_t l_445 = 18446744073709551609UL;
    uint32_t **l_485[2];
    union U0 *l_487 = &p_907->g_488;
    union U2 *l_506 = (void*)0;
    uint8_t l_514 = 0UL;
    union U3 *l_540 = (void*)0;
    int32_t l_542 = 0x17416A41L;
    int32_t ***l_563 = &p_907->g_177;
    int32_t l_638 = 0x646B9ACFL;
    int32_t l_639 = 6L;
    int32_t l_640 = 0x717717CDL;
    int32_t l_642 = 1L;
    int32_t l_643 = 0L;
    int32_t l_644 = 0x50757E24L;
    int32_t l_646[6];
    uint8_t l_647[5] = {0x26L,0x26L,0x26L,0x26L,0x26L};
    int8_t l_668 = 0x7BL;
    int32_t *l_669[5][5][3] = {{{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]}},{{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]}},{{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]}},{{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]}},{{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]},{&p_907->g_88[2],&l_642,&l_646[5]}}};
    int64_t l_670 = 3L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_485[i] = (void*)0;
    for (i = 0; i < 6; i++)
        l_646[i] = 0L;
lbl_532:
    (*p_907->g_72) = p_34;
    (*p_35) &= l_445;
    if ((*p_907->g_73))
    { /* block id: 212 */
        uint16_t l_478 = 0xDA61L;
        int32_t l_483 = 1L;
        int32_t **l_490 = (void*)0;
        int8_t **l_536 = (void*)0;
        uint32_t ***l_537 = (void*)0;
        uint32_t ***l_559[5][2][9] = {{{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]},{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]}},{{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]},{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]}},{{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]},{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]}},{{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]},{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]}},{{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]},{&l_485[1],&l_485[0],&l_485[0],(void*)0,&l_485[0],(void*)0,&l_485[0],&l_485[0],&l_485[1]}}};
        int32_t l_634 = 2L;
        int32_t l_641 = 0x1BBC209AL;
        int32_t l_645[4] = {(-9L),(-9L),(-9L),(-9L)};
        uint16_t l_650 = 0UL;
        int i, j, k;
        (*p_35) = (**p_907->g_72);
        for (p_907->g_171 = 0; (p_907->g_171 >= 38); p_907->g_171 = safe_add_func_uint64_t_u_u(p_907->g_171, 6))
        { /* block id: 216 */
            int8_t l_448 = 0L;
            int32_t l_480 = 0x4A6BBF36L;
            int32_t *l_518 = &p_907->g_220;
            int32_t **l_519[2];
            int16_t *l_523 = &p_907->g_80;
            int16_t *l_530 = &p_907->g_531;
            int i;
            for (i = 0; i < 2; i++)
                l_519[i] = &l_518;
            if ((l_445 < l_448))
            { /* block id: 217 */
                int64_t l_469[8][5] = {{0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L},{0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L},{0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L},{0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L},{0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L},{0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L},{0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L},{0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L,0x271DF8FA97979B59L}};
                int i, j;
                for (p_907->g_413.f2 = 0; (p_907->g_413.f2 != 29); ++p_907->g_413.f2)
                { /* block id: 220 */
                    int32_t ****l_463 = &p_907->g_265;
                    int32_t l_482 = 0x0D25674CL;
                    int32_t l_484 = 0x3E67CAE8L;
                    uint16_t *l_512 = &p_907->g_329;
                    if ((**p_907->g_72))
                    { /* block id: 221 */
                        int64_t *l_459 = &p_907->g_435;
                        int64_t *l_460[10][4] = {{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136},{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136},{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136},{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136},{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136},{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136},{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136},{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136},{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136},{&p_907->g_136,(void*)0,(void*)0,&p_907->g_136}};
                        int32_t *****l_464 = &l_463;
                        int32_t *l_479 = &p_907->g_417.f2;
                        int16_t *l_481 = &p_907->g_80;
                        uint32_t ***l_486 = &l_485[0];
                        int i, j;
                        l_484 |= (safe_sub_func_int64_t_s_s((safe_lshift_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((((safe_sub_func_int64_t_s_s((p_907->g_136 = ((*l_459) = p_907->g_366.f0)), (l_483 ^= ((~((*l_481) = (safe_lshift_func_int16_t_s_u((((((-1L) >= p_907->g_171) , (void*)0) == ((*l_464) = l_463)) >= (safe_mod_func_int16_t_s_s((safe_mod_func_int32_t_s_s((*p_34), l_469[0][2])), (safe_rshift_func_uint8_t_u_u((~((l_480 &= (safe_add_func_int32_t_s_s((+((((safe_rshift_func_uint8_t_u_s(((safe_lshift_func_int8_t_s_s(p_907->g_366.f0, l_448)) > p_907->g_440[0][0][4]), l_469[0][0])) == l_478) , l_479) != &p_907->g_220)), 4294967295UL))) != 0x4D84ED195E66BFF4L)), p_907->g_440[0][3][0]))))), p_907->g_171)))) == l_482)))) | l_478) <= p_907->g_100), l_478)) == 6UL), 0)), p_33));
                        (*l_486) = l_485[0];
                        return (*****l_464);
                    }
                    else
                    { /* block id: 231 */
                        union U0 **l_489 = &l_487;
                        (*l_489) = (p_907->g_174 , l_487);
                    }
                    (**p_907->g_265) = func_43((((l_490 != (void*)0) > (safe_rshift_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u((((safe_mul_func_uint8_t_u_u(l_448, (safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s((((safe_mod_func_int32_t_s_s((GROUP_DIVERGE(1, 1) | ((*l_512) = (p_33 , (((((safe_unary_minus_func_int8_t_s(l_448)) || ((((l_506 != (p_907->g_507[0][2][0] , l_506)) > (safe_lshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(p_33, 1UL)), 2))) < 0x4174L) && p_907->g_11)) != 0x1BL) , (-1L)) , GROUP_DIVERGE(2, 1))))), p_907->g_513)) , p_907->g_488.f0) != p_33), l_448)), 6)) == 0xEB1C2A43L), p_907->g_246)))) ^ p_907->g_440[0][3][3]) , p_907->g_50), 0L)) <= l_445), 2))) , p_33), p_32, (**p_907->g_265), (*p_907->g_72), p_907);
                }
                l_514 = 0x2536C5F6L;
            }
            else
            { /* block id: 238 */
                (*p_907->g_72) = (*p_907->g_72);
            }
            (*p_35) = (safe_mod_func_int16_t_s_s(((safe_unary_minus_func_int64_t_s((((p_907->g_520 = l_518) == (void*)0) <= (p_33 , p_907->g_100)))) > (((safe_add_func_uint64_t_u_u(p_907->g_284, (((*l_530) = (((*l_523) |= l_448) != (0xC8031CB151E5A468L >= (safe_add_func_int64_t_s_s(((safe_sub_func_uint16_t_u_u(p_33, (((safe_sub_func_uint16_t_u_u(p_907->g_114, p_33)) ^ l_445) , p_907->g_216))) == p_33), 18446744073709551606UL))))) == p_907->g_118[0][1]))) || l_448) >= l_514)), l_448));
            if ((*p_35))
                break;
            if (l_445)
                goto lbl_532;
        }
        for (p_907->g_408.f2 = 0; (p_907->g_408.f2 >= 0); p_907->g_408.f2 -= 1)
        { /* block id: 250 */
            int8_t *l_535 = &p_907->g_118[5][5];
            int8_t **l_534[7][9] = {{&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535},{&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535},{&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535},{&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535},{&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535},{&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535},{&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535}};
            int8_t ***l_533[3][7][9] = {{{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]}},{{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]}},{{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]},{&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8],&l_534[6][8]}}};
            uint32_t ***l_538 = (void*)0;
            union U3 **l_539 = &p_907->g_400;
            int64_t *l_541 = &p_907->g_136;
            int8_t l_583 = (-1L);
            int32_t *l_584 = &l_483;
            uint16_t l_590 = 0xF477L;
            int i, j, k;
            (*p_35) = ((((((l_536 = &p_32) == &p_32) < (l_537 == l_538)) , 0L) > 0L) ^ (((*l_541) ^= (((((*l_539) = p_907->g_400) != l_540) <= (&p_907->g_344 != &p_907->g_216)) , 0x67D603B4713335AEL)) | p_907->g_88[(p_907->g_408.f2 + 1)]));
            l_542 ^= (*p_907->g_73);
            for (l_514 = 0; (l_514 <= 0); l_514 += 1)
            { /* block id: 258 */
                uint32_t l_553 = 0xAE453320L;
                uint32_t ***l_558[3][2][2];
                uint8_t *l_562 = &p_907->g_171;
                union U0 *l_573[9] = {&p_907->g_488,&p_907->g_488,&p_907->g_488,&p_907->g_488,&p_907->g_488,&p_907->g_488,&p_907->g_488,&p_907->g_488,&p_907->g_488};
                uint64_t *l_601 = &p_907->g_216;
                int i, j, k;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 2; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_558[i][j][k] = &l_485[0];
                    }
                }
                (*p_35) = ((safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s((((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_907->global_1_offset, get_global_id(1), 10), (safe_lshift_func_int16_t_s_u(l_553, 4)))) || (p_33 , (((safe_rshift_func_uint16_t_u_u((~(safe_sub_func_uint8_t_u_u(0xC3L, l_542))), (l_558[0][1][0] != l_559[4][1][1]))) , (safe_mul_func_uint8_t_u_u((~((((*l_562) = p_33) & ((void*)0 != l_563)) == (*p_35))), (-5L)))) <= p_907->g_435))) ^ l_553), p_33)), p_33)), p_33)) <= p_33);
                for (p_907->g_50 = 0; (p_907->g_50 <= 0); p_907->g_50 += 1)
                { /* block id: 263 */
                    uint16_t *l_566 = &p_907->g_284;
                    int16_t *l_574 = (void*)0;
                    int i, j, k;
                    (*p_35) |= ((safe_rshift_func_uint16_t_u_s(((--(*l_566)) , FAKE_DIVERGE(p_907->group_2_offset, get_group_id(2), 10)), (p_907->g_100 = (safe_add_func_uint8_t_u_u(((safe_add_func_int64_t_s_s((l_573[2] == (void*)0), 0x55E0D1832723421FL)) , p_907->g_440[p_907->g_50][p_907->g_50][(p_907->g_408.f2 + 3)]), l_553))))) | 1UL);
                    l_542 = (safe_sub_func_int64_t_s_s(((safe_div_func_uint16_t_u_u(p_907->g_80, (safe_add_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(p_907->g_488.f0, p_907->g_138)), l_553)))) > (l_583 | (p_907->g_440[p_907->g_50][p_907->g_50][(p_907->g_408.f2 + 3)] , p_33))), (!((l_584 != (void*)0) , GROUP_DIVERGE(1, 1)))));
                    for (p_33 = 0; (p_33 <= 0); p_33 += 1)
                    { /* block id: 270 */
                        int i, j, k;
                        (*l_584) ^= (safe_mod_func_int64_t_s_s(((~0xDBL) == 0x41L), ((safe_sub_func_int8_t_s_s(p_33, (((((void*)0 == &p_907->g_507[p_907->g_408.f2][(p_907->g_408.f2 + 2)][l_514]) != p_907->g_440[p_907->g_50][p_907->g_50][(p_907->g_408.f2 + 3)]) & p_33) == l_553))) ^ ((p_907->g_589 = &p_907->g_114) != p_35))));
                        l_590++;
                        return p_33;
                    }
                }
                (*l_584) = (safe_add_func_uint64_t_u_u((255UL & (safe_div_func_int8_t_s_s((!((safe_unary_minus_func_uint64_t_u(((safe_sub_func_uint16_t_u_u(0xF9F9L, (((*l_601) = (safe_unary_minus_func_int64_t_s(p_907->g_417.f2))) == p_907->g_329))) != p_907->g_417.f2))) , ((p_907->g_364 , (safe_lshift_func_int16_t_s_u(((safe_rshift_func_int16_t_s_s((((p_33 < (p_33 || (safe_div_func_uint8_t_u_u(p_33, p_33)))) ^ p_907->g_329) >= 0x01L), 6)) , p_907->g_417.f2), FAKE_DIVERGE(p_907->group_2_offset, get_group_id(2), 10)))) != 0L))), 0xEAL))), 0xB34D62CDD568EF57L));
                for (p_907->g_344 = 0; (p_907->g_344 <= 0); p_907->g_344 += 1)
                { /* block id: 281 */
                    uint32_t l_608 = 4294967295UL;
                    int i, j, k;
                    (*p_35) = ((p_33 , l_608) >= (((*l_487) , p_33) & (&p_907->g_114 != &p_907->g_114)));
                    if (l_553)
                        continue;
                }
                for (p_907->g_175 = 0; (p_907->g_175 >= 0); p_907->g_175 -= 1)
                { /* block id: 287 */
                    int8_t l_631 = 0L;
                    uint64_t *l_632 = (void*)0;
                    uint64_t *l_633 = &p_907->g_173;
                    l_542 |= (*p_34);
                    l_634 &= (safe_lshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s((((*l_633) = ((((safe_lshift_func_uint8_t_u_s((safe_mod_func_int8_t_s_s(((safe_mod_func_int32_t_s_s((&p_907->g_50 == (void*)0), (18446744073709551615UL ^ (((((((*l_535) ^= (safe_sub_func_int64_t_s_s(((((((((p_907->g_88[0] || ((safe_rshift_func_int8_t_s_u(p_33, 1)) == ((safe_div_func_uint32_t_u_u(((p_907->g_138 >= (((safe_rshift_func_uint8_t_u_s(p_33, (safe_mod_func_int16_t_s_s(1L, (safe_mul_func_uint16_t_u_u(((void*)0 != (*p_907->g_265)), l_631)))))) | l_631) && 0x79383CD0L)) , p_33), (*p_35))) < l_631))) , (*p_35)) > (*p_35)) , p_907->g_513) < p_907->g_417.f2) >= 0xF4L) && p_907->g_531) ^ 0x0F64A9B02EBAB674L), p_907->g_88[2]))) == p_33) > p_907->g_173) ^ p_907->g_88[0]) && 0x81L) , (*l_584))))) > l_631), p_907->g_88[3])), 7)) != p_907->g_171) , (*p_34)) | FAKE_DIVERGE(p_907->local_0_offset, get_local_id(0), 10))) , l_631), 5)), 11));
                }
            }
        }
        for (p_907->g_414.f2 = 0; (p_907->g_414.f2 <= (-13)); --p_907->g_414.f2)
        { /* block id: 297 */
            int32_t *l_637[10][2] = {{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483},{&l_483,&l_483}};
            int32_t **l_653[4] = {&l_637[0][1],&l_637[0][1],&l_637[0][1],&l_637[0][1]};
            int32_t *l_654 = (void*)0;
            int i, j;
            (*p_35) = (***p_907->g_265);
            l_647[0]++;
            ++l_650;
            l_654 = (p_34 = ((**p_907->g_265) = p_35));
        }
    }
    else
    { /* block id: 305 */
        int8_t **l_659 = (void*)0;
        int8_t ***l_660 = &l_659;
        int32_t l_665 = 0L;
        int32_t l_666 = 0L;
        int32_t l_667 = (-7L);
        l_667 ^= (safe_add_func_int32_t_s_s((*p_34), ((*p_35) |= (l_666 |= ((((((p_33 | p_907->g_220) >= (safe_mod_func_int64_t_s_s(((((*l_660) = l_659) != (p_33 , &p_907->g_24[1])) == (~0xDFC90157B4F24994L)), (safe_add_func_uint32_t_u_u(((safe_lshift_func_int16_t_s_u((4UL != l_665), 15)) , p_33), GROUP_DIVERGE(1, 1)))))) | l_665) & p_907->g_344) | p_907->g_118[3][4]) == 0x73E10191L)))));
    }
    l_670 ^= (l_668 = ((*p_35) = (**p_907->g_72)));
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_907->g_417.f2 p_907->g_72 p_907->g_73 p_907->g_265
 * writes: p_907->g_417.f2 p_907->g_73
 */
int8_t * func_36(int32_t * p_37, int32_t * p_38, int32_t  p_39, int8_t * p_40, struct S4 * p_907)
{ /* block id: 202 */
    int8_t *l_444[3][9] = {{&p_907->g_118[1][8],(void*)0,(void*)0,&p_907->g_118[1][8],&p_907->g_118[1][8],(void*)0,(void*)0,&p_907->g_118[1][8],&p_907->g_118[1][8]},{&p_907->g_118[1][8],(void*)0,(void*)0,&p_907->g_118[1][8],&p_907->g_118[1][8],(void*)0,(void*)0,&p_907->g_118[1][8],&p_907->g_118[1][8]},{&p_907->g_118[1][8],(void*)0,(void*)0,&p_907->g_118[1][8],&p_907->g_118[1][8],(void*)0,(void*)0,&p_907->g_118[1][8],&p_907->g_118[1][8]}};
    int i, j;
    for (p_907->g_417.f2 = (-3); (p_907->g_417.f2 == (-2)); p_907->g_417.f2 = safe_add_func_uint16_t_u_u(p_907->g_417.f2, 5))
    { /* block id: 205 */
        int32_t *l_443[8][10][3] = {{{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0}},{{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0}},{{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0}},{{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0}},{{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0}},{{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0}},{{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0}},{{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0},{&p_907->g_88[1],&p_907->g_88[1],(void*)0}}};
        int i, j, k;
        (**p_907->g_265) = (*p_907->g_72);
    }
    return l_444[1][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_907->g_220 p_907->g_80 p_907->g_118 p_907->g_173 p_907->g_100 p_907->g_138 p_907->g_216 p_907->g_284 p_907->g_246 p_907->g_88 p_907->g_50 p_907->g_2 p_907->g_175 p_907->g_344 p_907->g_136 p_907->g_364 p_907->g_72 p_907->g_73 p_907->g_265
 * writes: p_907->g_220 p_907->g_80 p_907->g_173 p_907->g_216 p_907->g_138 p_907->g_246 p_907->g_329 p_907->g_265 p_907->g_136 p_907->g_118 p_907->g_175 p_907->g_171 p_907->g_73
 */
int32_t * func_41(int32_t * p_42, struct S4 * p_907)
{ /* block id: 96 */
    int8_t *l_248 = &p_907->g_50;
    int8_t **l_247 = &l_248;
    int32_t l_258[10] = {1L,0x5B5AC6F5L,1L,1L,0x5B5AC6F5L,1L,1L,0x5B5AC6F5L,1L,1L};
    int32_t l_311 = (-3L);
    uint8_t l_391 = 0x34L;
    int i;
    for (p_907->g_220 = 0; (p_907->g_220 <= 5); p_907->g_220 += 1)
    { /* block id: 99 */
        int64_t l_250 = 0x5BA5B9078EE22F68L;
        int32_t l_273 = 1L;
        int32_t l_307 = 0x29EA8D36L;
        union U0 l_316 = {1UL};
        uint64_t l_372 = 0x3FA797A1178A45FEL;
        int32_t l_387[2];
        union U3 *l_399 = (void*)0;
        int32_t ***l_436[10] = {(void*)0,&p_907->g_72,(void*)0,(void*)0,&p_907->g_72,(void*)0,(void*)0,&p_907->g_72,(void*)0,(void*)0};
        int i;
        for (i = 0; i < 2; i++)
            l_387[i] = (-1L);
        for (p_907->g_80 = 0; (p_907->g_80 <= 5); p_907->g_80 += 1)
        { /* block id: 102 */
            int32_t ***l_266 = &p_907->g_177;
            uint16_t l_305 = 65535UL;
            int32_t l_306[6] = {(-1L),0x54C1A622L,(-1L),(-1L),0x54C1A622L,(-1L)};
            int i, j;
            if (p_907->g_118[p_907->g_220][(p_907->g_80 + 1)])
                break;
            for (p_907->g_173 = 0; (p_907->g_173 <= 5); p_907->g_173 += 1)
            { /* block id: 106 */
                int8_t **l_249[1];
                uint64_t *l_251 = &p_907->g_216;
                int32_t ****l_262 = (void*)0;
                int32_t ***l_264 = (void*)0;
                int32_t ****l_263[5];
                uint32_t *l_271 = (void*)0;
                uint32_t *l_272 = &p_907->g_138;
                uint8_t *l_280 = &p_907->g_171;
                int64_t *l_283 = (void*)0;
                int i;
                for (i = 0; i < 1; i++)
                    l_249[i] = (void*)0;
                for (i = 0; i < 5; i++)
                    l_263[i] = &l_264;
                (*p_42) |= ((65535UL < 0xBE54L) & ((*l_251) = (((l_247 != l_249[0]) , p_907->g_100) , l_250)));
            }
        }
        if ((*p_42))
            continue;
        if (l_258[3])
        { /* block id: 134 */
            int64_t l_342[6][10] = {{0x2B1EE840198C85A8L,0x14C9280EBAEA38FDL,1L,0x3C0B517CF08D60B0L,0x14C9280EBAEA38FDL,0x3C0B517CF08D60B0L,1L,0x14C9280EBAEA38FDL,0x2B1EE840198C85A8L,0x2B1EE840198C85A8L},{0x2B1EE840198C85A8L,0x14C9280EBAEA38FDL,1L,0x3C0B517CF08D60B0L,0x14C9280EBAEA38FDL,0x3C0B517CF08D60B0L,1L,0x14C9280EBAEA38FDL,0x2B1EE840198C85A8L,0x2B1EE840198C85A8L},{0x2B1EE840198C85A8L,0x14C9280EBAEA38FDL,1L,0x3C0B517CF08D60B0L,0x14C9280EBAEA38FDL,0x3C0B517CF08D60B0L,1L,0x14C9280EBAEA38FDL,0x2B1EE840198C85A8L,0x2B1EE840198C85A8L},{0x2B1EE840198C85A8L,0x14C9280EBAEA38FDL,1L,0x3C0B517CF08D60B0L,0x14C9280EBAEA38FDL,0x3C0B517CF08D60B0L,1L,0x14C9280EBAEA38FDL,0x2B1EE840198C85A8L,0x2B1EE840198C85A8L},{0x2B1EE840198C85A8L,0x14C9280EBAEA38FDL,1L,0x3C0B517CF08D60B0L,0x14C9280EBAEA38FDL,0x3C0B517CF08D60B0L,1L,0x14C9280EBAEA38FDL,0x2B1EE840198C85A8L,0x2B1EE840198C85A8L},{0x2B1EE840198C85A8L,0x14C9280EBAEA38FDL,1L,0x3C0B517CF08D60B0L,0x14C9280EBAEA38FDL,0x3C0B517CF08D60B0L,1L,0x14C9280EBAEA38FDL,0x2B1EE840198C85A8L,0x2B1EE840198C85A8L}};
            int i, j;
            for (p_907->g_216 = 0; (p_907->g_216 <= 5); p_907->g_216 += 1)
            { /* block id: 137 */
                uint16_t *l_328 = &p_907->g_329;
                uint16_t *l_330[1];
                int32_t ****l_338 = &p_907->g_265;
                int64_t *l_341 = &p_907->g_136;
                uint64_t *l_343[9] = {&p_907->g_344,&p_907->g_344,&p_907->g_344,&p_907->g_344,&p_907->g_344,&p_907->g_344,&p_907->g_344,&p_907->g_344,&p_907->g_344};
                int i, j;
                for (i = 0; i < 1; i++)
                    l_330[i] = &p_907->g_331;
                l_311 = ((*p_42) = ((*p_42) >= (l_258[3] = 0xFA04EDCDL)));
                (*p_42) = (safe_div_func_int64_t_s_s(((((safe_rshift_func_int16_t_s_u((((l_311 = (p_907->g_284 >= ((l_316 , ((0x32FF7D35L < ((safe_mul_func_int8_t_s_s((p_907->g_118[p_907->g_220][(p_907->g_220 + 1)] = ((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((safe_sub_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u(((0x2E7622B3L || ((safe_unary_minus_func_uint16_t_u((l_273 = ((*l_328) = (p_907->g_246 ^= (!0UL)))))) , ((l_258[3] && (safe_mod_func_uint32_t_u_u(((safe_sub_func_int64_t_s_s(((*l_341) = ((safe_mul_func_uint8_t_u_u((((((*l_338) = &p_907->g_72) == ((safe_mod_func_int64_t_s_s(p_907->g_88[3], (p_907->g_216 | 0x183E5FE0C15D356DL))) , &p_907->g_177)) , l_311) != 0x49L), l_316.f0)) & FAKE_DIVERGE(p_907->local_1_offset, get_local_id(1), 10))), p_907->g_50)) > p_907->g_2), 1UL))) <= 0x9BL))) , l_342[0][3]), p_907->g_88[1])) == l_307), 0x9253L)) || 0x1CL), l_316.f0)), l_342[0][3])) >= 4UL)), p_907->g_220)) < l_307)) == 0x20597C2DL)) < l_307))) ^ l_342[0][3]) <= (*p_42)), l_258[3])) ^ l_342[5][2]) > p_907->g_284) <= 0x59L), p_907->g_284));
            }
        }
        else
        { /* block id: 150 */
            uint16_t l_347 = 0x8FD1L;
            union U0 l_350 = {0x65EA877AL};
            if ((*p_42))
                break;
            (*p_42) &= ((safe_sub_func_uint16_t_u_u(p_907->g_50, l_347)) ^ (0x191C0CF2L != (((l_307 ^= (((l_311 ^= ((safe_add_func_uint64_t_u_u((l_350 , ((safe_div_func_int16_t_s_s(((l_347 == 0UL) > ((l_258[3] , (((l_250 < ((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_mod_func_uint64_t_u_u(p_907->g_2, l_347)), 0x30CB4F071ECBC2EAL)), l_350.f0)) | 0x623D3B365817B17BL)) , &p_907->g_136) != &p_907->g_136)) != p_907->g_80)), p_907->g_175)) & 0x0866L)), 0x47F498335532F401L)) > l_258[3])) & 0x49L) & 0UL)) && l_347) < p_907->g_344)));
        }
        for (l_250 = 0; (l_250 <= 5); l_250 += 1)
        { /* block id: 158 */
            uint16_t l_363 = 0x4C32L;
            union U1 *l_367 = &p_907->g_368;
            int32_t l_376 = 4L;
            int32_t l_383 = 0x2F774C98L;
            int32_t l_385 = (-6L);
            int32_t l_388 = (-4L);
            uint64_t l_398 = 2UL;
            for (p_907->g_136 = 0; (p_907->g_136 <= 5); p_907->g_136 += 1)
            { /* block id: 161 */
                uint16_t l_375 = 0UL;
                int32_t l_382 = 0x4B404C0DL;
                int32_t l_384 = (-3L);
                int32_t l_386 = 0x1931F430L;
                int32_t l_389 = 4L;
                int32_t l_390[9] = {3L,1L,3L,3L,1L,3L,3L,1L,3L};
                union U3 *l_401[1][9][8] = {{{(void*)0,&p_907->g_403[1],&p_907->g_422,&p_907->g_417,&p_907->g_412,(void*)0,&p_907->g_417,&p_907->g_407},{(void*)0,&p_907->g_403[1],&p_907->g_422,&p_907->g_417,&p_907->g_412,(void*)0,&p_907->g_417,&p_907->g_407},{(void*)0,&p_907->g_403[1],&p_907->g_422,&p_907->g_417,&p_907->g_412,(void*)0,&p_907->g_417,&p_907->g_407},{(void*)0,&p_907->g_403[1],&p_907->g_422,&p_907->g_417,&p_907->g_412,(void*)0,&p_907->g_417,&p_907->g_407},{(void*)0,&p_907->g_403[1],&p_907->g_422,&p_907->g_417,&p_907->g_412,(void*)0,&p_907->g_417,&p_907->g_407},{(void*)0,&p_907->g_403[1],&p_907->g_422,&p_907->g_417,&p_907->g_412,(void*)0,&p_907->g_417,&p_907->g_407},{(void*)0,&p_907->g_403[1],&p_907->g_422,&p_907->g_417,&p_907->g_412,(void*)0,&p_907->g_417,&p_907->g_407},{(void*)0,&p_907->g_403[1],&p_907->g_422,&p_907->g_417,&p_907->g_412,(void*)0,&p_907->g_417,&p_907->g_407},{(void*)0,&p_907->g_403[1],&p_907->g_422,&p_907->g_417,&p_907->g_412,(void*)0,&p_907->g_417,&p_907->g_407}}};
                int i, j, k;
                for (p_907->g_175 = 2; (p_907->g_175 <= 9); p_907->g_175 += 1)
                { /* block id: 164 */
                    union U1 *l_365[5];
                    int32_t *l_369 = &p_907->g_88[0];
                    int32_t *l_370 = &p_907->g_88[2];
                    int32_t *l_371 = &l_316.f2;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_365[i] = &p_907->g_366;
                    if (((*p_42) ^= 0x43B2963EL))
                    { /* block id: 166 */
                        int i, j;
                        (*p_42) = (0L | (safe_sub_func_uint32_t_u_u(((0x6FL == (((-4L) == (p_907->g_171 = ((l_258[(p_907->g_136 + 1)] != (((p_907->g_100 <= (p_907->g_118[p_907->g_136][p_907->g_136] ^= (p_907->g_216 ^ ((safe_div_func_int16_t_s_s(((GROUP_DIVERGE(1, 1) > (&p_907->g_331 == (((void*)0 == &p_907->g_344) , &p_907->g_329))) < 0xF51DL), l_363)) & p_907->g_216)))) | p_907->g_220) > l_258[0])) && p_907->g_80))) <= p_907->g_220)) != l_250), p_907->g_364)));
                    }
                    else
                    { /* block id: 170 */
                        l_367 = l_365[4];
                    }
                    --l_372;
                    for (p_907->g_216 = 0; (p_907->g_216 <= 3); p_907->g_216 += 1)
                    { /* block id: 176 */
                        int i;
                        l_369 = &p_907->g_88[p_907->g_216];
                        (*p_42) &= 1L;
                        if (p_907->g_88[p_907->g_216])
                            break;
                    }
                    (**p_907->g_265) = (*p_907->g_72);
                }
            }
        }
    }
    return p_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_907->g_171 p_907->g_72 p_907->g_2 p_907->g_11 p_907->g_118 p_907->g_136
 * writes: p_907->g_73 p_907->g_138 p_907->g_114 p_907->g_216 p_907->g_246
 */
int32_t * func_43(int16_t  p_44, int8_t * p_45, int32_t * p_46, int32_t * p_47, struct S4 * p_907)
{ /* block id: 88 */
    int32_t *l_224 = &p_907->g_2;
    uint32_t *l_231 = &p_907->g_138;
    uint32_t *l_232 = &p_907->g_114;
    union U0 l_236 = {0x739EEF94L};
    uint64_t *l_243 = &p_907->g_216;
    uint16_t *l_244 = (void*)0;
    uint16_t *l_245 = &p_907->g_246;
    (*p_907->g_72) = (p_907->g_171 , l_224);
    l_236.f2 = (((*l_232) = (safe_mod_func_int64_t_s_s((safe_add_func_uint32_t_u_u((!(safe_sub_func_uint8_t_u_u((*l_224), 0x7DL))), ((*l_231) = FAKE_DIVERGE(p_907->local_1_offset, get_local_id(1), 10)))), 18446744073709551607UL))) , ((((safe_sub_func_int64_t_s_s(0L, ((safe_unary_minus_func_int16_t_s(p_44)) | ((((p_44 || ((*l_245) = ((p_907->g_2 < (((((((l_236 , (safe_sub_func_uint64_t_u_u(((*l_243) = ((safe_div_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((p_907->g_11 != 2UL), p_44)), 0xEE12L)) || 0x3F9E3F9FL)), p_907->g_118[1][6]))) , 0x5FL) > 0x41L) >= p_907->g_11) , 0x2998L) || (*l_224)) > (*l_224))) ^ GROUP_DIVERGE(0, 1)))) && p_907->g_11) , p_44) <= (*l_224))))) , (-6L)) || p_907->g_136) | (*l_224)));
    return l_231;
}


/* ------------------------------------------ */
/* 
 * reads : p_907->g_11 p_907->g_50 p_907->g_71 p_907->g_72 p_907->g_73 p_907->g_80 p_907->g_7 p_907->g_114 p_907->g_100 p_907->g_118 p_907->g_88 p_907->g_138 p_907->g_2 p_907->g_174 p_907->g_177 p_907->g_173 p_907->g_175
 * writes: p_907->g_80 p_907->g_88 p_907->g_114 p_907->g_118 p_907->g_73 p_907->g_50 p_907->g_136 p_907->g_138 p_907->g_171 p_907->g_173 p_907->g_175 p_907->g_72 p_907->g_177 p_907->g_216 p_907->g_220
 */
int32_t * func_51(int32_t  p_52, struct S4 * p_907)
{ /* block id: 15 */
    int64_t l_53 = 1L;
    int32_t *l_59 = &p_907->g_11;
    int8_t *l_60[1][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int8_t **l_61 = (void*)0;
    int8_t *l_63[3][2] = {{&p_907->g_50,&p_907->g_50},{&p_907->g_50,&p_907->g_50},{&p_907->g_50,&p_907->g_50}};
    int8_t **l_62[2][6][4] = {{{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]}},{{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]},{&l_63[2][1],&l_63[2][1],&l_63[2][1],&l_63[2][1]}}};
    int8_t *l_64 = (void*)0;
    int16_t *l_91 = (void*)0;
    int32_t l_110 = 0L;
    int32_t **l_117 = &p_907->g_73;
    int32_t l_147 = 8L;
    union U2 l_198 = {0};
    int32_t l_212 = 0x75C7731CL;
    int8_t l_217 = (-2L);
    uint64_t l_223[8][5] = {{0x1A4B412E4D6ACB4FL,18446744073709551606UL,0x1A4B412E4D6ACB4FL,0x1A4B412E4D6ACB4FL,18446744073709551606UL},{0x1A4B412E4D6ACB4FL,18446744073709551606UL,0x1A4B412E4D6ACB4FL,0x1A4B412E4D6ACB4FL,18446744073709551606UL},{0x1A4B412E4D6ACB4FL,18446744073709551606UL,0x1A4B412E4D6ACB4FL,0x1A4B412E4D6ACB4FL,18446744073709551606UL},{0x1A4B412E4D6ACB4FL,18446744073709551606UL,0x1A4B412E4D6ACB4FL,0x1A4B412E4D6ACB4FL,18446744073709551606UL},{0x1A4B412E4D6ACB4FL,18446744073709551606UL,0x1A4B412E4D6ACB4FL,0x1A4B412E4D6ACB4FL,18446744073709551606UL},{0x1A4B412E4D6ACB4FL,18446744073709551606UL,0x1A4B412E4D6ACB4FL,0x1A4B412E4D6ACB4FL,18446744073709551606UL},{0x1A4B412E4D6ACB4FL,18446744073709551606UL,0x1A4B412E4D6ACB4FL,0x1A4B412E4D6ACB4FL,18446744073709551606UL},{0x1A4B412E4D6ACB4FL,18446744073709551606UL,0x1A4B412E4D6ACB4FL,0x1A4B412E4D6ACB4FL,18446744073709551606UL}};
    int i, j, k;
    if ((l_53 & (func_54(l_59, l_60[0][4], p_907->g_11, (l_60[0][4] == (l_64 = l_60[0][2])), p_907) || (((p_907->g_80 || (safe_rshift_func_uint8_t_u_s(((l_91 != (void*)0) , (*l_59)), p_907->g_7))) < p_52) < p_52))))
    { /* block id: 25 */
        return (*p_907->g_72);
    }
    else
    { /* block id: 27 */
        union U0 l_98[1][7][4] = {{{{0x57C395B5L},{0xAF6502FCL},{0x57C395B5L},{0x57C395B5L}},{{0x57C395B5L},{0xAF6502FCL},{0x57C395B5L},{0x57C395B5L}},{{0x57C395B5L},{0xAF6502FCL},{0x57C395B5L},{0x57C395B5L}},{{0x57C395B5L},{0xAF6502FCL},{0x57C395B5L},{0x57C395B5L}},{{0x57C395B5L},{0xAF6502FCL},{0x57C395B5L},{0x57C395B5L}},{{0x57C395B5L},{0xAF6502FCL},{0x57C395B5L},{0x57C395B5L}},{{0x57C395B5L},{0xAF6502FCL},{0x57C395B5L},{0x57C395B5L}}}};
        int32_t l_101[10] = {1L,1L,0x5E5E7DF3L,1L,1L,1L,1L,0x5E5E7DF3L,1L,1L};
        int32_t ***l_111 = (void*)0;
        uint32_t l_179 = 0x5BA2BE6EL;
        int16_t *l_190 = &p_907->g_80;
        int8_t *l_199[2][6][9] = {{{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]}},{{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]},{&p_907->g_118[4][0],&p_907->g_118[4][0],&p_907->g_118[3][1],(void*)0,&p_907->g_50,(void*)0,&p_907->g_118[3][1],&p_907->g_118[4][0],&p_907->g_118[4][0]}}};
        int64_t *l_213 = &p_907->g_136;
        uint64_t *l_214 = (void*)0;
        uint64_t *l_215 = &p_907->g_216;
        int32_t *l_218 = (void*)0;
        int32_t *l_219[5] = {&p_907->g_220,&p_907->g_220,&p_907->g_220,&p_907->g_220,&p_907->g_220};
        int32_t *l_221 = &l_98[0][0][0].f2;
        int32_t *l_222 = &l_101[7];
        int i, j, k;
        for (p_907->g_80 = 9; (p_907->g_80 < (-20)); --p_907->g_80)
        { /* block id: 30 */
            int16_t *l_99[6][1];
            int32_t ***l_108 = &p_907->g_72;
            int32_t ****l_107 = &l_108;
            uint32_t *l_112 = (void*)0;
            uint32_t *l_113 = &p_907->g_114;
            int32_t l_115[6] = {0x13AC1787L,0L,0x13AC1787L,0x13AC1787L,0L,0x13AC1787L};
            int32_t ***l_116[1][7] = {{&p_907->g_72,&p_907->g_72,&p_907->g_72,&p_907->g_72,&p_907->g_72,&p_907->g_72,&p_907->g_72}};
            int32_t l_139 = (-1L);
            uint64_t l_150 = 0UL;
            int i, j;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 1; j++)
                    l_99[i][j] = &p_907->g_100;
            }
            p_907->g_88[2] = ((safe_mul_func_int16_t_s_s((*l_59), (p_907->g_118[4][0] ^= ((((*l_59) , (safe_lshift_func_int16_t_s_u((l_101[4] |= (l_98[0][0][0] , 0x77C3L)), (safe_add_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u((l_98[0][0][0].f0 || (((((l_117 = (((l_115[5] |= (((safe_unary_minus_func_uint16_t_u((p_907->g_7 == (((*l_113) ^= (((*l_107) = &p_907->g_72) != (((0L && (GROUP_DIVERGE(0, 1) <= (safe_unary_minus_func_uint8_t_u((((*l_59) | (*l_59)) , l_110))))) ^ (-1L)) , l_111))) , p_907->g_80)))) <= (*l_59)) < (*l_59))) & p_52) , &p_907->g_73)) != &p_907->g_73) <= 0x15L) > p_52) , 0x5401126FL)), p_52)) > p_907->g_100), GROUP_DIVERGE(1, 1)))))) , 4294967286UL) | p_52)))) , 0x676C2307L);
            for (l_110 = 0; (l_110 <= 3); l_110 += 1)
            { /* block id: 40 */
                int64_t l_121[2];
                int32_t l_135 = (-9L);
                uint32_t *l_137 = &p_907->g_138;
                int32_t l_148 = 0L;
                int32_t l_149 = 1L;
                int32_t l_159 = 0L;
                int i;
                for (i = 0; i < 2; i++)
                    l_121[i] = 5L;
                (**l_108) = &p_907->g_88[l_110];
                if ((((safe_sub_func_uint32_t_u_u(l_121[1], (*p_907->g_73))) , (((((*l_137) ^= (safe_sub_func_int16_t_s_s(((**l_117) = 0x048CL), (safe_sub_func_uint64_t_u_u((((((((safe_add_func_uint16_t_u_u(p_52, (safe_lshift_func_int16_t_s_s((safe_unary_minus_func_int16_t_s((((p_907->g_100 == (safe_sub_func_int16_t_s_s((p_907->g_136 = (~((l_101[6] = (p_907->g_50 = (safe_lshift_func_int8_t_s_s((p_907->g_11 , (p_907->g_118[5][0] = p_907->g_118[4][0])), ((l_135 = 5L) != 0x437BB759L))))) >= p_52))), 0x576CL))) & p_907->g_100) <= p_52))), p_52)))) , p_907->g_80) && 0UL) || 4294967291UL) , FAKE_DIVERGE(p_907->local_1_offset, get_local_id(1), 10)) > 0L) , 0xBEA04750EE913E1DL), p_52))))) , p_907->g_11) >= l_139) , 2L)) | p_907->g_114))
                { /* block id: 49 */
                    int64_t l_142 = 0x3B4DD17DDF17533BL;
                    int32_t l_143 = 1L;
                    for (l_53 = 0; (l_53 <= (-29)); l_53 = safe_sub_func_uint16_t_u_u(l_53, 2))
                    { /* block id: 52 */
                        l_143 |= (l_142 > p_52);
                        (**l_108) = (void*)0;
                    }
                    return (*p_907->g_72);
                }
                else
                { /* block id: 57 */
                    int32_t l_144 = (-1L);
                    int32_t l_145 = 0L;
                    int32_t l_146[1];
                    uint8_t *l_170 = &p_907->g_171;
                    uint64_t *l_172 = &p_907->g_173;
                    int32_t **l_176 = &p_907->g_73;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_146[i] = (-7L);
                    l_150--;
                    p_907->g_175 = (safe_div_func_int64_t_s_s((((l_135 = (((0x5FL < ((p_52 & p_907->g_114) >= ((((safe_mod_func_int8_t_s_s((l_159 = (p_907->g_88[l_110] = (-1L))), (safe_mul_func_int8_t_s_s(p_907->g_100, (safe_add_func_uint16_t_u_u((0UL == (GROUP_DIVERGE(2, 1) == (safe_mod_func_uint8_t_u_u(((p_907->g_50 = (safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((l_148 > (-1L)), ((((*l_172) = (((*l_170) = p_52) > 251UL)) , p_52) > 0x022EL))), p_907->g_2))) && 252UL), p_52)))), p_907->g_80)))))) ^ p_907->g_80) , p_52) >= p_52))) <= p_52) ^ 0xA19CEE7FL)) , p_907->g_174) , 1L), p_52));
                    if (((p_907->g_72 = l_176) != (p_907->g_177 = &p_907->g_73)))
                    { /* block id: 68 */
                        return (*p_907->g_177);
                    }
                    else
                    { /* block id: 70 */
                        int32_t l_178[6] = {0x3064252AL,1L,0x3064252AL,0x3064252AL,1L,0x3064252AL};
                        int i;
                        if (l_178[0])
                            break;
                    }
                }
                --l_179;
                if (p_52)
                    break;
            }
        }
        (*p_907->g_72) = (*l_117);
        (*l_222) ^= ((*l_221) = (safe_sub_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((FAKE_DIVERGE(p_907->local_0_offset, get_local_id(0), 10) & ((p_52 < (((safe_mod_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((((5UL & (((65535UL == ((*l_190) = p_52)) ^ ((p_907->g_220 = (safe_div_func_uint16_t_u_u((safe_unary_minus_func_uint32_t_u((safe_lshift_func_int8_t_s_u(((safe_add_func_int32_t_s_s(((l_198 , l_199[0][4][4]) == (((((safe_div_func_int8_t_s_s((safe_div_func_int64_t_s_s((((*l_215) = ((safe_mul_func_uint8_t_u_u((((*l_213) = (safe_div_func_int32_t_s_s((((((((p_52 ^ (safe_rshift_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_s((-10L), p_52)) | p_907->g_118[4][0]) != (*l_59)), GROUP_DIVERGE(2, 1)))) && 0x73ACB05EL) & 0x634F402CL) || 0x210CL) <= p_52) , l_212) >= (*l_59)), p_907->g_173))) > p_52), p_52)) & p_52)) > 0xF91862B91AFFA9D3L), p_907->g_138)), p_907->g_50)) | 0x6513L) > p_52) && (-3L)) , &p_907->g_50)), 4294967295UL)) <= 0x0DL), l_217)))), p_907->g_175))) , p_907->g_11)) , 0x8D6A7C43D89DC981L)) & p_907->g_88[2]) , 0x5ACCL), 3)), 0x0DL)) ^ p_52) && (-1L))) > 250UL)), p_52)), p_52)));
    }
    l_223[0][2] &= p_52;
    return (*l_117);
}


/* ------------------------------------------ */
/* 
 * reads : p_907->g_50 p_907->g_71 p_907->g_72 p_907->g_73 p_907->g_11 p_907->g_80
 * writes: p_907->g_80 p_907->g_88
 */
int32_t  func_54(int32_t * p_55, int8_t * p_56, uint64_t  p_57, int32_t  p_58, struct S4 * p_907)
{ /* block id: 17 */
    int32_t *l_66 = &p_907->g_7;
    int32_t **l_65 = &l_66;
    int32_t ***l_74 = &l_65;
    int16_t *l_79 = &p_907->g_80;
    uint64_t l_85 = 0x18CA73003F861273L;
    uint8_t l_86 = 0x50L;
    int32_t *l_87 = &p_907->g_88[2];
    (*l_65) = (p_907->g_50 , &p_58);
    (*l_87) = (safe_div_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u((+(((p_57 ^ (p_907->g_71 == ((*l_74) = p_907->g_72))) || ((safe_mod_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_u((((((*l_79) = 0x4BAFL) || ((*l_79) &= ((!((*l_65) == &p_58)) == (safe_rshift_func_uint8_t_u_s(((((*p_55) | ((*l_66) &= (safe_div_func_uint64_t_u_u(l_85, p_57)))) != p_57) && p_58), 1))))) >= 65535UL) <= p_907->g_50), GROUP_DIVERGE(0, 1))) , 0x7E9DE5592ED99486L), l_85)) || (*l_66))) >= l_86)), p_57)), (-3L)));
    return (*p_55);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_908;
    struct S4* p_907 = &c_908;
    struct S4 c_909 = {
        0x65925EF2L, // p_907->g_2
        0x4EE87F6FL, // p_907->g_5
        6L, // p_907->g_6
        (-1L), // p_907->g_7
        {(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_907->g_10
        0x0012AF04L, // p_907->g_11
        0x66L, // p_907->g_25
        7L, // p_907->g_26
        {&p_907->g_25,&p_907->g_25,&p_907->g_25,&p_907->g_25,&p_907->g_25,&p_907->g_25,&p_907->g_25,&p_907->g_25,&p_907->g_25}, // p_907->g_24
        0L, // p_907->g_50
        (void*)0, // p_907->g_71
        (void*)0, // p_907->g_73
        &p_907->g_73, // p_907->g_72
        (-1L), // p_907->g_80
        {0x17B3892EL,0x17B3892EL,0x17B3892EL,0x17B3892EL}, // p_907->g_88
        8L, // p_907->g_100
        5UL, // p_907->g_114
        {{0L,0L,1L,0x38L,0x11L,0L,(-6L),0x4EL,(-6L)},{0L,0L,1L,0x38L,0x11L,0L,(-6L),0x4EL,(-6L)},{0L,0L,1L,0x38L,0x11L,0L,(-6L),0x4EL,(-6L)},{0L,0L,1L,0x38L,0x11L,0L,(-6L),0x4EL,(-6L)},{0L,0L,1L,0x38L,0x11L,0L,(-6L),0x4EL,(-6L)},{0L,0L,1L,0x38L,0x11L,0L,(-6L),0x4EL,(-6L)}}, // p_907->g_118
        1L, // p_907->g_136
        4294967295UL, // p_907->g_138
        0x0CL, // p_907->g_171
        18446744073709551615UL, // p_907->g_173
        {0}, // p_907->g_174
        0x52E4DB81L, // p_907->g_175
        (void*)0, // p_907->g_177
        18446744073709551615UL, // p_907->g_216
        0L, // p_907->g_220
        65530UL, // p_907->g_246
        &p_907->g_72, // p_907->g_265
        0xDA71L, // p_907->g_284
        {1L}, // p_907->g_287
        &p_907->g_287, // p_907->g_286
        {0x53EA8AC744170F00L}, // p_907->g_289
        65530UL, // p_907->g_329
        0UL, // p_907->g_331
        0xC40B794A91875BBBL, // p_907->g_344
        1UL, // p_907->g_364
        {0L}, // p_907->g_366
        {-2L}, // p_907->g_368
        (void*)0, // p_907->g_400
        {-1L}, // p_907->g_402
        {{0x4207859915F8ECFFL},{0x4207859915F8ECFFL}}, // p_907->g_403
        {-1L}, // p_907->g_404
        {0x36DC8C6B33A5F8ACL}, // p_907->g_405
        {0x7A0F31A7FE2643B9L}, // p_907->g_406
        {0x59BD2ADA55E93804L}, // p_907->g_407
        {0x5BED76DEA2D11096L}, // p_907->g_408
        {0L}, // p_907->g_409
        {-1L}, // p_907->g_410
        {{0x35BE34E2D251325AL},{0x35BE34E2D251325AL},{0x35BE34E2D251325AL},{0x35BE34E2D251325AL}}, // p_907->g_411
        {0L}, // p_907->g_412
        {0L}, // p_907->g_413
        {2L}, // p_907->g_414
        {0x28BD7C63EB3C3E4DL}, // p_907->g_415
        {0x7CC49C9108E2940DL}, // p_907->g_416
        {0x04D0AE51A943F435L}, // p_907->g_417
        {0x67C153BD5B5AC59AL}, // p_907->g_418
        {5L}, // p_907->g_419
        {1L}, // p_907->g_420
        {-3L}, // p_907->g_421
        {1L}, // p_907->g_422
        {{-1L}}, // p_907->g_423
        (-2L), // p_907->g_435
        {{{0x71L,0x3BL,0x71L,0x71L,0x3BL},{0x71L,0x3BL,0x71L,0x71L,0x3BL},{0x71L,0x3BL,0x71L,0x71L,0x3BL},{0x71L,0x3BL,0x71L,0x71L,0x3BL}}}, // p_907->g_440
        {0xE2A51389L}, // p_907->g_488
        {{{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}},{{0}}}}, // p_907->g_507
        (-9L), // p_907->g_513
        (void*)0, // p_907->g_520
        0L, // p_907->g_531
        (void*)0, // p_907->g_589
        {{0x6479FDAE08951265L},{0x6479FDAE08951265L},{0x6479FDAE08951265L}}, // p_907->g_723
        1UL, // p_907->g_772
        &p_907->g_73, // p_907->g_779
        {&p_907->g_2}, // p_907->g_817
        {{{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]}},{{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]}},{{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]}},{{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]}},{{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]}},{{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]}},{{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]}},{{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]},{&p_907->g_817[0],&p_907->g_817[0]}}}, // p_907->g_816
        &p_907->g_488, // p_907->g_823
        {&p_907->g_823,&p_907->g_823,&p_907->g_823,&p_907->g_823,&p_907->g_823,&p_907->g_823,&p_907->g_823}, // p_907->g_822
        &p_907->g_823, // p_907->g_824
        5L, // p_907->g_868
        &p_907->g_520, // p_907->g_878
        &p_907->g_11, // p_907->g_900
        sequence_input[get_global_id(0)], // p_907->global_0_offset
        sequence_input[get_global_id(1)], // p_907->global_1_offset
        sequence_input[get_global_id(2)], // p_907->global_2_offset
        sequence_input[get_local_id(0)], // p_907->local_0_offset
        sequence_input[get_local_id(1)], // p_907->local_1_offset
        sequence_input[get_local_id(2)], // p_907->local_2_offset
        sequence_input[get_group_id(0)], // p_907->group_0_offset
        sequence_input[get_group_id(1)], // p_907->group_1_offset
        sequence_input[get_group_id(2)], // p_907->group_2_offset
    };
    c_908 = c_909;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_907);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_907->g_2, "p_907->g_2", print_hash_value);
    transparent_crc(p_907->g_5, "p_907->g_5", print_hash_value);
    transparent_crc(p_907->g_6, "p_907->g_6", print_hash_value);
    transparent_crc(p_907->g_7, "p_907->g_7", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_907->g_10[i], "p_907->g_10[i]", print_hash_value);

    }
    transparent_crc(p_907->g_11, "p_907->g_11", print_hash_value);
    transparent_crc(p_907->g_25, "p_907->g_25", print_hash_value);
    transparent_crc(p_907->g_26, "p_907->g_26", print_hash_value);
    transparent_crc(p_907->g_50, "p_907->g_50", print_hash_value);
    transparent_crc(p_907->g_80, "p_907->g_80", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_907->g_88[i], "p_907->g_88[i]", print_hash_value);

    }
    transparent_crc(p_907->g_100, "p_907->g_100", print_hash_value);
    transparent_crc(p_907->g_114, "p_907->g_114", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_907->g_118[i][j], "p_907->g_118[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_907->g_136, "p_907->g_136", print_hash_value);
    transparent_crc(p_907->g_138, "p_907->g_138", print_hash_value);
    transparent_crc(p_907->g_171, "p_907->g_171", print_hash_value);
    transparent_crc(p_907->g_173, "p_907->g_173", print_hash_value);
    transparent_crc(p_907->g_175, "p_907->g_175", print_hash_value);
    transparent_crc(p_907->g_216, "p_907->g_216", print_hash_value);
    transparent_crc(p_907->g_220, "p_907->g_220", print_hash_value);
    transparent_crc(p_907->g_246, "p_907->g_246", print_hash_value);
    transparent_crc(p_907->g_284, "p_907->g_284", print_hash_value);
    transparent_crc(p_907->g_287.f0, "p_907->g_287.f0", print_hash_value);
    transparent_crc(p_907->g_289.f0, "p_907->g_289.f0", print_hash_value);
    transparent_crc(p_907->g_329, "p_907->g_329", print_hash_value);
    transparent_crc(p_907->g_331, "p_907->g_331", print_hash_value);
    transparent_crc(p_907->g_344, "p_907->g_344", print_hash_value);
    transparent_crc(p_907->g_364, "p_907->g_364", print_hash_value);
    transparent_crc(p_907->g_366.f0, "p_907->g_366.f0", print_hash_value);
    transparent_crc(p_907->g_368.f0, "p_907->g_368.f0", print_hash_value);
    transparent_crc(p_907->g_402.f0, "p_907->g_402.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_907->g_403[i].f0, "p_907->g_403[i].f0", print_hash_value);

    }
    transparent_crc(p_907->g_404.f0, "p_907->g_404.f0", print_hash_value);
    transparent_crc(p_907->g_405.f0, "p_907->g_405.f0", print_hash_value);
    transparent_crc(p_907->g_406.f0, "p_907->g_406.f0", print_hash_value);
    transparent_crc(p_907->g_407.f0, "p_907->g_407.f0", print_hash_value);
    transparent_crc(p_907->g_409.f0, "p_907->g_409.f0", print_hash_value);
    transparent_crc(p_907->g_410.f0, "p_907->g_410.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_907->g_411[i].f0, "p_907->g_411[i].f0", print_hash_value);

    }
    transparent_crc(p_907->g_412.f0, "p_907->g_412.f0", print_hash_value);
    transparent_crc(p_907->g_415.f0, "p_907->g_415.f0", print_hash_value);
    transparent_crc(p_907->g_419.f0, "p_907->g_419.f0", print_hash_value);
    transparent_crc(p_907->g_421.f0, "p_907->g_421.f0", print_hash_value);
    transparent_crc(p_907->g_422.f0, "p_907->g_422.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_907->g_423[i].f0, "p_907->g_423[i].f0", print_hash_value);

    }
    transparent_crc(p_907->g_435, "p_907->g_435", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_907->g_440[i][j][k], "p_907->g_440[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_907->g_488.f0, "p_907->g_488.f0", print_hash_value);
    transparent_crc(p_907->g_513, "p_907->g_513", print_hash_value);
    transparent_crc(p_907->g_531, "p_907->g_531", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_907->g_723[i].f0, "p_907->g_723[i].f0", print_hash_value);

    }
    transparent_crc(p_907->g_772, "p_907->g_772", print_hash_value);
    transparent_crc(p_907->g_868, "p_907->g_868", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
