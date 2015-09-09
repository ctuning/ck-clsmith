// ---fake_divergence -g 93,11,9 -l 31,1,1
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


// Seed: 36

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    int32_t g_4;
    int32_t g_9;
    volatile uint8_t g_14;
    uint32_t g_28;
    int32_t *g_44[3];
    int32_t **g_43;
    VECTOR(uint64_t, 16) g_95;
    VECTOR(int8_t, 4) g_96;
    int8_t *g_128[1][6];
    uint32_t g_137;
    uint32_t *g_136;
    int32_t g_155;
    VECTOR(uint16_t, 4) g_168;
    int32_t g_174;
    VECTOR(int8_t, 2) g_186;
    uint16_t g_212;
    volatile VECTOR(uint64_t, 16) g_222;
    volatile uint64_t *g_221;
    volatile VECTOR(int64_t, 4) g_239;
    uint16_t g_240;
    uint16_t g_243;
    volatile uint16_t g_247[1];
    volatile int16_t * volatile g_259;
    int32_t *g_270;
    volatile VECTOR(uint8_t, 8) g_307;
    volatile VECTOR(uint8_t, 16) g_308;
    volatile uint32_t g_321;
    VECTOR(uint32_t, 4) g_325;
    volatile VECTOR(uint32_t, 16) g_326;
    VECTOR(uint32_t, 2) g_336;
    uint32_t g_346;
    volatile VECTOR(int64_t, 2) g_356;
    VECTOR(int64_t, 16) g_363;
    int64_t g_369;
    volatile VECTOR(int64_t, 16) g_377;
    volatile VECTOR(int64_t, 4) g_378;
    VECTOR(int64_t, 4) g_385;
    VECTOR(int64_t, 8) g_414;
    VECTOR(int16_t, 8) g_422;
    uint64_t g_440;
    VECTOR(int8_t, 2) g_455;
    VECTOR(int64_t, 2) g_464;
    int8_t g_493;
    uint16_t *g_509;
    VECTOR(int32_t, 8) g_556;
    uint8_t g_559;
    uint8_t *g_558;
    uint8_t ** volatile g_557;
    VECTOR(uint32_t, 2) g_562;
    volatile VECTOR(int64_t, 16) g_573;
    VECTOR(uint64_t, 16) g_581;
    int32_t g_588;
    volatile VECTOR(uint64_t, 2) g_605;
    uint32_t g_623[10];
    volatile VECTOR(int16_t, 2) g_625;
    volatile VECTOR(uint16_t, 16) g_643;
    VECTOR(int8_t, 8) g_644;
    uint64_t g_670;
    VECTOR(int16_t, 4) g_688;
    VECTOR(int16_t, 2) g_725;
    int32_t *g_755;
    int32_t **g_754;
    int64_t *g_775;
    int64_t **g_774[3][3];
    volatile VECTOR(int8_t, 2) g_833;
    VECTOR(int8_t, 4) g_834;
    VECTOR(uint64_t, 2) g_837;
    int16_t *g_843[10];
    int32_t ** volatile g_857;
    int32_t *g_859;
    int32_t ** volatile g_858;
    volatile VECTOR(uint32_t, 2) g_863;
    VECTOR(int16_t, 4) g_869;
    volatile int16_t * volatile *g_871;
    volatile int16_t * volatile * volatile * volatile g_870;
    uint8_t g_894;
    VECTOR(uint32_t, 8) g_948;
    int64_t g_980;
    volatile VECTOR(uint64_t, 4) g_981;
    VECTOR(uint64_t, 2) g_983;
    VECTOR(uint64_t, 2) g_984;
    volatile VECTOR(uint64_t, 4) g_986;
    uint32_t *g_999[7][1];
    uint32_t **g_998;
    uint32_t ** volatile *g_997;
    VECTOR(uint32_t, 16) g_1036;
    VECTOR(int32_t, 4) g_1056;
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
int64_t  func_1(struct S0 * p_1064);
int16_t  func_21(int32_t ** p_22, int32_t * p_23, int32_t * p_24, uint32_t  p_25, int32_t ** p_26, struct S0 * p_1064);
int32_t ** func_31(uint32_t  p_32, struct S0 * p_1064);
int32_t * func_39(int16_t  p_40, int32_t ** p_41, uint32_t  p_42, struct S0 * p_1064);
int32_t ** func_49(int32_t ** p_50, int64_t  p_51, int64_t  p_52, struct S0 * p_1064);
int32_t ** func_53(int32_t  p_54, int32_t ** p_55, int32_t  p_56, struct S0 * p_1064);
uint8_t  func_59(int32_t  p_60, uint32_t  p_61, int32_t ** p_62, uint64_t  p_63, struct S0 * p_1064);
int16_t  func_70(int32_t * p_71, uint64_t  p_72, int64_t  p_73, int32_t * p_74, struct S0 * p_1064);
int32_t ** func_76(uint32_t * p_77, uint32_t * p_78, int32_t  p_79, int32_t * p_80, uint32_t * p_81, struct S0 * p_1064);
uint32_t * func_82(int64_t  p_83, uint32_t * p_84, int32_t  p_85, int32_t  p_86, uint32_t * p_87, struct S0 * p_1064);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1064->g_4 p_1064->g_3 p_1064->g_14 p_1064->g_2 p_1064->g_28 p_1064->g_43 p_1064->g_9 p_1064->g_222 p_1064->g_307 p_1064->g_422 p_1064->g_623 p_1064->g_440 p_1064->g_625 p_1064->g_136 p_1064->g_643 p_1064->g_644 p_1064->g_581 p_1064->g_174 p_1064->g_558 p_1064->g_559 p_1064->g_509 p_1064->g_270 p_1064->g_155 p_1064->g_243 p_1064->g_464 p_1064->g_557 p_1064->g_168 p_1064->g_688 p_1064->g_670 p_1064->g_363 p_1064->g_369 p_1064->g_326 p_1064->g_325 p_1064->g_414 p_1064->g_754 p_1064->g_239 p_1064->g_774 p_1064->g_96 p_1064->g_128 p_1064->g_95 p_1064->g_833 p_1064->g_834 p_1064->g_837 p_1064->g_137 p_1064->g_858 p_1064->g_859 p_1064->g_863 p_1064->g_869 p_1064->g_870 p_1064->g_843 p_1064->g_894 p_1064->g_997 p_1064->g_871 p_1064->g_556 p_1064->g_1036 p_1064->g_1056 p_1064->g_562 p_1064->g_377
 * writes: p_1064->g_4 p_1064->g_14 p_1064->g_28 p_1064->g_44 p_1064->g_9 p_1064->g_137 p_1064->g_174 p_1064->g_559 p_1064->g_670 p_1064->g_422 p_1064->g_688 p_1064->g_754 p_1064->g_774 p_1064->g_325 p_1064->g_843 p_1064->g_623 p_1064->g_859 p_1064->g_243 p_1064->g_894 p_1064->g_369 p_1064->g_556
 */
int64_t  func_1(struct S0 * p_1064)
{ /* block id: 4 */
    int32_t *l_8 = &p_1064->g_9;
    int32_t *l_11 = &p_1064->g_4;
    int32_t *l_12[1];
    int32_t l_13 = 0x7A831EB2L;
    uint32_t *l_27 = &p_1064->g_28;
    int32_t l_33 = 0x7A5D8720L;
    uint8_t l_48 = 246UL;
    int64_t l_75 = (-5L);
    int32_t l_622 = 0x54AE0C93L;
    int64_t l_861 = 0x4F9270D475B927EFL;
    int32_t l_862 = (-3L);
    int32_t *l_1018[8][2] = {{&l_33,&l_622},{&l_33,&l_622},{&l_33,&l_622},{&l_33,&l_622},{&l_33,&l_622},{&l_33,&l_622},{&l_33,&l_622},{&l_33,&l_622}};
    int i, j;
    for (i = 0; i < 1; i++)
        l_12[i] = &p_1064->g_9;
    for (p_1064->g_4 = (-30); (p_1064->g_4 == (-23)); p_1064->g_4 = safe_add_func_int32_t_s_s(p_1064->g_4, 7))
    { /* block id: 7 */
        int32_t *l_7 = &p_1064->g_4;
        int32_t **l_10 = &l_8;
        l_8 = l_7;
        (*l_10) = l_7;
        if (p_1064->g_3)
            continue;
    }
    p_1064->g_14++;
    for (p_1064->g_4 = (-26); (p_1064->g_4 != 15); ++p_1064->g_4)
    { /* block id: 15 */
        return p_1064->g_2;
    }
    (*l_11) = (((*p_1064->g_509) = ((safe_sub_func_int16_t_s_s(func_21(((++(*l_27)) , func_31(l_33, p_1064)), func_39(l_48, func_49(func_53((safe_rshift_func_int16_t_s_u((((func_59(((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s(func_70(&l_33, p_1064->g_2, l_75, func_39((&l_33 == &l_33), p_1064->g_43, p_1064->g_9, p_1064), p_1064), 1L)) , p_1064->g_222.sa) && p_1064->g_307.s4), l_622)), p_1064->g_422.s4)) != p_1064->g_623[7]), p_1064->g_440, &l_12[0], p_1064->g_9, p_1064) , l_861) != p_1064->g_837.x) , 0x288AL), 5)), &l_8, l_862, p_1064), l_33, l_862, p_1064), l_48, p_1064), l_1018[6][0], p_1064->g_581.s9, p_1064->g_43, p_1064), p_1064->g_562.x)) , (*p_1064->g_509))) | 0UL);
    return p_1064->g_377.sc;
}


/* ------------------------------------------ */
/* 
 * reads : p_1064->g_1036 p_1064->g_557 p_1064->g_558 p_1064->g_559 p_1064->g_894 p_1064->g_28 p_1064->g_174 p_1064->g_1056
 * writes: p_1064->g_44 p_1064->g_894 p_1064->g_174
 */
int16_t  func_21(int32_t ** p_22, int32_t * p_23, int32_t * p_24, uint32_t  p_25, int32_t ** p_26, struct S0 * p_1064)
{ /* block id: 366 */
    uint64_t *l_1020 = &p_1064->g_440;
    uint64_t **l_1019 = &l_1020;
    uint64_t ***l_1021 = &l_1019;
    int32_t l_1022 = 0x26897F43L;
    int32_t *l_1023 = &l_1022;
    int32_t *l_1024 = (void*)0;
    int32_t *l_1025 = &p_1064->g_174;
    int32_t *l_1026 = &p_1064->g_174;
    int32_t *l_1027[4][5][2] = {{{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9}},{{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9}},{{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9}},{{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9},{&p_1064->g_174,&p_1064->g_9}}};
    uint32_t l_1028 = 0UL;
    int32_t l_1035 = 0x27DC512DL;
    VECTOR(uint8_t, 16) l_1039 = (VECTOR(uint8_t, 16))(0xD3L, (VECTOR(uint8_t, 4))(0xD3L, (VECTOR(uint8_t, 2))(0xD3L, 255UL), 255UL), 255UL, 0xD3L, 255UL, (VECTOR(uint8_t, 2))(0xD3L, 255UL), (VECTOR(uint8_t, 2))(0xD3L, 255UL), 0xD3L, 255UL, 0xD3L, 255UL);
    uint8_t *l_1040[1];
    uint32_t l_1049 = 1UL;
    VECTOR(uint32_t, 8) l_1052 = (VECTOR(uint32_t, 8))(0xBB4B25FFL, (VECTOR(uint32_t, 4))(0xBB4B25FFL, (VECTOR(uint32_t, 2))(0xBB4B25FFL, 0x54328F17L), 0x54328F17L), 0x54328F17L, 0xBB4B25FFL, 0x54328F17L);
    VECTOR(uint32_t, 4) l_1053 = (VECTOR(uint32_t, 4))(0x6B7D8533L, (VECTOR(uint32_t, 2))(0x6B7D8533L, 1UL), 1UL);
    VECTOR(uint32_t, 4) l_1054 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 6UL), 6UL);
    VECTOR(uint32_t, 4) l_1055 = (VECTOR(uint32_t, 4))(0x0D15C926L, (VECTOR(uint32_t, 2))(0x0D15C926L, 4294967287UL), 4294967287UL);
    int8_t l_1057[3];
    int16_t *l_1058 = (void*)0;
    int16_t *l_1059 = (void*)0;
    int16_t *l_1060 = (void*)0;
    int16_t *l_1061[1];
    uint32_t l_1062 = 0x5D1B57B4L;
    uint16_t l_1063[9][5] = {{0xA935L,1UL,65532UL,65527UL,65532UL},{0xA935L,1UL,65532UL,65527UL,65532UL},{0xA935L,1UL,65532UL,65527UL,65532UL},{0xA935L,1UL,65532UL,65527UL,65532UL},{0xA935L,1UL,65532UL,65527UL,65532UL},{0xA935L,1UL,65532UL,65527UL,65532UL},{0xA935L,1UL,65532UL,65527UL,65532UL},{0xA935L,1UL,65532UL,65527UL,65532UL},{0xA935L,1UL,65532UL,65527UL,65532UL}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1040[i] = &p_1064->g_894;
    for (i = 0; i < 3; i++)
        l_1057[i] = 0x4CL;
    for (i = 0; i < 1; i++)
        l_1061[i] = (void*)0;
    (*p_22) = ((p_25 , p_25) , (void*)0);
    (*l_1021) = l_1019;
    l_1028--;
    l_1063[5][4] = ((*p_24) = (safe_sub_func_int8_t_s_s(((safe_add_func_int32_t_s_s(l_1035, (((VECTOR(uint32_t, 8))(0UL, ((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 16))(p_1064->g_1036.s7b1cc1a40118b6ac)).s6d4a, (uint32_t)(((p_1064->g_894 |= (safe_mod_func_uint32_t_u_u(((**p_1064->g_557) != ((VECTOR(uint8_t, 2))(l_1039.s6f)).hi), p_25))) & ((((*l_1023) = (((safe_sub_func_int8_t_s_s((safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1064->global_2_offset, get_global_id(2), 10), (((p_1064->g_28 && (safe_mul_func_uint16_t_u_u((l_1049--), (0x5E167240L >= ((*l_1026) &= (*p_24)))))) || (*l_1026)) >= (((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 8))(l_1052.s00444712)), ((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_1053.ww)).xyyxyxxx)).s16))).yyxyyxxy, ((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(l_1054.wyxwwywwyxywzxyw)).sa9)).yxxyyxxxxyxxxyyx, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_1055.yz)), 0xBB6B8648L, ((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-2L), 0x325D7C13L)).xyyxyxyx)).even, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))((-7L), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(p_1064->g_1056.zw)).xxyx, ((VECTOR(int32_t, 16))(0x72EB313DL, 0x41D7F9D9L, 0x173BB6A0L, (*p_24), 0x017A16B8L, 0x73B1ED0EL, ((VECTOR(int32_t, 4))(2L)), 0x25A6BC08L, ((VECTOR(int32_t, 4))((-5L))), 0x5F2E9429L)).se170))).wzwyyxwy)), (*p_24), 0L, l_1057[0], 0x48758A87L, 0x017FF312L, 6L, 0x7CE79098L)).s0f66)))))))), 4294967286UL)).s2046144445721273))).hi)).hi, ((VECTOR(uint32_t, 4))(0x081593A0L))))).wzzxywzx))).s1667176406113370)), ((VECTOR(uint32_t, 16))(4294967295UL)), ((VECTOR(uint32_t, 16))(0x89F96EDEL))))))).even, (uint32_t)0UL))).s7 == 0L)))), (*p_24))), p_25)) , (*l_1025)) | 0xB4L)) <= p_25) , 0xF5L)) , (*l_1026))))).hi)).xxxx, ((VECTOR(uint32_t, 4))(0UL)), ((VECTOR(uint32_t, 4))(0UL))))), ((VECTOR(uint32_t, 2))(0x8136E8B8L)), 4294967295UL)).s7 == 0x07ACB390L))) < l_1062), (*p_1064->g_558))));
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_1064->g_43
 * writes: p_1064->g_4 p_1064->g_44
 */
int32_t ** func_31(uint32_t  p_32, struct S0 * p_1064)
{ /* block id: 19 */
    VECTOR(int32_t, 8) l_34 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x5F58CDC1L), 0x5F58CDC1L), 0x5F58CDC1L, 9L, 0x5F58CDC1L);
    int32_t *l_35 = (void*)0;
    int32_t *l_36 = (void*)0;
    int32_t *l_37 = (void*)0;
    int32_t *l_38 = &p_1064->g_4;
    uint32_t l_45 = 0UL;
    int i;
    (*l_38) = (((VECTOR(int32_t, 16))(l_34.s4430567135506352)).se | ((p_32 ^ 0xEA82L) | (3UL && (l_34.s7 != 0xF1EFL))));
    (*p_1064->g_43) = func_39(p_32, p_1064->g_43, l_45, p_1064);
    return &p_1064->g_44[1];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_39(int16_t  p_40, int32_t ** p_41, uint32_t  p_42, struct S0 * p_1064)
{ /* block id: 21 */
    int32_t l_46 = 1L;
    int32_t *l_47[6][7][4] = {{{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9}},{{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9}},{{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9}},{{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9}},{{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9}},{{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9},{(void*)0,&p_1064->g_4,&p_1064->g_9,&p_1064->g_9}}};
    int i, j, k;
    l_46 ^= 1L;
    return l_47[1][2][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1064->g_859 p_1064->g_137 p_1064->g_174 p_1064->g_369 p_1064->g_509 p_1064->g_243 p_1064->g_168 p_1064->g_997 p_1064->g_870 p_1064->g_871 p_1064->g_556 p_1064->g_558 p_1064->g_559
 * writes: p_1064->g_369 p_1064->g_859 p_1064->g_243 p_1064->g_559 p_1064->g_174 p_1064->g_556 p_1064->g_137
 */
int32_t ** func_49(int32_t ** p_50, int64_t  p_51, int64_t  p_52, struct S0 * p_1064)
{ /* block id: 320 */
    int32_t l_918 = 5L;
    int32_t l_935 = 1L;
    VECTOR(uint16_t, 2) l_938 = (VECTOR(uint16_t, 2))(0x3BF0L, 0x1850L);
    int8_t l_945 = 0x79L;
    VECTOR(uint8_t, 4) l_968 = (VECTOR(uint8_t, 4))(0x57L, (VECTOR(uint8_t, 2))(0x57L, 0xDDL), 0xDDL);
    VECTOR(uint64_t, 4) l_988 = (VECTOR(uint64_t, 4))(0xDCF4B7A6440ABADCL, (VECTOR(uint64_t, 2))(0xDCF4B7A6440ABADCL, 0x40B9350753CA444CL), 0x40B9350753CA444CL);
    uint64_t l_992 = 2UL;
    int32_t **l_1017 = &p_1064->g_859;
    int i;
    if ((*p_1064->g_859))
    { /* block id: 321 */
        int32_t *l_913[5][6][7] = {{{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9}},{{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9}},{{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9}},{{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9}},{{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9},{(void*)0,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,(void*)0,&p_1064->g_174,&p_1064->g_9}}};
        int16_t **l_916 = &p_1064->g_843[5];
        VECTOR(uint16_t, 8) l_920 = (VECTOR(uint16_t, 8))(0xAA37L, (VECTOR(uint16_t, 4))(0xAA37L, (VECTOR(uint16_t, 2))(0xAA37L, 0xF378L), 0xF378L), 0xF378L, 0xAA37L, 0xF378L);
        VECTOR(uint16_t, 4) l_937 = (VECTOR(uint16_t, 4))(0x482FL, (VECTOR(uint16_t, 2))(0x482FL, 0x87DBL), 0x87DBL);
        VECTOR(uint8_t, 4) l_964 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x1EL), 0x1EL);
        int i, j, k;
        for (p_1064->g_369 = 0; (p_1064->g_369 <= (-6)); p_1064->g_369 = safe_sub_func_int64_t_s_s(p_1064->g_369, 1))
        { /* block id: 324 */
            uint8_t l_917[7];
            uint32_t *l_919 = (void*)0;
            int32_t **l_925 = &p_1064->g_859;
            uint32_t *l_929 = (void*)0;
            uint32_t **l_928 = &l_929;
            int64_t *l_930 = (void*)0;
            int64_t *l_931 = (void*)0;
            int64_t *l_932 = (void*)0;
            int64_t *l_933 = (void*)0;
            int64_t *l_934[2][1][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}}};
            int32_t l_936 = (-10L);
            VECTOR(uint32_t, 4) l_949 = (VECTOR(uint32_t, 4))(0x1D0C79F3L, (VECTOR(uint32_t, 2))(0x1D0C79F3L, 0xFCE71397L), 0xFCE71397L);
            int64_t **l_957 = &l_930;
            int32_t l_974 = 2L;
            VECTOR(uint64_t, 8) l_982 = (VECTOR(uint64_t, 8))(0x8C151595CCC14E4BL, (VECTOR(uint64_t, 4))(0x8C151595CCC14E4BL, (VECTOR(uint64_t, 2))(0x8C151595CCC14E4BL, 1UL), 1UL), 1UL, 0x8C151595CCC14E4BL, 1UL);
            VECTOR(int64_t, 8) l_985 = (VECTOR(int64_t, 8))(0x171133297A1DAE60L, (VECTOR(int64_t, 4))(0x171133297A1DAE60L, (VECTOR(int64_t, 2))(0x171133297A1DAE60L, (-7L)), (-7L)), (-7L), 0x171133297A1DAE60L, (-7L));
            VECTOR(uint64_t, 8) l_989 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x29BC23B684451400L), 0x29BC23B684451400L), 0x29BC23B684451400L, 1UL, 0x29BC23B684451400L);
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_917[i] = 0xC3L;
            (*p_50) = l_913[4][5][4];
            if ((((safe_rshift_func_int16_t_s_u((p_52 == (l_917[2] = (0xF7L & ((void*)0 == l_916)))), 6)) , (l_935 &= (l_918 || (((p_51 , l_919) == ((*l_928) = func_39((((VECTOR(uint16_t, 8))(l_920.s71012000)).s6 == (safe_lshift_func_uint16_t_u_u(((*p_1064->g_509)--), 0))), l_925, ((safe_add_func_uint64_t_u_u(p_1064->g_168.y, 18446744073709551615UL)) , GROUP_DIVERGE(1, 1)), p_1064))) | GROUP_DIVERGE(2, 1))))) == p_51))
            { /* block id: 330 */
                l_936 ^= 0x4BC5B124L;
                return &p_1064->g_859;
            }
            else
            { /* block id: 333 */
                VECTOR(uint16_t, 8) l_939 = (VECTOR(uint16_t, 8))(0x4ABAL, (VECTOR(uint16_t, 4))(0x4ABAL, (VECTOR(uint16_t, 2))(0x4ABAL, 65533UL), 65533UL), 65533UL, 0x4ABAL, 65533UL);
                int64_t *l_960 = (void*)0;
                int64_t l_962 = 0L;
                int32_t **l_963 = (void*)0;
                VECTOR(uint8_t, 2) l_965 = (VECTOR(uint8_t, 2))(0x3DL, 0x3BL);
                VECTOR(uint8_t, 8) l_966 = (VECTOR(uint8_t, 8))(0x52L, (VECTOR(uint8_t, 4))(0x52L, (VECTOR(uint8_t, 2))(0x52L, 255UL), 255UL), 255UL, 0x52L, 255UL);
                VECTOR(uint8_t, 4) l_967 = (VECTOR(uint8_t, 4))(0x45L, (VECTOR(uint8_t, 2))(0x45L, 5UL), 5UL);
                int32_t l_993 = 0x5258252CL;
                uint32_t l_1000 = 0x69F45701L;
                int i;
                l_918 = (((VECTOR(uint16_t, 4))(l_937.xwyx)).y <= ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 4))(l_938.yxyx)).yzxwzzxy, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))((GROUP_DIVERGE(2, 1) , ((VECTOR(uint16_t, 8))(l_939.s05717652)).s4), ((VECTOR(uint16_t, 2))(3UL, 0xA45DL)), 65535UL)))).wzxxzzxx, ((VECTOR(uint16_t, 4))(0x3F71L, 0x2CE5L, 0xEA03L, 0UL)).wzzwyyyy))))))).s3623131341275562)).hi))))).s3026734422361303, (uint16_t)(safe_add_func_int8_t_s_s(p_51, (l_939.s2 >= p_51)))))).sb);
                for (p_1064->g_559 = 0; (p_1064->g_559 >= 25); ++p_1064->g_559)
                { /* block id: 337 */
                    uint8_t l_944 = 0x16L;
                    l_944 ^= p_51;
                }
                if (l_945)
                    break;
                for (p_1064->g_174 = 16; (p_1064->g_174 == (-4)); --p_1064->g_174)
                { /* block id: 343 */
                    uint64_t *l_954 = (void*)0;
                    int32_t l_961 = 0x18107B9EL;
                    int16_t ***l_969 = (void*)0;
                    uint32_t *l_970 = (void*)0;
                    uint32_t *l_971 = (void*)0;
                    uint32_t *l_972[1][1];
                    int32_t l_973[4][2][3] = {{{8L,0x01C679A1L,8L},{8L,0x01C679A1L,8L}},{{8L,0x01C679A1L,8L},{8L,0x01C679A1L,8L}},{{8L,0x01C679A1L,8L},{8L,0x01C679A1L,8L}},{{8L,0x01C679A1L,8L},{8L,0x01C679A1L,8L}}};
                    int64_t *l_979 = &p_1064->g_980;
                    VECTOR(uint64_t, 2) l_987 = (VECTOR(uint64_t, 2))(6UL, 0xDB561A5692A86B96L);
                    int32_t **l_994 = &l_913[4][3][3];
                    uint64_t **l_1015 = &l_954;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_972[i][j] = (void*)0;
                    }
                    l_936 = (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(p_1064->g_948.s24614707)).hi)), ((VECTOR(uint32_t, 8))(GROUP_DIVERGE(2, 1), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(l_949.xywxwzxwzyywyxyw)).s52)), 0x00244B5BL, 0xB6EE2A1DL)), 4294967294UL, 8UL, 4294967289UL, 7UL)).s03)).yxxx)), (safe_div_func_int32_t_s_s(((safe_sub_func_uint64_t_u_u((l_918 = 0x263308D70EBF1588L), (((safe_lshift_func_uint8_t_u_u((&p_1064->g_871 != (void*)0), ((p_52 , &p_1064->g_775) == l_957))) >= 5L) < (**p_1064->g_557)))) != ((((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 8))(0x5DD87E7CL, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((safe_div_func_int8_t_s_s(((*l_957) == l_960), (*p_1064->g_558))), 0x24714C4CL, l_961, 0L, ((VECTOR(int32_t, 4))((-10L))))).lo)), ((VECTOR(int32_t, 2))(5L)), 0x7E5313FFL)).s41, ((VECTOR(uint32_t, 2))(0x650E09DBL))))).hi > p_51) ^ 0x70L)), p_52)), 4294967291UL, 0xD4A7B60DL)), 6UL, 0x6B09489BL, 0xFE5174BAL, 0xF10094DFL)).sc <= p_52);
                    (*l_994) = ((*p_50) = func_39(l_962, l_963, (l_993 = ((FAKE_DIVERGE(p_1064->global_0_offset, get_global_id(0), 10) , ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(6UL, 1UL)))).yyxy, ((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 16))(250UL, ((*p_1064->g_558) = (*p_1064->g_558)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_964.wwyyxwxx)).s77)), 0x7EL, ((VECTOR(uint8_t, 4))(l_965.xxyx)), ((VECTOR(uint8_t, 4))(255UL, 0x62L, 0x57L, 248UL)), ((VECTOR(uint8_t, 2))(0xD0L, 0x36L)), 255UL)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 4))(0x5DL, FAKE_DIVERGE(p_1064->local_2_offset, get_local_id(2), 10), 7UL, 255UL)).yzzxzzwzzzzyxyyx, ((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 2))(0xDDL, 254UL)).yxxy, ((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(255UL, ((VECTOR(uint8_t, 2))(l_966.s63)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_967.yx)).xxyyyxxxyxyyyyyx)))).sa4)).xyyx, ((VECTOR(uint8_t, 16))(l_968.yyywyxwwwxwzwzww)).se3f5))).even)), (((*p_1064->g_558) = (((p_51 &= ((p_1064->g_556.s5 , l_969) == &p_1064->g_871)) , (++p_1064->g_562.y)) <= p_52)) < (safe_sub_func_uint64_t_u_u((((*l_979) &= p_52) , ((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(0UL, 3UL)))).xxxyyyyxyyxxxyyy))).s43d4, ((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 2))(p_1064->g_981.yz)).xxxx, ((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 2))(l_982.s31)).yyyxxxyxyxyyxyxy, ((VECTOR(uint64_t, 2))(18446744073709551610UL, 0x235F41E5FF4AD041L)).yyxxyyxxxxxyyyxx, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(p_1064->g_983.yx)), 0x1F23099E54AEF6E1L, GROUP_DIVERGE(2, 1), ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 2))(p_1064->g_984.xy)).xxxx, ((VECTOR(uint64_t, 4))(0UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_985.s54)).yyxy)).ywyxwwwywwyxxwzz, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((-1L), 0x54A90DEE0C6FF34FL)).yxyxyxxx)).s3010355261374762))).sd4b7, ((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),uint64_t,((VECTOR(uint64_t, 4))(p_1064->g_986.ywzz)).odd, (uint64_t)((VECTOR(uint64_t, 16))(l_987.yxxxxxyyxxyxyxxy)).s0, (uint64_t)GROUP_DIVERGE(1, 1)))).xxxxxyyyxyyyxyyy)).even, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 8))(l_988.xwwxywxx)).lo, ((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(l_989.s4104)))).zyzxwwzw, (uint64_t)((safe_sub_func_uint16_t_u_u(0UL, l_992)) == 0x2C1D904BD8C75868L)))).even, ((VECTOR(uint64_t, 4))(18446744073709551611UL))))).xwzwwzxz))))).lo, ((VECTOR(uint64_t, 4))(0xD5F75CE21A3FDC66L))))), ((VECTOR(uint64_t, 4))(0x686274DAB033D34AL))))).odd)))), 0xD81160F12BD50751L)), ((VECTOR(uint64_t, 4))(4UL))))))).s1505244332623434))).s0715)))))).y), p_52))), 5UL, 0x83L)).s53, ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 2))(9UL))))).xyxx))).wxyxxyywxywzzwwy))).hi)).s6336772577502534))).sba80, ((VECTOR(uint8_t, 4))(1UL))))).w) <= l_988.y)), p_1064));
                    p_1064->g_556.s0 &= ((((VECTOR(uint8_t, 4))(0UL, 0x9FL, 0x24L, 0UL)).z || ((safe_sub_func_uint16_t_u_u((p_52 >= (((void*)0 == p_1064->g_997) & 0UL)), p_52)) >= ((*p_1064->g_870) != (void*)0))) || (l_1000 , 9UL));
                    (*l_925) = func_39(l_973[3][0][0], &p_1064->g_859, (+(safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s(p_52, (*p_1064->g_558))), (l_966.s1 == (safe_sub_func_uint8_t_u_u((*p_1064->g_558), (safe_rshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_u(p_51, (((*l_1015) = l_979) == (GROUP_DIVERGE(0, 1) , l_932)))), (*p_1064->g_509))) ^ p_51), 5)), 4)))))))), p_1064);
                }
            }
        }
        l_913[4][2][6] = (void*)0;
        (*p_50) = &l_918;
    }
    else
    { /* block id: 362 */
        uint32_t l_1016 = 0xAA768032L;
        (**p_50) = (~l_1016);
    }
    return &p_1064->g_859;
}


/* ------------------------------------------ */
/* 
 * reads : p_1064->g_863 p_1064->g_509 p_1064->g_243 p_1064->g_869 p_1064->g_870 p_1064->g_843 p_1064->g_859 p_1064->g_137 p_1064->g_174 p_1064->g_557 p_1064->g_558 p_1064->g_559 p_1064->g_894 p_1064->g_325 p_1064->g_581
 * writes: p_1064->g_243 p_1064->g_137 p_1064->g_174 p_1064->g_894
 */
int32_t ** func_53(int32_t  p_54, int32_t ** p_55, int32_t  p_56, struct S0 * p_1064)
{ /* block id: 308 */
    VECTOR(uint16_t, 16) l_868 = (VECTOR(uint16_t, 16))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 1UL), 1UL), 1UL, 5UL, 1UL, (VECTOR(uint16_t, 2))(5UL, 1UL), (VECTOR(uint16_t, 2))(5UL, 1UL), 5UL, 1UL, 5UL, 1UL);
    int16_t **l_874 = &p_1064->g_843[7];
    int16_t ***l_873 = &l_874;
    int16_t ****l_872 = &l_873;
    uint32_t l_881[3][3][4] = {{{4UL,4UL,3UL,0UL},{4UL,4UL,3UL,0UL},{4UL,4UL,3UL,0UL}},{{4UL,4UL,3UL,0UL},{4UL,4UL,3UL,0UL},{4UL,4UL,3UL,0UL}},{{4UL,4UL,3UL,0UL},{4UL,4UL,3UL,0UL},{4UL,4UL,3UL,0UL}}};
    int32_t l_882 = 0x0E8151D9L;
    uint8_t *l_893 = &p_1064->g_894;
    uint16_t **l_901 = &p_1064->g_509;
    uint16_t **l_903[6] = {&p_1064->g_509,&p_1064->g_509,&p_1064->g_509,&p_1064->g_509,&p_1064->g_509,&p_1064->g_509};
    uint16_t ***l_902 = &l_903[1];
    uint16_t **l_905 = (void*)0;
    uint16_t ***l_904[9][3][7] = {{{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905}},{{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905}},{{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905}},{{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905}},{{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905}},{{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905}},{{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905}},{{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905}},{{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905},{&l_905,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_905}}};
    uint16_t **l_906 = (void*)0;
    VECTOR(int32_t, 4) l_909 = (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 1L), 1L);
    int32_t **l_910[10] = {&p_1064->g_859,&p_1064->g_859,&p_1064->g_859,&p_1064->g_859,&p_1064->g_859,&p_1064->g_859,&p_1064->g_859,&p_1064->g_859,&p_1064->g_859,&p_1064->g_859};
    int i, j, k;
    (*p_1064->g_859) = (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 16))(p_1064->g_863.xyxxxxyxyxxyxxyx)), ((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 4))((l_882 |= ((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(((*p_1064->g_509)++), ((VECTOR(uint16_t, 2))(l_868.sb0)), ((*p_1064->g_509) &= FAKE_DIVERGE(p_1064->local_1_offset, get_local_id(1), 10)), 8UL, ((p_54 | (((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))(p_1064->g_869.ywxwzxyx)).s44, ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 8))(1UL, (*p_1064->g_509), (((((p_56 , p_1064->g_870) == ((*l_872) = (void*)0)) != 9L) , (safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(((*l_874) != (void*)0), 7)), (safe_mod_func_uint64_t_u_u(l_881[2][1][1], l_881[2][0][3]))))) >= p_54), 0UL, ((VECTOR(uint16_t, 2))(0UL)), 65529UL, 0x61A4L)).odd, ((VECTOR(uint16_t, 4))(0x36BEL))))).xzzyxwzwxwwzzxzy)).s37)).xxxyxxyyxxxyyxyy)).lo)).s53))).xyyyyyxyyyyxyyyy, ((VECTOR(uint16_t, 16))(0xCFC1L))))).seb))).xyyyyyxy, ((VECTOR(int32_t, 8))(0x385F876FL))))).s2 < (*p_1064->g_859))) && p_54), 0x84CBL, 0x1BFBL)).odd, ((VECTOR(uint16_t, 4))(0x3DC2L))))).zywxwxwxzxzxzwyz, ((VECTOR(uint16_t, 16))(0xCFF1L))))).s9, 4)) , p_54)), l_882, 0x1EL, 0x35L)).wwwzxyxy, ((VECTOR(uint8_t, 8))(0xBBL))))).lo, ((VECTOR(uint8_t, 4))(0xD2L))))).even, ((VECTOR(uint16_t, 2))(0x5557L))))), ((VECTOR(uint32_t, 2))(0xCFAF6902L))))).xxxxyxyyxxxyyxyx))).s32)), 0xD024D413L, 0x19B12171L)), ((VECTOR(uint32_t, 4))(0x84C15541L)), ((VECTOR(uint32_t, 8))(0xF077F2A5L)))).s7 < 0xCB77D104L);
    (*p_55) = func_39(((**p_1064->g_557) != (safe_mul_func_uint16_t_u_u(((((safe_mul_func_uint16_t_u_u(((*p_1064->g_509) = (safe_rshift_func_uint8_t_u_u((0L >= (safe_add_func_int64_t_s_s(l_881[0][1][0], ((safe_mul_func_uint8_t_u_u((++(*l_893)), (((safe_mod_func_int64_t_s_s(((((safe_sub_func_int8_t_s_s(p_56, ((l_901 != (l_906 = ((*l_902) = (void*)0))) != 1UL))) == (safe_add_func_int32_t_s_s((*p_1064->g_859), (((((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 16))(l_909.wyywxxxzzxyyzyzx)).sf0, ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x1217FE10L, 0x67435E37L)).xxxx)), p_56, p_56, 0x138675ADL, 0x6AA25DDCL)), ((VECTOR(int32_t, 8))(1L))))).s45, ((VECTOR(int32_t, 2))((-1L)))))).lo , &p_1064->g_774[1][2]) != (void*)0) , p_54)))) > l_868.s4) == p_56), l_868.sd)) > 0x7A0CL) != p_54))) && p_1064->g_325.w)))), p_54))), (-1L))) == 0xC0418DEF213D0198L) & 18446744073709551615UL) , 0x9507L), l_909.y))), l_910[7], p_1064->g_581.sf, p_1064);
    return &p_1064->g_859;
}


/* ------------------------------------------ */
/* 
 * reads : p_1064->g_9 p_1064->g_625 p_1064->g_136 p_1064->g_643 p_1064->g_644 p_1064->g_3 p_1064->g_581 p_1064->g_174 p_1064->g_623 p_1064->g_558 p_1064->g_559 p_1064->g_509 p_1064->g_270 p_1064->g_155 p_1064->g_243 p_1064->g_464 p_1064->g_43 p_1064->g_557 p_1064->g_168 p_1064->g_688 p_1064->g_422 p_1064->g_670 p_1064->g_363 p_1064->g_369 p_1064->g_326 p_1064->g_325 p_1064->g_414 p_1064->g_754 p_1064->g_239 p_1064->g_774 p_1064->g_96 p_1064->g_128 p_1064->g_95 p_1064->g_833 p_1064->g_834 p_1064->g_837 p_1064->g_137 p_1064->g_858 p_1064->g_859
 * writes: p_1064->g_9 p_1064->g_137 p_1064->g_174 p_1064->g_559 p_1064->g_670 p_1064->g_422 p_1064->g_688 p_1064->g_754 p_1064->g_774 p_1064->g_325 p_1064->g_843 p_1064->g_623 p_1064->g_859
 */
uint8_t  func_59(int32_t  p_60, uint32_t  p_61, int32_t ** p_62, uint64_t  p_63, struct S0 * p_1064)
{ /* block id: 219 */
    int64_t l_624[10][6] = {{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L},{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L},{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L},{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L},{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L},{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L},{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L},{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L},{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L},{(-1L),3L,3L,(-1L),0x58838C6FEF1214F0L,1L}};
    int32_t *l_626 = &p_1064->g_174;
    VECTOR(int8_t, 8) l_640 = (VECTOR(int8_t, 8))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-7L)), (-7L)), (-7L), (-3L), (-7L));
    int32_t l_666 = 0x270F7698L;
    int32_t *l_687 = &p_1064->g_588;
    uint16_t *l_719 = &p_1064->g_243;
    uint32_t *l_730 = (void*)0;
    uint32_t **l_729[7][6][2] = {{{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730}},{{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730}},{{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730}},{{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730}},{{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730}},{{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730}},{{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730},{&l_730,&l_730}}};
    int32_t l_733 = 3L;
    int32_t l_735 = (-2L);
    VECTOR(int32_t, 8) l_737 = (VECTOR(int32_t, 8))(0x79B0BD78L, (VECTOR(int32_t, 4))(0x79B0BD78L, (VECTOR(int32_t, 2))(0x79B0BD78L, (-2L)), (-2L)), (-2L), 0x79B0BD78L, (-2L));
    int8_t l_745 = 0x60L;
    VECTOR(int64_t, 2) l_779 = (VECTOR(int64_t, 2))((-10L), (-10L));
    int32_t ***l_782 = &p_1064->g_754;
    uint32_t l_783 = 0x9822418EL;
    VECTOR(uint64_t, 4) l_803 = (VECTOR(uint64_t, 4))(0x396DAD7435E5DF8BL, (VECTOR(uint64_t, 2))(0x396DAD7435E5DF8BL, 1UL), 1UL);
    VECTOR(int8_t, 16) l_832 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2BL), 0x2BL), 0x2BL, 1L, 0x2BL, (VECTOR(int8_t, 2))(1L, 0x2BL), (VECTOR(int8_t, 2))(1L, 0x2BL), 1L, 0x2BL, 1L, 0x2BL);
    uint8_t l_852 = 0UL;
    uint32_t l_853 = 0x4F22C3FDL;
    uint32_t **l_856 = &l_730;
    int32_t l_860 = 0x0A345816L;
    int i, j, k;
    (**p_62) &= l_624[9][5];
    if ((p_60 & ((VECTOR(int16_t, 4))(p_1064->g_625.xxxy)).w))
    { /* block id: 221 */
        int8_t *l_637 = (void*)0;
        int32_t l_638[5][9][3] = {{{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L}},{{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L}},{{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L}},{{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L}},{{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L},{0x7612641BL,0L,0L}}};
        VECTOR(int8_t, 4) l_639 = (VECTOR(int8_t, 4))(0x45L, (VECTOR(int8_t, 2))(0x45L, 0x5DL), 0x5DL);
        int8_t *l_645 = (void*)0;
        int8_t *l_646 = (void*)0;
        VECTOR(int8_t, 8) l_647 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x60L), 0x60L), 0x60L, 0L, 0x60L);
        int16_t *l_648[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_649 = 0L;
        uint32_t l_650 = 0UL;
        int32_t l_660 = (-1L);
        int64_t l_671 = 8L;
        int32_t *l_672 = (void*)0;
        VECTOR(uint32_t, 16) l_684 = (VECTOR(uint32_t, 16))(0xA051DC71L, (VECTOR(uint32_t, 4))(0xA051DC71L, (VECTOR(uint32_t, 2))(0xA051DC71L, 0x7B7E8A5FL), 0x7B7E8A5FL), 0x7B7E8A5FL, 0xA051DC71L, 0x7B7E8A5FL, (VECTOR(uint32_t, 2))(0xA051DC71L, 0x7B7E8A5FL), (VECTOR(uint32_t, 2))(0xA051DC71L, 0x7B7E8A5FL), 0xA051DC71L, 0x7B7E8A5FL, 0xA051DC71L, 0x7B7E8A5FL);
        int64_t *l_700 = (void*)0;
        int64_t **l_699 = &l_700;
        VECTOR(int64_t, 4) l_709 = (VECTOR(int64_t, 4))(0x79813266AC078432L, (VECTOR(int64_t, 2))(0x79813266AC078432L, 0x682A3CA4E73A1647L), 0x682A3CA4E73A1647L);
        uint32_t **l_765 = &l_730;
        int i, j, k;
        (*p_62) = l_626;
        if ((safe_add_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((((((safe_lshift_func_int16_t_s_s((l_649 |= (safe_sub_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(p_63, (l_638[0][5][2] = (((*p_1064->g_136) = 0x0B2BA518L) , 0x3BL)))), (((((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(l_639.zzzzywxywzzxxwyz)), ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 16))(l_640.s1143123544074725)).hi, ((VECTOR(int8_t, 4))(((*l_626) = (safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(p_1064->g_643.s801c2f3cfea58db0)).sa, (((void*)0 != &p_1064->g_155) <= ((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(p_1064->g_644.s51)))).hi >= p_60) && 9UL))))), 0x4FL, 0x54L, 0x33L)).yxyzyzyy, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(4L, ((VECTOR(int8_t, 2))(0x45L, 0x19L)), (-3L), ((VECTOR(int8_t, 2))(0x5AL, (-1L))), 0x5EL, 0x72L)).s32, ((VECTOR(int8_t, 8))(l_647.s05361015)).s06))).xyyyxxxx))).s5045103715135431))).s4 < (-1L)) , p_1064->g_3) , 8UL)))), p_1064->g_581.sd)) < 0x09L) , (*l_626)) <= l_650) && (*l_626)), p_1064->g_623[8])), l_639.x)))
        { /* block id: 227 */
            int32_t l_657 = 0x5E191F77L;
            int32_t *l_665[2];
            uint64_t *l_667 = (void*)0;
            uint64_t *l_668 = (void*)0;
            uint64_t *l_669 = (void*)0;
            int i;
            for (i = 0; i < 2; i++)
                l_665[i] = &l_638[0][5][2];
            l_672 = func_39((((((*l_626) & (safe_add_func_uint64_t_u_u((GROUP_DIVERGE(1, 1) <= (safe_rshift_func_int8_t_s_s(((safe_div_func_uint8_t_u_u(((*p_1064->g_558) |= l_657), (safe_mul_func_int8_t_s_s((!(((((p_60 <= ((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((*l_626) <= l_660), 0x21C1B9530F1FE911L, (p_1064->g_670 = ((l_666 = (((void*)0 == p_1064->g_509) , (safe_mul_func_int16_t_s_s(7L, ((VECTOR(uint16_t, 4))((safe_div_func_int32_t_s_s(((((*p_1064->g_270) , l_657) , 0x0643L) || l_650), (*l_626))), (*p_1064->g_509), 0xAFCAL, 1UL)).y)))) >= p_1064->g_464.x)), 0x0959F4205B8AF7C1L, (*l_626), 0UL, ((VECTOR(uint64_t, 8))(0UL)), 0UL, 0xFBEC16E0B6700AC8L)).sb8)).hi & (*l_626)) < l_639.z)) , p_60) | (**p_62)) == 0x3B2CAEF4D0EB9A46L) <= 0x75L)), 8UL)))) , l_647.s5), l_647.s4))), l_671))) < l_650) >= p_60) , p_61), p_1064->g_43, p_61, p_1064);
        }
        else
        { /* block id: 232 */
            int64_t *l_679[8][4][8] = {{{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0}},{{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0}},{{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0}},{{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0}},{{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0}},{{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0}},{{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0}},{{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0},{&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0,&l_624[9][5],&l_624[9][5],(void*)0}}};
            int64_t **l_680 = (void*)0;
            int64_t *l_681 = &l_671;
            int32_t *l_686 = &p_1064->g_588;
            int32_t **l_685[2][9][4] = {{{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0}},{{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0},{(void*)0,(void*)0,&l_686,(void*)0}}};
            VECTOR(uint32_t, 2) l_713 = (VECTOR(uint32_t, 2))(0x3B897CF0L, 0x4D3C2205L);
            int32_t l_734 = 0x6136A758L;
            int32_t l_736 = 0x34CCA956L;
            int32_t l_738 = 0x5244E79EL;
            int32_t l_739 = 3L;
            int i, j, k;
            if ((safe_div_func_uint64_t_u_u((((((safe_sub_func_uint8_t_u_u((**p_1064->g_557), (((safe_mod_func_int8_t_s_s(((l_679[7][2][6] == (l_681 = &p_1064->g_369)) >= (safe_add_func_uint16_t_u_u(0x54AAL, (((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(5UL, ((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 2))(l_684.s52)), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((l_687 = (void*)0) == (((**p_62) = ((p_63 , ((p_1064->g_422.s0 ^= (p_1064->g_168.z >= (!((VECTOR(int16_t, 16))(p_1064->g_688.yyzyywyxzwyyyzxz)).s8))) >= (-1L))) ^ FAKE_DIVERGE(p_1064->global_0_offset, get_global_id(0), 10))) , &p_1064->g_588)), p_1064->g_670, 0xA3F753DEL, ((VECTOR(uint32_t, 8))(0x2E9EF00CL)), ((VECTOR(uint32_t, 4))(4294967293UL)), 1UL)).s1c))))), GROUP_DIVERGE(2, 1), 0xD573E592L, 0x6B1E2C1FL, 4294967290UL, 4294967287UL)).hi)).even)).odd != 0x42C91952L)))), (-3L))) || p_60) <= p_60))) && 0x3C4EABB6E1D7FC18L) & p_1064->g_363.s2) <= p_1064->g_369) >= 0UL), p_63)))
            { /* block id: 237 */
                uint32_t l_704 = 3UL;
                int64_t **l_718 = (void*)0;
                for (p_1064->g_9 = 24; (p_1064->g_9 <= (-7)); p_1064->g_9 = safe_sub_func_int64_t_s_s(p_1064->g_9, 9))
                { /* block id: 240 */
                    uint32_t *l_703 = &p_1064->g_137;
                    int32_t l_716 = (-5L);
                    int32_t l_717[3];
                    uint16_t *l_720 = (void*)0;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_717[i] = (-10L);
                    for (l_650 = 26; (l_650 < 41); l_650++)
                    { /* block id: 243 */
                        (*l_626) = (p_60 & 0x61A0L);
                    }
                    if ((safe_lshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u((p_1064->g_326.sf == (-4L)), (GROUP_DIVERGE(0, 1) ^ (safe_mul_func_int16_t_s_s(((&p_1064->g_9 != ((p_1064->g_688.z = (l_699 == ((((((safe_div_func_int8_t_s_s((l_672 != l_703), l_704)) == (safe_mod_func_uint32_t_u_u(((safe_sub_func_int32_t_s_s(p_1064->g_325.y, (l_716 = (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_709.yy)), (safe_unary_minus_func_uint32_t_u(((safe_div_func_uint16_t_u_u((((VECTOR(uint32_t, 8))(l_713.xyyxyyxx)).s2 & (safe_mod_func_int64_t_s_s((+p_1064->g_186.y), l_716))), 0x500CL)) < (-1L)))), p_60, p_1064->g_581.s7, (-3L), p_1064->g_95.s3, (-1L), p_1064->g_559, 0x55EF275BB6F2C0D2L, ((VECTOR(int64_t, 2))(0x4630769652A44F04L)), 0x09C63166236D74DBL, 0x73CC368CEC4FC148L, 0x0E434897442BD447L, 0x526FE903BB93F4A3L)).s44)).xyxxxyyx, ((VECTOR(int64_t, 8))(0L))))).s4134506324671303)).s8 , l_713.x)))) > p_60), l_704))) ^ 246UL) , 0x2687L) < l_717[1]) , l_718))) , &l_717[2])) < l_717[2]), l_713.y))))), p_60)))
                    { /* block id: 248 */
                        (*l_626) |= ((l_719 = &p_1064->g_243) != l_720);
                        (*l_626) = 0x029DC1E5L;
                    }
                    else
                    { /* block id: 252 */
                        int16_t **l_726[6];
                        int16_t ***l_727 = &l_726[0];
                        int i;
                        for (i = 0; i < 6; i++)
                            l_726[i] = &l_648[7];
                        (*p_62) = func_39(l_716, p_62, (((*l_626) ^= (safe_mul_func_int16_t_s_s(p_61, (*p_1064->g_509)))) , (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(p_1064->g_725.xyyyyxyxxxxyyxyy)).s3, 4))), p_1064);
                        (*l_626) ^= ((VECTOR(int32_t, 2))((-4L), 9L)).even;
                        (*l_727) = l_726[0];
                        if (p_1064->g_414.s0)
                            continue;
                    }
                }
                (*p_62) = (void*)0;
            }
            else
            { /* block id: 261 */
                uint32_t ***l_728 = (void*)0;
                int32_t l_731 = (-5L);
                int32_t *l_732[7][7] = {{&p_1064->g_9,(void*)0,&p_1064->g_174,(void*)0,&p_1064->g_9,&p_1064->g_9,(void*)0},{&p_1064->g_9,(void*)0,&p_1064->g_174,(void*)0,&p_1064->g_9,&p_1064->g_9,(void*)0},{&p_1064->g_9,(void*)0,&p_1064->g_174,(void*)0,&p_1064->g_9,&p_1064->g_9,(void*)0},{&p_1064->g_9,(void*)0,&p_1064->g_174,(void*)0,&p_1064->g_9,&p_1064->g_9,(void*)0},{&p_1064->g_9,(void*)0,&p_1064->g_174,(void*)0,&p_1064->g_9,&p_1064->g_9,(void*)0},{&p_1064->g_9,(void*)0,&p_1064->g_174,(void*)0,&p_1064->g_9,&p_1064->g_9,(void*)0},{&p_1064->g_9,(void*)0,&p_1064->g_174,(void*)0,&p_1064->g_9,&p_1064->g_9,(void*)0}};
                uint16_t l_740 = 0x8A52L;
                int i, j;
                l_729[1][3][1] = (void*)0;
                l_740--;
                for (l_671 = 0; (l_671 == (-14)); l_671 = safe_sub_func_int8_t_s_s(l_671, 4))
                { /* block id: 266 */
                    int8_t l_746 = 0x57L;
                    int32_t l_747 = (-5L);
                    int32_t l_748[10] = {0x5D6BAD58L,5L,8L,5L,0x5D6BAD58L,0x5D6BAD58L,5L,8L,5L,0x5D6BAD58L};
                    uint8_t l_749 = 255UL;
                    int32_t ***l_756[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    l_749++;
                    (**p_62) = ((safe_mod_func_int64_t_s_s(((p_1064->g_754 = p_1064->g_754) == &p_1064->g_755), ((**p_62) && ((*l_626) , (safe_sub_func_int64_t_s_s(((0UL > (*l_626)) , ((safe_lshift_func_int16_t_s_s(p_1064->g_239.z, 15)) != (safe_div_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((l_765 == (void*)0), 1)), 0x6D1E8FF60CBDE6DDL)))), FAKE_DIVERGE(p_1064->global_2_offset, get_global_id(2), 10))))))) , 0x47F7EB55L);
                }
            }
        }
    }
    else
    { /* block id: 273 */
        uint16_t **l_766 = &p_1064->g_509;
        uint16_t ***l_767 = &l_766;
        int64_t *l_773[10] = {&p_1064->g_369,(void*)0,&p_1064->g_369,(void*)0,&p_1064->g_369,&p_1064->g_369,(void*)0,&p_1064->g_369,(void*)0,&p_1064->g_369};
        int64_t **l_772 = &l_773[5];
        int64_t ***l_776 = &p_1064->g_774[1][2];
        uint32_t *l_784 = (void*)0;
        int32_t l_817[9];
        int32_t l_819[8][10][3] = {{{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L}},{{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L}},{{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L}},{{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L}},{{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L}},{{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L}},{{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L}},{{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L},{0L,0x6A573811L,0x575063B5L}}};
        VECTOR(uint64_t, 16) l_836 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xCFA8209EF1F2608DL), 0xCFA8209EF1F2608DL), 0xCFA8209EF1F2608DL, 18446744073709551615UL, 0xCFA8209EF1F2608DL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xCFA8209EF1F2608DL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xCFA8209EF1F2608DL), 18446744073709551615UL, 0xCFA8209EF1F2608DL, 18446744073709551615UL, 0xCFA8209EF1F2608DL);
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_817[i] = 0x6C99C8C6L;
        (*l_767) = l_766;
        (*p_62) = func_82((safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((*l_626) = p_61), (l_772 != ((*l_776) = p_1064->g_774[1][2])))), (*p_1064->g_558))), &p_1064->g_137, ((**p_62) = (safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 16))(l_779.yxxxyyyyxyxyyyyx)).s37cc, ((VECTOR(int64_t, 16))(0x62AC722614036BD7L, ((VECTOR(int64_t, 2))(4L, (-1L))), (-6L), ((p_60 != ((safe_add_func_int64_t_s_s(0L, (l_782 != &p_1064->g_754))) != p_60)) , p_1064->g_363.s7), ((VECTOR(int64_t, 2))(0L)), 0x7FD9300F5C25C7CFL, p_63, ((VECTOR(int64_t, 4))(0x67ABC97F791CEB7CL)), 0x495318003E2A83A2L, (-6L), 0x6022D30322A56316L)).se78a))).xxywwwwyxyzxyxzw, ((VECTOR(int64_t, 16))(0x15A963B129174CD1L))))).s9, p_63))), (*p_1064->g_270), l_730, p_1064);
        if ((0x746AL < (-6L)))
        { /* block id: 279 */
            int64_t l_787 = 0x490FF12A8E84EC32L;
            VECTOR(uint64_t, 4) l_802 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 7UL), 7UL);
            VECTOR(uint64_t, 16) l_804 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x239952A1C8148C56L), 0x239952A1C8148C56L), 0x239952A1C8148C56L, 0UL, 0x239952A1C8148C56L, (VECTOR(uint64_t, 2))(0UL, 0x239952A1C8148C56L), (VECTOR(uint64_t, 2))(0UL, 0x239952A1C8148C56L), 0UL, 0x239952A1C8148C56L, 0UL, 0x239952A1C8148C56L);
            int16_t *l_818 = (void*)0;
            int8_t l_828 = 0x41L;
            int i;
            (*p_62) = func_82(l_783, l_784, ((safe_rshift_func_int8_t_s_s((!l_787), (safe_div_func_uint32_t_u_u((((*l_626) = (((((((*p_62) = (*p_62)) != &l_666) != (safe_rshift_func_uint16_t_u_s(((safe_mod_func_int8_t_s_s(((safe_mod_func_int64_t_s_s((safe_rshift_func_int8_t_s_u(p_63, p_61)), (safe_add_func_uint16_t_u_u((~(safe_mod_func_uint64_t_u_u((~((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 8))(l_802.xxxywywx)).s36))).yxxxyxxxyyxxxyyy)).s7f92, ((VECTOR(uint64_t, 8))(l_803.zyyzwxyz)).even))).yxzxyzxyzzwwyxww, ((VECTOR(uint64_t, 4))(l_804.sa867)).zyzyzwyyyzwwwxzw))))).s5f2d)).w), (safe_div_func_int16_t_s_s((l_817[8] = ((safe_mul_func_int8_t_s_s(((((safe_rshift_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))((-3L), 0x11L)).odd, (safe_mul_func_uint16_t_u_u((~((0x1084L && 0x1807L) > l_787)), 0UL)))), 18446744073709551613UL)), p_61)) , FAKE_DIVERGE(p_1064->global_2_offset, get_global_id(2), 10)) == p_63) || l_817[3]), 0x16L)) > 1UL)), l_819[6][6][2]))))), l_819[6][1][2])))) < GROUP_DIVERGE(0, 1)), (-1L))) , (*p_1064->g_509)), 0))) | l_802.z) & 0x37E9F712ED9F94EDL) <= p_1064->g_643.s5)) | 0x097FD654L), 1UL)))) ^ GROUP_DIVERGE(0, 1)), (*p_1064->g_270), &p_1064->g_137, p_1064);
            for (p_1064->g_174 = 0; (p_1064->g_174 >= (-14)); p_1064->g_174 = safe_sub_func_uint32_t_u_u(p_1064->g_174, 1))
            { /* block id: 286 */
                uint64_t *l_822 = &p_1064->g_670;
                uint64_t **l_823 = &l_822;
                uint64_t *l_825 = (void*)0;
                uint64_t **l_824 = &l_825;
                int8_t *l_829 = (void*)0;
                int8_t *l_830 = (void*)0;
                int8_t *l_831[6] = {&l_745,&l_828,&l_745,&l_745,&l_828,&l_745};
                int i;
                (**p_62) = (((&p_1064->g_670 == ((*l_823) = l_822)) | (p_1064->g_325.w = ((((((l_819[6][6][2] | ((&p_1064->g_670 == ((*l_824) = &p_1064->g_670)) ^ (safe_lshift_func_int8_t_s_u((l_817[0] &= l_828), 0)))) > (*p_1064->g_509)) == FAKE_DIVERGE(p_1064->local_0_offset, get_local_id(0), 10)) || l_802.y) == (((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 8))(l_832.sb0fdebd6)).s40, ((VECTOR(int8_t, 8))(0L, 0x1FL, ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 2))(p_1064->g_833.xy)).yxyyyxxx, ((VECTOR(int8_t, 2))(1L, (-1L))).xyyyxyxx))), ((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x06L, 1L)).xyxx)).even, ((VECTOR(int8_t, 16))(4L, ((VECTOR(int8_t, 2))(1L, 9L)), 0x75L, 0x22L, ((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 8))(p_1064->g_834.ywxzwxwx)), (int8_t)(65529UL ^ (*p_1064->g_509))))), 1L, 2L, (-3L))).s79))), l_802.y, 0x31L, 0x73L, ((VECTOR(int8_t, 2))(0L)), (-1L))).s1c9f, ((VECTOR(int8_t, 4))(0x55L)), ((VECTOR(int8_t, 4))(0L))))), 0x31L, 2L)).s74))).odd < p_60)) , 0xB2CD7B43L))) || 1L);
            }
            return (**p_1064->g_557);
        }
        else
        { /* block id: 294 */
            VECTOR(uint32_t, 4) l_835 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL);
            uint64_t *l_838 = &p_1064->g_670;
            int16_t *l_842[3][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
            int16_t **l_841[5] = {&l_842[0][2],&l_842[0][2],&l_842[0][2],&l_842[0][2],&l_842[0][2]};
            int32_t l_854 = 0x1C854A14L;
            uint32_t **l_855 = &l_730;
            int i, j;
            (*p_1064->g_858) = ((*p_62) = func_82(((((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_835.ww)).odd, (p_1064->g_623[1] |= ((((*l_626) = (((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(4UL, 1UL)).yyyy)).yxxxxxxw, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(0xC6B6B140A1181BB5L, ((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 4))(l_836.sbf2b)).xxyzwzwz, ((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(p_1064->g_837.xxyy)))).lo, ((VECTOR(uint64_t, 2))(0x528A43AFBB3EE725L, 0xDF14BA54F65A19C5L))))))).xxyx))).xxxxywww))), ((*l_838) = p_60), ((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 2))(0x4C026E751B89D863L, 0x1B4871C63D20F41AL)).xyyy))).wyxxwxyw)).s3550353731051246)).lo, ((VECTOR(uint64_t, 8))(0x6153553A4ECA8826L, ((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 8))(0x51B1B57861C4927BL, ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 16))(((0x29246FDDE1A9D71FL > (safe_sub_func_int64_t_s_s((*l_626), p_1064->g_326.s4))) , ((p_61 != ((p_1064->g_843[5] = p_1064->g_509) == l_719)) < (safe_div_func_int64_t_s_s((((safe_rshift_func_uint16_t_u_s((l_854 ^= (p_60 , (safe_sub_func_int32_t_s_s((((VECTOR(uint16_t, 8))((safe_lshift_func_int16_t_s_s((((0x05C2L <= p_61) < 1UL) <= l_852), l_835.x)), 0UL, l_853, (*p_1064->g_509), ((VECTOR(uint16_t, 2))(0xA4F5L)), 65528UL, 0xB2B9L)).s5 != l_819[1][6][1]), (*l_626))))), (*l_626))) || p_1064->g_369) > (*l_626)), l_836.s7)))), ((VECTOR(uint32_t, 4))(4294967294UL)), ((VECTOR(uint32_t, 4))(0xF6E80AE8L)), 4294967295UL, ((VECTOR(uint32_t, 2))(4294967295UL)), 0xC09A4BA5L, p_60, 0x1BF8A430L, 1UL)).s7d4e, ((VECTOR(uint32_t, 4))(0x7BF755E5L))))).zxwyzzxy))).even, ((VECTOR(uint32_t, 4))(0x86C16261L))))).hi, ((VECTOR(uint64_t, 2))(18446744073709551612UL)))))))), 0x24D8AFA179227F39L, ((VECTOR(uint64_t, 4))(18446744073709551615UL)))).even, ((VECTOR(uint64_t, 4))(18446744073709551606UL))))), 1UL, 5UL, 0x0D8DB6AF7AB1813AL))))))).even, ((VECTOR(uint64_t, 4))(0xF4C60F120F11C152L))))), 0UL, 18446744073709551614UL)).odd)).lo)).zwzwzzzy))), 2UL, ((VECTOR(uint64_t, 4))(18446744073709551615UL)), ((VECTOR(uint64_t, 2))(18446744073709551614UL)), 18446744073709551606UL)).s79))).yxyyxxyxyyxyyyyx, ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).sc9)).hi , &l_853) == (void*)0) , (-1L))) , l_855) == l_856)), 0x2965B4F5L, 0x90318388L)).even, ((VECTOR(uint32_t, 2))(0xE6AEBCB3L))))).even || p_61) , (-2L)), &p_1064->g_137, (**p_62), (*p_1064->g_270), &p_1064->g_137, p_1064));
            (*p_62) = &l_735;
        }
        (**p_62) ^= l_860;
    }
    (*p_1064->g_859) = (*l_626);
    return p_61;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_70(int32_t * p_71, uint64_t  p_72, int64_t  p_73, int32_t * p_74, struct S0 * p_1064)
{ /* block id: 26 */
    uint16_t l_88[9] = {0x7010L,0x7010L,0x7010L,0x7010L,0x7010L,0x7010L,0x7010L,0x7010L,0x7010L};
    int32_t *l_98[1][4] = {{&p_1064->g_9,&p_1064->g_9,&p_1064->g_9,&p_1064->g_9}};
    int32_t **l_97 = &l_98[0][1];
    VECTOR(int16_t, 8) l_182 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x7437L), 0x7437L), 0x7437L, 1L, 0x7437L);
    int32_t l_183[1];
    VECTOR(int16_t, 16) l_184 = (VECTOR(int16_t, 16))(0x44B8L, (VECTOR(int16_t, 4))(0x44B8L, (VECTOR(int16_t, 2))(0x44B8L, 0x46A7L), 0x46A7L), 0x46A7L, 0x44B8L, 0x46A7L, (VECTOR(int16_t, 2))(0x44B8L, 0x46A7L), (VECTOR(int16_t, 2))(0x44B8L, 0x46A7L), 0x44B8L, 0x46A7L, 0x44B8L, 0x46A7L);
    VECTOR(int16_t, 2) l_185 = (VECTOR(int16_t, 2))(0x58BCL, 0x19A7L);
    VECTOR(int8_t, 8) l_187 = (VECTOR(int8_t, 8))(0x01L, (VECTOR(int8_t, 4))(0x01L, (VECTOR(int8_t, 2))(0x01L, 0x69L), 0x69L), 0x69L, 0x01L, 0x69L);
    VECTOR(int8_t, 4) l_188 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x4EL), 0x4EL);
    uint64_t *l_191 = (void*)0;
    uint64_t *l_192 = (void*)0;
    VECTOR(uint32_t, 16) l_199 = (VECTOR(uint32_t, 16))(4294967291UL, (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 0x5D6DC47BL), 0x5D6DC47BL), 0x5D6DC47BL, 4294967291UL, 0x5D6DC47BL, (VECTOR(uint32_t, 2))(4294967291UL, 0x5D6DC47BL), (VECTOR(uint32_t, 2))(4294967291UL, 0x5D6DC47BL), 4294967291UL, 0x5D6DC47BL, 4294967291UL, 0x5D6DC47BL);
    int8_t l_200 = 0L;
    uint8_t l_201[5];
    VECTOR(int16_t, 2) l_206 = (VECTOR(int16_t, 2))((-2L), 0x41C6L);
    VECTOR(uint32_t, 8) l_231 = (VECTOR(uint32_t, 8))(0xDD988B33L, (VECTOR(uint32_t, 4))(0xDD988B33L, (VECTOR(uint32_t, 2))(0xDD988B33L, 1UL), 1UL), 1UL, 0xDD988B33L, 1UL);
    int8_t l_234 = 0x35L;
    uint64_t l_241 = 0xD4EF91F7841CAC8DL;
    uint32_t l_245 = 0UL;
    int8_t l_252 = (-1L);
    int64_t l_260 = 0x2AB02FD1AE82296AL;
    int64_t l_274 = 1L;
    VECTOR(uint32_t, 2) l_327 = (VECTOR(uint32_t, 2))(0UL, 0xB53757BAL);
    int8_t *l_328[5][2] = {{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234},{&l_234,&l_234}};
    VECTOR(int64_t, 16) l_364 = (VECTOR(int64_t, 16))(0x561DA92B66B907F1L, (VECTOR(int64_t, 4))(0x561DA92B66B907F1L, (VECTOR(int64_t, 2))(0x561DA92B66B907F1L, 0x54E75E4C8BF5B44CL), 0x54E75E4C8BF5B44CL), 0x54E75E4C8BF5B44CL, 0x561DA92B66B907F1L, 0x54E75E4C8BF5B44CL, (VECTOR(int64_t, 2))(0x561DA92B66B907F1L, 0x54E75E4C8BF5B44CL), (VECTOR(int64_t, 2))(0x561DA92B66B907F1L, 0x54E75E4C8BF5B44CL), 0x561DA92B66B907F1L, 0x54E75E4C8BF5B44CL, 0x561DA92B66B907F1L, 0x54E75E4C8BF5B44CL);
    VECTOR(int64_t, 16) l_379 = (VECTOR(int64_t, 16))(0x41448BC1A63A098AL, (VECTOR(int64_t, 4))(0x41448BC1A63A098AL, (VECTOR(int64_t, 2))(0x41448BC1A63A098AL, (-1L)), (-1L)), (-1L), 0x41448BC1A63A098AL, (-1L), (VECTOR(int64_t, 2))(0x41448BC1A63A098AL, (-1L)), (VECTOR(int64_t, 2))(0x41448BC1A63A098AL, (-1L)), 0x41448BC1A63A098AL, (-1L), 0x41448BC1A63A098AL, (-1L));
    uint32_t l_394 = 0xE69C0145L;
    VECTOR(uint64_t, 4) l_398 = (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 0UL), 0UL);
    uint8_t *l_400 = &l_201[2];
    uint8_t **l_399 = &l_400;
    uint8_t *l_401 = &l_201[2];
    int32_t l_402 = 0x327FB038L;
    VECTOR(int8_t, 2) l_410 = (VECTOR(int8_t, 2))(0x22L, (-6L));
    VECTOR(int16_t, 4) l_418 = (VECTOR(int16_t, 4))(0x0F69L, (VECTOR(int16_t, 2))(0x0F69L, 1L), 1L);
    VECTOR(int16_t, 2) l_419 = (VECTOR(int16_t, 2))((-3L), 0x2F9AL);
    VECTOR(int16_t, 4) l_423 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x765DL), 0x765DL);
    VECTOR(int16_t, 8) l_424 = (VECTOR(int16_t, 8))(0x3336L, (VECTOR(int16_t, 4))(0x3336L, (VECTOR(int16_t, 2))(0x3336L, 0x5BA3L), 0x5BA3L), 0x5BA3L, 0x3336L, 0x5BA3L);
    VECTOR(uint64_t, 16) l_463 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xEA9105C732B72C86L), 0xEA9105C732B72C86L), 0xEA9105C732B72C86L, 0UL, 0xEA9105C732B72C86L, (VECTOR(uint64_t, 2))(0UL, 0xEA9105C732B72C86L), (VECTOR(uint64_t, 2))(0UL, 0xEA9105C732B72C86L), 0UL, 0xEA9105C732B72C86L, 0UL, 0xEA9105C732B72C86L);
    uint16_t l_474 = 1UL;
    VECTOR(int32_t, 4) l_517 = (VECTOR(int32_t, 4))(0x79D1A26DL, (VECTOR(int32_t, 2))(0x79D1A26DL, 0x2FE0A63DL), 0x2FE0A63DL);
    int8_t *l_526 = &l_252;
    VECTOR(uint32_t, 16) l_563 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967292UL), 4294967292UL), 4294967292UL, 4294967295UL, 4294967292UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967292UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967292UL), 4294967295UL, 4294967292UL, 4294967295UL, 4294967292UL);
    VECTOR(uint32_t, 16) l_564 = (VECTOR(uint32_t, 16))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 0xFABDD310L), 0xFABDD310L), 0xFABDD310L, 4294967287UL, 0xFABDD310L, (VECTOR(uint32_t, 2))(4294967287UL, 0xFABDD310L), (VECTOR(uint32_t, 2))(4294967287UL, 0xFABDD310L), 4294967287UL, 0xFABDD310L, 4294967287UL, 0xFABDD310L);
    VECTOR(uint16_t, 8) l_583 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
    VECTOR(int64_t, 4) l_584 = (VECTOR(int64_t, 4))(0x475DFE97045E641DL, (VECTOR(int64_t, 2))(0x475DFE97045E641DL, 1L), 1L);
    int16_t *l_589 = (void*)0;
    int8_t l_591[8];
    VECTOR(int16_t, 2) l_604 = (VECTOR(int16_t, 2))(0x0653L, 0x7316L);
    int i, j;
    for (i = 0; i < 1; i++)
        l_183[i] = 0L;
    for (i = 0; i < 5; i++)
        l_201[i] = 1UL;
    for (i = 0; i < 8; i++)
        l_591[i] = 0x25L;
    return p_73;
}


/* ------------------------------------------ */
/* 
 * reads : p_1064->g_43
 * writes: p_1064->g_9
 */
int32_t ** func_76(uint32_t * p_77, uint32_t * p_78, int32_t  p_79, int32_t * p_80, uint32_t * p_81, struct S0 * p_1064)
{ /* block id: 56 */
    int32_t *l_179[3];
    int i;
    for (i = 0; i < 3; i++)
        l_179[i] = &p_1064->g_155;
    (*p_80) = ((void*)0 != l_179[2]);
    return p_1064->g_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_1064->g_9 p_1064->g_128 p_1064->g_95 p_1064->g_96 p_1064->g_136 p_1064->g_168 p_1064->g_43 p_1064->g_174 p_1064->g_155
 * writes: p_1064->g_9 p_1064->g_128 p_1064->g_95 p_1064->g_174
 */
uint32_t * func_82(int64_t  p_83, uint32_t * p_84, int32_t  p_85, int32_t  p_86, uint32_t * p_87, struct S0 * p_1064)
{ /* block id: 27 */
    int8_t *l_127 = (void*)0;
    int64_t l_133 = 0x60E268291DA39B38L;
    int32_t l_135 = (-1L);
    uint32_t l_152 = 1UL;
    int32_t l_156 = 0x4714A41BL;
    int32_t *l_173 = &p_1064->g_174;
    int32_t *l_175 = (void*)0;
    int32_t *l_176 = &l_135;
    int32_t *l_177 = (void*)0;
    int32_t *l_178 = &p_1064->g_9;
    for (p_83 = 0; (p_83 > 17); p_83 = safe_add_func_uint8_t_u_u(p_83, 6))
    { /* block id: 30 */
        int32_t *l_101[5];
        int8_t *l_114 = (void*)0;
        int8_t *l_115 = (void*)0;
        int8_t *l_116 = (void*)0;
        int8_t *l_117 = (void*)0;
        int8_t *l_118 = (void*)0;
        int8_t *l_119 = (void*)0;
        int8_t *l_120 = (void*)0;
        int8_t *l_121 = (void*)0;
        uint8_t l_122 = 7UL;
        int8_t **l_129[6][8][5] = {{{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120}},{{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120}},{{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120}},{{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120}},{{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120}},{{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120},{(void*)0,&l_120,&p_1064->g_128[0][0],&p_1064->g_128[0][0],&l_120}}};
        VECTOR(uint32_t, 2) l_132 = (VECTOR(uint32_t, 2))(0UL, 0x3E1FD80DL);
        uint32_t l_134 = 7UL;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_101[i] = &p_1064->g_9;
        p_1064->g_9 &= p_85;
        if ((p_1064->g_9 ^= ((((((VECTOR(uint8_t, 8))((18446744073709551615UL | ((safe_mod_func_uint16_t_u_u((((((safe_lshift_func_int8_t_s_u(((((((((((safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u((l_122 = (safe_mul_func_uint16_t_u_u(7UL, (safe_lshift_func_int16_t_s_s((p_86 || (&l_101[2] == &l_101[2])), 10))))), 3)), ((p_1064->g_95.s3 = (safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((l_133 &= (((p_83 | (((l_127 == (p_1064->g_128[0][0] = p_1064->g_128[0][0])) | (safe_div_func_int32_t_s_s(((void*)0 == l_101[2]), p_85))) != 0x7FC97D5E08C8AB59L)) , 0x0311F254L) , l_132.x)) && 0UL), p_1064->g_95.sf)), 0x3CL))) <= l_134))) , (-10L)) , p_87) == (void*)0) , p_85) & 0x0CCCL) == p_1064->g_96.x) != l_135) , 253UL) & p_83), 1)) ^ p_85) != (-1L)) >= p_1064->g_96.z) < p_1064->g_96.y), FAKE_DIVERGE(p_1064->group_0_offset, get_group_id(0), 10))) < p_86)), 0xFBL, 0xB1L, l_135, 0x89L, 247UL, 6UL, 0xC2L)).s1 & p_1064->g_96.x) | 0x703A76A61A6B3F76L) > 255UL) & 18446744073709551615UL)))
        { /* block id: 37 */
            return p_1064->g_136;
        }
        else
        { /* block id: 39 */
            int8_t *l_148 = (void*)0;
            uint8_t *l_151 = &l_122;
            int32_t *l_153 = (void*)0;
            int32_t *l_154[4][6][8] = {{{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155}},{{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155}},{{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155}},{{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155},{&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,&p_1064->g_155,(void*)0,&p_1064->g_155,(void*)0,&p_1064->g_155}}};
            int32_t l_157 = (-7L);
            int8_t l_160 = (-3L);
            VECTOR(int32_t, 4) l_163 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-5L)), (-5L));
            int i, j, k;
            if ((p_86 != (((l_156 &= ((safe_mul_func_uint8_t_u_u((safe_div_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((void*)0 == p_84), (((safe_lshift_func_uint16_t_u_u(((((void*)0 == &p_1064->g_128[0][0]) , l_148) == (((p_1064->g_96.w > ((*l_151) |= ((safe_rshift_func_int16_t_s_s(1L, (((0xFE22FAA9L & 0x02CDD91CL) ^ p_83) >= 0x67E9FB3AEF0CFF6EL))) != p_86))) <= 8L) , p_1064->g_128[0][0])), 13)) ^ 0x0B20075B0AE68E36L) , 0xF7L))), p_1064->g_95.se)) != 8UL), p_85)), l_152)) != (-7L))) , l_157) < p_83)))
            { /* block id: 42 */
                l_135 = ((safe_lshift_func_uint8_t_u_s(p_85, 2)) > 4294967293UL);
            }
            else
            { /* block id: 44 */
                p_1064->g_9 ^= l_160;
            }
            l_101[1] = func_39(p_83, &l_101[2], (l_163.y = (safe_add_func_int32_t_s_s(p_1064->g_96.w, p_86))), p_1064);
        }
    }
    (*l_178) = ((*l_176) = (((safe_mod_func_int16_t_s_s(0x428BL, (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(p_1064->g_168.wzyz)).w, (safe_rshift_func_int8_t_s_s(l_135, (2UL < p_1064->g_9))))))) > (((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 16))(((((((safe_mul_func_int16_t_s_s((-8L), l_156)) >= (p_85 = ((*l_173) = p_86))) < (0x35L < ((&l_156 == &p_86) >= 0x360119967109F51DL))) , p_1064->g_43) == (void*)0) , (*l_173)), ((VECTOR(int16_t, 8))(0x0DB1L)), 0x3D14L, 0x5918L, (*l_173), 0x5E63L, (-1L), 0x787EL, (-10L))).s1ee3, ((VECTOR(int16_t, 4))((-3L))), ((VECTOR(int16_t, 4))(0L))))).z || p_83)) == p_1064->g_155));
    return &p_1064->g_137;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S0 c_1065;
    struct S0* p_1064 = &c_1065;
    struct S0 c_1066 = {
        0L, // p_1064->g_2
        0x052061F6L, // p_1064->g_3
        9L, // p_1064->g_4
        0x022E6E7FL, // p_1064->g_9
        0xF7L, // p_1064->g_14
        0xB0420410L, // p_1064->g_28
        {&p_1064->g_4,&p_1064->g_4,&p_1064->g_4}, // p_1064->g_44
        &p_1064->g_44[1], // p_1064->g_43
        (VECTOR(uint64_t, 16))(9UL, (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 1UL), 1UL), 1UL, 9UL, 1UL, (VECTOR(uint64_t, 2))(9UL, 1UL), (VECTOR(uint64_t, 2))(9UL, 1UL), 9UL, 1UL, 9UL, 1UL), // p_1064->g_95
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x6AL), 0x6AL), // p_1064->g_96
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1064->g_128
        5UL, // p_1064->g_137
        &p_1064->g_137, // p_1064->g_136
        6L, // p_1064->g_155
        (VECTOR(uint16_t, 4))(0xE181L, (VECTOR(uint16_t, 2))(0xE181L, 0x4DADL), 0x4DADL), // p_1064->g_168
        0x2A123F68L, // p_1064->g_174
        (VECTOR(int8_t, 2))(0x63L, 1L), // p_1064->g_186
        65534UL, // p_1064->g_212
        (VECTOR(uint64_t, 16))(0x43A5B38CE81F14C9L, (VECTOR(uint64_t, 4))(0x43A5B38CE81F14C9L, (VECTOR(uint64_t, 2))(0x43A5B38CE81F14C9L, 9UL), 9UL), 9UL, 0x43A5B38CE81F14C9L, 9UL, (VECTOR(uint64_t, 2))(0x43A5B38CE81F14C9L, 9UL), (VECTOR(uint64_t, 2))(0x43A5B38CE81F14C9L, 9UL), 0x43A5B38CE81F14C9L, 9UL, 0x43A5B38CE81F14C9L, 9UL), // p_1064->g_222
        (void*)0, // p_1064->g_221
        (VECTOR(int64_t, 4))(0x4FF488365C31099BL, (VECTOR(int64_t, 2))(0x4FF488365C31099BL, (-3L)), (-3L)), // p_1064->g_239
        9UL, // p_1064->g_240
        0UL, // p_1064->g_243
        {0xED40L}, // p_1064->g_247
        (void*)0, // p_1064->g_259
        &p_1064->g_155, // p_1064->g_270
        (VECTOR(uint8_t, 8))(0x13L, (VECTOR(uint8_t, 4))(0x13L, (VECTOR(uint8_t, 2))(0x13L, 0x41L), 0x41L), 0x41L, 0x13L, 0x41L), // p_1064->g_307
        (VECTOR(uint8_t, 16))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0xE3L), 0xE3L), 0xE3L, 3UL, 0xE3L, (VECTOR(uint8_t, 2))(3UL, 0xE3L), (VECTOR(uint8_t, 2))(3UL, 0xE3L), 3UL, 0xE3L, 3UL, 0xE3L), // p_1064->g_308
        0xFE966B25L, // p_1064->g_321
        (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x57428317L), 0x57428317L), // p_1064->g_325
        (VECTOR(uint32_t, 16))(0xE63233A5L, (VECTOR(uint32_t, 4))(0xE63233A5L, (VECTOR(uint32_t, 2))(0xE63233A5L, 0x07354037L), 0x07354037L), 0x07354037L, 0xE63233A5L, 0x07354037L, (VECTOR(uint32_t, 2))(0xE63233A5L, 0x07354037L), (VECTOR(uint32_t, 2))(0xE63233A5L, 0x07354037L), 0xE63233A5L, 0x07354037L, 0xE63233A5L, 0x07354037L), // p_1064->g_326
        (VECTOR(uint32_t, 2))(0x4632DF07L, 0xB26008E8L), // p_1064->g_336
        0xD6B1C4B5L, // p_1064->g_346
        (VECTOR(int64_t, 2))((-3L), 0x33493CBFDBCE61ADL), // p_1064->g_356
        (VECTOR(int64_t, 16))(0x26D5045420D13A84L, (VECTOR(int64_t, 4))(0x26D5045420D13A84L, (VECTOR(int64_t, 2))(0x26D5045420D13A84L, 0x256D87578123898DL), 0x256D87578123898DL), 0x256D87578123898DL, 0x26D5045420D13A84L, 0x256D87578123898DL, (VECTOR(int64_t, 2))(0x26D5045420D13A84L, 0x256D87578123898DL), (VECTOR(int64_t, 2))(0x26D5045420D13A84L, 0x256D87578123898DL), 0x26D5045420D13A84L, 0x256D87578123898DL, 0x26D5045420D13A84L, 0x256D87578123898DL), // p_1064->g_363
        (-6L), // p_1064->g_369
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int64_t, 2))(1L, 1L), (VECTOR(int64_t, 2))(1L, 1L), 1L, 1L, 1L, 1L), // p_1064->g_377
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-2L)), (-2L)), // p_1064->g_378
        (VECTOR(int64_t, 4))(0x65FC8E7367082AE7L, (VECTOR(int64_t, 2))(0x65FC8E7367082AE7L, 0x634874BAAC38457DL), 0x634874BAAC38457DL), // p_1064->g_385
        (VECTOR(int64_t, 8))(0x2B21E9B14FCF5FBFL, (VECTOR(int64_t, 4))(0x2B21E9B14FCF5FBFL, (VECTOR(int64_t, 2))(0x2B21E9B14FCF5FBFL, 0L), 0L), 0L, 0x2B21E9B14FCF5FBFL, 0L), // p_1064->g_414
        (VECTOR(int16_t, 8))(0x5FC0L, (VECTOR(int16_t, 4))(0x5FC0L, (VECTOR(int16_t, 2))(0x5FC0L, 0x74EAL), 0x74EAL), 0x74EAL, 0x5FC0L, 0x74EAL), // p_1064->g_422
        0UL, // p_1064->g_440
        (VECTOR(int8_t, 2))(0x0BL, 0x37L), // p_1064->g_455
        (VECTOR(int64_t, 2))((-9L), 0x240626CDAE7ECEFAL), // p_1064->g_464
        0x52L, // p_1064->g_493
        &p_1064->g_243, // p_1064->g_509
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x49179815L), 0x49179815L), 0x49179815L, (-1L), 0x49179815L), // p_1064->g_556
        255UL, // p_1064->g_559
        &p_1064->g_559, // p_1064->g_558
        &p_1064->g_558, // p_1064->g_557
        (VECTOR(uint32_t, 2))(4294967294UL, 0UL), // p_1064->g_562
        (VECTOR(int64_t, 16))(0x1EC07039719A06B8L, (VECTOR(int64_t, 4))(0x1EC07039719A06B8L, (VECTOR(int64_t, 2))(0x1EC07039719A06B8L, 0x675AE96B711446FFL), 0x675AE96B711446FFL), 0x675AE96B711446FFL, 0x1EC07039719A06B8L, 0x675AE96B711446FFL, (VECTOR(int64_t, 2))(0x1EC07039719A06B8L, 0x675AE96B711446FFL), (VECTOR(int64_t, 2))(0x1EC07039719A06B8L, 0x675AE96B711446FFL), 0x1EC07039719A06B8L, 0x675AE96B711446FFL, 0x1EC07039719A06B8L, 0x675AE96B711446FFL), // p_1064->g_573
        (VECTOR(uint64_t, 16))(0x14E4EA5317C6E462L, (VECTOR(uint64_t, 4))(0x14E4EA5317C6E462L, (VECTOR(uint64_t, 2))(0x14E4EA5317C6E462L, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0x14E4EA5317C6E462L, 18446744073709551610UL, (VECTOR(uint64_t, 2))(0x14E4EA5317C6E462L, 18446744073709551610UL), (VECTOR(uint64_t, 2))(0x14E4EA5317C6E462L, 18446744073709551610UL), 0x14E4EA5317C6E462L, 18446744073709551610UL, 0x14E4EA5317C6E462L, 18446744073709551610UL), // p_1064->g_581
        0x7B013FFBL, // p_1064->g_588
        (VECTOR(uint64_t, 2))(0x857F9605745C2CF7L, 0xA3C74352080ABD55L), // p_1064->g_605
        {0x3600A285L,1UL,0x3600A285L,0x3600A285L,1UL,0x3600A285L,0x3600A285L,1UL,0x3600A285L,0x3600A285L}, // p_1064->g_623
        (VECTOR(int16_t, 2))(0x0B49L, 0x072EL), // p_1064->g_625
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x2807L), 0x2807L), 0x2807L, 65535UL, 0x2807L, (VECTOR(uint16_t, 2))(65535UL, 0x2807L), (VECTOR(uint16_t, 2))(65535UL, 0x2807L), 65535UL, 0x2807L, 65535UL, 0x2807L), // p_1064->g_643
        (VECTOR(int8_t, 8))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0x38L), 0x38L), 0x38L, 8L, 0x38L), // p_1064->g_644
        1UL, // p_1064->g_670
        (VECTOR(int16_t, 4))(0x6FA6L, (VECTOR(int16_t, 2))(0x6FA6L, 1L), 1L), // p_1064->g_688
        (VECTOR(int16_t, 2))((-9L), 0x16C3L), // p_1064->g_725
        &p_1064->g_588, // p_1064->g_755
        &p_1064->g_755, // p_1064->g_754
        (void*)0, // p_1064->g_775
        {{&p_1064->g_775,&p_1064->g_775,&p_1064->g_775},{&p_1064->g_775,&p_1064->g_775,&p_1064->g_775},{&p_1064->g_775,&p_1064->g_775,&p_1064->g_775}}, // p_1064->g_774
        (VECTOR(int8_t, 2))(0x21L, 0x3EL), // p_1064->g_833
        (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x7DL), 0x7DL), // p_1064->g_834
        (VECTOR(uint64_t, 2))(0UL, 5UL), // p_1064->g_837
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1064->g_843
        (void*)0, // p_1064->g_857
        &p_1064->g_174, // p_1064->g_859
        &p_1064->g_859, // p_1064->g_858
        (VECTOR(uint32_t, 2))(1UL, 1UL), // p_1064->g_863
        (VECTOR(int16_t, 4))(0x1DC1L, (VECTOR(int16_t, 2))(0x1DC1L, (-9L)), (-9L)), // p_1064->g_869
        (void*)0, // p_1064->g_871
        &p_1064->g_871, // p_1064->g_870
        0x3EL, // p_1064->g_894
        (VECTOR(uint32_t, 8))(0xF2ED8D1AL, (VECTOR(uint32_t, 4))(0xF2ED8D1AL, (VECTOR(uint32_t, 2))(0xF2ED8D1AL, 0x3758691CL), 0x3758691CL), 0x3758691CL, 0xF2ED8D1AL, 0x3758691CL), // p_1064->g_948
        (-1L), // p_1064->g_980
        (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0xB569BF1CDE02A4B6L), 0xB569BF1CDE02A4B6L), // p_1064->g_981
        (VECTOR(uint64_t, 2))(0x42223589BE32F806L, 0x79293B7BE6658705L), // p_1064->g_983
        (VECTOR(uint64_t, 2))(0xDE11A19E7601EFD1L, 18446744073709551612UL), // p_1064->g_984
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x45196EF674F80C3AL), 0x45196EF674F80C3AL), // p_1064->g_986
        {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}, // p_1064->g_999
        &p_1064->g_999[5][0], // p_1064->g_998
        &p_1064->g_998, // p_1064->g_997
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL), // p_1064->g_1036
        (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x6F506DD4L), 0x6F506DD4L), // p_1064->g_1056
        sequence_input[get_global_id(0)], // p_1064->global_0_offset
        sequence_input[get_global_id(1)], // p_1064->global_1_offset
        sequence_input[get_global_id(2)], // p_1064->global_2_offset
        sequence_input[get_local_id(0)], // p_1064->local_0_offset
        sequence_input[get_local_id(1)], // p_1064->local_1_offset
        sequence_input[get_local_id(2)], // p_1064->local_2_offset
        sequence_input[get_group_id(0)], // p_1064->group_0_offset
        sequence_input[get_group_id(1)], // p_1064->group_1_offset
        sequence_input[get_group_id(2)], // p_1064->group_2_offset
    };
    c_1065 = c_1066;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1064);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1064->g_2, "p_1064->g_2", print_hash_value);
    transparent_crc(p_1064->g_3, "p_1064->g_3", print_hash_value);
    transparent_crc(p_1064->g_4, "p_1064->g_4", print_hash_value);
    transparent_crc(p_1064->g_9, "p_1064->g_9", print_hash_value);
    transparent_crc(p_1064->g_14, "p_1064->g_14", print_hash_value);
    transparent_crc(p_1064->g_28, "p_1064->g_28", print_hash_value);
    transparent_crc(p_1064->g_95.s0, "p_1064->g_95.s0", print_hash_value);
    transparent_crc(p_1064->g_95.s1, "p_1064->g_95.s1", print_hash_value);
    transparent_crc(p_1064->g_95.s2, "p_1064->g_95.s2", print_hash_value);
    transparent_crc(p_1064->g_95.s3, "p_1064->g_95.s3", print_hash_value);
    transparent_crc(p_1064->g_95.s4, "p_1064->g_95.s4", print_hash_value);
    transparent_crc(p_1064->g_95.s5, "p_1064->g_95.s5", print_hash_value);
    transparent_crc(p_1064->g_95.s6, "p_1064->g_95.s6", print_hash_value);
    transparent_crc(p_1064->g_95.s7, "p_1064->g_95.s7", print_hash_value);
    transparent_crc(p_1064->g_95.s8, "p_1064->g_95.s8", print_hash_value);
    transparent_crc(p_1064->g_95.s9, "p_1064->g_95.s9", print_hash_value);
    transparent_crc(p_1064->g_95.sa, "p_1064->g_95.sa", print_hash_value);
    transparent_crc(p_1064->g_95.sb, "p_1064->g_95.sb", print_hash_value);
    transparent_crc(p_1064->g_95.sc, "p_1064->g_95.sc", print_hash_value);
    transparent_crc(p_1064->g_95.sd, "p_1064->g_95.sd", print_hash_value);
    transparent_crc(p_1064->g_95.se, "p_1064->g_95.se", print_hash_value);
    transparent_crc(p_1064->g_95.sf, "p_1064->g_95.sf", print_hash_value);
    transparent_crc(p_1064->g_96.x, "p_1064->g_96.x", print_hash_value);
    transparent_crc(p_1064->g_96.y, "p_1064->g_96.y", print_hash_value);
    transparent_crc(p_1064->g_96.z, "p_1064->g_96.z", print_hash_value);
    transparent_crc(p_1064->g_96.w, "p_1064->g_96.w", print_hash_value);
    transparent_crc(p_1064->g_137, "p_1064->g_137", print_hash_value);
    transparent_crc(p_1064->g_155, "p_1064->g_155", print_hash_value);
    transparent_crc(p_1064->g_168.x, "p_1064->g_168.x", print_hash_value);
    transparent_crc(p_1064->g_168.y, "p_1064->g_168.y", print_hash_value);
    transparent_crc(p_1064->g_168.z, "p_1064->g_168.z", print_hash_value);
    transparent_crc(p_1064->g_168.w, "p_1064->g_168.w", print_hash_value);
    transparent_crc(p_1064->g_174, "p_1064->g_174", print_hash_value);
    transparent_crc(p_1064->g_186.x, "p_1064->g_186.x", print_hash_value);
    transparent_crc(p_1064->g_186.y, "p_1064->g_186.y", print_hash_value);
    transparent_crc(p_1064->g_212, "p_1064->g_212", print_hash_value);
    transparent_crc(p_1064->g_222.s0, "p_1064->g_222.s0", print_hash_value);
    transparent_crc(p_1064->g_222.s1, "p_1064->g_222.s1", print_hash_value);
    transparent_crc(p_1064->g_222.s2, "p_1064->g_222.s2", print_hash_value);
    transparent_crc(p_1064->g_222.s3, "p_1064->g_222.s3", print_hash_value);
    transparent_crc(p_1064->g_222.s4, "p_1064->g_222.s4", print_hash_value);
    transparent_crc(p_1064->g_222.s5, "p_1064->g_222.s5", print_hash_value);
    transparent_crc(p_1064->g_222.s6, "p_1064->g_222.s6", print_hash_value);
    transparent_crc(p_1064->g_222.s7, "p_1064->g_222.s7", print_hash_value);
    transparent_crc(p_1064->g_222.s8, "p_1064->g_222.s8", print_hash_value);
    transparent_crc(p_1064->g_222.s9, "p_1064->g_222.s9", print_hash_value);
    transparent_crc(p_1064->g_222.sa, "p_1064->g_222.sa", print_hash_value);
    transparent_crc(p_1064->g_222.sb, "p_1064->g_222.sb", print_hash_value);
    transparent_crc(p_1064->g_222.sc, "p_1064->g_222.sc", print_hash_value);
    transparent_crc(p_1064->g_222.sd, "p_1064->g_222.sd", print_hash_value);
    transparent_crc(p_1064->g_222.se, "p_1064->g_222.se", print_hash_value);
    transparent_crc(p_1064->g_222.sf, "p_1064->g_222.sf", print_hash_value);
    transparent_crc(p_1064->g_239.x, "p_1064->g_239.x", print_hash_value);
    transparent_crc(p_1064->g_239.y, "p_1064->g_239.y", print_hash_value);
    transparent_crc(p_1064->g_239.z, "p_1064->g_239.z", print_hash_value);
    transparent_crc(p_1064->g_239.w, "p_1064->g_239.w", print_hash_value);
    transparent_crc(p_1064->g_240, "p_1064->g_240", print_hash_value);
    transparent_crc(p_1064->g_243, "p_1064->g_243", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1064->g_247[i], "p_1064->g_247[i]", print_hash_value);

    }
    transparent_crc(p_1064->g_307.s0, "p_1064->g_307.s0", print_hash_value);
    transparent_crc(p_1064->g_307.s1, "p_1064->g_307.s1", print_hash_value);
    transparent_crc(p_1064->g_307.s2, "p_1064->g_307.s2", print_hash_value);
    transparent_crc(p_1064->g_307.s3, "p_1064->g_307.s3", print_hash_value);
    transparent_crc(p_1064->g_307.s4, "p_1064->g_307.s4", print_hash_value);
    transparent_crc(p_1064->g_307.s5, "p_1064->g_307.s5", print_hash_value);
    transparent_crc(p_1064->g_307.s6, "p_1064->g_307.s6", print_hash_value);
    transparent_crc(p_1064->g_307.s7, "p_1064->g_307.s7", print_hash_value);
    transparent_crc(p_1064->g_308.s0, "p_1064->g_308.s0", print_hash_value);
    transparent_crc(p_1064->g_308.s1, "p_1064->g_308.s1", print_hash_value);
    transparent_crc(p_1064->g_308.s2, "p_1064->g_308.s2", print_hash_value);
    transparent_crc(p_1064->g_308.s3, "p_1064->g_308.s3", print_hash_value);
    transparent_crc(p_1064->g_308.s4, "p_1064->g_308.s4", print_hash_value);
    transparent_crc(p_1064->g_308.s5, "p_1064->g_308.s5", print_hash_value);
    transparent_crc(p_1064->g_308.s6, "p_1064->g_308.s6", print_hash_value);
    transparent_crc(p_1064->g_308.s7, "p_1064->g_308.s7", print_hash_value);
    transparent_crc(p_1064->g_308.s8, "p_1064->g_308.s8", print_hash_value);
    transparent_crc(p_1064->g_308.s9, "p_1064->g_308.s9", print_hash_value);
    transparent_crc(p_1064->g_308.sa, "p_1064->g_308.sa", print_hash_value);
    transparent_crc(p_1064->g_308.sb, "p_1064->g_308.sb", print_hash_value);
    transparent_crc(p_1064->g_308.sc, "p_1064->g_308.sc", print_hash_value);
    transparent_crc(p_1064->g_308.sd, "p_1064->g_308.sd", print_hash_value);
    transparent_crc(p_1064->g_308.se, "p_1064->g_308.se", print_hash_value);
    transparent_crc(p_1064->g_308.sf, "p_1064->g_308.sf", print_hash_value);
    transparent_crc(p_1064->g_321, "p_1064->g_321", print_hash_value);
    transparent_crc(p_1064->g_325.x, "p_1064->g_325.x", print_hash_value);
    transparent_crc(p_1064->g_325.y, "p_1064->g_325.y", print_hash_value);
    transparent_crc(p_1064->g_325.z, "p_1064->g_325.z", print_hash_value);
    transparent_crc(p_1064->g_325.w, "p_1064->g_325.w", print_hash_value);
    transparent_crc(p_1064->g_326.s0, "p_1064->g_326.s0", print_hash_value);
    transparent_crc(p_1064->g_326.s1, "p_1064->g_326.s1", print_hash_value);
    transparent_crc(p_1064->g_326.s2, "p_1064->g_326.s2", print_hash_value);
    transparent_crc(p_1064->g_326.s3, "p_1064->g_326.s3", print_hash_value);
    transparent_crc(p_1064->g_326.s4, "p_1064->g_326.s4", print_hash_value);
    transparent_crc(p_1064->g_326.s5, "p_1064->g_326.s5", print_hash_value);
    transparent_crc(p_1064->g_326.s6, "p_1064->g_326.s6", print_hash_value);
    transparent_crc(p_1064->g_326.s7, "p_1064->g_326.s7", print_hash_value);
    transparent_crc(p_1064->g_326.s8, "p_1064->g_326.s8", print_hash_value);
    transparent_crc(p_1064->g_326.s9, "p_1064->g_326.s9", print_hash_value);
    transparent_crc(p_1064->g_326.sa, "p_1064->g_326.sa", print_hash_value);
    transparent_crc(p_1064->g_326.sb, "p_1064->g_326.sb", print_hash_value);
    transparent_crc(p_1064->g_326.sc, "p_1064->g_326.sc", print_hash_value);
    transparent_crc(p_1064->g_326.sd, "p_1064->g_326.sd", print_hash_value);
    transparent_crc(p_1064->g_326.se, "p_1064->g_326.se", print_hash_value);
    transparent_crc(p_1064->g_326.sf, "p_1064->g_326.sf", print_hash_value);
    transparent_crc(p_1064->g_336.x, "p_1064->g_336.x", print_hash_value);
    transparent_crc(p_1064->g_336.y, "p_1064->g_336.y", print_hash_value);
    transparent_crc(p_1064->g_346, "p_1064->g_346", print_hash_value);
    transparent_crc(p_1064->g_356.x, "p_1064->g_356.x", print_hash_value);
    transparent_crc(p_1064->g_356.y, "p_1064->g_356.y", print_hash_value);
    transparent_crc(p_1064->g_363.s0, "p_1064->g_363.s0", print_hash_value);
    transparent_crc(p_1064->g_363.s1, "p_1064->g_363.s1", print_hash_value);
    transparent_crc(p_1064->g_363.s2, "p_1064->g_363.s2", print_hash_value);
    transparent_crc(p_1064->g_363.s3, "p_1064->g_363.s3", print_hash_value);
    transparent_crc(p_1064->g_363.s4, "p_1064->g_363.s4", print_hash_value);
    transparent_crc(p_1064->g_363.s5, "p_1064->g_363.s5", print_hash_value);
    transparent_crc(p_1064->g_363.s6, "p_1064->g_363.s6", print_hash_value);
    transparent_crc(p_1064->g_363.s7, "p_1064->g_363.s7", print_hash_value);
    transparent_crc(p_1064->g_363.s8, "p_1064->g_363.s8", print_hash_value);
    transparent_crc(p_1064->g_363.s9, "p_1064->g_363.s9", print_hash_value);
    transparent_crc(p_1064->g_363.sa, "p_1064->g_363.sa", print_hash_value);
    transparent_crc(p_1064->g_363.sb, "p_1064->g_363.sb", print_hash_value);
    transparent_crc(p_1064->g_363.sc, "p_1064->g_363.sc", print_hash_value);
    transparent_crc(p_1064->g_363.sd, "p_1064->g_363.sd", print_hash_value);
    transparent_crc(p_1064->g_363.se, "p_1064->g_363.se", print_hash_value);
    transparent_crc(p_1064->g_363.sf, "p_1064->g_363.sf", print_hash_value);
    transparent_crc(p_1064->g_369, "p_1064->g_369", print_hash_value);
    transparent_crc(p_1064->g_377.s0, "p_1064->g_377.s0", print_hash_value);
    transparent_crc(p_1064->g_377.s1, "p_1064->g_377.s1", print_hash_value);
    transparent_crc(p_1064->g_377.s2, "p_1064->g_377.s2", print_hash_value);
    transparent_crc(p_1064->g_377.s3, "p_1064->g_377.s3", print_hash_value);
    transparent_crc(p_1064->g_377.s4, "p_1064->g_377.s4", print_hash_value);
    transparent_crc(p_1064->g_377.s5, "p_1064->g_377.s5", print_hash_value);
    transparent_crc(p_1064->g_377.s6, "p_1064->g_377.s6", print_hash_value);
    transparent_crc(p_1064->g_377.s7, "p_1064->g_377.s7", print_hash_value);
    transparent_crc(p_1064->g_377.s8, "p_1064->g_377.s8", print_hash_value);
    transparent_crc(p_1064->g_377.s9, "p_1064->g_377.s9", print_hash_value);
    transparent_crc(p_1064->g_377.sa, "p_1064->g_377.sa", print_hash_value);
    transparent_crc(p_1064->g_377.sb, "p_1064->g_377.sb", print_hash_value);
    transparent_crc(p_1064->g_377.sc, "p_1064->g_377.sc", print_hash_value);
    transparent_crc(p_1064->g_377.sd, "p_1064->g_377.sd", print_hash_value);
    transparent_crc(p_1064->g_377.se, "p_1064->g_377.se", print_hash_value);
    transparent_crc(p_1064->g_377.sf, "p_1064->g_377.sf", print_hash_value);
    transparent_crc(p_1064->g_378.x, "p_1064->g_378.x", print_hash_value);
    transparent_crc(p_1064->g_378.y, "p_1064->g_378.y", print_hash_value);
    transparent_crc(p_1064->g_378.z, "p_1064->g_378.z", print_hash_value);
    transparent_crc(p_1064->g_378.w, "p_1064->g_378.w", print_hash_value);
    transparent_crc(p_1064->g_385.x, "p_1064->g_385.x", print_hash_value);
    transparent_crc(p_1064->g_385.y, "p_1064->g_385.y", print_hash_value);
    transparent_crc(p_1064->g_385.z, "p_1064->g_385.z", print_hash_value);
    transparent_crc(p_1064->g_385.w, "p_1064->g_385.w", print_hash_value);
    transparent_crc(p_1064->g_414.s0, "p_1064->g_414.s0", print_hash_value);
    transparent_crc(p_1064->g_414.s1, "p_1064->g_414.s1", print_hash_value);
    transparent_crc(p_1064->g_414.s2, "p_1064->g_414.s2", print_hash_value);
    transparent_crc(p_1064->g_414.s3, "p_1064->g_414.s3", print_hash_value);
    transparent_crc(p_1064->g_414.s4, "p_1064->g_414.s4", print_hash_value);
    transparent_crc(p_1064->g_414.s5, "p_1064->g_414.s5", print_hash_value);
    transparent_crc(p_1064->g_414.s6, "p_1064->g_414.s6", print_hash_value);
    transparent_crc(p_1064->g_414.s7, "p_1064->g_414.s7", print_hash_value);
    transparent_crc(p_1064->g_422.s0, "p_1064->g_422.s0", print_hash_value);
    transparent_crc(p_1064->g_422.s1, "p_1064->g_422.s1", print_hash_value);
    transparent_crc(p_1064->g_422.s2, "p_1064->g_422.s2", print_hash_value);
    transparent_crc(p_1064->g_422.s3, "p_1064->g_422.s3", print_hash_value);
    transparent_crc(p_1064->g_422.s4, "p_1064->g_422.s4", print_hash_value);
    transparent_crc(p_1064->g_422.s5, "p_1064->g_422.s5", print_hash_value);
    transparent_crc(p_1064->g_422.s6, "p_1064->g_422.s6", print_hash_value);
    transparent_crc(p_1064->g_422.s7, "p_1064->g_422.s7", print_hash_value);
    transparent_crc(p_1064->g_440, "p_1064->g_440", print_hash_value);
    transparent_crc(p_1064->g_455.x, "p_1064->g_455.x", print_hash_value);
    transparent_crc(p_1064->g_455.y, "p_1064->g_455.y", print_hash_value);
    transparent_crc(p_1064->g_464.x, "p_1064->g_464.x", print_hash_value);
    transparent_crc(p_1064->g_464.y, "p_1064->g_464.y", print_hash_value);
    transparent_crc(p_1064->g_493, "p_1064->g_493", print_hash_value);
    transparent_crc(p_1064->g_556.s0, "p_1064->g_556.s0", print_hash_value);
    transparent_crc(p_1064->g_556.s1, "p_1064->g_556.s1", print_hash_value);
    transparent_crc(p_1064->g_556.s2, "p_1064->g_556.s2", print_hash_value);
    transparent_crc(p_1064->g_556.s3, "p_1064->g_556.s3", print_hash_value);
    transparent_crc(p_1064->g_556.s4, "p_1064->g_556.s4", print_hash_value);
    transparent_crc(p_1064->g_556.s5, "p_1064->g_556.s5", print_hash_value);
    transparent_crc(p_1064->g_556.s6, "p_1064->g_556.s6", print_hash_value);
    transparent_crc(p_1064->g_556.s7, "p_1064->g_556.s7", print_hash_value);
    transparent_crc(p_1064->g_559, "p_1064->g_559", print_hash_value);
    transparent_crc(p_1064->g_562.x, "p_1064->g_562.x", print_hash_value);
    transparent_crc(p_1064->g_562.y, "p_1064->g_562.y", print_hash_value);
    transparent_crc(p_1064->g_573.s0, "p_1064->g_573.s0", print_hash_value);
    transparent_crc(p_1064->g_573.s1, "p_1064->g_573.s1", print_hash_value);
    transparent_crc(p_1064->g_573.s2, "p_1064->g_573.s2", print_hash_value);
    transparent_crc(p_1064->g_573.s3, "p_1064->g_573.s3", print_hash_value);
    transparent_crc(p_1064->g_573.s4, "p_1064->g_573.s4", print_hash_value);
    transparent_crc(p_1064->g_573.s5, "p_1064->g_573.s5", print_hash_value);
    transparent_crc(p_1064->g_573.s6, "p_1064->g_573.s6", print_hash_value);
    transparent_crc(p_1064->g_573.s7, "p_1064->g_573.s7", print_hash_value);
    transparent_crc(p_1064->g_573.s8, "p_1064->g_573.s8", print_hash_value);
    transparent_crc(p_1064->g_573.s9, "p_1064->g_573.s9", print_hash_value);
    transparent_crc(p_1064->g_573.sa, "p_1064->g_573.sa", print_hash_value);
    transparent_crc(p_1064->g_573.sb, "p_1064->g_573.sb", print_hash_value);
    transparent_crc(p_1064->g_573.sc, "p_1064->g_573.sc", print_hash_value);
    transparent_crc(p_1064->g_573.sd, "p_1064->g_573.sd", print_hash_value);
    transparent_crc(p_1064->g_573.se, "p_1064->g_573.se", print_hash_value);
    transparent_crc(p_1064->g_573.sf, "p_1064->g_573.sf", print_hash_value);
    transparent_crc(p_1064->g_581.s0, "p_1064->g_581.s0", print_hash_value);
    transparent_crc(p_1064->g_581.s1, "p_1064->g_581.s1", print_hash_value);
    transparent_crc(p_1064->g_581.s2, "p_1064->g_581.s2", print_hash_value);
    transparent_crc(p_1064->g_581.s3, "p_1064->g_581.s3", print_hash_value);
    transparent_crc(p_1064->g_581.s4, "p_1064->g_581.s4", print_hash_value);
    transparent_crc(p_1064->g_581.s5, "p_1064->g_581.s5", print_hash_value);
    transparent_crc(p_1064->g_581.s6, "p_1064->g_581.s6", print_hash_value);
    transparent_crc(p_1064->g_581.s7, "p_1064->g_581.s7", print_hash_value);
    transparent_crc(p_1064->g_581.s8, "p_1064->g_581.s8", print_hash_value);
    transparent_crc(p_1064->g_581.s9, "p_1064->g_581.s9", print_hash_value);
    transparent_crc(p_1064->g_581.sa, "p_1064->g_581.sa", print_hash_value);
    transparent_crc(p_1064->g_581.sb, "p_1064->g_581.sb", print_hash_value);
    transparent_crc(p_1064->g_581.sc, "p_1064->g_581.sc", print_hash_value);
    transparent_crc(p_1064->g_581.sd, "p_1064->g_581.sd", print_hash_value);
    transparent_crc(p_1064->g_581.se, "p_1064->g_581.se", print_hash_value);
    transparent_crc(p_1064->g_581.sf, "p_1064->g_581.sf", print_hash_value);
    transparent_crc(p_1064->g_588, "p_1064->g_588", print_hash_value);
    transparent_crc(p_1064->g_605.x, "p_1064->g_605.x", print_hash_value);
    transparent_crc(p_1064->g_605.y, "p_1064->g_605.y", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1064->g_623[i], "p_1064->g_623[i]", print_hash_value);

    }
    transparent_crc(p_1064->g_625.x, "p_1064->g_625.x", print_hash_value);
    transparent_crc(p_1064->g_625.y, "p_1064->g_625.y", print_hash_value);
    transparent_crc(p_1064->g_643.s0, "p_1064->g_643.s0", print_hash_value);
    transparent_crc(p_1064->g_643.s1, "p_1064->g_643.s1", print_hash_value);
    transparent_crc(p_1064->g_643.s2, "p_1064->g_643.s2", print_hash_value);
    transparent_crc(p_1064->g_643.s3, "p_1064->g_643.s3", print_hash_value);
    transparent_crc(p_1064->g_643.s4, "p_1064->g_643.s4", print_hash_value);
    transparent_crc(p_1064->g_643.s5, "p_1064->g_643.s5", print_hash_value);
    transparent_crc(p_1064->g_643.s6, "p_1064->g_643.s6", print_hash_value);
    transparent_crc(p_1064->g_643.s7, "p_1064->g_643.s7", print_hash_value);
    transparent_crc(p_1064->g_643.s8, "p_1064->g_643.s8", print_hash_value);
    transparent_crc(p_1064->g_643.s9, "p_1064->g_643.s9", print_hash_value);
    transparent_crc(p_1064->g_643.sa, "p_1064->g_643.sa", print_hash_value);
    transparent_crc(p_1064->g_643.sb, "p_1064->g_643.sb", print_hash_value);
    transparent_crc(p_1064->g_643.sc, "p_1064->g_643.sc", print_hash_value);
    transparent_crc(p_1064->g_643.sd, "p_1064->g_643.sd", print_hash_value);
    transparent_crc(p_1064->g_643.se, "p_1064->g_643.se", print_hash_value);
    transparent_crc(p_1064->g_643.sf, "p_1064->g_643.sf", print_hash_value);
    transparent_crc(p_1064->g_644.s0, "p_1064->g_644.s0", print_hash_value);
    transparent_crc(p_1064->g_644.s1, "p_1064->g_644.s1", print_hash_value);
    transparent_crc(p_1064->g_644.s2, "p_1064->g_644.s2", print_hash_value);
    transparent_crc(p_1064->g_644.s3, "p_1064->g_644.s3", print_hash_value);
    transparent_crc(p_1064->g_644.s4, "p_1064->g_644.s4", print_hash_value);
    transparent_crc(p_1064->g_644.s5, "p_1064->g_644.s5", print_hash_value);
    transparent_crc(p_1064->g_644.s6, "p_1064->g_644.s6", print_hash_value);
    transparent_crc(p_1064->g_644.s7, "p_1064->g_644.s7", print_hash_value);
    transparent_crc(p_1064->g_670, "p_1064->g_670", print_hash_value);
    transparent_crc(p_1064->g_688.x, "p_1064->g_688.x", print_hash_value);
    transparent_crc(p_1064->g_688.y, "p_1064->g_688.y", print_hash_value);
    transparent_crc(p_1064->g_688.z, "p_1064->g_688.z", print_hash_value);
    transparent_crc(p_1064->g_688.w, "p_1064->g_688.w", print_hash_value);
    transparent_crc(p_1064->g_725.x, "p_1064->g_725.x", print_hash_value);
    transparent_crc(p_1064->g_725.y, "p_1064->g_725.y", print_hash_value);
    transparent_crc(p_1064->g_833.x, "p_1064->g_833.x", print_hash_value);
    transparent_crc(p_1064->g_833.y, "p_1064->g_833.y", print_hash_value);
    transparent_crc(p_1064->g_834.x, "p_1064->g_834.x", print_hash_value);
    transparent_crc(p_1064->g_834.y, "p_1064->g_834.y", print_hash_value);
    transparent_crc(p_1064->g_834.z, "p_1064->g_834.z", print_hash_value);
    transparent_crc(p_1064->g_834.w, "p_1064->g_834.w", print_hash_value);
    transparent_crc(p_1064->g_837.x, "p_1064->g_837.x", print_hash_value);
    transparent_crc(p_1064->g_837.y, "p_1064->g_837.y", print_hash_value);
    transparent_crc(p_1064->g_863.x, "p_1064->g_863.x", print_hash_value);
    transparent_crc(p_1064->g_863.y, "p_1064->g_863.y", print_hash_value);
    transparent_crc(p_1064->g_869.x, "p_1064->g_869.x", print_hash_value);
    transparent_crc(p_1064->g_869.y, "p_1064->g_869.y", print_hash_value);
    transparent_crc(p_1064->g_869.z, "p_1064->g_869.z", print_hash_value);
    transparent_crc(p_1064->g_869.w, "p_1064->g_869.w", print_hash_value);
    transparent_crc(p_1064->g_894, "p_1064->g_894", print_hash_value);
    transparent_crc(p_1064->g_948.s0, "p_1064->g_948.s0", print_hash_value);
    transparent_crc(p_1064->g_948.s1, "p_1064->g_948.s1", print_hash_value);
    transparent_crc(p_1064->g_948.s2, "p_1064->g_948.s2", print_hash_value);
    transparent_crc(p_1064->g_948.s3, "p_1064->g_948.s3", print_hash_value);
    transparent_crc(p_1064->g_948.s4, "p_1064->g_948.s4", print_hash_value);
    transparent_crc(p_1064->g_948.s5, "p_1064->g_948.s5", print_hash_value);
    transparent_crc(p_1064->g_948.s6, "p_1064->g_948.s6", print_hash_value);
    transparent_crc(p_1064->g_948.s7, "p_1064->g_948.s7", print_hash_value);
    transparent_crc(p_1064->g_980, "p_1064->g_980", print_hash_value);
    transparent_crc(p_1064->g_981.x, "p_1064->g_981.x", print_hash_value);
    transparent_crc(p_1064->g_981.y, "p_1064->g_981.y", print_hash_value);
    transparent_crc(p_1064->g_981.z, "p_1064->g_981.z", print_hash_value);
    transparent_crc(p_1064->g_981.w, "p_1064->g_981.w", print_hash_value);
    transparent_crc(p_1064->g_983.x, "p_1064->g_983.x", print_hash_value);
    transparent_crc(p_1064->g_983.y, "p_1064->g_983.y", print_hash_value);
    transparent_crc(p_1064->g_984.x, "p_1064->g_984.x", print_hash_value);
    transparent_crc(p_1064->g_984.y, "p_1064->g_984.y", print_hash_value);
    transparent_crc(p_1064->g_986.x, "p_1064->g_986.x", print_hash_value);
    transparent_crc(p_1064->g_986.y, "p_1064->g_986.y", print_hash_value);
    transparent_crc(p_1064->g_986.z, "p_1064->g_986.z", print_hash_value);
    transparent_crc(p_1064->g_986.w, "p_1064->g_986.w", print_hash_value);
    transparent_crc(p_1064->g_1036.s0, "p_1064->g_1036.s0", print_hash_value);
    transparent_crc(p_1064->g_1036.s1, "p_1064->g_1036.s1", print_hash_value);
    transparent_crc(p_1064->g_1036.s2, "p_1064->g_1036.s2", print_hash_value);
    transparent_crc(p_1064->g_1036.s3, "p_1064->g_1036.s3", print_hash_value);
    transparent_crc(p_1064->g_1036.s4, "p_1064->g_1036.s4", print_hash_value);
    transparent_crc(p_1064->g_1036.s5, "p_1064->g_1036.s5", print_hash_value);
    transparent_crc(p_1064->g_1036.s6, "p_1064->g_1036.s6", print_hash_value);
    transparent_crc(p_1064->g_1036.s7, "p_1064->g_1036.s7", print_hash_value);
    transparent_crc(p_1064->g_1036.s8, "p_1064->g_1036.s8", print_hash_value);
    transparent_crc(p_1064->g_1036.s9, "p_1064->g_1036.s9", print_hash_value);
    transparent_crc(p_1064->g_1036.sa, "p_1064->g_1036.sa", print_hash_value);
    transparent_crc(p_1064->g_1036.sb, "p_1064->g_1036.sb", print_hash_value);
    transparent_crc(p_1064->g_1036.sc, "p_1064->g_1036.sc", print_hash_value);
    transparent_crc(p_1064->g_1036.sd, "p_1064->g_1036.sd", print_hash_value);
    transparent_crc(p_1064->g_1036.se, "p_1064->g_1036.se", print_hash_value);
    transparent_crc(p_1064->g_1036.sf, "p_1064->g_1036.sf", print_hash_value);
    transparent_crc(p_1064->g_1056.x, "p_1064->g_1056.x", print_hash_value);
    transparent_crc(p_1064->g_1056.y, "p_1064->g_1056.y", print_hash_value);
    transparent_crc(p_1064->g_1056.z, "p_1064->g_1056.z", print_hash_value);
    transparent_crc(p_1064->g_1056.w, "p_1064->g_1056.w", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
